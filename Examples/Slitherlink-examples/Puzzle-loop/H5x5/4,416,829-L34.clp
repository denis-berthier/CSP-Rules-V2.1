
(solve
5 5
. 2 . . 2
. 1 1 3 2 
2 . 2 . . 
1 2 1 1 1 
3 3 . . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . . 2
. 1 1 3 2
2 . 2 . .
1 2 1 1 1
3 3 . . 3

start init-grid-structure 0.00377798080444336
start create-csp-variables
start create-labels 0.000419139862060547
start init-physical-csp-links 0.00280213356018066
start init-physical-non-csp-links 1.28438520431519
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.319157123565674
     start init-physical-BN-non-csp-links at local time 1.1201229095459
     start init-physical-BP-non-csp-links at local time 1.90793895721436
     end init-physical-BP-non-csp-links at local time 12.4789690971375
end init-physical-non-csp-links 13.7633891105652
start init-corner-B-c-values 13.7673749923706
start init-outer-B-candidates 13.7674250602722
start init-outer-I-candidates 13.7676930427551
start init-H-candidates 13.767923116684
start init-V-candidates 13.768639087677
start init-P-candidates 13.7693290710449
start init-inner-I-candidates 13.7705829143524
start init-inner-N-and-B-candidates 13.7710559368134
start solution 13.773227930069
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
H-single: Hr6c5 = 1
V-single: Vr5c6 = 1
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
w[1]-2-in-ne-corner ==> Vr2c6 = 1, Hr1c4 = 1
H-single: Hr1c4 = 1
V-single: Vr2c6 = 1
w[1]-diagonal-3-2-2-3-in-{r2c4...r5c1} ==> Vr2c5 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
H-single: Hr2c5 = 0
V-single: Vr1c5 = 0
H-single: Hr2c4 = 1
V-single: Vr2c5 = 1
w[1]-2-in-r1c5-open-sw-corner ==> Hr1c5 = 1, Vr1c6 = 1
V-single: Vr1c6 = 1
H-single: Hr1c5 = 1
w[1]-3-in-r5c2-hit-by-horiz-line-at-sw ==> Vr5c3 = 1, Hr5c2 = 1
H-single: Hr5c2 = 1
V-single: Vr5c3 = 1
V-single: Vr4c3 = 0
H-single: Hr5c3 = 0
w[1]-diagonal-3-2-in-{r5c1...r4c2}-non-closed-ne-corner ==> Hr4c2 = 1
H-single: Hr4c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-ne ==> Vr4c2 = 0
V-single: Vr4c2 = 0
w[1]-adjacent-1-3-on-edge-in-{r4 r5}c1 ==> Hr4c1 = 0
H-single: Hr4c1 = 0
w[1]-adjacent-1-3-on-edge-in-{r4 r5}c5 ==> Vr4c5 = 0, Hr4c5 = 0
H-single: Hr4c5 = 0
V-single: Vr4c5 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r5c2-closed-ne-corner ==> Pr6c2 ≠ ne, Pr6c2 ≠ o
diagonal-1-3-in-sw-corner ==> Vr5c2 = 0, Hr5c1 = 1
H-single: Hr5c1 = 0
V-single: Vr5c2 = 1
H-single: Hr6c2 = 0
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
w[1]-3-in-r5c2-closed-nw-corner ==> Pr6c3 ≠ nw, Pr6c3 ≠ o
w[1]-diagonal-closed-3-1-in-{r5c5...r4c4} ==> Vr4c4 = 0, Hr4c4 = 0
H-single: Hr4c4 = 0
V-single: Vr4c4 = 0
P-single: Pr2c6 = ns
P-single: Pr1c6 = sw
w[1]-1-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne
w[1]-1-in-r2c2-symmetric-se-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
entering level Loop with <Fact-27610>
entering level Col with <Fact-27690>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
I-single: Ir5c5 = in
vertical-line-r2{c5 c6} ==> Ir2c5 = in
I-single: Ir2c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
I-single: Ir1c5 = in
no-vertical-line-r1{c4 c5} ==> Ir1c4 = in
I-single: Ir1c4 = in
horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
I-single: Ir2c4 = out
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
I-single: Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
I-single: Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
I-single: Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
I-single: Ir4c4 = in
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
I-single: Ir4c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
I-single: Ir3c5 = in
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
I-single: Ir3c4 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
I-single: Ir5c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
I-single: Ir5c2 = out
horizontal-line-{r3 r4}c2 ==> Ir3c2 = out
I-single: Ir3c2 = out
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
V-single: Vr3c2 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
V-single: Vr3c1 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
H-single: Hr6c3 = 1
same-colour-in-r3{c4 c5} ==> Vr3c5 = 0
V-single: Vr3c5 = 0
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1
H-single: Hr3c4 = 1
H-single: Hr3c5 = 0
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
P-single: Pr2c5 = sw
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
V-single: Vr3c6 = 1
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
H-single: Hr5c5 = 0
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
V-single: Vr4c6 = 1
w[1]-3-in-r5c5-hit-by-verti-line-at-ne ==> Vr5c5 = 1
V-single: Vr5c5 = 1
H-single: Hr6c4 = 0
w[1]-3-in-r5c5-closed-sw-corner ==> Pr5c6 ≠ sw, Pr5c6 ≠ o
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
I-single: Ir5c4 = out
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
V-single: Vr5c4 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
H-single: Hr5c4 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
V-single: Vr4c1 = 1
Starting_init_links_with_<Fact-28044>
500 candidates, 1276 csp-links and 4777 links. Density = 3.83%
starting non trivial part of solution
Entering_level_W1_with_<Fact-40155>
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ s, Br4c0 ≠ o, Pr4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ e
B-single: Br4c1 = w
P-single: Pr4c1 = ns
P-single: Pr5c1 = ns
P-single: Pr4c2 = ne
P-single: Pr5c2 = se
B-single: Br4c0 = e
w[1]-1-in-r2c2-asymmetric-sw-corner ==> Pr2c3 ≠ ew, Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ ns
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ sw
whip[1]: Br3c1{ew .} ==> Pr3c1 ≠ ne
P-single: Pr3c1 = ns
H-single: Hr3c1 = 0
V-single: Vr2c1 = 1
vertical-line-r2{c0 c1} ==> Ir2c1 = in
I-single: Ir2c1 = in
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ e, Br2c1 ≠ n, Br2c1 ≠ o, Br2c1 ≠ s, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ nes, Br3c1 ≠ nw
B-single: Br3c1 = ew
whip[1]: Pr3c2{se .} ==> Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ se, Br3c2 ≠ nes, Br2c2 ≠ n, Br2c2 ≠ e, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ s
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Br2c2{w .} ==> Hr2c2 ≠ 1, Vr2c3 ≠ 1, Pr2c2 ≠ ne, Pr3c3 ≠ nw, Pr2c2 ≠ ew, Pr2c3 ≠ sw
V-single: Vr2c3 = 0
H-single: Hr2c2 = 0
whip[1]: Vr2c3{0 .} ==> Br2c3 ≠ w
whip[1]: Br2c3{s .} ==> Pr2c4 ≠ sw, Pr3c4 ≠ nw
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ esw, Br2c4 ≠ swn, Br3c3 ≠ sw, Br3c4 ≠ se, Br3c3 ≠ ne, Br3c4 ≠ o, Br3c4 ≠ e, Br3c4 ≠ s
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br2c4{nes .} ==> Pr2c4 ≠ ns, Pr3c5 ≠ se, Pr3c5 ≠ ew
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ sw, Br3c4 ≠ w, Br3c4 ≠ ne, Br3c4 ≠ sw, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c5 ≠ n
whip[1]: Br3c5{esw .} ==> Pr3c6 ≠ sw
P-single: Pr3c6 = ns
whip[1]: Pr3c6{ns .} ==> Br3c5 ≠ o, Br2c5 ≠ nw, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ sw
B-single: Br2c5 = ew
whip[1]: Br3c5{esw .} ==> Pr4c6 ≠ o, Pr4c6 ≠ sw, Nr3c5 ≠ 0
w[1]-1-in-r4c5-asymmetric-ne-corner ==> Pr5c5 ≠ ew, Pr5c5 ≠ ns
whip[1]: Pr5c5{sw .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ swn, Br4c4 ≠ n, Br4c4 ≠ w, Br4c5 ≠ s, Br4c5 ≠ w, Br5c4 ≠ n, Br5c4 ≠ e, Br5c4 ≠ ns
whip[1]: Br4c5{e .} ==> Pr5c5 ≠ ne, Pr5c6 ≠ nw, Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr4c5 ≠ sw
P-single: Pr5c6 = ns
P-single: Pr5c5 = sw
w[1]-1-in-r4c5-asymmetric-se-corner ==> Pr4c5 ≠ ew, Pr4c5 ≠ ne
whip[1]: Pr5c6{ns .} ==> Br4c5 ≠ n, Br5c5 ≠ nes
B-single: Br5c5 = esw
P-single: Pr6c6 = nw
P-single: Pr6c5 = ne
B-single: Br4c5 = e
P-single: Pr4c6 = ns
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o
B-single: Br6c5 = n
whip[1]: Pr6c5{ne .} ==> Br5c4 ≠ o, Br6c4 ≠ n, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ sw, Br5c4 ≠ nes
B-single: Br6c4 = o
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ e, Br5c3 ≠ s
whip[1]: Br5c4{wne .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Pr5c4 ≠ sw, Nr5c4 ≠ 0, Nr5c4 ≠ 1
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ nes, Br4c4 ≠ e
B-single: Br4c4 = s
P-single: Pr4c5 = o
whip[1]: Pr4c5{o .} ==> Br3c4 ≠ ns, Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw
B-single: Br3c5 = e
N-single: Nr3c5 = 1
P-single: Pr3c5 = nw
whip[1]: Pr3c5{nw .} ==> Br2c4 ≠ wne
B-single: Br2c4 = nes
V-single: Vr2c4 = 0
no-vertical-line-r2{c3 c4} ==> Ir2c3 = out
I-single: Ir2c3 = out
no-vertical-line-r2{c2 c3} ==> Ir2c2 = out
I-single: Ir2c2 = out
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
I-single: Ir1c2 = out
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
H-single: Hr1c2 = 0
P-single: Pr2c2 = ns
H-single: Hr2c1 = 0
V-single: Vr1c2 = 1
V-single: Vr2c2 = 1
P-single: Pr2c3 = ne
H-single: Hr2c3 = 1
V-single: Vr1c3 = 1
w[1]-3-in-r2c4-hit-by-horiz-line-at-nw ==> Vr1c4 = 0
V-single: Vr1c4 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r2{c3 c4} ==> Hr3c3 = 0
H-single: Hr3c3 = 0
w[1]-diagonal-3-2s-in-{r5c1...r3c3}-non-closed-ne-end ==> Vr3c4 = 1
V-single: Vr3c4 = 1
P-single: Pr4c4 = nw
H-single: Hr4c3 = 1
P-single: Pr3c3 = o
H-single: Hr3c2 = 0
V-single: Vr3c3 = 0
w[1]-1-in-r2c3-symmetric-sw-corner ==> Pr2c4 ≠ ne
P-single: Pr2c4 = ew
w[1]-1-in-r4c3-asymmetric-ne-corner ==> Pr5c3 ≠ ew, Pr5c3 ≠ ns
w[1]-1-in-r2c3-asymmetric-nw-corner ==> Pr3c4 ≠ ew
P-single: Pr3c4 = se
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
I-single: Ir3c3 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
I-single: Ir1c3 = in
vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1

LOOP[34]: Hr1c4-Hr1c5-Vr1c6-Vr2c6-Vr3c6-Vr4c6-Vr5c6-Hr6c5-Vr5c5-Hr5c4-Vr5c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Vr2c2-Vr3c2-Hr4c2-Hr4c3-Vr3c4-Hr3c4-Vr2c5-Hr2c4-Hr2c3-Vr1c3- ==> Hr1c3 = 1
H-single: Hr1c3 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXXX
XOOOX
XOOXX
XXXXX
XOXOX

.———.   .———.———.———.
|   | 2 |         2 |
.   .   .———.———.   .
|   | 1   1   3 | 2 |
.   .   .   .———.   .
| 2 |     2 |       |
.   .———.———.   .   .
| 1   2   1   1   1 |
.   .———.   .———.   .
| 3 | 3 |   |   | 3 |
.———.   .———.   .———.

init-time = 13.77s, solve-time = 3.47s, total-time = 17.25s
nb-facts=<Fact-41006>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
