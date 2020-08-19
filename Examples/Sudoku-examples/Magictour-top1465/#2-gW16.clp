
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              RESOLUTION PATHS FOR THE MAGICTOUR TOP 1465 COLLECTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







#2 SER= 9.5

This is one of the hardest Sudoku puzzles solvable by the chain rules of CSP-Rules.
Check the extra long resolution time at the end (partly because it has to run on virtual memory).

This is an example with many partial-whips, with only very few of them giving eliminations

#2 is one of the 3 puzzles (# 2, SER 9.5 - #3, SER 9.6 - #77, SER 9.8) in the top1465 collection that cannot be solved by whips.
Indeed, it is not in T&E = T&E(BRT), i.e. it is not even solvable by braids.
But it is in gT&E = T&E(W1), i.e. it is solvable by g-braids.
Indeed, it is solvable by g-whips:

(solve "7.8...3.....2.1...5.........4.....263...8.......1...9..9.6....4....7.5...........")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = gW+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
7.8...3.....6.1...5.........4.....263...8.......1...9..9.2....4....7.5...........
18 givens, 285 candidates
entering BRT
hidden-single-in-a-block ==> r6c9 = 3
Starting_init_links_with_<Fact-3735>
278 candidates, 2124 csp-links and 2124 links. Density = 5.52%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11594>
whip[1]: r2n8{c9 .} ==> r3c9 ≠ 8, r3c7 ≠ 8, r3c8 ≠ 8
whip[1]: r2n7{c9 .} ==> r3c9 ≠ 7, r3c7 ≠ 7, r3c8 ≠ 7
whip[1]: b6n8{r6c7 .} ==> r9c7 ≠ 8, r2c7 ≠ 8, r7c7 ≠ 8
whip[1]: b6n5{r5c9 .} ==> r5c6 ≠ 5, r5c2 ≠ 5, r5c3 ≠ 5, r5c4 ≠ 5
Entering_relation_bivalue_with_<Fact-11603>
Entering_level_S2_with_<Fact-11638>
hidden-pairs-in-a-row: r3{n7 n8}{c4 c6} ==> r3c6 ≠ 9, r3c6 ≠ 4, r3c6 ≠ 3, r3c6 ≠ 2, r3c4 ≠ 9, r3c4 ≠ 4, r3c4 ≠ 3
whip[1]: b2n3{r3c5 .} ==> r4c5 ≠ 3, r7c5 ≠ 3, r9c5 ≠ 3
Entering_level_BC2_with_<Fact-11666>
Entering_level_W2_with_<Fact-11696>
initialising g-labels, label-glabel-glinks and label-in-glabel, starting with <Fact-11964>
, starting with <Fact-12019>
273 g-candidates, 1529 csp-glinks and 869 non-csp glinks
Entering_level_gW2_with_<Fact-14301>
Entering_level_S3_with_<Fact-14804>
Entering_level_BC3_with_<Fact-14808>
Entering_level_W3_with_<Fact-14810>
Entering_level_gW3_with_<Fact-15050>
Entering_level_S4_with_<Fact-16033>
Entering_level_BC4_with_<Fact-16037>
Entering_level_W4_with_<Fact-16039>
whip[4]: c1n6{r9 r6} - c3n6{r6 r3} - c7n6{r3 r7} - c5n6{r7 .} ==> r9c2 ≠ 6
whip[4]: c1n9{r2 r4} - r4c5{n9 n5} - r2n5{c5 c8} - r2n8{c8 .} ==> r2c9 ≠ 9
Entering_level_gW4_with_<Fact-16208>
Entering_level_BC5_with_<Fact-17592>
Entering_level_W5_with_<Fact-17594>
Entering_level_gW5_with_<Fact-17721>
Entering_level_BC6_with_<Fact-19573>
Entering_level_W6_with_<Fact-19575>
whip[6]: c2n7{r6 r9} - c9n7{r9 r2} - r2n8{c9 c8} - r2n5{c8 c5} - r4c5{n5 n9} - b4n9{r4c1 .} ==> r5c3 ≠ 7
Entering_level_gW6_with_<Fact-19712>
Entering_level_BC7_with_<Fact-21993>
Entering_level_W7_with_<Fact-21995>
Entering_level_gW7_with_<Fact-22126>
Entering_level_BC8_with_<Fact-25053>
Entering_level_W8_with_<Fact-25055>
Entering_level_gW8_with_<Fact-25182>
g-whip[8]: c2n5{r9 r6} - c2n8{r6 r8} - r8n1{c2 c789} - c1n1{r8 r4} - r7c1{n1 n6} - r7c7{n6 n7} - b6n7{r6c7 r5c789} - c2n7{r5 .} ==> r9c2 ≠ 1
Entering_level_BC9_with_<Fact-29235>
Entering_level_W9_with_<Fact-29237>
Entering_level_gW9_with_<Fact-29385>
g-whip[9]: c1n6{r9 r6} - c5n6{r6 r9} - c5n1{r9 r7} - r7c1{n1 n8} - c2n8{r9 r6} - c2n5{r6 r9} - c2n7{r9 r5} - b6n7{r5c9 r456c7} - r7c7{n7 .} ==> r7c3 ≠ 6
Entering_level_BC10_with_<Fact-34521>
Entering_level_W10_with_<Fact-34523>
Entering_level_gW10_with_<Fact-34632>
Entering_level_BC11_with_<Fact-42207>
Entering_level_W11_with_<Fact-42209>
Entering_level_gW11_with_<Fact-42398>
Entering_level_BC12_with_<Fact-55060>
Entering_level_W12_with_<Fact-55062>
Entering_level_gW12_with_<Fact-55410>
g-whip[12]: r4n8{c1 c7} - r6n8{c7 c2} - c2n5{r6 r9} - c2n7{r9 r5} - b6n7{r5c9 r6c7} - b6n4{r6c7 r5c789} - r5c4{n4 n9} - r4c5{n9 n5} - b8n5{r9c5 r7c6} - r7n8{c6 c8} - r7n7{c8 c3} - r7n3{c3 .} ==> r9c1 ≠ 8
g-whip[12]: r4n8{c1 c7} - r6n8{c7 c2} - c2n5{r6 r9} - c2n7{r9 r5} - b6n7{r5c9 r6c7} - b6n4{r6c7 r5c789} - r5c4{n4 n9} - r4c5{n9 n5} - b8n5{r9c5 r7c6} - r7n8{c6 c8} - r7n7{c8 c3} - r7n3{c3 .} ==> r8c1 ≠ 8
Entering_level_BC13_with_<Fact-79036>
Entering_level_W13_with_<Fact-79038>
Entering_level_gW13_with_<Fact-79586>
Entering_level_BC14_with_<Fact-123722>
Entering_level_W14_with_<Fact-123724>
Entering_level_gW14_with_<Fact-124546>
g-whip[14]: c2n5{r6 r9} - c2n7{r9 r5} - r5n6{c2 c6} - r5n2{c6 c3} - r6c1{n2 n8} - c1n6{r6 r789} - c3n6{r9 r3} - r1n6{c2 c8} - r8n6{c8 c1} - r7c1{n6 n1} - c5n1{r7 r9} - r9n6{c5 c7} - r7c7{n6 n7} - b6n7{r4c7 .} ==> r6c2 ≠ 6
g-whip[14]: c2n5{r6 r9} - c2n7{r9 r5} - r5n2{c2 c6} - r5n6{c6 c3} - r6c1{n6 n8} - r4n8{c1 c7} - b6n7{r4c7 r6c7} - b6n4{r6c7 r5c789} - r5c4{n4 n9} - r4c5{n9 n5} - b8n5{r9c5 r7c6} - r7n8{c6 c8} - r7n7{c8 c3} - r7n3{c3 .} ==> r6c2 ≠ 2
Entering_level_BC15_with_<Fact-206501>
Entering_level_W15_with_<Fact-206503>
Entering_level_gW15_with_<Fact-207507>
g-whip[15]: c7n2{r3 r9} - c7n9{r9 r123} - r3c9{n9 n1} - r1c9{n1 n5} - r2n5{c9 c5} - r4c5{n5 n9} - r5n9{c6 c3} - r3n9{c3 c7} - c7n6{r3 r7} - r7c5{n6 n1} - r7c1{n1 n8} - c2n8{r9 r6} - c2n5{r6 r9} - c2n7{r9 r5} - r5c9{n7 .} ==> r2c9 ≠ 2
Entering_level_BC16_with_<Fact-349070>
Entering_level_W16_with_<Fact-349072>
Entering_level_gW16_with_<Fact-350282>
g-whip[16]: r2n8{c8 c9} - c9n5{r2 r5} - c9n7{r5 r9} - c8n7{r9 r5} - b6n1{r5c8 r456c7} - r7c7{n1 n6} - r7n7{c7 c3} - c2n7{r9 r6} - c2n8{r6 r789} - r7c1{n8 n1} - r7c5{n1 n5} - r4c5{n5 n9} - r5c4{n9 n4} - r6n4{c6 c7} - r6n8{c7 c1} - r4c1{n8 .} ==> r2c8 ≠ 5
whip[5]: c1n9{r2 r4} - r4c5{n9 n5} - r2n5{c5 c9} - r2n7{c9 c8} - r2n8{c8 .} ==> r2c7 ≠ 9
whip[6]: c7n9{r9 r3} - c7n2{r3 r2} - r3c9{n2 n1} - r1c9{n1 n5} - r5n5{c9 c8} - c8n1{r5 .} ==> r9c7 ≠ 1
whip[10]: c2n5{r6 r9} - r7n5{c3 c6} - c4n5{r9 r1} - r2n5{c5 c9} - r2n8{c9 c8} - r7n8{c8 c1} - b4n8{r4c1 r6c2} - c2n7{r6 r5} - c9n7{r5 r9} - c8n7{r7 .} ==> r6c5 ≠ 5
whip[10]: c7n9{r9 r3} - c7n2{r3 r2} - r3c9{n2 n1} - r1c9{n1 n5} - r5c9{n5 n7} - c2n7{r5 r6} - c2n5{r6 r9} - c4n5{r9 r4} - r4n3{c4 c6} - r4n7{c6 .} ==> r9c7 ≠ 7
whip[10]: r4n1{c3 c7} - r4n8{c7 c1} - b4n9{r4c1 r4c3} - r4c5{n9 n5} - r2n5{c5 c9} - r2n8{c9 c8} - r2n7{c8 c7} - r7c7{n7 n6} - r7c1{n6 n1} - r7c5{n1 .} ==> r5c3 ≠ 1
g-whip[11]: r4n8{c1 c7} - r6n8{c7 c2} - c2n5{r6 r9} - c2n7{r9 r5} - b6n7{r5c9 r6c7} - b6n4{r6c7 r5c789} - r5c4{n4 n9} - r4c5{n9 n5} - r2n5{c5 c9} - r2n7{c9 c8} - r2n8{c8 .} ==> r7c1 ≠ 8
whip[1]: b7n8{r9c2 .} ==> r6c2 ≠ 8
whip[5]: r7c1{n6 n1} - r7c5{n1 n5} - r2n5{c5 c9} - r2n8{c9 c8} - r7n8{c8 .} ==> r7c6 ≠ 6
whip[6]: r7c1{n6 n1} - r7c5{n1 n5} - r2n5{c5 c9} - r2n8{c9 c8} - r2n7{c8 c7} - r7c7{n7 .} ==> r7c8 ≠ 6
whip[6]: r7c1{n1 n6} - r7c5{n6 n5} - r2n5{c5 c9} - r2n8{c9 c8} - r2n7{c8 c7} - r7c7{n7 .} ==> r7c8 ≠ 1
whip[6]: r7c1{n1 n6} - r7c5{n6 n5} - r2n5{c5 c9} - r2n8{c9 c8} - r2n7{c8 c7} - r7c7{n7 .} ==> r7c3 ≠ 1
whip[7]: c8n5{r5 r1} - r1n6{c8 c2} - r1n1{c2 c9} - b9n1{r9c9 r7c7} - r7c1{n1 n6} - r7c5{n6 n5} - b2n5{r1c5 .} ==> r5c8 ≠ 1
whip[7]: c7n9{r3 r9} - c7n6{r9 r7} - r7c1{n6 n1} - r7c5{n1 n5} - r2n5{c5 c9} - r5n5{c9 c8} - c8n4{r5 .} ==> r3c7 ≠ 4
whip[7]: r2n5{c5 c9} - r2n8{c9 c8} - r7n8{c8 c6} - r7n5{c6 c3} - r7n3{c3 c8} - r7n7{c8 c7} - r2n7{c7 .} ==> r4c5 ≠ 5
naked-single ==> r4c5 = 9
hidden-single-in-a-block ==> r5c3 = 9
hidden-single-in-a-block ==> r2c1 = 9
whip[1]: c1n4{r9 .} ==> r8c3 ≠ 4, r9c3 ≠ 4
whip[1]: r3n9{c9 .} ==> r1c9 ≠ 9
hidden-pairs-in-a-row: r5{n2 n6}{c2 c6} ==> r5c6 ≠ 7, r5c6 ≠ 4, r5c2 ≠ 7, r5c2 ≠ 1
whip[1]: r5n1{c9 .} ==> r4c7 ≠ 1
hidden-pairs-in-a-column: c2{n5 n7}{r6 r9} ==> r9c2 ≠ 8, r9c2 ≠ 3, r9c2 ≠ 2
hidden-single-in-a-block ==> r8c2 = 8
whip[1]: c2n1{r3 .} ==> r3c3 ≠ 1
whip[1]: b7n3{r9c3 .} ==> r2c3 ≠ 3, r3c3 ≠ 3
whip[4]: r7c1{n6 n1} - r4c1{n1 n8} - r4c7{n8 n7} - r7c7{n7 .} ==> r7c5 ≠ 6
finned-x-wing-in-columns: n6{c5 c1}{r6 r9} ==> r9c3 ≠ 6
biv-chain[3]: c5n6{r6 r9} - c5n1{r9 r7} - r7c1{n1 n6} ==> r6c1 ≠ 6
whip[1]: c1n6{r9 .} ==> r8c3 ≠ 6
finned-swordfish-in-columns: n6{c3 c5 c7}{r3 r6 r9} ==> r9c8 ≠ 6
whip[4]: r3n3{c5 c2} - c2n1{r3 r1} - r1n6{c2 c8} - r1n4{c8 .} ==> r3c5 ≠ 4
whip[5]: c9n8{r9 r2} - r2n5{c9 c5} - r7c5{n5 n1} - r7c1{n1 n6} - r7c7{n6 .} ==> r9c9 ≠ 7
biv-chain[4]: r7c5{n1 n5} - r2n5{c5 c9} - c9n7{r2 r5} - r5n1{c9 c7} ==> r7c7 ≠ 1
biv-chain[4]: r4c1{n1 n8} - r4c7{n8 n7} - r7c7{n7 n6} - r7c1{n6 n1} ==> r8c1 ≠ 1, r9c1 ≠ 1
biv-chain[4]: r7c7{n7 n6} - r7c1{n6 n1} - r4c1{n1 n8} - r4c7{n8 n7} ==> r2c7 ≠ 7, r5c7 ≠ 7, r6c7 ≠ 7
naked-pairs-in-a-row: r2{c3 c7}{n2 n4} ==> r2c8 ≠ 4, r2c5 ≠ 4, r2c5 ≠ 2, r2c2 ≠ 2
naked-single ==> r2c2 = 3
naked-single ==> r2c5 = 5
naked-single ==> r7c5 = 1
naked-single ==> r7c1 = 6
naked-single ==> r7c7 = 7
naked-single ==> r4c7 = 8
naked-single ==> r4c1 = 1
naked-single ==> r6c7 = 4
naked-single ==> r2c7 = 2
naked-single ==> r2c3 = 4
naked-single ==> r5c7 = 1
hidden-single-in-a-row ==> r3c8 = 4
hidden-single-in-a-row ==> r5c4 = 4
naked-single ==> r1c4 = 9
naked-single ==> r8c4 = 3
hidden-single-in-a-block ==> r4c6 = 3
hidden-single-in-a-block ==> r6c1 = 8
hidden-single-in-a-block ==> r3c5 = 3
whip[1]: r3n2{c3 .} ==> r1c2 ≠ 2
whip[1]: c1n2{r9 .} ==> r8c3 ≠ 2, r9c3 ≠ 2
naked-single ==> r8c3 = 1
naked-single ==> r8c8 = 6
naked-single ==> r9c7 = 9
naked-single ==> r3c7 = 6
naked-single ==> r3c3 = 2
naked-single ==> r3c2 = 1
naked-single ==> r1c2 = 6
naked-single ==> r5c2 = 2
naked-single ==> r5c6 = 6
naked-single ==> r6c5 = 2
naked-single ==> r1c5 = 4
naked-single ==> r1c6 = 2
naked-single ==> r9c5 = 6
naked-single ==> r3c9 = 9
naked-single ==> r8c9 = 2
naked-single ==> r8c1 = 4
naked-single ==> r8c6 = 9
naked-single ==> r9c1 = 2
hidden-single-in-a-block ==> r9c6 = 4
hidden-single-in-a-row ==> r6c3 = 6
finned-x-wing-in-columns: n5{c4 c3}{r4 r9} ==> r9c2 ≠ 5
naked-single ==> r9c2 = 7
naked-single ==> r6c2 = 5
naked-single ==> r4c3 = 7
naked-single ==> r4c4 = 5
naked-single ==> r9c4 = 8
naked-single ==> r3c4 = 7
naked-single ==> r3c6 = 8
naked-single ==> r7c6 = 5
naked-single ==> r7c3 = 3
naked-single ==> r7c8 = 8
naked-single ==> r2c8 = 7
naked-single ==> r2c9 = 8
naked-single ==> r5c8 = 5
naked-single ==> r1c8 = 1
naked-single ==> r1c9 = 5
naked-single ==> r9c8 = 3
naked-single ==> r5c9 = 7
naked-single ==> r9c3 = 5
naked-single ==> r9c9 = 1
naked-single ==> r6c6 = 7
GRID 0 SOLVED. rating-type = gW+SFin, MOST COMPLEX RULE TRIED = gW[16]
768942315
934651278
512738649
147593826
329486157
856127493
693215784
481379562
275864931
Puzzle 7.8...3.....6.1...5.........4.....263...8.......1...9..9.2....4....7.5........... :
init-time = 0.19s, solve-time = 10h 39m 50.91s, total-time = 10h 39m 51.1s
nb-facts=<Fact-438106>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = gW+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

