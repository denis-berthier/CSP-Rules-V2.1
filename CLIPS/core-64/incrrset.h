   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.40  08/11/16            */
   /*                                                     */
   /*            INCREMENTAL RESET HEADER FILE            */
   /*******************************************************/

/*************************************************************/
/* Purpose: Provides functionality for the incremental       */
/*   reset of the pattern and join networks when a new       */
/*   rule is added.                                          */
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
/*      6.24: Removed INCREMENTAL_RESET compilation flag.    */
/*                                                           */
/*            Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Added support for hashed alpha memories and    */
/*            other join network changes.                    */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW and       */
/*            MAC_MCW).                                      */
/*                                                           */
/*            Modified EnvSetIncrementalReset to check for   */
/*            the existance of rules.                        */
/*                                                           */
/*            Converted API macros to function calls.        */
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
/*            Incremental reset is always enabled.           */
/*                                                           */
/*************************************************************/

#ifndef _H_incrrset

#pragma once

#define _H_incrrset

#include "ruledef.h"

   void                           IncrementalReset(Environment *,Defrule *);

#endif /* _H_incrrset */









