
(solve
10 10
1 . 2 3 1 . 2 . . 0
. . 3 . . . 2 3 . .
. . . 0 . . . . . 3
. . 1 . 0 1 . 0 . .
3 . 2 0 . . 2 0 . 1
. . . 1 2 . . . 3 .
2 2 1 . . . . 0 1 .
. . . 0 . 2 . . . .
. 1 . 1 1 . . . . 1
3 . 1 . 3 . 0 1 . 1
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 . 2 3 1 . 2 . . 0
. . 3 . . . 2 3 . .
. . . 0 . . . . . 3
. . 1 . 0 1 . 0 . .
3 . 2 0 . . 2 0 . 1
. . . 1 2 . . . 3 .
2 2 1 . . . . 0 1 .
. . . 0 . 2 . . . .
. 1 . 1 1 . . . . 1
3 . 1 . 3 . 0 1 . 1

Loading pre-computed background
start init-inner-N-and-B-candidates 0.55803918838501
start solution 0.569926977157593
entering BRT
w[0]-0-in-r10c7 ==> Hr11c7 = 0, Hr10c7 = 0, Vr10c8 = 0, Vr10c7 = 0
w[0]-0-in-r8c4 ==> Hr9c4 = 0, Hr8c4 = 0, Vr8c5 = 0, Vr8c4 = 0
w[0]-0-in-r7c8 ==> Hr8c8 = 0, Hr7c8 = 0, Vr7c9 = 0, Vr7c8 = 0
w[0]-0-in-r5c8 ==> Hr6c8 = 0, Hr5c8 = 0, Vr5c9 = 0, Vr5c8 = 0
w[0]-0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
w[0]-0-in-r4c8 ==> Hr4c8 = 0, Vr4c9 = 0, Vr4c8 = 0
w[0]-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[0]-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[0]-0-in-r1c10 ==> Hr2c10 = 0, Hr1c10 = 0, Vr1c11 = 0, Vr1c10 = 0
w[1]-1-in-se-corner ==> Vr10c11 = 0, Hr11c10 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-diagonal-3-0-in-{r6c9...r7c8} ==> Vr6c9 = 1, Hr7c9 = 1
w[1]-diagonal-3-0-in-{r6c9...r5c8} ==> Hr6c9 = 1
w[1]-diagonal-3-0-in-{r2c3...r3c4} ==> Vr2c4 = 1, Hr3c3 = 1
w[1]-diagonal-3s-in-{r1c4...r2c3} ==> Vr1c5 = 1, Vr2c3 = 1, Hr1c4 = 1, Vr3c3 = 0, Hr3c2 = 0, Hr1c5 = 0
w[1]-3-in-r1c4-hit-by-verti-line-at-sw ==> Hr2c3 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r9 r10} ==> Hr10c10 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r9{c4 c5} ==> Vr9c5 = 0
w[1]-diagonal-1-1-in-{r9c4...r10c3}-with-no-ne-outer-sides ==> Hr11c3 = 0, Vr10c3 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c5 c4} ==> Vr1c6 = 0, Hr2c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r7 r6}c9 ==> Vr7c10 = 0, Hr8c9 = 0
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r6c9-closed-sw-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ne, Pr6c10 ≠ o
w[1]-3-in-r6c9-closed-nw-corner ==> Pr7c10 ≠ se, Pr7c10 ≠ nw, Pr7c10 ≠ o
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r2c3-closed-se-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-diagonal-closed-3-1-in-{r10c1...r9c2} ==> Vr9c3 = 0, Hr9c2 = 0
w[1]-diagonal-closed-3-1-in-{r6c9...r5c10} ==> Vr5c11 = 0, Hr5c10 = 0
w[1]-1-in-r10c10-symmetric-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-1-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-1-in-r9c2-asymmetric-sw-corner ==> Pr9c3 ≠ ew, Pr9c3 ≠ se, Pr9c3 ≠ nw, Pr9c3 ≠ ns
w[1]-1-in-r5c10-asymmetric-sw-corner ==> Pr5c11 ≠ nw, Pr5c11 ≠ ns
entering level Loop with <Fact-93037>
entering level Col with <Fact-93115>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
no-vertical-line-r1{c10 c11} ==> Ir1c10 = out
no-vertical-line-r1{c9 c10} ==> Ir1c9 = out
no-horizontal-line-{r1 r2}c10 ==> Ir2c10 = out
vertical-line-r10{c0 c1} ==> Ir10c1 = in
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
no-horizontal-line-{r10 r11}c7 ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-vertical-line-r10{c7 c8} ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-horizontal-line-{r10 r11}c3 ==> Ir10c3 = out
no-vertical-line-r10{c2 c3} ==> Ir10c2 = out
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
no-vertical-line-r1{c5 c6} ==> Ir1c6 = out
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
same-colour-in-{r0 r1}c6 ==> Hr1c6 = 0
same-colour-in-{r10 r11}c2 ==> Hr11c2 = 0
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se, Pr10c1 ≠ o
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
same-colour-in-{r10 r11}c6 ==> Hr11c6 = 0
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
same-colour-in-{r0 r1}c9 ==> Hr1c9 = 0
same-colour-in-r4{c10 c11} ==> Vr4c11 = 0
same-colour-in-r9{c10 c11} ==> Vr9c11 = 0
Starting_init_links_with_<Fact-93153>
1158 candidates, 8782 csp-links and 36523 links. Density = 5.45%
starting non trivial part of solution
Entering_level_W1_with_<Fact-183768>
whip[1]: Vr9c11{0 .} ==> Br9c10 ≠ e, Br9c11 ≠ w, Pr9c11 ≠ ns, Pr9c11 ≠ sw, Pr10c11 ≠ ns, Pr10c11 ≠ nw
B-single: Br9c11 = o
w[1]-1-in-r10c10-symmetric-ne-corner ==> Pr11c10 ≠ ne, Pr11c10 ≠ o
whip[1]: Pr11c10{ew .} ==> Br11c9 ≠ o, Hr11c9 ≠ 0, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ wne, Br10c9 ≠ o, Br10c9 ≠ n, Br10c9 ≠ e, Br10c9 ≠ w, Br10c9 ≠ ne, Br10c10 ≠ n
H-single: Hr11c9 = 1
B-single: Br10c10 = w
B-single: Br11c9 = n
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
different-colours-in-r10{c9 c10} ==> Hr10c10 = 1
different-colours-in-r10{c8 c9} ==> Hr10c9 = 1
whip[1]: Hr11c9{1 .} ==> Pr11c9 ≠ o, Pr11c9 ≠ nw
w[1]-1-in-r10c8-asymmetric-se-corner ==> Pr10c8 ≠ sw, Pr10c8 ≠ ew, Pr10c8 ≠ ns, Pr10c8 ≠ ne
whip[1]: Pr10c8{se .} ==> Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c7 ≠ e, Br9c7 ≠ s, Br10c8 ≠ n, Br10c8 ≠ w
whip[1]: Br10c8{s .} ==> Hr10c8 ≠ 1, Vr10c8 ≠ 1, Pr11c8 ≠ ne, Pr11c8 ≠ nw, Pr10c8 ≠ se, Pr10c9 ≠ nw, Pr10c9 ≠ ew, Pr10c9 ≠ sw
H-single: Hr10c8 = 0
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = out
same-colour-in-r9{c7 c8} ==> Vr9c8 = 0
whip[1]: Hr10c8{0 .} ==> Br9c8 ≠ s, Br9c8 ≠ ns, Br9c8 ≠ se, Br9c8 ≠ nes
whip[1]: Vr9c8{0 .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ se, Pr9c8 ≠ sw, Pr10c8 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ nes, Br9c8 ≠ w, Br9c8 ≠ nw, Br9c8 ≠ ew, Br9c8 ≠ wne
P-single: Pr10c8 = o
whip[1]: Pr10c8{o .} ==> Hr10c7 ≠ 1
whip[1]: Br9c8{ne .} ==> Nr9c8 ≠ 3
whip[1]: Br9c7{nw .} ==> Pr10c7 ≠ ne, Pr10c7 ≠ se, Pr10c7 ≠ ew, Nr9c7 ≠ 3
whip[1]: Br10c10{w .} ==> Pr10c10 ≠ ne, Pr11c11 ≠ nw, Pr11c10 ≠ ew, Pr10c11 ≠ sw, Pr10c10 ≠ ew
P-single: Pr10c11 = o
P-single: Pr11c10 = nw
P-single: Pr11c11 = o
w[1]-1-in-r9c10-symmetric-se-corner ==> Pr9c10 ≠ se, Pr9c10 ≠ nw, Pr9c10 ≠ o
whip[1]: Pr10c11{o .} ==> Br9c10 ≠ s
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ s, Br11c10 ≠ n, Br10c9 ≠ ns, Br10c9 ≠ sw, Br10c9 ≠ swn
B-single: Br11c10 = o
whip[1]: Br10c9{nes .} ==> Pr10c9 ≠ se, Nr10c9 ≠ 0, Nr10c9 ≠ 1
whip[1]: Pr10c9{ns .} ==> Br9c9 ≠ s, Br9c9 ≠ ns, Br9c9 ≠ se, Br9c9 ≠ nes
whip[1]: Pr9c10{sw .} ==> Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ esw, Br8c9 ≠ nes, Br8c9 ≠ o, Br8c9 ≠ n, Br8c9 ≠ w
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 0
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ nw, Br9c9 ≠ esw, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ w
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Vr10c9{1 .} ==> Pr11c9 ≠ ew, Pr10c9 ≠ o, Pr10c9 ≠ ne, Br10c8 ≠ s, Br10c9 ≠ se, Br10c9 ≠ nes
P-single: Pr10c9 = ns
P-single: Pr11c9 = ne
B-single: Br10c9 = esw
B-single: Br10c8 = e
w[1]-1-in-r10c8-asymmetric-ne-corner ==> Pr11c8 ≠ ew
P-single: Pr11c8 = o
whip[1]: Pr10c9{ns .} ==> Br9c9 ≠ e, Br9c8 ≠ n, Br9c8 ≠ o, Vr9c9 ≠ 0, Hr10c9 ≠ 1, Br9c9 ≠ ne, Br9c9 ≠ sw, Br9c9 ≠ swn
H-single: Hr10c9 = 0
V-single: Vr9c9 = 1
vertical-line-r9{c8 c9} ==> Ir9c9 = in
different-colours-in-r9{c9 c10} ==> Hr9c10 = 1

LOOP[6]: Vr9c10-Vr10c10-Hr11c9-Vr10c9-Vr9c9- ==> Hr9c9 = 0
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
no-vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-horizontal-line-{r6 r7}c8 ==> Ir6c8 = in
no-horizontal-line-{r5 r6}c8 ==> Ir5c8 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
no-vertical-line-r5{c8 c9} ==> Ir5c9 = in
horizontal-line-{r5 r6}c9 ==> Ir6c9 = out
no-horizontal-line-{r4 r5}c8 ==> Ir4c8 = in
no-vertical-line-r4{c7 c8} ==> Ir4c7 = in
no-vertical-line-r4{c8 c9} ==> Ir4c9 = in
no-horizontal-line-{r3 r4}c8 ==> Ir3c8 = in
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
same-colour-in-r8{c8 c9} ==> Vr8c9 = 0
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1
same-colour-in-{r4 r5}c9 ==> Hr5c9 = 0
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1
w[1]-3-in-r3c10-hit-by-verti-line-at-sw ==> Vr3c11 = 1, Hr3c10 = 1, Hr4c9 = 0
w[1]-3-in-r3c10-closed-ne-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ ne, Pr4c10 ≠ o
no-horizontal-line-{r3 r4}c9 ==> Ir3c9 = in
horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
different-colours-in-{r3 r4}c10 ==> Hr4c10 = 1
w[1]-3-in-r3c10-closed-se-corner ==> Pr3c10 ≠ se, Pr3c10 ≠ nw, Pr3c10 ≠ o
same-colour-in-r3{c8 c9} ==> Vr3c9 = 0
same-colour-in-{r4 r5}c7 ==> Hr5c7 = 0
w[1]-2-in-r5c7-open-ne-corner ==> Hr6c7 = 1, Vr5c7 = 1, Hr6c6 = 0, Vr6c7 = 0
w[1]-1-in-r4c6-asymmetric-se-corner ==> Pr4c6 ≠ sw, Pr4c6 ≠ ew, Pr4c6 ≠ ns, Pr4c6 ≠ ne
vertical-line-r5{c6 c7} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
no-vertical-line-r6{c6 c7} ==> Ir6c7 = out
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
no-vertical-line-r6{c9 c10} ==> Ir6c10 = out
same-colour-in-r6{c10 c11} ==> Vr6c11 = 0
different-colours-in-{r6 r7}c10 ==> Hr7c10 = 1
whip[1]: Hr10c9{0 .} ==> Pr10c10 ≠ sw
P-single: Pr10c10 = ns
w[1]-1-in-r9c10-asymmetric-sw-corner ==> Pr9c11 ≠ nw
P-single: Pr9c11 = o
whip[1]: Pr10c10{ns .} ==> Br9c10 ≠ n
B-single: Br9c10 = w
whip[1]: Br9c10{w .} ==> Pr9c10 ≠ ne, Hr9c10 ≠ 1, Pr9c10 ≠ ew
H-single: Hr9c10 = 0
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
different-colours-in-r8{c9 c10} ==> Hr8c10 = 1
different-colours-in-{r7 r8}c10 ==> Hr8c10 = 1
whip[1]: Hr9c10{0 .} ==> Br8c10 ≠ s, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ nes
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w, Pr8c11 ≠ ns, Pr8c11 ≠ sw, Br8c10 ≠ e, Br8c10 ≠ ne, Br8c10 ≠ ew, Br8c10 ≠ wne
B-single: Br8c11 = o
whip[1]: Br8c10{nw .} ==> Nr8c10 ≠ 3
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Vr8c10{1 .} ==> Br8c10 ≠ o, Pr8c10 ≠ o, Pr8c10 ≠ ne, Pr8c10 ≠ nw, Pr8c10 ≠ ew, Pr9c10 ≠ sw, Br8c9 ≠ s, Br8c9 ≠ ns, Br8c9 ≠ sw, Br8c9 ≠ swn, Br8c10 ≠ n
P-single: Pr9c10 = ns
whip[1]: Pr9c10{ns .} ==> Br9c9 ≠ wne
B-single: Br9c9 = ew
whip[1]: Br9c9{ew .} ==> Nr9c9 ≠ 3, Nr9c9 ≠ 1, Pr9c9 ≠ ew, Pr9c9 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ ne, Pr9c9 ≠ o
N-single: Nr9c9 = 2
whip[1]: Pr9c9{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ esw, Br8c8 ≠ nes, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ w
whip[1]: Br8c8{wne .} ==> Nr8c8 ≠ 0
whip[1]: Br8c10{nw .} ==> Nr8c10 ≠ 0
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ esw
whip[1]: Hr8c10{1 .} ==> Br7c10 ≠ o, Pr8c11 ≠ o, Pr8c10 ≠ ns, Pr8c10 ≠ sw, Br7c10 ≠ n, Br7c10 ≠ w, Br7c10 ≠ nw, Br8c10 ≠ w
P-single: Pr8c10 = se
P-single: Pr8c11 = nw
B-single: Br8c10 = nw
w[1]-1-in-r7c9-symmetric-se-corner ==> Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ o
whip[1]: Pr8c10{se .} ==> Br7c9 ≠ s, Br7c9 ≠ e, Br8c9 ≠ ne, Br8c9 ≠ wne
whip[1]: Br8c9{ew .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Nr8c9 ≠ 3
whip[1]: Br7c9{w .} ==> Pr7c10 ≠ ns, Pr7c10 ≠ sw
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ esw, Br6c9 ≠ nes, Br6c10 ≠ nw, Br6c10 ≠ ew, Br6c10 ≠ wne, Br7c10 ≠ se, Br6c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ e, Br6c10 ≠ w, Br6c10 ≠ ne
B-single: Br7c10 = nes
whip[1]: Br7c10{nes .} ==> Nr7c10 ≠ 2, Nr7c10 ≠ 1, Nr7c10 ≠ 0, Pr7c11 ≠ nw, Pr7c11 ≠ ns, Pr7c11 ≠ o
N-single: Nr7c10 = 3
P-single: Pr7c11 = sw
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ se, Br6c10 ≠ esw, Br6c10 ≠ nes
whip[1]: Br6c10{swn .} ==> Pr6c11 ≠ ns, Pr6c11 ≠ sw, Nr6c10 ≠ 0
w[1]-1-in-r5c10-symmetric-se-corner ==> Pr5c10 ≠ se, Pr5c10 ≠ nw, Pr5c10 ≠ o
whip[1]: Pr5c10{sw .} ==> Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ esw, Br4c9 ≠ nes, Br4c9 ≠ o, Br4c9 ≠ n, Br4c9 ≠ w, Br5c10 ≠ e, Br5c10 ≠ s
whip[1]: Br5c10{w .} ==> Pr6c11 ≠ nw, Pr5c11 ≠ sw, Pr6c10 ≠ se, Pr6c10 ≠ ew
P-single: Pr5c11 = o
P-single: Pr6c11 = o
whip[1]: Pr5c11{o .} ==> Br4c10 ≠ e, Br4c10 ≠ s, Br4c10 ≠ ne, Br4c10 ≠ ns, Br4c10 ≠ se, Br4c10 ≠ ew, Br4c10 ≠ sw, Br4c10 ≠ esw, Br4c10 ≠ swn, Br4c10 ≠ wne, Br4c10 ≠ nes, Br5c10 ≠ n
B-single: Br5c10 = w
whip[1]: Br5c10{w .} ==> Pr5c10 ≠ ne, Pr5c10 ≠ ew
whip[1]: Pr5c10{sw .} ==> Br5c9 ≠ nw, Br5c9 ≠ sw, Br5c9 ≠ swn, Br5c9 ≠ o, Br5c9 ≠ n, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ns
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Br4c10{nw .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ sw, Nr4c10 ≠ 3
whip[1]: Pr4c11{nw .} ==> Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr3c11 ≠ o, Pr3c11 ≠ nw, Pr4c11 ≠ o, Pr4c10 ≠ ns, Pr4c10 ≠ nw
P-single: Pr4c11 = nw
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ o, Br4c10 ≠ w
whip[1]: Br4c10{nw .} ==> Nr4c10 ≠ 0
whip[1]: Pr4c10{ew .} ==> Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c10 ≠ esw, Br4c9 ≠ sw, Br4c9 ≠ wne, Br3c9 ≠ e, Br3c9 ≠ ne, Br4c9 ≠ s, Br4c9 ≠ ne
B-single: Br3c10 = nes
whip[1]: Br3c10{nes .} ==> Pr3c10 ≠ sw, Pr3c10 ≠ ns, Pr3c11 ≠ ns
P-single: Pr3c11 = sw
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ ne, Br2c10 ≠ w, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes
whip[1]: Br2c10{swn .} ==> Pr2c11 ≠ ns, Pr2c11 ≠ sw, Nr2c10 ≠ 0
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ nes, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ w
whip[1]: Br2c9{wne .} ==> Nr2c9 ≠ 0
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Pr6c11{o .} ==> Br6c10 ≠ ns, Br6c10 ≠ swn
whip[1]: Br6c10{sw .} ==> Nr6c10 ≠ 3
whip[1]: Pr6c10{nw .} ==> Br6c9 ≠ wne
B-single: Br6c9 = swn
whip[1]: Br6c9{swn .} ==> Pr7c10 ≠ ne, Pr7c9 ≠ sw, Pr7c9 ≠ ew, Pr7c9 ≠ ns, Pr6c10 ≠ ns, Pr6c9 ≠ sw, Pr6c9 ≠ ew, Pr6c9 ≠ nw, Pr6c9 ≠ ns, Pr6c9 ≠ ne, Pr6c9 ≠ o
P-single: Pr6c9 = se
P-single: Pr6c10 = nw
P-single: Pr7c9 = ne
P-single: Pr7c10 = ew
w[1]-1-in-r7c9-asymmetric-ne-corner ==> Pr8c9 ≠ nw, Pr8c9 ≠ ns
whip[1]: Pr6c9{se .} ==> Br6c8 ≠ w, Br6c8 ≠ s, Br6c8 ≠ n, Br6c8 ≠ o, Br5c9 ≠ e, Vr5c9 ≠ 1, Hr6c8 ≠ 1, Br5c9 ≠ ne, Br5c9 ≠ ew, Br5c9 ≠ esw, Br5c9 ≠ wne, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ sw, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes
whip[1]: Br6c8{esw .} ==> Pr6c8 ≠ ne, Pr6c8 ≠ ew, Nr6c8 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br6c7 ≠ nw, Br6c7 ≠ sw, Br6c7 ≠ swn, Br6c8 ≠ se, Br6c7 ≠ o, Br6c7 ≠ n, Br6c7 ≠ s, Br6c7 ≠ w, Br6c7 ≠ ns, Br6c8 ≠ e
whip[1]: Br6c8{esw .} ==> Pr7c8 ≠ o, Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c8 ≠ sw, Nr6c8 ≠ 1
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ ne, Br7c7 ≠ wne, Br7c7 ≠ nes
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Br5c9{nes .} ==> Pr5c9 ≠ ns, Pr5c9 ≠ se, Pr5c9 ≠ sw, Nr5c9 ≠ 1
whip[1]: Pr6c10{nw .} ==> Br6c10 ≠ sw
B-single: Br6c10 = s
whip[1]: Br6c10{s .} ==> Nr6c10 ≠ 2
N-single: Nr6c10 = 1
whip[1]: Pr7c9{ne .} ==> Vr7c9 ≠ 1, Hr7c8 ≠ 1, Br6c8 ≠ esw, Br7c9 ≠ w
B-single: Br7c9 = n
B-single: Br6c8 = ew
whip[1]: Br6c8{ew .} ==> Nr6c8 ≠ 3, Pr7c8 ≠ ne
N-single: Nr6c8 = 2
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ w, Br7c7 ≠ sw, Br7c7 ≠ o, Br7c7 ≠ s
whip[1]: Br7c7{swn .} ==> Nr7c7 ≠ 0
whip[1]: Pr8c9{sw .} ==> Br8c8 ≠ ew, Br8c8 ≠ swn, Br8c8 ≠ e, Br8c8 ≠ ns
whip[1]: Br8c10{nw .} ==> Nr8c10 ≠ 1
N-single: Nr8c10 = 2
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr8c9{0 .} ==> Pr8c9 ≠ sw, Pr9c9 ≠ ns, Br8c8 ≠ ne, Br8c8 ≠ wne, Br8c9 ≠ ew
P-single: Pr9c9 = sw
P-single: Pr8c9 = o
B-single: Br8c9 = e
whip[1]: Pr9c9{sw .} ==> Br9c8 ≠ e
B-single: Br9c8 = ne
whip[1]: Br9c8{ne .} ==> Nr9c8 ≠ 1, Nr9c8 ≠ 0, Pr9c8 ≠ nw, Pr9c8 ≠ o
N-single: Nr9c8 = 2
whip[1]: Pr9c8{ew .} ==> Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ esw, Br8c7 ≠ nes, Br8c7 ≠ o, Br8c7 ≠ n, Br8c7 ≠ w
whip[1]: Br8c7{wne .} ==> Nr8c7 ≠ 0
whip[1]: Pr8c9{o .} ==> Hr8c8 ≠ 1
whip[1]: Br8c9{e .} ==> Nr8c9 ≠ 2
N-single: Nr8c9 = 1
whip[1]: Br8c8{sw .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ se, Pr8c8 ≠ ew, Nr8c8 ≠ 3
whip[1]: Hr5c9{0 .} ==> Pr5c9 ≠ ne, Pr5c9 ≠ ew, Pr5c10 ≠ sw, Br4c9 ≠ ns, Br4c9 ≠ swn, Br5c9 ≠ nes
P-single: Pr5c10 = ns
B-single: Br5c9 = se
whip[1]: Pr5c10{ns .} ==> Br4c10 ≠ n
B-single: Br4c10 = nw
whip[1]: Br4c10{nw .} ==> Nr4c10 ≠ 1, Pr4c10 ≠ ew
N-single: Nr4c10 = 2
P-single: Pr4c10 = se
whip[1]: Pr4c10{se .} ==> Br3c9 ≠ s, Br3c9 ≠ ns, Br3c9 ≠ sw, Br3c9 ≠ swn
whip[1]: Br3c9{nw .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ se, Pr4c9 ≠ ew, Nr3c9 ≠ 3
whip[1]: Br5c9{se .} ==> Nr5c9 ≠ 3
N-single: Nr5c9 = 2
whip[1]: Br4c9{ew .} ==> Nr4c9 ≠ 3
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Vr3c9{0 .} ==> Pr3c9 ≠ ns, Pr3c9 ≠ se, Pr3c9 ≠ sw, Pr4c9 ≠ ns, Pr4c9 ≠ nw, Br3c8 ≠ e, Br3c8 ≠ ne, Br3c8 ≠ se, Br3c8 ≠ ew, Br3c8 ≠ esw, Br3c8 ≠ wne, Br3c8 ≠ nes, Br3c9 ≠ w, Br3c9 ≠ nw
whip[1]: Br3c9{n .} ==> Nr3c9 ≠ 2
whip[1]: Hr5c7{0 .} ==> Pr5c7 ≠ ne, Pr5c7 ≠ ew, Pr5c8 ≠ nw, Pr5c8 ≠ ew, Br4c7 ≠ s, Br4c7 ≠ ns, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br5c7 ≠ ne, Br5c7 ≠ ns
whip[1]: Br5c7{sw .} ==> Pr6c7 ≠ se, Pr6c7 ≠ ew
whip[1]: Pr6c7{nw .} ==> Br5c6 ≠ w, Br5c6 ≠ ns, Br5c6 ≠ nw, Br5c6 ≠ sw, Br5c6 ≠ swn, Br6c6 ≠ ne, Br6c6 ≠ wne, Br6c6 ≠ nes, Br6c7 ≠ wne, Br5c6 ≠ o, Br5c6 ≠ n, Br5c6 ≠ s
whip[1]: Br5c6{nes .} ==> Nr5c6 ≠ 0
whip[1]: Pr5c7{sw .} ==> Br4c6 ≠ n, Br4c6 ≠ w
whip[1]: Br4c6{s .} ==> Hr4c6 ≠ 1, Vr4c6 ≠ 1, Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr4c6 ≠ se, Pr4c7 ≠ nw, Pr4c7 ≠ ew, Pr4c7 ≠ sw, Pr5c6 ≠ nw
H-single: Hr4c6 = 0
whip[1]: Hr4c6{0 .} ==> Br3c6 ≠ s, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ nes
whip[1]: Pr4c6{nw .} ==> Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ e, Br3c5 ≠ s
whip[1]: Hr6c7{1 .} ==> Pr6c7 ≠ ns, Pr6c7 ≠ nw, Pr6c8 ≠ ns, Br5c7 ≠ ew, Br6c7 ≠ e, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw
P-single: Pr6c8 = sw
P-single: Pr6c7 = ne
B-single: Br5c7 = sw
whip[1]: Pr6c8{sw .} ==> Vr5c8 ≠ 1
whip[1]: Pr6c7{ne .} ==> Br6c6 ≠ n, Br5c6 ≠ se, Br5c6 ≠ esw, Br5c6 ≠ nes, Br6c6 ≠ e, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ swn
whip[1]: Br6c6{sw .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ nw, Nr6c6 ≠ 3
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 1
whip[1]: Hr7c7{1 .} ==> Pr7c7 ≠ o, Pr7c7 ≠ sw, Pr7c8 ≠ ns, Br6c7 ≠ ne, Br7c7 ≠ e, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ esw
P-single: Pr7c8 = nw
B-single: Br6c7 = nes
whip[1]: Pr7c8{nw .} ==> Vr7c8 ≠ 1
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 2
N-single: Nr6c7 = 3
whip[1]: Br7c7{swn .} ==> Pr8c8 ≠ ns, Pr8c8 ≠ nw
whip[1]: Pr8c8{sw .} ==> Br8c7 ≠ ew, Br8c7 ≠ swn, Br8c7 ≠ e, Br8c7 ≠ ns
whip[1]: Pr7c7{ew .} ==> Br7c6 ≠ sw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c6 ≠ o, Br7c6 ≠ s, Br7c6 ≠ w, Br7c6 ≠ ne
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 0
whip[1]: Vr6c11{0 .} ==> Br6c11 ≠ w
B-single: Br6c11 = o
whip[1]: Pr11c9{ne .} ==> Br11c8 ≠ n
B-single: Br11c8 = o
whip[1]: Br10c9{esw .} ==> Nr10c9 ≠ 2
N-single: Nr10c9 = 3
whip[1]: Pr11c8{o .} ==> Hr11c7 ≠ 1, Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Br11c7{o .} ==> Pr11c7 ≠ ne, Pr11c7 ≠ ew
whip[1]: Pr11c7{nw .} ==> Br10c6 ≠ ne, Br10c6 ≠ ns, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ swn, Br10c6 ≠ wne, Br10c6 ≠ e, Br10c6 ≠ s
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Hr1c9{0 .} ==> Br1c9 ≠ nes, Br0c9 ≠ s, Pr1c9 ≠ se, Pr1c9 ≠ ew, Pr1c10 ≠ ew, Pr1c10 ≠ sw, Br1c9 ≠ n, Br1c9 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ nw, Br1c9 ≠ swn, Br1c9 ≠ wne
B-single: Br0c9 = o
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ swn, Br1c8 ≠ n, Br1c8 ≠ e, Br1c8 ≠ ns
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Hr11c6{0 .} ==> Br10c6 ≠ nes, Br11c6 ≠ n, Pr11c6 ≠ ne, Pr11c6 ≠ ew, Pr11c7 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ esw
w[1]-3-in-r10c5-symmetric-se-corner ==> Vr10c6 = 1, Hr11c5 = 1
w[1]-3-in-r10c5-closed-se-corner ==> Pr10c5 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ o
w[1]-diagonal-closed-3-1-in-{r10c5...r9c4} ==> Vr9c4 = 0
P-single: Pr11c7 = o
B-single: Br11c6 = o
w[1]-1-in-r9c4-asymmetric-se-corner ==> Pr9c4 ≠ sw, Pr9c4 ≠ ew, Pr9c4 ≠ ns, Pr9c4 ≠ ne
horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
whip[1]: Vr10c6{1 .} ==> Br10c6 ≠ o, Pr11c6 ≠ o, Pr10c6 ≠ o, Pr10c6 ≠ ne, Pr10c6 ≠ nw, Pr10c6 ≠ ew, Br10c5 ≠ swn, Br10c6 ≠ n
P-single: Pr11c6 = nw
whip[1]: Pr11c6{nw .} ==> Br11c5 ≠ o, Br10c5 ≠ wne
B-single: Br11c5 = n
whip[1]: Br11c5{n .} ==> Pr11c5 ≠ o, Pr11c5 ≠ nw
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ esw, Br10c4 ≠ nes, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ w
whip[1]: Br10c4{wne .} ==> Nr10c4 ≠ 0
whip[1]: Br10c6{nw .} ==> Vr10c7 ≠ 1, Pr10c7 ≠ ns, Pr10c7 ≠ sw, Nr10c6 ≠ 0, Nr10c6 ≠ 3
whip[1]: Pr10c7{nw .} ==> Br9c6 ≠ ne, Br9c6 ≠ ns, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c6 ≠ e, Br9c6 ≠ s
whip[1]: Pr10c6{sw .} ==> Br9c6 ≠ esw
whip[1]: Vr9c4{0 .} ==> Pr9c4 ≠ se, Pr10c4 ≠ ne, Pr10c4 ≠ ns, Pr10c4 ≠ nw, Br9c3 ≠ e, Br9c3 ≠ ne, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ esw, Br9c3 ≠ wne, Br9c3 ≠ nes, Br9c4 ≠ w
whip[1]: Br9c4{s .} ==> Pr9c5 ≠ sw
whip[1]: Pr9c4{nw .} ==> Hr9c4 ≠ 1, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ swn, Br8c3 ≠ wne, Br8c3 ≠ e, Br8c3 ≠ s, Br9c4 ≠ n
whip[1]: Br9c4{s .} ==> Pr9c5 ≠ nw, Pr9c5 ≠ ew
whip[1]: Vr10c2{1 .} ==> Br10c2 ≠ nes, Br10c2 ≠ o, Pr11c2 ≠ o, Pr11c2 ≠ ew, Pr10c2 ≠ nw, Pr10c2 ≠ ew, Br10c1 ≠ swn, Br10c2 ≠ n, Br10c2 ≠ e, Br10c2 ≠ s, Br10c2 ≠ ne, Br10c2 ≠ ns, Br10c2 ≠ se
B-single: Br10c1 = esw
whip[1]: Br10c1{esw .} ==> Pr10c1 ≠ ne, Pr11c2 ≠ ne, Pr11c1 ≠ o, Hr10c1 ≠ 1
H-single: Hr10c1 = 0
P-single: Pr11c1 = ne
P-single: Pr11c2 = nw
P-single: Pr10c1 = ns
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = in
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
whip[1]: Hr10c1{0 .} ==> Br9c1 ≠ s, Br9c1 ≠ ns, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ nes
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{nw .} ==> Br11c2 ≠ n, Br10c2 ≠ sw, Br10c2 ≠ esw, Br10c2 ≠ swn
B-single: Br11c2 = o
whip[1]: Br11c2{o .} ==> Pr11c3 ≠ nw, Pr11c3 ≠ ew
w[1]-1-in-r10c3-symmetric-sw-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ o
w[1]-1-in-r9c4-asymmetric-sw-corner ==> Pr9c5 ≠ se, Pr9c5 ≠ ns
whip[1]: Pr9c5{ne .} ==> Br8c5 ≠ s, Br8c5 ≠ w, Br8c5 ≠ ns, Br8c5 ≠ nw, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ wne, Br8c5 ≠ nes, Br9c4 ≠ e, Br9c5 ≠ w
B-single: Br9c4 = s
whip[1]: Br9c4{s .} ==> Pr10c5 ≠ ns, Pr10c5 ≠ ne, Hr10c4 ≠ 0
H-single: Hr10c4 = 1
whip[1]: Hr10c4{1 .} ==> Br10c4 ≠ e, Br10c4 ≠ s, Br10c4 ≠ ew, Br10c4 ≠ sw
whip[1]: Br10c4{wne .} ==> Nr10c4 ≠ 1
whip[1]: Br9c5{s .} ==> Pr9c6 ≠ sw
whip[1]: Pr10c4{ew .} ==> Br10c3 ≠ s, Br10c3 ≠ w
whip[1]: Br10c3{e .} ==> Pr11c3 ≠ ne, Pr11c4 ≠ nw, Pr11c4 ≠ ew, Pr10c3 ≠ ns, Pr10c3 ≠ se, Pr10c3 ≠ sw
P-single: Pr11c3 = o
whip[1]: Pr11c3{o .} ==> Br11c3 ≠ n, Br10c2 ≠ ew, Br10c2 ≠ wne
B-single: Br11c3 = o
whip[1]: Br10c2{nw .} ==> Nr10c2 ≠ 0, Nr10c2 ≠ 3
whip[1]: Pr11c4{ne .} ==> Br10c4 ≠ ns, Br10c4 ≠ wne
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ n, Br9c1 ≠ o, Br9c1 ≠ ne
whip[1]: Br9c1{wne .} ==> Pr9c1 ≠ o, Pr9c1 ≠ ne, Nr9c1 ≠ 0
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Pr10c2{se .} ==> Br9c2 ≠ n, Br9c2 ≠ e
whip[1]: Br9c2{w .} ==> Pr9c2 ≠ ne, Pr10c3 ≠ ne, Pr10c3 ≠ nw, Pr9c2 ≠ se, Pr9c2 ≠ ew, Pr9c3 ≠ sw
whip[1]: Pr9c3{ne .} ==> Br8c2 ≠ s, Br8c2 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ nes, Br8c3 ≠ w, Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ nes, Br9c3 ≠ w, Br9c3 ≠ nw, Br9c3 ≠ sw, Br9c3 ≠ swn
whip[1]: Br9c3{ns .} ==> Nr9c3 ≠ 3
whip[1]: Br8c3{esw .} ==> Pr8c3 ≠ se, Pr8c4 ≠ sw, Nr8c3 ≠ 2
whip[1]: Hr1c6{0 .} ==> Br1c6 ≠ nes, Br0c6 ≠ s, Pr1c6 ≠ se, Pr1c6 ≠ ew, Pr1c7 ≠ ew, Pr1c7 ≠ sw, Br1c6 ≠ n, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ swn, Br1c6 ≠ wne
w[1]-3-in-r2c8-symmetric-nw-corner ==> Vr2c8 = 1, Hr2c8 = 1
w[1]-2-in-r1c7-open-se-corner ==> Hr1c7 = 1, Vr1c7 = 1
w[1]-3-in-r2c8-closed-nw-corner ==> Pr3c9 ≠ nw, Pr3c9 ≠ o
P-single: Pr1c7 = se
B-single: Br0c6 = o
w[1]-1-in-r1c5-symmetric-ne-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
vertical-line-r1{c6 c7} ==> Ir1c7 = in
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
horizontal-line-{r1 r2}c8 ==> Ir2c8 = out
vertical-line-r2{c7 c8} ==> Ir2c7 = in
different-colours-in-{r2 r3}c8 ==> Hr3c8 = 1
w[1]-3-in-r2c8-closed-sw-corner ==> Pr2c9 ≠ sw, Pr2c9 ≠ ne, Pr2c9 ≠ o
P-single: Pr2c8 = se
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
no-vertical-line-r2{c8 c9} ==> Ir2c9 = out
same-colour-in-r2{c9 c10} ==> Vr2c10 = 0
different-colours-in-{r2 r3}c9 ==> Hr3c9 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
whip[1]: Vr2c8{1 .} ==> Pr3c8 ≠ ew, Pr3c8 ≠ sw, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ sw, Br2c8 ≠ nes
whip[1]: Pr3c8{ns .} ==> Br2c7 ≠ se, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c7 ≠ nes, Br3c8 ≠ s, Br3c8 ≠ nw, Br3c8 ≠ swn, Br3c7 ≠ n, Br3c8 ≠ o
whip[1]: Br3c8{sw .} ==> Nr3c8 ≠ 0, Nr3c8 ≠ 3
whip[1]: Br3c7{esw .} ==> Pr3c7 ≠ se, Pr3c7 ≠ ew
whip[1]: Pr3c7{nw .} ==> Vr2c7 ≠ 0, Br2c6 ≠ w, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ sw, Br2c6 ≠ swn, Br2c7 ≠ ne, Br3c6 ≠ w, Br3c6 ≠ ne, Br3c6 ≠ wne, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ s, Br3c6 ≠ o
V-single: Vr2c7 = 1
B-single: Br2c7 = ew
vertical-line-r2{c6 c7} ==> Ir2c6 = out
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
same-colour-in-{r1 r2}c6 ==> Hr2c6 = 0
whip[1]: Vr2c7{1 .} ==> Pr2c7 ≠ ew
P-single: Pr2c7 = ns
whip[1]: Pr2c7{ns .} ==> Br1c6 ≠ o, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ se, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ se, Br1c7 ≠ sw, Br2c6 ≠ ne, Br2c6 ≠ wne, Br2c6 ≠ nes
whip[1]: Br2c6{esw .} ==> Pr2c6 ≠ ne, Pr2c6 ≠ se, Pr2c6 ≠ ew, Nr2c6 ≠ 0
whip[1]: Br1c6{ew .} ==> Nr1c6 ≠ 0, Nr1c6 ≠ 3
whip[1]: Vr2c6{0 .} ==> Pr2c6 ≠ ns, Pr2c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ nw, Br2c5 ≠ e, Br2c5 ≠ ne, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c6 ≠ ew, Br2c6 ≠ esw
w[1]-1-in-r1c5-symmetric-se-corner ==> Pr1c5 ≠ se, Pr1c5 ≠ o
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ esw, Br1c5 ≠ e, Br1c5 ≠ s
whip[1]: Br1c5{w .} ==> Pr2c6 ≠ nw, Pr1c6 ≠ sw, Pr2c5 ≠ se, Pr2c5 ≠ ew
P-single: Pr1c6 = o
P-single: Pr2c6 = o
whip[1]: Pr1c6{o .} ==> Br1c5 ≠ n, Br1c6 ≠ ew
B-single: Br1c6 = e
B-single: Br1c5 = w
whip[1]: Br1c6{e .} ==> Nr1c6 ≠ 2
N-single: Nr1c6 = 1
whip[1]: Br1c5{w .} ==> Pr1c5 ≠ ew
P-single: Pr1c5 = sw
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ swn
whip[1]: Br1c4{nes .} ==> Pr1c4 ≠ sw
whip[1]: Pr2c3{ew .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c3 ≠ sw, Br2c2 ≠ sw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ swn, Br2c3 ≠ wne, Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ w, Br1c3 ≠ ne, Br2c2 ≠ o, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ ne
whip[1]: Br2c2{swn .} ==> Nr2c2 ≠ 0
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 0
whip[1]: Br2c3{nes .} ==> Pr2c4 ≠ ew, Pr3c3 ≠ o, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Pr3c3 ≠ sw, Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ ns, Pr3c4 ≠ se, Pr3c4 ≠ ew, Pr3c4 ≠ sw
P-single: Pr3c4 = nw
whip[1]: Pr3c4{nw .} ==> Br3c3 ≠ s, Br3c3 ≠ e, Br3c3 ≠ o, Br2c4 ≠ s, Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Vr3c4 ≠ 1, Hr3c4 ≠ 1, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ se, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ nes, Br3c3 ≠ w, Br3c3 ≠ ne, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ wne, Br3c3 ≠ nes
whip[1]: Br3c3{swn .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Nr3c3 ≠ 0
whip[1]: Br2c4{wne .} ==> Pr3c5 ≠ nw, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Nr2c4 ≠ 0
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ se, Br2c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c2 ≠ ne
whip[1]: Pr2c4{se .} ==> Br1c3 ≠ ns, Br1c3 ≠ se, Br2c3 ≠ nes
B-single: Br2c3 = esw
whip[1]: Br2c3{esw .} ==> Pr3c3 ≠ ew, Pr3c3 ≠ se, Pr2c3 ≠ ew
P-single: Pr2c3 = ns
P-single: Pr3c3 = ne
whip[1]: Pr2c3{ns .} ==> Br2c2 ≠ n, Vr1c3 ≠ 0, Hr2c2 ≠ 1, Br1c2 ≠ s, Br1c2 ≠ ns, Br1c2 ≠ sw, Br1c2 ≠ swn, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ swn
H-single: Hr2c2 = 0
V-single: Vr1c3 = 1
whip[1]: Hr2c2{0 .} ==> Pr2c2 ≠ ne, Pr2c2 ≠ ew
whip[1]: Pr2c2{sw .} ==> Vr2c2 ≠ 0, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c1 ≠ swn, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ ns, Br2c2 ≠ e
V-single: Vr2c2 = 1
B-single: Br2c2 = ew
whip[1]: Vr2c2{1 .} ==> Pr3c2 ≠ o, Pr3c2 ≠ se, Pr3c2 ≠ ew, Pr3c2 ≠ sw
whip[1]: Pr3c2{nw .} ==> Br3c1 ≠ ne, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ swn
whip[1]: Br2c2{ew .} ==> Nr2c2 ≠ 3, Nr2c2 ≠ 1, Pr3c2 ≠ ne
N-single: Nr2c2 = 2
whip[1]: Pr3c2{nw .} ==> Br3c1 ≠ w, Br3c1 ≠ sw, Br3c2 ≠ ns, Br3c1 ≠ o, Br3c1 ≠ s, Br3c2 ≠ n
whip[1]: Br3c1{swn .} ==> Nr3c1 ≠ 0
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
whip[1]: Vr1c3{1 .} ==> Pr1c3 ≠ ew
whip[1]: Pr3c3{ne .} ==> Br3c2 ≠ e, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c3 ≠ nw, Br3c3 ≠ swn
whip[1]: Br3c3{ns .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ nw, Nr3c3 ≠ 3
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 3
whip[1]: Pr2c6{o .} ==> Br2c5 ≠ n, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ swn
whip[1]: Br2c5{sw .} ==> Nr2c5 ≠ 3
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ w, Br2c4 ≠ wne
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 1, Nr2c4 ≠ 3
N-single: Nr2c4 = 2
whip[1]: Br2c6{se .} ==> Nr2c6 ≠ 3
whip[1]: Br3c6{ew .} ==> Nr3c6 ≠ 0, Nr3c6 ≠ 3
whip[1]: Hr2c8{1 .} ==> Br1c8 ≠ o, Pr2c9 ≠ ns, Pr2c9 ≠ se, Br1c8 ≠ w, Br1c8 ≠ ne, Br1c8 ≠ wne, Br2c8 ≠ esw
whip[1]: Br1c8{nes .} ==> Pr1c8 ≠ se, Nr1c8 ≠ 0
P-single: Pr1c8 = ew
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ s, Br1c7 ≠ ew, Br1c8 ≠ sw
B-single: Br1c8 = nes
B-single: Br1c7 = nw
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 2, Nr1c8 ≠ 1, Pr2c9 ≠ ew, Pr1c9 ≠ o
N-single: Nr1c8 = 3
P-single: Pr1c9 = sw
P-single: Pr2c9 = nw
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ s, Br1c9 ≠ e, Br1c9 ≠ o, Br1c9 ≠ se
whip[1]: Br1c9{esw .} ==> Nr1c9 ≠ 0
whip[1]: Pr2c9{nw .} ==> Br1c9 ≠ sw, Br1c9 ≠ esw, Br2c8 ≠ wne, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c9 ≠ swn, Br2c9 ≠ wne
B-single: Br2c8 = swn
whip[1]: Br2c8{swn .} ==> Pr3c9 ≠ ne, Pr3c8 ≠ ns
P-single: Pr3c8 = ne
P-single: Pr3c9 = ew
whip[1]: Pr3c8{ne .} ==> Br3c7 ≠ e, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c8 ≠ w, Br3c8 ≠ sw
whip[1]: Br3c8{ns .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ ns, Pr4c8 ≠ nw
whip[1]: Br3c7{sw .} ==> Nr3c7 ≠ 3
whip[1]: Pr3c9{ew .} ==> Br3c9 ≠ o, Br2c9 ≠ e
B-single: Br2c9 = s
B-single: Br3c9 = n
whip[1]: Br2c9{s .} ==> Nr2c9 ≠ 3, Nr2c9 ≠ 2, Pr3c10 ≠ ne, Pr2c10 ≠ ns, Pr2c10 ≠ nw, Pr2c10 ≠ se, Pr2c10 ≠ ew, Pr2c10 ≠ sw
N-single: Nr2c9 = 1
P-single: Pr3c10 = ew
whip[1]: Pr3c10{ew .} ==> Br2c10 ≠ sw, Br2c10 ≠ swn
whip[1]: Br2c10{ns .} ==> Nr2c10 ≠ 3
whip[1]: Br3c9{n .} ==> Nr3c9 ≠ 0
N-single: Nr3c9 = 1
whip[1]: Br1c9{ew .} ==> Nr1c9 ≠ 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Hr4c7{0 .} ==> Pr4c7 ≠ ne, Pr4c7 ≠ se, Pr4c8 ≠ ew, Pr4c8 ≠ sw, Br3c7 ≠ s, Br3c7 ≠ sw, Br4c7 ≠ n, Br4c7 ≠ ne, Br4c7 ≠ nw, Br4c7 ≠ wne
whip[1]: Br4c7{ew .} ==> Nr4c7 ≠ 3
whip[1]: Br3c7{w .} ==> Nr3c7 ≠ 2
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c1{0 .} ==> Pr1c2 ≠ sw, Br0c1 ≠ s, Pr1c1 ≠ se, Pr1c2 ≠ ew
P-single: Pr1c1 = o
B-single: Br0c1 = o
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ew
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 2
whip[1]: Vr1c1{0 .} ==> Pr2c1 ≠ ns, Br1c0 ≠ e, Pr2c1 ≠ ne
B-single: Br1c0 = o
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ ne, Br2c1 ≠ ew, Br2c1 ≠ esw, Br2c1 ≠ nes
whip[1]: Br2c1{wne .} ==> Pr3c1 ≠ ne
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ ns, Br3c1 ≠ n
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Vr1c10{0 .} ==> Br1c9 ≠ ew, Vr1c10 ≠ 1, Pr1c10 ≠ se, Pr2c10 ≠ ne
P-single: Pr2c10 = o
P-single: Pr1c10 = o
B-single: Br1c9 = w
whip[1]: Pr2c10{o .} ==> Hr2c10 ≠ 1, Br2c10 ≠ ns
B-single: Br2c10 = s
whip[1]: Br2c10{s .} ==> Nr2c10 ≠ 2, Pr2c11 ≠ nw
N-single: Nr2c10 = 1
P-single: Pr2c11 = o
whip[1]: Pr2c11{o .} ==> Vr1c11 ≠ 1
whip[1]: Pr1c10{o .} ==> Hr1c10 ≠ 1
whip[1]: Br1c9{w .} ==> Nr1c9 ≠ 2
N-single: Nr1c9 = 1
whip[1]: Vr1c11{0 .} ==> Pr1c11 ≠ sw, Br1c11 ≠ w
P-single: Pr1c11 = o
B-single: Br1c11 = o
whip[1]: Hr1c10{0 .} ==> Br0c10 ≠ s
B-single: Br0c10 = o
whip[1]: Vr3c5{0 .} ==> Br3c5 ≠ esw, Vr3c5 ≠ 1, Pr3c5 ≠ ns, Pr3c5 ≠ se, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw, Br3c5 ≠ w, Br3c5 ≠ nw
whip[1]: Pr3c5{ne .} ==> Br2c5 ≠ s, Br2c5 ≠ w
whip[1]: Br2c5{sw .} ==> Nr2c5 ≠ 1
whip[1]: Hr4c4{0 .} ==> Br4c4 ≠ nes, Hr4c4 ≠ 1, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr4c5 ≠ ew, Pr4c5 ≠ sw, Br4c4 ≠ n, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ swn, Br4c4 ≠ wne
w[1]-1-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ se, Br4c2 ≠ esw, Br4c2 ≠ nes, Br5c2 ≠ sw, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ se, Br4c3 ≠ n, Br4c3 ≠ e, Br5c2 ≠ o, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ ne
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0
whip[1]: Br4c3{w .} ==> Hr4c3 ≠ 1, Vr4c4 ≠ 1, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Pr4c3 ≠ se, Pr4c3 ≠ ew, Pr4c4 ≠ sw
V-single: Vr4c4 = 0
H-single: Hr4c3 = 0
P-single: Pr4c4 = o
whip[1]: Vr4c4{0 .} ==> Br4c4 ≠ w, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 3
whip[1]: Hr4c3{0 .} ==> Br3c3 ≠ ns
B-single: Br3c3 = n
whip[1]: Br3c3{n .} ==> Nr3c3 ≠ 2
N-single: Nr3c3 = 1
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ swn, Br4c2 ≠ n, Br4c2 ≠ e, Br4c2 ≠ ns
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ ne
whip[1]: Vr4c5{0 .} ==> Br4c4 ≠ se, Vr4c5 ≠ 1, Pr4c5 ≠ se, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Br4c4 ≠ e
P-single: Pr4c5 = o
whip[1]: Pr4c5{o .} ==> Hr4c5 ≠ 1, Br3c5 ≠ se, Br3c5 ≠ nes
whip[1]: Br3c5{n .} ==> Vr3c6 ≠ 1, Pr3c6 ≠ se, Pr3c6 ≠ sw, Pr4c6 ≠ nw, Nr3c5 ≠ 2, Nr3c5 ≠ 3
V-single: Vr3c6 = 0
P-single: Pr4c6 = o
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ nw, Br3c6 ≠ ew
whip[1]: Br3c6{e .} ==> Nr3c6 ≠ 2
N-single: Nr3c6 = 1
whip[1]: Br4c4{s .} ==> Nr4c4 ≠ 2
whip[1]: Hr5c5{0 .} ==> Br5c5 ≠ nes, Hr5c5 ≠ 1, Pr5c5 ≠ se, Pr5c5 ≠ ew, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Br5c5 ≠ n, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ swn, Br5c5 ≠ wne
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ ne, Br5c6 ≠ ew
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 2
whip[1]: Vr4c8{0 .} ==> Br4c7 ≠ ew, Vr4c8 ≠ 1, Pr4c8 ≠ se, Pr5c8 ≠ ne, Br4c7 ≠ e
P-single: Pr5c8 = o
P-single: Pr4c8 = o
whip[1]: Pr5c8{o .} ==> Hr5c8 ≠ 1
whip[1]: Pr4c8{o .} ==> Hr4c8 ≠ 1, Br3c8 ≠ ns
B-single: Br3c8 = n
whip[1]: Br3c8{n .} ==> Pr4c9 ≠ sw, Nr3c8 ≠ 2
N-single: Nr3c8 = 1
P-single: Pr4c9 = o
whip[1]: Pr4c9{o .} ==> Vr4c9 ≠ 1, Br4c9 ≠ ew
B-single: Br4c9 = e
whip[1]: Br4c9{e .} ==> Nr4c9 ≠ 2, Pr5c9 ≠ nw
N-single: Nr4c9 = 1
P-single: Pr5c9 = o
whip[1]: Br4c7{w .} ==> Nr4c7 ≠ 2
whip[1]: Vr5c4{0 .} ==> Br5c3 ≠ ew, Vr5c4 ≠ 1, Pr5c4 ≠ se, Pr6c4 ≠ ne, Pr6c4 ≠ ns
whip[1]: Vr5c5{0 .} ==> Br5c5 ≠ esw, Vr5c5 ≠ 1, Pr5c5 ≠ sw, Pr6c5 ≠ ne, Pr6c5 ≠ ns, Pr6c5 ≠ nw, Br5c5 ≠ w, Br5c5 ≠ ew, Br5c5 ≠ sw
P-single: Pr5c5 = o
whip[1]: Pr5c5{o .} ==> Hr5c4 ≠ 1, Br4c4 ≠ s
B-single: Br4c4 = o
whip[1]: Br4c4{o .} ==> Pr5c4 ≠ ew, Nr4c4 ≠ 1
N-single: Nr4c4 = 0
P-single: Pr6c3 = ne
P-single: Pr5c4 = o
w[1]-1-in-r4c3-symmetric-se-corner ==> Pr4c3 ≠ o
P-single: Pr4c3 = sw
w[1]-1-in-r6c4-asymmetric-nw-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ew, Pr7c5 ≠ ns, Pr7c5 ≠ ne
whip[1]: Pr6c3{ne .} ==> Br6c3 ≠ o, Br6c2 ≠ n, Br5c2 ≠ n, Vr6c3 ≠ 1, Vr5c3 ≠ 0, Hr6c3 ≠ 0, Hr6c2 ≠ 1, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c3 ≠ ns, Br5c3 ≠ nw, Br6c2 ≠ e, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ e, Br6c3 ≠ s, Br6c3 ≠ w, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne
H-single: Hr6c2 = 0
H-single: Hr6c3 = 1
V-single: Vr5c3 = 1
V-single: Vr6c3 = 0
B-single: Br5c3 = sw
whip[1]: Hr6c2{0 .} ==> Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew
whip[1]: Vr5c3{1 .} ==> Pr5c3 ≠ ew
P-single: Pr5c3 = ns
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ o, Vr4c3 ≠ 0, Hr5c3 ≠ 1, Hr5c2 ≠ 1, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ sw, Br4c3 ≠ s
H-single: Hr5c2 = 0
H-single: Hr5c3 = 0
V-single: Vr4c3 = 1
B-single: Br4c3 = w
whip[1]: Hr5c2{0 .} ==> Pr5c2 ≠ ne, Pr5c2 ≠ se, Pr5c2 ≠ ew
whip[1]: Br4c2{wne .} ==> Hr4c2 ≠ 0, Pr4c2 ≠ o, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Pr4c2 ≠ sw, Nr4c2 ≠ 0, Nr4c2 ≠ 1
H-single: Hr4c2 = 1
whip[1]: Hr4c2{1 .} ==> Br3c2 ≠ o, Br3c2 ≠ w
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ se, Br3c1 ≠ esw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c1 ≠ ne
whip[1]: Br3c1{swn .} ==> Pr4c1 ≠ se
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ nw, Br4c1 ≠ swn
whip[1]: Vr6c3{0 .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ns, Pr7c3 ≠ nw
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Br6c2{sw .} ==> Nr6c2 ≠ 3
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 3
whip[1]: Pr7c5{se .} ==> Br6c5 ≠ sw, Br7c4 ≠ ne, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ nes, Br6c4 ≠ e, Br6c4 ≠ s, Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Br6c4{w .} ==> Hr7c4 ≠ 1, Vr6c5 ≠ 1, Pr7c4 ≠ ne, Pr7c5 ≠ nw, Pr6c5 ≠ se, Pr6c5 ≠ sw, Pr7c4 ≠ se, Pr7c4 ≠ ew
V-single: Vr6c5 = 0
H-single: Hr7c4 = 0
w[1]-diagonal-1-1-in-{r6c4...r7c3}-with-no-ne-outer-sides ==> Hr8c3 = 0, Vr7c3 = 0
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ nw, Br6c5 ≠ ew
whip[1]: Hr7c4{0 .} ==> Br7c4 ≠ n, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ swn
whip[1]: Hr8c3{0 .} ==> Pr8c3 ≠ ne, Pr8c3 ≠ ew, Pr8c4 ≠ nw, Pr8c4 ≠ ew, Br7c3 ≠ s, Br8c3 ≠ n
whip[1]: Br8c3{esw .} ==> Nr8c3 ≠ 1
whip[1]: Br7c3{w .} ==> Pr7c3 ≠ se, Pr7c4 ≠ sw
whip[1]: Pr7c4{nw .} ==> Br6c3 ≠ ns
whip[1]: Pr7c3{ew .} ==> Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ ne, Br7c3 ≠ w
whip[1]: Br7c3{e .} ==> Pr7c4 ≠ o, Pr8c3 ≠ ns
w[1]-1-in-r6c4-asymmetric-sw-corner ==> Pr6c5 ≠ ew
P-single: Pr7c5 = se
P-single: Pr7c6 = nw
P-single: Pr6c5 = o
whip[1]: Pr7c5{se .} ==> Br7c5 ≠ s, Br7c5 ≠ e, Br7c5 ≠ o, Br7c4 ≠ w, Br7c4 ≠ s, Br7c4 ≠ o, Vr7c5 ≠ 0, Hr7c5 ≠ 0, Br6c5 ≠ ne, Br7c4 ≠ sw, Br7c5 ≠ se
H-single: Hr7c5 = 1
V-single: Vr7c5 = 1
whip[1]: Vr7c5{1 .} ==> Pr8c5 ≠ o, Pr8c5 ≠ se, Pr8c5 ≠ ew, Pr8c5 ≠ sw
whip[1]: Pr8c5{nw .} ==> Br8c5 ≠ swn
whip[1]: Br7c5{wne .} ==> Pr8c6 ≠ nw, Nr7c5 ≠ 0, Nr7c5 ≠ 1
whip[1]: Br7c4{esw .} ==> Nr7c4 ≠ 0
whip[1]: Pr7c6{nw .} ==> Br7c6 ≠ n, Br6c6 ≠ s, Br6c6 ≠ o, Vr7c6 ≠ 1, Vr6c6 ≠ 0, Hr7c6 ≠ 1, Br6c5 ≠ ns, Br6c6 ≠ sw, Br7c5 ≠ wne, Br7c6 ≠ ns, Br7c6 ≠ nw, Br7c6 ≠ ew, Br7c6 ≠ esw, Br7c6 ≠ swn
H-single: Hr7c6 = 0
V-single: Vr6c6 = 1
V-single: Vr7c6 = 0
w[0]-adjacent-3-in-r6c7-nolines-west ==> Vr7c7 = 1
B-single: Br6c6 = w
B-single: Br6c5 = se
vertical-line-r7{c6 c7} ==> Ir7c6 = out
no-vertical-line-r7{c5 c6} ==> Ir7c5 = out
vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
no-horizontal-line-{r3 r4}c6 ==> Ir3c6 = in
no-vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
vertical-line-r2{c3 c4} ==> Ir2c4 = in
vertical-line-r2{c1 c2} ==> Ir2c1 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = in
no-horizontal-line-{r7 r8}c4 ==> Ir8c4 = in
no-vertical-line-r8{c3 c4} ==> Ir8c3 = in
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = in
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
no-vertical-line-r8{c4 c5} ==> Ir8c5 = in
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = in
no-vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-vertical-line-r9{c2 c3} ==> Ir9c2 = in
no-horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
no-vertical-line-r9{c4 c5} ==> Ir9c5 = in
horizontal-line-{r9 r10}c4 ==> Ir10c4 = out
same-colour-in-{r10 r11}c4 ==> Hr11c4 = 0
different-colours-in-r10{c4 c5} ==> Hr10c5 = 1
w[1]-3-in-r10c5-closed-sw-corner ==> Pr10c6 ≠ sw
same-colour-in-r10{c3 c4} ==> Vr10c4 = 0
w[1]-diagonal-1-1-in-{r10c3...r9c2}-with-no-se-outer-sides ==> Vr9c2 = 0
same-colour-in-{r8 r9}c5 ==> Hr9c5 = 0
same-colour-in-r8{c2 c3} ==> Vr8c3 = 0
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
w[1]-2-in-r7c2-open-se-corner ==> Hr7c2 = 1, Vr7c2 = 1, Hr7c1 = 0, Vr6c2 = 0
w[1]-3-in-r5c1-isolated-at-se-corner ==> Vr5c2 = 1, Hr6c1 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
P-single: Pr7c3 = ew
w[1]-1-in-r7c3-asymmetric-nw-corner ==> Pr8c4 ≠ ns, Pr8c4 ≠ ne
vertical-line-r5{c1 c2} ==> Ir5c1 = in
horizontal-line-{r5 r6}c1 ==> Ir6c1 = out
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = out
same-colour-in-r7{c0 c1} ==> Vr7c1 = 0
w[1]-2-in-r7c1-open-nw-corner ==> Hr8c1 = 1, Vr8c2 = 0
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ o
different-colours-in-{r9 r10}c2 ==> Hr10c2 = 1
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
same-colour-in-{r8 r9}c3 ==> Hr9c3 = 0
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
same-colour-in-r7{c3 c4} ==> Vr7c4 = 0
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
same-colour-in-{r5 r6}c5 ==> Hr6c5 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-r6{c3 c4} ==> Hr6c4 = 1
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
w[1]-3-in-r1c4-hit-by-verti-line-at-se ==> Vr1c4 = 1
w[1]-3-in-r2c3-hit-by-verti-line-at-ne ==> Hr2c4 = 0
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ nw
P-single: Pr2c5 = ns
P-single: Pr3c5 = ne
P-single: Pr2c4 = ns
P-single: Pr1c3 = sw
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
different-colours-in-{r2 r3}c6 ==> Hr3c6 = 1
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1

LOOP[12]: Vr7c7-Hr7c7-Vr6c8-Hr6c7-Vr5c7-Hr5c6-Vr5c6-Vr6c6-Hr7c5-Vr7c5-Hr8c5- ==> Hr8c6 = 0
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = out
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
whip[1]: Hr7c6{0 .} ==> Pr7c7 ≠ ew
P-single: Pr7c7 = se
whip[1]: Pr7c7{se .} ==> Br7c7 ≠ n, Br7c7 ≠ ns
whip[1]: Br7c7{swn .} ==> Pr8c7 ≠ o, Pr8c7 ≠ se, Pr8c7 ≠ ew, Nr7c7 ≠ 1
whip[1]: Pr8c7{nw .} ==> Br8c6 ≠ ne, Br8c7 ≠ wne
whip[1]: Br8c7{sw .} ==> Pr9c7 ≠ ns, Pr9c7 ≠ nw, Nr8c7 ≠ 3
whip[1]: Pr8c6{sw .} ==> Br7c5 ≠ nw, Br8c6 ≠ nw, Br8c6 ≠ se
B-single: Br7c5 = swn
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 2, Pr8c6 ≠ ns, Pr8c6 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ns
N-single: Nr7c5 = 3
P-single: Pr8c5 = ne
whip[1]: Pr8c5{ne .} ==> Br8c5 ≠ o, Vr8c5 ≠ 1, Hr8c4 ≠ 1, Br7c4 ≠ se, Br7c4 ≠ esw, Br8c5 ≠ e, Br8c5 ≠ sw, Br8c5 ≠ esw
whip[1]: Br8c5{ne .} ==> Pr9c5 ≠ ne, Pr9c6 ≠ nw, Nr8c5 ≠ 0, Nr8c5 ≠ 3, Pr9c6 ≠ ew
P-single: Pr9c5 = o
w[1]-1-in-r9c5-symmetric-nw-corner ==> Pr10c6 ≠ se
P-single: Pr10c6 = ns
whip[1]: Pr9c5{o .} ==> Br9c5 ≠ n
whip[1]: Pr10c6{ns .} ==> Br9c6 ≠ n, Br9c6 ≠ o, Vr9c6 ≠ 0, Hr10c6 ≠ 1, Br9c5 ≠ s, Br9c6 ≠ se, Br9c6 ≠ nes, Br10c5 ≠ nes, Br10c6 ≠ nw
H-single: Hr10c6 = 0
V-single: Vr9c6 = 1
B-single: Br10c6 = w
B-single: Br10c5 = esw
B-single: Br9c5 = e
vertical-line-r9{c5 c6} ==> Ir9c6 = out
same-colour-in-r9{c6 c7} ==> Vr9c7 = 0
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
w[1]-diagonal-3-2-in-{r7c5...r8c6}-non-closed-se-corner ==> Vr8c7 = 1
w[1]-1-in-r9c5-asymmetric-ne-corner ==> Pr10c5 ≠ ew
P-single: Pr10c5 = sw
vertical-line-r8{c6 c7} ==> Ir8c7 = in
same-colour-in-r8{c7 c8} ==> Vr8c8 = 0
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1

LOOP[76]: Vr2c2-Vr1c2-Hr1c2-Vr1c3-Vr2c3-Hr3c3-Vr2c4-Vr1c4-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Hr1c8-Vr1c9-Hr2c8-Vr2c8-Hr3c8-Hr3c9-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Vr5c10-Hr6c9-Vr6c9-Hr7c9-Hr7c10-Vr7c11-Hr8c10-Vr8c10-Vr9c10-Vr10c10-Hr11c9-Vr10c9-Vr9c9-Hr9c8-Hr9c7-Vr8c7-Vr7c7-Hr7c7-Vr6c8-Hr6c7-Vr5c7-Hr5c6-Vr5c6-Vr6c6-Hr7c5-Vr7c5-Hr8c5-Vr8c6-Vr9c6-Vr10c6-Hr11c5-Vr10c5-Hr10c4-Hr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2- ==> Vr3c2 = 0
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1

LOOP[78]: Vr3c1-Hr3c1-Vr2c2-Vr1c2-Hr1c2-Vr1c3-Vr2c3-Hr3c3-Vr2c4-Vr1c4-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Hr1c8-Vr1c9-Hr2c8-Vr2c8-Hr3c8-Hr3c9-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Vr5c10-Hr6c9-Vr6c9-Hr7c9-Hr7c10-Vr7c11-Hr8c10-Vr8c10-Vr9c10-Vr10c10-Hr11c9-Vr10c9-Vr9c9-Hr9c8-Hr9c7-Vr8c7-Vr7c7-Hr7c7-Vr6c8-Hr6c7-Vr5c7-Hr5c6-Vr5c6-Vr6c6-Hr7c5-Vr7c5-Hr8c5-Vr8c6-Vr9c6-Vr10c6-Hr11c5-Vr10c5-Hr10c4-Hr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2- ==> Hr4c1 = 0
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = in
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1

LOOP[82]: Vr3c1-Hr3c1-Vr2c2-Vr1c2-Hr1c2-Vr1c3-Vr2c3-Hr3c3-Vr2c4-Vr1c4-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Hr1c8-Vr1c9-Hr2c8-Vr2c8-Hr3c8-Hr3c9-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Vr5c10-Hr6c9-Vr6c9-Hr7c9-Hr7c10-Vr7c11-Hr8c10-Vr8c10-Vr9c10-Vr10c10-Hr11c9-Vr10c9-Vr9c9-Hr9c8-Hr9c7-Vr8c7-Vr7c7-Hr7c7-Vr6c8-Hr6c7-Vr5c7-Hr5c6-Vr5c6-Vr6c6-Hr7c5-Vr7c5-Hr8c5-Vr8c6-Vr9c6-Vr10c6-Hr11c5-Vr10c5-Hr10c4-Hr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2-Vr4c2-Vr5c2-Hr6c1-Vr5c1- ==> Vr4c1 = 1
same-colour-in-{r7 r8}c7 ==> Hr8c7 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXOOXXOO
OXOXOOXOOO
XXXXXXXXXX
XOXXXXXXXO
XOXXXOXXXO
OOOXXOOXOO
OXXXOOXXXX
XXXXXOXXXO
XXXXXOOOXO
XOOOXOOOXO

.   .———.   .———.   .   .———.———.   .   .
  1 |   | 2 | 3 | 1     | 2     |     0
.   .   .   .   .   .   .   .———.   .   .
    |   | 3 |   |       | 2 | 3
.———.   .———.   .———.———.   .———.———.———.
|             0                       3 |
.   .———.   .   .   .   .   .   .   .———.
|   |   | 1       0   1       0     |
.   .   .   .   .   .———.   .   .   .   .
| 3 |   | 2   0     |   | 2   0     | 1
.———.   .———.   .   .   .———.   .———.   .
            | 1   2 |       |   | 3
.   .———.———.   .———.   .———.   .———.———.
  2 | 2   1     |       |     0   1     |
.———.   .   .   .———.   .   .   .   .———.
|             0     | 2 |           |
.   .   .   .   .   .   .———.———.   .   .
|     1       1   1 |           |   | 1
.   .———.———.———.   .   .   .   .   .   .
| 3 |     1     | 3 |     0   1 |   | 1
.———.   .   .   .———.   .   .   .———.   .

init-time = 0.57s, solve-time = 44.84s, total-time = 45.41s
nb-facts=<Fact-196031>
Quasi-Loop max length = 82
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

