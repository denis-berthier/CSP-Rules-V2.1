
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







#89 SER= 9.3

...3..5..
.5..1..3.
..7..4..1
2.....4..
.6..9....
..1..6..2
8..7..2..
.9..8..5.
..5..9..7


#89 is the only puzzle in this collection that cannot be solved by whips but that can be solved by braids, because it is in T&E (see at the end).


---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

WITH BRAIDS

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

Braids generally imply long computation times and large memory requirements. They justify choosing "memory" for the chain-rules-optimisation-type.


(solve "...3..5...5..1..3...7..4..12.....4...6..9......1..6..28..7..2...9..8..5...5..9..7")

***********************************************************************************************
***  SudoRules 20.1.m based on CSP-Rules 2.1.m, config = B+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
...3..5...5..1..3...7..4..12.....4...6..9......1..6..28..7..2...9..8..5...5..9..7
24 givens, 218 candidates
entering BRT
hidden-single-in-a-row ==> r8c1 = 7
Starting_init_links_with_<Fact-3674>
212 candidates, 1302 csp-links and 1302 links. Density = 5.82%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8533>
Entering_relation_bivalue_with_<Fact-8534>
Entering_level_S2_with_<Fact-8597>
finned-x-wing-in-rows: n7{r2 r5}{c6 c7} ==> r6c7 ≠ 7
Entering_level_BC2_with_<Fact-8607>
Entering_level_W2_with_<Fact-8649>
Entering_level_S3_with_<Fact-8929>
swordfish-in-columns: n2{c2 c5 c8}{r3 r9 r1} ==> r9c4 ≠ 2, r3c4 ≠ 2, r1c6 ≠ 2, r1c3 ≠ 2
Entering_level_BC3_with_<Fact-9014>
biv-chain[3]: c9n5{r4 r5} - b4n5{r5c1 r6c1} - b4n9{r6c1 r4c3} ==> r4c9 ≠ 9
Entering_level_W3_with_<Fact-9093>
whip[3]: c1n9{r3 r6} - c7n9{r6 r3} - c4n9{r3 .} ==> r2c3 ≠ 9
Entering_level_B3 with <Fact-9431>
Entering_level_S4_with_<Fact-9594>
Entering_level_BC4_with_<Fact-9598>
biv-chain[4]: r4n6{c8 c9} - b6n5{r4c9 r5c9} - b4n5{r5c1 r6c1} - b4n9{r6c1 r4c3} ==> r4c8 ≠ 9
hidden-single-in-a-row ==> r4c3 = 9
Entering_level_W4_with_<Fact-9691>
Entering_level_B4_with_<Fact-10013>
Entering_level_BC5_with_<Fact-10248>
Entering_level_W5_with_<Fact-10250>
Entering_level_B5_with_<Fact-10546>
Entering_level_BC6_with_<Fact-10984>
Entering_level_W6_with_<Fact-10986>
Entering_level_B6_with_<Fact-11256>
Entering_level_BC7_with_<Fact-11943>
Entering_level_W7_with_<Fact-11945>
whip[7]: r7n9{c9 c8} - r1n9{c8 c1} - r3n9{c1 c4} - r3n5{c4 c5} - r7n5{c5 c6} - r7n1{c6 c2} - r1n1{c2 .} ==> r2c9 ≠ 9
Entering_level_B7_with_<Fact-12421>
Entering_level_BC8_with_<Fact-13566>
Entering_level_W8_with_<Fact-13568>
Entering_level_B8_with_<Fact-13891>
braid[8]: r1n9{c9 c1} - r3n9{c1 c4} - r3n5{c4 c5} - r7n5{c5 c6} - r1n1{c1 c2} - c7n7{r2 r5} - r7n1{c2 c8} - c7n1{r9 .} ==> r2c7 ≠ 9
Entering_level_BC9_with_<Fact-16628>
Entering_level_W9_with_<Fact-16630>
Entering_level_B9_with_<Fact-16891>
Entering_level_BC10_with_<Fact-19866>
Entering_level_W10_with_<Fact-19868>
Entering_level_B10_with_<Fact-20191>
braid[10]: b3n7{r2c7 r1c8} - r1c6{n7 n8} - c3n8{r1 r5} - r9n8{c7 c8} - c8n4{r1 r7} - r7n9{c8 c9} - r1n9{c8 c1} - r1n1{c1 c2} - r7c2{n1 n3} - c3n3{r8 .} ==> r2c7 ≠ 8
Entering_level_BC11_with_<Fact-25791>
Entering_level_W11_with_<Fact-25793>
Entering_level_B11_with_<Fact-25840>
braid[11]: c9n9{r7 r1} - c7n9{r3 r6} - c7n3{r6 r5} - c3n3{r5 r8} - c7n7{r5 r2} - c3n2{r8 r2} - r2c6{n7 n8} - r1c6{n8 n7} - r5n7{c6 c8} - r6c8{n7 n8} - c9n8{r5 .} ==> r7c9 ≠ 3
braid[10]: r4n6{c8 c9} - c9n5{r4 r5} - c9n3{r5 r8} - r5n7{c8 c6} - r1c6{n7 n8} - c9n8{r5 r2} - r3n8{c8 c2} - r4c2{n8 n3} - c6n3{r8 r7} - c3n3{r8 .} ==> r4c8 ≠ 7
Entering_level_BC12_with_<Fact-28913>
Entering_level_W12_with_<Fact-28915>
Entering_level_B12_with_<Fact-29024>
braid[12]: c7n9{r3 r6} - r9n8{c7 c8} - r6c8{n9 n7} - r5n7{c8 c6} - r1c6{n7 n8} - r2c6{n8 n2} - r5c8{n8 n1} - c5n2{r1 r9} - c3n2{r2 r8} - r5c7{n1 n3} - c3n3{r5 r7} - r9n3{c7 .} ==> r3c7 ≠ 8
whip[8]: r2c7{n7 n6} - r3c7{n6 n9} - r1n9{c8 c1} - c1n1{r1 r9} - c1n6{r9 r3} - r2c1{n6 n4} - r1c3{n4 n8} - r1c6{n8 .} ==> r2c6 ≠ 7
hidden-single-in-a-row ==> r2c7 = 7
whip[4]: r5n7{c8 c6} - r1c6{n7 n8} - c3n8{r1 r2} - c9n8{r2 .} ==> r5c8 ≠ 8
braid[9]: c4n9{r2 r3} - r3c7{n9 n6} - r2n9{c4 c1} - r2n6{c9 c3} - c3n2{r2 r8} - r2n4{c3 c9} - r8n4{c9 c4} - c4n6{r8 r9} - c1n6{r9 .} ==> r2c4 ≠ 2
braid[9]: c4n9{r2 r3} - r3c7{n9 n6} - r2n9{c4 c1} - r2n6{c9 c3} - c3n2{r2 r8} - r2c9{n8 n4} - r8n4{c9 c4} - c4n6{r8 r9} - c1n6{r9 .} ==> r2c4 ≠ 8
braid[11]: c4n2{r5 r8} - b6n1{r5c8 r4c8} - r4n6{c8 c9} - c9n5{r4 r5} - c9n3{r5 r8} - r8n4{c9 c3} - r8n6{c9 c7} - b9n1{r9c8 r9c7} - c1n1{r9 r1} - r3c7{n6 n9} - r1n9{c9 .} ==> r5c4 ≠ 1
whip[8]: r8n1{c6 c7} - r5n1{c7 c8} - r5n7{c8 c6} - c6n5{r5 r4} - r4c5{n5 n3} - b8n3{r7c5 r8c6} - c9n3{r8 r5} - c9n5{r5 .} ==> r7c6 ≠ 1
whip[8]: c1n1{r1 r9} - r7n1{c2 c8} - r7n9{c8 c9} - r1n9{c9 c8} - c8n4{r1 r9} - r9c4{n4 n6} - r2n6{c4 c9} - r3c7{n6 .} ==> r1c1 ≠ 6
whip[8]: c1n1{r1 r9} - r7n1{c2 c8} - r7n9{c8 c9} - r1n9{c9 c8} - r3c7{n9 n6} - r1c9{n6 n8} - r1c3{n8 n6} - b7n6{r7c3 .} ==> r1c1 ≠ 4
whip[10]: r4n6{c8 c9} - c9n5{r4 r5} - c9n3{r5 r8} - r8c7{n3 n1} - r9c7{n1 n8} - r5c7{n8 n3} - c3n3{r5 r7} - b7n6{r7c3 r8c3} - b8n6{r8c4 r7c5} - r1n6{c5 .} ==> r9c8 ≠ 6
braid[10]: r3c7{n6 n9} - r1n9{c8 c1} - c1n1{r1 r9} - r9c4{n1 n4} - r9c8{n4 n8} - r7n1{c2 c8} - c1n6{r9 r2} - c8n4{r9 r1} - r3n8{c8 c2} - r1c3{n8 .} ==> r3c4 ≠ 6
whip[4]: c4n6{r9 r2} - c1n6{r2 r3} - r3c7{n6 n9} - c4n9{r3 .} ==> r9c5 ≠ 6
whip[10]: r4n6{c8 c9} - c9n5{r4 r5} - c9n3{r5 r8} - r8c7{n3 n1} - b8n1{r8c6 r9c4} - b8n6{r9c4 r8c4} - r8n4{c4 c3} - b7n6{r8c3 r9c1} - r2n6{c1 c3} - c3n2{r2 .} ==> r7c8 ≠ 6
;;; This is were much memory starts to be required and much time is spent with nothing (apparently) happening. It means the following whip[11] was found after examining many improductive partial-whips[1Ø].
whip[11]: r3c7{n6 n9} - r1n9{c8 c1} - r1n1{c1 c2} - r1n2{c2 c5} - r2c6{n2 n8} - r2c9{n8 n4} - b1n4{r2c1 r1c3} - r8n4{c3 c4} - b8n2{r8c4 r8c6} - r8n1{c6 c7} - r7n1{c8 .} ==> r1c8 ≠ 6
whip[5]: c8n6{r4 r3} - r3c7{n6 n9} - r1n9{c8 c1} - r1n1{c1 c2} - r7n1{c2 .} ==> r4c8 ≠ 1
whip[1]: b6n1{r5c8 .} ==> r5c6 ≠ 1
whip[5]: r5n1{c7 c8} - r5n7{c8 c6} - r1c6{n7 n8} - c3n8{r1 r2} - c9n8{r2 .} ==> r5c7 ≠ 8
biv-chain[4]: c7n8{r9 r6} - b6n9{r6c7 r6c8} - c8n7{r6 r5} - b6n1{r5c8 r5c7} ==> r9c7 ≠ 1
whip[5]: r5c7{n1 n3} - b9n3{r8c7 r8c9} - c3n3{r8 r7} - c6n3{r7 r4} - c6n1{r4 .} ==> r8c7 ≠ 1
hidden-single-in-a-column ==> r5c7 = 1
naked-single ==> r5c8 = 7
whip[1]: r8n1{c6 .} ==> r9c4 ≠ 1
braid[7]: r8c7{n6 n3} - c3n2{r8 r2} - r2c6{n2 n8} - r8c9{n6 n4} - r2c9{n8 n6} - b9n6{r8c9 r9c7} - c4n6{r9 .} ==> r8c3 ≠ 6
whip[5]: b7n6{r7c3 r9c1} - r9c4{n6 n4} - b5n4{r5c4 r6c5} - c2n4{r6 r1} - c8n4{r1 .} ==> r7c3 ≠ 4
whip[5]: r7n9{c9 c8} - r7n1{c8 c2} - r7n4{c2 c5} - r9c4{n4 n6} - b7n6{r9c1 .} ==> r7c9 ≠ 6
whip[2]: r7n6{c3 c5} - b2n6{r1c5 .} ==> r2c3 ≠ 6
braid[6]: b7n6{r9c1 r7c3} - r8c7{n6 n3} - c3n3{r8 r5} - r6n3{c7 c5} - r9c4{n6 n4} - c5n4{r9 .} ==> r9c7 ≠ 6
whip[1]: b9n6{r8c9 .} ==> r8c4 ≠ 6
;;; 19,23 + 13, 18 GB
whip[8]: c2n7{r6 r4} - b4n8{r4c2 r5c3} - r5n4{c3 c4} - r9c4{n4 n6} - r7n6{c5 c3} - r1c3{n6 n4} - b3n4{r1c8 r2c9} - r8n4{c9 .} ==> r6c2 ≠ 4
braid[6]: b4n4{r6c1 r5c3} - b7n6{r9c1 r7c3} - c3n3{r7 r8} - b7n2{r8c3 r9c2} - r9c5{n4 n3} - b9n3{r9c7 .} ==> r9c1 ≠ 4
whip[8]: r7c3{n3 n6} - r9c1{n6 n1} - c8n1{r9 r7} - c2n1{r7 r1} - c2n4{r1 r9} - c8n4{r9 r1} - r1n2{c8 c5} - r9n2{c5 .} ==> r7c2 ≠ 3
naked-triplets-in-a-row: r7{c2 c8 c9}{n4 n1 n9} ==> r7c5 ≠ 4
whip[6]: r8c7{n3 n6} - r3c7{n6 n9} - c4n9{r3 r2} - c4n6{r2 r9} - b7n6{r9c1 r7c3} - r7n3{c3 .} ==> r8c6 ≠ 3
whip[7]: r2c6{n8 n2} - c5n2{r1 r9} - c5n4{r9 r6} - r6n7{c5 c2} - r4c2{n7 n3} - r6c1{n3 n5} - r6c4{n5 .} ==> r4c6 ≠ 8
whip[6]: b4n8{r6c2 r5c3} - c6n8{r5 r2} - r2n2{c6 c3} - r3c2{n2 n3} - r4c2{n3 n7} - r6c2{n7 .} ==> r1c2 ≠ 8
whip[7]: r5n2{c4 c6} - r8c6{n2 n1} - r4n1{c6 c4} - b5n8{r4c4 r6c4} - r3c4{n8 n9} - c7n9{r3 r6} - r6c8{n9 .} ==> r5c4 ≠ 5
whip[8]: c4n1{r4 r8} - r8c6{n1 n2} - r2c6{n2 n8} - r3c4{n8 n9} - c7n9{r3 r6} - r6c8{n9 n8} - c4n8{r6 r5} - r5n2{c4 .} ==> r4c4 ≠ 5
whip[7]: c4n6{r9 r2} - c4n9{r2 r3} - c4n5{r3 r6} - b5n4{r6c4 r6c5} - r6c1{n4 n3} - r3c1{n3 n6} - r3c7{n6 .} ==> r9c4 ≠ 4
naked-single ==> r9c4 = 6
naked-single ==> r2c4 = 9
hidden-single-in-a-row ==> r7c3 = 6
whip[1]: r7n3{c6 .} ==> r9c5 ≠ 3
whip[5]: c3n3{r5 r8} - r8c7{n3 n6} - r8c9{n6 n4} - b3n4{r1c9 r1c8} - r1c3{n4 .} ==> r5c3 ≠ 8
whip[1]: b4n8{r6c2 .} ==> r3c2 ≠ 8
hidden-pairs-in-a-column: c2{n7 n8}{r4 r6} ==> r6c2 ≠ 3, r4c2 ≠ 3
biv-chain[3]: r2c6{n2 n8} - r3n8{c4 c8} - b3n2{r3c8 r1c8} ==> r1c5 ≠ 2
whip[4]: b8n4{r8c4 r9c5} - c8n4{r9 r1} - c8n2{r1 r3} - c5n2{r3 .} ==> r8c9 ≠ 4
naked-pairs-in-a-block: b9{r8c7 r8c9}{n3 n6} ==> r9c7 ≠ 3
naked-single ==> r9c7 = 8
whip[1]: r9n3{c2 .} ==> r8c3 ≠ 3
hidden-single-in-a-column ==> r5c3 = 3
whip[1]: b4n4{r6c1 .} ==> r2c1 ≠ 4
naked-single ==> r2c1 = 6
biv-chain[4]: c5n2{r3 r9} - c5n4{r9 r6} - r6c1{n4 n5} - c4n5{r6 r3} ==> r3c5 ≠ 5
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-row ==> r3c8 = 8
naked-single ==> r2c9 = 4
naked-single ==> r7c9 = 9
naked-single ==> r1c9 = 6
naked-single ==> r1c5 = 7
naked-single ==> r1c6 = 8
naked-single ==> r1c3 = 4
naked-single ==> r8c3 = 2
naked-single ==> r2c3 = 8
naked-single ==> r8c6 = 1
naked-single ==> r8c4 = 4
naked-single ==> r6c4 = 8
naked-single ==> r4c4 = 1
naked-single ==> r5c4 = 2
naked-single ==> r5c6 = 5
naked-single ==> r4c5 = 3
naked-single ==> r4c6 = 7
naked-single ==> r4c2 = 8
naked-single ==> r4c9 = 5
naked-single ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r7c5 = 5
naked-single ==> r5c1 = 4
naked-single ==> r5c9 = 8
naked-single ==> r7c6 = 3
naked-single ==> r6c2 = 7
naked-single ==> r9c5 = 2
naked-single ==> r3c5 = 6
naked-single ==> r2c6 = 2
naked-single ==> r3c7 = 9
naked-single ==> r1c8 = 2
naked-single ==> r1c2 = 1
naked-single ==> r1c1 = 9
naked-single ==> r7c2 = 4
naked-single ==> r7c8 = 1
naked-single ==> r9c8 = 4
naked-single ==> r9c2 = 3
naked-single ==> r3c2 = 2
naked-single ==> r9c1 = 1
naked-single ==> r3c1 = 3
naked-single ==> r6c7 = 3
naked-single ==> r8c7 = 6
naked-single ==> r8c9 = 3
naked-single ==> r4c8 = 6
naked-single ==> r6c8 = 9
GRID 0 SOLVED. rating-type = B+SFin, MOST COMPLEX RULE TRIED = B[12]
914378526
658912734
327564981
289137465
463295178
571846392
846753219
792481653
135629847
Puzzle ...3..5...5..1..3...7..4..12.....4...6..9......1..6..28..7..2...9..8..5...5..9..7 :
init-time = 0.2s, solve-time = 7h 4m 6.11s, total-time = 7h 4m 6.31s
nb-facts=<Fact-356757>
***********************************************************************************************
***  SudoRules 20.1.m based on CSP-Rules 2.1.m, config = B+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
18,74 + 15,02 GB





---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

"FAST" T&E SOLUTION, JUST TO SHOW HOW IT LOOKS LIKE

---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------

Observe that two phases (that re-try the same candidates) are needed to reach a solution.
In some cases, more than two phases are needed.

(solve "...3..5...5..1..3...7..4..12.....4...6..9......1..6..28..7..2...9..8..5...5..9..7")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = T&E(1)
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
...3..5...5..1..3...7..4..12.....4...6..9......1..6..28..7..2...9..8..5...5..9..7
24 givens, 218 candidates
entering BRT
hidden-single-in-a-row ==> r8c1 = 7
212 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution

*** STARTING T&E IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining ***

        STARTING PHASE 1 IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining

GENERATING CONTEXT 1 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c8.
entering BRT for context 1
NO CONTRADICTION FOUND IN CONTEXT 1.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 2 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c8.
entering BRT for context 2
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-block ==> r4c3 = 9
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 2.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 3 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c8.
entering BRT for context 3
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 3.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 4 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c8.
entering BRT for context 4
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
hidden-single-in-a-column ==> r5c7 = 1
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 4.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 5 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c7.
entering BRT for context 5
NO CONTRADICTION FOUND IN CONTEXT 5.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 6 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c7.
entering BRT for context 6
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 6.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 7 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c7.
entering BRT for context 7
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 7.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 8 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c7.
entering BRT for context 8
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 8.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 9 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c5.
entering BRT for context 9
NO CONTRADICTION FOUND IN CONTEXT 9.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 10 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c5.
entering BRT for context 10
NO CONTRADICTION FOUND IN CONTEXT 10.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 11 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c5.
entering BRT for context 11
NO CONTRADICTION FOUND IN CONTEXT 11.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 12 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c5.
entering BRT for context 12
hidden-single-in-a-row ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 12.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 13 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c4.
entering BRT for context 13
NO CONTRADICTION FOUND IN CONTEXT 13.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 14 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c4.
entering BRT for context 14
hidden-single-in-a-column ==> r6c5 = 4
NO CONTRADICTION FOUND IN CONTEXT 14.
BACK IN CONTEXT 0 with 25 csp-variables solved and 212 candidates remaining.

GENERATING CONTEXT 15 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c4.
entering BRT for context 15
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-row ==> r2c3 = 2
NO POSSIBLE VALUE for csp-variable 322 IN CONTEXT 15. RETRACTING CANDIDATE n2r9c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 16 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c4.
entering BRT for context 16
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
hidden-single-in-a-block ==> r8c7 = 1
NO CONTRADICTION FOUND IN CONTEXT 16.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 17 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c2.
entering BRT for context 17
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 17.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 18 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c2.
entering BRT for context 18
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 18.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 19 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c2.
entering BRT for context 19
NO CONTRADICTION FOUND IN CONTEXT 19.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 20 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c2.
entering BRT for context 20
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 20.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 21 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c1.
entering BRT for context 21
hidden-single-in-a-column ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 21.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 22 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c1.
entering BRT for context 22
hidden-single-in-a-column ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 22.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 23 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c1.
entering BRT for context 23
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-row ==> r3c2 = 3
NO CONTRADICTION FOUND IN CONTEXT 23.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 24 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c1.
entering BRT for context 24
hidden-single-in-a-row ==> r1c2 = 1
NO CONTRADICTION FOUND IN CONTEXT 24.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 25 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c9.
entering BRT for context 25
hidden-single-in-a-row ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 25.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 26 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r8c9.
entering BRT for context 26
hidden-single-in-a-column ==> r1c8 = 4
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
NO CONTRADICTION FOUND IN CONTEXT 26.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 27 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c9.
entering BRT for context 27
NO CONTRADICTION FOUND IN CONTEXT 27.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 28 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c7.
entering BRT for context 28
NO CONTRADICTION FOUND IN CONTEXT 28.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 29 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c7.
entering BRT for context 29
NO CONTRADICTION FOUND IN CONTEXT 29.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 30 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c7.
entering BRT for context 30
NO CONTRADICTION FOUND IN CONTEXT 30.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 31 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c6.
entering BRT for context 31
NO CONTRADICTION FOUND IN CONTEXT 31.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 32 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r8c6.
entering BRT for context 32
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 32.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 33 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c6.
entering BRT for context 33
NO CONTRADICTION FOUND IN CONTEXT 33.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 34 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c4.
entering BRT for context 34
NO CONTRADICTION FOUND IN CONTEXT 34.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 35 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r8c4.
entering BRT for context 35
hidden-single-in-a-column ==> r6c5 = 4
NO CONTRADICTION FOUND IN CONTEXT 35.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 36 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r8c4.
entering BRT for context 36
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 36.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 37 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c4.
entering BRT for context 37
NO CONTRADICTION FOUND IN CONTEXT 37.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 38 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c3.
entering BRT for context 38
hidden-single-in-a-block ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 38.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 39 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r8c3.
entering BRT for context 39
hidden-single-in-a-block ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 39.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 40 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c3.
entering BRT for context 40
hidden-single-in-a-block ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 40.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 41 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r8c3.
entering BRT for context 41
hidden-single-in-a-row ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 41.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 42 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c9.
entering BRT for context 42
NO CONTRADICTION FOUND IN CONTEXT 42.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 43 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c9.
entering BRT for context 43
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-row ==> r7c8 = 9
NO CONTRADICTION FOUND IN CONTEXT 43.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 44 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c9.
entering BRT for context 44
hidden-single-in-a-column ==> r1c8 = 4
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-row ==> r7c8 = 9
NO CONTRADICTION FOUND IN CONTEXT 44.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 45 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c9.
entering BRT for context 45
hidden-single-in-a-row ==> r7c8 = 9
NO CONTRADICTION FOUND IN CONTEXT 45.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 46 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c8.
entering BRT for context 46
NO CONTRADICTION FOUND IN CONTEXT 46.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 47 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c8.
entering BRT for context 47
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-block ==> r4c3 = 9
hidden-single-in-a-row ==> r7c9 = 9
hidden-single-in-a-column ==> r8c9 = 3
naked-single ==> r8c7 = 1
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 4
naked-single ==> r8c6 = 2
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-block ==> r5c4 = 2
hidden-single-in-a-row ==> r2c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 47.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 48 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c8.
entering BRT for context 48
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 48.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 49 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c8.
entering BRT for context 49
hidden-single-in-a-column ==> r5c7 = 1
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 49.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 50 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c6.
entering BRT for context 50
NO CONTRADICTION FOUND IN CONTEXT 50.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 51 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c6.
entering BRT for context 51
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-row ==> r6c1 = 5
hidden-single-in-a-block ==> r4c3 = 9
hidden-single-in-a-block ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 51.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 52 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c6.
entering BRT for context 52
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-row ==> r6c1 = 5
hidden-single-in-a-block ==> r4c3 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r8c7 = 1
NO CONTRADICTION FOUND IN CONTEXT 52.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 53 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c5.
entering BRT for context 53
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 53.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 54 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c5.
entering BRT for context 54
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-row ==> r6c1 = 5
hidden-single-in-a-block ==> r4c3 = 9
hidden-single-in-a-block ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 54.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 55 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c5.
entering BRT for context 55
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 55.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 56 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c5.
entering BRT for context 56
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 56.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 57 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c3.
entering BRT for context 57
NO CONTRADICTION FOUND IN CONTEXT 57.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 58 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c3.
entering BRT for context 58
NO CONTRADICTION FOUND IN CONTEXT 58.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 59 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c3.
entering BRT for context 59
NO CONTRADICTION FOUND IN CONTEXT 59.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 60 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c2.
entering BRT for context 60
NO CONTRADICTION FOUND IN CONTEXT 60.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 61 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c2.
entering BRT for context 61
hidden-single-in-a-row ==> r3c1 = 3
NO CONTRADICTION FOUND IN CONTEXT 61.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 62 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c2.
entering BRT for context 62
hidden-single-in-a-row ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 62.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 63 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c8.
entering BRT for context 63
hidden-single-in-a-row ==> r4c3 = 9
hidden-single-in-a-row ==> r7c9 = 9
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 63.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 64 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c8.
entering BRT for context 64
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 64.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 65 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c8.
entering BRT for context 65
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-column ==> r4c2 = 7
hidden-single-in-a-block ==> r5c6 = 7
hidden-single-in-a-block ==> r5c4 = 2
hidden-single-in-a-block ==> r1c5 = 7
NO CONTRADICTION FOUND IN CONTEXT 65.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 66 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c7.
entering BRT for context 66
hidden-single-in-a-row ==> r4c3 = 9
NO CONTRADICTION FOUND IN CONTEXT 66.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 67 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c7.
entering BRT for context 67
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 67.
BACK IN CONTEXT 0 with 25 csp-variables solved and 211 candidates remaining.

GENERATING CONTEXT 68 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c7.
entering BRT for context 68
hidden-single-in-a-column ==> r1c8 = 7
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-block ==> r2c6 = 7
NO POSSIBLE VALUE for csp-variable 257 IN CONTEXT 68. RETRACTING CANDIDATE n7r6c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 69 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c7.
entering BRT for context 69
NO CONTRADICTION FOUND IN CONTEXT 69.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 70 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c5.
entering BRT for context 70
hidden-single-in-a-column ==> r4c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 70.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 71 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c5.
entering BRT for context 71
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-row ==> r5c1 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r4c3 = 9
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 71.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 72 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c5.
entering BRT for context 72
NO CONTRADICTION FOUND IN CONTEXT 72.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 73 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c5.
entering BRT for context 73
NO CONTRADICTION FOUND IN CONTEXT 73.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 74 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c4.
entering BRT for context 74
NO CONTRADICTION FOUND IN CONTEXT 74.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 75 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c4.
entering BRT for context 75
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-row ==> r5c1 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r4c3 = 9
NO CONTRADICTION FOUND IN CONTEXT 75.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 76 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c4.
entering BRT for context 76
NO CONTRADICTION FOUND IN CONTEXT 76.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 77 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c2.
entering BRT for context 77
hidden-single-in-a-column ==> r4c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 77.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 78 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c2.
entering BRT for context 78
NO CONTRADICTION FOUND IN CONTEXT 78.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 79 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c2.
entering BRT for context 79
hidden-single-in-a-column ==> r4c2 = 7
hidden-single-in-a-row ==> r5c4 = 4
hidden-single-in-a-block ==> r5c6 = 2
hidden-single-in-a-block ==> r6c5 = 7
NO CONTRADICTION FOUND IN CONTEXT 79.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 80 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c2.
entering BRT for context 80
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-column ==> r4c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 80.
BACK IN CONTEXT 0 with 25 csp-variables solved and 210 candidates remaining.

GENERATING CONTEXT 81 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c1.
entering BRT for context 81
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-block ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 9
NO POSSIBLE VALUE for csp-variable 246 IN CONTEXT 81. RETRACTING CANDIDATE n9r6c1 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 25 csp-variables solved and 209 candidates remaining.

hidden-single-in-a-block ==> r4c3 = 9
GENERATING CONTEXT 82 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c1.
entering BRT for context 82
NO CONTRADICTION FOUND IN CONTEXT 82.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 83 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c1.
entering BRT for context 83
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-block ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r5c4 = 4
hidden-single-in-a-block ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 83.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 84 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c1.
entering BRT for context 84
hidden-single-in-a-row ==> r3c2 = 3
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-block ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 84.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 85 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c9.
entering BRT for context 85
hidden-single-in-a-column ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 85.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 86 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c9.
entering BRT for context 86
hidden-single-in-a-column ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 86.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 87 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c9.
entering BRT for context 87
hidden-single-in-a-column ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 87.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 88 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c8.
entering BRT for context 88
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 88.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 89 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r5c8.
entering BRT for context 89
hidden-single-in-a-column ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 89.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 90 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c8.
entering BRT for context 90
NO CONTRADICTION FOUND IN CONTEXT 90.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 91 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c7.
entering BRT for context 91
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 91.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 92 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r5c7.
entering BRT for context 92
hidden-single-in-a-column ==> r1c8 = 7
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-block ==> r2c6 = 7
NO CONTRADICTION FOUND IN CONTEXT 92.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 93 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c7.
entering BRT for context 93
hidden-single-in-a-column ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 93.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 94 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c7.
entering BRT for context 94
hidden-single-in-a-column ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 94.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 95 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c6.
entering BRT for context 95
hidden-single-in-a-row ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 95.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 96 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r5c6.
entering BRT for context 96
hidden-single-in-a-column ==> r1c5 = 7
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 96.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 97 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c6.
entering BRT for context 97
hidden-single-in-a-column ==> r3c4 = 5
hidden-single-in-a-column ==> r7c5 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-row ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 97.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 98 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c6.
entering BRT for context 98
hidden-single-in-a-row ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 98.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 99 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r5c6.
entering BRT for context 99
NO CONTRADICTION FOUND IN CONTEXT 99.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 100 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c6.
entering BRT for context 100
hidden-single-in-a-row ==> r4c8 = 1
hidden-single-in-a-row ==> r7c2 = 1
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-block ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 100.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 101 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c4.
entering BRT for context 101
hidden-single-in-a-row ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 101.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 102 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c4.
entering BRT for context 102
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-row ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 102.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 103 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r5c4.
entering BRT for context 103
hidden-single-in-a-row ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 103.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 104 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r5c4.
entering BRT for context 104
NO CONTRADICTION FOUND IN CONTEXT 104.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 105 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c4.
entering BRT for context 105
hidden-single-in-a-row ==> r4c8 = 1
hidden-single-in-a-block ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 105.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 106 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c3.
entering BRT for context 106
NO CONTRADICTION FOUND IN CONTEXT 106.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 107 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r5c3.
entering BRT for context 107
NO CONTRADICTION FOUND IN CONTEXT 107.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 108 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c3.
entering BRT for context 108
NO CONTRADICTION FOUND IN CONTEXT 108.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 109 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c1.
entering BRT for context 109
hidden-single-in-a-column ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 109.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 110 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r5c1.
entering BRT for context 110
hidden-single-in-a-column ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 110.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 111 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c1.
entering BRT for context 111
hidden-single-in-a-row ==> r3c2 = 3
hidden-single-in-a-column ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 111.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 112 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c9.
entering BRT for context 112
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 112.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 113 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r4c9.
entering BRT for context 113
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 113.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 114 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c9.
entering BRT for context 114
hidden-single-in-a-row ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 114.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 115 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c9.
entering BRT for context 115
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 115.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 116 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c8.
entering BRT for context 116
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 116.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 117 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c8.
entering BRT for context 117
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r5c6 = 7
hidden-single-in-a-column ==> r1c5 = 7
hidden-single-in-a-row ==> r6c2 = 7
hidden-single-in-a-block ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 117.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 118 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r4c8.
entering BRT for context 118
NO CONTRADICTION FOUND IN CONTEXT 118.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 119 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r4c8.
entering BRT for context 119
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 119.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 120 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c6.
entering BRT for context 120
NO CONTRADICTION FOUND IN CONTEXT 120.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 121 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c6.
entering BRT for context 121
hidden-single-in-a-column ==> r1c5 = 7
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-row ==> r6c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 121.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 122 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c6.
entering BRT for context 122
hidden-single-in-a-column ==> r3c4 = 5
hidden-single-in-a-column ==> r7c5 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 122.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 123 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c6.
entering BRT for context 123
NO CONTRADICTION FOUND IN CONTEXT 123.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 124 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r4c6.
entering BRT for context 124
NO CONTRADICTION FOUND IN CONTEXT 124.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 125 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c5.
entering BRT for context 125
hidden-single-in-a-column ==> r6c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 125.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 126 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c5.
entering BRT for context 126
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 126.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 127 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c5.
entering BRT for context 127
NO CONTRADICTION FOUND IN CONTEXT 127.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 128 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c4.
entering BRT for context 128
NO CONTRADICTION FOUND IN CONTEXT 128.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 129 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c4.
entering BRT for context 129
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 129.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 130 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r4c4.
entering BRT for context 130
NO CONTRADICTION FOUND IN CONTEXT 130.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 131 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c2.
entering BRT for context 131
hidden-single-in-a-column ==> r6c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 131.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 132 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c2.
entering BRT for context 132
NO CONTRADICTION FOUND IN CONTEXT 132.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 133 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c2.
entering BRT for context 133
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-column ==> r6c2 = 7
hidden-single-in-a-block ==> r5c3 = 8
NO CONTRADICTION FOUND IN CONTEXT 133.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 134 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c8.
entering BRT for context 134
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r6c7 = 9
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 134.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 135 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c8.
entering BRT for context 135
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 135.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 136 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c8.
entering BRT for context 136
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 136.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 137 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c8.
entering BRT for context 137
NO CONTRADICTION FOUND IN CONTEXT 137.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 138 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c7.
entering BRT for context 138
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 138.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 139 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c7.
entering BRT for context 139
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 139.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 140 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c7.
entering BRT for context 140
NO CONTRADICTION FOUND IN CONTEXT 140.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 141 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c5.
entering BRT for context 141
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-block ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 141.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 142 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r3c5.
entering BRT for context 142
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 142.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 143 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c5.
entering BRT for context 143
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
naked-single ==> r2c6 = 8
naked-single ==> r1c6 = 7
naked-single ==> r1c5 = 6
naked-single ==> r2c4 = 9
naked-single ==> r3c4 = 5
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r2c3 = 2
hidden-single-in-a-block ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 143.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 144 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c4.
entering BRT for context 144
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 144.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 145 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c4.
entering BRT for context 145
hidden-single-in-a-column ==> r2c4 = 9
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-block ==> r1c5 = 6
hidden-single-in-a-column ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-row ==> r2c6 = 2
naked-single ==> r1c6 = 7
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 145.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 146 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c4.
entering BRT for context 146
hidden-single-in-a-column ==> r2c4 = 9
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 146.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 147 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r3c4.
entering BRT for context 147
hidden-single-in-a-column ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 147.
BACK IN CONTEXT 0 with 26 csp-variables solved and 203 candidates remaining.

GENERATING CONTEXT 148 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c4.
entering BRT for context 148
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
naked-single ==> r2c6 = 8
naked-single ==> r1c6 = 7
naked-single ==> r1c5 = 6
naked-single ==> r3c5 = 5
naked-single ==> r2c4 = 9
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r2c3 = 2
hidden-single-in-a-block ==> r9c2 = 2
NO POSSIBLE VALUE for csp-variable 352 IN CONTEXT 148. RETRACTING CANDIDATE n2r3c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 149 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c2.
entering BRT for context 149
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-column ==> r5c3 = 8
NO CONTRADICTION FOUND IN CONTEXT 149.
BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 150 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r3c2.
entering BRT for context 150
NO CONTRADICTION FOUND IN CONTEXT 150.
BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 151 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c2.
entering BRT for context 151
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-column ==> r9c5 = 2
hidden-single-in-a-row ==> r8c3 = 2
hidden-single-in-a-row ==> r3c1 = 3
NO CONTRADICTION FOUND IN CONTEXT 151.
BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 152 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c1.
entering BRT for context 152
hidden-single-in-a-column ==> r2c4 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-row ==> r3c2 = 3
NO CONTRADICTION FOUND IN CONTEXT 152.
BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 153 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c1.
entering BRT for context 153
hidden-single-in-a-row ==> r3c2 = 3
NO CONTRADICTION FOUND IN CONTEXT 153.
BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 154 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r3c1.
entering BRT for context 154
NO CONTRADICTION FOUND IN CONTEXT 154.
BACK IN CONTEXT 0 with 26 csp-variables solved and 202 candidates remaining.

GENERATING CONTEXT 155 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r2c9.
entering BRT for context 155
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r3c4 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r7c8 = 1
NO POSSIBLE VALUE for csp-variable 279 IN CONTEXT 155. RETRACTING CANDIDATE n9r2c9 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 201 candidates remaining.

GENERATING CONTEXT 156 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c9.
entering BRT for context 156
NO CONTRADICTION FOUND IN CONTEXT 156.
BACK IN CONTEXT 0 with 26 csp-variables solved and 201 candidates remaining.

GENERATING CONTEXT 157 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c9.
entering BRT for context 157
hidden-single-in-a-row ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 157.
BACK IN CONTEXT 0 with 26 csp-variables solved and 201 candidates remaining.

GENERATING CONTEXT 158 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r2c9.
entering BRT for context 158
NO CONTRADICTION FOUND IN CONTEXT 158.
BACK IN CONTEXT 0 with 26 csp-variables solved and 201 candidates remaining.

GENERATING CONTEXT 159 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r2c7.
entering BRT for context 159
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r3c4 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r7c8 = 1
hidden-single-in-a-column ==> r5c7 = 1
NO POSSIBLE VALUE for csp-variable 377 IN CONTEXT 159. RETRACTING CANDIDATE n9r2c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 200 candidates remaining.

GENERATING CONTEXT 160 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c7.
entering BRT for context 160
hidden-single-in-a-block ==> r1c8 = 7
hidden-single-in-a-block ==> r5c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-block ==> r2c6 = 7
hidden-single-in-a-row ==> r9c8 = 8
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r5c8 = 1
naked-single ==> r4c8 = 6
naked-single ==> r7c8 = 4
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-block ==> r9c2 = 2
hidden-single-in-a-column ==> r1c5 = 2
naked-single ==> r1c6 = 8
hidden-single-in-a-row ==> r3c2 = 8
hidden-single-in-a-block ==> r5c3 = 8
naked-single ==> r5c9 = 5
naked-single ==> r4c9 = 8
hidden-single-in-a-block ==> r6c4 = 8
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-column ==> r7c3 = 3
naked-single ==> r7c2 = 1
naked-single ==> r7c6 = 5
naked-single ==> r7c5 = 6
naked-single ==> r3c5 = 5
naked-single ==> r3c4 = 6
naked-single ==> r3c1 = 3
naked-single ==> r5c1 = 4
naked-single ==> r9c1 = 6
NO POSSIBLE VALUE for csp-variable 121 IN CONTEXT 160. RETRACTING CANDIDATE n8r2c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 161 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r2c7.
entering BRT for context 161
NO CONTRADICTION FOUND IN CONTEXT 161.
BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 162 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c7.
entering BRT for context 162
hidden-single-in-a-block ==> r1c8 = 7
hidden-single-in-a-block ==> r5c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-block ==> r2c6 = 7
NO CONTRADICTION FOUND IN CONTEXT 162.
BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 163 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c6.
entering BRT for context 163
hidden-single-in-a-row ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 163.
BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 164 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r2c6.
entering BRT for context 164
naked-single ==> r2c7 = 6
hidden-single-in-a-row ==> r1c8 = 7
hidden-single-in-a-block ==> r5c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
NO CONTRADICTION FOUND IN CONTEXT 164.
BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 165 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r2c6.
entering BRT for context 165
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 165.
BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 166 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r2c4.
entering BRT for context 166
NO CONTRADICTION FOUND IN CONTEXT 166.
BACK IN CONTEXT 0 with 26 csp-variables solved and 199 candidates remaining.

GENERATING CONTEXT 167 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c4.
entering BRT for context 167
hidden-single-in-a-row ==> r2c1 = 9
hidden-single-in-a-column ==> r3c4 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-block ==> r1c5 = 6
hidden-single-in-a-column ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-row ==> r2c6 = 2
naked-single ==> r1c6 = 7
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
naked-single ==> r6c8 = 8
hidden-single-in-a-block ==> r9c7 = 8
naked-single ==> r3c7 = 6
naked-single ==> r3c8 = 2
naked-single ==> r3c1 = 3
naked-single ==> r3c2 = 8
naked-single ==> r1c3 = 4
naked-single ==> r2c3 = 6
naked-single ==> r7c3 = 3
NO POSSIBLE VALUE for csp-variable 293 IN CONTEXT 167. RETRACTING CANDIDATE n8r2c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 168 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c4.
entering BRT for context 168
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r2c1 = 9
hidden-single-in-a-column ==> r3c4 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 168.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 169 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r2c4.
entering BRT for context 169
hidden-single-in-a-row ==> r2c1 = 9
hidden-single-in-a-column ==> r3c4 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-block ==> r1c5 = 6
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 169.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 170 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c3.
entering BRT for context 170
NO CONTRADICTION FOUND IN CONTEXT 170.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 171 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c3.
entering BRT for context 171
naked-single ==> r2c7 = 7
hidden-single-in-a-column ==> r9c1 = 6
hidden-single-in-a-column ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 171.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 172 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r2c3.
entering BRT for context 172
NO CONTRADICTION FOUND IN CONTEXT 172.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 173 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r2c3.
entering BRT for context 173
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 173.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 174 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r2c1.
entering BRT for context 174
hidden-single-in-a-column ==> r3c4 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 174.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 175 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c1.
entering BRT for context 175
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 175.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 176 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r2c1.
entering BRT for context 176
hidden-single-in-a-row ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 176.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 177 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r1c9.
entering BRT for context 177
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r7c8 = 9
NO CONTRADICTION FOUND IN CONTEXT 177.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 178 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c9.
entering BRT for context 178
hidden-single-in-a-column ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 178.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 179 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c9.
entering BRT for context 179
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-column ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 179.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 180 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c9.
entering BRT for context 180
hidden-single-in-a-column ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 180.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 181 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r1c8.
entering BRT for context 181
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-column ==> r3c8 = 2
hidden-single-in-a-row ==> r6c7 = 9
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 181.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 182 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c8.
entering BRT for context 182
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-column ==> r3c8 = 2
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 182.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 183 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r1c8.
entering BRT for context 183
naked-single ==> r2c7 = 6
hidden-single-in-a-row ==> r2c6 = 7
hidden-single-in-a-row ==> r5c7 = 7
hidden-single-in-a-column ==> r3c8 = 2
NO CONTRADICTION FOUND IN CONTEXT 183.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 184 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c8.
entering BRT for context 184
naked-single ==> r2c7 = 7
hidden-single-in-a-column ==> r3c8 = 2
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 184.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 185 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c8.
entering BRT for context 185
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-column ==> r3c8 = 2
NO CONTRADICTION FOUND IN CONTEXT 185.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 186 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r1c8.
entering BRT for context 186
hidden-single-in-a-block ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 186.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 187 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c6.
entering BRT for context 187
NO CONTRADICTION FOUND IN CONTEXT 187.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 188 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r1c6.
entering BRT for context 188
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
NO CONTRADICTION FOUND IN CONTEXT 188.
BACK IN CONTEXT 0 with 26 csp-variables solved and 198 candidates remaining.

GENERATING CONTEXT 189 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r1c6.
entering BRT for context 189
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-block ==> r9c2 = 2
NO POSSIBLE VALUE for csp-variable 352 IN CONTEXT 189. RETRACTING CANDIDATE n2r1c6 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 190 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r1c5.
entering BRT for context 190
naked-single ==> r1c6 = 8
naked-single ==> r2c6 = 2
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 190.
BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 191 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c5.
entering BRT for context 191
NO CONTRADICTION FOUND IN CONTEXT 191.
BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 192 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r1c5.
entering BRT for context 192
hidden-single-in-a-row ==> r2c3 = 2
hidden-single-in-a-block ==> r9c2 = 2
hidden-single-in-a-row ==> r3c8 = 2
NO CONTRADICTION FOUND IN CONTEXT 192.
BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 193 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c3.
entering BRT for context 193
naked-single ==> r1c6 = 7
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
NO CONTRADICTION FOUND IN CONTEXT 193.
BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 194 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c3.
entering BRT for context 194
hidden-single-in-a-column ==> r9c1 = 6
hidden-single-in-a-column ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 194.
BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 195 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c3.
entering BRT for context 195
hidden-single-in-a-row ==> r2c9 = 4
hidden-single-in-a-row ==> r8c4 = 4
hidden-single-in-a-column ==> r6c5 = 4
hidden-single-in-a-block ==> r5c1 = 4
hidden-single-in-a-block ==> r6c1 = 5
naked-single ==> r6c4 = 8
NO CONTRADICTION FOUND IN CONTEXT 195.
BACK IN CONTEXT 0 with 26 csp-variables solved and 197 candidates remaining.

GENERATING CONTEXT 196 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r1c3.
entering BRT for context 196
hidden-single-in-a-column ==> r3c8 = 2
hidden-single-in-a-column ==> r9c5 = 2
NO POSSIBLE VALUE for csp-variable 282 IN CONTEXT 196. RETRACTING CANDIDATE n2r1c3 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 197 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c2.
entering BRT for context 197
naked-single ==> r1c6 = 7
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-column ==> r5c3 = 8
NO CONTRADICTION FOUND IN CONTEXT 197.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 198 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c2.
entering BRT for context 198
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-row ==> r2c9 = 4
NO CONTRADICTION FOUND IN CONTEXT 198.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 199 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r1c2.
entering BRT for context 199
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-column ==> r3c8 = 2
hidden-single-in-a-column ==> r9c5 = 2
hidden-single-in-a-row ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 199.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 200 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r1c2.
entering BRT for context 200
hidden-single-in-a-column ==> r9c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 200.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 201 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r1c1.
entering BRT for context 201
hidden-single-in-a-row ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-column ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 201.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 202 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c1.
entering BRT for context 202
hidden-single-in-a-row ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 202.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 203 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c1.
entering BRT for context 203
hidden-single-in-a-row ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r2c9 = 4
NO CONTRADICTION FOUND IN CONTEXT 203.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 204 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r1c1.
entering BRT for context 204
NO CONTRADICTION FOUND IN CONTEXT 204.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.


        STARTING PHASE 2 IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining

GENERATING CONTEXT 205 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c8.
entering BRT for context 205
NO CONTRADICTION FOUND IN CONTEXT 205.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 206 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c8.
entering BRT for context 206
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 206.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 207 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c8.
entering BRT for context 207
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 207.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 208 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c8.
entering BRT for context 208
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
hidden-single-in-a-column ==> r5c7 = 1
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 208.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 209 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c7.
entering BRT for context 209
NO CONTRADICTION FOUND IN CONTEXT 209.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 210 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c7.
entering BRT for context 210
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 210.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 211 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c7.
entering BRT for context 211
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 211.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 212 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c7.
entering BRT for context 212
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 212.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 213 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c5.
entering BRT for context 213
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-column ==> r2c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 213.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 214 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c5.
entering BRT for context 214
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-column ==> r2c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 214.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 215 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c5.
entering BRT for context 215
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-column ==> r2c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 215.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 216 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c5.
entering BRT for context 216
hidden-single-in-a-row ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 216.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 217 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c4.
entering BRT for context 217
NO CONTRADICTION FOUND IN CONTEXT 217.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 218 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c4.
entering BRT for context 218
hidden-single-in-a-column ==> r6c5 = 4
NO CONTRADICTION FOUND IN CONTEXT 218.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 219 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c4.
entering BRT for context 219
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-column ==> r7c2 = 1
hidden-single-in-a-block ==> r8c7 = 1
NO CONTRADICTION FOUND IN CONTEXT 219.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 220 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c2.
entering BRT for context 220
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 220.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 221 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c2.
entering BRT for context 221
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-block ==> r5c3 = 3
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 221.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 222 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c2.
entering BRT for context 222
hidden-single-in-a-column ==> r2c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 222.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 223 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c2.
entering BRT for context 223
hidden-single-in-a-row ==> r1c1 = 1
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 223.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 224 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c1.
entering BRT for context 224
hidden-single-in-a-column ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 224.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 225 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c1.
entering BRT for context 225
hidden-single-in-a-column ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 225.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 226 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c1.
entering BRT for context 226
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-row ==> r3c2 = 3
hidden-single-in-a-block ==> r5c3 = 3
NO CONTRADICTION FOUND IN CONTEXT 226.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 227 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c1.
entering BRT for context 227
hidden-single-in-a-row ==> r1c2 = 1
NO CONTRADICTION FOUND IN CONTEXT 227.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 228 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c9.
entering BRT for context 228
hidden-single-in-a-row ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 228.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 229 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r8c9.
entering BRT for context 229
hidden-single-in-a-column ==> r1c8 = 4
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
NO CONTRADICTION FOUND IN CONTEXT 229.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 230 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c9.
entering BRT for context 230
NO CONTRADICTION FOUND IN CONTEXT 230.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 231 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c7.
entering BRT for context 231
naked-single ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 231.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 232 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c7.
entering BRT for context 232
NO CONTRADICTION FOUND IN CONTEXT 232.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 233 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c7.
entering BRT for context 233
NO CONTRADICTION FOUND IN CONTEXT 233.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 234 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c6.
entering BRT for context 234
NO CONTRADICTION FOUND IN CONTEXT 234.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 235 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r8c6.
entering BRT for context 235
hidden-single-in-a-column ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
hidden-single-in-a-column ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 235.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 236 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c6.
entering BRT for context 236
NO CONTRADICTION FOUND IN CONTEXT 236.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 237 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c4.
entering BRT for context 237
NO CONTRADICTION FOUND IN CONTEXT 237.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 238 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r8c4.
entering BRT for context 238
hidden-single-in-a-column ==> r6c5 = 4
NO CONTRADICTION FOUND IN CONTEXT 238.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 239 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r8c4.
entering BRT for context 239
hidden-single-in-a-column ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
hidden-single-in-a-column ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 239.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 240 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c4.
entering BRT for context 240
NO CONTRADICTION FOUND IN CONTEXT 240.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 241 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r8c3.
entering BRT for context 241
hidden-single-in-a-column ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 241.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 242 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r8c3.
entering BRT for context 242
hidden-single-in-a-column ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 242.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 243 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c3.
entering BRT for context 243
hidden-single-in-a-column ==> r2c3 = 2
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 243.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 244 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r8c3.
entering BRT for context 244
hidden-single-in-a-row ==> r9c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 244.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 245 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c9.
entering BRT for context 245
NO CONTRADICTION FOUND IN CONTEXT 245.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 246 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c9.
entering BRT for context 246
hidden-single-in-a-column ==> r1c9 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-row ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 246.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 247 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c9.
entering BRT for context 247
hidden-single-in-a-column ==> r1c8 = 4
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-column ==> r1c9 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r7c8 = 9
NO CONTRADICTION FOUND IN CONTEXT 247.
BACK IN CONTEXT 0 with 26 csp-variables solved and 196 candidates remaining.

GENERATING CONTEXT 248 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c9.
entering BRT for context 248
hidden-single-in-a-column ==> r1c9 = 9
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-block ==> r5c7 = 3
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-column ==> r8c3 = 3
hidden-single-in-a-row ==> r9c5 = 3
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-block ==> r2c3 = 2
naked-single ==> r2c6 = 8
naked-single ==> r1c6 = 7
hidden-single-in-a-row ==> r5c8 = 7
naked-single ==> r6c8 = 8
NO POSSIBLE VALUE for csp-variable 398 IN CONTEXT 248. RETRACTING CANDIDATE n3r7c9 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 249 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c8.
entering BRT for context 249
hidden-single-in-a-column ==> r1c9 = 9
hidden-single-in-a-column ==> r6c7 = 9
NO CONTRADICTION FOUND IN CONTEXT 249.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 250 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c8.
entering BRT for context 250
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-column ==> r8c9 = 3
naked-single ==> r8c7 = 1
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 4
naked-single ==> r7c9 = 9
naked-single ==> r8c6 = 2
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-block ==> r2c3 = 2
hidden-single-in-a-column ==> r5c4 = 2
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 250.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 251 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c8.
entering BRT for context 251
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 251.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 252 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c8.
entering BRT for context 252
hidden-single-in-a-column ==> r5c7 = 1
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 252.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 253 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c6.
entering BRT for context 253
NO CONTRADICTION FOUND IN CONTEXT 253.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 254 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c6.
entering BRT for context 254
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-row ==> r6c1 = 5
hidden-single-in-a-block ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 254.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 255 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c6.
entering BRT for context 255
hidden-single-in-a-row ==> r7c5 = 5
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-row ==> r6c1 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r8c7 = 1
NO CONTRADICTION FOUND IN CONTEXT 255.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 256 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c5.
entering BRT for context 256
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 256.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 257 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c5.
entering BRT for context 257
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-row ==> r6c1 = 5
hidden-single-in-a-block ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 257.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 258 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c5.
entering BRT for context 258
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 258.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 259 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c5.
entering BRT for context 259
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 259.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 260 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c3.
entering BRT for context 260
NO CONTRADICTION FOUND IN CONTEXT 260.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 261 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c3.
entering BRT for context 261
NO CONTRADICTION FOUND IN CONTEXT 261.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 262 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c3.
entering BRT for context 262
NO CONTRADICTION FOUND IN CONTEXT 262.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 263 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c2.
entering BRT for context 263
NO CONTRADICTION FOUND IN CONTEXT 263.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 264 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r7c2.
entering BRT for context 264
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-block ==> r5c3 = 3
NO CONTRADICTION FOUND IN CONTEXT 264.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 265 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c2.
entering BRT for context 265
hidden-single-in-a-row ==> r1c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 265.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 266 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c8.
entering BRT for context 266
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 266.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 267 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c8.
entering BRT for context 267
hidden-single-in-a-row ==> r6c7 = 9
hidden-single-in-a-row ==> r9c7 = 8
naked-single ==> r3c7 = 6
naked-single ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 267.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 268 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c8.
entering BRT for context 268
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-column ==> r4c2 = 7
hidden-single-in-a-block ==> r5c6 = 7
naked-single ==> r1c6 = 8
naked-single ==> r2c6 = 2
hidden-single-in-a-column ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-column ==> r5c4 = 2
hidden-single-in-a-block ==> r1c5 = 7
hidden-single-in-a-row ==> r6c7 = 9
NO CONTRADICTION FOUND IN CONTEXT 268.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 269 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c7.
entering BRT for context 269
NO CONTRADICTION FOUND IN CONTEXT 269.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 270 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c7.
entering BRT for context 270
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r7c9 = 9
hidden-single-in-a-column ==> r6c8 = 9
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 270.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 271 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c7.
entering BRT for context 271
hidden-single-in-a-column ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r7c9 = 9
hidden-single-in-a-column ==> r6c8 = 9
hidden-single-in-a-column ==> r8c9 = 3
NO CONTRADICTION FOUND IN CONTEXT 271.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 272 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c5.
entering BRT for context 272
hidden-single-in-a-column ==> r4c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 272.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 273 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c5.
entering BRT for context 273
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-row ==> r5c1 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 273.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 274 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c5.
entering BRT for context 274
NO CONTRADICTION FOUND IN CONTEXT 274.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 275 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c5.
entering BRT for context 275
NO CONTRADICTION FOUND IN CONTEXT 275.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 276 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c4.
entering BRT for context 276
NO CONTRADICTION FOUND IN CONTEXT 276.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 277 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c4.
entering BRT for context 277
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-row ==> r5c1 = 5
hidden-single-in-a-block ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 277.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 278 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c4.
entering BRT for context 278
NO CONTRADICTION FOUND IN CONTEXT 278.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 279 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c2.
entering BRT for context 279
hidden-single-in-a-column ==> r4c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 279.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 280 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r6c2.
entering BRT for context 280
NO CONTRADICTION FOUND IN CONTEXT 280.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 281 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c2.
entering BRT for context 281
hidden-single-in-a-column ==> r4c2 = 7
hidden-single-in-a-block ==> r5c3 = 8
hidden-single-in-a-row ==> r5c4 = 4
hidden-single-in-a-block ==> r5c6 = 2
hidden-single-in-a-block ==> r6c5 = 7
NO CONTRADICTION FOUND IN CONTEXT 281.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 282 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c2.
entering BRT for context 282
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-column ==> r4c2 = 7
hidden-single-in-a-block ==> r5c3 = 8
NO CONTRADICTION FOUND IN CONTEXT 282.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 283 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c1.
entering BRT for context 283
NO CONTRADICTION FOUND IN CONTEXT 283.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 284 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c1.
entering BRT for context 284
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-block ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r7c6 = 5
hidden-single-in-a-row ==> r5c4 = 4
hidden-single-in-a-block ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 284.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 285 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c1.
entering BRT for context 285
hidden-single-in-a-row ==> r3c2 = 3
hidden-single-in-a-column ==> r5c1 = 5
hidden-single-in-a-block ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 285.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 286 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c9.
entering BRT for context 286
hidden-single-in-a-column ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r8c9 = 3
NO CONTRADICTION FOUND IN CONTEXT 286.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 287 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c9.
entering BRT for context 287
hidden-single-in-a-column ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 287.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 288 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c9.
entering BRT for context 288
hidden-single-in-a-column ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 288.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 289 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c8.
entering BRT for context 289
hidden-single-in-a-row ==> r9c7 = 8
NO CONTRADICTION FOUND IN CONTEXT 289.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 290 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r5c8.
entering BRT for context 290
hidden-single-in-a-column ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 290.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 291 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c8.
entering BRT for context 291
NO CONTRADICTION FOUND IN CONTEXT 291.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 292 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c7.
entering BRT for context 292
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-row ==> r9c8 = 8
NO CONTRADICTION FOUND IN CONTEXT 292.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 293 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r5c7.
entering BRT for context 293
naked-single ==> r2c7 = 6
hidden-single-in-a-column ==> r1c8 = 7
naked-single ==> r1c6 = 8
hidden-single-in-a-block ==> r3c8 = 2
hidden-single-in-a-block ==> r2c6 = 7
NO CONTRADICTION FOUND IN CONTEXT 293.
BACK IN CONTEXT 0 with 26 csp-variables solved and 195 candidates remaining.

GENERATING CONTEXT 294 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c7.
entering BRT for context 294
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-column ==> r8c9 = 3
hidden-single-in-a-column ==> r7c3 = 3
hidden-single-in-a-row ==> r9c5 = 3
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-column ==> r2c3 = 2
naked-single ==> r2c6 = 8
naked-single ==> r1c6 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r4c8 = 1
hidden-single-in-a-block ==> r4c9 = 6
naked-single ==> r2c9 = 4
naked-single ==> r7c9 = 9
naked-single ==> r1c9 = 8
naked-single ==> r5c9 = 5
naked-single ==> r5c1 = 4
naked-single ==> r5c3 = 8
hidden-single-in-a-column ==> r3c2 = 8
hidden-single-in-a-block ==> r3c1 = 3
naked-single ==> r6c1 = 5
hidden-single-in-a-row ==> r6c2 = 3
naked-single ==> r4c2 = 7
naked-single ==> r4c5 = 5
naked-single ==> r4c6 = 3
naked-single ==> r4c4 = 8
naked-single ==> r6c4 = 4
naked-single ==> r6c5 = 7
hidden-single-in-a-block ==> r7c5 = 4
naked-single ==> r7c8 = 6
naked-single ==> r8c7 = 1
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 4
naked-single ==> r6c7 = 9
naked-single ==> r6c8 = 8
naked-single ==> r3c7 = 6
naked-single ==> r3c5 = 2
naked-single ==> r3c8 = 9
naked-single ==> r3c4 = 5
naked-single ==> r1c8 = 2
naked-single ==> r1c5 = 6
naked-single ==> r2c4 = 9
naked-single ==> r2c1 = 6
naked-single ==> r9c1 = 1
NO POSSIBLE VALUE for csp-variable 172 IN CONTEXT 294. RETRACTING CANDIDATE n3r5c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 295 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c7.
entering BRT for context 295
hidden-single-in-a-column ==> r2c7 = 7
NO CONTRADICTION FOUND IN CONTEXT 295.
BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 296 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c6.
entering BRT for context 296
naked-single ==> r1c6 = 7
naked-single ==> r2c6 = 2
naked-single ==> r1c5 = 6
naked-single ==> r3c5 = 5
naked-single ==> r2c4 = 9
naked-single ==> r3c4 = 8
hidden-single-in-a-row ==> r2c7 = 7
naked-single ==> r5c7 = 1
naked-single ==> r5c8 = 7
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 296.
BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 297 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r5c6.
entering BRT for context 297
naked-single ==> r1c6 = 8
naked-single ==> r2c6 = 2
hidden-single-in-a-column ==> r1c5 = 7
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 297.
BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 298 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c6.
entering BRT for context 298
hidden-single-in-a-column ==> r3c4 = 5
hidden-single-in-a-column ==> r7c5 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-row ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 298.
BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 299 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c6.
entering BRT for context 299
hidden-single-in-a-row ==> r5c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 299.
BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 300 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r5c6.
entering BRT for context 300
NO CONTRADICTION FOUND IN CONTEXT 300.
BACK IN CONTEXT 0 with 26 csp-variables solved and 194 candidates remaining.

GENERATING CONTEXT 301 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c6.
entering BRT for context 301
hidden-single-in-a-row ==> r4c8 = 1
hidden-single-in-a-row ==> r7c2 = 1
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-block ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r8c9 = 3
naked-single ==> r8c6 = 2
hidden-single-in-a-row ==> r9c2 = 2
hidden-single-in-a-block ==> r2c3 = 2
hidden-single-in-a-column ==> r5c4 = 2
hidden-single-in-a-block ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
NO POSSIBLE VALUE for csp-variable 219 IN CONTEXT 301. RETRACTING CANDIDATE n1r5c6 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 193 candidates remaining.

GENERATING CONTEXT 302 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c4.
entering BRT for context 302
hidden-single-in-a-row ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 302.
BACK IN CONTEXT 0 with 26 csp-variables solved and 193 candidates remaining.

GENERATING CONTEXT 303 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c4.
entering BRT for context 303
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-row ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 303.
BACK IN CONTEXT 0 with 26 csp-variables solved and 193 candidates remaining.

GENERATING CONTEXT 304 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r5c4.
entering BRT for context 304
hidden-single-in-a-row ==> r5c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 304.
BACK IN CONTEXT 0 with 26 csp-variables solved and 193 candidates remaining.

GENERATING CONTEXT 305 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r5c4.
entering BRT for context 305
NO CONTRADICTION FOUND IN CONTEXT 305.
BACK IN CONTEXT 0 with 26 csp-variables solved and 193 candidates remaining.

GENERATING CONTEXT 306 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r5c4.
entering BRT for context 306
hidden-single-in-a-row ==> r4c8 = 1
hidden-single-in-a-block ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-column ==> r8c4 = 2
naked-single ==> r8c6 = 1
naked-single ==> r8c7 = 6
naked-single ==> r8c3 = 4
naked-single ==> r7c8 = 4
naked-single ==> r9c8 = 8
naked-single ==> r9c7 = 1
naked-single ==> r5c8 = 7
naked-single ==> r5c7 = 8
naked-single ==> r5c3 = 3
naked-single ==> r7c3 = 6
naked-single ==> r9c1 = 3
naked-single ==> r9c2 = 2
naked-single ==> r7c2 = 1
naked-single ==> r3c1 = 6
NO POSSIBLE VALUE for csp-variable 226 IN CONTEXT 306. RETRACTING CANDIDATE n1r5c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 307 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r5c3.
entering BRT for context 307
NO CONTRADICTION FOUND IN CONTEXT 307.
BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 308 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r5c3.
entering BRT for context 308
NO CONTRADICTION FOUND IN CONTEXT 308.
BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 309 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c3.
entering BRT for context 309
NO CONTRADICTION FOUND IN CONTEXT 309.
BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 310 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r5c1.
entering BRT for context 310
hidden-single-in-a-column ==> r4c9 = 5
hidden-single-in-a-block ==> r4c8 = 6
hidden-single-in-a-column ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 310.
BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 311 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r5c1.
entering BRT for context 311
hidden-single-in-a-column ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 311.
BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 312 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r5c1.
entering BRT for context 312
hidden-single-in-a-row ==> r3c2 = 3
hidden-single-in-a-column ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 312.
BACK IN CONTEXT 0 with 26 csp-variables solved and 192 candidates remaining.

GENERATING CONTEXT 313 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c9.
entering BRT for context 313
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r3c7 = 9
hidden-single-in-a-column ==> r9c7 = 8
hidden-single-in-a-block ==> r8c7 = 6
naked-single ==> r2c7 = 7
naked-single ==> r5c7 = 1
naked-single ==> r5c8 = 7
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
naked-single ==> r9c8 = 4
naked-single ==> r9c4 = 6
naked-single ==> r7c8 = 1
hidden-single-in-a-row ==> r7c3 = 6
hidden-single-in-a-column ==> r5c3 = 3
naked-single ==> r5c1 = 4
naked-single ==> r6c1 = 5
naked-single ==> r2c1 = 6
naked-single ==> r3c1 = 3
naked-single ==> r2c9 = 4
naked-single ==> r1c9 = 6
naked-single ==> r4c2 = 7
naked-single ==> r6c2 = 8
naked-single ==> r6c4 = 4
naked-single ==> r6c5 = 7
naked-single ==> r1c5 = 2
naked-single ==> r9c5 = 3
naked-single ==> r9c2 = 2
NO POSSIBLE VALUE for csp-variable 132 IN CONTEXT 313. RETRACTING CANDIDATE n8r4c9 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 191 candidates remaining.

GENERATING CONTEXT 314 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r4c9.
entering BRT for context 314
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 314.
BACK IN CONTEXT 0 with 26 csp-variables solved and 191 candidates remaining.

GENERATING CONTEXT 315 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c9.
entering BRT for context 315
hidden-single-in-a-row ==> r4c8 = 6
NO CONTRADICTION FOUND IN CONTEXT 315.
BACK IN CONTEXT 0 with 26 csp-variables solved and 191 candidates remaining.

GENERATING CONTEXT 316 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c9.
entering BRT for context 316
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 316.
BACK IN CONTEXT 0 with 26 csp-variables solved and 191 candidates remaining.

GENERATING CONTEXT 317 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c8.
entering BRT for context 317
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r3c7 = 9
hidden-single-in-a-column ==> r9c7 = 8
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 317.
BACK IN CONTEXT 0 with 26 csp-variables solved and 191 candidates remaining.

GENERATING CONTEXT 318 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c8.
entering BRT for context 318
hidden-single-in-a-column ==> r2c7 = 7
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
hidden-single-in-a-block ==> r8c9 = 3
hidden-single-in-a-block ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r3c7 = 9
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r5c6 = 7
naked-single ==> r6c5 = 4
naked-single ==> r6c4 = 8
naked-single ==> r6c2 = 7
naked-single ==> r5c4 = 2
naked-single ==> r1c6 = 8
naked-single ==> r2c6 = 2
naked-single ==> r8c6 = 1
naked-single ==> r8c7 = 6
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 4
naked-single ==> r9c4 = 6
naked-single ==> r3c4 = 5
naked-single ==> r4c4 = 1
naked-single ==> r3c5 = 6
naked-single ==> r3c1 = 3
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 6
naked-single ==> r1c3 = 4
NO POSSIBLE VALUE for csp-variable 119 IN CONTEXT 318. RETRACTING CANDIDATE n7r4c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 190 candidates remaining.

GENERATING CONTEXT 319 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r4c8.
entering BRT for context 319
NO CONTRADICTION FOUND IN CONTEXT 319.
BACK IN CONTEXT 0 with 26 csp-variables solved and 190 candidates remaining.

GENERATING CONTEXT 320 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r4c8.
NO POSSIBLE VALUE for csp-variable 251 IN CONTEXT 320. RETRACTING CANDIDATE n1r4c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 189 candidates remaining.

GENERATING CONTEXT 321 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c6.
entering BRT for context 321
naked-single ==> r1c6 = 7
naked-single ==> r2c6 = 2
naked-single ==> r1c5 = 6
naked-single ==> r3c5 = 5
naked-single ==> r2c4 = 9
naked-single ==> r3c4 = 8
naked-single ==> r4c8 = 6
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-row ==> r4c4 = 1
hidden-single-in-a-row ==> r8c6 = 1
hidden-single-in-a-row ==> r4c9 = 5
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-column ==> r6c4 = 5
naked-single ==> r5c6 = 3
naked-single ==> r7c6 = 5
naked-single ==> r5c9 = 8
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r8c7 = 6
naked-single ==> r9c7 = 8
naked-single ==> r8c4 = 4
naked-single ==> r9c4 = 6
naked-single ==> r8c9 = 3
naked-single ==> r7c5 = 3
NO POSSIBLE VALUE for csp-variable 333 IN CONTEXT 321. RETRACTING CANDIDATE n8r4c6 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 322 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c6.
entering BRT for context 322
naked-single ==> r1c6 = 8
naked-single ==> r2c6 = 2
hidden-single-in-a-column ==> r1c5 = 7
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-row ==> r6c2 = 7
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-row ==> r4c4 = 1
hidden-single-in-a-row ==> r8c6 = 1
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-block ==> r6c4 = 8
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r8c7 = 6
naked-single ==> r9c7 = 8
naked-single ==> r3c7 = 9
naked-single ==> r8c4 = 4
naked-single ==> r9c4 = 6
naked-single ==> r3c4 = 5
naked-single ==> r3c5 = 6
naked-single ==> r3c1 = 3
naked-single ==> r2c4 = 9
naked-single ==> r8c9 = 3
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-column ==> r2c1 = 6
naked-single ==> r1c3 = 4
naked-single ==> r2c3 = 8
naked-single ==> r5c3 = 3
naked-single ==> r7c3 = 6
naked-single ==> r5c6 = 5
naked-single ==> r7c6 = 3
naked-single ==> r7c5 = 5
naked-single ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r5c9 = 8
naked-single ==> r4c8 = 6
naked-single ==> r4c9 = 5
naked-single ==> r1c8 = 2
naked-single ==> r3c8 = 8
naked-single ==> r1c2 = 1
naked-single ==> r7c2 = 4
naked-single ==> r9c2 = 3
naked-single ==> r9c1 = 1
naked-single ==> r9c8 = 4
naked-single ==> r7c9 = 9
naked-single ==> r7c8 = 1
naked-single ==> r5c1 = 4
naked-single ==> r4c5 = 3
naked-single ==> r4c2 = 8
naked-single ==> r3c2 = 2
naked-single ==> r2c9 = 4
naked-single ==> r1c9 = 6
NO CONTRADICTION FOUND IN CONTEXT 322.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 323 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c6.
entering BRT for context 323
hidden-single-in-a-column ==> r3c4 = 5
hidden-single-in-a-column ==> r7c5 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-row ==> r4c4 = 1
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 323.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 324 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c6.
entering BRT for context 324
hidden-single-in-a-row ==> r4c4 = 1
NO CONTRADICTION FOUND IN CONTEXT 324.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 325 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r4c6.
entering BRT for context 325
NO CONTRADICTION FOUND IN CONTEXT 325.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 326 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c5.
entering BRT for context 326
hidden-single-in-a-column ==> r6c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 326.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 327 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c5.
entering BRT for context 327
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 327.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 328 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c5.
entering BRT for context 328
NO CONTRADICTION FOUND IN CONTEXT 328.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 329 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c4.
entering BRT for context 329
naked-single ==> r4c8 = 6
hidden-single-in-a-row ==> r4c6 = 1
NO CONTRADICTION FOUND IN CONTEXT 329.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 330 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r4c4.
entering BRT for context 330
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-row ==> r4c6 = 1
hidden-single-in-a-column ==> r5c9 = 5
hidden-single-in-a-block ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 330.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 331 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r4c4.
entering BRT for context 331
NO CONTRADICTION FOUND IN CONTEXT 331.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 332 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r4c2.
entering BRT for context 332
naked-single ==> r4c8 = 6
hidden-single-in-a-column ==> r6c2 = 7
NO CONTRADICTION FOUND IN CONTEXT 332.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 333 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r4c2.
entering BRT for context 333
NO CONTRADICTION FOUND IN CONTEXT 333.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 334 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r4c2.
entering BRT for context 334
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-column ==> r6c2 = 7
hidden-single-in-a-block ==> r5c3 = 8
NO CONTRADICTION FOUND IN CONTEXT 334.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 335 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c8.
entering BRT for context 335
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-row ==> r6c7 = 9
hidden-single-in-a-row ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 335.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 336 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c8.
entering BRT for context 336
naked-single ==> r4c8 = 6
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-column ==> r5c9 = 8
naked-single ==> r5c7 = 1
naked-single ==> r5c8 = 7
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r8c7 = 6
naked-single ==> r9c7 = 8
naked-single ==> r3c7 = 9
naked-single ==> r4c9 = 5
hidden-single-in-a-block ==> r2c4 = 9
hidden-single-in-a-block ==> r1c1 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
naked-single ==> r9c8 = 4
naked-single ==> r9c4 = 6
naked-single ==> r3c4 = 5
naked-single ==> r8c9 = 3
naked-single ==> r7c9 = 9
naked-single ==> r7c8 = 1
hidden-single-in-a-row ==> r7c3 = 6
hidden-single-in-a-column ==> r5c3 = 3
hidden-single-in-a-column ==> r3c1 = 3
naked-single ==> r3c2 = 2
naked-single ==> r9c2 = 3
naked-single ==> r9c5 = 2
naked-single ==> r8c6 = 1
naked-single ==> r8c4 = 4
naked-single ==> r8c3 = 2
naked-single ==> r6c4 = 8
naked-single ==> r4c4 = 1
naked-single ==> r5c4 = 2
naked-single ==> r5c6 = 5
naked-single ==> r7c6 = 3
naked-single ==> r7c5 = 5
naked-single ==> r4c6 = 7
naked-single ==> r6c5 = 4
naked-single ==> r6c2 = 7
naked-single ==> r6c1 = 5
naked-single ==> r4c5 = 3
naked-single ==> r4c2 = 8
naked-single ==> r1c6 = 8
naked-single ==> r2c6 = 2
naked-single ==> r1c3 = 4
naked-single ==> r2c3 = 8
naked-single ==> r2c1 = 6
naked-single ==> r2c9 = 4
naked-single ==> r1c9 = 6
naked-single ==> r1c5 = 7
naked-single ==> r5c1 = 4
naked-single ==> r7c2 = 4
naked-single ==> r3c5 = 6
NO CONTRADICTION FOUND IN CONTEXT 336.
BACK IN CONTEXT 0 with 26 csp-variables solved and 188 candidates remaining.

GENERATING CONTEXT 337 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c8.
entering BRT for context 337
naked-single ==> r2c7 = 7
naked-single ==> r4c8 = 8
naked-single ==> r5c7 = 1
naked-single ==> r5c8 = 7
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r8c7 = 6
naked-single ==> r9c7 = 8
naked-single ==> r3c7 = 9
naked-single ==> r3c1 = 3
naked-single ==> r5c9 = 5
naked-single ==> r5c1 = 4
naked-single ==> r6c1 = 5
naked-single ==> r4c9 = 6
hidden-single-in-a-row ==> r1c1 = 9
naked-single ==> r2c1 = 6
naked-single ==> r9c1 = 1
naked-single ==> r9c8 = 4
naked-single ==> r9c4 = 6
naked-single ==> r8c9 = 3
naked-single ==> r7c9 = 9
naked-single ==> r7c8 = 1
naked-single ==> r1c8 = 2
hidden-single-in-a-column ==> r1c5 = 6
hidden-single-in-a-block ==> r1c6 = 7
hidden-single-in-a-row ==> r7c3 = 6
hidden-single-in-a-column ==> r5c3 = 3
naked-single ==> r4c2 = 7
naked-single ==> r6c2 = 8
naked-single ==> r6c4 = 4
naked-single ==> r6c5 = 7
naked-single ==> r3c2 = 2
naked-single ==> r9c2 = 3
naked-single ==> r9c5 = 2
naked-single ==> r8c6 = 1
NO POSSIBLE VALUE for csp-variable 184 IN CONTEXT 337. RETRACTING CANDIDATE n6r3c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 187 candidates remaining.

GENERATING CONTEXT 338 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c8.
entering BRT for context 338
NO CONTRADICTION FOUND IN CONTEXT 338.
BACK IN CONTEXT 0 with 26 csp-variables solved and 187 candidates remaining.

GENERATING CONTEXT 339 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c7.
entering BRT for context 339
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
NO CONTRADICTION FOUND IN CONTEXT 339.
BACK IN CONTEXT 0 with 26 csp-variables solved and 187 candidates remaining.

GENERATING CONTEXT 340 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c7.
entering BRT for context 340
hidden-single-in-a-column ==> r5c9 = 8
naked-single ==> r4c8 = 6
hidden-single-in-a-column ==> r9c8 = 8
hidden-single-in-a-block ==> r4c9 = 5
hidden-single-in-a-block ==> r6c7 = 3
NO POSSIBLE VALUE for csp-variable 379 IN CONTEXT 340. RETRACTING CANDIDATE n8r3c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 341 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c7.
entering BRT for context 341
naked-single ==> r2c7 = 7
hidden-single-in-a-column ==> r6c7 = 9
NO CONTRADICTION FOUND IN CONTEXT 341.
BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 342 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c5.
entering BRT for context 342
naked-single ==> r3c7 = 9
naked-single ==> r3c1 = 3
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r2c1 = 6
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-row ==> r6c8 = 9
hidden-single-in-a-block ==> r7c9 = 9
hidden-single-in-a-block ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-block ==> r7c8 = 1
hidden-single-in-a-row ==> r7c3 = 6
NO CONTRADICTION FOUND IN CONTEXT 342.
BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 343 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r3c5.
entering BRT for context 343
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 343.
BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 344 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c5.
entering BRT for context 344
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
naked-single ==> r2c6 = 8
naked-single ==> r1c6 = 7
naked-single ==> r1c5 = 6
naked-single ==> r2c4 = 9
naked-single ==> r3c4 = 5
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-block ==> r2c3 = 2
hidden-single-in-a-block ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 344.
BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 345 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c4.
entering BRT for context 345
naked-single ==> r3c7 = 6
naked-single ==> r3c1 = 3
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r2c1 = 9
hidden-single-in-a-row ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-column ==> r6c7 = 9
NO CONTRADICTION FOUND IN CONTEXT 345.
BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 346 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c4.
entering BRT for context 346
naked-single ==> r1c6 = 7
naked-single ==> r2c6 = 2
naked-single ==> r1c5 = 6
naked-single ==> r3c5 = 5
naked-single ==> r2c4 = 9
hidden-single-in-a-row ==> r2c7 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-column ==> r5c6 = 8
hidden-single-in-a-row ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 346.
BACK IN CONTEXT 0 with 26 csp-variables solved and 186 candidates remaining.

GENERATING CONTEXT 347 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c4.
entering BRT for context 347
naked-single ==> r3c7 = 9
naked-single ==> r3c1 = 3
hidden-single-in-a-row ==> r1c1 = 9
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
naked-single ==> r9c4 = 4
hidden-single-in-a-column ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r6c4 = 8
naked-single ==> r6c7 = 3
naked-single ==> r6c2 = 7
naked-single ==> r6c8 = 9
naked-single ==> r5c1 = 4
naked-single ==> r2c1 = 6
naked-single ==> r2c7 = 7
hidden-single-in-a-block ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
naked-single ==> r8c7 = 6
naked-single ==> r9c8 = 8
NO POSSIBLE VALUE for csp-variable 197 IN CONTEXT 347. RETRACTING CANDIDATE n6r3c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 185 candidates remaining.

GENERATING CONTEXT 348 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r3c4.
entering BRT for context 348
hidden-single-in-a-column ==> r2c4 = 9
NO CONTRADICTION FOUND IN CONTEXT 348.
BACK IN CONTEXT 0 with 26 csp-variables solved and 185 candidates remaining.

GENERATING CONTEXT 349 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r3c2.
entering BRT for context 349
hidden-single-in-a-row ==> r3c1 = 3
hidden-single-in-a-column ==> r5c3 = 8
NO CONTRADICTION FOUND IN CONTEXT 349.
BACK IN CONTEXT 0 with 26 csp-variables solved and 185 candidates remaining.

GENERATING CONTEXT 350 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r3c2.
entering BRT for context 350
NO CONTRADICTION FOUND IN CONTEXT 350.
BACK IN CONTEXT 0 with 26 csp-variables solved and 185 candidates remaining.

GENERATING CONTEXT 351 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r3c2.
entering BRT for context 351
hidden-single-in-a-column ==> r1c8 = 2
hidden-single-in-a-block ==> r2c7 = 7
hidden-single-in-a-column ==> r9c5 = 2
hidden-single-in-a-row ==> r8c3 = 2
hidden-single-in-a-row ==> r3c1 = 3
NO CONTRADICTION FOUND IN CONTEXT 351.
BACK IN CONTEXT 0 with 26 csp-variables solved and 185 candidates remaining.

GENERATING CONTEXT 352 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r3c1.
entering BRT for context 352
naked-single ==> r3c7 = 6
naked-single ==> r2c7 = 7
hidden-single-in-a-row ==> r2c4 = 9
hidden-single-in-a-block ==> r1c5 = 6
hidden-single-in-a-block ==> r1c6 = 7
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
naked-single ==> r8c7 = 3
naked-single ==> r9c7 = 8
naked-single ==> r6c7 = 9
naked-single ==> r6c8 = 8
naked-single ==> r4c8 = 6
naked-single ==> r3c8 = 2
naked-single ==> r3c5 = 5
naked-single ==> r3c4 = 8
naked-single ==> r3c2 = 3
naked-single ==> r2c6 = 2
naked-single ==> r8c6 = 1
hidden-single-in-a-column ==> r4c4 = 1
hidden-single-in-a-block ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-row ==> r9c1 = 3
hidden-single-in-a-column ==> r2c1 = 6
hidden-single-in-a-row ==> r9c4 = 6
naked-single ==> r8c4 = 4
naked-single ==> r8c9 = 6
naked-single ==> r8c3 = 2
naked-single ==> r7c5 = 3
NO POSSIBLE VALUE for csp-variable 263 IN CONTEXT 352. RETRACTING CANDIDATE n9r3c1 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 184 candidates remaining.

GENERATING CONTEXT 353 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r3c1.
entering BRT for context 353
naked-single ==> r3c7 = 9
hidden-single-in-a-row ==> r1c1 = 9
naked-single ==> r2c1 = 4
naked-single ==> r1c3 = 8
naked-single ==> r2c3 = 2
naked-single ==> r3c2 = 3
naked-single ==> r1c2 = 1
naked-single ==> r7c2 = 4
naked-single ==> r9c2 = 2
naked-single ==> r1c6 = 7
naked-single ==> r2c6 = 8
naked-single ==> r3c4 = 5
naked-single ==> r3c5 = 2
naked-single ==> r3c8 = 8
naked-single ==> r4c8 = 6
naked-single ==> r1c5 = 6
naked-single ==> r2c4 = 9
naked-single ==> r1c9 = 4
naked-single ==> r1c8 = 2
naked-single ==> r2c9 = 6
naked-single ==> r8c9 = 3
naked-single ==> r8c3 = 6
NO POSSIBLE VALUE for csp-variable 276 IN CONTEXT 353. RETRACTING CANDIDATE n6r3c1 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 26 csp-variables solved and 183 candidates remaining.

naked-single ==> r3c1 = 3
GENERATING CONTEXT 354 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c9.
entering BRT for context 354
NO CONTRADICTION FOUND IN CONTEXT 354.
BACK IN CONTEXT 0 with 27 csp-variables solved and 179 candidates remaining.

GENERATING CONTEXT 355 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c9.
entering BRT for context 355
naked-single ==> r2c7 = 7
naked-single ==> r3c7 = 9
hidden-single-in-a-row ==> r1c1 = 9
naked-single ==> r2c1 = 4
naked-single ==> r6c1 = 5
NO POSSIBLE VALUE for csp-variable 151 IN CONTEXT 355. RETRACTING CANDIDATE n6r2c9 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 27 csp-variables solved and 178 candidates remaining.

GENERATING CONTEXT 356 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r2c9.
entering BRT for context 356
NO CONTRADICTION FOUND IN CONTEXT 356.
BACK IN CONTEXT 0 with 27 csp-variables solved and 178 candidates remaining.

GENERATING CONTEXT 357 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r2c7.
entering BRT for context 357
NO CONTRADICTION FOUND IN CONTEXT 357.
BACK IN CONTEXT 0 with 27 csp-variables solved and 178 candidates remaining.

GENERATING CONTEXT 358 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c7.
entering BRT for context 358
naked-single ==> r3c7 = 9
hidden-single-in-a-row ==> r1c1 = 9
naked-single ==> r2c1 = 4
naked-single ==> r6c1 = 5
NO POSSIBLE VALUE for csp-variable 151 IN CONTEXT 358. RETRACTING CANDIDATE n6r2c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 27 csp-variables solved and 177 candidates remaining.

naked-single ==> r2c7 = 7
GENERATING CONTEXT 359 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c6.
entering BRT for context 359
naked-single ==> r1c6 = 7
naked-single ==> r2c9 = 4
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
NO CONTRADICTION FOUND IN CONTEXT 359.
BACK IN CONTEXT 0 with 28 csp-variables solved and 174 candidates remaining.

GENERATING CONTEXT 360 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r2c6.
entering BRT for context 360
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 360.
BACK IN CONTEXT 0 with 28 csp-variables solved and 174 candidates remaining.

GENERATING CONTEXT 361 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r2c4.
entering BRT for context 361
hidden-single-in-a-column ==> r1c1 = 9
hidden-single-in-a-column ==> r7c9 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-column ==> r2c1 = 6
NO CONTRADICTION FOUND IN CONTEXT 361.
BACK IN CONTEXT 0 with 28 csp-variables solved and 174 candidates remaining.

GENERATING CONTEXT 362 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c4.
entering BRT for context 362
hidden-single-in-a-row ==> r2c1 = 9
hidden-single-in-a-column ==> r3c4 = 9
naked-single ==> r3c7 = 6
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 362.
BACK IN CONTEXT 0 with 28 csp-variables solved and 174 candidates remaining.

GENERATING CONTEXT 363 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r2c4.
entering BRT for context 363
naked-single ==> r2c6 = 8
naked-single ==> r2c9 = 4
naked-single ==> r2c3 = 6
naked-single ==> r2c1 = 9
naked-single ==> r1c6 = 7
naked-single ==> r1c5 = 6
naked-single ==> r3c5 = 5
naked-single ==> r3c4 = 9
naked-single ==> r3c7 = 6
hidden-single-in-a-row ==> r5c6 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-row ==> r8c4 = 4
naked-single ==> r7c5 = 3
naked-single ==> r8c6 = 1
naked-single ==> r9c4 = 6
NO POSSIBLE VALUE for csp-variable 316 IN CONTEXT 363. RETRACTING CANDIDATE n2r2c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 28 csp-variables solved and 173 candidates remaining.

GENERATING CONTEXT 364 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r2c3.
entering BRT for context 364
naked-single ==> r2c6 = 2
naked-single ==> r2c9 = 4
naked-single ==> r3c2 = 2
hidden-single-in-a-row ==> r1c8 = 2
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-row ==> r8c3 = 2
hidden-single-in-a-row ==> r8c4 = 4
hidden-single-in-a-column ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r6c4 = 8
naked-single ==> r5c1 = 4
naked-single ==> r5c3 = 3
naked-single ==> r6c2 = 7
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r3c8 = 8
naked-single ==> r4c8 = 6
naked-single ==> r4c9 = 5
naked-single ==> r5c9 = 8
naked-single ==> r5c7 = 1
naked-single ==> r8c7 = 6
naked-single ==> r9c7 = 8
naked-single ==> r8c9 = 3
naked-single ==> r8c6 = 1
naked-single ==> r9c4 = 6
naked-single ==> r9c1 = 1
naked-single ==> r9c8 = 4
naked-single ==> r9c2 = 3
naked-single ==> r7c2 = 4
naked-single ==> r7c3 = 6
naked-single ==> r1c3 = 4
naked-single ==> r1c2 = 1
naked-single ==> r7c8 = 1
naked-single ==> r2c4 = 9
naked-single ==> r3c4 = 5
naked-single ==> r3c5 = 6
naked-single ==> r1c5 = 7
naked-single ==> r4c5 = 3
naked-single ==> r7c5 = 5
naked-single ==> r7c6 = 3
naked-single ==> r4c6 = 7
naked-single ==> r5c6 = 5
naked-single ==> r1c6 = 8
naked-single ==> r2c1 = 6
naked-single ==> r1c1 = 9
naked-single ==> r1c9 = 6
naked-single ==> r7c9 = 9
naked-single ==> r3c7 = 9
naked-single ==> r5c8 = 7
naked-single ==> r4c4 = 1
naked-single ==> r4c2 = 8
NO CONTRADICTION FOUND IN CONTEXT 364.
BACK IN CONTEXT 0 with 28 csp-variables solved and 173 candidates remaining.

GENERATING CONTEXT 365 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c3.
entering BRT for context 365
naked-single ==> r2c4 = 9
naked-single ==> r2c1 = 4
naked-single ==> r6c1 = 5
NO POSSIBLE VALUE for csp-variable 151 IN CONTEXT 365. RETRACTING CANDIDATE n6r2c3 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 28 csp-variables solved and 172 candidates remaining.

GENERATING CONTEXT 366 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r2c3.
entering BRT for context 366
naked-single ==> r2c9 = 8
naked-single ==> r2c6 = 2
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-row ==> r5c1 = 4
naked-single ==> r6c1 = 5
NO CONTRADICTION FOUND IN CONTEXT 366.
BACK IN CONTEXT 0 with 28 csp-variables solved and 172 candidates remaining.

GENERATING CONTEXT 367 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r2c3.
entering BRT for context 367
naked-single ==> r2c6 = 8
naked-single ==> r2c9 = 4
naked-single ==> r1c6 = 7
naked-single ==> r3c2 = 8
hidden-single-in-a-column ==> r5c3 = 8
naked-single ==> r5c7 = 1
naked-single ==> r5c8 = 7
hidden-single-in-a-column ==> r1c9 = 8
hidden-single-in-a-column ==> r7c9 = 9
hidden-single-in-a-column ==> r9c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 367.
BACK IN CONTEXT 0 with 28 csp-variables solved and 172 candidates remaining.

GENERATING CONTEXT 368 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r2c1.
entering BRT for context 368
naked-single ==> r2c4 = 6
hidden-single-in-a-column ==> r3c4 = 9
naked-single ==> r3c7 = 6
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
NO CONTRADICTION FOUND IN CONTEXT 368.
BACK IN CONTEXT 0 with 28 csp-variables solved and 172 candidates remaining.

GENERATING CONTEXT 369 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r2c1.
entering BRT for context 369
naked-single ==> r2c4 = 9
hidden-single-in-a-column ==> r1c1 = 9
hidden-single-in-a-column ==> r7c9 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
NO CONTRADICTION FOUND IN CONTEXT 369.
BACK IN CONTEXT 0 with 28 csp-variables solved and 172 candidates remaining.

GENERATING CONTEXT 370 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r2c1.
entering BRT for context 370
naked-single ==> r2c9 = 8
naked-single ==> r2c6 = 2
NO POSSIBLE VALUE for csp-variable 123 IN CONTEXT 370. RETRACTING CANDIDATE n4r2c1 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 28 csp-variables solved and 171 candidates remaining.

GENERATING CONTEXT 371 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r1c9.
entering BRT for context 371
naked-single ==> r3c7 = 6
hidden-single-in-a-column ==> r2c1 = 9
naked-single ==> r2c4 = 6
hidden-single-in-a-block ==> r3c4 = 9
hidden-single-in-a-block ==> r3c5 = 5
hidden-single-in-a-block ==> r7c6 = 5
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-row ==> r7c2 = 1
hidden-single-in-a-column ==> r1c1 = 1
hidden-single-in-a-block ==> r1c3 = 6
hidden-single-in-a-block ==> r9c1 = 6
hidden-single-in-a-column ==> r4c8 = 6
hidden-single-in-a-block ==> r7c5 = 6
naked-single ==> r7c9 = 4
naked-single ==> r7c3 = 3
naked-single ==> r2c9 = 8
naked-single ==> r3c8 = 2
naked-single ==> r3c2 = 8
naked-single ==> r1c8 = 4
naked-single ==> r1c2 = 2
naked-single ==> r9c2 = 4
naked-single ==> r9c4 = 1
naked-single ==> r9c8 = 8
naked-single ==> r9c7 = 3
naked-single ==> r9c5 = 2
naked-single ==> r8c6 = 3
naked-single ==> r8c4 = 4
naked-single ==> r8c9 = 6
naked-single ==> r8c7 = 1
naked-single ==> r5c7 = 8
NO POSSIBLE VALUE for csp-variable 338 IN CONTEXT 371. RETRACTING CANDIDATE n9r1c9 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 28 csp-variables solved and 170 candidates remaining.

hidden-single-in-a-column ==> r7c9 = 9
GENERATING CONTEXT 372 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c9.
entering BRT for context 372
naked-single ==> r1c6 = 7
naked-single ==> r2c9 = 4
hidden-single-in-a-row ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
NO CONTRADICTION FOUND IN CONTEXT 372.
BACK IN CONTEXT 0 with 29 csp-variables solved and 167 candidates remaining.

GENERATING CONTEXT 373 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c9.
entering BRT for context 373
naked-single ==> r3c7 = 9
hidden-single-in-a-row ==> r1c1 = 9
naked-single ==> r2c1 = 6
naked-single ==> r2c4 = 9
hidden-single-in-a-block ==> r3c5 = 6
hidden-single-in-a-block ==> r3c4 = 5
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
hidden-single-in-a-row ==> r4c8 = 6
hidden-single-in-a-row ==> r7c3 = 6
hidden-single-in-a-row ==> r6c8 = 9
hidden-single-in-a-block ==> r5c8 = 7
hidden-single-in-a-block ==> r5c7 = 1
hidden-single-in-a-block ==> r7c8 = 1
NO CONTRADICTION FOUND IN CONTEXT 373.
BACK IN CONTEXT 0 with 29 csp-variables solved and 167 candidates remaining.

GENERATING CONTEXT 374 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c9.
entering BRT for context 374
naked-single ==> r2c9 = 8
naked-single ==> r2c6 = 2
naked-single ==> r2c3 = 4
hidden-single-in-a-row ==> r5c4 = 2
hidden-single-in-a-block ==> r9c5 = 2
hidden-single-in-a-block ==> r8c3 = 2
hidden-single-in-a-row ==> r5c1 = 4
naked-single ==> r6c1 = 5
hidden-single-in-a-row ==> r8c4 = 4
naked-single ==> r6c4 = 8
hidden-single-in-a-column ==> r1c6 = 8
naked-single ==> r1c3 = 6
naked-single ==> r7c3 = 3
naked-single ==> r5c3 = 8
naked-single ==> r5c7 = 1
naked-single ==> r5c8 = 7
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
NO POSSIBLE VALUE for csp-variable 293 IN CONTEXT 374. RETRACTING CANDIDATE n4r1c9 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 29 csp-variables solved and 166 candidates remaining.

GENERATING CONTEXT 375 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r1c8.
entering BRT for context 375
naked-single ==> r3c7 = 6
naked-single ==> r1c9 = 8
naked-single ==> r3c8 = 2
naked-single ==> r3c5 = 5
naked-single ==> r3c2 = 8
naked-single ==> r3c4 = 9
naked-single ==> r2c4 = 6
naked-single ==> r2c1 = 9
naked-single ==> r2c9 = 4
naked-single ==> r2c3 = 2
naked-single ==> r2c6 = 8
naked-single ==> r1c6 = 7
naked-single ==> r1c5 = 2
hidden-single-in-a-column ==> r5c3 = 8
naked-single ==> r5c7 = 1
naked-single ==> r8c7 = 3
naked-single ==> r9c7 = 8
naked-single ==> r6c7 = 9
naked-single ==> r8c9 = 6
naked-single ==> r8c3 = 4
naked-single ==> r1c3 = 6
naked-single ==> r7c3 = 3
naked-single ==> r7c2 = 1
naked-single ==> r9c2 = 2
naked-single ==> r9c1 = 6
naked-single ==> r7c8 = 4
naked-single ==> r9c8 = 1
naked-single ==> r9c4 = 4
naked-single ==> r9c5 = 3
naked-single ==> r4c5 = 7
naked-single ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r6c4 = 8
naked-single ==> r6c8 = 7
NO POSSIBLE VALUE for csp-variable 158 IN CONTEXT 375. RETRACTING CANDIDATE n9r1c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 29 csp-variables solved and 165 candidates remaining.

hidden-single-in-a-row ==> r1c1 = 9
naked-single ==> r2c1 = 6
naked-single ==> r2c4 = 9
hidden-single-in-a-block ==> r1c2 = 1
hidden-single-in-a-block ==> r9c1 = 1
GENERATING CONTEXT 376 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c8.
entering BRT for context 376
naked-single ==> r1c3 = 4
naked-single ==> r1c6 = 7
naked-single ==> r1c9 = 6
naked-single ==> r3c7 = 9
naked-single ==> r3c8 = 2
naked-single ==> r3c2 = 8
naked-single ==> r3c4 = 5
naked-single ==> r3c5 = 6
naked-single ==> r2c3 = 2
naked-single ==> r2c6 = 8
naked-single ==> r1c5 = 2
naked-single ==> r2c9 = 4
naked-single ==> r8c9 = 3
naked-single ==> r8c3 = 6
naked-single ==> r8c7 = 1
naked-single ==> r8c6 = 2
naked-single ==> r8c4 = 4
naked-single ==> r9c5 = 3
naked-single ==> r7c5 = 5
naked-single ==> r7c6 = 1
naked-single ==> r4c5 = 7
naked-single ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r5c1 = 4
naked-single ==> r4c2 = 3
naked-single ==> r7c2 = 4
naked-single ==> r9c2 = 2
naked-single ==> r7c8 = 6
NO POSSIBLE VALUE for csp-variable 148 IN CONTEXT 376. RETRACTING CANDIDATE n8r1c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 34 csp-variables solved and 147 candidates remaining.

GENERATING CONTEXT 377 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r1c8.
entering BRT for context 377
naked-single ==> r1c9 = 8
naked-single ==> r2c9 = 4
naked-single ==> r1c6 = 7
naked-single ==> r1c5 = 2
naked-single ==> r2c6 = 8
naked-single ==> r3c4 = 5
naked-single ==> r3c5 = 6
naked-single ==> r2c3 = 2
naked-single ==> r3c2 = 8
naked-single ==> r1c3 = 4
naked-single ==> r3c7 = 9
naked-single ==> r3c8 = 2
naked-single ==> r4c8 = 8
naked-single ==> r9c8 = 4
naked-single ==> r9c5 = 3
naked-single ==> r9c2 = 2
naked-single ==> r9c4 = 6
naked-single ==> r9c7 = 8
naked-single ==> r7c8 = 1
naked-single ==> r7c6 = 5
naked-single ==> r7c5 = 4
NO POSSIBLE VALUE for csp-variable 474 IN CONTEXT 377. RETRACTING CANDIDATE n6r1c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 34 csp-variables solved and 146 candidates remaining.

GENERATING CONTEXT 378 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r1c8.
entering BRT for context 378
naked-single ==> r1c3 = 8
naked-single ==> r3c2 = 2
NO POSSIBLE VALUE for csp-variable 382 IN CONTEXT 378. RETRACTING CANDIDATE n4r1c8 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 34 csp-variables solved and 145 candidates remaining.

naked-single ==> r1c8 = 2
hidden-single-in-a-block ==> r2c9 = 4
hidden-single-in-a-block ==> r1c3 = 4
hidden-single-in-a-row ==> r8c4 = 4
naked-single ==> r9c4 = 6
hidden-single-in-a-block ==> r6c5 = 4
naked-single ==> r6c1 = 5
naked-single ==> r5c1 = 4
naked-single ==> r6c4 = 8
naked-single ==> r3c4 = 5
naked-single ==> r4c4 = 1
naked-single ==> r5c4 = 2
GENERATING CONTEXT 379 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r1c6.
entering BRT for context 379
naked-single ==> r1c9 = 6
naked-single ==> r8c9 = 3
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 4
naked-single ==> r5c7 = 1
naked-single ==> r8c7 = 6
naked-single ==> r8c3 = 2
naked-single ==> r9c2 = 3
naked-single ==> r9c5 = 2
naked-single ==> r3c5 = 6
naked-single ==> r7c3 = 6
naked-single ==> r7c2 = 4
naked-single ==> r6c2 = 7
naked-single ==> r6c8 = 9
naked-single ==> r6c7 = 3
naked-single ==> r3c8 = 8
naked-single ==> r5c8 = 7
naked-single ==> r4c8 = 6
naked-single ==> r3c2 = 2
naked-single ==> r4c2 = 8
naked-single ==> r5c3 = 3
naked-single ==> r5c6 = 5
naked-single ==> r5c9 = 8
naked-single ==> r8c6 = 1
naked-single ==> r7c6 = 3
naked-single ==> r7c5 = 5
naked-single ==> r4c6 = 7
naked-single ==> r4c5 = 3
naked-single ==> r2c3 = 8
naked-single ==> r7c8 = 1
naked-single ==> r4c9 = 5
naked-single ==> r3c7 = 9
naked-single ==> r1c5 = 7
naked-single ==> r2c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 379.
BACK IN CONTEXT 0 with 46 csp-variables solved and 105 candidates remaining.

GENERATING CONTEXT 380 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r1c6.
entering BRT for context 380
naked-single ==> r1c5 = 6
naked-single ==> r3c5 = 2
naked-single ==> r9c5 = 3
naked-single ==> r9c7 = 8
naked-single ==> r9c8 = 4
naked-single ==> r9c2 = 2
naked-single ==> r5c7 = 1
naked-single ==> r7c5 = 5
naked-single ==> r7c6 = 1
NO POSSIBLE VALUE for csp-variable 381 IN CONTEXT 380. RETRACTING CANDIDATE n7r1c6 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 46 csp-variables solved and 104 candidates remaining.

naked-single ==> r1c6 = 8
naked-single ==> r1c9 = 6
naked-single ==> r1c5 = 7
naked-single ==> r3c7 = 9
naked-single ==> r3c8 = 8
naked-single ==> r3c2 = 2
naked-single ==> r2c3 = 8
naked-single ==> r5c3 = 3
naked-single ==> r6c2 = 7
naked-single ==> r4c2 = 8
naked-single ==> r6c8 = 9
naked-single ==> r7c3 = 6
naked-single ==> r8c3 = 2
naked-single ==> r3c5 = 6
naked-single ==> r4c8 = 6
naked-single ==> r9c8 = 4
naked-single ==> r7c8 = 1
naked-single ==> r5c8 = 7
naked-single ==> r5c6 = 5
naked-single ==> r4c5 = 3
naked-single ==> r4c6 = 7
naked-single ==> r4c9 = 5
naked-single ==> r7c5 = 5
naked-single ==> r9c5 = 2
naked-single ==> r5c9 = 8
naked-single ==> r5c7 = 1
naked-single ==> r7c6 = 3
naked-single ==> r7c2 = 4
naked-single ==> r8c6 = 1
naked-single ==> r9c2 = 3
naked-single ==> r9c7 = 8
naked-single ==> r6c7 = 3
naked-single ==> r8c7 = 6
naked-single ==> r8c9 = 3
naked-single ==> r2c6 = 2
GRID 0 SOLVED. rating-type = T&E(1), MOST COMPLEX RULE TRIED = NS
914378526
658912734
327564981
289137465
463295178
571846392
846753219
792481653
135629847
Puzzle ...3..5...5..1..3...7..4..12.....4...6..9......1..6..28..7..2...9..8..5...5..9..7 :
init-time = 0.19s, solve-time = 3.2s, total-time = 3.39s
nb-facts=<Fact-88032>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = T&E(1)
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
