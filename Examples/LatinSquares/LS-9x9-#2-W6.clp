
..345.789
.5.......
8..2375.4
....648.5
...52..76
...7.349.
..267.948
..6......
..83426.7

(solve "..345.789.5.......8..2375.4....648.5...52..76...7.349...267.948..6........83426.7")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
..345.789.5.......8..2375.4....648.5...52..76...7.349...267.948..6........83426.7
38 givens, 143 candidates
entering BRT
hidden-single-in-a-column ==> r6c3 = 5
Starting_init_links_with_<Fact-2728>

Starting non trivial part of solution with the following RESOLUTION STATE:
   126       126       3         4         5         16        7         8         9         
   1234679   5         1479      189       189       1689      123       1236      123       
   8         169       19        2         3         7         5         16        4         
   12379     12379     179       19        6         4         8         123       5         
   1349      13489     149       5         2         189       13        7         6         
   126       1268      5         7         18        3         4         9         12        
   135       13        2         6         7         15        9         4         8         
   1234579   1234789   6         189       189       1589      123       1235      123       
   159       19        8         3         4         2         6         15        7         

141 candidates, 614 csp-links and 614 links. Density = 6.22%

Entering_level_W1_with_<Fact-5187>
Entering_relation_bivalue_with_<Fact-5188>
Entering_level_S2_with_<Fact-5263>
hidden-pairs-in-a-row: r8{n4 n7}{c1 c2} ==> r8c2 ≠ 9, r8c2 ≠ 8, r8c2 ≠ 3, r8c2 ≠ 2, r8c2 ≠ 1, r8c1 ≠ 9, r8c1 ≠ 5, r8c1 ≠ 3, r8c1 ≠ 2, r8c1 ≠ 1
hidden-pairs-in-a-row: r2{n4 n7}{c1 c3} ==> r2c3 ≠ 9, r2c3 ≠ 1, r2c1 ≠ 9, r2c1 ≠ 6, r2c1 ≠ 3, r2c1 ≠ 2, r2c1 ≠ 1
naked-pairs-in-a-column: c1{r2 r8}{n4 n7} ==> r5c1 ≠ 4, r4c1 ≠ 7
Entering_level_BC2_with_<Fact-5304>
Entering_level_W2_with_<Fact-5486>
Entering_level_S3_with_<Fact-5810>
Entering_level_BC3_with_<Fact-5877>
Entering_level_W3_with_<Fact-6229>
Entering_level_S4_with_<Fact-6760>
Entering_level_BC4_with_<Fact-6797>
Entering_level_W4_with_<Fact-7423>
Entering_level_BC5_with_<Fact-8307>
biv-chain[5]: r1c6{n1 n6} - r2n6{c6 c8} - r3c8{n6 n1} - r9c8{n1 n5} - r8n5{c8 c6} ==> r8c6 ≠ 1
biv-chain[5]: r3c8{n1 n6} - r2n6{c8 c6} - r1c6{n6 n1} - r7c6{n1 n5} - r8n5{c6 c8} ==> r8c8 ≠ 1
biv-chain[5]: r7c6{n1 n5} - r8n5{c6 c8} - r9c8{n5 n1} - r3c8{n1 n6} - r2n6{c8 c6} ==> r2c6 ≠ 1
biv-chain[5]: r9c8{n1 n5} - r8n5{c8 c6} - r7c6{n5 n1} - r1c6{n1 n6} - r2n6{c6 c8} ==> r2c8 ≠ 1
Entering_level_W5_with_<Fact-8982>
Entering_level_BC6_with_<Fact-10436>
biv-chain[6]: r3n6{c2 c8} - r2n6{c8 c6} - r1c6{n6 n1} - r7c6{n1 n5} - c1n5{r7 r9} - r9n9{c1 c2} ==> r3c2 ≠ 9
hidden-single-in-a-row ==> r3c3 = 9
jellyfish-in-rows: n1{r1 r7 r3 r9}{c1 c6 c2 c8} ==> r6c2 ≠ 1, r6c1 ≠ 1, r5c6 ≠ 1, r5c2 ≠ 1, r5c1 ≠ 1, r4c8 ≠ 1, r4c2 ≠ 1, r4c1 ≠ 1
biv-chain[4]: c6n1{r7 r1} - c6n6{r1 r2} - c8n6{r2 r3} - r3c2{n6 n1} ==> r7c2 ≠ 1
naked-single ==> r7c2 = 3
biv-chain[4]: c1n3{r4 r5} - r5c7{n3 n1} - c3n1{r5 r4} - r4c4{n1 n9} ==> r4c1 ≠ 9
naked-pairs-in-a-row: r4{c1 c8}{n2 n3} ==> r4c2 ≠ 2
biv-chain[4]: c6n5{r8 r7} - c1n5{r7 r9} - c1n9{r9 r5} - r5c6{n9 n8} ==> r8c6 ≠ 8
biv-chain[4]: r3n6{c2 c8} - r2n6{c8 c6} - c6n8{r2 r5} - c2n8{r5 r6} ==> r6c2 ≠ 6
hidden-single-in-a-row ==> r6c1 = 6
biv-chain[4]: r4n2{c8 c1} - r1n2{c1 c2} - r1n6{c2 c6} - r2n6{c6 c8} ==> r2c8 ≠ 2
biv-chain[4]: r5n3{c7 c1} - r4c1{n3 n2} - c8n2{r4 r8} - c7n2{r8 r2} ==> r2c7 ≠ 3
biv-chain[4]: r1n6{c6 c2} - c2n2{r1 r6} - c2n8{r6 r5} - c6n8{r5 r2} ==> r2c6 ≠ 6
hidden-single-in-a-column ==> r1c6 = 6
hidden-single-in-a-column ==> r3c2 = 6
naked-single ==> r3c8 = 1
naked-single ==> r9c8 = 5
hidden-single-in-a-row ==> r8c6 = 5
naked-single ==> r7c6 = 1
naked-single ==> r7c1 = 5
hidden-single-in-a-column ==> r2c8 = 6
hidden-single-in-a-row ==> r2c9 = 3
hidden-single-in-a-row ==> r2c7 = 2
hidden-pairs-in-a-row: r8{n8 n9}{c4 c5} ==> r8c5 ≠ 1, r8c4 ≠ 1
biv-chain[3]: c4n8{r8 r2} - r2n1{c4 c5} - r6c5{n1 n8} ==> r8c5 ≠ 8
naked-single ==> r8c5 = 9
naked-single ==> r8c4 = 8
biv-chain[5]: r6c5{n1 n8} - c2n8{r6 r5} - r5n4{c2 c3} - c3n1{r5 r4} - c4n1{r4 r2} ==> r2c5 ≠ 1
naked-single ==> r2c5 = 8
naked-single ==> r2c6 = 9
naked-single ==> r2c4 = 1
naked-single ==> r4c4 = 9
naked-single ==> r4c2 = 7
naked-single ==> r4c3 = 1
naked-single ==> r5c3 = 4
naked-single ==> r2c3 = 7
naked-single ==> r2c1 = 4
naked-single ==> r8c1 = 7
naked-single ==> r8c2 = 4
naked-single ==> r5c6 = 8
naked-single ==> r5c2 = 9
naked-single ==> r5c1 = 3
naked-single ==> r4c1 = 2
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 2
naked-single ==> r6c2 = 8
naked-single ==> r9c1 = 9
naked-single ==> r4c8 = 3
naked-single ==> r8c8 = 2
naked-single ==> r8c9 = 1
naked-single ==> r6c9 = 2
naked-single ==> r8c7 = 3
naked-single ==> r5c7 = 1
naked-single ==> r9c2 = 1
naked-single ==> r6c5 = 1
GRID 0 SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = BC[6]
123456789
457189263
869237514
271964835
394528176
685713492
532671948
746895321
918342657
Puzzle ..345.789.5.......8..2375.4....648.5...52..76...7.349...267.948..6........83426.7 :
init-time = 0.16s, solve-time = 1.39s, total-time = 1.55s
nb-facts=<Fact-24754>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
