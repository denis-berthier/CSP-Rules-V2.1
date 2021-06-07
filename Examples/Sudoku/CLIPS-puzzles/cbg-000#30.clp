SER = 7.3


(CLIPS-solve-string  3 ".23.....94....9.2.7.....4.5....37.4..6.9..8..9.42.......18.2..76....5...8...71.5.")

The puzzle is:

   * 2 3  * * *  * * 9
   4 * *  * * 9  * 2 *
   7 * *  * * *  4 * 5

   * * *  * 3 7  * 4 *
   * 6 *  9 * *  8 * *
   9 * 4  2 * *  * * *

   * * 1  8 * 2  * * 7
   6 * *  * * 5  * * *
   8 * *  * 7 1  * 5 *

The solution is:

   * 2 3  * * *  * * 9
   4 * *  * * 9  * 2 *
   7 * *  * 2 3  4 * 5

   * * *  * 3 7  9 4 *
   * 6 *  9 * 4  8 * *
   9 * 4  2 * *  5 * *

   * * 1  8 * 2  * * 7
   6 * *  * * 5  * * *
   8 * *  * 7 1  * 5 *

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines

CLIPS time: init = 0.00120902061462402; solve = 0.0572400093078613; total = 0.0584490299224854

Fast but the solution is not found.





(solve ".23.....94....9.2.7.....4.5....37.4..6.9..8..9.42.......18.2..76....5...8...71.5.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
.23.....94....9.2.7.....4.5....37.4..6.9..8..9.42.......18.2..76....5...8...71.5.
28 givens, 180 candidates
entering BRT
naked-single ==> r5c6 = 4
hidden-single-in-a-row ==> r4c7 = 9
hidden-single-in-a-block ==> r6c7 = 5
hidden-single-in-a-column ==> r3c6 = 3
hidden-single-in-a-row ==> r3c5 = 2
Starting_init_links_with_<Fact-3645>

Resolution state after Singles:
   +-------------------+-------------------+-------------------+
   ! 15    2     3     ! 14567 14568 68    ! 167   1678  9     !
   ! 4     158   568   ! 1567  1568  9     ! 1367  2     1368  !
   ! 7     189   689   ! 16    2     3     ! 4     168   5     !
   +-------------------+-------------------+-------------------+
   ! 125   158   258   ! 156   3     7     ! 9     4     126   !
   ! 1235  6     257   ! 9     15    4     ! 8     137   123   !
   ! 9     1378  4     ! 2     168   68    ! 5     1367  136   !
   +-------------------+-------------------+-------------------+
   ! 35    3459  1     ! 8     469   2     ! 36    369   7     !
   ! 6     3479  279   ! 34    49    5     ! 123   1389  12348 !
   ! 8     349   29    ! 346   7     1     ! 236   5     2346  !
   +-------------------+-------------------+-------------------+

157 candidates, 757 csp-links and 757 links. Density = 6.18%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-6440>
whip[1]: c7n2{r9 .} ==> r9c9 ≠ 2, r8c9 ≠ 2
whip[1]: r9n9{c3 .} ==> r8c3 ≠ 9, r7c2 ≠ 9, r8c2 ≠ 9
whip[1]: c1n2{r5 .} ==> r5c3 ≠ 2, r4c3 ≠ 2
whip[1]: r4n8{c3 .} ==> r6c2 ≠ 8
whip[1]: c7n7{r2 .} ==> r1c8 ≠ 7

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 15    2     3     ! 14567 14568 68    ! 167   168   9     !
   ! 4     158   568   ! 1567  1568  9     ! 1367  2     1368  !
   ! 7     189   689   ! 16    2     3     ! 4     168   5     !
   +-------------------+-------------------+-------------------+
   ! 125   158   58    ! 156   3     7     ! 9     4     126   !
   ! 1235  6     57    ! 9     15    4     ! 8     137   123   !
   ! 9     137   4     ! 2     168   68    ! 5     1367  136   !
   +-------------------+-------------------+-------------------+
   ! 35    345   1     ! 8     469   2     ! 36    369   7     !
   ! 6     347   27    ! 34    49    5     ! 123   1389  1348  !
   ! 8     349   29    ! 346   7     1     ! 236   5     346   !
   +-------------------+-------------------+-------------------+

148 candidates.

Entering_relation_bivalue_with_<Fact-6451>
Entering_level_S2_with_<Fact-6610>
Entering_level_BC2_with_<Fact-6698>
Entering_level_Z2_with_<Fact-7127>
Entering_level_tW2_with_<Fact-7597>
Entering_level_W2_with_<Fact-7598>
Entering_level_S3_with_<Fact-7599>
Entering_level_BC3_with_<Fact-7647>
biv-chain[3]: r7c7{n3 n6} - b8n6{r7c5 r9c4} - b8n3{r9c4 r8c4} ==> r8c7 ≠ 3, r8c8 ≠ 3, r8c9 ≠ 3
finned-x-wing-in-columns: n3{c1 c8}{r7 r5} ==> r5c9 ≠ 3
Entering_level_Z3_with_<Fact-8681>
Entering_level_tW3_with_<Fact-9783>
Entering_level_W3_with_<Fact-10913>
Entering_level_S4_with_<Fact-10914>
Entering_level_BC4_with_<Fact-10968>
biv-chain[4]: r1c1{n1 n5} - b7n5{r7c1 r7c2} - r7n4{c2 c5} - b2n4{r1c5 r1c4} ==> r1c4 ≠ 1
biv-chain[4]: r7c7{n6 n3} - b3n3{r2c7 r2c9} - c9n8{r2 r8} - b9n4{r8c9 r9c9} ==> r9c9 ≠ 6
biv-chain[3]: r9c9{n4 n3} - r7c7{n3 n6} - b8n6{r7c5 r9c4} ==> r9c4 ≠ 4
biv-chain[4]: r2n3{c9 c7} - r7c7{n3 n6} - r9n6{c7 c4} - r4n6{c4 c9} ==> r2c9 ≠ 6
whip[1]: c9n6{r6 .} ==> r6c8 ≠ 6
biv-chain[4]: r9n6{c4 c7} - r9n2{c7 c3} - c3n9{r9 r3} - b1n6{r3c3 r2c3} ==> r2c4 ≠ 6
biv-chain[4]: r1n4{c5 c4} - r8c4{n4 n3} - r9c4{n3 n6} - r3c4{n6 n1} ==> r1c5 ≠ 1
biv-chain[4]: r9n6{c7 c4} - c4n3{r9 r8} - c4n4{r8 r1} - r1n7{c4 c7} ==> r1c7 ≠ 6
Entering_level_Z4_with_<Fact-14799>
z-chain[4]: r3c4{n1 n6} - r9n6{c4 c7} - c7n2{r9 r8} - c7n1{r8 .} ==> r3c8 ≠ 1
Entering_level_tW4_with_<Fact-17669>
t-whip[4]: r1n4{c4 c5} - r7n4{c5 c2} - r7n5{c2 c1} - r1n5{c1 .} ==> r1c4 ≠ 6, r1c4 ≠ 7
hidden-single-in-a-block ==> r2c4 = 7
hidden-single-in-a-block ==> r1c7 = 7
biv-chain[3]: c7n1{r8 r2} - r2n3{c7 c9} - c9n8{r2 r8} ==> r8c9 ≠ 1
biv-chain[3]: r1c1{n1 n5} - c4n5{r1 r4} - c4n1{r4 r3} ==> r3c2 ≠ 1
hidden-single-in-a-row ==> r3c4 = 1
biv-chain[3]: r1c1{n1 n5} - c4n5{r1 r4} - r5c5{n5 n1} ==> r5c1 ≠ 1
z-chain[3]: r5n1{c9 c5} - b5n5{r5c5 r4c4} - r4n6{c4 .} ==> r4c9 ≠ 1
whip[1]: r4n1{c2 .} ==> r6c2 ≠ 1
biv-chain[3]: r5n3{c8 c1} - r6c2{n3 n7} - b6n7{r6c8 r5c8} ==> r5c8 ≠ 1
biv-chain[3]: c2n1{r4 r2} - r1c1{n1 n5} - c4n5{r1 r4} ==> r4c2 ≠ 5
biv-chain[4]: c4n5{r4 r1} - r1c1{n5 n1} - c2n1{r2 r4} - b4n8{r4c2 r4c3} ==> r4c3 ≠ 5
naked-single ==> r4c3 = 8
naked-single ==> r4c2 = 1
hidden-single-in-a-block ==> r1c1 = 1
whip[1]: r1n5{c5 .} ==> r2c5 ≠ 5
naked-pairs-in-a-block: b2{r1c6 r2c5}{n6 n8} ==> r1c5 ≠ 8, r1c5 ≠ 6
naked-pairs-in-a-block: b3{r1c8 r3c8}{n6 n8} ==> r2c9 ≠ 8, r2c7 ≠ 6
hidden-single-in-a-column ==> r8c9 = 8
hidden-single-in-a-block ==> r9c9 = 4
whip[1]: c7n6{r9 .} ==> r7c8 ≠ 6
biv-chain[4]: r8n7{c3 c2} - r6n7{c2 c8} - c8n1{r6 r8} - r8c7{n1 n2} ==> r8c3 ≠ 2
naked-single ==> r8c3 = 7
naked-single ==> r5c3 = 5
naked-single ==> r2c3 = 6
naked-single ==> r2c5 = 8
naked-single ==> r1c6 = 6
naked-single ==> r1c8 = 8
naked-single ==> r3c8 = 6
naked-single ==> r6c6 = 8
naked-single ==> r2c2 = 5
naked-single ==> r3c3 = 9
naked-single ==> r3c2 = 8
naked-single ==> r9c3 = 2
naked-single ==> r4c1 = 2
naked-single ==> r4c9 = 6
naked-single ==> r4c4 = 5
naked-single ==> r1c4 = 4
naked-single ==> r1c5 = 5
naked-single ==> r8c4 = 3
naked-single ==> r8c2 = 4
naked-single ==> r7c2 = 3
naked-single ==> r6c2 = 7
naked-single ==> r7c1 = 5
naked-single ==> r7c7 = 6
naked-single ==> r9c7 = 3
naked-single ==> r2c7 = 1
naked-single ==> r2c9 = 3
naked-single ==> r6c9 = 1
naked-single ==> r5c9 = 2
naked-single ==> r6c5 = 6
naked-single ==> r6c8 = 3
naked-single ==> r5c8 = 7
naked-single ==> r8c7 = 2
naked-single ==> r7c8 = 9
naked-single ==> r7c5 = 4
naked-single ==> r8c8 = 1
naked-single ==> r9c2 = 9
naked-single ==> r8c5 = 9
naked-single ==> r9c4 = 6
naked-single ==> r5c1 = 3
naked-single ==> r5c5 = 1
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = tW[4]
   123456789
   456789123
   789123465
   218537946
   365914872
   974268531
   531842697
   647395218
   892671354

nb-facts = <Fact-36015>
Puzzle .23.....94....9.2.7.....4.5....37.4..6.9..8..9.42.......18.2..76....5...8...71.5. :
init-time = 0.2s, solve-time = 3.44s, total-time = 3.65s
nb-facts = <Fact-36015>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
