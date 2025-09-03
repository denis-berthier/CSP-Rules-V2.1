/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2010                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * Glenn Fowler
 * AT&T Research
 *
 * NxN sudoku / QWH (quasigroup with holes / latin-square) solver/generator
 *
 * compile-time options
 *
 * -DN=n	number of rows/cols (default 9, 4 <= N <= 64)
 * -DQ=1	QWH -- no box constraint
 * -DGC=1	sudoku-dg -- add 9 box position constraints
 * -DNC=1	sudoku-nc -- add 4-neighborhood non-consecutive constraints
 * -DXC=1	sudoku-x -- add 9 diagonal anti-diagonal constraints
 * -DALPHA=1	limit clue values to [A-Za-z]
 * -DBACKDOOR=n	determine {1:one >1:all} minimal backdoor for PRINT or TIMING
 * -DCANON=1	test 9x9 canonicalization
 * -DCOUNT=1	print total # solutions for each puzzle
 * -DDEBUG=1	enable debug output
 * -DEASY=0	don't list easy puzzle count
 * -DGENERATE=1	enable minimal puzzle generation
 * -DITERATE=n	forward check iteration change
 *		{ 1:hole(N>30) 2:candidate(default) }
 * -DLABEL=0	don't label PRINT output
 * -DLINE=n	print puzzles on one line instead of an NxN grid
 *		{ 1:solve 2:generate&solve }
 * -DPRINT=n	print solutions or minimal puzzles in grid form
 *		{ 1:solution 2:problem 4:LABEL=0,LINE=1,SUMMARY=0 }
 * -DSUMMARY=0	disable solution summary
 * -DTIMING=1	print individual solution timings
 * -DTRACE=1	enable move trace
 * -DUNIQUE=1	verify unique solution
 */

static const char id[] = "\n@(#)$Id: sudocoup (AT&T Research) 2007-10-11 $\n";

static const char command[] = "sudocoup";

#if _WIN32
#include <windows.h>
#endif

#include <stdio.h>
#include <stdlib.h>

#ifndef	N
#define N		9
#endif

#if COUNT
#undef	UNIQUE
#endif

#if PRINT & 4
#undef	LABEL
#define LABEL		0
#undef	LINE
#define	LINE		1
#undef	SUMMARY
#define SUMMARY		0
#endif

#ifndef EASY
#define EASY		1
#endif

#ifndef LINE
#define LINE		0
#endif

#ifndef SUMMARY
#define SUMMARY		1
#endif

#if DEBUG
#undef	PRINT
#define PRINT		1
#undef	TRACE
#define TRACE		1
#endif

#if ENCODE
#undef	SUMMARY
#undef	TIMING
#endif

#if N == 4
#define BOX		2
#elif N == 9
#define BOX		3
#elif N == 16
#define BOX		4
#elif N == 25
#define BOX		5
#elif N == 36
#define BOX		6
#elif N == 49
#define BOX		7
#elif N == 64
#define BOX		8
#elif !Q
#error "N must be a square in 4..64"
#elif N < 4 || N > 64
#error "N must be an integer in 4..64"
#endif

#ifndef ITERATE
#if N > 30
#define ITERATE		1
#else
#define ITERATE		2
#endif
#endif

#if Q
#if GC || XC || NC
#error "DG,XC,NC incompatible with Q"
#endif
#define PUZZLE		"QWH (latin square)"
#undef	BOX
#define C		2
#else
#if GC
#define S_G		"-dg"
#define N_G		1
#else
#define S_G
#define N_G		0
#endif
#if XC
#define S_X		"-x"
#define N_X		0
#else
#define S_X
#define N_X		0
#endif
#if NC
#define S_NC		"-nc"
#define N_NC		0
#else
#define S_NC
#define N_NC		0
#endif
#define PUZZLE		"sudoku" S_G S_X S_NC
#define C		(3+N_G+N_X+N_NC)
#endif

#if _WIN32
#define LL(x)		0x##x
#define LLFORMAT	"I64"
#define snprintf	_snprintf
typedef __int64 int64_t;
typedef unsigned __int64 uint64_t;
#else
#if defined(__x86_64)
#define LL(x)		0x##x
#define LLFORMAT	"l"
#else
#define LL(x)		0x##x##ll
#define LLFORMAT	"ll"
#endif
#if __STDC__
#include <inttypes.h>
#else
typedef long long int64_t;
typedef unsigned long long uint64_t;
#endif
#endif

#if ALPHA
#define CLUES		"A-Za-z1-9_@$"
#define BEG		""
#define END		"123456789"
#else
#define CLUES		"1-9A-Za-z_@$"
#define BEG		"123456789"
#define END		""
#endif

#define MASK(i)		(((Cell_t)1)<<(i))

#define FFSI(n,i)	do { i = -1; while (!(n & MASK(++i))); } while (0)

#if defined(__GNUC__) && ( defined(__i386) || defined(__x86_64) )
#define FFS(n,i)	__asm__ ("bsfl %1,%0" : "=r" (i) : "rm" ((Mask_t)(n)))
#else
#define FFS(n,i)	FFSI(n,i)
#endif

#if N <= 8

typedef unsigned char Cell_t;
typedef unsigned char Index_t;
typedef unsigned int Mask_t;
typedef unsigned char Ordinal_t;

#define ORD		"%d"
#define INX		"%2d"

#elif N <= 9

typedef unsigned short Cell_t;
typedef unsigned char Index_t;
typedef unsigned int Mask_t;
typedef unsigned char Ordinal_t;

#define ORD		"%d"
#define INX		"%2d"

#elif N <= 16

typedef unsigned short Cell_t;
typedef unsigned char Index_t;
typedef unsigned int Mask_t;
typedef unsigned char Ordinal_t;

#define ORD		"%02d"
#define INX		"%3d"

#elif N <= 32

typedef unsigned int Cell_t;
typedef unsigned short Index_t;
typedef unsigned int Mask_t;
typedef unsigned char Ordinal_t;

#define ORD		"%02d"
#if N < 32
#define INX		"%3d"
#else
#define INX		"%4d"
#endif

#elif N <= 64

typedef uint64_t Cell_t;
typedef unsigned short Index_t;
typedef uint64_t Mask_t;
typedef unsigned char Ordinal_t;

#define ORD		"%02d"
#define INX		"%4d"

#if defined(__GNUC__) && ( defined(__i386) || defined(__x86_64) )
#undef	FFS
#if you_know_the_64_bit_bsf_instruction
#define FFS(n,i)	__asm__ ("bsfq %1,%0" : "=r" (i) : "rm" ((Mask_t)(n)))
#else
#define FFS(n,i)	FFSI(n,i)
#endif
#endif

#endif

#define A		(((MASK(N-1)-1)<<1)|1)
#define E		(3)
#define H(x)		do{if(html)fprintf(stderr,"%s",x);}while(0)
#define T(x)		fprintf(stderr,"%s",x)
#define S(x)		SX(x)
#define SX(x)		# x

#define NEXT(x,m,i)	FFS(x,i); m=MASK(i)
#define CLUE(x,i)	FFS(x,i); i++

#define elementsof(x)	(int)(sizeof(x)/sizeof(x[0]))

#if GENERATE
#define TYPE		"solver/generator"
#else
#define TYPE		"solver"
#endif

static void
help(int html)
{
H("<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML//EN\">\n");
H("<HTML>\n");
H("<HEAD>\n");
H("<TITLE>" S(N) "x" S(N) " " PUZZLE " backtracking " TYPE " man document</TITLE>\n");
H("</HEAD>\n");
H("<BODY bgcolor=white>\n");
H("<PRE>\n");
T("NAME\n");
T("  sudocoup - " S(N) "x" S(N) " " PUZZLE " " TYPE "\n");
T("\n");
T("SYNOPSIS\n");
T("  sudocoup [ options ] [ puzzle ... | < puzzle.file ... ]\n");
T("\n");
T("DESCRIPTION\n");
T("  sudocoup solves " S(N) "x" S(N) " " PUZZLE " puzzles defined by the literal puzzle\n");
T("  operands or puzzles read from the standard input if there are no puzzle\n");
T("  operands, and solves each puzzle. A solvable puzzle has exactly one solution.\n");
#if COUNT
T("  The solver prints the number of solutions for each puzzle.\n");
#elif UNIQUE
T("  Puzzles with more than one solution are noted, but the search stops\n");
T("  at the second solution.\n");
#else
T("  The solver stops on the first solution for each puzzle.\n");
#endif
T("\n");
T("OPTIONS\n");
#if GENERATE
T("  -cN  Don't list puzzles with more than (less than with -x) N clues.\n");
T("  -gN  Generate minimal puzzles with N initial random clues.  The remaining\n");
T("       clues are chosen to minimize the number of clues required to form a\n");
T("       valid puzzle.\n");
T("  -mN  Limit -g minimization to N search nodes (default " S(N) "**5.)\n");
T("  -nN  Limit -g to N puzzles (default no limit.)\n");
T("  -rN  Set the pseudo random number generator seed to N (default 1.)\n");
T("  -xN  Maximize and skip random puzzles with less than N clues.\n");
#endif
#if SUMMARY
T("  -sN  Normalize solving time for a processor speed of N (default GHz.)\n");
#endif
#if SUMMARY
T("\n");
#endif
T("  There are a few compile time options that may degrade performance.  Other\n");
T("  compile time options control puzzle order (4..64) and QWH (quasigroup\n");
T("  with holes or latin square) vs. sudoku.  See the source for details.\n");
T("\n");
T("DETAILS\n");
T("  sudocoup is coded for solving speed.  It uses only two simple constraints:\n");
T("    F  Forced cell: only one value possible.\n");
T("    N  Only cell: only one value in row/col/box.\n");
T("  When the constraints fail to make progress a guess is made and the solver\n");
T("  backtracks.  Guesses are made on solution cells that minimize the maximum\n");
T("  number of holes for all candidate values for the cell using a 1 level\n");
T("  forward check.  Ties go to the cell with the least number of candidate\n");
T("  value constraints.\n");
T("\n");
T("INPUT FORMAT\n");
T("  Puzzle input is a sequence of " S(N) "x" S(N) " characters that fill the grid from left\n");
T("  to right, top to bottom.  Characters " CLUES " are clue values,\n");
T("  #...newline, //...newline, \"...\", [...], and <...> are comments, {...}\n");
T("  or digit strings separated by space are candidate values (hints), and\n");
T("  all other characters not matching [[:space:]|*+-] are treated as an\n");
T("  empty grid space.  Invalid puzzles produce a diagnostic.  Each puzzle\n");
T("  description may be followed by 0 or more [R,C]=V or [R,C]={ABC} operations\n");
T("  that set the cell value at row R column C to V or the candidate values to.\n");
T("  'ABC' .\n");
T("\n");
T("OUTPUT FORMAT\n");
#if PRINT || SUMMARY || TIMING
#if PRINT
#if TIMING
T("  A comment line containing solution time in seconds, constraint propagation\n");
T("  count, backtrack node count (guesses), puzzle ordinal, and puzzle line\n");
T("  if different from the ordinal, is printed for each puzzle, followed by the\n");
T("  puzzle solution in grid form.\n");
#else
T("  A comment line containing the puzzle ordinal, and puzzle line if different\n");
T("  from the ordinal, is printed for each puzzle, followed by the solution\n");
T("  in grid form.\n");
#endif
#elif TIMING
T("  A line containing solution time in seconds, constraint propagation\n");
T("  count, backtrack node count (guesses), puzzle ordinal, and puzzle\n");
T("  line if different from the ordinal, is printed for each puzzle.\n");
#endif
#if SUMMARY
#if PRINT || TIMING
T("\n");
#endif
T("  A summary line containing the solution rate, valid puzzle count, total\n");
T("  solution time, total constraint propagation count, total backtrack\n");
T("  node count, and invalid puzzle count (if any), is printed after the\n");
T("  last puzzle is solved.\n");
#endif
#else
T("  This executable was compiled to produce no output.  See the source for\n");
T("  compile time output options.\n");
#endif
T("\n");
#if N == 9
T("PERFORMANCE\n");
T("  Solution speed on a collection of posted and generated puzzles is\n");
T("  ~7000 puzzles/second/Ghz.  Minimal puzzle generation speed is\n");
T("  ~10 puzzles/second/Ghz.\n");
T("\n");
#endif
T("SEE ALSO\n");
T("  sudoku(1), sudocoo(1)\n");
T("\n");
T("IMPLEMENTATION\n");
T("  version     sudocoup " S(N) "x" S(N) " (AT&T Research) 2007-10-11\n");
T("  author      Glenn Fowler <gsf@research.att.com>\n");
T("  copyright   Copyright (c) 2005-2007 AT&T Knowledge Ventures\n");
T("  license     http://www.opensource.org/licenses/cpl1.0.txt\n");
H("</PRE>\n");
H("</BODY>\n");
H("</HTML>\n");
}

typedef struct Grid_s
{
	Cell_t		cell[N*N];
	Ordinal_t	free[C*N][N];
	Ordinal_t	done[N*N];
	int		holes;
} Grid_t;

typedef struct More_s
{
	Cell_t		value;
	Index_t		index;
	Ordinal_t	ordinal;
} More_t;

typedef struct Stack_s
{
	Grid_t		grid;
	Cell_t		index;
	Cell_t		candidates;
} Stack_t;

typedef struct Delta_s
{
	unsigned long	group;
	unsigned long	single;
	Cell_t		value;
	Cell_t		join;
	Index_t		count;
} Delta_t;

static Ordinal_t		constraint[N*N][C];

static Index_t			path[C*N][N];

#if BOX
#if GC
#define M			(2*((N-1)+(BOX-1)*(BOX-1)))
#else
#define M			(2*(N-1)+(BOX-1)*(BOX-1))
#endif
#else
#define M			(2*(N-1))
#endif

static Delta_t			delta[N*N];
static Index_t			moves[N*N];
static Index_t			paths[N*N][M];
static More_t			more[C*N*N];

#if XC
static unsigned char		antidiagonal[81];
static unsigned char		diagonal[81];
static unsigned char		anti[9];
static unsigned char		diag[9];
#endif

#if NC
static unsigned char		hood[81][5];
#endif

static Ordinal_t		row[N*N];
static Ordinal_t		col[N*N];

static const char		name[] = "." BEG "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz" END "_@$";

static Grid_t			empty;

static Cell_t			token[256];

static unsigned long		group;
static unsigned long		single;

#if GENERATE

static uint64_t			seed = 1;

#define HASH_ADD(h)		(0x9c39c33dUL)
#if _WIN32
#define HASH_MPY(h)		((h)*0x00000100000001b3)
#else
#define HASH_MPY(h)		((h)*0x00000100000001b3ULL)
#endif
#define HASHPART(h,c)		(h = HASH_MPY(h) + HASH_ADD(h) + (c))
#define RAND(m)			((HASHPART(seed,0)>>8)%(m))

#endif

#if SUMMARY
static uint64_t			propagations;
#endif

#if SUMMARY || TIMING

#define RESOLUTION		1000000L

#if _WIN32

static uint64_t
usr(void)
{
	uint64_t	fs;

	static uint64_t	os;

	fs = (RESOLUTION / 1000) * GetTickCount();
	if (fs < os)
	{
		fs += 0xffffffffL;
		fs += 1;
	}
	return os = fs;
}

#else

#include <sys/time.h>
#include <sys/resource.h>

static uint64_t
usr(void)
{
	uint64_t	ns;
	struct rusage	ru;

	getrusage(RUSAGE_SELF, &ru);
	ns = ru.ru_utime.tv_sec + ru.ru_stime.tv_sec;
	return ns * RESOLUTION + ru.ru_utime.tv_usec + ru.ru_stime.tv_usec;
}

#endif

#endif

/*
 * format grid position i
 */

static char*
fmtpos(int i)
{
	register char*	s;

	static char	buf[4][8];
	static int	alt;

	alt = (alt + 1) % elementsof(buf);
	s = buf[alt];
	snprintf(s, 8, "[" ORD ORD "]", row[i]+1, col[i]+1);
	return s;
}

/*
 * format cell value z
 */

static char*
fmtset(Mask_t z)
{
	register char*	s;
	int		a;
	int		i;
	Mask_t		x;

	static char	buf[4][2*(N+1)+1];
	static int	alt;

	alt = (alt + 1) % elementsof(buf);
	s = buf[alt];
	z &= A;
	if ((a = (z & (z - 1)) != 0))
		*s++ = '{';
	while (z)
	{
		NEXT(z, x, i);
		z ^= x;
		*s++ = name[i+1];
	}
	if (a)
		*s++ = '}';
	*s = 0;
	return buf[alt];
}

/*
 * return name[] index for cell value
 */

static int
clue(Cell_t c)
{
	int	i;

	CLUE(c, i);
	return i;
}

/*
 * add cell i value v to the current change list
 * { group single } serial numbers amortize initialization
 */

#define DELTA(n,d,i,v) \
	do \
	{ \
		if (d) \
		{ \
			if (delta[i].group == group) \
			{ \
				if (delta[i].single != single) \
				{ \
					delta[i].single = single; \
					delta[i].join |= delta[i].value; \
					delta[i].count++; \
				} \
			} \
			else if (!n) \
			{ \
				moves[(*d)++] = i; \
				delta[i].group = group; \
				delta[i].single = single; \
				delta[i].join = 0; \
				delta[i].count = 1; \
			} \
			delta[i].value = v; \
		} \
	} while (0)

#define ELIMINATE(k,x,o) \
	{ \
		if (!(v = g->cell[k] &= ~x)) \
			return 0; \
		DELTA(b, d, k, v); \
		if (!(v & (v - 1))) \
		{ \
			more[n].index = k; \
			more[n].value = v; \
			FFS(v, q); \
			more[n].ordinal = q; \
			n++; \
		} \
		for (c = 0; c < C; c++) \
			if (!(f = --g->free[p = constraint[k][c]][o])) \
				return 0; \
			else if (f == 1) \
				for (q = 0; q < N; q++) \
					if (g->cell[u = path[p][q]] & x) \
					{ \
						more[n].index = u; \
						more[n].value = x; \
						more[n].ordinal = o; \
						n++; \
						break; \
					} \
	}

/*
 * limit grid g position i to v and update F and N constraints
 * if d!=0 then delta list is updated and *d is the list size
 */

static int
move(register Grid_t* g, int i, Mask_t v, int b, int* d)
{
	int		j;
	int		k;
	int		c;
	int		m;
	int		n;
	int		o;
	int		p;
	int		q;
	int		u;
	int		f;
#if NC
	int		wo;
	int		yo;
	Mask_t		w;
	Mask_t		y;
#endif
	Mask_t		x;
	Mask_t		z;

	if (!v)
		return 1;
	single++;
	m = n = 0;
	FFS(v, o);
	for (;;)
	{
#if SUMMARY
		propagations++;
#endif
		if ((x = g->cell[i] & v))
		{
			if ((z = g->cell[i] & ~v))
				DELTA(b, d, i, v);
			if (x & (x - 1))
				g->cell[i] = x;
			else
			{
				g->cell[i] = 0;
				g->done[i] = o + 1;
				if (!--g->holes)
					break;
				for (j = 0; j < elementsof(paths[i]); j++)
					if (g->cell[k = paths[i][j]] & x)
						ELIMINATE(k, x, o);
#if XC
				if (diagonal[i])
					for (j = 0; j < elementsof(diag); j++)
						if (g->cell[k = diag[j]] & x)
							ELIMINATE(k, x, o);
				if (antidiagonal[i])
					for (j = 0; j < elementsof(anti); j++)
						if (g->cell[k = anti[j]] & x)
							ELIMINATE(k, x, o);
#endif
#if NC
#if WRAP
				wo = (o > 0) ? (o-1) : (N-1);
				w = MASK(wo);
				yo = (o < (N-1)) ? (o+1) : 0;
				y = MASK(yo);
#else
				if (o > 0)
				{
					wo = o - 1;
					w = MASK(wo);
				}
				else
					w = 0;
				if (o < (N-1))
				{
					yo = o + 1;
					y = MASK(yo);
				}
				else
					y = 0;
#endif
				for (j = hood[i][0]; j > 0; j--)
				{
					k = hood[i][j];
					if (g->cell[k] & w)
						ELIMINATE(k, w, wo);
					if (g->cell[k] & y)
						ELIMINATE(k, y, yo);
				}
#endif
			}
			while (z)
			{
				NEXT(z, x, o);
				z ^= x;
				for (c = 0; c < C; c++)
					if (!(f = --g->free[p = constraint[i][c]][o]))
						return 0;
					else if (f == 1)
						for (q = 0; q < N; q++)
							if (g->cell[u = path[p][q]] & x)
							{
								more[n].index = u;
								more[n].value = x;
								more[n].ordinal = o;
								n++;
								break;
							}
			}
		}
		if (m >= n)
			break;
		i = more[m].index;
		v = more[m].value;
		o = more[m].ordinal;
		if (++m == n)
			m = n = 0;
	}
#if DEBUG
	if (b < 0)
	{
		for (i = 0; i < N*N; i++)
		{
			printf(" %c", g->cell[i] ? '.' : name[g->done[i]]);
			if (!((i+1)%N))
				printf("\n");
		}
		for (i = 0; i < C*N; i++)
		{
			if (!(i % N))
				printf("\n");
			for (j = k = m = 0; j < N; j++)
			{
				printf(" %2d", g->free[i][j]);
				if (g->free[i][j] > 1)
				{
					k++;
					m += g->free[i][j];
				}
			}
			printf("  %2d %3d\n", k, m);
		}
	}
#endif
	return 1;
}

#define SOLUTION	(-1)
#define INVALID		(-2)

/*
 * forward check for the best move
 *
 * return
 *
 *	SOLUTION  g solved
 *	 INVALID  g invalid
 *	    >= 0  best move
 */

static int
forward(register Grid_t* g, Grid_t* h)
{
	register int		i;
	register int		j;
	register int		n;
	register Mask_t		x;
	int			c;
	int			d;
	int			m;
	int			t;
	int			w;
	int			bi;
	int			bm;
	int			pi;
#if ITERATE
	int			iterate;
#endif
	int*			p;
	Mask_t			f;
	Mask_t			o;
	Mask_t			q;
	Mask_t			z;

	static Index_t		tie[N*N];
	static Index_t		prv[N*N];

	if (!g->holes)
		return SOLUTION;

	/*
	 * determine the cell(s) that minimize(s) the maximum
	 * number of holes when all candidates are instantiated
	 */

	do
	{
#if ITERATE
		iterate = g->holes;
#endif
		pi = 0;
		bi = INVALID;
		bm = N*N+1;
		t = 0;
		for (i = 0; i < N*N; i++)
			if ((z = g->cell[i]))
			{
				if (!++group)
				{
					group = 1;
					for (j = 0; j < N*N; j++)
						delta[j].group = 0;
				}
				d = 0;
				n = 0;
#if GENERATE
				m = N*N+1;
#else
				m = 0;
#endif
				f = q = 0;
				o = z;
				p = &d;
				do
				{
					NEXT(z, x, w);
					*h = *g;
					if (!move(h, i, x, n, p))
					{
						q |= x;
						p = 0;
					}
#if !COUNT && !GENERATE && !UNIQUE
					else if (!h->holes)
					{
						*g = *h;
						return SOLUTION;
					}
#endif
					else
					{
#if GENERATE
						if (m > h->holes)
#else
						if (m < h->holes)
#endif
							m = h->holes;
						n++;
						f |= x;
					}
				} while (z ^= x);
				if ((z = (o ^ q) & f) != o)
				{
					if (!z || !move(g, i, z, 0, 0))
						return INVALID;
					if (!g->holes)
						return SOLUTION;
#if ITERATE > 1
					iterate++;
#endif
				}
				if (p)
					while (d--)
						if (delta[moves[d]].count == n && (z = g->cell[moves[d]]) && (x = z & (delta[moves[d]].value | delta[moves[d]].join)) != z)
						{
							if (!move(g, moves[d], x, 0, 0))
								return INVALID;
							if (!g->holes)
								return SOLUTION;
#if ITERATE > 1
							iterate++;
#endif
						}
				if (bm > m)
				{
					if (g->cell[i])
					{
						bm = m;
						bi = i;
						t = 1;
						tie[0] = i;
						prv[pi++] = i;
					}
				}
				else if (bm == m && g->cell[i])
					tie[t++] = i;
			}
	}
#if ITERATE
	while (g->holes < iterate);
#else
	while (0);
#endif
	if (bi >= 0)
	{
		if (t > 1)
		{
			/*
			 * break ties by selecting cells with the least
			 * number of candidate value constraints
			 */
	
			n = N*N;
			for (i = 0; i < t; i++)
				if ((z = g->cell[tie[i]]))
				{
					m = 0;
					do
					{
						NEXT(z, x, w);
						for (c = 0; c < C; c++)
							m += g->free[constraint[tie[i]][c]][w];
					} while (z ^= x);
					if (n > m)
					{
						n = m;
						bi = tie[i];
					}
				}
		}
		for (;;)
		{
			if (g->cell[bi])
			{
#if AHA
				printf("AHA forward %s %s %3d %3d\n", fmtpos(bi), fmtset(g->cell[bi]), g->holes, bm);
#endif
				break;
			}
			if (!pi)
				break;
			bi = prv[--pi];
		}
	}
	return bi;
}

#if BACKDOOR

static int
backdoor(Grid_t* s, Grid_t* g, int i, int t, int z, unsigned char* magic)
{
	Grid_t		h;
	int		j;
	int		r = 0;

	z++;
	while (++i < N*N)
		if (g->cell[i])
		{
			h = *g;
			if (move(&h, i, MASK(s->done[i]-1), 0, 0))
			{
				magic[z] = i;
				if (!h.holes)
				{
#if BACKDOOR > 1
					printf("\n#");
#endif
					printf(" %d", z);
					for (j = 1; j <= t; j++)
						printf(" %s=%c", fmtpos(magic[j]), name[s->done[magic[j]]]);
					r = 1;
#if BACKDOOR == 1
					break;
#endif
				}
				if (z < t && backdoor(s, &h, i, t, z, magic))
				{
					r = 1;
#if BACKDOOR == 1
					break;
#endif
				}
			}
		}
	return r;
}

#endif

#if GENERATE || PRINT

static void
list(register Grid_t* g, int line)
{
	int	i;
	int	j;
	int	k;
	int	n;

	if (line)
	{
		for (i = 0; i < N*N; i++)
			putchar(name[g->done[i]]);
		if (line < 0)
			putchar(' ');
		else
			putchar('\n');
	}
	else
	{
#if BOX
		n = 0;
#endif
		for (i = 0; i < N*N; i++)
		{
			putchar(name[g->done[i]]);
			if (!((i + 1) % N))
			{
				putchar('\n');
#if BOX
				if (i < N*N-1 && ++n >= BOX)
				{
					n = 0;
					for (j = 0; j < BOX; j++)
					{
						for (k = 0; k < BOX; k++)
							putchar('-');
						if (j < BOX-1)
							putchar('+');
					}
					putchar('\n');
				}
#endif
			}
#if BOX
			else if (!((i + 1) % BOX))
				putchar('|');
#endif
		}
	}
}

#endif

#if CANON
#if N != 9 || Q
#error "N must be 9 and Q must be 0 for canonicalization"
#endif
#include "canon.c"
#endif

int
main(int argc, char** argv)
{
	register int	i;
	register int	j;
	register int	k;
	register int	n;
	register Mask_t	x;
	Mask_t		u;
	Mask_t		v;
	int		c;
	int		m;
	int		level;
	unsigned long	solutions;
#if EASY
#if SUMMARY
	unsigned long	easy;
#endif
#if LABEL
	int		simple;
#endif
#endif
	unsigned long	invalid;
	unsigned long	puzzles;
	unsigned long	lines;
#if LABEL && ( PRINT || TIMING )
	unsigned long	hidden;
	unsigned long	initial;
#endif
#if SUMMARY
	double		rate;
	uint64_t	elapsed;
	uint64_t	nodes;
	double		hzcpu;
	unsigned long	hznorm;
	int		hzunit;
#endif
#if GENERATE || SUMMARY || TIMING
	unsigned long	per;
#endif
#if SUMMARY || TIMING
	double		seconds;
	uint64_t	sub;
#endif
#if TIMING
	uint64_t	timing;
#endif
#if BACKDOOR || GENERATE || ( PRINT & 2 )
	Grid_t		original;
#endif
#if UNIQUE
	Grid_t		unique;
#endif
#if GENERATE
	unsigned long	number;
	unsigned long	cut;
	Mask_t		z;
	int		clues;
	int		generate;
	int		maximal;
	int		w;
	Index_t		pick[N*N];
	Index_t		index[N*N];
	Mask_t		value[N*N];
#endif
#if ENCODE
	int		bits;
	int		code;
#endif
#if BACKDOOR
	unsigned char	magic[N+1];
#endif
	unsigned char*	s;
	unsigned char*	t;
	char*		e;
	char		buf[5*1024];

	static Stack_t	try[N*N+1];

#if SIZEOF
	printf("%d\n", sizeof(try[0].grid));
	return 0;
#endif

	/* grab the options */

	puzzles = 0;
	solutions = 0;
#if EASY && SUMMARY
	easy = 0;
#endif
	lines = 0;
#if LABEL && ( PRINT || TIMING )
	hidden = 0;
#endif
#if GENERATE
	clues = 0;
	generate = 0;
	maximal = 0;
	number = 0;
	cut = N*N*N*N*N;
#endif
#if SUMMARY
	hzcpu = 0;
	hzunit = ' ';
	hznorm = 1;
#endif
	for (;;)
		if (!(s = (unsigned char*)*++argv))
		{
			s = (unsigned char*)"";
			break;
		}
		else if (*s != '-')
		{
			lines++;
#if LABEL && ( PRINT || TIMING )
			hidden = lines;
#endif
			break;
		}
		else if (*(s + 1) == '-')
		{
			if (!*(s + 2))
			{
				s = (unsigned char*)*++argv;
				break;
			}
			help(*(s + 2) == 'h' && *(s + 3) == 't');
			return 2;
		}
		else
			for (;;)
			{
				switch (i = *++s)
				{
				case 0:
					break;
#if GENERATE
				case 'c':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					clues = (int)strtoul((char*)s, &e, 0);
					s = (unsigned char*)e - 1;
					continue;
				case 'g':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					generate = (int)strtoul((char*)s, &e, 0);
					s = (unsigned char*)e - 1;
					continue;
				case 'm':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					cut = (int)strtoul((char*)s, &e, 0);
					s = (unsigned char*)e - 1;
					continue;
				case 'n':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					number = strtoul((char*)s, &e, 0);
					switch (*e)
					{
					case 'K':
						number *= 1000;
						break;
					case 'M':
						number *= 1000*1000;
						break;
					case 'G':
						number *= 1000*1000*1000;
						break;
					default:
						e--;
						break;
					}
					s = (unsigned char*)e;
					continue;
				case 'r':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					seed = strtoul((char*)s, &e, 0);
					s = (unsigned char*)e - 1;
					continue;
				case 'x':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					maximal = (int)strtoul((char*)s, &e, 0);
					s = (unsigned char*)e - 1;
					continue;
#endif
#if SUMMARY
				case 's':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					hzcpu = strtod((char*)s, &e);
					switch (*e)
					{
					case 'M':
						hzunit = 'M';
						hznorm = 1000 * 1000;
						break;
					default:
						e--;
						/*FALLTHROUGH*/
					case 'G':
						hzunit = 'G';
						hznorm = 1000 * 1000 * 1000;
						break;
					}
					s = (unsigned char*)e;
					continue;
#endif
				case '?':
					help(0);
					return 2;
				default:
					fprintf(stderr, "%s: -%c: unknown option\n", command, i);
					return 1;
#if GENERATE || SUMMARY
				nooptarg:
					fprintf(stderr, "%s: -%c: option argument expected\n", command, i);
					return 1;
#endif
				}
				break;
			}

	/* initialize empty grid, constraint, and path tables */

	for (i = 1; i <= N; i++)
		token[(int)name[i]] = MASK(i-1);
	for (; i < elementsof(name); i++)
		token[(int)name[i]] = E;
	token[' '] = token['\t'] = token['\n'] = token['\r'] = token['|'] = token[':'] = token['+'] = token['-'] = token['*'] = token['('] = token[')'] = A;
	empty.holes = N*N;
	for (i = 0; i < N*N; i++)
	{
		empty.cell[i] = A;
		empty.done[i] = 0;
	}
	for (i = 0; i < C*N; i++)
		for (j = 0; j < N; j++)
			empty.free[i][j] = N;
#if XC
	j = k = 0;
#endif
	for (i = 0; i < N*N; i++)
	{
		row[i] = i / N;
		col[i] = i % N;
#if XC
		if (diagonal[i] = row[i] == col[i])
			diag[j++] = i;
		if (antidiagonal[i] = row[i] == ((N - 1) - col[i]))
			anti[k++] = i;
#endif
#if NC
		n = 0;
		if (row[i] > 0)
			hood[i][++n] = i - N;
		if (row[i] < (N - 1))
			hood[i][++n] = i + N;
		if (col[i] > 0)
			hood[i][++n] = i - 1;
		if (col[i] < (N - 1))
			hood[i][++n] = i + 1;
		hood[i][0] = n;
#endif
	}
	k = 0;
	for (i = 0; i < N; i++)
	{
#if BOX
		n = 2*N + ((i / BOX) * BOX);
#endif
		for (j = N; j < 2*N; j++)
		{
			constraint[k][0] = i;
			constraint[k][1] = j;
#if BOX
			constraint[k][2] = n + ((j / BOX) % BOX);
#if GC
			constraint[k][3] = 3*N + (j%BOX) + ((i%BOX)*BOX);
#endif
#endif
			k++;
		}
	}
	k = 0;
	for (i = 0; i < N; i++)
	{
#if BOX
		n = (i/BOX)*BOX*N + (i%BOX)*BOX;
#if GC
		m = (i/BOX)*N + (i%BOX);
#endif
#endif
		for (j = 0; j < N; j++)
		{
			path[i][j] = k;
			path[N+j][i] = k;
#if BOX
			path[2*N+i][j] = n + (j/BOX)*N + (j%BOX);
#if GC
			path[3*N+i][j] = m + (j%BOX)*BOX + (j/BOX)*BOX*N;
#endif
#endif
			k++;
		}
	}
	for (i = 0; i < N*N; i++)
	{
		k = 0;
		for (c = 0; c < C; c++)
			for (j = 0; j < N; j++)
			{
				if ((m = path[constraint[i][c]][j]) == i)
					continue;
				for (n = 0; n < k; n++)
					if (paths[i][n] == m)
						break;
				if (n < k)
					continue;
				paths[i][k] = m;
				k++;
			}
	}
#if SUMMARY || TIMING
	per = 0;
#endif
#if SUMMARY
	nodes = 0;
	elapsed = usr();
#endif
#if GENERATE
	if (generate)
	{
		for (i = 0; i < N*N; i++)
			pick[i] = i;
		do
		{
#if TIMING
			timing = usr();
#endif
	generate_punt:
#if SUMMARY
			nodes += per;
#endif
			per = 0;
#if TIMING
			sub = propagations;
#endif
			for (i = 0; i < N*N; i++)
			{
				j = RAND(N*N);
				while ((k = RAND(N*N)) == j);
				m = pick[j];
				pick[j] = pick[k];
				pick[k] = m;
			}
			try[0].grid = empty;
			solutions = 0;
			level = 0;
			for (;;)
			{
				if (level > generate)
				{
					i = forward(&try[level].grid, &try[level+1].grid);
					if (i == SOLUTION)
						goto generate_solution;
					if (i == INVALID)
						goto generate_pop;
				}
				else
				{
					for (i = 0; i < N*N; i++)
						if (!try[level].grid.done[pick[i]])
							break;
					i = pick[i];
				}
				level++;
				try[level].index = i;
				try[level].candidates = try[level-1].grid.cell[i];
			generate_next:
				if (!try[level].candidates)
				{
			generate_pop:
					if (--level > 0)
						goto generate_next;
					goto generate_punt;
				}
				if (++per > N*N)
					goto generate_punt;
				z = try[level].candidates;
				x = 0;
				m = maximal ? 0 : N*N+1;
				do
				{
					NEXT(z, v, w);
					try[level].grid = try[level-1].grid;
					if (!move(&try[level].grid, try[level].index, v, -1, 0))
						try[level].candidates &= ~v;
					else if (maximal ? (m < try[level].grid.holes) : (m > try[level].grid.holes))
					{
						m = try[level].grid.holes;
						x = v;
					}
				} while (z ^= v);
				if (!x)
					goto generate_pop;
				try[level].candidates ^= x;
				try[level].grid = try[level-1].grid;
				if (!move(&try[level].grid, try[level].index, x, -1, 0))
					goto generate_next;
#if AHA
				printf("AHA level=%d %s=%c holes=%d\n", level, fmtpos(try[level].index), name[clue(x)], try[level].grid.holes);
#endif
				if (!try[level].grid.holes)
				{
					if (level < maximal)
						goto generate_next;
			generate_solution:
					if (solutions++)
					{
						original = try[level].grid;
						m = n = level;
						for (i = 1; i <= n; i++)
						{
							index[i-1] = try[i].index;
							value[i-1] = try[i].grid.done[try[i].index];
						}

						/* this loop minimizes the solution */

						for (j = 0; j < n;)
						{
							try[0].grid = empty;
							for (k = 0; k < n; k++)
								if (k != j)
									move(&try[0].grid, index[k], MASK(value[k]-1), 0, 0);
							if (!try[0].grid.done[index[j]] && move(&try[0].grid, index[j], try[0].grid.cell[index[j]] & ~MASK(value[j]-1), 0, 0))
							{
								/* SOLUTION => required clue */

								level = 0;
								for (;;)
								{
									if ((i = forward(&try[level].grid, &try[level+1].grid)) >= 0)
									{
										level++;
										try[level].index = i;
										try[level].candidates = try[level-1].grid.cell[i];
									}
									else if (i == SOLUTION)
										break;
								minimize_next:
									if (!try[level].candidates)
									{
										if (--level > 0)
											goto minimize_next;
										break;
									}
									if (++per > cut)
										goto minimize_punt;
									NEXT(try[level].candidates, x, i);
									try[level].candidates ^= x;
									try[level].grid = try[level-1].grid;
									if (!move(&try[level].grid, try[level].index, x, -1, 0))
										goto minimize_next;
								}
								if (i == SOLUTION)
								{
									j++;
									continue;
								}
							}
							n--;
							index[j] = index[n];
							value[j] = value[n];
						}
					minimize_punt:
						if (clues && (maximal ? (n < clues) : (n > clues)))
							break;
						puzzles++;
#if LABEL
#if PRINT
						if (puzzles > 1)
							putchar('\n');
#endif
						printf("# puzzle=%lu clues=%d/%d", puzzles, n, m);
						if (j >= n)
							printf(" minimal");
#if TIMING
						timing = usr() - timing;
						seconds = (int64_t)timing;
						seconds /= RESOLUTION;
						printf(" seconds=%.06f nodes=%lu propagations=%" LLFORMAT "u", seconds, per, propagations - sub);
#endif
						printf(" solution=");
						for (i = 0; i < N*N; i++)
							putchar(name[original.done[i]]);
						putchar('\n');
#if PRINT
						putchar('\n');
#endif
#endif
						try[0].grid = empty;
						for (i = 0; i < n; i++)
							try[0].grid.done[index[i]] = value[i];
						list(&try[0].grid, !(LINE&2));
#if TIMING
						if (clues || seconds > 1 || !(puzzles % 24))
#else
						if (clues || !(puzzles % 24))
#endif
							fflush(stdout);
						break;
					}
					goto generate_next;
				}
			}
		} while (!number || puzzles < number);
#if SUMMARY
		solutions = puzzles++;
#endif
		goto done;
	}
#endif

	/* loop on each puzzle */

	for (;;)
	{
		puzzles++;
#if LABEL && ( PRINT || TIMING )
		initial = hidden;
#endif
#if SUMMARY
		nodes += per;
#endif
#if SUMMARY || TIMING
		per = 0;
		sub = propagations;
#endif
		try[0].grid = empty;
#if PRINT & 2
		original = empty;
#endif
		i = n = 0;
		k = 1;
		invalid = 0;
#if TIMING

		/* start timer on empty grid because move() may solve straight away */

		timing = usr();
#endif
#if ENCODE
		code = bits = 0;
#endif

		/* parse the grid */

		do
		{
			while (!(j = *s++) || j == '#' || (j == '/' && *s == '/'))
			{
				if (!(s = (unsigned char*)(*argv ? *++argv : fgets(buf, sizeof(buf), stdin))))
				{
					if (i)
						printf("%lu:%lu unexpected EOF\n", puzzles, lines);
					goto done;
				}
				lines++;
				n = i;
#if LABEL && ( PRINT || TIMING )
				if (!i)
					initial = hidden = lines;
#endif
			}
			if (j == '"' || (j == '[' && (j = ']')) || (j == '<' && (j = '>')) || (j == '{' && (j = '}') && ++i))
			{
				while ((c = *s++) != j)
					if (!c && (*argv || (j != '"' && j != ']') || !(s = (unsigned char*)fgets(buf, sizeof(buf), stdin))))
					{
						if (!s)
						{
							if (i)
								printf("%lu:%lu unexpected EOF\n", puzzles, lines);
							goto done;
						}
						s--;
						break;
					}
			}
			else if (!(v = token[j]))
			{
				i++;
#if ENCODE
				code <<= 1;
				if (++bits >= 8)
				{
					bits -= 8;
					putchar(code>>bits);
				}
#endif
			}
			else if (v == E)
			{
				if (!invalid)
				{
					invalid = 1;
					printf("%lu:%lu invalid cell %s=%c -- input may not be order %d\n", puzzles, lines, fmtpos(i), j, N);
				}
			}
			else if (v != A)
			{
				if (k && (u = token[*s]) && u != A && u != E)
				{
					t = s;
					while ((u = token[*++t]) && u != A && u != E);
					if ((t - s) < 9 && (*t == ' ' || *t == '\t' || (k > 1 && *t != '.' && *t != '-')))
					{
						k = 2;
						s = t;
						i++;
						continue;
					}
					k = 0;
				}
#if ENCODE
				c = 0;
				m = 0;
				x = 1;
				for (j = 0; j < N; j++)
				{
					if (try[0].grid.cell[i] & x)
					{
						m++;
						if (x == v)
							c = m;
					}
					x <<= 1;
				}
				if (m > 1)
				{
					bits++;
					code <<= 1;
					code |= 1;
					for (x = 1; x < m; x <<= 1)
					{
						bits++;
						code <<= 1;
					}
					code |= c;
					if (bits >= 8)
					{
						bits -= 8;
						putchar(code>>bits);
					}
				}
#endif
				if ((x = try[0].grid.cell[i]) && !(x & v) || !x && ((1<<(try[0].grid.done[i]-1)) != v) || !move(&try[0].grid, i, v, 0, 0))
				{
					invalid = 1;
					printf("%lu:%lu invalid cell %s=%c\n", puzzles, lines, fmtpos(i), name[clue(v)]);
				}
#if PRINT & 2
				FFS(v, x);
				original.done[i] = x + 1;
#endif
				i++;
			}
		} while (i < N*N);
#if ENCODE
		if (bits)
		{
			while (bits++ < 8)
				code <<= 1;
			putchar(code);
		}
		continue;
#endif

		/* parse manual ops */

		m = 0;
		level = 0;
		for (;;)
		{
			while (!(j = *s++) || j == '#' || (j == '/' && *s == '/'))
			{
				if (*argv)
				{
					if (!(s = (unsigned char*)*++argv))
					{
						s = (unsigned char*)"";
						argv--;
						break;
					}
				}
				else if (!(s = (unsigned char*)fgets(buf, sizeof(buf), stdin)))
				{
					s = (unsigned char*)"";
					break;
				}
				lines++;
#if LABEL && ( PRINT || TIMING )
				hidden = lines;
#endif
			}
			if (j == '[' && (n = (int)strtol((char*)s, &e, 10)) && (*e != ',' || ++e) && (k = (int)strtol(e, &e, 10)) && *e++ == ']' && *e++ == '=')
			{
				if (*e == '{')
				{
					v = 0;
					while (*++e)
						if (*e == '}')
						{
							e++;
							break;
						}
						else if (*e != ',' && (x = token[(int)*e]) != A)
							v |= x;
				}
				else
					v = token[(int)*e++];
				s = (unsigned char*)e;
				i = (n - 1) * N + k - 1;
				if (!try[0].grid.cell[i] || (!(try[0].grid.cell[i] & v) || !move(&try[0].grid, i, v, 0, 0)))
				{
					invalid = 1;
					printf("%lu:%lu invalid move %s=%s\n", puzzles, lines, fmtpos(i), fmtset(v));
				}
			}
			else if (j != ' ' && j != '\t' && j != '\n')
			{
				s--;
				break;
			}
		}
		if (invalid)
			continue;
		invalid = solutions;
		level = 0;
#if BACKDOOR
		original = try[0].grid;
#endif
		if (!try[0].grid.holes)
		{
			solutions++;
#if EASY
#if SUMMARY
			easy++;
#endif
#if LABEL
			simple = 1;
#endif
#endif
#if UNIQUE
			unique = try[0].grid;
#endif
		}
		else
		{
#if EASY && LABEL
			simple = 0;
#endif

			/* this loop is the forward checking tree search */

			for (;;)
			{
				if ((i = forward(&try[level].grid, &try[level+1].grid)) >= 0)
				{
					level++;
					try[level].index = i;
					try[level].candidates = try[level-1].grid.cell[i];
				}
				else if (i == SOLUTION)
				{
					solutions++;
#if !COUNT
#if UNIQUE
					if ((solutions - invalid) == 1)
						unique = try[level].grid;
					else
#endif
					break;
#elif PRINT
					if (puzzles > 1 && (solutions - invalid) == 1)
						putchar('\n');
					list(&try[level].grid, LINE);
					putchar('\n');
#endif
				}
 next:
				if (!try[level].candidates)
				{
					if (--level > 0)
						goto next;
					break;
				}
#if SUMMARY || TIMING
				per++;
#endif
				NEXT(try[level].candidates, x, i);
				try[level].candidates ^= x;
				try[level].grid = try[level-1].grid;
				if (!move(&try[level].grid, try[level].index, x, -1, 0))
					goto next;
#if TRACE
				printf("%3d %s=%c (%d)\n", level, fmtpos(try[level].index), name[i+1], try[level].grid.holes);
#endif
			}
		}
#if CANON
		canon(try[level].grid.done, try[level+1].grid.done);
#endif
#if TIMING
		timing = usr() - timing;
		seconds = (int64_t)timing;
		seconds /= RESOLUTION;
#endif
#if LABEL
#if PRINT
#if !COUNT
		if (puzzles > 1)
			putchar('\n');
#endif
		printf("# ");
#endif
#if TIMING
		printf("%11.06f %12" LLFORMAT "u %8lu %3d", seconds, propagations - sub, per, level);
#endif
#endif
#if PRINT || TIMING
#if LABEL
#if TIMING
		putchar(' ');
#endif
		printf("  %lu", puzzles);
		if (initial != puzzles)
			printf(":%lu", initial);
#endif
		switch (solutions - invalid)
		{
		case 0:
#if COUNT
			printf(" 0 solutions\n");
#else
			printf(" no solution\n");
#endif
			break;
		case 1:
#if COUNT
			if (level < 0)
				level = 0;
			printf(" 1 solution\n");
#else
#if UNIQUE
			if (level < 0)
				level = 0;
			try[level].grid = unique;
#endif
#if BACKDOOR
			printf("   backdoor");
			if (original.holes)
			{
				for (i = 1; i <= N; i++)
					if (backdoor(&try[level].grid, &original, -1, i, 0, magic))
						break;
				if (i > N)
					printf(" error");
			}
			else
				printf(" constrained");
#endif
#if LABEL
#if EASY
			if (simple)
				printf(" easy");
#endif
			putchar('\n');
#endif
#if PRINT
#if PRINT & 2
			list(&original, LINE);
			putchar('\n');
#endif
#if CANON
			list(&try[level+1].grid, -1);
#endif
#if PRINT & 1
			list(&try[level].grid, LINE);
#endif
#endif
#endif
			break;
		default:
#if COUNT
			printf(" %lu solutions\n", solutions - invalid);
#else
			printf(" multiple solutions\n");
#endif
			break;
		}
#elif COUNT
		printf("%lu\n", solutions - invalid);
#endif
	}
 done:
#if SUMMARY
	puzzles--;
	elapsed = usr() - elapsed;
	seconds = (int64_t)elapsed;
	seconds /= RESOLUTION;
	if (!(rate = seconds))
		rate = 1;
	rate = puzzles / rate;
#if PRINT
	putchar('\n');
#endif
#if GENERATE || PRINT
	printf("# ");
#endif
	if (hzcpu)
		printf("%.0f/s/%cHz %cC %.1f C/n %.0f ", rate / hzcpu, hzunit, hzunit, hzcpu * seconds, hzcpu * hznorm * seconds / (int64_t)nodes);
	else
		printf("%.0f/s ", rate);
	printf("puzzles %lu seconds %.06f propagations %" LLFORMAT "u nodes %" LLFORMAT "u", puzzles, seconds, propagations, nodes);
#if EASY
	if (easy)
		printf(" easy %lu", easy);
#endif
#if !COUNT
	if (solutions != puzzles)
		printf(" invalid %lu", puzzles - solutions);
#endif
	printf("\n");
#endif
	return 0;
}
