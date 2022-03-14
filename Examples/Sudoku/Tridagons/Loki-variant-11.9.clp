

+-------+-------+-------+
! . . . ! . . . ! . . 1 !
! . . . ! . . 2 ! . . . !
! . . . ! . 3 . ! . 4 5 !
+-------+-------+-------+
! . . 6 ! . . . ! . . . !
! . 7 1 ! . 8 . ! . . . !
! 3 2 . ! . 6 7 ! . . 8 !
+-------+-------+-------+
! . 6 . ! . 2 3 ! . . . !
! . 8 3 ! 7 . . ! 1 . . !
! 7 . 2 ! 8 1 . ! 6 . . !
+-------+-------+-------+

........1.....2.......3..45..6.......71.8....32..67..8.6..23....837..1..7.281.6..

The is the second puzzle not solvable in T&5(2)
Not even solvable in gT&E(2) = T&E(W1, 2), nor in T&E(S2, 2)
Solvable in T&E(W2, 2) and therefore in T&E(3)

It is close to Loki, but not isomorphic to it.


(solve "........1.....2.......3..45..6.......71.8....32..67..8.6..23....837..1..7.281.6..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r815
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
........1.....2.......3..45..6.......71.8....32..67..8.6..23....837..1..7.281.6..
hidden-single-in-a-row ==> r8c6=6
hidden-single-in-a-row ==> r7c1=1
hidden-single-in-a-row ==> r4c1=8
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 24569  3459   45789  ! 4569   4579   4589   ! 23789  236789 1      !
   ! 4569   13459  45789  ! 14569  4579   2      ! 3789   36789  3679   !
   ! 269    19     789    ! 169    3      189    ! 2789   4      5      !
   +----------------------+----------------------+----------------------+
   ! 8      459    6      ! 123459 459    1459   ! 234579 123579 23479  !
   ! 459    7      1      ! 23459  8      459    ! 23459  23569  23469  !
   ! 3      2      459    ! 1459   6      7      ! 459    159    8      !
   +----------------------+----------------------+----------------------+
   ! 1      6      459    ! 459    2      3      ! 45789  5789   479    !
   ! 459    8      3      ! 7      459    6      ! 1      259    249    !
   ! 7      459    2      ! 8      1      459    ! 6      359    349    !
   +----------------------+----------------------+----------------------+

205 candidates, 1432 csp-links and 1432 links. Density = 6.85%
Starting non trivial part of solution.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 24569  3459   45789  ! 4569   4579   4589   ! 23789  236789 1      !
   ! 4569   13459  45789  ! 14569  4579   2      ! 3789   36789  3679   !
   ! 269    19     789    ! 169    3      189    ! 2789   4      5      !
   +----------------------+----------------------+----------------------+
   ! 8      459    6      ! 123459 459    1459   ! 234579 123579 23479  !
   ! 459    7      1      ! 23459  8      459    ! 23459  23569  23469  !
   ! 3      2      459    ! 1459   6      7      ! 459    159    8      !
   +----------------------+----------------------+----------------------+
   ! 1      6      459    ! 459    2      3      ! 45789  5789   479    !
   ! 459    8      3      ! 7      459    6      ! 1      259    249    !
   ! 7      459    2      ! 8      1      459    ! 6      359    349    !
   +----------------------+----------------------+----------------------+

205 candidates.

hidden-pairs-in-a-column: c4{n2 n3}{r4 r5} ==> r5c4≠9, r5c4≠5, r5c4≠4, r4c4≠9, r4c4≠5, r4c4≠4, r4c4≠1
tridagon in blocks b5(target), b4, b8 and b7 for digits 4, 5 and 9 ==> r6c4≠4,5,9
naked-single ==> r6c4=1
hidden-single-in-a-block ==> r3c6=1
naked-single ==> r3c2=9
naked-single ==> r3c4=6
naked-single ==> r3c1=2
hidden-single-in-a-block ==> r2c2=1
hidden-single-in-a-block ==> r1c2=3
hidden-single-in-a-block ==> r1c6=8
hidden-single-in-a-row ==> r4c8=1
finned-x-wing-in-columns: n4{c2 c6}{r9 r4} ==> r4c5≠4
whip[1]: b5n4{r5c6 .} ==> r9c6≠4
finned-x-wing-in-columns: n5{c2 c6}{r9 r4} ==> r4c5≠5
naked-single ==> r4c5=9
hidden-single-in-a-column ==> r9c6=9
naked-pairs-in-a-row: r4{c2 c6}{n4 n5} ==> r4c9≠4, r4c7≠5, r4c7≠4
biv-chain[3]: c3n9{r7 r6} - r6c8{n9 n5} - r9n5{c8 c2} ==> r7c3≠5
biv-chain[3]: r8c5{n4 n5} - b7n5{r8c1 r9c2} - r9n4{c2 c9} ==> r8c9≠4
biv-chain[3]: c1n9{r5 r8} - b7n5{r8c1 r9c2} - c2n4{r9 r4} ==> r5c1≠4
z-chain[3]: r8c9{n9 n2} - r8c8{n2 n5} - r6c8{n5 .} ==> r7c8≠9
z-chain[3]: c8n7{r2 r7} - c8n8{r7 r2} - r3c7{n8 .} ==> r1c7≠7, r2c9≠7, r2c7≠7
t-whip[3]: c3n9{r7 r6} - r6c8{n9 n5} - b9n5{r7c8 .} ==> r7c7≠9
finned-x-wing-in-rows: n9{r7 r6}{c3 c9} ==> r5c9≠9
t-whip[3]: c8n8{r7 r2} - r3c7{n8 n7} - c8n7{r1 .} ==> r7c8≠5
t-whip[3]: r3c7{n8 n7} - c8n7{r2 r7} - r7n8{c8 .} ==> r2c7≠8
biv-chain[4]: r6c8{n9 n5} - r9n5{c8 c2} - r4c2{n5 n4} - r6n4{c3 c7} ==> r6c7≠9
finned-x-wing-in-rows: n9{r6 r7}{c3 c8} ==> r8c8≠9
whip[1]: b9n9{r8c9 .} ==> r2c9≠9
biv-chain[3]: r9n3{c8 c9} - r2c9{n3 n6} - b6n6{r5c9 r5c8} ==> r5c8≠3
biv-chain[4]: r6c8{n5 n9} - c3n9{r6 r7} - c9n9{r7 r8} - b9n2{r8c9 r8c8} ==> r8c8≠5
naked-single ==> r8c8=2
naked-single ==> r8c9=9
hidden-single-in-a-row ==> r7c3=9
hidden-single-in-a-block ==> r5c1=9
hidden-single-in-a-block ==> r6c8=9
hidden-single-in-a-block ==> r1c7=2
hidden-single-in-a-block ==> r2c7=9
hidden-single-in-a-block ==> r1c4=9
whip[1]: c7n3{r5 .} ==> r4c9≠3, r5c9≠3
finned-x-wing-in-rows: n4{r8 r1}{c5 c1} ==> r2c1≠4
finned-x-wing-in-rows: n5{r8 r1}{c5 c1} ==> r2c1≠5
naked-single ==> r2c1=6
naked-single ==> r2c9=3
naked-single ==> r9c9=4
naked-single ==> r7c9=7
naked-single ==> r4c9=2
naked-single ==> r4c4=3
naked-single ==> r4c7=7
naked-single ==> r3c7=8
naked-single ==> r2c8=7
naked-single ==> r1c8=6
naked-single ==> r5c8=5
naked-single ==> r5c6=4
naked-single ==> r4c6=5
naked-single ==> r4c2=4
naked-single ==> r6c3=5
naked-single ==> r5c7=3
naked-single ==> r6c7=4
naked-single ==> r9c8=3
naked-single ==> r3c3=7
naked-single ==> r1c3=4
naked-single ==> r1c1=5
naked-single ==> r1c5=7
naked-single ==> r8c1=4
naked-single ==> r8c5=5
naked-single ==> r2c5=4
naked-single ==> r2c4=5
naked-single ==> r7c4=4
naked-single ==> r2c3=8
naked-single ==> r7c7=5
naked-single ==> r5c4=2
naked-single ==> r5c9=6
naked-single ==> r7c8=8
naked-single ==> r9c2=5
PUZZLE 0 IS SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = tridagon
   534978261
   618542973
   297631845
   846395712
   971284356
   325167498
   169423587
   483756129
   752819634

nb-facts = <Fact-50776>
Puzzle ........1.....2.......3..45..6.......71.8....32..67..8.6..23....837..1..7.281.6.. :
init-time = 0.2s, solve-time = 14.15s, total-time = 14.35s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r815
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

