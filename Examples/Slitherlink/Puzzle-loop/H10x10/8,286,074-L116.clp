
(solve
10 10
. . 1 2 . . 3 . 2 3
2 . 3 3 . 2 . 1 . 1
. . 2 . . 3 . 2 . 2
1 . . . . . 1 . . 2
. . 2 3 . . . . 3 2
. . 2 . . . 2 0 . 2
. 1 . 3 . . . 2 . 3
. . 3 . 1 3 3 . . 1
2 . 1 . 2 . . . . 2
3 . 3 . . . 3 . 2 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 1 2 . . 3 . 2 3
2 . 3 3 . 2 . 1 . 1
. . 2 . . 3 . 2 . 2
1 . . . . . 1 . . 2
. . 2 3 . . . . 3 2
. . 2 . . . 2 0 . 2
. 1 . 3 . . . 2 . 3
. . 3 . 1 3 3 . . 1
2 . 1 . 2 . . . . 2
3 . 3 . . . 3 . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.583559036254883
start solution 0.596772909164429
entering BRT
w[0]-0-in-r6c8 ==> Hr7c8 = 0, Hr6c8 = 0, Vr6c9 = 0, Vr6c8 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-diagonal-3-0-in-{r5c9...r6c8} ==> Vr5c9 = 1, Hr6c9 = 1
w[1]-diagonal-3s-in-{r7c4...r8c3} ==> Vr7c5 = 1, Vr8c3 = 1, Hr9c3 = 1, Hr7c4 = 1, Vr6c5 = 0, Vr9c3 = 0, Hr9c2 = 0, Hr7c5 = 0
w[1]-diagonal-3-2+0-in-{r8c7...r7c8+r6c8} ==> Vr7c9 = 1, Vr8c7 = 1, Hr9c7 = 1, Hr7c9 = 1, Vr9c7 = 0, Hr9c6 = 0
w[1]-3-in-r8c6-hit-by-horiz-line-at-se ==> Vr8c6 = 1, Hr8c6 = 1
w[1]-3-in-r8c7-hit-by-horiz-line-at-nw ==> Vr8c8 = 1
w[1]-3-in-r7c10-hit-by-horiz-line-at-nw ==> Vr7c11 = 1, Hr8c10 = 1, Vr6c10 = 0
w[1]-adjacent-1-3-on-edge-in-{r8 r7}c10 ==> Vr8c10 = 0, Hr9c10 = 0
w[1]-adjacent-1-3-on-edge-in-{r2 r1}c10 ==> Vr2c10 = 0, Hr3c10 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r9 r8}c3 ==> Vr9c4 = 0, Hr10c3 = 0
w[0]-adjacent-3-in-r10c3-nolines-north ==> Vr10c4 = 1, Vr10c3 = 1, Hr11c3 = 1, Hr10c4 = 1, Hr10c2 = 1, Hr11c4 = 0, Hr11c2 = 0
w[1]-3-in-r10c1-hit-by-horiz-line-at-ne ==> Vr9c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r8{c5 c6} ==> Vr8c5 = 0, Hr9c5 = 0
w[1]-adjacent-1-2-on-edge-in-r1{c3 c4}-bkwd-diag-2s-3...r2c3 ==> Vr2c3 = 1, Hr3c3 = 1, Hr1c5 = 1
w[1]-diagonal-3-2-in-{r2c4...r3c3}-non-closed-sw-corner ==> Vr2c5 = 1, Hr4c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
w[1]-diagonal-3-2-in-{r2c3...r1c4}-non-closed-ne-corner ==> Hr1c4 = 1
w[1]-3-in-r2c3-hit-by-horiz-line-at-ne ==> Vr1c4 = 0
w[1]-3-in-r2c4-hit-by-horiz-line-at-sw ==> Vr3c4 = 0
w[1]-3-in-r10c3-closed-sw-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ne, Pr10c4 ≠ o
w[1]-3-in-r10c3-closed-se-corner ==> Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ o
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r8c7-closed-sw-corner ==> Pr8c8 ≠ ne
w[1]-3-in-r8c7-closed-se-corner ==> Pr8c7 ≠ se, Pr8c7 ≠ nw, Pr8c7 ≠ o
w[1]-3-in-r8c6-closed-ne-corner ==> Pr9c6 ≠ ne, Pr9c6 ≠ o
w[1]-3-in-r8c6-closed-nw-corner ==> Pr9c7 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ o
w[1]-3-in-r8c3-closed-sw-corner ==> Pr8c4 ≠ sw, Pr8c4 ≠ ne, Pr8c4 ≠ o
w[1]-3-in-r7c10-closed-se-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw, Pr7c10 ≠ o
w[1]-3-in-r5c9-closed-sw-corner ==> Pr5c10 ≠ sw, Pr5c10 ≠ ne, Pr5c10 ≠ o
w[1]-3-in-r1c10-closed-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-3-in-r7c4-isolated-at-se-corner ==> Hr8c4 = 1
w[1]-3-in-r8c3-hit-by-horiz-line-at-ne ==> Vr7c4 = 0
w[1]-3-in-r7c4-closed-se-corner ==> Pr7c4 ≠ se, Pr7c4 ≠ nw, Pr7c4 ≠ o
adjacent-3s-in-r2{c3 c4} ==> Vr2c4 = 1
w[1]-3-in-r2c3-closed-se-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-3-in-r2c4-closed-nw-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
entering level Loop with <Fact-93399>
entering level Col with <Fact-93483>
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-horizontal-line-{r8 r9}c10 ==> Ir9c10 = out
horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
vertical-line-r1{c10 c11} ==> Ir1c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
no-horizontal-line-{r10 r11}c4 ==> Ir10c4 = out
vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-horizontal-line-{r9 r10}c3 ==> Ir9c3 = in
no-vertical-line-r9{c2 c3} ==> Ir9c2 = in
no-vertical-line-r9{c1 c2} ==> Ir9c1 = in
no-horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
vertical-line-r8{c2 c3} ==> Ir8c3 = out
horizontal-line-{r9 r10}c2 ==> Ir10c2 = out
no-vertical-line-r9{c3 c4} ==> Ir9c4 = in
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
no-vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = in
vertical-line-r2{c2 c3} ==> Ir2c2 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
no-vertical-line-r3{c3 c4} ==> Ir3c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
vertical-line-r2{c4 c5} ==> Ir2c5 = in
horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-2-in-r9c1-open-se-corner ==> Hr9c1 = 1, Vr9c1 = 1, Vr8c1 = 0
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se
P-single: Pr10c1 = ns
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
different-colours-in-r8{c1 c2} ==> Hr8c2 = 1
same-colour-in-r9{c10 c11} ==> Vr9c11 = 0
w[1]-2-in-r9c10-open-ne-corner ==> Hr10c10 = 1, Vr9c10 = 1, Hr10c9 = 0, Vr10c10 = 0
w[1]-2-in-r10c9-open-ne-corner ==> Hr11c9 = 1, Vr10c9 = 1, Hr11c8 = 0
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
vertical-line-r10{c8 c9} ==> Ir10c9 = in
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
different-colours-in-{r8 r9}c9 ==> Hr9c9 = 1
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1
different-colours-in-{r10 r11}c10 ==> Hr11c10 = 1

LOOP[8]: Hr9c9-Vr9c10-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Vr10c9- ==> Vr9c9 = 0
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
no-vertical-line-r9{c7 c8} ==> Ir9c7 = in
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
no-horizontal-line-{r8 r9}c6 ==> Ir8c6 = in
vertical-line-r8{c5 c6} ==> Ir8c5 = out
no-vertical-line-r8{c4 c5} ==> Ir8c4 = out
horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
vertical-line-r7{c4 c5} ==> Ir7c5 = out
no-vertical-line-r7{c5 c6} ==> Ir7c6 = out
no-vertical-line-r7{c6 c7} ==> Ir7c7 = out
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = out
vertical-line-r8{c7 c8} ==> Ir8c8 = in
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
different-colours-in-r9{c5 c6} ==> Hr9c6 = 1
different-colours-in-r9{c4 c5} ==> Hr9c5 = 1
no-vertical-line-r10{c4 c5} ==> Ir10c5 = out
same-colour-in-{r10 r11}c5 ==> Hr11c5 = 0
different-colours-in-r8{c8 c9} ==> Hr8c9 = 1
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
w[1]-3-in-r7c4-hit-by-horiz-line-at-sw ==> Vr8c4 = 0
w[1]-3-in-r8c3-closed-nw-corner ==> Pr9c4 ≠ se, Pr9c4 ≠ nw, Pr9c4 ≠ o
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
different-colours-in-{r8 r9}c4 ==> Hr9c4 = 1
different-colours-in-{r9 r10}c8 ==> Hr10c8 = 1
w[1]-3-in-r10c7-hit-by-horiz-line-at-ne ==> Vr10c7 = 1, Hr11c7 = 1
w[1]-3-in-r10c7-closed-sw-corner ==> Pr10c8 ≠ sw, Pr10c8 ≠ ne, Pr10c8 ≠ o
no-horizontal-line-{r10 r11}c6 ==> Ir10c6 = out
vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
w[0]-adjacent-3-in-r10c7-nolines-north ==> Hr10c6 = 1
w[1]-3-in-r10c7-closed-se-corner ==> Pr10c7 ≠ se, Pr10c7 ≠ nw, Pr10c7 ≠ o

LOOP[20]: Vr8c8-Hr9c7-Vr8c7-Hr8c6-Vr8c6-Vr9c6-Hr10c6-Vr10c7-Hr11c7-Vr10c8-Hr10c8-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Vr9c10-Hr9c9-Vr8c9- ==> Hr8c8 = 0
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = in
no-horizontal-line-{r6 r7}c8 ==> Ir6c8 = in
no-vertical-line-r6{c7 c8} ==> Ir6c7 = in
no-vertical-line-r6{c8 c9} ==> Ir6c9 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r5 r6}c9 ==> Ir5c9 = out
vertical-line-r5{c8 c9} ==> Ir5c8 = in
horizontal-line-{r6 r7}c9 ==> Ir7c9 = out
same-colour-in-{r7 r8}c9 ==> Hr8c9 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r8 r7}c10 ==> Vr7c10 = 1
w[1]-2-in-r6c10-open-sw-corner ==> Hr6c10 = 1, Vr6c11 = 1, Vr5c11 = 0
w[1]-diagonal-3-2-in-{r5c9...r6c10}-non-closed-se-corner ==> Hr5c9 = 1, Vr4c9 = 0, Hr5c8 = 0
w[1]-3-in-r7c10-closed-sw-corner ==> Pr7c11 ≠ sw
w[3]-adjacent-3-2-in-r5{c9 c10}-noline-east ==> Vr4c10 = 0
P-single: Pr7c11 = ns
no-horizontal-line-{r4 r5}c8 ==> Ir4c8 = in
no-vertical-line-r4{c8 c9} ==> Ir4c9 = in
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
different-colours-in-{r4 r5}c10 ==> Hr5c10 = 1
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
Starting_init_links_with_<Fact-94850>
939 candidates, 8007 csp-links and 31637 links. Density = 7.18%
starting non trivial part of solution
Entering_level_W1_with_<Fact-174143>
whip[1]: Vr7c8{1 .} ==> Br7c8 ≠ se, Br7c7 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ ew, Pr8c8 ≠ se, Pr8c8 ≠ ew, Br7c7 ≠ n, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ sw, Br7c7 ≠ swn, Br7c8 ≠ ne, Br7c8 ≠ ns
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Pr8c8{nw .} ==> Br7c8 ≠ sw, Br8c7 ≠ wne, Br8c7 ≠ nes, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ swn, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c8 ≠ n
whip[1]: Br8c8{esw .} ==> Pr8c9 ≠ ew, Pr8c9 ≠ sw
whip[1]: Pr8c9{ns .} ==> Br7c8 ≠ nw, Br7c9 ≠ s, Br7c9 ≠ ne, Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ nes, Br8c9 ≠ s, Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ swn, Br8c9 ≠ wne, Br7c9 ≠ o, Br7c9 ≠ n, Br7c9 ≠ e, Br8c9 ≠ o, Br8c9 ≠ e
B-single: Br7c8 = ew
whip[1]: Br7c8{ew .} ==> Pr7c9 ≠ ew, Pr7c9 ≠ nw, Hr7c8 ≠ 1
whip[1]: Pr7c9{se .} ==> Br6c9 ≠ ne, Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ swn, Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ e
whip[1]: Br6c9{nes .} ==> Nr6c9 ≠ 0
whip[1]: Br8c9{nes .} ==> Nr8c9 ≠ 0
whip[1]: Br7c9{wne .} ==> Nr7c9 ≠ 0
whip[1]: Br8c7{swn .} ==> Pr8c7 ≠ ne, Pr8c7 ≠ ew, Pr9c7 ≠ ns, Pr9c7 ≠ ew, Pr9c7 ≠ sw, Pr9c8 ≠ o, Pr9c8 ≠ ne, Pr9c8 ≠ ns, Pr9c8 ≠ se
P-single: Pr9c7 = ne
whip[1]: Pr9c7{ne .} ==> Br9c7 ≠ o, Br9c6 ≠ n, Br8c6 ≠ esw, Br8c6 ≠ swn, Br8c6 ≠ nes, Br9c6 ≠ e, Br9c6 ≠ ne, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ esw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c6 ≠ nes, Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ w, Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne
B-single: Br8c6 = wne
whip[1]: Br8c6{wne .} ==> Pr9c6 ≠ ew, Pr9c6 ≠ se, Pr8c7 ≠ ns, Pr8c6 ≠ sw, Pr8c6 ≠ ew, Pr8c6 ≠ nw, Pr8c6 ≠ ns, Pr8c6 ≠ ne, Pr8c6 ≠ o
P-single: Pr8c6 = se
P-single: Pr8c7 = sw
w[1]-1-in-r8c5-asymmetric-ne-corner ==> Pr9c5 ≠ ew, Pr9c5 ≠ ns
whip[1]: Pr8c6{se .} ==> Br8c5 ≠ w, Br8c5 ≠ s, Br8c5 ≠ n, Br7c6 ≠ w, Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br7c5 ≠ s, Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c6 ≠ ne, Br7c6 ≠ nw, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ wne
B-single: Br8c5 = e
whip[1]: Br8c5{e .} ==> Pr9c5 ≠ ne, Pr8c5 ≠ ne, Pr8c5 ≠ ns, Pr8c5 ≠ se, Pr8c5 ≠ ew, Pr8c5 ≠ sw, Pr9c6 ≠ nw
P-single: Pr9c6 = ns
P-single: Pr9c5 = sw
whip[1]: Pr9c6{ns .} ==> Br9c6 ≠ o, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ nw, Br9c5 ≠ sw, Br9c6 ≠ s
whip[1]: Br9c6{sw .} ==> Pr10c6 ≠ ew, Pr10c6 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Nr9c6 ≠ 0, Nr9c6 ≠ 3
whip[1]: Pr10c7{sw .} ==> Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br9c6 ≠ w, Br10c6 ≠ o, Br10c6 ≠ e, Br10c6 ≠ s, Br10c6 ≠ w
B-single: Br9c6 = sw
whip[1]: Br9c6{sw .} ==> Nr9c6 ≠ 1, Pr10c6 ≠ ns
N-single: Nr9c6 = 2
P-single: Pr10c6 = ne
whip[1]: Pr10c6{ne .} ==> Br10c5 ≠ n, Br9c5 ≠ se, Br10c5 ≠ e, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c5 ≠ esw, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c5 ≠ nes, Br10c6 ≠ nw, Br10c6 ≠ swn, Br10c6 ≠ wne
B-single: Br9c5 = ew
whip[1]: Br9c5{ew .} ==> Pr10c5 ≠ ew, Pr10c5 ≠ se
whip[1]: Pr10c5{nw .} ==> Br9c4 ≠ w, Br9c4 ≠ ns, Br9c4 ≠ nw, Br9c4 ≠ sw, Br9c4 ≠ swn, Br10c4 ≠ w, Br10c4 ≠ ne, Br10c4 ≠ sw, Br10c4 ≠ wne, Br10c4 ≠ nes, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ s, Br10c4 ≠ o, Br10c4 ≠ s
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 0
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Br10c6{nes .} ==> Pr11c6 ≠ ne, Pr11c6 ≠ nw, Nr10c6 ≠ 0
whip[1]: Br10c5{sw .} ==> Nr10c5 ≠ 3
whip[1]: Br10c7{nes .} ==> Pr11c7 ≠ o, Pr11c7 ≠ nw, Pr11c8 ≠ o, Pr11c8 ≠ ne, Pr11c8 ≠ ew, Pr10c8 ≠ nw, Pr10c8 ≠ ew
P-single: Pr11c8 = nw
whip[1]: Pr11c8{nw .} ==> Br10c8 ≠ s, Br10c8 ≠ e, Br10c8 ≠ n, Br10c8 ≠ o, Br11c8 ≠ n, Br11c7 ≠ o, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn, Br10c8 ≠ nes
B-single: Br11c7 = n
B-single: Br11c8 = o
whip[1]: Br11c8{o .} ==> Pr11c9 ≠ nw, Pr11c9 ≠ ew
P-single: Pr9c11 = o
P-single: Pr10c10 = ne
P-single: Pr11c9 = ne
w[1]-1-in-r8c10-symmetric-se-corner ==> Pr8c10 ≠ se, Pr8c10 ≠ nw, Pr8c10 ≠ o
whip[1]: Pr9c11{o .} ==> Br8c10 ≠ e, Br8c10 ≠ s, Br9c10 ≠ ne, Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ ew
B-single: Br9c10 = sw
whip[1]: Br9c10{sw .} ==> Pr9c10 ≠ ew, Pr9c10 ≠ ne, Pr10c11 ≠ ns
P-single: Pr10c11 = sw
whip[1]: Pr10c11{sw .} ==> Br10c10 ≠ w, Br10c10 ≠ n, Br10c10 ≠ o, Br10c10 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ esw
B-single: Br10c10 = nes
whip[1]: Br10c10{nes .} ==> Nr10c10 ≠ 2, Nr10c10 ≠ 1, Nr10c10 ≠ 0, Pr11c10 ≠ ne, Pr11c11 ≠ o
N-single: Nr10c10 = 3
P-single: Pr11c11 = nw
P-single: Pr11c10 = ew
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ ne, Br11c9 ≠ o, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew
B-single: Br11c9 = n
whip[1]: Pr9c10{sw .} ==> Br8c9 ≠ esw, Br8c9 ≠ nes, Br9c9 ≠ nw, Br9c9 ≠ sw, Br9c9 ≠ swn, Br8c9 ≠ n, Br8c9 ≠ w, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ s, Br9c9 ≠ w, Br9c9 ≠ ns
whip[1]: Br9c9{nes .} ==> Nr9c9 ≠ 0
whip[1]: Br8c9{sw .} ==> Nr8c9 ≠ 1, Nr8c9 ≠ 3
N-single: Nr8c9 = 2
whip[1]: Pr9c9{ew .} ==> Br9c8 ≠ wne, Br9c8 ≠ nes, Br8c9 ≠ ne, Br9c8 ≠ ne
whip[1]: Pr8c10{ew .} ==> Br7c9 ≠ nw, Br7c9 ≠ esw, Br7c9 ≠ w
whip[1]: Br7c9{wne .} ==> Nr7c9 ≠ 1
whip[1]: Br8c10{w .} ==> Pr8c11 ≠ ns, Pr8c11 ≠ sw
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ swn, Br7c10 ≠ wne
whip[1]: Br7c10{nes .} ==> Pr8c11 ≠ o, Pr8c10 ≠ ns
P-single: Pr8c11 = nw
w[1]-1-in-r8c10-asymmetric-ne-corner ==> Pr9c10 ≠ ns
P-single: Pr9c10 = sw
whip[1]: Pr8c11{nw .} ==> Br8c10 ≠ w
B-single: Br8c10 = n
whip[1]: Pr9c10{sw .} ==> Br9c9 ≠ e, Br8c9 ≠ ew, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw
whip[1]: Br9c9{nes .} ==> Pr9c9 ≠ ns, Pr9c9 ≠ nw, Pr10c9 ≠ ne, Nr9c9 ≠ 1
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ esw, Br9c8 ≠ o, Br9c8 ≠ n, Br9c8 ≠ w, Br10c8 ≠ w
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 0, Nr10c8 ≠ 1
whip[1]: Br9c8{swn .} ==> Nr9c8 ≠ 0
whip[1]: Pr9c9{ew .} ==> Br8c8 ≠ se, Br8c8 ≠ esw
whip[1]: Br8c8{sw .} ==> Nr8c8 ≠ 3
whip[1]: Pr10c10{ne .} ==> Br9c9 ≠ nes, Br10c9 ≠ ns
B-single: Br10c9 = sw
whip[1]: Br10c9{sw .} ==> Pr10c9 ≠ ew
whip[1]: Pr10c9{sw .} ==> Br10c8 ≠ nw
whip[1]: Pr10c8{se .} ==> Br9c7 ≠ ns, Br9c7 ≠ nes, Br9c8 ≠ sw, Br9c8 ≠ swn, Br10c7 ≠ nes, Br9c8 ≠ e
B-single: Br10c7 = esw
whip[1]: Br10c7{esw .} ==> Pr10c7 ≠ ew, Pr11c7 ≠ ew
P-single: Pr11c7 = ne
P-single: Pr10c7 = sw
whip[1]: Pr11c7{ne .} ==> Br10c6 ≠ n, Br11c6 ≠ n, Br10c6 ≠ ns, Br10c6 ≠ nes
B-single: Br10c6 = ne
B-single: Br11c6 = o
whip[1]: Br10c6{ne .} ==> Nr10c6 ≠ 3, Nr10c6 ≠ 1, Pr11c6 ≠ ew
N-single: Nr10c6 = 2
P-single: Pr11c6 = o
whip[1]: Pr11c6{o .} ==> Br11c5 ≠ n, Br10c5 ≠ s, Br10c5 ≠ sw
B-single: Br11c5 = o
whip[1]: Br11c5{o .} ==> Pr11c5 ≠ ne, Pr11c5 ≠ ew
whip[1]: Pr11c5{nw .} ==> Br10c4 ≠ ns, Br10c4 ≠ ew, Br10c4 ≠ swn, Br10c4 ≠ e
whip[1]: Br10c5{w .} ==> Nr10c5 ≠ 2
whip[1]: Br9c8{ew .} ==> Nr9c8 ≠ 3
whip[1]: Br9c7{ne .} ==> Nr9c7 ≠ 0, Nr9c7 ≠ 3
whip[1]: Pr9c5{sw .} ==> Br9c4 ≠ e, Br8c4 ≠ ne, Br8c4 ≠ w, Br8c4 ≠ e, Br8c4 ≠ n, Br8c4 ≠ o, Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ ew, Br8c4 ≠ esw, Br8c4 ≠ wne, Br8c4 ≠ nes, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ esw
whip[1]: Br9c4{nes .} ==> Pr9c4 ≠ ns, Pr9c4 ≠ sw, Nr9c4 ≠ 1
whip[1]: Pr9c4{ew .} ==> Br8c3 ≠ esw, Br8c3 ≠ nes, Br9c4 ≠ wne, Br9c3 ≠ e
whip[1]: Br9c3{w .} ==> Pr10c3 ≠ ne, Pr10c4 ≠ ns, Pr10c4 ≠ nw, Pr9c3 ≠ se
whip[1]: Pr10c4{ew .} ==> Br10c3 ≠ wne, Br10c3 ≠ nes, Br10c4 ≠ se, Br10c4 ≠ esw, Br9c4 ≠ ne
B-single: Br9c4 = nes
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 2, Pr10c5 ≠ ns
N-single: Nr9c4 = 3
P-single: Pr10c5 = nw
whip[1]: Pr10c5{nw .} ==> Br10c5 ≠ w
B-single: Br10c5 = o
whip[1]: Br10c5{o .} ==> Pr11c5 ≠ nw, Nr10c5 ≠ 1
N-single: Nr10c5 = 0
P-single: Pr11c5 = o
whip[1]: Pr11c5{o .} ==> Br11c4 ≠ n
B-single: Br11c4 = o
whip[1]: Br11c4{o .} ==> Pr11c4 ≠ ne, Pr11c4 ≠ ew
whip[1]: Pr11c4{nw .} ==> Br10c3 ≠ swn
B-single: Br10c3 = esw
whip[1]: Br10c3{esw .} ==> Pr10c4 ≠ ew, Pr10c3 ≠ ew, Pr11c4 ≠ o, Pr11c3 ≠ ew, Pr11c3 ≠ nw, Pr11c3 ≠ o
P-single: Pr11c3 = ne
P-single: Pr11c4 = nw
P-single: Pr10c4 = se
w[1]-1-in-r9c3-symmetric-se-corner ==> Pr9c3 ≠ nw, Pr9c3 ≠ o
whip[1]: Pr11c3{ne .} ==> Br10c2 ≠ n, Br10c2 ≠ o, Br11c3 ≠ o, Br11c2 ≠ n, Br10c2 ≠ s, Br10c2 ≠ w, Br10c2 ≠ ns, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c2 ≠ sw, Br10c2 ≠ esw, Br10c2 ≠ swn, Br10c2 ≠ nes
B-single: Br11c2 = o
B-single: Br11c3 = n
whip[1]: Br11c2{o .} ==> Pr11c2 ≠ ne, Pr11c2 ≠ ew
whip[1]: Pr11c2{nw .} ==> Br10c1 ≠ swn
B-single: Br10c1 = esw
whip[1]: Br10c1{esw .} ==> Pr10c2 ≠ ew, Pr11c2 ≠ o, Pr11c1 ≠ o
P-single: Pr11c1 = ne
P-single: Pr11c2 = nw
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{nw .} ==> Br10c2 ≠ e, Br10c2 ≠ ne
whip[1]: Br10c2{wne .} ==> Nr10c2 ≠ 0, Nr10c2 ≠ 1
whip[1]: Pr10c2{se .} ==> Br9c1 ≠ ns, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c2 ≠ ne, Br9c2 ≠ sw, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ e
whip[1]: Br9c2{nes .} ==> Nr9c2 ≠ 0
whip[1]: Pr11c4{nw .} ==> Br10c4 ≠ n
B-single: Br10c4 = nw
whip[1]: Br10c4{nw .} ==> Nr10c4 ≠ 3, Nr10c4 ≠ 1
N-single: Nr10c4 = 2
whip[1]: Pr10c4{se .} ==> Br9c3 ≠ s
whip[1]: Pr9c3{sw .} ==> Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ esw, Br8c2 ≠ nes, Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ w
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 0
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ nes, Br9c2 ≠ w
whip[1]: Br8c3{wne .} ==> Pr8c3 ≠ o, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Pr8c3 ≠ ew, Pr8c3 ≠ sw, Pr8c4 ≠ ns, Pr8c4 ≠ se, Pr9c3 ≠ ew, Pr9c3 ≠ sw
P-single: Pr8c3 = se
w[1]-1-in-r7c2-symmetric-se-corner ==> Pr7c2 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ o
whip[1]: Pr8c3{se .} ==> Br8c2 ≠ s, Br7c3 ≠ w, Br7c3 ≠ e, Br7c3 ≠ n, Br7c3 ≠ o, Br7c2 ≠ s, Br7c2 ≠ e, Br7c3 ≠ ne, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ sw, Br8c2 ≠ swn, Br8c2 ≠ wne
whip[1]: Br8c2{ew .} ==> Pr8c2 ≠ ne, Pr8c2 ≠ se, Pr8c2 ≠ ew, Pr9c2 ≠ se, Pr9c2 ≠ ew, Nr8c2 ≠ 3
whip[1]: Pr9c2{nw .} ==> Br8c1 ≠ w, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ sw, Br8c1 ≠ swn, Br9c1 ≠ ne, Br9c2 ≠ ns, Br9c2 ≠ wne, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ s, Br8c2 ≠ e
B-single: Br8c2 = ew
whip[1]: Br8c2{ew .} ==> Nr8c2 ≠ 1, Pr8c2 ≠ nw, Pr8c2 ≠ o
N-single: Nr8c2 = 2
whip[1]: Pr8c2{sw .} ==> Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ esw, Br7c1 ≠ nes, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ w
whip[1]: Br7c1{wne .} ==> Nr7c1 ≠ 0
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Br9c2{ew .} ==> Nr9c2 ≠ 3
whip[1]: Br9c1{ew .} ==> Pr9c1 ≠ ne
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ esw, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 1
whip[1]: Br7c3{nes .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se, Pr7c3 ≠ sw, Nr7c3 ≠ 0
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ esw, Br6c1 ≠ nes, Br6c1 ≠ o, Br6c1 ≠ n, Br6c1 ≠ w
whip[1]: Br6c1{wne .} ==> Nr6c1 ≠ 0
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ esw, Br7c4 ≠ swn, Br8c3 ≠ wne, Br8c4 ≠ sw, Br8c4 ≠ swn
B-single: Br8c3 = swn
whip[1]: Br8c3{swn .} ==> Pr9c4 ≠ ne, Pr9c3 ≠ ns
P-single: Pr9c3 = ne
P-single: Pr9c4 = ew
w[1]-1-in-r9c3-asymmetric-ne-corner ==> Pr10c3 ≠ ns
P-single: Pr10c3 = sw
whip[1]: Pr9c3{ne .} ==> Br9c2 ≠ ew, Br9c3 ≠ w
B-single: Br9c3 = n
B-single: Br9c2 = s
whip[1]: Br9c2{s .} ==> Nr9c2 ≠ 2, Pr10c2 ≠ ns, Pr9c2 ≠ ns
N-single: Nr9c2 = 1
P-single: Pr9c1 = se
P-single: Pr9c2 = nw
P-single: Pr10c2 = se
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ew, Br8c1 ≠ wne, Br9c1 ≠ ew
B-single: Br9c1 = nw
whip[1]: Br8c1{nes .} ==> Pr8c1 ≠ ns, Pr8c1 ≠ se
whip[1]: Pr8c1{ne .} ==> Br7c1 ≠ s, Br7c1 ≠ ns, Br7c1 ≠ ew, Br7c1 ≠ wne
whip[1]: Pr10c2{se .} ==> Br10c2 ≠ ew
B-single: Br10c2 = wne
whip[1]: Br10c2{wne .} ==> Nr10c2 ≠ 2
N-single: Nr10c2 = 3
whip[1]: Br8c4{ns .} ==> Nr8c4 ≠ 0, Nr8c4 ≠ 3
whip[1]: Br7c4{nes .} ==> Pr7c4 ≠ ns, Pr7c4 ≠ sw, Pr7c5 ≠ o, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Pr7c5 ≠ se, Pr7c5 ≠ ew, Pr8c5 ≠ o
P-single: Pr8c5 = nw
P-single: Pr7c5 = sw
whip[1]: Pr8c5{nw .} ==> Br8c4 ≠ s, Br7c5 ≠ n, Br7c5 ≠ o, Br7c4 ≠ wne
B-single: Br7c4 = nes
B-single: Br8c4 = ns
whip[1]: Br7c4{nes .} ==> Pr8c4 ≠ nw
P-single: Pr8c4 = ew
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ se, Br7c3 ≠ nes
whip[1]: Br7c3{ns .} ==> Nr7c3 ≠ 3
whip[1]: Br8c4{ns .} ==> Nr8c4 ≠ 1
N-single: Nr8c4 = 2
whip[1]: Br7c5{nw .} ==> Pr7c6 ≠ ns, Pr7c6 ≠ se, Pr7c6 ≠ sw, Nr7c5 ≠ 0, Nr7c5 ≠ 3
whip[1]: Pr7c5{sw .} ==> Br6c5 ≠ ns, Br6c5 ≠ w, Br6c5 ≠ s, Br6c4 ≠ ne, Br6c4 ≠ w, Br6c4 ≠ e, Br6c4 ≠ n, Br6c4 ≠ o, Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ ew, Br6c4 ≠ esw, Br6c4 ≠ wne, Br6c4 ≠ nes, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ nes, Br7c5 ≠ nw
B-single: Br7c5 = w
whip[1]: Br7c5{w .} ==> Nr7c5 ≠ 2, Pr7c6 ≠ nw, Pr7c6 ≠ ew
N-single: Nr7c5 = 1
whip[1]: Pr7c6{ne .} ==> Br6c6 ≠ s, Br6c6 ≠ w, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ wne, Br6c6 ≠ nes
whip[1]: Br6c5{ne .} ==> Pr6c5 ≠ ns, Pr6c5 ≠ se, Nr6c5 ≠ 3, Pr6c5 ≠ sw
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Pr7c4{ew .} ==> Br6c3 ≠ nw, Br6c3 ≠ se
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Pr8c7{sw .} ==> Br7c6 ≠ se, Br7c6 ≠ nes, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ esw, Br7c7 ≠ wne, Br7c7 ≠ nes, Br8c7 ≠ swn
B-single: Br8c7 = esw
whip[1]: Br8c7{esw .} ==> Pr9c8 ≠ sw, Pr9c8 ≠ ew, Pr8c8 ≠ nw
P-single: Pr8c8 = ns
P-single: Pr9c8 = nw
whip[1]: Pr8c8{ns .} ==> Br8c8 ≠ e, Br8c8 ≠ o, Br8c8 ≠ s
whip[1]: Br8c8{sw .} ==> Nr8c8 ≠ 0
whip[1]: Pr9c8{nw .} ==> Br8c8 ≠ sw, Br9c7 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ ew
B-single: Br9c8 = s
B-single: Br9c7 = n
whip[1]: Br9c8{s .} ==> Nr9c8 ≠ 2, Pr10c9 ≠ ns, Pr10c8 ≠ ns, Pr9c9 ≠ se, Pr9c9 ≠ ew
N-single: Nr9c8 = 1
P-single: Pr8c10 = ne
P-single: Pr9c9 = ne
P-single: Pr10c8 = se
P-single: Pr10c9 = sw
whip[1]: Pr8c10{ne .} ==> Br7c9 ≠ sw, Br7c9 ≠ swn, Br7c10 ≠ nes, Br8c9 ≠ ns
B-single: Br8c9 = sw
B-single: Br7c10 = esw
whip[1]: Br8c9{sw .} ==> Pr8c9 ≠ ne
P-single: Pr8c9 = ns
whip[1]: Pr8c9{ns .} ==> Br8c8 ≠ w
B-single: Br8c8 = ew
whip[1]: Br8c8{ew .} ==> Nr8c8 ≠ 1
N-single: Nr8c8 = 2
whip[1]: Br7c10{esw .} ==> Pr7c10 ≠ ew
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ nes, Br6c10 ≠ se, Br6c10 ≠ sw, Br6c9 ≠ w, Br6c10 ≠ ns
whip[1]: Pr9c9{ne .} ==> Br9c9 ≠ wne
B-single: Br9c9 = ne
whip[1]: Br9c9{ne .} ==> Nr9c9 ≠ 3
N-single: Nr9c9 = 2
whip[1]: Pr10c8{se .} ==> Br10c8 ≠ ew
B-single: Br10c8 = wne
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 2
N-single: Nr10c8 = 3
whip[1]: Br9c7{n .} ==> Nr9c7 ≠ 2
N-single: Nr9c7 = 1
whip[1]: Br7c7{ne .} ==> Pr7c7 ≠ ns, Pr7c7 ≠ se, Nr7c7 ≠ 3
whip[1]: Pr7c7{ew .} ==> Br6c6 ≠ o, Br6c6 ≠ n, Br6c7 ≠ ne
whip[1]: Br6c6{swn .} ==> Nr6c6 ≠ 0
whip[1]: Br7c6{ns .} ==> Nr7c6 ≠ 3
whip[1]: Pr7c8{sw .} ==> Br6c7 ≠ nw, Br6c7 ≠ se
whip[1]: Hr7c7{1 .} ==> Br7c7 ≠ e, Pr7c7 ≠ nw, Pr7c8 ≠ ns, Br6c7 ≠ ew
P-single: Pr7c8 = sw
B-single: Br7c7 = ne
whip[1]: Pr7c8{sw .} ==> Vr6c8 ≠ 1
whip[1]: Br7c7{ne .} ==> Nr7c7 ≠ 1
N-single: Nr7c7 = 2
whip[1]: Br6c7{sw .} ==> Pr6c8 ≠ ns, Pr6c8 ≠ se
whip[1]: Pr7c7{ew .} ==> Br6c6 ≠ esw
whip[1]: Vr4c11{1 .} ==> Br4c10 ≠ sw, Br4c11 ≠ o, Pr4c11 ≠ nw, Br4c10 ≠ ns, Br4c10 ≠ nw
P-single: Pr4c11 = ns
B-single: Br4c11 = w
whip[1]: Pr4c11{ns .} ==> Vr3c11 ≠ 0, Hr4c10 ≠ 1, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ sw, Br4c10 ≠ ne
H-single: Hr4c10 = 0
V-single: Vr3c11 = 1
vertical-line-r3{c10 c11} ==> Ir3c10 = in
no-horizontal-line-{r2 r3}c10 ==> Ir2c10 = in
no-vertical-line-r2{c9 c10} ==> Ir2c9 = in
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
w[1]-3-in-r1c10-hit-by-verti-line-at-se ==> Vr1c10 = 1
w[1]-3-in-r1c10-closed-nw-corner ==> Pr2c11 ≠ nw, Pr2c11 ≠ o
no-horizontal-line-{r0 r1}c9 ==> Ir1c9 = out
different-colours-in-{r1 r2}c9 ==> Hr2c9 = 1
whip[1]: Hr4c10{0 .} ==> Pr4c10 ≠ ew
whip[1]: Pr4c10{nw .} ==> Vr3c10 ≠ 0, Br3c9 ≠ w, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ sw, Br3c9 ≠ swn, Br3c10 ≠ ne, Br4c9 ≠ w, Br4c9 ≠ ne, Br4c9 ≠ sw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br3c9 ≠ o, Br3c9 ≠ n, Br3c9 ≠ s, Br4c9 ≠ o, Br4c9 ≠ s
V-single: Vr3c10 = 1
B-single: Br3c10 = ew
vertical-line-r3{c9 c10} ==> Ir3c9 = out
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-{r2 r3}c9 ==> Hr3c9 = 1
whip[1]: Vr3c10{1 .} ==> Pr3c10 ≠ ne, Pr3c10 ≠ ew
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ nes, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ w, Br2c10 ≠ s
whip[1]: Br2c10{w .} ==> Pr3c11 ≠ nw, Pr2c11 ≠ sw
P-single: Pr2c11 = ns
P-single: Pr3c11 = ns
w[1]-1-in-r2c10-asymmetric-se-corner ==> Pr2c10 ≠ ew, Pr2c10 ≠ ns
P-single: Pr1c9 = o
P-single: Pr2c10 = nw
w[1]-1-in-r2c8-asymmetric-ne-corner ==> Pr3c8 ≠ ew, Pr3c8 ≠ se, Pr3c8 ≠ nw, Pr3c8 ≠ ns
w[1]-1-in-r2c10-asymmetric-ne-corner ==> Pr3c10 ≠ ns
P-single: Pr3c10 = sw
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ n, Br1c10 ≠ nes, Br2c10 ≠ w
B-single: Br2c10 = e
B-single: Br1c10 = wne
whip[1]: Br1c10{wne .} ==> Pr1c10 ≠ ew, Pr1c11 ≠ o
P-single: Pr1c11 = sw
P-single: Pr1c10 = se
whip[1]: Pr1c10{se .} ==> Br1c9 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ nw, Br1c9 ≠ sw
whip[1]: Pr1c9{o .} ==> Vr1c9 ≠ 1, Hr1c8 ≠ 1, Br1c8 ≠ n, Br1c8 ≠ e, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ ew
H-single: Hr1c8 = 0
V-single: Vr1c9 = 0
B-single: Br1c9 = se
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s, Pr1c8 ≠ se, Pr1c8 ≠ ew
w[1]-3-in-r1c7-symmetric-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
B-single: Br0c8 = o
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
whip[1]: Vr1c8{1 .} ==> Br1c8 ≠ o, Pr1c8 ≠ o, Pr2c8 ≠ o, Pr2c8 ≠ se, Pr2c8 ≠ ew, Pr2c8 ≠ sw, Br1c7 ≠ swn, Br1c8 ≠ s
P-single: Pr1c8 = sw
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ esw
whip[1]: Br1c7{nes .} ==> Pr1c7 ≠ o, Pr1c7 ≠ sw
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ sw, Br1c6 ≠ wne, Br1c6 ≠ nes, Br1c6 ≠ o, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ ne
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 0
whip[1]: Br1c8{sw .} ==> Pr2c9 ≠ ns, Pr2c9 ≠ nw, Nr1c8 ≠ 0, Nr1c8 ≠ 3
whip[1]: Pr2c9{ew .} ==> Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c8 ≠ s, Br2c8 ≠ w, Br2c9 ≠ e, Br2c9 ≠ s
whip[1]: Br2c9{wne .} ==> Nr2c9 ≠ 0, Nr2c9 ≠ 1
whip[1]: Br2c8{e .} ==> Hr3c8 ≠ 1, Vr2c8 ≠ 1, Pr3c8 ≠ ne, Pr2c8 ≠ ns, Pr3c9 ≠ nw, Pr3c9 ≠ ew, Pr3c9 ≠ sw
V-single: Vr2c8 = 0
H-single: Hr3c8 = 0
whip[1]: Vr2c8{0 .} ==> Br2c7 ≠ e, Br2c7 ≠ ne, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ esw, Br2c7 ≠ wne, Br2c7 ≠ nes
whip[1]: Hr3c8{0 .} ==> Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ nw
whip[1]: Pr4c9{sw .} ==> Br4c9 ≠ nw, Br4c9 ≠ swn
whip[1]: Br4c9{esw .} ==> Nr4c9 ≠ 0
whip[1]: Pr3c8{sw .} ==> Br3c7 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c7 ≠ n, Br3c7 ≠ e, Br3c7 ≠ ns
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Pr3c6{ew .} ==> Br2c6 ≠ sw, Br3c5 ≠ sw, Br3c5 ≠ wne, Br3c5 ≠ nes, Br2c6 ≠ ne, Br3c5 ≠ o, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ne
whip[1]: Br3c5{swn .} ==> Nr3c5 ≠ 0
whip[1]: Pr2c10{nw .} ==> Br2c9 ≠ ne, Br2c9 ≠ wne
whip[1]: Br2c9{swn .} ==> Pr3c9 ≠ o, Pr3c9 ≠ ns
whip[1]: Pr3c9{se .} ==> Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ e
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ ne, Nr3c9 ≠ 0, Nr3c9 ≠ 1
whip[1]: Pr4c9{sw .} ==> Br4c8 ≠ sw, Br4c8 ≠ o, Br4c8 ≠ s, Br4c8 ≠ w
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 0
whip[1]: Hr4c9{1 .} ==> Pr4c9 ≠ ns, Pr4c9 ≠ nw, Pr4c9 ≠ sw, Pr4c10 ≠ ns, Br3c9 ≠ ne, Br3c9 ≠ wne, Br4c9 ≠ e, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ esw
P-single: Pr3c8 = sw
P-single: Pr5c11 = nw
P-single: Pr4c10 = nw
P-single: Pr4c9 = ew
B-single: Br3c9 = nes
whip[1]: Pr3c8{sw .} ==> Br3c7 ≠ w, Br3c7 ≠ s, Br3c7 ≠ o, Br2c7 ≠ w, Br2c7 ≠ n, Br2c7 ≠ o, Vr3c8 ≠ 0, Hr3c7 ≠ 0, Br2c7 ≠ nw, Br3c7 ≠ sw, Br3c8 ≠ se
H-single: Hr3c7 = 1
V-single: Vr3c8 = 1
w[1]-3-in-r3c6-hit-by-horiz-line-at-ne ==> Vr3c6 = 1, Hr4c6 = 1, Vr2c7 = 0
w[1]-3-in-r3c6-closed-sw-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ ne, Pr3c7 ≠ o
whip[1]: Hr3c7{1 .} ==> Pr3c7 ≠ ns
whip[1]: Pr3c7{ew .} ==> Br2c6 ≠ se, Br2c6 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes
whip[1]: Br3c6{swn .} ==> Pr3c6 ≠ nw, Pr3c6 ≠ ew, Pr4c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Pr4c6 ≠ se, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ se
P-single: Pr4c6 = ne
whip[1]: Pr4c6{ne .} ==> Br4c6 ≠ o, Br4c5 ≠ n, Br3c5 ≠ n, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ esw, Br3c5 ≠ swn, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Br4c6{nes .} ==> Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Nr4c6 ≠ 0
whip[1]: Br4c5{sw .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ se, Pr4c5 ≠ ew, Nr4c5 ≠ 3
whip[1]: Br3c5{ew .} ==> Hr3c5 ≠ 1, Pr3c5 ≠ ne, Pr3c5 ≠ ew, Nr3c5 ≠ 3
H-single: Hr3c5 = 0
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
whip[1]: Hr3c5{0 .} ==> Br2c5 ≠ s, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ nes
whip[1]: Vr3c5{1 .} ==> Br3c4 ≠ o, Pr4c5 ≠ o, Pr4c5 ≠ sw, Br3c4 ≠ n, Br3c4 ≠ s, Br3c4 ≠ w, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ sw, Br3c4 ≠ swn, Br3c5 ≠ e
B-single: Br3c5 = ew
whip[1]: Br3c5{ew .} ==> Nr3c5 ≠ 1
N-single: Nr3c5 = 2
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c5{nw .} ==> Br4c4 ≠ w, Br4c4 ≠ ne, Br4c4 ≠ sw, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c4 ≠ o, Br4c4 ≠ s
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 0
whip[1]: Pr3c5{sw .} ==> Br2c4 ≠ esw, Br2c4 ≠ nes
whip[1]: Br2c4{wne .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c5 ≠ ne, Pr2c5 ≠ ns, Pr3c4 ≠ se, Pr3c4 ≠ ew
P-single: Pr2c4 = se
w[1]-1-in-r1c3-symmetric-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
whip[1]: Pr2c4{se .} ==> Br1c3 ≠ s, Br1c3 ≠ e, Br1c4 ≠ ne, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes
B-single: Br2c3 = esw
whip[1]: Br2c3{esw .} ==> Pr3c4 ≠ ns, Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr2c3 ≠ ew, Pr2c3 ≠ ne
P-single: Pr3c3 = ne
P-single: Pr3c4 = nw
whip[1]: Pr3c3{ne .} ==> Br3c2 ≠ n, Br2c2 ≠ n, Br2c2 ≠ o, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ nes, Br3c2 ≠ e, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw
whip[1]: Br3c3{ns .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ nw
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ sw, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br3c3 ≠ ne, Br4c2 ≠ o, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ ne, Br4c3 ≠ o, Br4c3 ≠ e, Br4c3 ≠ s, Br4c3 ≠ w
B-single: Br3c3 = ns
whip[1]: Br3c3{ns .} ==> Pr4c4 ≠ ns, Pr4c4 ≠ ne
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ wne, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ swn, Br4c4 ≠ e
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br3c2{sw .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ se, Pr3c2 ≠ ew, Nr3c2 ≠ 3
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ swn, Br3c4 ≠ ne, Br3c4 ≠ nes
B-single: Br2c4 = wne
whip[1]: Br2c4{wne .} ==> Pr3c5 ≠ sw, Pr2c5 ≠ ew
P-single: Pr2c5 = sw
P-single: Pr3c5 = ns
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ ne, Br2c5 ≠ e, Br2c5 ≠ n, Br2c5 ≠ o, Br1c5 ≠ ns, Br1c5 ≠ w, Br1c5 ≠ s, Br1c4 ≠ se, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ wne
B-single: Br1c4 = ns
whip[1]: Br1c4{ns .} ==> Pr1c5 ≠ se, Pr1c4 ≠ sw
P-single: Pr1c4 = ew
P-single: Pr1c5 = ew
w[1]-1-in-r1c3-asymmetric-ne-corner ==> Pr2c3 ≠ ns
P-single: Pr2c3 = sw
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ w
B-single: Br1c3 = n
whip[1]: Br1c3{n .} ==> Vr1c3 ≠ 1, Pr1c3 ≠ sw
V-single: Vr1c3 = 0
w[0]-adjacent-3-in-r2c3-nolines-north ==> Hr2c2 = 1
P-single: Pr1c3 = ew
horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
whip[1]: Vr1c3{0 .} ==> Br1c2 ≠ e, Br1c2 ≠ ne, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ wne, Br1c2 ≠ nes
whip[1]: Hr2c2{1 .} ==> Br1c2 ≠ o, Pr2c2 ≠ o, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Pr2c2 ≠ sw, Br1c2 ≠ n, Br1c2 ≠ w, Br1c2 ≠ nw, Br2c2 ≠ e, Br2c2 ≠ ew
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 1
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Pr2c2{ew .} ==> Br1c1 ≠ se, Br2c1 ≠ ne
whip[1]: Br2c1{sw .} ==> Pr3c1 ≠ o
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ se, Br3c1 ≠ o, Br3c1 ≠ e, Br3c1 ≠ s
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ s, Br1c2 ≠ sw
whip[1]: Br1c2{swn .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Nr1c2 ≠ 1
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Pr2c1 ≠ se, Nr1c1 ≠ 0
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ nw
whip[1]: Br2c1{sw .} ==> Pr3c2 ≠ o
whip[1]: Pr3c2{sw .} ==> Br3c1 ≠ sw, Br3c1 ≠ w
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ e, Br1c5 ≠ o
whip[1]: Br1c5{ne .} ==> Pr1c6 ≠ o, Pr1c6 ≠ se, Nr1c5 ≠ 0, Nr1c5 ≠ 3, Pr2c6 ≠ ew, Pr2c6 ≠ sw
whip[1]: Pr2c6{se .} ==> Br1c6 ≠ n, Br1c6 ≠ e
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 1
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ se, Br1c6 ≠ swn
whip[1]: Br1c6{esw .} ==> Pr2c7 ≠ se
whip[1]: Br2c5{ew .} ==> Nr2c5 ≠ 0, Nr2c5 ≠ 3
whip[1]: Br3c4{se .} ==> Nr3c4 ≠ 3
whip[1]: Br2c7{ns .} ==> Pr2c7 ≠ ns, Nr2c7 ≠ 0, Nr2c7 ≠ 3
whip[1]: Pr2c7{ew .} ==> Hr2c6 ≠ 0, Br1c6 ≠ ew
H-single: Hr2c6 = 1
whip[1]: Hr2c6{1 .} ==> Pr2c6 ≠ ns
whip[1]: Vr3c8{1 .} ==> Pr4c8 ≠ se, Pr4c8 ≠ ew
whip[1]: Pr4c8{nw .} ==> Br4c8 ≠ nw, Br4c8 ≠ swn, Br4c8 ≠ wne
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0, Nr3c7 ≠ 1
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ ew, Br5c10 ≠ ne, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ sw
B-single: Br4c10 = se
whip[1]: Br4c10{se .} ==> Pr5c10 ≠ ns
P-single: Pr5c10 = ew
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ n, Br5c9 ≠ esw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c10 ≠ nw
B-single: Br5c10 = ns
B-single: Br5c9 = swn
B-single: Br4c9 = ns
whip[1]: Br5c10{ns .} ==> Pr6c10 ≠ ns, Pr6c11 ≠ ns
P-single: Pr7c10 = sw
P-single: Pr6c11 = sw
P-single: Pr6c10 = ew
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ ew, Br6c9 ≠ wne, Br6c10 ≠ nw, Br6c10 ≠ ew, Br7c9 ≠ ew
B-single: Br7c9 = wne
B-single: Br6c10 = ne
whip[1]: Br7c9{wne .} ==> Nr7c9 ≠ 2, Pr7c9 ≠ ns
N-single: Nr7c9 = 3
P-single: Pr7c9 = se
whip[1]: Pr7c9{se .} ==> Vr6c9 ≠ 1
whip[1]: Br6c9{ns .} ==> Pr6c9 ≠ ns, Pr6c9 ≠ se, Nr6c9 ≠ 3, Pr6c9 ≠ sw
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ s
B-single: Br6c9 = ns
whip[1]: Br6c9{ns .} ==> Nr6c9 ≠ 1, Pr6c9 ≠ nw, Pr6c9 ≠ o
N-single: Nr6c9 = 2
whip[1]: Pr6c9{ew .} ==> Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br5c8 ≠ nes, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ w
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Br5c9{swn .} ==> Pr6c9 ≠ ew, Pr5c9 ≠ sw, Pr5c9 ≠ ew, Pr5c9 ≠ nw, Pr5c9 ≠ ns, Pr5c9 ≠ ne, Pr5c9 ≠ o
P-single: Pr5c9 = se
P-single: Pr6c9 = ne
whip[1]: Pr5c9{se .} ==> Br5c8 ≠ s, Br4c8 ≠ e, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ esw, Br4c8 ≠ nes, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ sw, Br5c8 ≠ swn, Br5c8 ≠ wne
B-single: Br4c8 = n
whip[1]: Br4c8{n .} ==> Vr4c8 ≠ 1, Hr4c8 ≠ 0, Pr4c8 ≠ ns, Pr4c8 ≠ nw, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c8 ≠ nw, Pr5c8 ≠ se, Pr5c8 ≠ ew, Nr4c8 ≠ 2, Nr4c8 ≠ 3
H-single: Hr4c8 = 1
V-single: Vr4c8 = 0
N-single: Nr4c8 = 1
P-single: Pr3c9 = ne
P-single: Pr4c8 = ne
w[1]-1-in-r4c7-symmetric-ne-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ o
w[1]-1-in-r2c8-asymmetric-se-corner ==> Pr2c8 ≠ ne
w[1]-3-in-r1c7-symmetric-se-corner ==> Hr2c7 = 1
w[1]-3-in-r1c7-closed-se-corner ==> Pr1c7 ≠ se
P-single: Pr1c7 = ew
P-single: Pr2c8 = nw
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = out
no-vertical-line-r2{c7 c8} ==> Ir2c7 = out
no-vertical-line-r2{c6 c7} ==> Ir2c6 = out
horizontal-line-{r1 r2}c6 ==> Ir1c6 = in
horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = in
vertical-line-r3{c7 c8} ==> Ir3c8 = out
same-colour-in-r3{c8 c9} ==> Vr3c9 = 0
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
w[1]-3-in-r3c6-isolated-at-se-corner ==> Vr3c7 = 1
w[1]-2-in-r2c6-open-se-corner ==> Vr2c6 = 1, Vr1c6 = 0
w[1]-3-in-r3c6-closed-se-corner ==> Pr3c6 ≠ se
P-single: Pr3c6 = ns
same-colour-in-r1{c6 c7} ==> Vr1c7 = 0
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
different-colours-in-r2{c8 c9} ==> Hr2c9 = 1
whip[1]: Hr4c8{1 .} ==> Br3c8 ≠ ew
B-single: Br3c8 = sw
whip[1]: Vr4c8{0 .} ==> Br4c7 ≠ e
whip[1]: Hr4c7{0 .} ==> Pr4c7 ≠ ew, Br3c7 ≠ nes, Br4c7 ≠ n
whip[1]: Pr3c9{ne .} ==> Br2c8 ≠ n, Br2c9 ≠ ns
B-single: Br2c9 = swn
B-single: Br2c8 = e
whip[1]: Br2c9{swn .} ==> Nr2c9 ≠ 2, Pr2c9 ≠ ew
N-single: Nr2c9 = 3
P-single: Pr2c9 = se
whip[1]: Pr2c9{se .} ==> Br1c8 ≠ sw
B-single: Br1c8 = w
whip[1]: Br1c8{w .} ==> Nr1c8 ≠ 2
N-single: Nr1c8 = 1
whip[1]: Hr2c7{1 .} ==> Pr2c7 ≠ nw, Br1c7 ≠ wne, Br2c7 ≠ s
P-single: Pr2c7 = ew
B-single: Br2c7 = ns
B-single: Br1c7 = nes
whip[1]: Pr2c7{ew .} ==> Br1c6 ≠ esw
B-single: Br1c6 = ns
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 3, Pr2c6 ≠ ne, Pr1c6 ≠ sw
N-single: Nr1c6 = 2
P-single: Pr3c7 = se
P-single: Pr1c6 = ew
P-single: Pr2c6 = se
whip[1]: Pr3c7{se .} ==> Br2c6 ≠ ns, Br3c6 ≠ swn, Br3c7 ≠ ne
B-single: Br3c7 = wne
B-single: Br3c6 = esw
B-single: Br2c6 = nw
whip[1]: Br3c7{wne .} ==> Nr3c7 ≠ 2, Pr4c7 ≠ sw
N-single: Nr3c7 = 3
P-single: Pr4c7 = nw
w[1]-1-in-r4c7-symmetric-nw-corner ==> Pr5c8 ≠ o
P-single: Pr5c8 = sw
whip[1]: Pr4c7{nw .} ==> Br4c6 ≠ ne, Br4c6 ≠ nes, Br4c7 ≠ w
B-single: Br4c7 = s
whip[1]: Br4c7{s .} ==> Pr5c7 ≠ ns, Hr5c7 ≠ 0, Pr5c7 ≠ nw
H-single: Hr5c7 = 1
horizontal-line-{r4 r5}c7 ==> Ir5c7 = out
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1
whip[1]: Hr5c7{1 .} ==> Br5c7 ≠ o, Br5c7 ≠ e, Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Vr5c8{1 .} ==> Pr6c8 ≠ o, Pr6c8 ≠ ew, Br5c7 ≠ n, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ swn, Br5c8 ≠ e
B-single: Br5c8 = ew
whip[1]: Br5c8{ew .} ==> Nr5c8 ≠ 3, Nr5c8 ≠ 1, Pr6c8 ≠ ne, Hr6c8 ≠ 1
N-single: Nr5c8 = 2
P-single: Pr7c7 = ew
P-single: Pr6c8 = nw
whip[1]: Pr7c7{ew .} ==> Br7c6 ≠ s, Br6c6 ≠ ne, Br6c6 ≠ e, Vr6c7 ≠ 1, Hr7c6 ≠ 0, Br6c7 ≠ sw
H-single: Hr7c6 = 1
V-single: Vr6c7 = 0
B-single: Br6c7 = ns
B-single: Br7c6 = ns
no-vertical-line-r6{c6 c7} ==> Ir6c6 = in
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
whip[1]: Hr7c6{1 .} ==> Pr7c6 ≠ o
P-single: Pr7c6 = ne
whip[1]: Pr7c6{ne .} ==> Br6c5 ≠ n, Br6c5 ≠ o
whip[1]: Br6c5{ne .} ==> Pr6c6 ≠ o, Pr6c6 ≠ ne, Pr6c6 ≠ nw, Nr6c5 ≠ 0, Pr6c6 ≠ ew
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ nes, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn
whip[1]: Vr6c7{0 .} ==> Pr6c7 ≠ ns, Pr6c7 ≠ sw
whip[1]: Pr6c7{ew .} ==> Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ nes, Br5c7 ≠ wne, Br5c6 ≠ o, Br5c6 ≠ n, Br5c6 ≠ w, Br5c7 ≠ ne
B-single: Br5c7 = nes
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 2, Nr5c7 ≠ 1, Pr6c7 ≠ ne, Pr5c7 ≠ se, Vr5c7 ≠ 1
V-single: Vr5c7 = 0
N-single: Nr5c7 = 3
P-single: Pr5c7 = ew
P-single: Pr6c7 = ew
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
different-colours-in-{r5 r6}c6 ==> Hr6c6 = 1
w[1]-3-in-r5c4-isolated-at-se-corner ==> Vr5c5 = 1, Hr6c4 = 1
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = out
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
w[1]-3-in-r5c4-hit-by-horiz-line-at-ne ==> Vr5c4 = 1
w[1]-2-in-r6c3-open-ne-corner ==> Hr7c3 = 1, Vr6c3 = 1, Hr7c2 = 0
w[1]-3-in-r5c4-closed-sw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ne, Pr5c5 ≠ o
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
same-colour-in-r4{c3 c4} ==> Vr4c4 = 0
w[0]-adjacent-3-in-r5c4-nolines-north ==> Hr5c3 = 1
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
whip[1]: Vr5c7{0 .} ==> Br5c6 ≠ e, Br5c6 ≠ ne, Br5c6 ≠ ew, Br5c6 ≠ wne
whip[1]: Br5c6{ns .} ==> Pr5c6 ≠ se, Pr6c6 ≠ ns, Nr5c6 ≠ 0, Nr5c6 ≠ 3, Pr5c6 ≠ sw, Pr6c6 ≠ sw
P-single: Pr6c6 = se
whip[1]: Pr6c6{se .} ==> Br5c5 ≠ s, Br5c5 ≠ e, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br6c5 ≠ ne, Br6c6 ≠ sw
B-single: Br6c6 = swn
B-single: Br6c5 = e
whip[1]: Br6c6{swn .} ==> Nr6c6 ≠ 2, Nr6c6 ≠ 1
N-single: Nr6c6 = 3
whip[1]: Br6c5{e .} ==> Nr6c5 ≠ 2, Pr6c5 ≠ ne, Pr6c5 ≠ ew
N-single: Nr6c5 = 1
whip[1]: Pr6c5{nw .} ==> Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Br5c4{nes .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr6c4 ≠ o, Pr6c4 ≠ ns, Pr6c5 ≠ o
P-single: Pr6c5 = nw
whip[1]: Pr6c5{nw .} ==> Br6c4 ≠ s, Br5c5 ≠ n, Br5c5 ≠ o, Br6c4 ≠ sw
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 1
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 0, Nr5c5 ≠ 3
whip[1]: Pr6c4{ew .} ==> Br5c3 ≠ se, Br6c3 ≠ ne
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ ns, Br4c4 ≠ esw, Br4c5 ≠ sw, Br5c4 ≠ nes, Br4c5 ≠ o
B-single: Br5c4 = esw
whip[1]: Br5c4{esw .} ==> Pr6c4 ≠ ew, Pr6c4 ≠ se, Pr5c4 ≠ ew
P-single: Pr7c3 = ne
P-single: Pr6c4 = ne
w[1]-1-in-r7c2-symmetric-ne-corner ==> Pr8c2 ≠ sw
P-single: Pr8c2 = ns
whip[1]: Pr7c3{ne .} ==> Br7c2 ≠ n, Br6c2 ≠ n, Br6c2 ≠ o, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ nes, Br6c3 ≠ ns, Br6c3 ≠ ew, Br7c3 ≠ s
B-single: Br7c3 = ns
B-single: Br6c3 = sw
B-single: Br7c2 = w
whip[1]: Br7c3{ns .} ==> Nr7c3 ≠ 1, Pr7c4 ≠ ne
N-single: Nr7c3 = 2
P-single: Pr7c4 = ew
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ swn
B-single: Br6c4 = ns
whip[1]: Br6c4{ns .} ==> Nr6c4 ≠ 3
N-single: Nr6c4 = 2
whip[1]: Br6c3{sw .} ==> Pr6c3 ≠ ew
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ esw, Br5c2 ≠ nes, Br5c3 ≠ sw, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ w, Br5c3 ≠ ns
whip[1]: Br5c2{wne .} ==> Nr5c2 ≠ 0
whip[1]: Br7c2{w .} ==> Pr7c2 ≠ ne, Vr7c2 ≠ 0, Pr7c2 ≠ ew
V-single: Vr7c2 = 1
vertical-line-r7{c1 c2} ==> Ir7c1 = out
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
same-colour-in-r7{c0 c1} ==> Vr7c1 = 0
whip[1]: Vr7c2{1 .} ==> Br7c1 ≠ sw, Br7c1 ≠ swn
whip[1]: Br7c1{ne .} ==> Pr7c1 ≠ ns, Pr7c1 ≠ se, Pr8c1 ≠ ne, Nr7c1 ≠ 3
P-single: Pr8c1 = o
whip[1]: Pr8c1{o .} ==> Br8c1 ≠ nes
B-single: Br8c1 = se
whip[1]: Br8c1{se .} ==> Nr8c1 ≠ 3
N-single: Nr8c1 = 2
whip[1]: Pr7c1{ne .} ==> Br6c1 ≠ s, Br6c1 ≠ ns, Br6c1 ≠ ew, Br6c1 ≠ wne
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 0
whip[1]: Pr6c4{ne .} ==> Br5c3 ≠ nw
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ esw, Br4c2 ≠ n
whip[1]: Pr5c4{sw .} ==> Br4c3 ≠ nw, Br4c3 ≠ nes, Br4c3 ≠ n
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 1
whip[1]: Br4c5{w .} ==> Nr4c5 ≠ 0, Nr4c5 ≠ 2
N-single: Nr4c5 = 1
whip[1]: Br4c4{ew .} ==> Nr4c4 ≠ 3
whip[1]: Pr5c7{ew .} ==> Br5c6 ≠ s, Br4c6 ≠ n
B-single: Br4c6 = ns
B-single: Br5c6 = ns
whip[1]: Br4c6{ns .} ==> Nr4c6 ≠ 3, Nr4c6 ≠ 1, Pr5c6 ≠ o
N-single: Nr4c6 = 2
P-single: Pr5c6 = ew
w[1]-1-in-r4c5-asymmetric-se-corner ==> Pr4c5 ≠ ns
P-single: Pr4c5 = nw
whip[1]: Pr5c6{ew .} ==> Br5c5 ≠ w, Br4c5 ≠ w
B-single: Br4c5 = s
B-single: Br5c5 = nw
whip[1]: Br4c5{s .} ==> Pr5c5 ≠ ns
P-single: Pr5c5 = se
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ ew
B-single: Br4c4 = n
whip[1]: Br4c4{n .} ==> Pr4c4 ≠ sw, Pr5c4 ≠ ns, Nr4c4 ≠ 2
N-single: Nr4c4 = 1
P-single: Pr6c3 = sw
P-single: Pr5c4 = sw
P-single: Pr4c4 = ew
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ e, Br5c2 ≠ ne, Br5c2 ≠ e, Vr5c3 ≠ 1, Hr6c2 ≠ 0, Br5c2 ≠ ew, Br5c2 ≠ wne, Br5c3 ≠ ew, Br6c2 ≠ ew
H-single: Hr6c2 = 1
V-single: Vr5c3 = 0
B-single: Br5c3 = ne

LOOP[24]: Hr6c2-Vr6c3-Hr7c3-Hr7c4-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c3-Hr9c4-Vr9c5-Hr10c4-Vr10c4-Hr11c3-Vr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Vr8c2-Vr7c2- ==> Vr6c2 = 0
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = out
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1

LOOP[26]: Vr6c1-Hr7c1-Vr7c2-Vr8c2-Hr9c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Hr10c2-Vr10c3-Hr11c3-Vr10c4-Hr10c4-Vr9c5-Hr9c4-Hr9c3-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Hr7c3-Vr6c3-Hr6c2- ==> Hr6c1 = 0
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1

LOOP[28]: Vr5c1-Vr6c1-Hr7c1-Vr7c2-Vr8c2-Hr9c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Hr10c2-Vr10c3-Hr11c3-Vr10c4-Hr10c4-Vr9c5-Hr9c4-Hr9c3-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Hr7c3-Vr6c3-Hr6c2-Vr5c2- ==> Hr5c1 = 0
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
whip[1]: Hr6c2{1 .} ==> Pr6c2 ≠ o, Pr6c2 ≠ ns, Pr6c2 ≠ nw, Pr6c2 ≠ sw
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ se, Br5c1 ≠ esw, Br5c1 ≠ nes, Br6c1 ≠ ne
whip[1]: Br6c1{swn .} ==> Pr6c1 ≠ ne
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ sw, Br5c1 ≠ swn
whip[1]: Vr5c3{0 .} ==> Pr5c3 ≠ ns, Pr5c3 ≠ sw
whip[1]: Pr5c3{ew .} ==> Br4c3 ≠ wne, Br4c3 ≠ ne
whip[1]: Vr6c2{0 .} ==> Pr6c2 ≠ se, Pr7c2 ≠ ns, Br6c1 ≠ e, Br6c2 ≠ wne
P-single: Pr7c2 = sw
B-single: Br6c2 = ne
whip[1]: Pr7c2{sw .} ==> Br7c1 ≠ e
B-single: Br7c1 = ne
whip[1]: Br7c1{ne .} ==> Nr7c1 ≠ 1, Pr7c1 ≠ o
N-single: Nr7c1 = 2
P-single: Pr7c1 = ne
whip[1]: Br6c2{ne .} ==> Nr6c2 ≠ 3, Nr6c2 ≠ 1
N-single: Nr6c2 = 2
whip[1]: Br6c1{swn .} ==> Pr6c1 ≠ o, Nr6c1 ≠ 1
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ e
whip[1]: Br5c1{wne .} ==> Nr5c1 ≠ 0
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ nw, Br5c1 ≠ w
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Hr6c1{0 .} ==> Pr6c1 ≠ se, Pr6c2 ≠ ew, Br5c1 ≠ s, Br5c1 ≠ ns, Br6c1 ≠ swn
P-single: Pr6c2 = ne
P-single: Pr6c1 = ns
B-single: Br6c1 = sw
whip[1]: Pr6c2{ne .} ==> Br5c2 ≠ s, Br5c2 ≠ ns
whip[1]: Br5c2{swn .} ==> Pr5c2 ≠ o, Pr5c2 ≠ ne, Pr5c2 ≠ nw, Pr5c2 ≠ ew, Nr5c2 ≠ 1
whip[1]: Pr5c2{sw .} ==> Br4c2 ≠ swn
whip[1]: Br4c2{ew .} ==> Pr4c2 ≠ se, Nr4c2 ≠ 3
whip[1]: Br6c1{sw .} ==> Nr6c1 ≠ 3
N-single: Nr6c1 = 2
whip[1]: Br5c1{wne .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ne, Nr5c1 ≠ 1
w[1]-1-in-r4c1-asymmetric-sw-corner ==> Pr4c2 ≠ ew, Pr4c2 ≠ nw, Pr4c2 ≠ ns
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c2 ≠ s, Br3c2 ≠ w, Br4c1 ≠ n, Br4c1 ≠ e
whip[1]: Br4c1{w .} ==> Hr4c1 ≠ 1, Vr4c2 ≠ 1, Pr4c1 ≠ ne, Pr5c2 ≠ ns, Pr4c1 ≠ se, Pr4c2 ≠ sw
V-single: Vr4c2 = 0
H-single: Hr4c1 = 0
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
same-colour-in-r4{c2 c3} ==> Vr4c3 = 0
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1

LOOP[12]: Vr3c2-Hr4c2-Hr4c3-Hr4c4-Vr3c5-Vr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Hr2c2- ==> Vr2c2 = 0
no-vertical-line-r2{c1 c2} ==> Ir2c1 = out
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1

LOOP[114]: Hr2c2-Vr2c3-Hr3c3-Vr2c4-Hr2c4-Vr2c5-Vr3c5-Hr4c4-Hr4c3-Hr4c2-Vr3c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Hr7c1-Vr7c2-Vr8c2-Hr9c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Hr10c2-Vr10c3-Hr11c3-Vr10c4-Hr10c4-Vr9c5-Hr9c4-Hr9c3-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Hr7c3-Vr6c3-Hr6c2-Vr5c2-Hr5c2-Hr5c3-Vr5c4-Hr6c4-Vr5c5-Hr5c5-Hr5c6-Hr5c7-Vr5c8-Hr6c7-Hr6c6-Vr6c6-Hr7c6-Hr7c7-Vr7c8-Vr8c8-Hr9c7-Vr8c7-Hr8c6-Vr8c6-Vr9c6-Hr10c6-Vr10c7-Hr11c7-Vr10c8-Hr10c8-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Vr9c10-Hr9c9-Vr8c9-Vr7c9-Hr7c9-Vr7c10-Hr8c10-Vr7c11-Vr6c11-Hr6c10-Hr6c9-Vr5c9-Hr5c9-Hr5c10-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Vr1c10-Hr2c9-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Hr4c8-Vr3c8-Hr3c7-Vr3c7-Hr4c6-Vr3c6-Vr2c6-Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2- ==> Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1

LOOP[116]: Vr1c1-Hr2c1-Hr2c2-Vr2c3-Hr3c3-Vr2c4-Hr2c4-Vr2c5-Vr3c5-Hr4c4-Hr4c3-Hr4c2-Vr3c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Hr7c1-Vr7c2-Vr8c2-Hr9c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Hr10c2-Vr10c3-Hr11c3-Vr10c4-Hr10c4-Vr9c5-Hr9c4-Hr9c3-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Hr7c3-Vr6c3-Hr6c2-Vr5c2-Hr5c2-Hr5c3-Vr5c4-Hr6c4-Vr5c5-Hr5c5-Hr5c6-Hr5c7-Vr5c8-Hr6c7-Hr6c6-Vr6c6-Hr7c6-Hr7c7-Vr7c8-Vr8c8-Hr9c7-Vr8c7-Hr8c6-Vr8c6-Vr9c6-Hr10c6-Vr10c7-Hr11c7-Vr10c8-Hr10c8-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Vr9c10-Hr9c9-Vr8c9-Vr7c9-Hr7c9-Vr7c10-Hr8c10-Vr7c11-Vr6c11-Hr6c10-Hr6c9-Vr5c9-Hr5c9-Hr5c10-Vr4c11-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Vr1c10-Hr2c9-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Hr4c8-Vr3c8-Hr3c7-Vr3c7-Hr4c6-Vr3c6-Vr2c6-Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2- ==> Hr1c1 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXXXXOOX
OOXOXOOOXX
XOOOXOXOOX
XXXXXXXXXX
XOOXOOOXOO
XXOOOXXXXX
OXXXOOOXOX
OXOOOXOXOO
XXXXOXXXXO
XOXOOOXOXX

.———.———.———.———.———.———.———.   .   .———.
|         1   2           3 |     2 | 3 |
.———.———.   .———.   .———.———.   .———.   .
  2     | 3 | 3 |   | 2       1 |     1 |
.———.   .———.   .   .   .———.   .———.   .
|   |     2     |   | 3 |   | 2     | 2 |
.   .———.———.———.   .———.   .———.———.   .
| 1                       1           2 |
.   .———.———.   .———.———.———.   .———.———.
|   |     2 | 3 |           |   | 3   2
.   .———.   .———.   .———.———.   .———.———.
|       | 2         |     2   0       2 |
.———.   .———.———.   .———.———.   .———.   .
    | 1       3 |           | 2 |   | 3 |
.   .   .———.———.   .———.   .   .   .———.
    |   | 3       1 | 3 | 3 |   |     1
.———.   .———.———.   .   .———.   .———.   .
| 2       1     | 2 |               | 2
.   .———.   .———.   .———.   .———.   .———.
| 3 |   | 3 |           | 3 |   | 2     |
.———.   .———.   .   .   .———.   .———.———.

init-time = 0.6s, solve-time = 35.74s, total-time = 36.34s
nb-facts=<Fact-185786>
Quasi-Loop max length = 116
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
