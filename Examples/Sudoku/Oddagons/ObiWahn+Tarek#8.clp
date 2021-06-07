
SER

3 oddagons[5] + 1 oddagon[7] that are all destroyed by Subset and bivalue-chain rules.
Notice that the oddagon[7] survives the Subset rules (but the combination is not enough to solve the puzzle).


(solve "..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574
25 givens, 217 candidates
entering BRT
naked-single ==> r9c3 = 3
hidden-single-in-a-row ==> r9c6 = 1
hidden-single-in-a-row ==> r7c3 = 4
naked-single ==> r4c3 = 1
naked-single ==> r5c3 = 5
naked-single ==> r2c3 = 6
hidden-single-in-a-block ==> r6c9 = 5
naked-single ==> r3c9 = 8
hidden-single-in-a-block ==> r5c5 = 1
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-column ==> r3c7 = 7
hidden-single-in-a-column ==> r4c6 = 7
hidden-single-in-a-block ==> r2c7 = 4
Starting_init_links_with_<Fact-3686>
156 candidates, 770 csp-links and 770 links. Density = 6.37%
starting non trivial part of solution
Entering_level_W1_with_<Fact-6533>
whip[1]: c7n9{r5 .} ==> r5c8 ≠ 9, r4c8 ≠ 9
whip[1]: r6n8{c6 .} ==> r5c6 ≠ 8, r5c4 ≠ 8
whip[1]: r6n6{c6 .} ==> r4c5 ≠ 6
Entering_level_O3_with_<Fact-6541>
Entering_level_O5_with_<Fact-14359>
oddagon[5]: r1n4{c2 c4},c4n4{r1 r5},r5n4{c4 c1},c1n4{r5 r3},b1n4{r3c1 r1c2} ==> r1c2 ≠ 4
naked-single ==> r1c2 = 9
hidden-single-in-a-row ==> r4c7 = 9
hidden-single-in-a-block ==> r4c8 = 6
oddagon[5]: r1c8{n1 n2},b3n2{r1c8 r2c9},r2c9{n2 n1},r2n1{c9 c8},c8n1{r2 r1} ==> r2c8 ≠ 1
oddagon[5]: r1c8{n1 n2},c8n2{r1 r2},r2n2{c8 c9},r2c9{n2 n1},b3n1{r2c9 r1c8} ==> r2c8 ≠ 2
Entering_level_O7_with_<Fact-31362>
oddagon[7]: r4c9{n2 n3},r4n3{c9 c2},r4c2{n3 n4},b4n4{r4c2 r5c1},r5c1{n4 n2},r5n2{c1 c7},b6n2{r5c7 r4c9} ==> r5c1 ≠ 2
oddagon[7]: r1c5{n2 n7},r1n7{c5 c4},r1c4{n7 n4},c4n4{r1 r5},b5n4{r5c4 r4c5},r4c5{n4 n2},c5n2{r4 r1} ==> r1c5 ≠ 2
Entering_level_O9_with_<Fact-55827>
Entering_level_O11_with_<Fact-87298>
Entering_level_O13_with_<Fact-132340>
Entering_level_O15_with_<Fact-195985>
PUZZLE 0 NOT SOLVED. 40 VALUES MISSING.
Puzzle ..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574 :
init-time = 0.17s, solve-time = 9.53s, total-time = 9.71s
nb-facts=0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


With Subsets:
(solve "..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574
25 givens, 217 candidates
entering BRT
naked-single ==> r9c3 = 3
hidden-single-in-a-row ==> r9c6 = 1
hidden-single-in-a-row ==> r7c3 = 4
naked-single ==> r4c3 = 1
naked-single ==> r5c3 = 5
naked-single ==> r2c3 = 6
hidden-single-in-a-block ==> r6c9 = 5
naked-single ==> r3c9 = 8
hidden-single-in-a-block ==> r5c5 = 1
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-column ==> r3c7 = 7
hidden-single-in-a-column ==> r4c6 = 7
hidden-single-in-a-block ==> r2c7 = 4
Starting_init_links_with_<Fact-3686>
156 candidates, 770 csp-links and 770 links. Density = 6.37%
starting non trivial part of solution
Entering_level_W1_with_<Fact-6533>
whip[1]: c7n9{r5 .} ==> r5c8 ≠ 9, r4c8 ≠ 9
whip[1]: r6n8{c6 .} ==> r5c6 ≠ 8, r5c4 ≠ 8
whip[1]: r6n6{c6 .} ==> r4c5 ≠ 6
Entering_relation_bivalue_with_<Fact-6540>
Entering_level_S2_with_<Fact-6645>
finned-x-wing-in-columns: n4{c4 c1}{r5 r1} ==> r1c2 ≠ 4
naked-single ==> r1c2 = 9
hidden-single-in-a-row ==> r4c7 = 9
hidden-single-in-a-block ==> r4c8 = 6
naked-pairs-in-a-block: b3{r1c8 r2c9}{n1 n2} ==> r2c8 ≠ 2, r2c8 ≠ 1
Entering_level_S3_with_<Fact-6728>
Entering_level_O3_with_<Fact-6777>
Entering_level_S4_with_<Fact-16271>
Entering_level_O5_with_<Fact-16452>
Entering_level_O7_with_<Fact-29154>
oddagon[7]: r1c5{n2 n7},r1n7{c5 c4},r1c4{n7 n4},c4n4{r1 r5},b5n4{r5c4 r4c5},r4c5{n4 n2},c5n2{r4 r1} ==> r1c5 ≠ 2
oddagon[7]: r4c5{n2 n4},r4n4{c5 c2},b4n4{r4c2 r5c1},r5c1{n4 n2},r5n2{c1 c7},b6n2{r5c7 r4c9},r4n2{c9 c5} ==> r5c1 ≠ 2
finned-x-wing-in-columns: n2{c1 c5}{r8 r6} ==> r6c6 ≠ 2, r6c4 ≠ 2
Entering_level_O9_with_<Fact-53096>
Entering_level_O11_with_<Fact-83569>
Entering_level_O13_with_<Fact-127658>
Entering_level_O15_with_<Fact-190931>
PUZZLE 0 NOT SOLVED. 40 VALUES MISSING.
Puzzle ..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574 :
init-time = 0.19s, solve-time = 7.89s, total-time = 8.08s
nb-facts=0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



With Subsets + bivalue-chains:
(solve "..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574
25 givens, 217 candidates
entering BRT
naked-single ==> r9c3 = 3
hidden-single-in-a-row ==> r9c6 = 1
hidden-single-in-a-row ==> r7c3 = 4
naked-single ==> r4c3 = 1
naked-single ==> r5c3 = 5
naked-single ==> r2c3 = 6
hidden-single-in-a-block ==> r6c9 = 5
naked-single ==> r3c9 = 8
hidden-single-in-a-block ==> r5c5 = 1
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-column ==> r3c7 = 7
hidden-single-in-a-column ==> r4c6 = 7
hidden-single-in-a-block ==> r2c7 = 4
Starting_init_links_with_<Fact-6605>
156 candidates, 770 csp-links and 770 links. Density = 6.37%
starting non trivial part of solution
Entering_level_W1_with_<Fact-10992>
whip[1]: c7n9{r5 .} ==> r5c8 ≠ 9, r4c8 ≠ 9
whip[1]: r6n8{c6 .} ==> r5c6 ≠ 8, r5c4 ≠ 8
whip[1]: r6n6{c6 .} ==> r4c5 ≠ 6
Entering_relation_bivalue_with_<Fact-10999>
Entering_level_S2_with_<Fact-11104>
finned-x-wing-in-columns: n4{c4 c1}{r5 r1} ==> r1c2 ≠ 4
naked-single ==> r1c2 = 9
hidden-single-in-a-row ==> r4c7 = 9
hidden-single-in-a-block ==> r4c8 = 6
naked-pairs-in-a-block: b3{r1c8 r2c9}{n1 n2} ==> r2c8 ≠ 2, r2c8 ≠ 1
Entering_level_TyBC2_with_<Fact-11187>
Entering_level_BC2_with_<Fact-11318>
Entering_level_TyZ2_with_<Fact-11679>
Entering_level_Z2_with_<Fact-12276>
Entering_level_TytW2_with_<Fact-12677>
Entering_level_tW2_with_<Fact-12678>
Entering_level_TyW2_with_<Fact-12679>
Entering_level_W2_with_<Fact-12680>
Entering_level_S3_with_<Fact-12681>
Entering_level_TyBC3_with_<Fact-12729>
biv-chain-rc[3]: r2c9{n2 n1} - r2c1{n1 n5} - r8c1{n5 n2} ==> r8c9 ≠ 2
Entering_level_BC3_with_<Fact-12904>
biv-chain[3]: r4c5{n2 n4} - c4n4{r5 r1} - b2n7{r1c4 r1c5} ==> r1c5 ≠ 2
biv-chain[3]: r9n2{c2 c4} - r1n2{c4 c8} - c9n2{r2 r4} ==> r4c2 ≠ 2
biv-chain-rc[3]: r6c2{n2 n3} - r4c2{n3 n4} - r4c5{n4 n2} ==> r6c4 ≠ 2, r6c5 ≠ 2, r6c6 ≠ 2
whip[1]: r6n2{c2 .} ==> r5c1 ≠ 2
biv-chain[3]: c5n2{r8 r4} - c9n2{r4 r2} - r1n2{c8 c4} ==> r7c4 ≠ 2, r8c4 ≠ 2, r9c4 ≠ 2
naked-single ==> r9c4 = 8
naked-single ==> r9c2 = 2
naked-single ==> r6c2 = 3
naked-single ==> r4c2 = 4
naked-single ==> r3c2 = 5
naked-single ==> r2c1 = 1
naked-single ==> r1c1 = 4
naked-single ==> r1c5 = 7
naked-single ==> r1c4 = 2
naked-single ==> r1c8 = 1
naked-single ==> r2c4 = 9
naked-single ==> r2c6 = 8
naked-single ==> r2c8 = 5
naked-single ==> r3c6 = 6
naked-single ==> r3c5 = 4
naked-single ==> r6c6 = 9
naked-single ==> r6c1 = 2
naked-single ==> r6c4 = 6
naked-single ==> r6c5 = 8
naked-single ==> r7c4 = 3
naked-single ==> r5c4 = 4
naked-single ==> r7c6 = 2
naked-single ==> r5c6 = 3
naked-single ==> r7c8 = 8
naked-single ==> r5c8 = 2
naked-single ==> r4c9 = 3
naked-single ==> r8c9 = 1
naked-single ==> r5c7 = 8
naked-single ==> r8c8 = 3
naked-single ==> r7c7 = 6
naked-single ==> r8c7 = 2
naked-single ==> r8c5 = 6
naked-single ==> r8c4 = 7
naked-single ==> r3c1 = 3
naked-single ==> r2c9 = 2
naked-single ==> r3c8 = 9
naked-single ==> r8c2 = 8
naked-single ==> r4c5 = 2
naked-single ==> r5c1 = 9
naked-single ==> r8c1 = 5
GRID 0 SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = BC[3]
498275316
176938452
352146798
841527963
965413827
237689145
714352689
589764231
623891574
Puzzle ..8..53.6.7..3......21.....8..5......6......7..7...14.71......9..9..4...6...9.574 :
init-time = 0.19s, solve-time = 0.68s, total-time = 0.87s
nb-facts=<Fact-13729>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
