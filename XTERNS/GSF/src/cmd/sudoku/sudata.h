/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2011                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * 3x3 sudoku constant data and basic types
 */

#ifndef _SUDATA_H
#define _SUDATA_H	1

#include <stdlib.h>
#include <string.h>

#if _WIN32 && !_WINIX
#define LL		"I64"
typedef __int64 int64_t;
typedef unsigned __int64 uint64_t;
typedef long int32_t;
typedef unsigned long uint32_t;
#include <process.h>
#define getpid	_getpid
#else
#define LL		"ll"
#include <unistd.h>
#include <inttypes.h>
#endif

typedef struct Canon_s
{
	unsigned short	aut;
	unsigned short	box;
	unsigned char	map[10];
	unsigned char	row[9];
	unsigned char	col[9];
} Canon_t;

typedef struct Grid_s
{
	unsigned short	row[27];
	unsigned short	cell[81];
} Grid_t;

/*
 * constraint vector indices in row/col/box order
 *
 *    9 10 11 12 13 14 15 16 17
 *  0
 *  1   18       19       20
 *  2
 *  3
 *  4   21       22       23
 *  5
 *  6
 *  7   24       25       26
 *  8
 */

typedef struct Sudata_s
{
	const unsigned short	next[512];
	const unsigned short	txen[512];
	const unsigned short	bit[9];
	const unsigned short	blt[10];
	const unsigned char	log[256];
	const unsigned char	constraint[81][3];
	const unsigned char	path[27][9];
	const unsigned char	sees[81][20];
	const unsigned char	swap[18][9][9];
	const unsigned char	bbswap[6][3][6];
	const unsigned char	perm[6][3];
	const unsigned char	part[9][5];
	const unsigned char	count[512];
	const unsigned char	ident[512];
	const unsigned char	ordinal[512];
	const unsigned char	rcb[7][81];
	const unsigned char	band[9];
	const char*		bands[416];
	const char*		bbs[43];
	const unsigned short	gangster[416];
	const unsigned char	gang44[416];
	const unsigned short	bbmax[43];
	const unsigned short	automorphisms[16];
	Grid_t			empty;
} Sudata_t;

#define H(x)			do{if(html)fprintf(stderr,"%s",x);}while(0)
#define T(x)			fprintf(stderr,"%s",x)

#define elementsof(x)		(int)(sizeof(x)/sizeof(x[0]))
#define newof(p,t,n,x)		((p)?(t*)realloc((char*)(p),sizeof(t)*(n)+(x)):(t*)calloc(1,sizeof(t)*(n)+(x)))
#define roundof(x,y)		(((x)+(y)-1)&~((y)-1))

#define streq(a,b)		(*(a)==*(b)&&!strcmp(a,b))
#define strneq(a,b,n)		(*(a)==*(b)&&!strncmp(a,b,n))

#define MAGIC			"#!"

#define BANDPREFIX		"12345678945"

#define ROW(i)			data.rcb[0][i]
#define COL(i)			data.rcb[1][i]
#define BOX(i)			data.rcb[2][i]

#define SEES(u,v)		(ROW(u)==ROW(v)||COL(u)==COL(v)||BOX(u)==BOX(v))
#define ORIENTATION(u,v)	(ROW(u)==ROW(v)?0:COL(u)==COL(v)?1:BOX(u)==BOX(v)?2:3)

#define VALUE(i)	(data.bit[i])
#define CANDIDATE(g,i)	(COUNT(g,i)!=1)
#define COUNT(g,i)	(data.count[CELL(g,i)])
#define FORCED(g,i)	(TALLY(g,i)==1)
#define CELL(g,i)	((g)->cell[i])
#define MASK(g,i)	(CELL(g,i)&(g)->row[data.constraint[i][0]]&(g)->row[data.constraint[i][1]]&(g)->row[data.constraint[i][2]])
#define MOVE(g,i,x)	(CELL(g,i)=(x),PROP(g,i,x))
#define PATH(p,i)	(data.path[p][i])
#define PROP(g,i,x)	((g)->row[data.constraint[i][0]]^=(x),(g)->row[data.constraint[i][1]]^=(x),(g)->row[data.constraint[i][2]]^=(x))
#define SAVE(g,i,x)	(state.hit[i]=CELL(g,i)=(x),PROP(g,i,x))
#define SOLVED(g,i)	(COUNT(g,i)==1)
#define TALLY(g,i)	(data.count[MASK(g,i)])
#define UNDO(g,i,x)	(PROP(g,i,x),CELL(g,i)=0x1ff)

extern Sudata_t		data;

extern char*		subcanon(Canon_t*, Grid_t*, char*, char*, int, int);

#endif
