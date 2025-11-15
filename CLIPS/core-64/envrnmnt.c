   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  11/03/25             */
   /*                                                     */
   /*                ENVIRONMENT MODULE                   */
   /*******************************************************/

/*************************************************************/
/* Purpose: Routines for supporting multiple environments.   */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.24: Added code to CreateEnvironment to free        */
/*            already allocated data if one of the malloc    */
/*            calls fail.                                    */
/*                                                           */
/*            Modified AllocateEnvironmentData to print a    */
/*            message if it was unable to allocate memory.   */
/*                                                           */
/*            Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*            Added CreateRuntimeEnvironment function.       */
/*                                                           */
/*            Added support for context information when an  */
/*            environment is created (i.e a pointer from the */
/*            CLIPS environment to its parent environment).  */
/*                                                           */
/*      6.30: Added support for passing context information  */
/*            to user defined functions and callback         */
/*            functions.                                     */
/*                                                           */
/*            Support for hashing EXTERNAL_ADDRESS_TYPE      */
/*            data type.                                     */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Removed deallocating message parameter from    */
/*            EnvReleaseMem.                                 */
/*                                                           */
/*            Removed support for BLOCK_MEMORY.              */
/*                                                           */
/*      6.32: Restored support for BLOCK_MEMORY.             */
/*                                                           */
/*      6.40: Refactored code to reduce header dependencies  */
/*            in sysdep.c.                                   */
/*                                                           */
/*            Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            ALLOW_ENVIRONMENT_GLOBALS no longer supported. */
/*                                                           */
/*            Eval support for run time and bload only.      */
/*                                                           */
/*************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <string.h>

#include "setup.h"

#include "bmathfun.h"
#include "commline.h"
#include "emathfun.h"
#include "engine.h"
#include "filecom.h"
#include "iofun.h"
#include "memalloc.h"
#include "miscfun.h"
#include "multifun.h"
#include "parsefun.h"
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

#include "envrnmnt.h"

#define SIZE_ENVIRONMENT_HASH  131

/*******************************************************/
/* AllocateEnvironmentData: Allocates environment data */
/*    for the specified environment data record.       */
/*******************************************************/
bool AllocateEnvironmentData(
  Environment *theEnvironment,
  unsigned position,
  size_t size,
  EnvironmentCleanupFunction *cleanupFunction)
  {
   /*================================================================*/
   /* Check to see if the data position exceeds the maximum allowed. */
   /*================================================================*/

   if (position >= MAXIMUM_ENVIRONMENT_POSITIONS)
     {
      printf("\n[ENVRNMNT2] Environment data position %d exceeds the maximum allowed.\n",position);
      return false;
     }

   /*============================================================*/
   /* Check if the environment data has already been registered. */
   /*============================================================*/

   if (theEnvironment->theData[position] != NULL)
     {
      printf("\n[ENVRNMNT3] Environment data position %d already allocated.\n",position);
      return false;
     }

   /*====================*/
   /* Allocate the data. */
   /*====================*/

   theEnvironment->theData[position] = malloc(size);
   if (theEnvironment->theData[position] == NULL)
     {
      printf("\n[ENVRNMNT4] Environment data position %d could not be allocated.\n",position);
      return false;
     }

   memset(theEnvironment->theData[position],0,size);

   /*=============================*/
   /* Store the cleanup function. */
   /*=============================*/

   theEnvironment->cleanupFunctions[position] = cleanupFunction;

   /*===============================*/
   /* Data successfully registered. */
   /*===============================*/

   return true;
  }

/**********************************************/
/* GetEnvironmentContext: Returns the context */
/*   of the specified environment.            */
/**********************************************/
void *GetEnvironmentContext(
  Environment *theEnvironment)
  {
   return theEnvironment->context;
  }

/*******************************************/
/* SetEnvironmentContext: Sets the context */
/*   of the specified environment.         */
/*******************************************/
void *SetEnvironmentContext(
  Environment *theEnvironment,
  void *theContext)
  {
   void *oldContext;

   oldContext = theEnvironment->context;

   theEnvironment->context = theContext;

   return oldContext;
  }

/**************************************************/
/* AddEnvironmentCleanupFunction: Adds a function */
/*   to the ListOfCleanupEnvironmentFunctions.    */
/**************************************************/
bool AddEnvironmentCleanupFunction(
  Environment *theEnv,
  const char *name,
  EnvironmentCleanupFunction *functionPtr,
  int priority)
  {
   struct environmentCleanupFunction *newPtr, *currentPtr, *lastPtr = NULL;

   newPtr = (struct environmentCleanupFunction *) malloc(sizeof(struct environmentCleanupFunction));
   if (newPtr == NULL)
     { return false; }

   newPtr->name = name;
   newPtr->func = functionPtr;
   newPtr->priority = priority;

   if (theEnv->listOfCleanupEnvironmentFunctions == NULL)
     {
      newPtr->next = NULL;
      theEnv->listOfCleanupEnvironmentFunctions = newPtr;
      return true;
     }

   currentPtr = theEnv->listOfCleanupEnvironmentFunctions;
   while ((currentPtr != NULL) ? (priority < currentPtr->priority) : false)
     {
      lastPtr = currentPtr;
      currentPtr = currentPtr->next;
     }

   if (lastPtr == NULL)
     {
      newPtr->next = theEnv->listOfCleanupEnvironmentFunctions;
      theEnv->listOfCleanupEnvironmentFunctions = newPtr;
     }
   else
     {
      newPtr->next = currentPtr;
      lastPtr->next = newPtr;
     }

   return true;
  }
