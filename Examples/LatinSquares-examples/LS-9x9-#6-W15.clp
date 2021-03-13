

3....5...
.9.1..7..
82.....76
...9..5.4
5...6.4..
.7...231.
..6.83...
..5.4..91
4......29

(solve "3....5....9.1..7..82.....76...9..5.45...6.4...7...231...6.83.....5.4..914......29")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
3....5....9.1..7..82.....76...9..5.45...6.4...7...231...6.83.....5.4..914......29
29 givens, 188 candidates
entering BRT
Starting_init_links_with_<Fact-2763>

Starting non trivial part of solution with the following RESOLUTION STATE:
   3         1468      124789    24678     1279      5         12689     468       278       
   26        9         2348      1         235       468       7         34568     2358      
   8         2         1349      345       1359      149       19        7         6         
   1267      1368      12378     9         1237      1678      5         368       4         
   5         138       123789    2378      6         1789      4         38        2378      
   69        7         489       4568      59        2         3         1         58        
   1279      145       6         2457      8         3         129       45        257       
   267       368       5         23678     4         678       268       9         1         
   4         13568     1378      35678     1357      1678      168       2         9         

188 candidates, 812 csp-links and 812 links. Density = 4.62%

Entering_level_W1_with_<Fact-6014>
Entering_relation_bivalue_with_<Fact-6015>
Entering_level_S2_with_<Fact-6058>
Entering_level_BC2_with_<Fact-6061>
Entering_level_W2_with_<Fact-6101>
Entering_level_S3_with_<Fact-6313>
Entering_level_BC3_with_<Fact-6316>
Entering_level_W3_with_<Fact-6344>
Entering_level_S4_with_<Fact-6604>
Entering_level_BC4_with_<Fact-6607>
Entering_level_W4_with_<Fact-6621>
Entering_level_BC5_with_<Fact-6865>
Entering_level_W5_with_<Fact-6867>
Entering_level_BC6_with_<Fact-7113>
Entering_level_W6_with_<Fact-7115>
Entering_level_BC7_with_<Fact-7352>
Entering_level_W7_with_<Fact-7354>
Entering_level_BC8_with_<Fact-7593>
Entering_level_W8_with_<Fact-7595>
Entering_level_BC9_with_<Fact-7852>
Entering_level_W9_with_<Fact-7854>
whip[9]: r2c1{n2 n6} - r6n6{c1 c4} - r6n4{c4 c3} - r6n8{c3 c9} - r6n5{c9 c5} - r3n5{c5 c4} - r3n4{c4 c6} - r2n4{c6 c8} - r2n5{c8 .} ==> r2c9 ≠ 2
Entering_level_BC10_with_<Fact-8139>
Entering_level_W10_with_<Fact-8141>
whip[10]: c2n5{r9 r7} - c8n5{r7 r2} - c9n5{r2 r6} - r6c5{n5 n9} - r6c1{n9 n6} - r2c1{n6 n2} - r2c5{n2 n3} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 .} ==> r9c2 ≠ 1
whip[10]: r3n5{c4 c5} - r6c5{n5 n9} - r6c1{n9 n6} - r2c1{n6 n2} - r2c5{n2 n3} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r7c2{n1 n4} - r7c8{n4 .} ==> r7c4 ≠ 5
Entering_level_BC11_with_<Fact-8511>
Entering_level_W11_with_<Fact-8513>
whip[11]: c2n5{r9 r7} - c8n5{r7 r2} - c9n5{r2 r6} - r6c5{n5 n9} - r6c1{n9 n6} - r2n6{c1 c6} - r2n4{c6 c3} - r2n8{c3 c9} - c9n3{r2 r5} - c8n3{r5 r4} - r4n6{c8 .} ==> r9c2 ≠ 6
whip[11]: c1n1{r4 r7} - c1n9{r7 r6} - r6c5{n9 n5} - r3n5{c5 c4} - r9n5{c4 c2} - r7c2{n5 n4} - r7c8{n4 n5} - c9n5{r7 r2} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 .} ==> r4c2 ≠ 1
Entering_level_BC12_with_<Fact-8958>
Entering_level_W12_with_<Fact-8960>
Entering_level_BC13_with_<Fact-9556>
Entering_level_W13_with_<Fact-9558>
Entering_level_BC14_with_<Fact-10397>
Entering_level_W14_with_<Fact-10399>
whip[14]: c1n9{r7 r6} - r6n6{c1 c4} - r6n4{c4 c3} - r6n8{c3 c9} - r6n5{c9 c5} - r3n5{c5 c4} - r3n4{c4 c6} - r2n4{c6 c8} - r2n5{c8 c9} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r7n1{c2 c7} - r7n9{c7 .} ==> r7c1 ≠ 7
whip[13]: c1n7{r8 r4} - c1n1{r4 r7} - c1n9{r7 r6} - r6c5{n9 n5} - r3n5{c5 c4} - r9n5{c4 c2} - r7c2{n5 n4} - r7c4{n4 n2} - r7n7{c4 c9} - c9n5{r7 r2} - c9n3{r2 r5} - r5c4{n3 n8} - r5c8{n8 .} ==> r8c4 ≠ 7
whip[14]: c1n9{r7 r6} - r6n6{c1 c4} - r6n4{c4 c3} - r6n8{c3 c9} - r6n5{c9 c5} - r3n5{c5 c4} - r3n4{c4 c6} - r2n4{c6 c8} - r2n5{c8 c9} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r7n1{c2 c7} - r7n9{c7 .} ==> r7c1 ≠ 2
whip[13]: r7n7{c9 c4} - r7n2{c4 c7} - r7n9{c7 c1} - r6c1{n9 n6} - r2c1{n6 n2} - r8c1{n2 n7} - r4c1{n7 n1} - r7n1{c1 c2} - r7n4{c2 c8} - c8n5{r7 r2} - r2c5{n5 n3} - r2c9{n3 n8} - r6c9{n8 .} ==> r7c9 ≠ 5
whip[8]: r5c8{n8 n3} - c9n3{r5 r2} - c9n5{r2 r6} - r6n8{c9 c4} - r6n4{c4 c3} - r2c3{n4 n2} - r2c1{n2 n6} - r6n6{c1 .} ==> r5c3 ≠ 8
whip[10]: r3c7{n1 n9} - r7n9{c7 c1} - r7n1{c1 c2} - r7n5{c2 c8} - r7n4{c8 c4} - r6n4{c4 c3} - r3n4{c3 c6} - c6n9{r3 r5} - c6n1{r5 r4} - c1n1{r4 .} ==> r9c7 ≠ 1
whip[14]: c9n5{r2 r6} - r6c5{n5 n9} - r6c1{n9 n6} - r2n6{c1 c6} - r2n4{c6 c3} - r6c3{n4 n8} - r2n8{c3 c9} - c9n3{r2 r5} - c8n3{r5 r4} - r4n6{c8 c2} - r4n8{c2 c6} - r8c6{n8 n7} - r8c1{n7 n2} - r2c1{n2 .} ==> r2c8 ≠ 5
hidden-single-in-a-column ==> r7c8 = 5
hidden-single-in-a-column ==> r9c2 = 5
whip[13]: r5c8{n8 n3} - c9n3{r5 r2} - c9n5{r2 r6} - r6c5{n5 n9} - r6c1{n9 n6} - r2c1{n6 n2} - r8c1{n2 n7} - r8c6{n7 n6} - r2c6{n6 n4} - r2c3{n4 n8} - r6c3{n8 n4} - r3n4{c3 c4} - c4n5{r3 .} ==> r5c6 ≠ 8
whip[13]: r6n6{c1 c4} - r6n4{c4 c3} - r6n8{c3 c9} - c9n5{r6 r2} - c9n3{r2 r5} - r5c8{n3 n8} - r4c8{n8 n3} - c2n3{r4 r8} - c2n6{r8 r1} - c8n6{r1 r2} - r2n4{c8 c6} - r3n4{c6 c4} - c4n5{r3 .} ==> r4c1 ≠ 6
Entering_level_BC15_with_<Fact-19458>
Entering_level_W15_with_<Fact-19460>
whip[15]: r7c9{n2 n7} - r7c4{n7 n4} - r7c2{n4 n1} - c1n1{r7 r4} - c1n7{r4 r8} - r8n2{c1 c4} - r8n3{c4 c2} - r5c2{n3 n8} - r5c8{n8 n3} - r5c4{n3 n7} - r5c9{n7 n2} - r1c9{n2 n8} - r1c4{n8 n6} - r1c8{n6 n4} - c2n4{r1 .} ==> r7c7 ≠ 2
naked-pairs-in-a-column: c7{r3 r7}{n1 n9} ==> r1c7 ≠ 9, r1c7 ≠ 1
naked-pairs-in-a-row: r7{c1 c7}{n1 n9} ==> r7c2 ≠ 1
naked-single ==> r7c2 = 4
whip[6]: c7n9{r3 r7} - c1n9{r7 r6} - r6n6{c1 c4} - c4n5{r6 r3} - r3n4{c4 c3} - r6n4{c3 .} ==> r3c6 ≠ 9
hidden-single-in-a-column ==> r5c6 = 9
whip[6]: r7n7{c4 c9} - r5n7{c9 c3} - r1n7{c3 c5} - r1n9{c5 c3} - r1n1{c3 c2} - r5n1{c2 .} ==> r9c4 ≠ 7
whip[7]: r1n9{c3 c5} - r6c5{n9 n5} - r2n5{c5 c9} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r1n1{c2 .} ==> r1c3 ≠ 8
whip[7]: r1n9{c3 c5} - r6c5{n9 n5} - r2n5{c5 c9} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r1n1{c2 .} ==> r1c3 ≠ 7
whip[7]: r1n9{c3 c5} - r6c5{n9 n5} - r2n5{c5 c9} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r1n1{c2 .} ==> r1c3 ≠ 4
whip[7]: r1n9{c3 c5} - r6c5{n9 n5} - r2n5{c5 c9} - c9n3{r2 r5} - r5c8{n3 n8} - r5c2{n8 n1} - r1n1{c2 .} ==> r1c3 ≠ 2
whip[8]: r7c4{n2 n7} - r7c9{n7 n2} - r5n2{c9 c3} - r5n7{c3 c9} - r1c9{n7 n8} - r1c7{n8 n6} - r1c2{n6 n1} - r5n1{c2 .} ==> r1c4 ≠ 2
whip[8]: r7c4{n2 n7} - r7c9{n7 n2} - r5n2{c9 c3} - r5n7{c3 c9} - r1n7{c9 c5} - r1n9{c5 c3} - r1n1{c3 c2} - r5n1{c2 .} ==> r8c4 ≠ 2
whip[7]: c4n2{r5 r7} - r7c9{n2 n7} - r5n7{c9 c4} - r1n7{c4 c5} - r1n9{c5 c3} - r1n1{c3 c2} - r5n1{c2 .} ==> r5c3 ≠ 2
x-wing-in-rows: n2{r5 r7}{c4 c9} ==> r1c9 ≠ 2
biv-chain[5]: r6c1{n9 n6} - r2c1{n6 n2} - r8n2{c1 c7} - r1n2{c7 c5} - r1n9{c5 c3} ==> r6c3 ≠ 9
whip[5]: c1n7{r4 r8} - r8n2{c1 c7} - r1n2{c7 c5} - c5n7{r1 r9} - c6n7{r9 .} ==> r4c3 ≠ 7
biv-chain[7]: r1c9{n7 n8} - r6c9{n8 n5} - r6c5{n5 n9} - r6c1{n9 n6} - r2c1{n6 n2} - r8n2{c1 c7} - r1n2{c7 c5} ==> r1c5 ≠ 7
x-wing-in-rows: n7{r1 r7}{c4 c9} ==> r5c9 ≠ 7, r5c4 ≠ 7
hidden-single-in-a-row ==> r5c3 = 7
hidden-single-in-a-row ==> r5c2 = 1
hidden-pairs-in-a-row: r1{n1 n9}{c3 c5} ==> r1c5 ≠ 2
hidden-single-in-a-row ==> r1c7 = 2
hidden-single-in-a-row ==> r8c1 = 2
naked-single ==> r2c1 = 6
naked-single ==> r6c1 = 9
naked-single ==> r6c5 = 5
naked-single ==> r6c9 = 8
naked-single ==> r1c9 = 7
naked-single ==> r7c9 = 2
naked-single ==> r5c9 = 3
naked-single ==> r2c9 = 5
naked-single ==> r5c8 = 8
naked-single ==> r5c4 = 2
naked-single ==> r7c4 = 7
naked-single ==> r6c3 = 4
naked-single ==> r6c4 = 6
naked-single ==> r7c1 = 1
naked-single ==> r4c1 = 7
naked-single ==> r7c7 = 9
naked-single ==> r3c7 = 1
naked-single ==> r3c6 = 4
naked-single ==> r2c6 = 8
hidden-single-in-a-row ==> r2c8 = 4
naked-single ==> r1c8 = 6
naked-single ==> r1c2 = 8
naked-single ==> r1c4 = 4
naked-single ==> r4c8 = 3
naked-single ==> r4c2 = 6
naked-single ==> r4c6 = 1
naked-single ==> r4c5 = 2
naked-single ==> r2c5 = 3
naked-single ==> r2c3 = 2
naked-single ==> r3c5 = 9
naked-single ==> r1c5 = 1
naked-single ==> r1c3 = 9
naked-single ==> r9c5 = 7
naked-single ==> r9c6 = 6
naked-single ==> r8c6 = 7
naked-single ==> r9c7 = 8
naked-single ==> r8c7 = 6
naked-single ==> r9c4 = 3
naked-single ==> r3c4 = 5
naked-single ==> r8c4 = 8
naked-single ==> r9c3 = 1
naked-single ==> r3c3 = 3
naked-single ==> r4c3 = 8
naked-single ==> r8c2 = 3
GRID 0 SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[15]
389415267
692138745
823594176
768921534
517269483
974652318
146783952
235847691
451376829
Puzzle 3....5....9.1..7..82.....76...9..5.45...6.4...7...231...6.83.....5.4..914......29 :
init-time = 0.15s, solve-time = 7.98s, total-time = 8.14s
nb-facts=<Fact-28959>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
