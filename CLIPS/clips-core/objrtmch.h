   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*               CLIPS Version 6.31  02/03/18          */
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
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Correction for FalseSymbol/TrueSymbol. DR0859  */
/*                                                           */
/*      6.24: Removed INCREMENTAL_RESET and                  */
/*            LOGICAL_DEPENDENCIES compilation flags.        */
/*                                                           */
/*            Converted INSTANCE_PATTERN_MATCHING to         */
/*            DEFRULE_CONSTRUCT.                             */
/*                                                           */
/*            Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*      6.30: Modified the QueueObjectMatchAction function   */
/*            so that instance retract actions always occur  */
/*            before instance assert and modify actions.     */
/*            This prevents the pattern matching process     */
/*            from attempting the evaluation of a join       */
/*            expression that accesses the slots of a        */
/*            retracted instance.                            */
/*                                                           */
/*            Added support for hashed alpha memories.       */
/*                                                           */
/*            Support for long long integers.                */
/*                                                           */
/*            Added support for hashed comparisons to        */
/*            constants.                                     */
/*                                                           */
/*      6.31: Optimization for marking relevant alpha nodes  */
/*            in the object pattern network.                 */
/*                                                           */
/*************************************************************/

#ifndef _H_objrtmch
#define _H_objrtmch

#if DEFRULE_CONSTRUCT && OBJECT_SYSTEM

typedef struct objectAlphaNode OBJECT_ALPHA_NODE;
typedef struct classAlphaLink CLASS_ALPHA_LINK;

#define OBJECT_ASSERT  1
#define OBJECT_RETRACT 2
#define OBJECT_MODIFY  3

#ifndef _H_evaluatn
#include "evaluatn.h"
#endif
#ifndef _H_expressn
#include "expressn.h"
#endif
#ifndef _H_match
#include "match.h"
#endif
#ifndef _H_network
#include "network.h"
#endif
#ifndef _H_object
#include "object.h"
#endif
#ifndef _H_symbol
#include "symbol.h"
#endif

typedef struct classBitMap
  {
   unsigned short maxid;
   char map[1];
  } CLASS_BITMAP;

#define ClassBitMapSize(bmp) ((sizeof(CLASS_BITMAP) + \
                                     (sizeof(char) * (bmp->maxid / BITS_PER_BYTE))))

typedef struct slotBitMap
  {
   unsigned short maxid;
   char map[1];
  } SLOT_BITMAP;

#define SlotBitMapSize(bmp) ((sizeof(SLOT_BITMAP) + \
                                     (sizeof(char) * (bmp->maxid / BITS_PER_BYTE))))

typedef struct objectPatternNode
  {
   unsigned blocked        : 1;
   unsigned multifieldNode : 1;
   unsigned endSlot        : 1;
   unsigned selector       : 1;
   unsigned whichField     : 8;
   unsigned short leaveFields;
   unsigned long long matchTimeTag;
   int slotNameID;
   EXPRESSION *networkTest;
   struct objectPatternNode *nextLevel;
   struct objectPatternNode *lastLevel;
   struct objectPatternNode *leftNode;
   struct objectPatternNode *rightNode;
   OBJECT_ALPHA_NODE *alphaNode;
   long bsaveID;
  } OBJECT_PATTERN_NODE;

struct objectAlphaNode
  {
   struct patternNodeHeader header;
   unsigned long long matchTimeTag;
   BITMAP_HN *classbmp,*slotbmp;
   OBJECT_PATTERN_NODE *patternNode;
   struct objectAlphaNode *nxtInGroup,
                          *nxtTerminal;
   long bsaveID;
  };

struct classAlphaLink
  {
   OBJECT_ALPHA_NODE *alphaNode;
   struct classAlphaLink *next;
   long bsaveID;
  };

typedef struct objectMatchAction
  {
   int type;
   INSTANCE_TYPE *ins;
   SLOT_BITMAP *slotNameIDs;
   struct objectMatchAction *nxt;
  } OBJECT_MATCH_ACTION;

#ifdef LOCALE
#undef LOCALE
#endif

#ifdef _OBJRTMCH_SOURCE_
#define LOCALE
#else
#define LOCALE extern
#endif

   LOCALE void                  ObjectMatchDelay(void *,DATA_OBJECT *);
   LOCALE intBool               SetDelayObjectPatternMatching(void *,int);
   LOCALE intBool               GetDelayObjectPatternMatching(void *);
   LOCALE OBJECT_PATTERN_NODE  *ObjectNetworkPointer(void *);
   LOCALE OBJECT_ALPHA_NODE    *ObjectNetworkTerminalPointer(void *);
   LOCALE void                  SetObjectNetworkPointer(void *,OBJECT_PATTERN_NODE *);
   LOCALE void                  SetObjectNetworkTerminalPointer(void *,OBJECT_ALPHA_NODE *);
   LOCALE void                  ObjectNetworkAction(void *,int,INSTANCE_TYPE *,int);
   LOCALE void                  ResetObjectMatchTimeTags(void *);

#endif /* DEFRULE_CONSTRUCT && OBJECT_SYSTEM */

#endif /* _H_objrtmch */



