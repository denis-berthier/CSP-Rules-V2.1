SER = 8.3


(CLIPS-solve-string  3 "..34......5...912.7...2.....1.5.7..86...9...7.......34..2.............9.9...61.75")

The puzzle is:

   * * 3  4 * *  * * *
   * 5 *  * * 9  1 2 *
   7 * *  * 2 *  * * *

   * 1 *  5 * 7  * * 8
   6 * *  * 9 *  * * 7
   * * *  * * *  * 3 4

   * * 2  * * *  * * *
   * * *  * * *  * 9 *
   9 * *  * 6 1  * 7 5

The solution is:

   * * 3  4 * *  7 * *
   * 5 *  * * 9  1 2 *
   7 * *  * 2 *  * * *

   * 1 *  5 * 7  * 6 8
   6 * *  * 9 *  * 1 7
   * * *  * * *  * 3 4

   * * 2  9 * *  * * 1
   * * *  * * *  * 9 2
   9 * *  2 6 1  * 7 5

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line

CLIPS time: init = 0.00249600410461426; solve = 0.0713260173797607; total = 0.073822021484375

Very fast, but the solution is not found.






(solve "..34......5...912.7...2.....1.5.7..86...9...7.......34..2.............9.9...61.75")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
..34......5...912.7...2.....1.5.7..86...9...7.......34..2.............9.9...61.75
24 givens, 207 candidates
entering BRT
naked-single ==> r4c8 = 6
hidden-single-in-a-column ==> r8c9 = 2
hidden-single-in-a-block ==> r9c4 = 2
hidden-single-in-a-column ==> r7c9 = 1
hidden-single-in-a-column ==> r5c8 = 1
hidden-single-in-a-row ==> r7c4 = 9
hidden-single-in-a-column ==> r1c7 = 7
Starting_init_links_with_<Fact-3670>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 128    2689   3      ! 4      158    568    ! 7      58     69     !
   ! 48     5      468    ! 3678   378    9      ! 1      2      36     !
   ! 7      4689   14689  ! 1368   2      3568   ! 345689 458    369    !
   +----------------------+----------------------+----------------------+
   ! 234    1      49     ! 5      34     7      ! 29     6      8      !
   ! 6      2348   458    ! 38     9      2348   ! 25     1      7      !
   ! 258    2789   5789   ! 168    18     268    ! 259    3      4      !
   +----------------------+----------------------+----------------------+
   ! 3458   34678  2      ! 9      34578  3458   ! 3468   48     1      !
   ! 13458  34678  145678 ! 378    34578  3458   ! 3468   9      2      !
   ! 9      348    48     ! 2      6      1      ! 348    7      5      !
   +----------------------+----------------------+----------------------+

177 candidates, 978 csp-links and 978 links. Density = 6.28%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7301>
whip[1]: c9n9{r3 .} ==> r3c7 ≠ 9
whip[1]: c9n6{r3 .} ==> r3c7 ≠ 6
whip[1]: c8n5{r3 .} ==> r3c7 ≠ 5
whip[1]: c9n3{r3 .} ==> r3c7 ≠ 3
whip[1]: r2n4{c3 .} ==> r3c3 ≠ 4, r3c2 ≠ 4

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 128    2689   3      ! 4      158    568    ! 7      58     69     !
   ! 48     5      468    ! 3678   378    9      ! 1      2      36     !
   ! 7      689    1689   ! 1368   2      3568   ! 48     458    369    !
   +----------------------+----------------------+----------------------+
   ! 234    1      49     ! 5      34     7      ! 29     6      8      !
   ! 6      2348   458    ! 38     9      2348   ! 25     1      7      !
   ! 258    2789   5789   ! 168    18     268    ! 259    3      4      !
   +----------------------+----------------------+----------------------+
   ! 3458   34678  2      ! 9      34578  3458   ! 3468   48     1      !
   ! 13458  34678  145678 ! 378    34578  3458   ! 3468   9      2      !
   ! 9      348    48     ! 2      6      1      ! 348    7      5      !
   +----------------------+----------------------+----------------------+

171 candidates.

Entering_relation_bivalue_with_<Fact-7312>
Entering_level_S2_with_<Fact-7443>
Entering_level_BC2_with_<Fact-7489>
Entering_level_Z2_with_<Fact-7730>
Entering_level_tW2_with_<Fact-8202>
Entering_level_W2_with_<Fact-8203>
Entering_level_S3_with_<Fact-8204>
Entering_level_BC3_with_<Fact-8284>
biv-chain[3]: r5c4{n3 n8} - r6c5{n8 n1} - b2n1{r1c5 r3c4} ==> r3c4 ≠ 3
Entering_level_Z3_with_<Fact-8750>
Entering_level_tW3_with_<Fact-9682>
Entering_level_W3_with_<Fact-10678>
Entering_level_S4_with_<Fact-10679>
Entering_level_BC4_with_<Fact-10787>
biv-chain[4]: r4c7{n2 n9} - r4c3{n9 n4} - b5n4{r4c5 r5c6} - b5n2{r5c6 r6c6} ==> r6c7 ≠ 2
biv-chain[4]: r6c5{n8 n1} - b2n1{r1c5 r3c4} - c3n1{r3 r8} - c3n7{r8 r6} ==> r6c3 ≠ 8
Entering_level_Z4_with_<Fact-11968>
Entering_level_tW4_with_<Fact-13500>
Entering_level_W4_with_<Fact-15501>
whip[4]: b4n3{r4c1 r5c2} - r5n4{c2 c6} - c6n2{r5 r6} - b4n2{r6c1 .} ==> r4c1 ≠ 4
Entering_level_BC5_with_<Fact-16341>
biv-chain[5]: r1n2{c2 c1} - b1n1{r1c1 r3c3} - c4n1{r3 r6} - b5n6{r6c4 r6c6} - b5n2{r6c6 r5c6} ==> r5c2 ≠ 2
biv-chain[3]: r5n2{c6 c7} - r4n2{c7 c1} - b4n3{r4c1 r5c2} ==> r5c6 ≠ 3
biv-chain[4]: r5n2{c6 c7} - r4n2{c7 c1} - r4n3{c1 c5} - b5n4{r4c5 r5c6} ==> r5c6 ≠ 8
t-whip[4]: b4n4{r5c3 r5c2} - r5n3{c2 c4} - r5n8{c4 c3} - r9c3{n8 .} ==> r2c3 ≠ 4
hidden-single-in-a-block ==> r2c1 = 4
t-whip[4]: c2n4{r9 r5} - r5n3{c2 c4} - r5n8{c4 c3} - r9c3{n8 .} ==> r8c3 ≠ 4
t-whip[4]: r9c3{n8 n4} - c2n4{r9 r5} - r5n3{c2 c4} - r5n8{c4 .} ==> r2c3 ≠ 8, r3c3 ≠ 8, r8c3 ≠ 8
naked-single ==> r2c3 = 6
naked-single ==> r2c9 = 3
hidden-single-in-a-block ==> r3c6 = 3
hidden-single-in-a-row ==> r3c8 = 5
naked-single ==> r1c8 = 8
naked-single ==> r3c7 = 4
naked-single ==> r7c8 = 4
hidden-single-in-a-block ==> r3c2 = 8
whip[1]: b8n4{r8c6 .} ==> r8c2 ≠ 4
naked-pairs-in-a-column: c2{r5 r9}{n3 n4} ==> r8c2 ≠ 3, r7c2 ≠ 3
naked-pairs-in-a-block: b7{r7c2 r8c2}{n6 n7} ==> r8c3 ≠ 7
hidden-single-in-a-column ==> r6c3 = 7
hidden-pairs-in-a-block: b4{n5 n8}{r5c3 r6c1} ==> r6c1 ≠ 2, r5c3 ≠ 4
hidden-pairs-in-a-column: c4{n1 n6}{r3 r6} ==> r6c4 ≠ 8
finned-x-wing-in-columns: n3{c4 c2}{r5 r8} ==> r8c1 ≠ 3
biv-chain[3]: r1c5{n5 n1} - r3n1{c4 c3} - r8c3{n1 n5} ==> r8c5 ≠ 5
biv-chain[3]: c3n8{r9 r5} - c3n5{r5 r8} - b7n1{r8c3 r8c1} ==> r8c1 ≠ 8
naked-pairs-in-a-block: b7{r8c1 r8c3}{n1 n5} ==> r7c1 ≠ 5
whip[1]: r7n5{c6 .} ==> r8c6 ≠ 5
finned-x-wing-in-columns: n8{c1 c6}{r6 r7} ==> r7c5 ≠ 8
biv-chain[4]: r6c5{n8 n1} - r1n1{c5 c1} - c1n2{r1 r4} - r6n2{c2 c6} ==> r6c6 ≠ 8
whip[1]: c6n8{r8 .} ==> r8c4 ≠ 8, r8c5 ≠ 8
biv-chain[3]: r8c4{n7 n3} - b5n3{r5c4 r4c5} - c5n4{r4 r8} ==> r8c5 ≠ 7
naked-pairs-in-a-column: c5{r4 r8}{n3 n4} ==> r7c5 ≠ 3
whip[1]: b8n3{r8c5 .} ==> r8c7 ≠ 3
biv-chain[4]: r4n4{c3 c5} - r8n4{c5 c6} - r8n8{c6 c7} - r9n8{c7 c3} ==> r9c3 ≠ 4
naked-single ==> r9c3 = 8
naked-single ==> r5c3 = 5
naked-single ==> r5c7 = 2
naked-single ==> r4c7 = 9
naked-single ==> r4c3 = 4
naked-single ==> r4c5 = 3
naked-single ==> r4c1 = 2
naked-single ==> r1c1 = 1
naked-single ==> r1c5 = 5
naked-single ==> r1c6 = 6
naked-single ==> r1c9 = 9
naked-single ==> r1c2 = 2
naked-single ==> r3c9 = 6
naked-single ==> r3c4 = 1
naked-single ==> r6c4 = 6
naked-single ==> r6c6 = 2
naked-single ==> r7c5 = 7
naked-single ==> r2c5 = 8
naked-single ==> r2c4 = 7
naked-single ==> r6c5 = 1
naked-single ==> r7c2 = 6
naked-single ==> r8c2 = 7
naked-single ==> r8c4 = 3
naked-single ==> r3c3 = 9
naked-single ==> r8c1 = 5
naked-single ==> r6c2 = 9
naked-single ==> r5c4 = 8
naked-single ==> r8c5 = 4
naked-single ==> r8c6 = 8
naked-single ==> r7c6 = 5
naked-single ==> r8c7 = 6
naked-single ==> r5c2 = 3
naked-single ==> r9c2 = 4
naked-single ==> r6c7 = 5
naked-single ==> r5c6 = 4
naked-single ==> r6c1 = 8
naked-single ==> r8c3 = 1
naked-single ==> r7c1 = 3
naked-single ==> r7c7 = 8
naked-single ==> r9c7 = 3
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[5]
   123456789
   456789123
   789123456
   214537968
   635894217
   897612534
   362975841
   571348692
   948261375

nb-facts = <Fact-56906>
Puzzle ..34......5...912.7...2.....1.5.7..86...9...7.......34..2.............9.9...61.75 :
init-time = 0.19s, solve-time = 5.06s, total-time = 5.26s
nb-facts = <Fact-56906>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
