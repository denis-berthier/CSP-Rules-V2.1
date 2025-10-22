   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  11/13/17             */
   /*                                                     */
   /*              CONSTRUCT PARSER MODULE                */
   /*******************************************************/

/*************************************************************/
/* Purpose: Parsing routines and utilities for parsing       */
/*   constructs.                                             */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.24: Added environment parameter to GenClose.       */
/*            Added environment parameter to GenOpen.        */
/*                                                           */
/*            Made the construct redefinition message more   */
/*            prominent.                                     */
/*                                                           */
/*            Added pragmas to remove compilation warnings.  */
/*                                                           */
/*      6.30: Added code for capturing errors/warnings.      */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW, MAC_MCW, */
/*            and IBM_TBC).                                  */
/*                                                           */
/*            Changed garbage collection algorithm.          */
/*                                                           */
/*            GetConstructNameAndComment API change.         */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Fixed linkage issue when BLOAD_ONLY compiler   */
/*            flag is set to 1.                              */
/*                                                           */
/*      6.40: Added Env prefix to GetEvaluationError and     */
/*            SetEvaluationError functions.                  */
/*                                                           */
/*            Added Env prefix to GetHaltExecution and       */
/*            SetHaltExecution functions.                    */
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
/*            ALLOW_ENVIRONMENT_GLOBALS no longer supported. */
/*                                                           */
/*            Added GCBlockStart and GCBlockEnd functions    */
/*            for garbage collection blocks.                 */
/*                                                           */
/*            File name/line count displayed for errors      */
/*            and warnings during load command.              */
/*                                                           */
/*************************************************************/

#include "setup.h"

#if (! RUN_TIME) && (! BLOAD_ONLY)

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "envrnmnt.h"
#include "router.h"
#include "watch.h"
#include "constrct.h"
#include "prcdrpsr.h"
#include "exprnpsr.h"
#include "memalloc.h"
#include "modulutl.h"
#include "modulpsr.h"
#include "pprint.h"
#include "prntutil.h"
#include "strngrtr.h"
#include "sysdep.h"
#include "utility.h"

#include "cstrcpsr.h"

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

   static bool                    FindConstructBeginning(Environment *,const char *,struct token *,bool,bool *);

/**********************************************************/
/* Load: C access routine for the load command. Returns   */
/*   LE_OPEN_FILE_ERROR if the file couldn't be opened,   */
/*   LE_PARSING_ERROR if the file was opened but an error */
/*   occurred while loading constructs, and LE_NO_ERROR   */
/*   if the file was opened and no errors occured while   */
/*   loading.                                             */
/**********************************************************/
LoadError Load(
  Environment *theEnv,
  const char *fileName)
  {
   FILE *theFile;
   char *oldParsingFileName;
   int noErrorsDetected;

   /*=======================================*/
   /* Open the file specified by file name. */
   /*=======================================*/

   if ((theFile = GenOpen(theEnv,fileName,"r")) == NULL)
     { return LE_OPEN_FILE_ERROR; }

   /*===================================================*/
   /* Read in the constructs. Enabling fast load allows */
   /* the router system to be bypassed for quicker load */
   /* times.                                            */
   /*===================================================*/

   SetFastLoad(theEnv,theFile);

   oldParsingFileName = CopyString(theEnv,GetParsingFileName(theEnv));
   SetParsingFileName(theEnv,fileName);

   SetLoadInProgress(theEnv,true);
   noErrorsDetected = LoadConstructsFromLogicalName(theEnv,(char *) theFile);
   SetLoadInProgress(theEnv,false);

   SetParsingFileName(theEnv,oldParsingFileName);
   DeleteString(theEnv,oldParsingFileName);

   SetWarningFileName(theEnv,NULL);
   SetErrorFileName(theEnv,NULL);

   SetFastLoad(theEnv,NULL);

   /*=================*/
   /* Close the file. */
   /*=================*/

   GenClose(theEnv,theFile);

   /*=================================================*/
   /* If no errors occurred during the load, return   */
   /* LE_NO_ERROR, otherwise return LE_PARSING_ERROR. */
   /*=================================================*/

   if (noErrorsDetected)
     { return LE_NO_ERROR; }

   return LE_PARSING_ERROR;
  }

/*******************/
/* LoadFromString: */
/*******************/
bool LoadFromString(
  Environment *theEnv,
  const char *theString,
  size_t theMax)
  {
   bool rv;
   const char *theStrRouter = "*** load-from-string ***";

   /*==========================*/
   /* Initialize string router */
   /*==========================*/

   if ((theMax == SIZE_MAX) ? (! OpenStringSource(theEnv,theStrRouter,theString,0)) :
                              (! OpenTextSource(theEnv,theStrRouter,theString,0,theMax)))
     return false;
     
   /*======================*/
   /* Load the constructs. */
   /*======================*/

   rv = LoadConstructsFromLogicalName(theEnv,theStrRouter);
      
   /*=================*/
   /* Close router.   */
   /*=================*/

   CloseStringSource(theEnv,theStrRouter);

   return rv;
  }

/****************************************************/
/* SetParsingFileName: Sets the file name currently */
/*   being parsed by the load/batch command.        */
/****************************************************/
void SetParsingFileName(
  Environment *theEnv,
  const char *fileName)
  {
   char *fileNameCopy = NULL;

   if (fileName != NULL)
     {
      fileNameCopy = (char *) genalloc(theEnv,strlen(fileName) + 1);
      genstrcpy(fileNameCopy,fileName);
     }

   if (ConstructData(theEnv)->ParsingFileName != NULL)
     { genfree(theEnv,ConstructData(theEnv)->ParsingFileName,strlen(ConstructData(theEnv)->ParsingFileName) + 1); }

   ConstructData(theEnv)->ParsingFileName = fileNameCopy;
  }

/*******************************************************/
/* GetParsingFileName: Returns the file name currently */
/*   being parsed by the load/batch command.           */
/*******************************************************/
char *GetParsingFileName(
  Environment *theEnv)
  {
   return ConstructData(theEnv)->ParsingFileName;
  }

/**********************************************/
/* SetErrorFileName: Sets the file name       */
/*   associated with the last error detected. */
/**********************************************/
void SetErrorFileName(
  Environment *theEnv,
  const char *fileName)
  {
   char *fileNameCopy = NULL;

   if (fileName != NULL)
     {
      fileNameCopy = (char *) genalloc(theEnv,strlen(fileName) + 1);
      genstrcpy(fileNameCopy,fileName);
     }

   if (ConstructData(theEnv)->ErrorFileName != NULL)
     { genfree(theEnv,ConstructData(theEnv)->ErrorFileName,strlen(ConstructData(theEnv)->ErrorFileName) + 1); }

   ConstructData(theEnv)->ErrorFileName = fileNameCopy;
  }

/**********************************************/
/* GetErrorFileName: Returns the file name    */
/*   associated with the last error detected. */
/**********************************************/
char *GetErrorFileName(
  Environment *theEnv)
  {
   return ConstructData(theEnv)->ErrorFileName;
  }

/************************************************/
/* SetWarningFileName: Sets the file name       */
/*   associated with the last warning detected. */
/************************************************/
void SetWarningFileName(
  Environment *theEnv,
  const char *fileName)
  {
   char *fileNameCopy = NULL;

   if (fileName != NULL)
     {
      fileNameCopy = (char *) genalloc(theEnv,strlen(fileName) + 1);
      genstrcpy(fileNameCopy,fileName);
     }

   if (ConstructData(theEnv)->WarningFileName != NULL)
     { genfree(theEnv,ConstructData(theEnv)->WarningFileName,strlen(ConstructData(theEnv)->WarningFileName) + 1); }

   ConstructData(theEnv)->WarningFileName = fileNameCopy;
  }

/************************************************/
/* GetWarningFileName: Returns the file name    */
/*   associated with the last warning detected. */
/************************************************/
char *GetWarningFileName(
  Environment *theEnv)
  {
   return ConstructData(theEnv)->WarningFileName;
  }

/*****************************************************************/
/* LoadConstructsFromLogicalName: Loads a set of constructs into */
/*   the current environment from a specified logical name.      */
/*****************************************************************/
bool LoadConstructsFromLogicalName(
  Environment *theEnv,
  const char *readSource)
  {
   BuildError constructFlag;
   struct token theToken;
   bool noErrors = true;
   bool foundConstruct;
   GCBlock gcb;
   long oldLineCountValue;
   const char *oldLineCountRouter;

   /*===================================================*/
   /* Create a router to capture the error information. */
   /*===================================================*/

   CreateErrorCaptureRouter(theEnv);

   /*==============================*/
   /* Initialize the line counter. */
   /*==============================*/

   oldLineCountValue = SetLineCount(theEnv,1);
   oldLineCountRouter = RouterData(theEnv)->LineCountRouter;
   RouterData(theEnv)->LineCountRouter = readSource;

   /*=====================================*/
   /* If embedded, clear the error flags. */
   /*=====================================*/
   
   if (EvaluationData(theEnv)->CurrentExpression == NULL)
     { ResetErrorFlags(theEnv); }

   /*==========================================*/
   /* Set up the frame for garbage collection. */
   /*==========================================*/

   GCBlockStart(theEnv,&gcb);

   /*========================================================*/
   /* Find the beginning of the first construct in the file. */
   /*========================================================*/

   GetToken(theEnv,readSource,&theToken);
   foundConstruct = FindConstructBeginning(theEnv,readSource,&theToken,false,&noErrors);

   /*==================================================*/
   /* Parse the file until the end of file is reached. */
   /*==================================================*/

   while ((foundConstruct == true) && (GetHaltExecution(theEnv) == false))
     {
      /*===========================================================*/
      /* Clear the pretty print buffer in preparation for parsing. */
      /*===========================================================*/

      FlushPPBuffer(theEnv);

      /*======================*/
      /* Parse the construct. */
      /*======================*/

      constructFlag = ParseConstruct(theEnv,theToken.lexemeValue->contents,readSource);

      /*==============================================================*/
      /* If an error occurred while parsing, then find the beginning  */
      /* of the next construct (but don't generate any more error     */
      /* messages--in effect, skip everything until another construct */
      /* is found).                                                   */
      /*==============================================================*/

      if (constructFlag == BE_PARSING_ERROR)
        {
         WriteString(theEnv,STDERR,"\nERROR:\n");
         WriteString(theEnv,STDERR,GetPPBuffer(theEnv));
         WriteString(theEnv,STDERR,"\n");

         FlushParsingMessages(theEnv);

         noErrors = false;
         GetToken(theEnv,readSource,&theToken);
         foundConstruct = FindConstructBeginning(theEnv,readSource,&theToken,true,&noErrors);
        }

      /*======================================================*/
      /* Otherwise, find the beginning of the next construct. */
      /*======================================================*/

      else
        {
         FlushParsingMessages(theEnv);
         GetToken(theEnv,readSource,&theToken);
         foundConstruct = FindConstructBeginning(theEnv,readSource,&theToken,false,&noErrors);
        }

      /*=====================================================*/
      /* Yield time if necessary to foreground applications. */
      /*=====================================================*/

      if (foundConstruct)
         { IncrementLexemeCount(theToken.value); }

      CleanCurrentGarbageFrame(theEnv,NULL);
      CallPeriodicTasks(theEnv);

      YieldTime(theEnv);

      if (foundConstruct)
         { ReleaseLexeme(theEnv,theToken.lexemeValue); }
     }

   /*========================================================*/
   /* Print a carriage return if a single character is being */
   /* printed to indicate constructs are being processed.    */
   /*========================================================*/

#if DEBUGGING_FUNCTIONS
   if ((GetWatchItem(theEnv,"compilations") != 1) && GetPrintWhileLoading(theEnv))
#else
   if (GetPrintWhileLoading(theEnv))
#endif
     { WriteString(theEnv,STDOUT,"\n"); }

   /*=============================================================*/
   /* Once the load is complete, destroy the pretty print buffer. */
   /* This frees up any memory that was used to create the pretty */
   /* print forms for constructs during parsing. Thus calls to    */
   /* the mem-used function will accurately reflect the amount of */
   /* memory being used after a load command.                     */
   /*=============================================================*/

   DestroyPPBuffer(theEnv);

   /*======================================*/
   /* Remove the garbage collection frame. */
   /*======================================*/

   GCBlockEnd(theEnv,&gcb);
   CallPeriodicTasks(theEnv);

   /*==============================*/
   /* Deactivate the line counter. */
   /*==============================*/

   SetLineCount(theEnv,oldLineCountValue);
   RouterData(theEnv)->LineCountRouter = oldLineCountRouter;

   /*===========================================*/
   /* Invoke the parser error callback function */
   /* and delete the error capture router.      */
   /*===========================================*/

   FlushParsingMessages(theEnv);
   DeleteErrorCaptureRouter(theEnv);

   /*==========================================================*/
   /* Return a boolean flag which indicates whether any errors */
   /* were encountered while loading the constructs.           */
   /*==========================================================*/

   return noErrors;
  }

/********************************************************************/
/* FindConstructBeginning: Searches for a left parenthesis followed */
/*   by the name of a valid construct. Used by the load command to  */
/*   find the next construct to be parsed. Returns true is the      */
/*   beginning of a construct was found, otherwise false.           */
/********************************************************************/
static bool FindConstructBeginning(
  Environment *theEnv,
  const char *readSource,
  struct token *theToken,
  bool errorCorrection,
  bool *noErrors)
  {
   bool leftParenthesisFound = false;
   bool firstAttempt = true;

   /*===================================================*/
   /* Process tokens until the beginning of a construct */
   /* is found or there are no more tokens.             */
   /*===================================================*/

   while (theToken->tknType != STOP_TOKEN)
     {
      /*=====================================================*/
      /* Constructs begin with a left parenthesis. Make note */
      /* that the opening parenthesis has been found.        */
      /*=====================================================*/

      if (theToken->tknType == LEFT_PARENTHESIS_TOKEN)
        { leftParenthesisFound = true; }

      /*=================================================================*/
      /* The name of the construct follows the opening left parenthesis. */
      /* If it is the name of a valid construct, then return true.       */
      /* Otherwise, reset the flags to look for the beginning of a       */
      /* construct. If error correction is being performed (i.e. the     */
      /* last construct parsed had an error in it), then don't bother to */
      /* print an error message, otherwise, print an error message.      */
      /*=================================================================*/

      else if ((theToken->tknType == SYMBOL_TOKEN) && (leftParenthesisFound == true))
        {
         /*===========================================================*/
         /* Is this a valid construct name (e.g., defrule, deffacts). */
         /*===========================================================*/

         if (FindConstruct(theEnv,theToken->lexemeValue->contents) != NULL) return true;

         /*===============================================*/
         /* The construct name is invalid. Print an error */
         /* message if one hasn't already been printed.   */
         /*===============================================*/

         if (firstAttempt && (! errorCorrection))
           {
            errorCorrection = true;
            *noErrors = false;
            PrintErrorID(theEnv,"CSTRCPSR",1,true);
            WriteString(theEnv,STDERR,"Expected the beginning of a construct.\n");
           }

         /*======================================================*/
         /* Indicate that an error has been found and that we're */
         /* looking for a left parenthesis again.                */
         /*======================================================*/

         firstAttempt = false;
         leftParenthesisFound = false;
        }

      /*====================================================================*/
      /* Any token encountered other than a left parenthesis or a construct */
      /* name following a left parenthesis is illegal. Again, if error      */
      /* correction is in progress, no error message is printed, otherwise, */
      /*  an error message is printed.                                      */
      /*====================================================================*/

      else
        {
         if (firstAttempt && (! errorCorrection))
           {
            errorCorrection = true;
            *noErrors = false;
            PrintErrorID(theEnv,"CSTRCPSR",1,true);
            WriteString(theEnv,STDERR,"Expected the beginning of a construct.\n");
           }

         firstAttempt = false;
         leftParenthesisFound = false;
        }

      /*============================================*/
      /* Move on to the next token to be processed. */
      /*============================================*/

      GetToken(theEnv,readSource,theToken);
     }

   /*===================================================================*/
   /* Couldn't find the beginning of a construct, so false is returned. */
   /*===================================================================*/

   return false;
  }

/***********************************************************/
/* QueryErrorCallback: Query routine for the error router. */
/***********************************************************/
static bool QueryErrorCallback(
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

/***********************************************************/
/* WriteErrorCallback: Write routine for the error router. */
/***********************************************************/
static void WriteErrorCallback(
  Environment *theEnv,
  const char *logicalName,
  const char *str,
  void *context)
  {
   if (strcmp(logicalName,STDERR) == 0)
     {
      ConstructData(theEnv)->ErrorString =
         AppendToString(theEnv,str,ConstructData(theEnv)->ErrorString,
                                   &ConstructData(theEnv)->CurErrPos,
                                   &ConstructData(theEnv)->MaxErrChars);
     }
   else if (strcmp(logicalName,STDWRN) == 0)
     {
      ConstructData(theEnv)->WarningString =
         AppendToString(theEnv,str,ConstructData(theEnv)->WarningString,
                                   &ConstructData(theEnv)->CurWrnPos,
                                   &ConstructData(theEnv)->MaxWrnChars);
     }

   DeactivateRouter(theEnv,"error-capture");
   WriteString(theEnv,logicalName,str);
   ActivateRouter(theEnv,"error-capture");
  }

/***********************************************/
/* CreateErrorCaptureRouter: Creates the error */
/*   capture router if it doesn't exists.      */
/***********************************************/
void CreateErrorCaptureRouter(
  Environment *theEnv)
  {
   /*===========================================================*/
   /* Don't bother creating the error capture router if there's */
   /* no parser callback. The implication of this is that the   */
   /* parser callback should be created before any routines     */
   /* which could generate errors are called.                   */
   /*===========================================================*/

   if (ConstructData(theEnv)->ParserErrorCallback == NULL) return;

   /*=======================================================*/
   /* If the router hasn't already been created, create it. */
   /*=======================================================*/

   if (ConstructData(theEnv)->errorCaptureRouterCount == 0)
     {
      AddRouter(theEnv,"error-capture",40,
                QueryErrorCallback,WriteErrorCallback,
                NULL,NULL,NULL,NULL);
     }

   /*==================================================*/
   /* Increment the count for the number of references */
   /* that want the error capture router functioning.  */
   /*==================================================*/

   ConstructData(theEnv)->errorCaptureRouterCount++;
  }

/***********************************************/
/* DeleteErrorCaptureRouter: Deletes the error */
/*   capture router if it exists.              */
/***********************************************/
void DeleteErrorCaptureRouter(
   Environment *theEnv)
   {
   /*===========================================================*/
   /* Don't bother deleting the error capture router if there's */
   /* no parser callback. The implication of this is that the   */
   /* parser callback should be created before any routines     */
   /* which could generate errors are called.                   */
   /*===========================================================*/

   if (ConstructData(theEnv)->ParserErrorCallback == NULL) return;

    ConstructData(theEnv)->errorCaptureRouterCount--;

    if (ConstructData(theEnv)->errorCaptureRouterCount == 0)
      { DeleteRouter(theEnv,"error-capture"); }
   }

/*******************************************************/
/* FlushParsingMessages: Invokes the callback routines */
/*   for any existing warning/error messages.          */
/*******************************************************/
void FlushParsingMessages(
  Environment *theEnv)
  {
   /*===========================================================*/
   /* Don't bother flushing the error capture router if there's */
   /* no parser callback. The implication of this is that the   */
   /* parser callback should be created before any routines     */
   /* which could generate errors are called.                   */
   /*===========================================================*/

   if (ConstructData(theEnv)->ParserErrorCallback == NULL) return;

   /*=================================*/
   /* If an error occurred invoke the */
   /* parser error callback function. */
   /*=================================*/

   if (ConstructData(theEnv)->ErrorString != NULL)
     {
      (*ConstructData(theEnv)->ParserErrorCallback)(theEnv,GetErrorFileName(theEnv),
                                                           NULL,ConstructData(theEnv)->ErrorString,
                                                           ConstructData(theEnv)->ErrLineNumber,
                                                           ConstructData(theEnv)->ParserErrorContext);
     }

   if (ConstructData(theEnv)->WarningString != NULL)
     {
      (*ConstructData(theEnv)->ParserErrorCallback)(theEnv,GetWarningFileName(theEnv),
                                                           ConstructData(theEnv)->WarningString,NULL,
                                                           ConstructData(theEnv)->WrnLineNumber,
                                                           ConstructData(theEnv)->ParserErrorContext);
     }

   /*===================================*/
   /* Delete the error capture strings. */
   /*===================================*/

   SetErrorFileName(theEnv,NULL);
   if (ConstructData(theEnv)->ErrorString != NULL)
     { genfree(theEnv,ConstructData(theEnv)->ErrorString,strlen(ConstructData(theEnv)->ErrorString) + 1); }
   ConstructData(theEnv)->ErrorString = NULL;
   ConstructData(theEnv)->CurErrPos = 0;
   ConstructData(theEnv)->MaxErrChars = 0;

   SetWarningFileName(theEnv,NULL);
   if (ConstructData(theEnv)->WarningString != NULL)
     { genfree(theEnv,ConstructData(theEnv)->WarningString,strlen(ConstructData(theEnv)->WarningString) + 1); }
   ConstructData(theEnv)->WarningString = NULL;
   ConstructData(theEnv)->CurWrnPos = 0;
   ConstructData(theEnv)->MaxWrnChars = 0;
  }

/***************************************/
/* ParseConstruct: Parses a construct. */
/***************************************/
BuildError ParseConstruct(
  Environment *theEnv,
  const char *name,
  const char *logicalName)
  {
   Construct *currentPtr;
   BuildError rv;
   bool ov;
   GCBlock gcb;

   /*=================================*/
   /* Look for a valid construct name */
   /* (e.g. defrule, deffacts).       */
   /*=================================*/

   currentPtr = FindConstruct(theEnv,name);
   if (currentPtr == NULL) return BE_CONSTRUCT_NOT_FOUND_ERROR;

   /*==========================================*/
   /* Set up the frame for garbage collection. */
   /*==========================================*/

   GCBlockStart(theEnv,&gcb);

   /*==================================*/
   /* Prepare the parsing environment. */
   /*==================================*/

   ov = GetHaltExecution(theEnv);
   SetEvaluationError(theEnv,false);
   SetHaltExecution(theEnv,false);
   ClearParsedBindNames(theEnv);
   PushRtnBrkContexts(theEnv);
   ExpressionData(theEnv)->ReturnContext = false;
   ExpressionData(theEnv)->BreakContext = false;

   /*=======================================*/
   /* Call the construct's parsing routine. */
   /*=======================================*/

   ConstructData(theEnv)->ParsingConstruct = true;
   
   if ((*currentPtr->parseFunction)(theEnv,logicalName))
     { rv = BE_PARSING_ERROR; }
   else
     { rv = BE_NO_ERROR; }
     
   ConstructData(theEnv)->ParsingConstruct = false;

   /*===============================*/
   /* Restore environment settings. */
   /*===============================*/

   PopRtnBrkContexts(theEnv);

   ClearParsedBindNames(theEnv);
   SetPPBufferStatus(theEnv,false);
   SetHaltExecution(theEnv,ov);

   /*======================================*/
   /* Remove the garbage collection frame. */
   /*======================================*/

   GCBlockEnd(theEnv,&gcb);
   CallPeriodicTasks(theEnv);

   /*==============================*/
   /* Return the status of parsing */
   /* the construct.               */
   /*==============================*/

   return rv;
  }

/******************************************************/
/* ImportExportConflictMessage: Generic error message */
/*   for an import/export module conflict detected    */
/*   when a construct is being defined.               */
/******************************************************/
void ImportExportConflictMessage(
  Environment *theEnv,
  const char *constructName,
  const char *itemName,
  const char *causedByConstruct,
  const char *causedByName)
  {
   PrintErrorID(theEnv,"CSTRCPSR",3,true);
   WriteString(theEnv,STDERR,"Cannot define ");
   WriteString(theEnv,STDERR,constructName);
   WriteString(theEnv,STDERR," '");
   WriteString(theEnv,STDERR,itemName);
   WriteString(theEnv,STDERR,"' because of an import/export conflict");

   if (causedByConstruct == NULL) WriteString(theEnv,STDERR,".\n");
   else
     {
      WriteString(theEnv,STDERR," caused by the ");
      WriteString(theEnv,STDERR,causedByConstruct);
      WriteString(theEnv,STDERR," '");
      WriteString(theEnv,STDERR,causedByName);
      WriteString(theEnv,STDERR,"'.\n");
     }
  }

#endif /* (! RUN_TIME) && (! BLOAD_ONLY) */


