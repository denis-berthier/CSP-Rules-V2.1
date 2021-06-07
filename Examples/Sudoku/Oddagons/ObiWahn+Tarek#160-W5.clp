SER 7.3

An oddagon[5] plus a very long oddagon[11]. The latter does not survive Subsets, but they make an unrelated oddagon[7] appear. However, none of them survive whips.
Exercise: is there any combination of rules (not including whips) enough to solve the puzzle without killing the oddagons?

with oddagons only:
(solve "1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3
23 givens, 208 candidates
entering BRT
Starting_init_links_with_<Fact-3662>
208 candidates, 1220 csp-links and 1220 links. Density = 5.67%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8207>
Entering_level_O3_with_<Fact-8209>
Entering_level_O5_with_<Fact-20790>
oddagon[5]: r1n6{c2 c9},c9n6{r1 r8},r8n6{c9 c1},c1n6{r8 r3},b1n6{r3c1 r1c2} ==> r5c8 ≠ 6
Entering_level_O7_with_<Fact-31765>
Entering_level_O9_with_<Fact-45064>
Entering_level_O11_with_<Fact-55026>
oddagon[11]: r3n1{c6 c7},r3c7{n1 n6},c7n6{r3 r6},b6n6{r6c7 r6c9},c9n6{r6 r8},r8c9{n6 n1},r8n1{c9 c3},c3n1{r8 r5},r5n1{c3 c5},b5n1{r5c5 r4c6},c6n1{r4 r3} ==> r8c9 ≠ 6
oddagon[5]: c8n6{r1 r8},r8n6{c8 c1},c1n6{r8 r3},r3n6{c1 c7},b3n6{r3c7 r1c8} ==> r1c8 ≠ 6
Entering_level_O13_with_<Fact-66096>
Entering_level_O15_with_<Fact-71131>
PUZZLE 0 NOT SOLVED. 58 VALUES MISSING.
Puzzle 1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3 :
init-time = 0.19s, solve-time = 4.8s, total-time = 4.99s
nb-facts=0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


with Subsets:
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3
23 givens, 208 candidates
entering BRT
Starting_init_links_with_<Fact-3662>
208 candidates, 1220 csp-links and 1220 links. Density = 5.67%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8207>
Entering_relation_bivalue_with_<Fact-8208>
Entering_level_S2_with_<Fact-8277>
Entering_level_S3_with_<Fact-8281>
Entering_level_O3_with_<Fact-8286>
Entering_level_S4_with_<Fact-20866>
Entering_level_O5_with_<Fact-20871>
oddagon[5]: r1n6{c2 c9},c9n6{r1 r8},r8n6{c9 c1},c1n6{r8 r3},b1n6{r3c1 r1c2} ==> r5c8 ≠ 6
naked-triplets-in-a-row: r5{c1 c4 c8}{n2 n4 n9} ==> r5c9 ≠ 9, r5c9 ≠ 4, r5c5 ≠ 9, r5c5 ≠ 4, r5c3 ≠ 4, r5c3 ≠ 2
whip[1]: c3n2{r2 .} ==> r2c1 ≠ 2
Entering_level_O7_with_<Fact-41196>
oddagon[7]: r5n1{c3 c5},r5c5{n1 n6},r5n6{c5 c9},c9n6{r5 r8},r8c9{n6 n1},r8n1{c9 c3},c3n1{r8 r5} ==> r8c9 ≠ 6
finned-x-wing-in-rows: n6{r8 r3}{c1 c8} ==> r1c8 ≠ 6
Entering_level_O9_with_<Fact-66412>
Entering_level_O11_with_<Fact-94271>
Entering_level_O13_with_<Fact-127398>
Entering_level_O15_with_<Fact-166905>
PUZZLE 0 NOT SOLVED. 58 VALUES MISSING.
Puzzle 1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3 :
init-time = 0.17s, solve-time = 7.97s, total-time = 8.15s
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
1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3
23 givens, 208 candidates
entering BRT
Starting_init_links_with_<Fact-6581>
208 candidates, 1220 csp-links and 1220 links. Density = 5.67%
starting non trivial part of solution
Entering_level_W1_with_<Fact-13566>
Entering_relation_bivalue_with_<Fact-13567>
Entering_level_S2_with_<Fact-13636>
Entering_level_TyBC2_with_<Fact-13640>
Entering_level_BC2_with_<Fact-13699>
Entering_level_TyZ2_with_<Fact-13842>
Entering_level_Z2_with_<Fact-14362>
Entering_level_TytW2_with_<Fact-14746>
Entering_level_tW2_with_<Fact-14747>
Entering_level_TyW2_with_<Fact-14748>
Entering_level_W2_with_<Fact-14749>
Entering_level_S3_with_<Fact-14750>
Entering_level_TyBC3_with_<Fact-14754>
Entering_level_BC3_with_<Fact-14787>
Entering_level_TyZ3_with_<Fact-15050>
Entering_level_Z3_with_<Fact-15398>
z-chain[3]: r1n4{c9 c8} - c8n3{r1 r4} - c8n5{r4 .} ==> r1c9 ≠ 5
Entering_level_O3_with_<Fact-16067>
Entering_level_TytW3_with_<Fact-28574>
Entering_level_TyW3_with_<Fact-28989>
Entering_level_tW3_with_<Fact-28991>
Entering_level_W3_with_<Fact-29699>
Entering_level_S4_with_<Fact-29700>
Entering_level_TyBC4_with_<Fact-29704>
Entering_level_BC4_with_<Fact-29723>
biv-chain[4]: r3c7{n1 n6} - b1n6{r3c1 r1c2} - c2n8{r1 r6} - c7n8{r6 r7} ==> r7c7 ≠ 1
whip[1]: b9n1{r8c9 .} ==> r2c9 ≠ 1
biv-chain[3]: c9n1{r7 r8} - c3n1{r8 r5} - r5n8{c3 c9} ==> r7c9 ≠ 8
z-chain[3]: r2c9{n7 n5} - c8n5{r3 r4} - c8n3{r4 .} ==> r1c8 ≠ 7
biv-chain[4]: r1n3{c3 c8} - r2c7{n3 n1} - c5n1{r2 r5} - c3n1{r5 r8} ==> r8c3 ≠ 3
whip[1]: c3n3{r2 .} ==> r2c1 ≠ 3
Entering_level_TyZ4_with_<Fact-35796>
Entering_level_Z4_with_<Fact-36310>
Entering_level_TytW4_with_<Fact-37920>
t-whip-cn[4]: c2n8{r6 r1} - c2n6{r1 r9} - c1n6{r8 r3} - c7n6{r3 .} ==> r6c7 ≠ 8
hidden-single-in-a-column ==> r7c7 = 8
Entering_level_TyW4_with_<Fact-39583>
Entering_level_tW4_with_<Fact-39585>
t-whip[4]: r2c9{n7 n5} - c8n5{r3 r4} - c8n3{r4 r1} - r1n4{c8 .} ==> r1c9 ≠ 7
z-chain[4]: r1n7{c6 c2} - b1n6{r1c2 r3c1} - r3c7{n6 n1} - b2n1{r3c6 .} ==> r2c5 ≠ 7
Entering_level_W4_with_<Fact-42879>
Entering_level_TyBC5_with_<Fact-42880>
Entering_level_BC5_with_<Fact-42965>
biv-chain[5]: r5n8{c9 c3} - r5n1{c3 c5} - r2n1{c5 c7} - b3n3{r2c7 r1c8} - b3n4{r1c8 r1c9} ==> r5c9 ≠ 4
biv-chain[5]: r8n1{c9 c3} - r5n1{c3 c5} - r2n1{c5 c7} - b3n3{r2c7 r1c8} - b3n4{r1c8 r1c9} ==> r8c9 ≠ 4
biv-chain[5]: r8n1{c9 c3} - r5n1{c3 c5} - r2n1{c5 c7} - r3c7{n1 n6} - c1n6{r3 r8} ==> r8c9 ≠ 6
finned-x-wing-in-rows: n6{r8 r3}{c1 c8} ==> r1c8 ≠ 6
biv-chain[3]: r1n6{c9 c2} - c2n8{r1 r6} - b6n8{r6c9 r5c9} ==> r5c9 ≠ 6
biv-chain[3]: c9n6{r6 r1} - c2n6{r1 r9} - r8n6{c1 c8} ==> r5c8 ≠ 6
hidden-single-in-a-row ==> r5c5 = 6
hidden-single-in-a-block ==> r4c6 = 1
hidden-single-in-a-block ==> r2c5 = 1
naked-single ==> r2c7 = 3
hidden-single-in-a-column ==> r4c8 = 3
hidden-single-in-a-block ==> r6c6 = 3
hidden-single-in-a-row ==> r1c3 = 3
hidden-single-in-a-block ==> r3c7 = 1
hidden-single-in-a-block ==> r5c3 = 1
hidden-single-in-a-column ==> r2c3 = 2
hidden-single-in-a-row ==> r2c2 = 9
hidden-single-in-a-row ==> r5c9 = 8
hidden-single-in-a-block ==> r7c2 = 1
hidden-single-in-a-block ==> r8c9 = 1
hidden-single-in-a-column ==> r2c9 = 7
naked-single ==> r2c1 = 5
naked-single ==> r3c3 = 8
hidden-single-in-a-column ==> r6c2 = 8
hidden-single-in-a-row ==> r6c5 = 7
whip[1]: c5n4{r9 .} ==> r7c4 ≠ 4, r8c4 ≠ 4
whip[1]: r7n5{c5 .} ==> r9c5 ≠ 5
whip[1]: c5n9{r9 .} ==> r7c4 ≠ 9, r8c4 ≠ 9, r8c6 ≠ 9, r9c6 ≠ 9
hidden-single-in-a-column ==> r3c6 = 9
naked-pairs-in-a-row: r8{c3 c5}{n4 n9} ==> r8c8 ≠ 9, r8c8 ≠ 4, r8c1 ≠ 4
x-wing-in-rows: n6{r3 r8}{c1 c8} ==> r9c8 ≠ 6
biv-chain-rc[3]: r3c4{n7 n5} - r3c8{n5 n6} - r8c8{n6 n7} ==> r8c4 ≠ 7
whip[1]: b8n7{r9c6 .} ==> r1c6 ≠ 7
biv-chain[3]: r9c6{n2 n7} - r8n7{c6 c8} - b9n6{r8c8 r9c7} ==> r9c7 ≠ 2
hidden-single-in-a-column ==> r4c7 = 2
hidden-single-in-a-block ==> r5c1 = 2
biv-chain[3]: r4c4{n9 n4} - c1n4{r4 r7} - r7c9{n4 n9} ==> r4c9 ≠ 9
hidden-single-in-a-block ==> r5c8 = 9
naked-single ==> r5c4 = 4
naked-single ==> r4c4 = 9
hidden-single-in-a-block ==> r7c9 = 9
biv-chain-rc[3]: r7c8{n2 n4} - r1c8{n4 n5} - r1c5{n5 n2} ==> r7c5 ≠ 2
hidden-single-in-a-row ==> r7c8 = 2
whip[1]: b9n4{r9c8 .} ==> r9c3 ≠ 4, r9c5 ≠ 4
biv-chain-rc[4]: r4c9{n4 n5} - r4c2{n5 n7} - r1c2{n7 n6} - r1c9{n6 n4} ==> r6c9 ≠ 4
biv-chain-rc[4]: r1c5{n2 n5} - r1c8{n5 n4} - r9c8{n4 n7} - r9c6{n7 n2} ==> r1c6 ≠ 2, r9c5 ≠ 2
naked-single ==> r9c5 = 9
naked-single ==> r8c5 = 4
naked-single ==> r7c5 = 5
naked-single ==> r1c5 = 2
naked-single ==> r7c4 = 3
naked-single ==> r7c1 = 4
naked-single ==> r4c1 = 7
naked-single ==> r3c1 = 6
naked-single ==> r1c2 = 7
naked-single ==> r3c8 = 5
naked-single ==> r1c8 = 4
naked-single ==> r1c9 = 6
naked-single ==> r6c9 = 5
naked-single ==> r4c9 = 4
naked-single ==> r6c7 = 6
naked-single ==> r9c7 = 4
naked-single ==> r6c3 = 4
naked-single ==> r9c8 = 7
naked-single ==> r8c8 = 6
naked-single ==> r9c6 = 2
naked-single ==> r3c4 = 7
naked-single ==> r8c1 = 3
naked-single ==> r4c2 = 5
naked-single ==> r9c2 = 6
naked-single ==> r8c4 = 8
naked-single ==> r1c4 = 5
naked-single ==> r8c6 = 7
naked-single ==> r8c3 = 9
naked-single ==> r9c3 = 5
naked-single ==> r1c6 = 8
GRID 0 SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = BC[5]
173528946
592614387
648739152
756981234
231465798
984273615
417356829
329847561
865192473
Puzzle 1.....9.....6.4.8..4..3...2..6.8.....3...57..9..2...1...7..6....2....5..8..1....3 :
init-time = 0.19s, solve-time = 10.98s, total-time = 11.18s
nb-facts=<Fact-86965>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

