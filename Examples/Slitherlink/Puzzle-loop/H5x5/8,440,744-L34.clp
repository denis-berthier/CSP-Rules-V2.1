
(solve
5 5
. 2 . 2 .
. 1 2 1 .
. . 3 1 3
. 2 3 1 .
3 . . . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . 2 .
. 1 2 1 .
. . 3 1 3
. 2 3 1 .
3 . . . 3

Loading pre-computed background
start init-inner-N-and-B-candidates 0.167475938796997
start solution 0.170627117156982
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
w[1]-diagonal-3-2-3-in-{r3c3...r5c1} ==> Vr3c4 = 1, Hr3c3 = 1, Vr2c4 = 0, Hr3c4 = 0
w[1]-3-in-r4c3-hit-by-verti-line-at-ne ==> Vr4c3 = 1, Hr5c3 = 1, Hr4c4 = 0
w[1]-diagonal-3-2-in-{r3c3...r4c2}-non-closed-sw-corner ==> Vr4c2 = 1
w[1]-3-in-r3c3-hit-by-verti-line-at-sw ==> Hr4c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c4 c3} ==> Vr3c5 = 0
w[0]-adjacent-3-in-r3c5-nolines-west ==> Vr3c6 = 1, Vr4c5 = 1, Vr2c5 = 1, Hr4c5 = 1, Hr3c5 = 1, Vr4c6 = 0, Vr2c6 = 0
w[1]-3-in-r5c5-hit-by-verti-line-at-nw ==> Hr5c4 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r4c3-closed-sw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
w[1]-3-in-r3c5-closed-ne-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
adjacent-3s-in-c3{r3 r4} ==> Hr4c3 = 1
w[0]-adjacent-3-in-r4c3-nolines-east ==> Vr5c4 = 1, Vr3c3 = 0
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw
w[1]-3-in-r4c3-closed-nw-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
w[1]-diagonal-closed-3-1-in-{r3c5...r2c4} ==> Hr2c4 = 0
w[1]-diagonal-closed-3-1-in-{r3c3...r2c2} ==> Vr2c2 = 0, Hr2c2 = 0
w[1]-1-in-r4c4-asymmetric-ne-corner ==> Pr5c4 ≠ ew, Pr5c4 ≠ ns
w[1]-1-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ ew, Pr4c4 ≠ ns
w[1]-1-in-r3c4-asymmetric-sw-corner ==> Pr3c5 ≠ ew, Pr3c5 ≠ ns
w[1]-1-in-r2c4-asymmetric-se-corner ==> Pr2c4 ≠ ew, Pr2c4 ≠ ns
w[1]-1-in-r2c2-asymmetric-se-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ew, Pr2c2 ≠ ns
entering level Loop with <Fact-27787>
entering level Col with <Fact-27871>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
vertical-line-r4{c2 c3} ==> Ir4c2 = out
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = out
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
vertical-line-r3{c3 c4} ==> Ir3c4 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
vertical-line-r5{c3 c4} ==> Ir5c4 = in
vertical-line-r4{c1 c2} ==> Ir4c1 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1

LOOP[6]: Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2- ==> Hr4c1 = 0
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1

LOOP[8]: Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Vr3c2- ==> Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
w[1]-1-in-r3c4-asymmetric-nw-corner ==> Pr4c5 ≠ ew, Pr4c5 ≠ ns
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
same-colour-in-r5{c4 c5} ==> Vr5c5 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
w[1]-3-in-r5c5-hit-by-horiz-line-at-sw ==> Hr5c5 = 1
w[1]-3-in-r5c5-closed-ne-corner ==> Pr6c5 ≠ ne, Pr6c5 ≠ o
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
Starting_init_links_with_<Fact-28275>
132 candidates, 1464 csp-links and 5090 links. Density = 58.87%
starting non trivial part of solution
Entering_level_W1_with_<Fact-41388>
whip[1]: Hr1c4{1 .} ==> Br1c4 ≠ sw, Br0c4 ≠ o, Pr1c4 ≠ sw, Pr1c5 ≠ se, Br1c4 ≠ se, Br1c4 ≠ ew
P-single: Pr1c5 = ew
B-single: Br0c4 = s
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ o, Br1c4 ≠ ne, Vr1c5 ≠ 1, Hr1c5 ≠ 0, Br1c5 ≠ sw, Br1c5 ≠ wne
H-single: Hr1c5 = 1
V-single: Vr1c5 = 0
w[1]-2-in-r1c4-open-se-corner ==> Vr1c4 = 1, Hr1c3 = 0
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o, Pr1c6 ≠ o
P-single: Pr1c6 = sw
B-single: Br0c5 = s
whip[1]: Vr1c5{0 .} ==> Pr2c5 ≠ ne, Pr2c5 ≠ ns
whip[1]: Vr1c4{1 .} ==> Br1c3 ≠ o, Pr1c4 ≠ ew, Pr2c4 ≠ se, Br1c3 ≠ n, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ sw, Br1c3 ≠ swn, Br1c4 ≠ ns
P-single: Pr2c4 = nw
P-single: Pr1c4 = se
B-single: Br1c4 = nw
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ n, Br1c3 ≠ e, Br1c3 ≠ ne, Br1c3 ≠ ew, Br1c3 ≠ wne, Br2c3 ≠ ne, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c4 ≠ w
whip[1]: Br2c4{s .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ ns
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br3c3 ≠ esw, Br3c4 ≠ e, Br3c4 ≠ s
B-single: Br2c3 = ns
whip[1]: Br2c3{ns .} ==> Pr3c3 ≠ ns, Pr2c3 ≠ ns, Pr2c3 ≠ sw
P-single: Pr3c3 = ew
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, Br3c2 ≠ w, Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ o, Br2c2 ≠ w, Br2c2 ≠ e, Br2c2 ≠ n, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ swn, Br3c3 ≠ wne
B-single: Br3c3 = nes
B-single: Br2c2 = s
whip[1]: Br3c3{nes .} ==> Pr4c4 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr3c4 ≠ ew
P-single: Pr3c4 = sw
P-single: Pr4c4 = nw
w[1]-1-in-r2c4-symmetric-sw-corner ==> Pr2c5 ≠ o
P-single: Pr2c5 = se
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ n, Br2c4 ≠ s
B-single: Br2c4 = e
B-single: Br3c4 = w
whip[1]: Br2c4{e .} ==> Pr3c5 ≠ sw
P-single: Pr3c5 = ne
whip[1]: Pr3c5{ne .} ==> Br2c5 ≠ n, Br2c5 ≠ o, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ wne, Br2c5 ≠ nes, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne
B-single: Br3c5 = nes
whip[1]: Br3c5{nes .} ==> Pr4c5 ≠ nw, Pr4c6 ≠ sw, Pr4c6 ≠ ns, Pr4c6 ≠ o, Pr3c6 ≠ nw, Pr3c6 ≠ ns, Pr3c6 ≠ o
P-single: Pr3c6 = sw
P-single: Pr4c6 = nw
P-single: Pr4c5 = se
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ esw
whip[1]: Br2c5{swn .} ==> Pr2c6 ≠ ns, Pr2c6 ≠ sw, Nr2c5 ≠ 0, Nr2c5 ≠ 1
whip[1]: Pr2c6{nw .} ==> Br1c5 ≠ ne
B-single: Br1c5 = nes
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 2, Nr1c5 ≠ 1, Nr1c5 ≠ 0, Pr2c6 ≠ o
N-single: Nr1c5 = 3
P-single: Pr2c6 = nw
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ sw
B-single: Br2c5 = swn
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 2
N-single: Nr2c5 = 3
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ o, Br4c5 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ wne, Br4c5 ≠ nes
whip[1]: Br4c5{swn .} ==> Pr5c6 ≠ ns, Pr5c6 ≠ nw, Nr4c5 ≠ 0
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ esw
B-single: Br5c5 = nes
whip[1]: Br5c5{nes .} ==> Pr5c5 ≠ sw, Pr5c5 ≠ ns, Pr5c6 ≠ o, Pr6c5 ≠ nw, Pr6c6 ≠ o
P-single: Pr6c6 = nw
P-single: Pr6c5 = ew
P-single: Pr5c6 = sw
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o
B-single: Br6c5 = n
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ ne, Br5c4 ≠ w, Br5c4 ≠ e, Br5c4 ≠ n, Br5c4 ≠ o, Br6c4 ≠ o, Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ wne, Br5c4 ≠ nes
B-single: Br6c4 = n
whip[1]: Br6c4{n .} ==> Pr6c4 ≠ o, Pr6c4 ≠ nw
whip[1]: Pr6c4{ew .} ==> Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ esw, Br5c3 ≠ nes, Br5c3 ≠ o, Br5c3 ≠ n, Br5c3 ≠ w
whip[1]: Br5c3{wne .} ==> Nr5c3 ≠ 0
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 0
whip[1]: Pr5c6{sw .} ==> Br4c5 ≠ n, Br4c5 ≠ nw
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 1
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Br4c4{s .} ==> Pr5c4 ≠ ne
P-single: Pr5c4 = sw
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ ns, Br5c4 ≠ s, Br5c3 ≠ ns, Br5c3 ≠ s, Br5c3 ≠ e, Br4c4 ≠ s, Br4c3 ≠ esw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c4 ≠ swn
B-single: Br5c4 = sw
B-single: Br4c3 = swn
B-single: Br4c4 = e
whip[1]: Br5c4{sw .} ==> Nr5c4 ≠ 3, Nr5c4 ≠ 1, Pr5c5 ≠ ew, Pr6c4 ≠ ew
N-single: Nr5c4 = 2
P-single: Pr6c4 = ne
P-single: Pr5c5 = ne
whip[1]: Pr6c4{ne .} ==> Br6c3 ≠ n
B-single: Br6c3 = o
whip[1]: Br6c3{o .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ ew
whip[1]: Pr6c3{nw .} ==> Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br5c2 ≠ e, Br5c2 ≠ s
whip[1]: Pr5c5{ne .} ==> Br4c5 ≠ ns
B-single: Br4c5 = swn
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 2
N-single: Nr4c5 = 3
whip[1]: Br4c3{swn .} ==> Pr5c3 ≠ sw, Pr5c3 ≠ ew, Pr5c3 ≠ ns, Pr4c3 ≠ ew
P-single: Pr4c3 = se
P-single: Pr5c3 = ne
whip[1]: Pr4c3{se .} ==> Br3c2 ≠ ns, Br3c2 ≠ swn, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ sw
whip[1]: Br4c2{ew .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ew
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br4c1 ≠ nw, Br4c1 ≠ sw, Br4c1 ≠ swn, Br4c2 ≠ se, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ w, Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ ns
B-single: Br4c2 = ew
whip[1]: Br4c2{ew .} ==> Pr5c2 ≠ ew, Pr5c2 ≠ se
whip[1]: Pr5c2{nw .} ==> Br5c2 ≠ nw, Br5c2 ≠ nes, Br5c2 ≠ n
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br3c2{nw .} ==> Pr3c2 ≠ o, Pr3c2 ≠ ns, Pr3c2 ≠ nw, Pr3c2 ≠ sw, Nr3c2 ≠ 0, Nr3c2 ≠ 3
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ se, Br2c1 ≠ esw, Br2c1 ≠ nes, Br3c1 ≠ wne, Br3c1 ≠ ne
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ se, Br5c2 ≠ esw, Br5c3 ≠ wne
B-single: Br5c3 = ne
whip[1]: Br5c3{ne .} ==> Nr5c3 ≠ 3, Nr5c3 ≠ 1, Pr6c3 ≠ nw
N-single: Nr5c3 = 2
P-single: Pr6c3 = o
whip[1]: Pr6c3{o .} ==> Br6c2 ≠ n
B-single: Br6c2 = o
whip[1]: Br6c2{o .} ==> Pr6c2 ≠ ne, Pr6c2 ≠ ew
whip[1]: Pr6c2{nw .} ==> Br5c1 ≠ swn
B-single: Br5c1 = esw
whip[1]: Br5c1{esw .} ==> Pr5c2 ≠ nw, Pr5c1 ≠ ne, Pr6c2 ≠ o, Pr6c1 ≠ o
P-single: Pr6c1 = ne
P-single: Pr6c2 = nw
P-single: Pr5c1 = ns
P-single: Pr5c2 = ns
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Pr6c2{nw .} ==> Br5c2 ≠ o
B-single: Br5c2 = w
whip[1]: Br5c2{w .} ==> Nr5c2 ≠ 3, Nr5c2 ≠ 2, Nr5c2 ≠ 0
N-single: Nr5c2 = 1
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ e, Br4c1 ≠ ne, Br4c1 ≠ se, Br4c1 ≠ esw, Br4c1 ≠ nes
whip[1]: Br4c1{wne .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ne, Nr4c1 ≠ 1
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ sw, Br3c1 ≠ swn, Br3c1 ≠ e
whip[1]: Br3c1{ew .} ==> Pr3c1 ≠ se, Nr3c1 ≠ 3
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ s, Br2c1 ≠ ns
whip[1]: Br2c2{s .} ==> Pr3c2 ≠ ne, Pr2c2 ≠ se, Pr2c3 ≠ ew
P-single: Pr2c3 = ne
whip[1]: Pr2c3{ne .} ==> Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ sw, Br1c3 ≠ se, Br1c3 ≠ nes
B-single: Br1c3 = esw
whip[1]: Br1c3{esw .} ==> Nr1c3 ≠ 2, Nr1c3 ≠ 1, Nr1c3 ≠ 0, Pr1c3 ≠ ew, Pr1c3 ≠ se
N-single: Nr1c3 = 3
P-single: Pr2c2 = o
P-single: Pr1c3 = sw
whip[1]: Pr2c2{o .} ==> Vr1c2 ≠ 1, Hr2c1 ≠ 1, Br1c1 ≠ e, Br1c1 ≠ s, Br1c1 ≠ se, Br1c1 ≠ swn, Br1c1 ≠ wne, Br1c2 ≠ ew, Br2c1 ≠ n, Br2c1 ≠ e, Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ ew, Br2c1 ≠ swn, Br2c1 ≠ wne
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
B-single: Br1c2 = ne
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1

LOOP[34]: Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Vr3c2-Hr3c2-Hr3c3-Vr3c4-Hr4c3-Vr4c3-Hr5c3-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2- ==> Hr1c1 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXX
XXXXO
XOOXX
XOXXO
XOOXX

.———.———.   .———.———.
|     2 |   | 2     |
.   .   .———.   .———.
|     1   2   1 |
.   .———.———.   .———.
|   |     3 | 1   3 |
.   .   .———.   .———.
|   | 2 | 3   1 |
.   .   .———.   .———.
| 3 |       |     3 |
.———.   .   .———.———.

init-time = 0.17s, solve-time = 1.31s, total-time = 1.48s
nb-facts=<Fact-42879>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

