/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2009                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * ronk's general fish finder
 */

#define METHOD_Z \
    { \
	'Z', CONSTRAINT_Z, constraint_Z, 0, 0, 0, \
	GFF_NMIN, GFF_NMAX, 0, 0, 0, \
	"Ronk's general fish finder.  n is the max fish size, 2 <= n <= 8.\n" \
"       .m is the max number of fins, 1 <= m <= 3.  Fish sizes in the range\n" \
"       2..n are searched.  .m always denotes a fin count range from 0..m.\n" \
"       n.m.1 limits the size search to n.", \
	GFF_NDEF, GFF_FINSDEF, 0 \
    }

/* compiler directives */
#define GFF_SPEEDUPS		1

/* unit numbers relative to zero */
#define GFF_TESTBU8		0
#define GFF_TESTBU7		0
#define GFF_TESTBU6		0
#define GFF_TESTBU5		7
#define GFF_TESTBU4		10
#define GFF_TESTBU3		16

#define GFF_XWING		2
#define GFF_SWORD		3
#define GFF_JELLY		4
#define GFF_STAR		5
#define GFF_WHALE		6
#define GFF_LEVIATHAN		7
#define GFF_OCTOPUS		8

#define GFF_NMIN		GFF_XWING
#define GFF_NDEF		GFF_STAR
#define GFF_NMAX		GFF_OCTOPUS
#define GFF_FINSDEF		2
#define GFF_FINSMAX		3
#define GFF_ENDOFINSMAX		3

#define GFF_BASE		3
#define GFF_ROWS		(GFF_BASE*GFF_BASE)
#define GFF_COLS		(GFF_BASE*GFF_BASE)
#define GFF_SQUARES		(GFF_ROWS*GFF_COLS)
#define GFF_BANDS		GFF_BASE
#define GFF_N_UNITS		(3*GFF_BASE*GFF_BASE)
#define GFF_TOKENS		(GFF_BASE*GFF_BASE)
#define GFF_COMBOS		(1<<GFF_TOKENS)

#define GFF_SINGLE		1
#define GFF_PAIR		2
#define GFF_TRIPLE		3

#define GFF_FREE_UNIT		0
#define GFF_BASE_UNIT		1
#define GFF_COVER_UNIT		2
#define GFF_NDX_COLBASE		9
#define GFF_NDX_BOXBASE		18

typedef struct Gff_s
{
	Grid_t*		grid;
	Grid_t		temp;

	Order_t*	order;
	Constraints_t*	constraints;

	int		candidate;
	int		flags;
	int		fins;

	int		EXHAUSTIVE;
	int		FINOVERLAP;
	int		MERGEFINS;
	int		MARKPROGRESS;
	int		DEBUG_PRT;
	int		TEST;

	int		rcbase[GFF_BASE*GFF_BASE];	/* lookup table for row and col base */
	int		buddies[GFF_ROWS][GFF_COLS][GFF_BANDS];

	int		unitbusy[GFF_N_UNITS];

	int*		sdgrid;
} Gff_t;

static const char*	gff_name[] =
{
	"x-wing", "sword", "jelly", "star", "whale", "leviathan", "octopus"
};

static const int	gff_unitmask[GFF_N_UNITS][GFF_BANDS] =
{
	/* rows */
	{0777000000, 0000000000, 0000000000},
	{0000777000, 0000000000, 0000000000},
	{0000000777, 0000000000, 0000000000},
	{0000000000, 0777000000, 0000000000},
	{0000000000, 0000777000, 0000000000},
	{0000000000, 0000000777, 0000000000},
	{0000000000, 0000000000, 0777000000},
	{0000000000, 0000000000, 0000777000},
	{0000000000, 0000000000, 0000000777},
	/* cols */
	{0400400400, 0400400400, 0400400400},
	{0200200200, 0200200200, 0200200200},
	{0100100100, 0100100100, 0100100100},
	{0040040040, 0040040040, 0040040040},
	{0020020020, 0020020020, 0020020020},
	{0010010010, 0010010010, 0010010010},
	{0004004004, 0004004004, 0004004004},
	{0002002002, 0002002002, 0002002002},
	{0001001001, 0001001001, 0001001001},
	/* boxes */
	{0700700700, 0000000000, 0000000000},
	{0070070070, 0000000000, 0000000000},
	{0007007007, 0000000000, 0000000000},
	{0000000000, 0700700700, 0000000000},
	{0000000000, 0070070070, 0000000000},
	{0000000000, 0007007007, 0000000000},
	{0000000000, 0000000000, 0700700700},
	{0000000000, 0000000000, 0070070070},
	{0000000000, 0000000000, 0007007007}
};

static Gff_t*
gff_init(int flags)
{
	int		r;
	int		c;
	int		b;

	static Gff_t*	gff;

	if (!gff)
	{
		if (!(gff = newof(0, Gff_t, 1, 0)))
		{
			fprintf(stderr, "%s: out of space\n", command);
			fini(1);
		}
		memset(gff, 0, sizeof(*gff));
		gff->DEBUG_PRT = TRACE(flags) > 5;
		gff->MARKPROGRESS = TRACE(flags) > 4;
		gff->FINOVERLAP = 1;
		gff->MERGEFINS = 1;
		gff->TEST = !!(state.test & 8);
		for (b = 0; b < GFF_BASE * GFF_BASE; ++b)
			gff->rcbase[b] = b / GFF_BASE;
		for (r = 0; r < GFF_ROWS; ++r)
			for (c = 0; c < GFF_COLS; ++c)
				for (b = 0; b < GFF_BANDS; ++b)
				{
					gff->buddies[r][c][b] = gff_unitmask[r][b];
					gff->buddies[r][c][b] |= gff_unitmask[GFF_NDX_COLBASE + c][b];
					gff->buddies[r][c][b] |= gff_unitmask[GFF_NDX_BOXBASE + GFF_BASE * gff->rcbase[r] + gff->rcbase[c]][b];
				}
	}
	return gff;
}

static char*
gff_positions(Gff_t* gff, char* s, char* e, int buns[], int cuns[], int funs[], int N)
{
	int i, j, k;
	int lcuns[GFF_NMAX + GFF_FINSMAX + 1];

	for (i = N - 1, j = 0, k = 0; i >= 0 && funs[j] != -1; ++k)
	{
		if (cuns[i] < funs[j])
			lcuns[k] = cuns[i--];
		else
			lcuns[k] = funs[j++];
	}
	while (funs[j] != -1)
		lcuns[k++] = funs[j++];
	while (i >= 0)
		lcuns[k++] = cuns[i--];
	lcuns[k] = -1;
	for (i = N - 1; i >= 0; --i)
	{
		if (i == N - 1 || (buns[i] / 9 != buns[i + 1] / 9))
			s += snprintf(s, e-s, "%c", buns[i] < GFF_BASE*GFF_BASE? 'r': (buns[i] < 2*GFF_BASE*GFF_BASE? 'c': 'b'));
		s += snprintf(s, e-s, "%d", buns[i] < GFF_BASE*GFF_BASE? buns[i]+1: (buns[i] < 2*GFF_BASE*GFF_BASE? buns[i]-GFF_BASE*GFF_BASE+1: buns[i]-2*GFF_BASE*GFF_BASE+1));
	}
	*s++ = '\\';
	if (gff->MERGEFINS)
		for (i = 0; lcuns[i] != -1; ++i)
		{
			if (i == 0 || (lcuns[i] / 9 != lcuns[i - 1] / 9))
				s += snprintf(s, e-s, "%c", lcuns[i] < GFF_BASE*GFF_BASE? 'r': (lcuns[i] < 2*GFF_BASE*GFF_BASE? 'c': 'b'));
			if (i > 0 && lcuns[i] == lcuns[i - 1])
				continue;
			s += snprintf(s, e-s, "%d", lcuns[i] < GFF_BASE*GFF_BASE? lcuns[i]+1: (lcuns[i] < 2*GFF_BASE*GFF_BASE? lcuns[i]-GFF_BASE*GFF_BASE+1: lcuns[i]-2*GFF_BASE*GFF_BASE+1));
		}
	else
	{
		for (i = N - 1; i >= 0; --i)
		{
			if (i == N - 1 || (cuns[i] / 9 != cuns[i + 1] / 9))
				s += snprintf(s, e-s, "%c", cuns[i] < GFF_BASE*GFF_BASE? 'r': (cuns[i] < 2*GFF_BASE*GFF_BASE? 'c': 'b'));
			s += snprintf(s, e-s, "%d", cuns[i] < GFF_BASE*GFF_BASE? cuns[i]+1: (cuns[i] < 2*GFF_BASE*GFF_BASE? cuns[i]-GFF_BASE*GFF_BASE+1: cuns[i]-2*GFF_BASE*GFF_BASE+1));
		}
		if (funs[0] != -1)
			*s++ = '+';
		for (i = 0; funs[i] != -1; ++i)
			s += snprintf(s, e-s, "%c%d",
				funs[i] < GFF_BASE*GFF_BASE? 'r': (funs[i] < 2*GFF_BASE*GFF_BASE? 'c': 'b'),
				funs[i] < GFF_BASE*GFF_BASE? funs[i]+1: (funs[i] < 2*GFF_BASE*GFF_BASE? funs[i]-GFF_BASE*GFF_BASE+1: funs[i]-2*GFF_BASE*GFF_BASE+1));
	}
	return s;
}

static char*
gff_eliminations(Gff_t* gff, char* s, char* e, int aexc[])
{
	int i, msk, didfirst = 0;
	int row, col;
	int j, nrows, ncols, bitmsk, rowdata;
	int bndA, bndB;
	int mskA, colA, shftA, mskB, colB, shftB;
	int exc[3];

	/* determine if eliminations in fewer cols than rows */

	exc[0] = aexc[0];
	exc[1] = aexc[1];
	exc[2] = aexc[2];
	for (bitmsk = 0400, nrows = 0, i = 0; i < GFF_NDX_COLBASE; bitmsk >>= 1, ++i)
	{
		j = gff->rcbase[i];
		if (gff_unitmask[i][j] & exc[j])
			nrows |= bitmsk;
	}
	for (bitmsk = 0400, ncols = 0, i = GFF_NDX_COLBASE; i < GFF_NDX_BOXBASE; bitmsk >>= 1, ++i)
		for (j = 0; j < GFF_BANDS; ++j)
			if (gff_unitmask[i][j] & exc[j])
				ncols |= bitmsk;
	nrows = data.count[nrows];	/* replace mask with row count */
	ncols = data.count[ncols];	/* replace mask with col count */
	if (nrows <= ncols)
		for (bndA = 0; bndA < GFF_BANDS; ++bndA)
		{
			int mskA, shftA, mskB, shftB;
			for (shftA = 18, mskA = 0777000000; mskA; mskA >>= 9, shftA -= 9)
			{
				if (!(exc[bndA] & mskA))
					continue;
				if (didfirst)
				{
					*s++ = ',';
					*s++ = ' ';
				}
				else
					didfirst = 1;
				*s++ = 'r';
				*s++ = '0' + GFF_BASE * bndA + (mskA == 0777000000? 1: (mskA == 0000777000? 2: 3));

				/* output other identical rows, zeroing the values as we go */
				bndB = mskA >> 9? bndA: bndA + 1;
				mskB = mskA >> 9? mskA >> 9: 0777000000;
				shftB = mskA >> 9? shftA - 9: 18;
				goto starthere;
				for (; bndB < GFF_BANDS; ++bndB)
				{
					shftB = 18;
					mskB = 0777000000;
starthere:
					for (; mskB; mskB >>= 9, shftB -= 9)
					{
						if (!(exc[bndB] & mskB))
							continue;
						if (((exc[bndB] & mskB) >> shftB) == ((exc[bndA] & mskA) >> shftA))
						{
							*s++ = '0' + GFF_BASE * bndB + (mskB == 0777000000? 1: (mskB == 0000777000? 2: 3));
							exc[bndB] &= ~mskB;
						}
					}
				}
				/* now output the columns */
				*s++ = 'c';
				rowdata = (exc[bndA] & mskA) >> shftA;
				for (col = 1, msk = 0400; msk; msk >>= 1, ++col)
					if (rowdata & msk) *s++ = col + '0';
			}
		}
	else
	{
		/* output r1cN, where N is any number of like columns */
		/* if this turns out to be really messy, perhaps calculating the transpose is in order */

		for (colA = 1, shftA = 8, mskA = 0400400400; mskA >= 0001001001; mskA >>= 1, --shftA, ++colA)
		{
			int bnd, isemptycol = 1;
			for (bnd = 0; bnd < GFF_BANDS; ++bnd)
				if (exc[bnd] & mskA)
				{
					isemptycol = 0;
					break;
				}
			if (isemptycol)
				continue;

			/* output the row string and this col char */
			if (didfirst)
			{
				*s++ = ',';
				*s++ = ' ';
			}
			else
				didfirst = 1;
			*s++ = 'r';
			for (bnd = 0; bnd < GFF_BANDS; ++bnd)
				for (row = 1, mskB = 0777000000; mskB; mskB >>= 9, ++row)
					if (exc[bnd] & mskA & mskB)
						*s++ = '0' + GFF_BASE * bnd + row;
			*s++ = 'c';
			*s++ = '0' + colA;

			/* if no matching cols, continue */
			for (colB = colA + 1, shftB = shftA - 1, mskB = mskA >> 1; mskB >= 0001001001; mskB >>= 1, --shftB, ++colB)
			{
				int ismatchingcol = 1;
				for (bnd = 0; bnd < GFF_BANDS; ++bnd)
					if (((exc[bnd] & mskA) >> shftA) != ((exc[bnd] & mskB) >> shftB))
					{
						ismatchingcol = 0;
						break;
					}
				if (!ismatchingcol)
					continue;

				/* output matching col chars, zeroing array values as we go */
				*s++ = '0' + colB;
				for (bnd = 0; bnd < GFF_BANDS; ++bnd)
					exc[bnd] &= ~mskB;
			}
		}
	}
	return s;
}

static int
gff_moves(Gff_t* gff, int exc[])
{

	int i, j, eliminations = 0;

	for (i = 0; i < GFF_BANDS; ++i)
		for (j = 0; j < 9 * GFF_BANDS; j += 9)
			eliminations += data.count[(exc[i] >> j) & 0777];
	return eliminations;
}

static int
gff_sashimi(int fishgrp[], int buns[], int cuns[], int N)
{
	int	i, j, k, hits;

	for (i = 0; i < N; ++i)
	{
		hits = 0;
		for (j = 0; j < N; ++j)
			for (k = 0; k < GFF_BANDS; ++k)
				if ((fishgrp[k] & gff_unitmask[buns[i]][k] & gff_unitmask[cuns[j]][k]) && ++hits >= GFF_PAIR)
					goto next;
		return 1;
	next:;
	}
	return 0;
}

static int
gff_eliminate(Gff_t* gff, int nexofins, int nendofins, int endofin[], int exc[], int buns[], int cuns[], int funs[], int N)
{
	int		i, msk;
	int		bndA, bndB, rowdata;
	int		col;
	int		mskA, shftA, mskB, shftB;
	int		j, k, g, m, fishgrp[GFF_BANDS];
	unsigned char	pos[9], *pp, *p;
	Move_t*		move;
	char		*s, *e, *f, *q, *t, buf[128];

	move = ps.moves.move;
	if (TRACE(gff->flags) > 1)
	{
		s = buf;
		e = buf + sizeof(buf) - 1;
		s += snprintf(s, e-s, "fish %c %d ", name[data.ident[gff->candidate]], N);
		if (nexofins >= 0)
			*s++ = '0' + nexofins;
		else
		{
			*s++ = '-';
		}
		*s++ = '/';
		if (nendofins >= 0)
			*s++ = '0' + nendofins;
		else
			*s++ = '-';
		s += snprintf(s, e-s, " %2dX", gff_moves(gff, exc));
		if (nexofins > 0)
			s += snprintf(s, e-s, "%dx", nexofins);
		else
			s += snprintf(s, e-s, "  ");
		if (nendofins > 0)
			s += snprintf(s, e-s, "%dn", nendofins);
		else
			s += snprintf(s, e-s, "  ");
		s += snprintf(s, e-s, " ");
		if ((f = s + 26) > e)
			f = e;
		for (k = 0; k < GFF_BANDS; ++k)
		{
			g = gff->sdgrid[k];
			m = 0;
			for (i = 0; i < N; ++i)
				for (j = 0; j < N; ++j)
					m |= gff_unitmask[buns[i]][k] & gff_unitmask[cuns[j]][k] & g;
			if (nendofins > 0)
				m &= ~endofin[k];
			fishgrp[k] = m;
		}
		if (gff_sashimi(fishgrp, buns, cuns, N) || gff_sashimi(fishgrp, cuns, buns, N))
			t = "sashimi";
		else if (nexofins > 0 || nendofins > 0)
			t = "finned";
		else
			t = "unfinned";
		for (i = k = 0; i < N; ++i)
		{
			j = buns[i];
			if (j >= 0 && j < GFF_NDX_COLBASE)
				k |= 001;
			else if (j >= GFF_NDX_COLBASE && j < GFF_NDX_BOXBASE)
				k |= 002;
			else if (j >= GFF_NDX_BOXBASE && j < GFF_N_UNITS)
				k |= 004;
			j = cuns[i];
			if (j >= 0 && j < GFF_NDX_COLBASE)
				k |= 010;
			else if (j >= GFF_NDX_COLBASE && j < GFF_NDX_BOXBASE)
				k |= 020;
			else if (j >= GFF_NDX_BOXBASE && j < GFF_N_UNITS)
				k |= 040;
		}
		if ((k & 003) == 003 || (k & 030) == 030)
			q = "mutant";
		else if (k & 044)
			q = "franken";
		else
			q = "basic";
		s += snprintf(s, e-s, "%s %s %s", t, q, gff_name[N-GFF_XWING]);
		while (s <= f)
			*s++ = ' ';
		s = gff_positions(gff, s, e, buns, cuns, funs, N);
		s += snprintf(s, e-s, " ==> ");
		s = gff_eliminations(gff, s, e, exc);
		s += snprintf(s, e-s, "<>%c", name[data.ident[gff->candidate]]);
		*s = 0;
		printf("%s     %s\n", label(-1), buf);
	}
	for (bndA = 0; bndA < GFF_BANDS; ++bndA)
		for (shftA = 18, mskA = 0777000000; mskA; mskA >>= 9, shftA -= 9)
			if (exc[bndA] & mskA)
			{
				pp = pos;
				*pp++ = GFF_BASE * bndA + (mskA == 0777000000? 0: (mskA == 0000777000? 1: 2));

				/* output other identical rows, zeroing the values as we go */

				bndB = mskA >> 9? bndA: bndA + 1;
				mskB = mskA >> 9? mskA >> 9: 0777000000;
				shftB = mskA >> 9? shftA - 9: 18;
				goto starthere;
				for (; bndB < GFF_BANDS; ++bndB)
				{
					shftB = 18;
					mskB = 0777000000;
				starthere:
					for (; mskB; mskB >>= 9, shftB -= 9)
						if ((i = (exc[bndB] & mskB)) && (i >> shftB) == ((exc[bndA] & mskA) >> shftA))
						{
							*pp++ = GFF_BASE * bndB + (mskB == 0777000000? 0: (mskB == 0000777000? 1: 2));
							exc[bndB] &= ~mskB;
						}
				}

				/* now the columns */

				rowdata = (exc[bndA] & mskA) >> shftA;
				for (col = 0, msk = 0400; msk; msk >>= 1, ++col)
					if (rowdata & msk)
						for (p = pos; p < pp; p++)
						{
							i = INDEX(*p, col);
							if (MASK(gff->grid, i) & gff->candidate)
							{
								PART();
								ELIMINATE(gff->order, gff->grid, i, gff->candidate, N);
								WEIGHT(gff->order->method->id, N - 2, 1);
								if (gff->flags & STEP)
									return 1;
							}
						}
			}
	return ps.moves.move - move;
}

/*
 * gff_find3fins() tested on only ONE known example
 */	
static int
gff_find3fins(Gff_t* gff, int buns[], int cuns[], int N, int exc[], int fingrp[], int endos, int endofin[])
{
	int k, fu1, fu2, fu3, funs[GFF_FINSMAX + 1];
	int isempty, leftovers3[GFF_BANDS], leftovers2[GFF_BANDS];
	int intersectflag, intersect[GFF_BANDS];
	Move_t *move;

	move = ps.moves.move;
	isempty = 1;
	for (k = 0; k < GFF_BANDS; ++k)
		if (exc[k])
			isempty = 0;
	if (isempty)
		printf("got here without exclusions\n");

	/* look for three fins */
	for (fu3 = 0; fu3 < GFF_NDX_COLBASE; ++fu3)
	{
		isempty = 1;
		for (k = 0; k < GFF_BANDS; ++k)
		{
			if (fingrp[k] & gff_unitmask[fu3][k])
				isempty = 0;
			leftovers3[k] = fingrp[k] & ~gff_unitmask[fu3][k];
		}
		if (isempty)
			continue;
		if (gff->unitbusy[fu3] == GFF_BASE_UNIT)
			continue;
		if (!gff->FINOVERLAP && gff->unitbusy[fu3] == GFF_COVER_UNIT)
			continue;
		for (fu2 = GFF_NDX_COLBASE; fu2 < GFF_NDX_BOXBASE; ++fu2)
		{
			isempty = 1;
			for (k = 0; k < GFF_BANDS; ++k)
				if (leftovers3[k] & gff_unitmask[fu2][k])
					isempty = 0;
			if (isempty)
				continue;
			isempty = 1;
			for (k = 0; k < GFF_BANDS; ++k)
				if ((leftovers2[k] = leftovers3[k] & ~gff_unitmask[fu2][k]) != 0)
					isempty = 0;
			if (isempty)
				continue;
			if (gff->unitbusy[fu2] == GFF_BASE_UNIT)
				continue;
			if (!gff->FINOVERLAP && gff->unitbusy[fu2] == GFF_COVER_UNIT)
				continue;
			for (fu1 = GFF_NDX_BOXBASE; fu1 < GFF_N_UNITS; ++fu1)
			{
				/* test that no fin cells are leftover */
				isempty = 1;
				for (k = 0; k < GFF_BANDS; ++k)
					if (leftovers2[k] & ~gff_unitmask[fu1][k])
						isempty = 0;
				if (!isempty)
					continue;
				if (gff->unitbusy[fu1] == GFF_BASE_UNIT)
					continue;
				if (!gff->FINOVERLAP && gff->unitbusy[fu1] == GFF_COVER_UNIT)
					continue;

				/* check for elimination in intersection */
				intersectflag = 0;
				for (k = 0; k < GFF_BANDS; ++k)
					if ((intersect[k] = exc[k] & gff_unitmask[fu3][k] & gff_unitmask[fu2][k] & gff_unitmask[fu1][k]) != 0)
						intersectflag = 1;
				if (!intersectflag)
					continue;
	if (gff->DEBUG_PRT)
	{
		printf("fingrp     = 0%09o, 0%09o, 0%09o\n", fingrp[0], fingrp[1], fingrp[2]);
		printf("leftovers3 = 0%09o, 0%09o, 0%09o\n", leftovers3[0], leftovers3[1], leftovers3[2]);
		printf("leftovers2 = 0%09o, 0%09o, 0%09o\n", leftovers2[0], leftovers2[1], leftovers2[2]);
		printf("fins       = %d, %d, %d\n", fu3+1, fu2+1, fu1+1);
	}
				funs[0] = fu3; funs[1] = fu2; funs[2] = fu1; funs[3] = -1;
				if (gff_eliminate(gff, 3-endos, endos, endofin, intersect, buns, cuns, funs, N) && (gff->flags & STEP))
					return 1;
			}
		}
	}
	return ps.moves.move - move;
}

static void
gff_dump(Gff_t* gff, int N, int buns[], int base[], int endofin[], int cuns[], int cover[], int fingrp[], int exc[], int excdblcover[], int intersect[])
{
	int i;

	/* printf("excflag=%d, dcflag=%d, exactcover=%d, bu3=%d\n", excflag, dcflag, exactcover, buns[2]); */
	printf("gff->sdgrid = 0%09o, 0%09o, 0%09o\n", gff->sdgrid[0], gff->sdgrid[1], gff->sdgrid[2]);
	for (i = N - 1; i >= 0; --i)
		printf("buns[%d]= 0%09o, 0%09o, 0%09o\n", i, gff_unitmask[buns[i]][0], gff_unitmask[buns[i]][1], gff_unitmask[buns[i]][2]);
	printf("base   = 0%09o, 0%09o, 0%09o\n", base[0], base[1], base[2]);
	printf("endofin= 0%09o, 0%09o, 0%09o\n", endofin[0], endofin[1], endofin[2]);
	for (i = N - 1; i >= 0; --i)
		printf("cuns[%d]= 0%09o, 0%09o, 0%09o\n", i, gff_unitmask[cuns[i]][0], gff_unitmask[cuns[i]][1], gff_unitmask[cuns[i]][2]);
	printf("cover  = 0%09o, 0%09o, 0%09o\n", cover[0], cover[1], cover[2]);
	printf("fingrp = 0%09o, 0%09o, 0%09o\n", fingrp[0], fingrp[1], fingrp[2]);
	printf("exc    = 0%09o, 0%09o, 0%09o\n", exc[0], exc[1], exc[2]);
	printf("dblcov = 0%09o, 0%09o, 0%09o\n", excdblcover[0], excdblcover[1], excdblcover[2]);
	printf("intsect= 0%09o, 0%09o, 0%09o\n", intersect[0], intersect[1], intersect[2]);
}

/*
 * returns 1 if all fin cells see at least one unfinned fish exclusion, otherwise returns 0
 * the "fin cover" units are not unidentified
 */

static int
gff_isfishpossible(Gff_t* gff, int fishexcl[], int fingrp[])
{
	int commonexcl[GFF_BANDS];
	int bnd, excflag, atleastonefincell = 0;
	int bndA, row, rowmsk;
	int col, colmsk;

	for (row = 0; row < GFF_ROWS; ++row, rowmsk >>= GFF_COLS)
	{
		if (!(row % GFF_BASE))
		{
			rowmsk = 0777000000;
			bndA = gff->rcbase[row];
		}
		for (colmsk = 0400400400, col = 0; col < GFF_COLS; ++col, colmsk >>= 1)
			if (fingrp[bndA] & rowmsk & colmsk)
			{
				excflag = 0;
				if (!atleastonefincell)
				{
					atleastonefincell = 1;
					for (bnd = 0; bnd < GFF_BANDS; ++bnd)
						if ((commonexcl[bnd] = gff->buddies[row][col][bnd] & fishexcl[bnd]) != 0)
							excflag = 1;
				}
				else
					for (excflag = 0, bnd = 0; bnd < GFF_BANDS; ++bnd)
						if ((commonexcl[bnd] &= gff->buddies[row][col][bnd]) != 0)
							excflag = 1;
				if (!excflag)
					return 0;
			}
	}
	return 1;
}

static int
gff_fish(Gff_t* gff, int N, int startunit)
{
	int totalfishfound = 0;  /* function return value */
	int overallexactcover = 0;
	int overallonefin = 0;
	int overalltwofin = 0;
	int i, j, k;
	int unitempty;
	int basemask[GFF_BANDS];
	int base[GFF_BANDS];
	int exc[GFF_BANDS];
	int buns[GFF_NMAX], cuns[GFF_NMAX];  /* base and cover unit numbers */
	int funs[GFF_FINSMAX + 1];  /* possibly-multi-celled fin unit numbers */
	int bu8 = GFF_N_UNITS;
	int bu7 = GFF_N_UNITS;
	int bu6 = GFF_N_UNITS;
	int bu5 = GFF_N_UNITS;
	int bu4 = GFF_N_UNITS;
	int bu3 = GFF_N_UNITS;
	int bu2, bu1;
	int endos;
	int endofin[GFF_BANDS];
	int exactcovertoo;
	int excflag;
	int cover[GFF_BANDS];
	int dcflag;
	int dblcover[GFF_BANDS];
	int isempty;
	int finA, finB, finC, intersect[GFF_BANDS];
	int isonefinunit;
	int cleftovers8[GFF_BANDS], cleftovers7[GFF_BANDS], cleftovers6[GFF_BANDS], cleftovers5[GFF_BANDS], cleftovers4[GFF_BANDS], cleftovers3[GFF_BANDS], cleftovers2[GFF_BANDS], cleftovers1[GFF_BANDS];
	int cu1, cu2, cu3, cu4, cu5, cu6, cu7, cu8;

	for (i = 0; i < GFF_N_UNITS; ++i)
		gff->unitbusy[i] = GFF_FREE_UNIT;
	for (i = 0; i < GFF_NMAX; ++i)
		buns[i] = cuns[i] = -1;
	for (i = 0; i < GFF_FINSMAX; ++i)
		funs[i] = -1;
	if (N == GFF_XWING)
	{
	  bu2 = startunit;
	  goto startb2;
	}
	if (N == GFF_SWORD)
	{
	  bu3 = startunit;
	  goto startb3;
	}
	if (N == GFF_JELLY)
	{
	  bu4 = startunit;
	  goto startb4;
	}
	if (N == GFF_STAR)
	{
	  bu5 = startunit;
	  goto startb5;
	}
	if (N == GFF_WHALE)
	{
	  bu6 = startunit;
	  goto startb6;
	}
	if (N == GFF_LEVIATHAN)
	{
	  bu7 = startunit;
	  goto startb7;
	}

	/* octopus */
	for (bu8 = gff->TEST? GFF_TESTBU8: 0; bu8 < GFF_N_UNITS - 7; ++bu8)
	{
	  if (gff->MARKPROGRESS)
	    printf("\nO%d,", bu8+1);
	  unitempty = 1;
	  for (k = 0; k < GFF_BANDS; ++k)
	    if (gff_unitmask[bu8][k] & gff->sdgrid[k])
	      unitempty = 0;
	  if (unitempty)
	    continue;
	  if (buns[7] != -1)
	    gff->unitbusy[buns[7]] = GFF_FREE_UNIT;
	  gff->unitbusy[bu8] = GFF_BASE_UNIT;
	  buns[7] = bu8;

	  /* bu7 = bu8 + 1; */
	  bu7 = !gff->TEST? bu8 + 1: (bu8 + 1 > GFF_TESTBU7? bu8 + 1: GFF_TESTBU7);
startb7:
	  for (; bu7 < GFF_N_UNITS - 6; ++bu7)
	  {
	    if (gff->MARKPROGRESS)
	    {
	      if (N == GFF_LEVIATHAN)
	      	printf("\n");
	      if (N <= GFF_OCTOPUS)
	      	printf("L%d,", bu7+1);
	    }
	    unitempty = 1;
	    for (k = 0; k < GFF_BANDS; ++k)
	      if (gff_unitmask[bu7][k] & gff->sdgrid[k])
	        unitempty = 0;
	    if (unitempty)
	      continue;
	    if (buns[6] != -1)
	      gff->unitbusy[buns[6]] = GFF_FREE_UNIT;
	    gff->unitbusy[bu7] = GFF_BASE_UNIT;
	    buns[6] = bu7;

	    /* bu6 = bu7 + 1; */
	    bu6 = !gff->TEST? bu7 + 1: (bu7 + 1 > GFF_TESTBU6? bu7 + 1: GFF_TESTBU6);
startb6:
	    for (; bu6 < GFF_N_UNITS - 5; ++bu6)
	    {
	      if (gff->MARKPROGRESS)
	      {
	        if (N == GFF_WHALE)
		  printf("\n");
	        if (N <= GFF_OCTOPUS)
		  printf("W%d,", bu6+1);
	      }
	      unitempty = 1;
	      for (k = 0; k < GFF_BANDS; ++k)
	        if (gff_unitmask[bu6][k] & gff->sdgrid[k])
		  unitempty = 0;
	      if (unitempty)
	        continue;
	      if (buns[5] != -1)
	        gff->unitbusy[buns[5]] = GFF_FREE_UNIT;
	      gff->unitbusy[bu6] = GFF_BASE_UNIT;
	      buns[5] = bu6;

	      /* bu5 = bu6 + 1; */
	      bu5 = !gff->TEST? bu6 + 1: (bu6 + 1 > GFF_TESTBU5? bu6 + 1: GFF_TESTBU5);
startb5:
	      for (; bu5 < GFF_N_UNITS - 4; ++bu5)
	      {
	        if (gff->MARKPROGRESS)
		{
	          if (N == GFF_STAR)
		    printf("\n");
	          if (N <= GFF_LEVIATHAN)
		    printf("S%d,", bu5+1);
	        }
	        unitempty = 1;
	        for (k = 0; k < GFF_BANDS; ++k)
	          if (gff_unitmask[bu5][k] & gff->sdgrid[k])
		    unitempty = 0;
	        if (unitempty)
		  continue;
	        if (buns[4] != -1)
		  gff->unitbusy[buns[4]] = GFF_FREE_UNIT;
	        gff->unitbusy[bu5] = GFF_BASE_UNIT;
	        buns[4] = bu5;

	        /* bu4 = bu5 + 1; */
	        bu4 = !gff->TEST? bu5 + 1: (bu5 + 1 > GFF_TESTBU4? bu5 + 1: GFF_TESTBU4);
startb4:
	        for (; bu4 < GFF_N_UNITS - 3; ++bu4)
		{
	          if (gff->MARKPROGRESS && N <= GFF_WHALE)
		    printf("J%d,", bu4+1);
	          unitempty = 1;
	          for (k = 0; k < GFF_BANDS; ++k)
	            if (gff_unitmask[bu4][k] & gff->sdgrid[k])
		      unitempty = 0;
	          if (unitempty)
		    continue;
	          if (buns[3] != -1)
		    gff->unitbusy[buns[3]] = GFF_FREE_UNIT;
	          gff->unitbusy[bu4] = GFF_BASE_UNIT;
	          buns[3] = bu4;

	          /* bu3 = bu4 + 1; */
	          bu3 = !gff->TEST? bu4 + 1: (bu4 + 1 > GFF_TESTBU3? bu4 + 1: GFF_TESTBU3);
startb3:
	          for (; bu3 < GFF_N_UNITS - 2; ++bu3)
		  {
	            unitempty = 1;
	            for (k = 0; k < GFF_BANDS; ++k)
	              if (gff_unitmask[bu3][k] & gff->sdgrid[k])
		        unitempty = 0;
	            if (unitempty)
		      continue;
	            if (buns[2] != -1)
		      gff->unitbusy[buns[2]] = GFF_FREE_UNIT;
	            gff->unitbusy[bu3] = GFF_BASE_UNIT;
	            buns[2] = bu3;
	            bu2 = bu3 + 1;
startb2:
	            for (; bu2 < GFF_N_UNITS - 1; ++bu2)
		    {
	              unitempty = 1;
	              for (k = 0; k < GFF_BANDS; ++k)
	                if (gff_unitmask[bu2][k] & gff->sdgrid[k])
			  unitempty = 0;
	              if (unitempty)
		        continue;
	              if (buns[1] != -1)
		        gff->unitbusy[buns[1]] = GFF_FREE_UNIT;
	              gff->unitbusy[bu2] = GFF_BASE_UNIT;
	              buns[1] = bu2;
	              for (bu1 = bu2 + 1; bu1 < GFF_N_UNITS; ++bu1)
		      {
	                unitempty = 1;
	                for (k = 0; k < GFF_BANDS; ++k)
	                  if (gff_unitmask[bu1][k] & gff->sdgrid[k])
			    unitempty = 0;
	                if (unitempty)
			  continue;
	                if (buns[0] != -1)
			  gff->unitbusy[buns[0]] = GFF_FREE_UNIT;
	                gff->unitbusy[bu1] = GFF_BASE_UNIT;
	                buns[0] = bu1;

	                /* have N base units, each with at least one candidate */

	                /* get Base "B" */
	                for (k = 0; k < GFF_BANDS; ++k)
			{
	                  basemask[k] = 0;
	                  for (i = 0; i < N; ++i)
	                    basemask[k] |= gff_unitmask[buns[i]][k];
	                  base[k] = gff->sdgrid[k] & basemask[k];
	                }

	                /*
	                 * get Base Intersect "BI" and let "B = B \ BI"
	                 * BI is the union of all endo-fins ...
	                 * ... the set of candidates in the intersect of two "or more" base units
	                 * The "or more" case may never actually happen
	                 */

			/* count of base unit overlaps (with a candidate) */
			endos = 0;
	                for (k = 0; k < GFF_BANDS; ++k)
			{
	                  endofin[k] = 0;
	                  for (i = 0; i < N - 1; ++i)
	                    for (j = i + 1; j < N; ++j)
			    {
	                      int tmp;
	                      /* don't be tempted to get rid of "tmp" variable */
	                      if ((tmp = gff_unitmask[buns[i]][k] & gff_unitmask[buns[j]][k] & gff->sdgrid[k]) != 0)
			      {
	                        ++endos;
	                        endofin[k] |= tmp;
	                      }
	                    }
	                  base[k] &= ~endofin[k];
	                }
	                if (endos > GFF_ENDOFINSMAX)
				continue;  /* TODO -- be sure this prune is not excessive */

	                /* search for cover, adding up to two extra cover units if necessary */
	                cu8 = GFF_N_UNITS;
	                cu7 = GFF_N_UNITS;
	                cu6 = GFF_N_UNITS;
	                cu5 = GFF_N_UNITS;
	                cu4 = GFF_N_UNITS;
	                cu3 = GFF_N_UNITS;
	                if (N == GFF_XWING)
			{
	                  cu2 = 0;
	                  for (k = 0; k < GFF_BANDS; ++k)
			    cleftovers3[k] = base[k];
	                  goto startc2;
	                }
	                if (N == GFF_SWORD)
			{
	                  cu3 = 0;
	                  for (k = 0; k < GFF_BANDS; ++k)
			    cleftovers4[k] = base[k];
	                  goto startc3;
	                }
	                if (N == GFF_JELLY)
			{
	                  cu4 = 0;
	                  for (k = 0; k < GFF_BANDS; ++k)
			    cleftovers5[k] = base[k];
	                  goto startc4;
	                }
	                if (N == GFF_STAR)
			{
	                  cu5 = 0;
	                  for (k = 0; k < GFF_BANDS; ++k)
			    cleftovers6[k] = base[k];
	                  goto startc5;
	                }
	                if (N == GFF_WHALE)
			{
	                  cu6 = 0;
	                  for (k = 0; k < GFF_BANDS; ++k)
			    cleftovers7[k] = base[k];
	                  goto startc6;
	                }
	                if (N == GFF_LEVIATHAN)
			{
	                  cu7 = 0;
	                  for (k = 0; k < GFF_BANDS; ++k)
			    cleftovers8[k] = base[k];
	                  goto startc7;
	                }
	                /* GFF_OCTOPUS */
	                for (cu8 = 0 ; cu8 < GFF_N_UNITS - 7; ++cu8)
			{
	                  if (gff->unitbusy[cu8] == GFF_BASE_UNIT)
			    continue;
	                  for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
			  {
	                    if (base[k] & gff_unitmask[cu8][k])
			    	unitempty = 0;
	                    cleftovers8[k] = base[k] & ~gff_unitmask[cu8][k];
	                  }
	                  if (unitempty)
			    continue;
	                  if (gff->unitbusy[cuns[7]] != GFF_BASE_UNIT)
			    gff->unitbusy[cuns[7]] = GFF_FREE_UNIT;
	                  gff->unitbusy[cu8] = GFF_COVER_UNIT;
	                  cuns[7] = cu8;
	                  cu7 = cu8 + 1;
startc7:
	                  for (; cu7 < GFF_N_UNITS - 6; ++cu7)
			  {
	                    if (gff->unitbusy[cu7] == GFF_BASE_UNIT)
			      continue;
	                    for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
			    {
	                      if (cleftovers8[k] & gff_unitmask[cu7][k])
			        unitempty = 0;
	                      cleftovers7[k] = cleftovers8[k] & ~gff_unitmask[cu7][k];
	                    }
	                    if (unitempty)
			      continue;
	                    if (gff->unitbusy[cuns[6]] != GFF_BASE_UNIT)
			      gff->unitbusy[cuns[6]] = GFF_FREE_UNIT;
	                    gff->unitbusy[cu7] = GFF_COVER_UNIT;
	                    cuns[6] = cu7;
	                    cu6 = cu7 + 1;
startc6:
	                    for (; cu6 < GFF_N_UNITS - 5; ++cu6)
			    {
	                      if (gff->unitbusy[cu6] == GFF_BASE_UNIT)
			        continue;
	                      for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
			      {
	                        if (cleftovers7[k] & gff_unitmask[cu6][k])
				  unitempty = 0;
	                        cleftovers6[k] = cleftovers7[k] & ~gff_unitmask[cu6][k];
	                      }
	                      if (unitempty)
			        continue;
	                      if (gff->unitbusy[cuns[5]] != GFF_BASE_UNIT)
			        gff->unitbusy[cuns[5]] = GFF_FREE_UNIT;
	                      gff->unitbusy[cu6] = GFF_COVER_UNIT;
	                      cuns[5] = cu6;
	                      cu5 = cu6 + 1;
startc5:
	                      for (; cu5 < GFF_N_UNITS - 4; ++cu5)
			      {
	                        if (gff->unitbusy[cu5] == GFF_BASE_UNIT)
				  continue;
	                        for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
				{
	                          if (cleftovers6[k] & gff_unitmask[cu5][k])
				    unitempty = 0;
	                          cleftovers5[k] = cleftovers6[k] & ~gff_unitmask[cu5][k];
	                        }
	                        if (unitempty)
				  continue;
	                        if (gff->unitbusy[cuns[4]] != GFF_BASE_UNIT)
				  gff->unitbusy[cuns[4]] = GFF_FREE_UNIT;
	                        gff->unitbusy[cu5] = GFF_COVER_UNIT;
	                        cuns[4] = cu5;
	                        cu4 = cu5 + 1;
startc4:
	                        for (; cu4 < GFF_N_UNITS - 3; ++cu4)
				{
	                          if (gff->unitbusy[cu4] == GFF_BASE_UNIT)
				    continue;
	                          for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
				  {
	                            if (cleftovers5[k] & gff_unitmask[cu4][k])
				      unitempty = 0;
	                            cleftovers4[k] = cleftovers5[k] & ~gff_unitmask[cu4][k];
	                          }
	                          if (unitempty)
				    continue;
	                          if (gff->unitbusy[cuns[3]] != GFF_BASE_UNIT)
				    gff->unitbusy[cuns[3]] = GFF_FREE_UNIT;
	                          gff->unitbusy[cu4] = GFF_COVER_UNIT;
	                          cuns[3] = cu4;
	                          cu3 = cu4 + 1;
startc3:
	                          for (; cu3 < GFF_N_UNITS - 2; ++cu3)
				  {
	                            if (gff->unitbusy[cu3] == GFF_BASE_UNIT)
				      continue;
	                            for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
				    {
	                              if (cleftovers4[k] & gff_unitmask[cu3][k])
				        unitempty = 0;
	                              cleftovers3[k] = cleftovers4[k] & ~gff_unitmask[cu3][k];
	                            }
	                            if (unitempty)
				      continue;
	                            if (gff->unitbusy[cuns[2]] != GFF_BASE_UNIT)
				      gff->unitbusy[cuns[2]] = GFF_FREE_UNIT;
	                            gff->unitbusy[cu3] = GFF_COVER_UNIT;
	                            cuns[2] = cu3;
	                            cu2 = cu3 + 1;
startc2:
	                            for (; cu2 < GFF_N_UNITS - 1; ++cu2)
				    {
	                              if (gff->unitbusy[cu2] == GFF_BASE_UNIT)
				        continue;
	                              for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
				      {
	                                if (cleftovers3[k] & gff_unitmask[cu2][k])
					  unitempty = 0;
	                                cleftovers2[k] = cleftovers3[k] & ~gff_unitmask[cu2][k];
	                              }
	                              if (unitempty)
				        continue;
	                              if (gff->unitbusy[cuns[1]] != GFF_BASE_UNIT)
				        gff->unitbusy[cuns[1]] = GFF_FREE_UNIT;
	                              gff->unitbusy[cu2] = GFF_COVER_UNIT;
	                              cuns[1] = cu2;

				      /* UNDENT ... */

	for (cu1 = cu2 + 1; cu1 < GFF_N_UNITS; ++cu1)
	{
	  if (gff->unitbusy[cu1] == GFF_BASE_UNIT)
	    continue;
#if GFF_SPEEDUPS
	  exactcovertoo = 1;
#endif
	  for (unitempty = 1, k = 0; k < GFF_BANDS; ++k)
	  {
	    if (cleftovers2[k] & gff_unitmask[cu1][k])
	      unitempty = 0;
#if !GFF_SPEEDUPS
	    cleftovers1[k] = cleftovers2[k] & ~gff_unitmask[cu1][k];
#else
	    if ((cleftovers1[k] = cleftovers2[k] & ~gff_unitmask[cu1][k]) != 0)
	      exactcovertoo = 0;
#endif
	  }
	  if (unitempty)
	    continue;
	  if (gff->unitbusy[cuns[0]] != GFF_BASE_UNIT)
	    gff->unitbusy[cuns[0]] = GFF_FREE_UNIT;
	  gff->unitbusy[cu1] = GFF_COVER_UNIT;
	  cuns[0] = cu1;

#define exactcover exactcovertoo
#define fingrp cleftovers1

	  /* get "C \ B", candidates in cover C not in base B */
	  excflag = 0;
	  for (k = 0; k < GFF_BANDS; ++k)
	  {
	    cover[k] = 0;
	    for (i = 0; i < N; ++i)
	      cover[k] |= gff_unitmask[cuns[i]][k];
	    cover[k] &= gff->sdgrid[k];
	    if ((exc[k] = cover[k] & ~base[k]) != 0)
	      excflag = 1;
	  }

	  /* get "CI", candidates in intersect of cover units */
	  dcflag = 0;
	  for (k = 0; k < GFF_BANDS; ++k)
	  {
	    dblcover[k] = 0;
	    for (i = 0; i < N - 1; ++i)
	      for (j = i + 1; j < N; ++j)
		if ((dblcover[k] |= base[k] & gff_unitmask[cuns[i]][k] & gff_unitmask[cuns[j]][k]) != 0)
		  dcflag = 1;
	  }
	  if (!excflag && !dcflag)
	    continue;

	  /* add endofin to fingrp, if any */
	  if (endos)
	  {
	    exactcover = 0;
	    fingrp[0] |= endofin[0];
	    fingrp[1] |= endofin[1];
	    fingrp[2] |= endofin[2];
	  }
	  /* remove endofin from exc */
	  isempty = 1;
	  for (k = 0; k < GFF_BANDS; ++k)
	    if (exc[k] &= ~endofin[k])
	      isempty = 0;
	  if (isempty)
	    continue;

	  /* look for one fin */
	  if (exactcover)
	  {
	    for (i = 0; i < GFF_BANDS; ++i)
	      exc[i] |= dblcover[i];
	    funs[0] = -1;  /* 20071008 statement was later */
	    if ((totalfishfound += gff_eliminate(gff, 0, -1, endofin, exc, buns, cuns, funs, N)) && (gff->flags & STEP))
	      return 1;
	    overallexactcover = 1;
	  }
	  if (!gff->fins)
	    continue;
	  if (gff->DEBUG_PRT && bu3==1&&bu2==10&&bu1==26&&cu3==7&&cu2==16&&cu1==19)
	  {
		printf("endos = %d\n", endos);
		gff_dump(gff, N, buns, base, endofin, cuns, cover, fingrp, exc, exc, exc);
		printf("exactcover=%X\n", exactcover);
	  }

	  /*
	   * This pruning attempt may not be effective
	   * 1) the gff_isfishpossible() function isn't all that efficient
	   * 2) it doesn't filter out a fin unit that overlaps a base unit
	   * 3) overall, it may be slower
	   */    
	  if (!gff_isfishpossible(gff, exc, fingrp))
	    continue;
	  /* if no 0-fin fish, search for all 1-fin fish */
	  if ((!overallexactcover || gff->EXHAUSTIVE) && gff->fins >= 1)
	  {
#define excdblcover dblcover
	    for (finA = 0; finA < GFF_N_UNITS; ++finA)
	    {
	      if (gff->unitbusy[finA] == GFF_BASE_UNIT)
	        continue;
	      if (!gff->FINOVERLAP && gff->unitbusy[finA] == GFF_COVER_UNIT)
	        continue;
	      isonefinunit = 1;
	      for (k = 0; k < GFF_BANDS; ++k)
	        if (fingrp[k] & ~gff_unitmask[finA][k])
		  isonefinunit = 0;
	      if (isonefinunit)
	      {
	        int finA2 = -1;
	        int excflag;
	        int fincells = 0;
	        int finrow, fincol, lonefinrow, lonefincol, msk;
		int thisband;
	        int lonefinbox;
	        int lonefincover[GFF_BANDS];

	        /* TODO -- there must be a faster way, maybe directly with bit-mapping */
	        /* determine if we have single fin cell */
	        for (finrow = 2, k = GFF_BANDS - 1; k >= 0; --k)
	          for (thisband = fingrp[k]; thisband; thisband >>= 9, --finrow)
	            if (data.count[thisband & 0777])
		    {
	              lonefinrow = GFF_BASE * k + finrow;
	              fincol = thisband & 0777;  /* in bit format */
	              fincells += data.count[thisband & 0777];
	            }
	        if (fincells == 1)
		{
	          /* get gff->buddies */
	          /* convert bit-formatted col into normal col nmbr */
	          lonefincol = 0;
	          for (msk = 0400; msk; msk >>= 1, ++lonefincol)
	            if (msk & fincol)
		      break;
	          lonefinbox = GFF_BASE * gff->rcbase[lonefinrow] + gff->rcbase[lonefincol];
	          for (k = 0; k < GFF_BANDS; ++k)
		  {
	            lonefincover[k] = gff_unitmask[lonefinrow][k];
	            lonefincover[k] |= gff_unitmask[lonefincol + GFF_ROWS][k];
	            lonefincover[k] |= gff_unitmask[lonefinbox + GFF_ROWS + GFF_COLS][k];
	          }

	          /* get exclusions seen by lonefincover */
	          for (excflag = 0, k = 0; k < GFF_BANDS; ++k)
		  {
	            /* TODO -- this seems silly; should't excdblcover[] be part of exc[] from the getgo ??? */
	            if ((intersect[k] = exc[k] & lonefincover[k]) != 0)
		      excflag = 1;
	            if (intersect[k] |= excdblcover[k] & lonefincover[k])
		      excflag = 1;
	          }
	        }
		else
		{
	          for (excflag = 0, k = 0; k < GFF_BANDS; ++k)
		  {
	            /* TODO -- this seems silly; should't excdblcover[] be part of exc[] from the getgo ??? */
	            if ((intersect[k] = exc[k] & gff_unitmask[finA][k]) != 0)
		      excflag = 1;
	            if ((intersect[k] |= excdblcover[k] & gff_unitmask[finA][k]) != 0)
		      excflag = 1;
	          }
	        }
	        if (!excflag)
		  continue;
	        funs[0] = finA; funs[1] = finA2; funs[2] = -1;
		if ((totalfishfound += endos ? gff_eliminate(gff, -1, endos, endofin, intersect, buns, cuns, funs, N) : gff_eliminate(gff, 1, -1, endofin, intersect, buns, cuns, funs, N)) && (gff->flags & STEP))
		  return 1;
	        overallonefin = 1;
	      }
	    }
	  }
	  if ((!overallonefin || gff->EXHAUSTIVE) && gff->fins >= 2)
	  {
	    /* if no 0-fin and 1-fin fish, search for all 2-fin fish */
	    for (finB = 0; finB < GFF_NDX_BOXBASE; ++finB)
	    {
	      int finhit;
	      int exchit;

	      finhit = 0;
	      for (k = 0; k < GFF_BANDS; ++k)
	        if (fingrp[k] & gff_unitmask[finB][k])
		  finhit = 1;
	      if (!finhit)
	        continue;
	      exchit = 0;
	      for (k = 0; k < GFF_BANDS; ++k)
	        if (exc[k] & gff_unitmask[finB][k])
		  exchit = 1;
	      if (!exchit)
	        continue;
	      if (gff->unitbusy[finB] == GFF_BASE_UNIT)
	        continue;
	      if (!gff->FINOVERLAP && gff->unitbusy[finB] == GFF_COVER_UNIT)
	        continue;
	      for (finC = finB < GFF_NDX_COLBASE? GFF_NDX_COLBASE: GFF_NDX_BOXBASE; finC < GFF_N_UNITS; ++finC)
	      {
	        if (finC == finB)
		  continue;
	        finhit = 0;
	        for (k = 0; k < GFF_BANDS; ++k)
		  if (fingrp[k] & gff_unitmask[finC][k])
		    finhit = 1;
	        if (!finhit)
		  continue;
	        exchit = 0;
	        for (k = 0; k < GFF_BANDS; ++k)
		  if (exc[k] & gff_unitmask[finC][k])
		    exchit = 1;
	        if (!exchit)
		  continue;
	        if (gff->unitbusy[finC] == GFF_BASE_UNIT)
		  continue;
	        if (!gff->FINOVERLAP && gff->unitbusy[finC] == GFF_COVER_UNIT)
		  continue;

	        /* TODO with above, can't this be made more efficient ??? */
	        if (fingrp[0] & ~(gff_unitmask[finB][0] | gff_unitmask[finC][0]))
		  continue;
	        if (fingrp[1] & ~(gff_unitmask[finB][1] | gff_unitmask[finC][1]))
		  continue;
	        if (fingrp[2] & ~(gff_unitmask[finB][2] | gff_unitmask[finC][2]))
		  continue;

	        /* check for elimination in intersection */
	        if ((intersect[0] = exc[0] & gff_unitmask[finB][0] & gff_unitmask[finC][0]) != 0)
		  continue;
	        if ((intersect[1] = exc[1] & gff_unitmask[finB][1] & gff_unitmask[finC][1]) != 0)
		  continue;
	        if ((intersect[2] = exc[2] & gff_unitmask[finB][2] & gff_unitmask[finC][2]) != 0)
		  continue;

	        funs[0] = finB; funs[1] = finC; funs[2] = -1;
		if ((totalfishfound += endos ? gff_eliminate(gff, 2-endos, endos, endofin, intersect, buns, cuns, funs, N) : gff_eliminate(gff, 2, -1, endofin, intersect, buns, cuns, funs, N)) && (gff->flags & STEP))
		  return 1;
	        overalltwofin = 1;
	      }
	    }
	  }
	  if ((!overalltwofin || gff->EXHAUSTIVE) && gff->fins >= 3 && (totalfishfound += gff_find3fins(gff, buns, cuns, N, exc, fingrp, endos, endofin)) && (gff->flags & STEP))
	    return 1;
	}
				      /* ... INDENT */
	                            }
	                          }
	                        }
	                      }
	                    }
	                  }
	                }
	              }
	            }
	          }
	        }
	      }
	    }
	  }
	}
	return totalfishfound;
}

static int
anyfish(register Grid_t* grid, unsigned char* any)
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
	int			a;

	unsigned int		mask[3];
	unsigned int		hit[81];

	r = ROOKERIES();
	for (v = a = 0; v < 9; v++)
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
	    for (i = 0; i < 81; i++)
	      if ((hit[i] == 1 || hit[i] == n) && CANDIDATE(grid, i) && (MASK(grid, i) & b))
	      {
		any[a++] = v;
		break;
	      }
	  }
	}
	return a;
}

static int
constraint_Z(Order_t* order, register Grid_t* grid, int size, int guess, unsigned int flags, Constraints_t* constraints)
{
	Gff_t*			gff;
	Move_t*			move;
	int			i;
	int			j;
	int			k;
	int			b;
	int			m;
	int			n;
	int			a;
	int			v;
	int			from;
	int			sdgrid[9][GFF_BANDS];
	unsigned char		any[9];

	if (guess || !state.input->exemplar && !(a = anyfish(grid, any)))
		return 0;
	gff = gff_init(flags);
	move = ps.moves.move;
	if (order->min != order->max)
	{
		from = order->min;
		size = order->max;
	}
	else
		from = (order->var == 1) ? size : GFF_XWING;
	if ((gff->fins = order->lim) < 1)
		gff->fins = GFF_FINSDEF;
	else if (gff->fins > GFF_FINSMAX)
		gff->fins = GFF_FINSMAX;
	gff->flags = flags;
	gff->order = order;
	gff->constraints = constraints;
	if (state.input->exemplar)
	{
		gff->grid = &gff->temp;
		gff->temp = data.empty;
		a = 1;
		k = data.bit[any[0] = 8];
		for (i = 0; i < 81; i++)
			if (CELL(grid, i) == EXMP_NOT)
				gff->temp.cell[i] ^= k;
	}
	else
		gff->grid = grid;
	for (v = 0; v < a; v++)
	{
		j = any[v];
		gff->candidate = k = data.bit[j];
		sdgrid[j][0] = sdgrid[j][1] = sdgrid[j][2] = 0;
		for (i = 0; i < 81; i++)
		{
			b = i / 27;
			sdgrid[j][b] = (sdgrid[j][b]<<1) | (!!(MASK(grid, i) & k));
		}
		for (b = 0; b < GFF_BANDS; ++b)
			for (i = 18, m = 0777000000; m; m >>= 9, i -= 9)
				if (data.count[(sdgrid[j][b] & m) >> i] == GFF_SINGLE)
					sdgrid[j][b] &= ~m;
	}
	for (n = from; n <= size; n++)
	{
		for (v = 0; v < a; v++)
		{
			j = any[v];
			gff->candidate = k = data.bit[j];
			gff->sdgrid = sdgrid[j];
			if (TRACE(gff->flags) > 3)
				printf("%s     fish %c %d.%d        {%010o,%010o,%010o}\n", label(-1), name[j + 1], n, gff->fins, gff->sdgrid[0], gff->sdgrid[1], gff->sdgrid[2]);
			if (b = gff_fish(gff, n, 0))
			{
				if (TRACE(gff->flags) > 2)
					printf("%s     fish %c %d.%d        {%010o,%010o,%010o} %d\n", label(-1), name[j + 1], n, gff->fins, gff->sdgrid[0], gff->sdgrid[1], gff->sdgrid[2], b);
				if (gff->flags & STEP)
					return !state.input->exemplar;
			}
		}
		if (move != ps.moves.move)
			return !state.input->exemplar;
	}
	return 0;
}
