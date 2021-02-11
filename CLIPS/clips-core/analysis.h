   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.30  08/16/14            */
   /*                                                     */
   /*                ANALYSIS HEADER FILE                 */
   /*******************************************************/

/*************************************************************/
/* Purpose: Analyzes LHS patterns to check for semantic      */
/*   errors and to determine variable comparisons and other  */
/*   tests which must be performed either in the pattern or  */
/*   join networks.                                          */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.24: Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Join network rework and optimizations.         */
/*                                                           */
/*************************************************************/

#ifndef _H_analysis

#define _H_analysis

#ifndef _H_expressn
#include "expressn.h"
#endif
#ifndef _H_reorder
#include "reorder.h"
#endif

#ifdef LOCALE
#undef LOCALE
#endif
#ifdef _ANALYSIS_SOURCE_
#define LOCALE
#else
#define LOCALE extern
#endif

/*****************************************************/
/* nandFrame structure: Stores information about the */
/*   current position in the nesting of not/and CEs  */
/*   as the patterns of a rule are analyzed.         */
/*****************************************************/
struct nandFrame
  {
   int depth;
   struct lhsParseNode *nandCE;
   struct nandFrame *next;
  };

   LOCALE intBool                        VariableAnalysis(void *,struct lhsParseNode *);

#endif

