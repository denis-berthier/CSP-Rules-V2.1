

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
***  Using CLIPS 6.32-r770
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

Loading pre-computed background
start init-inner-N-and-B-candidates 0.53696608543396
start solution 0.547620058059692
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
entering level Loop with <Fact-94371>
entering level Col with <Fact-95299>
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
Starting_init_links_with_<Fact-98140>
744 candidates, 7381 csp-links and 27905 links. Density = 10.1%
starting non trivial part of solution
Entering_level_W1_with_<Fact-168717>
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
whip[1]: Br3c5{swn .} ==> Pr4c5 ≠ sw, Pr4c5 ≠ ew, Pr4c5 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ ns, Pr3c5 ≠ ew, Pr3c5 ≠ nw, Pr3c5 ≠ ns
P-single: Pr3c5 = se
P-single: Pr4c5 = ne
whip[1]: Pr3c5{se .} ==> Br3c4 ≠ w, Br3c4 ≠ s, Br3c4 ≠ n, Br3c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ e, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ sw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes
B-single: Br2c5 = nes
whip[1]: Br2c5{nes .} ==> Pr3c6 ≠ ew, Pr2c6 ≠ ew, Pr2c6 ≠ se, Pr2c6 ≠ nw, Pr2c6 ≠ ns, Pr2c6 ≠ ne, Pr2c6 ≠ o, Pr2c5 ≠ sw, Pr2c5 ≠ ns
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
B-single: Br1c4 = wne
whip[1]: Br1c5{sw .} ==> Nr1c5 ≠ 1
N-single: Nr1c5 = 2
whip[1]: Br1c4{wne .} ==> Pr2c4 ≠ ew, Pr2c4 ≠ se, Pr1c4 ≠ ew
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes
B-single: Br1c3 = esw
whip[1]: Br1c3{esw .} ==> Pr2c4 ≠ ns, Pr2c3 ≠ sw, Pr2c3 ≠ ew, Pr2c3 ≠ ns, Pr1c3 ≠ ew
P-single: Pr1c3 = sw
P-single: Pr2c3 = ne
P-single: Pr2c4 = nw
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Nr1c1 ≠ 0
whip[1]: Pr2c3{ne .} ==> Br2c3 ≠ o, Br2c2 ≠ n, Br1c2 ≠ nes, Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne
B-single: Br1c2 = wne
whip[1]: Br1c2{wne .} ==> Pr2c2 ≠ ew, Pr2c2 ≠ se, Pr1c2 ≠ ew
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
B-single: Br1c1 = se
whip[1]: Br2c1{swn .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ ne, Pr3c1 ≠ ns
P-single: Pr3c1 = ne
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne
B-single: Br3c1 = nes
whip[1]: Br3c1{nes .} ==> Pr4c2 ≠ ew, Pr4c2 ≠ se, Pr4c2 ≠ ns, Pr3c2 ≠ ew, Pr4c1 ≠ ns
P-single: Pr4c1 = se
P-single: Pr3c2 = sw
P-single: Pr4c2 = nw
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ esw, Br4c1 ≠ nes
whip[1]: Br4c1{wne .} ==> Pr5c1 ≠ o, Pr5c1 ≠ se
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ swn, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{esw .} ==> Nr5c1 ≠ 0
whip[1]: Pr3c2{sw .} ==> Br3c2 ≠ ns, Br3c2 ≠ ne, Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ n, Br3c2 ≠ o, Br2c2 ≠ s, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes
B-single: Br2c2 = o
whip[1]: Br2c2{o .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Pr3c3 ≠ ew, Pr3c3 ≠ sw, Nr2c2 ≠ 1, Nr2c2 ≠ 2, Nr2c2 ≠ 3
N-single: Nr2c2 = 0
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c2{nw .} ==> Br4c2 ≠ n, Br3c2 ≠ sw, Br3c2 ≠ esw, Br4c1 ≠ wne, Br4c2 ≠ w, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ nes
B-single: Br4c1 = swn
whip[1]: Br4c1{swn .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ ne, Pr5c1 ≠ ns
P-single: Pr5c1 = ne
whip[1]: Pr5c1{ne .} ==> Br5c1 ≠ sw, Br5c1 ≠ esw
whip[1]: Br5c1{ne .} ==> Pr6c1 ≠ ne, Pr6c2 ≠ nw, Nr5c1 ≠ 3, Pr6c2 ≠ ew, Pr6c2 ≠ sw
P-single: Pr6c1 = o
whip[1]: Pr6c1{o .} ==> Br6c1 ≠ n, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nes
whip[1]: Br6c1{se .} ==> Nr6c1 ≠ 3
whip[1]: Pr5c2{sw .} ==> Br5c2 ≠ swn, Br5c2 ≠ wne
whip[1]: Br5c2{nes .} ==> Pr5c3 ≠ nw, Pr5c3 ≠ ew, Pr6c2 ≠ o, Pr6c2 ≠ ns, Pr6c3 ≠ ns, Pr6c3 ≠ se, Pr6c3 ≠ ew
P-single: Pr6c3 = nw
whip[1]: Pr6c3{nw .} ==> Br6c3 ≠ n, Br6c2 ≠ s, Br6c2 ≠ e, Br6c2 ≠ o, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ nes, Br6c2 ≠ w, Br6c2 ≠ ne, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ w, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ nes
B-single: Br5c3 = wne
whip[1]: Br5c3{wne .} ==> Pr6c4 ≠ sw, Pr6c4 ≠ ew, Pr5c4 ≠ ew, Pr5c4 ≠ ns, Pr5c4 ≠ ne, Pr5c3 ≠ ns
P-single: Pr5c3 = se
P-single: Pr5c4 = sw
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ w, Br4c3 ≠ e, Br4c3 ≠ n, Br4c3 ≠ o, Br4c2 ≠ s, Br4c2 ≠ e, Br4c2 ≠ se, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br5c2 ≠ nes
B-single: Br5c2 = esw
B-single: Br4c2 = o
whip[1]: Br5c2{esw .} ==> Pr6c2 ≠ se, Pr5c2 ≠ ew
P-single: Pr5c2 = sw
P-single: Pr6c2 = ne
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ n
B-single: Br5c1 = ne
whip[1]: Br5c1{ne .} ==> Nr5c1 ≠ 1
N-single: Nr5c1 = 2
whip[1]: Pr6c2{ne .} ==> Br6c1 ≠ e, Br6c1 ≠ se, Br6c2 ≠ nw, Br6c2 ≠ swn
whip[1]: Br6c2{ns .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ ns, Pr7c2 ≠ nw, Pr7c3 ≠ ne, Pr7c3 ≠ ns, Nr6c2 ≠ 0, Nr6c2 ≠ 3
whip[1]: Pr7c3{sw .} ==> Br7c2 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br6c2 ≠ n
B-single: Br6c2 = ns
whip[1]: Br6c2{ns .} ==> Nr6c2 ≠ 1, Pr7c2 ≠ o, Pr7c2 ≠ sw
N-single: Nr6c2 = 2
whip[1]: Pr7c2{ew .} ==> Br7c1 ≠ wne, Br7c1 ≠ o, Br7c1 ≠ s
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 0
whip[1]: Br7c3{nes .} ==> Pr7c4 ≠ nw, Pr7c4 ≠ ew, Pr8c3 ≠ ns, Pr8c3 ≠ sw, Pr8c4 ≠ o, Pr8c4 ≠ ne, Pr8c4 ≠ ns, Pr8c4 ≠ se, Pr8c4 ≠ ew, Pr8c4 ≠ sw
P-single: Pr8c4 = nw
w[1]-1-in-r8c4-symmetric-nw-corner ==> Pr9c5 ≠ se, Pr9c5 ≠ nw, Pr9c5 ≠ o
whip[1]: Pr8c4{nw .} ==> Br8c4 ≠ n, Br8c3 ≠ s, Br8c3 ≠ e, Br8c3 ≠ o, Br7c4 ≠ s, Br7c4 ≠ e, Br7c4 ≠ n, Br7c4 ≠ o, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ se, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn, Br7c4 ≠ nes, Br8c3 ≠ w, Br8c3 ≠ ne, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c4 ≠ w
whip[1]: Br8c4{s .} ==> Pr9c4 ≠ ne, Pr9c4 ≠ ns, Pr8c5 ≠ nw, Pr8c5 ≠ ew, Pr8c5 ≠ sw, Pr9c4 ≠ nw
whip[1]: Br8c3{swn .} ==> Nr8c3 ≠ 0
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 0
whip[1]: Pr9c5{sw .} ==> Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ o, Br9c5 ≠ e, Br9c5 ≠ s
whip[1]: Br9c5{nes .} ==> Nr9c5 ≠ 0
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ nes, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ nw, Br8c3 ≠ swn, Br8c2 ≠ e, Br8c2 ≠ ne
whip[1]: Br8c2{swn .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw
whip[1]: Br8c3{ns .} ==> Nr8c3 ≠ 3
whip[1]: Br7c2{wne .} ==> Pr7c2 ≠ ew, Pr8c2 ≠ se, Pr8c2 ≠ ew
P-single: Pr7c2 = se
whip[1]: Pr7c2{se .} ==> Br6c1 ≠ s, Br7c1 ≠ nw, Br7c1 ≠ swn
B-single: Br6c1 = o
whip[1]: Br6c1{o .} ==> Pr7c1 ≠ se, Nr6c1 ≠ 1, Nr6c1 ≠ 2
N-single: Nr6c1 = 0
P-single: Pr7c1 = o
whip[1]: Br7c1{se .} ==> Pr8c1 ≠ ne, Pr8c1 ≠ ns, Nr7c1 ≠ 3
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ esw, Br8c1 ≠ nes
whip[1]: Br8c1{wne .} ==> Pr8c1 ≠ o, Pr8c2 ≠ ns
P-single: Pr8c2 = nw
P-single: Pr8c1 = se
whip[1]: Pr8c2{nw .} ==> Br8c2 ≠ n, Br7c1 ≠ e, Br7c2 ≠ swn, Br8c1 ≠ wne, Br8c2 ≠ w, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ sw, Br8c2 ≠ swn
B-single: Br8c1 = swn
B-single: Br7c2 = wne
B-single: Br7c1 = se
whip[1]: Br8c1{swn .} ==> Pr9c2 ≠ ns, Pr9c2 ≠ ne, Pr9c1 ≠ ns
P-single: Pr9c1 = ne
whip[1]: Pr9c1{ne .} ==> Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ wne
B-single: Br9c1 = nes
whip[1]: Br9c1{nes .} ==> Pr10c2 ≠ sw, Pr10c2 ≠ ew, Pr10c2 ≠ se, Pr10c2 ≠ ns, Pr10c2 ≠ ne, Pr10c2 ≠ o, Pr9c2 ≠ ew, Pr10c1 ≠ ns
P-single: Pr10c1 = se
P-single: Pr9c2 = sw
P-single: Pr10c2 = nw
w[1]-1-in-r10c2-symmetric-nw-corner ==> Pr11c3 ≠ nw, Pr11c3 ≠ o
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ e, Br10c1 ≠ n, Br10c1 ≠ o, Br10c1 ≠ ne, Br10c1 ≠ sw, Br10c1 ≠ esw
B-single: Br10c1 = swn
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 2, Nr10c1 ≠ 1, Nr10c1 ≠ 0, Pr11c2 ≠ nw, Pr11c2 ≠ ne, Pr11c2 ≠ o, Pr11c1 ≠ o
N-single: Nr10c1 = 3
P-single: Pr11c1 = ne
P-single: Pr11c2 = ew
w[1]-1-in-r10c2-asymmetric-sw-corner ==> Pr10c3 ≠ ew, Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ ns
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ w, Br10c2 ≠ e, Br10c2 ≠ n, Br11c2 ≠ o
B-single: Br11c2 = n
B-single: Br10c2 = s
whip[1]: Br11c2{n .} ==> Pr11c3 ≠ ne
P-single: Pr11c3 = ew
w[1]-1-in-r10c3-asymmetric-sw-corner ==> Pr10c4 ≠ ew, Pr10c4 ≠ se, Pr10c4 ≠ nw, Pr10c4 ≠ ns
w[1]-1-in-r9c4-symmetric-sw-corner ==> Pr9c5 ≠ sw, Pr9c5 ≠ ne
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ w, Br10c3 ≠ e, Br10c3 ≠ n, Br11c3 ≠ o
B-single: Br11c3 = n
B-single: Br10c3 = s
whip[1]: Br11c3{n .} ==> Pr11c4 ≠ o, Pr11c4 ≠ ne
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ ne
whip[1]: Br10c4{nes .} ==> Nr10c4 ≠ 0
whip[1]: Br10c3{s .} ==> Pr10c3 ≠ ne, Vr10c4 ≠ 1, Hr10c3 ≠ 1, Pr11c4 ≠ nw, Pr10c3 ≠ sw, Pr10c4 ≠ sw
H-single: Hr10c3 = 0
V-single: Vr10c4 = 0
w[1]-diagonal-1-1-in-{r10c3...r9c4}-with-no-ne-inner-sides ==> Hr10c4 = 0, Vr9c4 = 0
P-single: Pr10c3 = o
P-single: Pr11c4 = ew
no-vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
different-colours-in-r10{c4 c5} ==> Hr10c5 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1

LOOP[98]: Vr9c8-Vr10c8-Hr11c7-Vr10c7-Hr10c6-Vr9c6-Hr9c6-Vr8c7-Hr8c6-Hr8c5-Vr8c5-Vr9c5-Vr10c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr7c3-Hr8c3-Vr7c4-Hr7c4-Hr7c5-Vr6c6-Hr6c6-Vr5c7-Hr5c6-Hr5c5-Vr5c5-Hr6c4-Vr5c4-Hr5c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5-Vr2c6-Hr3c5-Vr3c5-Hr4c5-Hr4c6-Hr4c7-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c8-Vr1c9-Hr2c9-Vr1c10-Hr1c10-Vr1c11-Vr2c11-Hr3c10-Hr3c9-Vr3c9-Vr4c9-Hr5c8-Vr5c8-Vr6c8-Hr7c8-Vr6c9-Hr6c9-Vr6c10-Hr7c10-Vr7c11-Hr8c10-Vr8c10-Hr9c10-Vr9c11-Vr10c11-Hr11c10-Vr10c10-Hr10c9-Vr9c9- ==> Hr9c8 = 1
3-in-r6c8-no-U-turn-from-south ==> Hr8c8 = O
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = in
same-colour-in-r9{c2 c3} ==> Vr9c3 = 0
3-in-r7c3-no-U-turn-from-south ==> Hr9c3 = O

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

init-time = 0.55s, solve-time = 25.9s, total-time = 26.45s
nb-facts=<Fact-176265>
Quasi-Loop max length = 98
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
