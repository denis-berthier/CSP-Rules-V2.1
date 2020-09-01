;;;The puzzle is:
;;;
;;;    * * *  9 7 *  * * 5
;;;    * * *  6 * *  8 3 *
;;;    * 1 *  * * *  * * 4
;;;
;;;    1 * 9  * 6 2  * * *
;;;    2 * 6  * * *  9 * 3
;;;    * * *  5 9 *  2 * 1
;;;
;;;    8 * *  * * *  * 4 *
;;;    * 7 1  * * 9  * * *
;;;    4 * *  * 3 8  * * *
;;;
;;; The solution is: 
;;;
;;;    6 8 4  9 7 3  1 2 5
;;;    9 2 5  6 4 1  8 3 7
;;;    3 1 7  2 8 5  6 9 4
;;;
;;;    1 5 9  3 6 2  4 7 8
;;;    2 4 6  8 1 7  9 5 3
;;;    7 3 8  5 9 4  2 6 1
;;;
;;;    8 9 3  1 5 6  7 4 2
;;;    5 7 1  4 2 9  3 8 6
;;;    4 6 2  7 3 8  5 1 9
;;;
;;; Rules used:
;;;
;;;    Naked Single
;;;    Hidden Single
;;;    Locked Candidate Single Line
;;;    Locked Candidate Multiple Lines
;;;    Naked Pairs

(bind ?override "(progn
(bind ?*Subsets* TRUE)
(bind ?*FinnedFish* TRUE)
)")
(batch "SudoRules-V20.1-config.clp")
----LOAD-COMPLETE----
(solve "...97...5...6..83..1......41.9.62...2.6...9.3...59.2.18......4..71..9...4...38...")
#### BEGIN EXPECTED ####
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
#***  Using CLIPS 6.32-r768
#***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
...97...5...6..83..1......41.9.62...2.6...9.3...59.2.18......4..71..9...4...38...
28 givens, 179 candidates
entering BRT
hidden-single-in-a-column ==> r7c6 = 6
hidden-single-in-a-row ==> r6c8 = 6
hidden-single-in-a-column ==> r4c7 = 4
Starting_init_links_with_<Fact-3641>
163 candidates, 785 csp-links and 785 links. Density = 5.95%
starting non trivial part of solution
Entering_level_W1_with_<Fact-6530>
whip[1]: c9n6{r9 .} ==> r9c7 ≠ 6, r8c7 ≠ 6
whip[1]: c7n5{r9 .} ==> r9c8 ≠ 5, r8c8 ≠ 5
whip[1]: c6n7{r6 .} ==> r5c4 ≠ 7, r4c4 ≠ 7
whip[1]: r4n7{c9 .} ==> r5c8 ≠ 7
hidden-single-in-a-row ==> r5c6 = 7
whip[1]: c6n1{r2 .} ==> r2c5 ≠ 1
hidden-single-in-a-row ==> r2c6 = 1
hidden-single-in-a-column ==> r3c6 = 5
whip[1]: r6n8{c3 .} ==> r5c2 ≠ 8, r4c2 ≠ 8
whip[1]: c1n9{r3 .} ==> r2c2 ≠ 9
whip[1]: r1n8{c3 .} ==> r3c3 ≠ 8
whip[1]: b4n5{r5c2 .} ==> r9c2 ≠ 5, r2c2 ≠ 5, r7c2 ≠ 5
Entering_relation_bivalue_with_<Fact-6552>
Entering_level_S2_with_<Fact-6725>
naked-pairs-in-a-row: r2{c2 c5}{n2 n4} ==> r2c9 ≠ 2, r2c3 ≠ 4, r2c3 ≠ 2
whip[1]: c9n2{r9 .} ==> r8c8 ≠ 2, r9c8 ≠ 2
naked-single ==> r8c8 = 8
naked-single ==> r5c8 = 5
naked-single ==> r4c8 = 7
naked-single ==> r4c9 = 8
naked-single ==> r4c4 = 3
naked-single ==> r4c2 = 5
naked-single ==> r6c6 = 4
naked-single ==> r1c6 = 3
naked-single ==> r1c1 = 6
naked-single ==> r1c7 = 1
naked-single ==> r1c8 = 2
naked-single ==> r3c8 = 9
naked-single ==> r2c9 = 7
naked-single ==> r2c3 = 5
naked-single ==> r2c1 = 9
naked-single ==> r9c3 = 2
naked-single ==> r7c3 = 3
naked-single ==> r3c3 = 7
naked-single ==> r3c1 = 3
naked-single ==> r6c1 = 7
naked-single ==> r6c3 = 8
naked-single ==> r1c3 = 4
naked-single ==> r1c2 = 8
naked-single ==> r2c2 = 2
naked-single ==> r2c5 = 4
naked-single ==> r6c2 = 3
naked-single ==> r7c2 = 9
naked-single ==> r7c9 = 2
naked-single ==> r8c9 = 6
naked-single ==> r9c9 = 9
naked-single ==> r9c2 = 6
naked-single ==> r8c1 = 5
naked-single ==> r8c5 = 2
naked-single ==> r3c5 = 8
naked-single ==> r3c4 = 2
naked-single ==> r5c5 = 1
naked-single ==> r5c4 = 8
naked-single ==> r7c5 = 5
naked-single ==> r7c7 = 7
naked-single ==> r7c4 = 1
naked-single ==> r9c4 = 7
naked-single ==> r9c7 = 5
naked-single ==> r8c4 = 4
naked-single ==> r8c7 = 3
naked-single ==> r3c7 = 6
naked-single ==> r9c8 = 1
naked-single ==> r5c2 = 4
GRID 0 SOLVED. rating-type = SFin, MOST COMPLEX RULE TRIED = NP
684973125
925641837
317285694
159362478
246817953
738594261
893156742
571429386
462738519
Puzzle ...97...5...6..83..1......41.9.62...2.6...9.3...59.2.18......4..71..9...4...38... :
#init-time = 0.19s, solve-time = 0.11s, total-time = 0.3s
nb-facts=<Fact-6777>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = SFin
#***  Using CLIPS 6.32-r768
#***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
#### END EXPECTED ####
