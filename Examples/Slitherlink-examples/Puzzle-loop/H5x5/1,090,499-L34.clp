
(solve
5 5
3 . . . .
. 2 3 . 2
. 1 2 2 1
. 3 . 3 2
2 3 2 . .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . . .
. 2 3 . 2
. 1 2 2 1
. 3 . 3 2
2 3 2 . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.167620182037354
start solution 0.171121120452881
entering BRT
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-2-in-sw-corner ==> Vr4c1 = 1, Hr6c2 = 1
w[1]-diagonal-3-2s-3-in-{r1c1...r4c4} ==> Vr4c5 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
w[1]-diagonal-3-2s-in-{r2c3...r4c5}-non-closed-se-end ==> Vr4c6 = 1, Vr2c3 = 1, Hr2c3 = 1, Vr1c3 = 0, Hr2c2 = 0
w[1]-diagonal-3-2s-in-{r4c4...r2c2}-non-closed-nw-end ==> Vr2c2 = 1
w[1]-adjacent-1-2-on-edge-in-{r3 r4}c5-bkwd-diag-2s-3...r2c3 ==> Vr5c6 = 1
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
w[1]-3-in-r2c3-closed-nw-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
w[1]-3-in-r4c2-symmetric-sw-corner ==> Vr4c2 = 1, Hr5c2 = 1
w[1]-2-in-r5c1-open-ne-corner ==> Hr6c1 = 1, Vr5c1 = 1
w[1]-3-in-r5c2-hit-by-horiz-line-at-sw ==> Vr5c3 = 1
w[1]-diagonal-3-2-in-{r4c4...r5c3}-non-closed-sw-corner ==> Hr4c4 = 1, Vr3c5 = 0, Hr4c5 = 0
w[1]-diagonal-3-2-in-{r4c2...r5c3}-non-closed-se-corner ==> Vr5c4 = 1, Hr4c2 = 1, Vr3c2 = 0, Hr4c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r3 r4}c2 ==> Vr3c3 = 0, Hr3c2 = 0
w[1]-diagonal-3-2-in-{r4c4...r3c3}-non-closed-nw-corner ==> Hr3c3 = 1
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r5c2-closed-se-corner ==> Pr5c2 ≠ o
w[1]-3-in-r5c2-closed-ne-corner ==> Pr6c2 ≠ ne
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
P-single: Pr6c2 = ew
P-single: Pr5c2 = ne
P-single: Pr6c1 = ne
entering level Loop with <Fact-27776>
entering level Col with <Fact-27866>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
vertical-line-r5{c3 c4} ==> Ir5c3 = out
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
no-vertical-line-r4{c2 c3} ==> Ir4c2 = out
vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
vertical-line-r2{c1 c2} ==> Ir2c1 = out
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
vertical-line-r4{c4 c5} ==> Ir4c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
same-colour-in-r3{c3 c4} ==> Vr3c4 = 0
w[1]-diagonal-3-2s-in-{r1c1...r3c3}-non-closed-se-end ==> Hr4c3 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
Starting_init_links_with_<Fact-28326>
121 candidates, 1385 csp-links and 4970 links. Density = 68.46%
starting non trivial part of solution
Entering_level_W1_with_<Fact-41041>
whip[1]: Hr6c5{1 .} ==> Br5c5 ≠ nw, Br6c5 ≠ o, Br5c5 ≠ o, Pr6c6 ≠ o, Pr6c5 ≠ o, Pr6c5 ≠ nw, Br5c5 ≠ n, Br5c5 ≠ w
P-single: Pr6c6 = nw
B-single: Br6c5 = n
whip[1]: Br5c5{nes .} ==> Pr5c5 ≠ se, Nr5c5 ≠ 0, Nr5c5 ≠ 1
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ sw, Br5c4 ≠ sw, Br5c4 ≠ wne, Br5c4 ≠ nes, Br4c5 ≠ ne, Br5c4 ≠ o, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ ne
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 0
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ esw, Br5c4 ≠ n
whip[1]: Hr6c4{1 .} ==> Br5c4 ≠ ew, Br6c4 ≠ o, Pr6c5 ≠ ne, Br5c4 ≠ e
P-single: Pr6c5 = ew
B-single: Br6c4 = n
whip[1]: Pr6c5{ew .} ==> Br5c5 ≠ esw
whip[1]: Br5c5{nes .} ==> Pr5c5 ≠ ns
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ wne
whip[1]: Br4c4{nes .} ==> Pr4c5 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ nw
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ esw, Br4c4 ≠ swn, Br5c3 ≠ sw, Br4c3 ≠ e, Br4c3 ≠ ne, Br5c3 ≠ ne
B-single: Br4c4 = nes
whip[1]: Br4c4{nes .} ==> Pr5c5 ≠ ew, Pr4c5 ≠ ew, Pr4c5 ≠ ns, Pr4c4 ≠ ns
P-single: Pr4c4 = ew
P-single: Pr4c5 = sw
P-single: Pr5c5 = nw
w[1]-1-in-r3c5-symmetric-sw-corner ==> Pr3c6 ≠ sw, Pr3c6 ≠ o
whip[1]: Pr4c4{ew .} ==> Br4c3 ≠ w, Br4c3 ≠ s, Br4c3 ≠ o, Br3c4 ≠ ne, Br3c3 ≠ ne, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ sw, Br4c3 ≠ sw
whip[1]: Br4c3{swn .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ nw, Nr4c3 ≠ 0
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ sw, Br4c2 ≠ wne, Br4c2 ≠ nes, Br3c2 ≠ e
B-single: Br3c3 = ns
whip[1]: Br3c3{ns .} ==> Pr3c4 ≠ ns, Pr3c3 ≠ ns, Pr3c3 ≠ sw
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, Br2c4 ≠ w, Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Vr2c4 ≠ 1, Hr3c4 ≠ 0, Br2c3 ≠ esw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br3c4 ≠ se
H-single: Hr3c4 = 1
V-single: Vr2c4 = 0
B-single: Br3c4 = ns
B-single: Br2c3 = swn
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
whip[1]: Hr3c4{1 .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ se
whip[1]: Pr3c5{ew .} ==> Br2c5 ≠ sw, Br2c5 ≠ ne, Br3c5 ≠ w
whip[1]: Br3c5{s .} ==> Pr4c6 ≠ nw
P-single: Pr4c6 = ns
w[1]-1-in-r3c5-asymmetric-se-corner ==> Pr3c5 ≠ ew
P-single: Pr3c5 = nw
whip[1]: Pr4c6{ns .} ==> Br3c5 ≠ n, Br3c5 ≠ s, Br4c5 ≠ ns, Br4c5 ≠ nw
B-single: Br3c5 = e
whip[1]: Br3c5{e .} ==> Hr3c5 ≠ 1, Pr3c6 ≠ nw
H-single: Hr3c5 = 0
P-single: Pr3c6 = ns
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1

LOOP[6]: Vr2c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3- ==> Hr2c4 = 0
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = out
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1

LOOP[34]: Vr2c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Hr6c2-Vr5c3-Hr5c2-Vr4c2-Hr4c2-Hr4c3-Hr4c4-Vr4c5-Hr5c4-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Vr4c6-Vr3c6-Vr2c6- ==> Hr2c5 = 1
no-vertical-line-r1{c5 c6} ==> Ir1c5 = out
same-colour-in-{r0 r1}c5 ==> Hr1c5 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXOO
OXOOX
XXXXX
XOOOX
XXOXX

.———.———.———.   .   .
| 3         |
.———.   .———.   .———.
    | 2 | 3     | 2 |
.———.   .———.———.   .
|     1   2   2   1 |
.   .———.———.———.   .
|   | 3       3 | 2 |
.   .———.   .———.   .
| 2   3 | 2 |       |
.———.———.   .———.———.

init-time = 0.17s, solve-time = 1.14s, total-time = 1.31s
nb-facts=<Fact-42144>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

