
SER 8.4
One oddagons[5] plus two oddagons[9] that all survive the Subset rules. The oddagon[5] also survives the whip rules but it does not change the W rating.

Exercise: try weaker combinations of rules (they will preserve the oddagon) that are enough to solve this puzzle

Only oddagons:
(solve "......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.
23 givens, 206 candidates
entering BRT
Starting_init_links_with_<Fact-3660>
206 candidates, 1209 csp-links and 1209 links. Density = 5.73%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8157>
Entering_level_O3_with_<Fact-8159>
Entering_level_O5_with_<Fact-22291>
oddagon[5]: r2n3{c2 c6},c6n3{r2 r4},r4n3{c6 c1},c1n3{r4 r3},b1n3{r3c1 r2c2} ==> r8c4 ≠ 3
Entering_level_O7_with_<Fact-34438>
Entering_level_O9_with_<Fact-46669>
oddagon[9]: r5c2{n1 n2},r5n2{c2 c6},r5c6{n2 n8},c6n8{r5 r7},r7c6{n8 n1},r7n1{c6 c8},c8n1{r7 r6},b6n1{r6c8 r5c9},r5n1{c9 c2} ==> r7c6 ≠ 1
oddagon[9]: r5c2{n1 n2},c2n2{r5 r8},r8c2{n2 n6},r8n6{c2 c8},c8n6{r8 r7},r7c8{n6 n1},c8n1{r7 r6},b6n1{r6c8 r5c9},r5n1{c9 c2} ==> r7c8 ≠ 6
Entering_level_O11_with_<Fact-57335>
Entering_level_O13_with_<Fact-59898>
Entering_level_O15_with_<Fact-61293>
PUZZLE 0 NOT SOLVED. 58 VALUES MISSING.
Puzzle ......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8. :
init-time = 0.17s, solve-time = 3.33s, total-time = 3.5s
nb-facts=0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


Oddagons + Subset rules:
(solve "......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.
23 givens, 206 candidates
entering BRT
Starting_init_links_with_<Fact-3660>
206 candidates, 1209 csp-links and 1209 links. Density = 5.73%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8157>
Entering_relation_bivalue_with_<Fact-8158>
Entering_level_S2_with_<Fact-8229>
Entering_level_S3_with_<Fact-8233>
Entering_level_O3_with_<Fact-8238>
Entering_level_S4_with_<Fact-22369>
Entering_level_O5_with_<Fact-22374>
oddagon[5]: r2n3{c2 c6},c6n3{r2 r4},r4n3{c6 c1},c1n3{r4 r3},b1n3{r3c1 r2c2} ==> r8c4 ≠ 3
Entering_level_O7_with_<Fact-34523>
Entering_level_O9_with_<Fact-46754>
oddagon[9]: r5c2{n1 n2},r5n2{c2 c6},r5c6{n2 n8},c6n8{r5 r7},r7c6{n8 n1},r7n1{c6 c8},c8n1{r7 r6},b6n1{r6c8 r5c9},r5n1{c9 c2} ==> r7c6 ≠ 1
oddagon[9]: r5c2{n1 n2},c2n2{r5 r8},r8c2{n2 n6},r8n6{c2 c8},c8n6{r8 r7},r7c8{n6 n1},c8n1{r7 r6},b6n1{r6c8 r5c9},r5n1{c9 c2} ==> r7c8 ≠ 6
Entering_level_O11_with_<Fact-57426>
Entering_level_O13_with_<Fact-59989>
Entering_level_O15_with_<Fact-61384>
PUZZLE 0 NOT SOLVED. 58 VALUES MISSING.
Puzzle ......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8. :
init-time = 0.17s, solve-time = 3.14s, total-time = 3.31s
nb-facts=0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


With whips:
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.
23 givens, 206 candidates
entering BRT
Starting_init_links_with_<Fact-6579>
206 candidates, 1209 csp-links and 1209 links. Density = 5.73%
starting non trivial part of solution
Entering_level_W1_with_<Fact-13494>
Entering_relation_bivalue_with_<Fact-13495>
Entering_level_S2_with_<Fact-13566>
Entering_level_TyBC2_with_<Fact-13570>
Entering_level_BC2_with_<Fact-13593>
Entering_level_TyZ2_with_<Fact-13676>
Entering_level_Z2_with_<Fact-14195>
Entering_level_TytW2_with_<Fact-14566>
Entering_level_tW2_with_<Fact-14567>
Entering_level_TyW2_with_<Fact-14568>
Entering_level_W2_with_<Fact-14569>
Entering_level_S3_with_<Fact-14570>
Entering_level_TyBC3_with_<Fact-14574>
Entering_level_BC3_with_<Fact-14579>
Entering_level_TyZ3_with_<Fact-14642>
Entering_level_Z3_with_<Fact-14841>
Entering_level_O3_with_<Fact-15313>
Entering_level_TytW3_with_<Fact-29445>
Entering_level_TyW3_with_<Fact-29719>
Entering_level_tW3_with_<Fact-29721>
Entering_level_W3_with_<Fact-30259>
Entering_level_S4_with_<Fact-30260>
Entering_level_TyBC4_with_<Fact-30264>
Entering_level_BC4_with_<Fact-30265>
biv-chain[4]: r9n1{c6 c9} - r5n1{c9 c2} - r5n2{c2 c6} - c6n8{r5 r7} ==> r7c6 ≠ 1
Entering_level_TyZ4_with_<Fact-31531>
Entering_level_Z4_with_<Fact-31620>
z-chain[4]: c8n1{r7 r6} - r5n1{c9 c2} - c2n2{r5 r8} - r8n6{c2 .} ==> r7c8 ≠ 6
Entering_level_TytW4_with_<Fact-32253>
Entering_level_TyW4_with_<Fact-32483>
Entering_level_tW4_with_<Fact-32485>
Entering_level_W4_with_<Fact-33353>
Entering_level_TyBC5_with_<Fact-33354>
Entering_level_BC5_with_<Fact-33355>
Entering_level_TyZ5_with_<Fact-33396>
Entering_level_Z5_with_<Fact-33424>
Entering_level_O5_with_<Fact-34100>
oddagon[5]: r2n3{c2 c6},c6n3{r2 r4},r4n3{c6 c1},c1n3{r4 r3},b1n3{r3c1 r2c2} ==> r8c4 ≠ 3
Entering_level_TytW5_with_<Fact-46894>
Entering_level_TyW5_with_<Fact-47091>
Entering_level_tW5_with_<Fact-47093>
t-whip[5]: r9c1{n7 n5} - c3n5{r9 r4} - b4n2{r4c3 r5c2} - r5c6{n2 n8} - r7c6{n8 .} ==> r9c5 ≠ 7, r9c6 ≠ 7, r7c1 ≠ 7, r7c2 ≠ 7
hidden-single-in-a-row ==> r7c6 = 7
hidden-single-in-a-column ==> r5c6 = 8
hidden-single-in-a-row ==> r5c2 = 2
naked-single ==> r8c2 = 6
naked-single ==> r7c2 = 4
hidden-single-in-a-row ==> r5c9 = 1
hidden-single-in-a-column ==> r7c8 = 1
hidden-single-in-a-block ==> r9c6 = 1
hidden-single-in-a-block ==> r6c7 = 8
whip[1]: b8n3{r9c5 .} ==> r3c5 ≠ 3, r6c5 ≠ 3
finned-x-wing-in-rows: n3{r6 r2}{c2 c4} ==> r3c4 ≠ 3
hidden-single-in-a-row ==> r3c1 = 3
naked-single ==> r2c2 = 7
naked-single ==> r1c2 = 1
naked-single ==> r6c2 = 3
naked-single ==> r6c4 = 9
naked-single ==> r5c5 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c1 = 9
naked-single ==> r7c7 = 6
naked-single ==> r6c5 = 6
naked-single ==> r3c5 = 7
naked-single ==> r1c5 = 5
naked-single ==> r9c5 = 3
naked-single ==> r8c5 = 9
naked-single ==> r6c8 = 7
naked-single ==> r6c3 = 1
hidden-single-in-a-block ==> r1c9 = 7
hidden-single-in-a-block ==> r3c9 = 8
naked-single ==> r3c3 = 4
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 8
naked-single ==> r1c1 = 6
naked-single ==> r1c6 = 2
naked-single ==> r1c4 = 4
naked-single ==> r1c8 = 9
naked-single ==> r2c4 = 3
naked-single ==> r2c6 = 6
naked-single ==> r4c4 = 2
naked-single ==> r3c4 = 1
naked-single ==> r4c6 = 3
naked-single ==> r3c7 = 2
naked-single ==> r3c8 = 6
naked-single ==> r4c8 = 4
naked-single ==> r2c8 = 5
naked-single ==> r2c9 = 4
naked-single ==> r9c9 = 5
naked-single ==> r7c9 = 9
naked-single ==> r8c9 = 3
naked-single ==> r9c1 = 7
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 7
naked-single ==> r7c1 = 8
naked-single ==> r7c4 = 5
naked-single ==> r8c4 = 8
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 5
naked-single ==> r8c8 = 2
naked-single ==> r4c9 = 6
naked-single ==> r9c7 = 4
GRID 0 SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = tW[5]
618452397
279386154
354179268
587213946
926748531
431965872
843527619
165894723
792631485
Puzzle ......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8. :
init-time = 0.21s, solve-time = 11.36s, total-time = 11.57s
nb-facts=<Fact-47288>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Same W rating without the oddagons:
(solve "......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8.
23 givens, 206 candidates
entering BRT
Starting_init_links_with_<Fact-3660>
206 candidates, 1209 csp-links and 1209 links. Density = 5.73%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8157>
Entering_relation_bivalue_with_<Fact-8158>
Entering_level_S2_with_<Fact-8229>
Entering_level_BC2_with_<Fact-8233>
Entering_level_W2_with_<Fact-8317>
Entering_level_S3_with_<Fact-8686>
Entering_level_BC3_with_<Fact-8690>
Entering_level_W3_with_<Fact-8754>
Entering_level_S4_with_<Fact-9292>
Entering_level_BC4_with_<Fact-9296>
biv-chain[4]: r9n1{c6 c9} - r5n1{c9 c2} - r5n2{c2 c6} - c6n8{r5 r7} ==> r7c6 ≠ 1
Entering_level_W4_with_<Fact-9495>
whip[4]: r8n6{c9 c2} - c2n2{r8 r5} - r5n1{c2 c9} - b9n1{r7c9 .} ==> r7c8 ≠ 6
Entering_level_BC5_with_<Fact-10365>
Entering_level_W5_with_<Fact-10407>
whip[5]: r9c1{n7 n5} - c3n5{r9 r4} - b4n2{r4c3 r5c2} - r5c6{n2 n8} - r7c6{n8 .} ==> r7c2 ≠ 7
biv-chain[4]: r7n7{c1 c6} - c6n8{r7 r5} - r5n2{c6 c2} - r8c2{n2 n6} ==> r7c1 ≠ 6
whip[1]: b7n6{r8c2 .} ==> r1c2 ≠ 6, r2c2 ≠ 6
whip[5]: r5n2{c2 c6} - c6n8{r5 r7} - r7n7{c6 c1} - r9c1{n7 n5} - b4n5{r4c1 .} ==> r4c3 ≠ 2
hidden-single-in-a-block ==> r5c2 = 2
naked-single ==> r5c6 = 8
naked-single ==> r7c6 = 7
naked-single ==> r8c2 = 6
naked-single ==> r7c2 = 4
hidden-single-in-a-block ==> r6c7 = 8
hidden-single-in-a-row ==> r5c9 = 1
hidden-single-in-a-column ==> r7c8 = 1
hidden-single-in-a-block ==> r9c6 = 1
finned-x-wing-in-columns: n3{c2 c6}{r2 r6} ==> r6c5 ≠ 3, r6c4 ≠ 3
naked-single ==> r6c4 = 9
naked-single ==> r5c5 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c1 = 9
naked-single ==> r7c7 = 6
naked-single ==> r6c5 = 6
naked-single ==> r6c8 = 7
naked-single ==> r6c3 = 1
naked-single ==> r6c2 = 3
naked-single ==> r2c2 = 7
naked-single ==> r1c2 = 1
hidden-single-in-a-block ==> r3c4 = 1
hidden-single-in-a-block ==> r3c1 = 3
naked-single ==> r3c5 = 7
naked-single ==> r1c5 = 5
naked-single ==> r9c5 = 3
naked-single ==> r8c5 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-row ==> r8c9 = 3
hidden-single-in-a-row ==> r1c9 = 7
hidden-single-in-a-block ==> r3c9 = 8
naked-single ==> r3c3 = 4
naked-single ==> r2c3 = 9
naked-single ==> r1c3 = 8
naked-single ==> r1c1 = 6
naked-single ==> r1c6 = 2
naked-single ==> r1c4 = 4
naked-single ==> r1c8 = 9
naked-single ==> r2c4 = 3
naked-single ==> r2c6 = 6
naked-single ==> r4c4 = 2
naked-single ==> r4c6 = 3
naked-single ==> r3c7 = 2
naked-single ==> r3c8 = 6
naked-single ==> r4c8 = 4
naked-single ==> r2c8 = 5
naked-single ==> r2c9 = 4
naked-single ==> r9c9 = 5
naked-single ==> r9c1 = 7
naked-single ==> r4c1 = 5
naked-single ==> r4c3 = 7
naked-single ==> r7c1 = 8
naked-single ==> r7c4 = 5
naked-single ==> r8c4 = 8
naked-single ==> r9c3 = 2
naked-single ==> r8c3 = 5
naked-single ==> r8c8 = 2
naked-single ==> r4c9 = 6
naked-single ==> r9c7 = 4
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[5]
618452397
279386154
354179268
587213946
926748531
431965872
843527619
165894723
792631485
Puzzle ......3..2...8.1...5...9....8..1.9....67...3.4....5..2..3.2....1....47...9.6...8. :
init-time = 0.19s, solve-time = 1.98s, total-time = 2.17s
nb-facts=<Fact-11601>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

