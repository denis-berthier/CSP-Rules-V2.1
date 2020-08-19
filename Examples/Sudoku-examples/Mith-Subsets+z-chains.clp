
This example is due to Mith

+-------+-------+-------+
| . . . | 1 3 . | . . . |
| . 1 . | . . 4 | 5 . . |
| . . 2 | . . . | . 6 . |
+-------+-------+-------+
| 1 . . | 3 . . | . 7 . |
| 2 . . | . 5 . | . . 8 |
| . 4 . | . . 6 | . . 9 |
+-------+-------+-------+
| . 5 . | . . . | 7 . . |
| . . 6 | 7 . . | . 9 . |
| . . . | . 8 9 | . . . |
+-------+-------+-------+
...13.....1...45....2....6.1..3...7.2...5...8.4...6..9.5....7....67...9.....89...


(solve "...13.....1...45....2....6.1..3...7.2...5...8.4...6..9.5....7....67...9.....89...")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = Z+SFin
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
...13.....1...45....2....6.1..3...7.2...5...8.4...6..9.5....7....67...9.....89...
23 givens, 217 candidates
entering BRT
Starting_init_links_with_<Fact-3671>
217 candidates, 1371 csp-links and 1371 links. Density = 5.85%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8764>
whip[1]: r1n6{c2 .} ==> r2c1 ≠ 6
hidden-single-in-a-column ==> r1c1 = 6
Entering_relation_bivalue_with_<Fact-8768>
Entering_level_S2_with_<Fact-8847>
naked-pairs-in-a-block: b5{r4c6 r6c4}{n2 n8} ==> r6c5 ≠ 2, r4c5 ≠ 2
hidden-pairs-in-a-block: b1{r1c3 r3c1}{n4 n5} ==> r3c1 ≠ 9, r3c1 ≠ 8, r3c1 ≠ 7, r3c1 ≠ 3, r1c3 ≠ 9, r1c3 ≠ 8, r1c3 ≠ 7
Entering_level_BC2_with_<Fact-8881>
Entering_level_Z2_with_<Fact-9000>
Entering_level_S3_with_<Fact-9404>
swordfish-in-columns: n5{c1 c4 c8}{r6 r3 r9} ==> r9c9 ≠ 5, r6c3 ≠ 5, r3c6 ≠ 5
Entering_level_BC3_with_<Fact-9680>
Entering_level_Z3_with_<Fact-10375>
Entering_level_S4_with_<Fact-11302>
Entering_level_BC4_with_<Fact-11498>
Entering_level_Z4_with_<Fact-13361>
z-chain[4]: r3c6{n7 n8} - r4c6{n8 n2} - b2n2{r1c6 r2c4} - r2n6{c4 .} ==> r2c5 ≠ 7
Entering_level_BC5_with_<Fact-15485>
Entering_level_Z5_with_<Fact-18714>
z-chain[5]: r2n6{c4 c5} - b2n2{r2c5 r1c6} - r4c6{n2 n8} - r3c6{n8 n7} - r3c5{n7 .} ==> r2c4 ≠ 9
z-chain[3]: r7n9{c3 c1} - r2n9{c1 c5} - r4n9{c5 .} ==> r5c3 ≠ 9
z-chain[5]: r5c3{n7 n3} - r6c3{n3 n8} - b5n8{r6c4 r4c6} - r3c6{n8 n7} - r5n7{c6 .} ==> r6c1 ≠ 7
z-chain[5]: r2n6{c5 c4} - b2n2{r2c4 r1c6} - r4c6{n2 n8} - r3c6{n8 n7} - r3c5{n7 .} ==> r2c5 ≠ 9
whip[1]: b2n9{r3c5 .} ==> r3c2 ≠ 9, r3c7 ≠ 9
hidden-single-in-a-block ==> r1c7 = 9
whip[1]: c2n9{r5 .} ==> r4c3 ≠ 9
hidden-pairs-in-a-block: b4{r4c2 r5c2}{n6 n9} ==> r5c2 ≠ 7, r5c2 ≠ 3, r4c2 ≠ 8
whip[1]: b4n7{r6c3 .} ==> r2c3 ≠ 7, r9c3 ≠ 7
biv-chain[3]: r1n5{c6 c3} - r4c3{n5 n8} - r4c6{n8 n2} ==> r1c6 ≠ 2
whip[1]: r1n2{c9 .} ==> r2c8 ≠ 2, r2c9 ≠ 2
hidden-pairs-in-a-row: r2{n2 n6}{c4 c5} ==> r2c4 ≠ 8
biv-chain[4]: r3n5{c4 c1} - b4n5{r6c1 r4c3} - r4n8{c3 c6} - c4n8{r6 r3} ==> r3c4 ≠ 9
hidden-single-in-a-block ==> r3c5 = 9
naked-single ==> r4c5 = 4
naked-single ==> r5c4 = 9
naked-single ==> r5c2 = 6
naked-single ==> r4c2 = 9
hidden-single-in-a-column ==> r6c5 = 7
naked-single ==> r5c6 = 1
hidden-single-in-a-row ==> r5c3 = 7
whip[1]: r5n3{c8 .} ==> r6c7 ≠ 3, r6c8 ≠ 3
biv-chain[3]: b6n3{r5c7 r5c8} - r2c8{n3 n8} - b9n8{r7c8 r8c7} ==> r8c7 ≠ 3
biv-chain[3]: c4n4{r7 r9} - c4n5{r9 r3} - r3c1{n5 n4} ==> r7c1 ≠ 4
biv-chain[4]: r3c1{n4 n5} - r6n5{c1 c8} - b6n1{r6c8 r6c7} - b3n1{r3c7 r3c9} ==> r3c9 ≠ 4
finned-x-wing-in-rows: n4{r3 r8}{c1 c7} ==> r9c7 ≠ 4
z-chain[3]: r8n4{c9 c1} - r3n4{c1 c7} - r5n4{c7 .} ==> r9c8 ≠ 4
z-chain[3]: r8n4{c9 c1} - r3n4{c1 c7} - r5n4{c7 .} ==> r7c8 ≠ 4
z-chain[4]: r8n4{c9 c1} - r3c1{n4 n5} - c4n5{r3 r9} - c4n4{r9 .} ==> r7c9 ≠ 4
z-chain[4]: c2n8{r3 r8} - c7n8{r8 r3} - r1n8{c8 c6} - r4n8{c6 .} ==> r2c3 ≠ 8
finned-x-wing-in-rows: n8{r2 r7}{c8 c1} ==> r8c1 ≠ 8
biv-chain[3]: b4n3{r6c1 r6c3} - r2c3{n3 n9} - b7n9{r7c3 r7c1} ==> r7c1 ≠ 3
z-chain[3]: r2n8{c8 c1} - c2n8{r3 r8} - c7n8{r8 .} ==> r1c8 ≠ 8
biv-chain[4]: r1c8{n2 n4} - r1c3{n4 n5} - c1n5{r3 r6} - c8n5{r6 r9} ==> r9c8 ≠ 2
biv-chain[4]: r8c1{n3 n4} - r3c1{n4 n5} - r1n5{c3 c6} - r8n5{c6 c9} ==> r8c9 ≠ 3
z-chain[5]: r7n9{c3 c1} - r7n8{c1 c8} - c7n8{r8 r3} - c4n8{r3 r6} - r6c3{n8 .} ==> r7c3 ≠ 3
z-chain[5]: b9n8{r8c7 r7c8} - r2c8{n8 n3} - r5c8{n3 n4} - c7n4{r5 r3} - c7n8{r3 .} ==> r8c7 ≠ 2
z-chain[5]: b9n8{r8c7 r7c8} - r2c8{n8 n3} - r5c8{n3 n4} - c7n4{r5 r3} - c7n8{r3 .} ==> r8c7 ≠ 1
z-chain[5]: r3n4{c1 c7} - r8n4{c7 c9} - r8n5{c9 c6} - b2n5{r1c6 r3c4} - r3c1{n5 .} ==> r9c1 ≠ 4
biv-chain[5]: r3n1{c9 c7} - r3n4{c7 c1} - r8c1{n4 n3} - r9c1{n3 n7} - r2n7{c1 c9} ==> r3c9 ≠ 7
z-chain[5]: r9c1{n3 n7} - r9c2{n7 n2} - r8c2{n2 n8} - r8c7{n8 n4} - r8c1{n4 .} ==> r9c3 ≠ 3
biv-chain[4]: r9c3{n1 n4} - r1c3{n4 n5} - c1n5{r3 r6} - c8n5{r6 r9} ==> r9c8 ≠ 1
biv-chain[3]: r9c8{n3 n5} - r8n5{c9 c6} - b8n3{r8c6 r7c6} ==> r7c8 ≠ 3, r7c9 ≠ 3
hidden-single-in-a-row ==> r7c6 = 3
whip[1]: r8n3{c2 .} ==> r9c1 ≠ 3, r9c2 ≠ 3
naked-single ==> r9c1 = 7
naked-single ==> r9c2 = 2
hidden-single-in-a-row ==> r2c9 = 7
whip[1]: c7n2{r6 .} ==> r4c9 ≠ 2, r6c8 ≠ 2
naked-pairs-in-a-block: b3{r1c8 r1c9}{n2 n4} ==> r3c7 ≠ 4
hidden-single-in-a-row ==> r3c1 = 4
naked-single ==> r1c3 = 5
naked-single ==> r4c3 = 8
naked-single ==> r4c6 = 2
naked-single ==> r4c7 = 6
naked-single ==> r4c9 = 5
naked-single ==> r6c8 = 1
naked-single ==> r6c7 = 2
naked-single ==> r6c4 = 8
naked-single ==> r3c4 = 5
naked-single ==> r8c6 = 5
naked-single ==> r6c3 = 3
naked-single ==> r2c3 = 9
naked-single ==> r6c1 = 5
naked-single ==> r8c1 = 3
naked-single ==> r2c1 = 8
naked-single ==> r1c2 = 7
naked-single ==> r1c6 = 8
naked-single ==> r3c6 = 7
naked-single ==> r3c2 = 3
naked-single ==> r3c9 = 1
naked-single ==> r3c7 = 8
naked-single ==> r8c7 = 4
naked-single ==> r5c7 = 3
naked-single ==> r5c8 = 4
naked-single ==> r1c8 = 2
naked-single ==> r1c9 = 4
naked-single ==> r7c8 = 8
naked-single ==> r9c7 = 1
naked-single ==> r9c3 = 4
naked-single ==> r7c3 = 1
naked-single ==> r9c4 = 6
naked-single ==> r2c4 = 2
naked-single ==> r2c5 = 6
naked-single ==> r7c4 = 4
naked-single ==> r7c5 = 2
naked-single ==> r7c9 = 6
naked-single ==> r8c5 = 1
naked-single ==> r9c9 = 3
naked-single ==> r9c8 = 5
naked-single ==> r8c9 = 2
naked-single ==> r2c8 = 3
naked-single ==> r7c1 = 9
naked-single ==> r8c2 = 8
GRID 0 SOLVED. rating-type = Z+SFin, MOST COMPLEX RULE TRIED = z-chain[5]
675138924
819264537
432597861
198342675
267951348
543876219
951423786
386715492
724689153
Puzzle ...13.....1...45....2....6.1..3...7.2...5...8.4...6..9.5....7....67...9.....89... :
init-time = 0.19s, solve-time = 7.94s, total-time = 8.13s
nb-facts=<Fact-83217>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = Z+SFin
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
