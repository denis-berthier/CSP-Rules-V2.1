   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.43  11/03/25             */
   /*                                                     */
   /*                 SYMBOL BSAVE MODULE                 */
   /*******************************************************/

/*************************************************************/
/* Purpose: Implements the binary save/load feature for      */
/*    atomic data values.                                    */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*      Brian L. Dantes                                      */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.30: Changed integer type/precision.                */
/*                                                           */
/*            Support for long long integers.                */
/*                                                           */
/*      6.32: Fixed _SYMBLBIN_SOURCE_ typo.                  */
/*                                                           */
/*      6.40: Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*      6.43: Fixed DEFTEMPLATE_CONSTRUCT compile issue when */
/*            other binary file features disabled.           */
/*                                                           */
/*************************************************************/

#include "setup.h"

#if BLOAD || BLOAD_ONLY || BLOAD_AND_BSAVE || BLOAD_INSTANCES || BSAVE_INSTANCES || DEFTEMPLATE_CONSTRUCT

#include "argacces.h"
#include "bload.h"
#include "bsave.h"
#include "cstrnbin.h"
#include "envrnmnt.h"
#include "exprnpsr.h"
#include "memalloc.h"
#include "moduldef.h"
#include "router.h"

#include "symblbin.h"

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

   static void                        ReadNeededBitMaps(Environment *);
#if BLOAD_AND_BSAVE || BSAVE_INSTANCES || DEFTEMPLATE_CONSTRUCT
   static void                        WriteNeededBitMaps(Environment *,FILE *);
#endif

#if BLOAD_AND_BSAVE || BSAVE_INSTANCES || DEFTEMPLATE_CONSTRUCT

/**********************************************/
/* WriteNeededAtomicValues: Save all symbols, */
/*   floats, integers, and bitmaps needed by  */
/*   this binary image to the binary file.    */
/**********************************************/
void WriteNeededAtomicValues(
  Environment *theEnv,
  FILE *fp)
  {
   WriteNeededSymbols(theEnv,fp);
   WriteNeededFloats(theEnv,fp);
   WriteNeededIntegers(theEnv,fp);
   WriteNeededBitMaps(theEnv,fp);
  }

/********************************************************/
/* InitAtomicValueNeededFlags: Initializes all symbols, */
/*   floats, integers, and bitmaps as being unneeded by */
/*   the binary image being saved.                      */
/********************************************************/
void InitAtomicValueNeededFlags(
  Environment *theEnv)
  {
   unsigned long i;
   CLIPSLexeme *symbolPtr, **symbolArray;
   CLIPSFloat *floatPtr, **floatArray;
   CLIPSInteger *integerPtr, **integerArray;
   CLIPSBitMap *bitMapPtr, **bitMapArray;

   /*===============*/
   /* Mark symbols. */
   /*===============*/

   symbolArray = GetSymbolTable(theEnv);

   for (i = 0; i < SYMBOL_HASH_SIZE; i++)
     {
      symbolPtr = symbolArray[i];
      while (symbolPtr != NULL)
        {
         symbolPtr->neededSymbol = false;
         symbolPtr = symbolPtr->next;
        }
     }

   /*==============*/
   /* Mark floats. */
   /*==============*/

   floatArray = GetFloatTable(theEnv);

   for (i = 0; i < FLOAT_HASH_SIZE; i++)
     {
      floatPtr = floatArray[i];
      while (floatPtr != NULL)
        {
         floatPtr->neededFloat = false;
         floatPtr = floatPtr->next;
        }
     }

   /*================*/
   /* Mark integers. */
   /*================*/

   integerArray = GetIntegerTable(theEnv);

   for (i = 0; i < INTEGER_HASH_SIZE; i++)
     {
      integerPtr = integerArray[i];
      while (integerPtr != NULL)
        {
         integerPtr->neededInteger = false;
         integerPtr = integerPtr->next;
        }
     }

   /*===============*/
   /* Mark bitmaps. */
   /*===============*/

   bitMapArray = GetBitMapTable(theEnv);

   for (i = 0; i < BITMAP_HASH_SIZE; i++)
     {
      bitMapPtr = bitMapArray[i];
      while (bitMapPtr != NULL)
        {
         bitMapPtr->neededBitMap = false;
         bitMapPtr = bitMapPtr->next;
        }
     }
  }

/*****************************************************************/
/* WriteNeededSymbols: Stores all of the symbols in the symbol   */
/*   table needed for this binary image in the binary save file. */
/*****************************************************************/
void WriteNeededSymbols(
  Environment *theEnv,
  FILE *fp)
  {
   unsigned long i;
   size_t length;
   CLIPSLexeme **symbolArray;
   CLIPSLexeme *symbolPtr;
   unsigned long numberOfUsedSymbols = 0;
   size_t size = 0;

   /*=================================*/
   /* Get a copy of the symbol table. */
   /*=================================*/

   symbolArray = GetSymbolTable(theEnv);

   /*======================================================*/
   /* Get the number of symbols and the total string size. */
   /*======================================================*/

   for (i = 0; i < SYMBOL_HASH_SIZE; i++)
     {
      for (symbolPtr = symbolArray[i];
           symbolPtr != NULL;
           symbolPtr = symbolPtr->next)
        {
         if (symbolPtr->neededSymbol)
           {
            numberOfUsedSymbols++;
            size += strlen(symbolPtr->contents) + 1;
           }
        }
     }

   /*=============================================*/
   /* Write out the symbols and the string sizes. */
   /*=============================================*/

   GenWrite(&numberOfUsedSymbols,sizeof(unsigned long),fp);
   GenWrite(&size,sizeof(unsigned long),fp);

   /*=============================*/
   /* Write out the symbol types. */
   /*=============================*/
   
   for (i = 0; i < SYMBOL_HASH_SIZE; i++)
     {
      for (symbolPtr = symbolArray[i];
           symbolPtr != NULL;
           symbolPtr = symbolPtr->next)
        {
         if (symbolPtr->neededSymbol)
           { GenWrite(&symbolPtr->header.type,sizeof(unsigned short),fp); }
        }
     }
     
   /*========================*/
   /* Write out the symbols. */
   /*========================*/
   
   for (i = 0; i < SYMBOL_HASH_SIZE; i++)
     {
      for (symbolPtr = symbolArray[i];
           symbolPtr != NULL;
           symbolPtr = symbolPtr->next)
        {
         if (symbolPtr->neededSymbol)
           {
            length = strlen(symbolPtr->contents) + 1;
            GenWrite((void *) symbolPtr->contents,length,fp);
           }
        }
     }
  }

/*****************************************************************/
/* WriteNeededFloats: Stores all of the floats in the float      */
/*   table needed for this binary image in the binary save file. */
/*****************************************************************/
void WriteNeededFloats(
  Environment *theEnv,
  FILE *fp)
  {
   int i;
   CLIPSFloat **floatArray;
   CLIPSFloat *floatPtr;
   unsigned long numberOfUsedFloats = 0;

   /*================================*/
   /* Get a copy of the float table. */
   /*================================*/

   floatArray = GetFloatTable(theEnv);

   /*===========================*/
   /* Get the number of floats. */
   /*===========================*/

   for (i = 0; i < FLOAT_HASH_SIZE; i++)
     {
      for (floatPtr = floatArray[i];
           floatPtr != NULL;
           floatPtr = floatPtr->next)
        { if (floatPtr->neededFloat) numberOfUsedFloats++; }
     }

   /*======================================================*/
   /* Write out the number of floats and the float values. */
   /*======================================================*/

   GenWrite(&numberOfUsedFloats,sizeof(unsigned long),fp);

   for (i = 0 ; i < FLOAT_HASH_SIZE; i++)
     {
      for (floatPtr = floatArray[i];
           floatPtr != NULL;
           floatPtr = floatPtr->next)
        {
         if (floatPtr->neededFloat)
           { GenWrite(&floatPtr->contents,
                      sizeof(floatPtr->contents),fp); }
        }
     }
  }

/******************************************************************/
/* WriteNeededIntegers: Stores all of the integers in the integer */
/*   table needed for this binary image in the binary save file.  */
/******************************************************************/
void WriteNeededIntegers(
  Environment *theEnv,
  FILE *fp)
  {
   int i;
   CLIPSInteger **integerArray;
   CLIPSInteger *integerPtr;
   unsigned long numberOfUsedIntegers = 0;

   /*==================================*/
   /* Get a copy of the integer table. */
   /*==================================*/

   integerArray = GetIntegerTable(theEnv);

   /*=============================*/
   /* Get the number of integers. */
   /*=============================*/

   for (i = 0 ; i < INTEGER_HASH_SIZE; i++)
     {
      for (integerPtr = integerArray[i];
           integerPtr != NULL;
           integerPtr = integerPtr->next)
        {
         if (integerPtr->neededInteger) numberOfUsedIntegers++;
        }
     }

   /*==========================================================*/
   /* Write out the number of integers and the integer values. */
   /*==========================================================*/

   GenWrite(&numberOfUsedIntegers,sizeof(unsigned long),fp);

   for (i = 0 ; i < INTEGER_HASH_SIZE; i++)
     {
      for (integerPtr = integerArray[i];
           integerPtr != NULL;
           integerPtr = integerPtr->next)
        {
         if (integerPtr->neededInteger)
           {
            GenWrite(&integerPtr->contents,
                     sizeof(integerPtr->contents),fp);
           }
        }
     }
  }

/*****************************************************************/
/* WriteNeededBitMaps: Stores all of the bitmaps in the bitmap   */
/*   table needed for this binary image in the binary save file. */
/*****************************************************************/
static void WriteNeededBitMaps(
  Environment *theEnv,
  FILE *fp)
  {
   int i;
   CLIPSBitMap **bitMapArray;
   CLIPSBitMap *bitMapPtr;
   unsigned long numberOfUsedBitMaps = 0, size = 0;
   unsigned short tempSize;

   /*=================================*/
   /* Get a copy of the bitmap table. */
   /*=================================*/

   bitMapArray = GetBitMapTable(theEnv);

   /*======================================================*/
   /* Get the number of bitmaps and the total bitmap size. */
   /*======================================================*/

   for (i = 0; i < BITMAP_HASH_SIZE; i++)
     {
      for (bitMapPtr = bitMapArray[i];
           bitMapPtr != NULL;
           bitMapPtr = bitMapPtr->next)
        {
         if (bitMapPtr->neededBitMap)
           {
            numberOfUsedBitMaps++;
            size += (unsigned long) (bitMapPtr->size + sizeof(unsigned short));
           }
        }
     }

   /*========================================*/
   /* Write out the bitmaps and their sizes. */
   /*========================================*/

   GenWrite(&numberOfUsedBitMaps,sizeof(unsigned long),fp);
   GenWrite(&size,sizeof(unsigned long),fp);

   for (i = 0; i < BITMAP_HASH_SIZE; i++)
     {
      for (bitMapPtr = bitMapArray[i];
           bitMapPtr != NULL;
           bitMapPtr = bitMapPtr->next)
        {
         if (bitMapPtr->neededBitMap)
           {
            tempSize = bitMapPtr->size;
            GenWrite(&tempSize,sizeof(unsigned short),fp);
            GenWrite((void *) bitMapPtr->contents,bitMapPtr->size,fp);
           }
        }
     }
  }

#endif /* BLOAD_AND_BSAVE || BSAVE_INSTANCES */

/*********************************************/
/* ReadNeededAtomicValues: Read all symbols, */
/*   floats, integers, and bitmaps needed by */
/*   this binary image from the binary file. */
/*********************************************/
void ReadNeededAtomicValues(
  Environment *theEnv)
  {
   ReadNeededSymbols(theEnv);
   ReadNeededFloats(theEnv);
   ReadNeededIntegers(theEnv);
   ReadNeededBitMaps(theEnv);
  }

/*******************************************/
/* ReadNeededSymbols: Reads in the symbols */
/*   used by the binary image.             */
/*******************************************/
void ReadNeededSymbols(
  Environment *theEnv)
  {
   char *symbolNames, *namePtr;
   unsigned long space;
   unsigned short *types;
   unsigned long i;

   /*=================================================*/
   /* Determine the number of symbol names to be read */
   /* and space required for them.                    */
   /*=================================================*/

   GenReadBinary(theEnv,&SymbolData(theEnv)->NumberOfSymbols,sizeof(long));
   GenReadBinary(theEnv,&space,sizeof(unsigned long));
   if (SymbolData(theEnv)->NumberOfSymbols == 0)
     {
      SymbolData(theEnv)->SymbolArray = NULL;
      return;
     }

   /*=======================================*/
   /* Allocate area for strings to be read. */
   /*=======================================*/
   
   types = (unsigned short *) gm2(theEnv,sizeof(unsigned short) * SymbolData(theEnv)->NumberOfSymbols);
   GenReadBinary(theEnv,types,sizeof(unsigned short) * SymbolData(theEnv)->NumberOfSymbols);

   symbolNames = (char *) gm2(theEnv,space);
   GenReadBinary(theEnv,symbolNames,space);

   /*================================================*/
   /* Store the symbol pointers in the symbol array. */
   /*================================================*/

   SymbolData(theEnv)->SymbolArray = (CLIPSLexeme **)
                 gm2(theEnv,sizeof(CLIPSLexeme *) * SymbolData(theEnv)->NumberOfSymbols);
   namePtr = symbolNames;
   for (i = 0; i < SymbolData(theEnv)->NumberOfSymbols; i++)
     {
      if (types[i] == SYMBOL_TYPE)
        { SymbolData(theEnv)->SymbolArray[i] = CreateSymbol(theEnv,namePtr); }
      else if (types[i] == STRING_TYPE)
        { SymbolData(theEnv)->SymbolArray[i] = CreateString(theEnv,namePtr); }
      else
        { SymbolData(theEnv)->SymbolArray[i] = CreateInstanceName(theEnv,namePtr); }

      namePtr += strlen(namePtr) + 1;
     }

   /*=======================*/
   /* Free the name buffer. */
   /*=======================*/

   rm(theEnv,types,sizeof(unsigned short) * SymbolData(theEnv)->NumberOfSymbols);
   rm(theEnv,symbolNames,space);
  }

/*****************************************/
/* ReadNeededFloats: Reads in the floats */
/*   used by the binary image.           */
/*****************************************/
void ReadNeededFloats(
  Environment *theEnv)
  {
   double *floatValues;
   unsigned long i;

   /*============================================*/
   /* Determine the number of floats to be read. */
   /*============================================*/

   GenReadBinary(theEnv,&SymbolData(theEnv)->NumberOfFloats,sizeof(long));
   if (SymbolData(theEnv)->NumberOfFloats == 0)
     {
      SymbolData(theEnv)->FloatArray = NULL;
      return;
     }

   /*===============================*/
   /* Allocate area for the floats. */
   /*===============================*/

   floatValues = (double *) gm2(theEnv,sizeof(double) * SymbolData(theEnv)->NumberOfFloats);
   GenReadBinary(theEnv,floatValues,(sizeof(double) * SymbolData(theEnv)->NumberOfFloats));

   /*======================================*/
   /* Store the floats in the float array. */
   /*======================================*/

   SymbolData(theEnv)->FloatArray = (CLIPSFloat **)
               gm2(theEnv,sizeof(CLIPSFloat *) * SymbolData(theEnv)->NumberOfFloats);
   for (i = 0; i < SymbolData(theEnv)->NumberOfFloats; i++)
     { SymbolData(theEnv)->FloatArray[i] = CreateFloat(theEnv,floatValues[i]); }

   /*========================*/
   /* Free the float buffer. */
   /*========================*/

   rm(theEnv,floatValues,(sizeof(double) * SymbolData(theEnv)->NumberOfFloats));
  }

/*********************************************/
/* ReadNeededIntegers: Reads in the integers */
/*   used by the binary image.               */
/*********************************************/
void ReadNeededIntegers(
  Environment *theEnv)
  {
   long long *integerValues;
   unsigned long i;

   /*==============================================*/
   /* Determine the number of integers to be read. */
   /*==============================================*/

   GenReadBinary(theEnv,&SymbolData(theEnv)->NumberOfIntegers,sizeof(unsigned long));
   if (SymbolData(theEnv)->NumberOfIntegers == 0)
     {
      SymbolData(theEnv)->IntegerArray = NULL;
      return;
     }

   /*=================================*/
   /* Allocate area for the integers. */
   /*=================================*/

   integerValues = (long long *) gm2(theEnv,(sizeof(long long) * SymbolData(theEnv)->NumberOfIntegers));
   GenReadBinary(theEnv,integerValues,(sizeof(long long) * SymbolData(theEnv)->NumberOfIntegers));

   /*==========================================*/
   /* Store the integers in the integer array. */
   /*==========================================*/

   SymbolData(theEnv)->IntegerArray = (CLIPSInteger **)
           gm2(theEnv,(sizeof(CLIPSInteger *) * SymbolData(theEnv)->NumberOfIntegers));
   for (i = 0; i < SymbolData(theEnv)->NumberOfIntegers; i++)
     { SymbolData(theEnv)->IntegerArray[i] = CreateInteger(theEnv,integerValues[i]); }

   /*==========================*/
   /* Free the integer buffer. */
   /*==========================*/

   rm(theEnv,integerValues,(sizeof(long long) * SymbolData(theEnv)->NumberOfIntegers));
  }

/*******************************************/
/* ReadNeededBitMaps: Reads in the bitmaps */
/*   used by the binary image.             */
/*******************************************/
static void ReadNeededBitMaps(
  Environment *theEnv)
  {
   char *bitMapStorage, *bitMapPtr;
   unsigned long space;
   unsigned long i;
   unsigned short *tempSize;

   /*=======================================*/
   /* Determine the number of bitmaps to be */
   /* read and space required for them.     */
   /*=======================================*/

   GenReadBinary(theEnv,&SymbolData(theEnv)->NumberOfBitMaps,sizeof(long));
   GenReadBinary(theEnv,&space,sizeof(unsigned long));
   if (SymbolData(theEnv)->NumberOfBitMaps == 0)
     {
      SymbolData(theEnv)->BitMapArray = NULL;
      return;
     }

   /*=======================================*/
   /* Allocate area for bitmaps to be read. */
   /*=======================================*/

   bitMapStorage = (char *) gm2(theEnv,space);
   GenReadBinary(theEnv,bitMapStorage,space);

   /*================================================*/
   /* Store the bitMap pointers in the bitmap array. */
   /*================================================*/

   SymbolData(theEnv)->BitMapArray = (CLIPSBitMap **)
                 gm2(theEnv,sizeof(CLIPSBitMap *) * SymbolData(theEnv)->NumberOfBitMaps);
   bitMapPtr = bitMapStorage;
   for (i = 0; i < SymbolData(theEnv)->NumberOfBitMaps; i++)
     {
      tempSize = (unsigned short *) bitMapPtr;
      SymbolData(theEnv)->BitMapArray[i] = (CLIPSBitMap *) AddBitMap(theEnv,bitMapPtr+sizeof(unsigned short),*tempSize);
      bitMapPtr += *tempSize + sizeof(unsigned short);
     }

   /*=========================*/
   /* Free the bitmap buffer. */
   /*=========================*/

   rm(theEnv,bitMapStorage,space);
  }

/**********************************************************/
/* FreeAtomicValueStorage: Returns the memory allocated   */
/*   for storing the pointers to atomic data values used  */
/*   in refreshing expressions and other data structures. */
/**********************************************************/
void FreeAtomicValueStorage(
  Environment *theEnv)
  {
   if (SymbolData(theEnv)->SymbolArray != NULL)
     rm(theEnv,SymbolData(theEnv)->SymbolArray,sizeof(CLIPSLexeme *) * SymbolData(theEnv)->NumberOfSymbols);
   if (SymbolData(theEnv)->FloatArray != NULL)
     rm(theEnv,SymbolData(theEnv)->FloatArray,sizeof(CLIPSFloat *) * SymbolData(theEnv)->NumberOfFloats);
   if (SymbolData(theEnv)->IntegerArray != NULL)
     rm(theEnv,SymbolData(theEnv)->IntegerArray,sizeof(CLIPSInteger *) * SymbolData(theEnv)->NumberOfIntegers);
   if (SymbolData(theEnv)->BitMapArray != NULL)
     rm(theEnv,SymbolData(theEnv)->BitMapArray,sizeof(CLIPSBitMap *) * SymbolData(theEnv)->NumberOfBitMaps);

   SymbolData(theEnv)->SymbolArray = NULL;
   SymbolData(theEnv)->FloatArray = NULL;
   SymbolData(theEnv)->IntegerArray = NULL;
   SymbolData(theEnv)->BitMapArray = NULL;
   SymbolData(theEnv)->NumberOfSymbols = 0;
   SymbolData(theEnv)->NumberOfFloats = 0;
   SymbolData(theEnv)->NumberOfIntegers = 0;
   SymbolData(theEnv)->NumberOfBitMaps = 0;
  }

#endif /* BLOAD || BLOAD_ONLY || BLOAD_AND_BSAVE || BLOAD_INSTANCES || BSAVE_INSTANCES */
