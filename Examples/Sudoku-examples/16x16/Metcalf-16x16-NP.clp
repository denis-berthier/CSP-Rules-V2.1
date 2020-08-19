

(solve-grid-as-list
    0 0 0 0 0 0 6 0 0 0 0 0 0 0 7 2 4 0 0 16 0 15 0 0 6 2 0 11 14 0 0 0 0 0 0 0 0 0 0 10 3 0 13 0 0 1 0 0 0 6 0 0 11 2 9  1 16 0 15 0 0 0 0 0 0 0 2 0 9 0 0 0 1 0 0 0 0 11 15 0 0 0 9 13 0 5 0 0 0 12 0 0 0 0 0 0 0 0 16 14 0 0 0 0 0 8 7 0 0 9 0 13 0 4 0 0 0 12 2 0 10 0 0 13 1 0 0 0 0 9 3 0 6 0 0 12 0 15 0 4 5 0 0 0 0 10 0 0 7 8 1 0 5 0 14 0 9 15 12 0 2 0 0 0 16 10 13 0 0 0 0 8 0 0 3 0 12 0 8 0 5 0 4 0 0 16 0 1 0 0 2 0 0 0 0 0 1 0 5 7 14 0 0 0 0 8 0 16 15 0 1 0 0 9 0 13 11 0 0 0 6 0 0 5 13 11 14 0 0 0 0 0 0 0 1 10 12 3 0 0 0 0 0 3 0 0 8 0 0 7 6 15 0 13 0 0
)

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
(0 0 0 0 0 0 6 0 0 0 0 0 0 0 7 2 4 0 0 16 0 15 0 0 6 2 0 11 14 0 0 0 0 0 0 0 0 0 0 10 3 0 13 0 0 1 0 0 0 6 0 0 11 2 9 1 16 0 15 0 0 0 0 0 0 0 2 0 9 0 0 0 1 0 0 0 0 11 15 0 0 0 9 13 0 5 0 0 0 12 0 0 0 0 0 0 0 0 16 14 0 0 0 0 0 8 7 0 0 9 0 13 0 4 0 0 0 12 2 0 10 0 0 13 1 0 0 0 0 9 3 0 6 0 0 12 0 15 0 4 5 0 0 0 0 10 0 0 7 8 1 0 5 0 14 0 9 15 12 0 2 0 0 0 16 10 13 0 0 0 0 8 0 0 3 0 12 0 8 0 5 0 4 0 0 16 0 1 0 0 2 0 0 0 0 0 1 0 5 7 14 0 0 0 0 8 0 16 15 0 1 0 0 9 0 13 11 0 0 0 6 0 0 5 13 11 14 0 0 0 0 0 0 0 1 10 12 3 0 0 0 0 0 3 0 0 8 0 0 7 6 15 0 13 0 0)
97 givens, 763 candidates
entering BRT
hidden-single-in-a-block ==> r15c10 = 5
hidden-single-in-a-row ==> r13c13 = 15
hidden-single-in-a-block ==> r3c16 = 15
hidden-single-in-a-block ==> r3c15 = 6
hidden-single-in-a-row ==> r13c10 = 13
hidden-single-in-a-row ==> r10c3 = 13
hidden-single-in-a-block ==> r10c8 = 2
hidden-single-in-a-row ==> r10c1 = 16
hidden-single-in-a-column ==> r7c6 = 1
hidden-single-in-a-row ==> r7c2 = 12
naked-single ==> r13c2 = 2
hidden-single-in-a-block ==> r3c4 = 2
hidden-single-in-a-row ==> r5c16 = 12
hidden-single-in-a-row ==> r5c6 = 13
hidden-single-in-a-column ==> r3c6 = 7
hidden-single-in-a-block ==> r4c12 = 7
hidden-single-in-a-row ==> r2c2 = 1
hidden-single-in-a-row ==> r1c10 = 1
hidden-single-in-a-column ==> r4c10 = 10
hidden-single-in-a-row ==> r4c1 = 14
hidden-single-in-a-block ==> r2c3 = 7
hidden-single-in-a-block ==> r1c2 = 13
hidden-single-in-a-block ==> r1c1 = 3
hidden-single-in-a-block ==> r2c5 = 13
hidden-single-in-a-block ==> r6c1 = 1
Starting_init_links_with_<Fact-18694>
581 candidates, 4117 csp-links and 4117 links. Density = 2.44%
starting non trivial part of solution
Entering_level_W1_with_<Fact-34023>
whip[1]: r15n16{c8 .} ==> r16c8 ≠ 16, r14c7 ≠ 16, r16c6 ≠ 16
hidden-single-in-a-row ==> r16c2 = 16
whip[1]: c6n6{r15 .} ==> r15c8 ≠ 6
whip[1]: r10n3{c12 .} ==> r12c11 ≠ 3
whip[1]: r4n4{c16 .} ==> r3c13 ≠ 4, r1c13 ≠ 4, r1c14 ≠ 4
whip[1]: r4n3{c16 .} ==> r2c16 ≠ 3
whip[1]: r2n10{c16 .} ==> r1c14 ≠ 10, r1c13 ≠ 10
whip[1]: b10n15{r12c8 .} ==> r15c8 ≠ 15, r6c8 ≠ 15, r7c8 ≠ 15, r8c8 ≠ 15
whip[1]: b4n11{r3c13 .} ==> r16c13 ≠ 11, r11c13 ≠ 11, r12c13 ≠ 11
whip[1]: b4n9{r2c16 .} ==> r2c11 ≠ 9
Entering_relation_bivalue_with_<Fact-34043>
Entering_level_S2_with_<Fact-34232>
naked-pairs-in-a-row: r9{c6 c7}{n11 n14} ==> r9c16 ≠ 14, r9c16 ≠ 11, r9c15 ≠ 14, r9c15 ≠ 11, r9c14 ≠ 14, r9c11 ≠ 11, r9c4 ≠ 11, r9c1 ≠ 11
naked-single ==> r9c1 = 7
naked-single ==> r9c4 = 1
hidden-single-in-a-block ==> r11c16 = 1
hidden-single-in-a-block ==> r16c15 = 1
hidden-single-in-a-column ==> r13c15 = 11
whip[1]: r13n10{c4 .} ==> r14c4 ≠ 10, r16c1 ≠ 10, r16c3 ≠ 10
whip[1]: r9n11{c7 .} ==> r11c8 ≠ 11, r12c6 ≠ 11, r12c8 ≠ 11
whip[1]: r9n14{c7 .} ==> r11c8 ≠ 14, r12c6 ≠ 14, r12c8 ≠ 14
naked-single ==> r12c6 = 3
whip[1]: r13n3{c12 .} ==> r14c10 ≠ 3, r14c11 ≠ 3, r14c12 ≠ 3
naked-single ==> r14c10 = 4
hidden-single-in-a-row ==> r3c5 = 4
whip[1]: c6n4{r16 .} ==> r15c8 ≠ 4, r16c8 ≠ 4
naked-single ==> r15c8 = 16
naked-single ==> r15c7 = 15
naked-single ==> r15c5 = 2
hidden-single-in-a-column ==> r1c6 = 16
hidden-single-in-a-block ==> r3c13 = 16
hidden-single-in-a-block ==> r1c13 = 11
whip[1]: r3n8{c2 .} ==> r1c4 ≠ 8, r4c4 ≠ 8
whip[1]: r4n8{c16 .} ==> r2c15 ≠ 8, r2c16 ≠ 8
naked-pairs-in-a-block: b1{r4c3 r4c4}{n5 n12} ==> r3c3 ≠ 12, r3c3 ≠ 5, r3c2 ≠ 5, r3c1 ≠ 5, r1c4 ≠ 12, r1c4 ≠ 5, r1c3 ≠ 12, r1c3 ≠ 5
naked-single ==> r3c2 = 8
naked-single ==> r14c2 = 7
naked-single ==> r3c3 = 11
naked-single ==> r3c1 = 9
naked-single ==> r3c10 = 14
naked-single ==> r3c7 = 12
naked-single ==> r2c7 = 3
naked-single ==> r3c12 = 5
naked-single ==> r16c1 = 5
hidden-single-in-a-row ==> r7c15 = 5
hidden-single-in-a-block ==> r14c5 = 3
hidden-single-in-a-block ==> r16c5 = 12
naked-single ==> r16c3 = 4
hidden-single-in-a-row ==> r13c6 = 4
naked-single ==> r15c6 = 6
hidden-single-in-a-block ==> r14c7 = 10
naked-single ==> r7c7 = 11
naked-single ==> r9c7 = 14
naked-single ==> r9c6 = 11
naked-single ==> r16c6 = 14
naked-single ==> r16c8 = 11
naked-single ==> r14c15 = 14
naked-single ==> r14c14 = 2
naked-single ==> r16c13 = 10
naked-single ==> r16c16 = 9
naked-single ==> r2c16 = 10
naked-single ==> r2c15 = 9
naked-single ==> r9c16 = 8
naked-single ==> r15c15 = 4
naked-single ==> r15c16 = 7
naked-single ==> r16c9 = 2
naked-single ==> r9c9 = 13
hidden-single-in-a-block ==> r12c13 = 13
hidden-single-in-a-block ==> r4c15 = 13
hidden-single-in-a-block ==> r4c13 = 8
hidden-single-in-a-block ==> r4c16 = 3
hidden-single-in-a-block ==> r4c14 = 4
hidden-single-in-a-block ==> r9c11 = 2
hidden-single-in-a-block ==> r12c11 = 10
hidden-single-in-a-row ==> r6c11 = 11
hidden-single-in-a-column ==> r8c1 = 11
hidden-single-in-a-column ==> r5c1 = 8
hidden-single-in-a-row ==> r5c4 = 10
naked-single ==> r1c4 = 15
naked-single ==> r1c3 = 10
naked-single ==> r7c1 = 6
naked-single ==> r13c1 = 10
hidden-single-in-a-block ==> r8c4 = 7
hidden-single-in-a-row ==> r7c5 = 10
hidden-single-in-a-row ==> r7c9 = 15
naked-single ==> r6c9 = 4
hidden-single-in-a-block ==> r1c11 = 4
hidden-single-in-a-column ==> r10c16 = 4
naked-single ==> r11c13 = 7
hidden-single-in-a-block ==> r6c14 = 7
naked-single ==> r6c7 = 16
naked-single ==> r5c7 = 7
hidden-single-in-a-block ==> r6c15 = 10
naked-single ==> r9c15 = 16
naked-single ==> r8c15 = 8
naked-single ==> r9c14 = 10
hidden-single-in-a-block ==> r8c14 = 16
hidden-single-in-a-block ==> r12c9 = 7
hidden-single-in-a-row ==> r12c8 = 9
naked-single ==> r11c8 = 15
hidden-single-in-a-block ==> r12c2 = 15
naked-single ==> r6c2 = 3
naked-single ==> r5c2 = 5
naked-single ==> r8c3 = 15
naked-single ==> r8c5 = 14
naked-single ==> r1c5 = 8
naked-single ==> r2c8 = 5
naked-single ==> r1c8 = 14
naked-single ==> r2c14 = 12
naked-single ==> r1c14 = 5
naked-single ==> r2c11 = 8
naked-single ==> r6c5 = 15
naked-single ==> r8c16 = 6
naked-single ==> r6c16 = 14
naked-single ==> r12c16 = 11
naked-single ==> r12c4 = 6
naked-single ==> r10c4 = 11
naked-single ==> r11c3 = 5
naked-single ==> r4c3 = 12
naked-single ==> r4c4 = 5
naked-single ==> r13c3 = 6
naked-single ==> r11c4 = 4
naked-single ==> r12c14 = 14
naked-single ==> r11c14 = 6
naked-single ==> r8c8 = 3
naked-single ==> r7c8 = 4
naked-single ==> r5c8 = 6
naked-single ==> r5c10 = 3
naked-single ==> r5c11 = 16
naked-single ==> r5c12 = 14
naked-single ==> r14c11 = 12
naked-single ==> r11c11 = 9
naked-single ==> r8c11 = 5
naked-single ==> r11c9 = 12
naked-single ==> r1c9 = 9
naked-single ==> r1c12 = 12
naked-single ==> r15c9 = 8
naked-single ==> r15c4 = 9
naked-single ==> r13c4 = 12
naked-single ==> r11c10 = 11
naked-single ==> r13c11 = 3
naked-single ==> r13c12 = 9
naked-single ==> r14c4 = 8
naked-single ==> r14c12 = 16
naked-single ==> r5c13 = 4
naked-single ==> r7c12 = 2
naked-single ==> r6c12 = 6
naked-single ==> r10c12 = 3
naked-single ==> r7c13 = 3
naked-single ==> r10c10 = 6
naked-single ==> r6c8 = 8
naked-single ==> r8c10 = 9
naked-single ==> r11c2 = 14
naked-single ==> r6c13 = 2
GRID 0 SOLVED. rating-type = W+SFin, MOST COMPLEX RULE TRIED = NP

03 13 10 15 08 16 06 14 09 01 04 12 11 05 07 02
04 01 07 16 13 15 03 05 06 02 08 11 14 12 09 10
09 08 11 02 04 07 12 10 03 14 13 05 16 01 06 15
14 06 12 05 11 02 09 01 16 10 15 07 08 04 13 03
08 05 02 10 09 13 07 06 01 03 16 14 04 11 15 12
01 03 09 13 15 05 16 08 04 12 11 06 02 07 10 14
06 12 16 14 10 01 11 04 15 08 07 02 03 09 05 13
11 04 15 07 14 12 02 03 10 09 05 13 01 16 08 06
07 09 03 01 06 11 14 12 13 15 02 04 05 10 16 08
16 10 13 11 07 08 01 02 05 06 14 03 09 15 12 04
02 14 05 04 16 10 13 15 12 11 09 08 07 06 03 01
12 15 08 06 05 03 04 09 07 16 10 01 13 14 02 11
10 02 06 12 01 04 05 07 14 13 03 09 15 08 11 16
15 07 01 08 03 09 10 13 11 04 12 16 06 02 14 05
13 11 14 09 02 06 15 16 08 05 01 10 12 03 04 07
05 16 04 03 12 14 08 11 02 07 06 15 10 13 01 09
Puzzle (0 0 0 0 0 0 6 0 0 0 0 0 0 0 7 2 4 0 0 16 0 15 0 0 6 2 0 11 14 0 0 0 0 0 0 0 0 0 0 10 3 0 13 0 0 1 0 0 0 6 0 0 11 2 9 1 16 0 15 0 0 0 0 0 0 0 2 0 9 0 0 0 1 0 0 0 0 11 15 0 0 0 9 13 0 5 0 0 0 12 0 0 0 0 0 0 0 0 16 14 0 0 0 0 0 8 7 0 0 9 0 13 0 4 0 0 0 12 2 0 10 0 0 13 1 0 0 0 0 9 3 0 6 0 0 12 0 15 0 4 5 0 0 0 0 10 0 0 7 8 1 0 5 0 14 0 9 15 12 0 2 0 0 0 16 10 13 0 0 0 0 8 0 0 3 0 12 0 8 0 5 0 4 0 0 16 0 1 0 0 2 0 0 0 0 0 1 0 5 7 14 0 0 0 0 8 0 16 15 0 1 0 0 9 0 13 11 0 0 0 6 0 0 5 13 11 14 0 0 0 0 0 0 0 1 10 12 3 0 0 0 0 0 3 0 0 8 0 0 7 6 15 0 13 0 0) :
init-time = 3.34s, solve-time = 1.37s, total-time = 4.71s
nb-facts=<Fact-34480>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = W+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
