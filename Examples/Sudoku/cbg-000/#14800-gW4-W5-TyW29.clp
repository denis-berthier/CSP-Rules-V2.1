...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...

(solve "...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...")




Solution with whips, in W5:

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...
hidden-single-in-a-row ==> r5c9=7
hidden-single-in-a-row ==> r2c1=4
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 123    12     1237   ! 4      12359  6      ! 2579   8      59     !
   ! 4      5      12678  ! 179    1289   2789   ! 2679   3      69     !
   ! 2368   9      23678  ! 357    2358   278    ! 1      4      56     !
   +----------------------+----------------------+----------------------+
   ! 12368  12468  9      ! 156    7      48     ! 345    15     1345   !
   ! 136    146    1356   ! 2      14569  49     ! 8      159    7      !
   ! 7      148    158    ! 159    14589  3      ! 459    6      2      !
   +----------------------+----------------------+----------------------+
   ! 5      1268   1268   ! 3679   23469  2479   ! 23469  129    134689 !
   ! 12689  3      4      ! 69     269    5      ! 269    7      1689   !
   ! 269    7      26     ! 8      23469  1      ! 234569 259    34569  !
   +----------------------+----------------------+----------------------+

200 candidates, 1201 csp-links and 1201 links. Density = 6.04%
Starting non trivial part of solution.
whip[1]: c8n2{r9 .} ==> r9c7≠2, r7c7≠2, r8c7≠2
whip[1]: r5n3{c3 .} ==> r4c1≠3

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 123    12     1237   ! 4      12359  6      ! 2579   8      59     !
   ! 4      5      12678  ! 179    1289   2789   ! 2679   3      69     !
   ! 2368   9      23678  ! 357    2358   278    ! 1      4      56     !
   +----------------------+----------------------+----------------------+
   ! 1268   12468  9      ! 156    7      48     ! 345    15     1345   !
   ! 136    146    1356   ! 2      14569  49     ! 8      159    7      !
   ! 7      148    158    ! 159    14589  3      ! 459    6      2      !
   +----------------------+----------------------+----------------------+
   ! 5      1268   1268   ! 3679   23469  2479   ! 3469   129    134689 !
   ! 12689  3      4      ! 69     269    5      ! 69     7      1689   !
   ! 269    7      26     ! 8      23469  1      ! 34569  259    34569  !
   +----------------------+----------------------+----------------------+

196 candidates.

whip[2]: c7n2{r1 r2} - c7n7{r2 .} ==> r1c7≠5, r1c7≠9
whip[1]: b3n5{r3c9 .} ==> r4c9≠5, r9c9≠5
whip[2]: r1n5{c5 c9} - r1n9{c9 .} ==> r1c5≠3, r1c5≠1, r1c5≠2
whip[1]: b2n1{r2c5 .} ==> r2c3≠1
whip[1]: b2n3{r3c5 .} ==> r3c1≠3, r3c3≠3
whip[2]: c7n2{r2 r1} - c7n7{r1 .} ==> r2c7≠6, r2c7≠9
whip[1]: b3n9{r2c9 .} ==> r7c9≠9, r8c9≠9, r9c9≠9
whip[1]: c7n6{r9 .} ==> r7c9≠6, r8c9≠6, r9c9≠6
whip[2]: r8n1{c1 c9} - r8n8{c9 .} ==> r8c1≠2, r8c1≠6, r8c1≠9
hidden-single-in-a-block ==> r9c1=9
hidden-single-in-a-row ==> r8c5=2
whip[3]: r5c6{n4 n9} - r6n9{c5 c7} - b6n4{r6c7 .} ==> r4c6≠4
naked-single ==> r4c6=8
whip[5]: b4n8{r6c2 r6c3} - c3n5{r6 r5} - c3n3{r5 r1} - c3n1{r1 r7} - r8c1{n1 .} ==> r7c2≠8
hidden-single-in-a-column ==> r6c2=8
whip[2]: r6n4{c7 c5} - b8n4{r7c5 .} ==> r7c7≠4
whip[3]: r5c6{n4 n9} - r6n9{c5 c7} - r6n4{c7 .} ==> r5c5≠4
whip[3]: b6n9{r6c7 r5c8} - r5c6{n9 n4} - r6n4{c5 .} ==> r6c7≠5
whip[3]: c9n4{r9 r4} - r4n3{c9 c7} - c7n5{r4 .} ==> r9c7≠4
whip[1]: b9n4{r9c9 .} ==> r4c9≠4
whip[3]: r6n9{c5 c7} - r6n4{c7 c5} - r5c6{n4 .} ==> r5c5≠9
whip[4]: c7n5{r9 r4} - r4c8{n5 n1} - r4c4{n1 n6} - r8n6{c4 .} ==> r9c7≠6
whip[3]: c2n6{r5 r7} - c4n6{r7 r8} - r9n6{c5 .} ==> r4c1≠6
whip[4]: r8c7{n6 n9} - r6c7{n9 n4} - r4n4{c7 c2} - r4n6{c2 .} ==> r8c4≠6
naked-single ==> r8c4=9
naked-single ==> r8c7=6
whip[2]: r6c4{n1 n5} - r6c3{n5 .} ==> r6c5≠1
whip[2]: r6c4{n5 n1} - r6c3{n1 .} ==> r6c5≠5
whip[4]: c4n5{r6 r3} - r3n3{c4 c5} - c5n8{r3 r2} - c5n1{r2 .} ==> r5c5≠5
whip[1]: b5n5{r6c4 .} ==> r3c4≠5
whip[3]: c2n4{r5 r4} - r4n6{c2 c4} - r5c5{n6 .} ==> r5c2≠1
whip[3]: r9c3{n6 n2} - r9c8{n2 n5} - r5n5{c8 .} ==> r5c3≠6
whip[3]: r6c3{n1 n5} - c4n5{r6 r4} - r4c8{n5 .} ==> r4c1≠1
naked-single ==> r4c1=2
whip[3]: r6c3{n1 n5} - c4n5{r6 r4} - r4n6{c4 .} ==> r4c2≠1
whip[2]: c2n1{r7 r1} - c2n2{r1 .} ==> r7c2≠6
whip[1]: b7n6{r9c3 .} ==> r2c3≠6, r3c3≠6
hidden-single-in-a-block ==> r3c1=6
naked-single ==> r3c9=5
naked-single ==> r1c9=9
naked-single ==> r1c5=5
naked-single ==> r2c9=6
hidden-single-in-a-column ==> r8c1=8
naked-single ==> r8c9=1
naked-single ==> r4c9=3
naked-single ==> r9c9=4
naked-single ==> r7c9=8
whip[3]: r7c7{n3 n9} - r6c7{n9 n4} - c5n4{r6 .} ==> r7c5≠3
whip[3]: r5c2{n6 n4} - c6n4{r5 r7} - r7c5{n4 .} ==> r5c5≠6
naked-single ==> r5c5=1
naked-single ==> r5c1=3
naked-single ==> r1c1=1
naked-single ==> r1c2=2
naked-single ==> r1c7=7
naked-single ==> r1c3=3
naked-single ==> r2c7=2
naked-single ==> r7c2=1
naked-single ==> r5c3=5
naked-single ==> r5c8=9
naked-single ==> r5c6=4
naked-single ==> r5c2=6
naked-single ==> r4c2=4
naked-single ==> r4c7=5
naked-single ==> r4c4=6
naked-single ==> r4c8=1
naked-single ==> r9c7=3
naked-single ==> r7c7=9
naked-single ==> r9c5=6
naked-single ==> r7c5=4
naked-single ==> r9c3=2
naked-single ==> r7c3=6
naked-single ==> r9c8=5
naked-single ==> r6c5=9
naked-single ==> r2c5=8
naked-single ==> r2c3=7
naked-single ==> r2c4=1
naked-single ==> r2c6=9
naked-single ==> r3c3=8
naked-single ==> r3c5=3
naked-single ==> r3c4=7
naked-single ==> r3c6=2
naked-single ==> r7c4=3
naked-single ==> r7c6=7
naked-single ==> r6c7=4
naked-single ==> r7c8=2
naked-single ==> r6c3=1
naked-single ==> r6c4=5
PUZZLE 0 IS SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[5]
   123456789
   457189236
   698732145
   249678513
   365214897
   781593462
   516347928
   834925671
   972861354

nb-facts = <Fact-14124>
Puzzle ...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1... :
init-time = 0.19s, solve-time = 2.32s, total-time = 2.51s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************







----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Solution with typed-whips, in TyW29:
(solve "...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...
hidden-single-in-a-row ==> r5c9=7
hidden-single-in-a-row ==> r2c1=4
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 123    12     1237   ! 4      12359  6      ! 2579   8      59     !
   ! 4      5      12678  ! 179    1289   2789   ! 2679   3      69     !
   ! 2368   9      23678  ! 357    2358   278    ! 1      4      56     !
   +----------------------+----------------------+----------------------+
   ! 12368  12468  9      ! 156    7      48     ! 345    15     1345   !
   ! 136    146    1356   ! 2      14569  49     ! 8      159    7      !
   ! 7      148    158    ! 159    14589  3      ! 459    6      2      !
   +----------------------+----------------------+----------------------+
   ! 5      1268   1268   ! 3679   23469  2479   ! 23469  129    134689 !
   ! 12689  3      4      ! 69     269    5      ! 269    7      1689   !
   ! 269    7      26     ! 8      23469  1      ! 234569 259    34569  !
   +----------------------+----------------------+----------------------+

200 candidates, 1201 csp-links and 1201 links. Density = 6.04%
Starting non trivial part of solution.
whip[1]: c8n2{r9 .} ==> r9c7≠2, r7c7≠2, r8c7≠2
whip[1]: r5n3{c3 .} ==> r4c1≠3

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 123    12     1237   ! 4      12359  6      ! 2579   8      59     !
   ! 4      5      12678  ! 179    1289   2789   ! 2679   3      69     !
   ! 2368   9      23678  ! 357    2358   278    ! 1      4      56     !
   +----------------------+----------------------+----------------------+
   ! 1268   12468  9      ! 156    7      48     ! 345    15     1345   !
   ! 136    146    1356   ! 2      14569  49     ! 8      159    7      !
   ! 7      148    158    ! 159    14589  3      ! 459    6      2      !
   +----------------------+----------------------+----------------------+
   ! 5      1268   1268   ! 3679   23469  2479   ! 3469   129    134689 !
   ! 12689  3      4      ! 69     269    5      ! 69     7      1689   !
   ! 269    7      26     ! 8      23469  1      ! 34569  259    34569  !
   +----------------------+----------------------+----------------------+

196 candidates.

whip-bn[2]: b3n2{r1c7 r2c7} - b3n7{r2c7 .} ==> r1c7≠5, r1c7≠9
whip[1]: b3n5{r3c9 .} ==> r4c9≠5, r9c9≠5
whip-rn[2]: r1n5{c5 c9} - r1n9{c9 .} ==> r1c5≠3, r1c5≠1, r1c5≠2
whip[1]: b2n1{r2c5 .} ==> r2c3≠1
whip[1]: b2n3{r3c5 .} ==> r3c1≠3, r3c3≠3
whip-bn[2]: b3n2{r2c7 r1c7} - b3n7{r1c7 .} ==> r2c7≠6, r2c7≠9
whip[1]: b3n9{r2c9 .} ==> r7c9≠9, r8c9≠9, r9c9≠9
whip[1]: c7n6{r9 .} ==> r7c9≠6, r8c9≠6, r9c9≠6
whip-rn[2]: r8n1{c1 c9} - r8n8{c9 .} ==> r8c1≠2, r8c1≠6, r8c1≠9
hidden-single-in-a-block ==> r9c1=9
hidden-single-in-a-row ==> r8c5=2
whip-cn[7]: c4n5{r6 r3} - c4n3{r3 r7} - c5n3{r9 r3} - c5n8{r3 r2} - c5n1{r2 r5} - c4n1{r6 r2} - c4n7{r2 .} ==> r6c5≠5
whip-cn[9]: c2n6{r5 r7} - c5n6{r7 r9} - c4n6{r8 r4} - c1n6{r4 r3} - c9n6{r3 r2} - c9n9{r2 r1} - c9n5{r1 r3} - c4n5{r3 r6} - c3n5{r6 .} ==> r5c3≠6
whip-rc[9]: r9c9{n3 n4} - r4c9{n4 n1} - r4c8{n1 n5} - r4c4{n5 n6} - r8c4{n6 n9} - r7c4{n9 n7} - r7c6{n7 n4} - r5c6{n4 n9} - r5c8{n9 .} ==> r7c9≠3
whip-rn[10]: r9n5{c7 c8} - r9n2{c8 c3} - r9n6{c3 c5} - r9n3{c5 c9} - r4n3{c9 c7} - r4n5{c7 c4} - r5n5{c5 c3} - r5n3{c3 c1} - r5n6{c1 c2} - r4n6{c1 .} ==> r9c7≠4

Resolution state at this point:
+-------------------+-------------------+-------------------+
! 123   12    1237  ! 4     59    6     ! 27    8     59    !
! 4     5     2678  ! 179   189   2789  ! 27    3     69    !
! 268   9     2678  ! 357   358   278   ! 1     4     56    !
+-------------------+-------------------+-------------------+
! 1268  12468 9     ! 156   7     48    ! 345   15    134   !
! 136   146   135   ! 2     14569 49    ! 8     159   7     !
! 7     148   158   ! 159   1489  3     ! 459   6     2     !
+-------------------+-------------------+-------------------+
! 5     1268  1268  ! 3679  3469  479   ! 3469  129   148   !
! 18    3     4     ! 69    2     5     ! 69    7     18    !
! 9     7     26    ! 8     346   1     ! 356   25    34    !
+-------------------+-------------------+-------------------+


whip-rc[29]: r9c9{n4 n3} - r4c9{n3 n1} - r4c8{n1 n5} - r4c4{n5 n6} - r8c4{n6 n9} - r8c7{n9 n6} - r9c7{n6 n5} - r9c8{n5 n2} - r9c3{n2 n6} - r9c5{n6 n4} - r7c6{n4 n7} - r7c4{n7 n3} - r7c7{n3 n9} - r7c8{n9 n1} - r5c8{n1 n9} - r5c6{n9 n4} - r4c6{n4 n8} - r3c6{n8 n2} - r2c6{n2 n9} - r1c5{n9 n5} - r3c4{n5 n7} - r3c3{n7 n8} - r7c3{n8 n2} - r7c2{n2 n8} - r8c1{n8 n1} - r4c1{n1 n2} - r3c1{n2 n6} - r5c1{n6 n3} - r1c1{n3 .} ==> r7c9≠4
whip-cn[2]: c9n4{r4 r9} - c9n3{r9 .} ==> r4c9≠1
whip[1]: c9n1{r8 .} ==> r7c8≠1
whip-rc[5]: r4c9{n4 n3} - r4c7{n3 n5} - r4c8{n5 n1} - r5c8{n1 n9} - r5c6{n9 .} ==> r4c6≠4
naked-single ==> r4c6=8
whip-bn[6]: b2n3{r3c4 r3c5} - b8n3{r9c5 r7c4} - b8n7{r7c4 r7c6} - b2n7{r3c6 r2c4} - b2n1{r2c4 r2c5} - b2n8{r2c5 .} ==> r3c4≠5
whip[1]: c4n5{r6 .} ==> r5c5≠5
whip-bn[4]: b5n6{r5c5 r4c4} - b5n5{r4c4 r6c4} - b4n5{r6c3 r5c3} - b4n3{r5c3 .} ==> r5c1≠6
whip-cn[3]: c1n8{r8 r3} - c1n6{r3 r4} - c2n6{r4 .} ==> r7c2≠8
hidden-single-in-a-column ==> r6c2=8
whip-rn[2]: r6n4{c5 c7} - r7n4{c7 .} ==> r9c5≠4
hidden-single-in-a-row ==> r9c9=4
naked-single ==> r4c9=3
whip-rc[3]: r5c1{n1 n3} - r5c3{n3 n5} - r6c3{n5 .} ==> r5c2≠1
whip-rc[3]: r5c1{n1 n3} - r5c3{n3 n5} - r6c3{n5 .} ==> r4c2≠1
whip-rc[3]: r5c1{n1 n3} - r5c3{n3 n5} - r6c3{n5 .} ==> r4c1≠1
whip-rc[4]: r5c6{n9 n4} - r6c5{n4 n1} - r6c4{n1 n5} - r6c3{n5 .} ==> r5c5≠9
whip-rc[4]: r5c6{n4 n9} - r6c5{n9 n1} - r6c4{n1 n5} - r6c3{n5 .} ==> r5c5≠4
whip-rn[3]: r7n4{c5 c6} - r5n4{c6 c2} - r5n6{c2 .} ==> r7c5≠6
whip-rc[4]: r5c6{n9 n4} - r5c2{n4 n6} - r5c5{n6 n1} - r6c5{n1 .} ==> r6c4≠9
whip-rc[2]: r6c4{n1 n5} - r6c3{n5 .} ==> r6c5≠1
whip-rc[2]: r6c4{n5 n1} - r6c3{n1 .} ==> r6c7≠5
whip-rn[2]: r6n9{c5 c7} - r8n9{c7 .} ==> r7c5≠9
whip-cn[4]: c7n3{r7 r9} - c7n5{r9 r4} - c7n4{r4 r6} - c5n4{r6 .} ==> r7c5≠3
naked-single ==> r7c5=4
naked-single ==> r6c5=9
naked-single ==> r1c5=5
naked-single ==> r1c9=9
naked-single ==> r2c9=6
naked-single ==> r3c9=5
naked-single ==> r5c6=4
naked-single ==> r5c2=6
naked-single ==> r4c1=2
naked-single ==> r4c2=4
naked-single ==> r4c7=5
naked-single ==> r4c8=1
naked-single ==> r4c4=6
naked-single ==> r8c4=9
naked-single ==> r7c6=7
naked-single ==> r3c6=2
naked-single ==> r2c6=9
naked-single ==> r7c4=3
naked-single ==> r3c4=7
naked-single ==> r2c4=1
naked-single ==> r2c5=8
naked-single ==> r3c5=3
naked-single ==> r6c4=5
naked-single ==> r6c3=1
naked-single ==> r5c1=3
naked-single ==> r1c1=1
naked-single ==> r1c2=2
naked-single ==> r1c7=7
naked-single ==> r1c3=3
naked-single ==> r2c7=2
naked-single ==> r2c3=7
naked-single ==> r7c2=1
naked-single ==> r7c9=8
naked-single ==> r8c9=1
naked-single ==> r8c1=8
naked-single ==> r3c1=6
naked-single ==> r3c3=8
naked-single ==> r5c3=5
naked-single ==> r9c5=6
naked-single ==> r9c3=2
naked-single ==> r7c3=6
naked-single ==> r7c7=9
naked-single ==> r7c8=2
naked-single ==> r9c8=5
naked-single ==> r9c7=3
naked-single ==> r8c7=6
naked-single ==> r5c8=9
naked-single ==> r5c5=1
naked-single ==> r6c7=4
PUZZLE 0 IS SOLVED. rating-type = TyW+W1, MOST COMPLEX RULE TRIED = TyW[29]
   123456789
   457189236
   698732145
   249678513
   365214897
   781593462
   516347928
   834925671
   972861354

nb-facts = <Fact-19618>
Puzzle ...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1... :
init-time = 0.19s, solve-time = 1.01s, total-time = 1.2s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************






----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------

Solution with g-whips, in gW4:

(solve "...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+gW
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1...
hidden-single-in-a-row ==> r5c9=7
hidden-single-in-a-row ==> r2c1=4
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 123    12     1237   ! 4      12359  6      ! 2579   8      59     !
   ! 4      5      12678  ! 179    1289   2789   ! 2679   3      69     !
   ! 2368   9      23678  ! 357    2358   278    ! 1      4      56     !
   +----------------------+----------------------+----------------------+
   ! 12368  12468  9      ! 156    7      48     ! 345    15     1345   !
   ! 136    146    1356   ! 2      14569  49     ! 8      159    7      !
   ! 7      148    158    ! 159    14589  3      ! 459    6      2      !
   +----------------------+----------------------+----------------------+
   ! 5      1268   1268   ! 3679   23469  2479   ! 23469  129    134689 !
   ! 12689  3      4      ! 69     269    5      ! 269    7      1689   !
   ! 269    7      26     ! 8      23469  1      ! 234569 259    34569  !
   +----------------------+----------------------+----------------------+

200 candidates, 1201 csp-links and 1201 links. Density = 6.04%
Starting non trivial part of solution.
whip[1]: c8n2{r9 .} ==> r9c7≠2, r7c7≠2, r8c7≠2
whip[1]: r5n3{c3 .} ==> r4c1≠3

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 123    12     1237   ! 4      12359  6      ! 2579   8      59     !
   ! 4      5      12678  ! 179    1289   2789   ! 2679   3      69     !
   ! 2368   9      23678  ! 357    2358   278    ! 1      4      56     !
   +----------------------+----------------------+----------------------+
   ! 1268   12468  9      ! 156    7      48     ! 345    15     1345   !
   ! 136    146    1356   ! 2      14569  49     ! 8      159    7      !
   ! 7      148    158    ! 159    14589  3      ! 459    6      2      !
   +----------------------+----------------------+----------------------+
   ! 5      1268   1268   ! 3679   23469  2479   ! 3469   129    134689 !
   ! 12689  3      4      ! 69     269    5      ! 69     7      1689   !
   ! 269    7      26     ! 8      23469  1      ! 34569  259    34569  !
   +----------------------+----------------------+----------------------+

196 candidates.

biv-chain-rc[2]: r8c4{n6 n9} - r8c7{n9 n6} ==> r8c1≠6, r8c5≠6, r8c9≠6
biv-chain-rc[2]: r8c4{n9 n6} - r8c7{n6 n9} ==> r8c1≠9, r8c5≠9, r8c9≠9
naked-single ==> r8c5=2
hidden-single-in-a-block ==> r9c1=9
biv-chain-cn[2]: c7n2{r1 r2} - c7n7{r2 r1} ==> r1c7≠5, r1c7≠9
whip[1]: b3n5{r3c9 .} ==> r4c9≠5, r9c9≠5
biv-chain-rn[2]: r1n9{c5 c9} - r1n5{c9 c5} ==> r1c5≠1, r1c5≠3
whip[1]: b2n3{r3c5 .} ==> r3c1≠3, r3c3≠3
whip[1]: b2n1{r2c5 .} ==> r2c3≠1
biv-chain-cn[2]: c7n2{r2 r1} - c7n7{r1 r2} ==> r2c7≠6, r2c7≠9
whip[1]: b3n9{r2c9 .} ==> r7c9≠9
whip[1]: c7n6{r9 .} ==> r7c9≠6, r9c9≠6
122 g-candidates, 475 csp-glinks and 283 non-csp glinks
z-chain[3]: b6n4{r4c9 r6c7} - b6n9{r6c7 r5c8} - r5c6{n9 .} ==> r4c6≠4
naked-single ==> r4c6=8
g-whip[3]: c2n6{r7 r456} - c1n6{r5 r3} - c1n8{r3 .} ==> r7c2≠8
hidden-single-in-a-column ==> r6c2=8
biv-chain[2]: r6n4{c7 c5} - c6n4{r5 r7} ==> r7c7≠4
biv-chain[3]: r5c6{n9 n4} - r6n4{c5 c7} - b6n9{r6c7 r5c8} ==> r5c5≠9
biv-chain[3]: r6n4{c5 c7} - b6n9{r6c7 r5c8} - r5c6{n9 n4} ==> r5c5≠4
biv-chain[3]: r6n4{c7 c5} - r5c6{n4 n9} - b6n9{r5c8 r6c7} ==> r6c7≠5
biv-chain[3]: c7n5{r9 r4} - r4n3{c7 c9} - r9c9{n3 n4} ==> r9c7≠4
whip[1]: b9n4{r9c9 .} ==> r4c9≠4
t-whip[4]: c7n5{r9 r4} - r4c8{n5 n1} - r4c4{n1 n6} - r8n6{c4 .} ==> r9c7≠6
z-chain[3]: c2n6{r5 r7} - r9n6{c3 c5} - r5n6{c5 .} ==> r4c1≠6
biv-chain[4]: r6c7{n9 n4} - r4n4{c7 c2} - r4n6{c2 c4} - r8n6{c4 c7} ==> r8c7≠9
naked-single ==> r8c7=6
naked-single ==> r8c4=9
biv-chain-bn[2]: b5n9{r6c5 r5c6} - b5n4{r5c6 r6c5} ==> r6c5≠1, r6c5≠5
biv-chain[4]: r3n3{c4 c5} - b2n8{r3c5 r2c5} - c5n1{r2 r5} - r6c4{n1 n5} ==> r3c4≠5
whip[1]: c4n5{r6 .} ==> r5c5≠5
biv-chain-bn[3]: b5n6{r5c5 r4c4} - b5n5{r4c4 r6c4} - b4n5{r6c3 r5c3} ==> r5c3≠6
biv-chain[3]: r6n1{c3 c4} - r5c5{n1 n6} - r4n6{c4 c2} ==> r4c2≠1
biv-chain[3]: r5c5{n1 n6} - r4n6{c4 c2} - b4n4{r4c2 r5c2} ==> r5c2≠1
biv-chain[3]: r6c3{n1 n5} - r5n5{c3 c8} - r4c8{n5 n1} ==> r4c1≠1
naked-single ==> r4c1=2
biv-chain-cn[2]: c2n2{r7 r1} - c2n1{r1 r7} ==> r7c2≠6
whip[1]: b7n6{r9c3 .} ==> r2c3≠6, r3c3≠6
hidden-single-in-a-block ==> r3c1=6
naked-single ==> r3c9=5
naked-single ==> r1c9=9
naked-single ==> r1c5=5
naked-single ==> r2c9=6
hidden-single-in-a-column ==> r8c1=8
naked-single ==> r8c9=1
naked-single ==> r4c9=3
naked-single ==> r9c9=4
naked-single ==> r7c9=8
biv-chain-rn[3]: r7n4{c5 c6} - r5n4{c6 c2} - r5n6{c2 c5} ==> r7c5≠6
biv-chain-rc[3]: r7c7{n9 n3} - r7c5{n3 n4} - r6c5{n4 n9} ==> r6c7≠9
naked-single ==> r6c7=4
naked-single ==> r4c7=5
naked-single ==> r4c8=1
naked-single ==> r4c4=6
naked-single ==> r4c2=4
naked-single ==> r5c2=6
naked-single ==> r5c5=1
naked-single ==> r5c1=3
naked-single ==> r1c1=1
naked-single ==> r1c2=2
naked-single ==> r1c7=7
naked-single ==> r1c3=3
naked-single ==> r2c7=2
naked-single ==> r7c2=1
naked-single ==> r5c3=5
naked-single ==> r6c3=1
naked-single ==> r6c4=5
naked-single ==> r5c8=9
naked-single ==> r5c6=4
naked-single ==> r7c6=7
naked-single ==> r2c6=9
naked-single ==> r2c5=8
naked-single ==> r2c3=7
naked-single ==> r2c4=1
naked-single ==> r3c3=8
naked-single ==> r3c5=3
naked-single ==> r3c4=7
naked-single ==> r7c5=4
naked-single ==> r9c5=6
naked-single ==> r9c3=2
naked-single ==> r7c3=6
naked-single ==> r9c8=5
naked-single ==> r3c6=2
naked-single ==> r7c4=3
naked-single ==> r7c7=9
naked-single ==> r7c8=2
naked-single ==> r9c7=3
naked-single ==> r6c5=9
PUZZLE 0 IS SOLVED. rating-type = TyW+gW, MOST COMPLEX RULE TRIED = tW[4]
   123456789
   457189236
   698732145
   249678513
   365214897
   781593462
   516347928
   834925671
   972861354

nb-facts = <Fact-40521>
Puzzle ...4.6.8..5.....3..9....14...9.7.......2..8..7....3.625.........34..5.7..7.8.1... :
init-time = 0.21s, solve-time = 3.57s, total-time = 3.78s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+gW
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

