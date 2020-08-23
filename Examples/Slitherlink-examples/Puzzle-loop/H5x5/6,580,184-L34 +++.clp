
(solve
5 5
3 . . . .
. . . . 3
2 . 2 . .
. 3 . . .
3 1 2 . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . . .
. . . . 3
2 . 2 . .
. 3 . . .
3 1 2 . 3

start init-grid-structure 0.00372195243835449
start create-csp-variables
start create-labels 0.000422000885009766
start init-physical-csp-links 0.00280308723449707
start init-physical-non-csp-links 1.01009798049927
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.241291999816895
     start init-physical-BN-non-csp-links at local time 0.921255826950073
     start init-physical-BP-non-csp-links at local time 1.69405603408813
     end init-physical-BP-non-csp-links at local time 11.6976778507233
end init-physical-non-csp-links 12.7078220844269
start init-corner-B-c-values 12.7117640972137
start init-outer-B-candidates 12.7118101119995
start init-outer-I-candidates 12.7122120857239
start init-H-candidates 12.7124559879303
start init-V-candidates 12.7134480476379
start init-P-candidates 12.7145321369171
start init-inner-I-candidates 12.7160699367523
start init-inner-N-and-B-candidates 12.7166681289673
start solution 12.7199149131775
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3s-in-{r4c2...r5c1} ==> Vr4c3 = 1, Hr4c2 = 1, Vr3c3 = 0, Hr4c3 = 0
w[1]-2-in-r3c3-open-sw-corner ==> Hr3c3 = 1, Vr3c4 = 1, Hr3c4 = 0, Vr2c4 = 0
w[1]-adjacent-1-3-on-edge-in-r5{c2 c1} ==> Vr5c3 = 0, Hr5c2 = 0
w[1]-adjacent-1-2-on-edge-backward-diagonal-2s-3-in-r5{c2 c3}...r4c2 ==> Vr4c2 = 1
w[1]-2-in-r3c1-open-se-corner ==> Hr3c1 = 1, Vr3c1 = 1, Vr2c1 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r4c2-closed-nw-corner ==> Pr5c3 ≠ nw, Pr5c3 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
entering level Loop with <Fact-27643>
entering level Col with <Fact-27721>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
vertical-line-r3{c0 c1} ==> Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
vertical-line-r4{c2 c3} ==> Ir4c2 = out
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
vertical-line-r4{c1 c2} ==> Ir4c1 = in
vertical-line-r3{c3 c4} ==> Ir3c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
no-vertical-line-r2{c3 c4} ==> Ir2c3 = out
horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
vertical-line-r1{c0 c1} ==> Ir1c1 = in
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r5 r4}c2 ==> Hr6c2 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
w[1]-3-in-r5c1-hit-by-verti-line-at-nw ==> Vr5c2 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
same-colour-in-{r5 r6}c3 ==> Hr6c3 = 0
w[1]-2-in-r5c3-open-sw-corner ==> Hr5c3 = 1, Vr5c4 = 1, Hr5c4 = 0, Vr4c4 = 0
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
same-colour-in-r5{c4 c5} ==> Vr5c5 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
w[1]-3-in-r5c5-hit-by-horiz-line-at-sw ==> Hr5c5 = 1
w[1]-3-in-r5c5-closed-ne-corner ==> Pr6c5 ≠ ne, Pr6c5 ≠ o
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
w[1]-3-in-r2c5-isolated-at-sw-corner ==> Vr2c5 = 1, Hr3c5 = 1
w[1]-3-in-r2c5-closed-sw-corner ==> Pr2c6 ≠ sw, Pr2c6 ≠ o

LOOP[20]: Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr3c4-Hr3c3- ==> Hr3c2 = 0
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
vertical-line-r2{c4 c5} ==> Ir2c5 = in
horizontal-line-{r2 r3}c5 ==> Ir3c5 = out
same-colour-in-r3{c5 c6} ==> Vr3c6 = 0
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
w[1]-3-in-r2c5-closed-se-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
different-colours-in-r2{c2 c3} ==> Hr2c3 = 1
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1

LOOP[26]: Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr3c4-Hr3c3-Vr2c3- ==> Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1

LOOP[28]: Hr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr3c4-Hr3c3-Vr2c3-Hr2c3- ==> Vr1c4 = 0
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1

LOOP[34]: Hr1c5-Vr1c6-Vr2c6-Hr3c5-Vr2c5-Hr2c4-Hr2c3-Vr2c3-Hr3c3-Vr3c4-Hr4c4-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Hr6c4-Vr5c4-Hr5c3-Vr4c3-Hr4c2-Vr4c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Vr3c1-Hr3c1-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3- ==> Hr1c4 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = Col

XXXXX
OXOOX
XXXOO
XOXXO
XOOXX

.———.———.———.———.———.
| 3                 |
.———.   .———.———.   .
    |   |       | 3 |
.———.   .———.   .———.
| 2       2 |
.   .———.   .———.   .
|   | 3 |       |
.   .   .———.   .———.
| 3 | 1   2 |     3 |
.———.   .   .———.———.

init-time = 12.72s, solve-time = 2.73s, total-time = 15.45s
nb-facts=<Fact-28644>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
