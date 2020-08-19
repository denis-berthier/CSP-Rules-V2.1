
(solve
10 10
. . 2 . . 3 2 . . 3
2 3 . 3 2 . 1 . . 3
. . . 2 2 . . . 2 .
1 2 2 . . . 3 . 2 .
2 3 1 3 . 3 2 . . .
. 3 2 2 . . 1 2 . .
. . . 2 . 3 . 3 2 .
3 . 2 . 2 2 2 2 . .
2 2 3 2 . 2 . 0 . .
3 2 . . 2 . 3 . 3 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 . . 3 2 . . 3
2 3 . 3 2 . 1 . . 3
. . . 2 2 . . . 2 .
1 2 2 . . . 3 . 2 .
2 3 1 3 . 3 2 . . .
. 3 2 2 . . 1 2 . .
. . . 2 . 3 . 3 2 .
3 . 2 . 2 2 2 2 . .
2 2 3 2 . 2 . 0 . .
3 2 . . 2 . 3 . 3 .

start init-grid-structure 0.0225951671600342
start create-csp-variables
start create-labels 0.00147390365600586
start init-physical-csp-links 0.0104780197143555
start init-physical-non-csp-links 10.4419100284576
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.0131459236145
     start init-physical-BN-non-csp-links at local time 11.2864201068878
     start init-physical-BP-non-csp-links at local time 20.5833871364594
     end init-physical-BP-non-csp-links at local time 248.392277956009
end init-physical-non-csp-links 258.834243059158
start init-corner-B-c-values 258.857083082199
start init-outer-B-candidates 258.857136964798
start init-outer-I-candidates 258.85790514946
start init-H-candidates 258.858345985413
start init-V-candidates 258.862234115601
start init-P-candidates 258.865855932236
start init-inner-I-candidates 258.872990131378
start init-inner-N-and-B-candidates 258.876101016998
start solution 258.889008998871
entering BRT
w[0]-0-in-r9c8 ==> Hr10c8 = 0, Hr9c8 = 0, Vr9c9 = 0, Vr9c8 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-diagonal-3-0-in-{r10c9...r9c8} ==> Vr10c9 = 1, Hr10c9 = 1
w[1]-diagonal-3-0-in-{r10c7...r9c8} ==> Vr10c8 = 1, Hr10c7 = 1
w[1]-diagonal-3s-in-{r4c7...r5c6} ==> Vr4c8 = 1, Vr5c6 = 1, Hr6c6 = 1, Hr4c7 = 1, Vr3c8 = 0, Vr6c6 = 0, Hr6c5 = 0, Hr4c8 = 0
w[1]-diagonal-3-2s-3-in-{r1c6...r5c2} ==> Vr1c7 = 1, Vr5c2 = 1, Hr6c2 = 1, Hr1c6 = 1, Vr6c2 = 0, Hr6c1 = 0, Hr1c7 = 0
w[1]-diagonal-3-2s-3-in-{r5c2...r10c7} ==> Hr11c7 = 1, Hr5c2 = 1, Vr4c2 = 0, Hr11c8 = 0, Hr5c1 = 0
w[1]-diagonal-3-2-in-{r6c2...r5c1}-non-closed-nw-corner ==> Vr6c3 = 1, Vr5c1 = 1, Hr7c2 = 1, Vr7c3 = 0, Hr7c3 = 0
w[1]-diagonal-3-2-in-{r5c4...r6c3}-non-closed-sw-corner ==> Vr5c5 = 1, Hr5c4 = 1, Vr4c5 = 0, Hr5c5 = 0
w[1]-diagonal-3-2-in-{r5c2...r6c3}-non-closed-se-corner ==> Vr6c4 = 1
w[1]-3-in-r2c10-hit-by-verti-line-at-ne ==> Vr2c10 = 1, Hr3c10 = 1
w[1]-2-in-r3c9-open-ne-corner ==> Hr4c9 = 1, Vr3c9 = 1, Vr4c9 = 0
w[1]-3-in-r1c10-hit-by-verti-line-at-sw ==> Hr2c9 = 0
w[1]-adjacent-1-2-on-edge-in-{r4 r5}c1-fwd-diag-2s-3 ==> Hr4c1 = 0
w[1]-3-in-r10c9-closed-nw-corner ==> Pr11c10 ≠ nw, Pr11c10 ≠ o
w[1]-3-in-r10c7-closed-ne-corner ==> Pr11c7 ≠ ne, Pr11c7 ≠ o
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r6c2-closed-ne-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r5c6-closed-sw-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ o
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ o
w[1]-3-in-r1c10-closed-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-3-in-r7c6-symmetric-se-corner ==> Vr7c7 = 1, Hr8c6 = 1
w[1]-2-in-r8c7-open-nw-corner ==> Hr9c7 = 1, Vr8c8 = 1
w[1]-diagonal-3-2-in-{r7c8...r8c7}-non-closed-sw-corner ==> Vr7c9 = 1, Hr7c8 = 1, Vr6c9 = 0, Hr7c9 = 0
w[1]-3-in-r7c6-closed-se-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ nw, Pr7c6 ≠ o
adjacent-3s-in-c10{r1 r2} ==> Hr2c10 = 1
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ se, Pr1c10 ≠ o
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
w[3]-adjacent-3-2-0-in-c8{r7 r8 r9} ==> Hr8c9 = 0
P-single: Pr9c8 = nw
entering level Loop with <Fact-93468>
entering level Col with <Fact-93550>
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
vertical-line-r3{c8 c9} ==> Ir3c8 = out
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
horizontal-line-{r3 r4}c7 ==> Ir4c7 = in
vertical-line-r4{c7 c8} ==> Ir4c8 = out
no-vertical-line-r4{c8 c9} ==> Ir4c9 = out
vertical-line-r10{c0 c1} ==> Ir10c1 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir6c3 = out
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
no-vertical-line-r7{c2 c3} ==> Ir7c2 = out
horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
vertical-line-r6{c3 c4} ==> Ir6c4 = in
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = out
no-vertical-line-r9{c7 c8} ==> Ir9c7 = out
horizontal-line-{r8 r9}c7 ==> Ir8c7 = in
no-vertical-line-r8{c6 c7} ==> Ir8c6 = in
horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
vertical-line-r7{c6 c7} ==> Ir7c7 = in
vertical-line-r8{c7 c8} ==> Ir8c8 = out
horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
no-vertical-line-r9{c8 c9} ==> Ir9c9 = out
horizontal-line-{r9 r10}c9 ==> Ir10c9 = in
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
vertical-line-r1{c6 c7} ==> Ir1c6 = in
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1
w[1]-3-in-r10c9-closed-sw-corner ==> Pr10c10 ≠ sw, Pr10c10 ≠ ne, Pr10c10 ≠ o
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
Starting_init_links_with_<Fact-93648>
2334 candidates, 7333 csp-links and 29292 links. Density = 1.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-166903>
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ esw, Br0c9 ≠ o, Br1c9 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ sw, Br1c9 ≠ e, Br1c9 ≠ s, Br1c9 ≠ w, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw
B-single: Br0c9 = s
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ sw, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c8 ≠ o, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ ne
whip[1]: Br1c8{swn .} ==> Nr1c8 ≠ 0
whip[1]: Vr3c11{1 .} ==> Br3c10 ≠ swn, Br3c11 ≠ o, Br3c10 ≠ o, Pr4c11 ≠ o, Pr4c11 ≠ sw, Br3c10 ≠ n, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ sw
B-single: Br3c11 = w
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ w, Br4c10 ≠ ne, Br4c10 ≠ sw, Br4c10 ≠ wne, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ s
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 0
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ s, Br4c0 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ ne, Br4c1 ≠ n, Br4c1 ≠ e
B-single: Br4c1 = w
P-single: Pr4c1 = ns
P-single: Pr5c1 = ns
P-single: Pr5c2 = se
B-single: Br4c0 = e
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes
whip[1]: Br3c1{wne .} ==> Pr3c1 ≠ o, Pr3c1 ≠ ne, Nr3c1 ≠ 0
whip[1]: Pr2c2{ew .} ==> Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br2c1 ≠ sw, Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ ne, Br2c1 ≠ ne
whip[1]: Br1c2{nes .} ==> Nr1c2 ≠ 0
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se
whip[1]: Br5c1{sw .} ==> Pr6c1 ≠ se
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ e, Br6c1 ≠ n, Br6c1 ≠ o, Br5c1 ≠ sw, Br6c1 ≠ s, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ nes
B-single: Br5c1 = ew
whip[1]: Pr6c2{ns .} ==> Br5c2 ≠ nes, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Br6c2{nes .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ ew, Pr7c2 ≠ ns, Pr7c2 ≠ nw, Pr7c3 ≠ ns, Pr7c3 ≠ se, Pr7c3 ≠ ew
P-single: Pr7c3 = nw
whip[1]: Pr7c3{nw .} ==> Br7c3 ≠ n, Br7c2 ≠ s, Br7c2 ≠ e, Br7c2 ≠ o, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ se, Br6c3 ≠ sw, Br7c2 ≠ w, Br7c2 ≠ ne, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ wne, Br7c2 ≠ nes, Br7c3 ≠ w, Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes
whip[1]: Br7c3{se .} ==> Pr7c4 ≠ ew, Pr7c4 ≠ sw, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Nr7c3 ≠ 3
whip[1]: Pr7c4{ns .} ==> Br6c3 ≠ nw, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ se, Br7c4 ≠ nw, Br7c4 ≠ se
B-single: Br6c3 = ew
whip[1]: Pr6c4{se .} ==> Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c3 ≠ s
whip[1]: Br5c3{w .} ==> Pr5c4 ≠ sw
whip[1]: Br5c4{nes .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Pr5c5 ≠ o, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Pr5c5 ≠ se, Pr5c5 ≠ ew, Pr6c5 ≠ o, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c5 ≠ sw
P-single: Pr5c5 = sw
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ ns, Br5c5 ≠ ne, Br5c5 ≠ s, Br5c5 ≠ e, Br5c5 ≠ n, Br5c5 ≠ o, Br4c5 ≠ ns, Br4c5 ≠ w, Br4c5 ≠ s, Br4c4 ≠ ne, Br4c4 ≠ w, Br4c4 ≠ e, Br4c4 ≠ n, Br4c4 ≠ o, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br5c5{esw .} ==> Pr5c6 ≠ nw, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Nr5c5 ≠ 0
whip[1]: Br4c5{ne .} ==> Pr4c5 ≠ ns, Pr4c5 ≠ se, Nr4c5 ≠ 3, Pr4c5 ≠ sw
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 0
whip[1]: Pr6c5{nw .} ==> Br6c5 ≠ nw, Br6c5 ≠ swn, Br6c5 ≠ wne
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ se
whip[1]: Br4c3{sw .} ==> Pr4c3 ≠ nw
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br4c2 ≠ sw, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ e, Br3c3 ≠ ne, Br4c2 ≠ ne
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br6c4{sw .} ==> Pr7c5 ≠ nw
whip[1]: Pr7c5{ew .} ==> Br6c5 ≠ sw, Br6c5 ≠ esw, Br7c4 ≠ sw, Br7c5 ≠ se, Br6c5 ≠ o, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ ne, Br7c4 ≠ ne, Br7c5 ≠ o, Br7c5 ≠ e, Br7c5 ≠ s
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Br6c5{nes .} ==> Nr6c5 ≠ 0
whip[1]: Br7c2{swn .} ==> Nr7c2 ≠ 0
whip[1]: Pr7c2{ew .} ==> Br6c1 ≠ ew, Br6c1 ≠ esw, Br6c2 ≠ esw, Br7c1 ≠ sw, Br7c1 ≠ wne, Br7c1 ≠ nes, Br7c1 ≠ o, Br7c1 ≠ s, Br7c1 ≠ w, Br7c1 ≠ ne
B-single: Br6c2 = nes
P-single: Pr6c2 = ne
P-single: Pr6c3 = sw
w[1]-1-in-r5c3-symmetric-sw-corner ==> Pr5c4 ≠ ne
whip[1]: Pr6c2{ne .} ==> Br5c2 ≠ wne
whip[1]: Pr6c3{sw .} ==> Br5c3 ≠ w, Br5c2 ≠ esw
B-single: Br5c2 = swn
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ ne
whip[1]: Pr5c4{ew .} ==> Vr4c4 ≠ 1, Br4c3 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ swn
V-single: Vr4c4 = 0
w[1]-diagonal-3-2-in-{r5c2...r4c3}-non-closed-ne-corner ==> Hr4c3 = 1
whip[1]: Vr4c4{0 .} ==> Pr4c4 ≠ ns, Pr4c4 ≠ se
whip[1]: Pr4c4{ew .} ==> Br3c3 ≠ nw, Br3c3 ≠ ew, Br3c3 ≠ wne, Br3c4 ≠ sw, Br3c3 ≠ w, Br3c4 ≠ ne
whip[1]: Br3c3{nes .} ==> Vr3c3 ≠ 1, Pr3c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ sw, Pr4c3 ≠ ns
V-single: Vr3c3 = 0
whip[1]: Vr3c3{0 .} ==> Br3c2 ≠ e, Br3c2 ≠ ne, Br3c2 ≠ ew, Br3c2 ≠ wne
whip[1]: Br4c4{ns .} ==> Nr4c4 ≠ 3
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 0
whip[1]: Br6c1{sw .} ==> Pr7c1 ≠ o, Pr7c1 ≠ se, Nr6c1 ≠ 0, Nr6c1 ≠ 3
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ swn, Br7c1 ≠ e
whip[1]: Pr4c2{ne .} ==> Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ns, Br3c2 ≠ nw
whip[1]: Hr11c9{1 .} ==> Br10c9 ≠ wne, Br11c9 ≠ o, Pr11c9 ≠ o, Pr11c9 ≠ nw, Pr11c10 ≠ ne
P-single: Pr11c10 = ew
H-single: Hr11c10 = 1
V-single: Vr10c10 = 0
B-single: Br11c9 = n
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1

LOOP[6]: Vr10c11-Hr11c10-Hr11c9-Vr10c9-Hr10c9- ==> Hr10c10 = 0
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = in
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
different-colours-in-r9{c9 c10} ==> Hr9c10 = 1

LOOP[8]: Vr9c10-Hr10c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11- ==> Hr9c10 = 0
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = in
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
whip[1]: Pr11c10{ew .} ==> Br10c10 ≠ w, Br10c10 ≠ n, Br10c10 ≠ o, Br11c10 ≠ o, Br10c9 ≠ esw, Br10c9 ≠ nes, Br10c10 ≠ nw, Br10c10 ≠ esw
B-single: Br10c9 = swn
P-single: Pr11c9 = ne
P-single: Pr10c9 = se
B-single: Br11c10 = n
P-single: Pr11c11 = nw
whip[1]: Pr11c9{ne .} ==> Br10c8 ≠ n, Br10c8 ≠ o, Br11c8 ≠ n, Br10c8 ≠ s, Br10c8 ≠ w, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn, Br10c8 ≠ nes
B-single: Br11c8 = o
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ swn, Br10c7 ≠ wne
whip[1]: Br10c7{nes .} ==> Pr11c7 ≠ nw, Pr11c8 ≠ o, Pr10c8 ≠ o
P-single: Pr10c8 = sw
P-single: Pr11c8 = nw
P-single: Pr11c7 = ew
H-single: Hr11c6 = 1
V-single: Vr10c7 = 0
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
whip[1]: Pr10c8{sw .} ==> Br10c8 ≠ ne, Br10c8 ≠ e, Br9c7 ≠ ne, Br9c7 ≠ w, Br9c7 ≠ e, Br9c7 ≠ n, Br9c7 ≠ o, Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c7 ≠ esw, Br9c7 ≠ wne, Br9c7 ≠ nes, Br10c7 ≠ esw, Br10c8 ≠ wne
B-single: Br10c8 = ew
N-single: Nr10c8 = 2
B-single: Br10c7 = nes
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nw, Br9c6 ≠ se, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ esw, Br10c6 ≠ wne, Br10c6 ≠ nes, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 0
whip[1]: Pr11c8{nw .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ w, Br10c6 ≠ n, Br10c6 ≠ o, Br11c6 ≠ o, Br10c6 ≠ nw
B-single: Br11c6 = n
whip[1]: Pr8c3{sw .} ==> Hr8c2 ≠ 0, Br7c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c3 ≠ nw, Br8c3 ≠ se, Br7c2 ≠ n, Br8c2 ≠ o, Br8c2 ≠ e, Br8c2 ≠ s, Br8c2 ≠ w
H-single: Hr8c2 = 1
w[1]-3-in-r8c1-hit-by-horiz-line-at-ne ==> Vr8c1 = 1, Hr9c1 = 1, Vr7c2 = 0
w[1]-3-in-r8c1-closed-sw-corner ==> Pr8c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ o
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c1 = out
horizontal-line-{r7 r8}c2 ==> Ir8c2 = in
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
w[1]-3-in-r8c1-closed-nw-corner ==> Pr9c2 ≠ se, Pr9c2 ≠ nw
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
different-colours-in-{r9 r10}c1 ==> Hr10c1 = 1
w[1]-3-in-r10c1-closed-nw-corner ==> Pr11c2 ≠ nw, Pr11c2 ≠ o
whip[1]: Hr8c2{1 .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ nw
whip[1]: Pr8c2{ew .} ==> Br7c1 ≠ ew, Br7c1 ≠ esw, Br7c2 ≠ swn, Br8c1 ≠ wne, Br8c1 ≠ nes
B-single: Br7c2 = ns
N-single: Nr7c2 = 2
P-single: Pr7c2 = ew
whip[1]: Pr7c2{ew .} ==> Br6c1 ≠ w
B-single: Br6c1 = sw
N-single: Nr6c1 = 2
P-single: Pr7c1 = ne
whip[1]: Br8c1{swn .} ==> Pr8c1 ≠ o, Pr8c1 ≠ ne, Pr9c1 ≠ o, Pr9c1 ≠ ns, Pr9c2 ≠ ns
P-single: Pr9c1 = ne
whip[1]: Pr9c1{ne .} ==> Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ ew, Br9c1 ≠ sw
whip[1]: Br9c1{ns .} ==> Pr10c1 ≠ ns
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ esw
B-single: Br10c1 = swn
V-single: Vr10c2 = 0
w[1]-diagonal-3-2-in-{r9c3...r10c2}-non-closed-sw-corner ==> Vr9c4 = 1, Hr11c2 = 1, Hr9c3 = 1, Vr8c4 = 0, Hr9c4 = 0
w[1]-diagonal-3-2s-in-{r10c1...r8c3}-non-closed-ne-end ==> Hr8c3 = 1
P-single: Pr9c2 = ew
H-single: Hr9c2 = 1
V-single: Vr9c2 = 0
w[1]-3-in-r9c3-hit-by-horiz-line-at-nw ==> Hr10c3 = 1, Vr8c3 = 0
w[1]-diagonal-3-2s-in-{r7c6...r9c4}-non-closed-sw-end ==> Hr7c6 = 1, Vr6c7 = 0, Hr7c7 = 0
w[1]-3-in-r9c3-closed-se-corner ==> Pr9c3 ≠ se, Pr9c3 ≠ nw
w[3]-adjacent-3-2-in-r9{c3 c2}-noline-west ==> Vr10c3 = 0
P-single: Pr11c1 = ne
P-single: Pr11c2 = ew
P-single: Pr10c1 = se
P-single: Pr10c2 = ew
H-single: Hr10c2 = 1
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
no-vertical-line-r6{c6 c7} ==> Ir6c6 = in
no-vertical-line-r6{c5 c6} ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
horizontal-line-{r4 r5}c4 ==> Ir5c4 = out
vertical-line-r5{c5 c6} ==> Ir5c6 = out
no-vertical-line-r8{c2 c3} ==> Ir8c3 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-vertical-line-r10{c2 c3} ==> Ir10c2 = in
horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
horizontal-line-{r9 r10}c3 ==> Ir9c3 = out
same-colour-in-r9{c2 c3} ==> Vr9c3 = 0
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se
P-single: Pr4c3 = ew
H-single: Hr4c2 = 1
V-single: Vr4c3 = 0
w[1]-diagonal-3-2s-in-{r1c6...r4c3}-non-closed-sw-end ==> Hr5c3 = 1
P-single: Pr4c2 = ne
V-single: Vr3c2 = 1
w[1]-3-in-r2c2-hit-by-verti-line-at-sw ==> Vr2c3 = 1, Hr2c2 = 1, Hr3c1 = 0
w[1]-2-in-r1c3-open-sw-corner ==> Hr1c3 = 1, Vr1c4 = 1, Hr1c4 = 0
w[1]-diagonal-3-2-in-{r2c4...r1c3}-non-closed-nw-corner ==> Vr2c5 = 1, Hr3c4 = 1, Vr3c5 = 0, Hr3c5 = 0
w[1]-2-in-r3c5-open-nw-corner ==> Hr4c5 = 1, Vr3c6 = 1, Hr4c6 = 0, Vr4c6 = 0
w[1]-3-in-r2c2-closed-ne-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
w[1]-3-in-r5c6-isolated-at-nw-corner ==> Hr5c6 = 1
w[1]-3-in-r4c7-hit-by-horiz-line-at-sw ==> Vr5c7 = 0
w[1]-3-in-r5c6-closed-nw-corner ==> Pr6c7 ≠ se, Pr6c7 ≠ nw, Pr6c7 ≠ o
w[1]-diagonal-closed-3-1-in-{r5c6...r6c7} ==> Vr6c8 = 0
w[1]-3-in-r7c8-isolated-at-nw-corner ==> Vr7c8 = 1
w[1]-3-in-r7c8-closed-nw-corner ==> Pr8c9 ≠ se, Pr8c9 ≠ nw
P-single: Pr4c5 = ew
H-single: Hr4c4 = 1
P-single: Pr5c3 = ew
P-single: Pr5c4 = ew
w[1]-1-in-r6c7-asymmetric-nw-corner ==> Pr7c8 ≠ ew, Pr7c8 ≠ ns
w[1]-1-in-r5c3-asymmetric-nw-corner ==> Pr6c4 ≠ ns
P-single: Pr7c4 = ns
H-single: Hr7c4 = 0
V-single: Vr7c4 = 1
w[1]-diagonal-3-2s-in-{r10c1...r7c4}-non-closed-ne-end ==> Vr7c5 = 1
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
P-single: Pr6c4 = se

LOOP[6]: Vr7c5-Hr7c5-Hr7c6-Vr7c7-Hr8c6- ==> Hr8c5 = 0
w[1]-diagonal-3-2s-in-{r10c7...r8c5}-non-closed-nw-end ==> Vr8c5 = 1
vertical-line-r8{c4 c5} ==> Ir8c5 = out
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
vertical-line-r7{c4 c5} ==> Ir7c4 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
vertical-line-r2{c4 c5} ==> Ir2c4 = in
vertical-line-r3{c5 c6} ==> Ir3c6 = in
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = in
vertical-line-r7{c7 c8} ==> Ir7c8 = out
vertical-line-r7{c8 c9} ==> Ir7c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-horizontal-line-{r7 r8}c9 ==> Ir8c9 = in
no-vertical-line-r5{c6 c7} ==> Ir5c7 = out
no-horizontal-line-{r0 r1}c4 ==> Ir1c4 = out
vertical-line-r1{c3 c4} ==> Ir1c3 = in
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
horizontal-line-{r1 r2}c2 ==> Ir2c2 = out
vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
same-colour-in-r2{c3 c4} ==> Vr2c4 = 0
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
w[1]-3-in-r2c4-hit-by-horiz-line-at-sw ==> Hr2c4 = 1, Vr3c4 = 0
w[1]-diagonal-3-2s-in-{r5c2...r2c5}-non-closed-ne-end ==> Vr2c6 = 1
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne
vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-vertical-line-r1{c4 c5} ==> Ir1c5 = out
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
w[1]-3-in-r1c6-closed-nw-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw
w[1]-diagonal-closed-3-1-in-{r1c6...r2c7} ==> Vr2c8 = 0, Hr3c7 = 0
w[1]-1-in-r2c7-asymmetric-nw-corner ==> Pr3c8 ≠ sw, Pr3c8 ≠ ew, Pr3c8 ≠ ns, Pr3c8 ≠ ne
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
no-vertical-line-r2{c7 c8} ==> Ir2c8 = out
same-colour-in-{r2 r3}c8 ==> Hr3c8 = 0
different-colours-in-r2{c8 c9} ==> Hr2c9 = 1
same-colour-in-{r1 r2}c7 ==> Hr2c7 = 0
different-colours-in-r2{c6 c7} ==> Hr2c7 = 1

LOOP[6]: Vr2c7-Vr1c7-Hr1c6-Vr1c6-Vr2c6- ==> Hr3c6 = 0
same-colour-in-{r1 r2}c6 ==> Hr2c6 = 0
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
w[1]-3-in-r5c6-hit-by-horiz-line-at-ne ==> Vr4c7 = 0
w[1]-3-in-r4c7-closed-se-corner ==> Pr4c7 ≠ se, Pr4c7 ≠ nw, Pr4c7 ≠ o
no-vertical-line-r5{c7 c8} ==> Ir5c8 = out
different-colours-in-{r5 r6}c8 ==> Hr6c8 = 1
same-colour-in-r8{c9 c10} ==> Vr8c10 = 0
different-colours-in-{r8 r9}c9 ==> Hr9c9 = 1
different-colours-in-r8{c8 c9} ==> Hr8c9 = 1
same-colour-in-{r7 r8}c8 ==> Hr8c8 = 0
P-single: Pr9c9 = ne
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
same-colour-in-r7{c5 c6} ==> Vr7c6 = 0
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1

LOOP[8]: Vr8c6-Hr8c6-Vr7c7-Hr7c6-Hr7c5-Vr7c5-Vr8c5- ==> Hr9c5 = 0
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
different-colours-in-r9{c4 c5} ==> Hr9c5 = 1
whip[1]: Vr10c2{0 .} ==> Br10c2 ≠ nw, Br10c2 ≠ ew, Br10c2 ≠ sw
whip[1]: Vr9c4{1 .} ==> Pr9c4 ≠ ne, Pr9c4 ≠ ew, Pr10c4 ≠ se, Pr10c4 ≠ ew, Br9c3 ≠ swn, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se
whip[1]: Pr10c4{nw .} ==> Br9c4 ≠ sw, Br10c3 ≠ w, Br10c3 ≠ ne, Br10c3 ≠ sw, Br10c3 ≠ wne, Br10c3 ≠ nes, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ swn, Br10c4 ≠ wne, Br10c4 ≠ nes, Br10c3 ≠ o, Br10c3 ≠ s, Br10c4 ≠ n
whip[1]: Br10c4{esw .} ==> Pr10c5 ≠ ew, Pr10c5 ≠ sw
whip[1]: Pr10c5{ns .} ==> Br9c4 ≠ nw, Br9c5 ≠ s, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ se, Br9c5 ≠ nes, Br10c5 ≠ nw, Br10c5 ≠ se, Br9c5 ≠ o, Br9c5 ≠ n, Br9c5 ≠ e
B-single: Br9c4 = ew
whip[1]: Pr9c5{se .} ==> Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ nes, Br8c5 ≠ ne, Br8c5 ≠ sw, Br8c4 ≠ s
whip[1]: Br9c5{wne .} ==> Nr9c5 ≠ 0
whip[1]: Br10c3{swn .} ==> Nr10c3 ≠ 0
whip[1]: Hr11c2{1 .} ==> Br11c2 ≠ o, Pr11c3 ≠ ne, Br10c2 ≠ ne
P-single: Pr11c3 = ew
B-single: Br11c2 = n
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ e, Br10c3 ≠ n, Br11c3 ≠ o, Br10c2 ≠ se, Br10c3 ≠ nw, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ swn
B-single: Br10c2 = ns
P-single: Pr10c3 = ew
B-single: Br11c3 = n
whip[1]: Pr10c3{ew .} ==> Br9c2 ≠ ne, Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c3 ≠ esw, Br9c3 ≠ wne, Br10c3 ≠ se
B-single: Br10c3 = ns
N-single: Nr10c3 = 2
P-single: Pr11c4 = ew
P-single: Pr10c4 = nw
B-single: Br9c3 = nes
P-single: Pr9c3 = ew
P-single: Pr9c4 = sw
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ w, Br10c4 ≠ e, Br10c4 ≠ o, Br11c4 ≠ o, Br10c4 ≠ ew, Br10c4 ≠ sw, Br10c4 ≠ esw
B-single: Br11c4 = n
whip[1]: Br10c4{se .} ==> Nr10c4 ≠ 0, Nr10c4 ≠ 3
whip[1]: Pr9c3{ew .} ==> Br8c3 ≠ ne, Br8c2 ≠ ne, Br8c2 ≠ n, Br8c2 ≠ nw, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ ew, Br8c3 ≠ sw, Br9c2 ≠ sw
B-single: Br9c2 = ns
B-single: Br8c3 = ns
P-single: Pr8c3 = ew
whip[1]: Pr8c3{ew .} ==> Br7c3 ≠ e, Br7c3 ≠ o
whip[1]: Br7c3{se .} ==> Nr7c3 ≠ 0
whip[1]: Pr8c4{ew .} ==> Br8c4 ≠ nw, Br8c4 ≠ ew, Br8c4 ≠ wne, Br8c4 ≠ w
whip[1]: Br8c4{ne .} ==> Nr8c4 ≠ 3
whip[1]: Br8c2{swn .} ==> Nr8c2 ≠ 0, Nr8c2 ≠ 1
whip[1]: Pr9c2{ew .} ==> Br9c1 ≠ ne, Br8c1 ≠ esw, Br8c2 ≠ swn
B-single: Br8c2 = ns
N-single: Nr8c2 = 2
P-single: Pr8c2 = ew
B-single: Br8c1 = swn
P-single: Pr8c1 = se
B-single: Br9c1 = ns
whip[1]: Pr8c2{ew .} ==> Br7c1 ≠ n
B-single: Br7c1 = ns
N-single: Nr7c1 = 2
whip[1]: Hr7c6{1 .} ==> Br6c6 ≠ o, Pr7c6 ≠ ns, Pr7c6 ≠ sw, Pr7c7 ≠ o, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ se, Br6c6 ≠ n, Br6c6 ≠ e, Br6c6 ≠ w, Br6c6 ≠ ne, Br6c6 ≠ nw, Br6c6 ≠ ew, Br6c6 ≠ wne, Br7c6 ≠ esw
whip[1]: Br7c6{nes .} ==> Pr8c7 ≠ o
P-single: Pr8c7 = nw
whip[1]: Pr8c7{nw .} ==> Br7c7 ≠ s, Br7c7 ≠ e, Br7c7 ≠ n, Br7c7 ≠ o, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ se, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ nes, Br8c6 ≠ ne, Br8c6 ≠ se, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ ew, Br8c7 ≠ sw
B-single: Br8c7 = se
P-single: Pr8c8 = ns
B-single: Br7c6 = nes
P-single: Pr7c7 = sw
w[1]-1-in-r6c7-symmetric-sw-corner ==> Pr6c8 ≠ sw, Pr6c8 ≠ ne
whip[1]: Pr8c8{ns .} ==> Br7c7 ≠ w, Br7c7 ≠ nw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ nes, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ se
B-single: Br7c8 = wne
P-single: Pr7c8 = se
P-single: Pr7c9 = sw
P-single: Pr8c9 = ns
whip[1]: Pr7c8{se .} ==> Br6c7 ≠ s, Br6c7 ≠ e, Br6c8 ≠ ne, Br6c8 ≠ nw, Br6c8 ≠ ew, Br6c8 ≠ sw, Br7c7 ≠ wne
B-single: Br7c7 = ew
N-single: Nr7c7 = 2
whip[1]: Br6c8{se .} ==> Pr6c8 ≠ ns
P-single: Pr6c8 = ew
whip[1]: Pr6c8{ew .} ==> Br6c7 ≠ w, Br5c8 ≠ ne, Br5c8 ≠ w, Br5c8 ≠ e, Br5c8 ≠ n, Br5c8 ≠ o, Br5c7 ≠ ne, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c8 ≠ wne, Br6c8 ≠ se
B-single: Br6c8 = ns
B-single: Br6c7 = n
P-single: Pr6c7 = ew
whip[1]: Pr6c7{ew .} ==> Br6c6 ≠ s, Br5c6 ≠ esw, Br5c6 ≠ wne, Br5c6 ≠ nes, Br5c7 ≠ sw, Br6c6 ≠ se, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ nes
B-single: Br5c7 = ns
P-single: Pr5c7 = ew
B-single: Br5c6 = swn
P-single: Pr5c6 = se
P-single: Pr6c6 = ne
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ ne, Br4c6 ≠ w, Br4c6 ≠ e, Br4c6 ≠ n, Br4c6 ≠ o, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne
B-single: Br4c7 = nes
P-single: Pr4c8 = sw
P-single: Pr5c8 = nw
whip[1]: Pr4c8{sw .} ==> Br4c8 ≠ ns, Br4c8 ≠ ne, Br4c8 ≠ s, Br4c8 ≠ e, Br4c8 ≠ n, Br4c8 ≠ o, Br3c8 ≠ ns, Br3c8 ≠ w, Br3c8 ≠ s, Br3c7 ≠ ne, Br3c7 ≠ w, Br3c7 ≠ e, Br3c7 ≠ n, Br3c7 ≠ o, Br3c7 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ wne, Br3c7 ≠ nes, Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ ew, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn, Br3c8 ≠ wne, Br3c8 ≠ nes, Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ swn, Br4c8 ≠ wne, Br4c8 ≠ nes
whip[1]: Br4c8{esw .} ==> Pr4c9 ≠ nw, Pr4c9 ≠ ew, Nr4c8 ≠ 0
whip[1]: Pr5c10{sw .} ==> Br4c9 ≠ nw, Br4c9 ≠ se, Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ o, Br5c10 ≠ e, Br5c10 ≠ s
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr4c9{ns .} ==> Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ se, Br3c8 ≠ o, Br3c8 ≠ n
whip[1]: Br3c8{ne .} ==> Pr3c8 ≠ se, Pr3c9 ≠ ne, Nr3c8 ≠ 0, Nr3c8 ≠ 3, Pr3c9 ≠ ew
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ esw, Br2c8 ≠ nes, Br2c9 ≠ se, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br2c9 ≠ nes, Br3c9 ≠ nw, Br2c8 ≠ o, Br2c8 ≠ n, Br2c8 ≠ w, Br2c9 ≠ s, Br2c9 ≠ ns
whip[1]: Br2c9{wne .} ==> Pr3c10 ≠ nw, Pr3c10 ≠ ew
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 0
whip[1]: Pr3c8{nw .} ==> Br2c8 ≠ ns, Br2c8 ≠ sw, Br2c8 ≠ swn, Br3c8 ≠ ne, Br2c7 ≠ e, Br2c7 ≠ s, Br2c8 ≠ s
B-single: Br3c8 = e
N-single: Nr3c8 = 1
P-single: Pr3c9 = ns
whip[1]: Pr3c9{ns .} ==> Br2c9 ≠ e, Br2c9 ≠ n, Br2c9 ≠ o, Br2c9 ≠ ne
whip[1]: Br2c9{wne .} ==> Pr2c9 ≠ o, Pr2c9 ≠ ne, Pr2c9 ≠ nw, Pr2c9 ≠ ew, Nr2c9 ≠ 0
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ se, Br1c8 ≠ esw, Br1c9 ≠ swn
whip[1]: Br2c7{w .} ==> Pr2c8 ≠ ns, Pr3c7 ≠ ne, Pr3c8 ≠ nw, Pr2c8 ≠ sw, Pr3c7 ≠ se, Pr3c7 ≠ ew
P-single: Pr3c8 = o
whip[1]: Pr3c8{o .} ==> Br2c8 ≠ ew, Br2c8 ≠ wne, Br3c7 ≠ ns, Br3c7 ≠ swn
whip[1]: Br3c7{sw .} ==> Nr3c7 ≠ 0, Nr3c7 ≠ 3
whip[1]: Br2c8{ne .} ==> Nr2c8 ≠ 3
whip[1]: Pr2c8{ew .} ==> Hr2c8 ≠ 0, Br1c7 ≠ nw, Br1c7 ≠ se, Br1c8 ≠ nw, Br1c8 ≠ ew, Br1c8 ≠ n, Br1c8 ≠ e, Br2c8 ≠ e
H-single: Hr2c8 = 1
B-single: Br2c8 = ne
N-single: Nr2c8 = 2
P-single: Pr2c9 = sw
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
different-colours-in-r1{c7 c8} ==> Hr1c8 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1

LOOP[14]: Hr4c9-Vr3c9-Vr2c9-Hr2c8-Vr1c8-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11- ==> Hr4c10 = 0
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = in
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1

LOOP[16]: Vr4c10-Hr4c9-Vr3c9-Vr2c9-Hr2c8-Vr1c8-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Vr4c11- ==> Hr5c10 = 0
no-horizontal-line-{r4 r5}c10 ==> Ir5c10 = in
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
whip[1]: Vr1c9{0 .} ==> Pr1c9 ≠ se, Br1c9 ≠ nw, Br1c9 ≠ wne
P-single: Pr1c9 = ew
whip[1]: Pr2c9{sw .} ==> Br1c9 ≠ ns, Br1c9 ≠ nes, Br2c9 ≠ nw, Br2c9 ≠ wne
whip[1]: Br2c9{ew .} ==> Pr2c10 ≠ nw, Pr2c10 ≠ ew, Nr2c9 ≠ 3
whip[1]: Pr2c10{se .} ==> Br2c10 ≠ nes, Br2c9 ≠ w
B-single: Br2c9 = ew
N-single: Nr2c9 = 2
whip[1]: Pr3c10{ns .} ==> Br3c10 ≠ se, Br3c10 ≠ wne, Br3c10 ≠ e
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 1
whip[1]: Br1c9{ne .} ==> Nr1c9 ≠ 3
whip[1]: Vr1c8{1 .} ==> Pr1c8 ≠ ew, Pr2c8 ≠ ew, Br1c7 ≠ ns, Br1c7 ≠ sw, Br1c8 ≠ ns
P-single: Pr2c8 = ne
P-single: Pr1c8 = se
B-single: Br1c8 = swn
N-single: Nr1c8 = 3
w[1]-1-in-r2c7-symmetric-ne-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ o
whip[1]: Pr2c8{ne .} ==> Br2c7 ≠ n
B-single: Br2c7 = w
P-single: Pr2c7 = ns
whip[1]: Pr2c7{ns .} ==> Br2c6 ≠ n, Br2c6 ≠ o, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c6 ≠ nes, Br1c7 ≠ ne, Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ sw, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ nes
B-single: Br1c7 = ew
P-single: Pr1c7 = sw
B-single: Br1c6 = wne
P-single: Pr1c6 = se
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ nw, Br1c5 ≠ sw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes
whip[1]: Br1c5{esw .} ==> Pr1c5 ≠ se, Pr1c5 ≠ ew, Nr1c5 ≠ 0
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ n, Br1c4 ≠ e, Br1c4 ≠ ns
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ ne, Br2c5 ≠ sw
whip[1]: Br2c6{esw .} ==> Nr2c6 ≠ 0
whip[1]: Pr3c7{nw .} ==> Br3c6 ≠ w, Br3c6 ≠ ne, Br3c6 ≠ sw, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c6 ≠ o, Br3c6 ≠ s
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 0
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Hr4c10{0 .} ==> Pr4c11 ≠ nw, Pr4c10 ≠ ew, Br3c10 ≠ esw, Br3c10 ≠ nes, Br4c10 ≠ n, Br4c10 ≠ ns, Br4c10 ≠ nw, Br4c10 ≠ swn
P-single: Pr4c11 = ns
whip[1]: Br4c10{esw .} ==> Pr5c11 ≠ o, Pr5c11 ≠ sw
whip[1]: Pr5c11{nw .} ==> Br5c10 ≠ w, Br5c10 ≠ ne, Br5c10 ≠ sw, Br5c10 ≠ nes
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 3
N-single: Nr3c10 = 2
whip[1]: Pr4c10{sw .} ==> Br4c9 ≠ sw, Br4c10 ≠ se, Br4c9 ≠ ns, Br4c10 ≠ e
whip[1]: Br4c10{esw .} ==> Pr5c10 ≠ ew, Pr5c10 ≠ sw, Nr4c10 ≠ 1
whip[1]: Pr5c10{ns .} ==> Hr5c9 ≠ 1, Br5c9 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c9 ≠ n
H-single: Hr5c9 = 0
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = out
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1

LOOP[18]: Vr5c10-Vr4c10-Hr4c9-Vr3c9-Vr2c9-Hr2c8-Vr1c8-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Vr4c11-Vr5c11- ==> Hr6c10 = 0
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
same-colour-in-r6{c9 c10} ==> Vr6c10 = 0
different-colours-in-{r5 r6}c9 ==> Hr6c9 = 1
same-colour-in-r5{c8 c9} ==> Vr5c9 = 0
whip[1]: Hr5c9{0 .} ==> Pr5c9 ≠ se, Pr5c9 ≠ ew
whip[1]: Vr5c10{1 .} ==> Br5c9 ≠ o, Pr5c10 ≠ ne, Pr6c10 ≠ o, Pr6c10 ≠ se, Pr6c10 ≠ ew, Pr6c10 ≠ sw, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ sw, Br5c10 ≠ n, Br5c10 ≠ ns
P-single: Pr5c10 = ns
whip[1]: Pr5c10{ns .} ==> Br4c10 ≠ esw
B-single: Br4c10 = ew
N-single: Nr4c10 = 2
P-single: Pr5c11 = ns
whip[1]: Br5c10{esw .} ==> Pr6c11 ≠ o, Pr6c11 ≠ sw, Nr5c10 ≠ 1
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ w, Br6c10 ≠ ne, Br6c10 ≠ sw, Br6c10 ≠ wne, Br6c10 ≠ nes, Br6c10 ≠ o, Br6c10 ≠ s
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 0
whip[1]: Br5c9{esw .} ==> Nr5c9 ≠ 0
whip[1]: Pr6c10{nw .} ==> Br6c9 ≠ ne, Br6c9 ≠ wne, Br6c9 ≠ nes, Br6c10 ≠ nw, Br6c10 ≠ swn
whip[1]: Hr6c10{0 .} ==> Pr6c11 ≠ nw, Pr6c10 ≠ ne, Br5c10 ≠ esw, Br6c10 ≠ n, Br6c10 ≠ ns
P-single: Pr6c11 = ns
B-single: Br5c10 = ew
N-single: Nr5c10 = 2
whip[1]: Br6c10{esw .} ==> Pr7c11 ≠ o, Pr7c11 ≠ sw
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ w, Br7c10 ≠ ne, Br7c10 ≠ sw, Br7c10 ≠ wne, Br7c10 ≠ nes, Br7c10 ≠ o, Br7c10 ≠ s
whip[1]: Br7c10{swn .} ==> Nr7c10 ≠ 0
whip[1]: Pr6c10{nw .} ==> Br6c9 ≠ w, Br6c9 ≠ sw, Br6c9 ≠ o, Br6c9 ≠ s
whip[1]: Br6c9{swn .} ==> Nr6c9 ≠ 0
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Vr6c10{0 .} ==> Pr6c10 ≠ ns, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Br6c9 ≠ e, Br6c9 ≠ se, Br6c9 ≠ ew, Br6c9 ≠ esw, Br6c10 ≠ ew, Br6c10 ≠ esw
P-single: Pr6c10 = nw
whip[1]: Pr6c10{nw .} ==> Br5c9 ≠ e, Br5c9 ≠ ew
whip[1]: Br5c9{esw .} ==> Pr6c9 ≠ nw, Nr5c9 ≠ 1
P-single: Pr6c9 = ew
whip[1]: Pr6c9{ew .} ==> Br5c8 ≠ se, Br5c8 ≠ nes, Br5c9 ≠ esw, Br6c9 ≠ nw, Br6c9 ≠ swn
B-single: Br5c9 = se
N-single: Nr5c9 = 2
whip[1]: Pr5c9{nw .} ==> Br4c8 ≠ ew, Br4c8 ≠ sw
whip[1]: Br4c8{esw .} ==> Nr4c8 ≠ 2
whip[1]: Br6c9{ns .} ==> Nr6c9 ≠ 3
whip[1]: Br5c8{ns .} ==> Nr5c8 ≠ 0, Nr5c8 ≠ 3
whip[1]: Br6c10{se .} ==> Nr6c10 ≠ 3
whip[1]: Pr7c10{ew .} ==> Hr7c10 ≠ 0, Br7c9 ≠ sw, Br7c10 ≠ se, Br7c10 ≠ ew, Br7c10 ≠ esw, Br6c10 ≠ e, Br7c9 ≠ ne, Br7c10 ≠ e
H-single: Hr7c10 = 1
B-single: Br6c10 = se
N-single: Nr6c10 = 2
P-single: Pr7c11 = nw
no-vertical-line-r7{c10 c11} ==> Ir7c10 = out
different-colours-in-{r7 r8}c10 ==> Hr8c10 = 1
different-colours-in-r7{c9 c10} ==> Hr7c10 = 1
whip[1]: Vr7c11{0 .} ==> Br7c11 ≠ w, Pr8c11 ≠ ns, Pr8c11 ≠ nw
B-single: Br7c11 = o
whip[1]: Pr8c11{sw .} ==> Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ n, Br8c10 ≠ e, Br8c10 ≠ ns
whip[1]: Hr8c10{1 .} ==> Br8c10 ≠ o, Pr8c11 ≠ o, Pr8c10 ≠ ns, Pr8c10 ≠ sw, Br7c10 ≠ n, Br7c10 ≠ nw, Br8c10 ≠ s, Br8c10 ≠ w, Br8c10 ≠ sw
P-single: Pr8c11 = sw
whip[1]: Br8c10{nes .} ==> Pr9c11 ≠ o, Pr9c11 ≠ sw, Pr9c10 ≠ ne, Nr8c10 ≠ 0, Nr8c10 ≠ 1
whip[1]: Pr9c11{nw .} ==> Br9c10 ≠ w, Br9c10 ≠ ne, Br9c10 ≠ sw, Br9c10 ≠ wne, Br9c10 ≠ nes, Br9c10 ≠ o, Br9c10 ≠ s
whip[1]: Br9c10{swn .} ==> Nr9c10 ≠ 0
whip[1]: Br7c10{swn .} ==> Nr7c10 ≠ 1
whip[1]: Pr8c10{ew .} ==> Br7c9 ≠ nw, Br7c9 ≠ se, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ esw, Br8c9 ≠ wne, Br8c9 ≠ nes, Br8c10 ≠ wne, Br8c9 ≠ e, Br8c9 ≠ ne
whip[1]: Br8c9{swn .} ==> Pr9c10 ≠ ns, Pr9c10 ≠ nw
whip[1]: Vr7c10{1 .} ==> Pr7c10 ≠ ew, Pr8c10 ≠ ew, Br7c9 ≠ ns, Br7c10 ≠ ns
P-single: Pr8c10 = ne
P-single: Pr7c10 = se
B-single: Br7c10 = swn
N-single: Nr7c10 = 3
B-single: Br7c9 = ew
whip[1]: Pr8c10{ne .} ==> Br8c9 ≠ n, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ swn
whip[1]: Br8c9{sw .} ==> Nr8c9 ≠ 3
whip[1]: Pr7c10{se .} ==> Br6c9 ≠ ns
B-single: Br6c9 = n
N-single: Nr6c9 = 1
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o
B-single: Br4c11 = w
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Pr5c8{nw .} ==> Br4c8 ≠ esw, Br5c8 ≠ ns
B-single: Br5c8 = s
N-single: Nr5c8 = 1
P-single: Pr3c11 = sw
P-single: Pr4c10 = sw
P-single: Pr5c9 = o
B-single: Br4c8 = w
N-single: Nr4c8 = 1
P-single: Pr3c10 = ne
P-single: Pr4c9 = ne
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ esw, Br2c10 ≠ wne, Br3c10 ≠ ew
B-single: Br3c10 = ne
B-single: Br2c10 = swn
P-single: Pr2c11 = nw
P-single: Pr2c10 = se
whip[1]: Pr2c11{nw .} ==> Br1c10 ≠ wne
B-single: Br1c10 = nes
P-single: Pr1c11 = sw
P-single: Pr1c10 = ew
whip[1]: Pr1c10{ew .} ==> Br1c9 ≠ ne
B-single: Br1c9 = n
N-single: Nr1c9 = 1
whip[1]: Pr4c10{sw .} ==> Br3c9 ≠ ew, Br4c9 ≠ ew
B-single: Br4c9 = ne
B-single: Br3c9 = sw
whip[1]: Pr4c7{ew .} ==> Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ n
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 0
whip[1]: Pr5c6{se .} ==> Br5c5 ≠ w, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c6 ≠ sw, Br4c6 ≠ swn, Br5c5 ≠ sw
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 1
whip[1]: Br4c6{ns .} ==> Pr4c6 ≠ ns, Nr4c6 ≠ 3, Pr4c6 ≠ sw
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ nw, Br3c6 ≠ e
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 1
whip[1]: Br4c5{n .} ==> Nr4c5 ≠ 2
whip[1]: Pr6c6{ne .} ==> Br5c5 ≠ esw, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ nes, Br6c6 ≠ swn
B-single: Br6c6 = ns
N-single: Nr6c6 = 2
P-single: Pr7c6 = ew
B-single: Br5c5 = ew
N-single: Nr5c5 = 2
whip[1]: Pr7c6{ew .} ==> Br7c5 ≠ ne, Br7c5 ≠ w, Br6c5 ≠ w, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ wne, Br7c5 ≠ nes
B-single: Br6c5 = s
N-single: Nr6c5 = 1
P-single: Pr6c5 = nw
whip[1]: Pr6c5{nw .} ==> Br5c4 ≠ wne, Br6c4 ≠ ew, Br6c4 ≠ sw
B-single: Br6c4 = nw
B-single: Br5c4 = nes
whip[1]: Pr8c9{ns .} ==> Br8c9 ≠ o, Br8c8 ≠ sw, Br8c9 ≠ s
B-single: Br8c8 = ew
whip[1]: Br8c9{sw .} ==> Nr8c9 ≠ 0
whip[1]: Pr9c7{ew .} ==> Br9c6 ≠ sw, Br9c7 ≠ sw, Br9c6 ≠ ne, Br9c7 ≠ s
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 1
whip[1]: Pr9c6{ew .} ==> Br8c5 ≠ nw, Br8c5 ≠ se, Br9c5 ≠ sw, Br9c5 ≠ wne, Br9c5 ≠ w
whip[1]: Br9c5{swn .} ==> Nr9c5 ≠ 1
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Vr5c4{0 .} ==> Br5c3 ≠ e
B-single: Br5c3 = n
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ n, Br3c2 ≠ o, Br4c2 ≠ se, Br4c3 ≠ nw
B-single: Br4c3 = ns
B-single: Br4c2 = ns
whip[1]: Br3c2{swn .} ==> Pr3c2 ≠ ew, Nr3c2 ≠ 0, Nr3c2 ≠ 1
P-single: Pr3c2 = ns
whip[1]: Pr3c2{ns .} ==> Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ nes, Br3c1 ≠ w, Br3c1 ≠ nw, Br3c1 ≠ wne, Br3c2 ≠ swn
B-single: Br3c2 = sw
N-single: Nr3c2 = 2
P-single: Pr3c3 = ne
B-single: Br3c1 = ew
N-single: Nr3c1 = 2
P-single: Pr3c1 = ns
B-single: Br2c2 = wne
P-single: Pr1c4 = sw
P-single: Pr2c2 = se
P-single: Pr2c3 = sw
B-single: Br2c1 = ew
P-single: Pr2c1 = ns
whip[1]: Pr3c3{ne .} ==> Br2c3 ≠ n, Br2c3 ≠ o, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ wne, Br2c3 ≠ nes, Br3c3 ≠ s, Br3c3 ≠ se
whip[1]: Br3c3{nes .} ==> Pr3c4 ≠ ns, Nr3c3 ≠ 1
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ esw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew
B-single: Br3c4 = ns
P-single: Pr4c4 = ew
B-single: Br3c3 = ns
N-single: Nr3c3 = 2
B-single: Br2c4 = nes
P-single: Pr4c6 = nw
P-single: Pr2c5 = sw
P-single: Pr3c5 = nw
whip[1]: Pr4c4{ew .} ==> Br4c4 ≠ s
B-single: Br4c4 = ns
N-single: Nr4c4 = 2
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ o, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c6 ≠ ns, Br3c6 ≠ swn, Br4c6 ≠ ns
B-single: Br4c6 = s
N-single: Nr4c6 = 1
P-single: Pr4c7 = ne
B-single: Br3c6 = ew
N-single: Nr3c6 = 2
P-single: Pr3c6 = ns
P-single: Pr3c7 = ns
B-single: Br3c5 = se
B-single: Br4c5 = n
N-single: Nr4c5 = 1
whip[1]: Pr4c7{ne .} ==> Br3c7 ≠ s
B-single: Br3c7 = sw
N-single: Nr3c7 = 2
whip[1]: Pr3c6{ns .} ==> Br2c6 ≠ e, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c6 ≠ se, Br2c6 ≠ esw
B-single: Br2c6 = ew
N-single: Nr2c6 = 2
P-single: Pr2c6 = ns
B-single: Br2c5 = ew
whip[1]: Pr2c6{ns .} ==> Br1c5 ≠ se, Br1c5 ≠ esw
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 3
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ ne, Br1c4 ≠ w, Br1c4 ≠ o, Br1c4 ≠ wne, Br1c4 ≠ nes, Br1c5 ≠ ew
B-single: Br1c5 = e
N-single: Nr1c5 = 1
P-single: Pr1c5 = o
whip[1]: Br1c4{sw .} ==> Nr1c4 ≠ 0, Nr1c4 ≠ 3
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ nw, Br1c3 ≠ se
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 0, Nr2c3 ≠ 1
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ s, Br1c3 ≠ ns, Br1c3 ≠ ew, Br1c3 ≠ sw
B-single: Br1c3 = ne
P-single: Pr1c3 = ew
P-single: Pr2c4 = ne
B-single: Br1c4 = sw
N-single: Nr1c4 = 2
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ wne, Br1c2 ≠ nes
whip[1]: Br1c2{nw .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Nr1c2 ≠ 1, Nr1c2 ≠ 3
N-single: Nr1c2 = 2
P-single: Pr1c2 = ew
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ s, Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ se, Br1c1 ≠ wne, Br1c2 ≠ nw
B-single: Br1c2 = ns
whip[1]: Br1c1{swn .} ==> Pr1c1 ≠ o, Nr1c1 ≠ 0, Nr1c1 ≠ 1
P-single: Pr1c1 = se
whip[1]: Pr2c4{ne .} ==> Br2c3 ≠ swn
B-single: Br2c3 = sw
N-single: Nr2c3 = 2
whip[1]: Pr2c2{se .} ==> Br1c1 ≠ swn
B-single: Br1c1 = nw
N-single: Nr1c1 = 2
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr7c4{ns .} ==> Br7c3 ≠ s, Br7c4 ≠ ns
B-single: Br7c4 = ew
P-single: Pr8c4 = nw
B-single: Br7c3 = se
N-single: Nr7c3 = 2
whip[1]: Pr8c4{nw .} ==> Br8c4 ≠ n, Br8c4 ≠ ne
whip[1]: Br8c4{e .} ==> Nr8c4 ≠ 2
whip[1]: Pr8c5{ns .} ==> Br7c5 ≠ ns, Br7c5 ≠ n
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 1
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ ne, Pr8c6 ≠ ew, Br7c5 ≠ swn, Br8c5 ≠ ns
P-single: Pr9c7 = se
H-single: Hr9c6 = 0
V-single: Vr9c7 = 1
w[1]-diagonal-3-2s-in-{r7c8...r9c6}-non-closed-sw-end ==> Vr9c6 = 1
P-single: Pr8c6 = se
P-single: Pr8c5 = ns
B-single: Br8c5 = ew
P-single: Pr9c5 = ns
P-single: Pr9c6 = ns
B-single: Br7c5 = nw
N-single: Nr7c5 = 2

LOOP[10]: Vr9c6-Vr8c6-Hr8c6-Vr7c7-Hr7c6-Hr7c5-Vr7c5-Vr8c5-Vr9c5- ==> Hr10c5 = 0

LOOP[108]: Hr11c6-Hr11c7-Vr10c8-Hr10c7-Vr9c7-Hr9c7-Vr8c8-Vr7c8-Hr7c8-Vr7c9-Vr8c9-Hr9c9-Vr9c10-Hr10c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Vr8c11-Hr8c10-Vr7c10-Hr7c10-Vr6c11-Vr5c11-Vr4c11-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Vr1c8-Hr2c8-Vr2c9-Vr3c9-Hr4c9-Vr4c10-Vr5c10-Hr6c9-Hr6c8-Hr6c7-Hr6c6-Vr5c6-Hr5c6-Hr5c7-Vr4c8-Hr4c7-Vr3c7-Vr2c7-Vr1c7-Hr1c6-Vr1c6-Vr2c6-Vr3c6-Hr4c5-Hr4c4-Hr4c3-Hr4c2-Vr3c2-Vr2c2-Hr2c2-Vr2c3-Hr3c3-Hr3c4-Vr2c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Hr7c1-Hr7c2-Vr6c3-Hr6c2-Vr5c2-Hr5c2-Hr5c3-Hr5c4-Vr5c5-Hr6c4-Vr6c4-Vr7c4-Hr8c3-Hr8c2-Hr8c1-Vr8c1-Hr9c1-Hr9c2-Hr9c3-Vr9c4-Hr10c3-Hr10c2-Hr10c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4- ==> Hr11c5 = 0
w[1]-diagonal-3-2s-in-{r7c8...r10c5}-non-closed-sw-end ==> Vr10c5 = 1

LOOP[118]: Vr9c6-Vr8c6-Hr8c6-Vr7c7-Hr7c6-Hr7c5-Vr7c5-Vr8c5-Vr9c5-Vr10c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Hr10c2-Hr10c3-Vr9c4-Hr9c3-Hr9c2-Hr9c1-Vr8c1-Hr8c1-Hr8c2-Hr8c3-Vr7c4-Vr6c4-Hr6c4-Vr5c5-Hr5c4-Hr5c3-Hr5c2-Vr5c2-Hr6c2-Vr6c3-Hr7c2-Hr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c4-Vr2c5-Hr3c4-Hr3c3-Vr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c2-Hr4c3-Hr4c4-Hr4c5-Vr3c6-Vr2c6-Vr1c6-Hr1c6-Vr1c7-Vr2c7-Vr3c7-Hr4c7-Vr4c8-Hr5c7-Hr5c6-Vr5c6-Hr6c6-Hr6c7-Hr6c8-Hr6c9-Vr5c10-Vr4c10-Hr4c9-Vr3c9-Vr2c9-Hr2c8-Vr1c8-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Vr4c11-Vr5c11-Vr6c11-Hr7c10-Vr7c10-Hr8c10-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Hr11c9-Vr10c9-Hr10c9-Vr9c10-Hr9c9-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Vr8c8-Hr9c7-Vr9c7-Hr10c7-Vr10c8-Hr11c7-Hr11c6- ==> Vr10c6 = 1
vertical-line-r10{c5 c6} ==> Ir10c5 = out
vertical-line-r9{c5 c6} ==> Ir9c6 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXOOXOXXX
XOXXOXOOXO
XOOOOXOOXX
XXXXXXXOOX
XOOOXOOOOX
XXOXXXXXXX
OOOXOOXOXO
XXXXOXXOXX
OOOXOXOOOX
XXXXOXXOXX

.———.———.———.   .   .———.   .———.———.———.
|         2 |       | 3 | 2 |         3 |
.   .———.   .———.   .   .   .———.   .———.
| 2 | 3 |     3 | 2 |   | 1     |   | 3
.   .   .———.———.   .   .   .   .   .———.
|   |         2   2 |   |       | 2     |
.   .———.———.———.———.   .———.   .———.   .
| 1   2   2               3 |     2 |   |
.   .———.———.———.   .———.———.   .   .   .
| 2 | 3   1   3 |   | 3   2         |   |
.   .———.   .———.   .———.———.———.———.   .
|     3 | 2 | 2           1   2         |
.———.———.   .   .———.———.   .———.   .———.
            | 2 |     3 |   | 3 | 2 |
.———.———.———.   .   .———.   .   .   .———.
| 3       2     | 2 | 2   2 | 2 |       |
.———.———.———.   .   .   .———.   .———.   .
  2   2   3 | 2 |   | 2 |     0     |   |
.———.———.———.   .   .   .———.   .———.   .
| 3   2         | 2 |     3 |   | 3     |
.———.———.———.———.   .———.———.   .———.———.

init-time = 4m 18.89s, solve-time = 2m 18.95s, total-time = 6m 37.84s
nb-facts=<Fact-187804>
Quasi-Loop max length = 118
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
