   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.43  11/03/25             */
   /*                                                     */
   /*             ENVIRONMENT BUILD MODULE                */
   /*******************************************************/

/*************************************************************/
/* Purpose: Routines for supporting multiple environments.   */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.32: Restored support for BLOCK_MEMORY.             */
/*                                                           */
/*      6.40: Added to separate environment creation and     */
/*            deletion code.                                 */
/*                                                           */
/*      6.42: Added void argument to CreateEnvironment to    */
/*            fix compiler warning.                          */
/*                                                           */
/*************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "setup.h"

#include "bmathfun.h"
#include "commline.h"
#include "emathfun.h"
#include "envrnmnt.h"
#include "engine.h"
#include "filecom.h"
#include "iofun.h"
#include "memalloc.h"
#include "miscfun.h"
#include "multifun.h"
#include "parsefun.h"
#include "pprint.h"
#include "prccode.h"
#include "prcdrfun.h"
#include "prdctfun.h"
#include "prntutil.h"
#include "proflfun.h"
#include "router.h"
#include "sortfun.h"
#include "strngfun.h"
#include "sysdep.h"
#include "textpro.h"
#include "utility.h"
#include "watch.h"

#if DEFFACTS_CONSTRUCT
#include "dffctdef.h"
#endif

#if DEFRULE_CONSTRUCT
#include "ruledef.h"
#endif

#if DEFGENERIC_CONSTRUCT
#include "genrccom.h"
#endif

#if DEFFUNCTION_CONSTRUCT
#include "dffnxfun.h"
#endif

#if DEFGLOBAL_CONSTRUCT
#include "globldef.h"
#endif

#if DEFTEMPLATE_CONSTRUCT
#include "tmpltdef.h"
#endif

#if OBJECT_SYSTEM
#include "classini.h"
#endif

#if DEVELOPER
#include "developr.h"
#endif

#include "envrnbld.h"

/****************************************/
/* GLOBAL EXTERNAL FUNCTION DEFINITIONS */
/****************************************/

   extern void                    UserFunctions(Environment *);

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

   static void                    RemoveEnvironmentCleanupFunctions(struct environmentData *);
   static Environment            *CreateEnvironmentDriver(CLIPSLexeme **,CLIPSFloat **,
                                                          CLIPSInteger **,CLIPSBitMap **,
                                                          CLIPSExternalAddress **,
                                                          struct functionDefinition *);
   static void                    SystemFunctionDefinitions(Environment *);
   static void                    InitializeEnvironment(Environment *,CLIPSLexeme **,CLIPSFloat **,
					   								       CLIPSInteger **,CLIPSBitMap **,
														   CLIPSExternalAddress **,
                                                           struct functionDefinition *);

/************************************************************/
/* CreateEnvironment: Creates an environment data structure */
/*   and initializes its content to zero/null.              */
/************************************************************/
Environment *CreateEnvironment(void)
  {
   return CreateEnvironmentDriver(NULL,NULL,NULL,NULL,NULL,NULL);
  }

/**********************************************************/
/* CreateRuntimeEnvironment: Creates an environment data  */
/*   structure and initializes its content to zero/null.  */
/**********************************************************/
Environment *CreateRuntimeEnvironment(
  CLIPSLexeme **symbolTable,
  CLIPSFloat **floatTable,
  CLIPSInteger **integerTable,
  CLIPSBitMap **bitmapTable,
  struct functionDefinition *functions)
  {
   return CreateEnvironmentDriver(symbolTable,floatTable,integerTable,bitmapTable,NULL,functions);
  }

/*********************************************************/
/* CreateEnvironmentDriver: Creates an environment data  */
/*   structure and initializes its content to zero/null. */
/*********************************************************/
Environment *CreateEnvironmentDriver(
  CLIPSLexeme **symbolTable,
  CLIPSFloat **floatTable,
  CLIPSInteger **integerTable,
  CLIPSBitMap **bitmapTable,
  CLIPSExternalAddress **externalAddressTable,
  struct functionDefinition *functions)
  {
   struct environmentData *theEnvironment;
   void *theData;

   theEnvironment = (struct environmentData *) malloc(sizeof(struct environmentData));

   if (theEnvironment == NULL)
     {
      printf("\n[ENVRNMNT5] Unable to create new environment.\n");
      return NULL;
     }

   theData = malloc(sizeof(void *) * MAXIMUM_ENVIRONMENT_POSITIONS);

   if (theData == NULL)
     {
      free(theEnvironment);
      printf("\n[ENVRNMNT6] Unable to create environment data.\n");
      return NULL;
     }

   memset(theData,0,sizeof(void *) * MAXIMUM_ENVIRONMENT_POSITIONS);

   theEnvironment->initialized = false;
   theEnvironment->theData = (void **) theData;
   theEnvironment->next = NULL;
   theEnvironment->listOfCleanupEnvironmentFunctions = NULL;
   theEnvironment->context = NULL;

   /*=============================================*/
   /* Allocate storage for the cleanup functions. */
   /*=============================================*/

   theData = malloc(sizeof(void (*)(struct environmentData *)) * MAXIMUM_ENVIRONMENT_POSITIONS);

   if (theData == NULL)
     {
      free(theEnvironment->theData);
      free(theEnvironment);
      printf("\n[ENVRNMNT7] Unable to create environment data.\n");
      return NULL;
     }

   memset(theData,0,sizeof(void (*)(struct environmentData *)) * MAXIMUM_ENVIRONMENT_POSITIONS);
   theEnvironment->cleanupFunctions = (void (**)(Environment *))theData;

   InitializeEnvironment(theEnvironment,symbolTable,floatTable,integerTable,
                         bitmapTable,externalAddressTable,functions);
      
   CleanCurrentGarbageFrame(theEnvironment,NULL);

   return theEnvironment;
  }

/**********************************************/
/* DestroyEnvironment: Destroys the specified */
/*   environment returning all of its memory. */
/**********************************************/
bool DestroyEnvironment(
  Environment *theEnvironment)
  {
   struct environmentCleanupFunction *cleanupPtr;
   int i;
   struct memoryData *theMemData;
   bool rv = true;

   theMemData = MemoryData(theEnvironment);

   ReleaseMem(theEnvironment,-1);

   for (i = 0; i < MAXIMUM_ENVIRONMENT_POSITIONS; i++)
     {
      if (theEnvironment->cleanupFunctions[i] != NULL)
        { (*theEnvironment->cleanupFunctions[i])(theEnvironment); }
     }

   free(theEnvironment->cleanupFunctions);

   for (cleanupPtr = theEnvironment->listOfCleanupEnvironmentFunctions;
        cleanupPtr != NULL;
        cleanupPtr = cleanupPtr->next)
     { (*cleanupPtr->func)(theEnvironment); }

   RemoveEnvironmentCleanupFunctions(theEnvironment);

   ReleaseMem(theEnvironment,-1);

   if ((theMemData->MemoryAmount != 0) || (theMemData->MemoryCalls != 0))
     {
      printf("\n[ENVRNMNT8] Environment data not fully deallocated.\n");
      printf("\n[ENVRNMNT8] MemoryAmount = %lld.\n",theMemData->MemoryAmount);
      printf("\n[ENVRNMNT8] MemoryCalls = %lld.\n",theMemData->MemoryCalls);
      rv = false;
     }

#if (MEM_TABLE_SIZE > 0)
   free(theMemData->MemoryTable);
#endif

#if BLOCK_MEMORY
   ReturnAllBlocks(theEnvironment);
#endif

   for (i = 0; i < MAXIMUM_ENVIRONMENT_POSITIONS; i++)
     {
      if (theEnvironment->theData[i] != NULL)
        {
         free(theEnvironment->theData[i]);
         theEnvironment->theData[i] = NULL;
        }
     }

   free(theEnvironment->theData);

   free(theEnvironment);

   return rv;
  }

/**************************************************/
/* RemoveEnvironmentCleanupFunctions: Removes the */
/*   list of environment cleanup functions.       */
/**************************************************/
static void RemoveEnvironmentCleanupFunctions(
  struct environmentData *theEnv)
  {
   struct environmentCleanupFunction *nextPtr;

   while (theEnv->listOfCleanupEnvironmentFunctions != NULL)
     {
      nextPtr = theEnv->listOfCleanupEnvironmentFunctions->next;
      free(theEnv->listOfCleanupEnvironmentFunctions);
      theEnv->listOfCleanupEnvironmentFunctions = nextPtr;
     }
  }

/**************************************************/
/* InitializeEnvironment: Performs initialization */
/*   of the KB environment.                       */
/**************************************************/
static void InitializeEnvironment(
  Environment *theEnvironment,
  CLIPSLexeme **symbolTable,
  CLIPSFloat **floatTable,
  CLIPSInteger **integerTable,
  CLIPSBitMap **bitmapTable,
  CLIPSExternalAddress **externalAddressTable,
  struct functionDefinition *functions)
  {
   /*================================================*/
   /* Don't allow the initialization to occur twice. */
   /*================================================*/

   if (theEnvironment->initialized) return;

   /*================================*/
   /* Initialize the memory manager. */
   /*================================*/

   InitializeMemory(theEnvironment);

   /*===================================================*/
   /* Initialize environment data for various features. */
   /*===================================================*/

   InitializeCommandLineData(theEnvironment);
#if CONSTRUCT_COMPILER && (! RUN_TIME)
   InitializeConstructCompilerData(theEnvironment);
#endif
   InitializeConstructData(theEnvironment);
   InitializeEvaluationData(theEnvironment);
   InitializeExternalFunctionData(theEnvironment);
   InitializePrettyPrintData(theEnvironment);
   InitializePrintUtilityData(theEnvironment);
   InitializeScannerData(theEnvironment);
   InitializeSystemDependentData(theEnvironment);
   InitializeUserDataData(theEnvironment);
   InitializeUtilityData(theEnvironment);
#if DEBUGGING_FUNCTIONS
   InitializeWatchData(theEnvironment);
#endif

   /*===============================================*/
   /* Initialize the hash tables for atomic values. */
   /*===============================================*/

   InitializeAtomTables(theEnvironment,symbolTable,floatTable,integerTable,bitmapTable,externalAddressTable);

   /*=========================================*/
   /* Initialize file and string I/O routers. */
   /*=========================================*/

   InitializeDefaultRouters(theEnvironment);

   /*=========================================================*/
   /* Initialize some system dependent features such as time. */
   /*=========================================================*/

   InitializeNonportableFeatures(theEnvironment);

   /*=============================================*/
   /* Register system and user defined functions. */
   /*=============================================*/

   if (functions != NULL)
     { InstallFunctionList(theEnvironment,functions); }

   SystemFunctionDefinitions(theEnvironment);
   UserFunctions(theEnvironment);

   /*====================================*/
   /* Initialize the constraint manager. */
   /*====================================*/

   InitializeConstraints(theEnvironment);

   /*==========================================*/
   /* Initialize the expression hash table and */
   /* pointers to specific functions.          */
   /*==========================================*/

   InitExpressionData(theEnvironment);

   /*===================================*/
   /* Initialize the construct manager. */
   /*===================================*/

#if ! RUN_TIME
   InitializeConstructs(theEnvironment);
#endif

   /*=====================================*/
   /* Initialize the defmodule construct. */
   /*=====================================*/

   AllocateDefmoduleGlobals(theEnvironment);

   /*===================================*/
   /* Initialize the defrule construct. */
   /*===================================*/

#if DEFRULE_CONSTRUCT
   InitializeDefrules(theEnvironment);
#endif

   /*====================================*/
   /* Initialize the deffacts construct. */
   /*====================================*/

#if DEFFACTS_CONSTRUCT
   InitializeDeffacts(theEnvironment);
#endif

   /*=====================================================*/
   /* Initialize the defgeneric and defmethod constructs. */
   /*=====================================================*/

#if DEFGENERIC_CONSTRUCT
   SetupGenericFunctions(theEnvironment);
#endif

   /*=======================================*/
   /* Initialize the deffunction construct. */
   /*=======================================*/

#if DEFFUNCTION_CONSTRUCT
   SetupDeffunctions(theEnvironment);
#endif

   /*=====================================*/
   /* Initialize the defglobal construct. */
   /*=====================================*/

#if DEFGLOBAL_CONSTRUCT
   InitializeDefglobals(theEnvironment);
#endif

   /*=======================================*/
   /* Initialize the deftemplate construct. */
   /*=======================================*/

#if DEFTEMPLATE_CONSTRUCT
   InitializeDeftemplates(theEnvironment);
#endif

   /*=============================*/
   /* Initialize COOL constructs. */
   /*=============================*/

#if OBJECT_SYSTEM
   SetupObjectSystem(theEnvironment);
#endif

   /*=====================================*/
   /* Initialize the defmodule construct. */
   /*=====================================*/

   InitializeDefmodules(theEnvironment);

   /*======================================================*/
   /* Register commands and functions for development use. */
   /*======================================================*/

#if DEVELOPER
   DeveloperCommands(theEnvironment);
#endif

   /*=========================================*/
   /* Install the special function primitives */
   /* used by procedural code in constructs.  */
   /*=========================================*/

   InstallProcedurePrimitives(theEnvironment);

   /*========================*/
   /* Issue a clear command. */
   /*========================*/

   Clear(theEnvironment);

   /*=============================*/
   /* Initialization is complete. */
   /*=============================*/

   theEnvironment->initialized = true;
  }

/**************************************************/
/* SystemFunctionDefinitions: Sets up definitions */
/*   of system defined functions.                 */
/**************************************************/
static void SystemFunctionDefinitions(
  Environment *theEnv)
  {
   ProceduralFunctionDefinitions(theEnv);
   MiscFunctionDefinitions(theEnv);

#if IO_FUNCTIONS
   IOFunctionDefinitions(theEnv);
#endif

   PredicateFunctionDefinitions(theEnv);
   BasicMathFunctionDefinitions(theEnv);
   FileCommandDefinitions(theEnv);
   SortFunctionDefinitions(theEnv);

#if DEBUGGING_FUNCTIONS
   WatchFunctionDefinitions(theEnv);
#endif

#if MULTIFIELD_FUNCTIONS
   MultifieldFunctionDefinitions(theEnv);
#endif

#if STRING_FUNCTIONS
   StringFunctionDefinitions(theEnv);
#endif

#if EXTENDED_MATH_FUNCTIONS
   ExtendedMathFunctionDefinitions(theEnv);
#endif

#if TEXTPRO_FUNCTIONS
   HelpFunctionDefinitions(theEnv);
#endif

#if CONSTRUCT_COMPILER && (! RUN_TIME)
   ConstructsToCCommandDefinition(theEnv);
#endif

#if PROFILING_FUNCTIONS
   ConstructProfilingFunctionDefinitions(theEnv);
#endif

   ParseFunctionDefinitions(theEnv);
  }

