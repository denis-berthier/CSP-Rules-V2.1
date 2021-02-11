   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.30  08/19/14            */
   /*                                                     */
   /*                MULTIFIELD HEADER FILE               */
   /*******************************************************/

/*************************************************************/
/* Purpose: Routines for creating and manipulating           */
/*   multifield values.                                      */
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
/*            Corrected code to remove compiler warnings.    */
/*                                                           */
/*            Moved ImplodeMultifield from multifun.c.       */
/*                                                           */
/*      6.30: Changed integer type/precision.                */
/*                                                           */
/*            Changed garbage collection algorithm.          */
/*                                                           */
/*            Used DataObjectToString instead of             */
/*            ValueToString in implode$ to handle            */
/*            print representation of external addresses.    */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Converted API macros to function calls.        */
/*                                                           */
/*            Fixed issue with StoreInMultifield when        */
/*            asserting void values in implied deftemplate   */
/*            facts.                                         */
/*                                                           */
/*************************************************************/

#ifndef _H_multifld

#define _H_multifld

struct field;
struct multifield;

#ifndef _H_evaluatn
#include "evaluatn.h"
#endif

struct field
  {
   unsigned short type;
   void *value;
  };

struct multifield
  {
   unsigned busyCount;
   long multifieldLength;
   struct multifield *next;
   struct field theFields[1];
  };

typedef struct multifield SEGMENT;
typedef struct multifield * SEGMENT_PTR;
typedef struct multifield * MULTIFIELD_PTR;
typedef struct field FIELD;
typedef struct field * FIELD_PTR;

#define GetMFLength(target)     (((struct multifield *) (target))->multifieldLength)
#define GetMFPtr(target,index)  (&(((struct field *) ((struct multifield *) (target))->theFields)[index-1]))
#define SetMFType(target,index,value)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].type = (unsigned short) (value))
#define SetMFValue(target,index,val)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].value = (void *) (val))
#define GetMFType(target,index)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].type)
#define GetMFValue(target,index)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].value)

#define EnvGetMFLength(theEnv,target)     (((struct multifield *) (target))->multifieldLength)
#define EnvGetMFPtr(theEnv,target,index)  (&(((struct field *) ((struct multifield *) (target))->theFields)[index-1]))
#define EnvSetMFType(theEnv,target,index,value)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].type = (unsigned short) (value))
#define EnvSetMFValue(theEnv,target,index,val)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].value = (void *) (val))
#define EnvGetMFType(theEnv,target,index)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].type)
#define EnvGetMFValue(theEnv,target,index)  (((struct field *) ((struct multifield *) (target))->theFields)[index-1].value)

#ifdef LOCALE
#undef LOCALE
#endif
#ifdef _MULTIFLD_SOURCE_
#define LOCALE
#else
#define LOCALE extern
#endif

   LOCALE void                          *CreateMultifield2(void *,long);
   LOCALE void                           ReturnMultifield(void *,struct multifield *);
   LOCALE void                           MultifieldInstall(void *,struct multifield *);
   LOCALE void                           MultifieldDeinstall(void *,struct multifield *);
   LOCALE struct multifield             *StringToMultifield(void *,const char *);
   LOCALE void                          *EnvCreateMultifield(void *,long);
   LOCALE void                           AddToMultifieldList(void *,struct multifield *);
   LOCALE void                           FlushMultifields(void *);
   LOCALE void                           DuplicateMultifield(void *,struct dataObject *,struct dataObject *);
   LOCALE void                           PrintMultifield(void *,const char *,SEGMENT_PTR,long,long,int);
   LOCALE intBool                        MultifieldDOsEqual(DATA_OBJECT_PTR,DATA_OBJECT_PTR);
   LOCALE void                           StoreInMultifield(void *,DATA_OBJECT *,EXPRESSION *,int);
   LOCALE void                          *CopyMultifield(void *,struct multifield *);
   LOCALE intBool                        MultifieldsEqual(struct multifield *,struct multifield *);
   LOCALE void                          *DOToMultifield(void *,DATA_OBJECT *);
   LOCALE unsigned long                  HashMultifield(struct multifield *,unsigned long);
   LOCALE struct multifield             *GetMultifieldList(void *);
   LOCALE void                          *ImplodeMultifield(void *,DATA_OBJECT *);

#if ALLOW_ENVIRONMENT_GLOBALS

   LOCALE void                          *CreateMultifield(long);
   
#endif /* ALLOW_ENVIRONMENT_GLOBALS */

#endif /* _H_multifld */




