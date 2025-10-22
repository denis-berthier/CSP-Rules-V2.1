   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  11/13/17             */
   /*                                                     */
   /*               PARSING FUNCTIONS MODULE              */
   /*******************************************************/

/*************************************************************/
/* Purpose: Contains the code for several parsing related    */
/*   functions including...                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Correction for FalseSymbol/TrueSymbol. DR0859  */
/*                                                           */
/*      6.24: Corrected code to remove run-time program      */
/*            compiler warnings.                             */
/*                                                           */
/*      6.30: Changed integer type/precision.                */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW,          */
/*            MAC_MCW, and IBM_TBC).                         */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Fixed function declaration issue when          */
/*            BLOAD_ONLY compiler flag is set to 1.          */
/*                                                           */
/*      6.40: Changed check-syntax router name because of    */
/*            a conflict with another error-capture router.  */
/*                                                           */
/*            Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Changed return values for router functions.    */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            UDF redesign.                                  */
/*                                                           */
/*************************************************************/

#include "setup.h"

#include <string.h>

#include "argacces.h"
#include "cstrcpsr.h"
#include "envrnmnt.h"
#include "exprnpsr.h"
#include "memalloc.h"
#include "multifld.h"
#include "pprint.h"
#include "prcdrpsr.h"
#include "prntutil.h"
#include "router.h"
#include "strngrtr.h"
#include "utility.h"

#include "parsefun.h"

#define PARSEFUN_DATA 11

struct parseFunctionData
  {
   char *ErrorString;
   size_t ErrorCurrentPosition;
   size_t ErrorMaximumPosition;
   char *WarningString;
   size_t WarningCurrentPosition;
   size_t WarningMaximumPosition;
  };

#define ParseFunctionData(theEnv) ((struct parseFunctionData *) GetEnvironmentData(theEnv,PARSEFUN_DATA))

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

#if (! RUN_TIME) && (! BLOAD_ONLY)
   static bool                    QueryErrorCaptureCallback(Environment *,const char *,void *);
   static void                    WriteErrorCaptureCallback(Environment *,const char *,const char *,void *);
   static void                    DeactivateErrorCapture(Environment *);
   static void                    SetErrorCaptureValues(Environment *,UDFValue *);
#endif

/*****************************************/
/* ParseFunctionDefinitions: Initializes */
/*   the parsing related functions.      */
/*****************************************/
void ParseFunctionDefinitions(
  Environment *theEnv)
  {
   AllocateEnvironmentData(theEnv,PARSEFUN_DATA,sizeof(struct parseFunctionData),NULL);

#if ! RUN_TIME
   AddUDF(theEnv,"check-syntax","ym",1,1,"s",CheckSyntaxFunction,"CheckSyntaxFunction",NULL);
#endif
  }

#if (! RUN_TIME) && (! BLOAD_ONLY)
/*******************************************/
/* CheckSyntaxFunction: H/L access routine */
/*   for the check-syntax function.        */
/*******************************************/
void CheckSyntaxFunction(
  Environment *theEnv,
  UDFContext *context,
  UDFValue *returnValue)
  {
   UDFValue theArg;

   /*========================================*/
   /* The argument should be of type STRING_TYPE. */
   /*========================================*/

   if (! UDFFirstArgument(context,STRING_BIT,&theArg))
     { return; }

   /*===================*/
   /* Check the syntax. */
   /*===================*/

   CheckSyntax(theEnv,theArg.lexemeValue->contents,returnValue);
  }

/*********************************/
/* CheckSyntax: C access routine */
/*   for the build function.     */
/*********************************/
bool CheckSyntax(
  Environment *theEnv,
  const char *theString,
  UDFValue *returnValue)
  {
   const char *name;
   struct token theToken;
   struct expr *top;
   bool rv;

   /*==============================*/
   /* Set the default return value */
   /* (TRUE for problems found).   */
   /*==============================*/

   returnValue->lexemeValue = TrueSymbol(theEnv);

   /*===========================================*/
   /* Create a string source router so that the */
   /* string can be used as an input source.    */
   /*===========================================*/

   if (OpenStringSource(theEnv,"check-syntax",theString,0) == 0)
     { return true; }

   /*=================================*/
   /* Only expressions and constructs */
   /* can have their syntax checked.  */
   /*=================================*/

   GetToken(theEnv,"check-syntax",&theToken);

   if (theToken.tknType != LEFT_PARENTHESIS_TOKEN)
     {
      CloseStringSource(theEnv,"check-syntax");
      returnValue->lexemeValue = CreateSymbol(theEnv,"MISSING-LEFT-PARENTHESIS");
      return true;
     }

   /*========================================*/
   /* The next token should be the construct */
   /* type or function name.                 */
   /*========================================*/

   GetToken(theEnv,"check-syntax",&theToken);
   if (theToken.tknType != SYMBOL_TOKEN)
     {
      CloseStringSource(theEnv,"check-syntax");
      returnValue->lexemeValue = CreateSymbol(theEnv,"EXPECTED-SYMBOL_TYPE-AFTER-LEFT-PARENTHESIS");
      return true;
     }

   name = theToken.lexemeValue->contents;

   /*==============================================*/
   /* Set up a router to capture the error output. */
   /*==============================================*/

   AddRouter(theEnv,"cs-error-capture",40,
             QueryErrorCaptureCallback,WriteErrorCaptureCallback,
             NULL,NULL,NULL,NULL);

   /*================================*/
   /* Determine if it's a construct. */
   /*================================*/

   if (FindConstruct(theEnv,name))
     {
      ConstructData(theEnv)->CheckSyntaxMode = true;
      
      if (ParseConstruct(theEnv,name,"check-syntax") == BE_PARSING_ERROR)
        { rv = true; }
       else
        { rv = false; }
         
      GetToken(theEnv,"check-syntax",&theToken);
      ConstructData(theEnv)->CheckSyntaxMode = false;

      if (rv)
        {
         WriteString(theEnv,STDERR,"\nERROR:\n");
         WriteString(theEnv,STDERR,GetPPBuffer(theEnv));
         WriteString(theEnv,STDERR,"\n");
        }

      DestroyPPBuffer(theEnv);

      CloseStringSource(theEnv,"check-syntax");

      if ((rv != false) || (ParseFunctionData(theEnv)->WarningString != NULL))
        {
         SetErrorCaptureValues(theEnv,returnValue);
         DeactivateErrorCapture(theEnv);
         return true;
        }

      if (theToken.tknType != STOP_TOKEN)
        {
         returnValue->value = CreateSymbol(theEnv,"EXTRANEOUS-INPUT-AFTER-LAST-PARENTHESIS");
         DeactivateErrorCapture(theEnv);
         return true;
        }

      returnValue->lexemeValue = FalseSymbol(theEnv);
      DeactivateErrorCapture(theEnv);
      return false;
     }

   /*=======================*/
   /* Parse the expression. */
   /*=======================*/

   top = Function2Parse(theEnv,"check-syntax",name);
   GetToken(theEnv,"check-syntax",&theToken);
   ClearParsedBindNames(theEnv);
   CloseStringSource(theEnv,"check-syntax");

   if (top == NULL)
     {
      SetErrorCaptureValues(theEnv,returnValue);
      DeactivateErrorCapture(theEnv);
      return true;
     }

   if (theToken.tknType != STOP_TOKEN)
     {
      returnValue->lexemeValue = CreateSymbol(theEnv,"EXTRANEOUS-INPUT-AFTER-LAST-PARENTHESIS");
      DeactivateErrorCapture(theEnv);
      ReturnExpression(theEnv,top);
      return true;
     }

   DeactivateErrorCapture(theEnv);

   ReturnExpression(theEnv,top);
   returnValue->lexemeValue = FalseSymbol(theEnv);
   return false;
  }

/**************************************************/
/* DeactivateErrorCapture: Deactivates the error  */
/*   capture router and the strings used to store */
/*   the captured information.                    */
/**************************************************/
static void DeactivateErrorCapture(
  Environment *theEnv)
  {
   if (ParseFunctionData(theEnv)->ErrorString != NULL)
     {
      rm(theEnv,ParseFunctionData(theEnv)->ErrorString,ParseFunctionData(theEnv)->ErrorMaximumPosition);
      ParseFunctionData(theEnv)->ErrorString = NULL;
     }

   if (ParseFunctionData(theEnv)->WarningString != NULL)
     {
      rm(theEnv,ParseFunctionData(theEnv)->WarningString,ParseFunctionData(theEnv)->WarningMaximumPosition);
      ParseFunctionData(theEnv)->WarningString = NULL;
     }

   ParseFunctionData(theEnv)->ErrorCurrentPosition = 0;
   ParseFunctionData(theEnv)->ErrorMaximumPosition = 0;
   ParseFunctionData(theEnv)->WarningCurrentPosition = 0;
   ParseFunctionData(theEnv)->WarningMaximumPosition = 0;

   DeleteRouter(theEnv,"cs-error-capture");
  }

/*******************************************************************/
/* SetErrorCaptureValues: Stores the error/warnings captured when  */
/*   parsing an expression or construct into a multifield value.   */
/*   The first field contains the output sent to the STDERR        */
/*   logical name and the second field contains the output sent    */
/*   to the STDWRN logical name. The symbol FALSE is stored in   */
/*   either position if no output was sent to those logical names. */
/*******************************************************************/
static void SetErrorCaptureValues(
  Environment *theEnv,
  UDFValue *returnValue)
  {
   Multifield *theMultifield;

   theMultifield = CreateMultifield(theEnv,2L);

   if (ParseFunctionData(theEnv)->ErrorString != NULL)
     { theMultifield->contents[0].lexemeValue = CreateString(theEnv,ParseFunctionData(theEnv)->ErrorString); }
   else
     { theMultifield->contents[0].lexemeValue = FalseSymbol(theEnv); }

   if (ParseFunctionData(theEnv)->WarningString != NULL)
     { theMultifield->contents[1].lexemeValue = CreateString(theEnv,ParseFunctionData(theEnv)->WarningString); }
   else
     { theMultifield->contents[1].lexemeValue = FalseSymbol(theEnv); }

   returnValue->begin = 0;
   returnValue->range = 2;
   returnValue->value = theMultifield;
  }

/*********************************************/
/* QueryErrorCaptureCallback: Query callback */
/*   for the check-syntax router.            */
/*********************************************/
static bool QueryErrorCaptureCallback(
  Environment *theEnv,
  const char *logicalName,
  void *context)
  {
#if MAC_XCD
#pragma unused(theEnv,context)
#endif

   if ((strcmp(logicalName,STDERR) == 0) ||
       (strcmp(logicalName,STDWRN) == 0))
     { return true; }

   return false;
  }

/*********************************************/
/* WriteErrorCaptureCallback: Write callback */
/*   for the check-syntax router.            */
/*********************************************/
static void WriteErrorCaptureCallback(
  Environment *theEnv,
  const char *logicalName,
  const char *str,
  void *context)
  {
   if (strcmp(logicalName,STDERR) == 0)
     {
      ParseFunctionData(theEnv)->ErrorString = AppendToString(theEnv,str,ParseFunctionData(theEnv)->ErrorString,
                                   &ParseFunctionData(theEnv)->ErrorCurrentPosition,
                                   &ParseFunctionData(theEnv)->ErrorMaximumPosition);
     }
   else if (strcmp(logicalName,STDWRN) == 0)
     {
      ParseFunctionData(theEnv)->WarningString = AppendToString(theEnv,str,ParseFunctionData(theEnv)->WarningString,
                                     &ParseFunctionData(theEnv)->WarningCurrentPosition,
                                     &ParseFunctionData(theEnv)->WarningMaximumPosition);
     }
  }

#else
/****************************************************/
/* CheckSyntaxFunction: This is the non-functional  */
/*   stub provided for use with a run-time version. */
/****************************************************/
void CheckSyntaxFunction(
  Environment *theEnv,
  UDFContext *context,
  UDFValue *returnValue)
  {
   PrintErrorID(theEnv,"PARSEFUN",1,false);
   WriteString(theEnv,STDERR,"Function check-syntax does not work in run time modules.\n");
   returnValue->value = TrueSymbol(theEnv);
  }

/************************************************/
/* CheckSyntax: This is the non-functional stub */
/*   provided for use with a run-time version.  */
/************************************************/
bool CheckSyntax(
  Environment *theEnv,
  const char *theString,
  UDFValue *returnValue)
  {
   PrintErrorID(theEnv,"PARSEFUN",1,false);
   WriteString(theEnv,STDERR,"Function check-syntax does not work in run time modules.\n");
   returnValue->value = TrueSymbol(theEnv);
   return true;
  }

#endif /* (! RUN_TIME) && (! BLOAD_ONLY) */


