#113 SER= 9.4

(solve "5..2..3......8..9...2..4..66..1..9...1.....4...7..3..87..3..4...9..7..2...5..6..9")


***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
5..2..3......8..9...2..4..66..1..9...1.....4...7..3..87..3..4...9..7..2...5..6..9
25 givens, 206 candidates
entering BRT
hidden-single-in-a-column ==> r3c5 = 3
Starting_init_links_with_<Fact-3663>
201 candidates, 1159 csp-links and 1159 links. Density = 5.77%
starting non trivial part of solution
Entering_level_W1_with_<Fact-7984>
Entering_relation_bivalue_with_<Fact-7985>
Entering_level_S2_with_<Fact-8034>
finned-x-wing-in-rows: n9{r3 r6}{c1 c4} ==> r5c4 ≠ 9
Entering_level_BC2_with_<Fact-8048>
Entering_level_W2_with_<Fact-8076>
Entering_level_S3_with_<Fact-8354>
Entering_level_BC3_with_<Fact-8370>
Entering_level_W3_with_<Fact-8376>
Entering_level_S4_with_<Fact-8647>
Entering_level_BC4_with_<Fact-8651>
Entering_level_W4_with_<Fact-8653>
Entering_level_BC5_with_<Fact-8928>
Entering_level_W5_with_<Fact-8930>
whip[5]: c5n5{r6 r7} - r7n9{c5 c6} - c6n2{r7 r4} - b5n8{r4c6 r5c4} - b5n7{r5c4 .} ==> r5c6 ≠ 5
whip[5]: c5n5{r6 r7} - r7n9{c5 c6} - c6n2{r7 r5} - b5n8{r5c6 r5c4} - b5n7{r5c4 .} ==> r4c6 ≠ 5
Entering_level_BC6_with_<Fact-9191>
Entering_level_W6_with_<Fact-9193>
whip[6]: c5n5{r6 r7} - r7n9{c5 c6} - b8n2{r7c6 r9c5} - c5n1{r9 r1} - r1c6{n1 n7} - b5n7{r4c6 .} ==> r5c4 ≠ 5
Entering_level_BC7_with_<Fact-9485>
Entering_level_W7_with_<Fact-9487>
Entering_level_BC8_with_<Fact-9875>
Entering_level_W8_with_<Fact-9877>
Entering_level_BC9_with_<Fact-10588>
Entering_level_W9_with_<Fact-10590>
Entering_level_BC10_with_<Fact-11941>
Entering_level_W10_with_<Fact-11943>
Entering_level_BC11_with_<Fact-14418>
Entering_level_W11_with_<Fact-14420>
whip[11]: r3n1{c8 c1} - r3n9{c1 c4} - r1n9{c6 c3} - r1n4{c3 c2} - r2c1{n4 n3} - r2c3{n3 n6} - r2c2{n6 n7} - c4n7{r2 r5} - c4n6{r5 r6} - r5n6{c5 c7} - r8n6{c7 .} ==> r1c9 ≠ 1
whip[11]: r7n9{c5 c6} - r7n2{c6 c2} - r9n2{c2 c5} - c5n1{r9 r1} - r1n9{c5 c3} - r1c6{n9 n7} - r1c8{n7 n8} - r7n8{c8 c3} - r5c3{n8 n3} - r4c3{n3 n4} - r4c5{n4 .} ==> r7c5 ≠ 5
whip[1]: c5n5{r6 .} ==> r6c4 ≠ 5
whip[7]: c8n6{r7 r6} - r6n1{c8 c7} - r3n1{c7 c1} - r3n9{c1 c4} - r6c4{n9 n4} - b8n4{r8c4 r9c5} - r9n1{c5 .} ==> r7c8 ≠ 1
Entering_level_BC12_with_<Fact-21635>
Entering_level_W12_with_<Fact-21637>
Entering_level_BC13_with_<Fact-27294>
Entering_level_W13_with_<Fact-27296>
whip[13]: r3n1{c8 c1} - b1n9{r3c1 r1c3} - r1n8{c3 c2} - r1n6{c2 c5} - b2n9{r1c5 r3c4} - r1c6{n9 n7} - c4n7{r3 r5} - r5n6{c4 c7} - c8n6{r6 r7} - r8n6{c7 c3} - c3n1{r8 r7} - r7n8{c3 c6} - b5n8{r4c6 .} ==> r1c8 ≠ 1
Entering_level_BC14_with_<Fact-35871>
Entering_level_W14_with_<Fact-35873>
whip[14]: r8n6{c7 c3} - r7n6{c3 c8} - r7n5{c8 c6} - r7n9{c6 c5} - b8n2{r7c5 r9c5} - c5n1{r9 r1} - r2c6{n1 n7} - r1c6{n7 n9} - r3c4{n9 n5} - b3n5{r3c7 r2c9} - r7c9{n5 n1} - r7c3{n1 n8} - r1c3{n8 n4} - c9n4{r1 .} ==> r8c7 ≠ 5
Entering_level_BC15_with_<Fact-43774>
Entering_level_W15_with_<Fact-43776>
Entering_level_BC16_with_<Fact-53357>
Entering_level_W16_with_<Fact-53359>
whip[16]: r9c4{n4 n8} - r8c4{n8 n5} - c4n4{r8 r6} - c4n9{r6 r3} - b2n5{r3c4 r2c6} - r8c6{n5 n1} - r1c6{n1 n7} - r1c8{n7 n8} - b9n8{r7c8 r8c7} - b9n6{r8c7 r7c8} - r7n5{c8 c9} - r7n1{c9 c3} - r7n8{c3 c2} - r3n8{c2 c1} - c1n1{r3 r2} - c9n1{r2 .} ==> r9c5 ≠ 4
whip[1]: c5n4{r6 .} ==> r6c4 ≠ 4
whip[5]: r6c4{n9 n6} - b6n6{r6c7 r5c7} - r5n5{c7 c9} - b9n5{r7c9 r7c8} - c8n6{r7 .} ==> r5c5 ≠ 9
whip[9]: r8n3{c3 c9} - r5n3{c9 c3} - c3n9{r5 r1} - r3n9{c1 c4} - r6c4{n9 n6} - b6n6{r6c7 r5c7} - r8n6{c7 c3} - r2n6{c3 c2} - r2n3{c2 .} ==> r9c1 ≠ 3
whip[9]: r6n1{c7 c8} - r3n1{c8 c1} - r3n9{c1 c4} - r6c4{n9 n6} - b2n6{r2c4 r1c5} - r1n1{c5 c6} - r8n1{c6 c3} - r8n6{c3 c7} - r5n6{c7 .} ==> r9c7 ≠ 1
whip[9]: r6n1{c8 c7} - r3n1{c7 c1} - r3n9{c1 c4} - r6c4{n9 n6} - b2n6{r2c4 r1c5} - r1n1{c5 c6} - r8n1{c6 c3} - r8n6{c3 c7} - r5n6{c7 .} ==> r9c8 ≠ 1
whip[12]: r3n1{c8 c1} - r9n1{c1 c5} - r7n1{c5 c3} - r7c9{n1 n5} - r8c9{n5 n3} - r8n1{c9 c7} - r8n6{c7 c3} - b7n3{r8c3 r9c2} - r9n2{c2 c1} - r7c2{n2 n8} - b1n8{r1c2 r1c3} - b1n9{r1c3 .} ==> r2c9 ≠ 1
whip[1]: c9n1{r8 .} ==> r8c7 ≠ 1
whip[10]: c3n9{r5 r1} - r3n9{c1 c4} - r6c4{n9 n6} - c8n6{r6 r7} - b7n6{r7c2 r8c3} - r2n6{c3 c2} - r2n3{c2 c1} - r8n3{c1 c9} - b9n5{r8c9 r7c9} - b9n1{r7c9 .} ==> r5c3 ≠ 3
whip[9]: c4n8{r9 r5} - r5c3{n8 n9} - b1n9{r1c3 r3c1} - c1n8{r3 r9} - c7n8{r9 r3} - r3n1{c7 c8} - r3n5{c8 c4} - r8c4{n5 n4} - r9c4{n4 .} ==> r8c6 ≠ 8
whip[8]: r8c6{n5 n1} - c9n1{r8 r7} - r7n5{c9 c8} - r8c9{n5 n3} - b6n3{r4c9 r4c8} - c3n3{r4 r2} - c3n1{r2 r1} - c5n1{r1 .} ==> r2c6 ≠ 5
whip[1]: c6n5{r8 .} ==> r8c4 ≠ 5
naked-pairs-in-a-block: b8{r8c4 r9c4}{n4 n8} ==> r7c6 ≠ 8
whip[1]: b8n8{r9c4 .} ==> r5c4 ≠ 8
whip[5]: c4n8{r9 r8} - c7n8{r8 r3} - c1n8{r3 r5} - r5n3{c1 c9} - b9n3{r8c9 .} ==> r9c8 ≠ 8
whip[6]: r2n4{c3 c9} - r2n2{c9 c7} - r2n5{c7 c4} - b2n6{r2c4 r1c5} - r1n1{c5 c6} - r1n9{c6 .} ==> r1c3 ≠ 4
whip[7]: c8n1{r3 r6} - c8n6{r6 r7} - b7n6{r7c2 r8c3} - c3n1{r8 r7} - r7n8{c3 c2} - b1n8{r1c2 r1c3} - b1n9{r1c3 .} ==> r3c1 ≠ 1
whip[1]: r3n1{c8 .} ==> r2c7 ≠ 1
whip[7]: r3c2{n7 n8} - r1n8{c3 c8} - r7n8{c8 c3} - b4n8{r4c3 r5c1} - r5n3{c1 c9} - b9n3{r8c9 r9c8} - r9n7{c8 .} ==> r3c7 ≠ 7
whip[5]: b9n5{r8c9 r7c8} - c8n6{r7 r6} - c8n1{r6 r3} - c8n8{r3 r1} - r3c7{n8 .} ==> r2c9 ≠ 5
whip[7]: c1n1{r9 r2} - r2c6{n1 n7} - b5n7{r4c6 r5c4} - c7n7{r5 r9} - r9c8{n7 n3} - r8c9{n3 n5} - r8c6{n5 .} ==> r8c3 ≠ 1
whip[8]: c4n6{r6 r2} - r2n5{c4 c7} - r5n5{c7 c9} - b9n5{r7c9 r7c8} - c8n6{r7 r6} - c8n1{r6 r3} - c8n8{r3 r1} - r3c7{n8 .} ==> r5c5 ≠ 6
finned-swordfish-in-rows: n6{r5 r8 r2}{c4 c7 c3} ==> r1c3 ≠ 6
whip[6]: c5n1{r9 r1} - c5n6{r1 r6} - c8n6{r6 r7} - r7c3{n6 n8} - r1c3{n8 n9} - r5c3{n9 .} ==> r7c6 ≠ 1
whip[6]: r2c6{n1 n7} - b5n7{r4c6 r5c4} - r5n6{c4 c7} - r8n6{c7 c3} - c3n3{r8 r4} - c3n4{r4 .} ==> r2c3 ≠ 1
finned-x-wing-in-rows: n1{r2 r9}{c1 c6} ==> r8c6 ≠ 1
naked-single ==> r8c6 = 5
whip[1]: b8n1{r9c5 .} ==> r1c5 ≠ 1
whip[6]: r7n8{c3 c8} - r1n8{c8 c3} - r1n1{c3 c6} - r1n9{c6 c5} - c5n6{r1 r6} - c8n6{r6 .} ==> r9c2 ≠ 8
whip[7]: r9n7{c7 c8} - b9n3{r9c8 r8c9} - r8n1{c9 c1} - b1n1{r2c1 r1c3} - b1n9{r1c3 r3c1} - c1n8{r3 r5} - r5n3{c1 .} ==> r9c7 ≠ 8
naked-single ==> r9c7 = 7
naked-single ==> r9c8 = 3
naked-single ==> r8c9 = 1
naked-single ==> r7c9 = 5
biv-chain[3]: r1n1{c6 c3} - r7n1{c3 c5} - b8n9{r7c5 r7c6} ==> r1c6 ≠ 9
naked-pairs-in-a-block: b2{r1c6 r2c6}{n1 n7} ==> r3c4 ≠ 7, r2c4 ≠ 7
hidden-single-in-a-column ==> r5c4 = 7
hidden-single-in-a-row ==> r5c7 = 6
naked-single ==> r8c7 = 8
naked-single ==> r7c8 = 6
naked-single ==> r8c4 = 4
naked-single ==> r8c1 = 3
naked-single ==> r8c3 = 6
naked-single ==> r9c4 = 8
hidden-single-in-a-row ==> r5c9 = 3
hidden-single-in-a-row ==> r5c5 = 5
hidden-pairs-in-a-column: c3{n3 n4}{r2 r4} ==> r4c3 ≠ 8
biv-chain[3]: r3c1{n8 n9} - r1n9{c3 c5} - r1n6{c5 c2} ==> r1c2 ≠ 8
biv-chain[3]: c9n2{r2 r4} - r4c5{n2 n4} - c3n4{r4 r2} ==> r2c9 ≠ 4
hidden-single-in-a-block ==> r1c9 = 4
biv-chain[3]: c1n8{r5 r3} - b1n9{r3c1 r1c3} - r5c3{n9 n8} ==> r5c6 ≠ 8, r4c2 ≠ 8
hidden-single-in-a-row ==> r4c6 = 8
biv-chain[4]: r3c2{n7 n8} - r3c1{n8 n9} - r1n9{c3 c5} - r1n6{c5 c2} ==> r1c2 ≠ 7
naked-single ==> r1c2 = 6
naked-single ==> r1c5 = 9
naked-single ==> r3c4 = 5
naked-single ==> r2c4 = 6
naked-single ==> r6c4 = 9
naked-single ==> r5c6 = 2
naked-single ==> r4c5 = 4
naked-single ==> r4c3 = 3
naked-single ==> r2c3 = 4
naked-single ==> r2c1 = 1
naked-single ==> r1c3 = 8
naked-single ==> r1c8 = 7
naked-single ==> r1c6 = 1
naked-single ==> r2c9 = 2
naked-single ==> r2c7 = 5
naked-single ==> r4c9 = 7
naked-single ==> r4c8 = 5
naked-single ==> r4c2 = 2
naked-single ==> r6c1 = 4
naked-single ==> r6c2 = 5
naked-single ==> r9c1 = 2
naked-single ==> r9c5 = 1
naked-single ==> r7c5 = 2
naked-single ==> r7c2 = 8
naked-single ==> r9c2 = 4
naked-single ==> r6c8 = 1
naked-single ==> r3c8 = 8
naked-single ==> r6c7 = 2
naked-single ==> r3c1 = 9
naked-single ==> r5c1 = 8
naked-single ==> r3c2 = 7
naked-single ==> r2c2 = 3
naked-single ==> r5c3 = 9
naked-single ==> r7c3 = 1
naked-single ==> r2c6 = 7
naked-single ==> r6c5 = 6
naked-single ==> r7c6 = 9
naked-single ==> r3c7 = 1
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[16]
568291374
134687592
972534186
623148957
819752643
457963218
781329465
396475821
245816739
Puzzle 5..2..3......8..9...2..4..66..1..9...1.....4...7..3..87..3..4...9..7..2...5..6..9 :
init-time = 0.19s, solve-time = 2m 42.36s, total-time = 2m 42.55s
nb-facts=<Fact-126803>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


