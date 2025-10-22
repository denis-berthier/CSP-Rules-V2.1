   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.40  11/01/16             */
   /*                                                     */
   /*                 NETWORK HEADER FILE                 */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.30: Added support for hashed memories.             */
/*                                                           */
/*      6.40: Pragma once and other inclusion changes.       */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*************************************************************/

#ifndef _H_network

#pragma once

#define _H_network

struct alphaMemoryHash;
struct betaMemory;
struct joinLink;
struct joinNode;
struct patternNodeHashEntry;
typedef struct patternNodeHeader PatternNodeHeader;

#include "entities.h"

struct patternNodeHeader
  {
   struct alphaMemoryHash *firstHash;
   struct alphaMemoryHash *lastHash;
   struct joinNode *entryJoin;
   Expression *rightHash;
   unsigned int singlefieldNode : 1;
   unsigned int multifieldNode : 1;
   unsigned int stopNode : 1;
   unsigned int initialize : 1;
   unsigned int marked : 1;
   unsigned int beginSlot : 1;
   unsigned int endSlot : 1;
   unsigned int selector : 1;
  };

#include "match.h"

struct patternNodeHashEntry
  {
   void *parent;
   void *child;
   int type;
   void *value;
   struct patternNodeHashEntry *next;
  };

#define SIZE_PATTERN_HASH 16231

struct alphaMemoryHash
  {
   unsigned long bucket;
   struct patternNodeHeader *owner;
   PartialMatch *alphaMemory;
   PartialMatch *endOfQueue;
   struct alphaMemoryHash *nextHash;
   struct alphaMemoryHash *prevHash;
   struct alphaMemoryHash *next;
   struct alphaMemoryHash *prev;
  };

typedef struct alphaMemoryHash ALPHA_MEMORY_HASH;

#ifndef _H_ruledef
#include "ruledef.h"
#endif

#define INITIAL_BETA_HASH_SIZE 17

struct betaMemory
  {
   unsigned long size;
   unsigned long count;
   struct partialMatch **beta;
   struct partialMatch **last;
  };

struct joinLink
  {
   char enterDirection;
   struct joinNode *join;
   struct joinLink *next;
   unsigned long bsaveID;
  };

struct joinNode
  {
   unsigned int firstJoin : 1;
   unsigned int logicalJoin : 1;
   unsigned int joinFromTheRight : 1;
   unsigned int patternIsNegated : 1;
   unsigned int patternIsExists : 1;
   unsigned int initialize : 1;
   unsigned int marked : 1;
   unsigned int rhsType : 3;
   unsigned int depth : 16;
   unsigned long bsaveID;
   long long memoryLeftAdds;
   long long memoryRightAdds;
   long long memoryLeftDeletes;
   long long memoryRightDeletes;
   long long memoryCompares;
   struct betaMemory *leftMemory;
   struct betaMemory *rightMemory;
   Expression *networkTest;
   Expression *secondaryNetworkTest;
   Expression *leftHash;
   Expression *rightHash;
   void *rightSideEntryStructure;
   struct joinLink *nextLinks;
   struct joinNode *lastLevel;
   struct joinNode *rightMatchNode;
   Defrule *ruleToActivate;
  };

#endif /* _H_network */




