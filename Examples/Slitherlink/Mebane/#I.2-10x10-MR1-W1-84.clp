Mellon rating = 1


(solve 
10 10 
. 3 . 3 . . 3 . 2 . 
3 0 . 0 2 2 0 . 0 2
. . . . . . . . . . 
0 3 . . 0 . . . 0 3 
. 2 . . 2 3 1 . 2 . 
. 1 . 3 0 1 . . 1 . 
3 0 . . . 1 . . 2 0 
. . . . . . . . . . 
0 3 . 0 2 2 0 . 0 3
. 3 . 2 . . 2 . 2 . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 . . 3 . 2 .
3 0 . 0 2 2 0 . 0 2
. . . . . . . . . .
0 3 . . 0 . . . 0 3
. 2 . . 2 3 1 . 2 .
. 1 . 3 0 1 . . 1 .
3 0 . . . 1 . . 2 0
. . . . . . . . . .
0 3 . 0 2 2 0 . 0 3
. 3 . 2 . . 2 . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.616245031356812
start solution 0.630939960479736
entering BRT
w[0]-0-in-r9c9 ==> Hr10c9 = 0, Hr9c9 = 0, Vr9c10 = 0, Vr9c9 = 0
w[0]-0-in-r9c7 ==> Hr10c7 = 0, Hr9c7 = 0, Vr9c8 = 0, Vr9c7 = 0
w[0]-0-in-r9c4 ==> Hr10c4 = 0, Hr9c4 = 0, Vr9c5 = 0, Vr9c4 = 0
w[0]-0-in-r9c1 ==> Hr10c1 = 0, Hr9c1 = 0, Vr9c2 = 0, Vr9c1 = 0
w[0]-0-in-r7c10 ==> Hr8c10 = 0, Hr7c10 = 0, Vr7c11 = 0, Vr7c10 = 0
w[0]-0-in-r7c2 ==> Hr8c2 = 0, Hr7c2 = 0, Vr7c3 = 0, Vr7c2 = 0
w[0]-0-in-r6c5 ==> Hr7c5 = 0, Hr6c5 = 0, Vr6c6 = 0, Vr6c5 = 0
w[0]-0-in-r4c9 ==> Hr5c9 = 0, Hr4c9 = 0, Vr4c10 = 0, Vr4c9 = 0
w[0]-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[0]-0-in-r4c1 ==> Hr5c1 = 0, Hr4c1 = 0, Vr4c2 = 0, Vr4c1 = 0
w[0]-0-in-r2c9 ==> Hr3c9 = 0, Hr2c9 = 0, Vr2c10 = 0, Vr2c9 = 0
w[0]-0-in-r2c7 ==> Hr3c7 = 0, Hr2c7 = 0, Vr2c8 = 0, Vr2c7 = 0
w[0]-0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
w[0]-0-in-r2c2 ==> Hr3c2 = 0, Hr2c2 = 0, Vr2c3 = 0, Vr2c2 = 0
w0-adjacent-3-0-in-r9{c10 c9} ==> Vr9c11 = 1, Vr10c10 = 1, Vr8c10 = 1, Hr10c10 = 1, Hr9c10 = 1, Vr10c11 = 0, Vr8c11 = 0
w0-adjacent-3-0-in-r9{c2 c1} ==> Vr9c3 = 1, Vr10c2 = 1, Vr8c2 = 1, Hr10c2 = 1, Hr9c2 = 1, Vr10c3 = 0, Vr8c3 = 0, Hr10c3 = 0, Hr9c3 = 0
w0-adjacent-3-0-in-r7{c1 c2} ==> Vr6c2 = 1, Vr7c1 = 1, Hr8c1 = 1, Hr7c1 = 1, Vr8c1 = 0, Vr6c1 = 0
w0-adjacent-3-0-in-r6{c4 c5} ==> Vr7c5 = 1, Vr5c5 = 1, Vr6c4 = 1, Hr7c4 = 1, Hr6c4 = 1, Vr7c4 = 0, Vr5c4 = 0, Hr7c3 = 0, Hr6c3 = 0
w0-adjacent-3-0-in-r4{c10 c9} ==> Vr4c11 = 1, Vr5c10 = 1, Vr3c10 = 1, Hr5c10 = 1, Hr4c10 = 1, Vr5c11 = 0, Vr3c11 = 0
w0-adjacent-3-0-in-r4{c2 c1} ==> Vr4c3 = 1, Vr5c2 = 1, Vr3c2 = 1, Hr5c2 = 1, Hr4c2 = 1, Vr5c3 = 0, Vr3c3 = 0, Hr5c3 = 0, Hr4c3 = 0
w0-adjacent-3-0-in-r2{c1 c2} ==> Vr1c2 = 1, Vr2c1 = 1, Hr3c1 = 1, Hr2c1 = 1, Vr3c1 = 0, Vr1c1 = 0
w[0]-adjacent-3-0-in-c7{r1 r2} ==> Vr1c8 = 1, Vr1c7 = 1, Hr2c8 = 1, Hr2c6 = 1, Hr1c7 = 1, Hr1c8 = 0, Hr1c6 = 0
w[0]-adjacent-3-0-in-c4{r1 r2} ==> Vr1c5 = 1, Vr1c4 = 1, Hr2c5 = 1, Hr2c3 = 1, Hr1c4 = 1, Hr1c5 = 0, Hr1c3 = 0
w[0]-adjacent-3-0-in-c2{r1 r2} ==> Vr1c3 = 1, Hr1c2 = 1, Hr1c1 = 0
w[1]-diagonal-3-0-in-{r5c6...r6c5} ==> Vr5c6 = 1, Hr6c6 = 1
w[1]-diagonal-3-0-in-{r5c6...r4c5} ==> Hr5c6 = 1
w[1]-3-in-r10c2-hit-by-verti-line-at-ne ==> Hr11c2 = 1
w[1]-1+3+1-in-r5c7+r5c6+r6c6 ==> Hr7c6 = 0, Hr5c7 = 0, Vr5c8 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r6 r5}c6 ==> Vr6c7 = 0
w[1]-3-in-r10c2-closed-sw-corner ==> Pr10c3 ≠ sw, Pr10c3 ≠ ne, Pr10c3 ≠ o
w[1]-3-in-r10c2-closed-nw-corner ==> Pr11c3 ≠ nw, Pr11c3 ≠ o
w[1]-3-in-r9c10-closed-se-corner ==> Pr9c10 ≠ se, Pr9c10 ≠ nw, Pr9c10 ≠ o
w[1]-3-in-r9c10-closed-ne-corner ==> Pr10c10 ≠ ne, Pr10c10 ≠ o
w[1]-3-in-r9c2-closed-se-corner ==> Pr9c2 ≠ se, Pr9c2 ≠ nw, Pr9c2 ≠ o
w[1]-3-in-r9c2-closed-ne-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ o
w[1]-3-in-r6c4-closed-nw-corner ==> Pr7c5 ≠ se, Pr7c5 ≠ nw, Pr7c5 ≠ o
w[1]-3-in-r5c6-closed-sw-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ o
w[1]-3-in-r5c6-closed-nw-corner ==> Pr6c7 ≠ se, Pr6c7 ≠ nw, Pr6c7 ≠ o
w[1]-3-in-r4c10-closed-se-corner ==> Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ o
w[1]-3-in-r4c10-closed-ne-corner ==> Pr5c10 ≠ ne, Pr5c10 ≠ o
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
w[1]-3-in-r4c2-closed-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne
w[1]-3-in-r2c1-closed-sw-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r2c1-closed-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ ne, Pr2c7 ≠ o
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ se, Pr2c8 ≠ nw, Pr2c8 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ nw, Pr2c5 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-diagonal-closed-3-1-in-{r7c1...r6c2} ==> Vr6c3 = 0, Hr6c2 = 0
w[1]-1-in-r6c6-asymmetric-nw-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ew, Pr7c7 ≠ ns, Pr7c7 ≠ ne
w[1]-1-in-r6c2-asymmetric-sw-corner ==> Pr6c3 ≠ ew, Pr6c3 ≠ se, Pr6c3 ≠ ns
entering level Loop with <Fact-94004>
entering level Col with <Fact-94480>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
vertical-line-r10{c9 c10} ==> Ir10c9 = in
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
no-vertical-line-r9{c7 c8} ==> Ir9c7 = in
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
no-horizontal-line-{r8 r9}c7 ==> Ir8c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = out
no-vertical-line-r7{c9 c10} ==> Ir7c9 = out
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = out
vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
vertical-line-r5{c9 c10} ==> Ir5c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
no-vertical-line-r4{c8 c9} ==> Ir4c8 = in
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
vertical-line-r3{c9 c10} ==> Ir3c9 = in
no-horizontal-line-{r2 r3}c9 ==> Ir2c9 = in
no-vertical-line-r2{c8 c9} ==> Ir2c8 = in
no-vertical-line-r2{c7 c8} ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
horizontal-line-{r1 r2}c6 ==> Ir1c6 = out
vertical-line-r1{c6 c7} ==> Ir1c7 = in
vertical-line-r1{c7 c8} ==> Ir1c8 = out
no-horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
no-vertical-line-r2{c9 c10} ==> Ir2c10 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
no-vertical-line-r9{c1 c2} ==> Ir9c2 = out
vertical-line-r9{c2 c3} ==> Ir9c3 = in
no-vertical-line-r9{c3 c4} ==> Ir9c4 = in
no-vertical-line-r9{c4 c5} ==> Ir9c5 = in
no-horizontal-line-{r8 r9}c4 ==> Ir8c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
no-vertical-line-r7{c1 c2} ==> Ir7c1 = in
horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
vertical-line-r6{c1 c2} ==> Ir6c2 = in
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
vertical-line-r5{c1 c2} ==> Ir5c1 = out
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
vertical-line-r1{c3 c4} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
vertical-line-r7{c4 c5} ==> Ir7c5 = out
no-vertical-line-r6{c6 c7} ==> Ir6c7 = out
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = out
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
horizontal-line-{r7 r8}c1 ==> Ir8c1 = out
no-horizontal-line-{r9 r10}c3 ==> Ir10c3 = in
no-vertical-line-r10{c2 c3} ==> Ir10c2 = in
vertical-line-r10{c1 c2} ==> Ir10c1 = out
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
same-colour-in-r10{c3 c4} ==> Vr10c4 = 0
w[1]-2-in-r10c4-open-nw-corner ==> Hr11c4 = 1, Vr10c5 = 1, Hr11c5 = 0
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
same-colour-in-r7{c5 c6} ==> Vr7c6 = 0
same-colour-in-{r7 r8}c3 ==> Hr8c3 = 0
same-colour-in-{r7 r8}c4 ==> Hr8c4 = 0
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
w[1]-diagonal-3-2-in-{r1c7...r2c6}-non-closed-sw-corner ==> Hr3c6 = 1
horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
same-colour-in-{r3 r4}c6 ==> Hr4c6 = 0
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
same-colour-in-r3{c5 c6} ==> Vr3c6 = 0
same-colour-in-{r2 r3}c3 ==> Hr3c3 = 0
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
same-colour-in-r5{c0 c1} ==> Vr5c1 = 0
same-colour-in-r8{c3 c4} ==> Vr8c4 = 0
same-colour-in-r9{c5 c6} ==> Vr9c6 = 0
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
different-colours-in-{r2 r3}c10 ==> Hr3c10 = 1
same-colour-in-{r5 r6}c10 ==> Hr6c10 = 0
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1
same-colour-in-r6{c10 c11} ==> Vr6c11 = 0
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1
Starting_init_links_with_<Fact-95278>
812 candidates, 7436 csp-links and 28886 links. Density = 8.77%
starting non trivial part of solution
Entering_level_W1_with_<Fact-167927>
whip[1]: Hr11c10{0 .} ==> Br10c10 ≠ nes, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr11c10 = nw
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Pr11c10{nw .} ==> Br10c10 ≠ n, Br10c10 ≠ o, Br11c9 ≠ o, Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ sw
B-single: Br10c9 = se
B-single: Br11c9 = n
whip[1]: Br10c9{se .} ==> Pr10c10 ≠ ew, Pr10c10 ≠ nw, Pr11c9 ≠ nw, Vr10c9 ≠ 1, Hr10c9 ≠ 1
V-single: Vr10c9 = 0
P-single: Pr11c9 = ew
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
w[1]-2-in-r10c7-open-ne-corner ==> Vr10c7 = 1, Hr11c6 = 0
no-horizontal-line-{r10 r11}c6 ==> Ir10c6 = out
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
whip[1]: Vr10c9{0 .} ==> Br10c8 ≠ e, Br10c8 ≠ ne, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ esw, Br10c8 ≠ wne, Br10c8 ≠ nes
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ w, Br10c8 ≠ n, Br10c8 ≠ o, Br11c8 ≠ o, Br10c8 ≠ nw
B-single: Br11c8 = n
whip[1]: Br10c8{swn .} ==> Nr10c8 ≠ 0
whip[1]: Vr10c8{0 .} ==> Pr11c8 ≠ ne, Pr10c8 ≠ ns, Pr10c8 ≠ se, Br10c7 ≠ ne, Br10c7 ≠ se, Br10c7 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ swn
P-single: Pr11c8 = ew
whip[1]: Pr11c8{ew .} ==> Br11c7 ≠ o, Br10c7 ≠ nw
B-single: Br11c7 = n
whip[1]: Br11c7{n .} ==> Pr11c7 ≠ nw
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ esw, Br10c6 ≠ nes, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ w
whip[1]: Br10c6{wne .} ==> Nr10c6 ≠ 0
whip[1]: Br10c8{ns .} ==> Nr10c8 ≠ 3
whip[1]: Vr10c7{1 .} ==> Pr11c7 ≠ ew, Pr10c7 ≠ ne, Pr10c7 ≠ ew, Br10c6 ≠ s, Br10c6 ≠ ns, Br10c6 ≠ sw, Br10c6 ≠ swn, Br10c7 ≠ ns
P-single: Pr11c7 = ne
B-single: Br10c7 = sw
whip[1]: Pr11c7{ne .} ==> Br11c6 ≠ n
B-single: Br11c6 = o
whip[1]: Br11c6{o .} ==> Pr11c6 ≠ ne, Pr11c6 ≠ ew
whip[1]: Pr11c6{nw .} ==> Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c5 ≠ e, Br10c5 ≠ s
whip[1]: Br10c7{sw .} ==> Hr10c7 ≠ 1
whip[1]: Pr10c8{ne .} ==> Br9c8 ≠ s, Br9c8 ≠ w, Br9c8 ≠ ns, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ wne, Br9c8 ≠ nes
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ nw, Br9c6 ≠ se
whip[1]: Vr10c6{0 .} ==> Pr11c6 ≠ nw, Pr10c6 ≠ ns, Br10c5 ≠ se, Br10c5 ≠ esw, Br10c5 ≠ nes, Br10c6 ≠ ew, Br10c6 ≠ wne
P-single: Pr10c6 = ew
P-single: Pr11c6 = o
whip[1]: Pr10c6{ew .} ==> Br10c6 ≠ e, Br10c5 ≠ w, Br10c5 ≠ o, Br9c6 ≠ ne, Br9c5 ≠ ne, Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ ew, Br9c6 ≠ ew, Br9c6 ≠ sw
B-single: Br9c6 = ns
B-single: Br10c6 = ne
whip[1]: Br9c6{ns .} ==> Pr10c7 ≠ ns, Pr9c7 ≠ se, Pr9c7 ≠ ns, Pr9c6 ≠ ns, Vr9c7 ≠ 1, Hr9c6 ≠ 0
H-single: Hr9c6 = 1
P-single: Pr9c6 = ew
P-single: Pr10c7 = sw
horizontal-line-{r8 r9}c6 ==> Ir8c6 = out
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
same-colour-in-{r7 r8}c6 ==> Hr8c6 = 0
whip[1]: Hr9c6{1 .} ==> Br8c6 ≠ o, Br8c6 ≠ n, Br8c6 ≠ e, Br8c6 ≠ w, Br8c6 ≠ ne, Br8c6 ≠ nw, Br8c6 ≠ ew, Br8c6 ≠ wne
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Pr9c6{ew .} ==> Br8c5 ≠ ne, Br8c5 ≠ w, Br8c5 ≠ e, Br8c5 ≠ n, Br8c5 ≠ o, Vr8c6 ≠ 1, Hr9c5 ≠ 0, Br8c5 ≠ nw, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne, Br8c5 ≠ nes, Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ swn, Br9c5 ≠ sw
H-single: Hr9c5 = 1
V-single: Vr8c6 = 0
B-single: Br9c5 = ns
no-vertical-line-r8{c5 c6} ==> Ir8c5 = out
same-colour-in-{r7 r8}c5 ==> Hr8c5 = 0
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
whip[1]: Hr9c5{1 .} ==> Pr9c5 ≠ ns, Pr9c5 ≠ sw
whip[1]: Pr9c5{ew .} ==> Vr9c5 ≠ 1, Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ esw, Br8c4 ≠ nes, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ w
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 0
whip[1]: Vr8c6{0 .} ==> Pr8c6 ≠ ns, Pr8c6 ≠ se, Pr8c6 ≠ sw
whip[1]: Br9c5{ns .} ==> Pr10c5 ≠ nw, Pr10c5 ≠ ns
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ sw, Br10c4 ≠ ne
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ ne, Pr8c5 ≠ se, Pr8c5 ≠ ew, Pr8c6 ≠ nw, Pr8c6 ≠ ew, Br7c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ nes, Br8c5 ≠ ns, Br8c5 ≠ swn
w[1]-1-in-r7c6-symmetric-sw-corner ==> Pr7c7 ≠ o
whip[1]: Pr7c7{se .} ==> Br6c7 ≠ ne, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ nes, Br6c6 ≠ e, Br6c6 ≠ s, Br6c7 ≠ o, Br6c7 ≠ n, Br6c7 ≠ e, Br7c6 ≠ s, Br7c6 ≠ w, Br7c7 ≠ n, Br7c7 ≠ w
whip[1]: Br7c6{e .} ==> Pr8c6 ≠ ne, Pr7c6 ≠ ns, Pr7c6 ≠ se, Pr7c6 ≠ sw, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Pr8c7 ≠ sw
P-single: Pr8c6 = o
whip[1]: Pr8c6{o .} ==> Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ew, Br7c5 ≠ wne, Br8c6 ≠ ns, Br8c6 ≠ nes
whip[1]: Br8c6{se .} ==> Nr8c6 ≠ 3
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 3
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Br6c6{w .} ==> Pr6c7 ≠ ns, Pr7c6 ≠ ne, Pr7c7 ≠ nw, Pr6c7 ≠ sw, Pr7c6 ≠ ew
P-single: Pr7c7 = se
w[1]-1-in-r7c6-symmetric-nw-corner ==> Pr8c7 ≠ se, Pr8c7 ≠ o
whip[1]: Pr7c7{se .} ==> Br7c7 ≠ s, Br7c7 ≠ e, Br7c7 ≠ o, Br7c6 ≠ n, Br6c7 ≠ w, Vr7c7 ≠ 0, Hr7c7 ≠ 0, Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ wne, Br7c7 ≠ se
H-single: Hr7c7 = 1
V-single: Vr7c7 = 1
B-single: Br7c6 = e
vertical-line-r7{c6 c7} ==> Ir7c7 = in
same-colour-in-{r7 r8}c7 ==> Hr8c7 = 0
whip[1]: Hr7c7{1 .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ se
whip[1]: Pr7c8{sw .} ==> Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn, Br7c8 ≠ nw, Br7c8 ≠ swn, Br7c8 ≠ wne
whip[1]: Hr8c7{0 .} ==> Pr8c7 ≠ ne, Pr8c8 ≠ nw, Pr8c8 ≠ ew, Pr8c8 ≠ sw, Br7c7 ≠ swn, Br8c7 ≠ n, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ nes
P-single: Pr8c7 = ns
whip[1]: Pr8c7{ns .} ==> Br8c7 ≠ e, Br8c7 ≠ o, Br8c6 ≠ s, Br8c7 ≠ s, Br8c7 ≠ se
B-single: Br8c6 = se
whip[1]: Br8c6{se .} ==> Nr8c6 ≠ 1, Pr9c7 ≠ ew
N-single: Nr8c6 = 2
P-single: Pr9c7 = nw
whip[1]: Pr9c7{nw .} ==> Hr9c7 ≠ 1, Br8c7 ≠ sw, Br8c7 ≠ esw
whip[1]: Br8c7{ew .} ==> Pr9c8 ≠ nw, Pr9c8 ≠ ew, Pr9c8 ≠ sw, Nr8c7 ≠ 0, Nr8c7 ≠ 3
whip[1]: Br7c7{wne .} ==> Nr7c7 ≠ 0, Nr7c7 ≠ 1
whip[1]: Pr6c7{ew .} ==> Hr6c7 ≠ 0, Br5c6 ≠ esw, Br5c6 ≠ nes, Br6c7 ≠ se, Br5c7 ≠ n, Br5c7 ≠ e, Br5c7 ≠ w, Br6c7 ≠ s
H-single: Hr6c7 = 1
B-single: Br5c7 = s
horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
no-vertical-line-r5{c7 c8} ==> Ir5c8 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
same-colour-in-r4{c7 c8} ==> Vr4c8 = 0
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1

LOOP[24]: Hr6c7-Hr6c6-Vr5c6-Hr5c6-Vr4c7-Vr3c7-Hr3c6-Hr3c5-Vr3c5-Hr4c4-Vr4c4-Hr5c4-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Vr8c5-Hr9c5-Hr9c6-Vr8c7-Vr7c7-Hr7c7- ==> Vr6c8 = 0
no-vertical-line-r6{c7 c8} ==> Ir6c8 = out
different-colours-in-{r5 r6}c8 ==> Hr6c8 = 1
same-colour-in-r5{c8 c9} ==> Vr5c9 = 0
w[1]-2-in-r5c9-open-nw-corner ==> Hr6c9 = 1, Vr6c10 = 0
no-vertical-line-r6{c9 c10} ==> Ir6c9 = out
same-colour-in-{r6 r7}c9 ==> Hr7c9 = 0
w[1]-2-in-r7c9-open-ne-corner ==> Vr7c9 = 1, Hr8c8 = 0, Vr8c9 = 0
no-vertical-line-r8{c8 c9} ==> Ir8c8 = in
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = in
same-colour-in-r7{c7 c8} ==> Vr7c8 = 0
different-colours-in-{r6 r7}c8 ==> Hr7c8 = 1
same-colour-in-{r8 r9}c8 ==> Hr9c8 = 0
same-colour-in-r8{c7 c8} ==> Vr8c8 = 0
same-colour-in-{r4 r5}c8 ==> Hr5c8 = 0
whip[1]: Hr6c7{1 .} ==> Pr6c8 ≠ o, Pr6c8 ≠ ne, Pr6c8 ≠ ns, Pr6c8 ≠ se
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br6c8 ≠ nw, Br6c8 ≠ wne
whip[1]: Br5c7{s .} ==> Pr6c7 ≠ ne, Pr5c8 ≠ ns, Pr5c7 ≠ ns, Pr5c7 ≠ se, Pr5c7 ≠ ew, Pr5c8 ≠ nw, Pr5c8 ≠ se, Pr5c8 ≠ ew, Pr5c8 ≠ sw, Pr6c8 ≠ nw
P-single: Pr5c7 = nw
P-single: Pr6c7 = ew
w[1]-1-in-r6c6-asymmetric-ne-corner ==> Pr7c6 ≠ nw
P-single: Pr7c6 = o
whip[1]: Pr5c7{nw .} ==> Br4c7 ≠ s, Br4c7 ≠ e, Br4c7 ≠ n, Br4c7 ≠ o, Br4c6 ≠ s, Br4c6 ≠ e, Br4c6 ≠ n, Br4c6 ≠ o, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br5c6 ≠ wne
B-single: Br5c6 = swn
whip[1]: Br5c6{swn .} ==> Pr6c6 ≠ sw, Pr6c6 ≠ ew, Pr6c6 ≠ ns, Pr5c6 ≠ ew, Pr5c6 ≠ nw, Pr5c6 ≠ ns
P-single: Pr5c6 = se
P-single: Pr6c6 = ne
whip[1]: Pr5c6{se .} ==> Vr4c6 ≠ 1, Hr5c5 ≠ 1, Br4c6 ≠ esw, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ sw
whip[1]: Br5c5{ew .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ ew
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ esw, Br4c4 ≠ nes, Br5c4 ≠ nw, Br5c4 ≠ sw, Br5c4 ≠ swn, Br5c5 ≠ se, Br4c4 ≠ o, Br4c4 ≠ n, Br4c4 ≠ w, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ ns
B-single: Br5c5 = ew
whip[1]: Br5c5{ew .} ==> Pr6c5 ≠ ew, Pr6c5 ≠ se, Hr6c5 ≠ 1
whip[1]: Pr6c5{nw .} ==> Br6c4 ≠ wne, Br6c4 ≠ nes
whip[1]: Br6c4{swn .} ==> Pr6c4 ≠ o, Pr6c4 ≠ ne, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr7c4 ≠ o, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr7c4 ≠ se, Pr7c4 ≠ ew, Pr7c4 ≠ sw, Pr7c5 ≠ ne, Pr7c5 ≠ ns
P-single: Pr7c4 = ne
whip[1]: Pr7c4{ne .} ==> Br7c4 ≠ o, Br7c3 ≠ n, Br6c3 ≠ n, Br6c3 ≠ o, Br6c3 ≠ s, Br6c3 ≠ w, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ nes, Br7c3 ≠ e, Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ e, Br7c4 ≠ s, Br7c4 ≠ w, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn, Br7c4 ≠ wne
whip[1]: Br7c4{nes .} ==> Pr8c4 ≠ ne, Pr8c4 ≠ ns, Pr8c4 ≠ nw, Nr7c4 ≠ 0
whip[1]: Br7c3{sw .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ se, Pr7c3 ≠ ew, Nr7c3 ≠ 3
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 0
whip[1]: Pr7c5{sw .} ==> Vr6c5 ≠ 1, Br6c4 ≠ esw, Br7c5 ≠ nw, Br7c5 ≠ o
B-single: Br6c4 = swn
whip[1]: Br6c4{swn .} ==> Pr6c5 ≠ ns, Pr6c4 ≠ sw, Pr6c4 ≠ ns
P-single: Pr6c4 = se
P-single: Pr6c5 = nw
whip[1]: Pr6c4{se .} ==> Br5c4 ≠ e, Br5c3 ≠ s, Br5c3 ≠ e, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ nes, Br5c4 ≠ ne, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ wne, Br6c3 ≠ ne, Br6c3 ≠ wne
whip[1]: Br6c3{ew .} ==> Pr6c3 ≠ ne, Nr6c3 ≠ 3
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ se, Br5c2 ≠ ew, Br5c3 ≠ nw, Br5c2 ≠ ne, Br5c3 ≠ w, Br6c2 ≠ n, Br6c2 ≠ e
whip[1]: Br6c2{w .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ nw, Pr6c2 ≠ se, Pr6c2 ≠ ew, Pr6c3 ≠ sw
P-single: Pr5c2 = se
P-single: Pr6c3 = o
whip[1]: Pr5c2{se .} ==> Br5c1 ≠ w, Br5c1 ≠ s, Br5c1 ≠ n, Br5c1 ≠ o, Vr4c2 ≠ 1, Hr5c1 ≠ 1, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ sw, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c2 ≠ ns, Br5c2 ≠ sw
B-single: Br5c2 = nw
B-single: Br4c2 = nes
whip[1]: Br5c2{nw .} ==> Pr5c3 ≠ se, Pr5c3 ≠ ns
whip[1]: Pr5c3{ew .} ==> Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ ne
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br4c2{nes .} ==> Pr5c3 ≠ ew, Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr4c2 ≠ sw, Pr4c2 ≠ ns
P-single: Pr4c3 = sw
P-single: Pr5c3 = nw
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ ns, Br4c3 ≠ s, Br3c3 ≠ ns, Br3c3 ≠ w, Br3c3 ≠ s, Br3c2 ≠ ne, Br3c2 ≠ w, Br3c2 ≠ e, Br3c2 ≠ n, Br3c2 ≠ o, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br3c3 ≠ nes, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ wne, Br4c3 ≠ nes
whip[1]: Br4c3{ew .} ==> Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Nr4c3 ≠ 3
whip[1]: Pr5c4{se .} ==> Br5c3 ≠ n
B-single: Br5c3 = o
whip[1]: Br5c3{o .} ==> Pr5c4 ≠ ns, Pr5c4 ≠ se, Nr5c3 ≠ 1, Nr5c3 ≠ 2, Nr5c3 ≠ 3
N-single: Nr5c3 = 0
whip[1]: Pr5c4{ne .} ==> Br4c4 ≠ s, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ wne
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 0
whip[1]: Br3c3{ne .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ se, Nr3c3 ≠ 3, Pr3c3 ≠ sw
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ w
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br5c1{esw .} ==> Pr5c1 ≠ ne, Pr5c1 ≠ se, Nr5c1 ≠ 0
whip[1]: Pr6c3{o .} ==> Br6c3 ≠ ew
B-single: Br6c3 = e
whip[1]: Br6c3{e .} ==> Nr6c3 ≠ 2
N-single: Nr6c3 = 1
whip[1]: Pr6c2{nw .} ==> Br6c1 ≠ w, Br6c1 ≠ ne, Br6c1 ≠ sw, Br6c1 ≠ wne, Br6c1 ≠ nes, Br6c1 ≠ o, Br6c1 ≠ s
whip[1]: Br6c1{swn .} ==> Nr6c1 ≠ 0
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0, Nr5c4 ≠ 1
whip[1]: Br7c5{w .} ==> Nr7c5 ≠ 0, Nr7c5 ≠ 2
N-single: Nr7c5 = 1
w[1]-1-in-r7c5-symmetric-ne-corner ==> Pr8c5 ≠ sw, Pr8c5 ≠ o
whip[1]: Pr8c5{nw .} ==> Br7c4 ≠ ns, Br8c4 ≠ ne, Br8c4 ≠ sw, Br8c4 ≠ wne, Br7c4 ≠ n, Br7c5 ≠ n, Br8c4 ≠ s
B-single: Br7c5 = w
whip[1]: Br7c5{w .} ==> Hr7c5 ≠ 1, Pr7c5 ≠ ew
P-single: Pr7c5 = sw
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 1
whip[1]: Br4c6{nes .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Pr4c6 ≠ sw, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ nw, Pr4c7 ≠ ew, Nr4c6 ≠ 0, Nr4c6 ≠ 1
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ swn
whip[1]: Pr6c6{ne .} ==> Vr6c6 ≠ 1, Br6c6 ≠ w
B-single: Br6c6 = n
whip[1]: Br4c7{wne .} ==> Nr4c7 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ wne, Br6c8 ≠ se, Br5c8 ≠ w, Br6c8 ≠ o, Br6c8 ≠ e, Br6c8 ≠ s
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 0
whip[1]: Pr5c8{ne .} ==> Br4c8 ≠ s, Br4c8 ≠ w, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ wne, Br4c8 ≠ nes
whip[1]: Vr4c8{0 .} ==> Pr4c8 ≠ ns, Pr4c8 ≠ se, Pr4c8 ≠ sw, Pr5c8 ≠ ne, Br4c7 ≠ ew, Br4c7 ≠ wne, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn
P-single: Pr5c8 = o
whip[1]: Pr5c8{o .} ==> Br5c8 ≠ n, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ nes
whip[1]: Br5c8{se .} ==> Pr5c9 ≠ nw, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Nr5c8 ≠ 3
whip[1]: Pr5c9{ns .} ==> Br5c9 ≠ nw
whip[1]: Br4c8{ne .} ==> Nr4c8 ≠ 3
whip[1]: Br4c7{nw .} ==> Nr4c7 ≠ 3
whip[1]: Hr4c7{0 .} ==> Pr4c7 ≠ se, Pr4c8 ≠ nw, Pr4c8 ≠ ew, Br3c7 ≠ s, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ nes, Br4c7 ≠ nw
B-single: Br4c7 = w
whip[1]: Br4c7{w .} ==> Nr4c7 ≠ 2
N-single: Nr4c7 = 1
whip[1]: Pr4c8{ne .} ==> Br3c8 ≠ s, Br3c8 ≠ w, Br3c8 ≠ ns, Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ ew, Br3c8 ≠ wne, Br3c8 ≠ nes
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ w
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Vr6c8{0 .} ==> Pr6c8 ≠ sw, Pr7c8 ≠ nw, Br6c7 ≠ nes, Br6c8 ≠ w, Br6c8 ≠ ew
P-single: Pr6c8 = ew
B-single: Br6c7 = ns
whip[1]: Pr6c8{ew .} ==> Br5c8 ≠ e, Br5c8 ≠ o
whip[1]: Br5c8{se .} ==> Pr6c9 ≠ ns, Pr6c9 ≠ se, Nr5c8 ≠ 0
whip[1]: Pr6c9{ew .} ==> Br5c9 ≠ sw, Br6c8 ≠ nes, Br5c9 ≠ ne, Br6c8 ≠ ne, Br6c9 ≠ w
whip[1]: Br6c9{s .} ==> Pr7c9 ≠ ne, Pr7c9 ≠ ns, Pr6c10 ≠ sw, Pr7c10 ≠ nw
whip[1]: Pr7c10{ew .} ==> Br7c9 ≠ ne
whip[1]: Pr6c10{ew .} ==> Br6c10 ≠ nw, Br6c10 ≠ swn, Br6c10 ≠ wne, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ e, Br5c10 ≠ ne
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c9 ≠ nw, Br7c9 ≠ se, Br6c8 ≠ n, Br7c8 ≠ o, Br7c8 ≠ e, Br7c8 ≠ s, Br7c8 ≠ w
B-single: Br6c8 = ns
whip[1]: Br6c8{ns .} ==> Nr6c8 ≠ 3, Nr6c8 ≠ 1, Pr7c8 ≠ sw
N-single: Nr6c8 = 2
P-single: Pr7c8 = ew
whip[1]: Pr7c8{ew .} ==> Br7c7 ≠ wne
B-single: Br7c7 = nw
whip[1]: Br7c7{nw .} ==> Nr7c7 ≠ 3, Pr8c8 ≠ ns, Pr8c8 ≠ ne
N-single: Nr7c7 = 2
whip[1]: Pr8c8{se .} ==> Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ ew, Br8c8 ≠ sw, Br8c8 ≠ esw, Br8c8 ≠ nes, Br8c8 ≠ n, Br8c8 ≠ w
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Br6c7{ns .} ==> Nr6c7 ≠ 3, Nr6c7 ≠ 1
N-single: Nr6c7 = 2
whip[1]: Vr5c9{0 .} ==> Pr5c9 ≠ ns, Pr6c9 ≠ nw, Br5c8 ≠ se, Br5c9 ≠ ew
P-single: Pr6c9 = ew
B-single: Br5c8 = s
w[1]-1-in-r6c9-asymmetric-nw-corner ==> Pr7c10 ≠ ew, Pr7c10 ≠ ns, Pr7c10 ≠ ne
whip[1]: Pr6c9{ew .} ==> Br6c9 ≠ s, Br6c9 ≠ e
B-single: Br6c9 = n
whip[1]: Br6c9{n .} ==> Pr6c10 ≠ ne, Pr6c10 ≠ ns, Pr7c9 ≠ ew
P-single: Pr7c9 = sw
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ ns, Br7c8 ≠ ns, Br7c8 ≠ n
whip[1]: Br7c8{nes .} ==> Pr8c9 ≠ se, Pr8c9 ≠ ew, Nr7c8 ≠ 1
whip[1]: Pr8c9{nw .} ==> Br8c8 ≠ wne, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Pr6c10{ew .} ==> Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br6c10 ≠ ew, Br6c10 ≠ sw, Br6c10 ≠ esw, Br6c10 ≠ w
whip[1]: Br5c8{s .} ==> Nr5c8 ≠ 2
N-single: Nr5c8 = 1
whip[1]: Hr8c8{0 .} ==> Pr8c8 ≠ se, Pr8c9 ≠ nw, Br7c8 ≠ nes, Br8c8 ≠ nw, Br8c8 ≠ swn
P-single: Pr8c8 = o
B-single: Br7c8 = ne
whip[1]: Pr8c8{o .} ==> Br8c7 ≠ ew
B-single: Br8c7 = w
whip[1]: Br8c7{w .} ==> Nr8c7 ≠ 2, Pr9c8 ≠ ns, Pr9c8 ≠ ne
N-single: Nr8c7 = 1
whip[1]: Pr9c8{se .} ==> Br9c8 ≠ ne, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ n
whip[1]: Br9c8{swn .} ==> Pr9c9 ≠ sw, Pr10c9 ≠ nw, Nr9c8 ≠ 2
P-single: Pr10c9 = o
whip[1]: Pr10c9{o .} ==> Vr9c9 ≠ 1, Br9c8 ≠ e, Br9c8 ≠ swn, Br10c8 ≠ ns
B-single: Br10c8 = s
B-single: Br9c8 = o
whip[1]: Br10c8{s .} ==> Nr10c8 ≠ 2, Pr10c8 ≠ ne
N-single: Nr10c8 = 1
P-single: Pr10c8 = o
whip[1]: Pr10c8{o .} ==> Vr9c8 ≠ 1
whip[1]: Br9c8{o .} ==> Pr9c8 ≠ se, Pr9c9 ≠ ns, Pr9c9 ≠ nw, Pr9c9 ≠ se, Pr9c9 ≠ ew, Nr9c8 ≠ 1, Nr9c8 ≠ 3
N-single: Nr9c8 = 0
P-single: Pr9c8 = o
whip[1]: Pr9c8{o .} ==> Br8c8 ≠ s, Br8c8 ≠ se
whip[1]: Br8c8{e .} ==> Nr8c8 ≠ 2, Nr8c8 ≠ 3
whip[1]: Pr9c9{ne .} ==> Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ nes
whip[1]: Br7c8{ne .} ==> Nr7c8 ≠ 3
N-single: Nr7c8 = 2
whip[1]: Pr8c9{ns .} ==> Br8c9 ≠ o, Br8c9 ≠ e
whip[1]: Br8c9{esw .} ==> Nr8c9 ≠ 0
whip[1]: Vr8c9{0 .} ==> Pr8c9 ≠ ns, Pr9c9 ≠ ne, Br8c8 ≠ e, Br8c9 ≠ sw, Br8c9 ≠ esw
P-single: Pr7c10 = o
P-single: Pr9c9 = o
P-single: Pr8c9 = ne
B-single: Br8c8 = o
whip[1]: Pr7c10{o .} ==> Vr7c10 ≠ 1, Hr7c10 ≠ 1, Br6c10 ≠ s, Br6c10 ≠ ns, Br6c10 ≠ se, Br6c10 ≠ nes, Br7c9 ≠ ew
B-single: Br7c9 = sw
whip[1]: Br7c9{sw .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ ne
whip[1]: Pr8c10{sw .} ==> Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ swn, Br8c10 ≠ wne, Br8c10 ≠ o, Br8c10 ≠ e, Br8c10 ≠ s
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Br6c10{ne .} ==> Pr7c11 ≠ nw, Nr6c10 ≠ 3, Pr7c11 ≠ sw
whip[1]: Pr9c9{o .} ==> Hr9c9 ≠ 1
whip[1]: Br8c8{o .} ==> Nr8c8 ≠ 1
N-single: Nr8c8 = 0
whip[1]: Br8c9{ne .} ==> Nr8c9 ≠ 3, Pr9c10 ≠ ew, Pr9c10 ≠ sw
whip[1]: Pr9c10{ns .} ==> Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ nes, Br9c10 ≠ swn, Br9c10 ≠ wne, Br8c9 ≠ n, Br8c10 ≠ n
B-single: Br8c9 = ne
whip[1]: Br8c9{ne .} ==> Nr8c9 ≠ 1, Pr8c10 ≠ ew
N-single: Nr8c9 = 2
P-single: Pr8c10 = sw
whip[1]: Pr8c10{sw .} ==> Hr8c10 ≠ 1
whip[1]: Br8c10{esw .} ==> Pr8c11 ≠ nw, Pr8c11 ≠ sw
whip[1]: Br9c10{nes .} ==> Pr9c11 ≠ o, Pr9c11 ≠ nw, Pr10c11 ≠ o, Pr10c11 ≠ ns, Pr10c11 ≠ sw, Pr10c10 ≠ ns
P-single: Pr10c10 = se
P-single: Pr10c11 = nw
whip[1]: Pr10c10{se .} ==> Br10c10 ≠ w, Vr9c10 ≠ 1, Br9c10 ≠ esw
B-single: Br9c10 = nes
B-single: Br10c10 = nw
whip[1]: Br9c10{nes .} ==> Pr9c10 ≠ ns, Pr9c11 ≠ ns
P-single: Pr9c11 = sw
P-single: Pr9c10 = ne
whip[1]: Pr9c11{sw .} ==> Br8c10 ≠ w, Br8c10 ≠ ew, Br8c10 ≠ esw
B-single: Br8c10 = sw
whip[1]: Br8c10{sw .} ==> Nr8c10 ≠ 3, Nr8c10 ≠ 1, Pr8c11 ≠ ns
N-single: Nr8c10 = 2
P-single: Pr8c11 = o
whip[1]: Pr8c11{o .} ==> Vr7c11 ≠ 1
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 3, Nr10c10 ≠ 1, Nr10c10 ≠ 0
N-single: Nr10c10 = 2
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 0, Nr8c5 ≠ 3
whip[1]: Vr8c5{1 .} ==> Pr8c5 ≠ nw, Pr9c5 ≠ ew, Br8c4 ≠ ns, Br8c4 ≠ swn, Br8c5 ≠ s
P-single: Pr9c5 = ne
P-single: Pr8c5 = ns
B-single: Br8c5 = sw
whip[1]: Pr9c5{ne .} ==> Hr9c4 ≠ 1
whip[1]: Pr8c5{ns .} ==> Br7c4 ≠ nes
B-single: Br7c4 = ne
whip[1]: Br7c4{ne .} ==> Nr7c4 ≠ 3, Pr8c4 ≠ se, Pr8c4 ≠ ew
N-single: Nr7c4 = 2
whip[1]: Pr8c4{sw .} ==> Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ esw, Br8c3 ≠ swn, Br8c3 ≠ n, Br8c3 ≠ e, Br8c3 ≠ ns
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 1
N-single: Nr8c5 = 2
whip[1]: Br8c4{ew .} ==> Pr9c4 ≠ ne, Pr9c4 ≠ se, Pr9c4 ≠ ew, Nr8c4 ≠ 3
whip[1]: Br10c6{ne .} ==> Nr10c6 ≠ 3, Nr10c6 ≠ 1
N-single: Nr10c6 = 2
whip[1]: Br10c5{nw .} ==> Pr11c5 ≠ ne, Pr11c5 ≠ ew, Nr10c5 ≠ 0, Nr10c5 ≠ 3
P-single: Pr11c5 = nw
whip[1]: Pr11c5{nw .} ==> Br10c5 ≠ n, Br11c5 ≠ n, Br11c4 ≠ o, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ ew
B-single: Br10c4 = se
B-single: Br11c4 = n
B-single: Br11c5 = o
B-single: Br10c5 = nw
whip[1]: Br10c4{se .} ==> Pr10c5 ≠ ew, Pr11c4 ≠ nw, Hr10c4 ≠ 1
P-single: Pr11c4 = ew
P-single: Pr10c5 = se
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ ne, Br10c3 ≠ w, Br10c3 ≠ e, Br10c3 ≠ n, Br10c3 ≠ o, Br11c3 ≠ o, Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ wne, Br10c3 ≠ nes
B-single: Br11c3 = n
whip[1]: Br10c3{swn .} ==> Nr10c3 ≠ 0
whip[1]: Br10c5{nw .} ==> Nr10c5 ≠ 1
N-single: Nr10c5 = 2
whip[1]: Pr10c4{nw .} ==> Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c3 ≠ e, Br9c3 ≠ s
whip[1]: Vr6c11{0 .} ==> Br6c10 ≠ ne, Br6c11 ≠ w, Pr6c11 ≠ ns, Pr6c11 ≠ sw, Pr7c11 ≠ ns, Br6c10 ≠ e
P-single: Pr7c11 = o
B-single: Br6c11 = o
whip[1]: Br6c10{n .} ==> Nr6c10 ≠ 2
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ ns, Br5c10 ≠ ew, Br5c10 ≠ wne, Br5c10 ≠ s
whip[1]: Hr6c10{0 .} ==> Br6c10 ≠ n, Pr6c11 ≠ nw, Pr6c10 ≠ ew, Br5c10 ≠ se, Br5c10 ≠ nes
P-single: Pr5c9 = o
P-single: Pr6c10 = nw
P-single: Pr6c11 = o
B-single: Br6c10 = o
whip[1]: Pr5c9{o .} ==> Vr4c9 ≠ 1, Hr5c9 ≠ 1, Br4c8 ≠ e, Br4c8 ≠ ne, Br5c9 ≠ ns
B-single: Br5c9 = se
whip[1]: Br5c9{se .} ==> Pr5c10 ≠ ew, Pr5c10 ≠ nw
whip[1]: Pr5c10{se .} ==> Br4c10 ≠ esw, Br4c10 ≠ swn
whip[1]: Br4c10{nes .} ==> Pr4c11 ≠ o, Pr4c11 ≠ ns, Pr4c11 ≠ nw, Pr5c11 ≠ o, Pr5c11 ≠ sw, Pr4c10 ≠ ns, Pr4c10 ≠ sw
P-single: Pr4c11 = sw
whip[1]: Pr4c11{sw .} ==> Br3c10 ≠ ne, Br3c10 ≠ w, Br3c10 ≠ e, Br3c10 ≠ n, Br3c10 ≠ o, Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw, Br3c10 ≠ wne, Br3c10 ≠ nes
whip[1]: Br3c10{swn .} ==> Pr3c11 ≠ ns, Pr3c11 ≠ sw, Nr3c10 ≠ 0
P-single: Pr1c9 = se
P-single: Pr2c10 = o
P-single: Pr3c11 = nw
whip[1]: Pr1c9{se .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ n, Br1c8 ≠ o, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ sw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw
B-single: Br1c9 = nw
whip[1]: Br1c9{nw .} ==> Pr2c9 ≠ ew, Pr2c9 ≠ se, Pr1c10 ≠ se, Vr1c10 ≠ 1, Hr2c9 ≠ 1
V-single: Vr1c10 = 0
P-single: Pr1c10 = ew
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1

LOOP[84]: Vr1c11-Vr2c11-Hr3c10-Vr3c10-Hr4c10-Vr4c11-Hr5c10-Vr5c10-Hr6c9-Hr6c8-Hr6c7-Hr6c6-Vr5c6-Hr5c6-Vr4c7-Vr3c7-Hr3c6-Hr3c5-Vr3c5-Hr4c4-Vr4c4-Hr5c4-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Vr8c5-Hr9c5-Hr9c6-Vr8c7-Vr7c7-Hr7c7-Hr7c8-Vr7c9-Hr8c9-Vr8c10-Hr9c10-Vr9c11-Hr10c10-Vr10c10-Hr11c9-Hr11c8-Hr11c7-Vr10c7-Hr10c6-Hr10c5-Vr10c5-Hr11c4-Hr11c3-Hr11c2-Vr10c2-Hr10c2-Vr9c3-Hr9c2-Vr8c2-Hr8c1-Vr7c1-Hr7c1-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Hr2c8-Vr1c9-Hr1c9- ==> Hr1c10 = 1
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ w, Br1c10 ≠ sw, Br1c10 ≠ wne
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ s, Br1c10 ≠ o
whip[1]: Br1c10{nes .} ==> Pr1c11 ≠ o, Nr1c10 ≠ 0, Nr1c10 ≠ 1
P-single: Pr1c11 = sw
whip[1]: Hr2c10{0 .} ==> Pr2c11 ≠ nw, Br1c10 ≠ nes, Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ nw
P-single: Pr2c11 = ns
B-single: Br1c10 = ne
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ sw
whip[1]: Br1c10{ne .} ==> Nr1c10 ≠ 3
N-single: Nr1c10 = 2
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Pr2c9{nw .} ==> Br2c8 ≠ w, Br2c8 ≠ ne, Br2c8 ≠ sw, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c8 ≠ o, Br2c8 ≠ s
whip[1]: Br2c8{swn .} ==> Nr2c8 ≠ 0
whip[1]: Br1c8{esw .} ==> Pr1c8 ≠ se, Pr1c8 ≠ ew, Nr1c8 ≠ 0
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ esw, Br1c7 ≠ swn
whip[1]: Br1c7{nes .} ==> Pr1c7 ≠ o, Pr1c7 ≠ sw, Pr1c8 ≠ o, Pr2c8 ≠ ew, Pr2c8 ≠ sw
P-single: Pr1c8 = sw
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ e, Br1c8 ≠ se
whip[1]: Br1c8{esw .} ==> Nr1c8 ≠ 1
whip[1]: Pr2c8{ns .} ==> Hr2c7 ≠ 1, Br1c7 ≠ nes, Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ swn, Br2c8 ≠ e
B-single: Br1c7 = wne
whip[1]: Br1c7{wne .} ==> Pr2c7 ≠ ew, Pr2c7 ≠ se, Pr1c7 ≠ ew
P-single: Pr1c7 = se
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ w, Br1c6 ≠ s, Br1c6 ≠ n, Br1c6 ≠ o, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ sw, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ nes
whip[1]: Br1c6{esw .} ==> Pr1c6 ≠ se, Pr1c6 ≠ ew, Nr1c6 ≠ 0
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ n, Br1c5 ≠ e, Br1c5 ≠ ns
whip[1]: Pr2c7{nw .} ==> Br2c6 ≠ ne, Br2c6 ≠ sw
whip[1]: Pr2c10{o .} ==> Vr2c10 ≠ 1, Br2c10 ≠ ew
B-single: Br2c10 = se
whip[1]: Br2c10{se .} ==> Pr3c10 ≠ nw, Pr3c10 ≠ ns
whip[1]: Pr3c10{ew .} ==> Br3c9 ≠ sw, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c10 ≠ sw, Br3c9 ≠ o, Br3c9 ≠ s, Br3c9 ≠ w, Br3c9 ≠ ne, Br3c10 ≠ s
whip[1]: Br3c10{swn .} ==> Nr3c10 ≠ 1
whip[1]: Br3c9{swn .} ==> Nr3c9 ≠ 0
whip[1]: Pr4c10{ew .} ==> Vr4c10 ≠ 1, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ esw, Br4c10 ≠ wne, Br3c9 ≠ n
B-single: Br4c10 = nes
whip[1]: Br4c10{nes .} ==> Pr5c10 ≠ ns, Pr5c11 ≠ ns
P-single: Pr5c11 = nw
P-single: Pr5c10 = se
whip[1]: Pr5c11{nw .} ==> Br5c10 ≠ w
B-single: Br5c10 = nw
whip[1]: Br5c10{nw .} ==> Nr5c10 ≠ 3, Nr5c10 ≠ 1
N-single: Nr5c10 = 2
whip[1]: Br4c8{n .} ==> Pr4c9 ≠ ns, Pr4c9 ≠ se, Pr4c9 ≠ sw, Nr4c8 ≠ 2
whip[1]: Br6c10{o .} ==> Nr6c10 ≠ 1
N-single: Nr6c10 = 0
whip[1]: Vr8c4{0 .} ==> Br8c4 ≠ ew, Pr8c4 ≠ sw, Pr9c4 ≠ ns, Pr9c4 ≠ nw, Br8c3 ≠ ne, Br8c3 ≠ wne, Br8c3 ≠ nes
P-single: Pr8c4 = o
B-single: Br8c4 = e
whip[1]: Pr8c4{o .} ==> Br7c3 ≠ s, Br7c3 ≠ sw
whip[1]: Br7c3{w .} ==> Pr8c3 ≠ ne, Nr7c3 ≠ 2, Pr8c3 ≠ se, Pr8c3 ≠ ew
whip[1]: Br8c4{e .} ==> Nr8c4 ≠ 2
N-single: Nr8c4 = 1
whip[1]: Br8c3{sw .} ==> Nr8c3 ≠ 3
whip[1]: Pr9c4{sw .} ==> Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ esw, Br9c3 ≠ n
whip[1]: Br9c3{nes .} ==> Pr9c3 ≠ se, Nr9c3 ≠ 2
whip[1]: Vr5c1{0 .} ==> Br5c1 ≠ esw, Br5c0 ≠ e, Pr5c1 ≠ ns, Pr6c1 ≠ ne, Pr6c1 ≠ ns, Br5c1 ≠ ew
P-single: Pr5c1 = o
B-single: Br5c0 = o
whip[1]: Pr5c1{o .} ==> Vr4c1 ≠ 1
whip[1]: Br5c1{se .} ==> Nr5c1 ≠ 3
whip[1]: Pr6c1{se .} ==> Br6c1 ≠ ns, Br6c1 ≠ ew, Br6c1 ≠ esw, Br6c1 ≠ n
whip[1]: Hr6c1{0 .} ==> Br6c1 ≠ swn, Pr6c1 ≠ se, Pr6c2 ≠ nw, Br5c1 ≠ se, Br6c1 ≠ nw
P-single: Pr6c2 = ns
P-single: Pr6c1 = o
B-single: Br5c1 = e
w[1]-1-in-r6c2-asymmetric-nw-corner ==> Pr7c3 ≠ sw
P-single: Pr7c3 = o
whip[1]: Pr6c2{ns .} ==> Br6c2 ≠ s
B-single: Br6c2 = w
whip[1]: Br6c2{w .} ==> Hr7c2 ≠ 1, Pr7c2 ≠ se, Pr7c2 ≠ ew
whip[1]: Pr7c2{nw .} ==> Br7c1 ≠ wne, Br7c1 ≠ nes
whip[1]: Br7c1{swn .} ==> Pr7c1 ≠ o, Pr7c1 ≠ ne, Pr8c1 ≠ o, Pr8c1 ≠ ns, Pr8c1 ≠ se, Pr8c2 ≠ ne, Pr8c2 ≠ ns
P-single: Pr8c1 = ne
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o, Br8c1 ≠ e, Br8c1 ≠ s, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ wne
whip[1]: Br8c1{nes .} ==> Pr9c1 ≠ ne, Pr9c1 ≠ ns, Nr8c1 ≠ 0
whip[1]: Pr8c2{sw .} ==> Vr7c2 ≠ 1, Br7c1 ≠ esw, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ o, Br8c2 ≠ e, Br8c2 ≠ s
B-single: Br7c1 = swn
whip[1]: Br7c1{swn .} ==> Pr7c2 ≠ ns, Pr7c1 ≠ ns
P-single: Pr7c1 = se
P-single: Pr7c2 = nw
whip[1]: Pr7c1{se .} ==> Br6c1 ≠ e
B-single: Br6c1 = se
whip[1]: Br6c1{se .} ==> Nr6c1 ≠ 3, Nr6c1 ≠ 1
N-single: Nr6c1 = 2
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 0
whip[1]: Br5c1{e .} ==> Nr5c1 ≠ 2
N-single: Nr5c1 = 1
whip[1]: Pr7c3{o .} ==> Vr7c3 ≠ 1, Br7c3 ≠ w
B-single: Br7c3 = o
whip[1]: Br7c3{o .} ==> Pr8c3 ≠ ns, Pr8c3 ≠ nw, Nr7c3 ≠ 1
N-single: Nr7c3 = 0
whip[1]: Pr8c3{sw .} ==> Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ n, Br8c2 ≠ ns
whip[1]: Hr3c3{0 .} ==> Br3c3 ≠ ne, Pr3c3 ≠ ne, Pr3c3 ≠ ew, Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr3c4 ≠ sw, Br2c3 ≠ s, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ nes, Br3c3 ≠ n
whip[1]: Br3c3{e .} ==> Nr3c3 ≠ 2
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ wne, Pr3c6 ≠ ns, Pr4c6 ≠ ne, Pr4c6 ≠ nw, Br3c5 ≠ e, Br3c5 ≠ ne, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ swn
P-single: Pr3c6 = ew
whip[1]: Pr3c6{ew .} ==> Br3c6 ≠ s, Br3c6 ≠ e, Br3c5 ≠ w, Br3c5 ≠ s, Br3c5 ≠ o, Br2c5 ≠ ne, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c6 ≠ nw, Br2c6 ≠ ew, Br3c5 ≠ sw
whip[1]: Br3c5{swn .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ nw, Nr3c5 ≠ 0
whip[1]: Pr3c5{ew .} ==> Vr2c5 ≠ 1, Br2c5 ≠ sw, Br3c4 ≠ sw, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c4 ≠ o, Br3c4 ≠ s, Br3c4 ≠ w, Br3c4 ≠ ne
B-single: Br2c5 = ns
whip[1]: Br2c5{ns .} ==> Pr2c6 ≠ ns, Pr2c5 ≠ ns, Pr2c5 ≠ sw
P-single: Pr2c6 = ew
whip[1]: Pr2c6{ew .} ==> Br1c6 ≠ e, Br1c5 ≠ ne, Br1c5 ≠ w, Br1c5 ≠ o, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c6 ≠ ew, Br1c6 ≠ esw, Br2c6 ≠ se
B-single: Br2c6 = ns
B-single: Br1c6 = se
whip[1]: Br2c6{ns .} ==> Pr3c7 ≠ ns, Pr3c7 ≠ ne, Pr2c7 ≠ ns, Vr2c7 ≠ 1
P-single: Pr2c7 = nw
whip[1]: Pr3c7{sw .} ==> Br3c7 ≠ nw, Br3c7 ≠ wne, Br3c7 ≠ o, Br3c7 ≠ e
whip[1]: Br3c7{ew .} ==> Nr3c7 ≠ 0, Nr3c7 ≠ 3
whip[1]: Br1c6{se .} ==> Nr1c6 ≠ 3, Nr1c6 ≠ 1, Pr1c6 ≠ sw
N-single: Nr1c6 = 2
P-single: Pr1c6 = o
whip[1]: Br1c5{sw .} ==> Pr1c5 ≠ se, Pr1c5 ≠ ew, Nr1c5 ≠ 0, Nr1c5 ≠ 3
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br1c4{nes .} ==> Pr1c4 ≠ o, Pr1c4 ≠ sw, Pr1c5 ≠ o, Pr2c5 ≠ ew
P-single: Pr2c5 = ne
P-single: Pr1c5 = sw
whip[1]: Pr2c5{ne .} ==> Hr2c4 ≠ 1, Br1c4 ≠ nes, Br1c5 ≠ s
B-single: Br1c5 = sw
B-single: Br1c4 = wne
whip[1]: Br1c5{sw .} ==> Nr1c5 ≠ 1
N-single: Nr1c5 = 2
whip[1]: Br1c4{wne .} ==> Pr2c4 ≠ ew, Pr2c4 ≠ se, Pr1c4 ≠ ew
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ w, Br1c3 ≠ s, Br1c3 ≠ n, Br1c3 ≠ o, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ sw, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes
whip[1]: Br1c3{esw .} ==> Pr1c3 ≠ se, Pr1c3 ≠ ew, Nr1c3 ≠ 0
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Pr1c3 ≠ o, Pr2c3 ≠ ew, Pr2c3 ≠ sw
P-single: Pr1c3 = sw
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ e, Br1c3 ≠ se
whip[1]: Br1c3{esw .} ==> Nr1c3 ≠ 1
whip[1]: Pr2c3{ns .} ==> Hr2c2 ≠ 1, Br1c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ wne, Br2c3 ≠ o, Br2c3 ≠ e
B-single: Br1c2 = wne
whip[1]: Br1c2{wne .} ==> Pr2c2 ≠ ew, Pr2c2 ≠ se, Pr1c2 ≠ ew
P-single: Pr1c2 = se
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ s, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ swn, Br1c1 ≠ wne
whip[1]: Br1c1{se .} ==> Pr1c1 ≠ se, Pr2c1 ≠ ne, Pr2c1 ≠ ns, Nr1c1 ≠ 0, Nr1c1 ≠ 3
P-single: Pr1c1 = o
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ esw, Br2c1 ≠ nes
whip[1]: Br2c1{wne .} ==> Pr2c1 ≠ o, Pr3c1 ≠ o, Pr3c1 ≠ se, Pr2c2 ≠ ns
P-single: Pr2c2 = nw
P-single: Pr2c1 = se
whip[1]: Pr2c2{nw .} ==> Br1c1 ≠ e, Vr2c2 ≠ 1, Br2c1 ≠ wne
B-single: Br2c1 = swn
B-single: Br1c1 = se
whip[1]: Br2c1{swn .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ ne, Pr3c1 ≠ ns
P-single: Pr3c1 = ne
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ e, Br3c1 ≠ s, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ swn, Br3c1 ≠ wne
whip[1]: Br3c1{ns .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ ns, Nr3c1 ≠ 1, Nr3c1 ≠ 3
N-single: Nr3c1 = 2
whip[1]: Pr3c2{sw .} ==> Br3c2 ≠ swn, Br3c2 ≠ s
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 1, Nr3c2 ≠ 3
N-single: Nr3c2 = 2
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 1
N-single: Nr1c1 = 2
whip[1]: Br2c3{ew .} ==> Nr2c3 ≠ 0, Nr2c3 ≠ 3
whip[1]: Pr2c4{nw .} ==> Br2c3 ≠ w, Br2c3 ≠ ne
whip[1]: Br3c4{swn .} ==> Nr3c4 ≠ 0
whip[1]: Br3c6{ns .} ==> Nr3c6 ≠ 1, Nr3c6 ≠ 3
N-single: Nr3c6 = 2
whip[1]: Vr3c7{1 .} ==> Br3c7 ≠ ne, Pr3c7 ≠ ew, Pr4c7 ≠ sw, Br3c6 ≠ ns, Br3c7 ≠ n
P-single: Pr4c6 = o
P-single: Pr4c7 = ns
P-single: Pr3c7 = sw
B-single: Br3c6 = ne
whip[1]: Pr4c6{o .} ==> Hr4c5 ≠ 1, Br3c5 ≠ ns, Br3c5 ≠ swn, Br4c6 ≠ nes
B-single: Br4c6 = se
whip[1]: Br4c6{se .} ==> Nr4c6 ≠ 3
N-single: Nr4c6 = 2
whip[1]: Br3c5{nw .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ se, Pr4c5 ≠ ew, Nr3c5 ≠ 3
whip[1]: Pr3c7{sw .} ==> Hr3c7 ≠ 1
whip[1]: Br3c7{ew .} ==> Pr3c8 ≠ nw, Pr3c8 ≠ ew, Pr3c8 ≠ sw
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ swn, Pr3c4 ≠ ns, Pr3c4 ≠ se, Pr4c4 ≠ ne, Pr4c4 ≠ ns, Br3c3 ≠ e, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ esw
B-single: Br3c3 = o
whip[1]: Br3c3{o .} ==> Nr3c3 ≠ 1
N-single: Nr3c3 = 0
whip[1]: Br3c4{se .} ==> Nr3c4 ≠ 3
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, Br4c4 ≠ sw
whip[1]: Br4c4{swn .} ==> Pr4c5 ≠ o, Pr4c5 ≠ sw, Nr4c4 ≠ 2
whip[1]: Pr4c5{nw .} ==> Br3c4 ≠ ns, Br3c4 ≠ n, Br3c5 ≠ n
B-single: Br3c5 = nw
whip[1]: Br3c5{nw .} ==> Nr3c5 ≠ 1, Pr3c5 ≠ ew
N-single: Nr3c5 = 2
P-single: Pr3c5 = se
whip[1]: Pr3c5{se .} ==> Hr3c4 ≠ 1
whip[1]: Br3c4{se .} ==> Pr3c4 ≠ ne
P-single: Pr3c4 = o
whip[1]: Pr3c4{o .} ==> Vr2c4 ≠ 1, Br2c3 ≠ ew
B-single: Br2c3 = n
whip[1]: Br2c3{n .} ==> Vr2c3 ≠ 1, Pr2c3 ≠ ns, Pr2c4 ≠ ns, Pr3c3 ≠ nw, Nr2c3 ≠ 2
N-single: Nr2c3 = 1
P-single: Pr4c2 = ne
P-single: Pr3c3 = o
P-single: Pr2c4 = nw
P-single: Pr2c3 = ne
whip[1]: Pr4c2{ne .} ==> Hr4c1 ≠ 1, Br3c1 ≠ ns, Br3c2 ≠ ns
B-single: Br3c2 = sw
B-single: Br3c1 = ne
whip[1]: Br3c2{sw .} ==> Pr3c2 ≠ ew, Hr3c2 ≠ 1
P-single: Pr4c1 = o
P-single: Pr3c2 = sw
whip[1]: Pr2c4{nw .} ==> Br1c3 ≠ ew
B-single: Br1c3 = esw
whip[1]: Br1c3{esw .} ==> Nr1c3 ≠ 2
N-single: Nr1c3 = 3
whip[1]: Hr4c4{1 .} ==> Br4c4 ≠ e, Pr4c4 ≠ o, Pr4c5 ≠ ns, Br3c4 ≠ e
P-single: Pr4c5 = nw
P-single: Pr4c4 = se
B-single: Br3c4 = se
B-single: Br4c4 = swn
whip[1]: Pr4c5{nw .} ==> Vr4c5 ≠ 1
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ w
B-single: Br4c3 = ew
whip[1]: Br4c3{ew .} ==> Nr4c3 ≠ 1, Pr5c4 ≠ o
N-single: Nr4c3 = 2
P-single: Pr5c4 = ne
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ se
B-single: Br5c4 = nes
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 2, Pr5c5 ≠ ns
N-single: Nr5c4 = 3
P-single: Pr5c5 = sw
whip[1]: Br3c4{se .} ==> Nr3c4 ≠ 1
N-single: Nr3c4 = 2
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 1
N-single: Nr4c4 = 3
whip[1]: Vr10c1{0 .} ==> Br10c1 ≠ swn, Br10c0 ≠ e, Pr11c1 ≠ ne, Pr10c1 ≠ ns, Pr10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr11c1 = o
B-single: Br10c0 = o
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Br11c1{o .} ==> Pr11c2 ≠ nw, Pr11c2 ≠ ew
whip[1]: Pr11c2{ne .} ==> Br10c2 ≠ wne, Br10c2 ≠ nes
whip[1]: Br10c2{swn .} ==> Pr11c2 ≠ o, Pr11c3 ≠ ne, Pr10c2 ≠ nw, Pr10c2 ≠ ew
P-single: Pr11c3 = ew
P-single: Pr11c2 = ne
whip[1]: Pr11c3{ew .} ==> Br11c2 ≠ o, Br10c2 ≠ esw, Br10c3 ≠ sw, Br10c3 ≠ swn
B-single: Br10c2 = swn
B-single: Br11c2 = n
whip[1]: Br10c2{swn .} ==> Pr10c3 ≠ se, Pr10c3 ≠ ns, Pr10c2 ≠ ns
P-single: Pr10c2 = se
whip[1]: Pr10c2{se .} ==> Br10c1 ≠ n, Br10c1 ≠ o, Vr9c2 ≠ 1, Hr10c1 ≠ 1, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c2 ≠ wne, Br10c1 ≠ ne
B-single: Br10c1 = e
B-single: Br9c2 = nes
whip[1]: Br10c1{e .} ==> Nr10c1 ≠ 2, Nr10c1 ≠ 0, Pr10c1 ≠ ne, Nr10c1 ≠ 3
N-single: Nr10c1 = 1
P-single: Pr10c1 = o
whip[1]: Pr10c1{o .} ==> Vr9c1 ≠ 1
whip[1]: Br9c2{nes .} ==> Pr10c3 ≠ ew, Pr9c3 ≠ ew, Pr9c3 ≠ nw, Pr9c3 ≠ ns, Pr9c3 ≠ ne, Pr9c3 ≠ o, Pr9c2 ≠ sw, Pr9c2 ≠ ns
P-single: Pr9c3 = sw
P-single: Pr10c3 = nw
whip[1]: Pr9c3{sw .} ==> Br9c3 ≠ o, Br8c3 ≠ w, Br8c3 ≠ s, Br8c2 ≠ ne, Br8c2 ≠ w, Br8c2 ≠ nes, Br8c3 ≠ sw, Br9c3 ≠ nes
B-single: Br9c3 = w
B-single: Br8c3 = o
B-single: Br8c2 = sw
whip[1]: Br9c3{w .} ==> Nr9c3 ≠ 3, Nr9c3 ≠ 0, Pr10c4 ≠ nw, Vr9c4 ≠ 1, Pr9c4 ≠ sw
N-single: Nr9c3 = 1
P-single: Pr9c4 = o
P-single: Pr10c4 = o
whip[1]: Pr10c4{o .} ==> Br10c3 ≠ ns
B-single: Br10c3 = s
whip[1]: Br10c3{s .} ==> Nr10c3 ≠ 3, Nr10c3 ≠ 2
N-single: Nr10c3 = 1
whip[1]: Br8c3{o .} ==> Pr8c3 ≠ sw, Nr8c3 ≠ 1, Nr8c3 ≠ 2
N-single: Nr8c3 = 0
P-single: Pr8c3 = o
whip[1]: Pr8c3{o .} ==> Hr8c2 ≠ 1
whip[1]: Br8c2{sw .} ==> Nr8c2 ≠ 3, Nr8c2 ≠ 1, Pr9c2 ≠ ew, Pr8c2 ≠ ew
N-single: Nr8c2 = 2
P-single: Pr8c2 = sw
P-single: Pr9c2 = ne
whip[1]: Pr8c2{sw .} ==> Br8c1 ≠ ns, Br8c1 ≠ n
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 1
whip[1]: Pr9c2{ne .} ==> Hr9c1 ≠ 1, Br8c1 ≠ nes
B-single: Br8c1 = ne
whip[1]: Br8c1{ne .} ==> Nr8c1 ≠ 3, Pr9c1 ≠ se
N-single: Nr8c1 = 2
P-single: Pr9c1 = o
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Hr2c8{1 .} ==> Br2c8 ≠ esw, Pr2c8 ≠ ns, Pr2c9 ≠ ns, Br1c8 ≠ ew, Br2c8 ≠ ew
P-single: Pr2c9 = nw
P-single: Pr2c8 = ne
B-single: Br1c8 = esw
whip[1]: Pr2c9{nw .} ==> Vr2c9 ≠ 1
whip[1]: Pr2c8{ne .} ==> Vr2c8 ≠ 1
whip[1]: Br1c8{esw .} ==> Nr1c8 ≠ 2
N-single: Nr1c8 = 3
whip[1]: Br2c8{ns .} ==> Pr3c8 ≠ ne, Pr3c8 ≠ ns, Pr3c9 ≠ ne, Pr3c9 ≠ ns, Pr3c9 ≠ nw, Nr2c8 ≠ 3
whip[1]: Pr3c8{se .} ==> Br3c8 ≠ ne, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ n
whip[1]: Br3c8{swn .} ==> Pr3c9 ≠ sw, Pr4c9 ≠ nw, Nr3c8 ≠ 2
whip[1]: Pr4c9{ew .} ==> Br3c9 ≠ ew
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Vr3c10{1 .} ==> Br3c10 ≠ ns, Pr3c10 ≠ ew, Pr4c10 ≠ ew, Br3c9 ≠ ns, Br3c9 ≠ swn
P-single: Pr4c10 = ne
P-single: Pr3c10 = se
B-single: Br3c9 = e
B-single: Br3c10 = swn
whip[1]: Pr4c10{ne .} ==> Hr4c9 ≠ 1
whip[1]: Pr3c10{se .} ==> Hr3c9 ≠ 1
whip[1]: Br3c9{e .} ==> Nr3c9 ≠ 2, Pr4c9 ≠ ne, Vr3c9 ≠ 1, Pr3c9 ≠ se, Pr3c9 ≠ ew, Pr4c9 ≠ ew, Nr3c9 ≠ 3
V-single: Vr3c9 = 0
N-single: Nr3c9 = 1
P-single: Pr4c9 = o
P-single: Pr3c9 = o
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
same-colour-in-{r3 r4}c8 ==> Hr4c8 = 0
same-colour-in-r3{c7 c8} ==> Vr3c8 = 0
3-in-r1c8-no-U-turn-from-south ==> Hr3c8 = O

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXOOXOXX
XXXXXXXXXX
OXXXOOXXXO
OOXOOOXXXX
OXXXOXXXXO
OXXOOOOOOO
XXXXOOXXOO
OXXXOOXXXO
OOXXXXXXXX
OXXXOOXXXO

.   .———.   .———.   .   .———.   .———.———.
    | 3 |   | 3 |       | 3 |   | 2     |
.———.   .———.   .———.———.   .———.   .   .
| 3   0       0   2   2   0       0   2 |
.———.   .   .   .———.———.   .   .   .———.
    |           |       |           |
.   .———.   .———.   .   .   .   .   .———.
  0   3 |   |     0     |         0   3 |
.   .———.   .———.   .———.   .   .   .———.
    | 2         | 2 | 3   1       2 |
.   .   .   .———.   .———.———.———.———.   .
    | 1     | 3   0   1           1
.———.   .   .———.   .   .———.———.   .   .
| 3   0         |     1 |       | 2   0
.———.   .   .   .   .   .   .   .———.   .
    |           |       |           |
.   .———.   .   .———.———.   .   .   .———.
  0   3 |     0   2   2   0       0   3 |
.   .———.   .   .———.———.   .   .   .———.
    | 3       2 |       | 2       2 |
.   .———.———.———.   .   .———.———.———.   .

init-time = 0.63s, solve-time = 30.81s, total-time = 31.44s
nb-facts=<Fact-179442>
Quasi-Loop max length = 84
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
