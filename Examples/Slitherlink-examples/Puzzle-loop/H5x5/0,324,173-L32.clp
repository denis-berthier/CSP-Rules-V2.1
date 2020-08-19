
(solve
5 5
3 . . 1 3
. . . 2 .
. . 3 . .
2 . . 0 3
. 2 2 3 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . 1 3
. . . 2 .
. . 3 . .
2 . . 0 3
. 2 2 3 .

start init-grid-structure 3.60012054443359e-05
start create-csp-variables
start create-labels 0.000632047653198242
start init-physical-csp-links 0.00463604927062988
start init-physical-non-csp-links 1.05073499679565
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.218686819076538
     start init-physical-BN-non-csp-links at local time 0.824576854705811
     start init-physical-BP-non-csp-links at local time 1.5226948261261
     end init-physical-BP-non-csp-links at local time 10.2061848640442
end init-physical-non-csp-links 11.2569551467896
start init-corner-B-c-values 11.2572729587555
start init-outer-B-candidates 11.2573380470276
start init-outer-I-candidates 11.2577409744263
start init-H-candidates 11.258073091507
start init-V-candidates 11.2593410015106
start init-P-candidates 11.2606601715088
start init-inner-I-candidates 11.2626039981842
start init-inner-N-and-B-candidates 11.2633321285248
start solution 11.266891002655
entering BRT
w0-0-in-r4c4 ==> Hr5c4 = 0, Hr4c4 = 0, Vr4c5 = 0, Vr4c4 = 0
w0-adjacent-3-0-in-c4{r5 r4} ==> Vr5c5 = 1, Vr5c4 = 1, Hr6c4 = 1, Hr5c5 = 1, Hr5c3 = 1, Hr6c5 = 0, Hr6c3 = 0
w0-adjacent-3-0-in-r4{c5 c4} ==> Vr4c6 = 1, Vr3c5 = 1, Hr4c5 = 1, Vr5c6 = 0, Vr3c6 = 0
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3-0-in-{r3c3...r4c4} ==> Vr3c4 = 1, Hr4c3 = 1
w[1]-diagonal-3-2-3-in-{r1c5...r3c3} ==> Vr3c3 = 1, Vr4c3 = 0, Hr4c2 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c4 c5} ==> Vr1c4 = 0, Hr2c4 = 0
w[1]-diagonal-3-2-in-{r3c3...r2c4}-non-closed-ne-corner ==> Vr2c5 = 1
w[1]-3-in-r5c4-closed-sw-corner ==> Pr5c5 ≠ o
w[1]-3-in-r4c5-closed-se-corner ==> Pr4c5 ≠ o
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ ne
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
P-single: Pr4c5 = ne
P-single: Pr5c5 = se
P-single: Pr6c3 = o
H-single: Hr6c2 = 0
V-single: Vr5c3 = 0
w[1]-2-in-r5c2-open-se-corner ==> Hr5c2 = 1, Vr5c2 = 1, Hr5c1 = 0, Vr4c2 = 0
w[1]-2-in-r4c1-open-se-corner ==> Hr4c1 = 1, Vr4c1 = 1, Vr3c1 = 0
P-single: Pr5c2 = se
P-single: Pr4c1 = se
P-single: Pr5c4 = sw
entering level Loop with <Fact-27793>
entering level Col with <Fact-27903>
no-vertical-line-r5{c5 c6} ==> Ir5c5 = out
vertical-line-r5{c4 c5} ==> Ir5c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
no-vertical-line-r4{c2 c3} ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
vertical-line-r5{c1 c2} ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
horizontal-line-{r3 r4}c1 ==> Ir3c1 = out
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = in
vertical-line-r3{c2 c3} ==> Ir3c3 = out
vertical-line-r3{c3 c4} ==> Ir3c4 = in
vertical-line-r3{c4 c5} ==> Ir3c5 = out
horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
vertical-line-r1{c5 c6} ==> Ir1c5 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
Starting_init_links_with_<Fact-28034>
562 candidates, 1713 csp-links and 6084 links. Density = 3.86%
starting non trivial part of solution
Entering_level_W1_with_<Fact-43633>
whip[1]: Vr5c1{1 .} ==> Br5c1 ≠ ne, Br5c0 ≠ o, Br5c1 ≠ o, Pr6c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ e
P-single: Pr6c1 = ne
B-single: Br5c0 = e
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0, Nr5c1 ≠ 1
whip[1]: Vr3c2{1 .} ==> Br3c2 ≠ nes, Br3c1 ≠ o, Br3c2 ≠ o, Pr3c2 ≠ o, Pr3c2 ≠ ne, Pr3c2 ≠ nw, Pr3c2 ≠ ew, Pr4c2 ≠ se, Pr4c2 ≠ ew, Br3c1 ≠ n, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ sw, Br3c1 ≠ swn, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ se
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Pr4c2{nw .} ==> Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br4c1 ≠ ne, Br4c1 ≠ sw, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c2 ≠ n
whip[1]: Br4c2{esw .} ==> Pr4c3 ≠ nw, Pr4c3 ≠ ew, Pr4c3 ≠ sw
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ se, Br2c1 ≠ esw, Br2c1 ≠ nes, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ nes, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ w, Br4c3 ≠ ne, Br5c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c4 ≠ swn, Br5c4 ≠ wne
B-single: Br5c4 = esw
P-single: Pr6c4 = ne
P-single: Pr6c5 = nw
B-single: Br5c3 = ne
P-single: Pr5c3 = ew
whip[1]: Pr6c4{ne .} ==> Br6c4 ≠ o, Br6c3 ≠ n
B-single: Br6c3 = o
B-single: Br6c4 = n
whip[1]: Pr6c5{nw .} ==> Br5c5 ≠ n, Br5c5 ≠ o, Br6c5 ≠ n, Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ nes
B-single: Br6c5 = o
P-single: Pr6c6 = o
whip[1]: Br5c5{nw .} ==> Pr5c6 ≠ ns, Pr5c6 ≠ sw, Nr5c5 ≠ 0, Nr5c5 ≠ 3
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ swn, Br4c5 ≠ wne
whip[1]: Br4c5{nes .} ==> Pr4c6 ≠ o, Pr4c6 ≠ nw, Pr5c6 ≠ o
P-single: Pr5c6 = nw
whip[1]: Pr5c6{nw .} ==> Br5c5 ≠ w
B-single: Br5c5 = nw
N-single: Nr5c5 = 2
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ esw, Br3c5 ≠ nes, Br3c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ w
whip[1]: Br3c5{wne .} ==> Nr3c5 ≠ 0
whip[1]: Pr5c3{ew .} ==> Br5c2 ≠ ne, Br4c2 ≠ w, Br4c2 ≠ e, Br4c2 ≠ o, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ esw, Br4c3 ≠ sw, Br4c3 ≠ swn, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw
whip[1]: Br4c3{ns .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se, Nr4c3 ≠ 0, Nr4c3 ≠ 3
whip[1]: Pr4c3{ne .} ==> Br3c3 ≠ wne, Br3c3 ≠ nes
whip[1]: Br3c3{swn .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ ew, Pr4c3 ≠ o, Pr4c4 ≠ o
P-single: Pr4c4 = nw
P-single: Pr4c3 = ne
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ s, Br3c4 ≠ s, Br3c4 ≠ e, Br3c4 ≠ n, Br3c4 ≠ o, Br3c3 ≠ swn, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ nes
B-single: Br3c3 = esw
H-single: Hr3c3 = 0
B-single: Br4c3 = ns
N-single: Nr4c3 = 2
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
whip[1]: Hr3c3{0 .} ==> Br2c3 ≠ s, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ nes
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ ne, Br2c4 ≠ sw
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ w, Br3c2 ≠ nw
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 1
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ nes, Br2c2 ≠ o, Br2c2 ≠ n, Br2c2 ≠ w
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br4c2{sw .} ==> Nr4c2 ≠ 0, Nr4c2 ≠ 3
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ew, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ wne, Br4c1 ≠ ns, Br4c1 ≠ se
B-single: Br4c1 = nw
P-single: Pr5c1 = ns
P-single: Pr4c2 = nw
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ swn
whip[1]: Pr4c2{nw .} ==> Br4c2 ≠ sw
B-single: Br4c2 = s
N-single: Nr4c2 = 1
whip[1]: Br3c1{nes .} ==> Pr3c1 ≠ ns, Pr3c1 ≠ se, Nr3c1 ≠ 1
whip[1]: Pr3c1{ne .} ==> Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ ew, Br2c1 ≠ wne
whip[1]: Pr5c2{se .} ==> Br5c2 ≠ ns, Br5c1 ≠ sw
B-single: Br5c1 = esw
N-single: Nr5c1 = 3
P-single: Pr6c2 = nw
B-single: Br5c2 = nw
whip[1]: Pr6c2{nw .} ==> Br6c2 ≠ n
B-single: Br6c2 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ esw
B-single: Br4c5 = nes
P-single: Pr4c6 = sw
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ ne, Br3c5 ≠ e, Br3c5 ≠ ew, Br3c5 ≠ wne
whip[1]: Br3c5{swn .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ sw
whip[1]: Pr3c6{nw .} ==> Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ e, Br2c5 ≠ s
whip[1]: Pr4c5{ne .} ==> Br3c5 ≠ ns, Br3c4 ≠ w, Br3c4 ≠ nw, Br3c5 ≠ s
whip[1]: Br3c5{swn .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ nw, Pr3c5 ≠ ew, Nr3c5 ≠ 1
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ esw, Br1c3 ≠ nes, Br2c4 ≠ nw, Br2c4 ≠ se, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ w
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 0
whip[1]: Pr3c5{sw .} ==> Hr3c5 ≠ 1, Br2c5 ≠ se, Br2c5 ≠ esw, Br2c5 ≠ nes, Br3c5 ≠ swn
H-single: Hr3c5 = 0
B-single: Br3c5 = sw
N-single: Nr3c5 = 2
P-single: Pr3c6 = o
V-single: Vr2c6 = 0
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
same-colour-in-r1{c4 c5} ==> Vr1c5 = 0
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
w[1]-3-in-r1c5-hit-by-horiz-line-at-nw ==> Hr2c5 = 1
w[1]-3-in-r1c5-closed-se-corner ==> Pr1c5 ≠ se, Pr1c5 ≠ o
same-colour-in-{r2 r3}c4 ==> Hr3c4 = 0
w[1]-diagonal-3-2-in-{r1c5...r2c4}-non-closed-sw-corner ==> Vr2c4 = 1

LOOP[6]: Hr2c3-Vr2c4-Vr3c4-Hr4c3-Vr3c3- ==> Vr2c3 = 0
no-vertical-line-r2{c2 c3} ==> Ir2c2 = out
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1

LOOP[28]: Hr2c3-Vr2c4-Vr3c4-Hr4c3-Vr3c3-Hr3c2-Vr3c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Hr5c3-Vr5c4-Hr6c4-Vr5c5-Hr5c5-Vr4c6-Hr4c5-Vr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3- ==> Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = out
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
different-colours-in-{r1 r2}c2 ==> Hr2c2 = 1

LOOP[32]: Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Vr3c5-Hr4c5-Vr4c6-Hr5c5-Vr5c5-Hr6c4-Vr5c4-Hr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c2-Vr3c3-Hr4c3-Vr3c4-Vr2c4-Hr2c3-Hr2c2-Hr2c1-Vr1c1-Hr1c1- ==> Hr1c2 = 1

LOOP[30]: Hr1c2-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Vr3c5-Hr4c5-Vr4c6-Hr5c5-Vr5c5-Hr6c4-Vr5c4-Hr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr3c2-Hr3c2-Vr3c3-Hr4c3-Vr3c4-Vr2c4-Hr2c3-Hr2c2- ==> Vr1c2 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXX
OOOXO
OXOXO
XXXXX
XOOXO

.———.———.———.———.———.
| 3           1   3 |
.———.———.———.   .———.
            | 2 |
.   .———.   .   .   .
    |   | 3 |   |
.———.   .———.   .———.
| 2           0   3 |
.   .———.———.   .———.
|   | 2   2 | 3 |
.———.   .   .———.   .

init-time = 11.27s, solve-time = 4.22s, total-time = 15.49s
nb-facts=<Fact-44825>
Quasi-Loop max length = 32
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
