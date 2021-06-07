(CLIPS-solve "grid5x5-p3")

The puzzle is:

   25  4 12  8  1  23 20  *  *  *   7 19 10  *  *   *  6  *  *  *  14 15  *  5  *
   17 10 11 19  9  14  6  *  7  *  20 21  *  *  *   2  *  *  *  5   *  *  *  *  *
    *  5  *  *  7   1  *  *  8 24   *  *  *  *  *  18 12  * 22  *   *  9  * 19  *
   14  *  *  * 20   *  * 11  *  *   *  *  6  * 17  25  8 19  * 13   * 10  2 21  *
   24  6 15 22 18  13  * 25  * 16   *  4  *  2  *   3  1  7  *  *   * 23  *  * 11

    * 13 14 11 25  21  *  * 18  *   4 15 12  *  *  22  *  *  8  6   *  5  *  *  *
    *  *  5 12  *   * 14 19  6  *  16  * 25 10  2   *  *  *  *  *   *  *  *  7 17
   22  * 18 16  *   3 23  * 15  *   *  *  *  *  9   *  *  5  *  1   * 11 25  2  *
    *  * 10 21  *  20 12  * 22  7  17 14  *  *  *  19  * 11  *  *   *  *  3  *  8
    *  *  *  9 17  10 25  *  *  *   3  *  * 11  *  21  *  *  2  *   * 22  *  * 20

    *  2  *  4  *   * 16  * 17 14   *  3 11  *  *   6  *  * 13  *   7  *  *  *  *
   11 17  *  * 10   2 15  * 19  *  12 25 16  6  *   *  * 22  *  4   *  * 24  *  9
    *  *  * 23  3   7  *  *  *  8  18 10  4 15  5  16  *  *  * 12  11 17  *  *  *
   16  * 19  *  *   4  *  9  *  *   * 13  7 21  1   * 23  * 17  8  12  *  * 22  5
    *  *  *  * 22   * 10  *  *  6   *  * 24 20  *  11  7  * 18  *   *  8  * 25  *

   10  *  * 20  *   * 13  *  * 19   * 18  *  *  7   *  *  *  3  9  22 25  *  *  *
    8  *  3  *  *   *  * 18  * 11   *  *  *  5 23   7  2  * 12 21   *  6 15  *  *
    *  9  6 15  *   8  *  4  *  *  11  *  *  *  *   * 22  * 14 10   *  7 18  *  3
   12 18  *  *  *   *  *  *  *  *  19  6 14  * 15   *  4 13 25  *   * 20 11  *  *
    *  *  *  1  *  16  9  *  * 25   *  *  2  3 10   * 20  *  * 18  21 14  8 17  *

   20  *  * 24  *   *  *  7  9 15   * 11  * 17  *   4  *  8  * 25  10 12 13 14 22
    *  7 23 17  *  25  * 10 16 13  24  * 22  *  *   *  * 12  *  *   2  1  6  8 21
    *  1  * 14  *   * 11  * 20 21   *  *  *  *  *  13 16  *  *  2   5  *  * 23  *
    *  *  *  *  *  22  *  *  * 12   *  *  * 16 25   * 24  * 11 23   *  *  *  * 18
    * 12  * 10 15   *  *  * 14  *   *  *  1 19  4   *  *  *  7 22  20 24  9 11 16

The solution is:

   25  4 12  8  1  23 20  3 21  2   7 19 10 13 18   9  6 17 16 11  14 15 22  5 24
   17 10 11 19  9  14  6 12  7 18  20 21  8 22 24   2 15  4 23  5  25 16  1  3 13
    2  5 21 13  7   1 17 15  8 24  25 16  3 23 11  18 12 10 22 14   4  9 20 19  6
   14 23 16  3 20   9  5 11  4 22  15  1  6 12 17  25  8 19 24 13  18 10  2 21  7
   24  6 15 22 18  13 19 25 10 16   5  4  9  2 14   3  1  7 21 20   8 23 17 12 11

    7 13 14 11 25  21  2 16 18  9   4 15 12  1 20  22 17  3  8  6  24  5 23 10 19
    3  8  5 12 24  11 14 19  6  1  16 22 25 10  2  23  9 18 20 15  13  4 21  7 17
   22 20 18 16  4   3 23 24 15 17  21  8 19  7  9  12 13  5 10  1   6 11 25  2 14
   23 15 10 21  2  20 12 13 22  7  17 14  5 24  6  19 25 11  4 16   9 18  3  1  8
    6 19  1  9 17  10 25  8  5  4   3 23 18 11 13  21 14 24  2  7  15 22 12 16 20

    1  2  8  4 12  18 16  5 17 14  23  3 11  9 22   6 10 25 13 24   7 21 19 20 15
   11 17 20  7 10   2 15  1 19 23  12 25 16  6  8  14 21 22  5  4   3 13 24 18  9
   21 24 13 23  3   7 22 20 25  8  18 10  4 15  5  16 19  2  9 12  11 17 14  6  1
   16 25 19 18  6   4 24  9 11  3  14 13  7 21  1  15 23 20 17  8  12  2 10 22  5
   15 14  9  5 22  12 10 21 13  6   2 17 24 20 19  11  7  1 18  3  23  8 16 25  4

   10 16 17 20 23  15 13 14 12 19   1 18 21  4  7   8 11  6  3  9  22 25  5 24  2
    8 22  3 25 14  17  1 18 24 11   9 20 13  5 23   7  2 16 12 21  19  6 15  4 10
    5  9  6 15 19   8 21  4  2 20  11 12 17 25 16  24 22 23 14 10   1  7 18 13  3
   12 18 24  2 21   5  7 22  3 10  19  6 14  8 15   1  4 13 25 17  16 20 11  9 23
    4 11  7  1 13  16  9  6 23 25  22 24  2  3 10   5 20 15 19 18  21 14  8 17 12

   20  3  2 24 16  19 18  7  9 15   6 11 23 17 21   4  5  8  1 25  10 12 13 14 22
    9  7 23 17 11  25  4 10 16 13  24  5 22 14  3  20 18 12 15 19   2  1  6  8 21
   19  1 22 14  8  24 11 17 20 21  10  7 15 18 12  13 16  9  6  2   5  3  4 23 25
   13 21  4  6  5  22  3  2  1 12   8  9 20 16 25  10 24 14 11 23  17 19  7 15 18
   18 12 25 10 15   6  8 23 14  5  13  2  1 19  4  17  3 21  7 22  20 24  9 11 16

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line


CLIPS time = 2.12316608428955




(solve-sudoku-list
    25  4 12  8  1  23 20  .  .  .   7 19 10  .  .   .  6  .  .  .  14 15  .  5  .
    17 10 11 19  9  14  6  .  7  .  20 21  .  .  .   2  .  .  .  5   .  .  .  .  .
     .  5  .  .  7   1  .  .  8 24   .  .  .  .  .  18 12  . 22  .   .  9  . 19  .
    14  .  .  . 20   .  . 11  .  .   .  .  6  . 17  25  8 19  . 13   . 10  2 21  .
    24  6 15 22 18  13  . 25  . 16   .  4  .  2  .   3  1  7  .  .   . 23  .  . 11
 
     . 13 14 11 25  21  .  . 18  .   4 15 12  .  .  22  .  .  8  6   .  5  .  .  .
     .  .  5 12  .   . 14 19  6  .  16  . 25 10  2   .  .  .  .  .   .  .  .  7 17
    22  . 18 16  .   3 23  . 15  .   .  .  .  .  9   .  .  5  .  1   . 11 25  2  .
     .  . 10 21  .  20 12  . 22  7  17 14  .  .  .  19  . 11  .  .   .  .  3  .  8
     .  .  .  9 17  10 25  .  .  .   3  .  . 11  .  21  .  .  2  .   . 22  .  . 20
 
     .  2  .  4  .   . 16  . 17 14   .  3 11  .  .   6  .  . 13  .   7  .  .  .  .
    11 17  .  . 10   2 15  . 19  .  12 25 16  6  .   .  . 22  .  4   .  . 24  .  9
     .  .  . 23  3   7  .  .  .  8  18 10  4 15  5  16  .  .  . 12  11 17  .  .  .
    16  . 19  .  .   4  .  9  .  .   . 13  7 21  1   . 23  . 17  8  12  .  . 22  5
     .  .  .  . 22   . 10  .  .  6   .  . 24 20  .  11  7  . 18  .   .  8  . 25  .
 
    10  .  . 20  .   . 13  .  . 19   . 18  .  .  7   .  .  .  3  9  22 25  .  .  .
     8  .  3  .  .   .  . 18  . 11   .  .  .  5 23   7  2  . 12 21   .  6 15  .  .
     .  9  6 15  .   8  .  4  .  .  11  .  .  .  .   . 22  . 14 10   .  7 18  .  3
    12 18  .  .  .   .  .  .  .  .  19  6 14  . 15   .  4 13 25  .   . 20 11  .  .
     .  .  .  1  .  16  9  .  . 25   .  .  2  3 10   . 20  .  . 18  21 14  8 17  .
 
    20  .  . 24  .   .  .  7  9 15   . 11  . 17  .   4  .  8  . 25  10 12 13 14 22
     .  7 23 17  .  25  . 10 16 13  24  . 22  .  .   .  . 12  .  .   2  1  6  8 21
     .  1  . 14  .   . 11  . 20 21   .  .  .  .  .  13 16  .  .  2   5  .  . 23  .
     .  .  .  .  .  22  .  .  . 12   .  .  . 16 25   . 24  . 11 23   .  .  .  . 18
     . 12  . 10 15   .  .  . 14  .   .  .  1 19  4   .  .  .  7 22  20 24  9 11 16
)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
(25 4 12 8 1 23 20 . . . 7 19 10 . . . 6 . . . 14 15 . 5 . 17 10 11 19 9 14 6 . 7 . 20 21 . . . 2 . . . 5 . . . . . . 5 . . 7 1 . . 8 24 . . . . . 18 12 . 22 . . 9 . 19 . 14 . . . 20 . . 11 . . . . 6 . 17 25 8 19 . 13 . 10 2 21 . 24 6 15 22 18 13 . 25 . 16 . 4 . 2 . 3 1 7 . . . 23 . . 11 . 13 14 11 25 21 . . 18 . 4 15 12 . . 22 . . 8 6 . 5 . . . . . 5 12 . . 14 19 6 . 16 . 25 10 2 . . . . . . . . 7 17 22 . 18 16 . 3 23 . 15 . . . . . 9 . . 5 . 1 . 11 25 2 . . . 10 21 . 20 12 . 22 7 17 14 . . . 19 . 11 . . . . 3 . 8 . . . 9 17 10 25 . . . 3 . . 11 . 21 . . 2 . . 22 . . 20 . 2 . 4 . . 16 . 17 14 . 3 11 . . 6 . . 13 . 7 . . . . 11 17 . . 10 2 15 . 19 . 12 25 16 6 . . . 22 . 4 . . 24 . 9 . . . 23 3 7 . . . 8 18 10 4 15 5 16 . . . 12 11 17 . . . 16 . 19 . . 4 . 9 . . . 13 7 21 1 . 23 . 17 8 12 . . 22 5 . . . . 22 . 10 . . 6 . . 24 20 . 11 7 . 18 . . 8 . 25 . 10 . . 20 . . 13 . . 19 . 18 . . 7 . . . 3 9 22 25 . . . 8 . 3 . . . . 18 . 11 . . . 5 23 7 2 . 12 21 . 6 15 . . . 9 6 15 . 8 . 4 . . 11 . . . . . 22 . 14 10 . 7 18 . 3 12 18 . . . . . . . . 19 6 14 . 15 . 4 13 25 . . 20 11 . . . . . 1 . 16 9 . . 25 . . 2 3 10 . 20 . . 18 21 14 8 17 . 20 . . 24 . . . 7 9 15 . 11 . 17 . 4 . 8 . 25 10 12 13 14 22 . 7 23 17 . 25 . 10 16 13 24 . 22 . . . . 12 . . 2 1 6 8 21 . 1 . 14 . . 11 . 20 21 . . . . . 13 16 . . 2 5 . . 23 . . . . . . 22 . . . 12 . . . 16 25 . 24 . 11 23 . . . . 18 . 12 . 10 15 . . . 14 . . . 1 19 4 . . . 7 22 20 24 9 11 16)
302 givens, 1656 candidates
entering BRT
naked-single ==> r4c4 = 3
naked-single ==> r4c3 = 16
naked-single ==> r4c2 = 23
naked-single ==> r2c17 = 15
hidden-single-in-a-row ==> r25c3 = 25
hidden-single-in-a-row ==> r23c25 = 25
hidden-single-in-a-column ==> r4c25 = 7
hidden-single-in-a-row ==> r23c3 = 22
hidden-single-in-a-row ==> r22c5 = 11
hidden-single-in-a-row ==> r20c2 = 11
hidden-single-in-a-row ==> r16c17 = 11
hidden-single-in-a-block ==> r17c2 = 22
hidden-single-in-a-row ==> r17c5 = 14
hidden-single-in-a-row ==> r16c8 = 14
hidden-single-in-a-block ==> r17c4 = 25
hidden-single-in-a-block ==> r18c14 = 25
hidden-single-in-a-block ==> r3c11 = 25
hidden-single-in-a-block ==> r2c21 = 25
hidden-single-in-a-block ==> r5c21 = 8
hidden-single-in-a-block ==> r20c19 = 19
hidden-single-in-a-column ==> r19c10 = 10
hidden-single-in-a-column ==> r5c9 = 10
hidden-single-in-a-block ==> r3c18 = 10
hidden-single-in-a-column ==> r19c7 = 7
hidden-single-in-a-column ==> r12c4 = 7
hidden-single-in-a-column ==> r14c4 = 18
hidden-single-in-a-column ==> r24c4 = 6
hidden-single-in-a-row ==> r14c5 = 6
hidden-single-in-a-block ==> r18c10 = 20
naked-single ==> r14c10 = 3
naked-single ==> r14c7 = 24
naked-single ==> r14c22 = 2
naked-single ==> r14c11 = 14
naked-single ==> r12c15 = 8
naked-single ==> r15c15 = 19
naked-single ==> r11c15 = 22
hidden-single-in-a-row ==> r13c18 = 2
hidden-single-in-a-column ==> r16c23 = 5
hidden-single-in-a-column ==> r16c14 = 4
hidden-single-in-a-row ==> r15c12 = 17
hidden-single-in-a-block ==> r15c11 = 2
hidden-single-in-a-row ==> r14c9 = 11
hidden-single-in-a-block ==> r13c9 = 25
hidden-single-in-a-block ==> r14c2 = 25
hidden-single-in-a-column ==> r11c18 = 25
hidden-single-in-a-column ==> r9c17 = 25
hidden-single-in-a-column ==> r11c5 = 12
hidden-single-in-a-block ==> r11c3 = 8
hidden-single-in-a-row ==> r11c20 = 24
hidden-single-in-a-column ==> r22c20 = 19
hidden-single-in-a-column ==> r10c20 = 7
hidden-single-in-a-block ==> r6c1 = 7
hidden-single-in-a-block ==> r20c3 = 7
hidden-single-in-a-column ==> r8c16 = 12
hidden-single-in-a-row ==> r7c12 = 22
hidden-single-in-a-row ==> r7c6 = 11
hidden-single-in-a-column ==> r4c6 = 9
hidden-single-in-a-block ==> r3c8 = 15
hidden-single-in-a-block ==> r4c11 = 15
hidden-single-in-a-column ==> r20c11 = 22
hidden-single-in-a-row ==> r19c8 = 22
hidden-single-in-a-block ==> r13c7 = 22
hidden-single-in-a-block ==> r19c9 = 3
hidden-single-in-a-block ==> r16c6 = 15
hidden-single-in-a-block ==> r20c8 = 6
hidden-single-in-a-block ==> r16c18 = 6
hidden-single-in-a-column ==> r15c6 = 12
hidden-single-in-a-column ==> r2c8 = 12
hidden-single-in-a-row ==> r5c7 = 19
hidden-single-in-a-row ==> r5c19 = 21
Starting_init_links_with_<Fact-67844>
1190 candidates, 9396 csp-links and 9396 links. Density = 1.33%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-102919>
whip[1]: c7n8{r25 .} ==> r25c8 ≠ 8, r23c8 ≠ 8, r24c8 ≠ 8
whip[1]: r22n15{c19 .} ==> r24c18 ≠ 15, r23c18 ≠ 15, r23c19 ≠ 15, r24c16 ≠ 15
hidden-single-in-a-row ==> r23c13 = 15
whip[1]: r24n14{c18 .} ==> r22c17 ≠ 14, r22c16 ≠ 14
whip[1]: r21n23{c13 .} ==> r25c12 ≠ 23, r25c11 ≠ 23
whip[1]: c25n12{r20 .} ==> r18c24 ≠ 12, r16c24 ≠ 12
whip[1]: r19n21{c5 .} ==> r18c5 ≠ 21, r16c2 ≠ 21, r16c3 ≠ 21, r16c5 ≠ 21, r18c1 ≠ 21
whip[1]: r17n19{c25 .} ==> r18c21 ≠ 19
whip[1]: r17n4{c25 .} ==> r20c25 ≠ 4
whip[1]: c11n1{r17 .} ==> r19c14 ≠ 1, r17c12 ≠ 1, r18c12 ≠ 1
whip[1]: c25n15{r15 .} ==> r15c21 ≠ 15, r11c24 ≠ 15
whip[1]: r14n15{c18 .} ==> r15c20 ≠ 15, r15c18 ≠ 15
whip[1]: c20n15{r9 .} ==> r7c16 ≠ 15, r7c18 ≠ 15, r7c19 ≠ 15, r9c19 ≠ 15, r10c18 ≠ 15
hidden-single-in-a-column ==> r22c19 = 15
whip[1]: c3n20{r13 .} ==> r13c2 ≠ 20
whip[1]: r12n14{c17 .} ==> r15c20 ≠ 14, r13c17 ≠ 14, r15c18 ≠ 14
naked-single ==> r15c20 = 3
whip[1]: r7n8{c5 .} ==> r10c2 ≠ 8, r8c2 ≠ 8, r8c5 ≠ 8
whip[1]: r6n19{c25 .} ==> r10c23 ≠ 19, r8c21 ≠ 19, r8c25 ≠ 19, r10c21 ≠ 19
whip[1]: r6n3{c18 .} ==> r7c18 ≠ 3, r7c17 ≠ 3
whip[1]: r6n2{c10 .} ==> r9c8 ≠ 2
whip[1]: r4n12{c14 .} ==> r5c15 ≠ 12
naked-single ==> r5c15 = 14
hidden-single-in-a-column ==> r22c14 = 14
hidden-single-in-a-row ==> r3c20 = 14
hidden-single-in-a-block ==> r1c20 = 11
hidden-single-in-a-block ==> r3c15 = 11
hidden-single-in-a-block ==> r5c20 = 20
naked-single ==> r5c24 = 12
naked-single ==> r5c23 = 17
naked-single ==> r7c20 = 15
naked-single ==> r9c20 = 16
naked-single ==> r19c20 = 17
hidden-single-in-a-block ==> r16c3 = 17
hidden-single-in-a-column ==> r2c22 = 16
naked-single ==> r1c23 = 22
hidden-single-in-a-column ==> r1c19 = 16
hidden-single-in-a-block ==> r3c12 = 16
hidden-single-in-a-column ==> r10c12 = 23
hidden-single-in-a-column ==> r4c12 = 1
hidden-single-in-a-block ==> r4c14 = 12
hidden-single-in-a-block ==> r2c14 = 22
hidden-single-in-a-block ==> r4c10 = 22
hidden-single-in-a-block ==> r2c13 = 8
naked-single ==> r16c13 = 21
hidden-single-in-a-block ==> r8c11 = 21
hidden-single-in-a-block ==> r21c15 = 21
naked-single ==> r21c3 = 2
hidden-single-in-a-row ==> r10c8 = 8
hidden-single-in-a-block ==> r6c8 = 16
hidden-single-in-a-block ==> r18c15 = 16
hidden-single-in-a-column ==> r23c15 = 12
hidden-single-in-a-block ==> r17c18 = 16
hidden-single-in-a-column ==> r24c21 = 17
hidden-single-in-a-block ==> r24c24 = 15
hidden-single-in-a-row ==> r3c7 = 17
naked-single ==> r17c7 = 1
naked-single ==> r6c7 = 2
naked-single ==> r17c9 = 24
naked-single ==> r17c6 = 17
naked-single ==> r19c6 = 5
naked-single ==> r11c6 = 18
naked-single ==> r25c6 = 6
naked-single ==> r21c6 = 19
naked-single ==> r23c6 = 24
naked-single ==> r18c7 = 21
naked-single ==> r19c4 = 2
naked-single ==> r3c4 = 13
naked-single ==> r3c3 = 21
naked-single ==> r3c1 = 2
naked-single ==> r19c3 = 24
naked-single ==> r16c2 = 16
naked-single ==> r16c5 = 23
naked-single ==> r19c5 = 21
naked-single ==> r21c2 = 3
naked-single ==> r3c14 = 23
naked-single ==> r3c13 = 3
naked-single ==> r11c14 = 9
naked-single ==> r11c11 = 23
naked-single ==> r19c14 = 8
naked-single ==> r16c11 = 1
naked-single ==> r16c24 = 24
naked-single ==> r16c16 = 8
naked-single ==> r15c4 = 5
hidden-single-in-a-block ==> r8c12 = 8
hidden-single-in-a-block ==> r8c14 = 7
naked-single ==> r23c14 = 18
hidden-single-in-a-block ==> r21c13 = 23
hidden-single-in-a-column ==> r22c15 = 3
hidden-single-in-a-column ==> r6c15 = 20
hidden-single-in-a-row ==> r1c8 = 3
naked-single ==> r23c8 = 17
hidden-single-in-a-block ==> r1c9 = 21
hidden-single-in-a-block ==> r1c10 = 2
hidden-single-in-a-row ==> r1c15 = 18
hidden-single-in-a-row ==> r2c24 = 3
hidden-single-in-a-block ==> r4c21 = 18
hidden-single-in-a-block ==> r2c10 = 18
hidden-single-in-a-row ==> r4c19 = 24
hidden-single-in-a-column ==> r12c21 = 3
hidden-single-in-a-block ==> r7c1 = 3
hidden-single-in-a-block ==> r9c1 = 23
hidden-single-in-a-block ==> r10c1 = 6
hidden-single-in-a-block ==> r10c3 = 1
hidden-single-in-a-column ==> r24c3 = 4
hidden-single-in-a-column ==> r20c1 = 4
hidden-single-in-a-row ==> r22c7 = 4
naked-single ==> r4c7 = 5
naked-single ==> r4c9 = 4
naked-single ==> r21c7 = 18
naked-single ==> r21c17 = 5
naked-single ==> r21c5 = 16
naked-single ==> r21c11 = 6
naked-single ==> r21c19 = 1
naked-single ==> r25c16 = 17
naked-single ==> r1c16 = 9
naked-single ==> r1c18 = 17
naked-single ==> r22c16 = 20
hidden-single-in-a-block ==> r23c19 = 6
hidden-single-in-a-block ==> r24c16 = 10
naked-single ==> r14c16 = 15
naked-single ==> r14c18 = 20
naked-single ==> r12c19 = 5
naked-single ==> r13c19 = 9
naked-single ==> r9c19 = 4
naked-single ==> r2c19 = 23
naked-single ==> r2c18 = 4
naked-single ==> r2c23 = 1
naked-single ==> r7c19 = 20
naked-single ==> r8c19 = 10
naked-single ==> r14c23 = 10
hidden-single-in-a-row ==> r11c17 = 10
hidden-single-in-a-block ==> r13c17 = 19
hidden-single-in-a-block ==> r8c2 = 20
hidden-single-in-a-column ==> r15c3 = 9
hidden-single-in-a-block ==> r11c8 = 5
hidden-single-in-a-row ==> r9c13 = 5
naked-single ==> r5c13 = 9
naked-single ==> r5c11 = 5
hidden-single-in-a-block ==> r10c13 = 18
hidden-single-in-a-block ==> r8c13 = 19
hidden-single-in-a-block ==> r10c2 = 19
hidden-single-in-a-block ==> r9c2 = 15
hidden-single-in-a-block ==> r10c21 = 15
hidden-single-in-a-column ==> r20c18 = 15
hidden-single-in-a-block ==> r23c11 = 10
hidden-single-in-a-row ==> r23c5 = 8
naked-single ==> r24c2 = 21
naked-single ==> r15c2 = 14
naked-single ==> r13c2 = 24
naked-single ==> r7c2 = 8
hidden-single-in-a-block ==> r24c18 = 14
naked-single ==> r10c18 = 24
naked-single ==> r7c16 = 23
naked-single ==> r19c16 = 1
naked-single ==> r12c16 = 14
naked-single ==> r12c17 = 21
naked-single ==> r15c18 = 1
naked-single ==> r18c18 = 23
naked-single ==> r19c25 = 23
naked-single ==> r10c15 = 13
naked-single ==> r2c15 = 24
naked-single ==> r1c14 = 13
naked-single ==> r1c25 = 24
naked-single ==> r2c25 = 13
naked-single ==> r20c25 = 12
naked-single ==> r16c25 = 2
naked-single ==> r16c9 = 12
naked-single ==> r18c9 = 2
naked-single ==> r20c9 = 23
naked-single ==> r15c9 = 13
naked-single ==> r20c12 = 24
naked-single ==> r18c12 = 12
naked-single ==> r20c16 = 5
naked-single ==> r18c16 = 24
naked-single ==> r20c5 = 13
naked-single ==> r9c15 = 6
naked-single ==> r10c9 = 5
naked-single ==> r10c10 = 4
naked-single ==> r8c10 = 17
naked-single ==> r10c24 = 16
naked-single ==> r19c24 = 9
naked-single ==> r19c21 = 16
naked-single ==> r24c9 = 1
naked-single ==> r24c8 = 2
naked-single ==> r25c8 = 23
naked-single ==> r15c8 = 21
naked-single ==> r15c1 = 15
naked-single ==> r15c25 = 4
naked-single ==> r3c25 = 6
naked-single ==> r3c21 = 4
naked-single ==> r3c23 = 20
naked-single ==> r8c25 = 14
naked-single ==> r8c17 = 13
naked-single ==> r8c8 = 24
naked-single ==> r8c5 = 4
naked-single ==> r7c5 = 24
naked-single ==> r9c5 = 2
naked-single ==> r8c21 = 6
naked-single ==> r10c23 = 12
naked-single ==> r13c25 = 1
naked-single ==> r11c24 = 20
naked-single ==> r13c8 = 20
naked-single ==> r12c8 = 1
naked-single ==> r9c8 = 13
naked-single ==> r9c22 = 18
naked-single ==> r9c24 = 1
naked-single ==> r6c24 = 10
naked-single ==> r6c25 = 19
naked-single ==> r6c23 = 23
naked-single ==> r15c23 = 16
naked-single ==> r11c25 = 15
naked-single ==> r17c25 = 10
naked-single ==> r9c14 = 24
naked-single ==> r6c14 = 1
naked-single ==> r6c10 = 9
naked-single ==> r6c18 = 3
naked-single ==> r6c17 = 17
naked-single ==> r23c18 = 9
naked-single ==> r7c18 = 18
naked-single ==> r7c17 = 9
naked-single ==> r7c21 = 13
naked-single ==> r17c21 = 19
naked-single ==> r18c21 = 1
naked-single ==> r25c18 = 21
naked-single ==> r22c17 = 18
naked-single ==> r25c17 = 3
naked-single ==> r25c7 = 8
naked-single ==> r24c7 = 3
naked-single ==> r24c22 = 19
naked-single ==> r11c22 = 21
naked-single ==> r7c22 = 4
naked-single ==> r7c23 = 21
naked-single ==> r23c22 = 3
naked-single ==> r11c1 = 1
naked-single ==> r11c23 = 19
naked-single ==> r13c23 = 14
naked-single ==> r24c5 = 5
naked-single ==> r18c5 = 19
naked-single ==> r18c1 = 5
naked-single ==> r22c1 = 9
naked-single ==> r22c12 = 5
naked-single ==> r25c12 = 2
naked-single ==> r24c1 = 13
naked-single ==> r13c1 = 21
naked-single ==> r24c13 = 20
naked-single ==> r17c13 = 13
naked-single ==> r17c11 = 9
naked-single ==> r17c12 = 20
naked-single ==> r24c11 = 8
naked-single ==> r17c24 = 4
naked-single ==> r18c13 = 17
naked-single ==> r25c1 = 18
naked-single ==> r24c23 = 7
naked-single ==> r23c23 = 4
naked-single ==> r24c12 = 9
naked-single ==> r25c11 = 13
naked-single ==> r23c1 = 19
naked-single ==> r23c12 = 7
naked-single ==> r6c21 = 24
naked-single ==> r7c10 = 1
naked-single ==> r9c21 = 9
naked-single ==> r18c24 = 13
naked-single ==> r12c24 = 18
naked-single ==> r13c24 = 6
naked-single ==> r12c22 = 13
naked-single ==> r12c3 = 20
naked-single ==> r12c10 = 23
naked-single ==> r13c3 = 13
naked-single ==> r15c21 = 23
naked-single ==> r25c10 = 5
naked-single ==> r10c17 = 14
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[1]
   P4C81NK3L27JADI96HGBEFM5O
   HABJ9E6C7IKL8MO2F4N5PG13D
   25LD71HF8OPG3NBICAME49KJ6
   ENG3K95B4MF16CHP8JODIA2L7
   O6FMIDJPAG5492E317LK8NHCB
   7DEBPL2GI94FC1KMH386O5NAJ
   385COBEJ61GMPA2N9IKFD4L7H
   MKIG43NOFHL8J79CD5A16BP2E
   NFAL2KCDM7HE5O6JPB4G9I318
   6J19HAP8543NIBDLEO27FMCGK
   1284CIG5HEN3B9M6APDO7LJKF
   BHK7A2F1JNCPG68ELM543DOI9
   LODN37MKP8IA4F5GJ29CBHE61
   GPJI64O9B3ED7L1FNKH8C2AM5
   FE95MCALD62HOKJB71I3N8GP4
   AGHKNFDECJ1IL478B639MP5O2
   8M3PEH1IOB9KD5N72GCLJ6F4A
   596FJ8L42KBCHPGOMNEA17ID3
   CIO2L57M3AJ6E8F14DPHGKB9N
   4B71DG96NPMO23A5KFJILE8HC
   K32OGJI79F6BNHL4581PACDEM
   97NHBP4AGDO5ME3KICFJ2168L
   J1ME8OBHKLA7FICDG962534NP
   DL465M321C89KGPAOEBNHJ7FI
   ICPAF68NE5D21J4H3L7MKO9BG

nb-facts = <Fact-103211>
Puzzle (25 4 12 8 1 23 20 . . . 7 19 10 . . . 6 . . . 14 15 . 5 . 17 10 11 19 9 14 6 . 7 . 20 21 . . . 2 . . . 5 . . . . . . 5 . . 7 1 . . 8 24 . . . . . 18 12 . 22 . . 9 . 19 . 14 . . . 20 . . 11 . . . . 6 . 17 25 8 19 . 13 . 10 2 21 . 24 6 15 22 18 13 . 25 . 16 . 4 . 2 . 3 1 7 . . . 23 . . 11 . 13 14 11 25 21 . . 18 . 4 15 12 . . 22 . . 8 6 . 5 . . . . . 5 12 . . 14 19 6 . 16 . 25 10 2 . . . . . . . . 7 17 22 . 18 16 . 3 23 . 15 . . . . . 9 . . 5 . 1 . 11 25 2 . . . 10 21 . 20 12 . 22 7 17 14 . . . 19 . 11 . . . . 3 . 8 . . . 9 17 10 25 . . . 3 . . 11 . 21 . . 2 . . 22 . . 20 . 2 . 4 . . 16 . 17 14 . 3 11 . . 6 . . 13 . 7 . . . . 11 17 . . 10 2 15 . 19 . 12 25 16 6 . . . 22 . 4 . . 24 . 9 . . . 23 3 7 . . . 8 18 10 4 15 5 16 . . . 12 11 17 . . . 16 . 19 . . 4 . 9 . . . 13 7 21 1 . 23 . 17 8 12 . . 22 5 . . . . 22 . 10 . . 6 . . 24 20 . 11 7 . 18 . . 8 . 25 . 10 . . 20 . . 13 . . 19 . 18 . . 7 . . . 3 9 22 25 . . . 8 . 3 . . . . 18 . 11 . . . 5 23 7 2 . 12 21 . 6 15 . . . 9 6 15 . 8 . 4 . . 11 . . . . . 22 . 14 10 . 7 18 . 3 12 18 . . . . . . . . 19 6 14 . 15 . 4 13 25 . . 20 11 . . . . . 1 . 16 9 . . 25 . . 2 3 10 . 20 . . 18 21 14 8 17 . 20 . . 24 . . . 7 9 15 . 11 . 17 . 4 . 8 . 25 10 12 13 14 22 . 7 23 17 . 25 . 10 16 13 24 . 22 . . . . 12 . . 2 1 6 8 21 . 1 . 14 . . 11 . 20 21 . . . . . 13 16 . . 2 5 . . 23 . . . . . . 22 . . . 12 . . . 16 25 . 24 . 11 23 . . . . 18 . 12 . 10 15 . . . 14 . . . 1 19 4 . . . 7 22 20 24 9 11 16) :
init-time = 38.65s, solve-time = 8.69s, total-time = 47.33s
nb-facts = <Fact-103211>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
