

This example is due to Mith.


+-------+-------+-------+
| . . . | . . . | . . . |
| . . 9 | 8 . . | 7 . 6 |
| . 5 4 | . 9 . | . 3 . |
+-------+-------+-------+
| . 6 . | . 8 . | . 2 . |
| . . 8 | 6 . . | 4 . 7 |
| . . . | . . . | . . . |
+-------+-------+-------+
| . . 6 | 4 . . | 8 . 1 |
| . 3 . | . 2 8 | . . . |
| . . 7 | 1 . . | . . . |
+-------+-------+-------+
...........98..7.6.54.9..3..6..8..2...86..4.7...........64..8.1.3..28.....71.....

 (solve "...........98..7.6.54.9..3..6..8..2...86..4.7...........64..8.1.3..28.....71.....")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = S
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
...........98..7.6.54.9..3..6..8..2...86..4.7...........64..8.1.3..28.....71.....
24 givens, 233 candidates
entering BRT
Starting_init_links_with_<Fact-3688>
233 candidates, 1690 csp-links and 1690 links. Density = 6.25%
starting non trivial part of solution
Entering_level_W1_with_<Fact-9967>
whip[1]: r8n6{c8 .} ==> r9c8 ≠ 6, r9c7 ≠ 6
whip[1]: r7n3{c6 .} ==> r9c6 ≠ 3, r9c5 ≠ 3
whip[1]: r7n2{c2 .} ==> r9c2 ≠ 2, r9c1 ≠ 2
Entering_relation_bivalue_with_<Fact-9974>
Entering_level_S2_with_<Fact-10061>
hidden-pairs-in-a-row: r9{n2 n3}{c7 c9} ==> r9c9 ≠ 9, r9c9 ≠ 5, r9c9 ≠ 4, r9c7 ≠ 9, r9c7 ≠ 5
Entering_level_S3_with_<Fact-10082>
naked-triplets-in-a-column: c2{r2 r5 r7}{n2 n1 n9} ==> r9c2 ≠ 9, r6c2 ≠ 9, r6c2 ≠ 2, r6c2 ≠ 1, r1c2 ≠ 2, r1c2 ≠ 1
naked-triplets-in-a-block: b1{r1c3 r2c1 r2c2}{n2 n3 n1} ==> r3c1 ≠ 2, r3c1 ≠ 1, r1c1 ≠ 3, r1c1 ≠ 2, r1c1 ≠ 1
swordfish-in-rows: n3{r2 r5 r7}{c6 c1 c5} ==> r6c6 ≠ 3, r6c5 ≠ 3, r6c1 ≠ 3, r4c6 ≠ 3, r4c1 ≠ 3, r1c6 ≠ 3, r1c5 ≠ 3
swordfish-in-rows: n2{r2 r5 r7}{c2 c6 c1} ==> r6c6 ≠ 2, r6c1 ≠ 2, r3c6 ≠ 2, r1c6 ≠ 2
Entering_level_S4_with_<Fact-10153>
jellyfish-in-columns: n5{c3 c9 c4 c7}{r8 r6 r4 r1} ==> r8c8 ≠ 5, r8c1 ≠ 5, r6c8 ≠ 5, r6c6 ≠ 5, r6c5 ≠ 5, r6c1 ≠ 5, r4c6 ≠ 5, r4c1 ≠ 5, r1c8 ≠ 5, r1c6 ≠ 5, r1c5 ≠ 5
naked-quads-in-a-row: r6{c1 c6 c2 c5}{n1 n9 n4 n7} ==> r6c9 ≠ 9, r6c8 ≠ 9, r6c8 ≠ 1, r6c7 ≠ 9, r6c7 ≠ 1, r6c4 ≠ 9, r6c4 ≠ 7, r6c3 ≠ 1
swordfish-in-columns: n9{c4 c7 c9}{r4 r8 r1} ==> r8c8 ≠ 9, r8c1 ≠ 9, r4c6 ≠ 9, r4c1 ≠ 9, r1c8 ≠ 9
hidden-quads-in-a-row: r1{n2 n3 n5 n9}{c9 c3 c4 c7} ==> r1c9 ≠ 8, r1c9 ≠ 4, r1c7 ≠ 1, r1c4 ≠ 7, r1c3 ≠ 1
hidden-single-in-a-column ==> r8c9 = 4
naked-single ==> r8c1 = 1
naked-single ==> r8c3 = 5
hidden-single-in-a-block ==> r5c1 = 5
hidden-single-in-a-column ==> r2c1 = 3
naked-single ==> r1c3 = 2
naked-single ==> r2c2 = 1
naked-single ==> r6c3 = 3
naked-single ==> r4c3 = 1
hidden-single-in-a-block ==> r5c8 = 1
naked-single ==> r5c5 = 3
hidden-single-in-a-column ==> r1c4 = 3
hidden-single-in-a-column ==> r7c6 = 3
hidden-single-in-a-block ==> r3c7 = 1
hidden-single-in-a-block ==> r3c9 = 2
naked-single ==> r3c4 = 7
naked-single ==> r3c6 = 6
naked-single ==> r3c1 = 8
naked-single ==> r1c2 = 7
naked-single ==> r1c1 = 6
naked-single ==> r6c2 = 4
naked-single ==> r4c1 = 7
naked-single ==> r4c6 = 4
naked-single ==> r1c6 = 1
naked-single ==> r1c5 = 4
naked-single ==> r1c8 = 8
naked-single ==> r6c8 = 6
naked-single ==> r6c7 = 5
naked-single ==> r1c7 = 9
naked-single ==> r1c9 = 5
naked-single ==> r2c8 = 4
naked-single ==> r4c7 = 3
naked-single ==> r4c9 = 9
naked-single ==> r4c4 = 5
naked-single ==> r9c7 = 2
naked-single ==> r8c7 = 6
naked-single ==> r6c4 = 2
naked-single ==> r5c6 = 9
naked-single ==> r5c2 = 2
naked-single ==> r7c2 = 9
naked-single ==> r7c1 = 2
naked-single ==> r9c1 = 4
naked-single ==> r6c6 = 7
naked-single ==> r6c5 = 1
naked-single ==> r9c6 = 5
naked-single ==> r2c6 = 2
naked-single ==> r7c5 = 7
naked-single ==> r7c8 = 5
naked-single ==> r9c5 = 6
naked-single ==> r9c8 = 9
naked-single ==> r6c9 = 8
naked-single ==> r8c8 = 7
naked-single ==> r2c5 = 5
naked-single ==> r6c1 = 9
naked-single ==> r9c2 = 8
naked-single ==> r8c4 = 9
naked-single ==> r9c9 = 3
GRID 0 SOLVED. rating-type = S, MOST COMPLEX RULE TRIED = SHQ
672341985
319852746
854796132
761584329
528639417
943217568
296473851
135928674
487165293
Puzzle ...........98..7.6.54.9..3..6..8..2...86..4.7...........64..8.1.3..28.....71..... :
init-time = 0.18s, solve-time = 0.32s, total-time = 0.5s
nb-facts=<Fact-10267>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = S
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


