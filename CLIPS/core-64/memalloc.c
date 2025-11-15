   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.43  11/03/25             */
   /*                                                     */
   /*                    MEMORY MODULE                    */
   /*******************************************************/

/*************************************************************/
/* Purpose: Memory allocation routines.                      */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*      Brian L. Dantes                                      */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.24: Removed HaltExecution check from the           */
/*            EnvReleaseMem function. DR0863                 */
/*                                                           */
/*            Renamed BOOLEAN macro type to intBool.         */
/*                                                           */
/*            Corrected code to remove compiler warnings.    */
/*                                                           */
/*      6.30: Removed conditional code for unsupported       */
/*            compilers/operating systems.                   */
/*                                                           */
/*            Changed integer type/precision.                */
/*                                                           */
/*            Removed genlongalloc/genlongfree functions.    */
/*                                                           */
/*            Added get_mem and rtn_mem macros.              */
/*                                                           */
/*            Converted API macros to function calls.        */
/*                                                           */
/*            Removed deallocating message parameter from    */
/*            EnvReleaseMem.                                 */
/*                                                           */
/*            Removed support for BLOCK_MEMORY.              */
/*                                                           */
/*      6.32: Restored support for BLOCK_MEMORY.             */
/*                                                           */
/*      6.40: Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            ALLOW_ENVIRONMENT_GLOBALS no longer supported. */
/*                                                           */
/*      6.41: Fixed MEM_TABLE_SIZE=0 release-mem crash.      */
/*                                                           */
/*************************************************************/

#include <stdio.h>

#include "setup.h"

#include "constant.h"
#include "envrnmnt.h"
#include "memalloc.h"
#include "prntutil.h"
#include "router.h"
#include "utility.h"

#include <stdlib.h>

#if WIN_MVC
#include <malloc.h>
#endif

#define STRICT_ALIGN_SIZE sizeof(double)

#define SpecialMalloc(sz) malloc((STD_SIZE) sz)
#define SpecialFree(ptr) free(ptr)

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

#if BLOCK_MEMORY
   static bool                    InitializeBlockMemory(Environment *,size_t);
   static bool                    AllocateBlock(Environment *,struct blockInfo *,size_t);
   static void                    AllocateChunk(Environment *,struct blockInfo *,struct chunkInfo *,size_t);
   static void                   *RequestChunk(Environment *,size_t);
   static bool                    ReturnChunk(Environment *,void *,size_t);
#endif

/********************************************/
/* InitializeMemory: Sets up memory tables. */
/********************************************/
void InitializeMemory(
  Environment *theEnv)
  {
   AllocateEnvironmentData(theEnv,MEMORY_DATA,sizeof(struct memoryData),NULL);

   MemoryData(theEnv)->OutOfMemoryCallback = DefaultOutOfMemoryFunction;

#if (MEM_TABLE_SIZE > 0)
   MemoryData(theEnv)->MemoryTable = (struct memoryPtr **)
                 malloc((STD_SIZE) (sizeof(struct memoryPtr *) * MEM_TABLE_SIZE));

   if (MemoryData(theEnv)->MemoryTable == NULL)
     {
      PrintErrorID(theEnv,"MEMORY",1,true);
      WriteString(theEnv,STDERR,"Out of memory.\n");
      ExitRouter(theEnv,EXIT_FAILURE);
     }
   else
     {
      int i;

      for (i = 0; i < MEM_TABLE_SIZE; i++) MemoryData(theEnv)->MemoryTable[i] = NULL;
     }
#else // MEM_TABLE_SIZE == 0
      MemoryData(theEnv)->MemoryTable = NULL;
#endif
  }

/***************************************************/
/* genalloc: A generic memory allocation function. */
/***************************************************/
void *genalloc(
  Environment *theEnv,
  size_t size)
  {
   void *memPtr;

#if BLOCK_MEMORY
   memPtr = RequestChunk(theEnv,size);

   if (memPtr == NULL)
     {
      ReleaseMem(theEnv,(long long) ((size * 5 > 4096) ? size * 5 : 4096));
      memPtr = RequestChunk(theEnv,size);
      if (memPtr == NULL)
        {
         ReleaseMem(theEnv,-1);
         memPtr = RequestChunk(theEnv,size);
         while (memPtr == NULL)
           {
            if ((*MemoryData(theEnv)->OutOfMemoryCallback)(theEnv,size))
              return NULL;
            memPtr = RequestChunk(theEnv,size);
           }
        }
     }
#else
   memPtr = malloc(size);

   if (memPtr == NULL)
     {
      ReleaseMem(theEnv,(long long) ((size * 5 > 4096) ? size * 5 : 4096));
      memPtr = malloc(size);
      if (memPtr == NULL)
        {
         ReleaseMem(theEnv,-1);
         memPtr = malloc(size);
         while (memPtr == NULL)
           {
            if ((*MemoryData(theEnv)->OutOfMemoryCallback)(theEnv,size))
              return NULL;
            memPtr = malloc(size);
           }
        }
     }
#endif

   MemoryData(theEnv)->MemoryAmount += size;
   MemoryData(theEnv)->MemoryCalls++;

   return memPtr;
  }

/***********************************************/
/* DefaultOutOfMemoryFunction: Function called */
/*   when the KB runs out of memory.           */
/***********************************************/
bool DefaultOutOfMemoryFunction(
  Environment *theEnv,
  size_t size)
  {
#if MAC_XCD
#pragma unused(size)
#endif

   PrintErrorID(theEnv,"MEMORY",1,true);
   WriteString(theEnv,STDERR,"Out of memory.\n");
   ExitRouter(theEnv,EXIT_FAILURE);
   return true;
  }

/**********************************************************/
/* SetOutOfMemoryFunction: Allows the function which is   */
/*   called when the KB runs out of memory to be changed. */
/**********************************************************/
OutOfMemoryFunction *SetOutOfMemoryFunction(
  Environment *theEnv,
  OutOfMemoryFunction *functionPtr)
  {
   OutOfMemoryFunction *tmpPtr;

   tmpPtr = MemoryData(theEnv)->OutOfMemoryCallback;
   MemoryData(theEnv)->OutOfMemoryCallback = functionPtr;
   return tmpPtr;
  }

/****************************************************/
/* genfree: A generic memory deallocation function. */
/****************************************************/
void genfree(
  Environment *theEnv,
  void *waste,
  size_t size)
  {
#if BLOCK_MEMORY
   if (ReturnChunk(theEnv,waste,size) == false)
     {
      PrintErrorID(theEnv,"MEMORY",2,true);
      WriteString(theEnv,STDERR,"Release error in genfree.\n");
      return;
     }
#else
   free(waste);
#endif

   MemoryData(theEnv)->MemoryAmount -= size;
   MemoryData(theEnv)->MemoryCalls--;
  }

/******************************************************/
/* genrealloc: Simple (i.e. dumb) version of realloc. */
/******************************************************/
void *genrealloc(
  Environment *theEnv,
  void *oldaddr,
  size_t oldsz,
  size_t newsz)
  {
   char *newaddr;
   unsigned i;
   size_t limit;

   newaddr = ((newsz != 0) ? (char *) gm2(theEnv,newsz) : NULL);

   if (oldaddr != NULL)
     {
      limit = (oldsz < newsz) ? oldsz : newsz;
      for (i = 0 ; i < limit ; i++)
        { newaddr[i] = ((char *) oldaddr)[i]; }
      for ( ; i < newsz; i++)
        { newaddr[i] = '\0'; }
      rm(theEnv,oldaddr,oldsz);
     }

   return((void *) newaddr);
  }

/********************************/
/* MemUsed: C access routine */
/*   for the mem-used command.  */
/********************************/
long long MemUsed(
  Environment *theEnv)
  {
   return MemoryData(theEnv)->MemoryAmount;
  }

/***********************************/
/* MemRequests: C access routine   */
/*   for the mem-requests command. */
/***********************************/
long long MemRequests(
  Environment *theEnv)
  {
   return MemoryData(theEnv)->MemoryCalls;
  }

/***************************************/
/* UpdateMemoryUsed: Allows the amount */
/*   of memory used to be updated.     */
/***************************************/
long long UpdateMemoryUsed(
  Environment *theEnv,
  long long value)
  {
   MemoryData(theEnv)->MemoryAmount += value;
   return MemoryData(theEnv)->MemoryAmount;
  }

/*******************************************/
/* UpdateMemoryRequests: Allows the number */
/*   of memory requests to be updated.     */
/*******************************************/
long long UpdateMemoryRequests(
  Environment *theEnv,
  long long value)
  {
   MemoryData(theEnv)->MemoryCalls += value;
   return MemoryData(theEnv)->MemoryCalls;
  }

/**********************************/
/* ReleaseMem: C access routine   */
/*   for the release-mem command. */
/**********************************/
long long ReleaseMem(
  Environment *theEnv,
  long long maximum)
  {
   long long amount = 0;
#if (MEM_TABLE_SIZE > 0)
   struct memoryPtr *tmpPtr, *memPtr;
   unsigned int i;
   long long returns = 0;
   
   for (i = (MEM_TABLE_SIZE - 1) ; i >= sizeof(char *) ; i--)
     {
      YieldTime(theEnv);
      memPtr = MemoryData(theEnv)->MemoryTable[i];
      while (memPtr != NULL)
        {
         tmpPtr = memPtr->next;
         genfree(theEnv,memPtr,i);
         memPtr = tmpPtr;
         amount += i;
         returns++;
         if ((returns % 100) == 0)
           { YieldTime(theEnv); }
        }
      MemoryData(theEnv)->MemoryTable[i] = NULL;
      if ((amount > maximum) && (maximum > 0))
        { return amount; }
     }
#endif

   return amount;
  }

/*****************************************************/
/* gm1: Allocates memory and sets all bytes to zero. */
/*****************************************************/
void *gm1(
  Environment *theEnv,
  size_t size)
  {
   struct memoryPtr *memPtr;
   char *tmpPtr;
   size_t i;

   if ((size < sizeof(char *)) ||
       (size >= MEM_TABLE_SIZE))
     {
      tmpPtr = (char *) genalloc(theEnv,size);
      for (i = 0 ; i < size ; i++)
        { tmpPtr[i] = '\0'; }
      return((void *) tmpPtr);
     }

   memPtr = (struct memoryPtr *) MemoryData(theEnv)->MemoryTable[size];
   if (memPtr == NULL)
     {
      tmpPtr = (char *) genalloc(theEnv,size);
      for (i = 0 ; i < size ; i++)
        { tmpPtr[i] = '\0'; }
      return((void *) tmpPtr);
     }

   MemoryData(theEnv)->MemoryTable[size] = memPtr->next;

   tmpPtr = (char *) memPtr;
   for (i = 0 ; i < size ; i++)
     { tmpPtr[i] = '\0'; }

   return ((void *) tmpPtr);
  }

/*****************************************************/
/* gm2: Allocates memory and does not initialize it. */
/*****************************************************/
void *gm2(
  Environment *theEnv,
  size_t size)
  {
#if (MEM_TABLE_SIZE > 0)
   struct memoryPtr *memPtr;
#endif

   if (size < sizeof(char *))
     { return genalloc(theEnv,size); }

#if (MEM_TABLE_SIZE > 0)
   if (size >= MEM_TABLE_SIZE) return genalloc(theEnv,size);

   memPtr = (struct memoryPtr *) MemoryData(theEnv)->MemoryTable[size];
   if (memPtr == NULL)
     { return genalloc(theEnv,size); }

   MemoryData(theEnv)->MemoryTable[size] = memPtr->next;

   return ((void *) memPtr);
#else
   return genalloc(theEnv,size);
#endif
  }

/****************************************/
/* rm: Returns a block of memory to the */
/*   maintained pool of free memory.    */
/****************************************/
void rm(
  Environment *theEnv,
  void *str,
  size_t size)
  {
#if (MEM_TABLE_SIZE > 0)
   struct memoryPtr *memPtr;
#endif

   if (size == 0)
     {
      SystemError(theEnv,"MEMORY",1);
      ExitRouter(theEnv,EXIT_FAILURE);
      return;
     }

   if (size < sizeof(char *)) 
     {
      genfree(theEnv,str,size);
      return;
     }

#if (MEM_TABLE_SIZE > 0)
   if (size >= MEM_TABLE_SIZE)
     {
      genfree(theEnv,str,size);
      return;
     }

   memPtr = (struct memoryPtr *) str;
   memPtr->next = MemoryData(theEnv)->MemoryTable[size];
   MemoryData(theEnv)->MemoryTable[size] = memPtr;
#else
   genfree(theEnv,str,size);
#endif
  }

/***************************************************/
/* PoolSize: Returns number of bytes in free pool. */
/***************************************************/
unsigned long PoolSize(
  Environment *theEnv)
  {
   unsigned long cnt = 0;

#if (MEM_TABLE_SIZE > 0)
   int i;
   struct memoryPtr *memPtr;

   for (i = sizeof(char *) ; i < MEM_TABLE_SIZE ; i++)
     {
      memPtr = MemoryData(theEnv)->MemoryTable[i];
      while (memPtr != NULL)
        {
         cnt += (unsigned long) i;
         memPtr = memPtr->next;
        }
     }
#endif

   return(cnt);
  }

/***************************************************************/
/* ActualPoolSize : Returns number of bytes DOS requires to    */
/*   store the free pool.  This routine is functionally        */
/*   equivalent to pool_size on anything other than the IBM-PC */
/***************************************************************/
unsigned long ActualPoolSize(
  Environment *theEnv)
  {
   return(PoolSize(theEnv));
  }

/*****************************************/
/* SetConserveMemory: Allows the setting */
/*    of the memory conservation flag.   */
/*****************************************/
bool SetConserveMemory(
  Environment *theEnv,
  bool value)
  {
   bool ov;

   ov = MemoryData(theEnv)->ConserveMemory;
   MemoryData(theEnv)->ConserveMemory = value;
   return ov;
  }

/****************************************/
/* GetConserveMemory: Returns the value */
/*    of the memory conservation flag.  */
/****************************************/
bool GetConserveMemory(
  Environment *theEnv)
  {
   return MemoryData(theEnv)->ConserveMemory;
  }

/**************************/
/* genmemcpy:             */
/**************************/
void genmemcpy(
  char *dst,
  char *src,
  unsigned long size)
  {
   unsigned long i;

   for (i = 0L ; i < size ; i++)
     dst[i] = src[i];
  }

/**************************/
/* BLOCK MEMORY FUNCTIONS */
/**************************/

#if BLOCK_MEMORY

/***************************************************/
/* InitializeBlockMemory: Initializes block memory */
/*   management and allocates the first block.     */
/***************************************************/
static bool InitializeBlockMemory(
  Environment *theEnv,
  size_t requestSize)
  {
   struct chunkInfo *chunkPtr;
   size_t initialBlockSize, usableBlockSize;

   /*===========================================*/
   /* The block memory routines depend upon the */
   /* size of a character being 1 byte.         */
   /*===========================================*/

   if (sizeof(char) != 1)
     {
      fprintf(stdout, "Size of character data is not 1\n");
      fprintf(stdout, "Memory allocation functions may not work\n");
      return(0);
     }

   MemoryData(theEnv)->ChunkInfoSize = sizeof(struct chunkInfo);
   MemoryData(theEnv)->ChunkInfoSize = ((((MemoryData(theEnv)->ChunkInfoSize - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE);

   MemoryData(theEnv)->BlockInfoSize = sizeof(struct blockInfo);
   MemoryData(theEnv)->BlockInfoSize = ((((MemoryData(theEnv)->BlockInfoSize - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE);

   initialBlockSize = (INITBLOCKSIZE > requestSize ? INITBLOCKSIZE : requestSize);
   initialBlockSize += MemoryData(theEnv)->ChunkInfoSize * 2 + MemoryData(theEnv)->BlockInfoSize;
   initialBlockSize = (((initialBlockSize - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE;

   usableBlockSize = initialBlockSize - (2 * MemoryData(theEnv)->ChunkInfoSize) - MemoryData(theEnv)->BlockInfoSize;

   /* make sure we get a buffer big enough to be usable */
   if ((requestSize < INITBLOCKSIZE) &&
       (usableBlockSize <= requestSize + MemoryData(theEnv)->ChunkInfoSize))
     {
      initialBlockSize = requestSize + MemoryData(theEnv)->ChunkInfoSize * 2 + MemoryData(theEnv)->BlockInfoSize;
      initialBlockSize = (((initialBlockSize - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE;
      usableBlockSize = initialBlockSize - (2 * MemoryData(theEnv)->ChunkInfoSize) - MemoryData(theEnv)->BlockInfoSize;
     }

   MemoryData(theEnv)->TopMemoryBlock = (struct blockInfo *) malloc((STD_SIZE) initialBlockSize);

   if (MemoryData(theEnv)->TopMemoryBlock == NULL)
     {
      fprintf(stdout, "Unable to allocate initial memory pool\n");
      return false;
     }

   MemoryData(theEnv)->TopMemoryBlock->nextBlock = NULL;
   MemoryData(theEnv)->TopMemoryBlock->prevBlock = NULL;
   MemoryData(theEnv)->TopMemoryBlock->nextFree = (struct chunkInfo *) (((char *) MemoryData(theEnv)->TopMemoryBlock) + MemoryData(theEnv)->BlockInfoSize);
   MemoryData(theEnv)->TopMemoryBlock->size = (long) usableBlockSize;

   chunkPtr = (struct chunkInfo *) (((char *) MemoryData(theEnv)->TopMemoryBlock) + MemoryData(theEnv)->BlockInfoSize + MemoryData(theEnv)->ChunkInfoSize + usableBlockSize);
   chunkPtr->nextFree = NULL;
   chunkPtr->lastFree = NULL;
   chunkPtr->prevChunk = MemoryData(theEnv)->TopMemoryBlock->nextFree;
   chunkPtr->size = 0;

   MemoryData(theEnv)->TopMemoryBlock->nextFree->nextFree = NULL;
   MemoryData(theEnv)->TopMemoryBlock->nextFree->lastFree = NULL;
   MemoryData(theEnv)->TopMemoryBlock->nextFree->prevChunk = NULL;
   MemoryData(theEnv)->TopMemoryBlock->nextFree->size = (long) usableBlockSize;

   MemoryData(theEnv)->BlockMemoryInitialized = true;
   return true;
  }

/***************************************************************************/
/* AllocateBlock: Adds a new block of memory to the list of memory blocks. */
/***************************************************************************/
static bool AllocateBlock(
  Environment *theEnv,
  struct blockInfo *blockPtr,
  size_t requestSize)
  {
   size_t blockSize, usableBlockSize;
   struct blockInfo *newBlock;
   struct chunkInfo *newTopChunk;

   /*============================================================*/
   /* Determine the size of the block that needs to be allocated */
   /* to satisfy the request. Normally, a default block size is  */
   /* used, but if the requested size is larger than the default */
   /* size, then the requested size is used for the block size.  */
   /*============================================================*/

   blockSize = (BLOCKSIZE > requestSize ? BLOCKSIZE : requestSize);
   blockSize += MemoryData(theEnv)->BlockInfoSize;
   blockSize += MemoryData(theEnv)->ChunkInfoSize * 3;
   blockSize = (((blockSize - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE;

   usableBlockSize = blockSize - MemoryData(theEnv)->BlockInfoSize - (2 * MemoryData(theEnv)->ChunkInfoSize);

   /*=========================*/
   /* Allocate the new block. */
   /*=========================*/

   newBlock = (struct blockInfo *) malloc((STD_SIZE) blockSize);
   if (newBlock == NULL) return false;

   /*======================================*/
   /* Initialize the block data structure. */
   /*======================================*/

   newBlock->nextBlock = NULL;
   newBlock->prevBlock = blockPtr;
   newBlock->nextFree = (struct chunkInfo *) (((char *) newBlock) + MemoryData(theEnv)->BlockInfoSize);
   newBlock->size = (long) usableBlockSize;
   blockPtr->nextBlock = newBlock;

   newTopChunk = (struct chunkInfo *) (((char *) newBlock) + MemoryData(theEnv)->BlockInfoSize + MemoryData(theEnv)->ChunkInfoSize + usableBlockSize);
   newTopChunk->nextFree = NULL;
   newTopChunk->lastFree = NULL;
   newTopChunk->size = 0;
   newTopChunk->prevChunk = newBlock->nextFree;

   newBlock->nextFree->nextFree = NULL;
   newBlock->nextFree->lastFree = NULL;
   newBlock->nextFree->prevChunk = NULL;
   newBlock->nextFree->size = (long) usableBlockSize;

   return true;
  }

/*******************************************************/
/* RequestChunk: Allocates memory by returning a chunk */
/*   of memory from a larger block of memory.          */
/*******************************************************/
static void *RequestChunk(
  Environment *theEnv,
  size_t requestSize)
  {
   struct chunkInfo *chunkPtr;
   struct blockInfo *blockPtr;

   /*==================================================*/
   /* Allocate initial memory pool block if it has not */
   /* already been allocated.                          */
   /*==================================================*/

   if (MemoryData(theEnv)->BlockMemoryInitialized == false)
      {
       if (InitializeBlockMemory(theEnv,requestSize) == 0) return(NULL);
      }

   /*====================================================*/
   /* Make sure that the amount of memory requested will */
   /* fall on a boundary of strictest alignment          */
   /*====================================================*/

   requestSize = (((requestSize - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE;

   /*=====================================================*/
   /* Search through the list of free memory for a block  */
   /* of the appropriate size.  If a block is found, then */
   /* allocate and return a pointer to it.                */
   /*=====================================================*/

   blockPtr = MemoryData(theEnv)->TopMemoryBlock;

   while (blockPtr != NULL)
     {
      chunkPtr = blockPtr->nextFree;

      while (chunkPtr != NULL)
        {
         if ((chunkPtr->size == (long) requestSize) ||
             (chunkPtr->size >= (long) (requestSize + MemoryData(theEnv)->ChunkInfoSize)))
           {
            AllocateChunk(theEnv,blockPtr,chunkPtr,requestSize);

            return((void *) (((char *) chunkPtr) + MemoryData(theEnv)->ChunkInfoSize));
           }
         chunkPtr = chunkPtr->nextFree;
        }

      if (blockPtr->nextBlock == NULL)
        {
         if (AllocateBlock(theEnv,blockPtr,requestSize) == 0)  /* get another block */
           { return(NULL); }
        }
      blockPtr = blockPtr->nextBlock;
     }

   SystemError(theEnv,"MEMORY",2);
   ExitRouter(theEnv,EXIT_FAILURE);
   return NULL; /* Unreachable, but prevents warning. */
  }

/********************************************/
/* AllocateChunk: Allocates a chunk from an */
/*   existing chunk in a block of memory.   */
/********************************************/
static void AllocateChunk(
  Environment *theEnv,
  struct blockInfo *parentBlock,
  struct chunkInfo *chunkPtr,
  size_t requestSize)
  {
   struct chunkInfo *splitChunk, *nextChunk;

   /*=============================================================*/
   /* If the size of the memory chunk is an exact match for the   */
   /* requested amount of memory, then the chunk can be allocated */
   /* without splitting it.                                       */
   /*=============================================================*/

   if ((long) requestSize == chunkPtr->size)
     {
      chunkPtr->size = - (long int) requestSize;
      if (chunkPtr->lastFree == NULL)
        {
         if (chunkPtr->nextFree != NULL)
           { parentBlock->nextFree = chunkPtr->nextFree; }
         else
           { parentBlock->nextFree = NULL; }
        }
      else
        { chunkPtr->lastFree->nextFree = chunkPtr->nextFree; }

      if (chunkPtr->nextFree != NULL)
        { chunkPtr->nextFree->lastFree = chunkPtr->lastFree; }

      chunkPtr->lastFree = NULL;
      chunkPtr->nextFree = NULL;
      return;
     }

   /*===========================================================*/
   /* If the size of the memory chunk is larger than the memory */
   /* request, then split the chunk into two pieces.            */
   /*===========================================================*/

   nextChunk = (struct chunkInfo *)
              (((char *) chunkPtr) + MemoryData(theEnv)->ChunkInfoSize + chunkPtr->size);

   splitChunk = (struct chunkInfo *)
                  (((char *) chunkPtr) + (MemoryData(theEnv)->ChunkInfoSize + requestSize));

   splitChunk->size = chunkPtr->size - (long) (requestSize + MemoryData(theEnv)->ChunkInfoSize);
   splitChunk->prevChunk = chunkPtr;

   splitChunk->nextFree = chunkPtr->nextFree;
   splitChunk->lastFree = chunkPtr->lastFree;

   nextChunk->prevChunk = splitChunk;

   if (splitChunk->lastFree == NULL)
     { parentBlock->nextFree = splitChunk; }
   else
     { splitChunk->lastFree->nextFree = splitChunk; }

   if (splitChunk->nextFree != NULL)
     { splitChunk->nextFree->lastFree = splitChunk; }

   chunkPtr->size = - (long int) requestSize;
   chunkPtr->lastFree = NULL;
   chunkPtr->nextFree = NULL;

   return;
  }

/***********************************************************/
/* ReturnChunk: Frees memory allocated using RequestChunk. */
/***********************************************************/
static bool ReturnChunk(
  Environment *theEnv,
  void *memPtr,
  size_t size)
  {
   struct chunkInfo *chunkPtr, *lastChunk, *nextChunk, *topChunk;
   struct blockInfo *blockPtr;

   /*=====================================================*/
   /* Determine if the expected size of the chunk matches */
   /* the size stored in the chunk's information record.  */
   /*=====================================================*/

   size = (((size - 1) / STRICT_ALIGN_SIZE) + 1) * STRICT_ALIGN_SIZE;

   chunkPtr = (struct chunkInfo *) (((char *) memPtr) - MemoryData(theEnv)->ChunkInfoSize);

   if (chunkPtr == NULL)
     { return false; }

   if (chunkPtr->size >= 0)
     { return false; }

   if (chunkPtr->size != - (long int) size)
     { return false; }

   chunkPtr->size = - chunkPtr->size;

   /*=============================================*/
   /* Determine in which block the chunk resides. */
   /*=============================================*/

   topChunk = chunkPtr;
   while (topChunk->prevChunk != NULL)
     { topChunk = topChunk->prevChunk; }
   blockPtr = (struct blockInfo *) (((char *) topChunk) - MemoryData(theEnv)->BlockInfoSize);

   /*===========================================*/
   /* Determine the chunks physically preceding */
   /* and following the returned chunk.         */
   /*===========================================*/

   lastChunk = chunkPtr->prevChunk;
   nextChunk = (struct chunkInfo *) (((char *) memPtr) + size);

   /*=========================================================*/
   /* Add the chunk to the list of free chunks for the block. */
   /*=========================================================*/

   if (blockPtr->nextFree != NULL)
     { blockPtr->nextFree->lastFree = chunkPtr; }

   chunkPtr->nextFree = blockPtr->nextFree;
   chunkPtr->lastFree = NULL;

   blockPtr->nextFree = chunkPtr;

   /*=====================================================*/
   /* Combine this chunk with previous chunk if possible. */
   /*=====================================================*/

   if (lastChunk != NULL)
     {
      if (lastChunk->size > 0)
        {
         lastChunk->size += (MemoryData(theEnv)->ChunkInfoSize + (size_t) chunkPtr->size);

         if (nextChunk != NULL)
           { nextChunk->prevChunk = lastChunk; }
         else
           { return false; }

         if (lastChunk->lastFree != NULL)
           { lastChunk->lastFree->nextFree = lastChunk->nextFree; }

         if (lastChunk->nextFree != NULL)
           { lastChunk->nextFree->lastFree = lastChunk->lastFree; }

         lastChunk->nextFree = chunkPtr->nextFree;
         if (chunkPtr->nextFree != NULL)
           { chunkPtr->nextFree->lastFree = lastChunk; }
         lastChunk->lastFree = NULL;

         blockPtr->nextFree = lastChunk;
         chunkPtr->lastFree = NULL;
         chunkPtr->nextFree = NULL;
         chunkPtr = lastChunk;
        }
     }

   /*=====================================================*/
   /* Combine this chunk with the next chunk if possible. */
   /*=====================================================*/

   if (nextChunk == NULL) return false;
   if (chunkPtr == NULL) return false;

   if (nextChunk->size > 0)
     {
      chunkPtr->size += (MemoryData(theEnv)->ChunkInfoSize + (size_t) nextChunk->size);

      topChunk = (struct chunkInfo *) (((char *) nextChunk) + nextChunk->size + MemoryData(theEnv)->ChunkInfoSize);
      if (topChunk != NULL)
        { topChunk->prevChunk = chunkPtr; }
      else
        { return false; }

      if (nextChunk->lastFree != NULL)
        { nextChunk->lastFree->nextFree = nextChunk->nextFree; }

      if (nextChunk->nextFree != NULL)
        { nextChunk->nextFree->lastFree = nextChunk->lastFree; }

     }

   /*===========================================*/
   /* Free the buffer if we can, but don't free */
   /* the first buffer if it's the only one.    */
   /*===========================================*/

   if ((chunkPtr->prevChunk == NULL) &&
       (chunkPtr->size == blockPtr->size))
     {
      if (blockPtr->prevBlock != NULL)
        {
         blockPtr->prevBlock->nextBlock = blockPtr->nextBlock;
         if (blockPtr->nextBlock != NULL)
           { blockPtr->nextBlock->prevBlock = blockPtr->prevBlock; }
         free((char *) blockPtr);
        }
      else
        {
         if (blockPtr->nextBlock != NULL)
           {
            blockPtr->nextBlock->prevBlock = NULL;
            MemoryData(theEnv)->TopMemoryBlock = blockPtr->nextBlock;
            free((char *) blockPtr);
           }
        }
     }

   return true;
  }

/***********************************************/
/* ReturnAllBlocks: Frees all allocated blocks */
/*   back to the operating system.             */
/***********************************************/
void ReturnAllBlocks(
  Environment *theEnv)
  {
   struct blockInfo *theBlock, *nextBlock;

   /*======================================*/
   /* Free up int based memory allocation. */
   /*======================================*/

   theBlock = MemoryData(theEnv)->TopMemoryBlock;
   while (theBlock != NULL)
     {
      nextBlock = theBlock->nextBlock;
      free((char *) theBlock);
      theBlock = nextBlock;
     }

   MemoryData(theEnv)->TopMemoryBlock = NULL;
  }
  
#endif

