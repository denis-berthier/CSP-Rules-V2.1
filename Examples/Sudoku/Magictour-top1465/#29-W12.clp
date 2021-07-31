
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







#29 SER= 9.1

..1.....7
...89....
......6..
26..3....
...5...74
9........
...1.4.5.
83.......
......2..

(solve "..1.....7...89..........6..26..3.......5...749...........1.4.5.83.............2..")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..1.....7...89..........6..26..3.......5...749...........1.4.5.83.............2..
18 givens, 279 candidates
entering BRT
Starting_init_links_with_<Fact-6647>
279 candidates, 2112 csp-links and 2112 links. Density = 5.45%
starting non trivial part of solution
Entering_level_W1_with_<Fact-18688>
whip[1]: r8n1{c9 .} ==> r9c9 ≠ 1, r9c8 ≠ 1
whip[1]: r7n3{c9 .} ==> r9c9 ≠ 3, r9c8 ≠ 3
whip[1]: r5n6{c6 .} ==> r6c6 ≠ 6, r6c4 ≠ 6, r6c5 ≠ 6
whip[1]: r5n2{c6 .} ==> r6c6 ≠ 2, r6c4 ≠ 2, r6c5 ≠ 2
Entering_relation_bivalue_with_<Fact-18697>
Entering_level_S2_with_<Fact-18746>
hidden-pairs-in-a-row: r6{n2 n6}{c8 c9} ==> r6c9 ≠ 8, r6c9 ≠ 5, r6c9 ≠ 3, r6c9 ≠ 1, r6c8 ≠ 8, r6c8 ≠ 3, r6c8 ≠ 1
whip[1]: c8n3{r3 .} ==> r1c7 ≠ 3, r2c7 ≠ 3, r2c9 ≠ 3, r3c9 ≠ 3
hidden-single-in-a-column ==> r7c9 = 3
hidden-pairs-in-a-row: r5{n2 n6}{c5 c6} ==> r5c6 ≠ 9, r5c6 ≠ 8, r5c6 ≠ 1, r5c5 ≠ 8, r5c5 ≠ 1
hidden-single-in-a-row ==> r5c7 = 9
hidden-single-in-a-block ==> r6c7 = 3
whip[1]: b6n1{r4c9 .} ==> r4c6 ≠ 1
whip[1]: b5n1{r6c6 .} ==> r6c2 ≠ 1
whip[1]: r6n5{c3 .} ==> r4c3 ≠ 5
whip[1]: b6n8{r4c9 .} ==> r4c3 ≠ 8, r4c6 ≠ 8
whip[1]: b5n8{r6c6 .} ==> r6c2 ≠ 8, r6c3 ≠ 8
whip[1]: r7n9{c3 .} ==> r8c3 ≠ 9, r9c2 ≠ 9, r9c3 ≠ 9
hidden-pairs-in-a-row: r6{n1 n8}{c5 c6} ==> r6c6 ≠ 7, r6c5 ≠ 7, r6c5 ≠ 4
whip[1]: c5n4{r3 .} ==> r1c4 ≠ 4, r3c4 ≠ 4
Entering_level_TyBC2_with_<Fact-18885>
Entering_level_BC2_with_<Fact-18970>
Entering_level_TyZ2_with_<Fact-19175>
Entering_level_Z2_with_<Fact-19177>
Entering_level_TytW2_with_<Fact-19179>
Entering_level_tW2_with_<Fact-19180>
Entering_level_TyW2_with_<Fact-19181>
Entering_level_W2_with_<Fact-20252>
Entering_level_S3_with_<Fact-20253>
Entering_level_TyBC3_with_<Fact-20309>
Entering_level_BC3_with_<Fact-20338>
Entering_level_TyZ3_with_<Fact-20553>
Entering_level_Z3_with_<Fact-20995>
Entering_level_TytW3_with_<Fact-21564>
Entering_level_TyW3_with_<Fact-22052>
Entering_level_tW3_with_<Fact-22054>
Entering_level_W3_with_<Fact-22673>
Entering_level_S4_with_<Fact-22674>
Entering_level_TyBC4_with_<Fact-22682>
Entering_level_BC4_with_<Fact-22691>
Entering_level_TyZ4_with_<Fact-22880>
Entering_level_Z4_with_<Fact-23037>
z-chain[4]: c3n8{r3 r5} - r5n3{c3 c1} - c1n1{r5 r9} - c1n4{r9 .} ==> r3c3 ≠ 4
z-chain[4]: c3n8{r3 r5} - r5n3{c3 c1} - c1n1{r5 r9} - c1n5{r9 .} ==> r3c3 ≠ 5
Entering_level_TytW4_with_<Fact-23585>
Entering_level_TyW4_with_<Fact-23846>
whip-rc[4]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r7c1{n6 .} ==> r7c3 ≠ 7
whip-rc[4]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r7c1{n6 .} ==> r8c3 ≠ 7
Entering_level_tW4_with_<Fact-23882>
Entering_level_W4_with_<Fact-24555>
Entering_level_TyBC5_with_<Fact-24556>
Entering_level_BC5_with_<Fact-24557>
Entering_level_TyZ5_with_<Fact-24582>
Entering_level_Z5_with_<Fact-24632>
Entering_level_TytW5_with_<Fact-25007>
Entering_level_TyW5_with_<Fact-25143>
Entering_level_tW5_with_<Fact-25145>
Entering_level_W5_with_<Fact-25854>
whip[5]: c1n4{r3 r9} - r9n1{c1 c2} - c2n4{r9 r6} - r6n5{c2 c3} - b7n5{r8c3 .} ==> r2c3 ≠ 4
Entering_level_TyBC6_with_<Fact-25855>
Entering_level_BC6_with_<Fact-25856>
Entering_level_TyZ6_with_<Fact-25857>
Entering_level_Z6_with_<Fact-25872>
Entering_level_TytW6_with_<Fact-26105>
Entering_level_TyW6_with_<Fact-26179>
Entering_level_tW6_with_<Fact-26181>
Entering_level_W6_with_<Fact-26837>
whip[6]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r8c3{n6 n2} - r7n2{c3 c5} - r7n6{c5 .} ==> r2c3 ≠ 7
whip[6]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r8c3{n6 n2} - r7n2{c3 c5} - r7n6{c5 .} ==> r3c3 ≠ 7
Entering_level_TyBC7_with_<Fact-27042>
Entering_level_BC7_with_<Fact-27043>
Entering_level_TyZ7_with_<Fact-27044>
Entering_level_Z7_with_<Fact-27047>
Entering_level_TytW7_with_<Fact-27207>
Entering_level_TyW7_with_<Fact-27240>
Entering_level_tW7_with_<Fact-27242>
Entering_level_W7_with_<Fact-27863>
whip[7]: r6n5{c2 c3} - b4n4{r6c3 r4c3} - c3n7{r4 r9} - r7c1{n7 n6} - r8c3{n6 n2} - r7c2{n2 n9} - r7c3{n9 .} ==> r6c2 ≠ 7
whip[1]: b4n7{r6c3 .} ==> r9c3 ≠ 7
Entering_level_TyBC8_with_<Fact-30978>
Entering_level_BC8_with_<Fact-30979>
Entering_level_TyZ8_with_<Fact-30980>
Entering_level_Z8_with_<Fact-30982>
Entering_level_TytW8_with_<Fact-31138>
Entering_level_TyW8_with_<Fact-31154>
Entering_level_tW8_with_<Fact-31156>
Entering_level_W8_with_<Fact-32270>
whip[8]: r7n6{c3 c5} - r7n8{c5 c7} - r9c9{n8 n9} - r9c8{n9 n4} - r8n4{c8 c3} - r9c3{n4 n5} - r6n5{c3 c2} - b4n4{r6c2 .} ==> r9c1 ≠ 6
whip[8]: c1n5{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - c3n8{r5 r3} - c3n9{r3 r7} - c3n2{r7 r8} - b7n4{r8c3 r9c3} - c3n6{r9 .} ==> r2c3 ≠ 5
Entering_level_TyBC9_with_<Fact-32537>
Entering_level_BC9_with_<Fact-32538>
Entering_level_TyZ9_with_<Fact-32539>
Entering_level_Z9_with_<Fact-32541>
Entering_level_TytW9_with_<Fact-32643>
Entering_level_TyW9_with_<Fact-32651>
Entering_level_tW9_with_<Fact-32653>
Entering_level_W9_with_<Fact-33839>
whip[9]: c1n4{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - c3n8{r5 r3} - b1n9{r3c3 r3c2} - r1n9{c2 c8} - r1n8{c8 c7} - r7c7{n8 n7} - b7n7{r7c1 .} ==> r1c2 ≠ 4
whip[9]: c1n5{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - c3n8{r5 r3} - b1n9{r3c3 r3c2} - r1n9{c2 c8} - r1n8{c8 c7} - r7c7{n8 n7} - b7n7{r7c1 .} ==> r1c2 ≠ 5
Entering_level_TyBC10_with_<Fact-33855>
Entering_level_BC10_with_<Fact-33856>
Entering_level_TyZ10_with_<Fact-33857>
Entering_level_Z10_with_<Fact-33859>
Entering_level_TytW10_with_<Fact-33887>
Entering_level_TyW10_with_<Fact-33891>
Entering_level_tW10_with_<Fact-33893>
Entering_level_W10_with_<Fact-35345>
Entering_level_TyBC11_with_<Fact-35346>
Entering_level_BC11_with_<Fact-35347>
Entering_level_TyZ11_with_<Fact-35348>
Entering_level_Z11_with_<Fact-35350>
Entering_level_TytW11_with_<Fact-35366>
Entering_level_TyW11_with_<Fact-35370>
Entering_level_tW11_with_<Fact-35372>
Entering_level_W11_with_<Fact-37453>
Entering_level_TyBC12_with_<Fact-37454>
Entering_level_BC12_with_<Fact-37455>
Entering_level_TyZ12_with_<Fact-37456>
Entering_level_Z12_with_<Fact-37458>
Entering_level_TytW12_with_<Fact-37465>
Entering_level_TyW12_with_<Fact-37468>
Entering_level_tW12_with_<Fact-37470>
Entering_level_W12_with_<Fact-40556>
whip[12]: r1n9{c2 c8} - r1n8{c8 c7} - r7c7{n8 n7} - r7c2{n7 n9} - c3n9{r7 r3} - c3n8{r3 r5} - c3n3{r5 r2} - c1n3{r3 r5} - c1n1{r5 r9} - b7n7{r9c1 r9c2} - r7c1{n7 n6} - b1n6{r1c1 .} ==> r1c2 ≠ 2
whip[8]: r1n2{c6 c8} - r1n9{c8 c2} - r1n8{c2 c7} - r7c7{n8 n7} - r7c1{n7 n6} - b1n6{r1c1 r2c3} - r2n2{c3 c2} - r7c2{n2 .} ==> r3c6 ≠ 2
whip[8]: r1n2{c6 c8} - r1n9{c8 c2} - r1n8{c2 c7} - r7c7{n8 n7} - r7c1{n7 n6} - b1n6{r1c1 r2c3} - r2n2{c3 c2} - r7c2{n2 .} ==> r3c5 ≠ 2
whip[8]: r1n2{c6 c8} - r1n9{c8 c2} - r1n8{c2 c7} - r7c7{n8 n7} - r7c1{n7 n6} - b1n6{r1c1 r2c3} - r2n2{c3 c2} - r7c2{n2 .} ==> r3c4 ≠ 2
z-chain[3]: r9n3{c6 c4} - r3c4{n3 n7} - c5n7{r3 .} ==> r9c6 ≠ 7
whip[7]: c4n2{r1 r8} - c4n6{r8 r9} - c4n9{r9 r4} - r4n4{c4 c3} - r9c3{n4 n5} - r8c3{n5 n6} - b9n6{r8c8 .} ==> r1c4 ≠ 3
whip[8]: r9n3{c6 c4} - c4n6{r9 r1} - c4n2{r1 r8} - c4n9{r8 r4} - r4n4{c4 c3} - r9c3{n4 n5} - r8c3{n5 n6} - b9n6{r8c8 .} ==> r9c6 ≠ 6
whip[8]: c4n2{r8 r1} - c4n6{r1 r9} - c4n9{r9 r4} - r4n4{c4 c3} - r9c3{n4 n5} - r9c5{n5 n8} - b9n8{r9c8 r7c7} - c7n7{r7 .} ==> r8c4 ≠ 7
whip[9]: r7n6{c3 c5} - r7n8{c5 c7} - r9c9{n8 n9} - r9c8{n9 n4} - r8n4{c8 c3} - r4n4{c3 c4} - c4n9{r4 r8} - c4n2{r8 r1} - c4n6{r1 .} ==> r9c3 ≠ 6
naked-triplets-in-a-column: c3{r4 r6 r9}{n4 n7 n5} ==> r8c3 ≠ 5, r8c3 ≠ 4
whip[1]: r8n4{c8 .} ==> r9c8 ≠ 4
whip[1]: r8n5{c6 .} ==> r9c5 ≠ 5, r9c6 ≠ 5
hidden-triplets-in-a-row: r9{n1 n4 n5}{c1 c2 c3} ==> r9c2 ≠ 7, r9c1 ≠ 7
whip[1]: r9n7{c5 .} ==> r7c5 ≠ 7, r8c5 ≠ 7, r8c6 ≠ 7
hidden-single-in-a-row ==> r8c7 = 7
naked-single ==> r7c7 = 8
hidden-single-in-a-block ==> r8c8 = 4
hidden-single-in-a-block ==> r8c9 = 1
whip[1]: b9n6{r9c9 .} ==> r9c4 ≠ 6, r9c5 ≠ 6
whip[1]: b9n9{r9c9 .} ==> r9c4 ≠ 9, r9c6 ≠ 9
naked-pairs-in-a-column: c4{r3 r9}{n3 n7} ==> r6c4 ≠ 7, r4c4 ≠ 7
naked-single ==> r6c4 = 4
naked-single ==> r4c4 = 9
naked-single ==> r4c6 = 7
naked-single ==> r4c3 = 4
naked-single ==> r9c3 = 5
naked-single ==> r6c3 = 7
naked-single ==> r6c2 = 5
hidden-single-in-a-column ==> r8c6 = 9
hidden-single-in-a-block ==> r8c5 = 5
whip[1]: b2n7{r3c5 .} ==> r3c1 ≠ 7, r3c2 ≠ 7
naked-pairs-in-a-column: c5{r5 r7}{n2 n6} ==> r1c5 ≠ 6, r1c5 ≠ 2
naked-single ==> r1c5 = 4
naked-single ==> r1c7 = 5
naked-single ==> r2c9 = 2
naked-single ==> r6c9 = 6
naked-single ==> r6c8 = 2
naked-single ==> r9c9 = 9
naked-single ==> r3c9 = 8
naked-single ==> r4c9 = 5
naked-single ==> r9c8 = 6
naked-single ==> r4c7 = 1
naked-single ==> r2c7 = 4
naked-single ==> r2c2 = 7
naked-single ==> r4c8 = 8
hidden-single-in-a-column ==> r7c1 = 7
hidden-single-in-a-row ==> r1c2 = 8
naked-single ==> r5c2 = 1
naked-single ==> r5c1 = 3
naked-single ==> r1c1 = 6
naked-single ==> r1c4 = 2
naked-single ==> r1c6 = 3
naked-single ==> r1c8 = 9
naked-single ==> r3c4 = 7
naked-single ==> r3c5 = 1
naked-single ==> r3c6 = 5
naked-single ==> r2c6 = 6
naked-single ==> r5c6 = 2
naked-single ==> r5c5 = 6
naked-single ==> r7c5 = 2
naked-single ==> r7c2 = 9
naked-single ==> r7c3 = 6
naked-single ==> r8c3 = 2
naked-single ==> r3c1 = 4
naked-single ==> r3c2 = 2
naked-single ==> r9c1 = 1
naked-single ==> r3c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r3c3 = 9
naked-single ==> r6c5 = 8
naked-single ==> r6c6 = 1
naked-single ==> r9c5 = 7
naked-single ==> r9c4 = 3
naked-single ==> r9c6 = 8
naked-single ==> r8c4 = 6
naked-single ==> r2c1 = 5
naked-single ==> r2c3 = 3
naked-single ==> r5c3 = 8
naked-single ==> r9c2 = 4
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[12]
681243597
573896412
429715638
264937185
318562974
957481326
796124853
832659741
145378269
Puzzle ..1.....7...89..........6..26..3.......5...749...........1.4.5.83.............2.. :
init-time = 0.19s, solve-time = 20.71s, total-time = 20.9s
nb-facts=<Fact-50869>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Compare with time when only bivalue-chains and whips are activated (not much difference in the present case):

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  using CLIPS 6.32-r765
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..1.....7...89..........6..26..3.......5...749...........1.4.5.83.............2..
18 givens, 279 candidates
entering BRT
Starting_init_links_with_<Fact-3728>
279 candidates, 2112 csp-links and 2112 links. Density = 5.45%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11545>
whip[1]: r8n1{c9 .} ==> r9c9 ≠ 1, r9c8 ≠ 1
whip[1]: r7n3{c9 .} ==> r9c9 ≠ 3, r9c8 ≠ 3
whip[1]: r5n6{c6 .} ==> r6c6 ≠ 6, r6c4 ≠ 6, r6c5 ≠ 6
whip[1]: r5n2{c6 .} ==> r6c6 ≠ 2, r6c4 ≠ 2, r6c5 ≠ 2
Entering_level_W2_with_<Fact-11555>
whip[2]: r6n6{c9 c8} - r6n2{c8 .} ==> r6c9 ≠ 8, r6c9 ≠ 1, r6c9 ≠ 3, r6c9 ≠ 5
whip[2]: r6n6{c8 c9} - r6n2{c9 .} ==> r6c8 ≠ 8, r6c8 ≠ 1, r6c8 ≠ 3
whip[1]: c8n3{r3 .} ==> r1c7 ≠ 3, r2c7 ≠ 3, r2c9 ≠ 3, r3c9 ≠ 3
hidden-single-in-a-column ==> r7c9 = 3
whip[2]: r5n6{c6 c5} - r5n2{c5 .} ==> r5c6 ≠ 9, r5c6 ≠ 1, r5c6 ≠ 8
hidden-single-in-a-row ==> r5c7 = 9
hidden-single-in-a-block ==> r6c7 = 3
whip[1]: b6n1{r4c9 .} ==> r4c6 ≠ 1
whip[1]: r6n5{c3 .} ==> r4c3 ≠ 5
whip[1]: b6n8{r4c9 .} ==> r4c3 ≠ 8, r4c6 ≠ 8
whip[1]: r7n9{c3 .} ==> r8c3 ≠ 9, r9c2 ≠ 9, r9c3 ≠ 9
whip[2]: r5n6{c5 c6} - r5n2{c6 .} ==> r5c5 ≠ 8, r5c5 ≠ 1
whip[1]: b5n1{r6c6 .} ==> r6c2 ≠ 1
whip[1]: b5n8{r6c6 .} ==> r6c2 ≠ 8, r6c3 ≠ 8
whip[2]: r6n8{c6 c5} - r6n1{c5 .} ==> r6c6 ≠ 7
whip[2]: r6n8{c5 c6} - r6n1{c6 .} ==> r6c5 ≠ 4, r6c5 ≠ 7
whip[1]: c5n4{r3 .} ==> r1c4 ≠ 4, r3c4 ≠ 4
Entering_level_W3_with_<Fact-12145>
Entering_level_W4_with_<Fact-12769>
whip[4]: c1n5{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - b1n8{r1c2 .} ==> r3c3 ≠ 5
whip[4]: c1n4{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - b1n8{r1c2 .} ==> r3c3 ≠ 4
whip[4]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r7c1{n6 .} ==> r7c3 ≠ 7
whip[4]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r7c1{n6 .} ==> r8c3 ≠ 7
Entering_level_W5_with_<Fact-13497>
whip[5]: c1n4{r3 r9} - c2n4{r9 r6} - r6n5{c2 c3} - b7n5{r9c3 r9c2} - r9n1{c2 .} ==> r2c3 ≠ 4
Entering_level_W6_with_<Fact-14149>
whip[6]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r8c3{n6 n2} - r7n2{c3 c5} - r7n6{c5 .} ==> r2c3 ≠ 7
whip[6]: r4c3{n7 n4} - r6c3{n4 n5} - r9c3{n5 n6} - r8c3{n6 n2} - r7n2{c3 c5} - r7n6{c5 .} ==> r3c3 ≠ 7
Entering_level_W7_with_<Fact-14880>
whip[7]: r4c3{n7 n4} - r6c3{n4 n5} - c3n7{r6 r9} - r7c1{n7 n6} - r8c3{n6 n2} - r7c3{n2 n9} - r7c2{n9 .} ==> r6c2 ≠ 7
whip[1]: b4n7{r6c3 .} ==> r9c3 ≠ 7
Entering_level_W8_with_<Fact-17284>
whip[8]: r7c1{n6 n7} - r7c7{n7 n8} - r9c9{n8 n9} - r9c8{n9 n4} - r8n4{c8 c3} - r9c3{n4 n5} - r6c3{n5 n7} - r4c3{n7 .} ==> r9c1 ≠ 6
whip[8]: c1n5{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - c3n8{r5 r3} - c3n9{r3 r7} - c3n2{r7 r8} - c3n6{r8 r9} - b7n4{r9c3 .} ==> r2c3 ≠ 5
Entering_level_W9_with_<Fact-18478>
whip[9]: c1n5{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - c3n8{r5 r3} - b1n9{r3c3 r3c2} - r1n9{c2 c8} - r1n8{c8 c7} - r7c7{n8 n7} - b7n7{r7c1 .} ==> r1c2 ≠ 5
whip[9]: c1n4{r3 r9} - r9n1{c1 c2} - r5c2{n1 n8} - c3n8{r5 r3} - b1n9{r3c3 r3c2} - r1n9{c2 c8} - r1n8{c8 c7} - r7c7{n8 n7} - b7n7{r7c1 .} ==> r1c2 ≠ 4
Entering_level_W10_with_<Fact-19570>
Entering_level_W11_with_<Fact-21060>
Entering_level_W12_with_<Fact-23210>
whip[12]: r1n9{c2 c8} - r1n8{c8 c7} - r7c7{n8 n7} - r7c2{n7 n9} - c3n9{r7 r3} - c3n8{r3 r5} - r5c2{n8 n1} - c1n1{r5 r9} - b7n7{r9c1 r9c2} - r7c1{n7 n6} - c3n6{r9 r2} - c3n3{r2 .} ==> r1c2 ≠ 2
whip[8]: r1n2{c6 c8} - r1n9{c8 c2} - r1n8{c2 c7} - r7c7{n8 n7} - r7c1{n7 n6} - b1n6{r1c1 r2c3} - r2n2{c3 c2} - r7c2{n2 .} ==> r3c4 ≠ 2
whip[3]: c5n7{r9 r3} - r3c4{n7 n3} - r9n3{c4 .} ==> r9c6 ≠ 7
whip[7]: c4n2{r1 r8} - c4n6{r8 r9} - c4n9{r9 r4} - r4n4{c4 c3} - r9c3{n4 n5} - r8c3{n5 n6} - b9n6{r8c8 .} ==> r1c4 ≠ 3
whip[8]: c4n2{r8 r1} - c4n6{r1 r9} - c4n9{r9 r4} - r4n4{c4 c3} - r9c3{n4 n5} - r9c5{n5 n8} - b9n8{r9c8 r7c7} - c7n7{r7 .} ==> r8c4 ≠ 7
whip[8]: r9n3{c6 c4} - c4n6{r9 r1} - c4n2{r1 r8} - c4n9{r8 r4} - r4n4{c4 c3} - r9c3{n4 n5} - r8c3{n5 n6} - b9n6{r8c8 .} ==> r9c6 ≠ 6
whip[8]: r1n2{c6 c8} - r1n9{c8 c2} - r1n8{c2 c7} - r7c7{n8 n7} - r7c1{n7 n6} - b1n6{r1c1 r2c3} - r2n2{c3 c2} - r7c2{n2 .} ==> r3c5 ≠ 2
whip[8]: r1n2{c6 c8} - r1n9{c8 c2} - r1n8{c2 c7} - r7c7{n8 n7} - r7c1{n7 n6} - b1n6{r1c1 r2c3} - r2n2{c3 c2} - r7c2{n2 .} ==> r3c6 ≠ 2
whip[9]: r7c1{n6 n7} - r7c7{n7 n8} - r9c9{n8 n9} - r9c8{n9 n4} - r8n4{c8 c3} - b4n4{r6c3 r6c2} - r6c4{n4 n7} - r9c4{n7 n3} - r3c4{n3 .} ==> r9c3 ≠ 6
whip[3]: b4n4{r6c3 r6c2} - r6n5{c2 c3} - r9c3{n5 .} ==> r8c3 ≠ 4
whip[1]: r8n4{c8 .} ==> r9c8 ≠ 4
whip[3]: r9c3{n5 n4} - r4c3{n4 n7} - r6c3{n7 .} ==> r8c3 ≠ 5
whip[1]: r8n5{c6 .} ==> r9c5 ≠ 5, r9c6 ≠ 5
whip[3]: r9n1{c1 c2} - r9n4{c2 c3} - r9n5{c3 .} ==> r9c1 ≠ 7
whip[3]: r9n1{c2 c1} - r9n4{c1 c3} - r9n5{c3 .} ==> r9c2 ≠ 7
whip[1]: r9n7{c5 .} ==> r7c5 ≠ 7, r8c5 ≠ 7, r8c6 ≠ 7
hidden-single-in-a-row ==> r8c7 = 7
naked-single ==> r7c7 = 8
hidden-single-in-a-block ==> r8c8 = 4
hidden-single-in-a-block ==> r8c9 = 1
whip[1]: b9n6{r9c9 .} ==> r9c4 ≠ 6, r9c5 ≠ 6
whip[1]: b9n9{r9c9 .} ==> r9c4 ≠ 9, r9c6 ≠ 9
whip[2]: r3c4{n7 n3} - r9c4{n3 .} ==> r4c4 ≠ 7, r6c4 ≠ 7
naked-single ==> r6c4 = 4
naked-single ==> r4c4 = 9
naked-single ==> r4c6 = 7
naked-single ==> r4c3 = 4
naked-single ==> r9c3 = 5
naked-single ==> r6c3 = 7
naked-single ==> r6c2 = 5
hidden-single-in-a-column ==> r8c6 = 9
hidden-single-in-a-block ==> r8c5 = 5
whip[1]: b2n7{r3c5 .} ==> r3c1 ≠ 7, r3c2 ≠ 7
whip[2]: r1n9{c8 c2} - r1n8{c2 .} ==> r1c8 ≠ 2, r1c8 ≠ 3
whip[1]: r1n2{c6 .} ==> r2c6 ≠ 2
whip[2]: r5c5{n2 n6} - r7c5{n6 .} ==> r1c5 ≠ 2
whip[2]: r5c5{n6 n2} - r7c5{n2 .} ==> r1c5 ≠ 6
naked-single ==> r1c5 = 4
naked-single ==> r1c7 = 5
naked-single ==> r2c9 = 2
naked-single ==> r6c9 = 6
naked-single ==> r6c8 = 2
naked-single ==> r9c9 = 9
naked-single ==> r3c9 = 8
naked-single ==> r1c8 = 9
naked-single ==> r1c2 = 8
naked-single ==> r5c2 = 1
naked-single ==> r5c1 = 3
naked-single ==> r1c1 = 6
naked-single ==> r1c4 = 2
naked-single ==> r1c6 = 3
naked-single ==> r3c4 = 7
naked-single ==> r3c5 = 1
naked-single ==> r3c6 = 5
naked-single ==> r2c6 = 6
naked-single ==> r5c6 = 2
naked-single ==> r5c5 = 6
naked-single ==> r7c5 = 2
naked-single ==> r3c1 = 4
naked-single ==> r2c2 = 7
naked-single ==> r2c1 = 5
naked-single ==> r7c2 = 9
naked-single ==> r3c2 = 2
naked-single ==> r7c3 = 6
naked-single ==> r8c3 = 2
naked-single ==> r9c1 = 1
naked-single ==> r3c8 = 3
naked-single ==> r2c8 = 1
naked-single ==> r2c7 = 4
naked-single ==> r4c8 = 8
naked-single ==> r3c3 = 9
naked-single ==> r6c5 = 8
naked-single ==> r6c6 = 1
naked-single ==> r9c5 = 7
naked-single ==> r9c4 = 3
naked-single ==> r9c6 = 8
naked-single ==> r8c4 = 6
naked-single ==> r2c3 = 3
naked-single ==> r7c1 = 7
naked-single ==> r5c3 = 8
naked-single ==> r9c2 = 4
naked-single ==> r4c9 = 5
naked-single ==> r9c8 = 6
naked-single ==> r4c7 = 1
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[12]
681243597
573896412
429715638
264937185
318562974
957481326
796124853
832659741
145378269
Puzzle ..1.....7...89..........6..26..3.......5...749...........1.4.5.83.............2.. :
init-time = 0.17s, solve-time = 18.64s, total-time = 18.81s
nb-facts=<Fact-31433>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W
***  using CLIPS 6.32-r765
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

