
(load "puzzles/grid5x5-p9.clp")
(reset)
(progn
    (bind ?t0 (time))
    (run)
    (printout t (- (time) ?t0) crlf)
)


The puzzle is:

    * 13  * 18  *   *  5  1  9  *   *  * 19  2  3   *  *  * 12  *  20 22  *  * 24
    *  * 22 12  *   4 11  *  *  *   5 17  *  * 15  18 21  1  * 19   *  *  *  *  2
    *  9  *  *  2   *  * 15 22  *   *  *  *  *  6   *  *  5  * 16   *  3  * 11  4
   11  *  * 19 23  24  7  6  *  8  13  1  * 25  *   *  *  *  *  3   * 15 14  *  *
    *  *  * 14 21   *  *  * 17  3  22  * 10 23  *   8  *  *  * 15   *  *  *  *  *

   18  * 14  *  *   3  *  *  4  *  15  9 23 11  *   2  *  *  *  *   5  *  *  * 13
    *  * 11  9  *   5  * 14 15  *   *  6  * 24  *  23 25 20 19 21   2  *  4  8  *
   24  *  *  *  *  10  8  * 20 12   3 21  *  * 19   7  *  *  *  *  23  *  *  *  *
    *  *  *  *  *   * 21  * 24  6   4  *  *  7 10  14  1  *  9  *   *  *  *  * 11
   23  4 19  5  *   * 17  9 18  *   *  2 25  *  *   *  * 22  *  *   * 20 15  *  1

    6  *  3  * 11  13  *  2  *  7  23  *  4 12 22   *  5  * 17  *   *  * 20  *  *
    *  *  *  * 17   6  *  *  * 20  24  8  *  *  *  15  *  *  *  *   *  1  *  *  *
    * 15  5 16  *   *  9  * 10 18   6  *  *  * 14  19  4  *  7  *   * 25  3 23  *
    *  *  *  4  *   *  *  *  * 19   *  *  *  1  5  13  *  *  * 14  17  *  *  *  *
    *  * 24  *  *   * 25  *  8  *   9 16  3  * 17  22  *  6  * 10  12  * 11  * 21

    1  * 10 23  *   *  * 24  *  *   *  * 16 20  *   * 14  7  5  *   *  4  2 18 12
    4  *  *  *  *   * 22  *  2  5   8 18  *  *  1  24  6  *  3  *   *  *  *  *  *
    *  *  *  * 12   *  *  *  * 13   7  *  *  4 24  25 11  * 10 18   *  *  *  *  3
    *  3  9  * 15  16 18  7 19 10   *  5  *  6  *   *  2 17  * 23   * 11 22  *  *
   22  *  *  *  5   *  *  *  *  4   * 23 11 10  2   * 12  *  * 20   *  *  9  * 19

    *  *  *  *  *  22  *  *  * 23   * 19 17  *  4  21 13  *  *  *   9  8  *  *  *
    *  * 23 10  *  17  *  *  *  *   * 15  * 21 16   5  *  8 18  2   4 24  *  *  7
    2 11  * 21  *  15  *  5  *  *  20  *  *  *  *   * 22 10  *  *   1  *  * 19  *
   15  *  *  *  *   8  * 18 13 24  10  *  *  3 23   *  *  *  1  7   * 21  6  *  *
    5  *  *  8  6   *  4  *  *  *  12  7  1  *  *   * 15  9 20  *   * 10  * 14  *

The solution is:

    8 13 15 18  7  14  5  1  9 25  16  4 19  2  3   6 10 23 12 11  20 22 21 17 24
    3  6 22 12 24   4 11 20 23 16   5 17  7  9 15  18 21  1 14 19  25 13  8 10  2
   25  9  1 17  2  19 10 15 22 21  18 12  8 14  6  20 24  5 13 16   7  3 23 11  4
   11 10  4 19 23  24  7  6 12  8  13  1 20 25 21  17  9  2 22  3  16 15 14  5 18
   16  5 20 14 21  18  2 13 17  3  22 24 10 23 11   8  7 25  4 15   6 19  1 12  9

   18 21 14  7 22   3 19 25  4  1  15  9 23 11 20   2 17 24 16  8   5 12 10  6 13
   10 16 11  9  3   5 13 14 15 22   1  6 18 24 12  23 25 20 19 21   2  7  4  8 17
   24  2  6 15  1  10  8 16 20 12   3 21  5 17 19   7 18 13 11  4  23 14 25  9 22
   17 12  8 20 25   2 21 23 24  6   4 22 13  7 10  14  1 15  9  5  18 16 19  3 11
   23  4 19  5 13   7 17  9 18 11  14  2 25 16  8  10  3 22  6 12  24 20 15 21  1

    6  8  3 25 11  13 24  2 21  7  23 10  4 12 22  16  5 18 17  1  19  9 20 15 14
   13 22 12  2 17   6 14 11  5 20  24  8 21 19  7  15 23  3 25  9  10  1 18  4 16
   21 15  5 16 20   1  9 17 10 18   6 11  2 13 14  19  4 12  7 24  22 25  3 23  8
    9 23 18  4 10  12 16 22  3 19  25 20 15  1  5  13  8 11 21 14  17  2 24  7  6
    7 14 24  1 19  23 25  4  8 15   9 16  3 18 17  22 20  6  2 10  12  5 11 13 21

    1 25 10 23  8  11 15 24  6 17  19  3 16 20 13   9 14  7  5 22  21  4  2 18 12
    4 17 21 11 16  20 22 12  2  5   8 18  9 15  1  24  6 19  3 13  14 23  7 25 10
   19 20  2  6 12   9 23  8  1 13   7 14 22  4 24  25 11 21 10 18  15 17  5 16  3
   14  3  9 24 15  16 18  7 19 10  21  5 12  6 25   4  2 17  8 23  13 11 22  1 20
   22 18  7 13  5  25  3 21 14  4  17 23 11 10  2   1 12 16 15 20   8  6  9 24 19

   12  7 25  3 18  22  1 10 11 23   2 19 17  5  4  21 13 14 24  6   9  8 16 20 15
   20  1 23 10 14  17 12  3 25  9  11 15  6 21 16   5 19  8 18  2   4 24 13 22  7
    2 11 16 21  4  15  6  5  7 14  20 13 24  8  9   3 22 10 23 17   1 18 12 19 25
   15 19 17 22  9   8 20 18 13 24  10 25 14  3 23  12 16  4  1  7  11 21  6  2  5
    5 24 13  8  6  21  4 19 16  2  12  7  1 22 18  11 15  9 20 25   3 10 17 14 23

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

241.648947000504

1,35 GB


with SudoRules:

(solve-grid-as-list
 . 13  . 18  .   .  5  1  9  .   .  . 19  2  3   .  .  . 12  .  20 22  .  . 24
 .  . 22 12  .   4 11  .  .  .   5 17  .  . 15  18 21  1  . 19   .  .  .  .  2
 .  9  .  .  2   .  . 15 22  .   .  .  .  .  6   .  .  5  . 16   .  3  . 11  4
11  .  . 19 23  24  7  6  .  8  13  1  . 25  .   .  .  .  .  3   . 15 14  .  .
 .  .  . 14 21   .  .  . 17  3  22  . 10 23  .   8  .  .  . 15   .  .  .  .  .

18  . 14  .  .   3  .  .  4  .  15  9 23 11  .   2  .  .  .  .   5  .  .  . 13
 .  . 11  9  .   5  . 14 15  .   .  6  . 24  .  23 25 20 19 21   2  .  4  8  .
24  .  .  .  .  10  8  . 20 12   3 21  .  . 19   7  .  .  .  .  23  .  .  .  .
 .  .  .  .  .   . 21  . 24  6   4  .  .  7 10  14  1  .  9  .   .  .  .  . 11
23  4 19  5  .   . 17  9 18  .   .  2 25  .  .   .  . 22  .  .   . 20 15  .  1

 6  .  3  . 11  13  .  2  .  7  23  .  4 12 22   .  5  . 17  .   .  . 20  .  .
 .  .  .  . 17   6  .  .  . 20  24  8  .  .  .  15  .  .  .  .   .  1  .  .  .
 . 15  5 16  .   .  9  . 10 18   6  .  .  . 14  19  4  .  7  .   . 25  3 23  .
 .  .  .  4  .   .  .  .  . 19   .  .  .  1  5  13  .  .  . 14  17  .  .  .  .
 .  . 24  .  .   . 25  .  8  .   9 16  3  . 17  22  .  6  . 10  12  . 11  . 21

 1  . 10 23  .   .  . 24  .  .   .  . 16 20  .   . 14  7  5  .   .  4  2 18 12
 4  .  .  .  .   . 22  .  2  5   8 18  .  .  1  24  6  .  3  .   .  .  .  .  .
 .  .  .  . 12   .  .  .  . 13   7  .  .  4 24  25 11  . 10 18   .  .  .  .  3
 .  3  9  . 15  16 18  7 19 10   .  5  .  6  .   .  2 17  . 23   . 11 22  .  .
22  .  .  .  5   .  .  .  .  4   . 23 11 10  2   . 12  .  . 20   .  .  9  . 19

 .  .  .  .  .  22  .  .  . 23   . 19 17  .  4  21 13  .  .  .   9  8  .  .  .
 .  . 23 10  .  17  .  .  .  .   . 15  . 21 16   5  .  8 18  2   4 24  .  .  7
 2 11  . 21  .  15  .  5  .  .  20  .  .  .  .   . 22 10  .  .   1  .  . 19  .
15  .  .  .  .   8  . 18 13 24  10  .  .  3 23   .  .  .  1  7   . 21  6  .  .
 5  .  .  8  6   .  4  .  .  .  12  7  1  .  .   . 15  9 20  .   . 10  . 14  .

)
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(. 13 . 18 . . 5 1 9 . . . 19 2 3 . . . 12 . 20 22 . . 24 . . 22 12 . 4 11 . . . 5 17 . . 15 18 21 1 . 19 . . . . 2 . 9 . . 2 . . 15 22 . . . . . 6 . . 5 . 16 . 3 . 11 4 11 . . 19 23 24 7 6 . 8 13 1 . 25 . . . . . 3 . 15 14 . . . . . 14 21 . . . 17 3 22 . 10 23 . 8 . . . 15 . . . . . 18 . 14 . . 3 . . 4 . 15 9 23 11 . 2 . . . . 5 . . . 13 . . 11 9 . 5 . 14 15 . . 6 . 24 . 23 25 20 19 21 2 . 4 8 . 24 . . . . 10 8 . 20 12 3 21 . . 19 7 . . . . 23 . . . . . . . . . . 21 . 24 6 4 . . 7 10 14 1 . 9 . . . . . 11 23 4 19 5 . . 17 9 18 . . 2 25 . . . . 22 . . . 20 15 . 1 6 . 3 . 11 13 . 2 . 7 23 . 4 12 22 . 5 . 17 . . . 20 . . . . . . 17 6 . . . 20 24 8 . . . 15 . . . . . 1 . . . . 15 5 16 . . 9 . 10 18 6 . . . 14 19 4 . 7 . . 25 3 23 . . . . 4 . . . . . 19 . . . 1 5 13 . . . 14 17 . . . . . . 24 . . . 25 . 8 . 9 16 3 . 17 22 . 6 . 10 12 . 11 . 21 1 . 10 23 . . . 24 . . . . 16 20 . . 14 7 5 . . 4 2 18 12 4 . . . . . 22 . 2 5 8 18 . . 1 24 6 . 3 . . . . . . . . . . 12 . . . . 13 7 . . 4 24 25 11 . 10 18 . . . . 3 . 3 9 . 15 16 18 7 19 10 . 5 . 6 . . 2 17 . 23 . 11 22 . . 22 . . . 5 . . . . 4 . 23 11 10 2 . 12 . . 20 . . 9 . 19 . . . . . 22 . . . 23 . 19 17 . 4 21 13 . . . 9 8 . . . . . 23 10 . 17 . . . . . 15 . 21 16 5 . 8 18 2 4 24 . . 7 2 11 . 21 . 15 . 5 . . 20 . . . . . 22 10 . . 1 . . 19 . 15 . . . . 8 . 18 13 24 10 . . 3 23 . . . 1 7 . 21 6 . . 5 . . 8 6 . 4 . . . 12 7 1 . . . 15 9 20 . . 10 . 14 .)
284 givens, 1952 candidates
entering BRT
naked-single ==> r16c16 = 9
naked-single ==> r17c20 = 13
naked-single ==> r13c14 = 13
hidden-single-in-a-column ==> r25c10 = 2
hidden-single-in-a-column ==> r5c7 = 2
hidden-single-in-a-column ==> r9c6 = 2
hidden-single-in-a-block ==> r9c8 = 23
naked-single ==> r15c8 = 4
hidden-single-in-a-row ==> r12c24 = 4
hidden-single-in-a-block ==> r23c19 = 23
naked-single ==> r15c19 = 2
hidden-single-in-a-block ==> r4c18 = 2
hidden-single-in-a-row ==> r13c13 = 2
hidden-single-in-a-column ==> r21c11 = 2
hidden-single-in-a-block ==> r24c24 = 2
hidden-single-in-a-block ==> r14c22 = 2
hidden-single-in-a-column ==> r17c4 = 11
hidden-single-in-a-column ==> r16c20 = 22
hidden-single-in-a-column ==> r16c12 = 3
hidden-single-in-a-column ==> r16c11 = 19
hidden-single-in-a-column ==> r16c10 = 17
hidden-single-in-a-column ==> r15c10 = 15
hidden-single-in-a-block ==> r14c13 = 15
hidden-single-in-a-block ==> r17c14 = 15
hidden-single-in-a-block ==> r20c11 = 17
hidden-single-in-a-block ==> r8c14 = 17
hidden-single-in-a-column ==> r21c14 = 5
hidden-single-in-a-block ==> r24c25 = 5
hidden-single-in-a-column ==> r25c14 = 22
hidden-single-in-a-column ==> r13c8 = 17
hidden-single-in-a-column ==> r12c9 = 5
hidden-single-in-a-column ==> r10c6 = 7
hidden-single-in-a-column ==> r7c11 = 1
hidden-single-in-a-block ==> r6c2 = 21
hidden-single-in-a-row ==> r4c19 = 22
hidden-single-in-a-row ==> r1c3 = 15
Starting_init_links_with_<Fact-68087>
1679 candidates, 17742 csp-links and 17742 links. Density = 1.26%
starting non trivial part of solution
Entering_level_W1_with_<Fact-134746>
whip[1]: c17n19{r24 .} ==> r24c18 ≠ 19
whip[1]: r19n12{c15 .} ==> r17c13 ≠ 12
whip[1]: c20n9{r12 .} ==> r14c17 ≠ 9, r12c17 ≠ 9
whip[1]: c20n1{r13 .} ==> r11c16 ≠ 1
naked-single ==> r11c16 = 16
naked-single ==> r20c16 = 1
naked-single ==> r19c16 = 4
hidden-single-in-a-row ==> r4c3 = 4
hidden-single-in-a-row ==> r19c24 = 1
whip[1]: c10n22{r7 .} ==> r8c8 ≠ 22, r6c8 ≠ 22
whip[1]: r7n3{c5 .} ==> r10c5 ≠ 3, r9c1 ≠ 3, r9c4 ≠ 3, r9c5 ≠ 3
hidden-single-in-a-column ==> r21c4 = 3
whip[1]: r9n19{c23 .} ==> r6c23 ≠ 19, r6c22 ≠ 19
whip[1]: r8n1{c5 .} ==> r6c5 ≠ 1, r6c4 ≠ 1
whip[1]: c16n20{r4 .} ==> r5c17 ≠ 20, r3c17 ≠ 20, r4c17 ≠ 20
whip[1]: c10n21{r3 .} ==> r4c9 ≠ 21, r1c6 ≠ 21, r3c6 ≠ 21
whip[1]: b18n9{r18c13 .} ==> r24c13 ≠ 9, r2c13 ≠ 9, r4c13 ≠ 9, r22c13 ≠ 9, r23c13 ≠ 9
naked-single ==> r24c13 = 14
hidden-single-in-a-row ==> r24c5 = 9
hidden-single-in-a-row ==> r22c10 = 9
hidden-single-in-a-column ==> r6c10 = 1
hidden-single-in-a-block ==> r7c10 = 22
hidden-single-in-a-column ==> r10c10 = 11
hidden-single-in-a-block ==> r23c5 = 4
hidden-single-in-a-block ==> r24c18 = 4
whip[1]: r23n14{c10 .} ==> r21c7 ≠ 14, r21c9 ≠ 14, r22c7 ≠ 14, r22c9 ≠ 14
whip[1]: r22n14{c5 .} ==> r21c1 ≠ 14, r21c2 ≠ 14, r21c5 ≠ 14
whip[1]: b7n25{r8c8 .} ==> r2c8 ≠ 25, r5c8 ≠ 25, r17c8 ≠ 25, r20c8 ≠ 25, r21c8 ≠ 25, r22c8 ≠ 25, r25c8 ≠ 25
whip[1]: r8n14{c25 .} ==> r10c21 ≠ 14
whip[1]: b19n8{r20c19 .} ==> r14c19 ≠ 8, r6c19 ≠ 8, r10c19 ≠ 8
whip[1]: b13n20{r14c12 .} ==> r9c12 ≠ 20, r3c12 ≠ 20, r5c12 ≠ 20
whip[1]: b23n24{r23c13 .} ==> r23c20 ≠ 24
whip[1]: b13n7{r12c15 .} ==> r12c23 ≠ 7, r12c1 ≠ 7, r12c2 ≠ 7, r12c3 ≠ 7, r12c4 ≠ 7, r12c21 ≠ 7
whip[1]: b8n16{r10c14 .} ==> r10c24 ≠ 16, r10c5 ≠ 16, r10c17 ≠ 16, r10c19 ≠ 16, r10c21 ≠ 16
Entering_relation_bivalue_with_<Fact-134801>
Entering_level_S2_with_<Fact-135128>
naked-pairs-in-a-block: b23{r22c11 r24c12}{n11 n25} ==> r25c15 ≠ 25, r25c15 ≠ 11, r23c15 ≠ 25, r23c12 ≠ 25
naked-pairs-in-a-column: c14{r12 r15}{n18 n19} ==> r23c14 ≠ 18, r3c14 ≠ 18
whip[1]: c14n18{r15 .} ==> r12c13 ≠ 18, r12c15 ≠ 18, r14c11 ≠ 18
hidden-single-in-a-column ==> r3c11 = 18
hidden-single-in-a-block ==> r5c6 = 18
hidden-pairs-in-a-row: r10{n14 n16}{c11 c14} ==> r10c14 ≠ 8
hidden-pairs-in-a-column: c15{n7 n11}{r5 r12} ==> r12c15 ≠ 25, r12c15 ≠ 21, r5c15 ≠ 20, r5c15 ≠ 12, r5c15 ≠ 9
whip[1]: c15n25{r19 .} ==> r19c11 ≠ 25
Entering_level_BC2_with_<Fact-135222>
Entering_level_W2_with_<Fact-135750>
Entering_level_S3_with_<Fact-137782>
hidden-triplets-in-a-block: b25{r22c24 r25c21 r24c21}{n3 n11 n22} ==> r25c21 ≠ 25, r25c21 ≠ 18, r25c21 ≠ 16, r25c21 ≠ 13, r24c21 ≠ 25, r24c21 ≠ 16, r22c24 ≠ 25, r22c24 ≠ 20, r22c24 ≠ 13, r22c24 ≠ 12
whip[1]: b25n20{r21c25 .} ==> r21c1 ≠ 20, r21c2 ≠ 20, r21c3 ≠ 20, r21c5 ≠ 20, r21c7 ≠ 20, r21c8 ≠ 20
hidden-pairs-in-a-row: r21{n15 n20}{c24 c25} ==> r21c25 ≠ 25, r21c25 ≠ 18, r21c25 ≠ 16, r21c24 ≠ 25, r21c24 ≠ 16, r21c24 ≠ 12
hidden-triplets-in-a-block: b18{r19c15 r19c13 r16c15}{n12 n13 n25} ==> r19c15 ≠ 21, r19c13 ≠ 21, r16c15 ≠ 21
hidden-single-in-a-column ==> r4c15 = 21
hidden-single-in-a-block ==> r2c14 = 9
naked-single ==> r23c14 = 8
naked-single ==> r3c14 = 14
naked-single ==> r10c14 = 16
naked-single ==> r10c11 = 14
naked-single ==> r19c11 = 21
naked-single ==> r17c13 = 9
naked-single ==> r18c13 = 22
naked-single ==> r18c12 = 14
naked-single ==> r19c19 = 8
hidden-single-in-a-block ==> r9c12 = 22
hidden-single-in-a-column ==> r23c12 = 13
naked-single ==> r22c13 = 6
naked-single ==> r25c15 = 18
naked-single ==> r23c13 = 24
naked-single ==> r23c15 = 9
hidden-single-in-a-block ==> r18c6 = 9
hidden-single-in-a-block ==> r12c13 = 21
hidden-single-in-a-block ==> r12c15 = 7
naked-single ==> r5c15 = 11
naked-single ==> r1c11 = 16
naked-single ==> r1c12 = 4
hidden-single-in-a-block ==> r5c19 = 4
hidden-single-in-a-block ==> r8c20 = 4
hidden-single-in-a-block ==> r9c20 = 5
hidden-single-in-a-block ==> r8c13 = 5
hidden-single-in-a-column ==> r6c15 = 20
hidden-single-in-a-column ==> r10c15 = 8
whip[1]: r9n8{c5 .} ==> r6c5 ≠ 8
whip[1]: b9n17{r6c20 .} ==> r6c4 ≠ 17, r6c22 ≠ 17, r6c23 ≠ 17, r6c24 ≠ 17
whip[1]: c6n1{r15 .} ==> r11c7 ≠ 1, r11c9 ≠ 1
whip[1]: b25n13{r25c23 .} ==> r2c23 ≠ 13, r3c23 ≠ 13, r5c23 ≠ 13, r12c23 ≠ 13
whip[1]: c12n12{r5 .} ==> r3c13 ≠ 12, r4c13 ≠ 12
naked-single ==> r4c13 = 20
hidden-single-in-a-block ==> r3c16 = 20
hidden-single-in-a-column ==> r17c6 = 20
hidden-single-in-a-block ==> r17c8 = 12
whip[1]: b17n14{r20c9 .} ==> r20c2 ≠ 14, r20c21 ≠ 14, r20c22 ≠ 14
whip[1]: r17n23{c25 .} ==> r18c22 ≠ 23, r18c23 ≠ 23
whip[1]: c7n20{r24 .} ==> r22c8 ≠ 20
whip[1]: c25n8{r14 .} ==> r11c21 ≠ 8, r13c21 ≠ 8, r14c23 ≠ 8
hidden-pairs-in-a-row: r18{n1 n23}{c7 c9} ==> r18c9 ≠ 21, r18c9 ≠ 6, r18c7 ≠ 15, r18c7 ≠ 6
hidden-pairs-in-a-row: r6{n8 n17}{c17 c20} ==> r6c20 ≠ 24, r6c20 ≠ 12, r6c20 ≠ 6, r6c17 ≠ 24, r6c17 ≠ 16, r6c17 ≠ 10
whip[1]: b9n10{r10c17 .} ==> r10c5 ≠ 10, r10c21 ≠ 10, r10c24 ≠ 10
naked-single ==> r10c5 = 13
biv-chain[2]: c19n21{r20 r14} - r11n21{c18 c9} ==> r20c9 ≠ 21
whip[2]: b8n12{r7c15 r9c13} - b6n12{r9c1 .} ==> r7c22 ≠ 12
whip[2]: r10n12{c20 c24} - r6n12{c22 .} ==> r9c18 ≠ 12
whip[2]: r6n12{c24 c18} - r10n12{c16 .} ==> r9c24 ≠ 12, r9c22 ≠ 12, r9c23 ≠ 12
hidden-triplets-in-a-block: b9{r8c19 r8c18 r9c18}{n11 n13 n15} ==> r9c18 ≠ 18, r9c18 ≠ 16, r9c18 ≠ 3, r8c19 ≠ 16, r8c19 ≠ 6, r8c18 ≠ 18, r8c18 ≠ 16
hidden-single-in-a-block ==> r8c17 = 18
hidden-single-in-a-column ==> r24c17 = 16
hidden-single-in-a-block ==> r22c17 = 19
whip[1]: b21n19{r25c2 .} ==> r11c2 ≠ 19, r12c2 ≠ 19, r15c2 ≠ 19, r17c2 ≠ 19, r18c2 ≠ 19
whip[1]: r11n19{c22 .} ==> r12c21 ≠ 19, r12c23 ≠ 19, r15c22 ≠ 19
whip[1]: b24n3{r25c16 .} ==> r10c16 ≠ 3
hidden-single-in-a-block ==> r10c17 = 3
naked-single ==> r12c17 = 23
naked-single ==> r15c17 = 20
hidden-single-in-a-block ==> r1c18 = 23
hidden-single-in-a-block ==> r2c19 = 14
hidden-single-in-a-block ==> r21c18 = 14
hidden-single-in-a-block ==> r10c16 = 10
naked-single ==> r4c16 = 17
hidden-single-in-a-column ==> r6c17 = 17
naked-single ==> r6c20 = 8
hidden-single-in-a-block ==> r14c17 = 8
whip[1]: c17n24{r5 .} ==> r3c19 ≠ 24, r5c18 ≠ 24
whip[1]: r24n17{c4 .} ==> r23c3 ≠ 17, r25c2 ≠ 17, r25c3 ≠ 17
whip[1]: c16n12{r24 .} ==> r21c20 ≠ 12, r23c20 ≠ 12
whip[1]: b4n6{r1c20 .} ==> r1c24 ≠ 6
whip[1]: r2n24{c5 .} ==> r3c4 ≠ 24, r5c2 ≠ 24
whip[1]: c4n24{r20 .} ==> r20c2 ≠ 24
whip[1]: b9n16{r6c19 .} ==> r6c5 ≠ 16, r6c7 ≠ 16, r6c8 ≠ 16, r6c22 ≠ 16, r6c23 ≠ 16, r6c24 ≠ 16
naked-single ==> r6c7 = 19
naked-single ==> r6c8 = 25
hidden-single-in-a-row ==> r24c2 = 19
naked-pairs-in-a-block: b4{r3c19 r5c18}{n13 n25} ==> r1c20 ≠ 25
naked-pairs-in-a-row: r25{c16 c21}{n3 n11} ==> r25c20 ≠ 11, r25c9 ≠ 11, r25c9 ≠ 3, r25c8 ≠ 11, r25c8 ≠ 3, r25c6 ≠ 11
finned-x-wing-in-columns: n24{c23 c18}{r6 r14} ==> r14c19 ≠ 24
finned-x-wing-in-columns: n13{c19 c7}{r3 r8} ==> r8c8 ≠ 13
naked-single ==> r8c8 = 16
naked-single ==> r7c7 = 13
naked-single ==> r7c15 = 12
naked-single ==> r7c13 = 18
naked-single ==> r9c13 = 13
naked-single ==> r9c18 = 15
naked-single ==> r19c13 = 12
naked-single ==> r8c23 = 25
hidden-single-in-a-row ==> r8c4 = 15
hidden-single-in-a-column ==> r20c19 = 15
hidden-single-in-a-block ==> r16c7 = 15
hidden-single-in-a-column ==> r6c19 = 16
hidden-single-in-a-column ==> r14c19 = 21
hidden-single-in-a-row ==> r11c9 = 21
hidden-single-in-a-row ==> r13c1 = 21
whip[1]: b9n6{r10c20 .} ==> r10c21 ≠ 6, r10c24 ≠ 6
whip[1]: b25n25{r25c25 .} ==> r5c25 ≠ 25, r17c25 ≠ 25, r19c25 ≠ 25
hidden-pairs-in-a-block: b22{r25c6 r25c8}{n19 n21} ==> r25c6 ≠ 25
hidden-pairs-in-a-column: c19{n6 n24}{r10 r21} ==> r21c19 ≠ 25, r21c19 ≠ 11
whip[1]: b24n25{r25c20 .} ==> r11c20 ≠ 25, r12c20 ≠ 25
hidden-pairs-in-a-block: b2{r2c8 r5c8}{n13 n20} ==> r5c8 ≠ 19, r2c8 ≠ 10
hidden-single-in-a-block ==> r3c7 = 10
hidden-single-in-a-block ==> r21c8 = 10
hidden-single-in-a-block ==> r3c6 = 19
naked-single ==> r25c6 = 21
naked-single ==> r25c8 = 19
hidden-single-in-a-row ==> r16c21 = 21
naked-single ==> r10c21 = 24
naked-single ==> r10c19 = 6
naked-single ==> r10c20 = 12
naked-single ==> r6c18 = 24
naked-single ==> r10c24 = 21
naked-single ==> r21c19 = 24
naked-single ==> r13c21 = 22
naked-single ==> r13c25 = 8
naked-single ==> r24c21 = 11
naked-single ==> r24c12 = 25
naked-single ==> r11c12 = 10
naked-single ==> r22c11 = 11
naked-single ==> r14c11 = 25
naked-single ==> r22c8 = 3
naked-single ==> r22c24 = 22
naked-single ==> r24c16 = 12
naked-single ==> r24c7 = 20
naked-single ==> r24c3 = 17
naked-single ==> r24c4 = 22
naked-single ==> r25c21 = 3
naked-single ==> r25c16 = 11
naked-single ==> r1c16 = 6
naked-single ==> r1c20 = 11
naked-single ==> r12c20 = 9
naked-single ==> r23c16 = 3
hidden-single-in-a-block ==> r14c1 = 9
hidden-single-in-a-row ==> r21c9 = 11
hidden-single-in-a-block ==> r16c6 = 11
hidden-single-in-a-block ==> r23c9 = 7
hidden-single-in-a-column ==> r20c9 = 14
naked-single ==> r20c6 = 25
naked-single ==> r1c6 = 14
naked-single ==> r16c9 = 6
naked-single ==> r20c7 = 3
hidden-single-in-a-block ==> r14c9 = 3
hidden-single-in-a-block ==> r12c18 = 3
hidden-single-in-a-column ==> r23c10 = 14
hidden-single-in-a-column ==> r2c10 = 16
naked-single ==> r4c9 = 12
hidden-single-in-a-column ==> r25c9 = 16
hidden-single-in-a-block ==> r22c9 = 25
naked-single ==> r2c9 = 23
naked-single ==> r18c9 = 1
naked-single ==> r18c7 = 23
hidden-single-in-a-block ==> r3c23 = 23
hidden-single-in-a-block ==> r5c23 = 1
hidden-single-in-a-column ==> r18c23 = 5
hidden-single-in-a-column ==> r9c23 = 19
hidden-single-in-a-row ==> r3c12 = 12
naked-single ==> r5c12 = 24
hidden-single-in-a-block ==> r3c17 = 24
hidden-single-in-a-block ==> r1c23 = 21
naked-single ==> r1c10 = 25
naked-single ==> r3c10 = 21
hidden-single-in-a-column ==> r2c23 = 8
naked-single ==> r2c13 = 7
naked-single ==> r3c13 = 8
hidden-single-in-a-block ==> r1c24 = 17
hidden-single-in-a-block ==> r25c25 = 23
hidden-single-in-a-block ==> r17c22 = 23
hidden-single-in-a-block ==> r23c25 = 25
hidden-single-in-a-block ==> r9c24 = 3
hidden-single-in-a-row ==> r6c5 = 22
naked-single ==> r8c5 = 1
naked-single ==> r13c5 = 20
naked-single ==> r13c12 = 11
naked-single ==> r13c18 = 12
naked-single ==> r13c6 = 1
naked-single ==> r13c20 = 24
naked-single ==> r11c20 = 1
naked-single ==> r11c4 = 25
naked-single ==> r11c18 = 18
naked-single ==> r14c18 = 11
naked-single ==> r8c18 = 13
naked-single ==> r5c18 = 25
naked-single ==> r3c19 = 13
naked-single ==> r8c19 = 11
naked-single ==> r12c19 = 25
naked-single ==> r14c8 = 22
naked-single ==> r12c8 = 11
naked-single ==> r15c6 = 23
naked-single ==> r14c6 = 12
naked-single ==> r14c12 = 20
naked-single ==> r22c5 = 14
hidden-single-in-a-row ==> r14c2 = 23
hidden-single-in-a-row ==> r12c2 = 22
hidden-single-in-a-row ==> r8c25 = 22
hidden-single-in-a-block ==> r8c22 = 14
hidden-single-in-a-block ==> r8c24 = 9
hidden-single-in-a-row ==> r11c2 = 8
naked-single ==> r16c2 = 25
naked-single ==> r16c5 = 8
naked-single ==> r16c15 = 13
naked-single ==> r19c15 = 25
naked-single ==> r25c2 = 24
hidden-single-in-a-block ==> r2c5 = 24
hidden-single-in-a-block ==> r2c1 = 3
hidden-single-in-a-block ==> r7c5 = 3
hidden-single-in-a-block ==> r1c1 = 8
hidden-single-in-a-block ==> r9c3 = 8
hidden-single-in-a-column ==> r14c23 = 24
naked-single ==> r11c24 = 15
naked-single ==> r21c24 = 20
naked-single ==> r21c25 = 15
naked-single ==> r14c7 = 16
naked-single ==> r12c7 = 14
naked-single ==> r11c7 = 24
hidden-single-in-a-block ==> r19c25 = 20
hidden-single-in-a-column ==> r18c21 = 15
hidden-single-in-a-block ==> r20c21 = 8
naked-single ==> r20c8 = 21
naked-single ==> r18c8 = 8
naked-single ==> r20c18 = 16
hidden-single-in-a-column ==> r20c24 = 24
hidden-single-in-a-block ==> r19c4 = 24
whip[1]: c21n6{r5 .} ==> r2c22 ≠ 6, r2c24 ≠ 6, r5c22 ≠ 6, r5c24 ≠ 6, r5c25 ≠ 6
naked-single ==> r2c22 = 13
naked-single ==> r2c8 = 20
naked-single ==> r5c8 = 13
hidden-single-in-a-column ==> r15c24 = 13
hidden-single-in-a-column ==> r19c21 = 13
naked-single ==> r19c1 = 14
hidden-single-in-a-block ==> r15c2 = 14
hidden-single-in-a-block ==> r15c4 = 1
hidden-single-in-a-block ==> r3c3 = 1
hidden-single-in-a-block ==> r3c1 = 25
naked-single ==> r3c21 = 7
naked-single ==> r3c4 = 17
naked-single ==> r9c4 = 20
hidden-single-in-a-block ==> r9c5 = 25
hidden-single-in-a-block ==> r15c22 = 5
hidden-single-in-a-block ==> r14c24 = 7
naked-single ==> r14c3 = 18
naked-single ==> r14c5 = 10
naked-single ==> r1c5 = 7
naked-single ==> r1c17 = 10
naked-single ==> r4c17 = 9
naked-single ==> r5c17 = 7
naked-single ==> r15c5 = 19
naked-single ==> r15c1 = 7
naked-single ==> r15c14 = 18
naked-single ==> r12c14 = 19
naked-single ==> r17c5 = 16
naked-single ==> r21c5 = 18
naked-single ==> r14c25 = 6
hidden-single-in-a-column ==> r20c2 = 18
hidden-single-in-a-column ==> r18c1 = 19
naked-single ==> r18c18 = 21
naked-single ==> r17c18 = 19
hidden-single-in-a-row ==> r17c3 = 21
hidden-single-in-a-column ==> r7c1 = 10
hidden-single-in-a-column ==> r9c1 = 17
hidden-single-in-a-block ==> r9c2 = 12
hidden-single-in-a-block ==> r7c2 = 16
naked-single ==> r7c25 = 17
naked-single ==> r7c22 = 7
naked-single ==> r20c22 = 6
naked-single ==> r6c22 = 12
naked-single ==> r6c23 = 10
naked-single ==> r6c24 = 6
naked-single ==> r6c4 = 7
naked-single ==> r20c4 = 13
naked-single ==> r12c4 = 2
naked-single ==> r18c4 = 6
naked-single ==> r20c3 = 7
naked-single ==> r17c2 = 17
naked-single ==> r17c23 = 7
naked-single ==> r18c24 = 16
naked-single ==> r18c22 = 17
hidden-single-in-a-column ==> r21c2 = 7
hidden-single-in-a-block ==> r22c2 = 1
naked-single ==> r22c7 = 12
naked-single ==> r22c23 = 13
naked-single ==> r22c1 = 20
naked-single ==> r5c1 = 16
naked-single ==> r5c25 = 9
naked-single ==> r5c22 = 19
naked-single ==> r5c21 = 6
naked-single ==> r5c3 = 20
naked-single ==> r5c2 = 5
naked-single ==> r4c2 = 10
naked-single ==> r2c2 = 6
naked-single ==> r8c2 = 2
naked-single ==> r8c3 = 6
naked-single ==> r18c2 = 20
naked-single ==> r4c24 = 5
naked-single ==> r5c24 = 12
naked-single ==> r18c3 = 2
naked-single ==> r11c22 = 9
naked-single ==> r11c25 = 14
naked-single ==> r11c21 = 19
naked-single ==> r17c25 = 10
naked-single ==> r17c24 = 25
naked-single ==> r2c24 = 10
naked-single ==> r2c21 = 25
naked-single ==> r17c21 = 14
naked-single ==> r21c1 = 12
naked-single ==> r12c1 = 13
naked-single ==> r12c3 = 12
naked-single ==> r21c23 = 16
naked-single ==> r12c23 = 18
naked-single ==> r12c25 = 16
naked-single ==> r4c25 = 18
naked-single ==> r4c21 = 16
naked-single ==> r9c21 = 18
naked-single ==> r9c22 = 16
naked-single ==> r12c21 = 10
naked-single ==> r21c3 = 25
naked-single ==> r21c20 = 6
naked-single ==> r21c7 = 1
naked-single ==> r23c20 = 17
naked-single ==> r23c23 = 12
naked-single ==> r25c20 = 25
naked-single ==> r25c3 = 13
naked-single ==> r23c22 = 18
naked-single ==> r23c3 = 16
naked-single ==> r25c23 = 17
naked-single ==> r23c7 = 6
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = HT

08 13 15 18 07 14 05 01 09 25 16 04 19 02 03 06 10 23 12 11 20 22 21 17 24
03 06 22 12 24 04 11 20 23 16 05 17 07 09 15 18 21 01 14 19 25 13 08 10 02
25 09 01 17 02 19 10 15 22 21 18 12 08 14 06 20 24 05 13 16 07 03 23 11 04
11 10 04 19 23 24 07 06 12 08 13 01 20 25 21 17 09 02 22 03 16 15 14 05 18
16 05 20 14 21 18 02 13 17 03 22 24 10 23 11 08 07 25 04 15 06 19 01 12 09
18 21 14 07 22 03 19 25 04 01 15 09 23 11 20 02 17 24 16 08 05 12 10 06 13
10 16 11 09 03 05 13 14 15 22 01 06 18 24 12 23 25 20 19 21 02 07 04 08 17
24 02 06 15 01 10 08 16 20 12 03 21 05 17 19 07 18 13 11 04 23 14 25 09 22
17 12 08 20 25 02 21 23 24 06 04 22 13 07 10 14 01 15 09 05 18 16 19 03 11
23 04 19 05 13 07 17 09 18 11 14 02 25 16 08 10 03 22 06 12 24 20 15 21 01
06 08 03 25 11 13 24 02 21 07 23 10 04 12 22 16 05 18 17 01 19 09 20 15 14
13 22 12 02 17 06 14 11 05 20 24 08 21 19 07 15 23 03 25 09 10 01 18 04 16
21 15 05 16 20 01 09 17 10 18 06 11 02 13 14 19 04 12 07 24 22 25 03 23 08
09 23 18 04 10 12 16 22 03 19 25 20 15 01 05 13 08 11 21 14 17 02 24 07 06
07 14 24 01 19 23 25 04 08 15 09 16 03 18 17 22 20 06 02 10 12 05 11 13 21
01 25 10 23 08 11 15 24 06 17 19 03 16 20 13 09 14 07 05 22 21 04 02 18 12
04 17 21 11 16 20 22 12 02 05 08 18 09 15 01 24 06 19 03 13 14 23 07 25 10
19 20 02 06 12 09 23 08 01 13 07 14 22 04 24 25 11 21 10 18 15 17 05 16 03
14 03 09 24 15 16 18 07 19 10 21 05 12 06 25 04 02 17 08 23 13 11 22 01 20
22 18 07 13 05 25 03 21 14 04 17 23 11 10 02 01 12 16 15 20 08 06 09 24 19
12 07 25 03 18 22 01 10 11 23 02 19 17 05 04 21 13 14 24 06 09 08 16 20 15
20 01 23 10 14 17 12 03 25 09 11 15 06 21 16 05 19 08 18 02 04 24 13 22 07
02 11 16 21 04 15 06 05 07 14 20 13 24 08 09 03 22 10 23 17 01 18 12 19 25
15 19 17 22 09 08 20 18 13 24 10 25 14 03 23 12 16 04 01 07 11 21 06 02 05
05 24 13 08 06 21 04 19 16 02 12 07 01 22 18 11 15 09 20 25 03 10 17 14 23
Puzzle (. 13 . 18 . . 5 1 9 . . . 19 2 3 . . . 12 . 20 22 . . 24 . . 22 12 . 4 11 . . . 5 17 . . 15 18 21 1 . 19 . . . . 2 . 9 . . 2 . . 15 22 . . . . . 6 . . 5 . 16 . 3 . 11 4 11 . . 19 23 24 7 6 . 8 13 1 . 25 . . . . . 3 . 15 14 . . . . . 14 21 . . . 17 3 22 . 10 23 . 8 . . . 15 . . . . . 18 . 14 . . 3 . . 4 . 15 9 23 11 . 2 . . . . 5 . . . 13 . . 11 9 . 5 . 14 15 . . 6 . 24 . 23 25 20 19 21 2 . 4 8 . 24 . . . . 10 8 . 20 12 3 21 . . 19 7 . . . . 23 . . . . . . . . . . 21 . 24 6 4 . . 7 10 14 1 . 9 . . . . . 11 23 4 19 5 . . 17 9 18 . . 2 25 . . . . 22 . . . 20 15 . 1 6 . 3 . 11 13 . 2 . 7 23 . 4 12 22 . 5 . 17 . . . 20 . . . . . . 17 6 . . . 20 24 8 . . . 15 . . . . . 1 . . . . 15 5 16 . . 9 . 10 18 6 . . . 14 19 4 . 7 . . 25 3 23 . . . . 4 . . . . . 19 . . . 1 5 13 . . . 14 17 . . . . . . 24 . . . 25 . 8 . 9 16 3 . 17 22 . 6 . 10 12 . 11 . 21 1 . 10 23 . . . 24 . . . . 16 20 . . 14 7 5 . . 4 2 18 12 4 . . . . . 22 . 2 5 8 18 . . 1 24 6 . 3 . . . . . . . . . . 12 . . . . 13 7 . . 4 24 25 11 . 10 18 . . . . 3 . 3 9 . 15 16 18 7 19 10 . 5 . 6 . . 2 17 . 23 . 11 22 . . 22 . . . 5 . . . . 4 . 23 11 10 2 . 12 . . 20 . . 9 . 19 . . . . . 22 . . . 23 . 19 17 . 4 21 13 . . . 9 8 . . . . . 23 10 . 17 . . . . . 15 . 21 16 5 . 8 18 2 4 24 . . 7 2 11 . 21 . 15 . 5 . . 20 . . . . . 22 10 . . 1 . . 19 . 15 . . . . 8 . 18 13 24 10 . . 3 23 . . . 1 7 . 21 6 . . 5 . . 8 6 . 4 . . . 12 7 1 . . . 15 9 20 . . 10 . 14 .) :
init-time = 37.65s, solve-time = 15.22s, total-time = 52.87s
nb-facts=<Fact-139751>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1,62 GB
