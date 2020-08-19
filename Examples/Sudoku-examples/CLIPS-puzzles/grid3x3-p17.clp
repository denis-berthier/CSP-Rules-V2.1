;;; The puzzle is: 
;;;
;;;    * * 1  2 * *  * 8 *
;;;    * 8 *  * 6 *  * 9 *
;;;    6 * *  * * *  1 * 4
;;;
;;;    * * *  * 9 *  2 * 8
;;;    * * *  6 * 5  * * *
;;;    9 * 7  * 2 *  * * *
;;;
;;;    2 * 4  * * *  * * 9
;;;    * 7 *  * 5 *  * 6 *
;;;    * 9 *  * * 1  3 * *
;;;
;;; The solution is: 
;;;
;;;    4 5 1  2 3 9  7 8 6
;;;    7 8 3  1 6 4  5 9 2
;;;    6 2 9  5 8 7  1 3 4
;;;
;;;    1 6 5  7 9 3  2 4 8
;;;    8 4 2  6 1 5  9 7 3
;;;    9 3 7  4 2 8  6 1 5
;;;
;;;    2 1 4  3 7 6  8 5 9
;;;    3 7 8  9 5 2  4 6 1
;;;    5 9 6  8 4 1  3 2 7
;;;
;;; Rules used:
;;;
;;;    Naked Single
;;;    Hidden Single
;;;    Locked Candidate Single Line
;;;    Locked Candidate Multiple Lines
;;;    Naked Pairs
;;;    Hidden Pairs
;;;    Naked Triples
;;;    Swordfish
;;;    Forced Chain Convergence
;;;    Forced Chain XY



(solve "..12...8..8..6..9.6.....1.4....9.2.8...6.5...9.7.2....2.4.....9.7..5..6..9...13..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..12...8..8..6..9.6.....1.4....9.2.8...6.5...9.7.2....2.4.....9.7..5..6..9...13..
26 givens, 194 candidates
entering BRT
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r4c2 = 6
hidden-single-in-a-row ==> r7c6 = 6
hidden-single-in-a-column ==> r8c6 = 2
naked-single ==> r8c9 = 1
hidden-single-in-a-row ==> r7c2 = 1
hidden-single-in-a-block ==> r9c1 = 5
hidden-single-in-a-block ==> r8c4 = 9
hidden-single-in-a-row ==> r8c7 = 4
hidden-single-in-a-block ==> r7c7 = 8
hidden-single-in-a-block ==> r7c8 = 5
hidden-single-in-a-row ==> r4c3 = 5
hidden-single-in-a-row ==> r5c7 = 9
hidden-single-in-a-column ==> r5c5 = 1
hidden-single-in-a-column ==> r2c4 = 1
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-block ==> r1c2 = 5
hidden-single-in-a-block ==> r4c1 = 1
hidden-single-in-a-block ==> r6c8 = 1
hidden-single-in-a-column ==> r3c3 = 9
hidden-single-in-a-block ==> r1c6 = 9
Starting_init_links_with_<Fact-3673>
111 candidates, 339 csp-links and 339 links. Density = 5.55%
starting non trivial part of solution
Entering_level_W1_with_<Fact-4922>
whip[1]: r7n7{c5 .} ==> r9c5 ≠ 7, r9c4 ≠ 7
whip[1]: c2n4{r6 .} ==> r5c1 ≠ 4
whip[1]: r5n7{c9 .} ==> r4c8 ≠ 7
whip[1]: c7n7{r2 .} ==> r3c8 ≠ 7, r1c9 ≠ 7, r2c9 ≠ 7
whip[1]: r3n7{c6 .} ==> r1c5 ≠ 7, r2c6 ≠ 7
Entering_relation_bivalue_with_<Fact-4933>
Entering_level_S2_with_<Fact-5130>
naked-pairs-in-a-column: c1{r5 r8}{n3 n8} ==> r2c1 ≠ 3, r1c1 ≠ 3
naked-pairs-in-a-row: r3{c2 c8}{n2 n3} ==> r3c6 ≠ 3, r3c5 ≠ 3
hidden-pairs-in-a-row: r6{n5 n6}{c7 c9} ==> r6c9 ≠ 3
Entering_level_BC2_with_<Fact-5248>
Entering_level_Z2_with_<Fact-6311>
z-chain[2]: b6n3{r5c9 r4c8} - r3n3{c8 .} ==> r5c2 ≠ 3
z-chain[2]: b4n3{r5c3 r6c2} - r3n3{c2 .} ==> r5c8 ≠ 3
Entering_level_tW2_with_<Fact-6833>
Entering_level_W2_with_<Fact-6834>
Entering_level_S3_with_<Fact-6835>
Entering_level_BC3_with_<Fact-6883>
biv-chain[3]: r2c6{n4 n3} - b1n3{r2c3 r3c2} - r6c2{n3 n4} ==> r6c6 ≠ 4
biv-chain[3]: r6c6{n3 n8} - r3c6{n8 n7} - b5n7{r4c6 r4c4} ==> r4c4 ≠ 3
Entering_level_Z3_with_<Fact-12850>
Entering_level_tW3_with_<Fact-14458>
Entering_level_W3_with_<Fact-16102>
Entering_level_S4_with_<Fact-16103>
Entering_level_BC4_with_<Fact-16153>
biv-chain[4]: r1c5{n3 n4} - b8n4{r9c5 r9c4} - c4n8{r9 r6} - c4n3{r6 r7} ==> r7c5 ≠ 3
naked-single ==> r7c5 = 7
naked-single ==> r3c5 = 8
naked-single ==> r3c6 = 7
naked-single ==> r9c5 = 4
naked-single ==> r1c5 = 3
naked-single ==> r1c9 = 6
naked-single ==> r1c7 = 7
naked-single ==> r1c1 = 4
naked-single ==> r2c1 = 7
naked-single ==> r2c7 = 5
naked-single ==> r6c7 = 6
naked-single ==> r6c9 = 5
naked-single ==> r2c6 = 4
naked-single ==> r4c6 = 3
naked-single ==> r4c8 = 4
naked-single ==> r4c4 = 7
naked-single ==> r5c8 = 7
naked-single ==> r5c9 = 3
naked-single ==> r2c9 = 2
naked-single ==> r2c3 = 3
naked-single ==> r3c2 = 2
naked-single ==> r5c2 = 4
naked-single ==> r6c2 = 3
naked-single ==> r8c3 = 8
naked-single ==> r5c3 = 2
naked-single ==> r8c1 = 3
naked-single ==> r3c8 = 3
naked-single ==> r9c9 = 7
naked-single ==> r5c1 = 8
naked-single ==> r9c8 = 2
naked-single ==> r6c6 = 8
naked-single ==> r6c4 = 4
naked-single ==> r9c4 = 8
naked-single ==> r7c4 = 3
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[4]
451239786
783164592
629587134
165793248
842615973
937428615
214376859
378952461
596841327
Puzzle ..12...8..8..6..9.6.....1.4....9.2.8...6.5...9.7.2....2.4.....9.7..5..6..9...13.. :
init-time = 0.18s, solve-time = 0.46s, total-time = 0.65s
nb-facts=<Fact-16243>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
