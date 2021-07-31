(CLIPS-solve "grid3x3-p4")

 The puzzle is:

    * * 2  * * *  * 7 *
    5 * *  6 1 8  * * *
    * 9 *  * * 2  5 6 *

    7 * *  * * 3  * * *
    * 2 6  * * *  3 8 *
    * * *  2 * *  * * 7

    * 1 9  8 * *  * 3 *
    * * *  9 5 4  * * 8
    * 8 *  * * *  6 * *

 The solution is:

    6 4 2  3 9 5  8 7 1
    5 7 3  6 1 8  4 9 2
    1 9 8  7 4 2  5 6 3

    7 5 1  4 8 3  9 2 6
    9 2 6  5 7 1  3 8 4
    8 3 4  2 6 9  1 5 7

    4 1 9  8 2 6  7 3 5
    3 6 7  9 5 4  2 1 8
    2 8 5  1 3 7  6 4 9

 Rules used:

    Naked Single
    Hidden Single
    Locked Candidate Single Line
    Locked Candidate Multiple Lines


CLIPS time = 0.0272750854492188





(solve "..2....7.5..618....9...256.7....3....26...38....2....7.198...3....954..8.8....6..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..2....7.5..618....9...256.7....3....26...38....2....7.198...3....954..8.8....6..
28 givens, 184 candidates
entering BRT
hidden-single-in-a-block ==> r9c3 = 5
hidden-single-in-a-block ==> r7c9 = 5
hidden-single-in-a-column ==> r4c9 = 6
hidden-single-in-a-column ==> r1c7 = 8
Starting_init_links_with_<Fact-3647>
164 candidates, 834 csp-links and 834 links. Density = 6.24%
starting non trivial part of solution
Entering_level_W1_with_<Fact-6724>
whip[1]: r8n1{c8 .} ==> r9c9 ≠ 1, r9c8 ≠ 1
whip[1]: r8n3{c3 .} ==> r9c1 ≠ 3
whip[1]: r9n7{c6 .} ==> r7c6 ≠ 7, r7c5 ≠ 7
naked-single ==> r7c6 = 6
naked-single ==> r7c5 = 2
naked-single ==> r7c1 = 4
naked-single ==> r7c7 = 7
naked-single ==> r9c1 = 2
hidden-single-in-a-column ==> r2c9 = 2
hidden-single-in-a-block ==> r6c5 = 6
hidden-single-in-a-block ==> r4c5 = 8
whip[1]: r4n9{c8 .} ==> r5c9 ≠ 9, r6c7 ≠ 9, r6c8 ≠ 9
whip[1]: r2n3{c3 .} ==> r1c1 ≠ 3, r1c2 ≠ 3, r3c1 ≠ 3, r3c3 ≠ 3
whip[1]: r2n9{c8 .} ==> r1c9 ≠ 9
hidden-single-in-a-column ==> r9c9 = 9
naked-single ==> r9c8 = 4
naked-single ==> r2c8 = 9
naked-single ==> r2c7 = 4
naked-single ==> r6c7 = 1
naked-single ==> r5c9 = 4
naked-single ==> r6c8 = 5
naked-single ==> r4c8 = 2
naked-single ==> r4c7 = 9
naked-single ==> r8c8 = 1
naked-single ==> r6c6 = 9
naked-single ==> r1c6 = 5
naked-single ==> r5c5 = 7
naked-single ==> r5c6 = 1
naked-single ==> r5c1 = 9
naked-single ==> r5c4 = 5
naked-single ==> r4c4 = 4
naked-single ==> r1c4 = 3
naked-single ==> r1c9 = 1
naked-single ==> r1c1 = 6
naked-single ==> r1c2 = 4
naked-single ==> r1c5 = 9
naked-single ==> r6c2 = 3
naked-single ==> r2c2 = 7
naked-single ==> r2c3 = 3
naked-single ==> r8c3 = 7
naked-single ==> r8c2 = 6
naked-single ==> r6c1 = 8
naked-single ==> r3c1 = 1
naked-single ==> r3c3 = 8
naked-single ==> r6c3 = 4
naked-single ==> r8c1 = 3
naked-single ==> r3c9 = 3
naked-single ==> r3c4 = 7
naked-single ==> r9c4 = 1
naked-single ==> r3c5 = 4
naked-single ==> r4c2 = 5
naked-single ==> r4c3 = 1
naked-single ==> r9c6 = 7
naked-single ==> r9c5 = 3
naked-single ==> r8c7 = 2
GRID 0 SOLVED. rating-type = SFin, MOST COMPLEX RULE TRIED = W[1]
642395871
573618492
198742563
751483926
926571384
834269157
419826735
367954218
285137649
Puzzle ..2....7.5..618....9...256.7....3....26...38....2....7.198...3....954..8.8....6.. :
init-time = 0.18s, solve-time = 0.12s, total-time = 0.3s
nb-facts=<Fact-6786>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
