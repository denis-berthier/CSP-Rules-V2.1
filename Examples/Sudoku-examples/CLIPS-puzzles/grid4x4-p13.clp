;;; The puzzle is:
;;;
;;;     7 16  8  3  12 13  *  *   *  *  *  *   *  9 14  *
;;;     *  1  * 13   *  *  *  *   8  3  *  *  16 12  * 11
;;;    12  * 15  *   *  5  6  *  13  4 11  *   *  *  *  3
;;;     4  9  *  2   1  * 16  3  14 12  *  7  10  * 15 13
;;;
;;;     *  *  *  *   8  *  9 11  10  7  3  *   * 16  *  *
;;;    16  4  *  1   *  7  *  *   6  * 14  *  13  * 11  9
;;;     *  7  2  6   *  * 14  *   1  *  *  *   5  3  4  *
;;;     *  *  * 11   6  *  *  *   4  *  * 13   *  *  *  *
;;;
;;;     *  *  *  *  14  *  *  9   *  *  * 10  11  *  *  *
;;;     *  3 16 14   *  *  * 10   * 11  *  *   4 13  9  *
;;;    10  5  *  8   * 11  *  6   *  *  4  *   7  * 12 15
;;;     *  * 13  *   * 12  4  8   9  6  * 15   *  *  *  *
;;;
;;;    11  6  * 16   4  *  8  1   3 13  * 12   9  * 10  5
;;;    13  *  *  *   *  6 12 14   * 10 16  *   * 11  *  7
;;;     8  * 12  4   *  *  5  7   *  *  *  *   2  * 13  *
;;;     * 10  7  *   *  *  *  *   *  *  8  6  14  4  1 12
;;;
;;; The solution is:
;;;
;;;     7 16  8  3  12 13 11 15   2  5 10  1   6  9 14  4
;;;     5  1  6 13  10 14  7  4   8  3 15  9  16 12  2 11
;;;    12 14 15 10   9  5  6  2  13  4 11 16   1  7  8  3
;;;     4  9 11  2   1  8 16  3  14 12  6  7  10  5 15 13
;;;
;;;    14 13  5 12   8  4  9 11  10  7  3  2  15 16  6  1
;;;    16  4  3  1   2  7 10 12   6 15 14  5  13  8 11  9
;;;     9  7  2  6  16 15 14 13   1  8 12 11   5  3  4 10
;;;    15  8 10 11   6  3  1  5   4 16  9 13  12 14  7  2
;;;
;;;     6 12  4 15  14 16  3  9   7  1 13 10  11  2  5  8
;;;     2  3 16 14   7  1 15 10  12 11  5  8   4 13  9  6
;;;    10  5  9  8  13 11  2  6  16 14  4  3   7  1 12 15
;;;     1 11 13  7   5 12  4  8   9  6  2 15   3 10 16 14
;;;
;;;    11  6 14 16   4  2  8  1   3 13  7 12   9 15 10  5
;;;    13  2  1  9  15  6 12 14   5 10 16  4   8 11  3  7
;;;     8 15 12  4   3 10  5  7  11  9  1 14   2  6 13 16
;;;     3 10  7  5  11  9 13 16  15  2  8  6  14  4  1 12
;;;
;;; Rules used:
;;;
;;;    Naked Single
;;;    Hidden Single
;;;    Locked Candidate Single Line
;;;    Locked Candidate Multiple Lines
;;;    Naked Pairs
;;;    Hidden Pairs
;;;    X Wing
;;;    Naked Triples
;;;    XY-Wing
;;;    Swordfish
;;;    Color Conjugate Pairs

(bind ?override "(progn
(bind ?*segment-size* 4)
(bind ?*Subsets* TRUE)
(bind ?*FinnedFish* TRUE)
(bind ?*Bivalue-Chains* TRUE)
(bind ?*Whips* TRUE)
)")
(batch "SudoRules-V20.1-config.clp")
----LOAD-COMPLETE----
(solve-grid-as-list
 7 16  8  3  12 13  .  .   .  .  .  .   .  9 14  .
 .  1  . 13   .  .  .  .   8  3  .  .  16 12  . 11
12  . 15  .   .  5  6  .  13  4 11  .   .  .  .  3
 4  9  .  2   1  . 16  3  14 12  .  7  10  . 15 13

 .  .  .  .   8  .  9 11  10  7  3  .   . 16  .  .
16  4  .  1   .  7  .  .   6  . 14  .  13  . 11  9
 .  7  2  6   .  . 14  .   1  .  .  .   5  3  4  .
 .  .  . 11   6  .  .  .   4  .  . 13   .  .  .  .

 .  .  .  .  14  .  .  9   .  .  . 10  11  .  .  .
 .  3 16 14   .  .  . 10   . 11  .  .   4 13  9  .
10  5  .  8   . 11  .  6   .  .  4  .   7  . 12 15
 .  . 13  .   . 12  4  8   9  6  . 15   .  .  .  .

11  6  . 16   4  .  8  1   3 13  . 12   9  . 10  5
13  .  .  .   .  6 12 14   . 10 16  .   . 11  .  7
 8  . 12  4   .  .  5  7   .  .  .  .   2  . 13  .
 . 10  7  .   .  .  .  .   .  .  8  6  14  4  1 12

)
#### BEGIN EXPECTED ####
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
#***  Using CLIPS 6.32-r768
#***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(7 16 8 3 12 13 . . . . . . . 9 14 . . 1 . 13 . . . . 8 3 . . 16 12 . 11 12 . 15 . . 5 6 . 13 4 11 . . . . 3 4 9 . 2 1 . 16 3 14 12 . 7 10 . 15 13 . . . . 8 . 9 11 10 7 3 . . 16 . . 16 4 . 1 . 7 . . 6 . 14 . 13 . 11 9 . 7 2 6 . . 14 . 1 . . . 5 3 4 . . . . 11 6 . . . 4 . . 13 . . . . . . . . 14 . . 9 . . . 10 11 . . . . 3 16 14 . . . 10 . 11 . . 4 13 9 . 10 5 . 8 . 11 . 6 . . 4 . 7 . 12 15 . . 13 . . 12 4 8 9 6 . 15 . . . . 11 6 . 16 4 . 8 1 3 13 . 12 9 . 10 5 13 . . . . 6 12 14 . 10 16 . . 11 . 7 8 . 12 4 . . 5 7 . . . . 2 . 13 . . 10 7 . . . . . . . 8 6 14 4 1 12)
126 givens, 479 candidates
entering BRT
naked-single ==> r13c14 = 15
naked-single ==> r13c6 = 2
naked-single ==> r13c11 = 7
naked-single ==> r15c14 = 6
naked-single ==> r15c16 = 16
naked-single ==> r13c3 = 14
naked-single ==> r5c3 = 5
naked-single ==> r5c12 = 2
naked-single ==> r5c15 = 6
naked-single ==> r15c2 = 15
naked-single ==> r14c2 = 2
naked-single ==> r9c2 = 12
naked-single ==> r12c2 = 11
naked-single ==> r15c9 = 11
naked-single ==> r12c4 = 7
naked-single ==> r9c4 = 15
naked-single ==> r5c4 = 12
naked-single ==> r4c6 = 8
naked-single ==> r4c14 = 5
naked-single ==> r4c11 = 6
naked-single ==> r4c3 = 11
naked-single ==> r3c8 = 2
naked-single ==> r3c4 = 10
naked-single ==> r2c3 = 6
naked-single ==> r3c2 = 14
naked-single ==> r2c1 = 5
naked-single ==> r2c12 = 9
naked-single ==> r5c2 = 13
naked-single ==> r8c2 = 8
hidden-single-in-a-column ==> r16c5 = 11
hidden-single-in-a-column ==> r1c7 = 11
hidden-single-in-a-row ==> r1c11 = 10
hidden-single-in-a-row ==> r14c12 = 4
hidden-single-in-a-row ==> r14c3 = 1
naked-single ==> r9c3 = 4
naked-single ==> r11c3 = 9
hidden-single-in-a-block ==> r16c1 = 3
hidden-single-in-a-column ==> r11c12 = 3
hidden-single-in-a-block ==> r11c10 = 14
hidden-single-in-a-block ==> r15c12 = 14
hidden-single-in-a-column ==> r10c9 = 12
hidden-single-in-a-block ==> r9c9 = 7
hidden-single-in-a-column ==> r11c9 = 16
hidden-single-in-a-column ==> r9c11 = 13
hidden-single-in-a-column ==> r8c13 = 12
hidden-single-in-a-block ==> r7c11 = 12
hidden-single-in-a-block ==> r6c8 = 12
hidden-single-in-a-column ==> r8c8 = 5
hidden-single-in-a-block ==> r5c13 = 15
naked-single ==> r5c1 = 14
naked-single ==> r5c16 = 1
naked-single ==> r5c6 = 4
hidden-single-in-a-row ==> r2c8 = 4
naked-single ==> r1c8 = 15
hidden-single-in-a-block ==> r2c11 = 15
naked-single ==> r8c11 = 9
naked-single ==> r8c1 = 15
naked-single ==> r7c1 = 9
naked-single ==> r8c10 = 16
naked-single ==> r15c11 = 1
naked-single ==> r15c10 = 9
hidden-single-in-a-column ==> r16c6 = 9
naked-single ==> r16c4 = 5
naked-single ==> r14c4 = 9
hidden-single-in-a-row ==> r14c9 = 5
naked-single ==> r1c9 = 2
naked-single ==> r16c9 = 15
naked-single ==> r16c7 = 13
naked-single ==> r16c8 = 16
naked-single ==> r7c8 = 13
naked-single ==> r16c10 = 2
hidden-single-in-a-column ==> r11c5 = 13
hidden-single-in-a-block ==> r14c5 = 15
hidden-single-in-a-block ==> r2c15 = 2
naked-single ==> r8c15 = 7
naked-single ==> r3c15 = 8
naked-single ==> r3c13 = 1
naked-single ==> r1c13 = 6
naked-single ==> r1c16 = 4
naked-single ==> r3c12 = 16
naked-single ==> r3c14 = 7
naked-single ==> r3c5 = 9
naked-single ==> r12c13 = 3
naked-single ==> r14c13 = 8
naked-single ==> r14c15 = 3
hidden-single-in-a-row ==> r7c12 = 11
hidden-single-in-a-row ==> r2c6 = 14
Starting_init_links_with_<Fact-18501>
200 candidates, 437 csp-links and 437 links. Density = 2.2%
starting non trivial part of solution
Entering_level_W1_with_<Fact-20104>
whip[1]: c11n5{r12 .} ==> r10c12 ≠ 5, r9c10 ≠ 5
hidden-single-in-a-row ==> r9c15 = 5
naked-single ==> r12c15 = 16
hidden-single-in-a-block ==> r9c6 = 16
hidden-single-in-a-block ==> r7c5 = 16
hidden-single-in-a-block ==> r9c7 = 3
Entering_relation_bivalue_with_<Fact-20112>
Entering_level_S2_with_<Fact-20307>
naked-pairs-in-a-row: r12{c5 c11}{n2 n5} ==> r12c16 ≠ 2, r12c14 ≠ 2, r12c1 ≠ 2
naked-single ==> r12c1 = 1
finned-x-wing-in-rows: n2{r11 r6}{c14 c7} ==> r8c7 ≠ 2
whip[1]: r8n2{c16 .} ==> r6c14 ≠ 2
naked-pairs-in-a-block: b8{r6c14 r7c16}{n8 n10} ==> r8c16 ≠ 10, r8c14 ≠ 10
finned-x-wing-in-rows: n8{r10 r7}{c16 c12} ==> r6c12 ≠ 8
naked-single ==> r6c12 = 5
naked-single ==> r1c12 = 1
naked-single ==> r1c10 = 5
naked-single ==> r10c12 = 8
naked-single ==> r9c10 = 1
hidden-single-in-a-block ==> r11c14 = 1
naked-single ==> r11c7 = 2
naked-single ==> r12c5 = 5
naked-single ==> r10c5 = 7
naked-single ==> r2c5 = 10
naked-single ==> r2c7 = 7
naked-single ==> r15c5 = 3
naked-single ==> r6c5 = 2
naked-single ==> r15c6 = 10
naked-single ==> r7c6 = 15
naked-single ==> r6c7 = 10
naked-single ==> r6c3 = 3
naked-single ==> r8c3 = 10
naked-single ==> r6c14 = 8
naked-single ==> r6c10 = 15
naked-single ==> r7c16 = 10
naked-single ==> r12c16 = 14
naked-single ==> r8c16 = 2
naked-single ==> r8c14 = 14
naked-single ==> r10c16 = 6
naked-single ==> r9c16 = 8
naked-single ==> r10c1 = 2
naked-single ==> r9c1 = 6
naked-single ==> r10c11 = 5
naked-single ==> r12c14 = 10
naked-single ==> r9c14 = 2
naked-single ==> r8c7 = 1
naked-single ==> r8c6 = 3
naked-single ==> r10c7 = 15
naked-single ==> r7c10 = 8
naked-single ==> r10c6 = 1
naked-single ==> r12c11 = 2
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = FSHP

07 16 08 03 12 13 11 15 02 05 10 01 06 09 14 04 
05 01 06 13 10 14 07 04 08 03 15 09 16 12 02 11 
12 14 15 10 09 05 06 02 13 04 11 16 01 07 08 03 
04 09 11 02 01 08 16 03 14 12 06 07 10 05 15 13 
14 13 05 12 08 04 09 11 10 07 03 02 15 16 06 01 
16 04 03 01 02 07 10 12 06 15 14 05 13 08 11 09 
09 07 02 06 16 15 14 13 01 08 12 11 05 03 04 10 
15 08 10 11 06 03 01 05 04 16 09 13 12 14 07 02 
06 12 04 15 14 16 03 09 07 01 13 10 11 02 05 08 
02 03 16 14 07 01 15 10 12 11 05 08 04 13 09 06 
10 05 09 08 13 11 02 06 16 14 04 03 07 01 12 15 
01 11 13 07 05 12 04 08 09 06 02 15 03 10 16 14 
11 06 14 16 04 02 08 01 03 13 07 12 09 15 10 05 
13 02 01 09 15 06 12 14 05 10 16 04 08 11 03 07 
08 15 12 04 03 10 05 07 11 09 01 14 02 06 13 16 
03 10 07 05 11 09 13 16 15 02 08 06 14 04 01 12 
Puzzle (7 16 8 3 12 13 . . . . . . . 9 14 . . 1 . 13 . . . . 8 3 . . 16 12 . 11 12 . 15 . . 5 6 . 13 4 11 . . . . 3 4 9 . 2 1 . 16 3 14 12 . 7 10 . 15 13 . . . . 8 . 9 11 10 7 3 . . 16 . . 16 4 . 1 . 7 . . 6 . 14 . 13 . 11 9 . 7 2 6 . . 14 . 1 . . . 5 3 4 . . . . 11 6 . . . 4 . . 13 . . . . . . . . 14 . . 9 . . . 10 11 . . . . 3 16 14 . . . 10 . 11 . . 4 13 9 . 10 5 . 8 . 11 . 6 . . 4 . 7 . 12 15 . . 13 . . 12 4 8 9 6 . 15 . . . . 11 6 . 16 4 . 8 1 3 13 . 12 9 . 10 5 13 . . . . 6 12 14 . 10 16 . . 11 . 7 8 . 12 4 . . 5 7 . . . . 2 . 13 . . 10 7 . . . . . . . 8 6 14 4 1 12) :
#init-time = 3.22s, solve-time = 0.9s, total-time = 4.13s
nb-facts=<Fact-20497>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
#***  Using CLIPS 6.32-r768
#***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
#### END EXPECTED ####
