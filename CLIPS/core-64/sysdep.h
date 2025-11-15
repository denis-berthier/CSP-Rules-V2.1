   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.43  11/11/25             */
   /*                                                     */
   /*            SYSTEM DEPENDENT HEADER FILE             */
   /*******************************************************/

/*************************************************************/
/* Purpose: Isolation of system dependent routines.          */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.23: Modified GenOpen to check the file length      */
/*            against the system constant FILENAME_MAX.      */
/*                                                           */
/*      6.24: Support for run-time programs directly passing */
/*            the hash tables for initialization.            */
/*                                                           */
/*            Made gensystem functional for Xcode.           */
/*                                                           */
/*            Added BeforeOpenFunction and AfterOpenFunction */
/*            hooks.                                         */
/*                                                           */
/*            Added environment parameter to GenClose.       */
/*            Added environment parameter to GenOpen.        */
/*                                                           */
/*            Updated UNIX_V gentime functionality.          */
/*                                                           */
/*            Removed GenOpen check against FILENAME_MAX.    */
/*                                                           */
/*      6.30: Changed integer type/precision.                */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_MCW,          */
/*            MAC_MCW, IBM_ICB, IBM_TBC, IBM_ZTC, and        */
/*            IBM_SC).                                       */
/*                                                           */
/*            Renamed IBM_MSC and WIN_MVC compiler flags     */
/*            and IBM_GCC to WIN_GCC.                        */
/*                                                           */
/*            Added LINUX and DARWIN compiler flags.         */
/*                                                           */
/*            Removed HELP_FUNCTIONS compilation flag and    */
/*            associated functionality.                      */
/*                                                           */
/*            Removed EMACS_EDITOR compilation flag and      */
/*            associated functionality.                      */
/*                                                           */
/*            Combined BASIC_IO and EXT_IO compilation       */
/*            flags into the single IO_FUNCTIONS flag.       */
/*                                                           */
/*            Changed the EX_MATH compilation flag to        */
/*            EXTENDED_MATH_FUNCTIONS.                       */
/*                                                           */
/*            Support for typed EXTERNAL_ADDRESS_TYPE.       */
/*                                                           */
/*            GenOpen function checks for UTF-8 Byte Order   */
/*            Marker.                                        */
/*                                                           */
/*            Added gengetchar, genungetchar, genprintfile,  */
/*            genstrcpy, genstrncpy, genstrcat, genstrncat,  */
/*            and gensprintf functions.                      */
/*                                                           */
/*            Added SetJmpBuffer function.                   */
/*                                                           */
/*            Added environment argument to genexit.         */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*      6.32: GenWrite returns number of bytes written.      */
/*                                                           */
/*      6.40: Added genchdir function for changing the       */
/*            current directory.                             */
/*                                                           */
/*            Refactored code to reduce header dependencies  */
/*            in sysdep.c.                                   */
/*                                                           */
/*            Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            Removed ContinueEnvFunction, PauseEnvFunction, */
/*            and RedrawScreenFunction callbacks.            */
/*                                                           */
/*            Completion code now returned by gensystem.     */
/*                                                           */
/*            Added flush, rewind, tell, and seek functions. */
/*                                                           */
/*      6.41: Added SYSTEM_FUNCTION compiler flag.           */
/*                                                           */
/*            Function GenReadBinary returns the number of   */
/*            bytes read.                                    */
/*                                                           */
/*            Added gensnprint function.                     */
/*                                                           */
/*            Changed gengetcwd buffer length parameter from */
/*            int to size_t.                                 */
/*                                                           */
/*      6.43: Functions random and seed modified to support  */
/*            splitmix64 random number generation.           */
/*                                                           */
/*************************************************************/

#ifndef _H_sysdep

#pragma once

#define _H_sysdep

#include <stdio.h>
#include <setjmp.h>
#include <stdint.h>

   double                      gentime(void);
#if SYSTEM_FUNCTION
   int                         gensystem(Environment *,const char *);
#endif
   bool                        GenOpenReadBinary(Environment *,const char *,const char *);
   void                        GetSeekCurBinary(Environment *,long);
   void                        GetSeekSetBinary(Environment *,long);
   void                        GenTellBinary(Environment *,long *);
   void                        GenCloseBinary(Environment *);
   size_t                      GenReadBinary(Environment *,void *,size_t);
   FILE                       *GenOpen(Environment *,const char *,const char *);
   int                         GenClose(Environment *,FILE *);
   int                         GenFlush(Environment *,FILE *);
   void                        GenRewind(Environment *,FILE *);
   long long                   GenTell(Environment *,FILE *);
   int                         GenSeek(Environment *,FILE *,long,int);
   void                        genexit(Environment *,int);
   uint32_t                    genrand(Environment *);
   void                        genseed(Environment *,uint64_t);
   bool                        genremove(Environment *,const char *);
   bool                        genrename(Environment *,const char *,const char *);
   char                       *gengetcwd(char *,size_t);
   size_t                      GenWrite(void *,size_t,FILE *);
   int                       (*SetBeforeOpenFunction(Environment *,int (*)(Environment *)))(Environment *);
   int                       (*SetAfterOpenFunction(Environment *,int (*)(Environment *)))(Environment *);
   int                         gensprintf(char *,const char *,...);
   int                         gensnprintf(char *,size_t,const char *,...);
   char                       *genstrcpy(char *,const char *);
   char                       *genstrncpy(char *,const char *,size_t);
   char                       *genstrcat(char *,const char *);
   char                       *genstrncat(char *,const char *,size_t);
   int                         genchdir(Environment *,const char *);
   void                        SetJmpBuffer(Environment *,jmp_buf *);
   void                        genprintfile(Environment *,FILE *,const char *);
   int                         gengetchar(Environment *);
   int                         genungetchar(Environment *,int);
   void                        InitializeSystemDependentData(Environment *);
   void                        InitializeNonportableFeatures(Environment *);

#endif /* _H_sysdep */





