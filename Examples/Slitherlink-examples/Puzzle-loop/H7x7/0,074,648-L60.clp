
(solve
7 7
. 2 2 . . . 3 
1 1 3 2 . . . 
2 0 2 1 . . 3
. . . 2 . 2 . 
3 2 1 2 2 . . 
2 . 1 2 2 2 . 
. . . . 2 . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 2 . . . 3
1 1 3 2 . . .
2 0 2 1 . . 3
. . . 2 . 2 .
3 2 1 2 2 . .
2 . 1 2 2 2 .
. . . . 2 . 3

Loading pre-computed background
start init-inner-N-and-B-candidates 0.277901172637939
start solution 0.283205032348633
entering BRT
w[0]-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-3-in-se-corner ==> Vr7c8 = 1, Hr8c7 = 1
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-diagonal-3-0-in-{r2c3...r3c2} ==> Vr2c3 = 1, Hr3c3 = 1
w[1]-adjacent-1-1-on-pseudo-edge-in-r2{c1 c2} ==> Vr2c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r2{c2 c3} ==> Hr2c2 = 0
w[1]-3-in-r7c7-closed-se-corner ==> Pr7c7 ≠ se, Pr7c7 ≠ nw, Pr7c7 ≠ o
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
square-of-2s-se-of-r5c4 ==> Pr6c5 ≠ o
w[1]-1-in-r2c2-asymmetric-se-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ew, Pr2c2 ≠ ns
entering level Loop with <Fact-48994>
entering level Col with <Fact-49072>
vertical-line-r7{c7 c8} ==> Ir7c7 = in
vertical-line-r1{c7 c8} ==> Ir1c7 = in
Starting_init_links_with_<Fact-49075>
502 candidates, 3563 csp-links and 15166 links. Density = 12.06%
starting non trivial part of solution
Entering_level_W1_with_<Fact-86538>
whip[1]: Hr2c2{0 .} ==> Br2c2 ≠ n, Pr2c2 ≠ se, Pr2c3 ≠ ew, Pr2c3 ≠ sw, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ sw
whip[1]: Pr2c2{nw .} ==> Br1c1 ≠ swn, Br1c1 ≠ wne, Br2c2 ≠ w, Br1c1 ≠ e, Br1c1 ≠ s, Br2c1 ≠ e
whip[1]: Br2c1{w .} ==> Pr3c1 ≠ ne, Pr3c2 ≠ ne, Pr3c2 ≠ ns, Pr3c2 ≠ nw, Pr2c1 ≠ se
w[1]-1-in-r2c1-asymmetric-sw-corner ==> Pr2c2 ≠ nw
w[1]-3-in-r2c3-asymmetric-nw-corner ==> Vr2c4 = 1, Vr3c4 = 0, Hr3c4 = 0
P-single: Pr1c3 = sw
P-single: Pr2c2 = o
whip[1]: Vr2c4{1 .} ==> Pr2c4 ≠ ew, Pr3c4 ≠ se, Pr3c4 ≠ ew, Br2c3 ≠ swn, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ se
P-single: Pr2c4 = ns
whip[1]: Pr2c4{ns .} ==> Br1c4 ≠ e, Br1c4 ≠ n, Br1c4 ≠ o, Vr1c4 ≠ 0, Hr2c4 ≠ 1, Hr2c3 ≠ 1, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ sw, Br1c4 ≠ s, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ se, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ nes, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ nw
H-single: Hr2c3 = 0
H-single: Hr2c4 = 0
V-single: Vr1c4 = 1
P-single: Pr2c3 = ns
B-single: Br2c3 = esw
w[1]-1-in-r2c2-asymmetric-ne-corner ==> Pr3c2 ≠ ew, Pr3c2 ≠ se
P-single: Pr3c1 = ns
P-single: Pr4c1 = ne
P-single: Pr3c2 = o
w[1]-1-in-r2c1-symmetric-se-corner ==> Pr2c1 ≠ o
whip[1]: Hr2c4{0 .} ==> Pr2c5 ≠ nw, Pr2c5 ≠ ew
whip[1]: Pr2c5{se .} ==> Vr2c5 ≠ 0, Br1c5 ≠ ne, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br2c4 ≠ sw, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ nes, Br1c5 ≠ o, Br1c5 ≠ n, Br1c5 ≠ e, Br2c5 ≠ o, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ s
V-single: Vr2c5 = 1
B-single: Br2c4 = ew
whip[1]: Vr2c5{1 .} ==> Pr3c5 ≠ ew, Pr3c5 ≠ sw
whip[1]: Pr3c5{ns .} ==> Br3c5 ≠ s, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c4 ≠ n, Br3c5 ≠ o, Br3c5 ≠ e
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br3c4{w .} ==> Pr4c4 ≠ ne, Pr4c5 ≠ nw
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ se, Br4c3 ≠ sw, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c3 ≠ o, Br4c3 ≠ s, Br4c3 ≠ w
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Vr1c4{1 .} ==> Pr1c4 ≠ ew
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ w, Hr1c4 ≠ 0, Hr1c3 ≠ 1, Br1c3 ≠ ne, Br1c4 ≠ ew
H-single: Hr1c3 = 0
H-single: Hr1c4 = 1
B-single: Br1c3 = ew
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
vertical-line-r2{c2 c3} ==> Ir2c3 = out
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = out
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
vertical-line-r2{c4 c5} ==> Ir2c5 = out
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
same-colour-in-{r2 r3}c1 ==> Hr3c1 = 0
w[1]-2-in-r3c1-open-ne-corner ==> Hr4c1 = 1, Vr3c1 = 1, Vr4c1 = 0
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
w[1]-3-in-r5c1-hit-by-verti-line-at-ne ==> Vr5c1 = 1, Hr6c1 = 1, Hr5c2 = 0
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
same-colour-in-r5{c1 c2} ==> Vr5c2 = 0
w[1]-2-in-r5c2-open-nw-corner ==> Hr6c2 = 1, Vr5c3 = 1, Hr6c3 = 0, Vr6c3 = 0
w[1]-3+diagonal-2-isolated-end-in-{r5c1+r5c2...se} ==> Vr6c2 = 0
w[1]-3-in-r5c1-hit-by-horiz-line-at-se ==> Hr5c1 = 1
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw
no-vertical-line-r6{c1 c2} ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ se
B-single: Br0c4 = s
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ wne, Br1c5 ≠ s
whip[1]: Vr1c3{1 .} ==> Br1c2 ≠ nw
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o, Pr1c2 ≠ sw, Br1c2 ≠ ew
P-single: Pr1c2 = ew
B-single: Br1c2 = ne
B-single: Br0c2 = s
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ o, Vr1c2 ≠ 1, Hr1c1 ≠ 0, Br1c1 ≠ se
H-single: Hr1c1 = 1
V-single: Vr1c2 = 0
B-single: Br1c1 = nw
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o, Pr1c1 ≠ o
P-single: Pr1c1 = se
B-single: Br0c1 = s
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 3, Nr1c1 ≠ 1, Nr1c1 ≠ 0, Pr2c1 ≠ ne
N-single: Nr1c1 = 2
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ n, Br2c1 ≠ s
B-single: Br2c1 = w
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr3c1{0 .} ==> Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw
whip[1]: Hr4c1{1 .} ==> Br4c1 ≠ o, Pr4c2 ≠ ne, Pr4c2 ≠ ns, Br3c1 ≠ ew, Br4c1 ≠ e, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Pr4c2{sw .} ==> Vr3c2 ≠ 1, Br3c1 ≠ se, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
B-single: Br3c1 = sw
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e, Pr5c1 ≠ ne, Pr5c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ swn, Br4c1 ≠ wne
B-single: Br4c0 = o
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ esw, Br5c1 ≠ nes
whip[1]: Br5c1{wne .} ==> Pr5c1 ≠ o, Pr5c2 ≠ ns
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br4c1 ≠ n, Br4c1 ≠ ne
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 1
whip[1]: Pr5c2{ew .} ==> Br4c2 ≠ sw, Br4c2 ≠ esw, Br5c1 ≠ wne, Br5c2 ≠ nw, Br5c2 ≠ ew, Br5c2 ≠ sw, Br4c2 ≠ n, Br4c2 ≠ ne
B-single: Br5c1 = swn
whip[1]: Br5c1{swn .} ==> Pr6c2 ≠ ns, Pr6c1 ≠ ns
P-single: Pr6c1 = ne
P-single: Pr6c2 = ew
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ ew, Br6c1 ≠ sw
whip[1]: Br6c1{ns .} ==> Pr7c1 ≠ ns
P-single: Pr7c1 = se
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ e, Br7c1 ≠ n, Br7c1 ≠ o, Vr7c1 ≠ 0, Hr7c1 ≠ 0, Br6c1 ≠ ne, Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ esw
H-single: Hr7c1 = 1
V-single: Vr7c1 = 1
B-single: Br7c1 = swn
B-single: Br6c1 = ns
vertical-line-r7{c0 c1} ==> Ir7c1 = in
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
whip[1]: Hr7c1{1 .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ ns
whip[1]: Pr7c2{sw .} ==> Br6c2 ≠ nw, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ swn, Br7c2 ≠ wne, Br6c2 ≠ w, Br7c2 ≠ o, Br7c2 ≠ e, Br7c2 ≠ s
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o, Pr8c1 ≠ o
P-single: Pr8c1 = ne
B-single: Br7c0 = e
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Br8c1{n .} ==> Pr8c2 ≠ o, Pr8c2 ≠ ne
whip[1]: Pr8c2{ew .} ==> Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ n, Br7c2 ≠ ne
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 2, Nr7c1 ≠ 1, Nr7c1 ≠ 0, Pr7c2 ≠ sw, Pr8c2 ≠ nw, Vr7c2 ≠ 1
V-single: Vr7c2 = 0
N-single: Nr7c1 = 3
P-single: Pr8c2 = ew
P-single: Pr7c2 = ew
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1

LOOP[6]: Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2- ==> Vr7c3 = 0
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1

LOOP[8]: Hr7c3-Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3- ==> Vr7c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r6{c3 c4}-fwd-diag-2s-3 ==> Hr7c4 = 1
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
same-colour-in-r6{c3 c4} ==> Vr6c4 = 0
w[1]-diagonal-3-2s-in-{r3c7...r6c4}-non-closed-sw-end ==> Vr3c8 = 1, Hr3c7 = 1, Vr2c8 = 0
w[1]-3-in-r3c7-closed-ne-corner ==> Pr4c7 ≠ sw, Pr4c7 ≠ ne, Pr4c7 ≠ o
no-vertical-line-r2{c7 c8} ==> Ir2c7 = out
horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
w[1]-3-in-r1c7-closed-se-corner ==> Pr1c7 ≠ se, Pr1c7 ≠ o
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1

LOOP[10]: Hr8c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Hr7c2-Hr7c3-Hr7c4- ==> Vr7c5 = 0
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
whip[1]: Vr7c2{0 .} ==> Br7c2 ≠ w, Br7c2 ≠ ew
whip[1]: Br7c2{nes .} ==> Pr8c3 ≠ o, Pr8c3 ≠ ne, Pr7c3 ≠ o, Pr7c3 ≠ ne, Pr7c3 ≠ ns, Pr7c3 ≠ se, Nr7c2 ≠ 1
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ nw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ne
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 0
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ o, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e, Br7c3 ≠ ne
B-single: Br8c2 = n
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Vr7c3{0 .} ==> Pr8c3 ≠ nw, Pr7c3 ≠ sw, Br7c2 ≠ nes, Br7c3 ≠ w, Br7c3 ≠ ew
P-single: Pr8c3 = ew
B-single: Br7c2 = ns
w[1]-1-in-r6c3-asymmetric-sw-corner ==> Pr6c4 ≠ ew, Pr6c4 ≠ nw, Pr6c4 ≠ ns
whip[1]: Pr8c3{ew .} ==> Br8c3 ≠ o
B-single: Br8c3 = n
whip[1]: Br8c3{n .} ==> Pr8c4 ≠ o, Pr8c4 ≠ ne
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn, Br7c4 ≠ o, Br7c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ ne
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 0
whip[1]: Br7c2{ns .} ==> Nr7c2 ≠ 3
N-single: Nr7c2 = 2
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ se, Br6c6 ≠ sw, Br7c5 ≠ sw, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c6 ≠ o, Br7c6 ≠ e, Br7c6 ≠ s
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Br6c6{ew .} ==> Pr6c7 ≠ o, Pr6c7 ≠ ne
whip[1]: Pr6c7{sw .} ==> Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ swn
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c5 ≠ sw, Br6c4 ≠ sw, Br5c5 ≠ ne, Br6c4 ≠ ne
whip[1]: Pr5c4{sw .} ==> Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes, Br4c3 ≠ n
whip[1]: Pr5c5{sw .} ==> Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ wne, Br4c5 ≠ nes, Br5c4 ≠ ew, Br5c5 ≠ nw, Br5c5 ≠ se, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ ns, Br5c4 ≠ ns
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ nw, Br6c3 ≠ n, Br6c3 ≠ e
whip[1]: Br6c3{w .} ==> Pr6c3 ≠ ne, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr6c3 ≠ ew, Pr6c4 ≠ sw
whip[1]: Pr6c4{ne .} ==> Br5c3 ≠ s, Br6c4 ≠ ew
whip[1]: Br6c4{se .} ==> Pr7c5 ≠ ne, Pr7c5 ≠ ns
whip[1]: Pr7c5{sw .} ==> Br6c5 ≠ sw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c5 ≠ nw, Br7c4 ≠ s, Br7c4 ≠ w
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 1
whip[1]: Br6c5{ew .} ==> Pr6c6 ≠ ne
whip[1]: Pr6c6{sw .} ==> Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c6 ≠ nw, Br6c6 ≠ se
whip[1]: Br5c3{w .} ==> Pr5c3 ≠ se, Pr5c4 ≠ sw
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ ne
whip[1]: Br4c4{sw .} ==> Pr4c5 ≠ sw
whip[1]: Pr5c3{ew .} ==> Br4c3 ≠ swn, Br4c2 ≠ w, Br4c3 ≠ e, Br4c3 ≠ ne, Br5c2 ≠ ne
whip[1]: Br5c2{se .} ==> Pr6c3 ≠ ns
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ se, Br6c2 ≠ s
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 1
whip[1]: Br4c3{wne .} ==> Pr4c3 ≠ nw, Nr4c3 ≠ 1
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ sw, Br4c2 ≠ nes, Br3c3 ≠ ne
whip[1]: Br4c2{ew .} ==> Pr5c3 ≠ nw, Nr4c2 ≠ 1, Nr4c2 ≠ 3
N-single: Nr4c2 = 2
w[1]-diagonal-3-2+0-in-{r5c1...r4c2+r3c2} ==> Vr4c3 = 1, Hr4c3 = 1
w[1]-1-in-r5c3-asymmetric-nw-corner ==> Pr6c4 ≠ ne
P-single: Pr8c6 = nw
P-single: Pr7c5 = nw
P-single: Pr6c4 = o
horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
same-colour-in-{r4 r5}c3 ==> Hr5c3 = 0
whip[1]: Vr4c3{1 .} ==> Pr4c3 ≠ ew, Pr5c3 ≠ ew, Br4c2 ≠ ns, Br4c3 ≠ ns
P-single: Pr5c3 = ns
B-single: Br4c2 = ew
whip[1]: Pr5c3{ns .} ==> Br5c3 ≠ e, Br5c3 ≠ n, Br5c2 ≠ ns
B-single: Br5c2 = se
B-single: Br5c3 = w
whip[1]: Br5c2{se .} ==> Pr6c3 ≠ sw, Pr5c2 ≠ ew
P-single: Pr5c2 = nw
P-single: Pr6c3 = nw
w[1]-1-in-r6c3-symmetric-nw-corner ==> Pr7c4 ≠ se
P-single: Pr7c4 = ew
w[1]-1-in-r5c3-asymmetric-sw-corner ==> Pr5c4 ≠ ew, Pr5c4 ≠ ns
P-single: Pr5c4 = ne
whip[1]: Pr5c2{nw .} ==> Br4c1 ≠ ns
B-single: Br4c1 = nes
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 2, Pr4c2 ≠ ew
N-single: Nr4c1 = 3
w[1]-adjacent-1-2-on-pseudo-edge-in-r5{c3 c2}-fwd-diag-2s-3 ==> Vr5c4 = 0
P-single: Pr5c5 = sw
P-single: Pr4c2 = sw
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
same-colour-in-{r5 r6}c4 ==> Hr6c4 = 0
w[1]-2-in-r5c4-open-sw-corner ==> Hr5c4 = 1, Vr5c5 = 1, Hr5c5 = 0, Vr4c5 = 0
w[1]-2-in-r6c4-open-nw-corner ==> Vr6c5 = 1, Hr7c5 = 0
w[1]-2-in-r7c5-open-nw-corner ==> Vr7c6 = 1, Hr8c6 = 0
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
w[1]-2-in-r4c4-open-ne-corner ==> Vr4c4 = 1
same-colour-in-{r5 r6}c5 ==> Hr6c5 = 0
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
w[1]-3-in-r7c7-closed-sw-corner ==> Pr7c8 ≠ sw, Pr7c8 ≠ o
whip[1]: Vr5c4{0 .} ==> Br5c4 ≠ sw
B-single: Br5c4 = ne
whip[1]: Br5c4{ne .} ==> Pr6c5 ≠ ew
P-single: Pr6c5 = ns
whip[1]: Pr6c5{ns .} ==> Br5c5 ≠ ns, Br6c4 ≠ ns, Br6c5 ≠ ne, Br6c5 ≠ ns
B-single: Br6c5 = ew
B-single: Br6c4 = se
B-single: Br5c5 = ew
whip[1]: Br6c5{ew .} ==> Pr7c6 ≠ ew, Pr6c6 ≠ ew, Vr6c6 ≠ 0
V-single: Vr6c6 = 1
P-single: Pr6c6 = ns
P-single: Pr7c6 = ns
vertical-line-r6{c5 c6} ==> Ir6c6 = out
same-colour-in-{r6 r7}c6 ==> Hr7c6 = 0
whip[1]: Vr6c6{1 .} ==> Br6c6 ≠ ne, Br6c6 ≠ ns
B-single: Br6c6 = ew
whip[1]: Br6c6{ew .} ==> Pr7c7 ≠ sw, Pr7c7 ≠ ew, Pr6c7 ≠ ew, Pr6c7 ≠ nw, Vr6c7 ≠ 0, Hr6c6 ≠ 1
H-single: Hr6c6 = 0
V-single: Vr6c7 = 1
vertical-line-r6{c6 c7} ==> Ir6c7 = in
no-horizontal-line-{r5 r6}c6 ==> Ir5c6 = out
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1

LOOP[6]: Vr6c8-Vr7c8-Hr8c7-Vr7c7-Vr6c7- ==> Hr6c7 = 0
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-r5{c6 c7} ==> Hr5c7 = 1

LOOP[8]: Vr5c7-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8- ==> Hr5c7 = 0
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
w[1]-3-in-r3c7-hit-by-verti-line-at-se ==> Vr3c7 = 1
w[1]-3-in-r3c7-closed-nw-corner ==> Pr4c8 ≠ nw, Pr4c8 ≠ o

LOOP[12]: Vr5c7-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Hr3c7-Vr3c7- ==> Vr4c7 = 0
no-vertical-line-r4{c6 c7} ==> Ir4c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = out
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
whip[1]: Hr6c6{0 .} ==> Br5c6 ≠ s, Br5c6 ≠ ns, Br5c6 ≠ se, Br5c6 ≠ nes
whip[1]: Vr6c7{1 .} ==> Br6c7 ≠ o, Br6c7 ≠ n, Br6c7 ≠ e, Br6c7 ≠ s, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ nes
whip[1]: Br6c7{wne .} ==> Nr6c7 ≠ 0
whip[1]: Vr5c6{1 .} ==> Br5c6 ≠ o, Pr5c6 ≠ nw, Pr5c6 ≠ ew, Br5c6 ≠ n, Br5c6 ≠ e, Br5c6 ≠ ne
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 0
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c6 ≠ ne, Br4c6 ≠ sw
whip[1]: Br4c5{ne .} ==> Nr4c5 ≠ 3
whip[1]: Hr7c7{0 .} ==> Pr7c8 ≠ nw, Pr7c7 ≠ ne, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br7c7 ≠ nes
P-single: Pr7c7 = ns
P-single: Pr7c8 = ns
B-single: Br7c7 = esw
whip[1]: Pr7c7{ns .} ==> Br7c6 ≠ n, Br7c6 ≠ w, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ sw, Br7c6 ≠ nes
whip[1]: Br7c6{esw .} ==> Pr8c7 ≠ o, Pr8c7 ≠ ew, Nr7c6 ≠ 1
whip[1]: Pr7c8{ns .} ==> Br6c7 ≠ w, Br6c7 ≠ nw
whip[1]: Br6c7{wne .} ==> Pr6c8 ≠ o, Pr6c8 ≠ nw, Nr6c7 ≠ 1
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ nes, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{wne .} ==> Nr5c7 ≠ 0
whip[1]: Br7c7{esw .} ==> Pr8c7 ≠ nw, Pr8c8 ≠ o
P-single: Pr8c8 = nw
P-single: Pr8c7 = ne
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ o
B-single: Br8c7 = n
whip[1]: Pr8c7{ne .} ==> Br8c6 ≠ n, Br7c6 ≠ esw
B-single: Br7c6 = ew
B-single: Br8c6 = o
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 3
N-single: Nr7c6 = 2
whip[1]: Vr6c8{1 .} ==> Br6c8 ≠ o
B-single: Br6c8 = w
whip[1]: Hr6c7{0 .} ==> Pr6c8 ≠ sw, Pr6c7 ≠ se, Br5c7 ≠ s, Br5c7 ≠ ns, Br6c7 ≠ wne
P-single: Pr6c7 = ns
P-single: Pr6c8 = ns
B-single: Br6c7 = ew
whip[1]: Pr6c7{ns .} ==> Br5c7 ≠ e, Br5c6 ≠ w, Br5c6 ≠ nw, Br5c7 ≠ ne
whip[1]: Br5c7{wne .} ==> Pr5c8 ≠ o, Pr5c8 ≠ nw, Pr5c7 ≠ ne, Pr5c7 ≠ ew, Nr5c7 ≠ 1
whip[1]: Pr5c7{sw .} ==> Br4c6 ≠ nw, Br4c6 ≠ se, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br5c7 ≠ wne, Br4c7 ≠ s, Br4c7 ≠ ns
B-single: Br5c7 = ew
whip[1]: Br5c7{ew .} ==> Nr5c7 ≠ 3, Pr5c8 ≠ sw
N-single: Nr5c7 = 2
P-single: Pr5c8 = ns
whip[1]: Pr5c8{ns .} ==> Br4c7 ≠ n, Br4c7 ≠ o, Br4c7 ≠ w, Br4c7 ≠ nw
whip[1]: Br4c7{wne .} ==> Nr4c7 ≠ 0
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 1
whip[1]: Br6c7{ew .} ==> Nr6c7 ≠ 3
N-single: Nr6c7 = 2
whip[1]: Vr5c8{1 .} ==> Br5c8 ≠ o
B-single: Br5c8 = w
whip[1]: Vr4c8{1 .} ==> Br4c8 ≠ o
B-single: Br4c8 = w
whip[1]: Vr3c7{1 .} ==> Br3c6 ≠ o, Pr3c7 ≠ o, Pr3c7 ≠ ne, Pr3c7 ≠ nw, Pr3c7 ≠ ew, Pr4c7 ≠ se, Pr4c7 ≠ ew, Br3c6 ≠ n, Br3c6 ≠ s, Br3c6 ≠ w, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ sw, Br3c6 ≠ swn, Br3c7 ≠ nes
whip[1]: Br3c7{wne .} ==> Pr3c8 ≠ o
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ nw, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ w
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Pr4c7{nw .} ==> Br3c7 ≠ esw, Br3c7 ≠ swn, Br4c7 ≠ ne, Br4c7 ≠ wne
B-single: Br3c7 = wne
whip[1]: Br3c7{wne .} ==> Pr3c7 ≠ sw, Pr3c7 ≠ ns, Pr4c8 ≠ sw, Pr3c8 ≠ nw, Pr3c8 ≠ ns
P-single: Pr3c8 = sw
P-single: Pr4c8 = ns
P-single: Pr3c7 = se
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ ne, Br2c7 ≠ e, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ esw, Br2c7 ≠ wne, Br2c7 ≠ nes
whip[1]: Br2c7{swn .} ==> Pr2c8 ≠ ns, Pr2c8 ≠ sw
whip[1]: Pr2c8{nw .} ==> Br1c7 ≠ wne
B-single: Br1c7 = nes
whip[1]: Br1c7{nes .} ==> Pr2c7 ≠ nw, Pr2c7 ≠ ns, Pr2c8 ≠ o, Pr1c7 ≠ sw, Pr1c8 ≠ o, Vr1c7 ≠ 1
V-single: Vr1c7 = 0
P-single: Pr1c8 = sw
P-single: Pr1c7 = ew
P-single: Pr2c8 = nw
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1

LOOP[6]: Hr1c6-Hr1c7-Vr1c8-Hr2c7-Hr2c6- ==> Vr1c6 = 0
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
whip[1]: Vr1c7{0 .} ==> Br1c6 ≠ e, Br1c6 ≠ ne, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ esw, Br1c6 ≠ wne, Br1c6 ≠ nes
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ w, Br1c6 ≠ s, Br1c6 ≠ o, Br1c6 ≠ sw
whip[1]: Br1c6{swn .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Nr1c6 ≠ 0
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ nes, Br1c5 ≠ w
whip[1]: Br1c5{ew .} ==> Pr2c6 ≠ o, Pr2c6 ≠ nw, Pr2c6 ≠ se, Nr1c5 ≠ 1, Nr1c5 ≠ 3
N-single: Nr1c5 = 2
whip[1]: Pr2c6{sw .} ==> Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ o, Br2c6 ≠ e, Br2c6 ≠ s
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Pr2c8{nw .} ==> Br2c7 ≠ s, Br2c7 ≠ sw
whip[1]: Br2c7{swn .} ==> Nr2c7 ≠ 1
whip[1]: Hr2c6{1 .} ==> Pr2c6 ≠ ns, Pr2c6 ≠ sw, Pr2c7 ≠ se, Br1c6 ≠ n, Br1c6 ≠ nw, Br2c6 ≠ w, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw
P-single: Pr2c7 = ew
whip[1]: Pr2c7{ew .} ==> Br2c6 ≠ ne, Br2c6 ≠ nes, Br2c7 ≠ swn
B-single: Br2c7 = ns
whip[1]: Br2c7{ns .} ==> Nr2c7 ≠ 3
N-single: Nr2c7 = 2
whip[1]: Br2c6{ns .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ nw, Nr2c6 ≠ 3
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c5 ≠ wne
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Vr1c6{0 .} ==> Pr1c6 ≠ se, Pr2c6 ≠ ne, Br1c5 ≠ ew, Br1c6 ≠ swn
P-single: Pr2c6 = ew
P-single: Pr1c6 = ew
B-single: Br1c6 = ns
B-single: Br1c5 = ns
whip[1]: Pr2c6{ew .} ==> Br2c5 ≠ w, Br2c5 ≠ sw
whip[1]: Br2c5{swn .} ==> Pr2c5 ≠ ns, Nr2c5 ≠ 1
P-single: Pr2c5 = se
whip[1]: Pr2c5{se .} ==> Br1c4 ≠ wne
B-single: Br1c4 = nw
whip[1]: Br1c4{nw .} ==> Nr1c4 ≠ 3, Nr1c4 ≠ 1, Nr1c4 ≠ 0, Pr1c5 ≠ sw
N-single: Nr1c4 = 2
P-single: Pr1c5 = ew
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 3
N-single: Nr1c6 = 2
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Pr3c7{se .} ==> Br2c6 ≠ ns, Br3c6 ≠ ne, Br3c6 ≠ wne, Br3c6 ≠ nes
B-single: Br2c6 = n
whip[1]: Br2c6{n .} ==> Pr3c6 ≠ se, Pr3c6 ≠ ew, Nr2c6 ≠ 2
N-single: Nr2c6 = 1
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ n, Br3c5 ≠ ns
whip[1]: Br4c7{ew .} ==> Nr4c7 ≠ 3
whip[1]: Vr4c7{0 .} ==> Pr4c7 ≠ ns, Pr5c7 ≠ ns, Br4c6 ≠ ew, Br4c7 ≠ ew
P-single: Pr5c7 = sw
P-single: Pr4c7 = nw
B-single: Br4c7 = e
B-single: Br4c6 = ns
whip[1]: Pr5c7{sw .} ==> Br5c6 ≠ ew
B-single: Br5c6 = wne
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 2, Pr5c6 ≠ ns
N-single: Nr5c6 = 3
P-single: Pr5c6 = se
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ e, Br4c5 ≠ ne
whip[1]: Br4c5{n .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ sw, Nr4c5 ≠ 2
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ nes, Br3c6 ≠ ew, Br3c5 ≠ w, Br3c6 ≠ e
whip[1]: Br3c6{esw .} ==> Nr3c6 ≠ 1
whip[1]: Br3c5{sw .} ==> Nr3c5 ≠ 1, Nr3c5 ≠ 3
N-single: Nr3c5 = 2
whip[1]: Br4c7{e .} ==> Nr4c7 ≠ 2
N-single: Nr4c7 = 1
whip[1]: Pr7c6{ns .} ==> Br7c5 ≠ ne, Br7c5 ≠ ns
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ ew
whip[1]: Pr4c2{sw .} ==> Hr4c2 ≠ 1
whip[1]: Hr4c4{0 .} ==> Pr4c4 ≠ ew, Br3c4 ≠ s, Br4c4 ≠ ns
B-single: Br4c4 = sw
whip[1]: Pr6c3{nw .} ==> Br6c2 ≠ nes, Br6c3 ≠ w
B-single: Br6c3 = s
B-single: Br6c2 = ns
whip[1]: Br6c3{s .} ==> Pr7c3 ≠ nw
P-single: Pr7c3 = ew
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ s, Br7c3 ≠ se
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 1
whip[1]: Br6c2{ns .} ==> Nr6c2 ≠ 3
N-single: Nr6c2 = 2
whip[1]: Pr7c4{ew .} ==> Br7c3 ≠ nes, Br7c4 ≠ nw, Br7c4 ≠ wne
B-single: Br7c3 = ns
whip[1]: Br7c3{ns .} ==> Nr7c3 ≠ 3, Pr8c4 ≠ nw
N-single: Nr7c3 = 2
P-single: Pr8c4 = ew
whip[1]: Pr8c4{ew .} ==> Br8c4 ≠ o
B-single: Br8c4 = n
whip[1]: Hr4c3{1 .} ==> Pr4c3 ≠ ns, Pr4c4 ≠ ns, Br3c3 ≠ ew, Br4c3 ≠ ew
P-single: Pr4c4 = sw
P-single: Pr4c3 = se
B-single: Br4c3 = wne
B-single: Br3c3 = ns
w[1]-1-in-r3c4-symmetric-sw-corner ==> Pr3c5 ≠ ne
P-single: Pr3c5 = ns
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ w
B-single: Br3c4 = e
whip[1]: Br3c4{e .} ==> Pr4c5 ≠ o, Vr3c5 ≠ 0, Pr3c4 ≠ ns
V-single: Vr3c5 = 1
P-single: Pr3c4 = nw
P-single: Pr4c5 = ne

LOOP[60]: Vr3c5-Vr2c5-Hr2c5-Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Vr1c4-Vr2c4-Hr3c3-Vr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Vr4c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Vr4c4-Hr5c4-Vr5c5-Vr6c5-Hr7c4-Hr7c3-Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Vr7c6-Vr6c6-Vr5c6-Hr5c6-Vr5c7-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Hr3c7-Vr3c7-Hr4c6- ==> Hr4c5 = 1
horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
same-colour-in-r3{c5 c6} ==> Vr3c6 = 0
P-single: Pr3c6 = o
same-colour-in-{r2 r3}c5 ==> Hr3c5 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXXXX
XXOXOOO
XXXXOOX
OXOXXXX
XXOOXOX
OOOOXOX
XXXXXOX

.———.———.   .———.———.———.———.
|     2 | 2 |             3 |
.   .   .   .   .———.———.———.
| 1   1 | 3 | 2 |
.   .   .———.   .   .   .———.
| 2   0   2   1 |       | 3 |
.———.   .———.   .———.———.   .
    |   |   | 2       2     |
.———.   .   .———.   .———.   .
| 3   2 | 1   2 | 2 |   |   |
.———.———.   .   .   .   .   .
  2       1   2 | 2 | 2 |   |
.———.———.———.———.   .   .   .
|                 2 |   | 3 |
.———.———.———.———.———.   .———.

init-time = 0.28s, solve-time = 9.41s, total-time = 9.69s
nb-facts=<Fact-94168>
Quasi-Loop max length = 60
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
