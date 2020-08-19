
(solve
10 10
3 . 3 . . . . . 2 2
. 2 . . 3 . 3 3 . .
. . . . . . 2 1 . 1
. 3 1 3 . 3 2 2 . 2
3 . . . . 1 2 . . .
2 . . 2 . . . . 3 .
. 3 . . 1 . . 3 . 1
. . . . . 3 . 2 . 3
3 1 3 . 3 . . . . .
. . . 2 . . . . . 3

)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . 3 . . . . . 2 2
. 2 . . 3 . 3 3 . .
. . . . . . 2 1 . 1
. 3 1 3 . 3 2 2 . 2
3 . . . . 1 2 . . .
2 . . 2 . . . . 3 .
. 3 . . 1 . . 3 . 1
. . . . . 3 . 2 . 3
3 1 3 . 3 . . . . .
. . . 2 . . . . . 3

start init-grid-structure 0.0245189666748047
start create-csp-variables
start create-labels 0.00133395195007324
start init-physical-csp-links 0.0102758407592773
start init-physical-non-csp-links 11.196564912796
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.00919103622437
     start init-physical-BN-non-csp-links at local time 11.2775220870972
     start init-physical-BP-non-csp-links at local time 20.6243109703064
     end init-physical-BP-non-csp-links at local time 253.004217147827
end init-physical-non-csp-links 264.200834989548
start init-corner-B-c-values 264.225601911545
start init-outer-B-candidates 264.225656986237
start init-outer-I-candidates 264.226428985596
start init-H-candidates 264.226885795593
start init-V-candidates 264.230613946915
start init-P-candidates 264.234174013138
start init-inner-I-candidates 264.241058826447
start init-inner-N-and-B-candidates 264.243505001068
start solution 264.256782054901
entering BRT
w[1]-3-in-se-corner ==> Vr10c11 = 1, Hr11c10 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-2-in-ne-corner ==> Vr2c11 = 1, Hr1c9 = 1
w[1]-diagonal-3s-in-{r8c6...r9c5} ==> Vr8c7 = 1, Vr9c5 = 1, Hr10c5 = 1, Hr8c6 = 1, Vr7c7 = 0, Vr10c5 = 0, Hr10c4 = 0, Hr8c7 = 0
w[1]-2-in-r10c4-open-ne-corner ==> Hr11c4 = 1, Vr10c4 = 1, Hr11c3 = 0
w[1]-diagonal-3s-in-{r6c9...r7c8} ==> Vr6c10 = 1, Vr7c8 = 1, Hr8c8 = 1, Hr6c9 = 1, Vr5c10 = 0, Vr8c8 = 0, Hr6c10 = 0
w[1]-diagonal-3s-in-{r4c2...r5c1} ==> Vr4c3 = 1, Vr5c1 = 1, Hr6c1 = 1, Hr4c2 = 1, Vr3c3 = 0, Vr6c1 = 0, Hr4c3 = 0
w[1]-diagonal-3-2-3-in-{r2c8...r4c6} ==> Vr2c9 = 1, Vr4c6 = 1, Hr5c6 = 1, Hr2c8 = 1, Vr1c9 = 0, Vr5c6 = 0, Hr5c5 = 0, Hr2c9 = 0
w[1]-2-in-r1c9-open-sw-corner ==> Vr1c10 = 1, Hr1c10 = 0
w[1]-diagonal-3-2-in-{r7c2...r6c1}-non-closed-nw-corner ==> Vr7c3 = 1, Hr8c2 = 1, Vr8c3 = 0, Hr8c3 = 0
w[1]-diagonal-3-2-in-{r9c3...r10c4}-non-closed-se-corner ==> Vr9c3 = 1, Hr9c3 = 1, Hr9c2 = 0
w[1]-3-in-r2c7-hit-by-horiz-line-at-ne ==> Vr2c7 = 1, Hr3c7 = 1, Vr1c8 = 0
w[1]-diagonal-3-2-in-{r2c8...r3c7}-non-closed-sw-corner ==> Hr4c7 = 1
w[1]-3-in-r2c8-hit-by-horiz-line-at-sw ==> Vr3c8 = 0
w[1]-adjacent-1-3-on-edge-in-{r7 r8}c10 ==> Vr8c11 = 1, Vr7c10 = 0, Hr7c10 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r9{c2 c3} ==> Vr9c2 = 0, Hr10c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r5 r4}c6 ==> Vr5c7 = 0, Hr6c6 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r4{c3 c2} ==> Vr4c4 = 0, Hr5c3 = 0
w[1]-3-in-r10c10-closed-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-3-in-r9c5-closed-sw-corner ==> Pr9c6 ≠ sw, Pr9c6 ≠ ne, Pr9c6 ≠ o
w[1]-3-in-r7c8-closed-sw-corner ==> Pr7c9 ≠ sw, Pr7c9 ≠ ne, Pr7c9 ≠ o
w[1]-3-in-r7c2-closed-se-corner ==> Pr7c2 ≠ nw
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r6c9-isolated-at-se-corner ==> Hr7c9 = 1
w[1]-3-in-r7c8-hit-by-horiz-line-at-ne ==> Vr6c9 = 0
w[1]-3-in-r6c9-closed-se-corner ==> Pr6c9 ≠ se, Pr6c9 ≠ nw, Pr6c9 ≠ o
adjacent-3s-in-r2{c7 c8} ==> Vr2c8 = 1
w[1]-3-in-r2c7-closed-se-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ o
w[1]-3-in-r2c8-closed-nw-corner ==> Pr3c9 ≠ se, Pr3c9 ≠ nw, Pr3c9 ≠ o
P-single: Pr2c10 = ne
H-single: Hr2c10 = 1
V-single: Vr2c10 = 0
P-single: Pr1c11 = o
entering level Loop with <Fact-93441>
entering level Col with <Fact-93521>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
vertical-line-r8{c10 c11} ==> Ir8c10 = in
vertical-line-r2{c10 c11} ==> Ir2c10 = in
no-vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
no-vertical-line-r1{c7 c8} ==> Ir1c7 = in
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = in
vertical-line-r2{c6 c7} ==> Ir2c6 = out
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
no-vertical-line-r3{c6 c7} ==> Ir3c7 = out
no-vertical-line-r3{c7 c8} ==> Ir3c8 = out
no-horizontal-line-{r2 r3}c8 ==> Ir2c8 = out
horizontal-line-{r3 r4}c7 ==> Ir4c7 = in
vertical-line-r1{c9 c10} ==> Ir1c10 = out
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
no-vertical-line-r10{c4 c5} ==> Ir10c5 = in
horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
vertical-line-r9{c4 c5} ==> Ir9c4 = in
vertical-line-r10{c3 c4} ==> Ir10c3 = out
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
Starting_init_links_with_<Fact-93552>
2598 candidates, 8999 csp-links and 36505 links. Density = 1.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-184565>
whip[1]: Hr1c8{1 .} ==> Br1c8 ≠ esw, Br0c8 ≠ o, Br1c8 ≠ o, Pr1c8 ≠ o, Pr1c8 ≠ sw, Br1c8 ≠ e, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ sw
B-single: Br0c8 = s
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ sw, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c7 ≠ o, Br1c7 ≠ s, Br1c7 ≠ w, Br1c7 ≠ ne
whip[1]: Br1c7{swn .} ==> Nr1c7 ≠ 0
whip[1]: Hr1c7{1 .} ==> Br1c7 ≠ esw, Br0c7 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ sw, Pr1c8 ≠ se, Br1c7 ≠ e, Br1c7 ≠ se, Br1c7 ≠ ew
P-single: Pr1c8 = ew
B-single: Br0c7 = s
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ nw, Br1c8 ≠ swn, Br1c8 ≠ wne
whip[1]: Br1c8{nes .} ==> Pr2c8 ≠ ns, Pr2c8 ≠ nw
whip[1]: Pr2c8{ew .} ==> Br2c7 ≠ wne, Br2c7 ≠ nes, Br2c8 ≠ esw, Br1c8 ≠ n, Br1c8 ≠ ne
whip[1]: Br1c8{nes .} ==> Pr2c9 ≠ o, Pr2c9 ≠ ns, Pr2c9 ≠ se, Nr1c8 ≠ 1
whip[1]: Pr2c9{sw .} ==> Br1c9 ≠ sw, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne
whip[1]: Br2c7{swn .} ==> Pr2c7 ≠ ne, Pr2c7 ≠ ew, Pr3c7 ≠ ns, Pr3c7 ≠ ew, Pr3c7 ≠ sw, Pr3c8 ≠ ns, Pr3c8 ≠ se
P-single: Pr3c7 = ne
whip[1]: Pr3c7{ne .} ==> Br3c6 ≠ n, Br2c6 ≠ n, Br2c6 ≠ o, Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ nes, Br3c6 ≠ e, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ sw
whip[1]: Br3c7{ns .} ==> Pr4c7 ≠ ns, Pr4c7 ≠ nw
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ sw, Br3c7 ≠ ne
B-single: Br3c7 = ns
whip[1]: Pr4c8{sw .} ==> Br4c8 ≠ nw, Br4c8 ≠ se, Br3c8 ≠ w
whip[1]: Br3c8{s .} ==> Pr3c9 ≠ sw, Pr4c9 ≠ nw
whip[1]: Pr3c9{ew .} ==> Br2c8 ≠ nes, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ swn, Br3c9 ≠ wne, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ e, Br2c9 ≠ ne, Br3c9 ≠ o, Br3c9 ≠ e, Br3c9 ≠ s
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Br2c9{nes .} ==> Nr2c9 ≠ 0
whip[1]: Br2c8{wne .} ==> Pr2c8 ≠ ew, Pr3c8 ≠ ew
P-single: Pr3c8 = nw
P-single: Pr2c8 = se
w[1]-1-in-r3c8-symmetric-nw-corner ==> Pr4c9 ≠ se, Pr4c9 ≠ o
whip[1]: Pr3c8{nw .} ==> Br3c8 ≠ n, Br2c7 ≠ swn, Br2c8 ≠ swn
B-single: Br2c8 = wne
P-single: Pr1c10 = sw
P-single: Pr2c9 = sw
B-single: Br2c7 = esw
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ ew
B-single: Br1c9 = ne
P-single: Pr1c9 = ew
B-single: Br1c10 = sw
P-single: Pr2c11 = sw
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ nes
B-single: Br1c8 = ns
N-single: Nr1c8 = 2
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ w, Br2c10 ≠ s, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn
whip[1]: Br2c10{nes .} ==> Pr3c11 ≠ o, Pr3c11 ≠ sw, Pr3c10 ≠ ne, Nr2c10 ≠ 0, Nr2c10 ≠ 1
w[1]-1-in-r3c10-asymmetric-ne-corner ==> Pr4c10 ≠ ew, Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ ns
whip[1]: Pr4c10{sw .} ==> Br3c9 ≠ esw, Br3c9 ≠ nes, Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ esw, Br4c9 ≠ swn, Br4c10 ≠ nw, Br3c10 ≠ s, Br3c10 ≠ w, Br4c9 ≠ n, Br4c9 ≠ e, Br4c9 ≠ ns
whip[1]: Br3c10{e .} ==> Hr4c10 ≠ 1, Vr3c10 ≠ 1, Pr4c10 ≠ ne, Pr4c11 ≠ nw, Pr4c11 ≠ sw, Pr3c10 ≠ ns, Pr3c10 ≠ se, Pr3c10 ≠ sw
V-single: Vr3c10 = 0
H-single: Hr4c10 = 0
whip[1]: Vr3c10{0 .} ==> Br3c9 ≠ ne, Br3c9 ≠ ew
whip[1]: Br3c9{sw .} ==> Nr3c9 ≠ 3
whip[1]: Hr4c10{0 .} ==> Br4c10 ≠ ne, Br4c10 ≠ ns
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c9 ≠ ne
whip[1]: Pr5c11{sw .} ==> Br5c10 ≠ sw, Br5c10 ≠ o, Br5c10 ≠ s, Br5c10 ≠ w
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ ew
whip[1]: Pr2c9{sw .} ==> Br2c9 ≠ ns, Br2c9 ≠ s, Br2c9 ≠ se, Br2c9 ≠ nes
whip[1]: Pr2c8{se .} ==> Br1c7 ≠ ns, Br1c7 ≠ swn
whip[1]: Br1c7{nw .} ==> Nr1c7 ≠ 3
whip[1]: Pr4c9{sw .} ==> Br4c9 ≠ wne, Br4c9 ≠ o, Br4c9 ≠ s
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Br4c7{nw .} ==> Pr5c7 ≠ ne, Pr5c8 ≠ nw
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ sw, Br5c7 ≠ sw, Br5c8 ≠ se, Br5c8 ≠ o, Br5c8 ≠ e, Br5c8 ≠ s
whip[1]: Br5c8{nes .} ==> Nr5c8 ≠ 0
whip[1]: Br4c8{ew .} ==> Pr4c9 ≠ ne
whip[1]: Pr4c9{sw .} ==> Br3c9 ≠ sw
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ nw
whip[1]: Br4c6{swn .} ==> Pr4c6 ≠ o, Pr4c6 ≠ ne, Pr4c6 ≠ nw, Pr4c6 ≠ ew, Pr5c6 ≠ o, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Pr5c7 ≠ o, Pr5c7 ≠ ns
P-single: Pr5c6 = ne
w[1]-1-in-r5c6-asymmetric-nw-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ew, Pr6c7 ≠ ns
whip[1]: Pr5c6{ne .} ==> Br5c5 ≠ n, Br4c5 ≠ n, Br4c5 ≠ o, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ nes, Br5c5 ≠ e, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ e, Br5c6 ≠ s, Br5c6 ≠ w
B-single: Br5c6 = n
P-single: Pr4c8 = ew
H-single: Hr4c8 = 1
V-single: Vr4c8 = 0
w[1]-1-in-r3c8-asymmetric-sw-corner ==> Pr3c9 ≠ ns
P-single: Pr3c9 = ne
H-single: Hr3c9 = 1
V-single: Vr3c9 = 0
no-vertical-line-r3{c8 c9} ==> Ir3c9 = out
no-vertical-line-r3{c9 c10} ==> Ir3c10 = out
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
no-vertical-line-r4{c7 c8} ==> Ir4c8 = in
same-colour-in-r4{c10 c11} ==> Vr4c11 = 0
w[1]-2-in-r4c10-open-ne-corner ==> Hr5c10 = 1, Vr4c10 = 1, Hr5c9 = 0
P-single: Pr4c10 = sw
H-single: Hr4c9 = 1
horizontal-line-{r3 r4}c9 ==> Ir4c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
no-horizontal-line-{r6 r7}c10 ==> Ir7c10 = in
no-vertical-line-r7{c9 c10} ==> Ir7c9 = in
horizontal-line-{r6 r7}c9 ==> Ir6c9 = out
no-vertical-line-r6{c8 c9} ==> Ir6c8 = out
same-colour-in-{r7 r8}c10 ==> Hr8c10 = 0
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-ne ==> Vr8c10 = 1, Hr9c10 = 1
w[1]-3-in-r8c10-closed-se-corner ==> Pr8c10 ≠ se, Pr8c10 ≠ nw, Pr8c10 ≠ o
w[1]-3-in-r8c10-closed-sw-corner ==> Pr8c11 ≠ sw, Pr8c11 ≠ o
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
no-vertical-line-r9{c9 c10} ==> Ir9c9 = out
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = out
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1
w[1]-3-in-r7c8-hit-by-horiz-line-at-se ==> Hr7c8 = 1, Vr8c9 = 0
w[1]-3-in-r6c9-hit-by-horiz-line-at-sw ==> Vr7c9 = 0
w[1]-3-in-r7c8-closed-nw-corner ==> Pr8c9 ≠ se, Pr8c9 ≠ nw
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
vertical-line-r7{c7 c8} ==> Ir7c7 = out
no-vertical-line-r7{c6 c7} ==> Ir7c6 = out
horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
vertical-line-r8{c6 c7} ==> Ir8c7 = out
no-vertical-line-r8{c7 c8} ==> Ir8c8 = out
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = out
different-colours-in-{r9 r10}c10 ==> Hr10c10 = 1
w[1]-3-in-r10c10-closed-ne-corner ==> Pr11c10 ≠ ne, Pr11c10 ≠ o
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-r4{c8 c9} ==> Vr4c9 = 0
P-single: Pr6c7 = se
H-single: Hr6c7 = 1
V-single: Vr6c7 = 1
vertical-line-r6{c6 c7} ==> Ir6c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir5c6 = in
no-vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-vertical-line-r5{c6 c7} ==> Ir5c7 = in
same-colour-in-{r4 r5}c7 ==> Hr5c7 = 0
w[1]-2-in-r4c7-open-se-corner ==> Vr4c7 = 1, Hr4c6 = 0
w[1]-2-in-r5c7-open-nw-corner ==> Vr5c8 = 1, Hr6c8 = 0
w[1]-3-in-r4c6-closed-se-corner ==> Pr4c6 ≠ se
no-horizontal-line-{r5 r6}c8 ==> Ir5c8 = out
different-colours-in-r5{c8 c9} ==> Hr5c9 = 1
different-colours-in-{r4 r5}c8 ==> Hr5c8 = 1
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1
same-colour-in-r3{c10 c11} ==> Vr3c11 = 0
different-colours-in-{r2 r3}c10 ==> Hr3c10 = 1

LOOP[14]: Vr2c7-Hr3c7-Vr2c8-Hr2c8-Vr2c9-Hr3c9-Hr3c10-Vr2c11-Hr2c10-Vr1c10-Hr1c9-Hr1c8-Hr1c7- ==> Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
w[1]-3-in-r2c5-hit-by-horiz-line-at-ne ==> Vr2c5 = 1, Hr3c5 = 1, Vr1c6 = 0
w[1]-3-in-r2c5-closed-sw-corner ==> Pr2c6 ≠ sw, Pr2c6 ≠ ne, Pr2c6 ≠ o
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
whip[1]: Pr4c8{ew .} ==> Br4c7 ≠ ne, Br3c8 ≠ e, Br4c8 ≠ ew
B-single: Br3c8 = s
P-single: Pr4c9 = ew
whip[1]: Pr4c9{ew .} ==> Br4c9 ≠ w, Br4c8 ≠ ne, Br3c9 ≠ w, Br3c9 ≠ n, Br4c9 ≠ sw
B-single: Br3c9 = ns
N-single: Nr3c9 = 2
B-single: Br4c8 = ns
whip[1]: Pr5c8{ew .} ==> Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c7 ≠ ne, Br5c8 ≠ w
whip[1]: Pr5c9{sw .} ==> Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ swn, Br5c9 ≠ o, Br5c9 ≠ e, Br5c9 ≠ s
whip[1]: Br5c9{esw .} ==> Nr5c9 ≠ 0
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ w, Br2c10 ≠ ne
whip[1]: Br2c10{nes .} ==> Nr2c10 ≠ 2
N-single: Nr2c10 = 3
whip[1]: Br2c9{esw .} ==> Nr2c9 ≠ 1
whip[1]: Br4c9{nes .} ==> Pr5c10 ≠ se, Pr5c10 ≠ ew, Nr4c9 ≠ 1
whip[1]: Pr5c10{nw .} ==> Br4c10 ≠ se, Br5c10 ≠ nw, Br5c10 ≠ swn, Br5c10 ≠ wne
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w, Pr4c11 ≠ ns, Pr5c11 ≠ ns, Br4c10 ≠ ew
P-single: Pr5c10 = ne
P-single: Pr5c11 = sw
P-single: Pr4c11 = o
B-single: Br4c10 = sw
B-single: Br4c11 = o
w[1]-1-in-r3c10-symmetric-se-corner ==> Pr3c10 ≠ nw
P-single: Pr3c10 = ew
whip[1]: Pr5c10{ne .} ==> Br5c9 ≠ n, Br4c9 ≠ nes, Br5c9 ≠ ns, Br5c9 ≠ ew, Br5c9 ≠ esw, Br5c10 ≠ e, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ esw
B-single: Br4c9 = ne
N-single: Nr4c9 = 2
P-single: Pr5c9 = sw
whip[1]: Pr5c9{sw .} ==> Br5c8 ≠ ns, Br5c8 ≠ n, Br5c8 ≠ nw, Br5c8 ≠ swn
whip[1]: Br5c8{nes .} ==> Pr6c8 ≠ ne, Pr6c9 ≠ ew, Pr6c9 ≠ sw, Nr5c8 ≠ 1
whip[1]: Pr6c9{ns .} ==> Br5c8 ≠ nes, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c8 ≠ n
whip[1]: Br6c8{esw .} ==> Pr6c8 ≠ ew
whip[1]: Pr6c8{sw .} ==> Br6c7 ≠ sw, Br6c7 ≠ o, Br6c7 ≠ s, Br6c7 ≠ w
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Br6c9{nes .} ==> Pr6c10 ≠ o, Pr6c10 ≠ ne, Pr6c10 ≠ nw, Pr6c10 ≠ ew, Pr7c9 ≠ ns, Pr7c9 ≠ nw, Pr7c10 ≠ o, Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr7c10 ≠ se, Pr7c10 ≠ ew, Pr7c10 ≠ sw
P-single: Pr7c10 = nw
w[1]-1-in-r7c10-symmetric-nw-corner ==> Pr8c11 ≠ nw
P-single: Pr8c11 = ns
whip[1]: Pr7c10{nw .} ==> Br7c10 ≠ n, Br7c9 ≠ s, Br7c9 ≠ e, Br7c9 ≠ o, Br6c10 ≠ s, Br6c10 ≠ e, Br6c10 ≠ n, Br6c10 ≠ o, Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ se, Br6c10 ≠ sw, Br6c10 ≠ esw, Br6c10 ≠ swn, Br6c10 ≠ nes, Br7c9 ≠ w, Br7c9 ≠ ne, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c10 ≠ w
whip[1]: Br7c10{s .} ==> Pr8c10 ≠ ne, Pr8c10 ≠ ns, Pr7c11 ≠ nw, Pr7c11 ≠ sw
whip[1]: Pr8c10{sw .} ==> Br7c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br7c9 ≠ n, Br8c9 ≠ o, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ w
whip[1]: Br8c9{nes .} ==> Pr8c9 ≠ ns, Nr8c9 ≠ 0
P-single: Pr8c9 = ew
whip[1]: Pr8c9{ew .} ==> Br8c8 ≠ ne, Br7c8 ≠ esw, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ swn, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ sw, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne
B-single: Br7c9 = ns
N-single: Nr7c9 = 2
P-single: Pr7c9 = ew
B-single: Br7c8 = swn
P-single: Pr7c8 = se
P-single: Pr8c8 = ne
whip[1]: Pr7c9{ew .} ==> Br6c8 ≠ w, Br6c8 ≠ e, Br6c8 ≠ o, Br6c8 ≠ se, Br6c8 ≠ ew, Br6c8 ≠ esw, Br6c9 ≠ esw
B-single: Br6c9 = nes
P-single: Pr6c9 = ne
P-single: Pr6c10 = sw
whip[1]: Pr6c9{ne .} ==> Br5c9 ≠ w
B-single: Br5c9 = sw
N-single: Nr5c9 = 2
whip[1]: Pr6c10{sw .} ==> Br5c10 ≠ ns, Br5c10 ≠ nes, Br6c10 ≠ nw, Br6c10 ≠ wne
whip[1]: Br6c10{ew .} ==> Pr6c11 ≠ nw, Pr6c11 ≠ sw, Nr6c10 ≠ 0, Nr6c10 ≠ 3
whip[1]: Br5c10{ne .} ==> Nr5c10 ≠ 3
whip[1]: Br6c8{sw .} ==> Nr6c8 ≠ 0, Nr6c8 ≠ 3
whip[1]: Pr7c8{se .} ==> Br7c7 ≠ w, Br7c7 ≠ s, Br7c7 ≠ n, Br7c7 ≠ o, Br6c7 ≠ e, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ sw, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ sw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes
B-single: Br6c8 = s
N-single: Nr6c8 = 1
P-single: Pr5c7 = nw
P-single: Pr6c8 = nw
whip[1]: Pr5c7{nw .} ==> Br4c6 ≠ swn, Br4c7 ≠ ns, Br5c7 ≠ ns, Br5c7 ≠ ew
B-single: Br5c7 = se
P-single: Pr4c7 = se
P-single: Pr5c8 = se
B-single: Br4c7 = nw
B-single: Br4c6 = esw
whip[1]: Pr4c7{se .} ==> Br3c6 ≠ s, Br3c6 ≠ sw
whip[1]: Br3c6{w .} ==> Pr3c6 ≠ ne, Nr3c6 ≠ 2, Nr3c6 ≠ 3, Pr3c6 ≠ se, Pr3c6 ≠ ew
whip[1]: Pr5c8{se .} ==> Br5c8 ≠ ne
B-single: Br5c8 = wne
N-single: Nr5c8 = 3
whip[1]: Br7c7{esw .} ==> Pr7c7 ≠ ne, Pr7c7 ≠ se, Pr7c7 ≠ ew, Nr7c7 ≠ 0
whip[1]: Br6c7{nw .} ==> Nr6c7 ≠ 3
whip[1]: Pr8c8{ne .} ==> Br8c7 ≠ n, Br7c7 ≠ se, Br7c7 ≠ esw, Br8c7 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ esw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ nes, Br8c8 ≠ nw
B-single: Br8c8 = ns
H-single: Hr9c8 = 1
horizontal-line-{r8 r9}c8 ==> Ir9c8 = in
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
whip[1]: Hr9c8{1 .} ==> Br9c8 ≠ o, Br9c8 ≠ e, Br9c8 ≠ s, Br9c8 ≠ w, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ esw
whip[1]: Br9c8{nes .} ==> Nr9c8 ≠ 0
whip[1]: Vr9c9{1 .} ==> Br9c9 ≠ o, Pr9c9 ≠ ew, Pr10c9 ≠ o, Pr10c9 ≠ se, Pr10c9 ≠ ew, Pr10c9 ≠ sw, Br9c8 ≠ n, Br9c8 ≠ ns, Br9c8 ≠ nw, Br9c8 ≠ swn, Br9c9 ≠ n, Br9c9 ≠ e, Br9c9 ≠ s, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ se, Br9c9 ≠ nes
P-single: Pr9c9 = sw
whip[1]: Pr9c9{sw .} ==> Br8c9 ≠ ns, Br8c9 ≠ nes, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c9 ≠ wne
whip[1]: Br9c9{esw .} ==> Pr9c10 ≠ nw, Pr9c10 ≠ ew, Pr9c10 ≠ sw, Nr9c9 ≠ 0
whip[1]: Br8c9{ne .} ==> Nr8c9 ≠ 3
whip[1]: Br9c8{nes .} ==> Pr10c8 ≠ ne, Nr9c8 ≠ 1
whip[1]: Pr10c9{nw .} ==> Br10c8 ≠ ne, Br10c8 ≠ wne, Br10c8 ≠ nes, Br10c9 ≠ nw, Br10c9 ≠ swn, Br10c9 ≠ wne
whip[1]: Pr9c8{ew .} ==> Br9c7 ≠ sw, Br9c7 ≠ wne, Br9c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ s, Br9c7 ≠ w, Br9c7 ≠ ne
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 0
whip[1]: Br8c7{sw .} ==> Pr8c7 ≠ ne, Pr8c7 ≠ se, Pr8c7 ≠ ew, Nr8c7 ≠ 3
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 3
whip[1]: Br8c10{nes .} ==> Pr9c11 ≠ o, Pr9c11 ≠ ns, Pr9c11 ≠ sw, Pr9c10 ≠ o, Pr9c10 ≠ ns
P-single: Pr9c11 = nw
whip[1]: Pr9c11{nw .} ==> Br9c10 ≠ s, Br9c10 ≠ e, Br9c10 ≠ o, Br9c10 ≠ w, Br9c10 ≠ ne, Br9c10 ≠ se, Br9c10 ≠ ew, Br9c10 ≠ sw, Br9c10 ≠ esw, Br9c10 ≠ wne, Br9c10 ≠ nes
whip[1]: Br9c10{swn .} ==> Pr10c11 ≠ ns, Pr10c11 ≠ nw, Nr9c10 ≠ 0
whip[1]: Pr10c11{sw .} ==> Br10c10 ≠ esw
B-single: Br10c10 = nes
V-single: Vr10c10 = 0
P-single: Pr11c11 = nw
P-single: Pr11c10 = ew
H-single: Hr11c9 = 1
P-single: Pr10c11 = sw
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
whip[1]: Vr10c10{0 .} ==> Br10c9 ≠ e, Br10c9 ≠ ne, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ esw, Br10c9 ≠ nes
whip[1]: Br10c9{sw .} ==> Nr10c9 ≠ 3
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ w, Br10c9 ≠ n, Br10c9 ≠ o, Br11c9 ≠ o
B-single: Br11c9 = n
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ esw, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ w
whip[1]: Br10c8{swn .} ==> Nr10c8 ≠ 0
whip[1]: Br10c9{sw .} ==> Nr10c9 ≠ 0
whip[1]: Pr10c11{sw .} ==> Br9c10 ≠ n, Br9c10 ≠ nw
whip[1]: Br9c10{swn .} ==> Nr9c10 ≠ 1
whip[1]: Hr10c9{1 .} ==> Pr10c9 ≠ ns, Pr10c9 ≠ nw, Pr10c10 ≠ ne, Br9c9 ≠ w, Br9c9 ≠ ew, Br10c9 ≠ s, Br10c9 ≠ sw
P-single: Pr10c10 = ew
P-single: Pr10c9 = ne
B-single: Br10c9 = ns
N-single: Nr10c9 = 2
P-single: Pr11c9 = ew
whip[1]: Pr10c10{ew .} ==> Br9c9 ≠ esw, Br9c10 ≠ swn
B-single: Br9c10 = ns
N-single: Nr9c10 = 2
P-single: Pr9c10 = ne
B-single: Br9c9 = sw
N-single: Nr9c9 = 2
whip[1]: Pr9c10{ne .} ==> Br8c9 ≠ n, Br8c10 ≠ nes
B-single: Br8c10 = esw
P-single: Pr8c10 = sw
B-single: Br8c9 = ne
N-single: Nr8c9 = 2
w[1]-1-in-r7c10-symmetric-sw-corner ==> Pr7c11 ≠ o
P-single: Pr7c11 = ns
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ s
B-single: Br7c10 = e
whip[1]: Pr7c11{ns .} ==> Br6c10 ≠ w
B-single: Br6c10 = ew
N-single: Nr6c10 = 2
P-single: Pr6c11 = ns
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ n
B-single: Br5c10 = ne
N-single: Nr5c10 = 2
whip[1]: Pr10c9{ne .} ==> Br9c8 ≠ nes, Br10c8 ≠ e, Br10c8 ≠ ns, Br10c8 ≠ ew, Br10c8 ≠ swn
whip[1]: Br10c8{sw .} ==> Pr11c8 ≠ o, Pr11c8 ≠ nw, Pr10c8 ≠ se, Pr10c8 ≠ ew, Nr10c8 ≠ 3
whip[1]: Pr11c8{ew .} ==> Br11c8 ≠ o, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ esw, Br10c7 ≠ nes, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ w
B-single: Br11c8 = n
whip[1]: Br10c7{wne .} ==> Nr10c7 ≠ 0
whip[1]: Pr4c11{o .} ==> Br3c10 ≠ e
B-single: Br3c10 = n
P-single: Pr3c11 = nw
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ wne
B-single: Br2c10 = nes
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ esw
B-single: Br2c9 = sw
N-single: Nr2c9 = 2
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Pr6c7{se .} ==> Br6c7 ≠ n, Br6c6 ≠ w, Br6c6 ≠ s, Br6c6 ≠ n, Br6c6 ≠ o, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ sw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br6c6 ≠ nes
B-single: Br6c7 = nw
N-single: Nr6c7 = 2
whip[1]: Pr7c7{nw .} ==> Br7c6 ≠ w, Br7c6 ≠ ne, Br7c6 ≠ sw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c6 ≠ o, Br7c6 ≠ s
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 0
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 0
whip[1]: Hr7c6{1 .} ==> Pr7c6 ≠ o, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Pr7c6 ≠ sw, Pr7c7 ≠ ns, Br6c6 ≠ e, Br6c6 ≠ ew, Br7c6 ≠ e, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ esw
P-single: Pr7c7 = nw
whip[1]: Pr7c7{nw .} ==> Br7c7 ≠ ew
B-single: Br7c7 = e
N-single: Nr7c7 = 1
whip[1]: Pr8c7{sw .} ==> Br8c6 ≠ esw, Br8c6 ≠ swn
whip[1]: Br8c6{nes .} ==> Pr8c6 ≠ o, Pr8c6 ≠ ns, Pr8c6 ≠ nw, Pr8c6 ≠ sw, Pr8c7 ≠ o, Pr9c7 ≠ o, Pr9c7 ≠ se, Pr9c7 ≠ ew, Pr9c7 ≠ sw
P-single: Pr8c7 = sw
whip[1]: Pr8c7{sw .} ==> Br8c7 ≠ s, Br8c7 ≠ o, Br7c6 ≠ n, Br7c6 ≠ nw
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 1
whip[1]: Br8c7{sw .} ==> Nr8c7 ≠ 0
whip[1]: Pr9c7{nw .} ==> Br9c6 ≠ ne, Br9c6 ≠ wne, Br9c6 ≠ nes, Br9c7 ≠ nw, Br9c7 ≠ swn
whip[1]: Pr8c6{ew .} ==> Br8c5 ≠ wne, Br8c5 ≠ nes, Br8c5 ≠ ne
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 1
whip[1]: Pr7c6{ew .} ==> Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Vr1c7{0 .} ==> Pr1c7 ≠ se, Pr2c7 ≠ ns, Br1c6 ≠ e, Br1c6 ≠ ne, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ esw, Br1c6 ≠ wne, Br1c6 ≠ nes, Br1c7 ≠ nw
P-single: Pr2c7 = sw
P-single: Pr1c7 = ew
B-single: Br1c7 = n
N-single: Nr1c7 = 1
whip[1]: Pr2c7{sw .} ==> Br2c6 ≠ e, Br1c6 ≠ w, Br1c6 ≠ n, Br1c6 ≠ o, Br1c6 ≠ nw, Br2c6 ≠ ew
whip[1]: Br2c6{wne .} ==> Pr2c6 ≠ ns, Pr2c6 ≠ nw, Nr2c6 ≠ 0, Nr2c6 ≠ 1
whip[1]: Pr2c6{ew .} ==> Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c6 ≠ sw, Br1c6 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ nes, Br1c5 ≠ e, Br1c5 ≠ ne
whip[1]: Br1c5{swn .} ==> Pr1c6 ≠ se, Pr1c6 ≠ sw
whip[1]: Br2c5{swn .} ==> Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr3c5 ≠ o, Pr3c5 ≠ ns, Pr3c5 ≠ nw, Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Pr3c6 ≠ o, Pr3c6 ≠ ns
P-single: Pr3c5 = ne
whip[1]: Pr3c5{ne .} ==> Br3c5 ≠ o, Br3c4 ≠ n, Br2c4 ≠ n, Br2c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ nes, Br3c4 ≠ e, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ e, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Br3c5{nes .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw, Nr3c5 ≠ 0
whip[1]: Br3c4{sw .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ se, Pr3c4 ≠ ew, Nr3c4 ≠ 3
whip[1]: Br2c4{wne .} ==> Nr2c4 ≠ 0
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ se, Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ sw, Br1c5 ≠ swn
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 3
whip[1]: Br1c6{ns .} ==> Nr1c6 ≠ 0, Nr1c6 ≠ 3
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ s
B-single: Br1c6 = ns
N-single: Nr1c6 = 2
P-single: Pr1c6 = ew
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ o
whip[1]: Br1c5{nw .} ==> Pr1c5 ≠ o, Pr1c5 ≠ sw, Nr1c5 ≠ 0
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ sw, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ s, Br1c4 ≠ w, Br1c4 ≠ ne
whip[1]: Br1c4{swn .} ==> Nr1c4 ≠ 0
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nes, Br3c5 ≠ n
whip[1]: Br3c5{ns .} ==> Nr3c5 ≠ 1, Nr3c5 ≠ 3
N-single: Nr3c5 = 2
whip[1]: Pr6c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ swn, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ ns
whip[1]: Br5c5{sw .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ se, Pr5c5 ≠ ew, Nr5c5 ≠ 3
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Hr11c5{1 .} ==> Br10c5 ≠ wne, Br11c5 ≠ o, Br10c5 ≠ o, Pr11c6 ≠ o, Pr11c6 ≠ ne, Br10c5 ≠ n, Br10c5 ≠ e, Br10c5 ≠ w, Br10c5 ≠ ne, Br10c5 ≠ nw, Br10c5 ≠ ew
B-single: Br11c5 = n
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Vr1c11{0 .} ==> Br1c11 ≠ w
B-single: Br1c11 = o
whip[1]: Hr5c3{0 .} ==> Br5c3 ≠ nes, Pr5c3 ≠ ne, Pr5c3 ≠ se, Pr5c3 ≠ ew, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Br4c3 ≠ s, Br5c3 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Br4c3{w .} ==> Pr4c3 ≠ se, Pr4c4 ≠ sw
whip[1]: Vr4c4{0 .} ==> Br4c4 ≠ wne, Pr4c4 ≠ ns, Pr4c4 ≠ se, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Br4c3 ≠ e, Br4c4 ≠ esw, Br4c4 ≠ swn
B-single: Br4c4 = nes
H-single: Hr4c4 = 1
H-single: Hr5c4 = 1
V-single: Vr4c5 = 1
w[1]-3-in-r2c5-asymmetric-se-corner ==> Hr2c5 = 1, Vr1c5 = 0, Hr2c4 = 0
w[1]-3-in-r4c4-asymmetric-sw-corner ==> Hr4c5 = 0
w[1]-2-in-r3c5-open-sw-corner ==> Vr3c6 = 1, Vr2c6 = 0
w[1]-3-in-r4c4-asymmetric-nw-corner ==> Vr5c5 = 0
P-single: Pr3c6 = sw
P-single: Pr4c5 = sw
P-single: Pr5c4 = se
V-single: Vr5c4 = 1
P-single: Pr5c5 = nw
w[1]-1-in-r4c3-symmetric-se-corner ==> Pr4c3 ≠ nw, Pr4c3 ≠ o
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
vertical-line-r5{c3 c4} ==> Ir5c3 = out
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
different-colours-in-r3{c3 c4} ==> Hr3c4 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-ne ==> Vr1c3 = 1, Hr2c3 = 1
w[1]-2-in-r2c2-open-ne-corner ==> Hr3c2 = 1, Vr2c2 = 1, Hr3c1 = 0, Vr3c2 = 0
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
no-vertical-line-r3{c1 c2} ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
vertical-line-r2{c1 c2} ==> Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
horizontal-line-{r1 r2}c3 ==> Ir1c3 = out
vertical-line-r1{c2 c3} ==> Ir1c2 = in
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-ne ==> Hr2c1 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-nw ==> Vr1c4 = 1
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
whip[1]: Hr4c4{1 .} ==> Br3c4 ≠ o, Br3c4 ≠ w
whip[1]: Br3c4{sw .} ==> Nr3c4 ≠ 0
whip[1]: Hr5c4{1 .} ==> Br5c4 ≠ o, Br5c4 ≠ e, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Vr4c5{1 .} ==> Br4c5 ≠ e, Br4c5 ≠ ne
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 1
whip[1]: Hr2c5{1 .} ==> Pr2c5 ≠ ns, Pr2c5 ≠ sw, Pr2c6 ≠ se, Br1c5 ≠ n, Br1c5 ≠ nw, Br2c5 ≠ esw
P-single: Pr2c6 = ew
P-single: Pr2c5 = se
B-single: Br2c5 = swn
B-single: Br1c5 = ns
N-single: Nr1c5 = 2
P-single: Pr1c5 = ew
whip[1]: Pr2c6{ew .} ==> Br2c6 ≠ wne
B-single: Br2c6 = ne
N-single: Nr2c6 = 2
whip[1]: Pr2c5{se .} ==> Br1c4 ≠ e, Br1c4 ≠ ns, Br1c4 ≠ ew, Br1c4 ≠ swn, Br2c4 ≠ ne, Br2c4 ≠ wne
whip[1]: Br2c4{ew .} ==> Pr2c4 ≠ ne, Pr2c4 ≠ se, Pr2c4 ≠ ew, Nr2c4 ≠ 3
whip[1]: Br1c4{nw .} ==> Nr1c4 ≠ 3
whip[1]: Hr4c5{0 .} ==> Pr4c6 ≠ sw, Br3c5 ≠ ns, Br4c5 ≠ wne
P-single: Pr4c6 = ns
B-single: Br4c5 = ew
N-single: Nr4c5 = 2
B-single: Br3c5 = ne
whip[1]: Pr4c6{ns .} ==> Br3c6 ≠ o
B-single: Br3c6 = w
N-single: Nr3c6 = 1
whip[1]: Vr5c5{0 .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ ns, Pr6c5 ≠ nw, Br5c4 ≠ ne, Br5c4 ≠ wne, Br5c4 ≠ nes, Br5c5 ≠ w, Br5c5 ≠ sw
whip[1]: Br5c5{s .} ==> Nr5c5 ≠ 2
whip[1]: Pr5c4{se .} ==> Br5c4 ≠ n, Br5c3 ≠ w, Br5c3 ≠ s, Br5c3 ≠ o, Br5c3 ≠ sw, Br5c4 ≠ ns
whip[1]: Br5c4{swn .} ==> Pr6c4 ≠ o, Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Nr5c4 ≠ 1
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ ne, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c4 ≠ nw
whip[1]: Br6c4{sw .} ==> Pr7c5 ≠ o, Pr7c5 ≠ se
whip[1]: Br5c3{esw .} ==> Nr5c3 ≠ 0
whip[1]: Vr3c4{1 .} ==> Br3c3 ≠ o, Pr3c4 ≠ o, Pr3c4 ≠ nw, Pr4c4 ≠ ew, Br3c3 ≠ n, Br3c3 ≠ s, Br3c3 ≠ w, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ sw, Br3c3 ≠ swn, Br3c4 ≠ s
P-single: Pr4c4 = ne
B-single: Br3c4 = sw
N-single: Nr3c4 = 2
w[1]-1-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ o
whip[1]: Pr4c4{ne .} ==> Br4c3 ≠ n, Br3c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ nes
B-single: Br4c3 = w
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br4c2 ≠ swn, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ w
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Br4c2{nes .} ==> Pr4c2 ≠ o, Pr4c2 ≠ nw
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 0
whip[1]: Pr5c3{nw .} ==> Br5c2 ≠ w, Br5c2 ≠ ne, Br5c2 ≠ sw, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c2 ≠ o, Br5c2 ≠ s
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ nes, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ w
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Vr1c3{1 .} ==> Br1c2 ≠ o, Pr1c3 ≠ ew, Pr2c3 ≠ o, Pr2c3 ≠ se, Pr2c3 ≠ ew, Br1c2 ≠ n, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ sw, Br1c2 ≠ swn, Br1c3 ≠ nes
P-single: Pr1c3 = sw
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ e, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ wne
B-single: Br1c3 = esw
P-single: Pr3c2 = ne
P-single: Pr1c4 = se
P-single: Pr2c3 = ne
P-single: Pr2c4 = nw
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ n, Br2c1 ≠ n, Br2c1 ≠ o, Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ nes, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ ew, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ swn, Br3c2 ≠ wne
B-single: Br2c2 = sw
whip[1]: Pr2c2{sw .} ==> Br1c2 ≠ nes
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 0, Nr1c2 ≠ 1
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br3c3 ≠ wne, Br3c3 ≠ e
whip[1]: Br3c3{ew .} ==> Nr3c3 ≠ 1, Nr3c3 ≠ 3
N-single: Nr3c3 = 2
whip[1]: Br2c3{ns .} ==> Nr2c3 ≠ 3
whip[1]: Br3c2{ns .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Nr3c2 ≠ 1, Nr3c2 ≠ 3
N-single: Nr3c2 = 2
P-single: Pr3c3 = ew
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, Br2c3 ≠ ne, Br2c3 ≠ e, Br3c3 ≠ ew
B-single: Br3c3 = ne
P-single: Pr3c4 = sw
P-single: Pr4c3 = sw
B-single: Br3c2 = ns
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ ew
B-single: Br2c4 = e
N-single: Nr2c4 = 1
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ esw
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ sw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c1 ≠ o, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ ne
whip[1]: Br4c1{swn .} ==> Nr4c1 ≠ 0
whip[1]: Br3c1{sw .} ==> Pr3c1 ≠ ne, Pr3c1 ≠ se, Nr3c1 ≠ 3
whip[1]: Br2c1{wne .} ==> Nr2c1 ≠ 0
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ n
B-single: Br1c4 = nw
N-single: Nr1c4 = 2
whip[1]: Pr2c3{ne .} ==> Br2c3 ≠ s
B-single: Br2c3 = ns
N-single: Nr2c3 = 2
whip[1]: Vr1c2{0 .} ==> Pr1c2 ≠ se, Pr2c2 ≠ ns, Br1c1 ≠ wne, Br1c2 ≠ wne
P-single: Pr2c2 = sw
P-single: Pr1c2 = ew
B-single: Br1c2 = ne
N-single: Nr1c2 = 2
B-single: Br1c1 = swn
P-single: Pr1c1 = se
P-single: Pr2c1 = ne
whip[1]: Pr2c2{sw .} ==> Br2c1 ≠ e, Br2c1 ≠ ew
whip[1]: Br2c1{wne .} ==> Nr2c1 ≠ 1
whip[1]: Pr2c1{ne .} ==> Br2c1 ≠ wne
B-single: Br2c1 = ne
N-single: Nr2c1 = 2
P-single: Pr3c1 = o
whip[1]: Pr3c1{o .} ==> Br3c1 ≠ w, Br3c1 ≠ sw
whip[1]: Br3c1{s .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ ns, Nr3c1 ≠ 2
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ n
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Hr10c2{0 .} ==> Br10c2 ≠ nes, Pr10c2 ≠ ne, Pr10c2 ≠ se, Pr10c2 ≠ ew, Pr10c3 ≠ nw, Pr10c3 ≠ ew, Pr10c3 ≠ sw, Br9c2 ≠ s, Br10c2 ≠ n, Br10c2 ≠ ne, Br10c2 ≠ ns, Br10c2 ≠ nw, Br10c2 ≠ swn, Br10c2 ≠ wne
whip[1]: Br9c2{w .} ==> Pr9c2 ≠ se, Pr9c3 ≠ sw
whip[1]: Vr9c2{0 .} ==> Br9c2 ≠ w, Pr9c2 ≠ ns, Pr9c2 ≠ sw, Pr10c2 ≠ ns, Pr10c2 ≠ nw, Br9c1 ≠ esw, Br9c1 ≠ wne, Br9c1 ≠ nes
B-single: Br9c1 = swn
H-single: Hr9c1 = 1
H-single: Hr10c1 = 1
V-single: Vr9c1 = 1
w[1]-3-in-r9c1-asymmetric-se-corner ==> Vr8c1 = 0
w[1]-3-in-r9c1-asymmetric-ne-corner ==> Vr10c1 = 0
P-single: Pr9c1 = se
P-single: Pr10c1 = ne
P-single: Pr10c2 = sw
V-single: Vr10c2 = 1
w[1]-1-in-r9c2-symmetric-sw-corner ==> Pr9c3 ≠ ne, Pr9c3 ≠ o
no-vertical-line-r10{c0 c1} ==> Ir10c1 = out
vertical-line-r10{c1 c2} ==> Ir10c2 = in
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = in
no-vertical-line-r9{c1 c2} ==> Ir9c1 = in
horizontal-line-{r8 r9}c1 ==> Ir8c1 = out
no-horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
no-vertical-line-r8{c2 c3} ==> Ir8c3 = in
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = in
vertical-line-r7{c2 c3} ==> Ir7c2 = out
horizontal-line-{r8 r9}c3 ==> Ir9c3 = out
same-colour-in-{r9 r10}c3 ==> Hr10c3 = 0
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1
w[1]-3-in-r9c3-closed-ne-corner ==> Pr10c3 ≠ ne, Pr10c3 ≠ o
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
different-colours-in-r8{c1 c2} ==> Hr8c2 = 1
w[1]-3-in-r7c2-hit-by-verti-line-at-sw ==> Hr7c2 = 1
w[1]-3-in-r7c2-closed-ne-corner ==> Pr8c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ o
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = in
no-vertical-line-r6{c2 c3} ==> Ir6c2 = in
no-vertical-line-r7{c1 c2} ==> Ir7c1 = out
same-colour-in-r7{c0 c1} ==> Vr7c1 = 0
same-colour-in-{r6 r7}c1 ==> Hr7c1 = 0
w[1]-2-in-r6c1-open-sw-corner ==> Vr6c2 = 1, Hr6c2 = 0, Vr5c2 = 0
w[1]-3-in-r5c1-hit-by-verti-line-at-se ==> Hr5c1 = 1
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
w[1]-3-in-r4c2-hit-by-verti-line-at-se ==> Vr4c2 = 1
w[1]-3-in-r4c2-closed-nw-corner ==> Pr5c3 ≠ nw
P-single: Pr5c3 = ns
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
w[1]-2-in-r6c4-open-nw-corner ==> Hr7c4 = 1, Vr6c5 = 1, Hr7c5 = 0, Vr7c5 = 0
w[1]-diagonal-3-1-in-{r8c6...r7c5}-open-end ==> Hr9c6 = 1
w[1]-3-in-r9c5-hit-by-horiz-line-at-ne ==> Vr8c6 = 0
w[1]-3-in-r8c6-closed-se-corner ==> Pr8c6 ≠ se
w[1]-1-in-r7c5-asymmetric-se-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ew, Pr7c5 ≠ ns, Pr7c5 ≠ ne
P-single: Pr6c4 = nw
P-single: Pr7c5 = nw
no-vertical-line-r8{c5 c6} ==> Ir8c5 = in
no-horizontal-line-{r8 r9}c7 ==> Ir9c7 = out
no-vertical-line-r9{c6 c7} ==> Ir9c6 = out
no-vertical-line-r6{c3 c4} ==> Ir6c4 = in
vertical-line-r6{c4 c5} ==> Ir6c5 = out
no-horizontal-line-{r6 r7}c5 ==> Ir7c5 = out
no-vertical-line-r7{c4 c5} ==> Ir7c4 = out
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
same-colour-in-r7{c5 c6} ==> Vr7c6 = 0
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
same-colour-in-r9{c5 c6} ==> Vr9c6 = 0
different-colours-in-r9{c7 c8} ==> Hr9c8 = 1

LOOP[10]: Vr9c8-Hr9c8-Vr9c9-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8- ==> Vr10c8 = 0
no-vertical-line-r10{c7 c8} ==> Ir10c7 = in
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r9 r10}c7 ==> Hr10c7 = 1

LOOP[12]: Hr10c7-Vr9c8-Hr9c8-Vr9c9-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7- ==> Vr10c7 = 0
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
w[1]-3-in-r9c5-hit-by-horiz-line-at-se ==> Hr9c5 = 1
w[1]-3-in-r9c5-closed-nw-corner ==> Pr10c6 ≠ se, Pr10c6 ≠ nw, Pr10c6 ≠ o
different-colours-in-r10{c2 c3} ==> Hr10c3 = 1

LOOP[114]: Vr10c3-Vr9c3-Hr9c3-Vr9c4-Vr10c4-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Hr10c9-Vr9c9-Hr9c8-Vr9c8-Hr10c7-Hr10c6-Hr10c5-Vr9c5-Hr9c5-Hr9c6-Vr8c7-Hr8c6-Hr8c5-Hr8c4-Vr7c4-Hr7c4-Vr6c5-Hr6c5-Vr6c6-Hr7c6-Vr6c7-Hr6c7-Vr5c8-Hr5c8-Vr5c9-Hr6c9-Vr6c10-Hr7c9-Hr7c8-Vr7c8-Hr8c8-Hr8c9-Vr8c10-Hr9c10-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Hr5c10-Vr4c10-Hr4c9-Hr4c8-Hr4c7-Vr4c7-Hr5c6-Vr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Hr2c6-Vr2c7-Hr3c7-Vr2c8-Hr2c8-Vr2c9-Hr3c9-Hr3c10-Vr2c11-Hr2c10-Vr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c2-Hr3c3-Vr3c4-Hr4c4-Vr4c5-Hr5c4-Vr5c4-Hr6c3-Vr5c3-Vr4c3-Hr4c2-Vr4c2-Hr5c1-Vr5c1-Hr6c1-Vr6c2-Hr7c2-Vr7c3-Hr8c2-Vr8c2-Hr9c1-Vr9c1-Hr10c1-Vr10c2- ==> Hr11c2 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXXXXXXO
OXXXOOXOXX
OOOXXOOOOO
OXOOXOXXXO
XXOXXXXOXX
OXXXOXOOOX
OOXOOOOXXX
OXXXXXOOOX
XXOXOOOXOO
OXOXXXXXXX

.———.———.   .———.———.———.———.———.———.   .
| 3     | 3 |                     2 | 2
.———.   .———.   .———.———.   .———.   .———.
    | 2         | 3     | 3 | 3 |       |
.   .———.———.   .———.   .———.   .———.———.
            |       |     2   1       1
.   .———.   .———.   .   .———.———.———.   .
    | 3 | 1   3 |   | 3 | 2   2     | 2
.———.   .   .———.   .———.   .———.   .———.
| 3     |   |         1   2 |   |       |
.———.   .———.   .———.   .———.   .———.   .
  2 |         2 |   |   |         3 |   |
.   .———.   .———.   .———.   .———.———.   .
      3 |   |     1         | 3       1 |
.   .———.   .———.———.———.   .———.———.   .
    |                 3 |     2     | 3 |
.———.   .———.   .———.———.   .———.   .———.
| 3   1 | 3 |   | 3         |   |
.———.   .   .   .———.———.———.   .———.———.
    |   |   | 2                       3 |
.   .———.   .———.———.———.———.———.———.———.

init-time = 4m 24.26s, solve-time = 2m 29.68s, total-time = 6m 53.94s
nb-facts=<Fact-196532>
Quasi-Loop max length = 114
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
