
#182 SER= 9.4

(solve "......8...7..9..1...3..7..51..6......5..2..4...8..9..74.....2...6..1..5......6..3")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
......8...7..9..1...3..7..51..6......5..2..4...8..9..74.....2...6..1..5......6..3
22 givens, 235 candidates
entering BRT
hidden-single-in-a-row ==> r1c8 = 7
hidden-single-in-a-block ==> r2c7 = 3
Starting_init_links_with_<Fact-3690>
222 candidates, 1396 csp-links and 1396 links. Density = 5.69%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8881>
Entering_relation_bivalue_with_<Fact-8882>
Entering_level_S2_with_<Fact-8923>
finned-x-wing-in-rows: n7{r4 r7}{c3 c5} ==> r9c5 ≠ 7
Entering_level_BC2_with_<Fact-8933>
Entering_level_W2_with_<Fact-8963>
Entering_level_S3_with_<Fact-9214>
finned-swordfish-in-columns: n1{c6 c9 c3}{r1 r5 r7} ==> r7c2 ≠ 1
Entering_level_BC3_with_<Fact-9238>
Entering_level_W3_with_<Fact-9280>
Entering_level_S4_with_<Fact-9571>
Entering_level_BC4_with_<Fact-9639>
Entering_level_W4_with_<Fact-9669>
Entering_level_BC5_with_<Fact-10079>
Entering_level_W5_with_<Fact-10089>
whip[5]: c7n6{r6 r3} - c9n6{r2 r7} - b9n1{r7c9 r9c7} - c7n7{r9 r8} - c7n4{r8 .} ==> r6c8 ≠ 6
Entering_level_BC6_with_<Fact-10777>
Entering_level_W6_with_<Fact-10779>
Entering_level_BC7_with_<Fact-11284>
Entering_level_W7_with_<Fact-11286>
Entering_level_BC8_with_<Fact-11803>
Entering_level_W8_with_<Fact-11805>
Entering_level_BC9_with_<Fact-12458>
Entering_level_W9_with_<Fact-12460>
Entering_level_BC10_with_<Fact-13403>
Entering_level_W10_with_<Fact-13405>
whip[10]: c8n3{r6 r4} - c2n3{r4 r7} - c5n3{r7 r1} - c5n6{r1 r3} - c8n6{r3 r7} - c8n8{r7 r9} - c2n8{r9 r3} - r3n1{c2 c4} - r6n1{c4 c7} - r6n6{c7 .} ==> r6c1 ≠ 3
Entering_level_BC11_with_<Fact-15287>
Entering_level_W11_with_<Fact-15289>
Entering_level_BC12_with_<Fact-17550>
Entering_level_W12_with_<Fact-17552>
whip[12]: c1n3{r8 r5} - c1n7{r5 r9} - c7n7{r9 r8} - r8c3{n7 n9} - b4n9{r4c3 r4c2} - c2n3{r4 r7} - b7n8{r7c2 r9c2} - r9c8{n8 n9} - c4n9{r9 r7} - c4n7{r7 r5} - r5c3{n7 n6} - r6c1{n6 .} ==> r8c1 ≠ 2
Entering_level_BC13_with_<Fact-21140>
Entering_level_W13_with_<Fact-21142>
whip[13]: r9c8{n8 n9} - r8c9{n9 n4} - c7n4{r9 r3} - r8c7{n4 n7} - r9c7{n7 n1} - r6n1{c7 c4} - r5n1{c6 c9} - b6n8{r5c9 r4c8} - r7c8{n8 n6} - r3c8{n6 n2} - r3c4{n2 n8} - c5n8{r3 r9} - c2n8{r9 .} ==> r7c9 ≠ 8
whip[13]: r7n6{c8 c9} - c9n1{r7 r5} - c6n1{r5 r1} - r3n1{c4 c2} - c2n8{r3 r9} - r9c8{n8 n9} - r8c9{n9 n4} - r2c9{n4 n2} - c6n2{r2 r8} - r8n8{c6 c4} - c4n9{r8 r7} - r7c2{n9 n3} - b8n3{r7c4 .} ==> r7c8 ≠ 8
whip[10]: c8n8{r9 r4} - b5n8{r4c5 r5c6} - c6n1{r5 r1} - b1n1{r1c2 r3c2} - c2n8{r3 r7} - c5n8{r7 r3} - c5n6{r3 r1} - r1n3{c5 c4} - r5n3{c4 c1} - b7n3{r8c1 .} ==> r9c4 ≠ 8
whip[11]: b7n3{r8c1 r7c2} - b4n3{r6c2 r5c1} - c1n7{r5 r9} - r8c3{n7 n2} - b8n2{r8c4 r9c4} - c4n9{r9 r7} - r7n7{c4 c5} - r7n8{c5 c6} - r8n8{c4 c9} - r5n8{c9 c4} - c4n7{r5 .} ==> r8c1 ≠ 9
Entering_level_BC14_with_<Fact-30641>
Entering_level_W14_with_<Fact-30643>
whip[14]: r3n1{c2 c4} - c6n1{r1 r5} - r6n1{c4 c7} - c9n1{r5 r7} - r7n6{c9 c8} - r3c8{n6 n9} - r9c8{n9 n8} - c2n8{r9 r7} - b7n3{r7c2 r8c1} - r5n3{c1 c4} - b5n7{r5c4 r4c5} - c5n8{r4 r3} - r3c1{n8 n6} - r6n6{c1 .} ==> r3c2 ≠ 2
Entering_level_BC15_with_<Fact-35619>
Entering_level_W15_with_<Fact-35621>
Entering_level_BC16_with_<Fact-43315>
Entering_level_W16_with_<Fact-43317>
Entering_level_BC17_with_<Fact-55827>
Entering_level_W17_with_<Fact-55829>
whip[17]: c9n1{r7 r5} - c6n1{r5 r1} - c4n1{r3 r6} - c7n1{r6 r9} - c7n7{r9 r8} - c7n4{r8 r3} - r2c9{n4 n2} - b3n6{r2c9 r3c8} - c5n6{r3 r1} - r1n3{c5 c4} - b2n2{r1c4 r3c4} - c6n2{r2 r8} - r8n3{c6 c1} - r5n3{c1 c6} - r5n8{c6 c4} - r8n8{c4 c9} - c9n4{r8 .} ==> r7c9 ≠ 6
hidden-single-in-a-block ==> r7c8 = 6
Entering_level_BC18_with_<Fact-75814>
Entering_level_W18_with_<Fact-75816>
Entering_level_BC19_with_<Fact-84424>
Entering_level_W19_with_<Fact-84426>
whip[19]: c9n1{r7 r5} - c6n1{r5 r1} - r3n1{c4 c2} - r9n1{c2 c7} - c7n7{r9 r8} - c7n4{r8 r3} - c9n4{r2 r8} - c9n8{r8 r4} - c8n8{r4 r9} - c2n8{r9 r7} - c5n8{r7 r3} - r3c4{n8 n2} - c6n2{r2 r8} - c6n8{r8 r5} - c4n8{r5 r8} - r8c1{n8 n3} - r5n3{c1 c4} - r1n3{c4 c5} - c5n6{r1 .} ==> r7c3 ≠ 1
hidden-single-in-a-row ==> r7c9 = 1
whip[8]: r9n1{c3 c2} - r3n1{c2 c4} - r6n1{c4 c7} - r6n6{c7 c1} - r5c3{n6 n7} - b5n7{r5c4 r4c5} - r7n7{c5 c4} - r7n9{c4 .} ==> r9c3 ≠ 9
whip[14]: r9n1{c3 c2} - r3n1{c2 c4} - r6n1{c4 c7} - r6n6{c7 c1} - r5c3{n6 n9} - b4n7{r5c3 r5c1} - b5n7{r5c4 r4c5} - r7n7{c5 c4} - r7n9{c4 c2} - b7n3{r7c2 r8c1} - b7n8{r8c1 r9c1} - b9n8{r9c8 r8c9} - r5c9{n8 n6} - r5c7{n6 .} ==> r9c3 ≠ 7
whip[15]: r6n6{c1 c7} - b6n1{r6c7 r5c7} - c6n1{r5 r1} - c3n1{r1 r9} - c2n1{r9 r3} - c4n1{r3 r6} - r6n5{c4 c5} - r6n4{c5 c2} - b4n3{r6c2 r4c2} - b7n3{r7c2 r8c1} - c1n7{r8 r9} - r9n5{c1 c4} - r9n2{c4 c2} - r1c2{n2 n9} - c1n9{r1 .} ==> r5c1 ≠ 6
Entering_level_BC20_with_<Fact-107668>
Entering_level_W20_with_<Fact-107670>
Entering_level_W21_with_<Fact-118672>
Entering_level_W22_with_<Fact-140251>
whip[22]: r5n3{c6 c1} - c2n3{r6 r7} - r4n3{c2 c8} - r6c8{n3 n2} - r3c8{n2 n9} - r9c8{n9 n8} - b7n8{r9c1 r8c1} - c1n7{r8 r9} - c1n9{r9 r1} - c1n5{r1 r2} - b1n8{r2c1 r3c2} - r3n1{c2 c4} - r6n1{c4 c7} - r6n5{c7 c5} - r9c5{n5 n4} - r9c7{n4 n9} - c2n9{r9 r4} - r4n2{c2 c3} - r8c3{n2 n9} - r7n9{c3 c4} - r7n7{c4 c5} - r4n7{c5 .} ==> r6c4 ≠ 3
whip[22]: r5n3{c6 c1} - r4n3{c2 c8} - c8n8{r4 r9} - c8n9{r9 r3} - c8n2{r3 r6} - r6c2{n2 n4} - c2n3{r6 r7} - c2n8{r7 r3} - r3n1{c2 c4} - r3n2{c4 c1} - c1n8{r3 r8} - c1n7{r8 r9} - c1n9{r9 r1} - r1c2{n9 n1} - r9n1{c2 c3} - b7n5{r9c3 r7c3} - r7c6{n5 n8} - c5n8{r7 r4} - r4c9{n8 n9} - r8c9{n9 n4} - r9c7{n4 n9} - c2n9{r9 .} ==> r6c5 ≠ 3
whip[6]: r6n5{c5 c7} - b6n1{r6c7 r5c7} - c7n6{r5 r3} - c5n6{r3 r1} - c5n3{r1 r7} - c5n7{r7 .} ==> r4c5 ≠ 5
whip[7]: r6c5{n4 n5} - r9c5{n5 n8} - c8n8{r9 r4} - r4c6{n8 n3} - r5n3{c4 c1} - b7n3{r8c1 r7c2} - r7n8{c2 .} ==> r4c5 ≠ 4
whip[9]: b6n1{r5c7 r6c7} - c7n6{r6 r3} - c5n6{r3 r1} - c9n6{r1 r5} - r5c3{n6 n7} - b5n7{r5c4 r4c5} - c5n3{r4 r7} - b7n3{r7c2 r8c1} - r5c1{n3 .} ==> r5c7 ≠ 9
whip[9]: c2n8{r9 r3} - r3n1{c2 c4} - r6n1{c4 c7} - r5c7{n1 n6} - b4n6{r5c3 r6c1} - r3n6{c1 c5} - r3n4{c5 c7} - b9n4{r8c7 r8c9} - b9n8{r8c9 .} ==> r9c1 ≠ 8
whip[10]: r6c5{n5 n4} - r9c5{n4 n8} - r7n8{c4 c2} - r8n8{c1 c9} - b6n8{r4c9 r4c8} - c8n3{r4 r6} - c2n3{r6 r4} - r4c6{n3 n5} - r7c6{n5 n3} - c5n3{r7 .} ==> r1c5 ≠ 5
whip[10]: c6n1{r1 r5} - r5c7{n1 n6} - b4n6{r5c3 r6c1} - r3n6{c1 c5} - r1c5{n6 n4} - r6c5{n4 n5} - r9c5{n5 n8} - c8n8{r9 r4} - r4c6{n8 n4} - r6c4{n4 .} ==> r1c6 ≠ 3
whip[10]: r6c5{n4 n5} - r9c5{n5 n8} - c8n8{r9 r4} - c9n8{r4 r8} - c9n4{r8 r2} - c3n4{r2 r4} - r4c6{n4 n3} - r5n3{c4 c1} - r8n3{c1 c4} - r1n3{c4 .} ==> r1c5 ≠ 4
whip[11]: r6c5{n5 n4} - r9c5{n4 n8} - r7c6{n8 n3} - b7n3{r7c2 r8c1} - r8n8{c1 c9} - b6n8{r4c9 r4c8} - r4c6{n8 n5} - r4c7{n5 n9} - r5c9{n9 n6} - b3n6{r1c9 r3c7} - r3c5{n6 .} ==> r7c5 ≠ 5
whip[12]: r3n1{c2 c4} - c6n1{r1 r5} - r5c7{n1 n6} - r3c7{n6 n4} - b9n4{r8c7 r8c9} - b9n8{r8c9 r9c8} - c2n8{r9 r7} - b7n3{r7c2 r8c1} - r5n3{c1 c4} - b5n7{r5c4 r4c5} - r7c5{n7 n3} - r1n3{c5 .} ==> r3c2 ≠ 9
whip[10]: r7n8{c6 c2} - r8n8{c1 c9} - r9c8{n8 n9} - r3c8{n9 n2} - b6n2{r4c8 r4c9} - r6c8{n2 n3} - c2n3{r6 r4} - c2n9{r4 r1} - c9n9{r1 r5} - c1n9{r5 .} ==> r9c5 ≠ 8
naked-pairs-in-a-column: c5{r6 r9}{n4 n5} ==> r3c5 ≠ 4
whip[14]: r3n1{c4 c2} - r3n4{c2 c7} - b9n4{r8c7 r8c9} - b9n8{r8c9 r9c8} - c2n8{r9 r7} - b7n3{r7c2 r8c1} - r8n8{c1 c6} - b5n8{r4c6 r4c5} - r4n7{c5 c3} - r5c1{n7 n9} - r3n9{c1 c8} - r3n2{c8 c1} - r6c1{n2 n6} - r5c3{n6 .} ==> r3c4 ≠ 8
whip[15]: r9n1{c3 c2} - b1n1{r1c2 r1c3} - c6n1{r1 r5} - r5c7{n1 n6} - b4n6{r5c3 r6c1} - r3n6{c1 c5} - r1n6{c5 c9} - b1n6{r1c1 r2c3} - c3n4{r2 r4} - r4n7{c3 c5} - c5n8{r4 r7} - b7n8{r7c2 r8c1} - b7n3{r8c1 r7c2} - r7c6{n3 n5} - c3n5{r7 .} ==> r9c3 ≠ 2
whip[15]: c5n6{r1 r3} - b3n6{r3c7 r2c9} - c3n6{r2 r5} - r6c1{n6 n2} - r6c8{n2 n3} - r6c2{n3 n4} - r6c5{n4 n5} - r6c4{n5 n1} - b2n1{r1c4 r1c6} - b1n1{r1c2 r3c2} - r3n8{c2 c1} - r2c1{n8 n5} - c6n5{r2 r7} - c3n5{r7 r9} - r9n1{c3 .} ==> r1c1 ≠ 6
whip[16]: r8n3{c6 c1} - r5n3{c1 c4} - b5n7{r5c4 r4c5} - c5n3{r4 r1} - c5n6{r1 r3} - c5n8{r3 r7} - b7n8{r7c2 r9c2} - b9n8{r9c8 r8c9} - r5n8{c9 c6} - r5n1{c6 c7} - c7n6{r5 r6} - c7n5{r6 r4} - r4c6{n5 n4} - r8c6{n4 n2} - b7n2{r8c3 r9c1} - r6c1{n2 .} ==> r7c6 ≠ 3
finned-x-wing-in-columns: n3{c1 c6}{r8 r5} ==> r5c4 ≠ 3
whip[9]: r9n4{c5 c7} - r3n4{c7 c2} - r3n1{c2 c4} - b5n1{r5c4 r5c6} - r5n3{c6 c1} - r8n3{c1 c6} - b5n3{r4c6 r4c5} - r4n7{c5 c3} - c3n4{r4 .} ==> r8c4 ≠ 4
whip[13]: r7n7{c5 c3} - c1n7{r9 r5} - r5n3{c1 c6} - c6n1{r5 r1} - c3n1{r1 r9} - b7n5{r9c3 r9c1} - r9n2{c1 c2} - r8c3{n2 n9} - r5c3{n9 n6} - r6c1{n6 n2} - r4c3{n2 n4} - r6c2{n4 n3} - r6c8{n3 .} ==> r9c4 ≠ 7
whip[12]: c6n1{r1 r5} - r5c7{n1 n6} - c3n6{r5 r2} - c3n4{r2 r4} - r4n7{c3 c5} - b5n3{r4c5 r4c6} - r5n3{c6 c1} - r8n3{c1 c4} - c4n7{r8 r7} - c4n9{r7 r9} - b8n2{r9c4 r8c6} - c3n2{r8 .} ==> r1c3 ≠ 1
hidden-single-in-a-column ==> r9c3 = 1
whip[6]: r9c8{n9 n8} - r9c2{n8 n2} - r8c3{n2 n7} - b4n7{r4c3 r5c1} - c4n7{r5 r7} - r7n9{c4 .} ==> r9c1 ≠ 9
whip[6]: c1n9{r3 r5} - c1n3{r5 r8} - c1n7{r8 r9} - b7n5{r9c1 r7c3} - r7c6{n5 n8} - r7c2{n8 .} ==> r1c2 ≠ 9
whip[9]: c1n3{r5 r8} - c1n7{r8 r9} - b7n5{r9c1 r7c3} - r7c6{n5 n8} - r8n8{c4 c9} - r5c9{n8 n6} - b3n6{r1c9 r3c7} - r3n9{c7 c8} - r9c8{n9 .} ==> r5c1 ≠ 9
whip[1]: c1n9{r3 .} ==> r1c3 ≠ 9
whip[6]: r9n7{c7 c1} - r5c1{n7 n3} - r8c1{n3 n8} - b1n8{r2c1 r3c2} - r3n1{c2 c4} - r3n4{c4 .} ==> r9c7 ≠ 4
whip[1]: r9n4{c5 .} ==> r8c6 ≠ 4
whip[7]: r5c7{n6 n1} - r6c7{n1 n5} - r6c5{n5 n4} - r6c4{n4 n1} - r3n1{c4 c2} - r3n4{c2 c4} - b8n4{r9c4 .} ==> r3c7 ≠ 6
whip[1]: c7n6{r6 .} ==> r5c9 ≠ 6
hidden-pairs-in-a-block: b6{r5c7 r6c7}{n1 n6} ==> r6c7 ≠ 5
hidden-single-in-a-block ==> r4c7 = 5
whip[7]: r8n3{c6 c1} - r5c1{n3 n7} - c4n7{r5 r8} - r7c5{n7 n8} - r8c6{n8 n2} - r8c3{n2 n9} - r7c2{n9 .} ==> r7c4 ≠ 3
whip[4]: c4n3{r1 r8} - c1n3{r8 r5} - c6n3{r5 r4} - c6n4{r4 .} ==> r1c4 ≠ 4
biv-chain[5]: r6c1{n2 n6} - r3n6{c1 c5} - r1c5{n6 n3} - r7n3{c5 c2} - r6n3{c2 c8} ==> r6c8 ≠ 2
naked-single ==> r6c8 = 3
whip[1]: r6n2{c2 .} ==> r4c2 ≠ 2, r4c3 ≠ 2
whip[5]: r6c2{n2 n4} - r6c5{n4 n5} - r6c4{n5 n1} - b2n1{r1c4 r1c6} - r1c2{n1 .} ==> r9c2 ≠ 2
naked-pairs-in-a-row: r9{c2 c8}{n8 n9} ==> r9c7 ≠ 9, r9c4 ≠ 9
naked-single ==> r9c7 = 7
hidden-pairs-in-a-column: c1{n3 n7}{r5 r8} ==> r8c1 ≠ 8
whip[1]: b7n8{r9c2 .} ==> r3c2 ≠ 8
hidden-pairs-in-a-row: r3{n6 n8}{c1 c5} ==> r3c1 ≠ 9, r3c1 ≠ 2
hidden-single-in-a-block ==> r1c1 = 9
naked-triplets-in-a-column: c2{r1 r3 r6}{n2 n1 n4} ==> r4c2 ≠ 4
biv-chain[4]: c5n7{r4 r7} - r7n3{c5 c2} - c2n8{r7 r9} - c8n8{r9 r4} ==> r4c5 ≠ 8
biv-chain[4]: c1n5{r9 r2} - b1n8{r2c1 r3c1} - c5n8{r3 r7} - r7c6{n8 n5} ==> r7c3 ≠ 5, r9c4 ≠ 5, r9c5 ≠ 5
naked-single ==> r9c5 = 4
naked-single ==> r6c5 = 5
naked-single ==> r9c4 = 2
naked-single ==> r9c1 = 5
hidden-single-in-a-row ==> r3c8 = 2
hidden-single-in-a-column ==> r4c9 = 2
hidden-single-in-a-block ==> r3c7 = 9
naked-single ==> r8c7 = 4
hidden-single-in-a-row ==> r8c3 = 2
naked-pairs-in-a-column: c4{r3 r6}{n1 n4} ==> r5c4 ≠ 1, r2c4 ≠ 4, r1c4 ≠ 1
hidden-pairs-in-a-row: r1{n1 n2}{c2 c6} ==> r1c6 ≠ 5, r1c6 ≠ 4, r1c2 ≠ 4
biv-chain[2]: b9n8{r8c9 r9c8} - r4n8{c8 c6} ==> r8c6 ≠ 8
naked-single ==> r8c6 = 3
naked-single ==> r8c1 = 7
naked-single ==> r5c1 = 3
naked-single ==> r4c2 = 9
naked-single ==> r4c8 = 8
naked-single ==> r4c6 = 4
naked-single ==> r4c3 = 7
naked-single ==> r4c5 = 3
naked-single ==> r1c5 = 6
naked-single ==> r1c9 = 4
naked-single ==> r1c3 = 5
naked-single ==> r1c4 = 3
naked-single ==> r2c9 = 6
naked-single ==> r2c3 = 4
naked-single ==> r3c2 = 1
naked-single ==> r1c2 = 2
naked-single ==> r1c6 = 1
naked-single ==> r5c6 = 8
naked-single ==> r5c4 = 7
naked-single ==> r7c6 = 5
naked-single ==> r2c6 = 2
naked-single ==> r2c1 = 8
naked-single ==> r2c4 = 5
naked-single ==> r3c1 = 6
naked-single ==> r6c1 = 2
naked-single ==> r6c2 = 4
naked-single ==> r3c4 = 4
naked-single ==> r3c5 = 8
naked-single ==> r7c5 = 7
naked-single ==> r5c3 = 6
naked-single ==> r5c7 = 1
naked-single ==> r6c7 = 6
naked-single ==> r6c4 = 1
naked-single ==> r5c9 = 9
naked-single ==> r8c9 = 8
naked-single ==> r8c4 = 9
naked-single ==> r7c4 = 8
naked-single ==> r7c2 = 3
naked-single ==> r9c8 = 9
naked-single ==> r9c2 = 8
naked-single ==> r7c3 = 9
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = W[22]
925361874
874592316
613487925
197634582
356728149
248159637
439875261
762913458
581246793
Puzzle ......8...7..9..1...3..7..51..6......5..2..4...8..9..74.....2...6..1..5......6..3 :
init-time = 0.2s, solve-time = 1h 1m 12.07s, total-time = 1h 1m 12.26s
nb-facts=<Fact-414315>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
