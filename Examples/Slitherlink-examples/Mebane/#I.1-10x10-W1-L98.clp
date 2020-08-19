

(solve 
10 10 
. 3 3 3 . . . 3 3 . 
3 . . . 3 . 3 . . 2
3 . 0 . 3 . 3 . . 1
3 . . . 2 . . 2 1 . 
. 3 3 3 . 3 . . . . 
. . . . 2 . 1 3 3 . 
. 3 3 . . 1 . . . 3
3 . . 1 . 3 . 1 . 3
3 . . 1 . 3 . . . 2
. 1 1 . . . 3 1 2 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 3 3 . . . 3 3 .
3 . . . 3 . 3 . . 2
3 . 0 . 3 . 3 . . 1
3 . . . 2 . . 2 1 .
. 3 3 3 . 3 . . . .
. . . . 2 . 1 3 3 .
. 3 3 . . 1 . . . 3
3 . . 1 . 3 . 1 . 3
3 . . 1 . 3 . . . 2
. 1 1 . . . 3 1 2 .

start init-grid-structure 0.0253028869628906
start create-csp-variables
start create-labels 0.00134587287902832
start init-physical-csp-links 0.0109829902648926
start init-physical-non-csp-links 10.4793820381165
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.22526383399963
     start init-physical-BN-non-csp-links at local time 12.4180228710175
     start init-physical-BP-non-csp-links at local time 23.5962419509888
     end init-physical-BP-non-csp-links at local time 340.106383800507
end init-physical-non-csp-links 350.585811853409
start init-corner-B-c-values 350.611387014389
start init-outer-B-candidates 350.611445903778
start init-outer-I-candidates 350.612244844437
start init-H-candidates 350.612679958344
start init-V-candidates 350.616478919983
start init-P-candidates 350.620070934296
start init-inner-I-candidates 350.628278017044
start init-inner-N-and-B-candidates 350.631514072418
start solution 350.644984960556
entering BRT
w[0]-0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
w[1]-diagonal-3s-in-{r9c6...r10c7} ==> Vr10c8 = 1, Vr9c6 = 1, Hr11c7 = 1, Hr9c6 = 1, Vr8c6 = 0, Hr11c8 = 0, Hr9c5 = 0
w[1]-diagonal-3s-in-{r7c2...r8c1} ==> Vr7c3 = 1, Vr8c1 = 1, Hr9c1 = 1, Hr7c2 = 1, Vr6c3 = 0, Vr9c1 = 0, Hr7c3 = 0
w[1]-diagonal-3s-in-{r6c9...r7c10} ==> Vr7c11 = 1, Vr6c9 = 1, Hr8c10 = 1, Hr6c9 = 1, Vr8c11 = 0, Vr5c9 = 0, Hr6c8 = 0
w[1]-diagonal-3s-in-{r4c1...r5c2} ==> Vr5c3 = 1, Vr4c1 = 1, Hr6c2 = 1, Hr4c1 = 1, Vr3c1 = 0, Hr6c3 = 0
w[1]-diagonal-3s-in-{r1c8...r2c7} ==> Vr1c9 = 1, Vr2c7 = 1, Hr3c7 = 1, Hr1c8 = 1, Vr3c7 = 0, Hr3c6 = 0, Hr1c9 = 0
w[1]-diagonal-3s-in-{r1c4...r2c5} ==> Vr2c6 = 1, Vr1c4 = 1, Hr3c5 = 1, Hr1c4 = 1, Vr3c6 = 0, Hr1c3 = 0
w[1]-diagonal-3s-in-{r1c2...r2c1} ==> Vr1c3 = 1, Vr2c1 = 1, Hr3c1 = 1, Hr1c2 = 1
w[1]-3-in-r9c1-hit-by-verti-line-at-nw ==> Vr9c2 = 1, Hr10c1 = 1
w[1]-3-in-r8c1-hit-by-verti-line-at-se ==> Hr8c1 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-ne ==> Vr8c10 = 1, Hr9c10 = 1
w[1]-3-in-r7c10-hit-by-verti-line-at-sw ==> Hr7c10 = 1
w[1]-3-in-r8c6-hit-by-verti-line-at-sw ==> Vr8c7 = 1, Hr8c6 = 1
w[1]-3-in-r9c6-hit-by-verti-line-at-ne ==> Hr10c6 = 1
w[1]-3-in-r7c3-hit-by-horiz-line-at-nw ==> Vr7c4 = 1, Hr8c3 = 1
w[0]-adjacent-3-in-r7c2-nolines-south ==> Vr7c2 = 1, Vr6c2 = 0, Hr7c1 = 0
w[1]-3-in-r6c8-hit-by-horiz-line-at-ne ==> Vr6c8 = 1, Hr7c8 = 1
w[0]-adjacent-3-in-r6c9-nolines-south ==> Vr6c10 = 1, Vr5c10 = 0, Hr6c10 = 0
w[1]-3-in-r5c3-hit-by-horiz-line-at-sw ==> Vr5c4 = 1, Hr5c3 = 1
w[1]-3-in-r5c2-hit-by-horiz-line-at-ne ==> Vr5c2 = 1
w[1]-3-in-r5c4-hit-by-horiz-line-at-nw ==> Vr5c5 = 1, Hr6c4 = 1
w[0]-adjacent-3-in-r7c3-nolines-north ==> Hr7c4 = 1
w[1]-2-in-r6c5-open-nw-corner ==> Hr7c5 = 1, Vr6c6 = 1, Hr7c6 = 0, Vr7c6 = 0
w[1]-diagonal-3-2-in-{r5c6...r6c5}-non-closed-sw-corner ==> Vr5c7 = 1, Hr5c6 = 1, Vr4c7 = 0, Hr5c7 = 0
w[1]-3-in-r3c7-hit-by-verti-line-at-nw ==> Vr3c8 = 1, Hr4c7 = 1
w[1]-2-in-r4c8-open-nw-corner ==> Hr5c8 = 1, Vr4c9 = 1, Hr5c9 = 0
w[1]-3-in-r2c7-hit-by-verti-line-at-se ==> Hr2c7 = 1
w[1]-3-in-r3c5-hit-by-verti-line-at-ne ==> Vr3c5 = 1, Hr4c5 = 1
w[0]-adjacent-3-in-r5c4-nolines-north ==> Hr5c5 = 1
w[1]-diagonal-3-2-in-{r5c6...r4c5}-non-closed-nw-corner ==> Hr6c6 = 1, Vr6c7 = 0, Hr6c7 = 0
w[1]-3-in-r5c6-hit-by-horiz-line-at-nw ==> Vr4c6 = 0
w[1]-3-in-r2c5-hit-by-verti-line-at-sw ==> Hr2c5 = 1
w[1]-3-in-r3c1-hit-by-verti-line-at-sw ==> Vr3c2 = 1
w[0]-adjacent-3-in-r4c1-nolines-east ==> Hr5c1 = 1, Vr5c1 = 0
w[1]-3-in-r2c1-hit-by-verti-line-at-se ==> Hr2c1 = 1
w[1]-3-in-r1c9-hit-by-horiz-line-at-nw ==> Vr1c10 = 1, Hr2c9 = 1
w[0]-adjacent-3-in-r1c8-nolines-south ==> Vr1c8 = 1, Hr1c7 = 0
w[1]-2-in-r2c10-open-nw-corner ==> Hr3c10 = 1, Vr2c11 = 1, Vr3c11 = 0
w[1]-3-in-r1c3-hit-by-horiz-line-at-ne ==> Hr2c3 = 1
w[0]-adjacent-3-in-r1c4-nolines-south ==> Vr1c5 = 1, Hr1c5 = 0
w[0]-adjacent-3-in-r1c2-nolines-south ==> Vr1c2 = 1, Hr1c1 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c2 c3} ==> Vr10c3 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c4{r8 r9} ==> Hr9c4 = 0
w[1]-adjacent-1-3-on-edge-in-r10{c8 c7} ==> Vr10c9 = 0, Hr10c8 = 0
w[1]-adjacent-1-2-on-edge-in-{r3 r2}c10-fwd-diag-2s-3 ==> Vr3c10 = 0, Hr4c10 = 0
w[1]-diagonal-1-1-in-{r3c10...r4c9}-with-no-sw-inner-sides ==> Hr4c9 = 0, Vr4c10 = 0
w[1]-3-in-r10c7-closed-se-corner ==> Pr10c7 ≠ se, Pr10c7 ≠ nw, Pr10c7 ≠ o
w[1]-3-in-r9c6-closed-sw-corner ==> Pr9c7 ≠ sw, Pr9c7 ≠ ne, Pr9c7 ≠ o
w[1]-3-in-r9c1-closed-se-corner ==> Pr9c1 ≠ se, Pr9c1 ≠ o
w[1]-3-in-r9c1-closed-ne-corner ==> Pr10c1 ≠ ne, Pr10c1 ≠ o
w[1]-3-in-r8c10-closed-sw-corner ==> Pr8c11 ≠ sw, Pr8c11 ≠ o
w[1]-3-in-r8c10-closed-nw-corner ==> Pr9c11 ≠ nw
w[1]-3-in-r8c6-closed-se-corner ==> Pr8c6 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ o
w[1]-3-in-r8c6-closed-ne-corner ==> Pr9c6 ≠ sw, Pr9c6 ≠ ne, Pr9c6 ≠ o
w[1]-3-in-r8c1-closed-sw-corner ==> Pr8c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ o
w[1]-3-in-r8c1-closed-nw-corner ==> Pr9c2 ≠ se, Pr9c2 ≠ nw, Pr9c2 ≠ o
w[1]-3-in-r7c10-closed-se-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw, Pr7c10 ≠ o
w[1]-3-in-r7c10-closed-ne-corner ==> Pr8c10 ≠ sw, Pr8c10 ≠ ne, Pr8c10 ≠ o
w[1]-3-in-r7c3-closed-sw-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-3-in-r7c3-closed-se-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ o
w[1]-3-in-r7c2-closed-nw-corner ==> Pr8c3 ≠ se, Pr8c3 ≠ nw, Pr8c3 ≠ o
w[1]-3-in-r6c9-closed-ne-corner ==> Pr7c9 ≠ sw, Pr7c9 ≠ ne, Pr7c9 ≠ o
w[1]-3-in-r6c8-closed-sw-corner ==> Pr6c9 ≠ sw, Pr6c9 ≠ ne, Pr6c9 ≠ o
w[1]-3-in-r6c8-closed-se-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
w[1]-3-in-r5c3-closed-ne-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r5c3-closed-nw-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ o
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-3-in-r5c2-closed-se-corner ==> Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ o
w[1]-3-in-r4c1-closed-sw-corner ==> Pr4c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ o
w[1]-3-in-r3c7-closed-se-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ nw, Pr3c7 ≠ o
w[1]-3-in-r3c7-closed-ne-corner ==> Pr4c7 ≠ sw, Pr4c7 ≠ ne, Pr4c7 ≠ o
w[1]-3-in-r3c5-closed-sw-corner ==> Pr3c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ o
w[1]-3-in-r3c5-closed-nw-corner ==> Pr4c6 ≠ se, Pr4c6 ≠ nw
w[1]-3-in-r3c1-closed-se-corner ==> Pr3c1 ≠ se, Pr3c1 ≠ o
w[1]-3-in-r3c1-closed-ne-corner ==> Pr4c1 ≠ ne, Pr4c1 ≠ o
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ o
w[1]-3-in-r2c7-closed-nw-corner ==> Pr3c8 ≠ se, Pr3c8 ≠ nw, Pr3c8 ≠ o
w[1]-3-in-r2c5-closed-se-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
w[1]-3-in-r2c5-closed-ne-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
w[1]-3-in-r2c1-closed-sw-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r2c1-closed-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-3-in-r1c9-closed-sw-corner ==> Pr1c10 ≠ sw, Pr1c10 ≠ o
w[1]-3-in-r1c9-closed-se-corner ==> Pr1c9 ≠ se, Pr1c9 ≠ o
w[1]-3-in-r1c8-closed-nw-corner ==> Pr2c9 ≠ se, Pr2c9 ≠ nw, Pr2c9 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
entering level Loop with <Fact-94379>
entering level Col with <Fact-95307>
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
no-vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
horizontal-line-{r6 r7}c5 ==> Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-vertical-line-r6{c2 c3} ==> Ir6c2 = out
no-vertical-line-r6{c1 c2} ==> Ir6c1 = out
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = out
vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
horizontal-line-{r3 r4}c1 ==> Ir3c1 = out
vertical-line-r3{c1 c2} ==> Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
vertical-line-r1{c3 c4} ==> Ir1c4 = in
vertical-line-r1{c4 c5} ==> Ir1c5 = out
no-vertical-line-r1{c5 c6} ==> Ir1c6 = out
no-vertical-line-r1{c6 c7} ==> Ir1c7 = out
vertical-line-r1{c7 c8} ==> Ir1c8 = in
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
no-vertical-line-r2{c7 c8} ==> Ir2c7 = in
vertical-line-r2{c6 c7} ==> Ir2c6 = out
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
no-vertical-line-r3{c5 c6} ==> Ir3c5 = out
horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
horizontal-line-{r4 r5}c3 ==> Ir5c3 = out
vertical-line-r5{c3 c4} ==> Ir5c4 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-vertical-line-r5{c5 c6} ==> Ir5c6 = out
vertical-line-r5{c6 c7} ==> Ir5c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
no-vertical-line-r4{c6 c7} ==> Ir4c6 = in
no-vertical-line-r4{c7 c8} ==> Ir4c8 = in
no-horizontal-line-{r3 r4}c8 ==> Ir3c8 = in
vertical-line-r3{c7 c8} ==> Ir3c7 = out
vertical-line-r4{c8 c9} ==> Ir4c9 = out
no-vertical-line-r4{c9 c10} ==> Ir4c10 = out
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-vertical-line-r3{c9 c10} ==> Ir3c9 = out
horizontal-line-{r2 r3}c10 ==> Ir2c10 = in
no-vertical-line-r2{c9 c10} ==> Ir2c9 = in
horizontal-line-{r1 r2}c9 ==> Ir1c9 = out
vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = out
no-vertical-line-r5{c8 c9} ==> Ir5c8 = out
no-horizontal-line-{r5 r6}c8 ==> Ir6c8 = out
vertical-line-r6{c7 c8} ==> Ir6c7 = in
no-vertical-line-r6{c6 c7} ==> Ir6c6 = in
vertical-line-r6{c8 c9} ==> Ir6c9 = in
vertical-line-r6{c9 c10} ==> Ir6c10 = out
no-horizontal-line-{r5 r6}c10 ==> Ir5c10 = out
horizontal-line-{r6 r7}c10 ==> Ir7c10 = in
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = out
vertical-line-r7{c1 c2} ==> Ir7c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir8c2 = in
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
horizontal-line-{r8 r9}c1 ==> Ir9c1 = out
vertical-line-r9{c1 c2} ==> Ir9c2 = in
no-horizontal-line-{r9 r10}c2 ==> Ir10c2 = in
no-vertical-line-r10{c1 c2} ==> Ir10c1 = in
no-vertical-line-r10{c2 c3} ==> Ir10c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c3 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
vertical-line-r7{c3 c4} ==> Ir7c3 = out
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = in
horizontal-line-{r7 r8}c6 ==> Ir8c6 = out
no-vertical-line-r8{c5 c6} ==> Ir8c5 = out
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
no-horizontal-line-{r9 r10}c5 ==> Ir10c5 = out
no-vertical-line-r10{c5 c6} ==> Ir10c6 = out
horizontal-line-{r9 r10}c6 ==> Ir9c6 = in
no-vertical-line-r9{c6 c7} ==> Ir9c7 = in
no-horizontal-line-{r8 r9}c7 ==> Ir8c7 = in
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = in
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
no-vertical-line-r10{c8 c9} ==> Ir10c9 = out
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = out
vertical-line-r10{c7 c8} ==> Ir10c7 = in
same-colour-in-{r9 r10}c7 ==> Hr10c7 = 0
w[0]-adjacent-3-in-r9c6-nolines-east ==> Vr10c7 = 1
w[1]-3-in-r10c7-closed-sw-corner ==> Pr10c8 ≠ sw, Pr10c8 ≠ ne, Pr10c8 ≠ o
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
different-colours-in-r9{c7 c8} ==> Hr9c8 = 1
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
w[1]-2-in-r10c9-open-sw-corner ==> Hr10c9 = 1, Vr10c10 = 1, Hr10c10 = 0
w[1]-2-in-r9c10-open-sw-corner ==> Vr9c11 = 1
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = in
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1
different-colours-in-{r10 r11}c10 ==> Hr11c10 = 1
same-colour-in-{r10 r11}c5 ==> Hr11c5 = 0
different-colours-in-r9{c4 c5} ==> Hr9c5 = 1
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-{r2 r3}c9 ==> Hr3c9 = 1
different-colours-in-r3{c8 c9} ==> Hr3c9 = 1
same-colour-in-r4{c10 c11} ==> Vr4c11 = 0
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
same-colour-in-{r0 r1}c6 ==> Hr1c6 = 0
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
Starting_init_links_with_<Fact-98148>
2149 candidates, 7301 csp-links and 27025 links. Density = 1.17%
starting non trivial part of solution
Entering_level_W1_with_<Fact-166805>
whip[1]: Vr6c1{0 .} ==> Br6c1 ≠ wne, Br6c0 ≠ e, Pr6c1 ≠ ns, Pr6c1 ≠ se, Pr7c1 ≠ ne, Pr7c1 ≠ ns, Br6c1 ≠ w, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn
B-single: Br6c0 = o
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ ew, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ nes, Br7c1 ≠ n, Br7c1 ≠ w
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Hr1c6{0 .} ==> Br1c6 ≠ nes, Br0c6 ≠ s, Pr1c6 ≠ se, Pr1c6 ≠ ew, Pr1c7 ≠ ew, Pr1c7 ≠ sw, Br1c6 ≠ n, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ swn, Br1c6 ≠ wne
B-single: Br0c6 = o
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c7 ≠ esw, Br1c7 ≠ nes, Br1c7 ≠ n, Br1c7 ≠ w
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ n, Br1c5 ≠ e, Br1c5 ≠ ns
whip[1]: Hr4c6{1 .} ==> Br4c6 ≠ esw, Br3c6 ≠ o, Br4c6 ≠ o, Pr4c6 ≠ ns, Pr4c7 ≠ ns, Pr4c7 ≠ se, Br3c6 ≠ n, Br3c6 ≠ e, Br3c6 ≠ w, Br3c6 ≠ ne, Br3c6 ≠ nw, Br3c6 ≠ ew, Br3c6 ≠ wne, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw
P-single: Pr4c6 = ew
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ ne, Br3c5 ≠ esw, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne
B-single: Br3c5 = swn
P-single: Pr3c5 = se
P-single: Pr4c5 = ne
whip[1]: Pr3c5{se .} ==> Br3c4 ≠ w, Br3c4 ≠ s, Br3c4 ≠ n, Br3c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ e, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ sw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes
B-single: Br2c5 = nes
P-single: Pr2c6 = sw
P-single: Pr3c6 = nw
whip[1]: Pr2c6{sw .} ==> Br2c6 ≠ ns, Br2c6 ≠ ne, Br2c6 ≠ s, Br2c6 ≠ e, Br2c6 ≠ n, Br2c6 ≠ o, Br1c6 ≠ w, Br1c6 ≠ s, Br1c5 ≠ ne, Br1c5 ≠ w, Br1c5 ≠ o, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ nes
whip[1]: Br2c6{esw .} ==> Pr2c7 ≠ nw, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Nr2c6 ≠ 0
whip[1]: Br1c6{e .} ==> Nr1c6 ≠ 2, Pr1c6 ≠ sw, Nr1c6 ≠ 3
P-single: Pr1c6 = o
whip[1]: Br1c5{sw .} ==> Pr1c5 ≠ se, Pr1c5 ≠ ew, Nr1c5 ≠ 0, Nr1c5 ≠ 3
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br1c4{nes .} ==> Pr1c5 ≠ o, Pr2c5 ≠ ew
P-single: Pr2c5 = ne
P-single: Pr1c5 = sw
whip[1]: Pr2c5{ne .} ==> Br2c4 ≠ n, Br1c4 ≠ nes, Br1c5 ≠ s, Br2c4 ≠ nw
B-single: Br1c5 = sw
N-single: Nr1c5 = 2
B-single: Br1c4 = wne
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes
B-single: Br1c3 = esw
P-single: Pr1c3 = sw
P-single: Pr2c3 = ne
P-single: Pr2c4 = nw
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Nr1c1 ≠ 0
whip[1]: Pr2c3{ne .} ==> Br2c3 ≠ o, Br2c2 ≠ n, Br1c2 ≠ nes, Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne
B-single: Br1c2 = wne
P-single: Pr1c2 = se
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ nw, Br1c1 ≠ swn
whip[1]: Br1c1{se .} ==> Pr1c1 ≠ se, Pr2c1 ≠ ne, Pr2c1 ≠ ns, Nr1c1 ≠ 3
P-single: Pr1c1 = o
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ esw, Br2c1 ≠ nes
whip[1]: Br2c1{wne .} ==> Pr2c1 ≠ o, Pr2c2 ≠ ns
P-single: Pr2c2 = nw
P-single: Pr2c1 = se
whip[1]: Pr2c2{nw .} ==> Br1c1 ≠ e, Br2c1 ≠ wne, Br2c2 ≠ w, Br2c2 ≠ sw
B-single: Br2c1 = swn
P-single: Pr3c1 = ne
B-single: Br1c1 = se
N-single: Nr1c1 = 2
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne
B-single: Br3c1 = nes
P-single: Pr4c1 = se
P-single: Pr3c2 = sw
P-single: Pr4c2 = nw
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ esw, Br4c1 ≠ nes
whip[1]: Br4c1{wne .} ==> Pr5c1 ≠ o, Pr5c1 ≠ se
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ swn, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{esw .} ==> Nr5c1 ≠ 0
whip[1]: Pr3c2{sw .} ==> Br3c2 ≠ ns, Br3c2 ≠ ne, Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ n, Br3c2 ≠ o, Br2c2 ≠ s, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes
B-single: Br2c2 = o
N-single: Nr2c2 = 0
P-single: Pr3c3 = o
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ ns, Br2c3 ≠ nes, Br3c2 ≠ ew, Br3c2 ≠ esw
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 0, Nr3c2 ≠ 3
whip[1]: Br2c3{ne .} ==> Nr2c3 ≠ 0, Nr2c3 ≠ 3
whip[1]: Pr4c2{nw .} ==> Br4c2 ≠ n, Br3c2 ≠ sw, Br4c1 ≠ wne, Br4c2 ≠ w, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ nes
B-single: Br4c1 = swn
P-single: Pr5c1 = ne
B-single: Br3c2 = w
N-single: Nr3c2 = 1
P-single: Pr4c3 = o
whip[1]: Pr5c1{ne .} ==> Br5c1 ≠ sw, Br5c1 ≠ esw
whip[1]: Br5c1{ne .} ==> Pr6c1 ≠ ne, Pr6c2 ≠ nw, Nr5c1 ≠ 3, Pr6c2 ≠ ew, Pr6c2 ≠ sw
P-single: Pr6c1 = o
whip[1]: Pr6c1{o .} ==> Br6c1 ≠ n, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nes
whip[1]: Br6c1{se .} ==> Nr6c1 ≠ 3
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ e, Br4c2 ≠ se, Br4c3 ≠ n, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes
whip[1]: Br4c3{se .} ==> Pr5c3 ≠ ns, Pr5c3 ≠ nw, Nr4c3 ≠ 3
whip[1]: Pr5c3{ew .} ==> Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ esw, Br4c3 ≠ o, Br4c3 ≠ e
whip[1]: Br4c3{se .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ ns, Nr4c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c3 ≠ se, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br5c4 ≠ swn, Br5c4 ≠ wne, Br4c4 ≠ w
B-single: Br4c3 = s
N-single: Nr4c3 = 1
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw, Br4c4 ≠ n, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nes
B-single: Br3c4 = e
N-single: Nr3c4 = 1
P-single: Pr3c4 = o
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ ne, Br2c4 ≠ w
B-single: Br2c4 = o
N-single: Nr2c4 = 0
B-single: Br2c3 = n
N-single: Nr2c3 = 1
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 3
whip[1]: Br5c4{nes .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr6c4 ≠ ns, Pr6c4 ≠ sw, Pr6c5 ≠ o, Pr6c5 ≠ ne, Pr6c5 ≠ ns, Pr6c5 ≠ ew, Pr6c5 ≠ sw
P-single: Pr7c6 = nw
P-single: Pr6c5 = nw
w[1]-1-in-r7c6-symmetric-nw-corner ==> Pr8c7 ≠ se, Pr8c7 ≠ nw, Pr8c7 ≠ o
whip[1]: Pr7c6{nw .} ==> Br7c6 ≠ n, Br7c5 ≠ s, Br7c5 ≠ e, Br7c5 ≠ o, Br6c6 ≠ s, Br6c6 ≠ e, Br6c6 ≠ n, Br6c6 ≠ o, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ se, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ nes, Br7c5 ≠ w, Br7c5 ≠ ne, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c6 ≠ w
B-single: Br6c5 = se
whip[1]: Pr6c6{se .} ==> Br5c5 ≠ ns, Br5c5 ≠ se, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ nes, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c5 ≠ s
whip[1]: Br5c6{nes .} ==> Pr5c6 ≠ ns, Pr5c6 ≠ sw, Pr5c7 ≠ o, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ se, Pr5c7 ≠ ew, Pr6c7 ≠ o, Pr6c7 ≠ se, Pr6c7 ≠ ew, Pr6c7 ≠ sw
P-single: Pr5c7 = sw
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ ns, Br5c7 ≠ ne, Br5c7 ≠ s, Br5c7 ≠ e, Br5c7 ≠ n, Br5c7 ≠ o, Br4c7 ≠ ns, Br4c7 ≠ w, Br4c7 ≠ s, Br4c6 ≠ ne, Br4c6 ≠ n, Br4c6 ≠ nes, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c7 ≠ nes, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ swn, Br5c7 ≠ wne, Br5c7 ≠ nes
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
P-single: Pr5c6 = ew
whip[1]: Pr5c6{ew .} ==> Br5c5 ≠ ne, Br5c5 ≠ w, Br5c5 ≠ e, Br5c5 ≠ o, Br4c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ wne, Br5c6 ≠ wne
B-single: Br5c6 = nes
P-single: Pr6c6 = se
P-single: Pr6c7 = nw
B-single: Br4c5 = ns
P-single: Pr5c5 = se
w[1]-1-in-r6c7-symmetric-nw-corner ==> Pr7c8 ≠ se, Pr7c8 ≠ nw, Pr7c8 ≠ o
whip[1]: Pr6c6{se .} ==> Br6c6 ≠ w, Br6c6 ≠ ew
whip[1]: Br6c6{wne .} ==> Pr7c7 ≠ nw, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Nr6c6 ≠ 0, Nr6c6 ≠ 1
whip[1]: Pr6c7{nw .} ==> Br6c7 ≠ n, Br5c7 ≠ sw, Br5c7 ≠ esw, Br6c6 ≠ wne, Br6c7 ≠ w
B-single: Br6c6 = nw
N-single: Nr6c6 = 2
whip[1]: Pr7c7{se .} ==> Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ nes, Br7c7 ≠ n, Br7c7 ≠ w
whip[1]: Br6c7{s .} ==> Pr6c8 ≠ ew, Pr6c8 ≠ sw
whip[1]: Pr6c8{ns .} ==> Br5c7 ≠ w, Br5c8 ≠ s, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ nes, Br6c8 ≠ swn, Br6c8 ≠ wne, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ e
B-single: Br5c7 = ew
N-single: Nr5c7 = 2
whip[1]: Pr5c8{se .} ==> Br4c8 ≠ ne, Br4c8 ≠ sw
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Br6c8{nes .} ==> Pr6c9 ≠ nw, Pr6c9 ≠ ew, Pr7c8 ≠ ns, Pr7c8 ≠ sw, Pr7c9 ≠ ns, Pr7c9 ≠ se, Pr7c9 ≠ ew
P-single: Pr7c9 = nw
whip[1]: Pr7c9{nw .} ==> Br7c9 ≠ n, Br7c8 ≠ s, Br7c8 ≠ e, Br7c8 ≠ o, Br6c9 ≠ esw, Br6c9 ≠ swn, Br6c9 ≠ nes, Br7c8 ≠ w, Br7c8 ≠ ne, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ w, Br7c9 ≠ ne, Br7c9 ≠ ns, Br7c9 ≠ nw, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ nes
B-single: Br6c9 = wne
P-single: Pr6c9 = se
P-single: Pr6c10 = sw
whip[1]: Pr6c9{se .} ==> Br5c9 ≠ w, Br5c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c9 ≠ ne, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br6c8 ≠ nes
B-single: Br6c8 = esw
P-single: Pr6c8 = ns
P-single: Pr7c8 = ne
w[1]-1-in-r6c7-asymmetric-ne-corner ==> Pr7c7 ≠ se
P-single: Pr7c7 = o
w[1]-1-in-r7c6-symmetric-ne-corner ==> Pr8c6 ≠ sw, Pr8c6 ≠ ne
whip[1]: Pr6c8{ns .} ==> Br6c7 ≠ s
B-single: Br6c7 = e
whip[1]: Pr7c8{ne .} ==> Br7c7 ≠ e, Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c8 ≠ nw, Br7c8 ≠ swn
whip[1]: Br7c8{ns .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ ns, Pr8c8 ≠ nw, Pr8c9 ≠ ne, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Nr7c8 ≠ 0, Nr7c8 ≠ 3
whip[1]: Br7c7{s .} ==> Pr8c7 ≠ ne, Pr8c7 ≠ ns, Nr7c7 ≠ 2, Nr7c7 ≠ 3
whip[1]: Pr8c7{sw .} ==> Br8c6 ≠ esw, Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ swn, Br8c7 ≠ wne, Br7c6 ≠ e, Br8c7 ≠ o, Br8c7 ≠ e, Br8c7 ≠ s
B-single: Br7c6 = s
P-single: Pr8c6 = ew
whip[1]: Pr8c6{ew .} ==> Br8c5 ≠ ne, Br8c5 ≠ w, Br8c5 ≠ s, Br8c5 ≠ e, Br8c5 ≠ o, Br7c5 ≠ n, Br7c5 ≠ nw, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ wne, Br8c5 ≠ nes, Br8c6 ≠ swn, Br8c6 ≠ wne
B-single: Br8c6 = nes
P-single: Pr8c7 = sw
P-single: Pr9c7 = nw
whip[1]: Pr8c7{sw .} ==> Br8c7 ≠ ns, Br8c7 ≠ ne, Br8c7 ≠ n, Br7c7 ≠ s, Br8c7 ≠ nes
B-single: Br7c7 = o
N-single: Nr7c7 = 0
w[1]-1-in-r8c8-symmetric-nw-corner ==> Pr9c9 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ o
whip[1]: Pr9c9{sw .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ swn, Br9c9 ≠ wne, Br8c8 ≠ n, Br8c8 ≠ w, Br9c9 ≠ o, Br9c9 ≠ e, Br9c9 ≠ s
whip[1]: Br9c9{nes .} ==> Nr9c9 ≠ 0
whip[1]: Br8c8{s .} ==> Hr8c8 ≠ 1, Vr8c8 ≠ 1, Pr9c8 ≠ ne, Pr9c8 ≠ ns, Pr8c8 ≠ se, Pr8c9 ≠ ew, Pr8c9 ≠ sw, Pr9c8 ≠ nw
V-single: Vr8c8 = 0
H-single: Hr8c8 = 0
P-single: Pr8c8 = o
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = in
same-colour-in-r8{c8 c9} ==> Vr8c9 = 0
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1
whip[1]: Vr8c8{0 .} ==> Br8c7 ≠ ew, Br8c7 ≠ esw
whip[1]: Br8c7{sw .} ==> Nr8c7 ≠ 0, Nr8c7 ≠ 3
whip[1]: Hr8c8{0 .} ==> Br7c8 ≠ ns
B-single: Br7c8 = n
N-single: Nr7c8 = 1
whip[1]: Vr8c9{0 .} ==> Pr8c9 ≠ se, Pr9c9 ≠ ne, Pr9c9 ≠ ns, Br8c8 ≠ e, Br8c9 ≠ w, Br8c9 ≠ nw, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ wne
P-single: Pr8c9 = o
B-single: Br8c8 = s
whip[1]: Pr8c9{o .} ==> Br7c9 ≠ s, Br7c9 ≠ se, Br8c9 ≠ n, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nes
whip[1]: Br8c9{se .} ==> Pr8c10 ≠ nw, Pr8c10 ≠ ew, Nr8c9 ≠ 3
whip[1]: Pr8c10{se .} ==> Br7c10 ≠ esw, Br7c10 ≠ swn, Br8c10 ≠ nes, Br8c9 ≠ o, Br8c9 ≠ s
whip[1]: Br8c9{se .} ==> Pr9c10 ≠ ew, Pr9c10 ≠ sw, Nr8c9 ≠ 0
whip[1]: Pr9c10{ns .} ==> Br8c9 ≠ se, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nes, Br9c10 ≠ nw, Br9c10 ≠ se, Br9c9 ≠ n
B-single: Br8c9 = e
N-single: Nr8c9 = 1
P-single: Pr9c9 = sw
whip[1]: Pr9c9{sw .} ==> Br9c8 ≠ ns, Br9c8 ≠ w, Br9c8 ≠ s, Br9c8 ≠ e, Br9c8 ≠ n, Br9c8 ≠ o, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ swn
whip[1]: Br9c8{nes .} ==> Pr10c9 ≠ ew, Pr10c9 ≠ sw, Nr9c8 ≠ 0, Nr9c8 ≠ 1
whip[1]: Pr10c9{ns .} ==> Br9c8 ≠ nes, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c8 ≠ n
whip[1]: Br10c8{w .} ==> Pr11c8 ≠ ne, Pr11c9 ≠ nw, Pr10c8 ≠ se, Pr10c8 ≠ ew
whip[1]: Pr10c8{nw .} ==> Br9c7 ≠ w, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ sw, Br9c7 ≠ swn, Br9c8 ≠ ne, Br10c7 ≠ wne, Br10c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ n, Br9c7 ≠ s
B-single: Br9c8 = wne
N-single: Nr9c8 = 3
P-single: Pr9c8 = se
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ sw, Br9c7 ≠ ne, Br9c7 ≠ wne, Br9c7 ≠ nes
B-single: Br8c7 = w
N-single: Nr8c7 = 1
whip[1]: Br9c7{esw .} ==> Nr9c7 ≠ 0
whip[1]: Br10c7{swn .} ==> Pr11c7 ≠ o, Pr11c7 ≠ nw, Pr11c7 ≠ ew, Pr11c8 ≠ o, Pr10c7 ≠ ne, Pr10c7 ≠ ew
P-single: Pr11c7 = ne
w[1]-1-in-r10c8-asymmetric-sw-corner ==> Pr10c9 ≠ ns
P-single: Pr10c9 = ne
whip[1]: Pr11c7{ne .} ==> Br10c6 ≠ n, Br10c6 ≠ o, Br11c7 ≠ o, Br11c6 ≠ n, Br10c6 ≠ s, Br10c6 ≠ w, Br10c6 ≠ ns, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ nes
B-single: Br11c6 = o
B-single: Br11c7 = n
whip[1]: Pr11c6{nw .} ==> Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c5 ≠ e, Br10c5 ≠ s
whip[1]: Br10c6{wne .} ==> Nr10c6 ≠ 0
whip[1]: Pr10c9{ne .} ==> Br9c9 ≠ w, Br9c9 ≠ ew, Br10c8 ≠ e, Br10c9 ≠ ew, Br10c9 ≠ sw
whip[1]: Br10c9{ns .} ==> Pr10c10 ≠ ns, Pr10c10 ≠ se
whip[1]: Pr10c10{sw .} ==> Br9c10 ≠ sw, Br10c10 ≠ nw
whip[1]: Br9c9{esw .} ==> Nr9c9 ≠ 1
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ esw, Br9c6 ≠ nes, Br9c7 ≠ se, Br9c7 ≠ esw, Br10c7 ≠ swn
B-single: Br10c7 = esw
P-single: Pr11c8 = nw
P-single: Pr10c8 = ns
w[1]-1-in-r10c8-asymmetric-nw-corner ==> Pr11c9 ≠ ew
P-single: Pr9c11 = sw
P-single: Pr10c10 = sw
P-single: Pr11c9 = o
whip[1]: Pr11c8{nw .} ==> Br10c8 ≠ s, Br11c8 ≠ n
B-single: Br11c8 = o
B-single: Br10c8 = w
whip[1]: Pr9c11{sw .} ==> Br9c10 ≠ ns, Br8c10 ≠ esw, Br8c10 ≠ wne, Br9c10 ≠ ew
B-single: Br9c10 = ne
P-single: Pr10c11 = ns
P-single: Pr9c10 = ne
B-single: Br8c10 = swn
P-single: Pr8c11 = nw
P-single: Pr8c10 = se
whip[1]: Pr10c11{ns .} ==> Br10c10 ≠ n, Br10c10 ≠ o, Br10c10 ≠ w, Br10c10 ≠ nes
whip[1]: Br10c10{esw .} ==> Pr11c11 ≠ o, Nr10c10 ≠ 0, Nr10c10 ≠ 1
P-single: Pr11c11 = nw
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr9c10{ne .} ==> Br9c9 ≠ esw
B-single: Br9c9 = sw
N-single: Nr9c9 = 2
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ wne
B-single: Br7c10 = nes
P-single: Pr7c11 = sw
P-single: Pr7c10 = ne
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ ne, Br6c10 ≠ w, Br6c10 ≠ e, Br6c10 ≠ n, Br6c10 ≠ o, Br6c10 ≠ nw, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw, Br6c10 ≠ wne, Br6c10 ≠ nes
whip[1]: Br6c10{swn .} ==> Pr6c11 ≠ ns, Pr6c11 ≠ sw, Nr6c10 ≠ 0
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ e, Br5c10 ≠ s
whip[1]: Pr7c10{ne .} ==> Br6c10 ≠ s, Br6c10 ≠ ns, Br7c9 ≠ e
B-single: Br7c9 = o
N-single: Nr7c9 = 0
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 1
whip[1]: Pr10c10{sw .} ==> Br10c9 ≠ ns, Br10c10 ≠ se
B-single: Br10c10 = esw
N-single: Nr10c10 = 3
P-single: Pr11c10 = ne
B-single: Br10c9 = ne
whip[1]: Pr11c10{ne .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Br9c7{ew .} ==> Nr9c7 ≠ 3
whip[1]: Br9c6{wne .} ==> Pr9c6 ≠ ew, Pr10c6 ≠ o, Pr10c6 ≠ se, Pr10c6 ≠ ew, Pr10c6 ≠ sw
P-single: Pr9c6 = se
whip[1]: Pr9c6{se .} ==> Br9c5 ≠ w, Br9c5 ≠ s, Br9c5 ≠ n, Br9c5 ≠ o, Br8c5 ≠ ns, Br8c5 ≠ swn, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ nw, Br9c5 ≠ sw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes
whip[1]: Br9c5{esw .} ==> Pr9c5 ≠ ne, Pr9c5 ≠ se, Pr9c5 ≠ ew, Nr9c5 ≠ 0
whip[1]: Br8c5{nw .} ==> Pr8c5 ≠ o, Pr8c5 ≠ ns, Pr8c5 ≠ nw, Pr8c5 ≠ sw, Nr8c5 ≠ 0, Nr8c5 ≠ 3
whip[1]: Pr8c5{ew .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes
whip[1]: Pr10c6{nw .} ==> Br10c5 ≠ nes, Br10c6 ≠ wne
whip[1]: Br10c6{ew .} ==> Nr10c6 ≠ 3
whip[1]: Pr9c7{nw .} ==> Br9c6 ≠ wne, Br9c7 ≠ ew
B-single: Br9c7 = e
N-single: Nr9c7 = 1
P-single: Pr10c7 = sw
B-single: Br9c6 = swn
P-single: Pr10c6 = ne
whip[1]: Pr10c7{sw .} ==> Br10c6 ≠ e, Br10c6 ≠ ew
B-single: Br10c6 = ne
N-single: Nr10c6 = 2
P-single: Pr11c6 = o
whip[1]: Pr11c6{o .} ==> Br11c5 ≠ n, Br10c5 ≠ se, Br10c5 ≠ esw
B-single: Br11c5 = o
whip[1]: Pr11c5{nw .} ==> Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ ew, Br10c4 ≠ sw, Br10c4 ≠ swn, Br10c4 ≠ wne, Br10c4 ≠ e, Br10c4 ≠ s
whip[1]: Br10c5{nw .} ==> Nr10c5 ≠ 3
whip[1]: Pr10c6{ne .} ==> Br10c5 ≠ n, Br9c5 ≠ se, Br9c5 ≠ esw, Br10c5 ≠ nw
whip[1]: Br10c5{w .} ==> Pr10c5 ≠ ne, Nr10c5 ≠ 2, Pr10c5 ≠ se, Pr10c5 ≠ ew
whip[1]: Br9c5{ew .} ==> Nr9c5 ≠ 3
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 0, Nr7c5 ≠ 1
whip[1]: Br5c9{nes .} ==> Pr5c9 ≠ ns, Pr5c9 ≠ sw, Nr5c9 ≠ 0
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ nw, Br4c9 ≠ n, Br4c9 ≠ e
whip[1]: Br4c9{w .} ==> Pr4c10 ≠ ns, Pr4c10 ≠ nw, Pr5c9 ≠ ne, Pr5c10 ≠ ne, Pr5c10 ≠ ns, Pr5c10 ≠ nw, Pr4c9 ≠ se, Pr4c9 ≠ ew, Pr4c10 ≠ se, Pr4c10 ≠ ew, Pr4c10 ≠ sw
w[1]-1-in-r3c10-symmetric-sw-corner ==> Pr3c11 ≠ sw
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ns, Br2c10 ≠ nw, Br2c10 ≠ sw, Br3c10 ≠ w, Br3c10 ≠ s
whip[1]: Br3c10{e .} ==> Pr4c10 ≠ ne, Pr4c11 ≠ nw, Pr4c11 ≠ sw, Pr3c10 ≠ ns, Pr3c10 ≠ se
P-single: Pr4c10 = o
whip[1]: Pr4c10{o .} ==> Br3c9 ≠ e, Br3c9 ≠ s, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes, Br4c10 ≠ n, Br4c10 ≠ w, Br4c10 ≠ ne, Br4c10 ≠ ns, Br4c10 ≠ nw, Br4c10 ≠ ew, Br4c10 ≠ sw, Br4c10 ≠ esw, Br4c10 ≠ swn, Br4c10 ≠ wne, Br4c10 ≠ nes
whip[1]: Br4c10{se .} ==> Nr4c10 ≠ 3
whip[1]: Br3c9{nw .} ==> Nr3c9 ≠ 3
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c9 ≠ wne, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ e, Br2c9 ≠ w, Br2c9 ≠ ne, Br2c10 ≠ ne, Br3c9 ≠ o, Br3c9 ≠ w
whip[1]: Br3c9{nw .} ==> Pr3c9 ≠ o, Pr3c9 ≠ ns, Pr3c9 ≠ nw, Pr3c9 ≠ sw, Nr3c9 ≠ 0
whip[1]: Pr3c9{ew .} ==> Br2c8 ≠ se, Br2c8 ≠ esw, Br2c8 ≠ nes, Br3c8 ≠ wne, Br3c8 ≠ nes, Br3c8 ≠ ne
whip[1]: Br2c10{ew .} ==> Pr2c11 ≠ nw, Pr2c10 ≠ ne, Pr2c10 ≠ ew
P-single: Pr2c11 = ns
whip[1]: Pr2c11{ns .} ==> Br1c10 ≠ o, Br1c10 ≠ s, Br1c10 ≠ w, Br1c10 ≠ sw, Br1c10 ≠ nes
whip[1]: Br1c10{wne .} ==> Pr1c11 ≠ o, Nr1c10 ≠ 0, Nr1c10 ≠ 1
P-single: Pr1c11 = sw
whip[1]: Br2c9{nes .} ==> Nr2c9 ≠ 0
whip[1]: Pr4c9{nw .} ==> Br3c8 ≠ w, Br3c8 ≠ ns, Br3c8 ≠ nw, Br3c8 ≠ sw, Br3c8 ≠ swn, Br3c8 ≠ o, Br3c8 ≠ n, Br3c8 ≠ s, Br3c9 ≠ n
B-single: Br3c9 = nw
N-single: Nr3c9 = 2
P-single: Pr3c9 = se
whip[1]: Pr3c9{se .} ==> Br2c8 ≠ s, Br2c8 ≠ e, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ swn, Br2c8 ≠ wne, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn
whip[1]: Br2c9{nes .} ==> Pr2c9 ≠ ns, Pr2c9 ≠ sw
whip[1]: Pr2c9{ew .} ==> Br1c8 ≠ esw, Br1c8 ≠ nes, Br1c9 ≠ wne, Br2c9 ≠ se, Br2c9 ≠ s
whip[1]: Br2c9{nes .} ==> Pr2c10 ≠ o, Pr2c10 ≠ ns, Nr2c9 ≠ 1
whip[1]: Br1c8{wne .} ==> Pr1c8 ≠ o, Pr1c8 ≠ ew, Pr1c8 ≠ sw, Pr2c8 ≠ se, Pr2c8 ≠ ew
P-single: Pr1c8 = se
whip[1]: Pr1c8{se .} ==> Br1c7 ≠ s, Br1c7 ≠ o, Br1c7 ≠ nw, Br1c7 ≠ swn, Br1c7 ≠ wne
whip[1]: Br1c7{se .} ==> Pr1c7 ≠ se, Pr2c7 ≠ ne, Pr2c7 ≠ ns, Nr1c7 ≠ 0, Nr1c7 ≠ 3
P-single: Pr1c7 = o
whip[1]: Pr1c7{o .} ==> Br1c6 ≠ e
B-single: Br1c6 = o
N-single: Nr1c6 = 0
whip[1]: Pr2c7{se .} ==> Br2c7 ≠ esw, Br2c7 ≠ nes
whip[1]: Br2c7{wne .} ==> Pr2c7 ≠ o, Pr2c8 ≠ ns, Pr3c7 ≠ ew, Pr3c7 ≠ sw
P-single: Pr2c8 = nw
P-single: Pr2c7 = se
whip[1]: Pr2c8{nw .} ==> Br2c8 ≠ n, Br1c7 ≠ e, Br1c8 ≠ swn, Br2c7 ≠ wne, Br2c8 ≠ w, Br2c8 ≠ nw
B-single: Br2c8 = o
N-single: Nr2c8 = 0
P-single: Pr2c9 = ne
P-single: Pr3c8 = sw
B-single: Br2c7 = swn
P-single: Pr3c7 = ne
B-single: Br1c8 = wne
P-single: Pr1c9 = sw
B-single: Br1c7 = se
N-single: Nr1c7 = 2
whip[1]: Pr2c9{ne .} ==> Br1c9 ≠ nes
whip[1]: Pr3c8{sw .} ==> Br3c8 ≠ e, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c8 ≠ se
whip[1]: Br3c8{esw .} ==> Pr4c8 ≠ o, Pr4c8 ≠ ew, Pr4c8 ≠ sw, Nr3c8 ≠ 0, Nr3c8 ≠ 1
whip[1]: Pr4c8{nw .} ==> Br4c7 ≠ ne
whip[1]: Br4c7{e .} ==> Nr4c7 ≠ 2, Nr4c7 ≠ 3
whip[1]: Pr3c7{ne .} ==> Br2c6 ≠ w, Br2c6 ≠ sw, Br2c6 ≠ esw, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ nes, Br3c7 ≠ wne
B-single: Br3c7 = nes
P-single: Pr5c9 = nw
P-single: Pr4c7 = ew
P-single: Pr4c8 = nw
B-single: Br3c6 = s
N-single: Nr3c6 = 1
B-single: Br2c6 = ew
N-single: Nr2c6 = 2
whip[1]: Pr5c9{nw .} ==> Br4c9 ≠ s, Br4c8 ≠ ns, Br4c8 ≠ ew, Br5c8 ≠ w, Br5c9 ≠ ns, Br5c9 ≠ nes
B-single: Br5c8 = nw
N-single: Nr5c8 = 2
P-single: Pr5c8 = se
B-single: Br4c8 = se
P-single: Pr4c9 = ns
B-single: Br4c9 = w
whip[1]: Pr5c8{se .} ==> Br4c7 ≠ e
whip[1]: Pr4c9{ns .} ==> Br3c8 ≠ esw
B-single: Br3c8 = ew
N-single: Nr3c8 = 2
whip[1]: Pr5c10{se .} ==> Br5c10 ≠ esw, Br5c10 ≠ nes, Br5c10 ≠ n, Br5c10 ≠ w
whip[1]: Br5c10{se .} ==> Pr5c11 ≠ sw, Nr5c10 ≠ 1, Nr5c10 ≠ 3
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ s
whip[1]: Br5c9{se .} ==> Nr5c9 ≠ 3
whip[1]: Pr4c7{ew .} ==> Br4c7 ≠ o
B-single: Br4c7 = n
N-single: Nr4c7 = 1
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ swn
B-single: Br1c9 = esw
P-single: Pr3c11 = nw
P-single: Pr1c10 = se
P-single: Pr2c10 = nw
whip[1]: Pr3c11{nw .} ==> Br3c10 ≠ e, Br2c10 ≠ ew
B-single: Br2c10 = se
P-single: Pr3c10 = ew
B-single: Br3c10 = n
P-single: Pr4c11 = o
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ nes
B-single: Br2c9 = ns
N-single: Nr2c9 = 2
whip[1]: Pr4c11{o .} ==> Br4c10 ≠ e, Br4c10 ≠ se
B-single: Br4c10 = o
N-single: Nr4c10 = 0
P-single: Pr5c11 = o
P-single: Pr5c10 = o
whip[1]: Pr5c11{o .} ==> Br5c10 ≠ nw, Br5c10 ≠ se
B-single: Br5c10 = o
N-single: Nr5c10 = 0
P-single: Pr6c11 = o
whip[1]: Pr6c11{o .} ==> Br6c10 ≠ swn
B-single: Br6c10 = sw
N-single: Nr6c10 = 2
whip[1]: Pr5c10{o .} ==> Br5c9 ≠ se
B-single: Br5c9 = s
N-single: Nr5c9 = 1
whip[1]: Pr1c10{se .} ==> Br1c10 ≠ ne
B-single: Br1c10 = wne
N-single: Nr1c10 = 3
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ n, Br4c4 ≠ s, Br4c4 ≠ e, Br4c4 ≠ se, Br5c4 ≠ nes
B-single: Br5c4 = esw
P-single: Pr5c4 = sw
P-single: Pr6c4 = ne
B-single: Br4c4 = o
N-single: Nr4c4 = 0
B-single: Br5c5 = nw
N-single: Nr5c5 = 2
whip[1]: Pr5c4{sw .} ==> Br5c3 ≠ swn
whip[1]: Pr6c4{ne .} ==> Br6c4 ≠ o, Br6c3 ≠ n, Br5c3 ≠ nes, Br6c3 ≠ e, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c4 ≠ e, Br6c4 ≠ s, Br6c4 ≠ w, Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn, Br6c4 ≠ wne
B-single: Br5c3 = wne
P-single: Pr5c3 = se
whip[1]: Pr5c3{se .} ==> Br4c2 ≠ s, Br5c2 ≠ swn
B-single: Br5c2 = esw
P-single: Pr5c2 = sw
P-single: Pr6c2 = ne
P-single: Pr6c3 = nw
B-single: Br4c2 = o
N-single: Nr4c2 = 0
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ n
B-single: Br5c1 = ne
N-single: Nr5c1 = 2
whip[1]: Pr6c2{ne .} ==> Br6c2 ≠ o, Br6c1 ≠ e, Br6c1 ≠ se, Br6c2 ≠ e, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Br6c2{nes .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ ns, Pr7c2 ≠ nw, Nr6c2 ≠ 0
whip[1]: Br6c1{s .} ==> Nr6c1 ≠ 2
whip[1]: Pr6c3{nw .} ==> Br6c2 ≠ ne, Br6c2 ≠ nes, Br6c3 ≠ w, Br6c3 ≠ sw
whip[1]: Br6c3{s .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ns, Pr7c4 ≠ ns, Nr6c3 ≠ 2, Nr6c3 ≠ 3, Pr7c4 ≠ nw
whip[1]: Pr7c4{ew .} ==> Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ ew, Br7c4 ≠ sw, Br6c4 ≠ n, Br6c4 ≠ ne, Br7c4 ≠ o, Br7c4 ≠ e, Br7c4 ≠ s, Br7c4 ≠ w
whip[1]: Br7c4{wne .} ==> Pr7c5 ≠ se, Nr7c4 ≠ 0
P-single: Pr7c5 = ew
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ ne, Br6c4 ≠ nes, Br7c4 ≠ wne, Br7c5 ≠ swn
B-single: Br7c5 = ns
N-single: Nr7c5 = 2
B-single: Br6c4 = ns
N-single: Nr6c4 = 2
w[1]-1-in-r8c4-asymmetric-ne-corner ==> Pr9c4 ≠ ew, Pr9c4 ≠ se, Pr9c4 ≠ nw, Pr9c4 ≠ ns
whip[1]: Pr9c4{sw .} ==> Br8c3 ≠ se, Br8c3 ≠ esw, Br8c3 ≠ nes, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ esw, Br9c3 ≠ swn, Br8c4 ≠ s, Br8c4 ≠ w, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ ns
whip[1]: Br8c4{e .} ==> Pr9c4 ≠ ne, Pr8c4 ≠ ns, Pr8c4 ≠ se, Pr8c4 ≠ sw, Pr9c5 ≠ nw, Pr9c5 ≠ sw
whip[1]: Pr9c5{ns .} ==> Br9c4 ≠ n
whip[1]: Br9c4{w .} ==> Pr10c4 ≠ ne, Pr10c5 ≠ nw
whip[1]: Pr10c5{sw .} ==> Br10c4 ≠ nw, Br10c4 ≠ n
whip[1]: Br10c4{nes .} ==> Pr10c4 ≠ se
whip[1]: Pr8c4{ew .} ==> Br8c3 ≠ ew, Br8c3 ≠ wne, Br8c3 ≠ e, Br8c3 ≠ ne
whip[1]: Br7c3{swn .} ==> Pr7c3 ≠ ew, Pr8c3 ≠ ns, Pr8c3 ≠ ew, Pr8c3 ≠ sw, Pr8c4 ≠ o, Pr8c4 ≠ ne
P-single: Pr8c3 = ne
P-single: Pr7c3 = sw
whip[1]: Pr8c3{ne .} ==> Br8c3 ≠ o, Br8c2 ≠ n, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ nes, Br8c2 ≠ e, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ nw, Br8c3 ≠ sw, Br8c3 ≠ swn
B-single: Br7c2 = wne
P-single: Pr7c2 = se
whip[1]: Pr7c2{se .} ==> Br7c1 ≠ s, Br7c1 ≠ o, Br6c2 ≠ n, Br6c1 ≠ s, Br7c1 ≠ nw, Br7c1 ≠ swn, Br7c1 ≠ wne
B-single: Br6c1 = o
N-single: Nr6c1 = 0
P-single: Pr7c1 = o
B-single: Br6c2 = ns
N-single: Nr6c2 = 2
whip[1]: Br7c1{se .} ==> Pr8c1 ≠ ne, Pr8c1 ≠ ns, Nr7c1 ≠ 0, Nr7c1 ≠ 3
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ esw, Br8c1 ≠ nes
whip[1]: Br8c1{wne .} ==> Pr8c1 ≠ o, Pr8c2 ≠ ns
P-single: Pr8c2 = nw
P-single: Pr8c1 = se
whip[1]: Pr8c2{nw .} ==> Br7c1 ≠ e, Br8c1 ≠ wne, Br8c2 ≠ w, Br8c2 ≠ sw
B-single: Br8c1 = swn
P-single: Pr9c1 = ne
B-single: Br7c1 = se
N-single: Nr7c1 = 2
whip[1]: Pr9c1{ne .} ==> Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ wne
B-single: Br9c1 = nes
P-single: Pr10c1 = se
P-single: Pr9c2 = sw
P-single: Pr10c2 = nw
w[1]-1-in-r10c2-symmetric-nw-corner ==> Pr11c3 ≠ nw, Pr11c3 ≠ o
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ e, Br10c1 ≠ n, Br10c1 ≠ o, Br10c1 ≠ ne, Br10c1 ≠ sw, Br10c1 ≠ esw
B-single: Br10c1 = swn
N-single: Nr10c1 = 3
P-single: Pr11c1 = ne
P-single: Pr11c2 = ew
w[1]-1-in-r10c2-asymmetric-sw-corner ==> Pr10c3 ≠ ew, Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ ns
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ w, Br10c2 ≠ e, Br10c2 ≠ n, Br11c2 ≠ o
B-single: Br11c2 = n
P-single: Pr11c3 = ew
B-single: Br10c2 = s
w[1]-1-in-r10c3-asymmetric-sw-corner ==> Pr10c4 ≠ ew, Pr10c4 ≠ nw, Pr10c4 ≠ ns
w[1]-1-in-r9c4-symmetric-sw-corner ==> Pr9c5 ≠ o
P-single: Pr9c5 = ns
w[1]-1-in-r8c4-asymmetric-se-corner ==> Pr8c4 ≠ ew
P-single: Pr8c4 = nw
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ w, Br10c3 ≠ e, Br10c3 ≠ n, Br11c3 ≠ o
B-single: Br11c3 = n
B-single: Br10c3 = s
H-single: Hr10c3 = 0
V-single: Vr10c4 = 0
w[1]-diagonal-1-1-in-{r10c3...r9c4}-with-no-ne-inner-sides ==> Hr10c4 = 0, Vr9c4 = 0
P-single: Pr11c4 = ew
H-single: Hr11c4 = 1
P-single: Pr10c3 = o
V-single: Vr9c3 = 0
3-in-r7c3-no-U-turn-from-south ==> Hr9c3 = O
P-single: Pr10c4 = o

LOOP[98]: Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr7c3-Hr8c3-Vr7c4-Hr7c4-Hr7c5-Vr6c6-Hr6c6-Vr5c7-Hr5c6-Hr5c5-Vr5c5-Hr6c4-Vr5c4-Hr5c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5-Vr2c6-Hr3c5-Vr3c5-Hr4c5-Hr4c6-Hr4c7-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c8-Vr1c9-Hr2c9-Vr1c10-Hr1c10-Vr1c11-Vr2c11-Hr3c10-Hr3c9-Vr3c9-Vr4c9-Hr5c8-Vr5c8-Vr6c8-Hr7c8-Vr6c9-Hr6c9-Vr6c10-Hr7c10-Vr7c11-Hr8c10-Vr8c10-Hr9c10-Vr9c11-Vr10c11-Hr11c10-Vr10c10-Hr10c9-Vr9c9-Hr9c8-Vr9c8-Vr10c8-Hr11c7-Vr10c7-Hr10c6-Vr9c6-Hr9c6-Vr8c7-Hr8c6-Hr8c5-Vr8c5-Vr9c5- ==> Vr10c5 = 1
vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXOOOXOX
XXXXXOXXXX
OXXXOOOXOO
XXXXXXXXOO
OXOXOOXOOO
OOOOOXXOXO
OXOXXXXXXX
XXXXOOXXXO
OXXXOXXOXX
XXXXOOXOOX

.   .———.   .———.   .   .   .———.   .———.
    | 3 | 3 | 3 |           | 3 | 3 |   |
.———.   .———.   .———.   .———.   .———.   .
| 3               3 |   | 3           2 |
.———.   .   .   .———.   .———.   .———.———.
  3 |     0     | 3       3 |   |     1
.———.   .   .   .———.———.———.   .   .   .
| 3               2           2 | 1
.———.   .———.   .———.———.   .———.   .   .
    | 3 | 3 | 3 |     3 |   |
.   .———.   .———.   .———.   .   .———.   .
                  2 |     1 | 3 | 3 |
.   .———.   .———.———.   .   .———.   .———.
    | 3 | 3 |         1               3 |
.———.   .———.   .———.———.   .   .   .———.
| 3           1 |     3 |     1     | 3
.———.   .   .   .   .———.   .———.   .———.
  3 |         1 |   | 3     |   |     2 |
.———.   .   .   .   .———.   .   .———.   .
|     1   1     |       | 3 | 1   2 |   |
.———.———.———.———.   .   .———.   .   .———.

init-time = 5m 50.64s, solve-time = 2m 26.32s, total-time = 8m 16.96s
nb-facts=<Fact-176781>
Quasi-Loop max length = 98
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
