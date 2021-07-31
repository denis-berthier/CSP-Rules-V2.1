
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              RESOLUTION PATHS FOR THE MAGICTOUR TOP 1465 COLLECTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







#1 SER= 9.0

4...3....
...6..8..
........1
....5..9.
.8....6..
.7.2.....
...1.27..
5.3....4.
9........


(solve "4...3.......6..8..........1....5..9..8....6...7.2........1.27..5.3....4.9........")

Using only bivalue-chains and whips:
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
4...3.......6..8..........1....5..9..8....6...7.2........1.27..5.3....4.9........
18 givens, 283 candidates
entering BRT
hidden-single-in-a-block ==> r9c3 = 7
Starting_init_links_with_<Fact-3733>
272 candidates, 2018 csp-links and 2018 links. Density = 5.48%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11198>
whip[1]: r7n5{c9 .} ==> r9c9 ≠ 5, r9c7 ≠ 5, r9c8 ≠ 5
whip[1]: r7n3{c9 .} ==> r9c9 ≠ 3, r9c7 ≠ 3, r9c8 ≠ 3
whip[1]: c2n9{r3 .} ==> r3c3 ≠ 9, r1c3 ≠ 9, r2c3 ≠ 9
whip[1]: c2n5{r3 .} ==> r3c3 ≠ 5, r1c3 ≠ 5, r2c3 ≠ 5
whip[1]: b7n2{r9c2 .} ==> r4c2 ≠ 2, r1c2 ≠ 2, r2c2 ≠ 2, r3c2 ≠ 2
whip[1]: b7n1{r9c2 .} ==> r4c2 ≠ 1, r1c2 ≠ 1, r2c2 ≠ 1
whip[1]: b7n8{r7c3 .} ==> r7c9 ≠ 8, r7c5 ≠ 8, r7c8 ≠ 8
Entering_relation_bivalue_with_<Fact-11213>
Entering_level_BC2_with_<Fact-11278>
biv-chain[2]: r7n3{c8 c9} - b9n5{r7c9 r7c8} ==> r7c8 ≠ 6
biv-chain[2]: r7n3{c9 c8} - b9n5{r7c8 r7c9} ==> r7c9 ≠ 6, r7c9 ≠ 9
hidden-single-in-a-row ==> r7c5 = 9
whip[1]: b8n4{r9c6 .} ==> r9c2 ≠ 4
whip[1]: r7n6{c3 .} ==> r8c2 ≠ 6, r9c2 ≠ 6
biv-chain[2]: r9c2{n2 n1} - r9c7{n1 n2} ==> r9c8 ≠ 2, r9c9 ≠ 2
biv-chain[2]: r9c7{n1 n2} - r9c2{n2 n1} ==> r9c8 ≠ 1
whip[1]: c8n1{r6 .} ==> r4c7 ≠ 1, r6c7 ≠ 1
biv-chain[2]: r9c8{n8 n6} - r9c9{n6 n8} ==> r9c4 ≠ 8, r9c5 ≠ 8, r9c6 ≠ 8, r8c9 ≠ 8
biv-chain[2]: r9c9{n6 n8} - r9c8{n8 n6} ==> r9c5 ≠ 6, r9c6 ≠ 6, r8c9 ≠ 6
naked-single ==> r9c5 = 4
biv-chain[2]: c3n5{r5 r6} - b4n9{r6c3 r5c3} ==> r5c3 ≠ 1, r5c3 ≠ 2, r5c3 ≠ 4
biv-chain[2]: c3n5{r6 r5} - b4n9{r5c3 r6c3} ==> r6c3 ≠ 1, r6c3 ≠ 4, r6c3 ≠ 6
whip[1]: b4n4{r4c3 .} ==> r4c4 ≠ 4, r4c6 ≠ 4, r4c7 ≠ 4, r4c9 ≠ 4
biv-chain[2]: c4n4{r5 r3} - c7n4{r3 r6} ==> r6c6 ≠ 4, r5c9 ≠ 4
Entering_level_W2_with_<Fact-11707>
Entering_level_BC3_with_<Fact-12171>
Entering_level_W3_with_<Fact-12495>
Entering_level_BC4_with_<Fact-13241>
Entering_level_W4_with_<Fact-13451>
Entering_level_BC5_with_<Fact-14466>
Entering_level_W5_with_<Fact-14468>
whip[5]: r2n4{c6 c9} - r2n9{c9 c2} - r2n5{c2 c8} - c7n5{r3 r6} - r6n4{c7 .} ==> r2c6 ≠ 7
whip[5]: r2n4{c6 c9} - r2n9{c9 c2} - r2n5{c2 c8} - c7n5{r3 r6} - r6n4{c7 .} ==> r2c6 ≠ 1
Entering_level_BC6_with_<Fact-16111>
Entering_level_W6_with_<Fact-16113>
whip[6]: c8n2{r3 r5} - r1n2{c8 c3} - r2c3{n2 n1} - r1n1{c3 c6} - r4n1{c6 c1} - r4n2{c1 .} ==> r3c7 ≠ 2
whip[6]: c8n2{r3 r5} - r1n2{c8 c3} - r2c3{n2 n1} - r1n1{c3 c6} - r4n1{c6 c1} - r4n2{c1 .} ==> r2c9 ≠ 2
whip[6]: r2n4{c9 c6} - r2n9{c6 c2} - r2n5{c2 c8} - r7c8{n5 n3} - b3n3{r3c8 r3c7} - r3n4{c7 .} ==> r2c9 ≠ 7
Entering_level_BC7_with_<Fact-17910>
Entering_level_W7_with_<Fact-17912>
whip[7]: c7n5{r3 r6} - c7n4{r6 r3} - r2n4{c9 c6} - r2n5{c6 c2} - r2n9{c2 c9} - b3n3{r2c9 r2c8} - r7c8{n3 .} ==> r3c8 ≠ 5
Entering_level_BC8_with_<Fact-20411>
Entering_level_W8_with_<Fact-20413>
whip[8]: c7n3{r6 r3} - b3n4{r3c7 r2c9} - r6n4{c9 c7} - c7n5{r6 r1} - b3n9{r1c7 r1c9} - r1c2{n9 n6} - r7c2{n6 n4} - r4c2{n4 .} ==> r4c9 ≠ 3
whip[8]: c7n5{r3 r6} - c7n4{r6 r3} - r2n4{c9 c6} - r2n5{c6 c2} - c9n5{r2 r7} - r7c8{n5 n3} - b3n3{r3c8 r2c9} - r2n9{c9 .} ==> r1c8 ≠ 5
whip[8]: c4n4{r5 r3} - c4n9{r3 r1} - c4n5{r1 r9} - c4n3{r9 r4} - r4c7{n3 n2} - b9n2{r9c7 r8c9} - c9n9{r8 r2} - r2n4{c9 .} ==> r5c4 ≠ 7
whip[8]: r1n1{c6 c3} - r1n8{c3 c4} - r8c4{n8 n7} - r4c4{n7 n3} - r4c7{n3 n2} - r9c7{n2 n1} - r8c7{n1 n9} - r1c7{n9 .} ==> r1c6 ≠ 5
Entering_level_BC9_with_<Fact-23857>
Entering_level_W9_with_<Fact-23859>
whip[9]: c4n9{r3 r5} - r5n4{c4 c6} - r2n4{c6 c9} - b3n9{r2c9 r3c7} - c7n4{r3 r6} - c7n3{r6 r4} - b5n3{r4c6 r6c6} - r9c6{n3 n5} - r2c6{n5 .} ==> r1c6 ≠ 9
whip[9]: r8c4{n8 n7} - r4c4{n7 n3} - r4c7{n3 n2} - r5n2{c9 c1} - b4n3{r5c1 r6c1} - c7n3{r6 r3} - r3n4{c7 c6} - r3n9{c6 c2} - r3n5{c2 .} ==> r3c4 ≠ 8
whip[9]: r8c4{n7 n8} - r4c4{n8 n3} - r4c7{n3 n2} - r5n2{c9 c1} - b4n3{r5c1 r6c1} - c7n3{r6 r3} - r3n4{c7 c6} - r3n9{c6 c2} - r3n5{c2 .} ==> r3c4 ≠ 7
Entering_level_BC10_with_<Fact-28302>
Entering_level_W10_with_<Fact-28304>
whip[10]: c4n4{r5 r3} - c4n9{r3 r1} - r2c6{n9 n5} - r2n4{c6 c9} - b3n9{r2c9 r3c7} - r3n5{c7 c2} - c2n9{r3 r2} - c2n3{r2 r4} - c7n3{r4 r6} - r6n4{c7 .} ==> r5c4 ≠ 3
whip[9]: c7n4{r3 r6} - c7n3{r6 r4} - c4n3{r4 r9} - r9n5{c4 c6} - r2n5{c6 c2} - c2n3{r2 r3} - c2n9{r3 r1} - b3n9{r1c7 r2c9} - c9n4{r2 .} ==> r3c7 ≠ 5
whip[6]: r3n5{c6 c2} - c4n5{r3 r9} - c4n3{r9 r4} - c2n3{r4 r2} - r2n9{c2 c9} - r2n4{c9 .} ==> r2c6 ≠ 5
whip[3]: c4n9{r3 r5} - r5n4{c4 c6} - r2c6{n4 .} ==> r3c6 ≠ 9
whip[3]: r2c6{n4 n9} - b5n9{r5c6 r5c4} - r5n4{c4 .} ==> r3c6 ≠ 4
whip[5]: r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 c6} - c6n4{r5 r2} - c9n4{r2 .} ==> r6c9 ≠ 3
whip[6]: c7n3{r6 r3} - r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 c6} - r5n4{c6 c4} - r3n4{c4 .} ==> r6c8 ≠ 3
whip[7]: c8n1{r5 r6} - c5n1{r6 r2} - r5c5{n1 n7} - r4n7{c6 c9} - b6n8{r4c9 r6c9} - c9n4{r6 r2} - c6n4{r2 .} ==> r5c6 ≠ 1
whip[7]: r7c2{n6 n4} - r4c2{n4 n3} - c4n3{r4 r9} - r9n5{c4 c6} - r3n5{c6 c4} - r3n4{c4 c7} - r3n9{c7 .} ==> r3c2 ≠ 6
whip[7]: c7n4{r3 r6} - c7n5{r6 r1} - r2n5{c9 c2} - c2n3{r2 r4} - c4n3{r4 r9} - c4n5{r9 r3} - r3n4{c4 .} ==> r3c7 ≠ 3
whip[1]: c7n3{r6 .} ==> r5c8 ≠ 3, r5c9 ≠ 3
whip[3]: r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 .} ==> r4c6 ≠ 3
whip[3]: r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 .} ==> r4c4 ≠ 3
hidden-single-in-a-column ==> r9c4 = 3
naked-single ==> r9c6 = 5
biv-chain[2]: r4c4{n8 n7} - r8c4{n7 n8} ==> r1c4 ≠ 8
biv-chain[2]: r1n8{c6 c3} - r1n1{c3 c6} ==> r1c6 ≠ 7
biv-chain[2]: r1n1{c3 c6} - r1n8{c6 c3} ==> r1c3 ≠ 2, r1c3 ≠ 6
whip[1]: r1n2{c9 .} ==> r2c8 ≠ 2, r3c8 ≠ 2
biv-chain[2]: r8c4{n7 n8} - r4c4{n8 n7} ==> r1c4 ≠ 7
whip[1]: r1n7{c9 .} ==> r2c8 ≠ 7, r3c8 ≠ 7
biv-chain[2]: r2c8{n5 n3} - r7c8{n3 n5} ==> r5c8 ≠ 5, r6c8 ≠ 5
biv-chain[2]: r7c8{n3 n5} - r2c8{n5 n3} ==> r3c8 ≠ 3
naked-single ==> r3c8 = 6
naked-single ==> r9c8 = 8
naked-single ==> r6c8 = 1
naked-single ==> r9c9 = 6
hidden-single-in-a-row ==> r1c2 = 6
naked-single ==> r7c2 = 4
naked-single ==> r4c2 = 3
naked-single ==> r4c7 = 2
naked-single ==> r5c8 = 7
naked-single ==> r1c8 = 2
naked-single ==> r4c9 = 8
naked-single ==> r4c4 = 7
naked-single ==> r8c4 = 8
naked-single ==> r5c5 = 1
naked-single ==> r4c6 = 6
naked-single ==> r4c1 = 1
naked-single ==> r4c3 = 4
naked-single ==> r6c5 = 8
naked-single ==> r8c6 = 7
naked-single ==> r3c6 = 8
naked-single ==> r1c6 = 1
naked-single ==> r1c3 = 8
naked-single ==> r7c3 = 6
naked-single ==> r7c1 = 8
naked-single ==> r3c3 = 2
naked-single ==> r2c3 = 1
naked-single ==> r3c5 = 7
naked-single ==> r2c5 = 2
naked-single ==> r3c1 = 3
naked-single ==> r2c1 = 7
naked-single ==> r8c5 = 6
naked-single ==> r5c1 = 2
naked-single ==> r5c9 = 5
naked-single ==> r5c3 = 9
naked-single ==> r5c4 = 4
naked-single ==> r5c6 = 3
naked-single ==> r6c6 = 9
naked-single ==> r2c6 = 4
naked-single ==> r6c3 = 5
naked-single ==> r6c9 = 4
naked-single ==> r6c7 = 3
naked-single ==> r7c9 = 3
naked-single ==> r2c9 = 9
naked-single ==> r1c7 = 5
naked-single ==> r1c4 = 9
naked-single ==> r3c4 = 5
naked-single ==> r3c2 = 9
naked-single ==> r2c8 = 3
naked-single ==> r1c9 = 7
naked-single ==> r2c2 = 5
naked-single ==> r3c7 = 4
naked-single ==> r8c9 = 2
naked-single ==> r8c2 = 1
naked-single ==> r8c7 = 9
naked-single ==> r9c2 = 2
naked-single ==> r7c8 = 5
naked-single ==> r9c7 = 1
naked-single ==> r6c1 = 6
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[10]
468931527
751624839
392578461
134756298
289413675
675289314
846192753
513867942
927345186
Puzzle 4...3.......6..8..........1....5..9..8....6...7.2........1.27..5.3....4.9........ :
init-time = 0.18s, solve-time = 12.24s, total-time = 12.43s
nb-facts=<Fact-37074>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


The cost of adding Subsets plus the special case rules (z-chains, t-whips, typed chains)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
4...3.......6..8..........1....5..9..8....6...7.2........1.27..5.3....4.9........
18 givens, 283 candidates
entering BRT
hidden-single-in-a-block ==> r9c3 = 7
Starting_init_links_with_<Fact-6652>
272 candidates, 2018 csp-links and 2018 links. Density = 5.48%
starting non trivial part of solution
Entering_level_W1_with_<Fact-18153>
whip[1]: r7n5{c9 .} ==> r9c9 ≠ 5, r9c7 ≠ 5, r9c8 ≠ 5
whip[1]: r7n3{c9 .} ==> r9c9 ≠ 3, r9c7 ≠ 3, r9c8 ≠ 3
whip[1]: c2n9{r3 .} ==> r3c3 ≠ 9, r1c3 ≠ 9, r2c3 ≠ 9
whip[1]: c2n5{r3 .} ==> r3c3 ≠ 5, r1c3 ≠ 5, r2c3 ≠ 5
whip[1]: b7n2{r9c2 .} ==> r4c2 ≠ 2, r1c2 ≠ 2, r2c2 ≠ 2, r3c2 ≠ 2
whip[1]: b7n1{r9c2 .} ==> r4c2 ≠ 1, r1c2 ≠ 1, r2c2 ≠ 1
whip[1]: b7n8{r7c3 .} ==> r7c9 ≠ 8, r7c5 ≠ 8, r7c8 ≠ 8
Entering_relation_bivalue_with_<Fact-18168>
Entering_level_S2_with_<Fact-18233>
hidden-pairs-in-a-row: r9{n3 n5}{c4 c6} ==> r9c6 ≠ 8, r9c6 ≠ 6, r9c6 ≠ 4, r9c4 ≠ 8, r9c4 ≠ 4
whip[1]: b8n4{r9c5 .} ==> r2c5 ≠ 4, r3c5 ≠ 4, r5c5 ≠ 4, r6c5 ≠ 4
hidden-pairs-in-a-column: c2{n1 n2}{r8 r9} ==> r9c2 ≠ 6, r9c2 ≠ 4, r8c2 ≠ 6
hidden-single-in-a-row ==> r9c5 = 4
whip[1]: r9n6{c9 .} ==> r7c8 ≠ 6, r7c9 ≠ 6, r8c9 ≠ 6
whip[1]: r8n6{c6 .} ==> r7c5 ≠ 6
naked-single ==> r7c5 = 9
whip[1]: r9n8{c9 .} ==> r8c9 ≠ 8
naked-pairs-in-a-row: r9{c2 c7}{n1 n2} ==> r9c9 ≠ 2, r9c8 ≠ 2, r9c8 ≠ 1
whip[1]: c8n1{r6 .} ==> r4c7 ≠ 1, r6c7 ≠ 1
hidden-pairs-in-a-column: c3{n5 n9}{r5 r6} ==> r6c3 ≠ 6, r6c3 ≠ 4, r6c3 ≠ 1, r5c3 ≠ 4, r5c3 ≠ 2, r5c3 ≠ 1
whip[1]: b4n4{r4c3 .} ==> r4c4 ≠ 4, r4c6 ≠ 4, r4c7 ≠ 4, r4c9 ≠ 4
finned-x-wing-in-columns: n4{c7 c4}{r3 r6} ==> r6c6 ≠ 4
whip[1]: r6n4{c9 .} ==> r5c9 ≠ 4
Entering_level_TyBC2_with_<Fact-18409>
Entering_level_BC2_with_<Fact-18536>
Entering_level_TyZ2_with_<Fact-18835>
Entering_level_Z2_with_<Fact-18837>
Entering_level_TytW2_with_<Fact-18839>
Entering_level_tW2_with_<Fact-18840>
Entering_level_TyW2_with_<Fact-18841>
Entering_level_W2_with_<Fact-20054>
Entering_level_S3_with_<Fact-20055>
Entering_level_TyBC3_with_<Fact-20091>
Entering_level_BC3_with_<Fact-20126>
Entering_level_TyZ3_with_<Fact-20449>
Entering_level_Z3_with_<Fact-20996>
Entering_level_TytW3_with_<Fact-21658>
Entering_level_TyW3_with_<Fact-22276>
Entering_level_tW3_with_<Fact-22278>
Entering_level_W3_with_<Fact-23024>
Entering_level_S4_with_<Fact-23025>
Entering_level_TyBC4_with_<Fact-23033>
Entering_level_BC4_with_<Fact-23044>
Entering_level_TyZ4_with_<Fact-23253>
Entering_level_Z4_with_<Fact-23502>
Entering_level_TytW4_with_<Fact-24166>
Entering_level_TyW4_with_<Fact-24559>
Entering_level_tW4_with_<Fact-24561>
Entering_level_W4_with_<Fact-25576>
Entering_level_TyBC5_with_<Fact-25577>
Entering_level_BC5_with_<Fact-25578>
Entering_level_TyZ5_with_<Fact-25579>
Entering_level_Z5_with_<Fact-25693>
Entering_level_TytW5_with_<Fact-26291>
Entering_level_TyW5_with_<Fact-26556>
Entering_level_tW5_with_<Fact-26558>
Entering_level_W5_with_<Fact-28003>
whip[5]: r2n4{c6 c9} - r2n9{c9 c2} - r2n5{c2 c8} - c7n5{r3 r6} - r6n4{c7 .} ==> r2c6 ≠ 1
whip[5]: r2n4{c6 c9} - r2n9{c9 c2} - r2n5{c2 c8} - c7n5{r3 r6} - r6n4{c7 .} ==> r2c6 ≠ 7
Entering_level_TyBC6_with_<Fact-28366>
Entering_level_BC6_with_<Fact-28367>
Entering_level_TyZ6_with_<Fact-28368>
Entering_level_Z6_with_<Fact-28411>
Entering_level_TytW6_with_<Fact-28854>
Entering_level_TyW6_with_<Fact-29017>
Entering_level_tW6_with_<Fact-29019>
t-whip[6]: r1n2{c9 c3} - r1n1{c3 c6} - r1n8{c6 c4} - r8c4{n8 n7} - r4c4{n7 n3} - r4c7{n3 .} ==> r3c7 ≠ 2
Entering_level_W6_with_<Fact-31214>
whip[6]: b3n4{r2c9 r3c7} - b2n4{r3c6 r2c6} - r2n9{c6 c2} - r2n5{c2 c8} - b3n3{r2c8 r3c8} - r7c8{n3 .} ==> r2c9 ≠ 2
whip[6]: b3n4{r2c9 r3c7} - b2n4{r3c6 r2c6} - r2n9{c6 c2} - r2n5{c2 c8} - b3n3{r2c8 r3c8} - r7c8{n3 .} ==> r2c9 ≠ 7
Entering_level_TyBC7_with_<Fact-31228>
Entering_level_BC7_with_<Fact-31229>
Entering_level_TyZ7_with_<Fact-31230>
Entering_level_Z7_with_<Fact-31244>
Entering_level_TytW7_with_<Fact-31476>
Entering_level_TyW7_with_<Fact-31589>
Entering_level_tW7_with_<Fact-31591>
Entering_level_W7_with_<Fact-34139>
whip[7]: c7n5{r3 r6} - c7n4{r6 r3} - r2n4{c9 c6} - r2n5{c6 c2} - r2n9{c2 c9} - b3n3{r2c9 r2c8} - r7c8{n3 .} ==> r3c8 ≠ 5
Entering_level_TyBC8_with_<Fact-34142>
Entering_level_BC8_with_<Fact-34143>
Entering_level_TyZ8_with_<Fact-34144>
Entering_level_Z8_with_<Fact-34148>
Entering_level_TytW8_with_<Fact-34285>
Entering_level_TyW8_with_<Fact-34341>
Entering_level_tW8_with_<Fact-34343>
t-whip[8]: c7n3{r6 r3} - b3n4{r3c7 r2c9} - r6n4{c9 c7} - c7n5{r6 r1} - b3n9{r1c7 r1c9} - r1c2{n9 n6} - r7c2{n6 n4} - r4c2{n4 .} ==> r4c9 ≠ 3
Entering_level_W8_with_<Fact-38131>
whip[8]: r1n1{c6 c3} - r1n8{c3 c4} - r8c4{n8 n7} - r4c4{n7 n3} - r4c7{n3 n2} - r1c7{n2 n9} - r8c7{n9 n1} - r9c7{n1 .} ==> r1c6 ≠ 5
whip[8]: c4n4{r5 r3} - c4n9{r3 r1} - c4n5{r1 r9} - c4n3{r9 r4} - r4c7{n3 n2} - b9n2{r9c7 r8c9} - c9n9{r8 r2} - r2n4{c9 .} ==> r5c4 ≠ 7
whip[8]: r7n5{c8 c9} - b6n5{r6c9 r6c7} - c7n4{r6 r3} - c7n3{r3 r4} - c9n3{r6 r2} - r2n4{c9 c6} - r2n5{c6 c2} - r2n9{c2 .} ==> r1c8 ≠ 5
Entering_level_TyBC9_with_<Fact-38134>
Entering_level_BC9_with_<Fact-38135>
Entering_level_TyZ9_with_<Fact-38136>
Entering_level_Z9_with_<Fact-38138>
Entering_level_TytW9_with_<Fact-38190>
Entering_level_TyW9_with_<Fact-38234>
Entering_level_tW9_with_<Fact-38236>
Entering_level_W9_with_<Fact-43393>
whip[9]: c4n9{r3 r5} - c4n4{r5 r3} - r2c6{n4 n5} - r9n5{c6 c4} - c4n3{r9 r4} - r4c7{n3 n2} - b9n2{r9c7 r8c9} - c9n9{r8 r2} - r2n4{c9 .} ==> r1c6 ≠ 9
whip[9]: c4n4{r3 r5} - c4n9{r5 r1} - c4n5{r1 r9} - c4n3{r9 r4} - r4c7{n3 n2} - r1c7{n2 n5} - r1c2{n5 n6} - r4c2{n6 n4} - r7c2{n4 .} ==> r3c4 ≠ 7
whip[9]: c4n4{r3 r5} - c4n9{r5 r1} - c4n5{r1 r9} - c4n3{r9 r4} - r4c7{n3 n2} - r1c7{n2 n5} - r1c2{n5 n6} - r4c2{n6 n4} - r7c2{n4 .} ==> r3c4 ≠ 8
Entering_level_TyBC10_with_<Fact-43469>
Entering_level_BC10_with_<Fact-43470>
Entering_level_TyZ10_with_<Fact-43471>
Entering_level_Z10_with_<Fact-43473>
Entering_level_TytW10_with_<Fact-43485>
Entering_level_TyW10_with_<Fact-43492>
Entering_level_tW10_with_<Fact-43494>
Entering_level_W10_with_<Fact-50498>
whip[10]: c4n4{r5 r3} - c4n9{r3 r1} - r2c6{n9 n5} - r2n4{c6 c9} - b3n9{r2c9 r3c7} - r3n5{c7 c2} - c2n9{r3 r2} - c2n3{r2 r4} - c7n3{r4 r6} - r6n4{c7 .} ==> r5c4 ≠ 3
t-whip[9]: r9c6{n5 n3} - c4n3{r9 r4} - r4c7{n3 n2} - b4n2{r4c1 r5c1} - b4n3{r5c1 r6c1} - c7n3{r6 r3} - b3n4{r3c7 r2c9} - r2n3{c9 c2} - r2n9{c2 .} ==> r2c6 ≠ 5
z-chain[3]: r2c6{n9 n4} - r5n4{c6 c4} - c4n9{r5 .} ==> r3c6 ≠ 9
t-whip[3]: r2c6{n4 n9} - c4n9{r3 r5} - r5n4{c4 .} ==> r3c6 ≠ 4
whip[5]: r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 c6} - c6n4{r5 r2} - c9n4{r2 .} ==> r6c9 ≠ 3
whip[6]: r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 c6} - r5n4{c6 c4} - r3n4{c4 c7} - c7n3{r3 .} ==> r6c8 ≠ 3
whip[7]: b3n4{r3c7 r2c9} - r2n5{c9 c2} - r2n9{c2 c6} - r3n9{c4 c2} - c2n3{r3 r4} - c7n3{r4 r6} - r6n4{c7 .} ==> r3c7 ≠ 5
whip[7]: c7n4{r3 r6} - c7n5{r6 r1} - c4n5{r1 r9} - c4n3{r9 r4} - c7n3{r4 r3} - c2n3{r3 r2} - r2n5{c2 .} ==> r3c4 ≠ 4
hidden-single-in-a-block ==> r2c6 = 4
hidden-single-in-a-block ==> r3c7 = 4
hidden-single-in-a-block ==> r6c9 = 4
hidden-single-in-a-block ==> r5c4 = 4
whip[1]: c7n3{r6 .} ==> r5c8 ≠ 3, r5c9 ≠ 3
t-whip[3]: r4c7{n3 n2} - r5n2{c9 c1} - r5n3{c1 .} ==> r4c4 ≠ 3, r4c6 ≠ 3
hidden-single-in-a-column ==> r9c4 = 3
naked-single ==> r9c6 = 5
naked-pairs-in-a-column: c4{r4 r8}{n7 n8} ==> r1c4 ≠ 8, r1c4 ≠ 7
hidden-pairs-in-a-row: r1{n1 n8}{c3 c6} ==> r1c6 ≠ 7, r1c3 ≠ 6, r1c3 ≠ 2
whip[1]: r1n2{c9 .} ==> r2c8 ≠ 2, r3c8 ≠ 2
whip[1]: r1n7{c9 .} ==> r2c8 ≠ 7, r3c8 ≠ 7
naked-pairs-in-a-column: c8{r2 r7}{n3 n5} ==> r6c8 ≠ 5, r5c8 ≠ 5, r3c8 ≠ 3
naked-single ==> r3c8 = 6
naked-single ==> r9c8 = 8
naked-single ==> r6c8 = 1
naked-single ==> r9c9 = 6
hidden-single-in-a-block ==> r4c9 = 8
naked-single ==> r4c4 = 7
naked-single ==> r5c5 = 1
naked-single ==> r4c6 = 6
naked-single ==> r6c5 = 8
naked-single ==> r8c4 = 8
naked-single ==> r8c6 = 7
naked-single ==> r3c6 = 8
naked-single ==> r1c6 = 1
naked-single ==> r1c3 = 8
naked-single ==> r3c3 = 2
naked-single ==> r2c3 = 1
naked-single ==> r4c3 = 4
naked-single ==> r4c2 = 3
naked-single ==> r4c7 = 2
naked-single ==> r4c1 = 1
naked-single ==> r5c8 = 7
naked-single ==> r1c8 = 2
naked-single ==> r5c9 = 5
naked-single ==> r5c3 = 9
naked-single ==> r5c6 = 3
naked-single ==> r6c6 = 9
naked-single ==> r6c3 = 5
naked-single ==> r6c7 = 3
naked-single ==> r7c9 = 3
naked-single ==> r2c9 = 9
naked-single ==> r1c7 = 5
naked-single ==> r1c4 = 9
naked-single ==> r1c2 = 6
naked-single ==> r7c2 = 4
naked-single ==> r3c4 = 5
naked-single ==> r3c2 = 9
naked-single ==> r2c8 = 3
naked-single ==> r2c1 = 7
naked-single ==> r2c5 = 2
naked-single ==> r3c1 = 3
naked-single ==> r1c9 = 7
naked-single ==> r2c2 = 5
naked-single ==> r8c9 = 2
naked-single ==> r8c2 = 1
naked-single ==> r8c7 = 9
naked-single ==> r9c2 = 2
naked-single ==> r7c8 = 5
naked-single ==> r9c7 = 1
naked-single ==> r5c1 = 2
naked-single ==> r6c1 = 6
naked-single ==> r7c1 = 8
naked-single ==> r7c3 = 6
naked-single ==> r3c5 = 7
naked-single ==> r8c5 = 6
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[10]
468931527
751624839
392578461
134756298
289413675
675289314
846192753
513867942
927345186
Puzzle 4...3.......6..8..........1....5..9..8....6...7.2........1.27..5.3....4.9........ :
init-time = 0.19s, solve-time = 18.93s, total-time = 19.12s
nb-facts=<Fact-69020>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



