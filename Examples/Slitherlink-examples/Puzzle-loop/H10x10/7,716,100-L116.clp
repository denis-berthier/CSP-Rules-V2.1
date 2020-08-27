

(solve 10 10
2 . . 3 . 3 2 . . . 
. 3 . 3 . . . 3 2 2 
. . . 2 2 . 1 2 2 . 
. 1 . 2 . . . . . 3 
. . 2 2 . . . 2 . . 
3 3 . . 3 1 3 . 2 . 
2 . . . . . . . . 3
. 3 1 . . 2 . . 1 . 
2 1 2 2 1 1 2 . . 3 
. . . 1 . . . . 1 . 
)




***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . . 3 . 3 2 . . .
. 3 . 3 . . . 3 2 2
. . . 2 2 . 1 2 2 .
. 1 . 2 . . . . . 3
. . 2 2 . . . 2 . .
3 3 . . 3 1 3 . 2 .
2 . . . . . . . . 3
. 3 1 . . 2 . . 1 .
2 1 2 2 1 1 2 . . 3
. . . 1 . . . . 1 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.614964008331299
start solution 0.626550197601318
entering BRT
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3-2-3-in-{r2c8...r4c10} ==> Vr4c11 = 1, Vr2c8 = 1, Hr5c10 = 1, Hr2c8 = 1, Vr5c11 = 0, Vr1c8 = 0, Hr2c7 = 0
w[1]-2-in-r1c7-open-se-corner ==> Hr1c7 = 1, Vr1c7 = 1, Hr1c6 = 0
w[1]-3-in-r1c6-hit-by-horiz-line-at-ne ==> Vr1c6 = 1, Hr2c6 = 1
w[1]-1+3+1-in-r8c3+r8c2+r9c2 ==> Hr10c2 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr9c2 = 0
w[1]-3-in-r4c10-closed-se-corner ==> Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ o
w[1]-3-in-r1c6-closed-sw-corner ==> Pr1c7 ≠ sw
w[1]-3-in-r1c6-closed-se-corner ==> Pr1c6 ≠ se, Pr1c6 ≠ o
w[1]-3-in-r2c2-symmetric-nw-corner ==> Vr2c2 = 1, Hr2c2 = 1
w[1]-2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
diagonal-3-1-in-se-corner ==> Vr10c10 = 1, Hr10c10 = 0
adjacent-3s-in-r6{c1 c2} ==> Vr6c3 = 1, Vr6c2 = 1, Vr6c1 = 1, Vr7c2 = 0, Vr5c2 = 0
adjacent-3s-in-c4{r1 r2} ==> Hr3c4 = 1, Hr2c4 = 1, Hr1c4 = 1, Hr2c3 = 0
P-single: Pr1c1 = se
entering level Loop with <Fact-93061>
entering level Col with <Fact-93139>
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
horizontal-line-{r4 r5}c10 ==> Ir4c10 = in
vertical-line-r6{c0 c1} ==> Ir6c1 = in
vertical-line-r6{c1 c2} ==> Ir6c2 = out
vertical-line-r6{c2 c3} ==> Ir6c3 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
horizontal-line-{r1 r2}c2 ==> Ir2c2 = out
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
horizontal-line-{r1 r2}c8 ==> Ir2c8 = out
vertical-line-r2{c7 c8} ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
vertical-line-r1{c5 c6} ==> Ir1c6 = out
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
w[1]-2-in-r3c5-open-nw-corner ==> Hr4c5 = 1, Vr3c6 = 1, Hr4c6 = 0, Vr4c6 = 0
w[1]-diagonal-3-2s-in-{r6c2...r3c5}-non-closed-ne-end ==> Hr7c2 = 1, Hr7c1 = 0
w[1]-2-in-r7c1-open-ne-corner ==> Hr8c1 = 1, Vr7c1 = 1, Vr8c1 = 0
w[1]-diagonal-3-2-in-{r8c2...r7c1}-non-closed-nw-corner ==> Vr8c3 = 1, Hr9c2 = 1, Vr9c3 = 0, Hr9c3 = 0
w[1]-2-in-r9c3-open-nw-corner ==> Hr10c3 = 1, Vr9c4 = 1, Hr10c4 = 0, Vr10c4 = 0
w[1]-3-in-r6c1-hit-by-verti-line-at-sw ==> Hr6c1 = 1
w[1]-3-in-r1c4-hit-by-verti-line-at-se ==> Vr1c4 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r8{c3 c2} ==> Hr8c2 = 1
w[1]-3-in-r8c2-closed-ne-corner ==> Pr9c2 ≠ ne, Pr9c2 ≠ o
w[1]-3-in-r1c4-closed-sw-corner ==> Pr1c5 ≠ sw, Pr1c5 ≠ o
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
w[1]-3-in-r6c1-closed-nw-corner ==> Pr7c2 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ o
w[1]-3-in-r6c1-closed-ne-corner ==> Pr7c1 ≠ ne
w[1]-3-in-r6c2-closed-se-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ o
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne
P-single: Pr7c1 = ns
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = out
no-vertical-line-r5{c1 c2} ==> Ir5c1 = out
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
horizontal-line-{r7 r8}c1 ==> Ir7c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
no-horizontal-line-{r7 r8}c3 ==> Ir8c3 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = in
no-vertical-line-r9{c2 c3} ==> Ir9c2 = in
no-vertical-line-r9{c1 c2} ==> Ir9c1 = in
no-horizontal-line-{r9 r10}c2 ==> Ir10c2 = in
horizontal-line-{r8 r9}c2 ==> Ir8c2 = out
vertical-line-r9{c3 c4} ==> Ir9c4 = out
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = out
no-vertical-line-r10{c3 c4} ==> Ir10c3 = out
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
vertical-line-r3{c5 c6} ==> Ir3c6 = out
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = out
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
different-colours-in-{r2 r3}c6 ==> Hr3c6 = 1
same-colour-in-{r10 r11}c3 ==> Hr11c3 = 0
different-colours-in-r10{c2 c3} ==> Hr10c3 = 1
same-colour-in-{r10 r11}c4 ==> Hr11c4 = 0
w[1]-diagonal-1-1-in-{r10c4...r9c5}-with-no-sw-outer-sides ==> Hr9c5 = 0, Vr9c6 = 0
different-colours-in-{r8 r9}c4 ==> Hr9c4 = 1
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
different-colours-in-{r8 r9}c1 ==> Hr9c1 = 1
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
w[1]-3-in-r2c2-hit-by-verti-line-at-ne ==> Hr3c2 = 1
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
Starting_init_links_with_<Fact-93844>
1051 candidates, 8312 csp-links and 33950 links. Density = 6.15%
starting non trivial part of solution
Entering_level_W1_with_<Fact-178373>
whip[1]: Hr1c8{1 .} ==> Br1c8 ≠ esw, Br0c8 ≠ o, Br1c8 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ se, Br1c8 ≠ e, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ sw
B-single: Br0c8 = s
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ swn, Br1c9 ≠ wne, Br1c9 ≠ o, Br1c9 ≠ e, Br1c9 ≠ s
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Hr1c5{1 .} ==> Br1c5 ≠ esw, Br0c5 ≠ o, Br1c5 ≠ o, Br1c5 ≠ e, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw
B-single: Br0c5 = s
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Vr3c1{1 .} ==> Br3c1 ≠ nes, Br3c0 ≠ o, Br3c1 ≠ o, Pr3c1 ≠ o, Pr3c1 ≠ ne, Pr4c1 ≠ o, Pr4c1 ≠ se, Br3c1 ≠ n, Br3c1 ≠ e, Br3c1 ≠ s, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se
B-single: Br3c0 = e
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ o, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ ne, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ e
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
whip[1]: Vr3c2{0 .} ==> Br3c2 ≠ wne, Pr3c2 ≠ ns, Pr3c2 ≠ se, Pr3c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ wne, Br3c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn
whip[1]: Hr3c1{0 .} ==> Br3c1 ≠ swn, Pr3c1 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ ew, Br2c1 ≠ s, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ nes, Br3c1 ≠ nw
P-single: Pr3c1 = ns
whip[1]: Br3c1{sw .} ==> Nr3c1 ≠ 3
whip[1]: Pr3c2{ne .} ==> Br2c2 ≠ wne, Br2c2 ≠ nes
whip[1]: Br2c2{swn .} ==> Pr2c2 ≠ o, Pr3c2 ≠ o, Pr3c3 ≠ ne, Pr3c3 ≠ ns
P-single: Pr3c2 = ne
P-single: Pr2c2 = se
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ o, Br2c1 ≠ w, Br2c1 ≠ nw, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ se
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br2c1{wne .} ==> Nr2c1 ≠ 1
whip[1]: Pr2c2{se .} ==> Br1c2 ≠ w, Br1c2 ≠ e, Br1c2 ≠ n, Br1c2 ≠ o, Br1c1 ≠ se, Br1c2 ≠ ne, Br1c2 ≠ nw, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ wne, Br2c1 ≠ wne, Br2c2 ≠ esw
B-single: Br2c2 = swn
B-single: Br2c1 = ew
B-single: Br1c1 = nw
whip[1]: Br2c2{swn .} ==> Pr2c3 ≠ se, Pr2c3 ≠ ns
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ e, Br1c3 ≠ ne, Br2c3 ≠ w
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br2c1{ew .} ==> Nr2c1 ≠ 3, Pr2c1 ≠ se
N-single: Nr2c1 = 2
P-single: Pr2c1 = ns
whip[1]: Br1c1{nw .} ==> Pr1c2 ≠ se
P-single: Pr1c2 = ew
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ s, Br1c2 ≠ se
whip[1]: Br1c2{nes .} ==> Pr1c3 ≠ o, Pr1c3 ≠ se, Nr1c2 ≠ 0, Nr1c2 ≠ 1
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ wne, Br1c3 ≠ s
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ swn, Br3c3 ≠ wne, Br3c3 ≠ o, Br3c3 ≠ e, Br3c3 ≠ s
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Vr1c3{1 .} ==> Br1c3 ≠ nes, Pr1c3 ≠ ew, Pr2c3 ≠ ew, Br1c2 ≠ ns, Br1c3 ≠ ns
P-single: Pr2c3 = nw
P-single: Pr1c3 = sw
B-single: Br1c2 = nes
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ n, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ nes
whip[1]: Br2c3{se .} ==> Pr2c4 ≠ ew, Pr2c4 ≠ sw, Nr2c3 ≠ 3
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ w, Br1c4 ≠ nes, Br2c4 ≠ swn, Br2c4 ≠ wne
B-single: Br1c3 = ew
whip[1]: Br1c3{ew .} ==> Nr1c3 ≠ 3, Nr1c3 ≠ 1, Pr1c4 ≠ sw, Pr1c4 ≠ ew, Pr1c4 ≠ o
N-single: Nr1c3 = 2
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ esw
whip[1]: Br1c4{wne .} ==> Pr1c5 ≠ se
P-single: Pr1c5 = ew
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ wne, Br1c5 ≠ nw, Br1c5 ≠ swn, Br1c5 ≠ wne
B-single: Br1c4 = swn
whip[1]: Br1c4{swn .} ==> Pr2c5 ≠ ns, Pr2c5 ≠ ne, Pr2c4 ≠ ns
P-single: Pr2c4 = ne
whip[1]: Pr2c4{ne .} ==> Br2c3 ≠ e, Br2c3 ≠ se, Br2c4 ≠ esw
B-single: Br2c4 = nes
whip[1]: Br2c4{nes .} ==> Pr3c5 ≠ ew, Pr3c5 ≠ ns, Pr3c5 ≠ ne, Pr3c5 ≠ o, Pr3c4 ≠ ns, Pr2c5 ≠ ew
P-single: Pr4c6 = nw
P-single: Pr2c5 = sw
P-single: Pr3c5 = nw
whip[1]: Pr4c6{nw .} ==> Br4c6 ≠ n, Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ o, Br3c6 ≠ s, Br3c6 ≠ e, Br3c6 ≠ n, Br3c6 ≠ o, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ nes, Br4c5 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes
B-single: Br3c5 = se
whip[1]: Br3c5{se .} ==> Pr4c5 ≠ ns, Pr3c6 ≠ ew, Pr3c6 ≠ nw
whip[1]: Pr3c6{se .} ==> Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ nes, Br2c6 ≠ ne, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c5 ≠ s, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ e
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Pr4c5{ew .} ==> Br3c4 ≠ se, Br3c4 ≠ ew, Br4c4 ≠ sw, Br3c4 ≠ ne, Br4c4 ≠ ne
whip[1]: Br4c6{se .} ==> Pr4c7 ≠ nw, Pr4c7 ≠ ew, Pr4c7 ≠ sw, Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Nr4c6 ≠ 3
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 0
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ ne, Br2c5 ≠ e, Br2c5 ≠ n, Br2c5 ≠ o, Br1c5 ≠ ns, Br1c5 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ wne
whip[1]: Br2c5{ew .} ==> Pr2c6 ≠ nw, Pr2c6 ≠ ew, Pr2c6 ≠ sw, Nr2c5 ≠ 0, Nr2c5 ≠ 3
whip[1]: Br1c5{ne .} ==> Nr1c5 ≠ 3
whip[1]: Pr3c5{nw .} ==> Br3c4 ≠ sw
whip[1]: Pr4c4{ew .} ==> Br4c3 ≠ sw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c3 ≠ o, Br4c3 ≠ s, Br4c3 ≠ w, Br4c3 ≠ ne
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 0
whip[1]: Pr3c4{ew .} ==> Br3c3 ≠ sw, Br3c3 ≠ nes, Br3c3 ≠ w, Br3c3 ≠ ne
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 2
whip[1]: Br1c2{nes .} ==> Nr1c2 ≠ 2
N-single: Nr1c2 = 3
whip[1]: Hr9c1{1 .} ==> Br9c1 ≠ sw, Br8c1 ≠ o, Pr9c1 ≠ ns, Pr9c2 ≠ ns, Pr9c2 ≠ se, Br8c1 ≠ n, Br8c1 ≠ e, Br8c1 ≠ w, Br8c1 ≠ ne, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ wne, Br9c1 ≠ se, Br9c1 ≠ ew
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Pr9c2{ew .} ==> Br8c2 ≠ esw, Br8c2 ≠ swn, Br9c1 ≠ ne, Br9c2 ≠ w
whip[1]: Br9c2{s .} ==> Pr10c2 ≠ ne, Pr10c2 ≠ ns, Pr9c3 ≠ sw, Pr10c3 ≠ nw
whip[1]: Pr10c3{ew .} ==> Br9c3 ≠ sw, Br10c2 ≠ sw, Br10c2 ≠ wne, Br10c2 ≠ nes, Br10c3 ≠ se, Br9c3 ≠ ne, Br10c2 ≠ o, Br10c2 ≠ s, Br10c2 ≠ w, Br10c2 ≠ ne, Br10c3 ≠ o, Br10c3 ≠ e, Br10c3 ≠ s
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 0
whip[1]: Br10c2{swn .} ==> Nr10c2 ≠ 0
whip[1]: Pr9c3{ew .} ==> Br9c3 ≠ nw
whip[1]: Br8c2{nes .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ sw, Pr8c3 ≠ o, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Pr8c3 ≠ se, Pr8c3 ≠ ew, Pr9c3 ≠ o, Pr9c3 ≠ ew
P-single: Pr8c3 = sw
w[1]-1-in-r8c3-asymmetric-nw-corner ==> Pr9c4 ≠ ew, Pr9c4 ≠ ns
P-single: Pr9c4 = se
whip[1]: Pr8c3{sw .} ==> Br8c3 ≠ s, Br8c3 ≠ e, Br8c3 ≠ n, Br7c3 ≠ ns, Br7c3 ≠ w, Br7c3 ≠ s, Br7c2 ≠ ne, Br7c2 ≠ w, Br7c2 ≠ e, Br7c2 ≠ n, Br7c2 ≠ o, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ esw, Br7c2 ≠ wne, Br7c2 ≠ nes, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes
B-single: Br8c3 = w
whip[1]: Br8c3{w .} ==> Pr9c3 ≠ ne, Pr8c4 ≠ nw, Pr8c4 ≠ ns, Pr8c4 ≠ se, Pr8c4 ≠ ew, Pr8c4 ≠ sw
w[1]-1-in-r9c2-asymmetric-ne-corner ==> Pr10c2 ≠ ew, Pr10c2 ≠ se
whip[1]: Pr10c2{sw .} ==> Br10c1 ≠ esw, Br10c1 ≠ swn, Br10c2 ≠ nw, Br10c2 ≠ swn, Br9c2 ≠ s, Br10c1 ≠ n, Br10c1 ≠ e, Br10c2 ≠ n, Br10c2 ≠ ns
whip[1]: Br10c2{esw .} ==> Pr11c3 ≠ o, Pr11c3 ≠ ew, Pr10c3 ≠ ew
whip[1]: Pr10c3{se .} ==> Br10c3 ≠ ne, Br10c3 ≠ ns, Br10c3 ≠ nes, Br10c3 ≠ n
whip[1]: Br10c1{sw .} ==> Pr11c2 ≠ nw, Pr10c1 ≠ se, Nr10c1 ≠ 1, Nr10c1 ≠ 3
P-single: Pr10c1 = ns
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ o, Vr10c1 ≠ 0, Hr10c1 ≠ 1, Br9c1 ≠ ns, Br10c1 ≠ ne
H-single: Hr10c1 = 0
V-single: Vr10c1 = 1
B-single: Br10c1 = sw
B-single: Br9c1 = nw
vertical-line-r10{c0 c1} ==> Ir10c1 = in
same-colour-in-r10{c1 c2} ==> Vr10c2 = 0
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
whip[1]: Hr10c1{0 .} ==> Pr10c2 ≠ sw
P-single: Pr9c1 = se
P-single: Pr10c2 = o
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn
whip[1]: Br8c1{nes .} ==> Pr8c1 ≠ ns, Pr8c1 ≠ se
P-single: Pr7c2 = ne
P-single: Pr8c1 = ne
whip[1]: Pr7c2{ne .} ==> Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c1 ≠ nes, Br6c2 ≠ wne, Br6c2 ≠ nes, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ ew, Br7c2 ≠ s, Br7c2 ≠ sw, Br7c2 ≠ swn
B-single: Br7c2 = ns
B-single: Br7c1 = sw
B-single: Br6c1 = wne
whip[1]: Br7c2{ns .} ==> Nr7c2 ≠ 3, Nr7c2 ≠ 1, Nr7c2 ≠ 0, Pr8c2 ≠ ne, Pr7c3 ≠ se, Pr7c3 ≠ ns, Pr7c3 ≠ ne, Pr7c3 ≠ o, Pr7c3 ≠ sw
N-single: Nr7c2 = 2
P-single: Pr8c2 = ew
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ s, Br8c1 ≠ se, Br8c1 ≠ nes, Br8c2 ≠ wne
B-single: Br8c2 = nes
B-single: Br8c1 = ns
whip[1]: Br8c2{nes .} ==> Pr9c3 ≠ ns, Pr9c2 ≠ nw
P-single: Pr10c4 = nw
P-single: Pr9c2 = ew
P-single: Pr9c3 = nw
w[1]-1-in-r10c4-symmetric-nw-corner ==> Pr11c5 ≠ nw, Pr11c5 ≠ o
w[1]-1-in-r9c2-asymmetric-nw-corner ==> Pr10c3 ≠ ns
P-single: Pr10c3 = se
whip[1]: Pr10c4{nw .} ==> Br10c4 ≠ n, Br9c3 ≠ ns, Br9c3 ≠ ew, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ sw, Br10c3 ≠ w, Br10c3 ≠ ew, Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ wne, Br10c4 ≠ w
B-single: Br9c3 = se
whip[1]: Br10c4{s .} ==> Pr11c4 ≠ ne, Pr11c4 ≠ nw
whip[1]: Br10c3{swn .} ==> Nr10c3 ≠ 1
whip[1]: Pr9c2{ew .} ==> Br9c2 ≠ e
B-single: Br9c2 = n
whip[1]: Pr11c5{ew .} ==> Br11c5 ≠ o, Hr11c5 ≠ 0, Br10c5 ≠ nw, Br10c5 ≠ ew, Br10c5 ≠ wne, Br10c5 ≠ o, Br10c5 ≠ n, Br10c5 ≠ e, Br10c5 ≠ w, Br10c5 ≠ ne
H-single: Hr11c5 = 1
B-single: Br11c5 = n
horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
different-colours-in-r10{c4 c5} ==> Hr10c5 = 1
whip[1]: Hr11c5{1 .} ==> Pr11c6 ≠ o, Pr11c6 ≠ ne
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Vr10c5{1 .} ==> Pr11c5 ≠ ew, Pr10c5 ≠ o, Br10c4 ≠ s, Br10c5 ≠ s, Br10c5 ≠ ns, Br10c5 ≠ se, Br10c5 ≠ nes
P-single: Pr10c5 = se
P-single: Pr11c5 = ne
B-single: Br10c4 = e
w[1]-1-in-r10c4-asymmetric-ne-corner ==> Pr11c4 ≠ ew
P-single: Pr11c4 = o
w[1]-1-in-r9c5-asymmetric-sw-corner ==> Pr9c6 ≠ ew, Pr9c6 ≠ se, Pr9c6 ≠ nw, Pr9c6 ≠ ns
whip[1]: Pr10c5{se .} ==> Br9c5 ≠ w, Br9c5 ≠ e, Br9c5 ≠ n, Vr9c5 ≠ 1, Hr10c5 ≠ 0, Br9c4 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ esw
H-single: Hr10c5 = 1
V-single: Vr9c5 = 0
B-single: Br10c5 = swn
B-single: Br9c4 = nw
B-single: Br9c5 = s
no-vertical-line-r9{c4 c5} ==> Ir9c5 = out
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = out
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
whip[1]: Hr10c5{1 .} ==> Pr10c6 ≠ o, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Pr10c6 ≠ se
whip[1]: Pr10c6{sw .} ==> Br10c6 ≠ nw, Br10c6 ≠ wne
whip[1]: Vr9c5{0 .} ==> Pr9c5 ≠ ns, Pr9c5 ≠ se
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ nw, Br8c4 ≠ ew, Br8c4 ≠ wne, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ e, Br8c4 ≠ w, Br8c4 ≠ ne, Br8c5 ≠ o, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ ne
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0
whip[1]: Br10c5{swn .} ==> Nr10c5 ≠ 2, Nr10c5 ≠ 1, Nr10c5 ≠ 0, Pr10c6 ≠ sw, Pr11c6 ≠ nw, Vr10c6 ≠ 1
V-single: Vr10c6 = 0
N-single: Nr10c5 = 3
w[1]-diagonal-closed-3-1-in-{r10c5...r9c6} ==> Vr9c7 = 0, Hr9c6 = 0
P-single: Pr8c7 = sw
P-single: Pr11c6 = ew
w[1]-1-in-r9c6-asymmetric-sw-corner ==> Pr9c7 ≠ ew, Pr9c7 ≠ ns
no-horizontal-line-{r8 r9}c6 ==> Ir8c6 = out
no-vertical-line-r9{c6 c7} ==> Ir9c7 = out
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1

LOOP[6]: Hr10c6-Hr10c5-Vr10c5-Hr11c5-Hr11c6- ==> Vr10c7 = 0
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r9 r10}c7 ==> Hr10c7 = 1

LOOP[8]: Hr10c7-Hr10c6-Hr10c5-Vr10c5-Hr11c5-Hr11c6-Hr11c7- ==> Vr10c8 = 0
no-vertical-line-r10{c7 c8} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
same-colour-in-r8{c5 c6} ==> Vr8c6 = 0
w[1]-2-in-r8c6-open-sw-corner ==> Hr8c6 = 1, Vr8c7 = 1, Hr8c7 = 0, Vr7c7 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c6 c7} ==> Vr6c6 = 0, Hr7c7 = 1, Hr6c6 = 0
vertical-line-r8{c6 c7} ==> Ir8c7 = in
no-horizontal-line-{r7 r8}c7 ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
horizontal-line-{r6 r7}c7 ==> Ir6c7 = out
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1
whip[1]: Vr10c6{0 .} ==> Br10c6 ≠ w, Br10c6 ≠ ew
whip[1]: Br10c6{nes .} ==> Pr11c7 ≠ o, Pr11c7 ≠ ne
whip[1]: Pr11c7{ew .} ==> Br11c6 ≠ o, Br10c7 ≠ sw, Br10c7 ≠ esw, Br10c7 ≠ swn, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ e, Br10c7 ≠ ne
B-single: Br11c6 = n
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 0
whip[1]: Vr9c7{0 .} ==> Pr9c7 ≠ sw, Pr10c7 ≠ ns, Pr10c7 ≠ nw, Br9c6 ≠ e, Br9c7 ≠ nw, Br9c7 ≠ ew, Br9c7 ≠ sw
P-single: Pr9c7 = ne
whip[1]: Pr9c7{ne .} ==> Br9c6 ≠ n, Br8c7 ≠ n, Br8c7 ≠ o, Br8c6 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ se, Br8c6 ≠ sw, Br8c7 ≠ e, Br8c7 ≠ s, Br8c7 ≠ w, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ wne, Br8c7 ≠ nes, Br9c7 ≠ se
whip[1]: Br9c7{ns .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ se
whip[1]: Pr9c8{sw .} ==> Br8c8 ≠ sw, Br8c8 ≠ esw, Br8c8 ≠ swn, Br9c8 ≠ nw, Br9c8 ≠ swn, Br9c8 ≠ wne
whip[1]: Br8c7{swn .} ==> Pr8c8 ≠ sw, Nr8c7 ≠ 0, Nr8c7 ≠ 1
whip[1]: Pr8c7{sw .} ==> Br7c7 ≠ ns, Br7c7 ≠ w, Br7c7 ≠ s, Br7c6 ≠ ne, Br7c6 ≠ w, Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ esw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes, Br8c6 ≠ ew, Br8c7 ≠ swn
B-single: Br8c6 = ne
whip[1]: Br8c6{ne .} ==> Pr8c6 ≠ ns, Pr8c6 ≠ sw
whip[1]: Pr8c6{ew .} ==> Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ esw, Br7c5 ≠ nes, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ wne, Br8c5 ≠ nes, Br7c5 ≠ o, Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Br7c5{wne .} ==> Nr7c5 ≠ 0
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Br8c7{esw .} ==> Pr8c8 ≠ nw, Pr8c8 ≠ ew
whip[1]: Br7c7{ne .} ==> Pr7c7 ≠ ns, Pr7c7 ≠ se, Nr7c7 ≠ 3, Pr7c7 ≠ sw
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 0
whip[1]: Hr10c6{1 .} ==> Pr10c6 ≠ nw, Pr10c7 ≠ o, Pr10c7 ≠ se, Br9c6 ≠ w, Br10c6 ≠ s, Br10c6 ≠ se
P-single: Pr10c6 = ew
B-single: Br9c6 = s
w[1]-1-in-r9c5-asymmetric-se-corner ==> Pr9c5 ≠ ew
P-single: Pr9c5 = nw
w[1]-1-in-r9c6-asymmetric-se-corner ==> Pr9c6 ≠ sw
P-single: Pr9c6 = o
whip[1]: Pr9c5{nw .} ==> Br8c5 ≠ s, Br8c4 ≠ s, Br8c4 ≠ ns, Br8c4 ≠ sw, Br8c4 ≠ swn, Br8c5 ≠ ns
whip[1]: Br8c5{nw .} ==> Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ew
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c5 ≠ sw, Br7c5 ≠ swn
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 1
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 1
whip[1]: Pr10c7{sw .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ wne, Br10c7 ≠ s
whip[1]: Vr10c7{0 .} ==> Pr11c7 ≠ nw, Pr10c7 ≠ sw, Br10c6 ≠ nes, Br10c7 ≠ w, Br10c7 ≠ ew
P-single: Pr10c7 = ew
P-single: Pr11c7 = ew
B-single: Br10c6 = ns
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ ne
B-single: Br9c7 = ns
whip[1]: Br9c7{ns .} ==> Pr10c8 ≠ ns, Pr10c8 ≠ ne, Vr9c8 ≠ 1
V-single: Vr9c8 = 0
no-vertical-line-r9{c7 c8} ==> Ir9c8 = out
different-colours-in-{r9 r10}c8 ==> Hr10c8 = 1

LOOP[10]: Hr10c8-Hr10c7-Hr10c6-Hr10c5-Vr10c5-Hr11c5-Hr11c6-Hr11c7-Hr11c8- ==> Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c9 = in
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
same-colour-in-r9{c10 c11} ==> Vr9c11 = 0
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1
w[1]-3-in-r9c10-hit-by-verti-line-at-se ==> Vr9c10 = 1, Hr9c10 = 1
w[1]-3-in-r9c10-closed-nw-corner ==> Pr10c11 ≠ nw, Pr10c11 ≠ o
w[1]-3-in-r9c10-closed-sw-corner ==> Pr9c11 ≠ sw, Pr9c11 ≠ o
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
w[1]-3-in-r7c10-hit-by-verti-line-at-se ==> Vr7c10 = 1, Hr7c10 = 1
w[1]-2-in-r6c9-open-se-corner ==> Hr6c9 = 1, Vr6c9 = 1, Hr6c8 = 0, Vr5c9 = 0
w[1]-2-in-r5c8-open-se-corner ==> Hr5c8 = 1, Vr5c8 = 1, Hr5c7 = 0, Vr4c8 = 0
w[1]-diagonal-3-2-in-{r6c7...r5c8}-non-closed-ne-corner ==> Vr6c7 = 1, Hr7c6 = 0
w[0]-adjacent-3-in-r6c5-nolines-east ==> Vr7c6 = 1, Vr5c6 = 1, Vr6c5 = 1, Hr7c5 = 1, Hr6c5 = 1, Vr7c5 = 0, Vr5c5 = 0, Hr7c4 = 0, Hr6c4 = 0
w[1]-2-in-r5c4-open-se-corner ==> Hr5c4 = 1, Vr5c4 = 1, Hr5c3 = 0, Vr4c4 = 0
w[1]-3-in-r6c5-closed-nw-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ nw, Pr7c6 ≠ o
w[1]-3-in-r6c5-closed-sw-corner ==> Pr6c6 ≠ sw, Pr6c6 ≠ ne, Pr6c6 ≠ o
w[1]-3-in-r7c10-closed-nw-corner ==> Pr8c11 ≠ nw, Pr8c11 ≠ o
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
no-vertical-line-r7{c4 c5} ==> Ir7c4 = out
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
vertical-line-r5{c5 c6} ==> Ir5c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
no-vertical-line-r6{c5 c6} ==> Ir6c5 = in
vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
w[1]-2-in-r3c4-open-se-corner ==> Vr3c4 = 1, Hr3c3 = 0
w[0]-adjacent-3-in-r2c2-nolines-east ==> Vr3c3 = 1
vertical-line-r3{c2 c3} ==> Ir3c3 = out
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
no-vertical-line-r4{c2 c3} ==> Ir4c2 = in
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
same-colour-in-{r5 r6}c3 ==> Hr6c3 = 0
w[1]-1-in-r4c2-asymmetric-se-corner ==> Pr4c2 ≠ sw, Pr4c2 ≠ ew
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
different-colours-in-r6{c3 c4} ==> Hr6c4 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
different-colours-in-{r10 r11}c10 ==> Hr11c10 = 1
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1
whip[1]: Vr9c8{0 .} ==> Br9c8 ≠ w, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ esw
whip[1]: Hr10c8{1 .} ==> Br10c8 ≠ o, Br9c8 ≠ o, Pr10c8 ≠ sw, Pr10c9 ≠ o, Pr10c9 ≠ ne, Pr10c9 ≠ ns, Pr10c9 ≠ se, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ ne, Br10c8 ≠ e, Br10c8 ≠ s, Br10c8 ≠ w, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ esw
P-single: Pr10c8 = ew
whip[1]: Pr10c8{ew .} ==> Br10c7 ≠ nes, Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ wne
B-single: Br10c7 = ns
whip[1]: Br10c7{ns .} ==> Nr10c7 ≠ 3, Nr10c7 ≠ 1, Pr11c8 ≠ nw, Pr11c8 ≠ ne, Pr11c8 ≠ o
N-single: Nr10c7 = 2
P-single: Pr11c8 = ew
whip[1]: Pr11c8{ew .} ==> Br10c8 ≠ ne, Br10c8 ≠ n, Br11c8 ≠ o, Br11c7 ≠ o
B-single: Br11c7 = n
B-single: Br11c8 = n
whip[1]: Br11c8{n .} ==> Pr11c9 ≠ o, Pr11c9 ≠ ne
w[1]-1-in-r10c9-asymmetric-sw-corner ==> Pr10c10 ≠ ew, Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ ns
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ se, Br9c9 ≠ esw, Br9c9 ≠ nes, Br9c10 ≠ wne, Br9c10 ≠ nes, Br10c10 ≠ nw, Br10c9 ≠ n, Br10c9 ≠ e
whip[1]: Br10c9{w .} ==> Pr11c10 ≠ ne, Pr11c10 ≠ nw, Pr10c9 ≠ ew, Pr10c10 ≠ sw
whip[1]: Pr10c10{ne .} ==> Br9c9 ≠ s, Br9c9 ≠ ns, Br9c9 ≠ sw, Br9c9 ≠ swn, Br10c10 ≠ w, Br10c10 ≠ esw
whip[1]: Br9c10{swn .} ==> Pr10c11 ≠ ns, Pr9c10 ≠ o, Pr9c10 ≠ ne, Pr9c10 ≠ nw, Pr9c10 ≠ ew, Pr10c10 ≠ o
P-single: Pr10c10 = ne
P-single: Pr10c11 = sw
whip[1]: Pr10c10{ne .} ==> Br10c10 ≠ o, Br9c9 ≠ n, Br9c9 ≠ o, Br9c9 ≠ w, Br9c9 ≠ nw, Br10c10 ≠ se
whip[1]: Br10c10{nes .} ==> Nr10c10 ≠ 0, Nr10c10 ≠ 2
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Pr10c11{sw .} ==> Br10c10 ≠ n, Br9c10 ≠ esw
B-single: Br9c10 = swn
B-single: Br10c10 = nes
whip[1]: Br9c10{swn .} ==> Pr9c10 ≠ sw, Pr9c10 ≠ ns, Pr9c11 ≠ ns
P-single: Pr9c11 = nw
P-single: Pr9c10 = se
w[1]-1-in-r8c9-symmetric-se-corner ==> Pr8c9 ≠ se, Pr8c9 ≠ nw, Pr8c9 ≠ o
whip[1]: Pr9c11{nw .} ==> Br8c10 ≠ s, Br8c10 ≠ e, Br8c10 ≠ n, Br8c10 ≠ o, Br8c10 ≠ w, Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ swn, Br8c10 ≠ wne
whip[1]: Br8c10{nes .} ==> Pr8c10 ≠ se, Nr8c10 ≠ 0, Nr8c10 ≠ 1
whip[1]: Pr9c10{se .} ==> Br8c9 ≠ s, Br8c9 ≠ e, Br8c10 ≠ esw, Br9c9 ≠ ne, Br9c9 ≠ wne
whip[1]: Br9c9{ew .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ se, Pr9c9 ≠ ew, Nr9c9 ≠ 3
whip[1]: Br8c10{nes .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ sw
whip[1]: Pr8c9{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ esw, Br7c8 ≠ nes, Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ w
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 0
whip[1]: Br10c10{nes .} ==> Nr10c10 ≠ 1, Pr11c10 ≠ o, Pr11c11 ≠ o
N-single: Nr10c10 = 3
P-single: Pr11c11 = nw
P-single: Pr11c10 = ew
w[1]-1-in-r10c9-asymmetric-se-corner ==> Pr10c9 ≠ sw
P-single: Pr10c9 = nw
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ w, Br11c9 ≠ o
B-single: Br11c9 = n
B-single: Br10c9 = s
whip[1]: Br11c9{n .} ==> Pr11c9 ≠ nw
P-single: Pr11c9 = ew
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ nes
B-single: Br10c8 = ns
whip[1]: Br10c8{ns .} ==> Nr10c8 ≠ 3, Nr10c8 ≠ 1, Nr10c8 ≠ 0
N-single: Nr10c8 = 2
whip[1]: Pr10c9{nw .} ==> Br9c9 ≠ e, Br9c8 ≠ s, Br9c8 ≠ ns
B-single: Br9c9 = ew
whip[1]: Br9c9{ew .} ==> Nr9c9 ≠ 1, Pr9c9 ≠ nw, Pr9c9 ≠ o
N-single: Nr9c9 = 2
whip[1]: Pr9c9{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ nes, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ w
whip[1]: Br8c8{wne .} ==> Nr8c8 ≠ 0
whip[1]: Br9c8{nes .} ==> Nr9c8 ≠ 0, Nr9c8 ≠ 1
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr10c11{1 .} ==> Br10c11 ≠ o
B-single: Br10c11 = w
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Vr7c10{1 .} ==> Br7c9 ≠ o, Pr7c10 ≠ o, Pr7c10 ≠ ne, Pr7c10 ≠ ew, Pr8c10 ≠ o, Pr8c10 ≠ ew, Br7c9 ≠ n, Br7c9 ≠ s, Br7c9 ≠ w, Br7c9 ≠ ns, Br7c9 ≠ nw, Br7c9 ≠ sw, Br7c9 ≠ swn, Br7c10 ≠ nes
whip[1]: Br7c10{wne .} ==> Pr7c11 ≠ o
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ nw, Br6c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 0
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ se, Br6c10 ≠ sw, Br6c10 ≠ esw, Br6c10 ≠ swn
whip[1]: Hr7c10{1 .} ==> Pr7c11 ≠ ns, Pr7c10 ≠ ns, Pr7c10 ≠ sw, Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ ew, Br6c10 ≠ wne, Br7c10 ≠ esw
P-single: Pr5c8 = se
P-single: Pr6c9 = se
P-single: Pr7c10 = se
whip[1]: Pr5c8{se .} ==> Br5c7 ≠ w, Br5c7 ≠ s, Br5c7 ≠ n, Br5c7 ≠ o, Br4c8 ≠ w, Br4c8 ≠ e, Br4c8 ≠ n, Br4c8 ≠ o, Br4c7 ≠ s, Br4c7 ≠ e, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c8 ≠ ne, Br4c8 ≠ nw, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ wne, Br5c7 ≠ ne, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ sw, Br5c7 ≠ swn, Br5c7 ≠ wne, Br5c7 ≠ nes, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ sw
B-single: Br5c8 = nw
whip[1]: Br5c8{nw .} ==> Pr6c8 ≠ ew, Pr6c8 ≠ se, Pr5c9 ≠ se, Pr5c9 ≠ ns
whip[1]: Pr5c9{ew .} ==> Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br4c9 ≠ o, Br4c9 ≠ n, Br4c9 ≠ e, Br4c9 ≠ ne, Br5c9 ≠ w
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Pr6c8{nw .} ==> Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes, Br6c8 ≠ n
whip[1]: Br6c7{swn .} ==> Pr6c7 ≠ o, Pr6c7 ≠ ne, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr7c7 ≠ o, Pr7c7 ≠ nw, Pr7c7 ≠ ew, Pr7c8 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ se
P-single: Pr7c7 = ne
w[1]-1-in-r6c6-asymmetric-se-corner ==> Pr6c6 ≠ ew, Pr6c6 ≠ ns
whip[1]: Pr7c7{ne .} ==> Br7c7 ≠ o, Br6c6 ≠ n, Br6c6 ≠ s, Br6c6 ≠ w, Br7c6 ≠ ns, Br7c6 ≠ swn, Br7c7 ≠ e
B-single: Br6c6 = e
whip[1]: Br6c6{e .} ==> Pr7c6 ≠ ne, Pr6c6 ≠ se, Pr6c7 ≠ sw, Pr7c6 ≠ ns, Pr7c6 ≠ ew
P-single: Pr7c6 = sw
P-single: Pr6c6 = nw
whip[1]: Pr7c6{sw .} ==> Br7c6 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ s, Br7c5 ≠ e, Br6c5 ≠ esw, Br6c5 ≠ wne, Br6c5 ≠ nes, Br7c5 ≠ ew
B-single: Br6c5 = swn
B-single: Br7c6 = sw
whip[1]: Br6c5{swn .} ==> Pr7c5 ≠ sw, Pr7c5 ≠ ew, Pr7c5 ≠ se, Pr7c5 ≠ nw, Pr7c5 ≠ ns, Pr7c5 ≠ o, Pr6c5 ≠ sw, Pr6c5 ≠ ew, Pr6c5 ≠ ns, Pr6c5 ≠ ne, Pr6c5 ≠ o
P-single: Pr5c4 = se
P-single: Pr6c5 = se
P-single: Pr7c5 = ne
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ e, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c4 ≠ nw, Br4c4 ≠ ew, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ sw, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ sw
B-single: Br5c4 = nw
whip[1]: Br5c4{nw .} ==> Pr6c4 ≠ ew, Pr5c5 ≠ ns
P-single: Pr6c4 = ns
whip[1]: Pr6c4{ns .} ==> Br6c4 ≠ e, Br6c4 ≠ n, Br6c4 ≠ o, Br6c3 ≠ n, Br6c3 ≠ o, Br5c3 ≠ se, Br6c3 ≠ s, Br6c3 ≠ w, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ sw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c4 ≠ s, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ swn, Br6c4 ≠ wne, Br6c4 ≠ nes
B-single: Br5c3 = ew
whip[1]: Br5c3{ew .} ==> Pr6c3 ≠ ew, Pr6c3 ≠ se, Pr5c3 ≠ ew, Pr5c3 ≠ ne
whip[1]: Pr5c3{sw .} ==> Br5c2 ≠ nw, Br5c2 ≠ sw, Br5c2 ≠ swn, Br4c2 ≠ n, Br4c2 ≠ w, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ ns
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Br4c2{s .} ==> Vr4c2 ≠ 1, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr4c2 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ew, Pr4c3 ≠ sw, Pr5c2 ≠ nw
V-single: Vr4c2 = 0
P-single: Pr4c2 = o
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
whip[1]: Vr4c2{0 .} ==> Br4c1 ≠ ne, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ nes
whip[1]: Br4c1{sw .} ==> Nr4c1 ≠ 3
whip[1]: Pr4c2{o .} ==> Br3c1 ≠ sw, Br3c2 ≠ ns, Br3c2 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ ns
B-single: Br3c1 = w
whip[1]: Br3c1{w .} ==> Nr3c1 ≠ 2, Pr4c1 ≠ ne
N-single: Nr3c1 = 1
P-single: Pr4c1 = ns
whip[1]: Br4c1{sw .} ==> Pr5c1 ≠ o, Pr5c1 ≠ se
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ s, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Br3c2{ne .} ==> Nr3c2 ≠ 3
whip[1]: Hr5c1{1 .} ==> Pr5c1 ≠ ns, Pr5c2 ≠ o, Pr5c2 ≠ se, Br4c1 ≠ w, Br5c1 ≠ w, Br5c1 ≠ ew, Br5c1 ≠ sw, Br5c1 ≠ esw
P-single: Pr5c1 = ne
B-single: Br4c1 = sw
whip[1]: Br4c1{sw .} ==> Nr4c1 ≠ 1
N-single: Nr4c1 = 2
whip[1]: Br5c1{nes .} ==> Pr6c1 ≠ ne, Pr6c1 ≠ ns
whip[1]: Pr5c2{sw .} ==> Br5c2 ≠ se, Br5c2 ≠ wne, Br5c2 ≠ e
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 1
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Br6c4{esw .} ==> Pr7c4 ≠ o, Pr7c4 ≠ se, Pr7c4 ≠ ew, Pr7c4 ≠ sw, Nr6c4 ≠ 0
whip[1]: Pr7c4{nw .} ==> Br7c3 ≠ ne, Br7c4 ≠ nw, Br7c4 ≠ swn, Br7c4 ≠ wne
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Br7c3{e .} ==> Nr7c3 ≠ 2, Nr7c3 ≠ 3
whip[1]: Br6c3{esw .} ==> Nr6c3 ≠ 0
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ swn, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br4c5 ≠ n, Br5c5 ≠ w
whip[1]: Br4c5{nw .} ==> Nr4c5 ≠ 1, Nr4c5 ≠ 3
N-single: Nr4c5 = 2
whip[1]: Br4c4{se .} ==> Pr4c4 ≠ ns
whip[1]: Pr4c4{ew .} ==> Br3c3 ≠ ew, Br3c3 ≠ n
whip[1]: Br3c3{esw .} ==> Pr4c3 ≠ o, Pr4c3 ≠ ns, Nr3c3 ≠ 1
whip[1]: Br4c3{nw .} ==> Nr4c3 ≠ 3
whip[1]: Pr6c5{se .} ==> Br6c4 ≠ w, Br5c5 ≠ e, Br5c5 ≠ n, Br5c5 ≠ o, Br5c5 ≠ ne, Br6c4 ≠ sw
whip[1]: Br6c4{esw .} ==> Nr6c4 ≠ 1
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Pr7c5{ne .} ==> Br7c4 ≠ n, Br6c4 ≠ esw, Br7c4 ≠ e, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c5 ≠ wne
B-single: Br7c5 = ne
B-single: Br6c4 = ew
whip[1]: Br7c5{ne .} ==> Nr7c5 ≠ 3, Nr7c5 ≠ 1, Pr8c5 ≠ se, Pr8c5 ≠ ns, Pr8c6 ≠ ew
N-single: Nr7c5 = 2
P-single: Pr8c6 = ne
P-single: Pr8c5 = sw
whip[1]: Pr8c6{ne .} ==> Br8c5 ≠ nw
B-single: Br8c5 = w
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
N-single: Nr8c5 = 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ w, Br7c4 ≠ o, Br8c4 ≠ se, Br8c4 ≠ esw
B-single: Br8c4 = nes
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 2, Pr8c4 ≠ o
N-single: Nr8c4 = 3
P-single: Pr8c4 = ne
whip[1]: Pr8c4{ne .} ==> Br7c3 ≠ n, Br7c3 ≠ o, Br7c4 ≠ s
B-single: Br7c4 = sw
B-single: Br7c3 = e
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 1, Nr7c4 ≠ 0, Pr7c4 ≠ nw, Pr7c4 ≠ ne
N-single: Nr7c4 = 2
P-single: Pr7c4 = ns
whip[1]: Pr7c4{ns .} ==> Br6c3 ≠ se, Br6c3 ≠ esw
whip[1]: Br6c3{ew .} ==> Pr7c3 ≠ ew, Nr6c3 ≠ 3
P-single: Pr7c3 = nw
whip[1]: Pr7c3{nw .} ==> Br6c3 ≠ e, Br6c2 ≠ swn
B-single: Br6c2 = esw
B-single: Br6c3 = ew
whip[1]: Br6c2{esw .} ==> Pr6c3 ≠ nw, Pr6c2 ≠ ew, Pr6c2 ≠ ne
P-single: Pr6c3 = ns
whip[1]: Pr6c3{ns .} ==> Br5c2 ≠ esw, Br5c2 ≠ nes
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ nes, Br5c1 ≠ n
whip[1]: Br5c1{ns .} ==> Nr5c1 ≠ 1, Nr5c1 ≠ 3
N-single: Nr5c1 = 2
P-single: Pr6c1 = se
P-single: Pr5c2 = ew
w[1]-1-in-r4c2-asymmetric-sw-corner ==> Pr4c3 ≠ se
P-single: Pr4c3 = ne
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ ne
B-single: Br5c1 = ns
whip[1]: Br5c1{ns .} ==> Pr6c2 ≠ ns
P-single: Pr5c3 = sw
P-single: Pr6c2 = sw
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ e, Br4c3 ≠ nw, Br5c2 ≠ ew
B-single: Br5c2 = ne
B-single: Br4c3 = n
B-single: Br4c2 = s
whip[1]: Br4c3{n .} ==> Nr4c3 ≠ 2
N-single: Nr4c3 = 1
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ n, Br3c3 ≠ ns
B-single: Br3c3 = esw
B-single: Br3c2 = ne
whip[1]: Br3c3{esw .} ==> Nr3c3 ≠ 2, Pr4c4 ≠ ew, Pr3c4 ≠ ew, Pr3c3 ≠ ew
N-single: Nr3c3 = 3
P-single: Pr4c5 = se
P-single: Pr5c5 = nw
P-single: Pr3c3 = sw
P-single: Pr3c4 = se
P-single: Pr4c4 = nw
whip[1]: Pr4c5{se .} ==> Br3c4 ≠ ns, Br4c4 ≠ ns, Br4c5 ≠ ns
B-single: Br4c5 = nw
B-single: Br4c4 = se
B-single: Br3c4 = nw
whip[1]: Pr5c5{nw .} ==> Br5c5 ≠ ns, Br5c5 ≠ nes
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 3
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ s
B-single: Br2c3 = o
whip[1]: Br2c3{o .} ==> Nr2c3 ≠ 1
N-single: Nr2c3 = 0
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ nes, Br5c6 ≠ n, Br5c6 ≠ w
whip[1]: Br3c2{ne .} ==> Nr3c2 ≠ 1
N-single: Nr3c2 = 2
whip[1]: Br6c3{ew .} ==> Nr6c3 ≠ 1
N-single: Nr6c3 = 2
whip[1]: Br7c3{e .} ==> Nr7c3 ≠ 0
N-single: Nr7c3 = 1
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 3
N-single: Nr6c4 = 2
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 3, Nr7c6 ≠ 1
N-single: Nr7c6 = 2
whip[1]: Pr6c6{nw .} ==> Br5c6 ≠ s, Br5c6 ≠ e, Br5c6 ≠ o, Br5c5 ≠ s, Br5c6 ≠ se, Br5c6 ≠ swn
B-single: Br5c5 = se
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 1, Pr5c6 ≠ o
N-single: Nr5c5 = 2
P-single: Pr5c6 = se
whip[1]: Pr5c6{se .} ==> Br4c6 ≠ e, Br4c6 ≠ o
whip[1]: Br4c6{se .} ==> Pr5c7 ≠ o, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Pr5c7 ≠ se, Nr4c6 ≠ 0
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 0, Nr5c6 ≠ 1
whip[1]: Pr6c7{se .} ==> Br5c7 ≠ esw, Br5c7 ≠ e
whip[1]: Br5c7{ew .} ==> Pr5c7 ≠ ew, Nr5c7 ≠ 0, Nr5c7 ≠ 1, Nr5c7 ≠ 3
N-single: Nr5c7 = 2
whip[1]: Br7c7{ne .} ==> Nr7c7 ≠ 0
whip[1]: Pr7c8{sw .} ==> Br6c8 ≠ sw, Br6c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne
whip[1]: Br7c8{sw .} ==> Nr7c8 ≠ 3
whip[1]: Br6c8{ew .} ==> Nr6c8 ≠ 3
whip[1]: Br4c8{nes .} ==> Pr4c8 ≠ ns, Pr4c8 ≠ se, Pr4c8 ≠ sw, Nr4c8 ≠ 0
whip[1]: Br4c7{nw .} ==> Nr4c7 ≠ 3
whip[1]: Pr6c9{se .} ==> Br6c8 ≠ w, Br6c8 ≠ s, Br6c8 ≠ o, Br5c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c9 ≠ ne, Br6c9 ≠ ne, Br6c9 ≠ ns, Br6c9 ≠ ew, Br6c9 ≠ sw
B-single: Br6c9 = nw
whip[1]: Br6c9{nw .} ==> Pr7c9 ≠ ew, Pr7c9 ≠ se, Pr6c10 ≠ se, Pr6c10 ≠ ns
whip[1]: Pr6c10{ew .} ==> Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ e, Br5c10 ≠ ne
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr7c9{nw .} ==> Br7c8 ≠ ne, Br7c8 ≠ sw, Br7c9 ≠ ne, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c8 ≠ s
whip[1]: Br7c8{ew .} ==> Pr8c8 ≠ ne
whip[1]: Pr8c8{se .} ==> Br8c8 ≠ ne, Br8c8 ≠ ns
whip[1]: Br8c8{wne .} ==> Pr8c9 ≠ ew
whip[1]: Pr8c9{sw .} ==> Br7c9 ≠ se
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Br6c8{ew .} ==> Nr6c8 ≠ 0
whip[1]: Br10c6{ns .} ==> Nr10c6 ≠ 3
N-single: Nr10c6 = 2
whip[1]: Pr9c8{ew .} ==> Br8c8 ≠ e
whip[1]: Pr11c5{ne .} ==> Br11c4 ≠ n
B-single: Br11c4 = o
whip[1]: Pr11c4{o .} ==> Br11c3 ≠ n, Br10c3 ≠ swn
B-single: Br10c3 = nw
B-single: Br11c3 = o
whip[1]: Br10c3{nw .} ==> Nr10c3 ≠ 3, Pr11c3 ≠ ne
N-single: Nr10c3 = 2
P-single: Pr11c3 = nw
whip[1]: Pr11c3{nw .} ==> Br10c2 ≠ e, Br11c2 ≠ o, Br10c2 ≠ ew
B-single: Br11c2 = n
whip[1]: Br11c2{n .} ==> Pr11c2 ≠ o
whip[1]: Br10c2{esw .} ==> Nr10c2 ≠ 1
whip[1]: Br8c1{ns .} ==> Nr8c1 ≠ 3, Nr8c1 ≠ 1
N-single: Nr8c1 = 2
whip[1]: Pr10c2{o .} ==> Br10c2 ≠ esw
B-single: Br10c2 = se
whip[1]: Br10c2{se .} ==> Nr10c2 ≠ 3, Pr11c2 ≠ ne
N-single: Nr10c2 = 2
P-single: Pr11c2 = ew
whip[1]: Pr11c2{ew .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Br11c1{n .} ==> Pr11c1 ≠ o
P-single: Pr11c1 = ne
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 0
N-single: Nr10c1 = 2
whip[1]: Hr3c6{1 .} ==> Br3c6 ≠ ew, Pr3c6 ≠ ns, Pr3c7 ≠ o, Pr3c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ se, Br2c6 ≠ w, Br2c6 ≠ nw, Br2c6 ≠ ew, Br2c6 ≠ wne, Br3c6 ≠ w
P-single: Pr3c6 = se
whip[1]: Pr3c6{se .} ==> Br2c5 ≠ ew
B-single: Br2c5 = w
whip[1]: Br2c5{w .} ==> Nr2c5 ≠ 2, Pr2c6 ≠ ns, Pr2c6 ≠ se
N-single: Nr2c5 = 1
whip[1]: Pr2c6{ne .} ==> Br1c6 ≠ wne, Br1c6 ≠ nes
whip[1]: Br1c6{swn .} ==> Pr1c6 ≠ ew, Pr2c6 ≠ o, Pr2c7 ≠ ns, Pr2c7 ≠ se
P-single: Pr2c6 = ne
P-single: Pr1c6 = sw
whip[1]: Pr2c6{ne .} ==> Br1c5 ≠ n, Br2c6 ≠ s, Br2c6 ≠ se
B-single: Br1c5 = ne
whip[1]: Br1c5{ne .} ==> Nr1c5 ≠ 1
N-single: Nr1c5 = 2
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 1
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ swn
B-single: Br1c6 = esw
whip[1]: Br1c6{esw .} ==> Pr2c7 ≠ ew, Pr1c7 ≠ ew
P-single: Pr1c7 = se
P-single: Pr2c7 = nw
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ sw
B-single: Br1c7 = nw
whip[1]: Br1c7{nw .} ==> Pr1c8 ≠ se
P-single: Pr1c8 = ew
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ nw, Br1c8 ≠ swn, Br1c8 ≠ wne
whip[1]: Pr2c7{nw .} ==> Br2c7 ≠ n, Br2c6 ≠ nes, Br2c7 ≠ w, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ wne, Br2c7 ≠ nes
B-single: Br2c6 = ns
whip[1]: Br2c6{ns .} ==> Nr2c6 ≠ 3, Pr3c7 ≠ nw
N-single: Nr2c6 = 2
w[1]-1-in-r3c7-asymmetric-nw-corner ==> Pr4c8 ≠ ew, Pr4c8 ≠ ne
whip[1]: Pr4c8{nw .} ==> Hr4c8 ≠ 1, Br3c8 ≠ ns, Br3c8 ≠ se, Br3c8 ≠ sw, Br4c8 ≠ ns, Br4c8 ≠ nes, Br3c7 ≠ e, Br3c7 ≠ s
H-single: Hr4c8 = 0
w[3]-adjacent-3-2-in-{r2 r3}c8-noline-south ==> Hr3c9 = 0, Hr3c7 = 0
w[1]-diagonal-3-2-in-{r4c10...r3c9}-non-closed-nw-corner ==> Vr3c9 = 1
no-horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
whip[1]: Hr4c8{0 .} ==> Pr4c9 ≠ ew
whip[1]: Pr4c9{se .} ==> Br3c9 ≠ ne, Br4c9 ≠ se, Br4c9 ≠ s
whip[1]: Hr3c9{0 .} ==> Pr3c9 ≠ ew, Pr3c10 ≠ ew, Br2c9 ≠ ns, Br2c9 ≠ se, Br2c9 ≠ sw, Br3c9 ≠ ns, Br3c9 ≠ nw
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ esw, Br2c8 ≠ nes, Br3c8 ≠ nw, Br3c9 ≠ se
whip[1]: Br3c9{sw .} ==> Pr4c9 ≠ se
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ se, Br2c7 ≠ o
whip[1]: Br2c7{s .} ==> Nr2c7 ≠ 0, Nr2c7 ≠ 2, Nr2c7 ≠ 3
N-single: Nr2c7 = 1
whip[1]: Pr4c9{ns .} ==> Br4c9 ≠ nw, Br4c9 ≠ wne
whip[1]: Br2c8{wne .} ==> Pr2c8 ≠ o, Pr2c9 ≠ ne, Pr2c9 ≠ ns, Pr2c9 ≠ se, Pr3c8 ≠ ew, Pr3c8 ≠ sw
P-single: Pr2c8 = se
w[1]-1-in-r2c7-asymmetric-ne-corner ==> Pr3c7 ≠ ew
P-single: Pr3c7 = sw
whip[1]: Pr2c8{se .} ==> Br2c7 ≠ s, Br1c8 ≠ n, Br1c8 ≠ ne
B-single: Br2c7 = e
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 1
whip[1]: Pr3c7{sw .} ==> Br3c7 ≠ n, Br3c6 ≠ nw
B-single: Br3c6 = wne
B-single: Br3c7 = w
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 2, Nr3c6 ≠ 1, Pr4c7 ≠ se, Pr4c7 ≠ o
N-single: Nr3c6 = 3
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c7 c6} ==> Vr3c8 = 0, Hr4c7 = 0
w[1]-2-in-r3c8-open-sw-corner ==> Hr3c8 = 1, Vr2c9 = 0
w[1]-2-in-r2c9-open-sw-corner ==> Hr2c9 = 1, Vr2c10 = 1, Hr2c10 = 0, Vr1c10 = 0
w[1]-3+diagonal-2-isolated-end-in-{r2c8+r2c9...ne} ==> Vr1c9 = 0
w[1]-3-in-r2c8-closed-sw-corner ==> Pr2c9 ≠ sw
P-single: Pr2c9 = ew
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r1 r2}c10 ==> Ir2c10 = in
vertical-line-r2{c9 c10} ==> Ir2c9 = out
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = out
vertical-line-r3{c8 c9} ==> Ir3c8 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
no-vertical-line-r4{c7 c8} ==> Ir4c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
vertical-line-r5{c7 c8} ==> Ir5c8 = out
no-vertical-line-r5{c8 c9} ==> Ir5c9 = out
horizontal-line-{r5 r6}c9 ==> Ir6c9 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r6 r7}c10 ==> Ir7c10 = out
vertical-line-r7{c9 c10} ==> Ir7c9 = in
vertical-line-r6{c8 c9} ==> Ir6c8 = out
same-colour-in-r6{c7 c8} ==> Vr6c8 = 0
same-colour-in-{r7 r8}c9 ==> Hr8c9 = 0
w[1]-3-in-r7c10-isolated-at-sw-corner ==> Hr8c10 = 1
w[1]-3-in-r7c10-closed-sw-corner ==> Pr7c11 ≠ sw
P-single: Pr7c11 = nw
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1
w[1]-3-in-r6c7-closed-nw-corner ==> Pr7c8 ≠ nw
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
whip[1]: Vr3c8{0 .} ==> Pr3c8 ≠ ns, Pr4c8 ≠ nw, Br3c8 ≠ ew
P-single: Pr2c10 = sw
P-single: Pr3c9 = sw
P-single: Pr4c8 = o
P-single: Pr3c8 = ne
B-single: Br3c8 = ne
w[1]-1-in-r3c7-symmetric-ne-corner ==> Pr4c7 ≠ ne
P-single: Pr4c7 = ns
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ ne, Br1c10 ≠ w, Br1c10 ≠ s, Br1c9 ≠ ne, Br1c9 ≠ w, Br1c9 ≠ n, Br1c9 ≠ ew, Br1c9 ≠ esw, Br1c9 ≠ nes, Br1c10 ≠ sw, Br1c10 ≠ wne, Br1c10 ≠ nes, Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c10 ≠ nw, Br2c10 ≠ se
B-single: Br2c9 = ne
whip[1]: Br2c10{sw .} ==> Pr2c11 ≠ nw
whip[1]: Br1c10{ne .} ==> Pr1c10 ≠ se, Nr1c10 ≠ 1, Nr1c10 ≠ 3, Pr1c10 ≠ sw
whip[1]: Br1c9{sw .} ==> Nr1c9 ≠ 1, Nr1c9 ≠ 3
N-single: Nr1c9 = 2
P-single: Pr1c10 = ew
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ o, Br1c9 ≠ sw
B-single: Br1c9 = ns
B-single: Br1c10 = ne
whip[1]: Br1c9{ns .} ==> Pr1c9 ≠ sw
P-single: Pr1c9 = ew
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ nes
B-single: Br1c8 = ns
whip[1]: Br1c8{ns .} ==> Nr1c8 ≠ 3
N-single: Nr1c8 = 2
whip[1]: Br1c10{ne .} ==> Nr1c10 ≠ 0, Pr2c11 ≠ o, Pr1c11 ≠ o
N-single: Nr1c10 = 2
P-single: Pr4c9 = ns
P-single: Pr3c10 = ns
P-single: Pr1c11 = sw
P-single: Pr2c11 = ns
whip[1]: Pr4c9{ns .} ==> Vr4c9 ≠ 0, Hr4c9 ≠ 1, Br3c9 ≠ sw, Br4c8 ≠ s, Br4c9 ≠ ns, Br4c9 ≠ nes
H-single: Hr4c9 = 0
V-single: Vr4c9 = 1
w[1]-diagonal-3-2-in-{r2c8...r3c9}-non-closed-se-corner ==> Vr3c10 = 1
w[1]-3-in-r4c10-isolated-at-sw-corner ==> Vr4c10 = 1
w[1]-3-in-r4c10-closed-sw-corner ==> Pr4c11 ≠ sw, Pr4c11 ≠ o
B-single: Br4c8 = se
B-single: Br3c9 = ew
vertical-line-r4{c9 c10} ==> Ir4c9 = out
vertical-line-r3{c9 c10} ==> Ir3c10 = in
same-colour-in-{r3 r4}c10 ==> Hr4c10 = 0
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1

LOOP[6]: Vr3c11-Vr4c11-Hr5c10-Vr4c10-Vr3c10- ==> Hr3c10 = 0
whip[1]: Hr4c9{0 .} ==> Pr4c10 ≠ ew, Pr4c10 ≠ sw
whip[1]: Pr4c10{ns .} ==> Br3c10 ≠ s, Br3c10 ≠ ne, Br3c10 ≠ ns, Br3c10 ≠ se, Br3c10 ≠ nes, Br4c10 ≠ swn, Br4c10 ≠ wne, Br3c10 ≠ o, Br3c10 ≠ n, Br3c10 ≠ e
whip[1]: Br3c10{wne .} ==> Nr3c10 ≠ 0
whip[1]: Br4c10{nes .} ==> Pr4c11 ≠ nw, Pr5c11 ≠ o, Pr5c11 ≠ ns, Pr5c11 ≠ sw, Pr5c10 ≠ o, Pr5c10 ≠ ns, Pr5c10 ≠ nw, Pr5c10 ≠ sw
P-single: Pr5c11 = nw
P-single: Pr4c11 = ns
whip[1]: Pr5c11{nw .} ==> Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ wne, Br5c10 ≠ nes
whip[1]: Br5c10{nw .} ==> Pr6c11 ≠ ns, Pr6c11 ≠ nw, Nr5c10 ≠ 1, Nr5c10 ≠ 3
N-single: Nr5c10 = 2
P-single: Pr6c11 = sw
whip[1]: Pr6c11{sw .} ==> Br6c10 ≠ ns, Br6c10 ≠ s, Br5c10 ≠ nw, Br6c10 ≠ se
B-single: Br6c10 = nes
B-single: Br5c10 = ns
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 2, Nr6c10 ≠ 1, Pr6c10 ≠ nw
N-single: Nr6c10 = 3
P-single: Pr6c10 = ew
whip[1]: Pr6c10{ew .} ==> Br5c9 ≠ se, Br5c9 ≠ nes
whip[1]: Br5c9{ns .} ==> Nr5c9 ≠ 3
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ w
B-single: Br4c9 = ew
whip[1]: Br4c9{ew .} ==> Nr4c9 ≠ 3, Nr4c9 ≠ 1, Pr5c10 ≠ ew, Pr5c9 ≠ ew, Pr4c10 ≠ ne
N-single: Nr4c9 = 2
P-single: Pr4c10 = ns
P-single: Pr5c9 = nw
P-single: Pr5c10 = ne
whip[1]: Pr4c10{ns .} ==> Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br4c10 ≠ nes
B-single: Br4c10 = esw
whip[1]: Pr5c9{nw .} ==> Br5c9 ≠ ns
B-single: Br5c9 = s
whip[1]: Br5c9{s .} ==> Nr5c9 ≠ 2
N-single: Nr5c9 = 1
whip[1]: Pr4c11{ns .} ==> Br3c10 ≠ w, Br3c10 ≠ nw
whip[1]: Br3c10{wne .} ==> Nr3c10 ≠ 1
whip[1]: Br4c8{se .} ==> Nr4c8 ≠ 3, Nr4c8 ≠ 1
N-single: Nr4c8 = 2
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Hr3c10{0 .} ==> Pr3c11 ≠ sw, Br2c10 ≠ sw, Br3c10 ≠ wne
P-single: Pr3c11 = ns
B-single: Br3c10 = ew
B-single: Br2c10 = ew
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 3
N-single: Nr3c10 = 2
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ wne
B-single: Br2c8 = swn
whip[1]: Pr4c8{o .} ==> Br4c7 ≠ n, Br4c7 ≠ nw
whip[1]: Br4c7{w .} ==> Nr4c7 ≠ 2
whip[1]: Pr4c7{ns .} ==> Br4c7 ≠ o, Br4c6 ≠ s
B-single: Br4c6 = se
B-single: Br4c7 = w
whip[1]: Br4c6{se .} ==> Nr4c6 ≠ 1, Pr5c7 ≠ sw
N-single: Nr4c6 = 2
P-single: Pr6c8 = nw
P-single: Pr5c7 = nw
whip[1]: Pr6c8{nw .} ==> Br5c7 ≠ ew, Br6c7 ≠ esw, Br6c8 ≠ ew
B-single: Br6c7 = swn
B-single: Br5c7 = se
whip[1]: Br6c7{swn .} ==> Pr6c7 ≠ ns
P-single: Pr6c7 = se
whip[1]: Pr6c7{se .} ==> Br5c6 ≠ wne
B-single: Br5c6 = nw
whip[1]: Br5c6{nw .} ==> Nr5c6 ≠ 3
N-single: Nr5c6 = 2
whip[1]: Br4c7{w .} ==> Nr4c7 ≠ 0
N-single: Nr4c7 = 1
whip[1]: Hr8c9{0 .} ==> Pr8c9 ≠ ne, Pr8c10 ≠ nw, Br7c9 ≠ esw, Br8c9 ≠ n
P-single: Pr8c10 = ne
B-single: Br8c9 = w
w[1]-1-in-r8c9-symmetric-ne-corner ==> Pr9c9 ≠ sw
P-single: Pr9c9 = ns
whip[1]: Pr8c10{ne .} ==> Br7c10 ≠ wne, Br8c10 ≠ se
B-single: Br8c10 = nes
B-single: Br7c10 = swn
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 2, Pr8c11 ≠ ns
N-single: Nr8c10 = 3
P-single: Pr8c11 = sw
whip[1]: Br8c9{w .} ==> Vr8c9 ≠ 0
V-single: Vr8c9 = 1

LOOP[26]: Vr8c9-Vr9c9-Hr10c8-Hr10c7-Hr10c6-Hr10c5-Vr10c5-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Vr9c10-Hr9c10-Vr8c11-Hr8c10-Vr7c10-Hr7c10-Vr6c11-Hr6c10-Hr6c9-Vr6c9- ==> Vr7c9 = 0
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
vertical-line-r8{c8 c9} ==> Ir8c8 = out
same-colour-in-{r8 r9}c8 ==> Hr9c8 = 0
different-colours-in-r8{c7 c8} ==> Hr8c8 = 1

LOOP[90]: Vr8c8-Hr9c7-Vr8c7-Hr8c6-Vr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Vr3c7-Hr3c6-Vr3c6-Hr4c5-Vr4c5-Hr5c4-Vr5c4-Vr6c4-Vr7c4-Hr8c4-Vr8c5-Hr9c4-Vr9c4-Hr10c3-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2-Vr8c3-Hr8c2-Hr8c1-Vr7c1-Vr6c1-Hr6c1-Vr6c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Vr1c3-Hr2c2-Vr2c2-Hr3c2-Vr3c3-Hr4c3-Vr3c4-Hr3c4-Vr2c5-Hr2c4-Vr1c4-Hr1c4-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Vr3c10-Vr2c10-Hr2c9-Hr2c8-Vr2c8-Hr3c8-Vr3c9-Vr4c9-Hr5c8-Vr5c8-Hr6c7-Vr6c7-Hr7c7- ==> Vr7c8 = 0
different-colours-in-{r7 r8}c8 ==> Hr8c8 = 1

LOOP[116]: Vr6c9-Hr6c9-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c10-Vr8c11-Hr9c10-Vr9c10-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Vr10c5-Hr10c5-Hr10c6-Hr10c7-Hr10c8-Vr9c9-Vr8c9-Hr8c8-Vr8c8-Hr9c7-Vr8c7-Hr8c6-Vr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Vr3c7-Hr3c6-Vr3c6-Hr4c5-Vr4c5-Hr5c4-Vr5c4-Vr6c4-Vr7c4-Hr8c4-Vr8c5-Hr9c4-Vr9c4-Hr10c3-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2-Vr8c3-Hr8c2-Hr8c1-Vr7c1-Vr6c1-Hr6c1-Vr6c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Vr1c3-Hr2c2-Vr2c2-Hr3c2-Vr3c3-Hr4c3-Vr3c4-Hr3c4-Vr2c5-Hr2c4-Vr1c4-Hr1c4-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Vr3c10-Vr2c10-Hr2c9-Hr2c8-Vr2c8-Hr3c8-Vr3c9-Vr4c9-Hr5c8-Vr5c8-Hr6c7-Vr6c7-Hr7c7- ==> Hr7c8 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXXOXXXX
XOOOXXXOOX
XXOXXOXXOX
XXXXOOXXOX
OOXOOXXOOO
XOXOXXOOXX
XXXOOXXXXO
OOXXOOXOXX
XXXOOOOOXO
XXOOXXXXXX

.———.———.   .———.———.   .———.———.———.———.
| 2     |   | 3     | 3 | 2             |
.   .———.   .———.   .———.   .———.———.   .
|   | 3       3 |           | 3   2 | 2 |
.   .———.   .———.   .———.   .———.   .   .
|       |   | 2   2 |   | 1   2 | 2 |   |
.   .   .———.   .———.   .   .   .   .   .
|     1       2 |       |       |   | 3 |
.———.———.   .———.   .———.   .———.   .———.
        | 2 | 2     |       | 2
.———.   .   .   .———.   .———.   .———.———.
| 3 | 3 |   |   | 3   1 | 3     | 2     |
.   .———.   .   .———.   .———.———.   .———.
| 2         |       |               | 3
.———.———.   .———.   .———.   .———.   .———.
      3 | 1     |     2 |   |   | 1     |
.———.———.   .———.   .   .———.   .   .———.
| 2   1   2 | 2   1   1   2     |   | 3
.   .   .———.   .———.———.———.———.   .———.
|       |     1 |                 1     |
.———.———.   .   .———.———.———.———.———.———.

init-time = 0.63s, solve-time = 41.56s, total-time = 42.18s
nb-facts=<Fact-192285>
Quasi-Loop max length = 116
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
