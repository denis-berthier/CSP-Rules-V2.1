#4918

+-------+-------+-------+
! . . . ! . 5 . ! . . . !
! . 5 6 ! 7 . . ! . . 2 !
! 8 . . ! 2 3 . ! . 6 . !
+-------+-------+-------+
! . . . ! . . 7 ! 8 . . !
! . . . ! 3 . . ! . 2 . !
! . . 1 ! . 2 . ! 3 . 7 !
+-------+-------+-------+
! 3 4 . ! 9 . . ! . 1 . !
! . . 2 ! 1 . . ! . 7 . !
! . . . ! 8 . . ! . 9 . !
+-------+-------+-------+

....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9. 306431
26 givens, SER = 8.3



Whips only:
(solve "....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9.
26 givens, 206 candidates
entering BRT
hidden-single-in-a-row ==> r2c8 = 3
hidden-single-in-a-column ==> r1c8 = 8
Starting_init_links_with_<Fact-3665>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 12479  12379  3479   ! 46     5      1469   ! 1479   8      149    !
   ! 149    5      6      ! 7      1489   1489   ! 149    3      2      !
   ! 8      179    479    ! 2      3      149    ! 14579  6      1459   !
   +----------------------+----------------------+----------------------+
   ! 24569  2369   3459   ! 456    1469   7      ! 8      45     14569  !
   ! 45679  6789   45789  ! 3      14689  145689 ! 14569  2      14569  !
   ! 4569   689    1      ! 456    2      45689  ! 3      45     7      !
   +----------------------+----------------------+----------------------+
   ! 3      4      578    ! 9      67     256    ! 256    1      568    !
   ! 569    689    2      ! 1      46     3456   ! 456    7      34568  !
   ! 1567   167    57     ! 8      467    23456  ! 2456   9      3456   !
   +----------------------+----------------------+----------------------+

199 candidates, 1274 csp-links and 1274 links. Density = 6.47%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-8382>
whip[1]: c4n5{r6 .} ==> r6c6 ≠ 5, r5c6 ≠ 5
whip[1]: c8n5{r6 .} ==> r5c9 ≠ 5, r4c9 ≠ 5, r5c7 ≠ 5
whip[1]: r5n5{c3 .} ==> r4c1 ≠ 5, r4c3 ≠ 5, r6c1 ≠ 5
whip[1]: c8n4{r6 .} ==> r5c9 ≠ 4, r4c9 ≠ 4, r5c7 ≠ 4

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 12479 12379 3479  ! 46    5     1469  ! 1479  8     149   !
   ! 149   5     6     ! 7     1489  1489  ! 149   3     2     !
   ! 8     179   479   ! 2     3     149   ! 14579 6     1459  !
   +-------------------+-------------------+-------------------+
   ! 2469  2369  349   ! 456   1469  7     ! 8     45    169   !
   ! 45679 6789  45789 ! 3     14689 14689 ! 169   2     169   !
   ! 469   689   1     ! 456   2     4689  ! 3     45    7     !
   +-------------------+-------------------+-------------------+
   ! 3     4     578   ! 9     67    256   ! 256   1     568   !
   ! 569   689   2     ! 1     46    3456  ! 456   7     34568 !
   ! 1567  167   57    ! 8     467   23456 ! 2456  9     3456  !
   +-------------------+-------------------+-------------------+

188 candidates.

Entering_level_W2_with_<Fact-8392>
whip[2]: c2n2{r1 r4} - c2n3{r4 .} ==> r1c2 ≠ 1, r1c2 ≠ 7, r1c2 ≠ 9
whip[2]: c2n2{r4 r1} - c2n3{r1 .} ==> r4c2 ≠ 6, r4c2 ≠ 9
Entering_level_W3_with_<Fact-8814>
whip[3]: r8c5{n6 n4} - r9c5{n4 n7} - r7c5{n7 .} ==> r9c6 ≠ 6
whip[3]: r8c5{n6 n4} - r9c5{n4 n7} - r7c5{n7 .} ==> r8c6 ≠ 6
whip[3]: r8c5{n4 n6} - r9c5{n6 n7} - r7c5{n7 .} ==> r9c6 ≠ 4
whip[3]: r8c5{n4 n6} - r9c5{n6 n7} - r7c5{n7 .} ==> r8c6 ≠ 4
whip[1]: b8n4{r9c5 .} ==> r2c5 ≠ 4, r4c5 ≠ 4, r5c5 ≠ 4
whip[3]: r8c5{n6 n4} - r9c5{n4 n7} - r7c5{n7 .} ==> r7c6 ≠ 6
whip[1]: b8n6{r9c5 .} ==> r4c5 ≠ 6, r5c5 ≠ 6
whip[3]: r8n9{c1 c2} - r6n9{c2 c6} - b2n9{r1c6 .} ==> r2c1 ≠ 9
Entering_level_W4_with_<Fact-9527>
whip[4]: c9n3{r9 r8} - r8n8{c9 c2} - r8n9{c2 c1} - b7n6{r8c1 .} ==> r9c9 ≠ 6
Entering_level_W5_with_<Fact-10476>
whip[5]: r7n6{c9 c5} - r7n7{c5 c3} - r9c3{n7 n5} - r9c1{n5 n1} - r9c2{n1 .} ==> r9c7 ≠ 6
Entering_level_W6_with_<Fact-11943>
Entering_level_W7_with_<Fact-14407>
Entering_level_W8_with_<Fact-18649>
whip[8]: c9n3{r9 r8} - r8c6{n3 n5} - c7n5{r8 r3} - r7n5{c7 c3} - r9c3{n5 n7} - r3n7{c3 c2} - c1n7{r1 r5} - r5n5{c1 .} ==> r9c9 ≠ 5
Entering_level_W9_with_<Fact-25139>
whip[9]: r5n5{c1 c3} - r9c3{n5 n7} - c1n7{r9 r1} - r1n2{c1 c2} - r1n3{c2 c3} - c3n9{r1 r3} - r3c2{n9 n1} - r3c6{n1 n4} - r5n4{c6 .} ==> r5c1 ≠ 9
Entering_level_W10_with_<Fact-35340>
whip[10]: r8n9{c1 c2} - r8n8{c2 c9} - c9n3{r8 r9} - c6n3{r9 r8} - r8n5{c6 c7} - c9n5{r8 r3} - c9n4{r3 r1} - r1c4{n4 n6} - r4n6{c4 c9} - r7c9{n6 .} ==> r8c1 ≠ 6
whip[9]: r4c5{n1 n9} - r5c5{n9 n8} - r2c5{n8 n1} - r2c1{n1 n4} - r5n4{c1 c3} - r5n5{c3 c1} - r8c1{n5 n9} - r6n9{c1 c2} - r6n8{c2 .} ==> r5c6 ≠ 1
whip[1]: c6n1{r3 .} ==> r2c5 ≠ 1
whip[10]: r8c1{n9 n5} - r9c3{n5 n7} - c1n7{r9 r5} - b1n7{r1c1 r3c2} - r3c3{n7 n4} - r5n4{c3 c6} - r2n4{c6 c7} - r8c7{n4 n6} - r7n6{c7 c5} - r7n7{c5 .} ==> r1c1 ≠ 9
whip[10]: c1n9{r6 r8} - c2n9{r8 r3} - r6n9{c2 c6} - r6n8{c6 c2} - r8n8{c2 c9} - r8n3{c9 c6} - r8n5{c6 c7} - r7c9{n5 n6} - r4c9{n6 n1} - r4c5{n1 .} ==> r4c3 ≠ 9
whip[5]: r1n2{c1 c2} - r4c2{n2 n3} - r4c3{n3 n4} - c4n4{r4 r6} - c8n4{r6 .} ==> r1c1 ≠ 4
whip[6]: r5n5{c1 c3} - r9c3{n5 n7} - c1n7{r9 r1} - r1n2{c1 c2} - r4c2{n2 n3} - r4c3{n3 .} ==> r5c1 ≠ 4
whip[2]: r5n4{c3 c6} - b2n4{r1c6 .} ==> r1c3 ≠ 4
whip[2]: b1n4{r2c1 r3c3} - r5n4{c3 .} ==> r2c6 ≠ 4
whip[5]: r6n8{c6 c2} - r6n9{c2 c1} - r8c1{n9 n5} - r5n5{c1 c3} - r5n4{c3 .} ==> r6c6 ≠ 4
whip[6]: r5n5{c3 c1} - r8c1{n5 n9} - r6c1{n9 n6} - r4c1{n6 n2} - r4c2{n2 n3} - r4c3{n3 .} ==> r5c3 ≠ 4
hidden-single-in-a-row ==> r5c6 = 4
hidden-single-in-a-block ==> r1c4 = 4
hidden-single-in-a-block ==> r1c6 = 6
whip[3]: r3c6{n1 n9} - b1n9{r3c2 r1c3} - r1c9{n9 .} ==> r3c9 ≠ 1
whip[3]: r3c6{n1 n9} - b1n9{r3c2 r1c3} - r1c9{n9 .} ==> r3c7 ≠ 1
whip[3]: r1c9{n9 n1} - c7n1{r2 r5} - c7n9{r5 .} ==> r3c9 ≠ 9
whip[4]: r2n4{c7 c1} - b4n4{r6c1 r4c3} - c3n3{r4 r1} - r1n9{c3 .} ==> r2c7 ≠ 9
whip[1]: r2n9{c6 .} ==> r3c6 ≠ 9
naked-single ==> r3c6 = 1
hidden-single-in-a-column ==> r9c2 = 1
whip[4]: c7n7{r1 r3} - r3c2{n7 n9} - c7n9{r3 r5} - c3n9{r5 .} ==> r1c7 ≠ 1
whip[3]: c7n1{r5 r2} - r1c9{n1 n9} - b6n9{r4c9 .} ==> r5c7 ≠ 6
whip[1]: c7n6{r8 .} ==> r7c9 ≠ 6, r8c9 ≠ 6
whip[4]: c7n2{r9 r7} - r7n6{c7 c5} - r7n7{c5 c3} - r9c3{n7 .} ==> r9c7 ≠ 5
whip[4]: r8n8{c2 c9} - r7c9{n8 n5} - r8c7{n5 n4} - r8c5{n4 .} ==> r8c2 ≠ 6
hidden-single-in-a-block ==> r9c1 = 6
whip[1]: b7n7{r9c3 .} ==> r1c3 ≠ 7, r3c3 ≠ 7, r5c3 ≠ 7
whip[3]: c3n8{r5 r7} - c3n5{r7 r9} - c3n7{r9 .} ==> r5c3 ≠ 9
whip[1]: c3n9{r3 .} ==> r3c2 ≠ 9
naked-single ==> r3c2 = 7
hidden-single-in-a-column ==> r5c1 = 7
hidden-single-in-a-block ==> r5c3 = 5
naked-single ==> r9c3 = 7
naked-single ==> r7c3 = 8
naked-single ==> r7c9 = 5
naked-single ==> r3c9 = 4
naked-single ==> r2c7 = 1
naked-single ==> r1c9 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 2
naked-single ==> r1c1 = 1
naked-single ==> r4c2 = 3
naked-single ==> r4c3 = 4
naked-single ==> r4c8 = 5
naked-single ==> r4c4 = 6
naked-single ==> r4c9 = 1
naked-single ==> r4c5 = 9
naked-single ==> r2c5 = 8
naked-single ==> r2c6 = 9
naked-single ==> r5c5 = 1
naked-single ==> r4c1 = 2
naked-single ==> r6c6 = 8
naked-single ==> r5c9 = 6
naked-single ==> r6c4 = 5
naked-single ==> r6c8 = 4
naked-single ==> r6c1 = 9
naked-single ==> r5c2 = 8
naked-single ==> r6c2 = 6
naked-single ==> r8c1 = 5
naked-single ==> r8c6 = 3
naked-single ==> r8c9 = 8
naked-single ==> r1c7 = 7
naked-single ==> r3c7 = 5
naked-single ==> r2c1 = 4
naked-single ==> r5c7 = 9
naked-single ==> r3c3 = 9
naked-single ==> r9c9 = 3
naked-single ==> r7c6 = 2
naked-single ==> r7c7 = 6
naked-single ==> r7c5 = 7
naked-single ==> r8c7 = 4
naked-single ==> r8c5 = 6
naked-single ==> r9c7 = 2
naked-single ==> r9c6 = 5
naked-single ==> r8c2 = 9
naked-single ==> r9c5 = 4
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[10]
   123456789
   456789132
   879231564
   234697851
   785314926
   961528347
   348972615
   592163478
   617845293

nb-facts = <Fact-58839>
Puzzle ....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9. :
init-time = 0.19s, solve-time = 46.06s, total-time = 46.26s
nb-facts = <Fact-58839>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




Whips + Uniqueness:
(solve "....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9.
26 givens, 206 candidates
entering BRT
hidden-single-in-a-row ==> r2c8 = 3
hidden-single-in-a-column ==> r1c8 = 8
Starting_init_links_with_<Fact-3665>

Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 12479  12379  3479   ! 46     5      1469   ! 1479   8      149    !
   ! 149    5      6      ! 7      1489   1489   ! 149    3      2      !
   ! 8      179    479    ! 2      3      149    ! 14579  6      1459   !
   +----------------------+----------------------+----------------------+
   ! 24569  2369   3459   ! 456    1469   7      ! 8      45     14569  !
   ! 45679  6789   45789  ! 3      14689  145689 ! 14569  2      14569  !
   ! 4569   689    1      ! 456    2      45689  ! 3      45     7      !
   +----------------------+----------------------+----------------------+
   ! 3      4      578    ! 9      67     256    ! 256    1      568    !
   ! 569    689    2      ! 1      46     3456   ! 456    7      34568  !
   ! 1567   167    57     ! 8      467    23456  ! 2456   9      3456   !
   +----------------------+----------------------+----------------------+

199 candidates, 1274 csp-links and 1274 links. Density = 6.47%

Starting non trivial part of solution.
************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************
number n6 : horizontal unique rectangle type 2 in cells r6c8, r6c4, r4c8 and r4c4 ==> r1c4 ≠ 6
naked-single ==> r1c4 = 4
hidden-single-in-a-block ==> r1c6 = 6
Entering_level_W1_with_<Fact-8389>
whip[1]: c4n5{r6 .} ==> r6c6 ≠ 5, r5c6 ≠ 5
whip[1]: c8n5{r6 .} ==> r5c9 ≠ 5, r4c9 ≠ 5, r5c7 ≠ 5
whip[1]: r5n5{c3 .} ==> r4c1 ≠ 5, r4c3 ≠ 5, r6c1 ≠ 5
whip[1]: c8n4{r6 .} ==> r5c9 ≠ 4, r4c9 ≠ 4, r5c7 ≠ 4
whip[1]: c4n6{r6 .} ==> r5c5 ≠ 6, r4c5 ≠ 6

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+
   ! 1279  12379 379   ! 4     5     6     ! 179   8     19    !
   ! 149   5     6     ! 7     189   189   ! 149   3     2     !
   ! 8     179   479   ! 2     3     19    ! 14579 6     1459  !
   +-------------------+-------------------+-------------------+
   ! 2469  2369  349   ! 56    149   7     ! 8     45    169   !
   ! 45679 6789  45789 ! 3     1489  1489  ! 169   2     169   !
   ! 469   689   1     ! 56    2     489   ! 3     45    7     !
   +-------------------+-------------------+-------------------+
   ! 3     4     578   ! 9     67    25    ! 256   1     568   !
   ! 569   689   2     ! 1     46    345   ! 456   7     34568 !
   ! 1567  167   57    ! 8     467   2345  ! 2456  9     3456  !
   +-------------------+-------------------+-------------------+

169 candidates.

Entering_level_W2_with_<Fact-8401>
whip[2]: c2n2{r1 r4} - c2n3{r4 .} ==> r1c2 ≠ 1, r1c2 ≠ 7, r1c2 ≠ 9
whip[2]: c2n2{r4 r1} - c2n3{r1 .} ==> r4c2 ≠ 6, r4c2 ≠ 9
Entering_level_W3_with_<Fact-8843>
whip[3]: r8c5{n4 n6} - r9c5{n6 n7} - r7c5{n7 .} ==> r9c6 ≠ 4
whip[3]: r8c5{n4 n6} - r9c5{n6 n7} - r7c5{n7 .} ==> r8c6 ≠ 4
whip[1]: b8n4{r9c5 .} ==> r4c5 ≠ 4, r5c5 ≠ 4
whip[3]: r1c9{n9 n1} - c7n1{r3 r5} - c7n9{r5 .} ==> r3c9 ≠ 9
whip[3]: r1c9{n1 n9} - c7n9{r3 r5} - c7n1{r5 .} ==> r3c9 ≠ 1
whip[3]: r8n9{c1 c2} - r6n9{c2 c6} - b2n9{r2c6 .} ==> r2c1 ≠ 9
whip[3]: r3c6{n1 n9} - r2n9{c6 c7} - r1c9{n9 .} ==> r3c7 ≠ 1
Entering_level_W4_with_<Fact-9746>
whip[4]: r4n1{c5 c9} - r1c9{n1 n9} - r2c7{n9 n4} - r2c1{n4 .} ==> r2c5 ≠ 1
whip[1]: c5n1{r5 .} ==> r5c6 ≠ 1
whip[4]: c9n3{r9 r8} - r8n8{c9 c2} - r8n9{c2 c1} - b7n6{r8c1 .} ==> r9c9 ≠ 6
whip[4]: c9n3{r8 r9} - c9n4{r9 r3} - c9n5{r3 r7} - c9n8{r7 .} ==> r8c9 ≠ 6
whip[4]: c9n8{r7 r8} - c9n3{r8 r9} - c9n5{r9 r3} - c9n4{r3 .} ==> r7c9 ≠ 6
whip[1]: b9n6{r9c7 .} ==> r5c7 ≠ 6
whip[4]: c7n2{r9 r7} - r7n6{c7 c5} - r7n7{c5 c3} - r9c3{n7 .} ==> r9c7 ≠ 5
whip[4]: r8n8{c2 c9} - r7c9{n8 n5} - r8c7{n5 n4} - r8c5{n4 .} ==> r8c2 ≠ 6
whip[3]: r6n9{c2 c6} - r6n8{c6 c2} - r8c2{n8 .} ==> r5c2 ≠ 9
whip[4]: r8n9{c2 c1} - r6n9{c1 c6} - r6n8{c6 c2} - r8c2{n8 .} ==> r3c2 ≠ 9
whip[4]: r1c9{n9 n1} - r2c7{n1 n4} - r3n4{c9 c3} - b1n9{r3c3 .} ==> r1c7 ≠ 9
whip[4]: r1c9{n1 n9} - r2c7{n9 n4} - r3n4{c9 c3} - b1n9{r3c3 .} ==> r1c7 ≠ 1
naked-single ==> r1c7 = 7
whip[3]: r5n5{c1 c3} - r9c3{n5 n7} - c1n7{r9 .} ==> r5c1 ≠ 9
whip[3]: r5n5{c1 c3} - r9c3{n5 n7} - c1n7{r9 .} ==> r5c1 ≠ 6
whip[3]: r5n5{c1 c3} - r9c3{n5 n7} - c1n7{r9 .} ==> r5c1 ≠ 4
whip[3]: r3c2{n7 n1} - r9n1{c2 c1} - c1n7{r9 .} ==> r5c2 ≠ 7
whip[2]: c2n7{r9 r3} - c2n1{r3 .} ==> r9c2 ≠ 6
whip[1]: c2n6{r6 .} ==> r4c1 ≠ 6, r6c1 ≠ 6
whip[2]: r5n7{c3 c1} - r5n5{c1 .} ==> r5c3 ≠ 9, r5c3 ≠ 4, r5c3 ≠ 8
hidden-single-in-a-column ==> r7c3 = 8
naked-single ==> r7c9 = 5
naked-single ==> r3c9 = 4
naked-single ==> r9c9 = 3
naked-single ==> r8c9 = 8
naked-single ==> r7c6 = 2
naked-single ==> r7c7 = 6
naked-single ==> r7c5 = 7
naked-single ==> r8c7 = 4
naked-single ==> r8c5 = 6
naked-single ==> r9c5 = 4
naked-single ==> r9c7 = 2
naked-single ==> r9c6 = 5
naked-single ==> r8c6 = 3
naked-single ==> r9c3 = 7
naked-single ==> r3c3 = 9
naked-single ==> r1c3 = 3
naked-single ==> r1c2 = 2
naked-single ==> r1c1 = 1
naked-single ==> r1c9 = 9
naked-single ==> r2c7 = 1
naked-single ==> r5c7 = 9
naked-single ==> r2c1 = 4
naked-single ==> r6c1 = 9
naked-single ==> r4c1 = 2
naked-single ==> r8c1 = 5
naked-single ==> r5c1 = 7
naked-single ==> r3c2 = 7
naked-single ==> r9c1 = 6
naked-single ==> r4c2 = 3
naked-single ==> r4c3 = 4
naked-single ==> r4c8 = 5
naked-single ==> r4c4 = 6
naked-single ==> r4c9 = 1
naked-single ==> r4c5 = 9
naked-single ==> r2c5 = 8
naked-single ==> r2c6 = 9
naked-single ==> r5c5 = 1
naked-single ==> r5c9 = 6
naked-single ==> r5c2 = 8
naked-single ==> r5c6 = 4
naked-single ==> r6c6 = 8
naked-single ==> r6c2 = 6
naked-single ==> r6c4 = 5
naked-single ==> r6c8 = 4
naked-single ==> r3c6 = 1
naked-single ==> r3c7 = 5
naked-single ==> r5c3 = 5
naked-single ==> r9c2 = 1
naked-single ==> r8c2 = 9
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[4]
   123456789
   456789132
   879231564
   234697851
   785314926
   961528347
   348972615
   592163478
   617845293

nb-facts = <Fact-11656>
Puzzle ....5.....567....28..23..6......78.....3...2...1.2.3.734.9...1...21...7....8...9. :
init-time = 0.2s, solve-time = 1.42s, total-time = 1.62s
nb-facts = <Fact-11656>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
