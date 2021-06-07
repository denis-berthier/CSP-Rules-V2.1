#6427


+-------+-------+-------+
! 1 . . ! . 5 . ! . 8 . !
! . . 7 ! . . . ! . . 6 !
! 6 8 . ! . . . ! . 4 . !
+-------+-------+-------+
! 2 . . ! 7 9 . ! . 5 4 !
! . . . ! . . . ! 3 . . !
! . . 4 ! . . 3 ! 9 . 8 !
+-------+-------+-------+
! . . . ! . . 4 ! 8 7 2 !
! 8 . . ! . . . ! . . . !
! . 7 . ! 3 2 . ! . . 5 !
+-------+-------+-------+

1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5 233962
27 givens, SER = 6.6

Whips only:
(solve "1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5
27 givens, 198 candidates
entering BRT
hidden-single-in-a-row ==> r9c6 = 8
hidden-single-in-a-row ==> r4c3 = 8
hidden-single-in-a-block ==> r4c2 = 3
hidden-single-in-a-row ==> r6c1 = 7
hidden-single-in-a-row ==> r5c9 = 7
Starting_init_links_with_<Fact-3661>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      249    239    ! 2469   5      2679   ! 27     8      39     !
   ! 3459   2459   7      ! 12489  1348   129    ! 125    1239   6      !
   ! 6      8      2359   ! 129    137    1279   ! 1257   4      139    !
   +----------------------+----------------------+----------------------+
   ! 2      3      8      ! 7      9      16     ! 16     5      4      !
   ! 59     1569   1569   ! 124568 1468   1256   ! 3      126    7      !
   ! 7      156    4      ! 1256   16     3      ! 9      126    8      !
   +----------------------+----------------------+----------------------+
   ! 359    1569   13569  ! 1569   16     4      ! 8      7      2      !
   ! 8      124569 123569 ! 1569   167    15679  ! 146    1369   139    !
   ! 49     7      169    ! 3      2      8      ! 146    169    5      !
   +----------------------+----------------------+----------------------+

177 candidates, 1028 csp-links and 1028 links. Density = 6.6%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7472>
whip[1]: r7n3{c3 .} ==> r8c3 ≠ 3
whip[1]: c7n2{r3 .} ==> r2c8 ≠ 2

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      249    239    ! 2469   5      2679   ! 27     8      39     !
   ! 3459   2459   7      ! 12489  1348   129    ! 125    139    6      !
   ! 6      8      2359   ! 129    137    1279   ! 1257   4      139    !
   +----------------------+----------------------+----------------------+
   ! 2      3      8      ! 7      9      16     ! 16     5      4      !
   ! 59     1569   1569   ! 124568 1468   1256   ! 3      126    7      !
   ! 7      156    4      ! 1256   16     3      ! 9      126    8      !
   +----------------------+----------------------+----------------------+
   ! 359    1569   13569  ! 1569   16     4      ! 8      7      2      !
   ! 8      124569 12569  ! 1569   167    15679  ! 146    1369   139    !
   ! 49     7      169    ! 3      2      8      ! 146    169    5      !
   +----------------------+----------------------+----------------------+

175 candidates.

Entering_level_W2_with_<Fact-7478>
whip[2]: c5n4{r2 r5} - c5n8{r5 .} ==> r2c5 ≠ 1, r2c5 ≠ 3
hidden-single-in-a-block ==> r3c5 = 3
hidden-single-in-a-column ==> r8c5 = 7
whip[2]: r5n4{c4 c5} - r5n8{c5 .} ==> r5c4 ≠ 1, r5c4 ≠ 2, r5c4 ≠ 5, r5c4 ≠ 6
whip[2]: b5n2{r5c6 r6c4} - b5n5{r6c4 .} ==> r5c6 ≠ 6, r5c6 ≠ 1
whip[2]: b5n2{r6c4 r5c6} - b5n5{r5c6 .} ==> r6c4 ≠ 6, r6c4 ≠ 1
whip[2]: c5n4{r5 r2} - c5n8{r2 .} ==> r5c5 ≠ 1, r5c5 ≠ 6
whip[2]: c6n5{r8 r5} - b4n5{r5c1 .} ==> r8c2 ≠ 5
Entering_level_W3_with_<Fact-8097>
whip[3]: r4c7{n1 n6} - r9c7{n6 n4} - r8c7{n4 .} ==> r3c7 ≠ 1
whip[3]: r4c7{n1 n6} - r9c7{n6 n4} - r8c7{n4 .} ==> r2c7 ≠ 1
whip[3]: c9n1{r3 r8} - c7n1{r9 r4} - c6n1{r4 .} ==> r3c4 ≠ 1
Entering_level_W4_with_<Fact-9355>
whip[4]: c6n9{r3 r8} - c6n5{r8 r5} - r6c4{n5 n2} - r3c4{n2 .} ==> r2c4 ≠ 9
whip[4]: c6n9{r3 r8} - c6n5{r8 r5} - r6c4{n5 n2} - r3c4{n2 .} ==> r1c4 ≠ 9
whip[4]: r4n6{c7 c6} - r1n6{c6 c4} - r1n4{c4 c2} - r8n4{c2 .} ==> r8c7 ≠ 6
whip[4]: r3c4{n2 n9} - b8n9{r7c4 r8c6} - c6n5{r8 r5} - c6n2{r5 .} ==> r2c4 ≠ 2
whip[4]: r3c4{n2 n9} - b8n9{r7c4 r8c6} - c6n5{r8 r5} - c6n2{r5 .} ==> r1c4 ≠ 2
whip[4]: c6n5{r8 r5} - r6c4{n5 n2} - r3c4{n2 n9} - b8n9{r7c4 .} ==> r8c6 ≠ 6
whip[4]: c6n5{r8 r5} - r6c4{n5 n2} - r3c4{n2 n9} - b8n9{r7c4 .} ==> r8c6 ≠ 1
Entering_level_W5_with_<Fact-12665>
Entering_level_W6_with_<Fact-18673>
whip[6]: r7n9{c3 c4} - r3c4{n9 n2} - r3c3{n2 n5} - r2n5{c2 c7} - r2n2{c7 c2} - r8n2{c2 .} ==> r8c3 ≠ 9
Entering_level_W7_with_<Fact-31215>
whip[7]: c6n7{r1 r3} - r3n1{c6 c9} - r3n9{c9 c3} - r2n9{c2 c8} - r9n9{c8 c1} - c1n4{r9 r2} - r2n3{c1 .} ==> r1c6 ≠ 9
whip[7]: r1n4{c2 c4} - r1n6{c4 c6} - c6n7{r1 r3} - r3n1{c6 c9} - c9n9{r3 r8} - c6n9{r8 r2} - c8n9{r2 .} ==> r1c2 ≠ 9
whip[2]: r1n9{c3 c9} - r1n3{c9 .} ==> r1c3 ≠ 2
whip[4]: r2n3{c8 c1} - c1n4{r2 r9} - r9n9{c1 c3} - r1c3{n9 .} ==> r2c8 ≠ 9
whip[1]: c8n9{r9 .} ==> r8c9 ≠ 9
whip[6]: r5n6{c3 c8} - c8n2{r5 r6} - c4n2{r6 r3} - c3n2{r3 r8} - r8n6{c3 c4} - c5n6{r7 .} ==> r6c2 ≠ 6
whip[1]: b4n6{r5c3 .} ==> r5c8 ≠ 6
whip[4]: r3c9{n1 n9} - r3c4{n9 n2} - c6n2{r3 r5} - r5c8{n2 .} ==> r2c8 ≠ 1
naked-single ==> r2c8 = 3
naked-single ==> r1c9 = 9
naked-single ==> r1c3 = 3
naked-single ==> r3c9 = 1
naked-single ==> r8c9 = 3
hidden-single-in-a-block ==> r7c1 = 3
whip[3]: r5c6{n2 n5} - c1n5{r5 r2} - r2c7{n5 .} ==> r2c6 ≠ 2
whip[4]: b9n9{r9c8 r8c8} - r8c6{n9 n5} - r5c6{n5 n2} - r5c8{n2 .} ==> r9c8 ≠ 1
whip[3]: c5n1{r7 r6} - r4n1{c6 c7} - r9n1{c7 .} ==> r7c2 ≠ 1
whip[3]: c5n1{r7 r6} - r4n1{c6 c7} - r9n1{c7 .} ==> r7c3 ≠ 1
whip[1]: r7n1{c5 .} ==> r8c4 ≠ 1
whip[3]: r8c6{n5 n9} - r2c6{n9 n1} - c4n1{r2 .} ==> r7c4 ≠ 5
whip[1]: b8n5{r8c6 .} ==> r8c3 ≠ 5
whip[4]: r9n1{c3 c7} - r4n1{c7 c6} - r2c6{n1 n9} - b1n9{r2c1 .} ==> r9c3 ≠ 9
whip[4]: r3n5{c7 c3} - b7n5{r7c3 r7c2} - r6n5{c2 c4} - c4n2{r6 .} ==> r3c7 ≠ 2
whip[4]: r4n1{c7 c6} - r2c6{n1 n9} - r3c4{n9 n2} - r6n2{c4 .} ==> r6c8 ≠ 1
whip[2]: b6n1{r5c8 r4c7} - r9n1{c7 .} ==> r5c3 ≠ 1
whip[1]: c3n1{r9 .} ==> r8c2 ≠ 1
whip[4]: c3n2{r8 r3} - c4n2{r3 r6} - c8n2{r6 r5} - c8n1{r5 .} ==> r8c3 ≠ 1
hidden-single-in-a-block ==> r9c3 = 1
whip[1]: r9n6{c8 .} ==> r8c8 ≠ 6
whip[4]: c4n5{r8 r6} - r6c2{n5 n1} - r5n1{c2 c8} - r8c8{n1 .} ==> r8c4 ≠ 9
whip[3]: c4n1{r7 r2} - r2c6{n1 n9} - b8n9{r8c6 .} ==> r7c4 ≠ 6
whip[3]: r2c6{n9 n1} - c4n1{r2 r7} - c4n9{r7 .} ==> r3c6 ≠ 9
whip[3]: r5c1{n9 n5} - c6n5{r5 r8} - c6n9{r8 .} ==> r2c1 ≠ 9
whip[2]: b1n9{r2c2 r3c3} - c4n9{r3 .} ==> r7c2 ≠ 9
whip[2]: r7n9{c3 c4} - r3n9{c4 .} ==> r5c3 ≠ 9
whip[3]: r6n1{c2 c5} - c5n6{r6 r7} - r7c2{n6 .} ==> r6c2 ≠ 5
naked-single ==> r6c2 = 1
naked-single ==> r6c5 = 6
naked-single ==> r4c6 = 1
naked-single ==> r2c6 = 9
naked-single ==> r3c4 = 2
naked-single ==> r3c6 = 7
naked-single ==> r1c6 = 6
naked-single ==> r1c4 = 4
naked-single ==> r1c2 = 2
naked-single ==> r1c7 = 7
naked-single ==> r2c5 = 8
naked-single ==> r2c4 = 1
naked-single ==> r7c4 = 9
naked-single ==> r5c5 = 4
naked-single ==> r5c4 = 8
naked-single ==> r3c7 = 5
naked-single ==> r2c7 = 2
naked-single ==> r3c3 = 9
naked-single ==> r6c4 = 5
naked-single ==> r5c6 = 2
naked-single ==> r5c8 = 1
naked-single ==> r8c8 = 9
naked-single ==> r9c8 = 6
naked-single ==> r9c7 = 4
naked-single ==> r8c7 = 1
naked-single ==> r9c1 = 9
naked-single ==> r5c1 = 5
naked-single ==> r2c1 = 4
naked-single ==> r2c2 = 5
naked-single ==> r7c2 = 6
naked-single ==> r5c2 = 9
naked-single ==> r7c3 = 5
naked-single ==> r8c2 = 4
naked-single ==> r8c3 = 2
naked-single ==> r5c3 = 6
naked-single ==> r8c4 = 6
naked-single ==> r8c6 = 5
naked-single ==> r4c7 = 6
naked-single ==> r6c8 = 2
naked-single ==> r7c5 = 1
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[7]
   123456789
   457189236
   689237541
   238791654
   596842317
   714563928
   365914872
   842675193
   971328465

nb-facts = <Fact-57794>
Puzzle 1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5 :
init-time = 0.19s, solve-time = 19.73s, total-time = 19.92s
nb-facts = <Fact-57794>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************





Whips + Uniqueness:
(solve "1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5
27 givens, 198 candidates
entering BRT
hidden-single-in-a-row ==> r9c6 = 8
hidden-single-in-a-row ==> r4c3 = 8
hidden-single-in-a-block ==> r4c2 = 3
hidden-single-in-a-row ==> r6c1 = 7
hidden-single-in-a-row ==> r5c9 = 7
Starting_init_links_with_<Fact-3661>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 1      249    239    ! 2469   5      2679   ! 27     8      39     !
   ! 3459   2459   7      ! 12489  1348   129    ! 125    1239   6      !
   ! 6      8      2359   ! 129    137    1279   ! 1257   4      139    !
   +----------------------+----------------------+----------------------+
   ! 2      3      8      ! 7      9      16     ! 16     5      4      !
   ! 59     1569   1569   ! 124568 1468   1256   ! 3      126    7      !
   ! 7      156    4      ! 1256   16     3      ! 9      126    8      !
   +----------------------+----------------------+----------------------+
   ! 359    1569   13569  ! 1569   16     4      ! 8      7      2      !
   ! 8      124569 123569 ! 1569   167    15679  ! 146    1369   139    !
   ! 49     7      169    ! 3      2      8      ! 146    169    5      !
   +----------------------+----------------------+----------------------+

177 candidates, 1028 csp-links and 1028 links. Density = 6.6%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-7477>
whip[1]: r7n3{c3 .} ==> r8c3 ≠ 3
whip[1]: c7n2{r3 .} ==> r2c8 ≠ 2

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 1      249    239    ! 2469   5      2679   ! 27     8      39     !
   ! 3459   2459   7      ! 12489  1348   129    ! 125    139    6      !
   ! 6      8      2359   ! 129    137    1279   ! 1257   4      139    !
   +----------------------+----------------------+----------------------+
   ! 2      3      8      ! 7      9      16     ! 16     5      4      !
   ! 59     1569   1569   ! 124568 1468   1256   ! 3      126    7      !
   ! 7      156    4      ! 1256   16     3      ! 9      126    8      !
   +----------------------+----------------------+----------------------+
   ! 359    1569   13569  ! 1569   16     4      ! 8      7      2      !
   ! 8      124569 12569  ! 1569   167    15679  ! 146    1369   139    !
   ! 49     7      169    ! 3      2      8      ! 146    169    5      !
   +----------------------+----------------------+----------------------+

175 candidates.

Entering_level_W2_with_<Fact-7483>
whip[2]: c5n4{r2 r5} - c5n8{r5 .} ==> r2c5 ≠ 1, r2c5 ≠ 3
hidden-single-in-a-block ==> r3c5 = 3
hidden-single-in-a-column ==> r8c5 = 7
whip[2]: r5n4{c4 c5} - r5n8{c5 .} ==> r5c4 ≠ 1, r5c4 ≠ 2, r5c4 ≠ 5, r5c4 ≠ 6
whip[2]: b5n2{r5c6 r6c4} - b5n5{r6c4 .} ==> r5c6 ≠ 6, r5c6 ≠ 1
whip[2]: b5n2{r6c4 r5c6} - b5n5{r5c6 .} ==> r6c4 ≠ 6, r6c4 ≠ 1
whip[2]: c5n4{r5 r2} - c5n8{r2 .} ==> r5c5 ≠ 1, r5c5 ≠ 6
************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************
vertical unique rectangle type 1 in cells r5c5, r5c4, r2c5 and r2c4 ==> r2c4 ≠ n8, r2c4 ≠ 4
hidden-single-in-a-block ==> r2c5 = 8
naked-single ==> r5c5 = 4
naked-single ==> r5c4 = 8
hidden-single-in-a-column ==> r1c4 = 4
hidden-single-in-a-block ==> r1c6 = 6
naked-single ==> r4c6 = 1
naked-single ==> r4c7 = 6
naked-single ==> r6c5 = 6
naked-single ==> r7c5 = 1
hidden-single-in-a-block ==> r3c6 = 7
hidden-single-in-a-block ==> r1c7 = 7
whip[1]: r1n2{c3 .} ==> r2c2 ≠ 2, r3c3 ≠ 2
whip[1]: b6n1{r6c8 .} ==> r2c8 ≠ 1, r8c8 ≠ 1, r9c8 ≠ 1
whip[2]: r9c7{n1 n4} - r8c7{n4 .} ==> r8c9 ≠ 1, r2c7 ≠ 1, r3c7 ≠ 1
hidden-single-in-a-block ==> r3c9 = 1
hidden-single-in-a-block ==> r2c4 = 1
whip[2]: c9n9{r1 r8} - c6n9{r8 .} ==> r2c8 ≠ 9
naked-single ==> r2c8 = 3
naked-single ==> r1c9 = 9
naked-single ==> r1c2 = 2
naked-single ==> r1c3 = 3
naked-single ==> r8c9 = 3
hidden-single-in-a-block ==> r7c1 = 3
hidden-single-in-a-column ==> r8c3 = 2
whip[2]: r8n5{c6 c2} - r6n5{c2 .} ==> r7c4 ≠ 5
whip[1]: b8n5{r8c6 .} ==> r8c2 ≠ 5
whip[2]: r8n1{c2 c7} - r8n4{c7 .} ==> r8c2 ≠ 9, r8c2 ≠ 6
whip[2]: r3n9{c3 c4} - r7n9{c4 .} ==> r9c3 ≠ 9
Entering_level_W3_with_<Fact-8492>
whip[3]: r5c1{n9 n5} - r5c6{n5 n2} - r2c6{n2 .} ==> r2c1 ≠ 9
whip[3]: r9c1{n9 n4} - c2n4{r8 r2} - b1n9{r2c2 .} ==> r7c3 ≠ 9
whip[2]: r7n9{c2 c4} - r3n9{c4 .} ==> r2c2 ≠ 9
hidden-single-in-a-block ==> r3c3 = 9
naked-single ==> r3c4 = 2
naked-single ==> r2c6 = 9
naked-single ==> r8c6 = 5
naked-single ==> r5c6 = 2
naked-single ==> r5c8 = 1
naked-single ==> r6c8 = 2
naked-single ==> r3c7 = 5
naked-single ==> r2c7 = 2
naked-single ==> r6c4 = 5
naked-single ==> r6c2 = 1
naked-single ==> r8c2 = 4
naked-single ==> r2c2 = 5
naked-single ==> r2c1 = 4
naked-single ==> r8c7 = 1
naked-single ==> r9c7 = 4
naked-single ==> r9c1 = 9
naked-single ==> r5c1 = 5
naked-single ==> r5c3 = 6
naked-single ==> r5c2 = 9
naked-single ==> r7c3 = 5
naked-single ==> r9c3 = 1
naked-single ==> r7c2 = 6
naked-single ==> r7c4 = 9
naked-single ==> r8c4 = 6
naked-single ==> r8c8 = 9
naked-single ==> r9c8 = 6
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[3]
   123456789
   457189236
   689237541
   238791654
   596842317
   714563928
   365914872
   842675193
   971328465

nb-facts = <Fact-8718>
Puzzle 1...5..8...7.....668.....4.2..79..54......3....4..39.8.....48728.........7.32...5 :
init-time = 0.2s, solve-time = 0.53s, total-time = 0.72s
nb-facts = <Fact-8718>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
