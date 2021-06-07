
12.4.678.
4..18..6.
68..2741.
24.83.97.
.3.9.48..
89..7234.
.........
.1.....9.
9.2...13.

(solve "12.4.678.4..18..6.68..2741.24.83.97..3.9.48..89..7234...........1.....9.9.2...13.")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
12.4.678.4..18..6.68..2741.24.83.97..3.9.48..89..7234...........1.....9.9.2...13.
38 givens, 153 candidates
entering BRT
Starting_init_links_with_<Fact-2737>

Starting non trivial part of solution with the following RESOLUTION STATE:
   1         2         359       4         59        6         7         8         359       
   4         57        3579      1         8         359       25        6         23579     
   6         8         359       35        2         7         4         1         359       
   2         4         156       8         3         15        9         7         156       
   57        3         1567      9         156       4         8         25        12567     
   8         9         156       56        7         2         3         4         156       
   357       567       13456789  23567     14569     13589     256       25        123456789 
   357       1         345678    23567     456       358       256       9         2345678   
   9         567       2         567       456       58        1         3         45678     

153 candidates, 740 csp-links and 740 links. Density = 6.36%

Entering_level_W1_with_<Fact-5700>
Entering_relation_bivalue_with_<Fact-5701>
Entering_level_S2_with_<Fact-5762>
hidden-pairs-in-a-column: c3{n4 n8}{r7 r8} ==> r8c3 ≠ 7, r8c3 ≠ 6, r8c3 ≠ 5, r8c3 ≠ 3, r7c3 ≠ 9, r7c3 ≠ 7, r7c3 ≠ 6, r7c3 ≠ 5, r7c3 ≠ 3, r7c3 ≠ 1
Entering_level_BC2_with_<Fact-5779>
Entering_level_W2_with_<Fact-5833>
Entering_level_S3_with_<Fact-6131>
Entering_level_BC3_with_<Fact-6206>
Entering_level_W3_with_<Fact-6228>
Entering_level_S4_with_<Fact-6585>
hidden-quads-in-a-row: r7{n1 n9 n4 n8}{c9 c6 c5 c3} ==> r7c9 ≠ 7, r7c9 ≠ 6, r7c9 ≠ 5, r7c9 ≠ 3, r7c9 ≠ 2, r7c6 ≠ 5, r7c6 ≠ 3, r7c5 ≠ 6, r7c5 ≠ 5
Entering_level_BC4_with_<Fact-6724>
biv-chain[4]: c8n5{r7 r5} - r5c1{n5 n7} - c3n7{r5 r2} - r2c2{n7 n5} ==> r7c2 ≠ 5
biv-chain[4]: r2c7{n2 n5} - r2c2{n5 n7} - r7c2{n7 n6} - c7n6{r7 r8} ==> r8c7 ≠ 2
Entering_level_W4_with_<Fact-6940>
whip[4]: c4n2{r8 r7} - r7c8{n2 n5} - c7n5{r7 r2} - c7n2{r2 .} ==> r8c4 ≠ 5
Entering_level_BC5_with_<Fact-7343>
Entering_level_W5_with_<Fact-7353>
whip[5]: c8n5{r7 r5} - c8n2{r5 r7} - c7n2{r7 r2} - c7n5{r2 r8} - c1n5{r8 .} ==> r7c4 ≠ 5
whip[5]: c8n5{r5 r7} - c1n5{r7 r8} - c7n5{r8 r2} - r2c2{n5 n7} - c3n7{r2 .} ==> r5c3 ≠ 5
Entering_level_BC6_with_<Fact-7813>
Entering_level_W6_with_<Fact-7819>
whip[6]: c4n2{r8 r7} - r7c8{n2 n5} - r7c7{n5 n6} - r8c7{n6 n5} - r8c1{n5 n3} - r7n3{c1 .} ==> r8c4 ≠ 7
whip[6]: r5c1{n5 n7} - r8n7{c1 c9} - c9n2{r8 r2} - r2c7{n2 n5} - r2c2{n5 n7} - c3n7{r2 .} ==> r5c9 ≠ 5
whip[6]: r8n7{c9 c1} - r5c1{n7 n5} - r5c8{n5 n2} - c9n2{r5 r2} - c7n2{r2 r7} - c7n6{r7 .} ==> r8c9 ≠ 6
whip[6]: c8n5{r5 r7} - c1n5{r7 r8} - c7n5{r8 r2} - r2c2{n5 n7} - c3n7{r2 r5} - r5c1{n7 .} ==> r5c5 ≠ 5
Entering_level_BC7_with_<Fact-8967>
Entering_level_W7_with_<Fact-8969>
whip[7]: c3n7{r2 r5} - r5c1{n7 n5} - c8n5{r5 r7} - c7n5{r7 r8} - c7n6{r8 r7} - c2n6{r7 r9} - c2n5{r9 .} ==> r2c3 ≠ 5
whip[7]: r2c2{n5 n7} - c3n7{r2 r5} - r5c1{n7 n5} - c8n5{r5 r7} - c7n5{r7 r8} - c7n6{r8 r7} - r7c2{n6 .} ==> r2c9 ≠ 5
whip[7]: r2c2{n5 n7} - c3n7{r2 r5} - r5c1{n7 n5} - c8n5{r5 r7} - c7n5{r7 r8} - c7n6{r8 r7} - r7c2{n6 .} ==> r2c6 ≠ 5
Entering_level_BC8_with_<Fact-10237>
Entering_level_W8_with_<Fact-10239>
whip[8]: c6n3{r8 r2} - c6n9{r2 r7} - c5n9{r7 r1} - c5n5{r1 r9} - c2n5{r9 r2} - c7n5{r2 r7} - c8n5{r7 r5} - c1n5{r5 .} ==> r8c6 ≠ 5
whip[6]: c1n3{r7 r8} - r8c6{n3 n8} - r9c6{n8 n5} - c2n5{r9 r2} - c2n7{r2 r9} - c4n7{r9 .} ==> r7c1 ≠ 7
whip[6]: r9n8{c9 c6} - c6n5{r9 r4} - c6n1{r4 r7} - c5n1{r7 r5} - r5n6{c5 c3} - r4n6{c3 .} ==> r9c9 ≠ 6
whip[8]: r8n7{c9 c1} - r5c1{n7 n5} - r5c8{n5 n2} - c9n2{r5 r2} - r2c7{n2 n5} - c2n5{r2 r9} - r9c6{n5 n8} - r8c6{n8 .} ==> r8c9 ≠ 3
Entering_level_BC9_with_<Fact-16448>
Entering_level_W9_with_<Fact-16450>
whip[9]: r8n7{c9 c1} - r5c1{n7 n5} - c8n5{r5 r7} - c7n5{r7 r2} - r2c2{n5 n7} - c3n7{r2 r5} - c9n7{r5 r9} - c9n8{r9 r7} - c9n4{r7 .} ==> r8c9 ≠ 5
whip[9]: c7n6{r8 r7} - c2n6{r7 r9} - c5n6{r9 r5} - c5n1{r5 r7} - c6n1{r7 r4} - c6n5{r4 r9} - r9c5{n5 n4} - r8c5{n4 n5} - r8c7{n5 .} ==> r8c4 ≠ 6
whip[9]: r2c2{n5 n7} - r7n7{c2 c4} - r9c4{n7 n6} - c2n6{r9 r7} - c7n6{r7 r8} - c5n6{r8 r5} - c5n1{r5 r7} - c6n1{r7 r4} - c6n5{r4 .} ==> r9c2 ≠ 5
hidden-single-in-a-column ==> r2c2 = 5
naked-single ==> r2c7 = 2
x-wing-in-columns: n7{c2 c4}{r7 r9} ==> r9c9 ≠ 7
swordfish-in-columns: n5{c1 c7 c8}{r5 r8 r7} ==> r8c5 ≠ 5
biv-chain[4]: c9n2{r8 r5} - r5c8{n2 n5} - r5c1{n5 n7} - r8n7{c1 c9} ==> r8c9 ≠ 4, r8c9 ≠ 8
hidden-pairs-in-a-column: c9{n4 n8}{r7 r9} ==> r9c9 ≠ 5, r7c9 ≠ 9, r7c9 ≠ 1
naked-pairs-in-a-row: r7{c3 c9}{n4 n8} ==> r7c6 ≠ 8, r7c5 ≠ 4
biv-chain[4]: c6n3{r2 r8} - r8c4{n3 n2} - r8c9{n2 n7} - r2n7{c9 c3} ==> r2c3 ≠ 3
biv-chain[4]: c5n9{r1 r7} - c6n9{r7 r2} - r2n3{c6 c9} - r1n3{c9 c3} ==> r1c3 ≠ 9
biv-chain[4]: c5n5{r9 r1} - c5n9{r1 r7} - r7n1{c5 c6} - r4c6{n1 n5} ==> r9c6 ≠ 5
naked-single ==> r9c6 = 8
naked-single ==> r8c6 = 3
naked-single ==> r2c6 = 9
naked-single ==> r2c3 = 7
naked-single ==> r2c9 = 3
naked-single ==> r7c6 = 1
naked-single ==> r4c6 = 5
naked-single ==> r7c5 = 9
naked-single ==> r1c5 = 5
naked-single ==> r1c3 = 3
naked-single ==> r1c9 = 9
naked-single ==> r3c9 = 5
naked-single ==> r3c3 = 9
naked-single ==> r3c4 = 3
naked-single ==> r8c4 = 2
naked-single ==> r8c9 = 7
naked-single ==> r8c1 = 5
naked-single ==> r5c1 = 7
naked-single ==> r7c1 = 3
naked-single ==> r8c7 = 6
naked-single ==> r7c7 = 5
naked-single ==> r7c8 = 2
naked-single ==> r5c8 = 5
naked-single ==> r8c5 = 4
naked-single ==> r8c3 = 8
naked-single ==> r7c3 = 4
naked-single ==> r7c9 = 8
naked-single ==> r9c5 = 6
naked-single ==> r5c5 = 1
naked-single ==> r5c3 = 6
naked-single ==> r4c3 = 1
naked-single ==> r4c9 = 6
naked-single ==> r6c9 = 1
naked-single ==> r6c3 = 5
naked-single ==> r6c4 = 6
naked-single ==> r7c4 = 7
naked-single ==> r7c2 = 6
naked-single ==> r9c4 = 5
naked-single ==> r5c9 = 2
naked-single ==> r9c2 = 7
naked-single ==> r9c9 = 4
GRID 0 SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[9]
123456789
457189263
689327415
241835976
736914852
895672341
364791528
518243697
972568134
Puzzle 12.4.678.4..18..6.68..2741.24.83.97..3.9.48..89..7234...........1.....9.9.2...13. :
init-time = 0.16s, solve-time = 3.39s, total-time = 3.55s
nb-facts=<Fact-24144>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
