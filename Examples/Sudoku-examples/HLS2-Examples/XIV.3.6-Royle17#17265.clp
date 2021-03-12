
Puzzle Royle17#17265. Example from [HLS2, section XIV.3.6]

+-------+-------+-------+
! . 3 8 ! . 5 . ! . . . !
! . . . ! 4 . . ! 2 . . !
! . . . ! . . . ! . . . !
+-------+-------+-------+
! . . . ! . 8 1 ! 5 . . !
! 4 6 . ! . . . ! . 7 . !
! 2 . . ! . . . ! . . . !
+-------+-------+-------+
! 7 . . ! 6 . . ! . . 4 !
! . . . ! . . . ! 3 . . !
! . . . ! . . . ! . 9 . !
+-------+-------+-------+

.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
SER = 4.5


Solution given in [HLS2]:
";;; common part in L2 for the two resolution paths, in L4_0+XY4_11 and in L5, for the L4_0 (or L2) elaboration of Royle17-17265:
column c4 interaction-with-block b8 ==> r9c5 ≠ 1, r8c5 ≠ 1
naked-pairs-in-a-column {n3 n9}{r5 r7}c5 ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
block b2 interaction-with-column c6 ==> r9c6 ≠ 3
block b2 interaction-with-column c6 ==> r5c6 ≠ 3
hidden-pairs-in-a-column {n2 n4}{r3 r8}c3 ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row {n2 n4}r3{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7
row r3 interaction-with-block b2 ==> r2c6 ≠ 7, r2c5 ≠ 7
hidden-pairs-in-a-row {n2 n4}r3{c2 c3} ==> r3c2 ≠ 1 ;;; end of the common part

1) Resolution path in L4_0+XY4_11:

Continuation of the resolution path in L4_0+XY4_11 for the L4_0 (or L2) elaboration of Royle17-17265:
xy11-chain {n3 n9}r4c1 – {n9 n1}r3c1 – {n1 n7}r3c5 – {n7 n3}r3c6 – {n3 n6}r2c6 – {n6 n4}r6c6 – {n4 n5}r9c6 – {n5 n9}r5c6 – {n9 n3}r5c5 – {n3 n9}r7c5 – {n9 n3}r7c3 ==> r9c1 ≠ 3
naked and hidden singles ==> r7c3 = 3, r7c5 = 9, r5c5 = 3, r5c4 = 5, r8c4 = 1, r9c4 = 3, r5c6 = 9, r4c1 = 3
xy7-chain {n1 n7}r3c5 – {n7 n3}r3c6 – {n3 n6}r2c6 – {n6 n4}r6c6 – {n4 n5}r9c6 {n5 n8}r9c9 – {n8 n1}r9c1 ==> r3c1 ≠ 1
stte

2) Resolution path in L5 using chains of more complex types (hxy and xyt):
Continuation of the resolution path in L5 for the L4_0 (or L2) elaboration of Royle17-17265:
xyt4-chain {n1 n5}r8c4 – {n5 n4}r9c6 – {n4 n2}r9c5 – {n2 n1}r9c2 ==> r9c4 ≠ 1
hidden-single-in-a-block ==> r8c4 = 1
hxy-cn4-chain {r9 r8}c5n2 – {r8 r3}c5n7 – {r3 r2}c5n1 – {r2 r9}c2n1 ==> r9c2 ≠ 2
hidden-single-in-a-row ==> r9c5 = 2
hxy-rn5-chain {c2 c5}r2n1 – {c5 c6}r2n6 – {c6 c5}r6n6 – {c5 c6}r6n4 – {c6 c2}r9n4 ==> r9c2 ≠ 1
stte"



;;; Different solutions in CSP-Rules, depending on which rules are activated.


With fully super-symmetric bivalue-chains
 (solve ".38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = BC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r6c2 = 8
hidden-single-in-a-row ==> r4c8 = 4
hidden-single-in-a-row ==> r1c7 = 4
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 2
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-block ==> r5c7 = 8
naked-single ==> r7c7 = 1
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r5c3 = 1
hidden-single-in-a-block ==> r6c3 = 5
Starting_init_links_with_<Fact-3766>
212 candidates, 1303 csp-links and 1303 links. Density = 5.82580702852544%
starting non trivial part of solution
Entering_level_W1_with_<Fact-8564>
whip[1]: r5n3{c6 .} ==> r6c6 ≠ 3, r6c4 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c4 = 7
hidden-single-in-a-row ==> r1c9 = 7
naked-single ==> r3c7 = 6
naked-single ==> r1c8 = 1
naked-single ==> r1c4 = 9
naked-single ==> r1c1 = 6
naked-single ==> r6c8 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c7 = 7
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r8c8 = 6
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-row ==> r7c6 = 8
hidden-single-in-a-block ==> r3c4 = 8
naked-single ==> r3c8 = 5
naked-single ==> r2c8 = 8
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r2c1 = 5
whip[1]: c4n1{r9 .} ==> r8c5 ≠ 1, r9c5 ≠ 1
Entering_relation_bivalue_with_<Fact-8587>
Entering_level_S2_with_<Fact-8722>
naked-pairs-in-a-column: c5{r5 r7}{n3 n9} ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
whip[1]: b2n3{r3c6 .} ==> r5c6 ≠ 3, r9c6 ≠ 3
hidden-pairs-in-a-column: c3{n2 n4}{r3 r8} ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row: r3{n2 n4}{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7, r3c2 ≠ 1
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
Entering_level_BC2_with_<Fact-8864>
Entering_level_S3_with_<Fact-9705>
Entering_level_BC3_with_<Fact-9763>
biv-chain[3]: c1n8{r8 r9} - r9n3{c1 c4} - b8n1{r9c4 r8c4} ==> r8c1 ≠ 1
Entering_level_S4_with_<Fact-12972>
Entering_level_BC4_with_<Fact-13014>
biv-chain[4]: r5c4{n5 n3} - r9n3{c4 c1} - b7n8{r9c1 r8c1} - r8c9{n8 n5} ==> r8c4 ≠ 5
naked-single ==> r8c4 = 1
biv-chain[4]: c5n7{r8 r3} - r3n1{c5 c1} - b7n1{r9c1 r9c2} - r9n2{c2 c5} ==> r8c5 ≠ 2
hidden-single-in-a-block ==> r9c5 = 2
biv-chain[4]: r3n1{c5 c1} - b7n1{r9c1 r9c2} - r9n4{c2 c6} - r8c5{n4 n7} ==> r3c5 ≠ 7
naked-single ==> r3c5 = 1
naked-single ==> r2c5 = 6
naked-single ==> r2c6 = 3
naked-single ==> r2c9 = 9
naked-single ==> r2c3 = 7
naked-single ==> r2c2 = 1
naked-single ==> r9c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r3c3 = 4
naked-single ==> r8c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r7c3 = 3
naked-single ==> r4c3 = 9
naked-single ==> r4c1 = 3
naked-single ==> r7c5 = 9
naked-single ==> r5c5 = 3
naked-single ==> r5c4 = 5
naked-single ==> r5c6 = 9
naked-single ==> r9c4 = 3
naked-single ==> r8c1 = 8
naked-single ==> r8c9 = 5
naked-single ==> r9c9 = 8
naked-single ==> r9c1 = 1
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 5
naked-single ==> r3c9 = 3
naked-single ==> r3c6 = 7
naked-single ==> r8c6 = 4
naked-single ==> r6c6 = 6
naked-single ==> r8c5 = 7
naked-single ==> r6c5 = 4
naked-single ==> r3c1 = 9
GRID 0 SOLVED. rating-type = BC+SFin, MOST COMPLEX RULE TRIED = BC[4]
638952417
517463289
924817653
379281546
461539872
285746931
753698124
892174365
146325798
Puzzle .38.5.......4..2...............815..46.....7.2........7..6....4......3.........9. :
init-time = 0.34082, solve-time = 0.587125, total-time = 0.927945
nb-facts=<Fact-16058>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = BC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************



with typed-whips:
 (solve ".38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r6c2 = 8
hidden-single-in-a-row ==> r4c8 = 4
hidden-single-in-a-row ==> r1c7 = 4
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 2
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-block ==> r5c7 = 8
naked-single ==> r7c7 = 1
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r5c3 = 1
hidden-single-in-a-block ==> r6c3 = 5
Starting_init_links_with_<Fact-3766>
212 candidates, 1303 csp-links and 1303 links. Density = 5.82580702852544%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11170>
whip[1]: r5n3{c6 .} ==> r6c6 ≠ 3, r6c4 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c4 = 7
hidden-single-in-a-row ==> r1c9 = 7
naked-single ==> r3c7 = 6
naked-single ==> r1c8 = 1
naked-single ==> r1c4 = 9
naked-single ==> r1c1 = 6
naked-single ==> r6c8 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c7 = 7
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r8c8 = 6
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-row ==> r7c6 = 8
hidden-single-in-a-block ==> r3c4 = 8
naked-single ==> r3c8 = 5
naked-single ==> r2c8 = 8
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r2c1 = 5
whip[1]: c4n1{r9 .} ==> r8c5 ≠ 1, r9c5 ≠ 1
Entering_relation_bivalue_with_<Fact-11193>
Entering_level_S2_with_<Fact-11328>
naked-pairs-in-a-column: c5{r5 r7}{n3 n9} ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
whip[1]: b2n3{r3c6 .} ==> r5c6 ≠ 3, r9c6 ≠ 3
hidden-pairs-in-a-column: c3{n2 n4}{r3 r8} ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row: r3{n2 n4}{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7, r3c2 ≠ 1
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
Entering_level_TW2_with_<Fact-11471>
Entering_level_S3_with_<Fact-12048>
Entering_level_TW3_with_<Fact-12107>
Entering_level_S4_with_<Fact-12865>
Entering_level_TW4_with_<Fact-12916>
whip-rc[4]: r8c4{n1 n5} - r9c6{n5 n4} - r9c5{n4 n2} - r9c2{n2 .} ==> r9c4 ≠ 1
hidden-single-in-a-block ==> r8c4 = 1
whip-cn[4]: c2n1{r9 r2} - c5n1{r2 r3} - c5n7{r3 r8} - c5n2{r8 .} ==> r9c2 ≠ 2
hidden-single-in-a-row ==> r9c5 = 2
Entering_level_TW5_with_<Fact-14615>
whip-rn[5]: r9n4{c6 c2} - r9n1{c2 c1} - r3n1{c1 c5} - r3n7{c5 c6} - r8n7{c6 .} ==> r8c5 ≠ 4
naked-single ==> r8c5 = 7
naked-single ==> r3c5 = 1
naked-single ==> r2c5 = 6
naked-single ==> r2c6 = 3
naked-single ==> r2c9 = 9
naked-single ==> r2c3 = 7
naked-single ==> r2c2 = 1
naked-single ==> r9c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r3c3 = 4
naked-single ==> r8c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r7c3 = 3
naked-single ==> r4c3 = 9
naked-single ==> r4c1 = 3
naked-single ==> r7c5 = 9
naked-single ==> r5c5 = 3
naked-single ==> r5c4 = 5
naked-single ==> r5c6 = 9
naked-single ==> r9c4 = 3
naked-single ==> r8c1 = 8
naked-single ==> r8c9 = 5
naked-single ==> r8c6 = 4
naked-single ==> r6c6 = 6
naked-single ==> r9c9 = 8
naked-single ==> r9c1 = 1
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 5
naked-single ==> r3c9 = 3
naked-single ==> r3c6 = 7
naked-single ==> r6c5 = 4
naked-single ==> r3c1 = 9
GRID 0 SOLVED. rating-type = TW+SFin, MOST COMPLEX RULE TRIED = TyW[5]
638952417
517463289
924817653
379281546
461539872
285746931
753698124
892174365
146325798
Puzzle .38.5.......4..2...............815..46.....7.2........7..6....4......3.........9. :
init-time = 0.345767, solve-time = 0.542343, total-time = 0.88811
nb-facts=<Fact-14707>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************



with typed-bivalue-chains:
(solve ".38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyBC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r6c2 = 8
hidden-single-in-a-row ==> r4c8 = 4
hidden-single-in-a-row ==> r1c7 = 4
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 2
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-block ==> r5c7 = 8
naked-single ==> r7c7 = 1
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r5c3 = 1
hidden-single-in-a-block ==> r6c3 = 5
Starting_init_links_with_<Fact-3766>
212 candidates, 1303 csp-links and 1303 links. Density = 5.82580702852544%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11170>
whip[1]: r5n3{c6 .} ==> r6c6 ≠ 3, r6c4 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c4 = 7
hidden-single-in-a-row ==> r1c9 = 7
naked-single ==> r3c7 = 6
naked-single ==> r1c8 = 1
naked-single ==> r1c4 = 9
naked-single ==> r1c1 = 6
naked-single ==> r6c8 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c7 = 7
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r8c8 = 6
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-row ==> r7c6 = 8
hidden-single-in-a-block ==> r3c4 = 8
naked-single ==> r3c8 = 5
naked-single ==> r2c8 = 8
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r2c1 = 5
whip[1]: c4n1{r9 .} ==> r8c5 ≠ 1, r9c5 ≠ 1
Entering_relation_bivalue_with_<Fact-11193>
Entering_level_S2_with_<Fact-11328>
naked-pairs-in-a-column: c5{r5 r7}{n3 n9} ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
whip[1]: b2n3{r3c6 .} ==> r5c6 ≠ 3, r9c6 ≠ 3
hidden-pairs-in-a-column: c3{n2 n4}{r3 r8} ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row: r3{n2 n4}{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7, r3c2 ≠ 1
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
Entering_level_TBC2_with_<Fact-11470>
Entering_level_S3_with_<Fact-11783>
Entering_level_TBC3_with_<Fact-11841>
Entering_level_S4_with_<Fact-12182>
Entering_level_TBC4_with_<Fact-12232>
biv-chain-bn[4]: b7n8{r8c1 r9c1} - b7n3{r9c1 r7c3} - b8n3{r7c5 r9c4} - b8n1{r9c4 r8c4} ==> r8c1 ≠ 1
Entering_level_TBC5_with_<Fact-12727>
Entering_level_TBC6_with_<Fact-13186>
biv-chain-rc[6]: r5c4{n5 n3} - r5c5{n3 n9} - r7c5{n9 n3} - r7c3{n3 n9} - r8c1{n9 n8} - r8c9{n8 n5} ==> r8c4 ≠ 5
naked-single ==> r8c4 = 1
biv-chain-cn[4]: c2n1{r9 r2} - c5n1{r2 r3} - c5n7{r3 r8} - c5n2{r8 r9} ==> r9c2 ≠ 2
hidden-single-in-a-row ==> r9c5 = 2
biv-chain-rn[5]: r8n7{c5 c6} - r3n7{c6 c5} - r3n1{c5 c1} - r9n1{c1 c2} - r9n4{c2 c6} ==> r8c5 ≠ 4
naked-single ==> r8c5 = 7
naked-single ==> r3c5 = 1
naked-single ==> r2c5 = 6
naked-single ==> r2c6 = 3
naked-single ==> r2c9 = 9
naked-single ==> r2c3 = 7
naked-single ==> r2c2 = 1
naked-single ==> r9c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r3c3 = 4
naked-single ==> r8c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r7c3 = 3
naked-single ==> r4c3 = 9
naked-single ==> r4c1 = 3
naked-single ==> r7c5 = 9
naked-single ==> r5c5 = 3
naked-single ==> r5c4 = 5
naked-single ==> r5c6 = 9
naked-single ==> r9c4 = 3
naked-single ==> r8c1 = 8
naked-single ==> r8c9 = 5
naked-single ==> r8c6 = 4
naked-single ==> r6c6 = 6
naked-single ==> r9c9 = 8
naked-single ==> r9c1 = 1
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 5
naked-single ==> r3c9 = 3
naked-single ==> r3c6 = 7
naked-single ==> r6c5 = 4
naked-single ==> r3c1 = 9
GRID 0 SOLVED. rating-type = TBC+SFin, MOST COMPLEX RULE TRIED = TBC[6]
638952417
517463289
924817653
379281546
461539872
285746931
753698124
892174365
146325798
Puzzle .38.5.......4..2...............815..46.....7.2........7..6....4......3.........9. :
init-time = 0.341973, solve-time = 0.383507, total-time = 0.72548
nb-facts=<Fact-13881>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyBC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************



with only typed-biv-chains-rc
(bind ?*allowed-csp-types* (create$ rc))
(solve ".38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TyBC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r6c2 = 8
hidden-single-in-a-row ==> r4c8 = 4
hidden-single-in-a-row ==> r1c7 = 4
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 2
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-block ==> r5c7 = 8
naked-single ==> r7c7 = 1
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r5c3 = 1
hidden-single-in-a-block ==> r6c3 = 5
Starting_init_links_with_<Fact-3766>
212 candidates, 1303 csp-links and 1303 links. Density = 5.82580702852544%
starting non trivial part of solution
Entering_level_W1_with_<Fact-9210>
whip[1]: r5n3{c6 .} ==> r6c6 ≠ 3, r6c4 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c4 = 7
hidden-single-in-a-row ==> r1c9 = 7
naked-single ==> r3c7 = 6
naked-single ==> r1c8 = 1
naked-single ==> r1c4 = 9
naked-single ==> r1c1 = 6
naked-single ==> r6c8 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c7 = 7
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r8c8 = 6
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-row ==> r7c6 = 8
hidden-single-in-a-block ==> r3c4 = 8
naked-single ==> r3c8 = 5
naked-single ==> r2c8 = 8
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r2c1 = 5
whip[1]: c4n1{r9 .} ==> r8c5 ≠ 1, r9c5 ≠ 1
Entering_relation_bivalue_with_<Fact-9233>
Entering_level_S2_with_<Fact-9368>
naked-pairs-in-a-column: c5{r5 r7}{n3 n9} ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
whip[1]: b2n3{r3c6 .} ==> r5c6 ≠ 3, r9c6 ≠ 3
hidden-pairs-in-a-column: c3{n2 n4}{r3 r8} ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row: r3{n2 n4}{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7, r3c2 ≠ 1
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
Entering_level_TBC2_with_<Fact-9510>
Entering_level_S3_with_<Fact-9591>
Entering_level_TBC3_with_<Fact-9649>
Entering_level_S4_with_<Fact-9740>
Entering_level_TBC4_with_<Fact-9790>
Entering_level_TBC5_with_<Fact-9893>
Entering_level_TBC6_with_<Fact-10010>
Entering_level_TBC7_with_<Fact-10143>
Entering_level_TBC8_with_<Fact-10262>
Entering_level_TBC9_with_<Fact-10389>
Entering_level_TBC10_with_<Fact-10488>
Entering_level_TBC11_with_<Fact-10581>
biv-chain-rc[11]: r4c1{n3 n9} - r3c1{n9 n1} - r3c5{n1 n7} - r3c6{n7 n3} - r2c6{n3 n6} - r6c6{n6 n4} - r9c6{n4 n5} - r5c6{n5 n9} - r5c5{n9 n3} - r7c5{n3 n9} - r7c3{n9 n3} ==> r4c3 ≠ 3
hidden-single-in-a-block ==> r4c1 = 3
hidden-single-in-a-block ==> r7c3 = 3
naked-single ==> r7c5 = 9
naked-single ==> r5c5 = 3
naked-single ==> r5c4 = 5
naked-single ==> r5c6 = 9
naked-single ==> r8c4 = 1
naked-single ==> r9c4 = 3
biv-chain-rc[7]: r2c9{n9 n3} - r2c6{n3 n6} - r6c6{n6 n4} - r9c6{n4 n5} - r9c9{n5 n8} - r9c1{n8 n1} - r3c1{n1 n9} ==> r3c9 ≠ 9
naked-single ==> r3c9 = 3
naked-single ==> r2c9 = 9
naked-single ==> r2c3 = 7
naked-single ==> r2c2 = 1
naked-single ==> r2c5 = 6
naked-single ==> r2c6 = 3
naked-single ==> r6c5 = 4
naked-single ==> r6c6 = 6
naked-single ==> r9c5 = 2
naked-single ==> r8c5 = 7
naked-single ==> r3c5 = 1
naked-single ==> r9c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r3c3 = 4
naked-single ==> r8c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r8c1 = 8
naked-single ==> r8c9 = 5
naked-single ==> r8c6 = 4
naked-single ==> r9c9 = 8
naked-single ==> r9c1 = 1
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 5
naked-single ==> r3c1 = 9
naked-single ==> r4c3 = 9
naked-single ==> r3c6 = 7
GRID 0 SOLVED. rating-type = TBC+SFin, MOST COMPLEX RULE TRIED = TyBC[11]
638952417
517463289
924817653
379281546
461539872
285746931
753698124
892174365
146325798
Puzzle .38.5.......4..2...............815..46.....7.2........7..6....4......3.........9. :
init-time = 0.339024, solve-time = 0.34904, total-time = 0.688064
nb-facts=<Fact-10974>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TBC+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************



with  TyBC and TytW in rc-space
(solve ".38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TytW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r6c2 = 8
hidden-single-in-a-row ==> r4c8 = 4
hidden-single-in-a-row ==> r1c7 = 4
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 2
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-block ==> r5c7 = 8
naked-single ==> r7c7 = 1
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r5c3 = 1
hidden-single-in-a-block ==> r6c3 = 5
Starting_init_links_with_<Fact-3767>
212 candidates, 1303 csp-links and 1303 links. Density = 5.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11171>
whip[1]: r5n3{c6 .} ==> r6c6 ≠ 3, r6c4 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c4 = 7
hidden-single-in-a-row ==> r1c9 = 7
naked-single ==> r3c7 = 6
naked-single ==> r1c8 = 1
naked-single ==> r1c4 = 9
naked-single ==> r1c1 = 6
naked-single ==> r6c8 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c7 = 7
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r8c8 = 6
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-row ==> r7c6 = 8
hidden-single-in-a-block ==> r3c4 = 8
naked-single ==> r3c8 = 5
naked-single ==> r2c8 = 8
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r2c1 = 5
whip[1]: c4n1{r9 .} ==> r8c5 ≠ 1, r9c5 ≠ 1
Entering_relation_bivalue_with_<Fact-11194>
Entering_level_S2_with_<Fact-11329>
naked-pairs-in-a-column: c5{r5 r7}{n3 n9} ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
whip[1]: b2n3{r3c6 .} ==> r5c6 ≠ 3, r9c6 ≠ 3
hidden-pairs-in-a-column: c3{n2 n4}{r3 r8} ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row: r3{n2 n4}{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7, r3c2 ≠ 1
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
Entering_level_TBC2_with_<Fact-11471>
Entering_level_TytW2_with_<Fact-11553>
Entering_level_S3_with_<Fact-11699>
Entering_level_TyBC3_with_<Fact-11757>
Entering_level_TytW3_with_<Fact-11849>
Entering_level_S4_with_<Fact-12060>
Entering_level_TyBC4_with_<Fact-12110>
Entering_level_TytW4_with_<Fact-12214>
t-whip-rc[4]: r8c4{n1 n5} - r9c6{n5 n4} - r9c5{n4 n2} - r9c2{n2 .} ==> r8c1 ≠ 1,r8c2 ≠ 1,r9c4 ≠ 1
hidden-single-in-a-block ==> r8c4 = 1
Entering_level_TyBC5_with_<Fact-12765>
Entering_level_TytW5_with_<Fact-12935>
Entering_level_TyBC6_with_<Fact-13362>
Entering_level_TytW6_with_<Fact-13562>
Entering_level_TyBC7_with_<Fact-14164>
Entering_level_TytW7_with_<Fact-14360>
t-whip-rc[7]: r9c6{n5 n4} - r9c5{n4 n2} - r8c5{n2 n7} - r3c5{n7 n1} - r3c1{n1 n9} - r8c1{n9 n8} - r8c9{n8 .} ==> r9c9 ≠ 5,r8c6 ≠ 5
naked-single ==> r9c9 = 8
naked-single ==> r8c9 = 5
hidden-single-in-a-row ==> r8c1 = 8
biv-chain-rc[3]: r3c1{n9 n1} - r9c1{n1 n3} - r7c3{n3 n9} ==> r2c3 ≠ 9
naked-single ==> r2c3 = 7
hidden-single-in-a-column ==> r4c2 = 7
t-whip-rc[6]: r9c1{n1 n3} - r9c4{n3 n5} - r9c6{n5 n4} - r9c5{n4 n2} - r8c5{n2 n7} - r3c5{n7 .} ==> r3c1 ≠ 1
naked-single ==> r3c1 = 9
naked-single ==> r2c2 = 1
naked-single ==> r2c5 = 6
naked-single ==> r2c6 = 3
naked-single ==> r2c9 = 9
naked-single ==> r3c6 = 7
naked-single ==> r3c5 = 1
naked-single ==> r6c5 = 4
naked-single ==> r6c6 = 6
naked-single ==> r9c5 = 2
naked-single ==> r8c5 = 7
naked-single ==> r9c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r3c3 = 4
naked-single ==> r8c2 = 9
naked-single ==> r7c3 = 3
naked-single ==> r4c3 = 9
naked-single ==> r7c5 = 9
naked-single ==> r5c5 = 3
naked-single ==> r5c4 = 5
naked-single ==> r5c6 = 9
naked-single ==> r9c4 = 3
naked-single ==> r9c1 = 1
naked-single ==> r8c6 = 4
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 5
naked-single ==> r3c9 = 3
naked-single ==> r4c1 = 3
GRID 0 SOLVED. rating-type = TytW+SFin, MOST COMPLEX RULE TRIED = TytW[7]
638952417
517463289
924817653
379281546
461539872
285746931
753698124
892174365
146325798
Puzzle .38.5.......4..2...............815..46.....7.2........7..6....4......3.........9. :
init-time = 0.352832, solve-time = 0.50512, total-time = 0.857952
nb-facts=<Fact-15630>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TytW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************



with typed-bivalue-chains and typed-t-whips:
 (solve ".38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.")
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TytW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
.38.5.......4..2...............815..46.....7.2........7..6....4......3.........9.
17 givens, 307 candidates
entering BRT
hidden-single-in-a-block ==> r6c2 = 8
hidden-single-in-a-row ==> r4c8 = 4
hidden-single-in-a-row ==> r1c7 = 4
hidden-single-in-a-row ==> r4c9 = 6
hidden-single-in-a-block ==> r5c9 = 2
hidden-single-in-a-block ==> r4c4 = 2
hidden-single-in-a-row ==> r1c6 = 2
hidden-single-in-a-block ==> r5c7 = 8
naked-single ==> r7c7 = 1
naked-single ==> r6c7 = 9
hidden-single-in-a-row ==> r5c3 = 1
hidden-single-in-a-block ==> r6c3 = 5
Starting_init_links_with_<Fact-3768>
212 candidates, 1303 csp-links and 1303 links. Density = 5.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-11172>
whip[1]: r5n3{c6 .} ==> r6c6 ≠ 3, r6c4 ≠ 3, r6c5 ≠ 3
naked-single ==> r6c4 = 7
hidden-single-in-a-row ==> r1c9 = 7
naked-single ==> r3c7 = 6
naked-single ==> r1c8 = 1
naked-single ==> r1c4 = 9
naked-single ==> r1c1 = 6
naked-single ==> r6c8 = 3
naked-single ==> r6c9 = 1
naked-single ==> r9c7 = 7
hidden-single-in-a-row ==> r9c3 = 6
hidden-single-in-a-row ==> r8c8 = 6
hidden-single-in-a-block ==> r7c8 = 2
hidden-single-in-a-row ==> r7c6 = 8
hidden-single-in-a-block ==> r3c4 = 8
naked-single ==> r3c8 = 5
naked-single ==> r2c8 = 8
hidden-single-in-a-row ==> r7c2 = 5
hidden-single-in-a-block ==> r2c1 = 5
whip[1]: c4n1{r9 .} ==> r8c5 ≠ 1, r9c5 ≠ 1
Entering_relation_bivalue_with_<Fact-11195>
Entering_level_S2_with_<Fact-11330>
naked-pairs-in-a-column: c5{r5 r7}{n3 n9} ==> r9c5 ≠ 3, r8c5 ≠ 9, r3c5 ≠ 3, r2c5 ≠ 3
whip[1]: b2n3{r3c6 .} ==> r5c6 ≠ 3, r9c6 ≠ 3
hidden-pairs-in-a-column: c3{n2 n4}{r3 r8} ==> r8c3 ≠ 9, r3c3 ≠ 9, r3c3 ≠ 7
hidden-pairs-in-a-row: r3{n2 n4}{c2 c3} ==> r3c2 ≠ 9, r3c2 ≠ 7, r3c2 ≠ 1
whip[1]: r3n7{c6 .} ==> r2c5 ≠ 7, r2c6 ≠ 7
Entering_level_TBC2_with_<Fact-11472>
Entering_level_TytW2_with_<Fact-11786>
Entering_level_S3_with_<Fact-12363>
Entering_level_TyBC3_with_<Fact-12421>
Entering_level_TytW3_with_<Fact-12763>
Entering_level_S4_with_<Fact-13521>
Entering_level_TyBC4_with_<Fact-13571>
biv-chain-bn[4]: b7n8{r8c1 r9c1} - b7n3{r9c1 r7c3} - b8n3{r7c5 r9c4} - b8n1{r9c4 r8c4} ==> r8c1 ≠ 1
Entering_level_TytW4_with_<Fact-14145>
t-whip-rc[4]: r8c4{n1 n5} - r9c6{n5 n4} - r9c5{n4 n2} - r9c2{n2 .} ==> r8c2 ≠ 1,r9c4 ≠ 1
hidden-single-in-a-block ==> r8c4 = 1
biv-chain-cn[4]: c2n1{r9 r2} - c5n1{r2 r3} - c5n7{r3 r8} - c5n2{r8 r9} ==> r9c2 ≠ 2
hidden-single-in-a-row ==> r9c5 = 2
Entering_level_TyBC5_with_<Fact-16271>
biv-chain-rn[5]: r2n1{c2 c5} - r2n6{c5 c6} - r6n6{c6 c5} - r6n4{c5 c6} - r9n4{c6 c2} ==> r9c2 ≠ 1
naked-single ==> r9c2 = 4
naked-single ==> r3c2 = 2
naked-single ==> r3c3 = 4
naked-single ==> r8c2 = 9
naked-single ==> r4c2 = 7
naked-single ==> r2c2 = 1
naked-single ==> r2c5 = 6
naked-single ==> r2c6 = 3
naked-single ==> r2c9 = 9
naked-single ==> r2c3 = 7
naked-single ==> r3c9 = 3
naked-single ==> r3c6 = 7
naked-single ==> r3c5 = 1
naked-single ==> r6c5 = 4
naked-single ==> r6c6 = 6
naked-single ==> r8c5 = 7
naked-single ==> r3c1 = 9
naked-single ==> r4c1 = 3
naked-single ==> r4c3 = 9
naked-single ==> r7c3 = 3
naked-single ==> r7c5 = 9
naked-single ==> r5c5 = 3
naked-single ==> r5c4 = 5
naked-single ==> r5c6 = 9
naked-single ==> r9c4 = 3
naked-single ==> r8c1 = 8
naked-single ==> r8c9 = 5
naked-single ==> r8c6 = 4
naked-single ==> r9c9 = 8
naked-single ==> r9c1 = 1
naked-single ==> r8c3 = 2
naked-single ==> r9c6 = 5
GRID 0 SOLVED. rating-type = TytW+SFin, MOST COMPLEX RULE TRIED = TyBC[5]
638952417
517463289
924817653
379281546
461539872
285746931
753698124
892174365
146325798
Puzzle .38.5.......4..2...............815..46.....7.2........7..6....4......3.........9. :
init-time = 0.345452, solve-time = 0.559971, total-time = 0.905423
nb-facts=<Fact-16387>
***********************************************************************************************
***  SudoRules 20.1.s based on CSP-Rules 2.1.s, config = TytW+SFin
***  using CLIPS 6.32-r763
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz 16GB, MacOS 10.5.4
***********************************************************************************************
