/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2012                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * Glenn Fowler
 * AT&T Research
 * sudoku solver/generator
 * learn
 * have fun
 */

static const char id[] = "\n@(#)$Id: sudoku (AT&T Research) 2011-11-11 $\n";

#include <stdio.h>
#include <ctype.h>
#include <time.h>

#include "sudata.h"
#include "sudz.h"

static const char command[] = "sudoku";
static const char binmagic[] = SUDZ_MAGIC;
static const char tmpmagic[] = "template";
static const char txtmagic[] = "sudoku";
static const char xmpmagic[] = "exemplar";

#define RATING		"  P?(G?[r]98000+G:(10000+(P5>=1000?(P5/100)*100:P5))*10+\n\
           (B0?10000000+B0*100:0)+\n\
           ((T0||H0)?50000000+((T2+H2)+(T3+H3)*8+(T4+H4)*32)*32:0)):\n\
           F+N*2+B*4+(T2+T3*4+T4*16)*8+(H2+H3*8+H4*32)*64+\n\
	   (W*2+W2+W3*4+W4*16)*256+(X*2+X3+(X4+X5*2+X6*4+X7*8)*4)*128+\n\
	   (Y*2+Y3+(Y4+Y5*2+Y6*4+Y7*8)*16)*128+\n\
	   (K*2+K3+(K4+K5*2+K6*4+K7*8)*16)*512+\n\
	   (Z*2+Z2+Z3*4+Z4*8+Z5*12+Z6*14+Z7*15+Z8*16)*512+\n\
	   O*128*256+(G?(G*(15**M-M1+64)+89985):0)"

#define FORMAT(c)	state.format[c]

#define HARDEST		31
#define HINTONLY	162
#define PERMUTE		100
#define RINIMIZE	10000
#define SHUFFLE		100

#define TEMPLATE	10000
#define TEMPLATE_ENUM	(6*9)
#define TEMPLATE_FILL	60
#define TEMPLATE_SLOP	30

#define MINCLUES	16
#define MAXCLUES	81

#define CONSTRAINT_EXPLICIT	0x0001
#define CONSTRAINT_HIDDEN	0x0002
#define CONSTRAINT_MAGIC	0x0004
#define CONSTRAINT_MANY		0x0008
#define CONSTRAINT_PSEUDO	0x0010
#define CONSTRAINT_QUICK	0x0020
#define CONSTRAINT_RANGE	0x0040
#define CONSTRAINT_SINGLE	0x0080
#define CONSTRAINT_SOLVE	0x0100
#define CONSTRAINT_SUB		0x0200

#define CONSTRAINT_ELEMENTS	64
#define CONSTRAINT_TEXT		(CONSTRAINT_ELEMENTS*8)
#define CONSTRAINT_TYPE		16
#define CONSTRAINT_WEIGHTS	8
#define CONSTRAINT_BIN		4

#define CONSTRAINT_F		0x00001
#define CONSTRAINT_N		0x00002
#define CONSTRAINT_B		0x00004
#define CONSTRAINT_T		0x00008
#define CONSTRAINT_H		0x00010
#define CONSTRAINT_W		0x00020
#define CONSTRAINT_X		0x00040
#define CONSTRAINT_Y		0x00080
#define CONSTRAINT_K		0x00100
#define CONSTRAINT_O		0x00200
#define CONSTRAINT_P		0x00400
#define CONSTRAINT_Q		0x00800
#define CONSTRAINT_G		0x01000
#define CONSTRAINT_A		0x02000	/* 'A' reserved for almost locked sets	*/
#define CONSTRAINT_E		0x04000	/* 'E' reserved for SE compatibility	*/
#define CONSTRAINT_J		0x08000	/* 'J' nrzt				*/
#define CONSTRAINT_L		0x10000	/* 'L' unused				*/
#define CONSTRAINT_U		0x20000	/* 'U' reserved for uniqueness		*/
#define CONSTRAINT_Z		0x40000	/* 'Z' reserved for fish/fin zoology	*/

#define DETAILS(t)	((state.test&(t))?VERBOSE:0)
#define TRACE(f)	(((f)&VERBOSE)?state.verbose:0)

#define STALE(t)	((state.serial.t == (unsigned int)state.count.iterate) ? 0 : (state.serial.t = (unsigned int)state.count.iterate))
#define SERIAL(t,a)	do { if (STALE(t)) { a; } }while (0)

#define RECOUNT()	(memset(&state.count, 0, sizeof(state.count)),state.count.time = usr())

#define BITSET(m,n)	((m)->set=1,((m)->mask[((n)>>6)&0xf])|=(1<<((n)&((1<<6)-1))))
#define BITTST(m,n)	((m)->set&&(((m)->mask[((n)>>6)&0xf])&(1<<((n)&((1<<6)-1)))))

#define ASSUME		0x00001
#define BACKDOOR	0x00002
#define BATCH		0x00004
#define DEPTHFIRST	0x00008
#define ENUMERATE	0x00010
#define HIT		0x00020
#define KNOWN		0x00040
#define MINAPPLY	0x00080
#define OPTIMAL		0x00100
#define OPTI0NAL	0x00200	/* a 0 for windows */
#define NESTED		0x00400
#define RANDOMBEST	0x00800
#define RECORD		0x01000
#define STEP		0x02000
#define UNION		0x04000
#define UNIQUE		0x08000
#define VERBOSE		0x10000

#define ALL		0x7fff

#define LIST		1
#define MINIMAL		2
#define SMALLEST	3

#define STOP_DIAMOND	1
#define STOP_PEARL	2

#define FIRST		(BATCH<<1)
#define GUESS		(BATCH<<2)
#define LOCAL		(BATCH<<3)
#define Y_EDGE		(BATCH<<4)

#define ORDER		(ASSUME|BATCH|STEP)

#define ALREADY		0x0001
#define CLASSIFY	0x0002
#define CLUES		0x0004
#define DELTA		0x0008
#define DISPLAY		0x0010
#define EVERY		0x0020
#define END		(0x0040|CLASSIFY|DISPLAY)
#define IMPLICIT	0x0080
#define MEMBER		0x0100
#define MULTIPLE	0x0200
#define NOEXEC		0x0400
#define ONE		0x0800
#define PATTERNS	0x1000
#define RANDOM		0x2000
#define SEEN		0x4000
#define SET		0x8000

#define EASY		1
#define LISTED		2

#define STATS		(1)
#define VERIFIED	(2)
#define EVAL		(3)
#define INVALID		(-2)
#define NOPUZZLE	(-3)

#define EMPTY		0
#define CLUE		1
#define DONTCARE	2
#define MUST		4

#define GRAMNUM(n)	((n)==1?"":"s")
#define MARK(c,k)	((c)&&(c)!='.'&&(c)!=(k)&&!isalnum(c)&&!isspace(c))
#define XML		"question"

#define P(x,y)		fprintf(stderr,x,y)

#if _WIN32
#if FNV
#define HASH_ADD(h)	(0xcbf29ce484222325)
#else
#define HASH_ADD(h)	(0x9c39c33dUL)
#endif
#define HASH_MPY(h)	((h)*0x00000100000001b3)
#else
#if FNV
#define HASH_ADD(h)	(0xcbf29ce484222325ULL)
#else
#define HASH_ADD(h)	(0x9c39c33dULL)
#endif
#define HASH_MPY(h)	((h)*0x00000100000001b3ULL)
#endif
#define HASHPART(h,c)	(h = HASH_MPY(h) + HASH_ADD(h) + (c))
#define RAND(m)		((HASHPART(state.seed,0)>>8)%(m))

typedef struct Magic_s
{
	int		size;
	unsigned int	count;
	unsigned int	guess;
	unsigned char	cell[81];
	unsigned char	tuple[16*1024];
} Magic_t;

typedef char* (*Show_f)(int c);
typedef void (*Solved_f)(Grid_t*, void*);
typedef void (*Update_f)(Grid_t*, int c);

typedef struct Count_s
{
	unsigned int	apply['Z'-'A'+1];
	unsigned int	progress['Z'-'A'+1];
	unsigned int	size['Z'-'A'+1][CONSTRAINT_WEIGHTS];
	unsigned char	updated['Z'-'A'+1];
	unsigned int	constraint;
	unsigned int	depth;
	unsigned int	group;
	unsigned int	level;
	unsigned int	step;
	unsigned int	symmetry;
	uint64_t	iterate;
	uint64_t	time;
	Magic_t*	magic;
} Count_t;

typedef struct Range_s
{
	int		min;
	int		max;
	int		set;
} Range_t;

typedef struct Keep_s
{
	Range_t		iterate;
} Keep_t;

typedef struct Mask_s
{
	uint64_t	mask[16];
	int		set;
} Mask_t;

typedef struct Drop_s
{
	Mask_t		cycle;
	Mask_t		iterate;
} Drop_t;

typedef struct Psycle_s
{
	Range_t		detail;
	Range_t		keep;
	Range_t		magic;
	Range_t		pair;
	char		buf[32 * 1024];
} Psycle_t;

typedef struct Dihedral_s
{
	int		elements;
	const char*	op;
	const char*	type;
	const char*	description;
} Dihedral_t;

typedef struct Common_s
{
	const char*	name;
	const char*	description;
	const char*	options;
} Common_t;

typedef struct Show_s
{
	const char*	name;
	const char*	description;
} Show_t;

struct Function_s; typedef struct Function_s Function_t;

typedef long (*Function_f)(const Function_t*, char**, long*, Grid_t*, char*, int);

struct Function_s
{
	const char*	name;
	Function_f	function;
	unsigned char	minarity;
	unsigned char	maxarity;
	const char*	description;
};

typedef struct Variable_s
{
	const char*	name;
	int		id;
	int		index;
	const char*	description;
} Variable_t;

struct Assign_s; typedef struct Assign_s Assign_t;
struct Cexpr_s; typedef struct Cexpr_s Cexpr_t;
struct Constraints_s; typedef struct Constraints_s Constraints_t;
struct Order_s; typedef struct Order_s Order_t;
struct Propagate_s; typedef struct Propagate_s Propagate_t;

typedef int (*Propagate_f)(Order_t*, Grid_t*, int, int, unsigned int, Constraints_t*);

struct Item_s; typedef struct Item_s Item_t;

struct Item_s
{
	Item_t*		left;
	Item_t*		right;
	Item_t*		next;
	unsigned long	index;
	unsigned long	part;
	unsigned long	count;
	Grid_t*		grid;
	char		key[1];
};

typedef struct Dict_s
{
	Item_t*		root;
	Item_t*		last;
	Item_t*		head;
	Item_t*		tail;
	unsigned long	count;
	int		encode;
} Dict_t;

typedef struct Method_s
{
	int		id;
	unsigned int	constraint;
	Propagate_f	propagate;
	Show_f		show;
	Update_f	update;
	unsigned int	flags;
	unsigned char	min;
	unsigned char	max;
	unsigned char	single;
	unsigned int	group;
	unsigned int	disable;
	const char*	description;
	unsigned char	defsiz;
	unsigned char	deflim;
	unsigned char	defvar;
	const char*	subids;
} Method_t;

typedef struct Options_s
{
	unsigned short	flags;
	unsigned short	min;
	unsigned short	max;
	unsigned short	set;
} Options_t;

struct Order_s
{
	const Method_t*	method;
	unsigned short	before;
	unsigned char	active;
	unsigned char	commit;
	unsigned char	group;
	unsigned char	first;
	unsigned char	force;
	unsigned char	index;
	unsigned char	offset;
	unsigned char	last;
	unsigned char	min;
	unsigned char	max;
	unsigned char	lim;
	unsigned char	var;
	char		sub;
	Constraints_t*	constraints;
	Options_t*	options;
};

struct Assign_s
{
	Assign_t*	next;
	Item_t*		var;
	char		expr[1];
};

struct Constraints_s
{
	unsigned int	constraints;
	unsigned int	force;
	unsigned int	guess;
	unsigned int	iterations;
	unsigned int	part;
	unsigned int	must;
	unsigned int	size;
	const char*	type;
	char*		expr;
	Constraints_t*	next;
	Assign_t*	assign;
	short		valid[CONSTRAINT_WEIGHTS+2];
	char		text[CONSTRAINT_TEXT];
	Order_t		order[CONSTRAINT_ELEMENTS];
};

struct Cexpr_s
{
	int		op;
	Cexpr_t*	left;
	Cexpr_t*	right;
	Cexpr_t*	ternary;
	Constraints_t*	constraints;
};

typedef struct Trip_s
{
	unsigned short	a;
	unsigned short	b;
	unsigned short	c;
	unsigned short	d;
	unsigned char	ab;
	unsigned char	bc;
	unsigned char	cd;
} Trip_t;

typedef struct Edge_s
{
	struct Edge_s*	next;
	unsigned char	cell;
	unsigned char	orientation;
	unsigned char	segment;
	unsigned char	avoid;
	unsigned short	type;
} Edge_t;

typedef struct Vertex_s
{
	short		busy;
	unsigned short	p;
	unsigned short	q;
	unsigned short	x;
	unsigned short	y;
	unsigned short	z;
	unsigned char	i;
	unsigned char	loops;
	unsigned char	loop[16];
	Edge_t*		next;
	Edge_t*		edge[9];
} Vertex_t;

typedef struct Optimal_s
{
	int		length;
	int		candidates;
	int		constrained;
	int		contradiction;
	int		v;
	int		j;
	int		q;
	int		y;
	int		test;
	char		buf[2][1024];
} Optimal_t;

typedef struct Save_s
{
	Edge_t		chain[81];
	Vertex_t	pair[81];
	unsigned char	segment[9 * 9 * 9 * 9];
} Save_t;

typedef struct Move_s
{
	Order_t*	order;
	unsigned short	group;
	unsigned short	mask;
	unsigned short	part;
	unsigned char	assign;
	unsigned char	cell;
	unsigned char	op;
	unsigned char	size;
} Move_t;

typedef struct Moves_s
{
	Move_t		base[9 * 9 * 9 * 9];
	Move_t*		trie;
	Move_t*		part;
	Move_t*		move;
} Moves_t;

typedef struct Knot_s
{
	unsigned char	a;
	unsigned char	c;
	unsigned char	z;
} Knot_t;

struct Propagate_s
{
	Grid_t		easy;
	Grid_t		try;
	Grid_t		tmp;

	Moves_t		moves;

	Optimal_t	optimal;

	char*		ps;

	unsigned int	cycle;
	unsigned int	pairs;
	unsigned int	part;
	unsigned int	segments;
	unsigned int	step;
	unsigned int	trips;

	int		batch;
	int		force;
	int		knots;

	unsigned short	group;

	unsigned char	sum[10];
	unsigned char	tst[27];
	unsigned char	forced[81];
	unsigned char	best[81];

	unsigned short	join[6];
	unsigned short	tuple[6];
	unsigned short	batched[81];

	short		hx[9];
	short		hy[6];

	struct
	{
	int		any;
	int		ai;
	int		av;
	int		moves;
	struct
	{
	unsigned char	cell;
	unsigned char	size;
	}		move[81];
	unsigned char	z[81][81];
	unsigned short	ab[81][81];
	}		y;

	Vertex_t	vertex[81];
	Vertex_t	pair[81];
	Edge_t		chain[81];
	Save_t		save;
	unsigned char	clear[81];
	unsigned char	segment[9 * 9 * 9 * 9];
	unsigned short	spin[81];
	unsigned short	wpin[81];
	unsigned short	strong[81][81];
	unsigned short	pos[3][9][9];
	unsigned short	link[9][81][81];
	unsigned char	size[9][81][81];
	Trip_t		trip[9 * 9 * 9 * 9];
	unsigned int	adj[81][81];
	Knot_t		knot[4*81];

	Edge_t		edge[2 * 81 * 81 * 9];
	Edge_t*		nextedge;
};

typedef struct Input_s
{
	char**		argv;
	char*		next;
	FILE*		fp;
	Sudz_t*		sudz;
	char*		label;
	char*		path;
	char*		xml;
	struct Input_s*	prev;
	uint64_t	input;
	uint64_t	ordinal;
	uint64_t	puzzle;
	uint64_t	begin;
	unsigned long	line;
	int		band;
	int		cut;
	int		exemplar;
	int		first;
	int		original;
	int		project;
	int		separator;
	int		sideline;
	int		sidesave;
	int		template;
	char		side[32][64];
	char		ident[128];
	char		buf[4*1024];
	unsigned char	tmpcell[81];
	Grid_t		finned;
} Input_t;

typedef struct Rookeries_s
{
	unsigned int	rookery[46656][3];
	unsigned int	next[10];
} Rookeries_t;

typedef struct CV_s
{
	unsigned char	c;
	unsigned char	v;
} CV_t;

typedef struct Tuple_s
{
	unsigned int	beg;
	unsigned int	end;
} Tuple_t;

struct Gen_s; typedef struct Gen_s Gen_t;

struct Gen_s
{
	Gen_t*		group;
	int		value;
	unsigned int	repeat;
	unsigned int	flags;
};

typedef struct Distance_s
{
	unsigned char	distance;
	unsigned char	dihedral;
	unsigned char	pattern[81];
} Distance_t;

struct Uniq_s; typedef struct Uniq_s Uniq_t;

typedef struct State_s
{
	unsigned char	px;
	unsigned char	pr[9];
	unsigned char	pc[9];
	unsigned char	pv[9];

	Canon_t		map;
	Canon_t*	sym;

	Distance_t	dist;

	Input_t*	input;

	Input_t		catalog;
	Input_t		top;

	Sudz_t*		sudz;

	Dict_t*		dict;
	Item_t*		item;
	Grid_t*		key;

	struct
	{
	char*		xml;
	int		cut;
	int		separator;
	}		push;

	unsigned int	choices[10];

	unsigned char	options['z'-'a'];
	unsigned char	mx[81];

	struct
	{
	Cexpr_t*	extra;
	Cexpr_t*	which;
	Constraints_t	magic;
	Constraints_t	quick;
	Constraints_t	solve;
	}		constraints;

	struct
	{
	Grid_t		grid;
	long		value;
	}		exrate;

	struct
	{
	unsigned int	positions;
	unsigned int	TH;
	unsigned int	XY;
	unsigned int	YK;
	}		serial;

	struct
	{
	char		all[CONSTRAINT_TEXT];
	char		explicit[CONSTRAINT_TEXT];
	char		list[CONSTRAINT_TEXT];
	char		solve[CONSTRAINT_TEXT];
	}		text;

	struct
	{
	unsigned short	group;
	char		method;
	unsigned char	placement;
	unsigned char	assign;
	unsigned char	size;
	unsigned char	index;
	}		trace[9*81];

	const Method_t*	method;
	const Common_t*	common;

	unsigned char	pick[10][81];

	unsigned short	tophit[81];
	unsigned short*	hit;
	unsigned short	pos[3][9][9];

	Gen_t		gen[64];

	struct
	{
	Tuple_t		que[10];
	CV_t		cv[81*81];
	}		tuples;

	char		tmp[128];
	char		tracebuf[1024];

	char*		field[128];
	char*		filter;
	char*		format[256];
	char*		label;
	char*		rating;
	char*		schema[128];
	char*		string;
	char*		title;
	char*		xml;

	struct
	{
	Grid_t*		grid;
	unsigned short*	hit;
	unsigned long*	count;
	char*		buf;
	int		size;
	}		call;

	struct
	{
	char*		eq;
	char*		old;
	char*		ne;
	}		op;

	unsigned int	enough;
	unsigned int	fields;
	unsigned int	flags;
	unsigned int	iterations;
	unsigned int	solutions;
	unsigned int	worse;

	unsigned long	arrangement;
	unsigned long	classify;
	unsigned long	complete;
	unsigned long	entries;
	unsigned long	permute;
	unsigned long	shuffle;

	int		all;
	int		batch;
	int		boxes;
	int		contradictions;
	int		cut;
	int		debug;
	int		degree;
	int		easy;
	int		errors;
	int		generate_op;
	int		gencode;
	int		genoff;
	int		group;
	int		groups;
	int		header;
	int		hint;
	int		incremental;
	int		level;
	int		linger;
	int		magic;
	int		maxclues;
	int		minclues;
	int		novalue;
	int		octdoku;
	int		pass;
	int		permutation;
	int		postscript;
	int		rinimize;
	int		rinlist;
	int		same;
	int		separator;
	int		stop;
	int		symgen;
	int		symmetry;
	int		symoff;
	int		symsiz;
	int		template;
	int		test;
	int		traced;
	int		transpose;
	int		verbose;
	int		width;

	long		minimize;

	void*		solved_data;

	int		(*generate_init)(void);
	int		(*generate)(Grid_t*, Grid_t*, int);
	void		(*generate_done)(void);

	Solved_f	solved;

	int		(*transform_init)(void);
	int		(*transform)(Grid_t*, Grid_t*);
	void		(*transform_done)(void);

	struct
	{
	unsigned char	minimal;
	unsigned char	symmetry;
	}		minimized;

	struct
	{
	int		all;
	int		distance;
	int		op;
	int		similarity;
	Grid_t*		grid;
	}		compare;

	Keep_t		keep;
	Drop_t		drop;
	Dict_t		free;
	Dict_t		bandits;
	Dict_t		bbs;
	Dict_t		vars;
	Dict_t		soldict;
	Dict_t		subdict;
	Dict_t		uniq_format;
	Dict_t		uniq_grid;

	Psycle_t	psycle;

	Rookeries_t*	rookeries;

	Grid_t		sol[3];

	unsigned char	hardest[CONSTRAINT_ELEMENTS]['z'-'a'+1];
	unsigned char	referenced['Z'-'A'+1];

	Count_t		count;
	Count_t		stats;
	Count_t		total;

	int64_t		loop;
	int64_t		multiple;
	int64_t		nodes;
	int64_t		per;
	int64_t		related;
	int64_t		scans;
	int64_t		searched;
	int64_t		shown;
	int64_t		uniqued;
	int64_t		valid;

	uint64_t	list;
	uint64_t	previous;
	uint64_t	seed;
	uint64_t	seed_init;
	uint64_t	start;
} State_t;

static const unsigned char	top[3][6][9] =
{
    {
	{  0,  0,  0, 27, 27, 27, 54, 54, 54 },
	{  3,  3,  3, 30, 30, 30, 57, 57, 57 },
	{  6,  6,  6, 33, 33, 33, 60, 60, 60 },
	{  0,  0,  0,  0,  0,  0,  0,  0,  0 },
	{  0,  0,  0,  0,  0,  0,  0,  0,  0 },
	{  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    },
    {
	{  0,  0,  0,  3,  3,  3,  6,  6,  6 },
	{ 27, 27, 27, 30, 30, 30, 33, 33, 33 },
	{ 54, 54, 54, 57, 57, 57, 60, 60, 60 },
	{  0,  0,  0,  0,  0,  0,  0,  0,  0 },
	{  0,  0,  0,  0,  0,  0,  0,  0,  0 },
	{  0,  0,  0,  0,  0,  0,  0,  0,  0 },
    },
    {
	{  0,  0,  0, 27, 27, 27, 54, 54, 54 },
	{  9,  9,  9, 36, 36, 36, 63, 63, 63 },
	{ 18, 18, 18, 45, 45, 45, 72, 72, 72 },
	{  0,  3,  6,  0,  3,  6,  0,  3,  6 },
	{  1,  4,  7,  1,  4,  7,  1,  4,  7 },
	{  2,  5,  8,  2,  5,  8,  2,  5,  8 },
    }
};

static unsigned short	claim[512] =
{
	0, 0, 0,
	0x701, /* 000000011 */
	0,
	0x701, /* 000000101 */
	0x701, /* 000000110 */
	0x701, /* 000000111 */
	0,
	0x404, /* 000001001 */
	0, 0, 0, 0, 0, 0, 0, 0,
	0x405, /* 000010010 */
	0, 0, 0, 0, 0,
	0x702, /* 000011000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x406, /* 000100100 */
	0, 0, 0,
	0x702, /* 000101000 */
	0, 0, 0, 0, 0, 0, 0,
	0x702, /* 000110000 */
	0, 0, 0, 0, 0, 0, 0,
	0x702, /* 000111000 */
	0, 0, 0, 0, 0, 0, 0, 0,
	0x404, /* 001000001 */
	0, 0, 0, 0, 0, 0,
	0x404, /* 001001000 */
	0x404, /* 001001001 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0,
	0x405, /* 010000010 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x405, /* 010010000 */
	0,
	0x405, /* 010010010 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 011000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0,
	0x406, /* 100000100 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x406, /* 100100000 */
	0, 0, 0,
	0x406, /* 100100100 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 101000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 110000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 111000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

static unsigned short	claim_FN[512] =
{
	0,
	0x741, /* 000000001 */
	0x751, /* 000000010 */
	0x701, /* 000000011 */
	0x761, /* 000000100 */
	0x701, /* 000000101 */
	0x701, /* 000000110 */
	0x701, /* 000000111 */
	0x742, /* 000001000 */
	0x404, /* 000001001 */
	0, 0, 0, 0, 0, 0,
	0x752, /* 000010000 */
	0,
	0x405, /* 000010010 */
	0, 0, 0, 0, 0,
	0x702, /* 000011000 */
	0, 0, 0, 0, 0, 0, 0,
	0x762, /* 000100000 */
	0, 0, 0,
	0x406, /* 000100100 */
	0, 0, 0,
	0x702, /* 000101000 */
	0, 0, 0, 0, 0, 0, 0,
	0x702, /* 000110000 */
	0, 0, 0, 0, 0, 0, 0,
	0x702, /* 000111000 */
	0, 0, 0, 0, 0, 0, 0,
	0x743, /* 001000000 */
	0x404, /* 001000001 */
	0, 0, 0, 0, 0, 0,
	0x404, /* 001001000 */
	0x404, /* 001001001 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0,
	0x753, /* 010000000 */
	0,
	0x405, /* 010000010 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x405, /* 010010000 */
	0,
	0x405, /* 010010010 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 011000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x763, /* 100000000 */
	0, 0, 0,
	0x406, /* 100000100 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x406, /* 100100000 */
	0, 0, 0,
	0x406, /* 100100100 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 101000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 110000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0x703, /* 111000000 */
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
};

static const unsigned char	stake[3][6][6] =
{
	{
		{  9, 10, 11, 18, 19, 20 },
		{  0,  1,  2, 18, 19, 20 },
		{  0,  1,  2,  9, 10, 11 },
		{  0,  0,  0,  0,  0,  0 },
		{  0,  0,  0,  0,  0,  0 },
		{  0,  0,  0,  0,  0,  0 }
	},
	{
		{  1,  2, 10, 11, 19, 20 },
		{  0,  2,  9, 11, 18, 20 },
		{  0,  1,  9, 10, 18, 19 },
		{  0,  0,  0,  0,  0,  0 },
		{  0,  0,  0,  0,  0,  0 },
		{  0,  0,  0,  0,  0,  0 }
	},
	{
		{  3,  4,  5,  6,  7,  8 },
		{  0,  1,  2,  6,  7,  8 },
		{  0,  1,  2,  3,  4,  5 },
		{ 27, 36, 45, 54, 63, 72 },
		{  0,  9, 18, 54, 63, 72 },
		{  0,  9, 18, 27, 36, 45 },
	},
};

static const unsigned int	hinge[512] =
{
	0000000,0000000,0000000,0000000,0000000,0000000,0000000,0161514,
	0000000,0000000,0000000,0542114,0000000,0642114,0002114,0002114,
	0000000,0000000,0000000,0542115,0000000,0002115,0652115,0002115,
	0000000,0542124,0542125,0005421,0002126,0000021,0000021,0000021,
	0000000,0000000,0000000,0002116,0000000,0642116,0652116,0002116,
	0000000,0642124,0002125,0000021,0642126,0006421,0000021,0000021,
	0000000,0002124,0652125,0000021,0652126,0000021,0006521,0000021,
	0262524,0002124,0002125,0000021,0002126,0000021,0000021,0000021,
	0000000,0000000,0000000,0543114,0000000,0643114,0003114,0003114,
	0000000,0342414,0005414,0005414,0006414,0006414,0000014,0000014,
	0000000,0005424,0005435,0000054,0000000,0000000,0000000,0000000,
	0543224,0005424,0000054,0000054,0000000,0000000,0000000,0000000,
	0000000,0006424,0000000,0000000,0006436,0000064,0000000,0000000,
	0643224,0006424,0000000,0000000,0000064,0000064,0000000,0000000,
	0003224,0000024,0000000,0000000,0000000,0000000,0000000,0000000,
	0003224,0000024,0000000,0000000,0000000,0000000,0000000,0000000,
	0000000,0000000,0000000,0543115,0000000,0003115,0653115,0003115,
	0000000,0005434,0005425,0000054,0000000,0000000,0000000,0000000,
	0000000,0005415,0352515,0005415,0006515,0000015,0006515,0000015,
	0543225,0000054,0005425,0000054,0000000,0000000,0000000,0000000,
	0000000,0000000,0006525,0000000,0006536,0000000,0000065,0000000,
	0003225,0000000,0000025,0000000,0000000,0000000,0000000,0000000,
	0653225,0000000,0006525,0000000,0000065,0000000,0000065,0000000,
	0003225,0000000,0000025,0000000,0000000,0000000,0000000,0000000,
	0000000,0543134,0543135,0005431,0003136,0000031,0000031,0000031,
	0543234,0005434,0000054,0000054,0000000,0000000,0000000,0000000,
	0543235,0000054,0005435,0000054,0000000,0000000,0000000,0000000,
	0005432,0000054,0000054,0000054,0000000,0000000,0000000,0000000,
	0003236,0000000,0000000,0000000,0000036,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000000,0000000,0000000,0003116,0000000,0643116,0653116,0003116,
	0000000,0006434,0000000,0000000,0006426,0000064,0000000,0000000,
	0000000,0000000,0006535,0000000,0006526,0000000,0000065,0000000,
	0003226,0000000,0000000,0000000,0000026,0000000,0000000,0000000,
	0000000,0006416,0006516,0000016,0362616,0006416,0006516,0000016,
	0643226,0000064,0000000,0000000,0006426,0000064,0000000,0000000,
	0653226,0000000,0000065,0000000,0006526,0000000,0000065,0000000,
	0003226,0000000,0000000,0000000,0000026,0000000,0000000,0000000,
	0000000,0643134,0003135,0000031,0643136,0006431,0000031,0000031,
	0643234,0006434,0000000,0000000,0000064,0000064,0000000,0000000,
	0003235,0000000,0000035,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0643236,0000064,0000000,0000000,0006436,0000064,0000000,0000000,
	0006432,0000064,0000000,0000000,0000064,0000064,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000000,0003134,0653135,0000031,0653136,0000031,0006531,0000031,
	0003234,0000034,0000000,0000000,0000000,0000000,0000000,0000000,
	0653235,0000000,0006535,0000000,0000065,0000000,0000065,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0653236,0000000,0000065,0000000,0006536,0000000,0000065,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0006532,0000000,0000065,0000000,0000065,0000000,0000065,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0363534,0003134,0003135,0000031,0003136,0000031,0000031,0000031,
	0003234,0000034,0000000,0000000,0000000,0000000,0000000,0000000,
	0003235,0000000,0000035,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0003236,0000000,0000000,0000000,0000036,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
	0000032,0000000,0000000,0000000,0000000,0000000,0000000,0000000,
};

static const Show_t	minimal[] =
{
	"",	"",
	"m",	"minimal",
	"M",	"symmetric minimal",
};

#define Z00	0x00	/* e	identity	*/
#define Z01	0x01	/* a	90 rotation	*/
#define Z02	0x02	/* a^2	180 rotation	*/
#define Z03	0x04	/* a^3	270 rotation	*/
#define Z10	0x08	/* b	vertical	*/
#define Z11	0x10	/* ba	antidiagonal	*/
#define Z12	0x20	/* ba^2	horizontal	*/
#define Z13	0x40	/* ba^3	diagonal	*/

static Dihedral_t	dihedral[] =
{
	Z00,					"-",	"-",	"none",
	Z00|Z01|Z02|Z03|Z10|Z11|Z12|Z13,	"f",	"I",	"full dihedral",
	Z00|Z01|Z02|Z03,			"r",	"II",	"full rotational (90 180 270 degrees)",
	Z00|Z10|Z02|Z12,			"hv",	"III",	"horizontal and vertical",
	Z00|Z11|Z02|Z13,			"da",	"IV",	"diagonal and antidiagonal",
	Z00|Z02,				"p",	"V",	"pi rotational (180 degrees)",
	Z00|Z10,				"v",	"VI",	"vertical",
	Z00|Z12,				"h",	"VI",	"horizontal",
	Z00|Z13,				"d",	"VII",	"diagonal (main)",
	Z00|Z11,				"a",	"VII",	"antidiagonal",
};

static long	determined(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	exrate(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	implicit(const Function_t*, char**, long*, Grid_t*, char*, int);
static char*	list(Grid_t*, int, int, Canon_t*);
static long	maximum(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	minimum(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	mutable(const Function_t*, char**, long*, Grid_t*, char*, int);
static int	push(Input_t*);
static long	required(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	superfluous(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	symmetrize_expr(const Function_t*, char**, long*, Grid_t*, char*, int);
static long	uniq(const Function_t*, char**, long*, Grid_t*, char*, int);

static const Function_t		function[] =
{
	"exrate",	exrate,		0,	1,
	        "exrate([SAMPLE]): suexrate style rating that is the average\n\
                 number of nodes for a depth-first singles only backtrack\n\
		 solver over SAMPLE (default 100) pseudo random permutations\n\
		 of the current puzzle. Suexrate counts Knuth DLX nodes.\n\
		 sudoku(1) is not DLX based and requires on average 9X less\n\
		 nodes per solution; the sudoku(1) node counts are multiplied\n\
		 by 9 to approximate suexrat(1).",

	"determined",	determined,	0,	0,
	        "Compute the number of candidate cell values determined by\n\
                 eliminating candidates that cause any constraint to fail.\n\
                 '%(determined())g' lists the grid with determined cells\n\
                 included.",

	"implicit",	implicit,	0,	0,
	        "Determine the cell values implied by the constraints in\n\
                 scope.  '%(implicit())g' lists the grid of implicit cells.",

	"max",		maximum,	1,	2,
	        "max([index,]expression): return 1 if expression is greater\n\
                 than the maximum value [for index 1..9], 0 otherwise.\n\
                 For the final -Ff format max([index]) returns the max value.",

	"min",		minimum,	1,	2,
	        "min([index,]expression): return 1 if expression is less\n\
                 than the minimum value [for index 1..9], 0 otherwise.\n\
                 For the final -Ff format min([index]) returns the min value.",

	"mutable",	mutable,	0,	0,
	        "Determine the clues that have more than one value that results\n\
                 in one solution. The format '%(mutable())h' lists the\n\
                 mutable clue candidate values. The operands are:\n\
		       ()  Number of mutable clues.\n\
		    (max)  Maximum number of mutable values for one clue.\n\
		 (maxuni)  Maximum number of unique puzzles for one clue.\n\
		    (pos)  Mutable clue positions.\n\
		    (sig)  Number of mutable candidates by clue, high to low.\n\
		 (siguni)  Number of unique puzzles by clue, high to low.\n\
		    (tot)  Total number of mutable candidate values.\n\
		 (totuni)  Number of unique puzzles induced by mutable clues.",

	"required",	required,	0,	0,
	        "Determine the non-mutable clues and count the number of\n\
                 solutions when each clue is omitted. The format\n\
		 '%(required())h' lists number of solutions when each clue is\n\
		 omitted, 0 for non-clue cells. The operands are:\n\
		       ()  Number of required clues.\n\
		    (max)  Maximum number of solutions.\n\
		 (maxpos)  Cell position with the maximum solutions.\n\
		    (min)  Minimum number of solutions.\n\
		 (minpos)  Cell position with the minimum solutions.\n\
		    (sig)  Number of solutions, high to low.\n\
		    (tot)  Total number of solutions.",

	"superfluous",	superfluous,	0,	0,
	        "Determine the clues that result in one solution when omitted.\n\
                 The format '%(superfluous())g' lists the grid of superfluous\n\
                 clues. The operands are:\n\
		       ()  Number of superfluous clues.\n\
		    (pos)  Superfluous clue positions.",

	"symmetrize",	symmetrize_expr,	0,	0,
	        "The highest dihedral symmetry order for the current puzzle.",

	"uniq",		uniq,		0,	0,
	        "uniq() returns 1 if the current puzzle is different up to\n\
                 isomorphism from the previously listed puzzles. uniq(format)\n\
                 returns 1 if the -f format result is different from previous\n\
                 format results. Too many different puzzles/formats may\n\
		 may exhaust memory.",
};

static const Variable_t		variable[] =
{
	"boxline",	'B','2', "Candidates in box confined to one row/col.",
	"linebox",	'B','3', "Candidates in row/col confined to one box.",
	"clues",	'C','0', "The number of clues.",
	"minimal",	'C','1', "1: minimal (irreducable), 2: symmetric minimal, 0: otherwise.",
	"inherited",	'C','2', "The number of forced moves inherited by the last constraint.",
	"candidates",	'C','3', "The number of initial (pencilmark) candidates.",
	"begsteps",	'D','0', "Begin game singles steps.",
	"begsingles",	'D','1', "Begin game singles placements.",
	"begbasic",	'D','2', "Begin game basic constraint placements.",
	"endsteps",	'D','3', "End game singles steps.",
	"endsingles",	'D','4', "End game singles placements.",
	"endbasic",	'D','5', "End game basic constraint placements.",
	"guesses",	'G','0', "The number of backtrack guesses.",
	"depth",	'G','2', "Backtrack depth, 0 for no backtracking.",
	"steps",	'I','0', "The number of constraint propagation iterations.",
	"group",	'I','n', "The number of steps for constraint group 1<=n<=8.",
	"backdoor",	'M','0', "The backdoor (magic cell set) size.",
	"magic",	'M','1', "The number of backdoors (magic cell sets).",
	"guesstimate",	'M','2', "The estimated number of guesses before a backdoor hit.",
	"propositions",	'P','2', "The number of proposition net propositions.",
	"luck",		'P','3', "The number of proposition net solutions.",
	"contradictions",'P','4', "The number of proposition net contradictions.",
	"iterations",	'P','5', "The number of proposition net iterations.",
	"girth",	'P','6', "Minimum maximum proposition net iteration.",
	"degree",	'P','7', "Minimum maximum proposition candidate degree.",
	"nested",	'P','8', "2 for nested propositions, 1 for single propositions.",
	"work",		'P','9', "The average amount of successful proposition iterations.",
	"rating",	'R','0', "The rating from 1 (very easy) to 99999 (very difficult).",
	"symmetric",	'S','0', "The dihedral symmetry order, 0 if not symmetric.",
	"symmetry",	'S','0', "Equivalent to symmetric.",
	"dihedral",	'S','1', "The dihedral symmetry operation.",
	"valid",	'V','0', "0 for invalid, the constraint index or 1 otherwise.",
};

static const char	type[] = "rcb";

static const char	name[] = ".123456789ABCDEFGHIJKLMNOPQR";
static const char	temp[] = ".?O?X";

static char		exmp[10] = { '.' };

#define TEXEM(c,v)	exmp[data.ident[texem[c]=(v)]]=(c)

#define EXMP_NOT	0x001
#define EXMP_DONTCARE	0x002
#define EXMP_FIN	0x004
#define EXMP_ENDOFIN	0x008
#define EXMP_NOFIN_ELIM	0x010
#define EXMP_ELIM	0x020
#define EXMP_BASE_ELIM	0x040

#define EXMPINIT() \
	do \
	{ \
		int		i; \
		unsigned char*	s; \
		if (!texem[EXMP_NOT] && (s = (unsigned char*)FORMAT('y'))) \
			for (i = 0; i < 9 && s[i]; i++) \
				TEXEM(s[i], 1<<i); \
	} while (0)

static unsigned short	texem[256];
static unsigned short	token[256];

static const Method_t*	methods['Z'-'A'+1];

#define PATH(p,i)	(data.path[p][i])
#define TALLY(g,i)	(data.count[MASK(g,i)])
#define CANDIDATE(g,i)	(COUNT(g,i)!=1)
#define SOLVED(g,i)	(COUNT(g,i)==1)
#define FORCED(g,i)	(TALLY(g,i)==1)

#define RC(i)		ROW(i)+1,COL(i)+1
#define INDEX(i,j)	((i)*9+(j))

#define PROGRESS(c,n)		(APPLY(c,1),ADJUST(c,n))
#define APPLY(c,n)		(state.count.apply[(c)-'A']+=(n))
#define ADJUST(c,n)		(state.count.progress[(c)-'A']+=(n))
#define ACME(c,z,n)		((state.count.size[(c)-'A'][z]<(n))?(state.count.size[(c)-'A'][z]=(n)):0)
#define ZERO(c,z)		(state.count.size[(c)-'A'][z]=0)
#define WEIGHT(c,z,n)		(state.count.size[(c)-'A'][z]+=(n))
#define INSTANCE(o,z,n)		(WEIGHT((o)->method->id,z,n),state.hardest[(o)->offset]['a'-'a']+=(n))
#define GROUP(c,g,n)		((g)==1?ADJUST(c,n):(state.count.size[(c)-'A'][(g)-2]+=(n)))

#define APPLIED(c)		(state.stats.apply[(c)-'A'])
#define APPLIED_COUNT(c)	(state.count.apply[(c)-'A'])
#define APPLIED_TOTAL(c)	(state.total.apply[(c)-'A'])
#define PLACED(c)		(state.stats.progress[(c)-'A'])
#define PLACED_COUNT(c)		(state.count.progress[(c)-'A'])
#define PLACED_TOTAL(c)		(state.total.progress[(c)-'A'])
#define SIZE(c,z)		(state.stats.size[(c)-'A'][z])

#define OPTSET(c,v)		(state.options[(c)-'a']=(v))
#define OPTGET(c)		(state.options[(c)-'a'])

#define ROOK(v,i1,i2,i3,i4,i5,i6,i7,i8,i9) \
	(((v)[0]=((1<<i1)<<18)|((1<<i2)<<9)|(1<<i3)),\
	 ((v)[1]=((1<<i4)<<18)|((1<<i5)<<9)|(1<<i6)),\
	 ((v)[2]=((1<<i7)<<18)|((1<<i8)<<9)|(1<<i9)))

#define ROOKERIES()	(state.rookeries?state.rookeries:rookeries())

#define MANY(c)		(!!(methods[c-'A']->flags&CONSTRAINT_MANY))
#define SHOW(c)		(methods[c-'A']->show?(*methods[c-'A']->show)(c-'A'):(char*)0)
#define UPDATE(g,c) \
	do \
	{ \
		if (methods[c-'A']->update && !state.stats.updated[c-'A']) \
		{ \
			state.stats.updated[c-'A'] = 1; \
			(*methods[c-'A']->update)(g, c-'A'); \
		} \
	} while (0)

static const char	ps_header[] = "\
/grid {\n\
	0 setlinewidth\n\
	60 294 moveto\n\
	8 {\n\
		486 0 rlineto\n\
		-486 54 rmoveto\n\
	} repeat\n\
	114 240 moveto\n\
	8 {\n\
		0 486 rlineto\n\
		54 -486 rmoveto\n\
	} repeat\n\
	stroke\n\
	2 setlinewidth\n\
	60 402 moveto\n\
	2 {\n\
		486 0 rlineto\n\
		-486 162 rmoveto\n\
	} repeat\n\
	222 240 moveto\n\
	2 {\n\
		0 486 rlineto\n\
	162 -486 rmoveto\n\
	} repeat\n\
	stroke\n\
	4 setlinewidth\n\
	60 240 moveto\n\
	486 0 rlineto\n\
	0 486 rlineto\n\
	-486 0 rlineto\n\
	closepath\n\
	stroke\n\
} def\n\
/clue {\n\
	/v exch def\n\
	/c exch def\n\
	/r exch def\n\
	c 54 mul 60 add 36 sub 10 r sub 54 mul 240 add 40 sub moveto\n\
	(0123456789) v 1 getinterval show\n\
} def\n\
/hint {\n\
	/v exch def\n\
	/c exch def\n\
	/r exch def\n\
	c 54 mul 60 add 36 sub 10 r sub 54 mul 240 add 40 sub moveto\n\
	v {\n\
		gsave\n\
        	0.6 setgray\n\
		0.35 0.35 scale\n\
		18 20 rmoveto\n\
		dup\n\
		dup\n\
		[ 0 -40 0 40 -40 0 40 -40 0 40 ] exch get\n\
		exch\n\
		[ 0 40 40 40 0 0 0 -40 -40 -40 ] exch get\n\
		rmoveto\n\
		(0123456789) exch 1 getinterval show\n\
		grestore\n\
	} forall\n\
} def\n\
/candidate {\n\
	/v exch def\n\
	/c exch def\n\
	/r exch def\n\
	c 54 mul 60 add 36 sub 10 r sub 54 mul 240 add 40 sub moveto\n\
	v {\n\
		gsave\n\
		0.35 0.35 scale\n\
		28 32 rmoveto\n\
		dup\n\
		dup\n\
		[ 0 -40 0 40 -40 0 40 -40 0 40 ] exch get\n\
		exch\n\
		[ 0 40 40 40 0 0 0 -40 -40 -40 ] exch get\n\
		rmoveto\n\
		currentpoint\n\
		/ac exch def\n\
		/ar exch def\n\
		20 0 rmoveto\n\
		ar ac 20 0 360 arc\n\
		stroke\n\
		grestore\n\
	} forall\n\
} def\n\
/node {\n\
	gsave\n\
	currentpoint 2 0 360 arc\n\
	stroke\n\
	grestore\n\
} def\n\
/line {\n\
	/bc exch def\n\
	/br exch def\n\
	/ac exch def\n\
	/ar exch def\n\
	4 setlinewidth\n\
	ac 54 mul 60 add 26 sub 10 ar sub 54 mul 240 add 28 sub moveto node\n\
	bc 54 mul 60 add 26 sub 10 br sub 54 mul 240 add 28 sub lineto node\n\
	stroke\n\
} def\n\
/coincident {\n\
	/bc exch def\n\
	/br exch def\n\
	/ac exch def\n\
	/ar exch def\n\
	4 setlinewidth\n\
	ac 54 mul 60 add 26 sub 10 ar sub 54 mul 240 add 28 sub moveto node\n\
	currentpoint\n\
	ac bc eq { /xr -28 def } { ac bc lt { /xr 0 def } { /xr -56 def } ifelse } ifelse\n\
	ar br eq { /xc -28 def } { ar br lt { /xc 0 def } { /xc -56 def } ifelse } ifelse\n\
	bc ac add 2 div 54 mul 60 add xc add 10 br ar add 2 div sub 54 mul 240 add xr add\n\
	bc 54 mul 60 add 26 sub 10 br sub 54 mul 240 add 28 sub curveto node\n\
	stroke\n\
} def\n\
/C 4 def /D 5 def\n\
/edge {\n\
	dup\n\
	/c exch def\n\
	c C eq { pop } if\n\
	/t exch def\n\
	gsave\n\
	  t 3 eq { 0.9 0.0 0.0 setrgbcolor }\n\
	{ t 1 eq { 0.0 0.9 0.0 setrgbcolor }\n\
	{ t 2 eq { 0.0 0.0 0.9 setrgbcolor }\n\
	         { 0.9 0.9 0.0 setrgbcolor }\n\
		 ifelse } ifelse } ifelse\n\
	c C eq { coincident } { line } ifelse\n\
	grestore\n\
} def\n\
/mark {\n\
	gsave\n\
	/c exch def\n\
	/r exch def\n\
	c 54 mul 60 add 36 sub 10 r sub 54 mul 240 add 40 sub moveto\n\
	-14 -10 rmoveto\n\
	2 setlinewidth\n\
	0 46 rlineto\n\
	46 0 rlineto\n\
	0 -46 rlineto\n\
	closepath\n\
	stroke\n\
	grestore\n\
} def\n\
/clear {\n\
	gsave\n\
	/v exch def\n\
	/c exch def\n\
	/r exch def\n\
	0.3 0.1 0.9 setrgbcolor\n\
	r c mark\n\
	r c v candidate\n\
	grestore\n\
} def\n\
/magic {\n\
	gsave\n\
	/v exch def\n\
	/c exch def\n\
	/r exch def\n\
	0.57 0.44 0.86 setrgbcolor\n\
	r c v candidate\n\
	grestore\n\
} def\n\
/pair {\n\
	gsave\n\
	0 0.9 0.9 setrgbcolor\n\
	mark\n\
	grestore\n\
} def\n\
/solution {\n\
	342 -80 translate 0.37 0.37 scale grid\n\
} def\n\
/AvantGarde-Demi findfont 36 scalefont setfont\n\
newpath\n\
\n\
%% puzzle data\n\
";

static const char	ps_label[] = "\
/label {\n\
	/v exch def\n\
	/c exch def\n\
	/r exch def\n\
	v 10 lt\n\
	{\n\
		c 54 mul 60 add 36 sub 10 r sub 54 mul 240 add 40 sub moveto\n\
		gsave\n\
		0.7 0.7 scale\n\
		(0123456789) v 1 getinterval show\n\
		grestore\n\
	}\n\
	{\n\
		c 54 mul 60 add 43 sub 10 r sub 54 mul 240 add 36 sub moveto\n\
		gsave\n\
		0.7 0.7 scale\n\
		(00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899) v 2 mul 2 getinterval show\n\
		grestore\n\
	}\n\
	ifelse\n\
} def\n\
";

static const char	ps_solution[] = "\
solution\n\
";

static const char	ps_trailer[] = "\
showpage\n\
";

static State_t		state =
{
	0,
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8 },
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8 },
	{ 0, 1, 2, 3, 4, 5, 6, 7, 8 },
	{
		0, 0,
		{ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 },
		{ 0, 1, 2, 3, 4, 5, 6, 7, 8 },
		{ 0, 1, 2, 3, 4, 5, 6, 7, 8 }
	},
};

/*
 * constraint propagation state
 * saves stack push/pop between constraint_*()
 */

static Propagate_t	ps;

#define US		1000000L

#if _WIN32

#include <windows.h>

#define LL	"I64"

#define connect		_connect
#define snprintf	_snprintf

#undef	pause
#define pause()		Sleep(24 * 60 * 60 * 1000)

static uint64_t
strtoull(const char* s, char** p, int b)
{
	uint64_t	n;

	n = (uint64_t)_atoi64(s);
	if (p)
	{
		while (isdigit(*s))
			s++;
		*p = (char*)s;
	}
	return n;
}

static uint64_t
usr(void)
{
	uint64_t	fs;

	static uint64_t	os;

	fs = (US / 1000) * GetTickCount();
	if (fs < os)
		fs += 0xffffffffL + 1;
	return os = fs;
}

static void
bg(void)
{
#if defined(IDLE_PRIORITY_CLASS)
	SetPriorityClass(GetCurrentProcess(), IDLE_PRIORITY_CLASS);
#elif defined(PROCESS_MODE_BACKGROUND_BEGIN)
	SetPriorityClass(GetCurrentProcess(), PROCESS_MODE_BACKGROUND_BEGIN);
#elif defined(BELOW_NORMAL_PRIORITY_CLASS)
	SetPriorityClass(GetCurrentProcess(), BELOW_NORMAL_PRIORITY_CLASS);
#endif
}

#else

#define LL	"ll"

#include <sys/time.h>
#include <sys/resource.h>

static uint64_t
usr(void)
{
	uint64_t	us;
	struct rusage	ru;

	getrusage(RUSAGE_SELF, &ru);
	us = ru.ru_utime.tv_sec + ru.ru_stime.tv_sec;
	return us * US + ru.ru_utime.tv_usec + ru.ru_stime.tv_usec;
}

static void
bg(void)
{
#if defined(PRIO_PROCESS)
	setpriority(PRIO_PROCESS, 0, 10);
#endif
}

#endif

static char*
fmtesc(char* s)
{
	int	c;
	char*	t = state.tmp;

	while (c = *s++)
	{
		switch (c)
		{
		case '\n':
			*t++ = '\\';
			c = 'n';
			break;
		case '\t':
			*t++ = '\\';
			c = 't';
			break;
		}
		*t++ = c;
	}
	*t = 0;
	return state.tmp;
}

static void
help(int html)
{
	int	i;
	int	j;
	char*	s;

	EXMPINIT();
H("<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML//EN\">\n");
H("<HTML>\n");
H("<HEAD>\n");
H("<TITLE>sudoku solver/generator man document</TITLE>\n");
H("</HEAD>\n");
H("<BODY bgcolor=white>\n");
H("<PRE>\n");
T("NAME\n");
T("  sudoku - sudoku solver / generator\n");
T("\n");
T("SYNOPSIS\n");
T("  sudoku [ options ] [ puzzle ... | [ < ] puzzle.file ... ]\n");
T("\n");
T("DESCRIPTION\n");
T("  sudoku solves 9x9 sudoku puzzles defined by the literal puzzle operands\n");
T("  (containing no lower case letters) and puzzle file operands, and prints the\n");
T("  puzzle properties and solutions, one line per puzzle, on the standard\n");
T("  output.  If there are no operands then puzzle descriptions are read from\n");
T("  the standard input.  The file \"-\" names the standard input.  A solvable\n");
T("  puzzle has exactly one solution.\n");
T("\n");
T("OPTIONS\n");
T("  -a   List all solutions.  Implies -u.\n");
T("  -A   Force constraints to assume that constraints earlier in the default\n");
T("       order have already been applied.\n");
T("  -b   Enable breadth first search which is typically slower than the default\n");
T("       depth first first.  Breadth first search applies constraint propagation\n");
T("       to the lookahead candidates (guesses).\n");
T("  -B   Batch moves within one constraint group (or constraint if -G is on)\n");
T("       by first identifying all moves and then committing them in one\n");
T("       operation.  By default moves are made as they are identified.\n");
T("       Batching negates ordering affects between permutations of equivalent\n");
T("       puzzles but usually results in higher constraint counts.  If -v is\n");
T("       also on then the move trace is prefixed by the constraint\n");
T("       propagation iteration count.\n");
T("  -cNC File puzzle input is in the Nth C separated column counting from 1.\n");
T("       If C is ' ' or omitted then 1 or more space characters separate the\n");
T("       fields. C may be followed by C separated field names.  The fields may\n");
T("       be accessed by %(name)f, %(N)f, %(*)f (all fields, no separator), %#C(*)f\n");
T("       (all fields, C separator), or $N, $name in expressions.\n");
T("  -C[X]If X is p or omitted then list the minimum Hamming/edit distance of each\n");
T("       each input puzzle to the next input puzzle, the input puzzle in %v form,\n");
T("       and the \"best\" map of the input puzzle to the next, also in %v form.\n");
T("       Each odd-even pair of input puzzles is compared.  If X contains S then\n");
T("       list the maximum similarity instead of Hamming distance.  If X contains D\n");
T("       then list the default Hamming distance.  If X contains f then compare\n");
T("       the first puzzle to each subsequent puzzle.  If X contains l then compare\n");
T("       compare the last (previous) puzzle to the current input puzzle.\n");
T("       If X contains a then all mappings with best distance/similarity are listed.\n");
T("       The first puzzle can be listed by specifying width 1 in the grid -f format,\n");
T("       and the second puzzle by specifying width 2: e.g. %1v %2#.c\n");
T("  -d   Enable depth first search which is typically faster than breadth\n");
T("       first.  This is the default.\n");
T("  -DN  Set debug output level to N, or increment if N omitted.\n");
T("  -eE  Only list puzzles with constraint expression E that evaluates non-0.\n");
T("  -E   List puzzles just after applying the last easy (non-guess) constraint.\n");
P("  -fF  Format output according to F (default '%s') after\n", fmtesc(FORMAT('s')));
T("       each puzzle is processed.  If format is \"-\" then per-puzzle output\n");
T("       is disabled.  printf(3) style width, precision and fill apply.\n");
T("       [A][B]... before the format char treats value as an index: 0 for A, 1,\n");
T("       for B, etc.  Information for invalid puzzles represents the solver\n");
T("       state when the puzzle was determined to be invalid.  The formats are:\n");
T("        %XC Solution in canonical order.  X=#a: number of non-trivial\n");
T("            canonical solution automorphisms.\n");
T("        %XD Dump dictionaries and tables.  X=#u: uniq(FORMAT) dictionary; X=#U\n");
T("            uniq() grid dictionary.\n");
T("        %NF Flush the current output and: N=1: write to the standard output;\n");
T("            N=2: write to the standard error.\n");
T("        %G  The number of clues (givens).\n");
T("        %XI Puzzle file magic string.  X=#c: schema names separated by c.\n");
T("            X=#I: schema names with input file separator.\n");
T("        %XM The number of backdoors (magic cell sets).\n");
T("              #a: The number of cells that are part of a backdoor.\n");
T("              #b: The backdoor size.\n");
T("              #g: Estimated number of placement guesses before backdoor hit.\n");
T("              #u: The number of cells that are not part of a backdoor.\n");
T("        %XYZP Property list of Pi elements:\n");
T("              #c: Pi is the number of cells with i candidates.\n");
T("              #d: Pi is the number candidates with degree i, P1: total.\n");
T("              #g: Pi is the number of clue values with i-1 occurrences.\n");
T("              #o: Pi is the number of occurrences for clue value i.\n");
T("              #q: Pi is the constraint applied at constraint iteration i.\n");
T("              #r: Pi is the number of rookery templates for value i.\n");
T("              #s: Pi is the number placements at constraint iteration i.\n");
T("              #B: Pi is the number of clues for box i.\n");
T("              #C: Pi is the number of clues for col i.\n");
T("              #R: Pi is the number of clues for row i.\n");
T("              #S: #s with constraint id.\n");
T("              #v: Pi is the number of cells with candidate i.\n");
T("            Y=#S for separator S, otherwise no separator.\n");
T("            Z=#G for group separator G, otherwise Y separator.\n");
T("            -#: sorted high to low, +#: sorted low to high.\n");
P("        %%XQ Equivalent to '%s'.  If #X is specified:\n", fmtesc(FORMAT('q')));
T("              #m: The magic/backdoor constraints.\n");
T("              #q: The quick constraints.\n");
T("              #s: The solver (-q) constraints.\n");
P("        %%S  Default stats: equivalent to '%s'.\n", fmtesc(FORMAT('m')));
T("        %FT The current date formatted by strftime(3) using format F,\n");
P("            default ('%s').\n", fmtesc(FORMAT('t')));
T("        %XX Miscellaneous:\n");
T("              #c: The number of solved cells.\n");
T("              #e: Elapsed time test. Format width interpreted as nsec.\n");
T("              #E: Simple Sudoku pencilmark exclusion list, one per line.\n");
T("              #f: The number of forced cells (naked singles).\n");
T("              #F: The full dihedral symmetry pattern id n-n-n-n-n.\n");
T("              #r: The current pseudo random number generator seed.\n");
T("              #R: The initial pseudo random number generator seed.\n");
T("              #t: The tuples of degree i, one per line.\n");
T("              #u: The solution unavoidables of size 4.\n");
T("              #v: The number of clue values (1-9).\n");
T("        %AXYc Puzzle in canonical order with solution cells listed as 0.\n");
T("              #a: Like #s, but list one puzzle per dihedral symmetry type instead of\n");
T("                  just one for the largest dihedral order. The type, id and cyclic\n");
T("                  permutation from the original puzzle are listed as a comment.\n");
T("              #b: Band of 416 min-lex index 6-tuple, each 3-tuple sorted.\n");
T("                  X=#x disables 3 tuple transposition, Y=#C for separator C.\n");
T("              #B: #b not sorted.\n");
T("              #c: Grid symmetrized to minimize distance, dihedral order, and\n");
T("                  pattern lexicographic order, ignoring the center box.\n");
T("              #C: #c dihedral symmetry type and distance from symmetry.\n");
T("                  X may be:\n");
T("                  #s: Symmetry op.\n");
T("                  #S: Symmetry description.\n");
T("                  #t: Symmetry type.\n");
T("              #d: Grid symmetrized to minimize distance, dihedral order, and\n");
T("                  pattern lexicographic order.\n");
T("              #D: #d dihedral symmetry type and distance from symmetry.\n");
T("                  X is the same as for #C above.\n");
T("              #e: sudz compressed minlex band/grid encoding.\n");
T("              #g: Gang of 44 min-lex index 6-tuple, each 3-tuple sorted.\n");
T("                  X=#x disables 3 tuple transposition, Y=#C for separator C.\n");
T("              #G: #g not sorted.\n");
T("             N#i: Band of 416 index N row order min-lex value.\n");
T("              #m: Puzzle in subgrid row order minlex canonical order with\n");
T("                  solution cells listed as 0.  The default canonical form is\n");
T("                  based on the solution grid; subgrid canonical does not\n");
T("                  require the grid to have a solution. %.27#mc and %.54#mc\n");
T("                  canonicalize the catenation of the first 3 and 6 rows\n");
T("                  (1 and 2 bands) respectively.\n");
T("              #o: The original grid dihedral symmetry id and distance from\n");
T("                  symmetry, minimizing distance and dihedral order.\n");
T("              #O: The original grid dihedral symmetry type and distance from\n");
T("                  symmetry, minimizing distance and dihedral order.\n");
T("              #p: Permutations mapping original to canonical.\n");
T("                  i:identity, v:value, r:row, c:column,\n");
T("                  a:#automorphisms.\n");
T("              #P: Row order pattern minlex canonical.\n");
T("              #s: Grid symmetrized to largest dihedral order, \"assymmetric\"\n");
T("                  if no symmetry (not a fast implementation). Y=#p: if symmetric\n");
T("                  then list the cyclic permutation that symmetrizes the input.\n");
P("              #t: Exemplar template with %s cells in subgrid row order minlex\n", fmtesc(FORMAT('w')));
T("                  canonical order. Y=#a: the number of canonical form\n");
T("                  automorphisms.  Y=#p: list the cyclic permutations that\n");
T("                  transform the exemplar to canonical order. A=(abc): exemplar\n");
T("                  cell values weighted a=1 b=2 c=3. A=((ab)c(de)): exemplar cell\n");
T("                  values weighted a=b=1 c=2 d=e=3.  Weights are in the range\n");
T("                  1..9.\n");
P("              #T: Exemplar template restricted to %s cells in subgrid row order\n", fmtesc(FORMAT('w')));
T("                  minlex canonical order. A: same as for #t, except listed cells\n");
T("                  are restricted to the cells specified by A.\n");
T("              #x: Clues treated as exemplar X in subgrid row order minlex canonical\n");
T("                  order. Y=#a: the number of canonical form automorphisms.  Y=#p: list\n");
T("                  the cyclic permutations that transform the puzzle to canonical\n");
T("                  order.\n");
T("              #X: Like #x, but list original puzzle in row order minlex canonical order.\n");
T("              #z: Like #t, but symmetrize instead of canonicalize.\n");
T("              #Z: Like #T, but symmetrize instead of canonicalize.\n");
T("              #A: X: Solution cells listed as [A-IJ-R].\n");
T("              #c: X: Solution cells listed as 'c'.\n");
P("        %%d  The default format '%s'.\n", fmtesc(FORMAT('d')));
T("        %Xf Input file base name. X=#p: input file path name, X=(N): -c field N,\n");
T("            X=(@)#C: all fields separated by C, X=(@): all fields, no separator.\n");
T("        %XYg 9x9 text puzzle grid with no frame (default or X=#n), X=#f:\n");
T("            framed player's, X=#g: gordon, X=#m: metcalf, X=#p: programmer's,\n");
T("            forum, X=#s: simple, X=#v solver. #isupper: solution. Y=#t: template\n");
T("            if current input is template or exemplar, Y=#i: inverse exemplar.\n");
T("            Y=(:label): label appended to last grid line.\n");
T("        %XYh 9x9 text puzzle grid with hints (pencilmarks) and no borders,\n");
T("            X=#b: {hint}, X=#f: framed player's forum, X=#p: programmer's\n");
T("            forum, X=#s: simple, X=#v solver. Y=#0: only list strong edges,\n");
T("            Y=#N: only list exact N-tuples. %N..: only list candidate(s) N,\n");
T("            Y=#c: only cell values (no singles constraint mask).\n");
T("            X=#e: experimental encodings:\n");
T("              0#e: (hex string) clues '0' - '8', #empty cells '9' - 'f':\n");
T("              1#e: (bit string) '0': empty, 11*0: nth clue in pencilmark bitmask\n");
T("              2#e: (bit binary) '0': empty, 11*0: nth clue in pencilmark bitmask\n");
T("        %Xi Current identification, or %f if none.\n");
T("              #C: The -C id: similarity for -CS, distance otherwise.\n");
T("        %XYm The position list of all backdoors (magic cells) (X=#a default),\n");
T("            X=#A lists #a with values, X=#u lists all non-backdoor solution\n");
T("            cells, X=#U lists #u with values. Y=#c for 'c ' on split lines.\n");
T("        %Xn Various counts and ordinals:\n");
T("              #a: The ordinal within all listed puzzles (-f- still counts).\n");
T("              #A: The number of automorphisms of the input sudz grid.\n");
T("              #B: The band index of the input sudz grid.\n");
T("              #c: The -g puzzle index.\n");
T("              #C: The -go puzzle partition index or -C distance/similarity.\n");
T("              #d: The -g number of unique puzzles.\n");
T("              #e: The -g puzzle duplication count.\n");
T("              #i: The ordinal within the all input files.\n");
T("              #I: The window index of the input sudz grid.\n");
T("              #l: Input file line number of the first puzzle row.\n");
T("              #m: The ordinal within the current -a (multiple solution count).\n");
T("              #n: The number of backtrack search nodes.\n");
T("              #o: The ordinal within the current %i.\n");
T("              #p: The ordinal within the current input file.\n");
T("              #r: The ordinal within the current -m or -go.\n");
T("              #R: The current -m or -go base puzzle ordinal.\n");
T("              #s: The number of searched (for solution) puzzles.\n");
T("              #S: The number of cell scans (currently for debugging).\n");
T("              #u: The number of uniqued puzzles (splay tree lookups/insertions).\n");
T("              #v: (default) The valid puzzle count.\n");
T("              #W: The number of grids in the input sudz window.\n");
T("        %Xq The constraints used to solve the puzzle.  X may be:\n");
T("              #c: Constraint counts (see EXPRESSIONS below).\n");
T("              #d: The diamond move (hardest up to first elimination).\n");
T("              #D: The diamond move index (constraint ordinal).\n");
T("              #h: The hardest move.\n");
T("              #H: The hardest move index (constraint ordinal).\n");
T("              #i: The -q index:method map.\n");
T("              #I: The highest -q method index.\n");
T("              #m: m: minimal, M: symmetric minimal, -: otherwise.\n");
T("              #M: #m description.\n");
T("              #o: The constraints and orders used to solve the puzzle.\n");
T("              #p: The pearl move (hardest up to first placement).\n");
T("              #P: The pearl move index (constraint ordinal).\n");
T("              #s: Symmetry op (see -s below).\n");
T("              #S: Symmetry description.\n");
T("              #t: Symmetry type (see -s below).\n");
T("            Trailing 0 values are dropped and only applied constraints are\n");
P("            listed. The list order is %s.\n", state.text.list);
T("        %Xr The puzzle rating from 1 (very easy) to 99999 (very difficult).\n");
T("            Use -B or -S to normalize algorithm order bias. X=(E) uses the\n");
T("            rating expression E instead of the -R option value. The\n");
T("            90000-99999 range is exponential. X=#r for raw (no exponential\n");
T("            normalization), X=#s for symbolic rating, X=#. for 99999 scaled\n");
T("            9.9, X=#n for normalized puzzle rating from 1 (very easy) to 9\n");
T("            (very difficult). The usual C integer arithmetic operators, ?:,\n");
T("            x**y (x to the y power) and x@y (x log y) are supported.\n");
T("        %Xs Puzzle in original order with solution cells listed as [1-9].\n");
T("            X=#A: solution cells listed as [A-IJ-R].\n");
T("        %Xt Various times.  X may be:\n");
T("              #e: Total elapsed time since program start.\n");
T("              #p: Elapsed time since the last %#pt.\n");
T("              #s: (default) Current puzzle solution time.\n");
T("              #t: Sum of all puzzle solution times.\n");
T("        %XYv Puzzle in original order with solution cells listed as '.'.\n");
T("            X and/or Y may be:\n");
T("              #i: inverse exemplar if current input is exemplar\n");
T("              #t: template if current input is template/exemplar\n");
T("              #N: (N non-alpha) solution cell listed as N\n");
T("        %Xx X=(E): the value of the expression (E).\n");
T("        %a  Deprecated: use %#an.\n");
T("        %e  Deprecated: use %#at.\n");
T("        %j  Deprecated: use %#pn.\n");
T("        %k  Deprecated: use %#in.\n");
T("        %l  Deprecated: use %#ln.\n");
T("        %o  Deprecated: use %#on.\n");
T("        %p  Deprecated: use %#pt.\n");
T("        %t  Deprecated: use %#st.\n");
T("        %u  Deprecated: use %#tt.\n");
T("        %y  Deprecated: use %#mn.\n");
T("        %z  Deprecated: use %#rn.\n");
T("        %@  Align to <width> characters past the previous %@, e.g., %-10@.\n");
T("        %N/ Multi-column output with column width N. Format output after the /\n");
T("            will be in the next column(s).\n");
T("        %?V%?I If the puzzle is valid then output format V, otherwise format I.\n");
T("            Empty V or I, whichever is selected, means no output.\n");
T("        %,  Space.\n");
T("        %:  Newline.\n");
T("        %%  Percent.\n");
T("        \\c  C style escape.\n");
T("        c   Literal character.\n");
T("  -FCF Set output format default C to F.  The default is empty if not specified.\n");
T("       C may be:\n");
T("        a  Output after each puzzle is processed.  This format is used after\n");
T("           all -a solutions are determined for each puzzle.\n");
T("        b  Output before each puzzle is processed.\n");
P("        c  -goc format (default '%s').\n", fmtesc(FORMAT('c')));
P("        d  The %%d format (default '%s').\n", fmtesc(FORMAT('d')));
P("        e  Value equality operator (default '%s').\n", fmtesc(FORMAT('e')));
T("        f  Output after all puzzles have been processed.  Puzzle property\n");
T("           counters are accumulated from all puzzles.\n");
P("        g  Value proposition (guess) operator (default '%s').\n", fmtesc(FORMAT('g')));
T("        h  The initial -gt grid before minimization/filtering.\n");
T("        i  Output before the first puzzle is processed.\n");
P("        m  The %%S stats format (default '%s').\n", fmtesc(FORMAT('m')));
P("        n  Value inequality operator (default '%s').\n", fmtesc(FORMAT('n')));
T("        o  The -go omitted (and possibly invalid) grid format.\n");
P("        p  Cell position (coordinate) format (default '%s').\n", fmtesc(FORMAT('p')));
T("           F is a printf-style format string with the following format\n");
T("           characters replacing the 'd' format:\n");
T("             r  row offset counting from 1\n");
T("             R  row offset counting from 0\n");
T("             c  column offset counting from 1\n");
T("             C  column offset counting from 0\n");
T("             x  column offset counting from 1\n");
T("             X  column offset counting from 0\n");
T("             y  (10-row) offset counting from 1\n");
T("             Y  (9-row) offset counting from 0\n");
T("           %Ar%ac lists the rows as ABCDEFGHI and columns as abcdefghi.\n");
T("           %Jr%c lists the rows as ABCDEFGHJ and columns as 123456789.\n");
T("           %kc%r lists the rows as 123456789 and columns as abcdefghk.\n");
P("        q  The %%Q format (default '%s').\n", fmtesc(FORMAT('q')));
T("        r  Output as each -g solution grid is generated.\n");
T("        s  Output after each puzzle is solved. Equivalent to -fF.  Also used\n");
P("           for each -a solution (default '%s').\n", fmtesc(FORMAT('s')));
P("        t  The default %%T time format (default '%s').\n", fmtesc(FORMAT('t')));
P("        v  The < position operator value > format (default '%s'),\n", fmtesc(FORMAT('v')));
T("           where %p is the -Fp position, %o is the -F[egn] operator, and\n");
T("           %v is the value.\n");
P("        w  Default exemplar canonicalization weights (see %%#tc, default '%s').\n", fmtesc(FORMAT('w')));
P("        x  -p permutation output (default '%s').\n", fmtesc(FORMAT('x')));
P("        y  The exemplar characters in order (default '%s').\n", fmtesc(FORMAT('y')));
T("           Up to nine characters may be specified.  The first seven have\n");
T("           specific meaning for the Z method.\n");
P("        C  The default -C output format (default '%s').\n", fmtesc(FORMAT('C')));
T("  -gTNA Generate puzzles of type T with optional parameters N and A.\n");
T("       T may be:\n");
T("         b  Canonical solution grids for each band N class member.\n");
T("            If -m is also specified then only the min and max grids\n");
T("            for selected bands are listed. %i:band-index, %#pn:#grids,\n");
T("            %#in:#checked, %n:total#grids, %#on:total#checked,\n");
T("            %#ln:#3-band-prunes, %#mn:2-band-prunes. N,M lists\n");
T("            bands in the range N through M inclusive.\n");
T("         B  Canonical band index table with ordinals assigned by minlex order.\n");
T("            -gB44 lists the gang of 44, -gB44a lists all bands with gang of 44\n");
T("            labels, and -gBa lists all bands with band and gang of 44 labels.\n");
T("         d  -gdC.V generates pseudo puzzles (possibly more than one solution)\n");
T("            with C clues (default 14) using V different values (default 3).\n");
T("         D  Apply dobrichev's algorithm to each input puzzle: (1) solve the\n");
T("            puzzle (2) create a complementary puzzle by erasing the original\n");
T("            clues in the solution grid (3) for each solution of the complementary\n");
T("            puzzle replace the clues in the original puzzle with the\n");
T("            corresponding clues from the solution and pass the resulting puzzle\n");
T("            as input to the solver (subject to the command line options).\n");
T("         g  Solution grids listed one per line (no other processing).\n");
T("         h  Hint-only (pencilmark-only) puzzles with at least N (default\n");
P("            %d) candidates. Even N => candidates evenly distributed.\n", HINTONLY);
T("         H  Generate using the hardest sudoku formula: at most one clue\n");
T("            per minirow/minicol and no repeated values in bands/chutes,\n");
T("            at most three clues per value, and minimal. N is the clue\n");
P("            fill step (default %d) -- factors of 3 are removed.\n", HARDEST);
T("         m  For each puzzle list the subgrid row order minlex canonical\n");
T("            grid (the default canonical form is based on the solution grid,\n");
T("            subgrid canonical does not require the grid to have a solution).\n");
T("         o  +/-NX...: a sequence of -N and/or +N operands with option suffixes.\n");
T("            -N: delete all combinations of N clues; +N: add all combinations\n");
T("            of N clues.  Puzzles are checked for single solution after each\n");
T("            addition phase. X may be one or more of the following options.\n");
T("            Each occurrence toggles the previous value.  Values are inherited\n");
T("            by subsequent operands in the sequence. X may be one or more of:\n");
T("              a  assume the last +M clues have already been cleared for @\n");
T("              c  use the -Fc format with no filtering, otherwise use the\n");
T("                 default -f format, -q constraints, and -e filtering\n");
T("              e  do not check off subpuzzles for duplicates\n");
T("              i  add implicit (superfluous) candidates, otherwise skip them\n");
T("              n  show off/on ops but do not execute\n");
T("              o  list one generated puzzle per input puzzle\n");
T("              p  the input puzzle is a pattern -- only change original clues\n");
T("              r  -nX random {-N+M} operations per input puzzle\n");
T("              @I start at clue index I counting from 1, clearing clues from\n");
T("                 from that index on\n");
T("              @  clear the last +M clues and start at the leftmost empty cell\n");
T("                 from the cleared clues\n");
T("            {...}xN repeats the bracketed group N times.  {...}:N repeats the\n");
T("            bracketed group 0 or more times until the number of clues is <= N.\n");
T("            Some sequences may exhaust memory.  {N}* (alternatively {N}!)\n");
T("            repeats {-N+N} until closure (no new puzzles generated). NOTE: a\n");
T("            recalcitrant bug sometimes omits a small number of puzzles in\n");
T("            combined off/on sequences that would otherwise be listed if the\n");
T("            sequence were done separately; if exact results are required (no\n");
T("            omissions) then use separate sequences.\n");
T("         p  (default) Puzzle grids.\n");
T("         P  Input puzzles are treated as pattern exemplars with clue cells mapped\n");
T("            to X and are listed.\n");
T("         q  Run the quick verification solver on all input puzzles and output\n");
T("            one line containing: <#invalid> <#multi-solution> <#valid>.\n");
T("         Q  Run the quick verification solver on all input puzzles and output\n");
T("            one line per puzzle containing: <81-char-grid> # <quick()-value>.\n");
T("         s  Solution grids only.\n");
T("         t  Treat each input file as a template and generate -nN puzzles per\n");
P("            template, filling only the template clues.  N (default %u)\n", TEMPLATE);
T("            limits the number of shuffles for each solution grid projected on\n");
T("            the template.  Template input may be a valid puzzle (but with\n");
T("            multiple solutions ok) or a grid with [XxOo] marking the template\n");
T("            clues.  Some templates may not admit valid puzzles.  There is no\n");
T("            known predictor (other than maybe 17 clues).  If there are no O\n");
T("            cells then -v lists improvements towards 1 solution in 4 columns:\n");
T("            column 1 is the random solution grid count, column 2 is the solution\n");
T("            grid shuffle count, column 3 is the number of soultions for the grid\n");
T("            in column 4.  At 2 solutions column 3 also contains the number of\n");
T("            unavoidable cells.  If any template cell value is O and -m is\n");
T("            specified then only O template cells will be considered for\n");
T("            minimization.  If O and clue values or candidate lists are\n");
T("            specified then the clue values and/or candidates are fixed in\n");
T("            generated solution grids, otherwise template clues are treated\n");
P("            as X.  If there are no more than .A (default %d) candidate\n", TEMPLATE_ENUM);
T("            then an enumerative (as opposed to random) search is used. The\n");
T("            enumerative search tests all candidate combinations.  -gtpN.R.F.S\n");
P("            marks F%% (default %d%%) clues X cells at random, +/- S%% (default\n", TEMPLATE_FILL);
P("            %d%%) and generates N random puzzles projected on the random\n", TEMPLATE_SLOP);
T("            template.  R (default 0 -- no limit) limits the number of X\n");
T("            assignment rounds.  -gtpr ignores the enumerative checks and\n");
T("            forces random search.  -gtpri continues the search on the modified\n");
T("            candidate grid.  -gtm allows multiple solutions -- handy for\n");
T("            generating subgrids.  -gtm.0 generates all subgrids.  -gtpe\n");
T("            checks every pattern row-order minlex grid (not quite canonical\n");
T("            so there may be some duplication); -gtpei.N retains the first\n");
T("            N input grid clues; -gtpe.N.V sets clue N to V; -gtper stops checking\n");
T("            when the next input grid is matched (each input grid pair forms\n");
T("            a range.)\n");
T("         u  Input puzzles are transformed into minimal superfluous (any clue\n");
T("            unnecessary) puzzles.\n");
T("         U  Minimal superfluous (any clue unnecessary) puzzles.\n");
T("         X  Input puzzles are treated as exemplars and are listed.\n");
T("  -G   Ignore constraint order {...} groups and treat each constraint\n");
T("       as if it were in its own group.  Group minima/maxima and iterations\n");
T("       are not affected.\n");
T("  -h   Add hints (pencilmarks) to the -P output.\n");
T("  -H   Copy the first input file magic header, if any, to the output.\n");
T("  -i   Force the constraint propagation iteration count to increment\n");
T("       with each constraint that produces a move rather than with each\n");
T("       constraint group.  This allows the capture of in-group pencilmarks.\n");
T("  -jCN For each -g type that operates on complete solution grids, operate\n");
P("       on the original and N (default %u) randomly shuffled automorphic\n", PERMUTE);
T("       copies. N=0 repeatedly uses the first grid without shuffling.\n");
T("       If C is - then values are preserved.\n");
P("  -JCN Solve the original puzzle and, for N (default %u) repetitions,\n", SHUFFLE);
T("       randomly shuffle (rows, columns, bands, stacks, values) to an\n");
T("       automorphic copy and re-solve.  If C is - then values are preserved.\n");
T("       Handy for verifying order independent metrics.\n");
T("  -kCR Constraint propagation iteration and/or cycle trace control.  R is a\n");
T("       range of counts/lables on which the control is applied.  C may be:\n");
T("         c  Add XY cycles in range R to -P output with strong edges (red),\n");
T("            1-weak edges (green), 0-weak edges (purple), and eliminated cell\n");
T("            values (blue).\n");
T("         d  Add -P 0-weak details (yellow).\n");
T("         i  List intermediate puzzles with propagation iteration in range R.\n");
T("            If -v is also on then the move trace is prefixed by the constraint\n");
T("            propagation iteration count.\n");
T("         m  Add -P backdoor (magic cell) values (purple).\n");
T("         p  Add -P cycle pairs (cyan).\n");
T("  -KCL Constraint propagation iteration and/or cycle control.  L is a list\n");
T("       of counts/labels on which the control is applied.  C may be:\n");
T("         c  Disable XYW cycles list L.\n");
T("         d  Stop the current solution on the first elimination (batch) move.\n");
T("         i  Disable constraint iterations in list L.\n");
T("         p  Stop the current solution on the first placement (batch) move.\n");
T("  -lX  Label -P output with text X.\n");
T("  -LN  Limit P constraint propositions to candidates with degree (number of\n");
T("       value/location choices) <= N.  The default is 0 for no limit.\n");
T("  -mCN.M.X For each puzzle, derive, by dropping clues, up to N puzzles with\n");
T("       the minimum number of clues.  If N is omitted then all minimal puzzles\n");
T("       are derived.  If -s is also specified then symmetry will be preserved\n");
T("       and symmetric minimal will be considered minimal.  If M is specified\n");
T("       only minimal puzzles with >= M clues are derived.  If X is specified\n");
T("       only minimal puzzles with <= X clues are derived.  If C is r then a\n");
T("       typically much quicker random search (inspired by dukosu) is used to\n");
P("       test N (default %d) random minimal puzzle candidates.  If C is rc\n", RINIMIZE);
T("       then the -Fc format is used to list the minimal puzzles; this can be\n");
T("       a factor of 2 faster than the default that generates puzzle stats.\n");
T("  -MC  Restrict backdoor computations to the -q style constraints C (default\n");
P("       %s).  Use this to avoid bad timing behavior with some constraints.\n", state.constraints.magic.text);
T("       If C is - then backdoor computations are disabled.\n");
T("  -nN  Limit -g to N puzzles (default 0 -- no limit).\n");
T("  -NN  Set the next -f %a and %n to N.\n");
T("  -oF  Write output to file F.\n");
T("  -OX  Attempt to find an optimal (shortest) solution within each constraint\n");
T("       application. This will induce sub-optimal performance but may produce\n");
T("       more reasonable ratings when XY constraints are involved. Currently\n");
T("       limited to the XYP constraints. -O minimizes cycle size, -OA attempts to\n");
T("       minimize steps.\n");
T("  -pP  If P is p or omitted then list the value (v), row (r) and column (c)\n");
T("       permutations that transform each input puzzle to the next input puzzle.\n");
T("       Each odd-even pair of input puzzles must be valid and have isomorphic\n");
T("       solutions.  Permutations are displayed in cyclic notation, where each\n");
T("       (...) defines a label map, read from left to right.  (137)(25) means:\n");
T("       1=>3, 3=>7, 7=>1, 2=>5, 5=>2; unspecified labels map to themselves.\n");
T("       'v', 'r' and 'c' appear to the left of the value, row, and column label\n");
T("       maps, respectively.  'x' denotes row-col transposition, identity v,r,c\n");
T("       components are omitted and 'i' denotes the identity, and 'aN' denotes\n");
T("       the number of automorphisms.  If P is f then list permutations that\n");
T("       transform the first puzzle to each subsequent puzzle.  If P is l then\n");
T("       list permutations that transform the last (previous) puzzle to the\n");
T("       current input puzzle.  Otherwise P specifies a cyclic permutation applied\n");
T("       to each input puzzle as it is read in.\n");
T("  -P   Solve the puzzle and generate postscript output. To generate images\n");
T("       for posting: 'convert -crop 490x490+30+20 -scale 60% t.ps t.png'.\n");
P("  -qC  Change the current constraints using C (default %s).  If C\n", state.text.solve);
T("       does not start with - or + then the current constraints are cleared.\n");
T("       If C is - then the input puzzles are not solved but are still listed.\n");
T("       Initial constraints and those following + are enabled or size specific\n");
T("       if a size is specified.  Constraints following - are disabled.\n");
T("       Constraints are applied left to right as specified. {...} groups\n");
T("       constraints to be treated as a single constraint.  : within a group\n");
T("       commits the moves up to that point but continues with the\n");
T("       remainder of the group.  : outside of {...} disables G and causes\n");
T("       the constraints to the left to be ignored when they fail to advance\n");
T("       the solution.  Multiple ;VARi=EXPRi may be appended; after the each -qC\n");
T("       is applied the VARi are evaluated and assigned.  This also enables\n");
T("       multiple -qC options, each with its own VAR assignments.  After all -qC\n");
T("       are applied for the current puzzle the -e expression and -f format are\n");
T("       are applied, where the VARi may be referenced in the expression / format.\n");
T("       C may also be a lower case or numeric identifier that names a common set\n");
T("       of options:\n");
	for (i = 0; state.common[i].name; i++)
	{
		fprintf(stderr, "       %10s  %s\n", state.common[i].name, state.common[i].description);
		fprintf(stderr, "                   %s\n", state.common[i].options);
	}
T("       Common option constraints may be modfied by appending +constraints\n");
T("       or -constraints to the common constraint name.\n");
T("  -QE  Valid puzzles must additionally satisfy the constraint expression E.\n");
T("       E is an expression of ( ! && || == != ?: ) operators and -qC style\n");
T("       constraint operands.  For example, -Q'!{FN}&&{N}' specifies FN-invalid\n");
T("       and N-valid.\n");
T("  -rN  Set the pseudo random number generator seed to N (default time based).\n");
T("       The %#rX value can be used to span most pseudo-random operations across\n");
T("       multiple sudoku(1) invocations. Does not work for -gt.\n");
T("  -RX  Set the %r rating expression to X. The default is\n");
T("       " RATING "\n");
T("  -sOS Generate puzzles with dihedral symmetry S (requires -g).  The symmetry,\n");
T("       names, type, (order), and descriptions are:\n");
	for (i = 1; i < elementsof(dihedral); i++)
		fprintf(stderr, "         %2s %3s (%d) %s\n", dihedral[i].op, dihedral[i].type, data.count[dihedral[i].elements]+1, dihedral[i].description);
T("       -sA (or -sg) cycles through all symmetries for each -g solution grid.\n");
T("       -sE selects a pseudo-random symmetry before for each -g solution grid.\n");
T("       -sF selects a pseudo-random symmetry before the first -g solution grid.\n");
T("       -s[248][AEF] limits the symmetries to the specified consecutive orders.\n");
T("  -S   Restart constraint propagation after the first move in each group.\n");
T("  -tN  Limit solution count to N.\n");
T("  -TM  Enable test code defined by the mask M:\n");
T("        0x000010 List constraint orders.\n");
T("        0x000020 List P constraint stats.\n");
T("        0x000040 Don't cache P constraint propositions.\n");
T("        0x000080 Don't prune P constraint pairs.\n");
T("        0x000100 List sizeof(Grid_t) and exit.\n");
T("        0x000200 Disable directional y-edges.\n");
T("        0x000400 Enable directional y-edge ternary collapse.\n");
T("        0x000800 Disable x box hinges.\n");
T("        0x001000 Enable -v for backdoor (magic cell) search moves.\n");
T("        0x002000 Enable -v for -m search moves.\n");
T("        0x004000 List a -P empty grid and exit.\n");
T("        0x008000 List postscript output labels.\n");
T("        0x010000 Enable backdoor trace.\n");
T("        0x020000 Enable mutable() canonical puzzle trace.\n");
T("        0x040000 Disable the (not always) quick sub-solver.\n");
#if BBSS
T("        0x100000 Disable Brian Turner's Bit Based Sudoku Solver quick check.\n");
#endif
T("  -u   Verify that there is exactly one puzzle solution.  By default\n");
T("       searching stops at the first solution.  Implies -d.\n");
T("  -U   If -a is also set then the listed puzzle is the union of all\n");
T("       solutions.  -f%h lists the unavoidables as pencilmark hints.\n");
T("  -vN  Set verbose output level to N, or increment if N omitted.\n");
T("  -V   Print the program version on the standard error and exit.\n");
T("  -wN  Fold verbose output to be at most N characters wide (default 80).\n");
T("  -W   Pause before exiting.  Handy for viewing windows shortcut output.\n");
T("  -xS  Puzzle data is XML tagged by S (default " XML ").\n");
T("  -X   Limit proposition constraint moves to eliminations (ignore backdoors).\n");
T("  -y   Use the original -Y grids instead of implied solution grids.\n");
T("  -YF  Generate puzzles from the solution grids for puzzles in file F rather\n");
T("       than random solution grids.\n");
T("  -ZE  Puzzles not solved by the -q constraints are rechecked with the -Q\n");
T("       style constraint expression E.  V(n) in each subexpression of a || list\n");
T("       can be used to label the first subexpression from the left that solves\n");
T("       the puzzle.  The -q constraint label is 1.  V(X), X not a number, within\n");
T("       a constraint subexpression requires the constraint subexpression to\n");
T("       solve the puzzle and the -e style expression X to evaluate non-zero,\n");
T("       otherwise the remaining subexpressions are tried.\n");
T("  -zX  Miscellaneous options (only -I is free!).  X may be:\n");
T("        8  Octdoku: all clues with value 9 present and not subject to minimization.\n");
T("        b  Set the process priority to \"nice\" (\"background\").\n");
T("        eN Exit with a diagnostic when any dictionary entry count exceeds N.\n");
T("        T  T class canonicalization (no transposition).\n");
T("\n");
T("DETAILS\n");
T("  There are two basic solution techniques: constraint propagation (\"logic\")\n");
T("  and searching.  Constraints limit candidate values for each cell.  Constraint\n");
T("  propagation iteratively applies constraints until the puzzle is solved or\n");
T("  until no more progress is made.  A constrained puzzle is solvable by\n");
T("  constraint propagation alone (pure logic / no guessing).  Searching applies\n");
T("  candidate cell values (guesses) and checks solutions using depth first or\n");
T("  breadth first search.  The best search strategies combine constraint\n");
T("  propagation with searching to prune the search tree.  The amount of guessing\n");
T("  is determined by the strength of the constraints and the order of guesses\n");
T("  already applied.  Some aficionados frown on solutions that require guessing,\n");
T("  but the lines between constraint propagation, lookahead, and guessing are\n");
T("  thin.  This topic is very subjective, your mileage will vary, and you will\n");
T("  not win a \"logic\" vs. \"trial and error\" debate.  I still can't figure out\n");
T("  out how my daughter solves so fast.\n");
T("\n");
T("  This solver uses a depth first search by default.  Candidate cells with the\n");
T("  least amount of choices are checked first.  The constraints are:\n");
T("\n");
	for (i = 0; state.method[i].id; i++)
		if (state.method[i].constraint)
		{
			fprintf(stderr, "    %c%s %s\n", state.method[i].id, state.method[i].min || state.method[i].max ? "n" : " ", state.method[i].description);
			if (state.method[i].disable)
			{
				fprintf(stderr, "       %sDisables the ", state.method[i].id == 'Q' ? "   " : "");
				for (j = 0; state.method[j].id; j++)
					if (state.method[j].constraint & state.method[i].disable)
						fprintf(stderr, "%c", state.method[j].id);
				fprintf(stderr, " constraint%s.\n", (state.method[i].disable & (state.method[i].disable - 1)) ? "s" : "");
			}
			s = state.tmp;
			if (state.method[i].defsiz)
				s += snprintf(s, &state.tmp[sizeof(state.tmp)] - s, "%d", state.method[i].defsiz);
			*s++ = '.';
			if (state.method[i].deflim)
				s += snprintf(s, &state.tmp[sizeof(state.tmp)] - s, "%d", state.method[i].deflim);
			*s++ = '.';
			if (state.method[i].defvar)
				s += snprintf(s, &state.tmp[sizeof(state.tmp)] - s, "%d", state.method[i].defvar);
			while (s > state.tmp && *(s - 1) == '.')
				s--;
			if (s > state.tmp)
			{
				*s = 0;
				fprintf(stderr, "       %sThe default is %c%s.\n", state.method[i].id == 'Q' ? "   " : "", state.method[i].id, state.tmp);
			}
		}
T("\n");
P("  The -q option enables, disables, groups and orders constraints (%s must\n", state.text.explicit);
T("  be explicitly disabled).  The enabled constraints are called the constraint\n");
P("  set (default %s).  The THW constraints are further split\n", state.text.solve);
T("  by size: T2H2W2T3H3W3T4H4W4.\n");
T("\n");
T("  Constraint propagation is an iterative process controlled by the -B,\n");
T("  -G and -S options.  By default {...} constraint groups are applied as a\n");
T("  unit; when -G is on {...} are ignored and each constraint is applied\n");
T("  separately.  Constraints not enclosed in {...} are considered to be a\n");
T("  group of size 1.  Each iteration applies the constraints in order from\n");
T("  left to right as specified by -q.  The application of each constraint is\n");
T("  done in an unspecified but exhaustive order over the entire puzzle.  A\n");
T("  constraint advances the solution when it identifies a move (one or more\n");
T("  cell placements or candidate eliminations).  An identified move may be\n");
T("  committed (by actually making the placement(s) or elimination(s)), or it\n");
T("  may be recorded for later committal.  Within a single constraint\n");
T("  application, cells that do not advance the solution are not re-examined,\n");
T("  even if subsequent moves within the same constraint application would\n");
T("  allow them to do so.  This biases solutions to use constraints earlier\n");
T("  in the order.  A new iteration starts with the leftmost constraint.\n");
T("  When a constraint identifies a move:\n");
T("    -S  The move is committed and a new iteration is started.\n");
T("    -B  The move and all other moves in the current group are identified\n");
T("        and recorded.  After all moves in the group have been recorded\n");
T("        they are committed as a unit, and a new iteration is started.\n");
T("        : within {...} commits any moves up to that point but continues\n");
T("        with the remainder of the group.\n");
T("    --  (default) The move is committed and all other moves in the current\n");
T("        group are committed as they are identified.  After all moves in\n");
T("        the group have been committed a new iteration is started.\n");
T("  A step is a constraint propagation iteration that advances the\n");
T("  solution.  The number of steps for -S and default solutions depends on\n");
T("  the unspecified ordering within each constraint application; this ordering\n");
T("  bias also allows the step counts to be different for isomorphic permutations\n");
T("  of a given puzzle.  -B step counts, by design, are the same for a given\n");
T("  ordered constraint set over all isomorphic puzzles, so they are a suitable\n");
T("  puzzle metric.\n");
T("\n");
T("  [...] options may appear at the start of each constraint group.  Options\n");
T("  override the -A, -B, -O and -S command line options.  The options are:\n");
T("    A   Enable -A for the group -- -A is diabled if A omitted.\n");
T("    B   Enable -B for the group -- -B is diabled if B omitted.\n");
T("    O   Enable -O for the group -- -O is diabled if O omitted.\n");
T("    S   Enable -S for the group -- -S is diabled if S omitted.\n");
T("    *   The group may supply any number of moves each application (default).\n");
T("    ?   The group must supply zero or one move each application.\n");
T("    +   The group must supply one or more moves each application.\n");
T("    n   The group must supply exactly n moves each application.\n");
T("    n:m The group must supply between n and m moves inclusive each\n");
T("        application.  If m is * the at least n moves must be supplied.\n");
T("\n");
T("  If F is disabled then the solution may advance to a position where only F\n");
T("  constraints remain; these are attributed to most recent constraint applied. -d\n");
T("  (default) depth first search with guesses biased to cells with the least number\n");
T("  of candidates after constraint propagation.  X and Y are compute intensive\n");
T("  but produce aesthetic solutions.  -qFNB typically solves the fastest (with\n");
T("  backtracking).  If G is enabled then it is not applied until all other\n");
T("  other constraints fail.\n");
T("\n");
T("  Cycles are composed of edges between cells with the same candidate value\n");
T("  within a single row/col/box or segments between exact pairs with the\n");
T("  candidate value in both endpoints.  The vertices of a strong edge are the\n");
T("  only cells with the candidate value within the row/col/box containing the\n");
T("  edge.\n");
T("\n");
T("  The generator generates random solution grids, and then places clues at random\n");
T("  from the solution grid into an empty puzzle grid, honoring -sS if specified,\n");
T("  and with -m generates the derived minimal puzzles for each random puzzle.\n");
T("  A minimal puzzle has a minimal number of clues, i.e., removing any clue\n");
T("  produces a puzzle with multiple solutions.  There is no duplicate checking;\n");
T("  process generator output using -f%c as a duplicate/sort key.\n");
T("\n");
T("  A backdoor or magic cell set is the smallest set of moves that lead to a\n");
T("  constrained solution.  A puzzle with backdoor size N (magic cell set size N)\n");
T("  for constraint set C is C-N-constrained.  The conjecture that all puzzles\n");
T("  are FN-0, FN-1 or FN-2-constrained is false: a puzzle discovered by JPF has\n");
T("  566 FN backdoors of size 3 (3 FNBT2 backdoors of size 2). A %#nr rating in\n");
T("  [A-F] indicates a backdoor size of 3, 4 etc. Using -q may result in different\n");
T("  backdoors than the default.  For this reason always qualify \"backdoor\"\n");
T("  with the constraints used.\n");
T("\n");
T("EXPRESSIONS\n");
T("  Expressions are C language style signed long expressions on constraint\n");
T("  counters.  A constraint counter is named by the constraint identifier\n");
T("  and one optional digit.  The counters for constraint c:\n");
T("\n");
T("    c   The number of constraint applications.\n");
T("    c0  Equivalent to c.\n");
T("    c1  The number of constraint placements.  Grouped modifications to a cell\n");
T("        candidate list count as one placement.\n");
P("    cn  Structure order 2<=n<=%d count (e.g., pair, triple, x-wing,\n", CONSTRAINT_WEIGHTS+1);
P("        swordfish).  c5..c%d are 0 for most constraints.\n", CONSTRAINT_WEIGHTS+1);
T("\n");
T("  with the following (long name) exceptions and pseudo constraints:\n");
T("\n");
	for (i = 0; i < elementsof(variable); i++)
		fprintf(stderr, "    %c%c  (%s) %s\n", variable[i].id, variable[i].index == '0' ? ' ' : variable[i].index, variable[i].name, variable[i].description);
fprintf(stderr, "    X2  Maximum X cycle size.\n");
fprintf(stderr, "    Xn  X cycle sizes by range. X3:<%d, X3:<%d, X5:<%d, ... X%d:>=%d.\n", CONSTRAINT_BIN, CONSTRAINT_BIN*2, CONSTRAINT_BIN*3, CONSTRAINT_WEIGHTS+1, CONSTRAINT_BIN*CONSTRAINT_WEIGHTS);
fprintf(stderr, "    Y2  Maximum Y cycle size.\n");
fprintf(stderr, "    Yn  Y cycle sizes by range. Y3:<%d, Y3:<%d, Y5:<%d, ... Y%d:>=%d.\n", CONSTRAINT_BIN, CONSTRAINT_BIN*2, CONSTRAINT_BIN*3, CONSTRAINT_WEIGHTS+1, CONSTRAINT_BIN*CONSTRAINT_WEIGHTS);
T("    bn  The number of batches for hn.\n");
T("    hn  The ordinal of the rightmost constraint applied in group n.\n");
T("    in  The number of instances for hn.\n");
T("\n");
T("  and the following functions:\n");
T("\n");
	for (i = 0; i < elementsof(function); i++)
		fprintf(stderr, "    %-12s %s\n", function[i].name, function[i].description);
T("\n");
T("  (%F) converts the output of the %F format string to a number and $V converts the\n");
T("  value of the environment variable to a number.\n");
T("\n");
T("INPUT FORMAT\n");
T("  Puzzle input is a sequence of numbers and spaces that fill the grid\n");
T("  from left to right, top to bottom.  Space, comma, |, and - if + or | appear,\n");
T("  are ignored, and all other non-digit (1 through 9) characters correspond\n");
T("  to an empty grid space.  Most pencilmark grid forms are accepted.  Multiple\n");
T("  descriptions  may be placed in one file.  A description ends after 81 cells\n");
T("  have been specified.  If the first character in a line is a non-digit the\n");
T("  line is ignored.  A description command line argument (file or actual\n");
T("  data) may be immediately followed by one or more command line argument\n");
T("  operations of the form [r,c]<OP><V>... that modify candidate values, where\n");
T("  <V> is a single digit cell value or a {...} list of candidate values, and\n");
T("  <OP> is = to set V, ^ to clear V.  '#' starts a comment until end of line.\n");
T("  \"IDENT\" sets a puzzle identification string for %i.  If there is no \"IDENT\"\n");
T("  then the last comment for the current puzzle is used for %i.  A comment on the\n");
T("  same line following the last puzzle cell is associated with that puzzle.\n");
T("  Subsequent comments are associated with subsequent puzzles.  For example, one\n");
T("  generated by -g -m -sp -q-YG -r12 -n1 -e 'V&&X' -f'\"gmr11n1spq-YG\"\\n%#gg':\n");
T("\n");
T("      \"gmr11n1spq-YG\"\n");
T("      . 6 .  8 1 .  7 2 .\n");
T("      8 2 4  . . 6  . . .\n");
T("      . . .  . . 5  3 . .\n");
T("\n");
T("      . 1 .  . . .  8 . .\n");
T("      . 8 .  . . .  . 1 .\n");
T("      . . 9  . . .  . 4 .\n");
T("\n");
T("      . . 2  1 . .  . . .\n");
T("      . . .  6 . .  2 3 5\n");
T("      . 9 8  . 4 2  . 6 .\n");
T("\n");
T("  The first input line in each file may be #!sudoku followed by options that\n");
T("  override command line -c, -l and -x options for the duration of the file.\n");
T("  The previous options are restored after the file is read.  For example:\n");
T("    #!sudoku -c5,sym,num,clues,min,puz,author,seq\n");
T("\n");
T("  The input line #!exemplar identifies the remaining input puzzles as fish\n");
T("  pattern exemplars.  Exemplars may be listed with the %g format and subgrid\n");
T("  canonicalized with the %#tv, %#tc and %#Tc formats.  The exemplar cell\n");
T("  values are:\n");
P("    %c  empty cell: a cell that may not have a candidate\n", exmp[data.ident[EXMP_NOT]]);
P("    %c  base candidate: which may be missing\n", exmp[data.ident[EXMP_DONTCARE]]);
P("    %c  (exo-)fin cell: a base candidate not covered by any cover sector\n", exmp[data.ident[EXMP_FIN]]);
P("    %c  endo-fin cell: a candidate in the intersection of two base sectors\n", exmp[data.ident[EXMP_ENDOFIN]]);
P("    %c  potential exclusion if all fin cells are false\n", exmp[data.ident[EXMP_NOFIN_ELIM]]);
P("    %c  potential exclusion whether or not a fin cell is true\n", exmp[data.ident[EXMP_ELIM]]);
P("    %c  potential exclusion of base candidate covered by two cover sectors\n", exmp[data.ident[EXMP_BASE_ELIM]]);
T("  The octal 3 band bitmask form {O,O,O} (listed by -v2) is also recognized.\n");
T("  #!template may be used to mark -gt template data when -gt is not specified.\n");
T("\n");
T("OUTPUT FORMAT\n");
T("  A solution is an 81 character string of [1-9A-IJ-R], [1-9] for clue cell\n");
T("  values, [A-I] for solution cell values, A for 1, B for 2, and so on, and\n");
T("  [J-R] for the backdoors, J for 1, K for 2, and so on.  The solution fills\n");
T("  the grid from left to right, top to bottom.  The default output format\n");
P("  for each input puzzle is '%s' (see -f above).  The\n", fmtesc(FORMAT('d')));
T("  output for the example above is the single line (folded for display):\n");
T("\n");
T("      .6.81.72.824..6........53...1....8...8.....1...\n");
T("      9....4...21........6..235.98.42.6. #   277 FNTX C28.M/S2.p\n");
T("\n");
T("  The canonical solution is a puzzle solution transformed to have the\n");
T("  smallest row order lexicographic value.  The canonical solution\n");
T("  induces an equivalence relation on the set of all solutions.  The\n");
T("  canonical puzzle retains the labeling of the canonical solution and\n");
T("  induces an equivalence relation on the puzzle within the solution.\n");
T("  If a canonical solution has non-trivial automorphisms then the\n");
T("  canonical puzzle uses the canonical solution automorphism with the\n");
T("  smallest row order lexicographic value (with empty cells treated as\n");
T("  0).  There may be other canonical forms.  This one has an efficient\n");
T("  algorithm that takes advantage of the group symmetries of sudoku\n");
T("  solution grids.\n");
T("\n");
T("COMPRESSED GRID FORMAT\n");
T("  The sudz format efficiently compresses catalogs of row order minlex\n");
T("  canonical solution grids.  Grids are organized by the top band (top 3\n");
T("  rows).  There are 416 essentially different minlex bands and 5472730538\n");
T("  essentially different grids.  A byproduct of minlex ordering is that\n");
T("  earlier bands tend to account for more grids than later bands.  For\n");
T("  example, band 001 contains 1007170 grids, band 006 (the largest)\n");
T("  contains 96229042 grids, and bands 395,397,398,400,402,403,404,406,\n");
T("  408,409,410,412,413,414,415 contain no grids.\n");
T("\n");
T("  The sudz format is a sequence of windows.  Each window contains the number\n");
T("  of grids and initial band index.  Each grid has the band index (if\n");
T("  different from the previous grid), the number of automorphisms (if > 1),\n");
T("  the number of cells that differ from the previous grid, and the list of\n");
T("  differing cell values encoded using a basic singles constraint solver.\n");
T("  The windows are compressed using the Burrows-Wheeler bzip library.\n");
T("\n");
T("  The entire catalog of 5472730538 essentially different grids, in minlex\n");
T("  order, compresses to 5.70GiB, an average 8.96 bits/grid.  Uncompress rate\n");
T("  is ~100K grids/sec/Ghz, or ~5 hours minimum to stream through the entire\n");
T("  catalog on a 2.8Ghz processor.\n");
T("\n");
T("PERFORMANCE\n");
T("  The solution rate for the best on average options -qFN on a collection\n");
T("  of posted and generated puzzles is ~1000 puzzles/second/Ghz, the -gg full\n");
T("  grid (81 clues) generation rate is ~5000 puzzles/second/Ghz, and the\n");
T("  -g -m1 -qFN generation rate is ~75 puzzles/second/Ghz.  sudocoup(1),\n");
T("  coded for speed, solves ~7000 puzzles/second/Ghz.  sudocoo(1), coded for\n");
T("  simplicity, is in between and is more sensitive to input grid variations.\n");
T("\n");
T("EXAMPLES\n");
T("  Note: % must be entered as %% in windows .bat files and shortcut commands.\n");
T("  Generate 100 minimal symmetric puzzles limited to pairs and x-wings in g.dat:\n");
T("    sudoku -g -sg -m -q+T2H2W2-XYG -e \"valid&&minimal==1\" -n100 -f%v -o g.dat\n");
T("  Reformat and collate for player's forum inferior low/high steppers:\n");
T("    sudoku -f\"%#tq,%(steps)x,%(clues)x,%(minimal)[-][M][SM]x,%#0v,gsf,%n\" \\\n");
T("           -q{FN}-G -B *.dat | sort -t, -k1,1 -k2,3n -k4,4r\n");
T("  Generate and search for player's forum ulterior low/high steppers:\n");
T("    sudoku -f\"%#tq,%(steps)x,%(clues)x,%(minimal)[-][M][SM]x,%#0v,gsf,%n\" \\\n");
T("           -e\"V&&(I<4||I>20)\" -g -q{B2:N}-G -Q!{FN} -AB -m -sg\n");
T("  Count isomorphic puzzles and list each non-trivial representative:\n");
T("    sudoku -f\"%C %c %4n %#0v\" *.dat |\n");
T("    sort -k1,1 | uniq -c -s82 -w82 | grep -v \"^ *1 \"\n");
T("  Count isomorphic solutions and list each non-trivial representative:\n");
T("    sudoku -f\"%C %c %4n %#0v\" *.dat |\n");
T("    sort -k1,1 | uniq -c -w82 | grep -v \"^ *1 \"\n");
T("  Solve and categorize a collection of puzzles:\n");
T("    sudoku -F\"# %t seconds\" -f\"%v # %7n %10t %Q\" puzzles.dat > puzzles.out\n");
T("  Label and trace constraint interations:\n");
T("    sudoku -ki -v2 puzzle.dat | less\n");
T("  Capture the pencilmark grid after constraint iteration N:\n");
T("    sudoku -kiN -f%#ph puzzle.dat\n");
T("  Havard's \"Making 17's from JPF's 19\" sequence:\n");
T("    sudoku -go\"{-1+1}x3{-2+1}{-2+2}{1+1}x9\" jpf-19.dat\n");
T("  Generate 10 non-equivalent mimimal symmetric puzzles, each solved by a\n");
T("  different set of constraints, with the same solution grid as the\n");
T("  first puzzle in s.dat:\n");
T("    sudoku -gp -Ys.dat -j0 -n10 -m -sg -e 'minimal==1&&uniq()&&uniq(%q)'\n");
T("  Filter weak and strong pearls:\n");
T("    sudoku -S -qss+G -e '(%#Pq)>2'\n");
T("  Generate and compress the band 299 grids (133302) into 299.sudz:\n");
T("    sudoku -gb299 -f '%#ec' -o 299.sudz\n");
T("  Count the number of grids (97) with non-trivial automorphisms in 299.sudz:\n");
T("    sudoku -e '(%#An)>1' -f- -Ff'%#an/%n' 299.sudz\n");
T("\n");
T("CAVEATS\n");
T("  This is a puzzle and algorithm analysis program.\n");
T("  Look elsewhere for interactive gaming and GUIs.\n");
T("  Its easier to solve than to generate,\n");
T("  and easier to generate than to rate,\n");
T("  and much easier to code than to document.\n");
T("\n");
T("SEE ALSO\n");
T("  sudocoup(1), sudocoo(1), pseudocoup(1)\n");
T("\n");
T("CONTRIBUTORS\n");
T("  Subgrid (multiple solution) row order minlex canonicalizer by Michael Deverin,\n");
T("    with a bug discovery and fix by MD (dobrichev).\n");
T("  Qb BRnet constraint method by Ed Russell.\n");
T("  Distance/similarity Hungarian Algorithm implementation by Ed Russell.\n");
T("  Z fish finder by Ron Kral.\n");
#if BBSS
T("  Bit-based sudoku solver for quick verification by Brian Turner.\n");
#endif
T("\n");
T("IMPLEMENTATION\n");
T("  version     sudoku (AT&T Research) 2011-11-11\n");
T("  author      Glenn Fowler <gsf@research.att.com>\n");
T("  copyright   Copyright (c) 2005-2011 AT&T Intellectual Property\n");
T("  license     http://www.opensource.org/licenses/cpl1.0.txt\n");
H("</PRE>\n");
H("</BODY>\n");
H("</HTML>\n");
}

static void	fini(int);

/*
 * unsigned long reverse qsort(3) comparison
 */

static int
ulrcmp(const void* a, const void* b)
{
	if (*((unsigned long*)a) > *((unsigned long*)b))
		return -1;
	if (*((unsigned long*)a) < *((unsigned long*)b))
		return 1;
	return 0;
}

static int
unavoidable(Grid_t* grid, int n)
{
	register int	i;
	register int	j;
	register int	k;
	register int	l;
	register int	u;

	unsigned char	sol[9][9];

	for (i = k = 0; i < 9; i++)
	  for (j = 0; j < 9; j++)
	    sol[i][j] = data.ordinal[state.hit[k++]];
	u = 0;
	if (n == 4)
	  for (i = 0; i < 8; i++)
	    for (j = 0; j < 8; j++)
	      for (k = i + 1; k < 9; k++)
	        for (l = j + 1; l < 9; l++)
	          if ((data.band[i] == data.band[k] || data.band[j] == data.band[l]) && sol[i][j] == sol[k][l] && sol[i][l] == sol[k][j])
		  {
		    u++;
		    if (state.verbose)
		      printf("{%d%d,%d%d,%d%d,%d%d}\n", i+1,j+1, i+1,l+1, k+1,j+1, k+1,l+1);
		  }
	return u;
}

/*
 * determine row order min-lex permutations for sol or grid if sol==0
 * boxes { 0(all) 3(1-row-band) 6(2-row-bands) 9(3-row-bands) }
 * identity==1 checks if grid is already in min-lex form
 * sol assumed to be completely specified for the given number of bands
 * otherwise if grid is not a solution the min-lex automorphism is chosen
 */

static Canon_t*
canon(Grid_t* grid, unsigned char* sol, int boxes, int identity)
{
	register int			b;
	register int			d;
	register int			i;
	register int			j;
	register int			k;
	register int			l;
	register int			v;

	int				a;
	int				g;
	int				o;
	int				pr;
	int				pc;

	const unsigned char*		order;

	unsigned char			puz[81];
	unsigned char			set[81];

	Canon_t				test;

	static Canon_t			best;

	static const unsigned char	normal[] = { 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17 };
	static const unsigned char	ident[]  = { 0,6,7,8,9,10,11,12,13,14,15,16,17,1,2,3,4,5 };

	/* initialize the solution cell values from the solution masks */

	if (sol)
	  g = 1;
	else
	{
	  sol = set;
	  for (i = j = 0; i < 81; i++)
	  {
	    sol[i] = data.ident[state.hit[i]];
	    j += puz[i] = SOLVED(grid, i);
	  }
	  g = j == 81;
	}

	/* initialize the worst canonical candidate */

	a = 1;
	best.box = 0;
	for (i = 0; i < 9; i++)
	{
	  best.map[i] = 10;
	  best.row[i] = best.col[i] = i;
	}
	best.map[i] = 10;

	/* search over all boxes */

	if (!boxes)
	{
	  boxes = state.boxes;
	  order = identity ? ident : normal;
	}
	else
	  order = normal;
	for (o = 0; o < boxes; o++)
	{
	  b = order[o];
	  for (pr = 0; pr < 6; pr++)
	    for (pc = 0; pc < 6; pc++)
	    {
	      test.box = b;

	      /* initialize the map */

	      for (i = 0; i < 3; i++)
	      {
	        test.row[i] = data.perm[pr][i];
	        test.col[i] = data.perm[pc][i];
	      }
	      for (i = 1; i <= 9; i++)
	        test.map[i] = 0;
	      test.map[sol[data.swap[b][test.row[0]][test.col[0]]]] = 1;
	      test.map[sol[data.swap[b][test.row[0]][test.col[1]]]] = 2;
	      test.map[sol[data.swap[b][test.row[0]][test.col[2]]]] = 3;
	      test.map[sol[data.swap[b][test.row[1]][test.col[0]]]] = 4;
	      test.map[sol[data.swap[b][test.row[1]][test.col[1]]]] = 5;

	      /* map value 6 and order cols 4&5&6 */

	      k = 0;
	      for (i = 3; i < 9; i++)
	        if (test.map[sol[data.swap[b][test.row[0]][i]]] == 4)
		{
		  l = BOX(i) * 3;
		  for (j = 0; j < 3; j++)
		    switch (test.map[sol[data.swap[b][test.row[0]][j+l]]])
		    {
		    case 4:
		      test.col[3] = j+l;
		      k |= 01;
		      break;
		    case 5:
		      test.col[4] = j+l;
		      k |= 02;
		      break;
		    case 0:
		      test.map[sol[data.swap[b][test.row[0]][test.col[5]=j+l]]] = 6;
		      k |= 04;
		      break;
		    }
		  break;
		}
	      if (k != 7)
		goto next;

	      /* map values 7&8&9 */

	      for (j = 2; j < 6; j++)
	        if (!test.map[sol[data.swap[b][test.row[1]][test.col[j]]]])
	          test.map[sol[data.swap[b][test.row[1]][test.col[j]]]] = k++;

	      /* check row 2 cols 3&4&5&6 */

	      for (j = 2; j < 6; j++)
	        if ((d = (int)test.map[sol[data.swap[b][test.row[1]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[1]][best.col[j]]]]))
	        {
	          if (d > 0)
	            goto next;
	          break;
	        }

	      /* order cols 7&8&9 */

	      j = (l == 3) ? 6 : 3;
	      k = j+1;
	      l = j+2;
	      if (test.map[sol[data.swap[b][test.row[0]][j]]] > test.map[sol[data.swap[b][test.row[0]][k]]])
	      {
	        v = j;
		j = k;
		k = v;
	      }
	      if (test.map[sol[data.swap[b][test.row[0]][j]]] > test.map[sol[data.swap[b][test.row[0]][l]]])
	      {
	        v = j;
		j = l;
		l = v;
	      }
	      if (test.map[sol[data.swap[b][test.row[0]][k]]] > test.map[sol[data.swap[b][test.row[0]][l]]])
	      {
	        v = k;
		k = l;
		l = v;
	      }
	      test.col[6] = j;
	      test.col[7] = k;
	      test.col[8] = l;

	      /* check row 2 cols 7&8&9 */

	      if (!d)
	        for (j = 6; j < 9; j++)
	          if ((d = (int)test.map[sol[data.swap[b][test.row[1]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[1]][best.col[j]]]]))
	          {
	            if (d > 0)
	              goto next;
	            break;
	          }

	      /* check row 3 */

	      if (!d)
	        for (j = 0; j < 9; j++)
	          if ((d = (int)test.map[sol[data.swap[b][test.row[2]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[2]][best.col[j]]]]))
	          {
	            if (d > 0)
	              goto next;
	            break;
	          }

	      /* done with the first band */

	      if (boxes >= 3)
	      {
	        /* order row 4 */

	        v = 10;
		i = boxes >= 9 ? 9 : 6;
		while (--i >= 3)
	          if (test.map[sol[data.swap[b][i][test.col[0]]]] < v)
	          {
	            v = test.map[sol[data.swap[b][i][test.col[0]]]];
	            k = i;
	          }

	        /* check row 4 */

	        if (!d)
	          for (j = 0; j < 9; j++)
	            if ((d = (int)test.map[sol[data.swap[b][k][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[3]][best.col[j]]]]))
	            {
	              if (d > 0)
	                goto next;
	              break;
	            }
	        test.row[3] = k;

	        /* order rows 5&6 */

	        if (test.map[sol[data.swap[b][data.part[k][0]][test.col[0]]]] < test.map[sol[data.swap[b][data.part[k][1]][test.col[0]]]])
	        {
	          test.row[4] = data.part[k][0];
	          test.row[5] = data.part[k][1];
	        }
	        else
	        {
	          test.row[4] = data.part[k][1];
	          test.row[5] = data.part[k][0];
	        }

	        /* check rows 5&6 */

	        if (!d)
	          for (i = 4; i < 6; i++)
	            for (j = 0; j < 9; j++)
	              if ((d = (int)test.map[sol[data.swap[b][test.row[i]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[i]][best.col[j]]]]))
	              {
	                if (d > 0)
	                  goto next;
	                i = 6;
	                break;
	              }

		/* done with the second band */

		if (boxes >= 9)
		{
		  /* order row 7 */

	          v = 10;
	          for (i = 2; i < 5; i++)
	            if (test.map[sol[data.swap[b][data.part[k][i]][test.col[0]]]] < v)
	            {
	              v = test.map[sol[data.swap[b][data.part[k][i]][test.col[0]]]];
	              l = data.part[k][i];
	            }

	          /* check row 7 */

	          if (!d)
	            for (j = 0; j < 9; j++)
	              if ((d = (int)test.map[sol[data.swap[b][l][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[6]][best.col[j]]]]))
	              {
	                if (d > 0)
	                  goto next;
	                break;
	              }
	          test.row[6] = l;

	          /* order rows 8&9 */

	          if (test.map[sol[data.swap[b][data.part[l][0]][test.col[0]]]] < test.map[sol[data.swap[b][data.part[l][1]][test.col[0]]]])
	          {
	            test.row[7] = data.part[l][0];
	            test.row[8] = data.part[l][1];
	          }
	          else
	          {
	            test.row[7] = data.part[l][1];
	            test.row[8] = data.part[l][0];
	          }

	          /* check rows 8&9 */

	          if (!d)
	          {
	            for (i = 7; i < 9; i++)
	              for (j = 0; j < 9; j++)
	                if ((d = (int)test.map[sol[data.swap[b][test.row[i]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[i]][best.col[j]]]]))
	                {
	                  if (d > 0)
	                    goto next;
	                  i = 9;
	                  break;
	                }
	          }
	        }
	        else if (identity)
	          for (i = 6; i < 9; i++)
		    test.row[i] = i;
	      }
	      else if (identity)
	        for (i = 3; i < 9; i++)
		  test.row[i] = i;

	      /* check for automorphism */

	      if (d)
	        a = 1;
	      else
	      {
	        a++;
		if (g)
		  goto next;
		for (i = 0; i < 9; i++)
		  for (j = 0; j < 9; j++)
		    if (d = (int)puz[data.swap[b][test.row[i]][test.col[j]]] - (int)puz[data.swap[best.box][best.row[i]][best.col[j]]])
		    {
		      if (d > 0)
		        goto next;
		      i = 9;
		      break;
		    }
	        if (!d)
		  goto next;
	      }
	      if (identity > 0)
	      {
		if (b || pr || pc || test.row[3] != 3 || test.row[4] != 4 || test.row[6] != 6 || test.row[7] != 7 || test.col[3] != 3 || test.col[4] != 4 || test.col[6] != 6 || test.col[7] != 7)
		  return 0;
	        identity = -1;
	      }
	      else if (identity < 0)
	        return 0;
	      best = test;
	    next:;
	    }
	}
	best.aut = a;
	return &best;
}

typedef struct Panon_s
{
	int		element;
	int		box;
	unsigned char	map[81];
} Panon_t;

static const Panon_t	pap[] =
{
	{
		0, 0,
		{
			 0, 1, 2, 3, 4, 5, 6, 7, 8,
			 9,10,11,12,13,14,15,16,17,
			18,19,20,21,22,23,24,25,26,
			27,28,29,30,31,32,33,34,35,
			36,37,38,39,40,41,42,43,44,
			45,46,47,48,49,50,51,52,53,
			54,55,56,57,58,59,60,61,62,
			63,64,65,66,67,68,69,70,71,
			72,73,74,75,76,77,78,79,80,
		},
	},
	{
		Z01, 9,
		{
			 8,17,26,35,44,53,62,71,80,
			 7,16,25,34,43,52,61,70,79,
			 6,15,24,33,42,51,60,69,78,
			 5,14,23,32,41,50,59,68,77,
			 4,13,22,31,40,49,58,67,76,
			 3,12,21,30,39,48,57,66,75,
			 2,11,20,29,38,47,56,65,74,
			 1,10,19,28,37,46,55,64,73,
			 0, 9,18,27,36,45,54,63,72,
		},
	},
	{
		Z02, 0,
		{
			80,79,78,77,76,75,74,73,72,
			71,70,69,68,67,66,65,64,63,
			62,61,60,59,58,57,56,55,54,
			53,52,51,50,49,48,47,46,45,
			44,43,42,41,40,39,38,37,36,
			35,34,33,32,31,30,29,28,27,
			26,25,24,23,22,21,20,19,18,
			17,16,15,14,13,12,11,10, 9,
			 8, 7, 6, 5, 4, 3, 2, 1, 0,
		},
	},
	{
		Z03, 9,
		{
			72,63,54,45,36,27,18, 9, 0,
			73,64,55,46,37,28,19,10, 1,
			74,65,56,47,38,29,20,11, 2,
			75,66,57,48,39,30,21,12, 3,
			76,67,58,49,40,31,22,13, 4,
			77,68,59,50,41,32,23,14, 5,
			78,69,60,51,42,33,24,15, 6,
			79,70,61,52,43,34,25,16, 7,
			80,71,62,53,44,35,26,17, 8,
		},
	},
	{
		Z10, 0,
		{
			 8, 7, 6, 5, 4, 3, 2, 1, 0,
			17,16,15,14,13,12,11,10, 9,
			26,25,24,23,22,21,20,19,18,
			35,34,33,32,31,30,29,28,27,
			44,43,42,41,40,39,38,37,36,
			53,52,51,50,49,48,47,46,45,
			62,61,60,59,58,57,56,55,54,
			71,70,69,68,67,66,65,64,63,
			80,79,78,77,76,75,74,73,72,
		},
	},
	{
		Z11, 9,
		{
			80,71,62,53,44,35,26,17, 8,
			79,70,61,52,43,34,25,16, 7,
			78,69,60,51,42,33,24,15, 6,
			77,68,59,50,41,32,23,14, 5,
			76,67,58,49,40,31,22,13, 4,
			75,66,57,48,39,30,21,12, 3,
			74,65,56,47,38,29,20,11, 2,
			73,64,55,46,37,28,19,10, 1,
			72,63,54,45,36,27,18, 9, 0,
		},
	},
	{
		Z12, 0,
		{
			72,73,74,75,76,77,78,79,80,
			63,64,65,66,67,68,69,70,71,
			54,55,56,57,58,59,60,61,62,
			45,46,47,48,49,50,51,52,53,
			36,37,38,39,40,41,42,43,44,
			27,28,29,30,31,32,33,34,35,
			18,19,20,21,22,23,24,25,26,
			 9,10,11,12,13,14,15,16,17,
			 0, 1, 2, 3, 4, 5, 6, 7, 8,
		},
	},
	{
		Z13, 9,
		{
			 0, 9,18,27,36,45,54,63,72,
			 1,10,19,28,37,46,55,64,73,
			 2,11,20,29,38,47,56,65,74,
			 3,12,21,30,39,48,57,66,75,
			 4,13,22,31,40,49,58,67,76,
			 5,14,23,32,41,50,59,68,77,
			 6,15,24,33,42,51,60,69,78,
			 7,16,25,34,43,52,61,70,79,
			 8,17,26,35,44,53,62,71,80,
		},
	},
};

/*
 * determine row order min-lex pattern permutations for sol or grid if sol==0
 * given dihedral elements
 */

static Canon_t*
panon(Grid_t* grid, int elements, int already)
{
	register int			i;
	register int			j;
	register int			k;
	register int			d;
	register int			p;

	unsigned char			pos[81];
	unsigned char			sol[81];

	Canon_t				test;

	static Canon_t			best;

	/* initialize the solution cell values from the solution masks */

	for (i = j = p = 0; i < 81; i++)
	  if (sol[i] = data.ident[grid->cell[i]])
	    pos[p++] = i;

	/* initialize the identity canonical candidate */

	best.aut = best.box = 0;
	for (i = 0; i <= 9; i++)
	  best.map[i] = 0;
	for (i = j = 0; i < p; i++)
	  if (!best.map[sol[pos[i]]])
	  {
	    best.map[sol[pos[i]]] = ++j;
	    if (already && sol[pos[i]] != j)
	      return 0;
	  }

	/* loop through the group symmetries for op */

	for (k = 1; k < elementsof(pap); k++)
	  if (elements & pap[k].element)
	  {
	    for (i = 0; i <= 9; i++)
	      test.map[i] = 0;
	    for (i = j = d = 0; i < p; i++)
	      if (!test.map[sol[pap[k].map[pos[i]]]])
	      {
	        test.map[sol[pap[k].map[pos[i]]]] = ++j;
		if (!d)
		{
		  if (best.map[sol[pap[best.aut].map[pos[i]]]] < j)
		    goto worse;
		  if (best.map[sol[pap[best.aut].map[pos[i]]]] > j)
		    d = 1;
		}
	      }
	    if (already)
	      return 0;
	    best.aut = k;
	    best.box = pap[k].box;
	    for (i = 0; i <= 9; i++)
	      best.map[i] = test.map[i];
	  worse:;
	  }

	/* finish up the row/col map */

	if (best.box)
	  for (i = 0; i < 9; i++)
	  {
	    best.row[i] = COL(pap[best.aut].map[data.swap[best.box][0][i]]);
	    best.col[i] = ROW(pap[best.aut].map[data.swap[best.box][i][0]]);
	  }
	else
	  for (i = j = 0; i < 9; i++, j += 9)
	  {
	    best.row[i] = ROW(pap[best.aut].map[j]);
	    best.col[i] = COL(pap[best.aut].map[i]);
	  }
	return &best;
}

static unsigned char	xan[72][6] =
{
	{ 3, 4, 5, 6, 7, 8 },
	{ 3, 4, 5, 6, 8, 7 },
	{ 3, 4, 5, 7, 6, 8 },
	{ 3, 4, 5, 7, 8, 6 },
	{ 3, 4, 5, 8, 6, 7 },
	{ 3, 4, 5, 8, 7, 6 },
	{ 3, 5, 4, 6, 7, 8 },
	{ 3, 5, 4, 6, 8, 7 },
	{ 3, 5, 4, 7, 6, 8 },
	{ 3, 5, 4, 7, 8, 6 },
	{ 3, 5, 4, 8, 6, 7 },
	{ 3, 5, 4, 8, 7, 6 },
	{ 4, 3, 5, 6, 7, 8 },
	{ 4, 3, 5, 6, 8, 7 },
	{ 4, 3, 5, 7, 6, 8 },
	{ 4, 3, 5, 7, 8, 6 },
	{ 4, 3, 5, 8, 6, 7 },
	{ 4, 3, 5, 8, 7, 6 },
	{ 4, 5, 3, 6, 7, 8 },
	{ 4, 5, 3, 6, 8, 7 },
	{ 4, 5, 3, 7, 6, 8 },
	{ 4, 5, 3, 7, 8, 6 },
	{ 4, 5, 3, 8, 6, 7 },
	{ 4, 5, 3, 8, 7, 6 },
	{ 5, 3, 4, 6, 7, 8 },
	{ 5, 3, 4, 6, 8, 7 },
	{ 5, 3, 4, 7, 6, 8 },
	{ 5, 3, 4, 7, 8, 6 },
	{ 5, 3, 4, 8, 6, 7 },
	{ 5, 3, 4, 8, 7, 6 },
	{ 5, 4, 3, 6, 7, 8 },
	{ 5, 4, 3, 6, 8, 7 },
	{ 5, 4, 3, 7, 6, 8 },
	{ 5, 4, 3, 7, 8, 6 },
	{ 5, 4, 3, 8, 6, 7 },
	{ 5, 4, 3, 8, 7, 6 },
	{ 6, 7, 8, 3, 4, 5 },
	{ 6, 7, 8, 3, 5, 4 },
	{ 6, 7, 8, 4, 3, 5 },
	{ 6, 7, 8, 4, 5, 3 },
	{ 6, 7, 8, 5, 3, 4 },
	{ 6, 7, 8, 5, 4, 3 },
	{ 6, 8, 7, 3, 4, 5 },
	{ 6, 8, 7, 3, 5, 4 },
	{ 6, 8, 7, 4, 3, 5 },
	{ 6, 8, 7, 4, 5, 3 },
	{ 6, 8, 7, 5, 3, 4 },
	{ 6, 8, 7, 5, 4, 3 },
	{ 7, 6, 8, 3, 4, 5 },
	{ 7, 6, 8, 3, 5, 4 },
	{ 7, 6, 8, 4, 3, 5 },
	{ 7, 6, 8, 4, 5, 3 },
	{ 7, 6, 8, 5, 3, 4 },
	{ 7, 6, 8, 5, 4, 3 },
	{ 7, 8, 6, 3, 4, 5 },
	{ 7, 8, 6, 3, 5, 4 },
	{ 7, 8, 6, 4, 3, 5 },
	{ 7, 8, 6, 4, 5, 3 },
	{ 7, 8, 6, 5, 3, 4 },
	{ 7, 8, 6, 5, 4, 3 },
	{ 8, 6, 7, 3, 4, 5 },
	{ 8, 6, 7, 3, 5, 4 },
	{ 8, 6, 7, 4, 3, 5 },
	{ 8, 6, 7, 4, 5, 3 },
	{ 8, 6, 7, 5, 3, 4 },
	{ 8, 6, 7, 5, 4, 3 },
	{ 8, 7, 6, 3, 4, 5 },
	{ 8, 7, 6, 3, 5, 4 },
	{ 8, 7, 6, 4, 3, 5 },
	{ 8, 7, 6, 4, 5, 3 },
	{ 8, 7, 6, 5, 3, 4 },
	{ 8, 7, 6, 5, 4, 3 }
};

/*
 * map exemplar in g to index values in x according to a
 */

static int
xap(Grid_t* g, Grid_t* x, const char* a, unsigned short* pam)
{
	register int		i;
	register int		k;
	register int		m;
	register int		n;

	unsigned short		pambuf[10];
	unsigned char		map[10];

	if (!pam)
		pam = pambuf;
	for (i = 0; i < 10; i++)
	{
		map[i] = 0;
		pam[i] = 0x1ff;
	}
	if (!a)
		a = (const char*)FORMAT('w');
	m = 1;
	for (i = n = 0; a[i]; i++)
		if (k = texem[((unsigned char*)a)[i]])
		{
			map[data.ident[k]] = m;
			pam[data.ident[k]] = k;
			if (!n)
				m++;
		}
		else if (a[i] == '(')
			n++;
		else if (a[i] == ')')
		{
			n--;
			m++;
		}
	for (i = m = 0; i < 81; i++)
		if (k = x->cell[i] = map[data.ident[g->cell[i]]])
			m |= data.bit[k];
	return data.count[m];
}

#define AUT(g,i,v)	(int)((v=CELL(g,i))==0x1ff?0:v)

/*
 * canonicalize exemplar in grid
 * map is the exemplar char map
 * chars not in map are mapped to 0, default is EXMP_NOT==1
 * easier because exemplar cell values are fixed
 * harder because there are only a few exemplar cell values
 * suffer the 72**2 inner loop because there aren't that many exemplars
 */

static Canon_t*
xanon(Grid_t* grid, const char* map, unsigned short* pam)
{
	register int			b;
	register int			d;
	register int			i;
	register int			j;
	register int			k;
	register int			l;
	register int			m;
	register int			n;

	int				a;
	int				ca;
	int				pr;
	int				pc;

	Grid_t				puz;
	Canon_t				test;

	static Canon_t			best;

	/* initialize the puzzle cell values from the exemplar grid */

	ca = xap(grid, &puz, map, pam) > 1;

	/* initialize the worst canonical candidate */

	a = 0;
	best.box = 0;
	for (i = 0; i < 9; i++)
	  test.map[i] = best.row[i] = best.col[i] = i;
	test.map[i] = i;

	/* search over all boxes */

	for (b = 0; b < 18; b++)
	  for (pr = 0; pr < 6; pr++)
	    for (pc = 0; pc < 6; pc++)
	    {
	      /* fix the top left box */

	      k = 1;
	      for (i = 0; i < 3; i++)
	      {
	        test.row[i] = data.perm[pr][i];
	        test.col[i] = data.perm[pc][i];
	        if (k && (d = (int)puz.cell[data.swap[b][test.row[0]][test.col[i]]] - (int)puz.cell[data.swap[best.box][best.row[0]][best.col[i]]]))
		{
		  if (d > 0)
		    goto skip;
		  k = 0;
		}
	      }
	      test.box = b;

	      /* check all band 2 3 stack 2 3 permutations */

	      for (k = 0; k < 72; k++)
	        for (l = 0; l < 72; l++)
		{
		  memcpy(test.row+3, xan[k], 6);
		  memcpy(test.col+3, xan[l], 6);
		  for (i = 0; i < 9; i++)
		    for (j = 0; j < 9; j++)
	              if (d = (int)puz.cell[data.swap[b][test.row[i]][test.col[j]]] - (int)puz.cell[data.swap[best.box][best.row[i]][best.col[j]]])
		      {
		        if (d < 0)
			{
			  a = 1;
			  best = test;
			}
		        goto next;
		      }
	          a++;
	          if (ca)
		    for (i = 0; i < 9; i++)
		      for (j = 0; j < 9; j++)
		        if (d = AUT(grid,data.swap[b][test.row[i]][test.col[j]],m) - AUT(grid,data.swap[best.box][best.row[i]][best.col[j]],n))
		        {
		          if (d < 0)
			    best = test;
		          goto next;
		        }
	          next:;
	        }
	      skip:;
	    }
	best.aut = a;
	return &best;
}

static char*
cansolution(Canon_t* can, unsigned short* hit, char* sol)
{
	register int	i;
	register int	j;
	register char*	s;

	s = sol;
	for (i = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
			*s++ = name[can->map[data.ident[hit[data.swap[can->box][can->row[i]][can->col[j]]]]]];
	*s = 0;
	return sol;
}

static char*
canpuzzle(Canon_t* can, Grid_t* grid, int exemplar, unsigned short* hit, char* puz, int empty)
{
	register int	i;
	register int	j;
	register int	k;
	register int	m;
	register char*	s;
	const char*	pip;

	if (exemplar)
	{
		pip = exmp;
		empty = pip[0];
	}
	else
		pip = name;
	if (!hit)
		hit = grid->cell;
	if (!empty)
		empty = '0';
	s = puz;
	for (i = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
		{
			k = data.swap[can->box][can->row[i]][can->col[j]];
			m = can->map[data.ident[hit[k]]];
			if (data.count[grid->cell[k]] > 1)
			{
				if (empty != 'A')
				{
					*s++ = empty;
					continue;
				}
				m += 9 + (state.stats.magic && state.stats.magic->cell[k] ? 9 : 0);
			}
			*s++ = pip[m];
		}
	*s = 0;
	return puz;
}

static const unsigned char	hv[72][6] =
{
	0, 1, 2, 3, 4, 5,
	0, 1, 2, 3, 5, 4,
	0, 1, 2, 4, 3, 5,
	0, 1, 2, 4, 5, 3,
	0, 1, 2, 5, 3, 4,
	0, 1, 2, 5, 4, 3,
	0, 2, 1, 3, 4, 5,
	0, 2, 1, 3, 5, 4,
	0, 2, 1, 4, 3, 5,
	0, 2, 1, 4, 5, 3,
	0, 2, 1, 5, 3, 4,
	0, 2, 1, 5, 4, 3,
	1, 0, 2, 3, 4, 5,
	1, 0, 2, 3, 5, 4,
	1, 0, 2, 4, 3, 5,
	1, 0, 2, 4, 5, 3,
	1, 0, 2, 5, 3, 4,
	1, 0, 2, 5, 4, 3,
	1, 2, 0, 3, 4, 5,
	1, 2, 0, 3, 5, 4,
	1, 2, 0, 4, 3, 5,
	1, 2, 0, 4, 5, 3,
	1, 2, 0, 5, 3, 4,
	1, 2, 0, 5, 4, 3,
	2, 0, 1, 3, 4, 5,
	2, 0, 1, 3, 5, 4,
	2, 0, 1, 4, 3, 5,
	2, 0, 1, 4, 5, 3,
	2, 0, 1, 5, 3, 4,
	2, 0, 1, 5, 4, 3,
	2, 1, 0, 3, 4, 5,
	2, 1, 0, 3, 5, 4,
	2, 1, 0, 4, 3, 5,
	2, 1, 0, 4, 5, 3,
	2, 1, 0, 5, 3, 4,
	2, 1, 0, 5, 4, 3,
	3, 4, 5, 0, 1, 2,
	3, 4, 5, 0, 2, 1,
	3, 4, 5, 1, 0, 2,
	3, 4, 5, 1, 2, 0,
	3, 4, 5, 2, 0, 1,
	3, 4, 5, 2, 1, 0,
	3, 5, 4, 0, 1, 2,
	3, 5, 4, 0, 2, 1,
	3, 5, 4, 1, 0, 2,
	3, 5, 4, 1, 2, 0,
	3, 5, 4, 2, 0, 1,
	3, 5, 4, 2, 1, 0,
	4, 3, 5, 0, 1, 2,
	4, 3, 5, 0, 2, 1,
	4, 3, 5, 1, 0, 2,
	4, 3, 5, 1, 2, 0,
	4, 3, 5, 2, 0, 1,
	4, 3, 5, 2, 1, 0,
	4, 5, 3, 0, 1, 2,
	4, 5, 3, 0, 2, 1,
	4, 5, 3, 1, 0, 2,
	4, 5, 3, 1, 2, 0,
	4, 5, 3, 2, 0, 1,
	4, 5, 3, 2, 1, 0,
	5, 3, 4, 0, 1, 2,
	5, 3, 4, 0, 2, 1,
	5, 3, 4, 1, 0, 2,
	5, 3, 4, 1, 2, 0,
	5, 3, 4, 2, 0, 1,
	5, 3, 4, 2, 1, 0,
	5, 4, 3, 0, 1, 2,
	5, 4, 3, 0, 2, 1,
	5, 4, 3, 1, 0, 2,
	5, 4, 3, 1, 2, 0,
	5, 4, 3, 2, 0, 1,
	5, 4, 3, 2, 1, 0,
};

/*
 * Red Ed's order 9 hungarian algorithm implementation
 * see http://www.public.iastate.edu/~ddoty/HungarianAlgorithm.html
 */

#define HA_CLEAR		0
#define HA_STARRED		1
#define HA_PRIMED		2

#define HA_UNCOVERED		0
#define HA_COVERED		1

typedef struct Ha_coord_s
{
	int		r;
	int		c;
} Ha_coord_t;

typedef struct Ha_s
{
	int      	R_cov[9];		/* row coverage booleans */
	int      	C_cov[9];		/* col coverage booleans */
	int      	M[9][9];		/* markup (stars/primes) matrix */
	int      	C[9][9];		/* cover matrix */
	Ha_coord_t	Z0;			/* an uncovered zero found in step 4 */
} Ha_t;

/*
 * Step 1
 * For each row of the matrix, find the smallest element and subtract it from every element in its
 * row.  Go to Step 2.
 */

static int ha_step1(Ha_t* h) {
  int minval;
  int i, j;
 
  for (i=0; i<9; i++) {
    minval = h->C[i][0];
    for (j=1; j<9; j++) if (h->C[i][j] < minval) minval = h->C[i][j];
    for (j=0; j<9; j++) h->C[i][j] -= minval;
  }
 
  for (i=0; i<9; i++) {
    h->R_cov[i] = h->C_cov[i] = HA_UNCOVERED;
    for (j=0; j<9; j++) h->M[i][j] = HA_CLEAR;
  }
 
  return 2;
}

/*
 * Step 2
 * Find a zero (Z) in the resulting matrix.  If there is no starred zero in its row or column, star Z.
 * Repeat for each element in the matrix. Go to Step 3.
 */

static int ha_step2(Ha_t* h) {
  int i, j;
 
  for (i=0; i<9; i++) {
    for (j=0; j<9; j++) {
      if ( h->C[i][j]==0 && h->C_cov[j]==HA_UNCOVERED && h->R_cov[i]==HA_UNCOVERED ) {
        h->M[i][j] = HA_STARRED;
        h->C_cov[j] = h->R_cov[i] = HA_COVERED;
      }
    }
  }
 
  for (i=0; i<9; i++) h->C_cov[i] = h->R_cov[i] = HA_UNCOVERED;
 
  return 3;
}

/*
 * Step 3
 * Cover each column containing a starred zero.  If K columns are covered, the starred zeros describe
 * a complete set of unique assignments.  In this case, Go to DONE, otherwise, Go to Step 4. Once we
 * have searched the entire cost matrix, we count the number of independent zeros found.  If we have
 * found (and starred) K independent zeros then we are done.  If not we procede to Step 4.
 */

static int ha_step3(Ha_t* h) {
  int count;
  int i, j;
 
  for (i=0; i<9; i++)
    for (j=0; j<9; j++)
      if (h->M[i][j] == HA_STARRED) h->C_cov[j] = HA_COVERED;

  for (j=count=0; j<9; j++) count += h->C_cov[j];

  return (count<9 ? 4 : 7);
}

/*
 * Step 4
 * Find a noncovered zero and prime it.  If there is no starred zero in the row containing this primed
 * zero, Go to Step 5.  Otherwise, cover this row and uncover the column containing the starred zero.
 * Continue in this manner until there are no uncovered zeros left. Go to Step 6.
 */

static int ha_step4(Ha_t* h) {
  int row, col;

  for (;;) {
    for (row=0; row<9; row++) for (col=0; col<9; col++)
      if ( h->C[row][col]==0 && h->R_cov[row]==HA_UNCOVERED && h->C_cov[col]==HA_UNCOVERED )
        goto step4_found_zero;
    return 6;

 step4_found_zero:
    h->M[row][col] = HA_PRIMED;
    h->Z0.r = row;
    h->Z0.c = col;

    for (col=0; col<9; col++)
      if (h->M[row][col] == HA_STARRED)
        goto step4_found_star;
    return 5;

 step4_found_star:
    h->R_cov[row] = HA_COVERED;
    h->C_cov[col] = HA_UNCOVERED;
  }
 
  return 0;  /*NOTREACHED*/
}

/*
 * Step 5
 * Construct a series of alternating primed and starred zeros as follows.  Let h->Z0 represent the
 * uncovered primed zero found in Step 4.  Let Z1 denote the starred zero in the column of h->Z0 (if any).
 * Let Z2 denote the primed zero in the row of Z1 (there will always be one).  Continue until the
 * series terminates at a primed zero that has no starred zero in its column.  Unstar each starred
 * zero of the series, star each primed zero of the series, erase all primes and uncover every line
 * in the matrix.  Return to Step 3.
 */

static int ha_step5(Ha_t* h) {
  Ha_coord_t path[2*9];
  int      count, r, c;
 
  path[0].r = r = h->Z0.r;
  path[0].c = c = h->Z0.c;
  count = 1;

  do {
    for (r=0; r<9; r++) if (h->M[r][c] == HA_STARRED) break;
    if (r < 9) {
      path[count].r = r; path[count++].c = c;
      for(c=0; c<9; c++) if (h->M[r][c] == HA_PRIMED) break;
      path[count].r = r; path[count++].c = c;
    }
  } while (r < 9);

  while (count--) h->M[path[count].r][path[count].c] = ((count&1) ? HA_CLEAR : HA_STARRED);
 
  for (r=0; r<9; r++) {
    h->R_cov[r] = h->C_cov[r] = HA_UNCOVERED;
    for (c=0; c<9; c++) if (h->M[r][c] == HA_PRIMED) h->M[r][c] = HA_CLEAR;
  }
 
  return 3;
}

/*
 * Step 6
 * Add the smallest uncovered value to every element of each covered row, and subtract it from every
 * element of each uncovered column.  Return to Step 4 without altering any stars, primes, or covered
 * lines.
 */

static int ha_step6(Ha_t* h) {
  int minval, i, j;
   
  for (i=0,minval=-1; i<9; i++) for (j=0; j<9; j++)
    if (h->R_cov[i]==HA_UNCOVERED && h->C_cov[j]==HA_UNCOVERED)
      if (minval==-1 || h->C[i][j]<minval)
        minval = h->C[i][j];

  for (i=0; i<9; i++) for (j=0; j<9; j++) {
    if (h->R_cov[i] == HA_COVERED)   h->C[i][j] += minval;
    if (h->C_cov[j] == HA_UNCOVERED) h->C[i][j] -= minval;
  }
 
  return 4;
}

/*
 * Munkres Hungarian Algorithm Controller coded by Red Ed
 */

static void ha(Ha_t* h) {
  int step = 1;
  for (;;)
  {
    switch (step)
    {
    case 1: step = ha_step1(h); continue; 
    case 2: step = ha_step2(h); continue; 
    case 3: step = ha_step3(h); continue; 
    case 4: step = ha_step4(h); continue; 
    case 5: step = ha_step5(h); continue; 
    case 6: step = ha_step6(h); continue; 
    }
    break;
  }
}

/*
 * determine the Hamming/edit distance or similarity between grids a and b
 */

static int
distance(Canon_t* best, Grid_t* a, Grid_t* b, int similarity)
{
	register int	d;
	register int	i;
	register int	j;
	register int	m;
	register int	n;

	int		am;
	int		bm;
	int		pb;
	int		pr;
	int		pc;
	int		pv;
	int		ph;

	unsigned char	av[81];
	unsigned char	bv[81];
	unsigned char	row[81];
	unsigned char	col[81];

	Ha_t		h;

	Canon_t		test;

	/* initialize the solution cell values from the solution masks */

	for (i = 0; i < 81; i++)
	{
	  av[i] = data.ident[a->cell[i]];
	  bv[i] = data.ident[b->cell[i]];
	}

	/* initialize the worst map candidate */

	d = similarity ? 0 : 82;
	test.map[0] = 0;

	/* search over all boxes */

	for (pb = 0; pb < 18; pb++)
	  for (pr = 0; pr < 6; pr++)
	    for (pc = 0; pc < 6; pc++)
	    {
	      for (i = 0; i < 3; i++)
	      {
	        test.row[i] = data.perm[pr][i];
	        test.col[i] = data.perm[pc][i];
	      }
	      for (ph = 0; ph < elementsof(hv); ph++)
	      {
		for (i = 0; i < 6; i++)
		  test.row[i+3] = hv[ph][i] + 3;
	        for (pv = 0; pv < elementsof(hv); pv++)
		{
		  for (i = 0; i < 6; i++)
		    test.col[i+3] = hv[pv][i] + 3;
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		      h.C[i][j] = 9;
		  n = m = 0;
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		    {
		      am = av[data.swap[0][i][j]];
		      bm = bv[data.swap[pb][test.row[i]][test.col[j]]];
		      if (am && bm)
		      {
		        h.C[bm-1][am-1]--;
			row[m] = i;
			col[m] = j;
		        m++;
		      }
		      else if (!similarity && (am || bm) && ++n >= d)
		        goto nope;
		    }
		  if (similarity && m < d)
		    goto nope;
		  ha(&h);
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		      if (h.M[i][j] == HA_STARRED)
		        test.map[i+1] = j+1;
		  for (i = 0; i < m; i++)
		  {
	            am = av[data.swap[0][row[i]][col[i]]];
		    bm = test.map[bv[data.swap[pb][test.row[row[i]]][test.col[col[i]]]]];
		    if (am == bm)
		    {
		      if (similarity)
		        n++;
		    }
		    else if (!similarity && ++n >= d)
		      goto nope;
		  }
		  if (similarity ? d < n : d > n)
		  {
		    d = n;
		    *best = test;
		    best->box = pb;
		  }
		nope:;
	        }
	      }
	    }
	return best->aut = d;
}

/*
 * list all mappings with distance all
 */

static int
alldistance(Grid_t* a, Grid_t* b, int similarity, int all)
{
	register int	i;
	register int	j;
	register int	m;
	register int	n;

	int		am;
	int		bm;
	int		pb;
	int		pr;
	int		pc;
	int		pv;
	int		ph;

	unsigned char	av[81];
	unsigned char	bv[81];
	unsigned char	row[81];
	unsigned char	col[81];

	Ha_t		h;

	Canon_t		test;

	/* initialize the solution cell values from the solution masks */

	for (i = 0; i < 81; i++)
	{
	  av[i] = data.ident[a->cell[i]];
	  bv[i] = data.ident[b->cell[i]];
	}

	/* initialize the worst map candidate */

	test.map[0] = 0;
	test.aut = all;

	/* search over all boxes */

	for (pb = 0; pb < 18; pb++)
	{
	  test.box = pb;
	  for (pr = 0; pr < 6; pr++)
	    for (pc = 0; pc < 6; pc++)
	    {
	      for (i = 0; i < 3; i++)
	      {
	        test.row[i] = data.perm[pr][i];
	        test.col[i] = data.perm[pc][i];
	      }
	      for (ph = 0; ph < elementsof(hv); ph++)
	      {
		for (i = 0; i < 6; i++)
		  test.row[i+3] = hv[ph][i] + 3;
	        for (pv = 0; pv < elementsof(hv); pv++)
		{
		  for (i = 0; i < 6; i++)
		    test.col[i+3] = hv[pv][i] + 3;
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		      h.C[i][j] = 9;
		  n = m = 0;
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		    {
		      am = av[data.swap[0][i][j]];
		      bm = bv[data.swap[pb][test.row[i]][test.col[j]]];
		      if (am && bm)
		      {
		        h.C[bm-1][am-1]--;
			row[m] = i;
			col[m] = j;
		        m++;
		      }
		      else if (!similarity && (am || bm) && ++n > all)
		        goto nope;
		    }
		  if (similarity && m < all)
		    goto nope;
		  ha(&h);
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		      if (h.M[i][j] == HA_STARRED)
		        test.map[i+1] = j+1;
		  for (i = 0; i < m; i++)
		  {
	            am = av[data.swap[0][row[i]][col[i]]];
		    bm = test.map[bv[data.swap[pb][test.row[row[i]]][test.col[col[i]]]]];
		    if (am == bm)
		    {
		      if (similarity)
		        n++;
		    }
		    else if (!similarity && ++n > all)
		      goto nope;
		  }
		  if (n == all)
		    list(a, 's', VERIFIED, &test);
		nope:;
	        }
	      }
	    }
	}
	return all;
}

/*
 * return puzzle encoding for use as splay tree keys
 */

static char*
encode(const char* puzzle)
{
	register int		c;
	register int		i;
	register int		j;
	register int		k;

	static unsigned char	tmp[81];
	static unsigned char	key[42];

	for (i = j = k = 0; i < 81; i++)
		if (c = puzzle[i] - '0')
		{
			if (j)
			{
				tmp[k++] = j + 8;
				j = 0;
			}
			tmp[k++] = c - 1;
		}
		else if (++j >= 7)
		{
			tmp[k++] = j + 8;
			j = 0;
		}
	if (j)
		tmp[k++] = j + 8;
	if (k & 1)
		tmp[k++] = 0;
	for (i = j = 0; i < k; i += 2)
		key[++j] = (tmp[i]<<4)|tmp[i+1];
	key[0] = j + 1;
	return (char*)key;
}

#define ROTATE(p,l,r,t)		((t)=(p)->l,(p)->l=(t)->r,(t)->r=(p),(p)=(t))
#define COMPARE(d,a,b,c)	(((d)->encode>0)?(((c)=(*(a)-*(b)))?(c):((c)=memcmp((a),(b),*(a)))):((c)=strcmp((a),(b))))

/*
 * enter puzzle string in dictionary dict
 * uses top-down splaying (ala Tarjan and Sleator)
 */

#define lookup(d,k)		enter(d,&data.empty,k)

static Item_t*
enter(Dict_t* dict, Grid_t* grid, const char* key)
{
	register int		cmp;
	register Item_t*	root;
	register Item_t*	t;
	register Item_t*	left;
	register Item_t*	right;
	register Item_t*	lroot;
	register Item_t*	rroot;

	if (dict->encode)
		key = (const char*)encode(key);
	root = dict->root;
	left = right = lroot = rroot = 0;
	while (root)
	{
		if (!COMPARE(dict, key, root->key, cmp))
			break;
		else if (cmp < 0)
		{
			if (root->left && COMPARE(dict, key, root->left->key, cmp) <= 0)
			{
				ROTATE(root, left, right, t);
				if (!cmp)
					break;
			}
			if (right)
				right->left = root;
			else
				rroot = root;
			right = root;
			root = root->left;
			right->left = 0;
		}
		else
		{
			if (root->right && COMPARE(dict, key, root->right->key, cmp) >= 0)
			{
				ROTATE(root, right, left, t);
				if (!cmp)
					break;
			}
			if (left)
				left->right = root;
			else
				lroot = root;
			left = root;
			root = root->right;
			left->right = 0;
		}
	}
	if (root)
	{
		if (right)
			right->left = root->right;
		else
			rroot = root->right;
		if (left)
			left->right = root->left;
		else
			lroot = root->left;
	}
	else if (grid == &data.empty)
	{
		if (right)
		{
			right->left = 0;
			while (t = right->left)
				right = t;
			right->left = rroot;
		}
		if (left)
			left->right = 0;
		dict->root = lroot;
		return 0;
	}
	else
	{
		dict->count++;
		if (root = state.free.root)
			state.free.root = root->right;
		else if (state.entries && dict->count >= state.entries)
		{
			fprintf(stderr, "%s: limit exceeded at %lu dictionary entries\n", command, dict->count);
			fini(1);
		}
		else if (!(root = newof(0, Item_t, 1, (dict->encode > 0) ? (*key - 1) : 81)))
		{
			fprintf(stderr, "%s: out of space at %lu dictionary entries\n", command, dict->count);
			fini(1);
		}
		if (dict->encode)
			memcpy(root->key, key, *key);
		else
			strcpy(root->key, key);
		root->count = root->part = 0;
		if (!(root->index = (unsigned long)state.input->input))
			root->index = dict->count;
		if (grid)
		{
			if (!root->grid && !(root->grid = newof(0, Grid_t, 1, 0)))
			{
				fprintf(stderr, "%s: out of space at %lu dictionary entries\n", command, dict->count);
				fini(1);
			}
			*root->grid = *grid;
		}
		if (dict->tail)
			dict->tail->next = root;
		else
			dict->head = root;
		dict->tail = root;
	}
	root->count++;
	root->left = lroot;
	root->right = rroot;
	return dict->root = root;
}

/*
 * canonicalize g and insert puzzle string in dictionary dict
 */

static Item_t*
insert(Dict_t* dict, Grid_t* g)
{
	char			key[82];

	state.uniqued++;
	canpuzzle(canon(g, 0, 0, 0), g, 0, state.hit, key, '0');
	return enter(dict, g, key);
}

/*
 * canonicalize subgrid g and insert puzzle string in dictionary dict
 */

static Item_t*
subinsert(Dict_t* dict, Grid_t* g)
{
	char			key[82];

	state.uniqued++;
	return enter(dict, g, subcanon(0, g, 0, key, '0', state.transpose));
}

/*
 * flatten dict to a list and return the head
 */

static Item_t*
flatten(Dict_t* dict)
{
	register Item_t*	root;
	register Item_t*	right;
	register Item_t*	left;
	register Item_t*	last;

	root = dict->root;
	if (!dict->last)
	{
		last = 0;
		for (right = root; right; right = last->right)
		{
			while (left = right->left)
			{
				right->left = left->right;
				left->right = right;
				right = left;
			}
			last = last ? (last->right = right) : (root = right);
		}
		dict->last = last;
		dict->root = root;
	}
	return root;
}

/*
 * clear dict and optionally add items to free list
 */

static void
clear(Dict_t* dict, int encode, int free)
{
	if (free && dict->root && !dict->encode)
	{
		if (!dict->last)
			flatten(dict);
		if (state.free.root)
			state.free.last->right = dict->root;
		else
			state.free.root = dict->root;
		state.free.last = dict->last;
	}
	dict->root = dict->last = dict->head = dict->tail = 0;
	dict->count = 0;
	dict->encode = encode;
}

static const unsigned char	bandinfo[] = { 0,3, 0,4, 0,5, 0,6, 0,7, 0,8, 1,5, 1,6, 1,7, 1,8, 2,3, 2,4, 2,5, 2,8 };

#define BANDINIT()		do if (!state.bandits.count) bandinit(); while (0)

/*
 * initialize the bandsig()/bandindex() dictionary
 */

static void
bandinit(void)
{
	register int	b;
	register int	i;
	register int	j;
	register int	k;
	register int	n;
	int		pr;
	int		pc;
	char*		t;
	unsigned char	sol[27];
	char		key[elementsof(bandinfo)/2+1];
	Canon_t		test;

	/* initialize the fixed band values */

	for (i = 0; i < 9; i++)
	  sol[i] = i+1;
	sol[9] = 4;
	sol[10] = 5;

	/* enter the lookup keys for each band */

	for (n = 0; n < elementsof(data.bands); n++)
	{
	  /* initialize the band specific values */

	  for (i = 0; i < 16; i++)
	     sol[i+11] = data.bands[n][i] - '0';

	  /* search over the 3 boxes in the band */

	  for (b = 0; b < 3; b++)
	    for (pr = 0; pr < 6; pr++)
	      for (pc = 0; pc < 6; pc++)
	      {
	        /* initialize the map */

	        for (i = 0; i < 3; i++)
	        {
	          test.row[i] = data.perm[pr][i];
	          test.col[i] = data.perm[pc][i];
	        }
	        k = 0;
	        for (i = 0; i < 3; i++)
	          for (j = 0; j < 3; j++)
	            test.map[sol[data.swap[b][test.row[i]][test.col[j]]]] = ++k;

	        /* find the boxes with 1 and 2 and order cols 4&5&7&8 */

	        k = 0;
	        for (i = 3; i < 9; i++)
	        {
	          if ((j = test.map[sol[data.swap[b][test.row[1]][i]]]) < 3)
	  	  {
	  	    test.col[j+2] = i;
	  	    k |= BOX(i);
	  	  }
	          if ((j = test.map[sol[data.swap[b][test.row[2]][i]]]) < 3)
	  	    test.col[j+5] = i;
	        }
	        if (k == 3)
	          continue;

	        /* order cols 6&9 */

	        for (j = (i = k == 1 ? 3 : 6) + 3; i < j; i++)
	          if (test.map[sol[data.swap[b][test.row[1]][i]]] >= 3)
	  	  {
	  	    test.col[5] = i;
	  	    break;
	  	  }
	        for (j = (i = k == 1 ? 6 : 3) + 3; i < j; i++)
	          if (test.map[sol[data.swap[b][test.row[2]][i]]] >= 3)
	  	  {
	  	    test.col[8] = i;
	  	    break;
	  	  }

	        /* enter into the dictionary */

	        t = key;
	        for (i = 0; i < elementsof(bandinfo); i += 2)
	          *t++ = test.map[sol[data.swap[b][test.row[bandinfo[i]]][test.col[bandinfo[i+1]]]]];
	        *t = 0;
	        enter(&state.bandits, 0, key)->index = n;
	      }
	}
}

/*
 * return the index for band 0<=b<=5
 */

static int
bandindex(unsigned char* sol, int b, int gang44)
{
	register int	i;
	register int	j;
	register int	k;
	register char*	t;
	int		pr;
	int		pc;
	char		key[elementsof(bandinfo)/2+1];
	Canon_t		test;

	BANDINIT();
	b *= 3;
	for (pr = 0; pr < 6; pr++)
	  for (pc = 0; pc < 6; pc++)
	  {
	    /* initialize the map */

	    for (i = 0; i < 3; i++)
	    {
	      test.row[i] = data.perm[pr][i];
	      test.col[i] = data.perm[pc][i];
	    }
	    k = 0;
	    for (i = 0; i < 3; i++)
	      for (j = 0; j < 3; j++)
	        test.map[sol[data.swap[b][test.row[i]][test.col[j]]]] = ++k;

	    /* find the boxes with 1 and 2 and order cols 4&5&7&8 */

	    k = 0;
	    for (i = 3; i < 9; i++)
	    {
	      if ((j = test.map[sol[data.swap[b][test.row[1]][i]]]) < 3)
	      {
		test.col[j+2] = i;
		k |= BOX(i);
	      }
	      if ((j = test.map[sol[data.swap[b][test.row[2]][i]]]) < 3)
		test.col[j+5] = i;
	    }
	    if (k == 3)
	      continue;

	    /* order cols 6&9 */

	    for (j = (i = k == 1 ? 3 : 6) + 3; i < j; i++)
	      if (test.map[sol[data.swap[b][test.row[1]][i]]] >= 3)
	      {
		test.col[5] = i;
		break;
	      }
	    for (j = (i = k == 1 ? 6 : 3) + 3; i < j; i++)
	      if (test.map[sol[data.swap[b][test.row[2]][i]]] >= 3)
	      {
		test.col[8] = i;
		break;
	      }

	    /* lookup */

	    t = key;
	    for (i = 0; i < elementsof(bandinfo); i += 2)
	      *t++ = test.map[sol[data.swap[b][test.row[bandinfo[i]]][test.col[bandinfo[i+1]]]]];
	    *t = 0;
	    i = enter(&state.bandits, 0, key)->index;
	    return gang44 ? data.gang44[i] : i;
	  }
	return elementsof(data.bands);
}

#define SORT(p,t,i,j)	if (p[i] > p[j]) { t = p[i]; p[i] = p[j]; p[j] = t; }

/*
 * return the min-lex band signature for solution grid g
 */

static int*
bandsig(Grid_t* g, int sort, int all, int gang44)
{
	register int	i;
	unsigned char	sol[81];

	static int	inx[9];

	BANDINIT();

	/* initialize the solution cell values from the solution masks */

	for (i = 0; i < 81; i++)
	  sol[i] = data.ident[COUNT(g,i) == 1 ? g->cell[i] : state.hit[i]];

	/* for each of 6 bands */

	for (i = 0; i < 6; i++)
	  inx[i] = bandindex(sol, i, gang44);
	if (!sort)
	  return inx;
	SORT(inx, i, 0, 1);
	SORT(inx, i, 0, 2);
	SORT(inx, i, 1, 2);
	SORT(inx, i, 3, 4);
	SORT(inx, i, 3, 5);
	SORT(inx, i, 4, 5);
	if (!all || inx[0] < inx[3] || inx[0] == inx[3] && (inx[1] < inx[4] || inx[1] == inx[4] && inx[2] <= inx[5]))
	  return inx;
	inx[6] = inx[0];
	inx[7] = inx[1];
	inx[8] = inx[2];
	return inx+3;
}

/*
 * return min-lex canonical form if sol is already min-lex
 * most recent box failure moved after box 0 (always first)
 */

typedef struct Cord_s
{
	unsigned char		box;
	unsigned char		row;
	unsigned char		col;
} Cord_t;

static Canon_t*
bandcanon(unsigned char* sol)
{
	register int			b;
	register int			d;
	register int			i;
	register int			j;
	register int			k;
	register int			l;
	register int			v;

	int				a;
	int				f;
	int				o;
	int				r;
	int				c;

	Canon_t				test;

	static Canon_t			best;

	static unsigned short		cord[648];

	/* initialize the order */

	if (!cord[1])
	  for (b = o = 0; b < 18; b++)
	    for (r = 0; r < 6; r++)
	      for (c = 0; c < 6; c += 1)
	        cord[o++] = (b<<6)|(r<<3)|c;

	/* initialize the worst canonical candidate */

	a = f = 1;
	best.box = 0;
	for (i = 0; i < 9; i++)
	{
	  best.map[i] = 10;
	  best.row[i] = best.col[i] = i;
	}
	best.map[i] = 10;

	/* search all permutations over all boxes */

	for (o = 0; o < elementsof(cord); o++)
	{
	  b = cord[o]>>6;
	  r = (cord[o]>>3)&7;
	  c = cord[o]&7;

	  /* initialize the map */

	  for (i = 0; i < 3; i++)
	  {
	    test.row[i] = data.perm[r][i];
	    test.col[i] = data.perm[c][i];
	  }
	  for (i = 1; i <= 9; i++)
	    test.map[i] = 0;
	  test.map[sol[data.swap[b][test.row[0]][test.col[0]]]] = 1;
	  test.map[sol[data.swap[b][test.row[0]][test.col[1]]]] = 2;
	  test.map[sol[data.swap[b][test.row[0]][test.col[2]]]] = 3;
	  test.map[sol[data.swap[b][test.row[1]][test.col[0]]]] = 4;
	  test.map[sol[data.swap[b][test.row[1]][test.col[1]]]] = 5;

	  /* map value 6 and order cols 4&5&6 */

	  k = 0;
	  for (i = 3; i < 9; i++)
	    if (test.map[sol[data.swap[b][test.row[0]][i]]] == 4)
	    {
	      l = BOX(i) * 3;
	      for (j = 0; j < 3; j++)
		switch (test.map[sol[data.swap[b][test.row[0]][j+l]]])
		{
		case 4:
		  test.col[3] = j+l;
		  k |= 01;
		  break;
		case 5:
		  test.col[4] = j+l;
		  k |= 02;
		  break;
		case 0:
		  test.map[sol[data.swap[b][test.row[0]][test.col[5]=j+l]]] = 6;
		  k |= 04;
		  break;
		}
	      break;
	    }
	  if (k != 7)
	    goto next;

	  /* map values 7&8&9 */

	  for (j = 2; j < 6; j++)
	    if (!test.map[sol[data.swap[b][test.row[1]][test.col[j]]]])
	      test.map[sol[data.swap[b][test.row[1]][test.col[j]]]] = k++;

	  /* check row 2 cols 3&4&5&6 */

	  for (j = 2; j < 6; j++)
	    if ((d = (int)test.map[sol[data.swap[b][test.row[1]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[1]][best.col[j]]]]))
	    {
	      if (d > 0)
	        goto next;
	      break;
	    }

	  /* order cols 7&8&9 */

	  j = (l == 3) ? 6 : 3;
	  k = j+1;
	  l = j+2;
	  if (test.map[sol[data.swap[b][test.row[0]][j]]] > test.map[sol[data.swap[b][test.row[0]][k]]])
	  {
	    v = j;
	    j = k;
	    k = v;
	  }
	  if (test.map[sol[data.swap[b][test.row[0]][j]]] > test.map[sol[data.swap[b][test.row[0]][l]]])
	  {
	    v = j;
	    j = l;
	    l = v;
	  }
	  if (test.map[sol[data.swap[b][test.row[0]][k]]] > test.map[sol[data.swap[b][test.row[0]][l]]])
	  {
	    v = k;
	    k = l;
	    l = v;
	  }
	  test.col[6] = j;
	  test.col[7] = k;
	  test.col[8] = l;

	  /* check row 2 cols 7&8&9 */

	  if (!d)
	    for (j = 6; j < 9; j++)
	      if ((d = (int)test.map[sol[data.swap[b][test.row[1]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[1]][best.col[j]]]]))
	      {
	        if (d > 0)
	          goto next;
	        break;
	      }

	  /* check row 3 */

	  if (!d)
	    for (j = 0; j < 9; j++)
	      if ((d = (int)test.map[sol[data.swap[b][test.row[2]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[2]][best.col[j]]]]))
	      {
	        if (d > 0)
	          goto next;
	        break;
	      }

	  /* done with the first band */

	  /* order row 4 */

	  v = 10;
	  i = 9;
	  while (--i >= 3)
	    if (test.map[sol[data.swap[b][i][test.col[0]]]] < v)
	    {
	      v = test.map[sol[data.swap[b][i][test.col[0]]]];
	      k = i;
	    }

	  /* check row 4 */

	  if (!d)
	    for (j = 0; j < 9; j++)
	      if ((d = (int)test.map[sol[data.swap[b][k][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[3]][best.col[j]]]]))
	      {
	        if (d > 0)
	          goto next;
	        break;
	      }
	  test.row[3] = k;

	  /* order rows 5&6 */

	  if (test.map[sol[data.swap[b][data.part[k][0]][test.col[0]]]] < test.map[sol[data.swap[b][data.part[k][1]][test.col[0]]]])
	  {
	    test.row[4] = data.part[k][0];
	    test.row[5] = data.part[k][1];
	  }
	  else
	  {
	    test.row[4] = data.part[k][1];
	    test.row[5] = data.part[k][0];
	  }

	  /* check rows 5&6 */

	  if (!d)
	    for (i = 4; i < 6; i++)
	      for (j = 0; j < 9; j++)
	        if ((d = (int)test.map[sol[data.swap[b][test.row[i]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[i]][best.col[j]]]]))
	        {
	          if (d > 0)
	            goto next;
	          i = 6;
	          break;
	        }

	  /* done with the second band */

	  /* order row 7 */

	  v = 10;
	  for (i = 2; i < 5; i++)
	    if (test.map[sol[data.swap[b][data.part[k][i]][test.col[0]]]] < v)
	    {
	      v = test.map[sol[data.swap[b][data.part[k][i]][test.col[0]]]];
	      l = data.part[k][i];
	    }

	  /* check row 7 */

	  if (!d)
	    for (j = 0; j < 9; j++)
	      if ((d = (int)test.map[sol[data.swap[b][l][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[6]][best.col[j]]]]))
	      {
	        if (d > 0)
	          goto next;
	        break;
	      }
	  test.row[6] = l;

	  /* order rows 8&9 */

	  if (test.map[sol[data.swap[b][data.part[l][0]][test.col[0]]]] < test.map[sol[data.swap[b][data.part[l][1]][test.col[0]]]])
	  {
	    test.row[7] = data.part[l][0];
	    test.row[8] = data.part[l][1];
	  }
	  else
	  {
	    test.row[7] = data.part[l][1];
	    test.row[8] = data.part[l][0];
	  }

	  /* check rows 8&9 */

	  if (!d)
	    for (i = 7; i < 9; i++)
	      for (j = 0; j < 9; j++)
	        if ((d = (int)test.map[sol[data.swap[b][test.row[i]][test.col[j]]]] - (int)best.map[sol[data.swap[best.box][best.row[i]][best.col[j]]]]))
	        {
	          if (d > 0)
	            goto next;
	          i = 9;
	          break;
	        }

	  /* check for automorphism */

	  if (d)
	  {
	    a = 1;
	    if (f)
	    {
	      if (b || r || c || test.row[3] != 3 || test.row[4] != 4 || test.row[6] != 6 || test.row[7] != 7 || test.col[3] != 3 || test.col[4] != 4 || test.col[6] != 6 || test.col[7] != 7)
		return 0;
	      f = 0;
	    }
	    else
	    {
	      j = cord[o];
	      for (i = o; i > 1; i--)
		cord[i] = cord[i-1];
	      cord[1] = j;
	      return 0;
	    }
	    best = test;
	    best.box = b;
	  }
	  else
	    a++;
	next:;
	}
	best.aut = a;
	return &best;
}

#define BBINIT()		do if (!state.bbs.count) bbinit(); while (0)

/*
 * initialize the bbindex() dictionary
 */

static void
bbinit(void)
{
	register int	b;
	register int	i;
	register int	j;
	register int	k;
	register int	n;
	int		r;
	int		c;
	char*		t;
	unsigned char	sol[24];
	char		key[19];
	Canon_t		test;

	/* enter the lookup keys for each bb */

	for (n = 0; n < elementsof(data.bbs); n++)
	{
	  /* initialize the bbs specific values */

	  i = 0;
	  for (j = 0; j < 18; j++)
	  {
	    sol[i++] = data.bbs[n][j] - '0';
	    if (i == 6 || i == 15 || i == 24)
	      i += 3;
	  }

	  /* search over the 2 boxes in the bb */

	  for (b = 0; b < 2; b++)
	    for (r = 0; r < 6; r++)
	      for (c = 0; c < 6; c++)
	      {
	        /* initialize the map */

	        for (i = 0; i < 3; i++)
	        {
	          test.row[i] = data.perm[r][i];
	          test.col[i] = data.perm[c][i];
	        }
	        for (i = k = 0; i < 3; i++)
		  for (j = 0; j < 3; j++)
	            test.map[sol[data.bbswap[b][test.row[i]][test.col[j]]]] = ++k;
	        if (test.map[sol[data.bbswap[b][test.row[0]][3]]] < test.map[sol[data.bbswap[b][test.row[0]][4]]])
	        {
	          if (test.map[sol[data.bbswap[b][test.row[0]][3]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
		  {
		    test.col[3] = 3;
	            if (test.map[sol[data.bbswap[b][test.row[0]][4]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
		    {
		      test.col[4] = 4;
		      test.col[5] = 5;
		    }
		    else
		    {
		      test.col[4] = 5;
		      test.col[5] = 4;
		    }
		  }
		  else
		  {
		    test.col[3] = 5;
		    test.col[4] = 3;
		    test.col[5] = 4;
		  }
	        }
	        else if (test.map[sol[data.bbswap[b][test.row[0]][3]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
	        {
	          test.col[3] = 4;
	          test.col[4] = 3;
	          test.col[5] = 5;
	        }
	        else
	        {
	          if (test.map[sol[data.bbswap[b][test.row[0]][4]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
		  {
		    test.col[3] = 4;
		    test.col[4] = 5;
		  }
		  else
		  {
		    test.col[3] = 5;
		    test.col[4] = 4;
		  }
	          test.col[5] = 3;
	        }

	        /* enter into the dictionary */

	        t = key;
	        for (i = 0; i < 3; i++)
	          for (j = 0; j < 6; j++)
	            *t++ = test.map[sol[data.bbswap[b][test.row[i]][test.col[j]]]];
	        *t = 0;
	        enter(&state.bbs, 0, key)->index = data.bbmax[n];
	      }
	}
}

/*
 * return <BOX><BOX><*> index
 */

static int
bbindex(unsigned char* sol, int b)
{
	register int	i;
	register int	j;
	register int	k;
	char*		t;
	char		key[19];
	Canon_t		test;

	BBINIT();
	for (i = 0; i < 3; i++)
	  test.row[i] = test.col[i] = i;
	for (i = k = 0; i < 3; i++)
	  for (j = 0; j < 3; j++)
	    test.map[sol[data.bbswap[b][test.row[i]][test.col[j]]]] = ++k;
	if (test.map[sol[data.bbswap[b][test.row[0]][3]]] < test.map[sol[data.bbswap[b][test.row[0]][4]]])
	{
	  if (test.map[sol[data.bbswap[b][test.row[0]][3]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
	  {
	    test.col[3] = 3;
	    if (test.map[sol[data.bbswap[b][test.row[0]][4]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
	    {
		test.col[4] = 4;
		test.col[5] = 5;
	    }
	    else
	    {
		test.col[4] = 5;
		test.col[5] = 4;
	    }
	  }
	  else
	  {
	    test.col[3] = 5;
	    test.col[4] = 3;
	    test.col[5] = 4;
	  }
	}
	else if (test.map[sol[data.bbswap[b][test.row[0]][3]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
	{
	  test.col[3] = 4;
	  test.col[4] = 3;
	  test.col[5] = 5;
	}
	else
	{
	  if (test.map[sol[data.bbswap[b][test.row[0]][4]]] < test.map[sol[data.bbswap[b][test.row[0]][5]]])
	  {
	    test.col[3] = 4;
	    test.col[4] = 5;
	  }
	  else
	  {
	    test.col[3] = 5;
	    test.col[4] = 4;
	  }
	  test.col[5] = 3;
	}

	/* lookup in the dictionary */

	t = key;
	for (i = 0; i < 3; i++)
	  for (j = 0; j < 6; j++)
	    *t++ = test.map[sol[data.bbswap[b][test.row[i]][test.col[j]]]];
	*t = 0;
	return enter(&state.bbs, 0, key)->index;
}

static const char*	rated[] =
{
	"not solved",
	"very easy",
	"easy",
	"moderate",
	"hard",
	"very hard",
	"difficult",
	"very difficult",
	"1 constrained",
	"2 constrained",
	"rats -- 3 constrained",
	"rats -- 4 constrained",
	"rats -- 5 constrained",
	"rats -- 6 constrained",
	"rats -- 7 constrained",
	"rats -- >=8 constrained",
};

static int
normalized(Grid_t* grid)
{
	int	r;
	int	i;

	UPDATE(grid, 'M');
	if (!state.stats.level)
		r = 0;
	else if (state.stats.magic && state.stats.magic->size > 7)
		r = 15;
	else if (state.stats.magic && state.stats.magic->size > 0)
		r = 7 + state.stats.magic->size;
	else if (state.stats.constraint & (CONSTRAINT_G|CONSTRAINT_P))
		r = 8;
	else if (state.stats.constraint & (CONSTRAINT_O|CONSTRAINT_Y))
		r = 7;
	else if (state.stats.constraint & (CONSTRAINT_W|CONSTRAINT_X))
		r = 6;
	else
	{
		if (state.stats.constraint & (CONSTRAINT_T|CONSTRAINT_H))
		{
			r = 4;
			i = 10;
		}
		else if (state.stats.constraint & CONSTRAINT_B)
		{
			r = 3;
			i = 10;
		}
		else if (state.stats.constraint & CONSTRAINT_N)
		{
			r = 2;
			i = 15;
		}
		else
		{
			r = 1;
			i = 20;
		}
		r += state.stats.iterate / i;
		if (r > 7)
			r = 7;
	}
	return r;
}

/*
 * long integer arithmetic expression evaluator
 * by David Korn and Glenn Fowler
 */

#define exget(ex)	(*(ex)->nextchr++)
#define expeek(ex)	(*(ex)->nextchr)
#define exunget(ex)	((ex)->nextchr--)

#define exerror(ex,msg)	do { exmessage(ex,msg); return 0; } while (0)

typedef struct Expr_s			/* expression handle		*/
{
	char*		nextchr;	/* next expression char		*/
	char*		errbeg;		/* first expr char		*/
	char*		errend;		/* next expr char after error	*/
	char*		errmsg;		/* error message text		*/
	long		(*convert)(struct Expr_s*, const char*, char**, int);
	void*		handle;		/* user convert handle		*/
} Expr_t;

/*
 * set expression error message string
 */

static void
exmessage(register Expr_t* ex, char* msg)
{
	if (!ex->errmsg)
		ex->errmsg = msg;
	ex->errend = ex->nextchr;
	ex->nextchr = "";
}

/*
 * evaluate a subexpression with precedence
 */

static long
exexpr(register Expr_t* ex, register int precedence, int active)
{
	register int	c;
	register long	n;
	register long	x;
	char*		pos;
	int		operand = 1;

	while (c = exget(ex), isspace(c));
	switch (c)
	{
	case 0:
		exunget(ex);
		if (!precedence)
			return 0;
		exerror(ex, "more tokens expected");
	case '-':
		n = -exexpr(ex, 13, active);
		break;
	case '+':
		n = exexpr(ex, 13, active);
		break;
	case '!':
		n = !exexpr(ex, 13, active);
		break;
	case '~':
		n = ~exexpr(ex, 13, active);
		break;
	default:
		exunget(ex);
		n = 0;
		operand = 0;
		break;
	}
	for (;;)
	{
		switch (c = exget(ex))
		{
		case 0:
			goto done;
		case ')':
			if (!precedence)
				exerror(ex, "too many )'s");
			goto done;
		case '(':
			n = expeek(ex) == '%' ? (*ex->convert)(ex, ex->nextchr, &ex->nextchr, active) : exexpr(ex, 1, active);
			if (exget(ex) != ')')
			{
				exunget(ex);
				exerror(ex, "closing ) expected");
			}
		gotoperand:
			if (operand)
				exerror(ex, "operator expected");
			operand = 1;
			continue;
		case '?':
			if (precedence > 1)
				goto done;
			if (expeek(ex) == ':')
			{
				exget(ex);
				x = exexpr(ex, 2, active);
				if (!n)
					n = x;
			}
			else
			{
				x = exexpr(ex, 2, active && n);
				if (exget(ex) != ':')
				{
					exunget(ex);
					exerror(ex, ": expected for ? operator");
				}
				if (n)
				{
					n = x;
					exexpr(ex, 2, 0);
				}
				else
					n = exexpr(ex, 2, active);
			}
			break;
		case ':':
			goto done;
		case '|':
			if (expeek(ex) == '|')
			{
				if (precedence > 2)
					goto done;
				exget(ex);
				x = exexpr(ex, 3, active && !n);
				n = n || x;
			}
			else
			{
				if (precedence > 4)
					goto done;
				x = exexpr(ex, 5, active);
				n |= x;
			}
			break;
		case '^':
			if (precedence > 5)
				goto done;
			x = exexpr(ex, 6, active);
			n ^= x;
			break;
		case '&':
			if (expeek(ex) == '&')
			{
				if (precedence > 3)
					goto done;
				exget(ex);
				x = exexpr(ex, 4, active && n);
				n = n && x;
			}
			else
			{
				if (precedence > 6)
					goto done;
				x = exexpr(ex, 7, active);
				n &= x;
			}
			break;
		case '=':
		case '!':
			if (expeek(ex) != '=')
				exerror(ex, "operator syntax error");
			if (precedence > 7)
				goto done;
			exget(ex);
			x = exexpr(ex, 8, active);
			if (c == '=')
				n = n == x;
			else
				n = n != x;
			break;
		case '<':
		case '>':
			if (expeek(ex) == c)
			{
				if (precedence > 9)
					goto done;
				exget(ex);
				x = exexpr(ex, 10, active);
				if (c == '<')
					n <<= x;
				else
					n >>= x;
			}
			else
			{
				if (precedence > 8)
					goto done;
				if (expeek(ex) == '=')
				{
					exget(ex);
					x = exexpr(ex, 9, active);
					if (c == '<')
						n = n <= x;
					else
						n = n >= x;
				}
				else
				{
					x = exexpr(ex, 9, active);
					if (c == '<')
						n = n < x;
					else
						n = n > x;
				}
			}
			break;
		case '+':
		case '-':
			if (precedence > 10)
				goto done;
			x = exexpr(ex, 11, active);
			if (c == '+')
				n +=  x;
			else
				n -= x;
			break;
		case '*':
			if (expeek(ex) == c)
			{
				if (precedence > 12)
					goto done;
				exget(ex);
				c = (int)exexpr(ex, 13, active) - 1;
				x = n;
				while (c-- > 0)
					n *= x;
				break;
			}
			/*FALLTHROUGH*/
		case '/':
		case '%':
			if (precedence > 11)
				goto done;
			x = exexpr(ex, 12, active);
			if (c == '*')
				n *= x;
			else if (x == 0)
				exerror(ex, "divide by zero");
			else if (c == '/')
				n /= x;
			else
				n %= x;
			break;
		case '@':
			if (precedence > 12)
				goto done;
			if ((x = exexpr(ex, 12, active)) < 1)
				exerror(ex, "invalid log base");
			else
			{
				for (c = 0; n > x; c += 1)
					n /= x;
				n = c + (n > (x / 2));
			}
			break;
		case '[':
			n = 1;
			for (;;)
			{
				switch (c = exget(ex))
				{
				case 0:
					exunget(ex);
					break;
				case ']':
					break;
				case '-':
					n = 0;
					continue;
				case '+':
					n = 1;
					continue;
				default:
					if (active)
					{
						if (isupper(c))
							c = tolower(c);
						if (islower(c))
							state.options[c-'a'] = n;
					}
					continue;
				}
				break;
			}
			continue;
		default:
			if (isspace(c))
				continue;
			pos = --ex->nextchr;
			if (isdigit(c))
				n = strtol(ex->nextchr, &ex->nextchr, 0);
			else if (ex->convert)
				n = (*ex->convert)(ex, ex->nextchr, &ex->nextchr, active);
			if (ex->nextchr == pos)
				exerror(ex, "syntax error");
			goto gotoperand;
		}
		if (ex->errmsg)
			return 0;
		if (!operand)
			exerror(ex, "operand expected");
	}
 done:
	exunget(ex);
	if (!operand)
		exerror(ex, "operand expected");
	return n;
}

/*
 * evaluate a long integer arithmetic expression in s
 *
 * (long)(*convert)(Expr_t*, const char* string, char** end, int active)
 * is a user supplied conversion routine that is called when unknown
 * chars are encountered; string points to the part to be
 * converted and end is adjusted to point to the next non-converted
 * character; if string is 0 then Expr_t* holds error context
 */

static long
exeval(const char* s, char** end, long (*convert)(Expr_t*, const char*, char**, int), void* handle)
{
	long	n;
	Expr_t	ex;

	ex.errbeg = ex.nextchr = (char*)s;
	ex.errmsg = 0;
	ex.convert = convert;
	ex.handle = handle;
	n = exexpr(&ex, 0, 1);
	if (expeek(&ex) == ':')
		exmessage(&ex, "invalid use of :");
	if (ex.errmsg)
	{
		if (convert)
			(*convert)(&ex, 0, 0, 0);
		ex.nextchr = ex.errend;
		n = 0;
	}
	if (end)
		*end = ex.nextchr;
	return n;
}

static int
field(register const char* s, int z)
{
	register int		i;
	register const char*	t;
	char*			e;

	t = s + (*s == '$');
	if (isdigit(*t) && (i = (int)strtol(t, &e, 0) - 1) >= 0 && *e == s[z])
		return i;
	if (z > 0)
	{
		if (*s == '$')
		{
			s++;
			z--;
		}
		for (i = 0; t = (const char*)state.schema[i]; i++)
			if (*s == *t && !strncmp(t, s, z) && !t[z])
				return i;
	}
	return -1;
}

static char*	list(Grid_t*, int, int, Canon_t*);

static long
convert(Expr_t* ex, const char* s, char** e, int active)
{
	register int	c;
	register int	d;
	register long	n;
	int		m;
	int		q;
	const char*	t;
	const char*	x;
	char*		a;
	char**		v;
	Item_t*		var;
	long		argn[4];
	char*		argv[elementsof(argn)];
	char		args[elementsof(argn) * 256];

	if (s)
	{
		c = *s++;
		if (isupper(c))
			d = *s++;
		else if (islower(c) || c == '$')
		{
			t = s - 1;
			while (isalnum(*s) || *s == '_')
				s++;
			m = s - t;
			if (*s == '(')
			{
				d = 0;
				q = 0;
				v = argv;
				*v++ = a = args;
				s++;
				for (;;)
				{
					c = *s++;
					if (a < &args[sizeof(args)-1])
						*a++ = c;
					switch (c)
					{
					case 0:
						break;
					case ',':
						if (!q && !d)
						{
							*(a - 1) = 0;
							if (v < &argv[elementsof(argv)])
								*v++ = a;
						}
						continue;
					case '(':
						if (!q)
							d++;
						continue;
					case ')':
						if (!q && !d--)
						{
							a--;
							break;
						}
						continue;
					case '"':
					case '\'':
						if (c == q)
						{
							q = 0;
							a--;
						}
						else if (!q)
						{
							c = q;
							a--;
						}
						continue;
					case '\\':
						if (*s)
							*(a - 1) = *s++;
						continue;
					default:
						continue;
					}
					break;
				}
				*e = (char*)s;
				if (q || d >= 0)
					exerror(ex, "invalid function call argument");
				*a = 0;
				for (d = 0;; d++)
				{
					if (d >= elementsof(function))
						exerror(ex, "unknown function");
					if (strneq(function[d].name, t, m))
					{
						if (!active)
							return 0;
						while (v < &argv[elementsof(argv)])
							*v++ = 0;
						if (function[d].maxarity)
						{
							for (v = argv; v < &argv[elementsof(argv)] && *v; v++)
							{
								argn[v - argv] = exeval(*v, &a, convert, ex->handle);
								if (*a)
								{
									exerror(ex, "invalid actual");
									return 0;
								}
							}
							if ((v - argv) < function[d].minarity || (v - argv) > function[d].maxarity)
							{
								exerror(ex, "wrong number of actual arguments");
								return 0;
							}
						}
						return (*function[d].function)(&function[d], argv, argn, (Grid_t*)ex->handle, state.call.buf, state.call.size);
					}
				}
			}
			if ((c == 'f' || c == '$') && (d = field(t, m)) >= 0)
			{
				if (d < state.fields)
				{
					n = strtol(state.field[d], e, 0);
					if ((x = *e) == state.field[d])
						n = 0;
					if (*x == '.')
						while (isdigit(*++x));
					for (; isspace(*x); x++);
					if (*x && x > state.field[d] && !n)
						n = 1;
				}
				else
					n = 0;
				*e = (char*)s;
				return n;
			}
			if (islower(c) && isdigit(t[1]) && (n = (int)strtol(t+1, &a, 0)) >= 0 && a == (char*)s)
			{
				*e = (char*)s;
				return (n <= state.groups) ? state.hardest[n][c-'a'] : 0;
			}
			d = *(char*)s;
			*(char*)s = 0;
			var = lookup(&state.vars, t);
			*(char*)s = d;
			if (!var)
				exerror(ex, "unknown variable");
			if (var->grid)
			{
				*e = (char*)s;
				return var->index;
			}
			c = var->part;
			d = var->index;
		}
		else if (c == '%')
		{
			d = 1;
			FORMAT('z'+1) = a = args;
			*a++ = c;
			for (;;)
			{
				switch (c = *s++)
				{
				case '(':
					d++;
					/*FALLTHROUGH*/
				default:
				copy:
					if (a < &args[sizeof(args)-1])
						*a++ = c;
					continue;
				case ')':
					if (--d)
						goto copy;
					/*FALLTHROUGH*/
				case 0:
					s--;
					break;
				}
				break;
			}
			*e = (char*)s;
			*a = 0;
			return (a = list((Grid_t*)ex->handle, 'z'+1, EVAL, 0)) ? strtol(a, 0, 0) : 0;
		}
		else
			exerror(ex, "invalid token");
		if (active)
			UPDATE((Grid_t*)ex->handle, c);
		c -= 'A';
		switch (d)
		{
		default:
			if (isdigit(d) && (d-'2') < CONSTRAINT_WEIGHTS)
			{
				n = state.stats.size[c][d-'2'];
				break;
			}
			if (isalnum(d))
				exerror(ex, "unknown token");
			s--;
			/*FALLTHROUGH*/
		case '0':
		case 'A':
			n = state.stats.apply[c];
			break;
		case '1':
		case 'P':
			n = state.stats.progress[c];
			break;
		}
		if (n == (unsigned int)(-1))
			n = -1;
		if (isalnum(*s))
			exerror(ex, "unknown token");
		*e = (char*)s;
	}
	else
	{
		fprintf(stderr, "%s: %-.*s<<<%s: %s\n", command, (int)(ex->errend - ex->errbeg), ex->errbeg, ex->errend, ex->errmsg);
		fini(2);
		n = 0;
	}
	return n;
}

static long
referenced(Expr_t* ex, const char* s, char** e, int active)
{
	register int	c;
	register int	d;
	int		m;
	int		q;
	const char*	t;
	char*		a;
	char**		v;
	Item_t*		var;
	long		argn[4];
	char*		argv[elementsof(argn)];
	char		args[elementsof(argn) * 256];

	if (s)
	{
		c = *s++;
		if (isupper(c))
			d = *s++;
		else if (islower(c) || c == '$')
		{
			t = s - 1;
			while (isalnum(*s) || *s == '_')
				s++;
			m = s - t;
			if (*s == '(')
			{
				d = 0;
				q = 0;
				v = argv;
				*v++ = a = args;
				s++;
				for (;;)
				{
					c = *s++;
					if (a < &args[sizeof(args)-1])
						*a++ = c;
					switch (c)
					{
					case 0:
						break;
					case ',':
						if (!q && !d)
						{
							*(a - 1) = 0;
							if (v < &argv[elementsof(argv)])
								*v++ = a;
						}
						continue;
					case '(':
						if (!q)
							d++;
						continue;
					case ')':
						if (!q && !d--)
						{
							a--;
							break;
						}
						continue;
					case '"':
					case '\'':
						if (c == q)
						{
							q = 0;
							a--;
						}
						else if (!q)
						{
							c = q;
							a--;
						}
						continue;
					case '\\':
						if (*s)
							*(a - 1) = *s++;
						continue;
					default:
						continue;
					}
					break;
				}
				*e = (char*)s;
				if (q || d >= 0)
					exerror(ex, "invalid function call argument");
				*a = 0;
				for (d = 0;; d++)
				{
					if (d >= elementsof(function))
						exerror(ex, "unknown function");
					if (strneq(function[d].name, t, m))
					{
						if (!active)
							return 0;
						while (v < &argv[elementsof(argv)])
							*v++ = 0;
						if (function[d].maxarity)
						{
							for (v = argv; v < &argv[elementsof(argv)] && *v; v++)
							{
								argn[v - argv] = exeval(*v, &a, convert, ex->handle);
								if (*a)
								{
									exerror(ex, "invalid actual");
									return 0;
								}
							}
							if ((v - argv) < function[d].minarity || (v - argv) > function[d].maxarity)
							{
								exerror(ex, "wrong number of actual arguments");
								return 0;
							}
						}
						return 0;
					}
				}
			}
			if (c == 'f' || c == '$')
			{
				*e = (char*)s;
				return 0;
			}
			if (islower(c) && isdigit(t[1]) && (int)strtol(t+1, &a, 0) >= 0 && a == (char*)s)
			{
				*e = (char*)s;
				return 0;
			}
			d = *(char*)s;
			*(char*)s = 0;
			var = lookup(&state.vars, t);
			*(char*)s = d;
			if (!var)
				exerror(ex, "unknown variable");
			if (var->grid)
			{
				*e = (char*)s;
				return 0;
			}
			c = var->part;
			d = var->index;
		}
		else if (c == '%')
		{
			d = 1;
			for (;;)
			{
				switch (c = *s++)
				{
				case '(':
					d++;
					/*FALLTHROUGH*/
				default:
					continue;
				case ')':
					if (--d)
						continue;
					/*FALLTHROUGH*/
				case 0:
					s--;
					break;
				}
				break;
			}
			*e = (char*)s;
			return 0;
		}
		else
			exerror(ex, "invalid token");
		if (active)
			UPDATE((Grid_t*)ex->handle, c);
		c -= 'A';
		switch (d)
		{
		default:
			if (isdigit(d) && (d-'2') < CONSTRAINT_WEIGHTS)
			{
				state.referenced[c] = 1;
				break;
			}
			if (isalnum(d))
				exerror(ex, "unknown token");
			s--;
			/*FALLTHROUGH*/
		case '0':
		case 'A':
			state.referenced[c] = 1;
			break;
		case '1':
		case 'P':
			state.referenced[c] = 1;
			break;
		}
		if (isalnum(*s))
			exerror(ex, "unknown token");
		*e = (char*)s;
	}
	else
	{
		fprintf(stderr, "%s: %-.*s<<<%s: %s\n", command, (int)(ex->errend - ex->errbeg), ex->errbeg, ex->errend, ex->errmsg);
		fini(2);
	}
	return 0;
}

#define eval(g,s)	exeval(s,0,convert,g)

/*
 * squash 31 bit rating into 0..99999
 * linear up to 90000
 * each order of magnitude > 90000 gets 50% of the remaining range
 */

static long
squash(long n)
{
	if (n < 0)
		n = 0;
	else if ((n = n) < 90000)
		n = n;
	else if (n > 99999999)
		n = 99375 + 624.0 / ((2147483647.0 - 99999999.0) / (n - 99999999.0));
	else if (n > 9999999)
		n = 98750 + 624.0 / ((99999999.0 - 9999999.0) / (n - 9999999.0));
	else if (n > 999999)
		n = 97500 + 1249.0 / ((9999999.0 - 999999.0) / (n - 999999.0));
	else if (n > 99999)
		n = 95000 + 2499.0 / ((999999.0 - 99999.0) / (n - 99999.0));
	else
		n = 90000 + 4999.0 / ((99999.0 - 90000.0) / (n - 90000.0));
	return n;
}

/*
 * return the number of candidates in g
 */

static int
candidates(register Grid_t* g)
{
	register int	i;
	register int	n;

	n = 0;
	for (i = 0; i < 81; i++)
		if (CANDIDATE(g, i))
			n += TALLY(g, i);
	return n;
}

static long
rating(Grid_t* g, const char* s, int raw)
{
	long		n;

	OPTSET('r', raw);
	n = eval(g, s);
	return OPTGET('r') ? n : squash(n);
}

static char*
label(int level)
{
	char	group[8];

	if (!state.group)
		group[0] = 0;
	else if (level == -1)
		snprintf(group, sizeof(group), "  ");
	else
		snprintf(group, sizeof(group), "%2d", state.group);
	if (level >= 0)
	{
		if (!(state.level = level))
			state.traced = -1;
	}
	else if (state.level != state.traced)
	{
		state.traced = state.level;
		if (!state.keep.iterate.max)
			snprintf(state.tmp, sizeof(state.tmp)-1, "[%d]%s", state.level, state.level < 10 ? " " : "");
		else if (level == -1)
			snprintf(state.tmp, sizeof(state.tmp)-1, "        %s [%d]%s", group, state.level, state.level < 10 ? " " : "");
		else
			snprintf(state.tmp, sizeof(state.tmp)-1, "%7" LL "u %s [%d]%s", state.count.iterate, group, state.level, state.level < 10 ? " " : "");
	}
	else if (!state.keep.iterate.max)
		snprintf(state.tmp, sizeof(state.tmp)-1, "    ");
	else if (level == -1)
		snprintf(state.tmp, sizeof(state.tmp)-1, "       %s      ", group);
	else
		snprintf(state.tmp, sizeof(state.tmp)-1, "%7" LL "u %s     ", state.count.iterate, group);
	return state.tmp;
}

static char*
fmtbits(int z, int b)
{
	register char*	s;
	int		a;
	int		x;

	static char	buf[8][21];
	static int	alt;

	alt = (alt + 1) % elementsof(buf);
	s = buf[alt];
	if (z &= 0x1ff)
	{
		if (a = b && (data.count[z] != 1))
			*s++ = '{';
		while (x = data.next[z])
		{
			z ^= x;
			*s++ = name[state.map.map[data.ident[x]]];
		}
		if (a)
			*s++ = '}';
	}
	else
		*s++ = name[0];
	*s = 0;
	return buf[alt];
}

#define fmtset(v)	fmtbits(v,1)

static char*
fmt(register const char* f, int i, int o, int v)
{
	register char*	s;
	register char*	e;
	register char*	t;
	register char*	x;
	register int	c;
	register int	n;
	register int	a;
	register int	k;
	const char*	stk;
	char		tmp[16];

	static char	buf[8][32];
	static int	alt;

	stk = 0;
	alt = (alt + 1) % elementsof(buf);
	s = buf[alt];
	e = s + sizeof(buf[alt]) - 1;
 top:
	while (c = *f++)
	{
		if (c == '%')
		{
			a = k = n = 0;
			x = 0;
			t = tmp;
			for (;;)
			{
				if (c && t < &tmp[sizeof(tmp)-2])
					*t++ = c;
				switch (c = *f++)
				{
				case 0:
					if (stk)
					{
						f = stk;
						stk = 0;
						goto top;
					}
					f--;
					break;
				case 'a':
					a = 'a';
					c = 0;
					continue;
				case 'A':
					a = 'A';
					c = 0;
					continue;
				case 'c':
				case 'x':
					n = COL(i) + !a;
					break;
				case 'C':
				case 'X':
					n = COL(i);
					break;
				case 'j':
					a = 'a';
					k = 1;
					c = 0;
					continue;
				case 'J':
					a = 'A';
					k = 1;
					c = 0;
					continue;
				case 'k':
					a = 'a';
					k = 2;
					c = 0;
					continue;
				case 'K':
					a = 'A';
					k = 2;
					c = 0;
					continue;
				case 'o':
					x = o ? FORMAT(o) : "";
					break;
				case 'p':
					if (FORMAT(c))
					{
						stk = f;
						f = (const char*)FORMAT(c);
						goto top;
					}
					c = 0;
					continue;
				case 'r':
					n = ROW(i) + !a;
					break;
				case 'R':
					n = ROW(i);
					break;
				case 'v':
				case 'V':
					x = fmtset(v);
					break;
				case 'y':
					n = 8 - ROW(i) + !a;
					break;
				case 'Y':
					n = 8 - ROW(i);
					break;
				default:
					continue;
				}
				if (x)
				{
					*t++ = 's';
					*t = 0;
					s += snprintf(s, e - s, tmp, x);
				}
				else
				{
					if (a)
					{
						if (k && n == 8)
							n += k;
						n += a;
						*t++ = 'c';
					}
					else
						*t++ = 'd';
					*t = 0;
					s += snprintf(s, e - s, tmp, n);
				}
				break;
			}
		}
		else if (s < e)
			*s++ = c;
	}
	if (stk)
	{
		f = stk;
		stk = 0;
		goto top;
	}
	*s = 0;
	return buf[alt];
}

#define fmtpos(i)	fmt(FORMAT('p'),i,0,0)
#define fmtval(i,o,x)	fmt(FORMAT('v'),i,o,x)

/*
 * format the cycles for permutation ord label c
 * off=0: 012345678
 * off=1: 123456789
 * inv=1: invert the cycle
 */

static char*
fmtcycle(int c, unsigned char* ord, int off, int inv)
{
	register int	i;
	register int	j;
	register int	k;
	register char*	s;
	register char*	b;
	unsigned char	hit[10];
	unsigned char	nrm[10];

	static char	buf[20];

	s = buf;
	if (c)
		*s++ = c;
	if (off)
	{
		for (i = 0; i < 10; i++)
		{
			hit[i] = 0;
			nrm[i] = ord[i+off] - 1;
		}
		ord = nrm;
	}
	else
		for (i = 0; i < 10; i++)
			hit[i] = 0;
	#if 0
	printf("AHA fmtcycle %c", c ? c : '-');for (i = 0; i < 9; i++) printf(" %d", ord[i]+1); printf("\n");
	#endif
	for (i = 0; i < 9; i++)
		if (!hit[i] && ord[i] != i && ord[i] < 10)
		{
			*s++ = '(';
			b = s;
			j = i;
			do
			{
				hit[j] = 1;
				*s++ = name[j+1];
			} while (ord[j] < 10 && !hit[j = ord[j]]);
			if (inv)
				for (j = 1; (b + j) < (s - j); j++)
				{
					k = *(b + j);
					*(b + j) = *(s - j);
					*(s - j) = k;
				}
			*s++ = ')';
		}
	if (s == &buf[1])
		s--;
	*s = 0;
	return buf;
}

/*
 * format the cyclic permutations for can into b of size n
 */

static char*
fmtperm(Canon_t* can, char* b, int n)
{
	register char*	s = b;
	register char*	e = b + n - 1;
	register int	i;
	Canon_t		tmp;

	s += snprintf(s, e-s, "%s", fmtcycle('v', can->map, 1, 0));
	tmp = *can;
	if (can->box < 9)
		for (i = 0; i < 9; i++)
		{
			tmp.row[i] = ROW(data.swap[can->box][can->row[i]][can->col[0]]);
			tmp.col[i] = COL(data.swap[can->box][can->row[0]][can->col[i]]);
		}
	else
	{
		for (i = 0; i < 9; i++)
		{
			tmp.row[i] = ROW(data.swap[can->box][can->row[0]][can->col[i]]);
			tmp.col[i] = COL(data.swap[can->box][can->row[i]][can->col[0]]);
		}
		s += snprintf(s, e-s, "x");
	}
	s += snprintf(s, e-s, "%s", fmtcycle('r', tmp.row, 0, 1));
	s += snprintf(s, e-s, "%s", fmtcycle('c', tmp.col, 0, 1));
	if (s == b)
		*s++ = 'i';
	if (can->aut > 1)
		s += snprintf(s, e-s, "%c%d", state.compare.op ? (state.compare.similarity ? 's' : 'd') : 'a', can->aut);
	*s = 0;
	return b;
}

static char*
fmtelapsed(uint64_t t)
{
	register unsigned long	s;
	register unsigned long	u;

	static char		buf[16];

	if (!t)
		return "0";
	u = t % US;
	s = t / US;
	if (s < 10)
		snprintf(buf, sizeof(buf), "%lu.%05lus", s, u / 10);
	else if (s < 60)
		snprintf(buf, sizeof(buf), "%lu.%02lus", s, u * 100 / US);
	else if (s < 10*60)
		snprintf(buf, sizeof(buf), "%lum%02lu.%02lus", s / 60, s - (s / 60) * 60, u * 100 / US);
	else if (s < 60*60)
		snprintf(buf, sizeof(buf), "%lum%02lus", s / 60, s - (s / 60) * 60);
	else if (s < 24*60*60)
		snprintf(buf, sizeof(buf), "%luh%02lum", s / (60*60), (s - (s / (60*60)) * (60*60)) / 60);
	else if (s < 7*24*60*60)
		snprintf(buf, sizeof(buf), "%lud%02luh", s / (24*60*60), (s - (s / (24*60*60)) * (24*60*60)) / (60*60));
	else if (s < 31*24*60*60)
		snprintf(buf, sizeof(buf), "%luw%02lud", s / (7*24*60*60), (s - (s / (7*24*60*60)) * (7*24*60*60)) / (24*60*60));
	else if (s < 365*24*60*60)
		snprintf(buf, sizeof(buf), "%luM%02lud", (s * 12) / (365*24*60*60), ((s * 12) - ((s * 12) / (365*24*60*60)) * (365*24*60*60)) / (12*24*60*60));
	else if (s < (365UL*4UL+1UL)*24UL*60UL*60UL)
		snprintf(buf, sizeof(buf), "%luY%02luM", s / (365*24*60*60), ((s - (s / (365*24*60*60)) * (365*24*60*60)) * 5) / (152 * 24 * 60 * 60));
	else
		snprintf(buf, sizeof(buf), "%luY%02luM", (s * 4) / ((365UL*4UL+1UL)*24UL*60UL*60UL), (((s * 4) - ((s * 4) / ((365UL*4UL+1UL)*24UL*60UL*60UL)) * ((365UL*4UL+1UL)*24UL*60UL*60UL)) * 5) / ((4 * 152 + 1) * 24 * 60 * 60));
	return buf;
}

static char*
fmtgrid(Grid_t* g, int empty)
{
	register int	i;
	register int	c;
	register char*	s;

	if (!empty)
		empty = '0';
	s = state.tmp;
	for (i = 0; i < 81; i++)
		*s++ = (c = data.ident[g->cell[i]]) ? name[c] : empty;
	*s = 0;
	return state.tmp;
}

static int	propagate(Grid_t*, int*, int, unsigned int, Constraints_t*);

/*
 * check for all backdoors (magic cell sets) of minimal size
 */

static Magic_t*
magic(Grid_t* grid)
{
	int		i;
	int		j;
	int		b;
	int		p;
	int		q;
	int		r;
	int		am;
	int		hh;
	int		hm;
	unsigned int	flags;
	Constraints_t*	constraints;
	Grid_t		g[9];
	int		v[elementsof(g)];

	static Magic_t	m;

	m.size = 0;
	m.count = 0;
	m.guess = 0;
	memset(m.cell, 0, sizeof(m.cell));
	if (state.magic < 0 || !APPLIED('V') || !(state.stats.constraint & (CONSTRAINT_G|CONSTRAINT_P)))
		return &m;
	flags = BACKDOOR|DETAILS(0x01000);
	if (TRACE(flags) > 0)
	{
		printf("\n");
		label(0);
	}
	g[0] = *grid;
	if (!propagate(&g[0], &b, GUESS, flags, &state.constraints.solve))
	{
		state.count.iterate = 0;
		state.count.level++;
		p = 0;
		if (state.constraints.solve.text[i = state.constraints.solve.size - 1] == 'G')
			i--;
		r = (!state.magic || strneq(state.constraints.solve.text, state.constraints.magic.text, i)) ? 1 : 0;
		while (!m.count && ++m.size < elementsof(g))
			for (q = r; !m.count && q < 2; q++)
			{
				constraints = q ? &state.constraints.solve : &state.constraints.magic;
				if (state.test & 0x10000)
					printf("check backdoor size %d using %s\n", m.size, constraints->text);
				v[i=1] = -1;
				for (;;)
				{
					if (++v[i] >= 81)
					{
						if (!--i)
							break;
						continue;
					}
					if (CANDIDATE(&g[i-1], v[i]))
					{
						g[i] = g[i-1];
						MOVE(&g[i], v[i], state.hit[v[i]]);
						if (i < m.size)
						{
							i++;
							v[i] = v[i-1];
						}
						else if (propagate(&g[i], &b, GUESS, flags, constraints) > 0)
						{
							if (p > (elementsof(m.tuple) - (m.size + 1)))
							{
								fprintf(stderr, "%s: too many backdoors of size %d -- only %d recorded\n", command, m.size, m.count);
								goto toomany;
							}
							m.count++;
							for (j = 1; j <= m.size; j++)
							{
								m.cell[v[j]] = 1;
								m.tuple[p++] = v[j];
							}
						}
					}
				}
				if (state.magic)
					break;
			}
	toomany:
		state.count.level--;
		if (!m.count)
			m.size = -1;
		else if (m.size > 2)
			m.guess = 81 * 81 * 81 / m.count;
		else
		{
			b = 10;
			for (i = 0; i < 81; i++)
				if (m.cell[i] && (q = data.count[MASK(grid, i)]) < b)
					b = q;
			am = hh = hm = 0;
			for (i = 0; i < 81; i++)
				if (CANDIDATE(grid, i))
				{
					if ((q = data.count[MASK(grid, i)]) < b)
						am += q;
					else if (q == b)
					{
						if (m.cell[i])
							hh += q;
						else
							hm += q;
					}
				}
			if (hh > 1)
				hh /= 2;
			if (!(hh = (am + (hm + 2) / 2) / hh))
				hh = 1;
			if (m.size == 2)
				hh *= (81 * 81) / m.count;
			m.guess = hh;
		}
	}
	return &m;
}

static void
postscript(register Grid_t* grid)
{
	register int	i;
	register int	x;
	register int	z;

	char*		s;

	static int	initialized;

	if (!initialized)
	{
		initialized = 1;
		printf("%%!PS\n%%%% generated by %s%%%% share puzzles and insights\n\n", id+1);
		printf("%s", ps_header);
		if (!state.psycle.keep.min && !state.psycle.magic.min && !state.psycle.pair.min)
		{
			if (state.test & 0x04000)
				printf("%s", ps_label);
			if (!(state.test & 0x0c000))
			{
				printf("60 20 moveto gsave 0.5 0.5 scale\n");
				i = normalized(grid);
				printf("((%u/%u) %s (%d)) show\n", state.choices[0], SIZE('D', 2), rated[i], i);
				if (*(s = state.input->ident) || (s = state.title) || (s = state.input->label))
					printf("120 80 moveto\n(%s) show\n", s);
				printf("grestore\n");
			}
		}
	}
	printf("\n2 20 translate\ngrid\n");
	if (*state.psycle.buf)
		printf("\n%s\n", state.psycle.buf);
	if (state.psycle.magic.min)
	{
		UPDATE(grid, 'M');
		for (i = 0; i < 81; i++)
			if (state.stats.magic->cell[i])
				printf("%d %d [ %c ] magic\n", RC(i), name[data.next[state.hit[i]]]);
	}
	for (i = 0; i < 81; i++)
	{
		if (state.test & 0x08000)
			printf("%d %d %d label\n", RC(i), i);
		else if (data.count[grid->cell[i]] == 1)
			printf("%d %d %c clue\n", RC(i), name[data.ident[grid->cell[i]]]);
		else if (state.hint)
		{
			printf("%d %d [", RC(i));
			x = MASK(grid, i);
			while (z = data.next[x])
			{
				x ^= z;
				printf(" %c", name[data.ident[z]]);
			}
			printf(" ] hint\n");
		}
	}
	if (!state.psycle.keep.min && !state.psycle.magic.min && !state.psycle.pair.min)
	{
		printf("%s", ps_solution);
		for (i = 0; i < 81; i++)
			if (data.count[grid->cell[i]] == 1 || data.count[state.hit[i]] == 1)
				printf("%d %d %c clue\n", RC(i), name[data.ident[data.count[grid->cell[i]] == 1 ? grid->cell[i] : state.hit[i]]]);
	}
	printf("%s", ps_trailer);
	fflush(stdout);
}

#define POSITIONS(g)	SERIAL(positions, positions(g,state.pos,0))

static void
positions(register Grid_t* g, unsigned short pos[3][9][9], int force)
{
	int	b;
	int	i;
	int	j;
	int	o;
	int	p;
	int	w;
	int	x;

	state.serial.positions = (unsigned int)(state.count.iterate - force);
	memset(pos, 0, sizeof(state.pos));
	for (o = p = 0; o < 3; o++)
		for (b = 0; b < 9; b++, p++)
			for (j = 0; j < 9; j++)
			{
				i = PATH(p, j);
				if (CANDIDATE(g, i))
					for (w = MASK(g, i); x = data.next[w]; w ^= x)
						pos[o][b][data.ordinal[x]] |= data.bit[j];
			}
}

/*
 * generate state.tuples from grid
 * max tuple size returned
 * n!=0 limits max tuple size
 * if total!=0 then *total set to the total number of tuples
 */

static int
tuples(register Grid_t* grid, int n, int* total)
{
	register int		i;
	register int		j;
	register int		k;
	register int		m;
	register int		x;
	register int		z;
	int			b;
	int			o;
	int			p;
	int			t;
	int			w;
	unsigned short		pos[3][9][9];

	positions(grid, pos, 1);
	for (i = 0; i < elementsof(state.tuples.que); i++)
	  state.tuples.que[i].end = 0;
	for (i = 0; i < 81; i++)
	  if (CANDIDATE(grid, i))
	  {
	    k = TALLY(grid, i);
	    state.tuples.que[k].end += k;
	  }
	for (j = 0; j < 9; j++)
	  for (p = o = 0; o < 3; o++, p += 9)
	    for (b = 0; b < 9; b++)
	    {
	      z = pos[o][b][j];
	      if ((k = data.count[z]) > 1 && (o == 2 || !claim[z] || (claim[z] & 0xf) > 3))
	        state.tuples.que[k].end += k;
	    }
	k = m = 0;
	if (n)
	  n++;
	else
	  n = 10;
	for (i = 2; i < n; i++)
	  if (state.tuples.que[i].end)
	  {
	    m = i;
	    state.tuples.que[i].beg = k;
	    k += state.tuples.que[i].end;
	    state.tuples.que[i].end = state.tuples.que[i].beg;
	  }
	  else
	    state.tuples.que[i].beg = 0;
	if (k > elementsof(state.tuples.cv))
	{
	  fprintf(stderr, "%s: too many tuples -- %d slots max\n", command, elementsof(state.tuples.cv));
	  fini(1);
	}
	t = 0;
	for (i = 0; i < 81; i++)
	  if (CANDIDATE(grid, i) && (w = data.count[z = MASK(grid, i)]) <= n)
	    while (x = data.next[z])
	    {
	      z ^= x;
	      j = state.tuples.que[w].end++;
	      state.tuples.cv[j].c = i;
	      state.tuples.cv[j].v = data.ordinal[x];
	      t++;
	    }
	for (k = 0; k < 9; k++)
	  for (p = o = 0; o < 3; o++, p += 9)
	    for (b = 0; b < 9; b++)
	    {
	      z = pos[o][b][k];
	      if ((w = data.count[z]) > 1 && w < n && (o == 2 || !claim[z] || (claim[z] & 0xf) > 3))
	        while (x = data.next[z])
	        {
		  z ^= x;
	          j = state.tuples.que[w].end++;
	          state.tuples.cv[j].c = data.path[p+b][data.ordinal[x]];
	          state.tuples.cv[j].v = k;
		  t++;
	        }
	    }
	if (total)
	  *total = t;
	return m;
}

/*
 * return minimal dihedral[] symmetry index given elements
 */

static int
compose(register int q)
{
	register int	i;

	if (q & Z01)
		q |= Z02|Z03;
	else if (data.count[q] > 1)
		q |= Z02;
	if (q & Z02)
	{
		if (q & (Z01|Z03))
			q |= Z01|Z03;
		if (q & (Z10|Z12))
			q |= Z10|Z12;
		if (q & (Z11|Z13))
			q |= Z11|Z13;
	}
	if (data.count[q] > 3)
		q = Z01|Z02|Z03|Z10|Z11|Z12|Z13;
	for (i = 1; i < elementsof(dihedral); i++)
		if (q == dihedral[i].elements)
			return i;
	return 0;
}

/*
 * return dihedral[] symmetry index given op string
 * 0 returned for no symmetry
 */

static int
transform(register const char* s, char** e)
{
	register int	q;
	register int	i;
	register int	c;
	const char*	o;

	q = 0;
	o = s;
	c = *s;
	for (i = 0; i < elementsof(dihedral); i++)
		if (c == dihedral[i].op[0] && !dihedral[i].op[1])
		{
			q |= dihedral[i].elements;
			if (!(c = *++s))
				break;
			i = -1;
		}
	if (s > o)
	{
		*e = (char*)s;
		if (!q)
			return 0;
		if (i = compose(q))
			return i;
	}
	fprintf(stderr, "%s: %s: invalid symmetry transform -- combinations of { f r p h v d a } expected\n", command, o);
	state.errors++;
	return 0;
}

/*
 * return dihedral[] symmetry index given x[][]
 * 0 for no symmetry
 */

static int
symindex(unsigned char x[9][9])
{
	register int	q;
	register int	i;
	register int	j;
	register int	v;

	q = Z01|Z02|Z03|Z10|Z11|Z12|Z13;
	for (i = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
		{
			v = x[i][j];
			if (x[j][8-i] != v && !(q &= ~Z01))
				return 0;
			if (x[8-i][8-j] != v && !(q &= ~Z02))
				return 0;
			if (x[8-j][i] != v && !(q &= ~Z03))
				return 0;
			if (x[i][8-j] != v && !(q &= ~Z10))
				return 0;
			if (x[8-j][8-i] != v && !(q &= ~Z11))
				return 0;
			if (x[8-i][j] != v && !(q &= ~Z12))
				return 0;
			if (x[j][i] != v && !(q &= ~Z13))
				return 0;
		}
	for (i = 1; i < elementsof(dihedral); i++)
		if (q == dihedral[i].elements)
			return i;
	return 0;
}

/*
 * return nearest dihedral[] symmetry index given x[][]
 * 0 for no symmetry
 */

#define SYMDIST(q)	for (k = 1; k < elementsof(dihedral); k++) if (q & dihedral[k].elements) dist[k]++

static int
symdist(unsigned char x[9][9], Distance_t* d, int nocenter)
{
	register int	i;
	register int	j;
	register int	k;
	register int	q;

	unsigned char	dist[elementsof(dihedral)];

	for (k = 1; k < elementsof(dist); k++)
		dist[k] = 0;
	for (i = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
			if (x[i][j] && (!nocenter || BOX(INDEX(i,j)) != 4))
			{
				if (!x[j][8-i])
					SYMDIST(Z01);
				if (!x[8-i][8-j])
					SYMDIST(Z02);
				if (!x[8-j][i])
					SYMDIST(Z03);
				if (!x[i][8-j])
					SYMDIST(Z10);
				if (!x[8-j][8-i])
					SYMDIST(Z11);
				if (!x[8-i][j])
					SYMDIST(Z12);
				if (!x[j][i])
					SYMDIST(Z13);
			}
	for (i = q = 1; i < elementsof(dist); i++)
		if (dist[i] < dist[q])
			q = i;
	d->distance = dist[q];
	d->dihedral = q;
	return q;
}

/*
 * return dihedral[] symmetry index given grid
 * 0 for no symmetry
 */

static int
symmetry(Grid_t* g)
{
	register int	i;
	register int	j;
	unsigned char	x[9][9];

	for (i = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
			x[i][j] = SOLVED(g, INDEX(i,j));
	return symindex(x);
}

/*
 * return largest order dihedral symmetry index for g
 */

static Canon_t*
symmetrize(Grid_t* g, Distance_t* d, int nocenter, int all)
{
	register int			o;
	register int			i;
	register int			j;

	int				pb;
	int				pr;
	int				pc;
	int				pv;
	int				ph;

	unsigned char			av[81];
	unsigned char			puz[81];
	unsigned char			x[9][9];
	unsigned char			h[elementsof(dihedral)];

	Canon_t				test;
	Distance_t			dist;

	static Canon_t			best;

	/* initialize the solution cell values from the solution masks */

	for (i = 0; i < 81; i++)
	  av[i] = SOLVED(g, i);
	best.map[0] = 0;
	for (i = 0; i <= 9; i++)
	  test.map[i] = i;
	if (d)
	{
	  best.aut = 81;
	  d->distance = 81;
	  d->dihedral = 0;
	  memcpy(d->pattern, av, 81);
	}
	else
	{
	  best.aut = 0;
	  if (all)
	  {
	    test.aut = 0;
	    memset(h, 0, sizeof(h));
	  }
	}

	/* search over all boxes */

	for (pb = 0; pb < 18; pb++)
	  for (pr = 0; pr < 6; pr++)
	    for (pc = 0; pc < 6; pc++)
	    {
	      for (i = 0; i < 3; i++)
	      {
	        test.row[i] = data.perm[pr][i];
	        test.col[i] = data.perm[pc][i];
	      }
	      for (ph = 0; ph < elementsof(hv); ph++)
	      {
		for (i = 0; i < 6; i++)
		  test.row[i+3] = hv[ph][i] + 3;
	        for (pv = 0; pv < elementsof(hv); pv++)
		{
		  for (i = 0; i < 6; i++)
		    test.col[i+3] = hv[pv][i] + 3;
	          for (i = 0; i < 9; i++)
	            for (j = 0; j < 9; j++)
		      x[i][j] = av[data.swap[pb][test.row[i]][test.col[j]]];
		  if (d)
		  {
		    symdist(x, &dist, nocenter);
		    if (dist.distance < d->distance || dist.distance == d->distance && (!dist.dihedral || dist.dihedral < d->dihedral || dist.dihedral == d->dihedral && memcmp(x, d->pattern, 81) < 0))
		    {
		      best = test;
		      best.aut = dist.dihedral;
		      best.box = pb;
		      d->distance = dist.distance;
		      d->dihedral = dist.dihedral;
		      memcpy(d->pattern, x, 81);
		    }
		  }
		  else if (o = symindex(x))
		  {
		    if (!best.aut || o < best.aut)
		    {
		      best = test;
		      best.box = pb;
		      best.aut = o;
		    }
		    if (all && !h[o])
		    {
		      for (i = 1; i < elementsof(dihedral); i++)
		        if (streq(dihedral[i].type, dihedral[o].type))
			  h[i] = 1;
		      test.box = pb;
		      printf("%s # %3s %2s  %s\n", canpuzzle(&test, g, 0, 0, (char*)puz, '0'), dihedral[o].type, dihedral[o].op, fmtperm(&test, state.tmp, sizeof(state.tmp)));
		    }
		  }
	        }
	      }
	    }
	return &best;
}

/*
 * initialize state.rookeries
 */

static Rookeries_t*
rookeries(void)
{
	register Rookeries_t*	r;
	register int		n, i1, i2, i3, i4, i5, i6, i7, i8, i9;

	if (!(r = newof(0, Rookeries_t, 1, 0)))
	{
		fprintf(stderr, "out of space [constraint_O]\n");
		fini(1);
	}
	n = 0;
	for (i1 = 0; i1 < 9; i1++)
	{
	 r->next[i1] = n;
	 for (i2 = 0; i2 < 9; i2++)
	  if (data.band[i2] != data.band[i1])
	   for (i3 = 0; i3 < 9; i3++)
	     if (data.band[i3] != data.band[i2] && data.band[i3] != data.band[i1])
	      for (i4 = 0; i4 < 9; i4++)
	        if (i4 != i1 && i4 != i2 && i4 != i3)
	         for (i5 = 0; i5 < 9; i5++)
		   if (i5 != i1 && i5 != i2 && i5 != i3 && data.band[i5] != data.band[i4])
	             for (i6 = 0; i6 < 9; i6++)
		      if (i6 != i1 && i6 != i2 && i6 != i3 && data.band[i6] != data.band[i5] && data.band[i6] != data.band[i4])
	               for (i7 = 0; i7 < 9; i7++)
	                if (i7 != i1 && i7 != i2 && i7 != i3 && i7 != i4 && i7 != i5 && i7 != i6)
	                 for (i8 = 0; i8 < 9; i8++)
	                  if (i8 != i1 && i8 != i2 && i8 != i3 && i8 != i4 && i8 != i5 && i8 != i6 && data.band[i8] != data.band[i7])
	                   for (i9 = 0; i9 < 9; i9++)
	                    if (i9 != i1 && i9 != i2 && i9 != i3 && i9 != i4 && i9 != i5 && i9 != i6 && data.band[i9] != data.band[i8] && data.band[i9] != data.band[i7])
			    {
			     ROOK(r->rookery[n], i1, i2, i3, i4, i5, i6, i7, i8, i9);
			     n++;
			    }
	}
	r->next[i1] = n;
	return state.rookeries = r;
}

/*
 * return rookery count for value v 0..8
 */

static int
rooked(register Grid_t* grid, int v)
{
	register Rookeries_t*	r;
	register int		i;
	register int		j;
	register int		k;
	register int		n;
	register int		p;
	register int		b;
	register unsigned int	x;
	register unsigned int	z;

	unsigned int		mask[3];

	r = ROOKERIES();
	b = data.bit[v];
	mask[0] = mask[1] = mask[2] = 0;
	for (p = n = 0; p < 9; p++)
	{
	  k = data.band[p] - 1;
	  mask[k] <<= 9;
	  for (j = 0; j < 9; j++)
	  {
	    i = PATH(p, j);
	    if (CANDIDATE(grid, i))
	    {
	      if (MASK(grid, i) & b)
		mask[k] |= data.bit[j];
	    }
	    else if (grid->cell[i] & b)
	    {
	      mask[k] |= data.bit[j];
		n++;
	    }
	  }
	}
	if (n < 9)
	{
	  n = 0;
	  for (z = (mask[0]>>18) & 0x1ff; x = data.next[z]; z ^= x)
	  {
	    i = r->next[j = data.ordinal[x]];
	    j = r->next[j + 1];
	    for (; i < j; i++)
	      if ((mask[0] & r->rookery[i][0]) == r->rookery[i][0] && (mask[1] & r->rookery[i][1]) == r->rookery[i][1] && (mask[2] & r->rookery[i][2]) == r->rookery[i][2])
	        n++;
	  }
	}
	else
	  n = 1;
	return n;
}

static int	quick(Grid_t*, Grid_t*, int);
static int	search(Grid_t*, int, unsigned int, Constraints_t*);
static int	solve(Grid_t*, int, unsigned int, Constraints_t*);

/*
 * dukosu's random minimization -- very sharp
 */

static int
rinimize(Grid_t* g, int clues, int minclues, int maxclues, long check)
{
	register int	i;
	register int	v;
	register int	x;
	int		r;
	unsigned char	p[81];
	Grid_t		try;

	r = 0;
	do
	{
		try = *g;
		p[0] = 0;
		for (i = 1; i < 81; i++)
		{
			x = RAND(i);
			p[i] = p[x];
			p[x] = i;
		}
		x = clues;
		for (i = 0; i < 81; i++)
			if (SOLVED(&try, p[i]))
			{
				v = try.cell[p[i]];
				UNDO(&try, p[i], v);
				if (quick(&try, 0, 0) <= 0)
					MOVE(&try, p[i], v);
				else if (--x < minclues)
					break;
			}
		if (x >= minclues && x <= maxclues)
		{
			r = 1;
			if (state.rinlist)
			{
				state.classify = x;
				list(&try, state.rinlist, VERIFIED, 0);
			}
			else
				search(&try, MINIMAL, state.flags, &state.constraints.solve);
			if (state.loop && state.shown >= state.loop)
				break;
		}
	} while (--check);
	state.classify = 0;
	return r;
}

#define SMALLER(g,h,l,i,j,k,n,z,t,r,c) \
	do \
	{ \
		if (z & t) \
		{ \
			k = INDEX(r,c); \
			if (h[k] > l) \
			{ \
				h[k] = l; \
				UNDO(g, k, (g)->cell[k]); \
				n--; \
			} \
		} \
	} while (0)

static int
smaller(Grid_t* grid, unsigned char* sol, unsigned int level, int clues, int minclues, int maxclues, uint64_t show, unsigned int z, int f)
{
	register int	i;
	register int	j;
	register int	k;
	int		c;
	int		n;
	int		r;
	Grid_t		try;

	r = 1;
	if (clues >= minclues)
	{
		level++;
		for (k = 0; k < 81; k++)
			if (sol[k] == level)
				sol[k] = 81;
		for (k = 0; k < 81; k++)
			if (sol[k] > level)
			{
				try = *grid;
				sol[k] = level;
				UNDO(&try, k, try.cell[k]);
				n = clues - 1;
				if (z)
				{
					i = ROW(k);
					j = COL(k);
					SMALLER(&try, sol, level, i, j, c, n, z, Z01,   j, 8-i);
					SMALLER(&try, sol, level, i, j, c, n, z, Z02, 8-i, 8-j);
					SMALLER(&try, sol, level, i, j, c, n, z, Z03, 8-j,   i);
					SMALLER(&try, sol, level, i, j, c, n, z, Z10,   i, 8-j);
					SMALLER(&try, sol, level, i, j, c, n, z, Z11, 8-j, 8-i);
					SMALLER(&try, sol, level, i, j, c, n, z, Z12, 8-i,   j);
					SMALLER(&try, sol, level, i, j, c, n, z, Z13,   j,   i);
				}
				if (n >= minclues && quick(&try, 0, 0))
				{
					r = 0;
					if (show && (state.shown >= show || !smaller(&try, sol, level, n, minclues, maxclues, show, z, f)))
						return 0;
				}
			}
		level--;
	}
	else
		r = 0;
	if (show)
	{
		if (r && clues >= minclues && clues <= maxclues)
		{
			search(grid, f, state.flags, &state.constraints.solve);
			if (state.shown >= show || state.loop && state.shown >= state.loop)
				r = 0;
		}
		else
			r = 1;
	}
	return r;
}

/*
 * minimize grid retaining symmetry
 * 1 returned if puzzle already minimal
 * show==0 checks (and does not list)
 * show<0 shows all
 * show>0 shows until state.shown>=show
 */

static int
minimize(Grid_t* grid, long show, int symmetry, int template)
{
	uint64_t	limit;
	int		i;
	int		j;
	int		k;
	int		r;
	int		clues;
	int		minclues;
	int		maxclues;
	unsigned short	hit[81];
	unsigned char	sol[82];
	Grid_t		oct;

	if (!APPLIED('V'))
		return 0;
	state.related = state.shown;
	clues = 0;
	minclues = show ? state.minclues : MINCLUES;
	maxclues = show ? state.maxclues : MAXCLUES;
	if (show && !template && !symmetry && state.rinimize)
	{
		for (i = 0; i < 81; i++)
			if (SOLVED(grid, i))
				clues++;
		return rinimize(grid, clues, minclues, maxclues, show);
	}
	if (show < 0)
		limit = ~0;
	else if (show > 0)
		limit = state.shown + show;
	else
		limit = 0;
	if (show && template)
		for (i = 0; i < 81; i++)
			switch (state.input->tmpcell[i])
			{
			case CLUE:
			case MUST:
				clues++;
				/*FALLTHROUGH*/
			case EMPTY:
				sol[i] = 0;
				break;
			case DONTCARE:
				clues++;
				sol[i] = 81;
				break;
			}
	else if (state.octdoku)
	{
		oct = *grid;
		if (solve(&oct, GUESS, DEPTHFIRST|UNIQUE|RECORD, &state.constraints.quick) <= 0)
			return 0;
		memcpy(hit, state.hit, sizeof(hit));
		for (j = r = 0, k = 1; j < 8; j++, k <<= 1)
		{
			oct = *grid;
			for (i = 0; i < 81; i++)
				if (hit[i] == k && oct.cell[i] != k)
					MOVE(&oct, i, k);
			list(&oct, 'o', 1, 0);
			for (i = 0; i < 81; i++)
				if (SOLVED(&oct, i) && oct.cell[i] != k)
				{
					clues++;
					sol[i] = 81;
				}
				else
					sol[i] = 0;
			r += smaller(&oct, sol, 0, clues, minclues, maxclues, limit, dihedral[symmetry].elements, SMALLEST);
		}
		return r;
	}
	else
		for (i = 0; i < 81; i++)
			if (SOLVED(grid, i))
			{
				clues++;
				sol[i] = 81;
			}
			else
				sol[i] = 0;
	return smaller(grid, sol, 0, clues, minclues, maxclues, limit, dihedral[symmetry].elements, template ? SMALLEST : MINIMAL);
}

#define NOTICE(s)	(char*)notice[(s)-NOPUZZLE]

static const char*	notice[] =
{
	"no-puzzle",
	"invalid",
	"no-solution",
	"multiple-solutions",
	"one-solution"
};

static const unsigned char	symid[6][15] =
{
	{  0, 1, 2, 3, 4,10,11,12,13,20,21,22,30,31,40 },
	{  0, 2, 1, 3, 4,20,19,21,22,10,12,13,30,31,40 },
	{ 10, 9,11,12,13, 0, 2, 3, 4,20,21,22,30,31,40 },
	{ 10,11, 9,12,13,20,18,21,22, 0, 3, 4,30,31,40 },
	{ 20,18,19,21,22, 0, 1, 3, 4,10,12,13,30,31,40 },
	{ 20,19,18,21,22,10, 9,12,13, 0, 3, 4,30,31,40 },
};

static void
tally(Grid_t* grid, int status)
{
	register int	i;
	register int	j;
	register int	k;

	if (APPLIED('G'))
		state.count.constraint = state.stats.constraint |= CONSTRAINT_G;
	else
		state.count.depth = state.stats.depth = 0;
	state.count.size['G'-'A'][0] = state.stats.size['G'-'A'][0] = state.stats.depth;
	state.count.apply['I'-'A'] = state.stats.apply['I'-'A'] = state.incremental ? state.stats.step : state.stats.iterate;
	memset(state.choices, 0, sizeof(state.choices));
	for (i = k = 0; i < 81; i++)
		if (data.count[grid->cell[i]] == 1)
			state.choices[0]++;
		else
		{
			j = data.count[MASK(grid, i)];
			state.choices[j]++;
			k += j;
		}
	state.count.apply['C'-'A'] = state.stats.apply['C'-'A'] = state.choices[0];
	state.count.size['C'-'A'][1] = state.stats.size['C'-'A'][1] = k;
	if (status > 0)
	{
		if (!state.count.apply['V'-'A'])
			state.count.apply['V'-'A'] = 1;
		state.stats.apply['V'-'A'] = state.count.apply['V'-'A'];
	}
}

#define CALL(o,a,g,h,b,c,w) \
	do { \
		g = o; \
		h = state.hit; \
		if (!a) \
		{ \
			c = 0; \
			if (w == 2 && state.compare.op) \
				g = state.compare.grid; \
		} \
		else if (*a == ':') \
		{ \
			a++; \
			c = 0; \
		} \
		else \
		{ \
			*(state.call.buf = b) = 0; \
			state.call.size = sizeof(b); \
			state.call.grid = 0; \
			state.call.hit = 0; \
			state.call.count = 0; \
			eval(o, a); \
			state.call.buf = 0; \
			if (state.call.grid) \
			{ \
				g = state.call.grid; \
				if (state.call.hit) \
					h = state.call.hit; \
			} \
			c = state.call.count; \
			a = 0; \
		} \
	} while (0)

#define INVERT(g,i,u) \
	for (i = 0; i < 81; i++) \
	{ \
		switch (u = g->cell[i]) \
		{ \
		case EXMP_NOT: \
			u = EXMP_NOFIN_ELIM; \
			break; \
		case EXMP_NOFIN_ELIM: \
			u = EXMP_NOT; \
			break; \
		case EXMP_FIN: \
			u = EXMP_ELIM; \
			break; \
		case EXMP_ELIM: \
			u = EXMP_FIN; \
			break; \
		default: \
			if (u & (u-1)) \
				continue; \
			break; \
		} \
		g->cell[i] = u; \
	}

#undef	FLUSH
#define FLUSH()			(((op>buf)?fwrite(buf,1,op-buf,fp):0),fflush(fp),op=buf)
#undef	OUT
#define OUT(c)			((op<ep)?(*op++=(c)):0)
#define PIP(g,h,i,u,v,e,c)	((u&&state.input->exemplar)?(c=exmp[data.ident[CELL(g,i)]]):(u&&state.input->tmpcell[i]!=CLUE)?(c=temp[state.input->tmpcell[i]]):(c=(c=data.ident[CELL(g,i)])?name[c]:(v?e:name[data.ident[h[i]]])))

#define DEPRECATED(o,n)		do if (!deprecated[o]) { deprecated[o] = 1; fprintf(stderr, "%s: %%%c is deprecated -- use %%#%s\n", command, o, n); } while (0)

static char*
list(register Grid_t* grid, int format, int status, Canon_t* can)
{
	register char*		op;
	register char*		ep;
	register int		i;
	register int		j;
	register int		c;

	char*			a;
	char*			f;
	char*			h;
	char*			r;
	char*			s;
	char*			t;

	unsigned short*		d;
	unsigned short*		e;
	unsigned short*		od;

	int			k;
	int			l;
	int			m;
	int			o;
	int			p;
	int			q;
	int			u;
	int			v;
	int			w;
	int			x;
	int			y;
	int			z;
	int			cw;
	int			nm;
	int			nt;

	char**			cp;

	int*			sig;

	FILE*			fp;

	int64_t			n;

	char*			test;
	char**			b;
	unsigned short*		hit;
	unsigned long*		count;

	time_t			tt;

	Distance_t		dist;

	Grid_t*			g;
	Grid_t			try;

	Canon_t*		cyc;

	Dict_t*			dict;

	Item_t*			item;

	Constraints_t*		con;

	unsigned short		vec[10];
	unsigned char		sum[10];
	char			num[16];
	char			exp[256];
	char			arg[sizeof(exp)];
	char			hdr[sizeof(exp)];
	char*			stk[8];
	char*			col[elementsof(stk)-1];
	char*			tab[256];

	static unsigned char	pos[9][9];

	static char		buf[64*1024];
	static char		str[sizeof(buf)];
	static char		tmp[sizeof(buf)];

	static unsigned char	deprecated[256];

	if ((state.easy & LISTED) && status != EVAL)
		return 0;
	state.list++;
	if ((f = FORMAT(format)) && !*f)
		f = 0;
	if (!f)
	{
		if ((format == 'c' || format == 's') && status >= 0)
			state.shown++;
		return 0;
	}
	if (state.postscript && status != EVAL)
		postscript(grid);
	else
	{
		if (format == 's' && status != NOPUZZLE && status != EVAL)
			state.shown++;
		test = 0;
		b = stk;
		o = 0;
		cp = col;
		cw = 0;
		fp = stdout;
		op = buf;
		ep = op + sizeof(buf) - 1;
		for (;;)
		{
			if (!(c = *f++))
			{
				if (b == stk)
					break;
				f = *--b;
				continue;
			}
			if (o)
				switch (c)
				{
				case '%':
					break;
				case '-':
					m = -1;
					continue;
				case '+':
					m = 1;
					continue;
				case '#':
					if (c = *f)
					{
						f++;
						if (!v)
							v = c;
						else if (!u)
							u = c;
						else if (!l)
							l = c;
					}
					continue;
				case '.':
					y = 1;
					x = w;
					w = 0;
					continue;
				case '0':
					if (!w && !y && !z)
						z = 1;
					/*FALLTHROUGH*/
				case '1': case '2': case '3': case '4':
				case '5': case '6': case '7': case '8': case '9':
					w = w * 10 + (c - '0');
					continue;
				case '(':
					a = arg;
					p = 1;
					for (;;)
					{
						if (!(c = *f++))
						{
							f--;
							a = 0;
							break;
						}
						else if (c == '(')
							p++;
						else if (c == ')' && !--p)
						{
							*a = 0;
							a = arg;
							break;
						}
						if (a < &arg[sizeof(arg)-1])
							*a++ = c;
					}
					continue;
				case '[':
					tab[q++] = r;
					p = 1;
					for (;;)
					{
						if (!(c = *f++))
						{
							f--;
							q--;
							break;
						}
						else if (c == '[')
							p++;
						else if (c == ']' && !--p)
						{
							if (r < &str[sizeof(str)-1])
								*r++ = 0;
							else
								q--;
							break;
						}
						if (r < &str[sizeof(str)-1])
							*r++ = c;
					}
					continue;
				case '@':
					if (w)
					{
						s = op;
						while (--s > buf && *s != '\n');
						for (o = op  - s; o < w; o++)
							OUT(' ');
					}
					o = 0;
					continue;
				case '/':
					if (w)
						cw = w;
					if (cp < &col[elementsof(col)-1])
						*++cp = op;
					if (op <= buf || *(op-1) == '\n')
					{
						o = 0;
						continue;
					}
					c = '\n';
					break;
				case ',':
					c = ' ';
					break;
				case ':':
					c = '\n';
					break;
				case '?':
					o = 0;
					if (test == f)
						return 0;
					else if (test)
						f = "";
					else
					{
						test = f + 2;
						if (status <= 0)
						{
							while (c = *f++)
							{
								if (!(c = *f++))
								{
									f--;
									break;
								}
								if (c == '%')
								{
									if (!(c = *f++))
									{
										f--;
										break;
									}
									if (c == '?')
										break;
								}
							}
							if (!c || test == f)
								return 0;
						}
					}
					continue;
				case 'C':
					if (status <= 0)
						s = NOTICE(status);
					else
					{
						if (!can)
							can = canon(grid, 0, 0, 0);
						if (v)
						{
							n = 0;
							switch (v)
							{
							case 'a':
								n = can->aut;
								break;
							}
							goto number;
						}
						s = cansolution(can, state.hit, tmp);
					}
					goto string;
				case 'D':
					o = 0;
					switch (v)
					{
					case 'u':
					case 'U':
						dict = v == 'u' ? &state.uniq_format : &state.uniq_grid;
						for (item = flatten(dict); item; item = item->right)
							printf("%s\n", item->key);
						break;
					}
					continue;
				case 'F':
					FLUSH();
					switch (w)
					{
					case 1:
						fp = stdout;
						break;
					case 2:
						fp = stderr;
						break;
					}
					w = 0;
					goto empty;
				case 'G':
					switch (v)
					{
					case 'c':
					case 'C':
						j = 9;
						n = 0;
						for (i = 0; i < 81; i++)
							if ((c = data.count[MASK(grid, i)]) <= j && c > 1)
							{
								if (c < j)
								{
									j = c;
									n = 0;
								}
								n++;
							}
						if (v == 'C')
							n = j;
						break;
					default:
						n = state.choices[0];
						break;
					}
					goto number;
				case 'I':
					s = (char*)txtmagic;
					goto string;
				case 'M':
					UPDATE(grid, 'M');
					switch (v)
					{
					case 'a':
					case 'A':
						n = 0;
						for (i = 0; i < 81; i++)
							if (CANDIDATE(grid, i) && state.stats.magic->cell[i])
								n++;
						break;
					case 'b':
					case 'B':
						n = state.stats.magic->size;
						break;
					case 'g':
					case 'G':
						n = state.stats.magic->guess;
						break;
					case 'u':
					case 'U':
						n = 0;
						for (i = 0; i < 81; i++)
							if (CANDIDATE(grid, i) && !state.stats.magic->cell[i])
								n++;
						break;
					default:
						n = state.stats.magic->count;
						break;
					}
					goto number;
				case 'P':
					if (hdr[0] = u)
						hdr[1] = 0;
					y = 0;
					k = -1;
					nm = 1;
					switch (v)
					{
					case 'B':
						u = 18;
						goto rcb;
					case 'C':
						u = 9;
						goto rcb;
					case 'R':
						u = 0;
						/*FALLTHROUGH*/
					rcb:
						y = m;
						for (j = 0; j < 9; j++)
						{
							for (i = c = 0; i < 9; i++)
								c += SOLVED(grid, data.path[u+j][i]);
							vec[j] = c;
						}
						e = (d = vec) + 9;
						break;
					case 'd':
						for (i = j = 0; i < 81; i++)
							if (SOLVED(grid, i))
								j++;
						vec[1] = j;
						j = tuples(grid, 0, &nt);
						vec[0] = vec[1] + nt;
						for (i = 2; i <= j; i++)
							vec[i] = (state.tuples.que[i].end - state.tuples.que[i].beg) / i;
						e = (d = vec) + j + 1;
						break;
					case 'g':
						memset(sum, 0, 10);
						for (i = 0; i < 81; i++)
							if (c = data.ident[grid->cell[i]])
								sum[c]++;
						memset(vec, 0, sizeof(vec));
						for (i = 1; i < 10; i++)
							vec[sum[i]]++;
						e = (d = vec) + 10;
						break;
					case 'o':
						y = m;
						memset(vec, 0, sizeof(vec));
						for (i = 0; i < 81; i++)
							if (c = data.ident[grid->cell[i]])
								vec[c-1]++;
						e = (d = vec) + 9;
						break;
					case 'q':
						nm = 0;
						/*FALLTHROUGH*/
					case 'S':
						k = 0;
						/*FALLTHROUGH*/
					case 's':
						if (!state.group)
							l = 0;
						arg[0] = l;
						arg[1] = 0;
						for (i = 0; i < state.stats.group; i++)
							vec[i] = state.trace[i].placement;
						if (APPLIED('G'))
						{
							state.trace[state.stats.group].method = 'G';
							state.trace[state.stats.group].size = state.stats.apply['G'-'A'];
							state.stats.group++;
							vec[i++] = state.stats.apply['G'-'A'];
						}
						e = (d = vec) + i;
						break;
					case 'r':
						y = m;
						for (i = 0; i < 9; i++)
							vec[i] = rooked(grid, i);
						e = (d = vec) + 9;
						break;
					case 'v':
						y = m;
						memset(vec, 0, sizeof(vec));
						for (i = 0; i < 81; i++)
							if (data.count[j = MASK(grid, i)] > 1)
								while (c = data.next[j])
								{
									j ^= c;
									vec[data.next[c]-1]++;
								}
						e = (d = vec) + 9;
						break;
					default:
						for (i = 0; i < 9; i++)
							vec[i] = state.choices[i+1];
						e = (d = vec) + 9;
						break;
					}
					if (y)
						for (i = 0; i < e-d-1; i++)
						{
							c = i;
							for (j = i + 1; j < e-d; j++)
								if ((y > 0) ? (vec[c] > vec[j]) : (vec[c] < vec[j]))
									c = j;
							if (c != i)
							{
								u = vec[i];
								vec[i] = vec[c];
								vec[c] = u;
							}
						}
					a = hdr;
					od = d;
					s = tmp;
					if (w)
					{
						if (m)
							w *= m;
						t = z ? "%0*u" : "%*u";
						for (;;)
						{
							c = *d++;
							if (k >= 0)
							{
								s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%c", state.trace[k].method);
								if (state.trace[k].size > 1)
									s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%d", state.trace[k].size);
								k++;
							}
							else if (l)
								while (d < e && state.trace[d-od].group == state.trace[d-od-1].group)
									c += *d++;
							if (nm)
								s += snprintf(s, &tmp[elementsof(tmp)-1]-s, t, w, c);
							if (d >= e)
								break;
							if (l && k >= 0)
								a = state.trace[k-1].group == state.trace[k].group ? arg : hdr;
							s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%s", a);
						}
						m = w = z = 0;
					}
					else
						for (;;)
						{
							c = *d++;
							if (k >= 0)
							{
								s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%c", state.trace[k].method);
								if (state.trace[k].size > 1)
									s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%d", state.trace[k].size);
								k++;
							}
							else if (l)
								while (d < e && state.trace[d-od].group == state.trace[d-od-1].group)
									c += *d++;
							if (nm)
								s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%u", c);
							if (d >= e)
								break;
							if (l && k >= 0)
								a = state.trace[k-1].group == state.trace[k].group ? arg : hdr;
							s += snprintf(s, &tmp[elementsof(tmp)-1]-s, "%s", a);
						}
					s = tmp;
					goto string;
				case 'Q':
					switch (v)
					{
					case 'm':
						s = state.constraints.magic.text;
						break;
					case 'q':
						s = state.constraints.quick.text;
						break;
					case 's':
						s = tmp;
						for (con = &state.constraints.solve; con; con = con->next)
							s += snprintf(s, tmp+sizeof(tmp)-s, "%s%s", s == tmp ? "" : " ", con->text);
						s = tmp;
						break;
					default:
						if (b < &stk[elementsof(stk)])
							*b++ = f;
						f = FORMAT('q');
						o = 0;
						continue;
					}
					goto string;
				case 'S':
					if (b < &stk[elementsof(stk)])
						*b++ = f;
					f = FORMAT('m');
					o = 0;
					continue;
				case 'T':
					time(&tt);
					strftime(s = tmp, sizeof(tmp), a ? a : FORMAT('t'), localtime(&tt));
					goto string;
				case 'X':
					n = 0;
					switch (v)
					{
					case 'c':
						for (i = 0; i < 81; i++)
							if (SOLVED(grid, i))
								n++;
						break;
					case 'd':
						j = tuples(grid, 0, &nt);
						for (i = k = 0; i < 81; i++)
							if (SOLVED(grid, i))
								k++;
						nt += k;
						for (i = 2; i <= j; i++)
							k += (state.tuples.que[i].end - state.tuples.que[i].beg) * i;
						snprintf(s = tmp, sizeof(tmp), "%.4f", (double)k / (double)(nt * nt));
						goto string;
					case 'e':
						n = w;
						w = 0;
						n *= US;
						s = fmtelapsed(n);
						goto string;
					case 'E':
						try = data.empty;
						for (i = 0; i < 81; i++)
							if (SOLVED(grid, i))
								MOVE(&try, i, grid->cell[i]);
						s = tmp;
						for (i = 0; i < 81; i++)
							if (c = MASK(&try, i) ^ MASK(grid, i))
							{
								s += snprintf(s, tmp+sizeof(tmp)-s, "E%02d00", i);
								while (j = data.next[c])
								{
									c ^= j;
									s += snprintf(s, tmp+sizeof(tmp)-s, "%d", data.ident[j]);
								}
								s += snprintf(s, tmp+sizeof(tmp)-s, "\n");
							}
						*s = 0;
						s = tmp;
						goto string;
					case 'f':
						for (i = 0; i < 81; i++)
							if (FORCED(grid, i))
								n++;
						break;
					case 'F':
						z = 1<<16;
						for (i = 0; i < 6; i++)
						{
							c = 0;
							for (j = 0; j < 15; j++)
								c = (c<<1)|SOLVED(grid,symid[i][j]);
							if (z > c)
								z = c;
						}
						snprintf(s = tmp, elementsof(tmp), "%d-%d-%d-%d-%d"
							, (z>>10)&((1<<5)-1)
							, (z>> 6)&((1<<4)-1)
							, (z>> 3)&((1<<3)-1)
							, (z>> 1)&((1<<2)-1)
							, (z>> 0)&((1<<1)-1)
							);
						goto string;
					case 'r':
						n = state.seed;
						goto unumber;
					case 'R':
						n = state.seed_init;
						goto unumber;
					case 't':
						c = tuples(grid, w, 0);
						s = tmp;
						for (k = 2; k <= c; k++)
							for (i = state.tuples.que[k].beg; i < state.tuples.que[k].end; i += k)
							{
								s += snprintf(s, tmp+sizeof(tmp)-s, "[%d]", k);
								x = state.tuples.cv[i].c;
								z = state.tuples.cv[i].v;
								for (j = i; j < i+k; j++)
								{
									s += snprintf(s, tmp+sizeof(tmp)-s, " %s=%d", fmtpos(state.tuples.cv[j].c), state.tuples.cv[j].v+1);
									if (state.tuples.cv[j].c != x)
										x = -1;
									if (state.tuples.cv[j].v != z)
										z = -1;
								}
								if (x < 0 && z < 0)
									s += snprintf(s, tmp+sizeof(tmp)-s, " ERROR");
								s += snprintf(s, tmp+sizeof(tmp)-s, "\n");
							}
						if (s > tmp)
							s--;
						*s = 0;
						s = tmp;
						goto string;
					case 'u':
						n = unavoidable(grid, isdigit(u) ? (u - '0') : 4);
						break;
					case 'v':
						z = 0;
						for (i = 0; i < 81; i++)
							if (SOLVED(grid, i))
								z |= CELL(grid, i);
						n = data.count[z];
						break;
					}
					goto number;
				case 'c':
					k = u;
					if (v && !isalpha(v))
					{
						i = u;
						u = v;
						v = i;
					}
					if (u && !isalpha(u))
					{
						i = l;
						l = u;
						u = i;
					}
					y = tolower(v);
					switch (v)
					{
					case 'b':
					case 'B':
					case 'g':
					case 'G':
						sig = bandsig(grid, islower(v), u != 'x', y == 'g');
						i = y == 'g' ? 2 : 3;
						if (!l)
							l = ',';
						snprintf(s = tmp, sizeof(tmp), "%0*d%c%0*d%c%0*d%c%0*d%c%0*d%c%0*d", i, sig[0]+1, l, i, sig[1]+1, l, i, sig[2]+1, l, i, sig[3]+1, l, i, sig[4]+1, l, i, sig[5]+1);
						break;
					case 'e':
						if (status <= 0)
						{
							s = NOTICE(status);
							break;
						}
						o = 0;
						if (!can)
							can = canon(grid, 0, 0, 0);
						if (!state.sudz && !(state.sudz = sudzopen(stdout, 0, SUDZ_WRITE)))
						{
							fprintf(stderr, "%s: sudz SUDZ_WRITE open failure\n", command);
							fini(1);
						}
						s = cansolution(can, state.hit, tmp);
						for (i = 0; i < 81; i++)
							s[i] = data.ident[token[((unsigned char*)s)[i]]];
						z = bandindex((unsigned char*)s, 0, 0) + 1;
						if (sudzput(state.sudz, (unsigned char*)s, z, can->aut) < 0)
							fini(1);
						continue;
					case 'i':
						s = (w < 1 || w > elementsof(data.bands)) ? (char*)"invalid-band-index" : (char*)data.bands[w-1];
						w = 0;
						break;
					case 'k':
						s = state.key ? subcanon(0, state.key, 0, tmp, k ? k : '0', state.transpose) : state.item ? state.item->key : "0";
						break;
					case 'L':
						if (status <= 0)
						{
							s = NOTICE(status);
							break;
						}
						if (!can)
							can = canon(grid, 0, 0, 0);
						cansolution(can, state.hit, hdr);
						for (i = 0; i < 81; i++)
							hdr[i] = data.ident[token[((unsigned char*)hdr)[i]]];
						z = bandindex((unsigned char*)hdr, 0, 0) + 1;
						s = tmp;
						s += snprintf(s, tmp+sizeof(tmp)-s, "%03d-", z);
						canpuzzle(can, grid, 0, state.hit, hdr, '0');
						for (i = 27; i < 81; i++)
						{
							if ((j = hdr[i]) == '0' && hdr[i+1] == '0')
							{
								j = 'A';
								while (hdr[i+1] == '0')
								{
									i++;
									j++;
								}
							}
							*s++ = j;
						}
						*s = 0;
						s = tmp;
						break;
					case 'm':
						if (w == 27 || w == 54)
						{
							try = *grid;
							for (i = w; i < 81; i++)
								try.cell[i] = 0;
							hit = state.hit;
							state.hit = try.cell;
							s = canpuzzle(canon(&try, 0, w / 9, 0), &try, 0, 0, tmp, 0);
							state.hit = hit;
						}
						else
							s = subcanon(0, grid, 0, tmp, l ? l : '0', state.transpose);
						break;
					case 'o':
					case 'O':
						for (i = k = 0; i < 9; i++)
							for (j = 0; j < 9; j++)
								pos[i][j] = SOLVED(grid, INDEX(i,j));
						symdist(pos, &dist, u == 'c' || u == 'C');
						if (v == 'o')
						{
							s = (char*)dihedral[dist.dihedral].op;
							t = "-";
						}
						else
						{
							s = (char*)dihedral[dist.dihedral].description;
							t = " distance-";
						}
						snprintf(tmp, sizeof(tmp), "%s%s%d", s, t, dist.distance);
						s = tmp;
						break;
					case 'p':
						if (status <= 0)
						{
							s = NOTICE(status);
							break;
						}
						if (!can)
							can = canon(grid, 0, 0, 0);
						s = fmtperm(can, tmp, sizeof(tmp));
						break;
					case 'P':
						if (!can)
							can = panon(grid, dihedral[symmetry(grid)].elements, 0);
						if (u == 'p')
							s = fmtperm(can, tmp, sizeof(tmp));
						else
							s = canpuzzle(can, grid, 0, 0, state.tmp, l);
						break;
					case 's':
					case 'S':
					case 'a':
					case 'c':
					case 'C':
					case 'd':
					case 'D':
						if (status <= 0)
						{
							s = NOTICE(status);
							break;
						}
						i = y == 'c' || y == 'd';
						if (!state.sym || y == 'a')
							state.sym = symmetrize(grid, i ? &state.dist : 0, y == 'c', y == 'a');
						switch (v)
						{
						case 'a':
							s = "";
							goto string;
						case 'C':
						case 'D':
							t = "-";
							switch (u)
							{
							case 's':
								s = (char*)dihedral[state.sym->aut].op;
								break;
							case 'S':
								s = (char*)dihedral[state.sym->aut].description;
								t = " distance-";
								break;
							case 't':
								s = (char*)dihedral[state.sym->aut].type;
								break;
							default:
								n = state.dist.distance;
								goto number;
							}
							if (state.dist.distance)
							{
								snprintf(tmp, sizeof(tmp), "%s%s%d", s, t, state.dist.distance);
								s = tmp;
							}
							goto string;
						case 'S':
							n = state.sym->aut;
							goto number;
						}
						if (!state.sym->aut && !i)
							s = "asymmetric";
						else if (u == 'p')
						{
							j = state.sym->aut;
							state.sym->aut = 0;
							s = fmtperm(state.sym, tmp, sizeof(tmp));
							state.sym->aut = j;
						}
						else
							s = canpuzzle(state.sym, grid, state.input->exemplar, state.hit, tmp, l);
						break;
					case 't':
					case 'T':
					case 'z':
					case 'Z':
						if (state.input->exemplar)
						{
							if (y == 'z')
							{
								g = &try;
								xap(grid, g, a, vec);
								cyc = symmetrize(g, 0, 0, 0);
								state.sym = 0;
							}
							else
								cyc = xanon(grid, a, vec);
							switch (u)
							{
							case 'a':
								n = cyc->aut;
								goto number;
							case 'p':
								s = fmtperm(cyc, tmp, sizeof(tmp));
								break;
							default:
								if (islower(v))
									g = grid;
								else
								{
									g = &try;
									for (i = 0; i < 81; i++)
										try.cell[i] = vec[data.ident[grid->cell[i]]];
								}
								s = tmp;
								for (i = 0; i < 9; i++)
									for (j = 0; j < 9; j++)
										*s++ = exmp[data.ident[g->cell[data.swap[cyc->box][cyc->row[i]][cyc->col[j]]]]];
								*s = 0;
								s = tmp;
								break;
							}
						}
						else
							s = "not-an-exemplar";
						break;
					case 'x':
					case 'X':
						try = data.empty;
						g = &try;
						for (i = 0; i < 81; i++)
							if (SOLVED(grid, i))
								g->cell[i] = texem['X'];
						cyc = xanon(g, "X", vec);
						switch (u)
						{
						case 'a':
							n = cyc->aut;
							goto number;
						case 'p':
							s = fmtperm(cyc, tmp, sizeof(tmp));
							break;
						default:
							if (isupper(v))
							{
								g = grid;
								t = (char*)name;
							}
							else
								t = exmp;
							s = tmp;
							for (i = 0; i < 9; i++)
								for (j = 0; j < 9; j++)
									*s++ = t[data.ident[g->cell[data.swap[cyc->box][cyc->row[i]][cyc->col[j]]]]];
							*s = 0;
							s = tmp;
							break;
						}
						break;
					default:
						if (status <= 0)
						{
							s = NOTICE(status);
							break;
						}
						if (w == 2)
						{
							g = state.compare.grid;
							i = 0;
						}
						else
						{
							g = grid;
							i = state.input->exemplar;
						}
						if (!can)
							can = canon(g, 0, 0, 0);
						s = canpuzzle(can, g, i, 0, tmp, l);
						break;
					}
					goto string;
				case 'd':
					if (b < &stk[elementsof(stk)])
						*b++ = f;
					f = FORMAT('d');
					o = 0;
					continue;
				case 'f':
					if (!a)
						s = v == 'p' ? state.input->path : state.input->label;
					else if (*a == '@' || *a == '*' || *a == '$' && (*(a + 1) == '*' || *(a + 1) == '@'))
					{
						hdr[0] = v;
						hdr[1] = 0;
						s = tmp;
						for (i = 0; i < state.fields; i++)
							s += snprintf(s, tmp+sizeof(tmp)-s, "%s%s", hdr, state.field[i]);
						s = tmp + !!v;
					}
					else if ((i = field(a, strlen(a))) >= 0 && i < state.fields)
						s = state.field[i];
					else if (*a != '$' || !(s = getenv(a + 1)))
						goto empty;
					goto string;
				case 'g':
					CALL(grid, a, g, hit, tmp, count, w);
					switch (u)
					{
					case 'i':
						try = *g;
						g = &try;
						INVERT(g, i, u);
						/*FALLTHROUGH*/
					case 't':
						u = 1;
						break;
					default:
						u = 0;
						break;
					}
					switch (v)
					{
					case 'F':
						v = 0;
						/*FALLTHROUGH*/
					case 'f':
						h = "+-------+-------+-------+\n";
						op += snprintf(op, ep-op, "\n%s", h);
						for (i = 0; i < 81; i++)
						{
							if (!(i % 3))
							{
								if (!(i % 9))
								{
									if (i)
										op += snprintf(op, ep-op, " |\n");
									if (i == 27 || i == 54)
										op += snprintf(op, ep-op, h);
								}
								OUT('|');
								OUT(' ');
							}
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
							if ((i + 1) % 9)
								OUT(' ');
						}
						op += snprintf(op, ep-op, " |\n%s", h);
						goto label0;
					case 'G':
						v = 0;
						/*FALLTHROUGH*/
					case 'g':
						OUT('\n');
						for (i = 0; i < 81; i++)
						{
							if (!(i % 3))
							{
								if (!(i % 9))
								{
									if (i)
										OUT('\n');
									if (i == 27 || i == 54)
										OUT('\n');
								}
								else
									OUT(' ');
							}
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
							if ((i + 1) % 9)
								OUT(' ');
						}
						goto label1;
					case 'M':
						v = 0;
						/*FALLTHROUGH*/
					case 'm':
						for (i = 0; i < 81; i++)
						{
							if (i % 9)
								OUT(' ');
							else
								OUT('\n');
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
						}
						goto label1;
					case 'o':
						for (i = k = 0; i < 81; i++)
							if (SOLVED(g, i))
							{
								if (k++)
									OUT('\n');
								for (j = 0; j < 81; j++)
									OUT(name[j == i ? 0 : data.ident[g->cell[j]]]);
							}
						goto label0;
					case 'P':
						v = 0;
						/*FALLTHROUGH*/
					case 'p':
						s = "------+-------+------\n";
						for (i = 0; i < 81; i++)
						{
							if (!(i % 3))
							{
								if (!(i % 9))
								{
									OUT('\n');
									if (i == 27 || i == 54)
										op += snprintf(op, ep-op, s);
								}
								else
								{
									OUT('|');
									OUT(' ');
								}
							}
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
							if ((i + 1) % 9)
								OUT(' ');
						}
						goto label1;
					case 'S':
						v = 0;
						/*FALLTHROUGH*/
					case 's':
						s = "*-----------*\n";
						for (i = 0; i < 81; i++)
						{
							if (!(i % 3))
							{
								if (i)
									OUT('|');
								if (!(i % 9))
								{
									OUT('\n');
									if (!i)
										op += snprintf(op, ep-op, s);
									else if (!(i % 27))
										op += snprintf(op, ep-op, "|---+---+---|\n");
									OUT('|');
								}
							}
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
						}
						op += snprintf(op, ep-op, "|\n%s", s);
						goto label0;
					case 'V':
						v = 0;
						/*FALLTHROUGH*/
					case 'v':
						s = "---+---+---\n";
						for (i = 0; i < 81; i++)
						{
							if (!(i % 3))
							{
								if (!(i % 9))
								{
									OUT('\n');
									if (i == 27 || i == 54)
										op += snprintf(op, ep-op, s);
								}
								else
									OUT('|');
							}
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
						}
						goto label1;
					default:
						v = !isupper(v);
						OUT('\n');
						for (i = 0; i < 81; i++)
						{
							PIP(g, hit, i, u, v, name[0], c);
							OUT(c);
							if (!((i + 1) % 9))
								OUT('\n');
						}
					label0:
						i = 0;
					label1:
						if (a)
						{
							OUT(' ');
							while (*a)
								OUT(*a++);
						}
						if (i)
							OUT('\n');
						break;
					}
					o = 0;
					continue;
				case 'h':
					CALL(grid, a, g, hit, tmp, count, w);
					if (v == 'e')
					{
						static const char	hex[] = "0123456789ABCDEF";

						s = tmp;
						switch (w)
						{
						case 0:
							for (i = j = 0; i < 81; i++)
								if (SOLVED(g, i))
								{
									if (j)
									{
										*s++ = hex[j+8];
										j = 0;
									}
									*s++ = hex[data.ident[g->cell[i]]-1];
								}
								else if (++j >= 7)
								{
									*s++ = hex[j+8];
									j = 0;
								}
							break;
						case 1:
							try = data.empty;
							for (i = 0; i < 81; i++)
							{
								if (SOLVED(g, i))
								{
									j = g->cell[i];
									k = MASK(&try, i);
									*s++ = '1';
									if (FORCED(&try, i))
									{
										MOVE(&try, i, g->cell[i]);
										continue;
									}
									for (;;)
									{
										if (j & 1)
											break;
										j >>= 1;
										if (k & 1)
											*s++ = '1';
										k >>= 1;
									}
									MOVE(&try, i, g->cell[i]);
								}
								*s++ = '0';
							}
							break;
						case 2:
							u = v = 0;
							try = data.empty;
							for (i = 0; i < 81; i++)
							{
								if (SOLVED(g, i))
								{
									j = g->cell[i];
									k = MASK(&try, i);
									if (u++ >= 8)
									{
										u = 1;
										*s++ = v;
										v = 0;
									}
									v |= 1;
									v <<= 1;
									if (FORCED(&try, i))
									{
										MOVE(&try, i, g->cell[i]);
										continue;
									}
									for (;;)
									{
										if (j & 1)
											break;
										j >>= 1;
										if (k & 1)
										{
											if (u++ >= 8)
											{
												u = 1;
												*s++ = v;
												v = 0;
											}
											v |= 1;
											v <<= 1;
										}
										k >>= 1;
									}
									MOVE(&try, i, g->cell[i]);
								}
								if (u++ >= 8)
								{
									u = 1;
									*s++ = v;
									v = 0;
								}
								v <<= 1;
							}
							*s++ = v;
							fwrite(tmp, s-tmp, 1, fp);
							continue;
						}
						*s = 0;
						s = tmp;
						goto string;
					}
					m = 2;
					k = 1;
					if (w <= 0)
					{
						w = 0;
						z = 0x1ff;
					}
					else
					{
						z = 0;
						do
						{
							if (o = w % 10)
								z |= data.bit[o-1];
						} while (w /= 10);
						w = 1;
					}
					if (v == 'c')
					{
						l = u;
						u = v;
						v = 0;
					}
					if (u == 'c')
					{
						u = l;
						l = 1;
					}
					else
						l = 0;
					if (isdigit(u) && u != '0')
					{
						m = (u -= '0');
						w = 1;
					}
					else if (count)
					{
						for (i = 0; i < 81; i++)
						{
							if (count[i] < 10)
								u = 1;
							else if (count[i] < 100)
								u = 2;
							else if (count[i] < 1000)
								u = 3;
							else if (count[i] < 10000)
								u = 4;
							else if (count[i] < 100000)
								u = 5;
							else if (count[i] < 1000000)
								u = 6;
							else if (count[i] < 10000000)
								u = 7;
							else if (count[i] < 100000000)
								u = 8;
							else
								u = 12;
							if (m < u)
								m = u;
						}
						u = 0;
					}
					else
					{
						if (u == '0')
						{
							int	b;
							int	o;
							int	w;

							try = *g;
							g = &try;
							positions(g, state.pos, 1);
							for (i = 0; i < 81; i++)
							  g->cell[i] = 0;
					                for (j = 0; j < 9; j++)
					                  for (i = o = 0; o < 3; o++, i += 9)
					                    for (b = 0; b < 9; b++)
					                      if (data.count[w = state.pos[o][b][j]] == 2)
							      {
								g->cell[data.path[i+b][data.ordinal[data.next[w]]]] |= data.bit[j];
								g->cell[data.path[i+b][data.ordinal[w^data.next[w]]]] |= data.bit[j];
					                      }
							k = 0;
						}
						u = 0;
						for (i = 0; i < 81; i++)
							if ((o = data.count[(l ? CELL(g, i) : MASK(g, i)) & z]) > m)
								m = o;
					}
					m += 2 * (v == 'b' || v == 'B') + 1;
					if (v == 'f' || v == 'p' || v == 's' || v == 'v' || v == 'B')
					{
						s = tmp;
						h = hdr;
						if (v == 'f')
						{
							*s++ = '+';
							*h++ = '+';
						}
						else if (v == 's')
						{
							*s++ = '|';
							*h++ = '*';
						}
						for (i = 0; i < 3; i++)
						{
							j = 3 * m + 1;
							while (--j)
							{
								*s++ = '-';
								*h++ = '-';
							}
							if (i < 2)
							{
								*s++ = '+';
								*h++ = '+';
							}
						}
						if (v == 'f')
						{
							*s++ = '+';
							*h++ = '+';
						}
						else if (v == 's')
						{
							*s++ = '|';
							*h++ = '*';
						}
						*s++ = *h++ = '\n';
						*s = *h = 0;
					}
					for (i = 0; i < 81; i++)
					{
						if (v == 'f' || v == 'p' || v == 's' || v == 'v' || v == 'B')
						{
							if (!(i % 3))
							{
								if (!(i % 9))
								{
									if (i && (v == 'f' || v == 's'))
										OUT('|');
									OUT('\n');
									if (i == 27 || i == 54)
									{
										op += snprintf(op, ep-op, tmp);
										if (v == 'f' || v == 's')
											OUT('|');
									}
									else if (v == 'f' || v == 's')
									{
										if (!i)
											op += snprintf(op, ep-op, hdr);
										OUT('|');
									}
								}
								else
									OUT('|');
							}
						}
						else if (!(i % 9))
							OUT('\n');
						if (count)
							snprintf(s = num, sizeof(num), "%lu", count[i]);
						else
							s = fmtbits((k && SOLVED(g, i)) ? (w ? 0 : g->cell[i]) : u ? (data.count[x = (l ? CELL(g, i) : MASK(g, i))] == u && (x & z) ? x : 0) : ((l ? CELL(g, i) : MASK(g, i)) & z), v == 'b' || v == 'B');
						p = strlen(s);
						o = (m - p) / 2;
						p = m - (o + p);
						while (o-- > 0)
							OUT(' ');
						op += snprintf(op, ep-op, s);
						while (p-- > 0)
							OUT(' ');
					}
					if (v == 'f' || v == 's')
					{
						OUT('|');
						OUT('\n');
						op += snprintf(op, ep-op, hdr);
					}
					else
						OUT('\n');
					o = 0;
					continue;
				case 'i':
					switch (v)
					{
					case 'C':
						s = state.compare.similarity ? "similarity" : "distance";
						break;
					default:
						if (!*(s = state.input->ident) && !(s = state.input->label))
							s = state.title;
						break;
					}
					goto string;
				case 'm':
					if (status <= 0)
						s = NOTICE(status);
					else
					{
						UPDATE(grid, 'M');
						if (state.stats.magic->size < 0)
							s = "magic-error";
						else if (state.stats.magic->size == 0)
							s = "constrained";
						else
						{
							hdr[0] = u;
							hdr[1] = 0;
							s = tmp;
							h = tmp + sizeof(tmp) - 1;
							switch (v)
							{
							case 'a':
							default:
								v = state.stats.magic->size;
								if (hdr[0])
								{
									hdr[1] = ' ';
									hdr[2] = 0;
								}
								if (!(p = w))
									p = state.width;
								if ((p = (p + 1 - strlen(hdr)) / (v * strlen(fmtpos(1)) + 1)) <= 0)
									p = 1;
								u = -1;
								for (i = j = 0; i < state.stats.magic->count; i++)
								{
									if (++u >= p)
									{
										u = 0;
										s += snprintf(s, h - s, "\n%s", hdr);
									}
									else if (u)
										s += snprintf(s, h - s, " ");
									for (k = 0; k < v; k++, j++)
										s += snprintf(s, h - s, "%s", fmtpos(state.stats.magic->tuple[j]));
								}
								break;
							case 'A':
								v = state.stats.magic->size;
								if (hdr[0])
								{
									hdr[1] = ' ';
									hdr[2] = 0;
								}
								if (!(p = w))
									p = state.width;
								if ((p = (p + 1 - strlen(hdr)) / (v * strlen(fmtval(1, 'e', 1)) + 1)) <= 0)
									p = 1;
								u = -1;
								for (i = j = 0; i < state.stats.magic->count; i++)
								{
									if (++u >= p)
									{
										u = 0;
										s += snprintf(s, h - s, "\n%s", hdr);
									}
									else if (u)
										s += snprintf(s, h - s, " ");
									for (k = 0; k < v; k++, j++)
										s += snprintf(s, h - s, "%s", fmtval(state.stats.magic->tuple[j], 'e', state.hit[state.stats.magic->tuple[j]]));
								}
								break;
							case 'u':
								for (i = 0; i < 81; i++)
									if (CANDIDATE(grid, i) && !state.stats.magic->cell[i])
										s += snprintf(s, h - s, "%s%s", hdr, fmtpos(i));
								break;
							case 'U':
								for (i = 0; i < 81; i++)
									if (CANDIDATE(grid, i) && !state.stats.magic->cell[i])
										s += snprintf(s, h - s, "%s%s", hdr, fmtval(i, 'e', state.hit[i]));
								break;
							}
							*s = 0;
							s = tmp + (hdr[0] && !hdr[1]);
						}
					}
					goto string;
				case 'n':
					switch (v)
					{
					case 'a':
						n = state.shown;
						break;
					case 'A':
						n = state.input->sudz ? state.input->sudz->automorphisms : 0;
						break;
					case 'B':
						n = state.input->sudz ? state.input->sudz->band : 0;
						break;
					case 'c':
						n = state.item ? state.item->index : state.classify;
						break;
					case 'C':
						n = state.item ? state.item->part : state.compare.distance;
						break;
					case 'd':
						n = state.dict ? state.dict->count : 0;
						break;
					case 'e':
						n = state.item ? state.item->count : 0;
						break;
					case 'i':
						n = state.input->input;
						break;
					case 'I':
						n = state.input->sudz ? state.input->sudz->index : 0;
						break;
					case 'l':
						if (!(n = state.input->begin))
							goto empty;
						break;
					case 'm':
						n = state.multiple;
						break;
					case 'n':
						n = state.nodes;
						break;
					case 'o':
						n = state.input->ordinal;
						break;
					case 'p':
						n = state.input->puzzle;
						break;
					case 'r':
						n = state.shown - state.related;
						break;
					case 'R':
						n = state.related + 1;
						break;
					case 's':
						n = state.searched;
						break;
					case 'S':
						n = state.scans;
						break;
					case 'u':
						n = state.uniqued;
						break;
					case 'W':
						n = state.input->sudz ? state.input->sudz->window : 0;
						break;
					default:
						n = state.valid;
						break;
					}
					goto number;
				case 'q':
					s = tmp;
					j = 0;
					switch (a ? 'c' : v)
					{
					case 'c':
						if (status <= 0)
						{
							s = NOTICE(status);
							goto string;
						}
						/*FALLTHROUGH*/
					case 'C':
						if (hdr[0] = u)
							hdr[j=1] = 0;
						h = a ? a : state.text.list;
						while (c = *h++)
						{
							UPDATE(grid, c);
							if ((i = APPLIED(c)) > MANY(c))
							{
								s += snprintf(s, tmp+sizeof(tmp)-s, "%s%c%d", hdr, c, i);
								if (!(t = SHOW(c)))
								{
									s += snprintf(s, tmp+sizeof(tmp)-s, ".%d", PLACED(c));
									m = CONSTRAINT_WEIGHTS;
									while (--m >= 0 && !SIZE(c,m));
									for (k = 0; k <= m; k++)
										s += snprintf(s, tmp+sizeof(tmp)-s, ".%d", SIZE(c,k));
								}
								else if (*t)
									s += snprintf(s, tmp+sizeof(tmp)-s, ".%s", t);
							}
						}
						if (s == tmp)
							j = 0;
						break;
					case 'd':
						if (state.count.group)
						{
							c = state.trace[0].method;
							k = state.trace[0].size;
						}
						else
						{
							c = APPLIED('G') ? 'G' : '-';
							k = 0;
						}
						if (k > 1)
							snprintf(s = tmp, sizeof(tmp), "%c%d", c, k);
						else
							snprintf(s = tmp, sizeof(tmp), "%c", c);
						goto string;
					case 'D':
						n = state.count.group ? state.trace[0].index : APPLIED('G') ? 99 : 0;
						goto number;
					case 'h':
						if (APPLIED('G'))
						{
							c = 'G';
							k = 0;
						}
						else
						{
							for (i = j = 0; i < state.count.group; i++)
								if (state.trace[j].index < state.trace[i].index)
									j = i;
							c = state.trace[j].method;
							k = state.trace[j].size;
						}
						if (k > 1)
							snprintf(s = tmp, sizeof(tmp), "%c%d", c, k);
						else
							snprintf(s = tmp, sizeof(tmp), "%c", c);
						goto string;
					case 'H':
						if (APPLIED('G'))
							n = 99;
						else
						{
							for (i = j = 0; i < state.count.group; i++)
								if (state.trace[j].index < state.trace[i].index)
									j = i;
							n = state.trace[j].index;
						}
						goto number;
					case 'i':
						for (i = 0; state.constraints.solve.order[i].method; i++)
						{
							s += snprintf(s, tmp+sizeof(tmp)-s, " %d:%c", state.constraints.solve.order[i].group, state.constraints.solve.order[i].method->id);
							if ((j = state.constraints.solve.order[i].min) > 1)
								s += snprintf(s, tmp+sizeof(tmp)-s, "%d", j);
						}
						s = tmp + 1;
						goto string;
					case 'I':
						for (i = 0; state.constraints.solve.order[i].method; i++);
						n = state.constraints.solve.order[i-1].group;
						goto number;
					case 'm':
						UPDATE(grid, 'C');
						s = (char*)minimal[state.stats.progress['C'-'A']].name;
						goto string;
					case 'M':
						UPDATE(grid, 'C');
						s = (char*)minimal[state.stats.progress['C'-'A']].description;
						goto string;
					case 'o':
						if (hdr[0] = u)
							hdr[j=1] = 0;
						h = a ? a : state.text.list;
						while (c = *h++)
						{
							UPDATE(grid, c);
							if (APPLIED(c) > MANY(c) && !(methods[c-'A']->flags & (CONSTRAINT_PSEUDO|CONSTRAINT_HIDDEN)))
							{
								s += snprintf(s, tmp+sizeof(tmp)-s, "%s%c", hdr, c);
								if (methods[c-'A']->min)
									for (k = 0; k < CONSTRAINT_WEIGHTS; k++)
										if (SIZE(c,k))
											s += snprintf(s, tmp+sizeof(tmp)-s, "%d", k+2);
							}
						}
						if (s == tmp)
							j = 0;
						break;
					case 'p':
						k = 0;
						for (i = j = 0; i < state.count.group; i++)
						{
							if (state.trace[j].index < state.trace[i].index)
								j = i;
							if (state.trace[i].assign)
							{
								k = 1;
								break;
							}
						}
						if (k)
						{
							c = state.trace[j].method;
							k = state.trace[j].size;
						}
						else
						{
							c = APPLIED('G') ? 'G' : '-';
							k = 0;
						}
						if (k > 1)
							snprintf(s = tmp, sizeof(tmp), "%c%d", c, k);
						else
							snprintf(s = tmp, sizeof(tmp), "%c", c);
						goto string;
					case 'P':
						k = 0;
						for (i = j = 0; i < state.count.group; i++)
						{
							if (state.trace[j].index < state.trace[i].index)
								j = i;
							if (state.trace[i].assign)
							{
								k = 1;
								break;
							}
						}
						n = k ? state.trace[j].index : APPLIED('G') ? 99 : 0;
						goto number;
					case 'q':
						if (status <= 0)
						{
							s = NOTICE(status);
							goto string;
						}
						/*FALLTHROUGH*/
					case 'Q':
						s = state.constraints.solve.text;
						goto string;
					case 's':
						UPDATE(grid, 'S');
						s = (char*)dihedral[state.stats.symmetry].op;
						goto string;
					case 'S':
						UPDATE(grid, 'S');
						s = (char*)dihedral[state.stats.symmetry].description;
						goto string;
					case 't':
						UPDATE(grid, 'S');
						s = (char*)dihedral[state.stats.symmetry].type;
						goto string;
					default:
						if (status <= 0 && !isupper(v))
						{
							s = NOTICE(status);
							goto string;
						}
						o = state.stats.constraint;
						for (i = 0; state.method[i].id; i++)
							if (o & state.method[i].constraint)
								*s++ = state.method[i].id;
						break;
					}
					*s = 0;
					s = tmp + j;
					goto string;
				case 'r':
					if (!a || !*a)
						a = state.rating;
					switch (v)
					{
					case 0:
					case 'r':
						n = rating(grid, a, v);
						break;
					case '.':
						c = rating(grid, a, 0) / 1000;
						snprintf(s = tmp, sizeof(tmp), "%d.%d", c / 10, c % 10);
						goto string;
					case 'n':
						snprintf(s = tmp, sizeof(tmp), "%X", normalized(grid));
						goto string;
					case 's':
						if (status <= 0)
							s = NOTICE(status);
						else
							s = (char*)rated[normalized(grid)];
						goto string;
					}
					goto number;
				case 's':
					if (status <= 0)
						s = NOTICE(status);
					else
					{
						CALL(grid, a, g, hit, tmp, count, w);
						if (v == 'A')
							UPDATE(grid, 'M');
						else
							v = 0;
						s = tmp;
						for (i = 0; i < 81; i++)
							*s++ = (c = data.ident[g->cell[i]]) ? name[c] : v ?  name[data.ident[hit[i]] + (hit[i] ? (state.stats.magic->cell[i] ? 9 : 0) + 9 : 0)] : name[data.ident[hit[i]]];
						*s = 0;
						s = tmp;
					}
					goto string;
				case 't':
					switch (v)
					{
					case 'e':
						s = fmtelapsed(usr() - state.start);
						break;
					case 'p':
						n = usr() - state.previous;
						state.previous += n;
						s = fmtelapsed(n);
						break;
					case 't':
						s = fmtelapsed(state.total.time);
						break;
					default:
						s = fmtelapsed(state.stats.time);
						break;
					}
					goto string;
				case 'v':
					CALL(grid, a, g, hit, tmp, count, w);
					j = 0;
					switch (v)
					{
					case 'i':
					case 't':
						i = u;
						u = v;
						v = i;
						break;
					default:
						if (isalpha(v))
							v = 0;
						break;
					}
					switch (u)
					{
					case 'i':
						try = *g;
						g = &try;
						INVERT(g, i, u);
						/*FALLTHROUGH*/
					case 't':
						j = 1;
						break;
					default:
						if (!isalpha(u) && !v)
							v = u;
						break;
					}
					if (!v)
						v = name[0];
					s = tmp;
					for (i = 0; i < 81; i++)
						*s++ = PIP(g, hit, i, j, v, v, c);
					*s = 0;
					s = tmp;
					goto string;
				case 'x':
					if (a)
					{
						memcpy(exp, buf, sizeof(exp));
						i = state.call.size;
						state.call.size = sizeof(hdr);
						t = state.call.buf;
						*(state.call.buf = hdr) = 0;
						n = eval(grid, a);
						s = state.call.buf;
						state.call.buf = t;
						state.call.size = i;
						memcpy(buf, exp, sizeof(exp));
						if (*s)
						{
							if (v)
							{
								t = a = s;
								while (c = *s++)
									if (isspace(c))
									{
										while (isspace(*s))
											s++;
										*t++ = v;
									}
									else
										*t++ = c;
								*t = 0;
								s = a;
							}
							goto string;
						}
					}
					else if (s = state.string)
						goto string;
					else
						n = 0;
					goto number;

				/* these have %Xn equivalents and are deprecated */

				case 'a': /* %#an */
					DEPRECATED('a', "an");
					n = state.shown;
					goto number;
				case 'j': /* %#pn */
					DEPRECATED('j', "pn");
					n = state.input->puzzle;
					goto number;
				case 'k': /* %#in */
					DEPRECATED('k', "in");
					n = state.input->input;
					goto number;
				case 'l': /* %#ln */
					DEPRECATED('l', "ln");
					if (!(n = state.input->begin))
						goto empty;
					goto number;
				case 'o': /* %#on */
					DEPRECATED('o', "on");
					n = state.input->ordinal;
					goto number;
				case 'y': /* %#mn */
					DEPRECATED('y', "mn");
					n = state.multiple;
					goto number;
				case 'z': /* %#rn */
					DEPRECATED('z', "rn");
					n = state.shown - state.related;
					goto number;

				/* these have %Xt equivalents and are deprecated */

				case 'e': /* %#et */
					DEPRECATED('e', "et");
					s = fmtelapsed(usr() - state.start);
					goto string;
				case 'p': /* %#pt */
					DEPRECATED('p', "pt");
					n = usr() - state.previous;
					state.previous += n;
					s = fmtelapsed(n);
					goto string;
				case 'u': /* %#tt */
					DEPRECATED('u', "tt");
					s = fmtelapsed(state.total.time);
					goto string;

				default:
					OUT('%');
					if (w)
						op += snprintf(op, ep-op, "%d", w);
					break;
				}
			else
				switch (c)
				{
				case '%':
					a = 0;
					m = 0;
					o = 1;
					q = 0;
					r = str;
					v = 0;
					u = 0;
					l = 0;
					w = 0;
					x = 0;
					y = 0;
					z = 0;
					continue;
				case '\\':
					switch (c = *f++)
					{
					case 0:
						f--;
						c = '\\';
						break;
					case 'n':
						c = '\n';
						break;
					case 't':
						c = '\t';
						break;
					}
					break;
				}
			OUT(c);
			o = 0;
			continue;
		empty:
			s = "";
		string:
			if (z)
			{
				n = strtol(s, &t, 0);
				if (!*t)
					goto number;
			}
			if (y)
			{
				o = x;
				x = w;
				w = o;
			}
			o = 0;
			if (m)
				w *= m;
			if (x)
				op += snprintf(op, ep-op, "%*.*s", w, x, s);
			else if (w)
				op += snprintf(op, ep-op, "%*s", w, s);
			else
				op += snprintf(op, ep-op, "%s", s);
			continue;
		unumber:
			u = 1;
			goto numbers;
		number:
			u = 0;
		numbers:
			if (q)
			{
				if (n < 0 || n >= q)
					goto empty;
				s = tab[n];
				goto string;
			}
			if (y)
			{
				o = x;
				x = w;
				w = o;
			}
			if (m)
				w *= m;
			o = 0;
			if (u)
			{
				if (x)
					op += snprintf(op, ep-op, "%*.*" LL "u", w, x, n);
				else if (w)
					op += snprintf(op, ep-op, z ? "%0*" LL "u" : "%*" LL "u", w, n);
				else
					op += snprintf(op, ep-op, "%" LL "u", n);
			}
			else if (x)
				op += snprintf(op, ep-op, "%*.*" LL "d", w, x, n);
			else if (w)
				op += snprintf(op, ep-op, z ? "%0*" LL "d" : "%*" LL "d", w, n);
			else
				op += snprintf(op, ep-op, "%" LL "d", n);
			continue;
		}
		if (status == EVAL)
		{
			*op = 0;
			return buf;
		}
		if (op > buf)
		{
			OUT('\n');
			if (cp > col)
			{
				*col = buf;
				n = cp - col;
				if (!cw)
					cw = 80 / (n + 1);
				for (i = 0; i < n; i++)
					stk[i] = col[i+1];
				stk[i] = op;
				for (;;)
				{
					t = tmp;
					for (i = j = 0; i <= n; i++)
					{
						s = col[i];
						r = stk[i];
						f = t + cw;
						if (s < r)
						{
							for (j = 1; s < r && (*t = *s++) != '\n'; t++);
							col[i] = s;
						}
						while (t < f)
							*t++ = ' ';
					}
					if (!j)
						break;
					while (t > tmp && *(t-1) == ' ')
						t--;
					*t++ = '\n';
					fwrite(tmp, t-tmp, 1, fp);
				}
			}
			else
				fwrite(buf, 1, op-buf, fp);
			fflush(fp);
		}
	}
	return 0;
}

/*
 * optional final format, pause and exit
 */

static void
fini(int code)
{
	register int	i;

	if (FORMAT('f'))
	{
		for (i = 0; i < 'Z'-'A'+1; i++)
			state.total.updated[i] = 1;
		state.stats = state.total;
		list(&data.empty, 'f', NOPUZZLE, 0);
	}
	if (state.sudz && sudzclose(state.sudz) < 0)
	{
		fprintf(stderr, "%s: sudz flush failed\n", command);
		if (!code)
			code = 1;
	}
	if (state.linger)
		pause();
	exit(code);
}

/*
 * permute state.px, state.pr, state.pc
 */

static void
permute(void)
{
	register int		i;
	register int		j;
	register int		k;
	register int		m;
	register int		n;

	/* first shuffle state.pr[] and state.pc[] from their previous states */

	n = 10 + RAND(10);
	while (n--)
	{
		/* swap 2 rows */

		i = RAND(3);
		j = (i + RAND(2) + 1) % 3;
		m = 3 * RAND(3);
		k = state.pr[i+m];
		state.pr[i+m] = state.pr[j+m];
		state.pr[j+m] = k;

		/* swap 2 row bands */

		i = RAND(3);
		j = ((i + RAND(2) + 1) % 3) * 3;
		i *= 3;
		for (m = 0; m < 3; m++)
		{
			k = state.pr[i+m];
			state.pr[i+m] = state.pr[j+m];
			state.pr[j+m] = k;
		}

		/* swap 2 columns */

		i = RAND(3);
		j = (i + RAND(2) + 1) % 3;
		m = 3 * RAND(3);
		k = state.pc[i+m];
		state.pc[i+m] = state.pc[j+m];
		state.pc[j+m] = k;

		/* swap 2 column bands */

		i = RAND(3);
		j = ((i + RAND(2) + 1) % 3) * 3;
		i *= 3;
		for (m = 0; m < 3; m++)
		{
			k = state.pc[i+m];
			state.pc[i+m] = state.pc[j+m];
			state.pc[j+m] = k;
		}

		/* swap cell values */

		i = RAND(9);
		j = RAND(9);
		k = state.pv[i];
		state.pv[i] = state.pv[j];
		state.pv[j] = k;
	}
	state.px = RAND(2) ? 9 : 0;
}

/*
 * automorphic random shuffle
 */

static void
shuffle(Grid_t* grid, int solution)
{
	register int		i;
	register int		j;
	register int		k;
	Grid_t			mix;

	static unsigned short	val[1<<9];

	permute();
	mix = data.empty;
	for (i = k = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
			mix.cell[k++] = grid->cell[data.swap[state.px][state.pr[i]][state.pc[j]]];
	if (!state.novalue)
	{
		for (i = 0; i < 9; i++)
			val[data.bit[i]] = data.bit[state.pv[i]];
		for (k = 0; k < 81; k++)
			mix.cell[k] = val[mix.cell[k]];
	}
	if (solution)
		*grid = mix;
	else
	{
		*grid = data.empty;
		for (i = 0; i < 81; i++)
			if (SOLVED(&mix, i))
				MOVE(grid, i, mix.cell[i]);
	}
}

/*
 * determined() expression function
 */

static long
determined(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	register int	i;
	register int	x;
	register int	y;
	register int	z;
	char*		a;
	Grid_t		try;

	static struct Fs_s
	{
	uint64_t		serial;
	unsigned int		n;
	unsigned short		hit[81];
	Grid_t			grid;
	}			fs;

	if (fs.serial != state.list)
	{
		fs.serial = state.list;
		fs.n = 0;
		fs.grid = *grid;
		for (i = 0; i < 81; i++)
			if (CANDIDATE(&fs.grid, i))
			{
				for (z = y = MASK(&fs.grid, i); x = data.next[z]; z ^= x)
				{
					try = fs.grid;
					MOVE(&try, i, x);
					if (quick(&try, 0, 0) < 0)
						y ^= x;
				}
				if (data.count[y] == 1)
				{
					MOVE(&fs.grid, i, y);
					fs.hit[i] = y;
					fs.n++;
				}
			}
			else
				fs.hit[i] = CELL(&fs.grid, i);
	}
	if (buf)
	{
		state.call.grid = &fs.grid;
		state.call.hit = fs.hit;
	}
	if ((a = *argv) && *a)
	{
		fprintf(stderr, "%s: %s: %s: unknown argument\n", command, fp->name, a);
		fini(1);
	}
	return fs.n;
}

/*
 * exrate([sample]) expression function
 */

static long
exrate(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	unsigned long	r;
	int		i;
	int		n;
	Grid_t		g;
	Count_t		c;

	if (!memcmp(grid, &state.exrate.grid, sizeof(*grid)))
		return state.exrate.value;
	if ((n = (int)argn[0]) <= 0)
		n = 100;
	c = state.count;
	g = *grid;
	r = 0;
	for (i = 0; i < n; i++)
	{
		RECOUNT();
		shuffle(&g, 0);
		solve(&g, GUESS, RANDOMBEST|DEPTHFIRST|UNIQUE, &state.constraints.quick);
		r += APPLIED_COUNT('G');
	}
	state.count = c;
	state.exrate.grid = *grid;
	return state.exrate.value = r * 9 / n;
}

/*
 * implicit() expression function
 */

static long
implicit(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	register int	i;
	int		b;
	char*		a;

	static struct Fs_s
	{
	uint64_t		serial;
	unsigned int		n;
	unsigned short		hit[81];
	Grid_t			grid;
	}			fs;

	if (fs.serial != state.list)
	{
		fs.serial = state.list;
		fs.n = 0;
		fs.grid = *grid;
	        propagate(&fs.grid, &b, GUESS|LOCAL, 0, &state.constraints.solve);
		for (i = 0; i < 81; i++)
			if (SOLVED(grid, i))
			{
				UNDO(&fs.grid, i, CELL(&fs.grid, i));
				fs.hit[i] = 0;
			}
			else if (SOLVED(&fs.grid, i))
			{
				fs.n++;
				fs.hit[i] = CELL(&fs.grid, i);
			}
			else
				fs.hit[i] = 0;
	}
	if (buf)
	{
		state.call.grid = &fs.grid;
		state.call.hit = fs.hit;
	}
	if ((a = *argv) && *a)
	{
		fprintf(stderr, "%s: %s: %s: unknown argument\n", command, fp->name, a);
		fini(1);
	}
	return fs.n;
}

/*
 * max([index,]value) expression function
 */

static long
maximum(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	int		i;

	static long	m[10];

	if (!*(argv + 1))
		i = 0;
	else if ((i = (int)argn[0]) < 0 || i >= elementsof(m))
	{
		fprintf(stderr, "%s: %s: %d: index must be in range 0..9\n", command, fp->name, i);
		fini(1);
	}
	else
		argn++;
	if (grid == &data.empty)
		return m[i];
	if (m[i] >= argn[0])
		return 0;
	m[i] = argn[0];
	return 1;
}

/*
 * min(index,value) expression function
 */

static long
minimum(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	int		i;

	static long	m[10] = { 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff, 0x7fffffff };

	if (!*(argv + 1))
		i = 0;
	else if ((i = (int)argn[0]) < 0 || i >= elementsof(m))
	{
		fprintf(stderr, "%s: %s: %d: index must be in range 0..9\n", command, fp->name, i);
		fini(1);
	}
	else
		argn++;
	if (grid == &data.empty)
		return m[i];
	if (m[i] <= argn[0])
		return 0;
	m[i] = argn[0];
	return 1;
}

/*
 * mutable() expression function
 */

static long
mutable(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	register int	i;
	register int	j;
	register int	n;
	int		x;
	int		z;
	char*		a;
	char*		e;
	char*		s;
	char*		t;
	Item_t*		u;
	unsigned short*	state_hit;
	unsigned short	hit[81];
	unsigned char	q[10];
	Grid_t		g;
	Grid_t		h;

	static struct Fs_s
	{
	uint64_t		serial;
	unsigned int		n;
	Grid_t			grid;
	Dict_t			dict;
	unsigned short		hit[81];
	unsigned char		uniq[81];
	}			fs;

	if (fs.serial != state.list)
	{
		clear(&fs.dict, 0, 1);
		fs.serial = state.list;
		fs.grid = data.empty;
		fs.n = 0;
		state_hit = state.hit;
		state.hit = hit;
		for (i = 0; i < 81; i++)
		{
			fs.grid.cell[i] = fs.hit[i] = fs.uniq[i] = 0;
			if (SOLVED(grid, i))
			{
				g = *grid;
				UNDO(&g, i, g.cell[i]);
				for (z = MASK(&g, i) ^ grid->cell[i]; x = data.next[z]; z ^= x)
				{
					h = g;
					MOVE(&h, i, x);
					if (solve(&h, GUESS, DEPTHFIRST|UNIQUE|HIT, &state.constraints.quick) > 0)
					{
						if (!fs.grid.cell[i])
						{
							u = insert(&fs.dict, grid);
							if (u->count == 1)
								fs.uniq[i]++;
							if (state.test & 0x20000)
								printf("%s # %s %2lu %2lu\n", fmtgrid(grid, 0), fmtval(i, 'e', grid->cell[i]), u->index, u->count);
						}
						fs.grid.cell[i] |= x;
						h = g;
						MOVE(&h, i, x);
						u = insert(&fs.dict, &h);
						if (u->count == 1)
							fs.uniq[i]++;
						if (state.test & 0x20000)
							printf("%s # %s %2lu %2lu\n", fmtgrid(&h, 0), fmtval(i, 'e', x), u->index, u->count);
					}
				}
				if (fs.grid.cell[i])
				{
					fs.grid.cell[i] |= grid->cell[i];
					fs.n++;
				}
			}
		}
		state.hit = state_hit;
	}
	if (s = buf)
	{
		e = s + size - 1;
		state.call.grid = &fs.grid;
		state.call.hit = fs.hit;
	}
	if (fs.n)
	{
		if (!(a = *argv))
			/*ignore*/;
		else if (strneq(a, "max", 3))
		{
			n = 0;
			if (a[3] == 'u')
			{
				for (i = n = 0; i < 81; i++)
					if (fs.uniq[i] > n)
						n = fs.uniq[i];
			}
			else
			{
				for (i = n = 0; i < 81; i++)
					if (fs.grid.cell[i] && (z = data.count[fs.grid.cell[i]]) > n)
						n = z;
			}
			return n;
		}
		else if (strneq(a, "pos", 3))
		{
			if (!s)
				return fs.n;
			t = "";
			for (i = 0; i < 81; i++)
				if (fs.grid.cell[i])
				{
					s += snprintf(s, e - s, "%s%s", t, fmtpos(i));
					t = " ";
				}
		}
		else if (strneq(a, "sig", 3))
		{
			memset(q, 0, sizeof(q));
			n = 0;
			if (a[3] == 'u')
			{
				for (i = 0; i < 81; i++)
					if (fs.uniq[i])
					{
						q[fs.uniq[i]]++;
						n++;
					}
			}
			else
			{
				for (i = 0; i < 81; i++)
					if (fs.grid.cell[i])
					{
						z = data.count[fs.grid.cell[i]];
						q[z]++;
						n += z;
					}
			}
			if (s)
			{
				t = "";
				for (i = 9; i >= 0; i--)
					for (j = q[i]; j > 0; j--)
					{
						s += snprintf(s, e - s, "%s%d", t, i);
						t = " ";
					}
			}
			return n;
		}
		else if (strneq(a, "tot", 3))
		{
			if (a[3] == 'u')
				n = fs.dict.count;
			else
				for (i = n = 0; i < 81; i++)
					if (fs.grid.cell[i])
						n += data.count[fs.grid.cell[i]];
			return n;
		}
		else if (*a)
		{
			fprintf(stderr, "%s: %s: %s: unknown argument\n", command, fp->name, a);
			fini(1);
		}
	}
	return fs.n;
}

/*
 * required() expression function
 */

static long
required(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	register int	i;
	register int	j;
	unsigned long	n;
	char*		a;
	char*		e;
	char*		s;
	char*		t;
	unsigned long	q[81];
	Grid_t		g;

	static struct
	{
	unsigned long		n;
	uint64_t		serial;
	unsigned long		solutions[81];
	}			fs;

	if (fs.serial != state.list)
	{
		fs.serial = state.list;
		fs.n = 0;
		state.count.iterate = 0;
		state.worse = state.enough;
		for (i = 0; i < 81; i++)
			if (SOLVED(grid, i))
			{
				g = *grid;
				UNDO(&g, i, state.hit[i]);
				state.solutions = 0;
				solve(&g, GUESS, DEPTHFIRST|ENUMERATE|UNIQUE, &state.constraints.quick);
				if (fs.solutions[i] = state.solutions)
					fs.n++;
				if (state.verbose > 3)
					printf("required %s %u\n", fmtpos(i), state.solutions);
			}
			else
				fs.solutions[i] = 0;
		state.worse = 0;
	}
	if (fs.n)
	{
		if (s = buf)
		{
			e = s + size - 1;
			state.call.count = fs.solutions;
		}
		if (!(a = *argv))
			/*ignore*/;
		else if (strneq(a, "max", 3))
		{
			j = -1;
			for (i = 1; i < 81; i++)
				if (fs.solutions[i] && (j < 0 || fs.solutions[i] > fs.solutions[j]))
					j = i;
		maxmin:
			if (a[3] == 'p')
			{
				if (!s)
					return j;
				else
					s += snprintf(s, e - s, "%s", fmtpos(j));
			}
			else
			{
				if (!s)
					return fs.solutions[j];
				else
					s += snprintf(s, e - s, "%ld", fs.solutions[j]);
			}
		}
		else if (strneq(a, "min", 3))
		{
			j = -1;
			for (i = 1; i < 81; i++)
				if (fs.solutions[i] && (j < 0 || fs.solutions[i] < fs.solutions[j]))
					j = i;
			goto maxmin;
		}
		else if (strneq(a, "sig", 3))
		{
			if (s)
			{
				for (i = j = 0; i < 81; i++)
					if (fs.solutions[i])
						q[j++] = fs.solutions[i];
				qsort(q, j, sizeof(q[0]), ulrcmp);
				t = "";
				for (i = 0; i < j; i++)
				{
					s += snprintf(s, e - s, "%s%lu", t, q[i]);
					t = " ";
				}
			}
		}
		else if (strneq(a, "tot", 3))
		{
			n = 0;
			for (i = 0; i < 81; i++)
				n += fs.solutions[i];
			if (s)
				s += snprintf(s, e - s, "%lu", n);
			return n;
		}
		else if (*a)
		{
			fprintf(stderr, "%s: %s: %s: unknown argument\n", command, fp->name, a);
			fini(1);
		}
	}
	return fs.n;
}

/*
 * superfluous() expression function
 */

static long
superfluous(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	register int	i;
	char*		a;
	char*		e;
	char*		s;
	char*		t;
	Grid_t		g;

	static struct
	{
	uint64_t		serial;
	unsigned int		n;
	Grid_t			grid;
	unsigned short		hit[81];
	}			fs;

	if (fs.serial != state.list)
	{
		fs.serial = state.list;
		fs.grid = data.empty;
		fs.n = 0;
		state.count.iterate = 0;
		for (i = 0; i < 81; i++)
		{
			fs.grid.cell[i] = fs.hit[i] = 0;
			if (SOLVED(grid, i))
			{
				g = *grid;
				UNDO(&g, i, state.hit[i]);
				if (quick(&g, 0, 0) > 0)
				{
					fs.n++;
					fs.grid.cell[i] = fs.hit[i] = state.hit[i];
				}
			}
		}
	}
	if (fs.n)
	{
		if (s = buf)
		{
			e = s + size - 1;
			state.call.grid = &fs.grid;
			state.call.hit = fs.hit;
		}
		if (!(a = *argv))
			/*ignore*/;
		else if (strneq(a, "pos", 3))
		{
			if (!s)
				return fs.n;
			t = "";
			for (i = 0; i < 81; i++)
				if (fs.grid.cell[i])
				{
					s += snprintf(s, e - s, "%s%s", t, fmtpos(i));
					t = " ";
				}
		}
		else if (*a)
		{
			fprintf(stderr, "%s: %s: %s: unknown argument\n", command, fp->name, a);
			fini(1);
		}
	}
	return fs.n;
}

/*
 * symmetrize() expression function
 */

static long
symmetrize_expr(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	if (!state.sym)
		state.sym = symmetrize(grid, 0, 0, 0);
	return data.count[dihedral[state.sym->aut].elements] + 1;
}

/*
 * uniq() expression function
 */

static long
uniq(const Function_t* fp, char** argv, long* argn, register Grid_t* grid, char* buf, int size)
{
	char*		a;

	if (*(a = *argv))
	{
		FORMAT('z'+1) = a;
		a = list(grid, 'z'+1, EVAL, 0);
		*(a + 81) = 0;
		return enter(&state.uniq_format, 0, a)->count == 1;
	}
	return insert(&state.uniq_grid, grid)->count == 1;
}

/*
 * record a solution
 */

static void
solution(register Grid_t* grid, unsigned int flags)
{
	register int	i;
	Solved_f	solved;
	void*		solved_data;

	if (solved = state.solved)
	{
		state.solved = 0;
		solved_data = state.solved_data;
		state.solved_data = 0;
		i = state.count.level;
		state.count.level = 0;
		(*solved)(grid, solved_data);
		state.count.level = i;
		state.solved_data = solved_data;
		state.solved = solved;
	}
	else if (flags & RECORD)
	{
		state.multiple++;
		if (!state.stats.level || state.all)
		{
			state.stats = state.count;
			state.stats.time = usr() - state.count.time;
			state.valid++;
		}
		memcpy(state.hit, grid->cell, sizeof(grid->cell));
		if (flags & UNION)
			for (i = 0; i < 81; i++)
				state.sol[2].cell[i] |= grid->cell[i];
		else if (state.all)
			list(grid, 's', VERIFIED, 0);
	}
	else if (flags & HIT)
		memcpy(state.hit, grid->cell, sizeof(grid->cell));
}

static void
fold(register char* s)
{
	register char*	b;
	register char*	t;
	register int	n;

	n = 0;
	while (*s)
	{
		b = s;
		t = 0;
		for (;;)
		{
			if (!*s)
			{
				t = s;
				break;
			}
			if ((s - b + 1) >= state.width)
			{
				if (t)
					s = t + 1;
				else
					t = s;
				break;
			}
			if (*s++ == ' ')
				t = s - 1;
		}
		if (!n)
			n = 1;
		else
			printf("\n%s     ", label(-1));
		printf("%.*s", (int)(t - b), b);
	}
}

#define B		state.tracebuf
#define S		(&B[sizeof(B)-1]-s)
#define V		(&B[sizeof(B)-1]-s)

#define PREV(i,p)	(((i)?(i):(p))-1)
#define NEXT(i,p)	(((i)==((p)-1))?0:((i)+1))

#define ADJACENCY(a,u,v,i,t)	((a)[u][v]=((a)[u][v]&(~(3<<(2*(i)))))|((t)<<(2*(i))))
#define adjacency(a,u,v,i,t)	(ADJACENCY(a,u,v,i,t),ADJACENCY(a,v,u,i,t))
#define adjacent(a,u,v,i)	(((a)[u][v]>>(2*(i)))&3)

static char*
coincide(int a, int b, int p, Edge_t* chain, unsigned char* segment)
{
	int	c;
	int	d;
	int	y;
	int	ra;
	int	rb;
	int	ca;
	int	cb;
	int	rc;
	int	rd;
	int	cc;
	int	cd;

	ra = ROW(a);
	ca = COL(a);
	rb = ROW(b);
	cb = COL(b);
	y = 0;
	p += 3;
	for (;;)
	{
		if (y)
		{
			c = segment[y++];
			if ((d = segment[y]) >= 81)
			{
				y = 0;
				continue;
			}
		}
		else if (!--p)
			return "";
		else if (state.psycle.detail.min && (y = chain[p-1].segment))
			continue;
		else
		{
			c = chain[p-1].cell;
			d = chain[p].cell;
		}
		if (a != c || b != d)
		{
			rc = ROW(c);
			cc = COL(c);
			rd = ROW(d);
			cd = COL(d);
			if (((ra - rb) * (cc - cd)) != (rc - rd) * (ca - cb))
				continue;
			if (ra == rb)
			{
				if (rc != ra || rd != ra)
					continue;
				if (ca < cb)
				{
					if (cc < cd)
					{
						if (ca < cc && cc < cb || ca < cd && cd < cb || cc < ca && ca < cd)
							break;
					}
					else
					{
						if (ca < cd && cd < cb || ca < cc && cc < cb || cd < ca && ca < cc)
							break;
					}
				}
				else
				{
					if (cc < cd)
					{
						if (cb < cc && cc < ca || cb < cd && cd < ca || cc < cb && cb < cd)
							break;
					}
					else
					{
						if (cb < cd && cd < ca || cb < cc && cc < ca || cd < cb && cb < cc)
							break;
					}
				}
			}
			else if (ca == cb)
			{
				if (cc != ca || cd != ca)
					continue;
				if (ra < rb)
				{
					if (rc < rd)
					{
						if (ra < rc && rc < rb || ra < rd && rd < rb || rc < ra && ra < rd)
							break;
					}
					else
					{
						if (ra < rd && rd < rb || ra < rc && rc < rb || rd < ra && ra < rc)
							break;
					}
				}
				else
				{
					if (rc < rd)
					{
						if (rb < rc && rc < ra || rb < rd && rd < ra || rc < rb && rb < rd)
							break;
					}
					else
					{
						if (rb < rd && rd < ra || rb < rc && rc < ra || rd < rb && rb < rc)
							break;
					}
				}
			}
			else if (rc != rd || cc != cd)
			{
				if (ca < cb)
				{
					if (cc < cd)
					{
						if ((ra - rb) == (rc - rd))
							break;
					}
					else
					{
						if ((ra - rb) == (rd - rc))
							break;
					}
				}
				else
				{
					if (cc < cd)
					{
						if ((rb - ra) == (rc - rd))
							break;
					}
					else
					{
						if ((rb - ra) == (rd - rc))
							break;
					}
				}
			}
		}
	}
	return "C ";
}

static const unsigned char	collapse[8][8][8] =
{
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 1, 0, 1, 0, 0, 0, 0 },
		{ 0, 1, 0, 1, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 2, 2, 0, 0, 6, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 2, 2, 0, 0, 6, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 2, 2, 0, 0, 6, 0 },
		{ 0, 1, 0, 1, 0, 0, 0, 0 },
		{ 0, 1, 2, 3, 0, 0, 6, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 6, 6, 0, 0, 6, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 6, 6, 0, 0, 6, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	},
	{
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 },
		{ 0, 0, 0, 0, 0, 0, 0, 0 }
	}
};

static const unsigned char	active[4][4][4] =
{
	{
		{ 7, 7, 7, 7 },
		{ 7, 7, 7, 7 },
		{ 7, 7, 7, 7 },
		{ 7, 7, 7, 7 }
	},
	{
		{ 7, 7, 7, 7 },
		{ 7, 7, 4, 4 },
		{ 7, 0, 3, 3 },
		{ 7, 0, 3, 3 }
	},
	{
		{ 7, 7, 7, 7 },
		{ 7, 2, 1, 1 },
		{ 7, 5, 7, 5 },
		{ 7, 5, 1, 2 }
	},
	{
		{ 7, 7, 7, 7 },
		{ 7, 2, 1, 1 },
		{ 7, 5, 3, 0 },
		{ 7, 5, 4, 7 }
	}
};

#define CHUNK		(1024*32)

struct Chunk_s; typedef struct Chunk_s Chunk_t;

struct Chunk_s
{
	Chunk_t*	next;
	unsigned long	size;
	char		data[1];
};

/*
 * chunk alloc
 * chunk(0) resets the region
 */

static void*
chunk(unsigned long n)
{
	char*			r;
	Chunk_t*		prev;
	unsigned long		m;

	static Chunk_t*		first;
	static Chunk_t*		current;
	static char*		data;
	static char*		last;

	if (!n)
	{
		if (current = first)
			last = (data = current->data) + current->size;
		return 0;
	}
	n = (n + 7) & ~7;
	if (current)
		for (;;)
		{
			if ((last - data) >= n)
			{
				r = data;
				data += n;
				return r;
			}
			prev = current;
			if (!(current = current->next))
				break;
			last = (data = current->data) + current->size;
		}
	if (((m = CHUNK) - sizeof(Chunk_t) + 1) < n)
		m = n + sizeof(Chunk_t) - 1;
	if (!(current = (Chunk_t*)malloc(m)))
	{
	  fprintf(stderr, "%s: out of space [talloc]\n", command);
	  fini(2);
	}
	if (!first)
	  first = current;
	else
	  prev->next = current;
	current->size = m - sizeof(Chunk_t) + 1;
	last = (data = current->data) + current->size;
	r = data;
	data += n;
	return r;
}

/*
 * connect vertex u and v with edge <index,type,orientation,segment>
 */

static int
connect(Vertex_t* vertex, unsigned int adj[81][81], int u, int v, int index, int type, int orientation, int segment)
{
	register Edge_t*	e;

	for (e = vertex[u].edge[index]; e; e = e->next)
		if (e->cell == v)
		{
			switch ((type<<3)|e->type)
			{
			case 0:
			case 011:
			case 013:
			case 016:
			case 022:
			case 023:
			case 036:
			case 061:
			case 063:
				return 0;
			case 026:
			case 062:
			case 066:
				type = 2;
				break;
			case 012:
			case 021:
				type = 3;
				break;
			}
			e->type = type;
			e->orientation = orientation;
			e->segment = segment;
			for (e = vertex[v].edge[index]; e; e = e->next)
				if (e->cell == u)
				{
					e->type = type;
					e->orientation = orientation;
					e->segment = segment;
					break;
				}
			goto adjacent;
		}
	for (e = vertex[v].edge[index]; e; e = e->next)
		if (e->cell == u)
			return 0;
	e = ps.nextedge++;
	e->cell = v;
	e->type = type;
	e->orientation = orientation;
	e->segment = segment;
	e->next = vertex[u].edge[index];
	vertex[u].edge[index] = e;
	if (type <= 3)
	{
		e = ps.nextedge++;
		e->cell = u;
		e->type = type;
		e->orientation = orientation;
		e->segment = segment;
		e->next = vertex[v].edge[index];
		vertex[v].edge[index] = e;
 	}
 adjacent:
	if (adj)
		adjacency(adj, u, v, index, type);
	return 1;
}

/*
 * expand details
 */

static Edge_t*
details(Edge_t* chain, unsigned short link[9][81][81], unsigned char size[9][81][81], Trip_t trip[], register Trip_t* p, int index)
{
	int	ab;
	int	bc;
	int	cd;

	ab = link[index][p->a][p->b];
	link[index][p->a][p->b] = 0;
	bc = link[index][p->b][p->c];
	link[index][p->b][p->c] = 0;
	cd = link[index][p->c][p->d];
	link[index][p->c][p->d] = 0;
	if (ab)
		chain = details(chain, link, size, trip, &trip[ab], index);
	else
	{
		chain->cell = p->a;
		chain->type = p->ab;
		chain->next = chain + 1;
		chain++;
	}
	if (bc)
		chain = details(chain, link, size, trip, &trip[bc], index);
	else
	{
		chain->cell = p->b;
		chain->type = p->bc;
		chain->next = chain + 1;
		chain++;
	}
	if (cd)
		chain = details(chain, link, size, trip, &trip[cd], index);
	else
	{
		chain->cell = p->c;
		chain->type = p->cd;
		chain->next = chain + 1;
		chain++;
	}
	link[index][p->a][p->b] = ab;
	link[index][p->b][p->c] = bc;
	link[index][p->c][p->d] = cd;
	return chain;
}

/*
 * expand collapsed cycle for display
 */

static int
expand(char* buf, char* end, Edge_t* chain, unsigned short link[9][81][81], unsigned char size[9][81][81], Trip_t trip[], Trip_t* p, int index, int flags, int type)
{
	int			n;
	int			m;
	int			x;
	Edge_t*			q;
	Edge_t*			r;

	static Edge_t*		hit[81];

	static const char*	es[] = { "X", "-", "=", "", "X", "X", ">", "X" };

	if (TRACE(flags) > 4)
		for (n = 1; n <= ps.trips + 1; n++)
			printf("%s     %c-trip%4d  %c     %s%s%s%s%s%s%s\n", label(-1), type, n, name[index + 1], fmtpos(trip[n].a), es[trip[n].ab], fmtpos(trip[n].b), es[trip[n].bc], fmtpos(trip[n].c), es[trip[n].cd], fmtpos(trip[n].d));
	q = details(chain, link, size, trip, p, index);
	(q-1)->next = 0;
	q->cell = 81;
	do
	{
		x = 0;
		memset(hit, 0, sizeof(hit));
		for (q = chain; q; q = q->next)
			if (hit[q->cell])
			{
				hit[q->cell]->next = q->next;
				x = 1;
			}
			else
				hit[q->cell] = q;
	} while (x);
	m = n = 0;
	for (q = chain; q; q = q->next)
	{
		if (!(r = q->next))
			r = chain;
		m++;
		n += size[index][q->cell][r->cell];
	}
	if (m <= 3)
	{
		m = 3;
		n = size[index][p->a][p->b] + size[index][p->b][p->c] + size[index][p->c][p->d];
	}
	else if (buf)
	{
		for (q = chain; q; q = q->next)
			buf += snprintf(buf, end - buf, "%s%s", fmtpos(q->cell), es[q->type]);
		buf += snprintf(buf, end - buf, "  =>  ");
	}
	n += m;
	if (buf)
	{
		buf += snprintf(buf, end - buf, "%s%s%s%s%s%s", fmtpos(p->a), es[p->ab], fmtpos(p->b), es[p->bc], fmtpos(p->c), es[p->cd]);
		*buf = 0;
	}
	return n;
}

/*
 * generate cycle display ps
 */

#define PSYCLE(ps,cycle,type,v,j,chain,segment,init)	\
	do \
	{ \
		if (ps && cycle >= state.psycle.keep.min && cycle <= state.psycle.keep.max) \
		{ \
			init; \
			ps = psycle(ps, cycle, type, v, j, chain, segment); \
		} \
	} while (0)

static char*
psycle(char* ps, int cycle, int type, int v, int j, Edge_t* chain, unsigned char* segment)
{
	register int	a;
	register int	i;
	register int	p;

	static const char*	sw[] = { "3", "1", "2", "3" };

	for (p = 0; chain[p].cell < 81; p++);
	ps += snprintf(ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps, "%%%% %c-cycle %2d %c %d\n", type, cycle, name[j+1], p);
	for (i = 1; i < p; i++)
	{
		if ((a = chain[i].segment) && state.psycle.detail.min)
			while (segment[++a] < 81)
				ps += snprintf(ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps, "%d %d %d %d D %sedge\n", RC(segment[a]), RC(segment[a-1]), coincide(segment[a-1], segment[a], p, chain, segment));
		ps += snprintf(ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps, "%d %d %d %d %s %sedge\n", RC(chain[i-1].cell), RC(chain[i].cell), sw[chain[i].type], coincide(chain[i-1].cell, chain[i].cell, p, chain, segment));
	}
	if ((a = chain[0].segment) && state.psycle.detail.min)
		while (segment[++a] < 81)
			ps += snprintf(ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps, "%d %d %d %d D %sedge\n", RC(segment[a-1]), RC(segment[a]), coincide(segment[a-1], segment[a], p, chain, segment));
	ps += snprintf(ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps, "%d %d %d %d %s %sedge\n", RC(chain[p-1].cell), RC(chain[0].cell), sw[chain[0].type], coincide(chain[p-1].cell, chain[0].cell, p, chain, segment));
	ps += snprintf(ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps, "%d %d [ %c ] clear\n", RC(v), name[j+1]);
	return ps;
}

#define ASSIGN(o,g,c,v,z) \
	do \
	{ \
		ps.moves.move->order = o; \
		ps.moves.move->op = '='; \
		ps.moves.move->cell = c; \
		ps.moves.move->size = z; \
		ps.moves.move->mask = v; \
		ps.moves.move->group = (unsigned short)state.count.iterate; \
		ps.moves.move->part = ps.part; \
		if (ps.moves.move->assign = (!ps.batch || ps.batch > 0 && !((o)->options->flags & BATCH)) && data.count[(g)->cell[c] &= v] == 1) \
			MOVE(g, c, (g)->cell[c]); \
		ps.moves.move++; \
	} while (0)

#define ELIMINATE(o,g,c,v,z) \
	do \
	{ \
		ps.moves.move->order = o; \
		ps.moves.move->op = '^'; \
		ps.moves.move->cell = c; \
		ps.moves.move->size = z; \
		ps.moves.move->mask = ~v; \
		ps.moves.move->group = (unsigned short)state.count.iterate; \
		ps.moves.move->part = ps.part; \
		if (ps.moves.move->assign = (!ps.batch || ps.batch > 0 && !((o)->options->flags & BATCH)) && data.count[(g)->cell[c] &= ~v] == 1) \
			MOVE(g, c, (g)->cell[c]); \
		ps.moves.move++; \
	} while (0)

#define START() (ps.part = 0, DROP(ps.moves.trie))
#define PART()	((ps.moves.part == ps.moves.move) ? 0 : ((ps.moves.part = ps.moves.move), ++ps.part))
#define DROP(m)	(ps.moves.move = ps.moves.part = m)

/*
 * forced values (naked singles)
 * return value test special-cased for this constraint only
 */

static int
constraint_F(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int	i;
	register int	n;

	if (constraints->force)
	  n = ps.moves.move - ps.moves.trie;
	else
	  for (i = n = 0; i < ps.force; i++)
	    if (CANDIDATE(grid, ps.forced[i]))
	    {
	      ASSIGN(order, grid, ps.forced[i], MASK(grid, ps.forced[i]), 0);
	      PART();
	      n++;
	    }
	if (n && state.count.level == 1)
	{
	  PROGRESS('D', n);
	  if (!(state.count.constraint & ~(CONSTRAINT_F|CONSTRAINT_N)))
	  {
	    WEIGHT('D', 1, 1);
	    WEIGHT('D', 2, n);
	  }
	}
	return n;
}

/*
 * singletons by count (hidden singles)
 */

static int
constraint_N(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int	i;
	register int	j;
	register int	p;
	register int	x;
	register int	z;
	Move_t*		move;

	move = ps.moves.move;
	for (p = 0; p < 27; p++)
	{
	  memset(ps.sum, 82, 9);
	  for (j = 0; j < 9; j++)
	  {
	    i = PATH(p, j);
	    if (CANDIDATE(grid, i))
	      for (z = MASK(grid, i); x = data.next[z]; z ^= x)
	        ps.sum[data.ordinal[x]] = ps.sum[data.ordinal[x]] == 82 ? i : 81;
	  }
	  for (j = 0; j < 9; j++)
	    if ((i = ps.sum[j]) < 81 && (x = MASK(grid, i) & data.bit[j]))
	    {
	      ASSIGN(order, grid, i, x, 0);
	      PART();
	    }
	}
	if (state.count.level == 1 && (i = ps.moves.move - ps.moves.trie))
	{
	  PROGRESS('D', i);
	  if (!(state.count.constraint & ~(CONSTRAINT_F|CONSTRAINT_N)))
	  {
	    WEIGHT('D', 1, 1);
	    WEIGHT('D', 2, i);
	  }
	}
	return move != ps.moves.move;
}

/*
 * box claim
 *	size==2	box-line
 *	size==3	line-box
 * claims involving 1 cell caught by FN
 */

static int
constraint_B(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register const unsigned short*	m;
	int				b;
	int				c;
	int				i;
	int				j;
	int				k;
	int				n;
	int				o;
	int				p;
	int				w;
	int				x;
	Move_t*				move;

	move = ps.moves.move;
	POSITIONS(grid);
	switch (size)
	{
	case 2:
	  o = 2;
	  n = 2;
	  k = 0x100 << 2;
	  break;
	case 3:
	  o = 1;
	  n = 0;
	  k = 0x100 << 1;
	  break;
	default:
	  o = 2;
	  n = 0;
	  k = 0x100 << 2;
	  break;
	}
	m = ((flags & ASSUME) || (order->before & (CONSTRAINT_F|CONSTRAINT_N)) == (CONSTRAINT_F|CONSTRAINT_N)) ? claim : claim_FN;
	for (; o >= n; o--, k >>= 1)
	  for (b = 0; b < 9; b++)
	    for (j = 0; j < 9; j++)
	      if ((x = m[state.pos[o][b][j]]) & k)
	        while (w = x & 7)
	        {
		  x = (o == 2) ? 0 : ((x >> 3) & 7);
	          p = top[o][--w][b];
	          w = (o < 2 || w < 3) ? (b % 3) : ((b / 3) + 3);
	          for (i = 0; i < 6; i++)
	          {
	            c = p + stake[o][w][i];
	            if (CANDIDATE(grid, c) && (MASK(grid, c) & data.bit[j]))
	              ELIMINATE(order, grid, c, data.bit[j], (o != 2) + 2);
	          }
		  if (PART())
		  {
	            INSTANCE(order, o != 2, 1);
	            if (TRACE(flags) > 1)
	            {
	              printf("%s     box-line %c %c/%d    ", label(-1), name[j + 1], type[o], size);
	              for (i = 0; i < 6; i++)
		      {
	                c = p + stake[o][w][i];
			printf("%s", fmtpos(c));
		      }
	              printf("\n");
	            }
		    if (flags & STEP)
		    {
		      o = x = 0;
		      b = j = 81;
		    }
		  }
	        }
	return move != ps.moves.move;
}

/*
 * naked tuples 2<=size<=4
 */

static int
constraint_T(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		p;
	register int		w;
	register int		x;
	register int		z;
	int			a;
	int			b;
	int			c;
	int			o;
	int			q;
	int			v;
	Move_t*			move;

	move = ps.moves.move;
	POSITIONS(grid);
	SERIAL(TH, memcpy(ps.pos, state.pos, sizeof(state.pos)));
	for (o = p = 0; o < 3; o++)
	  for (b = 0; b < 9; b++, p++)
	  {
	    a = 0;
	    for (j = 0; j < 9; j++)
	      if (data.count[ps.pos[o][b][j]] < 2)
	        a |= data.bit[j];
	    for (j = 0; j < 10 - size; j++)
	      if (!(data.bit[j] & a))
	      {
	        ps.chain[0].cell = j;
	        v = 1;
	        ps.tuple[1] = ps.join[1] = ps.pos[o][b][j];
	        q = data.bit[j];
	        k = j;
	        for (;;)
	        {
	          if ((9 - ++k) < (size - v))
	          {
	            if (--v <= 0)
	              break;
	            k = ps.chain[v].cell;
	            q ^= data.bit[k];
	            continue;
	          }
	          if (data.bit[k] & a)
	            continue;
	          if (size == 2 && data.count[ps.join[v] & ps.pos[o][b][k]] < 2)
	            continue;
	          q |= data.bit[k];
	          ps.chain[v++].cell = k;
	          ps.join[v] = ps.join[v-1] | ps.pos[o][b][k];
	          ps.tuple[v] = ps.tuple[v-1];
	          for (c = 0; c < v; c++)
	            ps.tuple[v] |= ps.pos[o][b][ps.chain[c].cell] & ps.pos[o][b][k];
	          if (v == size)
	          {
	            do
	            {
	              w = ps.tuple[v];
	              if (data.count[w] < size || data.count[ps.join[v]] < size)
	                break;
	              if (data.count[w] > size || data.count[ps.join[v]] > size)
	              {
	                for (i = 0; i < 9; i++)
	                  if (!(data.bit[i] & q))
	                    w &= ~ps.pos[o][b][i];
	                if (data.count[w] != size)
	                  break;
	              }
	              for (i = 0; i < 9; i++)
	                if ((data.bit[i] & q) && (z = ps.pos[o][b][i] & ~w))
	                {
			  if (!(flags & BATCH))
	                    ps.pos[o][b][i] &= w;
	                  while (x = data.next[z])
	                  {
	                    z ^= x;
	                    c = PATH(p, data.ordinal[x]);
	                    if (CANDIDATE(grid, c) && (MASK(grid, c) & q))
                              ELIMINATE(order, grid, c, q, size);
	                  }
	                }
	              if (PART())
	              {
	                INSTANCE(order, size - 2, 1);
	                if (TRACE(flags) > 1)
	                {
	                  printf("%s     naked  %c/%d %s%*s", label(-1), type[o], size, fmtset(q), 5 - size, "");
	                  for (i = 0; i < 9; i++)
			    if (data.bit[i] & w)
			      printf("%s", fmtpos(PATH(p, i)));
	                  printf("\n");
	                }
	                if (flags & STEP)
	                {
	                  o = b = j = 81;
	                  v = 1;
	                }
	              }
	            } while (0);
	            v--;
	            k = ps.chain[v].cell;
	            q ^= data.bit[k];
	          }
	        }
	      }
	  }
	return move != ps.moves.move;
}

/*
 * hidden tuples 2<=size<=4
 */

static int
constraint_H(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		p;
	register int		w;
	register int		x;
	register int		z;
	int			a;
	int			b;
	int			c;
	int			o;
	int			q;
	int			v;
	Move_t*			move;

	move = ps.moves.move;
	POSITIONS(grid);
	SERIAL(TH, memcpy(ps.pos, state.pos, sizeof(state.pos)));
	for (o = p = 0; o < 3; o++)
	  for (b = 0; b < 9; b++, p++)
	  {
	    a = 0;
	    for (j = 0; j < 9; j++)
	      if (data.count[ps.pos[o][b][j]] < 2)
	        a |= data.bit[j];
	    for (j = 0; j < 10 - size; j++)
	      if (!(data.bit[j] & a))
	      {
	        ps.chain[0].cell = j;
	        v = 1;
	        ps.tuple[1] = ps.join[1] = ps.pos[o][b][j];
	        q = data.bit[j];
	        k = j;
	        for (;;)
	        {
	          if ((9 - ++k) < (size - v))
	          {
	            if (--v <= 0)
	              break;
	            k = ps.chain[v].cell;
	            q ^= data.bit[k];
	            continue;
	          }
	          if (data.bit[k] & a)
	            continue;
	          if (size == 2 && data.count[ps.join[v] & ps.pos[o][b][k]] < 2)
	            continue;
	          q |= data.bit[k];
	          ps.chain[v++].cell = k;
	          ps.join[v] = ps.join[v - 1] | ps.pos[o][b][k];
	          ps.tuple[v] = ps.tuple[v - 1];
	          for (c = 0; c < v; c++)
	            ps.tuple[v] |= ps.pos[o][b][ps.chain[c].cell] & ps.pos[o][b][k];
	          if (v == size)
	          {
	            do
	            {
	              w = ps.tuple[v];
	              if (data.count[w] < size || data.count[ps.join[v]] < size)
	                break;
	              if (data.count[w] > size || data.count[ps.join[v]] > size)
	              {
	                for (i = 0; i < 9; i++)
	                  if (!(data.bit[i] & q))
	                    w &= ~ps.pos[o][b][i];
	                if (data.count[w] != size)
	                  break;
	              }
	              for (i = 0; i < 9; i++)
	                if (!(data.bit[i] & q) && (z = ps.pos[o][b][i] & w))
	                {
			  if (!(flags & BATCH))
	                    ps.pos[o][b][i] &= ~w;
	                  while (x = data.next[z])
	                  {
	                    z ^= x;
	                    c = PATH(p, data.ordinal[x]);
	                    if (CANDIDATE(grid, c) && (MASK(grid, c) & ~q))
                              ASSIGN(order, grid, c, q, size);
	                  }
	                }
	              if (PART())
	              {
	                INSTANCE(order, size - 2, 1);
	                if (TRACE(flags) > 1)
	                {
	                  printf("%s     hidden %c/%d %s%*s", label(-1), type[o], size, fmtset(q), 5 - size, "");
	                  for (i = 0; i < 9; i++)
			    if (data.bit[i] & w)
			      printf("%s", fmtpos(PATH(p, i)));
	                  printf("\n");
	                }
	                if (flags & STEP)
	                {
	                  o = b = j = 81;
	                  v = 1;
	                }
	              }
	            } while (0);
	            v--;
	            k = ps.chain[v].cell;
	            q ^= data.bit[k];
	          }
	        }
	      }
	  }
	return move != ps.moves.move;
}

/*
 * row/col claim
 *	size==2	xwing
 *	size==3	swordfish
 *	size==4 jellyfish
 */

static int
constraint_W(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		j;
	register int		k;
	register int		w;
	register int		x;
	register int		y;
	register int		z;
	int			a;
	int			b;
	int			c;
	int			d;
	int			l;
	int			o;
	int			q;
	int			r;
	int			u;
	int			v;
	Move_t*			m;
	Move_t*			move;

	move = ps.moves.move;
	POSITIONS(grid);
	if (ps.ps)
	  ps.easy = *grid;
	for (j = 0; (l = j) < 9; j++)
	{
	  r = data.bit[j];
	  for (o = 0; o < 2; o++)
	  {
	    /* collect {2..size} tuples for candidate j */

	    for (b = q = 0; b < 9; b++)
	      if ((k = data.count[z = state.pos[o][b][j]]) >= 2 && k <= size)
	      {
	        ps.vertex[q].p = data.bit[b];
	        ps.vertex[q].z = z;
	        q++;
	      }
	    if (q >= size)
	    {
	      v = 1 << q;
	      while (--v)
	        if (data.count[v] == size)
	        {
	          w = y = 0;
	          for (z = v; x = data.next[z]; z ^= x)
	          {
	            w |= ps.vertex[data.ordinal[x]].z;
	            y |= ps.vertex[data.ordinal[x]].p;
	          }
	          if (data.count[w] == size)
	          {
		    m = ps.moves.move;
	            d = w;
	            for (b = (!o) * 9; u = data.next[w]; w ^= u)
	            {
	              a = b + data.ordinal[u];
	              for (z = (~y) & 0x1ff; x = data.next[z]; z ^= x)
	              {
	                c = data.path[a][data.ordinal[x]];
	                if (CANDIDATE(grid, c) && (MASK(grid, c) & r))
	                  ELIMINATE(order, grid, c, r, size);
	              }
	            }
	            if (PART())
	            {
	              ps.cycle++;
		      if (BITTST(&state.drop.cycle, ps.cycle))
		      {
		        DROP(m);
			continue;
		      }
	              INSTANCE(order, size - 2, 1);
	              if (TRACE(flags) > 1)
	              {
	                printf("%s     x-wing %3d %c %c/%d ", label(-1), ps.cycle, name[l + 1], type[o], size);
	                for (z = y, a = ' '; x = data.next[z]; z ^= x, a = '/')
	                {
	                  putchar(a);
	                  w = d;
	                  for (b = (!o) * 9; u = data.next[w]; w ^= u)
	                  {
	                    c = data.path[b + data.ordinal[u]][data.ordinal[x]];
	                    printf("%s", fmtpos(c));
	                  }
	                }
	                printf("\n");
	              }
	              if (ps.ps && ps.cycle >= state.psycle.keep.min && ps.cycle <= state.psycle.keep.max)
	              {
	                ps.ps += snprintf(ps.ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps.ps, "%%%% x-wing %2d %c %d\n", ps.cycle, name[l + 1], size);
	                for (a = data.next[z = y]; z && (x = data.next[z]); z ^= x);
	                a = data.ordinal[a];
	                z = data.ordinal[x];
	                w = d;
	                for (b = (!o) * 9; u = data.next[w]; w ^= u)
	                  ps.ps += snprintf(ps.ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps.ps, "%d %d %d %d 1 edge\n", RC(data.path[b + data.ordinal[u]][a]), RC(data.path[b + data.ordinal[u]][z]));
	                for (a = data.next[z = d]; z && (x = data.next[z]); z ^= x);
	                a = data.ordinal[a];
	                z = data.ordinal[x];
	                w = y;
	                for (b = o * 9; u = data.next[w]; w ^= u)
	                  ps.ps += snprintf(ps.ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps.ps, "%d %d %d %d S edge\n", RC(data.path[b + data.ordinal[u]][a]), RC(data.path[b + data.ordinal[u]][z]));
	                for (; m < ps.moves.move; m++)
			  if (m->op == '^')
	                    ps.ps += snprintf(ps.ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps.ps, "%d %d [ %s ] clear\n", RC(m->cell), fmtbits(~m->mask, 0));
	              }
	              if (flags & STEP)
	              {
	                j = 81;
	              	o = 2;
	              	break;
		      }
	            }
	          }
	        }
	    }
	  }
	}
	return move != ps.moves.move;
}

/*
 * apply the XY ternary edge operator until closure
 * and determine (one of) the shortest cycles if optimizing
 */

static void
ternary(Order_t* order, register Grid_t* grid, unsigned int flags, int type, int closure)
{
	register int		i;
	register int		j;
	register int		k;
	int			c;
	int			l;
	int			m;
	int			q;
	int			v;
	int			w;
	int			bestcell;
	Edge_t*			ex;
	Edge_t*			ey;
	Edge_t*			ez;

	if (closure)
	{
	  l = 0;
	  do
	  {
	    l++;
	    q = 0;
	    for (j = 0; j < 9; j++)
	      for (i = 0; i < 81; i++)
	        for (ex = ps.vertex[i].edge[j]; ex; ex = ex->next)
	          if (ex->cell != i)
	            for (ey = ps.vertex[ex->cell].edge[j]; ey; ey = ey->next)
	              if (ey->cell != ex->cell && ey->cell != i)
	                for (ez = ps.vertex[ey->cell].edge[j]; ez; ez = ez->next)
	                  if (ez->cell != ey->cell && ez->cell != ex->cell && !adjacent(ps.adj, i, ez->cell, j))
			  {
			    if (ez->cell != i)
	                    {
			      if (c = collapse[ex->type][ey->type][ez->type])
			      {
				if (!(state.test & 0x00400) && c == 6)
				  continue;
	                        q++;
	                        adjacency(ps.adj, i, ez->cell, j, c);
	                        if (c == 3)
	                        {
	                          ps.strong[i][ez->cell] |= data.bit[j];
	                          ps.strong[ez->cell][i] |= data.bit[j];
	                        }
	                        connect(ps.vertex, 0, i, ez->cell, j, c, 0, 0);
	                        if (TRACE(flags) > 1 || (flags & OPTIMAL))
	                        {
	                          ps.link[j][i][ez->cell] = ++ps.trips;
	                          ps.trip[ps.trips].a = i;
	                          ps.trip[ps.trips].b = ex->cell;
	                          ps.trip[ps.trips].c = ey->cell;
	                          ps.trip[ps.trips].d = ez->cell;
	                          ps.trip[ps.trips].ab = ex->type;
	                          ps.trip[ps.trips].bc = ey->type;
	                          ps.trip[ps.trips].cd = ez->type;
	                          ps.link[j][ez->cell][i] = ++ps.trips;
	                          ps.trip[ps.trips].a = ez->cell;
	                          ps.trip[ps.trips].b = ey->cell;
	                          ps.trip[ps.trips].c = ex->cell;
	                          ps.trip[ps.trips].d = i;
	                          ps.trip[ps.trips].ab = ez->type;
	                          ps.trip[ps.trips].bc = ey->type;
	                          ps.trip[ps.trips].cd = ex->type;
	                        }
			      }
			    }
	                    else if (c = collapse[ex->type&3][ey->type&3][ez->type&3])
	                    {
	                      q++;
	                      adjacency(ps.adj, i, ez->cell, j, c);
			      if ((c = active[ex->type&3][ey->type&3][ez->type&3]) < 7)
			      {
	                        switch (c >> 1)
	                        {
	                        case 0:
	                          v = ez->cell;
	                          break;
	                        case 1:
	                          v = ey->cell;
	                          break;
	                        case 2:
	                          v = ex->cell;
	                          break;
	                        case 3:
	                          v = i;
	                          break;
	                        }
	                        if ((c & 1) ? grid->cell[v] == data.bit[j] : !(grid->cell[v] & data.bit[j]))
	                          continue;
	                        if (flags & OPTIMAL)
	                        {
	                          ps.trip[ps.trips + 1].a = i;
	                          ps.trip[ps.trips + 1].b = ex->cell;
	                          ps.trip[ps.trips + 1].c = ey->cell;
	                          ps.trip[ps.trips + 1].d = ez->cell;
	                          ps.trip[ps.trips + 1].ab = ex->type;
	                          ps.trip[ps.trips + 1].bc = ey->type;
	                          ps.trip[ps.trips + 1].cd = ez->type;
	                          m = expand(ps.optimal.buf[ps.optimal.test], &ps.optimal.buf[ps.optimal.test][sizeof(ps.optimal.buf[0]) - 1], ps.chain, ps.link, ps.size, ps.trip, &ps.trip[ps.trips + 1], j, flags, type);
			          ACME(order->method->id, 0, m);
	                          if ((k = m / CONSTRAINT_BIN) >= (CONSTRAINT_WEIGHTS - 1))
	                            k = CONSTRAINT_WEIGHTS - 2;
	                          INSTANCE(order, k + 1, 1);
	                          if (!ps.optimal.constrained || m < ps.optimal.length)
	                          {
	                            ps.try = *grid;
	                            if (c & 1)
	                              ps.try.cell[v] = data.bit[j];
	                            else
	                              ps.try.cell[v] &= ~data.bit[j];
	                            if (data.count[ps.try.cell[v]] == 1)
	                              MOVE(&ps.try, v, ps.try.cell[v]);
	                            if (((k = propagate(&ps.try, &bestcell, GUESS|LOCAL, 0, &state.constraints.quick) > 0) || !ps.optimal.constrained) && ((state.flags & MINAPPLY) && (w = candidates(&ps.try)) < ps.optimal.candidates || m < ps.optimal.length))
	                            {
	                              ps.optimal.constrained = k;
	                              ps.optimal.contradiction = c;
	                              ps.optimal.length = m;
	                              ps.optimal.candidates = w;
	                              ps.optimal.v = v;
	                              ps.optimal.j = j;
	                              ps.optimal.test = !ps.optimal.test;
	                              memcpy(ps.save.chain, ps.chain, (m + 1) * sizeof(ps.chain[0]));
	                            }
	                          }
	                        }
	                        else
	                        {
				  PART();
	                          if (c & 1)
	    	                    ASSIGN(order, grid, v, data.bit[j], 0 /*XXX*/);
	                          else
	    	                    ELIMINATE(order, grid, v, data.bit[j], 0 /*XXX*/);
	                          ps.cycle++;
	                          if (TRACE(flags) > 1)
	                          {
	                            ps.trip[ps.trips + 1].a = i;
	                            ps.trip[ps.trips + 1].b = ex->cell;
	                            ps.trip[ps.trips + 1].c = ey->cell;
	                            ps.trip[ps.trips + 1].d = ez->cell;
	                            ps.trip[ps.trips + 1].ab = ex->type;
	                            ps.trip[ps.trips + 1].bc = ey->type;
	                            ps.trip[ps.trips + 1].cd = ez->type;
	                            m = expand(ps.optimal.buf[ps.optimal.test], &ps.optimal.buf[ps.optimal.test][sizeof(ps.optimal.buf[0]) - 1], ps.chain, ps.link, ps.size, ps.trip, &ps.trip[ps.trips + 1], j, flags, type);
			            ACME(order->method->id, 0, m);
	                            if ((k = m / CONSTRAINT_BIN) >= (CONSTRAINT_WEIGHTS - 1))
	                              k = CONSTRAINT_WEIGHTS - 2;
	                            INSTANCE(order, k + 1, 1);
	                            printf("%s     %c-cycle %2d  %c %2d%c %s\n", label(-1), type, ps.cycle, name[j + 1], m, c + 'a', ps.optimal.buf[ps.optimal.test]);
	                          }
	                          PSYCLE(ps.ps, ps.cycle, type, v, j, ps.chain, ps.segment, expand(0, 0, ps.chain, ps.link, ps.size, ps.trip, &ps.trip[ps.trips + 1], j, flags, type));
				  if (flags & STEP)
				    return;
	                        }
			      }
	                    }
			  }
	  } while (q);
	}
	if (ps.optimal.length < 81)
	{
	  PART();
	  if (ps.optimal.contradiction & 1)
	    ASSIGN(order, grid, ps.optimal.v, data.bit[ps.optimal.j], 0 /*XXX*/);
	  else
	    ELIMINATE(order, grid, ps.optimal.v, data.bit[ps.optimal.j], 0 /*XXX*/);
	  ps.cycle++;
	  if (TRACE(flags) > 1)
	    printf("%s     %c-cycle %2d  %c %2d%c %s\n", label(-1), type, ps.cycle, name[ps.optimal.j + 1], ps.optimal.length, ps.optimal.contradiction + 'a', ps.optimal.buf[!ps.optimal.test]);
	  PSYCLE(ps.ps, ps.cycle, type, ps.optimal.v, ps.optimal.j, ps.save.chain, ps.segment, memcpy(ps.chain, ps.save.chain, (ps.optimal.length + 1) * sizeof(ps.chain[0])));
	}
}

/*
 * X cycles
 */

static int
constraint_X(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		p;
	register int		x;
	register int		y;
	register int		z;
	int			a;
	int			b;
	int			c;
	int			m;
	int			o;
	int			q;
	int			u;
	int			v;
	int			w;
	int			type;
	Move_t*			move;

	move = ps.moves.move;
	if (STALE(XY))
	{
	  POSITIONS(grid);
	  memset(ps.pair, 0, sizeof(ps.pair));
	  memset(ps.spin, 0, sizeof(ps.spin));
	  memset(ps.wpin, 0, sizeof(ps.wpin));
	  memset(ps.strong, 0, sizeof(ps.strong));
	  memset(ps.adj, 0, sizeof(ps.adj));
	  memset(ps.vertex, 0, sizeof(ps.vertex));
	  if (TRACE(flags) > 1 || (flags & (OPTIMAL | STEP)))
	  {
	    memset(ps.link, 0, sizeof(ps.link));
	    memset(ps.size, 0, sizeof(ps.size));
	  }
	  type = 'x';
	  ps.nextedge = ps.edge;
	  ps.pairs = 0;
	  ps.trips = 0;
	  if (ps.ps)
	    ps.easy = *grid;
	  ps.optimal.length = 81;
	  ps.optimal.candidates = 9 * 81;
	  ps.optimal.constrained = 0;
	  ps.optimal.test = 0;

	  /* enter the strong and 1-weak edges */

	  for (j = 0; j < 9; j++)
	    for (i = o = 0, q = data.bit[j]; o < 3; o++, i += 9)
	      for (b = 0; b < 9; b++)
	        if ((k = data.count[w = state.pos[o][b][j]]) == 2)
	        {
	          x = data.next[w];
	          u = data.path[i + b][data.ordinal[x]];
	          v = data.path[i + b][data.ordinal[w ^ x]];
	          connect(ps.vertex, ps.adj, u, v, j, 3, 0, 0);
	          ps.strong[u][v] |= q;
	          ps.strong[v][u] |= q;
	          ps.spin[u] |= q;
	          ps.spin[v] |= q;
	          if ((y = MASK(grid, u)) != MASK(grid, v) || data.count[y] > 2)
	          {
	            ps.pair[u].x |= q;
	            ps.pair[v].x |= q;
	            if (connect(ps.pair, 0, u, v, 0, 0, 0, 0))
	            {
	              for (k = 0;; k++)
	                if (k >= ps.pairs)
	                {
	                  if (ps.pairs >= elementsof(ps.pair))
	                  {
	                    fprintf(stderr, "panic: more than %d exact ps.pairs\n", elementsof(ps.pair));
	                    fini(2);
	                  }
	                  ps.pair[ps.pairs++].i = u;
	                  break;
	                }
	                else if (ps.pair[k].i == u)
	                  break;
	              for (k = 0;; k++)
	                if (k >= ps.pairs)
	                {
	                  if (ps.pairs >= elementsof(ps.pair))
	                  {
	                    fprintf(stderr, "panic: more than %d exact ps.pairs\n", elementsof(ps.pair));
	                    fini(2);
	                  }
	                  ps.pair[ps.pairs++].i = v;
	                  break;
	                }
	                else if (ps.pair[k].i == v)
	                  break;
	              if (TRACE(flags) > 5)
	                printf("%s     %c-pair   %c  2  3  %s%s\n", label(-1), type, name[j + 1], fmtpos(u), fmtpos(v));
	              if (ps.ps && state.psycle.pair.min >= 8 && (state.psycle.pair.set & data.bit[j]))
	                ps.ps += snprintf(ps.ps, &state.psycle.buf[sizeof(state.psycle.buf)] - ps.ps, "%d %d %d %d 3 ps.edge %%%% %c\n", RC(u), RC(v), name[j + 1]);
	            }
	          }
	        }
	        else if (k > 2)
	        {
	          p = 0;
	          while (x = data.next[w])
	          {
	            w ^= x;
	            ps.wpin[ps.hx[p++] = data.path[i + b][data.ordinal[x]]] |= q;
	          }
	          for (x = 0; x < p - 1; x++)
	            for (y = x + 1; y < p; y++)
	              connect(ps.vertex, ps.adj, ps.hx[x], ps.hx[y], j, 1, 0, 0);
	        }

	  /* add the 1-weak box hinges */

	  if (!(state.test & 0x00800))
	    for (j = 0; j < 9; j++)
	      for (b = 0, q = data.bit[j]; b < 9; b++)
	        if (k = hinge[state.pos[2][b][j]])
	          while (k)
	          {
	            u = k & 7;
	            k >>= 3;
	            v = k & 7;
	            k >>= 3;
	            x = top[2][u - 1][b];
	            u = u <= 3 ? (b % 3) : ((b / 3) + 3);
	            y = top[2][v - 1][b];
	            v = v <= 3 ? (b % 3) : ((b / 3) + 3);
	            p = a = 0;
	            for (w = 0; w < 6; w++)
	            {
	              c = x + stake[2][u][w];
	              if (ps.spin[c] & q)
	                ps.hx[p++] = -c;
	              else if (ps.wpin[c] & q)
	                ps.hx[p++] = c;
	              c = y + stake[2][v][w];
	              if (ps.spin[c] & q)
	                ps.hy[a++] = -c;
	              else if (ps.wpin[c] & q)
	                ps.hy[a++] = c;
	            }
	            if (p && a)
	            {
	              for (w = 0; w < p; w++)
	                if ((c = ps.hx[w]) < 0)
	                {
	                  c = -c;
	                  for (z = 0; z < a; z++)
	                  {
	                    if ((m = ps.hy[z]) < 0)
	                      m = -m;
	                    if (!adjacent(ps.adj, c, m, j))
	                    {
	                      connect(ps.vertex, ps.adj, c, m, j, 1, 0, 0);
	                      ps.size[j][c][m] = 1;
	                      ps.size[j][m][c] = 1;
	                      if (TRACE(flags) > 3)
	                        printf("%s     %c-hinge     %c  %d  %s-%s\n", label(-1), type, name[j + 1], b + 1, fmtpos(m), fmtpos(c));
	                    }
	                  }
	                }
	              for (w = 0; w < a; w++)
	                if ((c = ps.hy[w]) < 0)
	                {
	                  c = -c;
	                  for (z = 0; z < p; z++)
	                  {
	                    if ((m = ps.hx[z]) < 0)
	                      m = -m;
	                    if (!adjacent(ps.adj, c, m, j))
	                    {
	                      connect(ps.vertex, ps.adj, c, m, j, 1, 0, 0);
	                      ps.size[j][c][m] = 1;
	                      ps.size[j][m][c] = 1;
	                      if (TRACE(flags) > 3)
	                        printf("%s     %c-hinge     %c  %d  %s-%s\n", label(-1), type, name[j + 1], b + 1, fmtpos(m), fmtpos(c));
	                    }
	                  }
	                }
	            }
	          }
	  if (order->method->constraint & CONSTRAINT_X)
	    ternary(order, grid, flags, type, 1);
	}
	return move != ps.moves.move;
}

/*
 * { Y K } common -- not valid if grid has multiple solutions
 *
 * DFS would be the proper way to glean the Y edges
 * (done in an earlier version), but this is more efficient,
 * although at the expense of no segment info
 */

static int
bicycles(Order_t* order, register Grid_t* grid)
{
	int			a;
	int			b;
	int			i;
	int			x;
	int			bestcell;
	uint64_t		iterate;

	if (STALE(YK))
	{
	  iterate = state.count.iterate;
	  if (quick(grid, 0, 0) <= 0)
	  {
	    ps.knots = -1;
	    state.count.iterate = iterate;
	    return 0;
	  }
	  memset(ps.y.ab, 0, sizeof(ps.y.ab));
	  tuples(grid, 2, &x);
	  ps.knots = 0;
	  a = state.tuples.que[2].beg;
	  b = state.tuples.que[2].end;
	  for (; a < b; a++)
	  {
	    ps.y.ai = state.tuples.cv[a].c;
	    ps.y.av = (1<<state.tuples.cv[a].v);
	    ps.try = *grid;
	    if (data.count[x = CELL(&ps.try, ps.y.ai) ^= ps.y.av] == 1)
	      MOVE(&ps.try, ps.y.ai, x);
	    ps.y.moves = 0;
	    if (propagate(&ps.try, &bestcell, GUESS|LOCAL|Y_EDGE, 0, order->constraints ? order->constraints : &state.constraints.quick) < 0)
	    {
	      if (ps.knots < elementsof(ps.knot))
	      {
	        ps.knot[ps.knots].a = a;
	        ps.knot[ps.knots].c = bestcell < 0 ? 81 : bestcell;
	        ps.knot[ps.knots].z = state.iterations;
	      }
	      ps.knots++;
	    }
	    if (ps.y.moves)
	    {
	      ps.y.any = 1;
	      for (i = 0; i < ps.y.moves; i++)
	      {
	        ps.y.ab[ps.y.ai][ps.y.move[i].cell] |= ps.y.av;
		ps.y.z[ps.y.ai][ps.y.move[i].cell] = ps.y.move[i].size;
	      }
	    }
	  }
	  if (ps.knots > elementsof(ps.knot))
	  {
	    fprintf(stderr, "%d: too many knots -- %d max\n", ps.knots, elementsof(ps.knot));
	    ps.knots = elementsof(ps.knot);
	  }
	  state.count.iterate = iterate;
	}
	return ps.knots >= 0;
}

/*
 * Y cycles
 */

static int
constraint_Y(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		x;
	register int		z;
	int			type;
	Move_t*			move;

	move = ps.moves.move;
	type = 'y';
	i = constraint_X(order, grid, size, guess, flags, constraints);
	if (!bicycles(order, grid))
	  return i;
	if (ps.y.any)
	  for (i = 0; i < 80; i++)
	    for (j = i + 1; j < 81; j++)
	      if (z = ps.y.ab[i][j] & ps.y.ab[j][i])
	        while (x = data.next[z])
	        {
		  z ^= x;
		  if (connect(ps.vertex, ps.adj, i, j, k = data.ordinal[x], 2, 0, 0))
		  {
		    ps.size[k][i][j] = ps.size[k][j][i] = ps.y.z[i][j] - 1;
		    if (TRACE(flags) > 2)
	              printf("%s     %c-edge      %c %2d  %s=%s\n", label(-1), type, name[data.ident[x]], ps.y.z[i][j], fmtpos(i), fmtpos(j));
		  }
	        }
	      else if (!(state.test & 0x00200))
	      {
	        z = ps.y.ab[i][j];
	        while (x = data.next[z])
	        {
		  z ^= x;
		  if (connect(ps.vertex, ps.adj, i, j, k = data.ordinal[x], 6, 0, 0))
		  {
		    ps.size[k][i][j] = ps.y.z[i][j] - 1;
		    if (TRACE(flags) > 2)
	              printf("%s     %c-edge      %c %2d  %s>%s\n", label(-1), type, name[data.ident[x]], ps.y.z[i][j], fmtpos(i), fmtpos(j));
		  }
	        }
	      }
	if (order->method->constraint & CONSTRAINT_Y)
	  ternary(order, grid, flags, type, 1);
	return move != ps.moves.move;
}

/*
 * Y knots
 */

static int
constraint_K(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		x;
	register int		z;
	int			a;
	int			b;
	int			t;
	int			bestcell;
	int			type;
	Move_t*			move;

	if (!bicycles(order, grid))
	  return 0;
	move = ps.moves.move;
	type = 'y';
	ps.optimal.length = 81;
	ps.optimal.candidates = 9 * 81;
	ps.optimal.constrained = 0;
	constraints = order->constraints ? order->constraints : &state.constraints.quick;
	for (z = 0; z < ps.knots; z++)
	{
	  k = ps.knot[z].a;
	  i = state.tuples.cv[k].c;
	  x = (1<<state.tuples.cv[k].v);
	  if (CANDIDATE(grid, i) && (MASK(grid, i) & x))
	  {
	    a = ps.knot[z].z;
	    if (flags & OPTIMAL)
	    {
	      if (!ps.optimal.constrained || a < ps.optimal.length)
	      {
	        ps.try = *grid;
	        MOVE(&ps.try, i, x);
	        if (((b = propagate(&ps.try, &bestcell, GUESS|LOCAL, 0, constraints) > 0) || !ps.optimal.constrained) && ((t = candidates(&ps.try)) < ps.optimal.candidates && a == ps.optimal.length || a < ps.optimal.length))
	        {
	          ps.optimal.constrained = b;
	          ps.optimal.length = a;
	          ps.optimal.candidates = t;
	          ps.optimal.j = z;
		}
	      }
	      if (z == (ps.knots - 1))
	      {
	        z = ps.optimal.j - 1;
		ps.knots = ps.optimal.j + 1;
		flags &= ~OPTIMAL;
	      }
	    }
	    else
	    {
	      if ((t = a / CONSTRAINT_BIN) >= (CONSTRAINT_WEIGHTS - 1))
	        t = CONSTRAINT_WEIGHTS - 2;
	      ASSIGN(order, grid, i, x, t+3);
	      ACME(order->method->id, 0, a);
	      INSTANCE(order, t+1, 1);
	      ps.cycle++;
	      if (TRACE(flags) > 1)
	      {
		j = ps.knot[z].c;
	        printf("%s     %c-knot %3d  %c %2d%c %s#%s\n", label(-1), type, ps.cycle, name[data.ident[x]], a, ' ', fmtpos(i), j < 81 ? fmtpos(j) : "");
	      }
	      if (flags & STEP)
	        break;
	    }
	  }
	}
	return move != ps.moves.move;
}

/*
 * rookery overlay (aka templates)
 */

static int
constraint_O(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register Rookeries_t*	r;
	register int		i;
	register int		j;
	register int		k;
	register int		n;
	register int		p;
	register int		b;
	register int		v;
	register unsigned int	x;
	register unsigned int	y;
	register unsigned int	z;
	unsigned int		q;
	unsigned int		w;
	Move_t*			move;
	Move_t*			part;

	unsigned int		mask[3];
	unsigned int		hit[81];

	move = ps.moves.move;
	r = ROOKERIES();
	for (v = 0; v < 9; v++)
	{
	  b = data.bit[v];
	  memset(hit, 0, sizeof(hit));
	  mask[0] = mask[1] = mask[2] = 0;
	  for (p = n = 0; p < 9; p++)
	  {
	    k = data.band[p] - 1;
	    mask[k] <<= 9;
	    for (j = 0; j < 9; j++)
	    {
	      i = PATH(p, j);
	      if (CANDIDATE(grid, i))
	      {
	        if (MASK(grid, i) & b)
	        {
		  mask[k] |= data.bit[j];
		  hit[i] = 1;
		}
	      }
	      else if (grid->cell[i] & b)
	      {
	        mask[k] |= data.bit[j];
	        hit[i] = elementsof(r->rookery);
		n++;
	      }
	    }
	  }
	  if (n < 9)
	  {
	    n = 1;
	    for (w = (mask[0]>>18) & 0x1ff; q = data.next[w]; w ^= q)
	    {
	      i = r->next[j = data.ordinal[q]];
	      j = r->next[j + 1];
	      for (; i < j; i++)
	      {
	        if ((mask[0] & r->rookery[i][0]) == r->rookery[i][0] && (mask[1] & r->rookery[i][1]) == r->rookery[i][1] && (mask[2] & r->rookery[i][2]) == r->rookery[i][2])
	        {
	          n++;
	          p = 81;
	          for (k = 2; k >= 0; k--)
	          {
		    x = r->rookery[i][k];
	            do
	            {
	              p -= 9;
	              for (y = x & 0x1ff; z = data.next[y]; y ^= z)
	      	        hit[p + data.ordinal[z]]++;
	            } while (x >>= 9);
	          }
	        }
	      }
	    }
	    part = ps.moves.move;
	    for (i = 0; i < 81; i++)
	      if ((hit[i] == 1 || hit[i] == n) && CANDIDATE(grid, i) && (MASK(grid, i) & b))
	      {
	        if (hit[i] == 1)
                  ELIMINATE(order, grid, i, b, 0);
	        else
                  ASSIGN(order, grid, i, b, 0);
	      }
	    if (TRACE(flags) > (2 + (part == ps.moves.move)))
	    {
	      printf("%s     rookery  %c %2d", label(-1), name[v + 1], n - 1);
	      for (i = 0; i < 81; i++)
	      {
	        if (!(i % 9))
	          printf("\n%s              ", label(-1));
	        if (!hit[i])
	          k = '.';
	        else if (hit[i] >= elementsof(r->rookery))
	          k = 'x';
	        else if (hit[i] == 1)
	          k = '-';
	        else if (hit[i] == n)
	          k = '+';
	        else if (hit[i] > 10)
	          k = '*';
	        else
	          k = '0' + hit[i] - 1;
	        putchar(k);
	      }
	      putchar('\n');
	    }
	    if (PART())
	    {
	      if (TRACE(flags) == 2)
	        printf("%s     rookery  %c %d\n", label(-1), name[v + 1], n - 1);
	      if (flags & STEP)
	        break;
	    }
	  }
	}
	return move != ps.moves.move;
}

/*
 * constrained proposition net
 * think what you want but this is guessing
 * however it is the basis for a decent hardness measure
 */

#define SEEN_SOLUTION		1
#define SEEN_UNKNOWN		2
#define SEEN_ERROR		3

#define SEEN_BITS		2
#define SEEN_MASK		((1<<SEEN_BITS)-1)

#define MINGIRTH		2
#define MAXGIRTH		27

typedef uint32_t Seen_t;

typedef struct Proposition_s
{
	int			propositions;
	int			contradictions;
	int			solutions;
	int			iterations;
	int			girth;
	int			degree;
	int			flags;
	int			maxdegree;
	int			maxseen;
	Seen_t			seen[1][81];
} Proposition_t;

static int
propstep(register Proposition_t* prop, Order_t* order, register Grid_t* grid, Seen_t* seen, int w, int b, int e, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		u;
	register int		x;
	int			d;
	int			v;
	int			test;
	Move_t*			move;
	Grid_t			try;

	d = 0;
	move = ps.moves.move;
	for (;;)
	{
	  if (prop->degree < w)
	    prop->degree = w;
	  while (b < e)
	  {
	    if ((u = w) == 2 && prop->maxdegree == 1 && state.tuples.cv[b].c != state.tuples.cv[b].c)
	      u = -1;
	    else
	      for (j = 0; j < w; j++)
	        if (SOLVED(grid, state.tuples.cv[b+j].c))
	        {
		  if (grid->cell[state.tuples.cv[b+j].c] == (1<<state.tuples.cv[b+j].v))
		  {
	            u = -1;
		    break;
	          }
		  u--;
	        }
	        else if (!(MASK(grid, state.tuples.cv[b+j].c) & (1<<state.tuples.cv[b+j].v)))
	          u--;
	    if (u <= 0)
	    {
	      if (!u)
	        d = 1;
	      b += w;
	    }
	    else
	    {
	      for (j = b + w - 1; b <= j; b++)
	      {
		i = state.tuples.cv[b].c;
		v = state.tuples.cv[b].v;
		x = 1<<v;
		v *= SEEN_BITS;
		if (!SOLVED(grid, i) && (MASK(grid, i) & x))
		{
		  if (!(state.test & 0x00040) && !(prop->flags & NESTED) && u == 1)
		  {
		    ASSIGN(order, grid, i, x, 0);
		    PART();
		    b++;
		    break;
		  }
		  switch ((state.test & 0x00040) ? 0 : (seen[i] >> v) & SEEN_MASK)
		  {
		  case SEEN_SOLUTION:
		    u = -1;
		    break;
		  case SEEN_UNKNOWN:
		    break;
		  case SEEN_ERROR:
		    u--;
		    break;
		  default:
		    prop->propositions++;
	            try = *grid;
	            MOVE(&try, i, x);
	            if (TRACE(prop->flags) > 0)
	              printf("%s P   %s\n", label(-1), fmtval(i, 'g', x));
	            k = propagate(&try, &test, GUESS|BATCH, prop->flags, order->constraints);
		    prop->iterations += state.iterations;
		    if (prop->girth < state.iterations)
		      prop->girth = state.iterations;
	            if (k > 0)
		    {
		      if (!state.contradictions)
		      {
		        if (!prop->solutions++ && (prop->flags & RECORD))
		          memcpy(state.hit, try.cell, sizeof(try.cell));
		        ASSIGN(order, grid, i, x, 0);
		        PART();
		        b = j;
		      }
		      u = -1;
		      seen[i] |= SEEN_SOLUTION<<v;
		    }
		    else if (k < 0)
		    {
		      u--;
		      if (!(prop->flags & NESTED))
		      {
		        prop->contradictions++;
		        ELIMINATE(order, grid, i, x, 0);
		        PART();
		      }
		      seen[i] |= SEEN_ERROR<<v;
		    }
		    else if ((state.test & 0x00040) && !(prop->flags & NESTED) && u == 1)
		    {
		      ASSIGN(order, grid, i, x, 0);
		      PART();
		    }
		    else
		      seen[i] |= SEEN_UNKNOWN<<v;
		  }
		}
	      }
	      if (!u)
	        d = 1;
	    }
	  }
	  if (d)
	  {
	    ps.moves.move = move;
	    return -1;
	  }
	  if (move != ps.moves.move || (prop->flags & NESTED))
	    break;
	  if (++w >= prop->maxdegree)
	    break;
	  b = state.tuples.que[w].beg;
	  e = state.tuples.que[w].end;
	}
	return ps.moves.move - move;
}

static int
constraint_P(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int		i;
	register int		j;
	register int		k;
	register int		x;
	int			b;
	int			d;
	int			e;
	int			h;
	int			u;
	int			v;
	int			m;
	int			w;
	int			minsize;
	int			solutions;
	unsigned int		work;
	Move_t*			move;
	Count_t			oldcount;
	Grid_t			try;

	static Proposition_t*	prop;

	if (guess)
	  return 0;
	if (!prop)
	{
	  h = 256;
	  if (!(prop = newof(0, Proposition_t, 1, h * sizeof(prop->seen[0]))))
	  {
	    fprintf(stderr, "%s: out of space [propositions]\n", command);
	    fini(2);
	  }
	  prop->maxseen = h;
	}
	prop->propositions = prop->contradictions = prop->solutions = prop->iterations = prop->girth = prop->degree = 0;
	move = ps.moves.move;
	order->options->flags |= BATCH;
	order->options->flags &= ~STEP;
	prop->flags = flags|BATCH;
	prop->flags &= ~STEP;
	if (state.verbose < 3)
	  prop->flags &= ~VERBOSE;
	label(++state.count.level);
	if (!(prop->maxdegree = order->lim) && !(prop->maxdegree = state.degree))
	  prop->maxdegree = 9;
	else if (prop->maxdegree > 9)
	  prop->maxdegree = 9;
	w = tuples(grid, 0, 0);
	if (prop->maxdegree > w)
	  prop->maxdegree = w;
	minsize = MINGIRTH;
	if (!(order->constraints->iterations = size))
	{
	  size = MAXGIRTH;
	  if (!(flags & OPTIMAL))
	    minsize = MAXGIRTH;
	}
	else if (size < minsize)
	  size = minsize;
	oldcount = state.count;
	memset(prop->seen, 0, sizeof(prop->seen[0]));
	if (propstep(prop, order, grid, prop->seen[0], 2, state.tuples.que[2].beg, state.tuples.que[2].end, constraints) > 0)
	{
	  if (prop->girth > minsize && prop->girth < size)
	  {
	    size = prop->girth;
	    for (order->constraints->iterations = minsize; order->constraints->iterations <= size; order->constraints->iterations++)
	    {
	      ps.moves.move = move;
	      prop->propositions = prop->contradictions = prop->solutions = prop->iterations = prop->girth = prop->degree = 0;
	      state.count = oldcount;
	      memset(prop->seen, 0, sizeof(prop->seen[0]));
	      if (propstep(prop, order, grid, prop->seen[0], 2, state.tuples.que[2].beg, state.tuples.que[2].end, constraints) > 0)
	        break;
	    }
	  }
	}
	else if (order->var > 1)
	{
	  prop->flags |= NESTED;
	  if ((d = prop->maxdegree) == 1)
	    d = 2;
	  for (order->constraints->iterations = minsize; order->constraints->iterations <= size && move == ps.moves.move; order->constraints->iterations++)
	  {
	    state.count = oldcount;
	    prop->propositions = prop->contradictions = prop->solutions = prop->iterations = prop->girth = prop->degree = 0;
	    for (m = 2; move == ps.moves.move && m <= d; m++)
	    {
	      if ((h = state.tuples.que[m].end - state.tuples.que[m].beg + 1) > prop->maxseen)
	      {
		h = roundof(h, 64);
		if (!(prop = newof(prop, Proposition_t, 1, h * sizeof(prop->seen[0]))))
	        {
	          fprintf(stderr, "%s: out of space [propositions]\n", command);
	          fini(2);
	        }
		prop->maxseen = h;
	      }
	      memset(prop->seen, 0, h * sizeof(prop->seen[0]));
	      for (w = 2; w <= m; w++)
	      {
	        b = h = state.tuples.que[m].beg;
	        e = state.tuples.que[m].end;
	        while (b < e)
	        {
	          if ((u = m) == 2 && prop->maxdegree == 1 && state.tuples.cv[b].c != state.tuples.cv[b+1].c)
		  {
		    b += m;
		    continue;
		  }
	          for (j = b + m - 1; b <= j; b++)
	          {
		    i = state.tuples.cv[b].c;
		    v = state.tuples.cv[b].v;
		    x = 1<<v;
		    v *= SEEN_BITS;
		    if (b == j && u == 1)
		    {
		      ASSIGN(order, grid, i, x, 0);
		      PART();
		      prop->seen[b-h][i] |= SEEN_SOLUTION<<v;
		      b++;
		      break;
		    }
		    switch ((state.test & 0x00040) ? 0 : (prop->seen[b-h][i] >> v) & SEEN_MASK)
		    {
		    case SEEN_SOLUTION:
		      u = -1;
		      break;
		    case SEEN_ERROR:
		      u--;
		      break;
		    default:
	              try = *grid;
	              MOVE(&try, i, x);
	              if (TRACE(prop->flags) > 0)
	                printf("%s P   %s\n", label(-1), fmtval(i, 'g', x));
		      solutions = prop->solutions;
	              label(++state.count.level);
		      k = propstep(prop, order, &try, prop->seen[b-h], w, (w == m && (state.test & 0x00080)) ? (j+1) : state.tuples.que[w].beg, state.tuples.que[w].end, constraints);
		      label(--state.count.level);
		      if (k < 0)
		      {
		        u--;
		        prop->contradictions++;
		        ELIMINATE(order, grid, i, x, 0);
		        PART();
			prop->seen[b-h][i] |= SEEN_ERROR<<v;
		      }
		      else if (k == 0)
			prop->seen[b-h][i] |= SEEN_UNKNOWN<<v;
		      else if (prop->solutions != solutions)
		      {
		        ASSIGN(order, grid, i, x, 0);
		        PART();
			prop->seen[b-h][i] |= SEEN_SOLUTION<<v;
		        u = -1;
			b = j;
		      }
		      break;
		    }
		  }
	        }
		if (ps.moves.move != move)
		  break;
	      }
	      prop->degree = m;
	    }
	    if (prop->girth < order->constraints->iterations)
	      break;
	  }
	}
	if ((work = prop->iterations / 100 * prop->propositions / (prop->solutions + prop->contradictions + 1)) < 1000)
		work = 1000 * prop->iterations / prop->propositions / (prop->solutions + prop->contradictions + 1);
	WEIGHT('P', 7, work);
	label(--state.count.level);
	if (TRACE(flags) > 1 || (state.test & 0x00020))
	  printf("%s     propositions %6d  solutions %3d  contradictions %3d  iterations %6d  girth %3d  degree %3d  nesting %d (%u/%u)\n", TRACE(flags) > 1 ? label(-1) : "           ", prop->propositions, prop->solutions, prop->contradictions, prop->iterations, prop->girth, prop->degree, (prop->flags & NESTED) ? 2 : 1, work, WEIGHT('P', 7, 0));
	WEIGHT('P', 0, prop->propositions);
	WEIGHT('P', 1, prop->solutions);
	WEIGHT('P', 2, prop->contradictions);
	WEIGHT('P', 3, prop->iterations);
	ACME('P', 4, prop->girth);
	ACME('P', 5, prop->degree);
	ACME('P', 6, (prop->flags & NESTED) ? 2 : 1);
	return move != ps.moves.move;
}

typedef struct BRrcb_s
{
	unsigned char	d;
	unsigned char	r;
	unsigned char	c;
	unsigned char	b;
} BRdrcb_t;

typedef struct BRnet_s
{
	unsigned int	sz;
	BRdrcb_t*	node;
	unsigned char*	grl;
} BRnet_t;

typedef struct BRstate_s
{
	int		rtr[0x1000];
	int		rev[16];
} BRstate_t;

static int
brnet_grl_index(BRnet_t *br, int ii, int jj)
{
	if (ii >= jj)
	{
	  fprintf(stderr, "%s: panic: brnet_grl_index called with ii >= jj\n", command);
	  fini(1);
	}
	return jj + ii*br->sz - ((ii+1)*(ii+2))/2;
}

static int
brnet_grl(BRnet_t *br, BRstate_t* brstate, int ii, int jj)
{
	if (ii == jj)
	{
	  fprintf(stderr, "%s: panic: brnet_grl called with ii == jj\n", command);
	  fini(1);
	}
	if (ii < jj)
	  return br->grl[brnet_grl_index(br,ii,jj)];
	return brstate->rev[(int)br->grl[brnet_grl_index(br,jj,ii)]];
}

static char*
brnet_fmt_tri(BRnet_t* br, BRstate_t* brstate, int ii, int jj, int kk)
{
	static char		buf[80];

	static const char*	gs[16] =
	{
	  "##", "00", "01", "0*",
	  "10", "*0", "^^", "--",
	  "11", "~~", "*1", "<<",
	  "1*", ">>", "==", "**"
	};

	snprintf(buf, sizeof(buf), "%s %s %s %s %s %s %s",
	  fmtval(INDEX(br->node[ii].r, br->node[ii].c), 'e', VALUE(br->node[ii].d)),
	  gs[brnet_grl(br,brstate,ii,jj)],
	  fmtval(INDEX(br->node[jj].r, br->node[jj].c), 'e', VALUE(br->node[jj].d)),
	  gs[brnet_grl(br,brstate,jj,kk)],
	  fmtval(INDEX(br->node[kk].r, br->node[kk].c), 'e', VALUE(br->node[kk].d)),
	  gs[brnet_grl(br,brstate,kk,ii)],
	  fmtval(INDEX(br->node[ii].r, br->node[ii].c), 'e', VALUE(br->node[ii].d))
	);

	return buf;
}

static int
constraint_b(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	BRnet_t			brnet;
	int  			grl_in;
	int  			grl_out;
	int  			i;
	int  			j;
	int  			k;
	int  			n;
	int  			m;
	int			di;
	int			ri;
	int			ci;
	int			bi;
	int			dj;
	int			rj;
	int			cj;
	int			bj;
	int			weak;
	int			strong;
	Move_t*			move;

	static BRstate_t*	brstate;

	move = ps.moves.move;

	/* initialize static data */

	if (!brstate)
	{
	  if (!(brstate = (BRstate_t*)malloc(sizeof(BRstate_t))))
	  {
	    fprintf(stderr, "%s: out of space\n", command);
	    fini(1);
	  }
	  for (grl_in=0; grl_in<0x1000; grl_in++)
	  {
	    grl_out = 0;
	    for (i=0; i<2; i++)
	      for (j=0; j<2; j++)
	        for (k=0; k<2; k++)
	        {
	          if (!(grl_in & (256<<(2*i+j))))
	            continue;
	          if (!(grl_in & (16<<(2*j+k))))
	            continue;
	          if (!(grl_in & (1<<(2*k+i))))
	            continue;
	          grl_out |= (256<<(2*i+j)) + (16<<(2*j+k)) + (1<<(2*k+i));
	        }
	    brstate->rtr[grl_in] = grl_out;
	  }
	  for (i=0; i<16; i++)
	    brstate->rev[i] = (i&9) + ((i&4)>>1) + ((i&2)<<1);
	}

	/* initialize per grid data */

	chunk(0);
	for (i=brnet.sz=0; i<81; i++)
	  if (CANDIDATE(grid,i))
	    brnet.sz += TALLY(grid, i);
	brnet.node = (BRdrcb_t*)chunk(brnet.sz * sizeof(BRdrcb_t));
	brnet.grl = (unsigned char*)chunk((brnet.sz*(brnet.sz-1))/2);
	for (i=j=0; i<81; i++)
	  if (CANDIDATE(grid,i))
	  {
	    for (k=0; k<9; k++)
	      if (MASK(grid,i) & VALUE(k))
	      {
	        brnet.node[j].d = k;
	        brnet.node[j].r = ROW(i);
	        brnet.node[j].c = COL(i);
	        brnet.node[j].b = BOX(i);
	        j++;
	      }
	  }
	for (i=grl_in=0; i<brnet.sz; i++)
	{
	  di=brnet.node[i].d;
	  ri=brnet.node[i].r;
	  ci=brnet.node[i].c;
	  bi=brnet.node[i].b;
	  for (j=i+1; j<brnet.sz; j++,grl_in++)
	  {
	    dj=brnet.node[j].d;
	    rj=brnet.node[j].r;
	    cj=brnet.node[j].c;
	    bj=brnet.node[j].b;
	    weak=0;
	    strong=0;
	    if (ri==rj && ci==cj)
	    {
	      weak = 1;
	      for (k=n=0; k<brnet.sz; k++)
	        if (brnet.node[k].r==ri && brnet.node[k].c==ci)
		  n++;
	      if (n == 2)
	        strong = 1;
	    }
	    if (di==dj && ri==rj)
	    {
	      weak = 1;
	      for (k=n=0; k<brnet.sz; k++)
	        if (brnet.node[k].d==di && brnet.node[k].r==ri)
		  n++;
	      if (n == 2)
	        strong = 1;
	    }
	    if (di==dj && ci==cj)
	    {
	      weak = 1;
	      for (k=n=0; k<brnet.sz; k++)
	        if (brnet.node[k].d==di && brnet.node[k].c==ci)
		  n++;
	      if (n == 2)
	        strong = 1;
	    }
	    if (di==dj && bi==bj)
	    {
	      weak = 1;
	      for (k=n=0; k<brnet.sz; k++)
	        if (brnet.node[k].d==di && brnet.node[k].b==bi)
		  n++;
	      if (n == 2)
	        strong = 1;
	    }
	    if (weak && strong)
	      brnet.grl[grl_in] = 0x6;
	    else if (weak)
	      brnet.grl[grl_in] = 0x7;
	    else
	      brnet.grl[grl_in] = 0xf;
	  }
	}

	/* refine the net until no more changes */

	m = 0;
	do
	{
	  m++;
	  for (i=n=0; i<brnet.sz; i++)
	    for (j=i+1; j<brnet.sz; j++)
	      for (k=j+1; k<brnet.sz; k++)
	      {
	        grl_in = 256*brnet_grl(&brnet,brstate,i,j) + 16*brnet_grl(&brnet,brstate,j,k) + brnet_grl(&brnet,brstate,k,i);
	        grl_out = brstate->rtr[grl_in];
	        if (grl_out != grl_in)
		{
	          INSTANCE(order, 1, 1);
		  if (TRACE(flags) > 2)
		    printf("%s     brnet  %3d %s  =>", label(-1), m, brnet_fmt_tri(&brnet,brstate,i,j,k));
	          brnet.grl[brnet_grl_index(&brnet,i,j)] = grl_out / 256;
	          brnet.grl[brnet_grl_index(&brnet,j,k)] = (grl_out/16) % 16;
	          brnet.grl[brnet_grl_index(&brnet,i,k)] = brstate->rev[grl_out % 16];
		  if (TRACE(flags) > 2)
		    printf("  %s\n", brnet_fmt_tri(&brnet,brstate,i,j,k));
	          n = 1;
	        }
	      }
	} while (n);
	INSTANCE(order, 0, m);

	/* execute the moves if any */

	for (i=0; i<brnet.sz; i++)
	{
	  k = brnet_grl(&brnet,brstate,i,i==0);
	  switch (((k&0xa)>>1)|(k&0x5))
	  {
	  case 0x1:	/* elimination */
	    j = VALUE(brnet.node[i].d);
	    n = INDEX(brnet.node[i].r, brnet.node[i].c);
	    if (CANDIDATE(grid, n) && (MASK(grid, n) & j))
	    {
              ELIMINATE(order, grid, n, j, 0);
	      PART();
	      if (flags & STEP)
	        i = brnet.sz;
	    }
	    break;
	  case 0x4:	/* placement */
	    j = VALUE(brnet.node[i].d);
	    n = INDEX(brnet.node[i].r, brnet.node[i].c);
	    if (CANDIDATE(grid, n) && (MASK(grid, n) & j))
	    {
              ASSIGN(order, grid, n, j, 0);
	      PART();
	      if (flags & STEP)
	        i = brnet.sz;
	    }
	    break;
	  case 0x5:	/* indeterminate */
	    break;
	  default:	/* contradiction */
	    return -1;
	  }
	}
	return ps.moves.move - move;
}

static int
constraint_t(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	int			a;
	int			b;
	int			i;
	int			j;
	int			k;
	int			h;
	int			o;
	int			w;
	int			x;
	int			y;
	int			z;
	int			bestcell;
	int			besteliminations;
	int			bestmoves;
	int			besttuple;
	int			trace;
	Move_t*			step;
	Move_t*			bestmove;
	Move_t*			move;
	uint64_t		iterate;
	Grid_t			g;

	move = ps.moves.move;
	iterate = state.count.iterate;
	if (quick(grid, 0, 0) > 0)
	{
	  if (flags & OPTIMAL)
	  {
	    order->options->flags |= BATCH;
	    besteliminations = 0;
	    trace = 2;
	  }
	  else
	    trace = 1;
	  tuples(grid, 2, 0);
	  a = state.tuples.que[2].beg;
	  b = state.tuples.que[2].end;
	  g = *grid;
	  while (a < b)
	  {
	    i = state.tuples.cv[a].c;
	    x = (1<<state.tuples.cv[a].v);
	    a++;
	    j = state.tuples.cv[a].c;
	    y = (1<<state.tuples.cv[a].v);
	    a++;
	    if (size == 1 && i != j || size == 2 && i == j)
	      continue;
	    ps.try = g;
	    if (data.count[z = CELL(&ps.try, i) ^= x] == 1)
	      MOVE(&ps.try, i, z);
	    propagate(&ps.try, &bestcell, GUESS|LOCAL, 0, order->constraints ? order->constraints : &state.constraints.quick);
	    ps.tmp = g;
	    if (data.count[z = CELL(&ps.tmp, j) ^= y] == 1)
	      MOVE(&ps.tmp, j, z);
	    propagate(&ps.tmp, &bestcell, GUESS|LOCAL, 0, order->constraints ? order->constraints : &state.constraints.quick);
	    step = ps.moves.move;
	    for (k = h = o = 0; k < 81; k++)
	      if (CANDIDATE(grid, k) && (z = MASK(grid, k) & ~(CANDIDATE(&ps.try, k) ? MASK(&ps.try, k) : CELL(&ps.try, k)) & ~(CANDIDATE(&ps.tmp, k) ? MASK(&ps.tmp, k) : CELL(&ps.tmp, k))))
	      {
		if (TRACE(flags) > trace)
		{
		  if (!h)
		    w = h = printf("%s     transport  %s %s :", label(-1), fmtval(i, 'e', x), fmtval(j, 'e', y));
		  if (w >= state.width)
		  {
		    printf("\n%-*.*s", h, h, "");
		    w = h;
		  }
		  w += printf(" %s", fmtval(k, 'n', z));
		}
		if (h || (flags & OPTIMAL))
		  o += data.count[MASK(grid, k) & z];
	        ELIMINATE(order, grid, k, z, 0);
	        PART();
	      }
	    if (h)
	      printf(" (%d)\n", o);
	    if ((flags & STEP) && ps.moves.move > move)
	      break;
	    if ((flags & OPTIMAL) && besteliminations < o)
	    {
	      besteliminations = o;
	      bestmoves = ps.moves.move - step;
	      bestmove = step;
	      besttuple = a;
	    }
	  }
	}
	state.count.iterate = iterate;
	if ((flags & OPTIMAL) && besteliminations)
	{
	  if (TRACE(flags) > 1)
	   printf("%s     transport  %s %s : best : %d elimination%s\n", label(-1), fmtval(state.tuples.cv[besttuple-2].c, 'e', 1<<state.tuples.cv[besttuple-2].v), fmtval(state.tuples.cv[besttuple-1].c, 'e', 1<<state.tuples.cv[besttuple-1].v), besteliminations, GRAMNUM(besteliminations));
	  ps.moves.move = move;
	  for (i = 0; i < bestmoves; i++)
	    *ps.moves.move++ = *bestmove++;
	}
	return ps.moves.move - move;
}

static int
constraint_Q(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	switch (order->sub)
	{
	case 'b':	return constraint_b(order, grid, size, guess, flags, constraints);
	case 't':	return constraint_t(order, grid, size, guess, flags, constraints);
	}
	return 0;
}

static void
update_clues(Grid_t* g, int c)
{
	if (!(state.stats.progress[c] = minimize(g, 0, 0, 0)))
	{
		UPDATE(g, 'S');
		if (state.stats.symmetry && minimize(g, 0, state.stats.symmetry, 0))
			state.stats.progress[c] = 2;
	}
}

static char*
show_clues(int c)
{
	return (char*)minimal[state.stats.progress[c]].name;
}

static void
update_magic(Grid_t* g, int c)
{
	state.stats.magic = magic(g);
	state.stats.apply[c] = state.stats.magic->size;
	state.stats.progress[c] = state.stats.magic->count;
	state.stats.size[c][0] = state.stats.magic->guess;
}

static void
update_rating(Grid_t* g, int c)
{
	state.stats.apply[c] = rating(g, state.rating, 0);
}

static char*
show_subexpression(int c)
{
	return "";
}

static void
update_symmetry(Grid_t* g, int c)
{
	int	i;

	if (i = data.count[dihedral[state.stats.symmetry = state.stats.progress[c] = symmetry(g)].elements])
		state.stats.apply[c] = i + 1;
}

static char*
show_symmetry(int c)
{
	return state.stats.apply[c] ? (char*)dihedral[state.stats.symmetry].op : 0;
}

#include "constraint_A.c"
#include "constraint_J.c"
#include "constraint_U.c"
#include "constraint_Z.c"

static const Method_t	method[] =
{
    {
	'C', 0, 0, show_clues, update_clues, CONSTRAINT_PSEUDO,
	0, 0, 0, 0, 0,
	"Clue info."
    },
    {
	'S', 0, 0, show_symmetry, update_symmetry, CONSTRAINT_PSEUDO,
	0, 0, 0, 0, 0,
	"Symmetry info."
    },
    {
	'F', CONSTRAINT_F, constraint_F, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_QUICK|CONSTRAINT_MAGIC,
	0, 0, 0, 0, 0,
	"Forced cell (naked single or T1): only one value possible."
    },
    {
	'N', CONSTRAINT_N, constraint_N, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_QUICK|CONSTRAINT_MAGIC,
	0, 0, 0, 0, 0,
	"Only cell (hidden single or H1): only one value in row/col/box."
    },
    {
	'B', CONSTRAINT_B, constraint_B, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_MAGIC,
	2, 3, 0, 0, 0,
	"Box claim: (2:boxline) candidates in box confined to one row/col.\n"
"       (3:linebox) candidates in row/col confined to one box."
    },
    {
	'T', CONSTRAINT_T, constraint_T, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_MAGIC|CONSTRAINT_RANGE,
	2, 4, 'F', CONSTRAINT_T|CONSTRAINT_H|CONSTRAINT_W, 0,
	"(naked) tuple: order <= n (4) n exact n-tuples in row/col/box.",
    },
    {
	'H', CONSTRAINT_H, constraint_H, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_MAGIC|CONSTRAINT_RANGE,
	2, 4, 'N', CONSTRAINT_T|CONSTRAINT_H|CONSTRAINT_W, 0,
	"(hidden) tuple: order <= n (4) n hidden n-tuples in row/col/box.",
    },
    {
	'W', CONSTRAINT_W, constraint_W, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_MAGIC|CONSTRAINT_RANGE,
	2, 4, 0, CONSTRAINT_T|CONSTRAINT_H|CONSTRAINT_W, 0,
	"Row/col claim: order <= n (4) pure x-wing/swordfish/jellyfish."
    },
    {
	'X', CONSTRAINT_X, constraint_X, 0, 0, CONSTRAINT_SOLVE,
	0, 0, 0, 0, 0,
	"Singleton cycle: strong and 1-weak edges. Requires B, included in Y."
    },
    {
	'Y', CONSTRAINT_Y, constraint_Y, 0, 0, CONSTRAINT_SOLVE,
	0, 0, 0, 0, 0,
	"Degree-2 cycle: strong, 1-weak and 0-weak (degree-2) edges. Includes X.\n"
"       NOTE: y-edge (0-weak) path details are currently disabled pending\n"
"       enhancement of the 2007-05-01 Y algorithm."
    },
    {
	'K', CONSTRAINT_K, constraint_K, 0, 0, CONSTRAINT_SOLVE,
	0, 0, 0, 0, 0,
	"Degree-2 singles knots (bivalue/location contradiction chains)."
    },
    {
	'O', CONSTRAINT_O, constraint_O, 0, 0, CONSTRAINT_SOLVE,
	0, 0, 0, 0, 0,
	"Overlay: single digit 9-cell rookery templates (that WXY miss)."
    },
#ifdef METHOD_A
    METHOD_A,
#endif
#ifdef METHOD_J
    METHOD_J,
#endif
#ifdef METHOD_U
    METHOD_U,
#endif
#ifdef METHOD_Z
    METHOD_Z,
#endif
    {
	'P', CONSTRAINT_P, constraint_P, 0, 0, CONSTRAINT_SINGLE|CONSTRAINT_SUB,
	0, 255, 0, 0, 0,
	"Constrained proposition net P(C) -- constraints C applied to candidate\n"
"       propositions.  n is the girth (constraint iteration) limit.\n"
"       The default is 0 for no limit.  .m is the candidate degree\n"
"       (value/location) limit; propositions are only made on cells/values\n"
"       with degree <= m, in order from least to most.  The default is 0\n"
"       for no limit.  Degree 1 limits propositions to bivalue cells only.\n"
"       The basic constraints are used if (C) is omitted.  If singleton\n"
"       propositions fail to advance the solution then: if P* or P..2\n"
"       is specified then nested (paired) propositions are applied,\n"
"       otherwise if G is enabled then normal backtrack logic is used.\n"
"       -B is enabled and -S is disabled for this constraint.  With -O\n"
"       the minimum girth/degree that advances the solution is used,\n"
"       and all propositions for that girth/degree are attempted and\n"
"       counted.  Without -O the minimum degree that advances the\n"
"       solution is used.  Related to error nets, 3D-medusa, T&E."
    },
    {
	'Q', CONSTRAINT_Q, constraint_Q, 0, 0, CONSTRAINT_SINGLE,
	0, 255, 0, 0, CONSTRAINT_X|CONSTRAINT_Y|CONSTRAINT_K|CONSTRAINT_O,
	"Experimental constraints QX. Q prefix optional. Q stats account\n"
"       for all Q constraints applied. X may be:\n"
"       b: Red Ed's BR net which propagates 16 vertex-vertex boolean\n"
"          relationships derived from strong (3) and weak (1,2) edges\n"
"          by applying a triangle relationship on groups of the vertices.\n"
"          Q2 is the number of sweeps, Q3 is the number of triangle\n"
"          state changes.  A sweep searches for triangle state changes.\n"
"          Sweeps are repeated until there are no more state changes.\n"
"       t(C): Michael McWilliams' red/green transport: select a degree 2\n"
"          tuple and determine the common eliminations when one end and\n"
"          then the other is assigned, using constraints C to propagate\n"
"          (transport) the initial assignments.  The quick constraints\n"
"          (FN) are used if (C) is omitted.  Related to the P constraint.\n"
"          t1: test only bivalue cells, t2: test only bilocation cells.\n"
"          Fails on puzzles matching -e 'P&&(P8!=1||P7!=2||V!=2)'.",
    	0,0,0,
	"bt"
    },
    {
	'G', CONSTRAINT_G, 0, 0, 0, CONSTRAINT_SOLVE|CONSTRAINT_QUICK|CONSTRAINT_EXPLICIT,
	0, 0, 0, 0, 0,
	"Guess: backtrack search guess (T&E)."
    },
    {
	'M', 0, 0, 0, update_magic, CONSTRAINT_PSEUDO,
	0, 0, 0, 0, 0,
	"Backdoor info."
    },
    {
	'R', 0, 0, 0, update_rating, CONSTRAINT_PSEUDO|CONSTRAINT_HIDDEN,
	0, 0, 0, 0, 0,
	"Rating."
    },
    {
	'V', 0, 0, show_subexpression, 0, CONSTRAINT_PSEUDO|CONSTRAINT_MANY,
	0, CONSTRAINT_WEIGHTS+1, 0, 0, 0,
	"Solving subexpression V(n) value or V(X) validation expression."
    },
    {
    	0
    }
};

/*
 * commit batched moves
 */

static int
commit(register Grid_t* grid, Constraints_t* constraints, int group, int guess, unsigned int flags)
{
	register Move_t*	mv;
	register Move_t*	mo;
	register Move_t*	mp;
	register Move_t*	mr;
	register int		i;
	register int		j;
	int			a;
	int			n;
	int			o;
	int			r;
	int			id;
	const Method_t*		prev;
	char*			s;
	unsigned char		assign[81];

	r = 0;
	i = 1;
	o = 0;
	s = B;
	a = 0;
	if (state.incremental && TRACE(flags) > 0)
		printf("        -------\n");
	GROUP('I', group, 1);
	mv = ps.moves.trie;
	while (mv < ps.moves.move)
	{
		for (mo = mv, n = 0; mv < ps.moves.move && mv->order->method == mo->order->method; mv++)
		{
			for (mr = mo; mr < mv && (mr->cell != mv->cell || mr->mask != mv->mask); mr++);
			if (mr == mv)
			{
				mv->group = (unsigned short)state.count.iterate;
				if (BITTST(&state.drop.iterate, mv->group))
					n = -state.incremental;
				else
				{
					n++;
					if ((ps.batch < 0 || ps.batch && (mv->order->options->flags & BATCH)) && CANDIDATE(grid, mv->cell))
					{
						if (data.count[grid->cell[mv->cell] &= mv->mask] == 1)
						{
							mv->assign = 1;
							MOVE(grid, mv->cell, grid->cell[mv->cell]);
							if (!guess && state.stop)
							{
								mv = ps.moves.move;
								r = 1;
								break;
							}
							if ((guess & Y_EDGE) && grid->cell[mv->cell] == ps.y.av && ROW(ps.y.ai) != ROW(mv->cell) && COL(ps.y.ai) != COL(mv->cell) && BOX(ps.y.ai) != BOX(mv->cell))
							{
								ps.y.move[ps.y.moves].cell = mv->cell;
								ps.y.move[ps.y.moves].size = state.iterations;
								ps.y.moves++;
							}
						}
						else if (!guess && state.stop == STOP_DIAMOND)
						{
							mv = ps.moves.move;
							r = 1;
							break;
						}
					}
					if (mv->assign && data.count[mv->mask] > 1)
						assign[a++] = mv->cell;
				}
				if (state.incremental && mv < ps.moves.move && mv->part != (mv+1)->part)
				{
					mv++;
					break;
				}
			}
		}
		if (n > 0)
		{
			state.count.constraint |= mo->order->method->constraint;
			prev = mo->order->method;
			id = mo->order->sub ? mo->order->sub : prev->id;
			PROGRESS(prev->id, n);
			if (!guess && state.count.level == 1 && (flags & RECORD))
			{
				i = mo->order->method->constraint == CONSTRAINT_F ? group : mo->order->group;
				if (state.groups < i)
					state.groups = i;
				if (state.hardest[i]['h'-'a'] <= mo->order->index)
				{
					if (state.hardest[i]['h'-'a'] < mo->order->index)
					{
						state.hardest[i]['h'-'a'] = mo->order->index;
						state.hardest[i]['b'-'a'] = 1;
					}
					else
						state.hardest[i]['b'-'a']++;
					if (!(state.hardest[i]['i'-'a'] = state.hardest[mo->order->offset]['a'-'a']))
						state.hardest[i]['i'-'a'] = state.hardest[i]['b'-'a'];
				}
				if (state.hardest[0]['h'-'a'] <= mo->order->offset)
				{
					if (state.hardest[0]['h'-'a'] < mo->order->offset)
					{
						state.hardest[0]['h'-'a'] = mo->order->offset;
						state.hardest[0]['b'-'a'] = 1;
					}
					else
						state.hardest[0]['b'-'a']++;
					if (!(state.hardest[0]['i'-'a'] = state.hardest[mo->order->offset]['a'-'a']))
						state.hardest[0]['i'-'a'] = state.hardest[0]['b'-'a'];
				}
				state.trace[state.count.group].group = state.incremental ? ++ps.group : mo->group;
				state.trace[state.count.group].method = prev->id;
				state.trace[state.count.group].placement = n;
				state.trace[state.count.group].size = mo->size;
				state.trace[state.count.group].index = mo->order->group;
				state.trace[state.count.group].assign = mo->assign;
				state.count.group++;
				if (state.incremental)
				{
					if (state.count.iterate <= state.keep.iterate.max && state.count.iterate >= state.keep.iterate.min && state.keep.iterate.min > 0)
						break;
					state.count.step++;
					state.count.iterate++;
					ps.step = 0;
					o = 1;
				}
			}
			if (TRACE(flags) > 0)
			{
				if (i)
				{
					i = state.incremental;
					if (state.group)
						state.group = group;
					printf("%s %c%d", label(ps.step == (unsigned int)state.count.iterate ? -1 : (ps.step = (unsigned int)state.count.iterate, -2)), id, n);
					if (n < 10)
						printf(" ");
				}
				else
					s += snprintf(s, S, " %c%d", id, n);
				for (;;)
				{
					for (; mo < mv && !mo->order; mo++);
					if (mo >= mv)
						break;
					j = 1;
					for (mp = mo; mp < mv; mp++)
						if (mp->order && mp->op == mo->op && mp->mask == mo->mask)
						{
							mp->order = 0;
							for (mr = ps.moves.trie; mr < mp && (mr->cell != mp->cell || mr->mask != mp->mask); mr++);
							if (mr == mp)
							{
								if (j)
								{
									j = 0;
									s += snprintf(s, S, " ");
								}
								s += snprintf(s, S, "%s", fmtpos(mp->cell));
							}
						}
					if (!j)
						s += snprintf(s, S, "%s%s", mo->op == '=' ? "=" : FORMAT('n'), fmtset(mo->op == '=' ? mo->mask : ~mo->mask));
				}
				if (a)
				{
					s += snprintf(s, S, " F%d", a);
					for (j = 0; j < a; j++)
						s += snprintf(s, S, " %s=%s", fmtpos(assign[j]), fmtset(CELL(grid, assign[j])));
					a = 0;
				}
				if (state.incremental)
				{
					fold(s = B);
					printf("\n");
				}
			}
		}
		else if (n < 0)
		{
			if (state.count.iterate <= state.keep.iterate.max && state.count.iterate >= state.keep.iterate.min && state.keep.iterate.min > 0)
				break;
			state.count.iterate++;
			ps.step = 0;
			o = 1;
		}
	}
	if (guess)
	{
		ZERO('D', 0);
		WEIGHT('D', 4, 1);
	}
	else
	{
		if (!WEIGHT('D', 4, 0))
			WEIGHT('D', 3, 1);
		WEIGHT('D', 0, 1);
	}
	if (!state.incremental)
	{
		if (!guess && state.count.level == 1 && (flags & RECORD))
			state.count.step++;
		if (TRACE(flags) > 0)
		{
			fold(s = B);
			printf("\n");
		}
	}
	if (!guess && state.count.level == 1 && (flags & RECORD) && (state.count.iterate - o) <= state.keep.iterate.max && (state.count.iterate - o) >= state.keep.iterate.min && state.keep.iterate.min > 0)
	{
		Count_t		count;

		count = state.count;
		state.stats = state.count;
		state.stats.time = usr() - state.count.time;
		list(grid, 's', STATS, 0);
		if (state.keep.iterate.min == state.keep.iterate.max)
			fini(0);
		state.count = count;
		state.stats.level = 0;
	}
	START();
	return r;
}

/*
 * propagate constraints
 *	<0 dead end
 *	 0 time to guess
 *	>0 solved
 *
 * F constraint is an anomaly because even if it is disabled
 * dangling naked singles are accepted and associated with
 * the most recent constraint applied
 */

static int
propagate(register Grid_t* grid, int* best, int guess, unsigned int flags, register Constraints_t* constraints)
{
	register Move_t*	mv;
	register int		i;
	register int		x;
	register int		z;
	int			o;
	int			batch;
	int			bestcell;
	int			bestcount;
	int			bestindex;
	int			extent;
	int			group;
	int			ppart;
	int			parts;
	int			progress;
	int			recent;
	int			segment;
	int			total;
	unsigned int		iterations;
	Count_t			counts;
	Grid_t			try;
	Move_t*			part;
	Move_t*			prev;
	Move_t*			trie;

	batch = ps.batch;
	if (guess)
	{
		ps.batch = (guess & Y_EDGE) ? -1 : (guess & BATCH) ? 1 : 0;
		if (guess & LOCAL)
			counts = state.count;
		parts = ps.part;
		part = ps.moves.part;
		prev = ps.moves.move;
		trie = ps.moves.trie;
		ps.moves.trie = ps.moves.part = ps.moves.move;
	}
	else
	{
		START();
		ps.batch = 1;
	}
	if (ps.ps = state.postscript && state.easy == EASY && state.count.level == 1 && (state.psycle.keep.min || state.psycle.pair.min) ? state.psycle.buf : (char*)0)
		*state.psycle.buf = 0;
	ps.cycle = 0;
	ps.group = 0;
	ps.step = 0;
	memset(&state.serial, 0, sizeof(state.serial));
	*best = -1;
	extent = 0;
	group = 0;
	recent = 0;
	segment = 0;
	total = 0;
	if (!(iterations = constraints->iterations))
		iterations = ~0;
	state.iterations = 0;
	flags &= ~ORDER;
	for (;;)
	{
		if (*state.psycle.buf)
			ps.ps = 0;
		ps.force = 0;
		if (ps.moves.move != ps.moves.trie && commit(grid, constraints, constraints->order[o].group, guess, flags|constraints->order[o].options->flags))
		{
			progress = 0;
			goto done;
		}
		bestcell = -1;
		bestcount = 10;
		bestindex = 0;

		/* forced values (naked singles) and best backtrack guess search */

		for (i = 0; i < 81; i++)
			if (CANDIDATE(grid, i))
			{
				z = MASK(grid, i);
				switch (x = data.count[z])
				{

				case 0:

					/* dead end */

					if (ps.batch < 0)
						break;
					*best = i;
					if (state.debug || TRACE(flags) > 0)
						printf("%s D   %s\n", label(-1), fmtpos(i));
					if (*state.psycle.buf)
					{
						list(&ps.easy, 's', STATS, 0);
						*state.psycle.buf = 0;
						state.easy |= LISTED;
					}
					progress = INVALID;
					goto done;

				case 1:

					/* forced value */

					if (constraints->force)
						ASSIGN(&constraints->order[0], grid, i, z, 0);
					else
						ps.forced[ps.force++] = i;
					break;

				default:

					/* multiple choice */

					if (x < bestcount)
					{
						bestcount = state.all ? 0 : x;
						ps.best[0] = bestcell = i;
						bestindex = 1;
					}
					else if ((flags & RANDOMBEST) && x == bestcount)
						ps.best[bestindex++] = i;
					break;
				}
			}
		if (state.iterations >= iterations)
		{
			if (bestcell < 0)
			{
				if (ps.force || ps.moves.move != ps.moves.trie)
				{
					progress = 0;
					goto done;
				}
				goto verify;
			}
			break;
		}
		state.iterations++;
		if (bestcell < 0 && !ps.force && ps.moves.move == ps.moves.trie)
		{
 verify:
			if (guess)
			{
				if (guess & FIRST)
				{
					progress = INVALID;
					goto done;
				}
				try = data.empty;
				for (i = 0; i < 81; i++)
					if (!(z = grid->cell[i] & MASK(&try, i)))
					{
						*best = i;
						if (state.debug || TRACE(flags) > 0)
							printf("%s D   %s [ %s vs %s ]\n", label(-1), fmtpos(i), fmtbits(grid->cell[i], 0), fmtbits(MASK(&try, i), 0));
						progress = INVALID;
						goto done;
					}
					else if (data.count[z] > 1)
						try.cell[i] = z;
					else
						MOVE(&try, i, z);
			}
			break;
		}
		if (!state.incremental || !state.count.iterate)
			state.count.iterate++;
		progress = 0;
		for (o = segment;; o++)
		{
			if (!constraints->order[o].method)
			{
				o--;
				break;
			}
			mv = ps.moves.move;
			ppart = ps.part;
			if (!(x = (*constraints->order[o].method->propagate)(&constraints->order[o], grid, constraints->order[o].min, guess, flags|constraints->order[o].options->flags, constraints)))
			{
				if (constraints->order[o].commit > 1)
					segment = o + 1;
				ps.moves.move = mv;
				ps.part = ppart;
				if ((state.group || constraints->order[o].commit > 1) && constraints->order[o].last)
				{
					if (constraints->must && constraints->order[o].options->min && (state.iterations > 1 || !(constraints->order[o].options->flags & OPTI0NAL)))
					{
						x = constraints->order[o].group == group ? total : (ps.part - ppart);
						if (constraints->order[o].force)
							x += constraints->force ? (ps.moves.move - ps.moves.trie) : ps.force;
						if (x < constraints->order[o].options->min)
						{
							total = x;
							progress = -1;
							break;
						}
					}
					if (ps.moves.move != ps.moves.trie && (constraints->order[o].commit <= 1 || !constraints->order[o+1].method))
						break;
				}
			}
			else if (x > 0)
			{
				progress = 1;
				if (guess & FIRST)
					goto done;
				if (!state.group && constraints->order[o].commit <= 1)
				{
					recent = o;
					break;
				}
				if (constraints->must)
				{
					if (group != constraints->order[o].group)
					{
						if (group && (state.iterations > 1 || !(constraints->order[recent].options->flags & OPTI0NAL)))
						{
							if (constraints->order[recent].force)
								total += constraints->force ? (ps.moves.move - ps.moves.trie) : ps.force;
							if (total < constraints->order[recent].options->min)
							{
								o = recent;
								progress = -1;
								break;
							}
						}
						group = constraints->order[o].group;
						total = 0;
					}
					total += ps.part - ppart;
					if (total < constraints->order[o].options->min)
					{
						progress = -1;
						break;
					}
					if (total > constraints->order[o].options->max)
					{
						progress = -2;
						break;
					}
				}
				recent = o;
				if (constraints->order[o].last)
					break;
				if (constraints->order[o].commit == 1 && commit(grid, constraints, constraints->order[o].group, guess, flags|constraints->order[o].options->flags))
				{
					progress = 0;
					goto done;
				}
				if ((flags|constraints->order[o].options->flags) & STEP)
					break;
			}
			else
			{
				if (state.debug || TRACE(flags) > 0)
					printf("%s D   %c contradiction\n", label(-1), constraints->order[o].sub ? constraints->order[o].sub : constraints->order[o].method->id);
				progress = INVALID;
				goto done;
			}
		}
		if (guess & FIRST)
			goto done;
		if (progress < 0)
		{
			if (state.debug || TRACE(flags) > 0)
			{
				if (progress < -1)
					printf("%s D   {%d} %d > %d\n", label(-1), constraints->order[o].group, total, constraints->order[o].options->max);
				else
					printf("%s D   {%d} %d < %d\n", label(-1), constraints->order[o].group, total, constraints->order[o].options->min);
			}
			progress = INVALID;
			goto done;
		}
		if (extent < o)
			extent = o;
		if (!progress)
		{
			if (!ps.force || ps.batch >= 0 && (guess || bestcell >= 0))
			{
				if (!guess && !(constraints->constraints & CONSTRAINT_G) && (state.debug || TRACE(flags) > 0))
					printf("%s D\n", label(-1));
				break;
			}
			WEIGHT('C', 0, ps.force);
			for (i = 0; i < ps.force; i++)
				ASSIGN(&constraints->order[recent], grid, ps.forced[i], MASK(grid, ps.forced[i]), 0);
		}
	}
	if (constraints->must)
	{
		for (o = extent; constraints->order[o].method && !constraints->order[o++].last;);
		for (; constraints->order[o].method; o++)
			if (constraints->order[o].last && constraints->order[o].options->min)
			{
				if (state.debug || TRACE(flags) > 0)
					printf("%s D   {%d} %d < %d\n", label(-1), constraints->order[o].group, 0, constraints->order[o].options->min);
				progress = INVALID;
				goto done;
			}
	}
	if (bestcell >= 0)
		for (x = 0; x < 27; x++)
		{
			for (z = o = 0; z < 9; z++)
			{
				i = PATH(x, z);
				o |= CANDIDATE(grid, i) ? MASK(grid, i) : grid->cell[i];
			}
			if (o != 0x1ff)
			{
				if (state.debug || TRACE(flags) > 0)
					printf("%s D   %c%d\n", label(-1), type[x/9], (x % 9) + 1);
				progress = INVALID;
				goto done;
			}
		}

	/* either the puzzle is solved or a guess is needed */

	if (state.incremental && state.count.iterate)
		state.count.iterate--;
	if (!(flags & KNOWN) && bestcell < 0)
	{
		if (flags & RECORD)
			memcpy(state.hit, grid->cell, sizeof(grid->cell));
		if (TRACE(flags) > 0)
			printf("%s S\n", label(-1));
	}
	if ((flags & RECORD) && state.easy == EASY && state.count.level == 1)
	{
		if (*state.psycle.buf)
			grid = &ps.easy;
		list(grid, 's', STATS, 0);
		if (*state.psycle.buf)
			*state.psycle.buf = 0;
		else
			bestcell = -1;
		state.easy |= LISTED;
	}
	if (bestcell < 0)
		progress = 1;
	else
	{
		progress = 0;
		if ((flags & RANDOMBEST) && bestindex > 1)
			bestcell = ps.best[RAND(bestindex)];
	}
	*best = bestcell;
 done:
	if (guess)
	{
		if (guess & LOCAL)
		{
			state.count = counts;
			ps.force = 0;
		}
		ps.part = parts;
		ps.moves.part = part;
		ps.moves.move = prev;
		ps.moves.trie = trie;
	}
	ps.batch = batch;
	if (progress > 0 && constraints->valid[0])
		APPLY('V', constraints->valid[0]);
	return progress;
}

/*
 * the solver
 *	<0 no solution
 *	 0 multiple solutions
 *      >0 one solution
 */

static int
solve(register Grid_t* grid, int guess, unsigned int flags, Constraints_t* constraints)
{
	register int	i;
	register int	j;
	register int	k;
	register int	x;
	register int	z;
	register int	b;
	register int	m;
	register int	n;
	register int	o;
	register int	t;
	register int	f;
	char*		s;
	int		all;
	int		best;
	int		test;
	Grid_t		try[10];

	if (state.loop && state.shown >= state.loop)
		return 0;
	if (++state.count.level > state.count.depth)
		state.count.depth = state.count.level;
	if (state.count.level == 1)
	{
		state.searched++;
		if (!guess)
		{
			state.count.step = state.count.group = state.groups = 0;
			memset(state.hardest, 0, sizeof(state.hardest));
		}
	}
	if (TRACE(flags) > 0)
	{
		if (state.count.level == 1)
			printf("\n");
		label(state.count.level);
	}
	all = state.all;
	s = B;
	for (;;)
	{
		if ((k = propagate(grid, &best, guess, flags, constraints)) < 0)
			break;
		if (state.count.level == (state.hint - 1))
			list(grid, 's', VERIFIED, 0);
		if (k > 0)
		{
			if (flags & ENUMERATE)
			{
				if (!state.solutions++)
					state.sol[0] = *grid;
				else if (state.solutions >= state.worse)
					k = 0;
				else if (state.solutions == 2)
					state.sol[1] = *grid;
			}
			else
				solution(grid, flags);
			break;
		}
		if (!(constraints->constraints & CONSTRAINT_G) || best < 0)
		{
			k = -1;
			break;
		}

		/* breadth first forward check */

		if (!(flags & DEPTHFIRST))
		{
			for (i = 2; i < 10; i++)
				state.pick[i][0] = 0;
			for (i = 0; i < 81; i++)
				if (CANDIDATE(grid, i))
				{
					z = data.count[MASK(grid, i)];
					state.pick[z][++state.pick[z][0]] = i;
				}
			f = 0;
			n = 0;
			for (m = 2; m < 10; m++)
				for (j = state.pick[m][0]; j > 0; j--)
				{
					i = state.pick[m][j];
					if (CANDIDATE(grid, i))
					{
						b = 0;
						t = 0;
						o = z = MASK(grid, i);
						while (x = data.next[z])
						{
							if (!(z ^= x) && !b)
							{
								b = x;
								break;
							}
							PROGRESS('G', 0);
							try[t] = *grid;
							MOVE(&try[t], i, x);
							if (TRACE(flags) > 0)
								printf("%s G   %s\n", label(-1), fmtval(i, 'g', x));
							if ((k = propagate(&try[t], &test, GUESS, flags, constraints)) > 0)
							{
								solution(&try[t], flags);
								if (!(flags & UNIQUE))
									goto done;
								if (f++)
								{
									k = 0;
									goto done;
								}
								try[9] = try[t];
							}
							else if (!k)
							{
								b |= x;
								t++;
							}
						}
						if (b != o)
						{
							if (!b)
							{
								if (flags & UNIQUE)
									continue;
								if (TRACE(flags) > 0 && state.count.level == 1)
									printf("DEAD\n");
								k = -1;
								goto done;
							}
							if (TRACE(flags) > 0)
								label(state.count.level);
							o = 1;
							if (TRACE(flags) > 0)
								s += snprintf(s, V, " %s=%s", fmtpos(i), fmtset(b));
							if (data.count[b] == 1)
								MOVE(grid, i, b);
							else
								grid->cell[i] = b;
						}
						else
							o = 0;
						if (t)
						{
							try[0].cell[i] = 0;
							for (k = 0; k < 81; k++)
								if (CANDIDATE(grid, k) && (b = try[0].cell[k]) != grid->cell[k])
								{
									for (x = 1; x < t; x++)
										if (try[x].cell[k] != b)
										{
											b = 0;
											break;
										}
									if (b)
									{
										if (TRACE(flags) > 0)
											s += snprintf(s, V, " %s=%s", fmtpos(k), fmtset(b));
										if (data.count[b] == 1)
											MOVE(grid, k, b);
										else
											grid->cell[k] = b;
										o++;
									}
								}
						}
						if (o)
						{
							ADJUST('G', o);
							n += o;
							if (TRACE(flags) > 0)
							{
								printf("%s L%d", label(-1), o);
								if (o < 10)
									printf(" ");
								fold(s = B);
								printf("\n");
							}
							if ((k = propagate(grid, &best, GUESS, flags, constraints)) < 0)
							{
								if (flags & UNIQUE)
									continue;
								if (TRACE(flags) > 0 && state.count.level == 1)
									printf("ERROR\n");
								goto done;
							}
							else if (k > 0)
							{
								solution(grid, flags);
								if (!(flags & UNIQUE))
									goto done;
								if (f++)
								{
									k = 0;
									goto done;
								}
							}
						}
					}
				}
			if (f)
			{
				*grid = try[9];
				k = 1;
				goto done;
			}
			if (n)
				continue;
		}

		/* backtrack */

		b = 0;
		i = best;
		z = MASK(grid, i);
		while (x = data.next[z])
		{
			z ^= x;
			PROGRESS('G', 0);
			try[0] = *grid;
			MOVE(&try[0], i, x);
			state.nodes++;
			if (TRACE(flags) > 0)
			{
				label(state.count.level + 1);
				printf("%s G   %s\n", label(-1), fmtval(i, 'g', x));
			}
			if (!(k = solve(&try[0], guess, flags, constraints)))
			{
				if (!all)
				{
					b = 2;
					break;
				}
			}
			else if (k > 0)
			{
				ADJUST('G', 1);
				if (!all && (b++ || !(flags & UNIQUE)))
					break;
			}
			if (state.multiple >= state.enough)
				break;
		}
		if (b == 1)
			k = 1;
		else if (b > 1)
			k = 0;
		else
			k = -1;
		break;
	}
 done:
	state.count.level--;
	return k;
}

/*
 * determine row/col permutations pr[] pc[] that exchange cells a<>b
 */

static void
exchange(unsigned char* pr, unsigned char* pc, int a, int b)
{
	register int	i;
	register int	j;
	register int	m;
	register int	n;
	register int	x;
	register int	y;

	/* identity permutation */

	for (i = 0; i < 9; i++)
		pr[i] = pc[i] = i;

	/* swap row bands */

	if ((m = (ROW(a) / 3) * 3) != (n = (ROW(b) / 3) *3))
		for (i = 0; i < 3; i++)
		{
			j = pr[m+i];
			pr[m+i] = pr[n+i];
			pr[n+i] = j;
		}

	/* swap rows within band */

	if ((x = ROW(a) % 3) != (y = ROW(b) % 3))
	{
		j = pr[n+x];
		pr[n+x] = pr[n+y];
		pr[n+y] = j;
	}

	/* swap col bands */

	if ((m = (COL(a) / 3) * 3) != (n = (COL(b) / 3) * 3))
		for (i = 0; i < 3; i++)
		{
			j = pc[m+i];
			pc[m+i] = pc[n+i];
			pc[n+i] = j;
		}

	/* swap cols within band */

	if ((x = COL(a) % 3) != (y = COL(b) % 3))
	{
		j = pc[n+x];
		pc[n+x] = pc[n+y];
		pc[n+y] = j;
	}
}

/*
 * evaluate constraint expression x on grid g
 * return 1:valid 0:invalid
 */

static int
ceval(Cexpr_t* x, Grid_t* g, int flags, int clear)
{
	int	k;
	int	b;
	Grid_t	try;

	switch (x->op)
	{
	case '!':
		k = !ceval(x->left, g, flags, clear);
		break;
	case '&':
		k = ceval(x->left, g, flags, clear) && ceval(x->right, g, flags, 0);
		break;
	case '|':
		k = ceval(x->left, g, flags, clear) || ceval(x->right, g, flags, clear);
		break;
	case '=':
		k = ceval(x->left, g, flags, clear) == ceval(x->right, g, flags, 0);
		break;
	case '?':
		k = ceval(x->left, g, flags, clear) ? (x->right ? ceval(x->right, g, flags, 0) : 1) : ceval(x->ternary, g, flags, 0);
		break;
	default:
		try = *g;
		if (clear)
		{
			RECOUNT();
			if (x->constraints->valid[0] && (TRACE(flags) > 0 || (state.test & 0x00020)))
				printf("---- subexpression %d ----\n", x->constraints->valid[0]);
			label(state.count.level = 1);
		}
		if ((k = (x->constraints->constraints & CONSTRAINT_G) ? solve(&try, 0, flags, x->constraints) : propagate(&try, &b, 0, flags, x->constraints)) > 0)
		{
			state.stats = state.count;
			state.stats.time = usr() - state.count.time;
			if (x->constraints->expr)
			{
				tally(g, 1);
				if (!eval(g, x->constraints->expr))
					k = 0;
			}
		}
		break;
	}
	return k;
}

/*
 * ready to process another grid
 */

static void
another(Grid_t* grid)
{
	state.sym = 0;
	list(grid, 'b', NOPUZZLE, 0);
}

/*
 * stats wrapper around the solver
 *	<0 no solution
 *	 0 multiple solutions
 *      >0 one solution
 */

static int
search(Grid_t* grid, int show, unsigned int flags, Constraints_t* constraints)
{
	int		i;
	int		k;
	int		oshow;
	long		minimize;
	unsigned long	p;
	Constraints_t*	cp;
	Assign_t*	ap;
	Count_t		count;
	Grid_t		try;

	if ((oshow = show) == SMALLEST)
	{
		minimize = state.minimize;
		state.minimize = 0;
	}
	p = (show == MINIMAL || show == SMALLEST || state.generate_op) ? 0 : state.shuffle;
	cp = constraints;
	for (;;)
	{
		RECOUNT();
		state.easy &= EASY;
		state.stats.level = 0;
		try = *grid;
		if (flags & UNION)
		{
			state.sol[2] = data.empty;
			for (i = 0; i < 81; i++)
				state.sol[2].cell[i] = 0;
		}
		if ((k = solve(&try, 0, flags|RECORD, cp)) > 0)
		{
			if (state.constraints.extra && !cp->next)
			{
				count = state.count;
				memset(&state.count, 0, sizeof(state.count));
				if (!ceval(state.constraints.extra, grid, 0, 0))
					k = -1;
				state.count = count;
			}
		}
		else if (k && state.constraints.which && !cp->next)
		{
			if (ceval(state.constraints.which, grid, state.flags|RECORD, 1))
				k = 1;
		}
		if (k > 0)
			state.stats.apply['V'-'A'] = 1;
		else
		{
			state.stats = state.count;
			state.stats.apply['V'-'A'] = 0;
		}
		tally(grid, k);
		for (ap = cp->assign; ap; ap = ap->next)
			ap->var->index = eval(grid, ap->expr);
		if (cp = cp->next)
			continue;
		if (!show || !state.filter || eval(grid, state.filter))
		{
			state.total.iterate += state.count.iterate;
			state.total.time += (state.stats.time = (usr() - state.count.time));
			if (state.all)
				show = 0;
			else if (show == MINIMAL)
			{
				UPDATE(grid, 'C');
				if (!PLACED('C'))
					show = 0;
			}
			if (show)
				list(grid, 's', k, 0);
			for (i = 0; i < 'Z'-'A'+1; i++)
			{
				state.total.apply[i] += state.count.apply[i];
				state.total.progress[i] += state.count.progress[i];
			}
		}
		if (k < 0 || !p--)
			break;
		shuffle(grid, 0);
		show = oshow;
		cp = constraints;
		another(grid);
	}
	if (oshow == SMALLEST)
		state.minimize = minimize;
	if ((flags & UNION) && oshow)
		list(&state.sol[2], 's', 0, 0);
	return k;
}

#if BBSS
#include "bbss.c"
#endif

typedef struct Try_s
{
	unsigned short	candidates;
	unsigned char	cell;
	unsigned char	free;
} Try_t;

#define MV(g,h,i,x)	((h)[i]=CELL(g,i),CELL(g,i)=(x),PROP(g,i,x))
#define UN(g,h,i)	(PROP(g,i,CELL(g,i)),CELL(g,i)=(h)[i])

/*
 * quick brute force puzzle validation
 * no stats
 * approximately 40% faster than -uqFN
 *	<0 no solution
 *	 0 multiple solutions
 *      >0 one solution
 * oo != 0 is top level offon last +1 multiple solution (exclusion) candidates
 */

static int
quick(Grid_t* g, Grid_t* oo, int multiple)
{
	int		i;
	int		j;
	int		k;
	int		m;
	int		n;
	int		x;
	int		z;
	int		depth;
	int		level;
	int		previous;
	int		solutions;
	unsigned short	hit[81];
	Grid_t		grid;
	Try_t		try[81];

#if BBSS
	if (!oo && !(state.test & 0x010000))
		return bbss(g, 2);
#endif
	grid = *g;
	if (state.test & 0x40000)
		return solve(&grid, GUESS, DEPTHFIRST|UNIQUE, &state.constraints.quick);
	state.searched++;
	if (multiple)
	{
		/* multiple solution check -- short circuits no solution */

		for (i = j = 0; i < 81; i++)
			if (SOLVED(g, i))
				j |= CELL(g, i);
		if (data.count[j] < 8)
			return 0;
	}
	if ((k = propagate(&grid, &m, GUESS, DEPTHFIRST|UNIQUE, &state.constraints.quick)) < 0)
		return INVALID;
	if (k > 0)
		return 1;
	try[0].candidates = 0;
	try[0].cell = 0;
	depth = level = solutions = 0;
	for (i = 0; i < 81; i++)
		if (CANDIDATE(&grid, i))
			try[depth++].free = i;
	if (!depth)
		return 1;
	for (;;)
	{
		m = 10;
		for (j = level; j < depth; j++)
		{
			i = try[j].free;
			if (!(x = MASK(&grid, i)))
			{
				m = 11;
				break;
			}
			if (m > (n = data.count[x]))
			{
				k = j;
				z = x;
				if ((m = n) == 1)
					break;
			}
		}
		if (m < 10)
		{
			try[level+1].candidates = z;
			try[level+1].cell = try[k].free;
			if (k != level)
			{
				j = try[level].free;
				try[level].free = try[k].free;
				try[k].free = j;
			}
			level++;
		}
		else if (m > 10)
			UN(&grid, hit, try[level].cell);
		else if (!solutions++)
		{
			previous = level;
			UN(&grid, hit, try[level].cell);
		}
		else
		{
			if (oo)
				for (i = 0; i < previous; i++)
					if (data.count[x = CELL(oo, try[i].cell) &= ~CELL(&grid, try[i].cell)] == 1)
						MOVE(oo, try[i].cell, x);
			break;
		}
		while (!(x = data.next[try[level].candidates]))
		{
			if (--level <= 0)
				return solutions ? 1 : INVALID;
			if (previous > level)
				previous = level;
			UN(&grid, hit, try[level].cell);
		}
		try[level].candidates ^= x;
		MV(&grid, hit, try[level].cell, x);
		state.nodes++;
	}
	return solutions ? 0 : INVALID;
}

/*
 * if grids a and b are valid and have isomorphic solutions
 * then list the permutations that transform grid a to grid b
 */

static void
permutation(Grid_t* a, uint64_t an, Grid_t* b, uint64_t bn)
{
	register int	i;
	register int	j;
	register char*	s;
	Canon_t*	ac;
	Canon_t*	bc;
	Canon_t		ca;
	Canon_t		cb;
	unsigned char	inv[10];
	unsigned char	ord[10];
	unsigned char	as[82];
	unsigned char	bs[82];
	char		buf[3*30+1];

	if (state.input->exemplar)
	{
		ac = &ca;
		ca = *xanon(a, 0, 0);
		cansolution(ac, a->cell, (char*)as);
		bc = xanon(b, 0, 0);
		cansolution(bc, b->cell, (char*)bs);
		for (i = 0; i < 81; i++)
			if (as[i] != bs[i] && (as[i] == '1' || bs[i] == '1'))
			{
				fprintf(stderr, "%s: exemplars %" LL "u and %" LL "u are not isomorphic\n", command, an, bn);
				return;
			}
	}
	else if ((i = solve(a, GUESS, RECORD|DEPTHFIRST|UNIQUE, &state.constraints.quick)) < 0)
	{
		fprintf(stderr, "%s: puzzle %" LL "u invalid\n", command, an);
		return;
	}
	else
	{
		ac = &ca;
		if (i)
		{
			ca = *canon(a, 0, 0, 0);
			cansolution(ac, state.hit, (char*)as);
			if (solve(b, GUESS, RECORD|DEPTHFIRST|UNIQUE, &state.constraints.quick) <= 0)
			{
				fprintf(stderr, "%s: puzzle %" LL "u invalid\n", command, bn);
				return;
			}
			bc = canon(b, 0, 0, 0);
			cansolution(bc, state.hit, (char*)bs);
		}
		else
		{
			subcanon(ac, a, 0, (char*)as, '0', state.transpose);
			subcanon(bc = &cb, b, 0, (char*)bs, '0', state.transpose);
		}
		if (!strneq((char*)as, (char*)bs, sizeof(as)))
		{
			fprintf(stderr, "%s: puzzle %" LL "u and %" LL "u solutions are not isomorphic\n", command, an, bn);
			return;
		}
	}
	s = buf;
	for (i = 1; i <= 9; i++)
		inv[bc->map[i]] = i;
	for (i = 1; i <= 9; i++)
		ord[i] = inv[ac->map[i]];
	s += snprintf(s, &buf[elementsof(buf)-1]-s, "%s", fmtcycle('v', ord, 1, 0));
	for (i = 0; i < 9; i++)
		for (j = 0; j < 9; j++)
		{
			as[data.swap[ac->box][ac->row[i]][ac->col[j]]] = INDEX(i,j);
			bs[INDEX(i,j)] = data.swap[bc->box][bc->row[i]][bc->col[j]];
		}
	if (ROW(bs[as[INDEX(0,0)]]) == ROW(bs[as[INDEX(1,0)]]))
	{
		*s++ = 'x';
		for (i = 0; i < 9; i++)
			ord[i] = COL(bs[as[INDEX(i,0)]]);
	}
	else
		for (i = 0; i < 9; i++)
			ord[i] = ROW(bs[as[INDEX(i,0)]]);
	s += snprintf(s, &buf[elementsof(buf)-1]-s, "%s", fmtcycle('r', ord, 0, 0));
	if (COL(bs[as[INDEX(0,0)]]) == COL(bs[as[INDEX(0,1)]]))
		for (i = 0; i < 9; i++)
			ord[i] = ROW(bs[as[INDEX(0,i)]]);
	else
		for (i = 0; i < 9; i++)
			ord[i] = COL(bs[as[INDEX(0,i)]]);
	s += snprintf(s, &buf[elementsof(buf)-1]-s, "%s", fmtcycle('c', ord, 0, 0));
	if (s == buf)
		*s++ = 'i';
	*s = 0;
	state.string = buf;
	list(b, 'x', NOPUZZLE, 0);
	state.string = 0;
}

#define stash(s)	stashn(s,-1)

/*
 * allocate and return a stringized copy of s length n
 * n<0 => n=strlen(s)
 */

static char*
stashn(const char* s, int n)
{
	char*	t;

	if (n < 0)
		n = strlen(s);
	if (!(t = newof(0, char, n, 1)))
	{
		fprintf(stderr, "%s: out of space\n", command);
		return 0;
	}
	memcpy(t, s, n);
	t[n] = 0;
	return t;
}

/*
 * convert the -q constraint catenation to propagate() constraints p
 */

static int
order(Constraints_t* p, const char* type, register const char* s, unsigned int never, unsigned int flags)
{
	register Order_t*	o;
	register Order_t*	q;
	register Order_t*	x;
	register Order_t*	g;
	register const Method_t*m;
	register int		c;
	register int		i;
	char*			t;
	const char*		a;
	const char*		b;
	const char*		u;
	const char*		value;
	const Method_t*		disabled;
	int			j;
	int			any;
	int			force;
	int			group;
	int			parm;
	int			nest;
	int			op;
	int			sub;
	int			size;
	int			trace;
	unsigned int		disable;
	Assign_t*		ap;
	Assign_t*		ep;
	Item_t*			vp;
	Options_t*		globals;
	Options_t*		options[8];
	Order_t*		seg;
	Order_t			tmp[CONSTRAINT_ELEMENTS];

	for (;;)
	{
		if (trace = state.test & 0x00010)
			printf("constraint order %s : %s", type, s);
		p->type = type;
		p->must = 0;
		memset(tmp, 0, sizeof(tmp));
		o = seg = tmp;
		group = 1;
		any = 0;
		value = 0;
		disable = never;
		disabled = 0;
		force = 0;
		globals = options[0] = 0;
		nest = 0;
		op = '=';
		parm = 0;
		size = -1;
		sub = 0;
		if (*s == '+' || *s == '-')
		{
			u = s;
			s = (const char*)state.constraints.solve.text;
		}
		else
			u = 0;
		b = s;
		for (;;)
		{
			if (!(c = *s++))
			{
				if (!(s = u))
					break;
				u = 0;
				continue;
			}
			if (c == '(')
			{
				if (!parm++)
					value = s;
			}
			else if (c == ')')
			{
				if (!parm--)
				{
					if (trace)
						printf("\n");
					fprintf(stderr, "%s: too many )'s in constraint order\n", command);
					return -1;
				}
				if (!parm)
				{
					c = s - value - 1;
					if (o == seg)
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: (%-*.*s): constraint method expected for parameter data\n", command, c, c, value);
						return -1;
					}
					if ((c + 1) > CONSTRAINT_TEXT)
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: (%-*.*s): constraint parameter data too big -- %d max\n", command, c, c, value, CONSTRAINT_TEXT);
						return -1;
					}
					if (disabled && disabled->id == 'V')
					{
						i = (short)strtol(value, &t, 0);
						if (*t == ')')
						{
							if (size < 0)
								size = 0;
							p->valid[size] = i;
						}
						else
							p->expr = stashn(value, c);
						continue;
					}
					if ((o-1)->constraints)
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: (%-*.*s): constraint parameter value already specified\n", command, c, c, value);
						return -1;
					}
					if (!((o-1)->constraints = newof(0, Constraints_t, 1, 0)))
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: (%-*.*s): out of space\n", command, c, c, value);
						return 0;
					}
					memset((o-1)->constraints, 0, sizeof(*(o-1)->constraints));
					memcpy((o-1)->constraints->text, value, c);
					(o-1)->constraints->text[c] = 0;
					sub = 1;
				}
			}
			else if (parm)
				/*collect*/;
			else if (c == '+' || c == '=')
			{
				op = c;
				disable = never;
			}
			else if (c == '+' || c == '-' || c == '=')
				op = c;
			else if (c == '[')
			{
				if (options[nest])
				{
					a = b;
					goto syntax;
				}
				if (!(options[nest] = newof(0, Options_t, 1, 0)))
				{
					fprintf(stderr, "%s: out of space\n", command);
					return -1;
				}
				options[nest]->flags = 0;
				options[nest]->min = options[nest]->max = 0;
				i = 0;
				a = s - 1;
				for (;;)
				{
					switch (c = *s++)
					{
					case 0:
						s--;
						break;
					case ']':
						break;
					case 'A':
						options[nest]->flags |= ASSUME;
						continue;
					case 'B':
						options[nest]->flags |= BATCH;
						continue;
					case 'O':
						options[nest]->flags |= OPTIMAL;
						continue;
					case 'o':
						options[nest]->flags |= OPTI0NAL;
						continue;
					case 'S':
						options[nest]->flags |= STEP;
						continue;
					case ':':
						if (i++)
							goto syntax;
						continue;
					case '*':
					case '+':
						switch (i++)
						{
						case 0:
							options[nest]->min = c == '+';
							options[nest]->max = ALL;
							break;
						case 1:
							options[nest]->max = ALL;
							break;
						default:
							goto syntax;
						}
						continue;
					case '?':
						if (i)
							goto syntax;
						options[nest]->min = 0;
						options[nest]->max = 1;
						continue;
					default:
						if (c >= '0' && c <= '9')
						{
							switch (i)
							{
							case 0:
								options[nest]->min = options[nest]->min * 10 + (c - '0');
								break;
							case 1:
								options[nest]->max = options[nest]->max * 10 + (c - '0');
								break;
							default:
								goto syntax;
							}
							continue;
						}
					syntax:
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: %-*.*s: invalid constraint options\n", command, (int)(s-a), (int)(s-a), a);
						return -1;
					}
					break;
				}
				if (!options[nest]->max)
					options[nest]->max = options[nest]->min ? options[nest]->min : ALL;
				options[nest]->set = options[nest]->flags != flags || options[nest]->min || options[nest]->max != ALL;
			}
			else if (c == '{')
			{
				if (++nest >= elementsof(options))
				{
					if (trace)
						printf("\n");
					fprintf(stderr, "%s: constraint order {...} nesting too deep -- %d max\n", command, elementsof(options));
					return -1;
				}
				options[nest] = 0;
				group += any;
				any = 0;
			}
			else if (c == '}')
			{
				if (!nest--)
				{
					if (trace)
						printf("\n");
					fprintf(stderr, "%s: too many }'s in constraint order\n", command);
					return -1;
				}
				options[nest] = 0;
				group++;
				any = 0;
				if (*s == ':' && o > tmp)
				{
					s++;
					(o-1)->commit = 2;
					never |= CONSTRAINT_G;
					disable = never;
					seg = o;
				}
			}
			else if (c == ';')
			{
				ep = 0;
				do
				{
					for (t = (char*)s; *t && *t != '='; t++);
					if (!*t)
						break;
					*t = 0;
					vp = enter(&state.vars, 0, s);
					vp->grid = &data.empty;
					*t++ = '=';
					for (s = (const char*)t; *s && *s != ';'; s++);
					if (!(ap = newof(0, Assign_t, 1, (char*)s - t)))
					{
						fprintf(stderr, "%s: out of space\n", command);
						return -1;
					}
					memcpy(ap->expr, t, (char*)s - t);
					ap->var = vp;
					if (ep)
						ep->next = ap;
					else
						p->assign = ap;
					ep = ap;
				} while (*s++);
				break;
			}
			else
			{
				t = (char*)s - 1;
				if (islower(c))
				{
					o->sub = c;
					c = 'Q';
				}
				else if (isupper(c) && islower(*s) && (m = methods[c-'A'])->id == c && m->subids)
					o->sub = *s++;
				else
					o->sub = 0;
				if (*s == '*')
				{
					s++;
					o->lim = o->var = 9;
				}
				else
					o->lim = o->var = 0xff;
				if (isdigit(*s))
				{
					size = 0;
					while (isdigit(*s))
						size = size * 10 + (*s++ - '0');
				}
				else
					size = -1;
				if (*s == '.')
				{
					if (isdigit(*++s))
					{
						o->lim = 0;
						do o->lim = o->lim * 10 + (*s - '0'); while (isdigit(*++s));
					}
					if (*s == '.' && isdigit(*++s))
					{
						o->var = 0;
						do o->var = o->var * 10 + (*s - '0'); while (isdigit(*++s));
					}
				}
				if (*s == '*')
				{
					s++;
					if (o->lim == 0xff)
						o->lim = 9;
					if (o->var == 0xff)
						o->var = 9;
				}
				for (;;)
				{
					if (!isupper(c) || c != (m = methods[c-'A'])->id)
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: %c: unknown constraint method\n", command, c);
						return -1;
					}
					if (size != 1 || !m->single)
						break;
					size = 0;
					c = m->single;
				}
				if (o->sub)
				{
					if (a = m->subids)
						while (*a && *a != o->sub)
							a++;
					if (!a || !*a)
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: %c%c: unknown sub-constraint\n", command, c, o->sub);
						return -1;
					}
				}
				if (size < 0 && m->defsiz)
					size = m->defsiz;
				if (size >= 0 && (size < m->min || size > m->max))
				{
					if (trace)
						printf("\n");
					if (!m->min)
						fprintf(stderr, "%s: %c%d: constraint size parameter invalid\n", command, c, size);
					else
						fprintf(stderr, "%s: %c%d: constraint size parameter must be in range %d..%d\n", command, c, size, m->min, m->max);
					return -1;
				}
				if (o->lim == 0xff)
					o->lim = m->deflim;
				if (o->var == 0xff)
					o->var = m->defvar;
				if ((m->constraint & disable) || (m->flags & CONSTRAINT_PSEUDO))
				{
					disabled = m;
					continue;
				}
				disabled = 0;
				o->method = m;
				o->active = 1;
				if (*s == ':')
				{
					s++;
					o->commit = nest ? 1 : 2;
				}
				else
					o->commit = 0;
				if (!nest)
					group += any;
				any = 1;
				if (!force && o->method->constraint == CONSTRAINT_F)
					force = group;
				o->group = group;
				o->before = 0;
				o->min = size >= 0 ? size : o->method->min;
				o->max = size >= 0 ? size : (o->method->flags & CONSTRAINT_SINGLE) ? o->min : o->method->max;
				if (options[nest])
					o->options = options[nest];
				else if (!nest && globals)
					o->options = globals;
				else
				{
					if (!(options[nest] = newof(0, Options_t, 1, 0)))
					{
						fprintf(stderr, "%s: out of space\n", command);
						return -1;
					}
					options[nest]->flags = flags;
					options[nest]->min = 0;
					options[nest]->max = ALL;
					options[nest]->set = 0;
					o->options = options[nest];
					if (!nest)
						globals = options[nest];
				}
				if ((o->method->flags & CONSTRAINT_SUB) && *s != '(')
				{
					c = t - b;
					if (!(o->constraints = newof(0, Constraints_t, 1, 0)))
					{
						if (trace)
							printf("\n");
						fprintf(stderr, "%s: (%-*.*s): out of space\n", command, c, c, b);
						return 0;
					}
					memset(o->constraints, 0, sizeof(*o->constraints));
					memcpy(o->constraints->text, b, c);
					o->constraints->text[c] = 0;
					sub = 1;
				}
				i = op != '-';
				for (q = seg; q < o; q++)
					if (q->method == o->method)
					{
						if (op == '-')
						{
							if (o->min != o->max)
								q->active = 0;
							else
							{
								if (o->method->flags & CONSTRAINT_RANGE)
								{
									if (q->max >= o->max)
										q->max = o->max - 1;
								}
								else
								{
									if (q->min == o->min)
										q->min = o->min + 1;
									else if (q->max >= o->max)
										q->max = o->max - 1;
									else if (q->min < o->min)
										q->min = o->min + 1;
								}
								if (q->min > q->max)
									q->active = 0;
							}
							i = 0;
						}
						else if (q->min <= o->min && o->max <= q->max)
						{
							q->max = o->max;
							i = 0;
						}
					}
				c = o->commit;
				if (i)
				{
					disable &= ~o->method->constraint;
					disable |= o->method->disable|never;
					o++;
				}
				else if (op == '-')
					disable |= o->method->constraint;
				if (c > 1)
				{
					disable = never;
					seg = o;
					options[0] = 0;
				}
			}
		}
		if (nest)
		{
			if (trace)
				printf("\n");
			fprintf(stderr, "%s: missing } in constraint order\n", command);
			return -1;
		}
		if (parm)
		{
			if (trace)
				printf("\n");
			fprintf(stderr, "%s: missing ) in constraint order\n", command);
			return -1;
		}
		o->method = 0;
		q = p->order;
		for (o = tmp; o->method; o++)
			if (o->active && (o->method->constraint & disable))
				o->active = 0;
		i = 0;
		for (o = tmp; o->method; o++)
			if (o->active)
			{
				o->before |= (p->constraints |= o->method->constraint);
				if (o->method->flags & CONSTRAINT_EXPLICIT)
					/* explicit */;
				else if (o->min < o->max)
				{
					c = o->method->id;
					x = q;
					*q = *o;
					nest = group = q->group += i;
					q++;
					for (g = o + 1; g->method && g->min < g->max && (o->method->group & g->method->constraint); g++)
						if (g->active)
						{
							g->before |= (p->constraints |= g->method->constraint);
							*q = *g;
							q->group += i;
							nest = q->group + 1;
							q++;
						}
					if (c = nest - group)
						i += c;
					group = nest;
					o = g - 1;
					for (; x < q; x++)
						if (x->min < x->max && x->active)
						{
							*q = *x;
							nest = q->group += i;
							q->min++;
							q++;
						}
					if (c)
						i = nest - group + 1;
				}
				else
				{
					*q = *o;
					q->group += i;
					q++;
				}
			}
		if (disable)
		{
			if (!(p->constraints & ~CONSTRAINT_G))
			{
				for (o = q++; o > p->order; o--)
					*q = *(q - 1);
				for (i = 0; i < elementsof(method) && method[i].constraint != CONSTRAINT_F; i++);
				o->method = &method[i];
				o->active = 1;
				o->before = 0;
				o->commit = 0;
				o->group = ++group;
				o->min = o->max = o->lim = 0;
			}
			if (!(disable & CONSTRAINT_G))
				p->constraints |= CONSTRAINT_G;
		}
		q->method = 0;
		q->group = 0;
		t = p->text;
		nest = 0;
		i = j = 1;
		for (q = o = p->order; q->method; o = q, q++)
		{
			q->force = q->group == force;
			if (q->group == o->group)
			{
				q->first = 0;
				q->index = i++;
			}
			else
			{
				q->first = 1;
				i = 1;
				q->index = i++;
				if (nest)
				{
					nest = 0;
					*t++ = '}';
				}
			}
			q->offset = j++;
			if (!q->options)
			{
				if (!(q->options = newof(0, Options_t, 1, 0)))
				{
					fprintf(stderr, "%s: out of space\n", command);
					return -1;
				}
				q->options->flags = flags;
				q->options->min = 0;
				q->options->max = ALL;
				q->options->set = 0;
			}
			if (!(q->last = q->group != (q+1)->group) || q->options->set)
			{
				if (!nest)
				{
					if (!q->last)
					{
						nest = 1;
						*t++ = '{';
					}
					if (q->options->set)
					{
						if (q->options->min || q->options->max != ALL)
							p->must = 1;
						*t++ = '[';
						if (q->options->flags & ASSUME)
							*t++ = 'A';
						if (q->options->flags & BATCH)
							*t++ = 'B';
						if (q->options->flags & STEP)
							*t++ = 'S';
						if (q->options->flags & OPTIMAL)
							*t++ = 'O';
						if (q->options->flags & OPTI0NAL)
							*t++ = 'o';
						if (q->options->max == ALL)
						{
							if (q->options->min == 0)
								*t++ = '*';
							else if (q->options->min == 1)
								*t++ = '+';
							else
								t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "%d:*", q->options->min);
						}
						else if (q->options->min == q->options->max)
							t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "%d", q->options->min);
						else if (q->options->min == 0)
						{
							if (q->options->max == 1)
								*t++ = '?';
							else
								t += snprintf(t, &p->text[sizeof(p->text)-1] - t, ":%d", q->options->max);
						}
						else
							t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "%d:%d", q->options->min, q->options->max);
						*t++ = ']';
					}
				}
			}
			*t++ = q->sub ? q->sub : q->method->id;
			if (q->var == 9)
				t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "*");
			if (q->min != q->method->defsiz || q->lim != q->method->deflim && q->lim != 9 || q->var != q->method->defvar)
			{
				if (q->min)
					t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "%d", q->min);
				if (c = q->lim && q->lim != 9)
					t += snprintf(t, &p->text[sizeof(p->text)-1] - t, ".%d", q->lim);
				if (q->var && q->var != 9)
					t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "%s.%d", c ? "" : ".", q->var);
			}
			if (q->constraints)
			{
				*t++ = '(';
				s = q->constraints->text;
				while (*t++ = *s++);
				*(t-1) = ')';
			}
			if (q->commit)
			{
				if (nest && q->commit > 1)
				{
					nest = 0;
					*t++ = '}';
				}
				*t++ = ':';
			}
		}
		p->guess = o->group + 1;
		p->order->first = 1;
		if (nest)
			*t++ = '}';
		if (p->constraints & CONSTRAINT_G)
			*t++ = 'G';
		p->size = t - p->text;
		if (s = p->expr)
		{
			*t++ = 'V';
			*t++ = '(';
			while (*t++ = *s++);
			*(t-1) = ')';
		}
		for (i = 0; i < elementsof(p->valid); i++)
			if (p->valid[i])
			{
				if (i)
					t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "V%d(%d)", i, p->valid[i]);
				else
					t += snprintf(t, &p->text[sizeof(p->text)-1] - t, "V(%d)", p->valid[i]);
			}
		if (p->assign)
			for (ap = p->assign; ap; ap = ap->next)
				t += snprintf(t, &p->text[sizeof(p->text)-1] - t, ";%s=%s", ap->var->key, ap->expr);
		*t = 0;
		p->force = p->order->method && p->order->method->constraint == CONSTRAINT_F;
		if (trace)
			printf(" : %s\n", p->text);
		if (sub)
			for (q = p->order; q->method; q++)
				if (q->constraints)
					if (order(q->constraints, "     ", q->constraints->text, q->method->constraint|CONSTRAINT_G, flags))
						return -1;
		if (!(p = p->next))
			break;
		s = p->text;
	}
	return 0;
}

/*
 * compile constraint subexpression
 */

static Cexpr_t*
cexpr(register Expr_t* ex, register int precedence, const char* type, unsigned int flags)
{
	register int	c;
	char*		t;
	Cexpr_t*	x;
	Cexpr_t*	y;
	int		n;
	int		m;
	int		nextdence;

	do
	{
		if (!(c = exget(ex)))
		{
			exunget(ex);
			if (!precedence)
				return 0;
			exerror(ex, "more tokens expected");
		}
	} while (isspace(c));
	if (!(x = newof(0, Cexpr_t, 1, 0)))
		exerror(ex, "out of space");
	x->op = 0;
	if (c == '!')
	{
		if (!(y = newof(0, Cexpr_t, 1, 0)))
			exerror(ex, "out of space");
		y->op = c;
		y->left = cexpr(ex, 13, type, flags);
		x->left = y;
	}
	else
	{
		exunget(ex);
		x->left = 0;
	}
	for (;;)
	{
		nextdence = precedence;
		switch (c = exget(ex))
		{
		case 0:
			goto done;
		case ')':
			if (!precedence)
				exerror(ex, "too many )'s");
			goto done;
		case '(':
			if (x->left)
				exerror(ex, "operator expected");
			x->left = cexpr(ex, 1, type, flags);
			if (exget(ex) != ')')
			{
				exunget(ex);
				exerror(ex, "closing ) expected");
			}
			continue;
		case '?':
			if (precedence > 1)
				goto done;
			if (!x->left)
				exerror(ex, "operand expected");
			x->op = c;
			x->right = expeek(ex) == ':' ? 0 : cexpr(ex, 2, type, flags);
			if (exget(ex) != ':')
			{
				exunget(ex);
				exerror(ex, ": expected for ? operator");
			}
			x->ternary = cexpr(ex, 2, type, flags);
			goto done;
		case ':':
			goto done;
		case '|':
			if (expeek(ex) == '|')
				exget(ex);
			if (precedence > 4)
				goto done;
			nextdence = 4;
			break;
		case '^':
			if (precedence > 5)
				goto done;
			c = '!';
			nextdence = 5;
			break;
		case '&':
			if (expeek(ex) == '&')
				exget(ex);
			if (precedence > 6)
				goto done;
			nextdence = 6;
			break;
		case '!':
			if (expeek(ex) != '=')
				exerror(ex, "operator syntax error");
			/*FALLTHROUGH*/
		case '=':
			if (precedence > 7)
				goto done;
			if (expeek(ex) == '=')
				exget(ex);
			nextdence = 7;
			break;
		default:
			if (!isspace(c))
			{
				if (x->left)
					exerror(ex, "operator expected");
				if (!(y = newof(0, Cexpr_t, 1, 0)) || !(y->constraints = newof(0, Constraints_t, 1, 0)))
					exerror(ex, "out of space");
				memset(y->constraints, 0, sizeof(*y->constraints));
				y->op = 0;
				t = --ex->nextchr;
				n = m = 0;
				for (;;)
				{
					switch (c = exget(ex))
					{
					case 0:
						break;
					case '{':
						n++;
						continue;
					case '}':
						n--;
						continue;
					case '(':
						m++;
						continue;
					case ')':
						if (!m--)
							break;
						continue;
					case '+':
					case '-':
					case '.':
					case '*':
						continue;
					default:
						if (n <= 0 && m <= 0 && !isalnum(c))
							break;
						continue;
					}
					break;
				}
				*--ex->nextchr = 0;
				n = order(y->constraints, type, t, 0, flags);
				*ex->nextchr = c;
				if (n)
					return 0;
				x->left = y;
			}
			continue;
		}
		if (ex->errmsg)
			return 0;
		if (!x->left)
			exerror(ex, "operand expected");
		x->op = c;
		x->right = cexpr(ex, nextdence, type, flags);
		switch (expeek(ex))
		{
		case '&':
		case '|':
			y = x;
			if (!(x = newof(0, Cexpr_t, 1, 0)))
				exerror(ex, "out of space");
			x->left = y;
			break;
		default:
			goto keep;
		}
	}
 done:
	exunget(ex);
 keep:
	if (!x->op && x->left)
	{
		y = x;
		x = x->left;
		free(y);
	}
	if (!x->left && !x->constraints)
		exerror(ex, "operand expected");
	return x;
}

/*
 * compile constraint expression s
 * if end!=0 then it points to first unused char in s on return
 */

static Cexpr_t*
ccomp(const char* s, char** end, const char* type, unsigned int flags)
{
	Cexpr_t*	x;
	Expr_t		ex;

	ex.errbeg = ex.nextchr = (char*)s;
	ex.errmsg = 0;
	x = cexpr(&ex, 0, type, flags);
	if (expeek(&ex) == ':')
		exmessage(&ex, "invalid use of :");
	if (ex.errmsg)
	{
		x = 0;
		fprintf(stderr, "%s: %-.*s<<<%s: %s\n", command, (int)(ex.errend - ex.errbeg), ex.errbeg, ex.errend, ex.errmsg);
		ex.nextchr = ex.errend;
	}
	if (end)
		*end = ex.nextchr;
	return x;
}

/*
 * catenate -q options to be processed later by order()
 */

static int
constrain(Constraints_t* q, register const char* s)
{
	register char*			x;
	register const char*		t;
	register int			c;
	register int			n;

	if (q->part)
	{
		while (q->next)
			q = q->next;
		if (!(q->next = newof(0, Constraints_t, 1, 0)))
		{
			fprintf(stderr, "%s: of space\n", command);
			return -1;
		}
		q = q->next;
	}
	x = q->text;
	if (*s == '+' || *s == '-')
	{
		if (!*x)
			strcpy(x, state.text.solve);
		while (*x)
			x++;
		t = 0;
	}
	else
		t = state.text.explicit;
	n = 0;
	while (c = *s++)
	{
		if (c == ';')
		{
			s--;
			q->part = 1;
			break;
		}
		else if (c == '[')
			n++;
		else if (c == ']')
			n--;
		else if (!n && t && (c == '+' || c == '-'))
		{
			while (*t)
				*x++ = *t++;
			t = 0;
		}
		*x++ = c;
	}
	if (t)
		while (*t)
			*x++ = *t++;
	if (c)
		while (*x++ = *s++);
	else
		*x = 0;
	return 0;
}

/*
 * apply command line puzzle alerations
 */

static char*
alter(register const char* s, unsigned char* pos, int* op, int* val)
{
	register unsigned char*	p;
	register int		b;
	register int		x;
	register int		v;

	p = pos;
	b = 0;
	for (;;)
	{
		if (*s == '[')
		{
			b ^= 0x1;
			s++;
		}
		if (*s == 'r' || *s == 'R')
		{
			b ^= 0x2;
			s++;
		}
		if (p > pos)
		{
			if ((*op = *s) == '-' || *s == '+' || *s == ',')
				s++;
			else if ((*(s-1) != ']' || *s == '=' || *s == '^' || *s == '<' || s-- && (*op = '=')) && (*op == '=' || *op == '^' || *op == '<' && *(s+1) == '>' && (*op = *s++)))
			{
				*p = 81;
				if (*++s == '{')
					s++;
				v = 0;
				for (;;)
				{
					if (!(b = *s++))
					{
						s--;
						break;
					}
					if (b == '}')
						break;
					if (x = token[b])
						v |= x;
					else if (b != ',')
						break;
				}
				*val = v;
				return (char*)s;
			}
		}
		if (!(v = token[*(unsigned char*)s++]))
			break;
		*p = data.ordinal[v] * 9;
		if (*s == ',')
			s++;
		if (*s == 'c' || *s == 'C')
		{
			b ^= 0x2;
			s++;
		}
		if (!(v = token[*(unsigned char*)s++]))
			break;
		*p++ += data.ordinal[v];
		if (*s == ']')
		{
			b ^= 0x1;
			s++;
		}
		if (b)
			break;
	}
	return 0;
}

#define base(p)		(*((p)->argv-1))
#define file(p)		((p)->fp)
#define get(p,c)	((c = *(p)->next++) ? c : (c = refill(p)))
#define flush(p)	(*(p)->next=0)
#define init(p,v)	((p)->argv=(v),(p)->fp=0,(p)->prev=(p),(p)->first=1,*((p)->next=(p)->buf)=0,state.push.cut=(p)->cut,state.push.separator=(p)->separator,state.push.xml=(p)->xml,(p)->band=(-1),(p)->exemplar=(p)->sideline=(p)->sidesave=0)
#define peek(p)		((p)->next)
#define tell(p)		((p)->next-(p)->buf)
#define unget(p,c)	((p)->next--)

static int
identify(Input_t* f, int c, int q)
{
	register char*	s;
	register char*	t;

	s = peek(f);
	if (c == '#')
		return tell(f) == 1 || !token[*(unsigned char*)s];
	if (q >= 0)
		return 0;
	if (isupper(c))
		for (t = s; isdigit(*t) || isupper(*t); t++)
			if (t - s > 18)
				return 0;
	if (!isalpha(c) || token[*(unsigned char*)s])
		return 0;
	return 1;
}

static const Common_t	common[] =
{
    {
	"hardest|h",
	"Sudoku Player's Forum hardest puzzle options.  Ratings are\n"
	"                   exponentially normalized to the range 95000..99999\n"
	"                   (fixed upper limit).  Fairly consistent across\n"
	"                   puzzle permutations, but may take few minutes\n"
	"                   on some puzzles.",
	"-q-G -BOX -MFN -Z'{FN}P*V(2)||{FN}BP*V(3)||{FN}B{T2H2}P*V(4)'"
    },
    {
	"hardest-obsolete|o",
	"Obsolete Sudoku Player's Forum hardest options.",
	"-q-G -B -Z'FNP(FN)V(P<=9)V(2)||-XY+P(FN)V(P<=9)V(3)||\n\
                           FNP(FNB)V(P<=9)V(4)||FNP(FNBT2H2)V(5)||\n\
                           FNP(FNBTHW)V(6)||FNP(FNBTHWX)V(7)||\n\
                           FNP(FNBTHWXY)V(8)||FNP(FNBTHWXYO)V(9)||\n\
                           FNP.3G||FNP.9G||FNBTHWXYP.9G'"
    },
    {
	"inferior|i",
	"Sudoku Player's Forum inferior puzzle options.",
	"-q{FN}-G -B -eV"
    },
    {
	"1",
	"Sudoku Player's Forum hardest puzzle Q1 rating options.\n"
	"                   Ratings are steps+iterations plus a weight for\n"
	"                   propositions requiring B constraints.  Values fall\n"
	"                   in the range 1 .. 99999.  Much faster than -qhardest,\n"
	"                   and may be of similar quality.",
	"-q'{FN}-G' -Z'{FN}P*V(2)||{FN}BP*V(3)' \n\
                           -B -MFN -R'steps+iterations+B*1000'"
    },
    {
	"2",
	"Sudoku Player's Forum hardest puzzle Q2 rating options.\n"
	"                   Similar to Q1 but averages the worst case work of a\n"
	"                   candidate degree ordered backtrack solver.  Values fall\n"
	"                   in the range 1 .. 99999.",
	"-q'{FN}BP*-G' -B -MFN -R'P?P9:I0'"
    },
    {
 	"simple|ss",
	"A close approximation to the Simple Sudoku constraint order.\n"
	"                   Differences will surface between SS coloring and X/Y cycles.\n"
	"                   With guessing off (-G) some valid puzzles will have no solution.",
	"-qT1H1T2BT3T4H2W2W3XH3H4Y-G"
    },
    {
 	"superior|s",
	"Sudoku Player's Forum superior-plus puzzle options.",
	"-q{[B]T1H1BT2H2W2T3H3}{[B+]W3T4H4W4}-G -eV"
    },
    {
 	"superior2|s2",
	"Sudoku Player's Forum superior-2 puzzle options.",
	"-q'{[B+]T1H1}{[B1]BT2H2W2T3H3}-G' -e'V&&S&&(W2||T3||H3)'"
    },
    {
	"ulterior|u",
	"Sudoku Player's Forum ulterior puzzle options.",
	"-q{B2:N}-G -Q!{FN} -AB -eV"
    },
    { 0 }
};

/*
 * string match with '|' alternation
 * end of matched s returned
 */

static char*
match(const char* s, register const char* p)
{
	register const char*	t;

	do
	{
		t = s;
		while (*t && *t == *p)
		{
			t++;
			p++;
		}
		if ((*t == 0 || *t == '-' || *t == '+') && (*p == 0 || *p == '|'))
			return (char*)t;
		while (*p && *p++ != '|');
	} while (*p);
	return 0;
}

/*
 * if m>0 remove all combinations of (m) clues from g
 * then
 * if n>0 add all combinations of (n) clues to g
 *
 * offs (pseudo puzzles) inserted in the sub dict
 * ons (valid puzzles) inserted in the sol dict
 */

static int
offon(Dict_t* sol, Dict_t* sub, Grid_t* p, Grid_t* g, int m, int n, int i, int f, unsigned long part)
{
	int		c;
	int		x;
	int		z;
	unsigned long	k;
	Item_t*		a;
	Grid_t*		oo;
	Grid_t		try;
	Grid_t		con;
	Grid_t		rnd;
	Grid_t		og;

	if (f & RANDOM)
	{
	  if (k = state.per)
	    k++;
	again:
	  rnd = *g;
	  while (!k || k-- > 1)
	  {
	    if (c = m)
	      while (c--)
	      {
	        i = RAND(81);
		while (!SOLVED(&rnd, i))
		  if (++i >= 81)
		    i = 0;
	        UNDO(&rnd, i, rnd.cell[i]);
	      }
	    if (c = n)
	      while (c--)
	      {
	        i = RAND(81);
		while (SOLVED(&rnd, i))
		  if (++i >= 81)
		    i = 0;
		if (!(z = MASK(&rnd, i)))
		  goto again;
		x = data.bit[RAND(9)];
		while (!(z & x))
		  if (!(x >>= 1))
		    x = data.bit[8];
	        MOVE(&rnd, i, x);
	      }
	    try = rnd;
	    if (quick(&try, 0, 1) > 0 && subinsert(sol, &try)->count == 1)
	    {
	      state.item = sol->root;
	      state.item->part = part;
	      if (state.minimize)
	      {
		APPLIED('V') = 1;
		minimize(&try, state.minimize, 0, 0);
	      }
	      else if (f & CLASSIFY)
	        list(&try, 'c', 1, 0);
	      else
	        search(&try, LIST, state.flags, &state.constraints.solve);
	      state.item = 0;
	      if (f & ONE)
	        return 1;
	    }
	    else if (FORMAT('o'))
	      list(&rnd, 'o', 1, 0);
	  }
	  return 1;
	}
	else if (m)
	{
	  a = sub->tail;
	  c = 81 - --m;
	  while (++i < c)
	    if (SOLVED(g, i))
	    {
	      try = *g;
	      UNDO(&try, i, g->cell[i]);
	      if ((f & EVERY) || subinsert(sub, &try)->count == 1)
	      {
		if (m || n)
		{
	          if (offon(sol, sub, p, &try, m, n, m ? i : -1, f, part))
		    return 1;
		}
	        else if (f & DISPLAY)
		{
		  if (f & EVERY)
		    state.key = &try;
		  else
		    state.item = sub->root;
		  if (f & CLASSIFY)
	            list(&try, 'c', 1, 0);
		  else
	            search(&try, LIST, state.flags, &state.constraints.solve);
		  state.key = 0;
		  state.item = 0;
	        }
	      }
	    }
	  if (!m && !n && (f & DISPLAY) && sub->tail != a)
	  {
	    if (!a)
	      a = sub->head;
	    for (;;)
	    {
	      a->count = 0;
	      if (a == sub->tail)
	        break;
	      a = a->next;
	    }
	  }
	}
	else if (n)
	{
	  k = (f & (DISPLAY|IMPLICIT)) == (DISPLAY|IMPLICIT);
	  con = *g;
	  x = propagate(&con, &c, GUESS, DEPTHFIRST, &state.constraints.quick);
	  if (((f & IMPLICIT)) ? (x >= 0) : (x == 0))
	  {
	    c = 81 - --n;
	    if (!n && k)
	    {
	      og = con;
	      oo = &og;
	    }
	    else
	      oo = 0;
	    while (++i < c)
	      if ((!(f & PATTERNS) || SOLVED(p, i)) && ((f & IMPLICIT) ? CANDIDATE(g, i) : CANDIDATE(&con, i)))
	        for (z = CANDIDATE(&con, i) ? MASK(&con, i) : CELL(&con, i); x = data.next[z]; z ^= x)
		  if (!oo || (MASK(oo, i) & x))
	          {
	            try = *g;
	            MOVE(&try, i, x);
	            if (n)
		    {
	              if (offon(sol, sub, p, &try, 0, n, i, f, part))
		        return 1;
		    }
	            else if (((f & EVERY) || (k || quick(&try, oo, 1) > 0) && subinsert(sol, &try)->count == 1) && (f & DISPLAY))
		    {
		      state.item = sol->root;
		      state.item->part = part;
		      if (state.minimize)
		      {
			APPLIED('V') = 1;
			minimize(&try, state.minimize, 0, 0);
		      }
		      else if (f & CLASSIFY)
	                list(&try, 'c', 1, 0);
		      else
	                search(&try, LIST, state.flags, &state.constraints.solve);
		      state.item = 0;
		      if (f & ONE)
		        return 1;
		    }
		    else if (FORMAT('o'))
		      list(&try, 'o', 1, 0);
	          }
	  }
	}
	return 0;
}

/*
 * execute off/on tour in gen from all collected puzzles
 */

static void
tour(Dict_t* sol, Dict_t* sub, Gen_t* gen)
{
	register Item_t*	ohead;
	register Item_t*	otail;
	register Item_t*	nhead;
	register Item_t*	ntail;
	Item_t*			ghead;
	Gen_t*			p;
	unsigned int		r;
	int			d;
	int			e;
	int			m;
	int			n;
	int			o;
	int			f;
	int			i;
	int			x;
	Grid_t			g;

	state.input->input = 0;
	x = !(gen->flags & NOEXEC);
	if (!(ntail = sol->tail) && x)
		return;
	d = 0;
	e = 0;
	f = (gen+1)->flags;
	nhead = 0;
	ghead = ((gen->flags & (ONE|RANDOM)) || (f & DELTA)) ? ntail : nhead;
	if (sol->head)
		for (i = 0; i < 81; i++)
			if (SOLVED(sol->head->grid, i))
				e++;
	if (r = gen->repeat)
		for (p = gen; p->flags != END; p++)
			if (p->flags & DELTA)
			{
				d = 1;
				break;
			}
			else if (p->group)
				break;
	while (gen->flags != END)
	{
		if (!r || !(f & CLUES) || r < e)
		{
			ohead = nhead ? nhead->next : sol->head;
			otail = ntail;
			nhead = sol->tail;
			m = gen->value;
			gen++;
			n = gen->value;
			f = gen->flags;
			e += n - m;
			if (r && (!(f & CLUES) || r < e) && (d || (f & (DELTA|DISPLAY)) == (DELTA|DISPLAY)))
				f &= ~DISPLAY;
			if (x)
			{
				for (;;)
				{
					if (!ohead->part)
						ohead->part = ohead->index;
					state.input->input = ohead->index;
					if (o = state.genoff)
					{
						g = data.empty;
						if (o < 0)
						{
							if (f & ALREADY)
								o = 81;
							else
								for (i = 0, o = 80; o > 0 && (!SOLVED(ohead->grid, o) || ++i < n); o--);
							for (; o > 0 && !SOLVED(ohead->grid, o - 1); o--);
						}
						for (i = 0; i < o; i++)
							if (SOLVED(ohead->grid, i))
								MOVE(&g, i, CELL(ohead->grid, i));
						ohead->grid = &g;
					}
					if (offon(sol, sub, ohead->grid, ohead->grid, m, n, o - 1, f, ohead->part))
						return;
					if (ohead == otail)
						break;
					ohead = ohead->next;
				}
				if (nhead == (ntail = sol->tail))
					break;
			}
			else
				printf("offon %ld/%d %3d %2d %2ld %s%s%s%s%s%s%s%s\n", (gen - state.gen + 1) / 2, gen->repeat + 1 - r, -m, n, gen->group && gen->repeat ? ((gen->group - state.gen) / 2 + 1) : 0, (f & CLASSIFY) ? " CLASSIFY" : "", (f & CLUES) ? " CLUES" : "", (f & DELTA) ? " DELTA" : "", (f & DISPLAY) ? " DISPLAY" : "", (f & EVERY) ? " EVERY" : "", (f & IMPLICIT) ? " IMPLICIT" : "", (f & MEMBER) ? " MEMBER" : "", (f & SEEN) ? " SEEN" : "");
			if (gen->group)
			{
				if (r && (!(f & CLUES) && r-- || r < e))
				{
					gen = gen->group;
					continue;
				}
				d = 0;
				if (!(f & DELTA))
					nhead = ghead;
			}
		}
		gen++;
		switch (gen->flags & (MEMBER|SEEN))
		{
		case MEMBER:
			gen->flags |= SEEN;
			/*FALLTHROUGH*/
		case 0:
			if (r = gen->repeat)
				for (p = gen; p->flags != END; p++)
					if (p->flags & DELTA)
					{
						d = 1;
						break;
					}
					else if (p->group)
						break;
			break;
		}
	}
}

static int
refill(register Input_t* p)
{
	register char*	s;
	register char**	f;
	register int	c;
	register int	d;
	int		r;

	for (;;)
	{
		if (p->sideline)
		{
		sideline:
			p->next = p->side[p->sideline];
			if (++p->sideline >= p->sidesave)
				p->sideline = p->sidesave = 0;
			p->line++;
			break;
		}
		*(s = p->next = p->buf) = 0;
		if (!p->fp || !fgets(s, sizeof(p->buf), p->fp))
		{
			if (p->sidesave)
				goto sideline;
			break;
		}
		if ((r = strlen(s)) > 1 && s[r-1] == '\n' && s[r-2] == '\r')
		{
			s[r-2] = '\n';
			s[r-1] = 0;
		}
		if (p->exemplar)
		{
			if (r < 18 && p->sidesave)
			{
				for (d = 0; s[d] == ' '; d++);
				if (s[d] == '\n')
				{
					p->line -= p->sidesave;
					goto sideline;
				}
			}
			if (p->sidesave < elementsof(p->side) && (r > 18 && r < 40 && strneq(s + 19, "    ", 4) && (d = 19) || r > 40 && r < 90 && strneq(s + 31, "    ", 4) && (d = 31)))
			{
				strcpy(p->side[p->sidesave++], s + d);
				s[d] = '\n';
				s[d+1] = 0;
			}
		}
		p->line++;
		if (state.input->cut)
		{
			d = state.input->separator;
			f = state.field;
			s = p->next;
			if (!d)
				while (isspace(*s))
					s++;
			if (*s != '#' && (*s != '/' || *(s + 1) != '/'))
				do
				{
					if (!d)
						while (isspace(*s))
							s++;
					*f++ = s;
					while (c = *s++)
						if (c == d || c == '\n' && !(c = 0) || !d && isspace(c))
						{
							*(s - 1) = 0;
							break;
						}
				} while (c);
			state.fields = f - state.field;
			if (state.input->cut > state.fields)
				continue;
			p->next = state.field[state.input->cut - 1];
		}
		else if (*s >= 'A' && *s <= 'J' && *(s + 1) == ' ' && *(s + 2) == '|' && *(s + 3) == ' ')
			p->next = s + 2;
		if (*p->next)
			break;
	}
	return *p->next++;
}

/*
 * read one valid puzzle
 * invalid puzzles noted and skipped
 * 0 on eof
 */

static int
input(register Input_t* f, register Grid_t* g, int template)
{
	register int	i;
	register int	j;
	register int	k;
	register int	c;
	register int	p;
	register int	n;
	register int	x;
	register int	q;
	register int	v;
	char*		s;
	char*		t;
	int		a;
	int		b;
	int		l;
	int		op;
	int		sp;
	char		tag[sizeof(state.input->ident)];
	unsigned char	set[81];

	if (template)
	{
		if (template != 't')
		{
			f->exemplar = 1;
			f->finned = data.empty;
		}
		else
			f->template = 1;
		if (state.header)
		{
			state.header = 0;
			printf("%s%s\n", MAGIC, tmpmagic);
		}
	}
	state.multiple = 0;
	f->project = 0;
	if (f->template)
		memset(f->tmpcell, EMPTY, sizeof(f->tmpcell));
	if (f->original)
		f->original = 1;
	if (f->sudz)
	{
		if (sudzget(f->sudz) <= 0)
			return 0;
		*g = data.empty;
		if (state.map.aut)
		{
			for (i = 0; i < 81; i++)
				if (f->sudz->grid[i])
					MOVE(g, state.mx[i], data.blt[state.map.map[f->sudz->grid[i]]]);
		}
		else
		{
			for (i = 0; i < 81; i++)
				if (f->sudz->grid[i])
					MOVE(g, i, data.blt[f->sudz->grid[i]]);
		}
		return 1;
	}
	for (;;)
	{
		*g = data.empty;
		a = 0;
		p = 0;
		k = '-';
		l = -1;
		n = 0;
		q = 0;
		while (get(f, c))
		{
			i = state.map.aut ? state.mx[p] : p;
			if (c == '<' && file(f))
			{
				*(t = tag) = 0;
				while (get(f, c))
					if (c == '>')
					{
						*t = 0;
						t = tag;
						n = !streq(t, state.input->xml);
						break;
					}
					else if (c == '\n' && *tag != '!' && *tag != '?')
					{
						n = 0;
						break;
					}
					else if (t < &tag[sizeof(tag)-1])
						*t++ = c;
			}
			else if (n)
				/* skip xml/html tag */;
			else if (f->template && (c == 'X' || c == 'x' || c == 'O' || c == 'o'))
			{
				if (f->original)
					f->original = -1;
				f->project |= f->tmpcell[i] = (c == 'X' || c == 'x') ? MUST : DONTCARE;
				goto space;
			}
			else if (f->exemplar && (template != 'P' || token[c] && (c = 'X')) && ((x = texem[c]) && (s = peek(f)) && (template == 'P' || *s == 0 || isspace(*s) || texem[*(unsigned char*)s]) || !p && c == '{'))
			{
				if (x)
				{
					if (!p)
						sp = *s == 0 || *s == ' ' || *(s+1) == ' ';
					if (sp && c == '*')
						switch (*s)
						{
						case '*':
							get(f, c);
							x = EXMP_ELIM;
							break;
						case 'X':
							get(f, c);
							x = EXMP_BASE_ELIM;
							break;
						}
					f->finned.cell[i] = g->cell[i] = x;
					goto space;
				}
				else
				{
					for (j = 0; j < 3; j++)
					{
						s = peek(f);
						while (get(f, c) == ' ' || c == '\t' || c == ',');
						for (k = x = 0; c && c >= '0' && c <= '7'; k++)
						{
							x = (x<<3) + (c - '0');
							get(f, c);
						}
						if (!k || !c || c == '\n')
						{
							if (file(f))
								fprintf(stderr, "%s: %s:%lu: invalid exemplar mask \"%s\"\n", command, f->label, f->line, s);
							else
								fprintf(stderr, "%s: invalid exemplar mask \"%s\"\n", command, s);
							return 0;
						}
						for (k = 1<<27; k >>= 1; p++)
							if (!(k & x))
							{
								i = state.map.aut ? state.mx[p] : p;
								f->finned.cell[i] = g->cell[i] = EXMP_NOT;
							}
					}
					while (c == ' ' || c == '\t' || c == ',')
						get(f, c);
					if (c != '}')
					{
						if (file(f))
							fprintf(stderr, "%s: %s:%lu: exemplar mask {...} imbalance\n", command, f->label, f->line);
						else
							fprintf(stderr, "%s: exemplar mask {...} imbalance\n", command);
						return 0;
					}
					f->begin = f->line;
					f->input++;
					f->ordinal++;
					f->puzzle++;
					p = 81;
					break;
				}
			}
			else if (file(f) && (c == '"' || c == '[' && (c = ']') || identify(f, c, l) && (c = '\n')))
			{
				x = c == '\n';
				f->ordinal = 0;
				t = tag;
				while (get(f, j))
				{
					if (j == c)
						break;
					switch (x)
					{
					case 1:
						if (isspace(j))
							x++;
						continue;
					case 2:
						if (isspace(j))
							continue;
						x++;
						break;
					}
					if (t < &tag[sizeof(tag)-1])
						*t++ = j;
				}
				if (!a)
				{
					*t = 0;
					if (*tag)
					{
						strcpy(f->ident, tag);
						a = c == '"';
					}
				}
			}
			else if ((x = token[c]) || c == '{')
			{
				if (!x)
				{
					k = 0;
					while (get(f, c))
						if (c == '}')
							break;
						else if (c = token[c])
							x |= c;
					while ((c = *peek(f)) && MARK(c,k))
						get(f, c);
					if (data.count[x] != 1)
					{
						g->cell[i] = x;
						goto space;
					}
				}
				else if (l)
				{
					if (token[*(unsigned char*)peek(f)] || *peek(f) == '+' || *peek(f) == '-' || isalpha(*peek(f)))
					{
						c = x;
						for (t = peek(f);; t++)
							if (token[*(unsigned char*)t])
								c |= token[*(unsigned char*)t];
							else if (*t != '+' && *t != '-' && !isalpha(*t))
								break;
						if (l < 0 && (t - peek(f)) < 9)
						{
							for (s = t; *s == '$' || *s == '#' || *s == '@' || *s == '%' || *s == '*' || isalpha(*s); s++);
							if (*s == ' ' || *s == '\t')
							{
								t = s;
								l = 1;
							}
						}
						if (l > 0 || (t - peek(f)) < 9 && (*t == ' ' || *t == '\t'))
						{
							l = 1;
							g->cell[i] = c;
							while ((c = *t) && MARK(c,k))
								t++;
							c = *(peek(f) = t);
							goto space;
						}
						l = 0;
					}
					else if (*peek(f) == '.' || *peek(f) == '-')
					{
						l = 0;
					}
				}
				if (!p)
				{
					f->begin = f->line;
					f->input++;
					f->ordinal++;
					f->puzzle++;
				}
				else if (p >= 81)
					break;
				if (x & MASK(g, i))
					MOVE(g, i, x);
				else
				{
					q = 1;
					if (file(f))
						fprintf(stderr, "%s: %s:%lu: invalid cell %s=%c\n", command, f->label, f->line, fmtpos(i), c);
					else
						fprintf(stderr, "%s: invalid cell %s=%c in %s\n", command, fmtpos(i), c, base(f));
				}
				if (++p >= 81)
					break;
			}
			else if (MARK(c,k) || c == '.' && *peek(f) == '-')
			{
				k = 0;
				if (c == '|')
				{
					c = *peek(f);
					if ((!f->template || c != 'X' && c != 'x' && c != 'O' && c != 'o') && (isalpha(c) || MARK(c,k)))
					{
						get(f, c);
						if (*peek(f) != c)
							l = 1;
					}
				}
				else if (*peek(f) == '.')
					get(f, c);
			}
			else if (!isspace(c) && c != '!' && c != ',' && c != '\'' && c != '_' && (l <= 0 || !isalpha(c)))
			{
				if (c != k)
					k = 0;
				if (c != '.')
					l = 0;
			space:
				if (!p++)
				{
					f->begin = f->line;
					f->input++;
					f->ordinal++;
					f->puzzle++;
				}
				else if (p >= 81)
					break;
			}
		}
		if (p < 81)
		{
			if (p)
			{
				if (f->label)
					fprintf(stderr, "%s: %s:%lu: unexpected EOF\n", command, f->label, f->line);
				else
					fprintf(stderr, "%s: incomplete puzzle operand\n", command);
			}
			return 0;
		}
		if (!a)
		{
			while ((x = *peek(f)) && (isspace(x) && x != '\n' || MARK(x, k) && x != '"' && x != '#' && x != '['))
				get(f, c);
			if (x == '"' || x == '#' && (x = '\n') || x == '[' && (x = ']'))
			{
				get(f, c);
				s = f->ident;
				t = s + sizeof(f->ident) - 1;
				j = x == '\n';
				while (get(f, c))
				{
					if (c == x)
						break;
					switch (j)
					{
					case 1:
						if (isspace(c))
							j++;
						continue;
					case 2:
						if (isspace(c))
							continue;
						j++;
						break;
					}
					if (s < t)
						*s++ = c;
				}
				*s = 0;
				a = 1;
			}
		}
		if (!q && c)
		{
			if (!state.input->cut && file(f) && c != '\n')
			{
				while (get(f, c) && MARK(c, k));
				unget(f, c);
			}
			if (!state.valid)
				while (f->argv && *f->argv && (s = alter(*f->argv, set, &op, &b)))
				{
					f->argv++;
					while (!q)
					{
						n = 0;
						while ((j = set[n++]) < 81)
						{
							v = CANDIDATE(g, j) ? MASK(g, j) : g->cell[j];
							if (b)
							{
								if (op != '^' && (b & ~v))
									q = 1;
							}
							else if (CANDIDATE(g, j))
								q = 1;
							else
							{
								UNDO(g, j, g->cell[j]);
								continue;
							}
							if (q)
							{
								if (file(f))
									fprintf(stderr, "%s: %s:%" LL "u: invalid move %s %s %c %s\n", command, f->label, f->begin, fmtpos(j), fmtset(v), op, fmtset(b));
								else
									fprintf(stderr, "%s: invalid move %s %s %c %s\n", command, fmtpos(j), fmtset(v), op, fmtset(b));
								q = 1;
								break;
							}
							if (CANDIDATE(g, j))
							{
								if (op == '^')
									v &= ~b;
								else
									v = b;
								if (data.count[v] == 1)
									MOVE(g, j, v);
								else
									g->cell[j] = v;
							}
						}
						if (!(s = alter(s, set, &op, &b)))
							break;
					}
				}
		}
		if (!q)
			break;
		state.errors++;
	}
	if (f->project || f->template)
	{
		if ((f->project & (DONTCARE|MUST)) || (state.gen[0].flags & PATTERNS))
		{
			q = CLUE;
			k = 0;
		}
		else
		{
			q = MUST;
			k = state.template == 't';
		}
		for (i = 0; i < 81; i++)
			if (f->tmpcell[i] == EMPTY)
			{
				if (SOLVED(g, i))
					f->project |= f->tmpcell[i] = q;
				else if (CELL(g, i) != 0x1ff)
				{
					f->project |= f->tmpcell[i] = MUST;
					k = 0;
				}
			}
		if (k)
			*g = data.empty;
	}
	return 1;
}

typedef struct Unbiased_s
{
	unsigned int		rookery[17973][3];
	unsigned short		pick[1808];
	unsigned int		next[10];
} Unbiased_t;

/*
 * initialize unbiased rookeries
 */

static Unbiased_t*
unbiasedinit(void)
{
	register Unbiased_t*	u;
	register int		n, i1, i2, i3, i4, i5, i6, i7, i8, i9;

	if (!(u = newof(0, Unbiased_t, 1, 0)))
	{
		fprintf(stderr, "out of space [unbiased]\n");
		fini(1);
	}
	ROOK(u->rookery[0], 0, 3, 6, 1, 4, 7, 2, 5, 8);
	u->next[0] = 0;
	n = 1;
	for (i1 = 1; i1 < 9; i1++)
	{
	 u->next[i1] = n;
	 for (i2 = 0; i2 < 9; i2++)
	  if (i2 != 3 && data.band[i2] != data.band[i1])
	   for (i3 = 0; i3 < 9; i3++)
	     if (i3 != 6 && data.band[i3] != data.band[i2] && data.band[i3] != data.band[i1])
	      for (i4 = 0; i4 < 9; i4++)
	        if (i4 != 1 && i4 != i1 && i4 != i2 && i4 != i3)
	         for (i5 = 0; i5 < 9; i5++)
		   if (i5 != 4 && i5 != i1 && i5 != i2 && i5 != i3 && data.band[i5] != data.band[i4])
	             for (i6 = 0; i6 < 9; i6++)
		      if (i6 != 7 && i6 != i1 && i6 != i2 && i6 != i3 && data.band[i6] != data.band[i5] && data.band[i6] != data.band[i4])
	               for (i7 = 0; i7 < 9; i7++)
	                if (i7 != 2 && i7 != i1 && i7 != i2 && i7 != i3 && i7 != i4 && i7 != i5 && i7 != i6)
	                 for (i8 = 0; i8 < 9; i8++)
	                  if (i8 != 5 && i8 != i1 && i8 != i2 && i8 != i3 && i8 != i4 && i8 != i5 && i8 != i6 && data.band[i8] != data.band[i7])
	                   for (i9 = 0; i9 < 9; i9++)
	                    if (i9 != 8 && i9 != i1 && i9 != i2 && i9 != i3 && i9 != i4 && i9 != i5 && i9 != i6 && data.band[i9] != data.band[i8] && data.band[i9] != data.band[i7])
			    {
			     ROOK(u->rookery[n], i1, i2, i3, i4, i5, i6, i7, i8, i9);
			     n++;
			    }
	}
	u->next[i1] = n;
	return u;
}

/*
 * generate unbiased solution in g
 * ok, so its not really unbiased
 * its a decent time tradeoff
 */

static void
unbiased(Grid_t* g)
{
	register Unbiased_t*	u;
	register int		n, i1, i2, i3, i4, i5, i6, i7, i8;
	unsigned int		mask[3];
	unsigned short		grid[9];

	static Unbiased_t*	uu;

	if (!(u = uu))
	  u = uu = unbiasedinit();
	grid[0] = 0;
	for (;;)
	{
	  n = u->next[2] - (i3 = u->next[1]);
	  grid[1] = i3 += RAND(n);
	  mask[0] = u->rookery[0][0] | u->rookery[i3][0];
	  mask[1] = u->rookery[0][1] | u->rookery[i3][1];
	  mask[2] = u->rookery[0][2] | u->rookery[i3][2];
	  for (i2 = 2;; i2++)
	  {
	    i4 = u->next[i2 + 1];
	    n = 0;
	    for (i3 = u->next[i2]; i3 < i4; i3++)
	      if (!(mask[0] & u->rookery[i3][0]) && !(mask[1] & u->rookery[i3][1]) && !(mask[2] & u->rookery[i3][2]))
	        u->pick[n++] = i3;
	    if (!n)
	      break;
	    grid[i2] = i4 = u->pick[RAND(n)];
	    mask[0] |= u->rookery[i4][0];
	    mask[1] |= u->rookery[i4][1];
	    mask[2] |= u->rookery[i4][2];
	    if (i2 >= 8)
	    {
	      permute();
	      for (i1 = 0; i1 < 9; i1++)
	      {
	        i2 = grid[i1];
	  	for (i3 = i4 = 0; i3 < 3; i3++)
	  	{
	  	  i5 = u->rookery[i2][i3];
	  	  for (i6 = 18; i6 >= 0; i6 -= 9)
	  	  {
	  	    i7 = (i5 >> i6) & ((1<<9) - 1);
	  	    for (i8 = 0; i7 >>= 1; i8++);
	  	      g->cell[INDEX(state.pr[i4++],state.pc[i8])] = data.bit[i1];
	  	  }
	  	}
	      }
	      return;
	    }
	  }
	}
}

/*
 * generate a random valid solution grid
 */

static void
complete(register Grid_t* g)
{
	register int		i;
	register int		j;
	register int		x;

	if (state.permute && state.arrangement && state.arrangement++ <= state.permute)
	{
		if (state.same)
			state.arrangement--;
		else
			shuffle(g, 1);
	}
	else
	{
		for (;;)
		{
			if (state.catalog.fp)
			{
				if (!input(&state.catalog, g, 0))
					fini(0);
				if (state.input->original)
					break;
				if (solve(g, GUESS, DEPTHFIRST|RECORD|RANDOMBEST, &state.constraints.quick) > 0)
				{
					*g = data.empty;
					for (i = 0; i < 81; i++)
					{
						x = (j = CANDIDATE(g, i)) ? MASK(g, i) : g->cell[i];
						if (!(state.hit[i] & x) || (state.hit[i] & ~x))
							break;
						if (j)
							MOVE(g, i, state.hit[i]);
					}
					if (i >= 81)
						break;
				}
			}
			else
			{
				unbiased(g);
				break;
			}
		}
		state.complete++;
		state.arrangement = 1;
	}
}

/*
 * project a random solution onto the template grid
 * shuffle the solution shake times to reduce the
 * number of solutions in the projection
 */

static void
project(Grid_t* grid, unsigned int flags, unsigned long shake)
{
	register int	i;
	register int	j;
	register int	k;
	register int	n;
	register int	z;
	int		b;
	int		u;
	unsigned char	set[81];
	unsigned char	pr[9];
	unsigned char	pc[9];
	Grid_t		sol;
	Grid_t		try;

	u = 81;
	state.flags &= ~VERBOSE;
	state.worse = TEMPLATE;
	n = state.verbose ? state.worse : 0;
	state.permute = shake;
	if (state.input->prev->original > 0)
	{
		state.arrangement = 1;
		sol = *grid;
	}
	else
	{
		state.arrangement = 0;
		complete(&sol);
	}
	for (;;)
	{
		try = data.empty;
		for (i = 0; i < 81; i++)
			if (state.input->tmpcell[i] != EMPTY)
				MOVE(&try, i, sol.cell[i]);
		state.solutions = 0;
		solve(&try, GUESS, DEPTHFIRST|ENUMERATE|UNIQUE, &state.constraints.quick);
		if (state.solutions > 0 && state.solutions < n)
		{
			n = state.solutions;
			if (state.solutions == 2)
			{
				n++;
				for (i = z = 0; i < 81; i++)
					if (state.sol[0].cell[i] != state.sol[1].cell[i])
						z++;
				if (z < u)
				{
					u = z;
					printf("# %6lu %8lu %6d/%-2d  ", state.complete, state.arrangement, state.solutions, z);
				}
				else
					z = 0;
			}
			else
			{
				printf("# %6lu %8lu %6d     ", state.complete, state.arrangement, state.solutions);
				z = 1;
			}
			if (z)
			{
				for (i = 0; i < 81; i++)
					if (state.input->tmpcell[i] != EMPTY)
						putchar(name[data.ident[state.sol[0].cell[i]]]);
					else
						putchar('.');
				putchar('\n');
				fflush(stdout);
			}
		}
		if (state.solutions == 1)
		{
			state.worse = state.solutions;
			sol = state.sol[0];
			try = data.empty;
			for (i = 0; i < 81; i++)
				if (state.input->tmpcell[i] != EMPTY)
					MOVE(&try, i, sol.cell[i]);
			if (search(&try, LIST, DEPTHFIRST|state.flags, &state.constraints.quick) > 0 && state.loop && state.shown >= state.loop)
				break;
		}
		else if (state.solutions == 2 && state.solutions <= state.worse)
		{
			/*
			 * unavoidables are the key
			 * this code could take better advantage ...
			 */

			for (i = 0; i < 81; i++)
				set[i] = state.sol[0].cell[i] != state.sol[1].cell[i];
			sol = state.sol[0];
			for (b = 0; b < 81; b++)
				if (set[b])
					for (z = 0; z < 81; z++)
						if (state.input->tmpcell[z] != EMPTY)
						{
							exchange(pr, pc, b, z);
							try = data.empty;
							for (i = k = 0; i < 9; i++)
								for (j = 0; j < 9; j++, k++)
									if (state.input->tmpcell[k] != EMPTY)
										MOVE(&try, k, sol.cell[data.swap[0][pr[i]][pc[j]]]);
							state.solutions = 0;
							solve(&try, GUESS, DEPTHFIRST|ENUMERATE|UNIQUE, &state.constraints.quick);
							if (state.solutions == 1)
							{
								try = data.empty;
								for (i = 0; i < 81; i++)
									if (state.input->tmpcell[i] != EMPTY)
										MOVE(&try, i, state.sol[0].cell[i]);
								if (search(&try, LIST, DEPTHFIRST|state.flags, &state.constraints.quick) > 0 && state.loop && state.shown >= state.loop)
									return;
							}
						}
		}
		else if (state.solutions > 0 && state.solutions < state.worse)
		{
			state.worse = state.solutions;
			sol = state.sol[0];
		}
		complete(&sol);
	}
}

/*
 * enumerative template() (a quick() variant)
 */

#define BACK(g,m,i)		(PROP(g,i,CELL(g,i)),CELL(g,i)=(m)[i])

static void
tempenum(Grid_t* g, unsigned int flags, unsigned char* cell, int depth)
{
	int		i;
	int		j;
	int		k;
	int		m;
	int		n;
	int		x;
	int		z;
	int		level;
	Grid_t		grid;
	Grid_t		tmp;
	Try_t		try[81];
	unsigned short	mask[81];

	grid = *g;
	try[0].candidates = 0;
	try[0].cell = 0;
	for (i = 0; i < depth; i++)
	{
		try[i].free = cell[i];
		mask[cell[i]] = MASK(&grid, cell[i]);
	}
	level = 0;
	for (;;)
	{
		m = 10;
		for (j = level; j < depth; j++)
		{
			i = try[j].free;
			if (!(x = MASK(&grid, i)))
			{
				m = 11;
				break;
			}
			if (m > (n = data.count[x]))
			{
				k = j;
				z = x;
				if ((m = n) == 1)
					break;
			}
		}
		if (m < 10)
		{
			try[level+1].candidates = z;
			try[level+1].cell = try[k].free;
			if (k != level)
			{
				j = try[level].free;
				try[level].free = try[k].free;
				try[k].free = j;
			}
			level++;
		}
		else
		{
			if (m == 10)
			{
				tmp = grid;
				if ((m = quick(&tmp, 0, 0)) > 0)
				{
					list(&grid, 'h', VERIFIED, 0);
					if (state.minimize)
					{
						tally(&grid, 1);
						minimize(&grid, state.minimize, 0, 1);
					}
					else
						search(&grid, LIST, state.flags, &state.constraints.solve);
					if (state.loop && state.shown >= state.loop)
						return;
				}
				else if (!m && (flags & MULTIPLE) && (!state.filter || eval(&grid, state.filter)))
					list(&grid, 's', 0, 0);
			}
			BACK(&grid, mask, try[level].cell);
		}
		while (!(x = data.next[try[level].candidates]))
		{
			if (--level <= 0)
				return;
			BACK(&grid, mask, try[level].cell);
		}
		try[level].candidates ^= x;
		MOVE(&grid, try[level].cell, x);
	}
}

/*
 * random template()
 */

static void
temprand(Grid_t* g, unsigned int flags, unsigned char* cell, int n, int shake)
{
	register int	i;
	register int	j;
	register int	k;
	register int	m;
	register int	x;
	register int	z;
	unsigned char	pick[81];
	Grid_t		try;
	Grid_t		tmp;
	int64_t		hit;

	hit = state.list;
	if (flags & IMPLICIT)
		tmp = *g;
	do
	{
		if ((flags & RANDOM) && !state.minimize && hit != state.list)
		{
			hit = state.list;
			try = tmp;
		}
		else
			try = (flags & IMPLICIT) ? tmp : *g;
		memcpy(pick, cell, n);
		m = n;
		for (;;)
		{
			j = RAND(n);
			while (pick[j] >= 81)
				if (++j >= n)
					j = 0;
			i = pick[j];
			pick[j] = 81;
			if (!(z = MASK(&try, i)))
				break;
			if ((k = data.count[z]) > 1)
			{
				k = RAND(k);
				do
				{
					x = data.next[z];
					z ^= x;
				} while (k--);
			}
			else
				x = z;
			MOVE(&try, i, x);
			if (!--m)
			{
				tmp = try;
				if ((m = quick(&try, 0, 0)) > 0)
				{
					list(&tmp, 'h', VERIFIED, 0);
					if (state.minimize)
					{
						tally(&tmp, 1);
						minimize(&tmp, state.minimize, 0, 1);
					}
					else
						search(&tmp, LIST, state.flags, &state.constraints.solve);
					if (state.loop && state.shown >= state.loop)
						return;
				}
				else if (!m && (flags & MULTIPLE) && (!state.filter || eval(&tmp, state.filter)))
					list(&tmp, 's', 0, 0);
				break;
			}
		}
	} while (!shake || --shake);
}

/*
 * fill in partial clue template
 * and check for valid grids
 */

static void
template(Grid_t* g, unsigned int flags, int shake, int enumerate, int pattern)
{
	register int	i;
	register int	m;
	register int	n;
	unsigned int	state_flags;
	unsigned char	cell[81];

	for (i = n = m = 0; i < 81; i++)
		if (state.input->tmpcell[i] != EMPTY && !SOLVED(g, i))
		{
			m += TALLY(g, i);
			cell[n++] = i;
		}
	enumerate = (flags & EVERY) || !enumerate || !(flags & RANDOM) && m <= enumerate;
	if (TRACE(state.flags) > 0)
		printf("template %d cell%s %d candidate%s => %s\n", n, GRAMNUM(n), m, GRAMNUM(m), !m ? "empty" : enumerate ? "enumerate" : "random");
	if (m)
	{
		state_flags = state.flags;
		state.flags &= ~VERBOSE;
		if (enumerate)
			tempenum(g, flags, cell, n);
		else
			temprand(g, flags, cell, n, pattern);
		state.flags = state_flags;
	}
}

/*
 * alternative pattern enumeration
 */

typedef struct Every_s
{
	unsigned short	candidates;
	unsigned short	used;
	unsigned char	cell;
} Every_t;

static void
every(Grid_t* g, int flags, int keep, int fill)
{
	char*		t;
	int		i;
	int		k;
	int		x;
	int		best;
	int		depth;
	int		level;
	int		range;
	Grid_t		grid;
	Grid_t		last;
	Grid_t		tmp;
	Every_t		try[81];
	unsigned short	hit[81];
	char		set[16];

	try[0].candidates = 0;
	try[0].cell = 0;
	depth = -1;
	for (i = 0; i < 81; i++)
		if (SOLVED(g, i))
			try[++depth].cell = i;
	if (range = !!(flags & RANDOM))
	{
		while (!input(state.input, &last, state.template))
			if (!push(state.input))
			{
				fprintf(stderr, "%s: end of range puzzle expected\n", command);
				return;
			}
		fill = 0;
		keep = depth;
	}
	else if (keep)
		keep--;
	grid = data.empty;
	if (keep)
	{
		if (fill >= 1 && fill <= 9)
			g->cell[try[keep].cell] = data.blt[fill];
		for (level = best = 0;; level++)
		{
			i = try[level].cell;
			if (!(x = MASK(&grid, i)))
				break;
			try[level].used = best |= g->cell[i];
			if (flags & ONE)
				x = 0;
			else
				while (k = data.next[x])
				{
					x ^= k;
					if (k == g->cell[i])
						break;
				}
			try[level].candidates = x;
			MV(&grid, hit, i, g->cell[i]);
			if (level >= keep)
				break;
		}
		if (range)
			keep = 0;
	}
	else if (fill)
	{
		snprintf(set, sizeof(set), "%d", fill);
		t = set;
		level = -1;
		best = 0;
		while (x = token[*(unsigned char*)t++])
		{
			i = try[++level].cell;
			if (!MASK(&grid, i))
				break;
			try[level].used = best |= x;
			try[level].candidates = 0;
			MV(&grid, hit, i, x);
		}
	}
	else
	{
		MV(&grid, hit, try[0].cell, data.bit[0]);
		try[0].candidates = 0;
		try[0].used = data.bit[0];
		level = 0;
	}
	for (;;)
	{
		if (level >= depth)
		{
			if (data.count[try[level].used] >= 8)
			{
				if (range && memcmp(grid.cell, last.cell, sizeof(grid.cell)) >= 0)
					return;
				tmp = grid;
				if (quick(&tmp, 0, 0) > 0)
				{
					tmp = grid;
					list(&tmp, 'h', VERIFIED, 0);
					if (state.minimize)
					{
						tally(&tmp, 1);
						minimize(&tmp, state.minimize, 0, 1);
					}
					else
						search(&tmp, LIST, state.flags, &state.constraints.solve);
					if (state.loop && state.shown >= state.loop)
						return;
				}
				else if (FORMAT('o'))
					list(&tmp, 'o', 1, 0);
			}
			UN(&grid, hit, try[level].cell);
		}
		else if (x = MASK(&grid, try[level+1].cell))
		{
			level++;
			try[level].candidates = x;
		}
		else
			UN(&grid, hit, try[level].cell);
		for (;;)
		{
			while (!(x = data.next[try[level].candidates]))
			{
				if (--level <= keep)
					return;
				UN(&grid, hit, try[level].cell);
			}
			if (try[level-1].used & x)
				try[level].candidates ^= x;
			else
				try[level].candidates = 0;
			try[level].used = try[level-1].used | x;
			MV(&grid, hit, try[level].cell, x);
			tmp = grid;
			if (propagate(&tmp, &best, FIRST, DEPTHFIRST|BATCH|STEP, &state.constraints.solve) >= 0)
				break;
			UN(&grid, hit, try[level].cell);
		}
	}
}

/*
 * player's forum pattern game template generation
 */

static void
pattern(Grid_t* g, unsigned int flags, int shake, int rounds, int fill, int slop)
{
	int		i;
	int		j;
	int		k;
	int		m;
	int		n;
	int		p;
	Grid_t		try;
	unsigned char	keep[9];
	unsigned char	cell[81];
	unsigned char	pick[81];

	if (flags & EVERY)
	{
		every(g, flags, rounds, fill);
		return;
	}
	m = n = 0;
	for (j = 0; j < 27; j++)
	{
		for (i = k = 0; i < 9; i++)
			k += SOLVED(g, data.path[j][i]);
		if (m < k)
		{
			m = k;
			n = j;
		}
	}
	j = n / 9;
	k = data.rcb[j][data.path[n][0]];
	for (i = n = p = 0; i < 81; i++)
		if (SOLVED(g, i))
		{
			if (data.rcb[j][i] == k)
				keep[p++] = i;
			else
				cell[n++] = i;
		}
	fill = (n * fill) / 100;
	slop = (fill * slop) / 100;
	if (TRACE(state.flags) > 0)
		printf("pattern %d cell%s fill=%d slop=%d keep=%d\n", n, GRAMNUM(n), fill, slop, p);
	fill -= slop;
	slop = 2 * slop + 1;
	do
	{
		try = data.empty;
		memcpy(pick, cell, n);
		m = n;
		k = fill + RAND(slop);
		for (j = 0; j < p; j++)
		{
			i = keep[j];
			MOVE(&try, i, CELL(g, i));
		}
		do
		{
			j = RAND(m);
			i = pick[j];
			MOVE(&try, i, CELL(g, i));
			for (m--; j < m; j++)
				pick[j] = pick[j+1];
		} while (--k && m);
		for (i = 0; i < 81; i++)
			if (SOLVED(&try, i))
				state.input->tmpcell[i] = CLUE;
			else if (SOLVED(g, i))
				state.input->tmpcell[i] = MUST;
			else
				state.input->tmpcell[i] = EMPTY;
		template(&try, flags, 0, 5*9, shake);
	} while ((!state.loop || state.shown < state.loop) && (!rounds || --rounds));
}

typedef struct Cos_s
{
	unsigned int	hit;
	unsigned short	set[81][9][81];
	unsigned short	cos[81];
} Cos_t;

static int
spread(Cos_t* cos, int i, int y, int x)
{
	int		j;

	cos->hit++;
	cos->cos[i] = x;
	for (j = 0; j < 81; j++)
	  if ((x = cos->set[i][y][j]) && (cos->cos[j] ? cos->cos[j] != x : !spread(cos, j, data.ordinal[x], x)))
	    return 0;
	return 1;
}

/*
 * search bands for canonical members
 * next controls order, data.next lo-hi, data.txen hi-lo
 * first!=0 stops at the first member in the order
 */

static void
bandits(Grid_t* g, unsigned char* sol, int b1, const unsigned short* next, int first)
{
	int		i;
	int		k;
	int		x;
	int		b2;
	int		b3;
	Canon_t*	can;
	unsigned short	candidates[81];

	k = 0;
	i = 27;
	for (;;)
	{
		if (i == 80)
		{
			state.input->ordinal++;
			if (k)
			{
				k = 0;
				if (data.gangster[b3 = bandindex(sol, 2, 0)] < b1)
				{
					state.input->begin++;
					do
					{
						UNDO(g, i, g->cell[i]);
					} while (--i > 53);
					goto prune;
				}
				if (b3 < b1)
				{
					state.input->begin++;
					goto prune;
				}
			}
			state.input->input++;
			if (can = bandcanon(sol))
			{
				state.input->puzzle++;
				state.hit = g->cell;
				list(g, 's', VERIFIED, can);
				if (first)
					return;
			}
			goto prune;
		}
		else if (i == 53 && ((b2 = bandindex(sol, 1, 0)) < b1 || b2 > b1 && !canon(0, sol, 6, 1) || bbindex(sol, 3) < b1 || bbindex(sol, 4) < b1 || bbindex(sol, 5) < b1))
		{
			k = 1;
			state.multiple++;
			goto prune;
		}
		else
		{
			i++;
			candidates[i] = MASK(g, i);
			if (i == 54 && !first)
				candidates[i] = next[candidates[i]];
		}
		while (!(x = next[candidates[i]]))
		{
			if (--i <= 27)
				return;
		prune:
			UNDO(g, i, g->cell[i]);
		}
		candidates[i] ^= x;
		MOVE(g, i, x);
		sol[i] = data.ident[x];
	}
}

#define SUPERFLUOUS(g,i,j,k,z,t,r,c) \
	do \
	{ \
		if (z & t) \
		{ \
			k = INDEX(r,c); \
			UNDO(g, k, (g)->cell[k]); \
		} \
	} while (0)

#define SYMMETRIZE(g,s,h,i,j,k,n,z,t,r,c) \
	do \
	{ \
		if (z & t) \
		{ \
			k = INDEX(r,c); \
			if (!h[k]) \
			{ \
				h[k] = 1; \
				if (CANDIDATE(g, k)) \
				{ \
					MOVE(g, k, (s)->cell[k]); \
					n--; \
				} \
			} \
		} \
	} while (0)


/*
 * -g and default generators
 */

static int
generate_b_init(void)
{
	register int	i;
	int		b;
	int		x;
	Grid_t		grid;
	Grid_t		try;
	Grid_t		sup;
	unsigned short*	hit;
	unsigned char	set[81];

	BANDINIT();
	grid = data.empty;
	for (i = 0; i < 9; i++)
		SAVE(&grid, i, data.bit[i]);
	SAVE(&grid, 9, data.bit[3]);
	SAVE(&grid, 10, data.bit[4]);
	SAVE(&grid, 27, data.bit[1]);
	x = state.gen[1].value;
	for (b = state.gen[0].value; b <= x; b++)
	{
		state.count.time = state.previous = usr();
		try = grid;
		for (i = 0; i < 16; i++)
			SAVE(&try, i+11, token[(unsigned char)data.bands[b][i]]);
		for (i = 0; i < 81; i++)
			set[i] = data.ident[state.hit[i]];
		snprintf(state.input->ident, sizeof(state.input->ident), "%03d", b+1);
		state.input->puzzle = state.input->input = 0;
		state.related = state.shown;
		list(&try, 'b', NOPUZZLE, 0);
		hit = state.hit;
		if (!state.minimize)
			bandits(&try, set, b, data.next, 0);
		else if (state.minimize < 0)
		{
			sup = try;
			bandits(&sup, set, b, data.next, -1);
			bandits(&try, set, b, data.txen, +1);
		}
		else if (state.minimize == 1)
			bandits(&try, set, b, data.next, -1);
		else if (state.minimize == 2)
			bandits(&try, set, b, data.txen, +1);
		state.hit = hit;
		state.valid += state.input->puzzle;
		state.input->ordinal += state.input->input;
		state.total.time += (state.stats.time = usr() - state.count.time);
		list(&try, 'a', NOPUZZLE, 0);
	}
	return 1;
}

static int
generate_B_init(void)
{
	int		i;
	int		a;
	int		b;

	a = (state.gen[0].flags & ALREADY);
	if (state.gen[0].value == 44)
	{
		for (i = 0, b = 1; i < elementsof(data.bands); i++)
			if (a || data.gang44[i] == b)
			{
				printf("%02d %s%s\n", data.gang44[i], BANDPREFIX, data.bands[i]);
				b++;
			}
	}
	else if (a)
		for (i = 0; i < elementsof(data.bands); i++)
			printf("%03d %02d %s%s\n", i+1, data.gang44[i], BANDPREFIX, data.bands[i]);
	else
		for (i = 0; i < elementsof(data.bands); i++)
			printf("%03d %s%s\n", i+1, BANDPREFIX, data.bands[i]);
	return 1;
}

static int
generate_d(Grid_t* g, Grid_t* t, int z)
{
	register int	i;
	register int	j;
	register int	m;
	register int	c;
	unsigned char	set[81];

	*g = data.empty;
	memset(set, 0, 81);
	c = state.gen[0].value;
	i = state.gen[1].value;
	m = 0;
	while (i--)
		m |= data.bit[i];
	for (;;)
	{
		j = RAND(81);
		if (CANDIDATE(g, j) && (CELL(t, j) & m))
		{
			set[j] = 1;
			MOVE(g, j, CELL(t, j));
			if (--c <= 0)
				break;
		}
	}
	*g = data.empty;
	for (i = 0; i < 81; i++)
		if (set[i])
			MOVE(g, i, CELL(t, i));
	return 0;
}

static int
generate_g(Grid_t* g, Grid_t* t, int z)
{
	printf("%s\n", fmtgrid(t, 0));
	state.shown++;
	return 1;
}

static int
generate_h(Grid_t* g, Grid_t* t, int z)
{
	register int	i;
	register int	j;
	register int	k;
	register int	n;
	register int	c;
	int		least = state.gen[0].value;
	int		odd = least & 1;

	*g = data.empty;
	c = 81 * 9;
	while (!(k = search(g, 0, DEPTHFIRST|RANDOMBEST|UNION|UNIQUE, &state.constraints.quick)) && c > least)
	{
		for (i = n = 0; i < 81; i++)
			if (data.count[state.sol[2].cell[i]] > 1 && (j = data.count[MASK(g, i)]) > 2)
			{
				if (odd)
					n++;
				else if (j > k)
				{
					k = j;
					n = 1;
				}
				else if (j == k)
					n++;
			}
		n = RAND(n);
		for (i = 0; i < 81; i++)
			if (data.count[state.sol[2].cell[i]] > 1 && (j = data.count[MASK(g, i)]) > 2 && (odd || j == k) && !n--)
			{
				g->cell[i] ^= state.hit[i];
				c--;
				break;
			}
	}
	return k <= 0;
}

static int
generate_H(Grid_t* g, Grid_t* t, int z)
{
	register int	i;
	register int	j;
	register int	k;
	register int	o;
	register int	m;
	int		step = state.gen[0].value;

	unsigned char	bands[6][9];
	unsigned char	minis[54];
	unsigned char	clues[9];

	*g = data.empty;
	memset(bands, 0, sizeof(bands));
	memset(minis, 0, sizeof(minis));
	memset(clues, 0, sizeof(clues));
	j = 0;
	for (m = 2; m < 4; m++)
	{
		i = 0;
		do
		{
			o = data.ordinal[t->cell[i]];
			if (clues[o] < m && CANDIDATE(g, i) && !bands[data.rcb[3][i]][o] && !bands[data.rcb[4][i]][o] && !minis[data.rcb[5][i]] && !minis[data.rcb[6][i]])
			{
				MOVE(g, i, t->cell[i]);
				clues[o]++;
				bands[data.rcb[3][i]][o] = bands[data.rcb[4][i]][o] = minis[data.rcb[5][i]] = minis[data.rcb[6][i]] = 1;
				if (j++ > MINCLUES && (k = quick(g, 0, 0)))
					return k <= 0;
			}
			if ((i += step) >= 81)
				i -= 81;
		} while (i);
	}
	return 1;
}

static int
generate_s(Grid_t* g, Grid_t* t, int z)
{
	*g = *t;
	return 0;
}

static int
generate_U(Grid_t* g, Grid_t* t, int z)
{
	register int	i;
	register int	j;
	register int	k;
	register int	c;
	register int	q;
	Grid_t		try;
	Grid_t		sup;
	unsigned char	set[81];

	state.minimize = 0;
	for (i = 0; i < 81; i++)
		set[i] = i;
	*g = *t;
	do
	{
		for (k = 0; k < 81; k++)
		{
			i = RAND(81);
			j = RAND(81);
			if (i != j)
			{
				q = set[i];
				set[i] = set[j];
				set[j] = q;
			}
		}
		q = 0;
		for (k = 0; k < 81; k++)
		{
			c = set[k];
			if (SOLVED(g, c))
			{
				try = *g;
				UNDO(&try, c, try.cell[c]);
				if (z)
				{
					i = ROW(c);
					j = COL(c);
					SUPERFLUOUS(&try, i, j, c, z, Z01,   j, 8-i);
					SUPERFLUOUS(&try, i, j, c, z, Z02, 8-i, 8-j);
					SUPERFLUOUS(&try, i, j, c, z, Z03, 8-j,   i);
					SUPERFLUOUS(&try, i, j, c, z, Z10,   i, 8-j);
					SUPERFLUOUS(&try, i, j, c, z, Z11, 8-j, 8-i);
					SUPERFLUOUS(&try, i, j, c, z, Z12, 8-i,   j);
					SUPERFLUOUS(&try, i, j, c, z, Z13,   j,   i);
				}
				for (j = 0;; j++)
					if (j >= 81)
					{
						q = 1;
						*g = try;
						break;
					}
					else if (SOLVED(&try, j))
					{
						sup = try;
						UNDO(&sup, j, sup.cell[j]);
						if (quick(&sup, 0, 0) <= 0)
							break;
					}
			}
		}
	} while (q);
	return 0;
}

static int
generate_default(Grid_t* g, Grid_t* t, int z)
{
	register int	i;
	register int	j;
	register int	k;
	register int	c;
	register int	m;
	unsigned char	set[81];

	*g = data.empty;
	memset(set, 0, 81);
	m = state.gen[0].value;
	c = state.gen[1].value;
	for (;;)
	{
		k = RAND(81);
		if (CANDIDATE(g, k))
		{
			set[k] = 1;
			MOVE(g, k, t->cell[k]);
			c--;
			if (z)
			{
				i = ROW(k);
				j = COL(k);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z01,   j, 8-i);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z02, 8-i, 8-j);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z03, 8-j,   i);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z10,   i, 8-j);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z11, 8-j, 8-i);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z12, 8-i,   j);
				SYMMETRIZE(g, t, set, i, j, k, c, z, Z13,   j,   i);
			}
			if (--m <= 0 || c <= 0 && quick(g, 0, 1))
				break;
		}
	}
	*g = data.empty;
	for (i = 0; i < 81; i++)
		if (set[i])
			MOVE(g, i, t->cell[i]);
	return 0;
}

static int
transform_default(Grid_t* g, Grid_t* o)
{
	if (state.hint == 1 && !state.postscript)
		list(g, 's', VERIFIED, 0);
	if (search(g, state.minimize ? 0 : LIST, state.flags, &state.constraints.solve) <= 0)
	{
		if (!state.all && !state.constraints.which)
			state.errors++;
	}
	else if (state.minimize)
	{
		if (state.symmetry)
		{
			UPDATE(g, 'S');
			minimize(g, state.minimize, compose(dihedral[state.symmetry].elements & dihedral[state.stats.symmetry].elements), 0);
		}
		else
			minimize(g, state.minimize, 0, 0);
	}
	return 0;
}

/*
 * -g and default transforms
 */

static int
transform_c(Grid_t* g, Grid_t* o)
{
	int		i;
	int		j;
	int		k;
	int		b;
	int		m;
	int		n;
	int		p;
	int		q;
	int		x;
	int		y;
	int		z;
	Grid_t		try;
	Cos_t		cos;

	try = *g;
	if ((x = propagate(&try, &b, GUESS, state.flags|UNIQUE, &state.constraints.solve)) < 0)
	  printf("invalid\n");
	else if (x > 0)
	  printf("constrained\n");
	else
	{
	  memset(cos.set, 0, sizeof(cos.set));
	  k = 0;
	  for (i = 0; i < 81; i++)
	    if (CANDIDATE(&try, i))
	    {
	      z = MASK(&try, i);
	      while (x = data.next[z])
	      {
	        z ^= x;
	        try = *g;
	        MOVE(&try, i, x);
		y = data.ordinal[x];
		k = 0;
	        for (j = 0; j < 81; j++)
	          if (CANDIDATE(&try, j))
	          {
	            m = MASK(&try, j);
	            switch (data.count[m])
	            {
	            case 0:
	              goto next;
		    case 1:
		      cos.set[i][y][j] = m;
		      k = 1;
		      break;
		    }
	          }
	        for (p = 0; p < 27; p++)
	        {
	          memset(ps.sum, 82, 9);
	          for (j = 0; j < 9; j++)
	          {
	            q = PATH(p, j);
	            if (CANDIDATE(&try, q))
	              for (m = MASK(&try, q); n = data.next[m]; m ^= n)
	                ps.sum[data.ordinal[n]] = ps.sum[data.ordinal[n]] == 82 ? q : 81;
	          }
	          for (j = 0; j < 9; j++)
	            if ((q = ps.sum[j]) < 81 && (m = MASK(&try, q) & data.bit[j]))
		    {
		      cos.set[i][y][q] = m;
		      k = 1;
		    }
	        }
		if (k)
		  cos.set[i][y][i] = x;
	      }
	    next:;
	    }
	  for (i = 0; i < 81; i++)
	    for (y = 0; y < 9; y++)
	      if (cos.set[i][y][i])
	      {
	        printf("%s", fmtval(i, 'e', data.bit[y]));
		for (j = 0; j < 81; j++)
		  if (cos.set[i][y][j] && j != i)
	            printf(" %s", fmtval(j, 'e', cos.set[i][y][j]));
	        printf("\n");
	      }
	  for (i = 0; i < 81; i++)
	    for (y = 0; y < 9; y++)
	      if (x = cos.set[i][y][i])
	      {
		cos.hit = 0;
		memset(cos.cos, 0, sizeof(cos.cos));
		if (spread(&cos, i, y, x))
		{
		  printf("%2d : %s", cos.hit, fmtval(i, 'e', x));
		  for (j = 0; j < 81; j++)
		    if (j != i && (x = cos.cos[j]))
		      printf(" %s", fmtval(j, 'e', x));
		  printf("\n");
	        }
		else
		  printf("%2d : %s\n", 0, fmtval(i, 'n', x));
	      }
	}
	return 1;
}

static void
transform_D_solved(Grid_t* g, void* x)
{
	Grid_t*		o = (Grid_t*)x;
	int		i;
	Grid_t		try;
	Grid_t		sol;

	try = data.empty;
	for (i = 0; i < 81; i++)
		if (!CANDIDATE(o, i))
			MOVE(&try, i, g->cell[i]);
	state.all = 0;
	transform_default(&try, &sol);
	state.all = 1;
}

/*
 * dobrichev's algorithm
 */

static int
transform_D(Grid_t* g, Grid_t* o)
{
	int		i;
	Grid_t		try;
	Solved_f	solved;
	void*		solved_data;

	try = *g;
	if (solve(&try, LIST, DEPTHFIRST|UNIQUE|HIT, &state.constraints.quick) > 0)
	{
		*o = data.empty;
		for (i = 0; i < 81; i++)
			if (CANDIDATE(g, i))
				MOVE(o, i, state.hit[i]);
		list(o, 'a', VERIFIED, 0);
		solved = state.solved;
		state.solved = transform_D_solved;
		solved_data = state.solved_data;
		state.solved_data = g;
		state.all = 1;
		search(o, LIST, DEPTHFIRST|UNIQUE, &state.constraints.quick);
		state.all = 0;
		state.solved_data = solved_data;
		state.solved = solved;
	}
	return 1;
}

static int
transform_m(Grid_t* g, Grid_t* o)
{
#if 0
	printf("%s\n", subcanon(0, g, 0, state.tmp, '0', state.transpose));
#else
	int	i;
	char	sol[81];

	for (i = 0; i < 81; i++)
		sol[i] = data.ident[CELL(g, i)];
	printf("%s\n", canpuzzle(bandcanon((unsigned char*)sol), g, 0, 0, sol, 0));
#endif
	return 1;
}

static int
transform_o_init(void)
{
	clear(&state.soldict, 1, 0);
	clear(&state.subdict, state.gencode, 0);
	return 0;
}

static int
transform_o(Grid_t* g, Grid_t* o)
{
	subinsert(&state.soldict, g)->count = 0;
	if (state.gen->flags & (ONE|PATTERNS|RANDOM))
		tour(&state.soldict, &state.subdict, state.gen);
	return 0;
}

static void
transform_o_done(void)
{
	tour(&state.soldict, &state.subdict, state.gen);
}

static uint64_t		transform_q_status[4];

static int
transform_q(Grid_t* g, Grid_t* o)
{
	transform_q_status[quick(g, 0, 0) + 2]++;
	return 0;
}

static void
transform_q_done(void)
{
	printf("%" LL "u %" LL "u %" LL "u\n", transform_q_status[0], transform_q_status[2], transform_q_status[3]);
}

static int
transform_Q(Grid_t* g, Grid_t* o)
{
	printf("%s # %d\n", fmtgrid(g, 0), quick(g, 0, 0));
	return 1;
}

static int
transform_t(Grid_t* g, Grid_t* o)
{
	if (state.gen[0].flags & PATTERNS)
		pattern(g, state.gen[0].flags, state.gen[0].value, state.gen[1].value, (state.gen[0].flags & EVERY) && !(state.gen[2].flags & SET) ? 0 : state.gen[2].value, state.gen[3].value);
	else if ((state.input->project & DONTCARE) || (state.gen[0].flags & MULTIPLE) || !(state.gen[0].flags & RANDOM))
		template(g, state.gen[0].flags, state.gen[0].value, state.gen[1].value, 0);
	else
		project(g, state.gen[0].flags, state.gen[0].value);
	return 0;
}

static int
transform_u(Grid_t* g, Grid_t* o)
{
	int		i;
	int		j;
	int		n;
	int		m;
	int		best_m;
	int		best_i;
	Grid_t		bst;
	Grid_t		sup;
	Grid_t		try;

	try = *g;
	if (solve(&try, LIST, DEPTHFIRST|UNIQUE|HIT, &state.constraints.quick) > 0)
	{
		bst = *g;
		n = m = 0;
		for (i = 0; i < 81; i++)
			if (SOLVED(&bst, i))
			{
				n++;
				sup = bst;
				UNDO(&sup, i, sup.cell[i]);
				if (quick(&sup, 0, 0) > 0)
					m++;
			}
		while (m < n)
		{
			if (state.verbose)
				printf("%d/%d\n", m, n);
			n++;
			best_m = m;
			best_i = -1;
			for (i = 0; i < 81; i++)
				if (CANDIDATE(&bst, i))
				{
					try = bst;
					MOVE(&try, i, state.hit[i]);
					m = 0;
					for (j = 0; j < 81; j++)
						if (SOLVED(&try, j))
						{
							sup = try;
							UNDO(&sup, j, sup.cell[j]);
							if (quick(&sup, 0, 0) > 0)
								m++;
						}
					if (best_m < m)
					{
						best_m = m;
						best_i = i;
					}
				}
			if (best_i < 0)
				return 0;
			MOVE(&bst, best_i, state.hit[best_i]);
			m = best_m;
		}
	        search(&bst, LIST, state.flags, &state.constraints.solve);
	}
	return 0;
}

static int
transform_compare(Grid_t* g, Grid_t* o)
{
	Canon_t		can;

	switch (state.compare.op)
	{
	case 'f':
		state.compare.op = 'F';
		*o = *g;
		return 1;
	case 'l':
		state.compare.op = 'L';
		*o = *g;
		return 1;
	case 'p':
		state.compare.op = 'P';
		*o = *g;
		return 1;
	}
	state.compare.distance = distance(&can, o, g, state.compare.similarity);
	if (state.compare.all)
		alldistance(o, g, state.compare.similarity, state.compare.distance);
	else
		list(o, 's', VERIFIED, &can);
	switch (state.compare.op)
	{
	case 'F':
		return 1;
	case 'P':
		state.compare.op = 'p';
		break;
	}
	*o = *g;
	return 0;
}

static int
transform_pass(Grid_t* g, Grid_t* o)
{
	list(g, 's', VERIFIED, 0);
	return 0;
}

static int
transform_permutation(Grid_t* g, Grid_t* o)
{
	static uint64_t	input;

	switch (state.permutation)
	{
	case 'f':
		state.permutation = 'F';
		*o = *g;
		input = state.input->input;
		return 1;
	case 'l':
		state.permutation = 'L';
		*o = *g;
		input = state.input->input;
		return 1;
	case 'p':
		state.permutation = 'P';
		*o = *g;
		input = state.input->input;
		return 1;
	}
	permutation(o, input, g, state.input->input);
	switch (state.permutation)
	{
	case 'F':
		return 1;
	case 'P':
		state.permutation = 'p';
		break;
	}
	*o = *g;
	input = state.input->input;
	return 0;
}

static char**	options(char**, int, int*);

static int
split(register char* s, int all, int* code)
{
	register char**	v;
	register char*	t;
	register int	c;
	register int	q;
	char*		arg[64];

	v = arg;
	t = s;
	q = 0;
	for (;;)
	{
		while (isspace(*s))
			s++;
		if (!*s)
			break;
		if (v >= &arg[elementsof(arg)-1])
			break;
		if (*s == '-' && (all || (c = *(s+1)) == 'c' || c == 'l' || c == 'x'))
		{
			*v++ = t;
			if (isspace(*(s+2)))
			{
				*t++ = *s++;
				*t++ = *s++;
				while (isspace(*s))
					s++;
				if (*s == '-')
				{
					*t++ = 0;
					continue;
				}
			}
		}
		for (;;)
			if (!(c = *t = *s++))
			{
				s--;
				break;
			}
			else if (c == q)
				q = 0;
			else if (q)
				t++;
			else if (isspace(c))
				break;
			else if (c == '"' || c == '\'')
				q = c;
			else
				t++;
		*t++ = 0;
	}
	*v = 0;
	return !options(arg, 1, code);
}

static int
push(register Input_t* p)
{
	char*	s;
	char*	t;
	char*	b;
	char*	e;
	int	c;

	*(p->next = p->buf) = 0;
	if (p->fp)
	{
		if (p->fp != stdin)
			fclose(p->fp);
		p->fp = 0;
		p->cut = state.push.cut;
		p->separator = state.push.separator;
		p->xml = state.push.xml;
	}
	p->line = 0;
	p->sudz = 0;
	p->exemplar = 0;
	p->template = 0;
	for (;;)
	{
		if (!(s = *p->argv))
		{
			if (!p->first)
				return 0;
			p->first = 0;
			p->fp = stdin;
			p->path = p->label = "stdin";
			break;
		}
		p->argv++;
		p->first = 0;
		*state.input->ident = 0;
		state.input->ordinal = 0;
		state.input->puzzle = 0;
		if (*s == '-' && !*(s + 1))
		{
			p->fp = stdin;
			p->path = p->label = "stdin";
			break;
		}
		b = e = 0;
		c = 1;
		for (t = s; *t; t++)
			if (*t == '/')
			{
				b = t + 1;
				e = 0;
				c = 0;
			}
			else if (*t == '.')
				e = t;
			else if (islower(*t))
				c = 0;
		if (c)
		{
			p->label = 0;
			p->next = s;
			return 1;
		}
		if (p->fp = fopen(s, "r"))
		{
			if (e)
				*e = 0;
			p->label = b ? b : s;
			p->path = s;
			break;
		}
		fprintf(stderr, "%s: %s: cannot read\n", command, s);
		state.errors++;
	}
	if (p->fp)
	{
		c = refill(p);
		unget(p, c);
		s = peek(p);
		if (*s++ == MAGIC[0] && *s++ == MAGIC[1])
		{
			if (state.header)
			{
				if ((c = strlen(s-2)) >= sizeof(state.tracebuf))
					c = sizeof(state.tracebuf) - 1;
				memcpy(state.tracebuf, s-2, c);
				state.tracebuf[c] = 0;
			}
			if (strneq(s, txtmagic, sizeof(txtmagic)-1))
			{
				if (split(s + sizeof(txtmagic)-1, 0, &c))
				{
					state.errors++;
					return 0;
				}
			}
			else if (strneq(s, xmpmagic, sizeof(xmpmagic)-1))
			{
				p->exemplar = 1;
				p->finned = data.empty;
			}
			else if (strneq(s, tmpmagic, sizeof(tmpmagic)-1))
				p->template = 1;
			else if (strneq(s, binmagic, sizeof(binmagic)-1))
			{
				if (fseek(p->fp, 0, SEEK_SET))
				{
					fprintf(stderr, "%s: %s input must be seekable\n", command, binmagic);
					state.errors++;
					return 0;
				}
				p->sudz = sudzopen(p->fp, 0, SUDZ_READ);
				p->fp = 0;
				if (!p->sudz)
				{
					fprintf(stderr, "%s: %s input corrupt\n", command, binmagic);
					state.errors++;
					return 0;
				}
				s = 0;
			}
			else
			{
				for (t = s; *t && *t != '\n'; t++);
				*t = 0;
				fprintf(stderr, "%s: %s: unknown magic\n", command, s);
				state.errors++;
				return 0;
			}
			if (s && state.header)
			{
				state.header = 0;
				fputs(state.tracebuf, stdout);
			}
			*(p->next = p->buf) = 0;
		}
	}
	return 1;
}

static void
initmethods(void)
{
	int		i;
	int		c;
	int		k;
	char*		t1 = state.text.list;
	char*		t2 = state.text.all;
	char*		t3 = state.text.explicit;
	char*		t4 = state.constraints.solve.text;
	char*		t5 = state.constraints.quick.text;
	char*		t6 = state.constraints.magic.text;

	for (i = 0; c = method[i].id; i++)
	{
		k = method[i].flags;
		if (!(k & CONSTRAINT_HIDDEN))
		{
			*t1++ = c;
			if (!(k & CONSTRAINT_PSEUDO))
				*t2++ = c;
			if (k & CONSTRAINT_EXPLICIT)
				*t3++ = c;
			if (k & CONSTRAINT_SOLVE)
				*t4++ = c;
			if (k & CONSTRAINT_QUICK)
				*t5++ = c;
			if (k & CONSTRAINT_MAGIC)
				*t6++ = c;
		}
		methods[c-'A'] = &method[i];
	}
	*t1 = *t2 = *t3 = *t4 = *t5 = *t6 = 0;
	strcpy(state.text.solve, state.constraints.solve.text);
	for (k = 0; k < elementsof(methods); k++)
		if (!methods[k])
			methods[k] = &method[i];
}

/*
 * set the options in v
 */

static char**
options(register char** v, int copy, int* code)
{
	register int		i;
	register int		j;
	register int		k;
	register int		n;
	register int		c;
	register int		r;
	register unsigned int	x;
	long			z;
	int			d;
	int			f;
	int			o;
	int			oo;
	char*			s;
	char*			t;
	char*			extra;
	char*			which;
	unsigned char*		m;
	unsigned char		om[10];
	unsigned char		xm[10];
	unsigned char		pm[10];
	int			rep[elementsof(state.gen)];
	Mask_t*			bm;
	Range_t*		mm;

	extra = 0;
	which = 0;
	while ((s = *v) && *s == '-')
	{
		v++;
		if (*(s + 1) == '-')
		{
			if (!*(s + 2))
				break;
			help(*(s + 2) == 'h' && *(s + 3) == 't');
			*code = 2;
			return 0;
		}
		for (;;)
		{
			switch (c = *++s)
			{
			case 0:
				break;
			case 'a':
				state.all = 1;
				continue;
			case 'A':
				state.flags |= ASSUME;
				continue;
			case 'b':
				state.flags &= ~DEPTHFIRST;
				continue;
			case 'B':
				state.flags |= BATCH;
				continue;
			case 'c':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				state.input->cut = (int)strtol(s, &s, 0);
				n = 0;
				if (state.input->separator = *s)
				{
					if (state.input->separator == ' ')
						state.input->separator = 0;
					s++;
					if (copy)
					{
						if (state.schema[0])
							break;
						s = stash(s);
					}
					c = state.input->separator;
					for (;;)
					{
						if (!c)
						{
							while (isspace(*s))
								s++;
							if (!*s)
								break;
						}
						if ((n + 1) >= elementsof(state.schema))
							break;
						state.schema[n++] = s;
						while (*s && (c ? (*s != c) : !isspace(*s)))
							s++;
						if (!*s)
							break;
						*s++ = 0;
					}
				}
				if (copy)
					break;
				state.schema[n] = 0;
				break;
			case 'C':
				state.compare.op = 'p';
				for (;;)
				{
					switch (*++s)
					{
					case 0:
						break;
					case 'a':
						state.compare.all = 1;
						continue;
					case 'f':
					case 'l':
					case 'p':
						state.compare.op = *s;
						continue;
					case 'D':
						continue;
					case 'S':
						state.compare.similarity = 1;
						continue;
					default:
						fprintf(stderr, "%s: -C: %s: [aflpDS] option flag(s) expected\n", command, s);
						*code = 1;
						return 0;
					}
					break;
				}
				break;
			case 'd':
				state.flags |= DEPTHFIRST;
				continue;
			case 'D':
				if (isdigit(*(s + 1)))
				{
					state.debug = (int)strtol(s + 1, &s, 0);
					s--;
				}
				else
					state.debug++;
				continue;
			case 'e':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (copy && !(s = stash(s)))
				{
					*code = 1;
					return 0;
				}
				state.filter = s;
				break;
			case 'E':
				state.easy = EASY;
				continue;
			case 'f':
			case 'F':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (c == 'f')
				{
					c = 's';
					if (!*s || *s == '-' && !*(s + 1))
						s = 0;
				}
				else if (!(c = *s++) || !islower(c))
				{
					fprintf(stderr, "%s: -F: <id>format argument expected\n", command);
					*code = 1;
					return 0;
				}
				if (copy && s && !(s = stash(s)))
				{
					*code = 1;
					return 0;
				}
				FORMAT(c) = s;
				break;
			case 'g':
				if (state.generate_op)
				{
					fprintf(stderr, "%s: -g%c: already specified\n", command, state.generate_op);
					*code = 1;
					return 0;
				}
				if (!(state.generate_op = *++s))
				{
					s--;
					state.generate_op = 'p';
				}
				oo = state.generate_op == 'o';
				i = d = 0;
				j = 0;
				k = 0;
				f = 0;
				n = 0;
				x = 0;
				r = 0;
				for (;;)
				{
					switch (c = *++s)
					{
					case 'a':
						k ^= ALREADY;
						continue;
					case 'c':
						k ^= CLASSIFY;
						continue;
					case 'e':
						k ^= EVERY;
						continue;
					case 'i':
						k ^= IMPLICIT;
						continue;
					case 'm':
						k ^= MULTIPLE;
						continue;
					case 'n':
						k ^= NOEXEC;
						continue;
					case 'o':
						k ^= ONE;
						continue;
					case 'p':
						k ^= PATTERNS;
						continue;
					case 'r':
						k ^= RANDOM;
						continue;
					case '@':
						o = 0;
						while ((c = *(s + 1)) >= '0' && c <= '9')
						{
							o = o * 10 + (c - '0');
							s++;
						}
						if (o <= 81)
							state.genoff = o - 1;
						continue;
					case ':':
						k |= CLUES;
						/*FALLTHROUGH*/
					case 'x':
					case 'X':
						while ((c = *(s + 1)) >= '0' && c <= '9')
						{
							x = x * 10 + (c - '0');
							s++;
						}
						if (x && !(k & CLUES))
							x--;
						continue;
					case '*':
					case '!':
						x = 81;
						continue;
					case '{':
						if (n)
						{
							n = n * j;
							j = 1;
							rep[r++] = i + 1;
							goto arg;
						}
						rep[r++] = i;
						oo = 1;
						continue;
					case '}':
						if (r)
							d = rep[--r];
						else
						{
							fprintf(stderr, "%s: -g%c: unbalanced {...}\n", command, state.generate_op);
							fini(1);
						}
						continue;
					case '+':
						if (n)
						{
							n = n * j;
							j = 1;
							goto arg;
						}
						j = 1;
						continue;
					case '-':
						if (n)
						{
							n *= j;
							j = -1;
							goto arg;
						}
						j = -1;
						continue;
					case 0:
						if (!f)
							break;
						if (j)
							n *= j;
						else if (oo && !(i & 1))
							n = -n;
					arg:
						if (oo && n > 0 && !i)
						{
							state.gen[i].flags = k|SET;
							state.gen[i].value = 0;
							state.gen[i].repeat = x;
							i++;
						}
						if (i >= (elementsof(state.gen) - 1))
						{
							fprintf(stderr, "%s: too many -g%c args -- %d max\n", command, state.generate_op, elementsof(state.gen) - 1);
							fini(1);
						}
						state.gen[i].flags = k|f;
						if ((state.gen[i].value = n) > 0)
						{
							if (state.gen[i].repeat = x)
								state.gen[i].group = &state.gen[d];
							if (state.gen[i-1].value < 0)
								state.gen[i-1].value = -state.gen[i-1].value;
							if (state.gen[i-1].value != state.gen[i].value)
								state.gen[i].flags |= DELTA;
						}
						i++;
						if (n < 0)
						{
							if (!oo)
							{
								state.gen[i-1].value = -n;
								state.gen[i-1].flags |= SET;
							}
							else if (!j)
							{
								n = -n;
								j = 1;
								goto arg;
							}
						}
						if (c != '-' && c != '+')
							j = 0;
						if (!c)
							break;
						k &= ~CLUES;
						n = x = 0;
						d = i - 1;
						f = 0;
						continue;
					case '0': case '1': case '2': case '3': case '4':
					case '5': case '6': case '7': case '8': case '9':
						n = n * 10 + (c - '0');
						f = SET;
						continue;
					case '.':
					case ',':
					case '/':
						if (!oo)
							goto arg;
						continue;
					case ' ':
					case '\t':
						continue;
					default:
						if (isalpha(c))
						{
							fprintf(stderr, "%s: %s: invalid option argument\n", command, s);
							fini(1);
						}
						break;
					}
					break;
				}
				if (!(n = i))
				{
					state.gen[0].value = 1;
					state.gen[0].flags = k;
					state.gen[1] = state.gen[0];
					state.gen[1].flags = 0;
					i = 2;
				}
				state.gencode = !(i & 1);
				state.gen[i].flags = END;
				switch (state.generate_op)
				{
				case 'b':
					if (state.gen[0].value > elementsof(data.bands) || state.gen[1].value > elementsof(data.bands))
					{
						fprintf(stderr, "%s: -gb%d-%d: maximum band index is %u\n", command, state.gen[0].value, state.gen[1].value, elementsof(data.bands));
						*code = 1;
						return 0;
					}
					if (!state.gen[0].value)
					{
						if (!state.gen[1].value)
							state.gen[1].value = elementsof(data.bands) - 1;
						else
							state.gen[1].value--;
					}
					else
					{
						state.gen[0].value--;
						if (!state.gen[1].value)
							state.gen[1].value = state.gen[0].value;
						else
							state.gen[1].value--;
					}
					state.generate = generate_default;
					state.generate_init = generate_b_init;
					break;
				case 'B':
					state.generate = generate_default;
					state.generate_init = generate_B_init;
					break;
				case 'c':
					state.transform = transform_c;
					break;
				case 'd':
					if (!(state.gen[0].flags & SET))
						state.gen[0].value = 14;
					if (!(state.gen[1].flags & SET))
						state.gen[1].value = 3;
					state.generate = generate_d;
					break;
				case 'D':
					state.transform = transform_D;
					break;
				case 'g':
					state.generate = generate_g;
					break;
				case 'h':
					if (state.gen[0].flags & SET)
						state.gen[0].value = HINTONLY;
					state.flags |= UNIQUE;
					state.generate = generate_h;
					break;
				case 'H':
					while (state.gen[0].value == ((state.gen[0].value / 3) * 3))
						if ((state.gen[0].value /= 3) <= 0)
						{
							state.gen[0].value = HARDEST;
							break;
						}
					state.minimize = -1;
					state.generate = generate_H;
					break;
				case 'm':
					state.transform = transform_m;
					break;
				case 'o':
					state.transform_init = transform_o_init;
					state.transform = transform_o;
					if (!(state.gen->flags & (ONE|PATTERNS|RANDOM)))
						state.transform_done = transform_o_done;
					if (n > 1)
					{
						i = n - 1;
						while (i >= 0)
							if (k = state.gen[i].repeat)
							{
								r = state.gen[i].group - state.gen;
								while (--i >= r)
								{
									state.gen[i].repeat = k;
									state.gen[i].flags |= MEMBER;
								}
							}
							else
								i--;
						for (i = n - 1; i > 0; i -= 2)
						{
							state.gen[i].flags |= DISPLAY;
							if (state.gen[i].flags & DELTA)
								break;
						}
					}
					else if (n == 1)
					{
						state.gen[0].value = -state.gen[0].value;
						state.gen[0].flags |= DISPLAY|SET;
						state.gen[1].flags = k|DISPLAY|SET;
						state.gen[2].flags = END;
					}
					if (state.debug)
						for (i = 0; state.gen[i].flags != END; i++)
							printf("GEN [%d] %2d %2d %2ld%s%s%s%s%s%s%s%s%s%s%s\n", i+1, state.gen[i].value, state.gen[i].repeat, state.gen[i].group ? (state.gen[i].group - state.gen + 1) : 0, (state.gen[i].flags & CLASSIFY) ? " CLASSIFY" : "", (state.gen[i].flags & CLUES) ? " CLUES" : "", (state.gen[i].flags & DELTA) ? " DELTA" : "", (state.gen[i].flags & DISPLAY) ? " DISPLAY" : "", (state.gen[i].flags & EVERY) ? " EVERY" : "", (state.gen[i].flags & IMPLICIT) ? " IMPLICIT" : "", (state.gen[i].flags & MEMBER) ? " MEMBER" : "", (state.gen[i].flags & MULTIPLE) ? " MULTIPLE" : "", (state.gen[i].flags & ONE) ? " ONE" : "", (state.gen[i].flags & SEEN) ? " SEEN" : "", (state.gen[i].flags & RANDOM) ? " RANDOM" : "");
					break;
				case 'p':
					if (!(state.gen[0].flags & SET))
						state.gen[0].value = MAXCLUES;
					if (!(state.gen[1].flags & SET))
						state.gen[1].value = MINCLUES;
					state.generate = generate_default;
					break;
				case 'P':
					state.template = state.generate_op;
					state.transform = transform_pass;
					break;
				case 'q':
					state.transform = transform_q;
					state.transform_done = transform_q_done;
					break;
				case 's':
					state.generate = generate_s;
					break;
				case 't':
					if (!(state.gen[0].flags & SET))
						state.gen[0].value = TEMPLATE;
					if (!(state.gen[1].flags & SET))
						state.gen[1].value = (state.gen[0].flags & PATTERNS) ? 0 : TEMPLATE_ENUM;
					if (!(state.gen[2].flags & SET))
						state.gen[2].value = TEMPLATE_FILL;
					if (!(state.gen[3].flags & SET))
						state.gen[3].value = TEMPLATE_SLOP;
					state.template = state.generate_op;
					state.transform = transform_t;
					break;
				case 'u':
					state.transform = transform_u;
					break;
				case 'U':
					state.generate = generate_U;
					break;
				case 'Q':
					state.transform = transform_Q;
					break;
				case 'X':
					state.template = state.generate_op;
					state.transform = transform_pass;
					break;
				default:
					fprintf(stderr, "%s: -g: [bBdDghHmopPqstuUvX][options][+|-][number]... argument expected\n", command);
					*code = 1;
					return 0;
				}
				break;
			case 'G':
				state.group = 0;
				continue;
			case 'h':
				if (isdigit(*(s + 1)))
				{
					state.hint = (int)strtol(s + 1, &s, 0);
					s--;
				}
				else
					state.hint++;
				continue;
			case 'H':
				state.header = 1;
				continue;
			case 'i':
				state.incremental = 1;
				continue;
			case 'j':
				if (*(s + 1) == '-')
				{
					s++;
					state.novalue = 1;
				}
				if (isdigit(*(s + 1)))
				{
					if (!(z = strtol(s + 1, &s, 0)))
					{
						z = 1;
						state.same = 1;
					}
					state.permute = z;
					s--;
				}
				else
					state.permute = PERMUTE;
				continue;
			case 'J':
				if (*(s + 1) == '-')
				{
					s++;
					state.novalue = 1;
				}
				if (isdigit(*(s + 1)))
				{
					state.shuffle = strtoul(s + 1, &s, 0);
					s--;
				}
				else
					state.shuffle = SHUFFLE;
				continue;
			case 'k':
				if (!*++s && !(s = *v++) && !*s)
					goto nooptarg;
				d = 0;
				c = *s++;
				if (*s == '-' || *s == '.')
					i = 0;
				else if (isdigit(*s))
					i = (int)strtol(s, &s, 0);
				else
					i = d = 1;
				k = 0;
				x = ~0;
				if (*s)
				{
					for (t = s; *s == '-' || *s == '.'; s++);
					k = s > t;
					n = (int)strtol(s, &t, 0);
					if (t > s)
					{
						s = t;
						j = n;
					}
					else
						j = k ? 99 : i;
					if (*s == '{')
					{
						x = 0;
						while (*++s)
						{
							if (*s == '}')
							{
								s++;
								break;
							}
							x |= token[*(unsigned char*)s];
						}
					}
				}
				else
					j = i;
				if (j < i)
					i = j = -1;
				s--;
				switch (c)
				{
				case 'c':
				case 'C':
					mm = &state.psycle.keep;
					break;
				case 'd':
				case 'D':
					mm = &state.psycle.detail;
					break;
				case 'i':
				case 'I':
					mm = &state.keep.iterate;
					if (d)
						i = -1;
					break;
				case 'm':
				case 'M':
					mm = &state.psycle.magic;
					break;
				case 'p':
				case 'P':
					mm = &state.psycle.pair;
					break;
				default:
					fprintf(stderr, "%s: -k: [cdimp]min..max{..} argument expected\n", command);
					*code = 1;
					return 0;
				}
				mm->min = i;
				mm->max = j;
				mm->set = x;
				continue;
			case 'K':
				if (!*++s && !(s = *v++) && !*s)
					goto nooptarg;
				switch (*s++)
				{
				case 'c':
				case 'C':
					bm = &state.drop.cycle;
					break;
				case 'd':
				case 'D':
					state.stop = STOP_DIAMOND;
					s--;
					continue;
				case 'i':
				case 'I':
					bm = &state.drop.iterate;
					break;
				case 'p':
				case 'P':
					state.stop = STOP_PEARL;
					s--;
					continue;
				default:
					fprintf(stderr, "%s: -K: [cdip]n1,n2,... argument expected\n", command);
					*code = 1;
					return 0;
				}
				for (;;)
				{
					n = (int)strtol(s, &t, 0);
					if (t == s)
						break;
					if (*(s = t) == ',')
						s++;
					BITSET(bm, n);
				}
				s--;
				continue;
			case 'l':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (copy && !(s = stash(s)))
				{
					*code = 1;
					return 0;
				}
				state.title = s;
				break;
			case 'L':
				if (!*++s)
					state.degree = 9;
				else if ((state.degree = (int)strtol(s, &s, 0)) < 2)
					state.degree = 2;
				break;
			case 'm':
				if (*(s + 1) == 'r')
				{
					state.rinimize = 1;
					s++;
					if (*(s + 1) == 'c')
					{
						state.rinlist = 'c';
						s++;
					}
				}
				if (isdigit(*(s + 1)))
				{
					state.minimize = strtol(s + 1, &s, 0);
					s--;
				}
				else
					state.minimize = state.rinimize ? RINIMIZE : -1;
				if (*(s + 1) == '.' || *(s + 1) == '-')
				{
					state.minclues = (int)strtol(s + 2, &s, 0);
					s--;
				}
				if (*(s + 1) == '.' || *(s + 1) == '-')
				{
					state.maxclues = (int)strtol(s + 2, &s, 0);
					s--;
				}
				continue;
			case 'M':
				if (*++s == '-' && !*(s+1))
					state.magic = -1;
				else
				{
					state.magic = 1;
					if (*s && constrain(&state.constraints.magic, s))
					{
						*code = 1;
						return 0;
					}
				}
				break;
			case 'n':
				if (isdigit(*(s + 1)))
				{
					state.loop = strtoull(s + 1, &s, 0);
					s--;
				}
				else
					state.loop++;
				state.per = state.loop;
				continue;
			case 'N':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				state.input->input = state.shown = state.valid = strtoull(s, &s, 0) - 1;
				s--;
				continue;
			case 'o':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (*s && (*s != '-' || !*(s + 1)) && !freopen(s, "w", stdout))
				{
					fprintf(stderr, "%s: %s: cannot open for writing\n", command, s);
					*code = 1;
					return 0;
				}
				break;
			case 'O':
				state.flags |= OPTIMAL;
				switch (*(s + 1))
				{
				case 'A':
					s++;
					state.flags |= MINAPPLY;
					break;
				case 'S':
					s++;
					break;
				}
				continue;
			case 'p':
				switch (*++s)
				{
				case 0:
					state.permutation = 'p';
					break;
				case 'f':
				case 'l':
				case 'p':
					state.permutation = *s;
					break;
				}
				if (state.permutation)
					break;
				if (state.map.aut)
				{
					fprintf(stderr, "%s: %s: input permutation already specified\n", command, s);
					*code = 1;
					return 0;
				}
				x = 0;
				m = 0;
				while (*s)
				{
					if (state.test & 2)
						printf("OLD %c ", *s);
					switch (f = *s++)
					{
					case 'a':
					case 'd':
					case 's':
						while (*s >= '1' && *s <= '9')
							s++;
						continue;
					case 'c':
						n = 1;
						m = state.map.col;
						break;
					case 'i':
						continue;
					case 'r':
						n = 1;
						m = state.map.row;
						break;
					case 'v':
						n = 0;
						m = state.map.map;
						break;
					case 'x':
						x = 9;
						continue;
					default:
					badperm:
						fprintf(stderr, "%s: %s: invalid permutation\n", command, s-1);
						*code = 1;
						return 0;
					}
					if (*s != '(')
						goto badperm;
					if (state.test & 2)
					{
						for (j = 0; j < 9; j++)
							printf(" %d", m[j+!n]+n);
						printf("\n");
					}
					d = 1;
					for (j = 0; j < 10; j++)
						xm[j] = 0;
					while (*s == '(' || *s == f && *++s == '(')
					{
						r = 0;
						while ((c = *++s) >= '1' && c <= '9')
						{
							c -= '0' + n;
							if (xm[c])
								d = 1;
							else
								xm[c] = 1;
							pm[r++] = c;
						}
						if (*s++ != ')')
							goto badperm;
						if (d)
						{
							d = 0;
							for (j = !n; j < 9 + !n; j++)
							{
								om[m[j]] = j;
								xm[j] = 0;
							}
						}
						j = k = 10;
						for (c = 0; c < r; ++c)
						{
							if (j < 10)
							{
								m[om[j]] = pm[c];
								if (state.test & 2)
									printf("         %d => %d\n", om[j]+n, pm[c]+n);
							}
							else
								k = pm[c];
							j = pm[c];
						}
						if (j < 10)
						{
							m[om[j]] = k;
							if (state.test & 2)
								printf("         %d => %d\n", om[j]+n, k+n);
						}
						if (state.test & 2)
						{
							printf("      ");
							for (j = 0; j < 9; j++)
								printf(" %d", m[j+!n]+n);
							printf("\n");
						}
					}
					if (state.test & 2)
					{
						printf("NEW   ");
						for (j = 0; j < 9; j++)
							printf(" %d", m[j+!n]+n);
						printf("\n");
					}
				}
				if (m || x)
				{
					state.map.aut = 1;
					if (state.map.box = x)
					{
						for (i = 0; i < 9; i++)
						{
							j = state.map.row[i];
							state.map.row[i] = state.map.col[i];
							state.map.col[i] = j;
						}
						for (i = 0; i < 81; i++)
							state.mx[i] = INDEX(state.map.row[COL(i)], state.map.col[ROW(i)]);
					}
					else
						for (i = 0; i < 81; i++)
							state.mx[i] = INDEX(state.map.row[ROW(i)], state.map.col[COL(i)]);
					for (i = 1; i <= 9; i++)
						token[((unsigned char*)name)[i]] = data.bit[state.map.map[i]-1];
				}
				break;
			case 'P':
				state.postscript = 1;
				continue;
			case 'q':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (*s == '-' && !*(s + 1))
				{
					if (!state.transform)
						state.transform = transform_pass;
				}
				else
				{
					if (islower(*s) || isdigit(*s))
					{
						for (i = 0;; i++)
						{
							if (!common[i].name)
							{
								fprintf(stderr, "%s: %s: unknown common option\n", command, s);
								*code = 1;
								return 0;
							}
							if (t = match(s, common[i].name))
							{
								if (strlen(common[i].options) >= elementsof(state.tracebuf))
								{
									fprintf(stderr, "%s: %s: common option too large -- %d max\n", command, s, elementsof(state.tracebuf));
									*code = 1;
									return 0;
								}
								strcpy(state.tracebuf, common[i].options);
								if (split(state.tracebuf, 1, code))
									return 0;
								break;
							}
						}
						s = t;
					}
					if (*s && constrain(&state.constraints.solve, s))
					{
						*code = 1;
						return 0;
					}
				}
				break;
			case 'Q':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				extra = s;
				break;
			case 'r':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				state.seed = strtoull(s, &s, 0);
				s--;
				continue;
			case 'R':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (!*s || *s == '-' && !*(s + 1))
					s = 0;
				if (copy && s && !(s = stash(s)))
				{
					*code = 1;
					return 0;
				}
				state.rating = s;
				break;
			case 's':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				i = 0;
				for (;;)
				{
					switch (*s)
					{
					case '2':
					case '4':
					case '8':
						i |= *s++ - '0';
						continue;
					}
					break;
				}
				switch (i)
				{
				case 2:
					state.symoff = 5;
					state.symsiz = 5;
					break;
				case 2+4:
					state.symoff = 2;
					state.symsiz = 8;
					break;
				case 4:
					state.symoff = 2;
					state.symsiz = 3;
					break;
				case 4+8:
					state.symoff = 1;
					state.symsiz = 4;
					break;
				case 8:
					state.symoff = 1;
					state.symsiz = 1;
					break;
				default:
					state.symoff = 1;
					state.symsiz = 9;
					break;
				}
				switch (*s)
				{
				case 'A':
				case 'g':
					state.symmetry = state.symgen = state.symoff;
					break;
				case 'E':
					state.symgen = -1;
					break;
				case 'F':
					state.symmetry = -1;
					break;
				default:
					state.symmetry = transform(s, &s);
					s--;
					break;
				}
				continue;
			case 'S':
				state.flags |= STEP;
				continue;
			case 't':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				state.enough = (unsigned int)strtoul(s, &s, 0);
				s--;
				continue;
			case 'T':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				state.test |= strtoul(s, &s, 0);
				s--;
				continue;
			case 'u':
				state.flags |= DEPTHFIRST|UNIQUE;
				continue;
			case 'U':
				state.flags |= UNION;
				continue;
			case 'v':
				if (isdigit(*(s + 1)))
				{
					state.verbose = (int)strtol(s + 1, &s, 0);
					s--;
				}
				else
					state.verbose++;
				continue;
			case 'V':
				fprintf(stderr, "%-.*s\n", (int)sizeof(id) - 14, id + 10);
				*code = 0;
				return 0;
			case 'w':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if ((state.width = (int)strtol(s, &s, 0)) < 40)
					state.width = 40;
				s--;
				continue;
			case 'W':
				state.linger = 1;
				continue;
			case 'x':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (copy && !(s = stash(s)))
				{
					*code = 1;
					return 0;
				}
				state.input->xml = s;
				break;
			case 'X':
				state.contradictions = 1;
				continue;
			case 'y':
				state.input->original = 1;
				continue;
			case 'Y':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				if (copy && !(s = stash(s)))
				{
					*code = 1;
					return 0;
				}
				state.catalog.label = s;
				if (!(state.catalog.fp = fopen(s, "r")))
				{
					fprintf(stderr, "%s: %s: cannot read\n", command, s);
					state.errors++;
				}
				*(state.catalog.next = state.catalog.buf) = 0;
				break;
			case 'Z':
				if (!*++s && !(s = *v++))
					goto nooptarg;
				which = s;
				break;
			case 'z':
				if (!*++s && (!(s = *v++) || !*s))
					goto nooptarg;
				switch (c = *s++)
				{
				case '8':
					state.octdoku = 1;
					break;
				case 'b':
					bg();
					break;
				case 'e':
					state.entries = strtoul(s, 0, 0);
					break;
				case 'T':
					state.boxes = 9;
					state.transpose = 0;
					break;
				default:
					fprintf(stderr, "%s: -z%c: unknown option\n", command, c);
					*code = 1;
					return 0;
				}
				break;
			case '?':
				help(0);
				*code = 2;
				return 0;
			default:
				fprintf(stderr, "%s: -%c: unknown option\n", command, c);
				*code = 1;
				return 0;
			nooptarg:
				fprintf(stderr, "%s: -%c: option argument expected\n", command, c);
				*code = 1;
				return 0;
			}
			break;
		}
	}
	if (extra && !(state.constraints.extra = ccomp(extra, 0, "extra", state.flags & ORDER)) ||
	    which && !(state.constraints.which = ccomp(which, 0, "which", state.flags & ORDER)))
	{
		*code = 1;
		return 0;
	}
	return v;
}

int
main(int argc, char** argv)
{
	register int		i;
	int			b;
	char*			s;
	Item_t*			var;
	Grid_t			grid;
	Grid_t			sol;

	for (i = 1; i <= 9; i++)
		token[((unsigned char*)name)[i]] = data.bit[i-1];
	texem['.'] = texem['0'] = 0x1ff;
	ps.moves.trie = ps.moves.move = ps.moves.base;
	FORMAT('c') = "%#0v # %#Rn.%#cn.%#rn";
	FORMAT('d') = "%v # %5r %q %(CSM)#c#/q";
	FORMAT('e') = "";
	FORMAT('g') = "?";
	FORMAT('m') = "%#nr/%02(C)x/%02(K)x/%04(I)x/%(M)x";
	FORMAT('n') = "^";
	FORMAT('p') = "[%r%c]";
	FORMAT('q') = "%5r %-11q %#c#/q";
	FORMAT('s') = FORMAT('d');
	FORMAT('t') = "%Y-%m-%d+%H:%M:%S";
	FORMAT('v') = "%p%o%v";
	FORMAT('w') = "/";
	FORMAT('x') = "%x";
	FORMAT('y') = "/X#@*$&";
	FORMAT('C') = "%#Ci %#Cn\n%1v\n%2#.c";
	state.boxes = 18;
	state.transpose = 1;
	state.flags = DEPTHFIRST;
	state.group = 1;
	state.hit = state.tophit;
	state.input = &state.top;
	state.method = method;
	state.rating = RATING;
	state.common = common;
	state.enough = ~0;
	state.entries = ~0;
	state.minclues = MINCLUES;
	state.maxclues = MAXCLUES;
	state.width = 80;
	state.input->xml = XML;
	s = FORMAT('s');
	initmethods();
	if (!(argv = options(argv + 1, 0, &b)))
		fini(b);
	if (state.compare.op)
	{
		state.compare.grid = &grid;
		if (FORMAT('s') == s)
			FORMAT('s') = FORMAT('C');
	}
	EXMPINIT();
	if (!state.seed)
	{
		state.seed = time((time_t*)0);
		state.seed *= getpid();
	}
	state.seed_init = state.seed;
	if (order(&state.constraints.solve, "solve", state.constraints.solve.text, 0, state.flags & ORDER) ||
	    order(&state.constraints.quick, "quick", state.constraints.quick.text, ~(state.constraints.solve.constraints|CONSTRAINT_G), 0) ||
	    order(&state.constraints.magic, "magic", state.constraints.magic.text, ~state.constraints.solve.constraints|CONSTRAINT_G, 0))
		fini(1);
	if (state.verbose)
	{
		state.flags |= VERBOSE;
		if (((state.flags & BATCH) || state.incremental) && !state.keep.iterate.max)
			state.keep.iterate.max = ~0;
	}
	state.width -= 10;
	if (state.test & 0x00100)
	{
		printf("%d\n", (int)sizeof(Grid_t));
		fini(0);
	}
	if (state.test & 0x0c000)
	{
		state.postscript = 1;
		list(&data.empty, 's', VERIFIED, 0);
		fini(0);
	}
	state.start = state.previous = usr();
	if (FORMAT('i'))
	{
		for (i = 0; i < 'Z'-'A'+1; i++)
			state.total.updated[i] = 1;
		state.stats = state.total;
		list(&grid, 'i', NOPUZZLE, 0);
	}
	for (i = 0; i < elementsof(variable); i++)
	{
		var = enter(&state.vars, 0, variable[i].name);
		var->part = variable[i].id;
		var->index = variable[i].index;
	}
	if (state.filter)
	{
		exeval(state.filter, 0, referenced, &grid);
		if (state.referenced['V'-'A'])
			state.flags |= UNIQUE;
	}
	if (state.generate)
	{
		if (!state.generate_init || !(*state.generate_init)())
		{
			state.all = 0;
			if (state.symmetry < 0)
				state.symmetry = RAND(state.symsiz) + state.symoff;
			while (!state.loop || state.shown < state.loop)
			{
				complete(&sol);
				for (;;)
				{
					if (state.symgen < 0)
						state.symmetry = RAND(state.symsiz) + state.symoff;
					if ((*state.generate)(&grid, &sol, dihedral[state.symmetry].elements))
						break;
					another(&grid);
					if (search(&grid, state.minimize ? 0 : LIST, state.flags|UNIQUE, &state.constraints.solve) > 0 && state.minimize)
						minimize(&grid, state.minimize, state.symmetry, 0);
					list(&grid, 'a', NOPUZZLE, 0);
					if (state.symgen > 0)
					{
						if ((!state.loop || state.shown < state.loop) && ++state.symgen < (state.symoff + state.symsiz))
						{
							state.symmetry = state.symgen;
							continue;
						}
						state.symmetry = state.symgen = state.symoff;
					}
					break;
				}
			}
			if (state.generate_done)
				(*state.generate_done)();
		}
	}
	else
	{
		if (state.all)
			state.flags |= DEPTHFIRST|UNIQUE;
		if (!state.transform || state.permutation)
		{
			if (state.permutation)
				state.transform = transform_permutation;
			else if (state.compare.op)
				state.transform = transform_compare;
			else
				state.transform = transform_default;
		}
		if (!state.transform_init || !(*state.transform_init)())
		{
			init(state.input, argv);
			while (push(state.input))
				while (input(state.input, &grid, state.template))
				{
					if (state.per)
						state.loop = state.shown + state.per;
					another(&grid);
					if (!(*state.transform)(&grid, &sol))
						list(&grid, 'a', NOPUZZLE, 0);
				}
			if (state.transform_done)
				(*state.transform_done)();
		}
	}
	fini(state.errors != 0);
	return 1;
}
