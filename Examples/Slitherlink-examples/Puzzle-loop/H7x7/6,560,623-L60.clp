
(solve
7 7
2 2 . 3 .  3 . 
. . 3 . . 1 3 
. 2 . 2 . 2 . 
1 . 2 3 2 . . 
. . 2 1 3 . 3
. . . . . . . 
. . . . . . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 2 . 3 . 3 .
. . 3 . . 1 3
. 2 . 2 . 2 .
1 . 2 3 2 . .
. . 2 1 3 . 3
. . . . . . .
. . . . . . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.311826944351196
start solution 0.3175208568573
entering BRT
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3s-in-{r4c4...r5c5} ==> Vr5c6 = 1, Vr4c4 = 1, Hr6c5 = 1, Hr4c4 = 1, Vr6c6 = 0, Vr3c4 = 0, Hr6c6 = 0, Hr4c3 = 0
w[1]-diagonal-3s-in-{r1c6...r2c7} ==> Vr2c8 = 1, Vr1c6 = 1, Hr3c7 = 1, Hr1c6 = 1, Vr3c8 = 0, Hr1c5 = 0
w[1]-diagonal-3s-in-{r1c4...r2c3} ==> Vr1c5 = 1, Vr2c3 = 1, Hr3c3 = 1, Hr1c4 = 1, Vr3c3 = 0, Hr3c2 = 0
w[1]-2-in-r3c2-open-ne-corner ==> Hr4c2 = 1, Vr3c2 = 1, Hr4c1 = 0, Vr4c2 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r2c7-closed-se-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ o
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-1-in-r5c4-asymmetric-nw-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ ew, Pr6c5 ≠ ns, Pr6c5 ≠ ne
entering level Loop with <Fact-49144>
entering level Col with <Fact-49222>
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
vertical-line-r1{c5 c6} ==> Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
Starting_init_links_with_<Fact-49230>
574 candidates, 4212 csp-links and 17153 links. Density = 10.43%
starting non trivial part of solution
Entering_level_W1_with_<Fact-91965>
whip[1]: Vr4c2{0 .} ==> Br4c2 ≠ wne, Pr4c2 ≠ ns, Pr4c2 ≠ se, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ nw, Br4c1 ≠ e, Br4c2 ≠ w, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn
whip[1]: Br4c1{w .} ==> Pr5c1 ≠ ne, Pr4c1 ≠ se
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ s, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ nes
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nes, Br5c1 ≠ n
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ nw, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ w, Br3c2 ≠ ne
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Hr4c1{0 .} ==> Br4c1 ≠ n, Pr4c1 ≠ ne, Pr4c2 ≠ nw, Pr4c2 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn
P-single: Pr4c2 = ne
w[1]-1-in-r4c1-symmetric-ne-corner ==> Pr5c1 ≠ o
whip[1]: Pr4c2{ne .} ==> Br4c2 ≠ o, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br4c2 ≠ e, Br4c2 ≠ s, Br4c2 ≠ se
B-single: Br3c2 = sw
whip[1]: Br3c2{sw .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ ne, Pr3c2 ≠ ew, Pr3c2 ≠ ne
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ esw, Br2c1 ≠ nes, Br2c2 ≠ se, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ nes, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ w, Br2c2 ≠ s, Br2c2 ≠ ns
whip[1]: Br2c1{wne .} ==> Nr2c1 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br4c3 ≠ nw, Br4c3 ≠ se, Br3c3 ≠ w
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Pr5c1{se .} ==> Vr5c1 ≠ 0, Br5c1 ≠ se, Br5c1 ≠ o, Br5c1 ≠ e, Br5c1 ≠ s
V-single: Vr5c1 = 1
vertical-line-r5{c0 c1} ==> Ir5c1 = in
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o, Pr6c1 ≠ o, Pr6c1 ≠ se
B-single: Br5c0 = e
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Br5c1{wne .} ==> Nr5c1 ≠ 0
whip[1]: Pr3c3{ne .} ==> Br2c3 ≠ wne, Br2c3 ≠ nes
whip[1]: Br2c3{swn .} ==> Pr2c3 ≠ o, Pr2c3 ≠ ne, Pr2c3 ≠ nw, Pr2c3 ≠ ew, Pr3c3 ≠ o, Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ ns
P-single: Pr3c3 = ne
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ o, Br2c2 ≠ n, Br2c2 ≠ o, Br2c2 ≠ w, Br2c2 ≠ nw, Br3c3 ≠ e, Br3c3 ≠ s, Br3c3 ≠ se
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br3c4 ≠ nw
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ se, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn
whip[1]: Hr1c4{1 .} ==> Br1c4 ≠ esw, Br0c4 ≠ o, Pr1c4 ≠ o, Pr1c4 ≠ sw, Pr1c5 ≠ o, Pr1c5 ≠ se
B-single: Br0c4 = s
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ o, Br1c5 ≠ e, Br1c5 ≠ s
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c3 ≠ o, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ ne
whip[1]: Br1c3{ew .} ==> Nr1c3 ≠ 0, Nr1c3 ≠ 3
whip[1]: Br1c4{nes .} ==> Pr2c5 ≠ o, Pr2c5 ≠ se
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ nw, Br2c5 ≠ swn, Br2c5 ≠ wne
whip[1]: Vr1c5{1 .} ==> Br1c5 ≠ nes, Pr1c5 ≠ ew, Pr2c5 ≠ ew, Pr2c5 ≠ sw, Br1c4 ≠ swn, Br1c5 ≠ n, Br1c5 ≠ ne, Br1c5 ≠ ns
P-single: Pr1c5 = sw
whip[1]: Br1c5{esw .} ==> Pr1c6 ≠ ew, Pr1c6 ≠ sw
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ esw, Br1c6 ≠ nes
whip[1]: Br1c6{wne .} ==> Pr1c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se, Pr2c6 ≠ o, Pr2c6 ≠ se, Pr2c6 ≠ ew, Pr2c6 ≠ sw
P-single: Pr1c6 = se
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ w, Br1c5 ≠ sw
whip[1]: Br1c5{esw .} ==> Nr1c5 ≠ 1
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ ne, Br2c5 ≠ nes
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 3
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Vr3c8{0 .} ==> Br3c7 ≠ nes, Br3c8 ≠ w, Pr3c8 ≠ ns, Pr3c8 ≠ sw, Pr4c8 ≠ ns, Pr4c8 ≠ nw, Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ wne
B-single: Br3c8 = o
whip[1]: Pr4c8{sw .} ==> Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ ns
whip[1]: Pr3c8{nw .} ==> Br2c7 ≠ swn, Br2c7 ≠ wne
whip[1]: Br2c7{nes .} ==> Pr2c8 ≠ o, Pr2c8 ≠ nw, Pr3c8 ≠ o, Pr3c7 ≠ o, Pr3c7 ≠ ns, Pr3c7 ≠ nw, Pr3c7 ≠ sw
P-single: Pr3c8 = nw
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ s, Br3c7 ≠ o, Br3c7 ≠ w, Br3c7 ≠ sw
whip[1]: Br3c7{swn .} ==> Nr3c7 ≠ 0
whip[1]: Pr3c7{ew .} ==> Br3c6 ≠ ne
whip[1]: Br3c6{sw .} ==> Pr4c6 ≠ o, Pr4c6 ≠ sw
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ ne
whip[1]: Br4c5{sw .} ==> Pr5c5 ≠ sw
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ esw, Br4c4 ≠ nes, Br5c5 ≠ swn, Br5c5 ≠ wne
whip[1]: Br5c5{nes .} ==> Pr5c6 ≠ o, Pr5c6 ≠ ne, Pr5c6 ≠ nw, Pr5c6 ≠ ew, Pr6c5 ≠ o, Pr6c5 ≠ nw, Pr6c6 ≠ o, Pr6c6 ≠ ne, Pr6c6 ≠ ns, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c6 ≠ sw
w[1]-3-in-r5c5-asymmetric-sw-corner ==> Hr5c5 = 1, Vr4c6 = 0, Hr5c6 = 0
w[1]-diagonal-3-2s-in-{r2c3...r4c5}-non-closed-se-end ==> Hr2c3 = 1, Vr1c3 = 0, Hr2c2 = 0
w[1]-2-in-r1c2-open-se-corner ==> Vr1c2 = 1, Hr1c1 = 0
w[1]-3-in-r1c4-hit-by-horiz-line-at-sw ==> Vr2c4 = 0
w[1]-3-in-r4c4-hit-by-horiz-line-at-se ==> Vr5c5 = 0
w[3]-adjacent-3-2-in-r4{c4 c5}-noline-east ==> Vr3c5 = 0
P-single: Pr2c2 = nw
P-single: Pr1c1 = o
P-single: Pr6c6 = nw
P-single: Pr6c5 = se
no-horizontal-line-{r0 r1}c1 ==> Ir1c1 = out
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
horizontal-line-{r3 r4}c4 ==> Ir4c4 = out
vertical-line-r4{c3 c4} ==> Ir4c3 = in
horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
vertical-line-r3{c1 c2} ==> Ir3c1 = out
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
w[1]-3-in-r1c4-hit-by-horiz-line-at-nw ==> Hr2c4 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r2 r1}c6 ==> Vr2c7 = 0, Hr3c6 = 0
w[1]-3-in-r1c4-closed-se-corner ==> Pr1c4 ≠ se
P-single: Pr1c4 = ew
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = out
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
w[1]-3-in-r1c6-hit-by-verti-line-at-sw ==> Vr1c7 = 1
w[1]-3-in-r2c7-hit-by-verti-line-at-nw ==> Hr2c6 = 0
w[0]-adjacent-3-in-r2c7-nolines-west ==> Vr3c7 = 1, Hr2c7 = 1, Vr1c8 = 0
w[1]-3-in-r2c7-closed-ne-corner ==> Pr3c7 ≠ ne
w[1]-3-in-r1c6-closed-ne-corner ==> Pr2c6 ≠ ne
w[1]-1-in-r5c4-asymmetric-ne-corner ==> Pr6c4 ≠ ew, Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ ns
no-vertical-line-r1{c7 c8} ==> Ir1c7 = out
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
w[1]-2-in-r3c6-open-nw-corner ==> Hr4c6 = 1, Hr4c7 = 0, Vr4c7 = 0
w[1]-3-in-r5c7-isolated-at-nw-corner ==> Vr5c7 = 1, Hr5c7 = 1
w[1]-3-in-r5c7-closed-nw-corner ==> Pr6c8 ≠ nw, Pr6c8 ≠ o
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
no-vertical-line-r4{c6 c7} ==> Ir4c6 = out
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
horizontal-line-{r4 r5}c5 ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
vertical-line-r5{c5 c6} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
vertical-line-r5{c6 c7} ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
w[1]-3-in-r5c7-closed-ne-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ne, Pr6c7 ≠ o
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
w[1]-2-in-r5c3-open-ne-corner ==> Hr6c3 = 1, Vr5c3 = 1, Hr6c2 = 0, Vr6c3 = 0
w[1]-3-in-r5c5-hit-by-horiz-line-at-nw ==> Vr4c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r5{c4 c5} ==> Hr6c4 = 0
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = in
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
different-colours-in-r6{c3 c4} ==> Hr6c4 = 1
same-colour-in-{r4 r5}c2 ==> Hr5c2 = 0
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
different-colours-in-r6{c4 c5} ==> Hr6c5 = 1
different-colours-in-{r3 r4}c5 ==> Hr4c5 = 1
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1

LOOP[38]: Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c4-Hr2c3-Vr2c3-Hr3c3-Hr3c4-Hr3c5-Vr2c6-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Vr2c8-Hr3c7-Vr3c7-Hr4c6-Hr4c5-Hr4c4-Vr4c4-Hr5c4-Hr5c5-Vr5c6-Hr6c5-Vr6c5- ==> Hr7c4 = 0
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
whip[1]: Hr5c5{1 .} ==> Pr5c5 ≠ ns, Pr5c6 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ ew, Br5c5 ≠ esw
P-single: Pr5c6 = sw
P-single: Pr5c5 = ew
B-single: Br5c5 = nes
whip[1]: Pr5c6{sw .} ==> Br5c6 ≠ ns, Br5c6 ≠ ne, Br5c6 ≠ s, Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br4c6 ≠ ns, Br4c6 ≠ w, Br4c6 ≠ s, Br4c5 ≠ se, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br5c6{esw .} ==> Pr5c7 ≠ nw, Pr5c7 ≠ ew, Pr5c7 ≠ sw, Nr5c6 ≠ 0
whip[1]: Br4c6{ne .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c6 ≠ 3
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ nw, Br3c5 ≠ ew, Br3c5 ≠ wne, Br3c6 ≠ sw, Br4c5 ≠ sw, Br3c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ e, Br3c5 ≠ w, Br3c5 ≠ ne
B-single: Br4c5 = ns
whip[1]: Br4c5{ns .} ==> Pr4c5 ≠ ns
P-single: Pr4c5 = ew
whip[1]: Pr4c5{ew .} ==> Br3c4 ≠ ne, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br4c4 ≠ wne
B-single: Br4c4 = swn
whip[1]: Br4c4{swn .} ==> Pr5c4 ≠ ew, Pr5c4 ≠ ns, Pr4c4 ≠ ew, Pr4c4 ≠ nw, Pr4c4 ≠ ns
P-single: Pr6c3 = ne
P-single: Pr4c4 = se
P-single: Pr5c4 = ne
whip[1]: Pr6c3{ne .} ==> Br6c3 ≠ o, Br6c2 ≠ n, Br5c2 ≠ n, Br5c2 ≠ o, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ nes, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br6c2 ≠ e, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ e, Br6c3 ≠ s, Br6c3 ≠ w, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne
B-single: Br5c3 = sw
whip[1]: Br5c3{sw .} ==> Pr6c4 ≠ ne, Pr5c3 ≠ ew
P-single: Pr5c3 = ns
P-single: Pr6c4 = sw
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ n, Br4c2 ≠ ns, Br4c2 ≠ nes, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ sw, Br5c2 ≠ ne, Br5c2 ≠ wne
B-single: Br4c3 = ew
B-single: Br4c2 = ne
whip[1]: Br4c3{ew .} ==> Pr4c3 ≠ ew
P-single: Pr4c3 = sw
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ ns, Br3c3 ≠ nes
whip[1]: Br3c3{ne .} ==> Nr3c3 ≠ 3
whip[1]: Br4c2{ne .} ==> Nr4c2 ≠ 3, Nr4c2 ≠ 1, Pr5c2 ≠ se, Pr5c2 ≠ ew
N-single: Nr4c2 = 2
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ nw, Br5c1 ≠ ew, Br5c1 ≠ esw, Br5c1 ≠ swn
whip[1]: Br5c1{wne .} ==> Pr6c2 ≠ nw
whip[1]: Br5c2{ew .} ==> Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew, Nr5c2 ≠ 0, Nr5c2 ≠ 3
whip[1]: Pr6c2{sw .} ==> Br6c1 ≠ n, Br6c1 ≠ ns
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ ns, Br6c4 ≠ ne, Br6c4 ≠ s, Br6c4 ≠ e, Br6c4 ≠ n, Br6c4 ≠ o, Br6c3 ≠ ns, Br6c3 ≠ n, Br5c4 ≠ w, Br5c4 ≠ s, Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ swn, Br6c4 ≠ wne, Br6c4 ≠ nes
whip[1]: Br6c4{esw .} ==> Pr7c4 ≠ o, Pr7c4 ≠ se, Pr7c4 ≠ ew, Pr7c4 ≠ sw, Nr6c4 ≠ 0
whip[1]: Pr7c4{nw .} ==> Br7c3 ≠ ne, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ nw, Br7c4 ≠ swn, Br7c4 ≠ wne
whip[1]: Br6c3{nes .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ns, Pr7c3 ≠ nw, Nr6c3 ≠ 0, Nr6c3 ≠ 1
whip[1]: Br6c2{sw .} ==> Nr6c2 ≠ 3
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ ne, Br3c4 ≠ sw
B-single: Br3c4 = ns
B-single: Br3c3 = n
whip[1]: Br3c4{ns .} ==> Pr3c5 ≠ se, Pr3c5 ≠ ns, Pr3c4 ≠ sw
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ w, Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Br2c3 ≠ esw, Br2c4 ≠ nw, Br2c4 ≠ ew
B-single: Br2c3 = swn
whip[1]: Br2c3{swn .} ==> Pr2c4 ≠ se, Pr2c4 ≠ ns, Pr2c3 ≠ sw, Pr2c3 ≠ ns
P-single: Pr1c2 = se
P-single: Pr2c3 = se
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ nw, Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ ew, Br1c2 ≠ sw
B-single: Br1c2 = nw
B-single: Br1c1 = se
whip[1]: Br1c2{nw .} ==> Pr1c3 ≠ se
P-single: Pr1c3 = ew
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ e, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ ew
whip[1]: Br1c3{ns .} ==> Pr2c4 ≠ nw
P-single: Pr2c4 = ew
whip[1]: Pr2c4{ew .} ==> Br2c4 ≠ s, Br1c3 ≠ n, Br1c4 ≠ wne, Br2c4 ≠ se
B-single: Br2c4 = ns
B-single: Br1c4 = nes
B-single: Br1c3 = ns
whip[1]: Br2c4{ns .} ==> Nr2c4 ≠ 1, Nr2c4 ≠ 0, Pr3c5 ≠ nw, Pr2c5 ≠ ns, Pr2c5 ≠ ne
N-single: Nr2c4 = 2
P-single: Pr2c5 = nw
P-single: Pr3c5 = ew
whip[1]: Pr2c5{nw .} ==> Br2c5 ≠ n, Br1c5 ≠ esw, Br2c5 ≠ w, Br2c5 ≠ ns, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
B-single: Br1c5 = ew
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 3, Pr2c6 ≠ nw
N-single: Nr1c5 = 2
P-single: Pr2c6 = ns
w[1]-1-in-r2c6-asymmetric-nw-corner ==> Pr3c7 ≠ ew
P-single: Pr3c7 = se
whip[1]: Pr2c6{ns .} ==> Br2c6 ≠ e, Br2c6 ≠ n, Br2c5 ≠ o, Br1c6 ≠ swn, Br2c5 ≠ s, Br2c6 ≠ s
B-single: Br2c6 = w
B-single: Br1c6 = wne
whip[1]: Br2c6{w .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ o, Pr2c7 ≠ ns, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Pr3c6 ≠ ew, Pr3c6 ≠ sw
P-single: Pr2c7 = ne
whip[1]: Pr2c7{ne .} ==> Br1c7 ≠ w, Br1c7 ≠ ne, Br1c7 ≠ nes, Br2c7 ≠ esw
B-single: Br2c7 = nes
B-single: Br1c7 = sw
whip[1]: Br2c7{nes .} ==> Pr2c8 ≠ ns
P-single: Pr2c8 = sw
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 3, Nr1c7 ≠ 1, Pr1c7 ≠ ew, Pr1c8 ≠ sw
N-single: Nr1c7 = 2
P-single: Pr1c8 = o
P-single: Pr1c7 = sw
whip[1]: Pr3c6{nw .} ==> Br3c5 ≠ nes, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c5 ≠ s
whip[1]: Br3c5{se .} ==> Nr3c5 ≠ 0, Nr3c5 ≠ 1, Nr3c5 ≠ 3
N-single: Nr3c5 = 2
P-single: Pr4c6 = ew
whip[1]: Pr4c6{ew .} ==> Br4c6 ≠ e, Br4c6 ≠ o, Br3c5 ≠ se, Br3c6 ≠ ew
B-single: Br3c6 = se
B-single: Br3c5 = ns
whip[1]: Br3c6{se .} ==> Pr4c7 ≠ sw, Pr4c7 ≠ ew, Pr4c7 ≠ ns, Pr4c7 ≠ ne, Pr3c6 ≠ ns
P-single: Pr3c6 = nw
P-single: Pr4c7 = nw
whip[1]: Pr3c6{nw .} ==> Br2c5 ≠ e
B-single: Br2c5 = se
whip[1]: Br2c5{se .} ==> Nr2c5 ≠ 3, Nr2c5 ≠ 1, Nr2c5 ≠ 0
N-single: Nr2c5 = 2
whip[1]: Pr4c7{nw .} ==> Br3c7 ≠ n, Br3c7 ≠ ns, Br3c7 ≠ swn, Br4c6 ≠ ne, Br4c7 ≠ w, Br4c7 ≠ ne, Br4c7 ≠ sw, Br4c7 ≠ wne, Br4c7 ≠ nes
B-single: Br4c6 = n
B-single: Br3c7 = nw
whip[1]: Br4c6{n .} ==> Nr4c6 ≠ 0, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Nr4c6 ≠ 2
N-single: Nr4c6 = 1
whip[1]: Pr5c7{se .} ==> Br5c7 ≠ esw, Br5c7 ≠ nes
whip[1]: Br5c7{wne .} ==> Pr5c8 ≠ o, Pr5c8 ≠ ns, Pr5c7 ≠ o, Pr6c7 ≠ se, Pr6c7 ≠ ew
P-single: Pr5c7 = se
whip[1]: Pr5c7{se .} ==> Br5c6 ≠ w, Br4c7 ≠ o, Br5c6 ≠ sw
B-single: Br4c7 = s
whip[1]: Br4c7{s .} ==> Nr4c7 ≠ 3, Nr4c7 ≠ 2, Nr4c7 ≠ 0, Pr4c8 ≠ sw, Pr5c8 ≠ nw
N-single: Nr4c7 = 1
P-single: Pr5c8 = sw
P-single: Pr4c8 = o
whip[1]: Pr5c8{sw .} ==> Br5c7 ≠ swn
B-single: Br5c7 = wne
whip[1]: Br5c7{wne .} ==> Pr6c8 ≠ sw, Hr6c7 ≠ 1
H-single: Hr6c7 = 0
P-single: Pr6c8 = ns
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1

LOOP[6]: Vr6c7-Vr5c7-Hr5c7-Vr5c8-Vr6c8- ==> Hr7c7 = 0
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = in
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1

LOOP[8]: Hr8c7-Vr7c8-Vr6c8-Vr5c8-Hr5c7-Vr5c7-Vr6c7- ==> Vr7c7 = 0
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1

LOOP[10]: Hr7c6-Vr6c7-Vr5c7-Hr5c7-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6- ==> Vr7c6 = 0
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
same-colour-in-r7{c4 c5} ==> Vr7c5 = 0
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1

LOOP[50]: Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c4-Hr2c3-Vr2c3-Hr3c3-Hr3c4-Hr3c5-Vr2c6-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Vr2c8-Hr3c7-Vr3c7-Hr4c6-Hr4c5-Hr4c4-Vr4c4-Hr5c4-Hr5c5-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Hr5c7-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4- ==> Vr7c4 = 0
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1

LOOP[52]: Hr7c3-Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c4-Hr2c3-Vr2c3-Hr3c3-Hr3c4-Hr3c5-Vr2c6-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Vr2c8-Hr3c7-Vr3c7-Hr4c6-Hr4c5-Hr4c4-Vr4c4-Hr5c4-Hr5c5-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Hr5c7-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3- ==> Vr7c3 = 0
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1

LOOP[54]: Hr7c2-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c4-Hr2c3-Vr2c3-Hr3c3-Hr3c4-Hr3c5-Vr2c6-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Vr2c8-Hr3c7-Vr3c7-Hr4c6-Hr4c5-Hr4c4-Vr4c4-Hr5c4-Hr5c5-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Hr5c7-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Hr8c2- ==> Vr7c2 = 0
no-vertical-line-r7{c1 c2} ==> Ir7c1 = in
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1

LOOP[56]: Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Hr5c7-Vr5c7-Vr6c7-Hr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Hr4c5-Hr4c6-Vr3c7-Hr3c7-Vr2c8-Hr2c7-Vr1c7-Hr1c6-Vr1c6-Vr2c6-Hr3c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3-Hr2c4-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr4c3-Vr5c3-Hr6c3-Vr6c4-Hr7c3-Hr7c2- ==> Hr7c1 = 0
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = in
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1

LOOP[60]: Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Hr5c7-Vr5c7-Vr6c7-Hr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Hr4c5-Hr4c6-Vr3c7-Hr3c7-Vr2c8-Hr2c7-Vr1c7-Hr1c6-Vr1c6-Vr2c6-Hr3c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3-Hr2c4-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr4c3-Vr5c3-Hr6c3-Vr6c4-Hr7c3-Hr7c2-Vr6c2-Vr5c2-Hr5c1-Vr5c1- ==> Vr6c1 = 1

LOOP[58]: Vr6c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Hr5c7-Vr5c7-Vr6c7-Hr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Hr4c5-Hr4c6-Vr3c7-Hr3c7-Vr2c8-Hr2c7-Vr1c7-Hr1c6-Vr1c6-Vr2c6-Hr3c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3-Hr2c4-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Vr3c2-Hr4c2-Vr4c3-Vr5c3-Hr6c3-Vr6c4-Hr7c3-Hr7c2-Vr6c2- ==> Hr6c1 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXXXOXO
XXOOOXX
OXXXXXO
OOXOOOO
XOXXXOX
XOOXOOX
XXXXXXX

.   .———.———.———.   .———.   .
  2 | 2       3 |   | 3 |
.———.   .———.———.   .   .———.
|       | 3         | 1   3 |
.———.   .———.———.———.   .———.
    | 2       2       2 |
.   .———.   .———.———.———.   .
  1     | 2 | 3   2
.———.   .   .———.———.   .———.
|   |   | 2   1   3 |   | 3 |
.   .   .———.   .———.   .   .
|   |       |   |       |   |
.   .———.———.   .———.———.   .
|                           |
.———.———.———.———.———.———.———.

init-time = 0.32s, solve-time = 10.54s, total-time = 10.86s
nb-facts=<Fact-98321>
Quasi-Loop max length = 60
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
