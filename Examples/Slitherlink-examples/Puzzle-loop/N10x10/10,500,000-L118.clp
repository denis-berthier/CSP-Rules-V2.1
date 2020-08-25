
(solve
10 10
2 . . . 2 . 2 2 2 2
3 2 2 2 . . . . 3 2
. 2 1 . . 3 . 2 . 1
. . 2 . . . 1 . 3 .
2 . . 1 . . 3 . . 3
. 2 3 . 3 2 . . . .
2 2 3 1 1 2 . . . .
. . . 2 2 . . 1 . .
2 . 1 . 1 . 3 2 . .
. 3 . 3 . . 2 2 . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . . . 2 . 2 2 2 2
3 2 2 2 . . . . 3 2
. 2 1 . . 3 . 2 . 1
. . 2 . . . 1 . 3 .
2 . . 1 . . 3 . . 3
. 2 3 . 3 2 . . . .
2 2 3 1 1 2 . . . .
. . . 2 2 . . 1 . .
2 . 1 . 1 . 3 2 . .
. 3 . 3 . . 2 2 . 3

Loading pre-computed background
start init-inner-N-and-B-candidates 0.613077163696289
start solution 0.626017808914185
entering BRT
w[1]-3-in-se-corner ==> Vr10c11 = 1, Hr11c10 = 1
w[1]-2-in-ne-corner ==> Vr2c11 = 1, Hr1c9 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3s-in-{r4c9...r5c10} ==> Vr5c11 = 1, Vr4c9 = 1, Hr6c10 = 1, Hr4c9 = 1, Vr6c11 = 0, Vr3c9 = 0, Hr4c8 = 0
w[1]-2-in-r3c8-open-se-corner ==> Hr3c8 = 1, Vr3c8 = 1, Hr3c7 = 0, Vr2c8 = 0
w[1]-diagonal-3-2-in-{r2c9...r3c8}-non-closed-sw-corner ==> Vr2c10 = 1, Hr2c9 = 1, Vr1c10 = 0, Hr2c10 = 0
w[1]-2-in-r1c10-open-sw-corner ==> Hr1c10 = 1, Vr1c11 = 1
w[1]-3-in-r10c10-closed-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-3-in-r5c10-closed-se-corner ==> Pr5c10 ≠ se, Pr5c10 ≠ nw, Pr5c10 ≠ o
w[5]-diagonal-2-3-in-sw-corner ==> Vr10c3 = 0
diagonal-2-2+3-in-ne-corner ==> Vr3c11 = 1, Hr1c8 = 1
adjacent-3s-in-c3{r6 r7} ==> Hr8c3 = 1, Hr7c3 = 1, Hr6c3 = 1, Hr7c4 = 0, Hr7c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r7 r6}c5 ==> Vr7c6 = 0, Vr6c5 = 1, Hr8c5 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r7 r8}c4-bkwd-diag-2s-3...r7c3 ==> Vr7c3 = 1
w[1]-2-in-r6c2-open-se-corner ==> Hr6c2 = 1, Vr6c2 = 1, Hr6c1 = 0, Vr5c2 = 0
w[1]-2-in-r5c1-open-se-corner ==> Hr5c1 = 1, Vr5c1 = 1, Vr4c1 = 0
w[1]-diagonal-3-2-in-{r6c3...r7c2}-non-closed-sw-corner ==> Vr6c4 = 1, Vr7c2 = 1, Vr5c4 = 0, Hr6c4 = 0
w[1]-3+diagonal-2-isolated-end-in-{r6c3+r6c2...nw} ==> Vr5c3 = 0
w[1]-3-in-r6c3-closed-se-corner ==> Pr6c3 ≠ se, Pr6c3 ≠ nw
w[1]-3-in-r7c3-closed-sw-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-3-in-r7c3-closed-nw-corner ==> Pr8c4 ≠ se, Pr8c4 ≠ nw, Pr8c4 ≠ o
P-single: Pr1c10 = ew
P-single: Pr2c11 = ns
P-single: Pr1c11 = sw
w[1]-1-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
w[1]-1-in-r9c5-asymmetric-nw-corner ==> Pr10c6 ≠ sw, Pr10c6 ≠ ew, Pr10c6 ≠ ns, Pr10c6 ≠ ne
w[1]-1-in-r4c7-asymmetric-ne-corner ==> Pr5c7 ≠ ew, Pr5c7 ≠ se, Pr5c7 ≠ nw, Pr5c7 ≠ ns
entering level Loop with <Fact-93241>
entering level Col with <Fact-93335>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-vertical-line-r6{c10 c11} ==> Ir6c10 = out
horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
vertical-line-r3{c10 c11} ==> Ir3c10 = in
vertical-line-r2{c10 c11} ==> Ir2c10 = in
no-horizontal-line-{r1 r2}c10 ==> Ir1c10 = in
no-vertical-line-r1{c9 c10} ==> Ir1c9 = in
horizontal-line-{r1 r2}c9 ==> Ir2c9 = out
vertical-line-r5{c0 c1} ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
vertical-line-r7{c2 c3} ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-horizontal-line-{r7 r8}c2 ==> Ir8c2 = out
no-vertical-line-r8{c2 c3} ==> Ir8c3 = out
vertical-line-r7{c1 c2} ==> Ir7c1 = in
vertical-line-r6{c4 c5} ==> Ir6c5 = out
horizontal-line-{r4 r5}c1 ==> Ir4c1 = out
vertical-line-r2{c0 c1} ==> Ir2c1 = in
horizontal-line-{r0 r1}c8 ==> Ir1c8 = in
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
same-colour-in-r1{c8 c9} ==> Vr1c9 = 0
P-single: Pr2c10 = sw
P-single: Pr1c9 = ew
same-colour-in-{r6 r7}c1 ==> Hr7c1 = 0
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
same-colour-in-{r2 r3}c10 ==> Hr3c10 = 0
Starting_init_links_with_<Fact-93405>
1019 candidates, 7934 csp-links and 32661 links. Density = 6.3%
starting non trivial part of solution
Entering_level_W1_with_<Fact-174600>
whip[1]: Hr3c10{0 .} ==> Br3c10 ≠ n, Pr3c11 ≠ sw, Pr3c10 ≠ se, Pr3c10 ≠ ew, Br2c10 ≠ ns, Br2c10 ≠ se, Br2c10 ≠ sw
P-single: Pr3c11 = ns
w[1]-1-in-r3c10-asymmetric-ne-corner ==> Pr4c10 ≠ ew, Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ ns
w[1]-3-in-r4c9-symmetric-ne-corner ==> Vr4c10 = 1
w[1]-3-in-r5c10-hit-by-verti-line-at-nw ==> Hr5c9 = 0
w[1]-3-in-r4c9-closed-ne-corner ==> Pr5c9 ≠ sw, Pr5c9 ≠ ne, Pr5c9 ≠ o
w[1]-3-in-r2c9-isolated-at-se-corner ==> Hr3c9 = 1
w[1]-3-in-r2c9-closed-se-corner ==> Pr2c9 ≠ se
horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
vertical-line-r4{c8 c9} ==> Ir4c9 = out
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = out
vertical-line-r4{c9 c10} ==> Ir4c10 = in
vertical-line-r3{c7 c8} ==> Ir3c7 = out
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
no-vertical-line-r2{c7 c8} ==> Ir2c8 = out
same-colour-in-r2{c8 c9} ==> Vr2c9 = 0
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
w[1]-3-in-r5c10-hit-by-verti-line-at-ne ==> Vr5c10 = 1
w[1]-3-in-r5c10-closed-sw-corner ==> Pr5c11 ≠ sw, Pr5c11 ≠ o
no-vertical-line-r6{c9 c10} ==> Ir6c9 = out
whip[1]: Pr3c11{ns .} ==> Br2c10 ≠ nw, Br3c10 ≠ s, Br3c10 ≠ w
B-single: Br3c10 = e
whip[1]: Br3c10{e .} ==> Pr4c10 ≠ ne, Pr4c11 ≠ o, Pr4c11 ≠ nw, Pr4c11 ≠ sw, Pr3c10 ≠ ns
P-single: Pr3c10 = nw
P-single: Pr4c11 = ns
whip[1]: Pr3c10{nw .} ==> Br3c9 ≠ s, Br3c9 ≠ e, Br3c9 ≠ o, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c10 ≠ ne, Br3c9 ≠ w, Br3c9 ≠ ne, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ wne, Br3c9 ≠ nes
B-single: Br2c10 = ew
whip[1]: Br3c9{swn .} ==> Pr3c9 ≠ ns, Pr3c9 ≠ nw, Nr3c9 ≠ 0
whip[1]: Pr3c9{ew .} ==> Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c9 ≠ esw, Br3c8 ≠ sw, Br2c8 ≠ e, Br2c8 ≠ ne, Br3c8 ≠ ne
B-single: Br2c9 = nes
whip[1]: Br2c9{nes .} ==> Pr2c9 ≠ ns
P-single: Pr2c9 = ew
whip[1]: Pr2c9{ew .} ==> Br2c8 ≠ w, Br2c8 ≠ s, Br2c8 ≠ o, Br1c9 ≠ ne, Br1c8 ≠ ne, Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c9 ≠ nw, Br1c9 ≠ ew, Br1c9 ≠ sw, Br2c8 ≠ sw
whip[1]: Br2c8{swn .} ==> Pr2c8 ≠ ns, Pr2c8 ≠ nw, Nr2c8 ≠ 0
whip[1]: Pr2c8{ew .} ==> Vr1c8 ≠ 1, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c8 ≠ sw, Br2c7 ≠ sw, Br2c7 ≠ wne, Br2c7 ≠ nes, Br1c7 ≠ ne, Br2c7 ≠ o, Br2c7 ≠ s, Br2c7 ≠ w, Br2c7 ≠ ne
V-single: Vr1c8 = 0
P-single: Pr1c8 = ew
B-single: Br1c8 = ns
no-vertical-line-r1{c7 c8} ==> Ir1c7 = in
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ sw
whip[1]: Br1c7{nw .} ==> Pr1c7 ≠ sw
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ sw, Br1c6 ≠ wne, Br1c6 ≠ nes, Br1c6 ≠ o, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ ne
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 0
whip[1]: Hr2c7{1 .} ==> Pr2c7 ≠ ns, Pr2c7 ≠ nw, Pr2c8 ≠ se, Br1c7 ≠ nw, Br2c7 ≠ e, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ esw
P-single: Pr1c7 = ew
P-single: Pr2c8 = ew
B-single: Br1c7 = ns
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ e, Vr1c7 ≠ 1, Hr1c6 ≠ 0, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ esw
H-single: Hr1c6 = 1
V-single: Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c6 ≠ o, Pr1c6 ≠ sw
B-single: Br0c6 = s
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ se, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c3 ≠ nw, Br3c3 ≠ s, Br3c3 ≠ w, Br4c2 ≠ n, Br4c2 ≠ e, Br4c2 ≠ ns
whip[1]: Br3c3{e .} ==> Hr4c3 ≠ 1, Vr3c3 ≠ 1, Pr4c3 ≠ ne, Pr3c3 ≠ se, Pr4c4 ≠ ew, Pr4c4 ≠ sw
V-single: Vr3c3 = 0
H-single: Hr4c3 = 0
w[1]-diagonal-3-2-in-{r2c1...r3c2}-non-closed-se-corner ==> Hr4c2 = 1, Hr2c1 = 1, Vr1c1 = 0
w[1]-3-in-r2c1-closed-nw-corner ==> Pr3c2 ≠ se
w[1]-3-in-r2c1-asymmetric-ne-corner ==> Hr3c1 = 1, Vr3c1 = 0
P-single: Pr4c3 = sw
P-single: Pr2c2 = nw
P-single: Pr1c1 = o
w[1]-1-in-r5c4-asymmetric-nw-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ ew, Pr6c5 ≠ ns, Pr6c5 ≠ ne
w[1]-3-in-r6c5-symmetric-nw-corner ==> Hr6c5 = 1
w[1]-3-in-r6c5-closed-nw-corner ==> Pr7c6 ≠ nw, Pr7c6 ≠ o
no-vertical-line-r5{c4 c5} ==> Ir5c5 = in
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
w[1]-2-in-r2c2-open-nw-corner ==> Hr3c2 = 1, Vr2c3 = 1, Hr3c3 = 0
w[1]-3+diagonal-2-isolated-end-in-{r2c1+r2c2...se} ==> Vr3c2 = 0
P-single: Pr3c3 = nw

LOOP[8]: Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Hr3c2-Vr2c3- ==> Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = out
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
same-colour-in-{r4 r5}c2 ==> Hr5c2 = 0
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1

LOOP[10]: Hr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Hr3c2-Vr2c3-Hr2c3- ==> Vr1c4 = 0
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
whip[1]: Vr3c3{0 .} ==> Br3c2 ≠ ne, Br3c2 ≠ ew
whip[1]: Hr4c3{0 .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns
whip[1]: Hr4c2{1 .} ==> Br4c2 ≠ o, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Br3c2 ≠ nw, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ sw
whip[1]: Br4c2{nes .} ==> Pr5c3 ≠ se, Pr5c3 ≠ ew, Nr4c2 ≠ 0, Nr4c2 ≠ 1
whip[1]: Pr5c3{nw .} ==> Br4c3 ≠ se, Br5c2 ≠ ne, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ sw, Br4c1 ≠ sw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br3c1 ≠ e, Br3c1 ≠ ne, Br4c1 ≠ o, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ ne
B-single: Br3c2 = ns
whip[1]: Br3c2{ns .} ==> Pr3c2 ≠ ns
P-single: Pr3c2 = ew
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ w, Br3c1 ≠ s, Br3c1 ≠ o, Br2c2 ≠ ne, Br2c1 ≠ esw, Br2c1 ≠ wne, Br2c1 ≠ nes, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br3c1 ≠ sw
B-single: Br2c1 = swn
whip[1]: Br2c1{swn .} ==> Pr3c1 ≠ se, Pr3c1 ≠ ns, Pr3c1 ≠ o, Pr2c1 ≠ ns
P-single: Pr2c1 = se
P-single: Pr3c1 = ne
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ nw
B-single: Br1c1 = se
whip[1]: Br1c1{se .} ==> Pr1c2 ≠ ew
P-single: Pr1c2 = se
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ e, Br1c2 ≠ n, Br1c2 ≠ o, Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ nes
whip[1]: Br1c2{wne .} ==> Pr1c3 ≠ o, Pr1c3 ≠ se, Nr1c2 ≠ 0, Nr1c2 ≠ 1
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ nw, Br3c1 ≠ swn
whip[1]: Br3c1{ns .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ ns, Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ n
whip[1]: Br4c1{swn .} ==> Nr4c1 ≠ 0
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Pr2c2{nw .} ==> Br1c2 ≠ swn, Br2c2 ≠ ns
B-single: Br2c2 = se
whip[1]: Br2c2{se .} ==> Pr2c3 ≠ ew
whip[1]: Pr2c3{se .} ==> Br1c3 ≠ ne, Br1c3 ≠ sw, Br1c3 ≠ esw, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br1c3 ≠ n
whip[1]: Hr6c5{1 .} ==> Br5c5 ≠ o, Pr6c5 ≠ o, Pr6c5 ≠ nw, Pr6c6 ≠ o, Pr6c6 ≠ ne, Pr6c6 ≠ ns, Pr6c6 ≠ se, Br5c5 ≠ n, Br5c5 ≠ e, Br5c5 ≠ w, Br5c5 ≠ ne, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ wne, Br6c5 ≠ esw
P-single: Pr6c5 = se
whip[1]: Pr6c5{se .} ==> Br6c4 ≠ w, Br6c4 ≠ s, Br6c4 ≠ n, Br6c4 ≠ o, Br5c4 ≠ s, Br5c4 ≠ e, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c4 ≠ sw, Br6c4 ≠ swn, Br6c4 ≠ wne, Br6c4 ≠ nes, Br6c5 ≠ nes
whip[1]: Br6c5{wne .} ==> Pr7c5 ≠ o, Pr7c5 ≠ se, Pr7c5 ≠ ew, Pr7c5 ≠ sw
whip[1]: Br6c4{esw .} ==> Pr6c4 ≠ ne, Pr6c4 ≠ se, Pr6c4 ≠ ew, Nr6c4 ≠ 0
whip[1]: Br5c5{nes .} ==> Pr5c5 ≠ ns, Pr5c5 ≠ se, Pr5c5 ≠ sw, Nr5c5 ≠ 0
whip[1]: Pr6c6{sw .} ==> Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c6 ≠ nw
whip[1]: Br6c6{sw .} ==> Pr7c7 ≠ se
whip[1]: Pr7c7{sw .} ==> Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br7c6 ≠ sw, Br7c7 ≠ nw, Br7c7 ≠ swn, Br7c7 ≠ wne
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Hr3c3{0 .} ==> Pr3c4 ≠ ew, Br2c3 ≠ sw, Br3c3 ≠ n
B-single: Br3c3 = e
whip[1]: Br3c3{e .} ==> Vr3c4 ≠ 0
V-single: Vr3c4 = 1
vertical-line-r3{c3 c4} ==> Ir3c4 = in
whip[1]: Vr3c4{1 .} ==> Br3c4 ≠ o, Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ s, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ nes
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ ne, Br2c4 ≠ sw
whip[1]: Vr1c3{0 .} ==> Pr1c3 ≠ sw, Pr2c3 ≠ ns, Br1c2 ≠ wne, Br1c3 ≠ w, Br1c3 ≠ ew
P-single: Pr3c4 = se
P-single: Pr2c3 = se
P-single: Pr1c3 = ew
B-single: Br1c2 = nw
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ w, Vr2c4 ≠ 1, Hr3c4 ≠ 0, Br2c3 ≠ ew, Br2c4 ≠ nw, Br2c4 ≠ ew, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw
H-single: Hr3c4 = 1
V-single: Vr2c4 = 0
B-single: Br2c3 = nw
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1

LOOP[12]: Hr2c4-Hr2c3-Vr2c3-Hr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4- ==> Vr1c5 = 0
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
whip[1]: Hr3c4{1 .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ns
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Vr2c4{0 .} ==> Pr2c4 ≠ ns
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ o, Br1c4 ≠ n, Br1c4 ≠ e, Br1c4 ≠ ne
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Hr2c4{1 .} ==> Pr2c4 ≠ nw, Pr2c5 ≠ ns, Pr2c5 ≠ se, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ wne, Br2c4 ≠ se
P-single: Pr2c4 = ew
B-single: Br2c4 = ns
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ nes
B-single: Br1c3 = ns
whip[1]: Br1c3{ns .} ==> Nr1c3 ≠ 3, Nr1c3 ≠ 1, Pr1c4 ≠ se, Pr1c4 ≠ o, Pr1c4 ≠ sw
N-single: Nr1c3 = 2
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ s, Br1c4 ≠ se
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 1
whip[1]: Br2c4{ns .} ==> Vr2c5 ≠ 1
V-single: Vr2c5 = 0
no-vertical-line-r2{c4 c5} ==> Ir2c5 = out
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
whip[1]: Vr2c5{0 .} ==> Br2c5 ≠ w, Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ wne
whip[1]: Hr2c5{1 .} ==> Br2c5 ≠ o, Pr2c5 ≠ nw, Pr2c6 ≠ ne, Pr2c6 ≠ ns, Br1c5 ≠ ne, Br1c5 ≠ nw, Br1c5 ≠ ew, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ se
P-single: Pr2c5 = ew
whip[1]: Pr2c5{ew .} ==> Br1c4 ≠ nes, Br1c5 ≠ sw
B-single: Br1c4 = ns
whip[1]: Br1c4{ns .} ==> Nr1c4 ≠ 3, Pr1c5 ≠ sw
N-single: Nr1c4 = 2
P-single: Pr1c5 = ew
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ se
B-single: Br1c5 = ns
whip[1]: Br1c5{ns .} ==> Pr1c6 ≠ se
P-single: Pr1c6 = ew
whip[1]: Pr1c6{ew .} ==> Br1c6 ≠ nw, Br1c6 ≠ swn
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 3
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Pr2c6{sw .} ==> Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ o, Br2c6 ≠ e, Br2c6 ≠ s
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ se, Br3c5 ≠ o, Br3c5 ≠ e, Br3c5 ≠ s
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Br3c4{wne .} ==> Pr4c5 ≠ nw, Nr3c4 ≠ 1
whip[1]: Br1c2{nw .} ==> Nr1c2 ≠ 3
N-single: Nr1c2 = 2
whip[1]: Hr5c2{0 .} ==> Pr5c2 ≠ se, Pr5c2 ≠ ew, Pr5c3 ≠ nw, Br4c2 ≠ nes, Br5c2 ≠ n, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ swn
whip[1]: Pr5c3{ns .} ==> Br5c3 ≠ s, Br5c3 ≠ se, Br5c3 ≠ o, Br5c3 ≠ e
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c2{nw .} ==> Br4c1 ≠ nw, Br4c1 ≠ swn, Br4c2 ≠ ne, Br5c1 ≠ ne, Br5c1 ≠ sw
B-single: Br4c2 = wne
whip[1]: Br4c2{wne .} ==> Nr4c2 ≠ 2, Pr4c2 ≠ ew
N-single: Nr4c2 = 3
P-single: Pr4c2 = se
whip[1]: Pr4c2{se .} ==> Br3c1 ≠ ns
B-single: Br3c1 = n
whip[1]: Br3c1{n .} ==> Pr4c1 ≠ se, Nr3c1 ≠ 2
N-single: Nr3c1 = 1
P-single: Pr4c1 = o
whip[1]: Br4c1{se .} ==> Pr5c1 ≠ ne, Pr5c1 ≠ ns, Nr4c1 ≠ 3
P-single: Pr7c3 = se
P-single: Pr6c2 = se
P-single: Pr5c1 = se
whip[1]: Pr7c3{se .} ==> Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ nes
B-single: Br6c3 = nes
B-single: Br6c2 = nw
whip[1]: Br6c3{nes .} ==> Pr7c4 ≠ ew, Pr7c4 ≠ se, Pr7c4 ≠ ns, Pr6c4 ≠ nw, Pr6c4 ≠ ns, Pr6c4 ≠ o, Pr6c3 ≠ ns
P-single: Pr6c3 = ew
P-single: Pr6c4 = sw
P-single: Pr7c4 = nw
w[1]-1-in-r7c4-symmetric-nw-corner ==> Pr8c5 ≠ nw, Pr8c5 ≠ o
w[1]-1-in-r5c4-symmetric-sw-corner ==> Pr5c5 ≠ ne, Pr5c5 ≠ o
whip[1]: Pr6c3{ew .} ==> Br5c3 ≠ ne, Br5c3 ≠ w, Br5c3 ≠ n, Br5c2 ≠ w, Br5c2 ≠ e, Br5c2 ≠ o, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ esw, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw
whip[1]: Br5c3{nes .} ==> Pr5c3 ≠ ns, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Nr5c3 ≠ 1
P-single: Pr4c4 = ne
P-single: Pr5c3 = ne
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ o, Vr4c4 ≠ 1, Hr4c4 ≠ 0, Br3c4 ≠ nw, Br3c4 ≠ wne, Br4c3 ≠ ew, Br4c4 ≠ e, Br4c4 ≠ s, Br4c4 ≠ w, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne
H-single: Hr4c4 = 1
V-single: Vr4c4 = 0
B-single: Br4c3 = sw
B-single: Br3c4 = swn
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
whip[1]: Hr4c4{1 .} ==> Pr4c5 ≠ o, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ se
whip[1]: Pr4c5{sw .} ==> Vr3c5 ≠ 1, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ swn, Br4c5 ≠ wne, Br3c5 ≠ w, Br4c5 ≠ o, Br4c5 ≠ e, Br4c5 ≠ s
V-single: Vr3c5 = 0
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
w[1]-3-in-r3c6-hit-by-horiz-line-at-nw ==> Vr3c7 = 1, Hr4c6 = 1, Vr2c6 = 0
w[1]-3-in-r3c6-closed-se-corner ==> Pr3c6 ≠ se, Pr3c6 ≠ nw, Pr3c6 ≠ o
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
no-vertical-line-r4{c6 c7} ==> Ir4c6 = out
horizontal-line-{r3 r4}c6 ==> Ir3c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = out
same-colour-in-r2{c6 c7} ==> Vr2c7 = 0
w[1]-3-in-r3c6-isolated-at-ne-corner ==> Hr3c6 = 1
w[1]-3-in-r3c6-closed-ne-corner ==> Pr4c6 ≠ sw, Pr4c6 ≠ ne, Pr4c6 ≠ o

LOOP[8]: Hr4c4-Vr3c4-Hr3c4-Hr3c5-Hr3c6-Vr3c7-Hr4c6- ==> Hr4c5 = 0
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
w[1]-3-in-r5c7-hit-by-verti-line-at-ne ==> Vr5c7 = 1, Hr6c7 = 1, Hr5c8 = 0
w[1]-2-in-r6c6-open-ne-corner ==> Hr7c6 = 1, Vr6c6 = 1, Hr7c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r4 r5}c7 ==> Vr5c8 = 1
w[1]-3-in-r5c7-closed-se-corner ==> Pr5c7 ≠ o
w[1]-3-in-r6c5-closed-ne-corner ==> Pr7c5 ≠ ne
w[1]-3-in-r5c7-closed-sw-corner ==> Pr5c8 ≠ sw, Pr5c8 ≠ ne, Pr5c8 ≠ o
w[1]-diagonal-closed-3-1-in-{r6c5...r7c4} ==> Hr8c4 = 0
w[0]-adjacent-3-in-r7c3-nolines-east ==> Vr8c4 = 1
w[1]-1-in-r7c4-asymmetric-ne-corner ==> Pr8c4 ≠ ew, Pr8c4 ≠ ns
vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-vertical-line-r5{c5 c6} ==> Ir5c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
no-vertical-line-r6{c7 c8} ==> Ir6c8 = in
no-horizontal-line-{r5 r6}c8 ==> Ir5c8 = in
vertical-line-r5{c7 c8} ==> Ir5c7 = out
horizontal-line-{r6 r7}c6 ==> Ir7c6 = out
no-vertical-line-r7{c5 c6} ==> Ir7c5 = out
no-horizontal-line-{r7 r8}c5 ==> Ir8c5 = out
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
different-colours-in-r7{c4 c5} ==> Hr7c5 = 1
same-colour-in-{r4 r5}c7 ==> Hr5c7 = 0
different-colours-in-r5{c8 c9} ==> Hr5c9 = 1
different-colours-in-r6{c8 c9} ==> Hr6c9 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
whip[1]: Vr3c5{0 .} ==> Pr3c5 ≠ sw
P-single: Pr3c5 = ew
whip[1]: Pr3c5{ew .} ==> Br2c5 ≠ ne, Br2c5 ≠ n
whip[1]: Br2c5{nes .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ns, Nr2c5 ≠ 1
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nes, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br2c6 ≠ w
B-single: Br2c5 = ns
whip[1]: Br2c5{ns .} ==> Nr2c5 ≠ 3, Pr2c6 ≠ sw
N-single: Nr2c5 = 2
P-single: Pr2c6 = ew
whip[1]: Pr2c6{ew .} ==> Br1c6 ≠ n
B-single: Br1c6 = ns
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 1, Pr2c7 ≠ se
N-single: Nr1c6 = 2
P-single: Pr2c7 = ew
whip[1]: Pr2c7{ew .} ==> Br2c6 ≠ ne, Br2c6 ≠ nes, Br2c7 ≠ nw, Br2c7 ≠ swn
whip[1]: Br2c7{ns .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ nw, Pr3c8 ≠ ne, Pr3c8 ≠ ns, Nr2c7 ≠ 0, Nr2c7 ≠ 3
whip[1]: Pr3c8{sw .} ==> Br2c8 ≠ nw, Br2c8 ≠ swn, Br3c7 ≠ sw, Br3c8 ≠ se, Br3c7 ≠ o, Br3c7 ≠ s, Br3c7 ≠ w
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0
whip[1]: Br2c8{ns .} ==> Nr2c8 ≠ 3
whip[1]: Br2c6{ns .} ==> Nr2c6 ≠ 3
whip[1]: Br3c6{nes .} ==> Pr3c7 ≠ o, Pr3c7 ≠ ew, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c7 ≠ sw
P-single: Pr4c7 = nw
w[1]-1-in-r4c7-symmetric-nw-corner ==> Pr5c8 ≠ se, Pr5c8 ≠ nw
whip[1]: Pr4c7{nw .} ==> Br4c7 ≠ n, Br4c6 ≠ s, Br4c6 ≠ e, Br4c6 ≠ o, Br3c7 ≠ e, Br3c7 ≠ n, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c7 ≠ nes, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ w
whip[1]: Br4c7{s .} ==> Pr5c7 ≠ ne, Pr4c8 ≠ nw, Pr4c8 ≠ ew
P-single: Pr5c7 = sw
whip[1]: Pr5c7{sw .} ==> Br5c6 ≠ ns, Br5c6 ≠ w, Br5c6 ≠ s, Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br4c7 ≠ s, Br4c6 ≠ n, Br4c6 ≠ nw, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c7 ≠ swn, Br5c7 ≠ wne, Br5c7 ≠ nes
B-single: Br5c7 = esw
B-single: Br4c7 = e
whip[1]: Br5c7{esw .} ==> Pr6c8 ≠ sw, Pr6c8 ≠ ew, Pr6c8 ≠ se, Pr6c8 ≠ ns, Pr6c8 ≠ ne, Pr6c8 ≠ o, Pr6c7 ≠ ew, Pr6c7 ≠ se, Pr6c7 ≠ nw, Pr6c7 ≠ ns, Pr6c7 ≠ o, Pr5c8 ≠ ew
P-single: Pr7c6 = ne
P-single: Pr5c8 = ns
P-single: Pr6c7 = ne
P-single: Pr6c8 = nw
w[1]-1-in-r7c5-symmetric-ne-corner ==> Pr8c5 ≠ ne
w[1]-1-in-r9c3-asymmetric-ne-corner ==> Pr10c3 ≠ ew, Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ ns
w[1]-3-in-r10c2-symmetric-ne-corner ==> Hr10c2 = 1
w[1]-3-in-r10c2-closed-ne-corner ==> Pr11c2 ≠ ne, Pr11c2 ≠ o
whip[1]: Pr7c6{ne .} ==> Br7c5 ≠ n, Br6c5 ≠ swn, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ se, Br6c6 ≠ ew, Br7c5 ≠ e, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ ew
B-single: Br6c6 = sw
B-single: Br6c5 = wne
whip[1]: Br6c6{sw .} ==> Pr7c7 ≠ ns, Pr6c6 ≠ ew
P-single: Pr6c6 = sw
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ se, Br5c5 ≠ nes, Br5c6 ≠ wne, Br5c6 ≠ nes
B-single: Br5c6 = ne
whip[1]: Br5c6{ne .} ==> Nr5c6 ≠ 3, Nr5c6 ≠ 1, Nr5c6 ≠ 0, Pr5c6 ≠ se, Pr5c6 ≠ nw, Pr5c6 ≠ ns, Pr5c6 ≠ o, Pr5c6 ≠ sw
N-single: Nr5c6 = 2
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ esw, Br4c5 ≠ nes, Br4c5 ≠ n, Br4c5 ≠ w
whip[1]: Br4c5{sw .} ==> Nr4c5 ≠ 0, Nr4c5 ≠ 1, Nr4c5 ≠ 3
N-single: Nr4c5 = 2
whip[1]: Br5c5{ns .} ==> Nr5c5 ≠ 3
whip[1]: Pr7c7{sw .} ==> Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ wne, Br7c7 ≠ se, Br6c7 ≠ w, Br7c7 ≠ o, Br7c7 ≠ e, Br7c7 ≠ s
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Br7c6{ns .} ==> Pr8c6 ≠ ns, Pr8c6 ≠ nw
whip[1]: Pr8c6{ew .} ==> Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c5 ≠ ne, Br8c6 ≠ w
whip[1]: Pr5c8{ns .} ==> Br5c8 ≠ e, Br5c8 ≠ n, Br5c8 ≠ o, Br4c8 ≠ e, Br4c8 ≠ n, Br4c8 ≠ o, Br4c8 ≠ s, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ nes, Br5c8 ≠ s, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c8 ≠ nes
whip[1]: Br5c8{esw .} ==> Pr5c9 ≠ nw, Pr5c9 ≠ ew, Nr5c8 ≠ 0
whip[1]: Pr5c9{se .} ==> Br4c9 ≠ esw, Br4c9 ≠ swn, Br5c8 ≠ sw, Br5c9 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ se, Br5c9 ≠ nes, Br5c8 ≠ w, Br5c9 ≠ o, Br5c9 ≠ n, Br5c9 ≠ e, Br5c9 ≠ s
whip[1]: Br5c9{wne .} ==> Pr6c9 ≠ o, Pr6c9 ≠ se, Pr6c9 ≠ ew, Pr6c9 ≠ sw, Nr5c9 ≠ 0
whip[1]: Pr6c9{nw .} ==> Br6c8 ≠ ne, Br6c8 ≠ wne, Br6c8 ≠ nes, Br6c9 ≠ nw, Br6c9 ≠ swn, Br6c9 ≠ wne
whip[1]: Br5c8{esw .} ==> Nr5c8 ≠ 1
whip[1]: Br4c9{nes .} ==> Pr4c9 ≠ o, Pr4c9 ≠ ns, Pr4c9 ≠ sw, Pr4c10 ≠ o, Pr5c10 ≠ ew, Pr5c10 ≠ sw
P-single: Pr4c10 = sw
whip[1]: Pr4c10{sw .} ==> Br4c10 ≠ ns, Br4c10 ≠ ne, Br4c10 ≠ s, Br4c10 ≠ e, Br4c10 ≠ n, Br4c10 ≠ o, Br3c9 ≠ n, Br3c9 ≠ nw, Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ swn, Br4c10 ≠ wne, Br4c10 ≠ nes
whip[1]: Br4c10{esw .} ==> Nr4c10 ≠ 0
whip[1]: Br3c9{swn .} ==> Nr3c9 ≠ 1
whip[1]: Pr5c10{ns .} ==> Br4c9 ≠ nes, Br5c9 ≠ nw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c10 ≠ swn, Br5c10 ≠ wne
B-single: Br4c9 = wne
whip[1]: Br4c9{wne .} ==> Pr5c9 ≠ se, Pr4c9 ≠ ew, Pr4c9 ≠ ne
P-single: Pr3c8 = se
P-single: Pr4c9 = se
P-single: Pr5c9 = ns
whip[1]: Pr3c8{se .} ==> Br2c8 ≠ n, Br2c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ wne, Br3c8 ≠ ns, Br3c8 ≠ ew
B-single: Br3c8 = nw
B-single: Br3c7 = ew
B-single: Br2c7 = n
B-single: Br2c8 = ns
whip[1]: Br3c8{nw .} ==> Pr4c8 ≠ se, Pr3c9 ≠ se
P-single: Pr3c9 = ew
P-single: Pr4c8 = ns
whip[1]: Pr3c9{ew .} ==> Br3c9 ≠ swn
B-single: Br3c9 = ns
whip[1]: Br3c9{ns .} ==> Nr3c9 ≠ 3
N-single: Nr3c9 = 2
whip[1]: Pr4c8{ns .} ==> Br4c8 ≠ nw, Br4c8 ≠ wne
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 0, Nr4c8 ≠ 3
whip[1]: Br3c7{ew .} ==> Nr3c7 ≠ 3, Nr3c7 ≠ 1, Pr3c7 ≠ se
N-single: Nr3c7 = 2
P-single: Pr3c7 = sw
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ n, Br3c6 ≠ esw
B-single: Br3c6 = nes
B-single: Br2c6 = ns
whip[1]: Br3c6{nes .} ==> Pr3c6 ≠ sw
P-single: Pr3c6 = ew
whip[1]: Pr3c6{ew .} ==> Br3c5 ≠ ne, Br3c5 ≠ nes
whip[1]: Br3c5{ns .} ==> Nr3c5 ≠ 3
whip[1]: Br2c6{ns .} ==> Nr2c6 ≠ 1
N-single: Nr2c6 = 2
whip[1]: Br2c7{n .} ==> Nr2c7 ≠ 2
N-single: Nr2c7 = 1
whip[1]: Br2c8{ns .} ==> Nr2c8 ≠ 1
N-single: Nr2c8 = 2
whip[1]: Pr4c9{se .} ==> Br4c8 ≠ w
B-single: Br4c8 = ew
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 1
N-single: Nr4c8 = 2
whip[1]: Br5c10{nes .} ==> Pr5c11 ≠ nw, Pr6c11 ≠ o, Pr6c11 ≠ ns, Pr6c11 ≠ sw, Pr6c10 ≠ o, Pr6c10 ≠ ns, Pr6c10 ≠ nw, Pr6c10 ≠ sw
P-single: Pr6c11 = nw
P-single: Pr5c11 = ns
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ s, Br6c10 ≠ e, Br6c10 ≠ o, Br6c10 ≠ w, Br6c10 ≠ ne, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ sw, Br6c10 ≠ esw, Br6c10 ≠ wne, Br6c10 ≠ nes
whip[1]: Br6c10{swn .} ==> Pr7c11 ≠ ns, Pr7c11 ≠ nw, Nr6c10 ≠ 0
whip[1]: Pr7c11{sw .} ==> Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ ew, Br7c10 ≠ esw, Br7c10 ≠ swn, Br7c10 ≠ n, Br7c10 ≠ e, Br7c10 ≠ ns
whip[1]: Pr5c11{ns .} ==> Br4c10 ≠ w, Br4c10 ≠ sw, Br4c10 ≠ esw, Br5c10 ≠ nes
B-single: Br5c10 = esw
B-single: Br4c10 = ew
whip[1]: Br5c10{esw .} ==> Pr6c10 ≠ ew, Pr6c10 ≠ se, Pr5c10 ≠ ne
P-single: Pr5c10 = ns
P-single: Pr6c10 = ne
whip[1]: Pr5c10{ns .} ==> Br5c9 ≠ w, Br5c9 ≠ sw
whip[1]: Br5c9{esw .} ==> Nr5c9 ≠ 1
whip[1]: Pr6c10{ne .} ==> Br6c9 ≠ n, Br5c9 ≠ esw, Br6c9 ≠ e, Br6c9 ≠ ne, Br6c9 ≠ ns, Br6c9 ≠ se, Br6c9 ≠ ew, Br6c9 ≠ esw, Br6c9 ≠ nes, Br6c10 ≠ nw, Br6c10 ≠ swn
B-single: Br5c9 = ew
whip[1]: Br5c9{ew .} ==> Nr5c9 ≠ 3, Pr6c9 ≠ ne
N-single: Nr5c9 = 2
whip[1]: Pr6c9{nw .} ==> Br6c8 ≠ w, Br6c8 ≠ sw, Br6c8 ≠ o, Br6c8 ≠ s
whip[1]: Br6c8{swn .} ==> Nr6c8 ≠ 0
whip[1]: Br6c10{ns .} ==> Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Nr6c10 ≠ 3
whip[1]: Br6c9{sw .} ==> Nr6c9 ≠ 3
whip[1]: Br4c10{ew .} ==> Nr4c10 ≠ 3, Nr4c10 ≠ 1
N-single: Nr4c10 = 2
whip[1]: Pr6c7{ne .} ==> Br6c7 ≠ o, Br6c7 ≠ e, Br6c7 ≠ s, Br6c7 ≠ se
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Pr6c8{nw .} ==> Br6c8 ≠ n, Br5c8 ≠ esw, Br6c7 ≠ ne, Br6c7 ≠ nes, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ ew, Br6c8 ≠ esw, Br6c8 ≠ swn
B-single: Br5c8 = ew
whip[1]: Br5c8{ew .} ==> Nr5c8 ≠ 3, Pr6c9 ≠ nw
N-single: Nr5c8 = 2
P-single: Pr6c9 = ns
whip[1]: Pr6c9{ns .} ==> Br6c9 ≠ o, Br6c9 ≠ s
whip[1]: Br6c9{sw .} ==> Pr7c9 ≠ o, Pr7c9 ≠ se, Pr7c9 ≠ ew, Pr7c9 ≠ sw, Nr6c9 ≠ 0
whip[1]: Pr7c9{nw .} ==> Br7c8 ≠ ne, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ nw, Br7c9 ≠ swn, Br7c9 ≠ wne
whip[1]: Br6c8{se .} ==> Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ nw, Nr6c8 ≠ 3
whip[1]: Br6c7{ns .} ==> Nr6c7 ≠ 3
whip[1]: Hr10c2{1 .} ==> Br9c2 ≠ o, Pr10c2 ≠ o, Pr10c2 ≠ ns, Pr10c2 ≠ nw, Pr10c2 ≠ sw, Pr10c3 ≠ o, Pr10c3 ≠ ne, Br9c2 ≠ n, Br9c2 ≠ e, Br9c2 ≠ w, Br9c2 ≠ ne, Br9c2 ≠ nw, Br9c2 ≠ ew, Br9c2 ≠ wne, Br10c2 ≠ esw
P-single: Pr10c3 = sw
whip[1]: Pr10c3{sw .} ==> Br10c3 ≠ ns, Br10c3 ≠ ne, Br10c3 ≠ s, Br10c3 ≠ e, Br10c3 ≠ n, Br10c3 ≠ o, Br9c3 ≠ w, Br9c3 ≠ s, Br9c2 ≠ se, Br9c2 ≠ esw, Br9c2 ≠ nes, Br10c2 ≠ swn, Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ swn, Br10c3 ≠ wne, Br10c3 ≠ nes
whip[1]: Br10c3{esw .} ==> Pr11c3 ≠ o, Pr11c3 ≠ ew, Pr10c4 ≠ nw, Pr10c4 ≠ ew, Pr10c4 ≠ sw, Nr10c3 ≠ 0
whip[1]: Br9c2{swn .} ==> Pr9c3 ≠ ns, Pr9c3 ≠ se, Pr9c3 ≠ sw, Nr9c2 ≠ 0
whip[1]: Pr10c2{ew .} ==> Br9c1 ≠ se, Br10c1 ≠ ne
whip[1]: Br9c1{sw .} ==> Pr9c1 ≠ o
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Pr11c2{ew .} ==> Br11c1 ≠ o, Hr11c1 ≠ 0, Br10c1 ≠ o, Br10c1 ≠ n, Br10c1 ≠ e
H-single: Hr11c1 = 1
B-single: Br11c1 = n
horizontal-line-{r10 r11}c1 ==> Ir10c1 = in
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
whip[1]: Hr11c1{1 .} ==> Pr11c1 ≠ o
P-single: Pr11c1 = ne
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o, Pr10c1 ≠ o, Pr10c1 ≠ ne
B-single: Br10c0 = e
whip[1]: Pr9c2{ew .} ==> Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br9c1 ≠ sw, Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ e, Br8c2 ≠ ne, Br9c1 ≠ ne
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 0
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 0, Nr10c1 ≠ 1
whip[1]: Pr9c4{ew .} ==> Br8c4 ≠ sw, Br8c4 ≠ ne
whip[1]: Pr8c5{ew .} ==> Br8c5 ≠ nw, Br8c5 ≠ se, Br7c4 ≠ n, Br7c4 ≠ w
whip[1]: Br7c4{s .} ==> Pr8c4 ≠ ne, Pr7c5 ≠ nw
P-single: Pr7c5 = ns
P-single: Pr8c4 = sw
w[1]-1-in-r7c5-asymmetric-nw-corner ==> Pr8c6 ≠ ew
whip[1]: Pr7c5{ns .} ==> Br6c4 ≠ se, Br6c4 ≠ esw, Br7c4 ≠ s, Br7c5 ≠ s
B-single: Br7c5 = w
B-single: Br7c4 = e
whip[1]: Br7c5{w .} ==> Pr8c5 ≠ ew
P-single: Pr8c5 = ns
whip[1]: Pr8c5{ns .} ==> Br8c4 ≠ ns, Br8c4 ≠ nw, Br8c5 ≠ ns
whip[1]: Br8c5{sw .} ==> Pr9c5 ≠ ew
whip[1]: Pr9c5{ns .} ==> Hr9c4 ≠ 1, Br8c4 ≠ se, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ nw, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ nes, Br9c5 ≠ s, Br9c4 ≠ n, Br9c5 ≠ e
H-single: Hr9c4 = 0
B-single: Br8c4 = ew
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = in
whip[1]: Hr9c4{0 .} ==> Pr9c4 ≠ se, Pr9c4 ≠ ew
whip[1]: Pr9c4{nw .} ==> Br8c3 ≠ w, Br8c3 ≠ ns, Br8c3 ≠ nw, Br8c3 ≠ sw, Br8c3 ≠ swn, Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ s
whip[1]: Br8c3{nes .} ==> Nr8c3 ≠ 0
whip[1]: Br9c5{w .} ==> Hr10c5 ≠ 1, Vr9c6 ≠ 1, Pr9c6 ≠ ns, Pr10c5 ≠ ne, Pr10c6 ≠ nw, Pr9c6 ≠ sw, Pr10c5 ≠ se, Pr10c5 ≠ ew
V-single: Vr9c6 = 0
H-single: Hr10c5 = 0
whip[1]: Vr9c6{0 .} ==> Br9c6 ≠ w, Br9c6 ≠ nw, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ swn, Br9c6 ≠ wne
whip[1]: Hr10c5{0 .} ==> Br10c5 ≠ n, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c5 ≠ nes
whip[1]: Pr9c6{ew .} ==> Hr9c6 ≠ 0, Br8c6 ≠ nw, Br8c6 ≠ wne, Br9c6 ≠ se, Br8c6 ≠ o, Br8c6 ≠ n, Br8c6 ≠ e, Br8c6 ≠ ne, Br9c6 ≠ o, Br9c6 ≠ e, Br9c6 ≠ s
H-single: Hr9c6 = 1
w[1]-3-in-r9c7-hit-by-horiz-line-at-nw ==> Vr9c8 = 1, Hr10c7 = 1, Vr8c7 = 0
w[1]-2-in-r10c8-open-nw-corner ==> Hr11c8 = 1, Vr10c9 = 1, Hr11c9 = 0
w[1]-3-in-r9c7-closed-se-corner ==> Pr9c7 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ o
P-single: Pr11c8 = ew
no-horizontal-line-{r10 r11}c9 ==> Ir10c9 = out
vertical-line-r10{c8 c9} ==> Ir10c8 = in
no-vertical-line-r10{c7 c8} ==> Ir10c7 = in
horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
vertical-line-r9{c7 c8} ==> Ir9c8 = in
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-r10{c9 c10} ==> Hr10c10 = 1
w[1]-3-in-r10c10-closed-sw-corner ==> Pr10c11 ≠ sw, Pr10c11 ≠ o
whip[1]: Hr9c6{1 .} ==> Pr9c7 ≠ ne, Pr9c7 ≠ ns
whip[1]: Pr9c7{sw .} ==> Br8c6 ≠ se, Br8c6 ≠ nes, Br8c7 ≠ nw, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br9c7 ≠ swn, Br9c7 ≠ wne, Br8c7 ≠ w
whip[1]: Br8c7{nes .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ sw
whip[1]: Pr8c7{ew .} ==> Hr8c7 ≠ 0, Br7c7 ≠ ew, Br8c7 ≠ se, Br7c7 ≠ n, Br7c7 ≠ w, Br7c7 ≠ ne, Br8c7 ≠ o, Br8c7 ≠ e, Br8c7 ≠ s
H-single: Hr8c7 = 1
whip[1]: Hr8c7{1 .} ==> Pr8c8 ≠ o, Pr8c8 ≠ ne, Pr8c8 ≠ ns, Pr8c8 ≠ se
whip[1]: Pr8c8{sw .} ==> Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn
whip[1]: Br7c8{ew .} ==> Nr7c8 ≠ 3
whip[1]: Br8c7{nes .} ==> Nr8c7 ≠ 0
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 1
whip[1]: Br9c7{nes .} ==> Pr9c8 ≠ ne, Pr9c8 ≠ ew, Pr10c7 ≠ ns, Pr10c7 ≠ sw, Pr10c8 ≠ o, Pr10c8 ≠ ns, Pr10c8 ≠ ew
P-single: Pr11c9 = nw
P-single: Pr10c8 = nw
whip[1]: Pr11c9{nw .} ==> Br10c9 ≠ s, Br10c9 ≠ e, Br10c9 ≠ n, Br10c9 ≠ o, Br11c9 ≠ n, Br11c8 ≠ o, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ se, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ nes
B-single: Br10c8 = se
B-single: Br11c8 = n
B-single: Br11c9 = o
whip[1]: Br10c8{se .} ==> Pr10c9 ≠ ew
whip[1]: Pr10c9{se .} ==> Br9c8 ≠ ns, Br9c8 ≠ se, Br9c8 ≠ sw, Br9c9 ≠ ne, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ e
whip[1]: Br9c9{nes .} ==> Nr9c9 ≠ 0
whip[1]: Br11c9{o .} ==> Pr11c10 ≠ nw, Pr11c10 ≠ ew
whip[1]: Pr11c10{ne .} ==> Br10c10 ≠ nes
B-single: Br10c10 = esw
whip[1]: Br10c10{esw .} ==> Pr10c10 ≠ ew, Pr10c10 ≠ ne, Pr10c11 ≠ nw, Pr11c10 ≠ o, Pr11c11 ≠ o, Hr10c10 ≠ 1
H-single: Hr10c10 = 0
P-single: Pr11c11 = nw
P-single: Pr11c10 = ne
P-single: Pr10c11 = ns
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = in
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
whip[1]: Hr10c10{0 .} ==> Br9c10 ≠ s, Br9c10 ≠ ns, Br9c10 ≠ se, Br9c10 ≠ sw, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ nes
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ne .} ==> Br10c9 ≠ w, Br10c9 ≠ nw
whip[1]: Br10c9{wne .} ==> Nr10c9 ≠ 0, Nr10c9 ≠ 1
whip[1]: Pr10c11{ns .} ==> Br9c10 ≠ n, Br9c10 ≠ o, Br9c10 ≠ w, Br9c10 ≠ nw
whip[1]: Br9c10{wne .} ==> Pr9c11 ≠ o, Pr9c11 ≠ nw, Nr9c10 ≠ 0
whip[1]: Pr9c11{sw .} ==> Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ esw, Br8c10 ≠ nes, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ w
whip[1]: Br8c10{wne .} ==> Nr8c10 ≠ 0
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ nes, Br9c9 ≠ w
whip[1]: Pr10c8{nw .} ==> Br9c8 ≠ ne, Br10c7 ≠ ne, Br10c7 ≠ se, Br10c7 ≠ ew, Br10c7 ≠ sw
whip[1]: Pr9c9{ew .} ==> Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ o, Br8c9 ≠ n, Br8c9 ≠ e, Br8c9 ≠ ne
whip[1]: Br8c9{nes .} ==> Nr8c9 ≠ 0
whip[1]: Pr11c7{ew .} ==> Br11c6 ≠ o, Hr11c6 ≠ 0, Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c6 ≠ wne, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ w, Br10c6 ≠ ne
H-single: Hr11c6 = 1
B-single: Br11c6 = n
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
same-colour-in-r10{c6 c7} ==> Vr10c7 = 0
whip[1]: Hr11c6{1 .} ==> Pr11c6 ≠ o, Pr11c6 ≠ nw
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ se, Br10c5 ≠ esw, Br10c5 ≠ o, Br10c5 ≠ w
whip[1]: Br10c5{sw .} ==> Nr10c5 ≠ 0, Nr10c5 ≠ 3
whip[1]: Vr10c7{0 .} ==> Pr11c7 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ esw, Br10c6 ≠ nes, Br10c7 ≠ nw
P-single: Pr11c7 = ew
B-single: Br10c7 = ns
whip[1]: Pr11c7{ew .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 0
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nes, Br9c6 ≠ n
whip[1]: Br9c6{ns .} ==> Nr9c6 ≠ 0, Nr9c6 ≠ 1, Nr9c6 ≠ 3
N-single: Nr9c6 = 2
whip[1]: Pr9c8{sw .} ==> Br8c7 ≠ nes
whip[1]: Br8c7{ns .} ==> Nr8c7 ≠ 3
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 0
whip[1]: Pr10c6{se .} ==> Br10c6 ≠ ns, Br10c6 ≠ sw
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 2
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 3
whip[1]: Pr8c4{sw .} ==> Br8c3 ≠ e, Br7c3 ≠ wne, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ esw
B-single: Br7c3 = swn
whip[1]: Br7c3{swn .} ==> Pr8c3 ≠ sw, Pr8c3 ≠ ew, Pr8c3 ≠ ns
P-single: Pr8c3 = ne
whip[1]: Pr8c3{ne .} ==> Br7c2 ≠ se, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ wne
B-single: Br7c2 = ew
whip[1]: Br7c2{ew .} ==> Pr8c2 ≠ ew, Pr7c2 ≠ ew
P-single: Pr7c2 = ns
whip[1]: Pr7c2{ns .} ==> Br6c1 ≠ n, Br6c1 ≠ o, Br6c1 ≠ s, Br6c1 ≠ w, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c1 ≠ nes, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ sw
whip[1]: Br7c1{ew .} ==> Pr7c1 ≠ ne
whip[1]: Br6c1{wne .} ==> Nr6c1 ≠ 0
whip[1]: Pr8c2{nw .} ==> Br8c1 ≠ w, Br8c1 ≠ sw, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c1 ≠ s
whip[1]: Br8c1{swn .} ==> Nr8c1 ≠ 1
whip[1]: Br8c3{nes .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ nw, Nr8c3 ≠ 1
whip[1]: Br8c2{w .} ==> Nr8c2 ≠ 2, Nr8c2 ≠ 3
N-single: Nr8c2 = 1
whip[1]: Pr8c6{se .} ==> Br8c6 ≠ ns
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 2
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 0, Nr4c6 ≠ 1
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ sw, Br4c5 ≠ ne
whip[1]: Hr4c5{0 .} ==> Pr4c5 ≠ ew, Pr4c6 ≠ ew, Br3c5 ≠ ns, Br4c5 ≠ ns
P-single: Pr4c6 = se
P-single: Pr4c5 = sw
B-single: Br4c5 = ew
B-single: Br3c5 = n
whip[1]: Pr4c6{se .} ==> Br4c6 ≠ ns
B-single: Br4c6 = swn
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 2, Pr5c6 ≠ ew
N-single: Nr4c6 = 3
P-single: Pr5c6 = ne
whip[1]: Pr5c6{ne .} ==> Br5c5 ≠ ns
B-single: Br5c5 = s
whip[1]: Br5c5{s .} ==> Nr5c5 ≠ 2, Pr5c5 ≠ ew
N-single: Nr5c5 = 1
P-single: Pr5c5 = nw
whip[1]: Pr5c5{nw .} ==> Br4c4 ≠ n, Br4c4 ≠ ne, Br4c4 ≠ ns, Br5c4 ≠ w
B-single: Br5c4 = n
B-single: Br4c4 = nes
whip[1]: Br5c4{n .} ==> Pr5c4 ≠ sw
P-single: Pr5c4 = ew
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ nes
B-single: Br5c3 = ns
whip[1]: Br5c3{ns .} ==> Nr5c3 ≠ 3
N-single: Nr5c3 = 2
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 2, Nr4c4 ≠ 1, Nr4c4 ≠ 0
N-single: Nr4c4 = 3
whip[1]: Br3c5{n .} ==> Nr3c5 ≠ 2
N-single: Nr3c5 = 1
whip[1]: Br3c4{swn .} ==> Nr3c4 ≠ 2
N-single: Nr3c4 = 3
whip[1]: Br5c2{sw .} ==> Nr5c2 ≠ 0, Nr5c2 ≠ 3
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ e
B-single: Br6c4 = ew
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 1
N-single: Nr6c4 = 2
whip[1]: Pr6c2{se .} ==> Br5c1 ≠ ns, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c2 ≠ sw, Br6c1 ≠ ne, Br6c1 ≠ wne
B-single: Br5c2 = s
B-single: Br5c1 = nw
whip[1]: Br5c2{s .} ==> Nr5c2 ≠ 2, Pr5c2 ≠ ns
N-single: Nr5c2 = 1
P-single: Pr5c2 = nw
whip[1]: Pr5c2{nw .} ==> Br4c1 ≠ e
B-single: Br4c1 = se
whip[1]: Br4c1{se .} ==> Nr4c1 ≠ 1
N-single: Nr4c1 = 2
whip[1]: Br5c1{nw .} ==> Pr6c1 ≠ se
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ e
B-single: Br6c1 = ew
whip[1]: Br6c1{ew .} ==> Nr6c1 ≠ 3, Nr6c1 ≠ 1, Pr7c1 ≠ o
N-single: Nr6c1 = 2
P-single: Pr8c2 = ns
P-single: Pr7c1 = ns
w[1]-1-in-r8c2-asymmetric-nw-corner ==> Pr9c3 ≠ ew
P-single: Pr9c3 = o
w[1]-1-in-r9c3-symmetric-nw-corner ==> Pr10c4 ≠ se, Pr10c4 ≠ o
w[1]-3-in-r10c4-asymmetric-nw-corner ==> Vr10c5 = 1, Hr11c4 = 1, Hr11c5 = 0
w[1]-diagonal-closed-3-1-in-{r10c4...r9c3} ==> Hr9c3 = 0
w[1]-diagonal-1-1-in-{r9c3...r8c2}-with-no-nw-inner-sides ==> Hr9c2 = 0
no-horizontal-line-{r8 r9}c2 ==> Ir9c2 = out
no-vertical-line-r9{c2 c3} ==> Ir9c3 = out
no-horizontal-line-{r9 r10}c3 ==> Ir10c3 = out
vertical-line-r10{c2 c3} ==> Ir10c2 = in
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
horizontal-line-{r8 r9}c6 ==> Ir8c6 = in
no-vertical-line-r8{c6 c7} ==> Ir8c7 = in
horizontal-line-{r7 r8}c7 ==> Ir7c7 = out
vertical-line-r10{c4 c5} ==> Ir10c4 = in
same-colour-in-{r9 r10}c4 ==> Hr10c4 = 0
different-colours-in-r10{c3 c4} ==> Hr10c4 = 1
w[1]-3-in-r10c4-closed-sw-corner ==> Pr10c5 ≠ sw, Pr10c5 ≠ o
w[1]-diagonal-closed-3-1-in-{r10c4...r9c5} ==> Hr9c5 = 0
P-single: Pr7c7 = ew
P-single: Pr8c6 = se
P-single: Pr9c5 = ns
w[1]-1-in-r9c5-asymmetric-sw-corner ==> Pr9c6 ≠ ew
P-single: Pr9c6 = ne
same-colour-in-r7{c6 c7} ==> Vr7c7 = 0
w[1]-diagonal-3-2-in-{r6c5...r7c6}-non-closed-se-corner ==> Hr8c6 = 1
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1
w[1]-3-in-r9c7-closed-ne-corner ==> Pr10c7 ≠ ne
P-single: Pr10c7 = ew
P-single: Pr10c9 = ns
no-vertical-line-r8{c7 c8} ==> Ir8c8 = in
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
same-colour-in-r9{c6 c7} ==> Vr9c7 = 0
P-single: Pr10c6 = se
P-single: Pr9c7 = ew
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
different-colours-in-r9{c4 c5} ==> Hr9c5 = 1
different-colours-in-r10{c5 c6} ==> Hr10c6 = 1
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
w[1]-3-in-r10c2-closed-se-corner ==> Pr10c2 ≠ se

LOOP[6]: Hr10c2-Vr10c3-Hr11c2-Hr11c1-Vr10c1- ==> Hr10c1 = 0
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = in
different-colours-in-r9{c1 c2} ==> Hr9c2 = 1
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1

LOOP[8]: Vr9c1-Vr10c1-Hr11c1-Hr11c2-Vr10c3-Hr10c2-Vr9c2- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
different-colours-in-r8{c1 c2} ==> Hr8c2 = 1
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1

LOOP[92]: Hr7c7-Hr7c6-Vr6c6-Hr6c5-Vr6c5-Vr7c5-Vr8c5-Vr9c5-Vr10c5-Hr11c4-Vr10c4-Vr9c4-Vr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c3-Hr6c2-Vr6c2-Vr7c2-Vr8c2-Vr9c2-Hr10c2-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr4c5-Hr4c4-Vr3c4-Hr3c4-Hr3c5-Hr3c6-Vr3c7-Hr4c6-Vr4c6-Hr5c6-Vr5c7-Hr6c7-Vr5c8-Vr4c8-Vr3c8-Hr3c8-Hr3c9-Vr2c10-Hr2c9-Hr2c8-Hr2c7-Hr2c6-Hr2c5-Hr2c4-Hr2c3-Vr2c3-Hr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Vr5c11-Hr6c10-Vr5c10-Vr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9- ==> Hr7c8 = 0
no-horizontal-line-{r6 r7}c8 ==> Ir7c8 = in
same-colour-in-{r7 r8}c8 ==> Hr8c8 = 0
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
whip[1]: Pr8c2{ns .} ==> Br7c1 ≠ se, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ swn, Br8c2 ≠ s
B-single: Br8c2 = w
B-single: Br7c1 = ew
whip[1]: Br8c2{w .} ==> Pr9c2 ≠ se, Pr9c2 ≠ ew
whip[1]: Pr9c2{nw .} ==> Br9c2 ≠ ns, Br9c2 ≠ swn
whip[1]: Br9c2{sw .} ==> Nr9c2 ≠ 3
whip[1]: Br7c1{ew .} ==> Pr8c1 ≠ se
P-single: Pr8c1 = ns
whip[1]: Pr8c1{ns .} ==> Br8c1 ≠ se
whip[1]: Pr9c3{o .} ==> Br8c3 ≠ nes, Br9c3 ≠ n
B-single: Br9c3 = e
B-single: Br8c3 = ne
whip[1]: Br9c3{e .} ==> Pr9c4 ≠ nw
P-single: Pr9c4 = ns
whip[1]: Pr9c4{ns .} ==> Br9c4 ≠ e, Br9c4 ≠ o, Br9c4 ≠ s, Br9c4 ≠ se
whip[1]: Br9c4{esw .} ==> Nr9c4 ≠ 0
whip[1]: Br8c3{ne .} ==> Nr8c3 ≠ 3
N-single: Nr8c3 = 2
whip[1]: Vr10c5{1 .} ==> Pr11c5 ≠ o, Pr11c5 ≠ ew, Pr10c5 ≠ nw, Br10c4 ≠ swn, Br10c5 ≠ e, Br10c5 ≠ s
P-single: Pr10c5 = ns
whip[1]: Pr10c5{ns .} ==> Br9c5 ≠ n, Br9c4 ≠ w, Br9c4 ≠ sw, Br9c4 ≠ esw, Br10c4 ≠ wne, Br10c4 ≠ nes
B-single: Br10c4 = esw
B-single: Br9c4 = ew
B-single: Br9c5 = w
whip[1]: Br10c4{esw .} ==> Pr10c4 ≠ ne, Pr11c5 ≠ ne, Pr11c4 ≠ ew, Pr11c4 ≠ nw, Pr11c4 ≠ o
P-single: Pr11c4 = ne
P-single: Pr11c5 = nw
P-single: Pr10c4 = ns
whip[1]: Pr11c4{ne .} ==> Br11c4 ≠ o, Br11c3 ≠ n, Br10c3 ≠ w, Br10c3 ≠ sw, Br10c3 ≠ esw
B-single: Br10c3 = ew
B-single: Br11c3 = o
B-single: Br11c4 = n
whip[1]: Br10c3{ew .} ==> Nr10c3 ≠ 3, Nr10c3 ≠ 1, Pr11c3 ≠ ne
N-single: Nr10c3 = 2
P-single: Pr11c3 = nw
whip[1]: Pr11c3{nw .} ==> Br11c2 ≠ o, Br10c2 ≠ wne
B-single: Br10c2 = nes
B-single: Br11c2 = n
whip[1]: Br10c2{nes .} ==> Pr11c2 ≠ nw
P-single: Pr11c2 = ew
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ esw
whip[1]: Pr11c5{nw .} ==> Br11c5 ≠ n, Br10c5 ≠ sw
B-single: Br10c5 = ew
B-single: Br11c5 = o
whip[1]: Br10c5{ew .} ==> Nr10c5 ≠ 1, Pr11c6 ≠ ew
N-single: Nr10c5 = 2
P-single: Pr11c6 = ne
whip[1]: Pr11c6{ne .} ==> Br10c6 ≠ s
B-single: Br10c6 = swn
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 1
N-single: Nr10c6 = 3
whip[1]: Br9c4{ew .} ==> Nr9c4 ≠ 3, Nr9c4 ≠ 1
N-single: Nr9c4 = 2
whip[1]: Hr9c5{0 .} ==> Br8c5 ≠ sw
B-single: Br8c5 = ew
whip[1]: Pr7c7{ew .} ==> Br7c6 ≠ ne, Br6c7 ≠ n, Br7c7 ≠ sw, Br7c7 ≠ esw
B-single: Br6c7 = ns
B-single: Br7c6 = ns
whip[1]: Br6c7{ns .} ==> Nr6c7 ≠ 1, Pr7c8 ≠ se, Pr7c8 ≠ o
N-single: Nr6c7 = 2
whip[1]: Pr7c8{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ o, Br7c8 ≠ e, Br7c8 ≠ s
whip[1]: Br7c8{ew .} ==> Pr8c9 ≠ nw, Nr7c8 ≠ 0
whip[1]: Br7c6{ns .} ==> Pr8c7 ≠ ne
P-single: Pr8c7 = ew
whip[1]: Pr8c7{ew .} ==> Br8c6 ≠ s
B-single: Br8c6 = swn
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 1
N-single: Nr8c6 = 3
whip[1]: Hr9c7{1 .} ==> Pr9c8 ≠ ns, Br8c7 ≠ n, Br8c7 ≠ ne, Br9c7 ≠ esw
P-single: Pr9c8 = sw
B-single: Br9c7 = nes
B-single: Br8c7 = ns
w[1]-1-in-r8c8-symmetric-sw-corner ==> Pr8c9 ≠ sw, Pr8c9 ≠ ne, Pr8c9 ≠ o
whip[1]: Pr9c8{sw .} ==> Br8c8 ≠ w, Br8c8 ≠ s, Br9c8 ≠ nw
B-single: Br9c8 = ew
whip[1]: Br9c8{ew .} ==> Pr9c9 ≠ ew, Pr9c9 ≠ nw, Vr9c9 ≠ 0
V-single: Vr9c9 = 1
vertical-line-r9{c8 c9} ==> Ir9c9 = out
same-colour-in-{r9 r10}c9 ==> Hr10c9 = 0
different-colours-in-r9{c9 c10} ==> Hr9c10 = 1

LOOP[6]: Vr9c10-Vr10c10-Hr11c10-Vr10c11-Vr9c11- ==> Hr9c10 = 0
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = in
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
whip[1]: Vr9c9{1 .} ==> Br9c9 ≠ s, Br9c9 ≠ ns
whip[1]: Br9c9{wne .} ==> Pr9c10 ≠ o, Pr9c10 ≠ ne, Pr9c10 ≠ nw, Pr9c10 ≠ ew, Pr10c10 ≠ sw, Nr9c9 ≠ 1
P-single: Pr10c10 = ns
whip[1]: Pr10c10{ns .} ==> Br9c10 ≠ e, Br9c10 ≠ ne, Br10c9 ≠ wne
B-single: Br10c9 = ew
whip[1]: Br10c9{ew .} ==> Nr10c9 ≠ 3
N-single: Nr10c9 = 2
whip[1]: Br9c10{wne .} ==> Nr9c10 ≠ 1
whip[1]: Pr9c10{sw .} ==> Br8c9 ≠ se, Br8c9 ≠ nes, Br8c10 ≠ sw, Br8c10 ≠ swn
whip[1]: Hr9c10{0 .} ==> Pr9c11 ≠ sw, Pr9c10 ≠ se, Br8c10 ≠ s, Br8c10 ≠ ns, Br9c10 ≠ wne
P-single: Pr9c11 = ns
B-single: Br9c10 = ew
whip[1]: Br9c10{ew .} ==> Nr9c10 ≠ 3
N-single: Nr9c10 = 2
whip[1]: Br8c10{wne .} ==> Pr8c11 ≠ o, Pr8c11 ≠ nw
whip[1]: Pr8c11{sw .} ==> Br7c10 ≠ nes, Br7c10 ≠ o, Br7c10 ≠ w
whip[1]: Br7c10{wne .} ==> Nr7c10 ≠ 0
whip[1]: Pr9c10{sw .} ==> Br8c9 ≠ nw, Br8c9 ≠ w
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Br8c8{e .} ==> Pr8c8 ≠ sw
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ n
whip[1]: Br8c7{ns .} ==> Nr8c7 ≠ 1
N-single: Nr8c7 = 2
whip[1]: Pr8c9{ew .} ==> Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ o, Br7c9 ≠ n, Br7c9 ≠ e, Br7c9 ≠ ne, Br8c9 ≠ s
whip[1]: Br8c9{wne .} ==> Pr8c10 ≠ o, Pr8c10 ≠ ne, Nr8c9 ≠ 1
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ sw
whip[1]: Br7c10{wne .} ==> Pr7c10 ≠ sw
whip[1]: Pr7c10{ew .} ==> Br7c9 ≠ nes
whip[1]: Br7c9{ew .} ==> Nr7c9 ≠ 0, Nr7c9 ≠ 3
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ ne
B-single: Br9c6 = ns
whip[1]: Hr10c1{0 .} ==> Pr10c1 ≠ se, Pr10c2 ≠ ew, Br9c1 ≠ ns, Br10c1 ≠ swn
P-single: Pr10c2 = ne
P-single: Pr10c1 = ns
B-single: Br10c1 = sw
whip[1]: Pr10c2{ne .} ==> Br9c1 ≠ nw, Br9c2 ≠ s
B-single: Br9c2 = sw
B-single: Br9c1 = ew
whip[1]: Br9c2{sw .} ==> Nr9c2 ≠ 1, Pr9c2 ≠ nw
N-single: Nr9c2 = 2
P-single: Pr9c2 = ns
whip[1]: Pr9c2{ns .} ==> Br8c1 ≠ esw
B-single: Br8c1 = ew
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 3, Pr9c1 ≠ ne
N-single: Nr8c1 = 2
P-single: Pr9c1 = ns
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 3
N-single: Nr10c1 = 2
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Hr7c8{0 .} ==> Pr7c8 ≠ ew, Pr7c9 ≠ nw, Br6c8 ≠ se, Br7c8 ≠ ns
P-single: Pr7c8 = sw
B-single: Br6c8 = e
whip[1]: Pr7c8{sw .} ==> Br7c7 ≠ ns
B-single: Br7c7 = nes
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 2, Pr8c8 ≠ ew
N-single: Nr7c7 = 3
P-single: Pr8c8 = nw
w[1]-1-in-r8c8-symmetric-nw-corner ==> Pr9c9 ≠ se
P-single: Pr9c9 = ns
whip[1]: Pr8c8{nw .} ==> Br8c8 ≠ n
B-single: Br8c8 = e
whip[1]: Br8c8{e .} ==> Vr8c9 ≠ 0, Pr8c9 ≠ ew
V-single: Vr8c9 = 1

LOOP[108]: Vr8c9-Vr9c9-Vr10c9-Hr11c8-Hr11c7-Hr11c6-Vr10c6-Hr10c6-Hr10c7-Vr9c8-Hr9c7-Hr9c6-Vr8c6-Hr8c6-Hr8c7-Vr7c8-Hr7c7-Hr7c6-Vr6c6-Hr6c5-Vr6c5-Vr7c5-Vr8c5-Vr9c5-Vr10c5-Hr11c4-Vr10c4-Vr9c4-Vr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c3-Hr6c2-Vr6c2-Vr7c2-Vr8c2-Vr9c2-Hr10c2-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr4c5-Hr4c4-Vr3c4-Hr3c4-Hr3c5-Hr3c6-Vr3c7-Hr4c6-Vr4c6-Hr5c6-Vr5c7-Hr6c7-Vr5c8-Vr4c8-Vr3c8-Hr3c8-Hr3c9-Vr2c10-Hr2c9-Hr2c8-Hr2c7-Hr2c6-Hr2c5-Hr2c4-Hr2c3-Vr2c3-Hr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Vr5c11-Hr6c10-Vr5c10-Vr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9- ==> Vr7c9 = 0
no-vertical-line-r7{c8 c9} ==> Ir7c9 = in
vertical-line-r8{c8 c9} ==> Ir8c9 = out
same-colour-in-{r8 r9}c9 ==> Hr9c9 = 0
different-colours-in-r8{c9 c10} ==> Hr8c10 = 1

LOOP[8]: Vr8c10-Vr9c10-Vr10c10-Hr11c10-Vr10c11-Vr9c11-Vr8c11- ==> Hr8c10 = 0
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
same-colour-in-r7{c9 c10} ==> Vr7c10 = 0
different-colours-in-{r6 r7}c10 ==> Hr7c10 = 1
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1

LOOP[118]: Hr7c10-Vr7c11-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Vr10c10-Vr9c10-Vr8c10-Hr8c9-Vr8c9-Vr9c9-Vr10c9-Hr11c8-Hr11c7-Hr11c6-Vr10c6-Hr10c6-Hr10c7-Vr9c8-Hr9c7-Hr9c6-Vr8c6-Hr8c6-Hr8c7-Vr7c8-Hr7c7-Hr7c6-Vr6c6-Hr6c5-Vr6c5-Vr7c5-Vr8c5-Vr9c5-Vr10c5-Hr11c4-Vr10c4-Vr9c4-Vr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c3-Hr6c2-Vr6c2-Vr7c2-Vr8c2-Vr9c2-Hr10c2-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr4c5-Hr4c4-Vr3c4-Hr3c4-Hr3c5-Hr3c6-Vr3c7-Hr4c6-Vr4c6-Hr5c6-Vr5c7-Hr6c7-Vr5c8-Vr4c8-Vr3c8-Hr3c8-Hr3c9-Vr2c10-Hr2c9-Hr2c8-Hr2c7-Hr2c6-Hr2c5-Hr2c4-Hr2c3-Vr2c3-Hr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Vr5c11-Hr6c10-Vr5c10-Vr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9- ==> Hr7c9 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXXXXXXXXX
XXOOOOOOOX
OOOXXXOXXX
OXOOXOOXOX
XXXXXXOXOX
XOOXOXXXOO
XOXXOOOXXX
XOOXOXXXOX
XOOXOOOXOX
XXOXOXXXOX

.   .———.———.———.———.———.———.———.———.———.
  2 |             2       2   2   2   2 |
.———.   .———.———.———.———.———.———.———.   .
| 3   2 | 2   2                   3 | 2 |
.———.———.   .———.———.———.   .———.———.   .
      2   1 |         3 |   | 2       1 |
.   .———.   .———.   .———.   .   .———.   .
    |   | 2     |   |     1 |   | 3 |   |
.———.   .———.———.   .———.   .   .   .   .
| 2           1         | 3 |   |   | 3 |
.   .———.———.   .———.   .———.   .   .———.
|   | 2   3 |   | 3 | 2         |
.   .   .———.   .   .———.———.   .———.———.
| 2 | 2 | 3   1 | 1   2     |           |
.   .   .———.   .   .———.———.   .———.   .
|   |       | 2 | 2 |         1 |   |   |
.   .   .   .   .   .———.———.   .   .   .
| 2 |     1 |   | 1       3 | 2 |   |   |
.   .———.   .   .   .———.———.   .   .   .
|     3 |   | 3 |   |     2   2 |   | 3 |
.———.———.   .———.   .———.———.———.   .———.

init-time = 0.63s, solve-time = 39.36s, total-time = 39.98s
nb-facts=<Fact-188835>
Quasi-Loop max length = 118
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
