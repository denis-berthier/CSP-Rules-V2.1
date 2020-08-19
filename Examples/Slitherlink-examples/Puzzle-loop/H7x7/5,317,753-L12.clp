
(solve
7 7
2 . . . . . 3
2 2 2 2 . . 3 
2 . . . . 1 2 
2 2 . 0 . . 2
. 3 . 2 . 2 . 
1 2 . . 3 2 2 
2 . . 2 . 1 . 
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . . . . . 3
2 2 2 2 . . 3
2 . . . . 1 2
2 2 . 0 . . 2
. 3 . 2 . 2 .
1 2 . . 3 2 2
2 . . 2 . 1 .

start init-grid-structure 0.0120439529418945
start create-csp-variables
start create-labels 0.000730991363525391
start init-physical-csp-links 0.0059201717376709
start init-physical-non-csp-links 3.059730052948
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.842442035675049
     start init-physical-BN-non-csp-links at local time 3.06025195121765
     start init-physical-BP-non-csp-links at local time 5.55483913421631
     end init-physical-BP-non-csp-links at local time 41.2372379302979
end init-physical-non-csp-links 44.2970070838928
start init-corner-B-c-values 44.3093249797821
start init-outer-B-candidates 44.3093709945679
start init-outer-I-candidates 44.3101170063019
start init-H-candidates 44.3104391098022
start init-V-candidates 44.3122160434723
start init-P-candidates 44.3140270709991
start init-inner-I-candidates 44.3169779777527
start init-inner-N-and-B-candidates 44.318195104599
start solution 44.3235909938812
entering BRT
w[0]-0-in-r4c4 ==> Hr5c4 = 0, Hr4c4 = 0, Vr4c5 = 0, Vr4c4 = 0
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-2-in-sw-corner ==> Vr6c1 = 1, Hr8c2 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3-2+0-in-{r6c5...r5c4+r4c4} ==> Vr6c6 = 1, Vr5c4 = 1, Hr7c5 = 1, Hr5c3 = 1, Vr7c6 = 0, Hr7c6 = 0
w[1]-3-in-r5c2-hit-by-horiz-line-at-ne ==> Vr5c2 = 1, Hr6c2 = 1, Vr4c3 = 0
w[1]-3-in-r2c7-hit-by-verti-line-at-ne ==> Vr2c7 = 1, Hr3c7 = 1
w[1]-3-in-r1c7-hit-by-verti-line-at-sw ==> Hr2c6 = 0
w[1]-3-in-r6c5-closed-se-corner ==> Pr6c5 ≠ nw
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
w[1]-3-in-r5c2-asymmetric-se-corner ==> Hr5c2 = 1, Vr4c2 = 0, Hr5c1 = 0
w[1]-2-in-r4c1-open-se-corner ==> Hr4c1 = 1, Vr4c1 = 1, Vr3c1 = 0
adjacent-3s-in-c7{r1 r2} ==> Hr2c7 = 1
w[1]-3-in-r1c7-closed-se-corner ==> Pr1c7 ≠ se, Pr1c7 ≠ o
w[1]-3-in-r2c7-closed-nw-corner ==> Pr3c8 ≠ nw
P-single: Pr5c4 = sw
P-single: Pr6c3 = sw
H-single: Hr6c3 = 0
V-single: Vr5c3 = 0
V-single: Vr6c3 = 1
entering level Loop with <Fact-49233>
entering level Col with <Fact-49317>
no-vertical-line-r2{c7 c8} ==> Ir2c7 = out
vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir1c6 = in
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = in
vertical-line-r6{c0 c1} ==> Ir6c1 = in
no-vertical-line-r6{c1 c2} ==> Ir6c2 = in
vertical-line-r6{c2 c3} ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
no-vertical-line-r5{c2 c3} ==> Ir5c2 = out
vertical-line-r5{c1 c2} ==> Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
horizontal-line-{r3 r4}c1 ==> Ir3c1 = out
vertical-line-r2{c0 c1} ==> Ir2c1 = in
horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
same-colour-in-{r6 r7}c2 ==> Hr7c2 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
Starting_init_links_with_<Fact-49389>
1123 candidates, 3440 csp-links and 13113 links. Density = 2.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-82500>
whip[1]: Hr1c6{1 .} ==> Br1c6 ≠ esw, Br0c6 ≠ o, Br1c6 ≠ o, Pr1c6 ≠ o, Pr1c6 ≠ sw, Br1c6 ≠ e, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw
B-single: Br0c6 = s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ sw, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c5 ≠ o, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ ne
whip[1]: Br1c5{swn .} ==> Nr1c5 ≠ 0
whip[1]: Vr3c8{1 .} ==> Br3c7 ≠ sw, Br3c8 ≠ o, Pr4c8 ≠ sw, Br3c7 ≠ ns, Br3c7 ≠ nw
w[1]-3-in-r6c5-asymmetric-ne-corner ==> Vr6c5 = 1, Vr7c5 = 0, Hr7c4 = 0
w[1]-2-in-r7c4-open-ne-corner ==> Hr8c4 = 1, Vr7c4 = 1, Hr8c3 = 0
B-single: Br3c8 = w
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
vertical-line-r7{c3 c4} ==> Ir7c4 = in
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
no-vertical-line-r7{c5 c6} ==> Ir7c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
vertical-line-r6{c5 c6} ==> Ir6c5 = out
vertical-line-r6{c4 c5} ==> Ir6c4 = in
same-colour-in-{r5 r6}c4 ==> Hr6c4 = 0
P-single: Pr5c5 = se
H-single: Hr5c5 = 1
V-single: Vr5c5 = 1

LOOP[6]: Hr5c5-Vr5c5-Vr6c5-Hr7c5-Vr6c6- ==> Vr5c6 = 0
vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-vertical-line-r5{c5 c6} ==> Ir5c6 = out
different-colours-in-{r5 r6}c6 ==> Hr6c6 = 1
different-colours-in-r6{c3 c4} ==> Hr6c4 = 1

LOOP[8]: Vr6c4-Vr5c4-Hr5c3-Hr5c2-Vr5c2-Hr6c2-Vr6c3- ==> Hr7c3 = 0
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
whip[1]: Vr6c5{1 .} ==> Br6c4 ≠ o, Pr6c5 ≠ ne, Pr6c5 ≠ ew, Pr7c5 ≠ o, Pr7c5 ≠ se, Pr7c5 ≠ ew, Br6c4 ≠ n, Br6c4 ≠ s, Br6c4 ≠ w, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c4 ≠ sw, Br6c4 ≠ swn, Br6c5 ≠ nes
whip[1]: Br6c5{wne .} ==> Pr7c6 ≠ o, Pr7c6 ≠ se
whip[1]: Pr7c6{sw .} ==> Br6c6 ≠ sw, Br7c5 ≠ sw, Br7c5 ≠ o, Br7c5 ≠ s, Br7c5 ≠ w
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Pr7c5{nw .} ==> Br7c4 ≠ ne, Br7c5 ≠ nw, Br7c5 ≠ swn, Br7c5 ≠ wne
whip[1]: Pr6c5{sw .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c5 ≠ se, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ nes, Br6c5 ≠ swn, Br6c5 ≠ wne, Br5c5 ≠ s, Br5c5 ≠ ns
B-single: Br6c5 = esw
P-single: Pr8c4 = ne
P-single: Pr7c5 = ne
P-single: Pr7c6 = nw
w[1]-1-in-r7c6-symmetric-nw-corner ==> Pr8c7 ≠ nw, Pr8c7 ≠ o
whip[1]: Pr8c4{ne .} ==> Br7c3 ≠ n, Br7c3 ≠ o, Br8c4 ≠ o, Br8c3 ≠ n, Br7c3 ≠ s, Br7c3 ≠ w, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ nes, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew
B-single: Br7c4 = sw
P-single: Pr8c5 = ew
B-single: Br8c3 = o
B-single: Br8c4 = n
whip[1]: Pr8c5{ew .} ==> Br7c5 ≠ ne, Br7c5 ≠ e, Br7c5 ≠ n, Br8c5 ≠ o, Br7c5 ≠ ew, Br7c5 ≠ esw
B-single: Br8c5 = n
w[1]-1-in-r7c6-asymmetric-sw-corner ==> Pr7c7 ≠ ew, Pr7c7 ≠ se, Pr7c7 ≠ ns
whip[1]: Pr5c6{sw .} ==> Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ esw, Br4c5 ≠ nes, Br5c6 ≠ nw, Br5c6 ≠ se, Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ w
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Pr7c8{sw .} ==> Vr7c8 ≠ 0, Br6c7 ≠ nw, Br6c7 ≠ se, Br7c7 ≠ nw, Br7c7 ≠ o, Br7c7 ≠ n, Br7c7 ≠ w
V-single: Vr7c8 = 1
vertical-line-r7{c7 c8} ==> Ir7c7 = in
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
same-colour-in-r7{c6 c7} ==> Vr7c7 = 0
whip[1]: Vr7c8{1 .} ==> Br7c8 ≠ o, Pr8c8 ≠ o
P-single: Pr8c8 = nw
B-single: Br7c8 = w
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ o
B-single: Br8c7 = n
whip[1]: Vr7c7{0 .} ==> Pr8c7 ≠ ne, Pr7c7 ≠ sw, Br7c6 ≠ e, Br7c7 ≠ esw
P-single: Pr8c7 = ew
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ w, Br7c6 ≠ n, Br8c6 ≠ o
B-single: Br8c6 = n
P-single: Pr8c6 = ew
B-single: Br7c6 = s
whip[1]: Pr8c6{ew .} ==> Br7c5 ≠ se, Br7c5 ≠ nes
B-single: Br7c5 = ns
N-single: Nr7c5 = 2
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0, Nr7c7 ≠ 1
whip[1]: Pr7c7{ne .} ==> Br6c6 ≠ ns, Br6c6 ≠ se, Br6c7 ≠ ns, Br6c7 ≠ ew
whip[1]: Pr6c7{ew .} ==> Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ swn, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ e, Br5c7 ≠ ne, Br6c6 ≠ ne
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Pr6c8{sw .} ==> Vr5c8 ≠ 1, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ wne, Br5c7 ≠ nes
V-single: Vr5c8 = 0
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
same-colour-in-r5{c6 c7} ==> Vr5c7 = 0
w[1]-diagonal-3-2-in-{r6c5...r5c6}-non-closed-ne-corner ==> Hr5c6 = 1
horizontal-line-{r4 r5}c6 ==> Ir4c6 = in
same-colour-in-r4{c5 c6} ==> Vr4c6 = 0
same-colour-in-{r3 r4}c6 ==> Hr4c6 = 0
whip[1]: Vr5c8{0 .} ==> Br5c8 ≠ w, Pr5c8 ≠ ns, Pr5c8 ≠ sw
B-single: Br5c8 = o
w[1]-1-in-r3c6-symmetric-se-corner ==> Pr3c6 ≠ se, Pr3c6 ≠ nw, Pr3c6 ≠ o
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ esw, Br2c5 ≠ nes, Br2c5 ≠ o, Br2c5 ≠ n, Br2c5 ≠ w, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Br3c6{w .} ==> Pr3c7 ≠ ns, Pr4c6 ≠ ne, Pr4c7 ≠ nw, Pr3c7 ≠ sw, Pr4c6 ≠ se, Pr4c6 ≠ ew
whip[1]: Pr4c6{sw .} ==> Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c6 ≠ n, Br4c6 ≠ ne, Br4c6 ≠ ns
whip[1]: Pr3c7{ew .} ==> Br3c7 ≠ ew
whip[1]: Pr4c7{se .} ==> Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ ew, Br4c7 ≠ sw
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0
whip[1]: Vr5c7{0 .} ==> Pr5c7 ≠ ns, Pr5c7 ≠ se, Pr6c7 ≠ ns, Br5c6 ≠ ne, Br5c6 ≠ ew, Br5c7 ≠ w, Br5c7 ≠ nw
P-single: Pr6c7 = ew
H-single: Hr6c7 = 1
V-single: Vr6c7 = 0
P-single: Pr6c6 = se
P-single: Pr6c8 = sw
V-single: Vr6c8 = 1
P-single: Pr7c7 = o
H-single: Hr7c7 = 0
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
whip[1]: Pr6c7{ew .} ==> Br6c6 ≠ ew, Br6c7 ≠ sw
B-single: Br6c7 = ne
P-single: Pr7c8 = ns
B-single: Br6c6 = nw
whip[1]: Pr7c8{ns .} ==> Br7c7 ≠ nes
B-single: Br7c7 = se
N-single: Nr7c7 = 2
whip[1]: Pr6c6{se .} ==> Br5c5 ≠ e, Br5c5 ≠ ne, Br5c5 ≠ ew, Br5c5 ≠ wne, Br5c6 ≠ sw
B-single: Br5c6 = ns
whip[1]: Pr5c6{ew .} ==> Br4c6 ≠ ew, Br4c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ w
whip[1]: Br4c6{esw .} ==> Nr4c6 ≠ 0
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 3
whip[1]: Vr6c8{1 .} ==> Br6c8 ≠ o
B-single: Br6c8 = w
whip[1]: Br5c7{ns .} ==> Nr5c7 ≠ 3
whip[1]: Vr4c6{0 .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ sw, Pr5c6 ≠ ne, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ ew, Br4c5 ≠ wne, Br4c6 ≠ sw, Br4c6 ≠ esw
P-single: Pr5c6 = ew
whip[1]: Pr5c6{ew .} ==> Br5c5 ≠ w, Br5c5 ≠ o
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 0
whip[1]: Br4c6{se .} ==> Nr4c6 ≠ 3
whip[1]: Pr4c6{nw .} ==> Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ e, Br3c5 ≠ s
whip[1]: Pr8c3{nw .} ==> Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c2 ≠ e, Br7c2 ≠ s
whip[1]: Pr7c4{sw .} ==> Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ esw, Br6c3 ≠ nes, Br6c4 ≠ se, Br6c4 ≠ esw, Br6c4 ≠ nes, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ w
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 0
whip[1]: Br7c3{wne .} ==> Nr7c3 ≠ 0
whip[1]: Hr6c4{0 .} ==> Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c5 ≠ sw, Br5c4 ≠ ns, Br5c4 ≠ sw, Br6c4 ≠ ne, Br6c4 ≠ wne
P-single: Pr6c5 = ns
whip[1]: Pr6c5{ns .} ==> Br5c5 ≠ n
B-single: Br5c5 = nw
N-single: Nr5c5 = 2
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 3
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ w, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c4 ≠ ne, Br6c3 ≠ ne, Br6c3 ≠ sw, Br6c3 ≠ wne, Br5c3 ≠ o, Br5c3 ≠ n, Br5c3 ≠ s, Br6c3 ≠ s
B-single: Br5c4 = ew
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ sw, Br4c5 ≠ swn
whip[1]: Br4c5{ns .} ==> Nr4c5 ≠ 3
whip[1]: Vr6c4{1 .} ==> Pr6c4 ≠ nw, Pr7c4 ≠ sw, Br6c3 ≠ ns, Br6c3 ≠ swn, Br6c4 ≠ e
P-single: Pr7c4 = ns
P-single: Pr6c4 = ns
B-single: Br6c4 = ew
N-single: Nr6c4 = 2
whip[1]: Pr7c4{ns .} ==> Br7c3 ≠ ne, Br7c3 ≠ wne
whip[1]: Br7c3{ew .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ew, Nr7c3 ≠ 3
whip[1]: Pr7c3{sw .} ==> Br6c2 ≠ nw, Br6c2 ≠ se, Br7c2 ≠ nw, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ w, Br7c3 ≠ e
B-single: Br7c3 = ew
N-single: Nr7c3 = 2
P-single: Pr8c3 = nw
whip[1]: Pr8c3{nw .} ==> Br8c2 ≠ o
B-single: Br8c2 = n
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0, Nr7c2 ≠ 1
whip[1]: Pr6c4{ns .} ==> Br5c3 ≠ se, Br5c3 ≠ esw, Br5c3 ≠ nes
whip[1]: Br6c3{ew .} ==> Nr6c3 ≠ 3
whip[1]: Vr5c1{1 .} ==> Br5c1 ≠ nes, Br5c0 ≠ o, Br5c1 ≠ o, Pr6c1 ≠ o, Pr6c1 ≠ se, Br5c1 ≠ n, Br5c1 ≠ e, Br5c1 ≠ s, Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ se
B-single: Br5c0 = e
w[1]-1-in-r6c1-asymmetric-nw-corner ==> Pr7c2 ≠ sw
P-single: Pr7c2 = o
H-single: Hr7c1 = 0
V-single: Vr7c2 = 0
w[1]-2-in-r7c1-open-ne-corner ==> Hr8c1 = 1, Vr7c1 = 1
P-single: Pr8c1 = ne
vertical-line-r7{c0 c1} ==> Ir7c1 = in
whip[1]: Pr7c2{o .} ==> Br6c1 ≠ e, Br6c1 ≠ s, Br6c2 ≠ ns, Br6c2 ≠ ew, Br6c2 ≠ sw, Br7c1 ≠ ne, Br7c2 ≠ esw, Br7c2 ≠ nes
B-single: Br7c2 = se
N-single: Nr7c2 = 2
P-single: Pr8c2 = ew
P-single: Pr7c3 = ns
B-single: Br7c1 = sw
P-single: Pr7c1 = ns
B-single: Br6c2 = ne
w[1]-1-in-r6c1-asymmetric-sw-corner ==> Pr6c2 ≠ ew
P-single: Pr6c2 = ne
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Pr7c3{ns .} ==> Br6c3 ≠ e
B-single: Br6c3 = ew
N-single: Nr6c3 = 2
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ n
B-single: Br6c1 = w
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ sw, Br5c1 ≠ esw, Br5c1 ≠ swn
whip[1]: Br5c1{wne .} ==> Nr5c1 ≠ 0
whip[1]: Pr6c2{ne .} ==> Br5c1 ≠ w, Br5c1 ≠ nw, Br5c2 ≠ wne, Br5c2 ≠ nes
whip[1]: Br5c2{swn .} ==> Pr5c2 ≠ ew
whip[1]: Pr5c2{se .} ==> Br4c1 ≠ ns, Br4c1 ≠ se, Br4c1 ≠ sw, Br4c2 ≠ ne, Br4c2 ≠ sw, Br5c1 ≠ wne
B-single: Br5c1 = ew
N-single: Nr5c1 = 2
P-single: Pr5c1 = ns
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ ne
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Hr3c1{1 .} ==> Br3c1 ≠ sw, Pr3c1 ≠ ns, Pr3c2 ≠ ns, Pr3c2 ≠ se, Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ ew, Br3c1 ≠ se, Br3c1 ≠ ew
P-single: Pr3c2 = ew
H-single: Hr3c2 = 1
V-single: Vr2c2 = 0
V-single: Vr3c2 = 0
P-single: Pr3c3 = nw
H-single: Hr3c3 = 0
V-single: Vr2c3 = 1
V-single: Vr3c3 = 0
P-single: Pr2c1 = ns
H-single: Hr2c1 = 0
V-single: Vr1c1 = 1
P-single: Pr1c1 = se
H-single: Hr1c1 = 1
P-single: Pr2c2 = o
H-single: Hr2c2 = 0
V-single: Vr1c2 = 0
P-single: Pr3c1 = ne

LOOP[8]: Vr2c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2- ==> Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
vertical-line-r2{c2 c3} ==> Ir2c3 = out
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
different-colours-in-r3{c3 c4} ==> Hr3c4 = 1
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1

LOOP[10]: Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Hr3c1-Hr3c2-Vr2c3-Hr2c3- ==> Vr1c4 = 0
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
whip[1]: Pr3c2{ew .} ==> Br3c2 ≠ w, Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ o, Br3c1 ≠ ne, Br2c2 ≠ ne, Br2c1 ≠ se, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne
whip[1]: Br3c2{nes .} ==> Pr4c2 ≠ ns, Nr3c2 ≠ 0
P-single: Pr4c2 = ew
whip[1]: Pr4c2{ew .} ==> Br3c2 ≠ ne, Br3c2 ≠ n, Br3c1 ≠ nw, Br4c1 ≠ ew, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew
B-single: Br4c2 = ns
P-single: Pr4c1 = se
P-single: Pr5c2 = se
P-single: Pr5c3 = ew
B-single: Br4c1 = nw
B-single: Br3c1 = ns
whip[1]: Pr5c2{se .} ==> Br5c2 ≠ esw
B-single: Br5c2 = swn
whip[1]: Pr5c3{ew .} ==> Br5c3 ≠ e, Br4c3 ≠ ne, Br4c3 ≠ w, Br4c3 ≠ e, Br4c3 ≠ n, Br4c3 ≠ o, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br5c3 ≠ ew, Br5c3 ≠ wne
B-single: Br5c3 = ne
N-single: Nr5c3 = 2
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ e, Br3c3 ≠ ne
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 1
whip[1]: Pr3c3{nw .} ==> Br2c2 ≠ ns, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ sw, Br3c2 ≠ nes, Br3c3 ≠ w, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ ew, Br3c3 ≠ wne, Br3c3 ≠ nes
B-single: Br3c2 = ns
N-single: Nr3c2 = 2
P-single: Pr4c3 = ew
B-single: Br2c2 = se
whip[1]: Pr4c3{ew .} ==> Br4c3 ≠ s, Br4c3 ≠ se
whip[1]: Br4c3{nes .} ==> Pr4c4 ≠ o, Nr4c3 ≠ 1
P-single: Pr4c4 = nw
whip[1]: Pr4c4{nw .} ==> Br3c4 ≠ s, Br3c4 ≠ e, Br3c4 ≠ n, Br3c4 ≠ o, Br3c3 ≠ s, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ nes, Br4c3 ≠ nes
B-single: Br4c3 = ns
N-single: Nr4c3 = 2
B-single: Br3c3 = se
N-single: Nr3c3 = 2
whip[1]: Pr2c5{ew .} ==> Br1c5 ≠ esw, Br1c5 ≠ swn, Br2c4 ≠ sw, Br1c5 ≠ n, Br1c5 ≠ e, Br2c4 ≠ ne
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 1, Nr1c5 ≠ 3
N-single: Nr1c5 = 2
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr2c3{se .} ==> Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ nes, Br1c3 ≠ ne, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c2 ≠ s, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ e
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr2c1{ns .} ==> Br1c1 ≠ se, Br2c1 ≠ ns
B-single: Br2c1 = sw
B-single: Br1c1 = nw
P-single: Pr1c2 = ew
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ e, Br1c2 ≠ o, Br1c2 ≠ nw, Br1c2 ≠ ew, Br1c2 ≠ wne
whip[1]: Br1c2{ne .} ==> Pr1c3 ≠ o, Pr1c3 ≠ se, Nr1c2 ≠ 0, Nr1c2 ≠ 3
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ wne, Br1c3 ≠ s
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Vr1c3{0 .} ==> Pr1c3 ≠ sw, Pr2c3 ≠ ns, Br1c2 ≠ ne, Br1c3 ≠ w, Br1c3 ≠ ew
P-single: Pr3c4 = se
H-single: Hr3c4 = 1
V-single: Vr2c4 = 0
P-single: Pr2c3 = se
P-single: Pr1c3 = ew
B-single: Br1c2 = n
N-single: Nr1c2 = 1
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1

LOOP[12]: Hr2c4-Hr2c3-Vr2c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4- ==> Vr1c5 = 0
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ w, Br2c3 ≠ ew, Br2c4 ≠ nw, Br2c4 ≠ ew, Br3c4 ≠ ew
B-single: Br2c3 = nw
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ o, Br1c4 ≠ n, Br1c4 ≠ e, Br1c4 ≠ ne
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Br3c4{wne .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ns, Nr3c4 ≠ 1
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ sw, Br2c5 ≠ swn, Br3c5 ≠ nw
whip[1]: Hr2c4{1 .} ==> Pr2c4 ≠ nw, Pr2c5 ≠ ns, Pr2c5 ≠ se, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ wne, Br2c4 ≠ se
P-single: Pr2c4 = ew
B-single: Br2c4 = ns
V-single: Vr2c5 = 0
no-vertical-line-r2{c4 c5} ==> Ir2c5 = out
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ nes
B-single: Br1c3 = ns
N-single: Nr1c3 = 2
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ s, Br1c4 ≠ se
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 1
whip[1]: Vr2c5{0 .} ==> Br2c5 ≠ ew, Br2c5 ≠ wne
whip[1]: Br2c5{ns .} ==> Nr2c5 ≠ 3
whip[1]: Vr2c6{1 .} ==> Br2c6 ≠ o, Pr2c6 ≠ ne, Pr2c6 ≠ ew, Pr3c6 ≠ ew, Pr3c6 ≠ sw, Br2c5 ≠ s, Br2c5 ≠ ns, Br2c6 ≠ n, Br2c6 ≠ e, Br2c6 ≠ s, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ se, Br2c6 ≠ nes
whip[1]: Br2c6{wne .} ==> Nr2c6 ≠ 0
whip[1]: Br2c5{ne .} ==> Hr3c5 ≠ 1, Pr3c5 ≠ ew
H-single: Hr3c5 = 0
P-single: Pr3c5 = sw
V-single: Vr3c5 = 1
vertical-line-r3{c4 c5} ==> Ir3c5 = out
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
different-colours-in-{r3 r4}c5 ==> Hr4c5 = 1
whip[1]: Hr3c5{0 .} ==> Br3c5 ≠ n, Br3c5 ≠ nes
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ o, Br3c4 ≠ nw, Br3c5 ≠ se
B-single: Br3c4 = wne
N-single: Nr3c4 = 3
P-single: Pr4c5 = ne
whip[1]: Pr4c5{ne .} ==> Br3c5 ≠ w, Br4c5 ≠ s
B-single: Br4c5 = ns
N-single: Nr4c5 = 2
P-single: Pr4c6 = nw
B-single: Br3c5 = esw
N-single: Nr3c5 = 3
P-single: Pr3c6 = ns
w[1]-1-in-r3c6-asymmetric-sw-corner ==> Pr3c7 ≠ ew, Pr3c7 ≠ nw
whip[1]: Pr4c6{nw .} ==> Br3c6 ≠ n
B-single: Br3c6 = w
whip[1]: Pr3c6{ns .} ==> Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn
whip[1]: Pr3c7{ne .} ==> Br2c7 ≠ wne, Br2c7 ≠ nes
whip[1]: Br2c7{swn .} ==> Pr3c8 ≠ ns, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Pr3c7 ≠ o
P-single: Pr4c8 = ns
H-single: Hr4c7 = 0
V-single: Vr4c8 = 1
P-single: Pr5c8 = nw
H-single: Hr5c7 = 1
P-single: Pr4c7 = o
V-single: Vr4c7 = 0
P-single: Pr3c7 = ne
P-single: Pr3c8 = sw
no-vertical-line-r4{c6 c7} ==> Ir4c7 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXXXX
XXOOOXO
OOOXOXX
XXXXXXX
XOOXOOO
XXOXOXX
XXOXXXX

.———.———.———.———.———.———.———.
| 2                       3 |
.   .   .———.———.———.   .———.
| 2   2 | 2   2     |   | 3
.———.———.   .———.   .   .———.
  2         |   |   | 1   2 |
.———.———.———.   .———.   .   .
| 2   2       0           2 |
.   .———.———.   .———.———.———.
|   | 3     | 2 |     2
.   .———.   .   .   .———.———.
| 1   2 |   |   | 3 | 2   2 |
.   .   .   .   .———.   .   .
| 2     |   | 2       1     |
.———.———.   .———.———.———.———.

init-time = 44.32s, solve-time = 22.67s, total-time = 1m 7.0s
nb-facts=<Fact-89193>
Quasi-Loop max length = 12
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
