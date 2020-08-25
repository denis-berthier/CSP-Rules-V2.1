
(solve
7 7
2 . . 3 . 1 . 
. 3 . 2 3 . 3 
. . . . 2 . 3 
. . 3 . . 1 . 
. . 3 . . . . 
. 2 . 3 2 . 2
. . . 3 . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . . 3 . 1 .
. 3 . 2 3 . 3
. . . . 2 . 3
. . 3 . . 1 .
. . 3 . . . .
. 2 . 3 2 . 2
. . . 3 . . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.300641059875488
start solution 0.307005167007446
entering BRT
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3s-in-{r5c3...r6c4} ==> Vr6c5 = 1, Vr5c3 = 1, Hr7c4 = 1, Hr5c3 = 1, Vr7c5 = 0, Vr4c3 = 0, Hr7c5 = 0, Hr5c2 = 0
w[1]-diagonal-3s-in-{r1c4...r2c5} ==> Vr2c6 = 1, Vr1c4 = 1, Hr3c5 = 1, Hr1c4 = 1, Vr3c6 = 0, Hr3c6 = 0, Hr1c3 = 0
w[1]-3-in-r7c4-hit-by-verti-line-at-ne ==> Vr7c4 = 1, Hr8c4 = 1
w[1]-3-in-r6c4-hit-by-verti-line-at-sw ==> Hr6c4 = 1
w[1]-diagonal-3-2-in-{r7c4...r6c5}-non-closed-ne-corner ==> Vr6c6 = 1
w[1]-3-in-r4c3-hit-by-verti-line-at-sw ==> Vr4c4 = 1, Hr4c3 = 1
w[1]-3-in-r5c3-hit-by-verti-line-at-ne ==> Hr6c3 = 1
w[1]-2-in-r6c2-open-ne-corner ==> Hr7c2 = 1, Vr6c2 = 1, Hr7c1 = 0, Vr7c2 = 0
w[1]-3-in-r7c4-closed-nw-corner ==> Pr8c5 ≠ nw, Pr8c5 ≠ o
w[1]-3-in-r6c4-closed-se-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ o
w[1]-3-in-r6c4-closed-ne-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-3-in-r5c3-closed-sw-corner ==> Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
w[1]-3-in-r4c3-closed-se-corner ==> Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o
w[1]-3-in-r4c3-closed-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-3-in-r2c5-closed-se-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
w[1]-3-in-r2c2-symmetric-nw-corner ==> Vr2c2 = 1, Hr2c2 = 1
w[1]-2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
diagonal-3-1-in-ne-corner ==> Vr1c7 = 1, Hr2c7 = 0
adjacent-3s-in-c7{r2 r3} ==> Hr4c7 = 1, Hr3c7 = 1
P-single: Pr1c1 = se
entering level Loop with <Fact-49301>
entering level Col with <Fact-49403>
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
horizontal-line-{r1 r2}c2 ==> Ir2c2 = out
horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
vertical-line-r4{c3 c4} ==> Ir4c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-vertical-line-r6{c3 c4} ==> Ir6c4 = out
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
vertical-line-r6{c5 c6} ==> Ir6c6 = out
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
vertical-line-r1{c3 c4} ==> Ir1c3 = out
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
w[1]-3-in-r2c2-hit-by-verti-line-at-ne ==> Hr3c2 = 1
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = out
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
w[1]-3-in-r2c2-hit-by-horiz-line-at-se ==> Vr3c3 = 0
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1

LOOP[8]: Vr6c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Hr7c2-Vr6c2- ==> Hr6c1 = 0
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1

LOOP[10]: Vr5c1-Vr6c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Hr7c2-Vr6c2-Vr5c2- ==> Hr5c1 = 0
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
Starting_init_links_with_<Fact-50072>
494 candidates, 4135 csp-links and 15714 links. Density = 12.9%
starting non trivial part of solution
Entering_level_W1_with_<Fact-89775>
whip[1]: Hr8c5{1 .} ==> Br7c5 ≠ wne, Br8c5 ≠ o, Br7c5 ≠ o, Pr8c6 ≠ o, Pr8c6 ≠ ne, Br7c5 ≠ n, Br7c5 ≠ e, Br7c5 ≠ w, Br7c5 ≠ ne, Br7c5 ≠ nw, Br7c5 ≠ ew
B-single: Br8c5 = n
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ o, Br7c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ ne
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ nes, Br4c0 ≠ o, Br4c1 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ ne, Pr5c1 ≠ o, Pr5c1 ≠ se, Br4c1 ≠ n, Br4c1 ≠ e, Br4c1 ≠ s, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ se
B-single: Br4c0 = e
whip[1]: Br4c1{wne .} ==> Nr4c1 ≠ 0
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ s, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ ne, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ e
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Hr4c1{0 .} ==> Br4c1 ≠ wne, Pr4c1 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Br3c1 ≠ s, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ nes, Br4c1 ≠ nw, Br4c1 ≠ swn
P-single: Pr4c1 = ns
whip[1]: Br3c1{wne .} ==> Pr3c1 ≠ o, Pr3c1 ≠ ne
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ ne, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ e
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
whip[1]: Vr4c2{1 .} ==> Br4c2 ≠ nes, Br4c2 ≠ o, Pr4c2 ≠ o, Pr4c2 ≠ ne, Pr5c2 ≠ o, Pr5c2 ≠ se, Pr5c2 ≠ ew, Pr5c2 ≠ sw, Br4c1 ≠ w, Br4c1 ≠ sw, Br4c2 ≠ n, Br4c2 ≠ e, Br4c2 ≠ s, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ se
whip[1]: Br4c2{wne .} ==> Nr4c2 ≠ 0
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 1
whip[1]: Pr5c2{nw .} ==> Br5c1 ≠ ne, Br5c1 ≠ nes, Br5c2 ≠ nw, Br5c2 ≠ swn, Br5c2 ≠ wne
whip[1]: Pr4c2{se .} ==> Br3c2 ≠ ne, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ e
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Hr5c1{0 .} ==> Br5c1 ≠ ns, Pr5c1 ≠ ne, Pr5c2 ≠ nw, Br4c1 ≠ esw, Br5c1 ≠ n
P-single: Pr5c1 = ns
B-single: Br4c1 = ew
whip[1]: Br4c1{ew .} ==> Nr4c1 ≠ 3
N-single: Nr4c1 = 2
whip[1]: Br5c1{esw .} ==> Pr6c1 ≠ o, Pr6c1 ≠ se
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Pr5c2{ns .} ==> Br5c2 ≠ s, Br5c2 ≠ se, Br5c2 ≠ o, Br5c2 ≠ e
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Vr5c2{1 .} ==> Br5c2 ≠ nes, Pr5c2 ≠ ne, Pr6c2 ≠ ew, Pr6c2 ≠ sw, Br5c1 ≠ w, Br5c1 ≠ sw, Br5c2 ≠ n, Br5c2 ≠ ne, Br5c2 ≠ ns
P-single: Pr5c2 = ns
whip[1]: Pr5c2{ns .} ==> Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn
whip[1]: Br4c2{wne .} ==> Pr5c3 ≠ nw, Pr5c3 ≠ ew
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ esw, Br4c3 ≠ swn, Br5c2 ≠ sw, Br5c3 ≠ nes, Br5c2 ≠ w
whip[1]: Br5c2{esw .} ==> Pr6c3 ≠ o, Pr6c3 ≠ se, Pr6c3 ≠ ew, Nr5c2 ≠ 1
whip[1]: Pr6c3{nw .} ==> Br6c2 ≠ ne, Br6c3 ≠ nw, Br6c3 ≠ swn, Br6c3 ≠ wne
whip[1]: Br4c3{nes .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ sw, Pr4c4 ≠ o, Pr4c4 ≠ ne, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr5c4 ≠ se, Pr5c4 ≠ ew
P-single: Pr4c4 = sw
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ ns, Br4c4 ≠ ne, Br4c4 ≠ s, Br4c4 ≠ e, Br4c4 ≠ n, Br4c4 ≠ o, Br3c4 ≠ ns, Br3c4 ≠ w, Br3c4 ≠ s, Br3c3 ≠ ne, Br3c3 ≠ w, Br3c3 ≠ e, Br3c3 ≠ n, Br3c3 ≠ o, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ esw, Br3c3 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ swn, Br4c4 ≠ wne, Br4c4 ≠ nes
whip[1]: Br4c4{esw .} ==> Pr4c5 ≠ nw, Pr4c5 ≠ ew, Nr4c4 ≠ 0
whip[1]: Pr4c5{se .} ==> Br3c5 ≠ ne, Br4c5 ≠ se, Br4c5 ≠ o, Br4c5 ≠ e, Br4c5 ≠ s
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Br3c4{ne .} ==> Pr3c4 ≠ ns, Pr3c4 ≠ se, Nr3c4 ≠ 3, Pr3c4 ≠ sw
whip[1]: Br3c3{swn .} ==> Nr3c3 ≠ 0
whip[1]: Pr5c4{nw .} ==> Br4c4 ≠ sw, Br4c4 ≠ esw, Br5c3 ≠ wne, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c4 ≠ wne, Br5c4 ≠ nes, Br5c4 ≠ n
whip[1]: Br5c4{esw .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr5c5 ≠ sw
whip[1]: Br5c3{swn .} ==> Pr6c3 ≠ ns, Pr6c3 ≠ nw, Pr6c4 ≠ ne, Pr6c4 ≠ ns
P-single: Pr7c2 = ne
P-single: Pr6c3 = ne
whip[1]: Pr7c2{ne .} ==> Br7c2 ≠ o, Br7c1 ≠ n, Br6c1 ≠ n, Br6c1 ≠ w, Br6c1 ≠ ns, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ nes, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br7c1 ≠ e, Br7c1 ≠ ne, Br7c1 ≠ esw, Br7c1 ≠ swn, Br7c2 ≠ e, Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ wne
B-single: Br6c2 = sw
whip[1]: Br6c2{sw .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ ne, Pr6c2 ≠ ne
P-single: Pr6c2 = ns
whip[1]: Pr6c2{ns .} ==> Br5c1 ≠ esw, Br5c2 ≠ esw, Br6c1 ≠ ne
B-single: Br6c1 = ew
B-single: Br5c2 = ew
B-single: Br5c1 = ew
whip[1]: Br6c1{ew .} ==> Nr6c1 ≠ 3, Nr6c1 ≠ 1, Pr7c1 ≠ se, Pr7c1 ≠ ne, Pr7c1 ≠ o, Pr6c1 ≠ ne
N-single: Nr6c1 = 2
P-single: Pr6c1 = ns
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ o
B-single: Br7c1 = sw
whip[1]: Br7c1{sw .} ==> Nr7c1 ≠ 3, Nr7c1 ≠ 1, Nr7c1 ≠ 0, Pr8c2 ≠ nw, Pr8c2 ≠ ne, Pr8c2 ≠ o, Pr8c1 ≠ o
N-single: Nr7c1 = 2
P-single: Pr8c1 = ne
P-single: Pr8c2 = ew
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Pr8c2{ew .} ==> Br7c2 ≠ ne, Br7c2 ≠ n, Br8c2 ≠ o
B-single: Br8c2 = n
whip[1]: Br8c2{n .} ==> Pr8c3 ≠ o, Pr8c3 ≠ ne
whip[1]: Pr8c3{ew .} ==> Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e, Br7c3 ≠ ne
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0, Nr7c2 ≠ 1
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Br5c1{ew .} ==> Nr5c1 ≠ 3, Nr5c1 ≠ 1
N-single: Nr5c1 = 2
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ wne, Br6c3 ≠ w, Br7c3 ≠ s
whip[1]: Pr6c3{ne .} ==> Br6c3 ≠ o, Br6c3 ≠ e, Br6c3 ≠ s, Br6c3 ≠ se
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ esw, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br6c4 ≠ swn, Br6c4 ≠ wne, Br5c4 ≠ w
B-single: Br5c3 = swn
whip[1]: Br5c3{swn .} ==> Pr5c4 ≠ ns, Pr5c3 ≠ ns
P-single: Pr5c3 = se
P-single: Pr5c4 = nw
whip[1]: Pr5c3{se .} ==> Br4c2 ≠ ew, Br4c2 ≠ wne, Br4c3 ≠ wne
B-single: Br4c3 = nes
whip[1]: Br4c2{nw .} ==> Nr4c2 ≠ 3
whip[1]: Br5c4{se .} ==> Nr5c4 ≠ 3
whip[1]: Br6c4{nes .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ ew, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr7c5 ≠ ns, Pr7c5 ≠ se, Pr7c5 ≠ ew
P-single: Pr7c5 = nw
whip[1]: Pr7c5{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c5 ≠ ns, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ nes
B-single: Br7c4 = swn
whip[1]: Br7c4{swn .} ==> Pr7c4 ≠ ew, Pr8c5 ≠ ne, Pr8c4 ≠ ew, Pr8c4 ≠ nw, Pr8c4 ≠ o
P-single: Pr8c4 = ne
P-single: Pr8c5 = ew
P-single: Pr7c4 = se
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ o, Br8c3 ≠ n, Br7c3 ≠ w, Br7c3 ≠ ns, Br7c3 ≠ nes
B-single: Br7c3 = ew
B-single: Br8c3 = o
B-single: Br8c4 = n
whip[1]: Br7c3{ew .} ==> Nr7c3 ≠ 3, Nr7c3 ≠ 1, Pr7c3 ≠ ew, Pr8c3 ≠ ew
N-single: Nr7c3 = 2
P-single: Pr8c3 = nw
P-single: Pr7c3 = sw
whip[1]: Pr8c3{nw .} ==> Br7c2 ≠ ns
B-single: Br7c2 = nes
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 2
N-single: Nr7c2 = 3
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ ns, Br6c3 ≠ nes
whip[1]: Br6c3{ne .} ==> Nr6c3 ≠ 3
whip[1]: Pr7c4{se .} ==> Br6c3 ≠ ne, Br6c4 ≠ esw
B-single: Br6c4 = nes
B-single: Br6c3 = n
whip[1]: Br6c4{nes .} ==> Pr6c5 ≠ ns, Pr6c4 ≠ sw
P-single: Pr6c4 = ew
P-single: Pr6c5 = sw
whip[1]: Pr6c4{ew .} ==> Br5c4 ≠ e, Br5c4 ≠ o
whip[1]: Br5c4{se .} ==> Nr5c4 ≠ 0
whip[1]: Pr6c5{sw .} ==> Br5c5 ≠ ns, Br5c5 ≠ w, Br5c5 ≠ s, Br5c4 ≠ se, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes, Br6c5 ≠ nw
B-single: Br6c5 = ew
B-single: Br5c4 = s
whip[1]: Br6c5{ew .} ==> Pr7c6 ≠ sw, Pr7c6 ≠ ew, Pr6c6 ≠ ew, Pr6c6 ≠ nw
whip[1]: Pr6c6{se .} ==> Br5c6 ≠ ne, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ se, Br6c6 ≠ nes, Br5c6 ≠ o, Br5c6 ≠ n, Br5c6 ≠ e, Br6c6 ≠ o, Br6c6 ≠ n, Br6c6 ≠ e, Br6c6 ≠ s
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 0
whip[1]: Br5c6{nes .} ==> Nr5c6 ≠ 0
whip[1]: Pr7c6{ns .} ==> Br7c6 ≠ s, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ wne
whip[1]: Br5c4{s .} ==> Nr5c4 ≠ 2, Pr5c5 ≠ ns, Pr5c5 ≠ se
N-single: Nr5c4 = 1
whip[1]: Pr5c5{ne .} ==> Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ ew, Br4c5 ≠ wne, Br4c5 ≠ nes
whip[1]: Br5c5{ne .} ==> Nr5c5 ≠ 3
whip[1]: Br6c3{n .} ==> Nr6c3 ≠ 2
N-single: Nr6c3 = 1
whip[1]: Br7c5{se .} ==> Nr7c5 ≠ 3
whip[1]: Br4c4{ew .} ==> Nr4c4 ≠ 3
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ nes, Br3c2 ≠ w
whip[1]: Hr4c2{1 .} ==> Br4c2 ≠ w, Pr4c2 ≠ ns, Pr4c3 ≠ ne, Br3c2 ≠ ew, Br3c2 ≠ wne
P-single: Pr4c3 = ew
P-single: Pr4c2 = se
B-single: Br4c2 = nw
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ sw, Br3c3 ≠ swn
whip[1]: Br3c3{ns .} ==> Pr3c3 ≠ ns, Nr3c3 ≠ 3, Pr3c3 ≠ sw
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ esw, Br2c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ wne, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ e, Br2c3 ≠ w, Br2c3 ≠ ne, Br3c3 ≠ s
B-single: Br3c3 = ns
whip[1]: Br3c3{ns .} ==> Nr3c3 ≠ 1, Pr3c4 ≠ ne, Pr3c4 ≠ o
N-single: Nr3c3 = 2
whip[1]: Pr2c5{ew .} ==> Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br2c4 ≠ sw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br1c5 ≠ o, Br1c5 ≠ n, Br1c5 ≠ e, Br1c5 ≠ ne, Br2c4 ≠ ne
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Br2c5{nes .} ==> Pr2c6 ≠ o, Pr2c6 ≠ ne, Pr2c6 ≠ nw, Pr2c6 ≠ ew, Pr3c5 ≠ ns, Pr3c5 ≠ sw, Pr3c6 ≠ o, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ ew
P-single: Pr3c6 = nw
whip[1]: Pr3c6{nw .} ==> Br3c6 ≠ n, Br2c6 ≠ s, Br2c6 ≠ e, Br2c6 ≠ n, Br2c6 ≠ o, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ se, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ nes, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c6 ≠ w, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes
whip[1]: Br3c6{se .} ==> Pr3c7 ≠ nw, Pr3c7 ≠ ew, Pr3c7 ≠ sw, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Nr3c6 ≠ 3
whip[1]: Br2c6{wne .} ==> Nr2c6 ≠ 0
whip[1]: Pr4c5{se .} ==> Vr4c5 ≠ 0, Br4c5 ≠ ne, Br4c4 ≠ w, Br4c5 ≠ n
V-single: Vr4c5 = 1
B-single: Br4c4 = ew
vertical-line-r4{c4 c5} ==> Ir4c5 = out
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
whip[1]: Vr4c5{1 .} ==> Pr5c5 ≠ o
P-single: Pr5c5 = ne
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ o, Br5c5 ≠ e
whip[1]: Br5c5{ne .} ==> Pr5c6 ≠ o, Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ se, Nr5c5 ≠ 0
whip[1]: Pr5c6{sw .} ==> Br5c6 ≠ nw, Br5c6 ≠ wne
whip[1]: Br4c4{ew .} ==> Nr4c4 ≠ 1
N-single: Nr4c4 = 2
whip[1]: Br4c5{swn .} ==> Pr4c6 ≠ sw, Nr4c5 ≠ 1
whip[1]: Pr4c6{ew .} ==> Br4c6 ≠ w
whip[1]: Br4c6{s .} ==> Vr4c6 ≠ 1, Pr4c6 ≠ se, Pr4c7 ≠ sw, Pr5c6 ≠ nw, Pr5c7 ≠ nw
V-single: Vr4c6 = 0
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
whip[1]: Vr4c6{0 .} ==> Br4c5 ≠ esw
whip[1]: Pr5c6{sw .} ==> Br5c6 ≠ se, Br5c6 ≠ s
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ se, Br3c4 ≠ ne
whip[1]: Br3c4{e .} ==> Nr3c4 ≠ 2
whip[1]: Br2c4{ew .} ==> Pr2c4 ≠ o, Pr2c4 ≠ nw
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ se, Br1c3 ≠ esw, Br1c3 ≠ nes
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ se, Br1c5 ≠ nes
whip[1]: Br1c4{wne .} ==> Pr1c4 ≠ o, Pr1c4 ≠ ew, Pr1c4 ≠ sw, Pr1c5 ≠ o, Pr1c5 ≠ se, Pr2c4 ≠ se, Pr2c4 ≠ ew, Pr2c4 ≠ sw
P-single: Pr4c6 = ew
P-single: Pr1c4 = se
w[1]-1-in-r4c6-asymmetric-nw-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ew, Pr5c7 ≠ ns, Pr5c7 ≠ ne
whip[1]: Pr4c6{ew .} ==> Br4c6 ≠ s, Br4c6 ≠ e, Br3c6 ≠ e, Br3c6 ≠ o, Hr4c6 ≠ 0, Hr4c5 ≠ 0, Br3c5 ≠ nw, Br4c5 ≠ sw
H-single: Hr4c5 = 1
H-single: Hr4c6 = 1
w[1]-3-in-r3c7-hit-by-horiz-line-at-sw ==> Vr3c8 = 1, Vr4c7 = 0
w[1]-3-in-r2c7-hit-by-verti-line-at-se ==> Vr2c7 = 1
w[1]-3-in-r2c7-closed-nw-corner ==> Pr3c8 ≠ nw, Pr3c8 ≠ o
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ o
w[1]-3-in-r3c7-closed-se-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ o
w[1]-3-in-r3c7-closed-ne-corner ==> Pr4c7 ≠ ne, Pr4c7 ≠ o
w[1]-diagonal-closed-3-1-in-{r3c7...r4c6} ==> Hr5c6 = 0
B-single: Br4c5 = swn
B-single: Br3c5 = ns
B-single: Br4c6 = n
w[1]-1-in-r4c6-asymmetric-ne-corner ==> Pr5c6 ≠ ew
P-single: Pr5c6 = sw
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = out
no-vertical-line-r2{c7 c8} ==> Ir2c7 = out
vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir1c6 = in
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
no-vertical-line-r3{c5 c6} ==> Ir3c5 = in
horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
no-vertical-line-r3{c6 c7} ==> Ir3c7 = in
horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
different-colours-in-r1{c7 c8} ==> Hr1c8 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
whip[1]: Hr4c5{1 .} ==> Pr4c5 ≠ ns
P-single: Pr4c5 = se
whip[1]: Pr4c5{se .} ==> Br3c4 ≠ e
whip[1]: Hr4c6{1 .} ==> Pr4c7 ≠ ns, Pr4c7 ≠ se
whip[1]: Pr4c7{ew .} ==> Br3c7 ≠ esw, Br3c7 ≠ swn, Br4c7 ≠ nw, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c7 ≠ w
whip[1]: Br3c7{nes .} ==> Pr3c8 ≠ ns, Pr4c8 ≠ o, Pr4c8 ≠ sw, Pr3c7 ≠ ns
P-single: Pr3c7 = ne
P-single: Pr3c8 = sw
whip[1]: Pr3c7{ne .} ==> Br2c6 ≠ w, Br2c6 ≠ nw, Br2c7 ≠ wne, Br2c7 ≠ nes, Br3c6 ≠ se, Br3c7 ≠ wne
B-single: Br3c7 = nes
B-single: Br3c6 = s
whip[1]: Br3c7{nes .} ==> Pr4c7 ≠ nw, Pr4c8 ≠ ns
P-single: Pr4c8 = nw
P-single: Pr4c7 = ew
whip[1]: Pr4c8{nw .} ==> Br4c7 ≠ s, Br4c7 ≠ e, Br4c7 ≠ o, Br4c7 ≠ ne, Br4c7 ≠ se, Br4c7 ≠ nes
whip[1]: Br4c7{ns .} ==> Pr5c8 ≠ ns, Pr5c8 ≠ nw, Nr4c7 ≠ 0, Nr4c7 ≠ 3
whip[1]: Pr5c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw, Br5c7 ≠ swn, Br5c7 ≠ n, Br5c7 ≠ e, Br5c7 ≠ ns
whip[1]: Br3c6{s .} ==> Nr3c6 ≠ 2, Nr3c6 ≠ 0
N-single: Nr3c6 = 1
whip[1]: Br2c7{swn .} ==> Pr2c7 ≠ o, Pr2c7 ≠ ne, Pr2c7 ≠ nw, Pr2c7 ≠ ew
whip[1]: Pr2c7{sw .} ==> Br1c7 ≠ sw
whip[1]: Br2c6{wne .} ==> Nr2c6 ≠ 1
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ esw
B-single: Br2c7 = swn
whip[1]: Br2c7{swn .} ==> Pr2c7 ≠ sw, Pr2c7 ≠ ns, Pr2c8 ≠ ns
P-single: Pr2c8 = nw
P-single: Pr2c7 = se
w[1]-1-in-r1c6-symmetric-se-corner ==> Pr1c6 ≠ se, Pr1c6 ≠ o
whip[1]: Pr2c8{nw .} ==> Br1c7 ≠ s, Br1c7 ≠ o, Br1c7 ≠ w, Br1c7 ≠ ne, Br1c7 ≠ wne
B-single: Br1c7 = nes
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 2, Nr1c7 ≠ 1, Nr1c7 ≠ 0, Pr1c7 ≠ sw, Pr1c7 ≠ se, Pr1c7 ≠ o, Pr1c8 ≠ o
N-single: Nr1c7 = 3
w[1]-adjacent-1-3-on-edge-in-r1{c6 c7} ==> Vr1c6 = 0
w[1]-3-in-r2c5-isolated-at-ne-corner ==> Hr2c5 = 1
w[1]-3-in-r1c4-hit-by-horiz-line-at-se ==> Vr2c5 = 0
w[1]-3-in-r2c5-closed-ne-corner ==> Pr3c5 ≠ ne
P-single: Pr3c5 = ew
P-single: Pr1c8 = sw
P-single: Pr1c7 = ew
w[1]-1-in-r1c6-asymmetric-ne-corner ==> Pr2c6 ≠ se, Pr2c6 ≠ ns
P-single: Pr2c6 = sw
no-vertical-line-r2{c4 c5} ==> Ir2c4 = out
horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
same-colour-in-r1{c4 c5} ==> Vr1c5 = 0
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
w[1]-3-in-r1c4-hit-by-horiz-line-at-ne ==> Hr2c4 = 1
w[1]-3-in-r1c4-closed-sw-corner ==> Pr1c5 ≠ sw
P-single: Pr1c5 = ew
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1

LOOP[56]: Vr6c6-Vr5c6-Hr5c5-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c4-Hr2c5-Vr2c6-Hr3c5-Hr3c4-Hr3c3-Hr3c2-Vr2c2-Hr2c2-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Hr7c2-Vr6c2-Vr5c2-Vr4c2-Hr4c2-Hr4c3-Vr4c4-Hr5c3-Vr5c3-Hr6c3-Hr6c4-Vr6c5-Hr7c4-Vr7c4-Hr8c4-Hr8c5- ==> Vr7c6 = 0
no-vertical-line-r7{c5 c6} ==> Ir7c6 = in
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1

LOOP[58]: Hr7c6-Vr6c6-Vr5c6-Hr5c5-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c4-Hr2c5-Vr2c6-Hr3c5-Hr3c4-Hr3c3-Hr3c2-Vr2c2-Hr2c2-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Hr7c2-Vr6c2-Vr5c2-Vr4c2-Hr4c2-Hr4c3-Vr4c4-Hr5c3-Vr5c3-Hr6c3-Hr6c4-Vr6c5-Hr7c4-Vr7c4-Hr8c4-Hr8c5-Hr8c6- ==> Vr7c7 = 0
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1

LOOP[60]: Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Vr7c4-Hr7c4-Vr6c5-Hr6c4-Hr6c3-Vr5c3-Hr5c3-Vr4c4-Hr4c3-Hr4c2-Vr4c2-Vr5c2-Vr6c2-Hr7c2-Vr7c3-Hr8c2-Hr8c1-Vr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Vr1c3-Hr2c2-Vr2c2-Hr3c2-Hr3c3-Hr3c4-Hr3c5-Vr2c6-Hr2c5-Hr2c4-Vr1c4-Hr1c4-Hr1c5-Hr1c6-Hr1c7-Vr1c8-Hr2c7-Vr2c7-Hr3c7-Vr3c8-Hr4c7-Hr4c6-Hr4c5-Vr4c5-Hr5c5-Vr5c6-Vr6c6-Hr7c6- ==> Hr7c7 = 0
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1

LOOP[62]: Vr6c7-Hr7c6-Vr6c6-Vr5c6-Hr5c5-Vr4c5-Hr4c5-Hr4c6-Hr4c7-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c4-Hr2c5-Vr2c6-Hr3c5-Hr3c4-Hr3c3-Hr3c2-Vr2c2-Hr2c2-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Hr7c2-Vr6c2-Vr5c2-Vr4c2-Hr4c2-Hr4c3-Vr4c4-Hr5c3-Vr5c3-Hr6c3-Hr6c4-Vr6c5-Hr7c4-Vr7c4-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8- ==> Hr6c7 = 1
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
same-colour-in-{r4 r5}c7 ==> Hr5c7 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXXXX
XOOOOXO
XXXXXXX
XOOXOOO
XOXXXOO
XOOOXOX
XXOXXXX

.———.———.   .———.———.———.———.
| 2     |   | 3       1     |
.   .———.   .———.———.   .———.
|   | 3       2   3 |   | 3
.   .———.———.———.———.   .———.
|                 2       3 |
.   .———.———.   .———.———.———.
|   |     3 |   |     1
.   .   .———.   .———.   .   .
|   |   | 3         |
.   .   .———.———.   .   .———.
|   | 2       3 | 2 |   | 2 |
.   .———.   .———.   .———.   .
|       |   | 3             |
.———.———.   .———.———.———.———.

init-time = 0.31s, solve-time = 8.89s, total-time = 9.2s
nb-facts=<Fact-94799>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
