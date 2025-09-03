/***********************************************************************
*                                                                      *
*                       Copyright (c) 2005-2009                        *
*                         All Rights Reserved                          *
*                                 gsf                                  *
*                                                                      *
***********************************************************************/
/*
 * bbss derived from
 *
 *	BB_Sudoku -- Bit Based Sudoku Solver
 *	(c) Copyright Brian Turner, 2009.
 *
 *	This file may be freely used, modified, and copied
 *	for personal, educational, or non-commercial purposes
 *	provided this notice remains attached. 
 *
 * modifications:
 * - 0 offset arrays
 * - <sudata.h> grid data
 * - data.next[] instead of 1..9 bit mask loop
 * - add state.searched and state.nodes counters
 * - rotating starting point for next cell search
 */

#define Count(x)	(state.x++)
#define MarkChanged(p)	(Changed = ChangedGroup[data.constraint[p][0]] = ChangedGroup[data.constraint[p][1]] = ChangedGroup[data.constraint[p][2]] = 1)
#define PushSingle(p,b) (SinglePos[SingleCnt] = p, SingleVal[SingleCnt] = b, SingleCnt++, Changed = 1)

/*
 * MaxSolutions: check for at most this many solutions
 */

int
bbss(Grid_t* grid, int MaxSolutions)
{
	register int	i;
	register int	j;
	register int	p;
	register int	v;
	int		g;
	int		c;
	int		m;
	int		t1;
	int		t2;
	int		t3;

	int		Solutions = 0;		/* Solutions for a single puzzle */
	int		Changed = 1;		/* Flag to indicate Grid has changed */
	int		NoSolution = 0;		/* Flag to indicate there is no solution possible */
	int		Level = 0;		/* Level, used for guessing and backtracking */
	int		k = 0;
	/* G - Grid data structure */
	struct { int Moves; int Grid[81]; } G[81];
	/* Naked Singles FIFO stack - new singles found are stored here before */
	int		SingleCnt = 0;
	char		SinglePos[128];
	int		SingleVal[128];
	/* Guess structure */
	int		GuessPos[81];
	int		GuessVal[81];
	int		ChangedGroup[27];	/* Marks which groups have changed */

	Count(searched);
	/* initialize the bb grid */
	G[0].Moves = 81;
	for (i = 0; i < 81; i++)
	{
		G[0].Grid[i] = 0x1FF;
		if (SOLVED(grid, i))
			PushSingle(i, CELL(grid, i));
	}
	/* Loop through the puzzle solving routines until finished */
	while (Changed)
	{
	next:
		/* If No Solution possible, jump straight to the backtrack routine */
		if (!NoSolution)
		{
			/* Check if any Singles to be propogated */
			if (SingleCnt)
			{
				/* process singles */
				for (i = 0; i < SingleCnt; i++)
				{
					/* cache position */
					p = SinglePos[i];
					/* Check if we already processed this position */
					if (G[Level].Grid[p])
					{
						/* mark this position processed */
						G[Level].Grid[p] = 0;
						/* mark one less empty space */
						G[Level].Moves--;
						/* cache value */
						v = SingleVal[i];
						/* loop through all 3 groups */
						for (g = 0; g < 3; g++)
							/* loop through each cell in the group */
							for (c = 0; c < 9; c++)
							{
								/* get temp copy of position */
								t2 = (int)data.path[data.constraint[p][g]][c];
								/* check if removing a possibility */
								if (G[Level].Grid[t2] & v)
								{
									/* remove possibility */
									switch (data.count[G[Level].Grid[t2] &= ~v])
									{
									case 0:
										/* Error (no possibility) */
										NoSolution = 1;
										SingleCnt = 0;
										Changed = 0;
										goto processed;
									case 1:
										/* Naked single */
										PushSingle(t2, G[Level].Grid[t2]);
										break;
									}
									MarkChanged(t2);
								}
							}
					}
				}
				/* Store the single value in the grid */
				for (i = 0; i < SingleCnt; i++)
					G[Level].Grid[SinglePos[i]] = SingleVal[i];
				/* Clear the single count */
				SingleCnt = 0;
			}
 processed:
			if (!G[Level].Moves)
			{
				if (!NoSolution && ++Solutions >= MaxSolutions)
					goto done;
				NoSolution = Changed = 1;
				continue;
			}
		}
		/* If anything has changed, look for hidden singles */
		if (Changed)
		{
			for (i = 0; i < 27; i++)
				if (ChangedGroup[i])
				{
					t1 = t2 = t3 = 0;
					for (j = 0; j < 9; j++)
					{
						v = G[Level].Grid[data.path[i][j]];
						t2 |= (t1 & v);
						t1 |= v;
						if (data.ident[v])
							t3 |= v;
					}
					if (t1 != 0x01FF)
					{
						NoSolution = 1;
						goto guess;
					}
					for (t3 = ~(t2 | t3) & 0x01FF; p = data.next[t3]; t3 ^= p)
						for (j = 0; j < 9; j++)
							if (G[Level].Grid[data.path[i][j]] & p)
							{
								PushSingle(data.path[i][j], p);
								goto next;
							}
					ChangedGroup[i] = 0;
				}
			Changed = 0;
		}
 guess:
		/* If nothing new found, just make a guess */
		g = 0;
		Changed = 1;
		SingleCnt = 0;
		/* Check to see where the next guess should be */
		if (NoSolution)
		{
			while (NoSolution)
			{
				if (Level == 0)
					goto done;
				if (G[Level-1].Grid[GuessPos[Level]] &= ~GuessVal[Level])
				{
					NoSolution = 0;
					g = 1;
				}
				Level--;
			}
			if (NoSolution)
				goto done;
		}
		/* Populate the grid for the next guess */
		G[Level+1] = G[Level];
		Level++;
		if (!g)
		{
			/* Find next spot to check */
			m = 99;
			i = k;
			do
			{
				if ((data.count[G[Level].Grid[i]] < m) && (data.count[G[Level].Grid[i]] > 1))
				{
					m = data.count[G[Level].Grid[i]];
					GuessPos[Level] = i;
					/* if 2, then its the best it can get */
					if (m == 2)
						break;
				}
				if (++i >= 81)
					i = 0;
			} while (i != k);
			k = i;
		}
		/* Mark the next guess in the position */
		v = GuessVal[Level] = data.next[G[Level].Grid[GuessPos[Level]]];
		PushSingle(GuessPos[Level], v);
		Changed = 1;
		Count(nodes);
	}
 done:
	return Solutions ? Solutions == 1 : INVALID;
}
