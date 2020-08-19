
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
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . . .
. 2 3 . 2
. 1 2 2 1
. 3 . 3 2
2 3 2 . .

start init-grid-structure 0.00416398048400879
start create-csp-variables
start create-labels 0.000403881072998047
start init-physical-csp-links 0.00279498100280762
start init-physical-non-csp-links 1.21976089477539
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.285046815872192
     start init-physical-BN-non-csp-links at local time 1.05943179130554
     start init-physical-BP-non-csp-links at local time 1.91721987724304
     end init-physical-BP-non-csp-links at local time 12.6978859901428
end init-physical-non-csp-links 13.9177269935608
start init-corner-B-c-values 13.9221329689026
start init-outer-B-candidates 13.9221849441528
start init-outer-I-candidates 13.9225571155548
start init-H-candidates 13.9232981204987
start init-V-candidates 13.9244101047516
start init-P-candidates 13.9255199432373
start init-inner-I-candidates 13.9273240566254
start init-inner-N-and-B-candidates 13.9280819892883
start solution 13.9310190677643
entering BRT
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
H-single: Hr1c1 = 1
V-single: Vr1c1 = 1
w[1]-2-in-sw-corner ==> Vr4c1 = 1, Hr6c2 = 1
H-single: Hr6c2 = 1
V-single: Vr4c1 = 1
w[1]-diagonal-3-2-2-3-in-{r1c1...r4c4} ==> Vr4c5 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
H-single: Hr5c5 = 0
V-single: Vr5c5 = 0
H-single: Hr5c4 = 1
V-single: Vr4c5 = 1
w[1]-diagonal-3-2s-in-{r2c3...r4c5}-non-closed-se-end ==> Vr4c6 = 1, Vr2c3 = 1, Hr2c3 = 1, Vr1c3 = 0, Hr2c2 = 0
H-single: Hr2c2 = 0
V-single: Vr1c3 = 0
H-single: Hr2c3 = 1
V-single: Vr2c3 = 1
V-single: Vr4c6 = 1
w[1]-diagonal-3-2s-in-{r4c4...r2c2}-non-closed-nw-end ==> Vr2c2 = 1
V-single: Vr2c2 = 1
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
w[1]-3-in-r2c3-closed-nw-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
w[1]-3-in-r4c2-symmetric-sw-corner ==> Vr4c2 = 1, Hr5c2 = 1
H-single: Hr5c2 = 1
V-single: Vr4c2 = 1
V-single: Vr5c2 = 0
H-single: Hr5c1 = 0
w[1]-2-in-r5c1-open-ne-corner ==> Hr6c1 = 1, Vr5c1 = 1
V-single: Vr5c1 = 1
H-single: Hr6c1 = 1
w[1]-3-in-r5c2-hit-by-horiz-line-at-sw ==> Vr5c3 = 1
V-single: Vr5c3 = 1
H-single: Hr6c3 = 0
V-single: Vr4c3 = 0
H-single: Hr5c3 = 0
w[1]-diagonal-3-2-in-{r4c4...r5c3}-non-closed-sw-corner ==> Hr4c4 = 1, Vr3c5 = 0, Hr4c5 = 0
H-single: Hr4c5 = 0
V-single: Vr3c5 = 0
H-single: Hr4c4 = 1
w[1]-diagonal-3-2-in-{r4c2...r5c3}-non-closed-se-corner ==> Vr5c4 = 1, Hr4c2 = 1, Vr3c2 = 0, Hr4c1 = 0
H-single: Hr4c1 = 0
V-single: Vr3c2 = 0
H-single: Hr4c2 = 1
V-single: Vr5c4 = 1
V-single: Vr4c4 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r3 r4}c2 ==> Vr3c3 = 0, Hr3c2 = 0
H-single: Hr3c2 = 0
V-single: Vr3c3 = 0
w[1]-diagonal-3-2-in-{r4c4...r3c3}-non-closed-nw-corner ==> Hr3c3 = 1
H-single: Hr3c3 = 1
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r5c2-closed-se-corner ==> Pr5c2 ≠ o
w[1]-3-in-r5c2-closed-ne-corner ==> Pr6c2 ≠ ne
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
P-single: Pr6c2 = ew
P-single: Pr5c2 = ne
P-single: Pr6c1 = ne
entering level Loop with <Fact-27771>
entering level Col with <Fact-27861>
vertical-line-r4{c5 c6} ==> Ir4c5 = in
I-single: Ir4c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
I-single: Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
I-single: Ir3c4 = in
horizontal-line-{r3 r4}c4 ==> Ir4c4 = out
I-single: Ir4c4 = out
no-vertical-line-r4{c3 c4} ==> Ir4c3 = out
I-single: Ir4c3 = out
no-vertical-line-r4{c2 c3} ==> Ir4c2 = out
I-single: Ir4c2 = out
vertical-line-r4{c1 c2} ==> Ir4c1 = in
I-single: Ir4c1 = in
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
I-single: Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
I-single: Ir3c3 = in
horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
I-single: Ir2c3 = out
vertical-line-r2{c2 c3} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
I-single: Ir1c3 = in
vertical-line-r2{c1 c2} ==> Ir2c1 = out
I-single: Ir2c1 = out
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
I-single: Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
I-single: Ir5c2 = in
vertical-line-r5{c2 c3} ==> Ir5c3 = out
I-single: Ir5c3 = out
vertical-line-r5{c3 c4} ==> Ir5c4 = in
I-single: Ir5c4 = in
no-vertical-line-r5{c4 c5} ==> Ir5c5 = in
I-single: Ir5c5 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
I-single: Ir1c1 = in
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
V-single: Vr1c2 = 0
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
H-single: Hr2c1 = 1
V-single: Vr2c1 = 0
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
V-single: Vr5c6 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
H-single: Hr6c5 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
H-single: Hr6c4 = 1
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
H-single: Hr3c1 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
H-single: Hr1c3 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
same-colour-in-r3{c3 c4} ==> Vr3c4 = 0
V-single: Vr3c4 = 0
w[1]-diagonal-3-2s-in-{r1c1...r3c3}-non-closed-se-end ==> Hr4c3 = 1
H-single: Hr4c3 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
V-single: Vr3c1 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
V-single: Vr3c6 = 1
Starting_init_links_with_<Fact-28322>
510 candidates, 1385 csp-links and 4970 links. Density = 3.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-41037>
whip[1]: Vr3c6{1 .} ==> Br3c5 ≠ w, Br3c6 ≠ o, Pr3c6 ≠ o, Pr3c6 ≠ nw, Br3c5 ≠ n, Br3c5 ≠ s
B-single: Br3c5 = e
H-single: Hr3c5 = 0
P-single: Pr3c6 = ns
V-single: Vr2c6 = 1
P-single: Pr4c6 = ns
P-single: Pr3c5 = nw
H-single: Hr3c4 = 1
V-single: Vr2c5 = 1
P-single: Pr4c5 = sw
B-single: Br3c6 = w

LOOP[6]: Vr2c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3- ==> Hr2c4 = 0
H-single: Hr2c4 = 0
horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
I-single: Ir2c4 = out
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = out
I-single: Ir1c4 = out
vertical-line-r2{c4 c5} ==> Ir2c5 = in
I-single: Ir2c5 = in
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
H-single: Hr1c4 = 0
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1
V-single: Vr1c4 = 1
V-single: Vr2c4 = 0

LOOP[34]: Vr2c5-Hr3c4-Hr3c3-Vr2c3-Hr2c3-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Hr6c2-Vr5c3-Hr5c2-Vr4c2-Hr4c2-Hr4c3-Hr4c4-Vr4c5-Hr5c4-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Vr4c6-Vr3c6-Vr2c6- ==> Hr2c5 = 1
H-single: Hr2c5 = 1
V-single: Vr1c5 = 0
V-single: Vr1c6 = 0
no-vertical-line-r1{c5 c6} ==> Ir1c5 = out
I-single: Ir1c5 = out
same-colour-in-{r0 r1}c5 ==> Hr1c5 = 0
H-single: Hr1c5 = 0
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

init-time = 13.93s, solve-time = 3.5s, total-time = 17.43s
nb-facts=<Fact-41963>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

