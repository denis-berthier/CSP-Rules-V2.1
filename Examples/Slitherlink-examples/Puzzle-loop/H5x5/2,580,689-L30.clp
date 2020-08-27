
(solve
5 5
2 3 2 2 3
. . 3 2 .
. 2 . . .
. . 3 . 3
. 2 . 2 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 3 2 2 3
. . 3 2 .
. 2 . . .
. . 3 . 3
. 2 . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.172418117523193
start solution 0.175181150436401
entering BRT
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3s-in-{r1c2...r2c3} ==> Vr2c4 = 1, Vr1c2 = 1, Hr3c3 = 1, Vr3c4 = 0, Hr3c4 = 0, Hr1c1 = 0
w[1]-3-in-r2c3-closed-se-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ sw
w[1]-3-in-r1c2-asymmetric-sw-corner ==> Vr1c3 = 1, Hr1c3 = 0
w[1]-3-in-r2c3-hit-by-verti-line-at-nw ==> Hr2c2 = 0
w[5]-diagonal-3-2-in-se-corner ==> Hr4c5 = 0
w[3]-adjacent-3-2-in-{r2 r1}c3-noline-north ==> Hr2c4 = 0
P-single: Pr2c2 = nw
P-single: Pr1c1 = o
entering level Loop with <Fact-27584>
entering level Col with <Fact-27662>
vertical-line-r1{c5 c6} ==> Ir1c5 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
vertical-line-r1{c2 c3} ==> Ir1c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
vertical-line-r1{c1 c2} ==> Ir1c1 = out
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
Starting_init_links_with_<Fact-27719>
228 candidates, 1777 csp-links and 7155 links. Density = 27.65%
starting non trivial part of solution
Entering_level_W1_with_<Fact-45588>
whip[1]: Vr1c1{0 .} ==> Br1c1 ≠ nw, Br1c0 ≠ e, Pr2c1 ≠ ns
P-single: Pr2c1 = se
B-single: Br1c0 = o
B-single: Br1c1 = se
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ w, Br2c1 ≠ s, Br2c1 ≠ e, Br2c1 ≠ n, Br2c1 ≠ o, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ nes
whip[1]: Br2c1{wne .} ==> Pr3c1 ≠ o, Pr3c1 ≠ se, Pr3c2 ≠ nw, Nr2c1 ≠ 0, Nr2c1 ≠ 1
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ s, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ o, Br3c1 ≠ e
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Br1c1{se .} ==> Pr1c2 ≠ ew
P-single: Pr1c2 = se
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ esw, Br1c2 ≠ nes
whip[1]: Vr2c2{0 .} ==> Br2c2 ≠ wne, Pr3c2 ≠ ne, Pr3c2 ≠ ns, Br2c1 ≠ wne, Br2c2 ≠ w, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn
whip[1]: Pr2c2{nw .} ==> Br2c2 ≠ nes, Br2c2 ≠ n, Br1c2 ≠ swn, Br2c2 ≠ ne, Br2c2 ≠ ns
B-single: Br1c2 = wne
whip[1]: Br1c2{wne .} ==> Pr2c3 ≠ ew, Pr1c3 ≠ ew
P-single: Pr1c3 = sw
P-single: Pr2c3 = ns
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ ns, Br1c3 ≠ ne, Br1c3 ≠ nw, Br1c3 ≠ se
whip[1]: Br1c3{sw .} ==> Pr1c4 ≠ ew
w[1]-3-in-r2c3-asymmetric-ne-corner ==> Vr2c3 = 1, Vr3c3 = 0, Hr3c2 = 0
w[1]-2-in-r3c2-open-ne-corner ==> Hr4c2 = 1, Vr3c2 = 1, Hr4c1 = 0, Vr4c2 = 0
w[1]-diagonal-3-2-in-{r4c3...r3c2}-non-closed-nw-corner ==> Vr4c4 = 1, Hr5c3 = 1, Vr5c4 = 0, Hr5c4 = 0
w[1]-2-in-r5c4-open-nw-corner ==> Hr6c4 = 1, Vr5c5 = 1, Hr6c5 = 0
w[1]-diagonal-3-2-in-{r4c5...r5c4}-non-closed-sw-corner ==> Vr4c6 = 1, Vr3c6 = 0
w[1]-3-in-r1c2-hit-by-verti-line-at-se ==> Hr2c3 = 0
P-single: Pr2c5 = se
P-single: Pr1c4 = se
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
vertical-line-r2{c3 c4} ==> Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
vertical-line-r3{c1 c2} ==> Ir3c1 = out
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
no-vertical-line-r4{c1 c2} ==> Ir4c2 = out
no-vertical-line-r3{c5 c6} ==> Ir3c5 = out
horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = out
vertical-line-r5{c4 c5} ==> Ir5c4 = in
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
vertical-line-r4{c3 c4} ==> Ir4c4 = in
same-colour-in-r4{c4 c5} ==> Vr4c5 = 0
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
w[0]-adjacent-3-in-r4c5-nolines-west ==> Vr3c5 = 1, Hr5c5 = 1, Vr5c6 = 0
w[1]-3-in-r4c5-closed-se-corner ==> Pr4c5 ≠ se, Pr4c5 ≠ nw, Pr4c5 ≠ o
w[1]-3-in-r4c3-isolated-at-ne-corner ==> Hr4c3 = 1
w[1]-3-in-r4c3-closed-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
same-colour-in-r4{c2 c3} ==> Vr4c3 = 0
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
same-colour-in-r4{c0 c1} ==> Vr4c1 = 0
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
same-colour-in-r1{c4 c5} ==> Vr1c5 = 0
w[1]-2-in-r1c4-open-se-corner ==> Hr1c4 = 1, Vr1c4 = 1
w[1]-3-in-r1c5-hit-by-horiz-line-at-nw ==> Hr2c5 = 1
w[1]-3-in-r1c5-closed-se-corner ==> Pr1c5 ≠ se
P-single: Pr1c5 = ew
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
same-colour-in-{r2 r3}c5 ==> Hr3c5 = 0
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1

LOOP[28]: Hr5c3-Vr4c4-Hr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Vr2c3-Hr3c3-Vr2c4-Vr1c4-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Vr3c5-Hr4c5-Vr4c6-Hr5c5-Vr5c5-Hr6c4-Hr6c3- ==> Vr5c3 = 0
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1

LOOP[30]: Hr5c2-Hr5c3-Vr4c4-Hr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Vr2c3-Hr3c3-Vr2c4-Vr1c4-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Vr3c5-Hr4c5-Vr4c6-Hr5c5-Vr5c5-Hr6c4-Hr6c3-Hr6c2- ==> Vr5c2 = 1
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = out
same-colour-in-r5{c0 c1} ==> Vr5c1 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXX
XXOXO
OXXXO
OOOXX
OXXXO

.   .———.   .———.———.
  2 | 3 | 2 | 2   3 |
.———.   .   .   .———.
|       | 3 | 2 |
.———.   .———.   .   .
    | 2         |
.   .———.———.   .———.
          3 |     3 |
.   .———.———.   .———.
    | 2       2 |
.   .———.———.———.   .

init-time = 0.18s, solve-time = 1.87s, total-time = 2.05s
nb-facts=<Fact-46861>
Quasi-Loop max length = 30
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

