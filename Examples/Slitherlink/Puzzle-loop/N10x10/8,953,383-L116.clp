
(solve
10 10
3 . 2 2 . 3 3 . . . 
. 1 2 . 0 2 . . 2 3
3 . 2 . 2 . 1 2 . 3
3 . 1 . . 2 1 . 1 . 
. . . . . . . . 1 3
. . . 2 . 1 3 2 2 . 
2 2 . . . 1 3 . 1 3
3 2 . . 2 1 2 . . . 
2 3 . . 1 . . 2 1 . 
3 . 1 3 2 . 3 . 3 . 
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . 2 2 . 3 3 . . .
. 1 2 . 0 2 . . 2 3
3 . 2 . 2 . 1 2 . 3
3 . 1 . . 2 1 . 1 .
. . . . . . . . 1 3
. . . 2 . 1 3 2 2 .
2 2 . . . 1 3 . 1 3
3 2 . . 2 1 2 . . .
2 3 . . 1 . . 2 1 .
3 . 1 3 2 . 3 . 3 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.61962890625
start solution 0.632441997528076
entering BRT
w[0]-0-in-r2c5 ==> Hr3c5 = 0, Hr2c5 = 0, Vr2c6 = 0, Vr2c5 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3-0-in-{r1c6...r2c5} ==> Vr1c6 = 1, Hr2c6 = 1
w[1]-diagonal-3s-in-{r9c2...r10c1} ==> Vr9c3 = 1, Hr9c2 = 1, Vr8c3 = 0, Hr9c3 = 0
w[1]-diagonal-3s-in-{r8c1...r9c2} ==> Vr8c1 = 1, Hr10c2 = 1, Hr8c1 = 1, Vr10c3 = 0, Vr7c1 = 0, Hr10c3 = 0
w[1]-diagonal-3-2+0-in-{r1c7...r2c6+r2c5} ==> Vr1c8 = 1, Vr3c6 = 1, Hr3c6 = 1, Hr1c7 = 1, Hr1c8 = 0
w[1]-3-in-r10c1-hit-by-horiz-line-at-ne ==> Vr9c2 = 0
w[1]-3-in-r1c7-hit-by-horiz-line-at-sw ==> Vr2c7 = 0
w[1]-adjacent-1-3-on-edge-in-r10{c3 c4} ==> Hr11c4 = 1
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r9c2-closed-se-corner ==> Pr9c2 ≠ se, Pr9c2 ≠ nw
w[1]-3-in-r1c6-closed-sw-corner ==> Pr1c7 ≠ sw, Pr1c7 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
adjacent-3s-in-c7{r6 r7} ==> Hr8c7 = 1, Hr7c7 = 1, Hr6c7 = 1, Hr7c8 = 0, Hr7c6 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r7 r6}c9-fwd-diag-2s-3 ==> Vr7c10 = 0, Vr6c9 = 1, Hr8c9 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r7 r6}c9-bkwd-diag-2s-3...r7c10 ==> Vr7c11 = 1, Hr8c10 = 1
w[1]-3-in-r7c10-closed-se-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw, Pr7c10 ≠ o
adjacent-3s-in-c1{r3 r4} ==> Hr5c1 = 1, Hr4c1 = 1, Hr3c1 = 1, Hr4c2 = 0
adjacent-3s-in-c10{r2 r3} ==> Hr4c10 = 1, Hr3c10 = 1, Hr2c10 = 1, Hr3c9 = 0
adjacent-3s-in-r1{c6 c7} ==> Vr1c7 = 1
w[1]-3-in-r1c6-closed-se-corner ==> Pr1c6 ≠ se, Pr1c6 ≠ o
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ se, Pr2c8 ≠ nw, Pr2c8 ≠ o
w[3]-adjacent-3-2-in-r8{c1 c2}-noline-east ==> Vr7c2 = 0
w[1]-diagonal-closed-3-1-in-{r1c1...r2c2} ==> Vr2c3 = 0, Hr3c2 = 0
w[1]-1-in-r3c7-asymmetric-nw-corner ==> Pr4c8 ≠ sw, Pr4c8 ≠ ew, Pr4c8 ≠ ns, Pr4c8 ≠ ne
w[1]-1-in-r2c2-asymmetric-nw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns
entering level Loop with <Fact-93133>
entering level Col with <Fact-93213>
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
no-vertical-line-r7{c9 c10} ==> Ir7c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir8c9 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
vertical-line-r8{c0 c1} ==> Ir8c1 = in
horizontal-line-{r7 r8}c1 ==> Ir7c1 = out
no-vertical-line-r7{c1 c2} ==> Ir7c2 = out
vertical-line-r1{c0 c1} ==> Ir1c1 = in
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
no-horizontal-line-{r0 r1}c8 ==> Ir1c8 = out
vertical-line-r1{c7 c8} ==> Ir1c7 = in
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
vertical-line-r1{c5 c6} ==> Ir1c6 = out
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
vertical-line-r3{c5 c6} ==> Ir3c6 = out
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-r8{c9 c10} ==> Hr8c10 = 1
w[1]-3-in-r7c10-hit-by-verti-line-at-sw ==> Hr7c10 = 1
w[1]-3-in-r7c10-closed-ne-corner ==> Pr8c10 ≠ sw, Pr8c10 ≠ ne, Pr8c10 ≠ o
no-vertical-line-r6{c10 c11} ==> Ir6c10 = out
Starting_init_links_with_<Fact-93319>
977 candidates, 7474 csp-links and 31202 links. Density = 6.54%
starting non trivial part of solution
Entering_level_W1_with_<Fact-170676>
whip[1]: Vr6c11{0 .} ==> Br6c10 ≠ nes, Br6c11 ≠ w, Pr6c11 ≠ ns, Pr6c11 ≠ sw, Pr7c11 ≠ ns, Pr7c11 ≠ nw, Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw, Br6c10 ≠ wne
w[1]-3-in-r5c10-symmetric-se-corner ==> Vr5c11 = 1, Hr6c10 = 1
w[1]-3-in-r5c10-closed-se-corner ==> Pr5c10 ≠ se, Pr5c10 ≠ nw, Pr5c10 ≠ o
w[1]-diagonal-closed-3-1-in-{r5c10...r4c9} ==> Vr4c9 = 0, Hr4c9 = 0
B-single: Br6c11 = o
w[1]-1-in-r4c9-asymmetric-se-corner ==> Pr4c9 ≠ sw, Pr4c9 ≠ ew, Pr4c9 ≠ ns, Pr4c9 ≠ ne
w[1]-1-in-r4c7-asymmetric-ne-corner ==> Pr5c7 ≠ ew, Pr5c7 ≠ se, Pr5c7 ≠ nw, Pr5c7 ≠ ns
horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o, Pr5c11 ≠ o, Pr5c11 ≠ nw, Pr6c11 ≠ o, Br5c10 ≠ swn
P-single: Pr6c11 = nw
B-single: Br5c11 = w
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ s, Br6c10 ≠ o, Br5c10 ≠ wne, Br6c10 ≠ w, Br6c10 ≠ sw
whip[1]: Br6c10{swn .} ==> Pr6c10 ≠ o, Pr6c10 ≠ ns, Pr6c10 ≠ nw, Pr6c10 ≠ sw, Nr6c10 ≠ 0
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ ne
whip[1]: Br6c9{sw .} ==> Pr7c9 ≠ o, Pr7c9 ≠ sw
whip[1]: Pr7c9{ew .} ==> Br6c8 ≠ se, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c8 ≠ ne, Br7c9 ≠ e, Br7c9 ≠ s
whip[1]: Br7c9{w .} ==> Pr7c10 ≠ ns, Pr8c9 ≠ ne, Pr8c10 ≠ ns, Pr8c10 ≠ nw, Pr7c9 ≠ se, Pr7c10 ≠ sw, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c10 ≠ ew
P-single: Pr8c10 = se
whip[1]: Pr8c10{se .} ==> Br8c10 ≠ w, Br8c10 ≠ s, Br8c10 ≠ e, Br8c10 ≠ n, Br8c10 ≠ o, Br8c9 ≠ w, Br8c9 ≠ s, Br8c9 ≠ n, Br8c9 ≠ o, Br7c10 ≠ esw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ sw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c9 ≠ nes, Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ nes
B-single: Br7c10 = nes
whip[1]: Br7c10{nes .} ==> Pr8c11 ≠ sw, Pr8c11 ≠ ns, Pr8c11 ≠ o, Pr7c11 ≠ o
P-single: Pr7c11 = sw
P-single: Pr8c11 = nw
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ n, Br6c10 ≠ nw
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 1
whip[1]: Pr8c11{nw .} ==> Br8c10 ≠ wne
whip[1]: Br8c10{swn .} ==> Pr9c11 ≠ ns, Pr9c11 ≠ nw, Pr9c10 ≠ o, Pr9c10 ≠ se, Pr9c10 ≠ ew, Pr9c10 ≠ sw, Nr8c10 ≠ 0, Nr8c10 ≠ 1
whip[1]: Pr9c10{nw .} ==> Br9c10 ≠ nw, Br9c10 ≠ swn, Br9c10 ≠ wne
whip[1]: Pr9c11{sw .} ==> Br9c10 ≠ se, Br9c10 ≠ ew, Br9c10 ≠ esw, Br9c10 ≠ n, Br9c10 ≠ e, Br9c10 ≠ ns
whip[1]: Br8c9{esw .} ==> Nr8c9 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ esw, Br5c7 ≠ nes, Br6c8 ≠ nw, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{wne .} ==> Nr5c7 ≠ 0
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ nw, Br6c9 ≠ se
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ esw, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ n, Br4c10 ≠ w
whip[1]: Br4c10{wne .} ==> Nr4c10 ≠ 0
whip[1]: Vr4c9{0 .} ==> Pr4c9 ≠ se, Pr5c9 ≠ ne, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Br4c8 ≠ e, Br4c8 ≠ ne, Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ esw, Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c9 ≠ w
whip[1]: Br4c9{s .} ==> Pr4c10 ≠ sw
whip[1]: Pr4c9{nw .} ==> Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ ew, Br3c8 ≠ sw, Br3c9 ≠ ns, Br3c9 ≠ se, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ nes, Br3c9 ≠ s, Br4c9 ≠ n
whip[1]: Br4c9{s .} ==> Pr4c10 ≠ nw, Pr4c10 ≠ ew
whip[1]: Pr5c7{sw .} ==> Br4c6 ≠ se, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c7 ≠ swn, Br5c7 ≠ wne, Br4c7 ≠ s, Br4c7 ≠ w, Br5c6 ≠ n, Br5c6 ≠ e, Br5c6 ≠ ns
whip[1]: Br4c7{e .} ==> Hr5c7 ≠ 1, Vr4c7 ≠ 1, Pr5c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ se, Pr4c7 ≠ sw, Pr5c8 ≠ nw, Pr5c8 ≠ ew, Pr5c8 ≠ sw
V-single: Vr4c7 = 0
H-single: Hr5c7 = 0
P-single: Pr5c7 = sw
whip[1]: Vr4c7{0 .} ==> Br4c6 ≠ ne, Br4c6 ≠ ew
whip[1]: Hr5c7{0 .} ==> Br5c7 ≠ ne, Br5c7 ≠ ns
whip[1]: Br5c7{sw .} ==> Nr5c7 ≠ 3
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ s, Br5c7 ≠ e, Br5c6 ≠ w, Br5c6 ≠ s, Br5c6 ≠ o, Vr5c7 ≠ 0, Hr5c6 ≠ 0, Br4c6 ≠ nw, Br5c6 ≠ sw
H-single: Hr5c6 = 1
V-single: Vr5c7 = 1
w[0]-adjacent-3-in-r6c7-nolines-west ==> Vr6c8 = 1, Vr7c7 = 1, Vr7c8 = 0, Vr5c8 = 0, Hr6c8 = 0
w[1]-diagonal-3-2s-in-{r10c9...r8c7}-non-closed-nw-end ==> Vr10c10 = 1, Hr11c9 = 1, Hr11c10 = 0
w[1]-diagonal-1-1-in-{r8c6...r9c5}-with-no-ne-outer-sides ==> Hr10c5 = 0, Vr9c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c6 c7} ==> Vr7c6 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r5 r6}c9-fwd-diag-2s-3 ==> Vr5c10 = 0, Hr5c9 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r5 r6}c9-bkwd-diag-2s-3...r5c10 ==> Hr5c10 = 1
w[1]-3-in-r5c10-closed-ne-corner ==> Pr6c10 ≠ ne
w[1]-3-in-r10c9-closed-se-corner ==> Pr10c9 ≠ se, Pr10c9 ≠ nw, Pr10c9 ≠ o
w[1]-3-in-r7c7-closed-nw-corner ==> Pr8c8 ≠ se, Pr8c8 ≠ nw
w[1]-3-in-r6c7-closed-se-corner ==> Pr6c7 ≠ se, Pr6c7 ≠ nw, Pr6c7 ≠ o
w[1]-3-in-r6c7-closed-ne-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ne, Pr7c7 ≠ o
w[1]-3-in-r10c4-isolated-at-ne-corner ==> Vr10c5 = 1, Hr10c4 = 1
w[1]-3-in-r10c4-closed-ne-corner ==> Pr11c4 ≠ ne, Pr11c4 ≠ o
w[1]-3-in-r10c4-closed-se-corner ==> Pr10c4 ≠ se, Pr10c4 ≠ nw, Pr10c4 ≠ o
w[1]-diagonal-3-1-in-{r3c10...r4c9}-open-end ==> Vr3c11 = 1
w[1]-3-in-r2c10-hit-by-verti-line-at-se ==> Vr2c10 = 1
w[0]-adjacent-3-in-r3c10-nolines-west ==> Vr4c10 = 1
w[1]-diagonal-3-2-in-{r3c10...r2c9}-non-closed-nw-corner ==> Vr2c9 = 1
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ o
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
w[1]-3-in-r3c10-closed-ne-corner ==> Pr4c10 ≠ ne, Pr4c10 ≠ o
w[1]-1-in-r4c9-asymmetric-ne-corner ==> Pr5c9 ≠ ew, Pr5c9 ≠ se
w[1]-1-in-r7c6-asymmetric-ne-corner ==> Pr8c6 ≠ ew, Pr8c6 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ ns
w[1]-1-in-r7c6-asymmetric-se-corner ==> Pr7c6 ≠ sw, Pr7c6 ≠ ew, Pr7c6 ≠ ns, Pr7c6 ≠ ne
w[1]-1-in-r5c9-asymmetric-sw-corner ==> Pr5c10 ≠ ew, Pr5c10 ≠ ns
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
vertical-line-r4{c9 c10} ==> Ir4c9 = in
no-vertical-line-r4{c8 c9} ==> Ir4c8 = in
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = in
vertical-line-r2{c8 c9} ==> Ir2c8 = out
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
no-vertical-line-r9{c4 c5} ==> Ir9c4 = out
no-horizontal-line-{r10 r11}c10 ==> Ir10c10 = out
vertical-line-r10{c9 c10} ==> Ir10c9 = in
same-colour-in-r10{c10 c11} ==> Vr10c11 = 0
same-colour-in-{r1 r2}c8 ==> Hr2c8 = 0
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
whip[1]: Hr5c6{1 .} ==> Pr5c6 ≠ ns, Pr5c6 ≠ nw
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ se, Br4c5 ≠ esw, Br4c5 ≠ nes, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c5 ≠ ne
whip[1]: Vr5c7{1 .} ==> Pr6c7 ≠ ew, Pr6c7 ≠ sw
whip[1]: Pr6c7{ns .} ==> Br5c6 ≠ nes, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c6 ≠ n
whip[1]: Br6c6{w .} ==> Pr6c6 ≠ ne, Pr7c7 ≠ nw, Pr6c6 ≠ se, Pr6c6 ≠ ew
whip[1]: Pr7c7{ew .} ==> Br6c7 ≠ esw, Br7c6 ≠ s, Br7c6 ≠ w
B-single: Br6c7 = nes
whip[1]: Br6c7{nes .} ==> Pr7c8 ≠ ew, Pr7c8 ≠ se, Pr7c8 ≠ ns, Pr7c7 ≠ ns, Pr6c8 ≠ ew, Pr6c8 ≠ ns, Pr6c8 ≠ ne, Pr6c7 ≠ ns
P-single: Pr6c7 = ne
P-single: Pr6c8 = sw
P-single: Pr7c8 = nw
w[1]-1-in-r6c6-symmetric-ne-corner ==> Pr7c6 ≠ o
whip[1]: Pr6c7{ne .} ==> Br5c7 ≠ ew, Br6c6 ≠ e
B-single: Br5c7 = sw
whip[1]: Br5c7{sw .} ==> Nr5c7 ≠ 1, Pr5c8 ≠ se, Pr5c8 ≠ ns
N-single: Nr5c7 = 2
whip[1]: Pr5c8{ne .} ==> Br4c8 ≠ s, Br4c8 ≠ w, Br4c8 ≠ ns, Br4c8 ≠ nw, Br5c8 ≠ w, Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c8 ≠ wne
whip[1]: Pr6c8{sw .} ==> Br6c8 ≠ ns, Br6c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ s, Br5c8 ≠ se, Br5c8 ≠ nes
whip[1]: Br5c8{ne .} ==> Nr5c8 ≠ 3, Pr6c9 ≠ ew
P-single: Pr6c9 = ns
whip[1]: Pr6c9{ns .} ==> Br5c9 ≠ e, Br5c9 ≠ n, Br5c8 ≠ n, Br5c8 ≠ o, Vr5c9 ≠ 0, Hr6c9 ≠ 1, Br5c9 ≠ s, Br6c8 ≠ sw, Br6c9 ≠ ns
H-single: Hr6c9 = 0
V-single: Vr5c9 = 1
w[0]-adjacent-3-in-r5c10-nolines-west ==> Vr6c10 = 1
B-single: Br6c8 = ew
B-single: Br5c9 = w
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
vertical-line-r6{c8 c9} ==> Ir6c8 = out
no-horizontal-line-{r5 r6}c8 ==> Ir5c8 = out
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = out
no-vertical-line-r4{c6 c7} ==> Ir4c6 = out
horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
horizontal-line-{r6 r7}c7 ==> Ir7c7 = out
no-vertical-line-r7{c7 c8} ==> Ir7c8 = out
vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
no-vertical-line-r8{c6 c7} ==> Ir8c7 = in
different-colours-in-r7{c8 c9} ==> Hr7c9 = 1
same-colour-in-{r3 r4}c6 ==> Hr4c6 = 0
w[1]-2-in-r4c6-open-ne-corner ==> Vr4c6 = 1, Hr5c5 = 0, Vr5c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c7{r3 r4} ==> Hr4c7 = 0
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = out
no-vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
same-colour-in-{r3 r4}c5 ==> Hr4c5 = 0
w[1]-diagonal-3-2s-in-{r1c7...r3c5}-non-closed-sw-end ==> Vr3c5 = 1
vertical-line-r3{c4 c5} ==> Ir3c4 = out
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
w[1]-2-in-r3c8-open-nw-corner ==> Hr4c8 = 1, Vr3c9 = 1
P-single: Pr4c9 = nw
vertical-line-r3{c8 c9} ==> Ir3c8 = out
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
different-colours-in-{r4 r5}c8 ==> Hr5c8 = 1
whip[1]: Hr6c9{0 .} ==> Pr6c10 ≠ ew
P-single: Pr6c10 = se
w[1]-1-in-r5c9-symmetric-se-corner ==> Pr5c9 ≠ o
P-single: Pr5c9 = sw
whip[1]: Pr6c10{se .} ==> Br5c10 ≠ esw, Br6c9 ≠ sw, Br6c10 ≠ ns
B-single: Br6c10 = swn
B-single: Br6c9 = ew
B-single: Br5c10 = nes
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 2, Pr7c10 ≠ ew
N-single: Nr6c10 = 3
P-single: Pr7c10 = ne
w[1]-1-in-r7c9-symmetric-ne-corner ==> Pr8c9 ≠ sw, Pr8c9 ≠ o
whip[1]: Pr7c10{ne .} ==> Br7c9 ≠ n
B-single: Br7c9 = w
whip[1]: Br7c9{w .} ==> Pr7c9 ≠ ew
P-single: Pr7c9 = ns
whip[1]: Pr7c9{ns .} ==> Br7c8 ≠ n, Br7c8 ≠ o, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ sw, Br7c8 ≠ swn
whip[1]: Br7c8{esw .} ==> Nr7c8 ≠ 0
whip[1]: Pr8c9{nw .} ==> Br8c8 ≠ w, Br8c8 ≠ ne, Br8c8 ≠ sw, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c8 ≠ o, Br8c8 ≠ s
whip[1]: Br8c8{swn .} ==> Nr8c8 ≠ 0
whip[1]: Br5c10{nes .} ==> Pr5c10 ≠ sw, Pr5c11 ≠ ns
P-single: Pr5c11 = sw
P-single: Pr5c10 = ne
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ ne, Br4c10 ≠ e, Br4c10 ≠ ew, Br4c10 ≠ wne
whip[1]: Br4c10{swn .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ sw
whip[1]: Pr4c11{nw .} ==> Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr4c11 ≠ o, Pr4c10 ≠ ns
P-single: Pr4c10 = se
P-single: Pr4c11 = nw
whip[1]: Pr4c10{se .} ==> Br4c10 ≠ s, Br4c9 ≠ s, Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ ew, Br3c9 ≠ wne, Br3c10 ≠ esw, Br4c10 ≠ ns, Br4c10 ≠ sw
B-single: Br4c10 = swn
B-single: Br3c10 = nes
B-single: Br4c9 = e
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 2, Nr4c10 ≠ 1
N-single: Nr4c10 = 3
whip[1]: Br3c10{nes .} ==> Pr3c10 ≠ sw, Pr3c10 ≠ ns, Pr3c11 ≠ ns
P-single: Pr3c11 = sw
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes
B-single: Br2c10 = swn
whip[1]: Br2c10{swn .} ==> Pr3c10 ≠ ew, Pr2c10 ≠ ew, Pr2c10 ≠ nw, Pr2c10 ≠ ns, Pr2c11 ≠ ns
P-single: Pr2c11 = nw
P-single: Pr2c10 = se
P-single: Pr3c10 = ne
whip[1]: Pr2c11{nw .} ==> Br1c10 ≠ s, Br1c10 ≠ o, Br1c10 ≠ w, Br1c10 ≠ ne, Br1c10 ≠ sw, Br1c10 ≠ wne
B-single: Br1c10 = nes
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 2, Nr1c10 ≠ 1, Nr1c10 ≠ 0, Pr1c10 ≠ sw, Pr1c10 ≠ se, Pr1c10 ≠ o, Pr1c11 ≠ o
N-single: Nr1c10 = 3
P-single: Pr1c11 = sw
P-single: Pr1c10 = ew
whip[1]: Pr1c10{ew .} ==> Br1c9 ≠ ne, Br1c9 ≠ w, Br1c9 ≠ s, Br1c9 ≠ e, Br1c9 ≠ o, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ wne, Br1c9 ≠ nes
whip[1]: Br1c9{swn .} ==> Pr1c9 ≠ o, Pr1c9 ≠ sw, Nr1c9 ≠ 0
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ sw, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c8 ≠ o, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ ne
whip[1]: Br1c8{swn .} ==> Nr1c8 ≠ 0
whip[1]: Pr2c10{se .} ==> Br1c9 ≠ ns, Br1c9 ≠ swn, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ sw
whip[1]: Br2c9{ew .} ==> Pr2c9 ≠ ne, Pr2c9 ≠ ew
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ esw, Br2c8 ≠ nw, Br2c8 ≠ sw, Br2c8 ≠ swn, Br2c9 ≠ se, Br1c8 ≠ n, Br2c8 ≠ o, Br2c8 ≠ n, Br2c8 ≠ s, Br2c8 ≠ w, Br2c8 ≠ ns
B-single: Br2c9 = ew
whip[1]: Br2c9{ew .} ==> Pr3c9 ≠ ew, Pr3c9 ≠ se
whip[1]: Pr3c9{nw .} ==> Br3c9 ≠ nw, Br3c9 ≠ n
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 2, Nr3c9 ≠ 3
whip[1]: Br2c8{nes .} ==> Nr2c8 ≠ 0
whip[1]: Br1c9{nw .} ==> Nr1c9 ≠ 3
whip[1]: Pr5c9{sw .} ==> Br5c8 ≠ e, Br4c8 ≠ n, Br4c8 ≠ o
B-single: Br5c8 = ne
whip[1]: Br5c8{ne .} ==> Nr5c8 ≠ 1, Nr5c8 ≠ 0, Pr5c8 ≠ o
N-single: Nr5c8 = 2
P-single: Pr5c8 = ne
w[1]-1-in-r4c7-asymmetric-se-corner ==> Pr4c7 ≠ ew, Pr4c7 ≠ ne
whip[1]: Pr5c8{ne .} ==> Br4c7 ≠ n
B-single: Br4c7 = e
whip[1]: Br4c7{e .} ==> Pr4c8 ≠ nw
P-single: Pr4c8 = se
whip[1]: Pr4c8{se .} ==> Br3c7 ≠ s, Br3c7 ≠ e, Br3c8 ≠ nw, Br4c8 ≠ sw
B-single: Br4c8 = swn
B-single: Br3c8 = se
whip[1]: Br4c8{swn .} ==> Nr4c8 ≠ 2, Nr4c8 ≠ 1, Nr4c8 ≠ 0
N-single: Nr4c8 = 3
whip[1]: Br3c8{se .} ==> Pr3c9 ≠ nw
P-single: Pr3c9 = ns
whip[1]: Pr3c9{ns .} ==> Br3c9 ≠ o, Br2c8 ≠ se, Br2c8 ≠ esw, Br2c8 ≠ nes
B-single: Br3c9 = w
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 0
N-single: Nr3c9 = 1
whip[1]: Pr4c7{nw .} ==> Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Hr4c6{0 .} ==> Pr4c6 ≠ ne, Pr4c6 ≠ ew, Pr4c7 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br4c6 ≠ ns
P-single: Pr5c6 = ne
P-single: Pr4c7 = o
B-single: Br4c6 = sw
w[1]-1-in-r3c7-symmetric-sw-corner ==> Pr3c8 ≠ o
P-single: Pr3c8 = nw
whip[1]: Pr5c6{ne .} ==> Br5c5 ≠ n, Br4c5 ≠ n, Br4c5 ≠ o, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ sw, Br4c5 ≠ swn, Br5c5 ≠ e, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c6 ≠ wne
B-single: Br5c6 = ne
whip[1]: Br5c6{ne .} ==> Nr5c6 ≠ 3, Nr5c6 ≠ 1, Nr5c6 ≠ 0, Pr6c6 ≠ nw, Pr6c6 ≠ ns
N-single: Nr5c6 = 2
whip[1]: Pr6c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ ns
whip[1]: Br5c5{sw .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ se, Pr5c5 ≠ ew, Nr5c5 ≠ 3
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Pr4c7{o .} ==> Br3c7 ≠ w
B-single: Br3c7 = n
whip[1]: Br3c7{n .} ==> Pr3c7 ≠ ns, Pr3c7 ≠ sw
whip[1]: Pr3c7{ew .} ==> Br2c6 ≠ nw, Br2c6 ≠ se, Br2c7 ≠ nw, Br2c7 ≠ ew, Br2c7 ≠ wne, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ e, Br2c7 ≠ w, Br2c7 ≠ ne
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Pr3c8{nw .} ==> Br2c8 ≠ e, Br2c7 ≠ s, Br2c7 ≠ ns, Br2c7 ≠ sw, Br2c7 ≠ swn, Br2c8 ≠ ne
whip[1]: Br2c8{wne .} ==> Pr2c8 ≠ ne, Pr2c8 ≠ ew, Nr2c8 ≠ 1
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ esw, Br1c7 ≠ nes, Br1c8 ≠ swn, Br2c8 ≠ wne, Br1c8 ≠ ns
B-single: Br2c8 = ew
whip[1]: Br2c8{ew .} ==> Nr2c8 ≠ 3, Pr2c9 ≠ sw
N-single: Nr2c8 = 2
P-single: Pr2c9 = ns
whip[1]: Pr2c9{ns .} ==> Br1c9 ≠ n
B-single: Br1c9 = nw
whip[1]: Br1c9{nw .} ==> Nr1c9 ≠ 1, Pr1c9 ≠ ew
N-single: Nr1c9 = 2
P-single: Pr1c9 = se
whip[1]: Br1c8{ew .} ==> Pr1c8 ≠ se, Pr1c8 ≠ ew, Nr1c8 ≠ 3
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ swn
B-single: Br1c7 = wne
whip[1]: Br1c7{wne .} ==> Pr2c8 ≠ sw, Pr2c7 ≠ ew, Pr2c7 ≠ se, Pr1c8 ≠ o, Pr1c7 ≠ ew
P-single: Pr1c7 = se
P-single: Pr1c8 = sw
P-single: Pr2c8 = ns
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ nes
B-single: Br1c6 = esw
whip[1]: Br1c6{esw .} ==> Pr2c7 ≠ ns, Pr2c6 ≠ sw, Pr2c6 ≠ ew, Pr2c6 ≠ ns, Pr1c6 ≠ ew
P-single: Pr1c6 = sw
P-single: Pr2c6 = ne
P-single: Pr2c7 = nw
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ ns, Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn
whip[1]: Br1c5{nes .} ==> Pr1c5 ≠ o, Pr1c5 ≠ sw, Pr2c5 ≠ ne, Nr1c5 ≠ 0, Nr1c5 ≠ 1
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ ne, Br2c3 ≠ sw, Br3c2 ≠ ne, Br3c2 ≠ sw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ ew, Br3c3 ≠ sw, Br2c2 ≠ e, Br2c2 ≠ s, Br3c2 ≠ o, Br3c2 ≠ s, Br3c2 ≠ w
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Br2c2{w .} ==> Pr2c3 ≠ ns, Pr3c2 ≠ ne, Pr3c3 ≠ nw, Pr2c3 ≠ sw, Pr3c2 ≠ se, Pr3c2 ≠ ew
P-single: Pr3c3 = se
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ n, Vr3c3 ≠ 0, Hr3c3 ≠ 0, Br2c3 ≠ nw, Br2c3 ≠ ew, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c3 ≠ se
H-single: Hr3c3 = 1
V-single: Vr3c3 = 1
B-single: Br3c3 = nw
whip[1]: Hr3c3{1 .} ==> Pr3c4 ≠ ns
whip[1]: Pr3c4{ew .} ==> Vr3c4 ≠ 1, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br2c4 ≠ o, Br2c4 ≠ n, Br2c4 ≠ e, Br2c4 ≠ ne, Br3c4 ≠ w
V-single: Vr3c4 = 0
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
same-colour-in-r2{c3 c4} ==> Vr2c4 = 0
P-single: Pr3c4 = ew
whip[1]: Vr2c4{0 .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ se, Br2c3 ≠ se, Br2c4 ≠ w, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ wne
B-single: Br2c3 = ns
whip[1]: Br2c3{ns .} ==> Hr2c3 ≠ 0
H-single: Hr2c3 = 1
horizontal-line-{r1 r2}c3 ==> Ir1c3 = out
same-colour-in-{r0 r1}c3 ==> Hr1c3 = 0
whip[1]: Hr2c3{1 .} ==> Br1c3 ≠ ne, Br1c3 ≠ nw, Br1c3 ≠ ew
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s, Pr1c3 ≠ ew, Pr1c4 ≠ ew, Br1c3 ≠ ns
B-single: Br0c3 = o
whip[1]: Pr2c5{se .} ==> Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ ew, Br1c4 ≠ sw, Br2c4 ≠ nes
whip[1]: Br2c4{se .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ns, Nr2c4 ≠ 0, Nr2c4 ≠ 3
whip[1]: Pr3c5{sw .} ==> Vr2c5 ≠ 1, Br2c4 ≠ se, Br3c4 ≠ se, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c4 ≠ o, Br3c4 ≠ e, Br3c4 ≠ s
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br2c4{ns .} ==> Pr2c5 ≠ se
whip[1]: Pr2c5{nw .} ==> Hr2c5 ≠ 1, Br1c5 ≠ nes
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ ns
whip[1]: Pr2c3{ew .} ==> Br1c2 ≠ nes, Br1c2 ≠ o, Br1c2 ≠ w
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 0
whip[1]: Pr4c4{se .} ==> Hr4c3 ≠ 1, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br4c3 ≠ n, Br4c4 ≠ n, Br4c4 ≠ w
H-single: Hr4c3 = 0
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
whip[1]: Hr4c3{0 .} ==> Pr4c3 ≠ se, Pr4c3 ≠ ew
whip[1]: Pr4c3{nw .} ==> Br4c2 ≠ w, Br4c2 ≠ ne, Br4c2 ≠ sw, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c2 ≠ o, Br4c2 ≠ s
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Vr4c3{1 .} ==> Pr4c3 ≠ nw, Pr5c3 ≠ o, Pr5c3 ≠ se, Pr5c3 ≠ ew, Pr5c3 ≠ sw, Br4c2 ≠ n, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ swn, Br4c3 ≠ e, Br4c3 ≠ s
P-single: Pr4c3 = ns
B-single: Br4c3 = w
w[1]-1-in-r4c3-asymmetric-nw-corner ==> Pr5c4 ≠ sw, Pr5c4 ≠ ew, Pr5c4 ≠ ns, Pr5c4 ≠ ne
whip[1]: Pr4c3{ns .} ==> Br3c2 ≠ se, Br3c2 ≠ esw
whip[1]: Br3c2{ew .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ se, Pr4c2 ≠ ew, Nr3c2 ≠ 3
whip[1]: Br4c3{w .} ==> Pr5c4 ≠ nw, Pr5c3 ≠ ne, Vr4c4 ≠ 1, Hr5c3 ≠ 1, Pr4c4 ≠ se
H-single: Hr5c3 = 0
V-single: Vr4c4 = 0
P-single: Pr4c4 = o
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = out
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
whip[1]: Hr5c3{0 .} ==> Br5c3 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ nes
whip[1]: Vr4c4{0 .} ==> Br4c4 ≠ nw, Br4c4 ≠ swn, Br4c4 ≠ wne
whip[1]: Br4c4{se .} ==> Pr4c5 ≠ nw, Pr4c5 ≠ ew, Nr4c4 ≠ 3
whip[1]: Pr4c5{se .} ==> Br3c4 ≠ ns, Br3c4 ≠ nes, Br3c5 ≠ ne, Br3c5 ≠ sw, Br4c5 ≠ ne, Br4c4 ≠ o, Br4c4 ≠ s, Br4c5 ≠ e
whip[1]: Br4c5{wne .} ==> Pr5c5 ≠ o, Pr5c5 ≠ sw, Nr4c5 ≠ 1
whip[1]: Pr5c5{nw .} ==> Br5c4 ≠ w, Br5c4 ≠ ne, Br5c4 ≠ sw, Br5c4 ≠ wne, Br5c4 ≠ nes, Br5c4 ≠ o, Br5c4 ≠ s
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 0
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 0
whip[1]: Br3c4{ne .} ==> Nr3c4 ≠ 3
whip[1]: Pr5c3{nw .} ==> Br5c2 ≠ w, Br5c2 ≠ ne, Br5c2 ≠ sw, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c2 ≠ o, Br5c2 ≠ s
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0
whip[1]: Pr5c4{se .} ==> Br5c4 ≠ ns, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ n
whip[1]: Pr2c6{ne .} ==> Vr2c6 ≠ 1, Br2c6 ≠ ew, Br2c6 ≠ sw
whip[1]: Br2c6{ns .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ nw
whip[1]: Pr3c6{ew .} ==> Br2c6 ≠ ne, Br3c6 ≠ o, Br3c6 ≠ w
B-single: Br2c6 = ns
whip[1]: Br2c6{ns .} ==> Pr3c7 ≠ ne
P-single: Pr3c7 = ew
whip[1]: Pr3c7{ew .} ==> Br2c7 ≠ esw
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 1
whip[1]: Br3c6{nw .} ==> Nr3c6 ≠ 0, Nr3c6 ≠ 3
whip[1]: Pr2c7{nw .} ==> Br2c7 ≠ nes
B-single: Br2c7 = se
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 3
N-single: Nr2c7 = 2
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ e
B-single: Br1c8 = ew
whip[1]: Br1c8{ew .} ==> Nr1c8 ≠ 1
N-single: Nr1c8 = 2
whip[1]: Hr4c5{0 .} ==> Pr4c5 ≠ se, Pr4c6 ≠ sw, Br3c5 ≠ ns, Br4c5 ≠ wne
P-single: Pr4c6 = ns
P-single: Pr4c5 = ns
B-single: Br4c5 = ew
B-single: Br3c5 = ew
whip[1]: Pr4c6{ns .} ==> Br3c6 ≠ n
B-single: Br3c6 = nw
whip[1]: Br3c6{nw .} ==> Nr3c6 ≠ 1, Pr3c6 ≠ ew
N-single: Nr3c6 = 2
P-single: Pr3c6 = se
whip[1]: Pr3c6{se .} ==> Hr3c5 ≠ 1
whip[1]: Pr4c5{ns .} ==> Br3c4 ≠ n
B-single: Br3c4 = ne
whip[1]: Br3c4{ne .} ==> Nr3c4 ≠ 1, Pr3c5 ≠ ew
N-single: Nr3c4 = 2
P-single: Pr3c5 = sw
whip[1]: Br4c5{ew .} ==> Nr4c5 ≠ 3
N-single: Nr4c5 = 2
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ esw, Br7c7 ≠ wne, Br7c7 ≠ nes, Br7c8 ≠ ew, Br7c8 ≠ esw
B-single: Br7c7 = swn
whip[1]: Br7c7{swn .} ==> Pr8c8 ≠ ns, Pr8c7 ≠ sw, Pr8c7 ≠ ew, Pr8c7 ≠ ns, Pr7c7 ≠ ew
P-single: Pr7c7 = se
P-single: Pr8c7 = ne
w[1]-1-in-r8c6-symmetric-ne-corner ==> Pr9c6 ≠ sw, Pr9c6 ≠ ne
w[1]-1-in-r6c6-symmetric-se-corner ==> Pr6c6 ≠ o
P-single: Pr6c6 = sw
w[1]-1-in-r9c5-asymmetric-ne-corner ==> Pr10c5 ≠ ew, Pr10c5 ≠ ns
whip[1]: Pr7c7{se .} ==> Br7c6 ≠ n, Br6c6 ≠ s
B-single: Br6c6 = w
B-single: Br7c6 = e
whip[1]: Br6c6{w .} ==> Vr6c6 ≠ 0, Pr7c6 ≠ se
V-single: Vr6c6 = 1
P-single: Pr7c6 = nw
vertical-line-r6{c5 c6} ==> Ir6c5 = out
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
whip[1]: Vr6c6{1 .} ==> Br6c5 ≠ o, Br6c5 ≠ s, Br6c5 ≠ w, Br6c5 ≠ sw
whip[1]: Br6c5{nes .} ==> Pr6c5 ≠ o, Pr6c5 ≠ ns, Pr6c5 ≠ nw, Pr6c5 ≠ sw, Pr7c5 ≠ ne, Nr6c5 ≠ 0, Nr6c5 ≠ 1
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ se, Br5c5 ≠ o, Br5c5 ≠ w, Br6c4 ≠ ne
whip[1]: Br6c4{sw .} ==> Pr7c4 ≠ o, Pr7c4 ≠ sw
whip[1]: Pr7c4{ew .} ==> Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c3 ≠ ne
whip[1]: Br5c5{sw .} ==> Nr5c5 ≠ 0
whip[1]: Br5c4{swn .} ==> Pr6c4 ≠ se, Pr6c4 ≠ ew
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ nw
whip[1]: Br6c4{sw .} ==> Pr7c5 ≠ o, Pr7c5 ≠ se
whip[1]: Pr7c5{sw .} ==> Br7c4 ≠ sw, Br7c5 ≠ nw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c4 ≠ o, Br7c4 ≠ s, Br7c4 ≠ w
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 0
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ s, Br7c5 ≠ e, Br7c5 ≠ o, Br6c5 ≠ ne, Br6c5 ≠ wne, Br7c5 ≠ w, Br7c5 ≠ ne, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ nes
B-single: Br6c5 = nes
whip[1]: Br6c5{nes .} ==> Nr6c5 ≠ 2, Pr7c5 ≠ sw, Pr7c5 ≠ nw, Pr7c5 ≠ ns, Pr6c5 ≠ se, Vr6c5 ≠ 1
V-single: Vr6c5 = 0
N-single: Nr6c5 = 3
P-single: Pr7c5 = ew
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
whip[1]: Vr6c5{0 .} ==> Br6c4 ≠ se, Br6c4 ≠ ew
whip[1]: Br6c4{sw .} ==> Hr7c4 ≠ 0, Pr7c4 ≠ ns, Pr7c4 ≠ nw
H-single: Hr7c4 = 1
w[1]-3-in-r6c5-hit-by-horiz-line-at-sw ==> Vr7c5 = 0
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
whip[1]: Hr7c4{1 .} ==> Br7c4 ≠ e, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ esw
whip[1]: Vr7c5{0 .} ==> Pr8c5 ≠ ne, Pr8c5 ≠ ns, Br7c4 ≠ ne, Br7c4 ≠ wne, Br7c4 ≠ nes
whip[1]: Pr8c5{sw .} ==> Hr8c4 ≠ 0, Br7c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c5 ≠ nw, Br8c5 ≠ se, Br7c4 ≠ n, Br8c4 ≠ o, Br8c4 ≠ e, Br8c4 ≠ s, Br8c4 ≠ w
H-single: Hr8c4 = 1
horizontal-line-{r7 r8}c4 ==> Ir8c4 = out
same-colour-in-{r8 r9}c4 ==> Hr9c4 = 0
whip[1]: Hr8c4{1 .} ==> Pr8c4 ≠ o, Pr8c4 ≠ ns, Pr8c4 ≠ nw, Pr8c4 ≠ sw
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ se, Br7c3 ≠ esw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c3 ≠ ne
whip[1]: Hr9c4{0 .} ==> Pr9c4 ≠ ne, Pr9c4 ≠ se, Pr9c4 ≠ ew, Pr9c5 ≠ sw, Br8c4 ≠ ns, Br8c4 ≠ swn, Br8c4 ≠ nes, Br9c4 ≠ n, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ nw, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ nes
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 0
whip[1]: Pr9c5{ne .} ==> Br8c5 ≠ ns, Br8c5 ≠ ew, Br9c4 ≠ e, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ esw, Br9c5 ≠ w
whip[1]: Br9c5{s .} ==> Pr10c5 ≠ ne, Pr10c6 ≠ nw
P-single: Pr10c5 = sw
whip[1]: Pr10c5{sw .} ==> Br10c5 ≠ ns, Br10c5 ≠ ne, Br9c5 ≠ s, Br9c4 ≠ w, Br9c4 ≠ o, Br10c4 ≠ esw, Br10c4 ≠ swn, Br10c5 ≠ nw, Br10c5 ≠ se
whip[1]: Br10c5{sw .} ==> Pr11c5 ≠ ew, Pr10c6 ≠ ew
P-single: Pr11c5 = nw
whip[1]: Pr11c5{nw .} ==> Br11c5 ≠ n, Br11c4 ≠ o, Br10c4 ≠ wne, Br10c5 ≠ sw
B-single: Br10c5 = ew
B-single: Br10c4 = nes
B-single: Br11c4 = n
B-single: Br11c5 = o
whip[1]: Br10c5{ew .} ==> Pr11c6 ≠ ew, Vr10c6 ≠ 0
V-single: Vr10c6 = 1
P-single: Pr11c6 = ne
vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
w[1]-3-in-r10c7-hit-by-horiz-line-at-sw ==> Vr10c8 = 1, Hr10c7 = 1
w[1]-2-in-r9c8-open-sw-corner ==> Hr9c8 = 1, Vr9c9 = 1, Hr9c9 = 0, Vr8c9 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r9 r10}c9 ==> Vr9c10 = 0, Vr10c9 = 1
w[1]-adjacent-1-2-on-pseudo-edge-in-r9{c9 c8}-fwd-diag-2s-3 ==> Hr10c9 = 0
w[1]-3-in-r10c9-closed-sw-corner ==> Pr10c10 ≠ sw, Pr10c10 ≠ ne, Pr10c10 ≠ o
w[1]-3-in-r10c7-closed-ne-corner ==> Pr11c7 ≠ ne, Pr11c7 ≠ o
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
vertical-line-r9{c8 c9} ==> Ir9c8 = out
no-vertical-line-r9{c7 c8} ==> Ir9c7 = out
horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
vertical-line-r10{c7 c8} ==> Ir10c8 = out
horizontal-line-{r8 r9}c8 ==> Ir8c8 = in
same-colour-in-r8{c7 c8} ==> Vr8c8 = 0
P-single: Pr8c8 = ew
different-colours-in-{r7 r8}c8 ==> Hr8c8 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
w[1]-3-in-r10c7-closed-se-corner ==> Pr10c7 ≠ se, Pr10c7 ≠ nw, Pr10c7 ≠ o

LOOP[6]: Vr10c6-Hr11c6-Hr11c7-Vr10c8-Hr10c7- ==> Hr10c6 = 0
no-horizontal-line-{r9 r10}c6 ==> Ir9c6 = in
different-colours-in-r9{c6 c7} ==> Hr9c7 = 1
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
different-colours-in-r9{c5 c6} ==> Hr9c6 = 1
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
different-colours-in-{r9 r10}c10 ==> Hr10c10 = 1
different-colours-in-{r8 r9}c10 ==> Hr9c10 = 1
whip[1]: Vr10c6{1 .} ==> Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ s, Br10c6 ≠ ne, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ nes
whip[1]: Br10c6{wne .} ==> Nr10c6 ≠ 0
whip[1]: Pr11c6{ne .} ==> Br11c6 ≠ o, Br10c6 ≠ w, Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c6 ≠ wne
B-single: Br11c6 = n
whip[1]: Br10c6{swn .} ==> Pr10c7 ≠ sw, Nr10c6 ≠ 1
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ esw, Br9c6 ≠ nes, Br10c7 ≠ swn, Br10c7 ≠ wne, Br9c6 ≠ o, Br9c6 ≠ n, Br9c6 ≠ w, Br9c7 ≠ o, Br9c7 ≠ n, Br9c7 ≠ e, Br9c7 ≠ ne
whip[1]: Br9c7{nes .} ==> Nr9c7 ≠ 0
whip[1]: Br9c6{wne .} ==> Nr9c6 ≠ 0
whip[1]: Br10c7{nes .} ==> Pr11c7 ≠ nw, Pr11c8 ≠ o, Pr11c8 ≠ ne, Pr11c8 ≠ ew, Pr10c8 ≠ o, Pr10c8 ≠ nw, Pr10c8 ≠ ew
P-single: Pr11c8 = nw
P-single: Pr11c7 = ew
whip[1]: Pr11c8{nw .} ==> Br10c8 ≠ s, Br10c8 ≠ e, Br10c8 ≠ n, Br10c8 ≠ o, Br11c8 ≠ n, Br11c7 ≠ o, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn, Br10c8 ≠ nes
B-single: Br11c7 = n
B-single: Br11c8 = o
whip[1]: Br11c8{o .} ==> Pr11c9 ≠ nw, Pr11c9 ≠ ew
whip[1]: Pr11c9{ne .} ==> Br10c9 ≠ wne, Br10c9 ≠ nes
whip[1]: Br10c9{swn .} ==> Pr11c9 ≠ o, Pr11c10 ≠ o, Pr11c10 ≠ ne, Pr10c9 ≠ ne, Pr10c9 ≠ ew
P-single: Pr11c9 = ne
whip[1]: Pr11c9{ne .} ==> Br11c9 ≠ o, Br10c8 ≠ w, Br10c8 ≠ nw
B-single: Br11c9 = n
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 0, Nr10c8 ≠ 1
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br10c9 ≠ swn, Br9c9 ≠ s
B-single: Br10c9 = esw
whip[1]: Br10c9{esw .} ==> Pr10c10 ≠ ew, Pr10c10 ≠ nw, Pr11c10 ≠ ew
P-single: Pr11c10 = nw
whip[1]: Pr11c10{nw .} ==> Br10c10 ≠ n, Br10c10 ≠ o, Br11c10 ≠ n, Br10c10 ≠ se, Br10c10 ≠ esw, Br10c10 ≠ nes
B-single: Br11c10 = o
whip[1]: Br11c10{o .} ==> Pr11c11 ≠ nw
P-single: Pr11c11 = o
whip[1]: Br10c10{nw .} ==> Pr10c11 ≠ ns, Pr10c11 ≠ sw, Nr10c10 ≠ 0, Nr10c10 ≠ 3
whip[1]: Pr10c11{nw .} ==> Br9c10 ≠ ne, Br9c10 ≠ sw, Br9c10 ≠ s
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 2
whip[1]: Pr10c10{se .} ==> Br9c10 ≠ o
whip[1]: Br9c10{nes .} ==> Pr9c10 ≠ nw, Nr9c10 ≠ 0
whip[1]: Pr9c10{ns .} ==> Br8c9 ≠ se, Br8c9 ≠ esw, Br9c9 ≠ n
whip[1]: Br9c9{w .} ==> Pr9c9 ≠ se, Pr9c9 ≠ ew
whip[1]: Pr9c9{sw .} ==> Br8c8 ≠ nw, Br9c8 ≠ sw, Br8c8 ≠ n
whip[1]: Br8c9{ew .} ==> Nr8c9 ≠ 3
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ esw, Br10c7 ≠ esw
B-single: Br10c7 = nes
whip[1]: Br10c7{nes .} ==> Pr10c8 ≠ se, Pr10c8 ≠ ns, Pr10c7 ≠ ns
P-single: Pr9c9 = sw
P-single: Pr10c8 = sw
w[1]-1-in-r9c9-asymmetric-nw-corner ==> Pr10c10 ≠ ns
P-single: Pr10c10 = se
whip[1]: Pr9c9{sw .} ==> Br9c9 ≠ e, Br9c8 ≠ ns, Br8c8 ≠ e, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ esw, Br8c9 ≠ ew, Br9c8 ≠ ew
B-single: Br9c8 = ne
B-single: Br8c9 = e
B-single: Br9c9 = w
whip[1]: Br9c8{ne .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ sw, Pr10c9 ≠ sw
P-single: Pr10c9 = ns
w[1]-1-in-r9c9-asymmetric-sw-corner ==> Pr9c10 ≠ ns
P-single: Pr9c10 = ne
whip[1]: Pr10c9{ns .} ==> Br10c8 ≠ wne
B-single: Br10c8 = ew
whip[1]: Br10c8{ew .} ==> Nr10c8 ≠ 3
N-single: Nr10c8 = 2
whip[1]: Pr9c10{ne .} ==> Br8c10 ≠ nw, Br9c10 ≠ w
B-single: Br9c10 = nes
B-single: Br8c10 = swn
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 1, Pr10c11 ≠ o, Pr9c11 ≠ o
N-single: Nr9c10 = 3
P-single: Pr9c11 = sw
P-single: Pr10c11 = nw
whip[1]: Pr10c11{nw .} ==> Br10c10 ≠ w
B-single: Br10c10 = nw
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 1
N-single: Nr10c10 = 2
whip[1]: Br8c10{swn .} ==> Nr8c10 ≠ 2
N-single: Nr8c10 = 3
whip[1]: Pr9c8{ew .} ==> Br8c7 ≠ nw, Br8c7 ≠ se, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c7 ≠ esw, Br9c7 ≠ wne, Br9c7 ≠ nes
whip[1]: Br8c9{e .} ==> Nr8c9 ≠ 2, Pr8c9 ≠ ns
N-single: Nr8c9 = 1
P-single: Pr8c9 = nw
whip[1]: Pr8c9{nw .} ==> Br7c8 ≠ e
B-single: Br7c8 = se
whip[1]: Br7c8{se .} ==> Nr7c8 ≠ 3, Nr7c8 ≠ 1
N-single: Nr7c8 = 2
whip[1]: Br8c8{swn .} ==> Nr8c8 ≠ 1
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ w, Br9c7 ≠ nw
whip[1]: Vr8c8{0 .} ==> Pr9c8 ≠ ne, Br8c7 ≠ ne, Br8c7 ≠ ew, Br8c8 ≠ swn
P-single: Pr9c8 = ew
B-single: Br8c8 = ns
whip[1]: Pr9c8{ew .} ==> Br9c7 ≠ s, Br9c7 ≠ sw
whip[1]: Br9c7{swn .} ==> Pr9c7 ≠ ns, Pr9c7 ≠ nw, Nr9c7 ≠ 1
whip[1]: Pr9c7{ew .} ==> Br8c7 ≠ sw, Br9c6 ≠ sw, Br9c6 ≠ wne, Br8c6 ≠ e, Br9c6 ≠ s, Br9c6 ≠ ne
B-single: Br8c7 = ns
whip[1]: Br8c8{ns .} ==> Nr8c8 ≠ 3
N-single: Nr8c8 = 2
whip[1]: Hr10c6{0 .} ==> Pr10c6 ≠ se, Pr10c7 ≠ ew, Br9c6 ≠ ns, Br9c6 ≠ swn, Br10c6 ≠ swn
P-single: Pr10c7 = ne
P-single: Pr10c6 = ns
B-single: Br10c6 = sw
w[1]-1-in-r9c5-asymmetric-se-corner ==> Pr9c5 ≠ ne
P-single: Pr9c5 = o
whip[1]: Pr10c7{ne .} ==> Br9c7 ≠ ns
B-single: Br9c7 = swn
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 2, Pr9c7 ≠ ew
N-single: Nr9c7 = 3
P-single: Pr9c7 = se
w[1]-1-in-r8c6-symmetric-se-corner ==> Pr8c6 ≠ o
whip[1]: Pr9c7{se .} ==> Br8c6 ≠ s
whip[1]: Br8c6{w .} ==> Pr9c6 ≠ ew
P-single: Pr9c6 = ns
whip[1]: Pr9c6{ns .} ==> Br9c6 ≠ e, Br9c5 ≠ n, Br8c6 ≠ n, Vr8c6 ≠ 0, Hr9c5 ≠ 1, Br8c5 ≠ sw
H-single: Hr9c5 = 0
V-single: Vr8c6 = 1
P-single: Pr8c6 = sw
B-single: Br8c5 = ne
B-single: Br8c6 = w
B-single: Br9c5 = e
B-single: Br9c6 = ew
vertical-line-r8{c5 c6} ==> Ir8c5 = out
same-colour-in-r8{c4 c5} ==> Vr8c5 = 0
w[1]-2-in-r8c5-open-sw-corner ==> Hr8c5 = 1
whip[1]: Pr8c6{sw .} ==> Br7c5 ≠ n
B-single: Br7c5 = ns
whip[1]: Br7c5{ns .} ==> Nr7c5 ≠ 3, Nr7c5 ≠ 1, Nr7c5 ≠ 0, Pr8c5 ≠ sw
N-single: Nr7c5 = 2
P-single: Pr8c5 = ew
whip[1]: Pr8c5{ew .} ==> Br8c4 ≠ ne, Br8c4 ≠ wne
whip[1]: Br8c4{nw .} ==> Nr8c4 ≠ 3
whip[1]: Br9c6{ew .} ==> Nr9c6 ≠ 3, Nr9c6 ≠ 1
N-single: Nr9c6 = 2
whip[1]: Br10c6{sw .} ==> Nr10c6 ≠ 3
N-single: Nr10c6 = 2
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Br10c4{nes .} ==> Pr10c4 ≠ sw, Pr10c4 ≠ ns, Pr11c4 ≠ nw, Vr10c4 ≠ 1
V-single: Vr10c4 = 0
P-single: Pr11c4 = ew
w[1]-1-in-r10c3-asymmetric-se-corner ==> Pr10c3 ≠ sw, Pr10c3 ≠ ew, Pr10c3 ≠ ns, Pr10c3 ≠ ne
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-vertical-line-r10{c2 c3} ==> Ir10c2 = in
horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
no-vertical-line-r9{c1 c2} ==> Ir9c1 = out
vertical-line-r9{c2 c3} ==> Ir9c3 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
w[1]-3-in-r8c1-hit-by-horiz-line-at-ne ==> Hr9c1 = 1
w[1]-3-in-r8c1-closed-sw-corner ==> Pr8c2 ≠ sw
w[3]-adjacent-3-2-in-r9{c2 c1}-noline-west ==> Vr10c2 = 0
different-colours-in-r8{c3 c4} ==> Hr8c4 = 1
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1
different-colours-in-{r9 r10}c1 ==> Hr10c1 = 1
w[1]-3-in-r10c1-closed-nw-corner ==> Pr11c2 ≠ nw, Pr11c2 ≠ o
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ e
whip[1]: Br10c3{w .} ==> Pr11c3 ≠ ne, Pr10c3 ≠ se
whip[1]: Pr10c3{nw .} ==> Br9c2 ≠ swn, Br9c2 ≠ wne, Br9c3 ≠ ns, Br9c3 ≠ se, Br9c3 ≠ sw, Br9c3 ≠ esw, Br9c3 ≠ swn, Br9c3 ≠ nes, Br10c2 ≠ ne, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ esw, Br10c2 ≠ wne, Br10c2 ≠ nes, Br10c3 ≠ w, Br9c3 ≠ s, Br10c2 ≠ e, Br10c3 ≠ n
B-single: Br10c3 = s
whip[1]: Br10c3{s .} ==> Pr11c3 ≠ o, Pr11c3 ≠ nw, Pr10c4 ≠ ew
P-single: Pr10c4 = ne
P-single: Pr11c3 = ew
whip[1]: Pr10c4{ne .} ==> Br9c3 ≠ n, Br9c3 ≠ o, Br9c3 ≠ w, Br9c3 ≠ nw, Br9c4 ≠ s
B-single: Br9c4 = sw
whip[1]: Br9c4{sw .} ==> Nr9c4 ≠ 3, Nr9c4 ≠ 1, Nr9c4 ≠ 0, Pr9c4 ≠ nw, Pr9c4 ≠ o
N-single: Nr9c4 = 2
whip[1]: Pr9c4{sw .} ==> Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ esw, Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ w
whip[1]: Br8c3{swn .} ==> Nr8c3 ≠ 0
whip[1]: Br9c3{wne .} ==> Nr9c3 ≠ 0
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ w, Br10c2 ≠ n, Br10c2 ≠ o, Br11c3 ≠ o, Br11c2 ≠ o, Br10c2 ≠ nw
B-single: Br11c2 = n
B-single: Br11c3 = n
whip[1]: Br10c2{swn .} ==> Nr10c2 ≠ 0
whip[1]: Br9c2{nes .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ ew, Pr10c2 ≠ ns, Pr10c3 ≠ o
P-single: Pr10c3 = nw
P-single: Pr10c2 = ew
whip[1]: Pr10c3{nw .} ==> Br10c2 ≠ s, Br9c3 ≠ e, Br9c3 ≠ ne, Br10c2 ≠ sw
whip[1]: Br10c2{swn .} ==> Nr10c2 ≠ 1
whip[1]: Br9c3{wne .} ==> Nr9c3 ≠ 1
whip[1]: Pr10c2{ew .} ==> Br9c1 ≠ ne, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ ew, Br9c2 ≠ esw, Br10c1 ≠ esw, Br10c2 ≠ swn
B-single: Br10c2 = ns
B-single: Br10c1 = swn
B-single: Br9c2 = nes
whip[1]: Br10c2{ns .} ==> Nr10c2 ≠ 3, Pr11c2 ≠ ne
N-single: Nr10c2 = 2
P-single: Pr11c2 = ew
whip[1]: Pr11c2{ew .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Br11c1{n .} ==> Pr11c1 ≠ o
P-single: Pr11c1 = ne
whip[1]: Br10c1{swn .} ==> Pr10c1 ≠ ns
P-single: Pr10c1 = se
whip[1]: Pr10c1{se .} ==> Br9c1 ≠ sw
B-single: Br9c1 = ns
whip[1]: Br9c1{ns .} ==> Pr9c2 ≠ ns, Pr9c1 ≠ ns
P-single: Pr9c1 = ne
P-single: Pr9c2 = ew
whip[1]: Pr9c1{ne .} ==> Br8c1 ≠ wne, Br8c1 ≠ nes
whip[1]: Pr9c2{ew .} ==> Br8c2 ≠ ne, Br8c1 ≠ esw, Br8c2 ≠ nw, Br8c2 ≠ ew, Br8c2 ≠ sw
B-single: Br8c1 = swn
whip[1]: Br8c1{swn .} ==> Pr8c2 ≠ ns, Pr8c1 ≠ ns
P-single: Pr8c1 = se
P-single: Pr8c2 = ew
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ nw, Br7c1 ≠ ew, Br7c1 ≠ sw
whip[1]: Br7c1{se .} ==> Pr7c1 ≠ ns
P-single: Pr7c1 = ne
whip[1]: Pr7c1{ne .} ==> Br6c1 ≠ n, Br6c1 ≠ o, Vr6c1 ≠ 0, Hr7c1 ≠ 0, Br6c1 ≠ e, Br6c1 ≠ s, Br6c1 ≠ w, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ ew, Br6c1 ≠ wne, Br6c1 ≠ nes, Br7c1 ≠ se
H-single: Hr7c1 = 1
V-single: Vr6c1 = 1
B-single: Br7c1 = ns
vertical-line-r6{c0 c1} ==> Ir6c1 = in
whip[1]: Hr7c1{1 .} ==> Pr7c2 ≠ ns
whip[1]: Pr7c2{ew .} ==> Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br7c2 ≠ nw, Br7c2 ≠ ew, Br7c2 ≠ sw, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ne
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 0
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o, Pr6c1 ≠ o, Pr6c1 ≠ ne
B-single: Br6c0 = e
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ sw, Br5c1 ≠ esw, Br5c1 ≠ swn, Br5c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Br6c1{swn .} ==> Pr6c2 ≠ sw, Nr6c1 ≠ 0, Nr6c1 ≠ 1
whip[1]: Pr8c2{ew .} ==> Br7c2 ≠ ne, Br8c2 ≠ se
B-single: Br8c2 = ns
whip[1]: Br8c2{ns .} ==> Pr9c3 ≠ ns, Pr8c3 ≠ ns
P-single: Pr9c3 = sw
whip[1]: Pr9c3{sw .} ==> Br8c3 ≠ ns, Br8c3 ≠ s, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ swn, Br9c3 ≠ wne
B-single: Br9c3 = ew
B-single: Br8c3 = e
whip[1]: Br9c3{ew .} ==> Nr9c3 ≠ 3, Pr9c4 ≠ sw
N-single: Nr9c3 = 2
P-single: Pr9c4 = ns
whip[1]: Pr9c4{ns .} ==> Br8c4 ≠ n
B-single: Br8c4 = nw
whip[1]: Br8c4{nw .} ==> Nr8c4 ≠ 1, Pr8c4 ≠ ew, Pr8c4 ≠ ne
N-single: Nr8c4 = 2
P-single: Pr8c4 = se
whip[1]: Pr8c4{se .} ==> Br7c3 ≠ s, Br7c3 ≠ e, Br7c3 ≠ ns, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ swn, Br7c4 ≠ swn
B-single: Br7c4 = ns
whip[1]: Br7c4{ns .} ==> Nr7c4 ≠ 3, Nr7c4 ≠ 1, Pr7c4 ≠ se
N-single: Nr7c4 = 2
whip[1]: Pr7c4{ew .} ==> Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ esw, Br6c3 ≠ nes, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ w
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 0
whip[1]: Br7c3{nw .} ==> Pr8c3 ≠ ew, Nr7c3 ≠ 3
P-single: Pr7c2 = nw
P-single: Pr8c3 = nw
whip[1]: Pr7c2{nw .} ==> Br6c2 ≠ s, Vr6c2 ≠ 0, Hr7c2 ≠ 1, Br6c1 ≠ sw, Br6c1 ≠ swn, Br6c2 ≠ ns, Br6c2 ≠ se, Br6c2 ≠ nes, Br7c2 ≠ ns
H-single: Hr7c2 = 0
V-single: Vr6c2 = 1
B-single: Br7c2 = se
B-single: Br6c1 = esw
vertical-line-r6{c1 c2} ==> Ir6c2 = out
whip[1]: Hr7c2{0 .} ==> Pr7c3 ≠ nw, Pr7c3 ≠ ew
whip[1]: Pr7c3{se .} ==> Br6c3 ≠ ne, Br6c3 ≠ sw, Br6c3 ≠ swn, Br6c3 ≠ e, Br7c3 ≠ o, Br7c3 ≠ n
whip[1]: Br7c3{nw .} ==> Nr7c3 ≠ 0
whip[1]: Vr6c2{1 .} ==> Pr6c2 ≠ o, Pr6c2 ≠ ne, Pr6c2 ≠ nw, Pr6c2 ≠ ew
whip[1]: Pr6c2{se .} ==> Hr6c1 ≠ 1, Br5c1 ≠ ns, Br5c1 ≠ se, Br5c1 ≠ nes, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c1 ≠ s, Br5c2 ≠ n, Br5c2 ≠ e
H-single: Hr6c1 = 0
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
horizontal-line-{r4 r5}c1 ==> Ir4c1 = out
horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
w[0]-adjacent-3-in-r3c1-nolines-east ==> Vr4c2 = 1, Vr3c1 = 1, Vr4c1 = 0, Vr2c1 = 0
w[1]-3-in-r1c1-hit-by-verti-line-at-se ==> Hr2c2 = 0
w[1]-3-in-r3c1-closed-sw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ o
w[1]-3-in-r3c1-closed-nw-corner ==> Pr4c2 ≠ nw, Pr4c2 ≠ o
w[1]-3-in-r4c1-closed-se-corner ==> Pr4c1 ≠ se, Pr4c1 ≠ o
w[1]-3-in-r4c1-closed-ne-corner ==> Pr5c1 ≠ ne, Pr5c1 ≠ o
w[1]-1-in-r2c2-asymmetric-sw-corner ==> Pr2c3 ≠ ew
P-single: Pr2c4 = ew
P-single: Pr1c3 = sw
P-single: Pr1c4 = o
P-single: Pr2c3 = ne
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
same-colour-in-r6{c3 c4} ==> Vr6c4 = 0
w[3]-adjacent-3-2-in-r6{c5 c4}-noline-west ==> Vr5c5 = 0
P-single: Pr6c5 = ew
P-single: Pr7c4 = ew
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-ne ==> Hr2c1 = 1
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
whip[1]: Hr6c1{0 .} ==> Pr6c1 ≠ se
P-single: Pr6c1 = ns
whip[1]: Vr2c2{1 .} ==> Br2c1 ≠ o, Pr2c2 ≠ ne, Pr2c2 ≠ ew, Br2c1 ≠ n, Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c1 ≠ swn, Br2c2 ≠ n
B-single: Br2c2 = w
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
whip[1]: Pr2c2{sw .} ==> Br1c2 ≠ sw, Br1c2 ≠ s
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 1
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr4c2 ≠ ns, Br3c1 ≠ esw, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ ew
P-single: Pr4c2 = sw
P-single: Pr3c2 = nw
B-single: Br3c2 = e
B-single: Br3c1 = swn
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ e, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c2 ≠ se
whip[1]: Br4c2{esw .} ==> Pr5c2 ≠ o, Pr5c2 ≠ se, Pr5c2 ≠ ew, Pr5c2 ≠ sw, Nr4c2 ≠ 1
whip[1]: Pr5c2{nw .} ==> Br5c1 ≠ wne, Br5c2 ≠ nw
whip[1]: Br5c2{ew .} ==> Pr6c3 ≠ o, Pr6c3 ≠ se, Nr5c2 ≠ 1, Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Pr6c3{sw .} ==> Br6c3 ≠ wne
whip[1]: Br6c3{ew .} ==> Pr6c4 ≠ sw, Nr6c3 ≠ 3
whip[1]: Pr6c4{ns .} ==> Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ se, Br5c3 ≠ sw, Br5c3 ≠ esw, Br6c3 ≠ ns, Br5c3 ≠ o, Br5c4 ≠ e
whip[1]: Br5c4{swn .} ==> Pr5c4 ≠ o, Pr5c5 ≠ ns, Nr5c4 ≠ 1
P-single: Pr5c5 = nw
P-single: Pr5c4 = se
whip[1]: Pr5c5{nw .} ==> Br4c4 ≠ e, Br5c5 ≠ sw
B-single: Br5c5 = s
B-single: Br4c4 = se
whip[1]: Br5c5{s .} ==> Nr5c5 ≠ 2
N-single: Nr5c5 = 1
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 1
N-single: Nr4c4 = 2
whip[1]: Br5c3{ew .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ ew, Nr5c3 ≠ 0, Nr5c3 ≠ 3
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ w
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 1
whip[1]: Br5c1{ew .} ==> Nr5c1 ≠ 3
whip[1]: Br4c1{nes .} ==> Pr4c1 ≠ ns
P-single: Pr4c1 = ne
whip[1]: Pr4c1{ne .} ==> Br4c1 ≠ wne
B-single: Br4c1 = nes
whip[1]: Br4c1{nes .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ ne, Pr5c1 ≠ ns
P-single: Pr6c3 = nw
P-single: Pr5c1 = se
P-single: Pr5c2 = nw
whip[1]: Pr6c3{nw .} ==> Br5c3 ≠ e, Br5c2 ≠ ns, Br5c2 ≠ ew, Br6c2 ≠ ew, Br6c2 ≠ wne, Br6c3 ≠ ew
B-single: Br6c3 = s
B-single: Br6c2 = nw
B-single: Br5c2 = se
B-single: Br5c3 = ew
whip[1]: Br6c3{s .} ==> Nr6c3 ≠ 2, Pr7c3 ≠ ns, Pr6c4 ≠ ns
N-single: Nr6c3 = 1
P-single: Pr6c4 = ne
P-single: Pr7c3 = se
whip[1]: Pr6c4{ne .} ==> Br5c4 ≠ nw, Br6c4 ≠ sw
B-single: Br6c4 = ns
B-single: Br5c4 = swn
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 2
N-single: Nr5c4 = 3
whip[1]: Pr7c3{se .} ==> Br7c3 ≠ w
B-single: Br7c3 = nw
whip[1]: Br7c3{nw .} ==> Nr7c3 ≠ 1
N-single: Nr7c3 = 2
whip[1]: Br6c2{nw .} ==> Nr6c2 ≠ 3, Pr6c2 ≠ ns
N-single: Nr6c2 = 2
P-single: Pr6c2 = se
whip[1]: Pr6c2{se .} ==> Br5c1 ≠ ew
whip[1]: Br5c2{se .} ==> Pr5c3 ≠ nw
P-single: Pr5c3 = ns
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ esw
B-single: Br4c2 = ew
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 3
N-single: Nr4c2 = 2
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 1
N-single: Nr5c3 = 2
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ w
B-single: Br5c1 = nw
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 1
N-single: Nr5c1 = 2
whip[1]: Pr3c2{nw .} ==> Br2c1 ≠ e, Br2c1 ≠ ne, Br2c1 ≠ ew, Br2c1 ≠ wne
whip[1]: Br2c1{nes .} ==> Pr2c1 ≠ se, Pr3c1 ≠ o, Pr3c1 ≠ ns, Nr2c1 ≠ 1
whip[1]: Br3c2{e .} ==> Nr3c2 ≠ 2
N-single: Nr3c2 = 1
whip[1]: Br3c1{swn .} ==> Pr3c1 ≠ ne
P-single: Pr3c1 = se
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ esw
whip[1]: Br2c1{nes .} ==> Pr2c1 ≠ ns
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ wne
B-single: Br1c1 = swn
whip[1]: Br1c1{swn .} ==> Pr2c2 ≠ ns, Pr2c1 ≠ o, Pr1c2 ≠ se, Pr1c1 ≠ o
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
P-single: Pr2c1 = ne
P-single: Pr2c2 = sw
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ wne
B-single: Br1c2 = ne
whip[1]: Br1c2{ne .} ==> Nr1c2 ≠ 3
N-single: Nr1c2 = 2
whip[1]: Pr2c1{ne .} ==> Br2c1 ≠ se
B-single: Br2c1 = nes
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 2
N-single: Nr2c1 = 3
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Pr2c4{ew .} ==> Br2c4 ≠ s, Vr1c4 ≠ 1, Hr2c4 ≠ 0, Br1c3 ≠ se, Br1c4 ≠ nw
H-single: Hr2c4 = 1
V-single: Vr1c4 = 0
P-single: Pr2c5 = nw
B-single: Br1c4 = se
B-single: Br1c3 = sw
B-single: Br2c4 = ns

LOOP[116]: Hr2c4-Hr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Hr4c1-Vr4c2-Hr5c1-Vr5c1-Vr6c1-Hr7c1-Vr6c2-Hr6c2-Vr5c3-Vr4c3-Vr3c3-Hr3c3-Hr3c4-Vr3c5-Vr4c5-Hr5c4-Vr5c4-Hr6c4-Hr6c5-Vr6c6-Hr7c5-Hr7c4-Hr7c3-Vr7c3-Hr8c2-Hr8c1-Vr8c1-Hr9c1-Hr9c2-Vr9c3-Hr10c2-Hr10c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Vr10c5-Hr10c4-Vr9c4-Vr8c4-Hr8c4-Hr8c5-Vr8c6-Vr9c6-Vr10c6-Hr11c6-Hr11c7-Vr10c8-Hr10c7-Vr9c7-Hr9c7-Hr9c8-Vr9c9-Vr10c9-Hr11c9-Vr10c10-Hr10c10-Vr9c11-Hr9c10-Vr8c10-Hr8c10-Vr7c11-Hr7c10-Vr6c10-Hr6c10-Vr5c11-Hr5c10-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Vr3c9-Hr4c8-Vr4c8-Hr5c8-Vr5c9-Vr6c9-Vr7c9-Hr8c8-Hr8c7-Vr7c7-Hr7c7-Vr6c8-Hr6c7-Vr5c7-Hr5c6-Vr4c6-Vr3c6-Hr3c6-Hr3c7-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Vr1c6-Hr1c5- ==> Vr1c5 = 1
no-horizontal-line-{r0 r1}c4 ==> Ir1c4 = out

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOOXOXOXX
OXXXXXXOXO
XXOOXOOOXX
OXOOXOOXXO
XXOXXXOOXX
XOOOOXXOXO
OOXXXXOOXX
XXXOOXXXXO
OOXOOXOOXX
XXXXOXXOXO

.———.———.   .   .———.   .———.   .———.———.
| 3     | 2   2 |   | 3 | 3 |   |       |
.———.   .———.———.   .———.   .   .   .———.
    | 1   2       0   2     |   | 2 | 3
.———.   .———.———.   .———.———.   .   .———.
| 3     | 2     | 2 |     1   2 |     3 |
.———.   .   .   .   .   .   .———.   .———.
  3 |   | 1     |   | 2   1 |     1 |
.———.   .   .———.   .———.   .———.   .———.
|       |   |           |       | 1   3 |
.   .———.   .———.———.   .———.   .   .———.
|   |         2     | 1   3 | 2 | 2 |
.———.   .———.———.———.   .———.   .   .———.
  2   2 |             1 | 3     | 1   3 |
.———.———.   .———.———.   .———.———.   .———.
| 3   2     |     2 | 1   2         |
.———.———.   .   .   .   .———.———.   .———.
  2   3 |   |     1 |   |     2 | 1     |
.———.———.   .———.   .   .———.   .   .———.
| 3       1   3 | 2 |     3 |   | 3 |
.———.———.———.———.   .———.———.   .———.   .

init-time = 0.63s, solve-time = 38.31s, total-time = 38.94s
nb-facts=<Fact-192135>
Quasi-Loop max length = 116
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
