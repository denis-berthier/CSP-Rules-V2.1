Mellon rating = 1.5


(solve 
10 10 
3 . . 3 2 0 2 . . 3 
. 2 . 0 . . 3 . 3 . 
. . . . 1 1 . . . . 
1 3 . . 1 1 . . 0 3 
2 . 1 1 1 1 1 1 . 2
3 . 1 1 1 1 1 1 . 2 
2 1 . . 1 1 . . 0 2
. . . . 1 1 . . . . 
. 3 . 0 . . 3 . 3 . 
3 . . 2 1 2 1 . . 2
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . 3 2 0 2 . . 3
. 2 . 0 . . 3 . 3 .
. . . . 1 1 . . . .
1 3 . . 1 1 . . 0 3
2 . 1 1 1 1 1 1 . 2
3 . 1 1 1 1 1 1 . 2
2 1 . . 1 1 . . 0 2
. . . . 1 1 . . . .
. 3 . 0 . . 3 . 3 .
3 . . 2 1 2 1 . . 2

start init-grid-structure 0.0326340198516846
start create-csp-variables
start create-labels 0.00167012214660645
start init-physical-csp-links 0.0130820274353027
start init-physical-non-csp-links 11.9949569702148
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.76764607429504
     start init-physical-BN-non-csp-links at local time 14.2872090339661
     start init-physical-BP-non-csp-links at local time 24.0267140865326
     end init-physical-BP-non-csp-links at local time 261.95229101181
end init-physical-non-csp-links 273.94730091095
start init-corner-B-c-values 273.980230093002
start init-outer-B-candidates 273.980291128159
start init-outer-I-candidates 273.981132030487
start init-H-candidates 273.981619119644
start init-V-candidates 273.985360145569
start init-P-candidates 273.989050149918
start init-inner-I-candidates 273.995718002319
start init-inner-N-and-B-candidates 273.998243093491
start solution 274.009813785553
entering BRT
w[0]-0-in-r9c4 ==> Hr10c4 = 0, Hr9c4 = 0, Vr9c5 = 0, Vr9c4 = 0
w[0]-0-in-r7c9 ==> Hr8c9 = 0, Hr7c9 = 0, Vr7c10 = 0, Vr7c9 = 0
w[0]-0-in-r4c9 ==> Hr5c9 = 0, Hr4c9 = 0, Vr4c10 = 0, Vr4c9 = 0
w[0]-0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
w[0]-0-in-r1c6 ==> Hr2c6 = 0, Hr1c6 = 0, Vr1c7 = 0, Vr1c6 = 0
w0-adjacent-3-0-in-r4{c10 c9} ==> Vr4c11 = 1, Vr5c10 = 1, Vr3c10 = 1, Hr5c10 = 1, Hr4c10 = 1, Vr5c11 = 0, Vr3c11 = 0
w[0]-adjacent-3-0-in-c4{r1 r2} ==> Vr1c5 = 1, Vr1c4 = 1, Hr2c5 = 1, Hr2c3 = 1, Hr1c4 = 1, Hr1c5 = 0, Hr1c3 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-diagonal-3-0-in-{r2c7...r1c6} ==> Vr2c7 = 1, Hr2c7 = 1
w[1]-diagonal-3s-in-{r9c2...r10c1} ==> Vr9c3 = 1, Hr9c2 = 1, Vr8c3 = 0, Hr9c3 = 0
w[1]-diagonal-3s-in-{r1c10...r2c9} ==> Vr2c9 = 1, Hr3c9 = 1, Vr3c9 = 0, Hr3c8 = 0
w[1]-3-in-r2c9-hit-by-verti-line-at-se ==> Hr2c9 = 1
w[1]-adjacent-1-2-on-edge-in-r10{c5 c6}-fwd-diag-2s-3 ==> Vr10c5 = 0, Hr11c6 = 1, Hr10c5 = 0
w[1]-2-in-r10c4-open-ne-corner ==> Hr11c4 = 1, Vr10c4 = 1, Hr11c3 = 0
w[1]-adjacent-1-2-on-edge-in-r10{c7 c6}-bkwd-diag-2s-3...r9c7 ==> Vr9c8 = 1, Hr9c7 = 1, Hr11c5 = 1
w[1]-adjacent-1-2-on-edge-in-{r4 r5}c1-bkwd-diag-2s-3...r4c2 ==> Vr4c3 = 1, Hr4c2 = 1, Vr6c1 = 1
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r9c7-closed-ne-corner ==> Pr10c7 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ o
w[1]-3-in-r4c10-closed-se-corner ==> Pr4c10 ≠ o
w[1]-3-in-r4c2-closed-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r2c9-closed-sw-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-3-in-r2c9-closed-nw-corner ==> Pr3c10 ≠ se, Pr3c10 ≠ nw, Pr3c10 ≠ o
w[1]-3-in-r2c7-closed-nw-corner ==> Pr3c8 ≠ se, Pr3c8 ≠ nw, Pr3c8 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r9c9-symmetric-se-corner ==> Vr9c10 = 1, Hr10c9 = 1
w[1]-2-in-r10c10-open-nw-corner ==> Hr11c10 = 1, Vr10c11 = 1
w[1]-3-in-r9c9-closed-se-corner ==> Pr9c9 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ o
w[1]-3-in-r2c7-asymmetric-ne-corner ==> Hr3c7 = 1, Vr3c7 = 0, Hr3c6 = 0
w[1]-diagonal-1-1-in-{r3c6...r4c5}-with-no-ne-outer-sides ==> Hr5c5 = 0, Vr4c5 = 0
w[1]-diagonal-1-1-in-{r4c5...r5c4}-with-no-sw-inner-sides ==> Hr5c4 = 0, Vr5c5 = 0
w[1]-diagonal-1-1-in-{r5c5...r6c6}-with-no-nw-outer-sides ==> Hr7c6 = 0, Vr6c7 = 0
w[1]-diagonal-1-1-in-{r5c4...r6c3}-with-no-ne-outer-sides ==> Hr7c3 = 0, Vr6c3 = 0
w[1]-diagonal-1-1-in-{r6c3...r7c2}-with-no-sw-inner-sides ==> Hr7c2 = 0, Vr7c3 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r5{c6 c7} ==> Vr5c7 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r6 r7} ==> Hr7c5 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r6{c4 c5} ==> Vr6c5 = 0
w[1]-diagonal-1-1-in-{r6c5...r5c6}-with-no-sw-outer-sides ==> Hr5c6 = 0
P-single: Pr11c11 = nw
P-single: Pr2c4 = nw
P-single: Pr4c10 = ne
P-single: Pr10c4 = sw
H-single: Hr10c3 = 1
w[1]-3-in-r9c2-hit-by-horiz-line-at-se ==> Vr9c2 = 1
w[1]-3-in-r9c2-closed-nw-corner ==> Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ o
P-single: Pr2c7 = se
P-single: Pr2c8 = nw
V-single: Vr1c8 = 1
V-single: Vr2c8 = 0
w[0]-adjacent-3-in-r2c7-nolines-east ==> Vr3c8 = 1
P-single: Pr6c11 = o
H-single: Hr6c10 = 0
V-single: Vr6c11 = 0
w[1]-2-in-r6c10-open-ne-corner ==> Hr7c10 = 1, Vr6c10 = 1
P-single: Pr7c10 = ne
P-single: Pr2c6 = sw
V-single: Vr2c6 = 1
P-single: Pr2c5 = ne
P-single: Pr5c10 = se
P-single: Pr1c7 = o
H-single: Hr1c7 = 0
P-single: Pr1c6 = o
w[1]-1-in-r10c5-symmetric-nw-corner ==> Pr11c6 ≠ nw
P-single: Pr11c6 = ew
V-single: Vr10c6 = 0
w[1]-1-in-r8c5-symmetric-sw-corner ==> Pr8c6 ≠ sw, Pr8c6 ≠ ne, Pr8c6 ≠ o
w[1]-1-in-r6c8-symmetric-se-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
w[1]-1-in-r5c8-symmetric-ne-corner ==> Pr6c8 ≠ sw, Pr6c8 ≠ ne
w[1]-1-in-r3c5-symmetric-nw-corner ==> Pr4c6 ≠ se, Pr4c6 ≠ nw, Pr4c6 ≠ o
w[1]-1-in-r7c6-asymmetric-sw-corner ==> Pr7c7 ≠ ew, Pr7c7 ≠ se, Pr7c7 ≠ nw, Pr7c7 ≠ ns
w[1]-1-in-r5c7-asymmetric-se-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ew, Pr5c7 ≠ ns, Pr5c7 ≠ ne
entering level Loop with <Fact-93656>
entering level Col with <Fact-93776>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-vertical-line-r10{c9 c10} ==> Ir10c9 = in
horizontal-line-{r9 r10}c9 ==> Ir9c9 = out
vertical-line-r9{c9 c10} ==> Ir9c10 = in
no-vertical-line-r6{c10 c11} ==> Ir6c10 = out
no-horizontal-line-{r5 r6}c10 ==> Ir5c10 = out
vertical-line-r5{c9 c10} ==> Ir5c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
no-vertical-line-r4{c8 c9} ==> Ir4c8 = in
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-horizontal-line-{r2 r3}c10 ==> Ir2c10 = out
no-vertical-line-r2{c9 c10} ==> Ir2c9 = out
vertical-line-r2{c8 c9} ==> Ir2c8 = in
no-vertical-line-r2{c7 c8} ==> Ir2c7 = in
vertical-line-r2{c6 c7} ==> Ir2c6 = out
no-horizontal-line-{r1 r2}c6 ==> Ir1c6 = out
no-vertical-line-r1{c5 c6} ==> Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
horizontal-line-{r1 r2}c3 ==> Ir1c3 = out
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
no-vertical-line-r1{c6 c7} ==> Ir1c7 = out
vertical-line-r1{c7 c8} ==> Ir1c8 = in
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
no-vertical-line-r3{c6 c7} ==> Ir3c7 = out
vertical-line-r3{c7 c8} ==> Ir3c8 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
vertical-line-r6{c9 c10} ==> Ir6c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
no-horizontal-line-{r7 r8}c9 ==> Ir8c9 = in
vertical-line-r1{c10 c11} ==> Ir1c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
vertical-line-r6{c0 c1} ==> Ir6c1 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = in
no-vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = in
vertical-line-r9{c1 c2} ==> Ir9c2 = out
no-horizontal-line-{r9 r10}c2 ==> Ir10c2 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
no-vertical-line-r9{c4 c5} ==> Ir9c5 = in
no-horizontal-line-{r8 r9}c4 ==> Ir8c4 = in
same-colour-in-r8{c3 c4} ==> Vr8c4 = 0
same-colour-in-{r10 r11}c2 ==> Hr11c2 = 0
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-3-in-r9c2-hit-by-verti-line-at-sw ==> Hr10c1 = 0
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se, Pr10c1 ≠ o
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1
w[1]-3-in-r2c9-hit-by-horiz-line-at-ne ==> Vr1c10 = 0
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ se, Pr1c10 ≠ o
different-colours-in-{r8 r9}c9 ==> Hr9c9 = 1
w[1]-3-in-r9c9-closed-ne-corner ==> Pr10c9 ≠ sw, Pr10c9 ≠ ne, Pr10c9 ≠ o
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
same-colour-in-{r7 r8}c10 ==> Hr8c10 = 0
w[1]-2-in-r7c10-open-sw-corner ==> Vr7c11 = 1
same-colour-in-{r5 r6}c9 ==> Hr6c9 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c8{r5 r6} ==> Hr6c8 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c7{r5 r6} ==> Hr6c7 = 0
w[1]-diagonal-1-1-in-{r5c7...r6c6}-with-no-sw-inner-sides ==> Hr6c6 = 0
w[1]-diagonal-1-1-in-{r5c6...r4c5}-with-no-se-outer-sides ==> Hr4c5 = 0
w[1]-diagonal-1-1-in-{r6c6...r7c5}-with-no-ne-outer-sides ==> Hr8c5 = 0, Vr7c5 = 0
w[1]-diagonal-1-1-in-{r7c5...r6c4}-with-no-nw-inner-sides ==> Hr7c4 = 0
w[1]-diagonal-1-1-in-{r6c4...r5c3}-with-no-se-outer-sides ==> Hr5c3 = 0, Vr5c3 = 0
w[1]-diagonal-1-1-in-{r7c5...r8c6}-with-no-nw-outer-sides ==> Hr9c6 = 0, Vr8c7 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c6{r7 r8} ==> Hr8c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c6{r3 r4} ==> Hr4c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r5 r6} ==> Hr6c5 = 0
w[1]-diagonal-1-1-in-{r5c5...r6c4}-with-no-sw-inner-sides ==> Hr6c4 = 0
w[1]-diagonal-1-1-in-{r5c5...r4c6}-with-no-sw-outer-sides ==> Vr4c7 = 0
w[1]-diagonal-1-1-in-{r4c6...r5c7}-with-no-se-inner-sides ==> Hr5c7 = 0
w[1]-diagonal-1-1-in-{r5c7...r6c8}-with-no-nw-outer-sides ==> Hr7c8 = 0, Vr6c9 = 0
w[1]-diagonal-1-1-in-{r4c6...r3c5}-with-no-se-outer-sides ==> Hr3c5 = 0, Vr3c5 = 0
w[1]-diagonal-1-1-in-{r6c5...r7c6}-with-no-nw-outer-sides ==> Vr7c7 = 0
w[1]-diagonal-1-1-in-{r7c6...r6c7}-with-no-ne-inner-sides ==> Hr7c7 = 0
w[1]-diagonal-1-1-in-{r6c7...r5c8}-with-no-sw-outer-sides ==> Hr5c8 = 0, Vr5c9 = 0
w[1]-diagonal-1-1-in-{r7c6...r8c5}-with-no-ne-outer-sides ==> Hr9c5 = 0, Vr8c5 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r5 r6} ==> Hr6c3 = 0
w[1]-3-in-r9c7-isolated-at-nw-corner ==> Vr9c7 = 1
w[1]-3-in-r9c7-closed-nw-corner ==> Pr10c8 ≠ se, Pr10c8 ≠ nw, Pr10c8 ≠ o
w[1]-3-in-r4c2-isolated-at-se-corner ==> Hr5c2 = 1
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
3-in-r6c1-no-U-turn-from-east ==> Hr6c2 = O
no-vertical-line-r8{c4 c5} ==> Ir8c5 = in
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = in
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-horizontal-line-{r5 r6}c8 ==> Ir6c8 = in
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = out
no-vertical-line-r4{c6 c7} ==> Ir4c7 = out
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = out
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
no-vertical-line-r6{c6 c7} ==> Ir6c7 = out
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = out
no-vertical-line-r7{c6 c7} ==> Ir7c6 = out
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = out
no-vertical-line-r8{c6 c7} ==> Ir8c7 = out
no-vertical-line-r8{c7 c8} ==> Ir8c8 = out
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
vertical-line-r9{c7 c8} ==> Ir9c7 = in
vertical-line-r9{c6 c7} ==> Ir9c6 = out
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-r9{c5 c6} ==> Hr9c6 = 1
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
different-colours-in-r8{c8 c9} ==> Hr8c9 = 1
different-colours-in-{r7 r8}c8 ==> Hr8c8 = 1
same-colour-in-{r7 r8}c7 ==> Hr8c7 = 0
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
different-colours-in-r7{c5 c6} ==> Hr7c6 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
same-colour-in-{r7 r8}c4 ==> Hr8c4 = 0
same-colour-in-{r3 r4}c8 ==> Hr4c8 = 0
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1

LOOP[36]: Hr11c9-Hr11c10-Vr10c11-Vr9c11-Vr8c11-Vr7c11-Hr7c10-Vr6c10-Vr5c10-Hr5c10-Vr4c11-Hr4c10-Vr3c10-Hr3c9-Vr2c9-Hr2c9-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Vr1c8-Hr2c7-Vr2c7-Hr3c7-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c8-Vr8c9-Hr9c9-Vr9c10-Hr10c9- ==> Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
w[0]-adjacent-3-in-r9c7-nolines-south ==> Hr10c8 = 1
Starting_init_links_with_<Fact-96402>
2057 candidates, 6877 csp-links and 24922 links. Density = 1.18%
starting non trivial part of solution
Entering_level_W1_with_<Fact-160005>
whip[1]: Hr10c8{1 .} ==> Br10c8 ≠ esw, Br9c8 ≠ o, Br10c8 ≠ o, Pr10c8 ≠ ns, Pr10c8 ≠ sw, Pr10c9 ≠ ns, Pr10c9 ≠ se, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ w, Br9c8 ≠ ne, Br9c8 ≠ nw, Br9c8 ≠ ew, Br9c8 ≠ wne, Br10c8 ≠ e, Br10c8 ≠ s, Br10c8 ≠ w, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ sw
whip[1]: Br10c8{nes .} ==> Nr10c8 ≠ 0
whip[1]: Br9c8{nes .} ==> Nr9c8 ≠ 0
whip[1]: Pr10c9{ew .} ==> Br9c9 ≠ esw, Br9c9 ≠ swn, Br10c8 ≠ wne, Br10c8 ≠ nes, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c8 ≠ ne, Br10c9 ≠ w
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ ne, Pr11c9 ≠ nw
whip[1]: Br9c9{nes .} ==> Pr9c9 ≠ ns, Pr9c9 ≠ sw, Pr9c10 ≠ o, Pr9c10 ≠ ne, Pr9c10 ≠ ns, Pr9c10 ≠ nw, Pr9c10 ≠ se, Pr9c10 ≠ ew, Pr10c10 ≠ o
P-single: Pr10c10 = nw
P-single: Pr9c10 = sw
whip[1]: Pr10c10{nw .} ==> Br10c9 ≠ s, Br10c9 ≠ e, Br10c9 ≠ o, Br9c10 ≠ s, Br9c10 ≠ e, Br9c10 ≠ n, Br9c10 ≠ o, Br9c9 ≠ wne, Br9c10 ≠ ne, Br9c10 ≠ ns, Br9c10 ≠ se, Br9c10 ≠ sw, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ nes, Br10c9 ≠ ne, Br10c9 ≠ se, Br10c9 ≠ nes, Br10c10 ≠ nw
B-single: Br10c10 = se
P-single: Pr11c10 = ew
P-single: Pr10c11 = ns
B-single: Br9c9 = nes
P-single: Pr10c9 = ew
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ n, Br11c10 ≠ o, Br11c9 ≠ o
B-single: Br11c9 = n
P-single: Pr11c9 = ew
B-single: Br11c10 = n
B-single: Br10c9 = ns
N-single: Nr10c9 = 2
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ n, Br11c8 ≠ o, Br10c8 ≠ nw
B-single: Br11c8 = n
w[1]-1-in-r10c7-asymmetric-se-corner ==> Pr10c7 ≠ ew, Pr10c7 ≠ ns
whip[1]: Pr10c7{se .} ==> Br9c6 ≠ ne, Br9c6 ≠ ns, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c7 ≠ esw, Br9c7 ≠ swn, Br10c6 ≠ ne, Br10c6 ≠ sw, Br9c6 ≠ e, Br9c6 ≠ s, Br10c7 ≠ n, Br10c7 ≠ w
whip[1]: Br10c7{s .} ==> Pr11c7 ≠ ne, Pr10c7 ≠ se, Pr10c8 ≠ ew
P-single: Pr10c8 = ne
P-single: Pr10c7 = nw
P-single: Pr11c7 = ew
whip[1]: Pr10c8{ne .} ==> Br9c7 ≠ nes, Br9c8 ≠ s, Br9c8 ≠ ns, Br9c8 ≠ se, Br9c8 ≠ nes, Br10c7 ≠ e, Br10c8 ≠ swn
B-single: Br10c8 = ns
N-single: Nr10c8 = 2
P-single: Pr11c8 = ew
B-single: Br10c7 = s
B-single: Br9c7 = wne
P-single: Pr9c7 = se
P-single: Pr9c8 = sw
w[1]-1-in-r8c6-symmetric-se-corner ==> Pr8c6 ≠ se, Pr8c6 ≠ nw
w[1]-1-in-r7c5-asymmetric-se-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ew, Pr7c5 ≠ ns, Pr7c5 ≠ ne
w[1]-1-in-r6c4-symmetric-se-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ o
w[1]-1-in-r5c3-asymmetric-se-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ew, Pr5c3 ≠ ns, Pr5c3 ≠ ne
whip[1]: Pr11c8{ew .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Pr9c7{se .} ==> Br9c6 ≠ w, Br9c6 ≠ n, Br9c6 ≠ o, Br8c7 ≠ w, Br8c7 ≠ e, Br8c7 ≠ n, Br8c7 ≠ o, Br8c6 ≠ s, Br8c6 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ nw, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br9c6 ≠ nw, Br9c6 ≠ nes
whip[1]: Br9c6{esw .} ==> Pr9c6 ≠ ne, Pr9c6 ≠ se, Pr9c6 ≠ ew, Pr10c6 ≠ ns, Pr10c6 ≠ sw, Nr9c6 ≠ 0, Nr9c6 ≠ 1
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ esw, Br9c5 ≠ nes, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ ew, Br9c5 ≠ o, Br9c5 ≠ n, Br9c5 ≠ w, Br10c5 ≠ e
B-single: Br10c6 = ns
whip[1]: Br10c5{w .} ==> Pr11c5 ≠ ne, Pr10c5 ≠ se
P-single: Pr11c4 = ne
P-single: Pr10c5 = o
P-single: Pr11c5 = ew
w[1]-1-in-r10c5-asymmetric-sw-corner ==> Pr10c6 ≠ ew
P-single: Pr10c6 = ne
whip[1]: Pr11c4{ne .} ==> Br10c3 ≠ n, Br10c3 ≠ o, Br11c4 ≠ o, Br11c3 ≠ n, Br10c3 ≠ s, Br10c3 ≠ w, Br10c3 ≠ ns, Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ swn, Br10c3 ≠ nes, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew
B-single: Br10c4 = sw
B-single: Br11c3 = o
B-single: Br11c4 = n
whip[1]: Pr11c3{nw .} ==> Br10c2 ≠ ne, Br10c2 ≠ ns, Br10c2 ≠ ew, Br10c2 ≠ sw, Br10c2 ≠ swn, Br10c2 ≠ wne, Br10c2 ≠ e, Br10c2 ≠ s
whip[1]: Br10c3{wne .} ==> Nr10c3 ≠ 0
whip[1]: Pr10c5{o .} ==> Br9c5 ≠ s, Br9c5 ≠ ns, Br9c5 ≠ ew, Br9c5 ≠ sw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br10c5 ≠ n, Br10c5 ≠ w
B-single: Br10c5 = s
whip[1]: Br9c5{ne .} ==> Pr9c6 ≠ o, Pr9c6 ≠ nw, Nr9c5 ≠ 0, Nr9c5 ≠ 3
w[1]-1-in-r8c5-asymmetric-se-corner ==> Pr8c5 ≠ sw, Pr8c5 ≠ ew, Pr8c5 ≠ ns, Pr8c5 ≠ ne
whip[1]: Pr8c5{se .} ==> Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br8c4 ≠ ne, Br8c4 ≠ wne, Br8c4 ≠ nes, Br7c4 ≠ e, Br7c4 ≠ s, Br8c5 ≠ n, Br8c5 ≠ w
whip[1]: Br8c5{s .} ==> Pr9c5 ≠ ne, Pr8c5 ≠ se, Pr8c6 ≠ ew
P-single: Pr8c6 = ns
P-single: Pr9c5 = o
whip[1]: Pr8c6{ns .} ==> Br8c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ n, Br7c5 ≠ n, Br7c5 ≠ s, Br7c5 ≠ w, Br7c6 ≠ s, Br8c5 ≠ s
B-single: Br8c5 = e
P-single: Pr9c6 = ns
B-single: Br7c6 = w
B-single: Br7c5 = e
P-single: Pr7c6 = ns
P-single: Pr8c5 = o
B-single: Br8c6 = w
P-single: Pr8c7 = o
w[1]-1-in-r6c6-asymmetric-sw-corner ==> Pr6c7 ≠ ew, Pr6c7 ≠ se, Pr6c7 ≠ nw, Pr6c7 ≠ ns
w[1]-1-in-r5c7-symmetric-sw-corner ==> Pr5c8 ≠ sw, Pr5c8 ≠ ne, Pr5c8 ≠ o
w[1]-1-in-r6c5-asymmetric-se-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ ew, Pr6c5 ≠ ns, Pr6c5 ≠ ne
w[1]-1-in-r5c4-symmetric-se-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
whip[1]: Pr9c6{ns .} ==> Br9c5 ≠ ne, Br9c6 ≠ se
B-single: Br9c6 = esw
N-single: Nr9c6 = 3
B-single: Br9c5 = e
N-single: Nr9c5 = 1
whip[1]: Pr7c6{ns .} ==> Br6c6 ≠ e, Br6c6 ≠ n, Br6c5 ≠ n, Br6c5 ≠ s, Br6c5 ≠ w, Br6c6 ≠ s
B-single: Br6c6 = w
P-single: Pr7c7 = o
B-single: Br6c5 = e
P-single: Pr6c6 = ns
P-single: Pr7c5 = o
w[1]-1-in-r5c6-asymmetric-sw-corner ==> Pr5c7 ≠ se, Pr5c7 ≠ nw
P-single: Pr5c7 = o
w[1]-1-in-r5c5-asymmetric-se-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ew, Pr5c5 ≠ ns, Pr5c5 ≠ ne
whip[1]: Pr7c7{o .} ==> Br6c7 ≠ s, Br6c7 ≠ w, Br7c7 ≠ n, Br7c7 ≠ w, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes
whip[1]: Br7c7{se .} ==> Pr7c8 ≠ nw, Pr7c8 ≠ ew, Pr7c8 ≠ sw, Nr7c7 ≠ 3
whip[1]: Pr6c6{ns .} ==> Br5c6 ≠ e, Br5c6 ≠ n, Br5c5 ≠ n, Br5c5 ≠ s, Br5c5 ≠ w, Br5c6 ≠ s
B-single: Br5c6 = w
P-single: Pr6c7 = o
B-single: Br5c5 = e
P-single: Pr5c6 = ns
P-single: Pr6c5 = o
w[1]-1-in-r6c4-symmetric-ne-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-1-in-r6c7-symmetric-nw-corner ==> Pr7c8 ≠ se, Pr7c8 ≠ o
w[1]-1-in-r4c6-asymmetric-sw-corner ==> Pr4c7 ≠ ew, Pr4c7 ≠ se, Pr4c7 ≠ nw, Pr4c7 ≠ ns
w[1]-1-in-r4c5-asymmetric-se-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ew, Pr4c5 ≠ ns, Pr4c5 ≠ ne
whip[1]: Pr6c7{o .} ==> Br5c7 ≠ s, Br5c7 ≠ w, Br6c7 ≠ n
B-single: Br6c7 = e
P-single: Pr6c8 = ns
whip[1]: Pr6c8{ns .} ==> Br6c8 ≠ e, Br6c8 ≠ n, Br5c8 ≠ e, Br5c8 ≠ n, Br5c7 ≠ n, Br5c8 ≠ s, Br6c8 ≠ s
B-single: Br6c8 = w
P-single: Pr7c8 = ns
P-single: Pr7c9 = o
B-single: Br5c8 = w
P-single: Pr5c8 = ns
P-single: Pr5c9 = o
P-single: Pr6c9 = o
B-single: Br5c7 = e
whip[1]: Pr7c8{ns .} ==> Br7c8 ≠ e, Br7c8 ≠ n, Br7c8 ≠ o, Br7c7 ≠ o, Br7c7 ≠ s, Br7c8 ≠ s, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ nes
whip[1]: Br7c8{esw .} ==> Pr8c8 ≠ o, Pr8c8 ≠ se, Pr8c8 ≠ ew, Pr8c8 ≠ sw, Nr7c8 ≠ 0
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ nes, Br8c8 ≠ nw, Br8c8 ≠ swn, Br8c8 ≠ wne
whip[1]: Br8c7{se .} ==> Nr8c7 ≠ 0, Nr8c7 ≠ 3
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 0
whip[1]: Pr7c9{o .} ==> Br6c9 ≠ s, Br6c9 ≠ w, Br6c9 ≠ ns, Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c9 ≠ nes, Br7c8 ≠ ew, Br7c8 ≠ esw
whip[1]: Br7c8{sw .} ==> Nr7c8 ≠ 3
whip[1]: Br6c9{ne .} ==> Nr6c9 ≠ 3
whip[1]: Pr5c8{ns .} ==> Br4c8 ≠ e, Br4c8 ≠ n, Br4c8 ≠ o, Br4c7 ≠ n, Br4c7 ≠ o, Br4c7 ≠ s, Br4c7 ≠ w, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br4c8 ≠ s, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ nes
whip[1]: Br4c8{wne .} ==> Pr4c8 ≠ o, Pr4c8 ≠ ne, Pr4c8 ≠ nw, Pr4c8 ≠ ew, Nr4c8 ≠ 0
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ nes, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn
whip[1]: Br4c7{wne .} ==> Nr4c7 ≠ 0
whip[1]: Pr5c9{o .} ==> Br4c8 ≠ ew, Br4c8 ≠ wne, Br5c9 ≠ n, Br5c9 ≠ w, Br5c9 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ nes
whip[1]: Br5c9{se .} ==> Nr5c9 ≠ 3
whip[1]: Br4c8{nw .} ==> Nr4c8 ≠ 3
whip[1]: Pr6c9{o .} ==> Br5c9 ≠ s, Br5c9 ≠ se, Br6c9 ≠ n, Br6c9 ≠ ne
whip[1]: Br6c9{e .} ==> Nr6c9 ≠ 2, Pr6c10 ≠ ew
P-single: Pr6c10 = ns
whip[1]: Pr6c10{ns .} ==> Br6c9 ≠ o, Br5c9 ≠ o, Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ se, Br5c10 ≠ sw, Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ se
B-single: Br5c9 = e
N-single: Nr5c9 = 1
B-single: Br6c9 = e
N-single: Nr6c9 = 1
whip[1]: Pr5c6{ns .} ==> Br4c6 ≠ e, Br4c6 ≠ n, Br4c5 ≠ n, Br4c5 ≠ s, Br4c5 ≠ w, Br4c6 ≠ s
B-single: Br4c6 = w
B-single: Br4c5 = e
P-single: Pr4c6 = ns
P-single: Pr5c5 = o
w[1]-1-in-r5c4-symmetric-ne-corner ==> Pr6c4 ≠ sw, Pr6c4 ≠ ne
w[1]-1-in-r6c3-asymmetric-ne-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ ns
w[1]-1-in-r7c2-symmetric-ne-corner ==> Pr8c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ o
w[1]-1-in-r3c6-asymmetric-sw-corner ==> Pr3c7 ≠ ew, Pr3c7 ≠ se, Pr3c7 ≠ nw, Pr3c7 ≠ ns
whip[1]: Pr4c6{ns .} ==> Br3c6 ≠ e, Br3c6 ≠ n, Br3c5 ≠ n, Br3c5 ≠ s, Br3c5 ≠ w, Br3c6 ≠ s
B-single: Br3c6 = w
P-single: Pr4c7 = o
B-single: Br3c5 = e
P-single: Pr3c5 = o
P-single: Pr3c6 = ns
P-single: Pr4c5 = o
whip[1]: Pr4c7{o .} ==> Br3c7 ≠ s, Br3c7 ≠ w, Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br4c7 ≠ ne, Br4c7 ≠ ew, Br4c7 ≠ wne
B-single: Br4c7 = e
N-single: Nr4c7 = 1
whip[1]: Pr4c8{se .} ==> Br3c8 ≠ ne, Br3c8 ≠ o, Br3c8 ≠ n, Br3c8 ≠ e
whip[1]: Br3c8{nes .} ==> Nr3c8 ≠ 0
whip[1]: Br3c7{ne .} ==> Nr3c7 ≠ 3
whip[1]: Pr3c5{o .} ==> Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ nes, Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes
whip[1]: Br3c4{sw .} ==> Nr3c4 ≠ 3
whip[1]: Br2c5{ne .} ==> Nr2c5 ≠ 3
whip[1]: Pr3c6{ns .} ==> Br2c6 ≠ e, Br2c6 ≠ n, Br2c6 ≠ o, Br2c5 ≠ n, Br2c5 ≠ o, Br2c6 ≠ s, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ se, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ nes
whip[1]: Br2c6{wne .} ==> Nr2c6 ≠ 0
whip[1]: Br2c5{ne .} ==> Nr2c5 ≠ 0
whip[1]: Pr4c5{o .} ==> Br3c4 ≠ s, Br3c4 ≠ sw, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br4c4 ≠ nes
whip[1]: Br4c4{sw .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ se, Pr4c4 ≠ ew, Nr4c4 ≠ 3
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 2
whip[1]: Pr3c7{ne .} ==> Br2c7 ≠ wne, Br2c7 ≠ nes
whip[1]: Br2c7{swn .} ==> Pr3c7 ≠ o, Pr3c8 ≠ ne, Pr3c8 ≠ ns
P-single: Pr3c7 = ne
whip[1]: Pr3c7{ne .} ==> Br3c7 ≠ o, Br2c6 ≠ w, Br2c6 ≠ nw, Br3c7 ≠ e
whip[1]: Br3c7{ne .} ==> Nr3c7 ≠ 0
whip[1]: Br2c6{wne .} ==> Nr2c6 ≠ 1
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ esw, Br2c8 ≠ nw, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn, Br2c8 ≠ wne, Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ wne, Br2c8 ≠ w, Br3c8 ≠ s
B-single: Br2c7 = swn
whip[1]: Pr5c5{o .} ==> Br4c4 ≠ s, Br4c4 ≠ sw, Br5c4 ≠ n, Br5c4 ≠ e
whip[1]: Br5c4{w .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ ew
whip[1]: Pr5c4{sw .} ==> Vr5c4 ≠ 0, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ w, Br5c3 ≠ n, Br5c3 ≠ s, Br5c3 ≠ w, Br5c4 ≠ s
V-single: Vr5c4 = 1
B-single: Br5c4 = w
P-single: Pr6c4 = ns
V-single: Vr6c4 = 1
B-single: Br5c3 = e
P-single: Pr5c4 = ns
V-single: Vr4c4 = 1
vertical-line-r4{c3 c4} ==> Ir4c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir6c3 = out
no-vertical-line-r6{c2 c3} ==> Ir6c2 = out
no-horizontal-line-{r6 r7}c2 ==> Ir7c2 = out
no-vertical-line-r7{c2 c3} ==> Ir7c3 = out
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-r3{c3 c4} ==> Hr3c4 = 1
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
whip[1]: Pr6c4{ns .} ==> Br6c4 ≠ e, Br6c4 ≠ n, Br6c3 ≠ n, Br6c3 ≠ s, Br6c3 ≠ w, Br6c4 ≠ s
B-single: Br6c4 = w
B-single: Br6c3 = e
P-single: Pr6c3 = o
P-single: Pr7c4 = ns
whip[1]: Pr6c3{o .} ==> Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br5c2 ≠ nes, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes
whip[1]: Br6c2{sw .} ==> Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew, Nr6c2 ≠ 3
whip[1]: Br5c2{nw .} ==> Nr5c2 ≠ 3
whip[1]: Pr7c4{ns .} ==> Br7c4 ≠ n, Br7c4 ≠ o, Br7c3 ≠ n, Br7c3 ≠ o, Br7c3 ≠ s, Br7c3 ≠ w, Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ sw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ nes
whip[1]: Br7c4{esw .} ==> Pr8c4 ≠ o, Pr8c4 ≠ se, Pr8c4 ≠ ew, Pr8c4 ≠ sw, Nr7c4 ≠ 0, Nr7c4 ≠ 2
whip[1]: Pr8c4{nw .} ==> Br8c3 ≠ ne, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c4 ≠ nw, Br8c4 ≠ swn
whip[1]: Br7c3{esw .} ==> Nr7c3 ≠ 0
whip[1]: Pr7c3{sw .} ==> Br7c2 ≠ n, Br7c2 ≠ e
whip[1]: Br7c2{w .} ==> Pr7c2 ≠ ne, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Pr7c2 ≠ se, Pr7c2 ≠ ew, Pr7c3 ≠ sw
P-single: Pr7c3 = o
whip[1]: Pr7c3{o .} ==> Br6c2 ≠ s, Br6c2 ≠ sw, Br7c3 ≠ ew, Br7c3 ≠ esw
whip[1]: Br7c3{se .} ==> Nr7c3 ≠ 3
whip[1]: Br6c2{w .} ==> Nr6c2 ≠ 2
whip[1]: Pr5c4{ns .} ==> Br4c4 ≠ o, Br4c3 ≠ s, Br4c3 ≠ ns, Br4c3 ≠ sw, Br4c3 ≠ swn
B-single: Br4c4 = w
N-single: Nr4c4 = 1
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ nes, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ w
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 0
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 0
whip[1]: Hr8c3{1 .} ==> Br8c3 ≠ o, Pr8c3 ≠ o, Pr8c3 ≠ sw, Pr8c4 ≠ ne, Pr8c4 ≠ ns, Br7c3 ≠ e, Br8c3 ≠ e, Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ esw
P-single: Pr8c4 = nw
B-single: Br7c3 = se
N-single: Nr7c3 = 2
whip[1]: Pr8c4{nw .} ==> Br8c4 ≠ n, Br7c4 ≠ esw, Br8c4 ≠ w, Br8c4 ≠ ns, Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw
B-single: Br7c4 = w
N-single: Nr7c4 = 1
whip[1]: Br8c4{se .} ==> Pr9c4 ≠ nw, Nr8c4 ≠ 3
P-single: Pr9c4 = o
whip[1]: Pr9c4{o .} ==> Br8c3 ≠ ns, Br8c3 ≠ swn, Br8c4 ≠ s, Br8c4 ≠ se, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ esw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c3 ≠ nes
whip[1]: Br9c3{sw .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ se, Pr9c3 ≠ ew, Nr9c3 ≠ 3
whip[1]: Br8c4{e .} ==> Nr8c4 ≠ 2
whip[1]: Br8c3{nw .} ==> Nr8c3 ≠ 0, Nr8c3 ≠ 3
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ sw, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c2 ≠ o, Br8c2 ≠ s, Br8c2 ≠ w, Br8c2 ≠ ne
whip[1]: Br8c2{swn .} ==> Nr8c2 ≠ 0
whip[1]: Hr8c2{1 .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ nw, Pr8c3 ≠ se, Br7c2 ≠ w, Br8c2 ≠ e, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw
P-single: Pr8c3 = ew
B-single: Br7c2 = s
V-single: Vr7c2 = 0
w[1]-3-in-r6c1-isolated-at-se-corner ==> Hr7c1 = 1
w[1]-3-in-r6c1-closed-se-corner ==> Pr6c1 ≠ se
w[1]-3-in-r6c1-closed-sw-corner ==> Pr6c2 ≠ sw, Pr6c2 ≠ o
P-single: Pr6c1 = ns
H-single: Hr6c1 = 0
V-single: Vr5c1 = 1
P-single: Pr6c2 = ns
V-single: Vr5c2 = 1
P-single: Pr7c2 = nw
P-single: Pr8c2 = ew
H-single: Hr8c1 = 1

LOOP[78]: Hr3c3-Vr3c4-Vr4c4-Vr5c4-Vr6c4-Vr7c4-Hr8c3-Hr8c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr10c4-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Vr8c11-Vr7c11-Hr7c10-Vr6c10-Vr5c10-Hr5c10-Vr4c11-Hr4c10-Vr3c10-Hr3c9-Vr2c9-Hr2c9-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Vr1c8-Hr2c7-Vr2c7-Hr3c7-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c8-Vr8c9-Hr9c9-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c7-Vr9c7-Hr10c6-Vr9c6-Vr8c6-Vr7c6-Vr6c6-Vr5c6-Vr4c6-Vr3c6-Vr2c6-Hr2c5-Vr1c5-Hr1c4-Vr1c4-Hr2c3- ==> Vr2c3 = 0
w[1]-diagonal-3-2-in-{r1c1...r2c2}-non-closed-se-corner ==> Hr3c2 = 1
horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
horizontal-line-{r7 r8}c1 ==> Ir7c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1

LOOP[10]: Vr4c1-Vr5c1-Vr6c1-Hr7c1-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2- ==> Hr4c1 = 0
w[0]-adjacent-3-in-r4c2-nolines-west ==> Vr3c2 = 1
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
w[1]-3-in-r1c1-hit-by-verti-line-at-sw ==> Vr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne, Pr2c1 ≠ o

LOOP[94]: Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Hr7c1-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Hr3c2-Hr3c3-Vr3c4-Vr4c4-Vr5c4-Vr6c4-Vr7c4-Hr8c3-Hr8c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr10c4-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Vr8c11-Vr7c11-Hr7c10-Vr6c10-Vr5c10-Hr5c10-Vr4c11-Hr4c10-Vr3c10-Hr3c9-Vr2c9-Hr2c9-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Vr1c8-Hr2c7-Vr2c7-Hr3c7-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c8-Vr8c9-Hr9c9-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c7-Vr9c7-Hr10c6-Vr9c6-Vr8c6-Vr7c6-Vr6c6-Vr5c6-Vr4c6-Vr3c6-Vr2c6-Hr2c5-Vr1c5-Hr1c4-Vr1c4-Hr2c3- ==> Hr2c2 = 1
horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOOXOOOXXX
XXXXXOXXOO
XOOXXOOXXO
XXOXXOOXXX
XOOXXOOXXO
XOOXXOOXXO
OOOXXOOXXX
XXXXXOOOXX
XOXXXOXOOX
XOOXXXXXXX

.———.   .   .———.   .   .   .———.———.———.
| 3 |       | 3 | 2   0   2 |         3 |
.   .———.———.   .———.   .———.   .———.———.
|     2       0     |   | 3     | 3
.   .———.———.   .   .   .———.   .———.   .
|   |       |     1 | 1     |       |
.   .———.   .   .   .   .   .   .   .———.
| 1   3 |   |     1 | 1     |     0   3 |
.   .———.   .   .   .   .   .   .   .———.
| 2 |     1 | 1   1 | 1   1 | 1     | 2
.   .   .   .   .   .   .   .   .   .   .
| 3 |     1 | 1   1 | 1   1 | 1     | 2
.———.   .   .   .   .   .   .   .   .———.
  2   1     |     1 | 1     |     0   2 |
.———.———.———.   .   .   .   .———.   .   .
|                 1 | 1         |       |
.   .———.   .   .   .   .———.   .———.   .
|   | 3 |     0     |   | 3 |     3 |   |
.   .   .———.   .   .———.   .———.———.   .
| 3 |       | 2   1   2   1           2 |
.———.   .   .———.———.———.———.———.———.———.

init-time = 4m 34.01s, solve-time = 2m 10.19s, total-time = 6m 44.2s
nb-facts=<Fact-168919>
Quasi-Loop max length = 94
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
