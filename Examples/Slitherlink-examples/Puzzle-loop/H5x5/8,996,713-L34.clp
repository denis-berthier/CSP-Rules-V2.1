
(solve
5 5
3 . 2 . 3 
2 . 1 3 . 
2 3 . . 3 
2 2 . 3 . 
. . . 2 . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . 2 . 3
2 . 1 3 .
2 3 . . 3
2 2 . 3 .
. . . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.159111976623535
start solution 0.162222146987915
entering BRT
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3s-in-{r3c5...r4c4} ==> Vr3c6 = 1, Vr4c4 = 1, Hr5c4 = 1, Hr3c5 = 1, Vr2c6 = 0, Vr5c4 = 0, Hr5c3 = 0
w[1]-diagonal-3s-in-{r2c4...r3c5} ==> Vr2c4 = 1, Hr4c5 = 1, Hr2c4 = 1, Vr4c6 = 0, Vr1c4 = 0, Hr2c3 = 0
w[1]-2-in-r1c3-open-se-corner ==> Hr1c3 = 1, Vr1c3 = 1, Hr1c2 = 0
w[1]-diagonal-3s-in-{r1c5...r2c4} ==> Hr3c4 = 1, Vr3c4 = 0, Hr3c3 = 0
w[1]-3-in-r4c4-hit-by-horiz-line-at-ne ==> Vr3c5 = 0
w[1]-3-in-r3c5-hit-by-horiz-line-at-nw ==> Vr2c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r2{c3 c4} ==> Vr2c3 = 0
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
w[1]-3-in-r2c4-closed-sw-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r3c2-isolated-at-ne-corner ==> Vr3c3 = 1, Hr3c2 = 1
w[1]-3-in-r3c2-closed-ne-corner ==> Pr4c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ o
entering level Loop with <Fact-27625>
entering level Col with <Fact-27707>
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
no-vertical-line-r2{c4 c5} ==> Ir2c5 = out
vertical-line-r1{c2 c3} ==> Ir1c2 = out
vertical-line-r1{c5 c6} ==> Ir1c5 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne, Pr2c1 ≠ o
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
w[1]-3-in-r2c4-hit-by-horiz-line-at-ne ==> Vr1c5 = 0
w[1]-3-in-r1c5-closed-se-corner ==> Pr1c5 ≠ se, Pr1c5 ≠ o
different-colours-in-{r1 r2}c2 ==> Hr2c2 = 1
w[1]-2-in-r2c1-open-ne-corner ==> Hr3c1 = 1, Vr2c1 = 1, Vr3c1 = 0
w[1]-diagonal-3-2-in-{r3c2...r2c1}-non-closed-nw-corner ==> Hr4c2 = 1, Vr4c3 = 0, Hr4c3 = 0
w[1]-3-in-r4c4-isolated-at-nw-corner ==> Hr4c4 = 1
w[1]-3-in-r3c5-hit-by-horiz-line-at-sw ==> Vr4c5 = 0
w[1]-3-in-r4c4-closed-nw-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw
w[3]-adjacent-3-2-in-r3{c2 c1}-noline-west ==> Vr4c2 = 0
P-single: Pr2c1 = ns
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
vertical-line-r4{c3 c4} ==> Ir4c3 = in
no-vertical-line-r4{c2 c3} ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
Starting_init_links_with_<Fact-28227>
143 candidates, 1520 csp-links and 5497 links. Density = 54.14%
starting non trivial part of solution
Entering_level_W1_with_<Fact-42266>
whip[1]: Hr1c4{1 .} ==> Br1c4 ≠ esw, Br0c4 ≠ o, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s, Br1c4 ≠ w, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ sw
B-single: Br0c4 = s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ se, Br4c0 ≠ o, Pr5c1 ≠ se, Br4c1 ≠ ne, Br4c1 ≠ ns
P-single: Pr5c1 = ns
B-single: Br4c0 = e
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ e, Br5c1 ≠ n, Br5c1 ≠ o, Vr5c1 ≠ 0, Hr5c1 ≠ 1, Br4c1 ≠ sw, Br5c1 ≠ ne, Br5c1 ≠ swn
H-single: Hr5c1 = 0
V-single: Vr5c1 = 1
vertical-line-r5{c0 c1} ==> Ir5c1 = in
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
whip[1]: Hr5c1{0 .} ==> Pr5c2 ≠ ew
whip[1]: Pr5c2{se .} ==> Vr5c2 ≠ 0, Br4c2 ≠ ne, Br4c2 ≠ sw, Br5c1 ≠ sw, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ nes, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e, Br5c2 ≠ s
V-single: Vr5c2 = 1
B-single: Br5c1 = esw
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = out
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1

LOOP[34]: Hr5c4-Vr4c4-Hr4c4-Hr4c5-Vr3c6-Hr3c5-Hr3c4-Vr2c4-Hr2c4-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Vr1c3-Hr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Hr3c1-Hr3c2-Vr3c3-Hr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Vr5c3-Hr6c3-Hr6c4- ==> Vr5c5 = 1
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = out
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXXX
XXXOO
OOXXX
XXXOO
XOXXO

.———.   .———.———.———.
| 3 |   | 2       3 |
.   .———.   .———.———.
| 2       1 | 3
.———.———.   .———.———.
  2   3 |         3 |
.———.———.   .———.———.
| 2   2     | 3
.   .———.   .———.   .
|   |   |     2 |
.———.   .———.———.   .

init-time = 0.16s, solve-time = 1.3s, total-time = 1.46s
nb-facts=<Fact-43183>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
