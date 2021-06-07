Mellon rating = 1


(solve 
10 10 
. 3 . . 2 . . 2 . . 
3 0 . 2 0 2 . 1 2 . 
. 3 . . 3 . . 0 . . 
. . . . . . . . . . 
. . 3 . . . 1 3 0 . 
. 3 1 0 . . . 2 . . 
. . . . . . . . . . 
. . 1 . . 0 . . 2 . 
. 3 3 . 1 2 2 . 0 2 
. . 1 . . 2 . . 3 .
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . . 2 . . 2 . .
3 0 . 2 0 2 . 1 2 .
. 3 . . 3 . . 0 . .
. . . . . . . . . .
. . 3 . . . 1 3 0 .
. 3 1 0 . . . 2 . .
. . . . . . . . . .
. . 1 . . 0 . . 2 .
. 3 3 . 1 2 2 . 0 2
. . 1 . . 2 . . 3 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.58516788482666
start solution 0.598782062530518
entering BRT
w[0]-0-in-r9c9 ==> Hr10c9 = 0, Hr9c9 = 0, Vr9c10 = 0, Vr9c9 = 0
w[0]-0-in-r8c6 ==> Hr9c6 = 0, Hr8c6 = 0, Vr8c7 = 0, Vr8c6 = 0
w[0]-0-in-r6c4 ==> Hr7c4 = 0, Hr6c4 = 0, Vr6c5 = 0, Vr6c4 = 0
w[0]-0-in-r5c9 ==> Hr6c9 = 0, Hr5c9 = 0, Vr5c10 = 0, Vr5c9 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[0]-0-in-r2c5 ==> Hr3c5 = 0, Hr2c5 = 0, Vr2c6 = 0, Vr2c5 = 0
w[0]-0-in-r2c2 ==> Hr3c2 = 0, Hr2c2 = 0, Vr2c3 = 0, Vr2c2 = 0
w[0]-adjacent-3-0-in-c9{r10 r9} ==> Vr10c10 = 1, Vr10c9 = 1, Hr11c9 = 1, Hr10c10 = 1, Hr10c8 = 1, Hr11c10 = 0, Hr11c8 = 0
w0-adjacent-3-0-in-r5{c8 c9} ==> Vr6c9 = 1, Vr4c9 = 1, Vr5c8 = 1, Hr6c8 = 1, Hr5c8 = 1, Vr6c8 = 0, Vr4c8 = 0, Hr6c7 = 0, Hr5c7 = 0
w[0]-adjacent-3-0-in-c5{r3 r2} ==> Vr3c6 = 1, Vr3c5 = 1, Hr4c5 = 1, Hr3c6 = 1, Hr3c4 = 1, Vr4c6 = 0, Vr4c5 = 0, Hr4c6 = 0, Hr4c4 = 0
w[0]-adjacent-3-0-in-c2{r3 r2} ==> Vr3c3 = 1, Vr3c2 = 1, Hr4c2 = 1, Hr3c3 = 1, Hr3c1 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr4c3 = 0, Hr4c1 = 0
w0-adjacent-3-0-in-r2{c1 c2} ==> Vr1c2 = 1, Vr2c1 = 1, Hr2c1 = 1, Vr3c1 = 0, Vr1c1 = 0
w[0]-adjacent-3-0-in-c2{r1 r2} ==> Vr1c3 = 1, Hr2c3 = 1, Hr1c2 = 1, Hr1c3 = 0, Hr1c1 = 0
w[1]-diagonal-3-0-in-{r5c3...r6c4} ==> Vr5c4 = 1, Hr6c3 = 1
w[1]-diagonal-3s-in-{r5c3...r6c2} ==> Vr6c2 = 1, Hr7c2 = 1, Hr5c3 = 1, Vr4c4 = 0, Vr7c2 = 0, Hr7c1 = 0, Hr5c4 = 0
w[1]-3-in-r6c2-hit-by-horiz-line-at-ne ==> Vr5c3 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c3 c2} ==> Hr7c3 = 0, Hr6c2 = 1
w[1]-3-in-r5c3-hit-by-horiz-line-at-sw ==> Vr6c3 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r5{c7 c8} ==> Vr5c7 = 0
w[1]-3-in-r10c9-closed-sw-corner ==> Pr10c10 ≠ sw, Pr10c10 ≠ o
w[1]-3-in-r10c9-closed-se-corner ==> Pr10c9 ≠ se, Pr10c9 ≠ nw, Pr10c9 ≠ o
w[1]-3-in-r6c2-closed-sw-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r6c2-closed-nw-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ o
w[1]-3-in-r5c8-closed-sw-corner ==> Pr5c9 ≠ sw, Pr5c9 ≠ ne, Pr5c9 ≠ o
w[1]-3-in-r5c8-closed-nw-corner ==> Pr6c9 ≠ se, Pr6c9 ≠ nw
w[1]-3-in-r5c3-closed-se-corner ==> Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ o
w[1]-3-in-r3c5-closed-sw-corner ==> Pr3c6 ≠ sw, Pr3c6 ≠ o
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ o
w[1]-3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
w[1]-3-in-r3c2-closed-se-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-3-in-r2c1-closed-sw-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
adjacent-3s-in-r9{c2 c3} ==> Vr9c4 = 1, Vr9c3 = 1, Vr9c2 = 1, Vr10c3 = 0, Vr8c3 = 0
entering level Loop with <Fact-93620>

LOOP[12]: Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3- ==> Vr2c4 = 0
w[1]-diagonal-3-2-in-{r3c5...r2c4}-non-closed-nw-corner ==> Hr2c4 = 1
entering level Col with <Fact-93825>
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
no-vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
vertical-line-r3{c2 c3} ==> Ir3c3 = out
horizontal-line-{r1 r2}c4 ==> Ir1c4 = out
horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-vertical-line-r6{c2 c3} ==> Ir6c2 = out
vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
no-vertical-line-r6{c4 c5} ==> Ir6c5 = out
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = out
no-horizontal-line-{r10 r11}c10 ==> Ir10c10 = out
vertical-line-r10{c9 c10} ==> Ir10c9 = in
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
horizontal-line-{r9 r10}c8 ==> Ir10c8 = out
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
same-colour-in-r7{c3 c4} ==> Vr7c4 = 0
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-r1{c4 c5} ==> Hr1c5 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
same-colour-in-r3{c3 c4} ==> Vr3c4 = 0
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
Starting_init_links_with_<Fact-94070>
1148 candidates, 8987 csp-links and 36295 links. Density = 5.51%
starting non trivial part of solution
Entering_level_W1_with_<Fact-184639>
whip[1]: Vr1c4{0 .} ==> Br1c4 ≠ wne, Pr1c4 ≠ se, Pr1c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Br1c3 ≠ e, Br1c3 ≠ ne, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ esw, Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c4 ≠ nw, Br2c4 ≠ se, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ w, Br2c3 ≠ o, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w
whip[1]: Br2c3{nes .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ sw, Nr2c3 ≠ 0
whip[1]: Pr2c3{ew .} ==> Vr2c3 ≠ 1, Br1c2 ≠ esw, Br1c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ swn, Br2c3 ≠ wne
whip[1]: Br2c3{nes .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ nw
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br2c3 ≠ n, Br2c3 ≠ ne, Br3c3 ≠ o, Br3c3 ≠ e, Br3c3 ≠ s, Br3c3 ≠ w
whip[1]: Br3c3{nes .} ==> Pr3c4 ≠ ns, Pr3c4 ≠ se, Nr3c3 ≠ 0
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ sw, Br3c3 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br2c4 ≠ ne, Br3c3 ≠ ne, Br3c4 ≠ w
whip[1]: Br3c4{nes .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ ns, Pr4c4 ≠ nw
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 1
whip[1]: Br3c2{swn .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ ew, Pr4c2 ≠ o, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Pr4c3 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ se
P-single: Pr4c2 = ne
whip[1]: Pr4c2{ne .} ==> Br4c2 ≠ o, Br4c1 ≠ n, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes, Br4c1 ≠ e, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ e, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne
whip[1]: Br4c2{nes .} ==> Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ nw, Nr4c2 ≠ 0
whip[1]: Br4c1{sw .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ se, Nr4c1 ≠ 3
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ swn, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 3
whip[1]: Pr3c2{sw .} ==> Hr3c2 ≠ 1, Br2c1 ≠ esw, Br2c1 ≠ nes, Br3c2 ≠ swn
B-single: Br3c2 = esw
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ sw, Pr4c3 ≠ ew, Pr3c3 ≠ ew
P-single: Pr3c3 = se
P-single: Pr4c3 = nw
whip[1]: Pr3c3{se .} ==> Br3c3 ≠ n, Br3c3 ≠ ns
B-single: Br3c3 = nw
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 1, Pr4c4 ≠ sw, Pr4c4 ≠ ew
N-single: Nr3c3 = 2
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nes, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br4c3 ≠ n, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Pr4c3{nw .} ==> Br4c2 ≠ ne, Br4c2 ≠ nes, Br4c3 ≠ w, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw
whip[1]: Br4c3{se .} ==> Pr5c3 ≠ ne, Pr5c3 ≠ ns, Nr4c3 ≠ 3
whip[1]: Pr5c3{sw .} ==> Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br4c2 ≠ n, Br5c2 ≠ o, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ w
B-single: Br4c2 = ns
whip[1]: Br4c2{ns .} ==> Nr4c2 ≠ 3, Nr4c2 ≠ 1, Pr5c2 ≠ o, Pr5c2 ≠ sw
N-single: Nr4c2 = 2
whip[1]: Pr5c2{ew .} ==> Br5c1 ≠ sw, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ne
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Br5c3{nes .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ne, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr6c3 ≠ ns, Pr6c3 ≠ nw, Pr6c4 ≠ o, Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c4 ≠ sw
P-single: Pr6c4 = nw
w[1]-1-in-r6c3-asymmetric-ne-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ ns
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ s, Br6c3 ≠ e, Br5c4 ≠ s, Br5c4 ≠ e, Br5c4 ≠ n, Br5c4 ≠ o, Vr6c4 ≠ 1, Hr6c4 ≠ 1, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ nes, Br6c3 ≠ w
B-single: Br6c3 = n
whip[1]: Br6c3{n .} ==> Pr6c3 ≠ se, Pr7c3 ≠ ne, Pr7c4 ≠ ne, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr7c4 ≠ ew, Pr7c4 ≠ sw
P-single: Pr7c3 = sw
P-single: Pr6c3 = ew
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ ns, Br7c3 ≠ ne, Br7c3 ≠ s, Br7c3 ≠ e, Br7c3 ≠ n, Br7c3 ≠ o, Br7c2 ≠ ns, Br7c2 ≠ w, Br7c2 ≠ s, Br7c2 ≠ e, Br7c2 ≠ n, Br7c2 ≠ o, Br6c2 ≠ esw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes
B-single: Br6c2 = swn
whip[1]: Br6c2{swn .} ==> Pr7c2 ≠ sw, Pr7c2 ≠ ew, Pr7c2 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ ns, Pr7c2 ≠ o, Pr6c2 ≠ sw, Pr6c2 ≠ ew, Pr6c2 ≠ nw, Pr6c2 ≠ ns, Pr6c2 ≠ ne, Pr6c2 ≠ o
P-single: Pr6c2 = se
P-single: Pr7c2 = ne
whip[1]: Pr6c2{se .} ==> Br6c1 ≠ w, Br6c1 ≠ s, Br6c1 ≠ n, Br6c1 ≠ o, Br5c2 ≠ n, Br5c1 ≠ e, Br5c1 ≠ ns, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ esw, Br5c1 ≠ swn, Br5c2 ≠ ne, Br5c2 ≠ nw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ sw, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ nes
whip[1]: Br6c1{esw .} ==> Pr6c1 ≠ ne, Pr6c1 ≠ se, Nr6c1 ≠ 0
whip[1]: Br5c2{nes .} ==> Pr5c2 ≠ se, Nr5c2 ≠ 1
P-single: Pr5c2 = ew
whip[1]: Pr5c2{ew .} ==> Br4c1 ≠ w, Br4c1 ≠ o
whip[1]: Br4c1{sw .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ns, Nr4c1 ≠ 0
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 3
whip[1]: Pr7c2{ne .} ==> Br7c1 ≠ n, Br6c1 ≠ se, Br6c1 ≠ esw, Br7c1 ≠ e, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ ew, Br7c1 ≠ esw, Br7c1 ≠ swn, Br7c1 ≠ wne, Br7c1 ≠ nes, Br7c2 ≠ wne
whip[1]: Br7c2{nes .} ==> Pr8c2 ≠ ne, Pr8c2 ≠ ns, Pr8c2 ≠ nw, Pr8c3 ≠ o, Pr8c3 ≠ se, Pr8c3 ≠ ew, Pr8c3 ≠ sw, Nr7c2 ≠ 0, Nr7c2 ≠ 1
whip[1]: Pr8c3{nw .} ==> Br8c2 ≠ ne, Br8c2 ≠ wne, Br8c2 ≠ nes
whip[1]: Br7c1{sw .} ==> Pr7c1 ≠ ne, Pr7c1 ≠ se, Nr7c1 ≠ 3
whip[1]: Br6c1{ew .} ==> Nr6c1 ≠ 3
whip[1]: Br7c3{esw .} ==> Nr7c3 ≠ 0
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ nes, Br5c3 ≠ esw
B-single: Br5c3 = nes
B-single: Br5c2 = ns
whip[1]: Br5c3{nes .} ==> Pr5c4 ≠ se, Pr5c4 ≠ ns, Pr5c3 ≠ sw
P-single: Pr5c3 = ew
P-single: Pr5c4 = sw
whip[1]: Pr5c3{ew .} ==> Br4c3 ≠ e, Br4c3 ≠ o
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s, Br4c3 ≠ se, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ swn, Br4c4 ≠ wne, Br5c4 ≠ nw, Br5c4 ≠ wne
B-single: Br4c3 = s
whip[1]: Br4c3{s .} ==> Nr4c3 ≠ 2, Pr4c4 ≠ se
N-single: Nr4c3 = 1
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ s, Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ nes
whip[1]: Br3c4{ne .} ==> Pr4c5 ≠ nw, Nr3c4 ≠ 3, Pr4c5 ≠ ew, Pr4c5 ≠ sw
whip[1]: Br5c4{ew .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr5c5 ≠ sw, Pr6c5 ≠ nw, Pr6c5 ≠ ew, Pr6c5 ≠ sw, Nr5c4 ≠ 0, Nr5c4 ≠ 3
whip[1]: Br4c4{e .} ==> Nr4c4 ≠ 2, Nr4c4 ≠ 3
whip[1]: Br5c2{ns .} ==> Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Pr7c4{se .} ==> Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c4 ≠ n, Br7c4 ≠ w
whip[1]: Br2c1{wne .} ==> Pr2c1 ≠ o, Pr2c1 ≠ ne, Pr2c1 ≠ ns, Pr3c1 ≠ o, Pr3c1 ≠ se, Pr2c2 ≠ ns, Pr2c2 ≠ se
P-single: Pr2c1 = se
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ swn, Br1c1 ≠ wne
whip[1]: Br1c1{se .} ==> Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Nr1c1 ≠ 0, Nr1c1 ≠ 3
P-single: Pr1c1 = o
whip[1]: Pr2c2{ew .} ==> Vr2c2 ≠ 1, Br1c2 ≠ swn, Br2c1 ≠ wne
B-single: Br2c1 = swn
B-single: Br1c2 = wne
whip[1]: Br2c1{swn .} ==> Pr3c2 ≠ ns, Pr3c1 ≠ ns
P-single: Pr3c1 = ne
P-single: Pr3c2 = sw
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ e, Br3c1 ≠ ew, Br3c1 ≠ wne
B-single: Br3c1 = ne
whip[1]: Br3c1{ne .} ==> Nr3c1 ≠ 3, Nr3c1 ≠ 1, Pr4c1 ≠ ns
N-single: Nr3c1 = 2
P-single: Pr4c1 = o
whip[1]: Pr4c1{o .} ==> Br4c1 ≠ sw
B-single: Br4c1 = s
whip[1]: Br4c1{s .} ==> Nr4c1 ≠ 2, Pr5c1 ≠ ne
N-single: Nr4c1 = 1
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ n
B-single: Br5c1 = nw
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 1, Pr6c1 ≠ o
N-single: Nr5c1 = 2
diagonal-of-five-2s-in-nw-corner ==> Hr1c6 = 1
P-single: Pr6c1 = ns
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
same-colour-in-{r1 r2}c6 ==> Hr2c6 = 0
w[1]-2-in-r2c6-open-nw-corner ==> Vr2c7 = 1, Hr3c7 = 0, Vr3c7 = 0

LOOP[22]: Vr2c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Hr2c4-Vr1c5-Hr1c5-Hr1c6- ==> Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = out
no-vertical-line-r3{c7 c8} ==> Ir3c8 = out
no-vertical-line-r3{c8 c9} ==> Ir3c9 = out
no-horizontal-line-{r2 r3}c8 ==> Ir2c8 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = out
no-vertical-line-r4{c7 c8} ==> Ir4c7 = out
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = out
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = out
no-vertical-line-r6{c7 c8} ==> Ir6c8 = out
vertical-line-r6{c8 c9} ==> Ir6c9 = in
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-{r4 r5}c6 ==> Hr5c6 = 0
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1

LOOP[24]: Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7- ==> Vr1c8 = 0
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1

LOOP[26]: Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8- ==> Vr1c9 = 0
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
whip[1]: Hr1c6{1 .} ==> Br1c6 ≠ o, Br0c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se, Br1c6 ≠ e, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw
B-single: Br0c6 = s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ e, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ e
B-single: Br6c1 = ew
whip[1]: Br6c1{ew .} ==> Nr6c1 ≠ 1, Pr7c1 ≠ o
N-single: Nr6c1 = 2
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ o, Br7c1 ≠ s
whip[1]: Br7c1{sw .} ==> Pr8c1 ≠ o, Pr8c1 ≠ se, Nr7c1 ≠ 0
whip[1]: Pr8c1{ns .} ==> Br8c1 ≠ s, Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ swn, Br8c1 ≠ wne, Br8c1 ≠ o, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Hr2c6{0 .} ==> Pr2c6 ≠ ne, Pr2c6 ≠ ew, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Br1c6 ≠ ns, Br1c6 ≠ swn, Br1c6 ≠ nes, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ nw
whip[1]: Pr2c7{se .} ==> Br1c7 ≠ ne, Br1c7 ≠ sw, Br1c7 ≠ esw, Br2c6 ≠ sw, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ se, Br2c7 ≠ nes, Br1c7 ≠ n, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ e, Br2c7 ≠ s
whip[1]: Br2c7{wne .} ==> Pr3c7 ≠ ew, Pr3c7 ≠ sw, Nr2c7 ≠ 0
whip[1]: Pr3c7{nw .} ==> Br3c6 ≠ ne, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ nw, Br3c7 ≠ swn, Br3c7 ≠ wne
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ se
whip[1]: Hr3c7{0 .} ==> Pr3c7 ≠ ne, Pr3c8 ≠ nw, Pr3c8 ≠ ew, Pr3c8 ≠ sw, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br3c7 ≠ n, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nes
whip[1]: Pr3c7{nw .} ==> Br3c6 ≠ w, Br3c6 ≠ sw, Br3c6 ≠ o, Br3c6 ≠ s
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 0
whip[1]: Vr3c7{0 .} ==> Pr3c7 ≠ ns, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ nw, Br3c6 ≠ e, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c7 ≠ w, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw
P-single: Pr1c5 = se
P-single: Pr2c6 = o
P-single: Pr3c7 = nw
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ s, Br1c4 ≠ n, Br1c4 ≠ o, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nes, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ ew, Br1c5 ≠ sw
B-single: Br1c5 = nw
whip[1]: Br1c5{nw .} ==> Pr2c5 ≠ ew, Pr2c5 ≠ se, Pr1c6 ≠ se, Hr2c5 ≠ 1
P-single: Pr1c6 = ew
whip[1]: Pr1c6{ew .} ==> Br1c6 ≠ nw, Br1c6 ≠ wne
whip[1]: Br1c6{ne .} ==> Nr1c6 ≠ 3
whip[1]: Br1c4{se .} ==> Pr1c4 ≠ ew, Nr1c4 ≠ 0, Nr1c4 ≠ 3
P-single: Pr1c4 = o
whip[1]: Pr1c4{o .} ==> Br1c3 ≠ ns, Br1c3 ≠ swn
whip[1]: Br1c3{sw .} ==> Pr1c3 ≠ se, Pr1c3 ≠ ew, Nr1c3 ≠ 0, Nr1c3 ≠ 3
whip[1]: Pr2c6{o .} ==> Vr2c6 ≠ 1, Br2c6 ≠ ew
B-single: Br2c6 = se
whip[1]: Br2c6{se .} ==> Pr3c6 ≠ nw, Pr3c6 ≠ ns
whip[1]: Pr3c6{ew .} ==> Br3c5 ≠ wne, Br3c5 ≠ nes
whip[1]: Br3c5{swn .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ew, Pr4c5 ≠ o, Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr4c6 ≠ o, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ se
P-single: Pr4c5 = ne
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ o, Br3c4 ≠ n, Br3c4 ≠ o, Br4c4 ≠ e, Br4c5 ≠ e, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne
B-single: Br4c4 = o
whip[1]: Br4c4{o .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ ns, Nr4c4 ≠ 1
N-single: Nr4c4 = 0
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ nes, Br5c5 ≠ n, Br5c5 ≠ w
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Br3c4{ne .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ swn, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Br3c6{nw .} ==> Nr3c6 ≠ 3
whip[1]: Pr3c5{sw .} ==> Hr3c5 ≠ 1, Br3c5 ≠ swn
B-single: Br3c5 = esw
whip[1]: Br3c5{esw .} ==> Pr4c6 ≠ sw, Pr4c6 ≠ ew, Pr3c6 ≠ ew
P-single: Pr3c6 = se
P-single: Pr4c6 = nw
whip[1]: Pr3c6{se .} ==> Br3c6 ≠ n, Br3c6 ≠ ns
B-single: Br3c6 = nw
whip[1]: Br3c6{nw .} ==> Nr3c6 ≠ 1, Pr4c7 ≠ sw, Pr4c7 ≠ ew
N-single: Nr3c6 = 2
whip[1]: Pr4c7{se .} ==> Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nes, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ nes, Br4c6 ≠ n, Br4c7 ≠ n, Br4c7 ≠ w
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ ne, Br4c5 ≠ nes, Br4c6 ≠ w, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw
whip[1]: Br4c6{se .} ==> Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Nr4c6 ≠ 3
whip[1]: Br4c5{ns .} ==> Nr4c5 ≠ 3
whip[1]: Br3c7{se .} ==> Nr3c7 ≠ 3
whip[1]: Vr1c7{0 .} ==> Pr1c7 ≠ sw, Pr2c7 ≠ ns, Br1c6 ≠ ne, Br1c7 ≠ w, Br1c7 ≠ ew
P-single: Pr2c7 = se
P-single: Pr1c7 = ew
B-single: Br1c6 = n
whip[1]: Pr2c7{se .} ==> Br2c7 ≠ w, Br2c7 ≠ ew
whip[1]: Br2c7{wne .} ==> Pr2c8 ≠ ns, Pr2c8 ≠ se, Nr2c7 ≠ 1
whip[1]: Pr2c8{ew .} ==> Br1c8 ≠ sw, Br2c7 ≠ wne, Br1c8 ≠ ne, Br2c8 ≠ w
B-single: Br2c7 = nw
whip[1]: Br2c7{nw .} ==> Nr2c7 ≠ 3, Pr3c8 ≠ ns, Pr3c8 ≠ ne
N-single: Nr2c7 = 2
whip[1]: Br2c8{s .} ==> Pr2c9 ≠ sw, Pr3c9 ≠ nw
whip[1]: Pr2c9{ew .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br2c9 ≠ nw, Br2c9 ≠ se, Br1c9 ≠ o, Br1c9 ≠ n, Br1c9 ≠ e, Br1c9 ≠ ne
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Br1c6{n .} ==> Nr1c6 ≠ 2
N-single: Nr1c6 = 1
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 1
whip[1]: Hr4c9{1 .} ==> Br4c9 ≠ o, Br3c9 ≠ o, Pr4c9 ≠ o, Pr4c9 ≠ ns, Pr4c9 ≠ nw, Pr4c9 ≠ sw, Pr4c10 ≠ o, Pr4c10 ≠ ne, Pr4c10 ≠ ns, Pr4c10 ≠ se, Br3c9 ≠ n, Br3c9 ≠ e, Br3c9 ≠ w, Br3c9 ≠ ne, Br3c9 ≠ nw, Br3c9 ≠ ew, Br3c9 ≠ wne, Br4c9 ≠ e, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ sw, Br4c9 ≠ esw
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Pr4c10{sw .} ==> Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br4c10 ≠ nw, Br4c10 ≠ swn, Br4c10 ≠ wne
whip[1]: Pr4c9{ew .} ==> Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c8 ≠ ne
whip[1]: Vr5c11{1 .} ==> Br5c10 ≠ o, Br5c11 ≠ o, Pr5c11 ≠ o, Pr5c11 ≠ nw, Pr6c11 ≠ o, Pr6c11 ≠ sw, Br5c10 ≠ n, Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ ns, Br5c10 ≠ nw, Br5c10 ≠ sw, Br5c10 ≠ swn
B-single: Br5c11 = w
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ w, Br6c10 ≠ ne, Br6c10 ≠ sw, Br6c10 ≠ wne, Br6c10 ≠ nes, Br6c10 ≠ o, Br6c10 ≠ s
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 0
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ se, Br4c10 ≠ esw, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ n, Br4c10 ≠ w
whip[1]: Br4c10{sw .} ==> Nr4c10 ≠ 0, Nr4c10 ≠ 3
whip[1]: Hr5c6{0 .} ==> Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c7 ≠ nw, Pr5c7 ≠ ew, Pr5c7 ≠ sw, Br4c6 ≠ s, Br4c6 ≠ se, Br5c6 ≠ n, Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ nw, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br4c6{e .} ==> Nr4c6 ≠ 2
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ e
whip[1]: Br5c5{wne .} ==> Pr6c5 ≠ ne, Pr6c6 ≠ nw, Nr5c5 ≠ 2
whip[1]: Pr6c5{se .} ==> Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ nes, Br6c5 ≠ n
whip[1]: Vr4c7{0 .} ==> Pr4c7 ≠ se, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Br4c6 ≠ e, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne
P-single: Pr4c7 = o
B-single: Br4c6 = o
w[1]-1-in-r5c7-symmetric-nw-corner ==> Pr6c8 ≠ nw, Pr6c8 ≠ o
whip[1]: Pr4c7{o .} ==> Br3c7 ≠ s, Br3c7 ≠ se
whip[1]: Br3c7{e .} ==> Nr3c7 ≠ 2, Pr4c8 ≠ nw, Pr4c8 ≠ ew, Pr4c8 ≠ sw
whip[1]: Br4c6{o .} ==> Nr4c6 ≠ 1
N-single: Nr4c6 = 0
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ nw, Br6c8 ≠ se, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ o, Br7c9 ≠ e, Br7c9 ≠ s
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{s .} ==> Pr6c7 ≠ ne, Pr6c7 ≠ ns, Pr5c7 ≠ se, Pr5c8 ≠ nw, Pr5c8 ≠ ew, Pr5c8 ≠ sw, Pr6c7 ≠ nw
P-single: Pr5c7 = o
whip[1]: Pr5c7{o .} ==> Br4c7 ≠ s, Br4c7 ≠ se, Br5c6 ≠ e, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ esw
whip[1]: Br5c6{sw .} ==> Nr5c6 ≠ 3
whip[1]: Br4c7{e .} ==> Nr4c7 ≠ 2, Nr4c7 ≠ 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Vr1c8{0 .} ==> Pr1c8 ≠ sw, Pr2c8 ≠ nw, Br1c7 ≠ nes, Br1c8 ≠ ew
P-single: Pr2c8 = ew
P-single: Pr1c8 = ew
B-single: Br1c8 = ns
B-single: Br1c7 = ns
w[1]-1-in-r2c8-asymmetric-nw-corner ==> Pr3c9 ≠ sw, Pr3c9 ≠ ew, Pr3c9 ≠ ns, Pr3c9 ≠ ne
whip[1]: Pr2c8{ew .} ==> Br2c8 ≠ s, Br2c8 ≠ e
B-single: Br2c8 = n
whip[1]: Br2c8{n .} ==> Vr2c9 ≠ 1, Hr3c8 ≠ 1, Pr2c9 ≠ ne, Pr2c9 ≠ ns, Pr3c8 ≠ se
V-single: Vr2c9 = 0
P-single: Pr3c8 = o
P-single: Pr2c9 = ew
no-vertical-line-r2{c8 c9} ==> Ir2c9 = out
same-colour-in-{r2 r3}c9 ==> Hr3c9 = 0
w[1]-2-in-r2c9-open-sw-corner ==> Hr2c9 = 1, Vr2c10 = 1, Hr2c10 = 0, Vr1c10 = 0
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r1 r2}c10 ==> Ir2c10 = in
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1

LOOP[32]: Vr2c10-Hr2c9-Hr2c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11- ==> Hr3c10 = 0
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
whip[1]: Vr2c9{0 .} ==> Br2c9 ≠ ew, Br2c9 ≠ sw
whip[1]: Br2c9{ns .} ==> Pr2c10 ≠ ns, Pr2c10 ≠ se
whip[1]: Pr2c10{sw .} ==> Br1c9 ≠ nw, Br1c9 ≠ ew, Br1c9 ≠ wne, Br1c10 ≠ sw, Br2c10 ≠ nw, Br2c10 ≠ swn, Br2c10 ≠ wne, Br1c9 ≠ w
whip[1]: Pr3c8{o .} ==> Vr3c8 ≠ 1, Br3c7 ≠ e
B-single: Br3c7 = o
whip[1]: Br3c7{o .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ ns, Nr3c7 ≠ 1
N-single: Nr3c7 = 0
whip[1]: Pr4c8{se .} ==> Br4c8 ≠ ns, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Pr2c9{ew .} ==> Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ swn
whip[1]: Br1c9{nes .} ==> Pr1c9 ≠ se
P-single: Pr1c9 = ew
whip[1]: Pr1c9{ew .} ==> Br1c9 ≠ s, Br1c9 ≠ se
whip[1]: Br1c9{nes .} ==> Pr1c10 ≠ o, Pr1c10 ≠ se, Nr1c9 ≠ 1
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ wne, Br1c10 ≠ o, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Pr2c11 ≠ sw, Nr1c10 ≠ 0
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ ne, Br2c10 ≠ nes
whip[1]: Hr3c9{0 .} ==> Pr3c9 ≠ se, Pr3c10 ≠ ew, Pr3c10 ≠ sw, Br2c9 ≠ ns, Br3c9 ≠ ns, Br3c9 ≠ swn, Br3c9 ≠ nes
P-single: Pr2c10 = sw
P-single: Pr3c9 = o
B-single: Br2c9 = ne
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ s, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br1c10 ≠ w, Br1c9 ≠ nes, Br1c10 ≠ nes, Br2c10 ≠ se
B-single: Br1c10 = ne
B-single: Br1c9 = ns
whip[1]: Br1c10{ne .} ==> Nr1c10 ≠ 3, Nr1c10 ≠ 1, Pr2c11 ≠ nw, Pr2c11 ≠ o, Pr1c11 ≠ o, Pr1c10 ≠ sw
N-single: Nr1c10 = 2
P-single: Pr1c10 = ew
P-single: Pr1c11 = sw
P-single: Pr2c11 = ns
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ w, Br2c10 ≠ sw
whip[1]: Br2c10{esw .} ==> Pr3c11 ≠ o, Pr3c11 ≠ sw, Nr2c10 ≠ 0, Nr2c10 ≠ 1
whip[1]: Pr3c11{nw .} ==> Br3c10 ≠ w, Br3c10 ≠ ne, Br3c10 ≠ wne, Br3c10 ≠ nes, Br3c10 ≠ o, Br3c10 ≠ s
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 0, Nr3c10 ≠ 3
whip[1]: Br1c9{ns .} ==> Nr1c9 ≠ 3
N-single: Nr1c9 = 2
whip[1]: Pr3c9{o .} ==> Vr3c9 ≠ 1, Br3c9 ≠ sw, Br3c9 ≠ esw
whip[1]: Br3c9{se .} ==> Pr4c9 ≠ ne, Nr3c9 ≠ 3
whip[1]: Pr4c9{ew .} ==> Br4c8 ≠ o, Br4c8 ≠ s
whip[1]: Br4c8{swn .} ==> Nr4c8 ≠ 0
whip[1]: Pr3c10{ns .} ==> Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ e
whip[1]: Br3c10{ew .} ==> Pr4c11 ≠ nw
whip[1]: Pr4c11{sw .} ==> Br4c10 ≠ ns
whip[1]: Vr2c11{1 .} ==> Br2c11 ≠ o
B-single: Br2c11 = w
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Hr3c10{0 .} ==> Pr3c11 ≠ nw, Pr3c10 ≠ ne, Br2c10 ≠ esw, Br3c10 ≠ n, Br3c10 ≠ ns
P-single: Pr3c10 = ns
P-single: Pr3c11 = ns
B-single: Br3c10 = ew
B-single: Br2c10 = ew
whip[1]: Pr3c10{ns .} ==> Br3c9 ≠ s
B-single: Br3c9 = se
whip[1]: Br3c9{se .} ==> Nr3c9 ≠ 1, Pr4c10 ≠ sw, Pr4c10 ≠ ew
N-single: Nr3c9 = 2
P-single: Pr4c10 = nw
whip[1]: Pr4c10{nw .} ==> Br4c9 ≠ ne, Br4c9 ≠ wne, Br4c9 ≠ nes, Br4c10 ≠ ne, Br4c10 ≠ ew, Br4c10 ≠ sw
whip[1]: Br4c10{s .} ==> Pr5c10 ≠ ne, Pr5c10 ≠ ns, Nr4c10 ≠ 2, Pr4c11 ≠ sw, Pr5c10 ≠ nw
N-single: Nr4c10 = 1
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 1, Pr4c11 ≠ o
N-single: Nr3c10 = 2
P-single: Pr4c11 = ns
w[1]-1-in-r4c10-asymmetric-ne-corner ==> Pr5c10 ≠ ew, Pr5c10 ≠ se
whip[1]: Pr4c11{ns .} ==> Br4c10 ≠ s
B-single: Br4c10 = e
whip[1]: Br4c10{e .} ==> Pr5c11 ≠ sw
P-single: Pr5c11 = ns
whip[1]: Pr5c11{ns .} ==> Br5c10 ≠ ne, Br5c10 ≠ wne, Br5c10 ≠ nes
whip[1]: Br2c10{ew .} ==> Nr2c10 ≠ 3
N-single: Nr2c10 = 2
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o
B-single: Br4c11 = w
whip[1]: Br1c7{ns .} ==> Nr1c7 ≠ 3
N-single: Nr1c7 = 2
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o
B-single: Br0c9 = s
whip[1]: Br1c2{wne .} ==> Pr2c3 ≠ ew, Pr2c2 ≠ ew, Pr1c3 ≠ o, Pr1c2 ≠ o, Hr2c2 ≠ 1
P-single: Pr1c2 = se
P-single: Pr1c3 = sw
P-single: Pr2c2 = nw
P-single: Pr2c3 = ne
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ s
B-single: Br1c1 = se
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 1
N-single: Nr1c1 = 2
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ s
B-single: Br1c3 = sw
whip[1]: Br1c3{sw .} ==> Nr1c3 ≠ 1
N-single: Nr1c3 = 2
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Vr7c4{0 .} ==> Br7c4 ≠ wne, Pr7c4 ≠ se, Pr8c4 ≠ ne, Pr8c4 ≠ ns, Pr8c4 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ esw, Br7c4 ≠ nw, Br7c4 ≠ swn
P-single: Pr7c4 = o
whip[1]: Pr7c4{o .} ==> Hr7c4 ≠ 1
whip[1]: Br7c4{se .} ==> Pr7c5 ≠ nw, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Nr7c4 ≠ 3
whip[1]: Br7c3{sw .} ==> Nr7c3 ≠ 3
whip[1]: Vr10c11{0 .} ==> Br10c10 ≠ nes, Br10c11 ≠ w, Pr11c11 ≠ nw, Pr10c11 ≠ ns, Pr10c11 ≠ sw, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr8c9 = se
P-single: Pr9c10 = o
P-single: Pr10c11 = nw
P-single: Pr11c11 = o
B-single: Br10c11 = o
whip[1]: Pr8c9{se .} ==> Br8c8 ≠ w, Br8c8 ≠ s, Br8c8 ≠ n, Br8c8 ≠ o, Br7c9 ≠ w, Br7c9 ≠ n, Br7c8 ≠ s, Br7c8 ≠ e, Vr8c9 ≠ 0, Vr7c9 ≠ 1, Hr8c9 ≠ 0, Hr8c8 ≠ 1, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ ne, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ sw, Br8c8 ≠ swn, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw
H-single: Hr8c8 = 0
H-single: Hr8c9 = 1
V-single: Vr7c9 = 0
V-single: Vr8c9 = 1
B-single: Br8c9 = nw
vertical-line-r8{c8 c9} ==> Ir8c8 = out
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
no-vertical-line-r7{c8 c9} ==> Ir7c9 = out
different-colours-in-{r6 r7}c9 ==> Hr7c9 = 1
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1
whip[1]: Hr8c8{0 .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ se, Pr8c8 ≠ ew
whip[1]: Hr8c9{1 .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ se
whip[1]: Pr8c10{ew .} ==> Vr8c10 ≠ 1, Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c10 ≠ swn, Br8c10 ≠ nw, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ e, Br7c10 ≠ ne, Br8c10 ≠ w
V-single: Vr8c10 = 0
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
same-colour-in-{r8 r9}c10 ==> Hr9c10 = 0
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
whip[1]: Hr9c10{0 .} ==> Pr9c11 ≠ nw, Br8c10 ≠ s, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ nes, Br9c10 ≠ ne, Br9c10 ≠ ns, Br9c10 ≠ nw
P-single: Pr9c11 = ns
whip[1]: Pr9c11{ns .} ==> Br8c10 ≠ n, Br8c10 ≠ o, Br9c10 ≠ sw
whip[1]: Br8c10{ne .} ==> Pr8c11 ≠ o, Pr8c11 ≠ nw, Nr8c10 ≠ 0, Nr8c10 ≠ 3
whip[1]: Pr8c11{sw .} ==> Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ nes, Br7c10 ≠ w
whip[1]: Br7c10{wne .} ==> Nr7c10 ≠ 0
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Vr7c9{0 .} ==> Pr7c9 ≠ ns, Pr7c9 ≠ sw
whip[1]: Pr7c9{ew .} ==> Br6c9 ≠ nw, Br6c9 ≠ ew, Br6c9 ≠ wne, Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ e, Br6c9 ≠ w, Br6c9 ≠ ne
whip[1]: Br6c9{nes .} ==> Pr7c10 ≠ o, Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr7c10 ≠ se, Nr6c9 ≠ 0
whip[1]: Pr7c10{sw .} ==> Br6c10 ≠ esw, Br6c10 ≠ swn, Br7c10 ≠ wne
whip[1]: Br7c10{ew .} ==> Pr7c11 ≠ sw, Nr7c10 ≠ 3
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ ns
whip[1]: Br6c10{ew .} ==> Nr6c10 ≠ 3
whip[1]: Vr8c9{1 .} ==> Pr9c9 ≠ se, Pr9c9 ≠ ew
whip[1]: Pr9c9{nw .} ==> Hr9c9 ≠ 1, Br9c8 ≠ w, Br9c8 ≠ ne, Br9c8 ≠ sw, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c8 ≠ o, Br9c8 ≠ s
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 0
whip[1]: Hr7c8{0 .} ==> Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c9 ≠ ew, Br6c8 ≠ ns, Br6c8 ≠ sw, Br7c8 ≠ n, Br7c8 ≠ nw
P-single: Pr7c9 = ne
whip[1]: Pr7c9{ne .} ==> Br6c9 ≠ s, Br6c9 ≠ ns, Br6c9 ≠ se, Br6c9 ≠ nes
whip[1]: Br6c9{swn .} ==> Pr6c9 ≠ ew, Pr6c10 ≠ sw, Nr6c9 ≠ 1
whip[1]: Pr6c9{sw .} ==> Hr6c9 ≠ 1, Br5c8 ≠ esw, Br5c8 ≠ nes, Br6c9 ≠ swn
whip[1]: Br6c9{esw .} ==> Pr6c10 ≠ nw, Pr6c10 ≠ ew
whip[1]: Br5c8{wne .} ==> Pr5c8 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c9 ≠ ns, Pr5c9 ≠ se, Pr6c8 ≠ ew, Pr6c8 ≠ sw
P-single: Pr5c8 = se
w[1]-1-in-r5c7-asymmetric-ne-corner ==> Pr6c7 ≠ ew, Pr6c7 ≠ se
whip[1]: Pr5c8{se .} ==> Br5c7 ≠ s, Br4c8 ≠ e, Br4c7 ≠ e, Br4c8 ≠ nw, Br4c8 ≠ swn
B-single: Br4c8 = se
B-single: Br4c7 = o
B-single: Br5c7 = e
whip[1]: Br4c8{se .} ==> Nr4c8 ≠ 3, Nr4c8 ≠ 1, Pr5c9 ≠ ew, Pr4c9 ≠ ew, Pr4c8 ≠ se, Hr4c8 ≠ 1
N-single: Nr4c8 = 2
P-single: Pr4c8 = o
P-single: Pr4c9 = se
P-single: Pr5c9 = nw
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ n, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 1
whip[1]: Pr5c9{nw .} ==> Vr5c9 ≠ 1, Hr5c9 ≠ 1, Br4c9 ≠ swn, Br5c8 ≠ wne
B-single: Br5c8 = swn
B-single: Br4c9 = nw
whip[1]: Br5c8{swn .} ==> Pr6c9 ≠ ns, Pr6c8 ≠ ns
P-single: Pr6c8 = ne
P-single: Pr6c9 = sw
whip[1]: Pr6c8{ne .} ==> Br6c7 ≠ n, Br6c7 ≠ e, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ ew
B-single: Br6c8 = ne
whip[1]: Br6c7{sw .} ==> Nr6c7 ≠ 3
whip[1]: Pr7c8{sw .} ==> Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ n, Br7c7 ≠ e, Br7c7 ≠ ns
whip[1]: Br4c9{nw .} ==> Nr4c9 ≠ 3, Pr5c10 ≠ sw
N-single: Nr4c9 = 2
P-single: Pr5c10 = o
whip[1]: Pr5c10{o .} ==> Vr5c10 ≠ 1, Br5c10 ≠ ew, Br5c10 ≠ esw
whip[1]: Br5c10{se .} ==> Pr6c10 ≠ ne, Pr6c10 ≠ ns, Nr5c10 ≠ 3
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ ew, Br6c10 ≠ n
whip[1]: Br4c7{o .} ==> Nr4c7 ≠ 1
N-single: Nr4c7 = 0
whip[1]: Pr6c7{sw .} ==> Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ n, Br6c6 ≠ e, Br6c6 ≠ ns
whip[1]: Br7c8{w .} ==> Nr7c8 ≠ 2, Nr7c8 ≠ 3
whip[1]: Hr9c8{1 .} ==> Pr9c8 ≠ o, Pr9c8 ≠ ns, Pr9c8 ≠ nw, Pr9c8 ≠ sw, Pr9c9 ≠ ns, Br8c8 ≠ e, Br8c8 ≠ ew, Br9c8 ≠ e, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw
P-single: Pr9c9 = nw
whip[1]: Pr9c9{nw .} ==> Vr9c9 ≠ 1
whip[1]: Br9c8{swn .} ==> Pr10c9 ≠ ne, Pr10c9 ≠ ns
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br9c8 ≠ n, Br10c8 ≠ o, Br10c8 ≠ e, Br10c8 ≠ s, Br10c8 ≠ w
whip[1]: Br10c8{nes .} ==> Pr10c8 ≠ o, Pr10c8 ≠ ns, Pr10c8 ≠ nw, Pr10c8 ≠ sw, Nr10c8 ≠ 0
whip[1]: Pr10c8{ew .} ==> Br9c7 ≠ se, Br10c7 ≠ wne, Br10c7 ≠ nes, Br10c7 ≠ ne
whip[1]: Br9c7{sw .} ==> Pr9c7 ≠ o, Pr9c7 ≠ nw
whip[1]: Pr9c7{ew .} ==> Br8c7 ≠ o, Br8c7 ≠ n, Br8c7 ≠ e, Br8c7 ≠ ne, Br9c6 ≠ ne
whip[1]: Br8c7{nes .} ==> Nr8c7 ≠ 0
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 1
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ o, Pr11c9 ≠ nw, Pr11c10 ≠ o, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Pr10c10 ≠ nw, Pr10c10 ≠ ew
P-single: Pr11c10 = nw
whip[1]: Pr11c10{nw .} ==> Br10c10 ≠ n, Br10c10 ≠ o, Br11c10 ≠ n, Br11c9 ≠ o
B-single: Br11c9 = n
B-single: Br11c10 = o
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 0, Nr10c10 ≠ 3
whip[1]: Pr10c10{se .} ==> Hr10c9 ≠ 1, Br10c9 ≠ nes
B-single: Br10c9 = esw
whip[1]: Br10c9{esw .} ==> Pr10c9 ≠ ew, Pr11c9 ≠ ew
P-single: Pr11c9 = ne
P-single: Pr10c9 = sw
whip[1]: Pr11c9{ne .} ==> Br10c8 ≠ n, Br11c8 ≠ n, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ nes
B-single: Br11c8 = o
whip[1]: Br11c8{o .} ==> Pr11c8 ≠ ne, Pr11c8 ≠ ew
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 1
whip[1]: Br8c8{esw .} ==> Nr8c8 ≠ 0, Nr8c8 ≠ 1
whip[1]: Pr9c8{ew .} ==> Br8c7 ≠ se, Br8c7 ≠ esw, Br8c7 ≠ nes, Br9c7 ≠ ne
whip[1]: Br9c7{sw .} ==> Pr10c7 ≠ sw
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nw, Br10c7 ≠ nw, Br10c6 ≠ ne
whip[1]: Br10c6{sw .} ==> Pr11c6 ≠ o
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ nw, Br10c5 ≠ o, Br10c5 ≠ n, Br10c5 ≠ w
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 1
whip[1]: Pr9c10{o .} ==> Vr9c10 ≠ 1, Br9c10 ≠ ew
B-single: Br9c10 = se
whip[1]: Br9c10{se .} ==> Pr10c10 ≠ ns
P-single: Pr10c10 = se
whip[1]: Pr10c10{se .} ==> Br10c10 ≠ w
B-single: Br10c10 = nw
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 1
N-single: Nr10c10 = 2
whip[1]: Hr2c4{1 .} ==> Br2c4 ≠ ew, Pr2c4 ≠ sw, Pr2c5 ≠ ns, Br1c4 ≠ e
P-single: Pr2c5 = nw
P-single: Pr2c4 = ew
B-single: Br1c4 = se
B-single: Br2c4 = ns
whip[1]: Pr2c5{nw .} ==> Vr2c5 ≠ 1
whip[1]: Pr2c4{ew .} ==> Br2c3 ≠ nes
B-single: Br2c3 = ns
whip[1]: Br2c3{ns .} ==> Nr2c3 ≠ 3, Pr3c4 ≠ nw
N-single: Nr2c3 = 2
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br3c4 ≠ e
B-single: Br3c4 = ne
whip[1]: Br3c4{ne .} ==> Nr3c4 ≠ 1, Pr3c5 ≠ ns
N-single: Nr3c4 = 2
P-single: Pr3c5 = sw
whip[1]: Br1c4{se .} ==> Nr1c4 ≠ 1
N-single: Nr1c4 = 2
whip[1]: Vr8c3{0 .} ==> Br8c3 ≠ w, Pr8c3 ≠ ns, Pr9c3 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Br8c2 ≠ e, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw
whip[1]: Br8c3{s .} ==> Pr8c4 ≠ sw, Pr9c4 ≠ nw
whip[1]: Pr8c4{ew .} ==> Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ w
whip[1]: Vr10c3{0 .} ==> Br10c3 ≠ w, Pr11c3 ≠ ne, Pr11c3 ≠ nw, Pr10c3 ≠ ns, Pr10c3 ≠ se, Pr10c3 ≠ sw, Br10c2 ≠ e, Br10c2 ≠ ne, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ esw, Br10c2 ≠ wne, Br10c2 ≠ nes
whip[1]: Br10c3{s .} ==> Pr11c4 ≠ nw, Pr10c4 ≠ sw
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ w
whip[1]: Vr9c2{1 .} ==> Br9c2 ≠ nes, Br9c1 ≠ o, Pr9c2 ≠ o, Pr9c2 ≠ ne, Pr9c2 ≠ nw, Pr9c2 ≠ ew, Pr10c2 ≠ o, Pr10c2 ≠ se, Pr10c2 ≠ ew, Pr10c2 ≠ sw, Br9c1 ≠ n, Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ sw, Br9c1 ≠ swn
whip[1]: Br9c1{nes .} ==> Nr9c1 ≠ 0
whip[1]: Pr10c2{nw .} ==> Br10c1 ≠ ne, Br10c2 ≠ nw, Br10c2 ≠ swn
whip[1]: Br10c2{sw .} ==> Nr10c2 ≠ 3
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ esw, Br8c1 ≠ nes, Br8c2 ≠ sw, Br8c2 ≠ swn
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 3
whip[1]: Br8c1{sw .} ==> Nr8c1 ≠ 3
whip[1]: Br9c2{wne .} ==> Pr9c3 ≠ o, Pr10c3 ≠ o
whip[1]: Vr9c3{1 .} ==> Br9c3 ≠ nes, Pr9c3 ≠ ew, Pr10c3 ≠ ew, Br9c2 ≠ swn
whip[1]: Br9c3{wne .} ==> Pr9c4 ≠ o, Pr9c4 ≠ ne, Pr10c4 ≠ o, Pr10c4 ≠ se
whip[1]: Pr10c4{ew .} ==> Br10c4 ≠ swn, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ e, Br9c4 ≠ ne
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Pr9c4{sw .} ==> Br8c4 ≠ swn, Br9c4 ≠ se, Br9c4 ≠ s
whip[1]: Vr9c4{1 .} ==> Br9c4 ≠ nes, Pr9c4 ≠ ew, Pr10c4 ≠ ew, Br9c3 ≠ swn, Br9c4 ≠ ns
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ wne, Vr6c5 ≠ 1, Pr6c5 ≠ ns, Pr6c5 ≠ se, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Br6c5 ≠ w, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn
P-single: Pr6c5 = o
whip[1]: Pr6c5{o .} ==> Vr5c5 ≠ 1, Hr6c5 ≠ 1, Br5c4 ≠ ew, Br5c5 ≠ s, Br5c5 ≠ wne
H-single: Hr6c5 = 0
V-single: Vr5c5 = 0
B-single: Br5c5 = o
B-single: Br5c4 = w
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
3-in-r3c5-no-U-turn-from-south ==> Hr5c5 = O
whip[1]: Hr6c5{0 .} ==> Pr6c6 ≠ ew, Pr6c6 ≠ sw
whip[1]: Vr5c5{0 .} ==> Pr5c5 ≠ se
P-single: Pr5c5 = o
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ ns
B-single: Br4c5 = n
whip[1]: Br4c5{n .} ==> Pr5c6 ≠ sw, Nr4c5 ≠ 2
N-single: Nr4c5 = 1
P-single: Pr5c6 = o
whip[1]: Pr5c6{o .} ==> Br5c6 ≠ w, Br5c6 ≠ sw
whip[1]: Br5c6{s .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ ns, Nr5c6 ≠ 2
whip[1]: Pr6c6{se .} ==> Br6c6 ≠ ne, Br6c6 ≠ sw, Br6c6 ≠ nes, Br6c6 ≠ w
whip[1]: Br6c6{wne .} ==> Pr7c6 ≠ ne, Pr7c7 ≠ nw, Nr6c6 ≠ 2
whip[1]: Br5c5{o .} ==> Nr5c5 ≠ 1, Nr5c5 ≠ 3
N-single: Nr5c5 = 0
whip[1]: Br5c4{w .} ==> Nr5c4 ≠ 2
N-single: Nr5c4 = 1
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 3
whip[1]: Pr7c5{se .} ==> Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ nes, Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Vr8c6{0 .} ==> Br8c5 ≠ nes, Vr8c6 ≠ 1, Pr8c6 ≠ ns, Pr8c6 ≠ se, Pr8c6 ≠ sw, Pr9c6 ≠ ne, Pr9c6 ≠ ns, Pr9c6 ≠ nw, Br8c5 ≠ e, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne
whip[1]: Pr9c6{sw .} ==> Br9c5 ≠ e
whip[1]: Br9c5{w .} ==> Vr9c6 ≠ 1, Pr10c5 ≠ ne, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Pr10c6 ≠ nw, Pr9c5 ≠ se, Pr9c6 ≠ sw
V-single: Vr9c6 = 0
w[1]-2-in-r9c6-open-nw-corner ==> Hr10c6 = 1, Vr9c7 = 1, Hr10c7 = 0, Vr10c7 = 0
whip[1]: Vr9c6{0 .} ==> Br9c6 ≠ ew, Br9c6 ≠ sw
whip[1]: Br9c6{se .} ==> Pr10c7 ≠ ns
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ sw, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c7 ≠ esw, Br10c7 ≠ w
whip[1]: Br10c7{se .} ==> Pr11c7 ≠ ne, Nr10c7 ≠ 3
whip[1]: Vr9c7{1 .} ==> Pr9c7 ≠ ew, Pr10c7 ≠ ew, Br9c6 ≠ ns, Br9c7 ≠ ns
P-single: Pr9c6 = o
P-single: Pr10c7 = nw
B-single: Br9c6 = se
w[1]-1-in-r9c5-symmetric-ne-corner ==> Pr10c5 ≠ sw, Pr10c5 ≠ o
whip[1]: Pr9c6{o .} ==> Hr9c6 ≠ 1, Hr9c5 ≠ 1, Br8c5 ≠ s, Br8c5 ≠ ns, Br8c5 ≠ sw, Br8c5 ≠ swn, Br9c5 ≠ n
H-single: Hr9c5 = 0
whip[1]: Hr9c5{0 .} ==> Pr9c5 ≠ ne, Pr9c5 ≠ ew
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Pr10c7{nw .} ==> Br10c7 ≠ n
whip[1]: Br10c7{se .} ==> Pr10c8 ≠ ew, Nr10c7 ≠ 1
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ sw, Br10c4 ≠ nes, Br10c4 ≠ o, Br10c4 ≠ s, Br10c4 ≠ ne
whip[1]: Br10c4{esw .} ==> Nr10c4 ≠ 0
whip[1]: Pr9c7{se .} ==> Br8c7 ≠ sw, Br8c7 ≠ swn
whip[1]: Pr11c6{ew .} ==> Br11c5 ≠ o, Hr11c5 ≠ 0, Br10c5 ≠ ew, Br10c5 ≠ wne, Br10c5 ≠ e, Br10c5 ≠ ne
H-single: Hr11c5 = 1
B-single: Br11c5 = n
horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
whip[1]: Hr11c5{1 .} ==> Pr11c5 ≠ o, Pr11c5 ≠ nw
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ se, Br10c4 ≠ esw, Br10c4 ≠ n
whip[1]: Br10c4{ns .} ==> Vr10c4 ≠ 1, Pr11c4 ≠ ne, Pr10c4 ≠ ns, Nr10c4 ≠ 3
V-single: Vr10c4 = 0
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ e
whip[1]: Pr9c8{ew .} ==> Vr8c8 ≠ 1, Br8c7 ≠ ew, Br8c7 ≠ wne, Br8c8 ≠ esw
V-single: Vr8c8 = 0
B-single: Br8c8 = se
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
no-vertical-line-r8{c6 c7} ==> Ir8c6 = out
no-vertical-line-r8{c5 c6} ==> Ir8c5 = out
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
vertical-line-r9{c6 c7} ==> Ir9c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
P-single: Pr11c7 = ew
P-single: Pr10c6 = ew
w[1]-1-in-r9c5-asymmetric-se-corner ==> Pr9c5 ≠ sw, Pr9c5 ≠ ns
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
w[1]-2-in-r9c7-open-se-corner ==> Hr9c7 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1
whip[1]: Vr8c8{0 .} ==> Pr8c8 ≠ ns, Pr8c8 ≠ sw
whip[1]: Pr8c8{nw .} ==> Br7c7 ≠ ne, Br7c7 ≠ sw, Br7c7 ≠ wne, Br7c7 ≠ s
whip[1]: Br7c7{nes .} ==> Pr7c7 ≠ se, Pr8c7 ≠ ne, Nr7c7 ≠ 2
whip[1]: Br8c8{se .} ==> Nr8c8 ≠ 3
N-single: Nr8c8 = 2
whip[1]: Hr11c6{1 .} ==> Br11c6 ≠ o, Pr11c6 ≠ nw, Br10c6 ≠ nw
P-single: Pr11c6 = ew
B-single: Br10c6 = ns
B-single: Br11c6 = n
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ se, Br10c5 ≠ esw, Br10c5 ≠ nes
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ o, Br11c7 ≠ o
B-single: Br11c7 = n
B-single: Br10c7 = se
whip[1]: Br11c7{n .} ==> Pr11c8 ≠ o
P-single: Pr11c8 = nw
whip[1]: Pr11c8{nw .} ==> Br10c8 ≠ ne
B-single: Br10c8 = wne
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 2, Pr10c8 ≠ ne
N-single: Nr10c8 = 3
P-single: Pr9c7 = se
P-single: Pr10c8 = se
whip[1]: Pr9c7{se .} ==> Br8c7 ≠ w, Vr8c7 ≠ 1, Br8c7 ≠ nw, Br9c7 ≠ ew
B-single: Br9c7 = nw
whip[1]: Br9c7{nw .} ==> Pr9c8 ≠ se
P-single: Pr9c8 = ew
whip[1]: Pr9c8{ew .} ==> Br9c8 ≠ swn
B-single: Br9c8 = ns
whip[1]: Br9c8{ns .} ==> Nr9c8 ≠ 3
N-single: Nr9c8 = 2
whip[1]: Br8c7{ns .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ se, Nr8c7 ≠ 3, Pr8c7 ≠ sw
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ ew, Br7c6 ≠ wne, Br7c6 ≠ e, Br7c6 ≠ ne
whip[1]: Br10c7{se .} ==> Nr10c7 ≠ 0
N-single: Nr10c7 = 2
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ s, Br9c5 ≠ w, Br10c5 ≠ sw
B-single: Br9c5 = s
whip[1]: Br9c5{s .} ==> Pr10c5 ≠ ns, Vr9c5 ≠ 1, Pr10c5 ≠ nw
V-single: Vr9c5 = 0
no-vertical-line-r9{c4 c5} ==> Ir9c4 = out
vertical-line-r9{c3 c4} ==> Ir9c3 = in
vertical-line-r9{c2 c3} ==> Ir9c2 = out
vertical-line-r9{c1 c2} ==> Ir9c1 = in
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
whip[1]: Vr9c5{0 .} ==> Br9c4 ≠ ew, Br9c4 ≠ esw, Br9c4 ≠ wne
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o, Pr9c1 ≠ o, Pr9c1 ≠ ne, Pr10c1 ≠ o, Pr10c1 ≠ se, Br9c1 ≠ e, Br9c1 ≠ ne, Br9c1 ≠ se, Br9c1 ≠ nes
B-single: Br9c0 = e
whip[1]: Br9c1{wne .} ==> Nr9c1 ≠ 1
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ swn, Br10c1 ≠ o, Br10c1 ≠ e
whip[1]: Br10c1{esw .} ==> Pr11c2 ≠ ne, Nr10c1 ≠ 0
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ sw
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ n
whip[1]: Br8c1{ew .} ==> Pr8c2 ≠ sw
whip[1]: Pr8c2{ew .} ==> Br8c2 ≠ w
whip[1]: Br10c5{swn .} ==> Nr10c5 ≠ 1
whip[1]: Pr9c5{nw .} ==> Br8c4 ≠ ne, Br8c4 ≠ ns, Br8c4 ≠ wne, Br8c4 ≠ e, Br8c4 ≠ s
whip[1]: Hr8c6{0 .} ==> Br7c6 ≠ nes, Hr8c6 ≠ 1, Pr8c6 ≠ ne, Pr8c6 ≠ ew, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Br7c6 ≠ s, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn
P-single: Pr8c7 = o
whip[1]: Pr8c7{o .} ==> Vr7c7 ≠ 1, Hr8c7 ≠ 1, Br7c7 ≠ w, Br7c7 ≠ nes, Br8c7 ≠ ns
H-single: Hr8c7 = 0
V-single: Vr7c7 = 0
B-single: Br8c7 = s
B-single: Br7c7 = o
no-vertical-line-r7{c6 c7} ==> Ir7c7 = out
same-colour-in-r7{c7 c8} ==> Vr7c8 = 0
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
whip[1]: Hr8c7{0 .} ==> Pr8c8 ≠ nw
P-single: Pr8c8 = o
whip[1]: Pr8c8{o .} ==> Br7c8 ≠ w
B-single: Br7c8 = o
whip[1]: Br7c8{o .} ==> Pr7c8 ≠ sw, Nr7c8 ≠ 1
N-single: Nr7c8 = 0
P-single: Pr7c8 = o
whip[1]: Pr7c8{o .} ==> Br6c7 ≠ s, Br6c7 ≠ sw
whip[1]: Br6c7{w .} ==> Pr7c7 ≠ ne, Nr6c7 ≠ 2, Pr7c7 ≠ ew
whip[1]: Pr7c7{sw .} ==> Br7c6 ≠ nw, Br7c6 ≠ n
whip[1]: Br7c6{w .} ==> Hr7c6 ≠ 1, Pr7c7 ≠ ns, Nr7c6 ≠ 2, Nr7c6 ≠ 3, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c7 ≠ sw
H-single: Hr7c6 = 0
P-single: Pr7c7 = o
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = out
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
same-colour-in-r6{c5 c6} ==> Vr6c6 = 0
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
whip[1]: Hr7c6{0 .} ==> Br6c6 ≠ s
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 1
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ wne, Br6c7 ≠ w
B-single: Br6c7 = o
B-single: Br6c6 = o
whip[1]: Br6c7{o .} ==> Pr6c7 ≠ sw, Nr6c7 ≠ 1
N-single: Nr6c7 = 0
P-single: Pr6c7 = o
whip[1]: Pr6c7{o .} ==> Br5c6 ≠ s
B-single: Br5c6 = o
whip[1]: Br5c6{o .} ==> Pr6c6 ≠ se, Nr5c6 ≠ 1
N-single: Nr5c6 = 0
P-single: Pr6c6 = o
whip[1]: Pr6c6{o .} ==> Br6c5 ≠ e, Br6c5 ≠ se
whip[1]: Br6c5{s .} ==> Pr7c6 ≠ ns, Nr6c5 ≠ 2, Pr7c6 ≠ nw
whip[1]: Pr7c6{sw .} ==> Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ swn, Br7c5 ≠ e
whip[1]: Br7c5{wne .} ==> Pr8c5 ≠ ne, Pr8c6 ≠ nw, Nr7c5 ≠ 2
P-single: Pr8c6 = o
whip[1]: Pr8c6{o .} ==> Vr7c6 ≠ 1, Hr8c5 ≠ 1, Br7c5 ≠ s, Br7c5 ≠ wne, Br7c6 ≠ w, Br8c5 ≠ n, Br8c5 ≠ nw
H-single: Hr8c5 = 0
V-single: Vr7c6 = 0
B-single: Br7c6 = o
B-single: Br7c5 = o
no-vertical-line-r7{c5 c6} ==> Ir7c5 = out
same-colour-in-r7{c4 c5} ==> Vr7c5 = 0
same-colour-in-{r6 r7}c5 ==> Hr7c5 = 0
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ se, Pr8c5 ≠ ew
whip[1]: Vr7c6{0 .} ==> Pr7c6 ≠ sw
P-single: Pr7c6 = o
whip[1]: Pr7c6{o .} ==> Br6c5 ≠ s
B-single: Br6c5 = o
whip[1]: Br6c5{o .} ==> Pr7c5 ≠ se, Nr6c5 ≠ 1
N-single: Nr6c5 = 0
P-single: Pr7c5 = o
whip[1]: Pr7c5{o .} ==> Br7c4 ≠ e, Br7c4 ≠ se
whip[1]: Br7c4{s .} ==> Pr8c5 ≠ ns, Nr7c4 ≠ 2, Pr8c5 ≠ nw
whip[1]: Pr8c5{sw .} ==> Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ n
whip[1]: Br8c4{nes .} ==> Vr8c4 ≠ 1, Pr8c4 ≠ se, Pr9c4 ≠ ns, Nr8c4 ≠ 1, Nr8c4 ≠ 2
V-single: Vr8c4 = 0
whip[1]: Vr8c4{0 .} ==> Br8c3 ≠ e
whip[1]: Br7c6{o .} ==> Nr7c6 ≠ 1
N-single: Nr7c6 = 0
whip[1]: Br7c5{o .} ==> Nr7c5 ≠ 1, Nr7c5 ≠ 3
N-single: Nr7c5 = 0
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
whip[1]: Br6c6{o .} ==> Nr6c6 ≠ 3
N-single: Nr6c6 = 0
whip[1]: Br8c7{s .} ==> Nr8c7 ≠ 2
N-single: Nr8c7 = 1
whip[1]: Br7c7{o .} ==> Nr7c7 ≠ 1, Nr7c7 ≠ 3
N-single: Nr7c7 = 0
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
Entering_relation_bivalue_with_<Fact-190640>
Entering_level_BC2_with_<Fact-190839>
Entering_level_W2_with_<Fact-191353>
Entering_level_BC3_with_<Fact-192275>
biv-chain[3]: Pr11c3{o ew} - Br10c3{n s} - Pr10c3{ne nw} ==> Br10c2 ≠ s
biv-chain[3]: Pr11c3{ew o} - Br10c3{s n} - Pr10c3{nw ne} ==> Br10c2 ≠ n
biv-chain[3]: Pr8c3{ne nw} - Br8c3{n s} - Pr9c3{sw se} ==> Br8c2 ≠ ns
biv-chain[3]: Pr8c3{nw ne} - Br8c3{s n} - Pr9c3{se sw} ==> Br8c2 ≠ o
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 0
biv-chain[3]: Pr9c4{se sw} - Br9c3{esw wne} - Pr10c4{nw ne} ==> Br9c4 ≠ w
whip[1]: Br9c4{swn .} ==> Nr9c4 ≠ 1
biv-chain[3]: Pr9c4{sw se} - Br9c3{wne esw} - Pr10c4{ne nw} ==> Br9c4 ≠ swn
whip[1]: Br9c4{sw .} ==> Nr9c4 ≠ 3
N-single: Nr9c4 = 2
Entering_level_W3_with_<Fact-194076>
Entering_level_BC4_with_<Fact-197473>
Entering_level_W4_with_<Fact-202779>
Entering_level_BC5_with_<Fact-214445>
Entering_level_W5_with_<Fact-231107>
GRID 0 NOT SOLVED. 60 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.   .———.   .   .———.———.———.———.———.———.
    | 3 |       | 2           2         |
.———.   .———.———.   .   .———.———.———.   .
| 3   0       2   0   2 |     1   2 |   |
.———.   .———.———.   .———.   .   .   .   .
    | 3 |       | 3 |         0     |   |
.   .———.   .   .———.   .   .   .———.   .
                                |       |
.———.———.———.   .   .   .   .———.   .   .
|         3 |             1 | 3   0     |
.   .———.———.   .   .   .   .———.   .....
|   | 3   1   0               2 |   :   :
.   .———.   .   .   .   .   .   .———.....
|       |                           :   :
.................   .   .   .   .———.....
:   :     1     :     0         | 2     |
.................   .   .———.———.   .   .
|   | 3 | 3 |     1   2 | 2       0   2 |
.................———.———.   .———.   .———.
:   :     1     :     2     |   | 3 |
.................———.———.———.   .———.   .

init-time = 0.6s, solve-time = 44.88s, total-time = 45.48s
nb-facts=<Fact-269307>
Quasi-Loop max length = 32
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



It is now easy to finish the puzzle manually:


.   .———.   .   .———.———.———.———.———.———.
    | 3 |       | 2           2         |
.———.   .———.———.   .   .———.———.———.   .
| 3   0       2   0   2 |     1   2 |   |
.———.   .———.———.   .———.   .   .   .   .
    | 3 |       | 3 |         0     |   |
.   .———.   .   .———.   .   .   .———.   .
                                |       |
.———.———.———.   .   .   .   .———.   .   .
|         3 |             1 | 3   0     |
.   .———.———.   .   .   .   .———.   .....
|   | 3   1   0               2 |   :   :
.   .———.   .   .   .   .   .   .———.....
|       |                           :   :
.................   .   .   .   .———.....
:   :     1     :     0         | 2     |
.................   .   .———.———.   .   .
|   | 3 | 3 |     1   2 | 2       0   2 |
.................———.———.   .———.   .———.
:   :     1     :     2     |   | 3 |
.................———.———.———.   .———.   .


Vr6c10=1 ==> small loop.
Vr6c10=0:

.   .———.   .   .———.———.———.———.———.———.
    | 3 |       | 2           2         |
.———.   .———.———.   .   .———.———.———.   .
| 3   0       2   0   2 |     1   2 |   |
.———.   .———.———.   .———.   .   .   .   .
    | 3 |       | 3 |         0     |   |
.   .———.   .   .———.   .   .   .———.   .
                                |       |
.———.———.———.   .   .   .   .———.   .   .
|         3 |             1 | 3   0     |
.   .———.———.   .   .   .   .———.   .   .
|   | 3   1   0               2 |       |
.   .———.   .   .   .   .   .   .———.   .
|       |                           |   |
.   .———.   .   .   .   .   .   .———.   .
|   |     1           0         | 2     |
.   .   .———.   .   .   .———.———.   .   .
|   | 3 | 3 |     1   2 | 2       0   2 |
.   .———.   .———.———.———.   .———.   .———.
|         1           2     |   | 3 |
.———.———.———.———.———.———.———.   .———.   .







----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

USING XTD-LOOPS:

----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . . 2 . . 2 . .
3 0 . 2 0 2 . 1 2 .
. 3 . . 3 . . 0 . .
. . . . . . . . . .
. . 3 . . . 1 3 0 .
. 3 1 0 . . . 2 . .
. . . . . . . . . .
. . 1 . . 0 . . 2 .
. 3 3 . 1 2 2 . 0 2
. . 1 . . 2 . . 3 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.534912109375
start solution 0.546795129776001
entering BRT
w[0]-0-in-r9c9 ==> Hr10c9 = 0, Hr9c9 = 0, Vr9c10 = 0, Vr9c9 = 0
w[0]-0-in-r8c6 ==> Hr9c6 = 0, Hr8c6 = 0, Vr8c7 = 0, Vr8c6 = 0
w[0]-0-in-r6c4 ==> Hr7c4 = 0, Hr6c4 = 0, Vr6c5 = 0, Vr6c4 = 0
w[0]-0-in-r5c9 ==> Hr6c9 = 0, Hr5c9 = 0, Vr5c10 = 0, Vr5c9 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[0]-0-in-r2c5 ==> Hr3c5 = 0, Hr2c5 = 0, Vr2c6 = 0, Vr2c5 = 0
w[0]-0-in-r2c2 ==> Hr3c2 = 0, Hr2c2 = 0, Vr2c3 = 0, Vr2c2 = 0
w[0]-adjacent-3-0-in-c9{r10 r9} ==> Vr10c10 = 1, Vr10c9 = 1, Hr11c9 = 1, Hr10c10 = 1, Hr10c8 = 1, Hr11c10 = 0, Hr11c8 = 0
w0-adjacent-3-0-in-r5{c8 c9} ==> Vr6c9 = 1, Vr4c9 = 1, Vr5c8 = 1, Hr6c8 = 1, Hr5c8 = 1, Vr6c8 = 0, Vr4c8 = 0, Hr6c7 = 0, Hr5c7 = 0
w[0]-adjacent-3-0-in-c5{r3 r2} ==> Vr3c6 = 1, Vr3c5 = 1, Hr4c5 = 1, Hr3c6 = 1, Hr3c4 = 1, Vr4c6 = 0, Vr4c5 = 0, Hr4c6 = 0, Hr4c4 = 0
w[0]-adjacent-3-0-in-c2{r3 r2} ==> Vr3c3 = 1, Vr3c2 = 1, Hr4c2 = 1, Hr3c3 = 1, Hr3c1 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr4c3 = 0, Hr4c1 = 0
w0-adjacent-3-0-in-r2{c1 c2} ==> Vr1c2 = 1, Vr2c1 = 1, Hr2c1 = 1, Vr3c1 = 0, Vr1c1 = 0
w[0]-adjacent-3-0-in-c2{r1 r2} ==> Vr1c3 = 1, Hr2c3 = 1, Hr1c2 = 1, Hr1c3 = 0, Hr1c1 = 0
w[1]-diagonal-3-0-in-{r5c3...r6c4} ==> Vr5c4 = 1, Hr6c3 = 1
w[1]-diagonal-3s-in-{r5c3...r6c2} ==> Vr6c2 = 1, Hr7c2 = 1, Hr5c3 = 1, Vr4c4 = 0, Vr7c2 = 0, Hr7c1 = 0, Hr5c4 = 0
w[1]-3-in-r6c2-hit-by-horiz-line-at-ne ==> Vr5c3 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c3 c2} ==> Hr7c3 = 0, Hr6c2 = 1
w[1]-3-in-r5c3-hit-by-horiz-line-at-sw ==> Vr6c3 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r5{c7 c8} ==> Vr5c7 = 0
w[1]-3-in-r10c9-closed-sw-corner ==> Pr10c10 ≠ sw, Pr10c10 ≠ o
w[1]-3-in-r10c9-closed-se-corner ==> Pr10c9 ≠ se, Pr10c9 ≠ nw, Pr10c9 ≠ o
w[1]-3-in-r6c2-closed-sw-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r6c2-closed-nw-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ o
w[1]-3-in-r5c8-closed-sw-corner ==> Pr5c9 ≠ sw, Pr5c9 ≠ ne, Pr5c9 ≠ o
w[1]-3-in-r5c8-closed-nw-corner ==> Pr6c9 ≠ se, Pr6c9 ≠ nw
w[1]-3-in-r5c3-closed-se-corner ==> Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ o
w[1]-3-in-r3c5-closed-sw-corner ==> Pr3c6 ≠ sw, Pr3c6 ≠ o
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ o
w[1]-3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
w[1]-3-in-r3c2-closed-se-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-3-in-r2c1-closed-sw-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
adjacent-3s-in-r9{c2 c3} ==> Vr9c4 = 1, Vr9c3 = 1, Vr9c2 = 1, Vr10c3 = 0, Vr8c3 = 0
entering level Loop with <Fact-93620>

LOOP[12]: Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3- ==> Vr2c4 = 0
w[1]-diagonal-3-2-in-{r3c5...r2c4}-non-closed-nw-corner ==> Hr2c4 = 1
entering level Col with <Fact-94305>
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
no-vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
vertical-line-r3{c2 c3} ==> Ir3c3 = out
horizontal-line-{r1 r2}c4 ==> Ir1c4 = out
horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-vertical-line-r6{c2 c3} ==> Ir6c2 = out
vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
no-vertical-line-r6{c4 c5} ==> Ir6c5 = out
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = out
no-horizontal-line-{r10 r11}c10 ==> Ir10c10 = out
vertical-line-r10{c9 c10} ==> Ir10c9 = in
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
horizontal-line-{r9 r10}c8 ==> Ir10c8 = out
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
same-colour-in-r7{c3 c4} ==> Vr7c4 = 0
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-r1{c4 c5} ==> Hr1c5 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
same-colour-in-r3{c3 c4} ==> Vr3c4 = 0
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
Starting_init_links_with_<Fact-94666>
1148 candidates, 8987 csp-links and 36295 links. Density = 5.51%
starting non trivial part of solution
Entering_level_W1_with_<Fact-185235>
whip[1]: Vr1c4{0 .} ==> Br1c4 ≠ wne, Pr1c4 ≠ se, Pr1c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Br1c3 ≠ e, Br1c3 ≠ ne, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ esw, Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c4 ≠ nw, Br2c4 ≠ se, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ w, Br2c3 ≠ o, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w
whip[1]: Br2c3{nes .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ sw, Nr2c3 ≠ 0
whip[1]: Pr2c3{ew .} ==> Vr2c3 ≠ 1, Br1c2 ≠ esw, Br1c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ swn, Br2c3 ≠ wne
whip[1]: Br2c3{nes .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ nw
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br2c3 ≠ n, Br2c3 ≠ ne, Br3c3 ≠ o, Br3c3 ≠ e, Br3c3 ≠ s, Br3c3 ≠ w
whip[1]: Br3c3{nes .} ==> Pr3c4 ≠ ns, Pr3c4 ≠ se, Nr3c3 ≠ 0
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ sw, Br3c3 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br2c4 ≠ ne, Br3c3 ≠ ne, Br3c4 ≠ w
whip[1]: Br3c4{nes .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ ns, Pr4c4 ≠ nw
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 1
whip[1]: Br3c2{swn .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ ew, Pr4c2 ≠ o, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Pr4c3 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ se
P-single: Pr4c2 = ne
whip[1]: Pr4c2{ne .} ==> Br4c2 ≠ o, Br4c1 ≠ n, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes, Br4c1 ≠ e, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ e, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne
whip[1]: Br4c2{nes .} ==> Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ nw, Nr4c2 ≠ 0
whip[1]: Br4c1{sw .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ se, Nr4c1 ≠ 3
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ swn, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 3
whip[1]: Pr3c2{sw .} ==> Hr3c2 ≠ 1, Br2c1 ≠ esw, Br2c1 ≠ nes, Br3c2 ≠ swn
B-single: Br3c2 = esw
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ sw, Pr4c3 ≠ ew, Pr3c3 ≠ ew
P-single: Pr3c3 = se
P-single: Pr4c3 = nw
whip[1]: Pr3c3{se .} ==> Br3c3 ≠ n, Br3c3 ≠ ns
B-single: Br3c3 = nw
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 1, Pr4c4 ≠ sw, Pr4c4 ≠ ew
N-single: Nr3c3 = 2
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nes, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br4c3 ≠ n, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Pr4c3{nw .} ==> Br4c2 ≠ ne, Br4c2 ≠ nes, Br4c3 ≠ w, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw
whip[1]: Br4c3{se .} ==> Pr5c3 ≠ ne, Pr5c3 ≠ ns, Nr4c3 ≠ 3
whip[1]: Pr5c3{sw .} ==> Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br4c2 ≠ n, Br5c2 ≠ o, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ w
B-single: Br4c2 = ns
whip[1]: Br4c2{ns .} ==> Nr4c2 ≠ 3, Nr4c2 ≠ 1, Pr5c2 ≠ o, Pr5c2 ≠ sw
N-single: Nr4c2 = 2
whip[1]: Pr5c2{ew .} ==> Br5c1 ≠ sw, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ne
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Br5c3{nes .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ne, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr6c3 ≠ ns, Pr6c3 ≠ nw, Pr6c4 ≠ o, Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c4 ≠ sw
P-single: Pr6c4 = nw
w[1]-1-in-r6c3-asymmetric-ne-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ ns
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ s, Br6c3 ≠ e, Br5c4 ≠ s, Br5c4 ≠ e, Br5c4 ≠ n, Br5c4 ≠ o, Vr6c4 ≠ 1, Hr6c4 ≠ 1, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ nes, Br6c3 ≠ w
B-single: Br6c3 = n
whip[1]: Br6c3{n .} ==> Pr6c3 ≠ se, Pr7c3 ≠ ne, Pr7c4 ≠ ne, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr7c4 ≠ ew, Pr7c4 ≠ sw
P-single: Pr7c3 = sw
P-single: Pr6c3 = ew
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ ns, Br7c3 ≠ ne, Br7c3 ≠ s, Br7c3 ≠ e, Br7c3 ≠ n, Br7c3 ≠ o, Br7c2 ≠ ns, Br7c2 ≠ w, Br7c2 ≠ s, Br7c2 ≠ e, Br7c2 ≠ n, Br7c2 ≠ o, Br6c2 ≠ esw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes
B-single: Br6c2 = swn
whip[1]: Br6c2{swn .} ==> Pr7c2 ≠ sw, Pr7c2 ≠ ew, Pr7c2 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ ns, Pr7c2 ≠ o, Pr6c2 ≠ sw, Pr6c2 ≠ ew, Pr6c2 ≠ nw, Pr6c2 ≠ ns, Pr6c2 ≠ ne, Pr6c2 ≠ o
P-single: Pr6c2 = se
P-single: Pr7c2 = ne
whip[1]: Pr6c2{se .} ==> Br6c1 ≠ w, Br6c1 ≠ s, Br6c1 ≠ n, Br6c1 ≠ o, Br5c2 ≠ n, Br5c1 ≠ e, Br5c1 ≠ ns, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ esw, Br5c1 ≠ swn, Br5c2 ≠ ne, Br5c2 ≠ nw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ sw, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ nes
whip[1]: Br6c1{esw .} ==> Pr6c1 ≠ ne, Pr6c1 ≠ se, Nr6c1 ≠ 0
whip[1]: Br5c2{nes .} ==> Pr5c2 ≠ se, Nr5c2 ≠ 1
P-single: Pr5c2 = ew
whip[1]: Pr5c2{ew .} ==> Br4c1 ≠ w, Br4c1 ≠ o
whip[1]: Br4c1{sw .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ns, Nr4c1 ≠ 0
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 3
whip[1]: Pr7c2{ne .} ==> Br7c1 ≠ n, Br6c1 ≠ se, Br6c1 ≠ esw, Br7c1 ≠ e, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ ew, Br7c1 ≠ esw, Br7c1 ≠ swn, Br7c1 ≠ wne, Br7c1 ≠ nes, Br7c2 ≠ wne
whip[1]: Br7c2{nes .} ==> Pr8c2 ≠ ne, Pr8c2 ≠ ns, Pr8c2 ≠ nw, Pr8c3 ≠ o, Pr8c3 ≠ se, Pr8c3 ≠ ew, Pr8c3 ≠ sw, Nr7c2 ≠ 0, Nr7c2 ≠ 1
whip[1]: Pr8c3{nw .} ==> Br8c2 ≠ ne, Br8c2 ≠ wne, Br8c2 ≠ nes
whip[1]: Br7c1{sw .} ==> Pr7c1 ≠ ne, Pr7c1 ≠ se, Nr7c1 ≠ 3
whip[1]: Br6c1{ew .} ==> Nr6c1 ≠ 3
whip[1]: Br7c3{esw .} ==> Nr7c3 ≠ 0
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ nes, Br5c3 ≠ esw
B-single: Br5c3 = nes
B-single: Br5c2 = ns
whip[1]: Br5c3{nes .} ==> Pr5c4 ≠ se, Pr5c4 ≠ ns, Pr5c3 ≠ sw
P-single: Pr5c3 = ew
P-single: Pr5c4 = sw
whip[1]: Pr5c3{ew .} ==> Br4c3 ≠ e, Br4c3 ≠ o
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s, Br4c3 ≠ se, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ swn, Br4c4 ≠ wne, Br5c4 ≠ nw, Br5c4 ≠ wne
B-single: Br4c3 = s
whip[1]: Br4c3{s .} ==> Nr4c3 ≠ 2, Pr4c4 ≠ se
N-single: Nr4c3 = 1
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ s, Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ nes
whip[1]: Br3c4{ne .} ==> Pr4c5 ≠ nw, Nr3c4 ≠ 3, Pr4c5 ≠ ew, Pr4c5 ≠ sw
whip[1]: Br5c4{ew .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr5c5 ≠ sw, Pr6c5 ≠ nw, Pr6c5 ≠ ew, Pr6c5 ≠ sw, Nr5c4 ≠ 0, Nr5c4 ≠ 3
whip[1]: Br4c4{e .} ==> Nr4c4 ≠ 2, Nr4c4 ≠ 3
whip[1]: Br5c2{ns .} ==> Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Pr7c4{se .} ==> Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c4 ≠ n, Br7c4 ≠ w
whip[1]: Br2c1{wne .} ==> Pr2c1 ≠ o, Pr2c1 ≠ ne, Pr2c1 ≠ ns, Pr3c1 ≠ o, Pr3c1 ≠ se, Pr2c2 ≠ ns, Pr2c2 ≠ se
P-single: Pr2c1 = se
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ swn, Br1c1 ≠ wne
whip[1]: Br1c1{se .} ==> Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Nr1c1 ≠ 0, Nr1c1 ≠ 3
P-single: Pr1c1 = o
whip[1]: Pr2c2{ew .} ==> Vr2c2 ≠ 1, Br1c2 ≠ swn, Br2c1 ≠ wne
B-single: Br2c1 = swn
B-single: Br1c2 = wne
whip[1]: Br2c1{swn .} ==> Pr3c2 ≠ ns, Pr3c1 ≠ ns
P-single: Pr3c1 = ne
P-single: Pr3c2 = sw
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ e, Br3c1 ≠ ew, Br3c1 ≠ wne
B-single: Br3c1 = ne
whip[1]: Br3c1{ne .} ==> Nr3c1 ≠ 3, Nr3c1 ≠ 1, Pr4c1 ≠ ns
N-single: Nr3c1 = 2
P-single: Pr4c1 = o
whip[1]: Pr4c1{o .} ==> Br4c1 ≠ sw
B-single: Br4c1 = s
whip[1]: Br4c1{s .} ==> Nr4c1 ≠ 2, Pr5c1 ≠ ne
N-single: Nr4c1 = 1
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ n
B-single: Br5c1 = nw
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 1, Pr6c1 ≠ o
N-single: Nr5c1 = 2
diagonal-of-five-2s-in-nw-corner ==> Hr1c6 = 1
P-single: Pr6c1 = ns
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
same-colour-in-{r1 r2}c6 ==> Hr2c6 = 0
w[1]-2-in-r2c6-open-nw-corner ==> Vr2c7 = 1, Hr3c7 = 0, Vr3c7 = 0

LOOP[22]: Vr2c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Hr2c4-Vr1c5-Hr1c5-Hr1c6- ==> Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = out
no-vertical-line-r3{c7 c8} ==> Ir3c8 = out
no-vertical-line-r3{c8 c9} ==> Ir3c9 = out
no-horizontal-line-{r2 r3}c8 ==> Ir2c8 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = out
no-vertical-line-r4{c7 c8} ==> Ir4c7 = out
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = out
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = out
no-vertical-line-r6{c7 c8} ==> Ir6c8 = out
vertical-line-r6{c8 c9} ==> Ir6c9 = in
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-{r4 r5}c6 ==> Hr5c6 = 0
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1

LOOP[24]: Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7- ==> Vr1c8 = 0
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1

LOOP[26]: Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8- ==> Vr1c9 = 0
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
whip[1]: Hr1c6{1 .} ==> Br1c6 ≠ o, Br0c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se, Br1c6 ≠ e, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw
B-single: Br0c6 = s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ e, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ e
B-single: Br6c1 = ew
whip[1]: Br6c1{ew .} ==> Nr6c1 ≠ 1, Pr7c1 ≠ o
N-single: Nr6c1 = 2
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ o, Br7c1 ≠ s
whip[1]: Br7c1{sw .} ==> Pr8c1 ≠ o, Pr8c1 ≠ se, Nr7c1 ≠ 0
whip[1]: Pr8c1{ns .} ==> Br8c1 ≠ s, Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ swn, Br8c1 ≠ wne, Br8c1 ≠ o, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Hr2c6{0 .} ==> Pr2c6 ≠ ne, Pr2c6 ≠ ew, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Br1c6 ≠ ns, Br1c6 ≠ swn, Br1c6 ≠ nes, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ nw
whip[1]: Pr2c7{se .} ==> Br1c7 ≠ ne, Br1c7 ≠ sw, Br1c7 ≠ esw, Br2c6 ≠ sw, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ se, Br2c7 ≠ nes, Br1c7 ≠ n, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ e, Br2c7 ≠ s
whip[1]: Br2c7{wne .} ==> Pr3c7 ≠ ew, Pr3c7 ≠ sw, Nr2c7 ≠ 0
whip[1]: Pr3c7{nw .} ==> Br3c6 ≠ ne, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ nw, Br3c7 ≠ swn, Br3c7 ≠ wne
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ se
whip[1]: Hr3c7{0 .} ==> Pr3c7 ≠ ne, Pr3c8 ≠ nw, Pr3c8 ≠ ew, Pr3c8 ≠ sw, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br3c7 ≠ n, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nes
whip[1]: Pr3c7{nw .} ==> Br3c6 ≠ w, Br3c6 ≠ sw, Br3c6 ≠ o, Br3c6 ≠ s
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 0
whip[1]: Vr3c7{0 .} ==> Pr3c7 ≠ ns, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ nw, Br3c6 ≠ e, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c7 ≠ w, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw
P-single: Pr1c5 = se
P-single: Pr2c6 = o
P-single: Pr3c7 = nw
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ s, Br1c4 ≠ n, Br1c4 ≠ o, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nes, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ ew, Br1c5 ≠ sw
B-single: Br1c5 = nw
whip[1]: Br1c5{nw .} ==> Pr2c5 ≠ ew, Pr2c5 ≠ se, Pr1c6 ≠ se, Hr2c5 ≠ 1
P-single: Pr1c6 = ew
whip[1]: Pr1c6{ew .} ==> Br1c6 ≠ nw, Br1c6 ≠ wne
whip[1]: Br1c6{ne .} ==> Nr1c6 ≠ 3
whip[1]: Br1c4{se .} ==> Pr1c4 ≠ ew, Nr1c4 ≠ 0, Nr1c4 ≠ 3
P-single: Pr1c4 = o
whip[1]: Pr1c4{o .} ==> Br1c3 ≠ ns, Br1c3 ≠ swn
whip[1]: Br1c3{sw .} ==> Pr1c3 ≠ se, Pr1c3 ≠ ew, Nr1c3 ≠ 0, Nr1c3 ≠ 3
whip[1]: Pr2c6{o .} ==> Vr2c6 ≠ 1, Br2c6 ≠ ew
B-single: Br2c6 = se
whip[1]: Br2c6{se .} ==> Pr3c6 ≠ nw, Pr3c6 ≠ ns
whip[1]: Pr3c6{ew .} ==> Br3c5 ≠ wne, Br3c5 ≠ nes
whip[1]: Br3c5{swn .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ew, Pr4c5 ≠ o, Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr4c6 ≠ o, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ se
P-single: Pr4c5 = ne
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ o, Br3c4 ≠ n, Br3c4 ≠ o, Br4c4 ≠ e, Br4c5 ≠ e, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne
B-single: Br4c4 = o
whip[1]: Br4c4{o .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ ns, Nr4c4 ≠ 1
N-single: Nr4c4 = 0
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ nes, Br5c5 ≠ n, Br5c5 ≠ w
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Br3c4{ne .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ swn, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Br3c6{nw .} ==> Nr3c6 ≠ 3
whip[1]: Pr3c5{sw .} ==> Hr3c5 ≠ 1, Br3c5 ≠ swn
B-single: Br3c5 = esw
whip[1]: Br3c5{esw .} ==> Pr4c6 ≠ sw, Pr4c6 ≠ ew, Pr3c6 ≠ ew
P-single: Pr3c6 = se
P-single: Pr4c6 = nw
whip[1]: Pr3c6{se .} ==> Br3c6 ≠ n, Br3c6 ≠ ns
B-single: Br3c6 = nw
whip[1]: Br3c6{nw .} ==> Nr3c6 ≠ 1, Pr4c7 ≠ sw, Pr4c7 ≠ ew
N-single: Nr3c6 = 2
whip[1]: Pr4c7{se .} ==> Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nes, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ nes, Br4c6 ≠ n, Br4c7 ≠ n, Br4c7 ≠ w
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ ne, Br4c5 ≠ nes, Br4c6 ≠ w, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw
whip[1]: Br4c6{se .} ==> Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Nr4c6 ≠ 3
whip[1]: Br4c5{ns .} ==> Nr4c5 ≠ 3
whip[1]: Br3c7{se .} ==> Nr3c7 ≠ 3
whip[1]: Vr1c7{0 .} ==> Pr1c7 ≠ sw, Pr2c7 ≠ ns, Br1c6 ≠ ne, Br1c7 ≠ w, Br1c7 ≠ ew
P-single: Pr2c7 = se
P-single: Pr1c7 = ew
B-single: Br1c6 = n
whip[1]: Pr2c7{se .} ==> Br2c7 ≠ w, Br2c7 ≠ ew
whip[1]: Br2c7{wne .} ==> Pr2c8 ≠ ns, Pr2c8 ≠ se, Nr2c7 ≠ 1
whip[1]: Pr2c8{ew .} ==> Br1c8 ≠ sw, Br2c7 ≠ wne, Br1c8 ≠ ne, Br2c8 ≠ w
B-single: Br2c7 = nw
whip[1]: Br2c7{nw .} ==> Nr2c7 ≠ 3, Pr3c8 ≠ ns, Pr3c8 ≠ ne
N-single: Nr2c7 = 2
whip[1]: Br2c8{s .} ==> Pr2c9 ≠ sw, Pr3c9 ≠ nw
whip[1]: Pr2c9{ew .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br2c9 ≠ nw, Br2c9 ≠ se, Br1c9 ≠ o, Br1c9 ≠ n, Br1c9 ≠ e, Br1c9 ≠ ne
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Br1c6{n .} ==> Nr1c6 ≠ 2
N-single: Nr1c6 = 1
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 1
whip[1]: Hr4c9{1 .} ==> Br4c9 ≠ o, Br3c9 ≠ o, Pr4c9 ≠ o, Pr4c9 ≠ ns, Pr4c9 ≠ nw, Pr4c9 ≠ sw, Pr4c10 ≠ o, Pr4c10 ≠ ne, Pr4c10 ≠ ns, Pr4c10 ≠ se, Br3c9 ≠ n, Br3c9 ≠ e, Br3c9 ≠ w, Br3c9 ≠ ne, Br3c9 ≠ nw, Br3c9 ≠ ew, Br3c9 ≠ wne, Br4c9 ≠ e, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ sw, Br4c9 ≠ esw
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Pr4c10{sw .} ==> Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br4c10 ≠ nw, Br4c10 ≠ swn, Br4c10 ≠ wne
whip[1]: Pr4c9{ew .} ==> Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c8 ≠ ne
whip[1]: Vr5c11{1 .} ==> Br5c10 ≠ o, Br5c11 ≠ o, Pr5c11 ≠ o, Pr5c11 ≠ nw, Pr6c11 ≠ o, Pr6c11 ≠ sw, Br5c10 ≠ n, Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ ns, Br5c10 ≠ nw, Br5c10 ≠ sw, Br5c10 ≠ swn
B-single: Br5c11 = w
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ w, Br6c10 ≠ ne, Br6c10 ≠ sw, Br6c10 ≠ wne, Br6c10 ≠ nes, Br6c10 ≠ o, Br6c10 ≠ s
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 0
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ se, Br4c10 ≠ esw, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ n, Br4c10 ≠ w
whip[1]: Br4c10{sw .} ==> Nr4c10 ≠ 0, Nr4c10 ≠ 3
whip[1]: Hr5c6{0 .} ==> Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c7 ≠ nw, Pr5c7 ≠ ew, Pr5c7 ≠ sw, Br4c6 ≠ s, Br4c6 ≠ se, Br5c6 ≠ n, Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ nw, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br4c6{e .} ==> Nr4c6 ≠ 2
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ e
whip[1]: Br5c5{wne .} ==> Pr6c5 ≠ ne, Pr6c6 ≠ nw, Nr5c5 ≠ 2
whip[1]: Pr6c5{se .} ==> Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ nes, Br6c5 ≠ n
whip[1]: Vr4c7{0 .} ==> Pr4c7 ≠ se, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Br4c6 ≠ e, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne
P-single: Pr4c7 = o
B-single: Br4c6 = o
w[1]-1-in-r5c7-symmetric-nw-corner ==> Pr6c8 ≠ nw, Pr6c8 ≠ o
whip[1]: Pr4c7{o .} ==> Br3c7 ≠ s, Br3c7 ≠ se
whip[1]: Br3c7{e .} ==> Nr3c7 ≠ 2, Pr4c8 ≠ nw, Pr4c8 ≠ ew, Pr4c8 ≠ sw
whip[1]: Br4c6{o .} ==> Nr4c6 ≠ 1
N-single: Nr4c6 = 0
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ nw, Br6c8 ≠ se, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ o, Br7c9 ≠ e, Br7c9 ≠ s
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{s .} ==> Pr6c7 ≠ ne, Pr6c7 ≠ ns, Pr5c7 ≠ se, Pr5c8 ≠ nw, Pr5c8 ≠ ew, Pr5c8 ≠ sw, Pr6c7 ≠ nw
P-single: Pr5c7 = o
whip[1]: Pr5c7{o .} ==> Br4c7 ≠ s, Br4c7 ≠ se, Br5c6 ≠ e, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ esw
whip[1]: Br5c6{sw .} ==> Nr5c6 ≠ 3
whip[1]: Br4c7{e .} ==> Nr4c7 ≠ 2, Nr4c7 ≠ 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Vr1c8{0 .} ==> Pr1c8 ≠ sw, Pr2c8 ≠ nw, Br1c7 ≠ nes, Br1c8 ≠ ew
P-single: Pr2c8 = ew
P-single: Pr1c8 = ew
B-single: Br1c8 = ns
B-single: Br1c7 = ns
w[1]-1-in-r2c8-asymmetric-nw-corner ==> Pr3c9 ≠ sw, Pr3c9 ≠ ew, Pr3c9 ≠ ns, Pr3c9 ≠ ne
whip[1]: Pr2c8{ew .} ==> Br2c8 ≠ s, Br2c8 ≠ e
B-single: Br2c8 = n
whip[1]: Br2c8{n .} ==> Vr2c9 ≠ 1, Hr3c8 ≠ 1, Pr2c9 ≠ ne, Pr2c9 ≠ ns, Pr3c8 ≠ se
V-single: Vr2c9 = 0
P-single: Pr3c8 = o
P-single: Pr2c9 = ew
no-vertical-line-r2{c8 c9} ==> Ir2c9 = out
same-colour-in-{r2 r3}c9 ==> Hr3c9 = 0
w[1]-2-in-r2c9-open-sw-corner ==> Hr2c9 = 1, Vr2c10 = 1, Hr2c10 = 0, Vr1c10 = 0
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r1 r2}c10 ==> Ir2c10 = in
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1

LOOP[32]: Vr2c10-Hr2c9-Hr2c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11- ==> Hr3c10 = 0
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
whip[1]: Vr2c9{0 .} ==> Br2c9 ≠ ew, Br2c9 ≠ sw
whip[1]: Br2c9{ns .} ==> Pr2c10 ≠ ns, Pr2c10 ≠ se
whip[1]: Pr2c10{sw .} ==> Br1c9 ≠ nw, Br1c9 ≠ ew, Br1c9 ≠ wne, Br1c10 ≠ sw, Br2c10 ≠ nw, Br2c10 ≠ swn, Br2c10 ≠ wne, Br1c9 ≠ w
whip[1]: Pr3c8{o .} ==> Vr3c8 ≠ 1, Br3c7 ≠ e
B-single: Br3c7 = o
whip[1]: Br3c7{o .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ ns, Nr3c7 ≠ 1
N-single: Nr3c7 = 0
whip[1]: Pr4c8{se .} ==> Br4c8 ≠ ns, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Pr2c9{ew .} ==> Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ swn
whip[1]: Br1c9{nes .} ==> Pr1c9 ≠ se
P-single: Pr1c9 = ew
whip[1]: Pr1c9{ew .} ==> Br1c9 ≠ s, Br1c9 ≠ se
whip[1]: Br1c9{nes .} ==> Pr1c10 ≠ o, Pr1c10 ≠ se, Nr1c9 ≠ 1
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ wne, Br1c10 ≠ o, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Pr2c11 ≠ sw, Nr1c10 ≠ 0
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ ne, Br2c10 ≠ nes
whip[1]: Hr3c9{0 .} ==> Pr3c9 ≠ se, Pr3c10 ≠ ew, Pr3c10 ≠ sw, Br2c9 ≠ ns, Br3c9 ≠ ns, Br3c9 ≠ swn, Br3c9 ≠ nes
P-single: Pr2c10 = sw
P-single: Pr3c9 = o
B-single: Br2c9 = ne
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ s, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br1c10 ≠ w, Br1c9 ≠ nes, Br1c10 ≠ nes, Br2c10 ≠ se
B-single: Br1c10 = ne
B-single: Br1c9 = ns
whip[1]: Br1c10{ne .} ==> Nr1c10 ≠ 3, Nr1c10 ≠ 1, Pr2c11 ≠ nw, Pr2c11 ≠ o, Pr1c11 ≠ o, Pr1c10 ≠ sw
N-single: Nr1c10 = 2
P-single: Pr1c10 = ew
P-single: Pr1c11 = sw
P-single: Pr2c11 = ns
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ w, Br2c10 ≠ sw
whip[1]: Br2c10{esw .} ==> Pr3c11 ≠ o, Pr3c11 ≠ sw, Nr2c10 ≠ 0, Nr2c10 ≠ 1
whip[1]: Pr3c11{nw .} ==> Br3c10 ≠ w, Br3c10 ≠ ne, Br3c10 ≠ wne, Br3c10 ≠ nes, Br3c10 ≠ o, Br3c10 ≠ s
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 0, Nr3c10 ≠ 3
whip[1]: Br1c9{ns .} ==> Nr1c9 ≠ 3
N-single: Nr1c9 = 2
whip[1]: Pr3c9{o .} ==> Vr3c9 ≠ 1, Br3c9 ≠ sw, Br3c9 ≠ esw
whip[1]: Br3c9{se .} ==> Pr4c9 ≠ ne, Nr3c9 ≠ 3
whip[1]: Pr4c9{ew .} ==> Br4c8 ≠ o, Br4c8 ≠ s
whip[1]: Br4c8{swn .} ==> Nr4c8 ≠ 0
whip[1]: Pr3c10{ns .} ==> Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ e
whip[1]: Br3c10{ew .} ==> Pr4c11 ≠ nw
whip[1]: Pr4c11{sw .} ==> Br4c10 ≠ ns
whip[1]: Vr2c11{1 .} ==> Br2c11 ≠ o
B-single: Br2c11 = w
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Hr3c10{0 .} ==> Pr3c11 ≠ nw, Pr3c10 ≠ ne, Br2c10 ≠ esw, Br3c10 ≠ n, Br3c10 ≠ ns
P-single: Pr3c10 = ns
P-single: Pr3c11 = ns
B-single: Br3c10 = ew
B-single: Br2c10 = ew
whip[1]: Pr3c10{ns .} ==> Br3c9 ≠ s
B-single: Br3c9 = se
whip[1]: Br3c9{se .} ==> Nr3c9 ≠ 1, Pr4c10 ≠ sw, Pr4c10 ≠ ew
N-single: Nr3c9 = 2
P-single: Pr4c10 = nw
whip[1]: Pr4c10{nw .} ==> Br4c9 ≠ ne, Br4c9 ≠ wne, Br4c9 ≠ nes, Br4c10 ≠ ne, Br4c10 ≠ ew, Br4c10 ≠ sw
whip[1]: Br4c10{s .} ==> Pr5c10 ≠ ne, Pr5c10 ≠ ns, Nr4c10 ≠ 2, Pr4c11 ≠ sw, Pr5c10 ≠ nw
N-single: Nr4c10 = 1
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 1, Pr4c11 ≠ o
N-single: Nr3c10 = 2
P-single: Pr4c11 = ns
w[1]-1-in-r4c10-asymmetric-ne-corner ==> Pr5c10 ≠ ew, Pr5c10 ≠ se
whip[1]: Pr4c11{ns .} ==> Br4c10 ≠ s
B-single: Br4c10 = e
whip[1]: Br4c10{e .} ==> Pr5c11 ≠ sw
P-single: Pr5c11 = ns
whip[1]: Pr5c11{ns .} ==> Br5c10 ≠ ne, Br5c10 ≠ wne, Br5c10 ≠ nes
whip[1]: Br2c10{ew .} ==> Nr2c10 ≠ 3
N-single: Nr2c10 = 2
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o
B-single: Br4c11 = w
whip[1]: Br1c7{ns .} ==> Nr1c7 ≠ 3
N-single: Nr1c7 = 2
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o
B-single: Br0c9 = s
whip[1]: Br1c2{wne .} ==> Pr2c3 ≠ ew, Pr2c2 ≠ ew, Pr1c3 ≠ o, Pr1c2 ≠ o, Hr2c2 ≠ 1
P-single: Pr1c2 = se
P-single: Pr1c3 = sw
P-single: Pr2c2 = nw
P-single: Pr2c3 = ne
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ s
B-single: Br1c1 = se
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 1
N-single: Nr1c1 = 2
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ s
B-single: Br1c3 = sw
whip[1]: Br1c3{sw .} ==> Nr1c3 ≠ 1
N-single: Nr1c3 = 2
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Vr7c4{0 .} ==> Br7c4 ≠ wne, Pr7c4 ≠ se, Pr8c4 ≠ ne, Pr8c4 ≠ ns, Pr8c4 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ esw, Br7c4 ≠ nw, Br7c4 ≠ swn
P-single: Pr7c4 = o
whip[1]: Pr7c4{o .} ==> Hr7c4 ≠ 1
whip[1]: Br7c4{se .} ==> Pr7c5 ≠ nw, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Nr7c4 ≠ 3
whip[1]: Br7c3{sw .} ==> Nr7c3 ≠ 3
whip[1]: Vr10c11{0 .} ==> Br10c10 ≠ nes, Br10c11 ≠ w, Pr11c11 ≠ nw, Pr10c11 ≠ ns, Pr10c11 ≠ sw, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr8c9 = se
P-single: Pr9c10 = o
P-single: Pr10c11 = nw
P-single: Pr11c11 = o
B-single: Br10c11 = o
whip[1]: Pr8c9{se .} ==> Br8c8 ≠ w, Br8c8 ≠ s, Br8c8 ≠ n, Br8c8 ≠ o, Br7c9 ≠ w, Br7c9 ≠ n, Br7c8 ≠ s, Br7c8 ≠ e, Vr8c9 ≠ 0, Vr7c9 ≠ 1, Hr8c9 ≠ 0, Hr8c8 ≠ 1, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ ne, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ sw, Br8c8 ≠ swn, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw
H-single: Hr8c8 = 0
H-single: Hr8c9 = 1
V-single: Vr7c9 = 0
V-single: Vr8c9 = 1
B-single: Br8c9 = nw
vertical-line-r8{c8 c9} ==> Ir8c8 = out
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
no-vertical-line-r7{c8 c9} ==> Ir7c9 = out
different-colours-in-{r6 r7}c9 ==> Hr7c9 = 1

XTD-LOOP[44]: Vr5c11-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Hr4c9-Vr4c9-Hr5c8-Vr5c8-Hr6c8-Vr6c9-Hr7c9- ==> Vr6c10-Hr6c10 = 0
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1

LOOP[44]: Vr6c11-Vr5c11-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Hr4c9-Vr4c9-Hr5c8-Vr5c8-Hr6c8-Vr6c9-Hr7c9- ==> Hr7c10 = 0
no-horizontal-line-{r6 r7}c10 ==> Ir7c10 = in
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
different-colours-in-r7{c9 c10} ==> Hr7c10 = 1
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
same-colour-in-{r8 r9}c10 ==> Hr9c10 = 0
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1

LOOP[56]: Hr9c8-Vr8c9-Hr8c9-Vr7c10-Hr7c9-Vr6c9-Hr6c8-Vr5c8-Hr5c8-Vr4c9-Hr4c9-Vr3c10-Vr2c10-Hr2c9-Hr2c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Vr5c11-Vr6c11-Vr7c11-Vr8c11-Vr9c11-Hr10c10-Vr10c10-Hr11c9-Vr10c9-Hr10c8- ==> Vr9c8 = 0
no-vertical-line-r9{c7 c8} ==> Ir9c7 = in
whip[1]: Hr8c8{0 .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ se, Pr8c8 ≠ ew
whip[1]: Hr8c9{1 .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ se
whip[1]: Pr8c10{ew .} ==> Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c10 ≠ swn, Br8c10 ≠ nw, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ e, Br7c10 ≠ ne, Br8c10 ≠ w
whip[1]: Br7c10{nes .} ==> Nr7c10 ≠ 0
whip[1]: Vr7c9{0 .} ==> Pr7c9 ≠ ns, Pr7c9 ≠ sw
whip[1]: Pr7c9{ew .} ==> Br6c9 ≠ nw, Br6c9 ≠ ew, Br6c9 ≠ wne, Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ e, Br6c9 ≠ w, Br6c9 ≠ ne
whip[1]: Br6c9{nes .} ==> Pr7c10 ≠ o, Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr7c10 ≠ se, Nr6c9 ≠ 0
whip[1]: Pr7c10{sw .} ==> Br6c10 ≠ esw, Br6c10 ≠ swn, Br7c10 ≠ nw, Br7c10 ≠ wne
whip[1]: Br6c10{ew .} ==> Nr6c10 ≠ 3
whip[1]: Vr8c9{1 .} ==> Pr9c9 ≠ se, Pr9c9 ≠ ew
whip[1]: Pr9c9{nw .} ==> Hr9c9 ≠ 1, Br9c8 ≠ w, Br9c8 ≠ ne, Br9c8 ≠ sw, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c8 ≠ o, Br9c8 ≠ s
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 0
whip[1]: Hr7c8{0 .} ==> Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c9 ≠ ew, Br6c8 ≠ ns, Br6c8 ≠ sw, Br7c8 ≠ n, Br7c8 ≠ nw
P-single: Pr7c9 = ne
whip[1]: Pr7c9{ne .} ==> Br6c9 ≠ s, Br6c9 ≠ ns, Br6c9 ≠ se, Br6c9 ≠ nes
whip[1]: Br6c9{swn .} ==> Pr6c9 ≠ ew, Pr6c10 ≠ sw, Nr6c9 ≠ 1
whip[1]: Pr6c9{sw .} ==> Hr6c9 ≠ 1, Br5c8 ≠ esw, Br5c8 ≠ nes, Br6c9 ≠ swn
whip[1]: Br6c9{esw .} ==> Pr6c10 ≠ nw, Pr6c10 ≠ ew
whip[1]: Br5c8{wne .} ==> Pr5c8 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c9 ≠ ns, Pr5c9 ≠ se, Pr6c8 ≠ ew, Pr6c8 ≠ sw
P-single: Pr5c8 = se
w[1]-1-in-r5c7-asymmetric-ne-corner ==> Pr6c7 ≠ ew, Pr6c7 ≠ se
whip[1]: Pr5c8{se .} ==> Br5c7 ≠ s, Br4c8 ≠ e, Br4c7 ≠ e, Br4c8 ≠ nw, Br4c8 ≠ swn
B-single: Br4c8 = se
B-single: Br4c7 = o
B-single: Br5c7 = e
whip[1]: Br4c8{se .} ==> Nr4c8 ≠ 3, Nr4c8 ≠ 1, Pr5c9 ≠ ew, Pr4c9 ≠ ew, Pr4c8 ≠ se, Hr4c8 ≠ 1
N-single: Nr4c8 = 2
P-single: Pr4c8 = o
P-single: Pr4c9 = se
P-single: Pr5c9 = nw
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ n, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 1
whip[1]: Pr5c9{nw .} ==> Vr5c9 ≠ 1, Hr5c9 ≠ 1, Br4c9 ≠ swn, Br5c8 ≠ wne
B-single: Br5c8 = swn
B-single: Br4c9 = nw
whip[1]: Br5c8{swn .} ==> Pr6c9 ≠ ns, Pr6c8 ≠ ns
P-single: Pr6c8 = ne
P-single: Pr6c9 = sw
whip[1]: Pr6c8{ne .} ==> Br6c7 ≠ n, Br6c7 ≠ e, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ ew
B-single: Br6c8 = ne
whip[1]: Br6c7{sw .} ==> Nr6c7 ≠ 3
whip[1]: Pr7c8{sw .} ==> Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ n, Br7c7 ≠ e, Br7c7 ≠ ns
whip[1]: Br4c9{nw .} ==> Nr4c9 ≠ 3, Pr5c10 ≠ sw
N-single: Nr4c9 = 2
P-single: Pr5c10 = o
whip[1]: Pr5c10{o .} ==> Vr5c10 ≠ 1, Br5c10 ≠ ew, Br5c10 ≠ esw
whip[1]: Br5c10{se .} ==> Pr6c10 ≠ ne, Pr6c10 ≠ ns, Nr5c10 ≠ 3
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ ns, Br6c10 ≠ ew, Br6c10 ≠ n
whip[1]: Br6c10{se .} ==> Pr7c11 ≠ sw
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ nes
whip[1]: Br7c10{ew .} ==> Nr7c10 ≠ 3
whip[1]: Br4c7{o .} ==> Nr4c7 ≠ 1
N-single: Nr4c7 = 0
whip[1]: Pr6c7{sw .} ==> Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ n, Br6c6 ≠ e, Br6c6 ≠ ns
whip[1]: Br7c8{w .} ==> Nr7c8 ≠ 2, Nr7c8 ≠ 3
whip[1]: Vr6c10{0 .} ==> Pr6c10 ≠ se, Pr7c10 ≠ nw, Br6c9 ≠ esw, Br6c10 ≠ nw
P-single: Pr6c10 = o
B-single: Br6c9 = sw
whip[1]: Pr6c10{o .} ==> Br5c10 ≠ se
B-single: Br5c10 = e
whip[1]: Br5c10{e .} ==> Nr5c10 ≠ 2, Pr6c11 ≠ nw
N-single: Nr5c10 = 1
P-single: Pr6c11 = ns
whip[1]: Br6c9{sw .} ==> Nr6c9 ≠ 3
N-single: Nr6c9 = 2
whip[1]: Br6c10{se .} ==> Pr7c11 ≠ o
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ w, Br7c10 ≠ s
whip[1]: Br7c10{ew .} ==> Pr8c11 ≠ o, Nr7c10 ≠ 1
N-single: Nr7c10 = 2
whip[1]: Pr8c11{sw .} ==> Br7c10 ≠ se, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ s, Br8c10 ≠ ns
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Hr7c10{0 .} ==> Pr7c11 ≠ nw, Pr7c10 ≠ ew, Br6c10 ≠ se, Br7c10 ≠ ns
P-single: Pr7c10 = sw
P-single: Pr7c11 = ns
B-single: Br7c10 = ew
B-single: Br6c10 = e
whip[1]: Pr7c10{sw .} ==> Br7c9 ≠ ns
B-single: Br7c9 = nes
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 2, Nr7c9 ≠ 1, Pr8c10 ≠ ew
N-single: Nr7c9 = 3
P-single: Pr8c10 = nw
whip[1]: Pr8c10{nw .} ==> Br8c10 ≠ ne, Br8c10 ≠ nes
whip[1]: Br8c10{se .} ==> Pr8c11 ≠ sw, Nr8c10 ≠ 3
P-single: Pr8c11 = ns
whip[1]: Br6c10{e .} ==> Nr6c10 ≠ 2
N-single: Nr6c10 = 1
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Hr9c10{0 .} ==> Pr9c11 ≠ nw, Br8c10 ≠ se, Br9c10 ≠ ne, Br9c10 ≠ ns, Br9c10 ≠ nw
P-single: Pr9c11 = ns
B-single: Br8c10 = e
whip[1]: Pr9c11{ns .} ==> Br9c10 ≠ sw
whip[1]: Br8c10{e .} ==> Nr8c10 ≠ 2
N-single: Nr8c10 = 1
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Hr9c8{1 .} ==> Pr9c8 ≠ o, Pr9c8 ≠ ns, Pr9c8 ≠ nw, Pr9c9 ≠ ns, Br8c8 ≠ e, Br8c8 ≠ ew, Br9c8 ≠ e, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw
P-single: Pr9c9 = nw
whip[1]: Pr9c9{nw .} ==> Vr9c9 ≠ 1
whip[1]: Br9c8{swn .} ==> Pr10c9 ≠ ne, Pr10c9 ≠ ns
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br9c8 ≠ n, Br10c8 ≠ o, Br10c8 ≠ e, Br10c8 ≠ s, Br10c8 ≠ w
whip[1]: Br10c8{nes .} ==> Pr10c8 ≠ o, Pr10c8 ≠ ns, Pr10c8 ≠ sw, Nr10c8 ≠ 0
whip[1]: Pr10c8{ew .} ==> Br9c7 ≠ se, Br10c7 ≠ wne, Br10c7 ≠ nes, Br10c7 ≠ ne
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 1
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ o, Pr11c9 ≠ nw, Pr11c10 ≠ o, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Pr10c10 ≠ nw, Pr10c10 ≠ ew
P-single: Pr11c10 = nw
whip[1]: Pr11c10{nw .} ==> Br10c10 ≠ n, Br10c10 ≠ o, Br11c10 ≠ n, Br11c9 ≠ o
B-single: Br11c9 = n
B-single: Br11c10 = o
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 0, Nr10c10 ≠ 3
whip[1]: Pr10c10{se .} ==> Hr10c9 ≠ 1, Br10c9 ≠ nes
B-single: Br10c9 = esw
whip[1]: Br10c9{esw .} ==> Pr10c9 ≠ ew, Pr11c9 ≠ ew
P-single: Pr11c9 = ne
P-single: Pr10c9 = sw
whip[1]: Pr11c9{ne .} ==> Br10c8 ≠ n, Br11c8 ≠ n, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ nes
B-single: Br11c8 = o
whip[1]: Br11c8{o .} ==> Pr11c8 ≠ ne, Pr11c8 ≠ ew
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 1
whip[1]: Br8c8{esw .} ==> Nr8c8 ≠ 0, Nr8c8 ≠ 1
whip[1]: Pr9c8{ew .} ==> Br8c7 ≠ se, Br8c7 ≠ esw, Br8c7 ≠ nes, Br9c7 ≠ ne
whip[1]: Vr9c8{0 .} ==> Pr9c8 ≠ se, Pr10c8 ≠ ne, Br9c7 ≠ ew, Br9c8 ≠ swn
B-single: Br9c8 = ns
whip[1]: Br9c8{ns .} ==> Nr9c8 ≠ 3
N-single: Nr9c8 = 2
whip[1]: Pr10c8{ew .} ==> Br10c7 ≠ o, Br10c7 ≠ w
whip[1]: Br10c7{esw .} ==> Nr10c7 ≠ 0
whip[1]: Pr9c8{ew .} ==> Br8c7 ≠ nw, Br8c7 ≠ o, Br8c7 ≠ n, Br8c7 ≠ w
whip[1]: Br8c7{wne .} ==> Nr8c7 ≠ 0
whip[1]: Pr9c7{ew .} ==> Br8c7 ≠ e, Br8c7 ≠ ne, Br9c6 ≠ ne
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nw, Br10c7 ≠ nw, Br10c6 ≠ ne
whip[1]: Br10c6{sw .} ==> Pr11c6 ≠ o
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ nw, Br10c5 ≠ o, Br10c5 ≠ n, Br10c5 ≠ w
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Br10c7{esw .} ==> Pr11c7 ≠ nw
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ se
whip[1]: Br10c6{sw .} ==> Pr10c6 ≠ nw
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ wne, Br10c5 ≠ nes, Br10c5 ≠ ne
whip[1]: Pr9c10{o .} ==> Vr9c10 ≠ 1, Br9c10 ≠ ew
B-single: Br9c10 = se
whip[1]: Br9c10{se .} ==> Pr10c10 ≠ ns
P-single: Pr10c10 = se
whip[1]: Pr10c10{se .} ==> Br10c10 ≠ w
B-single: Br10c10 = nw
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 1
N-single: Nr10c10 = 2
whip[1]: Hr2c4{1 .} ==> Br2c4 ≠ ew, Pr2c4 ≠ sw, Pr2c5 ≠ ns, Br1c4 ≠ e
P-single: Pr2c5 = nw
P-single: Pr2c4 = ew
B-single: Br1c4 = se
B-single: Br2c4 = ns
whip[1]: Pr2c5{nw .} ==> Vr2c5 ≠ 1
whip[1]: Pr2c4{ew .} ==> Br2c3 ≠ nes
B-single: Br2c3 = ns
whip[1]: Br2c3{ns .} ==> Nr2c3 ≠ 3, Pr3c4 ≠ nw
N-single: Nr2c3 = 2
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br3c4 ≠ e
B-single: Br3c4 = ne
whip[1]: Br3c4{ne .} ==> Nr3c4 ≠ 1, Pr3c5 ≠ ns
N-single: Nr3c4 = 2
P-single: Pr3c5 = sw
whip[1]: Br1c4{se .} ==> Nr1c4 ≠ 1
N-single: Nr1c4 = 2
whip[1]: Vr8c3{0 .} ==> Br8c3 ≠ w, Pr8c3 ≠ ns, Pr9c3 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Br8c2 ≠ e, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw
whip[1]: Br8c3{s .} ==> Pr8c4 ≠ sw, Pr9c4 ≠ nw
whip[1]: Pr8c4{ew .} ==> Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ w
whip[1]: Vr10c3{0 .} ==> Br10c3 ≠ w, Pr11c3 ≠ ne, Pr11c3 ≠ nw, Pr10c3 ≠ ns, Pr10c3 ≠ se, Pr10c3 ≠ sw, Br10c2 ≠ e, Br10c2 ≠ ne, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ esw, Br10c2 ≠ wne, Br10c2 ≠ nes
whip[1]: Br10c3{s .} ==> Pr11c4 ≠ nw, Pr10c4 ≠ sw
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ w
whip[1]: Vr9c2{1 .} ==> Br9c2 ≠ nes, Br9c1 ≠ o, Pr9c2 ≠ o, Pr9c2 ≠ ne, Pr9c2 ≠ nw, Pr9c2 ≠ ew, Pr10c2 ≠ o, Pr10c2 ≠ se, Pr10c2 ≠ ew, Pr10c2 ≠ sw, Br9c1 ≠ n, Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ sw, Br9c1 ≠ swn
whip[1]: Br9c1{nes .} ==> Nr9c1 ≠ 0
whip[1]: Pr10c2{nw .} ==> Br10c1 ≠ ne, Br10c2 ≠ nw, Br10c2 ≠ swn
whip[1]: Br10c2{sw .} ==> Nr10c2 ≠ 3
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ esw, Br8c1 ≠ nes, Br8c2 ≠ sw, Br8c2 ≠ swn
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 3
whip[1]: Br8c1{sw .} ==> Nr8c1 ≠ 3
whip[1]: Br9c2{wne .} ==> Pr9c3 ≠ o, Pr10c3 ≠ o
whip[1]: Vr9c3{1 .} ==> Br9c3 ≠ nes, Pr9c3 ≠ ew, Pr10c3 ≠ ew, Br9c2 ≠ swn
whip[1]: Br9c3{wne .} ==> Pr9c4 ≠ o, Pr9c4 ≠ ne, Pr10c4 ≠ o, Pr10c4 ≠ se
whip[1]: Pr10c4{ew .} ==> Br10c4 ≠ swn, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ e, Br9c4 ≠ ne
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Pr9c4{sw .} ==> Br8c4 ≠ swn, Br9c4 ≠ se, Br9c4 ≠ s
whip[1]: Vr9c4{1 .} ==> Br9c4 ≠ nes, Pr9c4 ≠ ew, Pr10c4 ≠ ew, Br9c3 ≠ swn, Br9c4 ≠ ns
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ wne, Vr6c5 ≠ 1, Pr6c5 ≠ ns, Pr6c5 ≠ se, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Br6c5 ≠ w, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn
P-single: Pr6c5 = o
whip[1]: Pr6c5{o .} ==> Vr5c5 ≠ 1, Hr6c5 ≠ 1, Br5c4 ≠ ew, Br5c5 ≠ s, Br5c5 ≠ wne
H-single: Hr6c5 = 0
V-single: Vr5c5 = 0
B-single: Br5c5 = o
B-single: Br5c4 = w
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
3-in-r3c5-no-U-turn-from-south ==> Hr5c5 = O
whip[1]: Hr6c5{0 .} ==> Pr6c6 ≠ ew, Pr6c6 ≠ sw
whip[1]: Vr5c5{0 .} ==> Pr5c5 ≠ se
P-single: Pr5c5 = o
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ ns
B-single: Br4c5 = n
whip[1]: Br4c5{n .} ==> Pr5c6 ≠ sw, Nr4c5 ≠ 2
N-single: Nr4c5 = 1
P-single: Pr5c6 = o
whip[1]: Pr5c6{o .} ==> Br5c6 ≠ w, Br5c6 ≠ sw
whip[1]: Br5c6{s .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ ns, Nr5c6 ≠ 2
whip[1]: Pr6c6{se .} ==> Br6c6 ≠ ne, Br6c6 ≠ sw, Br6c6 ≠ nes, Br6c6 ≠ w
whip[1]: Br6c6{wne .} ==> Pr7c6 ≠ ne, Pr7c7 ≠ nw, Nr6c6 ≠ 2
whip[1]: Br5c5{o .} ==> Nr5c5 ≠ 1, Nr5c5 ≠ 3
N-single: Nr5c5 = 0
whip[1]: Br5c4{w .} ==> Nr5c4 ≠ 2
N-single: Nr5c4 = 1
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 3
whip[1]: Pr7c5{se .} ==> Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ nes, Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Vr8c6{0 .} ==> Br8c5 ≠ nes, Vr8c6 ≠ 1, Pr8c6 ≠ ns, Pr8c6 ≠ se, Pr8c6 ≠ sw, Pr9c6 ≠ ne, Pr9c6 ≠ ns, Pr9c6 ≠ nw, Br8c5 ≠ e, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne
whip[1]: Pr9c6{sw .} ==> Br9c5 ≠ e
whip[1]: Br9c5{w .} ==> Vr9c6 ≠ 1, Pr10c5 ≠ ne, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Pr9c5 ≠ se, Pr9c6 ≠ sw
V-single: Vr9c6 = 0
w[1]-2-in-r9c6-open-nw-corner ==> Hr10c6 = 1, Vr9c7 = 1, Hr10c7 = 0, Vr10c7 = 0
w[1]-2-in-r9c7-open-se-corner ==> Hr9c7 = 1
P-single: Pr9c8 = ew
horizontal-line-{r8 r9}c7 ==> Ir8c7 = out
no-vertical-line-r8{c6 c7} ==> Ir8c6 = out
no-vertical-line-r8{c5 c6} ==> Ir8c5 = out
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
no-horizontal-line-{r8 r9}c6 ==> Ir9c6 = out
no-vertical-line-r9{c5 c6} ==> Ir9c5 = out
horizontal-line-{r9 r10}c6 ==> Ir10c6 = in
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1

LOOP[62]: Hr11c6-Hr11c7-Vr10c8-Hr10c8-Vr10c9-Hr11c9-Vr10c10-Hr10c10-Vr9c11-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Hr4c9-Vr4c9-Hr5c8-Vr5c8-Hr6c8-Vr6c9-Hr7c9-Vr7c10-Hr8c9-Vr8c9-Hr9c8-Hr9c7-Vr9c7-Hr10c6- ==> Vr10c6 = 0
P-single: Pr10c6 = ew
w[1]-1-in-r9c5-asymmetric-se-corner ==> Pr9c5 ≠ sw, Pr9c5 ≠ ew, Pr9c5 ≠ ns, Pr9c5 ≠ ne
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1

LOOP[64]: Hr10c5-Hr10c6-Vr9c7-Hr9c7-Hr9c8-Vr8c9-Hr8c9-Vr7c10-Hr7c9-Vr6c9-Hr6c8-Vr5c8-Hr5c8-Vr4c9-Hr4c9-Vr3c10-Vr2c10-Hr2c9-Hr2c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Vr5c11-Vr6c11-Vr7c11-Vr8c11-Vr9c11-Hr10c10-Vr10c10-Hr11c9-Vr10c9-Hr10c8-Vr10c8-Hr11c7-Hr11c6-Hr11c5- ==> Vr10c5 = 0
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
same-colour-in-{r8 r9}c5 ==> Hr9c5 = 0
same-colour-in-r8{c7 c8} ==> Vr8c8 = 0
whip[1]: Vr9c6{0 .} ==> Br9c6 ≠ ew, Br9c6 ≠ sw
whip[1]: Br9c6{se .} ==> Pr10c7 ≠ ns
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ sw, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c7 ≠ esw
whip[1]: Br10c7{se .} ==> Pr11c7 ≠ ne, Nr10c7 ≠ 3
P-single: Pr11c7 = ew
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ n, Br11c7 ≠ o, Br11c6 ≠ o, Br10c6 ≠ nw
B-single: Br10c6 = ns
B-single: Br11c6 = n
B-single: Br11c7 = n
B-single: Br10c7 = se
whip[1]: Br10c6{ns .} ==> Pr11c6 ≠ nw
P-single: Pr11c6 = ew
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ e, Br11c5 ≠ o, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c5 ≠ esw
B-single: Br11c5 = n
whip[1]: Br11c5{n .} ==> Pr11c5 ≠ o, Pr11c5 ≠ nw
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ se, Br10c4 ≠ esw, Br10c4 ≠ nes, Br10c4 ≠ o, Br10c4 ≠ n
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 0, Nr10c4 ≠ 3
whip[1]: Br11c7{n .} ==> Pr11c8 ≠ o
P-single: Pr11c8 = nw
whip[1]: Pr11c8{nw .} ==> Br10c8 ≠ ne
B-single: Br10c8 = wne
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 2, Pr10c8 ≠ ew
N-single: Nr10c8 = 3
P-single: Pr9c7 = se
P-single: Pr10c8 = se
whip[1]: Pr9c7{se .} ==> Vr8c7 ≠ 1, Hr9c6 ≠ 1, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br9c6 ≠ ns, Br9c7 ≠ ns
B-single: Br9c7 = nw
B-single: Br9c6 = se
whip[1]: Br9c7{nw .} ==> Pr10c7 ≠ ew
P-single: Pr9c6 = o
P-single: Pr10c7 = nw
w[1]-1-in-r9c5-symmetric-ne-corner ==> Pr10c5 ≠ sw, Pr10c5 ≠ o
whip[1]: Pr9c6{o .} ==> Br8c5 ≠ s, Br8c5 ≠ ns, Br8c5 ≠ sw, Br8c5 ≠ swn, Br9c5 ≠ n
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ sw, Br10c4 ≠ s, Br10c4 ≠ ne
whip[1]: Br10c4{ns .} ==> Vr10c4 ≠ 1, Pr11c4 ≠ ne, Pr10c4 ≠ ns
V-single: Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-vertical-line-r10{c2 c3} ==> Ir10c2 = in
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ e
whip[1]: Hr11c2{1 .} ==> Br10c2 ≠ o, Br11c2 ≠ o, Pr11c2 ≠ o, Pr11c2 ≠ nw, Pr11c3 ≠ o, Br10c2 ≠ n, Br10c2 ≠ w
P-single: Pr11c3 = ew
B-single: Br11c2 = n
w[1]-1-in-r10c3-asymmetric-sw-corner ==> Pr10c4 ≠ nw
w[1]-3-in-r9c3-asymmetric-se-corner ==> Hr9c3 = 1, Hr9c2 = 0
w[1]-3-in-r9c2-hit-by-horiz-line-at-ne ==> Hr10c2 = 1
w[0]-adjacent-3-in-r9c3-nolines-south ==> Hr10c4 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r8 r9}c3 ==> Hr8c3 = 0
w[1]-3-in-r9c2-closed-se-corner ==> Pr9c2 ≠ se
w[1]-3-in-r9c2-closed-sw-corner ==> Pr9c3 ≠ sw
w[1]-3-in-r9c3-closed-ne-corner ==> Pr10c3 ≠ ne
P-single: Pr10c3 = nw
P-single: Pr9c3 = se
P-single: Pr10c4 = ne
w[1]-1-in-r10c3-symmetric-nw-corner ==> Pr11c4 ≠ o
P-single: Pr11c4 = ew
w[1]-1-in-r8c3-asymmetric-sw-corner ==> Pr8c4 ≠ ew, Pr8c4 ≠ se
P-single: Pr8c4 = o
no-horizontal-line-{r7 r8}c3 ==> Ir8c3 = out
no-vertical-line-r8{c2 c3} ==> Ir8c2 = out
no-horizontal-line-{r8 r9}c2 ==> Ir9c2 = out
vertical-line-r9{c1 c2} ==> Ir9c1 = in
no-horizontal-line-{r9 r10}c1 ==> Ir10c1 = in
vertical-line-r9{c2 c3} ==> Ir9c3 = in
vertical-line-r9{c3 c4} ==> Ir9c4 = out
no-horizontal-line-{r8 r9}c4 ==> Ir8c4 = out
same-colour-in-r8{c4 c5} ==> Vr8c5 = 0
same-colour-in-{r7 r8}c4 ==> Hr8c4 = 0
same-colour-in-r9{c4 c5} ==> Vr9c5 = 0
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1

LOOP[76]: Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Vr10c8-Hr10c8-Vr10c9-Hr11c9-Vr10c10-Hr10c10-Vr9c11-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Hr4c9-Vr4c9-Hr5c8-Vr5c8-Hr6c8-Vr6c9-Hr7c9-Vr7c10-Hr8c9-Vr8c9-Hr9c8-Hr9c7-Vr9c7-Hr10c6-Hr10c5-Hr10c4-Vr9c4-Hr9c3-Vr9c3-Hr10c2-Vr9c2- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
different-colours-in-r8{c1 c2} ==> Hr8c2 = 1
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1

LOOP[90]: Vr7c3-Hr7c2-Vr6c2-Hr6c2-Hr6c3-Vr5c4-Hr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Vr10c8-Hr10c8-Vr10c9-Hr11c9-Vr10c10-Hr10c10-Vr9c11-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Hr4c9-Vr4c9-Hr5c8-Vr5c8-Hr6c8-Vr6c9-Hr7c9-Vr7c10-Hr8c9-Vr8c9-Hr9c8-Hr9c7-Vr9c7-Hr10c6-Hr10c5-Hr10c4-Vr9c4-Hr9c3-Vr9c3-Hr10c2-Vr9c2-Vr8c2- ==> Hr8c2 = 1
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ n, Br11c3 ≠ o
B-single: Br11c3 = n
B-single: Br10c3 = s
whip[1]: Hr9c3{1 .} ==> Pr9c4 ≠ ns, Pr9c4 ≠ se, Br8c3 ≠ n, Br8c3 ≠ e, Br9c3 ≠ esw
P-single: Pr9c4 = sw
B-single: Br9c3 = wne
B-single: Br8c3 = s
w[1]-1-in-r8c3-asymmetric-se-corner ==> Pr8c3 ≠ ne
P-single: Pr8c3 = nw
whip[1]: Pr9c4{sw .} ==> Br8c4 ≠ ns, Br8c4 ≠ s, Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ wne, Br8c4 ≠ nes, Br9c4 ≠ nw, Br9c4 ≠ swn, Br9c4 ≠ wne
whip[1]: Br9c4{esw .} ==> Pr9c5 ≠ nw
P-single: Pr9c5 = o
whip[1]: Pr9c5{o .} ==> Br8c4 ≠ e, Br8c4 ≠ ne, Br8c5 ≠ w, Br8c5 ≠ nw, Br9c4 ≠ ew, Br9c4 ≠ esw, Br9c5 ≠ w
B-single: Br9c5 = s
whip[1]: Br9c5{s .} ==> Pr10c5 ≠ ns, Pr10c5 ≠ nw
whip[1]: Pr10c5{ew .} ==> Br10c5 ≠ sw, Br10c5 ≠ s
whip[1]: Br10c5{swn .} ==> Nr10c5 ≠ 1
whip[1]: Br9c4{sw .} ==> Nr9c4 ≠ 3
whip[1]: Br8c5{n .} ==> Pr8c5 ≠ ns, Pr8c5 ≠ se, Pr8c5 ≠ sw, Nr8c5 ≠ 2
whip[1]: Br8c4{n .} ==> Nr8c4 ≠ 2, Nr8c4 ≠ 3
whip[1]: Pr8c3{nw .} ==> Br8c2 ≠ s, Br8c2 ≠ o, Br7c2 ≠ ne, Br7c3 ≠ sw, Br8c2 ≠ w
B-single: Br7c3 = w
B-single: Br7c2 = nes
whip[1]: Br7c3{w .} ==> Nr7c3 ≠ 2
N-single: Nr7c3 = 1
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 2, Pr8c2 ≠ sw, Pr8c2 ≠ o
N-single: Nr7c2 = 3
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ sw, Br8c1 ≠ w, Br8c1 ≠ ne
whip[1]: Br8c1{ew .} ==> Pr9c1 ≠ ne
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ nes
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 0
whip[1]: Hr9c2{0 .} ==> Br8c2 ≠ ns, Br9c2 ≠ wne
B-single: Br9c2 = esw
whip[1]: Br9c2{esw .} ==> Pr10c2 ≠ nw, Pr10c2 ≠ ns
P-single: Pr10c2 = ne
whip[1]: Pr10c2{ne .} ==> Br10c1 ≠ n, Br9c1 ≠ se, Br9c1 ≠ esw, Br10c1 ≠ e, Br10c1 ≠ esw, Br10c1 ≠ swn, Br10c2 ≠ s, Br10c2 ≠ sw
B-single: Br10c2 = ns
whip[1]: Br10c2{ns .} ==> Nr10c2 ≠ 1, Nr10c2 ≠ 0, Pr11c2 ≠ ne
N-single: Nr10c2 = 2
P-single: Pr11c2 = ew
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ o, Br11c1 ≠ o
B-single: Br11c1 = n
B-single: Br10c1 = sw
whip[1]: Br11c1{n .} ==> Pr11c1 ≠ o
P-single: Pr11c1 = ne
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 3, Nr10c1 ≠ 1, Nr10c1 ≠ 0, Pr10c1 ≠ se, Pr10c1 ≠ ne, Pr10c1 ≠ o
N-single: Nr10c1 = 2
P-single: Pr10c1 = ns
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ e
whip[1]: Br9c1{wne .} ==> Pr9c1 ≠ o, Nr9c1 ≠ 1
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ n
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 1
N-single: Nr8c1 = 2
whip[1]: Hr10c4{1 .} ==> Pr10c5 ≠ se, Br9c4 ≠ w, Br10c4 ≠ e
P-single: Pr10c5 = ew
B-single: Br10c4 = ns
B-single: Br9c4 = sw
whip[1]: Pr10c5{ew .} ==> Br10c5 ≠ swn
B-single: Br10c5 = ns
whip[1]: Br10c5{ns .} ==> Nr10c5 ≠ 3, Pr11c5 ≠ ne
N-single: Nr10c5 = 2
P-single: Pr11c5 = ew
whip[1]: Pr11c5{ew .} ==> Br11c4 ≠ o
B-single: Br11c4 = n
whip[1]: Br10c4{ns .} ==> Nr10c4 ≠ 1
N-single: Nr10c4 = 2
whip[1]: Br9c4{sw .} ==> Nr9c4 ≠ 1
N-single: Nr9c4 = 2
whip[1]: Pr8c4{o .} ==> Br7c4 ≠ s, Br7c4 ≠ se, Br8c4 ≠ n
B-single: Br8c4 = o
whip[1]: Br8c4{o .} ==> Pr8c5 ≠ nw, Pr8c5 ≠ ew, Nr8c4 ≠ 1
N-single: Nr8c4 = 0
whip[1]: Pr8c5{ne .} ==> Br7c5 ≠ s, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ wne
whip[1]: Br7c5{swn .} ==> Pr7c6 ≠ sw, Pr8c6 ≠ nw, Nr7c5 ≠ 2
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ nw, Br7c6 ≠ ew, Br7c6 ≠ wne, Br7c6 ≠ w
whip[1]: Br7c4{e .} ==> Nr7c4 ≠ 2
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Hr9c1{0 .} ==> Pr9c1 ≠ se, Pr9c2 ≠ sw, Br8c1 ≠ ns, Br9c1 ≠ wne
P-single: Pr9c2 = ns
P-single: Pr9c1 = ns
B-single: Br9c1 = ew
B-single: Br8c1 = ew
whip[1]: Pr9c2{ns .} ==> Br8c2 ≠ n
B-single: Br8c2 = nw
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 1, Pr8c2 ≠ ew
N-single: Nr8c2 = 2
P-single: Pr8c2 = se
whip[1]: Pr8c2{se .} ==> Br7c1 ≠ sw
B-single: Br7c1 = w
whip[1]: Br7c1{w .} ==> Nr7c1 ≠ 2, Pr8c1 ≠ ne
N-single: Nr7c1 = 1
P-single: Pr8c1 = ns
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 3
N-single: Nr9c1 = 2
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Br8c7{ns .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ se, Pr8c8 ≠ ns, Nr8c7 ≠ 3, Pr8c7 ≠ sw, Pr8c8 ≠ sw
whip[1]: Pr8c8{nw .} ==> Br7c7 ≠ ne, Br7c7 ≠ sw, Br7c7 ≠ wne, Br8c8 ≠ esw, Br7c7 ≠ s
B-single: Br8c8 = se
whip[1]: Br8c8{se .} ==> Nr8c8 ≠ 3
N-single: Nr8c8 = 2
whip[1]: Br7c7{nes .} ==> Pr7c7 ≠ se, Pr8c7 ≠ ne, Nr7c7 ≠ 2
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ e, Br7c6 ≠ ne
whip[1]: Br10c7{se .} ==> Nr10c7 ≠ 1
N-single: Nr10c7 = 2
whip[1]: Hr8c6{0 .} ==> Br7c6 ≠ nes, Hr8c6 ≠ 1, Pr8c6 ≠ ne, Pr8c6 ≠ ew, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Br7c6 ≠ s, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn
P-single: Pr8c7 = o
P-single: Pr8c6 = o
whip[1]: Pr8c7{o .} ==> Vr7c7 ≠ 1, Hr8c7 ≠ 1, Br7c7 ≠ w, Br7c7 ≠ nes, Br8c7 ≠ ns
H-single: Hr8c7 = 0
V-single: Vr7c7 = 0
B-single: Br8c7 = s
B-single: Br7c7 = o
no-vertical-line-r7{c6 c7} ==> Ir7c7 = out
same-colour-in-r7{c7 c8} ==> Vr7c8 = 0
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
whip[1]: Hr8c7{0 .} ==> Pr8c8 ≠ nw
P-single: Pr8c8 = o
whip[1]: Pr8c8{o .} ==> Br7c8 ≠ w
B-single: Br7c8 = o
whip[1]: Br7c8{o .} ==> Pr7c8 ≠ sw, Nr7c8 ≠ 1
N-single: Nr7c8 = 0
P-single: Pr7c8 = o
whip[1]: Pr7c8{o .} ==> Br6c7 ≠ s, Br6c7 ≠ sw
whip[1]: Br6c7{w .} ==> Pr7c7 ≠ ne, Nr6c7 ≠ 2, Pr7c7 ≠ ew
whip[1]: Pr7c7{sw .} ==> Br7c6 ≠ n
B-single: Br7c6 = o
whip[1]: Br7c6{o .} ==> Hr7c6 ≠ 1, Vr7c6 ≠ 1, Pr7c6 ≠ ns, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c7 ≠ ns, Pr7c7 ≠ sw, Nr7c6 ≠ 1, Nr7c6 ≠ 2, Nr7c6 ≠ 3
V-single: Vr7c6 = 0
H-single: Hr7c6 = 0
N-single: Nr7c6 = 0
P-single: Pr7c7 = o
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = out
no-vertical-line-r7{c5 c6} ==> Ir7c5 = out
same-colour-in-{r7 r8}c5 ==> Hr8c5 = 0
same-colour-in-r7{c4 c5} ==> Vr7c5 = 0
same-colour-in-{r6 r7}c5 ==> Hr7c5 = 0
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
same-colour-in-r6{c5 c6} ==> Vr6c6 = 0
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+xtd-Loop, MOST COMPLEX RULE TRIED = W[1]

OXOOXXXXXX
XXXXXXOOOX
OXOOXOOOOX
OOOOOOOOXX
XXXOOOOXXX
XOOOOOOOXX
XXOOOOOOOX
XOOOOOOOXX
XOXOOOXXXX
XXXXXXXOXO

.   .———.   .   .———.———.———.———.———.———.
    | 3 |       | 2           2         |
.———.   .———.———.   .   .———.———.———.   .
| 3   0       2   0   2 |     1   2 |   |
.———.   .———.———.   .———.   .   .   .   .
    | 3 |       | 3 |         0     |   |
.   .———.   .   .———.   .   .   .———.   .
                                |       |
.———.———.———.   .   .   .   .———.   .   .
|         3 |             1 | 3   0     |
.   .———.———.   .   .   .   .———.   .   .
|   | 3   1   0               2 |       |
.   .———.   .   .   .   .   .   .———.   .
|       |                           |   |
.   .———.   .   .   .   .   .   .———.   .
|   |     1           0         | 2     |
.   .   .———.   .   .   .———.———.   .   .
|   | 3 | 3 |     1   2 | 2       0   2 |
.   .———.   .———.———.———.   .———.   .———.
|         1           2     |   | 3 |
.———.———.———.———.———.———.———.   .———.   .

init-time = 0.55s, solve-time = 55.09s, total-time = 55.64s
nb-facts=<Fact-206541>
Quasi-Loop max length = 90
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
