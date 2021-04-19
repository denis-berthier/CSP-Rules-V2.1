http://forum.enjoysudoku.com/lightning-8-2-t38909.html

...1...8.
..3...9..
.62..3...
.1..2....
2..87...3
....4..1.
...9..84.
..6...1..
.4...5...

+-------+-------+-------+
! . . . ! 1 . . ! . 8 . !
! . . 3 ! . . . ! 9 . . !
! . 6 2 ! . . 3 ! . . . !
+-------+-------+-------+
! . 1 . ! . 2 . ! . . . !
! 2 . . ! 8 7 . ! . . 3 !
! . . . ! . 4 . ! . 1 . !
+-------+-------+-------+
! . . . ! 9 . . ! 8 4 . !
! . . 6 ! . . . ! 1 . . !
! . 4 . ! . . 5 ! . . . !
+-------+-------+-------+

...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5... #  1903 FNBTHWXY C22.m
SER = 8.2

(solve "...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = Z+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...
22 givens, 239 candidates
entering BRT
hidden-single-in-a-row ==> r5c6 = 1
hidden-single-in-a-row ==> r1c7 = 3
Starting_init_links_with_<Fact-3695>

Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 4579    579     4579    ! 1       569     24679   ! 3       8       24567   !
   ! 14578   578     3       ! 24567   568     24678   ! 9       2567    124567  !
   ! 145789  6       2       ! 457     589     3       ! 457     57      1457    !
   +-------------------------+-------------------------+-------------------------+
   ! 3456789 1       45789   ! 356     2       69      ! 4567    5679    456789  !
   ! 2       59      459     ! 8       7       1       ! 456     569     3       !
   ! 356789  35789   5789    ! 356     4       69      ! 2567    1       256789  !
   +-------------------------+-------------------------+-------------------------+
   ! 1357    2357    157     ! 9       136     267     ! 8       4       2567    !
   ! 35789   235789  6       ! 2347    38      2478    ! 1       23579   2579    !
   ! 13789   4       1789    ! 2367    1368    5       ! 267     23679   2679    !
   +-------------------------+-------------------------+-------------------------+

230 candidates, 1589 csp-links and 1589 links. Density = 6.03%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-9590>
whip[1]: c5n3{r9 .} ==> r9c4 ≠ 3, r8c4 ≠ 3
whip[1]: c3n1{r9 .} ==> r9c1 ≠ 1, r7c1 ≠ 1
whip[1]: r5n6{c8 .} ==> r6c9 ≠ 6, r4c7 ≠ 6, r4c8 ≠ 6, r4c9 ≠ 6, r6c7 ≠ 6
whip[1]: c5n5{r3 .} ==> r3c4 ≠ 5, r2c4 ≠ 5
whip[1]: c5n9{r3 .} ==> r1c6 ≠ 9

Resolution state after Singles and whips[1]:
   +-------------------------+-------------------------+-------------------------+
   ! 4579    579     4579    ! 1       569     2467    ! 3       8       24567   !
   ! 14578   578     3       ! 2467    568     24678   ! 9       2567    124567  !
   ! 145789  6       2       ! 47      589     3       ! 457     57      1457    !
   +-------------------------+-------------------------+-------------------------+
   ! 3456789 1       45789   ! 356     2       69      ! 457     579     45789   !
   ! 2       59      459     ! 8       7       1       ! 456     569     3       !
   ! 356789  35789   5789    ! 356     4       69      ! 257     1       25789   !
   +-------------------------+-------------------------+-------------------------+
   ! 357     2357    157     ! 9       136     267     ! 8       4       2567    !
   ! 35789   235789  6       ! 247     38      2478    ! 1       23579   2579    !
   ! 3789    4       1789    ! 267     1368    5       ! 267     23679   2679    !
   +-------------------------+-------------------------+-------------------------+


Entering_relation_bivalue_with_<Fact-9600>
Entering_level_S2_with_<Fact-9697>
naked-pairs-in-a-column: c6{r4 r6}{n6 n9} ==> r7c6 ≠ 6, r2c6 ≠ 6, r1c6 ≠ 6
whip[1]: c6n6{r6 .} ==> r4c4 ≠ 6, r6c4 ≠ 6
hidden-pairs-in-a-row: r3{n8 n9}{c1 c5} ==> r3c5 ≠ 5, r3c1 ≠ 7, r3c1 ≠ 5, r3c1 ≠ 4, r3c1 ≠ 1
hidden-single-in-a-block ==> r2c1 = 1
hidden-single-in-a-block ==> r3c9 = 1
whip[1]: r3n5{c8 .} ==> r1c9 ≠ 5, r2c8 ≠ 5, r2c9 ≠ 5
whip[1]: b1n4{r1c3 .} ==> r1c6 ≠ 4, r1c9 ≠ 4
naked-pairs-in-a-column: c6{r1 r7}{n2 n7} ==> r8c6 ≠ 7, r8c6 ≠ 2, r2c6 ≠ 7, r2c6 ≠ 2
x-wing-in-rows: n6{r1 r7}{c5 c9} ==> r9c9 ≠ 6, r9c5 ≠ 6, r2c9 ≠ 6, r2c5 ≠ 6
finned-x-wing-in-rows: n8{r3 r9}{c5 c1} ==> r8c1 ≠ 8
Entering_level_BC2_with_<Fact-9893>
Entering_level_Z2_with_<Fact-10320>
Entering_level_S3_with_<Fact-10879>
Entering_level_BC3_with_<Fact-10955>
biv-chain[3]: c1n6{r6 r4} - r4n3{c1 c4} - b5n5{r4c4 r6c4} ==> r6c1 ≠ 5
biv-chain[3]: c4n6{r9 r2} - b2n2{r2c4 r1c6} - c6n7{r1 r7} ==> r9c4 ≠ 7
biv-chain[3]: r7c6{n7 n2} - r9c4{n2 n6} - r7n6{c5 c9} ==> r7c9 ≠ 7
Entering_level_Z3_with_<Fact-12012>
z-chain[3]: r9c4{n2 n6} - r2n6{c4 c8} - c8n2{r2 .} ==> r9c9 ≠ 2
z-chain[3]: r9c4{n2 n6} - r2n6{c4 c8} - c8n2{r2 .} ==> r9c7 ≠ 2
hidden-single-in-a-column ==> r6c7 = 2
Entering_level_S4_with_<Fact-13704>
Entering_level_BC4_with_<Fact-13780>
biv-chain[4]: r3n8{c1 c5} - r2c6{n8 n4} - c9n4{r2 r4} - b6n8{r4c9 r6c9} ==> r6c1 ≠ 8
Entering_level_Z4_with_<Fact-16009>
z-chain[4]: c8n3{r8 r9} - r9n2{c8 c4} - b8n6{r9c4 r7c5} - r7n3{c5 .} ==> r8c2 ≠ 3
z-chain[4]: c8n3{r8 r9} - r9n2{c8 c4} - b8n6{r9c4 r7c5} - r7n3{c5 .} ==> r8c1 ≠ 3
z-chain[4]: r2n6{c4 c8} - r2n2{c8 c9} - b3n4{r2c9 r3c7} - r3c4{n4 .} ==> r2c4 ≠ 7
biv-chain[4]: b2n7{r3c4 r1c6} - b2n2{r1c6 r2c4} - r9c4{n2 n6} - r9c7{n6 n7} ==> r3c7 ≠ 7
biv-chain[4]: b2n7{r1c6 r3c4} - r3n4{c4 c7} - c9n4{r2 r4} - c1n4{r4 r1} ==> r1c1 ≠ 7
z-chain[2]: b1n7{r2c2 r1c3} - c6n7{r1 .} ==> r7c2 ≠ 7
z-chain[4]: r9n1{c5 c3} - r9n8{c3 c1} - r3n8{c1 c5} - r8c5{n8 .} ==> r9c5 ≠ 3
biv-chain[3]: r7n6{c9 c5} - c5n3{r7 r8} - b9n3{r8c8 r9c8} ==> r9c8 ≠ 6
biv-chain[4]: r9c7{n7 n6} - r7n6{c9 c5} - c5n3{r7 r8} - b9n3{r8c8 r9c8} ==> r9c8 ≠ 7
biv-chain[4]: r9n2{c8 c4} - b8n6{r9c4 r7c5} - c5n3{r7 r8} - b9n3{r8c8 r9c8} ==> r9c8 ≠ 9
biv-chain[4]: b8n3{r7c5 r8c5} - b9n3{r8c8 r9c8} - r9n2{c8 c4} - b8n6{r9c4 r7c5} ==> r7c5 ≠ 1
hidden-single-in-a-block ==> r9c5 = 1
hidden-single-in-a-block ==> r7c3 = 1
whip[1]: r9n8{c3 .} ==> r8c2 ≠ 8
biv-chain[4]: r8c5{n3 n8} - r3n8{c5 c1} - c2n8{r2 r6} - c2n3{r6 r7} ==> r7c5 ≠ 3
naked-single ==> r7c5 = 6
naked-single ==> r9c4 = 2
naked-single ==> r7c6 = 7
naked-single ==> r1c6 = 2
naked-single ==> r8c4 = 4
naked-single ==> r2c4 = 6
naked-single ==> r3c4 = 7
naked-single ==> r3c8 = 5
naked-single ==> r3c7 = 4
naked-single ==> r8c6 = 8
naked-single ==> r2c6 = 4
naked-single ==> r8c5 = 3
naked-single ==> r9c8 = 3
hidden-single-in-a-column ==> r4c9 = 4
hidden-single-in-a-block ==> r5c3 = 4
hidden-single-in-a-block ==> r1c1 = 4
hidden-single-in-a-block ==> r6c9 = 8
hidden-single-in-a-column ==> r2c2 = 8
naked-single ==> r2c5 = 5
naked-single ==> r1c5 = 9
naked-single ==> r3c5 = 8
naked-single ==> r3c1 = 9
hidden-single-in-a-block ==> r1c9 = 6
hidden-single-in-a-column ==> r5c8 = 6
naked-single ==> r5c7 = 5
naked-single ==> r4c7 = 7
naked-single ==> r4c8 = 9
naked-single ==> r4c6 = 6
naked-single ==> r6c6 = 9
naked-single ==> r9c7 = 6
naked-single ==> r5c2 = 9
hidden-single-in-a-block ==> r9c3 = 9
naked-single ==> r9c9 = 7
naked-single ==> r2c9 = 2
naked-single ==> r2c8 = 7
naked-single ==> r7c9 = 5
naked-single ==> r7c1 = 3
naked-single ==> r7c2 = 2
naked-single ==> r8c9 = 9
naked-single ==> r8c8 = 2
naked-single ==> r9c1 = 8
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 8
naked-single ==> r4c4 = 3
naked-single ==> r6c4 = 5
naked-single ==> r6c3 = 7
naked-single ==> r1c3 = 5
naked-single ==> r1c2 = 7
naked-single ==> r8c2 = 5
naked-single ==> r6c1 = 6
naked-single ==> r6c2 = 3
naked-single ==> r8c1 = 7
PUZZLE 0 IS SOLVED. rating-type = Z+SFin, MOST COMPLEX RULE TRIED = z-chain[4]
   475192386
   183654972
   962783451
   518326794
   294871563
   637549218
   321967845
   756438129
   849215637

nb-facts = <Fact-25582>
Puzzle ...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5... :
init-time = 0.19s, solve-time = 2.01s, total-time = 2.21s
nb-facts = <Fact-25582>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = Z+SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************





---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
1-steppers in W12? No

in W1:
(solve "...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...")
hidden-single-in-a-row ==> r5c6 = 1
hidden-single-in-a-row ==> r1c7 = 3
whip[1]: c5n3{r9 .} ==> r9c4 ≠ 3, r8c4 ≠ 3
whip[1]: c3n1{r9 .} ==> r9c1 ≠ 1, r7c1 ≠ 1
whip[1]: r5n6{c8 .} ==> r6c9 ≠ 6, r4c7 ≠ 6, r4c8 ≠ 6, r4c9 ≠ 6, r6c7 ≠ 6
whip[1]: c5n5{r3 .} ==> r3c4 ≠ 5, r2c4 ≠ 5
whip[1]: c5n9{r3 .} ==> r1c6 ≠ 9
CURRENT RESOLUTION STATE:
   4579      579       4579      1         569       2467      3         8         24567
   14578     578       3         2467      568       24678     9         2567      124567
   145789    6         2         47        589       3         457       57        1457
   3456789   1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   356789    35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   35789     235789    6         247       38        2478      1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679

(find-anti-backdoors)

4 W1-ANTI-BACKDOORS FOUND:
n4r8c6 n9r3c5 n8r3c1 n8r2c6
computation time = 14.07s

No 1-steppers with whips[≤12]




---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

2-steppers in W8???

1) First step in W8:
(defglobal ?*RS* = (create$
   4579      579       4579      1         569       2467      3         8         24567
   14578     578       3         2467      568       24678     9         2567      124567
   145789    6         2         47        589       3         457       57        1457
   3456789   1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   356789    35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   35789     235789    6         247       38        2478      1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679
))
(init-sukaku-list ?*RS*)
, 216 candidates
CLIPS> (find-erasable-candidates-sukaku-list ?*RS*)
===> 44 candidates can be eliminated:
n4r1c6 n6r1c6 n4r1c9 n5r1c9 n4r2c1 n5r2c1 n7r2c1 n8r2c1 n7r2c4 n6r2c5 n8r2c5 n2r2c6 n6r2c6 n7r2c6 n5r2c8 n1r2c9 n5r2c9 n1r3c1 n4r3c1 n5r3c1 n7r3c1 n5r3c5 n4r3c9 n5r3c9 n7r3c9 n6r4c4 n5r6c1 n8r6c1 n6r6c4 n7r7c2 n6r7c6 n3r8c1 n8r8c1 n2r8c6 n7r8c6 n3r8c8 n3r9c1 n7r9c4 n3r9c5 n6r9c5 n2r9c8 n6r9c8 n7r9c8 n9r9c8

computation time = 1m 37.25s
(416 616 419 519 421 521 721 821 724 625 825 226 626 726 528 129 529 131 431 531 731 535 439 539 739 644 561 861 664 772 676 381 881 286 786 388 391 794 395 695 298 698 798 998)

2) second step in W1:
(defglobal ?*RS* = (create$
   4579      579       4579      1         569       2467      3         8         24567
   14578     578       3         2467      568       24678     9         2567      124567
   145789    6         2         47        589       3         457       57        1457
   3456789   1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   356789    35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   35789     235789    6         247       38        2478      1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679
))
(init-sukaku-list ?*RS*)
(defglobal ?*erasable-cands* = (list-of-nirjck-to-list-of-labels (create$
n4r1c6 n6r1c6 n4r1c9 n5r1c9 n4r2c1 n5r2c1 n7r2c1 n8r2c1 n7r2c4 n6r2c5 n8r2c5 n2r2c6 n6r2c6 n7r2c6 n5r2c8 n1r2c9 n5r2c9 n1r3c1 n4r3c1 n5r3c1 n7r3c1 n5r3c5 n4r3c9 n5r3c9 n7r3c9 n6r4c4 n5r6c1 n8r6c1 n6r6c4 n7r7c2 n6r7c6 n3r8c1 n8r8c1 n2r8c6 n7r8c6 n3r8c8 n3r9c1 n7r9c4 n3r9c5 n6r9c5 n2r9c8 n6r9c8 n7r9c8 n9r9c8)))

(find-anti-backdoor-pairs-with-one-cand-in-list ?*erasable-cands*)

44*(216-44) + 44*43/2 = 8,514 pairs expected and realised

179 W1-ANTI-BACKDOOR-PAIRS FOUND:
n9r9c8 n4r8c6     n9r9c8 n9r3c5     n9r9c8 n8r3c1     n9r9c8 n8r2c6     n7r9c8 n4r8c6     n7r9c8 n9r3c5     n7r9c8 n8r3c1     n7r9c8 n8r2c6     n6r9c8 n4r8c6     n6r9c8 n9r3c5     n6r9c8 n8r3c1     n6r9c8 n8r2c6     n2r9c8 n4r8c6     n2r9c8 n9r3c5     n2r9c8 n8r3c1     n2r9c8 n8r2c6     n6r9c5 n4r8c6     n6r9c5 n9r3c5     n6r9c5 n8r3c1     n6r9c5 n8r2c6     n3r9c5 n4r8c6     n3r9c5 n9r3c5     n3r9c5 n8r3c1     n3r9c5 n8r2c6     n7r9c4 n4r8c6     n7r9c4 n9r3c5     n7r9c4 n8r3c1     n7r9c4 n8r2c6     n3r9c1 n4r8c6     n3r9c1 n9r3c5     n3r9c1 n8r3c1     n3r9c1 n8r2c6     n3r8c8 n4r8c6     n3r8c8 n9r3c5     n3r8c8 n8r3c1     n3r8c8 n8r2c6     n7r8c6 n4r8c6     n7r8c6 n9r3c5     n7r8c6 n8r3c1     n7r8c6 n8r2c6     n2r8c6 n4r8c6     n2r8c6 n9r3c5     n2r8c6 n8r3c1     n2r8c6 n8r2c6     n8r8c1 n4r8c6     n8r8c1 n9r3c5     n8r8c1 n8r3c1     n8r8c1 n8r2c6     n3r8c1 n4r8c6     n3r8c1 n9r3c5     n3r8c1 n8r3c1     n3r8c1 n8r2c6     n6r7c6 n4r8c6     n6r7c6 n6r7c9     n6r7c6 n6r5c7     n6r7c6 n9r3c5     n6r7c6 n8r3c1     n6r7c6 n6r2c8     n6r7c6 n8r2c6     n7r7c2 n4r8c6     n7r7c2 n9r3c5     n7r7c2 n8r3c1     n7r7c2 n8r2c6     n6r6c4 n4r8c6     n6r6c4 n9r3c5     n6r6c4 n8r3c1     n6r6c4 n8r2c6     n8r6c1 n4r8c6     n8r6c1 n9r3c5     n8r6c1 n8r3c1     n8r6c1 n8r2c6     n5r6c1 n4r8c6     n5r6c1 n9r3c5     n5r6c1 n8r3c1     n5r6c1 n8r2c6     n6r4c4 n4r8c6     n6r4c4 n9r3c5     n6r4c4 n8r3c1     n6r4c4 n8r2c6     n7r3c9 n4r8c6     n7r3c9 n9r3c5     n7r3c9 n8r3c1     n7r3c9 n8r2c6     n5r3c9 n4r8c6     n5r3c9 n9r3c5     n5r3c9 n8r3c1     n5r3c9 n8r2c6     n4r3c9 n4r8c6     n4r3c9 n9r3c5     n4r3c9 n8r3c1     n4r3c9 n8r2c6     n5r3c5 n4r8c6     n5r3c5 n9r3c5     n5r3c5 n8r3c1     n5r3c5 n8r2c6     n7r3c1 n4r8c6     n7r3c1 n9r3c5     n7r3c1 n8r3c1     n7r3c1 n8r2c6     n5r3c1 n4r8c6     n5r3c1 n9r3c5     n5r3c1 n8r3c1     n5r3c1 n8r2c6     n4r3c1 n4r8c6     n4r3c1 n9r3c5     n4r3c1 n8r3c1     n4r3c1 n8r2c6     n1r3c1 n4r8c6     n1r3c1 n9r3c5     n1r3c1 n8r3c1     n1r3c1 n8r2c6     n5r2c9 n4r8c6     n5r2c9 n9r3c5     n5r2c9 n8r3c1     n5r2c9 n8r2c6     n1r2c9 n4r8c6     n1r2c9 n9r3c5     n1r2c9 n8r3c1     n1r2c9 n8r2c6     n5r2c8 n4r8c6     n5r2c8 n9r3c5     n5r2c8 n8r3c1     n5r2c8 n8r2c6     n7r2c6 n4r8c6     n7r2c6 n9r3c5     n7r2c6 n8r3c1     n7r2c6 n8r2c6     n6r2c6 n4r8c6     n6r2c6 n9r3c5     n6r2c6 n8r3c1     n6r2c6 n8r2c6     n2r2c6 n4r8c6     n2r2c6 n9r3c5     n2r2c6 n8r3c1     n2r2c6 n8r2c6     n8r2c5 n4r8c6     n8r2c5 n9r3c5     n8r2c5 n8r3c1     n8r2c5 n8r2c6     n6r2c5 n4r8c6     n6r2c5 n9r3c5     n6r2c5 n8r3c1     n6r2c5 n8r2c6     n7r2c4 n4r8c6     n7r2c4 n9r3c5     n7r2c4 n8r3c1     n7r2c4 n8r2c6     n8r2c1 n4r8c6     n8r2c1 n9r3c5     n8r2c1 n8r3c1     n8r2c1 n8r2c6     n7r2c1 n4r8c6     n7r2c1 n9r3c5     n7r2c1 n8r3c1     n7r2c1 n8r2c6     n5r2c1 n4r8c6     n5r2c1 n9r3c5     n5r2c1 n8r3c1     n5r2c1 n8r2c6     n4r2c1 n4r8c6     n4r2c1 n9r3c5     n4r2c1 n8r3c1     n4r2c1 n8r2c6     n5r1c9 n4r8c6     n5r1c9 n9r3c5     n5r1c9 n8r3c1     n5r1c9 n8r2c6     n4r1c9 n4r8c6     n4r1c9 n9r3c5     n4r1c9 n8r3c1     n4r1c9 n8r2c6     n6r1c6 n4r8c6     n6r1c6 n9r3c5     n6r1c6 n8r3c1     n6r1c6 n8r2c6     n4r1c6 n4r8c6     n4r1c6 n9r3c5     n4r1c6 n8r3c1     n4r1c6 n8r2c6
computation time = 12m 46.79s


3) third step in W8:
(defglobal ?*RS* = (create$
   4579      579       4579      1         569       2467      3         8         24567
   14578     578       3         2467      568       24678     9         2567      124567
   145789    6         2         47        589       3         457       57        1457
   3456789   1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   356789    35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   35789     235789    6         247       38        2478      1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679
))
(init-sukaku-list ?*RS*)
(load "/Users/berthier/Documents/Projets/CSP-Rules-Results/SudoRules-Results/Pattern-generated-puzzles/lightning/lightning1#241-W1-antibackdoor-pairs-forW8.txt")

(find-sukaku-2-steppers-among-pairs ?*RS* ?*W1-anti-backdoor-pairs-for-W8* )
Total computation time = 96.7292859554291
no 2-steppers found in W8







---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

FTE in 3 steps

(solve "...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...
22 givens, 239 candidates
entering BRT
hidden-single-in-a-row ==> r5c6 = 1
hidden-single-in-a-row ==> r1c7 = 3
Starting_init_links_with_<Fact-3694>

Resolution state after Singles:
   +-------------------------+-------------------------+-------------------------+
   ! 4579    579     4579    ! 1       569     24679   ! 3       8       24567   !
   ! 14578   578     3       ! 24567   568     24678   ! 9       2567    124567  !
   ! 145789  6       2       ! 457     589     3       ! 457     57      1457    !
   +-------------------------+-------------------------+-------------------------+
   ! 3456789 1       45789   ! 356     2       69      ! 4567    5679    456789  !
   ! 2       59      459     ! 8       7       1       ! 456     569     3       !
   ! 356789  35789   5789    ! 356     4       69      ! 2567    1       256789  !
   +-------------------------+-------------------------+-------------------------+
   ! 1357    2357    157     ! 9       136     267     ! 8       4       2567    !
   ! 35789   235789  6       ! 2347    38      2478    ! 1       23579   2579    !
   ! 13789   4       1789    ! 2367    1368    5       ! 267     23679   2679    !
   +-------------------------+-------------------------+-------------------------+

230 candidates, 1589 csp-links and 1589 links. Density = 6.03%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-9589>
whip[1]: c5n3{r9 .} ==> r9c4 ≠ 3, r8c4 ≠ 3
whip[1]: c3n1{r9 .} ==> r9c1 ≠ 1, r7c1 ≠ 1
whip[1]: r5n6{c8 .} ==> r6c9 ≠ 6, r4c7 ≠ 6, r4c8 ≠ 6, r4c9 ≠ 6, r6c7 ≠ 6
whip[1]: c5n5{r3 .} ==> r3c4 ≠ 5, r2c4 ≠ 5
whip[1]: c5n9{r3 .} ==> r1c6 ≠ 9
Entering_relation_bivalue_with_<Fact-9600>
Entering_relation_trivalue_with_<Fact-9697>
PUZZLE 0 IS NOT SOLVED. 57 VALUES MISSING.
CURRENT RESOLUTION STATE:
   4579      579       4579      1         569       2467      3         8         24567
   14578     578       3         2467      568       24678     9         2567      124567
   145789    6         2         47        589       3         457       57        1457
   3456789   1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   356789    35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   35789     235789    6         247       38        2478      1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679

Puzzle ...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5... :
init-time = 0.18s, solve-time = 0.19s, total-time = 0.37s
nb-facts = 0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

CLIPS> (apply-FTE-to-all-bivalue-pairs TRUE)

FORCING-T&E(W1) applied to bivalue candidates n8r2c6 and n8r8c6 :
.... 6 values decided by n8r2c6 : n8r2c6 n8r3c1 n9r3c5 n1r2c1 n1r3c9 n4r8c6
.... 57 values decided by n8r8c6 : n8r8c6 n3r8c5 n4r8c4 n7r3c4 n5r3c8 n4r3c7 n1r3c9 n1r2c1 n4r2c6 n4r4c9 n8r6c9 n2r6c7 n8r2c2 n9r3c1 n8r3c5 n9r1c5 n5r2c5 n4r5c3 n4r1c1 n7r7c6 n2r9c4 n6r2c4 n2r1c6 n6r1c9 n6r7c5 n1r9c5 n1r7c3 n3r9c8 n6r9c7 n5r5c7 n9r5c2 n6r5c8 n7r4c7 n9r4c8 n6r4c6 n9r6c6 n6r6c1 n9r8c9 n7r9c9 n8r9c1 n9r9c3 n2r8c8 n5r7c9 n3r7c1 n2r7c2 n5r4c1 n7r8c1 n5r8c2 n7r1c2 n3r6c2 n5r6c4 n5r1c3 n7r6c3 n3r4c4 n8r4c3 n7r2c8 n2r2c9
===> 2 values decided in both cases: n1r2c1 n1r3c9
===> 27 candidates eliminated in both cases: n4r1c6 n4r1c9 n5r1c9 n4r2c1 n5r2c1 n7r2c1 n8r2c1 n8r2c5 n2r2c6 n6r2c6 n7r2c6 n5r2c8 n1r2c9 n5r2c9 n1r3c1 n4r3c1 n5r3c1 n7r3c1 n5r3c5 n4r3c9 n5r3c9 n7r3c9 n8r4c1 n8r6c1 n8r8c1 n2r8c6 n7r8c6

CURRENT RESOLUTION STATE:
   4579      579       4579      1         569       267       3         8         267
   1         578       3         2467      56        48        9         267       2467
   89        6         2         47        89        3         457       57        1
   345679    1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   35679     35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   3579      235789    6         247       38        48        1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679

CLIPS> (apply-FTE-to-all-bivalue-pairs TRUE)

FORCING-T&E(W1) applied to bivalue candidates n3r8c5 and n8r8c5 :
.... 2 values decided by n3r8c5 : n3r8c5 n3r9c8
.... 51 values decided by n8r8c5 : n8r8c5 n9r3c5 n8r3c1 n4r8c6 n8r2c6 n8r6c2 n8r4c9 n4r2c9 n4r3c4 n8r9c3 n1r7c3 n1r9c5 n3r7c5 n3r8c2 n3r9c8 n2r7c2 n2r1c6 n2r2c8 n6r1c9 n5r1c5 n6r2c5 n7r2c4 n2r8c4 n6r9c4 n7r7c6 n5r7c9 n5r2c2 n9r5c2 n7r1c2 n9r1c3 n4r1c1 n5r8c1 n9r9c1 n6r5c7 n5r5c8 n4r5c3 n7r3c8 n9r8c8 n7r8c9 n2r9c9 n9r6c9 n6r6c6 n9r4c6 n5r3c7 n6r4c1 n7r6c1 n2r6c7 n5r6c3 n3r6c4 n5r4c4 n7r4c7
===> 1 values decided in both cases: n3r9c8
===> 8 candidates eliminated in both cases: n3r8c1 n3r8c8 n3r9c1 n3r9c5 n2r9c8 n6r9c8 n7r9c8 n9r9c8

CURRENT RESOLUTION STATE:
   4579      579       4579      1         569       267       3         8         267
   1         578       3         2467      56        48        9         267       2467
   89        6         2         47        89        3         457       57        1
   345679    1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   35679     35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   579       235789    6         247       38        48        1         2579      2579
   789       4         1789      267       168       5         267       3         2679

CLIPS> (apply-FTE-to-all-bivalue-pairs TRUE)

FORCING-T&E(W1) applied to bivalue candidates n2r2c8 and n2r8c8 :
.... 50 values decided by n2r2c8 : n2r2c8 n2r1c6 n7r7c6 n6r5c8 n6r9c7 n2r9c4 n4r8c4 n8r8c6 n1r9c5 n3r8c5 n6r7c5 n5r2c5 n9r1c5 n8r3c5 n9r3c1 n4r2c6 n7r3c4 n5r3c8 n4r3c7 n5r5c7 n9r5c2 n4r5c3 n7r4c7 n2r6c7 n9r4c8 n7r8c8 n9r9c9 n5r8c1 n2r8c9 n5r7c9 n1r7c3 n3r7c1 n2r7c2 n6r4c1 n7r6c1 n8r9c1 n7r9c3 n5r1c3 n8r6c3 n7r1c2 n8r2c2 n6r1c9 n7r2c9 n4r1c1 n6r2c4 n6r6c6 n8r4c9 n5r6c2 n3r6c4 n5r4c4
.... 54 values decided by n2r8c8 : n2r8c8 n2r6c7 n2r7c2 n2r9c4 n2r1c6 n2r2c9 n4r3c7 n7r3c4 n4r8c4 n8r8c6 n3r8c5 n4r2c6 n6r2c4 n7r2c8 n6r1c9 n5r2c5 n8r2c2 n9r3c1 n8r3c5 n9r1c5 n5r3c8 n9r4c8 n6r5c8 n5r5c7 n9r5c2 n4r5c3 n7r4c7 n6r9c7 n1r9c5 n6r7c5 n7r7c6 n5r7c9 n1r7c3 n3r7c1 n8r6c9 n4r4c9 n6r4c6 n9r6c6 n5r4c1 n7r8c1 n8r9c1 n9r9c3 n7r9c9 n9r8c9 n5r8c2 n7r1c2 n3r6c2 n5r6c4 n5r1c3 n6r6c1 n4r1c1 n7r6c3 n3r4c4 n8r4c3
===> 35 values decided in both cases: n2r1c6 n7r7c6 n6r5c8 n6r9c7 n2r9c4 n4r8c4 n8r8c6 n1r9c5 n3r8c5 n6r7c5 n5r2c5 n9r1c5 n8r3c5 n9r3c1 n4r2c6 n7r3c4 n5r3c8 n4r3c7 n5r5c7 n9r5c2 n4r5c3 n7r4c7 n2r6c7 n9r4c8 n5r7c9 n1r7c3 n3r7c1 n2r7c2 n8r9c1 n5r1c3 n7r1c2 n8r2c2 n6r1c9 n4r1c1 n6r2c4
===> 109 candidates eliminated in both cases: n5r1c1 n7r1c1 n9r1c1 n5r1c2 n9r1c2 n4r1c3 n7r1c3 n9r1c3 n5r1c5 n6r1c5 n6r1c6 n7r1c6 n2r1c9 n7r1c9 n5r2c2 n7r2c2 n2r2c4 n4r2c4 n7r2c4 n6r2c5 n8r2c6 n6r2c8 n4r2c9 n6r2c9 n8r3c1 n4r3c4 n9r3c5 n5r3c7 n7r3c7 n7r3c8 n3r4c1 n4r4c1 n7r4c1 n9r4c1 n4r4c3 n5r4c3 n7r4c3 n9r4c3 n6r4c4 n9r4c6 n4r4c7 n5r4c7 n5r4c8 n7r4c8 n5r4c9 n7r4c9 n9r4c9 n5r5c2 n5r5c3 n9r5c3 n4r5c7 n6r5c7 n5r5c8 n9r5c8 n3r6c1 n5r6c1 n9r6c1 n7r6c2 n8r6c2 n9r6c2 n5r6c3 n9r6c3 n6r6c4 n5r6c7 n7r6c7 n2r6c9 n5r6c9 n7r6c9 n9r6c9 n5r7c1 n7r7c1 n3r7c2 n5r7c2 n7r7c2 n5r7c3 n7r7c3 n1r7c5 n3r7c5 n2r7c6 n6r7c6 n2r7c9 n6r7c9 n7r7c9 n9r8c1 n2r8c2 n3r8c2 n7r8c2 n8r8c2 n9r8c2 n2r8c4 n7r8c4 n8r8c5 n4r8c6 n5r8c8 n9r8c8 n5r8c9 n7r8c9 n7r9c1 n9r9c1 n1r9c3 n8r9c3 n6r9c4 n7r9c4 n6r9c5 n8r9c5 n2r9c7 n7r9c7 n2r9c9 n6r9c9

CURRENT RESOLUTION STATE:
   4         7         5         1         9         2         3         8         6
   1         8         3         6         5         4         9         27        27
   9         6         2         7         8         3         4         5         1
   56        1         8         35        2         6         7         9         48
   2         9         4         8         7         1         5         6         3
   67        35        78        35        4         69        2         1         8
   3         2         1         9         6         7         8         4         5
   57        5         6         4         3         8         1         27        29
   8         4         79        2         1         5         6         3         79

naked-single ==> r8c2 = 5
naked-single ==> r6c2 = 3
naked-single ==> r6c4 = 5
naked-single ==> r4c4 = 3
naked-single ==> r8c1 = 7
naked-single ==> r6c1 = 6
naked-single ==> r4c1 = 5
naked-single ==> r6c6 = 9
naked-single ==> r8c8 = 2
naked-single ==> r2c8 = 7
naked-single ==> r2c9 = 2
naked-single ==> r8c9 = 9
naked-single ==> r9c9 = 7
naked-single ==> r9c3 = 9
naked-single ==> r6c9 = 8
naked-single ==> r4c9 = 4
naked-single ==> r6c3 = 7
naked-single ==> r4c6 = 6
naked-single ==> r4c3 = 8
PUZZLE 0 IS SOLVED. rating-type = W1, MOST COMPLEX RULE TRIED = trivalue
   475192386
   183654972
   962783451
   518326794
   294871563
   637549218
   321967845
   756438129
   849215637

nb-facts = <Fact-1481965>


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

F3TE in 1 step
CLIPS> (solve "...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5...
22 givens, 239 candidates
entering BRT
hidden-single-in-a-row ==> r5c6 = 1
hidden-single-in-a-row ==> r1c7 = 3
Starting_init_links_with_<Fact-3694>
230 candidates, 1589 csp-links and 1589 links. Density = 6.03%

Starting non trivial part of solution.
Entering_level_W1_with_<Fact-9589>
whip[1]: c5n3{r9 .} ==> r9c4 ≠ 3, r8c4 ≠ 3
whip[1]: c3n1{r9 .} ==> r9c1 ≠ 1, r7c1 ≠ 1
whip[1]: r5n6{c8 .} ==> r6c9 ≠ 6, r4c7 ≠ 6, r4c8 ≠ 6, r4c9 ≠ 6, r6c7 ≠ 6
whip[1]: c5n5{r3 .} ==> r3c4 ≠ 5, r2c4 ≠ 5
whip[1]: c5n9{r3 .} ==> r1c6 ≠ 9
Entering_relation_bivalue_with_<Fact-9600>
Entering_relation_trivalue_with_<Fact-9697>
PUZZLE 0 IS NOT SOLVED. 57 VALUES MISSING.
CURRENT RESOLUTION STATE:
   4579      579       4579      1         569       2467      3         8         24567
   14578     578       3         2467      568       24678     9         2567      124567
   145789    6         2         47        589       3         457       57        1457
   3456789   1         45789     356       2         69        457       579       45789
   2         59        459       8         7         1         456       569       3
   356789    35789     5789      356       4         69        257       1         25789
   357       2357      157       9         136       267       8         4         2567
   35789     235789    6         247       38        2478      1         23579     2579
   3789      4         1789      267       1368      5         267       23679     2679

Puzzle ...1...8...3...9...62..3....1..2....2..87...3....4..1....9..84...6...1...4...5... :
init-time = 0.18s, solve-time = 0.14s, total-time = 0.32s
nb-facts = 0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W1
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************



CLIPS> (apply-F3TE-to-all-trivalue-triplets TRUE)

FORCING[3]-T&E(W1) applied to trivalue candidates n8r8c5, n8r8c6 and n8r9c5 :
.... 43 values decided by n8r8c5 : n8r8c5 n8r2c6 n8r3c1 n8r9c3 n1r7c3 n1r9c5 n3r7c5 n8r6c2 n8r4c9 n3r8c2 n3r9c8 n2r7c2 n9r3c5 n1r2c1 n1r3c9 n4r3c4 n4r8c6 n2r1c6 n7r2c4 n2r8c4 n6r9c4 n7r7c6 n5r7c1 n6r7c9 n5r2c2 n9r5c2 n7r1c2 n6r2c5 n2r2c8 n4r2c9 n5r1c9 n7r3c8 n5r8c8 n6r5c8 n9r4c8 n6r4c6 n9r6c6 n6r6c1 n3r4c1 n5r4c4 n3r6c4 n4r1c1 n9r1c3
.... 57 values decided by n8r8c6 : n8r8c6 n3r8c5 n4r8c4 n7r3c4 n5r3c8 n4r3c7 n1r3c9 n1r2c1 n4r2c6 n4r4c9 n8r6c9 n2r6c7 n8r2c2 n9r3c1 n8r3c5 n9r1c5 n5r2c5 n4r5c3 n4r1c1 n7r7c6 n2r9c4 n6r2c4 n2r1c6 n6r1c9 n6r7c5 n1r9c5 n1r7c3 n3r9c8 n6r9c7 n5r5c7 n9r5c2 n6r5c8 n7r4c7 n9r4c8 n6r4c6 n9r6c6 n6r6c1 n9r8c9 n7r9c9 n8r9c1 n9r9c3 n2r8c8 n5r7c9 n3r7c1 n2r7c2 n5r4c1 n7r8c1 n5r8c2 n7r1c2 n3r6c2 n5r6c4 n5r1c3 n7r6c3 n3r4c4 n8r4c3 n7r2c8 n2r2c9
.... 53 values decided by n8r9c5 : n8r9c5 n3r8c5 n8r2c6 n8r3c1 n8r8c2 n2r7c2 n3r6c2 n3r4c4 n5r6c4 n3r7c1 n3r9c8 n9r3c5 n1r2c1 n1r3c9 n1r7c5 n1r9c3 n6r9c4 n7r7c6 n5r7c3 n6r7c9 n6r2c8 n5r2c5 n7r2c2 n6r1c5 n7r3c4 n5r3c8 n9r5c8 n4r5c3 n9r1c3 n5r1c2 n4r1c1 n2r1c6 n4r8c6 n2r8c4 n7r8c8 n2r9c7 n9r9c9 n7r9c1 n5r8c9 n7r6c7 n8r6c3 n2r6c9 n4r2c9 n8r4c9 n7r4c3 n9r8c1 n6r6c1 n9r6c6 n6r4c6 n5r4c1 n4r4c7 n7r1c9 n5r5c7
===> 10 values decided in the three cases: n3r9c8 n2r7c2 n1r2c1 n1r3c9 n2r1c6 n7r7c6 n6r4c6 n9r6c6 n6r6c1 n4r1c1
===> 100 candidates eliminated in the three cases: n5r1c1 n7r1c1 n9r1c1 n9r1c2 n4r1c3 n7r1c3 n5r1c5 n4r1c6 n6r1c6 n7r1c6 n2r1c9 n4r1c9 n4r2c1 n5r2c1 n7r2c1 n8r2c1 n2r2c4 n4r2c4 n8r2c5 n2r2c6 n6r2c6 n7r2c6 n5r2c8 n1r2c9 n5r2c9 n6r2c9 n7r2c9 n1r3c1 n4r3c1 n5r3c1 n7r3c1 n5r3c5 n5r3c7 n7r3c7 n4r3c9 n5r3c9 n7r3c9 n4r4c1 n6r4c1 n7r4c1 n8r4c1 n9r4c1 n5r4c3 n9r4c3 n6r4c4 n9r4c6 n5r4c7 n5r4c8 n7r4c8 n5r4c9 n7r4c9 n9r4c9 n5r5c2 n9r5c3 n6r5c7 n5r5c8 n3r6c1 n5r6c1 n7r6c1 n8r6c1 n9r6c1 n5r6c2 n7r6c2 n9r6c2 n9r6c3 n6r6c4 n6r6c6 n5r6c9 n9r6c9 n7r7c1 n3r7c2 n5r7c2 n7r7c2 n7r7c3 n2r7c6 n6r7c6 n2r7c9 n7r7c9 n3r8c1 n5r8c1 n8r8c1 n2r8c2 n7r8c2 n9r8c2 n7r8c4 n2r8c6 n7r8c6 n3r8c8 n9r8c8 n2r8c9 n3r9c1 n7r9c3 n7r9c4 n3r9c5 n6r9c5 n2r9c8 n6r9c8 n7r9c8 n9r9c8 n6r9c9

CURRENT RESOLUTION STATE:
   4         57        59        1         69        2         3         8         567
   1         578       3         67        56        48        9         267       24
   89        6         2         47        89        3         4         57        1
   35        1         478       35        2         6         47        9         48
   2         9         45        8         7         1         45        69        3
   6         38        578       35        4         9         257       1         278
   35        2         15        9         136       7         8         4         56
   79        358       6         24        38        48        1         257       579
   789       4         189       26        18        5         267       3         279

naked-single ==> r5c2 = 9
naked-single ==> r5c8 = 6
naked-single ==> r4c8 = 9
naked-single ==> r3c7 = 4
naked-single ==> r2c9 = 2
naked-single ==> r2c8 = 7
naked-single ==> r2c4 = 6
naked-single ==> r1c5 = 9
naked-single ==> r1c3 = 5
naked-single ==> r1c2 = 7
naked-single ==> r1c9 = 6
naked-single ==> r7c9 = 5
naked-single ==> r7c1 = 3
naked-single ==> r4c1 = 5
naked-single ==> r4c4 = 3
naked-single ==> r6c4 = 5
naked-single ==> r8c8 = 2
naked-single ==> r8c4 = 4
naked-single ==> r8c6 = 8
naked-single ==> r2c6 = 4
naked-single ==> r8c2 = 5
naked-single ==> r8c5 = 3
naked-single ==> r9c5 = 1
naked-single ==> r7c5 = 6
naked-single ==> r2c2 = 8
naked-single ==> r3c1 = 9
naked-single ==> r8c1 = 7
naked-single ==> r8c9 = 9
naked-single ==> r9c9 = 7
naked-single ==> r6c9 = 8
naked-single ==> r4c9 = 4
naked-single ==> r6c3 = 7
naked-single ==> r4c3 = 8
naked-single ==> r9c3 = 9
naked-single ==> r6c7 = 2
naked-single ==> r9c7 = 6
naked-single ==> r9c1 = 8
naked-single ==> r6c2 = 3
naked-single ==> r5c3 = 4
naked-single ==> r7c3 = 1
naked-single ==> r3c5 = 8
naked-single ==> r2c5 = 5
naked-single ==> r9c4 = 2
naked-single ==> r3c8 = 5
naked-single ==> r3c4 = 7
naked-single ==> r4c7 = 7
naked-single ==> r5c7 = 5
PUZZLE 0 IS SOLVED. rating-type = W1, MOST COMPLEX RULE TRIED = trivalue
   475192386
   183654972
   962783451
   518326794
   294871563
   637549218
   321967845
   756438129
   849215637

nb-facts = <Fact-602908>

