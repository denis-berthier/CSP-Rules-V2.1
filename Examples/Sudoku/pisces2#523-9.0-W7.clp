
6.......1
.2.....4.
..7...8..
..41.59..
381697425
..93.26..
..6...7..
.9.....8.
1.......3

+-------+-------+-------+
! 6 . . ! . . . ! . . 1 !
! . 2 . ! . . . ! . 4 . !
! . . 7 ! . . . ! 8 . . !
+-------+-------+-------+
! . . 4 ! 1 . 5 ! 9 . . !
! 3 8 1 ! 6 9 7 ! 4 2 5 !
! . . 9 ! 3 . 2 ! 6 . . !
+-------+-------+-------+
! . . 6 ! . . . ! 7 . . !
! . 9 . ! . . . ! . 8 . !
! 1 . . ! . . . ! . . 3 !
+-------+-------+-------+

6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv
29 givens, non-minimal, SER = 9.0



----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------

Load with settings:
 (bind ?*Subsets* TRUE)
 (bind ?*FinnedFish* TRUE)
 (bind ?*Bivalue-Chains* TRUE)
 (bind ?*Whips* TRUE)
 (bind ?*z-Chains* TRUE)
 (bind ?*t-Whips* TRUE)


standard simplest-first solution:

(solve "6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r810
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv
naked-single ==> r4c5 = 8
naked-single ==> r4c9 = 7
naked-single ==> r4c1 = 2
naked-single ==> r4c2 = 6
naked-single ==> r4c8 = 3
naked-single ==> r6c8 = 1
naked-single ==> r6c9 = 8
naked-single ==> r6c5 = 4
hidden-single-in-a-column ==> r8c7 = 1
hidden-single-in-a-column ==> r3c2 = 1
hidden-single-in-a-column ==> r1c8 = 7
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 6      345    358    ! 24589  235    3489   ! 235    7      1      !
   ! 589    2      358    ! 5789   13567  13689  ! 35     4      69     !
   ! 459    1      7      ! 2459   2356   3469   ! 8      569    269    !
   +----------------------+----------------------+----------------------+
   ! 2      6      4      ! 1      8      5      ! 9      3      7      !
   ! 3      8      1      ! 6      9      7      ! 4      2      5      !
   ! 57     57     9      ! 3      4      2      ! 6      1      8      !
   +----------------------+----------------------+----------------------+
   ! 458    345    6      ! 24589  1235   13489  ! 7      59     249    !
   ! 457    9      235    ! 2457   23567  346    ! 1      8      246    !
   ! 1      457    258    ! 245789 2567   4689   ! 25     569    3      !
   +----------------------+----------------------+----------------------+

141 candidates, 803 csp-links and 803 links. Density = 8.14%
Starting non trivial part of solution.
whip[1]: r3n3{c6 .} ==> r2c6 ≠ 3, r1c5 ≠ 3, r1c6 ≠ 3, r2c5 ≠ 3
whip[1]: r1n9{c6 .} ==> r3c6 ≠ 9, r2c4 ≠ 9, r2c6 ≠ 9, r3c4 ≠ 9

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 6      345    358    ! 24589  25     489    ! 235    7      1      !
   ! 589    2      358    ! 578    1567   168    ! 35     4      69     !
   ! 459    1      7      ! 245    2356   346    ! 8      569    269    !
   +----------------------+----------------------+----------------------+
   ! 2      6      4      ! 1      8      5      ! 9      3      7      !
   ! 3      8      1      ! 6      9      7      ! 4      2      5      !
   ! 57     57     9      ! 3      4      2      ! 6      1      8      !
   +----------------------+----------------------+----------------------+
   ! 458    345    6      ! 24589  1235   13489  ! 7      59     249    !
   ! 457    9      235    ! 2457   23567  346    ! 1      8      246    !
   ! 1      457    258    ! 245789 2567   4689   ! 25     569    3      !
   +----------------------+----------------------+----------------------+

133 candidates.

whip[6]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 .} ==> r9c2 ≠ 5
t-whip[7]: b7n3{r7c2 r8c3} - c3n2{r8 r9} - r9c7{n2 n5} - c8n5{r9 r3} - c8n6{r3 r9} - r9c5{n6 n7} - r9c2{n7 .} ==> r7c2 ≠ 4
whip[7]: c1n9{r3 r2} - c1n8{r2 r7} - c1n4{r7 r8} - c9n4{r8 r7} - c9n9{r7 r3} - r2c9{n9 n6} - r3c8{n6 .} ==> r3c1 ≠ 5
z-chain[4]: r3n5{c5 c8} - c7n5{r1 r9} - c7n2{r9 r1} - r1c5{n2 .} ==> r2c5 ≠ 5
z-chain[4]: r3n5{c5 c8} - c7n5{r1 r9} - c7n2{r9 r1} - r1c5{n2 .} ==> r2c4 ≠ 5
z-chain[4]: r3n5{c5 c8} - r2c7{n5 n3} - r1c7{n3 n2} - r1c5{n2 .} ==> r1c4 ≠ 5
t-whip[4]: r1c5{n2 n5} - r3n5{c5 c8} - r2c7{n5 n3} - r1c7{n3 .} ==> r1c4 ≠ 2
t-whip[4]: r7c8{n9 n5} - r9c7{n5 n2} - r1n2{c7 c5} - r7n2{c5 .} ==> r7c4 ≠ 9
t-whip[7]: c5n7{r9 r2} - r2n1{c5 c6} - r2n6{c6 c9} - r2n9{c9 c1} - r3c1{n9 n4} - b7n4{r7c1 r9c2} - r9n7{c2 .} ==> r8c4 ≠ 7
whip[5]: r9c7{n5 n2} - r1n2{c7 c5} - r7n2{c5 c4} - r8c4{n2 n4} - r3c4{n4 .} ==> r9c4 ≠ 5
whip[5]: r7c2{n5 n3} - r8c3{n3 n2} - r8c4{n2 n4} - r9n4{c4 c2} - b7n7{r9c2 .} ==> r8c1 ≠ 5
naked-pairs-in-a-block: b7{r8c1 r9c2}{n4 n7} ==> r7c1 ≠ 4
z-chain[3]: r8n5{c5 c3} - c3n2{r8 r9} - r9c7{n2 .} ==> r9c5 ≠ 5
z-chain[4]: r8n5{c5 c3} - c3n2{r8 r9} - c7n2{r9 r1} - r1c5{n2 .} ==> r7c5 ≠ 5
whip[5]: r7n2{c5 c9} - c9n4{r7 r8} - c1n4{r8 r3} - r3c4{n4 n5} - r8c4{n5 .} ==> r9c4 ≠ 2
whip[6]: r1n9{c4 c6} - b8n9{r9c6 r9c4} - c4n7{r9 r2} - c4n8{r2 r7} - b2n8{r1c4 r2c6} - c1n8{r2 .} ==> r1c4 ≠ 4
finned-x-wing-in-columns: n4{c1 c4}{r3 r8} ==> r8c6 ≠ 4
finned-x-wing-in-rows: n4{r1 r9}{c2 c6} ==> r7c6 ≠ 4
z-chain[4]: r8c6{n3 n6} - r3c6{n6 n4} - b1n4{r3c1 r1c2} - c2n3{r1 .} ==> r7c6 ≠ 3
z-chain[5]: r7n4{c9 c4} - r7n2{c4 c5} - r1n2{c5 c7} - r3c9{n2 n6} - r2c9{n6 .} ==> r7c9 ≠ 9
whip[1]: b9n9{r9c8 .} ==> r3c8 ≠ 9
biv-chain[4]: r1c5{n5 n2} - b3n2{r1c7 r3c9} - r3n9{c9 c1} - b1n4{r3c1 r1c2} ==> r1c2 ≠ 5
biv-chain[4]: r8n7{c5 c1} - c2n7{r9 r6} - c2n5{r6 r7} - r7n3{c2 c5} ==> r8c5 ≠ 3
biv-chain[4]: c5n3{r3 r7} - r8c6{n3 n6} - b9n6{r8c9 r9c8} - r3c8{n6 n5} ==> r3c5 ≠ 5
whip[4]: c5n3{r3 r7} - r8c6{n3 n6} - b2n6{r2c6 r2c5} - c5n1{r2 .} ==> r3c5 ≠ 2
hidden-pairs-in-a-block: b2{n2 n5}{r1c5 r3c4} ==> r3c4 ≠ 4
whip[1]: c4n4{r9 .} ==> r9c6 ≠ 4
finned-x-wing-in-rows: n2{r3 r7}{c9 c4} ==> r8c4 ≠ 2
biv-chain[3]: r1n4{c6 c2} - r9n4{c2 c4} - c4n9{r9 r1} ==> r1c6 ≠ 9
hidden-single-in-a-block ==> r1c4 = 9
finned-x-wing-in-columns: n8{c1 c4}{r2 r7} ==> r7c6 ≠ 8
biv-chain[4]: c2n5{r7 r6} - c2n7{r6 r9} - r9n4{c2 c4} - r8c4{n4 n5} ==> r8c3 ≠ 5, r7c4 ≠ 5
biv-chain[4]: c4n5{r8 r3} - r3n2{c4 c9} - r3n9{c9 c1} - c1n4{r3 r8} ==> r8c4 ≠ 4
naked-single ==> r8c4 = 5
naked-single ==> r3c4 = 2
naked-single ==> r1c5 = 5
hidden-single-in-a-row ==> r1c7 = 2
naked-single ==> r9c7 = 5
naked-single ==> r2c7 = 3
naked-single ==> r7c8 = 9
naked-single ==> r7c6 = 1
naked-single ==> r9c8 = 6
naked-single ==> r3c8 = 5
hidden-single-in-a-block ==> r2c5 = 1
hidden-single-in-a-block ==> r2c4 = 7
hidden-single-in-a-block ==> r9c6 = 9
hidden-single-in-a-column ==> r2c3 = 5
biv-chain[3]: r7c5{n2 n3} - r8n3{c6 c3} - b7n2{r8c3 r9c3} ==> r9c5 ≠ 2
naked-single ==> r9c5 = 7
naked-single ==> r9c2 = 4
naked-single ==> r1c2 = 3
naked-single ==> r1c3 = 8
naked-single ==> r1c6 = 4
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 6
naked-single ==> r2c6 = 8
naked-single ==> r3c9 = 9
naked-single ==> r3c1 = 4
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 3
naked-single ==> r8c6 = 6
naked-single ==> r3c6 = 3
naked-single ==> r3c5 = 6
naked-single ==> r8c5 = 2
naked-single ==> r7c5 = 3
naked-single ==> r8c9 = 4
naked-single ==> r7c9 = 2
naked-single ==> r7c2 = 5
naked-single ==> r6c2 = 7
naked-single ==> r6c1 = 5
naked-single ==> r7c1 = 8
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 7
naked-single ==> r9c4 = 8
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[7]
   638954271
   925718346
   417263859
   264185937
   381697425
   579342618
   856431792
   793526184
   142879563

nb-facts = <Fact-76245>
Puzzle 6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv :
init-time = 0.2s, solve-time = 18.09s, total-time = 18.29s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r810
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************



This solution has 31 non-W1 steps in W7





---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------

In the rest of this example, we try to find fewer-steps in W8: the best try is #5, with 7 steps

Load with settings:
(defglobal ?*all-chains-max-length* = 8)
 (bind ?*Bivalue-Chains* TRUE)
 (bind ?*Whips* TRUE)
 (bind ?*z-Chains* TRUE)
 (bind ?*Typed-Bivalue-Chains* TRUE)
 (bind ?*Typed-z-Chains* TRUE)
 (bind ?*Typed-Whips* TRUE)


---------------------------------------------------------------------------------------------------


1st try : 15 steps
(solve-sudoku-with-fewer-steps-wrt-W1
"6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")
6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv
naked-single ==> r4c5 = 8
naked-single ==> r4c9 = 7
naked-single ==> r4c1 = 2
naked-single ==> r4c2 = 6
naked-single ==> r4c8 = 3
naked-single ==> r6c8 = 1
naked-single ==> r6c9 = 8
naked-single ==> r6c5 = 4
hidden-single-in-a-column ==> r8c7 = 1
hidden-single-in-a-column ==> r3c2 = 1
hidden-single-in-a-column ==> r1c8 = 7
Resolution state after Singles:
   +----------------------+----------------------+----------------------+
   ! 6      345    358    ! 24589  235    3489   ! 235    7      1      !
   ! 589    2      358    ! 5789   13567  13689  ! 35     4      69     !
   ! 459    1      7      ! 2459   2356   3469   ! 8      569    269    !
   +----------------------+----------------------+----------------------+
   ! 2      6      4      ! 1      8      5      ! 9      3      7      !
   ! 3      8      1      ! 6      9      7      ! 4      2      5      !
   ! 57     57     9      ! 3      4      2      ! 6      1      8      !
   +----------------------+----------------------+----------------------+
   ! 458    345    6      ! 24589  1235   13489  ! 7      59     249    !
   ! 457    9      235    ! 2457   23567  346    ! 1      8      246    !
   ! 1      457    258    ! 245789 2567   4689   ! 25     569    3      !
   +----------------------+----------------------+----------------------+

141 candidates, 803 csp-links and 803 links. Density = 8.14%
Starting non trivial part of solution.
whip[1]: r3n3{c6 .} ==> r2c6 ≠ 3, r1c5 ≠ 3, r1c6 ≠ 3, r2c5 ≠ 3
whip[1]: r1n9{c6 .} ==> r3c6 ≠ 9, r2c4 ≠ 9, r2c6 ≠ 9, r3c4 ≠ 9
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +----------------------+----------------------+----------------------+
   ! 6      345    358    ! 24589  25     489    ! 235    7      1      !
   ! 589    2      358    ! 578    1567   168    ! 35     4      69     !
   ! 459    1      7      ! 245    2356   346    ! 8      569    269    !
   +----------------------+----------------------+----------------------+
   ! 2      6      4      ! 1      8      5      ! 9      3      7      !
   ! 3      8      1      ! 6      9      7      ! 4      2      5      !
   ! 57     57     9      ! 3      4      2      ! 6      1      8      !
   +----------------------+----------------------+----------------------+
   ! 458    345    6      ! 24589  1235   13489  ! 7      59     249    !
   ! 457    9      235    ! 2457   23567  346    ! 1      8      246    !
   ! 1      457    258    ! 245789 2567   4689   ! 25     569    3      !
   +----------------------+----------------------+----------------------+

===> STEP #1
There remains 133 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 133 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.....................................................................................................................................
erasable candidates computation time = 51.15s
===> 11 candidates can be eliminated:
n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r3c5 and applying rules in W1, considered as "zero-step"
whip[8]: b3n2{r3c9 r1c7} - r9c7{n2 n5} - c8n5{r9 r3} - r3c4{n5 n4} - r1n4{c6 c2} - r9c2{n4 n7} - r9c5{n7 n6} - c8n6{r9 .} ==> r3c5 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.11s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 52.13s


===> STEP #2
There remains 132 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 132 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................
erasable candidates computation time = 47.31s
===> 10 candidates can be eliminated:
n5r3c1 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 10 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c2 and applying rules in W1, considered as "zero-step"
whip[6]: r9c7{n5 n2} - r9c3{n2 n8} - r7c1{n8 n4} - r7c9{n4 n9} - r2n9{c9 c1} - c1n8{r2 .} ==> r9c2 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       245789    2567      4689      25        569       3

solve-time = 0.07s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       245789    2567      4689      25        569       3

best-step-computation-time = 48.22s


===> STEP #3
There remains 131 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 131 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................
erasable candidates computation time = 46.57s
===> 10 candidates can be eliminated:
n5r2c5 n5r3c1 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 10 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r3c1 and applying rules in W1, considered as "zero-step"
whip[7]: c1n9{r3 r2} - r2c9{n9 n6} - r3c8{n6 n9} - r3c9{n9 n2} - r8c9{n2 n4} - r8c1{n4 n7} - r6c1{n7 .} ==> r3c1 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       245789    2567      4689      25        569       3

solve-time = 0.14s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       245789    2567      4689      25        569       3

best-step-computation-time = 47.62s


===> STEP #4
There remains 130 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 130 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..................................................................................................................................
erasable candidates computation time = 45.82s
===> 14 candidates can be eliminated:
n2r1c4 n5r1c4 n5r2c4 n5r2c5 n4r7c2 n9r7c4 n2r7c5 n5r7c5 n5r8c3 n2r8c4 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 14 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r9c4 and applying rules in W1, considered as "zero-step"
biv-chain[2]: r3n2{c4 c9} - c7n2{r1 r9} ==> r9c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

solve-time = 0.05s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

best-step-computation-time = 47.08s


===> STEP #5
There remains 129 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 129 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................................
erasable candidates computation time = 42.19s
===> 13 candidates can be eliminated:
n2r1c4 n5r1c4 n5r2c4 n5r2c5 n4r7c2 n9r7c4 n2r7c5 n5r7c5 n5r8c3 n2r8c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 13 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r7c5 and applying rules in W1, considered as "zero-step"
whip[8]: r1c5{n2 n5} - r3n5{c5 c8} - c8n6{r3 r9} - r9c5{n6 n7} - r9c2{n7 n4} - r1c2{n4 n3} - r7n3{c2 c6} - r7n1{c6 .} ==> r7c5 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

best-step-computation-time = 43.29s


===> STEP #6
There remains 128 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 128 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
................................................................................................................................
erasable candidates computation time = 43.68s
===> 15 candidates can be eliminated:
n2r1c4 n5r1c4 n5r2c4 n5r2c5 n4r7c2 n9r7c4 n5r7c5 n5r8c3 n2r8c4 n4r8c4 n4r8c6 n2r8c9 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 15 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r8c3 and applying rules in W1, considered as "zero-step"
whip[7]: c3n2{r8 r9} - c7n2{r9 r1} - r3n2{c9 c4} - r7n2{c4 c9} - c9n4{r7 r8} - r8c4{n4 n7} - r8c1{n7 .} ==> r8c3 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        2457      23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

solve-time = 0.13s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        2457      23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

best-step-computation-time = 44.91s


===> STEP #7
There remains 127 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 127 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...............................................................................................................................
erasable candidates computation time = 47.42s
===> 14 candidates can be eliminated:
n2r1c4 n5r1c4 n5r2c4 n5r2c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n4r8c4 n4r8c6 n2r8c9 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 14 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r8c4 and applying rules in W1, considered as "zero-step"
biv-chain-rn[2]: r3n2{c4 c9} - r7n2{c9 c4} ==> r8c4 ≠ 2, r1c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

solve-time = 0.05s
nb-facts = 0

   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     346       1         8         246
   1         47        258       45789     2567      4689      25        569       3

best-step-computation-time = 48.43s


===> STEP #8
There remains 125 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 125 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................
erasable candidates computation time = 44.5s
===> 12 candidates can be eliminated:
n5r1c4 n5r2c4 n5r2c5 n4r7c2 n9r7c4 n5r7c5 n4r8c4 n4r8c6 n2r8c9 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 12 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c4 and applying rules in W1, considered as "zero-step"
whip[6]: r9c7{n5 n2} - r7n2{c9 c4} - c4n9{r7 r1} - c4n8{r1 r2} - r1c6{n8 n4} - r3c4{n4 .} ==> r9c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     346       1         8         246
   1         47        258       4789      2567      4689      25        569       3

solve-time = 0.16s
nb-facts = 0

   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     346       1         8         246
   1         47        258       4789      2567      4689      25        569       3

best-step-computation-time = 45.44s


===> STEP #9
There remains 124 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 124 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
............................................................................................................................
erasable candidates computation time = 43.86s
===> 11 candidates can be eliminated:
n5r1c4 n5r2c4 n5r2c5 n4r7c2 n9r7c4 n5r7c5 n4r8c4 n4r8c6 n2r8c9 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r1c4 and applying rules in W1, considered as "zero-step"
z-chain[4]: r3n5{c4 c8} - c7n5{r2 r9} - c7n2{r9 r1} - r1c5{n2 .} ==> r1c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     346       1         8         246
   1         47        258       4789      2567      4689      25        569       3

solve-time = 0.06s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     346       1         8         246
   1         47        258       4789      2567      4689      25        569       3

best-step-computation-time = 44.72s


===> STEP #10
There remains 123 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 123 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................................................
erasable candidates computation time = 45.19s
===> 10 candidates can be eliminated:
n5r2c4 n5r2c5 n4r7c2 n9r7c4 n5r7c5 n4r8c4 n4r8c6 n2r8c9 n7r9c4 n5r9c5
===> Among these, there are 10 candidates with the best score (1).
===> Eliminating randomly chosen candidate n4r8c6 and applying rules in W1, considered as "zero-step"
whip[6]: c9n4{r8 r7} - c1n4{r7 r3} - c1n9{r3 r2} - c9n9{r2 r3} - r3n2{c9 c4} - r7n2{c4 .} ==> r8c6 ≠ 4
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     36        1         8         246
   1         47        258       4789      2567      4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     135       13489     7         59        249
   457       9         23        457       23567     36        1         8         246
   1         47        258       4789      2567      4689      25        569       3

best-step-computation-time = 46.03s


===> STEP #11
There remains 122 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 122 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................
erasable candidates computation time = 44.68s
===> 11 candidates can be eliminated:
n5r2c4 n5r2c5 n5r3c5 n4r7c2 n9r7c4 n5r7c5 n3r7c6 n4r8c4 n2r8c9 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r7c5 and applying rules in W1, considered as "zero-step"
whip[6]: c5n1{r7 r2} - r2n7{c5 c4} - r8c4{n7 n4} - r9n4{c6 c2} - b7n7{r9c2 r8c1} - r8n5{c1 .} ==> r7c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        457       23567     36        1         8         246
   1         47        258       4789      2567      4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        457       23567     36        1         8         246
   1         47        258       4789      2567      4689      25        569       3

best-step-computation-time = 45.49s


===> STEP #12
There remains 121 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 121 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.........................................................................................................................
erasable candidates computation time = 45.35s
===> 12 candidates can be eliminated:
n5r2c4 n5r2c5 n6r2c6 n5r3c5 n4r7c2 n9r7c4 n3r7c6 n4r8c4 n2r8c9 n7r9c4 n5r9c5 n6r9c5
===> Among these, there are 12 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r8c9 and applying rules in W1, considered as "zero-step"
biv-chain-rn[2]: r3n2{c9 c4} - r7n2{c4 c9} ==> r8c9 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        457       23567     36        1         8         46
   1         47        258       4789      2567      4689      25        569       3

solve-time = 0.13s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        457       23567     36        1         8         46
   1         47        258       4789      2567      4689      25        569       3

best-step-computation-time = 46.28s


===> STEP #13
There remains 120 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 120 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................................................
erasable candidates computation time = 1m 1.93s
===> 11 candidates can be eliminated:
n5r2c4 n5r2c5 n6r2c6 n5r3c5 n4r7c2 n9r7c4 n3r7c6 n4r8c4 n7r9c4 n5r9c5 n6r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c5 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        457       23567     36        1         8         46
   1         47        258       4789      267       4689      25        569       3

solve-time = 0.29s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        457       23567     36        1         8         46
   1         47        258       4789      267       4689      25        569       3

best-step-computation-time = 1m 2.94s


===> STEP #14
There remains 119 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 119 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.......................................................................................................................
erasable candidates computation time = 1m 7.39s
===> 16 candidates can be eliminated:
n5r2c4 n8r2c4 n5r2c5 n7r2c5 n6r2c6 n5r3c5 n4r7c1 n4r7c2 n9r7c4 n3r7c6 n9r7c9 n4r8c4 n7r8c5 n7r9c4 n6r9c5 n6r9c6
===> Among these, there is only one candidate with the best score (6).
===> Eliminating candidate n7r2c5 and applying rules in W1, considered as "zero-step"
whip[8]: r2n1{c5 c6} - r2n6{c6 c9} - c8n6{r3 r9} - r9c5{n6 n2} - r9c7{n2 n5} - r9c3{n5 n8} - c1n8{r7 r2} - r2n9{c1 .} ==> r2c5 ≠ 7
hidden-single-in-a-block ==> r2c4 = 7
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        45        23567     36        1         8         46
   1         47        258       489       267       4689      25        569       3

solve-time = 0.21s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     13        13489     7         59        249
   457       9         23        45        23567     36        1         8         46
   1         47        258       489       267       4689      25        569       3

best-step-computation-time = 1m 8.47s


===> STEP #15
There remains 113 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 113 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................
erasable candidates computation time = 1m 3.26s
===> 33 candidates can be eliminated:
n5r1c2 n4r1c4 n5r2c1 n5r2c5 n6r2c6 n4r3c4 n5r3c4 n5r3c5 n4r3c6 n6r3c6 n6r3c8 n9r3c8 n6r3c9 n4r7c1 n4r7c2 n5r7c4 n8r7c4 n9r7c4 n3r7c6 n4r7c6 n9r7c9 n5r8c1 n4r8c4 n3r8c5 n5r8c5 n6r8c5 n7r8c5 n4r9c4 n2r9c5 n6r9c5 n4r9c6 n6r9c6 n8r9c6
===> Among these, there are 2 candidates with the best score (113).
===> Eliminating randomly chosen candidate n6r3c8 and applying rules in W1, considered as "zero-step"
whip[8]: b9n6{r9c8 r8c9} - r8c6{n6 n3} - c5n3{r8 r3} - r3c6{n3 n4} - r1n4{c6 c2} - r9n4{c2 c4} - r8c4{n4 n5} - r3n5{c4 .} ==> r3c8 ≠ 6
hidden-single-in-a-column ==> r9c8 = 6
naked-single ==> r8c9 = 4
naked-single ==> r8c4 = 5
naked-single ==> r8c1 = 7
naked-single ==> r6c1 = 5
naked-single ==> r6c2 = 7
naked-single ==> r9c2 = 4
naked-single ==> r7c1 = 8
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 6
naked-single ==> r3c1 = 4
naked-single ==> r3c4 = 2
naked-single ==> r1c5 = 5
naked-single ==> r1c2 = 3
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c7 = 3
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 3
naked-single ==> r8c6 = 6
naked-single ==> r3c6 = 3
naked-single ==> r3c5 = 6
naked-single ==> r8c5 = 2
naked-single ==> r9c5 = 7
naked-single ==> r9c7 = 5
naked-single ==> r7c8 = 9
naked-single ==> r3c8 = 5
naked-single ==> r7c4 = 4
naked-single ==> r1c4 = 9
naked-single ==> r1c6 = 4
naked-single ==> r9c4 = 8
naked-single ==> r9c6 = 9
naked-single ==> r7c6 = 1
naked-single ==> r2c6 = 8
naked-single ==> r7c5 = 3
naked-single ==> r7c9 = 2
naked-single ==> r1c7 = 2
naked-single ==> r7c2 = 5
naked-single ==> r2c5 = 1
naked-single ==> r3c9 = 9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[8]
   638954271
   925718346
   417263859
   264185937
   381697425
   579342618
   856431792
   793526184
   142879563

nb-facts = <Fact-103100>
solve-time = 0.38s
nb-facts = <Fact-103100>

   6         3         8         9         5         4         2         7         1
   9         2         5         7         1         8         3         4         6
   4         1         7         2         6         3         8         5         9
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   5         7         9         3         4         2         6         1         8
   8         5         6         4         3         1         7         9         2
   7         9         3         5         2         6         1         8         4
   1         4         2         8         7         9         5         6         3

best-step-computation-time = 1m 5.02s


Total computation time = 12m 36.41s
sequence of 15 eliminations = n2r3c5 n5r9c2 n5r3c1 n2r9c4 n2r7c5 n5r8c3 n2r8c4 n5r9c4 n5r1c4 n4r8c6 n5r7c5 n2r8c9 n5r9c5 n7r2c5 n6r3c8




---------------------------------------------------------------------------------------------------

fewer-steps in W8:

2nd try : 13 steps
(solve-sudoku-with-fewer-steps-wrt-W1
"6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")

Starting from resolution state after Singles and whips[1]

===> STEP #1
There remains 133 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 133 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.....................................................................................................................................
erasable candidates computation time = 53.06s
===> 11 candidates can be eliminated:
n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n9r7c4 and applying rules in W1, considered as "zero-step"
whip[8]: r7c8{n9 n5} - r9c7{n5 n2} - c9n2{r8 r3} - r7n2{c9 c5} - r1c5{n2 n5} - r3n5{c5 c1} - r3n9{c1 c8} - r9n9{c8 .} ==> r7c4 ≠ 9
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.48s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 54.65s


===> STEP #2
There remains 132 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 132 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................
erasable candidates computation time = 51.95s
===> 14 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r3c1 n2r3c5 n4r7c2 n5r7c5 n4r7c6 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 14 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r3c1 and applying rules in W1, considered as "zero-step"
whip[7]: c1n9{r3 r2} - r2c9{n9 n6} - r3c8{n6 n9} - r3c9{n9 n2} - r8c9{n2 n4} - r8c1{n4 n7} - r6c1{n7 .} ==> r3c1 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 53.35s


===> STEP #3
There remains 131 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 131 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................
erasable candidates computation time = 45.42s
===> 16 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r2c4 n5r2c5 n2r3c5 n4r7c2 n5r7c5 n4r7c6 n5r8c3 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 16 candidates with the best score (1).
===> Eliminating randomly chosen candidate n4r7c6 and applying rules in W1, considered as "zero-step"
whip[8]: r9n4{c4 c2} - r1n4{c2 c4} - r1n9{c4 c6} - b8n9{r9c6 r9c4} - r9n7{c4 c5} - c4n7{r8 r2} - b2n8{r2c4 r2c6} - c6n1{r2 .} ==> r7c6 ≠ 4
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.22s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 46.85s


===> STEP #4
There remains 130 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 130 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..................................................................................................................................
erasable candidates computation time = 42.09s
===> 15 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r2c4 n5r2c5 n2r3c5 n4r7c2 n5r7c5 n5r8c3 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 15 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r1c4 and applying rules in W1, considered as "zero-step"
whip[4]: r1c5{n2 n5} - r3n5{c5 c8} - r2c7{n5 n3} - r1c7{n3 .} ==> r1c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.06s
nb-facts = 0

   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 43.25s


===> STEP #5
There remains 129 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 129 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................................
erasable candidates computation time = 42.9s
===> 14 candidates can be eliminated:
n4r1c4 n5r1c4 n5r2c4 n5r2c5 n2r3c5 n4r7c2 n5r7c5 n5r8c3 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 14 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r3c5 and applying rules in W1, considered as "zero-step"
whip[8]: b3n2{r3c9 r1c7} - r9c7{n2 n5} - c8n5{r9 r3} - r3c4{n5 n4} - r1n4{c6 c2} - r9c2{n4 n7} - r9c5{n7 n6} - c8n6{r9 .} ==> r3c5 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.17s
nb-facts = 0

   6         345       358       4589      25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 44.09s


===> STEP #6
There remains 128 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 128 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
................................................................................................................................
erasable candidates computation time = 42.45s
===> 13 candidates can be eliminated:
n4r1c4 n5r1c4 n5r2c4 n5r2c5 n4r7c2 n5r7c5 n5r8c3 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 13 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r1c4 and applying rules in W1, considered as "zero-step"
z-chain[4]: r3n5{c4 c8} - c7n5{r2 r9} - c7n2{r9 r1} - r1c5{n2 .} ==> r1c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.05s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 43.45s


===> STEP #7
There remains 127 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 127 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...............................................................................................................................
erasable candidates computation time = 39.03s
===> 12 candidates can be eliminated:
n4r1c4 n5r2c4 n5r2c5 n4r7c2 n5r7c5 n5r8c3 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 12 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c4 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       24789     2567      4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       24789     2567      4689      25        569       3

best-step-computation-time = 39.97s


===> STEP #8
There remains 126 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 126 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..............................................................................................................................
erasable candidates computation time = 35.64s
===> 11 candidates can be eliminated:
n4r1c4 n5r2c4 n5r2c5 n4r7c2 n5r7c5 n5r8c3 n2r8c4 n5r9c2 n2r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c2 and applying rules in W1, considered as "zero-step"
whip[6]: r9c7{n5 n2} - r9c3{n2 n8} - r7c1{n8 n4} - r3c1{n4 n9} - r2n9{c1 c9} - r7c9{n9 .} ==> r9c2 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       24789     2567      4689      25        569       3

solve-time = 0.08s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       24789     2567      4689      25        569       3

best-step-computation-time = 36.44s


===> STEP #9
There remains 125 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 125 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................
erasable candidates computation time = 34.95s
===> 11 candidates can be eliminated:
n4r1c4 n5r2c4 n5r2c5 n4r7c2 n2r7c5 n5r7c5 n5r8c3 n2r8c4 n2r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c5 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       24789     267       4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         47        258       24789     267       4689      25        569       3

best-step-computation-time = 35.78s


===> STEP #10
There remains 124 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 124 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
............................................................................................................................
erasable candidates computation time = 34.63s
===> 13 candidates can be eliminated:
n4r1c4 n5r2c4 n8r2c4 n5r2c5 n7r2c5 n4r7c2 n2r7c5 n5r7c5 n5r8c3 n2r8c4 n2r9c4 n7r9c4 n6r9c6
===> Among these, there is only one candidate with the best score (6).
===> Eliminating candidate n7r2c5 and applying rules in W1, considered as "zero-step"
whip[8]: r2n1{c5 c6} - r2n6{c6 c9} - c8n6{r3 r9} - r9c5{n6 n2} - r9c7{n2 n5} - r9c3{n5 n8} - c1n8{r7 r2} - r2n9{c1 .} ==> r2c5 ≠ 7
hidden-single-in-a-block ==> r2c4 = 7
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       245       23567     346       1         8         246
   1         47        258       2489      267       4689      25        569       3

solve-time = 0.1s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   49        1         7         245       356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      1389      7         59        249
   457       9         235       245       23567     346       1         8         246
   1         47        258       2489      267       4689      25        569       3

best-step-computation-time = 35.52s


===> STEP #11
There remains 118 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 118 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
......................................................................................................................
erasable candidates computation time = 31.7s
===> 20 candidates can be eliminated:
n4r1c4 n5r2c5 n5r3c4 n5r3c5 n9r3c8 n6r3c9 n4r7c1 n4r7c2 n2r7c5 n5r7c5 n3r7c6 n9r7c9 n5r8c3 n2r8c4 n5r8c5 n4r8c6 n2r9c4 n2r9c5 n6r9c6 n8r9c6
===> Among these, there is only one candidate with the best score (3).
===> Eliminating candidate n5r3c4 and applying rules in W1, considered as "zero-step"
whip[8]: r3n2{c4 c9} - r1n2{c7 c5} - r7n2{c5 c4} - r8c4{n2 n4} - c9n4{r8 r7} - c1n4{r7 r3} - r3n9{c1 c8} - b9n9{r7c8 .} ==> r3c4 ≠ 5
whip[1]: c4n5{r8 .} ==> r7c5 ≠ 5, r8c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       489       25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   49        1         7         24        356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       1389      7         59        249
   457       9         235       245       2367      346       1         8         246
   1         47        258       2489      267       4689      25        569       3

solve-time = 0.16s
nb-facts = 0

   6         345       358       489       25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   49        1         7         24        356       346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       1389      7         59        249
   457       9         235       245       2367      346       1         8         246
   1         47        258       2489      267       4689      25        569       3

best-step-computation-time = 32.84s


===> STEP #12
There remains 115 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 115 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................
erasable candidates computation time = 38.44s
===> 30 candidates can be eliminated:
n5r1c2 n4r1c4 n2r1c5 n5r1c7 n5r2c5 n5r2c7 n5r3c5 n6r3c8 n9r3c8 n6r3c9 n4r7c1 n4r7c2 n2r7c4 n2r7c5 n3r7c6 n5r7c8 n9r7c9 n5r8c3 n2r8c4 n4r8c4 n3r8c5 n4r8c6 n6r8c9 n2r9c4 n2r9c5 n6r9c5 n6r9c6 n8r9c6 n5r9c8 n9r9c8
===> Among these, there are 2 candidates with the best score (34).
===> Eliminating randomly chosen candidate n5r3c5 and applying rules in W1, considered as "zero-step"
whip[7]: r1c5{n5 n2} - r3c4{n2 n4} - r1n4{c6 c2} - r9c2{n4 n7} - r8n7{c1 c5} - c5n3{r8 r7} - c2n3{r7 .} ==> r3c5 ≠ 5
hidden-single-in-a-row ==> r3c8 = 5
naked-single ==> r2c7 = 3
naked-single ==> r1c7 = 2
naked-single ==> r1c5 = 5
naked-single ==> r9c7 = 5
naked-single ==> r7c8 = 9
naked-single ==> r9c8 = 6
hidden-single-in-a-block ==> r3c4 = 2
PUZZLE 0 IS NOT SOLVED. 32 VALUES MISSING.
Final resolution state:
   6         34        38        489       5         489       2         7         1
   589       2         58        7         16        168       3         4         69
   49        1         7         2         36        346       8         5         69
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         458       123       138       7         9         24
   457       9         235       45        2367      346       1         8         24
   1         47        28        489       27        489       5         6         3

solve-time = 0.94s
nb-facts = 0

   6         34        38        489       5         489       2         7         1
   589       2         58        7         16        168       3         4         69
   49        1         7         2         36        346       8         5         69
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         458       123       138       7         9         24
   457       9         235       45        2367      346       1         8         24
   1         47        28        489       27        489       5         6         3

best-step-computation-time = 40.63s


===> STEP #13
There remains 81 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 81 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................
erasable candidates computation time = 2m 22.22s
===> 46 candidates can be eliminated:
n4r1c2 n3r1c3 n4r1c4 n8r1c4 n8r1c6 n5r2c1 n8r2c1 n8r2c3 n6r2c5 n1r2c6 n6r2c6 n9r2c9 n9r3c1 n4r3c6 n6r3c6 n6r3c9 n7r6c1 n5r6c2 n4r7c1 n5r7c1 n3r7c2 n4r7c2 n5r7c4 n8r7c4 n1r7c5 n2r7c5 n3r7c6 n8r7c6 n4r7c9 n4r8c1 n5r8c1 n2r8c3 n5r8c3 n4r8c4 n3r8c5 n6r8c5 n7r8c5 n3r8c6 n4r8c6 n2r8c9 n7r9c2 n8r9c3 n4r9c4 n2r9c5 n4r9c6 n8r9c6
===> Among these, there are 18 candidates with the best score (81).
===> Eliminating randomly chosen candidate n9r3c1 and applying rules in W1, considered as "zero-step"
whip[6]: b1n4{r3c1 r1c2} - r9c2{n4 n7} - r8n7{c1 c5} - r8n6{c5 c6} - r8n3{c6 c3} - r1n3{c3 .} ==> r3c1 ≠ 9
naked-single ==> r3c1 = 4
naked-single ==> r1c2 = 3
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 6
naked-single ==> r2c5 = 1
naked-single ==> r2c6 = 8
naked-single ==> r3c9 = 9
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 3
naked-single ==> r9c5 = 7
naked-single ==> r9c2 = 4
naked-single ==> r7c2 = 5
naked-single ==> r6c2 = 7
naked-single ==> r6c1 = 5
naked-single ==> r7c1 = 8
naked-single ==> r7c4 = 4
naked-single ==> r1c4 = 9
naked-single ==> r1c6 = 4
naked-single ==> r9c4 = 8
naked-single ==> r7c9 = 2
naked-single ==> r7c5 = 3
naked-single ==> r3c5 = 6
naked-single ==> r3c6 = 3
naked-single ==> r8c5 = 2
naked-single ==> r7c6 = 1
naked-single ==> r8c9 = 4
naked-single ==> r8c4 = 5
naked-single ==> r8c6 = 6
naked-single ==> r8c1 = 7
naked-single ==> r9c6 = 9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[6]
   638954271
   925718346
   417263859
   264185937
   381697425
   579342618
   856431792
   793526184
   142879563

nb-facts = <Fact-74565>
solve-time = 0.37s
nb-facts = <Fact-74565>

   6         3         8         9         5         4         2         7         1
   9         2         5         7         1         8         3         4         6
   4         1         7         2         6         3         8         5         9
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   5         7         9         3         4         2         6         1         8
   8         5         6         4         3         1         7         9         2
   7         9         3         5         2         6         1         8         4
   1         4         2         8         7         9         5         6         3

best-step-computation-time = 2m 23.43s


Total computation time = 10m 50.59s
sequence of 13 eliminations = n9r7c4 n5r3c1 n4r7c6 n2r1c4 n2r3c5 n5r1c4 n5r9c4 n5r9c2 n5r9c5 n7r2c5 n5r3c4 n5r3c5 n9r3c1






---------------------------------------------------------------------------------------------------

fewer-steps in W8:

3rd try : 10 steps
(solve-sudoku-with-fewer-steps-wrt-W1
"6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")

Starting from resolution state after Singles and whips[1]
===> STEP #1
There remains 133 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 133 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.....................................................................................................................................
erasable candidates computation time = 54.69s
===> 11 candidates can be eliminated:
n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n7r9c4 and applying rules in W1, considered as "zero-step"
whip[8]: r2n7{c4 c5} - r2n1{c5 c6} - r2n6{c6 c9} - c8n6{r3 r9} - r9n9{c8 c6} - r9n8{c6 c3} - c1n8{r7 r2} - r2n9{c1 .} ==> r9c4 ≠ 7
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       24589     2567      4689      25        569       3

solve-time = 0.08s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       24589     2567      4689      25        569       3

best-step-computation-time = 55.89s


===> STEP #2
There remains 132 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 132 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................
erasable candidates computation time = 52.22s
===> 10 candidates can be eliminated:
n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n5r9c5
===> Among these, there are 10 candidates with the best score (1).
===> Eliminating randomly chosen candidate n9r7c4 and applying rules in W1, considered as "zero-step"
whip[8]: r7c8{n9 n5} - r9c7{n5 n2} - c9n2{r8 r3} - r7n2{c9 c5} - r1c5{n2 n5} - r3n5{c5 c1} - r3n9{c1 c8} - r9n9{c8 .} ==> r7c4 ≠ 9
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       24589     2567      4689      25        569       3

solve-time = 0.43s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       24589     2567      4689      25        569       3

best-step-computation-time = 53.68s


===> STEP #3
There remains 131 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 131 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................
erasable candidates computation time = 56.23s
===> 12 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r3c1 n2r3c5 n4r7c2 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n5r9c5
===> Among these, there are 12 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c4 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       2489      2567      4689      25        569       3

solve-time = 0.11s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       2489      2567      4689      25        569       3

best-step-computation-time = 57.61s


===> STEP #4
There remains 130 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 130 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..................................................................................................................................
erasable candidates computation time = 51.0s
===> 11 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r3c1 n2r3c5 n4r7c2 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c5 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       2489      267       4689      25        569       3

solve-time = 0.13s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       2489      267       4689      25        569       3

best-step-computation-time = 52.35s


===> STEP #5
There remains 129 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 129 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................................
erasable candidates computation time = 54.1s
===> 14 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r2c4 n8r2c4 n7r2c5 n5r3c1 n2r3c5 n4r7c2 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n6r9c6
===> Among these, there is only one candidate with the best score (5).
===> Eliminating candidate n7r2c5 and applying rules in W1, considered as "zero-step"
whip[8]: r2n1{c5 c6} - r2n6{c6 c9} - c8n6{r3 r9} - r9c5{n6 n2} - r9c7{n2 n5} - r9c3{n5 n8} - c1n8{r7 r2} - r2n9{c1 .} ==> r2c5 ≠ 7
hidden-single-in-a-block ==> r2c4 = 7
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       245       23567     346       1         8         246
   1         457       258       2489      267       4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      1235      13489     7         59        249
   457       9         235       245       23567     346       1         8         246
   1         457       258       2489      267       4689      25        569       3

best-step-computation-time = 55.59s


===> STEP #6
There remains 124 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 124 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
............................................................................................................................
erasable candidates computation time = 46.98s
===> 18 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r3c1 n5r3c4 n2r3c5 n4r7c2 n5r7c5 n3r7c6 n4r7c6 n2r8c4 n5r8c5 n4r8c6 n5r9c2 n2r9c4 n2r9c5 n6r9c6 n8r9c6
===> Among these, there are 18 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r7c5 and applying rules in W1, considered as "zero-step"
whip[7]: r1c5{n5 n2} - c7n2{r1 r9} - c3n2{r9 r8} - r8c4{n2 n4} - r9n4{c6 c2} - b7n7{r9c2 r8c1} - r8n5{c1 .} ==> r7c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       13489     7         59        249
   457       9         235       245       23567     346       1         8         246
   1         457       258       2489      267       4689      25        569       3

solve-time = 0.18s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       13489     7         59        249
   457       9         235       245       23567     346       1         8         246
   1         457       258       2489      267       4689      25        569       3

best-step-computation-time = 48.76s


===> STEP #7
There remains 123 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 123 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................................................
erasable candidates computation time = 44.83s
===> 18 candidates can be eliminated:
n5r1c2 n2r1c4 n4r1c4 n5r1c4 n5r3c1 n5r3c4 n2r3c5 n4r7c2 n3r7c6 n4r7c6 n2r8c4 n5r8c5 n4r8c6 n5r9c2 n2r9c4 n2r9c5 n6r9c6 n8r9c6
===> Among these, there is only one candidate with the best score (3).
===> Eliminating candidate n5r8c5 and applying rules in W1, considered as "zero-step"
whip[8]: r1c5{n5 n2} - r3n2{c5 c9} - r7n2{c9 c4} - r8c4{n2 n4} - c9n4{r8 r7} - c1n4{r7 r3} - r3n9{c1 c8} - b9n9{r7c8 .} ==> r8c5 ≠ 5
whip[1]: c5n5{r3 .} ==> r1c4 ≠ 5, r3c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       13489     7         59        249
   457       9         235       245       2367      346       1         8         246
   1         457       258       2489      267       4689      25        569       3

solve-time = 0.24s
nb-facts = 0

   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       13489     7         59        249
   457       9         235       245       2367      346       1         8         246
   1         457       258       2489      267       4689      25        569       3

best-step-computation-time = 46.6s


===> STEP #8
There remains 120 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 120 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................................................
erasable candidates computation time = 39.11s
===> 23 candidates can be eliminated:
n5r1c2 n2r1c4 n4r1c4 n5r3c1 n2r3c5 n6r3c8 n9r3c8 n4r7c2 n3r7c6 n4r7c6 n9r7c9 n2r8c4 n4r8c4 n4r8c6 n6r8c9 n5r9c2 n2r9c4 n2r9c5 n6r9c5 n6r9c6 n8r9c6 n5r9c8 n9r9c8
===> Among these, there are 2 candidates with the best score (8).
===> Eliminating randomly chosen candidate n6r8c9 and applying rules in W1, considered as "zero-step"
whip[7]: c9n4{r8 r7} - c9n2{r7 r3} - r3c4{n2 n4} - c1n4{r3 r8} - r8c6{n4 n3} - r3c6{n3 n6} - c8n6{r3 .} ==> r8c9 ≠ 6
hidden-single-in-a-block ==> r9c8 = 6
whip[1]: r9n9{c6 .} ==> r7c6 ≠ 9
PUZZLE 0 IS NOT SOLVED. 39 VALUES MISSING.
Final resolution state:
   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         59        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       1348      7         59        249
   457       9         235       245       2367      346       1         8         24
   1         457       258       2489      27        489       25        6         3

solve-time = 0.15s
nb-facts = 0

   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         59        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       1348      7         59        249
   457       9         235       245       2367      346       1         8         24
   1         457       258       2489      27        489       25        6         3

best-step-computation-time = 40.62s


===> STEP #9
There remains 112 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 112 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
................................................................................................................
erasable candidates computation time = 44.14s
===> 39 candidates can be eliminated:
n5r1c2 n5r1c3 n2r1c4 n4r1c4 n2r1c5 n3r1c7 n5r1c7 n5r2c1 n3r2c3 n5r2c5 n5r2c7 n5r3c1 n2r3c5 n5r3c5 n9r3c8 n2r3c9 n7r6c1 n5r6c2 n5r7c1 n4r7c2 n5r7c4 n3r7c6 n4r7c6 n5r7c8 n9r7c9 n4r8c1 n5r8c1 n5r8c3 n2r8c4 n4r8c4 n7r8c5 n4r8c6 n5r9c2 n7r9c2 n5r9c3 n2r9c4 n2r9c5 n8r9c6 n2r9c7
===> Among these, there are 5 candidates with the best score (24).
===> Eliminating randomly chosen candidate n9r3c8 and applying rules in W1, considered as "zero-step"
whip-rc[7]: r2c9{n9 n6} - r3c9{n6 n2} - r3c4{n2 n4} - r3c1{n4 n5} - r6c1{n5 n7} - r8c1{n7 n4} - r8c9{n4 .} ==> r3c8 ≠ 9
naked-single ==> r3c8 = 5
naked-single ==> r2c7 = 3
naked-single ==> r1c7 = 2
naked-single ==> r1c5 = 5
naked-single ==> r9c7 = 5
naked-single ==> r7c8 = 9
PUZZLE 0 IS NOT SOLVED. 33 VALUES MISSING.
Final resolution state:
   6         34        38        489       5         489       2         7         1
   589       2         58        7         16        168       3         4         69
   49        1         7         24        236       346       8         5         69
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       1348      7         9         24
   457       9         235       245       2367      346       1         8         24
   1         47        28        2489      27        489       5         6         3

solve-time = 1.03s
nb-facts = 0

   6         34        38        489       5         489       2         7         1
   589       2         58        7         16        168       3         4         69
   49        1         7         24        236       346       8         5         69
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2458      123       1348      7         9         24
   457       9         235       245       2367      346       1         8         24
   1         47        28        2489      27        489       5         6         3

best-step-computation-time = 46.96s


===> STEP #10
There remains 88 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 88 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
........................................................................................
erasable candidates computation time = 2m 7.37s
===> 48 candidates can be eliminated:
n4r1c2 n3r1c3 n4r1c4 n8r1c4 n8r1c6 n5r2c1 n8r2c1 n8r2c3 n6r2c5 n6r2c6 n9r2c9 n9r3c1 n4r3c4 n2r3c5 n4r3c6 n6r3c6 n6r3c9 n7r6c1 n5r6c2 n4r7c1 n5r7c1 n3r7c2 n4r7c2 n2r7c4 n5r7c4 n8r7c4 n2r7c5 n3r7c6 n4r7c6 n8r7c6 n4r8c1 n5r8c1 n2r8c3 n5r8c3 n2r8c4 n4r8c4 n3r8c5 n6r8c5 n7r8c5 n3r8c6 n4r8c6 n7r9c2 n8r9c3 n2r9c4 n4r9c4 n2r9c5 n4r9c6 n8r9c6
===> Among these, there are 14 candidates with the best score (88).
===> Eliminating randomly chosen candidate n7r8c5 and applying rules in W1, considered as "zero-step"
z-chain[4]: r9c5{n7 n2} - c3n2{r9 r8} - r8n3{c3 c6} - r8n6{c6 .} ==> r8c5 ≠ 7
hidden-single-in-a-block ==> r9c5 = 7
naked-single ==> r9c2 = 4
naked-single ==> r1c2 = 3
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 6
naked-single ==> r2c5 = 1
naked-single ==> r2c6 = 8
naked-single ==> r9c6 = 9
naked-single ==> r1c6 = 4
naked-single ==> r1c4 = 9
naked-single ==> r3c4 = 2
naked-single ==> r9c4 = 8
naked-single ==> r3c9 = 9
naked-single ==> r3c1 = 4
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 3
naked-single ==> r8c6 = 6
naked-single ==> r3c6 = 3
naked-single ==> r3c5 = 6
naked-single ==> r7c6 = 1
naked-single ==> r8c5 = 2
naked-single ==> r7c5 = 3
naked-single ==> r8c9 = 4
naked-single ==> r7c9 = 2
naked-single ==> r8c4 = 5
naked-single ==> r7c4 = 4
naked-single ==> r8c1 = 7
naked-single ==> r6c1 = 5
naked-single ==> r6c2 = 7
naked-single ==> r7c1 = 8
naked-single ==> r7c2 = 5
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = z-chain[4]
   638954271
   925718346
   417263859
   264185937
   381697425
   579342618
   856431792
   793526184
   142879563

nb-facts = <Fact-82968>
solve-time = 0.11s
nb-facts = <Fact-82968>

   6         3         8         9         5         4         2         7         1
   9         2         5         7         1         8         3         4         6
   4         1         7         2         6         3         8         5         9
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   5         7         9         3         4         2         6         1         8
   8         5         6         4         3         1         7         9         2
   7         9         3         5         2         6         1         8         4
   1         4         2         8         7         9         5         6         3

best-step-computation-time = 2m 8.65s


Total computation time = 9m 47.07s
sequence of 10 eliminations = n7r9c4 n9r7c4 n5r9c4 n5r9c5 n7r2c5 n5r7c5 n5r8c5 n6r8c9 n9r3c8 n7r8c5






---------------------------------------------------------------------------------------------------

fewer-steps in W8:

4th try : 9 steps
(solve-sudoku-with-fewer-steps-wrt-W1
"6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")

Starting from resolution state after Singles and whips[1]
===> STEP #1
There remains 133 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 133 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.....................................................................................................................................
erasable candidates computation time = 55.68s
===> 11 candidates can be eliminated:
n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n4r7c2 and applying rules in W1, considered as "zero-step"
whip[7]: b7n3{r7c2 r8c3} - c3n2{r8 r9} - r9c7{n2 n5} - c8n5{r9 r3} - c8n6{r3 r9} - r9c5{n6 n7} - r9c2{n7 .} ==> r7c2 ≠ 4
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.13s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     1235      13489     7         59        249
   457       9         235       2457      23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 56.99s


===> STEP #2
There remains 132 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 132 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................
erasable candidates computation time = 54.94s
===> 10 candidates can be eliminated:
n5r3c1 n2r3c5 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 10 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r8c4 and applying rules in W1, considered as "zero-step"
whip[8]: c3n2{r8 r9} - r9c7{n2 n5} - c8n5{r9 r3} - r3c4{n5 n4} - r1n4{c6 c2} - r9c2{n4 n7} - r9c5{n7 n6} - c8n6{r9 .} ==> r8c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     1235      13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.32s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     1235      13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 56.27s


===> STEP #3
There remains 131 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 131 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................
erasable candidates computation time = 50.16s
===> 10 candidates can be eliminated:
n5r1c4 n5r3c1 n2r3c5 n9r7c4 n5r7c5 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 10 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r7c5 and applying rules in W1, considered as "zero-step"
whip[7]: r1c5{n5 n2} - c7n2{r1 r9} - b9n5{r9c7 r9c8} - r7c8{n5 n9} - r7c9{n9 n4} - r7c1{n4 n8} - r9c3{n8 .} ==> r7c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.14s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 51.27s


===> STEP #4
There remains 130 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 130 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..................................................................................................................................
erasable candidates computation time = 47.73s
===> 9 candidates can be eliminated:
n5r1c4 n5r3c1 n2r3c5 n9r7c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 9 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c2 and applying rules in W1, considered as "zero-step"
whip[6]: b7n7{r9c2 r8c1} - b7n4{r8c1 r7c1} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n2} - r9c7{n2 .} ==> r9c2 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         47        258       245789    2567      4689      25        569       3

solve-time = 0.13s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         47        258       245789    2567      4689      25        569       3

best-step-computation-time = 48.72s


===> STEP #5
There remains 129 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 129 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................................
erasable candidates computation time = 46.68s
===> 9 candidates can be eliminated:
n5r1c4 n5r2c5 n5r3c1 n2r3c5 n9r7c4 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 9 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c5 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         47        258       245789    267       4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         47        258       245789    267       4689      25        569       3

best-step-computation-time = 47.67s


===> STEP #6
There remains 128 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 128 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
................................................................................................................................
erasable candidates computation time = 43.63s
===> 12 candidates can be eliminated:
n5r1c4 n5r2c4 n8r2c4 n5r2c5 n7r2c5 n5r3c1 n2r3c5 n9r7c4 n2r9c4 n5r9c4 n7r9c4 n6r9c6
===> Among these, there is only one candidate with the best score (6).
===> Eliminating candidate n7r2c5 and applying rules in W1, considered as "zero-step"
whip[8]: r2n1{c5 c6} - r2n6{c6 c9} - c8n6{r3 r9} - r9c5{n6 n2} - r9c7{n2 n5} - r9c3{n5 n8} - c1n8{r7 r2} - r2n9{c1 .} ==> r2c5 ≠ 7
hidden-single-in-a-block ==> r2c4 = 7
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       45        23567     346       1         8         246
   1         47        258       24589     267       4689      25        569       3

solve-time = 0.11s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       45        23567     346       1         8         246
   1         47        258       24589     267       4689      25        569       3

best-step-computation-time = 44.73s


===> STEP #7
There remains 122 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 122 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..........................................................................................................................
erasable candidates computation time = 40.32s
===> 25 candidates can be eliminated:
n5r1c2 n2r1c4 n4r1c4 n5r1c4 n5r2c5 n5r3c1 n5r3c4 n2r3c5 n5r3c5 n9r3c8 n6r3c9 n4r7c1 n5r7c4 n9r7c4 n3r7c6 n4r7c6 n9r7c9 n5r8c1 n5r8c3 n5r8c5 n4r8c6 n2r9c4 n5r9c4 n2r9c5 n6r9c6
===> Among these, there is only one candidate with the best score (3).
===> Eliminating candidate n5r8c5 and applying rules in W1, considered as "zero-step"
whip[7]: r8c4{n5 n4} - c9n4{r8 r7} - c1n4{r7 r3} - c1n9{r3 r2} - c9n9{r2 r3} - b3n2{r3c9 r1c7} - r1c5{n2 .} ==> r8c5 ≠ 5
whip[1]: b8n5{r9c4 .} ==> r1c4 ≠ 5, r3c4 ≠ 5
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       45        2367      346       1         8         246
   1         47        258       24589     267       4689      25        569       3

solve-time = 0.21s
nb-facts = 0

   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         24589     123       13489     7         59        249
   457       9         235       45        2367      346       1         8         246
   1         47        258       24589     267       4689      25        569       3

best-step-computation-time = 42.15s


===> STEP #8
There remains 119 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 119 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.......................................................................................................................
erasable candidates computation time = 40.86s
===> 31 candidates can be eliminated:
n5r1c2 n2r1c4 n4r1c4 n2r1c5 n5r2c5 n5r3c1 n2r3c5 n5r3c5 n6r3c8 n9r3c8 n6r3c9 n4r7c1 n2r7c4 n5r7c4 n9r7c4 n3r7c6 n4r7c6 n9r7c9 n5r8c1 n5r8c3 n4r8c4 n3r8c5 n4r8c6 n6r8c9 n2r9c4 n5r9c4 n2r9c5 n6r9c5 n6r9c6 n5r9c8 n9r9c8
===> Among these, there are 2 candidates with the best score (9).
===> Eliminating randomly chosen candidate n6r8c9 and applying rules in W1, considered as "zero-step"
whip[7]: c9n4{r8 r7} - c9n2{r7 r3} - r3c4{n2 n4} - c1n4{r3 r8} - r8c6{n4 n3} - r3c6{n3 n6} - c8n6{r3 .} ==> r8c9 ≠ 6
hidden-single-in-a-block ==> r9c8 = 6
whip[1]: r9n9{c6 .} ==> r7c4 ≠ 9, r7c6 ≠ 9
PUZZLE 0 IS NOT SOLVED. 39 VALUES MISSING.
Final resolution state:
   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         59        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         2458      123       1348      7         59        249
   457       9         235       45        2367      346       1         8         24
   1         47        258       24589     27        489       25        6         3

solve-time = 0.26s
nb-facts = 0

   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         59        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       35        6         2458      123       1348      7         59        249
   457       9         235       45        2367      346       1         8         24
   1         47        258       24589     27        489       25        6         3

best-step-computation-time = 42.9s


===> STEP #9
There remains 110 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 110 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
..............................................................................................................
erasable candidates computation time = 1m 17.77s
===> 58 candidates can be eliminated:
n4r1c2 n5r1c2 n5r1c3 n2r1c4 n4r1c4 n8r1c4 n2r1c5 n8r1c6 n3r1c7 n5r1c7 n5r2c1 n8r2c1 n3r2c3 n5r2c5 n6r2c5 n6r2c6 n5r2c7 n9r2c9 n5r3c1 n9r3c1 n4r3c4 n2r3c5 n5r3c5 n4r3c6 n9r3c8 n2r3c9 n6r3c9 n7r6c1 n5r6c2 n4r7c1 n5r7c1 n2r7c4 n5r7c4 n8r7c4 n2r7c5 n3r7c6 n4r7c6 n8r7c6 n5r7c8 n9r7c9 n4r8c1 n5r8c1 n5r8c3 n4r8c4 n3r8c5 n7r8c5 n3r8c6 n4r8c6 n7r9c2 n5r9c3 n8r9c3 n2r9c4 n4r9c4 n5r9c4 n2r9c5 n4r9c6 n8r9c6 n2r9c7
===> Among these, there are 6 candidates with the best score (110).
===> Eliminating randomly chosen candidate n7r6c1 and applying rules in W1, considered as "zero-step"
whip[5]: r8n7{c1 c5} - r9c5{n7 n2} - c3n2{r9 r8} - r8n3{c3 c6} - r8n6{c6 .} ==> r6c1 ≠ 7
naked-single ==> r6c1 = 5
naked-single ==> r6c2 = 7
naked-single ==> r9c2 = 4
naked-single ==> r7c1 = 8
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 6
naked-single ==> r3c1 = 4
naked-single ==> r3c4 = 2
naked-single ==> r1c5 = 5
naked-single ==> r1c2 = 3
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 5
naked-single ==> r2c7 = 3
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 3
naked-single ==> r9c5 = 7
naked-single ==> r9c7 = 5
naked-single ==> r7c8 = 9
naked-single ==> r3c8 = 5
naked-single ==> r1c7 = 2
naked-single ==> r7c2 = 5
naked-single ==> r7c4 = 4
naked-single ==> r1c4 = 9
naked-single ==> r1c6 = 4
naked-single ==> r9c4 = 8
naked-single ==> r9c6 = 9
naked-single ==> r7c9 = 2
naked-single ==> r8c9 = 4
naked-single ==> r8c4 = 5
naked-single ==> r8c6 = 6
naked-single ==> r3c6 = 3
naked-single ==> r3c5 = 6
naked-single ==> r7c6 = 1
naked-single ==> r2c6 = 8
naked-single ==> r7c5 = 3
naked-single ==> r8c5 = 2
naked-single ==> r2c5 = 1
naked-single ==> r3c9 = 9
naked-single ==> r8c1 = 7
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[5]
   638954271
   925718346
   417263859
   264185937
   381697425
   579342618
   856431792
   793526184
   142879563

nb-facts = <Fact-149229>
solve-time = 0.16s
nb-facts = <Fact-149229>

   6         3         8         9         5         4         2         7         1
   9         2         5         7         1         8         3         4         6
   4         1         7         2         6         3         8         5         9
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   5         7         9         3         4         2         6         1         8
   8         5         6         4         3         1         7         9         2
   7         9         3         5         2         6         1         8         4
   1         4         2         8         7         9         5         6         3

best-step-computation-time = 1m 20.29s


Total computation time = 7m 51.35s
sequence of 9 eliminations = n4r7c2 n2r8c4 n5r7c5 n5r9c2 n5r9c5 n7r2c5 n5r8c5 n6r8c9 n7r6c1




---------------------------------------------------------------------------------------------------

fewer-steps in W8:

5th try : 7 steps
(solve-sudoku-with-fewer-steps-wrt-W1
"6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")

Starting from resolution state after Singles and whips[1]

===> STEP #1
There remains 133 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 133 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.....................................................................................................................................
erasable candidates computation time = 56.03s
===> 11 candidates can be eliminated:
n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n2r8c4 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n2r8c4 and applying rules in W1, considered as "zero-step"
whip[8]: c3n2{r8 r9} - r9c7{n2 n5} - c8n5{r9 r3} - r3c4{n5 n4} - r1n4{c6 c2} - r9c2{n4 n7} - r9c5{n7 n6} - c8n6{r9 .} ==> r8c4 ≠ 2
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

solve-time = 0.34s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    2567      4689      25        569       3

best-step-computation-time = 57.48s


===> STEP #2
There remains 132 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 132 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
....................................................................................................................................
erasable candidates computation time = 51.84s
===> 11 candidates can be eliminated:
n5r1c4 n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n5r9c5
===> Among these, there are 11 candidates with the best score (1).
===> Eliminating randomly chosen candidate n5r9c5 and applying rules in W1, considered as "zero-step"
whip[7]: r9c7{n5 n2} - r9c3{n2 n8} - c1n8{r7 r2} - r2n9{c1 c9} - r7c9{n9 n4} - r7c1{n4 n5} - b9n5{r7c8 .} ==> r9c5 ≠ 5
PUZZLE 0 IS NOT SOLVED. 41 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    267       4689      25        569       3

solve-time = 0.12s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       578       1567      168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       457       23567     346       1         8         246
   1         457       258       245789    267       4689      25        569       3

best-step-computation-time = 53.05s


===> STEP #3
There remains 131 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 131 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...................................................................................................................................
erasable candidates computation time = 50.42s
===> 14 candidates can be eliminated:
n5r1c4 n5r2c4 n8r2c4 n7r2c5 n5r3c1 n2r3c5 n4r7c2 n9r7c4 n5r7c5 n5r9c2 n2r9c4 n5r9c4 n7r9c4 n6r9c6
===> Among these, there is only one candidate with the best score (6).
===> Eliminating candidate n7r2c5 and applying rules in W1, considered as "zero-step"
whip[8]: r2n1{c5 c6} - r2n6{c6 c9} - c8n6{r3 r9} - r9c5{n6 n2} - r9c7{n2 n5} - r9c3{n5 n8} - c1n8{r7 r2} - r2n9{c1 .} ==> r2c5 ≠ 7
hidden-single-in-a-block ==> r2c4 = 7
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       45        23567     346       1         8         246
   1         457       258       24589     267       4689      25        569       3

solve-time = 0.1s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         569       269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        249
   457       9         235       45        23567     346       1         8         246
   1         457       258       24589     267       4689      25        569       3

best-step-computation-time = 51.72s


===> STEP #4
There remains 125 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 125 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.............................................................................................................................
erasable candidates computation time = 40.96s
===> 24 candidates can be eliminated:
n2r1c4 n4r1c4 n5r1c4 n5r3c1 n5r3c4 n2r3c5 n9r3c8 n4r7c1 n4r7c2 n5r7c4 n9r7c4 n5r7c5 n3r7c6 n4r7c6 n9r7c9 n5r8c1 n5r8c3 n5r8c5 n4r8c6 n5r9c2 n2r9c4 n5r9c4 n2r9c5 n6r9c6
===> Among these, there are 2 candidates with the best score (2).
===> Eliminating randomly chosen candidate n9r3c8 and applying rules in W1, considered as "zero-step"
whip-rc[8]: r2c9{n9 n6} - r3c9{n6 n2} - r8c9{n2 n4} - r8c4{n4 n5} - r3c4{n5 n4} - r3c1{n4 n5} - r8c1{n5 n7} - r6c1{n7 .} ==> r3c8 ≠ 9
whip[1]: c8n9{r9 .} ==> r7c9 ≠ 9
PUZZLE 0 IS NOT SOLVED. 40 VALUES MISSING.
Final resolution state:
   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         56        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        24
   457       9         235       45        23567     346       1         8         246
   1         457       258       24589     267       4689      25        569       3

solve-time = 0.28s
nb-facts = 0

   6         345       358       24589     25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         245       2356      346       8         56        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         24589     1235      13489     7         59        24
   457       9         235       45        23567     346       1         8         246
   1         457       258       24589     267       4689      25        569       3

best-step-computation-time = 42.99s


===> STEP #5
There remains 123 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 123 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...........................................................................................................................
erasable candidates computation time = 46.45s
===> 26 candidates can be eliminated:
n5r1c2 n2r1c4 n4r1c4 n5r1c4 n5r2c5 n5r3c1 n5r3c4 n2r3c5 n5r3c5 n4r7c1 n4r7c2 n5r7c4 n9r7c4 n5r7c5 n3r7c6 n4r7c6 n5r8c1 n5r8c3 n4r8c4 n5r8c5 n4r8c6 n5r9c2 n2r9c4 n5r9c4 n2r9c5 n6r9c6
===> Among these, there is only one candidate with the best score (10).
===> Eliminating candidate n4r8c4 and applying rules in W1, considered as "zero-step"
whip[8]: c9n4{r8 r7} - c1n4{r7 r3} - r3n9{c1 c9} - b3n2{r3c9 r1c7} - r1c5{n2 n5} - r1c2{n5 n3} - r7c2{n3 n5} - r8n5{c1 .} ==> r8c4 ≠ 4
naked-single ==> r8c4 = 5
PUZZLE 0 IS NOT SOLVED. 39 VALUES MISSING.
Final resolution state:
   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         56        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2489      123       13489     7         59        24
   47        9         23        5         2367      346       1         8         246
   1         457       258       2489      267       4689      25        569       3

solve-time = 0.49s
nb-facts = 0

   6         345       358       2489      25        489       235       7         1
   589       2         358       7         156       168       35        4         69
   459       1         7         24        2356      346       8         56        269
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         2489      123       13489     7         59        24
   47        9         23        5         2367      346       1         8         246
   1         457       258       2489      267       4689      25        569       3

best-step-computation-time = 48.68s


===> STEP #6
There remains 113 candidates after rules in W1 have been applied.

===> CHECKING WHICH OF THE 113 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
.................................................................................................................
erasable candidates computation time = 1m 3.87s
===> 29 candidates can be eliminated:
n5r1c2 n2r1c4 n4r1c4 n5r1c7 n5r2c1 n5r2c5 n5r2c7 n5r3c1 n2r3c5 n5r3c5 n6r3c8 n6r3c9 n4r7c1 n4r7c2 n9r7c4 n3r7c6 n4r7c6 n5r7c8 n4r8c6 n2r8c9 n6r8c9 n5r9c2 n2r9c4 n2r9c5 n6r9c5 n6r9c6 n2r9c7 n5r9c8 n9r9c8
===> Among these, there are 3 candidates with the best score (34).
===> Eliminating randomly chosen candidate n6r3c8 and applying rules in W1, considered as "zero-step"
whip[7]: b9n6{r9c8 r8c9} - c9n4{r8 r7} - c9n2{r7 r3} - r3c4{n2 n4} - r3c6{n4 n3} - r8c6{n3 n4} - c1n4{r8 .} ==> r3c8 ≠ 6
naked-single ==> r3c8 = 5
naked-single ==> r2c7 = 3
naked-single ==> r1c7 = 2
naked-single ==> r1c5 = 5
naked-single ==> r9c7 = 5
naked-single ==> r7c8 = 9
naked-single ==> r9c8 = 6
hidden-single-in-a-column ==> r2c3 = 5
PUZZLE 0 IS NOT SOLVED. 31 VALUES MISSING.
Final resolution state:
   6         34        38        489       5         489       2         7         1
   89        2         5         7         16        168       3         4         69
   49        1         7         24        236       346       8         5         69
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         248       123       1348      7         9         24
   47        9         23        5         2367      346       1         8         24
   1         47        28        2489      27        489       5         6         3

solve-time = 6.44s
nb-facts = 0

   6         34        38        489       5         489       2         7         1
   89        2         5         7         16        168       3         4         69
   49        1         7         24        236       346       8         5         69
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   57        57        9         3         4         2         6         1         8
   458       345       6         248       123       1348      7         9         24
   47        9         23        5         2367      346       1         8         24
   1         47        28        2489      27        489       5         6         3

best-step-computation-time = 1m 11.82s


===> STEP #7
There remains 79 candidates after rules in W1 have been applied.

(re-started from here)
===> CHECKING WHICH OF THE 79 CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES:
...............................................................................
erasable candidates computation time = 11m 31.01s
===> 45 candidates can be eliminated:
n4r1c2 n3r1c3 n4r1c4 n8r1c4 n8r1c6 n8r2c1 n6r2c5 n1r2c6 n6r2c6 n9r2c9 n9r3c1 n4r3c4 n2r3c5 n4r3c6 n6r3c6 n6r3c9 n7r6c1 n5r6c2 n4r7c1 n5r7c1 n3r7c2 n4r7c2 n2r7c4 n8r7c4 n1r7c5 n2r7c5 n3r7c6 n4r7c6 n8r7c6 n4r7c9 n4r8c1 n2r8c3 n3r8c5 n6r8c5 n7r8c5 n3r8c6 n4r8c6 n2r8c9 n7r9c2 n8r9c3 n2r9c4 n4r9c4 n2r9c5 n4r9c6 n8r9c6
===> Among these, there are 18 candidates with the best score (79).
===> Eliminating randomly chosen candidate n5r6c2 and applying rules in W1, considered as "zero-step"
whip-rc[5]: r6c1{n5 n7} - r8c1{n7 n4} - r7c2{n4 n3} - r8c3{n3 n2} - r8c9{n2 .} ==> r6c2 ≠ 5
naked-single ==> r6c2 = 7
naked-single ==> r6c1 = 5
naked-single ==> r9c2 = 4
naked-single ==> r1c2 = 3
naked-single ==> r1c3 = 8
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 6
naked-single ==> r2c5 = 1
naked-single ==> r2c6 = 8
naked-single ==> r9c6 = 9
naked-single ==> r1c6 = 4
naked-single ==> r1c4 = 9
naked-single ==> r3c4 = 2
naked-single ==> r9c4 = 8
naked-single ==> r7c4 = 4
naked-single ==> r7c9 = 2
naked-single ==> r7c5 = 3
naked-single ==> r3c5 = 6
naked-single ==> r3c6 = 3
naked-single ==> r7c6 = 1
naked-single ==> r8c6 = 6
naked-single ==> r8c9 = 4
naked-single ==> r3c9 = 9
naked-single ==> r3c1 = 4
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 3
naked-single ==> r9c5 = 7
naked-single ==> r8c5 = 2
naked-single ==> r7c2 = 5
naked-single ==> r7c1 = 8
naked-single ==> r8c1 = 7
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[5]
   638954271
   925718346
   417263859
   264185937
   381697425
   579342618
   856431792
   793526184
   142879563

nb-facts = <Fact-79067>
solve-time = 0.53s
nb-facts = <Fact-79067>

   6         3         8         9         5         4         2         7         1
   9         2         5         7         1         8         3         4         6
   4         1         7         2         6         3         8         5         9
   2         6         4         1         8         5         9         3         7
   3         8         1         6         9         7         4         2         5
   5         7         9         3         4         2         6         1         8
   8         5         6         4         3         1         7         9         2
   7         9         3         5         2         6         1         8         4
   1         4         2         8         7         9         5         6         3

best-step-computation-time = 11m 32.64s


Total computation time = 11m 32.75s * for the last step only
sequence of 1 eliminations = n5r6c2





---------------------------------------------------------------------------------------------------

fewer-steps in W8:

6th try : 13 steps
(solve-sudoku-with-fewer-steps-wrt-W1
"6.......1.2.....4...7...8....41.59..381697425..93.26....6...7...9.....8.1.......3 # 67360 FNBTYK C29/S4.hv")

Starting from resolution state after Singles and whips[1]

Total computation time = 11m 17.52s
sequence of 13 eliminations = n5r7c5 n5r9c4 n2r3c5 n2r8c4 n5r1c4 n9r7c4 n5r3c1 n5r9c5 n7r2c5 n5r7c4 n5r8c5 n4r8c1 n2r3c9



