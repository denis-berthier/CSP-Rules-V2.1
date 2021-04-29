SER = 8.3


(CLIPS-solve-string  3 ".2.4..7......891.........65..48.....3..9....1.95..1.7..7.3...1263.........2.1...8")

The puzzle is:

   * 2 *  4 * *  7 * *
   * * *  * 8 9  1 * *
   * * *  * * *  * 6 5

   * * 4  8 * *  * * *
   3 * *  9 * *  * * 1
   * 9 5  * * 1  * 7 *

   * 7 *  3 * *  * 1 2
   6 3 *  * * *  * * *
   * * 2  * 1 *  * * 8

The solution is:

   1 2 *  4 * *  7 8 *
   * * *  * 8 9  1 * *
   * * *  1 * *  * 6 5

   * 1 4  8 * *  * * *
   3 * *  9 * *  * * 1
   * 9 5  * * 1  * 7 *

   * 7 *  3 * *  * 1 2
   6 3 1  * * 8  * * 7
   * * 2  * 1 *  * * 8

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Multi Color Type 1

CLIPS time: init = 0.00115704536437988; solve = 0.111250162124634; total = 0.112407207489014

Very fast, but the solution is not found.






(solve ".2.4..7......891.........65..48.....3..9....1.95..1.7..7.3...1263.........2.1...8")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
.2.4..7......891.........65..48.....3..9....1.95..1.7..7.3...1263.........2.1...8
26 givens, 196 candidates
entering BRT
hidden-single-in-a-column ==> r8c9 = 7
hidden-single-in-a-row ==> r8c3 = 1
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-row ==> r3c4 = 1
hidden-single-in-a-column ==> r4c2 = 1
hidden-single-in-a-row ==> r8c6 = 8
Starting_init_links_with_<Fact-3660>

Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 1     2     3689  ! 4     356   356   ! 7     389   39    !
   ! 457   456   367   ! 2567  8     9     ! 1     234   34    !
   ! 4789  48    3789  ! 1     237   237   ! 23489 6     5     !
   +-------------------+-------------------+-------------------+
   ! 27    1     4     ! 8     23567 23567 ! 23569 2359  369   !
   ! 3     68    678   ! 9     24567 24567 ! 24568 2458  1     !
   ! 28    9     5     ! 26    2346  1     ! 23468 7     346   !
   +-------------------+-------------------+-------------------+
   ! 4589  7     89    ! 3     4569  456   ! 4569  1     2     !
   ! 6     3     1     ! 25    2459  8     ! 459   459   7     !
   ! 459   45    2     ! 567   1     4567  ! 34569 3459  8     !
   +-------------------+-------------------+-------------------+

174 candidates, 924 csp-links and 924 links. Density = 6.14%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7089>
whip[1]: c9n6{r6 .} ==> r6c7 ≠ 6, r4c7 ≠ 6, r5c7 ≠ 6
whip[1]: r1n5{c6 .} ==> r2c4 ≠ 5
whip[1]: c4n5{r9 .} ==> r7c5 ≠ 5, r7c6 ≠ 5, r8c5 ≠ 5, r9c6 ≠ 5
whip[1]: b4n6{r5c3 .} ==> r5c6 ≠ 6, r5c5 ≠ 6

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 1     2     3689  ! 4     356   356   ! 7     389   39    !
   ! 457   456   367   ! 267   8     9     ! 1     234   34    !
   ! 4789  48    3789  ! 1     237   237   ! 23489 6     5     !
   +-------------------+-------------------+-------------------+
   ! 27    1     4     ! 8     23567 23567 ! 2359  2359  369   !
   ! 3     68    678   ! 9     2457  2457  ! 2458  2458  1     !
   ! 28    9     5     ! 26    2346  1     ! 2348  7     346   !
   +-------------------+-------------------+-------------------+
   ! 4589  7     89    ! 3     469   46    ! 4569  1     2     !
   ! 6     3     1     ! 25    249   8     ! 459   459   7     !
   ! 459   45    2     ! 567   1     467   ! 34569 3459  8     !
   +-------------------+-------------------+-------------------+

164 candidates.

Entering_relation_bivalue_with_<Fact-7098>
Entering_level_S2_with_<Fact-7197>
finned-x-wing-in-columns: n8{c8 c2}{r5 r1} ==> r1c3 ≠ 8
hidden-single-in-a-row ==> r1c8 = 8
Entering_level_BC2_with_<Fact-7230>
Entering_level_Z2_with_<Fact-7401>
Entering_level_tW2_with_<Fact-7780>
Entering_level_W2_with_<Fact-7781>
Entering_level_S3_with_<Fact-7782>
Entering_level_BC3_with_<Fact-7804>
biv-chain[3]: r9c2{n4 n5} - r7n5{c1 c7} - b9n6{r7c7 r9c7} ==> r9c7 ≠ 4
Entering_level_Z3_with_<Fact-8051>
Entering_level_tW3_with_<Fact-8644>
Entering_level_W3_with_<Fact-9285>
Entering_level_S4_with_<Fact-9286>
Entering_level_BC4_with_<Fact-9382>
biv-chain[4]: r9c2{n4 n5} - r7n5{c1 c7} - b9n6{r7c7 r9c7} - b9n3{r9c7 r9c8} ==> r9c8 ≠ 4
Entering_level_Z4_with_<Fact-9772>
z-chain[4]: c6n4{r9 r5} - c8n4{r5 r2} - r2n2{c8 c4} - r8n2{c4 .} ==> r8c5 ≠ 4
whip[1]: r8n4{c8 .} ==> r7c7 ≠ 4
z-chain[4]: r6c1{n2 n8} - c7n8{r6 r5} - r5n2{c7 c8} - r2n2{c8 .} ==> r6c4 ≠ 2
naked-single ==> r6c4 = 6
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-column ==> r1c9 = 9
whip[1]: r2n6{c3 .} ==> r1c3 ≠ 6
naked-single ==> r1c3 = 3
whip[1]: b2n3{r3c6 .} ==> r3c7 ≠ 3
biv-chain[4]: r8c4{n5 n2} - r2n2{c4 c8} - r3c7{n2 n4} - r8n4{c7 c8} ==> r8c8 ≠ 5
biv-chain[4]: c5n9{r7 r8} - b8n2{r8c5 r8c4} - r8n5{c4 c7} - r7n5{c7 c1} ==> r7c1 ≠ 9
biv-chain[4]: b7n9{r9c1 r7c3} - b7n8{r7c3 r7c1} - r7n5{c1 c7} - b9n6{r7c7 r9c7} ==> r9c7 ≠ 9
biv-chain[4]: r9n9{c1 c8} - b9n3{r9c8 r9c7} - c7n6{r9 r7} - r7n5{c7 c1} ==> r9c1 ≠ 5
Entering_level_tW4_with_<Fact-16577>
Entering_level_W4_with_<Fact-18735>
whip[4]: r6n8{c7 c1} - r6n2{c1 c5} - c6n2{r5 r3} - r3c7{n2 .} ==> r6c7 ≠ 4
Entering_level_BC5_with_<Fact-18822>
biv-chain[5]: r7c3{n8 n9} - b8n9{r7c5 r8c5} - b8n2{r8c5 r8c4} - b8n5{r8c4 r9c4} - b7n5{r9c2 r7c1} ==> r7c1 ≠ 8
hidden-single-in-a-block ==> r7c3 = 8
hidden-single-in-a-block ==> r9c1 = 9
hidden-single-in-a-block ==> r3c3 = 9
biv-chain[3]: r5n8{c7 c2} - r3c2{n8 n4} - r3c7{n4 n2} ==> r5c7 ≠ 2
finned-swordfish-in-columns: n2{c7 c1 c6}{r3 r4 r6} ==> r6c5 ≠ 2, r4c5 ≠ 2
naked-pairs-in-a-row: r6{c5 c9}{n3 n4} ==> r6c7 ≠ 3
biv-chain[3]: c1n8{r3 r6} - r6n2{c1 c7} - r3c7{n2 n4} ==> r3c1 ≠ 4
hidden-pairs-in-a-column: c1{n4 n5}{r2 r7} ==> r2c1 ≠ 7
finned-x-wing-in-columns: n7{c1 c5}{r3 r4} ==> r4c6 ≠ 7
biv-chain[3]: b6n9{r4c8 r4c7} - c7n3{r4 r9} - r9c8{n3 n5} ==> r4c8 ≠ 5
biv-chain[4]: b3n2{r3c7 r2c8} - r2c4{n2 n7} - c3n7{r2 r5} - r4c1{n7 n2} ==> r4c7 ≠ 2
biv-chain[4]: c7n2{r6 r3} - r3n4{c7 c2} - r9c2{n4 n5} - c8n5{r9 r5} ==> r5c8 ≠ 2
whip[1]: r5n2{c6 .} ==> r4c6 ≠ 2
biv-chain[3]: c6n2{r5 r3} - r2c4{n2 n7} - c3n7{r2 r5} ==> r5c6 ≠ 7
whip[1]: b5n7{r5c5 .} ==> r3c5 ≠ 7
biv-chain[3]: r5n2{c6 c5} - r3c5{n2 n3} - r6c5{n3 n4} ==> r5c6 ≠ 4
whip[1]: c6n4{r9 .} ==> r7c5 ≠ 4
biv-chain[3]: r4n7{c5 c1} - r3n7{c1 c6} - c6n3{r3 r4} ==> r4c5 ≠ 3
biv-chain[3]: r6c9{n3 n4} - r5c8{n4 n5} - r9c8{n5 n3} ==> r4c8 ≠ 3
biv-chain[3]: r5c8{n5 n4} - r8c8{n4 n9} - b6n9{r4c8 r4c7} ==> r4c7 ≠ 5
whip[1]: b6n5{r5c8 .} ==> r5c5 ≠ 5, r5c6 ≠ 5
naked-single ==> r5c6 = 2
biv-chain[4]: r9n6{c6 c7} - c7n3{r9 r4} - r4c6{n3 n5} - r1c6{n5 n6} ==> r7c6 ≠ 6
naked-single ==> r7c6 = 4
naked-single ==> r7c1 = 5
naked-single ==> r2c1 = 4
naked-single ==> r2c9 = 3
naked-single ==> r2c8 = 2
naked-single ==> r2c4 = 7
naked-single ==> r2c3 = 6
naked-single ==> r2c2 = 5
naked-single ==> r5c3 = 7
naked-single ==> r4c1 = 2
naked-single ==> r6c1 = 8
naked-single ==> r3c1 = 7
naked-single ==> r5c2 = 6
naked-single ==> r6c7 = 2
naked-single ==> r5c5 = 4
naked-single ==> r5c8 = 5
naked-single ==> r5c7 = 8
naked-single ==> r9c8 = 3
naked-single ==> r6c5 = 3
naked-single ==> r3c5 = 2
naked-single ==> r8c5 = 9
naked-single ==> r7c5 = 6
naked-single ==> r1c5 = 5
naked-single ==> r1c6 = 6
naked-single ==> r4c5 = 7
naked-single ==> r7c7 = 9
naked-single ==> r4c7 = 3
naked-single ==> r9c6 = 7
naked-single ==> r8c8 = 4
naked-single ==> r8c7 = 5
naked-single ==> r8c4 = 2
naked-single ==> r9c7 = 6
naked-single ==> r4c6 = 5
naked-single ==> r3c6 = 3
naked-single ==> r9c4 = 5
naked-single ==> r3c7 = 4
naked-single ==> r4c8 = 9
naked-single ==> r6c9 = 4
naked-single ==> r3c2 = 8
naked-single ==> r9c2 = 4
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[5]
   123456789
   456789123
   789123465
   214875396
   367942851
   895631274
   578364912
   631298547
   942517638

nb-facts = <Fact-43742>
Puzzle .2.4..7......891.........65..48.....3..9....1.95..1.7..7.3...1263.........2.1...8 :
init-time = 0.19s, solve-time = 4.18s, total-time = 4.37s
nb-facts = <Fact-43742>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
