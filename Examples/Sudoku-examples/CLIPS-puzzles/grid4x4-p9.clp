(CLIPS-solve "grid4x4-p9")

 The puzzle is:

     3  * 13  *   * 11 12  *   9  * 10  *   * 14  *  *
     *  *  9 11   7  2  * 16  14 15  8  1   * 10  *  *
     1  *  *  *   *  *  *  *   *  *  *  7   *  *  *  8
     *  4  *  *  10  *  *  *   2 12  * 13   *  *  6  *

     *  1  * 16  14  * 13  9   4  2  *  *  10  *  3 15
    11 13  7  *   *  * 16  *   *  * 15  9   * 12 14  5
     *  3  *  4  11  *  *  5   *  *  *  8   *  *  * 16
    15  *  *  *   *  *  6  *   *  *  * 16   *  *  4  *

     * 12  *  *  13  *  *  *   *  1  *  *   *  *  *  2
    13  *  *  *  16  *  *  *  15  *  * 10   5  * 11  *
     2 16  8  *   4  6  *  *   * 13  *  *   *  7 10  1
     4 14  *  9   *  *  2 10   5 16  *  6   8  * 12  *

     *  8  *  *   3  * 15 13   *  *  *  2   *  *  1  *
     9  *  *  *   2  *  *  *   *  *  *  *   *  *  * 14
     *  *  3  *  12 16  4 14   8  * 13 15   7  5  *  *
     *  * 14  *   *  8  *  7   *  6  4  *   * 15  * 12

 The solution is:

     3  2 13  8   6 11 12  1   9  4 10  5  15 14 16  7
     5  6  9 11   7  2  3 16  14 15  8  1  12 10 13  4
     1 15 12 10   9 13 14  4   6  3 16  7  11  2  5  8
    14  4 16  7  10  5  8 15   2 12 11 13   3  1  6  9

     8  1  5 16  14  7 13  9   4  2  6 12  10 11  3 15
    11 13  7  6   8  4 16  2   3 10 15  9   1 12 14  5
    12  3  2  4  11 15 10  5  13 14  1  8   6  9  7 16
    15  9 10 14   1 12  6  3   7 11  5 16   2  8  4 13

    10 12  6  5  13  3  7  8  11  1  9  4  14 16 15  2
    13  7  1  3  16 14  9 12  15  8  2 10   5  4 11  6
     2 16  8 15   4  6  5 11  12 13  3 14   9  7 10  1
     4 14 11  9  15  1  2 10   5 16  7  6   8 13 12  3

     7  8  4 12   3  9 15 13  10  5 14  2  16  6  1 11
     9  5 15 13   2 10  1  6  16  7 12 11   4  3  8 14
     6 11  3  1  12 16  4 14   8  9 13 15   7  5  2 10
    16 10 14  2   5  8 11  7   1  6  4  3  13 15  9 12

 Rules used:

    Naked Single
    Hidden Single
    Locked Candidate Single Line
    Locked Candidate Multiple Lines
    Naked Pairs
    Hidden Pairs
    X Wing
    Naked Triples


CLIPS time = 8.47769808769226





(solve-sudoku-list
    3  . 13  .   . 11 12  .   9  . 10  .   . 14  .  .
    .  .  9 11   7  2  . 16  14 15  8  1   . 10  .  .
    1  .  .  .   .  .  .  .   .  .  .  7   .  .  .  8
    .  4  .  .  10  .  .  .   2 12  . 13   .  .  6  .

    .  1  . 16  14  . 13  9   4  2  .  .  10  .  3 15
   11 13  7  .   .  . 16  .   .  . 15  9   . 12 14  5
    .  3  .  4  11  .  .  5   .  .  .  8   .  .  . 16
   15  .  .  .   .  .  6  .   .  .  . 16   .  .  4  .

    . 12  .  .  13  .  .  .   .  1  .  .   .  .  .  2
   13  .  .  .  16  .  .  .  15  .  . 10   5  . 11  .
    2 16  8  .   4  6  .  .   . 13  .  .   .  7 10  1
    4 14  .  9   .  .  2 10   5 16  .  6   8  . 12  .

    .  8  .  .   3  . 15 13   .  .  .  2   .  .  1  .
    9  .  .  .   2  .  .  .   .  .  .  .   .  .  . 14
    .  .  3  .  12 16  4 14   8  . 13 15   7  5  .  .
    .  . 14  .   .  8  .  7   .  6  4  .   . 15  . 12
)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
(3 . 13 . . 11 12 . 9 . 10 . . 14 . . . . 9 11 7 2 . 16 14 15 8 1 . 10 . . 1 . . . . . . . . . . 7 . . . 8 . 4 . . 10 . . . 2 12 . 13 . . 6 . . 1 . 16 14 . 13 9 4 2 . . 10 . 3 15 11 13 7 . . . 16 . . . 15 9 . 12 14 5 . 3 . 4 11 . . 5 . . . 8 . . . 16 15 . . . . . 6 . . . . 16 . . 4 . . 12 . . 13 . . . . 1 . . . . . 2 13 . . . 16 . . . 15 . . 10 5 . 11 . 2 16 8 . 4 6 . . . 13 . . . 7 10 1 4 14 . 9 . . 2 10 5 16 . 6 8 . 12 . . 8 . . 3 . 15 13 . . . 2 . . 1 . 9 . . . 2 . . . . . . . . . . 14 . . 3 . 12 16 4 14 8 . 13 15 7 5 . . . . 14 . . 8 . 7 . 6 4 . . 15 . 12)
110 givens, 653 candidates
entering BRT
hidden-single-in-a-row ==> r15c4 = 1
hidden-single-in-a-column ==> r14c15 = 8
hidden-single-in-a-block ==> r14c8 = 6
hidden-single-in-a-row ==> r10c11 = 2
hidden-single-in-a-column ==> r10c10 = 8
hidden-single-in-a-block ==> r9c12 = 4
naked-single ==> r1c12 = 5
naked-single ==> r1c10 = 4
naked-single ==> r1c16 = 7
hidden-single-in-a-column ==> r7c15 = 7
hidden-single-in-a-column ==> r11c12 = 14
hidden-single-in-a-block ==> r9c13 = 14
hidden-single-in-a-column ==> r8c2 = 9
hidden-single-in-a-row ==> r7c6 = 15
hidden-single-in-a-column ==> r3c6 = 13
hidden-single-in-a-block ==> r3c8 = 4
hidden-single-in-a-block ==> r6c6 = 4
Starting_init_links_with_<Fact-18590>
545 candidates, 3919 csp-links and 3919 links. Density = 2.64%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-33199>
whip[1]: c12n3{r16 .} ==> r16c9 ≠ 3, r14c9 ≠ 3, r14c10 ≠ 3, r14c11 ≠ 3
whip[1]: c2n11{r16 .} ==> r14c3 ≠ 11, r13c3 ≠ 11
whip[1]: c10n9{r15 .} ==> r13c11 ≠ 9
whip[1]: c8n11{r11 .} ==> r11c7 ≠ 11, r9c7 ≠ 11
whip[1]: r10n12{c8 .} ==> r11c8 ≠ 12
whip[1]: c7n7{r10 .} ==> r12c6 ≠ 7, r9c6 ≠ 7, r10c6 ≠ 7
hidden-single-in-a-row ==> r12c11 = 7
hidden-single-in-a-row ==> r5c6 = 7
hidden-single-in-a-row ==> r12c3 = 11
hidden-single-in-a-block ==> r10c3 = 1
hidden-single-in-a-row ==> r12c5 = 15
hidden-single-in-a-block ==> r12c6 = 1
whip[1]: r12n3{c16 .} ==> r9c14 ≠ 3, r10c14 ≠ 3, r10c16 ≠ 3, r11c13 ≠ 3
whip[1]: b6n12{r8c8 .} ==> r8c3 ≠ 12, r8c4 ≠ 12, r8c9 ≠ 12, r8c11 ≠ 12
whip[1]: r2n6{c2 .} ==> r3c4 ≠ 6, r1c2 ≠ 6, r1c4 ≠ 6, r3c2 ≠ 6, r3c3 ≠ 6
hidden-single-in-a-row ==> r1c5 = 6
whip[1]: c5n8{r8 .} ==> r6c8 ≠ 8, r8c8 ≠ 8
whip[1]: r1n16{c15 .} ==> r4c14 ≠ 16, r3c13 ≠ 16, r3c14 ≠ 16, r3c15 ≠ 16, r4c13 ≠ 16
Entering_relation_bivalue_with_<Fact-33229>
Entering_level_S2_with_<Fact-33458>
naked-pairs-in-a-column: c5{r6 r8}{n1 n8} ==> r16c5 ≠ 1
whip[1]: b14n1{r16c7 .} ==> r4c7 ≠ 1, r7c7 ≠ 1
naked-single ==> r7c7 = 10
naked-single ==> r7c10 = 14
hidden-single-in-a-block ==> r8c4 = 14
hidden-single-in-a-block ==> r4c1 = 14
hidden-single-in-a-block ==> r4c4 = 7
hidden-single-in-a-block ==> r1c4 = 8
hidden-single-in-a-block ==> r5c1 = 8
hidden-single-in-a-block ==> r8c14 = 8
naked-single ==> r8c5 = 1
naked-single ==> r6c5 = 8
hidden-single-in-a-block ==> r3c7 = 14
hidden-single-in-a-block ==> r10c6 = 14
hidden-single-in-a-block ==> r10c8 = 12
hidden-single-in-a-block ==> r8c6 = 12
hidden-single-in-a-column ==> r13c11 = 14
whip[1]: b6n3{r8c8 .} ==> r4c8 ≠ 3, r9c8 ≠ 3, r11c8 ≠ 3
naked-single ==> r11c8 = 11
naked-single ==> r9c8 = 8
hidden-single-in-a-block ==> r4c7 = 8
whip[1]: b5n5{r8c3 .} ==> r3c3 ≠ 5, r4c3 ≠ 5, r9c3 ≠ 5, r13c3 ≠ 5, r14c3 ≠ 5
hidden-single-in-a-row ==> r4c6 = 5
naked-single ==> r2c7 = 3
naked-single ==> r3c5 = 9
naked-single ==> r16c5 = 5
naked-single ==> r14c6 = 10
naked-single ==> r13c6 = 9
naked-single ==> r9c6 = 3
naked-single ==> r9c9 = 11
naked-single ==> r9c11 = 9
hidden-single-in-a-block ==> r15c10 = 9
naked-single ==> r15c15 = 2
hidden-single-in-a-column ==> r16c15 = 9
hidden-single-in-a-column ==> r2c15 = 13
naked-single ==> r2c16 = 4
naked-single ==> r2c13 = 12
hidden-single-in-a-block ==> r10c14 = 4
hidden-single-in-a-block ==> r3c15 = 5
hidden-single-in-a-row ==> r10c4 = 3
whip[1]: c1n16{r16 .} ==> r13c3 ≠ 16, r14c3 ≠ 16
hidden-pairs-in-a-column: c14{n1 n9}{r4 r7} ==> r7c14 ≠ 13, r7c14 ≠ 6, r7c14 ≠ 2, r4c14 ≠ 11, r4c14 ≠ 3
hidden-single-in-a-column ==> r3c14 = 2
hidden-single-in-a-row ==> r1c2 = 2
hidden-single-in-a-block ==> r16c4 = 2
hidden-single-in-a-block ==> r14c4 = 13
hidden-single-in-a-block ==> r16c13 = 13
hidden-single-in-a-block ==> r8c16 = 13
naked-single ==> r12c16 = 3
naked-single ==> r12c14 = 13
hidden-single-in-a-column ==> r14c14 = 3
hidden-single-in-a-block ==> r16c12 = 3
hidden-single-in-a-block ==> r7c9 = 13
finned-x-wing-in-columns: n11{c14 c12}{r5 r13} ==> r13c10 ≠ 11
whip[1]: r13n11{c16 .} ==> r14c13 ≠ 11, r15c16 ≠ 11
hidden-single-in-a-row ==> r15c2 = 11
naked-single ==> r16c2 = 10
naked-single ==> r3c2 = 15
naked-single ==> r4c3 = 16
naked-single ==> r15c1 = 6
naked-single ==> r2c1 = 5
naked-single ==> r2c2 = 6
naked-single ==> r10c2 = 7
naked-single ==> r9c1 = 10
naked-single ==> r10c7 = 9
naked-single ==> r10c16 = 6
naked-single ==> r9c14 = 16
naked-single ==> r9c15 = 15
naked-single ==> r1c15 = 16
naked-single ==> r9c3 = 6
naked-single ==> r9c4 = 5
naked-single ==> r9c7 = 7
naked-single ==> r11c4 = 15
naked-single ==> r13c4 = 12
naked-single ==> r3c4 = 10
naked-single ==> r3c3 = 12
naked-single ==> r5c3 = 5
naked-single ==> r7c3 = 2
naked-single ==> r8c3 = 10
naked-single ==> r6c4 = 6
naked-single ==> r13c3 = 4
naked-single ==> r14c3 = 15
naked-single ==> r11c13 = 9
naked-single ==> r11c7 = 5
naked-single ==> r14c2 = 5
naked-single ==> r7c1 = 12
naked-single ==> r15c16 = 10
naked-single ==> r13c16 = 11
naked-single ==> r4c16 = 9
naked-single ==> r4c14 = 1
naked-single ==> r1c13 = 15
naked-single ==> r1c8 = 1
naked-single ==> r4c8 = 15
naked-single ==> r7c14 = 9
naked-single ==> r13c14 = 6
naked-single ==> r5c14 = 11
naked-single ==> r5c12 = 12
naked-single ==> r5c11 = 6
naked-single ==> r7c11 = 1
naked-single ==> r7c13 = 6
naked-single ==> r14c12 = 11
naked-single ==> r14c7 = 1
naked-single ==> r16c7 = 11
naked-single ==> r14c10 = 7
naked-single ==> r8c13 = 2
naked-single ==> r6c13 = 1
naked-single ==> r8c8 = 3
naked-single ==> r6c8 = 2
naked-single ==> r8c9 = 7
naked-single ==> r13c13 = 16
naked-single ==> r13c1 = 7
naked-single ==> r13c9 = 10
naked-single ==> r6c9 = 3
naked-single ==> r6c10 = 10
naked-single ==> r11c9 = 12
naked-single ==> r11c11 = 3
naked-single ==> r4c11 = 11
naked-single ==> r3c10 = 3
naked-single ==> r3c13 = 11
naked-single ==> r3c11 = 16
naked-single ==> r3c9 = 6
naked-single ==> r14c11 = 12
naked-single ==> r4c13 = 3
naked-single ==> r8c11 = 5
naked-single ==> r8c10 = 11
naked-single ==> r14c9 = 16
naked-single ==> r16c9 = 1
naked-single ==> r13c10 = 5
naked-single ==> r14c13 = 4
naked-single ==> r16c1 = 16
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = FSHP
   32D86BC194A5FEG7
   569B723GEF81CAD4
   1FCA9DE463G7B258
   E4G7A58F2CBD3169
   815GE7D9426CAB3F
   BD7684G23AF91CE5
   C324BFA5DE18697G
   F9AE1C637B5G284D
   AC65D378B194EGF2
   D713GE9CF82A54B6
   2G8F465BCD3E97A1
   4EB9F12A5G768DC3
   784C39FDA5E2G61B
   95FD2A16G7CB438E
   6B31CG4E89DF752A
   GAE258B71643DF9C

nb-facts = <Fact-33906>
Puzzle (3 . 13 . . 11 12 . 9 . 10 . . 14 . . . . 9 11 7 2 . 16 14 15 8 1 . 10 . . 1 . . . . . . . . . . 7 . . . 8 . 4 . . 10 . . . 2 12 . 13 . . 6 . . 1 . 16 14 . 13 9 4 2 . . 10 . 3 15 11 13 7 . . . 16 . . . 15 9 . 12 14 5 . 3 . 4 11 . . 5 . . . 8 . . . 16 15 . . . . . 6 . . . . 16 . . 4 . . 12 . . 13 . . . . 1 . . . . . 2 13 . . . 16 . . . 15 . . 10 5 . 11 . 2 16 8 . 4 6 . . . 13 . . . 7 10 1 4 14 . 9 . . 2 10 5 16 . 6 8 . 12 . . 8 . . 3 . 15 13 . . . 2 . . 1 . 9 . . . 2 . . . . . . . . . . 14 . . 3 . 12 16 4 14 8 . 13 15 7 5 . . . . 14 . . 8 . 7 . 6 4 . . 15 . 12) :
init-time = 3.73s, solve-time = 1.47s, total-time = 5.21s
nb-facts = <Fact-33906>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
