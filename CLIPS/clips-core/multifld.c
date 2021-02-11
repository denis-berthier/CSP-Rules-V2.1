   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.31  03/31/19            */
   /*                                                     */
   /*                  MULTIFIELD MODULE                  */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*      Brian L. Dantes                                      */
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
/*      6.31: Fixed Xcode compiler warnings.                 */
/*                                                           */
/*************************************************************/

#define _MULTIFLD_SOURCE_

#include <stdio.h>
#define _STDIO_INCLUDED_

#include "setup.h"

#include "constant.h"
#include "memalloc.h"
#include "envrnmnt.h"
#include "evaluatn.h"
#include "scanner.h"
#include "router.h"
#include "strngrtr.h"
#include "utility.h"
#if OBJECT_SYSTEM
#include "object.h"
#endif

#include "multifld.h"

/**********************/
/* CreateMultifield2: */
/**********************/
globle void *CreateMultifield2(
  void *theEnv,
  long size)
  {
   struct multifield *theSegment;
   long newSize = size;

   if (size <= 0) newSize = 1;

   theSegment = get_var_struct(theEnv,multifield,(long) sizeof(struct field) * (newSize - 1L));

   theSegment->multifieldLength = size;
   theSegment->busyCount = 0;
   theSegment->next = NULL;

   return((void *) theSegment);
  }

/*********************/
/* ReturnMultifield: */
/*********************/
globle void ReturnMultifield(
  void *theEnv,
  struct multifield *theSegment)
  {
   unsigned long newSize;

   if (theSegment == NULL) return;

   if (theSegment->multifieldLength == 0) newSize = 1;
   else newSize = theSegment->multifieldLength;

   rtn_var_struct(theEnv,multifield,sizeof(struct field) * (newSize - 1),theSegment);
  }

/**********************/
/* MultifieldInstall: */
/**********************/
globle void MultifieldInstall(
  void *theEnv,
  struct multifield *theSegment)
  {
   unsigned long length, i;
   struct field *theFields;

   if (theSegment == NULL) return;

   length = theSegment->multifieldLength;

   theSegment->busyCount++;
   theFields = theSegment->theFields;

   for (i = 0 ; i < length ; i++)
     { AtomInstall(theEnv,theFields[i].type,theFields[i].value); }
  }

/************************/
/* MultifieldDeinstall: */
/************************/
globle void MultifieldDeinstall(
  void *theEnv,
  struct multifield *theSegment)
  {
   unsigned long length, i;
   struct field *theFields;

   if (theSegment == NULL) return;

   length = theSegment->multifieldLength;
   theSegment->busyCount--;
   theFields = theSegment->theFields;

   for (i = 0 ; i < length ; i++)
     { AtomDeinstall(theEnv,theFields[i].type,theFields[i].value); }
  }

/*******************************************************/
/* StringToMultifield: Returns a multifield structure  */
/*    that represents the string sent as the argument. */
/*******************************************************/
globle struct multifield *StringToMultifield(
  void *theEnv,
  const char *theString)
  {
   struct token theToken;
   struct multifield *theSegment;
   struct field *theFields;
   unsigned long numberOfFields = 0;
   struct expr *topAtom = NULL, *lastAtom = NULL, *theAtom;

   /*====================================================*/
   /* Open the string as an input source and read in the */
   /* list of values to be stored in the multifield.     */
   /*====================================================*/

   OpenStringSource(theEnv,"multifield-str",theString,0);

   GetToken(theEnv,"multifield-str",&theToken);
   while (theToken.type != STOP)
     {
      if ((theToken.type == SYMBOL) || (theToken.type == STRING) ||
          (theToken.type == FLOAT) || (theToken.type == INTEGER) ||
          (theToken.type == INSTANCE_NAME))
        { theAtom = GenConstant(theEnv,theToken.type,theToken.value); }
      else
        { theAtom = GenConstant(theEnv,STRING,EnvAddSymbol(theEnv,theToken.printForm)); }

      numberOfFields++;
      if (topAtom == NULL) topAtom = theAtom;
      else lastAtom->nextArg = theAtom;

      lastAtom = theAtom;
      GetToken(theEnv,"multifield-str",&theToken);
     }

   CloseStringSource(theEnv,"multifield-str");

   /*====================================================================*/
   /* Create a multifield of the appropriate size for the values parsed. */
   /*====================================================================*/

   theSegment = (struct multifield *) EnvCreateMultifield(theEnv,numberOfFields);
   theFields = theSegment->theFields;

   /*====================================*/
   /* Copy the values to the multifield. */
   /*====================================*/

   theAtom = topAtom;
   numberOfFields = 0;
   while (theAtom != NULL)
     {
      theFields[numberOfFields].type = theAtom->type;
      theFields[numberOfFields].value = theAtom->value;
      numberOfFields++;
      theAtom = theAtom->nextArg;
     }

   /*===========================*/
   /* Return the parsed values. */
   /*===========================*/

   ReturnExpression(theEnv,topAtom);

   /*============================*/
   /* Return the new multifield. */
   /*============================*/

   return(theSegment);
  }
  
/**************************************************************/
/* EnvCreateMultifield: Creates a multifield of the specified */
/*   size and adds it to the list of segments.                */
/**************************************************************/
globle void *EnvCreateMultifield(
  void *theEnv,
  long size)
  {
   struct multifield *theSegment;
   long newSize;

   if (size <= 0) newSize = 1;
   else newSize = size;

   theSegment = get_var_struct(theEnv,multifield,(long) sizeof(struct field) * (newSize - 1L));

   theSegment->multifieldLength = size;
   theSegment->busyCount = 0;
   theSegment->next = NULL;

   theSegment->next = UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields;
   UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields = theSegment;
   UtilityData(theEnv)->CurrentGarbageFrame->dirty = TRUE;
   if (UtilityData(theEnv)->CurrentGarbageFrame->LastMultifield == NULL)
     { UtilityData(theEnv)->CurrentGarbageFrame->LastMultifield = theSegment; }

   return((void *) theSegment);
  }

/*******************/
/* DOToMultifield: */
/*******************/
globle void *DOToMultifield(
  void *theEnv,
  DATA_OBJECT *theValue)
  {
   struct multifield *dst, *src;

   if (theValue->type != MULTIFIELD) return(NULL);

   dst = (struct multifield *) CreateMultifield2(theEnv,(unsigned long) GetpDOLength(theValue));

   src = (struct multifield *) theValue->value;
   GenCopyMemory(struct field,dst->multifieldLength,
              &(dst->theFields[0]),&(src->theFields[GetpDOBegin(theValue) - 1]));

   return((void *) dst);
  }

/************************/
/* AddToMultifieldList: */
/************************/
globle void AddToMultifieldList(
  void *theEnv,
  struct multifield *theSegment)
  {
   theSegment->next = UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields;
   UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields = theSegment;
   UtilityData(theEnv)->CurrentGarbageFrame->dirty = TRUE;
   if (UtilityData(theEnv)->CurrentGarbageFrame->LastMultifield == NULL)
     { UtilityData(theEnv)->CurrentGarbageFrame->LastMultifield = theSegment; }
  }

/*********************/
/* FlushMultifields: */
/*********************/
globle void FlushMultifields(
  void *theEnv)
  {
   struct multifield *theSegment, *nextPtr, *lastPtr = NULL;
   unsigned long newSize;

   theSegment = UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields;
   while (theSegment != NULL)
     {
      nextPtr = theSegment->next;
      if (theSegment->busyCount == 0)
        {
         if (theSegment->multifieldLength == 0) newSize = 1;
         else newSize = theSegment->multifieldLength;
         rtn_var_struct(theEnv,multifield,sizeof(struct field) * (newSize - 1),theSegment);
         if (lastPtr == NULL) UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields = nextPtr;
         else lastPtr->next = nextPtr;
         
         /*=================================================*/
         /* If the multifield deleted was the last in the   */
         /* list, update the pointer to the last multifield */
         /* to the prior multifield.                        */
         /*=================================================*/
         
         if (nextPtr == NULL)
           { UtilityData(theEnv)->CurrentGarbageFrame->LastMultifield = lastPtr; }
        }
      else
        { lastPtr = theSegment; }

      theSegment = nextPtr;
     }
  }

/************************************************************************/
/* DuplicateMultifield: Allocates a new segment and copies results from */
/*   old value to new. This value is not put on the ListOfMultifields.  */
/************************************************************************/
globle void DuplicateMultifield(
  void *theEnv,
  DATA_OBJECT_PTR dst,
  DATA_OBJECT_PTR src)
  {
   dst->type = MULTIFIELD;
   dst->begin = 0;
   dst->end = src->end - src->begin;
   dst->value = (void *) CreateMultifield2(theEnv,(unsigned long) dst->end + 1);
   GenCopyMemory(struct field,dst->end + 1,&((struct multifield *) dst->value)->theFields[0],
                                        &((struct multifield *) src->value)->theFields[src->begin]);
  }

/*******************/
/* CopyMultifield: */
/*******************/
globle void *CopyMultifield(
  void *theEnv,
  struct multifield *src)
  {
   struct multifield *dst;

   dst = (struct multifield *) CreateMultifield2(theEnv,src->multifieldLength);
   GenCopyMemory(struct field,src->multifieldLength,&(dst->theFields[0]),&(src->theFields[0]));
   return((void *) dst);
  }

/*********************************************/
/* PrintMultifield: Prints out a multifield. */
/*********************************************/
globle void PrintMultifield(
  void *theEnv,
  const char *fileid,
  struct multifield *segment,
  long begin,
  long end,
  int printParens)
  {
   struct field *theMultifield;
   int i;

   theMultifield = segment->theFields;
   if (printParens)
     EnvPrintRouter(theEnv,fileid,"(");
   i = begin;
   while (i <= end)
     {
      PrintAtom(theEnv,fileid,theMultifield[i].type,theMultifield[i].value);
      i++;
      if (i <= end) EnvPrintRouter(theEnv,fileid," ");
     }
   if (printParens)
     EnvPrintRouter(theEnv,fileid,")");
  }

/****************************************************/
/* StoreInMultifield: Append function for segments. */
/****************************************************/
globle void StoreInMultifield(
  void *theEnv,
  DATA_OBJECT *returnValue,
  EXPRESSION *expptr,
  int garbageSegment)
  {
   DATA_OBJECT val_ptr;
   DATA_OBJECT *val_arr;
   struct multifield *theMultifield;
   struct multifield *orig_ptr;
   long start, end, i,j, k, argCount;
   unsigned long seg_size;

   argCount = CountArguments(expptr);

   /*=========================================*/
   /* If no arguments are given return a NULL */
   /* multifield of length zero.              */
   /*=========================================*/

   if (argCount == 0)
     {
      SetpType(returnValue,MULTIFIELD);
      SetpDOBegin(returnValue,1);
      SetpDOEnd(returnValue,0);
      if (garbageSegment) theMultifield = (struct multifield *) EnvCreateMultifield(theEnv,0L);
      else theMultifield = (struct multifield *) CreateMultifield2(theEnv,0L);
      SetpValue(returnValue,(void *) theMultifield);
      return;
     }
   else
     {
      /*========================================*/
      /* Get a new segment with length equal to */
      /* the total length of all the arguments. */
      /*========================================*/

      val_arr = (DATA_OBJECT *) gm3(theEnv,(long) sizeof(DATA_OBJECT) * argCount);
      seg_size = 0;
      
      for (i = 1; i <= argCount; i++, expptr = expptr->nextArg)
        {
         EvaluateExpression(theEnv,expptr,&val_ptr);
         if (EvaluationData(theEnv)->EvaluationError)
           {
            SetpType(returnValue,MULTIFIELD);
            SetpDOBegin(returnValue,1);
            SetpDOEnd(returnValue,0);
            if (garbageSegment)
              { theMultifield = (struct multifield *) EnvCreateMultifield(theEnv,0L); }
            else theMultifield = (struct multifield *) CreateMultifield2(theEnv,0L);
            SetpValue(returnValue,(void *) theMultifield);
            rm3(theEnv,val_arr,(long) sizeof(DATA_OBJECT) * argCount);
            return;
           }
         SetpType(val_arr+i-1,GetType(val_ptr));
         if (GetType(val_ptr) == MULTIFIELD)
           {
            SetpValue(val_arr+i-1,GetpValue(&val_ptr));
            start = GetDOBegin(val_ptr);
            end = GetDOEnd(val_ptr);
           }
         else if (GetType(val_ptr) == RVOID)
           {
            SetpValue(val_arr+i-1,GetValue(val_ptr));
            start = 1;
            end = 0;
           }
         else
           {
            SetpValue(val_arr+i-1,GetValue(val_ptr));
            start = end = -1;
           }

         seg_size += (unsigned long) (end - start + 1);
         SetpDOBegin(val_arr+i-1,start);
         SetpDOEnd(val_arr+i-1,end);
        }

      if (garbageSegment)
        { theMultifield = (struct multifield *) EnvCreateMultifield(theEnv,seg_size); }
      else theMultifield = (struct multifield *) CreateMultifield2(theEnv,seg_size);

      /*========================================*/
      /* Copy each argument into new segment.  */
      /*========================================*/

      for (k = 0, j = 1; k < argCount; k++)
        {
         if (GetpType(val_arr+k) == MULTIFIELD)
           {
            start = GetpDOBegin(val_arr+k);
            end = GetpDOEnd(val_arr+k);
            orig_ptr = (struct multifield *) GetpValue(val_arr+k);
            for (i = start; i < end + 1; i++, j++)
              {
               SetMFType(theMultifield,j,(GetMFType(orig_ptr,i)));
               SetMFValue(theMultifield,j,(GetMFValue(orig_ptr,i)));
              }
           }
         else if (GetpType(val_arr+k) != RVOID)
           {
            SetMFType(theMultifield,j,(short) (GetpType(val_arr+k)));
            SetMFValue(theMultifield,j,(GetpValue(val_arr+k)));
            j++;
           }
        }

      /*=========================*/
      /* Return the new segment. */
      /*=========================*/

      SetpType(returnValue,MULTIFIELD);
      SetpDOBegin(returnValue,1);
      SetpDOEnd(returnValue,(long) seg_size);
      SetpValue(returnValue,(void *) theMultifield);
      rm3(theEnv,val_arr,(long) sizeof(DATA_OBJECT) * argCount);
      return;
     }
  }

/*************************************************************/
/* MultifieldDOsEqual: determines if two segments are equal. */
/*************************************************************/
globle intBool MultifieldDOsEqual(
  DATA_OBJECT_PTR dobj1,
  DATA_OBJECT_PTR dobj2)
  {
   long extent1,extent2; /* 6.04 Bug Fix */
   FIELD_PTR e1,e2;

   extent1 = GetpDOLength(dobj1);
   extent2 = GetpDOLength(dobj2);
   if (extent1 != extent2)
     { return(FALSE); }

   e1 = (FIELD_PTR) GetMFPtr(GetpValue(dobj1),GetpDOBegin(dobj1));
   e2 = (FIELD_PTR) GetMFPtr(GetpValue(dobj2),GetpDOBegin(dobj2));
   while (extent1 != 0)
     {
      if (e1->type != e2->type)
        { return(FALSE); }

      if (e1->value != e2->value)
        { return(FALSE); }

      extent1--;

      if (extent1 > 0)
        {
         e1++;
         e2++;
        }
     }
   return(TRUE);
  }

/******************************************************************/
/* MultifieldsEqual: Determines if two multifields are identical. */
/******************************************************************/
globle int MultifieldsEqual(
  struct multifield *segment1,
  struct multifield *segment2)
  {
   struct field *elem1;
   struct field *elem2;
   long length, i = 0;

   length = segment1->multifieldLength;
   if (length != segment2->multifieldLength)
     { return(FALSE); }

   elem1 = segment1->theFields;
   elem2 = segment2->theFields;

   /*==================================================*/
   /* Compare each field of both facts until the facts */
   /* match completely or the facts mismatch.          */
   /*==================================================*/

   while (i < length)
     {
      if (elem1[i].type != elem2[i].type)
        { return(FALSE); }

      if (elem1[i].type == MULTIFIELD)
        {
         if (MultifieldsEqual((struct multifield *) elem1[i].value,
                              (struct multifield *) elem2[i].value) == FALSE)
          { return(FALSE); }
        }
      else if (elem1[i].value != elem2[i].value)
        { return(FALSE); }

      i++;
     }
   return(TRUE);
  }

/************************************************************/
/* HashMultifield: Returns the hash value for a multifield. */
/************************************************************/
globle unsigned long HashMultifield(
  struct multifield *theSegment,
  unsigned long theRange)
  {
   unsigned long length, i;
   unsigned long tvalue;
   unsigned long count;
   struct field *fieldPtr;
   union
     {
      double fv;
      void *vv;
      unsigned long liv;
     } fis;
     
   /*================================================*/
   /* Initialize variables for computing hash value. */
   /*================================================*/

   count = 0;
   length = theSegment->multifieldLength;
   fieldPtr = theSegment->theFields;

   /*====================================================*/
   /* Loop through each value in the multifield, compute */
   /* its hash value, and add it to the running total.   */
   /*====================================================*/

   for (i = 0;
        i < length;
        i++)
     {
      switch(fieldPtr[i].type)
         {
          case MULTIFIELD:
            count += HashMultifield((struct multifield *) fieldPtr[i].value,theRange);
            break;

          case FLOAT:
            fis.liv = 0;
            fis.fv = ValueToDouble(fieldPtr[i].value);
            count += (fis.liv * (i + 29))  +
                     (unsigned long) ValueToDouble(fieldPtr[i].value);
            break;

          case INTEGER:
            count += (((unsigned long) ValueToLong(fieldPtr[i].value)) * (i + 29)) +
                      ((unsigned long) ValueToLong(fieldPtr[i].value));
            break;

          case FACT_ADDRESS:
#if OBJECT_SYSTEM
          case INSTANCE_ADDRESS:
#endif
            fis.liv = 0;
            fis.vv = fieldPtr[i].value;
            count += (unsigned long) (fis.liv * (i + 29));
            break;

          case EXTERNAL_ADDRESS:
            fis.liv = 0;
            fis.vv = ValueToExternalAddress(fieldPtr[i].value);
            count += (unsigned long) (fis.liv * (i + 29));
            break;

          case SYMBOL:
          case STRING:
#if OBJECT_SYSTEM
          case INSTANCE_NAME:
#endif
            tvalue = (unsigned long) HashSymbol(ValueToString(fieldPtr[i].value),theRange);
            count += (unsigned long) (tvalue * (i + 29));
            break;
         }
     }

   /*========================*/
   /* Return the hash value. */
   /*========================*/

   return(count);
  }

/**********************/
/* GetMultifieldList: */
/**********************/
globle struct multifield *GetMultifieldList(
  void *theEnv)
  {
   return(UtilityData(theEnv)->CurrentGarbageFrame->ListOfMultifields);
  }

/***************************************/
/* ImplodeMultifield: C access routine */
/*   for the implode$ function.        */
/***************************************/
globle void *ImplodeMultifield(
  void *theEnv,
  DATA_OBJECT *value)
  {
   size_t strsize = 0;
   long i, j;
   const char *tmp_str;
   char *ret_str;
   void *rv;
   struct multifield *theMultifield;
   DATA_OBJECT tempDO;

   /*===================================================*/
   /* Determine the size of the string to be allocated. */
   /*===================================================*/

   theMultifield = (struct multifield *) GetpValue(value);
   for (i = GetpDOBegin(value) ; i <= GetpDOEnd(value) ; i++)
     {
      if (GetMFType(theMultifield,i) == FLOAT)
        {
         tmp_str = FloatToString(theEnv,ValueToDouble(GetMFValue(theMultifield,i)));
         strsize += strlen(tmp_str) + 1;
        }
      else if (GetMFType(theMultifield,i) == INTEGER)
        {
         tmp_str = LongIntegerToString(theEnv,ValueToLong(GetMFValue(theMultifield,i)));
         strsize += strlen(tmp_str) + 1;
        }
      else if (GetMFType(theMultifield,i) == STRING)
        {
         strsize += strlen(ValueToString(GetMFValue(theMultifield,i))) + 3;
         tmp_str = ValueToString(GetMFValue(theMultifield,i));
         while(*tmp_str)
           {
            if (*tmp_str == '"')
              { strsize++; }
            else if (*tmp_str == '\\') /* GDR 111599 #835 */
              { strsize++; }           /* GDR 111599 #835 */
            tmp_str++;
           }
        }
#if OBJECT_SYSTEM
      else if (GetMFType(theMultifield,i) == INSTANCE_NAME)
        { strsize += strlen(ValueToString(GetMFValue(theMultifield,i))) + 3; }
      else if (GetMFType(theMultifield,i) == INSTANCE_ADDRESS)
        { strsize += strlen(ValueToString(((INSTANCE_TYPE *)
                            GetMFValue(theMultifield,i))->name)) + 3; }
#endif

      else
        { 
         SetType(tempDO,GetMFType(theMultifield,i));
         SetValue(tempDO,GetMFValue(theMultifield,i));
         strsize += strlen(DataObjectToString(theEnv,&tempDO)) + 1; 
        }
     }

   /*=============================================*/
   /* Allocate the string and copy all components */
   /* of the MULTIFIELD variable to it.           */
   /*=============================================*/

   if (strsize == 0) return(EnvAddSymbol(theEnv,""));
   ret_str = (char *) gm2(theEnv,strsize);
   for(j=0, i=GetpDOBegin(value); i <= GetpDOEnd(value) ; i++)
     {
      /*============================*/
      /* Convert numbers to strings */
      /*============================*/

      if (GetMFType(theMultifield,i) == FLOAT)
        {
         tmp_str = FloatToString(theEnv,ValueToDouble(GetMFValue(theMultifield,i)));
         while(*tmp_str)
           {
            *(ret_str+j) = *tmp_str;
            j++;
            tmp_str++;
           }
        }
      else if (GetMFType(theMultifield,i) == INTEGER)
        {
         tmp_str = LongIntegerToString(theEnv,ValueToLong(GetMFValue(theMultifield,i)));
         while(*tmp_str)
           {
            *(ret_str+j) = *tmp_str;
            j++;
            tmp_str++;
           }
        }

      /*=======================================*/
      /* Enclose strings in quotes and preceed */
      /* imbedded quotes with a backslash      */
      /*=======================================*/

      else if (GetMFType(theMultifield,i) == STRING)
        {
         tmp_str = ValueToString(GetMFValue(theMultifield,i));
         *(ret_str+j) = '"';
         j++;
         while(*tmp_str)
           {
            if (*tmp_str == '"')
              {
               *(ret_str+j) = '\\';
               j++;
              }
            else if (*tmp_str == '\\') /* GDR 111599 #835 */
              {                        /* GDR 111599 #835 */
               *(ret_str+j) = '\\';    /* GDR 111599 #835 */
               j++;                    /* GDR 111599 #835 */
              }                        /* GDR 111599 #835 */
              
            *(ret_str+j) = *tmp_str;
            j++;
            tmp_str++;
           }
         *(ret_str+j) = '"';
         j++;
        }
#if OBJECT_SYSTEM
      else if (GetMFType(theMultifield,i) == INSTANCE_NAME)
        {
         tmp_str = ValueToString(GetMFValue(theMultifield,i));
         *(ret_str + j++) = '[';
         while(*tmp_str)
           {
            *(ret_str+j) = *tmp_str;
            j++;
            tmp_str++;
           }
         *(ret_str + j++) = ']';
        }
      else if (GetMFType(theMultifield,i) == INSTANCE_ADDRESS)
        {
         tmp_str = ValueToString(((INSTANCE_TYPE *) GetMFValue(theMultifield,i))->name);
         *(ret_str + j++) = '[';
         while(*tmp_str)
           {
            *(ret_str+j) = *tmp_str;
            j++; tmp_str++;
           }
         *(ret_str + j++) = ']';
        }
#endif
      else
        {
         SetType(tempDO,GetMFType(theMultifield,i));
         SetValue(tempDO,GetMFValue(theMultifield,i));
         tmp_str = DataObjectToString(theEnv,&tempDO);
         while(*tmp_str)
           {
            *(ret_str+j) = *tmp_str;
            j++; tmp_str++;
           }
         }
      *(ret_str+j) = ' ';
      j++;
     }
   *(ret_str+j-1) = '\0';

   /*====================*/
   /* Return the string. */
   /*====================*/

   rv = EnvAddSymbol(theEnv,ret_str);
   rm(theEnv,ret_str,strsize);
   return(rv);
  }

/*#####################################*/
/* ALLOW_ENVIRONMENT_GLOBALS Functions */
/*#####################################*/

#if ALLOW_ENVIRONMENT_GLOBALS

globle void *CreateMultifield(
  long size)
  {
   return EnvCreateMultifield(GetCurrentEnvironment(),size);
  }

#endif /* ALLOW_ENVIRONMENT_GLOBALS */


