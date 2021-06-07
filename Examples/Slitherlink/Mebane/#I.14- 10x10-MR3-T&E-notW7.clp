Mellon rating = 3


(solve 
10 10 
. . 1 . 2 2 . . 2 . 
2 3 . . . . . . 3 . 
2 . . 3 3 3 3 . 3 . 
. . . . . . . . 3 . 
3 3 3 3 . . . . . . 
. . . . . . 3 3 3 3 
. 3 . . . . . . . . 
. 3 . 3 3 3 3 . . 1 
. 3 . . . . . . 1 3
. 3 . . 1 1 . 1 . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 1 . 2 2 . . 2 .
2 3 . . . . . . 3 .
2 . . 3 3 3 3 . 3 .
. . . . . . . . 3 .
3 3 3 3 . . . . . .
. . . . . . 3 3 3 3
. 3 . . . . . . . .
. 3 . 3 3 3 3 . . 1
. 3 . . . . . . 1 3
. 3 . . 1 1 . 1 . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.610881090164185
start solution 0.625164031982422
entering BRT
w[1]-1+3+1-in-r8c10+r9c10+r9c9 ==> Hr10c9 = 0, Hr8c10 = 0, Vr8c11 = 0, Vr9c9 = 0
w[1]-diagonal-1-1-in-{r9c9...r10c8}-with-no-sw-inner-sides ==> Hr10c8 = 0, Vr10c9 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c5 c6} ==> Vr10c6 = 0
w[1]-adjacent-1-3-on-edge-in-{r8 r9}c10 ==> Vr9c11 = 1, Vr8c10 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r9{c9 c10} ==> Hr9c10 = 1
w[1]-3-in-r9c10-closed-ne-corner ==> Pr10c10 ≠ sw, Pr10c10 ≠ ne, Pr10c10 ≠ o
adjacent-3s-in-c2{r9 r10} ==> Hr11c2 = 1, Hr10c2 = 1, Hr9c2 = 1, Hr10c3 = 0, Hr10c1 = 0
adjacent-3s-in-r8{c6 c7} ==> Vr8c8 = 1, Vr8c7 = 1, Vr8c6 = 1, Vr9c7 = 0, Vr7c7 = 0
adjacent-3s-in-r8{c5 c6} ==> Vr8c5 = 1, Vr9c6 = 0, Vr7c6 = 0
adjacent-3s-in-r8{c4 c5} ==> Vr8c4 = 1, Vr9c5 = 0, Vr7c5 = 0
adjacent-3s-in-c2{r8 r9} ==> Hr8c2 = 1, Hr9c3 = 0, Hr9c1 = 0
adjacent-3s-in-c2{r7 r8} ==> Hr7c2 = 1, Hr8c3 = 0, Hr8c1 = 0
adjacent-3s-in-r6{c9 c10} ==> Vr6c11 = 1, Vr6c10 = 1, Vr6c9 = 1, Vr7c10 = 0, Vr5c10 = 0
adjacent-3s-in-r6{c8 c9} ==> Vr6c8 = 1, Vr7c9 = 0, Vr5c9 = 0
adjacent-3s-in-r6{c7 c8} ==> Vr6c7 = 1, Vr7c8 = 0, Vr5c8 = 0
adjacent-3s-in-r5{c3 c4} ==> Vr5c5 = 1, Vr5c4 = 1, Vr5c3 = 1, Vr6c4 = 0, Vr4c4 = 0
adjacent-3s-in-r5{c2 c3} ==> Vr5c2 = 1, Vr6c3 = 0, Vr4c3 = 0
adjacent-3s-in-r5{c1 c2} ==> Vr5c1 = 1, Vr6c2 = 0, Vr4c2 = 0
adjacent-3s-in-c9{r3 r4} ==> Hr5c9 = 1, Hr4c9 = 1, Hr3c9 = 1, Hr4c10 = 0, Hr4c8 = 0
adjacent-3s-in-r3{c6 c7} ==> Vr3c8 = 1, Vr3c7 = 1, Vr3c6 = 1, Vr4c7 = 0, Vr2c7 = 0
adjacent-3s-in-r3{c5 c6} ==> Vr3c5 = 1, Vr4c6 = 0, Vr2c6 = 0
adjacent-3s-in-r3{c4 c5} ==> Vr3c4 = 1, Vr4c5 = 0, Vr2c5 = 0
adjacent-3s-in-c9{r2 r3} ==> Hr2c9 = 1, Hr3c10 = 0, Hr3c8 = 0
entering level Loop with <Fact-93063>
entering level Col with <Fact-93141>
vertical-line-r9{c10 c11} ==> Ir9c10 = in
horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = out
no-vertical-line-r7{c9 c10} ==> Ir7c9 = out
no-vertical-line-r7{c8 c9} ==> Ir7c8 = out
no-vertical-line-r7{c7 c8} ==> Ir7c7 = out
no-vertical-line-r7{c6 c7} ==> Ir7c6 = out
no-vertical-line-r7{c5 c6} ==> Ir7c5 = out
no-vertical-line-r7{c4 c5} ==> Ir7c4 = out
vertical-line-r6{c10 c11} ==> Ir6c10 = in
vertical-line-r6{c9 c10} ==> Ir6c9 = out
vertical-line-r6{c8 c9} ==> Ir6c8 = in
vertical-line-r6{c7 c8} ==> Ir6c7 = out
vertical-line-r6{c6 c7} ==> Ir6c6 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
vertical-line-r5{c1 c2} ==> Ir5c2 = out
vertical-line-r5{c2 c3} ==> Ir5c3 = in
vertical-line-r5{c3 c4} ==> Ir5c4 = out
vertical-line-r5{c4 c5} ==> Ir5c5 = in
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
no-vertical-line-r6{c3 c4} ==> Ir6c4 = in
different-colours-in-{r6 r7}c4 ==> Hr7c4 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
w[0]-adjacent-3-in-r5c3-nolines-south ==> Hr6c2 = 1, Hr5c3 = 1, Hr5c4 = 0, Hr5c2 = 0
w[0]-adjacent-3-in-r5c2-nolines-north ==> Hr5c1 = 1, Hr6c1 = 0
w[0]-adjacent-3-in-r5c4-nolines-north ==> Hr5c5 = 1
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ o
w[1]-3-in-r5c1-closed-ne-corner ==> Pr6c1 ≠ ne, Pr6c1 ≠ o
w[1]-3-in-r5c3-closed-nw-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ o
w[1]-3-in-r5c3-closed-ne-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r5c2-closed-se-corner ==> Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ o
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
w[1]-3-in-r5c4-closed-sw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ne, Pr5c5 ≠ o
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-vertical-line-r4{c6 c7} ==> Ir4c7 = out
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
same-colour-in-r6{c5 c6} ==> Vr6c6 = 0
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1
w[0]-adjacent-3-in-r6c7-nolines-south ==> Hr7c8 = 1, Hr6c7 = 1, Vr5c7 = 0, Hr6c8 = 0, Hr6c6 = 0
w[0]-adjacent-3-in-r6c8-nolines-north ==> Hr6c9 = 1, Hr7c9 = 0
w[0]-adjacent-3-in-r6c9-nolines-south ==> Hr7c10 = 1, Hr6c10 = 0
w[1]-3-in-r6c10-closed-se-corner ==> Pr6c10 ≠ se, Pr6c10 ≠ nw, Pr6c10 ≠ o
w[1]-3-in-r6c10-closed-sw-corner ==> Pr6c11 ≠ sw, Pr6c11 ≠ o
w[1]-3-in-r6c9-closed-nw-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw, Pr7c10 ≠ o
w[1]-3-in-r6c9-closed-ne-corner ==> Pr7c9 ≠ sw, Pr7c9 ≠ ne, Pr7c9 ≠ o
w[1]-3-in-r6c7-closed-nw-corner ==> Pr7c8 ≠ se, Pr7c8 ≠ nw, Pr7c8 ≠ o
w[1]-3-in-r6c7-closed-ne-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ne, Pr7c7 ≠ o
w[1]-3-in-r6c8-closed-se-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
w[1]-3-in-r6c8-closed-sw-corner ==> Pr6c9 ≠ sw, Pr6c9 ≠ ne, Pr6c9 ≠ o
no-horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
no-vertical-line-r5{c9 c10} ==> Ir5c9 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
horizontal-line-{r4 r5}c9 ==> Ir4c9 = out
horizontal-line-{r3 r4}c9 ==> Ir3c9 = in
horizontal-line-{r2 r3}c9 ==> Ir2c9 = out
horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-{r7 r8}c9 ==> Hr8c9 = 0
Starting_init_links_with_<Fact-93675>
1137 candidates, 8923 csp-links and 36379 links. Density = 5.63%
starting non trivial part of solution
Entering_level_W1_with_<Fact-184284>
whip[1]: Hr8c9{0 .} ==> Br8c9 ≠ nes, Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c10 ≠ nw, Pr8c10 ≠ ew, Pr8c10 ≠ sw, Br7c9 ≠ s, Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ nes, Br8c9 ≠ n, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Vr5c11{1 .} ==> Br5c10 ≠ swn, Br5c11 ≠ o, Br5c10 ≠ o, Pr5c11 ≠ o, Pr5c11 ≠ nw, Br5c10 ≠ n, Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ ns, Br5c10 ≠ nw, Br5c10 ≠ sw
B-single: Br5c11 = w
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ esw, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ n, Br4c10 ≠ w
whip[1]: Br4c10{wne .} ==> Nr4c10 ≠ 0
whip[1]: Hr5c7{1 .} ==> Br5c7 ≠ esw, Br4c7 ≠ o, Br5c7 ≠ o, Pr5c7 ≠ o, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ sw, Pr5c8 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c8 ≠ se, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ w, Br4c7 ≠ ne, Br4c7 ≠ nw, Br4c7 ≠ ew, Br4c7 ≠ wne, Br5c7 ≠ e, Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br5c8 ≠ nw, Br5c8 ≠ swn, Br5c8 ≠ wne
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ se, Br4c6 ≠ esw, Br4c6 ≠ nes, Br5c6 ≠ wne, Br5c6 ≠ nes, Br5c6 ≠ ne
whip[1]: Hr5c6{1 .} ==> Br5c6 ≠ esw, Br4c6 ≠ o, Br5c6 ≠ o, Pr5c6 ≠ o, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Pr5c6 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ se, Br4c6 ≠ n, Br4c6 ≠ e, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ wne, Br5c6 ≠ e, Br5c6 ≠ s, Br5c6 ≠ w, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ sw
P-single: Pr5c7 = ew
whip[1]: Pr5c7{ew .} ==> Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br5c7 ≠ nw, Br5c7 ≠ swn, Br5c7 ≠ wne
whip[1]: Br5c7{nes .} ==> Pr6c7 ≠ ne, Pr6c7 ≠ ns, Pr6c7 ≠ nw
whip[1]: Br4c7{nes .} ==> Pr4c7 ≠ ns, Pr4c7 ≠ se, Pr4c7 ≠ sw
whip[1]: Br5c6{swn .} ==> Nr5c6 ≠ 0
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 0
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ se, Br4c5 ≠ esw, Br4c5 ≠ nes, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c5 ≠ ne
whip[1]: Vr5c6{0 .} ==> Br5c6 ≠ swn, Pr5c6 ≠ se, Pr6c6 ≠ ne, Pr6c6 ≠ ns, Pr6c6 ≠ nw, Br5c5 ≠ e, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ esw, Br5c6 ≠ nw
whip[1]: Br5c6{ns .} ==> Nr5c6 ≠ 3
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ nw, Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ w
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ sw, Br0c9 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ sw, Pr1c10 ≠ o, Pr1c10 ≠ se, Br1c9 ≠ se, Br1c9 ≠ ew
B-single: Br0c9 = s
whip[1]: Br1c9{nw .} ==> Pr2c9 ≠ ne, Pr2c10 ≠ nw
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ wne, Br1c10 ≠ o, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ sw, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c8 ≠ o, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ ne
whip[1]: Br1c8{swn .} ==> Nr1c8 ≠ 0
whip[1]: Vr7c11{0 .} ==> Br7c10 ≠ nes, Br7c11 ≠ w, Pr7c11 ≠ ns, Pr7c11 ≠ sw, Pr8c11 ≠ ns, Pr8c11 ≠ nw, Br7c10 ≠ e, Br7c10 ≠ ne, Br7c10 ≠ se, Br7c10 ≠ ew, Br7c10 ≠ esw, Br7c10 ≠ wne
B-single: Br7c11 = o
w[1]-1-in-r8c10-symmetric-ne-corner ==> Pr9c10 ≠ sw, Pr9c10 ≠ ne, Pr9c10 ≠ o
w[1]-1-in-r9c9-asymmetric-ne-corner ==> Pr10c9 ≠ ew, Pr10c9 ≠ se, Pr10c9 ≠ nw, Pr10c9 ≠ ns
w[1]-1-in-r10c8-symmetric-ne-corner ==> Pr11c8 ≠ ne, Pr11c8 ≠ o
whip[1]: Pr11c8{ew .} ==> Br11c7 ≠ o, Hr11c7 ≠ 0, Br10c7 ≠ nw, Br10c7 ≠ ew, Br10c7 ≠ wne, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ e, Br10c7 ≠ w, Br10c7 ≠ ne, Br10c8 ≠ n, Br10c8 ≠ e
H-single: Hr11c7 = 1
B-single: Br11c7 = n
horizontal-line-{r10 r11}c7 ==> Ir10c7 = in
whip[1]: Hr11c7{1 .} ==> Pr11c7 ≠ o, Pr11c7 ≠ nw
w[1]-1-in-r10c6-asymmetric-se-corner ==> Pr10c6 ≠ sw, Pr10c6 ≠ ew, Pr10c6 ≠ ns, Pr10c6 ≠ ne
whip[1]: Pr10c6{se .} ==> Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ ew, Br9c5 ≠ sw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ swn, Br9c5 ≠ e, Br9c5 ≠ s, Br10c6 ≠ n, Br10c6 ≠ w
whip[1]: Br10c6{s .} ==> Hr10c6 ≠ 1, Pr11c6 ≠ ne, Pr11c6 ≠ nw, Pr10c6 ≠ se, Pr10c7 ≠ nw, Pr10c7 ≠ ew, Pr10c7 ≠ sw
H-single: Hr10c6 = 0
whip[1]: Hr10c6{0 .} ==> Br9c6 ≠ s, Br9c6 ≠ ns, Br9c6 ≠ se, Br9c6 ≠ nes
whip[1]: Pr10c6{nw .} ==> Br10c5 ≠ e
whip[1]: Br10c5{w .} ==> Pr11c5 ≠ ne, Pr10c5 ≠ se
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ e, Br10c4 ≠ ne
whip[1]: Br10c8{w .} ==> Pr11c9 ≠ ne, Pr11c9 ≠ nw, Pr10c8 ≠ ne, Pr10c8 ≠ se, Pr10c8 ≠ ew, Pr10c9 ≠ sw
whip[1]: Pr10c9{ne .} ==> Br9c8 ≠ s, Br9c8 ≠ ns, Br9c8 ≠ se, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c8 ≠ nes, Br9c9 ≠ s, Br9c9 ≠ w, Br10c9 ≠ w, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ wne
whip[1]: Br9c9{e .} ==> Pr10c9 ≠ ne, Pr9c9 ≠ ns, Pr9c9 ≠ se, Pr9c9 ≠ sw, Pr10c10 ≠ nw, Pr10c10 ≠ ew
P-single: Pr10c9 = o
whip[1]: Pr10c9{o .} ==> Br9c8 ≠ e, Br9c8 ≠ ne, Br9c8 ≠ ew, Br9c8 ≠ wne, Br10c9 ≠ n, Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ nes
whip[1]: Br10c9{se .} ==> Nr10c9 ≠ 3
whip[1]: Br9c8{nw .} ==> Nr9c8 ≠ 3
whip[1]: Pr10c10{se .} ==> Vr10c10 ≠ 0, Br9c10 ≠ esw, Br9c10 ≠ swn, Br10c10 ≠ se, Br10c10 ≠ nes, Br10c9 ≠ o, Br10c9 ≠ s, Br10c10 ≠ o, Br10c10 ≠ n
V-single: Vr10c10 = 1
whip[1]: Vr10c10{1 .} ==> Pr11c10 ≠ o, Pr11c10 ≠ ew
whip[1]: Br10c10{esw .} ==> Pr10c11 ≠ sw, Nr10c10 ≠ 0
whip[1]: Br10c9{se .} ==> Nr10c9 ≠ 0
whip[1]: Br9c10{nes .} ==> Pr9c11 ≠ o, Pr9c11 ≠ ns, Pr9c11 ≠ nw, Pr10c11 ≠ o, Pr9c10 ≠ ns, Pr9c10 ≠ nw
P-single: Pr9c11 = sw
w[1]-1-in-r8c10-asymmetric-se-corner ==> Pr8c10 ≠ ns, Pr8c10 ≠ ne
whip[1]: Pr9c11{sw .} ==> Br8c10 ≠ w, Br8c10 ≠ e, Br8c10 ≠ n
B-single: Br8c10 = s
whip[1]: Br8c10{s .} ==> Pr8c11 ≠ sw, Pr8c10 ≠ se
P-single: Pr8c10 = o
P-single: Pr8c11 = o
whip[1]: Pr8c10{o .} ==> Br7c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ ew, Br7c9 ≠ wne, Br7c10 ≠ s, Br7c10 ≠ w, Br7c10 ≠ ns, Br7c10 ≠ nw, Br7c10 ≠ sw, Br7c10 ≠ swn, Br8c9 ≠ e, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ esw
whip[1]: Br8c9{sw .} ==> Nr8c9 ≠ 3
whip[1]: Br7c10{n .} ==> Pr7c10 ≠ ns, Pr7c10 ≠ sw, Nr7c10 ≠ 2, Nr7c10 ≠ 3
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ esw, Br6c9 ≠ nes, Br6c10 ≠ wne, Br7c10 ≠ o
B-single: Br7c10 = n
whip[1]: Br7c10{n .} ==> Nr7c10 ≠ 0, Pr7c11 ≠ o
N-single: Nr7c10 = 1
P-single: Pr7c11 = nw
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ swn
whip[1]: Br6c10{nes .} ==> Pr6c11 ≠ nw
P-single: Pr6c11 = ns
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ se, Br5c10 ≠ esw, Br5c10 ≠ nes, Br6c10 ≠ nes
B-single: Br6c10 = esw
whip[1]: Br6c10{esw .} ==> Pr7c10 ≠ ew, Pr6c10 ≠ ew, Pr6c10 ≠ ne
P-single: Pr7c10 = ne
whip[1]: Pr7c10{ne .} ==> Br7c9 ≠ n, Br6c9 ≠ swn, Br7c9 ≠ nw
B-single: Br6c9 = wne
whip[1]: Br6c9{wne .} ==> Pr7c9 ≠ ew, Pr7c9 ≠ se, Pr6c10 ≠ ns, Pr6c9 ≠ ew, Pr6c9 ≠ nw, Pr6c9 ≠ ns
P-single: Pr6c9 = se
P-single: Pr6c10 = sw
whip[1]: Pr6c9{se .} ==> Br5c9 ≠ w, Br5c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c8 ≠ s, Br5c8 ≠ e, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ nes, Br5c9 ≠ ne, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes
B-single: Br6c8 = esw
whip[1]: Br6c8{esw .} ==> Pr7c9 ≠ ns, Pr7c8 ≠ sw, Pr7c8 ≠ ew, Pr7c8 ≠ ns, Pr6c8 ≠ ew, Pr6c8 ≠ ne
P-single: Pr7c8 = ne
P-single: Pr7c9 = nw
whip[1]: Pr7c8{ne .} ==> Br7c8 ≠ o, Br7c7 ≠ n, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes, Br7c7 ≠ e, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes, Br7c8 ≠ e, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne
B-single: Br6c7 = wne
whip[1]: Br6c7{wne .} ==> Pr7c7 ≠ ew, Pr7c7 ≠ se, Pr6c8 ≠ ns, Pr6c7 ≠ sw, Pr6c7 ≠ ew, Pr6c7 ≠ o
P-single: Pr6c7 = se
P-single: Pr6c8 = sw
whip[1]: Pr6c7{se .} ==> Br6c6 ≠ w, Br6c6 ≠ s, Br6c6 ≠ n, Br6c6 ≠ o, Br5c7 ≠ n, Br5c6 ≠ ns, Br5c7 ≠ ne, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ sw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br6c6 ≠ nes
B-single: Br5c6 = n
whip[1]: Br5c6{n .} ==> Pr6c6 ≠ se, Pr6c6 ≠ ew, Nr5c6 ≠ 2
N-single: Nr5c6 = 1
whip[1]: Pr6c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ ns
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 0
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 1
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ w, Br5c7 ≠ nes
B-single: Br5c7 = ns
whip[1]: Br5c7{ns .} ==> Nr5c7 ≠ 3, Pr5c8 ≠ sw
N-single: Nr5c7 = 2
whip[1]: Pr5c8{ew .} ==> Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ e, Br4c8 ≠ ne
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 0
whip[1]: Br5c8{n .} ==> Pr5c9 ≠ ns, Pr5c9 ≠ se, Pr5c9 ≠ sw, Nr5c8 ≠ 2, Nr5c8 ≠ 3
whip[1]: Pr7c7{nw .} ==> Br7c6 ≠ w, Br7c6 ≠ ne, Br7c6 ≠ sw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c6 ≠ o, Br7c6 ≠ s
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 0
whip[1]: Br7c8{nes .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ ns, Pr8c8 ≠ nw, Nr7c8 ≠ 0
whip[1]: Br7c7{sw .} ==> Nr7c7 ≠ 3
whip[1]: Pr7c9{nw .} ==> Br7c8 ≠ ne, Br7c8 ≠ nes, Br7c9 ≠ w
B-single: Br7c9 = o
whip[1]: Br7c9{o .} ==> Pr8c9 ≠ ns, Pr8c9 ≠ nw, Nr7c9 ≠ 1, Nr7c9 ≠ 2, Nr7c9 ≠ 3
N-single: Nr7c9 = 0
whip[1]: Pr8c9{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ esw, Br8c8 ≠ swn, Br8c8 ≠ n, Br8c8 ≠ e, Br8c8 ≠ ns
whip[1]: Br7c8{ns .} ==> Nr7c8 ≠ 3
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Pr6c10{sw .} ==> Br5c9 ≠ se, Br5c9 ≠ nes, Br5c10 ≠ ew, Br5c10 ≠ wne
whip[1]: Br5c10{ne .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ se, Nr5c10 ≠ 3, Pr5c10 ≠ sw
whip[1]: Br5c9{ns .} ==> Nr5c9 ≠ 3
whip[1]: Pr10c11{nw .} ==> Br10c10 ≠ w
whip[1]: Br10c10{esw .} ==> Nr10c10 ≠ 1
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 0
whip[1]: Hr7c6{1 .} ==> Br7c6 ≠ esw, Pr7c6 ≠ o, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Pr7c6 ≠ sw, Pr7c7 ≠ ns, Br6c6 ≠ e, Br6c6 ≠ ew, Br7c6 ≠ e, Br7c6 ≠ se, Br7c6 ≠ ew
P-single: Pr7c7 = nw
whip[1]: Pr7c7{nw .} ==> Br7c7 ≠ w, Br7c7 ≠ sw
whip[1]: Br7c7{s .} ==> Pr8c7 ≠ ne, Pr8c7 ≠ ns, Nr7c7 ≠ 2, Pr8c7 ≠ nw
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 1
whip[1]: Pr7c6{ew .} ==> Br6c5 ≠ nes, Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c5 ≠ ne
whip[1]: Vr6c1{1 .} ==> Br6c1 ≠ nes, Br6c0 ≠ o, Br6c1 ≠ o, Pr7c1 ≠ o, Pr7c1 ≠ se, Br6c1 ≠ n, Br6c1 ≠ e, Br6c1 ≠ s, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ se
B-single: Br6c0 = e
whip[1]: Br6c1{wne .} ==> Nr6c1 ≠ 0
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ s, Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ swn, Br7c1 ≠ wne, Br7c1 ≠ o, Br7c1 ≠ e
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 0
whip[1]: Hr7c5{1 .} ==> Br7c5 ≠ esw, Br6c5 ≠ o, Br7c5 ≠ o, Pr7c5 ≠ o, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Pr7c5 ≠ sw, Pr7c6 ≠ ne, Pr7c6 ≠ se, Br6c5 ≠ w, Br6c5 ≠ ne, Br6c5 ≠ wne, Br7c5 ≠ e, Br7c5 ≠ s, Br7c5 ≠ w, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw
P-single: Pr7c6 = ew
whip[1]: Pr7c6{ew .} ==> Br6c6 ≠ esw, Br7c6 ≠ nw, Br7c6 ≠ swn
B-single: Br6c6 = se
whip[1]: Br6c6{se .} ==> Nr6c6 ≠ 3, Pr6c6 ≠ sw
N-single: Nr6c6 = 2
P-single: Pr6c6 = o
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ s, Br5c5 ≠ ns, Br5c5 ≠ sw, Br5c5 ≠ swn
whip[1]: Br5c5{nw .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Nr5c5 ≠ 3
whip[1]: Br7c6{ns .} ==> Pr8c6 ≠ ne, Pr8c6 ≠ ns, Pr8c6 ≠ nw, Nr7c6 ≠ 3
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 0
whip[1]: Br6c5{sw .} ==> Nr6c5 ≠ 0, Nr6c5 ≠ 3
whip[1]: Pr7c5{ew .} ==> Br6c4 ≠ se, Br6c4 ≠ esw, Br6c4 ≠ nes, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c4 ≠ ne
whip[1]: Vr4c1{0 .} ==> Br4c1 ≠ wne, Br4c0 ≠ e, Pr4c1 ≠ ns, Pr4c1 ≠ se, Pr5c1 ≠ ne, Pr5c1 ≠ ns, Br4c1 ≠ w, Br4c1 ≠ nw, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn
w[1]-3-in-r2c2-symmetric-sw-corner ==> Vr2c2 = 1, Hr3c2 = 1
w[1]-2-in-r3c1-open-ne-corner ==> Hr4c1 = 1, Vr3c1 = 1
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
w[1]-diagonal-closed-3-1-in-{r2c2...r1c3} ==> Vr1c4 = 0, Hr1c3 = 0
P-single: Pr3c1 = ns
P-single: Pr4c1 = ne
B-single: Br4c0 = o
w[1]-1-in-r1c3-asymmetric-sw-corner ==> Pr1c4 ≠ ew, Pr1c4 ≠ se
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
no-vertical-line-r1{c3 c4} ==> Ir1c4 = out
vertical-line-r3{c0 c1} ==> Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
vertical-line-r2{c1 c2} ==> Ir2c1 = in
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
whip[1]: Vr2c2{1 .} ==> Pr2c2 ≠ nw, Pr2c2 ≠ ew, Pr3c2 ≠ o, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c2 ≠ nes
P-single: Pr3c2 = ne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ o, Br2c1 ≠ se, Br2c2 ≠ wne, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne
B-single: Br3c1 = sw
whip[1]: Br3c1{sw .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ ne
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ se, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c1 ≠ o, Br4c1 ≠ e, Br4c1 ≠ s, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Br3c2{nes .} ==> Pr3c3 ≠ o, Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ se, Nr3c2 ≠ 0
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br3c3 ≠ nw, Br3c3 ≠ swn, Br3c3 ≠ wne
whip[1]: Pr2c1{ns .} ==> Vr1c1 ≠ 0, Br1c1 ≠ s, Br1c1 ≠ se, Br1c1 ≠ o, Br1c1 ≠ e
V-single: Vr1c1 = 1
vertical-line-r1{c0 c1} ==> Ir1c1 = in
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o, Pr1c1 ≠ o
P-single: Pr1c1 = se
B-single: Br1c0 = e
whip[1]: Hr2c1{0 .} ==> Pr2c1 ≠ ne, Br1c1 ≠ swn, Br2c1 ≠ ne
P-single: Pr2c1 = ns
B-single: Br2c1 = ew
whip[1]: Br1c1{wne .} ==> Pr1c2 ≠ o, Pr1c2 ≠ se, Nr1c1 ≠ 0, Nr1c1 ≠ 1
whip[1]: Pr1c2{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ o, Br1c2 ≠ e, Br1c2 ≠ s
whip[1]: Br1c2{nes .} ==> Nr1c2 ≠ 0
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Pr2c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ n
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Vr1c4{0 .} ==> Pr1c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Pr2c4 ≠ nw, Br1c3 ≠ e, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ wne
P-single: Pr1c4 = o
whip[1]: Pr1c4{o .} ==> Br1c3 ≠ n, Br1c4 ≠ n, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nes
whip[1]: Br1c4{se .} ==> Pr1c5 ≠ ew, Pr1c5 ≠ sw, Nr1c4 ≠ 3
whip[1]: Pr2c5{ew .} ==> Br1c5 ≠ sw, Br2c4 ≠ sw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br1c5 ≠ ne, Br2c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ne
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0
whip[1]: Pr1c6{ew .} ==> Hr1c6 ≠ 0, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw
H-single: Hr1c6 = 1
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se
B-single: Br0c6 = s
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ e, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Br1c6{nw .} ==> Pr2c7 ≠ nw
whip[1]: Pr2c6{se .} ==> Br1c5 ≠ ns, Br1c5 ≠ ew, Br2c5 ≠ ne, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ nes, Br2c6 ≠ n, Br2c6 ≠ w
whip[1]: Br1c3{w .} ==> Pr1c3 ≠ se, Pr1c3 ≠ ew
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ ew, Br1c2 ≠ ns
whip[1]: Br1c2{nes .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ ew, Nr1c2 ≠ 2
whip[1]: Pr2c3{se .} ==> Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ ew, Br2c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ w
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Hr4c2{1 .} ==> Pr4c2 ≠ sw, Pr4c3 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ se, Br3c2 ≠ n, Br3c2 ≠ ne, Br4c2 ≠ w, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw
P-single: Pr4c2 = ew
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ ne, Br4c1 ≠ nes
whip[1]: Br4c1{ns .} ==> Pr5c2 ≠ ne, Pr5c2 ≠ ns, Nr4c1 ≠ 3
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br4c1 ≠ n
B-single: Br4c1 = ns
whip[1]: Br4c1{ns .} ==> Nr4c1 ≠ 1, Pr5c1 ≠ o
N-single: Nr4c1 = 2
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ nes
whip[1]: Br5c1{wne .} ==> Pr6c1 ≠ se
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ swn, Br6c1 ≠ nw, Br6c1 ≠ swn, Br6c1 ≠ wne
B-single: Br5c1 = wne
whip[1]: Br5c1{wne .} ==> Pr6c2 ≠ sw, Pr6c2 ≠ ew, Pr5c2 ≠ ew
P-single: Pr5c2 = sw
whip[1]: Pr5c2{sw .} ==> Br4c2 ≠ ns, Br4c2 ≠ nes, Br5c2 ≠ nes
B-single: Br5c2 = esw
whip[1]: Br5c2{esw .} ==> Pr6c3 ≠ ew, Pr6c3 ≠ se, Pr6c3 ≠ ns, Pr6c2 ≠ ns, Pr5c3 ≠ ew, Pr5c3 ≠ nw
P-single: Pr6c2 = ne
P-single: Pr6c3 = nw
whip[1]: Pr6c2{ne .} ==> Br6c2 ≠ o, Br6c1 ≠ ew, Br6c1 ≠ esw, Br6c2 ≠ e, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Br6c2{nes .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ ns, Pr7c2 ≠ nw, Nr6c2 ≠ 0
whip[1]: Br6c1{sw .} ==> Nr6c1 ≠ 3
whip[1]: Pr6c3{nw .} ==> Br6c3 ≠ n, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ nes, Br6c2 ≠ ne, Br6c2 ≠ nes, Br6c3 ≠ w, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ nes
B-single: Br5c3 = wne
whip[1]: Br5c3{wne .} ==> Pr6c4 ≠ sw, Pr6c4 ≠ ew, Pr5c4 ≠ ew, Pr5c4 ≠ ns, Pr5c4 ≠ ne, Pr5c3 ≠ ns
P-single: Pr5c3 = se
P-single: Pr5c4 = sw
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ w, Br4c3 ≠ e, Br4c3 ≠ n, Br4c3 ≠ o, Br4c2 ≠ ne, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne
B-single: Br4c2 = n
whip[1]: Br4c2{n .} ==> Pr4c3 ≠ sw, Nr4c2 ≠ 2, Nr4c2 ≠ 3
N-single: Nr4c2 = 1
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ e, Br3c3 ≠ ne
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ ns, Br4c4 ≠ w, Br4c4 ≠ s, Br4c3 ≠ se, Br4c3 ≠ nes, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br4c4 ≠ nes, Br5c4 ≠ swn, Br5c4 ≠ wne, Br5c4 ≠ nes
B-single: Br5c4 = esw
whip[1]: Br5c4{esw .} ==> Pr6c5 ≠ sw, Pr6c5 ≠ ns, Pr6c5 ≠ o, Pr6c4 ≠ ns, Pr5c5 ≠ ew, Pr5c5 ≠ nw
P-single: Pr6c4 = ne
P-single: Pr6c5 = nw
whip[1]: Pr6c4{ne .} ==> Br6c4 ≠ o, Br6c3 ≠ e, Br6c3 ≠ se, Br6c4 ≠ e, Br6c4 ≠ s, Br6c4 ≠ w, Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ swn, Br6c4 ≠ wne
whip[1]: Br6c4{ns .} ==> Pr7c4 ≠ ne, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Nr6c4 ≠ 0, Nr6c4 ≠ 3
whip[1]: Br6c3{s .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ns, Nr6c3 ≠ 2, Nr6c3 ≠ 3, Pr7c3 ≠ nw
whip[1]: Pr6c5{nw .} ==> Br5c5 ≠ n, Br5c5 ≠ o, Br6c4 ≠ ne, Br6c5 ≠ sw
B-single: Br6c5 = s
whip[1]: Br6c5{s .} ==> Nr6c5 ≠ 2, Pr7c5 ≠ ne
N-single: Nr6c5 = 1
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ sw, Br7c4 ≠ o, Br7c4 ≠ s, Br7c4 ≠ w
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 0
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 0
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ ne, Br4c5 ≠ sw, Br4c5 ≠ swn, Br4c5 ≠ e
whip[1]: Br4c4{ne .} ==> Pr4c4 ≠ ns, Pr4c4 ≠ se, Nr4c4 ≠ 3, Pr4c4 ≠ sw
whip[1]: Br4c3{ns .} ==> Nr4c3 ≠ 3
whip[1]: Br6c2{ns .} ==> Nr6c2 ≠ 3
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 1
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Hr5c5{1 .} ==> Br5c5 ≠ w, Pr5c5 ≠ ns, Pr5c6 ≠ ne, Br4c5 ≠ ew, Br4c5 ≠ wne
P-single: Pr5c6 = ew
P-single: Pr5c5 = se
B-single: Br5c5 = nw
whip[1]: Pr5c6{ew .} ==> Br4c6 ≠ sw, Br4c6 ≠ swn
whip[1]: Br4c6{ns .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c6 ≠ 3, Pr4c6 ≠ sw
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ e, Br4c4 ≠ ne
whip[1]: Br4c4{n .} ==> Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr4c5 ≠ sw, Nr4c4 ≠ 2
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 1
N-single: Nr5c5 = 2
whip[1]: Br4c5{ns .} ==> Nr4c5 ≠ 3
whip[1]: Hr7c4{1 .} ==> Br7c4 ≠ esw, Pr7c4 ≠ o, Pr7c4 ≠ sw, Pr7c5 ≠ se, Br6c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ se, Br7c4 ≠ ew
P-single: Pr7c5 = ew
B-single: Br6c4 = ns
whip[1]: Pr7c5{ew .} ==> Br7c5 ≠ nw, Br7c5 ≠ swn
whip[1]: Br7c5{ns .} ==> Pr8c5 ≠ ne, Pr8c5 ≠ ns, Pr8c5 ≠ nw, Nr7c5 ≠ 3
whip[1]: Br6c4{ns .} ==> Nr6c4 ≠ 1
N-single: Nr6c4 = 2
whip[1]: Pr7c4{ew .} ==> Br7c3 ≠ sw, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c3 ≠ o, Br7c3 ≠ s, Br7c3 ≠ w, Br7c3 ≠ ne
whip[1]: Br7c3{swn .} ==> Nr7c3 ≠ 0
whip[1]: Hr3c8{0 .} ==> Br3c8 ≠ nes, Pr3c8 ≠ ne, Pr3c8 ≠ se, Pr3c8 ≠ ew, Pr3c9 ≠ nw, Pr3c9 ≠ ew, Pr3c9 ≠ sw, Br2c8 ≠ s, Br2c8 ≠ ns, Br2c8 ≠ se, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn, Br2c8 ≠ nes, Br3c8 ≠ n, Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ nw, Br3c8 ≠ swn, Br3c8 ≠ wne
whip[1]: Hr3c10{0 .} ==> Br3c10 ≠ nes, Pr3c11 ≠ nw, Pr3c11 ≠ sw, Pr3c10 ≠ ne, Pr3c10 ≠ se, Pr3c10 ≠ ew, Br2c10 ≠ s, Br2c10 ≠ ns, Br2c10 ≠ se, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn, Br2c10 ≠ nes, Br3c10 ≠ n, Br3c10 ≠ ne, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Hr2c9{1 .} ==> Br2c9 ≠ esw, Pr2c9 ≠ o, Pr2c9 ≠ ns, Pr2c9 ≠ nw, Pr2c9 ≠ sw, Pr2c10 ≠ o, Pr2c10 ≠ ne, Pr2c10 ≠ ns, Pr2c10 ≠ se, Br1c9 ≠ ne, Br1c9 ≠ nw
P-single: Pr1c9 = ew
P-single: Pr1c10 = ew
B-single: Br1c9 = ns
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ e, Vr1c9 ≠ 1, Hr1c8 ≠ 0, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw
H-single: Hr1c8 = 1
V-single: Vr1c9 = 0
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o, Pr1c8 ≠ o, Pr1c8 ≠ sw
B-single: Br0c8 = s
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ sw, Br1c7 ≠ nes, Br1c7 ≠ w, Br1c7 ≠ ne
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ w, Vr1c10 ≠ 1, Hr1c10 ≠ 0, Br1c10 ≠ sw
H-single: Hr1c10 = 1
V-single: Vr1c10 = 0
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o, Pr1c11 ≠ o
P-single: Pr1c11 = sw
B-single: Br0c10 = s
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o, Pr2c11 ≠ o, Pr2c11 ≠ sw
B-single: Br1c11 = w
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ w, Br2c10 ≠ ne, Br2c10 ≠ wne, Br2c10 ≠ o
whip[1]: Br2c10{ew .} ==> Nr2c10 ≠ 0, Nr2c10 ≠ 3
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 1
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ e
whip[1]: Pr2c9{ew .} ==> Br2c8 ≠ wne, Br2c8 ≠ o, Br2c8 ≠ w, Br2c8 ≠ ne
whip[1]: Br2c8{ew .} ==> Nr2c8 ≠ 0, Nr2c8 ≠ 3
whip[1]: Br2c9{nes .} ==> Pr3c9 ≠ o, Pr3c10 ≠ o
whip[1]: Vr2c5{0 .} ==> Br2c5 ≠ swn, Pr2c5 ≠ ns, Pr2c5 ≠ se, Pr3c5 ≠ ne, Pr3c5 ≠ ns, Pr3c5 ≠ nw, Br2c4 ≠ e, Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ esw, Br2c5 ≠ w, Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
whip[1]: Br2c5{se .} ==> Nr2c5 ≠ 3
whip[1]: Br2c4{swn .} ==> Hr2c4 ≠ 0, Pr2c4 ≠ o, Pr2c4 ≠ sw
H-single: Hr2c4 = 1
horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
same-colour-in-{r1 r2}c6 ==> Hr2c6 = 0
whip[1]: Hr2c4{1 .} ==> Br1c4 ≠ o, Br1c4 ≠ e
whip[1]: Br1c4{se .} ==> Nr1c4 ≠ 0
whip[1]: Hr2c6{0 .} ==> Pr2c6 ≠ se, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Br1c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Br2c6{se .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ nw, Nr2c6 ≠ 3
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ se, Br2c5 ≠ e
whip[1]: Pr2c4{ew .} ==> Br2c3 ≠ wne, Br2c3 ≠ o, Br2c3 ≠ s
whip[1]: Br2c3{se .} ==> Pr3c4 ≠ ew, Pr3c4 ≠ sw, Nr2c3 ≠ 0, Nr2c3 ≠ 3
whip[1]: Pr3c4{se .} ==> Br3c3 ≠ nes
whip[1]: Br3c3{ew .} ==> Nr3c3 ≠ 3
whip[1]: Vr3c4{1 .} ==> Br3c4 ≠ nes, Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ nw, Pr4c4 ≠ o, Pr4c4 ≠ ew, Br3c3 ≠ s, Br3c3 ≠ w, Br3c3 ≠ ns
whip[1]: Br3c3{ew .} ==> Hr3c3 ≠ 1, Pr3c3 ≠ ew, Nr3c3 ≠ 1
H-single: Hr3c3 = 0
N-single: Nr3c3 = 2
whip[1]: Hr3c3{0 .} ==> Br2c3 ≠ se
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ swn, Br2c4 ≠ n
whip[1]: Br2c4{nw .} ==> Nr2c4 ≠ 1, Nr2c4 ≠ 3
N-single: Nr2c4 = 2
whip[1]: Br3c4{wne .} ==> Pr3c5 ≠ o, Pr4c5 ≠ o
whip[1]: Vr3c5{1 .} ==> Br3c5 ≠ nes, Pr3c5 ≠ ew, Pr4c5 ≠ ew, Br3c4 ≠ swn
whip[1]: Br3c5{wne .} ==> Pr3c6 ≠ o, Pr4c6 ≠ o
whip[1]: Vr2c7{0 .} ==> Br2c7 ≠ wne, Pr2c7 ≠ ns, Pr2c7 ≠ se, Pr3c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ nw, Br2c6 ≠ e, Br2c6 ≠ se, Br2c7 ≠ w, Br2c7 ≠ nw, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn
whip[1]: Br2c6{s .} ==> Nr2c6 ≠ 2
whip[1]: Pr2c7{ne .} ==> Br1c7 ≠ ns, Br1c7 ≠ ew
whip[1]: Br1c7{esw .} ==> Pr2c8 ≠ ne, Pr2c8 ≠ ns, Pr2c8 ≠ ew, Pr2c8 ≠ sw, Nr1c7 ≠ 2
whip[1]: Pr2c8{se .} ==> Br1c8 ≠ swn, Br2c7 ≠ ne, Br2c7 ≠ nes, Br2c8 ≠ ew, Br2c8 ≠ n
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 3
whip[1]: Br1c8{nw .} ==> Nr1c8 ≠ 3
whip[1]: Vr3c6{1 .} ==> Br3c6 ≠ nes, Pr3c6 ≠ ew, Pr4c6 ≠ ew, Br3c5 ≠ swn
whip[1]: Br3c6{wne .} ==> Pr3c7 ≠ o, Pr4c7 ≠ o
whip[1]: Vr3c7{1 .} ==> Br3c7 ≠ nes, Pr3c7 ≠ ew, Pr4c7 ≠ ew, Br3c6 ≠ swn
whip[1]: Br3c7{wne .} ==> Pr3c8 ≠ o, Pr4c8 ≠ o, Pr4c8 ≠ se
whip[1]: Pr4c8{sw .} ==> Br4c8 ≠ nw, Br4c8 ≠ wne
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ o, Br2c7 ≠ n
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 0
whip[1]: Vr3c8{1 .} ==> Br3c8 ≠ se, Br3c8 ≠ o, Pr3c8 ≠ nw, Pr4c8 ≠ ew, Pr4c8 ≠ sw, Br3c7 ≠ swn, Br3c8 ≠ e, Br3c8 ≠ s
whip[1]: Br3c8{esw .} ==> Nr3c8 ≠ 0
whip[1]: Pr4c8{nw .} ==> Br4c7 ≠ nes
whip[1]: Br4c7{se .} ==> Nr4c7 ≠ 3
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ se
whip[1]: Hr4c8{0 .} ==> Br4c8 ≠ nes, Pr4c8 ≠ ne, Pr4c9 ≠ nw, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Br3c8 ≠ sw, Br3c8 ≠ esw, Br4c8 ≠ ns
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 3
whip[1]: Br3c8{ew .} ==> Nr3c8 ≠ 3
whip[1]: Pr4c8{nw .} ==> Br4c7 ≠ s
whip[1]: Br4c7{se .} ==> Nr4c7 ≠ 1
N-single: Nr4c7 = 2
whip[1]: Hr4c10{0 .} ==> Br4c10 ≠ wne, Pr4c11 ≠ nw, Pr4c11 ≠ sw, Pr4c10 ≠ ne, Pr4c10 ≠ se, Pr4c10 ≠ ew, Br3c10 ≠ s, Br3c10 ≠ se, Br3c10 ≠ sw, Br3c10 ≠ esw, Br4c10 ≠ ne, Br4c10 ≠ ns, Br4c10 ≠ swn
whip[1]: Br4c10{sw .} ==> Nr4c10 ≠ 3
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 3
whip[1]: Hr3c9{1 .} ==> Br3c9 ≠ esw, Pr3c9 ≠ ns, Pr3c10 ≠ ns, Br2c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ o, Pr4c10 ≠ o
whip[1]: Hr4c9{1 .} ==> Br4c9 ≠ esw, Pr4c9 ≠ ns, Pr4c10 ≠ ns, Br3c9 ≠ wne
whip[1]: Br4c9{nes .} ==> Pr5c9 ≠ o, Pr5c10 ≠ o
whip[1]: Pr5c10{ew .} ==> Br4c10 ≠ e
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ w
whip[1]: Hr5c9{1 .} ==> Br5c9 ≠ s, Pr5c9 ≠ nw, Pr5c10 ≠ ne, Br4c9 ≠ wne
B-single: Br5c9 = ns
whip[1]: Br5c9{ns .} ==> Nr5c9 ≠ 1
N-single: Nr5c9 = 2
whip[1]: Pr5c10{ew .} ==> Br4c10 ≠ sw
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ se
whip[1]: Hr8c1{0 .} ==> Br8c1 ≠ nes, Pr8c1 ≠ ne, Pr8c1 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ ew, Pr8c2 ≠ sw, Br7c1 ≠ ns, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ nes, Br8c1 ≠ n, Br8c1 ≠ ne, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ swn, Br8c1 ≠ wne
whip[1]: Br7c1{ew .} ==> Nr7c1 ≠ 3
whip[1]: Hr8c3{0 .} ==> Br8c3 ≠ nes, Pr8c3 ≠ ne, Pr8c3 ≠ se, Pr8c3 ≠ ew, Pr8c4 ≠ nw, Pr8c4 ≠ ew, Pr8c4 ≠ sw, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c3 ≠ esw, Br7c3 ≠ swn, Br8c3 ≠ n, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ nw, Br8c3 ≠ swn, Br8c3 ≠ wne
whip[1]: Br7c3{ew .} ==> Nr7c3 ≠ 3
whip[1]: Hr7c2{1 .} ==> Br7c2 ≠ esw, Pr7c2 ≠ o, Pr7c2 ≠ sw, Pr7c3 ≠ o, Pr7c3 ≠ se, Br6c2 ≠ n
B-single: Br6c2 = ns
whip[1]: Br6c2{ns .} ==> Nr6c2 ≠ 1
N-single: Nr6c2 = 2
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ nw, Br7c3 ≠ e
whip[1]: Pr7c2{ew .} ==> Br7c1 ≠ w, Br7c1 ≠ ne
whip[1]: Br7c2{nes .} ==> Pr8c2 ≠ o, Pr8c3 ≠ o
whip[1]: Hr9c1{0 .} ==> Br9c1 ≠ nes, Pr9c1 ≠ ne, Pr9c1 ≠ se, Pr9c2 ≠ nw, Pr9c2 ≠ ew, Pr9c2 ≠ sw, Br8c1 ≠ s, Br8c1 ≠ se, Br8c1 ≠ sw, Br8c1 ≠ esw, Br9c1 ≠ n, Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ swn, Br9c1 ≠ wne
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 3
whip[1]: Hr9c3{0 .} ==> Br9c3 ≠ nes, Pr9c3 ≠ ne, Pr9c3 ≠ se, Pr9c3 ≠ ew, Pr9c4 ≠ nw, Pr9c4 ≠ ew, Pr9c4 ≠ sw, Br8c3 ≠ s, Br8c3 ≠ se, Br8c3 ≠ sw, Br8c3 ≠ esw, Br9c3 ≠ n, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ swn, Br9c3 ≠ wne
whip[1]: Br8c3{ew .} ==> Nr8c3 ≠ 3
whip[1]: Hr8c2{1 .} ==> Br8c2 ≠ esw, Pr8c2 ≠ ns, Pr8c3 ≠ ns, Br7c2 ≠ wne
whip[1]: Br8c2{nes .} ==> Pr9c2 ≠ o, Pr9c3 ≠ o
whip[1]: Vr9c5{0 .} ==> Br9c5 ≠ esw, Pr9c5 ≠ ns, Pr9c5 ≠ se, Pr9c5 ≠ sw, Pr10c5 ≠ ne, Pr10c5 ≠ ns, Pr10c5 ≠ nw, Br9c4 ≠ e, Br9c4 ≠ ne, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ esw, Br9c4 ≠ wne, Br9c4 ≠ nes, Br9c5 ≠ w, Br9c5 ≠ nw
whip[1]: Pr10c5{sw .} ==> Br10c4 ≠ se, Br10c4 ≠ esw
whip[1]: Vr8c4{1 .} ==> Br8c4 ≠ nes, Br8c3 ≠ o, Pr8c4 ≠ o, Pr8c4 ≠ ne, Pr9c4 ≠ o, Pr9c4 ≠ se, Br8c3 ≠ w
whip[1]: Br8c3{ew .} ==> Nr8c3 ≠ 0
whip[1]: Pr9c4{ns .} ==> Br9c4 ≠ s, Br9c4 ≠ nw, Br9c4 ≠ swn, Br9c4 ≠ o
whip[1]: Br9c4{sw .} ==> Nr9c4 ≠ 0, Nr9c4 ≠ 3
whip[1]: Pr8c4{se .} ==> Br7c4 ≠ swn, Br7c4 ≠ n
whip[1]: Br7c4{nw .} ==> Nr7c4 ≠ 1, Nr7c4 ≠ 3
N-single: Nr7c4 = 2
whip[1]: Br8c4{wne .} ==> Pr8c5 ≠ o, Pr9c5 ≠ o
whip[1]: Vr9c6{0 .} ==> Br9c6 ≠ wne, Pr9c6 ≠ ns, Pr9c6 ≠ se, Pr9c6 ≠ sw, Pr10c6 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ nes, Br9c6 ≠ w, Br9c6 ≠ nw, Br9c6 ≠ ew
P-single: Pr10c6 = o
w[1]-1-in-r10c5-symmetric-ne-corner ==> Pr11c5 ≠ o
whip[1]: Pr10c6{o .} ==> Hr10c5 ≠ 1, Br10c5 ≠ n
H-single: Hr10c5 = 0
whip[1]: Hr10c5{0 .} ==> Pr10c5 ≠ ew
whip[1]: Pr10c5{sw .} ==> Br10c4 ≠ nw, Br10c4 ≠ swn, Br10c4 ≠ n, Br10c4 ≠ ns
whip[1]: Br10c4{nes .} ==> Pr10c4 ≠ se
whip[1]: Pr11c5{ew .} ==> Br11c4 ≠ o, Hr11c4 ≠ 0, Br10c4 ≠ o, Br10c4 ≠ w
H-single: Hr11c4 = 1
B-single: Br11c4 = n
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
whip[1]: Hr11c4{1 .} ==> Pr11c4 ≠ o, Pr11c4 ≠ nw
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ esw, Br10c3 ≠ nes, Br10c3 ≠ o, Br10c3 ≠ n, Br10c3 ≠ w
whip[1]: Br10c3{wne .} ==> Nr10c3 ≠ 0
whip[1]: Br10c4{nes .} ==> Nr10c4 ≠ 0
whip[1]: Br9c6{ne .} ==> Nr9c6 ≠ 3
whip[1]: Br9c5{n .} ==> Nr9c5 ≠ 2, Nr9c5 ≠ 3
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ nes, Pr8c5 ≠ ew, Pr9c5 ≠ ew, Br8c4 ≠ swn
whip[1]: Br8c5{wne .} ==> Pr8c6 ≠ o, Pr9c6 ≠ o
whip[1]: Vr9c7{0 .} ==> Br9c7 ≠ wne, Pr9c7 ≠ ns, Pr9c7 ≠ se, Pr9c7 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Br9c6 ≠ e, Br9c6 ≠ ne, Br9c7 ≠ w, Br9c7 ≠ nw, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn
whip[1]: Br9c6{n .} ==> Nr9c6 ≠ 2
whip[1]: Pr10c7{se .} ==> Br10c7 ≠ ns, Br10c7 ≠ sw, Br10c7 ≠ esw, Br10c7 ≠ nes
whip[1]: Br10c7{swn .} ==> Pr10c8 ≠ sw
whip[1]: Pr10c8{nw .} ==> Br9c7 ≠ ns, Br9c7 ≠ s
whip[1]: Vr8c6{1 .} ==> Br8c6 ≠ nes, Pr8c6 ≠ ew, Pr9c6 ≠ ew, Br8c5 ≠ swn
whip[1]: Br8c6{wne .} ==> Pr8c7 ≠ o, Pr9c7 ≠ o
whip[1]: Vr8c7{1 .} ==> Br8c7 ≠ nes, Pr8c7 ≠ ew, Pr9c7 ≠ ew, Br8c6 ≠ swn
whip[1]: Br8c7{wne .} ==> Pr8c8 ≠ o, Pr9c8 ≠ o, Pr9c8 ≠ se
whip[1]: Pr9c8{sw .} ==> Br9c8 ≠ nw
whip[1]: Br9c8{w .} ==> Nr9c8 ≠ 2
whip[1]: Pr8c8{sw .} ==> Br8c8 ≠ o, Br8c8 ≠ s
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Vr8c8{1 .} ==> Br8c8 ≠ nes, Pr8c8 ≠ ew, Pr9c8 ≠ ew, Pr9c8 ≠ sw, Br8c7 ≠ swn, Br8c8 ≠ ne
whip[1]: Br8c8{wne .} ==> Pr9c9 ≠ nw
whip[1]: Pr9c9{ew .} ==> Br8c9 ≠ w
whip[1]: Pr9c8{nw .} ==> Br9c7 ≠ ne, Br9c7 ≠ nes
whip[1]: Br9c7{se .} ==> Nr9c7 ≠ 3
whip[1]: Hr10c1{0 .} ==> Br10c1 ≠ swn, Pr10c1 ≠ ne, Pr10c1 ≠ se, Pr10c2 ≠ nw, Pr10c2 ≠ ew, Pr10c2 ≠ sw, Br9c1 ≠ s, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c1 ≠ esw, Br10c1 ≠ n, Br10c1 ≠ ne
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 3
whip[1]: Hr10c3{0 .} ==> Br10c3 ≠ wne, Pr10c3 ≠ ne, Pr10c3 ≠ se, Pr10c3 ≠ ew, Pr10c4 ≠ nw, Pr10c4 ≠ ew, Pr10c4 ≠ sw, Br9c3 ≠ s, Br9c3 ≠ se, Br9c3 ≠ sw, Br9c3 ≠ esw, Br10c3 ≠ ne, Br10c3 ≠ ns, Br10c3 ≠ swn
whip[1]: Br10c3{sw .} ==> Nr10c3 ≠ 3
whip[1]: Br9c3{ew .} ==> Nr9c3 ≠ 3
whip[1]: Pr10c4{ns .} ==> Br9c4 ≠ ns
whip[1]: Hr9c2{1 .} ==> Br9c2 ≠ esw, Pr9c2 ≠ ns, Pr9c3 ≠ ns, Br8c2 ≠ wne
whip[1]: Br9c2{nes .} ==> Pr10c2 ≠ o, Pr10c3 ≠ o
whip[1]: Hr10c2{1 .} ==> Br10c2 ≠ esw, Pr10c2 ≠ ns, Pr10c3 ≠ ns, Br9c2 ≠ wne
whip[1]: Br10c2{nes .} ==> Pr11c2 ≠ o, Pr11c3 ≠ o
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ e
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ o
whip[1]: Br10c1{esw .} ==> Nr10c1 ≠ 0
whip[1]: Hr11c2{1 .} ==> Br10c2 ≠ wne, Br11c2 ≠ o, Pr11c2 ≠ nw, Pr11c3 ≠ ne
B-single: Br11c2 = n
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ sw
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ esw
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 3
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
Entering_relation_bivalue_with_<Fact-186779>
Entering_level_BC2_with_<Fact-187416>
Entering_level_W2_with_<Fact-189518>
Entering_level_BC3_with_<Fact-192149>
biv-chain[3]: Pr8c1{o ns} - Br7c1{n ew} - Pr8c2{se ne} ==> Br8c1 ≠ ew
whip[1]: Br8c1{w .} ==> Nr8c1 ≠ 2
biv-chain[3]: Pr8c1{ns o} - Br7c1{ew n} - Pr8c2{ne se} ==> Br8c1 ≠ o
whip[1]: Br8c1{w .} ==> Nr8c1 ≠ 0
N-single: Nr8c1 = 1
biv-chain[3]: Pr9c1{o ns} - Br8c1{e w} - Pr9c2{ne se} ==> Br9c1 ≠ w
biv-chain[3]: Pr9c2{ne se} - Br8c1{e w} - Pr9c1{o ns} ==> Br9c1 ≠ e
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 1
biv-chain[3]: Pr3c11{o ns} - Br2c10{n ew} - Pr3c10{sw nw} ==> Br3c10 ≠ ew
whip[1]: Br3c10{w .} ==> Nr3c10 ≠ 2
biv-chain[3]: Pr3c11{ns o} - Br2c10{ew n} - Pr3c10{nw sw} ==> Br3c10 ≠ o
whip[1]: Br3c10{w .} ==> Nr3c10 ≠ 0
N-single: Nr3c10 = 1
Entering_level_W3_with_<Fact-200504>
whip[3]: Pr10c4{ns o} - Br10c3{ew s} - Pr10c3{sw .} ==> Br9c3 ≠ o
whip[1]: Br9c3{ew .} ==> Nr9c3 ≠ 0
Entering_level_BC4_with_<Fact-210687>
Entering_level_W4_with_<Fact-237957>
Entering_level_BC5_with_<Fact-273250>
Entering_level_W5_with_<Fact-359116>
GRID 0 NOT SOLVED. 211 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.———.....   .   .....———.....———.———.———.
|   :   : 1     : 2 : 2 :   :     2     |
.   .........———.....   .........———.....
| 2 | 3 :   :               :   : 3 :   :
.   .———.   .................   .———.   .
| 2     :   | 3 | 3 | 3 | 3 |   : 3 :   :
.———.———.....................   .———.   .
                            :   : 3 :   :
.———.   .———.   .———.———.———.....———.....
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.....———.....———.———.———.   .———.   .———.
:   : 3 :   :
.   .———.   .....................   .   .
:   : 3 :   | 3 | 3 | 3 | 3 |   :     1
.   .———.   .........................———.
:   : 3 :   :               :     1 : 3 |
.   .———.   .....   .   .....   .   .....
:   : 3 :   :   : 1   1 :   : 1     |   :
.....———.....———.........———.............

init-time = 0.63s, solve-time = 48.93s, total-time = 49.55s
nb-facts=<Fact-475044>
Quasi-Loop max length = 0
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Manual finsih:

.———.....   .   .....———.....———.———.———.
|   :   : 1     : 2 : 2 :   :     2     |
.   .........———.....   .........———.....
| 2 | 3 :   :               :   : 3 :   :
.   .———.   .................   .———.   .
| 2     :   | 3 | 3 | 3 | 3 |   : 3 :   :
.———.———.....................   .———.   .
                            :   : 3 :   :
.———.   .———.   .———.———.———.....———.....
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.....———.....———.———.———.   .———.   .———.
:   : 3 :   :
.   .———.   .....................   .   .
:   : 3 :   | 3 | 3 | 3 | 3 |   :     1
.   .———.   .........................———.
:   : 3 :   :               :     1 : 3 |
.   .———.   .   .   .   .   .   .   .....
:   : 3 :   :     1   1     : 1     |   :
.....———.....———.———.———.———.............



Vr9c10 = 1 ==> small loop
therefore Vr9c10 = 0

.———.....   .   .....———.....———.———.———.
|   :   : 1     : 2 : 2 :   :     2     |
.   .........———.....   .........———.....
| 2 | 3 :   :               :   : 3 :   :
.   .———.   .................   .———.   .
| 2     :   | 3 | 3 | 3 | 3 |   : 3 :   :
.———.———.....................   .———.   .
                            :   : 3 :   :
.———.   .———.   .———.———.———.....———.....
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.....———.....———.———.———.   .———.   .———.
:   : 3 :   :
.   .———.   .....................   .   .
:   : 3 :   | 3 | 3 | 3 | 3 |   :     1
.   .———.   .....................———.———.
:   : 3 :   :                     1   3 |
.   .———.   .   .   .   .   .   .   .———.
:   : 3 :   :     1   1       1     |
.....———.....———.———.———.———.———.———.   .



Vr10c2 = 0 ==> small loop


.———.....   .   .....———.....———.———.———.
|   :   : 1     : 2 : 2 :   :     2     |
.   .........———.....   .........———.....
| 2 | 3 :   :               :   : 3 :   :
.   .———.   .................   .———.   .
| 2     :   | 3 | 3 | 3 | 3 |   : 3 :   :
.———.———.....................   .———.   .
                            :   : 3 :   :
.———.   .———.   .———.———.———.....———.....
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.   .———.———.———.———.———.   .———.   .———.
|   | 3
.   .———.   .———.   .———.   .———.   .   .
|     3 |   | 3 | 3 | 3 | 3 |   |     1
.   .———.   .   .———.   .———.   .———.———.
|   | 3     |                     1   3 |
.   .———.   .   .   .   .   .   .   .———.
|     3 |   |     1   1       1     |
.———.———.   .———.———.———.———.———.———.   .



therefore Vr10c2 = 1 :

.———.....   .   .....———.....———.———.———.
|   :   : 1     : 2 : 2 :   :     2     |
.   .........———.....   .........———.....
| 2 | 3 :   :               :   : 3 :   :
.   .———.   .................   .———.   .
| 2     :   | 3 | 3 | 3 | 3 |   : 3 :   :
.———.———.....................   .———.   .
                            :   : 3 :   :
.———.   .———.   .———.———.———.....———.....
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.———.———.   .———.———.———.   .———.   .———.
      3 |   |
.   .———.   .   .———.   .———.   .   .   .
    | 3     | 3 | 3 | 3 | 3 |         1
.   .———.   .———.   .———.   .———.———.———.
      3 |                         1   3 |
.   .———.   .   .   .   .   .   .   .———.
    | 3           1   1       1     |
.   .———.———.———.———.———.———.———.———.   .




Vr3c3 = 1 ==> small loop

.———.....   .   .....———.....———.———.———.
|   |   : 1     : 2 : 2 :   :     2     |
.   .   .....———.....   .........———.....
| 2 | 3     :               :   : 3 :   :
.   .———.   .................   .———.   .
| 2     |   | 3 | 3 | 3 | 3 |   : 3 :   :
.———.———.   .................   .———.   .
                            :   : 3 :   :
.———.   .———.   .———.———.———.....———.....
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.———.———.   .———.———.———.   .———.   .———.
      3 |   |
.   .———.   .   .———.   .———.   .   .   .
    | 3     | 3 | 3 | 3 | 3 |         1
.   .———.   .———.   .———.   .———.———.———.
      3 |                         1   3 |
.   .———.   .   .   .   .   .   .   .———.
    | 3           1   1       1     |
.   .———.———.———.———.———.———.———.———.   .



therefore Vr3c3 = 0


.———.   .   .   .   .———.———.———.———.———.
|   |     1       2 | 2           2     |
.   .   .———.———.———.   .   .———.———.   .
| 2 | 3 |                   |     3 |   |
.   .———.   .———.   .———.   .   .———.   .
| 2         | 3 | 3 | 3 | 3 |   | 3     |
.———.———.———.   .———.   .———.   .———.   .
                                  3 |   |
.———.   .———.   .———.———.———.———.———.   .
| 3 | 3 | 3 | 3 |                       |
.   .———.   .———.   .   .———.   .———.   .
|                       | 3 | 3 | 3 | 3 |
.———.———.   .———.———.———.   .———.   .———.
      3 |   |
.   .———.   .   .———.   .———.   .   .   .
    | 3     | 3 | 3 | 3 | 3 |         1
.   .———.   .———.   .———.   .———.———.———.
      3 |                         1   3 |
.   .———.   .   .   .   .   .   .   .———.
    | 3           1   1       1     |
.   .———.———.———.———.———.———.———.———.   .





