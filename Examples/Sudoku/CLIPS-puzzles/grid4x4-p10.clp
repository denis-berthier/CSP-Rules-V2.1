(CLIPS-solve "grid4x4-p10")

 
 The puzzle is:

    *  3  * 14   8  *  *  6   *  *  *  9   *  *  * 11
    *  6  5  *   4  *  *  1   *  * 15  7  14  *  9  *
    4  *  *  *   *  *  * 16   1  *  *  *  10  *  * 13
    1  *  *  7   9  *  *  2  14 16  *  *   *  4  *  6

    *  1  2  *  12  * 11  *   *  9  *  3  15  *  *  *
   13 10 15  *   6  *  1  *   5 12  * 16   7 11  3  4
    3 11  *  5  13 16  * 10   *  *  7 15   *  *  1 14
    *  *  *  *   3  7  9 15   *  6 11  *   *  *  5  *

    * 12  *  *   * 14  8  *   2  7  9 11   *  *  *  *
   14  7  *  *  16  1  *  *   3  * 10  4   2  * 12  5
   11  2  1 10   7  * 13 12   * 15  *  6   * 14  4  9
    *  *  *  8   2  * 10  *   * 13  * 14   * 15 11  *

    2  * 16  *   *  * 15  9   7  *  * 13   6  *  *  1
   10  *  * 12   *  *  *  7   6  *  *  *   *  *  *  2
    *  4  *  6   1  8  *  *  15  *  *  2   * 10 14  *
    8  *  *  *  11  *  *  *   9  *  * 10   4  *  7  *

The solution is:

   15  3 12 14   8 10  5  6  13  4  2  9   1  7 16 11
   16  6  5  2   4 13 12  1  11 10 15  7  14  8  9  3
    4  9  8 11  14 15  7 16   1  3  6  5  10 12  2 13
    1 13 10  7   9 11  3  2  14 16  8 12   5  4 15  6

    7  1  2 16  12  5 11 14   4  9 13  3  15  6 10  8
   13 10 15  9   6  2  1  8   5 12 14 16   7 11  3  4
    3 11  6  5  13 16  4 10   8  2  7 15  12  9  1 14
   12  8 14  4   3  7  9 15  10  6 11  1  13  2  5 16

    5 12  3 13  15 14  8  4   2  7  9 11  16  1  6 10
   14  7  9 15  16  1  6 11   3  8 10  4   2 13 12  5
   11  2  1 10   7  3 13 12  16 15  5  6   8 14  4  9
    6 16  4  8   2  9 10  5  12 13  1 14   3 15 11  7

    2 14 16  3  10 12 15  9   7 11  4 13   6  5  8  1
   10 15 11 12   5  4 14  7   6  1 16  8   9  3 13  2
    9  4  7  6   1  8 16 13  15  5  3  2  11 10 14 12
    8  5 13  1  11  6  2  3   9 14 12 10   4 16  7 15

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Naked Pairs
   Hidden Pairs
   Naked Triples
   XY-Wing


CLIPS time = 3.23614811897278





(solve-sudoku-list
    .  3  . 14   8  .  .  6   .  .  .  9   .  .  . 11
    .  6  5  .   4  .  .  1   .  . 15  7  14  .  9  .
    4  .  .  .   .  .  . 16   1  .  .  .  10  .  . 13
    1  .  .  7   9  .  .  2  14 16  .  .   .  4  .  6

    .  1  2  .  12  . 11  .   .  9  .  3  15  .  .  .
    13 10 15  .   6  .  1  .   5 12  . 16   7 11  3  4
    3 11  .  5  13 16  . 10   .  .  7 15   .  .  1 14
    .  .  .  .   3  7  9 15   .  6 11  .   .  .  5  .

    . 12  .  .   . 14  8  .   2  7  9 11   .  .  .  .
    14  7  .  .  16  1  .  .   3  . 10  4   2  . 12  5
    11  2  1 10   7  . 13 12   . 15  .  6   . 14  4  9
    .  .  .  8   2  . 10  .   . 13  . 14   . 15 11  .

    2  . 16  .   .  . 15  9   7  .  . 13   6  .  .  1
    10  .  . 12   .  .  .  7   6  .  .  .   .  .  .  2
    .  4  .  6   1  8  .  .  15  .  .  2   . 10 14  .
    8  .  .  .  11  .  .  .   9  .  . 10   4  .  7  .
)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
(. 3 . 14 8 . . 6 . . . 9 . . . 11 . 6 5 . 4 . . 1 . . 15 7 14 . 9 . 4 . . . . . . 16 1 . . . 10 . . 13 1 . . 7 9 . . 2 14 16 . . . 4 . 6 . 1 2 . 12 . 11 . . 9 . 3 15 . . . 13 10 15 . 6 . 1 . 5 12 . 16 7 11 3 4 3 11 . 5 13 16 . 10 . . 7 15 . . 1 14 . . . . 3 7 9 15 . 6 11 . . . 5 . . 12 . . . 14 8 . 2 7 9 11 . . . . 14 7 . . 16 1 . . 3 . 10 4 2 . 12 5 11 2 1 10 7 . 13 12 . 15 . 6 . 14 4 9 . . . 8 2 . 10 . . 13 . 14 . 15 11 . 2 . 16 . . . 15 9 7 . . 13 6 . . 1 10 . . 12 . . . 7 6 . . . . . . 2 . 4 . 6 1 8 . . 15 . . 2 . 10 14 . 8 . . . 11 . . . 9 . . 10 4 . 7 .)
126 givens, 489 candidates
entering BRT
naked-single ==> r13c15 = 8
naked-single ==> r4c15 = 15
naked-single ==> r3c15 = 2
naked-single ==> r1c15 = 16
naked-single ==> r14c15 = 13
naked-single ==> r10c10 = 8
naked-single ==> r11c9 = 16
naked-single ==> r11c11 = 5
naked-single ==> r11c6 = 3
naked-single ==> r11c13 = 8
naked-single ==> r12c9 = 12
naked-single ==> r12c11 = 1
naked-single ==> r10c8 = 11
naked-single ==> r10c7 = 6
naked-single ==> r10c14 = 13
naked-single ==> r10c3 = 9
naked-single ==> r10c4 = 15
naked-single ==> r6c6 = 2
naked-single ==> r7c7 = 4
naked-single ==> r5c6 = 5
naked-single ==> r14c6 = 4
naked-single ==> r12c6 = 9
naked-single ==> r7c9 = 8
naked-single ==> r6c11 = 14
naked-single ==> r6c8 = 8
naked-single ==> r5c8 = 14
naked-single ==> r8c12 = 1
naked-single ==> r7c10 = 2
naked-single ==> r6c4 = 9
naked-single ==> r3c4 = 11
naked-single ==> r13c4 = 3
hidden-single-in-a-column ==> r16c16 = 15
hidden-single-in-a-block ==> r14c2 = 15
hidden-single-in-a-block ==> r1c1 = 15
hidden-single-in-a-column ==> r3c6 = 15
hidden-single-in-a-column ==> r9c5 = 15
hidden-single-in-a-block ==> r15c1 = 9
hidden-single-in-a-block ==> r15c3 = 7
hidden-single-in-a-block ==> r14c3 = 11
hidden-single-in-a-block ==> r15c13 = 11
hidden-single-in-a-block ==> r13c10 = 11
hidden-single-in-a-block ==> r2c9 = 11
hidden-single-in-a-block ==> r4c6 = 11
hidden-single-in-a-row ==> r4c3 = 10
hidden-single-in-a-block ==> r13c11 = 4
naked-single ==> r5c11 = 13
hidden-single-in-a-block ==> r1c9 = 13
naked-single ==> r1c3 = 12
naked-single ==> r1c6 = 10
naked-single ==> r13c6 = 12
naked-single ==> r2c6 = 13
naked-single ==> r16c6 = 6
naked-single ==> r13c14 = 5
naked-single ==> r13c2 = 14
naked-single ==> r13c5 = 10
naked-single ==> r16c3 = 13
naked-single ==> r16c2 = 5
naked-single ==> r12c2 = 16
naked-single ==> r8c2 = 8
naked-single ==> r3c2 = 9
naked-single ==> r4c2 = 13
naked-single ==> r12c13 = 3
naked-single ==> r12c16 = 7
naked-single ==> r16c8 = 3
naked-single ==> r16c4 = 1
naked-single ==> r16c10 = 14
naked-single ==> r1c11 = 2
naked-single ==> r2c1 = 16
naked-single ==> r2c4 = 2
naked-single ==> r8c1 = 12
naked-single ==> r3c3 = 8
naked-single ==> r7c3 = 6
naked-single ==> r5c1 = 7
naked-single ==> r12c3 = 4
naked-single ==> r8c3 = 14
naked-single ==> r9c3 = 3
naked-single ==> r9c4 = 13
naked-single ==> r12c8 = 5
naked-single ==> r9c8 = 4
naked-single ==> r12c1 = 6
naked-single ==> r9c1 = 5
naked-single ==> r15c8 = 13
hidden-single-in-a-block ==> r14c10 = 1
hidden-single-in-a-block ==> r2c10 = 10
hidden-single-in-a-block ==> r1c10 = 4
hidden-single-in-a-row ==> r8c13 = 13
hidden-single-in-a-row ==> r16c7 = 2
hidden-single-in-a-row ==> r8c14 = 2
hidden-single-in-a-row ==> r3c11 = 6
Starting_init_links_with_<Fact-18514>
188 candidates, 315 csp-links and 315 links. Density = 1.79%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-19663>
whip[1]: c12n12{r4 .} ==> r4c11 ≠ 12
Entering_relation_bivalue_with_<Fact-19666>
Entering_level_S2_with_<Fact-19891>
naked-pairs-in-a-column: c16{r8 r9}{n10 n16} ==> r15c16 ≠ 16, r5c16 ≠ 16, r5c16 ≠ 10
naked-single ==> r5c16 = 8
hidden-single-in-a-block ==> r2c14 = 8
finned-x-wing-in-columns: n3{c10 c16}{r15 r3} ==> r3c14 ≠ 3
hidden-single-in-a-block ==> r2c16 = 3
naked-single ==> r2c7 = 12
naked-single ==> r15c16 = 12
naked-single ==> r16c14 = 16
naked-single ==> r5c14 = 6
naked-single ==> r5c15 = 10
naked-single ==> r5c9 = 4
naked-single ==> r5c4 = 16
naked-single ==> r8c4 = 4
naked-single ==> r8c9 = 10
naked-single ==> r8c16 = 16
naked-single ==> r9c16 = 10
naked-single ==> r9c15 = 6
naked-single ==> r9c14 = 1
naked-single ==> r1c14 = 7
naked-single ==> r1c7 = 5
naked-single ==> r1c13 = 1
naked-single ==> r3c5 = 14
naked-single ==> r14c5 = 5
naked-single ==> r14c12 = 8
naked-single ==> r4c7 = 3
naked-single ==> r3c7 = 7
naked-single ==> r4c11 = 8
naked-single ==> r15c7 = 16
naked-single ==> r14c7 = 14
naked-single ==> r15c11 = 3
naked-single ==> r14c11 = 16
naked-single ==> r15c10 = 5
naked-single ==> r3c10 = 3
naked-single ==> r3c14 = 12
naked-single ==> r3c12 = 5
naked-single ==> r4c12 = 12
naked-single ==> r4c13 = 5
naked-single ==> r7c14 = 9
naked-single ==> r7c13 = 12
naked-single ==> r14c14 = 3
naked-single ==> r9c13 = 16
naked-single ==> r14c13 = 9
naked-single ==> r16c11 = 12
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = FSHP
   F3CE8A56D42917GB
   G6524DC1BAF7E893
   498BEF7G1365AC2D
   1DA79B32EG8C54F6
   712GC5BE49D3F6A8
   DAF962185CEG7B34
   3B65DG4A827FC91E
   C8E4379FA6B1D25G
   5C3DFE84279BG16A
   E79FG16B38A42DC5
   B21A73DCGF568E49
   6G4829A5CD1E3FB7
   2EG3ACF97B4D6581
   AFBC54E761G893D2
   947618GDF532BAEC
   85D1B6239ECA4G7F

nb-facts = <Fact-20052>
Puzzle (. 3 . 14 8 . . 6 . . . 9 . . . 11 . 6 5 . 4 . . 1 . . 15 7 14 . 9 . 4 . . . . . . 16 1 . . . 10 . . 13 1 . . 7 9 . . 2 14 16 . . . 4 . 6 . 1 2 . 12 . 11 . . 9 . 3 15 . . . 13 10 15 . 6 . 1 . 5 12 . 16 7 11 3 4 3 11 . 5 13 16 . 10 . . 7 15 . . 1 14 . . . . 3 7 9 15 . 6 11 . . . 5 . . 12 . . . 14 8 . 2 7 9 11 . . . . 14 7 . . 16 1 . . 3 . 10 4 2 . 12 5 11 2 1 10 7 . 13 12 . 15 . 6 . 14 4 9 . . . 8 2 . 10 . . 13 . 14 . 15 11 . 2 . 16 . . . 15 9 7 . . 13 6 . . 1 10 . . 12 . . . 7 6 . . . . . . 2 . 4 . 6 1 8 . . 15 . . 2 . 10 14 . 8 . . . 11 . . . 9 . . 10 4 . 7 .) :
init-time = 3.69s, solve-time = 0.96s, total-time = 4.65s
nb-facts = <Fact-20052>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
