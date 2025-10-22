   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*            CLIPS Version 6.42  01/10/25             */
   /*                                                     */
   /*               TEXT PROCESSING MODULE                */
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
/*      6.23: Modified error messages so that they were      */
/*            directly printed rather than storing them in   */
/*            a string buffer which might not be large       */
/*            enough to contain the entire message. DR0855   */
/*            Correction for FalseSymbol/TrueSymbol. DR0859  */
/*                                                           */
/*      6.24: Added get-region function.                     */
/*                                                           */
/*            Added environment parameter to GenClose.       */
/*            Added environment parameter to GenOpen.        */
/*                                                           */
/*      6.30: Removed HELP_FUNCTIONS compilation flag and    */
/*            associated functionality.                      */
/*                                                           */
/*            Used genstrcpy and genstrncpy instead of       */
/*            strcpy and strncpy.                            */
/*                                                           */
/*            Support for long long integers.                */
/*                                                           */
/*            Changed integer type/precision.                */
/*                                                           */
/*            Removed conditional code for unsupported       */
/*            compilers/operating systems (IBM_TBC).         */
/*                                                           */
/*            Added const qualifiers to remove C++           */
/*            deprecation warnings.                          */
/*                                                           */
/*            Added STDOUT and STDIN logical name            */
/*            definitions.                                   */
/*                                                           */
/*      6.31: Fixed crash issue when using textpro functions */
/*            on Windows with files having unix eol.         */
/*                                                           */
/*      6.40: Pragma once and other inclusion changes.       */
/*                                                           */
/*            Added support for booleans with <stdbool.h>.   */
/*                                                           */
/*            Removed use of void pointers for specific      */
/*            data structures.                               */
/*                                                           */
/*            UDF redesign.                                  */
/*                                                           */
/*      6.42: Removed arbitrary limit on text processing     */
/*            file and entry name lengths.                   */
/*                                                           */
/*************************************************************/

/**************************************************************************/
/**************************************************************************/
/*                        LOOKUP TABLE FUNCTIONS                          */
/*                                                                        */
/* The functions contained in this file set up and access a hierarchical  */
/* lookup system for multiple files.                                      */
/*                                                                        */
/* For usage see external documentation.                                  */
/**************************************************************************/
/**************************************************************************/

#include "setup.h"

#include <stdio.h>
#include <ctype.h>
#include <string.h>

#include "argacces.h"
#include "commline.h"
#include "envrnmnt.h"
#include "extnfunc.h"
#include "memalloc.h"
#include "prntutil.h"
#include "router.h"
#include "sysdep.h"
#include "utility.h"

#include "textpro.h"

#if TEXTPRO_FUNCTIONS

#define NULLCHAR '\0'
#define BLANK (' ')
#define TAB ('\t')
#define LNFEED ('\n')

/*=========================================================*/
/*Status returns for the file loading and lookup functions */
/*=========================================================*/
#define NORMAL 0          /*Entry information found in file       */
#define NO_FILE -10       /*File not found for reference          */
#define NEW_FILE -15      /*File loaded onto internal lookup table*/
#define OLD_FILE -20      /*File was already on the lookup table  */

#define NO_TOPIC -25      /*No entry information was found in file*/
#define EXIT -30          /*Branch-up from root; exit lookup table*/
#define BRANCH_UP -35     /*Move up from subtopic entry to parent */
#define BRANCH_DOWN -40   /*Move down from main topic to subtopic */

/*=================*/
/*Entry data types */
/*=================*/
#define MENU -45    /*Entry has subtopics*/
#define INFO -50    /*Entry is a leaf; contains only information*/

/*==========================================*/
/*Entry node type for internal lookup table */
/*==========================================*/
struct entries
  {
   int level;              /*Level of entry node in the lookup tree  */
   int type;               /*Entry node data type : menu or info     */
   char *name;
   long offset;            /*Location of entry info in the file      */
   struct entries *child;  /*Address of list of subtopic entries     */
   struct entries *parent; /*Address of parent topic entry           */
   struct entries *next;   /*Address of next entry at the same level */
  };

/*=========================================*/
/*File node type for internal lookup table */
/*=========================================*/
struct lists
  {
   char *file;                /*File name                                */
   struct entries *topics;    /*Address of list of entry topics for file */
   struct entries *curr_menu; /*Address of current main topic in file    */
   struct lists *next;        /*Address of next file in the table        */
  };

/*==================================================*/
/*Delimeter strings for marking entries in the file */
/*==================================================*/
#define BDELIM "BEGIN-ENTRY-"
#define BDLEN 12
#define EDELIM "END-ENTRY"
#define EDLEN 9
#define BFORMAT "%d%1s%12s%s"   /*Format string for sscanf*/
#define LIT_DELIM ('$')

#define OPEN_READ "r"
#define OPEN_READ_BINARY "rb"

#define TEXTPRO_DATA 8

typedef enum
  {
   TP_NO_ERROR = 0,
   TP_INVALID_DELIMITER_STRING,
   TP_INVALID_ENTRY_TYPE
  } TextProError;
    
struct textProcessingData
  {
   struct lists *headings;
   struct entries *parent;
  };

#define TextProcessingData(theEnv) ((struct textProcessingData *) GetEnvironmentData(theEnv,TEXTPRO_DATA))

/***************************************/
/* LOCAL INTERNAL FUNCTION DEFINITIONS */
/***************************************/

   static int                     TextLookupFetch(Environment *,const char *);
   static bool                    TextLookupToss(Environment *,const char *);
   static FILE                   *GetEntries(Environment *,const char *,char **,char *,int *);
   static FILE                   *GetCurrentMenu(Environment *,const char *,int *);
   static char                   *GrabString(Environment *,FILE *,char *,int);

   static int                     findstr(const char *,const char *);
   static void                    upper(char *);
   static struct lists           *NewFetchFile(Environment *,const char *);
   static struct entries         *AllocateEntryNode(Environment *,FILE *,const char *,const char *,int);
   static bool                    AttachLeaf(Environment *,struct lists *,struct entries *,FILE *,const char *,int);
   static long                    LookupEntry(Environment *,const char *,char **,char *,int *);
   static void                    TossFunction(Environment *,struct entries *);
   static void                    DeallocateTextProcessingData(Environment *);
   static TextProError            ParseLine(Environment *,const char *,int *,char *,char **);
   
/******************************************************************************/
/*============================================================================*/
/*                             INTERNAL ROUTINES                              */
/*============================================================================*/
/******************************************************************************/

/****************************************************************************/
/*LOAD FUNCTION :                                                           */
/* Input : 1) name of file to be loaded into the lookup table               */
/*         2) caller-allocated buffer to contain an error message (if any)  */
/*         3) size of error message buffer                                  */
/* Output :                                                                 */
/* This function attempts to load the file's topic information into the     */
/* lookup table according to the format below :                             */
/*                                                                          */
/* <level-num><entry-type-code>BEGIN-ENTRY-<topic-name>                     */
/*                .                                                         */
/*                .                                                         */
/*    Entry information in the form in which                                */
/*    it is to be displayed when referenced.                                */
/*                .                                                         */
/*                .                                                         */
/* END-ENTRY                                                                */
/*                                                                          */
/* The function returns the number of entries loaded if the entire file was */
/*   was correctly formatted, else it returns -1.                           */
/****************************************************************************/
static int TextLookupFetch(
  Environment *theEnv,
  const char *file)
  {
   FILE *fp;                     /*Pointer into stream of input file      */
   char str[256];                /*Buffer for storing input file lines    */
   bool INFO_BEGIN, INFO_END;    /*Flags used to check proper syntax      */
   struct lists *lnode;          /*Used to store file node in list        */
   struct entries *enode;        /*Used to store entry node in topic list */
   int line_ct;                  /*Line count - used for error messages   */
   int entries_ct;               /*Number of entries successfully loaded. */

   fp = GenOpen(theEnv,file,OPEN_READ_BINARY);

   if (fp == NULL)
     {
      PrintErrorID(theEnv,"TEXTPRO",1,false);
      WriteString(theEnv,STDERR,"Could not open file '");
      WriteString(theEnv,STDERR,file);
      WriteString(theEnv,STDERR,"'.\n");
      return -1;
     }

   if ((lnode = NewFetchFile(theEnv,file)) == NULL)
     {
      GenClose(theEnv,fp);

      PrintErrorID(theEnv,"TEXTPRO",2,false);
      WriteString(theEnv,STDERR,"File '");
      WriteString(theEnv,STDERR,file);
      WriteString(theEnv,STDERR,"' already loaded.\n");
      return -1;
     }

   /*===========================*/
   /*Store the file entry topics*/
   /*===========================*/
   line_ct = 0;
   entries_ct = 0;

   INFO_BEGIN = false;
   INFO_END = true;
   while (fgets(str,256,fp) != NULL)
     {
      line_ct++;

      /*=============================================================*/
      /*Forces the load function to ignore lines beginning with `$$' */
      /*=============================================================*/

      if ((str[0] != LIT_DELIM) || (str[1] != LIT_DELIM))
        {
        if (findstr(str,EDELIM) >= 0)
          {
           if (INFO_BEGIN == true)
             {
              INFO_BEGIN = false;
              INFO_END = true;
              entries_ct++;
             }
           else
             {
              GenClose(theEnv,fp);
              TextLookupToss(theEnv,file);
              PrintErrorID(theEnv,"TEXTPRO",8,false);
              WriteString(theEnv,STDERR,"Line ");
              WriteInteger(theEnv,STDERR,line_ct);
              WriteString(theEnv,STDERR," : Unmatched end marker.\n");
              return(-1);
             }
          }
        else if (findstr(str,BDELIM) >= 0)
          {
           if (INFO_END == true)
              {
               INFO_END = false;
               INFO_BEGIN = true;
              }
            else
              {
               GenClose(theEnv,fp);
               TextLookupToss(theEnv,file);

               PrintErrorID(theEnv,"TEXTPRO",4,false);
               WriteString(theEnv,STDERR,"Line ");
               WriteInteger(theEnv,STDERR,line_ct);
               WriteString(theEnv,STDERR," : Previous entry not closed.\n");

               return(-1);
              }

           if ((enode=AllocateEntryNode(theEnv,fp,file,str,line_ct))==NULL)
             return(-1);

           /*=================================*/
           /*Store new entry node in the tree */
           /*=================================*/
           if (AttachLeaf(theEnv,lnode,enode,fp,file,line_ct) == false)
             return(-1);
          }
        }
     }
   GenClose(theEnv,fp);
   if (INFO_END == false)
     {
      TextLookupToss(theEnv,file);

      PrintErrorID(theEnv,"TEXTPRO",4,false);
      WriteString(theEnv,STDERR,"Line ");
      WriteInteger(theEnv,STDERR,line_ct);
      WriteString(theEnv,STDERR," : Previous entry not closed.\n");

      return(-1);
     }
   if (entries_ct == 0)
     TextLookupToss(theEnv,file);
   return(entries_ct);
  }

/******************************************************************************/
/*FUNCTION UNLOAD :                                                           */
/* Input : 1) name of file to be taken off the lookup table                   */
/* Output : This functions deletes a file and all entry-topics associated with*/
/*          it from the lookup table and returns a boolean flag indicating    */
/*          failure or success.                                               */
/******************************************************************************/
static bool TextLookupToss(
  Environment *theEnv,
  const char *file)
  {
   struct lists *plptr, *clptr;
   int l_flag;

   clptr = TextProcessingData(theEnv)->headings;
   plptr = clptr;
   if (clptr != NULL)
     if (strcmp(clptr->file,file) != 0)
       l_flag = 1;
     else
       l_flag = 0;
   else
     l_flag = 0;
   while (l_flag > 0)
     {
      plptr = clptr;
      clptr = clptr->next;
      if (clptr != NULL)
        if (strcmp(clptr->file,file) != 0)
          l_flag = 1;
        else
          l_flag = 0;
      else
        l_flag = 0;
     }
   if (clptr == NULL)
     return false;

   TossFunction(theEnv,clptr->topics);

   if (plptr == clptr)
     TextProcessingData(theEnv)->headings = clptr->next;
   else
     plptr->next = clptr->next;

   genfree(theEnv,(void *) clptr->file,strlen(clptr->file) + 1);
   rm(theEnv,clptr,sizeof(struct lists));
   return true;
  }

/******************************************************************************/
/*FUNCTION GET_ENTRIES :                                                      */
/* Input : 1) name of file to be accessed for lookup of entry                 */
/*         2) caller allocated buffer for main topic name                     */
/*         3) name of the entry to be accessed in the file                    */
/*         4) caller allocated buffer for a status code (see LOOKUP).         */
/* Output : 1) returns a pointer into the stream of the lookup file which     */
/*             indicates the starting position of the lookup information      */
/*             (NULL if the topic was not found)                              */
/* This function passes its input directly to LOOKUP.  See its description    */
/* for further detail.                                                        */
/*                                                                            */
/******************************************************************************/
static FILE *GetEntries(
  Environment *theEnv,
  const char *file,
  char **menu,
  char *name,
  int *code)
  {
   FILE *fp;          /*Lookup file stream*/
   long offset;       /*Offset from beginning of file to beginning of topic*/

   offset = LookupEntry(theEnv,file,menu,name,code);
   if (offset < 0)
     return NULL;
   fp = GenOpen(theEnv,file,OPEN_READ_BINARY);
   if (fp == NULL)
     {
      *code = NO_FILE;
      return NULL;
     }
   if (fseek(fp,offset,0) < 0)
     {
      GenClose(theEnv,fp);
      *code = NO_FILE;
      return NULL;
     }
   return(fp);
  }

/******************************************************************************/
/*FUNCTION GET_CURR_MENU :                                                    */
/* Input : 1) name of file to be accessed                                     */
/*         2) caller allocated buffer for the current menu name               */
/*         3) caller allocated buffer for status code : NO_FILE, NO_TOPIC, or */
/*            NORMAL.                                                         */
/* Output : 1) returns a pointer into the file stream indicating the beginning*/
/*             of the description of the current menu for the named file      */
/*             (returns NULL if there is no current menu)                     */
/******************************************************************************/
static FILE *GetCurrentMenu(
  Environment *theEnv,
  const char *file,
  int *status)
  {
   struct lists *lptr;   /*Used in searching the file list*/
   FILE *fp;             /*File stream*/
   int l_flag;           /*Used in looping through the file list*/

   /*=====================================*/
   /*Find the named file in the file list */
   /*=====================================*/
   lptr = TextProcessingData(theEnv)->headings;
   if (lptr != NULL)
     if (strcmp(lptr->file,file) != 0)
       l_flag = 1;
     else
       l_flag = 0;
   else
     l_flag = 0;
   while (l_flag > 0)
     {
      lptr = lptr->next;
      if (lptr != NULL)
        if (strcmp(lptr->file,file) != 0)
          l_flag = 1;
        else
          l_flag = 0;
      else
        l_flag = 0;
     }
   if (lptr == NULL)
     {
      *status = NO_FILE;
      return NULL;
     }

   /*============================================================*/
   /*Position the pointer in the file stream to the current menu */
   /*============================================================*/
   if (lptr->curr_menu == NULL)
     {
      *status = NO_TOPIC;
      return NULL;
     }
   if ((fp = GenOpen(theEnv,file,OPEN_READ_BINARY)) == NULL)
     {
      *status = NO_FILE;
      return NULL;
     }
   if (fseek(fp,lptr->curr_menu->offset,0) < 0)
     {
      GenClose(theEnv,fp);
      *status = NO_FILE;
      return NULL;
     }
   *status = NORMAL;
   return(fp);
  }

/******************************************************************************/
/*FUNCTION GrabString :                                                       */
/* Input : 1) file stream pointer                                             */
/*         2) caller allocated buffer for storage of read string              */
/*         3) size of caller's buffer                                         */
/* Output : This function grabs a line of text from the currently opened      */
/*          lookup file at the given file position in the stream.  If it      */
/*          encounters EOF or the closing topic delimeter, it closes the file */
/*          and returns NULL.  Otherwise, the return value is simply the      */
/*          address of the caller's buffer.                                   */
/*                                                                            */
/* Notes : 1) This function expects a file pointer into a stream of a file    */
/*            already opened!!                                                */
/*         2) The caller must close the file himself if he wishes to          */
/*            prematurely abort the complete reading of an entry.             */
/******************************************************************************/
static char *GrabString(
  Environment *theEnv,
  FILE *fp,
  char *buf,
  int bufsize)
  {
   if (fgets(buf,bufsize,fp) == NULL)
     {
      GenClose(theEnv,fp);
      return NULL;
     }
   if ((buf[0] == LIT_DELIM) && (buf[1] == LIT_DELIM))
     {
      buf[0] = BLANK;
      buf[1] = BLANK;
     }
   else if (findstr(buf,EDELIM) >= 0)
     {
      buf = NULL;
      GenClose(theEnv,fp);
     }
   return(buf);
  }

/**************************************************************************/
/*FINDSTR FUNCTION :                                                      */
/* Input : 1) string to be searched                                       */
/*         2) string to be found                                          */
/* Output : 1) returns index of string-1 where string-2 started, if found */
/*          2) returns -1, if not found                                   */
/**************************************************************************/
static int findstr(
  const char *s,
  const char *t)
  {
   int i,j,k;

   for (i = 0; s[i] != '\0'; i++)
     {
      for (j = i, k = 0; t[k] != '\0' && s[j] == t[k]; j++, k++) ;
      if ((t[k] == '\0') && (k != 0))
        return(i);
     }
   return(-1);
  }

/**********************************************************************/
/*UPPER FUNCTION :                                                    */
/* Input : 1) alphanumeric string                                     */
/* Output : 1) all alphabetic characters of string are capitalized    */
/**********************************************************************/
static void upper(
  char *str)
  {
   int theIndex;

   for (theIndex = 0 ; str[theIndex] != NULLCHAR; theIndex++)
     if (islower(str[theIndex])) str[theIndex] = (char) toupper(str[theIndex]);
  }

/******************************************************************************/
/*FILE_NODE FUNCTION :                                                        */
/* Input : 1) name of a file                                                  */
/* Output : 1) returns address of an initalized NewFetchFile, if the file was    */
/*             not already on the lookup table                                */
/*          2) returns the null address, if the file was already present      */
/******************************************************************************/
static struct lists *NewFetchFile(
  Environment *theEnv,
  const char *file)
  {
   struct lists *lptr = NULL, *lnode;

   if (TextProcessingData(theEnv)->headings != NULL)
     {
      lptr = TextProcessingData(theEnv)->headings;
      while (lptr->next != NULL)
        {
         if (strcmp(lptr->file,file) == 0)
           return NULL;
         lptr = lptr->next;
        }
      if (strcmp(lptr->file,file) == 0)
        return NULL;
     }
   lnode = (struct lists *) gm2(theEnv,sizeof(struct lists));
      
   lnode->file = (char *) genalloc(theEnv,strlen(file) + 1);
   genstrcpy(lnode->file,file);
   
   lnode->topics = NULL;
   lnode->curr_menu = NULL;
   lnode->next = NULL;
   if (TextProcessingData(theEnv)->headings == NULL)
     TextProcessingData(theEnv)->headings = lnode;
   else
     lptr->next = lnode;
   return(lnode);
  }

/*************/
/* ParseLine */
/*************/
static TextProError ParseLine(
   Environment *theEnv,
   const char *str,
   int *level,
   char *entryType,
   char **entryName)
   {
    size_t pos = 0;
    bool digitFound = false, plusFound = false, minusFound = false;
    int theLevel = 0;
    char theChar;
    const char *subName;
    size_t length = 0;
    char *theString;
    
    *entryName = NULL;
    
    /*==================*/
    /* Parse the level. */
    /*==================*/
    
    theChar = str[pos++];
    
    while ((theChar == '+') ||
           (theChar == '-') ||
           isdigit(theChar))
      {
       if (theChar == '+')
         {
          if (digitFound || plusFound || minusFound)
            { return TP_INVALID_DELIMITER_STRING; }
          plusFound = true;
         }
       else if (theChar == '-')
         {
          if (digitFound || plusFound || minusFound)
            { return TP_INVALID_DELIMITER_STRING; }
          minusFound = true;
         }
       else
         {
          theLevel = (theLevel * 10) + (theChar - '0');
          digitFound = true;
         }
         
       theChar = str[pos++];
      }
      
    if (! digitFound)
      { return TP_INVALID_DELIMITER_STRING; }
      
    if (minusFound)
      { theLevel = -theLevel; }
      
    *level = theLevel;
    
    /*=====================*/
    /* Get the entry type. */
    /*=====================*/

    *entryType = theChar;
    if ((theChar != 'M') && (theChar != 'I'))
      { return TP_INVALID_ENTRY_TYPE; }
      
    /*========================*/
    /* Look for BEGIN_ENTRY_. */
    /*========================*/
    
    while (isspace(str[pos]))
      { pos++; }
      
    if (strncmp(&str[pos],BDELIM,BDLEN) != 0)
      { return TP_INVALID_DELIMITER_STRING; }

    /*====================*/
    /* Look for the name. */
    /*====================*/
    
    pos = pos + BDLEN;

    while (isspace(str[pos]))
      { pos++; }

    subName = &str[pos];
    
    while (isprint(str[pos++]))
      { length++; }

    if (length == 0)
      { return TP_INVALID_DELIMITER_STRING; }
      
    theString = (char *) genalloc(theEnv,length+1);
    theString[0] = '\0';
    strncat(theString,subName,length);

    *entryName = theString;
      
    return TP_NO_ERROR;
   }
   
/******************************************************************************/
/*ENTRIES_NODE FUNCTION :                                                     */
/* Input : 1) file pointer                                                    */
/*         2) file name                                                       */
/*         3) input string from the file                                      */
/*         4) buffer for error messages                                       */
/*         5) size of the error message buffer                                */
/*         6) line count in the file                                          */
/* Output :                                                                   */
/*This function scans the input string for the appropriate topic entry        */
/*delimeter and, if it finds this to be correct, allocates a new entry node,  */
/*and initializes it, and returns the address to the calling routine.  If an  */
/*error is detected, the function writes an appropriate message to the        */
/*caller's buffer, deallocates the node, deletes all previous nodes from the  */
/*current file from the lookup table, closes the file, and returns the null   */
/*address.                                                                    */
/******************************************************************************/
static struct entries *AllocateEntryNode(
  Environment *theEnv,
  FILE *fp,
  const char *file,
  const char *str,
  int line_ct)
  {
   struct entries *enode;
   char entryType;
   int level;
   char *entryName;
   TextProError theError;

   /*================================================================*/
   /*Allocate a new node and scan the delimeter string for tree info */
   /*================================================================*/

   enode = (struct entries *) gm2(theEnv,sizeof(struct entries));
   
   theError = ParseLine(theEnv,str,&level,&entryType,&entryName);
   
   if (theError == TP_INVALID_DELIMITER_STRING)
     {
      rm(theEnv,enode,sizeof(struct entries));
      GenClose(theEnv,fp);
      TextLookupToss(theEnv,file);

      PrintErrorID(theEnv,"TEXTPRO",5,false);
      WriteString(theEnv,STDERR,"Line ");
      WriteInteger(theEnv,STDERR,line_ct);
      WriteString(theEnv,STDERR," : Invalid delimiter string.\n");

      return NULL;
     }

   if (theError == TP_INVALID_ENTRY_TYPE)
     {
      rm(theEnv,enode,sizeof(struct entries));
      GenClose(theEnv,fp);
      TextLookupToss(theEnv,file);

      PrintErrorID(theEnv,"TEXTPRO",6,false);
      WriteString(theEnv,STDERR,"Line ");
      WriteInteger(theEnv,STDERR,line_ct);
      WriteString(theEnv,STDERR," : Invalid entry type.\n");

      return NULL;
     }
     
   if (entryType == 'M')
     enode->type = MENU;
   else if (entryType == 'I')
     enode->type = INFO;

   /*===============================================================*/
   /* For systems which have record file systems (such as VMS),     */
   /* the following statement is necessary to move the file pointer */
   /* to the beginning of the next record.                          */
   /*===============================================================*/

   ungetc(getc(fp),fp);
   enode->level = level;
   enode->offset = ftell(fp);
   enode->parent = NULL;
   enode->child  = NULL;
   enode->next = NULL;
   enode->name = entryName;
   upper(enode->name);

   return(enode);
  }

/******************************************************************************/
/*FUNCTION ATTACH_LEAF :                                                      */
/* Input : 1) address of current NewFetchFile                                 */
/*         2) address of current topic entry-node                             */
/*         3) file pointer                                                    */
/*         4) name of file                                                    */
/*         5) error message buffer                                            */
/*         6) size of error message buffer                                    */
/*         7) line count in the file                                          */
/* Output :                                                                   */
/*This function attaches the entry-node to its proper place in the tree of the*/
/*current file.  The function returns a boolean flag indicating the success   */
/*(or lack thereof) of this connection.  In the case of an error, an error    */
/*message is written to the caller's buffer, the file is closed, and the      */
/*previous file entries are deleted from the lookup table.                    */
/******************************************************************************/
static bool AttachLeaf(
  Environment *theEnv,
  struct lists *lnode,
  struct entries *enode,
  FILE *fp,
  const char *file,
  int line_ct)
  {
   int p_flag;   /*Used in searching the tree for a parent*/


   /*====================*/
   /*First topic for file*/
   /*====================*/
   if (lnode->topics == NULL)
     lnode->topics = enode;

   /*================================*/
   /*Subtopic - branch down the tree */
   /*================================*/
   else if (enode->level > TextProcessingData(theEnv)->parent->level)
     if (TextProcessingData(theEnv)->parent->type == MENU)
       {
        enode->parent = TextProcessingData(theEnv)->parent;
        TextProcessingData(theEnv)->parent->child = enode;
       }
     else
       {
        if (enode->name != NULL)
          { genfree(theEnv,(void *) enode->name,strlen(enode->name) + 1); }
        rm(theEnv,enode,sizeof(struct entries));
        GenClose(theEnv,fp);
        TextLookupToss(theEnv,file);

        PrintErrorID(theEnv,"TEXTPRO",7,false);
        WriteString(theEnv,STDERR,"Line ");
        WriteInteger(theEnv,STDERR,line_ct);
        WriteString(theEnv,STDERR," : Non-menu entries cannot have subtopics.\n");

        return false;
       }
   /*====================================*/
   /*Brother-topic -- same level in tree */
   /*====================================*/
   else if (enode->level == TextProcessingData(theEnv)->parent->level)
     {
      enode->parent = TextProcessingData(theEnv)->parent->parent;
      enode->next = TextProcessingData(theEnv)->parent->next;
      TextProcessingData(theEnv)->parent->next = enode;
     }

   /*==========================================================*/
   /*Topic is unrelated to previous topic - branch up the tree */
   /*==========================================================*/
   else
     {
      if (TextProcessingData(theEnv)->parent != NULL)
        p_flag = 1;
      else
        p_flag = 0;
      while (p_flag > 0)
        {
         TextProcessingData(theEnv)->parent = TextProcessingData(theEnv)->parent->parent;
         if (TextProcessingData(theEnv)->parent != NULL)
           if (enode->level < TextProcessingData(theEnv)->parent->level)
             p_flag = 1;
           else
             p_flag = 0;
         else
           p_flag = 0;
        }
      if (TextProcessingData(theEnv)->parent != NULL)

        /*========*/
        /*Subtopic*/
        /*========*/
        if (TextProcessingData(theEnv)->parent->level < enode->level)
          {
           enode->parent = TextProcessingData(theEnv)->parent;
           enode->next = TextProcessingData(theEnv)->parent->child;
           TextProcessingData(theEnv)->parent->child = enode;
          }

        /*=============*/
        /*Brother-topic*/
        /*=============*/
        else
          {
           enode->parent = TextProcessingData(theEnv)->parent->parent;
           enode->next = TextProcessingData(theEnv)->parent->next;
           TextProcessingData(theEnv)->parent->next = enode;
          }

      /*=========*/
      /*Root Node*/
      /*=========*/
      else
        {
         enode->parent = NULL;
         enode->next = lnode->topics;
         lnode->topics = enode;
        }
     }
   TextProcessingData(theEnv)->parent = enode;
   return true;
  }

/******************************************************************************/
/*FUNCTION LOOKUP :                                                           */
/* Input : 1) name of entry-topic file to be used for reference               */
/*         2) caller allocated buffer to contain the main topic name          */
/*         3) name of the entry-topic to be found                             */
/*         4) caller allocated buffer to store the return status              */
/* Output : 1) offset from the beginning of the entry-topic file stream to the*/
/*             beginning of the requested topic (-1 if the topic not found)   */
/*          2) status code stored in caller's buffer indicating the result of */
/*             the lookup : NO_FILE, NO_TOPIC, BRANCH_UP, BRANCH_DOWN, EXIT,  */
/*             or NORMAL.                                                     */
/*                                                                            */
/* Notes : 1) If NULL is given as an entry-topic, the lookup routine branches */
/*            up one level in the tree (status BRANCH_UP).  If the current    */
/*            level of the tree is already the root, all paths are set to NULL*/
/*            (status EXIT).                                                  */
/*         2) If an entry-topic is not found, the file position of the current*/
/*            main topic (or menu) is returned (status NO_TOPIC).             */
/******************************************************************************/
static long LookupEntry(
  Environment *theEnv,
  const char *file,
  char **menu,
  char *name,
  int *code)
  {
   struct lists *lptr;    /*Local pointers used to move through the tree*/
   struct entries *eptr;
   int l_flag, e_flag;    /*Flags used in looping to find entry-topics*/

   /*===============================*/
   /*Find named file in lookup list */
   /*===============================*/
   lptr = TextProcessingData(theEnv)->headings;
   if (lptr != NULL)
     if (strcmp(lptr->file,file) != 0)
       l_flag = 1;
     else
       l_flag = 0;
   else
     l_flag = 0;
   while (l_flag > 0)
     {
      lptr = lptr->next;
      if (lptr != NULL)
        if (strcmp(lptr->file,file) != 0)
          l_flag = 1;
        else
          l_flag = 0;
      else
        l_flag = 0;
     }
   if (lptr == NULL)
     {
      *code = NO_FILE;
      return(-1);
     }

   /*==================================================================*/
   /*If entry-topic was NULL, branch up one-level in the tree, or exit */
   /*the tree if already at the root.                                  */
   /*==================================================================*/
   if (name == NULL)
     {
      if (lptr->curr_menu == NULL)
        {
         *code = EXIT;
         return(-1);
        }
      else
        {
         if (lptr->curr_menu->parent == NULL)
           {
            *code = EXIT;
            lptr->curr_menu = NULL;
            *menu = NULL;
            return(-1);
           }
         lptr->curr_menu = lptr->curr_menu->parent;
         *code = BRANCH_UP;
         *menu = lptr->curr_menu->name;
         return(lptr->curr_menu->offset);
        }
     }

   /*========================================*/
   /*Find the topic in the file's topic tree */
   /*========================================*/
   upper(name);
   if (lptr->curr_menu != NULL)
     eptr = lptr->curr_menu->child;
   else
     eptr = lptr->topics;
   if (eptr != NULL)
     if (findstr(eptr->name,name) == 0)
       e_flag = 0;
     else
       e_flag = 1;
   else
     e_flag = 0;
   while (e_flag > 0)
     {
      eptr = eptr->next;
      if (eptr != NULL)
        if (findstr(eptr->name,name) == 0)
          e_flag = 0;
        else
          e_flag = 1;
      else
        e_flag = 0;
     }

   /*===================================================================*/
   /*If the topic was not found, return the position of the current menu*/
   /*===================================================================*/
   if (eptr == NULL)
     {
      *code = NO_TOPIC;
      if (lptr->curr_menu != NULL)
        {
         *menu = lptr->curr_menu->name;
         return(lptr->curr_menu->offset);
        }
      return(-1);
     }

   /*===============================================================*/
   /*If the requested topic has children, branch down to its level. */
   /*===============================================================*/
   if (eptr->type == MENU)
     {
      *code = BRANCH_DOWN;
      lptr->curr_menu = eptr;
     }
   else
     *code = NORMAL;

   if (lptr->curr_menu != NULL)
      *menu = lptr->curr_menu->name;
   return(eptr->offset);
  }

/******************************************************************************/
/*FUNCTION TOSS :                                                             */
/* Input : 1) entry-topic address                                             */
/* Output : This function recursively deletes a node and all child nodes      */
/******************************************************************************/
static void TossFunction(
  Environment *theEnv,
  struct entries *eptr)
  {
   struct entries *prev;

   while (eptr != NULL)
     {
      if (eptr->child != NULL)
        TossFunction(theEnv,eptr->child);
      prev = eptr;
      eptr = eptr->next;
      
      if (prev->name != NULL)
        { genfree(theEnv,(void *) prev->name,strlen(prev->name) + 1); }
      rm(theEnv,prev,sizeof(struct entries));
     }
  }


/****************************************************************************/
/****************************************************************************/
/*                          TEXT PROCESSING FUNCTIONS                       */
/*                                                                          */
/* The functions contained in this file can be called to handle             */
/* external file referencing and accessing.  FetchCommand() loads a file    */
/* onto an internal run-time lookup table, TossCommand() removes the file,  */
/* PrintRegionCommand accesses the loaded file to display a requested       */
/* entry, and HelpFunction() provides an on-line help facility              */
/* using the external help data file specified in the header file setup.h.  */
/* For information on the format of the data file(s) required, see the      */
/* internal documentation in LOOKUP.C and the external documentation.       */
/*                                                                          */
/* For usage of these functions, see the external documentation.            */
/****************************************************************************/
/****************************************************************************/

#define SCREEN_LN 22   /*Typical terminal screen length -- 22 lines*/
                       /*Used for scrolling in the help facility   */

/*==========================================*/
/*Topic node for help facility's query list */
/*==========================================*/
struct topics
  {
   char *name;
   struct topics *end_list;  /*Pointer to end of query list     */
   struct topics *next;      /*Pointer to next topic in the list*/
  };

/******************************************************************************/
/*============================================================================*/
/*                        FUNCTION DECLARATIONS                               */
/*============================================================================*/
/******************************************************************************/

   static struct topics          *GetCommandLineTopics(UDFContext *);
   static FILE                   *FindTopicInEntries(Environment *,const char *,struct topics *,char **,int *);

/******************************************************************************/
/*============================================================================*/
/*                       EXTERNAL ACCESS FUNCTIONS                            */
/*============================================================================*/
/******************************************************************************/

#if TEXTPRO_FUNCTIONS

/***************************************************************************/
/*FUNCTION FetchCommand : (H/L function fetch)                             */
/* Input : Name of the file to be stored in the lookup table - passed via  */
/*         the argument "stack" and result buffer                          */
/* Output : This function loads a file into the internal lookup table and  */
/*          returns a (float) boolean flag indicating failure or success.  */
/***************************************************************************/
void FetchCommand(
  Environment *theEnv,
  UDFContext *context,
  UDFValue *returnValue)
  {
   int load_ct;          /*Number of entries loaded */
   UDFValue theArg;

   returnValue->lexemeValue = FalseSymbol(theEnv);

   if (! UDFFirstArgument(context,LEXEME_BITS,&theArg))
     { return; }

   load_ct = TextLookupFetch(theEnv,theArg.lexemeValue->contents);
   if (load_ct <= 0)
     {
      if (load_ct == 0)
        {
         PrintErrorID(theEnv,"TEXTPRO",3,false);
         WriteString(theEnv,STDERR,"No entries found.\n");
        }

      return;
     }

   returnValue->integerValue = CreateInteger(theEnv,load_ct);
  }

/******************************************************************************/
/*FUNCTION PrintRegionCommand : (H/L function print-region)                 */
/* Input : Via the argument "stack", logical name for the output, the name of the */
/*         file to be accessed, and the name of the topic(s) to be looked up. */
/* Output : This function accesses a previously loaded file and prints the    */
/*          information of the topic entry requested to the screen.  The tree */
/*          structure must currently be at the correct level in order for the */
/*          topic to be accessed.  To branch down the tree, each topic in the */
/*          path to the one desired must be named.  Multiple arguments are    */
/*          allowed as in the help facility (see the external documentation.) */
/*          To branch up the tree, the special topic character `^' must be    */
/*          specified for each upwards branch.  Giving no topic name will     */
/*          cause a single branch-up in the tree.  The `?' character given at */
/*          the end of a path will return the current main topic menu.        */
/*                                                                            */
/* For usage, see the external documentation.                                 */
/******************************************************************************/
void PrintRegionCommand(
  Environment *theEnv,
  UDFContext *context,
  UDFValue *returnValue)
  {
   struct topics *params,    /*Lookup file and list of topic requests  */
                 *tptr;      /*Used in deallocating the parameter list */
   char buf[256];            /*Buffer for the topic entry strings      */
   FILE *fp;                 /*Stream for the input file               */
   char *menu[1];            /*Buffer for the current menu name        */
   int status;               /*Lookup status return code               */
   bool com_code;            /*Completion flag                         */
   const char *logicalName;

   params = GetCommandLineTopics(context);
   fp = FindTopicInEntries(theEnv,params->next->name,params->next->next,menu,&status);
   if ((status != NO_FILE) && (status != NO_TOPIC) && (status != EXIT))
     {
      if (strcmp(params->name,"t") == 0)
        { logicalName = STDOUT; }
      else
        { logicalName = params->name; }
        
      WriteString(theEnv,logicalName,"\n");
      while (GrabString(theEnv,fp,buf,256) != NULL)
        WriteString(theEnv,logicalName,buf);
      com_code = true;
     }
   else
     {
      /* ==================================================================
         On NO_TOPIC results, the file is left open to point to the current
         menu.  This used as a check by the Help System.  In the case of
         print-region, however, we need to always make sure the file is
         closed.
         ================================================================== */
      if (fp != NULL)
        GenClose(theEnv,fp);
      com_code = false;
     }

   /* =======================================================
      Release any space used by the user's topic request list
      ======================================================= */
   while (params != NULL)
     {
      tptr = params;
      params = params->next;
      genfree(theEnv,(void *) tptr->name,strlen(tptr->name) + 1);
      rm(theEnv,tptr,sizeof(struct topics));
     }

   returnValue->lexemeValue = CreateBoolean(theEnv,com_code);
  }

/***********************************************/
/* GetRegionCommand : (H/L functionget-region) */
/***********************************************/
void GetRegionCommand(
  Environment *theEnv,
  UDFContext *context,
  UDFValue *returnValue)
  {
   struct topics *params,    /*Lookup file and list of topic requests  */
                 *tptr;      /*Used in deallocating the parameter list */
   char buf[256];            /*Buffer for the topic entry strings      */
   FILE *fp;                 /*Stream for the input file               */
   char *menu[1];            /*Buffer for the current menu name        */
   int status;               /*Lookup status return code               */
   char *theString = NULL;
   size_t oldPos = 0;
   size_t oldMax = 0;
   size_t sLength;

   params = GetCommandLineTopics(context);
   fp = FindTopicInEntries(theEnv,params->name,params->next,menu,&status);
   if ((status != NO_FILE) && (status != NO_TOPIC) && (status != EXIT))
     {
      while (GrabString(theEnv,fp,buf,256) != NULL)
        theString = AppendToString(theEnv,buf,theString,&oldPos,&oldMax);
     }
   else
     {
      /* ==================================================================
         On NO_TOPIC results, the file is left open to point to the current
         menu.  This used as a check by the Help System.  In the case of
         print-region, however, we need to always make sure the file is
         closed.
         ================================================================== */
      if (fp != NULL)
        GenClose(theEnv,fp);
     }

   /* =======================================================
      Release any space used by the user's topic request list
      ======================================================= */
   while (params != NULL)
     {
      tptr = params;
      params = params->next;
      genfree(theEnv,(void *) tptr->name,strlen(tptr->name) + 1);
      rm(theEnv,tptr,sizeof(struct topics));
     }

   if (theString == NULL)
     { returnValue->lexemeValue = CreateString(theEnv,""); }
   else
     {
      sLength = strlen(theString);
      if ((sLength > 0) &&
          (((theString[sLength-1] == '\r') && (theString[sLength-2] == '\n'))
		   ||
           ((theString[sLength-1] == '\n') && (theString[sLength-2] == '\r'))))
        { theString[sLength-2] = 0; }
      returnValue->lexemeValue = CreateString(theEnv,theString);
     }

   if (theString != NULL)
     { genfree(theEnv,theString,oldMax); }
  }

/***************************************************************************/
/*FUNCTION TossCommand : (H/L function toss)                             */
/* Input : Name of the file to be deleted from the lookup table (passed via*/
/*         the argument "stack")                                           */
/* Output : This function deletes the named file from the lookup table and */
/*          returns a (float) boolean flag indicating failure or success.  */
/***************************************************************************/
void TossCommand(
  Environment *theEnv,
  UDFContext *context,
  UDFValue *returnValue)
  {
   const char *file;   /*Name of the file */
   UDFValue theArg;

   if (! UDFFirstArgument(context,LEXEME_BITS,&theArg))
     { return; }

   file = theArg.lexemeValue->contents;

   returnValue->lexemeValue = CreateBoolean(theEnv,TextLookupToss(theEnv,file));
  }

#endif

/******************************************************************************/
/*============================================================================*/
/*                            INTERNAL ROUTINES                               */
/*============================================================================*/
/******************************************************************************/

/******************************************************************************/
/*FUNCTION CMD_LINE_TOPICS :                                                  */
/* Input : None                                                               */
/* Output : This function builds a linked list of topics requested by the     */
/*          user at the H/L level using the argument "stack" routines,        */
/*          num_args() and rstring().  It returns the address of the top of   */
/*          the list or NULL if there were no command line topics.            */
/******************************************************************************/
static struct topics *GetCommandLineTopics(
  UDFContext *context)
  {
   struct topics *head,   /* Address of the top of the topic list */
                 *tnode,  /* Address of new topic node            */
                 *tptr;   /* Used to attach new node to the list  */
   UDFValue val;        /* Unknown-type H/L data structure      */
   Environment *theEnv = context->environment;
   const char *theString;

   head = NULL;

   while (UDFHasNextArgument(context))
     {
      tnode = (struct topics *) gm2(theEnv,sizeof(struct topics));

      UDFNextArgument(context,ANY_TYPE_BITS,&val);

      if ((val.header->type == SYMBOL_TYPE) || (val.header->type == STRING_TYPE))
        { theString = val.lexemeValue->contents; }
      else if (val.header->type == FLOAT_TYPE)
        { theString = FloatToString(theEnv,val.floatValue->contents); }
      else if (val.header->type == INTEGER_TYPE)
        { theString = LongIntegerToString(theEnv,val.integerValue->contents); }
      else
        { theString = "***ERROR***"; }

      tnode->name = (char *) genalloc(theEnv,strlen(theString) + 1);
      genstrcpy(tnode->name,theString);

      tnode->next = NULL;
      tnode->end_list = NULL;
      if (head == NULL)
        head = tnode;
      else
        {
         tptr = head;
         while (tptr->next != NULL)
           tptr = tptr->next;
         tptr->next = tnode;
        }
     }
    return(head);
  }

/******************************************************************************/
/*FUNCTION FIND_TOPIC :                                                       */
/* Input : 1) File to be searched for topic request                           */
/*         2) Address of topic request list                                   */
/*         3) Buffer for current menu name                                    */
/*         4) Lookup status return code                                       */
/* Output : This function flows through the user topic request path by        */
/*          calling the lookup routines.  When it reaches the last element,   */
/*          it returns a pointer into the stream of the lookup file           */
/*          indicating the beginning of the topic entry.  If any topic in the */
/*          path is not found, the function aborts and returns the address of */
/*          of the current menu in the lookup tree for the file.  The exact   */
/*          nature of the final lookup is indicated in the status buffer.     */
/******************************************************************************/
static FILE *FindTopicInEntries(
  Environment *theEnv,
  const char *file,
  struct topics *main_topic,
  char **menu,
  int *status)
  {
   FILE *fp = NULL;                 /*Input file stream                    */
   struct topics *tptr,             /*Used to loop through the topic list  */
                 *end_list;         /*Address of the end of the topic list */

   if (main_topic != NULL)
     end_list = main_topic->end_list;
   else
     end_list = NULL;
   tptr = main_topic;
   if (tptr != end_list)
     do
       {
        if (fp != NULL)
          GenClose(theEnv,fp);

        /*======================*/
        /*Branch up in the tree */
        /*======================*/
        if (strcmp(tptr->name,"^") == 0)
          fp = GetEntries(theEnv,file,menu,NULL,status);

        /*=======================================================*/
        /*Return the current main topic menu of the lookup table */
        /*=======================================================*/
        else if ((strcmp(tptr->name,"?") == 0) && (tptr->next == end_list))
          fp = GetCurrentMenu(theEnv,file,status);

        /*=====================*/
        /*Lookup topic request */
        /*=====================*/
        else
          fp = GetEntries(theEnv,file,menu,tptr->name,status);

        if ((*status == NO_FILE) || (*status == NO_TOPIC))
          break;
        tptr = tptr->next;
       } while (tptr != end_list);
   else
     /*==================================================================*/
     /*An empty topic request list causes a single branch-up in the tree */
     /*==================================================================*/
     fp = GetEntries(theEnv,file,menu,NULL,status);

   return(fp);
  }

/*******************************************/
/* HelpFunctionDefinitions:                */
/*******************************************/
void HelpFunctionDefinitions(
  Environment *theEnv)
  {
   AllocateEnvironmentData(theEnv,TEXTPRO_DATA,sizeof(struct textProcessingData),DeallocateTextProcessingData);
#if ! RUN_TIME
#if TEXTPRO_FUNCTIONS
   AddUDF(theEnv,"fetch","bl",1,1,"sy",FetchCommand,"FetchCommand",NULL);
   AddUDF(theEnv,"toss","b",1,1,"sy",TossCommand,"TossCommand",NULL);
   AddUDF(theEnv,"print-region","b",2,UNBOUNDED,"*;y;sy",PrintRegionCommand,"PrintRegionCommand",NULL);
   AddUDF(theEnv,"get-region","s",1,UNBOUNDED,"*;sy",GetRegionCommand,"GetRegionCommand", NULL);
#endif
#endif
  }

/*********************************************************/
/* DeallocateTextProcessingData: Deallocates environment */
/*    data for text processing routines.                 */
/*********************************************************/
static void DeallocateTextProcessingData(
  Environment *theEnv)
  {
   struct lists *nextptr, *clptr;

   clptr = TextProcessingData(theEnv)->headings;
   while (clptr != NULL)
     {
      nextptr = clptr->next;

      TossFunction(theEnv,clptr->topics);
      
      genfree(theEnv,(void *) clptr->file,strlen(clptr->file) + 1);
      rm(theEnv,clptr,sizeof(struct lists));

      clptr = nextptr;
     }
  }


#endif

