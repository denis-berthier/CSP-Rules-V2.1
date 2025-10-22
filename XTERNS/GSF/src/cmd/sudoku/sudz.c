/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2009                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * 3x3 sudoku compressed minlex grid stream implementation
 *
 * Glenn Fowler
 * AT&T Research
 */

static const char	id[] = "\n@(#)$Id: sudz (AT&T Research) 2007-02-14 $\n";

static const char	command[] = "sudz";

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "sudata.h"
#include "sudz.h"

#define H(x)		do{if(html)fprintf(stderr,"%s",x);}while(0)
#define T(x)		fprintf(stderr,"%s",x)

static void
help(int html)
{
H("<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML//EN\">\n");
H("<HTML>\n");
H("<HEAD>\n");
H("<TITLE>3x3 sudoku minlex solution grid compressor man document</TITLE>\n");
H("</HEAD>\n");
H("<BODY bgcolor=white>\n");
H("<PRE>\n");
T("NAME\n");
T("  sudz - 3x3 sudoku minlex solution grid compressor\n");
T("\n");
T("SYNOPSIS\n");
T("  sudz [ options ] [ file ... ]\n");
T("\n");
T("DESCRIPTION\n");
T("  sudz is a 3x3 sudoku minlex solution grid compressor. If no file operands\n");
T("  are specified, or if a file is -, then the standard input is read.\n");
T("\n");
T("OPTIONS\n");
T("  -aN  List grids with >= N automorphisms.\n");
T("  -fF  Format output according to F (default '%03b %3a %g') for each grid.\n");
T("       printf(3) style width and fill apply.  The formats are:\n");
T("        %a  The number of automorphisms in the range 1..648 inclusive.\n");
T("        %b  The band index in the range 1..416 inclusive.\n");
T("        %g  The grid in 81 char row order form.\n");
T("        %i  The grid index in the range 1..5472730538 inclusive.\n");
T("        %w  The number of grids in the current window.\n");
T("  -i   List the window information using the default format '%10i %03b %6w %g'.\n");
T("       Grid information is for the first grid in the window.\n");
T("  -oF  Write output to the file F instead of the standard output.\n");
T("  -u   Uncompress the input to the standard output.  This is the default.\n");
T("  -w   Compress the input to the output.  The input must be lines containing\n");
T("       the space separated fields: band index, number of automorphisms, and\n");
T("       the 81 char row order minlex-solution-grid.  The input must be sorted\n");
T("       by the minlex-solution-grid field in ascending order (or the compression\n");
T("       rate will deteriorate).\n");
T("\n");
T("DETAILS\n");
T("  A minlex solution grid (a.k.a. row order minlex canonical solution grid)\n");
T("  is a solution grid with values, rows and columns permuted to yield the\n");
T("  smallest lexicographic row order value.  Grids are organized by the top band\n");
T("  (top 3 rows).  There are 416 essentially different minlex bands and 5472730538\n");
T("  essentially different grids.  A byproduct of minlex ordering is that earlier\n");
T("  bands tend to account for more grids than later bands.  For example, band 001\n");
T("  contains 1007170 grids, band 006 (the largest) contains 96229042 grids, and\n");
T("  bands 395,397,398,400,402,403,404,406,408,409,410,412,413,414,415 contain no\n");
T("  grids.\n");
T("\n");
T("  The compression format stores the number of grids and initial band index for\n");
T("  each window.  Each grid has the band index (if different from the previous\n");
T("  grid), the number of automorphisms (if > 1), the number of cells that differ\n");
T("  from the previous grid, and the list of differing cell values encoded using a\n");
T("  basic singles constraint solver.  The data is compressed using a combination\n");
T("  of Burrows-Wheeler, move-to-front, run-length, and huffman encoding.\n");
T("\n");
T("PERFORMANCE\n");
T("  The entire catalog of 5472730538 essentially different grids, in minlex\n");
T("  order, compresses to 5.34GiB, or 8.38 bits/grid.  Uncompress rate is\n");
T("  ~100K grids/sec/Ghz, or ~5 hours minimum to stream through the entire\n");
T("  catalog on a 2.8Ghz processor.\n");
T("\n");
T("SEE ALSO\n");
#if _PACKAGE_vcodex
T("  sudoku(1), vcodex(3)\n");
#else
T("  sudoku(1), bzlib(3)\n");
#endif
T("\n");
T("CONTRIBUTORS\n");
T("  Subgrid (multiple solution) row order minlex canonicalizer by Michael Deverin.\n");
T("\n");
T("IMPLEMENTATION\n");
T("  version     sudz (AT&T Research) 2007-02-14\n");
T("  author      Glenn Fowler <gsf@research.att.com>\n");
T("  copyright   Copyright (c) 2007-2009 AT&T Knowledge Ventures\n");
T("  license     http://www.opensource.org/licenses/cpl1.0.txt\n");
H("</PRE>\n");
H("</BODY>\n");
H("</HTML>\n");
}

int
main(int argc, char** argv)
{
	Sudz_t*		p;
	char*		s;
	char*		path;
	char*		file;
	char*		format;
	FILE*		fp;
	int		band;
	int		naut;
	int		flags;
	int		i;
	int		w;
	int		z;
	int		r;
	uint32_t	test;
	uint64_t	n;
	uint64_t	offset;
	unsigned char	grid[82];

	flags = SUDZ_READ;
	format = 0;
	naut = 0;
	path = 0;
	test = 0;
	for (;;)
		if (!(s = *++argv))
			break;
		else if (*s != '-')
			break;
		else if (!*(s + 1))
		{
			s = 0;
			argv++;
			break;
		}
		else if (*(s + 1) == '-')
		{
			if (!*(s + 2))
			{
				s = *++argv;
				argv++;
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
				case 'a':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					naut = (int)strtol(s, 0, 10);
					break;
				case 'f':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					format = s;
					break;
				case 'i':
					flags = SUDZ_WINDOW;
					continue;
				case 'o':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					path = s;
					break;
				case 'u':
					flags = SUDZ_READ;
					continue;
				case 'w':
					flags = SUDZ_WRITE;
					continue;
				case 'T':
					if (!*++s && !(s = *++argv))
						goto nooptarg;
					test |= (int)strtol(s, 0, 10);
					break;
				case '?':
					help(0);
					return 2;
				default:
					fprintf(stderr, "%s: -%c: unknown option\n", command, i);
					return 1;
				nooptarg:
					fprintf(stderr, "%s: -%c: option argument expected\n", command, i);
					return 1;
				}
				break;
			}
	if (!s)
		argv--;
	r = 0;
	if (flags & SUDZ_WRITE)
	{
		if (!(file = path))
			file = "/dev/stdout";
		if (!(p = sudzopen(path ? 0 : stdout, path, flags)))
		{
			fprintf(stderr, "%s: %s: cannot open output stream\n", command, file);
			return 1;
		}
		do
		{
			if (fp = (!s || !strcmp(s, "-")) ? stdin : fopen(s, "rb"))
			{
				while (fscanf(fp, "%d %d %81s", &band, &naut, grid) == 3)
				{
					for (i = 0; i < 81; i++)
						grid[i] -= '0';
					if (sudzput(p, grid, band, naut) < 0)
					{
						fprintf(stderr, "%s: %s: write error\n", command, file);
						return 1;
					}
				}
				if (fp != stdin)
					fclose(fp);
			}
			else
			{
				fprintf(stderr, "%s: %s: cannot read\n", command, s);
				r = 1;
			}
		} while (s = *++argv);
		if (sudzclose(p) < 0)
		{
			fprintf(stderr, "%s: %s: flush error\n", command, file);
			return 1;
		}
	}
	else
	{
		if (!format)
			format = (flags & SUDZ_WINDOW) ? "%10i %03b %6w %g" : "%03b %3a %g";
		if (path && !freopen(path, "wb", stdout))
		{
			fprintf(stderr, "%s: %s: cannot write\n", command, path);
			return 1;
		}
		grid[81] = 0;
		offset = 0;
		do
		{
			if (fp = (!s || !strcmp(s, "-")) ? stdin : fopen(s, "rb"))
			{
				if (!s)
					s = "/dev/stdin";
				if (p = sudzopen(fp, s, flags))
				{
					while (sudzget(p) > 0)
						if (p->automorphisms >= naut)
						{
							s = format;
							for (;;)
							{
								switch (i = *s++)
								{
								case 0:
									break;
								case '%':
									if (z = *s == '0')
										s++;
									w = 0;
									while (*s >= '0' && *s <= '9')
										w = w * 10 + (*s++ - '0');
									if (!*s)
										break;
									switch (*s++)
									{
									case 'a':
										n = p->automorphisms;
										break;
									case 'b':
										n = p->band;
										break;
									case 'g':
										for (i = 0; i < 81; i++)
											grid[i] = p->grid[i] + '0';
										printf("%s", grid);
										continue;
									case 'i':
										n = offset + p->index;
										break;
									case 'w':
										n = p->window;
										break;
									}
									if (w)
										printf(z ? "%0*" LL "d" : "%*" LL "d", w, n);
									else
										printf("%" LL "d", n);
									continue;
								default:
									putchar(i);
									continue;
								}
								break;
							}
							putchar('\n');
						}
					offset += (flags & SUDZ_WINDOW) ? (p->index + p->window - 1) : p->index;
					sudzclose(p);
				}
				else
				{
					if (fp != stdin)
						fclose(fp);
					fprintf(stderr, "%s: %s: corrupt\n", command, s);
					r = 1;
				}
			}
			else
			{
				fprintf(stderr, "%s: %s: cannot read\n", command, s);
				r = 1;
			}
		} while (s = *++argv);
	}
	return 1;
}
