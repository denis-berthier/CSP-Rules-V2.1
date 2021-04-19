SER 9.2

Whips and Oddagon[7], but W rating unchanged

Exercise: try weaker combinations of rules that will preserve the oddagon, that are enough to solve this puzzle and such that the Oddagon changes the associated rating


Oddagon, with only Subsets:

(solve "2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3
22 givens, 217 candidates
entering BRT
Starting_init_links_with_<Fact-3670>
217 candidates, 1321 csp-links and 1321 links. Density = 5.64%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8593>
Entering_relation_bivalue_with_<Fact-8594>
Entering_level_S2_with_<Fact-8641>
Entering_level_S3_with_<Fact-8645>
Entering_level_O3_with_<Fact-8654>
Entering_level_S4_with_<Fact-19681>
Entering_level_O5_with_<Fact-19686>
Entering_level_O7_with_<Fact-26491>
oddagon[7]: r1n4{c2 c8},c8n4{r1 r8},r8n4{c8 c5},c5n4{r8 r6},r6n4{c5 c1},c1n4{r6 r3},b1n4{r3c1 r1c2} ==> r5c9 ≠ 4
Entering_level_O9_with_<Fact-33259>
Entering_level_O11_with_<Fact-35599>
Entering_level_O13_with_<Fact-35818>
Entering_level_O15_with_<Fact-35820>
PUZZLE 0 NOT SOLVED. 59 VALUES MISSING.
Puzzle 2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3 :
init-time = 0.21s, solve-time = 2.59s, total-time = 2.8s
nb-facts=0
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




Destroyed by whips:

(solve "2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3
22 givens, 217 candidates
entering BRT
Starting_init_links_with_<Fact-6589>
217 candidates, 1321 csp-links and 1321 links. Density = 5.64%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14154>
Entering_relation_bivalue_with_<Fact-14155>
Entering_level_S2_with_<Fact-14202>
Entering_level_TyBC2_with_<Fact-14206>
Entering_level_BC2_with_<Fact-14221>
Entering_level_TyZ2_with_<Fact-14266>
Entering_level_Z2_with_<Fact-14724>
Entering_level_TytW2_with_<Fact-15049>
Entering_level_tW2_with_<Fact-15050>
Entering_level_TyW2_with_<Fact-15051>
Entering_level_W2_with_<Fact-15052>
Entering_level_S3_with_<Fact-15053>
Entering_level_TyBC3_with_<Fact-15061>
Entering_level_BC3_with_<Fact-15064>
Entering_level_TyZ3_with_<Fact-15107>
Entering_level_Z3_with_<Fact-15260>
Entering_level_TytW3_with_<Fact-15582>
Entering_level_TyW3_with_<Fact-15832>
Entering_level_tW3_with_<Fact-15834>
Entering_level_W3_with_<Fact-16222>
Entering_level_S4_with_<Fact-16223>
Entering_level_TyBC4_with_<Fact-16227>
Entering_level_BC4_with_<Fact-16228>
biv-chain[4]: r2n8{c5 c1} - c3n8{r1 r7} - r7n2{c3 c7} - r3n2{c7 c6} ==> r2c5 ≠ 2
hidden-single-in-a-column ==> r5c5 = 2
whip[1]: c5n8{r2 .} ==> r1c4 ≠ 8
Entering_level_TyZ4_with_<Fact-17101>
Entering_level_Z4_with_<Fact-17179>
Entering_level_TytW4_with_<Fact-17526>
Entering_level_TyW4_with_<Fact-17744>
Entering_level_tW4_with_<Fact-17746>
Entering_level_W4_with_<Fact-18290>
Entering_level_TyBC5_with_<Fact-18291>
Entering_level_BC5_with_<Fact-18292>
Entering_level_TyZ5_with_<Fact-18311>
Entering_level_Z5_with_<Fact-18330>
Entering_level_TytW5_with_<Fact-18615>
Entering_level_TyW5_with_<Fact-18772>
Entering_level_tW5_with_<Fact-18774>
Entering_level_W5_with_<Fact-19444>
whip[5]: r3n2{c6 c7} - b3n3{r3c7 r1c8} - r1c5{n3 n8} - c3n8{r1 r7} - r7n2{c3 .} ==> r3c6 ≠ 6
Entering_level_TyBC6_with_<Fact-19445>
Entering_level_BC6_with_<Fact-19446>
Entering_level_TyZ6_with_<Fact-19447>
Entering_level_Z6_with_<Fact-19452>
Entering_level_TytW6_with_<Fact-19636>
t-whip-cn[6]: c7n3{r3 r4} - c8n3{r5 r1} - c5n3{r1 r8} - c5n4{r8 r6} - c6n4{r5 r7} - c7n4{r7 .} ==> r3c7 ≠ 1, r3c7 ≠ 2, r3c7 ≠ 6
hidden-single-in-a-row ==> r3c6 = 2
Entering_level_TyW6_with_<Fact-20580>
Entering_level_tW6_with_<Fact-20582>
Entering_level_W6_with_<Fact-21026>
Entering_level_TyBC7_with_<Fact-21027>
Entering_level_BC7_with_<Fact-21028>
Entering_level_TyZ7_with_<Fact-21029>
Entering_level_Z7_with_<Fact-21031>
Entering_level_TytW7_with_<Fact-21140>
Entering_level_TyW7_with_<Fact-21161>
Entering_level_tW7_with_<Fact-21163>
Entering_level_W7_with_<Fact-21703>
Entering_level_TyBC8_with_<Fact-21704>
Entering_level_BC8_with_<Fact-21705>
Entering_level_TyZ8_with_<Fact-21706>
Entering_level_Z8_with_<Fact-21708>
Entering_level_TytW8_with_<Fact-21800>
Entering_level_TyW8_with_<Fact-21809>
Entering_level_tW8_with_<Fact-21811>
Entering_level_W8_with_<Fact-22622>
whip[8]: r7n3{c4 c1} - r7n5{c1 c6} - b8n4{r7c6 r8c5} - c5n3{r8 r1} - c5n8{r1 r2} - c1n8{r2 r9} - r9c7{n8 n6} - r9c5{n6 .} ==> r7c4 ≠ 9
whip[8]: r9c5{n9 n6} - r9c7{n6 n8} - r7c9{n8 n4} - r7c7{n4 n2} - r7c3{n2 n8} - r1n8{c3 c5} - c5n3{r1 r8} - r8n4{c5 .} ==> r7c6 ≠ 9
z-chain[4]: r7n9{c9 c3} - r3n9{c3 c4} - c6n9{r2 r5} - c9n9{r5 .} ==> r9c8 ≠ 9
whip[7]: c9n8{r5 r7} - r7n9{c9 c3} - r7n2{c3 c7} - r7n4{c7 c6} - b5n4{r4c6 r6c5} - c7n4{r6 r3} - c7n3{r3 .} ==> r4c7 ≠ 8
whip[1]: c7n8{r9 .} ==> r7c9 ≠ 8
t-whip[8]: r7c9{n9 n4} - r8n4{c9 c5} - c5n3{r8 r1} - r3n3{c4 c7} - r3n4{c7 c1} - r1n4{c2 c8} - r6n4{c8 c7} - b6n1{r6c7 .} ==> r5c9 ≠ 9
whip[1]: c9n9{r8 .} ==> r8c8 ≠ 9
whip[8]: r9n9{c6 c2} - r9c5{n9 n6} - r2c5{n6 n8} - b1n8{r2c1 r1c3} - r7c3{n8 n2} - b9n2{r7c7 r8c8} - r8n6{c8 c9} - r8n4{c9 .} ==> r8c5 ≠ 9
whip[8]: r6n5{c8 c4} - r7c4{n5 n3} - r3n3{c4 c7} - r4c7{n3 n6} - c7n4{r4 r7} - r7n2{c7 c3} - r4c3{n2 n7} - b5n7{r4c4 .} ==> r6c8 ≠ 4
Entering_level_TyBC9_with_<Fact-33079>
Entering_level_BC9_with_<Fact-33080>
Entering_level_TyZ9_with_<Fact-33081>
Entering_level_Z9_with_<Fact-33083>
Entering_level_TytW9_with_<Fact-33347>
Entering_level_TyW9_with_<Fact-33372>
Entering_level_tW9_with_<Fact-33374>
Entering_level_W9_with_<Fact-36698>
whip[9]: r6n5{c8 c4} - r6n9{c4 c5} - c5n4{r6 r8} - c5n3{r8 r1} - r3n3{c4 c7} - r4c7{n3 n4} - r6n4{c7 c1} - r3n4{c1 c9} - r7n4{c9 .} ==> r6c8 ≠ 6
whip[9]: c8n9{r5 r6} - r6n5{c8 c4} - r7c4{n5 n3} - r3n3{c4 c7} - r4c7{n3 n6} - c7n4{r4 r7} - r7n2{c7 c3} - r4c3{n2 n7} - b5n7{r4c4 .} ==> r5c8 ≠ 4
whip[9]: r8n4{c9 c5} - r6n4{c5 c1} - r3n4{c1 c9} - r3c7{n4 n3} - r4c7{n3 n6} - b6n4{r4c7 r4c8} - r4n3{c8 c2} - c2n2{r4 r8} - b9n2{r8c8 .} ==> r7c7 ≠ 4
biv-chain[4]: r9c8{n7 n6} - r9c7{n6 n8} - r7c7{n8 n2} - b3n2{r2c7 r2c8} ==> r2c8 ≠ 7
z-chain[4]: c7n4{r6 r3} - c1n4{r3 r6} - b5n4{r6c5 r4c6} - r7n4{c6 .} ==> r5c9 ≠ 4
whip[5]: c5n4{r6 r8} - b9n4{r8c9 r7c9} - r3n4{c9 c7} - b3n3{r3c7 r1c8} - c5n3{r1 .} ==> r6c1 ≠ 4
t-whip[7]: c7n4{r6 r3} - b3n3{r3c7 r1c8} - r1n4{c8 c2} - c1n4{r3 r5} - r5n3{c1 c2} - r5n1{c2 c9} - c9n8{r5 .} ==> r4c9 ≠ 4
whip[7]: b9n9{r8c9 r7c9} - r7n4{c9 c6} - b5n4{r4c6 r6c5} - r6n9{c5 c8} - r6n5{c8 c4} - b8n5{r7c4 r9c6} - b8n1{r9c6 .} ==> r8c4 ≠ 9
whip[1]: b8n9{r9c6 .} ==> r9c2 ≠ 9
whip[4]: c7n1{r2 r6} - c3n1{r6 r8} - r9c2{n1 n5} - b1n5{r1c2 .} ==> r2c1 ≠ 1
z-chain[5]: r9c2{n1 n5} - r1c2{n5 n4} - c1n4{r3 r5} - r5n1{c1 c9} - c7n1{r6 .} ==> r2c2 ≠ 1
biv-chain[4]: b8n1{r8c4 r9c6} - r9c2{n1 n5} - r2c2{n5 n9} - r3n9{c3 c4} ==> r3c4 ≠ 1
z-chain[4]: b2n1{r1c6 r2c6} - c7n1{r2 r6} - c3n1{r6 r8} - c4n1{r8 .} ==> r1c2 ≠ 1
t-whip[7]: b8n1{r8c4 r9c6} - r9c2{n1 n5} - r2c2{n5 n9} - c6n9{r2 r5} - c8n9{r5 r6} - r6n5{c8 c4} - r7c4{n5 .} ==> r8c4 ≠ 3
t-whip[7]: r3n9{c4 c3} - c2n9{r2 r8} - c2n2{r8 r4} - c2n3{r4 r5} - b4n4{r5c2 r5c1} - r5n1{c1 c9} - r5n8{c9 .} ==> r5c4 ≠ 9
whip-rc[5]: r5c4{n6 n8} - r5c9{n8 n1} - r6c7{n1 n4} - r4c7{n4 n3} - r3c7{n3 .} ==> r5c8 ≠ 6
t-whip[5]: r6c8{n5 n9} - r5c8{n9 n3} - b4n3{r5c1 r4c2} - c2n2{r4 r8} - c8n2{r8 .} ==> r2c8 ≠ 5
t-whip[6]: c1n4{r5 r3} - r1c2{n4 n5} - r2n5{c2 c9} - r2n7{c9 c6} - r2n1{c6 c7} - b6n1{r6c7 .} ==> r5c1 ≠ 1
t-whip[5]: r3n1{c3 c9} - r5n1{c9 c2} - r9c2{n1 n5} - b1n5{r1c2 r2c1} - b1n8{r2c1 .} ==> r1c3 ≠ 1
whip[1]: b1n1{r3c3 .} ==> r3c9 ≠ 1
t-whip[3]: r3c9{n6 n4} - b9n4{r8c9 r8c8} - c8n2{r8 .} ==> r2c8 ≠ 6
naked-single ==> r2c8 = 2
hidden-single-in-a-column ==> r7c7 = 2
hidden-single-in-a-block ==> r9c7 = 8
biv-chain-rc[4]: r3c9{n6 n4} - r7c9{n4 n9} - r7c3{n9 n8} - r1c3{n8 n6} ==> r1c8 ≠ 6, r1c9 ≠ 6, r3c1 ≠ 6, r3c3 ≠ 6
hidden-pairs-in-a-block: b1{r1c3 r2c1}{n6 n8} ==> r2c1 ≠ 5
whip[1]: c1n5{r9 .} ==> r9c2 ≠ 5
naked-single ==> r9c2 = 1
hidden-single-in-a-row ==> r5c9 = 1
hidden-single-in-a-block ==> r2c7 = 1
hidden-single-in-a-column ==> r1c6 = 1
hidden-single-in-a-column ==> r8c4 = 1
hidden-single-in-a-block ==> r4c9 = 8
hidden-single-in-a-block ==> r5c4 = 8
whip[1]: b6n5{r6c8 .} ==> r1c8 ≠ 5
whip[1]: c7n6{r6 .} ==> r4c8 ≠ 6
whip[1]: c8n6{r9 .} ==> r8c9 ≠ 6
z-chain[3]: b8n6{r9c5 r9c6} - r5n6{c6 c1} - b1n6{r2c1 .} ==> r1c5 ≠ 6
biv-chain[4]: r7n8{c1 c3} - r1n8{c3 c5} - c5n3{r1 r8} - r7c4{n3 n5} ==> r7c1 ≠ 5
hidden-single-in-a-block ==> r9c1 = 5
hidden-single-in-a-row ==> r9c8 = 7
hidden-single-in-a-block ==> r8c8 = 6
whip[1]: b9n4{r8c9 .} ==> r1c9 ≠ 4, r3c9 ≠ 4
naked-single ==> r3c9 = 6
swordfish-in-rows: n6{r2 r5 r9}{c5 c1 c6} ==> r6c5 ≠ 6, r6c1 ≠ 6, r4c6 ≠ 6
biv-chain-rc[4]: r7c4{n5 n3} - r8c5{n3 n4} - r6c5{n4 n9} - r6c8{n9 n5} ==> r6c4 ≠ 5
hidden-single-in-a-row ==> r6c8 = 5
hidden-single-in-a-block ==> r5c8 = 9
whip[1]: r5n3{c2 .} ==> r4c2 ≠ 3
biv-chain-rc[3]: r6c5{n9 n4} - r5c6{n4 n6} - r9c6{n6 n9} ==> r9c5 ≠ 9
naked-single ==> r9c5 = 6
naked-single ==> r9c6 = 9
hidden-pairs-in-a-block: b2{r1c4 r2c6}{n6 n7} ==> r1c4 ≠ 3
biv-chain[3]: b2n6{r1c4 r2c6} - c6n7{r2 r4} - b5n5{r4c6 r4c4} ==> r4c4 ≠ 6
biv-chain-rn[4]: r4n6{c3 c7} - r4n3{c7 c8} - r1n3{c8 c5} - r1n8{c5 c3} ==> r1c3 ≠ 6
naked-single ==> r1c3 = 8
naked-single ==> r1c5 = 3
naked-single ==> r1c8 = 4
naked-single ==> r1c2 = 5
naked-single ==> r1c9 = 7
naked-single ==> r1c4 = 6
naked-single ==> r2c6 = 7
naked-single ==> r2c9 = 5
naked-single ==> r2c2 = 9
naked-single ==> r2c5 = 8
naked-single ==> r3c3 = 1
naked-single ==> r3c1 = 4
naked-single ==> r3c7 = 3
naked-single ==> r4c8 = 3
naked-single ==> r3c4 = 9
naked-single ==> r6c4 = 7
naked-single ==> r4c4 = 5
naked-single ==> r4c6 = 4
naked-single ==> r4c2 = 2
naked-single ==> r8c2 = 3
naked-single ==> r5c2 = 4
naked-single ==> r7c1 = 8
naked-single ==> r8c1 = 7
naked-single ==> r4c7 = 6
naked-single ==> r4c3 = 7
naked-single ==> r6c7 = 4
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 3
naked-single ==> r6c5 = 9
naked-single ==> r7c6 = 5
naked-single ==> r7c4 = 3
naked-single ==> r6c1 = 1
naked-single ==> r6c3 = 6
naked-single ==> r8c5 = 4
naked-single ==> r8c9 = 9
naked-single ==> r7c9 = 4
naked-single ==> r8c3 = 2
naked-single ==> r2c1 = 6
naked-single ==> r7c3 = 9
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[9]
258631947
693487125
471952386
927514638
345826791
186793452
869375214
732148569
514269873
Puzzle 2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3 :
init-time = 0.19s, solve-time = 36.76s, total-time = 36.95s
nb-facts=<Fact-106085>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




Whips and Oddagon[7], but W rating unchanged

(solve "2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3
22 givens, 217 candidates
entering BRT
Starting_init_links_with_<Fact-6589>
217 candidates, 1321 csp-links and 1321 links. Density = 5.64%
starting non trivial part of solution
Entering_level_W1_with_<Fact-14154>
Entering_relation_bivalue_with_<Fact-14155>
Entering_level_S2_with_<Fact-14202>
Entering_level_TyBC2_with_<Fact-14206>
Entering_level_BC2_with_<Fact-14221>
Entering_level_TyZ2_with_<Fact-14266>
Entering_level_Z2_with_<Fact-14724>
Entering_level_TytW2_with_<Fact-15049>
Entering_level_tW2_with_<Fact-15050>
Entering_level_TyW2_with_<Fact-15051>
Entering_level_W2_with_<Fact-15052>
Entering_level_S3_with_<Fact-15053>
Entering_level_TyBC3_with_<Fact-15061>
Entering_level_BC3_with_<Fact-15064>
Entering_level_TyZ3_with_<Fact-15107>
Entering_level_Z3_with_<Fact-15260>
Entering_level_O3_with_<Fact-15582>
Entering_level_TytW3_with_<Fact-26610>
Entering_level_TyW3_with_<Fact-26860>
Entering_level_tW3_with_<Fact-26862>
Entering_level_W3_with_<Fact-27250>
Entering_level_S4_with_<Fact-27251>
Entering_level_TyBC4_with_<Fact-27255>
Entering_level_BC4_with_<Fact-27256>
biv-chain[4]: r2n8{c5 c1} - c3n8{r1 r7} - r7n2{c3 c7} - r3n2{c7 c6} ==> r2c5 ≠ 2
hidden-single-in-a-column ==> r5c5 = 2
whip[1]: c5n8{r2 .} ==> r1c4 ≠ 8
Entering_level_TyZ4_with_<Fact-29577>
Entering_level_Z4_with_<Fact-29655>
Entering_level_TytW4_with_<Fact-30002>
Entering_level_TyW4_with_<Fact-30220>
Entering_level_tW4_with_<Fact-30222>
Entering_level_W4_with_<Fact-30766>
Entering_level_TyBC5_with_<Fact-30767>
Entering_level_BC5_with_<Fact-30768>
Entering_level_TyZ5_with_<Fact-30787>
Entering_level_Z5_with_<Fact-30806>
Entering_level_O5_with_<Fact-31091>
Entering_level_TytW5_with_<Fact-37964>
Entering_level_TyW5_with_<Fact-38121>
Entering_level_tW5_with_<Fact-38123>
Entering_level_W5_with_<Fact-38793>
whip[5]: r3n2{c6 c7} - b3n3{r3c7 r1c8} - r1c5{n3 n8} - c3n8{r1 r7} - r7n2{c3 .} ==> r3c6 ≠ 6
Entering_level_TyBC6_with_<Fact-39025>
Entering_level_BC6_with_<Fact-39026>
Entering_level_TyZ6_with_<Fact-39027>
Entering_level_Z6_with_<Fact-39032>
Entering_level_TytW6_with_<Fact-39216>
t-whip-cn[6]: c7n3{r3 r4} - c8n3{r5 r1} - c5n3{r1 r8} - c5n4{r8 r6} - c6n4{r5 r7} - c7n4{r7 .} ==> r3c7 ≠ 1, r3c7 ≠ 2, r3c7 ≠ 6
hidden-single-in-a-row ==> r3c6 = 2
Entering_level_TyW6_with_<Fact-43234>
Entering_level_tW6_with_<Fact-43236>
Entering_level_W6_with_<Fact-43680>
Entering_level_TyBC7_with_<Fact-43681>
Entering_level_BC7_with_<Fact-43682>
Entering_level_TyZ7_with_<Fact-43683>
Entering_level_Z7_with_<Fact-43685>
Entering_level_O7_with_<Fact-43794>
oddagon[7]: r1n4{c2 c8},c8n4{r1 r8},r8n4{c8 c5},c5n4{r8 r6},r6n4{c5 c1},c1n4{r6 r3},b1n4{r3c1 r1c2} ==> r5c9 ≠ 4  ; <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
Entering_level_TytW7_with_<Fact-50836>
Entering_level_TyW7_with_<Fact-50857>
Entering_level_tW7_with_<Fact-50859>
Entering_level_W7_with_<Fact-51399>
Entering_level_TyBC8_with_<Fact-51400>
Entering_level_BC8_with_<Fact-51401>
Entering_level_TyZ8_with_<Fact-51402>
Entering_level_Z8_with_<Fact-51404>
Entering_level_TytW8_with_<Fact-51496>
Entering_level_TyW8_with_<Fact-51505>
Entering_level_tW8_with_<Fact-51507>
Entering_level_W8_with_<Fact-52318>
whip[8]: r7n3{c4 c1} - r7n5{c1 c6} - b8n4{r7c6 r8c5} - c5n3{r8 r1} - c5n8{r1 r2} - c1n8{r2 r9} - r9c7{n8 n6} - r9c5{n6 .} ==> r7c4 ≠ 9
whip[8]: r9c5{n9 n6} - r9c7{n6 n8} - r7c9{n8 n4} - r7c7{n4 n2} - r7c3{n2 n8} - r1n8{c3 c5} - c5n3{r1 r8} - r8n4{c5 .} ==> r7c6 ≠ 9
z-chain[4]: r7n9{c9 c3} - r3n9{c3 c4} - c6n9{r2 r5} - c9n9{r5 .} ==> r9c8 ≠ 9
whip[7]: c9n8{r5 r7} - r7n9{c9 c3} - r7n2{c3 c7} - r7n4{c7 c6} - b5n4{r4c6 r6c5} - c7n4{r6 r3} - c7n3{r3 .} ==> r4c7 ≠ 8
whip[1]: c7n8{r9 .} ==> r7c9 ≠ 8
t-whip[8]: r7c9{n9 n4} - r8n4{c9 c5} - c5n3{r8 r1} - r3n3{c4 c7} - r3n4{c7 c1} - r1n4{c2 c8} - r6n4{c8 c7} - b6n1{r6c7 .} ==> r5c9 ≠ 9
whip[1]: c9n9{r8 .} ==> r8c8 ≠ 9
whip[8]: r9n9{c6 c2} - r9c5{n9 n6} - r2c5{n6 n8} - b1n8{r2c1 r1c3} - r7c3{n8 n2} - b9n2{r7c7 r8c8} - r8n6{c8 c9} - r8n4{c9 .} ==> r8c5 ≠ 9
whip[8]: r6n5{c8 c4} - r7c4{n5 n3} - r3n3{c4 c7} - r4c7{n3 n6} - c7n4{r4 r7} - r7n2{c7 c3} - r4c3{n2 n7} - b5n7{r4c4 .} ==> r6c8 ≠ 4
Entering_level_TyBC9_with_<Fact-73252>
Entering_level_BC9_with_<Fact-73253>
Entering_level_TyZ9_with_<Fact-73254>
Entering_level_Z9_with_<Fact-73256>
Entering_level_O9_with_<Fact-73526>
Entering_level_TytW9_with_<Fact-78901>
Entering_level_TyW9_with_<Fact-78926>
Entering_level_tW9_with_<Fact-78928>
Entering_level_W9_with_<Fact-82278>
whip[9]: r6n5{c8 c4} - r6n9{c4 c5} - c5n4{r6 r8} - c5n3{r8 r1} - r3n3{c4 c7} - r4c7{n3 n4} - r6n4{c7 c1} - r3n4{c1 c9} - r7n4{c9 .} ==> r6c8 ≠ 6
whip[9]: c8n9{r5 r6} - r6n5{c8 c4} - r7c4{n5 n3} - r3n3{c4 c7} - r4c7{n3 n6} - c7n4{r4 r7} - r7n2{c7 c3} - r4c3{n2 n7} - b5n7{r4c4 .} ==> r5c8 ≠ 4
whip[9]: r8n4{c9 c5} - r6n4{c5 c1} - r3n4{c1 c9} - r3c7{n4 n3} - r4c7{n3 n6} - b6n4{r4c7 r4c8} - r4n3{c8 c2} - c2n2{r4 r8} - b9n2{r8c8 .} ==> r7c7 ≠ 4
biv-chain[4]: r9c8{n7 n6} - r9c7{n6 n8} - r7c7{n8 n2} - b3n2{r2c7 r2c8} ==> r2c8 ≠ 7
whip[5]: c5n4{r6 r8} - b9n4{r8c9 r7c9} - r3n4{c9 c7} - b3n3{r3c7 r1c8} - c5n3{r1 .} ==> r6c1 ≠ 4
t-whip[7]: c7n4{r6 r3} - b3n3{r3c7 r1c8} - r1n4{c8 c2} - c1n4{r3 r5} - r5n3{c1 c2} - r5n1{c2 c9} - c9n8{r5 .} ==> r4c9 ≠ 4
whip[7]: b9n9{r8c9 r7c9} - r7n4{c9 c6} - b5n4{r4c6 r6c5} - r6n9{c5 c8} - r6n5{c8 c4} - b8n5{r7c4 r9c6} - b8n1{r9c6 .} ==> r8c4 ≠ 9
whip[1]: b8n9{r9c6 .} ==> r9c2 ≠ 9
whip[4]: c7n1{r2 r6} - c3n1{r6 r8} - r9c2{n1 n5} - b1n5{r1c2 .} ==> r2c1 ≠ 1
z-chain[5]: r9c2{n1 n5} - r1c2{n5 n4} - c1n4{r3 r5} - r5n1{c1 c9} - c7n1{r6 .} ==> r2c2 ≠ 1
biv-chain[4]: b8n1{r8c4 r9c6} - r9c2{n1 n5} - r2c2{n5 n9} - r3n9{c3 c4} ==> r3c4 ≠ 1
z-chain[4]: b2n1{r1c6 r2c6} - c7n1{r2 r6} - c3n1{r6 r8} - c4n1{r8 .} ==> r1c2 ≠ 1
t-whip[7]: b8n1{r8c4 r9c6} - r9c2{n1 n5} - r2c2{n5 n9} - c6n9{r2 r5} - c8n9{r5 r6} - r6n5{c8 c4} - r7c4{n5 .} ==> r8c4 ≠ 3
t-whip[7]: r3n9{c4 c3} - c2n9{r2 r8} - c2n2{r8 r4} - c2n3{r4 r5} - b4n4{r5c2 r5c1} - r5n1{c1 c9} - r5n8{c9 .} ==> r5c4 ≠ 9
whip-rc[5]: r5c4{n6 n8} - r5c9{n8 n1} - r6c7{n1 n4} - r4c7{n4 n3} - r3c7{n3 .} ==> r5c8 ≠ 6
t-whip[5]: r6c8{n5 n9} - r5c8{n9 n3} - b4n3{r5c1 r4c2} - c2n2{r4 r8} - c8n2{r8 .} ==> r2c8 ≠ 5
t-whip[6]: c1n4{r5 r3} - r1c2{n4 n5} - r2n5{c2 c9} - r2n7{c9 c6} - r2n1{c6 c7} - b6n1{r6c7 .} ==> r5c1 ≠ 1
t-whip[5]: r3n1{c3 c9} - r5n1{c9 c2} - r9c2{n1 n5} - b1n5{r1c2 r2c1} - b1n8{r2c1 .} ==> r1c3 ≠ 1
whip[1]: b1n1{r3c3 .} ==> r3c9 ≠ 1
t-whip[3]: r3c9{n6 n4} - b9n4{r8c9 r8c8} - c8n2{r8 .} ==> r2c8 ≠ 6
naked-single ==> r2c8 = 2
hidden-single-in-a-column ==> r7c7 = 2
hidden-single-in-a-block ==> r9c7 = 8
biv-chain-rc[4]: r3c9{n6 n4} - r7c9{n4 n9} - r7c3{n9 n8} - r1c3{n8 n6} ==> r1c8 ≠ 6, r1c9 ≠ 6, r3c1 ≠ 6, r3c3 ≠ 6
hidden-pairs-in-a-block: b1{r1c3 r2c1}{n6 n8} ==> r2c1 ≠ 5
whip[1]: c1n5{r9 .} ==> r9c2 ≠ 5
naked-single ==> r9c2 = 1
hidden-single-in-a-row ==> r5c9 = 1
hidden-single-in-a-block ==> r2c7 = 1
hidden-single-in-a-column ==> r1c6 = 1
hidden-single-in-a-column ==> r8c4 = 1
hidden-single-in-a-block ==> r4c9 = 8
hidden-single-in-a-block ==> r5c4 = 8
whip[1]: b6n5{r6c8 .} ==> r1c8 ≠ 5
whip[1]: c7n6{r6 .} ==> r4c8 ≠ 6
whip[1]: c8n6{r9 .} ==> r8c9 ≠ 6
z-chain[3]: b8n6{r9c5 r9c6} - r5n6{c6 c1} - b1n6{r2c1 .} ==> r1c5 ≠ 6
biv-chain[4]: r7n8{c1 c3} - r1n8{c3 c5} - c5n3{r1 r8} - r7c4{n3 n5} ==> r7c1 ≠ 5
hidden-single-in-a-block ==> r9c1 = 5
hidden-single-in-a-row ==> r9c8 = 7
hidden-single-in-a-block ==> r8c8 = 6
whip[1]: b9n4{r8c9 .} ==> r1c9 ≠ 4, r3c9 ≠ 4
naked-single ==> r3c9 = 6
swordfish-in-rows: n6{r2 r5 r9}{c5 c1 c6} ==> r6c5 ≠ 6, r6c1 ≠ 6, r4c6 ≠ 6
biv-chain-rc[4]: r7c4{n5 n3} - r8c5{n3 n4} - r6c5{n4 n9} - r6c8{n9 n5} ==> r6c4 ≠ 5
hidden-single-in-a-row ==> r6c8 = 5
hidden-single-in-a-block ==> r5c8 = 9
whip[1]: r5n3{c2 .} ==> r4c2 ≠ 3
biv-chain-rc[3]: r6c5{n9 n4} - r5c6{n4 n6} - r9c6{n6 n9} ==> r9c5 ≠ 9
naked-single ==> r9c5 = 6
naked-single ==> r9c6 = 9
hidden-pairs-in-a-block: b2{r1c4 r2c6}{n6 n7} ==> r1c4 ≠ 3
biv-chain[3]: b2n6{r1c4 r2c6} - c6n7{r2 r4} - b5n5{r4c6 r4c4} ==> r4c4 ≠ 6
biv-chain-rn[4]: r4n6{c3 c7} - r4n3{c7 c8} - r1n3{c8 c5} - r1n8{c5 c3} ==> r1c3 ≠ 6
naked-single ==> r1c3 = 8
naked-single ==> r1c5 = 3
naked-single ==> r1c8 = 4
naked-single ==> r1c2 = 5
naked-single ==> r1c9 = 7
naked-single ==> r1c4 = 6
naked-single ==> r2c6 = 7
naked-single ==> r2c9 = 5
naked-single ==> r2c2 = 9
naked-single ==> r2c5 = 8
naked-single ==> r3c3 = 1
naked-single ==> r3c1 = 4
naked-single ==> r3c7 = 3
naked-single ==> r4c8 = 3
naked-single ==> r3c4 = 9
naked-single ==> r6c4 = 7
naked-single ==> r4c4 = 5
naked-single ==> r4c6 = 4
naked-single ==> r4c2 = 2
naked-single ==> r8c2 = 3
naked-single ==> r5c2 = 4
naked-single ==> r7c1 = 8
naked-single ==> r8c1 = 7
naked-single ==> r4c7 = 6
naked-single ==> r4c3 = 7
naked-single ==> r6c7 = 4
naked-single ==> r5c6 = 6
naked-single ==> r5c1 = 3
naked-single ==> r6c5 = 9
naked-single ==> r7c6 = 5
naked-single ==> r7c4 = 3
naked-single ==> r6c1 = 1
naked-single ==> r6c3 = 6
naked-single ==> r8c5 = 4
naked-single ==> r8c9 = 9
naked-single ==> r7c9 = 4
naked-single ==> r8c3 = 2
naked-single ==> r2c1 = 6
naked-single ==> r7c3 = 9
GRID 0 SOLVED. rating-type = W+O+SFin, MOST COMPLEX RULE TRIED = W[9]
258631947
693487125
471952386
927514638
345826791
186793452
869375214
732148569
514269873
Puzzle 2.....9....34......7..5..8.9...1......5...7...8...3..2.6..7..1......85....42....3 :
init-time = 0.2s, solve-time = 53.24s, total-time = 53.44s
nb-facts=<Fact-199056>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+O+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


