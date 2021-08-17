A puzzle by mith.

http://forum.enjoysudoku.com/tatooine-tosche-station-t39029.html

+-------+-------+-------+
| . . . | . . . | . . . |
| . . 1 | 2 . . | . . 3 |
| . 4 . | . 5 . | . 6 . |
+-------+-------+-------+
| . 5 . | . 6 . | . 7 . |
| . . 3 | 8 . . | . . 2 |
| . . . | . . 7 | . . . |
+-------+-------+-------+
| . . . | . . . | . . . |
| . . 2 | 3 . . | . 9 8 |
| . 6 . | . 7 . | . 5 . |
+-------+-------+-------+
...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.
SER = 4.0

Solution using only Subsets:

(solve "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.")

Many Subsets (16)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates, 2088 csp-links and 2088 links. Density = 5.97%
Starting non trivial part of solution.

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

hidden-pairs-in-a-block: b5{n2 n3}{r4c6 r6c5} ==> r6c5≠9, r6c5≠4, r6c5≠1, r4c6≠9, r4c6≠4, r4c6≠1
swordfish-in-columns: n7{c3 c4 c9}{r7 r3 r1} ==> r7c7≠7, r7c2≠7, r7c1≠7, r3c7≠7, r3c1≠7, r1c7≠7, r1c2≠7, r1c1≠7
swordfish-in-columns: n3{c2 c5 c8}{r7 r1 r6} ==> r7c7≠3, r7c1≠3, r6c7≠3, r1c6≠3, r1c1≠3
swordfish-in-columns: n6{c3 c4 c9}{r6 r1 r7} ==> r7c7≠6, r7c6≠6, r6c7≠6, r6c1≠6, r1c6≠6, r1c1≠6
hidden-pairs-in-a-block: b9{n6 n7}{r7c9 r8c7} ==> r8c7≠4, r8c7≠1, r7c9≠4, r7c9≠1
swordfish-in-rows: n2{r3 r4 r9}{c7 c1 c6} ==> r7c7≠2, r7c6≠2, r6c1≠2, r1c7≠2, r1c1≠2
naked-pairs-in-a-block: b9{r7c7 r9c9}{n1 n4} ==> r9c7≠4, r9c7≠1, r7c8≠4, r7c8≠1
hidden-pairs-in-a-block: b1{n2 n3}{r1c2 r3c1} ==> r3c1≠9, r3c1≠8, r1c2≠9, r1c2≠8
swordfish-in-rows: n5{r2 r5 r8}{c1 c7 c6} ==> r7c6≠5, r7c1≠5, r6c7≠5, r1c7≠5, r1c1≠5
hidden-pairs-in-a-block: b1{n5 n6}{r1c3 r2c1} ==> r2c1≠9, r2c1≠8, r2c1≠7, r1c3≠9, r1c3≠8, r1c3≠7
hidden-pairs-in-a-block: b6{n5 n6}{r5c7 r6c9} ==> r6c9≠9, r6c9≠4, r6c9≠1, r5c7≠9, r5c7≠4, r5c7≠1
hidden-pairs-in-a-block: b8{n5 n6}{r7c4 r8c6} ==> r8c6≠4, r8c6≠1, r7c4≠9, r7c4≠4, r7c4≠1
hidden-triplets-in-a-column: c1{n5 n6 n7}{r8 r2 r5} ==> r8c1≠4, r8c1≠1, r5c1≠9, r5c1≠4, r5c1≠1
hidden-single-in-a-row ==> r8c5=4
hidden-single-in-a-row ==> r8c2=1
hidden-pairs-in-a-block: b7{n5 n7}{r7c3 r8c1} ==> r7c3≠9, r7c3≠8, r7c3≠4
finned-x-wing-in-rows: n4{r5 r2}{c6 c8} ==> r1c8≠4
hidden-triplets-in-a-row: r1{n5 n6 n7}{c9 c3 c4} ==> r1c9≠9, r1c9≠4, r1c9≠1, r1c4≠9, r1c4≠4, r1c4≠1
whip[1]: c4n4{r6 .} ==> r5c6≠4
hidden-single-in-a-row ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c6=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r8c1=5
naked-single ==> r2c1=6
naked-single ==> r1c3=5
naked-single ==> r1c9=7
naked-single ==> r1c4=6
naked-single ==> r7c4=5
naked-single ==> r7c9=6
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r7c3=7
naked-single ==> r6c9=5
naked-single ==> r8c7=7
naked-single ==> r8c6=6
hidden-single-in-a-row ==> r1c7=4
naked-single ==> r7c7=1
naked-single ==> r9c9=4
hidden-single-in-a-block ==> r7c1=4
hidden-single-in-a-row ==> r7c6=9
naked-single ==> r9c4=1
naked-single ==> r3c4=7
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r3c7=2
naked-single ==> r1c8=1
naked-single ==> r1c6=8
naked-single ==> r1c5=3
naked-single ==> r1c2=2
naked-single ==> r6c2=8
naked-single ==> r4c1=2
naked-single ==> r4c6=3
naked-single ==> r4c7=8
naked-single ==> r6c1=1
naked-single ==> r6c7=9
naked-single ==> r7c2=3
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r9c1=8
naked-single ==> r3c6=1
naked-single ==> r6c5=2
naked-single ==> r9c6=2
naked-single ==> r3c1=3
naked-single ==> r9c7=3
naked-single ==> r6c8=3
naked-single ==> r6c4=4
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = SFin, MOST COMPLEX RULE TRIED = SHT
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-11855>
Puzzle ...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5. :
init-time = 0.19s, solve-time = 0.36s, total-time = 0.55s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************




--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

Solution using Subsets and whip[≤4]
Starting with the resolution state after whips[1]: NO non-Subset rule appears (indeed, the resolution path is unchanged)

hidden-pairs-in-a-block: b5{n2 n3}{r4c6 r6c5} ==> r6c5≠9, r6c5≠4, r6c5≠1, r4c6≠9, r4c6≠4, r4c6≠1
swordfish-in-columns: n7{c3 c4 c9}{r7 r3 r1} ==> r7c7≠7, r7c2≠7, r7c1≠7, r3c7≠7, r3c1≠7, r1c7≠7, r1c2≠7, r1c1≠7
swordfish-in-columns: n3{c2 c5 c8}{r7 r1 r6} ==> r7c7≠3, r7c1≠3, r6c7≠3, r1c6≠3, r1c1≠3
swordfish-in-columns: n6{c3 c4 c9}{r6 r1 r7} ==> r7c7≠6, r7c6≠6, r6c7≠6, r6c1≠6, r1c6≠6, r1c1≠6
hidden-pairs-in-a-block: b9{n6 n7}{r7c9 r8c7} ==> r8c7≠4, r8c7≠1, r7c9≠4, r7c9≠1
swordfish-in-rows: n2{r3 r4 r9}{c7 c1 c6} ==> r7c7≠2, r7c6≠2, r6c1≠2, r1c7≠2, r1c1≠2
naked-pairs-in-a-block: b9{r7c7 r9c9}{n1 n4} ==> r9c7≠4, r9c7≠1, r7c8≠4, r7c8≠1
hidden-pairs-in-a-block: b1{n2 n3}{r1c2 r3c1} ==> r3c1≠9, r3c1≠8, r1c2≠9, r1c2≠8
swordfish-in-rows: n5{r2 r5 r8}{c1 c7 c6} ==> r7c6≠5, r7c1≠5, r6c7≠5, r1c7≠5, r1c1≠5
hidden-pairs-in-a-block: b1{n5 n6}{r1c3 r2c1} ==> r2c1≠9, r2c1≠8, r2c1≠7, r1c3≠9, r1c3≠8, r1c3≠7
hidden-pairs-in-a-block: b6{n5 n6}{r5c7 r6c9} ==> r6c9≠9, r6c9≠4, r6c9≠1, r5c7≠9, r5c7≠4, r5c7≠1
hidden-pairs-in-a-block: b8{n5 n6}{r7c4 r8c6} ==> r8c6≠4, r8c6≠1, r7c4≠9, r7c4≠4, r7c4≠1
hidden-triplets-in-a-column: c1{n5 n6 n7}{r8 r2 r5} ==> r8c1≠4, r8c1≠1, r5c1≠9, r5c1≠4, r5c1≠1
hidden-single-in-a-row ==> r8c5=4
hidden-single-in-a-row ==> r8c2=1
hidden-pairs-in-a-block: b7{n5 n7}{r7c3 r8c1} ==> r7c3≠9, r7c3≠8, r7c3≠4
finned-x-wing-in-rows: n4{r5 r2}{c6 c8} ==> r1c8≠4
hidden-triplets-in-a-row: r1{n5 n6 n7}{c9 c3 c4} ==> r1c9≠9, r1c9≠4, r1c9≠1, r1c4≠9, r1c4≠4, r1c4≠1
whip[1]: c4n4{r6 .} ==> r5c6≠4
hidden-single-in-a-row ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c6=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r8c1=5
naked-single ==> r2c1=6
naked-single ==> r1c3=5
naked-single ==> r1c9=7
naked-single ==> r1c4=6
naked-single ==> r7c4=5
naked-single ==> r7c9=6
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r7c3=7
naked-single ==> r6c9=5
naked-single ==> r8c7=7
naked-single ==> r8c6=6
hidden-single-in-a-row ==> r1c7=4
naked-single ==> r7c7=1
naked-single ==> r9c9=4
hidden-single-in-a-block ==> r7c1=4
hidden-single-in-a-row ==> r7c6=9
naked-single ==> r9c4=1
naked-single ==> r3c4=7
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r3c7=2
naked-single ==> r1c8=1
naked-single ==> r1c6=8
naked-single ==> r1c5=3
naked-single ==> r1c2=2
naked-single ==> r6c2=8
naked-single ==> r4c1=2
naked-single ==> r4c6=3
naked-single ==> r4c7=8
naked-single ==> r6c1=1
naked-single ==> r6c7=9
naked-single ==> r7c2=3
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r9c1=8
naked-single ==> r3c6=1
naked-single ==> r6c5=2
naked-single ==> r9c6=2
naked-single ==> r3c1=3
naked-single ==> r9c7=3
naked-single ==> r6c8=3
naked-single ==> r6c4=4
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = SHT
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-14634>
Puzzle ...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5. :
init-time = 0.2s, solve-time = 1.13s, total-time = 1.33s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r813
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************





--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

solve using only bivalue-chains ≤3 (adding whips or z-chains does not change the rating). 40 steps are obtained.

(solve "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyBC+BC
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates, 2088 csp-links and 2088 links. Density = 5.97%
Starting non trivial part of solution.

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

biv-chain-bn[2]: b5n2{r4c6 r6c5} - b5n3{r6c5 r4c6} ==> r4c6≠1, r4c6≠4, r4c6≠9
biv-chain-bn[2]: b5n2{r6c5 r4c6} - b5n3{r4c6 r6c5} ==> r6c5≠1, r6c5≠4, r6c5≠9
biv-chain-rn[3]: r2n5{c1 c7} - r5n5{c7 c6} - r8n5{c6 c1} ==> r1c1≠5, r7c1≠5
biv-chain-rn[3]: r2n5{c7 c1} - r8n5{c1 c6} - r5n5{c6 c7} ==> r1c7≠5, r6c7≠5
biv-chain-rn[3]: r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} ==> r1c1≠6, r6c1≠6
biv-chain-bn[2]: b1n6{r2c1 r1c3} - b1n5{r1c3 r2c1} ==> r2c1≠7, r2c1≠8, r2c1≠9
biv-chain-bn[2]: b1n5{r1c3 r2c1} - b1n6{r2c1 r1c3} ==> r1c3≠7, r1c3≠8, r1c3≠9
biv-chain[2]: c3n7{r7 r3} - r2n7{c2 c7} ==> r7c7≠7
biv-chain[2]: b9n7{r8c7 r7c9} - c3n7{r7 r3} ==> r3c7≠7
biv-chain[2]: r2n7{c2 c7} - b9n7{r8c7 r7c9} ==> r7c2≠7
biv-chain-rn[3]: r2n6{c6 c1} - r5n6{c1 c7} - r8n6{c7 c6} ==> r1c6≠6, r7c6≠6
biv-chain-rn[3]: r3n2{c1 c7} - r9n2{c7 c6} - r4n2{c6 c1} ==> r1c1≠2, r6c1≠2
biv-chain-rn[3]: r3n2{c7 c1} - r4n2{c1 c6} - r9n2{c6 c7} ==> r1c7≠2, r7c7≠2
biv-chain-rn[3]: r3n3{c1 c6} - r4n3{c6 c7} - r9n3{c7 c1} ==> r1c1≠3, r7c1≠3
biv-chain-bn[2]: b1n3{r3c1 r1c2} - b1n2{r1c2 r3c1} ==> r3c1≠7, r3c1≠8, r3c1≠9
biv-chain-bn[2]: b1n2{r1c2 r3c1} - b1n3{r3c1 r1c2} ==> r1c2≠7, r1c2≠8, r1c2≠9
biv-chain-rn[3]: r3n3{c6 c1} - r9n3{c1 c7} - r4n3{c7 c6} ==> r1c6≠3
biv-chain-rn[3]: r4n2{c6 c1} - r3n2{c1 c7} - r9n2{c7 c6} ==> r7c6≠2
biv-chain-rn[3]: r4n3{c7 c6} - r3n3{c6 c1} - r9n3{c1 c7} ==> r6c7≠3, r7c7≠3
biv-chain-bn[2]: b9n3{r9c7 r7c8} - b9n2{r7c8 r9c7} ==> r9c7≠1, r9c7≠4
biv-chain-bn[2]: b9n2{r7c8 r9c7} - b9n3{r9c7 r7c8} ==> r7c8≠1, r7c8≠4
biv-chain-rn[3]: r5n6{c7 c1} - r2n6{c1 c6} - r8n6{c6 c7} ==> r6c7≠6, r7c7≠6
biv-chain-bn[2]: b6n6{r6c9 r5c7} - b6n5{r5c7 r6c9} ==> r6c9≠1, r6c9≠4, r6c9≠9
biv-chain-bn[2]: b6n5{r5c7 r6c9} - b6n6{r6c9 r5c7} ==> r5c7≠1, r5c7≠4, r5c7≠9
biv-chain-rc[2]: r7c7{n4 n1} - r9c9{n1 n4} ==> r7c9≠4, r8c7≠4
biv-chain-rc[2]: r9c9{n1 n4} - r7c7{n4 n1} ==> r7c9≠1, r8c7≠1
biv-chain-rn[3]: r5n5{c6 c7} - r2n5{c7 c1} - r8n5{c1 c6} ==> r7c6≠5
biv-chain-bn[2]: b8n5{r8c6 r7c4} - b8n6{r7c4 r8c6} ==> r8c6≠1, r8c6≠4
biv-chain-bn[2]: b8n6{r7c4 r8c6} - b8n5{r8c6 r7c4} ==> r7c4≠1, r7c4≠4, r7c4≠9
biv-chain[3]: r5n7{c2 c1} - r5n6{c1 c7} - r8c7{n6 n7} ==> r8c2≠7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
biv-chain-rn[2]: r2n7{c2 c7} - r8n7{c7 c1} ==> r1c1≠7
biv-chain-rn[3]: r8n7{c1 c7} - r2n7{c7 c2} - r5n7{c2 c1} ==> r7c1≠7
biv-chain-bn[2]: b7n5{r7c3 r8c1} - b7n7{r8c1 r7c3} ==> r7c3≠4, r7c3≠8, r7c3≠9
biv-chain-cn[3]: c1n7{r5 r8} - c1n5{r8 r2} - c1n6{r2 r5} ==> r5c1≠1, r5c1≠4, r5c1≠9
biv-chain-rn[3]: r8n7{c7 c1} - r5n7{c1 c2} - r2n7{c2 c7} ==> r1c7≠7
biv-chain-cn[3]: c7n7{r2 r8} - c7n6{r8 r5} - c7n5{r5 r2} ==> r2c7≠4, r2c7≠8, r2c7≠9
biv-chain-rn[2]: r2n4{c8 c6} - r5n4{c6 c8} ==> r1c8≠4, r6c8≠4
biv-chain-rn[2]: r5n4{c6 c8} - r2n4{c8 c6} ==> r1c6≠4
biv-chain-bn[2]: b2n4{r2c6 r1c4} - b2n6{r1c4 r2c6} ==> r2c6≠8, r2c6≠9
biv-chain-bn[2]: b2n6{r1c4 r2c6} - b2n4{r2c6 r1c4} ==> r1c4≠1, r1c4≠7, r1c4≠9
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r2c7=5
naked-single ==> r2c1=6
naked-single ==> r1c3=5
naked-single ==> r7c3=7
naked-single ==> r7c9=6
naked-single ==> r6c9=5
naked-single ==> r7c4=5
naked-single ==> r8c6=6
naked-single ==> r8c7=7
naked-single ==> r8c1=5
naked-single ==> r2c6=4
naked-single ==> r1c4=6
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r5c1=7
naked-single ==> r5c7=6
naked-single ==> r5c2=9
naked-single ==> r5c6=5
hidden-single-in-a-column ==> r9c4=1
naked-single ==> r9c9=4
naked-single ==> r7c7=1
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r7c1=4
hidden-single-in-a-row ==> r7c6=9
hidden-single-in-a-row ==> r6c3=6
hidden-single-in-a-block ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r1c9=7
naked-single ==> r3c3=8
naked-single ==> r1c1=9
naked-single ==> r9c3=9
naked-single ==> r3c7=2
naked-single ==> r1c8=1
naked-single ==> r1c6=8
naked-single ==> r1c5=3
naked-single ==> r1c2=2
naked-single ==> r6c2=8
naked-single ==> r4c1=2
naked-single ==> r4c6=3
naked-single ==> r4c7=8
naked-single ==> r6c1=1
naked-single ==> r6c7=9
naked-single ==> r7c2=3
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r9c1=8
naked-single ==> r3c6=1
naked-single ==> r6c5=2
naked-single ==> r9c6=2
naked-single ==> r3c1=3
naked-single ==> r9c7=3
naked-single ==> r6c8=3
naked-single ==> r6c4=4
PUZZLE 0 IS SOLVED. rating-type = TyBC+BC, MOST COMPLEX RULE TRIED = BC[3]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-22271>
Puzzle ...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5. :
init-time = 0.19s, solve-time = 0.5s, total-time = 0.69s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyBC+BC
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************





--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

1-step solutions with absurdly long chains


(find-sudoku-1-steppers-wrt-resolution-theory "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5." W1)
...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.
20 givens, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6654>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18621>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
CURRENT RESOLUTION STATE:
   2356789   23789     56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23789     4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      12349     7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

Resolution state after rules in W1:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

Looking for the W1-anti-backdoors.
15 W1-ANTI-BACKDOORS FOUND:
n6r1c3 n5r1c9 n5r2c1 n6r2c6 n7r2c7 n6r5c1 n7r5c2 n5r5c7 n5r6c4 n6r6c9 n5r7c3 n6r7c4 n7r7c9 n5r8c6 n6r8c7
anti-backdoors computation time = 1m 26.24s



Testing if candidate 613 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.
whip[14]: r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c6{n4 n5} - r8c1{n5 n7} - r2n7{c1 c7} - r1n7{c9 c4} - b2n4{r1c4 r1c6} - r2n4{c6 c8} - r5n4{c8 c7} - r5n5{c7 .} ==> r1c3≠6
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-block ==> r2c7=5
hidden-single-in-a-block ==> r6c9=5
hidden-single-in-a-column ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[14]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-96426>
solve-time = 11m 40.76s
nb-facts = <Fact-96426>



Testing if candidate n5r1c9 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[16]: r2n5{c7 c1} - r2n6{c1 c6} - c4n6{r1 r7} - c4n5{r7 r6} - r5n5{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c1{n4 n7} - r2n7{c1 c7} - r2n4{c7 c8} - r5n4{c8 c6} - c4n4{r6 r1} - r1n7{c4 c3} - r1n6{c3 .} ==> r1c9≠5
hidden-single-in-a-column ==> r6c9=5
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-block ==> r7c9=6
hidden-single-in-a-block ==> r8c6=6
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c9=7
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c1=7
hidden-single-in-a-row ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[16]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-101545>
solve-time = 15m 20.55s
nb-facts = <Fact-101545>



Testing if candidate n5r2c1 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: r2n6{c1 c6} - c4n6{r1 r7} - c4n5{r7 r6} - r5n5{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c1{n4 n7} - r2n7{c1 c7} - r2n4{c7 c8} - r5n4{c8 c6} - c4n4{r6 r1} - r1n7{c4 c3} - r1n6{c3 .} ==> r2c1≠5
hidden-single-in-a-row ==> r2c7=5
hidden-single-in-a-column ==> r6c9=5
hidden-single-in-a-block ==> r5c6=5
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-block ==> r7c9=6
hidden-single-in-a-block ==> r8c6=6
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-99088>
solve-time = 9m 49.14s
nb-facts = <Fact-99088>




Testing if candidate n6r2c6 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c4n6{r1 r7} - c9n6{r7 r6} - c3n6{r6 r1} - c1n6{r2 r5} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c6{n4 n5} - r8c1{n5 n7} - r2n7{c1 c7} - r1n7{c9 c4} - b2n4{r1c4 r1c6} - r2n4{c6 c8} - r5n4{c8 c7} - r5n5{c7 .} ==> r2c6≠6
hidden-single-in-a-row ==> r2c1=6
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-block ==> r5c7=6
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-block ==> r2c7=5
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r7c3=7
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r9c4=1
naked-single ==> r9c9=4
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r7c1=4
hidden-single-in-a-block ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r1c9=7
naked-single ==> r3c3=8
naked-single ==> r9c3=9
naked-single ==> r6c9=5
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c1=9
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r9c7=3
naked-single ==> r7c7=1
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c2=3
naked-single ==> r7c6=9
naked-single ==> r9c6=2
naked-single ==> r3c6=1
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r7c9=6
naked-single ==> r6c4=4
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-90581>
solve-time = 6m 34.78s
nb-facts = <Fact-90581>





Testing if candidate n7r2c7 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c9n7{r3 r7} - c9n6{r7 r6} - r5n6{c7 c1} - r2n6{c1 c6} - r1n6{c6 c3} - c3n7{r1 r3} - r1n7{c2 c4} - c1n7{r1 r8} - r8c2{n7 n1} - r8c5{n1 n4} - r2n4{c5 c8} - r1n4{c9 c6} - r8c6{n4 n5} - r5n5{c6 c7} - r5n4{c7 .} ==> r2c7≠7
whip[1]: r2n7{c2 .} ==> r1c1≠7, r1c2≠7, r1c3≠7, r3c1≠7, r3c3≠7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c1=5
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-row ==> r6c9=5
hidden-single-in-a-row ==> r6c3=6
hidden-single-in-a-column ==> r7c9=6
hidden-single-in-a-row ==> r1c3=5
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r9c4=1
naked-single ==> r9c9=4
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r7c1=4
hidden-single-in-a-block ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r1c9=7
naked-single ==> r3c3=8
naked-single ==> r9c3=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c1=9
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r9c7=3
naked-single ==> r7c7=1
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c2=3
naked-single ==> r7c6=9
naked-single ==> r9c6=2
naked-single ==> r3c6=1
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r6c4=4
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-99990>
solve-time = 11m 49.25s
nb-facts = <Fact-99990>




Testing if candidate n6r5c1 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c3n6{r6 r1} - c3n5{r1 r7} - c3n7{r7 r3} - r2n7{c2 c7} - r1n7{c9 c4} - b2n6{r1c4 r2c6} - r8n6{c6 c7} - b9n7{r8c7 r7c9} - c1n7{r7 r8} - r8n5{c1 c6} - r8n4{c6 c5} - r2n4{c5 c8} - r1n4{c9 c6} - r5n4{c6 c7} - r5n5{c7 .} ==> r5c1≠6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-block ==> r2c7=5
hidden-single-in-a-block ==> r6c9=5
hidden-single-in-a-column ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-89194>
solve-time = 4m 31.27s
nb-facts = <Fact-89194>




Testing if candidate n7r5c2 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
CURRENT RESOLUTION STATE:
   2356789   23789     56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23789     4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      12349     7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

solve-time = 2.68s
nb-facts = 0

   2356789   23789     56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23789     4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      12349     7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

Testing if candidate 557 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip-rn[14]: r2n5{c7 c1} - r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r2n7{c2 c7} - r8n7{c7 c1} - r8n5{c1 c6} - r8n4{c6 c5} - r2n4{c5 c8} - r5n4{c8 c6} - r1n4{c6 c4} - r1n7{c4 c3} - r1n6{c3 .} ==> r5c7≠5
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-block ==> r7c9=6
hidden-single-in-a-block ==> r8c6=6
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c9=7
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c1=7
hidden-single-in-a-block ==> r6c9=5
hidden-single-in-a-row ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[14]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-83634>
solve-time = 1m 42.69s
nb-facts = <Fact-83634>





Testing if candidate n5r6c4 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip-rn[15]: r5n5{c6 c7} - r2n5{c7 c1} - r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r2n7{c2 c7} - r8n7{c7 c1} - r8n5{c1 c6} - r8n4{c6 c5} - r2n4{c5 c8} - r5n4{c8 c6} - r1n4{c6 c4} - r1n7{c4 c3} - r1n6{c3 .} ==> r6c4≠5
hidden-single-in-a-block ==> r5c6=5
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-block ==> r7c9=6
hidden-single-in-a-block ==> r8c6=6
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c9=7
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c1=7
hidden-single-in-a-block ==> r6c9=5
hidden-single-in-a-row ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-87209>
solve-time = 3m 10.45s
nb-facts = <Fact-87209>




Testing if candidate n6r6c9 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c3n6{r6 r1} - r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c6{n4 n5} - r8c1{n5 n7} - r2n7{c1 c7} - r1n7{c9 c4} - b2n4{r1c4 r1c6} - r2n4{c6 c8} - r5n4{c8 c7} - r5n5{c7 .} ==> r6c9≠6
hidden-single-in-a-column ==> r7c9=6
hidden-single-in-a-block ==> r8c6=6
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-row ==> r2c7=5
hidden-single-in-a-column ==> r6c9=5
hidden-single-in-a-block ==> r5c6=5
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r5c7=6
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-97296>
solve-time = 12m 25.92s
nb-facts = <Fact-97296>





Testing if candidate n5r7c3 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip-rn[15]: r8n5{c1 c6} - r5n5{c6 c7} - r2n5{c7 c1} - r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r2n7{c2 c7} - r8n7{c7 c1} - r8n4{c1 c5} - r2n4{c5 c8} - r5n4{c8 c6} - r1n4{c6 c4} - r1n7{c4 c3} - r1n6{c3 .} ==> r7c3≠5
hidden-single-in-a-column ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-column ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c9=7
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c1=7
hidden-single-in-a-block ==> r6c9=5
hidden-single-in-a-row ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-88984>
solve-time = 4m 15.65s
nb-facts = <Fact-88984>





Testing if candidate n6r7c4 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c9n6{r7 r6} - c3n6{r6 r1} - c1n6{r2 r5} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c6{n4 n5} - r8c1{n5 n7} - r2n7{c1 c7} - r1n7{c9 c4} - b2n6{r1c4 r2c6} - r2n4{c6 c8} - r1n4{c9 c6} - r5n4{c6 c7} - r5n5{c7 .} ==> r7c4≠6
hidden-single-in-a-column ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-row ==> r2c7=5
hidden-single-in-a-column ==> r6c9=5
hidden-single-in-a-block ==> r5c6=5
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r7c9=6
hidden-single-in-a-block ==> r8c6=6
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r5c7=6
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-95032>
solve-time = 9m 58.67s
nb-facts = <Fact-95032>





Testing if candidate n7r7c9 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c9n6{r7 r6} - r5n6{c7 c1} - c3n6{r6 r1} - c3n7{r1 r3} - c4n7{r3 r1} - b2n6{r1c4 r2c6} - r8n6{c6 c7} - c7n7{r8 r2} - c1n7{r2 r8} - r8n5{c1 c6} - r8n4{c6 c5} - r2n4{c5 c8} - r1n4{c9 c6} - r5n4{c6 c7} - r5n5{c7 .} ==> r7c9≠7
whip[1]: b9n7{r8c7 .} ==> r1c7≠7, r2c7≠7, r3c7≠7
whip[1]: r2n7{c2 .} ==> r1c1≠7, r1c2≠7, r1c3≠7, r3c1≠7, r3c3≠7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c1=5
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-row ==> r6c9=5
hidden-single-in-a-row ==> r6c3=6
hidden-single-in-a-column ==> r7c9=6
hidden-single-in-a-row ==> r1c3=5
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r9c4=1
naked-single ==> r9c9=4
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r7c1=4
hidden-single-in-a-block ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r1c9=7
naked-single ==> r3c3=8
naked-single ==> r9c3=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c1=9
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r9c7=3
naked-single ==> r7c7=1
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c2=3
naked-single ==> r7c6=9
naked-single ==> r9c6=2
naked-single ==> r3c6=1
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r6c4=4
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-103040>
solve-time = 21m 37.55s
nb-facts = <Fact-103040>






Testing if candidate n5r8c6 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip-rn[14]: r5n5{c6 c7} - r2n5{c7 c1} - r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} - r5n7{c1 c2} - r2n7{c2 c7} - r8n7{c7 c1} - r8n4{c1 c5} - r2n4{c5 c8} - r5n4{c8 c6} - r1n4{c6 c4} - r1n7{c4 c3} - r1n6{c3 .} ==> r8c6≠5
hidden-single-in-a-row ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r6c3=6
hidden-single-in-a-row ==> r5c7=6
hidden-single-in-a-row ==> r5c6=5
hidden-single-in-a-column ==> r7c4=5
hidden-single-in-a-column ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-column ==> r7c3=7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
naked-single ==> r8c6=6
naked-single ==> r8c7=7
hidden-single-in-a-block ==> r1c9=7
hidden-single-in-a-block ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r5c1=7
hidden-single-in-a-block ==> r6c9=5
hidden-single-in-a-row ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = TyW[14]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-82509>
solve-time = 1m 59.1s
nb-facts = <Fact-82509>






Testing if candidate n6r8c7 is a 1-stepper:
, 265 candidates
entering BRT
Starting_init_links_with_<Fact-6634>
265 candidates, 2088 csp-links and 2088 links. Density = 5.97%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-18601>

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates.

whip[15]: c9n6{r7 r6} - c3n6{r6 r1} - c1n6{r2 r5} - r5n7{c1 c2} - r8c2{n7 n1} - r8c5{n1 n4} - r8c6{n4 n5} - r8c1{n5 n7} - r2n7{c1 c7} - r1n7{c9 c4} - b2n6{r1c4 r2c6} - r2n4{c6 c8} - r1n4{c9 c6} - r5n4{c6 c7} - r5n5{c7 .} ==> r8c7≠6
hidden-single-in-a-row ==> r8c6=6
hidden-single-in-a-block ==> r1c4=6
hidden-single-in-a-block ==> r2c1=6
hidden-single-in-a-row ==> r2c7=5
hidden-single-in-a-column ==> r6c9=5
hidden-single-in-a-block ==> r5c6=5
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r8c1=5
hidden-single-in-a-block ==> r1c3=5
hidden-single-in-a-column ==> r7c9=6
hidden-single-in-a-row ==> r2c2=7
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c6=4
naked-single ==> r5c1=7
naked-single ==> r5c7=6
naked-single ==> r8c7=7
hidden-single-in-a-row ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = W[15]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-95749>
solve-time = 11m 25.83s
nb-facts = <Fact-95749>




Total computation time = 2h 7m 53.8s
14 1-steppers have been found:
(613 519 521 626 727 651 557 564 669 573 674 779 586 687)




--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

fewer steps with only Subsets:
(solve-sudoku-with-fewer-steps-wrt-W1 "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.")


1st try: 8 steps
Resolution state after Singles:
  +-------------------------+-------------------------+-------------------------+
  ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
  ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
  ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
  +-------------------------+-------------------------+-------------------------+
  ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
  ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
  ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
  +-------------------------+-------------------------+-------------------------+
  ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
  ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
  ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
  +-------------------------+-------------------------+-------------------------+

265 candidates, 2088 csp-links and 2088 links. Density = 5.97%
Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.

Resolution state after Singles and whips[1]:
  +-------------------------+-------------------------+-------------------------+
  ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
  ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
  ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
  +-------------------------+-------------------------+-------------------------+
  ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
  ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
  ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
  +-------------------------+-------------------------+-------------------------+
  ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
  ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
  ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
  +-------------------------+-------------------------+-------------------------+

===> STEP #1
There remains 265 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 265 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 1.65s
===> 35 candidates can be eliminated with the current set of rules:
max-value obtained=8
===> Among these, there are 8 candidates with the best score (8) n7r1c1 n7r1c2 n7r1c7 n7r3c1 n7r3c7 n7r7c1 n7r7c2 n7r7c7
===> Eliminating randomly chosen candidate n7r1c2 and applying rules in W1, considered as "zero-step"
swordfish-in-columns: n7{c3 c4 c9}{r7 r3 r1} ==> r1c2≠7, r7c7≠7, r7c2≠7, r7c1≠7, r3c7≠7, r3c1≠7, r1c7≠7, r1c1≠7
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.76s
nb-facts = 0

  235689    2389      56789     14679     13489     134689    124589    1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         12349     13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  124689    1289      4689      1459      12349     7         1345689   1348      14569
  134589    1389      45789     14569     12489     1245689   12346     1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 6m 2.63s


===> STEP #2
There remains 257 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 257 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 5m 9.21s
===> 27 candidates can be eliminated with the current set of rules:
max-value obtained=6
===> Among these, there are 12 candidates with the best score (6) n6r1c1 n6r1c6 n1r4c6 n4r4c6 n9r4c6 n6r6c1 n1r6c5 n4r6c5 n9r6c5 n6r6c7 n6r7c6 n6r7c7
===> Eliminating randomly chosen candidate n6r7c7 and applying rules in W1, considered as "zero-step"
swordfish-in-columns: n6{c3 c4 c9}{r6 r1 r7} ==> r7c7≠6, r7c6≠6, r6c7≠6, r6c1≠6, r1c6≠6, r1c1≠6
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.71s
nb-facts = 0

  23589     2389      56789     14679     13489     13489     124589    1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         12349     13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      12349     7         134589    1348      14569
  134589    1389      45789     14569     12489     124589    1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 5m 10.14s


===> STEP #3
There remains 251 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 251 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...........................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 4m 41.29s
===> 25 candidates can be eliminated with the current set of rules:
max-value obtained=6
===> Among these, there are 6 candidates with the best score (6) n1r4c6 n4r4c6 n9r4c6 n1r6c5 n4r6c5 n9r6c5
===> Eliminating randomly chosen candidate n4r4c6 and applying rules in W1, considered as "zero-step"
hidden-pairs-in-a-block: b5{n2 n3}{r4c6 r6c5} ==> r4c6≠4, r6c5≠9, r6c5≠4, r6c5≠1, r4c6≠9, r4c6≠1
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.61s
nb-facts = 0

  23589     2389      56789     14679     13489     13489     124589    1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      23        7         134589    1348      14569
  134589    1389      45789     14569     12489     124589    1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 4m 42.09s


===> STEP #4
There remains 245 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 245 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.....................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 48.68s
===> 19 candidates can be eliminated with the current set of rules:
max-value obtained=5
===> Among these, there are 15 candidates with the best score (5) n2r1c1 n3r1c1 n5r1c1 n3r1c6 n2r1c7 n5r1c7 n2r6c1 n3r6c7 n5r6c7 n3r7c1 n5r7c1 n2r7c6 n5r7c6 n2r7c7 n3r7c7
===> Eliminating randomly chosen candidate n5r1c1 and applying rules in W1, considered as "zero-step"
swordfish-in-rows: n5{r2 r5 r8}{c1 c7 c6} ==> r1c1≠5, r7c6≠5, r7c1≠5, r6c7≠5, r1c7≠5
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.58s
nb-facts = 0

  2389      2389      56789     14679     13489     13489     12489     1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      23        7         13489     1348      14569
  13489     1389      45789     14569     12489     12489     1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 3m 49.45s


===> STEP #5
There remains 240 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 240 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 30.74s
===> 48 candidates can be eliminated with the current set of rules:
max-value obtained=8
===> Among these, there are 12 candidates with the best score (8) n1r1c4 n4r1c4 n9r1c4 n1r1c9 n4r1c9 n9r1c9 n4r2c7 n8r2c7 n9r2c7 n4r7c3 n8r7c3 n9r7c3
===> Eliminating randomly chosen candidate n1r1c9 and applying rules in W1, considered as "zero-step"
hidden-triplets-in-a-row: r1{n5 n6 n7}{c9 c3 c4} ==> r1c9≠1, r1c9≠9, r1c9≠4, r1c4≠9, r1c4≠4, r1c4≠1, r1c3≠9, r1c3≠8
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.48s
nb-facts = 0

  2389      2389      567       67        13489     13489     12489     1248      57
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      23        7         13489     1348      14569
  13489     1389      45789     14569     12489     12489     1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 3m 31.39s


===> STEP #6
There remains 232 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 232 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
........................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 2m 56.96s
===> 40 candidates can be eliminated with the current set of rules:
max-value obtained=8
===> Among these, there are 6 candidates with the best score (8) n4r2c7 n8r2c7 n9r2c7 n4r7c3 n8r7c3 n9r7c3
===> Eliminating randomly chosen candidate n4r2c7 and applying rules in W1, considered as "zero-step"
hidden-triplets-in-a-column: c7{n5 n6 n7}{r2 r5 r8} ==> r2c7≠4, r8c7≠4, r8c7≠1, r5c7≠9, r5c7≠4, r5c7≠1, r2c7≠9, r2c7≠8
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.39s
nb-facts = 0

   2389      2389      567       67        13489     13489     12489     1248      57
   56789     789       1         2         489       4689      57        48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      56        14        2
   12489     1289      4689      1459      23        7         13489     1348      14569
   13489     1389      45789     14569     12489     12489     1234      1234      1467
   1457      17        2         3         14        1456      67        9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 2m 57.51s


===> STEP #7
There remains 224 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 224 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 2m 25.24s
===> 33 candidates can be eliminated with the current set of rules:
max-value obtained=44
===> Among these, there are 5 candidates with the best score (44) n1r5c1 n4r5c1 n9r5c1 n1r8c1 n4r8c1
===> Eliminating randomly chosen candidate n4r5c1 and applying rules in W1, considered as "zero-step"
hidden-triplets-in-a-column: c1{n5 n6 n7}{r8 r2 r5} ==> r5c1≠4, r8c1≠4, r8c1≠1, r5c1≠9, r5c1≠1, r2c1≠9, r2c1≠8
whip[1]: r8n4{c6 .} ==> r7c4≠4, r7c5≠4, r7c6≠4, r9c4≠4, r9c6≠4
whip[1]: c4n4{r6 .} ==> r5c5≠4, r5c6≠4
hidden-single-in-a-row ==> r5c8=4
naked-single ==> r2c8=8
hidden-single-in-a-block ==> r1c7=4
whip[1]: b3n9{r3c9 .} ==> r3c1≠9, r3c3≠9, r3c4≠9, r3c6≠9
PUZZLE 0 IS NOT SOLVED. 58 VALUES MISSING.
solve-time = 0.4s
nb-facts = 0

   2389      2389      567       67        1389      1389      4         12        57
   567       79        1         2         49        469       57        8         3
   238       4         78        17        5         138       129       6         179
   12489     5         489       149       6         23        1389      7         19
   67        179       3         8         19        159       56        4         2
   12489     1289      4689      1459      23        7         1389      13        1569
   13489     1389      45789     1569      1289      1289      123       123       1467
   57        17        2         3         14        1456      67        9         8
   13489     6         489       19        7         1289      123       5         14

best-step-computation-time = 2m 25.76s


===> STEP #8
There remains 180 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 180 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...................................Stopping evaluation: solution found.

find and eval erasable candidates computation time = 10.32s
===> 1 candidates can be eliminated with the current set of rules:
max-value obtained=180
===> Among these, there is only one candidate with the best score (180): n9r2c6
===> Eliminating candidate n9r2c6 and applying rules in W1, considered as "zero-step"
hidden-pairs-in-a-column: c6{n4 n6}{r2 r8} ==> r2c6≠9, r8c6≠5, r8c6≠1
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r5c6=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r8c1=5
naked-single ==> r2c1=6
naked-single ==> r2c6=4
naked-single ==> r2c5=9
naked-single ==> r2c2=7
naked-single ==> r1c3=5
naked-single ==> r1c9=7
naked-single ==> r1c4=6
naked-single ==> r2c7=5
naked-single ==> r3c3=8
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r4c3=4
naked-single ==> r6c3=6
naked-single ==> r9c3=9
naked-single ==> r7c3=7
naked-single ==> r9c4=1
naked-single ==> r3c4=7
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c9=5
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c1=9
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r9c7=3
naked-single ==> r7c7=1
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c6=9
naked-single ==> r9c6=2
naked-single ==> r3c6=1
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r6c4=4
naked-single ==> r9c9=4
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r8c6=6
naked-single ==> r8c7=7
PUZZLE 0 IS SOLVED. rating-type = SFin, MOST COMPLEX RULE TRIED = HP
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

best-step-computation-time = 10.5s


Total computation time = 28m 49.87s
sequence of 8 eliminations = n7r1c2 n6r7c7 n4r4c6 n5r1c1 n1r1c9 n4r2c7 n4r5c1 n9r2c6



The resolution path can be reconstructed as follows from the sequence of eliminations:

(reconstruct-sudoku-resolution-path-wrt-RT0 W1
    "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5."
    n7r1c2 n6r7c7 n4r4c6 n5r1c1 n1r1c9 n4r2c7 n4r5c1 n9r2c6
)

...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.
Resolution state after Singles:
  +-------------------------+-------------------------+-------------------------+
  ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
  ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
  ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
  +-------------------------+-------------------------+-------------------------+
  ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
  ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
  ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
  +-------------------------+-------------------------+-------------------------+
  ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
  ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
  ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
  +-------------------------+-------------------------+-------------------------+

265 candidates, 2088 csp-links and 2088 links. Density = 5.97%
Starting non trivial part of solution.

Resolution state after Singles and whips[1]:
  +-------------------------+-------------------------+-------------------------+
  ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
  ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
  ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
  +-------------------------+-------------------------+-------------------------+
  ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
  ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
  ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
  +-------------------------+-------------------------+-------------------------+
  ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
  ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
  ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
  +-------------------------+-------------------------+-------------------------+

265 candidates.

PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
Final resolution state:
  2356789   23789     56789     14679     13489     134689    1245789   1248      14579
  56789     789       1         2         489       4689      45789     48        3
  23789     4         789       179       5         1389      12789     6         179
  12489     5         489       149       6         12349     13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  124689    1289      4689      1459      12349     7         1345689   1348      14569
  1345789   13789     45789     14569     12489     1245689   123467    1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #1
swordfish-in-columns: n7{c3 c4 c9}{r7 r3 r1} ==> r1c2≠7, r7c7≠7, r7c2≠7, r7c1≠7, r3c7≠7, r3c1≠7, r1c7≠7, r1c1≠7
solve-time = 0.63s
nb-facts = 0

  235689    2389      56789     14679     13489     134689    124589    1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         12349     13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  124689    1289      4689      1459      12349     7         1345689   1348      14569
  134589    1389      45789     14569     12489     1245689   12346     1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #2
swordfish-in-columns: n6{c3 c4 c9}{r6 r1 r7} ==> r7c7≠6, r7c6≠6, r6c7≠6, r6c1≠6, r1c6≠6, r1c1≠6
solve-time = 0.72s
nb-facts = 0

  23589     2389      56789     14679     13489     13489     124589    1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         12349     13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      12349     7         134589    1348      14569
  134589    1389      45789     14569     12489     124589    1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #3
hidden-pairs-in-a-block: b5{n2 n3}{r4c6 r6c5} ==> r4c6≠4, r6c5≠9, r6c5≠4, r6c5≠1, r4c6≠9, r4c6≠1
solve-time = 0.62s
nb-facts = 0

  23589     2389      56789     14679     13489     13489     124589    1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      23        7         134589    1348      14569
  134589    1389      45789     14569     12489     124589    1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #4
swordfish-in-rows: n5{r2 r5 r8}{c1 c7 c6} ==> r1c1≠5, r7c6≠5, r7c1≠5, r6c7≠5, r1c7≠5
solve-time = 0.86s
nb-facts = 0

  2389      2389      56789     14679     13489     13489     12489     1248      14579
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      23        7         13489     1348      14569
  13489     1389      45789     14569     12489     12489     1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #5
hidden-triplets-in-a-row: r1{n5 n6 n7}{c9 c3 c4} ==> r1c9≠1, r1c9≠9, r1c9≠4, r1c4≠9, r1c4≠4, r1c4≠1, r1c3≠9, r1c3≠8
solve-time = 0.78s
nb-facts = 0

  2389      2389      567       67        13489     13489     12489     1248      57
  56789     789       1         2         489       4689      45789     48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      14569     14        2
  12489     1289      4689      1459      23        7         13489     1348      14569
  13489     1389      45789     14569     12489     12489     1234      1234      1467
  1457      17        2         3         14        1456      1467      9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #6
hidden-triplets-in-a-column: c7{n5 n6 n7}{r2 r5 r8} ==> r2c7≠4, r8c7≠4, r8c7≠1, r5c7≠9, r5c7≠4, r5c7≠1, r2c7≠9, r2c7≠8
solve-time = 0.73s
nb-facts = 0

  2389      2389      567       67        13489     13489     12489     1248      57
  56789     789       1         2         489       4689      57        48        3
  2389      4         789       179       5         1389      1289      6         179
  12489     5         489       149       6         23        13489     7         149
  14679     179       3         8         149       1459      56        14        2
  12489     1289      4689      1459      23        7         13489     1348      14569
  13489     1389      45789     14569     12489     12489     1234      1234      1467
  1457      17        2         3         14        1456      67        9         8
  13489     6         489       149       7         12489     1234      5         14



=====> STEP #7
hidden-triplets-in-a-column: c1{n5 n6 n7}{r8 r2 r5} ==> r5c1≠4, r8c1≠4, r8c1≠1, r5c1≠9, r5c1≠1, r2c1≠9, r2c1≠8
whip[1]: r8n4{c6 .} ==> r7c4≠4, r7c5≠4, r7c6≠4, r9c4≠4, r9c6≠4
whip[1]: c4n4{r6 .} ==> r5c5≠4, r5c6≠4
hidden-single-in-a-row ==> r5c8=4
naked-single ==> r2c8=8
hidden-single-in-a-block ==> r1c7=4
whip[1]: b3n9{r3c9 .} ==> r3c1≠9, r3c3≠9, r3c4≠9, r3c6≠9
solve-time = 0.7s
nb-facts = 0

  2389      2389      567       67        1389      1389      4         12        57
  567       79        1         2         49        469       57        8         3
  238       4         78        17        5         138       129       6         179
  12489     5         489       149       6         23        1389      7         19
  67        179       3         8         19        159       56        4         2
  12489     1289      4689      1459      23        7         1389      13        1569
  13489     1389      45789     1569      1289      1289      123       123       1467
  57        17        2         3         14        1456      67        9         8
  13489     6         489       19        7         1289      123       5         14



=====> STEP #8
hidden-pairs-in-a-column: c6{n4 n6}{r2 r8} ==> r2c6≠9, r8c6≠5, r8c6≠1
hidden-single-in-a-block ==> r7c4=5
hidden-single-in-a-block ==> r5c6=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r8c1=5
naked-single ==> r2c1=6
naked-single ==> r2c6=4
naked-single ==> r2c5=9
naked-single ==> r2c2=7
naked-single ==> r1c3=5
naked-single ==> r1c9=7
naked-single ==> r1c4=6
naked-single ==> r2c7=5
naked-single ==> r3c3=8
naked-single ==> r8c2=1
naked-single ==> r5c2=9
naked-single ==> r4c3=4
naked-single ==> r6c3=6
naked-single ==> r9c3=9
naked-single ==> r7c3=7
naked-single ==> r9c4=1
naked-single ==> r3c4=7
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c9=5
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c1=9
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r9c7=3
naked-single ==> r7c7=1
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c6=9
naked-single ==> r9c6=2
naked-single ==> r3c6=1
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r6c4=4
naked-single ==> r9c9=4
naked-single ==> r8c5=4
naked-single ==> r5c5=1
naked-single ==> r8c6=6
naked-single ==> r8c7=7
PUZZLE 0 IS SOLVED. rating-type = TyW+W+SFin, MOST COMPLEX RULE TRIED = HP
  925638417
  671294583
  348751269
  254963871
  793815642
  186427935
  437589126
  512346798
  869172354

nb-facts = <Fact-118160>
solve-time = 0.1s
nb-facts = <Fact-118160>


Total reconstruction time of resolution path=10.92s


--------------------------------------------------------------------------------------

Next tries:

Total computation time = 28m 47.51s
sequence of 8 eliminations = n7r1c7 n9r6c5 n6r6c1 n5r6c7 n1r1c4 n9r2c7 n1r8c1 n9r2c6


Total computation time = 34m 1.04s
sequence of 11 eliminations = n7r3c1 n9r4c6 n6r6c7 n3r1c6 n2r7c6 n4r7c8 n5r6c7 n1r8c1 n9r1c4 n4r2c7 n9r2c6


Total computation time = 30m 44.62s
sequence of 10 eliminations = n7r1c2 n6r6c1 n1r6c5 n5r6c7 n9r7c3 n4r1c4 n4r9c7 n1r8c1 n8r2c7 n9r1c2


Total computation time = 32m 43.12s
sequence of 11 eliminations = n7r7c2 n9r4c6 n6r6c7 n2r7c7 n3r1c1 n1r7c8 n5r7c6 n1r8c1 n4r1c4 n8r1c7 n9r2c6



--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

fewer steps with only Subsets and whips[≤4]

(solve-sudoku-with-fewer-steps-wrt-W1 "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.")

1st try: 8 steps:
...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.
Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates, 2088 csp-links and 2088 links. Density = 5.97%
Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

=====> STEP #1
There remains 265 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 265 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 11m 34.93s
===> 44 candidates can be eliminated with the current set of rules:
max-value obtained=8
===> Among these, there are 8 candidates with the best score (8) n7r1c1 n7r1c2 n7r1c7 n7r3c1 n7r3c7 n7r7c1 n7r7c2 n7r7c7
===> Eliminating randomly chosen candidate n7r3c1 and applying rules in W1, considered as "zero-step"
swordfish-in-columns: n7{c3 c4 c9}{r7 r3 r1} ==> r3c1≠7, r7c7≠7, r7c2≠7, r7c1≠7, r3c7≠7, r1c7≠7, r1c2≠7, r1c1≠7
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 1.15s
nb-facts = 0

   235689    2389      56789     14679     13489     134689    124589    1248      14579
   56789     789       1         2         489       4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      12349     7         1345689   1348      14569
   134589    1389      45789     14569     12489     1245689   12346     1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 11m 37.21s


=====> STEP #2
There remains 257 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 257 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 11m 4.53s
===> 50 candidates can be eliminated with the current set of rules:
max-value obtained=24
===> Among these, there is only one candidate with the best score (24): n7r8c2
===> Eliminating candidate n7r8c2 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r5n7{c2 c1} - r5n6{c1 c7} - c9n6{r6 r7} - b9n7{r7c9 r8c7} ==> r8c2≠7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.98s
nb-facts = 0

   235689    2389      56789     14679     1389      134689    124589    1248      14579
   56789     789       1         2         89        4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     79        3         8         19        1459      14569     14        2
   124689    289       4689      1459      1239      7         1345689   1348      14569
   34589     389       45789     1569      1289      125689    12346     1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 11m 6.34s


=====> STEP #3
There remains 233 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 233 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 21.1s
===> 56 candidates can be eliminated with the current set of rules:
max-value obtained=6
===> Among these, there are 6 candidates with the best score (6) n6r1c1 n6r1c6 n6r6c1 n6r6c7 n6r7c6 n6r7c7
===> Eliminating randomly chosen candidate n6r1c6 and applying rules in W1, considered as "zero-step"
swordfish-in-columns: n6{c3 c4 c9}{r6 r1 r7} ==> r1c6≠6, r7c7≠6, r7c6≠6, r6c7≠6, r6c1≠6, r1c1≠6
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.73s
nb-facts = 0

   23589     2389      56789     14679     1389      13489     124589    1248      14579
   56789     789       1         2         89        4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     79        3         8         19        1459      14569     14        2
   12489     289       4689      1459      1239      7         134589    1348      14569
   34589     389       45789     1569      1289      12589     1234      1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 6m 22.63s


=====> STEP #4
There remains 227 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 227 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 28.16s
===> 57 candidates can be eliminated with the current set of rules:
max-value obtained=5
===> Among these, there are 20 candidates with the best score (5) n2r1c1 n3r1c1 n5r1c1 n3r1c6 n2r1c7 n5r1c7 n1r4c6 n4r4c6 n9r4c6 n2r6c1 n1r6c5 n9r6c5 n3r6c7 n5r6c7 n3r7c1 n5r7c1 n2r7c6 n5r7c6 n2r7c7 n3r7c7
===> Eliminating randomly chosen candidate n2r7c6 and applying rules in W1, considered as "zero-step"
swordfish-in-rows: n2{r3 r4 r9}{c7 c1 c6} ==> r7c6≠2, r7c7≠2, r6c1≠2, r1c7≠2, r1c1≠2
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.79s
nb-facts = 0

   3589      2389      56789     14679     1389      13489     14589     1248      14579
   56789     789       1         2         89        4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     79        3         8         19        1459      14569     14        2
   1489      289       4689      1459      1239      7         134589    1348      14569
   34589     389       45789     1569      1289      1589      134       1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 6m 29.72s


=====> STEP #5
There remains 222 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 222 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
..............................................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 32.97s
===> 59 candidates can be eliminated with the current set of rules:
max-value obtained=5
===> Among these, there are 15 candidates with the best score (5) n3r1c1 n5r1c1 n3r1c6 n5r1c7 n1r4c6 n4r4c6 n9r4c6 n1r6c5 n9r6c5 n3r6c7 n5r6c7 n3r7c1 n5r7c1 n5r7c6 n3r7c7
===> Eliminating randomly chosen candidate n5r1c7 and applying rules in W1, considered as "zero-step"
swordfish-in-rows: n5{r2 r5 r8}{c1 c7 c6} ==> r1c7≠5, r7c6≠5, r7c1≠5, r6c7≠5, r1c1≠5
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 1.09s
nb-facts = 0

   389       2389      56789     14679     1389      13489     1489      1248      14579
   56789     789       1         2         89        4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     79        3         8         19        1459      14569     14        2
   1489      289       4689      1459      1239      7         13489     1348      14569
   3489      389       45789     1569      1289      189       134       1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 6m 34.85s


=====> STEP #6
There remains 217 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 217 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................................
find and eval erasable candidates computation time = 7m 17.07s
===> 58 candidates can be eliminated with the current set of rules:
max-value obtained=10
===> Among these, there are 6 candidates with the best score (10) n1r1c4 n4r1c4 n9r1c4 n1r1c9 n4r1c9 n9r1c9
===> Eliminating randomly chosen candidate n1r1c9 and applying rules in W1, considered as "zero-step"
hidden-triplets-in-a-row: r1{n5 n6 n7}{c9 c3 c4} ==> r1c9≠1, r1c9≠9, r1c9≠4, r1c4≠9, r1c4≠4, r1c4≠1, r1c3≠9, r1c3≠8
whip[1]: c4n4{r6 .} ==> r4c6≠4, r5c6≠4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.96s
nb-facts = 0

   389       2389      567       67        1389      13489     1489      1248      57
   56789     789       1         2         89        4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         1239      13489     7         149
   14679     79        3         8         19        159       14569     14        2
   1489      289       4689      1459      1239      7         13489     1348      14569
   3489      389       45789     1569      1289      189       134       1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 7m 18.7s


=====> STEP #7
There remains 207 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 207 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...............................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 29.59s
===> 52 candidates can be eliminated with the current set of rules:
max-value obtained=13
===> Among these, there are 3 candidates with the best score (13) n1r5c1 n4r5c1 n9r5c1
===> Eliminating randomly chosen candidate n9r5c1 and applying rules in W1, considered as "zero-step"
hidden-triplets-in-a-column: c1{n5 n6 n7}{r8 r2 r5} ==> r5c1≠9, r5c1≠4, r5c1≠1, r2c1≠9, r2c1≠8
whip[1]: r5n4{c8 .} ==> r4c7≠4, r4c9≠4, r6c7≠4, r6c8≠4, r6c9≠4
whip[1]: c9n4{r9 .} ==> r7c7≠4, r7c8≠4, r9c7≠4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 1.05s
nb-facts = 0

   389       2389      567       67        1389      13489     1489      1248      57
   567       789       1         2         89        4689      45789     48        3
   2389      4         789       179       5         1389      1289      6         179
   12489     5         489       149       6         1239      1389      7         19
   67        79        3         8         19        159       14569     14        2
   1489      289       4689      1459      1239      7         1389      138       1569
   3489      389       45789     1569      1289      189       13        123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      123       5         14

best-step-computation-time = 6m 31.3s


=====> STEP #8
There remains 194 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 194 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
......................................Stopping evaluation: solution found.

find and eval erasable candidates computation time = 1m 6.15s
===> 1 candidates can be eliminated with the current set of rules:
max-value obtained=194
===> Among these, there is only one candidate with the best score (194): n8r2c5
===> Eliminating candidate n8r2c5 and applying rules in W1, considered as "zero-step"
whip[4]: r2c8{n8 n4} - c7n4{r2 r5} - b6n6{r5c7 r6c9} - b6n5{r6c9 .} ==> r2c5≠8
naked-single ==> r2c5=9
naked-single ==> r5c5=1
naked-single ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c6=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r8c1=5
naked-single ==> r2c1=6
naked-single ==> r1c3=5
naked-single ==> r1c9=7
naked-single ==> r1c4=6
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r8c7=7
naked-single ==> r8c6=6
hidden-single-in-a-row ==> r1c7=4
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r6c9=5
naked-single ==> r6c8=3
naked-single ==> r4c7=8
naked-single ==> r4c1=2
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r1c8=1
naked-single ==> r3c7=2
naked-single ==> r7c8=2
naked-single ==> r7c5=8
naked-single ==> r1c5=3
naked-single ==> r1c6=8
naked-single ==> r7c1=4
naked-single ==> r7c9=6
naked-single ==> r9c1=8
naked-single ==> r6c1=1
naked-single ==> r7c2=3
naked-single ==> r7c7=1
naked-single ==> r7c4=5
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c7=3
naked-single ==> r3c6=1
naked-single ==> r3c4=7
naked-single ==> r9c6=2
naked-single ==> r4c6=3
naked-single ==> r6c2=8
naked-single ==> r6c7=9
naked-single ==> r6c5=2
naked-single ==> r9c9=4
naked-single ==> r6c4=4
naked-single ==> r9c4=1
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W+SFin, MOST COMPLEX RULE TRIED = W[4]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-44755>
solve-time = 1.17s
nb-facts = <Fact-44755>

best-step-computation-time = 1m 7.37s


Total computation time = 57m 8.58s
sequence of 8 eliminations = n7r3c1 n7r8c2 n6r1c6 n2r7c6 n5r1c7 n1r1c9 n9r5c1 n8r2c5




2nd try:
Total computation time = 1h 17m 57.7s
sequence of 10 eliminations = n7r1c7 n7r8c2 n6r7c6 n3r1c1 n2r1c1 n4r9c7 n5r7c6 n9r1c9 n1r5c1 n8r1c7



3rd try:
Total computation time = 1h 1m 7.51s
sequence of 8 eliminations = n7r7c7 n7r8c2 n6r7c6 n3r1c1 n5r6c7 n4r1c4 n1r5c1 n8r2c5



Exercise for the reader: is it possible to get fewer steps with more tries? (I do not think there can be a path with significantly fewer steps in S+W4.)


--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------

fewer steps with only whips[≤4] (to be compared to the 40 steps with the simplest-first strategy)

(solve-sudoku-with-fewer-steps-wrt-W1 "...........12....3.4..5..6..5..6..7...38....2.....7..............23...98.6..7..5.")

1st try: 18 steps:

Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

265 candidates, 2088 csp-links and 2088 links. Density = 5.97%
Starting non trivial part of solution.
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 2356789 23789   56789   ! 14679   13489   134689  ! 1245789 1248    14579   !
   ! 56789   789     1       ! 2       489     4689    ! 45789   48      3       !
   ! 23789   4       789     ! 179     5       1389    ! 12789   6       179     !
   +-------------------------+-------------------------+-------------------------+
   ! 12489   5       489     ! 149     6       12349   ! 13489   7       149     !
   ! 14679   179     3       ! 8       149     1459    ! 14569   14      2       !
   ! 124689  1289    4689    ! 1459    12349   7       ! 1345689 1348    14569   !
   +-------------------------+-------------------------+-------------------------+
   ! 1345789 13789   45789   ! 14569   12489   1245689 ! 123467  1234    1467    !
   ! 1457    17      2       ! 3       14      1456    ! 1467    9       8       !
   ! 13489   6       489     ! 149     7       12489   ! 1234    5       14      !
   +-------------------------+-------------------------+-------------------------+

=====> STEP #1
There remains 265 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 265 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 28.61s
===> 43 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there are 6 candidates with the best score (3) n1r4c6 n4r4c6 n9r4c6 n1r6c5 n4r6c5 n9r6c5
===> Eliminating randomly chosen candidate n4r6c5 and applying rules in W1, considered as "zero-step"
biv-chain-bn[2]: b5n2{r6c5 r4c6} - b5n3{r4c6 r6c5} ==> r6c5≠4, r6c5≠1, r6c5≠9
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.23s
nb-facts = 0

   2356789   23789     56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23789     4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         12349     13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      23        7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 6m 29.92s


=====> STEP #2
There remains 262 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 262 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
......................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 6m 11.27s
===> 44 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there are 5 candidates with the best score (3) n8r1c2 n9r1c2 n1r4c6 n4r4c6 n9r4c6
===> Eliminating randomly chosen candidate n9r4c6 and applying rules in W1, considered as "zero-step"
biv-chain-bn[2]: b5n2{r4c6 r6c5} - b5n3{r6c5 r4c6} ==> r4c6≠9, r4c6≠1, r4c6≠4
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.23s
nb-facts = 0

   2356789   23789     56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23789     4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      23        7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 6m 12.46s


=====> STEP #3
There remains 259 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 259 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 5m 41.32s
===> 45 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there are 4 candidates with the best score (3) n8r1c2 n9r1c2 n8r3c1 n9r3c1
===> Eliminating randomly chosen candidate n9r3c1 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r3n2{c1 c7} - r9n2{c7 c6} - r4c6{n2 n3} - r3n3{c6 c1} ==> r3c1≠9, r3c1≠7, r3c1≠8
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.26s
nb-facts = 0

   2356789   23789     56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      23        7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 5m 42.58s


=====> STEP #4
There remains 256 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 256 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
................................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 5m 36.3s
===> 42 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there are 2 candidates with the best score (3) n8r1c2 n9r1c2
===> Eliminating randomly chosen candidate n8r1c2 and applying rules in W1, considered as "zero-step"
biv-chain[4]: c2n2{r1 r6} - r6c5{n2 n3} - c8n3{r6 r7} - c2n3{r7 r1} ==> r1c2≠8, r1c2≠7, r1c2≠9
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.23s
nb-facts = 0

   2356789   23        56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      23        7         1345689   1348      14569
   1345789   13789     45789     14569     12489     1245689   123467    1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 5m 37.42s


=====> STEP #5
There remains 253 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 253 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.............................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 5m 13.47s
===> 39 candidates can be eliminated with the current set of rules:
max-value obtained=2
===> Among these, there are 20 candidates with the best score (2) n5r1c1 n6r1c1 n6r1c6 n2r1c7 n5r1c7 n2r6c1 n6r6c1 n3r6c7 n5r6c7 n6r6c7 n3r7c1 n5r7c1 n6r7c6 n2r7c7 n3r7c7 n6r7c7 n1r7c8 n4r7c8 n1r9c7 n4r9c7
===> Eliminating randomly chosen candidate n3r7c7 and applying rules in W1, considered as "zero-step"
biv-chain-rn[3]: r4n3{c7 c6} - r3n3{c6 c1} - r9n3{c1 c7} ==> r7c7≠3, r6c7≠3
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.29s
nb-facts = 0

   2356789   23        56789     14679     13489     134689    1245789   1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      23        7         145689    1348      14569
   1345789   13789     45789     14569     12489     1245689   12467     1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 5m 14.72s


=====> STEP #6
There remains 251 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 251 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...........................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 5m 19.94s
===> 37 candidates can be eliminated with the current set of rules:
max-value obtained=2
===> Among these, there are 18 candidates with the best score (2) n5r1c1 n6r1c1 n6r1c6 n2r1c7 n5r1c7 n2r6c1 n6r6c1 n5r6c7 n6r6c7 n3r7c1 n5r7c1 n6r7c6 n2r7c7 n6r7c7 n1r7c8 n4r7c8 n1r9c7 n4r9c7
===> Eliminating randomly chosen candidate n2r7c7 and applying rules in W1, considered as "zero-step"
biv-chain-rn[3]: r3n2{c7 c1} - r4n2{c1 c6} - r9n2{c6 c7} ==> r7c7≠2, r1c7≠2
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.32s
nb-facts = 0

   2356789   23        56789     14679     13489     134689    145789    1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   124689    1289      4689      1459      23        7         145689    1348      14569
   1345789   13789     45789     14569     12489     1245689   1467      1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 5m 21.25s


=====> STEP #7
There remains 249 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 249 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 5m 7.41s
===> 35 candidates can be eliminated with the current set of rules:
max-value obtained=2
===> Among these, there are 16 candidates with the best score (2) n5r1c1 n6r1c1 n6r1c6 n5r1c7 n2r6c1 n6r6c1 n5r6c7 n6r6c7 n3r7c1 n5r7c1 n6r7c6 n6r7c7 n1r7c8 n4r7c8 n1r9c7 n4r9c7
===> Eliminating randomly chosen candidate n2r6c1 and applying rules in W1, considered as "zero-step"
biv-chain-rn[3]: r3n2{c1 c7} - r9n2{c7 c6} - r4n2{c6 c1} ==> r6c1≠2, r1c1≠2
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.3s
nb-facts = 0

   356789    23        56789     14679     13489     134689    145789    1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   14689     1289      4689      1459      23        7         145689    1348      14569
   1345789   13789     45789     14569     12489     1245689   1467      1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 5m 8.51s


=====> STEP #8
There remains 247 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 247 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.......................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 4m 49.44s
===> 33 candidates can be eliminated with the current set of rules:
max-value obtained=2
===> Among these, there are 15 candidates with the best score (2) n5r1c1 n6r1c1 n6r1c6 n5r1c7 n6r6c1 n5r6c7 n6r6c7 n3r7c1 n5r7c1 n6r7c6 n6r7c7 n1r7c8 n4r7c8 n1r9c7 n4r9c7
===> Eliminating randomly chosen candidate n5r6c7 and applying rules in W1, considered as "zero-step"
biv-chain-rn[3]: r2n5{c7 c1} - r8n5{c1 c6} - r5n5{c6 c7} ==> r6c7≠5, r1c7≠5
PUZZLE 0 IS NOT SOLVED. 61 VALUES MISSING.
solve-time = 0.31s
nb-facts = 0

   356789    23        56789     14679     13489     134689    14789     1248      14579
   56789     789       1         2         489       4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     179       3         8         149       1459      14569     14        2
   14689     1289      4689      1459      23        7         14689     1348      14569
   1345789   13789     45789     14569     12489     1245689   1467      1234      1467
   1457      17        2         3         14        1456      1467      9         8
   13489     6         489       149       7         12489     1234      5         14

best-step-computation-time = 4m 50.55s


=====> STEP #9
There remains 245 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 245 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.....................................................................................................................................................................................................................................................
find and eval erasable candidates computation time = 4m 47.94s
===> 32 candidates can be eliminated with the current set of rules:
max-value obtained=23
===> Among these, there is only one candidate with the best score (23): n7r8c2
===> Eliminating candidate n7r8c2 and applying rules in W1, considered as "zero-step"
whip[4]: r5n7{c2 c1} - r2n7{c1 c7} - c7n5{r2 r5} - r5n6{c7 .} ==> r8c2≠7
naked-single ==> r8c2=1
naked-single ==> r8c5=4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.36s
nb-facts = 0

   356789    23        56789     14679     1389      134689    14789     1248      14579
   56789     789       1         2         89        4689      45789     48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     79        3         8         19        1459      14569     14        2
   14689     289       4689      1459      23        7         14689     1348      14569
   345789    3789      45789     1569      1289      125689    1467      1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 4m 48.9s


=====> STEP #10
There remains 222 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 222 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
..............................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 37.36s
===> 44 candidates can be eliminated with the current set of rules:
max-value obtained=4
===> Among these, there are 4 candidates with the best score (4) n8r2c1 n8r2c2 n8r2c6 n8r2c7
===> Eliminating randomly chosen candidate n8r2c2 and applying rules in W1, considered as "zero-step"
biv-chain-rc[4]: r2c5{n8 n9} - r5c5{n9 n1} - r5c8{n1 n4} - r2c8{n4 n8} ==> r2c2≠8, r2c1≠8, r2c6≠8, r2c7≠8
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.32s
nb-facts = 0

   356789    23        56789     14679     1389      134689    14789     1248      14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   14679     79        3         8         19        1459      14569     14        2
   14689     289       4689      1459      23        7         14689     1348      14569
   345789    3789      45789     1569      1289      125689    1467      1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 3m 38.26s


=====> STEP #11
There remains 218 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 218 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
..........................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 19.58s
===> 44 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there are 7 candidates with the best score (3) n4r1c8 n1r5c1 n1r5c6 n1r5c7 n4r5c7 n9r5c7 n4r6c8
===> Eliminating randomly chosen candidate n1r5c1 and applying rules in W1, considered as "zero-step"
biv-chain-rc[4]: r5c5{n1 n9} - r2c5{n9 n8} - r2c8{n8 n4} - r5c8{n4 n1} ==> r5c1≠1, r5c6≠1, r5c7≠1
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.33s
nb-facts = 0

   356789    23        56789     14679     1389      134689    14789     1248      14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   4679      79        3         8         19        459       4569      14        2
   14689     289       4689      1459      23        7         14689     1348      14569
   345789    3789      45789     1569      1289      125689    1467      1234      1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 3m 20.47s


=====> STEP #12
There remains 215 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 215 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.......................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 12.51s
===> 42 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there are 2 candidates with the best score (3) n4r1c8 n4r6c8
===> Eliminating randomly chosen candidate n4r6c8 and applying rules in W1, considered as "zero-step"
biv-chain-rc[4]: r2c8{n4 n8} - r2c5{n8 n9} - r5c5{n9 n1} - r5c8{n1 n4} ==> r6c8≠4, r1c8≠4, r7c8≠4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.32s
nb-facts = 0

   356789    23        56789     14679     1389      134689    14789     128       14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   4679      79        3         8         19        459       4569      14        2
   14689     289       4689      1459      23        7         14689     138       14569
   345789    3789      45789     1569      1289      125689    1467      123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 3m 13.37s


=====> STEP #13
There remains 212 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 212 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
....................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 2.21s
===> 39 candidates can be eliminated with the current set of rules:
max-value obtained=2
===> Among these, there are 18 candidates with the best score (2) n5r1c1 n6r1c1 n9r1c5 n6r1c6 n9r2c1 n4r5c7 n9r5c7 n6r6c1 n9r6c2 n6r6c7 n3r7c1 n5r7c1 n9r7c2 n9r7c5 n6r7c6 n6r7c7 n1r9c7 n4r9c7
===> Eliminating randomly chosen candidate n6r7c6 and applying rules in W1, considered as "zero-step"
biv-chain-rn[3]: r2n6{c6 c1} - r5n6{c1 c7} - r8n6{c7 c6} ==> r7c6≠6, r1c6≠6
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.31s
nb-facts = 0

   356789    23        56789     14679     1389      13489     14789     128       14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   4679      79        3         8         19        459       4569      14        2
   14689     289       4689      1459      23        7         14689     138       14569
   345789    3789      45789     1569      1289      12589     1467      123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 3m 3.04s


=====> STEP #14
There remains 210 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 210 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
..................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 0.57s
===> 37 candidates can be eliminated with the current set of rules:
max-value obtained=2
===> Among these, there are 16 candidates with the best score (2) n5r1c1 n6r1c1 n9r1c5 n9r2c1 n4r5c7 n9r5c7 n6r6c1 n9r6c2 n6r6c7 n3r7c1 n5r7c1 n9r7c2 n9r7c5 n6r7c7 n1r9c7 n4r9c7
===> Eliminating randomly chosen candidate n6r6c1 and applying rules in W1, considered as "zero-step"
biv-chain-rn[3]: r2n6{c1 c6} - r8n6{c6 c7} - r5n6{c7 c1} ==> r6c1≠6, r1c1≠6
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.34s
nb-facts = 0

   35789     23        56789     14679     1389      13489     14789     128       14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   4679      79        3         8         19        459       4569      14        2
   1489      289       4689      1459      23        7         14689     138       14569
   345789    3789      45789     1569      1289      12589     1467      123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 3m 1.43s


=====> STEP #15
There remains 208 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 208 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
................................................................................................................................................................................................................
find and eval erasable candidates computation time = 3m 2.3s
===> 42 candidates can be eliminated with the current set of rules:
max-value obtained=3
===> Among these, there is only one candidate with the best score (3): n8r1c3
===> Eliminating candidate n8r1c3 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r1n6{c3 c4} - b8n6{r7c4 r8c6} - r8n5{c6 c1} - c3n5{r7 r1} ==> r1c3≠8, r1c3≠7, r1c3≠9
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.38s
nb-facts = 0

   35789     23        56        14679     1389      13489     14789     128       14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   4679      79        3         8         19        459       4569      14        2
   1489      289       4689      1459      23        7         14689     138       14569
   345789    3789      45789     1569      1289      12589     1467      123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 3m 3.17s


=====> STEP #16
There remains 205 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 205 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.............................................................................................................................................................................................................
find and eval erasable candidates computation time = 2m 57.18s
===> 44 candidates can be eliminated with the current set of rules:
max-value obtained=4
===> Among these, there are 3 candidates with the best score (4) n1r1c4 n4r1c4 n9r1c4
===> Eliminating randomly chosen candidate n4r1c4 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r1n6{c4 c3} - c3n5{r1 r7} - c3n7{r7 r3} - b2n7{r3c4 r1c4} ==> r1c4≠4, r1c4≠1, r1c4≠9
whip[1]: c4n4{r6 .} ==> r5c6≠4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.4s
nb-facts = 0

   35789     23        56        67        1389      13489     14789     128       14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        13489     7         149
   4679      79        3         8         19        59        4569      14        2
   1489      289       4689      1459      23        7         14689     138       14569
   345789    3789      45789     1569      1289      12589     1467      123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 2m 58.04s


=====> STEP #17
There remains 201 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 201 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
.........................................................................................................................................................................................................
find and eval erasable candidates computation time = 2m 51.73s
===> 42 candidates can be eliminated with the current set of rules:
max-value obtained=5
===> Among these, there is only one candidate with the best score (5): n4r5c1
===> Eliminating candidate n4r5c1 and applying rules in W1, considered as "zero-step"
whip[4]: c1n6{r5 r2} - r2n5{c1 c7} - r2n7{c7 c2} - r5n7{c2 .} ==> r5c1≠4
whip[1]: r5n4{c8 .} ==> r4c7≠4, r4c9≠4, r6c7≠4, r6c9≠4
PUZZLE 0 IS NOT SOLVED. 59 VALUES MISSING.
solve-time = 0.42s
nb-facts = 0

   35789     23        56        67        1389      13489     14789     128       14579
   5679      79        1         2         89        469       4579      48        3
   23        4         789       179       5         1389      12789     6         179
   12489     5         489       149       6         23        1389      7         19
   679       79        3         8         19        59        4569      14        2
   1489      289       4689      1459      23        7         1689      138       1569
   345789    3789      45789     1569      1289      12589     1467      123       1467
   57        1         2         3         4         56        67        9         8
   3489      6         489       19        7         1289      1234      5         14

best-step-computation-time = 2m 52.56s


=====> STEP #18
There remains 196 candidates after the rules in W1 have been applied.

===> CHECKING WHICH OF THE 196 REMAINING CANDIDATES CAN BE ELIMINATED BY THE CURRENT SET OF RULES AND EVALUATING THEM:
...................................................................................................Stopping evaluation: solution found.

find and eval erasable candidates computation time = 1m 18.66s
===> 1 candidates can be eliminated with the current set of rules:
max-value obtained=196
===> Among these, there is only one candidate with the best score (196): n4r5c7
===> Eliminating candidate n4r5c7 and applying rules in W1, considered as "zero-step"
biv-chain[4]: r5n6{c7 c1} - r2n6{c1 c6} - r8c6{n6 n5} - r5n5{c6 c7} ==> r5c7≠4, r5c7≠9
hidden-single-in-a-block ==> r5c8=4
naked-single ==> r2c8=8
naked-single ==> r2c5=9
naked-single ==> r2c2=7
naked-single ==> r5c2=9
naked-single ==> r5c6=5
naked-single ==> r5c7=6
naked-single ==> r5c1=7
naked-single ==> r8c1=5
naked-single ==> r2c1=6
naked-single ==> r1c3=5
naked-single ==> r2c6=4
naked-single ==> r2c7=5
naked-single ==> r8c7=7
naked-single ==> r8c6=6
naked-single ==> r5c5=1
hidden-single-in-a-column ==> r1c4=6
hidden-single-in-a-block ==> r3c4=7
hidden-single-in-a-block ==> r1c9=7
hidden-single-in-a-block ==> r1c7=4
naked-single ==> r7c7=1
naked-single ==> r9c9=4
naked-single ==> r7c9=6
hidden-single-in-a-column ==> r9c4=1
hidden-single-in-a-row ==> r1c1=9
naked-single ==> r3c3=8
naked-single ==> r4c3=4
naked-single ==> r4c4=9
naked-single ==> r4c9=1
naked-single ==> r3c9=9
naked-single ==> r3c7=2
naked-single ==> r1c8=1
naked-single ==> r3c1=3
naked-single ==> r1c2=2
naked-single ==> r6c2=8
naked-single ==> r4c1=2
naked-single ==> r4c6=3
naked-single ==> r1c6=8
naked-single ==> r1c5=3
naked-single ==> r4c7=8
naked-single ==> r6c5=2
naked-single ==> r7c5=8
naked-single ==> r7c1=4
naked-single ==> r6c1=1
naked-single ==> r6c7=9
naked-single ==> r7c2=3
naked-single ==> r7c8=2
naked-single ==> r7c6=9
naked-single ==> r7c3=7
naked-single ==> r9c6=2
naked-single ==> r3c6=1
naked-single ==> r9c1=8
naked-single ==> r9c7=3
naked-single ==> r6c9=5
naked-single ==> r6c8=3
naked-single ==> r6c4=4
naked-single ==> r7c4=5
naked-single ==> r6c3=6
naked-single ==> r9c3=9
PUZZLE 0 IS SOLVED. rating-type = TyW+W, MOST COMPLEX RULE TRIED = BC[4]
   925638417
   671294583
   348751269
   254963871
   793815642
   186427935
   437589126
   512346798
   869172354

nb-facts = <Fact-20057>
solve-time = 0.39s
nb-facts = <Fact-20057>


best-step-computation-time = 1m 19.1s


Total computation time = 1h 15m 56.19s
sequence of 18 eliminations = n4r6c5 n9r4c6 n9r3c1 n8r1c2 n3r7c7 n2r7c7 n2r6c1 n5r6c7 n7r8c2 n8r2c2 n1r5c1 n4r6c8 n6r7c6 n6r6c1 n8r1c3 n4r1c4 n4r5c1 n4r5c7





2nd try:
Total computation time = 1h 5m 20.61s
sequence of 15 eliminations = n1r6c5 n9r1c2 n1r4c6 n8r3c1 n3r7c1 n1r7c8 n6r6c1 n7r8c2 n8r2c6 n1r5c7 n1r9c7 n9r1c5 n9r5c7 n7r1c4 n6r1c3






Exercise for the reader: is it possible to get fewer steps (in W4 with Subsets) with more tries? (Likely.)
