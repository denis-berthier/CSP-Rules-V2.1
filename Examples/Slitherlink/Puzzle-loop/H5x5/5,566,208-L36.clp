
(solve
5 5
3 . . 3 .
. . . . .
3 . . 2 1
. 2 3 . .
. 1 3 2 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . 3 .
. . . . .
3 . . 2 1
. 2 3 . .
. 1 3 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.147392988204956
start solution 0.150120973587036
entering BRT
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3-2-3-in-{r3c1...r5c3} ==> Vr5c4 = 1, Vr3c1 = 1, Hr6c3 = 1, Hr3c1 = 1, Vr2c1 = 0, Hr6c4 = 0
w[1]-diagonal-3-2-in-{r4c3...r5c4}-non-closed-se-corner ==> Vr5c5 = 1, Vr4c3 = 1, Hr4c3 = 1, Vr3c3 = 0, Hr4c2 = 0
w[1]-diagonal-3-2-in-{r5c3...r4c2}-non-closed-nw-corner ==> Vr4c2 = 1
w[1]-3-in-r5c3-hit-by-verti-line-at-nw ==> Hr5c2 = 0
w[1]-3-in-r4c3-hit-by-verti-line-at-se ==> Hr5c4 = 0
w[1]-adjacent-1-3-on-edge-in-r5{c2 c3} ==> Vr5c2 = 0
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
adjacent-3s-in-c3{r4 r5} ==> Hr5c3 = 1
w[1]-3-in-r4c3-closed-sw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
w[1]-3-in-r5c3-closed-ne-corner ==> Pr6c3 ≠ ne, Pr6c3 ≠ o
entering level Loop with <Fact-27625>
entering level Col with <Fact-27705>
vertical-line-r3{c0 c1} ==> Ir3c1 = in
horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
vertical-line-r1{c0 c1} ==> Ir1c1 = in
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
no-vertical-line-r4{c3 c4} ==> Ir4c3 = out
vertical-line-r4{c2 c3} ==> Ir4c2 = in
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
vertical-line-r4{c1 c2} ==> Ir4c1 = out
vertical-line-r5{c4 c5} ==> Ir5c5 = in
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
same-colour-in-r4{c0 c1} ==> Vr4c1 = 0
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
w[1]-3-in-r3c1-closed-sw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
Starting_init_links_with_<Fact-27919>
223 candidates, 1822 csp-links and 7123 links. Density = 28.78%
starting non trivial part of solution
Entering_level_W1_with_<Fact-45814>
whip[1]: Hr2c1{1 .} ==> Br2c1 ≠ esw, Br2c1 ≠ o, Pr2c1 ≠ o, Pr2c1 ≠ ns, Pr2c2 ≠ ne, Pr2c2 ≠ ns, Br1c1 ≠ wne, Br2c1 ≠ e, Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ sw
B-single: Br1c1 = swn
whip[1]: Br1c1{swn .} ==> Pr2c1 ≠ se, Pr1c2 ≠ se, Pr1c1 ≠ o, Vr1c2 ≠ 1
V-single: Vr1c2 = 0
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
P-single: Pr2c1 = ne
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
whip[1]: Vr1c2{0 .} ==> Br1c2 ≠ w, Br1c2 ≠ nw, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ wne
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ s, Br1c2 ≠ e, Br1c2 ≠ o, Br1c2 ≠ se
whip[1]: Br1c2{nes .} ==> Pr1c3 ≠ o, Pr1c3 ≠ se, Nr1c2 ≠ 0
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr2c1{ne .} ==> Br2c1 ≠ nw, Br2c1 ≠ swn, Br2c1 ≠ wne
whip[1]: Br2c1{nes .} ==> Pr3c1 ≠ ne, Pr3c1 ≠ ns, Nr2c1 ≠ 0
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ esw, Br3c1 ≠ nes
whip[1]: Br3c1{wne .} ==> Pr3c1 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ se, Pr3c2 ≠ ns, Pr3c2 ≠ se
P-single: Pr3c1 = se
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ n, Br2c1 ≠ ne
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 1
whip[1]: Pr3c2{ew .} ==> Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br3c1 ≠ wne, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br2c2 ≠ o, Br2c2 ≠ n, Br2c2 ≠ e, Br2c2 ≠ ne, Br3c2 ≠ w
B-single: Br3c1 = swn
whip[1]: Br3c1{swn .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ ne, Pr4c1 ≠ ns
P-single: Pr4c1 = ne
whip[1]: Pr4c1{ne .} ==> Br4c1 ≠ o, Br4c1 ≠ e, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ wne
whip[1]: Br4c1{nes .} ==> Pr5c1 ≠ ne, Pr5c1 ≠ ns, Nr4c1 ≠ 0
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ sw, Br5c1 ≠ esw, Br5c1 ≠ n
whip[1]: Br5c1{swn .} ==> Pr6c2 ≠ nw, Nr5c1 ≠ 2
whip[1]: Pr6c2{ew .} ==> Br5c2 ≠ w
whip[1]: Br5c2{s .} ==> Pr6c2 ≠ ne, Pr5c2 ≠ ns, Pr6c3 ≠ nw, Pr5c2 ≠ se, Pr5c3 ≠ sw
P-single: Pr6c3 = ew
w[1]-1-in-r5c2-asymmetric-se-corner ==> Pr5c2 ≠ ew
P-single: Pr5c2 = nw
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ e, Br5c2 ≠ n, Br6c3 ≠ o, Br6c2 ≠ o, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne
B-single: Br5c3 = nes
B-single: Br6c2 = n
B-single: Br6c3 = n
B-single: Br5c2 = s
whip[1]: Br5c3{nes .} ==> Pr5c4 ≠ ew, Pr5c4 ≠ ns, Pr5c4 ≠ ne, Pr5c3 ≠ ns, Pr6c4 ≠ ew
P-single: Pr6c4 = nw
P-single: Pr5c4 = sw
whip[1]: Pr6c4{nw .} ==> Br6c4 ≠ n, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ sw
B-single: Br6c4 = o
whip[1]: Br6c4{o .} ==> Pr6c5 ≠ ew
P-single: Pr6c5 = ne
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ n, Br5c5 ≠ o, Br6c5 ≠ o, Br5c4 ≠ nw, Br5c5 ≠ w, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ nes
B-single: Br5c5 = esw
B-single: Br5c4 = ew
B-single: Br6c5 = n
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 2, Nr5c5 ≠ 1, Nr5c5 ≠ 0, Pr5c5 ≠ ew, Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c6 ≠ sw, Pr5c6 ≠ nw, Pr5c6 ≠ o, Pr6c6 ≠ o, Hr5c5 ≠ 1
H-single: Hr5c5 = 0
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
P-single: Pr5c6 = ns
P-single: Pr5c5 = ns
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1

LOOP[6]: Vr4c5-Vr5c5-Hr6c5-Vr5c6-Vr4c6- ==> Hr4c5 = 0
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
whip[1]: Hr5c5{0 .} ==> Br4c5 ≠ s, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ nes
whip[1]: Pr5c6{ns .} ==> Br4c5 ≠ n, Br4c5 ≠ o, Br4c5 ≠ w, Br4c5 ≠ nw
whip[1]: Br4c5{wne .} ==> Pr4c6 ≠ o, Pr4c6 ≠ nw, Nr4c5 ≠ 0
w[1]-1-in-r3c5-asymmetric-se-corner ==> Pr3c5 ≠ ew, Pr3c5 ≠ ns
whip[1]: Pr3c5{se .} ==> Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c5 ≠ ne, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br3c4 ≠ ne, Br3c4 ≠ sw, Br2c4 ≠ e, Br2c4 ≠ s, Br2c5 ≠ o, Br2c5 ≠ n, Br2c5 ≠ e, Br3c5 ≠ n, Br3c5 ≠ w
whip[1]: Br3c5{s .} ==> Hr3c5 ≠ 1, Vr3c5 ≠ 1, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr3c6 ≠ nw, Pr3c6 ≠ sw, Pr3c5 ≠ se, Pr4c5 ≠ nw
V-single: Vr3c5 = 0
H-single: Hr3c5 = 0
w[1]-diagonal-3-2-in-{r4c3...r3c4}-non-closed-ne-corner ==> Hr3c4 = 1
P-single: Pr3c5 = nw
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
w[1]-3-in-r1c4-hit-by-verti-line-at-se ==> Vr1c4 = 1, Hr1c4 = 1, Hr2c5 = 0
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
vertical-line-r1{c3 c4} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
same-colour-in-r1{c4 c5} ==> Vr1c5 = 0
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
w[1]-3-in-r1c4-hit-by-horiz-line-at-ne ==> Hr2c4 = 1
w[1]-3-in-r1c4-closed-sw-corner ==> Pr1c5 ≠ sw, Pr1c5 ≠ o
no-vertical-line-r2{c3 c4} ==> Ir2c3 = out
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1

LOOP[6]: Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1- ==> Hr2c2 = 0
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
same-colour-in-{r2 r3}c2 ==> Hr3c2 = 0
w[0]-adjacent-3-in-r3c1-nolines-east ==> Vr2c2 = 1
different-colours-in-r2{c2 c3} ==> Hr2c3 = 1

LOOP[22]: Hr3c3-Vr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Hr4c1-Vr4c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Vr5c4-Hr5c3-Vr4c3-Hr4c3- ==> Vr3c4 = 0
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1

LOOP[36]: Vr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c4-Vr2c5-Hr3c4-Hr3c3-Vr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Hr4c1-Vr4c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Vr5c4-Hr5c3-Vr4c3-Hr4c3-Hr4c4-Vr4c5-Vr5c5-Hr6c5-Vr5c6-Vr4c6-Vr3c6- ==> Vr2c6 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXX
OXOOX
XXXXX
OXOOX
XXXOX

.———.———.   .———.———.
| 3     |   | 3     |
.———.   .   .———.   .
    |   |       |   |
.———.   .———.———.   .
| 3           2   1 |
.———.   .———.———.   .
    | 2 | 3     |   |
.———.   .———.   .   .
|     1   3 | 2 |   |
.———.———.———.   .———.

init-time = 0.15s, solve-time = 1.91s, total-time = 2.06s
nb-facts=<Fact-47080>
Quasi-Loop max length = 36
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
