
(solve
7 7
. . 2 1 3 . 3
. 2 . 2 . 2 . 
2 1 3 . . . 2
. . 3 . 3 . . 
2 . . 2 . . .
. 3 . 3 . . 2
3 . . . 3 . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 1 3 . 3
. 2 . 2 . 2 .
2 1 3 . . . 2
. . 3 . 3 . .
2 . . 2 . . .
. 3 . 3 . . 2
3 . . . 3 . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.299947023391724
start solution 0.305459976196289
entering BRT
w[1]-3-in-sw-corner ==> Vr7c1 = 1, Hr8c1 = 1
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-diagonal-3s-in-{r6c4...r7c5} ==> Vr7c6 = 1, Vr6c4 = 1, Hr8c5 = 1, Hr6c4 = 1, Vr5c4 = 0, Hr8c6 = 0, Hr6c3 = 0
w[1]-diagonal-3s-in-{r6c2...r7c1} ==> Vr6c3 = 1, Hr6c2 = 1, Vr5c3 = 0
w[1]-diagonal-3-2-3-in-{r1c5...r3c3} ==> Vr1c6 = 1, Vr3c3 = 1, Hr4c3 = 1, Hr1c5 = 1, Vr4c3 = 0, Hr4c2 = 0, Hr1c6 = 0
w[1]-diagonal-3-2-in-{r4c5...r5c4}-non-closed-sw-corner ==> Vr4c6 = 1, Hr4c5 = 1, Vr3c6 = 0, Hr4c6 = 0
w[1]-3-in-r4c3-hit-by-verti-line-at-nw ==> Vr4c4 = 1, Hr5c3 = 1
w[1]-2-in-r5c4-open-nw-corner ==> Vr5c5 = 1, Hr6c5 = 0, Vr6c5 = 0
w[1]-3-in-r6c4-hit-by-verti-line-at-ne ==> Hr7c4 = 1
w[1]-3-in-r3c3-hit-by-verti-line-at-se ==> Hr3c3 = 1
w[1]-2-in-r2c2-open-se-corner ==> Hr2c2 = 1, Vr2c2 = 1, Hr2c1 = 0, Vr1c2 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c4 c5} ==> Vr1c4 = 0, Hr2c4 = 0
w[1]-diagonal-3-2-in-{r3c3...r2c4}-non-closed-ne-corner ==> Vr2c5 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c2 c3} ==> Vr3c2 = 0
w[1]-3-in-r7c5-closed-se-corner ==> Pr7c5 ≠ se, Pr7c5 ≠ nw, Pr7c5 ≠ o
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r6c4-closed-sw-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ ne
w[1]-3-in-r4c3-closed-se-corner ==> Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o
w[1]-3-in-r4c3-closed-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ ne
w[1]-3-in-r3c3-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
diagonal-of-three-2s-in-nw-corner ==> Vr4c1 = 1, Hr1c4 = 1
w[1]-3-in-r1c5-hit-by-horiz-line-at-nw ==> Hr2c5 = 1
w[1]-2-in-r2c6-open-nw-corner ==> Hr3c6 = 1, Vr2c7 = 1, Hr3c7 = 0, Vr3c7 = 0
w[1]-2-in-r3c7-open-nw-corner ==> Hr4c7 = 1, Vr3c8 = 1, Vr4c8 = 0
w[1]-3-in-r1c5-closed-se-corner ==> Pr1c5 ≠ se, Pr1c5 ≠ o
w[1]-1-in-r3c2-asymmetric-se-corner ==> Pr3c2 ≠ ew, Pr3c2 ≠ ns
entering level Loop with <Fact-49436>
entering level Col with <Fact-49518>
no-vertical-line-r4{c7 c8} ==> Ir4c7 = out
horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
no-vertical-line-r3{c6 c7} ==> Ir3c6 = in
no-vertical-line-r3{c5 c6} ==> Ir3c5 = in
horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
vertical-line-r4{c5 c6} ==> Ir4c6 = in
horizontal-line-{r2 r3}c6 ==> Ir2c6 = out
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
vertical-line-r1{c5 c6} ==> Ir1c6 = out
vertical-line-r2{c6 c7} ==> Ir2c7 = in
vertical-line-r1{c7 c8} ==> Ir1c7 = in
vertical-line-r7{c0 c1} ==> Ir7c1 = in
vertical-line-r4{c0 c1} ==> Ir4c1 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
vertical-line-r7{c5 c6} ==> Ir7c5 = in
same-colour-in-{r1 r2}c7 ==> Hr2c7 = 0
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ o
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
w[0]-adjacent-3-in-r3c3-nolines-east ==> Vr2c4 = 1
w[1]-3-in-r4c5-isolated-at-nw-corner ==> Vr4c5 = 1
w[1]-3-in-r4c5-closed-nw-corner ==> Pr5c6 ≠ se, Pr5c6 ≠ nw, Pr5c6 ≠ o
vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-vertical-line-r3{c1 c2} ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
no-vertical-line-r2{c2 c3} ==> Ir2c3 = out
vertical-line-r2{c1 c2} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
vertical-line-r6{c2 c3} ==> Ir6c3 = in
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = in
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
no-vertical-line-r6{c4 c5} ==> Ir6c5 = out
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = out
vertical-line-r5{c4 c5} ==> Ir5c4 = in
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
w[1]-3-in-r6c4-hit-by-horiz-line-at-se ==> Vr7c5 = 0
w[1]-3-in-r7c5-closed-ne-corner ==> Pr8c5 ≠ ne, Pr8c5 ≠ o
no-vertical-line-r6{c5 c6} ==> Ir6c6 = out
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
w[1]-2-in-r5c1-open-ne-corner ==> Hr6c1 = 1, Vr5c1 = 1, Vr6c1 = 0
w[1]-diagonal-3-2-in-{r6c2...r5c1}-non-closed-nw-corner ==> Hr7c2 = 1, Vr7c3 = 0
w[1]-3-in-r7c1-hit-by-horiz-line-at-ne ==> Vr6c2 = 0
no-vertical-line-r6{c1 c2} ==> Ir6c1 = out
horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
w[1]-3-in-r7c1-hit-by-horiz-line-at-se ==> Hr7c1 = 1
w[1]-3-in-r6c2-hit-by-horiz-line-at-sw ==> Vr7c2 = 0
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ nw, Pr8c2 ≠ o
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1

LOOP[56]: Vr4c7-Hr4c7-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Vr2c7-Hr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Hr3c1-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c3-Hr5c2-Vr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Hr6c2-Vr6c3-Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Vr7c6-Hr7c5-Hr7c4-Vr6c4-Hr6c4-Vr5c5-Vr4c5-Hr4c5-Vr4c6- ==> Hr5c6 = 0
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
different-colours-in-{r5 r6}c6 ==> Hr6c6 = 1
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1

LOOP[58]: Hr6c6-Vr5c6-Vr4c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Hr7c5-Vr7c6-Hr8c5-Hr8c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr4c2-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Hr4c7-Vr4c7- ==> Vr5c7 = 0
no-vertical-line-r5{c6 c7} ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1

LOOP[60]: Vr5c8-Hr5c7-Vr4c7-Hr4c7-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Vr2c7-Hr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Hr3c1-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c3-Hr5c2-Vr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Hr6c2-Vr6c3-Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Vr7c6-Hr7c5-Hr7c4-Vr6c4-Hr6c4-Vr5c5-Vr4c5-Hr4c5-Vr4c6-Vr5c6-Hr6c6- ==> Hr6c7 = 0
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1

LOOP[62]: Vr6c7-Hr6c6-Vr5c6-Vr4c6-Hr4c5-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Hr7c5-Vr7c6-Hr8c5-Hr8c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Hr7c2-Vr6c3-Hr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr4c2-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Hr4c7-Vr4c7-Hr5c7-Vr5c8-Vr6c8- ==> Hr7c7 = 1
no-vertical-line-r7{c6 c7} ==> Ir7c7 = out
same-colour-in-{r7 r8}c7 ==> Hr8c7 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = Col

XXXXXOX
XOOXOOX
OOXXXXX
XOOXOXO
XXXXOXX
OOXOOOX
XXXXXOO

.———.———.———.———.———.   .———.
|         2   1   3 |   | 3 |
.   .———.———.   .———.   .   .
|   | 2     | 2 |     2 |   |
.———.   .———.   .———.———.   .
  2   1 | 3               2 |
.———.   .———.   .———.   .———.
|   |     3 |   | 3 |   |
.   .———.———.   .   .   .———.
| 2           2 |   |       |
.———.———.   .———.   .———.   .
      3 |   | 3         | 2 |
.———.———.   .———.———.   .———.
| 3               3 |
.———.———.———.———.———.   .   .

init-time = 0.31s, solve-time = 1.05s, total-time = 1.35s
nb-facts=<Fact-53795>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
