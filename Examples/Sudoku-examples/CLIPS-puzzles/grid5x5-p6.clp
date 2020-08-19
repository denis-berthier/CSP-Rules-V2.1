
(load "puzzles/grid5x5-p6.clp")
(reset)
(progn
    (bind ?t0 (time))
    (run)
    (printout t (- (time) ?t0) crlf)
)

The puzzle is:

    3 11 10 22  8   *  1 25  *  6  17 18  *  *  4   *  *  *  5 20   9  *  7 21 24
    *  *  6  *  *   *  *  *  *  *  16  *  5 24  *   *  3  4 11 22   *  * 19  *  *
    * 17  * 15  5  11 22  *  *  *   7  *  1  3  *   *  6  * 12 16  13  *  *  * 23
   19 13  2  1  *   *  * 21  *  *  22  *  9  *  *  15  8  *  * 10  20  5  6  *  *
    4  * 24 16 20   *  3 15  5  *   * 19 10  8  *   *  *  *  1  *   * 22  * 14 18

    *  *  *  * 25   *  *  *  *  9  21 11  *  *  *   *  2  *  *  *   *  * 14  *  *
    *  * 13  9  *   6  *  *  *  *   * 22  *  *  *  24  * 15 14  *   2  *  * 23  7
   11 10  * 14  *  24  *  * 17  3   5  4  7  *  *  13 12  * 21 25  22  *  * 15  *
   20  *  * 17  *  10  * 22  *  7  14 13  *  * 24   *  4  *  *  5  25 11  *  *  *
    *  *  *  *  *   *  2  * 15  *  18  * 23 17  *   * 10  *  *  *   5  1 21 19  4

   10  *  *  * 13   8 11  *  *  *   *  * 21 20  *   * 15  2 24  *   *  * 17 25  6
    *  9  *  2  3   *  *  * 22  *   * 17  * 18 23   7  1 10  *  *   *  *  5  *  *
    * 23  * 21 12   * 20  * 13  *   *  * 24  *  *   * 17  * 25  *   7 18  *  8  *
    *  * 11  *  *   *  *  9 14  5  25 15  * 13  *   * 16  *  *  *  10 21  *  1  *
   14  5 15  *  *   *  4  1 23  *   *  6 16  *  *   *  *  * 13  8  12  *  *  * 19

   24  1  4 19 22   *  *  *  *  *   *  8  2  * 18   *  5  *  6  *   *  *  *  *  *
    *  *  *  6  2  22  *  *  1  *  20  *  *  5 25   9  * 23  *  4   * 24  *  * 14
    * 20  *  * 14   4  9  *  7  8   *  * 22 10  6  18 24  *  * 13   * 25  *  2 21
   18  7  *  *  9   * 19 12  * 24   *  *  * 15  *   *  *  *  *  3   *  4  1  *  *
    *  * 21  *  *   *  *  * 25  *   *  *  *  4 12   2  *  *  *  *   8  *  *  *  *

   21 15  *  5  *   * 23  *  *  *   * 20 17  1  *   *  7  8  4  *  18 16 24  * 25
    *  * 12 11  6  21  *  * 18 25   *  * 13  *  8   *  * 16  *  *   * 19  3  7 22
    2  *  *  * 19   1  6  *  8  *   * 25  4  *  7   *  *  * 15 18  21 12  *  5  *
    *  * 23  *  *  16  5  7  4  *   * 21  6  * 22   *  *  *  *  *   *  *  2  *  *
   16  *  *  * 17  19 15  *  *  *  24  *  * 12  2   1  * 11 10  *   6 23  4 13 20

The solution is:

    3 11 10 22  8  12  1 25 16  6  17 18 15 14  4  23 13 19  5 20   9  2  7 21 24
    7 14  6 18 21   9 13  8 10  2  16 23  5 24 20  25  3  4 11 22  17 15 19 12  1
   25 17  9 15  5  11 22 19 20 18   7  2  1  3 21  14  6 24 12 16  13 10  8  4 23
   19 13  2  1 23  14  7 21 24  4  22 12  9 25 11  15  8 17 18 10  20  5  6 16  3
    4 12 24 16 20  23  3 15  5 17   6 19 10  8 13  21  9  7  1  2  11 22 25 14 18

   22  3 18 23 25   5 12  4 19  9  21 11 20  6 15  16  2  1  8  7  24 17 14 10 13
    5 21 13  9  4   6 16 20 11  1   8 22 25 19 10  24 18 15 14 17   2  3 12 23  7
   11 10 19 14 16  24  8 23 17  3   5  4  7  2  1  13 12  6 21 25  22 20 18 15  9
   20  2  1 17 15  10 18 22 21  7  14 13 12  9 24  19  4  3 23  5  25 11 16  6  8
    6 24  8 12  7  25  2 13 15 14  18  3 23 17 16  20 10 22  9 11   5  1 21 19  4

   10 19 22  7 13   8 11 18 12 16   1  9 21 20  5   4 15  2 24 23   3 14 17 25  6
    8  9 20  2  3  15 25  6 22 21  12 17 11 18 23   7  1 10 19 14   4 13  5 24 16
    1 23 16 21 12   3 20  2 13 19   4 10 24 22 14   6 17  5 25  9   7 18 15  8 11
   17  6 11  4 18   7 24  9 14  5  25 15  8 13 19   3 16 20 22 12  10 21 23  1  2
   14  5 15 25 24  17  4  1 23 10   2  6 16  7  3  11 21 18 13  8  12  9 22 20 19

   24  1  4 19 22  20 14 17  3 23  11  8  2 21 18  10  5 25  6 15  16  7 13  9 12
   12  8 17  6  2  22 21 11  1 13  20  7  3  5 25   9 19 23 16  4  15 24 10 18 14
   15 20  5  3 14   4  9 16  7  8  23  1 22 10  6  18 24 12 17 13  19 25 11  2 21
   18  7 25 10  9   2 19 12  6 24  13 16 14 15 17   8 11 21 20  3  23  4  1 22  5
   23 16 21 13 11  18 10  5 25 15   9 24 19  4 12   2 22 14  7  1   8  6 20  3 17

   21 15  3  5 10  13 23 14  2 12  19 20 17  1  9  22  7  8  4  6  18 16 24 11 25
    9  4 12 11  6  21 17 10 18 25  15 14 13 23  8   5 20 16  2 24   1 19  3  7 22
    2 22 14 20 19   1  6 24  8 11   3 25  4 16  7  17 23 13 15 18  21 12  9  5 10
   13 18 23 24  1  16  5  7  4 20  10 21  6 11 22  12 25  9  3 19  14  8  2 17 15
   16 25  7  8 17  19 15  3  9 22  24  5 18 12  2   1 14 11 10 21   6 23  4 13 20

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Naked Pairs
   Hidden Pairs

3.12679195404053



With SudoRules:
(solve-grid-as-list
 3 11 10 22  8   .  1 25  .  6  17 18  .  .  4   .  .  .  5 20   9  .  7 21 24
 .  .  6  .  .   .  .  .  .  .  16  .  5 24  .   .  3  4 11 22   .  . 19  .  .
 . 17  . 15  5  11 22  .  .  .   7  .  1  3  .   .  6  . 12 16  13  .  .  . 23
19 13  2  1  .   .  . 21  .  .  22  .  9  .  .  15  8  .  . 10  20  5  6  .  .
 4  . 24 16 20   .  3 15  5  .   . 19 10  8  .   .  .  .  1  .   . 22  . 14 18

 .  .  .  . 25   .  .  .  .  9  21 11  .  .  .   .  2  .  .  .   .  . 14  .  .
 .  . 13  9  .   6  .  .  .  .   . 22  .  .  .  24  . 15 14  .   2  .  . 23  7
11 10  . 14  .  24  .  . 17  3   5  4  7  .  .  13 12  . 21 25  22  .  . 15  .
20  .  . 17  .  10  . 22  .  7  14 13  .  . 24   .  4  .  .  5  25 11  .  .  .
 .  .  .  .  .   .  2  . 15  .  18  . 23 17  .   . 10  .  .  .   5  1 21 19  4

10  .  .  . 13   8 11  .  .  .   .  . 21 20  .   . 15  2 24  .   .  . 17 25  6
 .  9  .  2  3   .  .  . 22  .   . 17  . 18 23   7  1 10  .  .   .  .  5  .  .
 . 23  . 21 12   . 20  . 13  .   .  . 24  .  .   . 17  . 25  .   7 18  .  8  .
 .  . 11  .  .   .  .  9 14  5  25 15  . 13  .   . 16  .  .  .  10 21  .  1  .
14  5 15  .  .   .  4  1 23  .   .  6 16  .  .   .  .  . 13  8  12  .  .  . 19

24  1  4 19 22   .  .  .  .  .   .  8  2  . 18   .  5  .  6  .   .  .  .  .  .
 .  .  .  6  2  22  .  .  1  .  20  .  .  5 25   9  . 23  .  4   . 24  .  . 14
 . 20  .  . 14   4  9  .  7  8   .  . 22 10  6  18 24  .  . 13   . 25  .  2 21
18  7  .  .  9   . 19 12  . 24   .  .  . 15  .   .  .  .  .  3   .  4  1  .  .
 .  . 21  .  .   .  .  . 25  .   .  .  .  4 12   2  .  .  .  .   8  .  .  .  .

21 15  .  5  .   . 23  .  .  .   . 20 17  1  .   .  7  8  4  .  18 16 24  . 25
 .  . 12 11  6  21  .  . 18 25   .  . 13  .  8   .  . 16  .  .   . 19  3  7 22
 2  .  .  . 19   1  6  .  8  .   . 25  4  .  7   .  .  . 15 18  21 12  .  5  .
 .  . 23  .  .  16  5  7  4  .   . 21  6  . 22   .  .  .  .  .   .  .  2  .  .
16  .  .  . 17  19 15  .  .  .  24  .  . 12  2   1  . 11 10  .   6 23  4 13 20
)
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(3 11 10 22 8 . 1 25 . 6 17 18 . . 4 . . . 5 20 9 . 7 21 24 . . 6 . . . . . . . 16 . 5 24 . . 3 4 11 22 . . 19 . . . 17 . 15 5 11 22 . . . 7 . 1 3 . . 6 . 12 16 13 . . . 23 19 13 2 1 . . . 21 . . 22 . 9 . . 15 8 . . 10 20 5 6 . . 4 . 24 16 20 . 3 15 5 . . 19 10 8 . . . . 1 . . 22 . 14 18 . . . . 25 . . . . 9 21 11 . . . . 2 . . . . . 14 . . . . 13 9 . 6 . . . . . 22 . . . 24 . 15 14 . 2 . . 23 7 11 10 . 14 . 24 . . 17 3 5 4 7 . . 13 12 . 21 25 22 . . 15 . 20 . . 17 . 10 . 22 . 7 14 13 . . 24 . 4 . . 5 25 11 . . . . . . . . . 2 . 15 . 18 . 23 17 . . 10 . . . 5 1 21 19 4 10 . . . 13 8 11 . . . . . 21 20 . . 15 2 24 . . . 17 25 6 . 9 . 2 3 . . . 22 . . 17 . 18 23 7 1 10 . . . . 5 . . . 23 . 21 12 . 20 . 13 . . . 24 . . . 17 . 25 . 7 18 . 8 . . . 11 . . . . 9 14 5 25 15 . 13 . . 16 . . . 10 21 . 1 . 14 5 15 . . . 4 1 23 . . 6 16 . . . . . 13 8 12 . . . 19 24 1 4 19 22 . . . . . . 8 2 . 18 . 5 . 6 . . . . . . . . . 6 2 22 . . 1 . 20 . . 5 25 9 . 23 . 4 . 24 . . 14 . 20 . . 14 4 9 . 7 8 . . 22 10 6 18 24 . . 13 . 25 . 2 21 18 7 . . 9 . 19 12 . 24 . . . 15 . . . . . 3 . 4 1 . . . . 21 . . . . . 25 . . . . 4 12 2 . . . . 8 . . . . 21 15 . 5 . . 23 . . . . 20 17 1 . . 7 8 4 . 18 16 24 . 25 . . 12 11 6 21 . . 18 25 . . 13 . 8 . . 16 . . . 19 3 7 22 2 . . . 19 1 6 . 8 . . 25 4 . 7 . . . 15 18 21 12 . 5 . . . 23 . . 16 5 7 4 . . 21 6 . 22 . . . . . . . 2 . . 16 . . . 17 19 15 . . . 24 . . 12 2 1 . 11 10 . 6 23 4 13 20)
294 givens, 1790 candidates
entering BRT
naked-single ==> r21c5 = 10
hidden-single-in-a-column ==> r25c13 = 18
hidden-single-in-a-row ==> r25c12 = 5
hidden-single-in-a-row ==> r22c16 = 5
hidden-single-in-a-block ==> r13c18 = 5
hidden-single-in-a-block ==> r11c15 = 5
hidden-single-in-a-row ==> r23c14 = 16
hidden-single-in-a-column ==> r22c19 = 2
hidden-single-in-a-column ==> r5c20 = 2
hidden-single-in-a-row ==> r22c2 = 4
hidden-single-in-a-row ==> r20c12 = 24
hidden-single-in-a-column ==> r20c5 = 11
hidden-single-in-a-column ==> r9c5 = 15
hidden-single-in-a-column ==> r19c15 = 17
hidden-single-in-a-block ==> r16c14 = 21
hidden-single-in-a-block ==> r17c12 = 7
hidden-single-in-a-block ==> r15c14 = 7
hidden-single-in-a-block ==> r13c14 = 22
hidden-single-in-a-column ==> r19c9 = 6
hidden-single-in-a-block ==> r19c6 = 2
hidden-single-in-a-row ==> r14c25 = 2
hidden-single-in-a-block ==> r14c1 = 17
hidden-single-in-a-row ==> r10c6 = 25
hidden-single-in-a-column ==> r12c7 = 25
hidden-single-in-a-block ==> r15c4 = 25
hidden-single-in-a-block ==> r19c3 = 25
hidden-single-in-a-row ==> r19c25 = 5
hidden-single-in-a-column ==> r9c2 = 2
hidden-single-in-a-block ==> r8c14 = 2
hidden-single-in-a-column ==> r7c13 = 25
naked-single ==> r7c14 = 19
naked-single ==> r6c14 = 6
naked-single ==> r9c14 = 9
hidden-single-in-a-column ==> r6c13 = 20
hidden-single-in-a-block ==> r6c15 = 15
hidden-single-in-a-block ==> r1c13 = 15
naked-single ==> r1c22 = 2
hidden-single-in-a-column ==> r4c14 = 25
hidden-single-in-a-column ==> r24c14 = 11
hidden-single-in-a-column ==> r7c10 = 1
hidden-single-in-a-block ==> r8c15 = 1
hidden-single-in-a-column ==> r24c5 = 1
naked-single ==> r22c1 = 9
naked-single ==> r3c1 = 25
hidden-single-in-a-row ==> r2c16 = 25
hidden-single-in-a-row ==> r5c23 = 25
hidden-single-in-a-block ==> r16c18 = 25
hidden-single-in-a-block ==> r3c3 = 9
hidden-single-in-a-block ==> r2c2 = 14
hidden-single-in-a-row ==> r22c21 = 1
hidden-single-in-a-block ==> r2c25 = 1
hidden-single-in-a-row ==> r22c11 = 15
hidden-single-in-a-row ==> r5c11 = 6
hidden-single-in-a-row ==> r1c9 = 16
hidden-single-in-a-row ==> r1c6 = 12
naked-single ==> r4c9 = 24
naked-single ==> r12c6 = 15
naked-single ==> r13c6 = 3
hidden-single-in-a-row ==> r3c18 = 24
hidden-single-in-a-row ==> r5c2 = 12
hidden-single-in-a-block ==> r2c5 = 21
hidden-single-in-a-block ==> r7c2 = 21
hidden-single-in-a-column ==> r9c9 = 21
hidden-single-in-a-column ==> r17c7 = 21
Starting_init_links_with_<Fact-67963>
1319 candidates, 11563 csp-links and 11563 links. Density = 1.33%
starting non trivial part of solution
Entering_level_W1_with_<Fact-111166>
whip[1]: r25n8{c4 .} ==> r24c4 ≠ 8, r24c1 ≠ 8, r24c2 ≠ 8
naked-single ==> r24c1 = 13
whip[1]: b24n13{r23c18 .} ==> r23c8 ≠ 13, r23c10 ≠ 13
whip[1]: c23n13{r20 .} ==> r20c25 ≠ 13, r16c22 ≠ 13, r16c25 ≠ 13, r20c22 ≠ 13
whip[1]: c12n9{r13 .} ==> r15c15 ≠ 9, r11c11 ≠ 9, r13c11 ≠ 9, r13c15 ≠ 9, r15c11 ≠ 9
hidden-single-in-a-column ==> r21c15 = 9
naked-single ==> r21c24 = 11
hidden-single-in-a-block ==> r25c9 = 9
hidden-single-in-a-row ==> r2c6 = 9
whip[1]: c6n20{r20 .} ==> r16c8 ≠ 20, r16c9 ≠ 20, r16c10 ≠ 20, r20c8 ≠ 20, r20c10 ≠ 20
whip[1]: b23n3{r24c11 .} ==> r7c11 ≠ 3, r11c11 ≠ 3, r15c11 ≠ 3, r16c11 ≠ 3, r18c11 ≠ 3, r20c11 ≠ 3
whip[1]: b23n14{r22c14 .} ==> r22c7 ≠ 14, r22c8 ≠ 14, r22c17 ≠ 14, r22c20 ≠ 14
whip[1]: b23n19{r24c11 .} ==> r11c11 ≠ 19, r12c11 ≠ 19, r13c11 ≠ 19, r18c11 ≠ 19, r20c11 ≠ 19
whip[1]: b18n19{r20c13 .} ==> r12c13 ≠ 19, r14c13 ≠ 19
whip[1]: c11n2{r15 .} ==> r13c12 ≠ 2
whip[1]: c21n4{r12 .} ==> r12c24 ≠ 4
whip[1]: r11n7{c4 .} ==> r14c5 ≠ 7, r14c4 ≠ 7
whip[1]: c15n16{r10 .} ==> r10c12 ≠ 16
whip[1]: c5n16{r10 .} ==> r10c3 ≠ 16, r6c2 ≠ 16, r6c3 ≠ 16, r8c3 ≠ 16, r9c3 ≠ 16, r10c2 ≠ 16
whip[1]: c1n22{r10 .} ==> r10c3 ≠ 22, r6c2 ≠ 22, r6c3 ≠ 22, r10c2 ≠ 22
whip[1]: r10n9{c20 .} ==> r8c18 ≠ 9
whip[1]: r6n10{c25 .} ==> r7c23 ≠ 10, r7c22 ≠ 10
whip[1]: r9n23{c19 .} ==> r6c20 ≠ 23, r6c16 ≠ 23, r6c19 ≠ 23
whip[1]: r10n13{c10 .} ==> r6c8 ≠ 13, r6c6 ≠ 13, r6c7 ≠ 13
whip[1]: r10n24{c5 .} ==> r6c4 ≠ 24, r6c2 ≠ 24
whip[1]: r3n18{c10 .} ==> r4c10 ≠ 18, r2c7 ≠ 18, r2c8 ≠ 18, r2c10 ≠ 18, r4c6 ≠ 18, r4c7 ≠ 18
hidden-single-in-a-row ==> r2c4 = 18
hidden-single-in-a-block ==> r24c2 = 18
hidden-single-in-a-block ==> r25c2 = 25
hidden-single-in-a-block ==> r24c17 = 25
whip[1]: c10n4{r4 .} ==> r3c8 ≠ 4
whip[1]: r1n19{c18 .} ==> r3c16 ≠ 19
whip[1]: r1n13{c18 .} ==> r5c18 ≠ 13, r5c17 ≠ 13
whip[1]: b3n11{r5c15 .} ==> r15c15 ≠ 11, r13c15 ≠ 11
whip[1]: b3n12{r4c12 .} ==> r11c12 ≠ 12, r10c12 ≠ 12
naked-single ==> r10c12 = 3
naked-single ==> r10c15 = 16
naked-single ==> r7c15 = 10
naked-single ==> r15c15 = 3
naked-single ==> r14c15 = 19
naked-single ==> r13c15 = 14
naked-single ==> r4c15 = 11
hidden-single-in-a-block ==> r5c21 = 11
hidden-single-in-a-row ==> r7c22 = 3
hidden-single-in-a-row ==> r7c20 = 17
hidden-single-in-a-block ==> r11c21 = 3
hidden-single-in-a-block ==> r12c21 = 4
hidden-single-in-a-column ==> r24c21 = 14
hidden-single-in-a-column ==> r6c21 = 24
hidden-single-in-a-block ==> r14c23 = 23
whip[1]: b15n22{r15c24 .} ==> r15c16 ≠ 22, r15c17 ≠ 22, r15c18 ≠ 22
whip[1]: c21n16{r19 .} ==> r16c23 ≠ 16, r16c24 ≠ 16, r16c25 ≠ 16, r17c23 ≠ 16, r17c24 ≠ 16, r18c23 ≠ 16, r19c24 ≠ 16, r20c23 ≠ 16, r20c24 ≠ 16, r20c25 ≠ 16
whip[1]: r22n17{c8 .} ==> r23c8 ≠ 17, r23c10 ≠ 17, r24c10 ≠ 17
whip[1]: c13n14{r20 .} ==> r19c12 ≠ 14
whip[1]: b6n6{r10c2 .} ==> r10c20 ≠ 6, r10c16 ≠ 6, r10c18 ≠ 6
Entering_relation_bivalue_with_<Fact-111253>
Entering_level_S2_with_<Fact-111710>
naked-pairs-in-a-row: r19{c12 c21}{n16 n23} ==> r19c19 ≠ 16, r19c16 ≠ 16, r19c11 ≠ 23, r19c4 ≠ 23
naked-pairs-in-a-column: c13{r9 r14}{n8 n12} ==> r12c13 ≠ 12, r12c13 ≠ 8
naked-single ==> r12c13 = 11
naked-single ==> r19c13 = 14
naked-pairs-in-a-block: b13{r12c11 r14c13}{n8 n12} ==> r11c11 ≠ 12
naked-pairs-in-a-column: c9{r6 r11}{n12 n19} ==> r21c9 ≠ 12, r7c9 ≠ 12, r3c9 ≠ 19
whip[1]: b22n12{r24c10 .} ==> r10c10 ≠ 12, r11c10 ≠ 12, r12c10 ≠ 12
whip[1]: r10n12{c4 .} ==> r6c1 ≠ 12, r6c4 ≠ 12, r7c1 ≠ 12
naked-pairs-in-a-row: r3{c22 c23}{n8 n10} ==> r3c24 ≠ 10, r3c10 ≠ 10, r3c9 ≠ 10, r3c8 ≠ 10, r3c8 ≠ 8
naked-single ==> r3c24 = 4
hidden-single-in-a-block ==> r4c10 = 4
whip[1]: r3n8{c23 .} ==> r2c22 ≠ 8
whip[1]: r3n10{c23 .} ==> r2c22 ≠ 10, r2c24 ≠ 10
naked-pairs-in-a-block: b5{r2c21 r2c22}{n15 n17} ==> r4c25 ≠ 17, r4c24 ≠ 17, r2c24 ≠ 17
naked-single ==> r2c24 = 12
hidden-single-in-a-block ==> r4c12 = 12
whip[1]: b5n17{r2c22 .} ==> r2c7 ≠ 17, r2c8 ≠ 17, r2c10 ≠ 17
hidden-pairs-in-a-row: r25{n7 n8}{c3 c4} ==> r25c4 ≠ 3, r25c3 ≠ 22, r25c3 ≠ 14, r25c3 ≠ 3
hidden-single-in-a-row ==> r25c8 = 3
naked-single ==> r21c9 = 2
naked-single ==> r3c9 = 20
naked-single ==> r2c9 = 10
naked-single ==> r3c15 = 21
naked-single ==> r3c16 = 14
naked-single ==> r3c12 = 2
naked-single ==> r2c12 = 23
naked-single ==> r1c14 = 14
naked-single ==> r22c14 = 23
naked-single ==> r22c17 = 20
naked-single ==> r22c20 = 24
naked-single ==> r2c1 = 7
naked-single ==> r4c5 = 23
naked-single ==> r19c12 = 16
naked-single ==> r18c12 = 1
naked-single ==> r11c12 = 9
naked-single ==> r11c22 = 14
naked-single ==> r13c12 = 10
naked-single ==> r15c11 = 2
naked-single ==> r22c12 = 14
naked-single ==> r19c21 = 23
naked-single ==> r5c15 = 13
naked-single ==> r2c15 = 20
naked-single ==> r7c9 = 11
naked-single ==> r7c17 = 18
naked-single ==> r16c9 = 3
hidden-single-in-a-block ==> r15c10 = 10
hidden-single-in-a-block ==> r15c6 = 17
hidden-single-in-a-block ==> r12c10 = 21
hidden-single-in-a-column ==> r25c20 = 21
hidden-single-in-a-block ==> r12c20 = 14
hidden-single-in-a-row ==> r12c11 = 12
naked-single ==> r7c11 = 8
naked-single ==> r7c1 = 5
naked-single ==> r9c13 = 12
naked-single ==> r14c13 = 8
hidden-single-in-a-column ==> r18c3 = 5
hidden-single-in-a-row ==> r18c4 = 3
naked-single ==> r20c2 = 16
naked-single ==> r17c2 = 8
naked-single ==> r17c3 = 17
hidden-single-in-a-column ==> r10c4 = 12
hidden-single-in-a-column ==> r9c19 = 23
hidden-single-in-a-row ==> r8c8 = 23
hidden-single-in-a-column ==> r10c5 = 7
naked-single ==> r10c3 = 8
naked-single ==> r25c3 = 7
naked-single ==> r25c4 = 8
hidden-single-in-a-block ==> r11c4 = 7
hidden-single-in-a-column ==> r12c1 = 8
hidden-single-in-a-row ==> r12c8 = 6
hidden-single-in-a-block ==> r14c7 = 24
hidden-single-in-a-block ==> r15c5 = 24
hidden-single-in-a-row ==> r15c18 = 18
hidden-single-in-a-block ==> r4c19 = 18
hidden-single-in-a-block ==> r12c24 = 24
hidden-single-in-a-block ==> r14c6 = 7
naked-single ==> r4c6 = 14
naked-single ==> r21c6 = 13
naked-single ==> r21c8 = 14
naked-single ==> r25c10 = 22
naked-single ==> r21c10 = 12
naked-single ==> r24c10 = 20
naked-single ==> r23c10 = 11
naked-single ==> r24c4 = 24
naked-single ==> r23c4 = 20
naked-single ==> r14c4 = 4
naked-single ==> r6c4 = 23
naked-single ==> r14c5 = 18
naked-single ==> r8c5 = 16
naked-single ==> r7c5 = 4
naked-single ==> r25c17 = 14
naked-single ==> r5c6 = 23
naked-single ==> r5c10 = 17
naked-single ==> r4c7 = 7
naked-single ==> r4c18 = 17
naked-single ==> r5c16 = 21
naked-single ==> r5c17 = 9
naked-single ==> r5c18 = 7
naked-single ==> r16c6 = 20
hidden-single-in-a-block ==> r13c20 = 9
naked-single ==> r10c20 = 11
hidden-single-in-a-column ==> r19c18 = 21
hidden-single-in-a-column ==> r15c17 = 21
hidden-single-in-a-block ==> r20c18 = 14
hidden-single-in-a-column ==> r16c7 = 14
hidden-single-in-a-column ==> r10c10 = 14
hidden-single-in-a-block ==> r10c8 = 13
hidden-single-in-a-block ==> r7c8 = 20
hidden-single-in-a-block ==> r20c20 = 1
hidden-single-in-a-block ==> r16c20 = 15
hidden-single-in-a-block ==> r20c19 = 7
hidden-single-in-a-block ==> r6c20 = 7
hidden-single-in-a-block ==> r16c22 = 7
hidden-single-in-a-row ==> r23c3 = 14
hidden-single-in-a-block ==> r6c8 = 4
hidden-single-in-a-block ==> r6c6 = 5
naked-single ==> r20c6 = 18
hidden-single-in-a-block ==> r20c8 = 5
hidden-single-in-a-column ==> r2c8 = 8
naked-single ==> r2c7 = 13
naked-single ==> r2c10 = 2
hidden-single-in-a-block ==> r13c8 = 2
hidden-single-in-a-block ==> r6c9 = 19
naked-single ==> r6c2 = 3
naked-single ==> r23c2 = 22
naked-single ==> r11c2 = 19
naked-single ==> r14c2 = 6
naked-single ==> r10c2 = 24
naked-single ==> r13c1 = 1
naked-single ==> r6c1 = 22
naked-single ==> r6c18 = 1
naked-single ==> r6c3 = 18
naked-single ==> r8c3 = 19
naked-single ==> r9c3 = 1
naked-single ==> r10c1 = 6
naked-single ==> r13c3 = 16
naked-single ==> r11c3 = 22
naked-single ==> r12c3 = 20
naked-single ==> r12c19 = 19
naked-single ==> r17c19 = 16
naked-single ==> r6c19 = 8
naked-single ==> r6c16 = 16
naked-single ==> r6c7 = 12
naked-single ==> r7c7 = 16
naked-single ==> r7c23 = 12
naked-single ==> r18c19 = 17
naked-single ==> r12c22 = 13
naked-single ==> r12c25 = 16
naked-single ==> r4c25 = 3
naked-single ==> r4c24 = 16
naked-single ==> r9c25 = 8
naked-single ==> r8c25 = 9
naked-single ==> r9c7 = 18
naked-single ==> r8c7 = 8
naked-single ==> r9c23 = 16
naked-single ==> r9c24 = 6
naked-single ==> r8c22 = 20
naked-single ==> r8c18 = 6
naked-single ==> r8c23 = 18
naked-single ==> r15c22 = 9
naked-single ==> r13c10 = 19
naked-single ==> r3c10 = 18
naked-single ==> r3c8 = 19
naked-single ==> r11c10 = 16
naked-single ==> r11c8 = 18
naked-single ==> r13c11 = 4
naked-single ==> r11c11 = 1
naked-single ==> r14c20 = 12
naked-single ==> r11c20 = 23
naked-single ==> r11c16 = 4
naked-single ==> r24c20 = 19
naked-single ==> r21c20 = 6
naked-single ==> r21c3 = 3
naked-single ==> r21c11 = 19
naked-single ==> r21c16 = 22
naked-single ==> r10c16 = 20
naked-single ==> r14c16 = 3
naked-single ==> r9c16 = 19
naked-single ==> r1c16 = 23
naked-single ==> r23c16 = 17
naked-single ==> r23c25 = 10
naked-single ==> r23c8 = 24
naked-single ==> r23c11 = 3
naked-single ==> r24c11 = 10
naked-single ==> r23c23 = 9
naked-single ==> r23c18 = 13
naked-single ==> r1c18 = 19
naked-single ==> r1c17 = 13
naked-single ==> r18c18 = 12
naked-single ==> r23c17 = 23
naked-single ==> r24c24 = 17
naked-single ==> r6c24 = 10
naked-single ==> r6c22 = 17
naked-single ==> r2c22 = 15
naked-single ==> r2c21 = 17
naked-single ==> r16c21 = 16
naked-single ==> r24c22 = 8
naked-single ==> r3c22 = 10
naked-single ==> r3c23 = 8
naked-single ==> r20c22 = 6
naked-single ==> r6c25 = 13
naked-single ==> r16c24 = 9
naked-single ==> r24c25 = 15
naked-single ==> r13c25 = 11
naked-single ==> r13c16 = 6
naked-single ==> r13c23 = 15
naked-single ==> r18c23 = 11
naked-single ==> r18c8 = 16
naked-single ==> r18c11 = 23
naked-single ==> r18c1 = 15
naked-single ==> r17c1 = 12
naked-single ==> r18c21 = 19
naked-single ==> r17c21 = 15
naked-single ==> r17c10 = 13
naked-single ==> r16c10 = 23
naked-single ==> r20c10 = 15
naked-single ==> r17c23 = 10
naked-single ==> r16c23 = 13
naked-single ==> r16c11 = 11
naked-single ==> r16c16 = 10
naked-single ==> r16c8 = 17
naked-single ==> r16c25 = 12
naked-single ==> r20c7 = 10
naked-single ==> r20c4 = 13
naked-single ==> r19c4 = 10
naked-single ==> r20c11 = 9
naked-single ==> r22c7 = 17
naked-single ==> r22c8 = 10
naked-single ==> r19c11 = 13
naked-single ==> r17c8 = 11
naked-single ==> r17c17 = 19
naked-single ==> r17c13 = 3
naked-single ==> r17c24 = 18
naked-single ==> r20c13 = 19
naked-single ==> r20c17 = 22
naked-single ==> r19c17 = 11
naked-single ==> r19c16 = 8
naked-single ==> r19c19 = 20
naked-single ==> r14c19 = 22
naked-single ==> r10c19 = 9
naked-single ==> r10c18 = 22
naked-single ==> r24c19 = 3
naked-single ==> r24c18 = 9
naked-single ==> r14c18 = 20
naked-single ==> r19c24 = 22
naked-single ==> r15c24 = 20
naked-single ==> r15c23 = 22
naked-single ==> r20c24 = 3
naked-single ==> r20c23 = 20
naked-single ==> r20c1 = 23
naked-single ==> r20c25 = 17
naked-single ==> r24c16 = 12
naked-single ==> r9c18 = 3
naked-single ==> r15c16 = 11
naked-single ==> r11c9 = 12
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = HP

03 11 10 22 08 12 01 25 16 06 17 18 15 14 04 23 13 19 05 20 09 02 07 21 24
07 14 06 18 21 09 13 08 10 02 16 23 05 24 20 25 03 04 11 22 17 15 19 12 01
25 17 09 15 05 11 22 19 20 18 07 02 01 03 21 14 06 24 12 16 13 10 08 04 23
19 13 02 01 23 14 07 21 24 04 22 12 09 25 11 15 08 17 18 10 20 05 06 16 03
04 12 24 16 20 23 03 15 05 17 06 19 10 08 13 21 09 07 01 02 11 22 25 14 18
22 03 18 23 25 05 12 04 19 09 21 11 20 06 15 16 02 01 08 07 24 17 14 10 13
05 21 13 09 04 06 16 20 11 01 08 22 25 19 10 24 18 15 14 17 02 03 12 23 07
11 10 19 14 16 24 08 23 17 03 05 04 07 02 01 13 12 06 21 25 22 20 18 15 09
20 02 01 17 15 10 18 22 21 07 14 13 12 09 24 19 04 03 23 05 25 11 16 06 08
06 24 08 12 07 25 02 13 15 14 18 03 23 17 16 20 10 22 09 11 05 01 21 19 04
10 19 22 07 13 08 11 18 12 16 01 09 21 20 05 04 15 02 24 23 03 14 17 25 06
08 09 20 02 03 15 25 06 22 21 12 17 11 18 23 07 01 10 19 14 04 13 05 24 16
01 23 16 21 12 03 20 02 13 19 04 10 24 22 14 06 17 05 25 09 07 18 15 08 11
17 06 11 04 18 07 24 09 14 05 25 15 08 13 19 03 16 20 22 12 10 21 23 01 02
14 05 15 25 24 17 04 01 23 10 02 06 16 07 03 11 21 18 13 08 12 09 22 20 19
24 01 04 19 22 20 14 17 03 23 11 08 02 21 18 10 05 25 06 15 16 07 13 09 12
12 08 17 06 02 22 21 11 01 13 20 07 03 05 25 09 19 23 16 04 15 24 10 18 14
15 20 05 03 14 04 09 16 07 08 23 01 22 10 06 18 24 12 17 13 19 25 11 02 21
18 07 25 10 09 02 19 12 06 24 13 16 14 15 17 08 11 21 20 03 23 04 01 22 05
23 16 21 13 11 18 10 05 25 15 09 24 19 04 12 02 22 14 07 01 08 06 20 03 17
21 15 03 05 10 13 23 14 02 12 19 20 17 01 09 22 07 08 04 06 18 16 24 11 25
09 04 12 11 06 21 17 10 18 25 15 14 13 23 08 05 20 16 02 24 01 19 03 07 22
02 22 14 20 19 01 06 24 08 11 03 25 04 16 07 17 23 13 15 18 21 12 09 05 10
13 18 23 24 01 16 05 07 04 20 10 21 06 11 22 12 25 09 03 19 14 08 02 17 15
16 25 07 08 17 19 15 03 09 22 24 05 18 12 02 01 14 11 10 21 06 23 04 13 20
Puzzle (3 11 10 22 8 . 1 25 . 6 17 18 . . 4 . . . 5 20 9 . 7 21 24 . . 6 . . . . . . . 16 . 5 24 . . 3 4 11 22 . . 19 . . . 17 . 15 5 11 22 . . . 7 . 1 3 . . 6 . 12 16 13 . . . 23 19 13 2 1 . . . 21 . . 22 . 9 . . 15 8 . . 10 20 5 6 . . 4 . 24 16 20 . 3 15 5 . . 19 10 8 . . . . 1 . . 22 . 14 18 . . . . 25 . . . . 9 21 11 . . . . 2 . . . . . 14 . . . . 13 9 . 6 . . . . . 22 . . . 24 . 15 14 . 2 . . 23 7 11 10 . 14 . 24 . . 17 3 5 4 7 . . 13 12 . 21 25 22 . . 15 . 20 . . 17 . 10 . 22 . 7 14 13 . . 24 . 4 . . 5 25 11 . . . . . . . . . 2 . 15 . 18 . 23 17 . . 10 . . . 5 1 21 19 4 10 . . . 13 8 11 . . . . . 21 20 . . 15 2 24 . . . 17 25 6 . 9 . 2 3 . . . 22 . . 17 . 18 23 7 1 10 . . . . 5 . . . 23 . 21 12 . 20 . 13 . . . 24 . . . 17 . 25 . 7 18 . 8 . . . 11 . . . . 9 14 5 25 15 . 13 . . 16 . . . 10 21 . 1 . 14 5 15 . . . 4 1 23 . . 6 16 . . . . . 13 8 12 . . . 19 24 1 4 19 22 . . . . . . 8 2 . 18 . 5 . 6 . . . . . . . . . 6 2 22 . . 1 . 20 . . 5 25 9 . 23 . 4 . 24 . . 14 . 20 . . 14 4 9 . 7 8 . . 22 10 6 18 24 . . 13 . 25 . 2 21 18 7 . . 9 . 19 12 . 24 . . . 15 . . . . . 3 . 4 1 . . . . 21 . . . . . 25 . . . . 4 12 2 . . . . 8 . . . . 21 15 . 5 . . 23 . . . . 20 17 1 . . 7 8 4 . 18 16 24 . 25 . . 12 11 6 21 . . 18 25 . . 13 . 8 . . 16 . . . 19 3 7 22 2 . . . 19 1 6 . 8 . . 25 4 . 7 . . . 15 18 21 12 . 5 . . . 23 . . 16 5 7 4 . . 21 6 . 22 . . . . . . . 2 . . 16 . . . 17 19 15 . . . 24 . . 12 2 1 . 11 10 . 6 23 4 13 20) :
init-time = 37.47s, solve-time = 8.73s, total-time = 46.2s
nb-facts=<Fact-112095>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
