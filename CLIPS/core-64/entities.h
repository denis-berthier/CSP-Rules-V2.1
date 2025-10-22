   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.40  11/01/16            */
   /*                                                     */
   /*                ENTITIES HEADER FILE                 */
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
/*      6.40: Created to store key data structures.          */
/*                                                           */
/*************************************************************/

#ifndef _H_entities

#pragma once

#define _H_entities

typedef struct clipsVoid CLIPSVoid;
typedef struct clipsLexeme CLIPSLexeme;
typedef struct clipsFloat CLIPSFloat;
typedef struct clipsInteger CLIPSInteger;
typedef struct clipsBitMap CLIPSBitMap;
typedef struct clipsExternalAddress CLIPSExternalAddress;
typedef struct typeHeader TypeHeader;

typedef struct multifield Multifield;

typedef struct clipsValue CLIPSValue;
typedef struct udfValue UDFValue;

typedef struct fact Fact;
typedef struct instance Instance;

typedef struct expr Expression;
typedef struct functionDefinition FunctionDefinition;
typedef struct udfContext UDFContext;

typedef struct entityRecord EntityRecord;

typedef void EntityPrintFunction(Environment *,const char *,void *);
typedef bool EntityEvaluationFunction(Environment *,void *,UDFValue *);
typedef void EntityBusyCountFunction(Environment *,void *);

typedef struct patternEntityRecord PatternEntityRecord;
typedef struct patternEntity PatternEntity;

typedef bool BoolCallFunction(Environment *,void *);
typedef void VoidCallFunction(Environment *,void *);
typedef void VoidCallFunctionWithArg(Environment *,void *,void *);

/**************/
/* typeHeader */
/**************/

struct typeHeader
  {
   unsigned short type;
  };

/*************/
/* clipsVoid */
/*************/
struct clipsVoid
  {
   TypeHeader header;
  };

/***************/
/* clipsLexeme */
/***************/
struct clipsLexeme
  {
   TypeHeader header;
   CLIPSLexeme *next;
   long count;
   unsigned int permanent : 1;
   unsigned int markedEphemeral : 1;
   unsigned int neededSymbol : 1;
   unsigned int bucket : 29;
   const char *contents;
  };

/**************/
/* clipsFloat */
/**************/
struct clipsFloat
  {
   TypeHeader header;
   CLIPSFloat *next;
   long count;
   unsigned int permanent : 1;
   unsigned int markedEphemeral : 1;
   unsigned int neededFloat : 1;
   unsigned int bucket : 29;
   double contents;
  };

/****************/
/* clipsInteger */
/****************/
struct clipsInteger
  {
   TypeHeader header;
   CLIPSInteger *next;
   long count;
   unsigned int permanent : 1;
   unsigned int markedEphemeral : 1;
   unsigned int neededInteger : 1;
   unsigned int bucket : 29;
   long long contents;
  };

/***************/
/* clipsBitMap */
/***************/
struct clipsBitMap
  {
   TypeHeader header;
   CLIPSBitMap *next;
   long count;
   unsigned int permanent : 1;
   unsigned int markedEphemeral : 1;
   unsigned int neededBitMap : 1;
   unsigned int bucket : 29;
   const char *contents;
   unsigned short size;
  };

/************************/
/* clipsExternalAddress */
/************************/
struct clipsExternalAddress
  {
   TypeHeader header;
   CLIPSExternalAddress *next;
   long count;
   unsigned int permanent : 1;
   unsigned int markedEphemeral : 1;
   unsigned int neededPointer : 1;
   unsigned int bucket : 29;
   void *contents;
   unsigned short type;
  };

/**************/
/* clipsValue */
/**************/
struct clipsValue
  {
   union
     {
      void *value;
      TypeHeader *header;
      CLIPSLexeme *lexemeValue;
      CLIPSFloat *floatValue;
      CLIPSInteger *integerValue;
      CLIPSVoid *voidValue;
      Multifield *multifieldValue;
      Fact *factValue;
      Instance *instanceValue;
      CLIPSExternalAddress *externalAddressValue;
     };
  };

/**************/
/* multifield */
/**************/
struct multifield
  {
   TypeHeader header;
   unsigned busyCount;
   size_t length;
   Multifield *next;
   CLIPSValue contents[1];
  };

/************/
/* udfValue */
/************/
struct udfValue
  {
   void *supplementalInfo;
   union
     {
      void *value;
      TypeHeader *header;
      CLIPSLexeme *lexemeValue;
      CLIPSFloat *floatValue;
      CLIPSInteger *integerValue;
      CLIPSVoid *voidValue;
      Multifield *multifieldValue;
      Fact *factValue;
      Instance *instanceValue;
      CLIPSExternalAddress *externalAddressValue;
     };
   size_t begin;
   size_t range;
   struct udfValue *next;
  };

/**************/
/* udfContext */
/**************/
struct udfContext
  {
   Environment *environment;
   void *context;
   FunctionDefinition *theFunction;
   unsigned int lastPosition;
   Expression *lastArg;
   UDFValue *returnValue;
  };

/****************/
/* entityRecord */
/****************/
struct entityRecord
  {
   const char *name;
   unsigned int type : 13;
   unsigned int copyToEvaluate : 1;
   unsigned int bitMap : 1;
   unsigned int addsToRuleComplexity : 1;
   EntityPrintFunction *shortPrintFunction;
   EntityPrintFunction *longPrintFunction;
   bool (*deleteFunction)(void *,Environment *);
   EntityEvaluationFunction *evaluateFunction;
   void *(*getNextFunction)(void *,void *);
   EntityBusyCountFunction *decrementBusyCount;
   EntityBusyCountFunction *incrementBusyCount;
   void (*propagateDepth)(void *,void *);
   void (*markNeeded)(void *,void *);
   void (*install)(void *,void *);
   void (*deinstall)(void *,void *);
   struct userData *usrData;
  };

/***********************/
/* patternEntityRecord */
/***********************/
struct patternEntityRecord
  {
   struct entityRecord base;
   void (*decrementBasisCount)(Environment *,void *);
   void (*incrementBasisCount)(Environment *,void *);
   void (*matchFunction)(Environment *,void *);
   bool (*synchronized)(Environment *,void *);
   bool (*isDeleted)(Environment *,void *);
  };

/*****************/
/* patternEntity */
/*****************/
struct patternEntity
  {
   TypeHeader header;
   struct patternEntityRecord *theInfo;
   void *dependents;
   unsigned busyCount;
   unsigned long long timeTag;
  };

#endif /* _H_entities */


