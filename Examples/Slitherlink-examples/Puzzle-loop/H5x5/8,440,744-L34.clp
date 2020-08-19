
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
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . 2 .
. 1 2 1 .
. . 3 1 3
. 2 3 1 .
3 . . . 3

start init-grid-structure 0.00400686264038086
start create-csp-variables
start create-labels 0.000422000885009766
start init-physical-csp-links 0.00283408164978027
start init-physical-non-csp-links 1.20356702804565
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.304202079772949
     start init-physical-BN-non-csp-links at local time 1.10205101966858
     start init-physical-BP-non-csp-links at local time 1.92291498184204
     end init-physical-BP-non-csp-links at local time 13.1680421829224
end init-physical-non-csp-links 14.3716509342194
start init-corner-B-c-values 14.3758778572083
start init-outer-B-candidates 14.3759219646454
start init-outer-I-candidates 14.3761999607086
start init-H-candidates 14.3764588832855
start init-V-candidates 14.3771770000458
start init-P-candidates 14.377879858017
start init-inner-I-candidates 14.3798828125
start init-inner-N-and-B-candidates 14.380539894104
start solution 14.3836741447449
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
H-single: Hr6c5 = 1
V-single: Vr5c6 = 1
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
w[1]-diagonal-3-2-3-in-{r3c3...r5c1} ==> Vr3c4 = 1, Hr3c3 = 1, Vr2c4 = 0, Hr3c4 = 0
H-single: Hr3c4 = 0
V-single: Vr2c4 = 0
H-single: Hr3c3 = 1
V-single: Vr3c4 = 1
w[1]-3-in-r4c3-hit-by-verti-line-at-ne ==> Vr4c3 = 1, Hr5c3 = 1, Hr4c4 = 0
H-single: Hr4c4 = 0
H-single: Hr5c3 = 1
V-single: Vr4c3 = 1
V-single: Vr5c3 = 0
H-single: Hr5c2 = 0
w[1]-diagonal-3-2-in-{r3c3...r4c2}-non-closed-sw-corner ==> Vr4c2 = 1
V-single: Vr4c2 = 1
w[1]-3-in-r3c3-hit-by-verti-line-at-sw ==> Hr4c2 = 0
H-single: Hr4c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c4 c3} ==> Vr3c5 = 0
V-single: Vr3c5 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r4c3-closed-sw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
adjacent-3s-in-c3{r3 r4} ==> Hr4c3 = 1
H-single: Hr4c3 = 1
V-single: Vr4c4 = 0
V-single: Vr3c3 = 0
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw
w[1]-3-in-r4c3-closed-nw-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
w[1]-diagonal-closed-3-1-in-{r3c3...r2c2} ==> Vr2c2 = 0, Hr2c2 = 0
H-single: Hr2c2 = 0
V-single: Vr2c2 = 0
3+1+1+3-in-r4c3+c4{r3 r4}+r3c5 ==> Hr4c5 = 1, Hr5c4 = 0
H-single: Hr5c4 = 0
H-single: Hr4c5 = 1
w[1]-diagonal-3-1-in-{r3c5...r4c4}-open-end ==> Vr3c6 = 1, Hr3c5 = 1
H-single: Hr3c5 = 1
V-single: Vr3c6 = 1
V-single: Vr4c6 = 0
V-single: Vr2c6 = 0
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
w[1]-3-in-r3c5-closed-ne-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
w[1]-diagonal-closed-3-1-in-{r3c5...r2c4} ==> Hr2c4 = 0
H-single: Hr2c4 = 0
w[1]-1-in-r4c4-asymmetric-ne-corner ==> Pr5c4 ≠ ew, Pr5c4 ≠ ns
w[1]-1-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ ew, Pr4c4 ≠ ns
w[1]-1-in-r3c4-asymmetric-sw-corner ==> Pr3c5 ≠ ew, Pr3c5 ≠ ns
w[1]-1-in-r2c4-asymmetric-se-corner ==> Pr2c4 ≠ ew, Pr2c4 ≠ ns
w[1]-1-in-r2c2-asymmetric-se-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ew, Pr2c2 ≠ ns
entering level Loop with <Fact-27678>
entering level Col with <Fact-27758>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
I-single: Ir5c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
I-single: Ir4c5 = out
horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
I-single: Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
I-single: Ir3c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
I-single: Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
I-single: Ir2c3 = in
horizontal-line-{r2 r3}c3 ==> Ir3c3 = out
I-single: Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
I-single: Ir3c2 = out
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
I-single: Ir4c2 = out
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
I-single: Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
I-single: Ir5c3 = out
horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
I-single: Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
I-single: Ir4c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
I-single: Ir5c4 = in
vertical-line-r4{c1 c2} ==> Ir4c1 = in
I-single: Ir4c1 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
I-single: Ir1c4 = in
horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
I-single: Ir2c5 = out
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
V-single: Vr5c2 = 1
H-single: Hr6c2 = 0
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
H-single: Hr5c1 = 0
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
V-single: Vr2c5 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
H-single: Hr1c4 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
V-single: Vr4c1 = 1

LOOP[6]: Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2- ==> Hr4c1 = 0
H-single: Hr4c1 = 0
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
V-single: Vr3c2 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
V-single: Vr3c1 = 1

LOOP[8]: Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Vr3c2- ==> Hr3c1 = 0
H-single: Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
V-single: Vr2c3 = 0
w[1]-1-in-r3c4-asymmetric-nw-corner ==> Pr4c5 ≠ ew, Pr4c5 ≠ ns
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
H-single: Hr3c2 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
same-colour-in-r5{c4 c5} ==> Vr5c5 = 0
V-single: Vr5c5 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
H-single: Hr6c4 = 1
w[1]-3-in-r5c5-hit-by-horiz-line-at-sw ==> Hr5c5 = 1
H-single: Hr5c5 = 1
w[1]-3-in-r5c5-closed-ne-corner ==> Pr6c5 ≠ ne, Pr6c5 ≠ o
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
V-single: Vr5c4 = 1
H-single: Hr6c3 = 0
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
V-single: Vr4c5 = 1
Starting_init_links_with_<Fact-28267>
524 candidates, 1464 csp-links and 5090 links. Density = 3.71%
starting non trivial part of solution
Entering_level_W1_with_<Fact-41380>
whip[1]: Vr4c5{1 .} ==> Br4c5 ≠ nes, Br4c5 ≠ o, Pr4c5 ≠ nw, Pr5c5 ≠ ew, Pr5c5 ≠ sw, Br4c4 ≠ n, Br4c4 ≠ s, Br4c4 ≠ w, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ s, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ se
P-single: Pr4c5 = se
B-single: Br4c4 = e
P-single: Pr4c4 = nw
P-single: Pr5c4 = sw
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ w, Br3c4 ≠ s, Br3c4 ≠ e, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw
B-single: Br3c5 = nes
P-single: Pr3c6 = sw
P-single: Pr4c6 = nw
P-single: Pr3c5 = ne
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ ne, Br2c5 ≠ w, Br2c5 ≠ e, Br2c5 ≠ n, Br2c5 ≠ o, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c5 ≠ wne, Br2c5 ≠ nes
whip[1]: Br2c5{swn .} ==> Pr2c6 ≠ ns, Pr2c6 ≠ sw, Nr2c5 ≠ 0
whip[1]: Pr2c6{nw .} ==> Br1c5 ≠ ne, Br1c5 ≠ sw, Br1c5 ≠ wne, Br1c5 ≠ s
whip[1]: Br1c5{nes .} ==> Pr1c5 ≠ se, Pr2c5 ≠ ne, Nr1c5 ≠ 2
P-single: Pr1c5 = ew
H-single: Hr1c5 = 1
V-single: Vr1c5 = 0
w[1]-2-in-r1c4-open-se-corner ==> Vr1c4 = 1, Hr1c3 = 0
H-single: Hr1c3 = 0
V-single: Vr1c4 = 1
vertical-line-r1{c3 c4} ==> Ir1c3 = out
I-single: Ir1c3 = out
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
I-single: Ir1c5 = in
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
V-single: Vr1c6 = 1
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
H-single: Hr2c5 = 1
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
H-single: Hr2c3 = 1
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
V-single: Vr1c3 = 1
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ w, Br1c5 ≠ o, Br1c4 ≠ ne, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ sw
B-single: Br1c5 = nes
N-single: Nr1c5 = 3
P-single: Pr1c6 = sw
P-single: Pr2c6 = nw
w[1]-1-in-r2c4-asymmetric-ne-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ ns
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ s, Br2c5 ≠ sw
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 1
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br2c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ swn, Br2c4 ≠ s, Br2c4 ≠ w
whip[1]: Br2c4{e .} ==> Pr3c4 ≠ ne, Pr2c4 ≠ se
P-single: Pr2c4 = nw
P-single: Pr3c4 = sw
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ n, Br1c3 ≠ s, Br1c3 ≠ e, Br1c3 ≠ n, Br1c3 ≠ o, Br1c3 ≠ w, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c4 ≠ ns, Br2c3 ≠ ne, Br2c3 ≠ ew, Br2c3 ≠ sw
B-single: Br2c3 = ns
P-single: Pr3c3 = ew
B-single: Br1c4 = nw
P-single: Pr1c4 = se
P-single: Pr2c5 = se
B-single: Br2c4 = e
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, Br3c2 ≠ w, Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ o, Br2c2 ≠ w, Br2c2 ≠ e, Br2c2 ≠ n, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ wne
B-single: Br3c3 = nes
B-single: Br2c2 = s
P-single: Pr2c3 = ne
whip[1]: Pr2c3{ne .} ==> Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ sw, Br1c3 ≠ se, Br1c3 ≠ nes
B-single: Br1c3 = esw
N-single: Nr1c3 = 3
P-single: Pr2c2 = o
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
P-single: Pr1c3 = sw
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1

LOOP[34]: Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Vr4c2-Vr3c2-Hr3c2-Hr3c3-Vr3c4-Hr4c3-Vr4c3-Hr5c3-Vr5c4-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2- ==> Hr1c1 = 1
H-single: Hr1c1 = 1
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

init-time = 14.38s, solve-time = 3.86s, total-time = 18.25s
nb-facts=<Fact-42290>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

