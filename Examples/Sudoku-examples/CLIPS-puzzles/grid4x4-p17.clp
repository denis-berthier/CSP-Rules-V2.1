
(load "puzzles/grid4x4-p17.clp")
(reset)
(progn
    (bind ?t0 (time))
    (run)
    (printout t (- (time) ?t0)))
)

 The puzzle is:

     *  *  2  *   *  *  *  *   * 11  *  9   * 10  6  4
     7  5  6  9   *  2  * 14   *  4 13  *   *  *  *  *
     * 12  * 10   1  7  9  *   3  *  * 15  16  *  *  5
    11  *  1  4  15 16  6  5   *  *  2 12  14  8  *  *

     *  * 16  6  10 11  *  *   5  *  *  7   *  *  * 15
     *  *  *  3   *  *  7  *   6  1  *  2   *  4 10 11
     * 13 14  *   *  *  *  *   *  * 10  3  12  1  *  7
     *  *  *  *   *  * 15  1   * 13  *  *   9 14 16  6

     6  4  9 13   *  * 16  *  11  2  *  *   *  *  *  *
     1  *  3 15   9  6  *  *   *  *  *  *   * 11  4  *
    14  2  5  *   3  * 11 15   *  8  *  *   6  *  *  *
    10  *  *  *  14  *  * 12   *  *  1  6  15  9  *  *

     *  *  7  8   6 12  *  *   2 15 11  1   4  5  * 16
    16  *  *  1   8  *  *  7   *  5  3  4  11  * 15  *
     *  *  *  *   * 15  3  *  10  * 16  *   2  7  1 13
     2 11 15  *   4  *  1  *   *  *  *  *   *  3  *  *

 The solution is:

    15 14  2 16  13  8 12  3   1 11  5  9   7 10  6  4
     7  5  6  9  11  2 10 14   8  4 13 16   1 15 12  3
    13 12  8 10   1  7  9  4   3 14  6 15  16  2 11  5
    11  3  1  4  15 16  6  5   7 10  2 12  14  8 13  9

     4  1 16  6  10 11 14  8   5 12  9  7   3 13  2 15
     8 15 12  3  16  9  7 13   6  1 14  2   5  4 10 11
     9 13 14 11   2  5  4  6  15 16 10  3  12  1  8  7
     5  7 10  2  12  3 15  1   4 13  8 11   9 14 16  6

     6  4  9 13   7  1 16 10  11  2 15  5   8 12  3 14
     1  8  3 15   9  6  5  2  16  7 12 14  13 11  4 10
    14  2  5 12   3 13 11 15   9  8  4 10   6 16  7  1
    10 16 11  7  14  4  8 12  13  3  1  6  15  9  5  2

     3 10  7  8   6 12 13  9   2 15 11  1   4  5 14 16
    16  9 13  1   8 10  2  7  14  5  3  4  11  6 15 12
    12  6  4 14   5 15  3 11  10  9 16  8   2  7  1 13
     2 11 15  5   4 14  1 16  12  6  7 13  10  3  9  8

 Rules used:

    Naked Single
    Hidden Single
    Locked Candidate Single Line
    Locked Candidate Multiple Lines
    Naked Pairs
    Hidden Pairs
    X Wing
    Naked Triples
    Swordfish
    Color Conjugate Pairs
    Multi Color Type 1
    Multi Color Type 2
    Forced Chain Convergence
    Forced Chain XY

 3.88661003112793


SudoRules solution:

(solve-grid-as-list
     .  .  2  .   .  .  .  .   . 11  .  9   . 10  6  4
     7  5  6  9   .  2  . 14   .  4 13  .   .  .  .  .
     . 12  . 10   1  7  9  .   3  .  . 15  16  .  .  5
    11  .  1  4  15 16  6  5   .  .  2 12  14  8  .  .

     .  . 16  6  10 11  .  .   5  .  .  7   .  .  . 15
     .  .  .  3   .  .  7  .   6  1  .  2   .  4 10 11
     . 13 14  .   .  .  .  .   .  . 10  3  12  1  .  7
     .  .  .  .   .  . 15  1   . 13  .  .   9 14 16  6

     6  4  9 13   .  . 16  .  11  2  .  .   .  .  .  .
     1  .  3 15   9  6  .  .   .  .  .  .   . 11  4  .
    14  2  5  .   3  . 11 15   .  8  .  .   6  .  .  .
    10  .  .  .  14  .  . 12   .  .  1  6  15  9  .  .

     .  .  7  8   6 12  .  .   2 15 11  1   4  5  . 16
    16  .  .  1   8  .  .  7   .  5  3  4  11  . 15  .
     .  .  .  .   . 15  3  .  10  . 16  .   2  7  1 13
     2 11 15  .   4  .  1  .   .  .  .  .   .  3  .  .
)
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(. . 2 . . . . . . 11 . 9 . 10 6 4 7 5 6 9 . 2 . 14 . 4 13 . . . . . . 12 . 10 1 7 9 . 3 . . 15 16 . . 5 11 . 1 4 15 16 6 5 . . 2 12 14 8 . . . . 16 6 10 11 . . 5 . . 7 . . . 15 . . . 3 . . 7 . 6 1 . 2 . 4 10 11 . 13 14 . . . . . . . 10 3 12 1 . 7 . . . . . . 15 1 . 13 . . 9 14 16 6 6 4 9 13 . . 16 . 11 2 . . . . . . 1 . 3 15 9 6 . . . . . . . 11 4 . 14 2 5 . 3 . 11 15 . 8 . . 6 . . . 10 . . . 14 . . 12 . . 1 6 15 9 . . . . 7 8 6 12 . . 2 15 11 1 4 5 . 16 16 . . 1 8 . . 7 . 5 3 4 11 . 15 . . . . . . 15 3 . 10 . 16 . 2 7 1 13 2 11 15 . 4 . 1 . . . . . . 3 . .)
126 givens, 461 candidates
entering BRT
naked-single ==> r9c14 = 12
naked-single ==> r2c14 = 15
naked-single ==> r14c14 = 6
naked-single ==> r4c9 = 7
naked-single ==> r4c10 = 10
naked-single ==> r4c2 = 3
naked-single ==> r4c16 = 9
naked-single ==> r4c15 = 13
naked-single ==> r3c14 = 2
naked-single ==> r3c15 = 11
naked-single ==> r5c14 = 13
naked-single ==> r11c14 = 16
naked-single ==> r11c15 = 7
naked-single ==> r11c4 = 12
hidden-single-in-a-row ==> r16c8 = 16
hidden-single-in-a-row ==> r6c5 = 16
hidden-single-in-a-column ==> r1c5 = 13
hidden-single-in-a-row ==> r1c7 = 12
naked-single ==> r2c5 = 11
naked-single ==> r15c5 = 5
naked-single ==> r7c5 = 2
naked-single ==> r8c5 = 12
naked-single ==> r9c5 = 7
naked-single ==> r15c4 = 14
naked-single ==> r1c4 = 16
naked-single ==> r15c12 = 8
naked-single ==> r2c12 = 16
naked-single ==> r8c12 = 11
naked-single ==> r16c4 = 5
naked-single ==> r7c4 = 11
naked-single ==> r12c4 = 7
naked-single ==> r8c4 = 2
hidden-single-in-a-block ==> r8c2 = 7
hidden-single-in-a-block ==> r8c3 = 10
hidden-single-in-a-column ==> r15c3 = 4
hidden-single-in-a-block ==> r12c3 = 11
hidden-single-in-a-block ==> r1c2 = 14
hidden-single-in-a-block ==> r1c1 = 15
hidden-single-in-a-block ==> r6c2 = 15
hidden-single-in-a-block ==> r7c9 = 15
hidden-single-in-a-block ==> r7c10 = 16
naked-single ==> r12c10 = 3
hidden-single-in-a-column ==> r9c11 = 15
hidden-single-in-a-row ==> r5c15 = 2
hidden-single-in-a-block ==> r5c13 = 3
naked-single ==> r2c13 = 1
naked-single ==> r1c13 = 7
naked-single ==> r2c9 = 8
naked-single ==> r1c9 = 1
naked-single ==> r1c11 = 5
naked-single ==> r2c7 = 10
naked-single ==> r8c9 = 4
naked-single ==> r8c11 = 8
naked-single ==> r8c1 = 5
naked-single ==> r8c6 = 3
naked-single ==> r1c6 = 8
naked-single ==> r1c8 = 3
naked-single ==> r3c8 = 4
hidden-single-in-a-column ==> r11c11 = 4
hidden-single-in-a-block ==> r11c9 = 9
hidden-single-in-a-column ==> r10c8 = 2
hidden-single-in-a-column ==> r14c7 = 2
hidden-single-in-a-block ==> r12c16 = 2
hidden-single-in-a-block ==> r15c8 = 11
hidden-single-in-a-column ==> r15c2 = 6
hidden-single-in-a-row ==> r13c1 = 3
hidden-single-in-a-block ==> r14c3 = 13
naked-single ==> r3c3 = 8
naked-single ==> r3c1 = 13
naked-single ==> r6c3 = 12
hidden-single-in-a-column ==> r15c1 = 12
naked-single ==> r15c10 = 9
hidden-single-in-a-column ==> r10c13 = 13
hidden-single-in-a-row ==> r7c8 = 6
hidden-single-in-a-row ==> r5c2 = 1
Starting_init_links_with_<Fact-18471>
225 candidates, 602 csp-links and 602 links. Density = 2.39%
starting non trivial part of solution
Entering_level_W1_with_<Fact-20682>
whip[1]: r13n13{c8 .} ==> r16c6 ≠ 13
Entering_relation_bivalue_with_<Fact-20685>
Entering_level_S2_with_<Fact-20904>
naked-pairs-in-a-column: c15{r7 r12}{n5 n8} ==> r16c15 ≠ 8, r9c15 ≠ 8, r9c15 ≠ 5
hidden-pairs-in-a-row: r16{n6 n7}{c10 c11} ==> r16c11 ≠ 14, r16c11 ≠ 12, r16c10 ≠ 14, r16c10 ≠ 12
whip[1]: b15n12{r16c9 .} ==> r10c9 ≠ 12
hidden-pairs-in-a-block: b11{r10c10 r10c11}{n7 n12} ==> r10c11 ≠ 14, r10c10 ≠ 14
finned-x-wing-in-columns: n10{c13 c8}{r9 r16} ==> r16c6 ≠ 10
whip[1]: r16n10{c16 .} ==> r14c16 ≠ 10
naked-pairs-in-a-row: r14{c9 c16}{n12 n14} ==> r14c6 ≠ 14
hidden-pairs-in-a-block: b16{r16c13 r16c16}{n8 n10} ==> r16c16 ≠ 14, r16c16 ≠ 12
finned-x-wing-in-columns: n5{c15 c7}{r7 r12} ==> r12c6 ≠ 5
Entering_level_BC2_with_<Fact-21104>
Entering_level_W2_with_<Fact-22326>
Entering_level_S3_with_<Fact-22963>
Entering_level_BC3_with_<Fact-23019>
biv-chain[3]: r5c8{n8 n9} - b7n9{r5c11 r6c11} - r6c1{n9 n8} ==> r6c8 ≠ 8, r5c1 ≠ 8
whip[1]: r5n8{c8 .} ==> r7c7 ≠ 8
biv-chain[3]: r9c8{n8 n10} - c13n10{r9 r16} - b16n8{r16c13 r16c16} ==> r9c16 ≠ 8
biv-chain[3]: r10c7{n5 n8} - r9n8{c8 c13} - b12n5{r9c13 r12c15} ==> r12c7 ≠ 5
hidden-single-in-a-row ==> r12c15 = 5
naked-single ==> r7c15 = 8
naked-single ==> r6c13 = 5
hidden-single-in-a-row ==> r6c1 = 8
naked-pairs-in-a-row: r9{c8 c13}{n8 n10} ==> r9c16 ≠ 10, r9c12 ≠ 10, r9c6 ≠ 10
biv-chain[3]: r13c7{n13 n14} - b6n14{r5c7 r6c6} - b6n13{r6c6 r6c8} ==> r13c8 ≠ 13
hidden-single-in-a-block ==> r13c7 = 13
hidden-single-in-a-block ==> r16c6 = 14
naked-single ==> r16c12 = 13
naked-single ==> r11c12 = 10
naked-single ==> r11c16 = 1
naked-single ==> r11c6 = 13
naked-single ==> r6c6 = 9
naked-single ==> r5c8 = 8
naked-single ==> r9c8 = 10
naked-single ==> r9c13 = 8
naked-single ==> r16c13 = 10
naked-single ==> r16c16 = 8
naked-single ==> r13c8 = 9
naked-single ==> r13c2 = 10
naked-single ==> r14c2 = 9
naked-single ==> r13c15 = 14
naked-single ==> r9c15 = 3
naked-single ==> r2c15 = 12
naked-single ==> r2c16 = 3
naked-single ==> r16c15 = 9
naked-single ==> r9c16 = 14
naked-single ==> r9c12 = 5
naked-single ==> r9c6 = 1
naked-single ==> r10c12 = 14
naked-single ==> r10c9 = 16
naked-single ==> r10c2 = 8
naked-single ==> r10c7 = 5
naked-single ==> r7c7 = 4
naked-single ==> r5c7 = 14
naked-single ==> r5c10 = 12
naked-single ==> r5c11 = 9
naked-single ==> r5c1 = 4
naked-single ==> r10c10 = 7
naked-single ==> r10c11 = 12
naked-single ==> r16c10 = 6
naked-single ==> r3c10 = 14
naked-single ==> r3c11 = 6
naked-single ==> r16c11 = 7
naked-single ==> r7c1 = 9
naked-single ==> r7c6 = 5
naked-single ==> r12c7 = 8
naked-single ==> r12c2 = 16
naked-single ==> r12c9 = 13
naked-single ==> r10c16 = 10
naked-single ==> r14c16 = 12
naked-single ==> r14c9 = 14
naked-single ==> r6c8 = 13
naked-single ==> r6c11 = 14
naked-single ==> r14c6 = 10
naked-single ==> r12c6 = 4
naked-single ==> r16c9 = 12
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[3]

15 14 02 16 13 08 12 03 01 11 05 09 07 10 06 04
07 05 06 09 11 02 10 14 08 04 13 16 01 15 12 03
13 12 08 10 01 07 09 04 03 14 06 15 16 02 11 05
11 03 01 04 15 16 06 05 07 10 02 12 14 08 13 09
04 01 16 06 10 11 14 08 05 12 09 07 03 13 02 15
08 15 12 03 16 09 07 13 06 01 14 02 05 04 10 11
09 13 14 11 02 05 04 06 15 16 10 03 12 01 08 07
05 07 10 02 12 03 15 01 04 13 08 11 09 14 16 06
06 04 09 13 07 01 16 10 11 02 15 05 08 12 03 14
01 08 03 15 09 06 05 02 16 07 12 14 13 11 04 10
14 02 05 12 03 13 11 15 09 08 04 10 06 16 07 01
10 16 11 07 14 04 08 12 13 03 01 06 15 09 05 02
03 10 07 08 06 12 13 09 02 15 11 01 04 05 14 16
16 09 13 01 08 10 02 07 14 05 03 04 11 06 15 12
12 06 04 14 05 15 03 11 10 09 16 08 02 07 01 13
02 11 15 05 04 14 01 16 12 06 07 13 10 03 09 08
Puzzle (. . 2 . . . . . . 11 . 9 . 10 6 4 7 5 6 9 . 2 . 14 . 4 13 . . . . . . 12 . 10 1 7 9 . 3 . . 15 16 . . 5 11 . 1 4 15 16 6 5 . . 2 12 14 8 . . . . 16 6 10 11 . . 5 . . 7 . . . 15 . . . 3 . . 7 . 6 1 . 2 . 4 10 11 . 13 14 . . . . . . . 10 3 12 1 . 7 . . . . . . 15 1 . 13 . . 9 14 16 6 6 4 9 13 . . 16 . 11 2 . . . . . . 1 . 3 15 9 6 . . . . . . . 11 4 . 14 2 5 . 3 . 11 15 . 8 . . 6 . . . 10 . . . 14 . . 12 . . 1 6 15 9 . . . . 7 8 6 12 . . 2 15 11 1 4 5 . 16 16 . . 1 8 . . 7 . 5 3 4 11 . 15 . . . . . . 15 3 . 10 . 16 . 2 7 1 13 2 11 15 . 4 . 1 . . . . . . 3 . .) :
init-time = 3.18s, solve-time = 1.05s, total-time = 4.23s
nb-facts=<Fact-27322>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
