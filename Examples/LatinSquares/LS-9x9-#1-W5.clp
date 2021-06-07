
....5....
45.1..2.6
6.9..21.5
24.8..3.1
39..148.2
8..2.3...
53.9..61.
..8.....3
96.3.15.8

(solve "....5....45.1..2.66.9..21.524.8..3.139..148.28..2.3...53.9..61...8.....396.3.15.8")
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
....5....45.1..2.66.9..21.524.8..3.139..148.28..2.3...53.9..61...8.....396.3.15.8
38 givens, 149 candidates
entering BRT
Starting_init_links_with_<Fact-2733>

Starting non trivial part of solution with the following RESOLUTION STATE:
   17        1278      123467    467       5         6789      479       2346789   479       
   4         5         37        1         3789      789       2         3789      6         
   6         78        9         47        3478      2         1         3478      5         
   2         4         567       8         679       5679      3         5679      1         
   3         9         567       567       1         4         8         567       2         
   8         17        14567     2         4679      3         479       45679     479       
   5         3         247       9         2478      78        6         1         47        
   17        127       8         4567      24679     5679      479       245679    3         
   9         6         247       3         247       1         5         247       8         

149 candidates, 655 csp-links and 655 links. Density = 5.94%

Entering_level_W1_with_<Fact-5356>
Entering_relation_bivalue_with_<Fact-5357>
Entering_level_S2_with_<Fact-5408>
Entering_level_BC2_with_<Fact-5415>
Entering_level_W2_with_<Fact-5469>
Entering_level_S3_with_<Fact-5701>
Entering_level_BC3_with_<Fact-5792>
biv-chain[3]: c2n2{r1 r8} - r8n1{c2 c1} - r1c1{n1 n7} ==> r1c2 ≠ 7
Entering_level_W3_with_<Fact-5842>
Entering_level_S4_with_<Fact-6173>
Entering_level_BC4_with_<Fact-6390>
Entering_level_W4_with_<Fact-6428>
whip[4]: c3n1{r1 r6} - r6c2{n1 n7} - c7n7{r6 r8} - c1n7{r8 .} ==> r1c3 ≠ 7
whip[4]: c1n7{r1 r8} - r8n1{c1 c2} - r6c2{n1 n7} - c7n7{r6 .} ==> r1c9 ≠ 7
whip[4]: c1n7{r1 r8} - r8n1{c1 c2} - r6c2{n1 n7} - c7n7{r6 .} ==> r1c8 ≠ 7
whip[4]: c1n7{r1 r8} - r8n1{c1 c2} - r6c2{n1 n7} - c7n7{r6 .} ==> r1c6 ≠ 7
whip[4]: c1n7{r1 r8} - r8n1{c1 c2} - r6c2{n1 n7} - c7n7{r6 .} ==> r1c4 ≠ 7
Entering_level_BC5_with_<Fact-7064>
biv-chain[5]: c5n3{r3 r2} - c3n3{r2 r1} - c3n1{r1 r6} - r6c2{n1 n7} - r3c2{n7 n8} ==> r3c5 ≠ 8
Entering_level_W5_with_<Fact-7226>
whip[5]: c2n2{r1 r8} - c2n1{r8 r6} - c3n1{r6 r1} - r1n3{c3 c8} - r1n2{c8 .} ==> r1c2 ≠ 8
hidden-single-in-a-column ==> r3c2 = 8
swordfish-in-columns: n7{c1 c2 c7}{r1 r8 r6} ==> r8c8 ≠ 7, r8c6 ≠ 7, r8c5 ≠ 7, r8c4 ≠ 7, r6c9 ≠ 7, r6c8 ≠ 7, r6c5 ≠ 7, r6c3 ≠ 7
hidden-single-in-a-column ==> r7c9 = 7
naked-single ==> r7c6 = 8
hidden-single-in-a-row ==> r1c8 = 8
hidden-single-in-a-row ==> r1c3 = 3
naked-single ==> r2c3 = 7
naked-single ==> r2c6 = 9
naked-single ==> r1c6 = 6
naked-single ==> r1c4 = 4
naked-single ==> r1c9 = 9
naked-single ==> r1c7 = 7
naked-single ==> r1c1 = 1
naked-single ==> r1c2 = 2
naked-single ==> r8c1 = 7
naked-single ==> r8c2 = 1
naked-single ==> r6c2 = 7
naked-single ==> r6c9 = 4
naked-single ==> r6c7 = 9
naked-single ==> r6c5 = 6
naked-single ==> r6c8 = 5
naked-single ==> r6c3 = 1
naked-single ==> r8c7 = 4
naked-single ==> r3c4 = 7
naked-single ==> r8c6 = 5
naked-single ==> r4c6 = 7
naked-single ==> r4c5 = 9
naked-single ==> r4c8 = 6
naked-single ==> r4c3 = 5
naked-single ==> r5c3 = 6
naked-single ==> r5c4 = 5
naked-single ==> r5c8 = 7
naked-single ==> r8c5 = 2
naked-single ==> r7c5 = 4
naked-single ==> r3c5 = 3
naked-single ==> r2c5 = 8
naked-single ==> r3c8 = 4
naked-single ==> r9c8 = 2
naked-single ==> r9c3 = 4
naked-single ==> r7c3 = 2
naked-single ==> r9c5 = 7
naked-single ==> r8c8 = 9
naked-single ==> r8c4 = 6
naked-single ==> r2c8 = 3
GRID 0 SOLVED. rating-type = W+S, MOST COMPLEX RULE TRIED = W[5]
123456789
457189236
689732145
245897361
396514872
871263954
532948617
718625493
964371528
Puzzle ....5....45.1..2.66.9..21.524.8..3.139..148.28..2.3...53.9..61...8.....396.3.15.8 :
init-time = 0.16s, solve-time = 1.0s, total-time = 1.16s
nb-facts=<Fact-7559>
***********************************************************************************************
***  LatinRules 2.1.s based on CSP-Rules 2.1.s, config = W+S
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
