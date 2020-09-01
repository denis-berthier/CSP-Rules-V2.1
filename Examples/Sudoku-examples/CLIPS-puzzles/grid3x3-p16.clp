;;; The puzzle is: 
;;;
;;;    2 * *  * * *  * 3 *
;;;    * 8 *  * 3 *  7 * *
;;;    * 7 *  * 9 4  5 * *
;;;
;;;    1 * *  * * 7  * 8 6
;;;    * * 5  * * *  9 * *
;;;    8 2 *  3 * *  * * 1
;;;
;;;    * * 2  5 1 *  * 4 *
;;;    * * 6  * 8 *  * 2 *
;;;    * 1 *  * * *  * * 5
;;;
;;; The solution is: 
;;;
;;;    2 5 4  6 7 1  8 3 9
;;;    9 8 1  2 3 5  7 6 4
;;;    6 7 3  8 9 4  5 1 2
;;;
;;;    1 3 9  4 5 7  2 8 6
;;;    4 6 5  1 2 8  9 7 3
;;;    8 2 7  3 6 9  4 5 1
;;;
;;;    7 9 2  5 1 6  3 4 8
;;;    5 4 6  9 8 3  1 2 7
;;;    3 1 8  7 4 2  6 9 5
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


(bind ?override "(progn
(bind ?*Subsets* TRUE)
(bind ?*FinnedFish* TRUE)
(bind ?*Bivalue-Chains* TRUE)
(bind ?*Whips* TRUE)
(bind ?*z-Chains* TRUE)
(bind ?*t-Whips* TRUE)
)")
(batch "SudoRules-V20.1-config.clp")
----LOAD-COMPLETE----
(solve "2......3..8..3.7...7..945..1....7.86..5...9..82.3....1..251..4...6.8..2..1......5")
#### BEGIN EXPECTED ####
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
#***  Using CLIPS 6.32-r768
#***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
2......3..8..3.7...7..945..1....7.86..5...9..82.3....1..251..4...6.8..2..1......5
28 givens, 170 candidates
entering BRT
naked-single ==> r6c7 = 4
naked-single ==> r5c8 = 7
naked-single ==> r6c8 = 5
naked-single ==> r6c5 = 6
naked-single ==> r6c6 = 9
naked-single ==> r6c3 = 7
naked-single ==> r8c6 = 3
naked-single ==> r7c6 = 6
naked-single ==> r9c6 = 2
naked-single ==> r8c7 = 1
hidden-single-in-a-column ==> r9c3 = 8
hidden-single-in-a-column ==> r4c7 = 2
naked-single ==> r4c4 = 4
naked-single ==> r4c5 = 5
naked-single ==> r1c5 = 7
naked-single ==> r9c5 = 4
naked-single ==> r5c5 = 2
naked-single ==> r5c9 = 3
Starting_init_links_with_<Fact-3648>
108 candidates, 320 csp-links and 320 links. Density = 5.54%
starting non trivial part of solution
Entering_level_W1_with_<Fact-4815>
whip[1]: c3n4{r2 .} ==> r2c1 ≠ 4, r1c2 ≠ 4
Entering_relation_bivalue_with_<Fact-4818>
Entering_level_S2_with_<Fact-4985>
naked-pairs-in-a-row: r8{c4 c9}{n7 n9} ==> r8c2 ≠ 9, r8c1 ≠ 9, r8c1 ≠ 7
naked-pairs-in-a-column: c2{r4 r7}{n3 n9} ==> r1c2 ≠ 9
hidden-pairs-in-a-row: r3{n2 n8}{c4 c9} ==> r3c4 ≠ 6, r3c4 ≠ 1
hidden-pairs-in-a-row: r1{n4 n9}{c3 c9} ==> r1c9 ≠ 8, r1c3 ≠ 1
whip[1]: r1n1{c6 .} ==> r2c4 ≠ 1, r2c6 ≠ 1
naked-single ==> r2c6 = 5
hidden-single-in-a-row ==> r1c2 = 5
naked-single ==> r8c2 = 4
naked-single ==> r5c2 = 6
naked-single ==> r5c1 = 4
naked-single ==> r8c1 = 5
Entering_level_BC2_with_<Fact-5143>
Entering_level_Z2_with_<Fact-5962>
Entering_level_tW2_with_<Fact-6284>
Entering_level_W2_with_<Fact-6285>
Entering_level_S3_with_<Fact-6286>
Entering_level_BC3_with_<Fact-6322>
biv-chain[3]: r3c1{n6 n3} - r9n3{c1 c7} - b9n6{r9c7 r9c8} ==> r3c8 ≠ 6
naked-single ==> r3c8 = 1
naked-single ==> r3c3 = 3
naked-single ==> r3c1 = 6
naked-single ==> r2c1 = 9
naked-single ==> r1c3 = 4
naked-single ==> r1c9 = 9
naked-single ==> r8c9 = 7
naked-single ==> r7c9 = 8
naked-single ==> r3c9 = 2
naked-single ==> r2c9 = 4
naked-single ==> r3c4 = 8
naked-single ==> r1c6 = 1
naked-single ==> r1c4 = 6
naked-single ==> r1c7 = 8
naked-single ==> r2c4 = 2
naked-single ==> r5c6 = 8
naked-single ==> r5c4 = 1
naked-single ==> r7c7 = 3
naked-single ==> r7c1 = 7
naked-single ==> r9c1 = 3
naked-single ==> r7c2 = 9
naked-single ==> r4c2 = 3
naked-single ==> r9c7 = 6
naked-single ==> r9c8 = 9
naked-single ==> r9c4 = 7
naked-single ==> r8c4 = 9
naked-single ==> r2c3 = 1
naked-single ==> r2c8 = 6
naked-single ==> r4c3 = 9
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = BC[3]
254671839
981235764
673894512
139457286
465128973
827369451
792516348
546983127
318742695
Puzzle 2......3..8..3.7...7..945..1....7.86..5...9..82.3....1..251..4...6.8..2..1......5 :
#init-time = 0.19s, solve-time = 0.15s, total-time = 0.34s
nb-facts=<Fact-6426>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
#***  Using CLIPS 6.32-r768
#***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
#### END EXPECTED ####
