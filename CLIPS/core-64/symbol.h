   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.40  10/01/16            */
   /*                                                     */
   /*                 SYMBOL HEADER FILE                  */
   /*******************************************************/

/*************************************************************/
/* Purpose: Manages the atomic data value hash tables for    */
/*   storing symbols, integers, floats, and bit maps.        */
/*   Contains routines for adding entries, examining the     */
/*   hash tables, and performing garbage collection to       */
/*   remove entries no longer in use.                        */
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
/*      6.24: CLIPS crashing on AMD64 processor in the       */
/*            function used to generate a hash value for     */
/*            integers. DR0871                               */
/*                                                           */
/*            Support for run-time programs directly passing */
/*            the hash tables for initialization.            */
/*                                                           */
/*            Corrected code generating compilation          */
/*            warnings.                                      */
/*                                                           */
/*      6.30: Changed integer type/precision.                */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW,          */
/*            MAC_MCW, and IBM_TBC).                         */
/*                                                           */
/*            Support for hashing EXTERNAL_ADDRESS_TYPE      */
/*            data type.                                     */
/*                                                           */
/*            Support for long long integers.                */
/*                                                           */
/*            Changed garbage collection algorithm.          */
/*                                                           */
/*            Used genstrcpy instead of strcpy.              */
/*                                                           */
/*            Added support for external address hash table  */
/*            and subtyping.                                 */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Converted API macros to function calls.        */
/*                                                           */
/*            Added ValueToPointer and EnvValueToPointer     */
/*            macros.                                        */
/*                                                           */
/*      6.40: Refactored code to reduce header dependencies  */
/*            in sysdep.c.                                   */
/*                                                           */
/*            Removed LOCALE definition.                     */
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
/*            UDF redesign.                                  */
/*                                                           */
/*************************************************************/

#ifndef _H_symbol

#pragma once

#define _H_symbol

#include <stdlib.h>

#include "entities.h"

typedef struct genericHashNode GENERIC_HN;

#ifndef SYMBOL_HASH_SIZE
#define SYMBOL_HASH_SIZE       63559L
#endif

#ifndef FLOAT_HASH_SIZE
#define FLOAT_HASH_SIZE         8191
#endif

#ifndef INTEGER_HASH_SIZE
#define INTEGER_HASH_SIZE       8191
#endif

#ifndef BITMAP_HASH_SIZE
#define BITMAP_HASH_SIZE        8191
#endif

#ifndef EXTERNAL_ADDRESS_HASH_SIZE
#define EXTERNAL_ADDRESS_HASH_SIZE        8191
#endif

/******************************/
/* genericHashNode STRUCTURE: */
/******************************/
struct genericHashNode
  {
   TypeHeader header;
   struct genericHashNode *next;
   long count;
   unsigned int permanent : 1;
   unsigned int markedEphemeral : 1;
   unsigned int needed : 1;
   unsigned int bucket : 29;
  };

/**********************************************************/
/* EPHEMERON STRUCTURE: Data structure used to keep track */
/*   of ephemeral symbols, floats, and integers.          */
/*                                                        */
/*   associatedValue: Contains a pointer to the storage   */
/*   structure for the symbol, float, or integer which is */
/*   ephemeral.                                           */
/*                                                        */
/*   next: Contains a pointer to the next ephemeral item  */
/*   in a list of ephemeral items.                        */
/**********************************************************/
struct ephemeron
  {
   GENERIC_HN *associatedValue;
   struct ephemeron *next;
  };

/***************/
/* symbolMatch */
/***************/
struct symbolMatch
  {
   CLIPSLexeme *match;
   struct symbolMatch *next;
  };

#define IncrementLexemeCount(theValue) (((CLIPSLexeme *) theValue)->count++)
#define IncrementFloatCount(theValue) (((CLIPSFloat *) theValue)->count++)
#define IncrementIntegerCount(theValue) (((CLIPSInteger *) theValue)->count++)
#define IncrementBitMapCount(theValue) (((CLIPSBitMap *) theValue)->count++)
#define IncrementExternalAddressCount(theValue) (((CLIPSExternalAddress *) theValue)->count++)

/*==================*/
/* ENVIRONMENT DATA */
/*==================*/

#define SYMBOL_DATA 49

struct symbolData
  {
   CLIPSLexeme *PositiveInfinity;
   CLIPSLexeme *NegativeInfinity;
   CLIPSInteger *Zero;
   CLIPSLexeme **SymbolTable;
   CLIPSFloat **FloatTable;
   CLIPSInteger **IntegerTable;
   CLIPSBitMap **BitMapTable;
   CLIPSExternalAddress **ExternalAddressTable;
#if BLOAD || BLOAD_ONLY || BLOAD_AND_BSAVE || BLOAD_INSTANCES || BSAVE_INSTANCES
   unsigned long NumberOfSymbols;
   unsigned long NumberOfFloats;
   unsigned long NumberOfIntegers;
   unsigned long NumberOfBitMaps;
   unsigned long NumberOfExternalAddresses;
   CLIPSLexeme **SymbolArray;
   CLIPSFloat **FloatArray;
   CLIPSInteger **IntegerArray;
   CLIPSBitMap **BitMapArray;
   CLIPSExternalAddress **ExternalAddressArray;
#endif
  };

#define SymbolData(theEnv) ((struct symbolData *) GetEnvironmentData(theEnv,SYMBOL_DATA))

   void                           InitializeAtomTables(Environment *,CLIPSLexeme **,CLIPSFloat **,
                                                              CLIPSInteger **,CLIPSBitMap **,
                                                              CLIPSExternalAddress **);
   CLIPSLexeme                   *AddSymbol(Environment *,const char *,unsigned short);
   CLIPSLexeme                   *FindSymbolHN(Environment *,const char *,unsigned short);
   CLIPSFloat                    *CreateFloat(Environment *,double);
   CLIPSInteger                  *CreateInteger(Environment *,long long);
   void                          *AddBitMap(Environment *,void *,unsigned short);
   CLIPSExternalAddress          *CreateExternalAddress(Environment *,void *,unsigned short);
   CLIPSExternalAddress          *CreateCExternalAddress(Environment *,void *);
   CLIPSInteger                  *FindLongHN(Environment *,long long);
   size_t                         HashSymbol(const char *,size_t);
   size_t                         HashFloat(double,size_t);
   size_t                         HashInteger(long long,size_t);
   size_t                         HashBitMap(const char *,size_t,unsigned);
   size_t                         HashExternalAddress(void *,size_t);
   void                           RetainLexeme(Environment *,CLIPSLexeme *);
   void                           RetainFloat(Environment *,CLIPSFloat *);
   void                           RetainInteger(Environment *,CLIPSInteger *);
   void                           IncrementBitMapReferenceCount(Environment *,CLIPSBitMap *);
   void                           RetainExternalAddress(Environment *,CLIPSExternalAddress *);
   void                           ReleaseLexeme(Environment *,CLIPSLexeme *);
   void                           ReleaseFloat(Environment *,CLIPSFloat *);
   void                           ReleaseInteger(Environment *,CLIPSInteger *);
   void                           DecrementBitMapReferenceCount(Environment *,CLIPSBitMap *);
   void                           ReleaseExternalAddress(Environment *,CLIPSExternalAddress *);
   void                           RemoveEphemeralAtoms(Environment *);
   CLIPSLexeme                  **GetSymbolTable(Environment *);
   void                           SetSymbolTable(Environment *,CLIPSLexeme **);
   CLIPSFloat                   **GetFloatTable(Environment *);
   void                           SetFloatTable(Environment *,CLIPSFloat **);
   CLIPSInteger                 **GetIntegerTable(Environment *);
   void                           SetIntegerTable(Environment *,CLIPSInteger **);
   CLIPSBitMap                  **GetBitMapTable(Environment *);
   void                           SetBitMapTable(Environment *,CLIPSBitMap **);
   CLIPSExternalAddress         **GetExternalAddressTable(Environment *);
   void                           SetExternalAddressTable(Environment *,CLIPSExternalAddress **);
   void                           RefreshSpecialSymbols(Environment *);
   struct symbolMatch            *FindSymbolMatches(Environment *,const char *,unsigned *,size_t *);
   void                           ReturnSymbolMatches(Environment *,struct symbolMatch *);
   CLIPSLexeme                   *GetNextSymbolMatch(Environment *,const char *,size_t,CLIPSLexeme *,bool,size_t *);
   void                           ClearBitString(void *,size_t);
   void                           SetAtomicValueIndices(Environment *,bool);
   void                           RestoreAtomicValueBuckets(Environment *);
   void                           EphemerateValue(Environment *,void *);
   CLIPSLexeme                   *CreateSymbol(Environment *,const char *);
   CLIPSLexeme                   *CreateString(Environment *,const char *);
   CLIPSLexeme                   *CreateInstanceName(Environment *,const char *);
   CLIPSLexeme                   *CreateBoolean(Environment *,bool);
   bool                           BitStringHasBitsSet(void *,unsigned);

#endif /* _H_symbol */



