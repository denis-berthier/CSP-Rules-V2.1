
Puzzle Royle17#1092. Example from [HLS2, section XVIII.2.5]

+-------+-------+-------+
! . . . ! . . . ! 3 . 4 !
! . . . ! . . 2 ! . . . !
! . . . ! 6 . . ! . . . !
+-------+-------+-------+
! . . 1 ! . 4 . ! . . . !
! . . . ! 5 . . ! . 2 . !
! . . . ! . . . ! 6 8 . !
+-------+-------+-------+
! . . . ! 1 3 . ! 5 . . !
! 2 6 . ! . . . ! . . 7 !
! 8 . . ! . . . ! . . . !
+-------+-------+-------+

......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........
SER = 7.1


[HLS2] solution:

"XVIII.2.5. A puzzle in [L7+XY8+HXY8+C8+XYT8]+HXYT8

In puzzle Royle17-1092 (Figure 10), the L7+XY8+HXY8+C8+XYT8 and the L1_0 elaborations coincide.

The first steps of this example are another illustration, for hxy-cn4-chains, of what we saw in section XV.3.5 for hxy-rn6-chains: on the same set of cells, different orderings can lead to different hxy-chains (of course, this is also true for xy-chains; it is less likely for non reversible chains, like xyt, hxyt, xyzt or hxyzt; nevertheless, see the example in section 2.6 below).

This is also a case in which the resolution paths in L7+XY8+HXY8+C8+XYT8 +HXYT8 and in L4_0+XY4_8+HXY4_8+C4_8+XYT4_8+HXYT4_8 coincide. This means that rules of types xyzt and hxyzt and lengths strictly less than eight are not useful for elaborating this puzzle.

Resolution path, in L7+XY8+HXY8+C8+XYT8+HXYT8 or in L4_0+XY4_8+HXY4_8+ C4_8+XYT4_8+HXYT4_8, for the L7+XY8+HXY8+C8+ XYT8 (or L1_0) elaboration of Royle17-1092:

hidden-pairs-in-a-row {n2 n8}r4{c2 c4} ==> r4c4 ≠ 9, r4c2 ≠ 9, r4c2 ≠ 5
hidden-pairs-in-a-block {n3 n4}{r2c4 r3c6} ==> r3c6 ≠ 9, r3c6 ≠ 7, r3c6 ≠ 5, r3c6 ≠ 1, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 7
hxy-cn4-chain {r9 r5}c5n6 – {r5 r1}c3n6 – {r1 r6}c3n2 – {r6 r9}c5n2 ==> r9c5 ≠ 7
hxy-cn4-chain {r6 r9}c5n2 – {r9 r5}c5n6 – {r5 r1}c3n6 – {r1 r6}c3n2 ==> r6c4 ≠ 2, r6c2 ≠ 2
hxy-cn4-chain {r1 r6}c3n2 – {r6 r9}c5n2 – {r9 r4}c4n2 – {r4 r1}c4n8 ==> r1c3 ≠ 8
hxy-cn4-chain {r5 r9}c5n6 – {r9 r6}c5n2 – {r6 r1}c3n2 – {r1 r5}c3n6 ==> r5c6 ≠ 6, r5c1 ≠ 6
hxy-cn4-chain {r1 r5}c3n6 – {r5 r9}c5n6 – {r9 r6}c5n2 – {r6 r1}c3n2 ==> r1c3 ≠ 9, r1c3 ≠ 7
hxyt-cn7-chain {r2 r5}c3n8 – {r5 r1}c3n6 – {r1 r6}c3n2 – {r6 r9}c5n2 – {r9 r4}c4n2 {r4 r1}c4n8 – {r1 r2}c5n8 ==> r2c2 ≠ 8
hxyt-rn8-chain {c3 c5}r5n6 – {c5 c6}r9n6 – {c6 c1}r4n6 – {c1 c3}r1n6 – {c3 c2}r1n2 {c2 c4}r4n2 – {c4 c2}r4n8 – {c2 c3}r5n8 ==> r5c3 ≠ 9, r5c3 ≠ 7
xy3-chain {n2 n6}r1c3 – {n6 n8}r5c3 – {n8 n2}r4c2 ==> r6c3 ≠ 2
...(Naked-Singles and Hidden-Singles)"




SudoRules solution using typed bivalue chains, z-chains and t-whips

(solve "......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyZ+TytW+W1+SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........
17 givens, 306 candidates
entering BRT
hidden-single-in-a-block ==> r9c2 = 1
hidden-single-in-a-row ==> r7c9 = 2
hidden-single-in-a-block ==> r3c7 = 2
hidden-single-in-a-block ==> r8c7 = 8
hidden-single-in-a-block ==> r7c6 = 8
hidden-single-in-a-row ==> r7c8 = 6
hidden-single-in-a-block ==> r2c9 = 6
hidden-single-in-a-block ==> r3c9 = 8
hidden-single-in-a-block ==> r8c8 = 1
hidden-single-in-a-block ==> r2c7 = 1
hidden-single-in-a-row ==> r8c3 = 3
hidden-single-in-a-block ==> r9c3 = 5
hidden-single-in-a-column ==> r9c8 = 4
naked-single ==> r9c7 = 9
naked-single ==> r4c7 = 7
naked-single ==> r5c7 = 4
naked-single ==> r9c9 = 3
hidden-single-in-a-block ==> r4c8 = 3
Starting_init_links_with_<Fact-6690>

Starting non trivial part of solution with the following RESOLUTION STATE:
   15679     25789     26789     789       15789     1579      3         579       4
   34579     345789    4789      34789     5789      2         1         579       6
   134579    34579     479       6         1579      134579    2         579       8
   569       2589      1         289       4         69        7         3         59
   3679      3789      6789      5         16789     13679     4         2         19
   34579     234579    2479      2379      1279      1379      6         8         159
   479       479       479       1         3         8         5         6         2
   2         6         3         49        59        459       8         1         7
   8         1         5         27        267       67        9         4         3

193 candidates, 1202 csp-links and 1202 links. Density = 6.49%

Entering_level_W1_with_<Fact-13509>
Entering_relation_bivalue_with_<Fact-13510>
Entering_level_S2_with_<Fact-13587>
hidden-pairs-in-a-row: r4{n2 n8}{c2 c4} ==> r4c4 ≠ 9, r4c2 ≠ 9, r4c2 ≠ 5
hidden-pairs-in-a-block: b2{n3 n4}{r2c4 r3c6} ==> r3c6 ≠ 9, r3c6 ≠ 7, r3c6 ≠ 5, r3c6 ≠ 1, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 7
Entering_level_TyBC2_with_<Fact-13615>
Entering_level_TyZ2_with_<Fact-13694>
Entering_level_TytW2_with_<Fact-14167>
Entering_level_S3_with_<Fact-14168>
Entering_level_TyBC3_with_<Fact-14296>
Entering_level_TyZ3_with_<Fact-14347>
Entering_level_TytW3_with_<Fact-14763>
Entering_level_S4_with_<Fact-15239>
Entering_level_TyBC4_with_<Fact-15333>
biv-chain-cn[4]: c3n2{r1 r6} - c5n2{r6 r9} - c5n6{r9 r5} - c3n6{r5 r1} ==> r1c3 ≠ 7, r1c3 ≠ 8, r1c3 ≠ 9
biv-chain-cn[4]: c3n2{r6 r1} - c3n6{r1 r5} - c5n6{r5 r9} - c5n2{r9 r6} ==> r6c2 ≠ 2, r6c4 ≠ 2
biv-chain-cn[4]: c2n2{r1 r4} - c3n2{r6 r1} - c3n6{r1 r5} - c3n8{r5 r2} ==> r1c2 ≠ 8
whip[1]: r1n8{c5 .} ==> r2c5 ≠ 8
biv-chain-cn[4]: c4n2{r9 r4} - c4n8{r4 r1} - c5n8{r1 r5} - c5n6{r5 r9} ==> r9c5 ≠ 2
hidden-single-in-a-block ==> r9c4 = 2
naked-single ==> r4c4 = 8
naked-single ==> r4c2 = 2
hidden-single-in-a-block ==> r1c3 = 2
hidden-single-in-a-block ==> r1c1 = 6
hidden-single-in-a-block ==> r3c1 = 1
hidden-single-in-a-block ==> r5c3 = 6
hidden-single-in-a-block ==> r5c2 = 8
hidden-single-in-a-block ==> r2c3 = 8
hidden-single-in-a-block ==> r4c6 = 6
naked-single ==> r9c6 = 7
naked-single ==> r9c5 = 6
hidden-single-in-a-row ==> r6c5 = 2
hidden-single-in-a-block ==> r1c5 = 8
hidden-single-in-a-block ==> r1c6 = 1
hidden-single-in-a-column ==> r8c6 = 5
naked-single ==> r8c5 = 9
naked-single ==> r8c4 = 4
naked-single ==> r2c4 = 3
naked-single ==> r3c6 = 4
hidden-single-in-a-block ==> r3c2 = 3
hidden-single-in-a-block ==> r1c4 = 9
naked-single ==> r6c4 = 7
naked-single ==> r5c5 = 1
naked-single ==> r5c9 = 9
naked-single ==> r4c9 = 5
naked-single ==> r4c1 = 9
naked-single ==> r6c3 = 4
naked-single ==> r6c2 = 5
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 5
naked-single ==> r3c3 = 9
naked-single ==> r2c2 = 4
naked-single ==> r2c1 = 5
naked-single ==> r2c5 = 7
naked-single ==> r2c8 = 9
naked-single ==> r3c5 = 5
naked-single ==> r7c2 = 9
naked-single ==> r3c8 = 7
naked-single ==> r7c3 = 7
naked-single ==> r7c1 = 4
naked-single ==> r6c1 = 3
naked-single ==> r5c1 = 7
naked-single ==> r6c6 = 9
naked-single ==> r6c9 = 1
naked-single ==> r5c6 = 3
PUZZLE 0 IS SOLVED. rating-type = TyZ+TytW+W1+SFin, MOST COMPLEX RULE TRIED = TyBC[4]
672981354
548372196
139654278
921846735
786513429
354729681
497138562
263495817
815267943
Puzzle ......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........ :
init-time = 0.19s, solve-time = 0.83s, total-time = 1.02s
nb-facts = <Fact-16066>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyZ+TytW+W1+SFin
***  Using CLIPS 6.32-r779
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************



SudoRules solution, using whips (max chain length 3 instead of 4):
(solve "......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************
......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........
17 givens, 306 candidates
entering BRT
hidden-single-in-a-block ==> r9c2 = 1
hidden-single-in-a-row ==> r7c9 = 2
hidden-single-in-a-block ==> r3c7 = 2
hidden-single-in-a-block ==> r8c7 = 8
hidden-single-in-a-block ==> r7c6 = 8
hidden-single-in-a-row ==> r7c8 = 6
hidden-single-in-a-block ==> r2c9 = 6
hidden-single-in-a-block ==> r3c9 = 8
hidden-single-in-a-block ==> r8c8 = 1
hidden-single-in-a-block ==> r2c7 = 1
hidden-single-in-a-row ==> r8c3 = 3
hidden-single-in-a-block ==> r9c3 = 5
hidden-single-in-a-column ==> r9c8 = 4
naked-single ==> r9c7 = 9
naked-single ==> r4c7 = 7
naked-single ==> r5c7 = 4
naked-single ==> r9c9 = 3
hidden-single-in-a-block ==> r4c8 = 3
Starting_init_links_with_<Fact-6691>

Starting non trivial part of solution with the following RESOLUTION STATE:
   15679     25789     26789     789       15789     1579      3         579       4
   34579     345789    4789      34789     5789      2         1         579       6
   134579    34579     479       6         1579      134579    2         579       8
   569       2589      1         289       4         69        7         3         59
   3679      3789      6789      5         16789     13679     4         2         19
   34579     234579    2479      2379      1279      1379      6         8         159
   479       479       479       1         3         8         5         6         2
   2         6         3         49        59        459       8         1         7
   8         1         5         27        267       67        9         4         3

193 candidates, 1202 csp-links and 1202 links. Density = 6.49%

Entering_level_W1_with_<Fact-13510>
Entering_relation_bivalue_with_<Fact-13511>
Entering_level_S2_with_<Fact-13588>
hidden-pairs-in-a-row: r4{n2 n8}{c2 c4} ==> r4c4 ≠ 9, r4c2 ≠ 9, r4c2 ≠ 5
hidden-pairs-in-a-block: b2{n3 n4}{r2c4 r3c6} ==> r3c6 ≠ 9, r3c6 ≠ 7, r3c6 ≠ 5, r3c6 ≠ 1, r2c4 ≠ 9, r2c4 ≠ 8, r2c4 ≠ 7
Entering_level_TyBC2_with_<Fact-13616>
Entering_level_BC2_with_<Fact-13695>
Entering_level_TyZ2_with_<Fact-13902>
Entering_level_Z2_with_<Fact-14375>
Entering_level_TytW2_with_<Fact-14683>
Entering_level_tW2_with_<Fact-14684>
Entering_level_TyW2_with_<Fact-14685>
Entering_level_W2_with_<Fact-14686>
Entering_level_S3_with_<Fact-14687>
Entering_level_TyBC3_with_<Fact-14815>
Entering_level_BC3_with_<Fact-14866>
biv-chain[3]: r4c6{n9 n6} - b8n6{r9c6 r9c5} - c5n2{r9 r6} ==> r6c5 ≠ 9
biv-chain[3]: r1n2{c3 c2} - r4c2{n2 n8} - c4n8{r4 r1} ==> r1c3 ≠ 8
biv-chain[3]: c3n8{r2 r5} - c3n6{r5 r1} - b1n2{r1c3 r1c2} ==> r1c2 ≠ 8
whip[1]: r1n8{c5 .} ==> r2c5 ≠ 8
biv-chain[3]: r9n2{c4 c5} - c5n6{r9 r5} - b5n8{r5c5 r4c4} ==> r4c4 ≠ 2
naked-single ==> r4c4 = 8
naked-single ==> r4c2 = 2
hidden-single-in-a-block ==> r1c3 = 2
hidden-single-in-a-block ==> r1c1 = 6
hidden-single-in-a-block ==> r3c1 = 1
hidden-single-in-a-block ==> r5c3 = 6
hidden-single-in-a-block ==> r5c2 = 8
hidden-single-in-a-block ==> r2c3 = 8
hidden-single-in-a-block ==> r4c6 = 6
naked-single ==> r9c6 = 7
naked-single ==> r9c4 = 2
naked-single ==> r9c5 = 6
hidden-single-in-a-block ==> r6c5 = 2
hidden-single-in-a-block ==> r1c5 = 8
hidden-single-in-a-block ==> r1c6 = 1
hidden-single-in-a-column ==> r8c6 = 5
naked-single ==> r8c5 = 9
naked-single ==> r8c4 = 4
naked-single ==> r2c4 = 3
naked-single ==> r3c6 = 4
hidden-single-in-a-block ==> r3c2 = 3
hidden-single-in-a-block ==> r1c4 = 9
naked-single ==> r6c4 = 7
naked-single ==> r5c5 = 1
naked-single ==> r5c9 = 9
naked-single ==> r4c9 = 5
naked-single ==> r4c1 = 9
naked-single ==> r6c3 = 4
naked-single ==> r6c2 = 5
naked-single ==> r1c2 = 7
naked-single ==> r1c8 = 5
naked-single ==> r3c3 = 9
naked-single ==> r2c2 = 4
naked-single ==> r2c1 = 5
naked-single ==> r2c5 = 7
naked-single ==> r2c8 = 9
naked-single ==> r3c5 = 5
naked-single ==> r7c2 = 9
naked-single ==> r3c8 = 7
naked-single ==> r7c3 = 7
naked-single ==> r7c1 = 4
naked-single ==> r6c1 = 3
naked-single ==> r5c1 = 7
naked-single ==> r6c6 = 9
naked-single ==> r6c9 = 1
naked-single ==> r5c6 = 3
PUZZLE 0 IS SOLVED. rating-type = TyW+W+SFin, MOST COMPLEX RULE TRIED = BC[3]
672981354
548372196
139654278
921846735
786513429
354729681
497138562
263495817
815267943
Puzzle ......3.4.....2......6.......1.4.......5...2.......68....13.5..26......78........ :
init-time = 0.21s, solve-time = 0.81s, total-time = 1.02s
nb-facts = <Fact-15389>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+W+SFin
***  Using CLIPS 6.32-r790
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.7
***  Download from: https://github.com/denis-berthier/CSP-Rules-V2.1
***********************************************************************************************

