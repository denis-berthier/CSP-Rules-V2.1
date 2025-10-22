   /*******************************************************/
   /*      "C" Language Integrated Production System      */
   /*                                                     */
   /*             CLIPS Version 6.40  06/20/16            */
   /*                                                     */
   /*           CONSTRUCT CONSTRUCTS-TO-C HEADER          */
   /*******************************************************/

/*************************************************************/
/* Purpose:                                                  */
/*      Support functions for the constructs-to-c of         */
/*      construct headers and related items.                 */
/*                                                           */
/* Principal Programmer(s):                                  */
/*      Gary D. Riley                                        */
/*                                                           */
/* Contributing Programmer(s):                               */
/*                                                           */
/* Revision History:                                         */
/*                                                           */
/*      6.30: Removed ANSI_COMPILER compilation flag.        */
/*                                                           */
/*      6.40: Removed LOCALE definition.                     */
/*                                                           */
/*            Pragma once and other inclusion changes.       */
/*                                                           */
/*************************************************************/

#ifndef _H_cstrccmp

#pragma once

#define _H_cstrccmp

#include <stdio.h>

   void                           MarkConstructHeaders(int);

#endif /* _H_cstrccmp */




