
(solve
5 5
. . 2 . .
2 . . 3 .
3 . 2 2 2
1 2 1 . 3
3 . . . .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 . .
2 . . 3 .
3 . 2 2 2
1 2 1 . 3
3 . . . .

start init-grid-structure 0.00361490249633789
start create-csp-variables
start create-labels 0.000403881072998047
start init-physical-csp-links 0.00272893905639648
start init-physical-non-csp-links 1.25242495536804
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.310360908508301
     start init-physical-BN-non-csp-links at local time 1.12881207466125
     start init-physical-BP-non-csp-links at local time 1.92799592018127
     end init-physical-BP-non-csp-links at local time 12.2274000644684
end init-physical-non-csp-links 13.479859828949
start init-corner-B-c-values 13.4836819171906
start init-outer-B-candidates 13.4837229251862
start init-outer-I-candidates 13.4840009212494
start init-H-candidates 13.4842569828033
start init-V-candidates 13.4849441051483
start init-P-candidates 13.4856541156769
start init-inner-I-candidates 13.4869410991669
start init-inner-N-and-B-candidates 13.487359046936
start solution 13.4896831512451
entering BRT
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
w[1]-diagonal-3-2-2-3-in-{r2c4...r5c1} ==> Vr2c5 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
H-single: Hr2c5 = 0
V-single: Vr1c5 = 0
H-single: Hr2c4 = 1
V-single: Vr2c5 = 1
w[1]-adjacent-1-3-on-edge-in-{r4 r5}c1 ==> Vr4c2 = 0, Hr4c1 = 0
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0
w[1]-diagonal-3-2s-in-{r2c4...r4c2}-non-closed-sw-end ==> Hr5c2 = 1
H-single: Hr5c2 = 1
w[1]-adjacent-1-3-on-edge-in-{r4 r3}c1 ==> Vr3c1 = 1, Hr5c1 = 0
H-single: Hr5c1 = 0
V-single: Vr3c1 = 1
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ o
entering level Loop with <Fact-27493>
entering level Col with <Fact-27571>
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
I-single: Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
I-single: Ir4c2 = in
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
I-single: Ir5c2 = out
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
same-colour-in-{r5 r6}c2 ==> Hr6c2 = 0
H-single: Hr6c2 = 0
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
V-single: Vr5c2 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
V-single: Vr4c1 = 1
w[1]-3-in-r3c1-hit-by-verti-line-at-sw ==> Vr3c2 = 1, Hr3c1 = 1
H-single: Hr3c1 = 1
V-single: Vr3c2 = 1
V-single: Vr2c2 = 0
H-single: Hr3c2 = 0
V-single: Vr2c1 = 0
w[1]-3-in-r3c1-closed-ne-corner ==> Pr4c1 ≠ ne, Pr4c1 ≠ o
w[1]-3-in-r3c1-closed-nw-corner ==> Pr4c2 ≠ nw, Pr4c2 ≠ o
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
I-single: Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
I-single: Ir2c2 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
I-single: Ir3c2 = out
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
H-single: Hr4c2 = 1

LOOP[10]: Hr4c2-Vr3c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2- ==> Vr4c3 = 0
V-single: Vr4c3 = 0
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
I-single: Ir4c3 = in
Starting_init_links_with_<Fact-27749>
612 candidates, 1698 csp-links and 6938 links. Density = 3.71%
starting non trivial part of solution
Entering_level_W1_with_<Fact-45026>
whip[1]: Vr4c3{0 .} ==> Br4c3 ≠ w, Pr4c3 ≠ ns, Pr4c3 ≠ se, Pr5c3 ≠ ne, Pr5c3 ≠ ns, Br4c2 ≠ ne, Br4c2 ≠ se, Br4c2 ≠ ew
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c2 ≠ o, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ w, Br5c3 ≠ o, Br5c3 ≠ e, Br5c3 ≠ s
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Br5c2{nes .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ nw, Nr5c2 ≠ 0
whip[1]: Pr5c2{ew .} ==> Br4c2 ≠ sw, Br4c1 ≠ e
B-single: Br4c2 = ns
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ w, Br3c2 ≠ ne
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br3c1{wne .} ==> Pr3c1 ≠ ns, Pr4c1 ≠ se, Pr3c2 ≠ ne, Pr3c2 ≠ ns
P-single: Pr4c1 = ns
P-single: Pr3c1 = se
w[1]-1-in-r4c1-asymmetric-nw-corner ==> Pr5c2 ≠ ew
P-single: Pr5c2 = se
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ n, Br3c1 ≠ swn, Br4c1 ≠ s
B-single: Br4c1 = w
P-single: Pr5c1 = ns
P-single: Pr4c2 = ne
B-single: Br3c1 = wne
P-single: Pr3c2 = sw
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ swn
B-single: Br5c1 = esw
P-single: Pr6c1 = ne
P-single: Pr6c2 = nw
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Pr6c2{nw .} ==> Br5c2 ≠ n, Br6c2 ≠ n, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ swn, Br5c2 ≠ nes
B-single: Br6c2 = o
whip[1]: Pr6c3{ne .} ==> Br5c3 ≠ w, Br5c3 ≠ ns, Br5c3 ≠ ew, Br5c3 ≠ nes
whip[1]: Br5c2{wne .} ==> Nr5c2 ≠ 1
whip[1]: Pr4c2{ne .} ==> Br3c2 ≠ s, Br3c2 ≠ ns, Br3c2 ≠ se, Br3c2 ≠ nes
whip[1]: Br3c2{swn .} ==> Pr3c3 ≠ sw, Nr3c2 ≠ 1
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ ns, Br2c2 ≠ w, Br2c2 ≠ s, Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes, Br3c2 ≠ swn
whip[1]: Br3c2{esw .} ==> Pr3c3 ≠ nw, Pr3c3 ≠ ew
whip[1]: Br2c2{ne .} ==> Pr2c2 ≠ ns, Pr2c2 ≠ se, Nr2c2 ≠ 3
whip[1]: Pr2c2{ew .} ==> Hr2c1 ≠ 0, Br1c1 ≠ nw, Br1c1 ≠ wne, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br2c1 ≠ sw, Br1c1 ≠ o, Br1c1 ≠ e, Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ ne
H-single: Hr2c1 = 1
B-single: Br2c1 = ns
P-single: Pr2c1 = ne
V-single: Vr1c1 = 1
vertical-line-r1{c0 c1} ==> Ir1c1 = in
I-single: Ir1c1 = in
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ s, Br1c1 ≠ se
B-single: Br1c1 = swn
V-single: Vr1c2 = 0
N-single: Nr1c1 = 3
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
H-single: Hr1c2 = 1
P-single: Pr2c2 = ew
H-single: Hr2c2 = 1

LOOP[6]: Hr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2- ==> Vr1c3 = 0
V-single: Vr1c3 = 0
w[1]-diagonal-3-2-in-{r2c4...r1c3}-non-closed-nw-corner ==> Hr3c4 = 1, Hr1c3 = 1, Vr3c5 = 0, Hr3c5 = 0
H-single: Hr3c5 = 0
V-single: Vr3c5 = 0
H-single: Hr1c3 = 1
H-single: Hr3c4 = 1
w[1]-2-in-r3c5-open-nw-corner ==> Hr4c5 = 1, Vr3c6 = 1, Vr4c6 = 0
V-single: Vr4c6 = 0
V-single: Vr3c6 = 1
H-single: Hr4c5 = 1
w[1]-3-in-r4c5-hit-by-verti-line-at-ne ==> Vr4c5 = 1, Hr5c5 = 1
H-single: Hr5c5 = 1
V-single: Vr4c5 = 1
H-single: Hr4c4 = 0
V-single: Vr5c5 = 0
H-single: Hr5c4 = 0
w[1]-2-in-r3c4-open-se-corner ==> Vr3c4 = 1, Hr3c3 = 0, Vr2c4 = 0
V-single: Vr2c4 = 0
H-single: Hr3c3 = 0
V-single: Vr3c4 = 1
w[1]-3-in-r4c5-closed-nw-corner ==> Pr5c6 ≠ nw, Pr5c6 ≠ o
w[1]-3-in-r4c5-closed-sw-corner ==> Pr4c6 ≠ sw
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ nw
w[1]-1-in-r4c3-asymmetric-ne-corner ==> Pr5c3 ≠ ew
P-single: Pr5c3 = sw
H-single: Hr5c3 = 0
V-single: Vr5c3 = 1
vertical-line-r5{c2 c3} ==> Ir5c3 = in
I-single: Ir5c3 = in
vertical-line-r3{c5 c6} ==> Ir3c5 = in
I-single: Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
I-single: Ir3c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
I-single: Ir4c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
I-single: Ir5c4 = in
no-vertical-line-r5{c4 c5} ==> Ir5c5 = in
I-single: Ir5c5 = in
horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
I-single: Ir4c5 = out
vertical-line-r3{c3 c4} ==> Ir3c3 = out
I-single: Ir3c3 = out
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
I-single: Ir2c3 = out
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
I-single: Ir2c4 = out
vertical-line-r2{c4 c5} ==> Ir2c5 = in
I-single: Ir2c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
I-single: Ir1c5 = in
no-vertical-line-r1{c4 c5} ==> Ir1c4 = in
I-single: Ir1c4 = in
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
I-single: Ir1c3 = in
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
I-single: Ir1c2 = in
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
V-single: Vr1c4 = 0
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
H-single: Hr2c3 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
H-single: Hr1c4 = 1
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
V-single: Vr1c6 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
H-single: Hr1c5 = 1
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
V-single: Vr2c6 = 1
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
V-single: Vr2c3 = 0
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
H-single: Hr4c3 = 1
V-single: Vr4c4 = 0
same-colour-in-r3{c2 c3} ==> Vr3c3 = 0
V-single: Vr3c3 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
V-single: Vr5c6 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
H-single: Hr6c5 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
H-single: Hr6c4 = 1

LOOP[34]: Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c5-Vr3c6-Vr2c6-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Hr2c2-Hr2c3-Hr2c4-Vr2c5-Hr3c4-Vr3c4-Hr4c3-Hr4c2-Vr3c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Vr5c3- ==> Hr6c3 = 1
H-single: Hr6c3 = 1
same-colour-in-r5{c3 c4} ==> Vr5c4 = 0
V-single: Vr5c4 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXX
OOOOX
XOOXX
XXXXO
XOXXX

.———.———.———.———.———.
|         2         |
.———.———.———.———.   .
  2           3 |   |
.———.   .   .———.   .
| 3 |     2 | 2   2 |
.   .———.———.   .———.
| 1   2   1     | 3
.   .———.   .   .———.
| 3 |   |           |
.———.   .———.———.———.

init-time = 13.49s, solve-time = 4.11s, total-time = 17.6s
nb-facts=<Fact-46558>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
