/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2007                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * 3x3 sudoku compressed grid stream interface
 *
 * Glenn Fowler
 * AT&T Research
 */

#ifndef _SUDZ_H
#define _SUDZ_H		1

#include <stdio.h>

#include "sudata.h"

#define SUDZ_MAGIC	"sudz"

#define SUDZ_READ	1
#define SUDZ_WRITE	2
#define SUDZ_WINDOW	4

#define SUDZ_BANDS	416

typedef struct Sudz_s
{
	uint64_t	index;
	uint32_t	window;
	int		band;
	int		automorphisms;
	unsigned char	grid[81];
#ifdef _SUDZ_PRIVATE_
	_SUDZ_PRIVATE_
#endif
} Sudz_t;

extern const char*	sudzbands[SUDZ_BANDS];

extern Sudz_t*		sudzopen(FILE* _fp_, const char* _path_, int _flags_);
extern int		sudzget(Sudz_t*);
extern int		sudzput(Sudz_t*, unsigned char* _grid_, int _band_, int _automorphisms_);
extern uint64_t		sudzseek(Sudz_t*, int _band_, uint64_t _index_);
extern int		sudzclose(Sudz_t*);

#if !SUDZ
#define sudzopen(s,p,f)		0
#define sudzget(h)		(-1)
#define sudzput(h,g,b,a)	(-1)
#define sudzclose(h)		(-1)
#endif

#endif
