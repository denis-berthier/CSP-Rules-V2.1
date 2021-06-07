
(solve
10 10
2 . 2 2 2 . . . . 3
2 . 3 . . . 3 . 3 2
. 2 . 0 3 . . 0 . 3
2 . . 2 2 . . 2 . .
3 . . . 1 2 . . 2 2
1 3 2 . 1 3 . 3 . .
2 . . . . 3 2 . . 2
. 2 . 2 . 3 . 1 . .
. . 2 3 . 2 . 2 . .
. . . . . . . 1 2 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . 2 2 2 . . . . 3
2 . 3 . . . 3 . 3 2
. 2 . 0 3 . . 0 . 3
2 . . 2 2 . . 2 . .
3 . . . 1 2 . . 2 2
1 3 2 . 1 3 . 3 . .
2 . . . . 3 2 . . 2
. 2 . 2 . 3 . 1 . .
. . 2 3 . 2 . 2 . .
. . . . . . . 1 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.620903968811035
start solution 0.633506059646606
entering BRT
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[0]-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w0-adjacent-3-0-in-r3{c5 c4} ==> Vr3c6 = 1, Vr4c5 = 1, Vr2c5 = 1, Hr4c5 = 1, Hr3c5 = 1, Vr4c6 = 0, Vr2c6 = 0, Hr4c6 = 0, Hr3c6 = 0
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3-0-in-{r2c9...r3c8} ==> Vr2c9 = 1, Hr3c9 = 1
w[1]-diagonal-3-0-in-{r2c7...r3c8} ==> Vr2c8 = 1, Hr3c7 = 1
w[1]-diagonal-3-0-in-{r2c3...r3c4} ==> Vr2c4 = 1, Hr3c3 = 1
w[1]-diagonal-3s-in-{r5c1...r6c2} ==> Vr6c3 = 1, Vr5c1 = 1, Hr7c2 = 1, Hr5c1 = 1, Vr7c3 = 0, Vr4c1 = 0, Hr7c3 = 0
w[1]-diagonal-3s-in-{r2c9...r3c10} ==> Vr3c11 = 1, Hr4c10 = 1, Hr2c9 = 1, Vr4c11 = 0, Vr1c9 = 0, Hr2c8 = 0
w[1]-diagonal-3-2-3-in-{r6c8...r8c6} ==> Vr6c9 = 1, Vr8c6 = 1, Hr9c6 = 1, Hr6c8 = 1, Vr5c9 = 0, Vr9c6 = 0, Hr9c5 = 0, Hr6c9 = 0
w[1]-2-in-r5c9-open-sw-corner ==> Hr5c9 = 1, Vr5c10 = 1, Hr5c10 = 0, Vr4c10 = 0
w[1]-diagonal-3-2s-in-{r2c3...r4c1}-non-closed-sw-end ==> Hr2c3 = 1, Vr1c4 = 0, Hr2c4 = 0
w[1]-2-in-r1c4-open-sw-corner ==> Hr1c4 = 1, Vr1c5 = 1, Hr1c5 = 0
w[1]-3+diagonal-2s-0-in-{r6c6+r5c6...r4c5 r3c4} ==> Vr6c6 = 1, Hr7c6 = 1, Vr7c6 = 0, Hr7c5 = 0, Hr6c5 = 0
w[1]-3-in-r7c6-hit-by-verti-line-at-sw ==> Vr7c7 = 1, Hr8c5 = 0
w[0]-adjacent-3-in-r7c6-nolines-west ==> Hr8c6 = 1, Vr8c7 = 0, Vr6c7 = 0, Hr8c7 = 0, Hr7c7 = 0
w[1]-diagonal-3-2-in-{r8c6...r7c7}-non-closed-ne-corner ==> Vr7c8 = 1
w[1]-diagonal-3-2-in-{r6c6...r7c7}-non-closed-se-corner ==> Hr6c6 = 1, Vr5c6 = 0
w[1]-3-in-r3c10-hit-by-horiz-line-at-nw ==> Vr2c10 = 0
w[1]-adjacent-1-3-on-edge-in-{r6 r5}c1 ==> Vr6c2 = 0, Hr7c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c5 c6} ==> Vr6c5 = 0
w[1]-adjacent-1-2-on-edge-in-{r6 r7}c1-bkwd-diag-2s-3...r6c2 ==> Hr6c2 = 1, Vr8c1 = 1
w[1]-3-in-r8c6-closed-nw-corner ==> Pr9c7 ≠ se, Pr9c7 ≠ nw
w[1]-3-in-r7c6-closed-se-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ nw, Pr7c6 ≠ o
w[1]-3-in-r7c6-closed-ne-corner ==> Pr8c6 ≠ sw, Pr8c6 ≠ ne, Pr8c6 ≠ o
w[1]-3-in-r6c6-closed-sw-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ne
w[1]-3-in-r6c2-closed-se-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ o
w[1]-3-in-r6c2-closed-ne-corner ==> Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r3c10-closed-se-corner ==> Pr3c10 ≠ se, Pr3c10 ≠ nw, Pr3c10 ≠ o
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
w[1]-3-in-r3c5-closed-ne-corner ==> Pr4c5 ≠ ne
w[1]-3-in-r2c9-closed-sw-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-3-in-r2c7-closed-se-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ o
w[1]-3-in-r2c3-closed-se-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw
w[1]-3-in-r2c3-closed-ne-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
P-single: Pr1c4 = ew
w[1]-1-in-r8c8-asymmetric-nw-corner ==> Pr9c9 ≠ sw, Pr9c9 ≠ ew, Pr9c9 ≠ ns, Pr9c9 ≠ ne
w[1]-1-in-r6c5-asymmetric-se-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ ew, Pr6c5 ≠ ns, Pr6c5 ≠ ne
entering level Loop with <Fact-93541>
entering level Col with <Fact-93635>
no-vertical-line-r4{c10 c11} ==> Ir4c10 = out
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
horizontal-line-{r4 r5}c9 ==> Ir5c9 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
horizontal-line-{r5 r6}c8 ==> Ir6c8 = out
vertical-line-r6{c8 c9} ==> Ir6c9 = in
vertical-line-r5{c9 c10} ==> Ir5c10 = out
horizontal-line-{r3 r4}c10 ==> Ir3c10 = in
vertical-line-r1{c10 c11} ==> Ir1c10 = in
vertical-line-r8{c0 c1} ==> Ir8c1 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
horizontal-line-{r4 r5}c1 ==> Ir4c1 = out
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
vertical-line-r2{c3 c4} ==> Ir2c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
vertical-line-r3{c5 c6} ==> Ir3c6 = out
no-horizontal-line-{r2 r3}c6 ==> Ir2c6 = out
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = out
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
vertical-line-r4{c4 c5} ==> Ir4c4 = in
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
same-colour-in-{r1 r2}c5 ==> Hr2c5 = 0
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
w[1]-2-in-r5c10-open-ne-corner ==> Hr6c10 = 1, Vr6c10 = 0
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
Starting_init_links_with_<Fact-93760>
989 candidates, 7939 csp-links and 31393 links. Density = 6.43%
starting non trivial part of solution
Entering_level_W1_with_<Fact-172429>
whip[1]: Vr6c11{1 .} ==> Br6c10 ≠ swn, Br6c11 ≠ o, Br6c10 ≠ o, Pr7c11 ≠ o, Pr7c11 ≠ sw, Br6c10 ≠ n, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ sw
B-single: Br6c11 = w
whip[1]: Pr8c10{ew .} ==> Br7c10 ≠ sw, Br8c9 ≠ sw, Br8c9 ≠ wne, Br8c9 ≠ nes, Br7c10 ≠ ne, Br8c9 ≠ o, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ne
whip[1]: Br8c9{swn .} ==> Nr8c9 ≠ 0
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Vr6c10{0 .} ==> Br6c10 ≠ wne, Pr6c10 ≠ ns, Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Br6c9 ≠ e, Br6c9 ≠ ne, Br6c9 ≠ se, Br6c9 ≠ ew, Br6c9 ≠ esw, Br6c9 ≠ wne, Br6c9 ≠ nes, Br6c10 ≠ ew, Br6c10 ≠ esw
whip[1]: Pr6c10{ew .} ==> Br5c9 ≠ nw, Br5c9 ≠ se, Br5c10 ≠ nw, Br5c10 ≠ ew, Br6c10 ≠ se, Br5c10 ≠ ne, Br6c10 ≠ e
whip[1]: Br6c10{nes .} ==> Pr6c11 ≠ ns, Nr6c10 ≠ 1
P-single: Pr6c11 = sw
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ se
whip[1]: Br5c10{sw .} ==> Pr5c11 ≠ ns
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ ne, Br4c10 ≠ ns, Br4c10 ≠ ew, Br4c10 ≠ sw, Br4c10 ≠ swn, Br4c10 ≠ wne, Br4c10 ≠ e, Br4c10 ≠ s
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Hr1c3{1 .} ==> Br1c3 ≠ sw, Br0c3 ≠ o, Pr1c3 ≠ sw, Br1c3 ≠ se, Br1c3 ≠ ew
P-single: Pr1c3 = ew
B-single: Br0c3 = s
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ ne, Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ e, Br1c2 ≠ o, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c3 ≠ nw
whip[1]: Br1c3{ns .} ==> Pr2c3 ≠ ns
P-single: Pr2c3 = ew
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ ne, Br2c2 ≠ w, Br2c2 ≠ s, Br2c2 ≠ e, Br2c2 ≠ o, Br1c3 ≠ ne, Br1c2 ≠ n, Vr2c3 ≠ 1, Hr2c2 ≠ 0, Br1c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne
H-single: Hr2c2 = 1
V-single: Vr2c3 = 0
B-single: Br2c3 = nes
B-single: Br1c3 = ns
no-vertical-line-r2{c2 c3} ==> Ir2c2 = out
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
w[1]-2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1
P-single: Pr2c1 = ns
P-single: Pr1c1 = se

LOOP[6]: Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3- ==> Hr3c2 = 0
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
vertical-line-r1{c0 c1} ==> Ir1c1 = in
different-colours-in-r3{c2 c3} ==> Hr3c3 = 1
whip[1]: Hr2c2{1 .} ==> Pr2c2 ≠ o
P-single: Pr2c2 = se
whip[1]: Pr2c2{se .} ==> Br2c2 ≠ n, Br1c1 ≠ se, Br1c2 ≠ swn, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c2 ≠ ns
B-single: Br1c2 = ns
B-single: Br1c1 = nw
whip[1]: Br1c2{ns .} ==> Nr1c2 ≠ 3, Nr1c2 ≠ 1, Nr1c2 ≠ 0, Pr1c2 ≠ se
N-single: Nr1c2 = 2
P-single: Pr1c2 = ew
whip[1]: Br2c2{swn .} ==> Pr3c2 ≠ ew, Pr3c2 ≠ sw, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Nr2c2 ≠ 0, Nr2c2 ≠ 1
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ sw, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c2 ≠ ne, Br3c3 ≠ o, Br3c3 ≠ e, Br3c3 ≠ s, Br3c3 ≠ w
whip[1]: Br3c3{nes .} ==> Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ ns, Pr3c4 ≠ se, Nr3c3 ≠ 0
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn
whip[1]: Pr3c2{ns .} ==> Hr3c1 ≠ 1, Br2c1 ≠ se, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c1 ≠ n
H-single: Hr3c1 = 0
B-single: Br2c1 = ew
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1

LOOP[8]: Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3- ==> Hr4c2 = 0
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
same-colour-in-r4{c1 c2} ==> Vr4c2 = 0
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
whip[1]: Hr3c1{0 .} ==> Pr3c1 ≠ se
P-single: Pr3c1 = ns
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ se
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 0
whip[1]: Vr3c2{1 .} ==> Pr3c2 ≠ ne, Pr4c2 ≠ se, Pr4c2 ≠ ew, Br3c1 ≠ w, Br3c1 ≠ sw, Br3c2 ≠ ns
P-single: Pr3c2 = ns
B-single: Br3c2 = ew
whip[1]: Pr3c2{ns .} ==> Br2c2 ≠ swn
B-single: Br2c2 = nw
whip[1]: Br2c2{nw .} ==> Nr2c2 ≠ 3, Pr3c3 ≠ ew
N-single: Nr2c2 = 2
P-single: Pr3c3 = se
whip[1]: Pr3c3{se .} ==> Br3c3 ≠ n, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ nes
whip[1]: Br3c3{wne .} ==> Pr4c3 ≠ ew, Pr4c3 ≠ sw, Pr4c4 ≠ nw, Nr3c3 ≠ 1
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ nw
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ s, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c2 ≠ n, Br4c3 ≠ o, Br4c3 ≠ e
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 1
whip[1]: Pr4c2{nw .} ==> Br4c1 ≠ ne, Br4c1 ≠ sw
whip[1]: Vr4c2{0 .} ==> Pr4c2 ≠ ns, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c2 ≠ w, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw
P-single: Pr4c2 = nw
whip[1]: Pr4c2{nw .} ==> Br3c1 ≠ ew
B-single: Br3c1 = esw
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 2, Pr4c1 ≠ ns
N-single: Nr3c1 = 3
P-single: Pr4c1 = ne
whip[1]: Pr4c1{ne .} ==> Br4c1 ≠ nw
B-single: Br4c1 = ns
whip[1]: Br4c1{ns .} ==> Pr5c1 ≠ ns
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ esw, Br5c1 ≠ nes
whip[1]: Br5c1{wne .} ==> Pr6c1 ≠ o, Pr6c1 ≠ se
w[1]-1-in-r6c1-asymmetric-nw-corner ==> Pr7c2 ≠ ew, Pr7c2 ≠ ns
whip[1]: Pr7c2{se .} ==> Br6c2 ≠ esw, Br6c2 ≠ swn, Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ nes, Br6c1 ≠ e, Br6c1 ≠ s, Br7c2 ≠ n, Br7c2 ≠ w
whip[1]: Br6c1{w .} ==> Pr7c1 ≠ ne, Pr6c2 ≠ ns, Pr7c2 ≠ nw, Pr6c2 ≠ sw
P-single: Pr7c2 = se
whip[1]: Pr7c2{se .} ==> Br7c2 ≠ s, Br7c2 ≠ e, Br7c2 ≠ o, Vr7c2 ≠ 0, Br6c2 ≠ wne, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c2 ≠ se
V-single: Vr7c2 = 1
B-single: Br6c2 = nes
whip[1]: Vr7c2{1 .} ==> Pr8c2 ≠ ew, Pr8c2 ≠ sw
whip[1]: Pr8c2{nw .} ==> Br8c1 ≠ ne, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ nw
whip[1]: Br8c2{sw .} ==> Pr9c3 ≠ o, Pr9c3 ≠ se
whip[1]: Pr9c3{sw .} ==> Br9c3 ≠ nw
whip[1]: Br9c3{sw .} ==> Pr10c4 ≠ o, Pr10c4 ≠ se
whip[1]: Pr10c4{sw .} ==> Br10c4 ≠ nw, Br10c4 ≠ swn, Br10c4 ≠ wne
whip[1]: Br6c2{nes .} ==> Pr7c3 ≠ ew, Pr7c3 ≠ se, Pr7c3 ≠ ns, Pr6c3 ≠ ew, Pr6c3 ≠ ns, Pr6c3 ≠ ne
P-single: Pr6c3 = sw
P-single: Pr7c3 = nw
whip[1]: Pr6c3{sw .} ==> Br6c3 ≠ ns, Br6c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ w, Br5c3 ≠ s, Br5c2 ≠ ne, Br5c2 ≠ w, Br5c2 ≠ e, Br5c2 ≠ n, Br5c2 ≠ o, Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ esw, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ nes, Br6c3 ≠ nw, Br6c3 ≠ se
whip[1]: Br6c3{sw .} ==> Pr6c4 ≠ nw, Pr6c4 ≠ ew
whip[1]: Pr6c4{se .} ==> Vr6c4 ≠ 0, Br5c4 ≠ ne, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br6c3 ≠ sw, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ nes, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ e, Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ s
V-single: Vr6c4 = 1
B-single: Br6c3 = ew
whip[1]: Vr6c4{1 .} ==> Pr7c4 ≠ ew, Pr7c4 ≠ sw
whip[1]: Pr7c4{ns .} ==> Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ s, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ swn, Br7c4 ≠ wne, Br7c3 ≠ n, Br7c4 ≠ o, Br7c4 ≠ e
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 0
whip[1]: Br6c4{wne .} ==> Nr6c4 ≠ 0
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Br5c3{ne .} ==> Pr5c3 ≠ ns, Pr5c3 ≠ se, Nr5c3 ≠ 3, Pr5c3 ≠ sw
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0
whip[1]: Pr7c3{nw .} ==> Br7c2 ≠ wne, Br7c3 ≠ w, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw
whip[1]: Br7c3{se .} ==> Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Nr7c3 ≠ 3
whip[1]: Br7c2{swn .} ==> Nr7c2 ≠ 0, Nr7c2 ≠ 1
whip[1]: Br4c2{se .} ==> Nr4c2 ≠ 3
whip[1]: Pr5c2{sw .} ==> Br5c2 ≠ swn, Br5c2 ≠ s
whip[1]: Br5c2{sw .} ==> Nr5c2 ≠ 1, Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Br2c3{nes .} ==> Pr3c4 ≠ sw, Pr3c4 ≠ ew, Pr2c4 ≠ ew, Pr2c4 ≠ ns
P-single: Pr1c5 = sw
P-single: Pr2c4 = sw
P-single: Pr3c4 = nw
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ ns, Br1c5 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c5 ≠ nw, Br1c5 ≠ se
B-single: Br1c4 = ne
whip[1]: Br1c4{ne .} ==> Pr2c5 ≠ ew
P-single: Pr2c5 = ns
whip[1]: Pr2c5{ns .} ==> Br2c5 ≠ e, Br2c5 ≠ n, Br2c5 ≠ o, Br2c4 ≠ n, Br2c4 ≠ o, Br1c5 ≠ sw, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ s, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ nes
B-single: Br1c5 = ew
whip[1]: Br1c5{ew .} ==> Pr2c6 ≠ sw, Pr2c6 ≠ ew, Pr1c6 ≠ ew, Vr1c6 ≠ 0
V-single: Vr1c6 = 1
P-single: Pr1c6 = se
vertical-line-r1{c5 c6} ==> Ir1c6 = in
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
w[1]-3-in-r2c7-hit-by-horiz-line-at-nw ==> Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
whip[1]: Vr1c6{1 .} ==> Br1c6 ≠ o, Br1c6 ≠ n, Br1c6 ≠ e, Br1c6 ≠ s, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ se, Br1c6 ≠ nes
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ w, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw
whip[1]: Br1c6{wne .} ==> Pr1c7 ≠ o, Pr1c7 ≠ se, Nr1c6 ≠ 1
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ e, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Hr2c6{1 .} ==> Br2c6 ≠ o, Pr2c6 ≠ ns, Pr2c7 ≠ ne, Pr2c7 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ wne, Br2c6 ≠ e, Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw
P-single: Pr2c6 = ne
B-single: Br1c6 = swn
whip[1]: Pr2c6{ne .} ==> Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c6 ≠ nw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Br2c6{nes .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ nw, Nr2c6 ≠ 0
whip[1]: Br2c5{sw .} ==> Pr3c5 ≠ ew, Pr3c5 ≠ sw, Nr2c5 ≠ 0, Nr2c5 ≠ 3
whip[1]: Pr3c5{ns .} ==> Hr3c4 ≠ 1, Br2c4 ≠ se, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Br3c5{nes .} ==> Pr3c6 ≠ o, Pr3c6 ≠ ew, Pr4c5 ≠ ns, Pr4c6 ≠ o, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ se, Pr4c6 ≠ ew
P-single: Pr4c6 = nw
whip[1]: Pr4c6{nw .} ==> Br4c6 ≠ n, Br3c6 ≠ s, Br3c6 ≠ e, Br3c6 ≠ n, Br3c6 ≠ o, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ nes, Br4c5 ≠ ne, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes
whip[1]: Br4c6{se .} ==> Pr4c7 ≠ nw, Pr4c7 ≠ ew, Pr4c7 ≠ sw, Pr5c6 ≠ ne, Pr5c6 ≠ ns, Nr4c6 ≠ 3
whip[1]: Pr5c6{sw .} ==> Br5c6 ≠ nw, Br5c5 ≠ e
whip[1]: Br5c5{w .} ==> Pr6c6 ≠ ns, Pr6c6 ≠ nw, Pr5c6 ≠ sw
whip[1]: Pr5c6{ew .} ==> Br5c6 ≠ ew, Br5c6 ≠ sw
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Pr5c5{ew .} ==> Br5c4 ≠ wne, Br5c4 ≠ nes, Br5c4 ≠ s, Br5c4 ≠ w
whip[1]: Br5c4{ew .} ==> Nr5c4 ≠ 1, Nr5c4 ≠ 3
N-single: Nr5c4 = 2
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c4 ≠ ne, Br4c4 ≠ sw, Br5c3 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ ew, Br5c3 ≠ o
whip[1]: Br5c3{e .} ==> Nr5c3 ≠ 0, Nr5c3 ≠ 2
N-single: Nr5c3 = 1
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 2
whip[1]: Pr4c5{ew .} ==> Vr3c5 ≠ 1, Br3c5 ≠ esw
B-single: Br3c5 = nes
whip[1]: Br3c5{nes .} ==> Pr3c6 ≠ se, Pr3c5 ≠ ns
P-single: Pr3c5 = ne
P-single: Pr3c6 = sw
whip[1]: Pr3c5{ne .} ==> Br2c5 ≠ w
B-single: Br2c5 = sw
whip[1]: Br2c5{sw .} ==> Nr2c5 ≠ 1
N-single: Nr2c5 = 2
whip[1]: Pr3c6{sw .} ==> Br2c6 ≠ ns, Br2c6 ≠ nes, Br3c6 ≠ nw, Br3c6 ≠ wne
whip[1]: Br3c6{ew .} ==> Pr3c7 ≠ nw, Pr3c7 ≠ ew, Pr3c7 ≠ sw, Nr3c6 ≠ 3
whip[1]: Br2c6{ne .} ==> Nr2c6 ≠ 3
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 0, Nr2c4 ≠ 3
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 2, Pr1c7 ≠ sw
N-single: Nr1c6 = 3
P-single: Pr1c7 = ew
whip[1]: Pr1c7{ew .} ==> Br1c7 ≠ w, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c7 ≠ esw
whip[1]: Br1c7{nes .} ==> Pr1c8 ≠ o, Pr1c8 ≠ se
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ o, Br1c8 ≠ e, Br1c8 ≠ s
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Pr2c7{sw .} ==> Br2c7 ≠ swn, Br2c7 ≠ wne
whip[1]: Br2c7{nes .} ==> Pr2c8 ≠ o, Pr2c8 ≠ ne, Pr2c8 ≠ nw, Pr2c8 ≠ ew, Pr3c7 ≠ o, Pr3c7 ≠ ns, Pr3c8 ≠ o, Pr3c8 ≠ ne, Pr3c8 ≠ ns, Pr3c8 ≠ se, Pr3c8 ≠ ew, Pr3c8 ≠ sw
P-single: Pr3c8 = nw
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ s, Br3c7 ≠ e, Br3c7 ≠ o, Br2c8 ≠ s, Br2c8 ≠ e, Br2c8 ≠ n, Br2c8 ≠ o, Vr3c8 ≠ 1, Hr3c8 ≠ 1, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ se, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn, Br2c8 ≠ nes, Br3c7 ≠ w, Br3c7 ≠ ne, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ wne, Br3c7 ≠ nes
whip[1]: Br3c7{swn .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ ns, Nr3c7 ≠ 0
whip[1]: Pr4c8{sw .} ==> Hr4c7 ≠ 0, Br3c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c8 ≠ nw, Br4c8 ≠ se, Br3c7 ≠ n, Br4c7 ≠ o, Br4c7 ≠ e, Br4c7 ≠ s, Br4c7 ≠ w
H-single: Hr4c7 = 1
whip[1]: Hr4c7{1 .} ==> Pr4c7 ≠ o, Pr4c7 ≠ ns
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Br3c7{swn .} ==> Nr3c7 ≠ 1
whip[1]: Br2c8{wne .} ==> Pr3c9 ≠ nw, Pr3c9 ≠ ew, Pr3c9 ≠ sw, Nr2c8 ≠ 0
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nes, Br1c8 ≠ sw, Br1c8 ≠ esw
whip[1]: Br1c7{ns .} ==> Nr1c7 ≠ 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Pr2c4{sw .} ==> Br2c4 ≠ e
B-single: Br2c4 = ew
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 1
N-single: Nr2c4 = 2
whip[1]: Pr3c4{nw .} ==> Vr3c4 ≠ 1, Br3c3 ≠ wne
whip[1]: Br3c3{swn .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ ns
whip[1]: Pr4c4{sw .} ==> Br4c3 ≠ esw
whip[1]: Br4c3{nes .} ==> Pr5c3 ≠ ne
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ e
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Vr8c1{1 .} ==> Br8c1 ≠ se, Br8c0 ≠ o, Br8c1 ≠ o, Pr9c1 ≠ o, Pr9c1 ≠ se, Br8c1 ≠ n, Br8c1 ≠ e, Br8c1 ≠ s, Br8c1 ≠ ns
B-single: Br8c0 = e
whip[1]: Br8c1{swn .} ==> Nr8c1 ≠ 0
whip[1]: Pr9c1{ns .} ==> Br9c1 ≠ s, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ swn, Br9c1 ≠ wne, Br9c1 ≠ o, Br9c1 ≠ e
whip[1]: Br9c1{nes .} ==> Nr9c1 ≠ 0
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ w, Pr6c5 ≠ se, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ esw, Br6c4 ≠ wne
whip[1]: Pr6c5{nw .} ==> Br5c5 ≠ s, Br6c5 ≠ n
whip[1]: Br6c5{s .} ==> Pr6c6 ≠ ew, Pr6c6 ≠ sw
w[1]-1-in-r5c5-symmetric-se-corner ==> Pr5c5 ≠ nw
whip[1]: Pr4c4{sw .} ==> Hr4c3 ≠ 0, Br3c3 ≠ nw, Br4c4 ≠ se, Br4c3 ≠ w
H-single: Hr4c3 = 1
B-single: Br3c3 = swn
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1

LOOP[24]: Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5- ==> Hr5c4 = 0
P-single: Pr6c5 = nw
P-single: Pr5c4 = nw
w[1]-1-in-r5c5-asymmetric-sw-corner ==> Pr5c6 ≠ ew
P-single: Pr4c5 = se
P-single: Pr6c6 = se
P-single: Pr6c7 = nw
P-single: Pr5c6 = o
w[1]-1-in-r6c5-asymmetric-ne-corner ==> Pr7c5 ≠ ew, Pr7c5 ≠ se
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
whip[1]: Hr4c3{1 .} ==> Pr4c3 ≠ ns
P-single: Pr4c3 = ne
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ se
whip[1]: Br4c2{s .} ==> Nr4c2 ≠ 2, Pr5c3 ≠ nw
whip[1]: Br3c3{swn .} ==> Nr3c3 ≠ 2
N-single: Nr3c3 = 3
whip[1]: Vr4c4{1 .} ==> Pr4c4 ≠ ew, Br4c3 ≠ n, Br4c4 ≠ ns
P-single: Pr4c4 = sw
B-single: Br4c4 = ew
B-single: Br4c3 = nes
whip[1]: Pr4c4{sw .} ==> Hr4c4 ≠ 1
whip[1]: Br4c4{ew .} ==> Pr5c5 ≠ ew
P-single: Pr5c5 = ns
whip[1]: Pr5c5{ns .} ==> Br5c5 ≠ n, Vr5c5 ≠ 0, Hr5c5 ≠ 1, Br4c5 ≠ ns, Br5c4 ≠ nw
H-single: Hr5c5 = 0
V-single: Vr5c5 = 1
B-single: Br5c4 = se
B-single: Br4c5 = nw
B-single: Br5c5 = w
vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-vertical-line-r5{c5 c6} ==> Ir5c6 = out
horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = in
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = in
no-vertical-line-r8{c6 c7} ==> Ir8c6 = in
vertical-line-r8{c5 c6} ==> Ir8c5 = out
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
no-vertical-line-r7{c5 c6} ==> Ir7c6 = out
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
vertical-line-r6{c3 c4} ==> Ir6c3 = in
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
no-vertical-line-r6{c1 c2} ==> Ir6c1 = out
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = out
vertical-line-r7{c1 c2} ==> Ir7c2 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
vertical-line-r7{c7 c8} ==> Ir7c8 = out
same-colour-in-{r6 r7}c8 ==> Hr7c8 = 0
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
w[1]-2-in-r8c2-open-nw-corner ==> Hr9c2 = 1, Vr8c3 = 1, Hr9c3 = 0, Vr9c3 = 0
w[1]-2-in-r9c3-open-nw-corner ==> Hr10c3 = 1, Vr9c4 = 1, Hr10c4 = 0, Vr10c4 = 0
w[1]-3-in-r9c4-hit-by-horiz-line-at-sw ==> Vr9c5 = 1, Hr9c4 = 1
w[1]-3-in-r9c4-closed-nw-corner ==> Pr10c5 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ o
w[1]-3-in-r9c4-closed-ne-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ne
no-vertical-line-r8{c4 c5} ==> Ir8c4 = out
no-vertical-line-r8{c3 c4} ==> Ir8c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = out
no-vertical-line-r9{c2 c3} ==> Ir9c2 = out
horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
vertical-line-r9{c3 c4} ==> Ir9c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
w[1]-3-in-r6c2-hit-by-horiz-line-at-nw ==> Vr5c2 = 0
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw
P-single: Pr5c2 = ew
P-single: Pr5c3 = ew
P-single: Pr6c2 = ew
w[1]-1-in-r6c1-asymmetric-ne-corner ==> Pr7c1 ≠ ns
P-single: Pr10c4 = nw
P-single: Pr9c3 = nw
P-single: Pr8c2 = nw
P-single: Pr7c1 = o
w[1]-1-in-r5c3-asymmetric-nw-corner ==> Pr6c4 ≠ ns
P-single: Pr6c4 = se
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
same-colour-in-r5{c3 c4} ==> Vr5c4 = 0
w[1]-2-in-r5c4-open-nw-corner ==> Hr6c4 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
w[0]-adjacent-3-in-r6c6-nolines-east ==> Vr5c7 = 1
w[1]-3-in-r6c8-closed-nw-corner ==> Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ o
vertical-line-r5{c6 c7} ==> Ir5c7 = in
same-colour-in-{r4 r5}c6 ==> Hr5c6 = 0
whip[1]: Hr7c8{0 .} ==> Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c9 ≠ ew, Pr7c9 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn, Br6c8 ≠ nes, Br7c8 ≠ n, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ nes
B-single: Br6c8 = wne
whip[1]: Br6c8{wne .} ==> Pr6c9 ≠ ew, Pr6c9 ≠ se, Pr6c9 ≠ nw, Pr6c9 ≠ ns, Pr6c9 ≠ o, Pr6c8 ≠ sw, Pr6c8 ≠ ew, Pr6c8 ≠ nw, Pr6c8 ≠ ns, Pr6c8 ≠ ne, Pr6c8 ≠ o
P-single: Pr5c10 = sw
P-single: Pr6c8 = se
P-single: Pr6c9 = sw
whip[1]: Pr5c10{sw .} ==> Br5c10 ≠ ns, Br5c9 ≠ ns, Br4c10 ≠ w, Br4c9 ≠ ne, Br4c9 ≠ w, Br4c9 ≠ e, Br4c9 ≠ n, Br4c9 ≠ o, Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ esw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ esw, Br4c10 ≠ nes, Br5c9 ≠ ew, Br5c9 ≠ sw
B-single: Br5c9 = ne
B-single: Br5c10 = sw
whip[1]: Br5c9{ne .} ==> Pr5c9 ≠ ns, Pr5c9 ≠ sw, Pr6c10 ≠ ew
P-single: Pr5c11 = o
P-single: Pr6c10 = ne
whip[1]: Pr6c10{ne .} ==> Br6c9 ≠ n, Br6c9 ≠ ns, Br6c9 ≠ nw, Br6c9 ≠ swn
whip[1]: Br6c9{sw .} ==> Nr6c9 ≠ 3
whip[1]: Pr5c9{ew .} ==> Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ esw, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c8 ≠ e, Br5c8 ≠ ne
whip[1]: Br4c10{n .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ sw, Pr4c10 ≠ ns, Pr4c10 ≠ se, Pr4c10 ≠ sw, Nr4c10 ≠ 2, Nr4c10 ≠ 3
whip[1]: Pr4c11{nw .} ==> Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr3c11 ≠ nw, Pr4c11 ≠ o, Pr4c10 ≠ o, Pr4c10 ≠ nw
P-single: Pr4c11 = nw
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ o
B-single: Br4c10 = n
whip[1]: Br4c10{n .} ==> Nr4c10 ≠ 0
N-single: Nr4c10 = 1
whip[1]: Pr2c10{ew .} ==> Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ esw, Br1c9 ≠ nes, Br2c9 ≠ wne, Br2c9 ≠ nes, Br2c10 ≠ nw, Br2c10 ≠ se, Br1c9 ≠ o, Br1c9 ≠ n, Br1c9 ≠ w
whip[1]: Br1c9{wne .} ==> Nr1c9 ≠ 0
whip[1]: Br2c9{swn .} ==> Pr2c9 ≠ o, Pr2c9 ≠ ne, Pr2c9 ≠ nw, Pr2c9 ≠ ew, Pr3c9 ≠ o, Pr3c9 ≠ ns, Pr3c9 ≠ se, Pr3c10 ≠ ns
P-single: Pr3c9 = ne
whip[1]: Pr3c9{ne .} ==> Br3c9 ≠ o, Vr3c9 ≠ 1, Br2c8 ≠ w, Br2c8 ≠ nw, Br3c9 ≠ e, Br3c9 ≠ s, Br3c9 ≠ w, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ ns, Pr4c9 ≠ nw, Nr3c9 ≠ 0
whip[1]: Pr4c9{ew .} ==> Br4c9 ≠ sw, Br4c8 ≠ ne
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 1
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ esw, Br2c10 ≠ ew, Br2c10 ≠ sw
B-single: Br2c9 = swn
whip[1]: Br2c9{swn .} ==> Pr2c10 ≠ ns, Pr2c9 ≠ sw, Pr2c9 ≠ ns
P-single: Pr2c9 = se
P-single: Pr2c10 = ew
whip[1]: Pr2c9{se .} ==> Br1c9 ≠ e, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ ew, Br1c8 ≠ nes, Br1c9 ≠ ne, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ swn, Br1c9 ≠ wne, Br2c8 ≠ wne
B-single: Br2c8 = ew
whip[1]: Br2c8{ew .} ==> Nr2c8 ≠ 3, Pr2c8 ≠ se
N-single: Nr2c8 = 2
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ n
whip[1]: Br1c7{ns .} ==> Nr1c7 ≠ 1
N-single: Nr1c7 = 2
whip[1]: Br1c9{ns .} ==> Vr1c10 ≠ 1, Pr1c9 ≠ se, Pr1c10 ≠ se, Nr1c9 ≠ 3, Pr1c9 ≠ sw, Pr1c10 ≠ sw
V-single: Vr1c10 = 0
no-vertical-line-r1{c9 c10} ==> Ir1c9 = in
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = in
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
horizontal-line-{r2 r3}c9 ==> Ir2c9 = out
no-vertical-line-r2{c9 c10} ==> Ir2c10 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
same-colour-in-{r4 r5}c8 ==> Hr5c8 = 0
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
w[3]-adjacent-3-2-in-r2{c9 c10}-noline-east ==> Vr3c10 = 0
P-single: Pr3c10 = ew
different-colours-in-{r2 r3}c10 ==> Hr3c10 = 1
w[1]-3-in-r3c10-closed-ne-corner ==> Pr4c10 ≠ ne
P-single: Pr4c10 = ew
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ o
P-single: Pr1c10 = ew
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
same-colour-in-r2{c6 c7} ==> Vr2c7 = 0
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
w[1]-3-in-r2c7-closed-ne-corner ==> Pr3c7 ≠ ne
P-single: Pr3c7 = se
P-single: Pr2c7 = ew
P-single: Pr1c8 = ew
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ wne
B-single: Br1c10 = nes
whip[1]: Br1c10{nes .} ==> Pr2c11 ≠ ns, Pr1c11 ≠ o
P-single: Pr1c11 = sw
P-single: Pr2c11 = nw
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ ne
B-single: Br2c10 = ns
whip[1]: Br2c10{ns .} ==> Pr3c11 ≠ ns
P-single: Pr3c11 = sw
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ esw
B-single: Br3c10 = nes
whip[1]: Hr5c8{0 .} ==> Pr5c8 ≠ se, Pr5c8 ≠ ew, Pr5c9 ≠ ew, Br4c8 ≠ ns, Br4c8 ≠ sw, Br5c8 ≠ n, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ swn
P-single: Pr5c9 = ne
B-single: Br4c8 = ew
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ s, Br4c9 ≠ ns
B-single: Br4c9 = swn
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 2, Nr4c9 ≠ 1, Pr4c9 ≠ ew
N-single: Nr4c9 = 3
P-single: Pr4c9 = se
whip[1]: Pr4c9{se .} ==> Br3c9 ≠ n, Hr4c8 ≠ 1, Br3c9 ≠ ne
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 1
whip[1]: Br4c8{ew .} ==> Pr4c8 ≠ ew
P-single: Pr4c8 = sw
whip[1]: Pr4c8{sw .} ==> Br4c7 ≠ ns, Br4c7 ≠ n, Br4c7 ≠ nw, Br4c7 ≠ swn
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 1
whip[1]: Br5c8{sw .} ==> Nr5c8 ≠ 3
whip[1]: Pr5c8{nw .} ==> Br5c7 ≠ w, Br5c7 ≠ ne, Br5c7 ≠ sw, Br5c7 ≠ wne, Br5c7 ≠ nes, Br5c7 ≠ o, Br5c7 ≠ s
whip[1]: Br5c7{swn .} ==> Nr5c7 ≠ 0
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Vr3c10{0 .} ==> Br3c9 ≠ nes
B-single: Br3c9 = ns
whip[1]: Br3c9{ns .} ==> Nr3c9 ≠ 3
N-single: Nr3c9 = 2
whip[1]: Pr1c10{ew .} ==> Br1c9 ≠ s
B-single: Br1c9 = ns
whip[1]: Br1c9{ns .} ==> Nr1c9 ≠ 1, Pr1c9 ≠ o
N-single: Nr1c9 = 2
P-single: Pr1c9 = ew
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ w
B-single: Br1c8 = n
whip[1]: Br1c8{n .} ==> Pr2c8 ≠ ns, Nr1c8 ≠ 2, Nr1c8 ≠ 3
N-single: Nr1c8 = 1
P-single: Pr2c8 = sw
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ ne, Br2c7 ≠ esw
B-single: Br2c7 = nes
B-single: Br1c7 = ns
whip[1]: Hr5c7{1 .} ==> Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c8 ≠ ns, Br4c7 ≠ ne, Br4c7 ≠ wne, Br5c7 ≠ e, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw
P-single: Pr5c8 = nw
B-single: Br4c7 = nes
whip[1]: Pr5c8{nw .} ==> Br5c8 ≠ w, Br5c8 ≠ sw
whip[1]: Br5c8{s .} ==> Nr5c8 ≠ 2
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 2, Pr4c7 ≠ se
N-single: Nr4c7 = 3
P-single: Pr4c7 = ne
whip[1]: Pr4c7{ne .} ==> Br3c6 ≠ w, Br3c7 ≠ ns, Br4c6 ≠ e, Br4c6 ≠ se
B-single: Br3c7 = swn
B-single: Br3c6 = ew
whip[1]: Br3c7{swn .} ==> Nr3c7 ≠ 2
N-single: Nr3c7 = 3
whip[1]: Br3c6{ew .} ==> Nr3c6 ≠ 1
N-single: Nr3c6 = 2
whip[1]: Br4c6{s .} ==> Nr4c6 ≠ 2
whip[1]: Pr5c7{ew .} ==> Br5c6 ≠ ne
whip[1]: Vr2c7{0 .} ==> Br2c6 ≠ ne
B-single: Br2c6 = n
whip[1]: Br2c6{n .} ==> Nr2c6 ≠ 2
N-single: Nr2c6 = 1
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o
B-single: Br0c9 = s
whip[1]: Pr6c8{se .} ==> Br6c7 ≠ w, Br6c7 ≠ s, Br6c7 ≠ n, Br6c7 ≠ o, Br5c8 ≠ o, Br5c7 ≠ ns, Br5c7 ≠ swn, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ sw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes
B-single: Br5c8 = s
whip[1]: Br5c8{s .} ==> Nr5c8 ≠ 0
N-single: Nr5c8 = 1
whip[1]: Br6c7{esw .} ==> Nr6c7 ≠ 0
whip[1]: Br5c7{nw .} ==> Nr5c7 ≠ 3
whip[1]: Pr6c9{sw .} ==> Br6c9 ≠ s, Br6c9 ≠ o
whip[1]: Br6c9{sw .} ==> Nr6c9 ≠ 0
whip[1]: Pr7c9{ns .} ==> Br7c9 ≠ s, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ o, Br7c9 ≠ e
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 0
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ ne, Br7c7 ≠ sw
whip[1]: Hr8c1{1 .} ==> Pr8c1 ≠ ns, Br7c1 ≠ ew, Br8c1 ≠ w, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw
P-single: Pr8c1 = se
B-single: Br7c1 = se
whip[1]: Br8c1{swn .} ==> Pr9c2 ≠ ns, Pr9c2 ≠ nw, Nr8c1 ≠ 1
whip[1]: Pr9c2{ew .} ==> Br8c2 ≠ ew, Br8c2 ≠ sw, Br9c1 ≠ sw, Br9c1 ≠ nes, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ sw, Br9c2 ≠ esw, Br8c2 ≠ ne, Br9c1 ≠ w, Br9c1 ≠ ne, Br9c2 ≠ o, Br9c2 ≠ e, Br9c2 ≠ s, Br9c2 ≠ w
whip[1]: Br9c2{nes .} ==> Nr9c2 ≠ 0
whip[1]: Hr8c2{0 .} ==> Pr8c3 ≠ ew, Br7c2 ≠ swn, Br8c2 ≠ ns
P-single: Pr8c3 = se
B-single: Br8c2 = se
B-single: Br7c2 = nw
whip[1]: Pr8c3{se .} ==> Br8c3 ≠ w, Br8c3 ≠ s, Br8c3 ≠ e, Br8c3 ≠ n, Br8c3 ≠ o, Br7c3 ≠ e, Br7c3 ≠ o, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ nes
whip[1]: Br8c3{wne .} ==> Pr8c4 ≠ ne, Pr8c4 ≠ ns, Pr9c4 ≠ nw, Nr8c3 ≠ 0, Nr8c3 ≠ 1
whip[1]: Pr9c4{ew .} ==> Br8c4 ≠ sw, Br9c3 ≠ sw, Br8c4 ≠ ne, Br9c3 ≠ ne
whip[1]: Pr8c4{sw .} ==> Vr7c4 ≠ 1, Br7c3 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br8c4 ≠ nw, Br8c4 ≠ se, Br7c4 ≠ w
V-single: Vr7c4 = 0
B-single: Br7c3 = s
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
different-colours-in-r7{c4 c5} ==> Hr7c5 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-{r6 r7}c4 ==> Hr7c4 = 1

LOOP[44]: Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Vr6c4-Hr6c4-Vr5c5-Vr4c5-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Vr6c3-Hr7c2-Vr7c2-Hr8c1-Vr8c1- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = in
different-colours-in-r9{c1 c2} ==> Hr9c2 = 1
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1

LOOP[46]: Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c2-Vr9c2- ==> Hr10c1 = 0
no-horizontal-line-{r9 r10}c1 ==> Ir10c1 = in
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1

LOOP[48]: Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c2-Vr9c2- ==> Vr10c2 = 0
no-vertical-line-r10{c1 c2} ==> Ir10c2 = in
same-colour-in-r10{c2 c3} ==> Vr10c3 = 0
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-{r9 r10}c2 ==> Hr10c2 = 1

LOOP[56]: Vr9c5-Hr9c4-Vr9c4-Hr10c3-Hr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Vr6c4-Hr6c4-Vr5c5-Vr4c5-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Vr6c3-Hr7c2-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4- ==> Vr10c5 = 0
w[0]-adjacent-3-in-r9c4-nolines-south ==> Hr10c5 = 1
horizontal-line-{r9 r10}c5 ==> Ir10c5 = in
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1

LOOP[58]: Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c2-Vr9c2-Hr10c2-Hr10c3-Vr9c4-Hr9c4-Vr9c5-Hr10c5- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1

LOOP[60]: Hr10c6-Hr10c5-Vr9c5-Hr9c4-Vr9c4-Hr10c3-Hr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Vr6c4-Hr6c4-Vr5c5-Vr4c5-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Vr6c3-Hr7c2-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6- ==> Vr10c7 = 0
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Vr7c4{0 .} ==> Pr7c4 ≠ ns
P-single: Pr7c4 = ne
whip[1]: Pr7c4{ne .} ==> Br6c4 ≠ w, Br6c4 ≠ nw
whip[1]: Br6c4{swn .} ==> Pr7c5 ≠ o, Nr6c4 ≠ 1
P-single: Pr7c5 = sw
whip[1]: Pr7c5{sw .} ==> Br7c5 ≠ ns, Br7c5 ≠ ne, Br7c5 ≠ s, Br7c5 ≠ e, Br7c5 ≠ n, Br7c5 ≠ o, Br7c4 ≠ ns, Br7c4 ≠ n, Br6c5 ≠ s, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ nes
B-single: Br6c5 = e
whip[1]: Br6c5{e .} ==> Pr7c6 ≠ ew, Pr7c6 ≠ sw
whip[1]: Pr7c6{ns .} ==> Br6c6 ≠ nes, Br7c6 ≠ swn, Br7c6 ≠ wne
whip[1]: Br7c6{nes .} ==> Pr7c7 ≠ ne, Pr7c7 ≠ ew, Pr8c6 ≠ ns, Pr8c6 ≠ nw, Pr8c7 ≠ ns, Pr8c7 ≠ se, Pr8c7 ≠ ew
P-single: Pr8c7 = nw
whip[1]: Pr8c7{nw .} ==> Br8c7 ≠ n, Br7c7 ≠ ns, Br7c7 ≠ se, Br8c6 ≠ esw, Br8c6 ≠ wne, Br8c6 ≠ nes, Br8c7 ≠ w, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ nes
B-single: Br8c6 = swn
whip[1]: Br8c6{swn .} ==> Pr9c7 ≠ ns, Pr9c6 ≠ sw, Pr9c6 ≠ ew, Pr9c6 ≠ nw, Pr9c6 ≠ ns, Pr9c6 ≠ o, Pr8c6 ≠ ew
P-single: Pr8c6 = se
P-single: Pr9c6 = ne
whip[1]: Pr8c6{se .} ==> Br8c5 ≠ w, Br8c5 ≠ s, Br8c5 ≠ n, Br8c5 ≠ o, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c6 ≠ esw, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ nw, Br8c5 ≠ sw, Br8c5 ≠ swn, Br8c5 ≠ wne, Br8c5 ≠ nes
B-single: Br7c6 = nes
B-single: Br7c5 = w
whip[1]: Br7c6{nes .} ==> Pr7c7 ≠ ns, Pr7c6 ≠ ns
P-single: Pr7c6 = ne
P-single: Pr7c7 = sw
whip[1]: Pr7c6{ne .} ==> Br6c6 ≠ wne
whip[1]: Pr7c7{sw .} ==> Br6c6 ≠ esw, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br7c7 ≠ nw
B-single: Br7c7 = ew
B-single: Br6c7 = e
B-single: Br6c6 = swn
whip[1]: Br7c7{ew .} ==> Pr8c8 ≠ sw, Pr8c8 ≠ ew, Pr7c8 ≠ nw
P-single: Pr7c8 = ns
whip[1]: Pr7c8{ns .} ==> Br7c8 ≠ e, Br7c8 ≠ o, Br7c8 ≠ s, Br7c8 ≠ se
whip[1]: Br7c8{esw .} ==> Nr7c8 ≠ 0
whip[1]: Pr8c8{ns .} ==> Br8c8 ≠ s, Br8c8 ≠ e
whip[1]: Br8c8{w .} ==> Hr9c8 ≠ 1, Vr8c9 ≠ 1, Pr8c9 ≠ ns, Pr9c8 ≠ ne, Pr9c9 ≠ nw, Pr8c9 ≠ se, Pr8c9 ≠ sw, Pr9c8 ≠ se, Pr9c8 ≠ ew
V-single: Vr8c9 = 0
H-single: Hr9c8 = 0
whip[1]: Vr8c9{0 .} ==> Br8c9 ≠ nw, Br8c9 ≠ ew, Br8c9 ≠ esw, Br8c9 ≠ swn
whip[1]: Br8c9{se .} ==> Nr8c9 ≠ 3
whip[1]: Hr9c8{0 .} ==> Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ nw
whip[1]: Pr10c8{ew .} ==> Br10c7 ≠ wne, Br10c7 ≠ nes, Br10c7 ≠ ne
whip[1]: Pr10c9{sw .} ==> Br10c9 ≠ nw
whip[1]: Br10c9{sw .} ==> Pr11c10 ≠ o
whip[1]: Pr11c10{ew .} ==> Br10c10 ≠ o, Br10c10 ≠ n
whip[1]: Br10c10{nes .} ==> Nr10c10 ≠ 0
whip[1]: Pr9c9{se .} ==> Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ ew, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ nes, Br9c9 ≠ n, Br9c9 ≠ w
whip[1]: Br6c7{e .} ==> Nr6c7 ≠ 2, Nr6c7 ≠ 3
N-single: Nr6c7 = 1
whip[1]: Br7c5{w .} ==> Nr7c5 ≠ 3, Nr7c5 ≠ 2, Nr7c5 ≠ 0, Pr8c5 ≠ se, Pr8c5 ≠ ew
N-single: Nr7c5 = 1
whip[1]: Br8c5{esw .} ==> Nr8c5 ≠ 0
whip[1]: Pr9c6{ne .} ==> Br9c5 ≠ n, Br8c5 ≠ se, Br8c5 ≠ esw, Br9c5 ≠ e, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ ew, Br9c5 ≠ esw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes, Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ sw
whip[1]: Br9c6{ns .} ==> Pr10c6 ≠ ns, Pr10c6 ≠ nw
whip[1]: Br9c5{sw .} ==> Pr9c5 ≠ ne, Pr9c5 ≠ ew, Nr9c5 ≠ 3
whip[1]: Pr9c5{sw .} ==> Br9c4 ≠ swn, Br9c5 ≠ o, Br9c5 ≠ s
whip[1]: Br9c5{sw .} ==> Pr10c5 ≠ ew, Pr10c5 ≠ sw, Nr9c5 ≠ 0
whip[1]: Pr10c5{ns .} ==> Br9c4 ≠ esw, Br9c4 ≠ nes, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ nes, Br10c5 ≠ s, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c4 ≠ n, Br10c5 ≠ o, Br10c5 ≠ e
B-single: Br9c4 = wne
whip[1]: Br9c4{wne .} ==> Pr9c5 ≠ ns, Pr9c4 ≠ ew, Pr9c4 ≠ ns
P-single: Pr9c4 = se
P-single: Pr9c5 = sw
whip[1]: Pr9c4{se .} ==> Br8c3 ≠ swn, Br8c3 ≠ wne, Br8c4 ≠ ew, Br9c3 ≠ ns
B-single: Br8c4 = ns
B-single: Br8c3 = nw
whip[1]: Br8c4{ns .} ==> Pr8c5 ≠ ns, Pr8c4 ≠ sw
P-single: Pr8c4 = ew
P-single: Pr8c5 = nw
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ ne
B-single: Br7c4 = nes
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 2, Nr7c4 ≠ 1
N-single: Nr7c4 = 3
whip[1]: Pr8c5{nw .} ==> Br8c5 ≠ ew
B-single: Br8c5 = e
whip[1]: Br8c5{e .} ==> Nr8c5 ≠ 2, Nr8c5 ≠ 3
N-single: Nr8c5 = 1
whip[1]: Br8c3{nw .} ==> Nr8c3 ≠ 3
N-single: Nr8c3 = 2
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Pr10c7{sw .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ swn, Br10c7 ≠ o, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Br10c7{esw .} ==> Nr10c7 ≠ 0
whip[1]: Pr9c7{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ o, Br9c7 ≠ e, Br9c7 ≠ s
whip[1]: Br9c7{nes .} ==> Nr9c7 ≠ 0
whip[1]: Br8c7{se .} ==> Nr8c7 ≠ 3
whip[1]: Br7c3{s .} ==> Nr7c3 ≠ 2, Nr7c3 ≠ 0
N-single: Nr7c3 = 1
whip[1]: Hr9c1{0 .} ==> Pr9c1 ≠ ne, Pr9c2 ≠ ew, Br8c1 ≠ swn, Br9c1 ≠ n, Br9c1 ≠ ns
P-single: Pr9c2 = se
P-single: Pr9c1 = ns
B-single: Br8c1 = nw
whip[1]: Pr9c2{se .} ==> Br9c2 ≠ n, Br9c2 ≠ ne, Br9c2 ≠ ns, Br9c2 ≠ nes
whip[1]: Br9c2{wne .} ==> Pr10c2 ≠ o, Pr10c2 ≠ se, Pr10c2 ≠ ew, Pr10c2 ≠ sw, Pr10c3 ≠ nw, Nr9c2 ≠ 1
whip[1]: Pr10c3{ew .} ==> Br10c2 ≠ sw, Br10c2 ≠ wne, Br10c2 ≠ nes, Br10c3 ≠ se, Br10c2 ≠ o, Br10c2 ≠ s, Br10c2 ≠ w, Br10c2 ≠ ne, Br10c3 ≠ o, Br10c3 ≠ e, Br10c3 ≠ s
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 0
whip[1]: Br10c2{swn .} ==> Nr10c2 ≠ 0
whip[1]: Pr10c2{nw .} ==> Br10c1 ≠ ne, Br10c2 ≠ nw, Br10c2 ≠ swn
whip[1]: Br8c1{nw .} ==> Nr8c1 ≠ 3
N-single: Nr8c1 = 2
whip[1]: Br9c1{esw .} ==> Pr10c1 ≠ o, Pr10c1 ≠ se, Nr9c1 ≠ 1
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ swn, Br10c1 ≠ o, Br10c1 ≠ e
whip[1]: Br10c1{esw .} ==> Pr11c2 ≠ ne, Nr10c1 ≠ 0
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ esw
whip[1]: Br10c2{ew .} ==> Nr10c2 ≠ 3
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Hr10c1{0 .} ==> Pr10c1 ≠ ne, Pr10c2 ≠ nw, Br9c1 ≠ esw, Br10c1 ≠ n
P-single: Pr10c1 = ns
B-single: Br9c1 = ew
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 3
N-single: Nr9c1 = 2
whip[1]: Br10c1{esw .} ==> Pr11c1 ≠ o, Pr11c2 ≠ o, Nr10c1 ≠ 1
P-single: Pr11c1 = ne
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ n, Br10c2 ≠ e
whip[1]: Br10c2{ew .} ==> Pr11c3 ≠ o, Nr10c2 ≠ 1
N-single: Nr10c2 = 2
whip[1]: Pr11c3{ew .} ==> Br11c3 ≠ o, Br10c2 ≠ se, Br10c3 ≠ nw, Br10c3 ≠ ew, Br10c3 ≠ wne, Br10c3 ≠ n, Br10c3 ≠ w, Br10c3 ≠ ne
B-single: Br11c3 = n
whip[1]: Br11c3{n .} ==> Pr11c4 ≠ o, Pr11c4 ≠ ne
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ o, Br10c4 ≠ e
whip[1]: Br10c4{ew .} ==> Nr10c4 ≠ 0, Nr10c4 ≠ 3
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 1
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Vr10c2{0 .} ==> Pr11c2 ≠ nw, Pr10c2 ≠ ns, Br10c1 ≠ esw, Br10c2 ≠ ew
P-single: Pr10c2 = ne
P-single: Pr11c2 = ew
B-single: Br10c2 = ns
B-single: Br10c1 = sw
whip[1]: Pr10c2{ne .} ==> Br9c2 ≠ nw, Br9c2 ≠ wne
B-single: Br9c2 = swn
whip[1]: Br9c2{swn .} ==> Nr9c2 ≠ 2, Pr10c3 ≠ se, Pr10c3 ≠ ns
N-single: Nr9c2 = 3
P-single: Pr10c3 = ew
whip[1]: Pr10c3{ew .} ==> Br9c3 ≠ ew, Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ swn
B-single: Br9c3 = se
whip[1]: Br10c3{nes .} ==> Pr11c3 ≠ ne
P-single: Pr11c3 = ew
whip[1]: Pr11c3{ew .} ==> Br11c2 ≠ o
B-single: Br11c2 = n
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 3
N-single: Nr10c1 = 2
whip[1]: Vr10c5{0 .} ==> Pr11c5 ≠ ne, Pr11c5 ≠ nw, Pr10c5 ≠ ns, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c5 ≠ w, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ esw
P-single: Pr10c5 = ne
whip[1]: Pr10c5{ne .} ==> Br9c5 ≠ w
B-single: Br9c5 = sw
whip[1]: Br9c5{sw .} ==> Nr9c5 ≠ 1, Pr10c6 ≠ se, Pr10c6 ≠ o
N-single: Nr9c5 = 2
whip[1]: Pr10c6{sw .} ==> Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ swn, Br10c6 ≠ wne, Br10c6 ≠ o, Br10c6 ≠ e, Br10c6 ≠ s
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Br10c4{w .} ==> Nr10c4 ≠ 2
N-single: Nr10c4 = 1
w[1]-1-in-r10c4-symmetric-nw-corner ==> Pr11c5 ≠ o
P-single: Pr11c5 = ew
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ ne, Br10c5 ≠ n, Br10c4 ≠ w, Br11c5 ≠ o, Br11c4 ≠ o
B-single: Br11c4 = n
B-single: Br11c5 = n
B-single: Br10c4 = s
whip[1]: Br11c4{n .} ==> Pr11c4 ≠ nw
P-single: Pr11c4 = ew
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ nes
B-single: Br10c3 = ns
whip[1]: Br10c3{ns .} ==> Nr10c3 ≠ 3
N-single: Nr10c3 = 2
whip[1]: Br11c5{n .} ==> Pr11c6 ≠ o, Pr11c6 ≠ ne
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ n, Br10c6 ≠ ne
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 1
whip[1]: Vr10c6{0 .} ==> Pr11c6 ≠ nw, Pr10c6 ≠ sw, Br10c5 ≠ nes, Br10c6 ≠ w, Br10c6 ≠ ew
P-single: Pr9c7 = ew
P-single: Pr10c6 = ew
P-single: Pr11c6 = ew
B-single: Br10c5 = ns
whip[1]: Pr9c7{ew .} ==> Br9c7 ≠ w, Br9c6 ≠ ne, Br8c7 ≠ e, Br8c7 ≠ o, Vr9c7 ≠ 1, Hr9c7 ≠ 0, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw
H-single: Hr9c7 = 1
V-single: Vr9c7 = 0
B-single: Br9c6 = ns
no-vertical-line-r9{c6 c7} ==> Ir9c7 = out
different-colours-in-{r9 r10}c7 ==> Hr10c7 = 1

LOOP[62]: Hr10c7-Hr10c6-Hr10c5-Vr9c5-Hr9c4-Vr9c4-Hr10c3-Hr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c4-Vr6c4-Hr6c4-Vr5c5-Vr4c5-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Vr6c3-Hr7c2-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7- ==> Vr10c8 = 0
no-vertical-line-r10{c7 c8} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
whip[1]: Hr9c7{1 .} ==> Pr9c8 ≠ o, Pr9c8 ≠ ns
whip[1]: Vr9c7{0 .} ==> Pr10c7 ≠ ne, Pr10c7 ≠ ns
whip[1]: Hr10c7{1 .} ==> Pr10c7 ≠ sw, Pr10c8 ≠ ne, Pr10c8 ≠ ns, Pr10c8 ≠ se, Br9c7 ≠ n, Br9c7 ≠ ne, Br10c7 ≠ w, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ esw
P-single: Pr9c9 = se
P-single: Pr10c7 = ew
whip[1]: Pr9c9{se .} ==> Br9c9 ≠ s, Br9c9 ≠ e, Br9c9 ≠ o, Br8c9 ≠ e, Br8c9 ≠ n, Vr9c9 ≠ 0, Hr9c9 ≠ 0, Br9c8 ≠ sw, Br9c9 ≠ se
H-single: Hr9c9 = 1
V-single: Vr9c9 = 1
whip[1]: Hr9c9{1 .} ==> Pr9c10 ≠ o, Pr9c10 ≠ ne, Pr9c10 ≠ ns, Pr9c10 ≠ se
whip[1]: Pr9c10{sw .} ==> Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br9c10 ≠ nw, Br9c10 ≠ swn, Br9c10 ≠ wne
whip[1]: Vr9c9{1 .} ==> Pr10c9 ≠ ew, Pr10c9 ≠ sw
whip[1]: Br9c9{wne .} ==> Pr10c10 ≠ nw, Nr9c9 ≠ 0, Nr9c9 ≠ 1
whip[1]: Br8c9{se .} ==> Nr8c9 ≠ 1
N-single: Nr8c9 = 2
whip[1]: Pr10c7{ew .} ==> Br10c6 ≠ nes
B-single: Br10c6 = ns
whip[1]: Br10c6{ns .} ==> Nr10c6 ≠ 3, Nr10c6 ≠ 1, Pr11c7 ≠ nw, Pr11c7 ≠ ne, Pr11c7 ≠ o
N-single: Nr10c6 = 2
P-single: Pr11c7 = ew
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ n, Br11c7 ≠ o, Br11c6 ≠ o
B-single: Br11c6 = n
B-single: Br11c7 = n
B-single: Br10c7 = ns
whip[1]: Br11c7{n .} ==> Pr11c8 ≠ o, Pr11c8 ≠ ne
w[1]-1-in-r10c8-asymmetric-sw-corner ==> Pr10c9 ≠ nw, Pr10c9 ≠ ns
P-single: Pr9c8 = sw
P-single: Pr10c9 = ne
w[1]-1-in-r8c8-symmetric-sw-corner ==> Pr8c9 ≠ ne, Pr8c9 ≠ o
whip[1]: Pr9c8{sw .} ==> Br9c7 ≠ ns, Br8c8 ≠ w, Vr9c8 ≠ 0, Vr8c8 ≠ 1, Br8c7 ≠ se, Br9c8 ≠ se
V-single: Vr8c8 = 0
V-single: Vr9c8 = 1
B-single: Br9c8 = ew
B-single: Br8c7 = s
B-single: Br8c8 = n
B-single: Br9c7 = nes
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = in
no-horizontal-line-{r8 r9}c8 ==> Ir8c8 = in
no-vertical-line-r8{c8 c9} ==> Ir8c9 = in
horizontal-line-{r8 r9}c9 ==> Ir9c9 = out
different-colours-in-{r7 r8}c8 ==> Hr8c8 = 1

LOOP[6]: Hr8c8-Vr7c8-Vr6c8-Hr6c8-Vr6c9- ==> Vr7c9 = 0
no-vertical-line-r7{c8 c9} ==> Ir7c9 = out
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1
different-colours-in-{r6 r7}c9 ==> Hr7c9 = 1

LOOP[8]: Hr7c9-Vr6c9-Hr6c8-Vr6c8-Vr7c8-Hr8c8-Hr8c9- ==> Vr7c10 = 0
no-vertical-line-r7{c9 c10} ==> Ir7c10 = out
same-colour-in-r7{c10 c11} ==> Vr7c11 = 0
different-colours-in-{r6 r7}c10 ==> Hr7c10 = 1
whip[1]: Vr8c8{0 .} ==> Pr8c8 ≠ ns
P-single: Pr8c8 = ne
whip[1]: Pr8c8{ne .} ==> Br7c8 ≠ w, Br7c8 ≠ ew
whip[1]: Br7c8{esw .} ==> Nr7c8 ≠ 1
whip[1]: Vr9c8{1 .} ==> Pr10c8 ≠ ew
P-single: Pr10c8 = nw
w[1]-1-in-r10c8-symmetric-nw-corner ==> Pr11c9 ≠ nw, Pr11c9 ≠ o
whip[1]: Pr10c8{nw .} ==> Br10c8 ≠ n, Br10c8 ≠ w
whip[1]: Br10c8{s .} ==> Pr11c8 ≠ nw
P-single: Pr11c8 = ew
whip[1]: Pr11c8{ew .} ==> Br10c8 ≠ e, Br11c8 ≠ o
B-single: Br11c8 = n
B-single: Br10c8 = s
whip[1]: Br11c8{n .} ==> Pr11c9 ≠ ne
P-single: Pr11c9 = ew
whip[1]: Pr11c9{ew .} ==> Br10c9 ≠ ne, Vr10c9 ≠ 1, Hr11c9 ≠ 0, Br11c9 ≠ o, Br10c9 ≠ ew, Br10c9 ≠ sw
H-single: Hr11c9 = 1
V-single: Vr10c9 = 0
B-single: Br11c9 = n
no-vertical-line-r10{c8 c9} ==> Ir10c9 = in
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
whip[1]: Hr11c9{1 .} ==> Pr11c10 ≠ ne
P-single: Pr11c10 = ew
whip[1]: Pr11c10{ew .} ==> Br10c10 ≠ w, Vr10c10 ≠ 1, Hr11c10 ≠ 0, Br11c10 ≠ o, Br10c9 ≠ se, Br10c10 ≠ nw, Br10c10 ≠ esw
H-single: Hr11c10 = 1
V-single: Vr10c10 = 0
B-single: Br10c9 = ns
B-single: Br11c10 = n
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1
whip[1]: Hr11c10{1 .} ==> Pr11c11 ≠ o
P-single: Pr11c11 = nw
whip[1]: Vr10c10{0 .} ==> Pr10c10 ≠ ns, Pr10c10 ≠ se
P-single: Pr10c10 = ew
whip[1]: Pr10c10{ew .} ==> Br9c10 ≠ ne, Br9c10 ≠ w, Br9c10 ≠ e, Br9c10 ≠ n, Br9c10 ≠ o, Vr9c10 ≠ 1, Hr10c10 ≠ 0, Br9c9 ≠ nw, Br9c9 ≠ wne, Br9c10 ≠ ew, Br9c10 ≠ sw, Br9c10 ≠ esw, Br10c10 ≠ se
H-single: Hr10c10 = 1
V-single: Vr9c10 = 0
B-single: Br10c10 = nes
B-single: Br9c9 = swn

LOOP[116]: Hr9c9-Vr9c9-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c2-Vr9c2-Hr10c2-Hr10c3-Vr9c4-Hr9c4-Vr9c5-Hr10c5-Hr10c6-Hr10c7-Vr9c8-Hr9c7-Hr9c6-Vr8c6-Hr8c6-Vr7c7-Hr7c6-Vr6c6-Hr6c6-Vr5c7-Hr5c7-Vr4c8-Hr4c7-Vr3c7-Hr3c7-Vr2c8-Hr2c7-Hr2c6-Vr1c6-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Hr2c9-Vr2c9-Hr3c9-Hr3c10-Vr3c11-Hr4c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Hr7c9-Vr6c9-Hr6c8-Vr6c8-Vr7c8-Hr8c8-Hr8c9- ==> Vr8c10 = 0
P-single: Pr8c9 = ew
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
different-colours-in-{r8 r9}c10 ==> Hr9c10 = 1
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1

LOOP[118]: Vr8c11-Hr9c10-Hr9c9-Vr9c9-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c2-Vr9c2-Hr10c2-Hr10c3-Vr9c4-Hr9c4-Vr9c5-Hr10c5-Hr10c6-Hr10c7-Vr9c8-Hr9c7-Hr9c6-Vr8c6-Hr8c6-Vr7c7-Hr7c6-Vr6c6-Hr6c6-Vr5c7-Hr5c7-Vr4c8-Hr4c7-Vr3c7-Hr3c7-Vr2c8-Hr2c7-Hr2c6-Vr1c6-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Hr2c9-Vr2c9-Hr3c9-Hr3c10-Vr3c11-Hr4c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Hr7c9-Vr6c9-Hr6c8-Vr6c8-Vr7c8-Hr8c8-Hr8c9- ==> Hr8c10 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXOXXXXX
XOOXOOOXOO
XOXXXOXXXX
OOOXOOOXOO
XXXXOOXXXO
OOXOOXXOXX
OXXXOOXOOO
XXOOOXXXXX
XOOXOOOXOO
XXXXXXXXXX

.———.———.———.———.   .———.———.———.———.———.
| 2       2   2 | 2 |                 3 |
.   .———.———.   .   .———.———.   .———.———.
| 2 |     3 |   |         3 |   | 3   2
.   .   .———.   .———.   .———.   .———.———.
|   | 2 |     0   3 |   |     0       3 |
.———.   .———.   .———.   .———.   .———.———.
  2         | 2 | 2         | 2 |
.———.———.———.   .   .   .———.   .———.   .
| 3             | 1   2 |         2 | 2
.———.———.   .———.   .———.   .———.   .———.
  1   3 | 2 |     1 | 3     | 3 |       |
.   .———.   .———.   .———.   .   .———.———.
  2 |           |     3 | 2 |         2
.———.   .———.———.   .———.   .———.———.———.
|     2 |     2     | 3       1         |
.   .———.   .———.   .———.———.   .———.———.
|   |     2 | 3 |     2     | 2 |
.   .———.———.   .———.———.———.   .———.———.
|                             1   2     |
.———.———.———.———.———.———.———.———.———.———.

init-time = 0.63s, solve-time = 36.14s, total-time = 36.77s
nb-facts=<Fact-185844>
Quasi-Loop max length = 118
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
