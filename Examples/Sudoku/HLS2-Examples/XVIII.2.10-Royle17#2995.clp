
Puzzle Royle17#2995. Example from [HLS2, section XVIII.2.10]:

+-------+-------+-------+
! . . . ! . 2 . ! . 1 9 !
! 8 . . ! 6 . . ! . . . !
! 5 . . ! . . . ! . . . !
+-------+-------+-------+
! . 9 . ! . 4 . ! . . . !
! 6 . . ! . . . ! 3 . . !
! . . . ! . . 1 ! . . . !
+-------+-------+-------+
! . 1 . ! . . . ! . 4 . !
! 7 . . ! 3 . . ! . . . !
! . . . ! 5 . . ! 8 . . !
+-------+-------+-------+


....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..
SER = 7.2


"Finally, puzzle Royle17-2995 (Figure 15) proves that HXYT13 is not subsumed by the rules in L12+XY13+HXY13+XYT13, i.e. that HXYT13 is not superfluous. The L12+XY13+HXY13+XYT13 and L7 elaborations coincide.
Resolution path in L13 for the L12+XY13+HXY13+XYT13 (or L7) elaboration of Royle172995:

row r1 interaction-with-block b1 ==> r3c2 ≠ 7, r2c2 ≠ 7, r3c2 ≠ 6
column c3 interaction-with-block b7 ==> r9c2 ≠ 2, r8c2 ≠ 2
naked-pairs-in-a-row {n3 n7}r3{c5 c6} ==> r3c9 ≠ 7, r3c8 ≠ 7, r3c7 ≠ 7
row r3 interaction-with-block b2 ==> r2c6 ≠ 7, r2c5 ≠ 7
hidden-pairs-in-a-row {n3 n5}r7{c3 c9} ==> r7c9 ≠ 7, r7c9 ≠ 6, r7c9 ≠ 2, r7c3 ≠ 8
row r7 interaction-with-block b8 ==> r8c5 ≠ 8
hidden-pairs-in-a-row {n3 n5}r7{c3 c9} ==> r7c3 ≠ 6, r7c3 ≠ 2
hidden-pairs-in-a-block {n3 n6}{r4c6 r6c5} ==> r6c5 ≠ 8, r6c5 ≠ 7, r6c5 ≠ 5, r4c6 ≠ 7, r4c6 ≠ 5
block b5 interaction-with-row r5 ==> r5c8 ≠ 5, r5c2 ≠ 5
hidden-pairs-in-a-block {n3 n6}{r4c6 r6c5} ==> r4c6 ≠ 2
hxy-rn5-chain {c8 c6}r5n2 – {c6 c5}r5n5 – {c5 c6}r2n5 – {c6 c5}r2n9 – {c5 c8}r8n9 ==> r8c8 ≠ 2
xyt5-chain {n7 n6}r1c2 – {n6 n3}r9c2 – {n3 n5}r7c3 – {n5 n8}r8c2 – {n8 n7}r5c2 ==> r6c2 ≠ 7
Hidden xyt-chains (hxyt-chains)
xyt5-chain {n8 n7}r5c2 – {n7 n6}r1c2 – {n6 n3}r9c2 – {n3 n5}r7c3 – {n5 n8}r8c2 ==> r6c2 ≠ 8
xyt5-chain {n5 n3}r7c3 – {n3 n6}r9c2 – {n6 n7}r1c2 – {n7 n8}r5c2 – {n8 n5}r8c2 ==> r8c3 ≠ 5
xyt5-chain {n3 n6}r9c2 – {n6 n7}r1c2 – {n7 n8}r5c2 – {n8 n5}r8c2 – {n5 n3}r7c3 ==> r9c3 ≠ 3
xyzt8-chain {n7 n8}r6c4 – {n8 n5}r5c5 – {n5 n9}r2c5 – {n9 n6}r8c5 – {n6 n3}r6c5 – {n3 n5}r6c2 – {n5 n8}r8c2 – {n8 n7}r5c2 ==> r5c6 ≠ 7
hxyt-rn13-chain {c2 c9}r9n3 – {c9 c3}r7n3 – {c3 c6}r4n3 – {c6 c5}r3n3 – {c5 c6}r3n7 {c6 c8}r9n7 – {c8 c6}r9n9 – {c6 c5}r2n9 – {c5 c6}r2n5 – {c6 c5}r5n5 – {c5 c2}r5n7 {c2 c3}r1n7 – {c3 c2}r1n6 ==> r9c2 ≠ 6
naked singles ==> r9c2 = 3, r7c3 = 5, r7c9 = 3, r6c2 = 5
xyt5-chain {n7 n8}r5c2 – {n8 n6}r8c2 – {n6 n9}r8c5 – {n9 n5}r2c5 – {n5 n7}r5c5 ==> r5c8 ≠ 7
hxy-rn5-chain {c3 c5}r6n3 – {c5 c6}r3n3 – {c6 c5}r3n7 – {c5 c2}r5n7 – {c2 c3}r1n7 ==>
r6c3 ≠ 7 xyt6-chain {n7 n8}r6c4 – {n8 n3}r6c3 – {n3 n6}r6c5 – {n6 n9}r8c5 – {n9 n5}r2c5 {n5 n7}r5c5 ==> r4c4 ≠ 7
xyzt5-chain {n2 n8}r5c8 – {n8 n6}r3c8 – {n6 n7}r6c8 – {n7 n8}r6c4 – {n8 n2}r4c4 ==> r4c8 ≠ 2
xyt8-chain {n2 n8}r5c8 – {n8 n7}r5c2 – {n7 n5}r5c5 – {n5 n2}r5c6 – {n2 n8}r4c4 – {n8 n7}r6c4 – {n7 n6}r6c8 – {n6 n2}r3c8 ==> r9c8 ≠ 2
hxyt-rn7-chain {c8 c6}r9n9 – {c6 c5}r2n9 – {c5 c8}r8n9 – {c8 c9}r8n5 – {c9 c3}r8n2 {c3 c9}r9n2 – {c9 c8}r9n7 ==> r9c8 ≠ 6 hxyt-rn7-chain {c9 c7}r2n7 – {c7 c2}r2n4 – {c2 c9}r2n2 – {c9 c3}r8n2 – {c3 c6}r9n2 {c6 c8}r9n9 – {c8 c9}r9n7 ==> r4c9 ≠ 7
xyzt10-chain {n2 n8}r4c4 – {n8 n7}r6c4 – {n7 n5}r5c5 – {n5 n9}r2c5 – {n9 n6}r8c5 – {n6 n8}r8c2 – {n8 n2}r8c3 – {n2 n6}r9c3 – {n6 n7}r9c9 – {n7 n2}r2c9 ==> r4c9 ≠ 2
xyt11-chain {n2 n8}r4c4 – {n8 n7}r6c4 – {n7 n5}r5c5 – {n5 n9}r2c5 – {n9 n6}r8c5 – {n6 n8}r8c2 – {n8 n2}r8c3 – {n2 n5}r8c9 – {n5 n6}r4c9 – {n6 n8}r6c8 – {n8 n2}r5c8 ==> r5c6 ≠ 2
...(Rules in L1)...
The hxyt-rn13-chain rule applies to the following chain:

{c2 c9}r9n3 – {c9 c3}r7n3 – {c3 c6}r4n3 – {c6 c5}r3n3 – {c5 c6}r3n7 {c6 c8 c9#1}r9n7 – {c8 c6}r9n9 – {c6 c5}r2n9 – {c5 c6}r2n5 – {c6 c5}r5n5 {c5 c2 c8#6}r5n7 – {c2 c3}r1n7 – {c3 c2}r1n6, leading to eliminate (column) candidate c2 from rn-cell r9n6.z"




SudoRules solution with only typed-bivalue-chains and typed-t-whips. We find the same maximal t-whip-rn[13]:
(solve "....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyZ+TytW+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..
17 givens, 306 candidates
entering BRT
hidden-single-in-a-column ==> r4c1 = 1
hidden-single-in-a-block ==> r5c9 = 1
hidden-single-in-a-block ==> r8c7 = 1
hidden-single-in-a-block ==> r9c5 = 1
hidden-single-in-a-block ==> r3c4 = 1
hidden-single-in-a-block ==> r2c3 = 1
hidden-single-in-a-block ==> r3c3 = 9
hidden-single-in-a-column ==> r1c4 = 4
naked-single ==> r1c1 = 3
hidden-single-in-a-row ==> r1c6 = 8
hidden-single-in-a-row ==> r1c7 = 5
Starting_init_links_with_<Fact-6683>
230 candidates, 1568 csp-links and 1568 links. Density = 5.95%
starting non trivial part of solution
Entering_level_W1_with_<Fact-15624>
whip[1]: r5n4{c3 .} ==> r6c3 ≠ 4, r6c1 ≠ 4, r6c2 ≠ 4
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 9
naked-single ==> r9c1 = 4
hidden-single-in-a-row ==> r8c6 = 4
hidden-single-in-a-column ==> r5c3 = 4
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r5c4 = 9
hidden-single-in-a-block ==> r6c9 = 4
whip[1]: c3n2{r9 .} ==> r8c2 ≠ 2, r9c2 ≠ 2
whip[1]: r1n7{c3 .} ==> r3c2 ≠ 7, r2c2 ≠ 7
whip[1]: r1n6{c3 .} ==> r3c2 ≠ 6
Entering_relation_bivalue_with_<Fact-15641>
Entering_level_S2_with_<Fact-15728>
naked-pairs-in-a-row: r3{c5 c6}{n3 n7} ==> r3c9 ≠ 7, r3c9 ≠ 3, r3c8 ≠ 7, r3c8 ≠ 3, r3c7 ≠ 7
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
whip[1]: r3n3{c6 .} ==> r2c5 ≠ 3, r2c6 ≠ 3
hidden-pairs-in-a-row: r7{n3 n5}{c3 c9} ==> r7c9 ≠ 7, r7c9 ≠ 6, r7c9 ≠ 2, r7c3 ≠ 8, r7c3 ≠ 6, r7c3 ≠ 2
whip[1]: r7n8{c5 .} ==> r8c5 ≠ 8
hidden-pairs-in-a-block: b5{r4c6 r6c5}{n3 n6} ==> r6c5 ≠ 8, r6c5 ≠ 7, r6c5 ≠ 5, r4c6 ≠ 7, r4c6 ≠ 5, r4c6 ≠ 2
whip[1]: b5n5{r5c6 .} ==> r5c2 ≠ 5, r5c8 ≠ 5
Entering_level_TyBC2_with_<Fact-15856>
Entering_level_TyZ2_with_<Fact-16017>
Entering_level_TytW2_with_<Fact-16019>
Entering_level_S3_with_<Fact-16647>
Entering_level_TyBC3_with_<Fact-16669>
Entering_level_TyZ3_with_<Fact-16782>
Entering_level_TytW3_with_<Fact-17340>
Entering_level_S4_with_<Fact-17964>
Entering_level_TyBC4_with_<Fact-18128>
Entering_level_TyZ4_with_<Fact-18207>
Entering_level_TytW4_with_<Fact-18646>
Entering_level_TyBC5_with_<Fact-19235>
biv-chain-rn[5]: r5n2{c8 c6} - r5n5{c6 c5} - r2n5{c5 c6} - r2n9{c6 c5} - r8n9{c5 c8} ==> r8c8 ≠ 2
Entering_level_TyZ5_with_<Fact-19341>
Entering_level_TytW5_with_<Fact-19640>
t-whip-rc[5]: r7c3{n5 n3} - r9c2{n3 n6} - r1c2{n6 n7} - r5c2{n7 n8} - r8c2{n8 .} ==> r8c3 ≠ 5
t-whip-rc[5]: r5c2{n8 n7} - r1c2{n7 n6} - r9c2{n6 n3} - r7c3{n3 n5} - r8c2{n5 .} ==> r6c2 ≠ 8
t-whip-rc[5]: r9c2{n3 n6} - r1c2{n6 n7} - r5c2{n7 n8} - r8c2{n8 n5} - r7c3{n5 .} ==> r9c3 ≠ 3
t-whip-rc[5]: r1c2{n7 n6} - r9c2{n6 n3} - r7c3{n3 n5} - r8c2{n5 n8} - r5c2{n8 .} ==> r6c2 ≠ 7
Entering_level_TyBC6_with_<Fact-21067>
Entering_level_TyZ6_with_<Fact-21082>
Entering_level_TytW6_with_<Fact-21386>
Entering_level_TyBC7_with_<Fact-22034>
Entering_level_TyZ7_with_<Fact-22037>
Entering_level_TytW7_with_<Fact-22229>
t-whip-cn[7]: c8n9{r9 r8} - c5n9{r8 r2} - c5n5{r2 r5} - c5n8{r5 r7} - c5n7{r7 r3} - c5n3{r3 r6} - c2n3{r6 .} ==> r9c8 ≠ 3
hidden-single-in-a-column ==> r2c8 = 3
Entering_level_TyBC8_with_<Fact-23616>
Entering_level_TyZ8_with_<Fact-23617>
Entering_level_TytW8_with_<Fact-23720>
Entering_level_TyBC9_with_<Fact-24299>
Entering_level_TyZ9_with_<Fact-24300>
Entering_level_TytW9_with_<Fact-24366>
Entering_level_TyBC10_with_<Fact-25015>
Entering_level_TyZ10_with_<Fact-25016>
Entering_level_TytW10_with_<Fact-25051>
Entering_level_TyBC11_with_<Fact-25842>
Entering_level_TyZ11_with_<Fact-25843>
Entering_level_TytW11_with_<Fact-25860>
Entering_level_TyBC12_with_<Fact-26840>
Entering_level_TyZ12_with_<Fact-26841>
Entering_level_TytW12_with_<Fact-26847>
Entering_level_TyBC13_with_<Fact-28159>
Entering_level_TyZ13_with_<Fact-28160>
Entering_level_TytW13_with_<Fact-28164>
t-whip-rn[13]: r9n3{c2 c9} - r7n3{c9 c3} - r4n3{c3 c6} - r3n3{c6 c5} - r3n7{c5 c6} - r9n7{c6 c8} - r9n9{c8 c6} - r2n9{c6 c5} - r2n5{c5 c6} - r5n5{c6 c5} - r5n7{c5 c2} - r1n7{c2 c3} - r1n6{c3 .} ==> r9c2 ≠ 6
naked-single ==> r9c2 = 3
naked-single ==> r6c2 = 5
naked-single ==> r7c3 = 5
naked-single ==> r7c9 = 3
t-whip-rc[5]: r5c2{n7 n8} - r8c2{n8 n6} - r8c5{n6 n9} - r2c5{n9 n5} - r5c5{n5 .} ==> r5c6 ≠ 7, r5c8 ≠ 7
biv-chain-rn[4]: r5n7{c2 c5} - r3n7{c5 c6} - r3n3{c6 c5} - r6n3{c5 c3} ==> r6c3 ≠ 7
t-whip-rc[6]: r6c4{n7 n8} - r6c3{n8 n3} - r6c5{n3 n6} - r8c5{n6 n9} - r2c5{n9 n5} - r5c5{n5 .} ==> r4c4 ≠ 7
z-chain-cn[5]: c8n5{r4 r8} - c8n9{r8 r9} - c8n7{r9 r6} - c4n7{r6 r7} - c4n2{r7 .} ==> r4c8 ≠ 2
t-whip-rn[7]: r9n9{c8 c6} - r8n9{c5 c8} - r8n5{c8 c9} - r8n2{c9 c3} - r8n8{c3 c2} - r8n6{c2 c5} - r6n6{c5 .} ==> r9c8 ≠ 6
t-whip-rc[8]: r5c8{n2 n8} - r5c2{n8 n7} - r5c5{n7 n5} - r5c6{n5 n2} - r4c4{n2 n8} - r6c4{n8 n7} - r6c8{n7 n6} - r3c8{n6 .} ==> r9c8 ≠ 2
z-chain-rn[3]: r8n2{c9 c3} - r9n2{c3 c6} - r5n2{c6 .} ==> r4c9 ≠ 2
t-whip-rn[7]: r2n7{c9 c7} - r2n4{c7 c2} - r2n2{c2 c9} - r8n2{c9 c3} - r9n2{c3 c6} - r9n9{c6 c8} - r9n7{c8 .} ==> r4c9 ≠ 7
t-whip-bn[9]: b9n2{r9c9 r7c7} - b8n2{r7c6 r9c6} - b8n9{r9c6 r8c5} - b9n9{r8c8 r9c8} - b9n7{r9c8 r9c9} - b3n7{r2c9 r2c7} - b3n4{r2c7 r3c7} - b1n4{r3c2 r2c2} - b1n2{r2c2 .} ==> r3c9 ≠ 2
t-whip-rn[9]: r9n9{c8 c6} - r2n9{c6 c5} - r2n5{c5 c6} - r5n5{c6 c5} - r5n7{c5 c2} - r5n8{c2 c8} - r5n2{c8 c6} - r4n2{c4 c7} - r4n7{c7 .} ==> r9c8 ≠ 7
naked-single ==> r9c8 = 9
hidden-single-in-a-row ==> r8c5 = 9
naked-single ==> r2c5 = 5
naked-single ==> r2c6 = 9
hidden-single-in-a-column ==> r5c6 = 5
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-block ==> r5c8 = 2
whip[1]: c8n7{r6 .} ==> r4c7 ≠ 7
naked-single ==> r4c7 = 6
naked-single ==> r4c6 = 3
naked-single ==> r3c6 = 7
naked-single ==> r3c5 = 3
naked-single ==> r6c5 = 6
hidden-single-in-a-row ==> r7c6 = 6
naked-single ==> r9c6 = 2
naked-single ==> r9c3 = 6
naked-single ==> r1c3 = 7
naked-single ==> r1c2 = 6
naked-single ==> r4c3 = 8
naked-single ==> r4c9 = 5
naked-single ==> r4c8 = 7
naked-single ==> r6c8 = 8
naked-single ==> r3c8 = 6
naked-single ==> r3c9 = 8
naked-single ==> r8c8 = 5
naked-single ==> r6c4 = 7
naked-single ==> r5c5 = 8
naked-single ==> r7c5 = 7
naked-single ==> r7c7 = 2
naked-single ==> r3c7 = 4
naked-single ==> r2c7 = 7
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r8c9 = 6
naked-single ==> r7c4 = 8
naked-single ==> r5c2 = 7
naked-single ==> r6c3 = 3
naked-single ==> r8c3 = 2
naked-single ==> r8c2 = 8
naked-single ==> r9c9 = 7
GRID 0 SOLVED. rating-type = TyZ+TytW+SFin, MOST COMPLEX RULE TRIED = TytW[13]
367428519
841659732
529137468
198243675
674985321
253761984
915876243
782394156
436512897
Puzzle ....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8.. :
init-time = 0.18s, solve-time = 1.59s, total-time = 1.77s
nb-facts=<Fact-38997>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyZ+TytW+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




With all the typed-chains, we find a smaller typed rating (TyW9):
(solve "....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..
17 givens, 306 candidates
entering BRT
hidden-single-in-a-column ==> r4c1 = 1
hidden-single-in-a-block ==> r5c9 = 1
hidden-single-in-a-block ==> r8c7 = 1
hidden-single-in-a-block ==> r9c5 = 1
hidden-single-in-a-block ==> r3c4 = 1
hidden-single-in-a-block ==> r2c3 = 1
hidden-single-in-a-block ==> r3c3 = 9
hidden-single-in-a-column ==> r1c4 = 4
naked-single ==> r1c1 = 3
hidden-single-in-a-row ==> r1c6 = 8
hidden-single-in-a-row ==> r1c7 = 5
Starting_init_links_with_<Fact-6683>
230 candidates, 1568 csp-links and 1568 links. Density = 5.95%
starting non trivial part of solution
Entering_level_W1_with_<Fact-15624>
whip[1]: r5n4{c3 .} ==> r6c3 ≠ 4, r6c1 ≠ 4, r6c2 ≠ 4
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 9
naked-single ==> r9c1 = 4
hidden-single-in-a-row ==> r8c6 = 4
hidden-single-in-a-column ==> r5c3 = 4
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r5c4 = 9
hidden-single-in-a-block ==> r6c9 = 4
whip[1]: c3n2{r9 .} ==> r8c2 ≠ 2, r9c2 ≠ 2
whip[1]: r1n7{c3 .} ==> r3c2 ≠ 7, r2c2 ≠ 7
whip[1]: r1n6{c3 .} ==> r3c2 ≠ 6
Entering_relation_bivalue_with_<Fact-15641>
Entering_level_S2_with_<Fact-15728>
naked-pairs-in-a-row: r3{c5 c6}{n3 n7} ==> r3c9 ≠ 7, r3c9 ≠ 3, r3c8 ≠ 7, r3c8 ≠ 3, r3c7 ≠ 7
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
whip[1]: r3n3{c6 .} ==> r2c5 ≠ 3, r2c6 ≠ 3
hidden-pairs-in-a-row: r7{n3 n5}{c3 c9} ==> r7c9 ≠ 7, r7c9 ≠ 6, r7c9 ≠ 2, r7c3 ≠ 8, r7c3 ≠ 6, r7c3 ≠ 2
whip[1]: r7n8{c5 .} ==> r8c5 ≠ 8
hidden-pairs-in-a-block: b5{r4c6 r6c5}{n3 n6} ==> r6c5 ≠ 8, r6c5 ≠ 7, r6c5 ≠ 5, r4c6 ≠ 7, r4c6 ≠ 5, r4c6 ≠ 2
whip[1]: b5n5{r5c6 .} ==> r5c2 ≠ 5, r5c8 ≠ 5
Entering_level_TyBC2_with_<Fact-15856>
Entering_level_TyZ2_with_<Fact-16017>
Entering_level_TytW2_with_<Fact-16019>
Entering_level_TyW2_with_<Fact-16020>
Entering_level_S3_with_<Fact-16648>
Entering_level_TyBC3_with_<Fact-16670>
Entering_level_TyZ3_with_<Fact-16783>
Entering_level_TytW3_with_<Fact-17341>
Entering_level_TyW3_with_<Fact-17965>
Entering_level_S4_with_<Fact-17966>
Entering_level_TyBC4_with_<Fact-18130>
Entering_level_TyZ4_with_<Fact-18209>
Entering_level_TytW4_with_<Fact-18648>
Entering_level_TyW4_with_<Fact-19237>
Entering_level_TyBC5_with_<Fact-19238>
biv-chain-rn[5]: r5n2{c8 c6} - r5n5{c6 c5} - r2n5{c5 c6} - r2n9{c6 c5} - r8n9{c5 c8} ==> r8c8 ≠ 2
Entering_level_TyZ5_with_<Fact-19344>
Entering_level_TytW5_with_<Fact-19643>
t-whip-rc[5]: r7c3{n5 n3} - r9c2{n3 n6} - r1c2{n6 n7} - r5c2{n7 n8} - r8c2{n8 .} ==> r8c3 ≠ 5
t-whip-rc[5]: r5c2{n8 n7} - r1c2{n7 n6} - r9c2{n6 n3} - r7c3{n3 n5} - r8c2{n5 .} ==> r6c2 ≠ 8
t-whip-rc[5]: r9c2{n3 n6} - r1c2{n6 n7} - r5c2{n7 n8} - r8c2{n8 n5} - r7c3{n5 .} ==> r9c3 ≠ 3
t-whip-rc[5]: r1c2{n7 n6} - r9c2{n6 n3} - r7c3{n3 n5} - r8c2{n5 n8} - r5c2{n8 .} ==> r6c2 ≠ 7
Entering_level_TyW5_with_<Fact-21070>
Entering_level_TyBC6_with_<Fact-21071>
Entering_level_TyZ6_with_<Fact-21086>
Entering_level_TytW6_with_<Fact-21390>
Entering_level_TyW6_with_<Fact-22038>
Entering_level_TyBC7_with_<Fact-22039>
Entering_level_TyZ7_with_<Fact-22042>
Entering_level_TytW7_with_<Fact-22234>
t-whip-cn[7]: c8n9{r9 r8} - c5n9{r8 r2} - c5n5{r2 r5} - c5n8{r5 r7} - c5n7{r7 r3} - c5n3{r3 r6} - c2n3{r6 .} ==> r9c8 ≠ 3
hidden-single-in-a-column ==> r2c8 = 3
Entering_level_TyW7_with_<Fact-23621>
whip-rc[7]: r5c2{n7 n8} - r5c5{n8 n5} - r2c5{n5 n9} - r8c5{n9 n6} - r8c2{n6 n5} - r6c2{n5 n3} - r6c5{n3 .} ==> r5c6 ≠ 7
whip-rc[7]: r5c2{n7 n8} - r5c5{n8 n5} - r2c5{n5 n9} - r8c5{n9 n6} - r8c2{n6 n5} - r6c2{n5 n3} - r6c5{n3 .} ==> r5c8 ≠ 7
whip-rn[7]: r9n9{c6 c8} - r9n7{c8 c9} - r2n7{c9 c7} - r2n4{c7 c2} - r2n2{c2 c9} - r9n2{c9 c3} - r8n2{c3 .} ==> r9c6 ≠ 6
whip-rn[7]: r9n9{c8 c6} - r9n7{c6 c9} - r2n7{c9 c7} - r2n4{c7 c2} - r2n2{c2 c9} - r9n2{c9 c3} - r8n2{c3 .} ==> r9c8 ≠ 6
Entering_level_TyBC8_with_<Fact-25202>
Entering_level_TyZ8_with_<Fact-25211>
Entering_level_TytW8_with_<Fact-25403>
Entering_level_TyW8_with_<Fact-26204>
Entering_level_TyBC9_with_<Fact-26205>
Entering_level_TyZ9_with_<Fact-26208>
Entering_level_TytW9_with_<Fact-26335>
Entering_level_TyW9_with_<Fact-27262>
whip-rc[9]: r9c3{n6 n2} - r8c3{n2 n8} - r8c2{n8 n5} - r6c2{n5 n3} - r6c5{n3 n6} - r8c5{n6 n9} - r9c6{n9 n7} - r3c6{n7 n3} - r4c6{n3 .} ==> r9c2 ≠ 6
naked-single ==> r9c2 = 3
naked-single ==> r6c2 = 5
naked-single ==> r7c3 = 5
naked-single ==> r7c9 = 3
biv-chain-rn[4]: r6n3{c3 c5} - r3n3{c5 c6} - r3n7{c6 c5} - r5n7{c5 c2} ==> r6c3 ≠ 7
t-whip-rc[6]: r6c4{n7 n8} - r6c3{n8 n3} - r6c5{n3 n6} - r8c5{n6 n9} - r2c5{n9 n5} - r5c5{n5 .} ==> r4c4 ≠ 7
z-chain-cn[5]: c8n5{r4 r8} - c8n9{r8 r9} - c8n7{r9 r6} - c4n7{r6 r7} - c4n2{r7 .} ==> r4c8 ≠ 2
t-whip-rn[6]: r6n7{c4 c8} - r4n7{c9 c3} - r1n7{c3 c2} - r1n6{c2 c3} - r9n6{c3 c9} - r9n7{c9 .} ==> r7c4 ≠ 7
hidden-single-in-a-column ==> r6c4 = 7
hidden-single-in-a-row ==> r5c2 = 7
naked-single ==> r1c2 = 6
naked-single ==> r1c3 = 7
naked-single ==> r8c2 = 8
naked-triplets-in-a-column: c8{r3 r5 r6}{n6 n2 n8} ==> r9c8 ≠ 2, r8c8 ≠ 6, r4c8 ≠ 8, r4c8 ≠ 6
z-chain-cn[3]: c8n6{r6 r3} - c7n6{r3 r7} - c6n6{r7 .} ==> r4c9 ≠ 6
z-chain-rn[3]: r8n2{c9 c3} - r9n2{c3 c6} - r5n2{c6 .} ==> r4c9 ≠ 2
z-chain-cn[7]: c5n9{r8 r2} - c5n5{r2 r5} - c5n8{r5 r7} - c4n8{r7 r4} - c9n8{r4 r3} - c9n6{r3 r9} - c3n6{r9 .} ==> r8c5 ≠ 6
naked-single ==> r8c5 = 9
naked-single ==> r2c5 = 5
naked-single ==> r2c6 = 9
naked-single ==> r5c5 = 8
naked-single ==> r4c4 = 2
naked-single ==> r5c6 = 5
naked-single ==> r7c4 = 8
naked-single ==> r5c8 = 2
naked-single ==> r8c8 = 5
naked-single ==> r4c8 = 7
naked-single ==> r4c7 = 6
naked-single ==> r4c6 = 3
naked-single ==> r3c6 = 7
naked-single ==> r3c5 = 3
naked-single ==> r9c6 = 2
naked-single ==> r7c6 = 6
naked-single ==> r7c5 = 7
naked-single ==> r7c7 = 2
naked-single ==> r3c7 = 4
naked-single ==> r2c7 = 7
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r8c9 = 6
naked-single ==> r3c9 = 8
naked-single ==> r3c8 = 6
naked-single ==> r4c9 = 5
naked-single ==> r8c3 = 2
naked-single ==> r9c9 = 7
naked-single ==> r9c3 = 6
naked-single ==> r4c3 = 8
naked-single ==> r6c3 = 3
naked-single ==> r6c5 = 6
naked-single ==> r6c8 = 8
naked-single ==> r9c8 = 9
GRID 0 SOLVED. rating-type = TyW+SFin, MOST COMPLEX RULE TRIED = TyW[9]
367428519
841659732
529137468
198243675
674985321
253761984
915876243
782394156
436512897
Puzzle ....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8.. :
init-time = 0.19s, solve-time = 1.65s, total-time = 1.84s
nb-facts=<Fact-40573>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+SFin
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




With the same rules plus their untyped versions, we find a solution in W6:
(solve "....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8..
17 givens, 306 candidates
entering BRT
hidden-single-in-a-column ==> r4c1 = 1
hidden-single-in-a-block ==> r5c9 = 1
hidden-single-in-a-block ==> r8c7 = 1
hidden-single-in-a-block ==> r9c5 = 1
hidden-single-in-a-block ==> r3c4 = 1
hidden-single-in-a-block ==> r2c3 = 1
hidden-single-in-a-block ==> r3c3 = 9
hidden-single-in-a-column ==> r1c4 = 4
naked-single ==> r1c1 = 3
hidden-single-in-a-row ==> r1c6 = 8
hidden-single-in-a-row ==> r1c7 = 5
Starting_init_links_with_<Fact-6684>

Starting non trivial part of solution with the following RESOLUTION STATE:
   3         67        67        4         2         8         5         1         9
   8         247       1         6         3579      3579      247       237       2347
   5         2467      9         1         37        37        2467      23678     234678
   1         9         23578     278       4         23567     267       25678     25678
   6         24578     24578     2789      5789      2579      3         25789     1
   24        234578    234578    2789      356789    1         24679     256789    245678
   29        1         23568     2789      6789      2679      2679      4         23567
   7         24568     24568     3         689       2469      1         2569      256
   249       2346      2346      5         1         24679     8         23679     2367

230 candidates, 1568 csp-links and 1568 links. Density = 5.95%

Entering_level_W1_with_<Fact-15625>
whip[1]: r5n4{c3 .} ==> r6c3 ≠ 4, r6c1 ≠ 4, r6c2 ≠ 4
naked-single ==> r6c1 = 2
naked-single ==> r7c1 = 9
naked-single ==> r9c1 = 4
hidden-single-in-a-row ==> r8c6 = 4
hidden-single-in-a-column ==> r5c3 = 4
hidden-single-in-a-column ==> r6c7 = 9
hidden-single-in-a-column ==> r5c4 = 9
hidden-single-in-a-block ==> r6c9 = 4
whip[1]: c3n2{r9 .} ==> r8c2 ≠ 2, r9c2 ≠ 2
whip[1]: r1n7{c3 .} ==> r3c2 ≠ 7, r2c2 ≠ 7
whip[1]: r1n6{c3 .} ==> r3c2 ≠ 6
Entering_relation_bivalue_with_<Fact-15642>
Entering_level_S2_with_<Fact-15729>
naked-pairs-in-a-row: r3{c5 c6}{n3 n7} ==> r3c9 ≠ 7, r3c9 ≠ 3, r3c8 ≠ 7, r3c8 ≠ 3, r3c7 ≠ 7
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
whip[1]: r3n3{c6 .} ==> r2c5 ≠ 3, r2c6 ≠ 3
hidden-pairs-in-a-row: r7{n3 n5}{c3 c9} ==> r7c9 ≠ 7, r7c9 ≠ 6, r7c9 ≠ 2, r7c3 ≠ 8, r7c3 ≠ 6, r7c3 ≠ 2
whip[1]: r7n8{c5 .} ==> r8c5 ≠ 8
hidden-pairs-in-a-block: b5{n3 n6}{r4c6 r6c5} ==> r6c5 ≠ 8, r6c5 ≠ 7, r6c5 ≠ 5, r4c6 ≠ 7, r4c6 ≠ 5, r4c6 ≠ 2
whip[1]: b5n5{r5c6 .} ==> r5c2 ≠ 5, r5c8 ≠ 5
Entering_level_TyBC2_with_<Fact-15857>
Entering_level_BC2_with_<Fact-16018>
Entering_level_TyZ2_with_<Fact-16457>
Entering_level_Z2_with_<Fact-17086>
Entering_level_TytW2_with_<Fact-17486>
Entering_level_tW2_with_<Fact-17487>
Entering_level_TyW2_with_<Fact-17488>
Entering_level_W2_with_<Fact-17489>
Entering_level_S3_with_<Fact-17490>
Entering_level_TyBC3_with_<Fact-17512>
Entering_level_BC3_with_<Fact-17625>
biv-chain[3]: r6n6{c8 c5} - r8c5{n6 n9} - b9n9{r8c8 r9c8} ==> r9c8 ≠ 6
biv-chain[3]: c2n3{r6 r9} - r7c3{n3 n5} - c2n5{r8 r6} ==> r6c2 ≠ 7, r6c2 ≠ 8
biv-chain[3]: c2n3{r9 r6} - c2n5{r6 r8} - r7c3{n5 n3} ==> r9c3 ≠ 3
biv-chain[3]: r7c3{n5 n3} - c2n3{r9 r6} - c2n5{r6 r8} ==> r8c3 ≠ 5
Entering_level_TyZ3_with_<Fact-18927>
Entering_level_Z3_with_<Fact-19515>
Entering_level_TytW3_with_<Fact-20437>
Entering_level_TyW3_with_<Fact-21100>
Entering_level_tW3_with_<Fact-21102>
Entering_level_W3_with_<Fact-22080>
Entering_level_S4_with_<Fact-22081>
Entering_level_TyBC4_with_<Fact-22203>
Entering_level_BC4_with_<Fact-22302>
biv-chain[4]: r5n2{c8 c6} - c6n5{r5 r2} - b2n9{r2c6 r2c5} - r8n9{c5 c8} ==> r8c8 ≠ 2
biv-chain[4]: r9n9{c8 c6} - r8c5{n9 n6} - r6c5{n6 n3} - c2n3{r6 r9} ==> r9c8 ≠ 3
hidden-single-in-a-column ==> r2c8 = 3
Entering_level_TyZ4_with_<Fact-25264>
Entering_level_Z4_with_<Fact-25802>
Entering_level_TytW4_with_<Fact-27595>
Entering_level_TyW4_with_<Fact-28259>
Entering_level_tW4_with_<Fact-28261>
Entering_level_W4_with_<Fact-30282>
Entering_level_TyBC5_with_<Fact-30283>
Entering_level_BC5_with_<Fact-30340>
Entering_level_TyZ5_with_<Fact-33927>
Entering_level_Z5_with_<Fact-34339>
z-chain[5]: r9c3{n6 n2} - r8n2{c3 c9} - r2c9{n2 n7} - r9n7{c9 c8} - r9n9{c8 .} ==> r9c6 ≠ 6
Entering_level_TytW5_with_<Fact-39855>
Entering_level_TyW5_with_<Fact-40482>
Entering_level_tW5_with_<Fact-40484>
t-whip[5]: r2c9{n7 n2} - r8n2{c9 c3} - r9c3{n2 n6} - r9c2{n6 n3} - r9c9{n3 .} ==> r4c9 ≠ 7
Entering_level_W5_with_<Fact-45280>
whip[5]: c4n2{r4 r7} - b9n2{r7c7 r9c8} - r9n9{c8 c6} - r9n7{c6 c9} - r2c9{n7 .} ==> r4c9 ≠ 2
whip[5]: r8n2{c9 c3} - r9c3{n2 n6} - r9c2{n6 n3} - r9c9{n3 n7} - r2c9{n7 .} ==> r3c9 ≠ 2
Entering_level_TyBC6_with_<Fact-46472>
Entering_level_BC6_with_<Fact-46485>
Entering_level_TyZ6_with_<Fact-54638>
Entering_level_Z6_with_<Fact-54965>
Entering_level_TytW6_with_<Fact-61345>
Entering_level_TyW6_with_<Fact-61993>
Entering_level_tW6_with_<Fact-61995>
t-whip[6]: r9n7{c9 c6} - r3c6{n7 n3} - r4c6{n3 n6} - r7c6{n6 n2} - c4n2{r7 r4} - r4c7{n2 .} ==> r7c7 ≠ 7
whip[1]: b9n7{r9c9 .} ==> r9c6 ≠ 7
biv-chain-rc[3]: r9c3{n6 n2} - r9c6{n2 n9} - r8c5{n9 n6} ==> r8c2 ≠ 6, r8c3 ≠ 6
whip[1]: b7n6{r9c3 .} ==> r9c9 ≠ 6
z-chain[3]: r2c9{n2 n7} - c7n7{r2 r4} - b6n2{r4c7 .} ==> r3c8 ≠ 2
naked-pairs-in-a-block: b3{r3c8 r3c9}{n6 n8} ==> r3c7 ≠ 6
x-wing-in-columns: n6{c6 c7}{r4 r7} ==> r7c5 ≠ 6, r4c9 ≠ 6, r4c8 ≠ 6
biv-chain[4]: c4n2{r4 r7} - r7c7{n2 n6} - c9n6{r8 r3} - c9n8{r3 r4} ==> r4c4 ≠ 8
biv-chain[4]: r9n7{c8 c9} - r9n3{c9 c2} - c2n6{r9 r1} - c2n7{r1 r5} ==> r5c8 ≠ 7
biv-chain[3]: r5c8{n2 n8} - r3c8{n8 n6} - b6n6{r6c8 r4c7} ==> r4c7 ≠ 2
whip[1]: b6n2{r5c8 .} ==> r9c8 ≠ 2
biv-chain-rc[3]: r7c7{n2 n6} - r4c7{n6 n7} - r4c4{n7 n2} ==> r7c4 ≠ 2
hidden-single-in-a-column ==> r4c4 = 2
hidden-single-in-a-block ==> r5c8 = 2
naked-pairs-in-a-block: b8{r7c4 r7c5}{n7 n8} ==> r7c6 ≠ 7
biv-chain-cn[5]: c2n3{r6 r9} - c2n6{r9 r1} - c2n7{r1 r5} - c6n7{r5 r3} - c6n3{r3 r4} ==> r4c3 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c5 = 6
naked-single ==> r4c6 = 3
naked-single ==> r3c6 = 7
naked-single ==> r3c5 = 3
naked-single ==> r5c6 = 5
naked-single ==> r2c6 = 9
naked-single ==> r2c5 = 5
naked-single ==> r9c6 = 2
naked-single ==> r7c6 = 6
naked-single ==> r7c7 = 2
naked-single ==> r3c7 = 4
naked-single ==> r2c7 = 7
naked-single ==> r2c9 = 2
naked-single ==> r2c2 = 4
naked-single ==> r4c7 = 6
naked-single ==> r3c2 = 2
naked-single ==> r9c3 = 6
naked-single ==> r1c3 = 7
naked-single ==> r1c2 = 6
naked-single ==> r9c2 = 3
naked-single ==> r6c2 = 5
naked-single ==> r4c3 = 8
naked-single ==> r4c9 = 5
naked-single ==> r4c8 = 7
naked-single ==> r6c8 = 8
naked-single ==> r3c8 = 6
naked-single ==> r3c9 = 8
naked-single ==> r6c4 = 7
naked-single ==> r5c5 = 8
naked-single ==> r7c5 = 7
naked-single ==> r7c4 = 8
naked-single ==> r9c8 = 9
naked-single ==> r8c8 = 5
naked-single ==> r7c9 = 3
naked-single ==> r8c9 = 6
naked-single ==> r5c2 = 7
naked-single ==> r6c3 = 3
naked-single ==> r8c3 = 2
naked-single ==> r8c2 = 8
naked-single ==> r7c3 = 5
naked-single ==> r9c9 = 7
naked-single ==> r8c5 = 9
PUZZLE 0 IS SOLVED. rating-type = TyW+W+SFin, MOST COMPLEX RULE TRIED = tW[6]
367428519
841659732
529137468
198243675
674985321
253761984
915876243
782394156
436512897
Puzzle ....2..198..6.....5.........9..4....6.....3.......1....1.....4.7..3........5..8.. :
init-time = 0.2s, solve-time = 9.63s, total-time = 9.83s
nb-facts = <Fact-116739>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
