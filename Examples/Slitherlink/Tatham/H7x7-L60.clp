

(solve-tatham
7 7
"33f2b1a22b2a31a2a32a3321d2a2h213"
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 3 . . . . .
. 2 . . 1 . 2
2 . . 2 . 3 1
. 2 . 3 2 . 3
3 2 1 . . . .
2 . 2 . . . .
. . . . 2 1 3

Loading pre-computed background
start init-inner-N-and-B-candidates 0.286744117736816
start solution 0.292268991470337
entering BRT
w[1]-3-in-se-corner ==> Vr7c8 = 1, Hr8c7 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3s-in-{r3c6...r4c7} ==> Vr4c8 = 1, Vr3c6 = 1, Hr5c7 = 1, Hr3c6 = 1, Vr5c8 = 0, Vr2c6 = 0, Hr3c5 = 0
w[1]-3-in-r1c2-hit-by-horiz-line-at-nw ==> Vr1c3 = 1, Hr2c2 = 1
w[1]-diagonal-3-2-in-{r1c1...r2c2}-non-closed-se-corner ==> Hr3c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-se ==> Vr2c2 = 0
w[1]-adjacent-1-3-on-edge-in-r7{c6 c7} ==> Vr7c6 = 0, Hr7c6 = 0
w[1]-adjacent-1-3-on-edge-in-{r3 r4}c7 ==> Vr3c7 = 0, Hr3c7 = 0
w[1]-adjacent-1-2-on-edge-in-{r3 r2}c7-bkwd-diag-2s-3...r3c6 ==> Hr4c6 = 1, Vr1c8 = 1
w[1]-2-in-r4c5-open-ne-corner ==> Hr5c5 = 1, Vr4c5 = 1, Hr5c4 = 0, Vr5c5 = 0
w[1]-3-in-r4c4-hit-by-horiz-line-at-se ==> Vr4c4 = 1, Hr4c4 = 1
w[1]-3-in-r7c7-closed-se-corner ==> Pr7c7 ≠ se, Pr7c7 ≠ nw, Pr7c7 ≠ o
w[1]-3-in-r4c7-closed-se-corner ==> Pr4c7 ≠ se, Pr4c7 ≠ nw, Pr4c7 ≠ o
w[1]-3-in-r4c4-closed-ne-corner ==> Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
w[1]-3-in-r4c4-closed-nw-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw
w[1]-3-in-r3c6-closed-sw-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ o
w[1]-3-in-r1c2-closed-se-corner ==> Pr1c2 ≠ se, Pr1c2 ≠ o
adjacent-3s-in-r1{c1 c2} ==> Vr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne, Pr2c1 ≠ o
w[1]-3-in-r1c2-closed-sw-corner ==> Pr1c3 ≠ sw, Pr1c3 ≠ o
w[1]-diagonal-closed-3-1-in-{r4c4...r5c3} ==> Vr5c3 = 0, Hr6c3 = 0
w[3]-adjacent-3-2-in-r5{c1 c2}-noline-east ==> Vr5c1 = 1, Vr6c2 = 0, Vr4c2 = 0
w[1]-1-in-r5c3-asymmetric-ne-corner ==> Pr6c3 ≠ ew, Pr6c3 ≠ ns
w[1]-1-in-r2c5-asymmetric-sw-corner ==> Pr2c6 ≠ ew, Pr2c6 ≠ se, Pr2c6 ≠ nw, Pr2c6 ≠ ns
entering level Loop with <Fact-49266>
entering level Col with <Fact-49346>
vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
vertical-line-r1{c7 c8} ==> Ir1c7 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
vertical-line-r1{c2 c3} ==> Ir1c2 = out
horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
Starting_init_links_with_<Fact-49416>
470 candidates, 3767 csp-links and 14520 links. Density = 13.17%
starting non trivial part of solution
Entering_level_W1_with_<Fact-85995>
whip[1]: Hr1c7{1 .} ==> Br1c7 ≠ sw, Br0c7 ≠ o, Br1c7 ≠ o, Pr1c8 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ sw, Br1c7 ≠ s, Br1c7 ≠ w
P-single: Pr1c8 = sw
B-single: Br0c7 = s
whip[1]: Br1c7{nes .} ==> Pr2c7 ≠ ne, Nr1c7 ≠ 0, Nr1c7 ≠ 1
whip[1]: Pr2c7{sw .} ==> Br1c6 ≠ se, Br1c6 ≠ esw, Br1c6 ≠ nes, Br2c6 ≠ sw, Br2c7 ≠ se, Br2c6 ≠ o, Br2c6 ≠ s, Br2c6 ≠ w
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ sw, Br1c6 ≠ wne, Br1c6 ≠ o, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ ne
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 0
whip[1]: Vr2c1{1 .} ==> Br2c1 ≠ nes, Br2c0 ≠ o, Br2c1 ≠ o, Pr3c1 ≠ o, Pr3c1 ≠ se, Br2c1 ≠ n, Br2c1 ≠ e, Br2c1 ≠ s, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se
B-single: Br2c0 = e
w[1]-1-in-r5c3-asymmetric-nw-corner ==> Pr6c4 ≠ ew, Pr6c4 ≠ ns, Pr6c4 ≠ ne
whip[1]: Pr6c4{se .} ==> Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br6c3 ≠ ne, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ nes, Br5c3 ≠ e, Br5c3 ≠ s, Br6c4 ≠ n, Br6c4 ≠ w
whip[1]: Br5c3{w .} ==> Vr5c4 ≠ 1, Pr5c4 ≠ ns, Pr6c3 ≠ ne, Pr6c4 ≠ nw, Pr5c4 ≠ se
V-single: Vr5c4 = 0
w[0]-adjacent-3-in-r4c4-nolines-south ==> Hr5c3 = 1
whip[1]: Vr5c4{0 .} ==> Br5c4 ≠ w, Br5c4 ≠ nw, Br5c4 ≠ ew, Br5c4 ≠ wne
whip[1]: Hr5c3{1 .} ==> Br4c3 ≠ o, Pr5c3 ≠ ns, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ wne, Br5c3 ≠ w
B-single: Br5c3 = n
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ ne
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ esw, Br4c4 ≠ swn
whip[1]: Br4c4{nes .} ==> Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ ew, Pr5c5 ≠ ew
P-single: Pr4c5 = sw
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ ns, Br4c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ w, Br3c5 ≠ s, Br3c4 ≠ ne, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se
whip[1]: Br4c5{sw .} ==> Pr4c6 ≠ nw, Pr4c6 ≠ ew
whip[1]: Br3c5{ne .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ se, Nr3c5 ≠ 3
whip[1]: Pr3c5{ew .} ==> Hr3c4 ≠ 0, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ wne, Br3c4 ≠ sw, Br2c4 ≠ o, Br2c4 ≠ n, Br2c4 ≠ e, Br2c4 ≠ w, Br2c4 ≠ ne, Br2c5 ≠ n, Br2c5 ≠ e
H-single: Hr3c4 = 1
B-single: Br3c4 = ns
whip[1]: Hr3c4{1 .} ==> Pr3c4 ≠ ns, Pr3c4 ≠ sw
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ nes, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ esw, Br3c3 ≠ wne, Br3c3 ≠ nes, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ w, Br3c3 ≠ e, Br3c3 ≠ ne
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br2c5{w .} ==> Hr2c5 ≠ 1, Pr2c5 ≠ ne, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ nw, Pr2c5 ≠ se, Pr2c5 ≠ ew, Pr2c6 ≠ sw
H-single: Hr2c5 = 0
whip[1]: Hr2c5{0 .} ==> Br1c5 ≠ s, Br1c5 ≠ ns, Br1c5 ≠ se, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ nes
whip[1]: Pr2c6{ne .} ==> Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ ew, Br2c6 ≠ nw, Br2c6 ≠ ew, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Br1c6{swn .} ==> Pr1c6 ≠ sw, Nr1c6 ≠ 2
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ wne, Br1c5 ≠ ne
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 3
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr5c5{ns .} ==> Br4c4 ≠ nes, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ nes, Br5c5 ≠ s, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c4 ≠ n, Br5c5 ≠ o, Br5c5 ≠ e
B-single: Br4c4 = wne
whip[1]: Br4c4{wne .} ==> Pr5c4 ≠ ew, Pr4c4 ≠ ew
P-single: Pr4c4 = se
P-single: Pr5c4 = nw
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ s, Br3c3 ≠ s, Br3c3 ≠ ns, Br3c3 ≠ sw, Br3c3 ≠ swn, Br4c3 ≠ ns, Br4c3 ≠ sw, Br4c3 ≠ swn, Br4c3 ≠ nes
whip[1]: Br4c3{esw .} ==> Pr4c3 ≠ se, Pr4c3 ≠ ew, Nr4c3 ≠ 1
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nw, Br4c2 ≠ sw, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ w
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 3
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Br5c4{se .} ==> Nr5c4 ≠ 3
whip[1]: Pr6c4{se .} ==> Br6c3 ≠ ns, Br6c3 ≠ nw
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ns
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ nw, Br3c1 ≠ se
whip[1]: Br2c1{wne .} ==> Nr2c1 ≠ 0
whip[1]: Hr1c3{1 .} ==> Br1c3 ≠ esw, Br0c3 ≠ o, Br1c3 ≠ o, Pr1c4 ≠ o, Pr1c4 ≠ se, Br1c3 ≠ e, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw
B-single: Br0c3 = s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Vr4c2{0 .} ==> Br4c2 ≠ ew, Pr4c2 ≠ ns, Pr4c2 ≠ sw, Pr5c2 ≠ ns, Br4c1 ≠ e, Br4c1 ≠ ne, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ wne, Br4c1 ≠ nes
whip[1]: Pr4c2{ew .} ==> Hr4c2 ≠ 0, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c2 ≠ e, Br3c2 ≠ ne
H-single: Hr4c2 = 1
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
w[1]-3-in-r5c1-hit-by-verti-line-at-nw ==> Vr5c2 = 1, Hr6c1 = 1
w[1]-2-in-r5c2-open-se-corner ==> Hr5c2 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw
P-single: Pr5c3 = ew
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
no-vertical-line-r3{c6 c7} ==> Ir3c7 = out
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
vertical-line-r4{c3 c4} ==> Ir4c4 = out
horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
no-horizontal-line-{r5 r6}c3 ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
no-vertical-line-r6{c1 c2} ==> Ir6c1 = out
same-colour-in-r6{c2 c3} ==> Vr6c3 = 0
w[1]-2-in-r6c3-open-nw-corner ==> Hr7c3 = 1, Vr6c4 = 1, Hr7c4 = 0, Vr7c4 = 0
P-single: Pr6c4 = se
vertical-line-r6{c3 c4} ==> Ir6c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-r2{c6 c7} ==> Hr2c7 = 1
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
different-colours-in-r2{c3 c4} ==> Hr2c4 = 1
same-colour-in-r4{c2 c3} ==> Vr4c3 = 0
different-colours-in-r3{c2 c3} ==> Hr3c3 = 1
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
w[1]-2-in-r2c7-open-se-corner ==> Hr2c7 = 1, Hr2c6 = 0, Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
same-colour-in-r3{c7 c8} ==> Vr3c8 = 0
different-colours-in-{r3 r4}c7 ==> Hr4c7 = 1
w[1]-3-in-r3c6-hit-by-horiz-line-at-se ==> Vr4c7 = 0
w[1]-3-in-r4c7-closed-ne-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ o
whip[1]: Hr4c2{1 .} ==> Pr4c3 ≠ ns
P-single: Pr4c3 = nw
whip[1]: Pr4c3{nw .} ==> Br3c3 ≠ n, Br3c3 ≠ o, Br3c2 ≠ s, Br3c2 ≠ ns, Br3c2 ≠ sw, Br3c2 ≠ swn, Br4c2 ≠ ne, Br4c3 ≠ esw
B-single: Br4c3 = se
B-single: Br4c2 = ns
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 3
N-single: Nr4c3 = 2
whip[1]: Br3c2{nes .} ==> Pr3c2 ≠ se, Pr3c3 ≠ ne, Pr3c3 ≠ ew, Nr3c2 ≠ 1
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c3 ≠ sw, Br2c3 ≠ swn, Br3c3 ≠ nw, Br2c3 ≠ s, Br2c3 ≠ ns
B-single: Br3c3 = w
whip[1]: Br3c3{w .} ==> Nr3c3 ≠ 2, Nr3c3 ≠ 0, Pr3c4 ≠ ew
N-single: Nr3c3 = 1
P-single: Pr3c4 = ne
whip[1]: Pr3c4{ne .} ==> Br2c4 ≠ s, Br2c4 ≠ ns, Br2c4 ≠ se, Br2c4 ≠ nes
whip[1]: Br2c4{swn .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ne, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c5 ≠ sw, Nr2c4 ≠ 1
whip[1]: Pr2c5{nw .} ==> Br1c4 ≠ ns, Br1c4 ≠ sw
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ nes, Br1c4 ≠ esw
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ nw, Br2c2 ≠ sw, Br3c1 ≠ sw, Br2c1 ≠ w, Br2c2 ≠ ne, Br3c1 ≠ ne
whip[1]: Br2c1{wne .} ==> Nr2c1 ≠ 1
whip[1]: Hr5c1{0 .} ==> Pr5c1 ≠ ne, Pr5c2 ≠ ew, Br4c1 ≠ s, Br4c1 ≠ ns, Br4c1 ≠ sw, Br4c1 ≠ swn, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ nes
P-single: Pr7c4 = nw
P-single: Pr6c3 = o
P-single: Pr5c2 = se
P-single: Pr5c1 = ns
B-single: Br5c1 = esw
whip[1]: Pr7c4{nw .} ==> Br7c4 ≠ n, Br7c3 ≠ s, Br7c3 ≠ e, Br7c3 ≠ o, Br6c4 ≠ s, Br6c4 ≠ e, Br6c4 ≠ o, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c4 ≠ se, Br6c4 ≠ swn, Br7c3 ≠ w, Br7c3 ≠ ne, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ w, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br7c4 ≠ nes
B-single: Br6c3 = se
whip[1]: Br6c3{se .} ==> Pr7c3 ≠ nw, Pr7c3 ≠ ns
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ wne, Br6c2 ≠ nes, Br7c2 ≠ sw, Br7c2 ≠ wne, Br7c2 ≠ nes, Br6c2 ≠ ne, Br7c2 ≠ o, Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ ne
whip[1]: Br7c2{swn .} ==> Nr7c2 ≠ 0
whip[1]: Br6c2{sw .} ==> Pr6c2 ≠ se, Pr6c2 ≠ ew, Nr6c2 ≠ 3
whip[1]: Pr6c2{nw .} ==> Br5c2 ≠ ns, Br5c2 ≠ sw, Br6c1 ≠ ne, Br6c1 ≠ sw
B-single: Br5c2 = nw
whip[1]: Br7c4{se .} ==> Pr8c4 ≠ ne, Pr8c4 ≠ nw, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Nr7c4 ≠ 3
whip[1]: Pr7c5{se .} ==> Br6c5 ≠ ne, Br7c5 ≠ se, Br6c5 ≠ o, Br6c5 ≠ n, Br6c5 ≠ e
whip[1]: Br6c5{nes .} ==> Nr6c5 ≠ 0
whip[1]: Br7c3{swn .} ==> Nr7c3 ≠ 0
whip[1]: Br6c4{wne .} ==> Pr6c5 ≠ o, Pr6c5 ≠ ne, Pr6c5 ≠ ns, Pr6c5 ≠ se, Nr6c4 ≠ 0, Nr6c4 ≠ 1
whip[1]: Pr6c5{sw .} ==> Br5c5 ≠ sw, Br5c5 ≠ esw, Br6c5 ≠ nw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br5c4 ≠ o, Br5c4 ≠ e
whip[1]: Br5c4{se .} ==> Nr5c4 ≠ 0
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ n, Br4c1 ≠ o
whip[1]: Br4c1{nw .} ==> Nr4c1 ≠ 0, Nr4c1 ≠ 3
whip[1]: Br5c1{esw .} ==> Pr6c2 ≠ ns, Pr6c1 ≠ ns
P-single: Pr6c1 = ne
P-single: Pr6c2 = nw
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ ew
B-single: Br6c1 = ns
whip[1]: Br6c1{ns .} ==> Pr7c2 ≠ ns, Pr7c2 ≠ ne, Pr7c1 ≠ ns, Hr7c1 ≠ 0
H-single: Hr7c1 = 1
P-single: Pr7c1 = se
horizontal-line-{r6 r7}c1 ==> Ir7c1 = in
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
whip[1]: Hr7c1{1 .} ==> Br7c1 ≠ o, Br7c1 ≠ e, Br7c1 ≠ sw, Br7c1 ≠ esw
whip[1]: Br7c1{swn .} ==> Pr8c2 ≠ nw, Nr7c1 ≠ 0
whip[1]: Pr8c2{ew .} ==> Br7c2 ≠ nw, Br7c2 ≠ ew
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ n, Br7c1 ≠ ne
B-single: Br7c1 = swn
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 2, Nr7c1 ≠ 1, Pr7c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ o, Pr8c1 ≠ o, Vr7c2 ≠ 1
V-single: Vr7c2 = 0
N-single: Nr7c1 = 3
P-single: Pr8c1 = ne
P-single: Pr8c2 = ew
P-single: Pr7c2 = ew
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
same-colour-in-r7{c2 c3} ==> Vr7c3 = 0
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
whip[1]: Vr7c2{0 .} ==> Br7c2 ≠ esw, Br7c2 ≠ swn
whip[1]: Br7c2{se .} ==> Nr7c2 ≠ 3
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Pr8c2{ew .} ==> Br7c2 ≠ e, Br7c2 ≠ n, Br8c2 ≠ o
B-single: Br8c2 = n
whip[1]: Br8c2{n .} ==> Pr8c3 ≠ o, Pr8c3 ≠ ne
whip[1]: Pr8c3{ew .} ==> Br7c3 ≠ swn, Br7c3 ≠ n
whip[1]: Br7c3{nw .} ==> Nr7c3 ≠ 1, Nr7c3 ≠ 3
N-single: Nr7c3 = 2
P-single: Pr8c4 = ew
P-single: Pr7c3 = ew
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ e, Br7c4 ≠ o, Br8c4 ≠ o, Br8c3 ≠ o, Br7c3 ≠ nw
B-single: Br7c3 = ns
B-single: Br8c3 = n
B-single: Br8c4 = n
whip[1]: Br7c3{ns .} ==> Pr8c3 ≠ nw
P-single: Pr8c3 = ew
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ se
B-single: Br7c2 = ns
whip[1]: Br7c2{ns .} ==> Nr7c2 ≠ 1
N-single: Nr7c2 = 2
whip[1]: Br8c4{n .} ==> Pr8c5 ≠ ne
whip[1]: Pr7c6{ew .} ==> Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn, Br7c5 ≠ sw, Br6c6 ≠ o, Br6c6 ≠ n, Br6c6 ≠ e, Br6c6 ≠ ne, Br7c5 ≠ ne
whip[1]: Br6c6{nes .} ==> Nr6c6 ≠ 0
whip[1]: Br7c4{se .} ==> Nr7c4 ≠ 0
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ w, Br6c2 ≠ o
whip[1]: Br6c2{sw .} ==> Nr6c2 ≠ 0
whip[1]: Pr7c2{ew .} ==> Br6c2 ≠ sw
B-single: Br6c2 = s
whip[1]: Br6c2{s .} ==> Nr6c2 ≠ 2
N-single: Nr6c2 = 1
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Hr1c5{1 .} ==> Br1c5 ≠ o, Br0c5 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ sw, Pr1c6 ≠ o, Pr1c6 ≠ se, Br1c5 ≠ e, Br1c5 ≠ w, Br1c5 ≠ ew
P-single: Pr1c6 = ew
B-single: Br0c5 = s
whip[1]: Pr1c6{ew .} ==> Br1c6 ≠ e, Br1c6 ≠ swn
B-single: Br1c6 = n
whip[1]: Br1c6{n .} ==> Pr1c7 ≠ se, Pr2c6 ≠ ne, Pr2c7 ≠ ns, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Nr1c6 ≠ 3
N-single: Nr1c6 = 1
P-single: Pr3c8 = o
P-single: Pr2c7 = se
P-single: Pr2c6 = o
P-single: Pr1c7 = ew
w[1]-1-in-r3c7-symmetric-ne-corner ==> Pr4c7 ≠ sw, Pr4c7 ≠ ne
whip[1]: Pr3c8{o .} ==> Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ ew, Br2c7 ≠ sw, Br3c7 ≠ n, Br3c7 ≠ e
B-single: Br2c7 = nw
whip[1]: Br2c7{nw .} ==> Pr3c7 ≠ ew, Pr3c7 ≠ se, Pr2c8 ≠ ns
P-single: Pr2c8 = nw
whip[1]: Pr2c8{nw .} ==> Br1c7 ≠ ne, Br1c7 ≠ wne
B-single: Br1c7 = nes
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 2
N-single: Nr1c7 = 3
whip[1]: Pr3c7{nw .} ==> Br2c6 ≠ ns, Br3c6 ≠ wne, Br3c6 ≠ nes, Br2c6 ≠ n
whip[1]: Br3c6{swn .} ==> Pr3c6 ≠ o, Pr3c6 ≠ ew, Pr4c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ se, Pr4c7 ≠ ns
P-single: Pr5c5 = ne
P-single: Pr4c7 = ew
P-single: Pr4c6 = ne
whip[1]: Pr5c5{ne .} ==> Br4c5 ≠ ew, Br5c4 ≠ se, Br5c5 ≠ w, Br5c5 ≠ ew
B-single: Br5c4 = s
B-single: Br4c5 = sw
whip[1]: Br5c4{s .} ==> Nr5c4 ≠ 2, Pr6c5 ≠ nw
N-single: Nr5c4 = 1
whip[1]: Pr6c5{sw .} ==> Br6c5 ≠ se, Br6c5 ≠ s
whip[1]: Br4c5{sw .} ==> Pr5c6 ≠ ns, Pr5c6 ≠ ne
whip[1]: Pr5c6{sw .} ==> Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ swn, Br5c6 ≠ wne, Br4c6 ≠ w, Br5c6 ≠ o, Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{nes .} ==> Nr5c6 ≠ 0
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ ne, Br4c6 ≠ s, Br4c6 ≠ e, Br4c6 ≠ o, Br3c7 ≠ w, Br3c6 ≠ esw, Br4c6 ≠ se, Br4c6 ≠ nes, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne
B-single: Br4c7 = nes
B-single: Br3c6 = swn
B-single: Br3c7 = s
whip[1]: Br4c7{nes .} ==> Pr5c7 ≠ nw, Pr5c7 ≠ ns, Pr5c8 ≠ sw, Pr5c8 ≠ ns, Pr5c8 ≠ o, Pr4c8 ≠ nw, Pr4c8 ≠ ns, Pr4c8 ≠ o
P-single: Pr4c8 = sw
P-single: Pr5c8 = nw
w[1]-1-in-r3c7-asymmetric-se-corner ==> Pr3c7 ≠ ns
P-single: Pr3c7 = nw
whip[1]: Pr5c8{nw .} ==> Br5c7 ≠ s, Br5c7 ≠ e, Br5c7 ≠ o, Br5c7 ≠ w, Br5c7 ≠ ne, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ wne, Br5c7 ≠ nes
whip[1]: Br5c7{swn .} ==> Pr6c8 ≠ ns, Pr6c8 ≠ nw, Nr5c7 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ n, Br6c7 ≠ e, Br6c7 ≠ ns
whip[1]: Pr3c7{nw .} ==> Br2c6 ≠ e, Br2c6 ≠ ne
whip[1]: Br2c6{nes .} ==> Pr3c6 ≠ sw, Nr2c6 ≠ 1
P-single: Pr3c6 = se
w[1]-1-in-r2c5-symmetric-se-corner ==> Pr2c5 ≠ nw, Pr2c5 ≠ o
P-single: Pr2c5 = ns
whip[1]: Pr3c6{se .} ==> Br3c5 ≠ n, Br3c5 ≠ o, Br2c5 ≠ s, Br3c5 ≠ ne
B-single: Br3c5 = e
B-single: Br2c5 = w
whip[1]: Br3c5{e .} ==> Nr3c5 ≠ 2, Nr3c5 ≠ 0, Pr3c5 ≠ ew
N-single: Nr3c5 = 1
P-single: Pr3c5 = nw
whip[1]: Pr3c5{nw .} ==> Br2c4 ≠ sw, Br2c4 ≠ swn
B-single: Br2c4 = esw
whip[1]: Br2c4{esw .} ==> Nr2c4 ≠ 2, Pr2c4 ≠ se, Hr2c4 ≠ 1
H-single: Hr2c4 = 0
N-single: Nr2c4 = 3
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = out
different-colours-in-r1{c4 c5} ==> Hr1c5 = 1
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1
whip[1]: Hr2c4{0 .} ==> Br1c4 ≠ nes
whip[1]: Br1c4{ew .} ==> Nr1c4 ≠ 3
whip[1]: Vr1c5{1 .} ==> Pr1c5 ≠ ew, Br1c4 ≠ n, Br1c4 ≠ w, Br1c5 ≠ n
P-single: Pr1c5 = se
B-single: Br1c5 = nw
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ ne
B-single: Br1c4 = ew
whip[1]: Br1c4{ew .} ==> Nr1c4 ≠ 1, Pr2c4 ≠ sw, Pr1c4 ≠ ew
N-single: Nr1c4 = 2
P-single: Pr1c4 = sw
P-single: Pr2c4 = ns
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ ns, Br1c3 ≠ n, Br1c3 ≠ nw, Br1c3 ≠ swn
whip[1]: Br1c3{wne .} ==> Pr2c3 ≠ se, Pr2c3 ≠ ew, Nr1c3 ≠ 1
whip[1]: Pr2c3{nw .} ==> Br1c2 ≠ swn, Br1c3 ≠ ne, Br2c3 ≠ ne, Br2c3 ≠ wne
B-single: Br1c3 = wne
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 2, Pr1c3 ≠ ew
N-single: Nr1c3 = 3
P-single: Pr1c3 = se
whip[1]: Pr1c3{se .} ==> Br1c2 ≠ wne, Br1c2 ≠ nes
B-single: Br1c2 = esw
whip[1]: Br1c2{esw .} ==> Pr2c3 ≠ ns, Pr2c2 ≠ sw, Pr2c2 ≠ ew, Pr2c2 ≠ ns, Pr1c2 ≠ ew
P-single: Pr1c2 = sw
P-single: Pr2c2 = ne
P-single: Pr2c3 = nw
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ swn
B-single: Br1c1 = wne
whip[1]: Br1c1{wne .} ==> Pr2c1 ≠ se, Pr1c1 ≠ o
P-single: Pr1c1 = se
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ swn, Br2c1 ≠ wne
whip[1]: Pr2c2{ne .} ==> Br2c1 ≠ ew, Br2c1 ≠ esw, Br2c2 ≠ ew
B-single: Br2c2 = ns
B-single: Br2c1 = sw
whip[1]: Br2c2{ns .} ==> Pr3c3 ≠ ns, Pr3c2 ≠ nw, Pr3c2 ≠ ns
P-single: Pr3c2 = ew
P-single: Pr3c3 = sw
whip[1]: Pr3c2{ew .} ==> Vr3c2 ≠ 1, Hr3c1 ≠ 0, Br3c1 ≠ ew, Br3c2 ≠ se, Br3c2 ≠ esw
H-single: Hr3c1 = 1
V-single: Vr3c2 = 0
B-single: Br3c2 = nes
B-single: Br3c1 = ns
no-vertical-line-r3{c1 c2} ==> Ir3c1 = out
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1

LOOP[40]: Hr5c7-Vr4c8-Hr4c7-Hr4c6-Vr3c6-Hr3c6-Vr2c7-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Vr1c4-Hr1c3-Vr1c3-Hr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Hr3c1-Hr3c2-Vr3c3-Hr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Hr5c5- ==> Hr5c6 = 0
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
different-colours-in-r5{c6 c7} ==> Hr5c7 = 1
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1

LOOP[42]: Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr4c4-Hr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Hr4c2-Vr3c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Vr2c4-Hr3c4-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Vr1c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c6-Hr4c7-Vr4c8-Hr5c7-Vr5c7- ==> Hr6c6 = 0
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
same-colour-in-r7{c4 c5} ==> Vr7c5 = 0
same-colour-in-r7{c6 c7} ==> Vr7c7 = 0
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
w[1]-3-in-r7c7-hit-by-horiz-line-at-sw ==> Hr7c7 = 1
w[1]-3-in-r7c7-closed-ne-corner ==> Pr8c7 ≠ ne, Pr8c7 ≠ o
no-vertical-line-r6{c7 c8} ==> Ir6c7 = out
same-colour-in-{r5 r6}c7 ==> Hr6c7 = 0
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1

LOOP[58]: Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr4c4-Hr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Hr4c2-Vr3c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Vr2c4-Hr3c4-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Vr1c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c6-Hr4c7-Vr4c8-Hr5c7-Vr5c7-Vr6c7-Hr7c7-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Hr7c2-Hr7c3-Vr6c4-Hr6c4- ==> Hr6c5 = 0
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = out
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1

LOOP[60]: Hr7c5-Vr6c6-Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr4c4-Hr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Hr4c2-Vr3c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Vr2c4-Hr3c4-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Vr1c8-Hr2c7-Vr2c7-Hr3c6-Vr3c6-Hr4c6-Hr4c7-Vr4c8-Hr5c7-Vr5c7-Vr6c7-Hr7c7-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Hr7c2-Hr7c3-Vr6c4-Hr6c4- ==> Vr6c5 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXOXXX
XXXOXXO
OOXXXOO
XXXOXXX
XOOOOXO
OOOXOXO
XXXXXXX

.———.   .———.   .———.———.———.
| 3 | 3 |   |   |           |
.   .———.   .   .   .   .———.
|     2     |   | 1     | 2
.———.———.   .———.   .———.   .
  2     |     2     | 3   1
.———.———.   .———.   .———.———.
|     2     | 3 | 2       3 |
.   .———.———.   .———.   .———.
| 3 | 2   1         |   |
.———.   .   .———.   .   .   .
  2       2 |   |   |   |
.———.———.———.   .———.   .———.
|                 2   1   3 |
.———.———.———.———.———.———.———.

init-time = 0.29s, solve-time = 7.21s, total-time = 7.5s
nb-facts=<Fact-90229>
Quasi-Loop max length = 60
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
