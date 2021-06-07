
6.7..4.1.
..8..9.5.
9...286..
.4.7.23..
.6.2..8..
...38.1.4
51..4...9
..5.3....
..6.....7


(solve "6.7..4.1...8..9.5.9...286...4.7.23...6.2..8.....38.1.451..4...9..5.3......6.....7")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
6.7..4.1...8..9.5.9...286...4.7.23...6.2..8.....38.1.451..4...9..5.3......6.....7
30 givens, 181 candidates
entering BRT
Starting_init_links_with_<Fact-2757>

Starting non trivial part of solution with the following RESOLUTION STATE:
   6         23589     7         589       59        4         259       1         2358
   12347     237       8         146       167       9         247       5         1236
   9         357       134       145       2         8         6         347       135
   18        4         19        7         1569      2         3         689       1568
   1347      6         1349      2         1579      1357      8         3479      135
   27        2579      29        3         8         567       1         2679      4
   5         1         23        68        4         367       27        23678     9
   12478     2789      5         14689     3         167       2479      246789    1268
   12348     23589     6         14589     159       135       2459      23489     7

181 candidates, 756 csp-links and 756 links. Density = 4.64%

Entering_level_W1_with_<Fact-5784>
Entering_relation_bivalue_with_<Fact-5785>
Entering_level_S2_with_<Fact-5824>
Entering_level_BC2_with_<Fact-5827>
Entering_level_W2_with_<Fact-5853>
Entering_level_S3_with_<Fact-6047>
Entering_level_BC3_with_<Fact-6050>
Entering_level_W3_with_<Fact-6062>
Entering_level_S4_with_<Fact-6244>
Entering_level_BC4_with_<Fact-6247>
Entering_level_W4_with_<Fact-6253>
Entering_level_BC5_with_<Fact-6454>
Entering_level_W5_with_<Fact-6456>
Entering_level_BC6_with_<Fact-6662>
Entering_level_W6_with_<Fact-6664>
Entering_level_BC7_with_<Fact-6846>
Entering_level_W7_with_<Fact-6848>
Entering_level_BC8_with_<Fact-7065>
Entering_level_W8_with_<Fact-7067>
whip[8]: c7n5{r9 r1} - r1c5{n5 n9} - r1c4{n9 n8} - r7n8{c4 c8} - r7n2{c8 c3} - r6c3{n2 n9} - r5n9{c3 c8} - r4n9{c8 .} ==> r9c7 ≠ 2
whip[8]: r4n5{c9 c5} - r4n6{c5 c8} - r4n9{c8 c3} - r6c3{n9 n2} - r6c1{n2 n7} - r6c8{n7 n9} - r5n9{c8 c5} - r1c5{n9 .} ==> r4c9 ≠ 8
whip[5]: c7n5{r9 r1} - r1c5{n5 n9} - r1c4{n9 n8} - c2n8{r1 r8} - c9n8{r8 .} ==> r9c2 ≠ 5
whip[6]: r1n3{c2 c9} - c9n8{r1 r8} - c9n2{r8 r2} - c9n6{r2 r4} - r4n5{c9 c5} - r1c5{n5 .} ==> r1c2 ≠ 9
whip[7]: r1c5{n9 n5} - c7n5{r1 r9} - c4n5{r9 r3} - c2n5{r3 r6} - c2n9{r6 r8} - c4n9{r8 r1} - c7n9{r1 .} ==> r9c5 ≠ 9
whip[7]: r1n3{c2 c9} - c9n8{r1 r8} - c2n8{r8 r1} - r1n2{c2 c7} - c7n5{r1 r9} - r9c6{n5 n1} - r9c5{n1 .} ==> r9c2 ≠ 3
whip[7]: c7n5{r9 r1} - r1c5{n5 n9} - c7n9{r1 r8} - c4n9{r8 r9} - c4n5{r9 r3} - c2n5{r3 r6} - c2n9{r6 .} ==> r9c7 ≠ 4
whip[8]: r9c5{n1 n5} - c7n5{r9 r1} - r1c5{n5 n9} - c4n9{r1 r8} - c7n9{r8 r9} - c2n9{r9 r6} - c2n5{r6 r3} - c4n5{r3 .} ==> r9c4 ≠ 1
whip[8]: r9c5{n1 n5} - c7n5{r9 r1} - r1c5{n5 n9} - r1c4{n9 n8} - c4n5{r1 r3} - c4n1{r3 r8} - c4n9{r8 r9} - r9c7{n9 .} ==> r2c5 ≠ 1
whip[7]: c5n6{r2 r4} - c9n6{r4 r8} - c9n8{r8 r1} - c9n2{r1 r2} - r2n1{c9 c1} - r2n3{c1 c2} - r1n3{c2 .} ==> r2c4 ≠ 6
whip[8]: r1n3{c9 c2} - r1n8{c2 c4} - c9n8{r1 r8} - c9n2{r8 r2} - r2c2{n2 n7} - r3c2{n7 n5} - c4n5{r3 r9} - c7n5{r9 .} ==> r1c9 ≠ 5
whip[8]: r4n5{c9 c5} - r4n6{c5 c8} - r4n9{c8 c3} - r6c3{n9 n2} - r6c1{n2 n7} - r6c8{n7 n9} - r5n9{c8 c5} - r1c5{n9 .} ==> r4c9 ≠ 1
Entering_level_BC9_with_<Fact-8630>
Entering_level_W9_with_<Fact-8632>
whip[9]: r4n5{c5 c9} - r5n5{c9 c6} - r6n5{c6 c2} - r3n5{c2 c4} - r1n5{c4 c7} - r9c7{n5 n9} - c2n9{r9 r8} - c4n9{r8 r1} - r1c5{n9 .} ==> r9c5 ≠ 5
naked-single ==> r9c5 = 1
whip[9]: c9n8{r8 r1} - r1n3{c9 c2} - r1n2{c2 c7} - c9n2{r1 r2} - r2c2{n2 n7} - r3c2{n7 n5} - r6n5{c2 c6} - c6n6{r6 r7} - c4n6{r7 .} ==> r8c9 ≠ 6
x-wing-in-columns: n6{c5 c9}{r2 r4} ==> r4c8 ≠ 6
hidden-pairs-in-a-row: r4{n5 n6}{c5 c9} ==> r4c5 ≠ 9
whip[5]: r6c1{n7 n2} - r6c3{n2 n9} - r4n9{c3 c8} - r5n9{c8 c5} - c5n7{r5 .} ==> r2c1 ≠ 7
whip[7]: r7c3{n3 n2} - r6c3{n2 n9} - r4n9{c3 c8} - r5n9{c8 c5} - r1c5{n9 n5} - c7n5{r1 r9} - r9c6{n5 .} ==> r7c6 ≠ 3
biv-chain[4]: c3n2{r6 r7} - r7c7{n2 n7} - r7c6{n7 n6} - r6n6{c6 c8} ==> r6c8 ≠ 2
biv-chain[5]: r6c1{n7 n2} - c3n2{r6 r7} - r7c7{n2 n7} - r7c6{n7 n6} - r6n6{c6 c8} ==> r6c8 ≠ 7
biv-chain[4]: r6c8{n6 n9} - r4c8{n9 n8} - r7n8{c8 c4} - c4n6{r7 r8} ==> r8c8 ≠ 6
whip[6]: r1n3{c2 c9} - r1n8{c9 c4} - r7n8{c4 c8} - r7n3{c8 c3} - r7n2{c3 c7} - r1n2{c7 .} ==> r1c2 ≠ 5
whip[6]: r8n6{c4 c6} - r7c6{n6 n7} - r6c6{n7 n5} - c2n5{r6 r3} - r3c4{n5 n1} - r2c4{n1 .} ==> r8c4 ≠ 4
whip[6]: r8n6{c4 c6} - r7c6{n6 n7} - r6c6{n7 n5} - c2n5{r6 r3} - r3c4{n5 n4} - r2c4{n4 .} ==> r8c4 ≠ 1
whip[6]: r7c4{n8 n6} - r8c4{n6 n9} - r1c4{n9 n5} - c7n5{r1 r9} - c7n9{r9 r1} - r1c5{n9 .} ==> r9c4 ≠ 8
whip[6]: c9n8{r8 r1} - r1n3{c9 c2} - r1n2{c2 c7} - r7c7{n2 n7} - r7c6{n7 n6} - r8n6{c6 .} ==> r8c4 ≠ 8
whip[7]: c7n5{r9 r1} - r1c5{n5 n9} - r1c4{n9 n8} - r7c4{n8 n6} - r7c6{n6 n7} - r6c6{n7 n6} - r8n6{c6 .} ==> r9c6 ≠ 5
naked-single ==> r9c6 = 3
whip[7]: r4n9{c8 c3} - r6n9{c3 c2} - c2n5{r6 r3} - r3n7{c2 c8} - c8n3{r3 r7} - r7c3{n3 n2} - r6c3{n2 .} ==> r5c8 ≠ 9
whip[5]: c3n4{r3 r5} - r5n9{c3 c5} - r1c5{n9 n5} - c4n5{r1 r9} - c7n5{r9 .} ==> r3c4 ≠ 4
whip[6]: r1c5{n5 n9} - r1c7{n9 n2} - r7c7{n2 n7} - r2c7{n7 n4} - r2c4{n4 n1} - r3c4{n1 .} ==> r1c4 ≠ 5
naked-triplets-in-a-column: c4{r1 r7 r8}{n9 n8 n6} ==> r9c4 ≠ 9
whip[4]: c4n9{r8 r1} - c7n9{r1 r9} - c7n5{r9 r1} - r1c5{n5 .} ==> r8c2 ≠ 9
biv-chain[4]: c4n5{r3 r9} - r9c7{n5 n9} - c2n9{r9 r6} - c2n5{r6 r3} ==> r3c9 ≠ 5
biv-chain[4]: c2n9{r9 r6} - c2n5{r6 r3} - c4n5{r3 r9} - r9c7{n5 n9} ==> r9c8 ≠ 9
biv-chain[4]: c2n9{r6 r9} - r9c7{n9 n5} - c4n5{r9 r3} - c2n5{r3 r6} ==> r6c2 ≠ 2, r6c2 ≠ 7
whip[4]: r1c4{n9 n8} - c9n8{r1 r8} - c2n8{r8 r9} - r9n9{c2 .} ==> r1c7 ≠ 9
biv-chain[4]: c4n4{r2 r9} - r9n5{c4 c7} - c7n9{r9 r8} - c7n4{r8 r2} ==> r2c1 ≠ 4
biv-chain[4]: r1c7{n2 n5} - r9n5{c7 c4} - c4n4{r9 r2} - c7n4{r2 r8} ==> r8c7 ≠ 2
biv-chain[4]: c7n9{r8 r9} - r9n5{c7 c4} - c4n4{r9 r2} - c7n4{r2 r8} ==> r8c7 ≠ 7
biv-chain[4]: c7n9{r8 r9} - c7n5{r9 r1} - r1c5{n5 n9} - c4n9{r1 r8} ==> r8c8 ≠ 9
whip[4]: r4n8{c1 c8} - c8n9{r4 r6} - c2n9{r6 r9} - r9n8{c2 .} ==> r8c1 ≠ 8
whip[4]: c4n1{r2 r3} - r3c9{n1 n3} - r1n3{c9 c2} - r2n3{c2 .} ==> r2c1 ≠ 1
whip[4]: r1n3{c2 c9} - c9n8{r1 r8} - c9n2{r8 r2} - r2c1{n2 .} ==> r2c2 ≠ 3
biv-chain[4]: c2n3{r1 r3} - r3n5{c2 c4} - r9n5{c4 c7} - r1c7{n5 n2} ==> r1c2 ≠ 2
biv-chain[4]: r1n2{c9 c7} - r1n5{c7 c5} - r4n5{c5 c9} - c9n6{r4 r2} ==> r2c9 ≠ 2
hidden-pairs-in-a-column: c9{n2 n8}{r1 r8} ==> r8c9 ≠ 1, r1c9 ≠ 3
hidden-single-in-a-row ==> r1c2 = 3
biv-chain[4]: r7c7{n7 n2} - r1n2{c7 c9} - r1n8{c9 c4} - r7n8{c4 c8} ==> r7c8 ≠ 7
biv-chain[5]: c9n8{r8 r1} - r1n2{c9 c7} - c7n5{r1 r9} - r9n9{c7 c2} - c2n8{r9 r8} ==> r8c8 ≠ 8
biv-chain[5]: c7n7{r2 r7} - r7c6{n7 n6} - r7c4{n6 n8} - r1n8{c4 c9} - r1n2{c9 c7} ==> r2c7 ≠ 2
biv-chain[4]: r9n9{c2 c7} - r8c7{n9 n4} - r2c7{n4 n7} - r2c2{n7 n2} ==> r9c2 ≠ 2
biv-chain[4]: c2n2{r2 r8} - c9n2{r8 r1} - c7n2{r1 r7} - c7n7{r7 r2} ==> r2c2 ≠ 7
naked-single ==> r2c2 = 2
naked-single ==> r2c1 = 3
biv-chain[4]: c2n7{r8 r3} - c2n5{r3 r6} - c6n5{r6 r5} - c6n1{r5 r8} ==> r8c6 ≠ 7
biv-chain[4]: c5n7{r5 r2} - c7n7{r2 r7} - c7n2{r7 r1} - r1n5{c7 c5} ==> r5c5 ≠ 5
biv-chain[4]: r5n5{c6 c9} - r4c9{n5 n6} - c5n6{r4 r2} - c5n7{r2 r5} ==> r5c6 ≠ 7
biv-chain[4]: r9n2{c8 c1} - r6c1{n2 n7} - c6n7{r6 r7} - r7c7{n7 n2} ==> r7c8 ≠ 2
biv-chain[3]: c8n2{r9 r8} - r8c9{n2 n8} - c2n8{r8 r9} ==> r9c8 ≠ 8
hidden-triplets-in-a-column: c8{n6 n8 n9}{r6 r7 r4} ==> r7c8 ≠ 3
hidden-single-in-a-row ==> r7c3 = 3
hidden-single-in-a-column ==> r6c3 = 2
naked-single ==> r6c1 = 7
hidden-single-in-a-column ==> r7c6 = 7
naked-single ==> r7c7 = 2
naked-single ==> r1c7 = 5
naked-single ==> r1c5 = 9
naked-single ==> r1c4 = 8
naked-single ==> r1c9 = 2
naked-single ==> r8c9 = 8
naked-single ==> r8c2 = 7
naked-single ==> r3c2 = 5
naked-single ==> r3c4 = 1
naked-single ==> r2c4 = 4
naked-single ==> r2c7 = 7
naked-single ==> r2c5 = 6
naked-single ==> r2c9 = 1
naked-single ==> r4c5 = 5
naked-single ==> r4c9 = 6
naked-single ==> r9c4 = 5
naked-single ==> r3c3 = 4
naked-single ==> r3c9 = 3
naked-single ==> r3c8 = 7
naked-single ==> r5c9 = 5
naked-single ==> r5c6 = 1
naked-single ==> r5c1 = 4
naked-single ==> r5c8 = 3
naked-single ==> r5c3 = 9
naked-single ==> r4c3 = 1
naked-single ==> r4c1 = 8
naked-single ==> r4c8 = 9
naked-single ==> r6c8 = 6
naked-single ==> r6c6 = 5
naked-single ==> r7c8 = 8
naked-single ==> r9c1 = 2
naked-single ==> r8c1 = 1
naked-single ==> r9c8 = 4
naked-single ==> r8c8 = 2
naked-single ==> r8c6 = 6
naked-single ==> r8c4 = 9
naked-single ==> r8c7 = 4
naked-single ==> r6c2 = 9
naked-single ==> r9c2 = 8
naked-single ==> r7c4 = 6
naked-single ==> r5c5 = 7
naked-single ==> r9c7 = 9
GRID 0 SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[9]
637894512
328469751
954128673
841752396
469271835
792385164
513647289
175936428
286513947
Puzzle 6.7..4.1...8..9.5.9...286...4.7.23...6.2..8.....38.1.451..4...9..5.3......6.....7 :
init-time = 0.17s, solve-time = 4.17s, total-time = 4.34s
nb-facts=<Fact-24775>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

