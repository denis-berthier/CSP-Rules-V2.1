http://forum.enjoysudoku.com/an-extreme-puzzle-with-a-lot-of-fish-t38884.html


1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.


(solve "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.
hidden-single-in-a-row ==> r9c9 = 6
hidden-single-in-a-row ==> r8c7 = 3
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-block ==> r3c9 = 4
hidden-single-in-a-row ==> r1c6 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      135679 13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 56789  15679  2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

173 candidates, 1002 csp-links and 1002 links. Density = 6.73%
Starting non trivial part of solution.
whip[1]: r4n6{c2 .} ==> r6c2 ≠ 6, r5c2 ≠ 6, r6c1 ≠ 6

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      13579  13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 5789   1579   2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

170 candidates.

naked-pairs-in-a-row: r7{c4 c8}{n2 n8} ==> r7c2 ≠ 2, r7c1 ≠ 2
naked-single ==> r7c1 = 6
hidden-single-in-a-block ==> r4c2 = 6
whip[1]: b7n2{r8c2 .} ==> r8c6 ≠ 2, r8c9 ≠ 2
whip[1]: b8n2{r9c4 .} ==> r2c4 ≠ 2, r3c4 ≠ 2, r5c4 ≠ 2
z-chain[3]: b2n9{r2c5 r2c4} - c1n9{r2 r8} - c6n9{r8 .} ==> r6c5 ≠ 9
z-chain[3]: b3n7{r3c8 r1c9} - c3n7{r1 r9} - c7n7{r9 .} ==> r5c8 ≠ 7
t-whip[3]: r8c9{n7 n8} - r7c8{n8 n2} - b3n2{r3c8 .} ==> r1c9 ≠ 7
whip[1]: b3n7{r3c8 .} ==> r6c8 ≠ 7
finned-x-wing-in-rows: n7{r9 r6}{c7 c3} ==> r5c3 ≠ 7
z-chain[4]: b8n8{r7c4 r8c6} - c9n8{r8 r4} - c3n8{r4 r2} - c5n8{r2 .} ==> r5c4 ≠ 8
whip[6]: r9c3{n9 n7} - r1c3{n7 n3} - c2n3{r3 r5} - r5n1{c2 c7} - c7n7{r5 r6} - b4n7{r6c1 .} ==> r5c3 ≠ 9
t-whip[7]: r8n8{c6 c9} - r7n8{c8 c4} - r7n2{c4 c8} - b3n2{r3c8 r1c9} - r4c9{n2 n5} - r4c1{n5 n8} - r3n8{c1 .} ==> r5c6 ≠ 8, r6c6 ≠ 8
biv-chain[4]: r9c7{n2 n7} - r8c9{n7 n8} - c6n8{r8 r3} - c6n2{r3 r5} ==> r5c7 ≠ 2
biv-chain[4]: r6c5{n8 n4} - r4n4{c5 c7} - c7n2{r4 r9} - r7c8{n2 n8} ==> r6c8 ≠ 8
biv-chain[3]: r6c6{n9 n5} - r6c8{n5 n6} - b5n6{r6c4 r5c4} ==> r5c4 ≠ 9
z-chain[3]: b4n9{r6c2 r6c1} - c4n9{r6 r9} - c3n9{r9 .} ==> r2c2 ≠ 9
t-whip[4]: r9n7{c3 c7} - r5c7{n7 n1} - b4n1{r5c2 r6c2} - r6n7{c2 .} ==> r8c1 ≠ 7
z-chain[4]: c3n9{r2 r9} - c3n7{r9 r1} - c1n7{r3 r6} - b4n9{r6c1 .} ==> r1c2 ≠ 9
finned-x-wing-in-rows: n9{r9 r1}{c3 c4} ==> r2c4 ≠ 9
whip[1]: b2n9{r2c5 .} ==> r5c5 ≠ 9
z-chain[6]: r7c4{n8 n2} - r9n2{c4 c7} - r4c7{n2 n4} - r6n4{c7 c5} - r6n8{c5 c1} - r3n8{c1 .} ==> r2c4 ≠ 8
z-chain[4]: r2c4{n5 n3} - r2c8{n3 n2} - r1c9{n2 n5} - r4n5{c9 .} ==> r2c1 ≠ 5
z-chain[6]: c8n7{r3 r1} - c8n3{r1 r2} - r2c4{n3 n5} - r3c6{n5 n8} - b8n8{r8c6 r7c4} - r7n2{c4 .} ==> r3c8 ≠ 2
whip[6]: r6c6{n9 n5} - r6c8{n5 n6} - r6c4{n6 n8} - b8n8{r7c4 r8c6} - r3n8{c6 c1} - c1n7{r3 .} ==> r6c1 ≠ 9
whip[1]: b4n9{r6c2 .} ==> r8c2 ≠ 9
biv-chain[3]: c2n9{r5 r6} - r6n1{c2 c7} - r5c7{n1 n7} ==> r5c2 ≠ 7
whip[1]: r5n7{c9 .} ==> r6c7 ≠ 7
z-chain[4]: r3n2{c2 c6} - c6n8{r3 r8} - r8n9{c6 c1} - r8n2{c1 .} ==> r1c2 ≠ 2
z-chain[4]: r3n2{c2 c6} - c6n8{r3 r8} - r8n9{c6 c1} - r8n2{c1 .} ==> r2c2 ≠ 2
whip[4]: r2c4{n3 n5} - r2c8{n5 n2} - r1n2{c9 c5} - c5n9{r1 .} ==> r2c5 ≠ 3
whip[6]: r2c4{n3 n5} - r2c8{n5 n2} - r1n2{c9 c5} - r3c6{n2 n8} - b8n8{r8c6 r7c4} - r7n2{c4 .} ==> r2c2 ≠ 3
whip[6]: r2c4{n3 n5} - r2c8{n5 n2} - r1n2{c9 c5} - b5n2{r4c5 r5c6} - r5n9{c6 c2} - c2n3{r5 .} ==> r2c3 ≠ 3
z-chain[7]: r6c7{n1 n4} - c5n4{r6 r4} - r4n3{c5 c3} - r5c3{n3 n8} - c8n8{r5 r7} - r8c9{n8 n7} - r5n7{c9 .} ==> r5c7 ≠ 1
naked-single ==> r5c7 = 7
naked-single ==> r9c7 = 2
naked-single ==> r4c7 = 4
naked-single ==> r6c7 = 1
naked-single ==> r7c8 = 8
naked-single ==> r7c4 = 2
naked-single ==> r8c9 = 7
naked-single ==> r8c2 = 2
naked-single ==> r8c1 = 9
naked-single ==> r8c6 = 8
naked-single ==> r9c3 = 7
naked-single ==> r9c4 = 9
hidden-single-in-a-block ==> r6c5 = 4
x-wing-in-rows: n8{r3 r6}{c1 c4} ==> r4c1 ≠ 8, r2c1 ≠ 8
naked-single ==> r2c1 = 2
naked-single ==> r4c1 = 5
hidden-single-in-a-row ==> r3c6 = 2
whip[1]: c6n5{r6 .} ==> r5c4 ≠ 5, r6c4 ≠ 5
naked-pairs-in-a-row: r1{c3 c5}{n3 n9} ==> r1c8 ≠ 3, r1c2 ≠ 3
naked-pairs-in-a-row: r2{c4 c8}{n3 n5} ==> r2c2 ≠ 5
naked-single ==> r2c2 = 4
naked-single ==> r7c2 = 1
naked-single ==> r7c3 = 4
hidden-single-in-a-block ==> r5c3 = 1
x-wing-in-rows: n3{r1 r4}{c3 c5} ==> r5c5 ≠ 3
biv-chain[3]: r6c8{n5 n6} - r6c4{n6 n8} - r5n8{c5 c9} ==> r5c9 ≠ 5
hidden-single-in-a-column ==> r1c9 = 5
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 2
naked-single ==> r3c1 = 8
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c5 = 9
naked-single ==> r3c2 = 5
naked-single ==> r3c4 = 3
naked-single ==> r2c4 = 5
naked-single ==> r3c8 = 7
naked-single ==> r5c4 = 6
naked-single ==> r5c8 = 5
naked-single ==> r5c6 = 9
naked-single ==> r5c2 = 3
naked-single ==> r6c6 = 5
naked-single ==> r6c8 = 6
naked-single ==> r6c4 = 8
naked-single ==> r5c5 = 2
naked-single ==> r4c5 = 3
naked-single ==> r5c9 = 8
naked-single ==> r4c9 = 2
naked-single ==> r4c3 = 8
naked-single ==> r2c5 = 8
naked-single ==> r6c1 = 7
naked-single ==> r6c2 = 9
naked-single ==> r2c8 = 3
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = tW[7]
   173496825
   249587631
   856312974
   568731492
   431629758
   792845163
   614273589
   925168347
   387954216

nb-facts = <Fact-520334>
Puzzle 1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1. :
init-time = 0.18s, solve-time = 1m 16.86s, total-time = 1m 17.04s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r801
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------

DEFISE.s solution
Singles: 6r1c6, 1r2c9, 3r8c7, 6r9c9, 7r7c5, 9r3c7, 4r3c9, 4r9c6
Alignment: 6r4b4 => -6r5c2 -6r6c1 -6r6c2
Naked pair: 28r7c48 => -2r7c1 -2r7c2
Singles: 6r7c1, 6r4c2
Alignment: 2b7r8 => -2r8c6 -2r8c9
Alignment: 2b8c4 => -2r2c4 -2r3c4 -2r5c4

whip[8]: r9c7{n2 n7}- r8c9{n7 n8}- r4c9{n8 n5}- r4c1{n5 n8}- b1n8{r2c1 r2c3}- c3n4{r2 r7}- c3n1{r7 r5}- r5c7{n1 .} => -2r4c7
Singles: 4r4c7, 4r6c5

whip[7]: r7n2{c4 c8}- c7n2{r9 r5}- c6n2{r5 r3}- r3n8{c6 c1}- r4c1{n8 n5}- r4c9{n5 n8}- c8n8{r5 .} => -8r7c4
Singles: 2r7c4, 8r7c8, 7r8c9, 9r9c4, 8r8c6, 7r9c3, 2r9c7
Alignment: 9c6b5 => -9r5c5
Alignment: 7c7b6 => -7r5c8 -7r6c8
Xwing: 8r36c14 => -8r2c1 -8r2c4 -8r4c1 -8r5c4
Single: 5r4c1
Naked pair: 29c1r28 => -2r3c1 -9r6c1

whip[7]: c3n4{r7 r2}- r2n8{c3 c5}- c5n9{r2 r1}- r1c3{n9 n3}- c2n3{r1 r5}- r5n1{c2 c7}- r5n7{c7 .} => -1r7c3
Singles: 4r7c3, 1r7c2, 4r2c2, 1r6c7, 7r5c7, 1r5c3
Alignment: 9c3b1 => -9r1c2 -9r2c1
Singles: 2r2c1, 9r8c1, 2r8c2
Naked pair: 35r2c48 => -3r2c3 -3r2c5

whip[5]: r4n2{c9 c5}- r4n3{c5 c3}- r5c2{n3 n9}- r5c6{n9 n5}- c9n5{r5 .} => -2r1c9
STTE





-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
fewer step solutions in W7

1st try:

(find-sudoku-fewer-steps-wrt-W1 "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")
1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.
hidden-single-in-a-row ==> r9c9 = 6
hidden-single-in-a-row ==> r8c7 = 3
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-block ==> r3c9 = 4
hidden-single-in-a-row ==> r1c6 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      135679 13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 56789  15679  2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

173 candidates, 1002 csp-links and 1002 links. Density = 6.73%
Starting non trivial part of solution.
whip[1]: r4n6{c2 .} ==> r6c2 ≠ 6, r5c2 ≠ 6, r6c1 ≠ 6
PUZZLE 0 IS NOT SOLVED. 49 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      13579  13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 5789   1579   2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 170 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 170 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................
erasable candidates computation time = 1m 44.09s
===> 17 candidates can be eliminated:
n7r1c9 n2r2c4 n2r3c4 n6r4c1 n3r4c2 n5r4c2 n7r5c3 n2r5c4 n8r5c4 n7r5c8 n9r6c5 n7r6c8 n2r7c1 n2r7c2 n6r7c2 n2r8c6 n2r8c9
===> Among these, there are 3 candidates with the best score.
===> Eliminating randomly chosen candidate n6r4c1 and applying rules in W1, considered as "zero-step"
whip-rc[3]: r7c1{n6 n2} - r7c8{n2 n8} - r7c4{n8 .} ==> r4c1 ≠ 6
hidden-single-in-a-block ==> r4c2 = 6
hidden-single-in-a-block ==> r7c1 = 6
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      23589     2389      7         6         235       1
   2578      2357      6         2358      1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     235689    2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         124       14        28        7         3         5         28        9
   279       279       5         1         6         289       3         4         278
   3         8         79        29        5         4         27        1         6

solve-time = 0.08s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      23589     2389      7         6         235       1
   2578      2357      6         2358      1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     235689    2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         124       14        28        7         3         5         28        9
   279       279       5         1         6         289       3         4         278
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 45.98s


===> STEP #2
There remains 163 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 163 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................................................
erasable candidates computation time = 1m 24.41s
===> 16 candidates can be eliminated:
n7r1c9 n2r2c4 n2r3c4 n7r5c3 n9r5c3 n2r5c4 n8r5c4 n8r5c6 n2r5c7 n7r5c8 n9r6c5 n8r6c6 n7r6c8 n2r7c2 n2r8c6 n2r8c9
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n2r7c2 and applying rules in W1, considered as "zero-step"
biv-chain-rc[2]: r7c4{n2 n8} - r7c8{n8 n2} ==> r7c2 ≠ 2
whip[1]: b7n2{r8c2 .} ==> r8c6 ≠ 2, r8c9 ≠ 2
whip[1]: b8n2{r9c4 .} ==> r2c4 ≠ 2, r3c4 ≠ 2, r5c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.18s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 26.24s


===> STEP #3
There remains 157 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 157 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................................................
erasable candidates computation time = 1m 36.44s
===> 11 candidates can be eliminated:
n7r1c9 n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n7r5c8 n9r6c5 n8r6c6 n7r6c8
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n7r1c9 and applying rules in W1, considered as "zero-step"
whip-bn[3]: b9n7{r8c9 r9c7} - b9n2{r9c7 r7c8} - b3n2{r1c8 .} ==> r1c9 ≠ 7
whip[1]: b3n7{r3c8 .} ==> r5c8 ≠ 7, r6c8 ≠ 7
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.19s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 37.77s


===> STEP #4
There remains 154 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 154 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................
erasable candidates computation time = 1m 36.96s
===> 8 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n9r6c5 n8r6c6
===> Among these, there are 8 candidates with the best score.
===> Eliminating randomly chosen candidate n8r6c6 and applying rules in W1, considered as "zero-step"
whip[7]: r8n8{c6 c9} - r7c8{n8 n2} - b3n2{r3c8 r1c9} - r4c9{n2 n5} - r4c1{n5 n8} - c3n8{r5 r2} - c5n8{r2 .} ==> r6c6 ≠ 8
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.65s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 38.5s


===> STEP #5
There remains 153 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 153 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.........................................................................................................................................................
erasable candidates computation time = 1m 47.25s
===> 9 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n5r6c1 n5r6c2 n9r6c5
===> Among these, there are 9 candidates with the best score.
===> Eliminating randomly chosen candidate n5r6c2 and applying rules in W1, considered as "zero-step"
whip[7]: r6c6{n5 n9} - r8c6{n9 n8} - r7n8{c4 c8} - r6c8{n8 n6} - r6c4{n6 n8} - r3n8{c4 c1} - r4c1{n8 .} ==> r6c2 ≠ 5
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      179       2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.29s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      179       2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 48.56s


===> STEP #6
There remains 152 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 152 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................................................................................
erasable candidates computation time = 1m 44.92s
===> 8 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n5r6c1 n9r6c5
===> Among these, there are 8 candidates with the best score.
===> Eliminating randomly chosen candidate n8r5c6 and applying rules in W1, considered as "zero-step"
whip[7]: r8n8{c6 c9} - r7c8{n8 n2} - b3n2{r3c8 r1c9} - r4c9{n2 n5} - r4c1{n5 n8} - c3n8{r5 r2} - c5n8{r2 .} ==> r5c6 ≠ 8
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      259       127       2568      2578
   5789      179       2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 1.3s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      259       127       2568      2578
   5789      179       2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 47.1s


===> STEP #7
There remains 151 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 151 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.......................................................................................................................................................
erasable candidates computation time = 1m 50.55s
===> 8 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n2r5c7 n5r6c1 n9r6c5 n7r8c1
===> Among these, there are 8 candidates with the best score.
===> Eliminating randomly chosen candidate n2r5c7 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r9c7{n2 n7} - r8c9{n7 n8} - c6n8{r8 r3} - c6n2{r3 r5} ==> r5c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      259       17        2568      2578
   5789      179       2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.63s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      259       17        2568      2578
   5789      179       2         5689      489       59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 52.17s


===> STEP #8
There remains 150 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 150 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................
erasable candidates computation time = 2m 49.18s
===> 11 candidates can be eliminated:
n8r2c4 n9r2c4 n7r5c3 n9r5c3 n8r5c4 n9r5c4 n9r5c5 n5r6c1 n9r6c5 n8r6c8 n7r8c1
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n9r2c4 and applying rules in W1, considered as "zero-step"
whip[6]: r9n9{c4 c3} - r9n7{c3 c7} - r5c7{n7 n1} - r6n1{c7 c2} - r6n7{c2 c1} - c1n9{r6 .} ==> r2c4 ≠ 9
whip[1]: b2n9{r2c5 .} ==> r5c5 ≠ 9, r6c5 ≠ 9
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     238       259       17        2568      2578
   5789      179       2         5689      48        59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.82s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     238       259       17        2568      2578
   5789      179       2         5689      48        59        147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 51.04s


===> STEP #9
There remains 147 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 147 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................................
erasable candidates computation time = 2m 29.58s
===> 10 candidates can be eliminated:
n5r2c1 n8r2c4 n3r2c5 n7r5c3 n9r5c3 n8r5c4 n9r5c4 n5r6c1 n8r6c8 n7r8c1
===> Among these, there are 10 candidates with the best score.
===> Eliminating randomly chosen candidate n8r6c8 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r6c5{n8 n4} - b6n4{r6c7 r4c7} - c7n2{r4 r9} - r7c8{n2 n8} ==> r6c8 ≠ 8
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     238       259       17        2568      2578
   5789      179       2         5689      48        59        147       56        3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.63s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     238       259       17        2568      2578
   5789      179       2         5689      48        59        147       56        3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 31.13s


===> STEP #10
There remains 146 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 146 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..................................................................................................................................................
erasable candidates computation time = 2m 42.52s
===> 11 candidates can be eliminated:
n5r2c1 n8r2c4 n3r2c5 n8r4c1 n7r5c3 n9r5c3 n8r5c4 n9r5c4 n5r6c1 n9r6c1 n7r8c1
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n8r4c1 and applying rules in W1, considered as "zero-step"
whip[7]: b1n8{r2c1 r2c3} - r2n4{c3 c2} - r7c2{n4 n1} - r6n1{c2 c7} - r6n4{c7 c5} - r6n8{c5 c4} - c5n8{r4 .} ==> r4c1 ≠ 8
naked-single ==> r4c1 = 5
PUZZLE 0 IS NOT SOLVED. 46 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   289       23459     3489      358       2389      7         6         235       1
   278       2357      6         358       1         258       9         2357      4
   5         6         38        7         2348      1         24        9         28
   4         1379      13789     35689     238       259       17        2568      2578
   789       179       2         5689      48        59        147       56        3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.75s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   289       23459     3489      358       2389      7         6         235       1
   278       2357      6         358       1         258       9         2357      4
   5         6         38        7         2348      1         24        9         28
   4         1379      13789     35689     238       259       17        2568      2578
   789       179       2         5689      48        59        147       56        3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 44.22s


===> STEP #11
There remains 139 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 139 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................................................................
erasable candidates computation time = 2m 20.68s
===> 25 candidates can be eliminated:
n7r1c3 n8r2c4 n3r2c5 n8r3c6 n4r4c5 n2r4c7 n7r5c3 n9r5c3 n8r5c4 n9r5c4 n8r5c8 n7r5c9 n9r6c1 n9r6c4 n8r6c5 n4r6c7 n8r7c4 n2r7c8 n7r8c1 n7r8c2 n9r8c6 n8r8c9 n9r9c3 n2r9c4 n7r9c7
===> Among these, there are 14 candidates with the best score.
===> Eliminating randomly chosen candidate n9r8c6 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r9c4{n9 n2} - c7n2{r9 r4} - r4c9{n2 n8} - r8n8{c9 c6} ==> r8c6 ≠ 9
naked-single ==> r8c6 = 8
naked-single ==> r7c4 = 2
naked-single ==> r7c8 = 8
naked-single ==> r9c4 = 9
naked-single ==> r9c3 = 7
naked-single ==> r9c7 = 2
naked-single ==> r4c7 = 4
naked-single ==> r8c9 = 7
hidden-single-in-a-block ==> r6c5 = 4
PUZZLE 0 IS NOT SOLVED. 37 VALUES MISSING.
Final resolution state:
   1         23579     39        4         239       6         8         2357      25
   289       23459     3489      358       2389      7         6         235       1
   278       2357      6         358       1         25        9         2357      4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        256       258
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.15s
nb-facts = 0

   1         23579     39        4         239       6         8         2357      25
   289       23459     3489      358       2389      7         6         235       1
   278       2357      6         358       1         25        9         2357      4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        256       258
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 2m 22.43s


===> STEP #12
There remains 110 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 110 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..............................................................................................................
erasable candidates computation time = 27.56s
===> 22 candidates can be eliminated:
n9r1c2 n3r1c8 n2r1c9 n8r2c1 n9r2c1 n9r2c2 n3r2c3 n8r2c4 n2r2c5 n3r2c5 n2r3c1 n7r5c2 n3r5c3 n8r5c3 n9r5c3 n5r5c4 n8r5c4 n1r5c7 n2r5c8 n9r6c1 n1r6c2 n7r6c7
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n2r5c8 and applying rules in W1, considered as "zero-step"
whip[6]: b5n2{r5c5 r4c5} - r4n3{c5 c3} - r1c3{n3 n9} - r1c5{n9 n3} - c4n3{r3 r5} - r5n6{c4 .} ==> r5c8 ≠ 2
whip[1]: b6n2{r5c9 .} ==> r1c9 ≠ 2
naked-single ==> r1c9 = 5
PUZZLE 0 IS NOT SOLVED. 36 VALUES MISSING.
Final resolution state:
   1         2379      39        4         239       6         8         237       5
   289       23459     3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.17s
nb-facts = 0

   1         2379      39        4         239       6         8         237       5
   289       23459     3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 28.82s


===> STEP #13
There remains 102 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 102 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................
erasable candidates computation time = 24.57s
===> 25 candidates can be eliminated:
n9r1c2 n3r1c5 n3r1c8 n8r2c1 n9r2c1 n9r2c2 n3r2c3 n8r2c4 n2r2c5 n3r2c5 n2r3c1 n2r3c2 n5r3c6 n7r5c2 n3r5c3 n8r5c3 n9r5c3 n5r5c4 n8r5c4 n2r5c6 n1r5c7 n9r6c1 n1r6c2 n5r6c4 n7r6c7
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n2r5c6 and applying rules in W1, considered as "zero-step"
whip[7]: r5c9{n2 n8} - r5c5{n8 n3} - r4c5{n3 n8} - c3n8{r4 r2} - r2n4{c3 c2} - r2n5{c2 c4} - r3c6{n5 .} ==> r5c6 ≠ 2
hidden-single-in-a-column ==> r3c6 = 2
whip[1]: c6n5{r6 .} ==> r5c4 ≠ 5, r6c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 35 VALUES MISSING.
Final resolution state:
   1         2379      39        4         39        6         8         237       5
   289       23459     3489      358       389       7         6         23        1
   78        357       6         358       1         2         9         37        4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      368       238       59        17        56        28
   789       179       2         68        4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.38s
nb-facts = 0

   1         2379      39        4         39        6         8         237       5
   289       23459     3489      358       389       7         6         23        1
   78        357       6         358       1         2         9         37        4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      368       238       59        17        56        28
   789       179       2         68        4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 25.96s


===> STEP #14
There remains 92 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 92 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
............................................................................................
erasable candidates computation time = 51.72s
===> 33 candidates can be eliminated:
n3r1c2 n9r1c2 n9r1c3 n3r1c5 n3r1c8 n8r2c1 n9r2c1 n2r2c2 n3r2c2 n9r2c2 n3r2c3 n8r2c3 n8r2c4 n3r2c5 n7r3c1 n3r3c2 n7r3c2 n8r3c4 n8r4c5 n7r5c2 n9r5c2 n3r5c3 n8r5c3 n9r5c3 n8r5c4 n3r5c5 n8r5c5 n1r5c7 n8r6c1 n9r6c1 n1r6c2 n6r6c4 n7r6c7
===> Among these, there are 7 candidates with the best score.
===> Eliminating randomly chosen candidate n8r6c1 and applying rules in W1, considered as "zero-step"
z-chain-rc[6]: r4c3{n8 n3} - r1c3{n3 n9} - r2c1{n9 n2} - r2c8{n2 n3} - r3c8{n3 n7} - r3c1{n7 .} ==> r6c1 ≠ 8
hidden-single-in-a-row ==> r6c4 = 8
hidden-single-in-a-block ==> r2c5 = 8
hidden-single-in-a-block ==> r3c1 = 8
hidden-single-in-a-column ==> r6c1 = 7
naked-single ==> r6c7 = 1
naked-single ==> r5c7 = 7
naked-single ==> r6c2 = 9
naked-single ==> r6c6 = 5
naked-single ==> r5c6 = 9
naked-single ==> r6c8 = 6
naked-single ==> r5c8 = 5
naked-single ==> r8c2 = 2
naked-single ==> r8c1 = 9
naked-single ==> r2c1 = 2
naked-single ==> r2c8 = 3
naked-single ==> r2c4 = 5
naked-single ==> r2c2 = 4
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 2
naked-single ==> r3c2 = 5
naked-single ==> r1c5 = 9
naked-single ==> r4c3 = 8
naked-single ==> r4c9 = 2
naked-single ==> r4c5 = 3
naked-single ==> r5c4 = 6
naked-single ==> r5c5 = 2
naked-single ==> r5c9 = 8
naked-single ==> r5c3 = 1
naked-single ==> r5c2 = 3
naked-single ==> r7c3 = 4
naked-single ==> r7c2 = 1
naked-single ==> r3c4 = 3
naked-single ==> r3c8 = 7
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = typed-z-chain[6]
   173496825
   249587631
   856312974
   568731492
   431629758
   792845163
   614273589
   925168347
   387954216

nb-facts = <Fact-77481>
solve-time = 0.3s
nb-facts = <Fact-77481>

   1         7         3         4         9         6         8         2         5
   2         4         9         5         8         7         6         3         1
   8         5         6         3         1         2         9         7         4
   5         6         8         7         3         1         4         9         2
   4         3         1         6         2         9         7         5         8
   7         9         2         8         4         5         1         6         3
   6         1         4         2         7         3         5         8         9
   9         2         5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 52.9s


Total computation time = 24m 13.17s
sequence of 14 eliminations = n6r4c1 n2r7c2 n7r1c9 n8r6c6 n5r6c2 n8r5c6 n2r5c7 n9r2c4 n8r6c8 n8r4c1 n9r8c6 n2r5c8 n2r5c6 n8r6c1








-----------------------------------------------------------------------------------------

2nd try:

(find-sudoku-fewer-steps-wrt-W1 "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")
(find-sudoku-fewer-steps-wrt-W1 "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")
1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.
hidden-single-in-a-row ==> r9c9 = 6
hidden-single-in-a-row ==> r8c7 = 3
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-block ==> r3c9 = 4
hidden-single-in-a-row ==> r1c6 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      135679 13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 56789  15679  2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

173 candidates, 1002 csp-links and 1002 links. Density = 6.73%
Starting non trivial part of solution.
whip[1]: r4n6{c2 .} ==> r6c2 ≠ 6, r5c2 ≠ 6, r6c1 ≠ 6
PUZZLE 0 IS NOT SOLVED. 49 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      13579  13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 5789   1579   2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 170 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 170 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................
erasable candidates computation time = 1m 48.72s
===> 17 candidates can be eliminated:
n7r1c9 n2r2c4 n2r3c4 n6r4c1 n3r4c2 n5r4c2 n7r5c3 n2r5c4 n8r5c4 n7r5c8 n9r6c5 n7r6c8 n2r7c1 n2r7c2 n6r7c2 n2r8c6 n2r8c9
===> Among these, there are 3 candidates with the best score.
===> Eliminating randomly chosen candidate n6r7c2 and applying rules in W1, considered as "zero-step"
biv-chain-rn[2]: r7n1{c2 c3} - r7n4{c3 c2} ==> r7c2 ≠ 6, r7c2 ≠ 2
hidden-single-in-a-block ==> r7c1 = 6
hidden-single-in-a-block ==> r4c2 = 6
whip[1]: b7n2{r8c2 .} ==> r8c6 ≠ 2, r8c9 ≠ 2
whip[1]: b8n2{r9c4 .} ==> r2c4 ≠ 2, r3c4 ≠ 2, r5c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.19s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 51.1s


===> STEP #2
There remains 157 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 157 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................................................
erasable candidates computation time = 1m 41.98s
===> 11 candidates can be eliminated:
n7r1c9 n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n7r5c8 n9r6c5 n8r6c6 n7r6c8
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n7r1c9 and applying rules in W1, considered as "zero-step"
whip-bn[3]: b9n7{r8c9 r9c7} - b9n2{r9c7 r7c8} - b3n2{r1c8 .} ==> r1c9 ≠ 7
whip[1]: b3n7{r3c8 .} ==> r5c8 ≠ 7, r6c8 ≠ 7
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.21s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 43.37s


===> STEP #3
There remains 154 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 154 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................
erasable candidates computation time = 1m 41.85s
===> 8 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n9r6c5 n8r6c6
===> Among these, there are 8 candidates with the best score.
===> Eliminating randomly chosen candidate n9r6c5 and applying rules in W1, considered as "zero-step"
z-chain[3]: c6n9{r5 r8} - c1n9{r8 r2} - b2n9{r2c4 .} ==> r6c5 ≠ 9
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.2s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 42.99s


===> STEP #4
There remains 153 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 153 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.........................................................................................................................................................
erasable candidates computation time = 1m 34.9s
===> 7 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 7 candidates with the best score.
===> Eliminating randomly chosen candidate n8r5c4 and applying rules in W1, considered as "zero-step"
z-chain[4]: c5n8{r4 r2} - c3n8{r2 r4} - c9n8{r4 r8} - b8n8{r8c6 .} ==> r5c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.23s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 35.96s


===> STEP #5
There remains 152 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 152 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................................................................................
erasable candidates computation time = 1m 33.96s
===> 6 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 6 candidates with the best score.
===> Eliminating randomly chosen candidate n8r2c4 and applying rules in W1, considered as "zero-step"
whip[7]: r7n8{c4 c8} - r8n8{c9 c6} - r3n8{c6 c1} - r6n8{c1 c5} - r6n4{c5 c7} - r4c7{n4 n2} - b9n2{r9c7 .} ==> r2c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.32s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 35.04s


===> STEP #6
There remains 151 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 151 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.......................................................................................................................................................
erasable candidates computation time = 1m 33.54s
===> 6 candidates can be eliminated:
n2r3c8 n7r5c3 n9r5c3 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 6 candidates with the best score.
===> Eliminating randomly chosen candidate n9r5c3 and applying rules in W1, considered as "zero-step"
whip[6]: r9c3{n9 n7} - r1c3{n7 n3} - c2n3{r3 r5} - r5n1{c2 c7} - r5n7{c7 c9} - r8n7{c9 .} ==> r5c3 ≠ 9
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.3s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 34.63s


===> STEP #7
There remains 150 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 150 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................
erasable candidates computation time = 1m 37.24s
===> 5 candidates can be eliminated:
n2r3c8 n7r5c3 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 5 candidates with the best score.
===> Eliminating randomly chosen candidate n7r5c3 and applying rules in W1, considered as "zero-step"
biv-chain[2]: r9n7{c3 c7} - c9n7{r8 r5} ==> r5c3 ≠ 7
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     138       3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.23s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     138       3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 38.15s


===> STEP #8
There remains 149 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 149 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.....................................................................................................................................................
erasable candidates computation time = 1m 42.34s
===> 5 candidates can be eliminated:
n2r3c8 n2r4c7 n8r5c6 n2r5c7 n8r6c6
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n2r4c7 and applying rules in W1, considered as "zero-step"
whip-rc[7]: r9c7{n2 n7} - r8c9{n7 n8} - r4c9{n8 n5} - r4c1{n5 n8} - r4c3{n8 n3} - r5c3{n3 n1} - r5c7{n1 .} ==> r4c7 ≠ 2
naked-single ==> r4c7 = 4
hidden-single-in-a-block ==> r6c5 = 4
PUZZLE 0 IS NOT SOLVED. 45 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     138       3569      2389      2589      127       2568      2578
   5789      1579      2         5689      4         589       17        568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.53s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      359       2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     138       3569      2389      2589      127       2568      2578
   5789      1579      2         5689      4         589       17        568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 43.47s


===> STEP #9
There remains 143 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 143 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...............................................................................................................................................
erasable candidates computation time = 1m 40.52s
===> 16 candidates can be eliminated:
n5r2c1 n5r3c1 n2r3c2 n8r3c6 n2r3c8 n8r4c1 n5r4c9 n8r5c6 n2r5c7 n8r5c8 n5r6c1 n5r6c2 n8r6c6 n8r6c8 n8r7c4 n8r8c9
===> Among these, there are 3 candidates with the best score.
===> Eliminating randomly chosen candidate n2r5c7 and applying rules in W1, considered as "zero-step"
whip[7]: r9n2{c7 c4} - r7c4{n2 n8} - r8n8{c6 c9} - r4c9{n8 n5} - r4c1{n5 n8} - r3n8{c1 c6} - c6n2{r3 .} ==> r5c7 ≠ 2
hidden-single-in-a-column ==> r9c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c4 = 2
naked-single ==> r8c9 = 7
naked-single ==> r9c4 = 9
naked-single ==> r8c6 = 8
naked-single ==> r9c3 = 7
whip[1]: b2n9{r2c5 .} ==> r5c5 ≠ 9
whip[1]: c3n9{r2 .} ==> r1c2 ≠ 9, r2c1 ≠ 9, r2c2 ≠ 9
PUZZLE 0 IS NOT SOLVED. 38 VALUES MISSING.
Final resolution state:
   1         2357      39        4         239       6         8         2357      25
   258       2345      3489      35        2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     138       356       238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 1.02s
nb-facts = 0

   1         2357      39        4         239       6         8         2357      25
   258       2345      3489      35        2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     138       356       238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 1m 42.88s


===> STEP #10
There remains 112 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 112 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
................................................................................................................
erasable candidates computation time = 53.8s
===> 37 candidates can be eliminated:
n2r1c2 n3r1c8 n2r1c9 n5r2c1 n8r2c1 n2r2c2 n3r2c2 n5r2c2 n3r2c3 n4r2c3 n2r2c5 n3r2c5 n2r2c8 n5r2c8 n2r3c1 n5r3c1 n2r3c2 n2r3c8 n8r4c1 n5r4c9 n1r5c2 n5r5c2 n7r5c2 n3r5c3 n8r5c3 n5r5c4 n1r5c7 n2r5c8 n5r6c1 n9r6c1 n1r6c2 n5r6c2 n7r6c7 n4r7c2 n1r7c3 n2r8c1 n9r8c2
===> Among these, there are 3 candidates with the best score.
===> Eliminating randomly chosen candidate n1r7c3 and applying rules in W1, considered as "zero-step"
whip[5]: c3n4{r7 r2} - r2n9{c3 c5} - r2n8{c5 c1} - r3n8{c1 c4} - r6n8{c4 .} ==> r7c3 ≠ 1
naked-single ==> r7c3 = 4
naked-single ==> r7c2 = 1
hidden-single-in-a-block ==> r5c3 = 1
naked-single ==> r5c7 = 7
naked-single ==> r6c7 = 1
hidden-single-in-a-block ==> r2c2 = 4
PUZZLE 0 IS NOT SOLVED. 32 VALUES MISSING.
Final resolution state:
   1         2357      39        4         239       6         8         2357      25
   258       4         389       35        2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         359       1         356       238       259       7         256       258
   5789      579       2         568       4         59        1         56        3
   6         1         4         2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.19s
nb-facts = 0

   1         2357      39        4         239       6         8         2357      25
   258       4         389       35        2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         359       1         356       238       259       7         256       258
   5789      579       2         568       4         59        1         56        3
   6         1         4         2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 56.11s


===> STEP #11
There remains 93 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 93 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................
erasable candidates computation time = 1m 4.23s
===> 35 candidates can be eliminated:
n2r1c2 n3r1c2 n2r1c5 n3r1c5 n3r1c8 n5r1c8 n2r1c9 n5r2c1 n8r2c1 n3r2c3 n2r2c5 n3r2c5 n2r2c8 n5r2c8 n2r3c1 n5r3c1 n2r3c2 n7r3c2 n5r3c4 n5r3c6 n2r3c8 n8r4c1 n5r4c9 n5r5c2 n5r5c4 n3r5c5 n2r5c6 n2r5c8 n5r5c9 n5r6c1 n9r6c1 n5r6c2 n5r6c4 n2r8c1 n9r8c2
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n2r1c9 and applying rules in W1, considered as "zero-step"
whip[7]: r4n2{c9 c5} - r5n2{c6 c8} - r5n6{c8 c4} - b5n3{r5c4 r5c5} - r4n3{c5 c3} - r1c3{n3 n9} - r1c5{n9 .} ==> r1c9 ≠ 2
naked-single ==> r1c9 = 5
hidden-single-in-a-row ==> r4c1 = 5
hidden-single-in-a-block ==> r3c2 = 5
naked-single ==> r3c6 = 2
hidden-single-in-a-block ==> r2c4 = 5
whip[1]: c9n2{r5 .} ==> r5c8 ≠ 2
PUZZLE 0 IS NOT SOLVED. 27 VALUES MISSING.
Final resolution state:
   1         237       39        4         39        6         8         237       5
   28        4         389       5         389       7         6         23        1
   78        5         6         38        1         2         9         37        4
   5         6         38        7         238       1         4         9         28
   4         39        1         36        238       59        7         56        28
   789       79        2         68        4         59        1         56        3
   6         1         4         2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 10.44s
nb-facts = 0

   1         237       39        4         39        6         8         237       5
   28        4         389       5         389       7         6         23        1
   78        5         6         38        1         2         9         37        4
   5         6         38        7         238       1         4         9         28
   4         39        1         36        238       59        7         56        28
   789       79        2         68        4         59        1         56        3
   6         1         4         2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 1m 16.1s


===> STEP #12
There remains 61 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 61 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................
erasable candidates computation time = 10m 13.8s
===> 34 candidates can be eliminated:
n2r1c2 n3r1c2 n9r1c3 n3r1c5 n3r1c8 n7r1c8 n8r2c1 n3r2c3 n8r2c3 n3r2c5 n9r2c5 n2r2c8 n7r3c1 n8r3c4 n3r3c8 n3r4c3 n2r4c5 n8r4c5 n8r4c9 n9r5c2 n3r5c4 n3r5c5 n8r5c5 n5r5c6 n6r5c8 n2r5c9 n8r6c1 n9r6c1 n7r6c2 n6r6c4 n9r6c6 n5r6c8 n2r8c1 n9r8c2
===> Among these, there are 26 candidates with the best score.
===> Eliminating randomly chosen candidate n7r1c8 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r3c8{n7 n3} - c4n3{r3 r5} - c2n3{r5 r1} - r1n2{c2 c8} ==> r1c8 ≠ 7
hidden-single-in-a-block ==> r3c8 = 7
naked-single ==> r3c1 = 8
naked-single ==> r2c1 = 2
naked-single ==> r2c8 = 3
naked-single ==> r1c8 = 2
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 7
naked-single ==> r6c2 = 9
naked-single ==> r5c2 = 3
naked-single ==> r5c4 = 6
naked-single ==> r5c8 = 5
naked-single ==> r5c6 = 9
naked-single ==> r6c8 = 6
naked-single ==> r6c4 = 8
naked-single ==> r5c5 = 2
naked-single ==> r4c5 = 3
naked-single ==> r5c9 = 8
naked-single ==> r4c9 = 2
naked-single ==> r6c1 = 7
naked-single ==> r6c6 = 5
naked-single ==> r8c2 = 2
naked-single ==> r1c5 = 9
naked-single ==> r4c3 = 8
naked-single ==> r2c5 = 8
naked-single ==> r8c1 = 9
naked-single ==> r3c4 = 3
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = BC[4]
   173496825
   249587631
   856312974
   568731492
   431629758
   792845163
   614273589
   925168347
   387954216

nb-facts = <Fact-27459>
solve-time = 0.18s
nb-facts = <Fact-27459>

   1         7         3         4         9         6         8         2         5
   2         4         9         5         8         7         6         3         1
   8         5         6         3         1         2         9         7         4
   5         6         8         7         3         1         4         9         2
   4         3         1         6         2         9         7         5         8
   7         9         2         8         4         5         1         6         3
   6         1         4         2         7         3         5         8         9
   9         2         5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 10m 14.35s


Total computation time = 27m 34.51s
sequence of 12 eliminations = n6r7c2 n7r1c9 n9r6c5 n8r5c4 n8r2c4 n9r5c3 n7r5c3 n2r4c7 n2r5c7 n1r7c3 n2r1c9 n7r1c8







-----------------------------------------------------------------------------------------

3rd try:

(find-sudoku-fewer-steps-wrt-W1 "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")

1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.
hidden-single-in-a-row ==> r9c9 = 6
hidden-single-in-a-row ==> r8c7 = 3
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-block ==> r3c9 = 4
hidden-single-in-a-row ==> r1c6 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      135679 13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 56789  15679  2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

173 candidates, 1002 csp-links and 1002 links. Density = 6.73%
Starting non trivial part of solution.
whip[1]: r4n6{c2 .} ==> r6c2 ≠ 6, r5c2 ≠ 6, r6c1 ≠ 6
PUZZLE 0 IS NOT SOLVED. 49 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      13579  13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 5789   1579   2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 170 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 170 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................
erasable candidates computation time = 1m 56.19s
===> 17 candidates can be eliminated:
n7r1c9 n2r2c4 n2r3c4 n6r4c1 n3r4c2 n5r4c2 n7r5c3 n2r5c4 n8r5c4 n7r5c8 n9r6c5 n7r6c8 n2r7c1 n2r7c2 n6r7c2 n2r8c6 n2r8c9
===> Among these, there are 3 candidates with the best score.
===> Eliminating randomly chosen candidate n2r7c1 and applying rules in W1, considered as "zero-step"
biv-chain-rc[2]: r7c4{n2 n8} - r7c8{n8 n2} ==> r7c1 ≠ 2, r7c2 ≠ 2
naked-single ==> r7c1 = 6
hidden-single-in-a-block ==> r4c2 = 6
whip[1]: b7n2{r8c2 .} ==> r8c6 ≠ 2, r8c9 ≠ 2
whip[1]: b8n2{r9c4 .} ==> r2c4 ≠ 2, r3c4 ≠ 2, r5c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.2s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 58.75s


===> STEP #2
There remains 157 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 157 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................................................
erasable candidates computation time = 1m 52.37s
===> 11 candidates can be eliminated:
n7r1c9 n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n7r5c8 n9r6c5 n8r6c6 n7r6c8
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n7r1c9 and applying rules in W1, considered as "zero-step"
whip-bn[3]: b9n7{r8c9 r9c7} - b9n2{r9c7 r7c8} - b3n2{r1c8 .} ==> r1c9 ≠ 7
whip[1]: b3n7{r3c8 .} ==> r5c8 ≠ 7, r6c8 ≠ 7
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.21s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      489       589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 54.06s


===> STEP #3
There remains 154 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 154 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................
erasable candidates computation time = 1m 59.44s
===> 8 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n9r6c5 n8r6c6
===> Among these, there are 8 candidates with the best score.
===> Eliminating randomly chosen candidate n9r6c5 and applying rules in W1, considered as "zero-step"
z-chain[3]: c6n9{r5 r8} - c1n9{r8 r2} - b2n9{r2c4 .} ==> r6c5 ≠ 9
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.21s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 0.71s


===> STEP #4
There remains 153 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 153 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.........................................................................................................................................................
erasable candidates computation time = 1m 45.06s
===> 7 candidates can be eliminated:
n8r2c4 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 7 candidates with the best score.
===> Eliminating randomly chosen candidate n9r5c3 and applying rules in W1, considered as "zero-step"
whip[6]: r9c3{n9 n7} - r1c3{n7 n3} - c2n3{r3 r5} - r5n1{c2 c7} - r5n7{c7 c9} - r8n7{c9 .} ==> r5c3 ≠ 9
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      35689     2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.3s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      35689     2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 46.32s


===> STEP #5
There remains 152 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 152 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................................................................................
erasable candidates computation time = 1m 42.78s
===> 6 candidates can be eliminated:
n8r2c4 n7r5c3 n8r5c4 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 6 candidates with the best score.
===> Eliminating randomly chosen candidate n8r5c4 and applying rules in W1, considered as "zero-step"
z-chain[4]: c5n8{r4 r2} - c3n8{r2 r4} - c9n8{r4 r8} - b8n8{r8c6 .} ==> r5c4 ≠ 8
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.22s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      3569      2389      2589      127       2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 43.85s


===> STEP #6
There remains 151 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 151 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.......................................................................................................................................................
erasable candidates computation time = 1m 37.8s
===> 5 candidates can be eliminated:
n8r2c4 n7r5c3 n8r5c6 n2r5c7 n8r6c6
===> Among these, there are 5 candidates with the best score.
===> Eliminating randomly chosen candidate n2r5c7 and applying rules in W1, considered as "zero-step"
whip[7]: r9n2{c7 c4} - r7c4{n2 n8} - r8n8{c6 c9} - r4c9{n8 n5} - r4c1{n5 n8} - r3n8{c1 c6} - c6n2{r3 .} ==> r5c7 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      3569      2389      2589      17        2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 1.11s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      25
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     1378      3569      2389      2589      17        2568      2578
   5789      1579      2         5689      48        589       147       568       3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 1m 39.66s


===> STEP #7
There remains 150 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 150 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................
erasable candidates computation time = 2m 49.23s
===> 14 candidates can be eliminated:
n9r1c2 n9r2c2 n8r2c4 n9r2c4 n7r5c3 n9r5c4 n9r5c5 n8r5c6 n8r5c8 n7r5c9 n8r6c6 n8r6c8 n7r8c1 n8r8c9
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n7r5c9 and applying rules in W1, considered as "zero-step"
whip[7]: r5c7{n7 n1} - r6c7{n1 n4} - r4n4{c7 c5} - r4n3{c5 c3} - r5c3{n3 n8} - r4n8{c3 c9} - r8c9{n8 .} ==> r5c9 ≠ 7
hidden-single-in-a-column ==> r8c9 = 7
naked-single ==> r9c7 = 2
naked-single ==> r4c7 = 4
naked-single ==> r7c8 = 8
naked-single ==> r7c4 = 2
naked-single ==> r9c4 = 9
naked-single ==> r8c6 = 8
naked-single ==> r9c3 = 7
hidden-single-in-a-block ==> r6c5 = 4
whip[1]: b2n9{r2c5 .} ==> r5c5 ≠ 9
whip[1]: c3n9{r2 .} ==> r1c2 ≠ 9, r2c1 ≠ 9, r2c2 ≠ 9
PUZZLE 0 IS NOT SOLVED. 38 VALUES MISSING.
Final resolution state:
   1         2357      39        4         239       6         8         2357      25
   258       2345      3489      358       2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     138       356       238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 1.19s
nb-facts = 0

   1         2357      39        4         239       6         8         2357      25
   258       2345      3489      358       2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     138       356       238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 2m 51.85s


===> STEP #8
There remains 113 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 113 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................
erasable candidates computation time = 40.44s
===> 30 candidates can be eliminated:
n2r1c2 n3r1c8 n2r1c9 n5r2c1 n8r2c1 n2r2c2 n3r2c3 n8r2c4 n2r2c5 n3r2c5 n2r2c8 n2r3c1 n5r3c1 n2r3c2 n8r4c1 n5r4c9 n5r5c2 n7r5c2 n3r5c3 n8r5c3 n5r5c4 n1r5c7 n2r5c8 n5r6c1 n9r6c1 n1r6c2 n5r6c2 n7r6c7 n2r8c1 n9r8c2
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n2r1c9 and applying rules in W1, considered as "zero-step"
whip[7]: r4n2{c9 c5} - r5n2{c6 c8} - r5n6{c8 c4} - b5n3{r5c4 r5c5} - r4n3{c5 c3} - r1c3{n3 n9} - r1c5{n9 .} ==> r1c9 ≠ 2
naked-single ==> r1c9 = 5
hidden-single-in-a-row ==> r4c1 = 5
whip[1]: c9n2{r5 .} ==> r5c8 ≠ 2
PUZZLE 0 IS NOT SOLVED. 36 VALUES MISSING.
Final resolution state:
   1         237       39        4         239       6         8         237       5
   28        2345      3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      138       356       238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.22s
nb-facts = 0

   1         237       39        4         239       6         8         237       5
   28        2345      3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      138       356       238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 42.36s


===> STEP #9
There remains 97 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 97 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................
erasable candidates computation time = 44.66s
===> 37 candidates can be eliminated:
n2r1c2 n3r1c5 n3r1c8 n8r2c1 n2r2c2 n3r2c2 n3r2c3 n8r2c3 n3r2c4 n8r2c4 n2r2c5 n3r2c5 n2r2c8 n2r3c1 n7r3c1 n2r3c2 n7r3c2 n5r3c4 n8r3c4 n5r3c6 n3r3c8 n7r5c2 n3r5c3 n8r5c3 n3r5c4 n5r5c4 n8r5c5 n2r5c6 n1r5c7 n8r6c1 n9r6c1 n1r6c2 n7r6c2 n5r6c4 n7r6c7 n2r8c1 n9r8c2
===> Among these, there are 4 candidates with the best score.
===> Eliminating randomly chosen candidate n8r6c1 and applying rules in W1, considered as "zero-step"
whip-rc[7]: r2c1{n8 n2} - r3c1{n2 n7} - r1c2{n7 n3} - r3c2{n3 n5} - r3c6{n5 n2} - r1c5{n2 n9} - r1c3{n9 .} ==> r6c1 ≠ 8
hidden-single-in-a-row ==> r6c4 = 8
hidden-single-in-a-block ==> r2c5 = 8
naked-single ==> r2c1 = 2
naked-single ==> r2c8 = 3
naked-single ==> r2c4 = 5
naked-single ==> r2c2 = 4
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 2
naked-single ==> r1c5 = 9
naked-single ==> r3c8 = 7
naked-single ==> r3c1 = 8
naked-single ==> r3c2 = 5
naked-single ==> r4c3 = 8
naked-single ==> r4c9 = 2
naked-single ==> r4c5 = 3
naked-single ==> r5c4 = 6
naked-single ==> r5c8 = 5
naked-single ==> r6c8 = 6
naked-single ==> r5c5 = 2
naked-single ==> r5c6 = 9
naked-single ==> r6c6 = 5
naked-single ==> r5c9 = 8
naked-single ==> r5c3 = 1
naked-single ==> r5c2 = 3
naked-single ==> r5c7 = 7
naked-single ==> r6c7 = 1
naked-single ==> r6c2 = 9
naked-single ==> r6c1 = 7
naked-single ==> r8c2 = 2
naked-single ==> r7c3 = 4
naked-single ==> r7c2 = 1
naked-single ==> r3c4 = 3
naked-single ==> r3c6 = 2
naked-single ==> r8c1 = 9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[7]
   173496825
   249587631
   856312974
   568731492
   431629758
   792845163
   614273589
   925168347
   387954216

nb-facts = <Fact-91608>
solve-time = 0.35s
nb-facts = <Fact-91608>

   1         7         3         4         9         6         8         2         5
   2         4         9         5         8         7         6         3         1
   8         5         6         3         1         2         9         7         4
   5         6         8         7         3         1         4         9         2
   4         3         1         6         2         9         7         5         8
   7         9         2         8         4         5         1         6         3
   6         1         4         2         7         3         5         8         9
   9         2         5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 46.27s


Total computation time = 15m 24.22s
sequence of 9 eliminations = n2r7c1 n7r1c9 n9r6c5 n9r5c3 n8r5c4 n2r5c7 n7r5c9 n2r1c9 n8r6c1







-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------
fewer step solutions in W8

1st try:

(find-sudoku-fewer-steps-wrt-W1 "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")
1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.
hidden-single-in-a-row ==> r9c9 = 6
hidden-single-in-a-row ==> r8c7 = 3
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-block ==> r3c9 = 4
hidden-single-in-a-row ==> r1c6 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      135679 13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 56789  15679  2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

173 candidates, 1002 csp-links and 1002 links. Density = 6.73%
Starting non trivial part of solution.
whip[1]: r4n6{c2 .} ==> r6c2 ≠ 6, r5c2 ≠ 6, r6c1 ≠ 6
PUZZLE 0 IS NOT SOLVED. 49 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      13579  13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 5789   1579   2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 170 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 170 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................
erasable candidates computation time = 2m 4.32s
===> 19 candidates can be eliminated:
n7r1c9 n2r2c4 n8r2c4 n2r3c4 n6r4c1 n3r4c2 n5r4c2 n7r5c3 n2r5c4 n8r5c4 n8r5c6 n7r5c8 n9r6c5 n7r6c8 n2r7c1 n2r7c2 n6r7c2 n2r8c6 n2r8c9
===> Among these, there are 3 candidates with the best score.
===> Eliminating randomly chosen candidate n6r7c2 and applying rules in W1, considered as "zero-step"
biv-chain-rn[2]: r7n1{c2 c3} - r7n4{c3 c2} ==> r7c2 ≠ 6, r7c2 ≠ 2
hidden-single-in-a-block ==> r7c1 = 6
hidden-single-in-a-block ==> r4c2 = 6
whip[1]: b7n2{r8c2 .} ==> r8c6 ≠ 2, r8c9 ≠ 2
whip[1]: b8n2{r9c4 .} ==> r2c4 ≠ 2, r3c4 ≠ 2, r5c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.22s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 7.34s


===> STEP #2
There remains 157 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 157 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................................................
erasable candidates computation time = 2m 3.1s
===> 12 candidates can be eliminated:
n7r1c9 n8r2c4 n2r4c7 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n7r5c8 n9r6c5 n8r6c6 n7r6c8
===> Among these, there is only one candidate with the best score.
===> Eliminating candidate n2r4c7 and applying rules in W1, considered as "zero-step"
whip[8]: r9c7{n2 n7} - r8c9{n7 n8} - r4c9{n8 n5} - r4c1{n5 n8} - c3n8{r5 r2} - c3n4{r2 r7} - c3n1{r7 r5} - r5c7{n1 .} ==> r4c7 ≠ 2
naked-single ==> r4c7 = 4
hidden-single-in-a-block ==> r6c5 = 4
PUZZLE 0 IS NOT SOLVED. 45 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      4         589       17        5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.99s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      4         589       17        5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 5.42s


===> STEP #3
There remains 150 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 150 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................
erasable candidates computation time = 2m 17.71s
===> 31 candidates can be eliminated:
n7r1c9 n5r2c1 n8r2c4 n2r3c1 n5r3c1 n8r3c6 n8r4c1 n5r4c9 n5r5c2 n7r5c3 n9r5c3 n8r5c4 n9r5c5 n8r5c6 n2r5c7 n7r5c8 n8r5c8 n7r5c9 n5r6c1 n5r6c2 n8r6c6 n7r6c8 n8r6c8 n8r7c4 n2r7c8 n7r8c1 n7r8c2 n9r8c6 n8r8c9 n2r9c4 n7r9c7
===> Among these, there are 7 candidates with the best score.
===> Eliminating randomly chosen candidate n8r8c9 and applying rules in W1, considered as "zero-step"
whip[7]: b8n8{r8c6 r7c4} - r7c8{n8 n2} - c7n2{r9 r5} - r4c9{n2 n5} - r4c1{n5 n8} - r3n8{c1 c6} - c6n2{r3 .} ==> r8c9 ≠ 8
naked-single ==> r8c9 = 7
naked-single ==> r9c7 = 2
naked-single ==> r7c8 = 8
naked-single ==> r7c4 = 2
naked-single ==> r9c4 = 9
naked-single ==> r8c6 = 8
naked-single ==> r9c3 = 7
whip[1]: b2n9{r2c5 .} ==> r5c5 ≠ 9
whip[1]: b3n7{r3c8 .} ==> r5c8 ≠ 7, r6c8 ≠ 7
PUZZLE 0 IS NOT SOLVED. 38 VALUES MISSING.
Final resolution state:
   1         23579     39        4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     1389      3568      238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.82s
nb-facts = 0

   1         23579     39        4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     1389      3568      238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 2m 21.52s


===> STEP #4
There remains 118 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 118 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................
erasable candidates computation time = 42.42s
===> 35 candidates can be eliminated:
n5r1c2 n9r1c2 n3r1c8 n5r1c8 n2r1c9 n5r2c1 n8r2c1 n9r2c1 n9r2c2 n3r2c3 n8r2c4 n2r2c5 n3r2c5 n5r2c8 n2r3c1 n5r3c1 n2r3c2 n5r3c8 n8r4c1 n5r4c9 n5r5c2 n7r5c2 n3r5c3 n8r5c3 n9r5c3 n5r5c4 n8r5c4 n1r5c7 n2r5c8 n5r5c9 n5r6c1 n9r6c1 n1r6c2 n5r6c2 n7r6c7
===> Among these, there are 2 candidates with the best score.
===> Eliminating randomly chosen candidate n2r1c9 and applying rules in W1, considered as "zero-step"
whip[7]: r4n2{c9 c5} - r5n2{c6 c8} - r5n6{c8 c4} - b5n3{r5c4 r5c5} - r4n3{c5 c3} - r1c3{n3 n9} - r1c5{n9 .} ==> r1c9 ≠ 2
naked-single ==> r1c9 = 5
hidden-single-in-a-row ==> r4c1 = 5
whip[1]: c9n2{r5 .} ==> r5c8 ≠ 2
PUZZLE 0 IS NOT SOLVED. 36 VALUES MISSING.
Final resolution state:
   1         2379      39        4         239       6         8         237       5
   289       23459     3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.12s
nb-facts = 0

   1         2379      39        4         239       6         8         237       5
   289       23459     3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 44.49s


===> STEP #5
There remains 102 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 102 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................
erasable candidates computation time = 31.72s
===> 34 candidates can be eliminated:
n9r1c2 n2r1c5 n3r1c5 n3r1c8 n8r2c1 n9r2c1 n2r2c2 n9r2c2 n3r2c3 n8r2c3 n8r2c4 n2r2c5 n3r2c5 n2r3c1 n7r3c1 n2r3c2 n8r3c4 n5r3c6 n2r3c8 n2r4c5 n7r5c2 n3r5c3 n8r5c3 n9r5c3 n5r5c4 n8r5c4 n8r5c5 n2r5c6 n1r5c7 n8r6c1 n9r6c1 n1r6c2 n5r6c4 n7r6c7
===> Among these, there are 4 candidates with the best score.
===> Eliminating randomly chosen candidate n7r3c1 and applying rules in W1, considered as "zero-step"
whip[8]: r3n8{c1 c4} - r6n8{c4 c1} - r4c3{n8 n3} - r1c3{n3 n9} - r2c1{n9 n2} - r1c2{n2 n3} - r3n3{c2 c8} - r2c8{n3 .} ==> r3c1 ≠ 7
hidden-single-in-a-column ==> r6c1 = 7
naked-single ==> r6c7 = 1
naked-single ==> r5c7 = 7
naked-single ==> r6c2 = 9
naked-single ==> r6c6 = 5
naked-single ==> r3c6 = 2
naked-single ==> r3c1 = 8
naked-single ==> r5c6 = 9
naked-single ==> r6c8 = 6
naked-single ==> r5c8 = 5
naked-single ==> r6c4 = 8
naked-single ==> r8c2 = 2
naked-single ==> r8c1 = 9
naked-single ==> r2c1 = 2
naked-single ==> r2c8 = 3
naked-single ==> r2c4 = 5
naked-single ==> r2c2 = 4
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 2
naked-single ==> r3c2 = 5
naked-single ==> r1c5 = 9
naked-single ==> r4c3 = 8
naked-single ==> r4c9 = 2
naked-single ==> r4c5 = 3
naked-single ==> r5c4 = 6
naked-single ==> r5c5 = 2
naked-single ==> r5c9 = 8
naked-single ==> r5c3 = 1
naked-single ==> r5c2 = 3
naked-single ==> r7c3 = 4
naked-single ==> r2c5 = 8
naked-single ==> r7c2 = 1
naked-single ==> r3c4 = 3
naked-single ==> r3c8 = 7
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[8]
   173496825
   249587631
   856312974
   568731492
   431629758
   792845163
   614273589
   925168347
   387954216

nb-facts = <Fact-89988>
solve-time = 0.14s
nb-facts = <Fact-89988>

   1         7         3         4         9         6         8         2         5
   2         4         9         5         8         7         6         3         1
   8         5         6         3         1         2         9         7         4
   5         6         8         7         3         1         4         9         2
   4         3         1         6         2         9         7         5         8
   7         9         2         8         4         5         1         6         3
   6         1         4         2         7         3         5         8         9
   9         2         5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 33.1s


Total computation time = 7m 52.25s
sequence of 5 eliminations = n6r7c2 n2r4c7 n8r8c9 n2r1c9 n7r3c1


-----------------------------------------------------------------------------------------

2nd try:

Total computation time = 9m 27.05s
sequence of 6 eliminations = n6r4c1 n2r7c2 n2r4c7 n2r7c8 n2r5c8 n8r6c1


-----------------------------------------------------------------------------------------

3rd try:

(find-sudoku-fewer-steps-wrt-W1 "1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.")
1..4..8.......76....6.1.......7.1.9.4..........2.....3.....35.9..516..4.38..5..1.
hidden-single-in-a-row ==> r9c9 = 6
hidden-single-in-a-row ==> r8c7 = 3
hidden-single-in-a-column ==> r7c5 = 7
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-row ==> r2c9 = 1
hidden-single-in-a-block ==> r3c9 = 4
hidden-single-in-a-row ==> r1c6 = 6
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      135679 13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 56789  15679  2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

173 candidates, 1002 csp-links and 1002 links. Density = 6.73%
Starting non trivial part of solution.
whip[1]: r4n6{c2 .} ==> r6c2 ≠ 6, r5c2 ≠ 6, r6c1 ≠ 6
PUZZLE 0 IS NOT SOLVED. 49 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      23579  379    ! 4      239    6      ! 8      2357   257    !
   ! 2589   23459  3489   ! 23589  2389   7      ! 6      235    1      !
   ! 2578   2357   6      ! 2358   1      258    ! 9      2357   4      !
   +----------------------+----------------------+----------------------+
   ! 568    356    38     ! 7      2348   1      ! 24     9      258    !
   ! 4      13579  13789  ! 235689 2389   2589   ! 127    25678  2578   !
   ! 5789   1579   2      ! 5689   489    589    ! 147    5678   3      !
   +----------------------+----------------------+----------------------+
   ! 26     1246   14     ! 28     7      3      ! 5      28     9      !
   ! 279    279    5      ! 1      6      289    ! 3      4      278    !
   ! 3      8      79     ! 29     5      4      ! 27     1      6      !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 170 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 170 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................................................................
erasable candidates computation time = 1m 58.15s
===> 19 candidates can be eliminated:
n7r1c9 n2r2c4 n8r2c4 n2r3c4 n6r4c1 n3r4c2 n5r4c2 n7r5c3 n2r5c4 n8r5c4 n8r5c6 n7r5c8 n9r6c5 n7r6c8 n2r7c1 n2r7c2 n6r7c2 n2r8c6 n2r8c9
===> Among these, there are 3 candidates with the best score (7).
===> Eliminating randomly chosen candidate n2r7c1 and applying rules in W1, considered as "zero-step"
biv-chain-rc[2]: r7c4{n2 n8} - r7c8{n8 n2} ==> r7c1 ≠ 2, r7c2 ≠ 2
naked-single ==> r7c1 = 6
hidden-single-in-a-block ==> r4c2 = 6
whip[1]: b7n2{r8c2 .} ==> r8c6 ≠ 2, r8c9 ≠ 2
whip[1]: b8n2{r9c4 .} ==> r2c4 ≠ 2, r3c4 ≠ 2, r5c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 47 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 0.22s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         2348      1         24        9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      489       589       147       5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 0.86s


===> STEP #2
There remains 157 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 157 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................................................
erasable candidates computation time = 2m 11.56s
===> 12 candidates can be eliminated:
n7r1c9 n8r2c4 n2r4c7 n7r5c3 n9r5c3 n8r5c4 n8r5c6 n2r5c7 n7r5c8 n9r6c5 n8r6c6 n7r6c8
===> Among these, there is only one candidate with the best score (7).
===> Eliminating candidate n2r4c7 and applying rules in W1, considered as "zero-step"
whip[8]: r9c7{n2 n7} - r8c9{n7 n8} - r4c9{n8 n5} - r4c1{n5 n8} - c3n8{r5 r2} - c3n4{r2 r7} - c3n1{r7 r5} - r5c7{n1 .} ==> r4c7 ≠ 2
naked-single ==> r4c7 = 4
hidden-single-in-a-block ==> r6c5 = 4
PUZZLE 0 IS NOT SOLVED. 45 VALUES MISSING.
Final resolution state:
   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      4         589       17        5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

solve-time = 1.18s
nb-facts = 0

   1         23579     379       4         239       6         8         2357      257
   2589      23459     3489      3589      2389      7         6         235       1
   2578      2357      6         358       1         258       9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     13789     35689     2389      2589      127       25678     2578
   5789      1579      2         5689      4         589       17        5678      3
   6         14        14        28        7         3         5         28        9
   279       279       5         1         6         89        3         4         78
   3         8         79        29        5         4         27        1         6

best-step-computation-time = 2m 14.25s


===> STEP #3
There remains 150 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 150 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................................................
erasable candidates computation time = 1m 58.5s
===> 31 candidates can be eliminated:
n7r1c9 n5r2c1 n8r2c4 n2r3c1 n5r3c1 n8r3c6 n8r4c1 n5r4c9 n5r5c2 n7r5c3 n9r5c3 n8r5c4 n9r5c5 n8r5c6 n2r5c7 n7r5c8 n8r5c8 n7r5c9 n5r6c1 n5r6c2 n8r6c6 n7r6c8 n8r6c8 n8r7c4 n2r7c8 n7r8c1 n7r8c2 n9r8c6 n8r8c9 n2r9c4 n7r9c7
===> Among these, there are 7 candidates with the best score (32).
===> Eliminating randomly chosen candidate n2r7c8 and applying rules in W1, considered as "zero-step"
whip[8]: r7n8{c8 c4} - r8n8{c6 c9} - b9n7{r8c9 r9c7} - c7n2{r9 r5} - r4c9{n2 n5} - r4c1{n5 n8} - r3n8{c1 c6} - c6n2{r3 .} ==> r7c8 ≠ 2
naked-single ==> r7c8 = 8
naked-single ==> r7c4 = 2
naked-single ==> r9c4 = 9
naked-single ==> r8c6 = 8
naked-single ==> r9c3 = 7
naked-single ==> r9c7 = 2
naked-single ==> r8c9 = 7
whip[1]: b3n7{r3c8 .} ==> r5c8 ≠ 7, r6c8 ≠ 7
whip[1]: b2n9{r2c5 .} ==> r5c5 ≠ 9
PUZZLE 0 IS NOT SOLVED. 38 VALUES MISSING.
Final resolution state:
   1         23579     39        4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     1389      3568      238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.79s
nb-facts = 0

   1         23579     39        4         239       6         8         2357      25
   2589      23459     3489      358       2389      7         6         235       1
   2578      2357      6         358       1         25        9         2357      4
   58        6         38        7         238       1         4         9         258
   4         13579     1389      3568      238       259       17        256       258
   5789      1579      2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 2m 1.63s


===> STEP #4
There remains 118 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 118 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................
erasable candidates computation time = 35.12s
===> 35 candidates can be eliminated:
n5r1c2 n9r1c2 n3r1c8 n5r1c8 n2r1c9 n5r2c1 n8r2c1 n9r2c1 n9r2c2 n3r2c3 n8r2c4 n2r2c5 n3r2c5 n5r2c8 n2r3c1 n5r3c1 n2r3c2 n5r3c8 n8r4c1 n5r4c9 n5r5c2 n7r5c2 n3r5c3 n8r5c3 n9r5c3 n5r5c4 n8r5c4 n1r5c7 n2r5c8 n5r5c9 n5r6c1 n9r6c1 n1r6c2 n5r6c2 n7r6c7
===> Among these, there are 2 candidates with the best score (16).
===> Eliminating randomly chosen candidate n2r5c8 and applying rules in W1, considered as "zero-step"
whip[6]: b5n2{r5c5 r4c5} - r4n3{c5 c3} - r1c3{n3 n9} - r1c5{n9 n3} - c4n3{r3 r5} - r5n6{c4 .} ==> r5c8 ≠ 2
whip[1]: b6n2{r5c9 .} ==> r1c9 ≠ 2
naked-single ==> r1c9 = 5
hidden-single-in-a-row ==> r4c1 = 5
PUZZLE 0 IS NOT SOLVED. 36 VALUES MISSING.
Final resolution state:
   1         2379      39        4         239       6         8         237       5
   289       23459     3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

solve-time = 0.1s
nb-facts = 0

   1         2379      39        4         239       6         8         237       5
   289       23459     3489      358       2389      7         6         23        1
   278       2357      6         358       1         25        9         237       4
   5         6         38        7         238       1         4         9         28
   4         1379      1389      3568      238       259       17        56        28
   789       179       2         568       4         59        17        56        3
   6         14        14        2         7         3         5         8         9
   29        29        5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 37.06s


===> STEP #5
There remains 102 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 102 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................
erasable candidates computation time = 27.75s
===> 34 candidates can be eliminated:
n9r1c2 n2r1c5 n3r1c5 n3r1c8 n8r2c1 n9r2c1 n2r2c2 n9r2c2 n3r2c3 n8r2c3 n8r2c4 n2r2c5 n3r2c5 n2r3c1 n7r3c1 n2r3c2 n8r3c4 n5r3c6 n2r3c8 n2r4c5 n7r5c2 n3r5c3 n8r5c3 n9r5c3 n5r5c4 n8r5c4 n8r5c5 n2r5c6 n1r5c7 n8r6c1 n9r6c1 n1r6c2 n5r6c4 n7r6c7
===> Among these, there are 4 candidates with the best score (102).
===> Eliminating randomly chosen candidate n8r6c1 and applying rules in W1, considered as "zero-step"
whip-rc[8]: r4c3{n8 n3} - r1c3{n3 n9} - r2c1{n9 n2} - r3c1{n2 n7} - r1c2{n7 n3} - r3c2{n3 n5} - r3c6{n5 n2} - r1c5{n2 .} ==> r6c1 ≠ 8
hidden-single-in-a-row ==> r6c4 = 8
hidden-single-in-a-block ==> r2c5 = 8
hidden-single-in-a-block ==> r3c1 = 8
hidden-single-in-a-column ==> r6c1 = 7
naked-single ==> r6c7 = 1
naked-single ==> r5c7 = 7
naked-single ==> r6c2 = 9
naked-single ==> r6c6 = 5
naked-single ==> r3c6 = 2
naked-single ==> r5c6 = 9
naked-single ==> r6c8 = 6
naked-single ==> r5c8 = 5
naked-single ==> r8c2 = 2
naked-single ==> r8c1 = 9
naked-single ==> r2c1 = 2
naked-single ==> r2c8 = 3
naked-single ==> r2c4 = 5
naked-single ==> r2c2 = 4
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 2
naked-single ==> r3c2 = 5
naked-single ==> r1c5 = 9
naked-single ==> r4c3 = 8
naked-single ==> r4c9 = 2
naked-single ==> r4c5 = 3
naked-single ==> r5c4 = 6
naked-single ==> r5c5 = 2
naked-single ==> r5c9 = 8
naked-single ==> r5c3 = 1
naked-single ==> r5c2 = 3
naked-single ==> r7c3 = 4
naked-single ==> r7c2 = 1
naked-single ==> r3c4 = 3
naked-single ==> r3c8 = 7
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[8]
   173496825
   249587631
   856312974
   568731492
   431629758
   792845163
   614273589
   925168347
   387954216

nb-facts = <Fact-90788>
solve-time = 0.28s
nb-facts = <Fact-90788>

   1         7         3         4         9         6         8         2         5
   2         4         9         5         8         7         6         3         1
   8         5         6         3         1         2         9         7         4
   5         6         8         7         3         1         4         9         2
   4         3         1         6         2         9         7         5         8
   7         9         2         8         4         5         1         6         3
   6         1         4         2         7         3         5         8         9
   9         2         5         1         6         8         3         4         7
   3         8         7         9         5         4         2         1         6

best-step-computation-time = 29.2s


Total computation time = 7m 23.38s
sequence of 5 eliminations = n2r7c1 n2r4c7 n2r7c8 n2r5c8 n8r6c1

