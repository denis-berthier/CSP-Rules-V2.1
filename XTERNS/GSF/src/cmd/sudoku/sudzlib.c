/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2011                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * 3x3 sudoku compressed minlex grid stream implementation
 *
 * Glenn Fowler
 * AT&T Research
 *
 * file header
 *
 *	#!SUDZ_MAGIC\n
 *
 * window header
 *
 *	<12-bits>	#grids in window
 *	<9-bits>	band index 1-416
 *
 * records
 *
 *	0<6-bits><...>	#cells to drop from prev grid + grid data
 *	10<4-bits>	autmap[#automorphisms] if > 1
 *	110<9-bits>	new band index
 */

#if !SUDZ

int	_STUB_sudz;

#else

typedef struct Bitvec_s
{
	unsigned long		size;
	unsigned long		part;
	int			bits;
	unsigned char		data[1*1024*1024];
} Bitvec_t;

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "sudata.h"

#if _PACKAGE_vcodex

#include <vcodex.h>

#define _SUDZ_ZIP_ \
	Vcsfio_t*		zip; \
	Vcsfdata_t		zipdata;

#define WATCH()

#else

#include <fcntl.h>
#include <bzlib.h>

#ifdef BZWATCH
#define WATCH()			BZWATCH()
#else
#define WATCH()
#endif

#ifdef BZ_CONFIG_ERROR
#define bzdopen			BZ2_bzdopen
#define bzread			BZ2_bzread
#define bzwrite			BZ2_bzwrite
#define bzclose			BZ2_bzclose
#endif

#define _SUDZ_ZIP_ \
	BZFILE*			zip;

#define VC_DECODE		"ro"
#define VC_ENCODE		"wo"

#if _PACKAGE_ast
#define vcsfio(f,d,v)		bzfopen(f,v)
#else
#if BZ_DOPEN_FILE
#define vcsfio(f,d,v)		bzdopen(f,v)
#else
#define vcsfio(f,d,v)		(lseek(fileno(f),sizeof(magic)-1,SEEK_SET),bzdopen(fileno(f),v))
#endif
#endif
#define vcsfread(f,b,n)		bzread(f,b,n)
#define vcsfwrite(f,b,n)	bzwrite(f,b,n)
#define vcsfclose(f)		bzclose(f)

#endif

#define _SUDZ_PRIVATE_ \
	_SUDZ_ZIP_ \
	FILE*			dat; \
	unsigned long		remain; \
	int			flags; \
	Grid_t			start; \
	Bitvec_t		bits;
	
#include "sudz.h"

static const char		magic[] = "#!" SUDZ_MAGIC "\n";

static unsigned char		autmap[649];
static Sudz_t*			freesudz;

#if _WIN32 && !_WINIX
#include <io.h>
#define SETBINARY(f)		_setmode(_fileno(f), O_BINARY)
#else
#define SETBINARY(f)
#endif

static int
input(register Sudz_t* p)
{
	int	r;
#if BZ_WATCH
	fprintf(stderr, "I zip=%p data=%p size=%d\n", p->zip, p->bits.data, p->bits.size); /*AHA*/
#endif
	WATCH();
	r = vcsfread(p->zip, p->bits.data, p->bits.size);
	WATCH();
	return r;
}

static void
output(register Sudz_t* p, uint32_t n)
{
	if (vcsfwrite(p->zip, p->bits.data, n) != n)
	{
		fprintf(stderr, "sudz: write error\n");
		exit(1);
	}
}

#define bitinit(p)		((p)->bits.bits=8,(p)->bits.part=0,((p)->flags&SUDZ_WRITE)?((p)->bits.data[0]=0):0)

static uint32_t
bitput(register Sudz_t* p, register uint32_t v, register int n)
{
	register int	i;

	WATCH();
	while (n)
	{
		i = (n > p->bits.bits) ? p->bits.bits : n;
		n -= i;
		p->bits.data[p->bits.part] |= ((v>>n) & ((1<<i)-1)) << (p->bits.bits - i);
		if (!(p->bits.bits -= i))
		{
			p->bits.bits = 8;
			if (++p->bits.part >= p->bits.size)
			{
				p->bits.data[p->bits.part = 0] = 0;
				n = p->bits.data[p->bits.part+3];
				bitput(p, p->window, 24);
				p->window = 0;
				p->bits.data[p->bits.part] = n;
				output(p, p->bits.size);
				p->bits.size = sizeof(p->bits.data);
				p->bits.data[p->bits.part = 0] = 0;
				return 1;
			}
			p->bits.data[p->bits.part] = 0;
		}
	}
	WATCH();
	return 0;
}

static unsigned int
bitget(register Sudz_t* p, register int n)
{
	register int		i;
	register uint32_t	v;

	WATCH();
	v = 0;
	while (n)
	{
		i = (n > p->bits.bits) ? p->bits.bits : n;
		v = (v<<i) | ((p->bits.data[p->bits.part]>>(p->bits.bits - i)) & ((1<<i)-1));
		n -= i;
		if (!(p->bits.bits -= i))
		{
			p->bits.bits = 8;
			p->bits.part++;
		}
	}
	WATCH();
	return v;
}

static int
restart(register Sudz_t* p, int window)
{
	register int	i;

	WATCH();
	if (p->flags & SUDZ_WRITE)
	{
		if (window)
		{
			if (bitput(p, 0, 24))
				return 1;
		}
		else if (bitput(p, 06, 3))
			return 1;
		if (bitput(p, p->band, 9))
			return 1;
	}
	else
	{
		if (window)
			p->remain = p->window = bitget(p, 24);
		p->band = bitget(p, 9);
		if (p->band < 1 || p->band > 416)
		{
			fprintf(stderr, "sudz: grid %" LL "u: %03d: invalid band\n", p->index+1, p->band);
			return -1;
		}
	}
	p->start = data.empty;
	for (i = 0; i < 9; i++)
		MOVE(&p->start, i, data.blt[i+1]);
	MOVE(&p->start, 9, data.blt[4]);
	MOVE(&p->start, 10, data.blt[5]);
	MOVE(&p->start, 27, data.blt[2]);
	for (i = 0; i < 16; i++)
		MOVE(&p->start, i+11, data.blt[data.bands[p->band-1][i]-'0']);
	WATCH();
	return 0;
}

#if _PACKAGE_vcodex

static void
ziperror(const char* text)
{
	fprintf(stderr, "sudz: vcodex: %s\n", text);
}

#endif

Sudz_t*
sudzopen(FILE* fp, const char* path, int flags)
{
	register Sudz_t*	p;
	char*			s;
	int			i;

	if (p = freesudz)
		freesudz = 0;
	else if (!(p = (Sudz_t*)malloc(sizeof(Sudz_t))))
		return 0;
	if (!autmap[1])
		for (i = 0; i < elementsof(data.automorphisms); i++)
			autmap[data.automorphisms[i]] = i;
	bitinit(p);
#if _PACKAGE_vcodex
	memset(&p->zipdata, 0, sizeof(p->zipdata));
	p->zipdata.type = VCSF_PLAIN;
	p->zipdata.trans = "bwt,mtf,rle.0,huffgroup";
	p->zipdata.errorf = ziperror;
#endif
	p->index = 0;
	p->flags = flags;
	p->grid[81] = 0;
	s = (char*)magic;
	p->bits.size = sizeof(p->bits.data) - (sizeof(magic) - 1);
	if (flags & SUDZ_WRITE)
	{
		if (p->dat = fp)
			SETBINARY(fp);
		else if (!(p->dat = fopen(path, "wb")))
			goto bad;
		fwrite(s, 1, sizeof(magic) - 1, p->dat);
		fflush(p->dat);
		if (!(p->zip = vcsfio(p->dat, &p->zipdata, VC_ENCODE)))
		{
			fprintf(stderr, "sudz: encode error\n");
			goto bad;
		}
		p->window = 0;
		p->band = 0;
		memset(p->grid, 0, sizeof(p->grid));
	}
	else
	{
		if (p->dat = fp)
			SETBINARY(fp);
		else if (!(p->dat = fopen(path, "r")))
			goto bad;
		if (fread(p->bits.data, 1, sizeof(magic) - 1, p->dat) != (sizeof(magic) - 1))
		{
			fprintf(stderr, "sudz: read error\n");
			goto bad;
		}
		if (memcmp(p->bits.data, s, sizeof(magic) - 1))
		{
			fprintf(stderr, "sudz: magic error -- expected '%-*.*s'\n", (int)sizeof(magic) - 2, (int)sizeof(magic) - 2, s);
			goto bad;
		}
		if (!(p->zip = vcsfio(p->dat, &p->zipdata, VC_DECODE)))
		{
			fprintf(stderr, "sudz: decode error\n");
			goto bad;
		}
		if (input(p) <= 0)
		{
			fprintf(stderr, "sudz: read error\n");
			goto bad;
		}
		p->bits.size = sizeof(p->bits.data);
		restart(p, 1);
		if (p->flags & SUDZ_WINDOW)
			p->remain = 1;
	}
	return p;
 bad:
	sudzclose(p);
	return 0;
}

int
sudzclose(register Sudz_t* p)
{
	unsigned int	n;
	uint32_t	z;
	int		r;

	WATCH();
#if BZ_WATCH
	fprintf(stderr, "C p=%p p->dat=%p p->zip=%p\n", p, p->dat, p->zip); /*AHA*/
#endif
	r = 0;
	if ((p->flags & SUDZ_WRITE) && p->bits.part)
	{
		if (p->bits.bits != 8)
		{
			p->bits.bits = 8;
			p->bits.part++;
		}
		z = p->bits.part;
		p->bits.data[p->bits.part = 0] = 0;
		n = p->bits.data[p->bits.part+3];
		bitput(p, p->window, 24);
		p->bits.data[p->bits.part] = n;
		output(p, z);
	}
	if (p->zip)
		vcsfclose(p->zip);
#if _PACKAGE_vcodex
	else
#endif
	if (p->dat)
	{
#if BZ_WATCH
		fprintf(stderr, "C %p\n", p->dat); /*AHA*/
#endif
		fclose(p->dat);
	}
	if (freesudz)
		free(p);
	else
		freesudz = p;
	return r;
}

int
sudzput(register Sudz_t* p, unsigned char* grid, int band, int automorphisms)
{
	int		i;
	int		j;
	int		k;
	int		c;
	int		m;
	int		n;
	int		o;
	int		q;
	int		r;
	int		u;
	int		v;
	int		x;
	int		z;
	Grid_t		g;

	if ((r = (p->band != band)))
	{
		if (!p->band)
			r = 2;
		p->band = band;
	}
 again:
	if (r)
	{
		if (restart(p, r > 1))
			goto again;
		u = 28;
	}
	else
	{
		for (u = 28; u < 81 && p->grid[u] == grid[u]; u++);
		r = 2;
	}
	if (automorphisms > 1 && (bitput(p, 02, 2) || bitput(p, autmap[automorphisms], 4)))
		goto again;
	if (bitput(p, 0, 1) || bitput(p, u-28, 6))
		goto again;
	g = p->start;
	for (i = 28; i < u; i++)
		MOVE(&g, i, data.blt[grid[i]]);
	for (i = u; i < 81; i++)
		p->grid[i] = grid[i];
	for (i = (u / 9) * 9; i < 81; i += 9)
	{
		for (o = 2; o <= 9; o++)
		{
			k = (o < 9) ? o : 1;
			x = data.blt[k];
			for (j = n = m = c = 0; j < 9; j++)
			{
				q = i + j;
				if (CANDIDATE(&g, q))
				{
					if (data.count[z = MASK(&g, q)] == 1)
					{
						MOVE(&g, q, z);
						if (z == x)
							c = 1;
					}
					else if (z & x)
					{
						if (grid[q] == k)
						{
							m = q;
							v = n;
						}
						n++;
					}
				}
			}
			if (m && !c)
			{
				MOVE(&g, m, x);
				if ((n = data.log[n]) && bitput(p, v, n))
					goto again;
			}
		}
	}
	p->window++;
	p->index++;
	return 0;
}

int
sudzget(register Sudz_t* p)
{
	int		i;
	int		j;
	int		k;
	int		c;
	int		n;
	int		o;
	int		q;
	int		u;
	int		x;
	int		z;
	int		pos[9];
	Grid_t		g;

	WATCH();
	if (!p->remain--)
	{
		if (input(p) <= 0)
			return 0;
		if (p->flags & SUDZ_WINDOW)
			p->index += p->window - 1;
		bitinit(p);
		restart(p, 1);
		if (p->flags & SUDZ_WINDOW)
			p->remain = 0;
		else
			p->remain--;
	}
	p->automorphisms = 1;
	for (;;)
	{
		WATCH();
		if (!bitget(p, 1))
		{
			WATCH();
			g = p->start;
			u = 28 + bitget(p, 6);
			for (i = 28; i < u; i++)
				MOVE(&g, i, data.blt[p->grid[i]]);
			for (i = (u / 9) * 9; i < 81; i += 9)
				for (o = 2; o <= 9; o++)
				{
					k = (o < 9) ? o : 1;
					x = data.blt[k];
					for (j = n = c = 0; j < 9; j++)
					{
						q = i + j;
						if (CANDIDATE(&g, q))
						{
							if (data.count[z = MASK(&g, q)] == 1)
							{
								MOVE(&g, q, z);
								if (z == x)
									c = 1;
							}
							else if (z & x)
								pos[n++] = q;
						}
					}
					if (n && !c)
					{
						q = pos[(n = data.log[n]) ? bitget(p, n) : 0];
						MOVE(&g, q, x);
					}
				}
			WATCH();
			for (i = u; i < 81; i++)
				if (CANDIDATE(&g, i) && data.count[z = MASK(&g, i)] == 1)
					MOVE(&g, i, z);
			WATCH();
			break;
		}
		else if (!bitget(p, 1))
			p->automorphisms = data.automorphisms[bitget(p, 4)];
		else if (!bitget(p, 1))
			restart(p, 0);
		else
		{
			fprintf(stderr, "sudz: grid %" LL "u: unknown attribute\n", p->index+1);
			return -1;
		}
		WATCH();
	}
	for (i = 0; i < 81; i++)
		p->grid[i] = data.ident[g.cell[i]];
	p->index++;
	WATCH();
	return 1;
}

#endif
