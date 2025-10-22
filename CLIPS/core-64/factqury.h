   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.41  01/09/23            */
   /*                                                     */
   /*                                                     */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Brian L. Dantes                                      */
/*                                                           */
/* Contributing Programmer(s):                               */
/*      Gary D. Riley                                        */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Added fact-set queries.                        */
/*                                                           */
/*      6.24: Corrected errors when compiling as a C++ file. */
/*            DR0868                                         */
/*                                                           */
/*            Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Changed garbage collection algorithm.          */
/*                                                           */
/*            Fixes for run-time use of query functions.     */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
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
/*            UDF redesign.                                  */
/*                                                           */
/*      6.41: Changed the name of fact query structures to   */
/*            be distinct from instance structures.          */
/*                                                           */
/*************************************************************/

#ifndef _H_factqury

#pragma once

#define _H_factqury

#if FACT_SET_QUERIES

#include "factmngr.h"

typedef struct fact_query_template
  {
   Deftemplate *templatePtr;
   struct fact_query_template *chain, *nxt;
  } FACT_QUERY_TEMPLATE;

typedef struct fact_query_soln
  {
   Fact **soln;
   struct fact_query_soln *nxt;
  } FACT_QUERY_SOLN;

typedef struct fact_query_core
  {
   Fact **solns;
   Expression *query,*action;
   FACT_QUERY_SOLN *soln_set,*soln_bottom;
   unsigned soln_size,soln_cnt;
   UDFValue *result;
  } FACT_QUERY_CORE;

typedef struct fact_query_stack
  {
   FACT_QUERY_CORE *core;
   struct fact_query_stack *nxt;
  } FACT_QUERY_STACK;

#define FACT_QUERY_DATA 63

struct factQueryData
  {
   CLIPSLexeme *QUERY_DELIMITER_SYMBOL;
   FACT_QUERY_CORE *QueryCore;
   FACT_QUERY_STACK *QueryCoreStack;
   bool AbortQuery;
  };

#define FactQueryData(theEnv) ((struct factQueryData *) GetEnvironmentData(theEnv,FACT_QUERY_DATA))

#define QUERY_DELIMITER_STRING     "(QDS)"

   void                           SetupFactQuery(Environment *);
   void                           GetQueryFact(Environment *,UDFContext *,UDFValue *);
   void                           GetQueryFactSlot(Environment *,UDFContext *,UDFValue *);
   void                           AnyFacts(Environment *,UDFContext *,UDFValue *);
   void                           QueryFindFact(Environment *,UDFContext *,UDFValue *);
   void                           QueryFindAllFacts(Environment *,UDFContext *,UDFValue *);
   void                           QueryDoForFact(Environment *,UDFContext *,UDFValue *);
   void                           QueryDoForAllFacts(Environment *,UDFContext *,UDFValue *);
   void                           DelayedQueryDoForAllFacts(Environment *,UDFContext *,UDFValue *);

#endif /* FACT_SET_QUERIES */

#endif /* _H_factqury */
