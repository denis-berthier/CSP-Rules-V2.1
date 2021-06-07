
Puzzle Royle17#8530. Example from [HLS2, section XVIII.2.2]


+-------+-------+-------+
! . . . ! 4 . . ! 2 . 3 !
! 6 5 . ! . . 8 ! . . . !
! . . . ! . . . ! 7 . . !
+-------+-------+-------+
! 1 . . ! 5 . . ! . 6 . !
! . . . ! . 3 . ! . . . !
! 8 . . ! . . . ! . . . !
+-------+-------+-------+
! . . . ! 1 . . ! . 9 . !
! . . 3 ! . 7 . ! . . . !
! . 2 . ! . . . ! . . . !
+-------+-------+-------+

...4..2.365...8.........7..1..5...6.....3....8...........1...9...3.7.....2.......
SER = 7.1



Solution from [HLS2], starting from the following "L4 elaboration":

+-------+-------+-------+
! 9 . . ! 4 6 7 ! 2 5 3 !
! 6 5 7 ! 3 2 8 ! . . . !
! 3 4 2 ! 9 . . ! 7 8 6 !
+-------+-------+-------+
! 1 7 . ! 5 . 2 ! 3 6 . !
! 2 . . ! . 3 . ! . 7 . !
! 8 3 . ! 7 . . ! . 2 . !
+-------+-------+-------+
! 7 . . ! 1 . 3 ! . 9 2 !
! . . 3 ! 2 7 . ! . . . !
! . 2 . ! . . . ! . 3 7 !
+-------+-------+-------+

"With our third example, puzzle Royle17-8530 (Figure 6), after a few simple rules have been applied to the L4+XY5+HXY5+XYT5 elaboration (which coincides with the L4 elaboration), three chains of length five and of different types (hxy-rn5, hxy-cn5 and hxyt-rn5) appear to live at the same time on the same grid:
Resolution path in L4+XY5+HXY5+XYT5+HXYT5 for the L4+XY5+HXY5+XYT5 (or L4) elaboration of Royle17-8530:

column c1 interaction-with-block b7 ==> r9c3 ≠ 5, r7c3 ≠ 5, r9c3 ≠ 4, r7c3 ≠ 4
naked-pairs-in-a-row {n6 n8}r7{c2 c3} ==> r7c7 ≠ 8, r7c7 ≠ 6
row r7 interaction-with-block b7 ==> r9c3 ≠ 6, r8c2 ≠ 6
naked-pairs-in-a-row {n6 n8}r7{c2 c3} ==> r7c5 ≠ 8
row r7 interaction-with-block b7 ==> r9c3 ≠ 8, r8c2 ≠ 8
row r8 interaction-with-block b9 ==> r9c7 ≠ 8
xyt4-chain {n4 n9}r4c3 – {n9 n6}r5c2 – {n6 n8}r5c4 – {n8 n4}r4c5 ==> r4c9 ≠ 4
hxy-rn5-chain {c3 c6}r6n6 – {c6 c7}r8n6 – {c7 c9}r8n8 – {c9 c5}r4n8 – {c5 c3}r4n4 ==> r6c3 ≠ 4
hxy-cn5-chain {r8 r1}c2n1 – {r1 r7}c2n8 – {r7 r5}c2n6 – {r5 r9}c4n6 – {r9 r8}c7n6 ==> r8c7 ≠ 1
hxyt-rn5-chain {c6 c7}r8n6 – {c7 c9}r8n8 – {c9 c5}r4n8 – {c5 c4}r9n8 – {c4 c6}r9n6 ==> r6c6 ≠ 6
...(Naked-Singles and Hidden-Singles)"




SudoRules solution from the start, using only Subsets and typed t-whips

(solve "...4..2.365...8.........7..1..5...6.....3....8...........1...9...3.7.....2.......")

***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TytW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
...4..2.365...8.........7..1..5...6.....3....8...........1...9...3.7.....2.......
17 givens, 302 candidates
entering BRT
hidden-single-in-a-block ==> r3c9 = 6
hidden-single-in-a-column ==> r3c1 = 3
hidden-single-in-a-column ==> r5c1 = 2
hidden-single-in-a-block ==> r2c4 = 3
hidden-single-in-a-block ==> r1c6 = 7
naked-single ==> r1c1 = 9
hidden-single-in-a-block ==> r2c3 = 7
hidden-single-in-a-block ==> r3c3 = 2
naked-single ==> r3c4 = 9
hidden-single-in-a-block ==> r3c2 = 4
hidden-single-in-a-row ==> r3c8 = 8
hidden-single-in-a-block ==> r1c8 = 5
hidden-single-in-a-block ==> r2c5 = 2
hidden-single-in-a-block ==> r1c5 = 6
Starting_init_links_with_<Fact-3763>
203 candidates, 1238 csp-links and 1238 links. Density = 6.0381407598888%
starting non trivial part of solution
Entering_level_W1_with_<Fact-10795>
whip[1]: c1n5{r9 .} ==> r9c3 ≠ 5, r7c3 ≠ 5
whip[1]: c1n4{r9 .} ==> r9c3 ≠ 4, r7c3 ≠ 4
whip[1]: c1n7{r9 .} ==> r7c2 ≠ 7
Entering_relation_bivalue_with_<Fact-10802>
Entering_level_S2_with_<Fact-10895>
naked-pairs-in-a-row: r7{c2 c3}{n6 n8} ==> r7c9 ≠ 8, r7c7 ≠ 8, r7c7 ≠ 6, r7c6 ≠ 6, r7c5 ≠ 8
whip[1]: r7n8{c3 .} ==> r8c2 ≠ 8, r9c3 ≠ 8
whip[1]: r7n6{c3 .} ==> r8c2 ≠ 6, r9c3 ≠ 6
x-wing-in-columns: n2{c4 c8}{r6 r8} ==> r8c9 ≠ 2, r8c6 ≠ 2, r6c9 ≠ 2, r6c6 ≠ 2
Entering_level_TBC2_with_<Fact-11019>
Entering_level_tW2_with_<Fact-11177>
Entering_level_S3_with_<Fact-11829>
Entering_level_TBC3_with_<Fact-11873>
Entering_level_tW3_with_<Fact-12031>
Entering_level_S4_with_<Fact-12764>
Entering_level_TBC4_with_<Fact-12828>
biv-chain-rn[4]: r4n3{c7 c2} - r4n7{c2 c9} - r4n2{c9 c6} - r6n2{c4 c8} ==> r6c8 ≠ 3
hidden-single-in-a-column ==> r9c8 = 3
hidden-single-in-a-row ==> r7c6 = 3
hidden-single-in-a-block ==> r8c4 = 2
hidden-single-in-a-block ==> r4c6 = 2
hidden-single-in-a-block ==> r6c8 = 2
hidden-single-in-a-column ==> r5c8 = 7
hidden-single-in-a-row ==> r4c2 = 7
hidden-single-in-a-block ==> r6c2 = 3
hidden-single-in-a-block ==> r4c7 = 3
hidden-single-in-a-row ==> r6c4 = 7
hidden-single-in-a-column ==> r7c9 = 2
hidden-single-in-a-block ==> r9c9 = 7
hidden-single-in-a-block ==> r7c1 = 7
whip[1]: r8n8{c9 .} ==> r9c7 ≠ 8
biv-chain-cn[3]: c7n8{r5 r8} - c7n6{r8 r9} - c4n6{r9 r5} ==> r5c4 ≠ 8
naked-single ==> r5c4 = 6
naked-single ==> r5c2 = 9
naked-single ==> r4c3 = 4
naked-single ==> r5c3 = 5
naked-single ==> r6c3 = 6
naked-single ==> r7c3 = 8
naked-single ==> r1c3 = 1
naked-single ==> r1c2 = 8
naked-single ==> r9c3 = 9
naked-single ==> r7c2 = 6
naked-single ==> r8c2 = 1
naked-single ==> r8c8 = 4
naked-single ==> r2c8 = 1
naked-single ==> r7c7 = 5
naked-single ==> r7c5 = 4
naked-single ==> r8c9 = 8
naked-single ==> r4c9 = 9
naked-single ==> r2c9 = 4
naked-single ==> r2c7 = 9
naked-single ==> r5c9 = 1
naked-single ==> r5c6 = 4
naked-single ==> r5c7 = 8
naked-single ==> r6c7 = 4
naked-single ==> r6c9 = 5
naked-single ==> r4c5 = 8
naked-single ==> r9c5 = 5
naked-single ==> r3c5 = 1
naked-single ==> r3c6 = 5
naked-single ==> r6c5 = 9
naked-single ==> r6c6 = 1
naked-single ==> r9c1 = 4
naked-single ==> r9c6 = 6
naked-single ==> r8c6 = 9
naked-single ==> r9c7 = 1
naked-single ==> r8c7 = 6
naked-single ==> r8c1 = 5
naked-single ==> r9c4 = 8
GRID 0 SOLVED. rating-type = TytW+SFin, MOST COMPLEX RULE TRIED = TyBC[4]
981467253
657328914
342915786
174582369
295634871
836791425
768143592
513279648
429856137
Puzzle ...4..2.365...8.........7..1..5...6.....3....8...........1...9...3.7.....2....... :
init-time = 0.343404, solve-time = 0.870687, total-time = 1.214091
nb-facts=<Fact-13366>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TytW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************



