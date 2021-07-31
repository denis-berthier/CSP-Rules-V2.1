SER = 7.2


(CLIPS-solve-string  3 "..345..8.4.6.........1...65.1.5.8.7....3...919...........8.....6....7.3...1.3..57")


The puzzle is:

   * * 3  4 5 *  * 8 *
   4 * 6  * * *  * * *
   * * *  1 * *  * 6 5

   * 1 *  5 * 8  * 7 *
   * * *  3 * *  * 9 1
   9 * *  * * *  * * *

   * * *  8 * *  * * *
   6 * *  * * 7  * 3 *
   * * 1  * 3 *  * 5 7

The solution is:

   1 * 3  4 5 6  * 8 *
   4 5 6  * 8 *  * * *
   * * *  1 * 3  4 6 5

   * 1 *  5 9 8  * 7 *
   5 * *  3 * *  * 9 1
   9 * *  * * 1  5 * *

   * * *  8 * 5  * * *
   6 * 5  * * 7  * 3 *
   * * 1  * 3 *  * 5 7

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Multi Color Type 2

CLIPS time: init = 0.00142002105712891; solve = 0.126689910888672; total = 0.128109931945801

Very fast, but the solution is not found.






(solve "..345..8.4.6.........1...65.1.5.8.7....3...919...........8.....6....7.3...1.3..57")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
..345..8.4.6.........1...65.1.5.8.7....3...919...........8.....6....7.3...1.3..57
25 givens, 224 candidates
entering BRT
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-column ==> r8c3 = 5
hidden-single-in-a-column ==> r2c2 = 5
hidden-single-in-a-row ==> r2c5 = 8
hidden-single-in-a-block ==> r6c7 = 5
hidden-single-in-a-column ==> r6c6 = 1
hidden-single-in-a-row ==> r4c5 = 9
hidden-single-in-a-row ==> r3c7 = 4
hidden-single-in-a-row ==> r3c6 = 3
hidden-single-in-a-row ==> r1c6 = 6
hidden-single-in-a-column ==> r1c1 = 1
Starting_init_links_with_<Fact-3693>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      279    3      ! 4      5      6      ! 279    8      29     !
   ! 4      5      6      ! 279    8      29     ! 12379  12     239    !
   ! 278    2789   2789   ! 1      27     3      ! 4      6      5      !
   +----------------------+----------------------+----------------------+
   ! 23     1      24     ! 5      9      8      ! 236    7      2346   !
   ! 5      24678  2478   ! 3      2467   24     ! 268    9      1      !
   ! 9      234678 2478   ! 267    2467   1      ! 5      24     23468  !
   +----------------------+----------------------+----------------------+
   ! 237    23479  2479   ! 8      1246   5      ! 1269   124    2469   !
   ! 6      2489   5      ! 29     124    7      ! 1289   3      2489   !
   ! 28     2489   1      ! 269    3      249    ! 2689   5      7      !
   +----------------------+----------------------+----------------------+

161 candidates, 839 csp-links and 839 links. Density = 6.51%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-6808>
whip[1]: r4n6{c9 .} ==> r6c9 ≠ 6, r5c7 ≠ 6
whip[1]: r3n9{c3 .} ==> r1c2 ≠ 9
whip[1]: r1n9{c9 .} ==> r2c7 ≠ 9, r2c9 ≠ 9

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      27     3      ! 4      5      6      ! 279    8      29     !
   ! 4      5      6      ! 279    8      29     ! 1237   12     23     !
   ! 278    2789   2789   ! 1      27     3      ! 4      6      5      !
   +----------------------+----------------------+----------------------+
   ! 23     1      24     ! 5      9      8      ! 236    7      2346   !
   ! 5      24678  2478   ! 3      2467   24     ! 28     9      1      !
   ! 9      234678 2478   ! 267    2467   1      ! 5      24     2348   !
   +----------------------+----------------------+----------------------+
   ! 237    23479  2479   ! 8      1246   5      ! 1269   124    2469   !
   ! 6      2489   5      ! 29     124    7      ! 1289   3      2489   !
   ! 28     2489   1      ! 269    3      249    ! 2689   5      7      !
   +----------------------+----------------------+----------------------+

156 candidates.

Entering_relation_bivalue_with_<Fact-6815>
Entering_level_S2_with_<Fact-6934>
finned-x-wing-in-columns: n4{c8 c3}{r7 r6} ==> r6c2 ≠ 4
Entering_level_BC2_with_<Fact-6988>
biv-chain[2]: r4n4{c3 c9} - c8n4{r6 r7} ==> r7c3 ≠ 4
whip[1]: b7n4{r9c2 .} ==> r5c2 ≠ 4
Entering_level_Z2_with_<Fact-7239>
Entering_level_tW2_with_<Fact-7731>
Entering_level_W2_with_<Fact-7732>
Entering_level_S3_with_<Fact-7733>
Entering_level_BC3_with_<Fact-7819>
biv-chain[3]: r1c2{n2 n7} - c1n7{r3 r7} - b7n3{r7c1 r7c2} ==> r7c2 ≠ 2
biv-chain[3]: r2c9{n2 n3} - r6n3{c9 c2} - r4c1{n3 n2} ==> r4c9 ≠ 2
biv-chain[3]: c2n6{r5 r6} - r6n3{c2 c9} - b6n8{r6c9 r5c7} ==> r5c2 ≠ 8
Entering_level_Z3_with_<Fact-8294>
Entering_level_tW3_with_<Fact-9139>
t-whip[3]: r6n3{c2 c9} - r2c9{n3 n2} - r1n2{c9 .} ==> r6c2 ≠ 2
Entering_level_W3_with_<Fact-10089>
Entering_level_S4_with_<Fact-10090>
Entering_level_BC4_with_<Fact-10198>
biv-chain[4]: r1c2{n2 n7} - b3n7{r1c7 r2c7} - c7n3{r2 r4} - r4c1{n3 n2} ==> r3c1 ≠ 2, r5c2 ≠ 2
biv-chain[3]: r1c2{n2 n7} - r3c1{n7 n8} - r9c1{n8 n2} ==> r8c2 ≠ 2, r9c2 ≠ 2
whip[1]: c2n2{r3 .} ==> r3c3 ≠ 2
biv-chain[4]: r9c1{n8 n2} - r4c1{n2 n3} - r6n3{c2 c9} - b6n8{r6c9 r5c7} ==> r9c7 ≠ 8
whip[1]: r9n8{c2 .} ==> r8c2 ≠ 8
biv-chain[3]: r9n4{c6 c2} - r8c2{n4 n9} - r8c4{n9 n2} ==> r9c6 ≠ 2
biv-chain[3]: r5c6{n2 n4} - r9c6{n4 n9} - r8c4{n9 n2} ==> r6c4 ≠ 2
biv-chain[4]: c6n2{r5 r2} - r2c9{n2 n3} - c7n3{r2 r4} - r4c1{n3 n2} ==> r5c3 ≠ 2
biv-chain[4]: r1n7{c2 c7} - r2n7{c7 c4} - r6c4{n7 n6} - b4n6{r6c2 r5c2} ==> r5c2 ≠ 7
naked-single ==> r5c2 = 6
biv-chain[3]: b5n6{r6c5 r6c4} - c4n7{r6 r2} - r3c5{n7 n2} ==> r6c5 ≠ 2
whip[1]: b5n2{r5c6 .} ==> r5c7 ≠ 2
naked-single ==> r5c7 = 8
hidden-single-in-a-column ==> r8c9 = 8
whip[1]: b9n4{r7c9 .} ==> r7c2 ≠ 4, r7c5 ≠ 4
z-chain[3]: c5n6{r6 r7} - c9n6{r7 r4} - b6n4{r4c9 .} ==> r6c5 ≠ 4
whip[1]: b5n4{r5c6 .} ==> r5c3 ≠ 4
naked-single ==> r5c3 = 7
hidden-pairs-in-a-block: b7{n3 n7}{r7c1 r7c2} ==> r7c2 ≠ 9, r7c1 ≠ 2
biv-chain[3]: c1n8{r9 r3} - r3c3{n8 n9} - r7c3{n9 n2} ==> r9c1 ≠ 2
naked-single ==> r9c1 = 8
naked-single ==> r3c1 = 7
naked-single ==> r1c2 = 2
naked-single ==> r1c9 = 9
naked-single ==> r1c7 = 7
naked-single ==> r3c5 = 2
naked-single ==> r2c6 = 9
naked-single ==> r2c4 = 7
naked-single ==> r6c4 = 6
naked-single ==> r6c5 = 7
naked-single ==> r9c6 = 4
naked-single ==> r5c6 = 2
naked-single ==> r8c5 = 1
naked-single ==> r7c5 = 6
naked-single ==> r9c2 = 9
naked-single ==> r3c2 = 8
naked-single ==> r3c3 = 9
naked-single ==> r6c2 = 3
naked-single ==> r4c1 = 2
naked-single ==> r4c3 = 4
naked-single ==> r6c3 = 8
naked-single ==> r7c2 = 7
naked-single ==> r7c3 = 2
naked-single ==> r7c9 = 4
naked-single ==> r6c9 = 2
naked-single ==> r2c9 = 3
naked-single ==> r4c9 = 6
naked-single ==> r4c7 = 3
naked-single ==> r6c8 = 4
naked-single ==> r7c8 = 1
naked-single ==> r2c8 = 2
naked-single ==> r2c7 = 1
naked-single ==> r7c7 = 9
naked-single ==> r8c7 = 2
naked-single ==> r8c4 = 9
naked-single ==> r9c7 = 6
naked-single ==> r8c2 = 4
naked-single ==> r9c4 = 2
naked-single ==> r5c5 = 4
naked-single ==> r7c1 = 3
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[4]
   123456789
   456789123
   789123465
   214598376
   567342891
   938671542
   372865914
   645917238
   891234657

nb-facts = <Fact-14792>
Puzzle ..345..8.4.6.........1...65.1.5.8.7....3...919...........8.....6....7.3...1.3..57 :
init-time = 0.2s, solve-time = 1.77s, total-time = 1.96s
nb-facts = <Fact-14792>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
