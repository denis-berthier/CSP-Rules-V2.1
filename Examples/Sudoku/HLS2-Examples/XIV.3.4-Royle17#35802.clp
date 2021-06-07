
Puzzle Royle17#35802. Example from [HLS2, section XIV.3.4]

+-------+-------+-------+
! 8 . . ! 3 . . ! . . . !
! . . . ! . . . ! . 5 . !
! 1 . . ! . . . ! . . . !
+-------+-------+-------+
! . 2 . ! . 6 5 ! . . . !
! . 5 . ! . . 4 ! 7 . . !
! . . . ! . . . ! 1 . . !
+-------+-------+-------+
! . 4 . ! . . . ! . 2 . !
! . . . ! 8 1 . ! . . . !
! 3 . . ! 7 . . ! . . . !
+-------+-------+-------+
8..3............5.1.........2..65....5...47........1...4.....2....81....3..7.....
SER = 7.1


The [HLS2] solution, for the L3 elaboration:
+-------+-------+-------+
! 8 . . ! 3 . . ! . 1 . !
! 2 . . ! . . 1 ! . 5 8 !
! 1 . . ! . . 8 ! . . . !
+-------+-------+-------+
! 7 2 3 ! 1 6 5 ! . 8 . !
! 6 5 1 ! 9 8 4 ! 7 3 2 !
! 4 8 9 ! 2 . . ! 1 6 5 !
+-------+-------+-------+
! 9 4 7 ! . . . ! 8 2 1 !
! 5 6 2 ! 8 1 9 ! . . . !
! 3 1 8 ! 7 4 2 ! 5 9 6 !
+-------+-------+-------+


"Resolution path in L6+XY7 for the L6 (or L3 or L2+XYZ-Wing) elaboration of Royle17-35802:
naked-pairs-in-a-row {n4 n6}r2{c3 c4} ==> r2c7 ≠ 6, r2c7 ≠ 4
hidden-pairs-in-a-column {n2 n6}{r1 r3}c7 ==> r3c7 ≠ 9, r3c7 ≠ 4, r3c7 ≠ 3, r1c7 ≠ 9
hidden-pairs-in-a-column {n2 n6}{r1 r3}c7 ==> r1c7 ≠ 4
xyz3-chain {n4 n7}r3c8 – {n7 n9}r1c9 – {n9 n4}r4c9 ==> r3c9 ≠ 4
xy7-chain {n4 n6}r2c4 – {n6 n7}r1c6 – {n7 n9}r2c5 – {n9 n3}r2c7 – {n3 n4}r8c7 {n4 n7}r8c8 – {n7 n4}r3c8 ==> r3c4 ≠ 4
naked and hidden singles ==> r2c4 = 4, r2c3 = 6
xy4-chain {n7 n6}r1c6 – {n6 n5}r3c4 – {n5 n4}r3c3 – {n4 n7}r3c8 ==> r3c5 ≠ 7, r1c9 ≠ 7
block b3 interaction-with-row r3 ==> r3c2 ≠ 7
naked-pairs-in-a-column {n4 n9}{r1 r4}c9 ==> r8c9 ≠ 4, r3c9 ≠ 9
xy4-chain {n9 n4}r1c9 – {n4 n7}r3c8 – {n7 n3}r3c9 – {n3 n9}r3c2 ==> r1c2 ≠ 9
... (Naked-Singles)"



The full CSP-Rules solution, using only typed bivalue-chains and Subsets:
(the same xy7-chain or bivalue-chain-rc[7] appears)

(solve "8..3............5.1.........2..65....5...47........1...4.....2....81....3..7.....")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyBC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
8..3............5.1.........2..65....5...47........1...4.....2....81....3..7.....
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r9c5 = 4
hidden-single-in-a-column ==> r9c2 = 1
hidden-single-in-a-row ==> r7c9 = 1
hidden-single-in-a-block ==> r1c8 = 1
hidden-single-in-a-column ==> r2c6 = 1
hidden-single-in-a-column ==> r6c2 = 8
hidden-single-in-a-block ==> r5c5 = 8
hidden-single-in-a-block ==> r3c6 = 8
hidden-single-in-a-row ==> r6c9 = 5
hidden-single-in-a-block ==> r5c9 = 2
Starting_init_links_with_<Fact-3764>
233 candidates, 1643 csp-links and 1643 links. Density = 6.07888116027823%
starting non trivial part of solution
Entering_level_W1_with_<Fact-10594>
whip[1]: c1n5{r8 .} ==> r9c3 ≠ 5, r7c3 ≠ 5, r8c3 ≠ 5
hidden-single-in-a-row ==> r9c7 = 5
hidden-single-in-a-row ==> r8c1 = 5
hidden-single-in-a-column ==> r2c1 = 2
whip[1]: c1n4{r6 .} ==> r4c3 ≠ 4, r6c3 ≠ 4
whip[1]: r7n7{c3 .} ==> r8c3 ≠ 7, r8c2 ≠ 7
whip[1]: c2n7{r3 .} ==> r1c3 ≠ 7, r2c3 ≠ 7, r3c3 ≠ 7
whip[1]: r4n7{c3 .} ==> r6c3 ≠ 7, r6c1 ≠ 7
whip[1]: c2n3{r3 .} ==> r3c3 ≠ 3, r2c3 ≠ 3
whip[1]: b6n6{r6c8 .} ==> r9c8 ≠ 6, r3c8 ≠ 6, r8c8 ≠ 6
whip[1]: b8n2{r9c6 .} ==> r6c6 ≠ 2, r1c6 ≠ 2
whip[1]: b5n3{r6c6 .} ==> r6c8 ≠ 3, r6c3 ≠ 3
Entering_relation_bivalue_with_<Fact-10616>
Entering_level_S2_with_<Fact-10747>
naked-pairs-in-a-block: b4{r5c1 r6c3}{n6 n9} ==> r6c1 ≠ 9, r6c1 ≠ 6, r5c3 ≠ 9, r5c3 ≠ 6, r4c3 ≠ 9, r4c1 ≠ 9
naked-single ==> r6c1 = 4
naked-single ==> r4c1 = 7
hidden-single-in-a-column ==> r7c3 = 7
hidden-single-in-a-block ==> r9c3 = 8
naked-single ==> r9c8 = 9
naked-single ==> r6c8 = 6
naked-single ==> r5c8 = 3
naked-single ==> r5c3 = 1
naked-single ==> r4c3 = 3
naked-single ==> r5c4 = 9
naked-single ==> r4c4 = 1
naked-single ==> r5c1 = 6
naked-single ==> r7c1 = 9
naked-single ==> r8c2 = 6
naked-single ==> r8c3 = 2
naked-single ==> r6c4 = 2
naked-single ==> r6c3 = 9
naked-single ==> r9c9 = 6
naked-single ==> r9c6 = 2
hidden-single-in-a-block ==> r8c6 = 9
hidden-single-in-a-block ==> r7c7 = 8
hidden-single-in-a-block ==> r2c9 = 8
hidden-single-in-a-block ==> r4c8 = 8
naked-pairs-in-a-row: r2{c3 c4}{n4 n6} ==> r2c7 ≠ 6, r2c7 ≠ 4
hidden-pairs-in-a-column: c7{n2 n6}{r1 r3} ==> r3c7 ≠ 9, r3c7 ≠ 4, r3c7 ≠ 3, r1c7 ≠ 9, r1c7 ≠ 4
Entering_level_TBC2_with_<Fact-10908>
Entering_level_S3_with_<Fact-10965>
Entering_level_TBC3_with_<Fact-11055>
Entering_level_S4_with_<Fact-11128>
Entering_level_TBC4_with_<Fact-11182>
Entering_level_TBC5_with_<Fact-11267>
Entering_level_TBC6_with_<Fact-11362>
Entering_level_TBC7_with_<Fact-11459>
biv-chain-rc[7]: r2c4{n4 n6} - r1c6{n6 n7} - r2c5{n7 n9} - r2c7{n9 n3} - r8c7{n3 n4} - r8c8{n4 n7} - r3c8{n7 n4} ==> r3c4 ≠ 4
hidden-single-in-a-block ==> r2c4 = 4
naked-single ==> r2c3 = 6
biv-chain-rc[4]: r1c6{n7 n6} - r3c4{n6 n5} - r3c3{n5 n4} - r3c8{n4 n7} ==> r3c5 ≠ 7
biv-chain-rc[4]: r1c6{n7 n6} - r3c4{n6 n5} - r3c3{n5 n4} - r3c8{n4 n7} ==> r1c9 ≠ 7
whip[1]: b3n7{r3c9 .} ==> r3c2 ≠ 7
naked-pairs-in-a-column: c9{r1 r4}{n4 n9} ==> r8c9 ≠ 4, r3c9 ≠ 9, r3c9 ≠ 4
biv-chain-rc[4]: r3c2{n9 n3} - r3c9{n3 n7} - r3c8{n7 n4} - r1c9{n4 n9} ==> r1c2 ≠ 9
naked-single ==> r1c2 = 7
naked-single ==> r1c6 = 6
naked-single ==> r1c7 = 2
naked-single ==> r3c7 = 6
naked-single ==> r3c4 = 5
naked-single ==> r1c5 = 9
naked-single ==> r1c9 = 4
naked-single ==> r1c3 = 5
naked-single ==> r3c8 = 7
naked-single ==> r3c9 = 3
naked-single ==> r2c7 = 9
naked-single ==> r2c2 = 3
naked-single ==> r4c7 = 4
naked-single ==> r8c7 = 3
naked-single ==> r3c2 = 9
naked-single ==> r8c9 = 7
naked-single ==> r8c8 = 4
naked-single ==> r4c9 = 9
naked-single ==> r2c5 = 7
naked-single ==> r6c5 = 3
naked-single ==> r6c6 = 7
naked-single ==> r7c5 = 5
naked-single ==> r3c5 = 2
naked-single ==> r3c3 = 4
naked-single ==> r7c4 = 6
naked-single ==> r7c6 = 3
GRID 0 SOLVED. rating-type = TBC+SFin, MOST COMPLEX RULE TRIED = TyBC[7]
875396214
236471958
194528673
723165489
651984732
489237165
947653821
562819347
318742596
Puzzle 8..3............5.1.........2..65....5...47........1...4.....2....81....3..7..... :
init-time = 0.336948, solve-time = 0.378156, total-time = 0.715104
nb-facts=<Fact-11913>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TBC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
