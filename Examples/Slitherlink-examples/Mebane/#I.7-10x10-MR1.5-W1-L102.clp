Mellon rating = 1.5


(solve 
10 10 
. . 1 1 . . 1 1 . . 
. . 3 3 . . 2 2 . . 
1 3 . . 2 3 . . 1 1 
1 3 . . 1 2 . . 2 2 
. . 2 1 . . 1 1 . . 
. . 1 2 . . 1 3 . . 
3 2 . . 2 3 . . 2 1 
1 3 . . 3 1 . . 2 1 
. . 2 1 . . 3 2 . . 
. . 2 2 . . 3 1 . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 1 1 . . 1 1 . .
. . 3 3 . . 2 2 . .
1 3 . . 2 3 . . 1 1
1 3 . . 1 2 . . 2 2
. . 2 1 . . 1 1 . .
. . 1 2 . . 1 3 . .
3 2 . . 2 3 . . 2 1
1 3 . . 3 1 . . 2 1
. . 2 1 . . 3 2 . .
. . 2 2 . . 3 1 . .

start init-grid-structure 0.0285599231719971
start create-csp-variables
start create-labels 0.00151300430297852
start init-physical-csp-links 0.0120937824249268
start init-physical-non-csp-links 11.6002178192139
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.67965221405029
     start init-physical-BN-non-csp-links at local time 14.1441900730133
     start init-physical-BP-non-csp-links at local time 26.6866772174835
     end init-physical-BP-non-csp-links at local time 292.612311124802
end init-physical-non-csp-links 304.212570905685
start init-corner-B-c-values 304.241405010223
start init-outer-B-candidates 304.241462945938
start init-outer-I-candidates 304.242267847061
start init-H-candidates 304.242750883102
start init-V-candidates 304.246974945068
start init-P-candidates 304.25089097023
start init-inner-I-candidates 304.257488965988
start init-inner-N-and-B-candidates 304.260007858276
start solution 304.272056102753
entering BRT
w[1]-diagonal-3s-in-{r7c6...r8c5} ==> Vr7c7 = 1, Vr8c5 = 1, Hr9c5 = 1, Hr7c6 = 1, Vr6c7 = 0, Vr9c5 = 0, Hr9c4 = 0, Hr7c7 = 0
w[1]-diagonal-3s-in-{r7c1...r8c2} ==> Vr8c3 = 1, Vr7c1 = 1, Hr9c2 = 1, Hr7c1 = 1, Vr9c3 = 0, Vr6c1 = 0, Hr9c3 = 0
w[1]-2-in-r9c3-open-nw-corner ==> Hr10c3 = 1, Vr9c4 = 1, Hr10c4 = 0, Vr10c4 = 0
w[1]-2-in-r10c4-open-nw-corner ==> Hr11c4 = 1, Vr10c5 = 1, Hr11c5 = 0
w[1]-diagonal-3s-in-{r2c3...r3c2} ==> Vr2c4 = 1, Vr3c2 = 1, Hr4c2 = 1, Hr2c3 = 1, Vr1c4 = 0, Vr4c2 = 0, Hr4c1 = 0, Hr2c4 = 0
w[1]-3-in-r4c2-hit-by-verti-line-at-nw ==> Vr4c3 = 1, Hr5c2 = 1
w[1]-2-in-r5c3-open-nw-corner ==> Hr6c3 = 1, Vr5c4 = 1, Hr6c4 = 0, Vr6c4 = 0
w[1]-2-in-r6c4-open-nw-corner ==> Hr7c4 = 1, Vr6c5 = 1, Hr7c5 = 0, Vr7c5 = 0
w[1]-2-in-r7c5-open-nw-corner ==> Hr8c5 = 1, Vr7c6 = 1, Hr8c6 = 0, Vr8c6 = 0
w[1]-3-in-r3c2-hit-by-verti-line-at-se ==> Hr3c2 = 1
w[1]-3-in-r2c4-hit-by-horiz-line-at-nw ==> Vr2c5 = 1, Hr3c4 = 1
w[0]-adjacent-3-in-r2c3-nolines-south ==> Vr2c3 = 1, Vr1c3 = 0, Hr2c2 = 0
w[1]-2-in-r3c5-open-nw-corner ==> Hr4c5 = 1, Vr3c6 = 1, Hr4c6 = 0, Vr4c6 = 0
w[1]-2-in-r4c6-open-nw-corner ==> Hr5c6 = 1, Vr4c7 = 1, Hr5c7 = 0, Vr5c7 = 0
w[1]-3+diagonal-2-isolated-end-in-{r3c6+r4c6...se} ==> Vr3c7 = 1, Hr3c6 = 1, Vr2c7 = 0, Hr4c7 = 0, Hr3c7 = 0
w[1]-2-in-r2c7-open-sw-corner ==> Hr2c7 = 1, Vr2c8 = 1, Hr2c8 = 0, Vr1c8 = 0
w[1]-diagonal-1-1-in-{r6c7...r5c8}-with-no-sw-outer-sides ==> Hr5c8 = 0, Vr5c9 = 0
w[1]-1+diagonal-2s-3+1-in-r5c4+r5c3+r6c3 ==> Hr7c3 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr6c3 = 0
w[1]-3+diagonal-2-isolated-end-in-{r7c1+r7c2...ne} ==> Vr6c2 = 0
w[1]-3+diagonal-2-isolated-end-in-{r8c2+r7c2...ne} ==> Hr8c3 = 0
w[1]-diagonal-1-1-in-{r5c4...r4c5}-with-no-ne-inner-sides ==> Hr5c5 = 0, Vr4c5 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r7 r8} ==> Hr8c10 = 0
w[1]-adjacent-1-3-on-edge-in-r10{c8 c7} ==> Vr10c9 = 0, Hr11c7 = 1, Hr10c8 = 0
w[1]-adjacent-1-3-on-edge-in-{r8 r7}c1 ==> Vr8c2 = 0, Hr9c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c1 c2} ==> Vr3c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r1 r2}c3 ==> Hr1c3 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r1 r2}c7-fwd-diag-2s-3 ==> Vr1c7 = 0, Hr1c7 = 0
w[1]-3-in-r8c5-closed-sw-corner ==> Pr8c6 ≠ sw, Pr8c6 ≠ ne
w[1]-3-in-r8c5-closed-nw-corner ==> Pr9c6 ≠ se, Pr9c6 ≠ nw, Pr9c6 ≠ o
w[1]-3-in-r8c2-closed-se-corner ==> Pr8c2 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ o
w[1]-3-in-r7c6-closed-nw-corner ==> Pr8c7 ≠ se, Pr8c7 ≠ nw, Pr8c7 ≠ o
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
w[1]-3-in-r4c2-closed-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r3c6-closed-ne-corner ==> Pr4c6 ≠ sw, Pr4c6 ≠ ne
w[1]-3-in-r3c6-closed-nw-corner ==> Pr4c7 ≠ se, Pr4c7 ≠ nw
w[1]-3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
w[1]-3-in-r3c2-closed-nw-corner ==> Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o
w[1]-3-in-r2c4-closed-sw-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
w[1]-3-in-r2c3-closed-nw-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
adjacent-3s-in-c7{r9 r10} ==> Hr10c7 = 1, Hr9c7 = 1, Hr10c6 = 0
w[1]-diagonal-3-1-in-{r9c7...r8c6}-open-end ==> Vr9c8 = 1
w[1]-diagonal-3-2-in-{r10c7...r9c8}-non-closed-ne-corner ==> Vr9c9 = 1, Vr10c7 = 1, Hr11c6 = 0
w[1]-3-in-r10c7-closed-nw-corner ==> Pr11c8 ≠ nw, Pr11c8 ≠ o
w[1]-3-in-r9c7-closed-se-corner ==> Pr9c7 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ o
w[1]-3-in-r9c7-closed-ne-corner ==> Pr10c7 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ o
w[1]-diagonal-3-1-in-{r6c8...r5c7}-open-end ==> Vr6c9 = 1, Hr7c8 = 1
w[1]-2-in-r7c9-open-nw-corner ==> Hr8c9 = 1, Vr7c10 = 1, Vr8c10 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r7{c10 c9}-fwd-diag-2s-3 ==> Vr7c11 = 0, Hr7c10 = 0
w[1]-3-in-r6c8-closed-se-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
P-single: Pr11c4 = ew
H-single: Hr11c3 = 1
w[1]-1-in-r8c6-asymmetric-se-corner ==> Pr8c6 ≠ ew, Pr8c6 ≠ ns
P-single: Pr6c4 = nw
P-single: Pr7c5 = nw
P-single: Pr8c6 = nw
w[1]-1-in-r5c4-asymmetric-sw-corner ==> Pr5c5 ≠ ew, Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ ns
w[1]-1-in-r6c3-asymmetric-ne-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ ns
w[1]-1-in-r8c1-symmetric-ne-corner ==> Pr9c1 ≠ ne, Pr9c1 ≠ o
w[1]-1-in-r7c10-asymmetric-sw-corner ==> Pr7c11 ≠ nw, Pr7c11 ≠ ns
w[1]-1-in-r5c7-asymmetric-se-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ew, Pr5c7 ≠ ns, Pr5c7 ≠ ne
P-single: Pr4c6 = nw
P-single: Pr5c7 = nw
w[1]-1-in-r3c1-asymmetric-se-corner ==> Pr3c1 ≠ ns, Pr3c1 ≠ ne
w[1]-1-in-r1c3-asymmetric-se-corner ==> Pr1c3 ≠ sw, Pr1c3 ≠ ew
entering level Loop with <Fact-93778>
entering level Col with <Fact-93890>
no-vertical-line-r7{c10 c11} ==> Ir7c10 = out
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = out
no-horizontal-line-{r7 r8}c10 ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
horizontal-line-{r6 r7}c8 ==> Ir6c8 = out
vertical-line-r6{c8 c9} ==> Ir6c9 = in
vertical-line-r7{c0 c1} ==> Ir7c1 = in
horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
no-vertical-line-r6{c1 c2} ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-vertical-line-r6{c3 c4} ==> Ir6c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
vertical-line-r3{c1 c2} ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
no-vertical-line-r1{c2 c3} ==> Ir1c3 = out
no-vertical-line-r1{c3 c4} ==> Ir1c4 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
vertical-line-r2{c3 c4} ==> Ir2c3 = in
vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
vertical-line-r2{c7 c8} ==> Ir2c8 = out
no-horizontal-line-{r1 r2}c8 ==> Ir1c8 = out
no-vertical-line-r1{c7 c8} ==> Ir1c7 = out
no-vertical-line-r1{c6 c7} ==> Ir1c6 = out
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-vertical-line-r6{c5 c6} ==> Ir6c6 = in
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = in
vertical-line-r7{c6 c7} ==> Ir7c6 = out
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = out
no-vertical-line-r8{c5 c6} ==> Ir8c5 = out
vertical-line-r8{c4 c5} ==> Ir8c4 = in
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = in
no-vertical-line-r9{c4 c5} ==> Ir9c5 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
horizontal-line-{r9 r10}c3 ==> Ir9c3 = out
no-vertical-line-r9{c2 c3} ==> Ir9c2 = out
horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = in
vertical-line-r8{c2 c3} ==> Ir8c3 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
vertical-line-r10{c4 c5} ==> Ir10c5 = out
horizontal-line-{r10 r11}c7 ==> Ir10c7 = in
no-vertical-line-r10{c7 c8} ==> Ir10c8 = in
no-vertical-line-r10{c8 c9} ==> Ir10c9 = in
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = in
no-horizontal-line-{r8 r9}c8 ==> Ir8c8 = in
no-vertical-line-r8{c7 c8} ==> Ir8c7 = in
horizontal-line-{r8 r9}c7 ==> Ir9c7 = out
no-vertical-line-r9{c6 c7} ==> Ir9c6 = out
no-horizontal-line-{r9 r10}c6 ==> Ir10c6 = out
vertical-line-r9{c8 c9} ==> Ir9c9 = out
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
same-colour-in-{r8 r9}c9 ==> Hr9c9 = 0
w[1]-2-in-r8c9-open-se-corner ==> Vr8c9 = 1, Hr8c8 = 0
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
w[0]-adjacent-3-in-r9c7-nolines-west ==> Vr8c7 = 1
w[0]-adjacent-3-in-r8c5-nolines-east ==> Vr9c6 = 1
w[1]-3-in-r7c6-hit-by-verti-line-at-se ==> Hr8c7 = 0
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
different-colours-in-r8{c3 c4} ==> Hr8c4 = 1
different-colours-in-r9{c1 c2} ==> Hr9c2 = 1
w[1]-3-in-r8c2-hit-by-verti-line-at-sw ==> Hr8c2 = 1
w[1]-3-in-r8c2-closed-ne-corner ==> Pr9c2 ≠ sw, Pr9c2 ≠ ne, Pr9c2 ≠ o
P-single: Pr8c2 = ne
H-single: Hr8c1 = 0
V-single: Vr7c2 = 1
w[1]-3-in-r7c1-closed-ne-corner ==> Pr8c1 ≠ ne, Pr8c1 ≠ o
no-horizontal-line-{r6 r7}c2 ==> Ir7c2 = out
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1

LOOP[10]: Vr9c1-Vr8c1-Vr7c1-Hr7c1-Vr7c2-Hr8c2-Vr8c3-Hr9c2-Vr9c2- ==> Hr10c1 = 0
no-horizontal-line-{r9 r10}c1 ==> Ir10c1 = in
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1

LOOP[12]: Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Hr7c1-Vr7c2-Hr8c2-Vr8c3-Hr9c2-Vr9c2- ==> Vr10c2 = 0
no-vertical-line-r10{c1 c2} ==> Ir10c2 = in
same-colour-in-r10{c2 c3} ==> Vr10c3 = 0
w[1]-1-in-r9c4-asymmetric-sw-corner ==> Pr9c5 ≠ ew, Pr9c5 ≠ se, Pr9c5 ≠ nw, Pr9c5 ≠ ns
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-{r9 r10}c2 ==> Hr10c2 = 1
same-colour-in-r7{c7 c8} ==> Vr7c8 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c7 c8} ==> Hr6c7 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r5 r6}c8 ==> Vr6c8 = 1
w[1]-3-in-r6c8-closed-sw-corner ==> Pr6c9 ≠ sw, Pr6c9 ≠ ne, Pr6c9 ≠ o
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
same-colour-in-r4{c0 c1} ==> Vr4c1 = 0
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
same-colour-in-{r0 r1}c6 ==> Hr1c6 = 0
same-colour-in-{r0 r1}c8 ==> Hr1c8 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
different-colours-in-r6{c9 c10} ==> Hr6c10 = 1
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
same-colour-in-r6{c10 c11} ==> Vr6c11 = 0
Starting_init_links_with_<Fact-95682>
2146 candidates, 6969 csp-links and 26167 links. Density = 1.14%
starting non trivial part of solution
Entering_level_W1_with_<Fact-161959>
whip[1]: Vr6c11{0 .} ==> Br6c10 ≠ nes, Br6c11 ≠ w, Pr6c11 ≠ ns, Pr6c11 ≠ sw, Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw, Br6c10 ≠ wne
B-single: Br6c11 = o
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ e, Br5c10 ≠ s
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ e, Br8c11 ≠ w, Pr8c11 ≠ ns, Pr8c11 ≠ sw, Pr9c11 ≠ ns, Pr9c11 ≠ nw
B-single: Br8c11 = o
w[1]-1-in-r7c10-symmetric-se-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ esw, Br6c9 ≠ nes, Br6c10 ≠ sw, Br6c10 ≠ swn, Br7c9 ≠ sw, Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ w, Br6c10 ≠ o, Br6c10 ≠ n, Br7c9 ≠ ne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Br7c10{w .} ==> Pr8c11 ≠ nw, Pr7c11 ≠ sw, Pr8c10 ≠ ew
P-single: Pr7c11 = o
P-single: Pr8c11 = o
w[1]-1-in-r8c10-symmetric-ne-corner ==> Pr9c10 ≠ sw, Pr9c10 ≠ ne, Pr9c10 ≠ o
whip[1]: Pr7c11{o .} ==> Br6c10 ≠ s, Br6c10 ≠ ns, Br7c10 ≠ n
B-single: Br7c10 = w
P-single: Pr7c10 = ns
whip[1]: Pr7c10{ns .} ==> Br6c9 ≠ s, Br6c9 ≠ ns, Br6c9 ≠ sw, Br6c9 ≠ swn, Br7c9 ≠ ns, Br7c9 ≠ nw
whip[1]: Br7c9{ew .} ==> Pr7c9 ≠ ne, Pr7c9 ≠ ew
whip[1]: Br6c9{wne .} ==> Pr6c10 ≠ o, Pr6c10 ≠ ne, Pr6c10 ≠ nw, Pr6c10 ≠ ew, Nr6c9 ≠ 0
whip[1]: Pr6c10{sw .} ==> Br5c9 ≠ se, Br5c9 ≠ esw, Br5c9 ≠ nes, Br5c10 ≠ esw
whip[1]: Br6c10{nw .} ==> Nr6c10 ≠ 0, Nr6c10 ≠ 3
whip[1]: Pr8c11{o .} ==> Br8c10 ≠ n
whip[1]: Pr9c10{ew .} ==> Br8c9 ≠ se, Br9c9 ≠ sw, Br9c9 ≠ wne, Br9c9 ≠ nes, Br9c10 ≠ se, Br9c9 ≠ o, Br9c9 ≠ s, Br9c9 ≠ w, Br9c9 ≠ ne, Br9c10 ≠ o, Br9c10 ≠ e, Br9c10 ≠ s
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0
whip[1]: Br9c9{swn .} ==> Nr9c9 ≠ 0
whip[1]: Pr8c10{nw .} ==> Br8c9 ≠ ne, Br8c9 ≠ sw
whip[1]: Pr9c11{sw .} ==> Br9c10 ≠ nw, Br9c10 ≠ ew, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ n, Br9c10 ≠ ns
whip[1]: Hr4c4{1 .} ==> Br4c4 ≠ esw, Br3c4 ≠ o, Br4c4 ≠ o, Pr4c4 ≠ o, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c4 ≠ sw, Pr4c5 ≠ ns, Pr4c5 ≠ se, Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ w, Br3c4 ≠ ne, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ wne, Br4c4 ≠ e, Br4c4 ≠ s, Br4c4 ≠ w, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c5{ew .} ==> Br3c5 ≠ sw, Br4c4 ≠ wne, Br4c4 ≠ nes, Br3c5 ≠ ne, Br4c4 ≠ ne, Br4c5 ≠ w
whip[1]: Br4c5{s .} ==> Pr5c5 ≠ ne, Pr5c6 ≠ nw
whip[1]: Pr5c6{ew .} ==> Br4c6 ≠ sw, Br5c5 ≠ sw, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ se, Br4c6 ≠ ne, Br5c5 ≠ o, Br5c5 ≠ s, Br5c5 ≠ w, Br5c5 ≠ ne, Br5c6 ≠ o, Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{nes .} ==> Nr5c6 ≠ 0
whip[1]: Br5c5{swn .} ==> Nr5c5 ≠ 0
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ swn, Br4c5 ≠ s, Br5c4 ≠ n, Br5c4 ≠ e, Br5c5 ≠ n, Br5c5 ≠ ns
whip[1]: Br5c5{esw .} ==> Pr5c6 ≠ ew, Pr6c6 ≠ o, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c6 ≠ sw
whip[1]: Pr6c6{nw .} ==> Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ nes, Br6c5 ≠ ne, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br5c6 ≠ n
whip[1]: Br5c4{w .} ==> Pr6c5 ≠ ns, Pr6c5 ≠ nw, Pr5c4 ≠ se, Pr5c4 ≠ ew, Pr5c5 ≠ sw
P-single: Pr5c5 = o
whip[1]: Pr5c5{o .} ==> Br4c4 ≠ ns, Br4c4 ≠ swn, Br5c5 ≠ ew, Br5c5 ≠ esw
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 3
whip[1]: Br4c4{nw .} ==> Nr4c4 ≠ 3
whip[1]: Pr5c4{nw .} ==> Br4c3 ≠ w, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ sw, Br4c3 ≠ swn, Br5c3 ≠ ne, Br5c3 ≠ sw, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ s, Br4c4 ≠ n
B-single: Br4c4 = nw
N-single: Nr4c4 = 2
P-single: Pr4c4 = se
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ s, Br3c3 ≠ e, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br4c3 ≠ ne, Br4c3 ≠ wne, Br4c3 ≠ nes
whip[1]: Br4c3{esw .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ ew, Nr4c3 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ esw, Br3c2 ≠ nes, Br4c2 ≠ swn, Br4c3 ≠ se, Br4c3 ≠ e
whip[1]: Br4c3{esw .} ==> Pr5c3 ≠ o, Nr4c3 ≠ 1
P-single: Pr5c3 = nw
whip[1]: Pr5c3{nw .} ==> Br5c2 ≠ s, Br5c2 ≠ e, Br5c2 ≠ o, Br4c2 ≠ wne, Br4c3 ≠ esw, Br5c2 ≠ w, Br5c2 ≠ ne, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ ew
B-single: Br5c3 = se
P-single: Pr5c4 = ns
B-single: Br4c3 = ew
N-single: Nr4c3 = 2
w[1]-1-in-r5c4-asymmetric-nw-corner ==> Pr6c5 ≠ ew
P-single: Pr6c5 = se
whip[1]: Pr5c4{ns .} ==> Br5c4 ≠ s
B-single: Br5c4 = w
whip[1]: Pr6c5{se .} ==> Br6c5 ≠ w, Br6c5 ≠ s, Br6c5 ≠ e, Br6c5 ≠ n, Br6c5 ≠ o, Br5c5 ≠ e, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c4 ≠ sw, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw
B-single: Br5c5 = se
N-single: Nr5c5 = 2
P-single: Pr6c6 = nw
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ n, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c6 ≠ w, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ nes
whip[1]: Br6c6{se .} ==> Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr6c7 ≠ sw, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Nr6c6 ≠ 3
whip[1]: Pr7c6{ew .} ==> Br7c5 ≠ sw, Br7c6 ≠ esw, Br6c6 ≠ o, Br6c6 ≠ e, Br7c5 ≠ ne
whip[1]: Br6c6{se .} ==> Pr7c7 ≠ o, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ se, Nr6c6 ≠ 0
whip[1]: Pr7c7{sw .} ==> Br7c7 ≠ nw, Br7c7 ≠ swn, Br7c7 ≠ wne
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 0, Nr6c5 ≠ 1
whip[1]: Pr6c3{ew .} ==> Br6c2 ≠ sw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c2 ≠ o, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ ne, Br6c3 ≠ e, Br6c3 ≠ s, Br6c3 ≠ w
B-single: Br6c3 = n
P-single: Pr6c3 = ew
P-single: Pr7c3 = o
P-single: Pr7c4 = se
whip[1]: Pr6c3{ew .} ==> Br6c2 ≠ e, Br5c2 ≠ n, Br5c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw
whip[1]: Br6c2{swn .} ==> Pr6c2 ≠ o, Pr6c2 ≠ ns, Pr6c2 ≠ nw, Pr6c2 ≠ sw, Nr6c2 ≠ 0
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ se, Br5c1 ≠ esw, Br5c1 ≠ nes, Br6c1 ≠ wne, Br6c1 ≠ nes, Br6c1 ≠ ne
whip[1]: Br5c2{swn .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ nw, Nr5c2 ≠ 0, Nr5c2 ≠ 1
whip[1]: Pr5c2{ew .} ==> Br4c2 ≠ esw, Br5c1 ≠ sw, Br5c1 ≠ wne, Br4c1 ≠ e, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ne
B-single: Br4c2 = nes
P-single: Pr4c3 = sw
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ w, Br3c2 ≠ wne, Br3c3 ≠ nw
B-single: Br3c2 = swn
P-single: Pr3c2 = se
P-single: Pr4c2 = ne
w[1]-1-in-r4c1-symmetric-ne-corner ==> Pr5c1 ≠ ne, Pr5c1 ≠ o
w[1]-1-in-r3c1-asymmetric-ne-corner ==> Pr4c1 ≠ se, Pr4c1 ≠ ns
whip[1]: Pr3c2{se .} ==> Br3c1 ≠ w, Br3c1 ≠ s, Br3c1 ≠ n, Br2c2 ≠ w, Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Br2c1 ≠ s, Br2c1 ≠ e, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ wne, Br2c1 ≠ nes, Br2c2 ≠ ne, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne
B-single: Br3c1 = e
P-single: Pr3c1 = o
P-single: Pr4c1 = o
w[1]-1-in-r4c1-symmetric-nw-corner ==> Pr5c2 ≠ se
P-single: Pr5c2 = ew
H-single: Hr5c1 = 1
V-single: Vr5c2 = 0
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
whip[1]: Pr3c1{o .} ==> Br2c1 ≠ w, Br2c1 ≠ nw
whip[1]: Br2c1{n .} ==> Pr2c1 ≠ ns, Pr2c1 ≠ se, Pr2c2 ≠ ns, Pr2c2 ≠ se, Pr2c2 ≠ sw, Nr2c1 ≠ 2, Nr2c1 ≠ 3
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ s, Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ wne
whip[1]: Br1c1{swn .} ==> Pr1c2 ≠ sw, Pr2c2 ≠ nw, Nr1c1 ≠ 2
whip[1]: Pr2c2{ew .} ==> Br1c2 ≠ nw, Br1c2 ≠ ew, Br1c2 ≠ wne, Br1c2 ≠ w
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ sw, Br1c2 ≠ esw
whip[1]: Pr4c1{o .} ==> Br4c1 ≠ n, Br4c1 ≠ w
B-single: Br4c1 = s
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ e, Br5c1 ≠ n, Br5c1 ≠ ns, Br5c1 ≠ ew
whip[1]: Br5c1{swn .} ==> Pr6c1 ≠ o, Pr6c1 ≠ se, Pr6c2 ≠ ne, Nr5c1 ≠ 0, Nr5c1 ≠ 1
whip[1]: Pr6c2{ew .} ==> Br5c2 ≠ swn, Br6c1 ≠ sw, Br6c1 ≠ o, Br6c1 ≠ s, Br6c1 ≠ w
B-single: Br5c2 = ns
N-single: Nr5c2 = 2
whip[1]: Br6c1{swn .} ==> Nr6c1 ≠ 0
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ e
whip[1]: Hr6c1{1 .} ==> Pr6c1 ≠ ns, Pr6c2 ≠ se, Br5c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ esw
P-single: Pr6c2 = ew
P-single: Pr6c1 = ne
B-single: Br5c1 = swn
N-single: Nr5c1 = 3
whip[1]: Pr6c2{ew .} ==> Br6c2 ≠ nw, Br6c2 ≠ swn
whip[1]: Br6c2{ns .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ ns, Nr6c2 ≠ 3
whip[1]: Pr7c2{sw .} ==> Br7c1 ≠ esw, Br7c2 ≠ nw, Br7c2 ≠ se, Br6c1 ≠ n
B-single: Br6c1 = ns
N-single: Nr6c1 = 2
P-single: Pr7c1 = se
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ nes
whip[1]: Br7c1{wne .} ==> Pr8c1 ≠ se
P-single: Pr8c1 = ns
w[1]-1-in-r8c1-asymmetric-nw-corner ==> Pr9c2 ≠ ew, Pr9c2 ≠ ns
whip[1]: Pr8c1{ns .} ==> Br8c1 ≠ e, Br8c1 ≠ n, Br7c1 ≠ swn, Br8c1 ≠ s
B-single: Br8c1 = w
P-single: Pr9c1 = ns
P-single: Pr9c2 = se
B-single: Br7c1 = wne
P-single: Pr7c2 = sw
whip[1]: Pr9c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ n, Br9c1 ≠ o, Br9c1 ≠ s, Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ swn, Br9c1 ≠ wne, Br9c1 ≠ nes
whip[1]: Br9c1{esw .} ==> Pr10c1 ≠ o, Pr10c1 ≠ se, Nr9c1 ≠ 0
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ swn, Br10c1 ≠ o, Br10c1 ≠ e
whip[1]: Br10c1{esw .} ==> Nr10c1 ≠ 0
whip[1]: Pr9c2{se .} ==> Br9c2 ≠ w, Br9c2 ≠ s, Br9c2 ≠ e, Br9c2 ≠ n, Br9c2 ≠ o, Br9c1 ≠ w, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br9c1 ≠ sw, Br9c2 ≠ ne, Br9c2 ≠ ns, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ sw, Br9c2 ≠ esw, Br9c2 ≠ nes
B-single: Br8c2 = nes
P-single: Pr11c5 = nw
P-single: Pr10c4 = nw
P-single: Pr8c3 = sw
P-single: Pr9c3 = nw
whip[1]: Pr11c5{nw .} ==> Br10c5 ≠ s, Br10c5 ≠ e, Br10c5 ≠ n, Br10c5 ≠ o, Br11c5 ≠ n, Br11c4 ≠ o, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ sw, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ se, Br10c5 ≠ sw, Br10c5 ≠ esw, Br10c5 ≠ swn, Br10c5 ≠ nes
B-single: Br10c4 = se
B-single: Br11c4 = n
B-single: Br11c5 = o
whip[1]: Pr11c6{ne .} ==> Br10c6 ≠ s, Br10c6 ≠ w, Br10c6 ≠ ns, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ wne, Br10c6 ≠ nes
whip[1]: Pr10c5{se .} ==> Br9c5 ≠ ne, Br9c5 ≠ sw, Br9c5 ≠ esw, Br9c5 ≠ swn, Br9c4 ≠ s, Br9c5 ≠ o, Br9c5 ≠ n, Br9c5 ≠ e
whip[1]: Br9c5{nes .} ==> Nr9c5 ≠ 0
whip[1]: Br9c4{w .} ==> Pr9c4 ≠ se, Pr9c5 ≠ sw
whip[1]: Pr9c5{ne .} ==> Br8c4 ≠ s, Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ nes, Br8c5 ≠ wne, Br8c5 ≠ nes, Br9c4 ≠ e, Br9c5 ≠ w, Br9c5 ≠ nw, Br9c5 ≠ ew, Br9c5 ≠ wne, Br9c4 ≠ n
B-single: Br9c4 = w
P-single: Pr9c4 = ns
P-single: Pr10c5 = se
whip[1]: Pr9c4{ns .} ==> Br8c4 ≠ e, Br8c4 ≠ n, Br8c4 ≠ o, Br8c3 ≠ n, Br8c3 ≠ o, Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ ns, Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn, Br8c3 ≠ nes, Br8c4 ≠ ne, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ sw
whip[1]: Br8c4{wne .} ==> Pr8c4 ≠ o, Pr8c4 ≠ ne, Pr8c4 ≠ nw, Pr8c4 ≠ ew, Nr8c4 ≠ 0
whip[1]: Pr8c4{sw .} ==> Br7c3 ≠ se, Br7c3 ≠ esw, Br7c3 ≠ nes, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn
whip[1]: Br8c3{wne .} ==> Nr8c3 ≠ 0
whip[1]: Pr10c5{se .} ==> Br10c5 ≠ w, Br10c5 ≠ ew
whip[1]: Br10c5{wne .} ==> Pr10c6 ≠ o, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Pr10c6 ≠ se, Nr10c5 ≠ 0, Nr10c5 ≠ 1
whip[1]: Pr10c6{sw .} ==> Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ swn, Br10c6 ≠ swn
whip[1]: Br8c5{swn .} ==> Pr8c5 ≠ nw, Pr8c5 ≠ ew, Pr9c5 ≠ o, Pr9c6 ≠ ne, Pr9c6 ≠ ns
P-single: Pr9c5 = ne
whip[1]: Pr9c5{ne .} ==> Br8c4 ≠ w, Br8c4 ≠ nw, Br9c5 ≠ s, Br9c5 ≠ se
whip[1]: Br9c5{nes .} ==> Nr9c5 ≠ 1
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 1
whip[1]: Pr9c6{sw .} ==> Br8c5 ≠ esw, Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ wne, Br8c6 ≠ w, Br9c6 ≠ o, Br9c6 ≠ e, Br9c6 ≠ s
B-single: Br8c5 = swn
P-single: Pr8c5 = se
whip[1]: Pr8c5{se .} ==> Br7c4 ≠ s, Br7c4 ≠ e, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c5 ≠ nw, Br7c5 ≠ ew, Br8c4 ≠ wne
B-single: Br8c4 = ew
N-single: Nr8c4 = 2
whip[1]: Pr8c4{sw .} ==> Br7c3 ≠ nw, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ w
whip[1]: Br7c3{wne .} ==> Nr7c3 ≠ 0
whip[1]: Br7c4{nw .} ==> Nr7c4 ≠ 3
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0
whip[1]: Br8c6{s .} ==> Pr8c7 ≠ sw
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ nes, Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ swn, Br8c7 ≠ wne, Br7c7 ≠ o, Br7c7 ≠ n, Br7c7 ≠ e, Br7c7 ≠ ne, Br8c7 ≠ o, Br8c7 ≠ e, Br8c7 ≠ s
whip[1]: Br8c7{nes .} ==> Nr8c7 ≠ 0
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Br7c6{wne .} ==> Pr7c6 ≠ ew
P-single: Pr7c6 = se
whip[1]: Pr7c6{se .} ==> Br6c5 ≠ swn, Br7c5 ≠ ns
B-single: Br7c5 = se
B-single: Br6c5 = nw
N-single: Nr6c5 = 2
whip[1]: Pr10c4{nw .} ==> Br9c3 ≠ ew, Br10c3 ≠ ne, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ sw
B-single: Br9c3 = se
P-single: Pr10c3 = ew
whip[1]: Pr10c3{ew .} ==> Br10c2 ≠ ne, Br10c2 ≠ w, Br10c2 ≠ s, Br10c2 ≠ e, Br10c2 ≠ o, Br9c2 ≠ nw, Br9c2 ≠ wne, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ sw, Br10c2 ≠ esw, Br10c2 ≠ wne, Br10c2 ≠ nes, Br10c3 ≠ nw
B-single: Br10c3 = ns
P-single: Pr11c3 = ew
B-single: Br9c2 = swn
N-single: Nr9c2 = 3
P-single: Pr10c2 = ne
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ n, Br11c3 ≠ o, Br11c2 ≠ o, Br10c2 ≠ nw
B-single: Br11c2 = n
B-single: Br11c3 = n
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ esw, Br10c1 ≠ n
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 1, Nr10c1 ≠ 3
N-single: Nr10c1 = 2
P-single: Pr11c1 = ne
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o, Br10c1 ≠ ne
B-single: Br10c1 = sw
P-single: Pr11c2 = ew
P-single: Pr10c1 = ns
B-single: Br11c1 = n
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ swn
B-single: Br10c2 = ns
N-single: Nr10c2 = 2
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ esw
B-single: Br9c1 = ew
N-single: Nr9c1 = 2
whip[1]: Pr8c3{sw .} ==> Br8c3 ≠ ne, Br8c3 ≠ e, Br7c3 ≠ ns, Br7c3 ≠ s, Br7c2 ≠ ne, Br7c2 ≠ ew, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br8c3 ≠ wne
B-single: Br8c3 = ew
N-single: Nr8c3 = 2
P-single: Pr8c4 = ns
whip[1]: Pr8c4{ns .} ==> Br7c4 ≠ n, Br7c4 ≠ o
whip[1]: Br7c4{nw .} ==> Nr7c4 ≠ 0
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 3
whip[1]: Pr7c2{sw .} ==> Br7c2 ≠ ns, Br6c2 ≠ ns
B-single: Br6c2 = n
N-single: Nr6c2 = 1
B-single: Br7c2 = sw
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Pr3c3{ew .} ==> Br2c3 ≠ esw, Br2c3 ≠ swn
whip[1]: Br2c3{nes .} ==> Pr2c3 ≠ o, Pr2c3 ≠ ns, Pr2c3 ≠ nw, Pr2c3 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Pr2c4 ≠ ew, Pr3c4 ≠ ew, Pr3c4 ≠ sw
P-single: Pr2c4 = sw
w[1]-1-in-r1c4-symmetric-sw-corner ==> Pr1c5 ≠ sw, Pr1c5 ≠ o
whip[1]: Pr2c4{sw .} ==> Br1c4 ≠ w, Br1c4 ≠ s, Br1c3 ≠ w, Br1c3 ≠ e, Br1c3 ≠ n, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes
B-single: Br2c4 = esw
P-single: Pr3c4 = ne
P-single: Pr3c5 = nw
B-single: Br1c3 = s
P-single: Pr1c3 = o
P-single: Pr1c4 = o
w[1]-1-in-r1c4-symmetric-nw-corner ==> Pr2c5 ≠ se
P-single: Pr2c5 = ns
H-single: Hr2c5 = 0
V-single: Vr1c5 = 1
vertical-line-r1{c4 c5} ==> Ir1c5 = in
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
whip[1]: Pr3c4{ne .} ==> Br3c3 ≠ n, Br2c3 ≠ nes, Br3c4 ≠ s, Br3c4 ≠ se
B-single: Br2c3 = wne
P-single: Pr2c3 = se
P-single: Pr3c3 = nw
B-single: Br3c3 = o
N-single: Nr3c3 = 0
whip[1]: Pr2c3{se .} ==> Br2c2 ≠ s, Br1c2 ≠ s, Br1c2 ≠ e, Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ swn, Br1c2 ≠ nes, Br2c2 ≠ ns, Br2c2 ≠ nes
B-single: Br2c2 = se
N-single: Nr2c2 = 2
P-single: Pr2c2 = o
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c1 = out
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
whip[1]: Pr2c2{o .} ==> Br1c1 ≠ e, Br1c1 ≠ swn, Br2c1 ≠ n
B-single: Br2c1 = o
N-single: Nr2c1 = 0
P-single: Pr2c1 = o
B-single: Br1c1 = o
N-single: Nr1c1 = 0
P-single: Pr1c1 = o
P-single: Pr1c2 = o
whip[1]: Pr1c2{o .} ==> Br1c2 ≠ n
B-single: Br1c2 = o
N-single: Nr1c2 = 0
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 1
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ s, Br2c5 ≠ e, Br2c5 ≠ n, Br2c5 ≠ o, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ nes, Br3c4 ≠ nes, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ ew
B-single: Br3c5 = se
P-single: Pr4c5 = ew
B-single: Br3c4 = ns
N-single: Nr3c4 = 2
w[1]-1-in-r4c5-asymmetric-nw-corner ==> Pr5c6 ≠ ns
P-single: Pr5c6 = se
whip[1]: Pr4c5{ew .} ==> Br4c5 ≠ e
B-single: Br4c5 = n
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ w, Br4c6 ≠ nw, Br4c6 ≠ ew, Br5c6 ≠ ew
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 1
whip[1]: Pr3c6{se .} ==> Br2c6 ≠ ne, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br3c6 ≠ nes, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ e
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Br3c6{wne .} ==> Pr3c7 ≠ o
whip[1]: Pr3c7{sw .} ==> Br2c7 ≠ sw
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0
whip[1]: Pr1c4{o .} ==> Br1c4 ≠ n
B-single: Br1c4 = e
P-single: Pr1c5 = se
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ nes
whip[1]: Br1c5{wne .} ==> Pr1c6 ≠ o, Pr1c6 ≠ se, Pr2c6 ≠ nw, Nr1c5 ≠ 0, Nr1c5 ≠ 1
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ se, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ o, Br1c6 ≠ e, Br1c6 ≠ s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr2c5{ns .} ==> Br1c5 ≠ swn, Br2c5 ≠ nw, Br2c5 ≠ wne
whip[1]: Br2c5{ew .} ==> Pr2c6 ≠ ew, Pr2c6 ≠ sw, Nr2c5 ≠ 3
whip[1]: Vr1c6{1 .} ==> Pr1c6 ≠ ew, Pr2c6 ≠ o, Pr2c6 ≠ se, Br1c5 ≠ nw, Br1c6 ≠ n, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nes
P-single: Pr1c6 = sw
B-single: Br1c5 = wne
N-single: Nr1c5 = 3
whip[1]: Br1c6{esw .} ==> Pr1c7 ≠ ew, Pr1c7 ≠ sw
w[1]-1-in-r1c7-symmetric-nw-corner ==> Pr2c8 ≠ nw
w[1]-1-in-r3c9-asymmetric-nw-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ ew, Pr4c10 ≠ ns, Pr4c10 ≠ ne
whip[1]: Pr5c10{ew .} ==> Br4c10 ≠ sw, Br5c9 ≠ sw, Br5c9 ≠ wne, Br4c10 ≠ ne, Br5c9 ≠ o, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ne
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Pr4c11{nw .} ==> Vr3c11 ≠ 0, Br3c10 ≠ w, Br3c10 ≠ n, Br3c10 ≠ s
V-single: Vr3c11 = 1
B-single: Br3c10 = e
H-single: Hr3c10 = 0
H-single: Hr4c10 = 0
V-single: Vr3c10 = 0
P-single: Pr5c11 = nw
H-single: Hr5c10 = 1
V-single: Vr4c11 = 1
V-single: Vr5c11 = 0
P-single: Pr3c11 = ns
V-single: Vr2c11 = 1
P-single: Pr4c11 = ns
P-single: Pr4c10 = o
H-single: Hr4c9 = 0
V-single: Vr4c10 = 0
w[1]-2-in-r4c9-open-ne-corner ==> Hr5c9 = 1, Vr4c9 = 1
P-single: Pr5c9 = ne
w[1]-1-in-r5c8-symmetric-ne-corner ==> Pr6c8 ≠ sw, Pr6c8 ≠ ne
w[1]-1-in-r6c7-asymmetric-ne-corner ==> Pr7c7 ≠ ew, Pr7c7 ≠ nw
P-single: Pr7c7 = sw
vertical-line-r2{c10 c11} ==> Ir2c10 = in
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
no-vertical-line-r3{c9 c10} ==> Ir3c9 = in
no-horizontal-line-{r3 r4}c9 ==> Ir4c9 = in
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
horizontal-line-{r4 r5}c10 ==> Ir5c10 = out
vertical-line-r4{c8 c9} ==> Ir4c8 = out
no-horizontal-line-{r4 r5}c8 ==> Ir5c8 = out
no-vertical-line-r5{c8 c9} ==> Ir5c9 = out
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
different-colours-in-{r5 r6}c9 ==> Hr6c9 = 1
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Hr3c10{0 .} ==> Br2c10 ≠ s, Br2c10 ≠ ns, Br2c10 ≠ se, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn, Br2c10 ≠ nes
whip[1]: Hr4c10{0 .} ==> Br4c10 ≠ ns, Br4c10 ≠ nw
whip[1]: Vr3c10{0 .} ==> Br3c9 ≠ e
whip[1]: Br3c9{w .} ==> Pr4c9 ≠ ne
whip[1]: Pr4c9{sw .} ==> Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ esw, Br3c8 ≠ nes, Br4c8 ≠ sw, Br4c9 ≠ nw, Br4c9 ≠ se, Br3c8 ≠ o, Br3c8 ≠ n, Br3c8 ≠ w, Br4c8 ≠ o, Br4c8 ≠ s, Br4c8 ≠ w
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 0
whip[1]: Br3c8{wne .} ==> Nr3c8 ≠ 0
whip[1]: Pr5c11{nw .} ==> Br5c10 ≠ o, Br4c10 ≠ ew, Br5c10 ≠ w, Br5c10 ≠ se, Br5c10 ≠ nes
B-single: Br4c10 = se
P-single: Pr5c10 = ew
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ e, Br4c9 ≠ ne, Br4c9 ≠ ew, Br5c9 ≠ ew, Br5c10 ≠ nw
B-single: Br5c10 = n
N-single: Nr5c10 = 1
P-single: Pr6c11 = o
P-single: Pr6c10 = sw
whip[1]: Pr6c11{o .} ==> Br6c10 ≠ nw
B-single: Br6c10 = w
N-single: Nr6c10 = 1
whip[1]: Pr6c10{sw .} ==> Br6c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ nw, Br6c9 ≠ ew
whip[1]: Br6c9{wne .} ==> Pr6c9 ≠ ns, Pr6c9 ≠ nw, Nr6c9 ≠ 1
whip[1]: Pr6c9{ew .} ==> Br5c9 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes, Br5c8 ≠ e
B-single: Br5c9 = ns
N-single: Nr5c9 = 2
whip[1]: Br5c8{w .} ==> Pr5c8 ≠ se
whip[1]: Br6c8{swn .} ==> Pr6c8 ≠ ew, Pr7c8 ≠ o, Pr7c8 ≠ ns, Pr7c8 ≠ nw, Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c8 ≠ sw, Pr7c9 ≠ o, Pr7c9 ≠ ns
P-single: Pr7c8 = ne
P-single: Pr6c8 = ns
w[1]-1-in-r6c7-asymmetric-se-corner ==> Pr6c7 ≠ ns, Pr6c7 ≠ ne
whip[1]: Pr7c8{ne .} ==> Br7c8 ≠ o, Br6c7 ≠ n, Br6c7 ≠ s, Br6c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ esw, Br7c7 ≠ nes, Br7c8 ≠ e, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne
B-single: Br6c7 = e
P-single: Pr6c7 = o
w[1]-1-in-r5c7-symmetric-sw-corner ==> Pr5c8 ≠ sw, Pr5c8 ≠ ne, Pr5c8 ≠ o
whip[1]: Pr6c7{o .} ==> Br5c6 ≠ wne, Br5c7 ≠ s, Br5c7 ≠ w, Br6c6 ≠ se
B-single: Br6c6 = s
N-single: Nr6c6 = 1
B-single: Br5c6 = nw
N-single: Nr5c6 = 2
whip[1]: Pr5c8{ew .} ==> Br4c7 ≠ nw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c7 ≠ o, Br4c7 ≠ n, Br4c7 ≠ w, Br4c8 ≠ n, Br4c8 ≠ e, Br4c8 ≠ ne
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 1
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Br7c8{nes .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ ns, Pr8c8 ≠ nw, Nr7c8 ≠ 0
whip[1]: Br7c7{sw .} ==> Nr7c7 ≠ 3
whip[1]: Pr6c8{ns .} ==> Br5c8 ≠ n, Br5c7 ≠ n, Br5c8 ≠ s, Br6c8 ≠ swn
B-single: Br6c8 = esw
P-single: Pr8c10 = nw
P-single: Pr6c9 = se
P-single: Pr7c9 = nw
B-single: Br5c8 = w
P-single: Pr5c8 = ns
B-single: Br5c7 = e
w[1]-1-in-r8c10-symmetric-nw-corner ==> Pr9c11 ≠ o
P-single: Pr9c11 = sw
H-single: Hr9c10 = 1
V-single: Vr9c11 = 1
vertical-line-r9{c10 c11} ==> Ir9c10 = in
different-colours-in-r9{c9 c10} ==> Hr9c10 = 1
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1
different-colours-in-{r10 r11}c10 ==> Hr11c10 = 1

LOOP[88]: Vr2c8-Hr2c7-Hr2c6-Vr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Hr2c3-Vr2c3-Hr3c2-Vr3c2-Hr4c2-Vr4c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Vr5c4-Vr4c4-Hr4c4-Hr4c5-Vr3c6-Hr3c6-Vr3c7-Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c4-Vr7c4-Vr8c4-Vr9c4-Hr10c3-Hr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c2-Vr7c2-Hr7c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Vr10c5-Hr10c5-Vr9c6-Hr9c5-Vr8c5-Hr8c5-Vr7c6-Hr7c6-Vr7c7-Vr8c7-Hr9c7-Vr9c8-Hr10c7-Vr10c7-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr9c10-Hr10c9-Vr9c9-Vr8c9-Hr8c9-Vr7c10-Vr6c10-Hr6c9-Vr6c9-Hr7c8-Vr6c8-Vr5c8-Vr4c8- ==> Vr3c8 = 0
no-vertical-line-r3{c7 c8} ==> Ir3c8 = in
same-colour-in-r3{c8 c9} ==> Vr3c9 = 0
different-colours-in-{r3 r4}c8 ==> Hr4c8 = 1
different-colours-in-{r2 r3}c8 ==> Hr3c8 = 1
whip[1]: Pr8c10{nw .} ==> Br7c9 ≠ ew, Br8c9 ≠ ew, Br8c10 ≠ w
B-single: Br8c10 = s
B-single: Br7c9 = se
whip[1]: Pr8c9{ew .} ==> Br7c8 ≠ nes, Br8c8 ≠ sw, Br8c8 ≠ wne, Br8c8 ≠ nes, Br7c8 ≠ ne, Br8c8 ≠ o, Br8c8 ≠ s, Br8c8 ≠ w, Br8c8 ≠ ne
whip[1]: Br8c8{swn .} ==> Nr8c8 ≠ 0
whip[1]: Br7c8{ns .} ==> Nr7c8 ≠ 3
whip[1]: Pr9c10{ew .} ==> Br9c10 ≠ sw, Br9c10 ≠ w
whip[1]: Br9c10{nes .} ==> Pr10c11 ≠ o, Pr10c11 ≠ sw, Pr10c10 ≠ ne, Nr9c10 ≠ 1
whip[1]: Pr10c11{nw .} ==> Br10c10 ≠ w, Br10c10 ≠ nes, Br10c10 ≠ o
whip[1]: Br10c10{esw .} ==> Nr10c10 ≠ 0
whip[1]: Pr6c9{se .} ==> Br6c9 ≠ ne
B-single: Br6c9 = wne
N-single: Nr6c9 = 3
whip[1]: Pr5c8{ns .} ==> Br4c7 ≠ s, Br4c7 ≠ ns, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ nes
whip[1]: Br4c8{wne .} ==> Pr4c8 ≠ o, Pr4c8 ≠ ne, Pr4c8 ≠ nw, Pr4c8 ≠ ew
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ nes, Br3c8 ≠ sw, Br3c8 ≠ swn
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Vr9c10{1 .} ==> Pr9c10 ≠ ew, Pr10c10 ≠ o, Pr10c10 ≠ se, Pr10c10 ≠ ew, Pr10c10 ≠ sw, Br9c9 ≠ n, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c10 ≠ ne, Br9c10 ≠ nes
P-single: Pr8c9 = se
P-single: Pr9c10 = se
B-single: Br9c10 = wne
N-single: Nr9c10 = 3
P-single: Pr10c11 = ns
whip[1]: Pr8c9{se .} ==> Br8c8 ≠ n, Br7c8 ≠ ns, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ swn, Br8c9 ≠ ns
B-single: Br8c9 = nw
B-single: Br7c8 = n
N-single: Nr7c8 = 1
whip[1]: Pr8c8{sw .} ==> Br8c7 ≠ ew, Br8c7 ≠ esw, Br8c7 ≠ n, Br8c7 ≠ ns
whip[1]: Pr9c9{nw .} ==> Br9c8 ≠ ne, Br9c8 ≠ sw
whip[1]: Pr10c11{ns .} ==> Br10c10 ≠ n, Br10c10 ≠ nw
whip[1]: Br10c10{esw .} ==> Pr11c11 ≠ o, Pr11c10 ≠ o, Pr11c10 ≠ nw, Nr10c10 ≠ 1
P-single: Pr11c11 = nw
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ esw, Br10c9 ≠ nes, Br10c9 ≠ o, Br10c9 ≠ n, Br10c9 ≠ w
whip[1]: Br10c9{wne .} ==> Nr10c9 ≠ 0
whip[1]: Pr10c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ sw, Br10c9 ≠ wne, Br10c9 ≠ s
whip[1]: Vr10c10{0 .} ==> Pr11c10 ≠ ne, Pr10c10 ≠ ns, Br10c9 ≠ e, Br10c9 ≠ ew, Br10c10 ≠ esw
P-single: Pr10c10 = nw
P-single: Pr11c10 = ew
B-single: Br10c10 = se
N-single: Nr10c10 = 2
whip[1]: Pr10c10{nw .} ==> Br9c9 ≠ e, Br9c9 ≠ ew
whip[1]: Br9c9{esw .} ==> Pr10c9 ≠ ns, Pr10c9 ≠ sw, Nr9c9 ≠ 1
whip[1]: Pr10c9{ew .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br10c9 ≠ swn, Br10c8 ≠ e
B-single: Br10c9 = ns
N-single: Nr10c9 = 2
P-single: Pr11c9 = ew
w[1]-1-in-r10c8-asymmetric-se-corner ==> Pr10c8 ≠ ew, Pr10c8 ≠ ns
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ w, Br10c8 ≠ n, Br11c9 ≠ o, Br11c8 ≠ o
B-single: Br11c8 = n
B-single: Br11c9 = n
B-single: Br10c8 = s
P-single: Pr11c8 = ew
P-single: Pr10c8 = nw
P-single: Pr10c9 = ne
whip[1]: Pr11c8{ew .} ==> Br11c7 ≠ o, Br10c7 ≠ esw, Br10c7 ≠ wne, Br10c7 ≠ nes
B-single: Br10c7 = swn
P-single: Pr11c7 = ne
P-single: Pr10c7 = se
B-single: Br11c7 = n
whip[1]: Pr11c7{ne .} ==> Br10c6 ≠ n, Br10c6 ≠ o, Br11c6 ≠ n, Br10c6 ≠ sw, Br10c6 ≠ esw
B-single: Br11c6 = o
P-single: Pr11c6 = o
whip[1]: Pr11c6{o .} ==> Br10c5 ≠ wne
B-single: Br10c5 = nw
N-single: Nr10c5 = 2
whip[1]: Pr10c6{ew .} ==> Br9c6 ≠ n, Br9c6 ≠ ne
whip[1]: Br10c6{ne .} ==> Nr10c6 ≠ 0, Nr10c6 ≠ 3
whip[1]: Pr10c7{se .} ==> Br9c6 ≠ ns, Br9c6 ≠ ew, Br9c6 ≠ nes, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br10c6 ≠ ne
B-single: Br10c6 = e
N-single: Nr10c6 = 1
P-single: Pr10c6 = nw
B-single: Br9c7 = nes
P-single: Pr9c8 = sw
B-single: Br9c6 = w
N-single: Nr9c6 = 1
P-single: Pr9c6 = sw
P-single: Pr9c7 = ne
w[1]-1-in-r8c6-symmetric-sw-corner ==> Pr8c7 ≠ ne
whip[1]: Pr10c6{nw .} ==> Br9c5 ≠ ns
B-single: Br9c5 = nes
N-single: Nr9c5 = 3
whip[1]: Pr9c8{sw .} ==> Br9c8 ≠ ns, Br8c7 ≠ ne, Br8c7 ≠ w, Br8c7 ≠ nes, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ esw
B-single: Br8c8 = e
N-single: Nr8c8 = 1
P-single: Pr8c8 = o
P-single: Pr9c9 = ns
B-single: Br8c7 = sw
N-single: Nr8c7 = 2
P-single: Pr8c7 = ns
B-single: Br9c8 = ew
whip[1]: Pr8c8{o .} ==> Br7c7 ≠ s, Br7c7 ≠ sw
B-single: Br7c7 = w
N-single: Nr7c7 = 1
whip[1]: Pr9c9{ns .} ==> Br9c9 ≠ se
B-single: Br9c9 = esw
N-single: Nr9c9 = 3
whip[1]: Pr8c7{ns .} ==> Br8c6 ≠ n, Br7c6 ≠ swn, Br8c6 ≠ s
B-single: Br8c6 = e
B-single: Br7c6 = wne
whip[1]: Vr10c11{1 .} ==> Br10c11 ≠ o
B-single: Br10c11 = w
whip[1]: Vr3c8{0 .} ==> Pr3c8 ≠ ns, Pr4c8 ≠ ns, Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ ew, Br3c7 ≠ wne, Br3c8 ≠ ew, Br3c8 ≠ wne
whip[1]: Br3c8{ns .} ==> Nr3c8 ≠ 3
whip[1]: Pr3c8{ew .} ==> Br2c7 ≠ nw, Br2c7 ≠ se, Br2c8 ≠ nw, Br2c8 ≠ ew, Br2c8 ≠ ne, Br3c8 ≠ e, Br3c8 ≠ s
whip[1]: Br3c8{ns .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ ns, Nr3c8 ≠ 1
N-single: Nr3c8 = 2
P-single: Pr4c8 = se
P-single: Pr3c9 = ew
H-single: Hr3c9 = 1
V-single: Vr2c9 = 0
no-vertical-line-r2{c8 c9} ==> Ir2c9 = out
different-colours-in-r2{c9 c10} ==> Hr2c10 = 1

LOOP[98]: Vr2c10-Hr3c9-Hr3c8-Vr2c8-Hr2c7-Hr2c6-Vr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Hr2c3-Vr2c3-Hr3c2-Vr3c2-Hr4c2-Vr4c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Vr5c4-Vr4c4-Hr4c4-Hr4c5-Vr3c6-Hr3c6-Vr3c7-Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c4-Vr7c4-Vr8c4-Vr9c4-Hr10c3-Hr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c2-Vr7c2-Hr7c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Vr10c5-Hr10c5-Vr9c6-Hr9c5-Vr8c5-Hr8c5-Vr7c6-Hr7c6-Vr7c7-Vr8c7-Hr9c7-Vr9c8-Hr10c7-Vr10c7-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr9c10-Hr10c9-Vr9c9-Vr8c9-Hr8c9-Vr7c10-Vr6c10-Hr6c9-Vr6c9-Hr7c8-Vr6c8-Vr5c8-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Hr5c10-Vr4c11-Vr3c11-Vr2c11- ==> Hr2c10 = 0
no-horizontal-line-{r1 r2}c10 ==> Ir1c10 = in
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1

LOOP[100]: Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Hr5c9-Vr4c9-Hr4c8-Vr4c8-Vr5c8-Vr6c8-Hr7c8-Vr6c9-Hr6c9-Vr6c10-Vr7c10-Hr8c9-Vr8c9-Vr9c9-Hr10c9-Vr9c10-Hr9c10-Vr9c11-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Vr10c7-Hr10c7-Vr9c8-Hr9c7-Vr8c7-Vr7c7-Hr7c6-Vr7c6-Hr8c5-Vr8c5-Hr9c5-Vr9c6-Hr10c5-Vr10c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Hr7c1-Vr7c2-Hr8c2-Vr8c3-Hr9c2-Vr9c2-Hr10c2-Hr10c3-Vr9c4-Vr8c4-Vr7c4-Hr7c4-Vr6c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Vr3c7-Hr3c6-Vr3c6-Hr4c5-Hr4c4-Vr4c4-Vr5c4-Hr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Hr3c2-Vr2c3-Hr2c3-Vr2c4-Hr3c4-Vr2c5-Vr1c5-Hr1c5-Vr1c6-Hr2c6-Hr2c7-Vr2c8-Hr3c8-Hr3c9-Vr2c10- ==> Vr1c10 = 0
no-vertical-line-r1{c9 c10} ==> Ir1c9 = in
different-colours-in-{r1 r2}c9 ==> Hr2c9 = 1
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1

LOOP[102]: Vr1c9-Hr2c9-Vr2c10-Hr3c9-Hr3c8-Vr2c8-Hr2c7-Hr2c6-Vr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Hr2c3-Vr2c3-Hr3c2-Vr3c2-Hr4c2-Vr4c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Vr5c4-Vr4c4-Hr4c4-Hr4c5-Vr3c6-Hr3c6-Vr3c7-Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c4-Vr7c4-Vr8c4-Vr9c4-Hr10c3-Hr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c2-Vr7c2-Hr7c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Vr10c5-Hr10c5-Vr9c6-Hr9c5-Vr8c5-Hr8c5-Vr7c6-Hr7c6-Vr7c7-Vr8c7-Hr9c7-Vr9c8-Hr10c7-Vr10c7-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr9c10-Hr10c9-Vr9c9-Vr8c9-Hr8c9-Vr7c10-Vr6c10-Hr6c9-Vr6c9-Hr7c8-Vr6c8-Vr5c8-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Hr5c10-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10- ==> Hr1c9 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OOOOXOOOXX
OOXOXXXOOX
OXXXXOXXXX
OOXOOOXOXX
XXXOOXXOOO
OOOOXXXOXO
XOOXXOXXXO
XXOXOOXXOO
XOOXXOOXOX
XXXXOOXXXX

.   .   .   .   .———.   .   .   .———.———.
          1   1 |   |     1   1 |       |
.   .   .———.   .   .———.———.   .———.   .
        | 3 | 3 |         2 | 2     |   |
.   .———.   .———.   .———.   .———.———.   .
  1 | 3           2 | 3 |         1   1 |
.   .———.   .———.———.   .   .———.   .   .
  1   3 |   |     1   2 |   |   | 2   2 |
.———.———.   .   .   .———.   .   .———.———.
|         2 | 1     |     1 | 1
.———.———.———.   .———.   .   .   .———.   .
          1   2 |         1 | 3 |   |
.———.   .   .———.   .———.   .———.   .   .
| 3 | 2     |     2 | 3 |         2 | 1
.   .———.   .   .———.   .   .   .———.   .
| 1   3 |   |   | 3   1 |       | 2   1
.   .———.   .   .———.   .———.   .   .———.
|   |     2 | 1     |     3 | 2 |   |   |
.   .———.———.   .———.   .———.   .———.   .
|         2   2 |       | 3   1         |
.———.———.———.———.   .   .———.———.———.———.

init-time = 5m 4.27s, solve-time = 2m 14.27s, total-time = 7m 18.54s
nb-facts=<Fact-169975>
Quasi-Loop max length = 102
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
