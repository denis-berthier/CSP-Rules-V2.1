
+-------+-------+-------+
! 5 7 . ! . . . ! 9 . . !
! . . . ! . . . ! . . 8 !
! . 1 . ! . . . ! . . . !
+-------+-------+-------+
! . . 1 ! 6 8 . ! . 4 . !
! . . . ! . . 2 ! 8 . 9 !
! . . 2 ! . 9 4 ! 1 6 . !
+-------+-------+-------+
! . . . ! . 2 . ! . . . !
! . 6 . ! 9 . 8 ! 2 . 4 !
! . . . ! 4 1 . ! 6 . . !
+-------+-------+-------+

57....9..........8.1.........168..4......28.9..2.9416.....2.....6.9.82.4...41.6.. ED=11.9/1.2/1.2 Loki
SER = 11.9

The is the first ever puzzle not solvable in T&5(2)
Not even solvable in gT&E(2) = T&E(W1, 2), nor in T&E(S2, 2)
Solvable in T&E(W2, 2) and therefore in T&E(3)


(solve "57....9..........8.1.........168..4......28.9..2.9416.....2.....6.9.82.4...41.6.. ED=11.9/1.2/1.2 Loki")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r815
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
57....9..........8.1.........168..4......28.9..2.9416.....2.....6.9.82.4...41.6.. ED=11.9/1.2/1.2 Loki
hidden-single-in-a-row ==> r7c6=6
hidden-single-in-a-row ==> r5c4=1
hidden-single-in-a-row ==> r4c9=2
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 5      7      3468   ! 238    346    13     ! 9      123    136    !
   ! 23469  2349   3469   ! 2357   34567  13579  ! 3457   12357  8      !
   ! 234689 1      34689  ! 23578  34567  3579   ! 3457   2357   3567   !
   +----------------------+----------------------+----------------------+
   ! 379    359    1      ! 6      8      357    ! 357    4      2      !
   ! 3467   345    34567  ! 1      357    2      ! 8      357    9      !
   ! 378    358    2      ! 357    9      4      ! 1      6      357    !
   +----------------------+----------------------+----------------------+
   ! 134789 34589  345789 ! 357    2      6      ! 357    135789 1357   !
   ! 137    6      357    ! 9      357    8      ! 2      1357   4      !
   ! 23789  23589  35789  ! 4      1      357    ! 6      35789  357    !
   +----------------------+----------------------+----------------------+

205 candidates, 1432 csp-links and 1432 links. Density = 6.85%
Starting non trivial part of solution.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 5      7      3468   ! 238    346    13     ! 9      123    136    !
   ! 23469  2349   3469   ! 2357   34567  13579  ! 3457   12357  8      !
   ! 234689 1      34689  ! 23578  34567  3579   ! 3457   2357   3567   !
   +----------------------+----------------------+----------------------+
   ! 379    359    1      ! 6      8      357    ! 357    4      2      !
   ! 3467   345    34567  ! 1      357    2      ! 8      357    9      !
   ! 378    358    2      ! 357    9      4      ! 1      6      357    !
   +----------------------+----------------------+----------------------+
   ! 134789 34589  345789 ! 357    2      6      ! 357    135789 1357   !
   ! 137    6      357    ! 9      357    8      ! 2      1357   4      !
   ! 23789  23589  35789  ! 4      1      357    ! 6      35789  357    !
   +----------------------+----------------------+----------------------+

205 candidates.

hidden-pairs-in-a-column: c8{n8 n9}{r7 r9} ==> r9c8≠7, r9c8≠5, r9c8≠3, r7c8≠7, r7c8≠5, r7c8≠3, r7c8≠1
whip[9]: b9n1{r7c9 r8c8} - b3n1{r2c8 r1c9} - r1c6{n1 n3} - c4n3{r3 r6} - c5n3{r5 r8} - r8c1{n3 n7} - r6n7{c1 c9} - r9n7{c9 c6} - r4n7{c6 .} ==> r7c9≠3
tridagon in blocks b9(target), b8, b6 and b5 for digits 3, 5 and 7 ==> r8c8≠3,5,7
naked-single ==> r8c8=1
hidden-single-in-a-block ==> r1c9=1
naked-single ==> r1c6=3
naked-single ==> r1c8=2
naked-single ==> r1c4=8
hidden-single-in-a-block ==> r2c6=1
hidden-single-in-a-block ==> r3c6=9
hidden-single-in-a-block ==> r3c9=6
hidden-single-in-a-row ==> r7c1=1
finned-x-wing-in-columns: n3{c4 c9}{r6 r7} ==> r7c7≠3
hidden-single-in-a-block ==> r9c9=3
whip[1]: b9n5{r7c9 .} ==> r7c2≠5, r7c3≠5, r7c4≠5
whip[1]: b9n7{r7c9 .} ==> r7c3≠7, r7c4≠7
naked-single ==> r7c4=3
hidden-single-in-a-block ==> r5c5=3
hidden-single-in-a-block ==> r4c7=3
naked-pairs-in-a-row: r6{c4 c9}{n5 n7} ==> r6c2≠5, r6c1≠7
finned-x-wing-in-rows: n7{r4 r9}{c6 c1} ==> r8c1≠7
naked-single ==> r8c1=3
naked-single ==> r6c1=8
naked-single ==> r6c2=3
hidden-single-in-a-block ==> r3c3=8
hidden-single-in-a-block ==> r2c3=3
hidden-single-in-a-block ==> r3c8=3
whip[1]: c3n9{r9 .} ==> r7c2≠9, r9c1≠9, r9c2≠9
biv-chain[2]: r6n7{c4 c9} - c8n7{r5 r2} ==> r2c4≠7
biv-chain[2]: r6n5{c4 c9} - c8n5{r5 r2} ==> r2c4≠5
naked-single ==> r2c4=2
hidden-single-in-a-block ==> r3c1=2
naked-single ==> r9c1=7
naked-single ==> r4c1=9
naked-single ==> r4c2=5
naked-single ==> r4c6=7
naked-single ==> r6c4=5
naked-single ==> r3c4=7
naked-single ==> r6c9=7
naked-single ==> r5c8=5
naked-single ==> r2c8=7
naked-single ==> r7c9=5
naked-single ==> r7c7=7
naked-single ==> r5c2=4
naked-single ==> r2c2=9
naked-single ==> r5c1=6
naked-single ==> r2c1=4
naked-single ==> r1c3=6
naked-single ==> r1c5=4
naked-single ==> r3c5=5
naked-single ==> r2c5=6
naked-single ==> r3c7=4
naked-single ==> r8c5=7
naked-single ==> r2c7=5
naked-single ==> r5c3=7
naked-single ==> r7c2=8
naked-single ==> r7c8=9
naked-single ==> r7c3=4
naked-single ==> r9c8=8
naked-single ==> r9c2=2
naked-single ==> r8c3=5
naked-single ==> r9c3=9
naked-single ==> r9c6=5
PUZZLE 0 IS SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = tridagon
   576843921
   493261578
   218759436
   951687342
   647132859
   832594167
   184326795
   365978214
   729415683

nb-facts = <Fact-29943>
Puzzle 57....9..........8.1.........168..4......28.9..2.9416.....2.....6.9.82.4...41.6.. ED=11.9/1.2/1.2 Loki :
init-time = 2.55s, solve-time = 8.25s, total-time = 10.8s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r815
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
