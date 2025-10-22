   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.40  11/13/17            */
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
/*      6.40: Removed LOCALE definition.                     */
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
/*************************************************************/

#ifndef _H_cstrcpsr

#pragma once

#define _H_cstrcpsr

#include "strngfun.h"

typedef enum
  {
   LE_NO_ERROR = 0,
   LE_OPEN_FILE_ERROR,
   LE_PARSING_ERROR,
  } LoadError;

#if (! RUN_TIME) && (! BLOAD_ONLY)
   LoadError                      Load(Environment *,const char *);
   bool                           LoadConstructsFromLogicalName(Environment *,const char *);
   bool                           LoadFromString(Environment *,const char *,size_t);
   BuildError                     ParseConstruct(Environment *,const char *,const char *);
   void                           ImportExportConflictMessage(Environment *,const char *,const char *,
                                                              const char *,const char *);
   void                           FlushParsingMessages(Environment *);
   char                          *GetParsingFileName(Environment *);
   void                           SetParsingFileName(Environment *,const char *);
   char                          *GetErrorFileName(Environment *);
   void                           SetErrorFileName(Environment *,const char *);
   char                          *GetWarningFileName(Environment *);
   void                           SetWarningFileName(Environment *,const char *);
   void                           CreateErrorCaptureRouter(Environment *);
   void                           DeleteErrorCaptureRouter(Environment *);
#endif

#endif







