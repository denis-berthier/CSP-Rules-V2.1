Mellon rating = 1


(solve 
10 10 
1 . . 3 . . 2 . 2 0
0 3 . . 2 2 . . 2 . 
. . 2 . . . . 2 . . 
3 . . 2 . . 2 . . 3
. 3 . . 2 3 . . 0 . 
. 2 . . 1 2 . . 1 . 
1 . . 2 . . 2 . . 1 
. . 2 . . . . 2 . .  
. 3 . . 0 2 . . 2 1 
3 1 . 1 . . 0 . . 0
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 . . 3 . . 2 . 2 0
0 3 . . 2 2 . . 2 .
. . 2 . . . . 2 . .
3 . . 2 . . 2 . . 3
. 3 . . 2 3 . . 0 .
. 2 . . 1 2 . . 1 .
1 . . 2 . . 2 . . 1
. . 2 . . . . 2 . .
. 3 . . 0 2 . . 2 1
3 1 . 1 . . 0 . . 0

Loading pre-computed background
start init-inner-N-and-B-candidates 0.608000993728638
start solution 0.621588945388794
entering BRT
w[0]-0-in-r10c10 ==> Hr11c10 = 0, Hr10c10 = 0, Vr10c11 = 0, Vr10c10 = 0
w[0]-0-in-r10c7 ==> Hr11c7 = 0, Hr10c7 = 0, Vr10c8 = 0, Vr10c7 = 0
w[0]-0-in-r9c5 ==> Hr10c5 = 0, Hr9c5 = 0, Vr9c6 = 0, Vr9c5 = 0
w[0]-0-in-r5c9 ==> Hr6c9 = 0, Hr5c9 = 0, Vr5c10 = 0, Vr5c9 = 0
w[0]-0-in-r2c1 ==> Hr3c1 = 0, Hr2c1 = 0, Vr2c2 = 0, Vr2c1 = 0
w[0]-0-in-r1c10 ==> Hr2c10 = 0, Hr1c10 = 0, Vr1c11 = 0, Vr1c10 = 0
w0-adjacent-3-0-in-r2{c2 c1} ==> Vr2c3 = 1, Vr3c2 = 1, Vr1c2 = 1, Hr3c2 = 1, Hr2c2 = 1, Vr3c3 = 0, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-2-in-r3c3-open-nw-corner ==> Hr4c3 = 1, Vr3c4 = 1, Hr4c4 = 0, Vr4c4 = 0
w[1]-2-in-r4c4-open-nw-corner ==> Hr5c4 = 1, Vr4c5 = 1, Hr5c5 = 0, Vr5c5 = 0
w[1]-2-in-r5c5-open-nw-corner ==> Hr6c5 = 1, Vr5c6 = 1, Hr6c6 = 0, Vr6c6 = 0
w[1]-2-in-r6c6-open-nw-corner ==> Hr7c6 = 1, Vr6c7 = 1, Hr7c7 = 0, Vr7c7 = 0
w[1]-2-in-r7c7-open-nw-corner ==> Hr8c7 = 1, Vr7c8 = 1, Hr8c8 = 0, Vr8c8 = 0
w[1]-2-in-r8c8-open-nw-corner ==> Hr9c8 = 1, Vr8c9 = 1, Hr9c9 = 0, Vr9c9 = 0
w[1]-2-in-r9c9-open-nw-corner ==> Hr10c9 = 1, Vr9c10 = 1
w[1]-diagonal-3-0-in-{r4c10...r5c9} ==> Vr4c10 = 1, Hr5c10 = 1
w[1]-diagonal-3s-in-{r9c2...r10c1} ==> Vr9c3 = 1, Hr9c2 = 1, Vr8c3 = 0, Hr9c3 = 0
w[1]-2-in-r8c3-open-sw-corner ==> Hr8c3 = 1, Vr8c4 = 1, Hr8c4 = 0, Vr7c4 = 0
w[1]-2-in-r7c4-open-sw-corner ==> Hr7c4 = 1, Vr7c5 = 1, Hr7c5 = 0, Vr6c5 = 0
w[1]-diagonal-3s-in-{r4c1...r5c2} ==> Vr5c3 = 1, Vr4c1 = 1, Hr6c2 = 1, Hr4c1 = 1, Vr6c3 = 0, Vr3c1 = 0, Hr6c3 = 0
w[1]-3+diagonal-2s-0-in-{r5c6+r6c6...r9c9 r10c10} ==> Vr5c7 = 1, Hr5c6 = 1, Vr4c7 = 0, Hr6c7 = 0, Hr5c7 = 0
w[1]-2-in-r4c7-open-sw-corner ==> Hr4c7 = 1, Vr4c8 = 1, Hr4c8 = 0, Vr3c8 = 0
w[1]-2-in-r3c8-open-sw-corner ==> Hr3c8 = 1, Vr3c9 = 1, Hr3c9 = 0, Vr2c9 = 0
w[1]-2-in-r2c9-open-sw-corner ==> Hr2c9 = 1, Vr2c10 = 1
w[1]-3-in-r4c1-hit-by-verti-line-at-ne ==> Hr5c1 = 1
w[1]-adjacent-1-3-on-edge-in-r10{c2 c1} ==> Vr10c3 = 0, Hr10c2 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r9{c10 c9}-fwd-diag-2s-3 ==> Vr9c11 = 0, Hr9c10 = 0
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r5c6-closed-ne-corner ==> Pr6c6 ≠ sw, Pr6c6 ≠ ne
w[1]-3-in-r5c6-closed-nw-corner ==> Pr6c7 ≠ se, Pr6c7 ≠ nw
w[1]-3-in-r5c2-closed-se-corner ==> Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ o
w[1]-3-in-r4c10-closed-sw-corner ==> Pr4c11 ≠ sw, Pr4c11 ≠ o
w[1]-3-in-r4c1-closed-sw-corner ==> Pr4c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ o
w[1]-3-in-r2c2-closed-se-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r2c2-closed-ne-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
w[1]-1-in-r6c5-asymmetric-ne-corner ==> Pr7c5 ≠ ew, Pr7c5 ≠ se, Pr7c5 ≠ nw, Pr7c5 ≠ ns
P-single: Pr8c4 = sw
P-single: Pr7c5 = sw
entering level Loop with <Fact-93728>
entering level Col with <Fact-93822>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-vertical-line-r10{c9 c10} ==> Ir10c9 = out
horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
horizontal-line-{r8 r9}c8 ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
horizontal-line-{r7 r8}c7 ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
horizontal-line-{r6 r7}c6 ==> Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
horizontal-line-{r7 r8}c3 ==> Ir8c3 = out
no-vertical-line-r8{c2 c3} ==> Ir8c2 = out
horizontal-line-{r8 r9}c2 ==> Ir9c2 = in
no-horizontal-line-{r9 r10}c2 ==> Ir10c2 = in
no-vertical-line-r10{c2 c3} ==> Ir10c3 = in
vertical-line-r9{c2 c3} ==> Ir9c3 = out
vertical-line-r8{c3 c4} ==> Ir8c4 = in
vertical-line-r7{c4 c5} ==> Ir7c5 = out
horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
no-vertical-line-r4{c3 c4} ==> Ir4c3 = out
horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
horizontal-line-{r3 r4}c1 ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
vertical-line-r1{c1 c2} ==> Ir1c1 = out
horizontal-line-{r4 r5}c1 ==> Ir5c1 = out
vertical-line-r3{c3 c4} ==> Ir3c4 = out
vertical-line-r4{c4 c5} ==> Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
no-vertical-line-r4{c6 c7} ==> Ir4c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
vertical-line-r5{c6 c7} ==> Ir5c6 = out
vertical-line-r4{c7 c8} ==> Ir4c8 = out
no-horizontal-line-{r3 r4}c8 ==> Ir3c8 = out
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-horizontal-line-{r2 r3}c9 ==> Ir2c9 = in
no-vertical-line-r2{c8 c9} ==> Ir2c8 = in
vertical-line-r2{c9 c10} ==> Ir2c10 = out
no-horizontal-line-{r1 r2}c10 ==> Ir1c10 = out
no-vertical-line-r1{c9 c10} ==> Ir1c9 = out
vertical-line-r7{c7 c8} ==> Ir7c8 = out
vertical-line-r8{c8 c9} ==> Ir8c9 = in
vertical-line-r9{c9 c10} ==> Ir9c10 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
vertical-line-r10{c0 c1} ==> Ir10c1 = in
no-horizontal-line-{r10 r11}c7 ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-vertical-line-r10{c7 c8} ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
different-colours-in-r9{c7 c8} ==> Hr9c8 = 1
same-colour-in-r10{c8 c9} ==> Vr10c9 = 0
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
different-colours-in-{r9 r10}c8 ==> Hr10c8 = 1
same-colour-in-{r10 r11}c6 ==> Hr11c6 = 0
same-colour-in-r10{c1 c2} ==> Vr10c2 = 0
w[0]-adjacent-3-in-r9c2-nolines-south ==> Vr9c2 = 1, Hr10c3 = 1, Hr10c1 = 1, Vr8c2 = 0, Hr9c1 = 0
w[1]-3-in-r10c1-closed-nw-corner ==> Pr11c2 ≠ nw, Pr11c2 ≠ o
w[1]-3-in-r9c2-closed-nw-corner ==> Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ o
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = out
same-colour-in-r8{c0 c1} ==> Vr8c1 = 0
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
different-colours-in-r8{c9 c10} ==> Hr8c10 = 1

LOOP[8]: Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9- ==> Hr8c9 = 0
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
different-colours-in-r7{c8 c9} ==> Hr7c9 = 1
same-colour-in-{r0 r1}c9 ==> Hr1c9 = 0
w[1]-2-in-r1c9-open-ne-corner ==> Vr1c9 = 1, Hr2c8 = 0
no-horizontal-line-{r1 r2}c8 ==> Ir1c8 = in
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
w[1]-3-in-r1c4-hit-by-horiz-line-at-nw ==> Vr1c5 = 1, Hr2c4 = 1
w[1]-2-in-r2c5-open-nw-corner ==> Hr3c5 = 1, Vr2c6 = 1, Hr3c6 = 0, Vr3c6 = 0
w[1]-3-in-r1c4-closed-se-corner ==> Pr1c4 ≠ se, Pr1c4 ≠ o
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
w[1]-3-in-r5c2-hit-by-verti-line-at-ne ==> Vr5c2 = 1, Hr5c3 = 0
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-1-in-r7c1-asymmetric-ne-corner ==> Pr8c1 ≠ se, Pr8c1 ≠ ns
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
vertical-line-r5{c2 c3} ==> Ir5c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir6c3 = out
no-vertical-line-r6{c2 c3} ==> Ir6c2 = out
no-vertical-line-r6{c1 c2} ==> Ir6c1 = out
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
same-colour-in-r6{c3 c4} ==> Vr6c4 = 0
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-r7{c5 c6} ==> Hr7c6 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1

LOOP[10]: Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3- ==> Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c4 = in
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
Starting_init_links_with_<Fact-94571>
920 candidates, 8203 csp-links and 30476 links. Density = 7.21%
starting non trivial part of solution
Entering_level_W1_with_<Fact-171934>
whip[1]: Hr11c9{0 .} ==> Br10c9 ≠ nes, Br11c9 ≠ n, Pr11c9 ≠ ne, Pr11c9 ≠ ew, Pr11c10 ≠ nw, Pr11c10 ≠ ew, Br10c9 ≠ s, Br10c9 ≠ ns, Br10c9 ≠ se, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn
B-single: Br11c9 = o
whip[1]: Pr11c9{nw .} ==> Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ swn, Br10c8 ≠ wne, Br10c8 ≠ e, Br10c8 ≠ s
whip[1]: Hr11c4{1 .} ==> Br10c4 ≠ w, Br11c4 ≠ o, Pr11c4 ≠ o, Pr11c4 ≠ nw, Pr11c5 ≠ o, Pr11c5 ≠ ne, Br10c4 ≠ n, Br10c4 ≠ e
B-single: Br10c4 = s
B-single: Br11c4 = n
whip[1]: Br10c4{s .} ==> Pr10c5 ≠ ns, Pr10c4 ≠ ns, Pr10c4 ≠ ne, Pr11c4 ≠ ne, Vr10c5 ≠ 1, Hr10c4 ≠ 1, Pr11c5 ≠ nw, Pr10c4 ≠ se, Pr10c4 ≠ ew, Pr10c4 ≠ sw, Pr10c5 ≠ nw, Pr10c5 ≠ se, Pr10c5 ≠ ew, Pr10c5 ≠ sw
H-single: Hr10c4 = 0
V-single: Vr10c5 = 0
P-single: Pr11c5 = ew
P-single: Pr11c4 = ew
no-vertical-line-r10{c4 c5} ==> Ir10c5 = in
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
no-vertical-line-r9{c5 c6} ==> Ir9c6 = in
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
same-colour-in-r8{c4 c5} ==> Vr8c5 = 0
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
no-vertical-line-r8{c5 c6} ==> Ir8c6 = in
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
w[1]-2-in-r9c6-open-nw-corner ==> Hr10c6 = 1, Vr9c7 = 1
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
same-colour-in-{r8 r9}c4 ==> Hr9c4 = 0
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1
different-colours-in-r10{c5 c6} ==> Hr10c6 = 1
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
whip[1]: Hr10c4{0 .} ==> Br9c4 ≠ s, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ nes
whip[1]: Vr10c5{0 .} ==> Br10c5 ≠ w, Br10c5 ≠ nw, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ esw, Br10c5 ≠ swn, Br10c5 ≠ wne
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ ne, Br10c5 ≠ e, Br10c5 ≠ n, Br10c5 ≠ o, Br11c5 ≠ o
B-single: Br11c5 = n
whip[1]: Br11c5{n .} ==> Pr11c6 ≠ o, Pr11c6 ≠ ne
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ ne, Br10c3 ≠ w, Br10c3 ≠ e, Br10c3 ≠ n, Br10c3 ≠ o, Br11c3 ≠ o, Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ wne, Br10c3 ≠ nes
B-single: Br11c3 = n
whip[1]: Br11c3{n .} ==> Pr11c3 ≠ o, Pr11c3 ≠ nw
w[1]-1-in-r10c2-asymmetric-se-corner ==> Pr10c2 ≠ ew, Pr10c2 ≠ ns
whip[1]: Pr10c2{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ ew, Br9c1 ≠ sw, Br9c1 ≠ swn, Br9c1 ≠ wne, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c1 ≠ e, Br9c1 ≠ s, Br10c2 ≠ n, Br10c2 ≠ w
whip[1]: Br10c2{s .} ==> Pr11c2 ≠ ne, Pr10c2 ≠ se, Pr10c3 ≠ ew, Pr10c3 ≠ sw
P-single: Pr10c2 = nw
P-single: Pr11c2 = ew
w[1]-1-in-r10c2-asymmetric-sw-corner ==> Pr10c3 ≠ ns
P-single: Pr10c3 = ne
whip[1]: Pr10c2{nw .} ==> Br9c1 ≠ n, Br9c1 ≠ o, Br9c1 ≠ w, Br9c1 ≠ nw, Br9c2 ≠ nes, Br10c1 ≠ esw
B-single: Br10c1 = swn
B-single: Br9c2 = wne
whip[1]: Br10c1{swn .} ==> Pr10c1 ≠ ns, Pr10c1 ≠ ne, Pr10c1 ≠ o, Pr11c1 ≠ o
P-single: Pr11c1 = ne
P-single: Pr10c1 = se
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr10c1{se .} ==> Br9c1 ≠ esw
whip[1]: Br9c1{nes .} ==> Pr9c1 ≠ ns, Pr9c1 ≠ se, Pr9c2 ≠ o, Pr9c2 ≠ ne, Pr9c2 ≠ nw, Pr9c2 ≠ ew, Nr9c1 ≠ 0, Nr9c1 ≠ 1
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ se, Br8c1 ≠ esw, Br8c1 ≠ nes, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn
whip[1]: Pr9c1{ne .} ==> Br8c1 ≠ s, Br8c1 ≠ w, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ wne
whip[1]: Br9c2{wne .} ==> Pr9c3 ≠ o, Pr9c2 ≠ sw, Pr9c2 ≠ ns
P-single: Pr9c2 = se
P-single: Pr9c3 = sw
whip[1]: Pr9c2{se .} ==> Br8c2 ≠ w, Br8c2 ≠ e, Br8c2 ≠ n, Br8c2 ≠ o, Br8c1 ≠ e, Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ swn, Br8c2 ≠ ne, Br8c2 ≠ nw, Br8c2 ≠ ew, Br8c2 ≠ wne, Br9c1 ≠ nes
B-single: Br9c1 = se
whip[1]: Br9c1{se .} ==> Nr9c1 ≠ 3, Pr9c1 ≠ ne
N-single: Nr9c1 = 2
P-single: Pr9c1 = o
whip[1]: Br8c2{nes .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ se, Pr8c2 ≠ sw, Nr8c2 ≠ 0
whip[1]: Br8c1{n .} ==> Nr8c1 ≠ 2, Nr8c1 ≠ 3
whip[1]: Pr9c3{sw .} ==> Br9c3 ≠ ns, Br9c3 ≠ ne, Br9c3 ≠ s, Br9c3 ≠ e, Br9c3 ≠ n, Br9c3 ≠ o, Br8c3 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ nes, Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ sw, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c3 ≠ nes
B-single: Br8c3 = ne
whip[1]: Br8c3{ne .} ==> Pr8c3 ≠ ns, Pr8c3 ≠ sw, Pr9c4 ≠ ew, Pr9c4 ≠ sw
whip[1]: Pr9c4{ns .} ==> Br8c4 ≠ s, Br8c4 ≠ ne, Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ nes, Br9c4 ≠ nw, Br9c4 ≠ wne, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ e, Br9c4 ≠ o, Br9c4 ≠ e
whip[1]: Br9c4{ew .} ==> Nr9c4 ≠ 0, Nr9c4 ≠ 3
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 0
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ esw, Br7c2 ≠ nes, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ wne, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ w, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e, Br7c3 ≠ w, Br7c3 ≠ ne
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Br9c3{esw .} ==> Nr9c3 ≠ 0
whip[1]: Br8c2{ns .} ==> Nr8c2 ≠ 3
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ e, Br11c2 ≠ o
B-single: Br11c2 = n
B-single: Br10c2 = s
whip[1]: Br11c2{n .} ==> Pr11c3 ≠ ne
P-single: Pr11c3 = ew
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ sw, Br10c3 ≠ swn
whip[1]: Br10c3{ns .} ==> Nr10c3 ≠ 0, Nr10c3 ≠ 3
whip[1]: Pr10c3{ne .} ==> Br9c3 ≠ w, Br9c3 ≠ ew, Br10c3 ≠ s
B-single: Br10c3 = ns
whip[1]: Br10c3{ns .} ==> Nr10c3 ≠ 1, Pr10c4 ≠ o
N-single: Nr10c3 = 2
P-single: Pr10c4 = nw
whip[1]: Pr10c4{nw .} ==> Br9c4 ≠ n, Br9c3 ≠ sw, Br9c4 ≠ ne
B-single: Br9c3 = esw
whip[1]: Br9c3{esw .} ==> Nr9c3 ≠ 2, Nr9c3 ≠ 1, Pr9c4 ≠ ne
N-single: Nr9c3 = 3
P-single: Pr9c4 = ns
whip[1]: Pr9c4{ns .} ==> Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn
whip[1]: Br8c4{wne .} ==> Pr9c5 ≠ nw, Pr9c5 ≠ ew, Pr9c5 ≠ sw
whip[1]: Vr8c5{0 .} ==> Pr8c5 ≠ ns, Pr8c5 ≠ sw, Pr9c5 ≠ ne, Pr9c5 ≠ ns, Br8c4 ≠ ew, Br8c4 ≠ wne, Br8c5 ≠ w, Br8c5 ≠ nw, Br8c5 ≠ ew, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn, Br8c5 ≠ wne
whip[1]: Br8c4{nw .} ==> Nr8c4 ≠ 3
whip[1]: Pr8c5{ew .} ==> Br7c4 ≠ nw, Br7c4 ≠ se, Br7c5 ≠ nw, Br7c5 ≠ ew, Br7c5 ≠ wne, Br8c5 ≠ se, Br7c5 ≠ o, Br7c5 ≠ n, Br7c5 ≠ e, Br7c5 ≠ w, Br7c5 ≠ ne, Br8c5 ≠ o, Br8c5 ≠ e, Br8c5 ≠ s
whip[1]: Br8c5{nes .} ==> Pr8c6 ≠ o, Pr8c6 ≠ ne, Pr8c6 ≠ ns, Pr8c6 ≠ se, Nr8c5 ≠ 0
whip[1]: Pr8c6{sw .} ==> Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br8c6 ≠ nw, Br8c6 ≠ swn, Br8c6 ≠ wne
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Hr8c6{0 .} ==> Pr8c6 ≠ ew, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Br7c6 ≠ s, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ nes, Br8c6 ≠ n, Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ nes
whip[1]: Pr8c7{se .} ==> Br7c7 ≠ ne, Br7c7 ≠ sw, Br8c6 ≠ sw, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ se, Br8c7 ≠ nes, Br8c6 ≠ o, Br8c6 ≠ s, Br8c6 ≠ w, Br8c7 ≠ o, Br8c7 ≠ n, Br8c7 ≠ e, Br8c7 ≠ s
whip[1]: Br8c7{wne .} ==> Pr9c7 ≠ se, Pr9c7 ≠ ew, Nr8c7 ≠ 0
whip[1]: Pr9c7{nw .} ==> Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn, Br9c6 ≠ ne, Br9c6 ≠ sw, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ nes, Br9c7 ≠ n
whip[1]: Br9c7{esw .} ==> Pr9c8 ≠ nw, Pr9c8 ≠ ew
whip[1]: Pr9c8{se .} ==> Br8c8 ≠ ne, Br8c8 ≠ sw, Br9c7 ≠ sw, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ se, Br9c8 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ s, Br9c7 ≠ w, Br9c8 ≠ o, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ s
whip[1]: Br9c8{wne .} ==> Pr10c8 ≠ o, Pr10c8 ≠ se, Pr10c8 ≠ ew, Pr10c8 ≠ sw, Nr9c8 ≠ 0
whip[1]: Pr10c8{nw .} ==> Br10c8 ≠ nw
whip[1]: Br9c7{esw .} ==> Nr9c7 ≠ 0
whip[1]: Br8c6{esw .} ==> Nr8c6 ≠ 0
whip[1]: Vr8c6{0 .} ==> Pr8c6 ≠ sw, Pr9c6 ≠ ne, Pr9c6 ≠ ns, Pr9c6 ≠ nw, Br8c5 ≠ ne, Br8c5 ≠ nes, Br8c6 ≠ ew, Br8c6 ≠ esw
P-single: Pr8c6 = nw
whip[1]: Pr8c6{nw .} ==> Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br7c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ sw, Br7c5 ≠ swn, Br7c6 ≠ ne
whip[1]: Br7c6{wne .} ==> Pr7c6 ≠ nw, Pr7c6 ≠ ew, Nr7c6 ≠ 0
whip[1]: Pr7c6{se .} ==> Br6c6 ≠ ne, Br6c6 ≠ sw, Br7c5 ≠ nes, Br6c5 ≠ s
whip[1]: Br6c5{w .} ==> Pr6c5 ≠ se
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c5 ≠ sw, Br6c4 ≠ sw, Br6c4 ≠ wne, Br6c4 ≠ nes, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ w, Br5c5 ≠ ne, Br6c4 ≠ o, Br6c4 ≠ s, Br6c4 ≠ w, Br6c4 ≠ ne
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Br7c5{esw .} ==> Nr7c5 ≠ 1
whip[1]: Br8c6{se .} ==> Nr8c6 ≠ 3
whip[1]: Br8c5{ns .} ==> Nr8c5 ≠ 3
whip[1]: Pr9c6{sw .} ==> Br9c6 ≠ nw
whip[1]: Hr9c6{0 .} ==> Pr9c6 ≠ ew, Pr9c7 ≠ nw, Br8c6 ≠ se, Br9c6 ≠ ns
P-single: Pr9c7 = ns
B-single: Br8c6 = e
whip[1]: Pr9c7{ns .} ==> Br9c7 ≠ e, Br9c7 ≠ se
whip[1]: Br9c7{esw .} ==> Pr10c7 ≠ ew, Pr10c7 ≠ sw, Nr9c7 ≠ 1
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ wne, Br10c6 ≠ nes
whip[1]: Br10c6{ew .} ==> Nr10c6 ≠ 3
whip[1]: Br8c6{e .} ==> Nr8c6 ≠ 2
N-single: Nr8c6 = 1
whip[1]: Hr10c6{1 .} ==> Pr10c6 ≠ ns, Pr10c6 ≠ nw, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Br9c6 ≠ ew, Br10c6 ≠ s, Br10c6 ≠ w, Br10c6 ≠ se, Br10c6 ≠ ew
P-single: Pr9c6 = o
P-single: Pr10c7 = nw
B-single: Br9c6 = se
whip[1]: Pr9c6{o .} ==> Vr9c6 ≠ 1, Hr9c5 ≠ 1, Br8c5 ≠ ns
B-single: Br8c5 = n
whip[1]: Br8c5{n .} ==> Pr9c5 ≠ se, Nr8c5 ≠ 2
N-single: Nr8c5 = 1
P-single: Pr9c5 = o
whip[1]: Pr9c5{o .} ==> Vr9c5 ≠ 1, Br9c4 ≠ ew
B-single: Br9c4 = w
whip[1]: Br9c4{w .} ==> Nr9c4 ≠ 2, Pr10c5 ≠ ne
N-single: Nr9c4 = 1
P-single: Pr10c5 = o
whip[1]: Pr10c5{o .} ==> Hr10c5 ≠ 1, Br10c5 ≠ ns, Br10c5 ≠ nes
whip[1]: Br10c5{se .} ==> Pr10c6 ≠ ew, Nr10c5 ≠ 3
P-single: Pr10c6 = se
whip[1]: Pr10c6{se .} ==> Br10c5 ≠ s, Br10c6 ≠ ns
B-single: Br10c6 = nw
B-single: Br10c5 = se
whip[1]: Br10c6{nw .} ==> Nr10c6 ≠ 1, Pr11c7 ≠ ew, Pr11c7 ≠ nw, Pr11c7 ≠ ne, Pr11c6 ≠ ew, Vr10c7 ≠ 1
N-single: Nr10c6 = 2
P-single: Pr11c6 = nw
P-single: Pr11c7 = o
whip[1]: Pr11c6{nw .} ==> Br11c6 ≠ n
B-single: Br11c6 = o
whip[1]: Pr11c7{o .} ==> Hr11c7 ≠ 1, Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Br11c7{o .} ==> Pr11c8 ≠ nw, Pr11c8 ≠ ew
whip[1]: Pr11c8{ne .} ==> Br10c8 ≠ w, Br10c8 ≠ se, Br10c8 ≠ nes
whip[1]: Br10c8{esw .} ==> Nr10c8 ≠ 2
whip[1]: Br10c5{se .} ==> Nr10c5 ≠ 1
N-single: Nr10c5 = 2
whip[1]: Pr10c7{nw .} ==> Hr10c7 ≠ 1, Br9c7 ≠ esw
B-single: Br9c7 = ew
whip[1]: Br9c7{ew .} ==> Nr9c7 ≠ 3, Pr10c8 ≠ nw
N-single: Nr9c7 = 2
whip[1]: Pr10c8{ns .} ==> Br10c8 ≠ o
whip[1]: Br10c8{esw .} ==> Nr10c8 ≠ 0
whip[1]: Hr6c4{1 .} ==> Br6c4 ≠ esw, Pr6c4 ≠ o, Pr6c4 ≠ ns, Pr6c4 ≠ nw, Pr6c4 ≠ sw, Pr6c5 ≠ ns, Br5c4 ≠ e, Br5c4 ≠ ne, Br5c4 ≠ ew, Br5c4 ≠ wne, Br6c4 ≠ e, Br6c4 ≠ se, Br6c4 ≠ ew
whip[1]: Pr6c5{ew .} ==> Br6c5 ≠ w
whip[1]: Pr6c4{ew .} ==> Br5c3 ≠ se, Br5c3 ≠ esw, Br5c3 ≠ nes, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c3 ≠ ne
whip[1]: Vr5c4{1 .} ==> Br5c4 ≠ nes, Br5c3 ≠ o, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr6c4 ≠ se, Pr6c4 ≠ ew, Br5c3 ≠ n, Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c4 ≠ s, Br5c4 ≠ ns, Br5c4 ≠ se
P-single: Pr6c4 = ne
whip[1]: Pr6c4{ne .} ==> Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c4 ≠ nw, Br6c4 ≠ swn
whip[1]: Br6c4{ns .} ==> Pr7c4 ≠ ne, Pr7c4 ≠ ns, Nr6c4 ≠ 3
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ se, Br7c3 ≠ sw, Br7c3 ≠ esw, Br6c3 ≠ o, Br6c3 ≠ w, Br7c3 ≠ s
whip[1]: Br7c3{nes .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ sw, Nr7c3 ≠ 1
whip[1]: Pr7c3{ew .} ==> Vr7c3 ≠ 1, Br6c2 ≠ nw, Br6c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ wne, Br7c3 ≠ swn, Br7c2 ≠ e, Br7c2 ≠ ne
V-single: Vr7c3 = 0
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
whip[1]: Vr7c3{0 .} ==> Pr8c3 ≠ ne
P-single: Pr8c3 = ew
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ s
B-single: Br8c2 = ns
whip[1]: Br8c2{ns .} ==> Nr8c2 ≠ 1, Pr8c2 ≠ nw, Pr8c2 ≠ o
N-single: Nr8c2 = 2
w[1]-1-in-r7c1-asymmetric-se-corner ==> Pr7c1 ≠ ns, Pr7c1 ≠ ne
whip[1]: Pr7c1{se .} ==> Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ w, Br7c1 ≠ n, Br7c1 ≠ w
whip[1]: Br7c1{s .} ==> Hr7c1 ≠ 1, Vr7c1 ≠ 1, Pr8c1 ≠ ne, Pr7c1 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ ew
V-single: Vr7c1 = 0
H-single: Hr7c1 = 0
P-single: Pr7c1 = o
P-single: Pr8c1 = o
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = out
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
different-colours-in-r7{c1 c2} ==> Hr7c2 = 1
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Hr7c1{0 .} ==> Br6c1 ≠ s, Br6c1 ≠ ns, Br6c1 ≠ se, Br6c1 ≠ nes
whip[1]: Br6c1{ne .} ==> Pr6c1 ≠ ns, Pr6c1 ≠ se, Nr6c1 ≠ 3
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Pr8c1{o .} ==> Br7c1 ≠ s, Br8c1 ≠ n
B-single: Br8c1 = o
B-single: Br7c1 = e
whip[1]: Br8c1{o .} ==> Pr8c2 ≠ ew, Nr8c1 ≠ 1
N-single: Nr8c1 = 0
P-single: Pr8c2 = ne
whip[1]: Pr8c2{ne .} ==> Br7c2 ≠ s, Br7c2 ≠ ns
whip[1]: Br7c2{swn .} ==> Nr7c2 ≠ 1
whip[1]: Pr7c2{se .} ==> Br6c2 ≠ ne, Br6c2 ≠ sw
whip[1]: Hr7c2{1 .} ==> Pr7c2 ≠ ns, Pr7c3 ≠ ne, Br6c2 ≠ ew, Br7c2 ≠ sw
P-single: Pr7c3 = ew
P-single: Pr7c2 = se
B-single: Br7c2 = swn
B-single: Br6c2 = ns
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw
B-single: Br6c3 = s
whip[1]: Br6c3{s .} ==> Nr6c3 ≠ 3, Nr6c3 ≠ 2, Nr6c3 ≠ 0, Pr6c3 ≠ ns, Pr6c3 ≠ se, Pr6c3 ≠ ew
N-single: Nr6c3 = 1
P-single: Pr6c3 = nw
whip[1]: Pr6c3{nw .} ==> Br5c3 ≠ e, Br5c2 ≠ swn, Br5c2 ≠ wne, Br5c3 ≠ ne
whip[1]: Br5c3{wne .} ==> Pr5c3 ≠ nw, Pr5c3 ≠ ew, Nr5c3 ≠ 0, Nr5c3 ≠ 1
whip[1]: Pr5c3{se .} ==> Br4c2 ≠ ns, Br4c2 ≠ se, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ nes, Br4c3 ≠ ne, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br5c2 ≠ nes, Br4c2 ≠ s, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e
B-single: Br5c2 = esw
whip[1]: Br5c2{esw .} ==> Pr6c2 ≠ sw, Pr6c2 ≠ ew, Pr6c2 ≠ ns, Pr5c2 ≠ ew, Pr5c2 ≠ ne
P-single: Pr6c2 = ne
whip[1]: Pr6c2{ne .} ==> Br6c1 ≠ n, Br5c1 ≠ n, Br5c1 ≠ o, Br5c1 ≠ sw, Br5c1 ≠ esw, Br5c1 ≠ swn, Br6c1 ≠ e, Br6c1 ≠ ne
B-single: Br6c1 = o
whip[1]: Br6c1{o .} ==> Pr6c1 ≠ ne, Nr6c1 ≠ 1, Nr6c1 ≠ 2
N-single: Nr6c1 = 0
P-single: Pr6c1 = o
whip[1]: Br5c1{ne .} ==> Pr5c1 ≠ ns, Pr5c1 ≠ se, Nr5c1 ≠ 0, Nr5c1 ≠ 3
whip[1]: Pr5c1{ne .} ==> Br4c1 ≠ wne, Br4c1 ≠ nes
whip[1]: Br4c1{swn .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ne, Pr5c1 ≠ o, Pr5c2 ≠ ns
P-single: Pr5c2 = sw
P-single: Pr5c1 = ne
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ e, Br4c2 ≠ w, Br4c1 ≠ esw, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ wne
B-single: Br4c1 = swn
B-single: Br5c1 = ne
whip[1]: Br4c1{swn .} ==> Pr4c2 ≠ se, Pr4c2 ≠ ns, Pr4c1 ≠ ns
P-single: Pr4c1 = se
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ w, Br3c1 ≠ e, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ ne, Br3c1 ≠ nw, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne
whip[1]: Br3c1{nes .} ==> Pr3c1 ≠ ns, Pr3c1 ≠ se, Nr3c1 ≠ 0
whip[1]: Pr4c2{ew .} ==> Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ ne
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br5c1{ne .} ==> Nr5c1 ≠ 1
N-single: Nr5c1 = 2
whip[1]: Br4c2{ne .} ==> Nr4c2 ≠ 3
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br7c2{swn .} ==> Nr7c2 ≠ 2
N-single: Nr7c2 = 3
whip[1]: Br5c4{swn .} ==> Pr5c5 ≠ sw, Nr5c4 ≠ 1
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ nw, Br5c5 ≠ nw, Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ ne
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ nes, Br4c4 ≠ ne, Br4c4 ≠ sw, Br5c3 ≠ wne, Br4c3 ≠ s
B-single: Br5c3 = ew
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 3, Pr5c3 ≠ se
N-single: Nr5c3 = 2
P-single: Pr5c3 = ns
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ n, Br4c2 ≠ o
whip[1]: Br4c2{ne .} ==> Pr4c3 ≠ nw, Nr4c2 ≠ 0, Pr4c3 ≠ ew
whip[1]: Pr4c3{se .} ==> Br3c2 ≠ ns, Br3c2 ≠ se, Br3c2 ≠ nes, Br3c3 ≠ ne, Br3c3 ≠ sw, Br4c2 ≠ ne, Br3c2 ≠ s
B-single: Br4c2 = e
whip[1]: Br4c2{e .} ==> Nr4c2 ≠ 2, Pr4c2 ≠ ew
N-single: Nr4c2 = 1
P-single: Pr4c2 = nw
whip[1]: Pr4c2{nw .} ==> Br3c1 ≠ s, Br3c1 ≠ ns
whip[1]: Br3c1{nes .} ==> Pr3c2 ≠ nw, Pr3c2 ≠ ew, Nr3c1 ≠ 1
whip[1]: Pr3c2{se .} ==> Hr3c1 ≠ 1, Br2c2 ≠ esw, Br2c2 ≠ swn, Br3c1 ≠ nes
B-single: Br3c1 = se
whip[1]: Br3c1{se .} ==> Nr3c1 ≠ 3, Pr3c1 ≠ ne
N-single: Nr3c1 = 2
P-single: Pr3c1 = o
whip[1]: Pr3c1{o .} ==> Vr2c1 ≠ 1
whip[1]: Br2c2{nes .} ==> Pr2c2 ≠ ns, Pr2c2 ≠ sw, Pr2c3 ≠ o, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Pr2c3 ≠ nw, Pr2c3 ≠ se, Pr2c3 ≠ ew, Pr3c3 ≠ o, Pr3c3 ≠ ew, Pr3c3 ≠ sw
P-single: Pr2c3 = sw
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ ns, Br2c3 ≠ ne, Br2c3 ≠ s, Br2c3 ≠ e, Br2c3 ≠ n, Br2c3 ≠ o, Br1c3 ≠ ns, Br1c3 ≠ w, Br1c3 ≠ s, Br1c2 ≠ ne, Br1c2 ≠ w, Br1c2 ≠ e, Br1c2 ≠ n, Br1c2 ≠ o, Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes
whip[1]: Br2c3{esw .} ==> Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c4 ≠ sw, Nr2c3 ≠ 0
whip[1]: Br1c3{ne .} ==> Pr1c3 ≠ se, Nr1c3 ≠ 3, Pr1c3 ≠ sw
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Pr3c3{nw .} ==> Br3c2 ≠ wne, Br3c3 ≠ nw
whip[1]: Br3c2{ew .} ==> Nr3c2 ≠ 3
whip[1]: Pr2c2{ew .} ==> Vr2c2 ≠ 1, Br2c2 ≠ wne
B-single: Br2c2 = nes
whip[1]: Br2c2{nes .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr3c2 ≠ ns
P-single: Pr10c10 = nw
P-single: Pr9c9 = nw
P-single: Pr8c8 = nw
P-single: Pr7c7 = nw
P-single: Pr6c6 = nw
P-single: Pr5c5 = nw
P-single: Pr4c4 = nw
P-single: Pr3c2 = se
P-single: Pr3c3 = nw
w[1]-1-in-r9c10-asymmetric-sw-corner ==> Pr9c11 ≠ nw, Pr9c11 ≠ ns
whip[1]: Pr10c10{nw .} ==> Br10c9 ≠ e, Br10c9 ≠ o, Br9c10 ≠ s, Br9c10 ≠ e, Br9c10 ≠ n, Vr10c10 ≠ 1, Hr10c10 ≠ 1, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ ew, Br9c9 ≠ sw, Br10c9 ≠ w, Br10c9 ≠ ne, Br10c9 ≠ ew, Br10c9 ≠ wne
B-single: Br9c9 = se
B-single: Br9c10 = w
whip[1]: Br9c9{se .} ==> Pr10c9 ≠ nw, Pr10c9 ≠ ns, Pr9c10 ≠ ew, Pr9c10 ≠ nw
whip[1]: Pr9c10{se .} ==> Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ nes, Br8c10 ≠ ne, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c9 ≠ s, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ e
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Pr10c9{ew .} ==> Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ wne
whip[1]: Br9c10{w .} ==> Pr10c11 ≠ nw, Pr10c11 ≠ ns, Pr9c11 ≠ sw, Pr10c11 ≠ sw, Pr9c10 ≠ se
P-single: Pr9c10 = ns
P-single: Pr10c11 = o
P-single: Pr9c11 = o
whip[1]: Pr9c10{ns .} ==> Br8c9 ≠ n, Br8c9 ≠ o, Br8c9 ≠ w, Br8c9 ≠ nw, Br8c10 ≠ s, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ nes
whip[1]: Br8c10{wne .} ==> Pr8c10 ≠ o, Pr8c10 ≠ ne, Pr8c10 ≠ nw, Pr8c10 ≠ ew
whip[1]: Pr8c10{sw .} ==> Br7c9 ≠ se, Br7c9 ≠ esw, Br7c9 ≠ nes
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 0
whip[1]: Pr10c11{o .} ==> Vr10c11 ≠ 1
whip[1]: Pr9c11{o .} ==> Br8c10 ≠ ew, Br8c10 ≠ wne
whip[1]: Br8c10{nw .} ==> Pr8c11 ≠ ns, Pr8c11 ≠ sw, Nr8c10 ≠ 3
w[1]-1-in-r7c10-symmetric-se-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw, Pr7c10 ≠ o
w[1]-1-in-r6c9-asymmetric-se-corner ==> Pr6c9 ≠ sw, Pr6c9 ≠ ew, Pr6c9 ≠ ns, Pr6c9 ≠ ne
whip[1]: Pr6c9{se .} ==> Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ swn, Br5c8 ≠ wne, Br6c8 ≠ ne, Br6c8 ≠ wne, Br6c8 ≠ nes, Br5c8 ≠ e, Br5c8 ≠ s, Br6c9 ≠ n, Br6c9 ≠ w
whip[1]: Br6c9{s .} ==> Hr6c9 ≠ 1, Vr6c9 ≠ 1, Pr7c9 ≠ ne, Pr7c9 ≠ ns, Pr6c9 ≠ se, Pr6c10 ≠ nw, Pr6c10 ≠ ew, Pr6c10 ≠ sw, Pr7c9 ≠ nw
V-single: Vr6c9 = 0
w[1]-diagonal-1-1-in-{r6c9...r7c10}-with-no-nw-outer-sides ==> Hr8c10 = 0, Vr7c11 = 0
no-vertical-line-r7{c10 c11} ==> Ir7c10 = out
different-colours-in-r7{c9 c10} ==> Hr7c10 = 1

LOOP[10]: Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9- ==> Hr7c9 = 0
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
vertical-line-r4{c9 c10} ==> Ir4c9 = in
same-colour-in-{r3 r4}c9 ==> Hr4c9 = 0
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
same-colour-in-r4{c10 c11} ==> Vr4c11 = 0
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
w[1]-3-in-r4c10-hit-by-verti-line-at-se ==> Hr4c10 = 1
w[1]-3-in-r4c10-closed-nw-corner ==> Pr5c11 ≠ nw, Pr5c11 ≠ o
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
different-colours-in-{r2 r3}c10 ==> Hr3c10 = 1
same-colour-in-{r5 r6}c8 ==> Hr6c8 = 0
same-colour-in-r5{c7 c8} ==> Vr5c8 = 0
different-colours-in-{r4 r5}c8 ==> Hr5c8 = 1
different-colours-in-{r6 r7}c8 ==> Hr7c8 = 1
whip[1]: Vr6c9{0 .} ==> Br6c8 ≠ e, Br6c8 ≠ se, Br6c8 ≠ ew, Br6c8 ≠ esw
whip[1]: Hr8c10{0 .} ==> Pr8c11 ≠ nw, Pr8c10 ≠ se, Br7c10 ≠ s, Br8c10 ≠ nw
P-single: Pr8c11 = o
B-single: Br8c10 = w
whip[1]: Pr8c11{o .} ==> Br7c10 ≠ e
whip[1]: Br7c10{w .} ==> Pr7c11 ≠ ns, Pr7c11 ≠ sw
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ ew, Br6c10 ≠ sw, Br6c10 ≠ swn, Br6c10 ≠ wne, Br6c10 ≠ e, Br6c10 ≠ s
whip[1]: Br8c10{w .} ==> Nr8c10 ≠ 2
N-single: Nr8c10 = 1
whip[1]: Pr8c10{sw .} ==> Br7c9 ≠ nw, Br7c9 ≠ o, Br7c9 ≠ n, Br7c9 ≠ w
whip[1]: Br7c9{wne .} ==> Nr7c9 ≠ 0
whip[1]: Vr7c11{0 .} ==> Br7c11 ≠ w
B-single: Br7c11 = o
whip[1]: Vr7c10{1 .} ==> Pr7c10 ≠ ne, Pr7c10 ≠ ew, Pr8c10 ≠ sw, Br7c9 ≠ s, Br7c9 ≠ ns, Br7c9 ≠ sw, Br7c9 ≠ swn, Br7c10 ≠ n
P-single: Pr8c10 = ns
B-single: Br7c10 = w
w[1]-1-in-r7c10-asymmetric-sw-corner ==> Pr7c11 ≠ nw
P-single: Pr7c11 = o
whip[1]: Pr8c10{ns .} ==> Br8c9 ≠ ne, Br8c9 ≠ wne
whip[1]: Br8c9{ew .} ==> Pr8c9 ≠ se, Pr8c9 ≠ ew, Nr8c9 ≠ 3
whip[1]: Pr8c9{nw .} ==> Br7c8 ≠ w, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ sw, Br7c8 ≠ swn, Br7c9 ≠ ne, Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ s, Br7c9 ≠ e
whip[1]: Br7c9{wne .} ==> Pr7c9 ≠ o, Pr7c9 ≠ ew, Nr7c9 ≠ 1
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Br7c10{w .} ==> Hr7c10 ≠ 1
H-single: Hr7c10 = 0
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = out
same-colour-in-r6{c10 c11} ==> Vr6c11 = 0
different-colours-in-r6{c9 c10} ==> Hr6c10 = 1
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
whip[1]: Hr7c10{0 .} ==> Br6c10 ≠ se, Br6c10 ≠ esw, Br6c10 ≠ nes
whip[1]: Br6c10{nw .} ==> Pr6c11 ≠ ns, Pr6c11 ≠ sw, Nr6c10 ≠ 3
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ e, Br5c10 ≠ s
whip[1]: Vr6c11{0 .} ==> Br6c11 ≠ w
B-single: Br6c11 = o
whip[1]: Vr6c10{1 .} ==> Br6c10 ≠ o, Pr6c10 ≠ o, Pr6c10 ≠ ne, Pr7c10 ≠ sw, Br6c9 ≠ s, Br6c10 ≠ n
P-single: Pr7c10 = ns
B-single: Br6c9 = e
w[1]-1-in-r6c9-asymmetric-ne-corner ==> Pr7c9 ≠ se
P-single: Pr7c9 = sw
whip[1]: Pr7c10{ns .} ==> Br7c9 ≠ wne
B-single: Br7c9 = ew
whip[1]: Br7c9{ew .} ==> Nr7c9 ≠ 3
N-single: Nr7c9 = 2
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ e, Br6c8 ≠ w, Br6c8 ≠ n, Br6c8 ≠ o, Br6c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ esw
whip[1]: Br7c8{nes .} ==> Pr7c8 ≠ ns, Pr7c8 ≠ nw, Nr7c8 ≠ 1
whip[1]: Pr7c8{ew .} ==> Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ sw, Br6c8 ≠ swn, Br6c7 ≠ e, Br6c7 ≠ ne
whip[1]: Br6c7{swn .} ==> Pr6c8 ≠ ns, Pr6c8 ≠ se, Pr6c8 ≠ sw
whip[1]: Br6c8{ns .} ==> Nr6c8 ≠ 0, Nr6c8 ≠ 3
whip[1]: Br6c10{nw .} ==> Nr6c10 ≠ 0
whip[1]: Pr6c10{se .} ==> Br5c10 ≠ esw, Br5c10 ≠ o, Br5c10 ≠ n
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Hr6c10{1 .} ==> Pr6c11 ≠ o, Pr6c10 ≠ ns, Br5c10 ≠ w, Br5c10 ≠ nw, Br6c10 ≠ w
P-single: Pr6c10 = se
P-single: Pr6c11 = nw
B-single: Br6c10 = nw
whip[1]: Pr6c10{se .} ==> Vr5c10 ≠ 1
whip[1]: Br6c10{nw .} ==> Nr6c10 ≠ 1
N-single: Nr6c10 = 2
whip[1]: Br5c10{nes .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ se, Pr5c10 ≠ sw, Nr5c10 ≠ 1
whip[1]: Hr4c9{0 .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ ew, Pr4c10 ≠ nw, Pr4c10 ≠ ew, Pr4c10 ≠ sw, Br3c9 ≠ s, Br3c9 ≠ ns, Br3c9 ≠ se, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ nes, Br4c9 ≠ n, Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ nw, Br4c9 ≠ swn, Br4c9 ≠ wne, Br4c9 ≠ nes
whip[1]: Pr4c9{sw .} ==> Br3c8 ≠ nw, Br3c8 ≠ se, Br4c8 ≠ nw, Br4c8 ≠ sw, Br4c8 ≠ swn, Br4c9 ≠ se, Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ s, Br4c8 ≠ w, Br4c8 ≠ ns, Br4c9 ≠ o, Br4c9 ≠ e, Br4c9 ≠ s
whip[1]: Br4c9{esw .} ==> Pr5c9 ≠ o, Pr5c9 ≠ se, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Nr4c9 ≠ 0
whip[1]: Pr5c9{nw .} ==> Br5c8 ≠ nes
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 0
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w, Pr4c11 ≠ ns, Pr5c11 ≠ ns, Br4c10 ≠ esw, Br4c10 ≠ wne, Br4c10 ≠ nes
P-single: Pr5c11 = sw
P-single: Pr4c11 = nw
B-single: Br4c10 = swn
B-single: Br4c11 = o
whip[1]: Pr5c11{sw .} ==> Br5c10 ≠ se
B-single: Br5c10 = nes
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 2, Pr5c10 ≠ nw, Pr5c10 ≠ o
N-single: Nr5c10 = 3
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ esw, Br4c9 ≠ w
whip[1]: Br4c9{sw .} ==> Nr4c9 ≠ 1, Nr4c9 ≠ 3
N-single: Nr4c9 = 2
whip[1]: Pr4c10{se .} ==> Br3c10 ≠ ne, Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br4c9 ≠ sw, Br3c10 ≠ o, Br3c10 ≠ n, Br3c10 ≠ e
B-single: Br4c9 = ew
whip[1]: Br4c9{ew .} ==> Pr5c10 ≠ ew, Hr5c9 ≠ 1
P-single: Pr5c10 = ne
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Pr5c9{nw .} ==> Br5c8 ≠ w, Br5c8 ≠ o
whip[1]: Br5c8{esw .} ==> Nr5c8 ≠ 0
whip[1]: Pr4c11{nw .} ==> Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ ew, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr3c11 ≠ o, Pr3c11 ≠ nw, Pr3c10 ≠ ns, Pr3c10 ≠ sw, Pr4c10 ≠ ns, Nr3c10 ≠ 1
P-single: Pr4c10 = se
whip[1]: Pr4c10{se .} ==> Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ ew, Br3c9 ≠ wne
whip[1]: Br3c9{nw .} ==> Nr3c9 ≠ 3
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ nw, Br2c9 ≠ se, Br2c10 ≠ nw, Br2c10 ≠ ew, Br2c10 ≠ wne, Br3c10 ≠ se, Br2c10 ≠ o, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ w, Br2c10 ≠ ne
B-single: Br3c10 = nes
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 2, Pr3c11 ≠ ns
N-single: Nr3c10 = 3
P-single: Pr3c11 = sw
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ se, Br2c10 ≠ esw, Br2c10 ≠ nes
whip[1]: Br2c10{swn .} ==> Pr2c11 ≠ ns, Pr2c11 ≠ sw, Nr2c10 ≠ 0
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Hr6c8{0 .} ==> Pr6c8 ≠ ne, Pr6c8 ≠ ew, Pr6c9 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br6c8 ≠ ns
P-single: Pr6c9 = o
B-single: Br6c8 = s
whip[1]: Pr6c9{o .} ==> Vr5c9 ≠ 1
whip[1]: Br6c8{s .} ==> Nr6c8 ≠ 2
N-single: Nr6c8 = 1
whip[1]: Br5c8{nw .} ==> Pr5c8 ≠ ns, Pr5c8 ≠ sw, Pr5c9 ≠ ns, Nr5c8 ≠ 3
P-single: Pr5c9 = nw
whip[1]: Pr5c9{nw .} ==> Br4c8 ≠ e, Br4c8 ≠ ne, Br4c8 ≠ ew, Br4c8 ≠ wne
whip[1]: Br4c8{nes .} ==> Pr4c8 ≠ se, Nr4c8 ≠ 1
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ nw, Br3c8 ≠ sw, Br4c7 ≠ sw, Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ w
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0
whip[1]: Pr5c8{ew .} ==> Br4c7 ≠ nw, Br4c7 ≠ se, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw, Br5c7 ≠ wne, Br5c7 ≠ nes, Br5c8 ≠ nw, Br5c7 ≠ e, Br5c7 ≠ ne
B-single: Br5c8 = n
whip[1]: Br5c8{n .} ==> Pr6c8 ≠ nw, Nr5c8 ≠ 2
N-single: Nr5c8 = 1
P-single: Pr6c8 = o
whip[1]: Pr6c8{o .} ==> Br5c7 ≠ s, Br5c7 ≠ ns, Br5c7 ≠ sw, Br5c7 ≠ swn, Br6c7 ≠ n, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ swn
whip[1]: Br6c7{sw .} ==> Pr6c7 ≠ ew, Nr6c7 ≠ 3
P-single: Pr6c7 = ns
whip[1]: Pr6c7{ns .} ==> Br6c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ o, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ nes, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c7 ≠ s
B-single: Br5c6 = wne
whip[1]: Br5c6{wne .} ==> Pr5c7 ≠ ew, Pr5c7 ≠ se, Pr5c7 ≠ nw, Pr5c7 ≠ ns, Pr5c7 ≠ o, Pr5c6 ≠ ew, Pr5c6 ≠ nw, Pr5c6 ≠ ns
P-single: Pr2c10 = sw
P-single: Pr3c9 = sw
P-single: Pr4c8 = sw
P-single: Pr5c6 = se
P-single: Pr5c7 = sw
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ s, Br2c9 ≠ ns, Br1c9 ≠ ne, Vr1c10 ≠ 1, Hr2c10 ≠ 1, Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ ew, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c10 ≠ swn
B-single: Br2c10 = sw
B-single: Br2c9 = ne
whip[1]: Br2c10{sw .} ==> Nr2c10 ≠ 3, Nr2c10 ≠ 1, Pr3c10 ≠ ew, Pr2c11 ≠ nw
N-single: Nr2c10 = 2
P-single: Pr2c11 = o
P-single: Pr3c10 = ne
whip[1]: Pr2c11{o .} ==> Vr1c11 ≠ 1
whip[1]: Pr3c10{ne .} ==> Br3c9 ≠ n, Br3c9 ≠ nw
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 2
whip[1]: Br2c9{ne .} ==> Pr2c9 ≠ ns
whip[1]: Pr2c9{ew .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ esw, Br1c8 ≠ nes, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw, Br2c8 ≠ wne, Br2c8 ≠ nes, Br1c8 ≠ o, Br1c8 ≠ n, Br1c8 ≠ w, Br2c8 ≠ e, Br2c8 ≠ ne
whip[1]: Br1c8{wne .} ==> Nr1c8 ≠ 0
whip[1]: Br1c9{sw .} ==> Pr1c10 ≠ se
whip[1]: Pr3c9{sw .} ==> Br3c9 ≠ o, Br3c8 ≠ ns, Br2c8 ≠ w, Br2c8 ≠ n, Br2c8 ≠ o, Br2c8 ≠ nw, Br3c8 ≠ ew
B-single: Br3c8 = ne
B-single: Br3c9 = w
whip[1]: Br3c8{ne .} ==> Pr3c8 ≠ ns, Pr3c8 ≠ sw, Pr4c9 ≠ sw
P-single: Pr4c9 = ns
whip[1]: Pr4c9{ns .} ==> Br4c8 ≠ nes
whip[1]: Pr3c8{ew .} ==> Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ esw, Br2c7 ≠ nes, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ wne, Br3c7 ≠ nes, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ w, Br3c7 ≠ e, Br3c7 ≠ ne
whip[1]: Br3c7{swn .} ==> Pr4c7 ≠ ns, Pr4c7 ≠ sw
whip[1]: Pr4c7{ew .} ==> Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ ew, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ w, Br4c6 ≠ e, Br4c6 ≠ ne
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 0
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 0
N-single: Nr3c9 = 1
whip[1]: Br2c8{swn .} ==> Nr2c8 ≠ 0
whip[1]: Pr4c8{sw .} ==> Br4c7 ≠ ns, Br4c8 ≠ se
B-single: Br4c8 = esw
B-single: Br4c7 = ne
whip[1]: Br4c8{esw .} ==> Nr4c8 ≠ 2, Pr5c8 ≠ ew
N-single: Nr4c8 = 3
P-single: Pr5c8 = ne
whip[1]: Pr5c8{ne .} ==> Br5c7 ≠ nw
B-single: Br5c7 = w
whip[1]: Br5c7{w .} ==> Nr5c7 ≠ 3, Nr5c7 ≠ 2, Nr5c7 ≠ 0
N-single: Nr5c7 = 1
whip[1]: Pr5c6{se .} ==> Br4c6 ≠ w, Br4c6 ≠ n, Br4c6 ≠ o, Br4c5 ≠ s, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ nw, Br4c6 ≠ sw, Br4c6 ≠ swn, Br5c5 ≠ ns
whip[1]: Br4c6{ns .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c6 ≠ 0, Nr4c6 ≠ 3, Pr4c6 ≠ sw
whip[1]: Br4c5{nw .} ==> Pr4c5 ≠ nw, Pr4c5 ≠ ew, Nr4c5 ≠ 3
whip[1]: Pr4c5{se .} ==> Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ nes, Br3c5 ≠ ne, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br4c4 ≠ ns, Br3c4 ≠ s, Br3c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ e
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br6c7{sw .} ==> Nr6c7 ≠ 0
whip[1]: Br10c9{nw .} ==> Pr11c10 ≠ ne, Nr10c9 ≠ 0, Nr10c9 ≠ 3
P-single: Pr11c10 = o
whip[1]: Pr11c10{o .} ==> Hr11c10 ≠ 1, Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Br11c10{o .} ==> Pr11c11 ≠ nw
P-single: Pr11c11 = o
whip[1]: Pr9c9{nw .} ==> Br8c9 ≠ e, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ ew, Br9c8 ≠ w, Br9c8 ≠ sw
B-single: Br8c8 = se
B-single: Br8c9 = ew
whip[1]: Br8c8{se .} ==> Pr9c8 ≠ ns, Pr8c9 ≠ nw
P-single: Pr8c9 = ns
P-single: Pr9c8 = se
whip[1]: Pr8c9{ns .} ==> Br7c8 ≠ nes
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ ew, Br8c7 ≠ wne
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 3
whip[1]: Br8c9{ew .} ==> Nr8c9 ≠ 1
N-single: Nr8c9 = 2
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 1
whip[1]: Pr8c8{nw .} ==> Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ ew, Br7c8 ≠ ne, Br8c7 ≠ w
B-single: Br8c7 = nw
B-single: Br7c8 = wne
B-single: Br7c7 = se
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 1, Pr8c7 ≠ ns
N-single: Nr8c7 = 2
P-single: Pr8c7 = se
whip[1]: Pr8c7{se .} ==> Br7c6 ≠ ew, Br7c6 ≠ wne
whip[1]: Br7c6{nw .} ==> Nr7c6 ≠ 3
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 2, Pr7c8 ≠ ew
N-single: Nr7c8 = 3
P-single: Pr7c8 = se
whip[1]: Pr7c8{se .} ==> Br6c7 ≠ sw
B-single: Br6c7 = w
whip[1]: Br6c7{w .} ==> Nr6c7 ≠ 2
N-single: Nr6c7 = 1
whip[1]: Pr7c7{nw .} ==> Br6c6 ≠ ew, Br7c6 ≠ w
B-single: Br7c6 = nw
B-single: Br6c6 = se
whip[1]: Br7c6{nw .} ==> Nr7c6 ≠ 1, Pr7c6 ≠ ns
N-single: Nr7c6 = 2
P-single: Pr7c6 = se
w[1]-1-in-r6c5-symmetric-se-corner ==> Pr6c5 ≠ nw
P-single: Pr6c5 = ew
whip[1]: Pr7c6{se .} ==> Br6c5 ≠ e
B-single: Br6c5 = n
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ esw, Br5c5 ≠ ew
B-single: Br5c5 = se
whip[1]: Pr5c5{nw .} ==> Br4c4 ≠ ew, Br5c4 ≠ sw
B-single: Br5c4 = swn
B-single: Br4c4 = se
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 2, Pr5c4 ≠ ns
N-single: Nr5c4 = 3
P-single: Pr5c4 = se
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ ew, Br4c3 ≠ wne
whip[1]: Br4c3{nw .} ==> Nr4c3 ≠ 3
whip[1]: Pr4c4{nw .} ==> Br3c4 ≠ e, Br3c4 ≠ n, Br3c4 ≠ o, Br3c3 ≠ ns, Br3c3 ≠ ew, Br3c4 ≠ ne, Br4c3 ≠ w
B-single: Br4c3 = nw
B-single: Br3c3 = se
whip[1]: Br4c3{nw .} ==> Nr4c3 ≠ 1, Pr4c3 ≠ ns
N-single: Nr4c3 = 2
P-single: Pr4c3 = se
whip[1]: Pr4c3{se .} ==> Br3c2 ≠ ew
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ ew, Pr3c4 ≠ nw
whip[1]: Pr3c4{se .} ==> Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c4 ≠ ne, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ o, Br2c4 ≠ n, Br2c4 ≠ e
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c3{ew .} ==> Nr2c3 ≠ 3
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c2{se .} ==> Br3c2 ≠ w
B-single: Br3c2 = nw
whip[1]: Br3c2{nw .} ==> Nr3c2 ≠ 1
N-single: Nr3c2 = 2
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ wne, Pr3c6 ≠ ns, Pr3c6 ≠ sw, Pr4c6 ≠ ne, Pr4c6 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ swn
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ sw, Br1c8 ≠ ew, Br1c8 ≠ sw, Br1c7 ≠ ne, Br1c8 ≠ e, Br1c8 ≠ s
whip[1]: Br1c8{wne .} ==> Nr1c8 ≠ 1
whip[1]: Pr2c7{ew .} ==> Br2c6 ≠ sw, Br2c6 ≠ ne
whip[1]: Br3c6{ns .} ==> Nr3c6 ≠ 3
whip[1]: Br3c5{nw .} ==> Nr3c5 ≠ 3
whip[1]: Pr3c6{ew .} ==> Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ ne, Br3c5 ≠ s, Br3c5 ≠ w
whip[1]: Br3c5{nw .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ nw, Nr3c5 ≠ 1
N-single: Nr3c5 = 2
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ sw, Br3c4 ≠ wne, Br3c4 ≠ w
whip[1]: Br3c4{ew .} ==> Nr3c4 ≠ 1, Nr3c4 ≠ 3
N-single: Nr3c4 = 2
whip[1]: Br2c5{se .} ==> Pr2c5 ≠ ns, Pr2c5 ≠ sw
whip[1]: Br2c4{nw .} ==> Nr2c4 ≠ 3
whip[1]: Hr3c6{0 .} ==> Br3c6 ≠ ns, Pr3c6 ≠ ew, Pr3c7 ≠ ew, Pr3c7 ≠ sw, Br2c6 ≠ ns, Br2c6 ≠ se, Br3c6 ≠ ne
P-single: Pr3c6 = nw
whip[1]: Pr3c6{nw .} ==> Br2c5 ≠ ns
B-single: Br2c5 = se
whip[1]: Br2c5{se .} ==> Pr2c6 ≠ ew
whip[1]: Pr2c6{se .} ==> Br1c5 ≠ ns, Br1c5 ≠ se, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ nes, Br1c6 ≠ ne, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c5 ≠ s, Br1c6 ≠ o, Br1c6 ≠ n, Br1c6 ≠ e
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr2c5{nw .} ==> Br1c4 ≠ swn, Br1c4 ≠ wne
whip[1]: Br1c4{nes .} ==> Pr1c5 ≠ o, Pr1c5 ≠ ew, Pr2c4 ≠ o, Pr2c4 ≠ ns, Pr2c5 ≠ o
P-single: Pr2c5 = nw
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ s, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br2c4 ≠ w
whip[1]: Br2c4{nw .} ==> Nr2c4 ≠ 1
N-single: Nr2c4 = 2
whip[1]: Br1c5{wne .} ==> Nr1c5 ≠ 0
whip[1]: Br3c6{s .} ==> Nr3c6 ≠ 2
N-single: Nr3c6 = 1
whip[1]: Hr1c3{1 .} ==> Br1c3 ≠ e, Br0c3 ≠ o, Br1c3 ≠ o, Pr1c3 ≠ o
P-single: Pr1c3 = ew
B-single: Br0c3 = s
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ s, Br1c2 ≠ sw
whip[1]: Br1c2{swn .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Nr1c2 ≠ 1
w[1]-1-in-r1c1-asymmetric-ne-corner ==> Pr2c1 ≠ se, Pr2c1 ≠ ns
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ s
B-single: Br1c1 = e
whip[1]: Br1c1{e .} ==> Pr2c1 ≠ ne, Hr2c1 ≠ 1, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr2c2 ≠ ew
P-single: Pr2c2 = ne
P-single: Pr1c2 = se
P-single: Pr1c1 = o
P-single: Pr2c1 = o
whip[1]: Pr2c2{ne .} ==> Br1c2 ≠ ns
B-single: Br1c2 = swn
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 2
N-single: Nr1c2 = 3
whip[1]: Br1c3{ne .} ==> Nr1c3 ≠ 0
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Hr2c8{0 .} ==> Br2c8 ≠ swn, Pr2c8 ≠ ne, Pr2c8 ≠ se, Pr2c8 ≠ ew, Pr2c9 ≠ ew, Br1c8 ≠ ns, Br1c8 ≠ swn, Br2c8 ≠ ns
P-single: Pr1c10 = o
P-single: Pr2c9 = ne
whip[1]: Pr1c10{o .} ==> Hr1c10 ≠ 1, Br1c9 ≠ ns
B-single: Br1c9 = sw
whip[1]: Br1c9{sw .} ==> Pr1c9 ≠ ew
P-single: Pr1c9 = sw
whip[1]: Br2c8{sw .} ==> Nr2c8 ≠ 3
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Hr10c8{1 .} ==> Br10c8 ≠ esw, Pr10c8 ≠ ns, Pr10c9 ≠ se, Br9c8 ≠ nw
P-single: Pr10c9 = ew
P-single: Pr10c8 = ne
B-single: Br9c8 = swn
B-single: Br10c8 = n
whip[1]: Pr10c9{ew .} ==> Br10c9 ≠ nw
B-single: Br10c9 = n
whip[1]: Br10c9{n .} ==> Pr11c9 ≠ nw, Nr10c9 ≠ 2
N-single: Nr10c9 = 1
P-single: Pr11c9 = o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n
B-single: Br11c8 = o
whip[1]: Br11c8{o .} ==> Pr11c8 ≠ ne
P-single: Pr11c8 = o
whip[1]: Pr11c8{o .} ==> Vr10c8 ≠ 1
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 2
N-single: Nr9c8 = 3
whip[1]: Br10c8{n .} ==> Nr10c8 ≠ 3
N-single: Nr10c8 = 1
whip[1]: Pr7c5{sw .} ==> Br7c5 ≠ se, Br6c4 ≠ n, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c4 ≠ sw
B-single: Br7c4 = ne
B-single: Br6c4 = ns
B-single: Br7c5 = esw
whip[1]: Br7c4{ne .} ==> Pr7c4 ≠ sw, Pr8c5 ≠ ew
P-single: Pr8c5 = ne
P-single: Pr7c4 = ew
whip[1]: Pr8c5{ne .} ==> Br8c4 ≠ nw
B-single: Br8c4 = w
whip[1]: Br8c4{w .} ==> Nr8c4 ≠ 2
N-single: Nr8c4 = 1
whip[1]: Pr7c4{ew .} ==> Br7c3 ≠ nes
B-single: Br7c3 = ns
whip[1]: Br7c3{ns .} ==> Nr7c3 ≠ 3
N-single: Nr7c3 = 2
whip[1]: Br6c4{ns .} ==> Nr6c4 ≠ 1
N-single: Nr6c4 = 2
whip[1]: Br7c5{esw .} ==> Nr7c5 ≠ 2
N-single: Nr7c5 = 3
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e
B-single: Br5c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr1c11{0 .} ==> Pr1c11 ≠ sw, Br1c11 ≠ w
P-single: Pr1c11 = o
B-single: Br1c11 = o
whip[1]: Hr1c10{0 .} ==> Br0c10 ≠ s
B-single: Br0c10 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
Entering_relation_bivalue_with_<Fact-179185>
Entering_level_BC2_with_<Fact-179310>
Entering_level_W2_with_<Fact-179612>
Entering_level_BC3_with_<Fact-180237>
Entering_level_W3_with_<Fact-181083>
Entering_level_BC4_with_<Fact-182852>
Entering_level_W4_with_<Fact-185126>
Entering_level_BC5_with_<Fact-189753>
Entering_level_W5_with_<Fact-195663>
GRID 0 NOT SOLVED. 43 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.   .———.———.................———.   .   .
  1 |       : 3 |   :   : 2 :   | 2   0
.   .———.   .———.   .........   .———.   .
  0   3 |   :     2 | 2 :   :     2 |
.   .———.   .....———.   .....———.   .———.
    |     2 |   :       :     2 |       |
.———.   .———.   .........———.   .   .———.
| 3     |     2 |         2 |   |   | 3
.———.   .   .———.   .———.   .———.   .———.
    | 3 |   |     2 | 3 |         0     |
.   .———.   .———.———.   .   .   .   .———.
      2           1   2 |         1 |
.   .———.———.———.   .———.   .———.   .   .
  1 |         2 |   |     2 |   |   | 1
.   .———.———.   .———.   .———.   .   .   .
          2 |           |     2 |   |
.   .———.   .   .   .   .   .———.   .   .
    | 3 |   |     0   2 |   |     2 | 1
.———.   .———.   .   .———.   .———.———.   .
| 3   1       1     |     0           0
.———.———.———.———.———.   .   .   .   .   .

init-time = 0.62s, solve-time = 34.97s, total-time = 35.59s
nb-facts=<Fact-207124>
Quasi-Loop max length = 10
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




It is now easy to finish the puzzle manually:


.   .———.———.................———.   .   .
  1 |       : 3 |   :   : 2 :   | 2   0
.   .———.   .———.   .........   .———.   .
  0   3 |   :     2 | 2 :   :     2 |
.   .———.   .....———.   .....———.   .———.
    |     2 |   :       :     2 |       |
.———.   .———.   .........———.   .   .———.
| 3     |     2 |         2 |   |   | 3
.———.   .   .———.   .———.   .———.   .———.
    | 3 |   |     2 | 3 |         0     |
.   .———.   .———.———.   .   .   .   .———.
      2           1   2 |         1 |
.   .———.———.———.   .———.   .———.   .   .
  1 |         2 |   |     2 |   |   | 1
.   .———.———.   .———.   .———.   .   .   .
          2 |           |     2 |   |
.   .———.   .   .   .   .   .———.   .   .
    | 3 |   |     0   2 |   |     2 | 1
.———.   .———.   .   .———.   .———.———.   .
| 3   1       1     |     0           0
.———.———.———.———.———.   .   .   .   .   .


Vr2c4 = 1 => small loop
therefore Vr2c4 = 0:

.   .———.———.   .———.———.———.———.   .   .
  1 |       | 3 |         2     | 2   0
.   .———.   .———.   .———.———.   .———.   .
  0   3 |         2 | 2     |     2 |
.   .———.   .———.———.   .   .———.   .———.
    |     2 |                 2 |       |
.———.   .———.   .———.———.———.   .   .———.
| 3     |     2 |         2 |   |   | 3
.———.   .   .———.   .———.   .———.   .———.
    | 3 |   |     2 | 3 |         0     |
.   .———.   .———.———.   .   .   .   .———.
      2           1   2 |         1 |
.   .———.———.———.   .———.   .———.   .   .
  1 |         2 |   |     2 |   |   | 1
.   .———.———.   .———.   .———.   .   .   .
          2 |           |     2 |   |
.   .———.   .   .   .   .   .———.   .   .
    | 3 |   |     0   2 |   |     2 | 1
.———.   .———.   .   .———.   .———.———.   .
| 3   1       1     |     0           0
.———.———.———.———.———.   .   .   .   .   .







----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

Solved with the general T&E(W1+Loops) procedure:

----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = T&E(1, W+Loop)
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 . . 3 . . 2 . 2 0
0 3 . . 2 2 . . 2 .
. . 2 . . . . 2 . .
3 . . 2 . . 2 . . 3
. 3 . . 2 3 . . 0 .
. 2 . . 1 2 . . 1 .
1 . . 2 . . 2 . . 1
. . 2 . . . . 2 . .
. 3 . . 0 2 . . 2 1
3 1 . 1 . . 0 . . 0

start init-grid-structure 3.69548797607422e-05
start create-csp-variables
start create-labels 0.00232386589050293
start init-physical-csp-links 0.0146248340606689
start init-physical-non-csp-links 10.6133627891541
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.35080814361572
     start init-physical-BN-non-csp-links at local time 9.10939598083496
     start init-physical-BP-non-csp-links at local time 22.3766181468964
     end init-physical-BP-non-csp-links at local time 202.135173082352
end init-physical-non-csp-links 212.748581886292
start init-corner-B-c-values 212.748862981796
start init-outer-B-candidates 212.74892616272
start init-outer-I-candidates 212.749539136887
start init-H-candidates 212.74992609024
start init-V-candidates 212.751996994019
start init-P-candidates 212.754060029984
start init-inner-I-candidates 212.759004116058
start init-inner-N-and-B-candidates 212.761235952377
start solution 212.775031089783
entering BRT
H-single: Hr11c10 = 0
H-single: Hr11c7 = 0
H-single: Hr10c10 = 0
H-single: Hr10c7 = 0
H-single: Hr10c5 = 0
H-single: Hr9c5 = 0
H-single: Hr6c9 = 0
H-single: Hr5c9 = 0
H-single: Hr3c1 = 0
H-single: Hr2c10 = 0
H-single: Hr2c1 = 0
H-single: Hr1c10 = 0
V-single: Vr10c11 = 0
V-single: Vr10c10 = 0
V-single: Vr10c8 = 0
V-single: Vr10c7 = 0
V-single: Vr9c6 = 0
V-single: Vr9c5 = 0
V-single: Vr5c10 = 0
V-single: Vr5c9 = 0
V-single: Vr2c2 = 0
V-single: Vr2c1 = 0
V-single: Vr1c11 = 0
V-single: Vr1c10 = 0
P-single: Pr10c11 = o
V-single: Vr9c11 = 0
P-single: Pr2c11 = o
V-single: Vr2c11 = 0
P-single: Pr3c1 = o
V-single: Vr3c1 = 0
P-single: Pr2c1 = o
V-single: Vr1c1 = 0
P-single: Pr11c10 = o
H-single: Hr11c9 = 0
P-single: Pr11c8 = o
H-single: Hr11c8 = 0
P-single: Pr11c7 = o
H-single: Hr11c6 = 0
P-single: Pr1c10 = o
H-single: Hr1c9 = 0
P-single: Pr11c11 = o
P-single: Pr1c11 = o
entering level Loop with <Fact-92791>
Starting_init_links_with_<Fact-92869>
2609 candidates, 8935 csp-links and 36799 links. Density = 1.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-184342>
whip[1]: Pr11c11{o .} ==> Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Hr1c9{0 .} ==> Br1c9 ≠ nw, Br0c9 ≠ s, Pr1c9 ≠ se, Pr1c9 ≠ ew, Br1c9 ≠ ne, Br1c9 ≠ ns
B-single: Br0c9 = o
whip[1]: Br1c9{sw .} ==> Pr2c9 ≠ o, Pr2c9 ≠ sw, Pr2c10 ≠ o
P-single: Pr2c10 = sw
H-single: Hr2c9 = 1
V-single: Vr2c10 = 1
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ ne, Br2c10 ≠ s, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br2c9 ≠ ns, Br1c9 ≠ se, Br1c9 ≠ ew, Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ swn, Br2c10 ≠ wne, Br2c10 ≠ nes
B-single: Br2c9 = ne
H-single: Hr3c9 = 0
V-single: Vr2c9 = 0
B-single: Br1c9 = sw
V-single: Vr1c9 = 1
P-single: Pr1c9 = sw
H-single: Hr1c8 = 1
P-single: Pr2c9 = ne
H-single: Hr2c8 = 0
whip[1]: Hr3c9{0 .} ==> Br3c9 ≠ n, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes
whip[1]: Vr2c9{0 .} ==> Br2c8 ≠ e, Br2c8 ≠ ne, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw, Br2c8 ≠ wne, Br2c8 ≠ nes
whip[1]: Vr1c9{1 .} ==> Br1c8 ≠ o, Br1c8 ≠ n, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ sw, Br1c8 ≠ swn
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ e, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw
whip[1]: Br1c8{nes .} ==> Pr1c8 ≠ o, Pr1c8 ≠ sw, Pr2c8 ≠ ne, Nr1c8 ≠ 1
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ sw, Br1c7 ≠ ne
whip[1]: Br1c7{ew .} ==> Pr2c7 ≠ o, Pr2c7 ≠ ne, Pr2c7 ≠ sw
whip[1]: Pr2c7{ew .} ==> Br2c6 ≠ sw, Br2c6 ≠ ne
whip[1]: Br2c6{ew .} ==> Pr3c6 ≠ o, Pr3c6 ≠ ne, Pr3c6 ≠ sw
whip[1]: Pr3c6{ew .} ==> Br3c5 ≠ sw, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c5 ≠ o, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ne
whip[1]: Br3c5{swn .} ==> Nr3c5 ≠ 0
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Pr2c9{ne .} ==> Br2c8 ≠ n, Br1c8 ≠ nes, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ swn
whip[1]: Br2c8{sw .} ==> Pr2c8 ≠ se, Pr2c8 ≠ ew, Nr2c8 ≠ 3
whip[1]: Pr3c9{sw .} ==> Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ ew, Br3c8 ≠ ns
whip[1]: Br3c8{sw .} ==> Pr3c8 ≠ o, Pr3c8 ≠ nw, Pr3c8 ≠ se, Pr4c8 ≠ ns, Pr4c8 ≠ nw, Pr4c8 ≠ se, Pr4c8 ≠ ew, Pr4c9 ≠ o, Pr4c9 ≠ nw, Pr4c9 ≠ se
whip[1]: Pr4c9{sw .} ==> Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ swn, Br4c9 ≠ wne, Br4c9 ≠ o, Br4c9 ≠ e, Br4c9 ≠ s
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ nes, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c8 ≠ nw, Br4c8 ≠ swn, Br4c8 ≠ wne, Br4c7 ≠ ns
whip[1]: Br4c7{sw .} ==> Pr4c7 ≠ o, Pr4c7 ≠ nw, Pr4c7 ≠ se, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ se, Pr5c7 ≠ ew, Pr5c8 ≠ o, Pr5c8 ≠ nw, Pr5c8 ≠ se
whip[1]: Pr5c8{sw .} ==> Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c8 ≠ o, Br5c8 ≠ e, Br5c8 ≠ s
whip[1]: Br5c8{nes .} ==> Nr5c8 ≠ 0
whip[1]: Pr5c7{sw .} ==> Br4c6 ≠ se, Br4c6 ≠ esw, Br4c6 ≠ nes, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c7 ≠ nw, Br5c7 ≠ swn, Br5c7 ≠ wne
whip[1]: Br5c6{nes .} ==> Hr5c6 ≠ 0, Vr5c7 ≠ 0, Pr5c6 ≠ o, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Pr5c6 ≠ sw, Pr5c7 ≠ o, Pr5c7 ≠ ne, Pr6c6 ≠ o, Pr6c6 ≠ ne, Pr6c6 ≠ sw, Pr6c7 ≠ o, Pr6c7 ≠ se, Pr6c7 ≠ ew, Pr6c7 ≠ sw
V-single: Vr5c7 = 1
H-single: Hr5c6 = 1
P-single: Pr5c7 = sw
H-single: Hr5c7 = 0
V-single: Vr4c7 = 0
whip[1]: Vr5c7{1 .} ==> Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ e, Br5c7 ≠ s, Br5c7 ≠ ne, Br5c7 ≠ ns, Br5c7 ≠ se, Br5c7 ≠ nes
whip[1]: Br5c7{esw .} ==> Pr5c8 ≠ ew, Pr5c8 ≠ sw, Nr5c7 ≠ 0
whip[1]: Pr5c8{ns .} ==> Vr4c8 ≠ 0, Br4c7 ≠ sw, Br4c8 ≠ s, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ nes, Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ e
V-single: Vr4c8 = 1
B-single: Br4c7 = ne
H-single: Hr4c7 = 1
P-single: Pr4c8 = sw
H-single: Hr4c8 = 0
V-single: Vr3c8 = 0
whip[1]: Hr4c7{1 .} ==> Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ e, Br3c7 ≠ w, Br3c7 ≠ ne, Br3c7 ≠ nw, Br3c7 ≠ ew, Br3c7 ≠ wne
whip[1]: Br3c7{swn .} ==> Pr3c8 ≠ ns, Pr3c8 ≠ sw, Nr3c7 ≠ 0
whip[1]: Pr3c8{ew .} ==> Hr3c8 ≠ 0, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ esw, Br2c7 ≠ nes, Br3c8 ≠ sw, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ w, Br2c8 ≠ o, Br2c8 ≠ w
H-single: Hr3c8 = 1
B-single: Br3c8 = ne
V-single: Vr3c9 = 1
P-single: Pr3c9 = sw
whip[1]: Vr3c9{1 .} ==> Br3c9 ≠ o, Br3c9 ≠ e, Br3c9 ≠ s, Br3c9 ≠ se
whip[1]: Br3c9{esw .} ==> Nr3c9 ≠ 0
whip[1]: Br2c8{sw .} ==> Nr2c8 ≠ 0
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 0
whip[1]: Pr4c7{ew .} ==> Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br4c6 ≠ ew, Br4c6 ≠ wne, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ w, Br4c6 ≠ e, Br4c6 ≠ ne
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Br4c8{esw .} ==> Nr4c8 ≠ 0
whip[1]: Hr5c6{1 .} ==> Br4c6 ≠ o, Br4c6 ≠ n, Br4c6 ≠ w, Br4c6 ≠ nw
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 0
whip[1]: Pr6c7{nw .} ==> Br6c6 ≠ ne, Br6c7 ≠ nw, Br6c7 ≠ swn, Br6c7 ≠ wne
whip[1]: Br6c6{sw .} ==> Pr7c6 ≠ o, Pr7c6 ≠ sw
whip[1]: Pr7c6{ew .} ==> Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c5 ≠ ne
whip[1]: Pr6c6{ew .} ==> Br6c5 ≠ s, Br6c5 ≠ w
whip[1]: Br6c5{e .} ==> Hr7c5 ≠ 1, Vr6c5 ≠ 1, Pr7c5 ≠ ne, Pr6c5 ≠ ns, Pr6c5 ≠ se, Pr6c5 ≠ sw, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Pr7c5 ≠ se, Pr7c5 ≠ ew, Pr7c6 ≠ nw, Pr7c6 ≠ ew
V-single: Vr6c5 = 0
H-single: Hr7c5 = 0
whip[1]: Vr6c5{0 .} ==> Br6c4 ≠ e, Br6c4 ≠ ne, Br6c4 ≠ se, Br6c4 ≠ ew, Br6c4 ≠ esw, Br6c4 ≠ wne, Br6c4 ≠ nes
whip[1]: Hr7c5{0 .} ==> Br7c5 ≠ n, Br7c5 ≠ ns, Br7c5 ≠ nw, Br7c5 ≠ swn
whip[1]: Pr7c6{se .} ==> Br7c6 ≠ se, Br7c6 ≠ o, Br7c6 ≠ e, Br7c6 ≠ s
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Pr7c5{sw .} ==> Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ ns
whip[1]: Br7c4{sw .} ==> Pr7c4 ≠ o, Pr7c4 ≠ nw, Pr7c4 ≠ se, Pr8c4 ≠ ns, Pr8c4 ≠ nw, Pr8c4 ≠ se, Pr8c4 ≠ ew, Pr8c5 ≠ o, Pr8c5 ≠ nw, Pr8c5 ≠ se
whip[1]: Pr8c5{sw .} ==> Br8c5 ≠ nw, Br8c5 ≠ se, Br8c5 ≠ swn, Br8c5 ≠ wne, Br8c5 ≠ o, Br8c5 ≠ e, Br8c5 ≠ s
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Pr8c4{sw .} ==> Br7c3 ≠ se, Br7c3 ≠ esw, Br7c3 ≠ nes, Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c4 ≠ nw, Br8c4 ≠ swn, Br8c4 ≠ wne, Br8c3 ≠ ns
whip[1]: Br8c3{sw .} ==> Pr8c3 ≠ o, Pr8c3 ≠ nw, Pr8c3 ≠ se, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Pr9c3 ≠ se, Pr9c3 ≠ ew, Pr9c4 ≠ o, Pr9c4 ≠ nw, Pr9c4 ≠ se
whip[1]: Pr9c4{sw .} ==> Br9c4 ≠ nw, Br9c4 ≠ se, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ o, Br9c4 ≠ e, Br9c4 ≠ s
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Pr9c3{sw .} ==> Br8c2 ≠ se, Br8c2 ≠ esw, Br8c2 ≠ nes, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c3 ≠ nw, Br9c3 ≠ swn, Br9c3 ≠ wne
whip[1]: Br9c2{nes .} ==> Hr9c2 ≠ 0, Vr9c3 ≠ 0, Pr9c2 ≠ o, Pr9c2 ≠ ns, Pr9c2 ≠ nw, Pr9c2 ≠ sw, Pr9c3 ≠ o, Pr9c3 ≠ ne, Pr10c2 ≠ o, Pr10c2 ≠ ne, Pr10c2 ≠ sw, Pr10c3 ≠ o, Pr10c3 ≠ se, Pr10c3 ≠ ew, Pr10c3 ≠ sw
V-single: Vr9c3 = 1
H-single: Hr9c2 = 1
P-single: Pr9c3 = sw
H-single: Hr9c3 = 0
V-single: Vr8c3 = 0
whip[1]: Vr9c3{1 .} ==> Br9c3 ≠ o, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ s, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ se, Br9c3 ≠ nes
whip[1]: Br9c3{esw .} ==> Pr9c4 ≠ ew, Pr9c4 ≠ sw, Nr9c3 ≠ 0
whip[1]: Pr9c4{ns .} ==> Vr8c4 ≠ 0, Br8c3 ≠ sw, Br8c4 ≠ s, Br8c4 ≠ ne, Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ nes, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ e
V-single: Vr8c4 = 1
B-single: Br8c3 = ne
H-single: Hr8c3 = 1
P-single: Pr8c4 = sw
H-single: Hr8c4 = 0
V-single: Vr7c4 = 0
whip[1]: Hr8c3{1 .} ==> Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e, Br7c3 ≠ w, Br7c3 ≠ ne, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ wne
whip[1]: Br7c3{swn .} ==> Pr7c4 ≠ ns, Pr7c4 ≠ sw, Nr7c3 ≠ 0
whip[1]: Pr7c4{ew .} ==> Hr7c4 ≠ 0, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ esw, Br6c3 ≠ nes, Br6c4 ≠ nw, Br7c4 ≠ sw, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ w, Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ w
H-single: Hr7c4 = 1
B-single: Br7c4 = ne
V-single: Vr7c5 = 1
P-single: Pr7c5 = sw
whip[1]: Vr7c5{1 .} ==> Br7c5 ≠ o, Br7c5 ≠ e, Br7c5 ≠ s, Br7c5 ≠ se
whip[1]: Br7c5{esw .} ==> Nr7c5 ≠ 0
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 0
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ esw, Br7c2 ≠ nes, Br8c2 ≠ ew, Br8c2 ≠ wne, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ w, Br8c2 ≠ e, Br8c2 ≠ ne
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Br8c4{esw .} ==> Nr8c4 ≠ 0
whip[1]: Hr9c2{1 .} ==> Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ w, Br8c2 ≠ nw
whip[1]: Br8c2{swn .} ==> Nr8c2 ≠ 0
whip[1]: Pr10c3{nw .} ==> Br10c3 ≠ nw, Br10c3 ≠ swn, Br10c3 ≠ wne
whip[1]: Pr9c2{ew .} ==> Br8c1 ≠ se, Br8c1 ≠ esw, Br8c1 ≠ nes, Br9c1 ≠ wne, Br9c1 ≠ nes, Br9c1 ≠ ne
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ se, Br4c5 ≠ esw, Br4c5 ≠ nes, Br5c5 ≠ ne
whip[1]: Br5c5{sw .} ==> Pr6c5 ≠ o
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ w
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Pr3c10{ns .} ==> Br3c10 ≠ s, Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ swn, Br3c10 ≠ wne, Br3c10 ≠ o, Br3c10 ≠ e
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Br2c10{esw .} ==> Nr2c10 ≠ 0
whip[1]: Hr11c6{0 .} ==> Br10c6 ≠ nes, Br11c6 ≠ n, Pr11c6 ≠ ne, Pr11c6 ≠ ew, Br10c6 ≠ s, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn
B-single: Br11c6 = o
whip[1]: Pr11c6{nw .} ==> Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c5 ≠ e, Br10c5 ≠ s
whip[1]: Pr11c7{o .} ==> Br10c6 ≠ wne, Br11c7 ≠ n, Br10c6 ≠ e, Br10c6 ≠ ne, Br10c6 ≠ ew
B-single: Br11c7 = o
whip[1]: Br10c6{nw .} ==> Nr10c6 ≠ 3
whip[1]: Hr11c8{0 .} ==> Br10c8 ≠ nes, Br11c8 ≠ n, Pr11c9 ≠ nw, Pr11c9 ≠ ew, Br10c8 ≠ s, Br10c8 ≠ ns, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn
B-single: Br11c8 = o
whip[1]: Pr11c9{ne .} ==> Br10c9 ≠ s, Br10c9 ≠ w, Br10c9 ≠ ns, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ wne, Br10c9 ≠ nes
whip[1]: Pr11c8{o .} ==> Br10c8 ≠ wne, Br10c8 ≠ w, Br10c8 ≠ nw, Br10c8 ≠ ew
whip[1]: Br10c8{ne .} ==> Nr10c8 ≠ 3
whip[1]: Hr11c9{0 .} ==> Br10c9 ≠ swn, Br11c9 ≠ n, Pr11c9 ≠ ne, Br10c9 ≠ sw, Br10c9 ≠ esw
P-single: Pr11c9 = o
V-single: Vr10c9 = 0
B-single: Br11c9 = o
whip[1]: Pr11c9{o .} ==> Br10c8 ≠ e, Br10c8 ≠ ne
whip[1]: Br10c8{n .} ==> Pr10c9 ≠ ns, Pr10c9 ≠ se, Pr10c9 ≠ sw, Nr10c8 ≠ 2
whip[1]: Br10c9{ne .} ==> Nr10c9 ≠ 3
whip[1]: Pr11c10{o .} ==> Br10c9 ≠ ne, Br10c9 ≠ e
whip[1]: Br10c9{n .} ==> Nr10c9 ≠ 2
whip[1]: Vr1c1{0 .} ==> Pr1c1 ≠ se, Br1c0 ≠ e
P-single: Pr1c1 = o
H-single: Hr1c1 = 0
B-single: Br1c0 = o
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s, Pr1c2 ≠ ew, Pr1c2 ≠ sw
B-single: Br0c1 = o
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c2 ≠ n, Br1c2 ≠ w
whip[1]: Pr2c1{o .} ==> Br1c1 ≠ s
B-single: Br1c1 = e
V-single: Vr1c2 = 1
P-single: Pr1c2 = se
H-single: Hr1c2 = 1
P-single: Pr2c2 = ne
H-single: Hr2c2 = 1
whip[1]: Vr1c2{1 .} ==> Br1c2 ≠ o, Br1c2 ≠ e, Br1c2 ≠ s, Br1c2 ≠ se
whip[1]: Br1c2{wne .} ==> Pr1c3 ≠ o, Pr1c3 ≠ se, Pr2c3 ≠ nw, Nr1c2 ≠ 0, Nr1c2 ≠ 1
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Pr2c2{ne .} ==> Br1c2 ≠ nw, Br1c2 ≠ wne, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne
B-single: Br2c2 = nes
H-single: Hr3c2 = 1
V-single: Vr2c3 = 1
P-single: Pr2c3 = sw
H-single: Hr2c3 = 0
V-single: Vr1c3 = 0
P-single: Pr3c2 = se
V-single: Vr3c2 = 1
P-single: Pr3c3 = nw
H-single: Hr3c3 = 0
V-single: Vr3c3 = 0
B-single: Br1c2 = swn
N-single: Nr1c2 = 3
P-single: Pr1c3 = ew
H-single: Hr1c3 = 1
whip[1]: Hr3c2{1 .} ==> Br3c2 ≠ o, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Vr2c3{1 .} ==> Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ nes
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ ns, Br1c3 ≠ w, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ swn, Br2c3 ≠ wne
whip[1]: Br2c3{esw .} ==> Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c4 ≠ sw
whip[1]: Br1c3{ne .} ==> Pr1c4 ≠ o, Pr1c4 ≠ se, Nr1c3 ≠ 3
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ swn, Br1c4 ≠ wne
whip[1]: Br1c4{nes .} ==> Hr2c4 ≠ 0, Vr1c5 ≠ 0, Pr1c5 ≠ o, Pr1c5 ≠ ew, Pr2c4 ≠ o, Pr2c4 ≠ ns, Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr2c5 ≠ ns, Pr2c5 ≠ se, Pr2c5 ≠ ew, Pr2c5 ≠ sw
V-single: Vr1c5 = 1
H-single: Hr2c4 = 1
P-single: Pr2c5 = nw
H-single: Hr2c5 = 0
V-single: Vr2c5 = 0
whip[1]: Vr1c5{1 .} ==> Br1c5 ≠ o, Br1c5 ≠ n, Br1c5 ≠ e, Br1c5 ≠ s, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ se, Br1c5 ≠ nes
whip[1]: Br1c5{wne .} ==> Nr1c5 ≠ 0
whip[1]: Hr2c4{1 .} ==> Br2c4 ≠ o, Br2c4 ≠ e, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr2c5{nw .} ==> Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ sw
B-single: Br2c5 = se
H-single: Hr3c5 = 1
V-single: Vr2c6 = 1
P-single: Pr3c6 = nw
H-single: Hr3c6 = 0
V-single: Vr3c6 = 0
whip[1]: Hr3c5{1 .} ==> Br3c5 ≠ e, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw
whip[1]: Br3c5{swn .} ==> Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ nw
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ swn, Br3c6 ≠ wne
whip[1]: Br3c6{ns .} ==> Nr3c6 ≠ 3
whip[1]: Vr2c6{1 .} ==> Br2c6 ≠ ns, Br2c6 ≠ se
whip[1]: Br2c6{ew .} ==> Pr3c7 ≠ nw, Pr3c7 ≠ ew, Pr3c7 ≠ sw
whip[1]: Pr3c7{se .} ==> Br3c6 ≠ ne, Br3c6 ≠ ns
whip[1]: Br3c6{s .} ==> Nr3c6 ≠ 2
N-single: Nr3c6 = 1
whip[1]: Pr2c6{se .} ==> Br1c6 ≠ ne, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c6 ≠ o, Br1c6 ≠ n, Br1c6 ≠ e
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr3c5{ew .} ==> Br3c4 ≠ sw, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c4 ≠ o, Br3c4 ≠ s, Br3c4 ≠ w, Br3c4 ≠ ne
whip[1]: Br3c4{swn .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c2{se .} ==> Br3c2 ≠ n, Br3c1 ≠ w, Br3c1 ≠ s, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ sw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nes
whip[1]: Br3c2{wne .} ==> Pr4c2 ≠ o, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Pr4c3 ≠ nw, Nr3c2 ≠ 1
whip[1]: Pr4c2{nw .} ==> Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ nw, Br4c2 ≠ swn, Br4c2 ≠ wne
whip[1]: Br4c1{swn .} ==> Hr5c1 ≠ 0, Vr4c1 ≠ 0, Pr4c1 ≠ o, Pr4c1 ≠ ne, Pr5c1 ≠ o, Pr5c1 ≠ ns, Pr5c1 ≠ se, Pr4c2 ≠ ne, Pr5c2 ≠ o, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ se
V-single: Vr4c1 = 1
H-single: Hr5c1 = 1
P-single: Pr5c1 = ne
V-single: Vr5c1 = 0
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Hr5c1{1 .} ==> Br5c1 ≠ o, Br5c1 ≠ e, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ sw, Br5c1 ≠ esw
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Pr5c1{ne .} ==> Br5c1 ≠ nw, Br5c1 ≠ swn, Br5c1 ≠ wne
whip[1]: Br5c1{nes .} ==> Pr6c1 ≠ ne, Pr6c1 ≠ ns
whip[1]: Pr6c1{se .} ==> Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ nes, Br6c1 ≠ n, Br6c1 ≠ w
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e
B-single: Br5c0 = o
whip[1]: Pr5c2{sw .} ==> Br4c2 ≠ sw, Br4c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ wne
whip[1]: Br5c2{nes .} ==> Hr6c2 ≠ 0, Vr5c3 ≠ 0, Pr5c2 ≠ nw, Pr5c3 ≠ o, Pr5c3 ≠ ne, Pr5c3 ≠ nw, Pr5c3 ≠ ew, Pr6c2 ≠ o, Pr6c2 ≠ ns, Pr6c2 ≠ nw, Pr6c2 ≠ sw, Pr6c3 ≠ o, Pr6c3 ≠ ne, Pr6c3 ≠ ns, Pr6c3 ≠ se, Pr6c3 ≠ ew, Pr6c3 ≠ sw
V-single: Vr5c3 = 1
H-single: Hr6c2 = 1
P-single: Pr6c3 = nw
H-single: Hr6c3 = 0
V-single: Vr6c3 = 0
whip[1]: Vr5c3{1 .} ==> Br5c3 ≠ o, Br5c3 ≠ n, Br5c3 ≠ e, Br5c3 ≠ s, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ se, Br5c3 ≠ nes
whip[1]: Br5c3{wne .} ==> Nr5c3 ≠ 0
whip[1]: Hr6c2{1 .} ==> Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw
whip[1]: Br6c2{nw .} ==> Pr7c2 ≠ ne, Pr7c3 ≠ nw
whip[1]: Pr6c3{nw .} ==> Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br6c2 ≠ ne, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ swn, Br6c3 ≠ wne
whip[1]: Br6c3{s .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ns, Nr6c3 ≠ 2, Nr6c3 ≠ 3, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c4 ≠ sw
N-single: Nr6c3 = 1
whip[1]: Br6c2{nw .} ==> Pr7c2 ≠ o, Pr7c2 ≠ sw
whip[1]: Pr7c2{ew .} ==> Br7c1 ≠ s, Br7c1 ≠ w
whip[1]: Br7c1{e .} ==> Hr8c1 ≠ 1, Vr7c1 ≠ 1, Pr8c1 ≠ ne, Pr7c1 ≠ ns, Pr7c1 ≠ se, Pr8c1 ≠ ns, Pr8c1 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ ew, Pr8c2 ≠ sw
V-single: Vr7c1 = 0
H-single: Hr8c1 = 0
P-single: Pr8c1 = o
V-single: Vr8c1 = 0
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Hr8c1{0 .} ==> Br8c1 ≠ n, Br8c1 ≠ ne, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ swn, Br8c1 ≠ wne
whip[1]: Br8c1{sw .} ==> Nr8c1 ≠ 3
whip[1]: Pr8c1{o .} ==> Br8c1 ≠ w, Br8c1 ≠ ew, Br8c1 ≠ sw
whip[1]: Br8c1{s .} ==> Pr9c1 ≠ ne, Pr9c1 ≠ ns, Nr8c1 ≠ 2
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ns, Br9c1 ≠ ew, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ n, Br9c1 ≠ w
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Pr7c1{ne .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ wne
whip[1]: Br6c1{swn .} ==> Pr7c2 ≠ nw, Nr6c1 ≠ 2
whip[1]: Pr7c2{ew .} ==> Br7c2 ≠ e, Br7c2 ≠ s
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 1
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ nes
whip[1]: Br5c1{ns .} ==> Nr5c1 ≠ 3
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ se, Br4c2 ≠ nes, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 3
whip[1]: Pr5c2{sw .} ==> Vr4c2 ≠ 1, Br4c1 ≠ esw, Br4c2 ≠ ew, Br4c2 ≠ w
V-single: Vr4c2 = 0
B-single: Br4c1 = swn
H-single: Hr4c1 = 1
P-single: Pr4c1 = se
P-single: Pr4c2 = nw
H-single: Hr4c2 = 0
whip[1]: Hr4c1{1 .} ==> Br3c1 ≠ e, Br3c1 ≠ ew
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 0, Nr3c1 ≠ 1
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ esw
B-single: Br3c1 = se
N-single: Nr3c1 = 2
whip[1]: Pr4c2{nw .} ==> Br4c2 ≠ n, Br3c2 ≠ swn, Br4c2 ≠ ne, Br4c2 ≠ ns
whip[1]: Br4c2{s .} ==> Nr4c2 ≠ 2, Pr4c3 ≠ ew, Pr4c3 ≠ sw
whip[1]: Pr3c3{nw .} ==> Br2c3 ≠ sw, Br2c3 ≠ esw, Br3c2 ≠ wne, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ ew, Br3c3 ≠ sw
B-single: Br3c3 = se
H-single: Hr4c3 = 1
V-single: Vr3c4 = 1
P-single: Pr4c3 = se
V-single: Vr4c3 = 1
P-single: Pr4c4 = nw
H-single: Hr4c4 = 0
V-single: Vr4c4 = 0
B-single: Br3c2 = nw
N-single: Nr3c2 = 2
whip[1]: Hr4c3{1 .} ==> Br4c3 ≠ o, Br4c3 ≠ e, Br4c3 ≠ s, Br4c3 ≠ w, Br4c3 ≠ se, Br4c3 ≠ ew
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Vr3c4{1 .} ==> Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ ns, Br3c4 ≠ se
whip[1]: Br3c4{swn .} ==> Nr3c4 ≠ 1
whip[1]: Pr4c3{se .} ==> Br4c3 ≠ n, Br4c2 ≠ s, Br4c2 ≠ o, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nes
B-single: Br4c2 = e
H-single: Hr5c2 = 0
N-single: Nr4c2 = 1
P-single: Pr5c2 = sw
V-single: Vr5c2 = 1
P-single: Pr5c3 = ns
H-single: Hr5c3 = 0
whip[1]: Hr5c2{0 .} ==> Br5c2 ≠ nes
B-single: Br5c2 = esw
P-single: Pr6c2 = ne
H-single: Hr6c1 = 0
V-single: Vr6c2 = 0
whip[1]: Pr6c2{ne .} ==> Br5c1 ≠ n, Br5c1 ≠ ns, Br6c1 ≠ e, Br6c1 ≠ swn, Br6c2 ≠ nw
B-single: Br6c2 = ns
H-single: Hr7c2 = 1
B-single: Br6c1 = o
H-single: Hr7c1 = 0
V-single: Vr6c1 = 0
N-single: Nr6c1 = 0
P-single: Pr6c1 = o
P-single: Pr7c1 = o
P-single: Pr7c2 = se
V-single: Vr7c2 = 1
B-single: Br5c1 = ne
N-single: Nr5c1 = 2
whip[1]: Hr7c2{1 .} ==> Br7c2 ≠ ew, Br7c2 ≠ sw
whip[1]: Hr7c1{0 .} ==> Br7c1 ≠ n
B-single: Br7c1 = e
whip[1]: Pr8c2{ns .} ==> Br7c2 ≠ ne, Br7c2 ≠ ns, Br8c2 ≠ s, Br8c2 ≠ swn
whip[1]: Br8c2{sw .} ==> Nr8c2 ≠ 1, Nr8c2 ≠ 3
N-single: Nr8c2 = 2
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 2
N-single: Nr7c2 = 3
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ swn, Br7c3 ≠ s
whip[1]: Br7c3{sw .} ==> Nr7c3 ≠ 1, Nr7c3 ≠ 3
N-single: Nr7c3 = 2
whip[1]: Pr5c3{ns .} ==> Br5c3 ≠ nw, Br5c3 ≠ wne
whip[1]: Br5c3{ew .} ==> Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Nr5c3 ≠ 3
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 1
whip[1]: Pr4c4{nw .} ==> Br3c4 ≠ esw, Br3c4 ≠ swn, Br4c3 ≠ wne, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ sw
B-single: Br4c4 = se
H-single: Hr5c4 = 1
V-single: Vr4c5 = 1
P-single: Pr5c4 = se
V-single: Vr5c4 = 1
P-single: Pr5c5 = nw
H-single: Hr5c5 = 0
V-single: Vr5c5 = 0
B-single: Br4c3 = nw
N-single: Nr4c3 = 2
whip[1]: Hr5c4{1 .} ==> Br5c4 ≠ e, Br5c4 ≠ s, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 1
whip[1]: Vr4c5{1 .} ==> Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ s, Br4c5 ≠ ne, Br4c5 ≠ ns
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Pr5c4{se .} ==> Br5c3 ≠ w, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ nes
B-single: Br5c3 = ew
N-single: Nr5c3 = 2
whip[1]: Pr6c4{ns .} ==> Br6c4 ≠ s, Br6c4 ≠ swn
whip[1]: Br6c4{sw .} ==> Nr6c4 ≠ 1, Nr6c4 ≠ 3
N-single: Nr6c4 = 2
whip[1]: Br5c4{wne .} ==> Pr6c5 ≠ nw, Nr5c4 ≠ 2
N-single: Nr5c4 = 3
whip[1]: Pr6c5{ew .} ==> Hr6c5 ≠ 0, Br5c5 ≠ nw, Br5c5 ≠ ew, Br6c5 ≠ e
H-single: Hr6c5 = 1
B-single: Br6c5 = n
V-single: Vr6c6 = 0
P-single: Pr7c6 = se
H-single: Hr7c6 = 1
V-single: Vr7c6 = 1
whip[1]: Vr6c6{0 .} ==> Br6c6 ≠ nw, Br6c6 ≠ ew, Br6c6 ≠ sw
whip[1]: Br6c6{se .} ==> Pr6c7 ≠ ne, Pr7c7 ≠ o, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ se
whip[1]: Pr7c7{sw .} ==> Br6c7 ≠ sw, Br6c7 ≠ esw, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c7 ≠ nw, Br7c6 ≠ w
whip[1]: Br7c7{sw .} ==> Pr8c8 ≠ o, Pr8c8 ≠ se
whip[1]: Pr8c8{sw .} ==> Br8c8 ≠ nw
whip[1]: Br8c8{sw .} ==> Pr9c9 ≠ o, Pr9c9 ≠ se
whip[1]: Pr9c9{sw .} ==> Br9c9 ≠ nw
whip[1]: Br9c9{sw .} ==> Pr10c10 ≠ o
P-single: Pr10c10 = nw
H-single: Hr10c9 = 1
V-single: Vr9c10 = 1
whip[1]: Pr10c10{nw .} ==> Br10c9 ≠ o, Br9c10 ≠ s, Br9c10 ≠ e, Br9c10 ≠ n, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ ew, Br9c9 ≠ sw
B-single: Br9c9 = se
H-single: Hr9c9 = 0
V-single: Vr9c9 = 0
P-single: Pr9c9 = nw
H-single: Hr9c8 = 1
V-single: Vr8c9 = 1
P-single: Pr10c9 = ew
H-single: Hr10c8 = 1
B-single: Br9c10 = w
H-single: Hr9c10 = 0
P-single: Pr9c11 = o
V-single: Vr8c11 = 0
P-single: Pr9c10 = ns
V-single: Vr8c10 = 1
B-single: Br10c9 = n
N-single: Nr10c9 = 1
whip[1]: Hr9c9{0 .} ==> Br8c9 ≠ s, Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ nes
whip[1]: Vr9c9{0 .} ==> Br9c8 ≠ e, Br9c8 ≠ ne, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ wne, Br9c8 ≠ nes
whip[1]: Pr9c9{nw .} ==> Br9c8 ≠ s, Br9c8 ≠ o, Br8c9 ≠ e, Br8c9 ≠ n, Br8c9 ≠ o, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ ew, Br8c8 ≠ sw, Br8c9 ≠ ne, Br9c8 ≠ w, Br9c8 ≠ sw
B-single: Br8c8 = se
H-single: Hr8c8 = 0
V-single: Vr8c8 = 0
P-single: Pr8c8 = nw
H-single: Hr8c7 = 1
V-single: Vr7c8 = 1
whip[1]: Hr8c8{0 .} ==> Br7c8 ≠ s, Br7c8 ≠ ns, Br7c8 ≠ se, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ nes
whip[1]: Vr8c8{0 .} ==> Br8c7 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ esw, Br8c7 ≠ wne, Br8c7 ≠ nes
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ s, Br8c7 ≠ o, Br7c8 ≠ e, Br7c8 ≠ n, Br7c8 ≠ o, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c8 ≠ ne, Br8c7 ≠ w, Br8c7 ≠ sw
B-single: Br7c7 = se
H-single: Hr7c7 = 0
V-single: Vr7c7 = 0
P-single: Pr7c7 = nw
V-single: Vr6c7 = 1
whip[1]: Hr7c7{0 .} ==> Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ nes
whip[1]: Br6c7{ew .} ==> Nr6c7 ≠ 3
whip[1]: Vr7c7{0 .} ==> Br7c6 ≠ ne, Br7c6 ≠ wne, Br7c6 ≠ nes
whip[1]: Pr7c7{nw .} ==> Br6c7 ≠ e, Br6c7 ≠ n, Br6c7 ≠ o, Br6c6 ≠ ns, Br6c7 ≠ ne
B-single: Br6c6 = se
H-single: Hr6c6 = 0
P-single: Pr6c6 = nw
V-single: Vr5c6 = 1
P-single: Pr6c7 = ns
H-single: Hr6c7 = 0
whip[1]: Hr6c6{0 .} ==> Br5c6 ≠ nes
B-single: Br5c6 = wne
P-single: Pr5c6 = se
V-single: Vr4c6 = 0
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c6 ≠ sw, Br4c6 ≠ swn, Br5c5 ≠ ns, Br5c5 ≠ sw
B-single: Br5c5 = se
P-single: Pr6c5 = ew
H-single: Hr6c4 = 1
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ wne, Br6c4 ≠ sw
B-single: Br6c4 = ns
V-single: Vr6c4 = 0
P-single: Pr6c4 = ne
P-single: Pr7c4 = ew
H-single: Hr7c3 = 1
B-single: Br5c4 = swn
whip[1]: Vr6c4{0 .} ==> Br6c3 ≠ e
B-single: Br6c3 = s
P-single: Pr7c3 = ew
V-single: Vr7c3 = 0
whip[1]: Pr7c3{ew .} ==> Br7c2 ≠ wne, Br7c3 ≠ sw
B-single: Br7c3 = ns
P-single: Pr8c3 = ew
H-single: Hr8c2 = 1
B-single: Br7c2 = swn
P-single: Pr8c2 = ne
V-single: Vr8c2 = 0
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ sw
B-single: Br8c2 = ns
whip[1]: Pr9c2{ew .} ==> Br8c1 ≠ e, Br9c1 ≠ o, Br9c1 ≠ s
whip[1]: Br9c1{swn .} ==> Nr9c1 ≠ 0
whip[1]: Br4c6{ns .} ==> Pr4c6 ≠ se, Nr4c6 ≠ 3, Pr4c6 ≠ sw
whip[1]: Br4c5{nw .} ==> Nr4c5 ≠ 3
whip[1]: Pr6c7{ns .} ==> Br5c7 ≠ sw, Br5c7 ≠ esw
whip[1]: Br5c7{ew .} ==> Pr6c8 ≠ nw, Pr6c8 ≠ ew, Pr6c8 ≠ sw, Nr5c7 ≠ 3
whip[1]: Br6c7{ew .} ==> Nr6c7 ≠ 0
whip[1]: Pr7c8{se .} ==> Br6c8 ≠ ne, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn, Br6c8 ≠ o, Br6c8 ≠ n, Br6c8 ≠ e
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 0
whip[1]: Pr8c7{ew .} ==> Br8c6 ≠ sw, Br8c6 ≠ wne, Br8c6 ≠ nes, Br8c6 ≠ o, Br8c6 ≠ s, Br8c6 ≠ w, Br8c6 ≠ ne
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 0
whip[1]: Br8c7{swn .} ==> Nr8c7 ≠ 0
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 0
whip[1]: Pr8c9{se .} ==> Br7c9 ≠ ne, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ o, Br7c9 ≠ n, Br7c9 ≠ e
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 0
whip[1]: Pr9c8{ew .} ==> Br9c7 ≠ sw, Br9c7 ≠ wne, Br9c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ s, Br9c7 ≠ w, Br9c7 ≠ ne
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 0
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 0
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 0
whip[1]: Pr10c9{ew .} ==> Br10c8 ≠ o, Br9c8 ≠ n, Br9c8 ≠ nw
B-single: Br10c8 = n
N-single: Nr10c8 = 1
P-single: Pr10c8 = ne
V-single: Vr9c8 = 1

LOOP[8]: Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9- ==> Hr8c9 = 0
whip[1]: Pr10c8{ne .} ==> Br9c7 ≠ n, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c8 ≠ ns
B-single: Br9c8 = swn
N-single: Nr9c8 = 3
P-single: Pr9c8 = se
H-single: Hr9c7 = 0
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ ns, Br8c7 ≠ swn
whip[1]: Br8c7{nw .} ==> Pr9c7 ≠ ne, Pr9c7 ≠ se, Pr9c7 ≠ ew, Nr8c7 ≠ 3
whip[1]: Br9c7{ew .} ==> Nr9c7 ≠ 3
whip[1]: Hr8c9{0 .} ==> Pr8c9 ≠ se, Pr8c10 ≠ nw, Pr8c10 ≠ ew, Pr8c10 ≠ sw, Br7c9 ≠ s, Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ nes, Br8c9 ≠ nw, Br8c9 ≠ wne
P-single: Pr8c9 = ns
V-single: Vr7c9 = 1
whip[1]: Pr8c9{ns .} ==> Br7c8 ≠ w, Br7c8 ≠ nw
whip[1]: Br7c8{wne .} ==> Pr7c9 ≠ o, Pr7c9 ≠ ne, Pr7c9 ≠ nw, Pr7c9 ≠ ew, Nr7c8 ≠ 1
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ se, Br6c8 ≠ nes
whip[1]: Br8c9{ew .} ==> Nr8c9 ≠ 3
whip[1]: Hr9c10{0 .} ==> Br8c10 ≠ s, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ nes
whip[1]: Pr9c11{o .} ==> Br8c10 ≠ e, Br8c10 ≠ ne, Br8c10 ≠ ew, Br8c10 ≠ wne
whip[1]: Br8c10{nw .} ==> Pr8c11 ≠ ns, Pr8c11 ≠ sw, Nr8c10 ≠ 3
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Br7c10{w .} ==> Hr8c10 ≠ 1, Vr7c11 ≠ 1, Pr7c11 ≠ ns, Pr8c11 ≠ nw, Pr7c10 ≠ o, Pr7c10 ≠ nw, Pr8c10 ≠ ne, Pr7c11 ≠ sw, Pr7c10 ≠ se, Pr8c10 ≠ se
V-single: Vr7c11 = 0
H-single: Hr8c10 = 0
P-single: Pr8c11 = o
whip[1]: Vr7c11{0 .} ==> Br7c11 ≠ w
B-single: Br7c11 = o
whip[1]: Hr8c10{0 .} ==> Br8c10 ≠ n, Br8c10 ≠ nw
whip[1]: Br8c10{w .} ==> Nr8c10 ≠ 2
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ n, Br6c9 ≠ w
whip[1]: Br6c9{s .} ==> Vr6c9 ≠ 1, Pr7c9 ≠ ns, Pr6c9 ≠ sw
V-single: Vr6c9 = 0
P-single: Pr6c9 = o
H-single: Hr6c8 = 0
whip[1]: Vr6c9{0 .} ==> Br6c8 ≠ ew, Br6c8 ≠ wne
whip[1]: Br6c8{nw .} ==> Nr6c8 ≠ 3
whip[1]: Pr6c9{o .} ==> Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ nes, Br6c8 ≠ ns, Br6c8 ≠ nw
whip[1]: Br6c8{w .} ==> Pr6c8 ≠ ne, Nr6c8 ≠ 2, Pr6c8 ≠ se
N-single: Nr6c8 = 1
whip[1]: Br5c8{w .} ==> Nr5c8 ≠ 2, Nr5c8 ≠ 3
N-single: Nr5c8 = 1
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ ew, Br6c10 ≠ sw, Br6c10 ≠ swn, Br6c10 ≠ wne, Br6c10 ≠ e, Br6c10 ≠ s
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Pr9c10{ns .} ==> Br8c10 ≠ o, Br8c9 ≠ w
B-single: Br8c9 = ew
N-single: Nr8c9 = 2
P-single: Pr8c10 = ns
V-single: Vr7c10 = 1
B-single: Br8c10 = w
N-single: Nr8c10 = 1

LOOP[10]: Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9- ==> Hr7c9 = 0
whip[1]: Pr8c10{ns .} ==> Br7c10 ≠ n, Br7c9 ≠ w, Br7c9 ≠ nw
B-single: Br7c10 = w
H-single: Hr7c10 = 0
P-single: Pr7c11 = o
V-single: Vr6c11 = 0
whip[1]: Hr7c10{0 .} ==> Br6c10 ≠ se, Br6c10 ≠ esw, Br6c10 ≠ nes
whip[1]: Br6c10{nw .} ==> Pr6c11 ≠ ns, Pr6c11 ≠ sw, Nr6c10 ≠ 3
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ e, Br5c10 ≠ s
whip[1]: Vr6c11{0 .} ==> Br6c11 ≠ w
B-single: Br6c11 = o
whip[1]: Br7c9{wne .} ==> Nr7c9 ≠ 1
whip[1]: Hr7c9{0 .} ==> Pr7c9 ≠ se, Pr7c10 ≠ sw, Br6c9 ≠ s, Br7c9 ≠ wne
P-single: Pr7c10 = ns
V-single: Vr6c10 = 1
P-single: Pr7c9 = sw
H-single: Hr7c8 = 1
B-single: Br7c9 = ew
N-single: Nr7c9 = 2
B-single: Br6c9 = e
P-single: Pr6c10 = se
H-single: Hr6c10 = 1
whip[1]: Pr7c10{ns .} ==> Br6c10 ≠ n, Br6c10 ≠ o
whip[1]: Br6c10{nw .} ==> Nr6c10 ≠ 0
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ w, Br7c8 ≠ ew
B-single: Br7c8 = wne
N-single: Nr7c8 = 3
P-single: Pr7c8 = se
V-single: Vr6c8 = 0
B-single: Br6c8 = s
P-single: Pr6c8 = o
V-single: Vr5c8 = 0
whip[1]: Pr7c8{se .} ==> Br6c7 ≠ ew
B-single: Br6c7 = w
N-single: Nr6c7 = 1
whip[1]: Pr6c8{o .} ==> Br5c7 ≠ ew, Br5c8 ≠ w
B-single: Br5c8 = n
H-single: Hr5c8 = 1
P-single: Pr5c8 = ne
P-single: Pr5c9 = nw
V-single: Vr4c9 = 1
B-single: Br5c7 = w
N-single: Nr5c7 = 1
whip[1]: Hr5c8{1 .} ==> Br4c8 ≠ w, Br4c8 ≠ ew
whip[1]: Br4c8{esw .} ==> Nr4c8 ≠ 1
whip[1]: Pr5c9{nw .} ==> Br4c9 ≠ n, Br4c8 ≠ sw, Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ nes
B-single: Br4c8 = esw
N-single: Nr4c8 = 3
P-single: Pr4c9 = ns
H-single: Hr4c9 = 0
whip[1]: Pr4c9{ns .} ==> Br3c9 ≠ sw, Br3c9 ≠ esw
whip[1]: Br3c9{ew .} ==> Pr4c10 ≠ nw, Pr4c10 ≠ ew, Pr4c10 ≠ sw, Nr3c9 ≠ 3
whip[1]: Br4c9{ew .} ==> Nr4c9 ≠ 3
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ w, Br5c10 ≠ w, Br5c10 ≠ n, Br5c10 ≠ o, Br5c10 ≠ nw, Br5c10 ≠ esw
B-single: Br6c10 = nw
N-single: Nr6c10 = 2
P-single: Pr6c11 = nw
V-single: Vr5c11 = 1
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o, Pr5c11 ≠ o, Pr5c11 ≠ nw
B-single: Br5c11 = w
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ esw, Br4c10 ≠ nes
whip[1]: Br4c10{wne .} ==> Hr4c10 ≠ 0, Vr4c10 ≠ 0, Pr4c11 ≠ o, Pr4c11 ≠ ns, Pr4c10 ≠ o, Pr4c10 ≠ ne, Pr4c10 ≠ ns, Pr5c10 ≠ o
V-single: Vr4c10 = 1
H-single: Hr4c10 = 1
P-single: Pr5c10 = ne
H-single: Hr5c10 = 1
P-single: Pr4c10 = se
V-single: Vr3c10 = 0
whip[1]: Vr4c10{1 .} ==> Br4c9 ≠ w
B-single: Br4c9 = ew
N-single: Nr4c9 = 2
whip[1]: Hr4c10{1 .} ==> Br3c10 ≠ n, Br3c10 ≠ w, Br3c10 ≠ ne, Br3c10 ≠ ew
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 1
whip[1]: Pr5c10{ne .} ==> Br4c10 ≠ wne, Br5c10 ≠ se
B-single: Br5c10 = nes
N-single: Nr5c10 = 3
P-single: Pr5c11 = sw
V-single: Vr4c11 = 0
B-single: Br4c10 = swn
P-single: Pr4c11 = nw
V-single: Vr3c11 = 1
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Pr4c11{nw .} ==> Br3c10 ≠ ns, Br3c10 ≠ sw
whip[1]: Br3c10{nes .} ==> Pr3c11 ≠ o, Pr3c11 ≠ nw, Nr3c10 ≠ 2
N-single: Nr3c10 = 3
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ esw, Br2c10 ≠ w
whip[1]: Br2c10{sw .} ==> Nr2c10 ≠ 1, Nr2c10 ≠ 3
N-single: Nr2c10 = 2
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Pr4c10{se .} ==> Br3c9 ≠ ew, Br3c10 ≠ esw
B-single: Br3c10 = nes
H-single: Hr3c10 = 1
P-single: Pr3c11 = sw
P-single: Pr3c10 = ne
B-single: Br3c9 = w
N-single: Nr3c9 = 1
whip[1]: Hr3c10{1 .} ==> Br2c10 ≠ ew
B-single: Br2c10 = sw
whip[1]: Pr7c6{se .} ==> Br7c6 ≠ n, Br7c5 ≠ w, Br7c5 ≠ sw, Br7c6 ≠ ns
whip[1]: Br7c6{swn .} ==> Pr8c6 ≠ o, Pr8c6 ≠ se, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Nr7c6 ≠ 1
whip[1]: Pr8c6{nw .} ==> Br8c5 ≠ ne, Br8c5 ≠ nes, Br8c6 ≠ nw, Br8c6 ≠ swn
whip[1]: Br7c5{esw .} ==> Nr7c5 ≠ 1
whip[1]: Pr4c5{se .} ==> Br3c5 ≠ swn, Br3c5 ≠ n
whip[1]: Br3c5{nw .} ==> Nr3c5 ≠ 1, Nr3c5 ≠ 3
N-single: Nr3c5 = 2
whip[1]: Br3c4{ew .} ==> Nr3c4 ≠ 3
N-single: Nr3c4 = 2
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ swn, Br2c4 ≠ n
whip[1]: Br2c4{nw .} ==> Nr2c4 ≠ 1, Nr2c4 ≠ 3
N-single: Nr2c4 = 2
whip[1]: Br2c3{ew .} ==> Nr2c3 ≠ 3
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr1c11{0 .} ==> Br1c11 ≠ w
B-single: Br1c11 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr9c5{0 .} ==> Br9c4 ≠ nes, Br9c4 ≠ ne, Br9c4 ≠ ew, Br9c4 ≠ esw
whip[1]: Br9c4{sw .} ==> Nr9c4 ≠ 3
whip[1]: Vr9c6{0 .} ==> Br9c6 ≠ sw, Br9c6 ≠ nw, Br9c6 ≠ ew
whip[1]: Br9c6{se .} ==> Pr9c7 ≠ o, Pr10c7 ≠ o
P-single: Pr10c7 = nw
H-single: Hr10c6 = 1
V-single: Vr9c7 = 1
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ o, Br9c7 ≠ e, Br9c6 ≠ ne, Br9c6 ≠ ns, Br10c6 ≠ w
B-single: Br9c6 = se
H-single: Hr9c6 = 0
P-single: Pr9c6 = o
V-single: Vr8c6 = 0
P-single: Pr9c7 = ns
V-single: Vr8c7 = 1
P-single: Pr10c6 = se
V-single: Vr10c6 = 1
B-single: Br9c7 = ew
N-single: Nr9c7 = 2
whip[1]: Hr9c6{0 .} ==> Br8c6 ≠ ns, Br8c6 ≠ se, Br8c6 ≠ esw
whip[1]: Br8c6{ew .} ==> Nr8c6 ≠ 3
whip[1]: Pr9c6{o .} ==> Br8c5 ≠ ns, Br8c5 ≠ ew, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c6 ≠ ew
whip[1]: Br8c6{e .} ==> Nr8c6 ≠ 2, Pr8c6 ≠ ns
N-single: Nr8c6 = 1
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2, Nr8c5 ≠ 3
N-single: Nr8c5 = 1
whip[1]: Pr9c7{ns .} ==> Br8c7 ≠ n, Br8c6 ≠ n
B-single: Br8c6 = e
H-single: Hr8c6 = 0
P-single: Pr8c6 = nw
H-single: Hr8c5 = 1
P-single: Pr8c7 = se
B-single: Br8c7 = nw
N-single: Nr8c7 = 2
whip[1]: Hr8c6{0 .} ==> Br7c6 ≠ swn
B-single: Br7c6 = nw
N-single: Nr7c6 = 2
whip[1]: Pr8c6{nw .} ==> Br7c5 ≠ ew, Br8c5 ≠ w
B-single: Br8c5 = n
V-single: Vr8c5 = 0
P-single: Pr8c5 = ne
P-single: Pr9c5 = o
H-single: Hr9c4 = 0
B-single: Br7c5 = esw
N-single: Nr7c5 = 3
whip[1]: Vr8c5{0 .} ==> Br8c4 ≠ ew, Br8c4 ≠ esw
whip[1]: Br8c4{sw .} ==> Nr8c4 ≠ 3
whip[1]: Pr9c5{o .} ==> Br8c4 ≠ sw, Br9c4 ≠ n, Br9c4 ≠ ns
B-single: Br8c4 = w
N-single: Nr8c4 = 1
P-single: Pr9c4 = ns
V-single: Vr9c4 = 1
whip[1]: Pr9c4{ns .} ==> Br9c3 ≠ w, Br9c3 ≠ sw
whip[1]: Br9c3{esw .} ==> Pr10c4 ≠ o, Pr10c4 ≠ se, Pr10c4 ≠ ew, Pr10c4 ≠ sw, Nr9c3 ≠ 1
whip[1]: Pr10c4{nw .} ==> Br10c3 ≠ ne, Br10c3 ≠ nes
whip[1]: Pr10c6{se .} ==> Br10c6 ≠ n, Br10c5 ≠ w, Br10c5 ≠ n, Br10c5 ≠ o, Br10c5 ≠ nw, Br10c5 ≠ nes
B-single: Br10c6 = nw
N-single: Nr10c6 = 2
P-single: Pr11c6 = nw
H-single: Hr11c5 = 1
whip[1]: Pr11c6{nw .} ==> Br11c5 ≠ o
B-single: Br11c5 = n
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ n, Br10c4 ≠ w
whip[1]: Br10c4{s .} ==> Hr10c4 ≠ 1, Vr10c4 ≠ 1, Pr11c4 ≠ ne, Pr10c4 ≠ ne, Pr10c4 ≠ ns, Pr11c4 ≠ nw, Pr10c5 ≠ sw
V-single: Vr10c4 = 0
H-single: Hr10c4 = 0
P-single: Pr10c5 = o
V-single: Vr10c5 = 0
P-single: Pr10c4 = nw
H-single: Hr10c3 = 1
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ e, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw
whip[1]: Br10c3{sw .} ==> Nr10c3 ≠ 3
whip[1]: Hr10c4{0 .} ==> Br9c4 ≠ sw
B-single: Br9c4 = w
N-single: Nr9c4 = 1
whip[1]: Pr10c5{o .} ==> Br10c4 ≠ e, Br10c5 ≠ esw
B-single: Br10c5 = se
N-single: Nr10c5 = 2
P-single: Pr11c5 = ew
H-single: Hr11c4 = 1
B-single: Br10c4 = s
P-single: Pr11c4 = ew
H-single: Hr11c3 = 1
whip[1]: Pr11c5{ew .} ==> Br11c4 ≠ o
B-single: Br11c4 = n
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ w, Br10c3 ≠ n, Br10c3 ≠ o, Br11c3 ≠ o
B-single: Br11c3 = n
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ n, Br10c2 ≠ w
whip[1]: Br10c2{s .} ==> Hr10c2 ≠ 1, Vr10c2 ≠ 1, Pr11c2 ≠ ne, Pr10c2 ≠ ns, Pr11c2 ≠ nw, Pr10c2 ≠ se, Pr10c2 ≠ ew, Pr10c3 ≠ nw
V-single: Vr10c2 = 0
H-single: Hr10c2 = 0
P-single: Pr10c2 = nw
H-single: Hr10c1 = 1
V-single: Vr9c2 = 1
whip[1]: Vr10c2{0 .} ==> Br10c1 ≠ esw
B-single: Br10c1 = swn
H-single: Hr11c1 = 1
V-single: Vr10c1 = 1
P-single: Pr11c1 = ne
P-single: Pr11c2 = ew
H-single: Hr11c2 = 1
P-single: Pr10c1 = se
V-single: Vr9c1 = 0

LOOP[8]: Vr9c3-Hr9c2-Vr9c2-Hr10c1-Vr10c1-Hr11c1-Hr11c2- ==> Vr10c3 = 0
whip[1]: Hr11c1{1 .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ e, Br11c2 ≠ o
B-single: Br11c2 = n
P-single: Pr11c3 = ew
B-single: Br10c2 = s
P-single: Pr10c3 = ne
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ sw
whip[1]: Br10c3{ns .} ==> Nr10c3 ≠ 0
whip[1]: Pr10c3{ne .} ==> Br9c2 ≠ nes, Br9c3 ≠ ew, Br10c3 ≠ s
B-single: Br10c3 = ns
N-single: Nr10c3 = 2
B-single: Br9c3 = esw
N-single: Nr9c3 = 3
B-single: Br9c2 = wne
P-single: Pr9c2 = se
H-single: Hr9c1 = 0
whip[1]: Pr9c2{se .} ==> Br8c1 ≠ s, Br9c1 ≠ nw, Br9c1 ≠ swn
B-single: Br8c1 = o
N-single: Nr8c1 = 0
P-single: Pr9c1 = o
whip[1]: Br9c1{se .} ==> Nr9c1 ≠ 3
whip[1]: Pr10c1{se .} ==> Br9c1 ≠ e
B-single: Br9c1 = se
N-single: Nr9c1 = 2
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Hr1c10{0 .} ==> Br0c10 ≠ s
B-single: Br0c10 = o

*** STARTING T&E IN CONTEXT 0 with 566 csp-variables solved and 823 candidates remaining ***

        STARTING PHASE 1 IN CONTEXT 0 with 566 csp-variables solved and 823 candidates remaining

GENERATING CONTEXT 1 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr2c8.
entering BRT for context 1
P-single: Pr3c8 = ne
H-single: Hr3c7 = 0
B-single: Br2c8 = sw
N-single: Nr2c8 = 2
entering level Loop with <Fact-191477>
Starting_init_links_with_<Fact-193271>
Entering_level_W1_with_<Fact-195204>
whip[1]: Hr3c7{0 .} ==> Pr3c7 ≠ ne, Br3c7 ≠ swn, Br3c7 ≠ ns, Pr3c7 ≠ se
whip[1]: Br3c7{s .} ==> Nr3c7 ≠ 3
whip[1]: Pr2c8{ns .} ==> Br1c7 ≠ nw, Br1c7 ≠ se
whip[1]: Br1c7{ns .} ==> Pr1c7 ≠ se, Pr1c7 ≠ o
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ w, Br1c6 ≠ s, Br1c6 ≠ ew, Br1c6 ≠ se, Hr1c6 ≠ 0
H-single: Hr1c6 = 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c6 ≠ sw, Pr1c6 ≠ o
B-single: Br0c6 = s
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ w, Br1c5 ≠ wne
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 3, Nr1c5 ≠ 1
N-single: Nr1c5 = 2
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 1
NO CONTRADICTION FOUND IN CONTEXT 1.
BACK IN CONTEXT 0 with 566 csp-variables solved and 823 candidates remaining.

GENERATING CONTEXT 2 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr2c8.
entering BRT for context 2
P-single: Pr3c8 = ew
H-single: Hr3c7 = 1
B-single: Br2c8 = s
N-single: Nr2c8 = 1
entering level Loop with <Fact-196161>

LOOP[8]: Hr3c7-Hr3c8-Vr3c9-Vr4c9-Hr5c8-Vr4c8-Hr4c7- ==> Vr3c7 = 0
Starting_init_links_with_<Fact-197956>
Entering_level_W1_with_<Fact-199873>
whip[1]: Vr3c7{0 .} ==> Pr3c7 ≠ ns, Br3c7 ≠ swn, Br3c7 ≠ sw, Br3c6 ≠ e, Pr4c7 ≠ ne, Pr3c7 ≠ se
P-single: Pr4c7 = ew
H-single: Hr4c6 = 1
B-single: Br3c6 = s
P-single: Pr4c6 = ew
H-single: Hr4c5 = 1
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ s
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ w, Br3c5 ≠ nw
B-single: Br3c5 = ns
V-single: Vr3c5 = 0
P-single: Pr4c5 = se
P-single: Pr3c5 = ew
H-single: Hr3c4 = 1
B-single: Br4c5 = nw
N-single: Nr4c5 = 2
whip[1]: Vr3c5{0 .} ==> Br3c4 ≠ ew
B-single: Br3c4 = nw
P-single: Pr3c4 = se
V-single: Vr2c4 = 0
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ nw, Br2c3 ≠ ew
B-single: Br2c3 = w
N-single: Nr2c3 = 1
P-single: Pr2c4 = ne
V-single: Vr1c4 = 1
B-single: Br2c4 = ns
whip[1]: Pr2c4{ne .} ==> Br1c3 ≠ n, Br1c4 ≠ nes
B-single: Br1c4 = esw
H-single: Hr1c4 = 0
P-single: Pr1c5 = se
H-single: Hr1c5 = 1
P-single: Pr1c4 = sw
B-single: Br1c3 = ne
N-single: Nr1c3 = 2

LOOP[24]: Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c2-Vr2c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr3c4-Hr3c4-Hr3c5-Vr2c6- ==> Vr1c6 = 0
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ w, Br1c5 ≠ ew
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 1, Pr1c6 ≠ se, Pr1c6 ≠ o
whip[1]: Pr1c6{ew .} ==> Br1c6 ≠ s, Br1c6 ≠ wne, Br1c6 ≠ se, Br1c6 ≠ nw
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Vr1c6{0 .} ==> Br1c6 ≠ ew, Br1c6 ≠ w, Br1c5 ≠ wne, Pr2c6 ≠ ns, Pr1c6 ≠ sw
P-single: Pr1c6 = ew
H-single: Hr1c6 = 1
P-single: Pr2c6 = se
H-single: Hr2c6 = 1
B-single: Br1c5 = nw
N-single: Nr1c5 = 2

LOOP[26]: Hr2c6-Vr2c6-Hr3c5-Hr3c4-Vr3c4-Hr4c3-Vr4c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c2-Vr2c3-Hr2c2-Vr1c2-Hr1c2-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Hr1c6- ==> Vr1c7 = 0
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c7 ≠ se, Pr1c7 ≠ o
B-single: Br0c6 = s
whip[1]: Pr1c7{ew .} ==> Br1c7 ≠ se, Br1c7 ≠ nw
whip[1]: Br1c7{ns .} ==> Pr2c8 ≠ nw, Pr2c8 ≠ oNO POSSIBLE VALUE for csp-variable 40208 IN CONTEXT 2. RETRACTING CANDIDATE 0Vr2c8 FROM CONTEXT 0.

 ASSERTING CANDIDATE 1Vr2c8 FOR CONTEXT 0.

BACK IN CONTEXT 0 with 566 csp-variables solved and 822 candidates remaining.

whip[1]: Vr2c8{1 .} ==> Pr2c8 ≠ o, Pr2c8 ≠ nw, Pr3c8 ≠ ew, Br2c7 ≠ s, Br2c7 ≠ ns, Br2c7 ≠ sw, Br2c7 ≠ swn, Br2c8 ≠ s
P-single: Pr3c8 = ne
H-single: Hr3c7 = 0
B-single: Br2c8 = sw
N-single: Nr2c8 = 2
whip[1]: Pr3c8{ne .} ==> Br3c7 ≠ ns, Br3c7 ≠ swn
whip[1]: Br3c7{sw .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ se, Nr3c7 ≠ 3
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se
whip[1]: Br1c7{ew .} ==> Pr1c7 ≠ o, Pr1c7 ≠ se
whip[1]: Pr1c7{sw .} ==> Hr1c6 ≠ 0, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ s, Br1c6 ≠ w
H-single: Hr1c6 = 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c6 ≠ o, Pr1c6 ≠ sw
B-single: Br0c6 = s
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ wne, Br1c5 ≠ w
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 1, Nr1c5 ≠ 3
N-single: Nr1c5 = 2
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 1
GENERATING CONTEXT 3 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr1c8.
entering BRT for context 3
P-single: Pr2c8 = ns
H-single: Hr2c7 = 0
P-single: Pr1c8 = se
H-single: Hr1c7 = 0
B-single: Br1c8 = wne
N-single: Nr1c8 = 3
B-single: Br1c7 = ew
V-single: Vr1c7 = 1
P-single: Pr1c7 = sw
entering level Loop with <Fact-201731>
Starting_init_links_with_<Fact-204005>
Entering_level_W1_with_<Fact-205084>
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ ns
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 2
N-single: Nr1c6 = 3
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Hr2c7{0 .} ==> Br2c7 ≠ ne, Br2c7 ≠ wne
whip[1]: Br2c7{e .} ==> Nr2c7 ≠ 3
NO CONTRADICTION FOUND IN CONTEXT 3.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 4 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr1c8.
entering BRT for context 4
P-single: Pr2c8 = sw
H-single: Hr2c7 = 1
P-single: Pr1c8 = ew
H-single: Hr1c7 = 1
B-single: Br1c8 = ne
N-single: Nr1c8 = 2
B-single: Br1c7 = ns
V-single: Vr1c7 = 0
P-single: Pr1c7 = ew
entering level Loop with <Fact-206002>
Starting_init_links_with_<Fact-207916>
Entering_level_W1_with_<Fact-208995>
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ wne, Br1c6 ≠ nes
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 3
N-single: Nr1c6 = 2
whip[1]: Hr2c7{1 .} ==> Br2c7 ≠ e, Br2c7 ≠ ew
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 1
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
NO CONTRADICTION FOUND IN CONTEXT 4.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 5 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr3c7.
entering BRT for context 5
P-single: Pr4c7 = ne
H-single: Hr4c6 = 0
P-single: Pr3c7 = ns
V-single: Vr2c7 = 1
B-single: Br3c7 = sw
N-single: Nr3c7 = 2
B-single: Br3c6 = e
P-single: Pr4c6 = o
H-single: Hr4c5 = 0
entering level Loop with <Fact-209912>

LOOP[10]: Vr2c7-Vr3c7-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8- ==> Hr2c7 = 0
Starting_init_links_with_<Fact-211717>
Entering_level_W1_with_<Fact-212854>
whip[1]: Hr2c7{0 .} ==> Pr2c7 ≠ se, Br2c7 ≠ wne, Br2c7 ≠ ne, Br1c7 ≠ ns, Pr2c8 ≠ sw, Pr2c7 ≠ ew
P-single: Pr2c8 = ns
V-single: Vr1c8 = 1
B-single: Br1c7 = ew
V-single: Vr1c7 = 1
H-single: Hr1c7 = 0
P-single: Pr1c8 = se
P-single: Pr1c7 = sw
whip[1]: Pr2c8{ns .} ==> Br1c8 ≠ ne
B-single: Br1c8 = wne
N-single: Nr1c8 = 3
whip[1]: Vr1c7{1 .} ==> Br1c6 ≠ nw, Br1c6 ≠ ns
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 2
N-single: Nr1c6 = 3
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Br2c7{e .} ==> Nr2c7 ≠ 3
whip[1]: Hr4c5{0 .} ==> Pr4c5 ≠ se, Br4c5 ≠ nw, Br3c5 ≠ ns
P-single: Pr4c5 = ns
V-single: Vr3c5 = 1
B-single: Br3c5 = nw
P-single: Pr3c5 = se
H-single: Hr3c4 = 0
B-single: Br4c5 = w
N-single: Nr4c5 = 1

LOOP[74]: Vr2c7-Vr3c7-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8-Vr1c8-Hr1c8-Vr1c9-Hr2c9-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Hr7c2-Hr7c3-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c4-Vr4c5-Vr3c5-Hr3c5-Vr2c6- ==> Hr2c6 = 0

LOOP[76]: Hr1c6-Vr1c7-Vr2c7-Vr3c7-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8-Vr1c8-Hr1c8-Vr1c9-Hr2c9-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Hr7c2-Hr7c3-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c4-Vr4c5-Vr3c5-Hr3c5-Vr2c6- ==> Vr1c6 = 0
whip[1]: Pr4c5{ns .} ==> Br3c4 ≠ nw
B-single: Br3c4 = ew
P-single: Pr3c4 = ns
V-single: Vr2c4 = 1

LOOP[18]: Vr2c4-Vr3c4-Hr4c3-Vr4c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c2-Vr2c3-Hr2c2-Vr1c2-Hr1c2-Hr1c3- ==> Vr1c4 = 0

LOOP[20]: Hr1c3-Hr1c2-Vr1c2-Hr2c2-Vr2c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr3c4-Vr2c4-Hr2c4-Vr1c5- ==> Hr1c4 = 0
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ns, Br2c3 ≠ w
B-single: Br2c3 = ew
N-single: Nr2c3 = 2
P-single: Pr2c4 = se
B-single: Br2c4 = nw
whip[1]: Pr2c4{se .} ==> Br1c4 ≠ esw, Br1c3 ≠ ne
B-single: Br1c3 = n
N-single: Nr1c3 = 1
P-single: Pr1c4 = ew
B-single: Br1c4 = nes
P-single: Pr1c5 = sw
H-single: Hr1c5 = 0
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ nw
B-single: Br1c5 = ew
P-single: Pr2c6 = ns
P-single: Pr1c6 = se
whip[1]: Pr2c6{ns .} ==> Br2c6 ≠ nw, Br1c6 ≠ nes
B-single: Br1c6 = wne
P-single: Pr2c7 = ns
B-single: Br2c6 = ew
whip[1]: Pr2c7{ns .} ==> Br2c7 ≠ e
B-single: Br2c7 = ew
N-single: Nr2c7 = 2
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr4c6{o .} ==> Br4c6 ≠ ns
B-single: Br4c6 = s
N-single: Nr4c6 = 1
NO CONTRADICTION FOUND IN CONTEXT 5.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 6 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr3c7.
entering BRT for context 6
P-single: Pr4c7 = ew
H-single: Hr4c6 = 1
P-single: Pr3c7 = o
V-single: Vr2c7 = 0
B-single: Br3c7 = s
N-single: Nr3c7 = 1
B-single: Br3c6 = s
P-single: Pr4c6 = ew
H-single: Hr4c5 = 1
entering level Loop with <Fact-214939>

LOOP[70]: Hr1c8-Vr1c9-Hr2c9-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Hr7c2-Hr7c3-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8- ==> Vr1c8 = 0
Starting_init_links_with_<Fact-217280>
Entering_level_W1_with_<Fact-218421>
whip[1]: Vr1c8{0 .} ==> Pr1c8 ≠ se, Br1c8 ≠ wne, Br1c7 ≠ ew, Pr2c8 ≠ ns
P-single: Pr2c8 = sw
H-single: Hr2c7 = 1
P-single: Pr1c8 = ew
H-single: Hr1c7 = 1
B-single: Br1c7 = ns
V-single: Vr1c7 = 0
P-single: Pr1c7 = ew
B-single: Br1c8 = ne
N-single: Nr1c8 = 2
whip[1]: Pr2c8{sw .} ==> Br2c7 ≠ e, Br2c7 ≠ ew
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 1
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Vr1c7{0 .} ==> Br1c6 ≠ nes, Br1c6 ≠ wne
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 3
N-single: Nr1c6 = 2
whip[1]: Hr4c5{1 .} ==> Pr4c5 ≠ ns, Br4c5 ≠ w, Br3c5 ≠ nw
P-single: Pr4c5 = se
V-single: Vr3c5 = 0
B-single: Br3c5 = ns
P-single: Pr3c5 = ew
H-single: Hr3c4 = 1
B-single: Br4c5 = nw
N-single: Nr4c5 = 2
whip[1]: Pr4c5{se .} ==> Br3c4 ≠ ew
B-single: Br3c4 = nw
P-single: Pr3c4 = se
V-single: Vr2c4 = 0
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ nw, Br2c3 ≠ ew
B-single: Br2c3 = w
N-single: Nr2c3 = 1
P-single: Pr2c4 = ne
V-single: Vr1c4 = 1
B-single: Br2c4 = ns
whip[1]: Pr2c4{ne .} ==> Br1c3 ≠ n, Br1c4 ≠ nes
B-single: Br1c4 = esw
H-single: Hr1c4 = 0
P-single: Pr1c5 = se
H-single: Hr1c5 = 1
P-single: Pr1c4 = sw
B-single: Br1c3 = ne
N-single: Nr1c3 = 2

LOOP[24]: Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c2-Vr2c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr3c4-Hr3c4-Hr3c5-Vr2c6- ==> Vr1c6 = 0

LOOP[96]: Vr2c6-Hr3c5-Hr3c4-Vr3c4-Hr4c3-Vr4c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c2-Vr2c3-Hr2c2-Vr1c2-Hr1c2-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Vr1c9-Hr2c9-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Hr7c2-Hr7c3-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8-Hr2c7- ==> Hr2c6 = 1
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ ew
B-single: Br1c5 = nw
P-single: Pr2c6 = se
P-single: Pr1c6 = ew
whip[1]: Pr2c6{se .} ==> Br2c6 ≠ ew, Br1c6 ≠ nw
B-single: Br1c6 = ns
P-single: Pr2c7 = ew
B-single: Br2c6 = nw
whip[1]: Pr2c7{ew .} ==> Br2c7 ≠ wne
B-single: Br2c7 = ne
N-single: Nr2c7 = 2
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr4c6{1 .} ==> Br4c6 ≠ s
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 6.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 7 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr2c7.
entering BRT for context 7
P-single: Pr3c7 = ns
V-single: Vr3c7 = 1
B-single: Br2c6 = ew
H-single: Hr2c6 = 0
P-single: Pr2c6 = ns
V-single: Vr1c6 = 1
entering level Loop with <Fact-226056>

LOOP[10]: Vr2c8-Hr3c8-Vr3c9-Vr4c9-Hr5c8-Vr4c8-Hr4c7-Vr3c7-Vr2c7- ==> Hr2c7 = 0
Starting_init_links_with_<Fact-227861>
Entering_level_W1_with_<Fact-228906>
whip[1]: Hr2c7{0 .} ==> Pr2c7 ≠ se, Br2c7 ≠ wne, Br1c7 ≠ ns, Pr2c8 ≠ sw
P-single: Pr2c8 = ns
V-single: Vr1c8 = 1
P-single: Pr2c7 = ns
V-single: Vr1c7 = 1
B-single: Br1c7 = ew
H-single: Hr1c7 = 0
P-single: Pr1c8 = se
P-single: Pr1c7 = sw
B-single: Br2c7 = ew
N-single: Nr2c7 = 2

LOOP[76]: Vr4c5-Hr5c4-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c6-Vr5c7-Vr6c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Hr7c4-Hr7c3-Hr7c2-Vr7c2-Hr8c2-Hr8c3-Vr8c4-Vr9c4-Hr10c3-Vr9c3-Hr9c2-Vr9c2-Hr10c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Vr10c6-Hr10c6-Vr9c7-Vr8c7-Hr8c7-Vr7c8-Hr7c8-Vr7c9-Vr8c9-Hr9c8-Vr9c8-Hr10c8-Hr10c9-Vr9c10-Vr8c10-Vr7c10-Vr6c10-Hr6c10-Vr5c11-Hr5c10-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c9-Vr1c9-Hr1c8-Vr1c8-Vr2c8-Hr3c8-Vr3c9-Vr4c9-Hr5c8-Vr4c8-Hr4c7-Vr3c7-Vr2c7-Vr1c7-Hr1c6-Vr1c6-Vr2c6-Hr3c5- ==> Vr3c5 = 0
whip[1]: Pr2c8{ns .} ==> Br1c8 ≠ ne
B-single: Br1c8 = wne
N-single: Nr1c8 = 3
whip[1]: Pr2c7{ns .} ==> Br1c6 ≠ nes, Br1c6 ≠ nw, Br1c6 ≠ ns
B-single: Br1c6 = wne
N-single: Nr1c6 = 3
P-single: Pr1c6 = se
H-single: Hr1c5 = 0
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ nw
B-single: Br1c5 = ew
P-single: Pr1c5 = sw
H-single: Hr1c4 = 1

LOOP[20]: Vr3c4-Hr4c3-Vr4c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c2-Vr2c3-Hr2c2-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c4- ==> Vr2c4 = 0
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ esw
B-single: Br1c4 = nes
V-single: Vr1c4 = 0
P-single: Pr2c4 = se
P-single: Pr1c4 = ew
whip[1]: Vr1c4{0 .} ==> Br1c3 ≠ ne
B-single: Br1c3 = n
N-single: Nr1c3 = 1
whip[1]: Pr2c4{se .} ==> Br2c3 ≠ w, Br2c4 ≠ ns
B-single: Br2c4 = nw
H-single: Hr3c4 = 0
P-single: Pr3c5 = se
P-single: Pr3c4 = ns
B-single: Br2c3 = ew
N-single: Nr2c3 = 2
whip[1]: Hr3c4{0 .} ==> Br3c4 ≠ nw
B-single: Br3c4 = ew
P-single: Pr4c5 = ns
H-single: Hr4c5 = 0
whip[1]: Pr4c5{ns .} ==> Br4c5 ≠ nw, Br3c5 ≠ ns
B-single: Br3c5 = nw
P-single: Pr4c6 = o
H-single: Hr4c6 = 0
B-single: Br4c5 = w
N-single: Nr4c5 = 1
whip[1]: Pr4c6{o .} ==> Br4c6 ≠ ns, Br3c6 ≠ s
B-single: Br3c6 = e
P-single: Pr4c7 = ne
B-single: Br4c6 = s
N-single: Nr4c6 = 1
whip[1]: Pr4c7{ne .} ==> Br3c7 ≠ s
B-single: Br3c7 = sw
N-single: Nr3c7 = 2
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
NO CONTRADICTION FOUND IN CONTEXT 7.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 8 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr2c7.
entering BRT for context 8
P-single: Pr3c7 = o
V-single: Vr3c7 = 0
B-single: Br2c6 = nw
H-single: Hr2c6 = 1
P-single: Pr2c6 = se
V-single: Vr1c6 = 0
entering level Loop with <Fact-230989>
Starting_init_links_with_<Fact-232783>
Entering_level_W1_with_<Fact-233840>
whip[1]: Vr1c6{0 .} ==> Pr1c6 ≠ se, Br1c6 ≠ wne, Br1c6 ≠ nw, Br1c5 ≠ ew
P-single: Pr1c6 = ew
H-single: Hr1c5 = 1
B-single: Br1c5 = nw
P-single: Pr1c5 = se
H-single: Hr1c4 = 0
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ nes
B-single: Br1c4 = esw
V-single: Vr1c4 = 1
P-single: Pr2c4 = ne
V-single: Vr2c4 = 0
P-single: Pr1c4 = sw
whip[1]: Vr1c4{1 .} ==> Br1c3 ≠ n
B-single: Br1c3 = ne
N-single: Nr1c3 = 2
whip[1]: Pr2c4{ne .} ==> Br2c4 ≠ nw, Br2c3 ≠ ew
B-single: Br2c3 = w
N-single: Nr2c3 = 1
P-single: Pr3c4 = se
H-single: Hr3c4 = 1
B-single: Br2c4 = ns
P-single: Pr3c5 = ew
V-single: Vr3c5 = 0

LOOP[26]: Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c2-Vr2c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr3c4-Hr3c4-Hr3c5-Vr2c6-Hr2c6- ==> Vr1c7 = 0
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ ew
B-single: Br3c4 = nw
P-single: Pr4c5 = se
H-single: Hr4c5 = 1
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ w, Br3c5 ≠ nw
B-single: Br3c5 = ns
P-single: Pr4c6 = ew
H-single: Hr4c6 = 1
B-single: Br4c5 = nw
N-single: Nr4c5 = 2

LOOP[70]: Hr1c8-Vr1c9-Hr2c9-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Hr7c2-Hr7c3-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8- ==> Vr1c8 = 0
whip[1]: Pr4c6{ew .} ==> Br3c6 ≠ e, Br4c6 ≠ s
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
P-single: Pr4c7 = ew
B-single: Br3c6 = s
whip[1]: Pr4c7{ew .} ==> Br3c7 ≠ sw
B-single: Br3c7 = s
N-single: Nr3c7 = 1
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ wne, Br1c7 ≠ ew, Pr2c8 ≠ ns, Pr1c8 ≠ se
P-single: Pr1c8 = ew
H-single: Hr1c7 = 1
P-single: Pr2c8 = sw
H-single: Hr2c7 = 1
B-single: Br1c7 = ns
P-single: Pr2c7 = ew
P-single: Pr1c7 = ew
B-single: Br1c8 = ne
N-single: Nr1c8 = 2
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Pr2c8{sw .} ==> Br2c7 ≠ e
B-single: Br2c7 = ne
N-single: Nr2c7 = 2
whip[1]: Pr2c7{ew .} ==> Br1c6 ≠ nes
B-single: Br1c6 = ns
N-single: Nr1c6 = 2
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
NO CONTRADICTION FOUND IN CONTEXT 8.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 9 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr1c7.
entering BRT for context 9
P-single: Pr1c7 = sw
H-single: Hr1c7 = 0
B-single: Br1c7 = ew
V-single: Vr1c8 = 1
H-single: Hr2c7 = 0
P-single: Pr2c8 = ns
P-single: Pr1c8 = se
entering level Loop with <Fact-242026>
Starting_init_links_with_<Fact-244300>
Entering_level_W1_with_<Fact-245341>
whip[1]: Pr1c8{se .} ==> Br1c8 ≠ ne
B-single: Br1c8 = wne
N-single: Nr1c8 = 3
whip[1]: Pr2c8{ns .} ==> Br2c7 ≠ ne, Br2c7 ≠ wne
whip[1]: Br2c7{e .} ==> Nr2c7 ≠ 3
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 2
N-single: Nr1c6 = 3
NO CONTRADICTION FOUND IN CONTEXT 9.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 10 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr1c7.
entering BRT for context 10
P-single: Pr1c7 = ew
H-single: Hr1c7 = 1
B-single: Br1c7 = ns
V-single: Vr1c8 = 0
H-single: Hr2c7 = 1
P-single: Pr2c8 = sw
P-single: Pr1c8 = ew
entering level Loop with <Fact-246257>
Starting_init_links_with_<Fact-248171>
Entering_level_W1_with_<Fact-249212>
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ wne
B-single: Br1c8 = ne
N-single: Nr1c8 = 2
whip[1]: Pr2c8{sw .} ==> Br2c7 ≠ ew, Br2c7 ≠ e
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 1
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 3
N-single: Nr1c6 = 2
NO CONTRADICTION FOUND IN CONTEXT 10.
BACK IN CONTEXT 0 with 573 csp-variables solved and 790 candidates remaining.

GENERATING CONTEXT 11 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr1c6.
entering BRT for context 11
P-single: Pr2c6 = ns
H-single: Hr2c6 = 0
P-single: Pr1c6 = se
H-single: Hr1c5 = 0
B-single: Br1c5 = ew
P-single: Pr1c5 = sw
H-single: Hr1c4 = 1
entering level Loop with <Fact-250128>

LOOP[20]: Hr2c4-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c2-Vr2c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr3c4- ==> Vr2c4 = 0
Starting_init_links_with_<Fact-251967>
Entering_level_W1_with_<Fact-253070>
whip[1]: Vr2c4{0 .} ==> Pr2c4 ≠ se, Br2c4 ≠ nw, Br2c3 ≠ ew, Pr3c4 ≠ ns
P-single: Pr3c4 = se
H-single: Hr3c4 = 1
P-single: Pr2c4 = ne
V-single: Vr1c4 = 1
B-single: Br2c3 = w
N-single: Nr2c3 = 1
B-single: Br2c4 = ns
P-single: Pr3c5 = ew
V-single: Vr3c5 = 0
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ ew
B-single: Br3c4 = nw
P-single: Pr4c5 = se
H-single: Hr4c5 = 1
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ w, Br3c5 ≠ nw
B-single: Br3c5 = ns
P-single: Pr4c6 = ew
H-single: Hr4c6 = 1
B-single: Br4c5 = nw
N-single: Nr4c5 = 2

LOOP[70]: Hr1c8-Vr1c9-Hr2c9-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Vr7c10-Vr8c10-Vr9c10-Hr10c9-Hr10c8-Vr9c8-Hr9c8-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c2-Vr9c3-Hr10c3-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Hr7c2-Hr7c3-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr4c8-Hr5c8-Vr4c9-Vr3c9-Hr3c8-Vr2c8- ==> Vr1c8 = 0
whip[1]: Pr4c6{ew .} ==> Br3c6 ≠ e, Br4c6 ≠ s
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
P-single: Pr4c7 = ew
V-single: Vr3c7 = 0
B-single: Br3c6 = s
P-single: Pr3c7 = o
V-single: Vr2c7 = 0
whip[1]: Pr4c7{ew .} ==> Br3c7 ≠ sw
B-single: Br3c7 = s
N-single: Nr3c7 = 1
whip[1]: Pr3c7{o .} ==> Br2c7 ≠ wne, Br2c7 ≠ ew, Br2c6 ≠ ew
B-single: Br2c6 = nw
whip[1]: Pr2c7{nw .} ==> Br1c6 ≠ wne, Br1c6 ≠ nwNO POSSIBLE VALUE for csp-variable 10106 IN CONTEXT 11. RETRACTING CANDIDATE 1Vr1c6 FROM CONTEXT 0.

 ASSERTING CANDIDATE 0Vr1c6 FOR CONTEXT 0.

BACK IN CONTEXT 0 with 573 csp-variables solved and 789 candidates remaining.

whip[1]: Vr1c6{0 .} ==> Pr1c6 ≠ se, Pr2c6 ≠ ns, Br1c5 ≠ ew, Br1c6 ≠ nw, Br1c6 ≠ wne
P-single: Pr2c6 = se
H-single: Hr2c6 = 1
P-single: Pr1c6 = ew
H-single: Hr1c5 = 1
B-single: Br1c5 = nw
P-single: Pr1c5 = se
H-single: Hr1c4 = 0
whip[1]: Pr2c6{se .} ==> Br2c6 ≠ ew
B-single: Br2c6 = nw
V-single: Vr2c7 = 0
P-single: Pr3c7 = o
V-single: Vr3c7 = 0
whip[1]: Vr2c7{0 .} ==> Br2c7 ≠ ew, Br2c7 ≠ wne
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 3
whip[1]: Pr3c7{o .} ==> Br3c6 ≠ e, Br3c7 ≠ sw
B-single: Br3c7 = s
N-single: Nr3c7 = 1
P-single: Pr4c7 = ew
H-single: Hr4c6 = 1
B-single: Br3c6 = s
P-single: Pr4c6 = ew
H-single: Hr4c5 = 1

LOOP[70]: Vr2c8-Hr3c8-Vr3c9-Vr4c9-Hr5c8-Vr4c8-Hr4c7-Hr4c6-Hr4c5-Vr4c5-Hr5c4-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c6-Vr5c7-Vr6c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Hr7c4-Hr7c3-Hr7c2-Vr7c2-Hr8c2-Hr8c3-Vr8c4-Vr9c4-Hr10c3-Vr9c3-Hr9c2-Vr9c2-Hr10c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Vr10c6-Hr10c6-Vr9c7-Vr8c7-Hr8c7-Vr7c8-Hr7c8-Vr7c9-Vr8c9-Hr9c8-Vr9c8-Hr10c8-Hr10c9-Vr9c10-Vr8c10-Vr7c10-Vr6c10-Hr6c10-Vr5c11-Hr5c10-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c9-Vr1c9-Hr1c8- ==> Vr1c8 = 0
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ s
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ w, Br3c5 ≠ nw
B-single: Br3c5 = ns
V-single: Vr3c5 = 0
P-single: Pr3c5 = ew
H-single: Hr3c4 = 1
P-single: Pr4c5 = se
B-single: Br4c5 = nw
N-single: Nr4c5 = 2
whip[1]: Vr3c5{0 .} ==> Br3c4 ≠ ew
B-single: Br3c4 = nw
P-single: Pr3c4 = se
V-single: Vr2c4 = 0
whip[1]: Pr3c4{se .} ==> Br2c3 ≠ ew, Br2c4 ≠ nw
B-single: Br2c4 = ns
P-single: Pr2c4 = ne
V-single: Vr1c4 = 1
B-single: Br2c3 = w
N-single: Nr2c3 = 1

LOOP[26]: Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c2-Vr2c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr3c4-Hr3c4-Hr3c5-Vr2c6-Hr2c6- ==> Vr1c7 = 0
whip[1]: Pr2c4{ne .} ==> Br1c3 ≠ n, Br1c4 ≠ nes
B-single: Br1c4 = esw
P-single: Pr1c4 = sw
B-single: Br1c3 = ne
N-single: Nr1c3 = 2
whip[1]: Vr1c7{0 .} ==> Pr1c7 ≠ sw, Pr2c7 ≠ nw, Br1c6 ≠ nes, Br1c7 ≠ ew
P-single: Pr2c7 = ew
H-single: Hr2c7 = 1
P-single: Pr1c7 = ew
H-single: Hr1c7 = 1
PUZZLE 0 SOLVED. rating-type = T&E(1, W+Loop), MOST COMPLEX RULE TRIED = W[1]


        STARTING PHASE 2 IN CONTEXT 0 with 616 csp-variables solved and 735 candidates remaining

.   .———.———.   .———.———.———.———.   .   .
  1 |       | 3 |         2     | 2   0
.   .———.   .———.   .———.———.   .———.   .
  0   3 |         2 | 2     |     2 |
.   .———.   .———.———.   .   .———.   .———.
    |     2 |                 2 |       |
.———.   .———.   .———.———.———.   .   .———.
| 3     |     2 |         2 |   |   | 3
.———.   .   .———.   .———.   .———.   .———.
    | 3 |   |     2 | 3 |         0     |
.   .———.   .———.———.   .   .   .   .———.
      2           1   2 |         1 |
.   .———.———.———.   .———.   .———.   .   .
  1 |         2 |   |     2 |   |   | 1
.   .———.———.   .———.   .———.   .   .   .
          2 |           |     2 |   |
.   .———.   .   .   .   .   .———.   .   .
    | 3 |   |     0   2 |   |     2 | 1
.———.   .———.   .   .———.   .———.———.   .
| 3   1       1     |     0           0
.———.———.———.———.———.   .   .   .   .   .

init-time = 3m 32.78s, solve-time = 2m 46.52s, total-time = 6m 19.29s
nb-facts=<Fact-254816>
Quasi-Loop max length = 96
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = T&E(1, W+Loop)
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
