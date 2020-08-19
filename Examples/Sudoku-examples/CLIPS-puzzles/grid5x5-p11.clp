
(load "puzzles/grid5x5-p11.clp")
(reset)
(progn
    (bind ?t0 (time))
    (run)
    (printout t (- (time) ?t0)))
)


The puzzle is:

   10 11  *  *  4  19  *  1  *  *   *  * 15  * 22   7  *  * 16  6   8  * 21  * 25
   17  3 20  *  *   * 21 13  *  *   *  8 19 23  *   *  *  4  1 25   2  *  6  *  *
   14 18  2 25  *   *  *  * 22  *   * 21  *  *  *  13  * 12 19  9   *  7 23  3 24
    *  *  *  *  *   *  *  * 24  *  18  9  * 12  *   2  *  *  *  *   * 15  *  * 19
    *  * 12  *  *   2  * 16  *  6   7  *  *  5  4  24  8  *  * 18  13  1 14  * 22

    *  *  * 10 13   * 11 19  *  *  22  * 20  8 15  23  * 18  *  5   *  *  2 25  6
    3  *  *  * 14   9  * 25  * 22  11  *  5  *  *   *  6  * 20  *   *  *  *  * 18
    * 23  * 19  *   * 17  *  *  *   6 12  * 13  *  14  * 11  * 24   * 20  *  *  *
    * 21  *  *  *  18  *  3 23  *   *  *  * 25  *   * 10  9  4  8  24  *  * 17 15
   24  *  *  5  *   8 16  *  6  *   3 23  4 19  *  17 21  *  *  *   * 11  *  *  *

    *  *  * 23 24  22  *  *  *  1   *  *  *  6  5   *  9 19  2  7   * 14  *  8 10
    *  4 25  1 10   *  8  *  * 19   *  *  *  *  3   *  *  *  6  *   *  5 18  *  *
   22  5  *  *  *   *  6  * 25  *  10 14  * 18 20   *  3  * 11  *   *  *  * 21 23
    *  * 18  9  *   * 23  *  *  *  12  *  *  *  *  21  *  *  5  *   4 25  3 15  *
   19 14  *  3  *  13 20  5 10  *   9  2  *  *  *  25  *  *  * 15   1 24  *  *  *

    *  *  * 20  *   *  *  * 14 24   * 18  1 10  8   * 16  * 25  2   *  9  *  *  3
   11 22  *  * 17   5  9  4 18  *   * 15  *  *  *   * 12 13  * 23   *  *  * 24  *
    *  *  *  2  *  17  * 22  *  3   *  5  *  4  7   *  *  * 24  *   *  6  * 18  *
    1  *  *  *  *   * 25  * 16  *   *  * 14  * 11  20  * 10  *  3  19  *  *  * 13
   23  6  7  *  *  11  * 12  *  2  24 25  9  * 13   *  *  5  8  *  15 21  *  *  *

   15  * 19 17  6   1  *  *  4 13   5 16  *  * 21   3  * 14  * 20   *  * 25  *  *
    4  *  * 22  *   *  *  *  * 11   *  6  * 15 25   * 13  *  *  *   *  *  *  *  *
    5 13  3 11  *  24 12  8  * 17   *  *  * 14  *   *  7  *  *  *   * 23 15 16 21
    *  * 24  *  8  16 18 23  *  *   *  7 17 11  *   *  * 21 10  *   *  * 20  *  *
   20  * 23  * 21   6 22  *  * 25   4  * 18  *  *   *  *  1  * 17  11  *  *  *  2



The solution is:

   10 11 13 24  4  19 14  1  5 18   2 20 15  3 22   7 23 17 16  6   8 12 21  9 25
   17  3 20  7 22  15 21 13 12  9  14  8 19 23 24  10  5  4  1 25   2 18  6 11 16
   14 18  2 25  5  20  4 11 22  8   1 21  6 17 16  13 15 12 19  9  10  7 23  3 24
    8  1  6 21 16  25  3  7 24 23  18  9 13 12 10   2 20 22 14 11  17 15  4  5 19
    9 19 12 15 23   2 10 16 17  6   7 11 25  5  4  24  8  3 21 18  13  1 14 20 22

   16 17  9 10 13   4 11 19  7 14  22 24 20  8 15  23  1 18 12  5  21  3  2 25  6
    3 12  8  4 14   9 24 25 13 22  11 10  5 21 17  15  6  2 20 16  23 19  1  7 18
   18 23 22 19  7  10 17 15  1 21   6 12  2 13  9  14 25 11  3 24  16 20  8  4  5
    2 21 11  6 20  18  5  3 23 12  16  1  7 25 14  19 10  9  4  8  24 13 22 17 15
   24 25  1  5 15   8 16  2  6 20   3 23  4 19 18  17 21  7 13 22  14 11  9 10 12

   21 20 17 23 24  22 15 18  3  1  25  4 11  6  5  16  9 19  2  7  12 14 13  8 10
    7  4 25  1 10  21  8  9 11 19  15 17 16 24  3  12 14 23  6 13  22  5 18  2 20
   22  5 15 13  2  12  6 17 25  7  10 14  8 18 20   4  3 24 11  1   9 16 19 21 23
    6  8 18  9 11  14 23 24  2 16  12 13 22  1 19  21 17 20  5 10   4 25  3 15  7
   19 14 16  3 12  13 20  5 10  4   9  2 21  7 23  25 22  8 18 15   1 24 17  6 11

   12 15  4 20 19  23 13 21 14 24  17 18  1 10  8  11 16  6 25  2   5  9  7 22  3
   11 22 21 14 17   5  9  4 18 10  19 15  3 20  6   1 12 13  7 23  25  2 16 24  8
   13 16 10  2 25  17  1 22  8  3  23  5 12  4  7   9 19 15 24 21  20  6 11 18 14
    1 24  5  8  9   7 25  6 16 15  21 22 14  2 11  20 18 10 17  3  19  4 12 23 13
   23  6  7 18  3  11 19 12 20  2  24 25  9 16 13  22  4  5  8 14  15 21 10  1 17

   15  2 19 17  6   1  7 10  4 13   5 16 24 22 21   3 11 14 23 20  18  8 25 12  9
    4 10 14 22 18   3  2 20 21 11   8  6 23 15 25   5 13 16  9 12   7 17 24 19  1
    5 13  3 11  1  24 12  8  9 17  20 19 10 14  2  18  7 25 22  4   6 23 15 16 21
   25  9 24 12  8  16 18 23 15  5  13  7 17 11  1   6  2 21 10 19   3 22 20 14  4
   20  7 23 16 21   6 22 14 19 25   4  3 18  9 12   8 24  1 15 17  11 10  5 13  2

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Naked Pairs
   Hidden Pairs
   X Wing
   Naked Triples
   Hidden Triples
   XY-Wing
   Swordfish

159.026204109192

This is a long computation time.
As it seemed the problem was with the output-frills, I re-started the computations with output-simple, with no meaningful difference. So I did it with output-none. Again, the difference is not meaningful.

154.119117975235
1.3 GB




SudoRules solution:

(solve-grid-as-list
    10 11  .  .  4  19  .  1  .  .   .  . 15  . 22   7  .  . 16  6   8  . 21  . 25
    17  3 20  .  .   . 21 13  .  .   .  8 19 23  .   .  .  4  1 25   2  .  6  .  .
    14 18  2 25  .   .  .  . 22  .   . 21  .  .  .  13  . 12 19  9   .  7 23  3 24
     .  .  .  .  .   .  .  . 24  .  18  9  . 12  .   2  .  .  .  .   . 15  .  . 19
     .  . 12  .  .   2  . 16  .  6   7  .  .  5  4  24  8  .  . 18  13  1 14  . 22

     .  .  . 10 13   . 11 19  .  .  22  . 20  8 15  23  . 18  .  5   .  .  2 25  6
     3  .  .  . 14   9  . 25  . 22  11  .  5  .  .   .  6  . 20  .   .  .  .  . 18
     . 23  . 19  .   . 17  .  .  .   6 12  . 13  .  14  . 11  . 24   . 20  .  .  .
     . 21  .  .  .  18  .  3 23  .   .  .  . 25  .   . 10  9  4  8  24  .  . 17 15
    24  .  .  5  .   8 16  .  6  .   3 23  4 19  .  17 21  .  .  .   . 11  .  .  .

     .  .  . 23 24  22  .  .  .  1   .  .  .  6  5   .  9 19  2  7   . 14  .  8 10
     .  4 25  1 10   .  8  .  . 19   .  .  .  .  3   .  .  .  6  .   .  5 18  .  .
    22  5  .  .  .   .  6  . 25  .  10 14  . 18 20   .  3  . 11  .   .  .  . 21 23
     .  . 18  9  .   . 23  .  .  .  12  .  .  .  .  21  .  .  5  .   4 25  3 15  .
    19 14  .  3  .  13 20  5 10  .   9  2  .  .  .  25  .  .  . 15   1 24  .  .  .

     .  .  . 20  .   .  .  . 14 24   . 18  1 10  8   . 16  . 25  2   .  9  .  .  3
    11 22  .  . 17   5  9  4 18  .   . 15  .  .  .   . 12 13  . 23   .  .  . 24  .
     .  .  .  2  .  17  . 22  .  3   .  5  .  4  7   .  .  . 24  .   .  6  . 18  .
     1  .  .  .  .   . 25  . 16  .   .  . 14  . 11  20  . 10  .  3  19  .  .  . 13
    23  6  7  .  .  11  . 12  .  2  24 25  9  . 13   .  .  5  8  .  15 21  .  .  .

    15  . 19 17  6   1  .  .  4 13   5 16  .  . 21   3  . 14  . 20   .  . 25  .  .
     4  .  . 22  .   .  .  .  . 11   .  6  . 15 25   . 13  .  .  .   .  .  .  .  .
     5 13  3 11  .  24 12  8  . 17   .  .  . 14  .   .  7  .  .  .   . 23 15 16 21
     .  . 24  .  8  16 18 23  .  .   .  7 17 11  .   .  . 21 10  .   .  . 20  .  .
    20  . 23  . 21   6 22  .  . 25   4  . 18  .  .   .  .  1  . 17  11  .  .  .  2
)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(10 11 . . 4 19 . 1 . . . . 15 . 22 7 . . 16 6 8 . 21 . 25 17 3 20 . . . 21 13 . . . 8 19 23 . . . 4 1 25 2 . 6 . . 14 18 2 25 . . . . 22 . . 21 . . . 13 . 12 19 9 . 7 23 3 24 . . . . . . . . 24 . 18 9 . 12 . 2 . . . . . 15 . . 19 . . 12 . . 2 . 16 . 6 7 . . 5 4 24 8 . . 18 13 1 14 . 22 . . . 10 13 . 11 19 . . 22 . 20 8 15 23 . 18 . 5 . . 2 25 6 3 . . . 14 9 . 25 . 22 11 . 5 . . . 6 . 20 . . . . . 18 . 23 . 19 . . 17 . . . 6 12 . 13 . 14 . 11 . 24 . 20 . . . . 21 . . . 18 . 3 23 . . . . 25 . . 10 9 4 8 24 . . 17 15 24 . . 5 . 8 16 . 6 . 3 23 4 19 . 17 21 . . . . 11 . . . . . . 23 24 22 . . . 1 . . . 6 5 . 9 19 2 7 . 14 . 8 10 . 4 25 1 10 . 8 . . 19 . . . . 3 . . . 6 . . 5 18 . . 22 5 . . . . 6 . 25 . 10 14 . 18 20 . 3 . 11 . . . . 21 23 . . 18 9 . . 23 . . . 12 . . . . 21 . . 5 . 4 25 3 15 . 19 14 . 3 . 13 20 5 10 . 9 2 . . . 25 . . . 15 1 24 . . . . . . 20 . . . . 14 24 . 18 1 10 8 . 16 . 25 2 . 9 . . 3 11 22 . . 17 5 9 4 18 . . 15 . . . . 12 13 . 23 . . . 24 . . . . 2 . 17 . 22 . 3 . 5 . 4 7 . . . 24 . . 6 . 18 . 1 . . . . . 25 . 16 . . . 14 . 11 20 . 10 . 3 19 . . . 13 23 6 7 . . 11 . 12 . 2 24 25 9 . 13 . . 5 8 . 15 21 . . . 15 . 19 17 6 1 . . 4 13 5 16 . . 21 3 . 14 . 20 . . 25 . . 4 . . 22 . . . . . 11 . 6 . 15 25 . 13 . . . . . . . . 5 13 3 11 . 24 12 8 . 17 . . . 14 . . 7 . . . . 23 15 16 21 . . 24 . 8 16 18 23 . . . 7 17 11 . . . 21 10 . . . 20 . . 20 . 23 . 21 6 22 . . 25 4 . 18 . . . . 1 . 17 11 . . . 2)
293 givens, 1769 candidates
entering BRT
naked-single ==> r18c18 = 15
naked-single ==> r9c12 = 1
naked-single ==> r6c17 = 1
hidden-single-in-a-column ==> r22c11 = 8
hidden-single-in-a-block ==> r25c16 = 8
hidden-single-in-a-row ==> r21c17 = 11
hidden-single-in-a-column ==> r20c5 = 3
hidden-single-in-a-row ==> r19c8 = 6
hidden-single-in-a-column ==> r19c2 = 24
hidden-single-in-a-block ==> r18c13 = 12
hidden-single-in-a-column ==> r18c9 = 8
hidden-single-in-a-column ==> r7c9 = 13
hidden-single-in-a-row ==> r17c21 = 25
hidden-single-in-a-block ==> r15c24 = 6
hidden-single-in-a-block ==> r14c1 = 6
hidden-single-in-a-column ==> r15c15 = 23
hidden-single-in-a-row ==> r14c20 = 10
hidden-single-in-a-block ==> r2c16 = 10
hidden-single-in-a-block ==> r4c20 = 11
hidden-single-in-a-column ==> r18c20 = 21
hidden-single-in-a-column ==> r11c12 = 4
hidden-single-in-a-column ==> r11c11 = 25
hidden-single-in-a-block ==> r12c11 = 15
hidden-single-in-a-column ==> r11c8 = 18
hidden-single-in-a-column ==> r10c19 = 13
hidden-single-in-a-column ==> r8c1 = 18
hidden-single-in-a-column ==> r4c1 = 8
hidden-single-in-a-block ==> r3c10 = 8
hidden-single-in-a-block ==> r10c15 = 18
hidden-single-in-a-block ==> r8c15 = 9
hidden-single-in-a-column ==> r7c7 = 24
hidden-single-in-a-block ==> r8c9 = 1
hidden-single-in-a-block ==> r6c12 = 24
hidden-single-in-a-row ==> r5c13 = 25
hidden-single-in-a-row ==> r4c6 = 25
hidden-single-in-a-column ==> r22c6 = 3
hidden-single-in-a-column ==> r3c6 = 20
hidden-single-in-a-row ==> r3c7 = 4
hidden-single-in-a-column ==> r8c6 = 10
Starting_init_links_with_<Fact-67916>
1447 candidates, 13123 csp-links and 13123 links. Density = 1.25%
starting non trivial part of solution
Entering_level_W1_with_<Fact-117151>
whip[1]: r24n3{c22 .} ==> r25c22 ≠ 3
whip[1]: c16n5{r24 .} ==> r25c17 ≠ 5, r24c17 ≠ 5
whip[1]: r23n4{c20 .} ==> r24c20 ≠ 4, r24c16 ≠ 4, r24c17 ≠ 4
whip[1]: c21n18{r23 .} ==> r22c22 ≠ 18, r21c22 ≠ 18
whip[1]: r22n20{c9 .} ==> r23c9 ≠ 20
whip[1]: r25n16{c4 .} ==> r22c5 ≠ 16, r22c2 ≠ 16, r22c3 ≠ 16
whip[1]: r21n24{c14 .} ==> r25c15 ≠ 24, r22c13 ≠ 24, r25c14 ≠ 24
whip[1]: c11n21{r19 .} ==> r19c14 ≠ 21, r17c13 ≠ 21, r17c14 ≠ 21
whip[1]: c6n23{r19 .} ==> r19c10 ≠ 23
whip[1]: c4n18{r20 .} ==> r19c5 ≠ 18
whip[1]: r16n6{c18 .} ==> r17c16 ≠ 6
whip[1]: r14n13{c13 .} ==> r13c13 ≠ 13, r11c13 ≠ 13, r12c12 ≠ 13, r12c13 ≠ 13
whip[1]: r10n10{c24 .} ==> r7c24 ≠ 10, r7c21 ≠ 10, r7c22 ≠ 10, r7c23 ≠ 10
whip[1]: r6n17{c3 .} ==> r7c3 ≠ 17, r7c2 ≠ 17
whip[1]: c18n3{r5 .} ==> r5c19 ≠ 3, r4c19 ≠ 3
whip[1]: r3n6{c15 .} ==> r4c15 ≠ 6, r4c13 ≠ 6
whip[1]: b8n14{r9c15 .} ==> r9c10 ≠ 14, r9c7 ≠ 14
Entering_relation_bivalue_with_<Fact-117186>
Entering_level_S2_with_<Fact-117535>
hidden-pairs-in-a-row: r22{n20 n21}{c8 c9} ==> r22c9 ≠ 19, r22c9 ≠ 9, r22c9 ≠ 7, r22c9 ≠ 5, r22c9 ≠ 2, r22c8 ≠ 14, r22c8 ≠ 10, r22c8 ≠ 9, r22c8 ≠ 7, r22c8 ≠ 2
hidden-pairs-in-a-column: c17{n2 n25}{r8 r24} ==> r24c17 ≠ 22, r24c17 ≠ 19, r24c17 ≠ 15, r8c17 ≠ 22, r8c17 ≠ 15
finned-x-wing-in-rows: n25{r23 r10}{c18 c5} ==> r8c5 ≠ 25
hidden-single-in-a-row ==> r8c17 = 25
naked-single ==> r24c17 = 2
hidden-single-in-a-column ==> r23c18 = 25
hidden-single-in-a-column ==> r16c18 = 6
whip[1]: b19n7{r19c19 .} ==> r6c19 ≠ 7, r8c19 ≠ 7
hidden-pairs-in-a-block: b9{r7c18 r10c18}{n2 n7} ==> r10c18 ≠ 22, r7c18 ≠ 16
Entering_level_BC2_with_<Fact-117629>
Entering_level_W2_with_<Fact-118183>
whip[2]: c1n2{r12 r9} - b7n2{r9c7 .} ==> r12c8 ≠ 2
Entering_level_S3_with_<Fact-120124>
hidden-triplets-in-a-column: c20{n1 n13 n14}{r20 r13 r12} ==> r20c20 ≠ 22, r20c20 ≠ 19, r20c20 ≠ 4, r13c20 ≠ 16, r13c20 ≠ 12, r13c20 ≠ 4, r12c20 ≠ 22, r12c20 ≠ 16, r12c20 ≠ 12
hidden-single-in-a-column ==> r23c20 = 4
naked-triplets-in-a-block: b19{r17c16 r18c17 r20c20}{n1 n19 n14} ==> r20c17 ≠ 19, r20c17 ≠ 14, r20c16 ≠ 19, r20c16 ≠ 1, r18c16 ≠ 19, r18c16 ≠ 1, r17c19 ≠ 14, r16c16 ≠ 19
naked-single ==> r17c19 = 7
hidden-single-in-a-column ==> r4c19 = 14
hidden-single-in-a-block ==> r5c19 = 21
naked-single ==> r5c1 = 9
naked-single ==> r5c4 = 15
naked-single ==> r5c2 = 19
naked-single ==> r5c5 = 23
whip[1]: b4n15{r3c17 .} ==> r25c17 ≠ 15
whip[1]: c19n23{r22 .} ==> r22c18 ≠ 23
whip[1]: r20n19{c9 .} ==> r16c7 ≠ 19, r18c7 ≠ 19
hidden-pairs-in-a-block: b1{r4c3 r4c4}{n6 n21} ==> r4c4 ≠ 16, r4c4 ≠ 13, r4c4 ≠ 7, r4c3 ≠ 22, r4c3 ≠ 16, r4c3 ≠ 13, r4c3 ≠ 5, r4c3 ≠ 1
hidden-single-in-a-row ==> r4c13 = 13
hidden-single-in-a-column ==> r24c11 = 13
hidden-single-in-a-column ==> r14c12 = 13
hidden-single-in-a-block ==> r14c15 = 19
hidden-single-in-a-block ==> r14c14 = 1
hidden-single-in-a-column ==> r2c15 = 24
hidden-single-in-a-row ==> r1c4 = 24
hidden-single-in-a-block ==> r1c3 = 13
hidden-single-in-a-column ==> r13c4 = 13
naked-single ==> r13c20 = 1
naked-single ==> r20c20 = 14
naked-single ==> r12c20 = 13
naked-single ==> r18c17 = 19
naked-single ==> r17c16 = 1
naked-single ==> r25c17 = 24
naked-single ==> r22c18 = 16
hidden-single-in-a-column ==> r7c20 = 16
hidden-single-in-a-row ==> r22c23 = 24
hidden-single-in-a-row ==> r17c11 = 19
hidden-single-in-a-row ==> r16c5 = 19
hidden-single-in-a-block ==> r11c23 = 13
hidden-single-in-a-block ==> r9c22 = 13
hidden-single-in-a-block ==> r25c24 = 13
hidden-single-in-a-column ==> r9c15 = 14
hidden-single-in-a-column ==> r17c13 = 3
hidden-single-in-a-block ==> r17c15 = 6
hidden-single-in-a-block ==> r3c13 = 6
hidden-single-in-a-block ==> r5c12 = 11
hidden-single-in-a-row ==> r3c8 = 11
hidden-single-in-a-row ==> r3c17 = 15
whip[1]: b3n3{r1c14 .} ==> r1c7 ≠ 3, r1c9 ≠ 3, r1c18 ≠ 3
whip[1]: b3n10{r4c15 .} ==> r7c15 ≠ 10, r23c15 ≠ 10, r25c15 ≠ 10
naked-single ==> r25c15 = 12
naked-single ==> r24c15 = 1
naked-single ==> r23c15 = 2
naked-single ==> r7c15 = 17
naked-single ==> r7c12 = 10
naked-single ==> r23c11 = 20
hidden-single-in-a-column ==> r1c12 = 20
hidden-single-in-a-block ==> r1c14 = 3
naked-single ==> r25c14 = 9
naked-single ==> r25c19 = 15
hidden-single-in-a-block ==> r7c16 = 15
hidden-single-in-a-block ==> r9c16 = 19
hidden-single-in-a-block ==> r1c11 = 2
naked-single ==> r9c11 = 16
naked-single ==> r2c11 = 14
naked-single ==> r18c11 = 23
hidden-single-in-a-block ==> r25c12 = 3
hidden-single-in-a-block ==> r23c12 = 19
naked-single ==> r23c9 = 9
hidden-single-in-a-block ==> r3c11 = 1
hidden-single-in-a-block ==> r3c14 = 17
hidden-single-in-a-block ==> r12c12 = 17
naked-single ==> r19c12 = 22
naked-single ==> r19c14 = 2
hidden-single-in-a-row ==> r17c22 = 2
hidden-single-in-a-block ==> r12c24 = 2
hidden-single-in-a-column ==> r9c1 = 2
naked-single ==> r9c13 = 7
naked-single ==> r7c14 = 21
naked-single ==> r8c13 = 2
naked-single ==> r9c7 = 5
naked-single ==> r1c7 = 14
hidden-single-in-a-block ==> r10c8 = 2
naked-single ==> r10c18 = 7
naked-single ==> r7c18 = 2
hidden-single-in-a-column ==> r22c8 = 20
naked-single ==> r22c9 = 21
hidden-single-in-a-column ==> r20c9 = 20
naked-single ==> r20c14 = 16
naked-single ==> r17c14 = 20
hidden-single-in-a-block ==> r20c7 = 19
hidden-single-in-a-block ==> r18c7 = 1
hidden-single-in-a-block ==> r17c10 = 10
hidden-single-in-a-block ==> r16c7 = 13
hidden-single-in-a-block ==> r18c1 = 13
hidden-single-in-a-column ==> r24c1 = 25
hidden-single-in-a-column ==> r11c7 = 15
hidden-single-in-a-block ==> r11c9 = 3
naked-single ==> r5c9 = 17
hidden-single-in-a-block ==> r14c9 = 2
hidden-single-in-a-block ==> r13c5 = 2
hidden-single-in-a-block ==> r13c3 = 15
hidden-single-in-a-block ==> r12c9 = 11
hidden-single-in-a-row ==> r23c5 = 1
hidden-single-in-a-block ==> r4c2 = 1
hidden-single-in-a-block ==> r22c5 = 18
whip[1]: b16n10{r18c3 .} ==> r18c21 ≠ 10, r18c23 ≠ 10
whip[1]: r17n21{c4 .} ==> r16c1 ≠ 21, r16c3 ≠ 21, r19c3 ≠ 21, r19c4 ≠ 21
naked-single ==> r16c1 = 12
naked-single ==> r16c2 = 15
hidden-single-in-a-column ==> r8c8 = 15
hidden-single-in-a-block ==> r10c5 = 15
hidden-single-in-a-block ==> r10c2 = 25
hidden-single-in-a-block ==> r9c5 = 20
naked-single ==> r9c10 = 12
naked-single ==> r6c9 = 7
naked-single ==> r6c1 = 16
naked-single ==> r11c1 = 21
naked-single ==> r12c1 = 7
naked-single ==> r9c4 = 6
naked-single ==> r4c4 = 21
naked-single ==> r4c3 = 6
naked-single ==> r9c23 = 22
naked-single ==> r9c3 = 11
hidden-single-in-a-row ==> r11c13 = 11
hidden-single-in-a-block ==> r12c21 = 22
naked-single ==> r12c14 = 24
naked-single ==> r21c14 = 22
naked-single ==> r15c14 = 7
naked-single ==> r23c13 = 10
naked-single ==> r22c13 = 23
naked-single ==> r21c13 = 24
hidden-single-in-a-row ==> r21c19 = 23
hidden-single-in-a-row ==> r21c21 = 18
naked-single ==> r23c21 = 6
hidden-single-in-a-block ==> r24c16 = 6
hidden-single-in-a-block ==> r22c16 = 5
hidden-single-in-a-block ==> r22c19 = 9
hidden-single-in-a-block ==> r18c16 = 9
hidden-single-in-a-column ==> r19c5 = 9
hidden-single-in-a-block ==> r16c16 = 11
hidden-single-in-a-row ==> r16c24 = 22
hidden-single-in-a-block ==> r24c22 = 22
hidden-single-in-a-column ==> r10c20 = 22
naked-single ==> r8c19 = 3
naked-single ==> r6c19 = 12
hidden-single-in-a-column ==> r8c3 = 22
naked-single ==> r8c5 = 7
hidden-single-in-a-block ==> r2c4 = 7
hidden-single-in-a-block ==> r24c21 = 3
hidden-single-in-a-block ==> r6c22 = 3
hidden-single-in-a-column ==> r2c24 = 11
hidden-single-in-a-column ==> r17c3 = 21
hidden-single-in-a-column ==> r15c5 = 12
hidden-single-in-a-block ==> r14c5 = 11
hidden-single-in-a-block ==> r10c10 = 20
hidden-single-in-a-block ==> r18c5 = 25
whip[1]: r10n14{c25 .} ==> r6c21 ≠ 14
whip[1]: r8n8{c25 .} ==> r7c22 ≠ 8, r7c23 ≠ 8
whip[1]: b6n12{r7c4 .} ==> r7c21 ≠ 12, r7c22 ≠ 12, r7c23 ≠ 12, r7c24 ≠ 12
whip[1]: c3n9{r10 .} ==> r6c2 ≠ 9
naked-single ==> r6c2 = 17
whip[1]: c9n12{r2 .} ==> r2c6 ≠ 12
naked-single ==> r2c6 = 15
hidden-single-in-a-column ==> r24c9 = 15
hidden-single-in-a-block ==> r25c9 = 19
naked-single ==> r25c22 = 10
hidden-single-in-a-block ==> r24c10 = 5
hidden-single-in-a-block ==> r25c8 = 14
naked-single ==> r25c4 = 16
naked-single ==> r25c2 = 7
naked-single ==> r25c23 = 5
hidden-single-in-a-column ==> r19c10 = 15
whip[1]: r17n16{c25 .} ==> r18c21 ≠ 16, r18c23 ≠ 16, r18c25 ≠ 16
naked-single ==> r18c23 = 11
hidden-single-in-a-block ==> r15c25 = 11
whip[1]: c24n20{r5 .} ==> r4c21 ≠ 20
whip[1]: b2n9{r2c10 .} ==> r13c10 ≠ 9
naked-pairs-in-a-block: b20{r18c21 r18c25}{n14 n20} ==> r17c25 ≠ 14
hidden-single-in-a-row ==> r17c4 = 14
naked-single ==> r24c4 = 12
naked-single ==> r24c2 = 9
naked-single ==> r24c20 = 19
naked-single ==> r22c20 = 12
hidden-single-in-a-block ==> r7c2 = 12
hidden-single-in-a-column ==> r14c2 = 8
hidden-single-in-a-block ==> r11c2 = 20
hidden-single-in-a-column ==> r18c2 = 16
naked-single ==> r18c3 = 10
naked-single ==> r22c3 = 14
hidden-single-in-a-column ==> r18c21 = 20
naked-single ==> r18c25 = 14
naked-single ==> r24c25 = 4
naked-single ==> r24c24 = 14
hidden-single-in-a-block ==> r10c21 = 14
whip[1]: c21n10{r4 .} ==> r4c23 ≠ 10, r4c24 ≠ 10, r5c24 ≠ 10
naked-single ==> r5c24 = 20
naked-single ==> r5c18 = 3
naked-single ==> r5c7 = 10
naked-single ==> r4c8 = 7
naked-single ==> r4c7 = 3
naked-single ==> r4c10 = 23
naked-single ==> r16c8 = 21
naked-single ==> r12c8 = 9
naked-single ==> r16c11 = 17
naked-single ==> r19c11 = 21
naked-single ==> r21c8 = 10
naked-single ==> r21c2 = 2
naked-single ==> r21c7 = 7
naked-single ==> r22c7 = 2
naked-single ==> r22c2 = 10
whip[1]: c10n7{r14 .} ==> r13c6 ≠ 7, r14c6 ≠ 7
naked-single ==> r14c6 = 14
hidden-single-in-a-block ==> r6c10 = 14
hidden-single-in-a-row ==> r12c17 = 14
hidden-single-in-a-block ==> r12c18 = 23
naked-single ==> r1c18 = 17
hidden-single-in-a-block ==> r1c17 = 23
hidden-single-in-a-row ==> r12c25 = 20
whip[1]: c21n12{r13 .} ==> r13c22 ≠ 12, r13c23 ≠ 12
whip[1]: r17n8{c25 .} ==> r19c22 ≠ 8, r19c23 ≠ 8
hidden-single-in-a-column ==> r21c22 = 8
naked-pairs-in-a-column: c24{r4 r8}{n4 n5} ==> r20c24 ≠ 4, r19c24 ≠ 5, r19c24 ≠ 4, r7c24 ≠ 4, r1c24 ≠ 5
hidden-single-in-a-row ==> r1c9 = 5
naked-single ==> r2c9 = 12
hidden-single-in-a-block ==> r16c21 = 5
naked-single ==> r16c3 = 4
naked-single ==> r6c3 = 9
naked-single ==> r6c21 = 21
naked-single ==> r6c6 = 4
naked-single ==> r8c10 = 21
naked-single ==> r13c6 = 12
naked-single ==> r12c6 = 21
naked-single ==> r12c13 = 16
naked-single ==> r12c16 = 12
naked-single ==> r11c16 = 16
naked-single ==> r11c3 = 17
naked-single ==> r11c21 = 12
naked-single ==> r15c3 = 16
naked-single ==> r15c10 = 4
naked-single ==> r15c23 = 17
naked-single ==> r13c16 = 4
naked-single ==> r13c13 = 8
naked-single ==> r13c18 = 24
naked-single ==> r13c8 = 17
naked-single ==> r14c8 = 24
naked-single ==> r14c13 = 22
naked-single ==> r14c18 = 20
naked-single ==> r4c18 = 22
naked-single ==> r2c17 = 5
naked-single ==> r4c17 = 20
naked-single ==> r15c18 = 8
naked-single ==> r14c17 = 17
naked-single ==> r15c13 = 21
naked-single ==> r8c21 = 16
naked-single ==> r3c21 = 10
naked-single ==> r3c15 = 16
naked-single ==> r3c5 = 5
naked-single ==> r4c5 = 16
naked-single ==> r2c5 = 22
naked-single ==> r4c23 = 4
naked-single ==> r4c24 = 5
naked-single ==> r8c24 = 4
naked-single ==> r7c22 = 19
naked-single ==> r13c22 = 16
naked-single ==> r2c22 = 18
naked-single ==> r1c22 = 12
naked-single ==> r1c24 = 9
naked-single ==> r1c10 = 18
naked-single ==> r2c25 = 16
naked-single ==> r17c25 = 8
naked-single ==> r8c25 = 5
naked-single ==> r17c23 = 16
naked-single ==> r21c24 = 12
naked-single ==> r21c25 = 9
naked-single ==> r2c10 = 9
naked-single ==> r13c10 = 7
naked-single ==> r13c21 = 9
naked-single ==> r13c23 = 19
naked-single ==> r14c10 = 16
naked-single ==> r14c25 = 7
naked-single ==> r22c22 = 17
naked-single ==> r19c22 = 4
naked-single ==> r19c17 = 18
naked-single ==> r15c17 = 22
naked-single ==> r15c19 = 18
naked-single ==> r23c19 = 22
naked-single ==> r23c16 = 18
naked-single ==> r20c17 = 4
naked-single ==> r19c4 = 8
naked-single ==> r7c4 = 4
naked-single ==> r19c3 = 5
naked-single ==> r19c19 = 17
naked-single ==> r20c16 = 22
naked-single ==> r22c21 = 7
naked-single ==> r7c21 = 23
naked-single ==> r22c25 = 1
naked-single ==> r10c25 = 12
naked-single ==> r20c25 = 17
naked-single ==> r22c24 = 19
naked-single ==> r8c23 = 8
naked-single ==> r4c15 = 10
naked-single ==> r4c21 = 17
naked-single ==> r10c3 = 1
naked-single ==> r7c3 = 8
naked-single ==> r10c24 = 10
naked-single ==> r10c23 = 9
naked-single ==> r20c24 = 1
naked-single ==> r7c24 = 7
naked-single ==> r7c23 = 1
naked-single ==> r19c24 = 23
naked-single ==> r19c6 = 7
naked-single ==> r16c6 = 23
naked-single ==> r19c23 = 12
naked-single ==> r20c23 = 10
naked-single ==> r16c23 = 7
naked-single ==> r20c4 = 18
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = HT

10 11 13 24 04 19 14 01 05 18 02 20 15 03 22 07 23 17 16 06 08 12 21 09 25
17 03 20 07 22 15 21 13 12 09 14 08 19 23 24 10 05 04 01 25 02 18 06 11 16
14 18 02 25 05 20 04 11 22 08 01 21 06 17 16 13 15 12 19 09 10 07 23 03 24
08 01 06 21 16 25 03 07 24 23 18 09 13 12 10 02 20 22 14 11 17 15 04 05 19
09 19 12 15 23 02 10 16 17 06 07 11 25 05 04 24 08 03 21 18 13 01 14 20 22
16 17 09 10 13 04 11 19 07 14 22 24 20 08 15 23 01 18 12 05 21 03 02 25 06
03 12 08 04 14 09 24 25 13 22 11 10 05 21 17 15 06 02 20 16 23 19 01 07 18
18 23 22 19 07 10 17 15 01 21 06 12 02 13 09 14 25 11 03 24 16 20 08 04 05
02 21 11 06 20 18 05 03 23 12 16 01 07 25 14 19 10 09 04 08 24 13 22 17 15
24 25 01 05 15 08 16 02 06 20 03 23 04 19 18 17 21 07 13 22 14 11 09 10 12
21 20 17 23 24 22 15 18 03 01 25 04 11 06 05 16 09 19 02 07 12 14 13 08 10
07 04 25 01 10 21 08 09 11 19 15 17 16 24 03 12 14 23 06 13 22 05 18 02 20
22 05 15 13 02 12 06 17 25 07 10 14 08 18 20 04 03 24 11 01 09 16 19 21 23
06 08 18 09 11 14 23 24 02 16 12 13 22 01 19 21 17 20 05 10 04 25 03 15 07
19 14 16 03 12 13 20 05 10 04 09 02 21 07 23 25 22 08 18 15 01 24 17 06 11
12 15 04 20 19 23 13 21 14 24 17 18 01 10 08 11 16 06 25 02 05 09 07 22 03
11 22 21 14 17 05 09 04 18 10 19 15 03 20 06 01 12 13 07 23 25 02 16 24 08
13 16 10 02 25 17 01 22 08 03 23 05 12 04 07 09 19 15 24 21 20 06 11 18 14
01 24 05 08 09 07 25 06 16 15 21 22 14 02 11 20 18 10 17 03 19 04 12 23 13
23 06 07 18 03 11 19 12 20 02 24 25 09 16 13 22 04 05 08 14 15 21 10 01 17
15 02 19 17 06 01 07 10 04 13 05 16 24 22 21 03 11 14 23 20 18 08 25 12 09
04 10 14 22 18 03 02 20 21 11 08 06 23 15 25 05 13 16 09 12 07 17 24 19 01
05 13 03 11 01 24 12 08 09 17 20 19 10 14 02 18 07 25 22 04 06 23 15 16 21
25 09 24 12 08 16 18 23 15 05 13 07 17 11 01 06 02 21 10 19 03 22 20 14 04
20 07 23 16 21 06 22 14 19 25 04 03 18 09 12 08 24 01 15 17 11 10 05 13 02
Puzzle (10 11 . . 4 19 . 1 . . . . 15 . 22 7 . . 16 6 8 . 21 . 25 17 3 20 . . . 21 13 . . . 8 19 23 . . . 4 1 25 2 . 6 . . 14 18 2 25 . . . . 22 . . 21 . . . 13 . 12 19 9 . 7 23 3 24 . . . . . . . . 24 . 18 9 . 12 . 2 . . . . . 15 . . 19 . . 12 . . 2 . 16 . 6 7 . . 5 4 24 8 . . 18 13 1 14 . 22 . . . 10 13 . 11 19 . . 22 . 20 8 15 23 . 18 . 5 . . 2 25 6 3 . . . 14 9 . 25 . 22 11 . 5 . . . 6 . 20 . . . . . 18 . 23 . 19 . . 17 . . . 6 12 . 13 . 14 . 11 . 24 . 20 . . . . 21 . . . 18 . 3 23 . . . . 25 . . 10 9 4 8 24 . . 17 15 24 . . 5 . 8 16 . 6 . 3 23 4 19 . 17 21 . . . . 11 . . . . . . 23 24 22 . . . 1 . . . 6 5 . 9 19 2 7 . 14 . 8 10 . 4 25 1 10 . 8 . . 19 . . . . 3 . . . 6 . . 5 18 . . 22 5 . . . . 6 . 25 . 10 14 . 18 20 . 3 . 11 . . . . 21 23 . . 18 9 . . 23 . . . 12 . . . . 21 . . 5 . 4 25 3 15 . 19 14 . 3 . 13 20 5 10 . 9 2 . . . 25 . . . 15 1 24 . . . . . . 20 . . . . 14 24 . 18 1 10 8 . 16 . 25 2 . 9 . . 3 11 22 . . 17 5 9 4 18 . . 15 . . . . 12 13 . 23 . . . 24 . . . . 2 . 17 . 22 . 3 . 5 . 4 7 . . . 24 . . 6 . 18 . 1 . . . . . 25 . 16 . . . 14 . 11 20 . 10 . 3 19 . . . 13 23 6 7 . . 11 . 12 . 2 24 25 9 . 13 . . 5 8 . 15 21 . . . 15 . 19 17 6 1 . . 4 13 5 16 . . 21 3 . 14 . 20 . . 25 . . 4 . . 22 . . . . . 11 . 6 . 15 25 . 13 . . . . . . . . 5 13 3 11 . 24 12 8 . 17 . . . 14 . . 7 . . . . 23 15 16 21 . . 24 . 8 16 18 23 . . . 7 17 11 . . . 21 10 . . . 20 . . 20 . 23 . 21 6 22 . . 25 4 . 18 . . . . 1 . 17 11 . . . 2) :
init-time = 37.17s, solve-time = 12.52s, total-time = 49.68s
nb-facts=<Fact-121216>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1,24 GB

