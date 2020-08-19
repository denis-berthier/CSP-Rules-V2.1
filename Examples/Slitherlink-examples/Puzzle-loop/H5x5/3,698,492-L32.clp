
(solve
5 5
3 3 3 . 3
2 2 . . 2
. 2 3 . 2
. 2 2 1 .
3 . 2 2 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 3 3 . 3
2 2 . . 2
. 2 3 . 2
. 2 2 1 .
3 . 2 2 .

start init-grid-structure 0.00442194938659668
start create-csp-variables
start create-labels 0.000401020050048828
start init-physical-csp-links 0.00268292427062988
start init-physical-non-csp-links 1.1528959274292
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.313936948776245
     start init-physical-BN-non-csp-links at local time 1.11073899269104
     start init-physical-BP-non-csp-links at local time 1.90408110618591
     end init-physical-BP-non-csp-links at local time 12.9733779430389
end init-physical-non-csp-links 14.1263020038605
start init-corner-B-c-values 14.1309170722961
start init-outer-B-candidates 14.1309690475464
start init-outer-I-candidates 14.1312849521637
start init-H-candidates 14.1315629482269
start init-V-candidates 14.1326239109039
start init-P-candidates 14.1335928440094
start init-inner-I-candidates 14.1350378990173
start init-inner-N-and-B-candidates 14.1355249881744
start solution 14.137757062912
entering BRT
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
H-single: Hr1c5 = 1
V-single: Vr1c6 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
H-single: Hr1c1 = 1
V-single: Vr1c1 = 1
w[1]-diagonal-3-2-3-in-{r1c1...r3c3} ==> Vr3c4 = 1, Hr4c3 = 1, Vr4c4 = 0, Hr4c4 = 0
H-single: Hr4c4 = 0
V-single: Vr4c4 = 0
H-single: Hr4c3 = 1
V-single: Vr3c4 = 1
w[1]-diagonal-3-2-3-in-{r3c3...r5c1} ==> Hr3c3 = 1, Vr2c4 = 0, Hr3c4 = 0
H-single: Hr3c4 = 0
V-single: Vr2c4 = 0
H-single: Hr3c3 = 1
w[1]-3-in-r1c2-hit-by-horiz-line-at-nw ==> Vr1c3 = 1, Hr2c2 = 1
H-single: Hr2c2 = 1
V-single: Vr1c3 = 1
V-single: Vr2c3 = 0
H-single: Hr2c3 = 0
w[1]-diagonal-3-2-in-{r1c1...r2c2}-non-closed-se-corner ==> Hr3c2 = 1
H-single: Hr3c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-se ==> Vr2c2 = 0
V-single: Vr2c2 = 0
w[1]-diagonal-3-2-in-{r1c3...r2c2}-non-closed-sw-corner ==> Vr1c4 = 1, Hr1c3 = 1, Hr1c4 = 0
H-single: Hr1c4 = 0
H-single: Hr1c3 = 1
V-single: Vr1c4 = 1
H-single: Hr1c2 = 0
w[1]-3-in-r1c2-hit-by-horiz-line-at-ne ==> Vr1c2 = 1
V-single: Vr1c2 = 1
H-single: Hr2c1 = 0
w[1]-2-in-r2c1-open-ne-corner ==> Hr3c1 = 1, Vr2c1 = 1, Vr3c1 = 0
V-single: Vr3c1 = 0
V-single: Vr2c1 = 1
H-single: Hr3c1 = 1
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
w[1]-3-in-r1c3-closed-nw-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
w[1]-3-in-r1c2-closed-sw-corner ==> Pr1c3 ≠ sw, Pr1c3 ≠ o
w[1]-3-in-r1c2-closed-se-corner ==> Pr1c2 ≠ se, Pr1c2 ≠ o
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne
P-single: Pr2c1 = ns
entering level Loop with <Fact-27678>
entering level Col with <Fact-27806>
vertical-line-r1{c5 c6} ==> Ir1c5 = in
I-single: Ir1c5 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
I-single: Ir3c1 = out
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
I-single: Ir2c3 = in
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
I-single: Ir2c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
I-single: Ir3c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
I-single: Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
I-single: Ir4c3 = in
horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
I-single: Ir3c3 = out
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
I-single: Ir1c3 = in
vertical-line-r1{c2 c3} ==> Ir1c2 = out
I-single: Ir1c2 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
vertical-line-r1{c3 c4} ==> Ir1c4 = out
I-single: Ir1c4 = out
horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
I-single: Ir3c2 = out
same-colour-in-r3{c2 c3} ==> Vr3c3 = 0
V-single: Vr3c3 = 0
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
V-single: Vr3c2 = 0
adjacent-3-2-in-r3{c3 c2}-noline-west ==> Vr4c3 = 0
V-single: Vr4c3 = 0
w[1]-diagonal-3-2-in-{r5c1...r4c2}-non-closed-ne-corner ==> Hr4c2 = 1
H-single: Hr4c2 = 1
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
I-single: Ir4c2 = in
different-colours-in-r1{c4 c5} ==> Hr1c5 = 1
V-single: Vr1c5 = 1
w[1]-3-in-r1c5-closed-nw-corner ==> Pr2c6 ≠ nw, Pr2c6 ≠ o
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1
H-single: Hr2c4 = 1
V-single: Vr2c5 = 0
H-single: Hr2c5 = 0
w[1]-2-in-r2c5-open-nw-corner ==> Hr3c5 = 1, Vr2c6 = 1, Vr3c6 = 0
V-single: Vr3c6 = 0
V-single: Vr2c6 = 1
H-single: Hr3c5 = 1
P-single: Pr2c6 = ns
w[1]-1-in-r4c4-asymmetric-ne-corner ==> Pr5c4 ≠ ew, Pr5c4 ≠ ns
vertical-line-r2{c5 c6} ==> Ir2c5 = in
I-single: Ir2c5 = in
horizontal-line-{r2 r3}c5 ==> Ir3c5 = out
I-single: Ir3c5 = out
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
V-single: Vr3c5 = 1
Starting_init_links_with_<Fact-28140>
493 candidates, 1262 csp-links and 4494 links. Density = 3.71%
starting non trivial part of solution
Entering_level_W1_with_<Fact-39657>
whip[1]: Vr3c5{1 .} ==> Br3c5 ≠ se, Br3c4 ≠ o, Pr3c5 ≠ ew, Pr4c5 ≠ se, Pr4c5 ≠ ew, Br3c4 ≠ n, Br3c4 ≠ s, Br3c4 ≠ w, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ sw, Br3c4 ≠ swn, Br3c5 ≠ ne, Br3c5 ≠ ns
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c5{nw .} ==> Hr4c5 ≠ 1, Br3c5 ≠ sw, Br4c4 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c4 ≠ s, Br4c5 ≠ n
H-single: Hr4c5 = 0
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
I-single: Ir4c5 = out
same-colour-in-r4{c5 c6} ==> Vr4c6 = 0
V-single: Vr4c6 = 0
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
V-single: Vr4c5 = 1
whip[1]: Hr4c5{0 .} ==> Pr4c6 ≠ sw
whip[1]: Vr4c6{0 .} ==> Br4c6 ≠ w, Pr4c6 ≠ ns, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Br4c5 ≠ e, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ esw
P-single: Pr3c5 = se
P-single: Pr4c6 = o
B-single: Br4c6 = o
whip[1]: Pr3c5{se .} ==> Br2c4 ≠ s, Br2c4 ≠ e, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ ne, Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ sw, Br3c4 ≠ ne, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ ew
B-single: Br3c5 = nw
P-single: Pr2c5 = nw
P-single: Pr3c6 = nw
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ o, Br1c4 ≠ s, Br1c4 ≠ e, Br1c4 ≠ n, Br1c4 ≠ o, Br1c4 ≠ w, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c5 ≠ nes, Br2c4 ≠ w, Br2c5 ≠ ns
B-single: Br2c5 = se
B-single: Br1c5 = wne
P-single: Pr1c6 = sw
P-single: Pr1c5 = se
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ nes
whip[1]: Br1c4{esw .} ==> Pr1c4 ≠ se, Pr1c4 ≠ ew, Pr2c4 ≠ ns, Pr2c4 ≠ sw, Nr1c4 ≠ 0, Nr1c4 ≠ 1
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ esw, Br1c3 ≠ nes, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ esw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ nw, Br2c3 ≠ e, Br2c3 ≠ ne
B-single: Br2c4 = n
N-single: Nr2c4 = 1
whip[1]: Pr3c4{sw .} ==> Br3c3 ≠ esw, Br3c3 ≠ swn
whip[1]: Br3c3{nes .} ==> Pr3c3 ≠ ns, Pr3c4 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ ew
P-single: Pr3c4 = sw
P-single: Pr3c3 = ew
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ e, Br2c3 ≠ w, Br2c3 ≠ n, Br2c3 ≠ o, Br2c3 ≠ nw, Br3c4 ≠ se
whip[1]: Br3c4{esw .} ==> Nr3c4 ≠ 1
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 0
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, Br2c2 ≠ ne, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ swn, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c3 ≠ wne
B-single: Br3c3 = nes
P-single: Pr4c3 = ew
P-single: Pr4c4 = nw
w[1]-1-in-r4c4-symmetric-nw-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, Br3c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ sw
B-single: Br3c2 = ns
P-single: Pr3c2 = ew
P-single: Pr4c2 = ew
H-single: Hr4c1 = 1
V-single: Vr4c2 = 0
w[1]-diagonal-3-2-in-{r3c3...r4c2}-non-closed-sw-corner ==> Hr5c2 = 1
H-single: Hr5c2 = 1
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
I-single: Ir5c2 = out
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
I-single: Ir4c1 = in
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
H-single: Hr5c1 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
V-single: Vr4c1 = 1
w[1]-3-in-r5c1-hit-by-verti-line-at-nw ==> Vr5c2 = 1
V-single: Vr5c2 = 1
H-single: Hr6c2 = 0
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne, Br3c1 ≠ w, Br3c1 ≠ s, Br3c1 ≠ e, Br3c1 ≠ o, Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c2 ≠ sw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ wne, Br3c1 ≠ nes
B-single: Br2c2 = ns
whip[1]: Pr2c2{ew .} ==> Br1c2 ≠ wne
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ swn
B-single: Br1c3 = wne
P-single: Pr1c3 = se
P-single: Pr1c4 = sw
P-single: Pr2c3 = nw
P-single: Pr2c4 = ne
whip[1]: Pr1c3{se .} ==> Br1c2 ≠ swn, Br1c2 ≠ nes
B-single: Br1c2 = esw
P-single: Pr3c1 = ne
P-single: Pr1c2 = sw
P-single: Pr2c2 = ne
whip[1]: Pr3c1{ne .} ==> Br2c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ swn
B-single: Br2c1 = sw
whip[1]: Br3c1{ns .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ ns, Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ swn
B-single: Br1c1 = wne
P-single: Pr1c1 = se
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ se
B-single: Br1c4 = esw
N-single: Nr1c4 = 3
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ ns
B-single: Br2c3 = s
N-single: Nr2c3 = 1
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ s, Br4c1 ≠ e, Br4c1 ≠ o, Br3c1 ≠ n, Br4c1 ≠ se, Br4c1 ≠ wne, Br4c2 ≠ nw
B-single: Br4c2 = ns
P-single: Pr5c3 = ew
H-single: Hr5c3 = 1
V-single: Vr5c3 = 0
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
V-single: Vr5c4 = 1
P-single: Pr6c3 = o
H-single: Hr6c3 = 0
B-single: Br3c1 = ns
N-single: Nr3c1 = 2
diagonal-of-three-2s-in-sw-corner ==> Hr6c4 = 1
H-single: Hr6c4 = 1
P-single: Pr4c1 = se

LOOP[32]: Vr4c5-Vr3c5-Hr3c5-Vr2c6-Vr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Vr1c3-Hr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Hr3c1-Hr3c2-Hr3c3-Vr3c4-Hr4c3-Hr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Hr5c3-Vr5c4-Hr6c4- ==> Vr5c5 = 1
V-single: Vr5c5 = 1
H-single: Hr6c5 = 0
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = out
I-single: Ir5c5 = out
vertical-line-r5{c4 c5} ==> Ir5c4 = in
I-single: Ir5c4 = in
vertical-line-r5{c3 c4} ==> Ir5c3 = out
I-single: Ir5c3 = out
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
V-single: Vr5c6 = 0
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
H-single: Hr5c5 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXOX
XXXXX
OOOXO
XXXXO
XOOXO

.———.   .———.   .———.
| 3 | 3 | 3 |   | 3 |
.   .———.   .———.   .
| 2   2           2 |
.———.———.———.   .———.
      2   3 |   | 2
.———.———.———.   .   .
|     2   2   1 |
.   .———.———.   .   .
| 3 |     2 | 2 |
.———.   .   .———.   .

init-time = 14.14s, solve-time = 3.75s, total-time = 17.89s
nb-facts=<Fact-41282>
Quasi-Loop max length = 32
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
