(CLIPS-solve "grid3x3-p18")

 The puzzle is:

    * * 4  * 6 2  8 * *
    * 8 *  * 1 *  6 2 *
    * * *  4 * *  * * *

    3 * *  * * *  2 * *
    9 7 *  * * *  * 3 8
    * * 1  * * *  * * 7

    * * *  * * 7  * * *
    * 2 3  * 9 *  * 8 *
    * * 6  2 3 *  1 * *

 The solution is:

    1 3 4  7 6 2  8 5 9
    5 8 7  3 1 9  6 2 4
    2 6 9  4 5 8  7 1 3

    3 4 8  9 7 5  2 6 1
    9 7 2  1 4 6  5 3 8
    6 5 1  8 2 3  9 4 7

    4 1 5  6 8 7  3 9 2
    7 2 3  5 9 1  4 8 6
    8 9 6  2 3 4  1 7 5

 Rules used:

    Naked Single
    Hidden Single
    Locked Candidate Single Line
    Locked Candidate Multiple Lines
    Naked Pairs
    Hidden Pairs
    Naked Triples
    Hidden Triples
    Swordfish
    Color Conjugate Pairs
    Multi Color Type 2
    Forced Chain Convergence
    Forced Chain XY
    Unique Rectangle

CLIPS time = 0.282570123672485





Indeed, no rule of uniqueness is needed:

(solve "..4.628...8..1.62....4.....3.....2..97.....38..1.....7.....7....23.9..8...623.1..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
..4.628...8..1.62....4.....3.....2..97.....38..1.....7.....7....23.9..8...623.1..
26 givens, 209 candidates
entering BRT
hidden-single-in-a-row ==> r7c9 = 2
hidden-single-in-a-block ==> r7c7 = 3
hidden-single-in-a-row ==> r2c9 = 4
Starting_init_links_with_<Fact-3670>
194 candidates, 1217 csp-links and 1217 links. Density = 6.5%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8197>
whip[1]: r5n6{c6 .} ==> r6c6 ≠ 6, r4c4 ≠ 6, r4c6 ≠ 6, r6c4 ≠ 6
whip[1]: r5n1{c6 .} ==> r4c6 ≠ 1, r4c4 ≠ 1
whip[1]: c3n7{r3 .} ==> r3c1 ≠ 7, r1c1 ≠ 7, r2c1 ≠ 7
naked-single ==> r2c1 = 5
naked-single ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
whip[1]: r2n3{c6 .} ==> r3c6 ≠ 3, r1c4 ≠ 3
Entering_relation_bivalue_with_<Fact-8209>
Entering_level_S2_with_<Fact-8360>
hidden-pairs-in-a-block: b7{r7c3 r9c2}{n5 n9} ==> r9c2 ≠ 4, r7c3 ≠ 8
hidden-single-in-a-column ==> r4c3 = 8
whip[1]: c2n4{r6 .} ==> r6c1 ≠ 4
naked-pairs-in-a-row: r9{c2 c9}{n5 n9} ==> r9c8 ≠ 9, r9c8 ≠ 5, r9c6 ≠ 5
hidden-pairs-in-a-column: c6{n1 n6}{r5 r8} ==> r8c6 ≠ 5, r8c6 ≠ 4, r5c6 ≠ 5, r5c6 ≠ 4
hidden-pairs-in-a-row: r8{n4 n7}{c1 c7} ==> r8c7 ≠ 5
naked-pairs-in-a-block: b9{r8c7 r9c8}{n4 n7} ==> r7c8 ≠ 4
hidden-pairs-in-a-row: r5{n1 n6}{c4 c6} ==> r5c4 ≠ 5
finned-x-wing-in-rows: n5{r8 r1}{c4 c9} ==> r3c9 ≠ 5
Entering_level_BC2_with_<Fact-8471>
Entering_level_Z2_with_<Fact-9140>
Entering_level_tW2_with_<Fact-9662>
Entering_level_W2_with_<Fact-9663>
Entering_level_S3_with_<Fact-9664>
swordfish-in-columns: n4{c2 c6 c8}{r6 r4 r9} ==> r9c1 ≠ 4, r6c7 ≠ 4, r6c5 ≠ 4, r4c5 ≠ 4
Entering_level_BC3_with_<Fact-9905>
biv-chain[3]: r3n3{c9 c2} - r1c2{n3 n9} - r9n9{c2 c9} ==> r3c9 ≠ 9
biv-chain[3]: r6n3{c6 c4} - c4n8{r6 r7} - r9c6{n8 n4} ==> r6c6 ≠ 4
biv-chain[3]: c3n5{r7 r5} - r5n2{c3 c5} - c5n4{r5 r7} ==> r7c5 ≠ 5
whip[1]: b8n5{r8c4 .} ==> r1c4 ≠ 5, r4c4 ≠ 5, r6c4 ≠ 5
whip[1]: r1n5{c9 .} ==> r3c7 ≠ 5, r3c8 ≠ 5
whip[1]: c7n5{r6 .} ==> r4c8 ≠ 5, r4c9 ≠ 5, r6c8 ≠ 5
naked-pairs-in-a-column: c4{r1 r4}{n7 n9} ==> r6c4 ≠ 9, r2c4 ≠ 9, r2c4 ≠ 7
naked-single ==> r2c4 = 3
naked-single ==> r2c6 = 9
naked-single ==> r1c4 = 7
naked-single ==> r4c4 = 9
naked-single ==> r2c3 = 7
naked-single ==> r6c4 = 8
hidden-single-in-a-column ==> r4c5 = 7
hidden-single-in-a-column ==> r6c6 = 3
biv-chain[3]: r5c3{n2 n5} - b6n5{r5c7 r6c7} - r6c5{n5 n2} ==> r6c1 ≠ 2, r5c5 ≠ 2
naked-single ==> r6c1 = 6
naked-single ==> r3c1 = 2
naked-single ==> r3c3 = 9
naked-single ==> r1c2 = 3
naked-single ==> r3c2 = 6
naked-single ==> r3c7 = 7
naked-single ==> r3c8 = 1
naked-single ==> r3c9 = 3
naked-single ==> r8c7 = 4
naked-single ==> r5c7 = 5
naked-single ==> r5c3 = 2
naked-single ==> r5c5 = 4
naked-single ==> r4c6 = 5
naked-single ==> r3c6 = 8
naked-single ==> r3c5 = 5
naked-single ==> r9c6 = 4
naked-single ==> r4c2 = 4
naked-single ==> r4c8 = 6
naked-single ==> r4c9 = 1
naked-single ==> r6c2 = 5
naked-single ==> r9c2 = 9
naked-single ==> r9c9 = 5
naked-single ==> r1c9 = 9
naked-single ==> r1c8 = 5
naked-single ==> r7c8 = 9
naked-single ==> r6c8 = 4
naked-single ==> r8c9 = 6
naked-single ==> r8c6 = 1
naked-single ==> r5c6 = 6
naked-single ==> r5c4 = 1
naked-single ==> r8c4 = 5
naked-single ==> r7c4 = 6
naked-single ==> r6c5 = 2
naked-single ==> r7c5 = 8
naked-single ==> r7c1 = 4
naked-single ==> r6c7 = 9
naked-single ==> r8c1 = 7
naked-single ==> r9c1 = 8
naked-single ==> r9c8 = 7
naked-single ==> r7c3 = 5
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[3]
134762859
587319624
269458713
348975261
972146538
651823947
415687392
723591486
896234175
Puzzle ..4.628...8..1.62....4.....3.....2..97.....38..1.....7.....7....23.9..8...623.1.. :
init-time = 0.19s, solve-time = 0.47s, total-time = 0.66s
nb-facts=<Fact-12724>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

