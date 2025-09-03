/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2011                        *
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
 * -DB=n	sudoku box size (default 3) => N=B*B
 * -DN=n	number of rows/cols => QWH -- no box constraint
 * -DG=1	sudoku-dg -- add 9 box position constraints
 * -DNC=1	sudoku-nc -- add 4-neighborhood non-consecutive constraints
 * -DX=1	sudoku-x -- add 9 diagonal anti-diagonal constraints
 * -DCOUNT=1	print total # solutions for each puzzle
 * -DDEBUG=1	enable debug output
 * -DEASY=0	don't list easy puzzle count
 * -DGENERATE=1	enable minimal puzzle generation
 * -DITERATE=n	forward check iteration change
 *		{ 1:hole(N>30) 2:candidate(default) }
 * -DLABEL=0	don't label PRINT output
 * -DLINE=1	print puzzles on one line instead of an NxN grid
 * -DPRINT=n	print solutions or minimal puzzles in grid form
 *		{ 1:solution 2:problem 4:LABEL=0,LINE=0,SUMMARY=0 }
 * -DSUMMARY=0	disable solution summary
 * -DSUPERFLUOUS list superfluous clues
 * -DTIMING=1	print individual solution timings
 * -DTRACE=1	enable move trace
 * -DUNIQUE=1	verify unique solution
 */

static const char id[] = "\n@(#)$Id: pseudocoup (AT&T Research) 2007-10-11 $\n";

static const char command[] = "pseudocoup";

#include <stdio.h>
#include <stdlib.h>

#if !defined(B) && !defined(N)
#define B		3
#endif

#if defined(B)
#undef	N
#define N		(B*B)
#endif

typedef unsigned char Part_t;

#define P		(8*sizeof(Part_t))
#define V		((N-1)/P+1)

#if N >= 1000
#define W		4
#elif N >= 100
#define W		3
#elif N >= 10
#define W		2
#else
#define W		1
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

#ifndef ITERATE
#if N > 30
#define ITERATE		1
#else
#define ITERATE		2
#endif
#endif

#if !B
#if G || X || NC
#error "G,X,NC incompatible with !B"
#endif
#define PUZZLE		"QWH (latin square)"
#define C		2
#else
#if G
#define S_G		"-dg"
#define N_G		1
#else
#define S_G
#define N_G		0
#endif
#if X
#define S_X		"-x"
#define N_X		1
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
typedef __int64 int64_t;
typedef unsigned __int64 uint64_t;
#define LLFORMAT	"I64"
#else
#include <inttypes.h>
#define LLFORMAT	"ll"
#endif

typedef Part_t Bits_t[V];

#if N < 10

typedef unsigned char Index_t;
typedef unsigned char Ordinal_t;

#define ORD		"%d"
#define INX		"%2d"

#elif N < 100

typedef unsigned short Index_t;
typedef unsigned char Ordinal_t;

#define ORD		"%02d"
#define INX		"%4d"

#elif N < 1000

typedef unsigned int Index_t;
typedef unsigned short Ordinal_t;

#define ORD		"%03d"
#define INX		"%6d"

#else

typedef unsigned int Index_t;
typedef unsigned int Ordinal_t;

#define ORD		"%04d"
#define INX		"%8d"

#endif

#define E		(3)
#define H(x)		do{if(html)fprintf(stderr,"%s",x);}while(0)
#define T(x)		fprintf(stderr,"%s",x)
#define S(x)		XS(x)
#define XS(x)		# x

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
T("  pseudocoup - " S(N) "x" S(N) " " PUZZLE " " TYPE "\n");
T("\n");
T("SYNOPSIS\n");
T("  pseudocoup [ options ] [ puzzle ... | < puzzle.file ... ]\n");
T("\n");
T("DESCRIPTION\n");
T("  pseudocoup solves " S(N) "x" S(N) " " PUZZLE " puzzles defined by the literal puzzle\n");
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
T("  -gN  Generate puzzles (with one solution). N>1 enables hole heuristic.\n");
T("  -nN  Limit -g to N puzzles (default no limit).\n");
T("  -rN  Set the pseudo random number generator seed to N (default 1).\n");
#endif
#if SUMMARY
T("  -sN  Normalize solving time for a processor speed of N (default GHz).\n");
#endif
#if SUMMARY
T("\n");
#endif
T("  There are a few compile time options that may degrade performance.  Other\n");
T("  compile time options control puzzle order (4..64) and QWH (quasigroup\n");
T("  with holes or latin square) vs. sudoku.  See the source for details.\n");
T("\n");
T("DETAILS\n");
T("  pseudocoup is coded for solving speed.  It uses only two simple constraints:\n");
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
T("  to right, top to bottom.  Space separated numbers are clue values,\n");
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
T("  version     pseudocoup " S(N) "x" S(N) " (AT&T Research) 2007-10-11\n");
T("  author      Glenn Fowler <gsf@research.att.com>\n");
T("  copyright   Copyright (c) 2005-2007 AT&T Knowledge Ventures\n");
T("  license     http://www.opensource.org/licenses/cpl1.0.txt\n");
H("</PRE>\n");
H("</BODY>\n");
H("</HTML>\n");
}

typedef struct Grid_s
{
	Bits_t		cell[N*N];
	Ordinal_t	free[C*N][N+1];
	Ordinal_t	done[N*N];
	int		holes;
} Grid_t;

typedef struct More_s
{
	Bits_t		value;
	Index_t		index;
	Ordinal_t	ordinal;
} More_t;

typedef struct Stack_s
{
	Grid_t		grid;
	Index_t		index;
	Bits_t		candidates;
} Stack_t;

typedef struct Delta_s
{
	unsigned long	group;
	unsigned long	single;
	Bits_t		value;
	Bits_t		join;
	Index_t		count;
} Delta_t;

static Ordinal_t		constraint[N*N][C];
static Ordinal_t		count[1<<P];

static Index_t			ordinal[1<<P];
static Index_t			path[C*N][N];

static Part_t			next[1<<P];
static Part_t			ident[P+1];

#if B
#if G
#define M			(2*((N-1)+(B-1)*(B-1)))
#else
#define M			(2*(N-1)+(B-1)*(B-1))
#endif
#else
#define M			(2*(N-1))
#endif

static Delta_t			delta[N*N];
static Index_t			moves[N*N];
static Index_t			paths[N*N][M];
static More_t			more[C*N*N];

static Ordinal_t		row[N*N];
static Ordinal_t		col[N*N];

static Grid_t			empty;

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

#include <windows.h>

static uint64_t
usr(void)
{
	uint64_t	fs;

	static uint64_t	os;

	fs = (RESOLUTION / 1000) * GetTickCount();
	if (fs < os)
		fs += 0xffffffffL + 1;
	return os = fs;
}

#else

#include <sys/time.h>
#include <sys/resource.h>

static uint64_t
usr(void)
{
	struct rusage	ru;

	getrusage(RUSAGE_SELF, &ru);
	return (uint64_t)(ru.ru_utime.tv_sec + ru.ru_stime.tv_sec) * (uint64_t)RESOLUTION + (uint64_t)ru.ru_utime.tv_usec + (uint64_t)ru.ru_stime.tv_usec;
}

#endif

#endif

static void
bitini(Bits_t a, Part_t v)
{
	register int	i;

	if (v)
		v = ~0;
	for (i = 0; i < V - 1; i++)
		a[i] = v;
	if (v)
		v = (1 << (N - 8 * i)) - 1;
	a[i] = v;
}

static void
bitset(Bits_t a, int n)
{
	register int	i;

	bitini(a, 0);
	i = (n - 1) / P;
	n -= i * P;
	a[i] = ident[n];
}

static int
bitinx(Bits_t a)
{
	register int	i;

	for (i = 0; i < V; i++)
		if (a[i])
			return i * P + ordinal[a[i]];
	return 0;
}

static int
bitcpy(Bits_t a, const Bits_t b)
{
	register int	i;
	register int	r;

	r = 0;
	for (i = 0; i < V; i++)
		r |= (a[i] = b[i]);
	return r;
}

static int
bittst(Bits_t a, const Bits_t b)
{
	register int	i;
	register int	r;

	r = 0;
	for (i = 0; i < V; i++)
		r |= (a[i] & b[i]);
	return r;
}

static int
bitand(Bits_t a, const Bits_t b)
{
	register int	i;
	register int	r;

	r = 0;
	for (i = 0; i < V; i++)
		r |= (a[i] &= b[i]);
	return r;
}

static int
bitands(Bits_t a, const Bits_t b, const Bits_t c)
{
	register int	i;
	register int	r;

	r = 0;
	for (i = 0; i < V; i++)
		r |= (a[i] = b[i] & c[i]);
	return r;
}

static int
bitclrs(Bits_t a, const Bits_t b, const Bits_t c)
{
	register int	i;
	register int	r;

	r = 0;
	for (i = 0; i < V; i++)
		r |= (a[i] = b[i] & ~c[i]);
	return r;
}

static int
bitclr(Bits_t a, const Bits_t b)
{
	register int	i;
	register int	r;

	r = 0;
	for (i = 0; i < V; i++)
		r |= (a[i] &= ~b[i]);
	return r;
}

static int
biteq(Bits_t a, const Bits_t b)
{
	register int	i;

	for (i = 0; i < V; i++)
		if (a[i] != b[i])
			return 0;
	return 1;
}

static void
bitor(Bits_t a, const Bits_t b)
{
	register int	i;

	for (i = 0; i < V; i++)
		a[i] |= b[i];
}

static void
bitxor(Bits_t a, const Bits_t b)
{
	register int	i;

	for (i = 0; i < V; i++)
		a[i] ^= b[i];
}

static int
bitcnt(Bits_t a)
{
	register int	i;
	register int	n;

	n = 0;
	for (i = 0; i < V; i++)
		n += count[a[i]];
	return n;
}

static int
bitnxt(Bits_t a, Bits_t b)
{
	register int	i;
	register Part_t	x;

	for (i = 0; i < V; i++)
		if ((x = next[a[i]]))
		{
			a[i] ^= x;
			bitini(b, 0);
			b[i] = x;
			return i * P + ordinal[x];
		}
	return 0;
}

#if GENERATE

static int
rnext(Bits_t a, Bits_t b)
{
	register int	i;
	register int	j;
	register int	z;
	register int	x;

	static Index_t	y[N];

	for (i = j = 0; i < V; i++)
		for (z = a[i]; x = next[z]; z ^= x)
			y[j++] = i * P + ordinal[x];
	if (!j)
		return 0;
	i = y[RAND(j)];
	bitset(b, i);
	bitxor(a, b);
	return i;
}

#endif

static void
show(Grid_t* g)
{
	register int	i, j;
#if B
	register int	k, l;
#endif

	putchar('\n');
	j = N;
#if B
	k = l = B;
#endif
	for (i = 0; i < N*N; i++)
	{
		printf("%*d ", W, bitinx(g->cell[i]));
		if (!--j)
		{
			j = N;
			putchar('\n');
#if B
			k = B;
			if (!--l)
			{
				l = B;
				if (i < N*N-1)
					putchar('\n');
			}
#endif
		}
#if B
		else if (!--k)
		{
			k = B;
			printf("%*s", W, "");
		}
#endif
	}
}

/*
 * format grid position i
 */

static char*
fmtpos(int i)
{
	register char*	s;

	static char	buf[4][2*W+4];
	static int	alt;

	alt = (alt + 1) % elementsof(buf);
	s = buf[alt];
	snprintf(s, sizeof(buf[0]), "[" ORD "," ORD "]", row[i]+1, col[i]+1);
	return s;
}

/*
 * format cell value z
 */

static char*
fmtset(Bits_t z)
{
	register char*	s;
	register char*	e;
	int		i;
	int		n;
	Bits_t		x;
	Bits_t		y;

	static char	buf[4][W*(N+1)+1];
	static int	alt;

	alt = (alt + 1) % elementsof(buf);
	s = buf[alt];
	e = s + W*(N+1);
	*s++ = '{';
	n = 0;
	bitcpy(y, z);
	while (i = bitnxt(y, x))
	{
		n++;
		s += snprintf(s, e - s, "%d", i);
	}
	if (!(n = n != 1))
		*s++ = '}';
	*s = 0;
	return buf[alt] + n;
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
					bitor(delta[i].join, delta[i].value); \
					delta[i].count++; \
				} \
			} \
			else if (!n) \
			{ \
				moves[(*d)++] = i; \
				delta[i].group = group; \
				delta[i].single = single; \
				bitini(delta[i].join, 0); \
				delta[i].count = 1; \
			} \
			bitcpy(delta[i].value, v); \
		} \
	} while (0)

/*
 * limit grid g position i to w and update F and N constraints
 * if d!=0 then delta list is updated and *d is the list size
 */

static int
move(register Grid_t* g, int i, Bits_t w, int b, int* d)
{
	int		j;
	int		k;
	int		c;
	int		m;
	int		n;
	int		o;
	int		p;
	int		q;
	int		r;
	int		u;
	int		f;
	Bits_t		v;
	Bits_t		x;
	Bits_t		z;

	if (!bitcnt(w))
		return 1;
	single++;
	m = n = o = 0;
	bitcpy(v, w);
	for (;;)
	{
#if SUMMARY
		propagations++;
#endif
		if (bitands(x, g->cell[i], v))
		{
			if (r = bitclrs(z, g->cell[i], v))
				DELTA(b, d, i, v);
			if (bitcnt(x) > 1)
				bitcpy(g->cell[i], x);
			else
			{
				bitini(g->cell[i], 0);
				if (!o)
					o = bitinx(x);
				g->done[i] = o;
				if (!--g->holes)
					break;
				for (j = 0; j < elementsof(paths[i]); j++)
					if (bittst(g->cell[k = paths[i][j]], x))
					{
						if (!bitclr(g->cell[k], x))
							return 0;
						bitcpy(v, g->cell[k]);
						DELTA(b, d, k, v);
						if (bitcnt(v) == 1)
						{
							more[n].index = k;
							bitcpy(more[n].value, v);
							more[n].ordinal = bitinx(v);
							n++;
						}
						for (c = 0; c < C; c++)
							if (!(f = --g->free[p = constraint[k][c]][o]))
								return 0;
							else if (f == 1)
								for (q = 0; q < N; q++)
									if (bittst(g->cell[u = path[p][q]], x))
									{
										more[n].index = u;
										bitcpy(more[n].value, x);
										more[n].ordinal = o;
										n++;
										break;
									}
					}
			}
			if (r)
				while (o = bitnxt(z, x))
					for (c = 0; c < C; c++)
						if (!(f = --g->free[p = constraint[i][c]][o]))
							return 0;
						else if (f == 1)
							for (q = 0; q < N; q++)
								if (bittst(g->cell[u = path[p][q]], x))
								{
									more[n].index = u;
									bitcpy(more[n].value, x);
									more[n].ordinal = o;
									n++;
									break;
								}
		}
		if (m >= n)
			break;
		i = more[m].index;
		bitcpy(v, more[m].value);
		o = more[m].ordinal;
		if (++m == n)
			m = n = 0;
	}
#if DEBUG
	if (b < 0)
	{
		for (i = 0; i < N*N; i++)
		{
			printf(" " INX, bitinx(g->done[i]));
			if (!((i+1)%N))
				printf("\n");
		}
		for (i = 0; i < C*N; i++)
		{
			if (!(i % N))
				printf("\n");
			for (j = k = m = 0; j++ < N;)
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
	register int		k;
	register int		n;
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
	Bits_t			f;
	Bits_t			q;
	Bits_t			x;
	Bits_t			z;

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
			if (!g->done[i])
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
				bitini(f, 0);
				bitini(q, 0);
				bitcpy(z, g->cell[i]);
				p = &d;
				while (w = bitnxt(z, x))
				{
					*h = *g;
					if (!move(h, i, x, n, p))
					{
						bitor(q, x);
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
						bitor(f, x);
					}
				}
				for (k = 0; k < V; k++)
					z[k] = (g->cell[i][k] ^ q[k]) & f[k];
				if (!biteq(z, g->cell[i]))
				{
					if (!bitcnt(z) || !move(g, i, z, 0, 0))
						return INVALID;
					if (!g->holes)
						return SOLUTION;
#if ITERATE > 1
					iterate++;
#endif
				}
				if (p)
					while (d--)
						if (delta[moves[d]].count == n && bitcpy(z, g->cell[moves[d]]))
						{
							for (k = 0; k < V; k++)
								x[k] = z[k] & (delta[moves[d]].value[k] | delta[moves[d]].join[k]);
							if (!biteq(x, z))
							{
								if (!move(g, moves[d], x, 0, 0))
									return INVALID;
								if (!g->holes)
									return SOLUTION;
#if ITERATE > 1
								iterate++;
#endif
							}
						}
				if (bm > m)
				{
					if (!g->done[i])
					{
						bm = m;
						bi = i;
						t = 1;
						tie[0] = i;
						prv[pi++] = i;
					}
				}
				else if (bm == m && !g->done[i])
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
				if (bitcpy(z, g->cell[tie[i]]))
				{
					m = 0;
					while (w = bitnxt(z, x))
						for (c = 0; c < C; c++)
							m += g->free[constraint[tie[i]][c]][w];
					if (n > m)
					{
						n = m;
						bi = tie[i];
					}
				}
		}
		for (;;)
		{
			if (!g->done[bi])
			{
#if AHA > 1
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

#if GENERATE || PRINT

static void
list(register Grid_t* g, int line)
{
	int		i;
#if B
	int		n;
#endif

	static int	separate;

	if (line)
	{
		for (i = 0; i < N*N; i++)
			printf(ORD, g->done[i]);
		if (line < 0)
			putchar(' ');
		else
			putchar('\n');
	}
	else
	{
		if (separate)
		{
			putchar('\n');
			putchar('\n');
		}
		else
			separate = 1;
#if B
		n = 0;
#endif
		for (i = 0; i < N*N; i++)
		{
			printf(ORD, g->done[i]);
			if (!((i + 1) % N))
			{
				putchar('\n');
#if B > 8
				putchar('\n');
#endif
#if B
				if (i < N*N-1 && ++n >= B)
				{
					n = 0;
					putchar('\n');
				}
#endif
			}
			else
			{
#if B > 8
				if (!((i + 1) % B))
					putchar('\n');
				else
					putchar(' ');
#else
				putchar(' ');
#if B
				if (!((i + 1) % B))
					putchar(' ');
#endif
#endif
			}
		}
	}
}

#endif

#define get(c,s,a)	(!s?(c=getchar()):(c=*s++)?c:!*(a+1)?(s--,(c=EOF)):(c=*(s=(unsigned char*)*++a))?(s++,a++,c):(c=EOF))

int
main(int argc, char** argv)
{
	register int	i;
	register int	j;
	register int	k;
	register int	n;
	Bits_t		x;
	Bits_t		v;
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
	int		batch;
	int		chunk;
	int		holes;
#endif
#if SUMMARY || TIMING
	double		seconds;
	uint64_t	sub;
#endif
#if TIMING
	uint64_t	timing;
#endif
#if GENERATE || ( PRINT & 2 )
	Grid_t		original;
#endif
#if GENERATE || UNIQUE
	Grid_t		unique;
#endif
#if GENERATE
	unsigned long	number;
	Bits_t		z;
	int		clues;
	int		generate;
	int		w;
	Ordinal_t	shuffle[N+1];
	Grid_t		gen;
	Grid_t		tst;
#endif
	unsigned char*	s;
#if GENERATE || SUMMARY
	char*		e;
#endif

	static Stack_t	try[64];

#if SIZEOF
	printf("%d %d %d\n", sizeof(try), sizeof(try[0]), sizeof(try[0].grid));
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
	batch = 0;
	clues = 0;
	generate = 0;
	number = 0;
#endif
#if SUMMARY
	hzcpu = 0;
	hzunit = ' ';
	hznorm = 1;
#endif
	for (;;)
		if (!(s = (unsigned char*)*++argv))
			break;
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
				case 'b':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					batch = (int)strtoul((char*)s, &e, 0);
					s = (unsigned char*)e - 1;
					continue;
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

	for (i = 1; i <= P; i++)
	{
		ident[i] = 1<<(i-1);
		ordinal[1<<(i-1)] = i;
	}
	for (i = 0; i < (1<<P); i++)
	{
		k = 0;
		for (j = 1; j < (1<<P); j <<= 1)
			if ((i & j) && !k++)
				next[i] = j;
		count[i] = k;
	}
	empty.holes = N*N;
	for (i = 0; i < N*N; i++)
	{
		bitini(empty.cell[i], 1);
		empty.done[i] = 0;
	}
	for (i = 0; i < C*N; i++)
		for (j = 1; j <= N; j++)
			empty.free[i][j] = N;
	for (i = 0; i < N*N; i++)
	{
		row[i] = i / N;
		col[i] = i % N;
	}
	k = 0;
	for (i = 0; i < N; i++)
	{
#if B
		n = 2*N + ((i / B) * B);
#endif
		for (j = N; j < 2*N; j++)
		{
			constraint[k][0] = i;
			constraint[k][1] = j;
#if B
			constraint[k][2] = n + ((j / B) % B);
#if G
			constraint[k][3] = 3*N + (j%B) + ((i%B)*B);
#endif
#endif
			k++;
		}
	}
	k = 0;
	for (i = 0; i < N; i++)
	{
#if B
		n = (i/B)*B*N + (i%B)*B;
#if G
		m = (i/B)*N + (i%B);
#endif
#endif
		for (j = 0; j < N; j++)
		{
			path[i][j] = k;
			path[N+j][i] = k;
#if B
			path[2*N+i][j] = n + (j/B)*N + (j%B);
#if G
			path[3*N+i][j] = m + (j%B)*B + (j/B)*B*N;
#endif
#endif
			k++;
		}
	}
	for (i = 0; i < N*N; i++)
		for (c = k = 0; c < C; c++)
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
		/*
		 * NxN random algs need improvement for large N
		 * we cheat by generating random puzzles from one
		 * family of easily constructed solution grids, ala
		 * Michael Metcalf, except no even/odd special cases
		 */

		original = empty;
		for (i = j = k = 0; i < N; i++)
		{
			m = i + 1;
			for (n = 0; n < N; n++)
			{
				original.done[j * N + n] = m;
				if (++m > N)
					m = 1;
			}
			if ((j += B) >= N)
				j = ++k;
		}
		for (i = 1; i <= N; i++)
			shuffle[i] = i;
		do
		{
#if TIMING
			timing = usr();
#endif
#if SUMMARY
			nodes += per;
#endif
			per = 0;
#if TIMING
			sub = propagations;
#endif
			for (n = 0; n < N*N*N; n++)
			{
				i = RAND(N) + 1;
				j = RAND(N) + 1;
				if (i != j)
				{
					k = shuffle[i];
					shuffle[i] = shuffle[j];
					shuffle[j] = k;
				}
			}
			gen = unique = empty;
			m = 0;
			for (;;)
			{
				n = RAND(N*N);
				if (!unique.done[n])
				{
					m++;
					gen.done[n] = shuffle[k = original.done[n]];
					bitset(x, k);
					move(&unique, n, x, 0, 0);
					if (!unique.holes)
						break;
					if (generate > 1)
					{
#if AHA
						n = unique.holes;
						k = 0;
#endif
						for (i = 0; i < N*N; i++)
							if (!unique.done[i] && bitcnt(unique.cell[i]) <= generate)
							{
								j = 0;
								bitcpy(z, unique.cell[i]);
								bitcpy(v, z);
								bitset(x, original.done[i]);
								bitxor(z, x);
								while (bitnxt(z, x))
								{
									tst = unique;
									if (!move(&tst, i, x, 0, 0))
									{
										bitxor(v, x);
										j++;
									}
								}
								if (j)
								{
#if AHA
									k += j;
#endif
									move(&unique, i, v, 0, 0);
								}
							}
#if AHA
						if (k)
						{
							printf("# moves %d drop %d holes %d => %d\n", m, k, n, unique.holes);
							fflush(stdout);
						}
#endif
					}
				}
			}
			puzzles++;
#if AHA
			printf("\n");
#endif
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
			putchar('\n');
#if PRINT
			putchar('\n');
#endif
#endif
			list(&gen, N <= 9);
#if TIMING
			if (seconds > 1 || !(puzzles % 24))
#else
			if (!(puzzles % 24))
#endif
				fflush(stdout);
		} while (!number || puzzles < number);
#if SUMMARY
		solutions = puzzles++;
#endif
		goto done;
	}
#endif

	/* loop on each puzzle */

	lines++;
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
#if TIMING

		/* start timer on empty grid because move() may solve straight away */

		timing = usr();
#endif

		/* parse the grid */

		invalid = 0;
		i = 0;
		n = -1;
		while (get(c, s, argv) != EOF)
		{
			if (c >= '0' && c <= '9')
			{
				if (n < 0)
					n = 0;
				n *= 10;
				n += c - '0';
#if B > 3
				continue;
#endif
			}
			if (c == '.' || n > N)
				n = 0;
			if (n >= 0)
			{
				if (n)
				{
#if SUPERFLUOUS
					if (try[0].grid.done[i])
						printf("# %s superfluous\n", fmtpos(i));
#endif
					bitset(v, n);
					if (!bitcnt(try[0].grid.cell[i]) && try[0].grid.done[i] != n || !move(&try[0].grid, i, v, 0, 0))
					{
						invalid = 1;
						printf("%lu:%lu invalid cell %s=%d\n", puzzles, lines, fmtpos(i), n);
					}
#if PRINT & 2
					original.done[i] = n;
#endif
				}
				if (++i >= N*N)
					break;
				n = -1;
			}
			if (c == '#')
				while (get(c, s, argv) != EOF && c != '\n');
			if (c == '\n')
				lines++;
		}
		if (i < N*N)
		{
			if (c == EOF)
				break;
			continue;
		}
		if (invalid)
			continue;
		invalid = solutions;
		level = 0;
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
					if (++level >= elementsof(try))
					{
						i = 0;
						printf("search too deep\n");
						break;
					}
					try[level].index = i;
					bitcpy(try[level].candidates, try[level-1].grid.cell[i]);
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
				if (!(i = bitnxt(try[level].candidates, x)))
				{
					if (--level > 0)
						goto next;
					break;
				}
#if SUMMARY || TIMING
				per++;
#endif
				try[level].grid = try[level-1].grid;
				if (!move(&try[level].grid, try[level].index, x, -1, 0))
					goto next;
#if TRACE
				printf("%3d %s=" ORD " (%d)\n", level, fmtpos(try[level].index), i, try[level].grid.holes);
#endif
			}
		}
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
#if PRINT & 2
			list(&original, LINE);
			putchar('\n');
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
			{
				level = 0;
				try[level].grid = unique;
			}
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
			list(&try[level].grid, LINE);
#endif
#endif
			break;
		default:
#if COUNT
			printf(" %lu solutions\n", solutions - invalid);
#else
			printf(" multiple solutions\n");
#endif
#if PRINT & 2
			list(&original, LINE);
			putchar('\n');
#endif
			break;
		}
#elif COUNT
		printf("%lu\n", solutions - invalid);
#endif
	}
#if GENERATE
 done:
#endif
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
		printf(" invalid %ld (puzzles=%lu solutions=%lu)", puzzles - solutions, puzzles, solutions);
#endif
	printf("\n");
#endif
	return 0;
}
