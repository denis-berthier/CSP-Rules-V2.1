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
***  Using CLIPS 6.32-r770
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

Loading pre-computed background
start init-inner-N-and-B-candidates 0.612437009811401
start solution 0.623807907104492
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
w[1]-3-in-r4c10-closed-se-corner ==> Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ o
w[1]-3-in-r4c10-closed-ne-corner ==> Pr5c10 ≠ sw, Pr5c10 ≠ ne
w[1]-3-in-r4c2-closed-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r2c9-closed-sw-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-3-in-r2c9-closed-nw-corner ==> Pr3c10 ≠ se, Pr3c10 ≠ nw, Pr3c10 ≠ o
w[1]-3-in-r2c7-closed-nw-corner ==> Pr3c8 ≠ se, Pr3c8 ≠ nw, Pr3c8 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r9c9-symmetric-se-corner ==> Vr9c10 = 1, Hr10c9 = 1
w[1]-2-in-r10c10-open-nw-corner ==> Hr11c10 = 1, Vr10c11 = 1
w[1]-3-in-r9c9-closed-se-corner ==> Pr9c9 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ o
P-single: Pr11c11 = nw
entering level Loop with <Fact-93228>
entering level Col with <Fact-93320>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-vertical-line-r10{c9 c10} ==> Ir10c9 = in
horizontal-line-{r9 r10}c9 ==> Ir9c9 = out
vertical-line-r9{c9 c10} ==> Ir9c10 = in
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
vertical-line-r5{c9 c10} ==> Ir5c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
no-vertical-line-r4{c8 c9} ==> Ir4c8 = in
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-horizontal-line-{r2 r3}c10 ==> Ir2c10 = out
no-vertical-line-r2{c9 c10} ==> Ir2c9 = out
vertical-line-r2{c8 c9} ==> Ir2c8 = in
no-horizontal-line-{r1 r2}c8 ==> Ir1c8 = in
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
vertical-line-r1{c10 c11} ==> Ir1c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
vertical-line-r6{c0 c1} ==> Ir6c1 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = in
no-vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
horizontal-line-{r8 r9}c2 ==> Ir9c2 = out
no-vertical-line-r9{c4 c5} ==> Ir9c5 = in
no-horizontal-line-{r8 r9}c4 ==> Ir8c4 = in
vertical-line-r10{c3 c4} ==> Ir10c3 = out
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
no-vertical-line-r1{c5 c6} ==> Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
horizontal-line-{r1 r2}c3 ==> Ir1c3 = out
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
no-vertical-line-r1{c6 c7} ==> Ir1c7 = out
horizontal-line-{r1 r2}c7 ==> Ir2c7 = in
vertical-line-r2{c6 c7} ==> Ir2c6 = out
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
w[0]-adjacent-3-in-r2c7-nolines-east ==> Vr3c8 = 1, Vr1c8 = 1, Hr3c7 = 1, Vr3c7 = 0, Hr3c6 = 0
w[1]-diagonal-1-1-in-{r3c6...r4c5}-with-no-ne-outer-sides ==> Hr5c5 = 0, Vr4c5 = 0
w[1]-diagonal-1-1-in-{r4c5...r5c4}-with-no-sw-inner-sides ==> Hr5c4 = 0, Vr5c5 = 0
w[1]-diagonal-1-1-in-{r5c5...r6c6}-with-no-nw-outer-sides ==> Hr7c6 = 0, Vr6c7 = 0
w[1]-diagonal-1-1-in-{r5c4...r6c3}-with-no-ne-outer-sides ==> Hr7c3 = 0, Vr6c3 = 0
w[1]-diagonal-1-1-in-{r6c3...r7c2}-with-no-sw-inner-sides ==> Hr7c2 = 0, Vr7c3 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r5{c6 c7} ==> Vr5c7 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r6 r7} ==> Hr7c5 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r6{c4 c5} ==> Vr6c5 = 0
w[1]-diagonal-1-1-in-{r6c5...r5c6}-with-no-sw-outer-sides ==> Hr5c6 = 0
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ne
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
no-vertical-line-r3{c6 c7} ==> Ir3c7 = out
same-colour-in-{r0 r1}c7 ==> Hr1c7 = 0
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
w[1]-3-in-r9c2-hit-by-horiz-line-at-se ==> Vr9c2 = 1
w[1]-3-in-r9c2-closed-nw-corner ==> Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ o
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = in
no-vertical-line-r10{c2 c3} ==> Ir10c2 = out
same-colour-in-{r10 r11}c2 ==> Hr11c2 = 0
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-3-in-r9c2-hit-by-verti-line-at-sw ==> Hr10c1 = 0
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se, Pr10c1 ≠ o
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
same-colour-in-r8{c3 c4} ==> Vr8c4 = 0
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1
w[1]-3-in-r2c9-hit-by-horiz-line-at-ne ==> Vr1c10 = 0
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ se, Pr1c10 ≠ o
same-colour-in-{r3 r4}c8 ==> Hr4c8 = 0
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
Starting_init_links_with_<Fact-93838>
869 candidates, 7389 csp-links and 29873 links. Density = 7.92%
starting non trivial part of solution
Entering_level_W1_with_<Fact-168367>
whip[1]: Hr1c8{1 .} ==> Br1c8 ≠ esw, Br0c8 ≠ o, Br1c8 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ se, Br1c8 ≠ e, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ sw
B-single: Br0c8 = s
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ swn, Br1c9 ≠ wne, Br1c9 ≠ o, Br1c9 ≠ e, Br1c9 ≠ s
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ esw, Br0c9 ≠ o, Pr1c9 ≠ sw, Br1c9 ≠ w, Br1c9 ≠ ew, Br1c9 ≠ sw
P-single: Pr1c9 = ew
B-single: Br0c9 = s
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ ne, Br1c8 ≠ wne, Br1c8 ≠ nes
whip[1]: Br1c8{swn .} ==> Pr2c9 ≠ ne, Pr2c9 ≠ ns, Pr2c9 ≠ nw
whip[1]: Hr4c8{0 .} ==> Br4c8 ≠ nes, Pr4c8 ≠ ne, Pr4c8 ≠ se, Pr4c8 ≠ ew, Pr4c9 ≠ nw, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Br3c8 ≠ s, Br3c8 ≠ ns, Br3c8 ≠ se, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn, Br3c8 ≠ nes, Br4c8 ≠ n, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ swn, Br4c8 ≠ wne
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ wne, Pr1c10 ≠ sw, Pr2c10 ≠ ns, Pr2c10 ≠ nw, Br1c9 ≠ ne, Br1c9 ≠ nes
P-single: Pr1c10 = ew
B-single: Br1c10 = nes
whip[1]: Br1c10{nes .} ==> Pr2c11 ≠ sw, Pr2c11 ≠ ns, Pr2c11 ≠ o, Pr1c11 ≠ o
P-single: Pr1c11 = sw
P-single: Pr2c11 = nw
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ s, Br2c10 ≠ e, Br2c10 ≠ o, Br2c10 ≠ w, Br2c10 ≠ ne, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes
whip[1]: Br2c10{swn .} ==> Pr3c11 ≠ ns, Pr3c11 ≠ nw, Nr2c10 ≠ 0
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw, Br3c10 ≠ swn, Br3c10 ≠ n, Br3c10 ≠ e, Br3c10 ≠ ns
whip[1]: Br1c9{ns .} ==> Nr1c9 ≠ 3
whip[1]: Pr2c10{ew .} ==> Br2c9 ≠ wne, Br2c9 ≠ nes
whip[1]: Br2c9{swn .} ==> Pr2c9 ≠ o, Pr2c9 ≠ ew, Pr3c9 ≠ o, Pr3c9 ≠ ns, Pr3c9 ≠ nw, Pr3c9 ≠ se, Pr3c9 ≠ ew, Pr3c9 ≠ sw, Pr3c10 ≠ ne, Pr3c10 ≠ ns
P-single: Pr3c9 = ne
whip[1]: Pr3c9{ne .} ==> Br3c9 ≠ o, Br3c8 ≠ n, Br2c8 ≠ n, Br2c8 ≠ o, Br2c8 ≠ s, Br2c8 ≠ w, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn, Br2c8 ≠ nes, Br3c8 ≠ e, Br3c8 ≠ ne, Br3c8 ≠ nw, Br3c8 ≠ ew, Br3c8 ≠ wne, Br3c9 ≠ e, Br3c9 ≠ s, Br3c9 ≠ w, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ ns, Nr3c9 ≠ 0
whip[1]: Br3c8{w .} ==> Pr3c8 ≠ ne, Nr3c8 ≠ 2, Nr3c8 ≠ 3, Pr3c8 ≠ ew
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ esw, Br2c7 ≠ nes, Br3c7 ≠ nw, Br3c7 ≠ sw, Br3c7 ≠ swn, Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ s, Br3c7 ≠ w, Br3c7 ≠ ns, Br3c8 ≠ o
B-single: Br3c8 = w
whip[1]: Br3c8{w .} ==> Nr3c8 ≠ 0, Pr4c8 ≠ o, Pr4c8 ≠ sw
N-single: Nr3c8 = 1
whip[1]: Pr4c8{nw .} ==> Br4c7 ≠ w, Br4c7 ≠ ne, Br4c7 ≠ sw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c7 ≠ o, Br4c7 ≠ s
whip[1]: Br4c7{swn .} ==> Nr4c7 ≠ 0
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0
whip[1]: Br2c7{wne .} ==> Pr2c7 ≠ ns, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Pr2c8 ≠ ns, Pr3c7 ≠ o, Pr3c7 ≠ se, Pr3c7 ≠ ew, Pr3c7 ≠ sw
P-single: Pr2c7 = se
whip[1]: Pr2c7{se .} ==> Br2c6 ≠ w, Br2c6 ≠ s, Br2c6 ≠ n, Br2c6 ≠ o, Vr1c7 ≠ 1, Hr2c6 ≠ 1, Br1c7 ≠ ne, Br1c7 ≠ nw, Br1c7 ≠ ew, Br1c7 ≠ sw, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ sw, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ nes
whip[1]: Br2c6{esw .} ==> Pr2c6 ≠ ne, Pr2c6 ≠ ew, Nr2c6 ≠ 0
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se, Br2c5 ≠ nw, Br2c5 ≠ sw, Br2c5 ≠ swn, Br2c6 ≠ se, Br2c5 ≠ o, Br2c5 ≠ n, Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ ns, Br2c6 ≠ e
whip[1]: Br2c6{esw .} ==> Pr3c6 ≠ o, Pr3c6 ≠ se, Pr3c6 ≠ ew, Pr3c6 ≠ sw, Nr2c6 ≠ 1
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Br1c7{se .} ==> Pr1c7 ≠ sw
whip[1]: Pr3c7{nw .} ==> Br3c7 ≠ wne
whip[1]: Pr2c8{ew .} ==> Br1c8 ≠ swn, Br2c7 ≠ wne, Br2c8 ≠ ew, Br2c8 ≠ wne, Br1c8 ≠ n
B-single: Br2c7 = swn
whip[1]: Br2c7{swn .} ==> Pr3c8 ≠ ns, Pr3c7 ≠ nw, Pr3c7 ≠ ns
P-single: Pr3c7 = ne
P-single: Pr3c8 = sw
w[1]-1-in-r3c6-symmetric-ne-corner ==> Pr4c6 ≠ sw, Pr4c6 ≠ ne, Pr4c6 ≠ o
w[1]-1-in-r4c5-asymmetric-ne-corner ==> Pr5c5 ≠ ew, Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ ns
w[1]-1-in-r5c4-symmetric-ne-corner ==> Pr6c4 ≠ sw, Pr6c4 ≠ ne, Pr6c4 ≠ o
w[1]-1-in-r6c3-asymmetric-ne-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ ns
w[1]-1-in-r7c2-symmetric-ne-corner ==> Pr8c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ o
whip[1]: Pr3c7{ne .} ==> Br3c6 ≠ n, Br2c6 ≠ esw, Br3c6 ≠ e, Br3c7 ≠ e, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw
B-single: Br2c6 = ew
whip[1]: Br2c6{ew .} ==> Nr2c6 ≠ 3, Pr3c6 ≠ ne
N-single: Nr2c6 = 2
w[1]-1-in-r3c5-asymmetric-ne-corner ==> Pr4c5 ≠ ew, Pr4c5 ≠ se, Pr4c5 ≠ nw, Pr4c5 ≠ ns
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ se, Br3c4 ≠ esw, Br3c4 ≠ nes, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br4c4 ≠ swn, Br3c5 ≠ s, Br3c5 ≠ w, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ns
whip[1]: Br3c5{e .} ==> Hr4c5 ≠ 1, Vr3c5 ≠ 1, Pr4c5 ≠ ne, Pr3c5 ≠ ns, Pr3c5 ≠ se, Pr3c5 ≠ sw, Pr4c6 ≠ nw, Pr4c6 ≠ ew
V-single: Vr3c5 = 0
H-single: Hr4c5 = 0
w[1]-diagonal-1-1-in-{r4c5...r5c6}-with-no-nw-outer-sides ==> Hr6c6 = 0
w[1]-diagonal-1-1-in-{r5c6...r6c7}-with-no-se-inner-sides ==> Hr6c7 = 0
w[1]-diagonal-1-1-in-{r6c6...r7c5}-with-no-ne-outer-sides ==> Hr8c5 = 0, Vr7c5 = 0
w[1]-diagonal-1-1-in-{r7c5...r6c4}-with-no-nw-inner-sides ==> Hr7c4 = 0
w[1]-diagonal-1-1-in-{r6c4...r5c3}-with-no-se-outer-sides ==> Hr5c3 = 0, Vr5c3 = 0
w[1]-diagonal-1-1-in-{r7c5...r8c6}-with-no-nw-outer-sides ==> Hr9c6 = 0, Vr8c7 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c6{r7 r8} ==> Hr8c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c8{r5 r6} ==> Hr6c8 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r5 r6} ==> Hr6c5 = 0
w[1]-diagonal-1-1-in-{r5c5...r6c4}-with-no-sw-inner-sides ==> Hr6c4 = 0
w[1]-diagonal-1-1-in-{r5c5...r4c6}-with-no-sw-outer-sides ==> Hr4c6 = 0, Vr4c7 = 0
w[1]-diagonal-1-1-in-{r4c6...r5c7}-with-no-se-inner-sides ==> Hr5c7 = 0
w[1]-diagonal-1-1-in-{r5c7...r6c8}-with-no-nw-outer-sides ==> Hr7c8 = 0, Vr6c9 = 0
w[1]-diagonal-1-1-in-{r4c6...r3c5}-with-no-se-outer-sides ==> Hr3c5 = 0
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
no-vertical-line-r6{c8 c9} ==> Ir6c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
no-horizontal-line-{r7 r8}c9 ==> Ir8c9 = in
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
different-colours-in-{r8 r9}c9 ==> Hr9c9 = 1
w[1]-3-in-r9c9-closed-ne-corner ==> Pr10c9 ≠ sw, Pr10c9 ≠ ne, Pr10c9 ≠ o
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
same-colour-in-{r7 r8}c10 ==> Hr8c10 = 0
w[1]-2-in-r7c10-open-sw-corner ==> Hr7c10 = 1, Vr7c11 = 1, Vr6c11 = 0
no-vertical-line-r6{c10 c11} ==> Ir6c10 = out
same-colour-in-{r5 r6}c10 ==> Hr6c10 = 0
w[1]-2-in-r6c10-open-ne-corner ==> Vr6c10 = 1

LOOP[36]: Hr10c9-Vr9c10-Hr9c9-Vr8c9-Hr8c8-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Hr2c9-Vr2c9-Hr3c9-Vr3c10-Hr4c10-Vr4c11-Hr5c10-Vr5c10-Vr6c10-Hr7c10-Vr7c11-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Hr11c9- ==> Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
w[0]-adjacent-3-in-r9c7-nolines-south ==> Hr10c8 = 1
same-colour-in-{r5 r6}c9 ==> Hr6c9 = 0
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
same-colour-in-{r7 r8}c4 ==> Hr8c4 = 0
whip[1]: Vr3c5{0 .} ==> Br3c4 ≠ e, Br3c4 ≠ ne, Br3c4 ≠ ew, Br3c4 ≠ wne
whip[1]: Hr4c5{0 .} ==> Br4c5 ≠ n
whip[1]: Br4c5{w .} ==> Pr5c5 ≠ ne, Pr5c6 ≠ nw
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c4 ≠ ne, Br4c5 ≠ s, Br4c5 ≠ w, Br5c4 ≠ n, Br5c4 ≠ e, Br5c5 ≠ n
B-single: Br4c5 = e
whip[1]: Br4c5{e .} ==> Pr5c6 ≠ o, Pr4c5 ≠ sw, Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c6 ≠ sw
P-single: Pr4c5 = o
w[1]-1-in-r5c6-asymmetric-nw-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ew, Pr6c7 ≠ ns, Pr6c7 ≠ ne
w[1]-1-in-r6c7-symmetric-nw-corner ==> Pr7c8 ≠ se, Pr7c8 ≠ nw, Pr7c8 ≠ o
whip[1]: Pr4c5{o .} ==> Br3c4 ≠ s, Br3c4 ≠ ns, Br3c4 ≠ sw, Br3c4 ≠ swn
whip[1]: Br3c4{nw .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ se, Pr4c4 ≠ ew, Nr3c4 ≠ 3
whip[1]: Pr7c8{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ swn, Br7c8 ≠ wne, Br6c7 ≠ n, Br6c7 ≠ w, Br7c8 ≠ o, Br7c8 ≠ e, Br7c8 ≠ s
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Br6c7{s .} ==> Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr6c7 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ ew, Pr6c8 ≠ sw, Pr7c7 ≠ nw
whip[1]: Pr7c7{sw .} ==> Br6c6 ≠ e
whip[1]: Br6c6{w .} ==> Pr7c6 ≠ ne, Pr6c6 ≠ se
whip[1]: Pr6c8{se .} ==> Br5c7 ≠ s
whip[1]: Br5c7{w .} ==> Pr5c7 ≠ se, Pr5c8 ≠ sw
whip[1]: Pr6c7{nw .} ==> Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{w .} ==> Pr5c7 ≠ ns, Pr6c6 ≠ ne, Pr6c7 ≠ nw, Pr5c7 ≠ sw, Pr6c6 ≠ ew
P-single: Pr6c7 = o
w[1]-1-in-r5c7-symmetric-sw-corner ==> Pr5c8 ≠ ne, Pr5c8 ≠ o
w[1]-1-in-r6c6-symmetric-ne-corner ==> Pr7c6 ≠ sw, Pr7c6 ≠ o
w[1]-1-in-r7c5-asymmetric-ne-corner ==> Pr8c5 ≠ ew, Pr8c5 ≠ se, Pr8c5 ≠ nw, Pr8c5 ≠ ns
whip[1]: Pr6c7{o .} ==> Br5c7 ≠ w, Br6c6 ≠ n
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ ew, Br8c4 ≠ esw, Br8c4 ≠ swn, Br7c5 ≠ s, Br7c5 ≠ w, Br8c4 ≠ n, Br8c4 ≠ e, Br8c4 ≠ ns
whip[1]: Br7c5{e .} ==> Pr8c5 ≠ ne, Pr7c5 ≠ ns, Pr7c5 ≠ se, Pr7c5 ≠ sw, Pr8c6 ≠ nw, Pr8c6 ≠ ew, Pr8c6 ≠ sw
whip[1]: Pr8c6{se .} ==> Br8c5 ≠ n
whip[1]: Br8c5{w .} ==> Pr9c5 ≠ ne, Pr9c6 ≠ nw
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ ew, Br7c4 ≠ wne, Br7c4 ≠ e, Br7c4 ≠ ne
whip[1]: Pr5c8{ew .} ==> Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ o, Br4c8 ≠ e
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 0, Nr4c8 ≠ 3
whip[1]: Pr5c6{ns .} ==> Br4c6 ≠ s, Br4c6 ≠ n, Br4c6 ≠ e
B-single: Br4c6 = w
whip[1]: Br4c6{w .} ==> Pr5c7 ≠ nw, Pr5c7 ≠ ne, Pr5c6 ≠ ne, Pr4c7 ≠ nw, Pr4c7 ≠ ns, Pr4c6 ≠ se, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c7 ≠ sw, Pr5c7 ≠ ew
P-single: Pr5c7 = o
P-single: Pr4c6 = ns
P-single: Pr5c6 = ns
w[1]-1-in-r5c7-symmetric-nw-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ o
w[1]-1-in-r5c6-symmetric-ne-corner ==> Pr6c6 ≠ sw, Pr6c6 ≠ o
w[1]-1-in-r6c5-asymmetric-ne-corner ==> Pr7c5 ≠ ew, Pr7c5 ≠ nw
w[1]-1-in-r6c8-asymmetric-nw-corner ==> Pr7c9 ≠ sw, Pr7c9 ≠ ew, Pr7c9 ≠ ns, Pr7c9 ≠ ne
w[1]-1-in-r5c5-asymmetric-ne-corner ==> Pr6c5 ≠ ew, Pr6c5 ≠ se, Pr6c5 ≠ nw, Pr6c5 ≠ ns
w[1]-1-in-r6c4-symmetric-ne-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-1-in-r3c5-asymmetric-se-corner ==> Pr3c5 ≠ ew, Pr3c5 ≠ ne
whip[1]: Pr5c7{o .} ==> Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ swn, Br5c6 ≠ n, Br5c7 ≠ n
B-single: Br5c7 = e
B-single: Br5c6 = w
whip[1]: Br5c7{e .} ==> Pr5c8 ≠ nw, Pr5c8 ≠ ew
whip[1]: Pr5c8{se .} ==> Br5c8 ≠ n, Br5c8 ≠ e, Br5c8 ≠ s
B-single: Br5c8 = w
whip[1]: Br5c8{w .} ==> Pr6c9 ≠ nw, Pr6c9 ≠ ns, Pr6c9 ≠ ne, Pr6c8 ≠ ne, Pr5c9 ≠ nw, Pr5c9 ≠ ns, Pr5c8 ≠ se, Pr5c9 ≠ se, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Pr6c9 ≠ ew, Pr6c9 ≠ sw
P-single: Pr5c8 = ns
P-single: Pr6c8 = ns
w[1]-1-in-r6c7-asymmetric-ne-corner ==> Pr7c7 ≠ ew, Pr7c7 ≠ se
w[1]-1-in-r7c6-symmetric-ne-corner ==> Pr8c6 ≠ ne, Pr8c6 ≠ o
w[1]-1-in-r8c5-asymmetric-ne-corner ==> Pr9c5 ≠ ew, Pr9c5 ≠ se, Pr9c5 ≠ nw, Pr9c5 ≠ ns
whip[1]: Pr5c8{ns .} ==> Br4c7 ≠ n, Br4c8 ≠ s, Br4c8 ≠ se
B-single: Br4c7 = e
whip[1]: Br4c7{e .} ==> Nr4c7 ≠ 2, Pr4c7 ≠ ne, Pr4c8 ≠ nw, Nr4c7 ≠ 3
N-single: Nr4c7 = 1
P-single: Pr4c8 = ns
P-single: Pr4c7 = o
w[1]-1-in-r3c6-symmetric-se-corner ==> Pr3c6 ≠ nw
P-single: Pr3c6 = ns
whip[1]: Pr4c8{ns .} ==> Br3c7 ≠ nes
B-single: Br3c7 = ne
whip[1]: Br3c7{ne .} ==> Nr3c7 ≠ 3, Nr3c7 ≠ 1
N-single: Nr3c7 = 2
whip[1]: Pr4c7{o .} ==> Br3c6 ≠ s
B-single: Br3c6 = w
whip[1]: Pr3c6{ns .} ==> Br3c5 ≠ n, Br2c5 ≠ se, Br2c5 ≠ esw, Br2c5 ≠ nes
B-single: Br3c5 = e
whip[1]: Pr6c8{ns .} ==> Br6c8 ≠ e, Br6c8 ≠ n, Br6c7 ≠ s, Br6c8 ≠ s
B-single: Br6c8 = w
B-single: Br6c7 = e
whip[1]: Br6c8{w .} ==> Pr7c9 ≠ nw, Pr7c8 ≠ ne, Pr6c9 ≠ se, Pr7c8 ≠ ew, Pr7c8 ≠ sw
P-single: Pr7c8 = ns
P-single: Pr6c9 = o
whip[1]: Pr7c8{ns .} ==> Br7c8 ≠ n, Br7c7 ≠ n, Br7c7 ≠ o, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ sw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nes
whip[1]: Br7c8{esw .} ==> Pr8c8 ≠ o, Pr8c8 ≠ se, Pr8c8 ≠ ew, Pr8c8 ≠ sw
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ ne, Br8c7 ≠ wne, Br8c7 ≠ nes, Br8c8 ≠ nw, Br8c8 ≠ swn, Br8c8 ≠ wne
whip[1]: Br7c7{esw .} ==> Nr7c7 ≠ 0
whip[1]: Pr6c9{o .} ==> Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ nes, Br6c9 ≠ n, Br6c9 ≠ w, Br6c9 ≠ ne, Br6c9 ≠ ns, Br6c9 ≠ nw, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c9 ≠ nes
whip[1]: Br6c9{se .} ==> Pr6c10 ≠ ew, Nr6c9 ≠ 3
P-single: Pr6c10 = ns
whip[1]: Pr6c10{ns .} ==> Br6c9 ≠ o, Br5c9 ≠ n, Br5c9 ≠ o, Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ se, Br5c10 ≠ sw, Br6c9 ≠ s, Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ se
whip[1]: Br6c10{sw .} ==> Pr7c10 ≠ ew
whip[1]: Pr7c10{ns .} ==> Hr7c9 ≠ 1, Br6c9 ≠ se, Br7c10 ≠ nw, Br7c10 ≠ se
B-single: Br6c9 = e
whip[1]: Br6c9{e .} ==> Nr6c9 ≠ 2, Nr6c9 ≠ 0, Pr7c9 ≠ se
N-single: Nr6c9 = 1
P-single: Pr7c9 = o
whip[1]: Pr7c9{o .} ==> Vr7c9 ≠ 1, Br7c8 ≠ ew, Br7c8 ≠ esw
whip[1]: Br7c8{sw .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Nr7c8 ≠ 3
whip[1]: Br5c10{ew .} ==> Pr5c10 ≠ ew
whip[1]: Pr5c10{se .} ==> Hr5c9 ≠ 1, Br4c10 ≠ esw, Br4c10 ≠ swn, Br5c9 ≠ ne
B-single: Br5c9 = e
whip[1]: Br5c9{e .} ==> Nr5c9 ≠ 2, Nr5c9 ≠ 0, Pr5c9 ≠ ne, Nr5c9 ≠ 3
N-single: Nr5c9 = 1
P-single: Pr5c9 = o
whip[1]: Pr5c9{o .} ==> Vr4c9 ≠ 1, Br4c8 ≠ ew
B-single: Br4c8 = w
whip[1]: Br4c8{w .} ==> Nr4c8 ≠ 2, Pr4c9 ≠ se
N-single: Nr4c8 = 1
P-single: Pr4c9 = o
whip[1]: Pr4c9{o .} ==> Hr4c9 ≠ 1, Br3c9 ≠ ns, Br3c9 ≠ nes
whip[1]: Br3c9{ne .} ==> Nr3c9 ≠ 3, Pr4c10 ≠ ew, Pr4c10 ≠ sw
whip[1]: Pr4c10{ns .} ==> Br3c10 ≠ s, Br3c10 ≠ ne, Br3c10 ≠ nes, Br4c10 ≠ wne, Br3c9 ≠ n, Br3c10 ≠ o
B-single: Br3c9 = ne
B-single: Br4c10 = nes
whip[1]: Br3c9{ne .} ==> Nr3c9 ≠ 1, Pr3c10 ≠ ew
N-single: Nr3c9 = 2
P-single: Pr3c10 = sw
whip[1]: Pr3c10{sw .} ==> Br2c10 ≠ ns, Br2c9 ≠ esw, Br2c10 ≠ nw, Br2c10 ≠ swn, Br3c10 ≠ wne
B-single: Br2c10 = n
B-single: Br2c9 = swn
whip[1]: Br2c10{n .} ==> Pr3c11 ≠ sw, Pr2c10 ≠ se, Nr2c10 ≠ 2, Nr2c10 ≠ 3
N-single: Nr2c10 = 1
P-single: Pr2c10 = ew
P-single: Pr3c11 = o
whip[1]: Pr2c10{ew .} ==> Br1c9 ≠ n
B-single: Br1c9 = ns
whip[1]: Br1c9{ns .} ==> Nr1c9 ≠ 1, Pr2c9 ≠ sw
N-single: Nr1c9 = 2
P-single: Pr2c9 = se
whip[1]: Pr2c9{se .} ==> Br1c8 ≠ ns, Br2c8 ≠ ne
B-single: Br2c8 = e
B-single: Br1c8 = nw
whip[1]: Br2c8{e .} ==> Nr2c8 ≠ 2, Nr2c8 ≠ 0, Pr2c8 ≠ ew, Nr2c8 ≠ 3
N-single: Nr2c8 = 1
P-single: Pr1c7 = o
P-single: Pr2c8 = nw
whip[1]: Pr1c7{o .} ==> Hr1c6 ≠ 1, Br1c7 ≠ ns
B-single: Br1c7 = se
whip[1]: Br1c7{se .} ==> Pr1c8 ≠ ew
P-single: Pr1c8 = se
whip[1]: Br1c8{nw .} ==> Nr1c8 ≠ 3, Nr1c8 ≠ 1
N-single: Nr1c8 = 2
whip[1]: Br3c10{sw .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ nw, Nr3c10 ≠ 0, Nr3c10 ≠ 3
whip[1]: Br4c10{nes .} ==> Pr5c10 ≠ ns, Pr4c10 ≠ ns, Pr5c11 ≠ ns, Pr4c11 ≠ o, Vr4c10 ≠ 1
P-single: Pr7c10 = ne
P-single: Pr6c11 = o
P-single: Pr4c11 = sw
P-single: Pr5c11 = nw
P-single: Pr4c10 = ne
P-single: Pr5c10 = se
whip[1]: Pr7c10{ne .} ==> Vr7c10 ≠ 1, Br6c10 ≠ ew, Br7c10 ≠ ew, Br7c10 ≠ sw
B-single: Br6c10 = sw
whip[1]: Br6c10{sw .} ==> Pr7c11 ≠ ns
P-single: Pr7c11 = sw
whip[1]: Pr7c11{sw .} ==> Br7c10 ≠ ns
B-single: Br7c10 = ne
whip[1]: Br7c10{ne .} ==> Pr8c11 ≠ sw
P-single: Pr8c11 = ns
whip[1]: Pr8c11{ns .} ==> Br8c10 ≠ n, Br8c10 ≠ o, Br8c10 ≠ s, Br8c10 ≠ w, Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ sw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br8c10 ≠ nes
whip[1]: Br8c10{esw .} ==> Pr9c11 ≠ o, Pr9c11 ≠ sw, Nr8c10 ≠ 0
whip[1]: Pr9c11{nw .} ==> Br9c10 ≠ w, Br9c10 ≠ ne, Br9c10 ≠ sw, Br9c10 ≠ wne, Br9c10 ≠ nes, Br9c10 ≠ o, Br9c10 ≠ s
whip[1]: Br9c10{swn .} ==> Nr9c10 ≠ 0
whip[1]: Pr8c10{sw .} ==> Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ n, Br8c9 ≠ e, Br8c9 ≠ ns
whip[1]: Pr6c11{o .} ==> Br5c10 ≠ ew
B-single: Br5c10 = nw
whip[1]: Pr4c11{sw .} ==> Br3c10 ≠ w
B-single: Br3c10 = sw
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 1
N-single: Nr3c10 = 2
whip[1]: Pr9c5{sw .} ==> Br8c4 ≠ wne, Br8c4 ≠ nes, Br9c5 ≠ nw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes, Br8c4 ≠ ne, Br8c5 ≠ s, Br8c5 ≠ w, Br9c5 ≠ n, Br9c5 ≠ ne, Br9c5 ≠ ns
B-single: Br8c5 = e
whip[1]: Br8c5{e .} ==> Pr9c6 ≠ o, Pr8c5 ≠ sw, Pr9c6 ≠ se, Pr9c6 ≠ ew, Pr9c6 ≠ sw
P-single: Pr8c5 = o
whip[1]: Pr8c5{o .} ==> Br7c4 ≠ s, Br7c4 ≠ ns, Br7c4 ≠ sw, Br7c4 ≠ swn
whip[1]: Br7c4{nw .} ==> Pr8c4 ≠ ne, Pr8c4 ≠ se, Pr8c4 ≠ ew, Nr7c4 ≠ 3
whip[1]: Pr9c6{ns .} ==> Br8c6 ≠ s, Br9c6 ≠ s, Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ swn, Br9c6 ≠ wne, Br8c6 ≠ n, Br8c6 ≠ e, Br9c6 ≠ o, Br9c6 ≠ e
B-single: Br8c6 = w
whip[1]: Br8c6{w .} ==> Pr9c7 ≠ nw, Pr9c7 ≠ ns, Pr9c7 ≠ ne, Pr9c6 ≠ ne, Pr8c7 ≠ nw, Pr8c7 ≠ ns, Pr8c6 ≠ se, Pr8c7 ≠ se, Pr8c7 ≠ ew, Pr8c7 ≠ sw, Pr9c7 ≠ ew, Pr9c7 ≠ sw
P-single: Pr8c6 = ns
P-single: Pr9c6 = ns
w[1]-1-in-r7c5-asymmetric-se-corner ==> Pr7c5 ≠ ne
P-single: Pr7c5 = o
w[1]-1-in-r6c4-symmetric-se-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw
w[1]-1-in-r5c3-asymmetric-se-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ew, Pr5c3 ≠ ns, Pr5c3 ≠ ne
whip[1]: Pr8c6{ns .} ==> Br7c6 ≠ e, Br7c6 ≠ n, Br7c5 ≠ n, Br7c6 ≠ s
B-single: Br7c6 = w
B-single: Br7c5 = e
whip[1]: Br7c6{w .} ==> Pr8c7 ≠ ne, Pr7c6 ≠ nw, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c7 ≠ sw
P-single: Pr7c7 = o
P-single: Pr7c6 = ns
P-single: Pr8c7 = o
w[1]-1-in-r6c6-symmetric-se-corner ==> Pr6c6 ≠ nw
P-single: Pr6c6 = ns
w[1]-1-in-r5c5-asymmetric-se-corner ==> Pr5c5 ≠ sw
P-single: Pr5c5 = o
w[1]-1-in-r6c5-asymmetric-se-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ ne
P-single: Pr6c5 = o
w[1]-1-in-r5c4-symmetric-se-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ s, Br7c7 ≠ ew, Br7c7 ≠ esw
B-single: Br6c6 = w
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 3
whip[1]: Pr7c6{ns .} ==> Br6c5 ≠ n, Br6c5 ≠ s, Br6c5 ≠ w
B-single: Br6c5 = e
whip[1]: Pr8c7{o .} ==> Br7c7 ≠ se, Br8c7 ≠ n, Br8c7 ≠ w, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn
B-single: Br7c7 = e
whip[1]: Br7c7{e .} ==> Nr7c7 ≠ 2, Pr8c8 ≠ nw
N-single: Nr7c7 = 1
whip[1]: Pr8c8{ns .} ==> Br8c8 ≠ s, Br8c8 ≠ se, Br8c8 ≠ o, Br8c8 ≠ e
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Br8c7{se .} ==> Nr8c7 ≠ 3
whip[1]: Pr6c6{ns .} ==> Br5c5 ≠ s, Br5c5 ≠ w
B-single: Br5c5 = e
whip[1]: Pr5c5{o .} ==> Br4c4 ≠ s, Br4c4 ≠ sw
whip[1]: Br4c4{w .} ==> Pr5c4 ≠ ne, Nr4c4 ≠ 2, Nr4c4 ≠ 3, Pr5c4 ≠ ew
whip[1]: Pr5c4{sw .} ==> Vr5c4 ≠ 0, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ w, Br5c3 ≠ n, Br5c3 ≠ s, Br5c3 ≠ w, Br5c4 ≠ s
V-single: Vr5c4 = 1
B-single: Br5c4 = w
B-single: Br5c3 = e
vertical-line-r5{c3 c4} ==> Ir5c3 = out
no-vertical-line-r5{c2 c3} ==> Ir5c2 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
no-vertical-line-r7{c2 c3} ==> Ir7c2 = out
horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
vertical-line-r4{c2 c3} ==> Ir4c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
different-colours-in-r3{c3 c4} ==> Hr3c4 = 1
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-r6{c3 c4} ==> Hr6c4 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
whip[1]: Vr5c4{1 .} ==> Pr6c4 ≠ ew
P-single: Pr6c4 = ns
whip[1]: Pr6c4{ns .} ==> Br6c4 ≠ e, Br6c4 ≠ n, Br6c3 ≠ n, Br6c3 ≠ s, Br6c3 ≠ w, Br6c4 ≠ s
B-single: Br6c4 = w
B-single: Br6c3 = e
whip[1]: Br6c4{w .} ==> Pr7c4 ≠ se, Pr7c4 ≠ ew
whip[1]: Pr7c4{nw .} ==> Br7c3 ≠ w, Br7c3 ≠ ne, Br7c3 ≠ sw, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ nw, Br7c3 ≠ o, Br7c3 ≠ s, Br7c4 ≠ n
whip[1]: Br7c4{w .} ==> Nr7c4 ≠ 2
whip[1]: Br7c3{swn .} ==> Nr7c3 ≠ 0
whip[1]: Br6c3{e .} ==> Pr7c3 ≠ ne, Pr6c3 ≠ ne, Pr6c3 ≠ ns, Pr6c3 ≠ se, Pr6c3 ≠ ew, Pr6c3 ≠ sw, Pr7c4 ≠ nw
P-single: Pr7c4 = ns
whip[1]: Pr7c4{ns .} ==> Br7c4 ≠ o, Br7c3 ≠ n, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ swn
B-single: Br7c4 = w
whip[1]: Br7c4{w .} ==> Nr7c4 ≠ 0, Pr8c4 ≠ o, Pr8c4 ≠ sw
N-single: Nr7c4 = 1
whip[1]: Pr8c4{nw .} ==> Br8c3 ≠ w, Br8c3 ≠ ne, Br8c3 ≠ sw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c3 ≠ o, Br8c3 ≠ s
whip[1]: Br8c3{swn .} ==> Nr8c3 ≠ 0
whip[1]: Pr6c3{nw .} ==> Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br6c2 ≠ ne, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br5c2 ≠ e, Br5c2 ≠ s, Br6c2 ≠ e
whip[1]: Pr7c3{sw .} ==> Br7c2 ≠ n, Br7c2 ≠ e
whip[1]: Br7c2{w .} ==> Pr7c2 ≠ ne, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Pr7c2 ≠ se, Pr7c2 ≠ ew, Pr7c3 ≠ sw
P-single: Pr7c3 = o
whip[1]: Pr7c3{o .} ==> Br6c2 ≠ s, Br6c2 ≠ ns, Br6c2 ≠ sw, Br6c2 ≠ swn, Br7c3 ≠ ew, Br7c3 ≠ esw
whip[1]: Br7c3{se .} ==> Nr7c3 ≠ 3
whip[1]: Br6c2{nw .} ==> Nr6c2 ≠ 3
whip[1]: Br5c3{e .} ==> Pr5c3 ≠ se, Pr5c4 ≠ sw, Pr6c3 ≠ nw
P-single: Pr6c3 = o
P-single: Pr5c4 = ns
whip[1]: Pr6c3{o .} ==> Br5c2 ≠ se, Br5c2 ≠ esw, Br5c2 ≠ nes, Br6c2 ≠ n, Br6c2 ≠ nw
whip[1]: Br6c2{w .} ==> Pr6c2 ≠ ne, Nr6c2 ≠ 2, Pr6c2 ≠ se, Pr6c2 ≠ ew
whip[1]: Br5c2{nw .} ==> Nr5c2 ≠ 3
whip[1]: Pr5c4{ns .} ==> Br4c4 ≠ o, Br4c3 ≠ s, Br4c3 ≠ ns, Br4c3 ≠ sw, Br4c3 ≠ swn
B-single: Br4c4 = w
whip[1]: Br4c4{w .} ==> Nr4c4 ≠ 0, Pr4c4 ≠ nw, Pr4c4 ≠ o
N-single: Nr4c4 = 1
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ nes, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ w
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 0
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c3{nw .} ==> Br4c2 ≠ swn, Br4c2 ≠ wne
whip[1]: Br4c2{nes .} ==> Pr4c3 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ nw, Pr4c3 ≠ ew, Pr5c2 ≠ ns, Pr5c2 ≠ nw, Pr5c3 ≠ o
P-single: Pr5c3 = nw
whip[1]: Pr5c3{nw .} ==> Br5c2 ≠ o, Br4c3 ≠ e, Br4c3 ≠ ne, Br5c2 ≠ w
whip[1]: Br5c2{nw .} ==> Nr5c2 ≠ 0
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 1
whip[1]: Pr5c2{ew .} ==> Vr4c2 ≠ 1, Br4c2 ≠ esw, Br5c1 ≠ sw, Br4c1 ≠ e, Br5c1 ≠ ne
V-single: Vr4c2 = 0
B-single: Br4c2 = nes
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
whip[1]: Vr4c2{0 .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ sw
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ w, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ w, Br3c2 ≠ ne
whip[1]: Br3c2{nes .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se, Nr3c2 ≠ 0
P-single: Pr4c3 = sw
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ ns, Br3c3 ≠ s, Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br4c3 ≠ wne
B-single: Br4c3 = ew
whip[1]: Br4c3{ew .} ==> Nr4c3 ≠ 3, Pr4c4 ≠ sw
N-single: Nr4c3 = 2
P-single: Pr4c4 = ns
whip[1]: Pr4c4{ns .} ==> Br3c4 ≠ n, Br3c4 ≠ o
whip[1]: Br3c4{nw .} ==> Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ nw, Pr3c4 ≠ ew, Nr3c4 ≠ 0
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ nes
whip[1]: Br3c3{ne .} ==> Pr3c3 ≠ ns, Nr3c3 ≠ 3, Pr3c3 ≠ sw
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ wne, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ e, Br2c3 ≠ w, Br2c3 ≠ ne, Br3c3 ≠ e
B-single: Br3c3 = ne
whip[1]: Br3c3{ne .} ==> Nr3c3 ≠ 1, Pr3c4 ≠ se, Pr3c4 ≠ ns
N-single: Nr3c3 = 2
P-single: Pr3c4 = sw
whip[1]: Pr3c4{sw .} ==> Vr2c4 ≠ 1, Hr3c4 ≠ 1, Br3c4 ≠ nw
B-single: Br3c4 = w
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 2, Pr3c5 ≠ nw
N-single: Nr3c4 = 1
P-single: Pr3c5 = o
whip[1]: Pr3c5{o .} ==> Vr2c5 ≠ 1, Br2c5 ≠ ew, Br2c5 ≠ wne
whip[1]: Br2c5{ne .} ==> Pr2c5 ≠ ns, Nr2c5 ≠ 3
whip[1]: Pr2c5{ew .} ==> Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ ew, Br1c5 ≠ ne, Br2c5 ≠ e
B-single: Br2c5 = ne
whip[1]: Br2c5{ne .} ==> Nr2c5 ≠ 1, Pr2c6 ≠ ns
N-single: Nr2c5 = 2
P-single: Pr2c6 = sw
whip[1]: Pr2c6{sw .} ==> Vr1c6 ≠ 1
whip[1]: Br1c5{sw .} ==> Pr1c6 ≠ se
whip[1]: Br1c4{wne .} ==> Pr1c4 ≠ o, Pr1c4 ≠ ew, Pr1c4 ≠ sw, Pr2c4 ≠ se, Pr2c4 ≠ ew
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ w, Br1c3 ≠ s, Br1c3 ≠ n, Br1c3 ≠ o, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ sw, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes
whip[1]: Br1c3{esw .} ==> Pr1c3 ≠ se, Pr1c3 ≠ ew, Nr1c3 ≠ 0
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ ns
whip[1]: Pr2c4{nw .} ==> Hr2c4 ≠ 1, Br1c4 ≠ swn, Br2c3 ≠ sw, Br2c3 ≠ s
B-single: Br1c4 = wne
whip[1]: Br1c4{wne .} ==> Pr2c5 ≠ ew, Pr1c5 ≠ ew
P-single: Pr1c6 = o
P-single: Pr1c5 = sw
P-single: Pr2c5 = ne
whip[1]: Pr1c6{o .} ==> Br1c5 ≠ ns
B-single: Br1c5 = sw
whip[1]: Br2c3{swn .} ==> Pr2c3 ≠ o, Pr2c3 ≠ ns, Pr2c3 ≠ nw, Pr2c3 ≠ sw, Pr2c4 ≠ ns, Nr2c3 ≠ 0, Nr2c3 ≠ 1
P-single: Pr2c4 = nw
whip[1]: Pr2c4{nw .} ==> Br1c3 ≠ e, Br1c3 ≠ ew
whip[1]: Br1c3{esw .} ==> Nr1c3 ≠ 1
whip[1]: Pr2c3{ew .} ==> Br1c2 ≠ nes, Br2c2 ≠ ne
whip[1]: Br2c2{sw .} ==> Pr3c2 ≠ o, Pr3c2 ≠ sw
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ wne, Br3c1 ≠ ne
whip[1]: Br3c1{swn .} ==> Nr3c1 ≠ 0
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ ne, Pr5c1 ≠ o, Pr5c1 ≠ se, Br4c1 ≠ n, Br4c1 ≠ s
B-single: Br4c1 = w
B-single: Br4c0 = e
whip[1]: Br4c1{w .} ==> Pr5c1 ≠ ne, Hr5c1 ≠ 1, Hr4c1 ≠ 1, Pr4c1 ≠ se, Pr4c2 ≠ ew, Pr5c2 ≠ ew
H-single: Hr4c1 = 0
H-single: Hr5c1 = 0
w[0]-adjacent-3-in-r4c2-nolines-west ==> Vr5c2 = 1, Vr3c2 = 1
w[1]-3-in-r6c1-hit-by-verti-line-at-ne ==> Hr7c1 = 1
w[1]-3-in-r6c1-closed-se-corner ==> Pr6c1 ≠ se
w[1]-3-in-r6c1-closed-sw-corner ==> Pr6c2 ≠ sw
P-single: Pr6c2 = ns
P-single: Pr6c1 = ns
P-single: Pr5c2 = se
P-single: Pr4c2 = ne
P-single: Pr4c1 = ns
P-single: Pr5c1 = ns
no-vertical-line-r7{c0 c1} ==> Ir7c1 = out
vertical-line-r3{c1 c2} ==> Ir3c1 = in
vertical-line-r5{c1 c2} ==> Ir5c1 = in
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
w[1]-diagonal-3-2-in-{r4c2...r5c1}-non-closed-sw-corner ==> Vr5c1 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1

LOOP[12]: Vr3c1-Vr4c1-Vr5c1-Vr6c1-Hr7c1-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2-Vr3c2- ==> Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
w[1]-3-in-r1c1-hit-by-verti-line-at-sw ==> Vr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne, Pr2c1 ≠ o

LOOP[16]: Vr3c2-Hr4c2-Vr4c3-Hr5c2-Vr5c2-Vr6c2-Hr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2- ==> Vr2c2 = 0
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
no-horizontal-line-{r0 r1}c2 ==> Ir1c2 = out
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
different-colours-in-{r1 r2}c2 ==> Hr2c2 = 1
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
w[1]-diagonal-3-2-in-{r1c1...r2c2}-non-closed-se-corner ==> Hr3c2 = 1

LOOP[94]: Hr8c2-Hr8c3-Vr7c4-Vr6c4-Vr5c4-Vr4c4-Vr3c4-Hr3c3-Hr3c2-Vr3c2-Hr4c2-Vr4c3-Hr5c2-Vr5c2-Vr6c2-Hr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5-Vr2c6-Vr3c6-Vr4c6-Vr5c6-Vr6c6-Vr7c6-Vr8c6-Vr9c6-Hr10c6-Vr9c7-Hr9c7-Vr9c8-Hr10c8-Hr10c9-Vr9c10-Hr9c9-Vr8c9-Hr8c8-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Hr2c9-Vr2c9-Hr3c9-Vr3c10-Hr4c10-Vr4c11-Hr5c10-Vr5c10-Vr6c10-Hr7c10-Vr7c11-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Vr10c4-Hr10c3-Vr9c3-Hr9c2-Vr9c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1- ==> Hr8c1 = 1

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

init-time = 0.62s, solve-time = 31.87s, total-time = 32.5s
nb-facts=<Fact-177301>
Quasi-Loop max length = 94
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
