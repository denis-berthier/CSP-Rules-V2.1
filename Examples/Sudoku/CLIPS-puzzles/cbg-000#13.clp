SER = 7.1

(CLIPS-solve-string  3 "1..4.6..945.....23..........1....8..3...........8.2.545....864..3...4.1.9...7...8")

The puzzle is:

   1 * *  4 * 6  * * 9
   4 5 *  * * *  * 2 3
   * * *  * * *  * * *

   * 1 *  * * *  8 * *
   3 * *  * * *  * * *
   * * *  8 * 2  * 5 4

   5 * *  * * 8  6 4 *
   * 3 *  * * 4  * 1 *
   9 * *  * 7 *  * * 8

The solution is:

   1 2 3  4 5 6  7 8 9
   4 5 6  7 8 9  1 2 3
   7 8 9  1 2 3  4 6 5

   2 1 5  3 4 7  8 9 6
   3 4 8  6 9 5  2 7 1
   6 9 7  8 1 2  3 5 4

   5 7 1  9 3 8  6 4 2
   8 3 2  5 6 4  9 1 7
   9 6 4  2 7 1  5 3 8

Rules used:

   Naked Single
   Hidden Single
   Locked Candidate Single Line
   Locked Candidate Multiple Lines
   Naked Pairs
   Hidden Pairs
   Naked Triples
   Hidden Triples
   Swordfish
   Color Conjugate Pairs
   Forced Chain Convergence

CLIPS time: init = 0.00129604339599609; solve = 0.255929946899414; total = 0.25722599029541






(solve "1..4.6..945.....23..........1....8..3...........8.2.545....864..3...4.1.9...7...8")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1..4.6..945.....23..........1....8..3...........8.2.545....864..3...4.1.9...7...8
25 givens, 214 candidates
entering BRT
naked-single ==> r9c8 = 3
hidden-single-in-a-block ==> r8c7 = 9
hidden-single-in-a-column ==> r6c7 = 3
hidden-single-in-a-row ==> r6c5 = 1
hidden-single-in-a-row ==> r3c7 = 4
hidden-single-in-a-row ==> r2c3 = 6
hidden-single-in-a-row ==> r2c5 = 8
Starting_init_links_with_<Fact-3678>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      278    2378   ! 4      235    6      ! 57     78     9      !
   ! 4      5      6      ! 179    8      179    ! 17     2      3      !
   ! 278    2789   23789  ! 123579 2359   13579  ! 4      678    1567   !
   +----------------------+----------------------+----------------------+
   ! 267    1      24579  ! 35679  34569  3579   ! 8      679    267    !
   ! 3      246789 245789 ! 5679   4569   579    ! 127    679    1267   !
   ! 67     679    79     ! 8      1      2      ! 3      5      4      !
   +----------------------+----------------------+----------------------+
   ! 5      27     127    ! 1239   239    8      ! 6      4      27     !
   ! 2678   3      278    ! 256    256    4      ! 9      1      257    !
   ! 9      246    124    ! 1256   7      15     ! 25     3      8      !
   +----------------------+----------------------+----------------------+

175 candidates, 977 csp-links and 977 links. Density = 6.42%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7289>
whip[1]: r6n9{c3 .} ==> r5c3 ≠ 9, r4c3 ≠ 9, r5c2 ≠ 9
whip[1]: r6n7{c3 .} ==> r5c3 ≠ 7, r4c1 ≠ 7, r4c3 ≠ 7, r5c2 ≠ 7
whip[1]: r6n6{c2 .} ==> r5c2 ≠ 6, r4c1 ≠ 6
naked-single ==> r4c1 = 2
whip[1]: r2n9{c6 .} ==> r3c6 ≠ 9, r3c4 ≠ 9, r3c5 ≠ 9
whip[1]: b9n7{r8c9 .} ==> r5c9 ≠ 7, r3c9 ≠ 7, r4c9 ≠ 7
naked-single ==> r4c9 = 6
hidden-single-in-a-block ==> r3c8 = 6
hidden-single-in-a-block ==> r1c8 = 8
whip[1]: c8n7{r5 .} ==> r5c7 ≠ 7

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 1     27    237   ! 4     235   6     ! 57    8     9     !
   ! 4     5     6     ! 179   8     179   ! 17    2     3     !
   ! 78    2789  23789 ! 12357 235   1357  ! 4     6     15    !
   +-------------------+-------------------+-------------------+
   ! 2     1     45    ! 3579  3459  3579  ! 8     79    6     !
   ! 3     48    458   ! 5679  4569  579   ! 12    79    12    !
   ! 67    679   79    ! 8     1     2     ! 3     5     4     !
   +-------------------+-------------------+-------------------+
   ! 5     27    127   ! 1239  239   8     ! 6     4     27    !
   ! 678   3     278   ! 256   256   4     ! 9     1     257   !
   ! 9     246   124   ! 1256  7     15    ! 25    3     8     !
   +-------------------+-------------------+-------------------+

142 candidates.

Entering_relation_bivalue_with_<Fact-7306>
Entering_level_S2_with_<Fact-7467>
naked-pairs-in-a-row: r7{c2 c9}{n2 n7} ==> r7c5 ≠ 2, r7c4 ≠ 2, r7c3 ≠ 7, r7c3 ≠ 2
naked-single ==> r7c3 = 1
naked-pairs-in-a-column: c2{r1 r7}{n2 n7} ==> r9c2 ≠ 2, r6c2 ≠ 7, r3c2 ≠ 7, r3c2 ≠ 2
finned-x-wing-in-rows: n5{r1 r9}{c7 c5} ==> r8c5 ≠ 5
Entering_level_BC2_with_<Fact-7596>
Entering_level_Z2_with_<Fact-8223>
Entering_level_tW2_with_<Fact-8691>
Entering_level_W2_with_<Fact-8692>
Entering_level_S3_with_<Fact-8693>
Entering_level_BC3_with_<Fact-8865>
biv-chain[3]: r3c1{n8 n7} - b4n7{r6c1 r6c3} - c3n9{r6 r3} ==> r3c3 ≠ 8
biv-chain[3]: r3c9{n1 n5} - r8n5{c9 c4} - r9c6{n5 n1} ==> r3c6 ≠ 1
biv-chain[3]: r5n6{c5 c4} - r9n6{c4 c2} - c2n4{r9 r5} ==> r5c5 ≠ 4
hidden-single-in-a-block ==> r4c5 = 4
naked-single ==> r4c3 = 5
biv-chain[3]: r4n3{c6 c4} - r7n3{c4 c5} - c5n9{r7 r5} ==> r4c6 ≠ 9
biv-chain[3]: r8n8{c3 c1} - c1n6{r8 r6} - b4n7{r6c1 r6c3} ==> r8c3 ≠ 7
naked-triplets-in-a-column: c3{r5 r8 r9}{n4 n8 n2} ==> r3c3 ≠ 2, r1c3 ≠ 2
hidden-single-in-a-block ==> r1c2 = 2
naked-single ==> r7c2 = 7
naked-single ==> r7c9 = 2
naked-single ==> r5c9 = 1
naked-single ==> r3c9 = 5
naked-single ==> r1c7 = 7
naked-single ==> r1c3 = 3
naked-single ==> r1c5 = 5
naked-single ==> r2c7 = 1
naked-single ==> r8c9 = 7
naked-single ==> r5c7 = 2
naked-single ==> r9c7 = 5
naked-single ==> r9c6 = 1
hidden-single-in-a-column ==> r3c4 = 1
hidden-single-in-a-block ==> r3c5 = 2
naked-single ==> r8c5 = 6
naked-single ==> r5c5 = 9
naked-single ==> r5c8 = 7
naked-single ==> r4c8 = 9
naked-single ==> r5c6 = 5
naked-single ==> r5c4 = 6
naked-single ==> r7c5 = 3
naked-single ==> r7c4 = 9
naked-single ==> r2c4 = 7
naked-single ==> r2c6 = 9
naked-single ==> r3c6 = 3
naked-single ==> r4c6 = 7
naked-single ==> r4c4 = 3
naked-single ==> r8c1 = 8
naked-single ==> r3c1 = 7
naked-single ==> r3c3 = 9
naked-single ==> r3c2 = 8
naked-single ==> r5c2 = 4
naked-single ==> r5c3 = 8
naked-single ==> r9c2 = 6
naked-single ==> r6c2 = 9
naked-single ==> r6c3 = 7
naked-single ==> r6c1 = 6
naked-single ==> r8c3 = 2
naked-single ==> r8c4 = 5
naked-single ==> r9c3 = 4
naked-single ==> r9c4 = 2
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[3]
   123456789
   456789123
   789123465
   215347896
   348695271
   697812354
   571938642
   832564917
   964271538

nb-facts = <Fact-10937>
Puzzle 1..4.6..945.....23..........1....8..3...........8.2.545....864..3...4.1.9...7...8 :
init-time = 0.2s, solve-time = 0.45s, total-time = 0.65s
nb-facts = <Fact-10937>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
