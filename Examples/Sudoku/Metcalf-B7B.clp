

5.......9.2.1...7...8...3...4.6.........5.......2.7.1...3...8...6...4.2.9.......5 11.80 11.80 03.40 gsftax m_b_metcalf 22 20

This is one of the only 3 known puzzles in B7B. All the other known puzzles are easier.
Here are the other 2:
..3....8..5....2.17...........5.8..6.9.12....8....3....6.9....5..4....7.....1.6.2  11.9 11.9 02.6
.2...67..4...8......9.......3.....7.5.8....4..1.3....2....9..5....6.1..3...2..6.7  11.8 01.2 01.2


This puzzle has a nice symmetry of the givens.

5.......9
.2.1...7.
..8...3..
.4.6.....
....5....
...2.7.1.
..3...8..
.6...4.2.
9.......5

As a result it has an sk-loop:



-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------

Using T&E(B7), we now show that this puzzle is in B7B

-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------


;;; choose p (here p = 7):
 (bind ?*Whips* TRUE)
 (bind ?*Braids* TRUE)
 (bind ?*whips-max-length* 7)
 (bind ?*braids-max-length* 7)

;;; choose one of the following forms of T&E(1)
 (bind ?*TE1* TRUE) ;;; for T&E at level 1
;;; For T&E at level 1, with priority for bivalue variables, add the following:
; (bind ?*special-TE* TRUE)


(solve "5.......9.2.1...7...8...3...4.6.........5.......2.7.1...3...8...6...4.2.9.......5")

(solve "5.......9.2.1...7...8...3...4.6.........5.......2.7.1...3...8...6...4.2.9.......5")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = T&E(1, B)
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
5.......9.2.1...7...8...3...4.6.........5.......2.7.1...3...8...6...4.2.9.......5
20 givens, 246 candidates
entering BRT
Starting_init_links_with_<Fact-3697>
246 candidates, 1628 csp-links and 1628 links. Density = 5.4%
starting non trivial part of solution
Entering_level_W1_with_<Fact-9756>
Entering_level_W2_with_<Fact-9758>
whip[2]: b3n1{r1c7 r3c9} - b3n2{r3c9 .} ==> r1c7 ≠ 4, r1c7 ≠ 6
whip[2]: b3n1{r3c9 r1c7} - b3n2{r1c7 .} ==> r3c9 ≠ 4, r3c9 ≠ 6
whip[2]: b7n2{r7c1 r9c3} - b7n4{r9c3 .} ==> r7c1 ≠ 1, r7c1 ≠ 7
whip[2]: b7n2{r9c3 r7c1} - b7n4{r7c1 .} ==> r9c3 ≠ 1, r9c3 ≠ 7
Entering_level_W3_with_<Fact-10022>
Entering_level_B3_with_<Fact-10151>
Entering_level_W4_with_<Fact-10195>
Entering_level_B4_with_<Fact-10214>
Entering_level_W5_with_<Fact-10260>
Entering_level_B5_with_<Fact-10277>
Entering_level_W6_with_<Fact-10287>
Entering_level_B6_with_<Fact-10304>
Entering_level_W7_with_<Fact-10306>
Entering_level_B7_with_<Fact-10307>

*** STARTING T&E IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining ***

        STARTING PHASE 1 IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining

GENERATING CONTEXT 1 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c8.
entering BRT for context 1
hidden-single-in-a-block ==> r8c9 = 3
Starting_init_links_with_<Fact-10564>
Entering_level_W1_with_<Fact-15439>
whip[1]: b3n6{r2c7 .} ==> r2c1 ≠ 6, r2c6 ≠ 6, r2c5 ≠ 6, r2c3 ≠ 6
Entering_level_W2_with_<Fact-15443>
Entering_level_W3_with_<Fact-15789>
Entering_level_B3_with_<Fact-16190>
Entering_level_W4_with_<Fact-16392>
Entering_level_B4_with_<Fact-16787>
Entering_level_W5_with_<Fact-17316>
whip[5]: r6n3{c1 c5} - r4n3{c5 c8} - c8n5{r4 r3} - r2n5{c7 c6} - r2n3{c6 .} ==> r5c1 ≠ 3
Entering_level_B5_with_<Fact-17654>
Entering_level_W6_with_<Fact-18560>
Entering_level_B6_with_<Fact-18827>
Entering_level_W7_with_<Fact-20175>
Entering_level_B7_with_<Fact-20470>
NO CONTRADICTION FOUND IN CONTEXT 1.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 2 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c8.
entering BRT for context 2
naked-single ==> r9c3 = 2
naked-single ==> r7c1 = 4
hidden-single-in-a-block ==> r8c9 = 3
Starting_init_links_with_<Fact-22723>
Entering_level_W1_with_<Fact-27420>
whip[1]: r3n4{c4 .} ==> r1c4 ≠ 4, r2c5 ≠ 4, r1c5 ≠ 4
hidden-single-in-a-row ==> r1c3 = 4
Entering_level_W2_with_<Fact-27425>
whip[2]: c9n1{r7 r3} - b1n1{r3c2 .} ==> r7c2 ≠ 1
whip[2]: b7n1{r8c1 r9c2} - r1n1{c2 .} ==> r8c7 ≠ 1
Entering_level_W3_with_<Fact-27836>
whip[3]: r1n6{c5 c8} - r3c8{n6 n5} - b2n5{r3c6 .} ==> r2c6 ≠ 6
Entering_level_B3_with_<Fact-28369>
Entering_level_W4_with_<Fact-28610>
Entering_level_B4_with_<Fact-29195>
Entering_level_W5_with_<Fact-29934>
whip[5]: c6n5{r2 r7} - r7c2{n5 n7} - r7c4{n7 n9} - r7c8{n9 n6} - r3c8{n6 .} ==> r3c4 ≠ 5
whip[1]: c4n5{r7 .} ==> r7c6 ≠ 5
whip[5]: r6n3{c1 c5} - r2n3{c5 c6} - c6n5{r2 r3} - c8n5{r3 r4} - r4n3{c8 .} ==> r5c1 ≠ 3
Entering_level_B5_with_<Fact-30773>
Entering_level_W6_with_<Fact-31992>
Entering_level_B6_with_<Fact-32557>
Entering_level_W7_with_<Fact-34586>
whip[7]: c2n9{r5 r3} - r2c3{n9 n6} - r6c3{n6 n5} - r8n5{c3 c4} - c4n9{r8 r7} - r7c8{n9 n6} - b3n6{r3c8 .} ==> r5c3 ≠ 9
Entering_level_B7_with_<Fact-35250>
braid[7]: r7n2{c6 c5} - r7n1{c5 c9} - r7n6{c9 c8} - r3c8{n6 n5} - r3c9{n1 n2} - r3c6{n9 n6} - r1n6{c5 .} ==> r7c6 ≠ 9
NO CONTRADICTION FOUND IN CONTEXT 2.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 3 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c8.
entering BRT for context 3
Starting_init_links_with_<Fact-39016>
Entering_level_W1_with_<Fact-44273>
Entering_level_W2_with_<Fact-44275>
Entering_level_W3_with_<Fact-44556>
Entering_level_B3_with_<Fact-44803>
Entering_level_W4_with_<Fact-44896>
Entering_level_B4_with_<Fact-45004>
Entering_level_W5_with_<Fact-45234>
Entering_level_B5_with_<Fact-45296>
Entering_level_W6_with_<Fact-45604>
Entering_level_B6_with_<Fact-45657>
Entering_level_W7_with_<Fact-46027>
Entering_level_B7_with_<Fact-46067>
NO CONTRADICTION FOUND IN CONTEXT 3.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 4 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r9c7.
entering BRT for context 4
Starting_init_links_with_<Fact-46716>
Entering_level_W1_with_<Fact-51855>
Entering_level_W2_with_<Fact-51857>
whip[2]: c7n1{r1 r8} - b7n1{r8c3 .} ==> r1c2 ≠ 1
whip[2]: r9n4{c3 c8} - b3n4{r3c8 .} ==> r2c3 ≠ 4
Entering_level_W3_with_<Fact-52243>
Entering_level_B3_with_<Fact-52660>
Entering_level_W4_with_<Fact-52844>
Entering_level_B4_with_<Fact-53202>
Entering_level_W5_with_<Fact-53681>
Entering_level_B5_with_<Fact-53977>
Entering_level_W6_with_<Fact-54738>
Entering_level_B6_with_<Fact-55019>
Entering_level_W7_with_<Fact-56117>
Entering_level_B7_with_<Fact-56339>
NO CONTRADICTION FOUND IN CONTEXT 4.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 5 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c7.
entering BRT for context 5
Starting_init_links_with_<Fact-58097>
Entering_level_W1_with_<Fact-63238>
Entering_level_W2_with_<Fact-63240>
whip[2]: c7n1{r1 r8} - b7n1{r8c3 .} ==> r1c2 ≠ 1
whip[2]: r9n4{c3 c8} - b3n4{r3c8 .} ==> r2c3 ≠ 4
Entering_level_W3_with_<Fact-63614>
Entering_level_B3_with_<Fact-64002>
Entering_level_W4_with_<Fact-64179>
Entering_level_B4_with_<Fact-64504>
Entering_level_W5_with_<Fact-64959>
Entering_level_B5_with_<Fact-65245>
Entering_level_W6_with_<Fact-65918>
Entering_level_B6_with_<Fact-66169>
Entering_level_W7_with_<Fact-67108>
Entering_level_B7_with_<Fact-67335>
NO CONTRADICTION FOUND IN CONTEXT 5.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 6 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c7.
entering BRT for context 6
naked-single ==> r9c3 = 2
naked-single ==> r7c1 = 4
Starting_init_links_with_<Fact-68819>
Entering_level_W1_with_<Fact-73790>
Entering_level_W2_with_<Fact-73792>
whip[2]: c7n1{r1 r8} - b7n1{r8c3 .} ==> r1c2 ≠ 1
Entering_level_W3_with_<Fact-74149>
Entering_level_B3_with_<Fact-74495>
Entering_level_W4_with_<Fact-74652>
Entering_level_B4_with_<Fact-74936>
Entering_level_W5_with_<Fact-75260>
Entering_level_B5_with_<Fact-75502>
Entering_level_W6_with_<Fact-75941>
Entering_level_B6_with_<Fact-76104>
Entering_level_W7_with_<Fact-76638>
Entering_level_B7_with_<Fact-76733>
NO CONTRADICTION FOUND IN CONTEXT 6.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 7 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c7.
entering BRT for context 7
naked-single ==> r1c7 = 2
naked-single ==> r3c9 = 1
Starting_init_links_with_<Fact-77561>
Entering_level_W1_with_<Fact-82528>
Entering_level_W2_with_<Fact-82530>
whip[2]: r9n4{c3 c8} - b3n4{r3c8 .} ==> r2c3 ≠ 4
Entering_level_W3_with_<Fact-82879>
Entering_level_B3_with_<Fact-83198>
Entering_level_W4_with_<Fact-83357>
Entering_level_B4_with_<Fact-83608>
Entering_level_W5_with_<Fact-83908>
Entering_level_B5_with_<Fact-84119>
Entering_level_W6_with_<Fact-84512>
Entering_level_B6_with_<Fact-84691>
Entering_level_W7_with_<Fact-85212>
Entering_level_B7_with_<Fact-85346>
NO CONTRADICTION FOUND IN CONTEXT 7.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 8 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c6.
entering BRT for context 8
hidden-single-in-a-row ==> r8c1 = 8
Starting_init_links_with_<Fact-86290>
Entering_level_W1_with_<Fact-91103>
Entering_level_W2_with_<Fact-91105>
whip[2]: c4n8{r5 r1} - c8n8{r1 .} ==> r5c9 ≠ 8
whip[2]: r2n8{c9 c5} - r4n8{c5 .} ==> r6c9 ≠ 8
Entering_level_W3_with_<Fact-91460>
Entering_level_B3_with_<Fact-91859>
Entering_level_W4_with_<Fact-92006>
Entering_level_B4_with_<Fact-92405>
Entering_level_W5_with_<Fact-92816>
Entering_level_B5_with_<Fact-93322>
Entering_level_W6_with_<Fact-94153>
whip[6]: c6n5{r2 r7} - c2n5{r7 r6} - r6n8{c2 c5} - r2n8{c5 c9} - r4n8{c9 c8} - c8n5{r4 .} ==> r3c4 ≠ 5
whip[1]: c4n5{r7 .} ==> r7c6 ≠ 5
Entering_level_B6_with_<Fact-95171>
Entering_level_W7_with_<Fact-96839>
whip[7]: b8n5{r8c4 r7c4} - c2n5{r7 r6} - r6n8{c2 c5} - b5n4{r6c5 r5c4} - c4n9{r5 r3} - c2n9{r3 r5} - c2n8{r5 .} ==> r8c4 ≠ 7
whip[7]: b8n5{r8c4 r7c4} - c2n5{r7 r6} - r6n8{c2 c5} - b5n4{r6c5 r5c4} - c4n9{r5 r3} - c2n9{r3 r5} - c2n8{r5 .} ==> r8c4 ≠ 3
whip[5]: r8n3{c9 c5} - c4n3{r9 r1} - c2n3{r1 r6} - r6n8{c2 c5} - b2n8{r2c5 .} ==> r5c9 ≠ 3
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B7_with_<Fact-99230>
braid[7]: c4n4{r1 r5} - c4n8{r5 r1} - c4n3{r1 r9} - r1c8{n4 n6} - r9c8{n3 n4} - c3n4{r9 r2} - b3n4{r1c8 .} ==> r1c5 ≠ 4
NO CONTRADICTION FOUND IN CONTEXT 8.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 9 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c6.
entering BRT for context 9
Starting_init_links_with_<Fact-103575>
Entering_level_W1_with_<Fact-108636>
Entering_level_W2_with_<Fact-108638>
Entering_level_W3_with_<Fact-108910>
Entering_level_B3_with_<Fact-109116>
Entering_level_W4_with_<Fact-109196>
Entering_level_B4_with_<Fact-109296>
Entering_level_W5_with_<Fact-109404>
Entering_level_B5_with_<Fact-109465>
Entering_level_W6_with_<Fact-109531>
Entering_level_B6_with_<Fact-109558>
Entering_level_W7_with_<Fact-109594>
Entering_level_B7_with_<Fact-109598>
NO CONTRADICTION FOUND IN CONTEXT 9.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 10 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c6.
entering BRT for context 10
hidden-single-in-a-row ==> r8c9 = 3
Starting_init_links_with_<Fact-109871>
Entering_level_W1_with_<Fact-114692>
Entering_level_W2_with_<Fact-114694>
whip[2]: c4n3{r5 r1} - c2n3{r1 .} ==> r5c1 ≠ 3
whip[2]: r2n3{c1 c5} - r6n3{c5 .} ==> r4c1 ≠ 3
Entering_level_W3_with_<Fact-115033>
Entering_level_B3_with_<Fact-115401>
Entering_level_W4_with_<Fact-115535>
Entering_level_B4_with_<Fact-115846>
Entering_level_W5_with_<Fact-116197>
Entering_level_B5_with_<Fact-116517>
Entering_level_W6_with_<Fact-117105>
whip[6]: c4n5{r7 r3} - c8n5{r3 r4} - r4n3{c8 c5} - r2n3{c5 c1} - r6n3{c1 c2} - c2n5{r6 .} ==> r7c6 ≠ 5
whip[1]: b8n5{r8c4 .} ==> r3c4 ≠ 5
Entering_level_B6_with_<Fact-117795>
Entering_level_W7_with_<Fact-118794>
Entering_level_B7_with_<Fact-119338>
NO CONTRADICTION FOUND IN CONTEXT 10.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 11 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c6.
entering BRT for context 11
naked-single ==> r9c3 = 4
naked-single ==> r7c1 = 2
Starting_init_links_with_<Fact-121265>
Entering_level_W1_with_<Fact-126214>
Entering_level_W2_with_<Fact-126216>
Entering_level_W3_with_<Fact-126510>
Entering_level_B3_with_<Fact-126752>
Entering_level_W4_with_<Fact-126870>
Entering_level_B4_with_<Fact-127031>
Entering_level_W5_with_<Fact-127211>
Entering_level_B5_with_<Fact-127340>
Entering_level_W6_with_<Fact-127508>
Entering_level_B6_with_<Fact-127637>
Entering_level_W7_with_<Fact-127813>
Entering_level_B7_with_<Fact-127886>
NO CONTRADICTION FOUND IN CONTEXT 11.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 12 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c6.
entering BRT for context 12
hidden-single-in-a-column ==> r4c5 = 1
Starting_init_links_with_<Fact-128332>
Entering_level_W1_with_<Fact-133175>
Entering_level_W2_with_<Fact-133177>
whip[2]: c7n1{r1 r8} - b7n1{r8c3 .} ==> r1c2 ≠ 1
Entering_level_W3_with_<Fact-133482>
Entering_level_B3_with_<Fact-133763>
Entering_level_W4_with_<Fact-133866>
Entering_level_B4_with_<Fact-134140>
Entering_level_W5_with_<Fact-134361>
Entering_level_B5_with_<Fact-134736>
Entering_level_W6_with_<Fact-135098>
Entering_level_B6_with_<Fact-135595>
Entering_level_W7_with_<Fact-136180>
Entering_level_B7_with_<Fact-136729>
NO CONTRADICTION FOUND IN CONTEXT 12.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 13 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c5.
entering BRT for context 13
hidden-single-in-a-row ==> r8c1 = 8
Starting_init_links_with_<Fact-137850>
Entering_level_W1_with_<Fact-142603>
Entering_level_W2_with_<Fact-142605>
whip[2]: c4n8{r5 r1} - c8n8{r1 .} ==> r5c9 ≠ 8
whip[2]: r2n8{c9 c6} - r4n8{c6 .} ==> r6c9 ≠ 8
hidden-single-in-a-row ==> r6c2 = 8
hidden-single-in-a-column ==> r7c2 = 5
hidden-single-in-a-row ==> r8c4 = 5
Entering_level_W3_with_<Fact-143100>
whip[3]: r2n3{c5 c1} - r6n3{c1 c9} - r8n3{c9 .} ==> r1c5 ≠ 3
whip[3]: r2n9{c5 c3} - r6n9{c3 c7} - r8n9{c7 .} ==> r3c5 ≠ 9
whip[3]: c8n3{r4 r9} - c4n3{r9 r1} - c2n3{r1 .} ==> r5c9 ≠ 3
whip[3]: c8n9{r4 r7} - c4n9{r7 r3} - c2n9{r3 .} ==> r5c7 ≠ 9
whip[3]: b9n3{r8c9 r9c8} - r9c4{n3 n7} - b7n7{r9c2 .} ==> r8c9 ≠ 7
Entering_level_B3_with_<Fact-143682>
Entering_level_W4_with_<Fact-143955>
Entering_level_B4_with_<Fact-144621>
Entering_level_W5_with_<Fact-145364>
whip[5]: r9c4{n3 n7} - r7c4{n7 n9} - r8c5{n9 n1} - r7n1{c5 c9} - r7n7{c9 .} ==> r9c6 ≠ 3
whip[5]: r8n9{c5 c7} - r6n9{c7 c3} - r2n9{c3 c6} - r2n5{c6 c7} - r6n5{c7 .} ==> r4c5 ≠ 9
whip[5]: r8n9{c5 c7} - r6n9{c7 c3} - r2n9{c3 c6} - r2n5{c6 c7} - r6n5{c7 .} ==> r7c5 ≠ 9
whip[5]: r8n9{c7 c5} - r6n9{c5 c3} - r2n9{c3 c6} - r2n5{c6 c7} - r6n5{c7 .} ==> r4c7 ≠ 9
Entering_level_B5_with_<Fact-147336>
Entering_level_W6_with_<Fact-150168>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
whip[6]: c2n9{r5 r3} - c4n9{r3 r7} - c8n9{r7 r4} - c6n9{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c3 ≠ 9
Entering_level_B6_with_<Fact-152215>
Entering_level_W7_with_<Fact-159056>
Entering_level_B7_with_<Fact-162019>
braid[7]: c4n4{r1 r5} - c4n8{r5 r1} - r1c8{n8 n6} - c4n3{r5 r9} - r9c8{n6 n4} - c3n4{r9 r2} - b3n4{r1c8 .} ==> r1c5 ≠ 4
NO CONTRADICTION FOUND IN CONTEXT 13.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 14 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r9c5.
entering BRT for context 14
Starting_init_links_with_<Fact-178677>
Entering_level_W1_with_<Fact-183640>
Entering_level_W2_with_<Fact-183642>
Entering_level_W3_with_<Fact-183954>
Entering_level_B3_with_<Fact-184225>
Entering_level_W4_with_<Fact-184362>
Entering_level_B4_with_<Fact-184538>
Entering_level_W5_with_<Fact-184818>
Entering_level_B5_with_<Fact-184967>
Entering_level_W6_with_<Fact-185334>
Entering_level_B6_with_<Fact-185529>
Entering_level_W7_with_<Fact-185998>
Entering_level_B7_with_<Fact-186264>
NO CONTRADICTION FOUND IN CONTEXT 14.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 15 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r9c5.
entering BRT for context 15
Starting_init_links_with_<Fact-187203>
Entering_level_W1_with_<Fact-192192>
Entering_level_W2_with_<Fact-192194>
Entering_level_W3_with_<Fact-192466>
Entering_level_B3_with_<Fact-192670>
Entering_level_W4_with_<Fact-192752>
Entering_level_B4_with_<Fact-192849>
Entering_level_W5_with_<Fact-192960>
Entering_level_B5_with_<Fact-193018>
Entering_level_W6_with_<Fact-193089>
Entering_level_B6_with_<Fact-193116>
Entering_level_W7_with_<Fact-193160>
Entering_level_B7_with_<Fact-193164>
NO CONTRADICTION FOUND IN CONTEXT 15.
BACK IN CONTEXT 0 with 20 csp-variables solved and 238 candidates remaining.

GENERATING CONTEXT 16 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c5.
entering BRT for context 16
hidden-single-in-a-row ==> r8c9 = 3
Starting_init_links_with_<Fact-193449>
Entering_level_W1_with_<Fact-198210>
whip[1]: r6n3{c1 .} ==> r4c1 ≠ 3, r5c2 ≠ 3, r5c1 ≠ 3
Entering_level_W2_with_<Fact-198214>
Entering_level_W3_with_<Fact-198544>
whip[3]: r4n3{c6 c8} - c8n5{r4 r3} - b2n5{r3c6 .} ==> r2c6 ≠ 3
hidden-single-in-a-row ==> r2c1 = 3
hidden-single-in-a-block ==> r6c2 = 3
hidden-single-in-a-column ==> r7c2 = 5
hidden-single-in-a-row ==> r8c4 = 5
whip[3]: c2n8{r5 r9} - c4n8{r9 r1} - c8n8{r1 .} ==> r5c9 ≠ 8
whip[3]: c2n9{r5 r3} - c4n9{r3 r7} - c8n9{r7 .} ==> r5c7 ≠ 9
whip[3]: c2n9{r3 r5} - r6n9{c3 c7} - r8n9{c7 .} ==> r3c5 ≠ 9
whip[3]: r8n8{c5 c1} - r6n8{c1 c9} - r2n8{c9 .} ==> r1c5 ≠ 8
Entering_level_B3_with_<Fact-199372>
Entering_level_W4_with_<Fact-199649>
whip[4]: c2n9{r3 r5} - c2n8{r5 r9} - r9c4{n8 n7} - r7c4{n7 .} ==> r3c4 ≠ 9
whip[4]: r3c4{n4 n7} - r7c4{n7 n9} - r7c8{n9 n6} - r9c8{n6 .} ==> r3c8 ≠ 4
whip[4]: r8n8{c1 c5} - r6n8{c5 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-201194>
Entering_level_W5_with_<Fact-202595>
whip[5]: r9c8{n4 n6} - r7c8{n6 n9} - r7c4{n9 n7} - r3c4{n7 n4} - c1n4{r3 .} ==> r7c9 ≠ 4
whip[3]: b3n4{r2c7 r1c8} - c3n4{r1 r9} - b9n4{r9c7 .} ==> r2c5 ≠ 4
whip[5]: r1c2{n1 n7} - r9c2{n7 n8} - r9c4{n8 n7} - r7n7{c4 c9} - c9n1{r7 .} ==> r3c2 ≠ 1
whip[5]: c2n8{r5 r9} - c4n8{r9 r1} - c8n8{r1 r4} - r4n3{c8 c6} - r1n3{c6 .} ==> r5c6 ≠ 8
whip[5]: c8n3{r4 r5} - c8n9{r5 r7} - c4n9{r7 r5} - r5c6{n9 n1} - r4c5{n1 .} ==> r4c8 ≠ 8
whip[3]: c2n8{r9 r5} - c4n8{r5 r1} - c8n8{r1 .} ==> r9c6 ≠ 8
whip[3]: c8n8{r1 r5} - c4n8{r5 r9} - c2n8{r9 .} ==> r1c6 ≠ 8
whip[4]: r4n3{c6 c8} - c8n5{r4 r3} - r2n5{c7 c6} - c6n8{r2 .} ==> r4c6 ≠ 1
whip[4]: r4n3{c6 c8} - c8n5{r4 r3} - r2n5{c7 c6} - c6n8{r2 .} ==> r4c6 ≠ 9
whip[4]: b2n5{r2c6 r3c6} - c8n5{r3 r4} - r4n3{c8 c6} - c6n8{r4 .} ==> r2c6 ≠ 6
whip[4]: b2n5{r2c6 r3c6} - c8n5{r3 r4} - r4n3{c8 c6} - c6n8{r4 .} ==> r2c6 ≠ 9
whip[2]: r2n9{c3 c5} - b5n9{r6c5 .} ==> r5c3 ≠ 9
whip[3]: c4n9{r7 r5} - c2n9{r5 r3} - c6n9{r3 .} ==> r7c5 ≠ 9
whip[3]: c4n9{r7 r5} - c2n9{r5 r3} - c6n9{r3 .} ==> r8c5 ≠ 9
hidden-single-in-a-row ==> r8c7 = 9
whip[2]: r6n9{c5 c3} - r2n9{c3 .} ==> r4c5 ≠ 9
whip[2]: r6n9{c3 c5} - r2n9{c5 .} ==> r4c3 ≠ 9
hidden-single-in-a-row ==> r4c8 = 9
hidden-single-in-a-column ==> r3c8 = 5
hidden-single-in-a-block ==> r2c6 = 5
hidden-single-in-a-column ==> r4c6 = 8
NO POSSIBLE VALUE for csp-variable 243 IN CONTEXT 16. RETRACTING CANDIDATE n3r9c5 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 17 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c5.
entering BRT for context 17
naked-single ==> r9c3 = 4
naked-single ==> r7c1 = 2
Starting_init_links_with_<Fact-205076>
Entering_level_W1_with_<Fact-209953>
Entering_level_W2_with_<Fact-209955>
Entering_level_W3_with_<Fact-210243>
Entering_level_B3_with_<Fact-210472>
Entering_level_W4_with_<Fact-210588>
Entering_level_B4_with_<Fact-210739>
Entering_level_W5_with_<Fact-210910>
Entering_level_B5_with_<Fact-211027>
Entering_level_W6_with_<Fact-211164>
Entering_level_B6_with_<Fact-211263>
Entering_level_W7_with_<Fact-211361>
Entering_level_B7_with_<Fact-211388>
NO CONTRADICTION FOUND IN CONTEXT 17.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 18 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c5.
entering BRT for context 18
Starting_init_links_with_<Fact-211696>
Entering_level_W1_with_<Fact-216765>
Entering_level_W2_with_<Fact-216767>
whip[2]: c7n1{r1 r8} - b7n1{r8c3 .} ==> r1c2 ≠ 1
Entering_level_W3_with_<Fact-217082>
Entering_level_B3_with_<Fact-217353>
Entering_level_W4_with_<Fact-217460>
Entering_level_B4_with_<Fact-217694>
Entering_level_W5_with_<Fact-217906>
Entering_level_B5_with_<Fact-218178>
Entering_level_W6_with_<Fact-218480>
Entering_level_B6_with_<Fact-218776>
Entering_level_W7_with_<Fact-219198>
Entering_level_B7_with_<Fact-219449>
NO CONTRADICTION FOUND IN CONTEXT 18.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 19 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c4.
entering BRT for context 19
hidden-single-in-a-row ==> r8c1 = 8
Starting_init_links_with_<Fact-220221>
Entering_level_W1_with_<Fact-225150>
Entering_level_W2_with_<Fact-225152>
Entering_level_W3_with_<Fact-225438>
Entering_level_B3_with_<Fact-225679>
Entering_level_W4_with_<Fact-225777>
Entering_level_B4_with_<Fact-225930>
Entering_level_W5_with_<Fact-226151>
Entering_level_B5_with_<Fact-226304>
Entering_level_W6_with_<Fact-226643>
Entering_level_B6_with_<Fact-226824>
Entering_level_W7_with_<Fact-227298>
Entering_level_B7_with_<Fact-227501>
NO CONTRADICTION FOUND IN CONTEXT 19.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 20 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r9c4.
entering BRT for context 20
Starting_init_links_with_<Fact-228385>
Entering_level_W1_with_<Fact-233458>
Entering_level_W2_with_<Fact-233460>
Entering_level_W3_with_<Fact-233761>
Entering_level_B3_with_<Fact-233982>
Entering_level_W4_with_<Fact-234092>
Entering_level_B4_with_<Fact-234230>
Entering_level_W5_with_<Fact-234408>
Entering_level_B5_with_<Fact-234553>
Entering_level_W6_with_<Fact-234783>
Entering_level_B6_with_<Fact-234987>
Entering_level_W7_with_<Fact-235317>
Entering_level_B7_with_<Fact-235587>
NO CONTRADICTION FOUND IN CONTEXT 20.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 21 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r9c4.
entering BRT for context 21
hidden-single-in-a-row ==> r8c9 = 3
Starting_init_links_with_<Fact-236352>
Entering_level_W1_with_<Fact-241341>
Entering_level_W2_with_<Fact-241343>
Entering_level_W3_with_<Fact-241606>
Entering_level_B3_with_<Fact-241847>
Entering_level_W4_with_<Fact-241921>
Entering_level_B4_with_<Fact-242062>
Entering_level_W5_with_<Fact-242245>
whip[5]: r6n3{c1 c5} - r4n3{c5 c8} - c8n5{r4 r3} - r2n5{c7 c6} - r2n3{c6 .} ==> r5c1 ≠ 3
Entering_level_B5_with_<Fact-242349>
Entering_level_W6_with_<Fact-242571>
Entering_level_B6_with_<Fact-242654>
Entering_level_W7_with_<Fact-242905>
Entering_level_B7_with_<Fact-242985>
NO CONTRADICTION FOUND IN CONTEXT 21.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 22 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r9c3.
entering BRT for context 22
naked-single ==> r7c1 = 2
Starting_init_links_with_<Fact-243503>
Entering_level_W1_with_<Fact-248682>
Entering_level_W2_with_<Fact-248684>
Entering_level_W3_with_<Fact-248965>
Entering_level_B3_with_<Fact-249148>
Entering_level_W4_with_<Fact-249246>
Entering_level_B4_with_<Fact-249358>
Entering_level_W5_with_<Fact-249480>
Entering_level_B5_with_<Fact-249589>
Entering_level_W6_with_<Fact-249688>
Entering_level_B6_with_<Fact-249776>
Entering_level_W7_with_<Fact-249860>
Entering_level_B7_with_<Fact-249886>
NO CONTRADICTION FOUND IN CONTEXT 22.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 23 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r9c3.
entering BRT for context 23
naked-single ==> r7c1 = 4
Starting_init_links_with_<Fact-250186>
Entering_level_W1_with_<Fact-255369>
Entering_level_W2_with_<Fact-255371>
Entering_level_W3_with_<Fact-255654>
Entering_level_B3_with_<Fact-255844>
Entering_level_W4_with_<Fact-255941>
Entering_level_B4_with_<Fact-256076>
Entering_level_W5_with_<Fact-256181>
Entering_level_B5_with_<Fact-256314>
Entering_level_W6_with_<Fact-256400>
Entering_level_B6_with_<Fact-256513>
Entering_level_W7_with_<Fact-256581>
Entering_level_B7_with_<Fact-256619>
NO CONTRADICTION FOUND IN CONTEXT 23.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 24 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r9c2.
entering BRT for context 24
Starting_init_links_with_<Fact-256907>
Entering_level_W1_with_<Fact-262102>
Entering_level_W2_with_<Fact-262104>
Entering_level_W3_with_<Fact-262387>
Entering_level_B3_with_<Fact-262618>
Entering_level_W4_with_<Fact-262732>
Entering_level_B4_with_<Fact-262866>
Entering_level_W5_with_<Fact-263149>
Entering_level_B5_with_<Fact-263267>
Entering_level_W6_with_<Fact-263734>
Entering_level_B6_with_<Fact-263868>
Entering_level_W7_with_<Fact-264558>
Entering_level_B7_with_<Fact-264736>
NO CONTRADICTION FOUND IN CONTEXT 24.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 25 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r9c2.
entering BRT for context 25
hidden-single-in-a-block ==> r8c1 = 8
Starting_init_links_with_<Fact-265920>
Entering_level_W1_with_<Fact-270721>
Entering_level_W2_with_<Fact-270723>
Entering_level_W3_with_<Fact-271057>
Entering_level_B3_with_<Fact-271463>
Entering_level_W4_with_<Fact-271632>
Entering_level_B4_with_<Fact-272093>
Entering_level_W5_with_<Fact-272660>
Entering_level_B5_with_<Fact-273219>
Entering_level_W6_with_<Fact-274480>
Entering_level_B6_with_<Fact-275072>
Entering_level_W7_with_<Fact-277172>
Entering_level_B7_with_<Fact-277706>
NO CONTRADICTION FOUND IN CONTEXT 25.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 26 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r9c2.
entering BRT for context 26
hidden-single-in-a-block ==> r8c1 = 8
Starting_init_links_with_<Fact-280629>
Entering_level_W1_with_<Fact-285456>
Entering_level_W2_with_<Fact-285458>
Entering_level_W3_with_<Fact-285797>
Entering_level_B3_with_<Fact-286237>
Entering_level_W4_with_<Fact-286386>
Entering_level_B4_with_<Fact-286799>
Entering_level_W5_with_<Fact-287220>
whip[5]: b9n9{r7c8 r8c7} - c7n1{r8 r1} - r3n1{c9 c1} - c1n4{r3 r2} - b3n4{r2c9 .} ==> r7c8 ≠ 4
Entering_level_B5_with_<Fact-287746>
Entering_level_W6_with_<Fact-288576>
Entering_level_B6_with_<Fact-288920>
Entering_level_W7_with_<Fact-290098>
Entering_level_B7_with_<Fact-290426>
NO CONTRADICTION FOUND IN CONTEXT 26.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 27 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r8c9.
entering BRT for context 27
hidden-single-in-a-block ==> r9c8 = 3
Starting_init_links_with_<Fact-292299>
Entering_level_W1_with_<Fact-297120>
whip[1]: b7n7{r7c2 .} ==> r1c2 ≠ 7, r5c2 ≠ 7, r3c2 ≠ 7
Entering_level_W2_with_<Fact-297124>
Entering_level_W3_with_<Fact-297478>
Entering_level_B3_with_<Fact-297880>
Entering_level_W4_with_<Fact-298088>
Entering_level_B4_with_<Fact-298482>
Entering_level_W5_with_<Fact-299015>
Entering_level_B5_with_<Fact-299362>
Entering_level_W6_with_<Fact-300321>
Entering_level_B6_with_<Fact-300609>
Entering_level_W7_with_<Fact-301997>
whip[7]: r9c4{n8 n7} - r7n7{c4 c2} - c2n5{r7 r6} - c2n8{r6 r5} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
Entering_level_B7_with_<Fact-302296>
NO CONTRADICTION FOUND IN CONTEXT 27.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 28 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c9.
entering BRT for context 28
Starting_init_links_with_<Fact-304444>
Entering_level_W1_with_<Fact-309649>
Entering_level_W2_with_<Fact-309651>
Entering_level_W3_with_<Fact-309930>
Entering_level_B3_with_<Fact-310172>
Entering_level_W4_with_<Fact-310259>
Entering_level_B4_with_<Fact-310399>
Entering_level_W5_with_<Fact-310590>
whip[5]: r6n3{c1 c5} - r4n3{c5 c8} - c8n5{r4 r3} - r2n5{c7 c6} - r2n3{c6 .} ==> r5c1 ≠ 3
Entering_level_B5_with_<Fact-310693>
Entering_level_W6_with_<Fact-310917>
Entering_level_B6_with_<Fact-311002>
Entering_level_W7_with_<Fact-311247>
Entering_level_B7_with_<Fact-311314>
NO CONTRADICTION FOUND IN CONTEXT 28.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 29 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c9.
entering BRT for context 29
naked-single ==> r3c9 = 2
naked-single ==> r1c7 = 1
hidden-single-in-a-block ==> r9c8 = 3
Starting_init_links_with_<Fact-311812>
Entering_level_W1_with_<Fact-316517>
whip[1]: c3n1{r4 .} ==> r4c1 ≠ 1, r5c2 ≠ 1, r5c1 ≠ 1
hidden-single-in-a-column ==> r3c1 = 1
Entering_level_W2_with_<Fact-316522>
whip[2]: c1n4{r7 r2} - b3n4{r2c9 .} ==> r7c8 ≠ 4
whip[2]: b9n4{r9c7 r7c9} - c1n4{r7 .} ==> r2c7 ≠ 4
Entering_level_W3_with_<Fact-316941>
Entering_level_B3_with_<Fact-317453>
Entering_level_W4_with_<Fact-317713>
Entering_level_B4_with_<Fact-318243>
Entering_level_W5_with_<Fact-318987>
Entering_level_B5_with_<Fact-319502>
Entering_level_W6_with_<Fact-320971>
Entering_level_B6_with_<Fact-321490>
Entering_level_W7_with_<Fact-323962>
Entering_level_B7_with_<Fact-324520>
NO CONTRADICTION FOUND IN CONTEXT 29.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 30 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r8c7.
entering BRT for context 30
Starting_init_links_with_<Fact-328768>
Entering_level_W1_with_<Fact-333963>
Entering_level_W2_with_<Fact-333965>
Entering_level_W3_with_<Fact-334231>
Entering_level_B3_with_<Fact-334468>
Entering_level_W4_with_<Fact-334544>
Entering_level_B4_with_<Fact-334683>
Entering_level_W5_with_<Fact-334860>
whip[5]: r6n9{c2 c5} - r4n9{c5 c8} - c8n5{r4 r3} - r2n5{c7 c6} - r2n9{c6 .} ==> r5c3 ≠ 9
Entering_level_B5_with_<Fact-334957>
Entering_level_W6_with_<Fact-335175>
Entering_level_B6_with_<Fact-335254>
Entering_level_W7_with_<Fact-335508>
Entering_level_B7_with_<Fact-335570>
NO CONTRADICTION FOUND IN CONTEXT 30.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 31 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r8c7.
entering BRT for context 31
hidden-single-in-a-block ==> r7c8 = 9
Starting_init_links_with_<Fact-336073>
Entering_level_W1_with_<Fact-340840>
whip[1]: b7n7{r7c2 .} ==> r1c2 ≠ 7, r5c2 ≠ 7, r3c2 ≠ 7
Entering_level_W2_with_<Fact-340844>
Entering_level_W3_with_<Fact-341195>
Entering_level_B3_with_<Fact-341609>
Entering_level_W4_with_<Fact-341813>
Entering_level_B4_with_<Fact-342229>
Entering_level_W5_with_<Fact-342788>
Entering_level_B5_with_<Fact-343158>
Entering_level_W6_with_<Fact-344215>
Entering_level_B6_with_<Fact-344536>
Entering_level_W7_with_<Fact-346167>
Entering_level_B7_with_<Fact-346524>
NO CONTRADICTION FOUND IN CONTEXT 31.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 32 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c7.
entering BRT for context 32
naked-single ==> r1c7 = 2
naked-single ==> r3c9 = 1
hidden-single-in-a-block ==> r7c8 = 9
Starting_init_links_with_<Fact-349157>
Entering_level_W1_with_<Fact-353804>
whip[1]: c1n1{r4 .} ==> r4c3 ≠ 1, r5c3 ≠ 1, r5c2 ≠ 1
hidden-single-in-a-column ==> r1c3 = 1
Entering_level_W2_with_<Fact-353809>
whip[2]: c3n4{r9 r2} - b3n4{r2c9 .} ==> r9c8 ≠ 4
whip[2]: b9n4{r7c9 r9c7} - c3n4{r9 .} ==> r2c9 ≠ 4
Entering_level_W3_with_<Fact-354227>
Entering_level_B3_with_<Fact-354745>
Entering_level_W4_with_<Fact-355014>
Entering_level_B4_with_<Fact-355564>
Entering_level_W5_with_<Fact-356336>
Entering_level_B5_with_<Fact-356883>
Entering_level_W6_with_<Fact-358423>
Entering_level_B6_with_<Fact-359023>
Entering_level_W7_with_<Fact-361623>
Entering_level_B7_with_<Fact-362323>
NO CONTRADICTION FOUND IN CONTEXT 32.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 33 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r8c5.
entering BRT for context 33
hidden-single-in-a-row ==> r7c8 = 9
Starting_init_links_with_<Fact-367029>
Entering_level_W1_with_<Fact-371810>
Entering_level_W2_with_<Fact-371812>
whip[2]: b5n9{r5c4 r4c6} - r2n9{c6 .} ==> r5c3 ≠ 9
Entering_level_W3_with_<Fact-372124>
Entering_level_B3_with_<Fact-372482>
Entering_level_W4_with_<Fact-372606>
Entering_level_B4_with_<Fact-372871>
Entering_level_W5_with_<Fact-373199>
Entering_level_B5_with_<Fact-373362>
Entering_level_W6_with_<Fact-373926>
Entering_level_B6_with_<Fact-374082>
Entering_level_W7_with_<Fact-374810>
Entering_level_B7_with_<Fact-374974>
NO CONTRADICTION FOUND IN CONTEXT 33.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 34 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r8c5.
entering BRT for context 34
hidden-single-in-a-row ==> r9c2 = 8
Starting_init_links_with_<Fact-376107>
Entering_level_W1_with_<Fact-380880>
Entering_level_W2_with_<Fact-380882>
whip[2]: b5n8{r5c4 r4c6} - r2n8{c6 .} ==> r5c9 ≠ 8
Entering_level_W3_with_<Fact-381204>
whip[3]: r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r5c1 ≠ 8
Entering_level_B3_with_<Fact-381556>
Entering_level_W4_with_<Fact-381710>
Entering_level_B4_with_<Fact-381987>
Entering_level_W5_with_<Fact-382349>
Entering_level_B5_with_<Fact-382589>
Entering_level_W6_with_<Fact-383194>
Entering_level_B6_with_<Fact-383393>
Entering_level_W7_with_<Fact-384231>
Entering_level_B7_with_<Fact-384420>
NO CONTRADICTION FOUND IN CONTEXT 34.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 35 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r8c5.
entering BRT for context 35
Starting_init_links_with_<Fact-385738>
Entering_level_W1_with_<Fact-390623>
whip[1]: b7n7{r7c2 .} ==> r1c2 ≠ 7, r5c2 ≠ 7, r3c2 ≠ 7
Entering_level_W2_with_<Fact-390627>
Entering_level_W3_with_<Fact-391047>
Entering_level_B3_with_<Fact-391641>
Entering_level_W4_with_<Fact-391988>
Entering_level_B4_with_<Fact-392576>
Entering_level_W5_with_<Fact-393785>
Entering_level_B5_with_<Fact-394298>
braid[5]: c2n5{r6 r7} - r8c3{n5 n1} - r7n7{c2 c9} - c9n1{r8 r3} - r3c2{n1 .} ==> r6c2 ≠ 9
whip[5]: r2n9{c5 c3} - r3c2{n9 n1} - r1n1{c2 c7} - r8c7{n1 n9} - r6n9{c7 .} ==> r3c5 ≠ 9
Entering_level_W6_with_<Fact-397360>
whip[6]: r8n9{c4 c7} - r6n9{c7 c3} - r2n9{c3 c6} - r2n5{c6 c7} - c8n5{r3 r4} - r4n9{c8 .} ==> r7c5 ≠ 9
Entering_level_B6_with_<Fact-398304>
Entering_level_W7_with_<Fact-403577>
Entering_level_B7_with_<Fact-404508>
NO CONTRADICTION FOUND IN CONTEXT 35.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 36 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c5.
entering BRT for context 36
hidden-single-in-a-row ==> r9c8 = 3
Starting_init_links_with_<Fact-414198>
Entering_level_W1_with_<Fact-419027>
Entering_level_W2_with_<Fact-419029>
whip[2]: b5n3{r5c4 r4c6} - r2n3{c6 .} ==> r5c1 ≠ 3
Entering_level_W3_with_<Fact-419342>
Entering_level_B3_with_<Fact-419685>
Entering_level_W4_with_<Fact-419804>
Entering_level_B4_with_<Fact-420035>
Entering_level_W5_with_<Fact-420324>
Entering_level_B5_with_<Fact-420462>
Entering_level_W6_with_<Fact-420903>
Entering_level_B6_with_<Fact-421008>
Entering_level_W7_with_<Fact-421516>
Entering_level_B7_with_<Fact-421590>
NO CONTRADICTION FOUND IN CONTEXT 36.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 37 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c5.
entering BRT for context 37
Starting_init_links_with_<Fact-422442>
Entering_level_W1_with_<Fact-427435>
whip[1]: b7n1{r7c2 .} ==> r1c2 ≠ 1, r5c2 ≠ 1, r3c2 ≠ 1
Entering_level_W2_with_<Fact-427439>
Entering_level_W3_with_<Fact-427842>
Entering_level_B3_with_<Fact-428438>
Entering_level_W4_with_<Fact-428683>
Entering_level_B4_with_<Fact-429386>
Entering_level_W5_with_<Fact-430228>
Entering_level_B5_with_<Fact-431078>
Entering_level_W6_with_<Fact-432965>
Entering_level_B6_with_<Fact-433927>
Entering_level_W7_with_<Fact-437564>
Entering_level_B7_with_<Fact-438652>
NO CONTRADICTION FOUND IN CONTEXT 37.
BACK IN CONTEXT 0 with 20 csp-variables solved and 237 candidates remaining.

GENERATING CONTEXT 38 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r8c4.
entering BRT for context 38
hidden-single-in-a-row ==> r7c8 = 9
hidden-single-in-a-row ==> r8c3 = 5
hidden-single-in-a-column ==> r6c2 = 5
Starting_init_links_with_<Fact-445273>
Entering_level_W1_with_<Fact-449854>
Entering_level_W2_with_<Fact-449856>
Entering_level_W3_with_<Fact-450199>
whip[3]: r2n3{c5 c1} - r6n3{c1 c9} - r8n3{c9 .} ==> r1c5 ≠ 3
whip[3]: r2n8{c5 c9} - r6n8{c9 c1} - r8n8{c1 .} ==> r1c5 ≠ 8
whip[3]: c8n3{r4 r9} - c4n3{r9 r1} - c2n3{r1 .} ==> r5c9 ≠ 3
whip[3]: c8n8{r4 r1} - c4n8{r1 r9} - c2n8{r9 .} ==> r5c9 ≠ 8
Entering_level_B3_with_<Fact-450607>
Entering_level_W4_with_<Fact-450779>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
whip[4]: r8n8{c5 c1} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
Entering_level_B4_with_<Fact-451145>
Entering_level_W5_with_<Fact-451613>
whip[5]: c3n7{r4 r1} - c1n7{r3 r8} - r7c2{n7 n1} - r1n1{c2 c7} - r8c7{n1 .} ==> r5c2 ≠ 7
Entering_level_B5_with_<Fact-451999>
Entering_level_W6_with_<Fact-452913>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - r4n5{c7 .} ==> r5c1 ≠ 3
whip[6]: r8n8{c5 c1} - c2n8{r9 r5} - c2n3{r5 r1} - r2n3{c1 c6} - r2n9{c6 c3} - b4n9{r6c3 .} ==> r2c5 ≠ 8
Entering_level_B6_with_<Fact-454080>
Entering_level_W7_with_<Fact-455839>
whip[7]: c2n3{r1 r5} - c2n8{r5 r9} - b8n8{r9c6 r8c5} - c4n8{r9 r5} - b5n4{r5c4 r6c5} - r6n3{c5 c9} - r8n3{c9 .} ==> r1c4 ≠ 3
whip[5]: r8n3{c9 c5} - r8n8{c5 c1} - r6n8{c1 c5} - b5n4{r6c5 r5c4} - c4n3{r5 .} ==> r6c9 ≠ 3
whip[6]: b5n4{r6c5 r5c4} - c4n3{r5 r9} - c4n8{r9 r1} - b3n8{r1c8 r2c9} - r6n8{c9 c1} - r6n3{c1 .} ==> r6c5 ≠ 9
whip[6]: c4n3{r9 r5} - r6n3{c5 c1} - r2n3{c1 c6} - r2n8{c6 c9} - r6n8{c9 c5} - b5n4{r6c5 .} ==> r8c5 ≠ 3
hidden-single-in-a-row ==> r8c9 = 3
whip[5]: r2n5{c6 c7} - c8n5{r3 r4} - c8n3{r4 r5} - c8n8{r5 r1} - b2n8{r1c6 .} ==> r2c6 ≠ 3
whip[2]: r2n3{c5 c1} - r6n3{c1 .} ==> r4c5 ≠ 3
whip[2]: r2n3{c1 c5} - r6n3{c5 .} ==> r4c1 ≠ 3
whip[5]: r2n8{c6 c9} - b6n8{r6c9 r4c8} - b4n8{r4c1 r6c1} - r6n3{c1 c5} - r4n3{c6 .} ==> r5c6 ≠ 8
whip[5]: r2n5{c6 c7} - c8n5{r3 r4} - c8n3{r4 r5} - c8n8{r5 r1} - b2n8{r1c6 .} ==> r2c6 ≠ 6
whip[5]: r2n5{c6 c7} - c8n5{r3 r4} - c8n3{r4 r5} - c8n8{r5 r1} - b2n8{r1c6 .} ==> r2c6 ≠ 9
whip[4]: b2n3{r2c5 r1c6} - c2n3{r1 r5} - c2n9{r5 r3} - b2n9{r3c5 .} ==> r2c5 ≠ 6
whip[4]: b2n3{r2c5 r1c6} - c2n3{r1 r5} - c2n9{r5 r3} - b2n9{r3c5 .} ==> r2c5 ≠ 4
whip[4]: c2n9{r5 r3} - b2n9{r3c5 r2c5} - r2n3{c5 c1} - b4n3{r6c1 .} ==> r5c2 ≠ 1
whip[4]: c2n9{r5 r3} - b2n9{r3c5 r2c5} - r2n3{c5 c1} - b4n3{r6c1 .} ==> r5c2 ≠ 8
hidden-single-in-a-column ==> r9c2 = 8
hidden-single-in-a-block ==> r8c5 = 8
whip[2]: c2n1{r1 r7} - c9n1{r7 .} ==> r3c1 ≠ 1
whip[3]: r4n3{c8 c6} - r6n3{c5 c1} - r6n8{c1 .} ==> r4c8 ≠ 8
whip[2]: c8n8{r1 r5} - c4n8{r5 .} ==> r1c6 ≠ 8
whip[3]: r5n8{c4 c8} - r6n8{c9 c1} - r6n3{c1 .} ==> r5c4 ≠ 3
hidden-single-in-a-column ==> r9c4 = 3
whip[4]: r4n3{c6 c8} - c8n5{r4 r3} - b2n5{r3c6 r2c6} - c6n8{r2 .} ==> r4c6 ≠ 9
whip[2]: c6n9{r3 r5} - c2n9{r5 .} ==> r3c5 ≠ 9
whip[2]: b5n9{r5c6 r4c5} - r2n9{c5 .} ==> r5c3 ≠ 9
whip[2]: c6n9{r5 r3} - c2n9{r3 .} ==> r5c7 ≠ 9
whip[4]: r4n5{c7 c8} - r4n3{c8 c6} - b2n3{r1c6 r2c5} - c5n9{r2 .} ==> r4c7 ≠ 9
hidden-single-in-a-block ==> r6c7 = 9
naked-single ==> r6c3 = 6
whip[3]: b5n8{r4c6 r5c4} - b5n4{r5c4 r6c5} - r6c9{n4 .} ==> r4c9 ≠ 8
whip[3]: b2n9{r3c6 r2c5} - r2n3{c5 c1} - c1n6{r2 .} ==> r3c6 ≠ 6
whip[4]: c8n5{r3 r4} - r4n3{c8 c6} - b2n3{r1c6 r2c5} - b2n9{r2c5 .} ==> r3c6 ≠ 5
whip[3]: r5c4{n4 n8} - b2n8{r1c4 r2c6} - b2n5{r2c6 .} ==> r3c4 ≠ 4
whip[2]: c4n4{r1 r5} - c4n8{r5 .} ==> r1c4 ≠ 7
whip[2]: c4n7{r3 r7} - c2n7{r7 .} ==> r3c1 ≠ 7
whip[3]: r9c8{n6 n4} - b7n4{r9c3 r7c1} - r3c1{n4 .} ==> r3c8 ≠ 6
whip[3]: r2n8{c9 c6} - r2n5{c6 c7} - r3c8{n5 .} ==> r2c9 ≠ 4
whip[3]: c1n3{r2 r6} - r6n8{c1 c9} - r2c9{n8 .} ==> r2c1 ≠ 6
hidden-single-in-a-block ==> r3c1 = 6
whip[1]: b2n6{r1c5 .} ==> r1c8 ≠ 6
whip[2]: r3n4{c8 c5} - r6n4{c5 .} ==> r5c8 ≠ 4
whip[2]: r1c8{n4 n8} - r1c4{n8 .} ==> r1c3 ≠ 4, r1c5 ≠ 4
whip[1]: b1n4{r2c1 .} ==> r2c7 ≠ 4
whip[1]: b3n4{r3c8 .} ==> r9c8 ≠ 4
naked-single ==> r9c8 = 6
whip[3]: r6c5{n3 n4} - r5c4{n4 n8} - r5c8{n8 .} ==> r5c6 ≠ 3
whip[2]: r5c6{n1 n9} - r4c5{n9 .} ==> r4c6 ≠ 1
whip[3]: r5c6{n1 n9} - r3c6{n9 n2} - r9c6{n2 .} ==> r7c6 ≠ 1
whip[3]: r3c6{n2 n9} - r5c6{n9 n1} - r9c6{n1 .} ==> r7c6 ≠ 2
whip[3]: r3c6{n2 n9} - r5c6{n9 n1} - r9c6{n1 .} ==> r1c6 ≠ 2
whip[3]: r5n6{c7 c9} - r2c9{n6 n8} - r6c9{n8 .} ==> r5c7 ≠ 4
hidden-single-in-a-column ==> r9c7 = 4
naked-single ==> r9c3 = 2
naked-single ==> r9c6 = 1
naked-single ==> r9c5 = 7
naked-single ==> r7c4 = 5
naked-single ==> r7c6 = 6
naked-single ==> r7c5 = 2
naked-single ==> r3c5 = 4
naked-single ==> r6c5 = 3
naked-single ==> r6c1 = 8
naked-single ==> r6c9 = 4
naked-single ==> r4c6 = 8
naked-single ==> r5c4 = 4
naked-single ==> r2c6 = 5
naked-single ==> r2c7 = 6
naked-single ==> r2c9 = 8
naked-single ==> r1c8 = 4
naked-single ==> r2c5 = 9
naked-single ==> r4c5 = 1
naked-single ==> r3c6 = 2
naked-single ==> r3c9 = 1
naked-single ==> r7c9 = 7
naked-single ==> r8c7 = 1
naked-single ==> r8c1 = 7
naked-single ==> r4c1 = 2
NO POSSIBLE VALUE for csp-variable 149 IN CONTEXT 38. RETRACTING CANDIDATE n9r8c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 236 candidates remaining.

whip[6]: c2n9{r6 r3} - c4n9{r3 r7} - c8n9{r7 r4} - c6n9{r4 r2} - r2n5{c6 c7} - b6n5{r4c7 .} ==> r5c3 ≠ 9
GENERATING CONTEXT 39 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r8c4.
entering BRT for context 39
hidden-single-in-a-row ==> r8c3 = 5
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-row ==> r9c2 = 8
Starting_init_links_with_<Fact-467763>
Entering_level_W1_with_<Fact-472338>
Entering_level_W2_with_<Fact-472340>
Entering_level_W3_with_<Fact-472691>
whip[3]: r2n3{c5 c1} - r6n3{c1 c9} - r8n3{c9 .} ==> r1c5 ≠ 3
whip[3]: r2n9{c5 c3} - r6n9{c3 c7} - r8n9{c7 .} ==> r3c5 ≠ 9
whip[3]: c8n3{r4 r9} - c4n3{r9 r1} - c2n3{r1 .} ==> r5c9 ≠ 3
whip[3]: c8n9{r4 r7} - c4n9{r7 r3} - c2n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B3_with_<Fact-473072>
Entering_level_W4_with_<Fact-473265>
Entering_level_B4_with_<Fact-473590>
Entering_level_W5_with_<Fact-473955>
whip[5]: c2n9{r3 r5} - c4n9{r5 r7} - c8n9{r7 r4} - c8n5{r4 r3} - c4n5{r3 .} ==> r3c6 ≠ 9
whip[5]: c2n9{r5 r3} - c4n9{r3 r7} - c8n9{r7 r4} - c8n5{r4 r3} - c4n5{r3 .} ==> r5c6 ≠ 9
Entering_level_B5_with_<Fact-474601>
Entering_level_W6_with_<Fact-475319>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - r4n5{c7 .} ==> r5c1 ≠ 3
whip[6]: r8n9{c5 c7} - r6n9{c7 c3} - r2n9{c3 c6} - r4n9{c6 c8} - r4n5{c8 c7} - r2n5{c7 .} ==> r7c5 ≠ 9
Entering_level_B6_with_<Fact-476121>
Entering_level_W7_with_<Fact-477451>
Entering_level_B7_with_<Fact-478232>
NO CONTRADICTION FOUND IN CONTEXT 39.
BACK IN CONTEXT 0 with 20 csp-variables solved and 235 candidates remaining.

GENERATING CONTEXT 40 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r8c4.
entering BRT for context 40
hidden-single-in-a-row ==> r8c3 = 5
hidden-single-in-a-column ==> r6c2 = 5
Starting_init_links_with_<Fact-480747>
Entering_level_W1_with_<Fact-485358>
whip[1]: b7n7{r7c2 .} ==> r1c2 ≠ 7, r5c2 ≠ 7, r3c2 ≠ 7
Entering_level_W2_with_<Fact-485362>
Entering_level_W3_with_<Fact-485820>
whip[3]: r2n3{c5 c1} - r6n3{c1 c9} - r8n3{c9 .} ==> r1c5 ≠ 3
whip[3]: r2n8{c5 c9} - r6n8{c9 c1} - r8n8{c1 .} ==> r1c5 ≠ 8
whip[3]: r2n9{c5 c3} - r6n9{c3 c7} - r8n9{c7 .} ==> r3c5 ≠ 9
whip[3]: c8n3{r4 r9} - c4n3{r9 r1} - c2n3{r1 .} ==> r5c9 ≠ 3
whip[3]: c8n8{r4 r1} - c4n8{r1 r9} - c2n8{r9 .} ==> r5c9 ≠ 8
whip[3]: c8n9{r4 r7} - c4n9{r7 r3} - c2n9{r3 .} ==> r5c7 ≠ 9
whip[3]: r9c4{n3 n8} - c2n8{r9 r5} - c2n3{r5 .} ==> r1c4 ≠ 3
Entering_level_B3_with_<Fact-486623>
Entering_level_W4_with_<Fact-487009>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
whip[4]: r8n8{c5 c1} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
whip[4]: r7c2{n1 n7} - r9n7{c2 c7} - c7n1{r9 r8} - b7n1{r8c1 .} ==> r1c2 ≠ 1
naked-single ==> r1c2 = 3
whip[3]: r6c3{n6 n9} - r2c3{n9 n4} - r2c1{n4 .} ==> r1c3 ≠ 6
Entering_level_B4_with_<Fact-488531>
Entering_level_W5_with_<Fact-490061>
whip[5]: c3n1{r4 r1} - c1n1{r3 r8} - r7c2{n1 n7} - r9n7{c2 c7} - c7n1{r9 .} ==> r5c2 ≠ 1
whip[5]: r2n3{c5 c6} - r2n9{c6 c3} - b4n9{r6c3 r5c2} - c2n8{r5 r9} - b8n8{r9c6 .} ==> r2c5 ≠ 8
whip[5]: b5n4{r5c4 r6c5} - c5n8{r6 r8} - r8n9{c5 c7} - r6n9{c7 c3} - r5c2{n9 .} ==> r5c4 ≠ 8
whip[4]: r8n8{c1 c5} - r6n8{c5 c9} - r2n8{c9 c6} - r5n8{c6 .} ==> r4c1 ≠ 8
whip[4]: r2n8{c9 c6} - r1c4{n8 n4} - b5n4{r5c4 r6c5} - b5n8{r6c5 .} ==> r4c9 ≠ 8
whip[5]: r2n8{c9 c6} - r2n3{c6 c5} - r2n9{c5 c3} - b4n9{r6c3 r5c2} - b4n8{r5c2 .} ==> r6c9 ≠ 8
hidden-single-in-a-column ==> r2c9 = 8
whip[2]: r6n8{c5 c1} - r8n8{c1 .} ==> r4c5 ≠ 8
whip[3]: c4n3{r9 r5} - b5n4{r5c4 r6c5} - c5n8{r6 .} ==> r8c5 ≠ 3
hidden-single-in-a-row ==> r8c9 = 3
whip[2]: r6n3{c5 c1} - r6n8{c1 .} ==> r6c5 ≠ 4, r6c5 ≠ 9
hidden-single-in-a-block ==> r5c4 = 4
naked-single ==> r1c4 = 8
naked-single ==> r9c4 = 3
whip[2]: r6n3{c1 c5} - r6n8{c5 .} ==> r6c1 ≠ 6
whip[2]: c8n3{r5 r4} - c8n8{r4 .} ==> r5c8 ≠ 6, r5c8 ≠ 9
whip[2]: b6n9{r4c7 r6c7} - r8n9{c7 .} ==> r4c5 ≠ 9
whip[1]: b5n9{r4c6 .} ==> r7c6 ≠ 9, r3c6 ≠ 9, r2c6 ≠ 9
whip[2]: c8n3{r4 r5} - c8n8{r5 .} ==> r4c8 ≠ 5, r4c8 ≠ 9
hidden-single-in-a-column ==> r7c8 = 9
naked-single ==> r8c7 = 1
naked-single ==> r8c1 = 8
naked-single ==> r8c5 = 9
naked-single ==> r6c1 = 3
naked-single ==> r6c5 = 8
naked-single ==> r1c7 = 2
naked-single ==> r3c9 = 1
naked-single ==> r3c2 = 9
NO POSSIBLE VALUE for csp-variable 229 IN CONTEXT 40. RETRACTING CANDIDATE n7r8c4 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 41 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r8c4.
entering BRT for context 41
hidden-single-in-a-row ==> r7c2 = 5
Starting_init_links_with_<Fact-494134>
Entering_level_W1_with_<Fact-499209>
Entering_level_W2_with_<Fact-499211>
Entering_level_W3_with_<Fact-499523>
Entering_level_B3_with_<Fact-499824>
Entering_level_W4_with_<Fact-499957>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-500169>
Entering_level_W5_with_<Fact-500455>
Entering_level_B5_with_<Fact-500650>
Entering_level_W6_with_<Fact-501063>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B6_with_<Fact-501311>
Entering_level_W7_with_<Fact-501802>
Entering_level_B7_with_<Fact-502078>
NO CONTRADICTION FOUND IN CONTEXT 41.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 42 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r8c4.
entering BRT for context 42
hidden-single-in-a-row ==> r8c3 = 5
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-row ==> r9c8 = 3
Starting_init_links_with_<Fact-502895>
Entering_level_W1_with_<Fact-507476>
Entering_level_W2_with_<Fact-507478>
Entering_level_W3_with_<Fact-507829>
whip[3]: r2n8{c5 c9} - r6n8{c9 c1} - r8n8{c1 .} ==> r1c5 ≠ 8
whip[3]: r2n9{c5 c3} - r6n9{c3 c7} - r8n9{c7 .} ==> r3c5 ≠ 9
whip[3]: c8n8{r4 r1} - c4n8{r1 r9} - c2n8{r9 .} ==> r5c9 ≠ 8
whip[3]: c8n9{r4 r7} - c4n9{r7 r3} - c2n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B3_with_<Fact-508277>
Entering_level_W4_with_<Fact-508463>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
whip[4]: r8n8{c5 c1} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
Entering_level_B4_with_<Fact-508946>
Entering_level_W5_with_<Fact-509465>
whip[5]: c2n9{r3 r5} - c4n9{r5 r7} - c8n9{r7 r4} - c8n5{r4 r3} - c4n5{r3 .} ==> r3c6 ≠ 9
whip[5]: c2n9{r5 r3} - c4n9{r3 r7} - c8n9{r7 r4} - c8n5{r4 r3} - c4n5{r3 .} ==> r5c6 ≠ 9
Entering_level_B5_with_<Fact-510327>
Entering_level_W6_with_<Fact-511816>
whip[6]: r8n9{c5 c7} - r6n9{c7 c3} - r2n9{c3 c6} - r4n9{c6 c8} - r4n5{c8 c7} - r2n5{c7 .} ==> r7c5 ≠ 9
whip[6]: r8n8{c5 c1} - c2n8{r9 r5} - c2n3{r5 r1} - r2n3{c1 c6} - r2n9{c6 c3} - b4n9{r6c3 .} ==> r2c5 ≠ 8
Entering_level_B6_with_<Fact-513793>
Entering_level_W7_with_<Fact-517336>
Entering_level_B7_with_<Fact-519483>
braid[7]: r8n9{c7 c5} - c6n9{r7 r2} - b5n9{r4c6 r5c4} - b5n4{r5c4 r6c5} - r8n8{c5 c1} - r6n8{c5 c9} - r2n8{c6 .} ==> r4c7 ≠ 9
NO CONTRADICTION FOUND IN CONTEXT 42.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 43 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r8c3.
entering BRT for context 43
hidden-single-in-a-block ==> r7c2 = 5
hidden-single-in-a-block ==> r8c4 = 5
Starting_init_links_with_<Fact-528208>
Entering_level_W1_with_<Fact-532911>
Entering_level_W2_with_<Fact-532913>
Entering_level_W3_with_<Fact-533265>
Entering_level_B3_with_<Fact-533721>
Entering_level_W4_with_<Fact-533897>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-534391>
Entering_level_W5_with_<Fact-534920>
Entering_level_B5_with_<Fact-535472>
Entering_level_W6_with_<Fact-536620>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B6_with_<Fact-537321>
Entering_level_W7_with_<Fact-539185>
Entering_level_B7_with_<Fact-540000>
NO CONTRADICTION FOUND IN CONTEXT 43.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 44 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r8c3.
entering BRT for context 44
hidden-single-in-a-column ==> r6c2 = 5
Starting_init_links_with_<Fact-542974>
Entering_level_W1_with_<Fact-548009>
Entering_level_W2_with_<Fact-548011>
Entering_level_W3_with_<Fact-548347>
whip[3]: r2n9{c5 c3} - r6n9{c3 c7} - r8n9{c7 .} ==> r3c5 ≠ 9
whip[3]: c8n9{r4 r7} - c4n9{r7 r3} - c2n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B3_with_<Fact-548681>
Entering_level_W4_with_<Fact-548842>
whip[4]: r8n8{c4 c1} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
Entering_level_B4_with_<Fact-549083>
Entering_level_W5_with_<Fact-549416>
whip[5]: c2n9{r3 r5} - c4n9{r5 r7} - c8n9{r7 r4} - c8n5{r4 r3} - c4n5{r3 .} ==> r3c6 ≠ 9
whip[5]: c2n9{r5 r3} - c4n9{r3 r7} - c8n9{r7 r4} - c8n5{r4 r3} - c4n5{r3 .} ==> r5c6 ≠ 9
Entering_level_B5_with_<Fact-549882>
Entering_level_W6_with_<Fact-550510>
whip[6]: r8n9{c5 c7} - r6n9{c7 c3} - r2n9{c3 c6} - r4n9{c6 c8} - r4n5{c8 c7} - r2n5{c7 .} ==> r7c5 ≠ 9
Entering_level_B6_with_<Fact-550964>
Entering_level_W7_with_<Fact-551813>
Entering_level_B7_with_<Fact-552295>
NO CONTRADICTION FOUND IN CONTEXT 44.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 45 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c3.
entering BRT for context 45
hidden-single-in-a-block ==> r7c2 = 5
hidden-single-in-a-block ==> r8c4 = 5
Starting_init_links_with_<Fact-553548>
Entering_level_W1_with_<Fact-558271>
Entering_level_W2_with_<Fact-558273>
Entering_level_W3_with_<Fact-558637>
Entering_level_B3_with_<Fact-559122>
Entering_level_W4_with_<Fact-559290>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-559725>
Entering_level_W5_with_<Fact-560155>
whip[5]: b1n3{r2c1 r1c2} - r1n1{c2 c7} - c9n1{r3 r7} - r7n4{c9 c8} - b3n4{r3c8 .} ==> r2c1 ≠ 4
Entering_level_B5_with_<Fact-560721>
Entering_level_W6_with_<Fact-561630>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B6_with_<Fact-561964>
Entering_level_W7_with_<Fact-563258>
Entering_level_B7_with_<Fact-563585>
NO CONTRADICTION FOUND IN CONTEXT 45.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 46 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r8c1.
entering BRT for context 46
Starting_init_links_with_<Fact-565674>
Entering_level_W1_with_<Fact-570701>
Entering_level_W2_with_<Fact-570703>
Entering_level_W3_with_<Fact-571001>
Entering_level_B3_with_<Fact-571264>
Entering_level_W4_with_<Fact-571373>
Entering_level_B4_with_<Fact-571546>
Entering_level_W5_with_<Fact-571800>
Entering_level_B5_with_<Fact-571963>
Entering_level_W6_with_<Fact-572364>
Entering_level_B6_with_<Fact-572549>
Entering_level_W7_with_<Fact-573087>
Entering_level_B7_with_<Fact-573299>
NO CONTRADICTION FOUND IN CONTEXT 46.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 47 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r8c1.
entering BRT for context 47
hidden-single-in-a-block ==> r9c2 = 8
Starting_init_links_with_<Fact-574212>
Entering_level_W1_with_<Fact-578859>
Entering_level_W2_with_<Fact-578861>
Entering_level_W3_with_<Fact-579190>
Entering_level_B3_with_<Fact-579598>
Entering_level_W4_with_<Fact-579773>
Entering_level_B4_with_<Fact-580246>
Entering_level_W5_with_<Fact-580846>
Entering_level_B5_with_<Fact-581425>
Entering_level_W6_with_<Fact-582836>
whip[6]: c8n9{r4 r7} - r8c7{n9 n1} - r8c3{n1 n5} - c2n5{r7 r6} - c2n9{r6 r3} - c4n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B6_with_<Fact-583444>
Entering_level_W7_with_<Fact-585751>
Entering_level_B7_with_<Fact-586358>
NO CONTRADICTION FOUND IN CONTEXT 47.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 48 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r8c1.
entering BRT for context 48
hidden-single-in-a-block ==> r9c2 = 8
Starting_init_links_with_<Fact-589795>
Entering_level_W1_with_<Fact-594462>
Entering_level_W2_with_<Fact-594464>
Entering_level_W3_with_<Fact-594805>
Entering_level_B3_with_<Fact-595239>
Entering_level_W4_with_<Fact-595410>
Entering_level_B4_with_<Fact-595821>
Entering_level_W5_with_<Fact-596308>
whip[5]: b1n9{r2c3 r3c2} - r3n1{c2 c9} - c7n1{r1 r9} - r9n4{c7 c8} - b3n4{r3c8 .} ==> r2c3 ≠ 4
Entering_level_B5_with_<Fact-596849>
Entering_level_W6_with_<Fact-597859>
whip[6]: c8n9{r4 r7} - r8c7{n9 n7} - r8c3{n7 n5} - c2n5{r7 r6} - c2n9{r6 r3} - c4n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B6_with_<Fact-598171>
Entering_level_W7_with_<Fact-599603>
Entering_level_B7_with_<Fact-599869>
NO CONTRADICTION FOUND IN CONTEXT 48.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 49 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r7c9.
entering BRT for context 49
Starting_init_links_with_<Fact-601995>
Entering_level_W1_with_<Fact-606922>
Entering_level_W2_with_<Fact-606924>
whip[2]: c9n1{r3 r8} - b7n1{r8c3 .} ==> r3c2 ≠ 1
whip[2]: r7n4{c1 c8} - b3n4{r3c8 .} ==> r2c1 ≠ 4
Entering_level_W3_with_<Fact-607310>
Entering_level_B3_with_<Fact-607746>
Entering_level_W4_with_<Fact-607946>
Entering_level_B4_with_<Fact-608359>
Entering_level_W5_with_<Fact-608931>
whip[5]: c8n9{r4 r7} - r7c4{n9 n5} - c2n5{r7 r6} - c2n9{r6 r3} - c4n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B5_with_<Fact-609300>
Entering_level_W6_with_<Fact-610245>
Entering_level_B6_with_<Fact-610613>
Entering_level_W7_with_<Fact-612154>
Entering_level_B7_with_<Fact-612537>
NO CONTRADICTION FOUND IN CONTEXT 49.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 50 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c9.
entering BRT for context 50
Starting_init_links_with_<Fact-615237>
Entering_level_W1_with_<Fact-620148>
Entering_level_W2_with_<Fact-620150>
whip[2]: c9n1{r3 r8} - b7n1{r8c3 .} ==> r3c2 ≠ 1
whip[2]: r7n4{c1 c8} - b3n4{r3c8 .} ==> r2c1 ≠ 4
Entering_level_W3_with_<Fact-620533>
Entering_level_B3_with_<Fact-620939>
Entering_level_W4_with_<Fact-621120>
Entering_level_B4_with_<Fact-621522>
Entering_level_W5_with_<Fact-621964>
Entering_level_B5_with_<Fact-622368>
Entering_level_W6_with_<Fact-623132>
whip[6]: r8n9{c5 c7} - r7c8{n9 n4} - r9c8{n4 n3} - r8c9{n3 n1} - r3n1{c9 c1} - c1n4{r3 .} ==> r8c5 ≠ 7
Entering_level_B6_with_<Fact-623539>
Entering_level_W7_with_<Fact-624691>
Entering_level_B7_with_<Fact-625097>
NO CONTRADICTION FOUND IN CONTEXT 50.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 51 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c9.
entering BRT for context 51
naked-single ==> r7c1 = 2
naked-single ==> r9c3 = 4
Starting_init_links_with_<Fact-627223>
Entering_level_W1_with_<Fact-631960>
Entering_level_W2_with_<Fact-631962>
whip[2]: c9n1{r3 r8} - b7n1{r8c3 .} ==> r3c2 ≠ 1
Entering_level_W3_with_<Fact-632324>
Entering_level_B3_with_<Fact-632683>
Entering_level_W4_with_<Fact-632857>
Entering_level_B4_with_<Fact-633160>
braid[4]: r8n9{c5 c7} - r7c8{n9 n6} - r2c3{n9 n6} - b3n6{r1c8 .} ==> r2c5 ≠ 9
Entering_level_W5_with_<Fact-633652>
Entering_level_B5_with_<Fact-634007>
Entering_level_W6_with_<Fact-634576>
Entering_level_B6_with_<Fact-634888>
braid[6]: r7n7{c4 c2} - r3c2{n7 n9} - r2c3{n9 n6} - r8n9{c5 c7} - r7c8{n9 n6} - b3n6{r1c8 .} ==> r8c5 ≠ 7
Entering_level_W7_with_<Fact-635724>
Entering_level_B7_with_<Fact-635952>
NO CONTRADICTION FOUND IN CONTEXT 51.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 52 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c9.
entering BRT for context 52
naked-single ==> r3c9 = 2
naked-single ==> r1c7 = 1
Starting_init_links_with_<Fact-637218>
Entering_level_W1_with_<Fact-641959>
Entering_level_W2_with_<Fact-641961>
whip[2]: r7n4{c1 c8} - b3n4{r3c8 .} ==> r2c1 ≠ 4
Entering_level_W3_with_<Fact-642311>
Entering_level_B3_with_<Fact-642639>
Entering_level_W4_with_<Fact-642799>
Entering_level_B4_with_<Fact-643063>
Entering_level_W5_with_<Fact-643376>
Entering_level_B5_with_<Fact-643615>
Entering_level_W6_with_<Fact-644051>
Entering_level_B6_with_<Fact-644264>
Entering_level_W7_with_<Fact-644859>
Entering_level_B7_with_<Fact-645044>
NO CONTRADICTION FOUND IN CONTEXT 52.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 53 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c8.
entering BRT for context 53
hidden-single-in-a-row ==> r8c5 = 9
Starting_init_links_with_<Fact-646020>
Entering_level_W1_with_<Fact-650691>
Entering_level_W2_with_<Fact-650693>
Entering_level_W3_with_<Fact-650993>
Entering_level_B3_with_<Fact-651343>
Entering_level_W4_with_<Fact-651461>
Entering_level_B4_with_<Fact-651721>
Entering_level_W5_with_<Fact-652027>
Entering_level_B5_with_<Fact-652194>
Entering_level_W6_with_<Fact-652725>
Entering_level_B6_with_<Fact-652894>
Entering_level_W7_with_<Fact-653599>
Entering_level_B7_with_<Fact-653781>
NO CONTRADICTION FOUND IN CONTEXT 53.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 54 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c8.
entering BRT for context 54
hidden-single-in-a-block ==> r8c7 = 9
Starting_init_links_with_<Fact-654935>
Entering_level_W1_with_<Fact-659644>
whip[1]: b3n6{r2c7 .} ==> r2c1 ≠ 6, r2c6 ≠ 6, r2c5 ≠ 6, r2c3 ≠ 6
Entering_level_W2_with_<Fact-659648>
Entering_level_W3_with_<Fact-659987>
Entering_level_B3_with_<Fact-660370>
Entering_level_W4_with_<Fact-660562>
Entering_level_B4_with_<Fact-660925>
Entering_level_W5_with_<Fact-661404>
Entering_level_B5_with_<Fact-661719>
Entering_level_W6_with_<Fact-662532>
Entering_level_B6_with_<Fact-662772>
Entering_level_W7_with_<Fact-663912>
Entering_level_B7_with_<Fact-664156>
NO CONTRADICTION FOUND IN CONTEXT 54.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 55 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c8.
entering BRT for context 55
naked-single ==> r7c1 = 2
naked-single ==> r9c3 = 4
hidden-single-in-a-block ==> r8c7 = 9
Starting_init_links_with_<Fact-665959>
Entering_level_W1_with_<Fact-670486>
whip[1]: r1n4{c4 .} ==> r2c5 ≠ 4, r3c5 ≠ 4, r3c4 ≠ 4
hidden-single-in-a-row ==> r3c1 = 4
Entering_level_W2_with_<Fact-670491>
whip[2]: c7n1{r9 r1} - b1n1{r1c3 .} ==> r9c2 ≠ 1
whip[2]: b7n1{r8c1 r7c2} - r3n1{c2 .} ==> r8c9 ≠ 1
Entering_level_W3_with_<Fact-670895>
Entering_level_B3_with_<Fact-671413>
Entering_level_W4_with_<Fact-671649>
Entering_level_B4_with_<Fact-672204>
Entering_level_W5_with_<Fact-672866>
Entering_level_B5_with_<Fact-673470>
Entering_level_W6_with_<Fact-674786>
Entering_level_B6_with_<Fact-675415>
Entering_level_W7_with_<Fact-677714>
whip[7]: r9n2{c5 c6} - r9n1{c6 c7} - r9n6{c7 c8} - r1c8{n6 n8} - r2n8{c9 c6} - r2n5{c6 c7} - r3c8{n5 .} ==> r9c5 ≠ 8
Entering_level_B7_with_<Fact-678416>
braid[7]: r9n2{c6 c5} - r9n1{c5 c7} - r9n6{c7 c8} - r1c8{n6 n8} - r1c7{n1 n2} - r1c6{n8 n6} - r3n6{c5 .} ==> r9c6 ≠ 3
whip[7]: r3n7{c4 c2} - r3n1{c2 c9} - c7n1{r1 r9} - r9n7{c7 c4} - r7n7{c4 c9} - r8c9{n7 n3} - r9n3{c8 .} ==> r1c5 ≠ 7
NO CONTRADICTION FOUND IN CONTEXT 55.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 56 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c6.
entering BRT for context 56
hidden-single-in-a-row ==> r8c7 = 9
Starting_init_links_with_<Fact-683195>
Entering_level_W1_with_<Fact-687872>
whip[1]: c6n5{r2 .} ==> r3c4 ≠ 5
Entering_level_W2_with_<Fact-687876>
whip[2]: r2n9{c3 c5} - r6n9{c5 .} ==> r4c3 ≠ 9
Entering_level_W3_with_<Fact-688210>
Entering_level_B3_with_<Fact-688600>
Entering_level_W4_with_<Fact-688737>
Entering_level_B4_with_<Fact-689065>
Entering_level_W5_with_<Fact-689437>
Entering_level_B5_with_<Fact-689729>
Entering_level_W6_with_<Fact-690355>
Entering_level_B6_with_<Fact-690715>
Entering_level_W7_with_<Fact-691671>
Entering_level_B7_with_<Fact-692198>
NO CONTRADICTION FOUND IN CONTEXT 56.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 57 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c6.
entering BRT for context 57
Starting_init_links_with_<Fact-694016>
Entering_level_W1_with_<Fact-698873>
whip[1]: c6n5{r2 .} ==> r3c4 ≠ 5
Entering_level_W2_with_<Fact-698877>
Entering_level_W3_with_<Fact-699175>
Entering_level_B3_with_<Fact-699448>
Entering_level_W4_with_<Fact-699552>
Entering_level_B4_with_<Fact-699718>
Entering_level_W5_with_<Fact-699891>
Entering_level_B5_with_<Fact-700007>
Entering_level_W6_with_<Fact-700199>
Entering_level_B6_with_<Fact-700264>
Entering_level_W7_with_<Fact-700452>
Entering_level_B7_with_<Fact-700505>
NO CONTRADICTION FOUND IN CONTEXT 57.
BACK IN CONTEXT 0 with 20 csp-variables solved and 234 candidates remaining.

GENERATING CONTEXT 58 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c6.
entering BRT for context 58
hidden-single-in-a-row ==> r2c7 = 5
hidden-single-in-a-block ==> r4c8 = 5
hidden-single-in-a-row ==> r3c4 = 5
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-column ==> r8c3 = 5
Starting_init_links_with_<Fact-700929>
Entering_level_W1_with_<Fact-705324>
Entering_level_W2_with_<Fact-705326>
whip[2]: c8n9{r7 r5} - c4n9{r5 .} ==> r7c5 ≠ 9
whip[2]: c8n9{r5 r7} - c4n9{r7 .} ==> r5c6 ≠ 9, r5c2 ≠ 9, r5c7 ≠ 9
hidden-single-in-a-column ==> r3c2 = 9
Entering_level_W3_with_<Fact-705833>
whip[3]: c4n4{r1 r5} - r5n9{c4 c8} - c8n8{r5 .} ==> r1c8 ≠ 4
whip[3]: c8n8{r1 r5} - r5n9{c8 c4} - c4n4{r5 .} ==> r1c4 ≠ 8
whip[2]: c4n8{r8 r5} - c2n8{r5 .} ==> r9c5 ≠ 8, r9c6 ≠ 8
whip[3]: c8n3{r9 r5} - c2n3{r5 r1} - c4n3{r1 .} ==> r9c6 ≠ 3
Entering_level_B3_with_<Fact-706778>
Entering_level_W4_with_<Fact-707265>
whip[4]: c7n4{r5 r9} - r7n4{c8 c1} - r3n4{c1 c5} - r6n4{c5 .} ==> r5c8 ≠ 4
Entering_level_B4_with_<Fact-708625>
Entering_level_W5_with_<Fact-710479>
whip[5]: c4n4{r1 r5} - r5n9{c4 c8} - c8n8{r5 r1} - r2c9{n8 n6} - r2c3{n6 .} ==> r2c5 ≠ 4
whip[5]: c7n6{r5 r9} - c9n6{r7 r2} - r3c8{n6 n4} - r9n4{c8 c3} - r2c3{n4 .} ==> r5c8 ≠ 6
whip[5]: r7n4{c8 c1} - r3n4{c1 c5} - c4n4{r1 r5} - r5n9{c4 c8} - c8n3{r5 .} ==> r9c8 ≠ 4
whip[3]: r1n4{c4 c3} - b7n4{r9c3 r7c1} - c8n4{r7 .} ==> r3c5 ≠ 4
whip[1]: b2n4{r1c4 .} ==> r1c3 ≠ 4
whip[4]: r6c3{n9 n6} - r2c3{n6 n4} - r9n4{c3 c7} - r6c7{n4 .} ==> r6c5 ≠ 9
whip[5]: r9c8{n3 n6} - b3n6{r3c8 r2c9} - r2c3{n6 n4} - r2c1{n4 n3} - b4n3{r6c1 .} ==> r5c8 ≠ 3
hidden-single-in-a-column ==> r9c8 = 3
whip[3]: r3n7{c5 c1} - r3n1{c1 c9} - r8c9{n1 .} ==> r8c5 ≠ 7
whip[3]: r8n7{c7 c1} - b7n8{r8c1 r9c2} - r9c4{n8 .} ==> r9c7 ≠ 7
whip[4]: c4n9{r7 r5} - r5c8{n9 n8} - c2n8{r5 r9} - r9n7{c2 .} ==> r7c4 ≠ 7
naked-single ==> r7c4 = 9
hidden-single-in-a-row ==> r8c7 = 9
hidden-single-in-a-block ==> r5c8 = 9
hidden-single-in-a-column ==> r1c8 = 8
hidden-single-in-a-row ==> r6c3 = 9
whip[1]: b9n7{r8c9 .} ==> r5c9 ≠ 7, r4c9 ≠ 7
whip[2]: r2n8{c6 c5} - r2n9{c5 .} ==> r2c6 ≠ 3, r2c6 ≠ 6
whip[2]: c6n3{r4 r1} - c2n3{r1 .} ==> r5c4 ≠ 3
whip[2]: r2n8{c5 c6} - r2n9{c6 .} ==> r2c5 ≠ 3, r2c5 ≠ 6
hidden-single-in-a-row ==> r2c1 = 3
hidden-single-in-a-block ==> r5c2 = 3
hidden-single-in-a-column ==> r9c2 = 8
naked-single ==> r9c4 = 7
whip[2]: c1n4{r7 r3} - c8n4{r3 .} ==> r7c9 ≠ 4
whip[2]: r8c1{n1 n7} - r8c9{n7 .} ==> r8c5 ≠ 1
whip[2]: r8n1{c1 c9} - r3n1{c9 .} ==> r4c1 ≠ 1, r5c1 ≠ 1
whip[1]: b4n1{r5c3 .} ==> r1c3 ≠ 1
whip[2]: r3n1{c9 c1} - r8n1{c1 .} ==> r7c9 ≠ 1
whip[3]: r8c5{n8 n3} - r6c5{n3 n4} - r5c4{n4 .} ==> r4c5 ≠ 8
whip[3]: r8c5{n3 n8} - c4n8{r8 r5} - b5n4{r5c4 .} ==> r6c5 ≠ 3
hidden-single-in-a-row ==> r6c9 = 3
whip[2]: r6c5{n8 n4} - r5c4{n4 .} ==> r4c6 ≠ 8, r5c6 ≠ 8
naked-single ==> r5c6 = 1
hidden-single-in-a-block ==> r4c3 = 1
hidden-single-in-a-column ==> r2c6 = 8
naked-single ==> r2c5 = 9
naked-single ==> r4c5 = 3
naked-single ==> r8c5 = 8
naked-single ==> r8c4 = 3
naked-single ==> r1c4 = 4
naked-single ==> r5c4 = 8
naked-single ==> r6c5 = 4
naked-single ==> r6c7 = 6
naked-single ==> r6c1 = 8
naked-single ==> r4c6 = 9
hidden-single-in-a-row ==> r4c9 = 8
hidden-single-in-a-block ==> r1c6 = 3
whip[1]: r9n6{c5 .} ==> r7c5 ≠ 6
whip[3]: r7n1{c5 c2} - r1n1{c2 c7} - r1n2{c7 .} ==> r7c5 ≠ 2
naked-single ==> r7c5 = 1
naked-single ==> r7c2 = 7
naked-single ==> r8c1 = 1
naked-single ==> r8c9 = 7
naked-single ==> r7c9 = 6
naked-single ==> r7c8 = 4
naked-single ==> r9c7 = 1
naked-single ==> r1c7 = 2
naked-single ==> r4c7 = 7
naked-single ==> r5c7 = 4
naked-single ==> r5c9 = 2
naked-single ==> r4c1 = 2
NO POSSIBLE VALUE for csp-variable 171 IN CONTEXT 58. RETRACTING CANDIDATE n5r7c6 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 233 candidates remaining.

whip[1]: b8n5{r8c4 .} ==> r3c4 ≠ 5
GENERATING CONTEXT 59 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r7c6.
entering BRT for context 59
naked-single ==> r7c1 = 4
naked-single ==> r9c3 = 2
Starting_init_links_with_<Fact-715452>
Entering_level_W1_with_<Fact-720171>
Entering_level_W2_with_<Fact-720173>
Entering_level_W3_with_<Fact-720496>
Entering_level_B3_with_<Fact-720820>
Entering_level_W4_with_<Fact-720959>
Entering_level_B4_with_<Fact-721206>
Entering_level_W5_with_<Fact-721444>
Entering_level_B5_with_<Fact-721657>
Entering_level_W6_with_<Fact-721975>
Entering_level_B6_with_<Fact-722219>
Entering_level_W7_with_<Fact-722641>
Entering_level_B7_with_<Fact-722853>
NO CONTRADICTION FOUND IN CONTEXT 59.
BACK IN CONTEXT 0 with 20 csp-variables solved and 232 candidates remaining.

GENERATING CONTEXT 60 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c6.
entering BRT for context 60
hidden-single-in-a-column ==> r4c5 = 1
Starting_init_links_with_<Fact-723722>
Entering_level_W1_with_<Fact-728331>
Entering_level_W2_with_<Fact-728333>
whip[2]: c9n1{r3 r8} - b7n1{r8c3 .} ==> r3c2 ≠ 1
Entering_level_W3_with_<Fact-728657>
Entering_level_B3_with_<Fact-728988>
Entering_level_W4_with_<Fact-729109>
Entering_level_B4_with_<Fact-729416>
Entering_level_W5_with_<Fact-729658>
Entering_level_B5_with_<Fact-730048>
Entering_level_W6_with_<Fact-730420>
Entering_level_B6_with_<Fact-730911>
Entering_level_W7_with_<Fact-731482>
Entering_level_B7_with_<Fact-732039>
NO CONTRADICTION FOUND IN CONTEXT 60.
BACK IN CONTEXT 0 with 20 csp-variables solved and 232 candidates remaining.

GENERATING CONTEXT 61 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c5.
entering BRT for context 61
hidden-single-in-a-row ==> r8c7 = 9
Starting_init_links_with_<Fact-733127>
Entering_level_W1_with_<Fact-737720>
whip[1]: r6n9{c2 .} ==> r4c3 ≠ 9, r5c2 ≠ 9
Entering_level_W2_with_<Fact-737724>
Entering_level_W3_with_<Fact-738059>
whip[3]: r4n9{c6 c8} - c8n5{r4 r3} - c6n5{r3 .} ==> r2c6 ≠ 9
hidden-single-in-a-row ==> r2c3 = 9
hidden-single-in-a-block ==> r6c2 = 9
hidden-single-in-a-column ==> r7c2 = 5
naked-single ==> r7c4 = 7
hidden-single-in-a-row ==> r8c4 = 5
whip[3]: r3c2{n1 n7} - r9n7{c2 c7} - c7n1{r9 .} ==> r1c2 ≠ 1
whip[3]: r1n1{c7 c3} - r8c3{n1 n7} - b9n7{r8c9 .} ==> r9c7 ≠ 1
hidden-single-in-a-column ==> r1c7 = 1
naked-single ==> r3c9 = 2
whip[3]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 .} ==> r5c9 ≠ 3
whip[3]: c2n3{r1 r5} - c2n8{r5 r9} - r9c4{n8 .} ==> r1c4 ≠ 3
whip[3]: c2n3{r1 r5} - r6n3{c1 c9} - r8n3{c9 .} ==> r1c5 ≠ 3
whip[3]: c2n8{r5 r9} - c4n8{r9 r1} - c8n8{r1 .} ==> r5c9 ≠ 8
whip[3]: r8n8{c5 c1} - r6n8{c1 c9} - r2n8{c9 .} ==> r1c5 ≠ 8
Entering_level_B3_with_<Fact-739300>
Entering_level_W4_with_<Fact-739695>
whip[4]: c1n4{r2 r7} - r7c8{n4 n6} - r1c8{n6 n8} - r1c4{n8 .} ==> r1c3 ≠ 4
hidden-single-in-a-column ==> r9c3 = 4
naked-single ==> r7c1 = 2
whip[4]: r9c4{n8 n3} - r9c8{n3 n6} - r1c8{n6 n4} - r7c8{n4 .} ==> r1c4 ≠ 8
naked-single ==> r1c4 = 4
naked-single ==> r3c4 = 9
hidden-single-in-a-block ==> r6c5 = 4
whip[2]: c4n8{r9 r5} - c2n8{r5 .} ==> r9c5 ≠ 8, r9c6 ≠ 8
whip[2]: c4n8{r5 r9} - c2n8{r9 .} ==> r5c6 ≠ 8, r5c8 ≠ 8, r5c1 ≠ 8
whip[2]: r6n3{c1 c9} - r6n8{c9 .} ==> r6c1 ≠ 6
whip[2]: r6n3{c9 c1} - r6n8{c1 .} ==> r6c9 ≠ 6
whip[3]: r8n8{c1 c5} - r8n3{c5 c9} - r6c9{n3 .} ==> r6c1 ≠ 8
naked-single ==> r6c1 = 3
naked-single ==> r6c9 = 8
hidden-single-in-a-column ==> r1c8 = 8
hidden-single-in-a-column ==> r1c2 = 3
whip[2]: r2c1{n6 n4} - r2c9{n4 .} ==> r2c5 ≠ 6, r2c7 ≠ 6, r2c6 ≠ 6
whip[2]: r2c1{n4 n6} - r2c9{n6 .} ==> r2c7 ≠ 4
naked-single ==> r2c7 = 5
naked-single ==> r6c7 = 6
naked-single ==> r9c7 = 7
naked-single ==> r4c7 = 2
naked-single ==> r5c7 = 4
naked-single ==> r5c9 = 7
naked-single ==> r4c9 = 3
naked-single ==> r8c9 = 1
naked-single ==> r8c3 = 7
naked-single ==> r8c1 = 8
naked-single ==> r9c2 = 1
naked-single ==> r5c2 = 8
naked-single ==> r5c4 = 3
naked-single ==> r9c4 = 8
naked-single ==> r3c2 = 7
naked-single ==> r3c5 = 6
naked-single ==> r9c5 = 2
naked-single ==> r1c5 = 7
naked-single ==> r3c8 = 4
naked-single ==> r7c8 = 6
naked-single ==> r9c8 = 3
naked-single ==> r9c6 = 6
naked-single ==> r7c9 = 4
naked-single ==> r7c6 = 1
naked-single ==> r5c6 = 9
NO POSSIBLE VALUE for csp-variable 158 IN CONTEXT 61. RETRACTING CANDIDATE n9r7c5 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 62 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r7c5.
entering BRT for context 62
Starting_init_links_with_<Fact-741117>
Entering_level_W1_with_<Fact-745910>
Entering_level_W2_with_<Fact-745912>
Entering_level_W3_with_<Fact-746239>
Entering_level_B3_with_<Fact-746551>
Entering_level_W4_with_<Fact-746697>
Entering_level_B4_with_<Fact-746921>
Entering_level_W5_with_<Fact-747214>
whip[5]: c8n9{r4 r7} - r7c4{n9 n5} - c2n5{r7 r6} - c2n9{r6 r3} - c4n9{r3 .} ==> r5c7 ≠ 9
Entering_level_B5_with_<Fact-747412>
Entering_level_W6_with_<Fact-747836>
Entering_level_B6_with_<Fact-748062>
Entering_level_W7_with_<Fact-748671>
Entering_level_B7_with_<Fact-748991>
NO CONTRADICTION FOUND IN CONTEXT 62.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 63 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r7c5.
entering BRT for context 63
Starting_init_links_with_<Fact-750158>
Entering_level_W1_with_<Fact-754919>
Entering_level_W2_with_<Fact-754921>
Entering_level_W3_with_<Fact-755218>
Entering_level_B3_with_<Fact-755482>
Entering_level_W4_with_<Fact-755590>
Entering_level_B4_with_<Fact-755739>
Entering_level_W5_with_<Fact-755927>
Entering_level_B5_with_<Fact-756034>
Entering_level_W6_with_<Fact-756236>
Entering_level_B6_with_<Fact-756309>
Entering_level_W7_with_<Fact-756503>
Entering_level_B7_with_<Fact-756573>
NO CONTRADICTION FOUND IN CONTEXT 63.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 64 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r7c5.
entering BRT for context 64
naked-single ==> r7c1 = 4
naked-single ==> r9c3 = 2
Starting_init_links_with_<Fact-757034>
Entering_level_W1_with_<Fact-761691>
Entering_level_W2_with_<Fact-761693>
Entering_level_W3_with_<Fact-762008>
Entering_level_B3_with_<Fact-762333>
Entering_level_W4_with_<Fact-762479>
Entering_level_B4_with_<Fact-762799>
Entering_level_W5_with_<Fact-763067>
Entering_level_B5_with_<Fact-763392>
Entering_level_W6_with_<Fact-763762>
Entering_level_B6_with_<Fact-764086>
Entering_level_W7_with_<Fact-764523>
Entering_level_B7_with_<Fact-764797>
NO CONTRADICTION FOUND IN CONTEXT 64.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 65 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c5.
entering BRT for context 65
Starting_init_links_with_<Fact-765575>
Entering_level_W1_with_<Fact-770416>
Entering_level_W2_with_<Fact-770418>
whip[2]: c9n1{r3 r8} - b7n1{r8c3 .} ==> r3c2 ≠ 1
Entering_level_W3_with_<Fact-770750>
Entering_level_B3_with_<Fact-771059>
Entering_level_W4_with_<Fact-771188>
Entering_level_B4_with_<Fact-771440>
Entering_level_W5_with_<Fact-771677>
Entering_level_B5_with_<Fact-771944>
Entering_level_W6_with_<Fact-772258>
Entering_level_B6_with_<Fact-772532>
Entering_level_W7_with_<Fact-772945>
Entering_level_B7_with_<Fact-773201>
NO CONTRADICTION FOUND IN CONTEXT 65.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 66 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r7c4.
entering BRT for context 66
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-row ==> r8c4 = 5
hidden-single-in-a-row ==> r8c7 = 9
Starting_init_links_with_<Fact-773965>
Entering_level_W1_with_<Fact-778548>
Entering_level_W2_with_<Fact-778550>
Entering_level_W3_with_<Fact-778879>
Entering_level_B3_with_<Fact-779240>
Entering_level_W4_with_<Fact-779387>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-779705>
Entering_level_W5_with_<Fact-780056>
Entering_level_B5_with_<Fact-780404>
Entering_level_W6_with_<Fact-780993>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B6_with_<Fact-781428>
Entering_level_W7_with_<Fact-782277>
Entering_level_B7_with_<Fact-782836>
NO CONTRADICTION FOUND IN CONTEXT 66.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 67 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r7c4.
entering BRT for context 67
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-row ==> r8c4 = 5
Starting_init_links_with_<Fact-784253>
Entering_level_W1_with_<Fact-788968>
Entering_level_W2_with_<Fact-788970>
Entering_level_W3_with_<Fact-789351>
Entering_level_B3_with_<Fact-789837>
Entering_level_W4_with_<Fact-790069>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-790562>
Entering_level_W5_with_<Fact-791190>
Entering_level_B5_with_<Fact-791772>
Entering_level_W6_with_<Fact-792994>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B6_with_<Fact-793815>
Entering_level_W7_with_<Fact-795771>
Entering_level_B7_with_<Fact-796865>
NO CONTRADICTION FOUND IN CONTEXT 67.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 68 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c4.
entering BRT for context 68
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-column ==> r8c3 = 5
Starting_init_links_with_<Fact-800037>
Entering_level_W1_with_<Fact-804888>
Entering_level_W2_with_<Fact-804890>
whip[2]: c4n9{r5 r3} - c2n9{r3 .} ==> r5c8 ≠ 9, r5c7 ≠ 9, r5c6 ≠ 9
whip[2]: c8n9{r4 r7} - b8n9{r7c6 .} ==> r4c5 ≠ 9
whip[2]: c2n9{r3 r5} - c4n9{r5 .} ==> r3c6 ≠ 9, r3c5 ≠ 9
Entering_level_W3_with_<Fact-805299>
Entering_level_B3_with_<Fact-805836>
Entering_level_W4_with_<Fact-806076>
whip[4]: r6c3{n6 n9} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r6c1 ≠ 6
whip[4]: r8n8{c4 c1} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
whip[4]: r6c3{n6 n9} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r6c9 ≠ 6
Entering_level_B4_with_<Fact-806885>
Entering_level_W5_with_<Fact-807683>
whip[5]: c2n8{r5 r9} - r8n8{c1 c5} - b8n9{r8c5 r7c6} - b5n9{r4c6 r6c5} - b5n4{r6c5 .} ==> r5c4 ≠ 8
Entering_level_B5_with_<Fact-808687>
Entering_level_W6_with_<Fact-810322>
whip[6]: c2n8{r9 r5} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6n8{c5 c9} - r4n8{c8 c5} - r2n8{c5 .} ==> r9c6 ≠ 8
Entering_level_B6_with_<Fact-812092>
Entering_level_W7_with_<Fact-815061>
Entering_level_B7_with_<Fact-817221>
NO CONTRADICTION FOUND IN CONTEXT 68.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 69 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n7r7c2.
entering BRT for context 69
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-column ==> r8c3 = 5
hidden-single-in-a-block ==> r7c4 = 5
Starting_init_links_with_<Fact-822275>
Entering_level_W1_with_<Fact-826806>
Entering_level_W2_with_<Fact-826808>
whip[2]: c4n9{r5 r3} - c2n9{r3 .} ==> r5c8 ≠ 9, r5c7 ≠ 9, r5c6 ≠ 9
whip[2]: c8n9{r4 r7} - b8n9{r7c6 .} ==> r4c5 ≠ 9
whip[2]: c2n9{r3 r5} - c4n9{r5 .} ==> r3c6 ≠ 9, r3c5 ≠ 9
Entering_level_W3_with_<Fact-827256>
Entering_level_B3_with_<Fact-827957>
Entering_level_W4_with_<Fact-828252>
whip[4]: r6c3{n6 n9} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r6c1 ≠ 6
whip[4]: r8n8{c4 c1} - r6n8{c1 c9} - r4n8{c8 c6} - r2n8{c6 .} ==> r9c5 ≠ 8
whip[4]: r6c3{n6 n9} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r6c9 ≠ 6
Entering_level_B4_with_<Fact-829550>
Entering_level_W5_with_<Fact-830752>
whip[5]: c2n8{r5 r9} - r8n8{c1 c5} - b8n9{r8c5 r7c6} - b5n9{r4c6 r6c5} - b5n4{r6c5 .} ==> r5c4 ≠ 8
Entering_level_B5_with_<Fact-832657>
Entering_level_W6_with_<Fact-836050>
whip[6]: c2n8{r9 r5} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6n8{c5 c9} - r4n8{c8 c5} - r2n8{c5 .} ==> r9c6 ≠ 8
Entering_level_B6_with_<Fact-840012>
Entering_level_W7_with_<Fact-849574>
Entering_level_B7_with_<Fact-854561>
NO CONTRADICTION FOUND IN CONTEXT 69.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 70 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r7c2.
entering BRT for context 70
hidden-single-in-a-row ==> r8c4 = 5
Starting_init_links_with_<Fact-876892>
Entering_level_W1_with_<Fact-881913>
Entering_level_W2_with_<Fact-881915>
Entering_level_W3_with_<Fact-882225>
Entering_level_B3_with_<Fact-882526>
Entering_level_W4_with_<Fact-882658>
whip[4]: c2n8{r5 r9} - c4n8{r9 r1} - c6n8{r1 r4} - c8n8{r4 .} ==> r5c1 ≠ 8
Entering_level_B4_with_<Fact-882870>
Entering_level_W5_with_<Fact-883156>
Entering_level_B5_with_<Fact-883351>
Entering_level_W6_with_<Fact-883764>
whip[6]: c2n3{r5 r1} - c4n3{r1 r9} - c8n3{r9 r4} - c6n3{r4 r2} - r2n5{c6 c7} - b6n5{r6c7 .} ==> r5c1 ≠ 3
Entering_level_B6_with_<Fact-884012>
Entering_level_W7_with_<Fact-884503>
Entering_level_B7_with_<Fact-884779>
NO CONTRADICTION FOUND IN CONTEXT 70.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 71 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n1r7c2.
entering BRT for context 71
hidden-single-in-a-column ==> r6c2 = 5
hidden-single-in-a-column ==> r8c3 = 5
hidden-single-in-a-block ==> r7c4 = 5
Starting_init_links_with_<Fact-885590>
Entering_level_W1_with_<Fact-890097>
Entering_level_W2_with_<Fact-890099>
whip[2]: c4n9{r5 r3} - c2n9{r3 .} ==> r5c8 ≠ 9, r5c7 ≠ 9, r5c6 ≠ 9
whip[2]: c8n9{r4 r7} - b8n9{r7c6 .} ==> r4c5 ≠ 9
whip[2]: c2n9{r3 r5} - c4n9{r5 .} ==> r3c6 ≠ 9, r3c5 ≠ 9
Entering_level_W3_with_<Fact-890568>
whip[3]: r8c4{n8 n3} - r9c4{n3 n7} - r9c2{n7 .} ==> r9c5 ≠ 8
whip[3]: r8c4{n8 n3} - r9c4{n3 n7} - r9c2{n7 .} ==> r9c6 ≠ 8
Entering_level_B3_with_<Fact-891342>
Entering_level_W4_with_<Fact-891642>
whip[4]: r6c3{n6 n9} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r6c1 ≠ 6
whip[4]: b8n8{r8c4 r8c5} - b8n9{r8c5 r7c6} - b5n9{r4c6 r6c5} - b5n4{r6c5 .} ==> r5c4 ≠ 8
whip[4]: r6c3{n6 n9} - r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r6c9 ≠ 6
Entering_level_B4_with_<Fact-892928>
Entering_level_W5_with_<Fact-894100>
whip[5]: b9n3{r9c8 r8c9} - c9n1{r8 r3} - r1n1{c7 c3} - c3n4{r1 r2} - b3n4{r2c9 .} ==> r9c8 ≠ 4
Entering_level_B5_with_<Fact-896035>
Entering_level_W6_with_<Fact-899491>
Entering_level_B6_with_<Fact-902049>
Entering_level_W7_with_<Fact-910292>
Entering_level_B7_with_<Fact-914374>
NO CONTRADICTION FOUND IN CONTEXT 71.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 72 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r7c1.
entering BRT for context 72
naked-single ==> r9c3 = 2
Starting_init_links_with_<Fact-933135>
Entering_level_W1_with_<Fact-938028>
Entering_level_W2_with_<Fact-938030>
Entering_level_W3_with_<Fact-938335>
Entering_level_B3_with_<Fact-938583>
Entering_level_W4_with_<Fact-938698>
Entering_level_B4_with_<Fact-938871>
Entering_level_W5_with_<Fact-939012>
Entering_level_B5_with_<Fact-939187>
Entering_level_W6_with_<Fact-939319>
Entering_level_B6_with_<Fact-939501>
Entering_level_W7_with_<Fact-939626>
Entering_level_B7_with_<Fact-939758>
NO CONTRADICTION FOUND IN CONTEXT 72.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 73 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n2r7c1.
entering BRT for context 73
naked-single ==> r9c3 = 4
Starting_init_links_with_<Fact-940133>
Entering_level_W1_with_<Fact-945026>
Entering_level_W2_with_<Fact-945028>
Entering_level_W3_with_<Fact-945332>
Entering_level_B3_with_<Fact-945553>
Entering_level_W4_with_<Fact-945674>
Entering_level_B4_with_<Fact-945813>
Entering_level_W5_with_<Fact-945957>
Entering_level_B5_with_<Fact-946078>
Entering_level_W6_with_<Fact-946201>
Entering_level_B6_with_<Fact-946309>
Entering_level_W7_with_<Fact-946405>
Entering_level_B7_with_<Fact-946464>
NO CONTRADICTION FOUND IN CONTEXT 73.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 74 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c9.
entering BRT for context 74
hidden-single-in-a-column ==> r1c8 = 8
Starting_init_links_with_<Fact-946762>
Entering_level_W1_with_<Fact-951323>
Entering_level_W2_with_<Fact-951325>
whip[2]: c2n8{r9 r5} - c4n8{r5 .} ==> r9c6 ≠ 8, r9c5 ≠ 8
Entering_level_W3_with_<Fact-951666>
Entering_level_B3_with_<Fact-952028>
Entering_level_W4_with_<Fact-952186>
whip[4]: r1n4{c4 c3} - c1n4{r2 r7} - c9n4{r7 r5} - c4n4{r5 .} ==> r2c5 ≠ 4
Entering_level_B4_with_<Fact-952507>
Entering_level_W5_with_<Fact-952855>
Entering_level_B5_with_<Fact-953231>
Entering_level_W6_with_<Fact-953962>
whip[6]: r2n5{c7 c6} - r2n8{c6 c5} - r2n3{c5 c1} - r6c1{n3 n6} - r6c3{n6 n9} - r2n9{c3 .} ==> r6c7 ≠ 5
whip[1]: r6n5{c2 .} ==> r4c3 ≠ 5
Entering_level_B6_with_<Fact-954844>
Entering_level_W7_with_<Fact-956266>
Entering_level_B7_with_<Fact-957111>
NO CONTRADICTION FOUND IN CONTEXT 74.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 75 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r6c9.
entering BRT for context 75
Starting_init_links_with_<Fact-960103>
Entering_level_W1_with_<Fact-964890>
Entering_level_W2_with_<Fact-964892>
Entering_level_W3_with_<Fact-965232>
Entering_level_B3_with_<Fact-965552>
Entering_level_W4_with_<Fact-965704>
Entering_level_B4_with_<Fact-965947>
Entering_level_W5_with_<Fact-966211>
Entering_level_B5_with_<Fact-966454>
Entering_level_W6_with_<Fact-966842>
whip[6]: c2n5{r7 r6} - r6c3{n5 n9} - c2n9{r5 r3} - c4n9{r3 r5} - b5n4{r5c4 r6c5} - r6c7{n4 .} ==> r7c4 ≠ 5
hidden-single-in-a-block ==> r8c4 = 5
hidden-single-in-a-block ==> r7c2 = 5
whip[2]: r8n8{c1 c5} - r6n8{c5 .} ==> r4c1 ≠ 8, r5c1 ≠ 8
whip[5]: r8n3{c9 c5} - r8n8{c5 c1} - r6c1{n8 n3} - b5n3{r6c5 r4c6} - r2n3{c6 .} ==> r5c9 ≠ 3
whip[6]: r6n3{c1 c5} - r2n3{c5 c6} - r2n5{c6 c7} - c8n5{r3 r4} - r4n3{c8 c9} - r8n3{c9 .} ==> r5c1 ≠ 3
whip[6]: r2c9{n4 n8} - r1c8{n8 n6} - r9c8{n6 n3} - r8n3{c9 c5} - r8n9{c5 c7} - r7c8{n9 .} ==> r3c8 ≠ 4
Entering_level_B6_with_<Fact-970907>
Entering_level_W7_with_<Fact-972817>
whip[7]: r8c3{n7 n1} - r8c1{n1 n8} - r6c1{n8 n3} - b1n3{r2c1 r1c2} - r1n1{c2 c7} - c9n1{r3 r7} - r7n7{c9 .} ==> r8c5 ≠ 7
Entering_level_B7_with_<Fact-974119>
NO CONTRADICTION FOUND IN CONTEXT 75.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 76 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c9.
entering BRT for context 76
hidden-single-in-a-row ==> r5c4 = 4
Starting_init_links_with_<Fact-977600>
Entering_level_W1_with_<Fact-982209>
Entering_level_W2_with_<Fact-982211>
whip[2]: c7n4{r2 r9} - c3n4{r9 .} ==> r2c1 ≠ 4
Entering_level_W3_with_<Fact-982550>
Entering_level_B3_with_<Fact-982926>
Entering_level_W4_with_<Fact-983083>
Entering_level_B4_with_<Fact-983473>
Entering_level_W5_with_<Fact-983838>
Entering_level_B5_with_<Fact-984404>
Entering_level_W6_with_<Fact-985058>
Entering_level_B6_with_<Fact-985860>
Entering_level_W7_with_<Fact-987007>
whip[7]: r2c9{n6 n8} - r1c8{n8 n4} - c7n4{r2 r9} - r7c8{n4 n9} - c4n9{r7 r3} - r2n9{c5 c3} - c3n4{r2 .} ==> r3c8 ≠ 6
Entering_level_B7_with_<Fact-989997>
braid[7]: b9n9{r8c7 r7c8} - c4n9{r7 r3} - r2n9{c5 c3} - r7n4{c8 c1} - c3n4{r9 r1} - r1n1{c7 c2} - b7n1{r7c2 .} ==> r8c7 ≠ 1
NO CONTRADICTION FOUND IN CONTEXT 76.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 77 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c9.
entering BRT for context 77
hidden-single-in-a-column ==> r9c8 = 3
Starting_init_links_with_<Fact-996007>
Entering_level_W1_with_<Fact-1000638>
Entering_level_W2_with_<Fact-1000640>
Entering_level_W3_with_<Fact-1000977>
Entering_level_B3_with_<Fact-1001349>
Entering_level_W4_with_<Fact-1001492>
Entering_level_B4_with_<Fact-1001827>
Entering_level_W5_with_<Fact-1002153>
Entering_level_B5_with_<Fact-1002499>
Entering_level_W6_with_<Fact-1003155>
whip[6]: r8n9{c7 c5} - c4n9{r7 r3} - c2n9{r3 r6} - c2n5{r6 r7} - r8n5{c3 c4} - r8n3{c4 .} ==> r5c7 ≠ 9
whip[6]: r8n9{c7 c5} - r8n3{c5 c4} - r8n5{c4 c3} - r6c3{n5 n6} - r6c1{n6 n8} - r8n8{c1 .} ==> r6c7 ≠ 9
Entering_level_B6_with_<Fact-1004069>
Entering_level_W7_with_<Fact-1005506>
Entering_level_B7_with_<Fact-1006258>
NO CONTRADICTION FOUND IN CONTEXT 77.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 78 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c7.
entering BRT for context 78
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-block ==> r8c5 = 9
Starting_init_links_with_<Fact-1009275>
Entering_level_W1_with_<Fact-1013636>
whip[1]: r6n5{c2 .} ==> r4c3 ≠ 5
Entering_level_W2_with_<Fact-1013640>
whip[2]: c2n9{r5 r3} - b2n9{r3c6 .} ==> r5c6 ≠ 9
whip[2]: c2n9{r3 r5} - c4n9{r5 .} ==> r3c6 ≠ 9
Entering_level_W3_with_<Fact-1014046>
Entering_level_B3_with_<Fact-1014756>
Entering_level_W4_with_<Fact-1014961>
Entering_level_B4_with_<Fact-1016092>
Entering_level_W5_with_<Fact-1016732>
whip[5]: r8n3{c9 c4} - r8n5{c4 c3} - r6c3{n5 n6} - r6c1{n6 n8} - r8n8{c1 .} ==> r6c9 ≠ 3
whip[3]: r5n9{c2 c4} - b5n4{r5c4 r6c5} - r6n3{c5 .} ==> r5c2 ≠ 3
Entering_level_B5_with_<Fact-1018460>
Entering_level_W6_with_<Fact-1019928>
whip[6]: c4n4{r1 r5} - r6n4{c5 c9} - r7n4{c9 c1} - c3n4{r9 r2} - r2n9{c3 c6} - b5n9{r4c6 .} ==> r1c5 ≠ 4
Entering_level_B6_with_<Fact-1021486>
Entering_level_W7_with_<Fact-1024152>
Entering_level_B7_with_<Fact-1025750>
NO CONTRADICTION FOUND IN CONTEXT 78.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 79 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r6c7.
entering BRT for context 79
Starting_init_links_with_<Fact-1030505>
Entering_level_W1_with_<Fact-1035306>
whip[1]: r6n5{c2 .} ==> r4c3 ≠ 5
Entering_level_W2_with_<Fact-1035310>
Entering_level_W3_with_<Fact-1035654>
Entering_level_B3_with_<Fact-1036009>
Entering_level_W4_with_<Fact-1036151>
Entering_level_B4_with_<Fact-1036372>
Entering_level_W5_with_<Fact-1036647>
Entering_level_B5_with_<Fact-1036850>
Entering_level_W6_with_<Fact-1037230>
Entering_level_B6_with_<Fact-1037507>
Entering_level_W7_with_<Fact-1038078>
Entering_level_B7_with_<Fact-1038502>
NO CONTRADICTION FOUND IN CONTEXT 79.
BACK IN CONTEXT 0 with 20 csp-variables solved and 231 candidates remaining.

GENERATING CONTEXT 80 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n5r6c7.
entering BRT for context 80
hidden-single-in-a-row ==> r2c6 = 5
hidden-single-in-a-row ==> r3c8 = 5
hidden-single-in-a-row ==> r4c3 = 5
hidden-single-in-a-block ==> r7c2 = 5
hidden-single-in-a-block ==> r8c4 = 5
Starting_init_links_with_<Fact-1039649>
Entering_level_W1_with_<Fact-1043966>
Entering_level_W2_with_<Fact-1043968>
Entering_level_W3_with_<Fact-1044318>
whip[3]: r2n3{c1 c5} - r6n3{c5 c9} - r8n3{c9 .} ==> r4c1 ≠ 3
whip[3]: r2n3{c1 c5} - r6n3{c5 c9} - r8n3{c9 .} ==> r5c1 ≠ 3
whip[3]: r8n8{c1 c5} - r2n8{c5 c9} - r6n8{c9 .} ==> r4c1 ≠ 8
whip[3]: r8n8{c1 c5} - r2n8{c5 c9} - r6n8{c9 .} ==> r5c1 ≠ 8
Entering_level_B3_with_<Fact-1044823>
Entering_level_W4_with_<Fact-1045111>
whip[4]: c4n4{r1 r5} - r3n4{c4 c1} - c3n4{r1 r9} - c7n4{r9 .} ==> r2c5 ≠ 4
Entering_level_B4_with_<Fact-1045523>
Entering_level_W5_with_<Fact-1046334>
whip[5]: r2n8{c9 c5} - r2n3{c5 c1} - r6c1{n3 n6} - r6c3{n6 n9} - r2n9{c3 .} ==> r6c9 ≠ 8
Entering_level_B5_with_<Fact-1046847>
braid[5]: r2n9{c5 c3} - r6c3{n9 n6} - r8n8{c5 c1} - r6c1{n8 n3} - r2n3{c1 .} ==> r2c5 ≠ 8
hidden-single-in-a-row ==> r2c9 = 8
whip[5]: r1c8{n6 n4} - r9c8{n4 n3} - b8n3{r9c6 r8c5} - r8n9{c5 c7} - r7c8{n9 .} ==> r5c8 ≠ 6
whip[5]: r1c8{n4 n6} - r9c8{n6 n3} - b8n3{r9c6 r8c5} - r8n9{c5 c7} - r7c8{n9 .} ==> r5c8 ≠ 4
Entering_level_W6_with_<Fact-1049632>
Entering_level_B6_with_<Fact-1050771>
Entering_level_W7_with_<Fact-1053301>
whip[7]: c3n4{r1 r9} - c7n4{r9 r5} - r2c7{n4 n6} - r2c3{n6 n9} - r6c3{n9 n6} - r6c9{n6 n3} - c1n3{r6 .} ==> r2c1 ≠ 4
whip[3]: b3n4{r2c7 r1c8} - r9n4{c8 c3} - r2n4{c3 .} ==> r5c7 ≠ 4
whip[1]: b6n4{r5c9 .} ==> r7c9 ≠ 4
whip[5]: r1c8{n6 n4} - r7c8{n4 n9} - b8n9{r7c6 r8c5} - r2n9{c5 c3} - r2n4{c3 .} ==> r9c8 ≠ 6
whip[5]: r8n3{c5 c9} - r9c8{n3 n4} - r1c8{n4 n6} - r7c8{n6 n9} - b8n9{r7c6 .} ==> r8c5 ≠ 8
hidden-single-in-a-row ==> r8c1 = 8
whip[2]: r6c1{n6 n3} - r2c1{n3 .} ==> r5c1 ≠ 6, r3c1 ≠ 6
whip[1]: r3n6{c5 .} ==> r2c5 ≠ 6, r1c6 ≠ 6, r1c5 ≠ 6
whip[4]: r6c3{n6 n9} - r2c3{n9 n4} - r2c7{n4 n6} - r1n6{c8 .} ==> r5c3 ≠ 6
whip[1]: r5n6{c7 .} ==> r6c9 ≠ 6
whip[3]: b5n4{r5c4 r6c5} - r6c9{n4 n3} - b4n3{r6c2 .} ==> r5c4 ≠ 3
whip[4]: r3n4{c4 c1} - c3n4{r1 r9} - r9c8{n4 n3} - c4n3{r9 .} ==> r1c4 ≠ 4
whip[4]: c2n8{r5 r6} - b4n3{r6c2 r6c1} - r6n6{c1 c3} - b4n9{r6c3 .} ==> r5c2 ≠ 1
whip[4]: c2n8{r5 r6} - b4n3{r6c2 r6c1} - r6n6{c1 c3} - b4n9{r6c3 .} ==> r5c2 ≠ 7
whip[5]: r7n7{c4 c9} - c9n6{r7 r5} - r5n4{c9 c4} - c4n8{r5 r1} - c4n3{r1 .} ==> r9c4 ≠ 7
whip[4]: r5n4{c4 c9} - r6c9{n4 n3} - r8n3{c9 c5} - r9c4{n3 .} ==> r5c4 ≠ 8
whip[2]: c4n8{r1 r9} - c4n3{r9 .} ==> r1c4 ≠ 7
whip[5]: r8n9{c7 c5} - r2c5{n9 n3} - r1c4{n3 n8} - r1c6{n8 n2} - r1c7{n2 .} ==> r8c7 ≠ 1
whip[2]: c7n1{r1 r9} - c2n1{r9 .} ==> r1c3 ≠ 1
whip[5]: r8n3{c5 c9} - r9c8{n3 n4} - r1c8{n4 n6} - r7c8{n6 n9} - b8n9{r7c6 .} ==> r8c5 ≠ 7
whip[5]: r8n3{c5 c9} - r9c8{n3 n4} - r1c8{n4 n6} - r7c8{n6 n9} - b8n9{r7c6 .} ==> r8c5 ≠ 1
whip[2]: r8c5{n9 n3} - r2c5{n3 .} ==> r3c5 ≠ 9, r6c5 ≠ 9, r4c5 ≠ 9
whip[1]: r6n9{c2 .} ==> r5c2 ≠ 9
whip[2]: r8c5{n3 n9} - r2c5{n9 .} ==> r1c5 ≠ 3, r6c5 ≠ 3, r4c5 ≠ 3
whip[1]: b5n3{r4c6 .} ==> r9c6 ≠ 3, r1c6 ≠ 3
whip[3]: r6c5{n8 n4} - r6c9{n4 n3} - r4n3{c9 .} ==> r4c6 ≠ 8
whip[3]: r4n8{c8 c5} - r6c5{n8 n4} - r6c9{n4 .} ==> r4c8 ≠ 3
whip[4]: r9c4{n8 n3} - b9n3{r9c8 r8c9} - r6c9{n3 n4} - r6c5{n4 .} ==> r9c5 ≠ 8
whip[4]: b1n9{r3c2 r2c3} - c5n9{r2 r8} - r8c7{n9 n7} - b7n7{r8c3 .} ==> r3c2 ≠ 7
whip[4]: r5c2{n3 n8} - r5c8{n8 n9} - b5n9{r5c6 r4c6} - r4n3{c6 .} ==> r5c9 ≠ 3
whip[4]: r5c2{n8 n3} - r5c8{n3 n9} - b5n9{r5c6 r4c6} - c6n3{r4 .} ==> r5c6 ≠ 8
whip[1]: b5n8{r6c5 .} ==> r1c5 ≠ 8
whip[4]: r4c8{n9 n8} - r4c5{n8 n1} - r5c6{n1 n3} - r5c8{n3 .} ==> r5c7 ≠ 9
whip[4]: c2n9{r3 r6} - r6n8{c2 c5} - b5n4{r6c5 r5c4} - b5n9{r5c4 .} ==> r3c6 ≠ 9
whip[4]: r9n6{c5 c7} - c7n1{r9 r1} - b3n2{r1c7 r3c9} - r3c6{n2 .} ==> r7c6 ≠ 6
whip[4]: c6n3{r4 r5} - r5c2{n3 n8} - r5c8{n8 n9} - b5n9{r5c6 .} ==> r4c6 ≠ 1
whip[5]: c7n1{r9 r1} - c2n1{r1 r3} - c2n9{r3 r6} - r6n8{c2 c5} - r4c5{n8 .} ==> r9c5 ≠ 1
whip[5]: c4n8{r9 r1} - r1n3{c4 c2} - r1n1{c2 c7} - r9n1{c7 c2} - c2n7{r9 .} ==> r9c6 ≠ 8
hidden-single-in-a-block ==> r9c4 = 8
naked-single ==> r1c4 = 3
naked-single ==> r2c5 = 9
naked-single ==> r8c5 = 3
hidden-single-in-a-block ==> r9c8 = 3
hidden-single-in-a-row ==> r8c7 = 9
hidden-single-in-a-row ==> r3c2 = 9
hidden-single-in-a-block ==> r6c3 = 9
hidden-single-in-a-block ==> r6c1 = 6
naked-single ==> r2c1 = 3
hidden-single-in-a-block ==> r1c6 = 8
whip[2]: c8n4{r1 r7} - c1n4{r7 .} ==> r1c3 ≠ 4
whip[2]: c2n1{r9 r1} - c7n1{r1 .} ==> r9c6 ≠ 1
whip[1]: b8n1{r7c5 .} ==> r7c9 ≠ 1
whip[2]: r9c6{n2 n6} - r3c6{n6 .} ==> r7c6 ≠ 2
whip[3]: b5n1{r5c6 r4c5} - r4n8{c5 c8} - c8n9{r4 .} ==> r5c6 ≠ 9
whip[3]: r7n2{c5 c1} - r7n4{c1 c8} - r1n4{c8 .} ==> r1c5 ≠ 2
hidden-single-in-a-row ==> r1c7 = 2
naked-single ==> r4c7 = 7
naked-single ==> r5c7 = 6
naked-single ==> r2c7 = 4
naked-single ==> r9c7 = 1
naked-single ==> r9c2 = 7
naked-single ==> r8c3 = 1
naked-single ==> r1c2 = 1
naked-single ==> r8c9 = 7
naked-single ==> r7c9 = 6
naked-single ==> r7c8 = 4
naked-single ==> r7c1 = 2
naked-single ==> r9c3 = 4
naked-single ==> r4c1 = 1
naked-single ==> r5c1 = 7
naked-single ==> r5c3 = 2
naked-single ==> r5c9 = 4
naked-single ==> r6c9 = 3
naked-single ==> r6c2 = 8
naked-single ==> r6c5 = 4
NO POSSIBLE VALUE for csp-variable 214 IN CONTEXT 80. RETRACTING CANDIDATE n5r6c7 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 230 candidates remaining.

whip[1]: r6n5{c3 .} ==> r4c3 ≠ 5
GENERATING CONTEXT 81 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c7.
entering BRT for context 81
hidden-single-in-a-row ==> r5c4 = 4
Starting_init_links_with_<Fact-1080098>
Entering_level_W1_with_<Fact-1084683>
Entering_level_W2_with_<Fact-1084685>
whip[2]: c9n4{r2 r7} - c1n4{r7 .} ==> r2c3 ≠ 4
Entering_level_W3_with_<Fact-1085028>
Entering_level_B3_with_<Fact-1085452>
Entering_level_W4_with_<Fact-1085618>
whip[4]: c2n9{r5 r3} - c4n9{r3 r7} - r7n5{c4 c2} - r6n5{c2 .} ==> r6c3 ≠ 9
whip[2]: c3n9{r2 r4} - r6n9{c2 .} ==> r2c5 ≠ 9
Entering_level_B4_with_<Fact-1086429>
Entering_level_W5_with_<Fact-1087087>
Entering_level_B5_with_<Fact-1087854>
Entering_level_W6_with_<Fact-1089316>
Entering_level_B6_with_<Fact-1090367>
Entering_level_W7_with_<Fact-1093264>
Entering_level_B7_with_<Fact-1094598>
NO CONTRADICTION FOUND IN CONTEXT 81.
BACK IN CONTEXT 0 with 20 csp-variables solved and 229 candidates remaining.

GENERATING CONTEXT 82 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c5.
entering BRT for context 82
hidden-single-in-a-block ==> r5c4 = 4
hidden-single-in-a-row ==> r8c7 = 9
Starting_init_links_with_<Fact-1100200>
Entering_level_W1_with_<Fact-1104337>
Entering_level_W2_with_<Fact-1104339>
Entering_level_W3_with_<Fact-1104723>
Entering_level_B3_with_<Fact-1105340>
Entering_level_W4_with_<Fact-1105594>
whip[4]: r2n5{c6 c7} - c8n5{r3 r4} - r4n9{c8 c3} - r2n9{c3 .} ==> r2c6 ≠ 3
whip[4]: r2n5{c6 c7} - c8n5{r3 r4} - r4n9{c8 c3} - r2n9{c3 .} ==> r2c6 ≠ 6
whip[4]: r2n5{c6 c7} - c8n5{r3 r4} - r4n9{c8 c3} - r2n9{c3 .} ==> r2c6 ≠ 8
whip[4]: r4n5{c8 c7} - r2n5{c7 c6} - r2n9{c6 c3} - r4n9{c3 .} ==> r4c8 ≠ 3
whip[4]: r4n5{c8 c7} - r2n5{c7 c6} - r2n9{c6 c3} - r4n9{c3 .} ==> r4c8 ≠ 8
Entering_level_B4_with_<Fact-1107185>
Entering_level_W5_with_<Fact-1108307>
Entering_level_B5_with_<Fact-1110391>
Entering_level_W6_with_<Fact-1113873>
Entering_level_B6_with_<Fact-1117240>
Entering_level_W7_with_<Fact-1126582>
whip[7]: r6n8{c1 c9} - r2n8{c9 c5} - r2n3{c5 c1} - r6c1{n3 n6} - r6c3{n6 n5} - r8n5{c3 c4} - r8n8{c4 .} ==> r4c1 ≠ 8
whip[7]: r6n8{c1 c9} - r2n8{c9 c5} - r2n3{c5 c1} - r6c1{n3 n6} - r6c3{n6 n5} - r8n5{c3 c4} - r8n8{c4 .} ==> r5c1 ≠ 8
whip[7]: c8n3{r9 r5} - c8n8{r5 r1} - c4n8{r1 r8} - c1n8{r8 r6} - r6n3{c1 c2} - r6n5{c2 c3} - r8n5{c3 .} ==> r9c4 ≠ 3
whip[5]: c2n9{r5 r3} - r3c4{n9 n7} - c1n7{r3 r8} - b7n8{r8c1 r9c2} - r9c4{n8 .} ==> r5c2 ≠ 7
whip[6]: r2n3{c1 c5} - r2n8{c5 c9} - r6n8{c9 c2} - r6n5{c2 c3} - r8n5{c3 c4} - c4n3{r8 .} ==> r6c1 ≠ 3
whip[6]: c4n8{r8 r1} - c8n8{r1 r5} - c2n8{r5 r6} - r6n5{c2 c3} - r8n5{c3 c4} - c4n3{r8 .} ==> r9c5 ≠ 8
whip[6]: c4n8{r8 r1} - c8n8{r1 r5} - c2n8{r5 r6} - r6n5{c2 c3} - r8n5{c3 c4} - c4n3{r8 .} ==> r9c6 ≠ 8
whip[6]: c4n3{r1 r8} - c4n8{r8 r9} - b7n8{r9c2 r8c1} - r6c1{n8 n6} - r6c3{n6 n5} - r8n5{c3 .} ==> r1c4 ≠ 7
whip[5]: r2n3{c1 c5} - r1c4{n3 n8} - c8n8{r1 r5} - c6n8{r5 r4} - b5n3{r4c6 .} ==> r5c1 ≠ 3
whip[6]: c4n3{r1 r8} - c4n5{r8 r7} - c4n9{r7 r3} - c2n9{r3 r5} - c2n3{r5 r6} - c2n5{r6 .} ==> r1c6 ≠ 3
whip[6]: c4n3{r1 r8} - c4n5{r8 r7} - c4n9{r7 r3} - c2n9{r3 r5} - c2n3{r5 r6} - c2n5{r6 .} ==> r1c5 ≠ 3
whip[6]: c2n9{r5 r3} - r3c4{n9 n7} - r9c4{n7 n8} - r1c4{n8 n3} - r1c2{n3 n7} - r9c2{n7 .} ==> r5c2 ≠ 1
whip[6]: c1n4{r2 r7} - c9n4{r7 r6} - r6n3{c9 c2} - r6n8{c2 c1} - r5c2{n8 n9} - b1n9{r3c2 .} ==> r2c3 ≠ 4
whip[5]: r7c8{n4 n6} - r1c8{n6 n8} - r2n8{c9 c5} - r2n3{c5 c1} - r2n4{c1 .} ==> r3c8 ≠ 4
whip[2]: c8n4{r7 r1} - c3n4{r1 .} ==> r9c7 ≠ 4
whip[6]: c1n3{r2 r4} - r6n3{c2 c9} - r6n4{c9 c7} - r2c7{n4 n5} - r2c6{n5 n9} - r2c3{n9 .} ==> r2c1 ≠ 6
whip[6]: r6c3{n6 n5} - r8n5{c3 c4} - c4n3{r8 r1} - c4n8{r1 r9} - b7n8{r9c2 r8c1} - r6c1{n8 .} ==> r6c9 ≠ 6
whip[6]: r6c3{n6 n5} - r8n5{c3 c4} - c4n3{r8 r1} - c4n8{r1 r9} - b7n8{r9c2 r8c1} - r6c1{n8 .} ==> r6c7 ≠ 6
naked-single ==> r6c7 = 4
whip[1]: r6n6{c1 .} ==> r5c3 ≠ 6, r5c1 ≠ 6
whip[2]: b3n4{r1c8 r2c9} - b3n8{r2c9 .} ==> r1c8 ≠ 6
whip[2]: b3n4{r2c9 r1c8} - b3n8{r1c8 .} ==> r2c9 ≠ 6
whip[3]: r2c3{n6 n9} - r2c6{n9 n5} - r2c7{n5 .} ==> r2c5 ≠ 6
whip[3]: r6c9{n3 n8} - b4n8{r6c2 r5c2} - r5n9{c2 .} ==> r5c8 ≠ 3
hidden-single-in-a-column ==> r9c8 = 3
hidden-single-in-a-row ==> r9c3 = 4
naked-single ==> r7c1 = 2
whip[1]: c6n3{r4 .} ==> r4c5 ≠ 3
whip[3]: r9c4{n7 n8} - r1c4{n8 n3} - c5n3{r2 .} ==> r8c5 ≠ 7
whip[3]: b8n3{r8c5 r8c4} - b8n8{r8c4 r9c4} - r1c4{n8 .} ==> r8c5 ≠ 1
whip[3]: c7n1{r1 r9} - c2n1{r9 r7} - r8n1{c1 .} ==> r1c3 ≠ 1
whip[3]: r5c1{n7 n1} - c3n1{r4 r8} - r8c9{n1 .} ==> r5c9 ≠ 7
whip[3]: r5c1{n7 n1} - c3n1{r4 r8} - r8c9{n1 .} ==> r8c1 ≠ 7
whip[3]: b7n5{r7c2 r8c3} - r8n7{c3 c9} - r8n1{c9 .} ==> r7c2 ≠ 1
whip[4]: r6c9{n3 n8} - r2n8{c9 c5} - r4n8{c5 c6} - c6n3{r4 .} ==> r5c9 ≠ 3
whip[3]: b4n9{r4c3 r5c2} - r5n3{c2 c6} - r5n1{c6 .} ==> r4c3 ≠ 1
whip[4]: r4c5{n1 n8} - r2n8{c5 c9} - c9n4{r2 r7} - r7n1{c9 .} ==> r9c5 ≠ 1
whip[4]: c1n4{r3 r2} - r2n3{c1 c5} - r8c5{n3 n8} - r8c1{n8 .} ==> r3c1 ≠ 1
whip[1]: b1n1{r3c2 .} ==> r9c2 ≠ 1
whip[1]: b7n1{r8c1 .} ==> r8c9 ≠ 1
naked-single ==> r8c9 = 7
whip[1]: b7n7{r9c2 .} ==> r3c2 ≠ 7, r1c2 ≠ 7
whip[2]: r9c2{n7 n8} - r9c4{n8 .} ==> r9c5 ≠ 7
whip[3]: r9c5{n2 n6} - r9c7{n6 n1} - r1c7{n1 .} ==> r1c5 ≠ 2
whip[3]: r1n6{c5 c3} - b1n7{r1c3 r3c1} - r3n4{c1 .} ==> r3c5 ≠ 6
whip[3]: r7c8{n6 n4} - r1n4{c8 c5} - c5n6{r1 .} ==> r7c6 ≠ 6
whip[3]: r3c2{n9 n1} - c9n1{r3 r7} - r7c6{n1 .} ==> r3c6 ≠ 9
whip[4]: r5n3{c6 c2} - b4n9{r5c2 r4c3} - r2n9{c3 c6} - r7c6{n9 .} ==> r5c6 ≠ 1
whip[1]: r5n1{c1 .} ==> r4c1 ≠ 1
whip[4]: b4n2{r5c3 r4c3} - r4n9{c3 c8} - r4n5{c8 c7} - c7n7{r4 .} ==> r5c3 ≠ 7
whip[4]: r4n2{c7 c3} - r4n9{c3 c8} - r4n5{c8 c7} - c7n7{r4 .} ==> r5c7 ≠ 2
whip[4]: r5n2{c3 c9} - r3c9{n2 n1} - r3c2{n1 n9} - b4n9{r5c2 .} ==> r4c3 ≠ 2
hidden-single-in-a-block ==> r5c3 = 2
hidden-single-in-a-block ==> r5c1 = 1
naked-single ==> r8c1 = 8
naked-single ==> r9c2 = 7
naked-single ==> r9c4 = 8
naked-single ==> r1c4 = 3
naked-single ==> r8c4 = 5
naked-single ==> r8c3 = 1
naked-single ==> r1c2 = 1
naked-single ==> r3c2 = 9
naked-single ==> r3c4 = 7
naked-single ==> r7c4 = 9
naked-single ==> r7c6 = 1
naked-single ==> r2c3 = 6
naked-single ==> r6c3 = 5
naked-single ==> r3c1 = 4
naked-single ==> r3c5 = 2
naked-single ==> r9c5 = 6
naked-single ==> r9c7 = 1
naked-single ==> r9c6 = 2
naked-single ==> r7c5 = 7
naked-single ==> r3c9 = 1
naked-single ==> r2c1 = 3
naked-single ==> r4c1 = 7
naked-single ==> r4c3 = 9
naked-single ==> r4c8 = 5
naked-single ==> r4c7 = 2
NO POSSIBLE VALUE for csp-variable 117 IN CONTEXT 82. RETRACTING CANDIDATE n9r6c5 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 228 candidates remaining.

GENERATING CONTEXT 83 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c5.
entering BRT for context 83
hidden-single-in-a-block ==> r5c4 = 4
Starting_init_links_with_<Fact-1165877>
Entering_level_W1_with_<Fact-1170106>
Entering_level_W2_with_<Fact-1170108>
Entering_level_W3_with_<Fact-1170457>
Entering_level_B3_with_<Fact-1170901>
Entering_level_W4_with_<Fact-1171073>
whip[4]: c2n9{r5 r3} - r6n9{c2 c7} - c8n9{r4 r7} - c4n9{r7 .} ==> r4c3 ≠ 9
whip[4]: c4n9{r3 r7} - r7n5{c4 c2} - c3n5{r8 r6} - c3n9{r6 .} ==> r2c5 ≠ 9
whip[4]: c4n9{r3 r7} - r7n5{c4 c2} - c3n5{r8 r6} - c3n9{r6 .} ==> r2c6 ≠ 9
hidden-single-in-a-row ==> r2c3 = 9
Entering_level_B4_with_<Fact-1172291>
Entering_level_W5_with_<Fact-1173017>
whip[5]: r6c1{n3 n6} - r6c3{n6 n5} - r8n5{c3 c4} - r8n8{c4 c1} - b4n8{r5c1 .} ==> r5c2 ≠ 3
whip[4]: c4n3{r8 r1} - c2n3{r1 r6} - r6n9{c2 c7} - r8n9{c7 .} ==> r8c5 ≠ 3
whip[4]: r6c1{n3 n6} - r6c3{n6 n5} - r8n5{c3 c4} - r8n3{c4 .} ==> r6c9 ≠ 3
whip[1]: r6n3{c1 .} ==> r5c1 ≠ 3, r4c1 ≠ 3
whip[5]: b4n9{r5c2 r6c2} - c2n5{r6 r7} - c4n5{r7 r8} - r8n8{c4 c1} - b4n8{r5c1 .} ==> r5c2 ≠ 7
whip[5]: b4n9{r5c2 r6c2} - c2n5{r6 r7} - c4n5{r7 r8} - r8n8{c4 c1} - b4n8{r5c1 .} ==> r5c2 ≠ 1
whip[5]: b4n9{r6c2 r5c2} - c2n8{r5 r9} - b8n8{r9c6 r8c4} - r8n5{c4 c3} - r6n5{c3 .} ==> r6c2 ≠ 3
hidden-single-in-a-block ==> r6c1 = 3
hidden-single-in-a-block ==> r1c2 = 3
whip[1]: c4n3{r8 .} ==> r9c6 ≠ 3
whip[4]: r2c1{n6 n4} - b7n4{r7c1 r9c3} - c7n4{r9 r6} - r6c9{n4 .} ==> r2c9 ≠ 6
whip[4]: r5c2{n8 n9} - r6n9{c2 c7} - r6n4{c7 c9} - r2c9{n4 .} ==> r5c9 ≠ 8
whip[5]: c2n8{r9 r5} - b4n9{r5c2 r6c2} - r6n5{c2 c3} - r8n5{c3 c4} - b8n3{r8c4 .} ==> r9c4 ≠ 8
whip[5]: b5n9{r4c5 r5c6} - r5c2{n9 n8} - c8n8{r5 r1} - b2n8{r1c6 r2c6} - r9n8{c6 .} ==> r4c8 ≠ 9
whip[5]: b8n8{r8c4 r9c6} - c2n8{r9 r5} - c2n9{r5 r6} - r6n5{c2 c3} - r8n5{c3 .} ==> r8c4 ≠ 3
hidden-single-in-a-block ==> r9c4 = 3
hidden-single-in-a-block ==> r8c9 = 3
whip[3]: r2c9{n4 n8} - r1c8{n8 n6} - r9c8{n6 .} ==> r3c8 ≠ 4
whip[2]: c8n4{r7 r1} - c3n4{r1 .} ==> r9c7 ≠ 4
whip[3]: b3n6{r3c8 r2c7} - c7n4{r2 r6} - r6c9{n4 .} ==> r5c8 ≠ 6
whip[4]: b3n6{r3c8 r2c7} - r2c1{n6 n4} - r7n4{c1 c9} - r9c8{n4 .} ==> r7c8 ≠ 6
whip[4]: c3n4{r1 r9} - r9c8{n4 n6} - b3n6{r3c8 r2c7} - r2c1{n6 .} ==> r3c1 ≠ 4
hidden-single-in-a-row ==> r3c5 = 4
whip[2]: c1n4{r7 r2} - b3n4{r2c9 .} ==> r7c8 ≠ 4
naked-single ==> r7c8 = 9
hidden-single-in-a-row ==> r8c5 = 9
hidden-single-in-a-column ==> r3c4 = 9
whip[1]: r3n7{c1 .} ==> r1c3 ≠ 7
whip[3]: c9n1{r3 r7} - c2n1{r7 r9} - b8n1{r9c5 .} ==> r3c1 ≠ 1
whip[3]: r1n1{c7 c3} - c2n1{r3 r7} - r8n1{c1 .} ==> r9c7 ≠ 1
whip[4]: r3n2{c6 c9} - c9n1{r3 r7} - r7n4{c9 c1} - r7n2{c1 .} ==> r9c6 ≠ 2
whip[4]: r2c1{n6 n4} - r7n4{c1 c9} - c9n1{r7 r3} - b1n1{r3c2 .} ==> r1c3 ≠ 6
whip[1]: c3n6{r5 .} ==> r5c1 ≠ 6
whip[3]: c6n5{r2 r3} - r3c8{n5 n6} - c1n6{r3 .} ==> r2c6 ≠ 6
whip[3]: r2c1{n6 n4} - b3n4{r2c7 r1c8} - r1n6{c8 .} ==> r2c5 ≠ 6
naked-single ==> r2c5 = 3
naked-single ==> r4c5 = 1
whip[2]: r9n1{c2 c6} - r9n8{c6 .} ==> r9c2 ≠ 7
whip[2]: r9n1{c6 c2} - r9n8{c2 .} ==> r9c6 ≠ 6
whip[3]: r8n5{c3 c4} - r8n8{c4 c1} - r9c2{n8 .} ==> r8c3 ≠ 1
whip[3]: r5c2{n9 n8} - r5c8{n8 n3} - r5c6{n3 .} ==> r5c7 ≠ 9
whip[3]: c7n5{r4 r2} - c7n4{r2 r6} - c7n9{r6 .} ==> r4c7 ≠ 7
whip[3]: c7n5{r4 r2} - c7n4{r2 r6} - c7n9{r6 .} ==> r4c7 ≠ 2
whip[3]: c7n4{r6 r2} - c7n5{r2 r4} - c7n9{r4 .} ==> r6c7 ≠ 6
whip[3]: b1n7{r3c1 r3c2} - b1n1{r3c2 r1c3} - r5n1{c3 .} ==> r5c1 ≠ 7
whip[3]: r4n5{c8 c7} - r4n9{c7 c6} - r4n3{c6 .} ==> r4c8 ≠ 8
whip[3]: c4n8{r8 r1} - b3n8{r1c8 r2c9} - r4n8{c9 .} ==> r8c1 ≠ 8
hidden-single-in-a-block ==> r9c2 = 8
naked-single ==> r9c6 = 1
naked-single ==> r5c2 = 9
naked-single ==> r6c2 = 5
naked-single ==> r6c3 = 6
naked-single ==> r6c9 = 4
naked-single ==> r6c7 = 9
naked-single ==> r4c7 = 5
naked-single ==> r4c8 = 3
naked-single ==> r5c8 = 8
naked-single ==> r4c6 = 9
naked-single ==> r2c9 = 8
naked-single ==> r2c6 = 5
naked-single ==> r5c6 = 3
hidden-single-in-a-row ==> r3c8 = 5
hidden-single-in-a-column ==> r1c6 = 8
naked-single ==> r1c4 = 7
naked-single ==> r7c4 = 5
naked-single ==> r8c4 = 8
hidden-single-in-a-row ==> r8c3 = 5
hidden-single-in-a-block ==> r4c1 = 8
hidden-single-in-a-block ==> r9c8 = 4
naked-single ==> r9c3 = 2
naked-single ==> r7c1 = 4
naked-single ==> r2c1 = 6
naked-single ==> r3c1 = 7
naked-single ==> r8c1 = 1
naked-single ==> r8c7 = 7
naked-single ==> r9c7 = 6
naked-single ==> r9c5 = 7
naked-single ==> r7c9 = 1
naked-single ==> r3c9 = 2
NO POSSIBLE VALUE for csp-variable 242 IN CONTEXT 83. RETRACTING CANDIDATE n8r6c5 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 227 candidates remaining.

GENERATING CONTEXT 84 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n4r6c5.
entering BRT for context 84
Starting_init_links_with_<Fact-1183601>
Entering_level_W1_with_<Fact-1188372>
Entering_level_W2_with_<Fact-1188374>
Entering_level_W3_with_<Fact-1188669>
Entering_level_B3_with_<Fact-1188954>
Entering_level_W4_with_<Fact-1189050>
Entering_level_B4_with_<Fact-1189194>
Entering_level_W5_with_<Fact-1189331>
Entering_level_B5_with_<Fact-1189421>
Entering_level_W6_with_<Fact-1189558>
Entering_level_B6_with_<Fact-1189679>
Entering_level_W7_with_<Fact-1189816>
Entering_level_B7_with_<Fact-1189979>
NO CONTRADICTION FOUND IN CONTEXT 84.
BACK IN CONTEXT 0 with 20 csp-variables solved and 227 candidates remaining.

GENERATING CONTEXT 85 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n3r6c5.
entering BRT for context 85
hidden-single-in-a-block ==> r5c4 = 4
Starting_init_links_with_<Fact-1190403>
Entering_level_W1_with_<Fact-1194686>
Entering_level_W2_with_<Fact-1194688>
Entering_level_W3_with_<Fact-1195039>
Entering_level_B3_with_<Fact-1195481>
Entering_level_W4_with_<Fact-1195661>
whip[4]: c2n9{r5 r3} - r6n9{c2 c7} - c8n9{r4 r7} - c4n9{r7 .} ==> r4c3 ≠ 9
whip[4]: c4n9{r3 r7} - r7n5{c4 c2} - c3n5{r8 r6} - c3n9{r6 .} ==> r2c5 ≠ 9
whip[4]: c4n9{r3 r7} - r7n5{c4 c2} - c3n5{r8 r6} - c3n9{r6 .} ==> r2c6 ≠ 9
hidden-single-in-a-row ==> r2c3 = 9
Entering_level_B4_with_<Fact-1196858>
Entering_level_W5_with_<Fact-1197602>
Entering_level_B5_with_<Fact-1198584>
Entering_level_W6_with_<Fact-1200466>
whip[6]: c2n3{r1 r5} - b4n9{r5c2 r6c2} - c2n8{r6 r9} - c4n8{r9 r8} - r8n5{c4 c3} - r6n5{c3 .} ==> r1c4 ≠ 3
whip[1]: c4n3{r8 .} ==> r9c6 ≠ 3
whip[5]: r8n8{c4 c1} - r6c1{n8 n6} - r6c3{n6 n5} - r8n5{c3 c4} - b8n3{r8c4 .} ==> r9c4 ≠ 8
whip[4]: c1n8{r4 r8} - r6n8{c1 c9} - c8n8{r4 r1} - c4n8{r1 .} ==> r5c2 ≠ 8
whip[5]: r8n9{c5 c7} - r6n9{c7 c2} - c2n5{r6 r7} - b7n1{r7c2 r9c2} - c2n8{r9 .} ==> r8c5 ≠ 1
whip[5]: r8n9{c5 c7} - r6n9{c7 c2} - c2n5{r6 r7} - b7n7{r7c2 r9c2} - c2n8{r9 .} ==> r8c5 ≠ 7
whip[5]: c8n8{r4 r1} - c4n8{r1 r8} - r8n5{c4 c3} - r6c3{n5 n6} - r6c1{n6 .} ==> r6c9 ≠ 8
whip[1]: r6n8{c1 .} ==> r5c1 ≠ 8, r4c1 ≠ 8
whip[5]: b3n8{r2c9 r1c8} - c4n8{r1 r8} - r8n5{c4 c3} - r6c3{n5 n6} - r6c9{n6 .} ==> r2c9 ≠ 4
whip[6]: c6n3{r2 r1} - c2n3{r1 r5} - c2n9{r5 r6} - c2n5{r6 r7} - c4n5{r7 r8} - c4n8{r8 .} ==> r2c6 ≠ 8
whip[6]: c4n5{r8 r7} - c2n5{r7 r6} - c2n8{r6 r9} - b8n8{r9c6 r8c5} - r8n9{c5 c7} - r6n9{c7 .} ==> r8c4 ≠ 3
hidden-single-in-a-block ==> r9c4 = 3
hidden-single-in-a-block ==> r8c9 = 3
whip[3]: r2c9{n6 n8} - r1c8{n8 n4} - r9c8{n4 .} ==> r3c8 ≠ 6
whip[4]: r4n5{c8 c7} - r2n5{c7 c6} - r2n3{c6 c1} - r4n3{c1 .} ==> r4c8 ≠ 8
whip[4]: c7n9{r4 r8} - r8c5{n9 n8} - r2n8{c5 c9} - b6n8{r4c9 .} ==> r5c8 ≠ 9
whip[2]: c8n9{r4 r7} - b8n9{r7c6 .} ==> r4c5 ≠ 9
whip[1]: b5n9{r4c6 .} ==> r7c6 ≠ 9, r3c6 ≠ 9
whip[4]: r4n5{c8 c7} - r2n5{c7 c6} - r2n3{c6 c1} - r4n3{c1 .} ==> r4c8 ≠ 9
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-row ==> r8c5 = 9
hidden-single-in-a-block ==> r3c4 = 9
whip[4]: r2n3{c1 c6} - r2n5{c6 c7} - c8n5{r3 r4} - r4n3{c8 .} ==> r5c1 ≠ 3
whip[3]: r1n3{c6 c2} - r5n3{c2 c8} - c8n8{r5 .} ==> r1c6 ≠ 8
whip[4]: r6c9{n6 n4} - r6c7{n4 n9} - c2n9{r6 r5} - r5n3{c2 .} ==> r5c8 ≠ 6
whip[4]: c6n9{r4 r5} - c6n8{r5 r9} - c2n8{r9 r6} - c2n9{r6 .} ==> r4c6 ≠ 1
whip[4]: b1n3{r2c1 r1c2} - r5n3{c2 c8} - c8n8{r5 r1} - b3n6{r1c8 .} ==> r2c1 ≠ 6
whip[4]: b1n6{r3c1 r1c3} - b1n4{r1c3 r2c1} - r7n4{c1 c9} - c9n1{r7 .} ==> r3c1 ≠ 1
whip[4]: r4c5{n1 n8} - b2n8{r2c5 r1c4} - r8n8{c4 c1} - c1n1{r8 .} ==> r4c3 ≠ 1
whip[4]: b4n3{r4c1 r5c2} - r5c8{n3 n8} - r4c9{n8 n2} - r4c3{n2 .} ==> r4c1 ≠ 7
whip[4]: b4n3{r4c1 r5c2} - r5c8{n3 n8} - r4c9{n8 n7} - r4c3{n7 .} ==> r4c1 ≠ 2
whip[4]: b7n8{r9c2 r8c1} - r6c1{n8 n6} - c3n6{r5 r1} - b1n1{r1c3 .} ==> r9c2 ≠ 1
whip[3]: r8c7{n7 n1} - r8c1{n1 n8} - r9c2{n8 .} ==> r8c3 ≠ 7
whip[3]: r1c4{n7 n8} - r8n8{c4 c1} - b7n7{r8c1 .} ==> r1c2 ≠ 7
whip[3]: r3c2{n1 n7} - b7n7{r9c2 r8c1} - c1n1{r8 .} ==> r5c2 ≠ 1
whip[4]: r9c2{n7 n8} - b8n8{r9c6 r8c4} - r1c4{n8 n7} - c3n7{r1 .} ==> r5c2 ≠ 7
whip[3]: b5n1{r5c6 r4c5} - r4c1{n1 n3} - r5c2{n3 .} ==> r5c6 ≠ 9
hidden-single-in-a-block ==> r4c6 = 9
whip[2]: b5n8{r4c5 r5c6} - c8n8{r5 .} ==> r1c5 ≠ 8
whip[2]: r4n8{c5 c9} - r2n8{c9 .} ==> r9c5 ≠ 8
whip[2]: r4n8{c9 c5} - r2n8{c5 .} ==> r5c9 ≠ 8
whip[3]: c8n6{r9 r1} - c8n8{r1 r5} - c6n8{r5 .} ==> r9c6 ≠ 6
whip[4]: r5c2{n9 n3} - r5c8{n3 n8} - c6n8{r5 r9} - c2n8{r9 .} ==> r6c2 ≠ 9
hidden-single-in-a-block ==> r5c2 = 9
hidden-single-in-a-block ==> r6c7 = 9
hidden-single-in-a-block ==> r6c9 = 4
hidden-single-in-a-row ==> r7c1 = 4
naked-single ==> r9c3 = 2
naked-single ==> r4c3 = 7
naked-single ==> r2c1 = 3
NO POSSIBLE VALUE for csp-variable 323 IN CONTEXT 85. RETRACTING CANDIDATE n3r6c5 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 20 csp-variables solved and 226 candidates remaining.

naked-single ==> r6c5 = 4
GENERATING CONTEXT 86 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c3.
entering BRT for context 86
naked-single ==> r6c7 = 6
hidden-single-in-a-column ==> r3c2 = 9
hidden-single-in-a-row ==> r6c2 = 5
hidden-single-in-a-block ==> r8c3 = 5
hidden-single-in-a-block ==> r7c4 = 5
hidden-single-in-a-column ==> r5c4 = 9
Starting_init_links_with_<Fact-1218537>
Entering_level_W1_with_<Fact-1222052>
Entering_level_W2_with_<Fact-1222054>
whip[2]: r4n9{c8 c7} - r4n5{c7 .} ==> r4c8 ≠ 8, r4c8 ≠ 3
whip[2]: r4n9{c7 c8} - r4n5{c8 .} ==> r4c7 ≠ 7, r4c7 ≠ 2
Entering_level_W3_with_<Fact-1222554>
whip[3]: r9n4{c7 c3} - r2c3{n4 n6} - c9n6{r2 .} ==> r7c9 ≠ 4
whip[2]: r7n4{c1 c8} - b3n4{r3c8 .} ==> r2c1 ≠ 4
whip[3]: c4n3{r8 r1} - c2n3{r1 r5} - c8n3{r5 .} ==> r9c6 ≠ 3
whip[3]: c4n8{r8 r1} - c8n8{r1 r5} - c2n8{r5 .} ==> r9c5 ≠ 8
whip[3]: c4n8{r8 r1} - c8n8{r1 r5} - c2n8{r5 .} ==> r9c6 ≠ 8
Entering_level_B3_with_<Fact-1223797>
Entering_level_W4_with_<Fact-1224340>
whip[4]: r2c1{n3 n6} - r2c3{n6 n4} - r2c9{n4 n8} - r6c9{n8 .} ==> r6c1 ≠ 3
naked-single ==> r6c1 = 8
naked-single ==> r6c9 = 3
hidden-single-in-a-block ==> r9c8 = 3
hidden-single-in-a-block ==> r9c2 = 8
naked-single ==> r9c4 = 7
naked-single ==> r3c4 = 4
hidden-single-in-a-column ==> r7c1 = 4
naked-single ==> r9c3 = 2
hidden-single-in-a-row ==> r9c7 = 4
naked-single ==> r2c7 = 5
naked-single ==> r4c7 = 9
naked-single ==> r4c8 = 5
naked-single ==> r3c8 = 6
naked-single ==> r7c8 = 9
hidden-single-in-a-block ==> r8c5 = 9
hidden-single-in-a-block ==> r8c4 = 8
NO POSSIBLE VALUE for csp-variable 283 IN CONTEXT 86. RETRACTING CANDIDATE n9r6c3 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 21 csp-variables solved and 219 candidates remaining.

whip[3]: c3n9{r2 r4} - r6n9{c2 c7} - r8n9{c7 .} ==> r2c5 ≠ 9
GENERATING CONTEXT 87 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n6r6c3.
entering BRT for context 87
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r6c2 = 5
hidden-single-in-a-block ==> r8c3 = 5
hidden-single-in-a-block ==> r7c4 = 5
hidden-single-in-a-column ==> r7c8 = 9
hidden-single-in-a-block ==> r8c5 = 9
Starting_init_links_with_<Fact-1231410>
Entering_level_W1_with_<Fact-1234959>
Entering_level_W2_with_<Fact-1234961>
whip[2]: c2n9{r5 r3} - b2n9{r3c6 .} ==> r5c6 ≠ 9
whip[2]: c2n8{r5 r9} - b8n8{r9c6 .} ==> r5c4 ≠ 8
whip[2]: c2n9{r3 r5} - c4n9{r5 .} ==> r3c6 ≠ 9
Entering_level_W3_with_<Fact-1235447>
whip[3]: r2c3{n4 n9} - r3n9{c2 c4} - c4n4{r3 .} ==> r1c3 ≠ 4
whip[2]: b1n4{r2c1 r3c1} - r7n4{c1 .} ==> r2c9 ≠ 4
whip[2]: b3n4{r3c8 r2c7} - c3n4{r2 .} ==> r9c8 ≠ 4
whip[3]: r2n3{c5 c1} - r6n3{c1 c9} - r8n3{c9 .} ==> r1c4 ≠ 3
whip[3]: r2n8{c5 c9} - r6n8{c9 c1} - r8n8{c1 .} ==> r1c4 ≠ 8
whip[1]: c4n8{r8 .} ==> r9c6 ≠ 8, r9c5 ≠ 8
whip[3]: c5n3{r1 r4} - r5c4{n3 n9} - b2n9{r3c4 .} ==> r2c6 ≠ 3
whip[3]: r8n8{c1 c4} - r8n3{c4 c9} - r6c9{n3 .} ==> r6c1 ≠ 8
naked-single ==> r6c1 = 3
naked-single ==> r6c9 = 8
naked-single ==> r2c9 = 6
naked-single ==> r2c1 = 4
naked-single ==> r7c1 = 2
naked-single ==> r9c3 = 4
naked-single ==> r2c7 = 5
naked-single ==> r3c8 = 4
naked-single ==> r1c8 = 8
naked-single ==> r2c3 = 9
naked-single ==> r2c6 = 8
naked-single ==> r2c5 = 3
hidden-single-in-a-row ==> r1c2 = 3
hidden-single-in-a-block ==> r4c5 = 8
hidden-single-in-a-block ==> r5c2 = 9
naked-single ==> r5c4 = 3
naked-single ==> r8c4 = 8
naked-single ==> r9c4 = 7
naked-single ==> r3c4 = 9
naked-single ==> r1c4 = 4
naked-single ==> r5c8 = 6
naked-single ==> r9c8 = 3
NO POSSIBLE VALUE for csp-variable 283 IN CONTEXT 87. RETRACTING CANDIDATE n6r6c3 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 21 csp-variables solved and 217 candidates remaining.

naked-single ==> r6c3 = 5
hidden-single-in-a-column ==> r7c2 = 5
hidden-single-in-a-block ==> r8c4 = 5
whip[4]: c2n8{r6 r9} - c4n8{r9 r1} - c8n8{r1 r4} - b5n8{r4c5 .} ==> r5c1 ≠ 8
whip[4]: c2n3{r6 r1} - c4n3{r1 r9} - c8n3{r9 r4} - b5n3{r4c5 .} ==> r5c1 ≠ 3
whip[5]: r8n8{c1 c5} - r8n3{c5 c9} - r6n3{c9 c2} - r6n9{c2 c7} - r8n9{c7 .} ==> r6c1 ≠ 8
whip[4]: r8n3{c9 c5} - r8n9{c5 c7} - r6n9{c7 c2} - r6n8{c2 .} ==> r6c9 ≠ 3
whip[1]: r6n3{c2 .} ==> r4c1 ≠ 3, r5c2 ≠ 3
whip[5]: r8n3{c9 c5} - r8n9{c5 c7} - r6n9{c7 c2} - c2n3{r6 r1} - c4n3{r1 .} ==> r5c9 ≠ 3
whip[7]: r7n7{c5 c9} - r9n7{c7 c2} - r8c3{n7 n1} - r8c7{n1 n9} - r6n9{c7 c2} - r3c2{n9 n1} - c9n1{r3 .} ==> r8c5 ≠ 7
braid[7]: r6n9{c7 c2} - r6n8{c2 c9} - c8n5{r4 r3} - c6n5{r3 r2} - r2n8{c9 c5} - r6n3{c2 c1} - r2n3{c6 .} ==> r4c8 ≠ 9
GENERATING CONTEXT 88 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n9r6c2.
entering BRT for context 88
naked-single ==> r6c7 = 6
naked-single ==> r6c9 = 8
naked-single ==> r6c1 = 3
hidden-single-in-a-column ==> r1c2 = 3
hidden-single-in-a-column ==> r1c8 = 8
hidden-single-in-a-column ==> r2c3 = 9
Starting_init_links_with_<Fact-1266108>
Entering_level_W1_with_<Fact-1268933>
Entering_level_W2_with_<Fact-1268935>
whip[2]: c4n8{r9 r5} - c4n3{r5 .} ==> r9c4 ≠ 7
whip[2]: c4n8{r5 r9} - c4n3{r9 .} ==> r5c4 ≠ 9
whip[2]: r2n8{c6 c5} - r2n3{c5 .} ==> r2c6 ≠ 6, r2c6 ≠ 5
hidden-single-in-a-block ==> r3c6 = 5
hidden-single-in-a-block ==> r2c7 = 5
hidden-single-in-a-block ==> r4c8 = 5
whip[2]: c8n3{r9 r5} - c4n3{r5 .} ==> r9c6 ≠ 3
whip[2]: c8n3{r5 r9} - c4n3{r9 .} ==> r5c6 ≠ 3
whip[2]: r2n8{c5 c6} - r2n3{c6 .} ==> r2c5 ≠ 6
whip[2]: c2n8{r9 r5} - c4n8{r5 .} ==> r9c6 ≠ 8, r9c5 ≠ 8
whip[2]: b8n8{r8c5 r9c4} - b8n3{r9c4 .} ==> r8c5 ≠ 1, r8c5 ≠ 9
hidden-single-in-a-row ==> r8c7 = 9
hidden-single-in-a-column ==> r5c8 = 9
hidden-single-in-a-block ==> r4c9 = 3
hidden-single-in-a-block ==> r9c8 = 3
naked-single ==> r9c4 = 8
naked-single ==> r8c5 = 3
naked-single ==> r2c5 = 8
naked-single ==> r2c6 = 3
naked-single ==> r5c4 = 3
hidden-single-in-a-block ==> r8c1 = 8
hidden-single-in-a-block ==> r5c2 = 8
naked-single ==> r5c6 = 1
naked-single ==> r4c5 = 9
naked-single ==> r4c6 = 8
hidden-single-in-a-column ==> r7c6 = 9
naked-single ==> r7c4 = 7
naked-single ==> r1c4 = 4
naked-single ==> r3c4 = 9
hidden-single-in-a-column ==> r9c3 = 4
naked-single ==> r7c1 = 2
hidden-single-in-a-column ==> r5c7 = 4
whip[1]: r9n6{c5 .} ==> r7c5 ≠ 6
naked-single ==> r7c5 = 1
whip[2]: c7n1{r1 r9} - c2n1{r9 .} ==> r1c3 ≠ 1, r3c9 ≠ 1
naked-single ==> r3c9 = 2
naked-single ==> r5c9 = 7
naked-single ==> r8c9 = 1
naked-single ==> r9c7 = 7
naked-single ==> r9c2 = 1
naked-single ==> r3c2 = 7
naked-single ==> r3c5 = 6
naked-single ==> r9c5 = 2
naked-single ==> r9c6 = 6
naked-single ==> r1c5 = 7
naked-single ==> r3c8 = 4
naked-single ==> r7c8 = 6
naked-single ==> r7c9 = 4
naked-single ==> r3c1 = 1
naked-single ==> r4c1 = 7
naked-single ==> r2c9 = 6
naked-single ==> r2c1 = 4
naked-single ==> r1c6 = 2
naked-single ==> r1c3 = 6
naked-single ==> r5c3 = 2
naked-single ==> r4c3 = 1
naked-single ==> r8c3 = 7
naked-single ==> r5c1 = 6
naked-single ==> r4c7 = 2
naked-single ==> r1c7 = 1
Entering_level_W3_with_<Fact-1269800>
Entering_level_B3_with_<Fact-1269801>
Entering_level_W4_with_<Fact-1269803>
Entering_level_B4_with_<Fact-1269804>
Entering_level_W5_with_<Fact-1269806>
Entering_level_B5_with_<Fact-1269807>
Entering_level_W6_with_<Fact-1269809>
Entering_level_B6_with_<Fact-1269810>
Entering_level_W7_with_<Fact-1269812>
Entering_level_B7_with_<Fact-1269813>
NO CONTRADICTION FOUND IN CONTEXT 88.
BACK IN CONTEXT 0 with 24 csp-variables solved and 201 candidates remaining.

GENERATING CONTEXT 89 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS n8r6c2.
entering BRT for context 89
naked-single ==> r6c9 = 6
naked-single ==> r6c7 = 9
naked-single ==> r6c1 = 3
hidden-single-in-a-column ==> r1c2 = 3
hidden-single-in-a-column ==> r7c8 = 9
naked-single ==> r7c4 = 7
hidden-single-in-a-block ==> r8c5 = 9
hidden-single-in-a-row ==> r8c1 = 8
hidden-single-in-a-row ==> r8c9 = 3
Starting_init_links_with_<Fact-1270044>
Entering_level_W1_with_<Fact-1272501>
whip[1]: c9n7{r4 .} ==> r4c7 ≠ 7, r5c7 ≠ 7
whip[1]: r7n6{c5 .} ==> r9c5 ≠ 6, r9c6 ≠ 6
Entering_level_W2_with_<Fact-1272507>
whip[2]: c2n9{r5 r3} - b2n9{r3c6 .} ==> r5c6 ≠ 9
whip[2]: c2n9{r3 r5} - c4n9{r5 .} ==> r3c6 ≠ 9
whip[2]: r8n1{c3 c7} - r1n1{c7 .} ==> r5c3 ≠ 1, r4c3 ≠ 1
whip[2]: r1n1{c7 c3} - r8n1{c3 .} ==> r9c7 ≠ 1
Entering_level_W3_with_<Fact-1273033>
whip[3]: r2c9{n4 n8} - r1c8{n8 n6} - r9c8{n6 .} ==> r3c8 ≠ 4
whip[3]: r2c1{n6 n4} - r3n4{c1 c4} - b2n9{r3c4 .} ==> r2c6 ≠ 6
whip[3]: r7n4{c9 c1} - r2c1{n4 n6} - c7n6{r2 .} ==> r9c7 ≠ 4
whip[2]: r9n4{c3 c8} - b3n4{r1c8 .} ==> r2c3 ≠ 4
whip[3]: r3n4{c1 c4} - r3n9{c4 c2} - r2c3{n9 .} ==> r3c1 ≠ 6
whip[3]: c7n4{r5 r2} - c7n6{r2 r9} - r9c8{n6 .} ==> r5c8 ≠ 4
whip[2]: c8n4{r1 r9} - c3n4{r9 .} ==> r1c4 ≠ 4
naked-single ==> r1c4 = 8
naked-single ==> r9c4 = 3
naked-single ==> r5c4 = 9
naked-single ==> r3c4 = 4
hidden-single-in-a-block ==> r4c3 = 9
naked-single ==> r2c3 = 6
naked-single ==> r2c5 = 3
naked-single ==> r2c1 = 4
naked-single ==> r7c1 = 2
naked-single ==> r9c3 = 4
naked-single ==> r9c8 = 6
NO POSSIBLE VALUE for csp-variable 436 IN CONTEXT 89. RETRACTING CANDIDATE n8r6c2 FROM CONTEXT 0.

BACK IN CONTEXT 0 with 24 csp-variables solved and 200 candidates remaining.

hidden-single-in-a-row ==> r6c9 = 8
hidden-single-in-a-block ==> r1c8 = 8
whip[2]: c2n8{r5 r9} - c4n8{r9 .} ==> r5c6 ≠ 8
whip[2]: c2n8{r9 r5} - c4n8{r5 .} ==> r9c6 ≠ 8, r9c5 ≠ 8
whip[4]: r6n9{c2 c7} - r8n9{c7 c5} - r8n8{c5 c1} - c2n8{r9 .} ==> r5c2 ≠ 9
whip[4]: r6c7{n6 n9} - b4n9{r6c2 r4c3} - r2c3{n9 n4} - r2c9{n4 .} ==> r2c7 ≠ 6
whip[5]: c2n3{r1 r6} - r6n9{c2 c7} - r8n9{c7 c5} - b8n3{r8c5 r9c4} - b8n8{r9c4 .} ==> r1c6 ≠ 3
whip[5]: r5n3{c6 c8} - c8n9{r5 r7} - b8n9{r7c4 r8c5} - b8n3{r8c5 r9c4} - b8n8{r9c4 .} ==> r4c6 ≠ 3
whip[5]: r8n3{c5 c9} - r4n3{c9 c8} - c8n5{r4 r3} - c6n5{r3 r2} - r2n8{c6 .} ==> r2c5 ≠ 3
whip[4]: r2n9{c6 c3} - c2n9{r3 r6} - r6n3{c2 c1} - r2n3{c1 .} ==> r2c6 ≠ 8
hidden-single-in-a-block ==> r2c5 = 8
hidden-single-in-a-block ==> r9c4 = 8
hidden-single-in-a-block ==> r4c6 = 8
hidden-single-in-a-block ==> r5c2 = 8
hidden-single-in-a-column ==> r8c1 = 8
whip[2]: b5n9{r5c6 r4c5} - r8n9{c5 .} ==> r5c7 ≠ 9
whip[3]: r8n9{c5 c7} - c8n9{r7 r5} - b5n9{r5c6 .} ==> r3c5 ≠ 9
whip[3]: b8n3{r9c6 r8c5} - c5n9{r8 r4} - c5n1{r4 .} ==> r9c6 ≠ 1
whip[3]: b8n3{r9c6 r8c5} - c5n9{r8 r4} - b5n1{r4c5 .} ==> r5c6 ≠ 3
whip[4]: r2n9{c6 c3} - c2n9{r3 r6} - r6n3{c2 c1} - r2n3{c1 .} ==> r2c6 ≠ 6
whip[4]: r2n9{c6 c3} - c2n9{r3 r6} - r6n3{c2 c1} - r2n3{c1 .} ==> r2c6 ≠ 5
hidden-single-in-a-block ==> r3c6 = 5
hidden-single-in-a-block ==> r2c7 = 5
hidden-single-in-a-block ==> r4c8 = 5
whip[2]: r4n3{c5 c9} - r8n3{c9 .} ==> r1c5 ≠ 3
whip[2]: c5n3{r4 r8} - c5n9{r8 .} ==> r4c5 ≠ 1
hidden-single-in-a-block ==> r5c6 = 1
whip[2]: r5n9{c8 c4} - r5n3{c4 .} ==> r5c8 ≠ 6, r5c8 ≠ 4
whip[2]: c5n3{r8 r4} - c5n9{r4 .} ==> r8c5 ≠ 1
whip[3]: c5n9{r8 r4} - c3n9{r4 r2} - c6n9{r2 .} ==> r7c4 ≠ 9
naked-single ==> r7c4 = 7
whip[3]: b1n9{r2c3 r3c2} - r3c4{n9 n4} - b3n4{r3c8 .} ==> r2c3 ≠ 4
whip[3]: c3n4{r9 r1} - c4n4{r1 r3} - c8n4{r3 .} ==> r9c7 ≠ 4
hidden-single-in-a-column ==> r5c7 = 4
whip[3]: c7n2{r4 r1} - b3n1{r1c7 r3c9} - c1n1{r3 .} ==> r4c1 ≠ 2
whip[3]: r5n9{c8 c4} - r3n9{c4 c2} - r6n9{c2 .} ==> r4c7 ≠ 9
whip[3]: c9n3{r4 r8} - c9n7{r8 r5} - r4c7{n7 .} ==> r4c9 ≠ 2
whip[3]: c7n6{r9 r6} - b6n9{r6c7 r5c8} - c8n3{r5 .} ==> r9c8 ≠ 6
whip[4]: r8n9{c7 c5} - r4n9{c5 c3} - r4n2{c3 c7} - r1c7{n2 .} ==> r8c7 ≠ 1
whip[2]: c7n1{r1 r9} - c2n1{r9 .} ==> r1c3 ≠ 1
whip[4]: r9n7{c2 c7} - r8c7{n7 n9} - r6n9{c7 c2} - c2n3{r6 .} ==> r1c2 ≠ 7
whip[4]: c7n1{r9 r1} - r1c2{n1 n3} - r6c2{n3 n9} - r6c7{n9 .} ==> r9c7 ≠ 6
hidden-single-in-a-column ==> r6c7 = 6
naked-single ==> r6c1 = 3
naked-single ==> r6c2 = 9
hidden-single-in-a-block ==> r2c3 = 9
naked-single ==> r2c6 = 3
naked-single ==> r1c4 = 4
naked-single ==> r3c4 = 9
naked-single ==> r5c4 = 3
naked-single ==> r4c5 = 9
naked-single ==> r8c5 = 3
naked-single ==> r5c8 = 9
hidden-single-in-a-block ==> r8c7 = 9
hidden-single-in-a-row ==> r7c6 = 9
hidden-single-in-a-block ==> r9c8 = 3
hidden-single-in-a-row ==> r9c3 = 4
naked-single ==> r7c1 = 2
hidden-single-in-a-column ==> r4c9 = 3
hidden-single-in-a-row ==> r1c2 = 3
hidden-single-in-a-row ==> r1c7 = 1
naked-single ==> r3c9 = 2
naked-single ==> r5c9 = 7
naked-single ==> r4c7 = 2
naked-single ==> r5c1 = 6
naked-single ==> r2c1 = 4
naked-single ==> r2c9 = 6
naked-single ==> r3c8 = 4
naked-single ==> r7c8 = 6
naked-single ==> r7c5 = 1
naked-single ==> r7c9 = 4
naked-single ==> r5c3 = 2
naked-single ==> r8c9 = 1
naked-single ==> r8c3 = 7
naked-single ==> r1c3 = 6
naked-single ==> r1c6 = 2
naked-single ==> r1c5 = 7
naked-single ==> r3c5 = 6
naked-single ==> r9c5 = 2
naked-single ==> r9c6 = 6
naked-single ==> r4c3 = 1
naked-single ==> r4c1 = 7
naked-single ==> r3c1 = 1
naked-single ==> r3c2 = 7
naked-single ==> r9c2 = 1
naked-single ==> r9c7 = 7
GRID 0 SOLVED. rating-type = T&E(1, B), MOST COMPLEX RULE TRIED = W[3]
536472189
429183576
178965342
741698253
682351497
395247618
253719864
867534921
914826735
Puzzle 5.......9.2.1...7...8...3...4.6.........5.......2.7.1...3...8...6...4.2.9.......5 :
init-time = 0.18s, solve-time = 3h 56m 52.09s, total-time = 3h 56m 52.28s
nb-facts=<Fact-1286853>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = T&E(1, B)
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
