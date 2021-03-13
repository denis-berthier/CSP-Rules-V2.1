
...4....9
45..8.23.
6892.3.54
.....7...
79....325
865..2.97
.76......
5.8..4.62
94....573

(solve "...4....945..8.23.6892.3.54.....7...79....325865..2.97.76......5.8..4.6294....573")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
...4....945..8.23.6892.3.54.....7...79....325865..2.97.76......5.8..4.6294....573
38 givens, 144 candidates
entering BRT
Starting_init_links_with_<Fact-2728>

Starting non trivial part of solution with the following RESOLUTION STATE:
   123       123       1237      4         123567    1568      1678      18        9         
   4         5         17        1679      8         169       2         3         16        
   6         8         9         2         17        3         17        5         4         
   123       123       1234      135689    1234569   7         14689     148       168       
   7         9         14        168       146       168       3         2         5         
   8         6         5         13        134       2         14        9         7         
   123       7         6         13589     123459    1589      1489      148       18        
   5         13        8         1379      1379      4         179       6         2         
   9         4         12        168       126       168       5         7         3         

144 candidates, 621 csp-links and 621 links. Density = 6.03%

Entering_level_W1_with_<Fact-5215>
Entering_relation_bivalue_with_<Fact-5216>
Entering_level_S2_with_<Fact-5289>
x-wing-in-rows: n8{r5 r9}{c4 c6} ==> r7c6 ≠ 8, r7c4 ≠ 8, r4c4 ≠ 8, r1c6 ≠ 8
Entering_level_BC2_with_<Fact-5306>
Entering_level_W2_with_<Fact-5372>
Entering_level_S3_with_<Fact-5703>
Entering_level_BC3_with_<Fact-5766>
Entering_level_W3_with_<Fact-5784>
Entering_level_S4_with_<Fact-6138>
Entering_level_BC4_with_<Fact-6239>
Entering_level_W4_with_<Fact-6243>
Entering_level_BC5_with_<Fact-6549>
Entering_level_W5_with_<Fact-6551>
whip[5]: c7n6{r4 r1} - c7n8{r1 r7} - r7c9{n8 n1} - c8n1{r7 r1} - c1n1{r1 .} ==> r4c7 ≠ 1
whip[5]: c7n6{r1 r4} - c7n8{r4 r7} - r7c9{n8 n1} - c8n1{r7 r4} - c1n1{r4 .} ==> r1c7 ≠ 1
Entering_level_BC6_with_<Fact-6868>
Entering_level_W6_with_<Fact-6870>
whip[6]: r4n5{c5 c4} - r4n9{c4 c7} - c7n6{r4 r1} - c7n8{r1 r7} - c9n8{r7 r4} - r4n6{c9 .} ==> r4c5 ≠ 4
whip[6]: r4n5{c5 c4} - r4n9{c4 c7} - c7n6{r4 r1} - c7n8{r1 r7} - c9n8{r7 r4} - r4n6{c9 .} ==> r4c5 ≠ 3
whip[6]: r4n5{c5 c4} - r4n9{c4 c7} - c7n6{r4 r1} - c7n8{r1 r7} - c9n8{r7 r4} - r4n6{c9 .} ==> r4c5 ≠ 2
whip[6]: r4n5{c5 c4} - r4n9{c4 c7} - c7n6{r4 r1} - c7n8{r1 r7} - c9n8{r7 r4} - r4n6{c9 .} ==> r4c5 ≠ 1
whip[6]: r4n5{c4 c5} - r4n9{c5 c7} - c7n6{r4 r1} - c7n8{r1 r7} - c9n8{r7 r4} - r4n6{c9 .} ==> r4c4 ≠ 3
whip[6]: r4n5{c4 c5} - r4n9{c5 c7} - c7n6{r4 r1} - c7n8{r1 r7} - c9n8{r7 r4} - r4n6{c9 .} ==> r4c4 ≠ 1
Entering_level_BC7_with_<Fact-7266>
Entering_level_W7_with_<Fact-7268>
whip[7]: r6n3{c4 c5} - r7n3{c5 c1} - r7n2{c1 c5} - c5n4{r7 r5} - r5c3{n4 n1} - r2c3{n1 n7} - c4n7{r2 .} ==> r8c4 ≠ 3
whip[5]: r3n1{c5 c7} - r6n1{c7 c4} - r6n3{c4 c5} - r8n3{c5 c2} - r8n1{c2 .} ==> r9c5 ≠ 1
whip[5]: r3n1{c7 c5} - r6n1{c5 c4} - r6n3{c4 c5} - r8n3{c5 c2} - r8n1{c2 .} ==> r7c7 ≠ 1
whip[5]: r3n1{c5 c7} - r6n1{c7 c4} - r6n3{c4 c5} - r8n3{c5 c2} - r8n1{c2 .} ==> r7c5 ≠ 1
whip[5]: r3n1{c5 c7} - r6n1{c7 c4} - r6n3{c4 c5} - r8n3{c5 c2} - r8n1{c2 .} ==> r5c5 ≠ 1
biv-chain[4]: r9c3{n1 n2} - r9c5{n2 n6} - r5c5{n6 n4} - r5c3{n4 n1} ==> r1c3 ≠ 1, r2c3 ≠ 1, r4c3 ≠ 1
naked-single ==> r2c3 = 7
hidden-single-in-a-column ==> r8c4 = 7
naked-triplets-in-a-row: r1{c1 c2 c3}{n2 n1 n3} ==> r1c8 ≠ 1, r1c6 ≠ 1, r1c5 ≠ 3, r1c5 ≠ 2, r1c5 ≠ 1
naked-single ==> r1c8 = 8
naked-quads-in-a-row: r4{c1 c2 c3 c8}{n1 n2 n3 n4} ==> r4c9 ≠ 1, r4c7 ≠ 4
biv-chain[4]: r5c5{n6 n4} - r5c3{n4 n1} - r9c3{n1 n2} - r9c5{n2 n6} ==> r1c5 ≠ 6, r4c5 ≠ 6
whip[4]: r7n2{c5 c1} - r7n3{c1 c4} - c4n5{r7 r4} - r4c5{n5 .} ==> r7c5 ≠ 9
whip[5]: c3n3{r1 r4} - c1n3{r4 r7} - r7n2{c1 c5} - r9n2{c5 c3} - r1c3{n2 .} ==> r1c2 ≠ 3
whip[6]: r7n2{c5 c1} - r7n3{c1 c4} - c4n5{r7 r4} - c4n9{r4 r2} - c6n9{r2 r7} - r7n5{c6 .} ==> r7c5 ≠ 4
whip[5]: r4c8{n1 n4} - r7n4{c8 c7} - r6c7{n4 n1} - r8n1{c7 c5} - r3n1{c5 .} ==> r4c2 ≠ 1
biv-chain[4]: c2n2{r4 r1} - r1n1{c2 c1} - r4n1{c1 c8} - r4n4{c8 c3} ==> r4c3 ≠ 2
whip[6]: c3n4{r4 r5} - c5n4{r5 r6} - r6c7{n4 n1} - r3n1{c7 c5} - r8n1{c5 c2} - c2n3{r8 .} ==> r4c3 ≠ 3
naked-single ==> r4c3 = 4
naked-single ==> r4c8 = 1
naked-single ==> r7c8 = 4
naked-single ==> r5c3 = 1
naked-single ==> r9c3 = 2
naked-single ==> r1c3 = 3
naked-single ==> r9c5 = 6
naked-single ==> r5c5 = 4
hidden-single-in-a-row ==> r6c7 = 4
hidden-single-in-a-column ==> r7c5 = 2
biv-chain[4]: c4n5{r4 r7} - c4n3{r7 r6} - c5n3{r6 r8} - c5n9{r8 r4} ==> r4c4 ≠ 9, r4c5 ≠ 5
naked-single ==> r4c5 = 9
hidden-single-in-a-row ==> r8c7 = 9
naked-single ==> r7c7 = 8
naked-single ==> r4c7 = 6
naked-single ==> r1c7 = 7
naked-single ==> r1c5 = 5
naked-single ==> r1c6 = 6
naked-single ==> r5c6 = 8
naked-single ==> r5c4 = 6
naked-single ==> r9c6 = 1
naked-single ==> r2c6 = 9
naked-single ==> r2c4 = 1
naked-single ==> r2c9 = 6
naked-single ==> r6c4 = 3
naked-single ==> r6c5 = 1
naked-single ==> r3c5 = 7
naked-single ==> r8c5 = 3
naked-single ==> r8c2 = 1
naked-single ==> r1c2 = 2
naked-single ==> r1c1 = 1
naked-single ==> r7c1 = 3
naked-single ==> r4c1 = 2
naked-single ==> r4c2 = 3
naked-single ==> r7c6 = 5
naked-single ==> r7c4 = 9
naked-single ==> r9c4 = 8
naked-single ==> r3c7 = 1
naked-single ==> r4c4 = 5
naked-single ==> r4c9 = 8
naked-single ==> r7c9 = 1
GRID 0 SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[7]
123456789
457189236
689273154
234597618
791648325
865312497
376925841
518734962
942861573
Puzzle ...4....945..8.23.6892.3.54.....7...79....325865..2.97.76......5.8..4.6294....573 :
init-time = 0.16s, solve-time = 2.49s, total-time = 2.65s
nb-facts=<Fact-23884>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
