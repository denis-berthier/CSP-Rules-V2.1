a morph of cbg-000#36

     +-------+-------+-------+
     ! 1 . . ! . . 8 ! . . . ! 
     ! 2 5 8 ! . . . ! . . 1 ! 
     ! 3 . . ! . . 7 ! 5 . . ! 
     +-------+-------+-------+
     ! . 7 . ! . . . ! 6 . 8 ! 
     ! . . . ! . 7 6 ! . . 4 ! 
     ! . . . ! . . . ! . 2 . ! 
     +-------+-------+-------+
     ! 7 1 . ! . 9 . ! . . . ! 
     ! . . 6 ! . . 5 ! . . 3 ! 
     ! 9 . . ! . 2 . ! . 1 . ! 
     +-------+-------+-------+

SER = 8.3

(solve "1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r813
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1.

hidden-single-in-a-column ==> r6c1=6
hidden-single-in-a-column ==> r4c6=2
hidden-single-in-a-column ==> r6c6=1
hidden-single-in-a-row ==> r4c3=1
hidden-single-in-a-row ==> r5c7=1
hidden-single-in-a-column ==> r2c6=9
hidden-single-in-a-row ==> r3c8=8
hidden-single-in-a-column ==> r1c3=7
Resolution state after Singles:
   +-------------------+-------------------+-------------------+ 
   ! 1     469   7     ! 23456 3456  8     ! 2349  3469  269   ! 
   ! 2     5     8     ! 346   346   9     ! 347   3467  1     ! 
   ! 3     469   49    ! 1246  146   7     ! 5     8     269   ! 
   +-------------------+-------------------+-------------------+ 
   ! 45    7     1     ! 3459  345   2     ! 6     359   8     ! 
   ! 58    2389  2359  ! 3589  7     6     ! 1     359   4     ! 
   ! 6     3489  3459  ! 34589 3458  1     ! 379   2     579   ! 
   +-------------------+-------------------+-------------------+ 
   ! 7     1     2345  ! 3468  9     34    ! 248   456   256   ! 
   ! 48    248   6     ! 1478  148   5     ! 24789 479   3     ! 
   ! 9     348   345   ! 34678 2     34    ! 478   1     567   ! 
   +-------------------+-------------------+-------------------+ 

161 candidates, 877 csp-links and 877 links. Density = 6.81%
Starting non trivial part of solution.
whip[1]: c6n4{r9 .} ==> r9c4≠4, r7c4≠4, r8c4≠4, r8c5≠4
whip[1]: c6n3{r9 .} ==> r9c4≠3, r7c4≠3
whip[1]: c1n5{r5 .} ==> r6c3≠5, r5c3≠5
whip[1]: c5n6{r3 .} ==> r3c4≠6, r1c4≠6, r2c4≠6

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+ 
   ! 1     469   7     ! 2345  3456  8     ! 2349  3469  269   ! 
   ! 2     5     8     ! 34    346   9     ! 347   3467  1     ! 
   ! 3     469   49    ! 124   146   7     ! 5     8     269   ! 
   +-------------------+-------------------+-------------------+ 
   ! 45    7     1     ! 3459  345   2     ! 6     359   8     ! 
   ! 58    2389  239   ! 3589  7     6     ! 1     359   4     ! 
   ! 6     3489  349   ! 34589 3458  1     ! 379   2     579   ! 
   +-------------------+-------------------+-------------------+ 
   ! 7     1     2345  ! 68    9     34    ! 248   456   256   ! 
   ! 48    248   6     ! 178   18    5     ! 24789 479   3     ! 
   ! 9     348   345   ! 678   2     34    ! 478   1     567   ! 
   +-------------------+-------------------+-------------------+ 

150 candidates.

finned-x-wing-in-columns: n8{c5 c1}{r8 r6} ==> r6c2≠8
whip[1]: r6n8{c5 .} ==> r5c4≠8
biv-chain[3]: r8c1{n4 n8} - b4n8{r5c1 r5c2} - c2n2{r5 r8} ==> r8c2≠4
biv-chain[3]: r9c6{n4 n3} - r7n3{c6 c3} - b7n5{r7c3 r9c3} ==> r9c3≠4
z-chain[3]: c5n8{r6 r8} - r8c1{n8 n4} - r4n4{c1 .} ==> r6c5≠4
biv-chain[4]: r3n2{c9 c4} - c4n1{r3 r8} - b8n7{r8c4 r9c4} - r9n6{c4 c9} ==> r3c9≠6
t-whip[4]: r4c1{n5 n4} - r6n4{c3 c4} - r6n8{c4 c5} - r6n5{c5 .} ==> r4c8≠5
t-whip[5]: r6n8{c5 c4} - r7c4{n8 n6} - r9c4{n6 n7} - c9n7{r9 r6} - r6n5{c9 .} ==> r6c5≠3
whip[3]: r2c4{n4 n3} - c5n3{r2 r4} - c5n4{r4 .} ==> r3c4≠4
whip[3]: r2c4{n4 n3} - c5n3{r2 r4} - c5n4{r4 .} ==> r1c4≠4
whip[3]: r2c4{n3 n4} - c5n4{r3 r4} - c5n3{r4 .} ==> r1c4≠3
t-whip[4]: r4c1{n5 n4} - r6n4{c3 c4} - r2c4{n4 n3} - c5n3{r2 .} ==> r4c5≠5
biv-chain[4]: r8n9{c7 c8} - r4c8{n9 n3} - r4c5{n3 n4} - c1n4{r4 r8} ==> r8c7≠4
t-whip[5]: r5n2{c3 c2} - r8n2{c2 c7} - r8n9{c7 c8} - r4n9{c8 c4} - r5n9{c4 .} ==> r5c3≠3
z-chain[6]: r4n9{c8 c4} - r4n5{c4 c1} - c1n4{r4 r8} - r8c8{n4 n7} - c9n7{r9 r6} - b6n5{r6c9 .} ==> r5c8≠9
z-chain[4]: r6n8{c4 c5} - r6n5{c5 c9} - r5c8{n5 n3} - b4n3{r5c2 .} ==> r6c4≠3
z-chain[6]: r4n9{c8 c4} - r4n5{c4 c1} - c1n4{r4 r8} - r8c8{n4 n7} - c9n7{r9 r6} - c9n9{r6 .} ==> r1c8≠9
z-chain[6]: r3c9{n9 n2} - c4n2{r3 r1} - r1n5{c4 c5} - r1n3{c5 c8} - r4c8{n3 n9} - r8n9{c8 .} ==> r1c7≠9
whip[1]: b3n9{r3c9 .} ==> r6c9≠9
biv-chain[5]: c9n9{r1 r3} - r3n2{c9 c4} - c4n1{r3 r8} - c4n7{r8 r9} - r9n6{c4 c9} ==> r1c9≠6
whip[1]: c9n6{r9 .} ==> r7c8≠6
naked-pairs-in-a-block: b3{r1c9 r3c9}{n2 n9} ==> r1c7≠2
whip[1]: c7n2{r8 .} ==> r7c9≠2
biv-chain[3]: r8c2{n8 n2} - r7n2{c3 c7} - r7n8{c7 c4} ==> r8c4≠8, r8c5≠8
naked-single ==> r8c5=1
naked-single ==> r8c4=7
hidden-single-in-a-column ==> r2c8=7
hidden-single-in-a-block ==> r1c8=6
hidden-single-in-a-block ==> r3c2=6
naked-single ==> r3c5=4
naked-single ==> r2c4=3
naked-single ==> r1c5=5
naked-single ==> r1c4=2
naked-single ==> r1c9=9
naked-single ==> r1c2=4
naked-single ==> r1c7=3
naked-single ==> r3c9=2
naked-single ==> r3c4=1
naked-single ==> r6c5=8
naked-single ==> r2c5=6
naked-single ==> r2c7=4
naked-single ==> r3c3=9
naked-single ==> r5c3=2
naked-single ==> r4c5=3
naked-single ==> r4c8=9
naked-single ==> r6c7=7
naked-single ==> r6c9=5
naked-single ==> r5c8=3
naked-single ==> r7c9=6
naked-single ==> r7c4=8
naked-single ==> r7c7=2
naked-single ==> r9c4=6
naked-single ==> r9c9=7
naked-single ==> r9c7=8
naked-single ==> r8c7=9
naked-single ==> r9c2=3
naked-single ==> r6c2=9
naked-single ==> r5c2=8
naked-single ==> r5c1=5
naked-single ==> r4c1=4
naked-single ==> r4c4=5
naked-single ==> r6c3=3
naked-single ==> r8c1=8
naked-single ==> r5c4=9
naked-single ==> r8c2=2
naked-single ==> r6c4=4
naked-single ==> r9c3=5
naked-single ==> r7c3=4
naked-single ==> r7c6=3
naked-single ==> r7c8=5
naked-single ==> r9c6=4
naked-single ==> r8c8=4
PUZZLE 0 IS SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = Z[6]
   147258369
   258369471
   369147582
   471532698
   582976134
   693481725
   714893256
   826715943
   935624817

nb-facts = <Fact-59710>
Puzzle 1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1. :
init-time = 0.19s, solve-time = 7.18s, total-time = 7.37s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r813
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

But t-whips are not necessary:



--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

(solve-w-prefs "1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1." REVERSIBLE-CHAINS)
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r813
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
hidden-single-in-a-column ==> r6c1=6
hidden-single-in-a-column ==> r4c6=2
hidden-single-in-a-column ==> r6c6=1
hidden-single-in-a-row ==> r4c3=1
hidden-single-in-a-row ==> r5c7=1
hidden-single-in-a-column ==> r2c6=9
hidden-single-in-a-row ==> r3c8=8
hidden-single-in-a-column ==> r1c3=7
Resolution state after Singles:
   +-------------------+-------------------+-------------------+ 
   ! 1     469   7     ! 23456 3456  8     ! 2349  3469  269   ! 
   ! 2     5     8     ! 346   346   9     ! 347   3467  1     ! 
   ! 3     469   49    ! 1246  146   7     ! 5     8     269   ! 
   +-------------------+-------------------+-------------------+ 
   ! 45    7     1     ! 3459  345   2     ! 6     359   8     ! 
   ! 58    2389  2359  ! 3589  7     6     ! 1     359   4     ! 
   ! 6     3489  3459  ! 34589 3458  1     ! 379   2     579   ! 
   +-------------------+-------------------+-------------------+ 
   ! 7     1     2345  ! 3468  9     34    ! 248   456   256   ! 
   ! 48    248   6     ! 1478  148   5     ! 24789 479   3     ! 
   ! 9     348   345   ! 34678 2     34    ! 478   1     567   ! 
   +-------------------+-------------------+-------------------+ 

161 candidates, 877 csp-links and 877 links. Density = 6.81%
Starting non trivial part of solution.
whip[1]: c6n4{r9 .} ==> r9c4≠4, r7c4≠4, r8c4≠4, r8c5≠4
whip[1]: c6n3{r9 .} ==> r9c4≠3, r7c4≠3
whip[1]: c1n5{r5 .} ==> r6c3≠5, r5c3≠5
whip[1]: c5n6{r3 .} ==> r3c4≠6, r1c4≠6, r2c4≠6

Resolution state after Singles and whips[1]:
   +-------------------+-------------------+-------------------+ 
   ! 1     469   7     ! 2345  3456  8     ! 2349  3469  269   ! 
   ! 2     5     8     ! 34    346   9     ! 347   3467  1     ! 
   ! 3     469   49    ! 124   146   7     ! 5     8     269   ! 
   +-------------------+-------------------+-------------------+ 
   ! 45    7     1     ! 3459  345   2     ! 6     359   8     ! 
   ! 58    2389  239   ! 3589  7     6     ! 1     359   4     ! 
   ! 6     3489  349   ! 34589 3458  1     ! 379   2     579   ! 
   +-------------------+-------------------+-------------------+ 
   ! 7     1     2345  ! 68    9     34    ! 248   456   256   ! 
   ! 48    248   6     ! 178   18    5     ! 24789 479   3     ! 
   ! 9     348   345   ! 678   2     34    ! 478   1     567   ! 
   +-------------------+-------------------+-------------------+ 

150 candidates.

biv-chain[2]: c1n8{r5 r8} - c5n8{r8 r6} ==> r6c2≠8, r5c4≠8
biv-chain[3]: r9c6{n4 n3} - r7n3{c6 c3} - b7n5{r7c3 r9c3} ==> r9c3≠4
biv-chain[3]: c2n2{r8 r5} - b4n8{r5c2 r5c1} - r8c1{n8 n4} ==> r8c2≠4
z-chain[3]: c5n8{r6 r8} - r8c1{n8 n4} - r4n4{c1 .} ==> r6c5≠4
biv-chain[4]: r3n2{c9 c4} - c4n1{r3 r8} - b8n7{r8c4 r9c4} - r9n6{c4 c9} ==> r3c9≠6
biv-chain[6]: r4c1{n5 n4} - r8c1{n4 n8} - r8c5{n8 n1} - b2n1{r3c5 r3c4} - b2n2{r3c4 r1c4} - b2n5{r1c4 r1c5} ==> r4c5≠5
z-chain[6]: r3c9{n2 n9} - r1c9{n9 n6} - r9n6{c9 c4} - c4n7{r9 r8} - c4n1{r8 r3} - r3n2{c4 .} ==> r7c9≠2, r1c7≠2
biv-chain[3]: r7n8{c4 c7} - c7n2{r7 r8} - r8c2{n2 n8} ==> r8c4≠8, r8c5≠8
naked-single ==> r8c5=1
naked-single ==> r8c4=7
hidden-single-in-a-column ==> r2c8=7
hidden-single-in-a-row ==> r2c5=6
naked-single ==> r3c5=4
naked-single ==> r2c4=3
naked-single ==> r1c5=5
naked-single ==> r1c4=2
naked-single ==> r3c4=1
naked-single ==> r2c7=4
naked-single ==> r3c3=9
naked-single ==> r3c2=6
naked-single ==> r1c2=4
naked-single ==> r3c9=2
naked-single ==> r4c5=3
naked-single ==> r6c5=8
hidden-single-in-a-row ==> r9c6=4
naked-single ==> r7c6=3
biv-chain[3]: r4c1{n4 n5} - r4c8{n5 n9} - r8c8{n9 n4} ==> r8c1≠4
naked-single ==> r8c1=8
naked-single ==> r5c1=5
naked-single ==> r4c1=4
naked-single ==> r6c3=3
naked-single ==> r5c3=2
naked-single ==> r6c2=9
naked-single ==> r5c2=8
naked-single ==> r6c7=7
naked-single ==> r6c9=5
naked-single ==> r4c8=9
naked-single ==> r4c4=5
naked-single ==> r5c8=3
naked-single ==> r1c8=6
naked-single ==> r1c9=9
naked-single ==> r1c7=3
naked-single ==> r8c8=4
naked-single ==> r7c8=5
naked-single ==> r7c3=4
naked-single ==> r6c4=4
naked-single ==> r7c9=6
naked-single ==> r7c4=8
naked-single ==> r7c7=2
naked-single ==> r8c7=9
naked-single ==> r9c4=6
naked-single ==> r9c9=7
naked-single ==> r9c7=8
naked-single ==> r9c3=5
naked-single ==> r5c4=9
naked-single ==> r8c2=2
naked-single ==> r9c2=3
PUZZLE 0 IS SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = Z[6]
   147258369
   258369471
   369147582
   471532698
   582976134
   693481725
   714893256
   826715943
   935624817

nb-facts = <Fact-35220>
Puzzle 1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1. :
init-time = 0.36s, solve-time = 3.47s, total-time = 3.83s
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r813
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************






--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

in W8:

 (find-1-steppers  "1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1.")
===> There are 5 W1-anti-backdoors: 
n5r4c1 n8r5c1 n7r6c9 n4r8c1 n8r9c2 
Total computation time = 11.96s
===> There is no 1-step solution for the current set of rules.



--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------

in W8:
(find-2-steppers "1....8...258.....13....75...7....6.8....76..4.......2.71..9......6..5..39...2..1.")
There remains 150 candidates after the rules in W1 have been applied.
===> CHECKING WHICH OF THE 150 CANDIDATES CAN BE ELIMINATED IN A SINGLE STEP BY THE CURRENT SET OF RULES:
erasable candidates computation time = 3m 45.92s
===> 33 candidates can be eliminated: 
n2r1c7 n9r1c8 n2r1c9 n7r2c7 n3r2c8 n4r2c8 n6r2c8 n2r3c4 n4r3c4 n1r3c5 n6r3c9 n5r4c5 n5r4c8 n3r5c3 n5r5c4 n8r5c4 n8r6c2 n8r6c4 n3r6c5 n4r6c5 n5r6c5 n4r7c7 n2r7c9 n4r8c2 n1r8c4 n8r8c4 n8r8c5 n4r8c7 n7r8c7 n7r8c8 n4r9c2 n4r9c3 n7r9c4 

anti-backdoor-pairs computation time = 3m 13.46s
===> There are 208 W1-anti-backdoor-pairs for the current set of rules: 
n2r1c7 n5r4c1     n2r1c7 n9r4c4     n2r1c7 n8r5c1     n2r1c7 n7r6c9     n2r1c7 n4r8c1     n2r1c7 n9r8c8     n2r1c7 n8r9c2     n9r1c8 n5r4c1     n9r1c8 n8r5c1     n9r1c8 n7r6c9     n9r1c8 n4r8c1     n9r1c8 n8r9c2     n2r1c9 n5r4c1     n2r1c9 n8r5c1     n2r1c9 n7r6c9     n2r1c9 n4r8c1     n2r1c9 n8r9c2     n7r2c7 n5r4c1     n7r2c7 n9r4c4     n7r2c7 n8r5c1     n7r2c7 n7r6c9     n7r2c7 n4r8c1     n7r2c7 n9r8c8     n7r2c7 n8r9c2     n3r2c8 n5r4c1     n3r2c8 n8r5c1     n3r2c8 n7r6c9     n3r2c8 n4r8c1     n3r2c8 n8r9c2     n4r2c8 n5r4c1     n4r2c8 n8r5c1     n4r2c8 n7r6c9     n4r2c8 n4r8c1     n4r2c8 n8r9c2     n6r2c8 n5r4c1     n6r2c8 n8r5c1     n6r2c8 n7r6c9     n6r2c8 n4r8c1     n6r2c8 n8r9c2     n2r3c4 n5r4c1     n2r3c4 n9r4c4     n2r3c4 n8r5c1     n2r3c4 n5r6c4     n2r3c4 n7r6c9     n2r3c4 n4r8c1     n2r3c4 n9r8c8     n2r3c4 n8r9c2     n4r3c4 n5r4c1     n4r3c4 n8r5c1     n4r3c4 n7r6c9     n4r3c4 n4r8c1     n4r3c4 n8r9c2     n1r3c5 n5r4c1     n1r3c5 n9r4c4     n1r3c5 n8r5c1     n1r3c5 n5r6c4     n1r3c5 n7r6c9     n1r3c5 n4r8c1     n1r3c5 n9r8c8     n1r3c5 n8r9c2     n6r3c9 n5r4c1     n6r3c9 n8r5c1     n6r3c9 n7r6c9     n6r3c9 n4r8c1     n6r3c9 n8r9c2     n5r4c5 n5r4c1     n5r4c5 n8r5c1     n5r4c5 n7r6c9     n5r4c5 n4r8c1     n5r4c5 n8r9c2     n5r4c8 n7r9c4     n5r4c8 n5r4c1     n5r4c8 n8r5c1     n5r4c8 n5r5c8     n5r4c8 n7r6c9     n5r4c8 n6r7c4     n5r4c8 n8r7c7     n5r4c8 n4r8c1     n5r4c8 n8r9c2     n5r4c8 n6r9c9     n3r5c3 n5r4c1     n3r5c3 n8r5c1     n3r5c3 n7r6c9     n3r5c3 n4r8c1     n3r5c3 n8r9c2     n5r5c4 n7r9c4     n5r5c4 n5r4c1     n5r5c4 n8r5c1     n5r5c4 n5r5c8     n5r5c4 n7r6c9     n5r5c4 n6r7c4     n5r5c4 n8r7c7     n5r5c4 n4r8c1     n5r5c4 n8r9c2     n5r5c4 n6r9c9     n8r5c4 n5r4c1     n8r5c4 n8r5c1     n8r5c4 n7r6c9     n8r5c4 n4r8c1     n8r5c4 n8r9c2     n8r6c2 n5r4c1     n8r6c2 n8r5c1     n8r6c2 n7r6c9     n8r6c2 n4r8c1     n8r6c2 n8r9c2     n8r6c4 n5r4c1     n8r6c4 n8r5c1     n8r6c4 n7r6c9     n8r6c4 n4r8c1     n8r6c4 n8r9c2     n3r6c5 n5r4c1     n3r6c5 n8r5c1     n3r6c5 n7r6c9     n3r6c5 n4r8c1     n3r6c5 n8r9c2     n4r6c5 n5r4c1     n4r6c5 n8r5c1     n4r6c5 n7r6c9     n4r6c5 n4r8c1     n4r6c5 n8r9c2     n5r6c5 n5r4c1     n5r6c5 n8r5c1     n5r6c5 n5r6c4     n5r6c5 n7r6c9     n5r6c5 n4r8c1     n5r6c5 n8r9c2     n4r7c7 n5r4c1     n4r7c7 n8r5c1     n4r7c7 n7r6c9     n4r7c7 n4r8c1     n4r7c7 n8r9c2     n2r7c9 n5r4c1     n2r7c9 n9r4c4     n2r7c9 n8r5c1     n2r7c9 n7r6c9     n2r7c9 n4r8c1     n2r7c9 n9r8c8     n2r7c9 n8r9c2     n4r8c2 n5r4c1     n4r8c2 n8r5c1     n4r8c2 n7r6c9     n4r8c2 n4r8c1     n4r8c2 n8r9c2     n1r8c4 n5r4c1     n1r8c4 n9r4c4     n1r8c4 n8r5c1     n1r8c4 n5r6c4     n1r8c4 n7r6c9     n1r8c4 n4r8c1     n1r8c4 n9r8c8     n1r8c4 n8r9c2     n8r8c4 n5r4c1     n8r8c4 n8r5c1     n8r8c4 n7r6c9     n8r8c4 n4r8c1     n8r8c4 n8r9c2     n8r8c5 n5r4c1     n8r8c5 n9r4c4     n8r8c5 n8r5c1     n8r8c5 n5r6c4     n8r8c5 n7r6c9     n8r8c5 n4r8c1     n8r8c5 n9r8c8     n8r8c5 n8r9c2     n4r8c7 n5r4c1     n4r8c7 n8r5c1     n4r8c7 n7r6c9     n4r8c7 n4r8c1     n4r8c7 n8r9c2     n7r8c7 n5r4c1     n7r8c7 n8r5c1     n7r8c7 n7r6c9     n7r8c7 n4r8c1     n7r8c7 n8r9c2     n7r8c8 n5r4c1     n7r8c8 n9r4c4     n7r8c8 n8r5c1     n7r8c8 n7r6c9     n7r8c8 n4r8c1     n7r8c8 n9r8c8     n7r8c8 n8r9c2     n4r9c2 n5r4c1     n4r9c2 n8r5c1     n4r9c2 n7r6c9     n4r9c2 n4r8c1     n4r9c2 n8r9c2     n4r9c3 n5r4c1     n4r9c3 n8r5c1     n4r9c3 n7r6c9     n4r9c3 n4r8c1     n4r9c3 n8r9c2     n7r9c4 n5r4c1     n7r9c4 n4r4c4     n7r9c4 n9r4c4     n7r9c4 n8r5c1     n7r9c4 n9r5c2     n7r9c4 n3r6c2     n7r9c4 n4r6c3     n7r9c4 n5r6c4     n7r9c4 n7r6c9     n7r9c4 n5r7c3     n7r9c4 n4r7c8     n7r9c4 n4r8c1     n7r9c4 n8r8c7     n7r9c4 n9r8c8     n7r9c4 n8r9c2     n7r9c4 n7r9c7     n7r9c4 n5r9c9     




===> CHECKING WHICH OF THE ANTI-BACKDOOR-PAIRS LEAD TO 2-STEP SOLUTIONS:

whip[5]: r4c1{n5 n4} - r8c1{n4 n8} - c5n8{r8 r6} - r6n5{c5 c4} - r6n4{c4 .} ==> r4c8≠5
whip[6]: c4n6{r9 r7} - r7n8{c4 c7} - r9c7{n8 n4} - r7c8{n4 n5} - c9n5{r9 r6} - c9n7{r6 .} ==> r9c4≠7
stte


All the other 2-step solutions (18) in W6 have the same first step:
whip[6]: c4n6{r9 r7} - r7n8{c4 c7} - r9c7{n8 n4} - r7c8{n4 n5} - c9n5{r9 r6} - c9n7{r6 .} ==> r9c4≠7
singles ==> r8c4=7, r8c5=1, r3c4=1, r1c4=2, r1c5=5, r3c9=2, r6c5=8, r2c8=7, r2c5=6, r3c5=4, r2c4=3, r2c7=4, r3c3=9, r3c2=6, r1c2=4, r4c5=3

The second step can be:

biv-chain[3]: c1n4{r4 r8} - r8c8{n4 n9} - r4c8{n9 n5} ==> r4c1≠5
stte

biv-chain[3]: c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 c4} ==> r4c4≠4
stte

biv-chain[3]: r4c8{n9 n5} - c1n5{r4 r5} - r5c4{n5 n9} ==> r4c4≠9, r5c8≠9
stte

biv-chain[3]: r4c1{n4 n5} - r4c8{n5 n9} - r8c8{n9 n4} ==> r8c1≠4
stte


biv-chain[3]: r4c8{n9 n5} - r4c1{n5 n4} - r8n4{c1 c8} ==> r8c8≠9
stte

biv-chain[4]: r8c1{n8 n4} - r8c8{n4 n9} - r4c8{n9 n5} - b4n5{r4c1 r5c1} ==> r5c1≠8
stte

biv-chain[4]: c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 c4} - b5n4{r4c4 r6c4} ==> r6c3≠4, r4c4≠4
stte

biv-chain[4]: r8c1{n8 n4} - r4c1{n4 n5} - r4c8{n5 n9} - b9n9{r8c8 r8c7} ==> r8c7≠8
whip[1]: r8n8{c2 .} ==> r9c2≠8
stte

z-chain[4]: r8c8{n4 n9} - r4c8{n9 n5} - r4c1{n5 n4} - r8n4{c1 .} ==> r7c8≠4, r8c8≠9, r8c1≠4
     with z-candidates = n4r8c8
stte

whip[4]: c1n5{r5 r4} - r4c8{n5 n9} - r8c8{n9 n4} - c1n4{r8 .} ==> r5c4≠5
stte

whip[4]: r8c1{n8 n4} - r8c8{n4 n9} - r4c8{n9 n5} - r4c1{n5 .} ==> r9c2≠8
stte

whip[4]: c4n4{r6 r4} - c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 .} ==> r6c4≠5
stte

whip[5]: r5n8{c2 c1} - c1n5{r5 r4} - r4c8{n5 n9} - r8c8{n9 n4} - r8c1{n4 .} ==> r5c2≠9
stte

whip[5]: r6n5{c9 c4} - c4n4{r6 r4} - c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 .} ==> r6c9≠7
stte

whip[5]: r6c3{n3 n4} - c4n4{r6 r4} - c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 .} ==> r6c2≠3
stte

whip[5]: r6n5{c9 c4} - c4n4{r6 r4} - c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 .} ==> r9c9≠5
stte

whip[6]: r9n5{c3 c9} - r6n5{c9 c4} - c4n4{r6 r4} - c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 .} ==> r7c3≠5
stte

whip[6]: c9n7{r9 r6} - r6n5{c9 c4} - c4n4{r6 r4} - c1n4{r4 r8} - r8c8{n4 n9} - r4n9{c8 .} ==> r9c7≠7
stte



Total computation time = 11m 35.35s
===> There are 22 2-step solutions for the current set of rules, based on the following pairs: 
n1r3c5 n9r8c8     n5r4c8 n7r9c4     n5r5c4 n7r9c4     n1r8c4 n9r8c8     n8r8c5 n9r8c8     n7r9c4 n5r4c1     n7r9c4 n4r4c4     n7r9c4 n9r4c4     n7r9c4 n8r5c1     n7r9c4 n9r5c2     n7r9c4 n3r6c2     n7r9c4 n4r6c3     n7r9c4 n5r6c4     n7r9c4 n7r6c9     n7r9c4 n5r7c3     n7r9c4 n4r7c8     n7r9c4 n4r8c1     n7r9c4 n8r8c7     n7r9c4 n9r8c8     n7r9c4 n8r9c2     n7r9c4 n7r9c7     n7r9c4 n5r9c9     
(135 988 548 794 554 794 184 988 885 988 794 541 794 444 794 944 794 851 794 952 794 362 794 463 794 564 794 769 794 573 794 478 794 481 794 887 794 988 794 892 794 797 794 599)


