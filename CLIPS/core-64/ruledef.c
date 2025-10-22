   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.43  07/16/25             */
   /*                                                     */
   /*                   DEFRULE MODULE                    */
   /*******************************************************/

/*************************************************************/
/* Purpose: Defines basic defrule primitive functions such   */
/*   as allocating and deallocating, traversing, and finding */
/*   defrule data structures.                                */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*      Brian L. Dantes                                      */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.24: Removed DYNAMIC_SALIENCE and                   */
/*            LOGICAL_DEPENDENCIES compilation flags.        */
/*                                                           */
/*            Removed CONFLICT_RESOLUTION_STRATEGIES         */
/*            compilation flag.                              */
/*                                                           */
/*            Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*            Corrected code to remove run-time program      */
/*            compiler warnings.                             */
/*                                                           */
/*      6.30: Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW,          */
/*            MAC_MCW, and IBM_TBC).                         */
/*                                                           */
/*            Added support for hashed memories.             */
/*                                                           */
/*            Added additional developer statistics to help  */
/*            analyze join network performance.              */
/*                                                           */
/*            Added salience groups to improve performance   */
/*            with large numbers of activations of different */
/*            saliences.                                     */
/*                                                           */
/*            Added EnvGetDisjunctCount and                  */
/*            EnvGetNthDisjunct functions.                   */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Converted API macros to function calls.        */
/*                                                           */
/*            Changed find construct functionality so that    */
/*            imported modules are search when locating a    */
/*            named construct.                               */
/*                                                           */
/*      6.40: Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            ALLOW_ENVIRONMENT_GLOBALS no longer supported. */
/*                                                           */
/*      6.43: Fixed NULL pointer reference issue in          */
/*            GetNextConstructItem calls.                    */
/*                                                           */
/*************************************************************/

#include "setup.h"

#if DEFRULE_CONSTRUCT

#include <stdio.h>

#include "agenda.h"
#include "drive.h"
#include "engine.h"
#include "envrnmnt.h"
#include "memalloc.h"
#include "pattern.h"
#include "retract.h"
#include "reteutil.h"
#include "rulebsc.h"
#include "rulecom.h"
#include "rulepsr.h"
#include "ruledlt.h"

#if BLOAD || BLOAD_AND_BSAVE || BLOAD_ONLY
#include "bload.h"
#include "rulebin.h"
#endif

#if CONSTRUCT_COMPILER && (! RUN_TIME)
#include "rulecmp.h"
#endif

#include "ruledef.h"

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

   static void                   *AllocateModule(Environment *);
   static void                    ReturnModule(Environment *,void *);
   static void                    InitializeDefruleModules(Environment *);
   static void                    DeallocateDefruleData(Environment *);
   static void                    DestroyDefruleAction(Environment *,ConstructHeader *,void *);
#if RUN_TIME
   static void                    AddBetaMemoriesToRule(Environment *,struct joinNode *);
#endif

/**********************************************************/
/* InitializeDefrules: Initializes the defrule construct. */
/**********************************************************/
void InitializeDefrules(
  Environment *theEnv)
  {
   unsigned long i;
   AllocateEnvironmentData(theEnv,DEFRULE_DATA,sizeof(struct defruleData),DeallocateDefruleData);

   InitializeEngine(theEnv);
   InitializeAgenda(theEnv);
   InitializePatterns(theEnv);
   InitializeDefruleModules(theEnv);

   AddReservedPatternSymbol(theEnv,"and",NULL);
   AddReservedPatternSymbol(theEnv,"not",NULL);
   AddReservedPatternSymbol(theEnv,"or",NULL);
   AddReservedPatternSymbol(theEnv,"test",NULL);
   AddReservedPatternSymbol(theEnv,"logical",NULL);
   AddReservedPatternSymbol(theEnv,"exists",NULL);
   AddReservedPatternSymbol(theEnv,"forall",NULL);

   DefruleBasicCommands(theEnv);

   DefruleCommands(theEnv);

   DefruleData(theEnv)->DefruleConstruct =
      AddConstruct(theEnv,"defrule","defrules",
                   ParseDefrule,
                   (FindConstructFunction *) FindDefrule,
                   GetConstructNamePointer,GetConstructPPForm,
                   GetConstructModuleItem,
                   (GetNextConstructFunction *) GetNextDefrule,
                   SetNextConstruct,
                   (IsConstructDeletableFunction *) DefruleIsDeletable,
                   (DeleteConstructFunction *) Undefrule,
                   (FreeConstructFunction *) ReturnDefrule);

   DefruleData(theEnv)->AlphaMemoryTable = (ALPHA_MEMORY_HASH **)
                  gm2(theEnv,sizeof (ALPHA_MEMORY_HASH *) * ALPHA_MEMORY_HASH_SIZE);

   for (i = 0; i < ALPHA_MEMORY_HASH_SIZE; i++) DefruleData(theEnv)->AlphaMemoryTable[i] = NULL;

   DefruleData(theEnv)->BetaMemoryResizingFlag = true;

   DefruleData(theEnv)->RightPrimeJoins = NULL;
   DefruleData(theEnv)->LeftPrimeJoins = NULL;
  }

/**************************************************/
/* DeallocateDefruleData: Deallocates environment */
/*    data for the defrule construct.             */
/**************************************************/
static void DeallocateDefruleData(
  Environment *theEnv)
  {
   struct defruleModule *theModuleItem;
   Defmodule *theModule;
   Activation *theActivation, *tmpActivation;
   struct salienceGroup *theGroup, *tmpGroup;

#if BLOAD || BLOAD_AND_BSAVE
   if (Bloaded(theEnv))
     { return; }
#endif

   DoForAllConstructs(theEnv,DestroyDefruleAction,
                      DefruleData(theEnv)->DefruleModuleIndex,false,NULL);

   for (theModule = GetNextDefmodule(theEnv,NULL);
        theModule != NULL;
        theModule = GetNextDefmodule(theEnv,theModule))
     {
      theModuleItem = (struct defruleModule *)
                      GetModuleItem(theEnv,theModule,
                                    DefruleData(theEnv)->DefruleModuleIndex);

      theActivation = theModuleItem->agenda;
      while (theActivation != NULL)
        {
         tmpActivation = theActivation->next;

         rtn_struct(theEnv,activation,theActivation);

         theActivation = tmpActivation;
        }

      theGroup = theModuleItem->groupings;
      while (theGroup != NULL)
        {
         tmpGroup = theGroup->next;

         rtn_struct(theEnv,salienceGroup,theGroup);

         theGroup = tmpGroup;
        }

#if ! RUN_TIME
      rtn_struct(theEnv,defruleModule,theModuleItem);
#endif
     }

   rm(theEnv,DefruleData(theEnv)->AlphaMemoryTable,sizeof (ALPHA_MEMORY_HASH *) * ALPHA_MEMORY_HASH_SIZE);
  }

/********************************************************/
/* DestroyDefruleAction: Action used to remove defrules */
/*   as a result of DestroyEnvironment.                 */
/********************************************************/
static void DestroyDefruleAction(
  Environment *theEnv,
  ConstructHeader *theConstruct,
  void *buffer)
  {
#if MAC_XCD
#pragma unused(buffer)
#endif
   Defrule *theDefrule = (Defrule *) theConstruct;

   DestroyDefrule(theEnv,theDefrule);
  }

/*****************************************************/
/* InitializeDefruleModules: Initializes the defrule */
/*   construct for use with the defmodule construct. */
/*****************************************************/
static void InitializeDefruleModules(
  Environment *theEnv)
  {
   DefruleData(theEnv)->DefruleModuleIndex = RegisterModuleItem(theEnv,"defrule",
                                    AllocateModule,
                                    ReturnModule,
#if BLOAD_AND_BSAVE || BLOAD || BLOAD_ONLY
                                    BloadDefruleModuleReference,
#else
                                    NULL,
#endif
#if CONSTRUCT_COMPILER && (! RUN_TIME)
                                    DefruleCModuleReference,
#else
                                    NULL,
#endif
                                    (FindConstructFunction *) FindDefruleInModule);
  }

/***********************************************/
/* AllocateModule: Allocates a defrule module. */
/***********************************************/
static void *AllocateModule(
  Environment *theEnv)
  {
   struct defruleModule *theItem;

   theItem = get_struct(theEnv,defruleModule);
   theItem->agenda = NULL;
   theItem->groupings = NULL;
   return((void *) theItem);
  }

/***********************************************/
/* ReturnModule: Deallocates a defrule module. */
/***********************************************/
static void ReturnModule(
  Environment *theEnv,
  void *theItem)
  {
   FreeConstructHeaderModule(theEnv,(struct defmoduleItemHeader *) theItem,DefruleData(theEnv)->DefruleConstruct);
   rtn_struct(theEnv,defruleModule,theItem);
  }

/************************************************************/
/* GetDefruleModuleItem: Returns a pointer to the defmodule */
/*  item for the specified defrule or defmodule.            */
/************************************************************/
struct defruleModule *GetDefruleModuleItem(
  Environment *theEnv,
  Defmodule *theModule)
  {
   return((struct defruleModule *) GetConstructModuleItemByIndex(theEnv,theModule,DefruleData(theEnv)->DefruleModuleIndex));
  }

/****************************************************************/
/* FindDefrule: Searches for a defrule in the list of defrules. */
/*   Returns a pointer to the defrule if found, otherwise NULL. */
/****************************************************************/
Defrule *FindDefrule(
  Environment *theEnv,
  const char *defruleName)
  {
   return (Defrule *) FindNamedConstructInModuleOrImports(theEnv,defruleName,DefruleData(theEnv)->DefruleConstruct);
  }

/************************************************************************/
/* FindDefruleInModule: Searches for a defrule in the list of defrules. */
/*   Returns a pointer to the defrule if found, otherwise NULL.         */
/************************************************************************/
Defrule *FindDefruleInModule(
  Environment *theEnv,
  const char *defruleName)
  {
   return (Defrule *) FindNamedConstructInModule(theEnv,defruleName,DefruleData(theEnv)->DefruleConstruct);
  }

/************************************************************/
/* GetNextDefrule: If passed a NULL pointer, returns the    */
/*   first defrule in the ListOfDefrules. Otherwise returns */
/*   the next defrule following the defrule passed as an    */
/*   argument.                                              */
/************************************************************/
Defrule *GetNextDefrule(
  Environment *theEnv,
  Defrule *defrulePtr)
  {
   ConstructHeader *theHeader;
   
   if (defrulePtr == NULL)
     { theHeader = NULL; }
   else
     { theHeader = &defrulePtr->header; }

   return (Defrule *) GetNextConstructItem(theEnv,theHeader,DefruleData(theEnv)->DefruleModuleIndex);
  }

/******************************************************/
/* DefruleIsDeletable: Returns true if a particular   */
/*   defrule can be deleted, otherwise returns false. */
/******************************************************/
bool DefruleIsDeletable(
  Defrule *theDefrule)
  {
   Environment *theEnv = theDefrule->header.env;

   if (! ConstructsDeletable(theEnv))
     { return false; }

   for ( ;
        theDefrule != NULL;
        theDefrule = theDefrule->disjunct)
     { if (theDefrule->executing) return false; }

   if (EngineData(theEnv)->JoinOperationInProgress) return false;

   return true;
  }

/********************************************************/
/* GetDisjunctCount: Returns the number of disjuncts of */
/*   a rule (permutations caused by the use of or CEs). */
/********************************************************/
long GetDisjunctCount(
  Environment *theEnv,
  Defrule *theDefrule)
  {
   long count = 0;

   for ( ;
        theDefrule != NULL;
        theDefrule = theDefrule->disjunct)
     { count++; }

   return(count);
  }

/*******************************************************/
/* GetNthDisjunct: Returns the nth disjunct of a rule. */
/*   The disjunct indices run from 1 to N rather than  */
/*   0 to N - 1.                                       */
/*******************************************************/
Defrule *GetNthDisjunct(
  Environment *theEnv,
  Defrule *theDefrule,
  long index)
  {
   long count = 0;

   for ( ;
        theDefrule != NULL;
        theDefrule = theDefrule->disjunct)
     {
      count++;
      if (count == index)
        { return theDefrule; }
     }

   return NULL;
  }

#if RUN_TIME

/******************************************/
/* DefruleRunTimeInitialize:  Initializes */
/*   defrule in a run-time module.        */
/******************************************/
void DefruleRunTimeInitialize(
  Environment *theEnv,
  struct joinLink *rightPrime,
  struct joinLink *leftPrime)
  {
   Defmodule *theModule;
   Defrule *theRule, *theDisjunct;

   DefruleData(theEnv)->RightPrimeJoins = rightPrime;
   DefruleData(theEnv)->LeftPrimeJoins = leftPrime;

   SaveCurrentModule(theEnv);

   for (theModule = GetNextDefmodule(theEnv,NULL);
        theModule != NULL;
        theModule = GetNextDefmodule(theEnv,theModule))
     {
      SetCurrentModule(theEnv,theModule);
      for (theRule = GetNextDefrule(theEnv,NULL);
           theRule != NULL;
           theRule = GetNextDefrule(theEnv,theRule))
        {
         for (theDisjunct = theRule;
              theDisjunct != NULL;
              theDisjunct = theDisjunct->disjunct)
           {
            theDisjunct->header.env = theEnv;
            AddBetaMemoriesToRule(theEnv,theDisjunct->lastJoin);
           }
        }
     }

   RestoreCurrentModule(theEnv);
  }


/**************************/
/* AddBetaMemoriesToRule: */
/**************************/
static void AddBetaMemoriesToRule(
  Environment *theEnv,
  struct joinNode *theNode)
  {
   AddBetaMemoriesToJoin(theEnv,theNode);

   if (theNode->lastLevel != NULL)
     { AddBetaMemoriesToRule(theEnv,theNode->lastLevel); }

   if (theNode->joinFromTheRight)
     { AddBetaMemoriesToRule(theEnv,(struct joinNode *) theNode->rightSideEntryStructure); }
  }

#endif /* RUN_TIME */

#if RUN_TIME || BLOAD_ONLY || BLOAD || BLOAD_AND_BSAVE

/**************************/
/* AddBetaMemoriesToJoin: */
/**************************/
void AddBetaMemoriesToJoin(
  Environment *theEnv,
  struct joinNode *theNode)
  {
   if ((theNode->leftMemory != NULL) || (theNode->rightMemory != NULL))
     { return; }

   if ((! theNode->firstJoin) || theNode->patternIsExists || theNode-> patternIsNegated || theNode->joinFromTheRight)
     {
      if (theNode->leftHash == NULL)
        {
         theNode->leftMemory = get_struct(theEnv,betaMemory);
         theNode->leftMemory->beta = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *));
         theNode->leftMemory->beta[0] = NULL;
         theNode->leftMemory->size = 1;
         theNode->leftMemory->count = 0;
         theNode->leftMemory->last = NULL;
        }
      else
        {
         theNode->leftMemory = get_struct(theEnv,betaMemory);
         theNode->leftMemory->beta = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *) * INITIAL_BETA_HASH_SIZE);
         memset(theNode->leftMemory->beta,0,sizeof(struct partialMatch *) * INITIAL_BETA_HASH_SIZE);
         theNode->leftMemory->size = INITIAL_BETA_HASH_SIZE;
         theNode->leftMemory->count = 0;
         theNode->leftMemory->last = NULL;
        }

      if (theNode->firstJoin && (theNode->patternIsExists || theNode-> patternIsNegated || theNode->joinFromTheRight))
        {
         theNode->leftMemory->beta[0] = CreateEmptyPartialMatch(theEnv);
         theNode->leftMemory->beta[0]->owner = theNode;
        }
     }
   else
     { theNode->leftMemory = NULL; }

   if (theNode->joinFromTheRight)
     {
      if (theNode->leftHash == NULL)
        {
         theNode->rightMemory = get_struct(theEnv,betaMemory);
         theNode->rightMemory->beta = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *));
         theNode->rightMemory->last = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *));
         theNode->rightMemory->beta[0] = NULL;
         theNode->rightMemory->last[0] = NULL;
         theNode->rightMemory->size = 1;
         theNode->rightMemory->count = 0;
        }
      else
        {
         theNode->rightMemory = get_struct(theEnv,betaMemory);
         theNode->rightMemory->beta = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *) * INITIAL_BETA_HASH_SIZE);
         theNode->rightMemory->last = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *) * INITIAL_BETA_HASH_SIZE);
         memset(theNode->rightMemory->beta,0,sizeof(struct partialMatch **) * INITIAL_BETA_HASH_SIZE);
         memset(theNode->rightMemory->last,0,sizeof(struct partialMatch **) * INITIAL_BETA_HASH_SIZE);
         theNode->rightMemory->size = INITIAL_BETA_HASH_SIZE;
         theNode->rightMemory->count = 0;
        }
     }
   else if (theNode->rightSideEntryStructure == NULL)
     {
      theNode->rightMemory = get_struct(theEnv,betaMemory);
      theNode->rightMemory->beta = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *));
      theNode->rightMemory->last = (struct partialMatch **) genalloc(theEnv,sizeof(struct partialMatch *));
      theNode->rightMemory->beta[0] = CreateEmptyPartialMatch(theEnv);
      theNode->rightMemory->beta[0]->owner = theNode;
      theNode->rightMemory->beta[0]->rhsMemory = true;
      theNode->rightMemory->last[0] = theNode->rightMemory->beta[0];
      theNode->rightMemory->size = 1;
      theNode->rightMemory->count = 1;
     }
   else
     { theNode->rightMemory = NULL; }
  }

#endif /* RUN_TIME || BLOAD_ONLY || BLOAD || BLOAD_AND_BSAVE */

/*##################################*/
/* Additional Environment Functions */
/*##################################*/

const char *DefruleModule(
  Defrule *theDefrule)
  {
   return GetConstructModuleName(&theDefrule->header);
  }

const char *DefruleName(
  Defrule *theDefrule)
  {
   return GetConstructNameString(&theDefrule->header);
  }

const char *DefrulePPForm(
  Defrule *theDefrule)
  {
   return GetConstructPPForm(&theDefrule->header);
  }

#endif /* DEFRULE_CONSTRUCT */


