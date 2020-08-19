
(solve
10 10
. . 3 . 2 . . 3 . 3
2 2 . . 2 3 2 2 2 .
. . . 1 2 2 1 . 2 .
. 3 2 3 . . 2 . . 3
1 . . . 2 . 1 . . .
. 2 . . 3 1 3 1 2 3
2 3 3 . 2 . 2 2 . 1
. 2 0 3 . 3 1 . . 2
. . . . . . . . 2 2
3 . 2 3 . . 3 . . .
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 3 . 2 . . 3 . 3
2 2 . . 2 3 2 2 2 .
. . . 1 2 2 1 . 2 .
. 3 2 3 . . 2 . . 3
1 . . . 2 . 1 . . .
. 2 . . 3 1 3 1 2 3
2 3 3 . 2 . 2 2 . 1
. 2 0 3 . 3 1 . . 2
. . . . . . . . 2 2
3 . 2 3 . . 3 . . .

start init-grid-structure 0.0343770980834961
start create-csp-variables
start create-labels 0.00144696235656738
start init-physical-csp-links 0.0139389038085938
start init-physical-non-csp-links 10.6762688159943
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.88960790634155
     start init-physical-BN-non-csp-links at local time 10.4543099403381
     start init-physical-BP-non-csp-links at local time 19.0160391330719
     end init-physical-BP-non-csp-links at local time 238.573446035385
end init-physical-non-csp-links 249.249765872955
start init-corner-B-c-values 249.284409999847
start init-outer-B-candidates 249.284466028214
start init-outer-I-candidates 249.285243034363
start init-H-candidates 249.285761117935
start init-V-candidates 249.28950715065
start init-P-candidates 249.293127059937
start init-inner-I-candidates 249.299849033356
start init-inner-N-and-B-candidates 249.302607059479
start solution 249.314913988113
entering BRT
w[0]-0-in-r8c3 ==> Hr9c3 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr8c3 = 0
w0-adjacent-3-0-in-r8{c4 c3} ==> Vr8c5 = 1, Vr9c4 = 1, Vr7c4 = 1, Hr9c4 = 1, Hr8c4 = 1, Vr9c5 = 0, Vr7c5 = 0, Hr9c5 = 0, Hr8c5 = 0
w[0]-adjacent-3-0-in-c3{r7 r8} ==> Vr7c3 = 1, Hr8c2 = 1, Hr7c3 = 1, Vr6c4 = 0, Vr6c3 = 0, Hr7c4 = 0, Hr7c2 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-2-in-r7c5-open-sw-corner ==> Hr7c5 = 1, Vr7c6 = 1, Hr7c6 = 0, Vr6c6 = 0
w[1]-2-in-r6c2-open-se-corner ==> Hr6c2 = 1, Vr6c2 = 1, Hr6c1 = 0, Vr5c2 = 0
w[1]-diagonal-3-2-3-in-{r2c6...r4c4} ==> Vr2c7 = 1, Vr4c4 = 1, Hr5c4 = 1, Hr2c6 = 1, Vr1c7 = 0, Vr5c4 = 0, Hr5c3 = 0, Hr2c7 = 0
w[1]-diagonal-3-2-in-{r8c6...r7c5}-non-closed-nw-corner ==> Vr8c7 = 1, Hr9c6 = 1, Vr9c7 = 0, Hr9c7 = 0
w[1]-3+diagonal-2-isolated-end-in-{r7c2+r6c2...nw} ==> Vr7c2 = 1, Vr8c2 = 0, Hr8c1 = 0, Hr7c1 = 0
w[1]-diagonal-3-2-in-{r7c3...r8c2}-non-closed-sw-corner ==> Hr9c2 = 1
w[1]-3-in-r10c4-hit-by-verti-line-at-nw ==> Vr10c5 = 1, Hr11c4 = 1, Hr10c3 = 0
w[1]-3-in-r6c5-hit-by-verti-line-at-se ==> Vr6c5 = 1, Hr6c5 = 1
w[1]-diagonal-1-1-in-{r6c6...r5c7}-with-no-sw-outer-sides ==> Hr5c7 = 0, Vr5c8 = 0
w[1]-1+3+1-in-r5c7+r6c7+r6c8 ==> Hr7c8 = 0, Vr6c9 = 0, Vr5c7 = 0
w[1]-adjacent-1-3-on-edge-in-{r7 r6}c10 ==> Vr6c11 = 1, Vr7c10 = 0, Hr8c10 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r8{c7 c6} ==> Vr8c8 = 0, Hr8c7 = 0
w[1]-3+diagonal-2s-isolated-end-in-{r6c10+r6c9...r7c8...sw} ==> Hr7c10 = 1, Vr7c11 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c8 c7} ==> Hr6c7 = 1
w[1]-3-in-r10c4-closed-se-corner ==> Pr10c4 ≠ se, Pr10c4 ≠ nw, Pr10c4 ≠ o
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r8c4-closed-se-corner ==> Pr8c4 ≠ o
w[1]-3-in-r8c4-closed-ne-corner ==> Pr9c4 ≠ o
w[1]-3-in-r7c2-closed-sw-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ne, Pr7c3 ≠ o
w[1]-3-in-r7c2-closed-se-corner ==> Pr7c2 ≠ se, Pr7c2 ≠ nw
w[1]-3-in-r6c10-closed-se-corner ==> Pr6c10 ≠ se, Pr6c10 ≠ nw
w[1]-3-in-r6c5-closed-sw-corner ==> Pr6c6 ≠ sw, Pr6c6 ≠ ne
w[1]-3-in-r6c5-closed-nw-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ nw
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
w[1]-3-in-r1c10-closed-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[3]-adjacent-3-2-in-r6{c10 c9}-noline-west ==> Vr5c10 = 0
P-single: Pr9c4 = se
P-single: Pr8c4 = ne
P-single: Pr8c3 = nw
P-single: Pr9c3 = sw
V-single: Vr9c3 = 1
entering level Loop with <Fact-93406>
entering level Col with <Fact-93516>
no-vertical-line-r7{c10 c11} ==> Ir7c10 = out
no-vertical-line-r7{c9 c10} ==> Ir7c9 = out
no-horizontal-line-{r7 r8}c10 ==> Ir8c10 = out
horizontal-line-{r6 r7}c10 ==> Ir6c10 = in
vertical-line-r1{c10 c11} ==> Ir1c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
vertical-line-r10{c4 c5} ==> Ir10c4 = in
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
w[1]-2-in-r8c10-open-ne-corner ==> Hr9c10 = 1, Vr8c10 = 1, Hr9c9 = 0, Vr9c10 = 0
w[1]-2-in-r9c9-open-ne-corner ==> Hr10c9 = 1, Vr9c9 = 1, Hr10c8 = 0, Vr10c9 = 0
vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = in
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
vertical-line-r9{c8 c9} ==> Ir9c8 = out
no-horizontal-line-{r9 r10}c8 ==> Ir10c8 = out
no-vertical-line-r10{c8 c9} ==> Ir10c9 = out
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1
Starting_init_links_with_<Fact-93647>
2358 candidates, 7385 csp-links and 29538 links. Density = 1.06%
starting non trivial part of solution
Entering_level_W1_with_<Fact-167498>
whip[1]: Hr8c9{1 .} ==> Br8c9 ≠ esw, Br7c9 ≠ o, Br8c9 ≠ o, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Pr8c9 ≠ sw, Pr8c10 ≠ ne, Pr8c10 ≠ ns, Br7c9 ≠ n, Br7c9 ≠ e, Br7c9 ≠ w, Br7c9 ≠ ne, Br7c9 ≠ nw, Br7c9 ≠ ew, Br7c9 ≠ wne, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw
w[1]-3-in-r6c7-asymmetric-se-corner ==> Vr6c7 = 1, Hr6c6 = 0
w[0]-adjacent-3-in-r6c5-nolines-east ==> Vr5c6 = 1
whip[1]: Vr6c7{1 .} ==> Pr6c7 ≠ o, Pr6c7 ≠ ne, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr7c7 ≠ se, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Br6c6 ≠ n, Br6c6 ≠ s, Br6c6 ≠ w, Br6c7 ≠ nes
B-single: Br6c6 = e
w[1]-3-in-r4c4-symmetric-se-corner ==> Vr4c5 = 1
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw
P-single: Pr6c6 = nw
P-single: Pr7c6 = sw
w[1]-1-in-r5c7-asymmetric-sw-corner ==> Pr5c8 ≠ ew, Pr5c8 ≠ se, Pr5c8 ≠ ns
whip[1]: Vr4c5{1 .} ==> Br4c5 ≠ o, Pr4c5 ≠ nw, Pr4c5 ≠ ew, Pr5c5 ≠ o, Br4c4 ≠ swn, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ s, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ nes
P-single: Pr5c5 = nw
whip[1]: Pr5c5{nw .} ==> Br5c4 ≠ s, Br5c4 ≠ e, Br5c4 ≠ o, Br4c4 ≠ wne, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br5c4 ≠ w, Br5c4 ≠ ne, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ wne, Br5c4 ≠ nes, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ sw
B-single: Br5c5 = se
whip[1]: Pr5c6{se .} ==> Br4c6 ≠ ne, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ se, Br5c6 ≠ nes, Br4c6 ≠ o, Br4c6 ≠ n, Br4c6 ≠ e, Br5c6 ≠ o, Br5c6 ≠ n, Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 0
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Pr6c5{ew .} ==> Br6c4 ≠ sw, Br6c4 ≠ wne, Br6c4 ≠ nes, Br6c5 ≠ esw, Br6c4 ≠ o, Br6c4 ≠ s, Br6c4 ≠ w, Br6c4 ≠ ne
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br6c5{nes .} ==> Pr7c5 ≠ sw
whip[1]: Pr7c5{ew .} ==> Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ esw, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c5 ≠ nw, Br7c5 ≠ se, Br6c4 ≠ n, Br7c4 ≠ ne
whip[1]: Br5c4{swn .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ns, Pr5c4 ≠ sw, Nr5c4 ≠ 0
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ se, Br5c3 ≠ wne, Br5c3 ≠ nes, Br5c3 ≠ ne
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Pr4c5{se .} ==> Hr4c4 ≠ 1, Br3c5 ≠ ne, Br3c5 ≠ sw, Br4c4 ≠ nes, Br3c4 ≠ s
H-single: Hr4c4 = 0
B-single: Br4c4 = esw
P-single: Pr5c4 = ne
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ n, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ sw, Br5c3 ≠ e, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c4 ≠ nw, Br5c4 ≠ swn
whip[1]: Br5c4{ns .} ==> Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr6c4 ≠ nw, Nr5c4 ≠ 3
whip[1]: Br5c3{sw .} ==> Pr5c3 ≠ se, Pr5c3 ≠ ew, Nr5c3 ≠ 3
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ w
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ nes, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ w
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 0
whip[1]: Br3c4{w .} ==> Pr3c4 ≠ se, Pr3c5 ≠ sw
whip[1]: Pr6c6{nw .} ==> Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ nes
B-single: Br6c5 = swn
P-single: Pr6c5 = se
P-single: Pr7c5 = ne
whip[1]: Pr6c5{se .} ==> Br5c4 ≠ ns, Br6c4 ≠ ns, Br6c4 ≠ swn
B-single: Br5c4 = n
N-single: Nr5c4 = 1
whip[1]: Pr6c4{sw .} ==> Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ ns
whip[1]: Br6c4{ew .} ==> Pr7c4 ≠ ne, Pr7c4 ≠ se, Pr7c4 ≠ ew, Nr6c4 ≠ 3
whip[1]: Pr7c4{sw .} ==> Br7c4 ≠ nw, Br7c4 ≠ swn, Br7c4 ≠ n, Br7c4 ≠ ns
whip[1]: Pr7c5{ne .} ==> Br7c4 ≠ e, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ esw, Br7c5 ≠ ew, Br7c5 ≠ sw
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Pr7c6{sw .} ==> Br7c6 ≠ ns, Br7c6 ≠ ne, Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br7c5 ≠ ns, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c6 ≠ nes
B-single: Br7c5 = ne
whip[1]: Pr8c6{ns .} ==> Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ nw, Br8c5 ≠ swn, Br8c5 ≠ wne, Br8c5 ≠ nes, Br8c6 ≠ swn, Br8c6 ≠ wne, Br8c5 ≠ n
whip[1]: Br8c6{nes .} ==> Pr8c7 ≠ o, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Pr9c6 ≠ o, Pr9c6 ≠ ns, Pr9c6 ≠ nw, Pr9c6 ≠ sw, Pr9c7 ≠ o, Pr9c7 ≠ ne, Pr9c7 ≠ ns, Pr9c7 ≠ se, Pr9c7 ≠ ew, Pr9c7 ≠ sw
P-single: Pr9c7 = nw
w[1]-1-in-r8c7-asymmetric-sw-corner ==> Pr8c8 ≠ ew, Pr8c8 ≠ ns
P-single: Pr6c10 = sw
H-single: Hr6c9 = 1
H-single: Hr6c10 = 0
V-single: Vr6c10 = 1
w[1]-3-in-r6c10-closed-sw-corner ==> Pr6c11 ≠ sw, Pr6c11 ≠ o
P-single: Pr7c9 = o
V-single: Vr7c9 = 0
w[1]-2-in-r7c8-open-ne-corner ==> Hr8c8 = 1, Vr7c8 = 1
P-single: Pr8c8 = ne
w[1]-1-in-r6c8-symmetric-se-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
w[1]-1-in-r5c7-asymmetric-se-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ew, Pr5c7 ≠ ns
w[1]-1-in-r7c10-asymmetric-nw-corner ==> Pr8c11 ≠ ns
no-vertical-line-r7{c8 c9} ==> Ir7c8 = out
no-horizontal-line-{r6 r7}c8 ==> Ir6c8 = out
no-vertical-line-r6{c8 c9} ==> Ir6c9 = out
horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = in
no-vertical-line-r8{c7 c8} ==> Ir8c8 = in
no-horizontal-line-{r8 r9}c7 ==> Ir9c7 = in
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
horizontal-line-{r8 r9}c6 ==> Ir8c6 = out
different-colours-in-r9{c7 c8} ==> Hr9c8 = 1
w[1]-3-in-r10c7-hit-by-verti-line-at-ne ==> Vr10c7 = 1, Hr11c7 = 1
w[1]-3-in-r10c7-closed-sw-corner ==> Pr10c8 ≠ sw, Pr10c8 ≠ ne, Pr10c8 ≠ o
no-horizontal-line-{r10 r11}c6 ==> Ir10c6 = out
vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
w[1]-3-in-r10c7-closed-se-corner ==> Pr10c7 ≠ se, Pr10c7 ≠ nw, Pr10c7 ≠ o
same-colour-in-{r9 r10}c7 ==> Hr10c7 = 0
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
same-colour-in-r8{c8 c9} ==> Vr8c9 = 0
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
w[1]-3-in-r4c10-hit-by-verti-line-at-se ==> Vr4c10 = 1, Hr4c10 = 1
w[1]-2-in-r3c9-open-se-corner ==> Hr3c9 = 1, Vr3c9 = 1, Hr3c8 = 0, Vr2c9 = 0
w[1]-2-in-r2c8-open-se-corner ==> Hr2c8 = 1, Vr2c8 = 1, Vr1c8 = 0
w[1]-3-in-r1c8-hit-by-verti-line-at-sw ==> Vr1c9 = 1, Hr1c8 = 1
w[1]-2-in-r2c9-open-nw-corner ==> Vr2c10 = 1, Hr3c10 = 0
w[1]-3-in-r1c8-closed-ne-corner ==> Pr2c8 ≠ ne
w[1]-3-in-r1c8-closed-se-corner ==> Pr1c8 ≠ se, Pr1c8 ≠ o
w[1]-3-in-r4c10-closed-nw-corner ==> Pr5c11 ≠ nw, Pr5c11 ≠ o
w[1]-1-in-r3c7-asymmetric-ne-corner ==> Pr4c7 ≠ ew, Pr4c7 ≠ se, Pr4c7 ≠ ns
no-horizontal-line-{r0 r1}c9 ==> Ir1c9 = out
no-horizontal-line-{r1 r2}c9 ==> Ir2c9 = out
no-vertical-line-r2{c8 c9} ==> Ir2c8 = out
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = out
vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
no-horizontal-line-{r2 r3}c10 ==> Ir2c10 = in
horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
vertical-line-r4{c9 c10} ==> Ir4c9 = in
vertical-line-r2{c7 c8} ==> Ir2c7 = in
no-horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
same-colour-in-{r4 r5}c9 ==> Hr5c9 = 0
w[1]-3-in-r4c10-isolated-at-sw-corner ==> Hr5c10 = 1
w[1]-3-in-r4c10-closed-sw-corner ==> Pr4c11 ≠ sw, Pr4c11 ≠ o
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
w[1]-3-in-r1c10-hit-by-verti-line-at-se ==> Vr1c10 = 1
w[1]-3-in-r1c10-closed-nw-corner ==> Pr2c11 ≠ nw, Pr2c11 ≠ o
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
whip[1]: Pr9c7{nw .} ==> Br9c7 ≠ n, Br9c6 ≠ s, Br9c6 ≠ e, Br9c6 ≠ o, Br8c7 ≠ s, Br8c7 ≠ e, Br8c7 ≠ n, Br9c6 ≠ w, Br9c6 ≠ ne, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ wne, Br9c6 ≠ nes, Br9c7 ≠ w, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ nes
B-single: Br8c7 = w
whip[1]: Pr8c7{sw .} ==> Br7c6 ≠ esw, Br7c7 ≠ se, Br7c7 ≠ sw, Br7c6 ≠ w, Br7c7 ≠ ns
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 0, Nr7c6 ≠ 1, Nr7c6 ≠ 3
N-single: Nr7c6 = 2
whip[1]: Pr9c8{se .} ==> Br8c8 ≠ nw, Br8c8 ≠ ew, Br8c8 ≠ sw, Br8c8 ≠ esw, Br8c8 ≠ swn, Br8c8 ≠ wne, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ nes, Br8c8 ≠ w, Br9c8 ≠ n, Br9c8 ≠ w
whip[1]: Br9c7{se .} ==> Pr10c7 ≠ ne, Pr10c7 ≠ ns, Nr9c7 ≠ 3
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br9c6 ≠ n, Br10c6 ≠ o, Br10c6 ≠ e, Br10c6 ≠ s, Br10c6 ≠ w
whip[1]: Br10c6{nes .} ==> Pr10c6 ≠ o, Pr10c6 ≠ ns, Pr10c6 ≠ nw, Pr10c6 ≠ sw, Nr10c6 ≠ 0
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ se, Br9c5 ≠ esw, Br9c5 ≠ nes, Br10c5 ≠ wne, Br10c5 ≠ nes, Br10c5 ≠ ne
whip[1]: Br9c6{swn .} ==> Nr9c6 ≠ 0, Nr9c6 ≠ 1
whip[1]: Br10c7{nes .} ==> Pr11c7 ≠ o, Pr11c7 ≠ nw, Pr11c8 ≠ o, Pr11c8 ≠ ne, Pr11c8 ≠ ew, Pr10c8 ≠ nw, Pr10c8 ≠ ew
P-single: Pr11c8 = nw
whip[1]: Pr11c8{nw .} ==> Br10c8 ≠ s, Br10c8 ≠ e, Br10c8 ≠ n, Br10c8 ≠ o, Br11c8 ≠ n, Br11c7 ≠ o, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn, Br10c8 ≠ nes
B-single: Br11c7 = n
B-single: Br11c8 = o
whip[1]: Pr11c9{ne .} ==> Br10c9 ≠ s, Br10c9 ≠ w, Br10c9 ≠ ns, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ wne, Br10c9 ≠ nes
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 0
whip[1]: Pr10c8{se .} ==> Br9c7 ≠ se, Br9c8 ≠ swn, Br10c7 ≠ nes, Br9c7 ≠ s, Br9c8 ≠ o, Br9c8 ≠ e
B-single: Br10c7 = esw
P-single: Pr11c7 = ne
P-single: Pr10c7 = sw
whip[1]: Pr11c7{ne .} ==> Br10c6 ≠ n, Br11c6 ≠ n, Br10c6 ≠ ns, Br10c6 ≠ nw, Br10c6 ≠ swn, Br10c6 ≠ nes
B-single: Br11c6 = o
whip[1]: Pr11c6{nw .} ==> Br10c5 ≠ ns, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ swn, Br10c5 ≠ e, Br10c5 ≠ s
whip[1]: Br10c6{wne .} ==> Nr10c6 ≠ 1
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 0
whip[1]: Br9c7{e .} ==> Nr9c7 ≠ 2
whip[1]: Pr6c10{sw .} ==> Br6c9 ≠ ns, Br5c10 ≠ ns, Br5c10 ≠ w, Br5c10 ≠ s, Br5c9 ≠ ne, Br5c9 ≠ w, Br5c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ esw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ nes, Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c10 ≠ swn, Br6c10 ≠ wne, Br6c10 ≠ nes
B-single: Br6c10 = esw
P-single: Pr6c11 = ns
P-single: Pr7c11 = nw
P-single: Pr7c10 = ne
B-single: Br6c9 = ne
w[1]-1-in-r7c10-asymmetric-ne-corner ==> Pr8c10 ≠ ew
P-single: Pr8c10 = sw
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ n, Br5c10 ≠ o
whip[1]: Br5c10{ne .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ se, Nr5c10 ≠ 0, Nr5c10 ≠ 3, Pr5c10 ≠ sw
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ s, Br7c10 ≠ e, Br7c10 ≠ w
B-single: Br7c10 = n
P-single: Pr10c9 = ne
P-single: Pr9c10 = ne
P-single: Pr8c11 = o
whip[1]: Pr10c9{ne .} ==> Br10c9 ≠ o, Br9c8 ≠ s, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ ew, Br10c8 ≠ nw, Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c9 ≠ e, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn
B-single: Br10c8 = w
N-single: Nr10c8 = 1
P-single: Pr11c9 = o
P-single: Pr10c8 = ns
B-single: Br9c9 = sw
B-single: Br9c8 = wne
N-single: Nr9c8 = 3
P-single: Pr9c8 = se
P-single: Pr9c9 = sw
whip[1]: Pr11c9{o .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Pr11c10{ne .} ==> Br10c10 ≠ w, Br10c10 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ nes
whip[1]: Br10c10{esw .} ==> Pr10c11 ≠ sw, Nr10c10 ≠ 2
P-single: Pr10c11 = ns
H-single: Hr10c10 = 0
V-single: Vr10c11 = 1
vertical-line-r10{c10 c11} ==> Ir10c10 = in
different-colours-in-{r10 r11}c10 ==> Hr11c10 = 1
different-colours-in-r10{c9 c10} ==> Hr10c10 = 1
whip[1]: Pr10c11{ns .} ==> Br10c10 ≠ n, Br10c10 ≠ o, Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ sw
B-single: Br10c10 = esw
N-single: Nr10c10 = 3
P-single: Pr9c11 = sw
P-single: Pr11c11 = nw
P-single: Pr11c10 = ne
P-single: Pr10c10 = sw
whip[1]: Pr9c11{sw .} ==> Br8c10 ≠ ne, Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ ew, Br9c10 ≠ ew
B-single: Br9c10 = ne
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ne .} ==> Br10c9 ≠ n
B-single: Br10c9 = ne
N-single: Nr10c9 = 2
whip[1]: Vr10c11{1 .} ==> Br10c11 ≠ o
B-single: Br10c11 = w
whip[1]: Pr10c8{ns .} ==> Br9c7 ≠ o
B-single: Br9c7 = e
N-single: Nr9c7 = 1
whip[1]: Pr9c8{se .} ==> Br8c8 ≠ e, Br8c8 ≠ n, Br8c8 ≠ o, Br8c8 ≠ ne
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Pr9c9{sw .} ==> Br8c9 ≠ ns, Br8c8 ≠ se, Br8c8 ≠ nes, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c9 ≠ nes
whip[1]: Br8c9{ne .} ==> Nr8c9 ≠ 0, Nr8c9 ≠ 3
whip[1]: Br8c8{ns .} ==> Nr8c8 ≠ 3
whip[1]: Pr9c10{ne .} ==> Br8c9 ≠ n, Br8c10 ≠ ns
B-single: Br8c10 = sw
B-single: Br8c9 = ne
N-single: Nr8c9 = 2
whip[1]: Pr7c10{ne .} ==> Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ nes
whip[1]: Br7c9{sw .} ==> Nr7c9 ≠ 0, Nr7c9 ≠ 3
whip[1]: Pr6c9{ew .} ==> Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br5c8 ≠ nes, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ w, Br6c8 ≠ e
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Pr7c9{o .} ==> Br6c8 ≠ s, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c9 ≠ sw
B-single: Br7c9 = s
N-single: Nr7c9 = 1
P-single: Pr8c9 = ew
B-single: Br7c8 = sw
whip[1]: Pr8c9{ew .} ==> Br8c8 ≠ s
B-single: Br8c8 = ns
N-single: Nr8c8 = 2
whip[1]: Pr7c8{sw .} ==> Br6c7 ≠ esw, Br7c7 ≠ nw
whip[1]: Br6c7{wne .} ==> Pr6c7 ≠ ns, Pr6c8 ≠ ne, Pr6c8 ≠ ns
P-single: Pr6c7 = se
whip[1]: Pr6c7{se .} ==> Br5c7 ≠ w, Br5c7 ≠ e, Br5c7 ≠ n, Br5c6 ≠ ew, Br5c6 ≠ wne
B-single: Br5c7 = s
P-single: Pr5c8 = ne
H-single: Hr5c8 = 1
V-single: Vr4c8 = 1
whip[1]: Pr5c8{ne .} ==> Br4c8 ≠ n, Br4c8 ≠ o, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c8 ≠ e, Br4c8 ≠ s, Br4c8 ≠ w, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ wne, Br4c8 ≠ nes, Br5c8 ≠ e, Br5c8 ≠ s, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ swn, Br5c8 ≠ wne
whip[1]: Br5c8{ns .} ==> Pr5c9 ≠ o, Pr5c9 ≠ ne, Pr5c9 ≠ ns, Pr5c9 ≠ se, Nr5c8 ≠ 1, Nr5c8 ≠ 3
N-single: Nr5c8 = 2
whip[1]: Pr5c9{sw .} ==> Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn, Br5c9 ≠ swn
whip[1]: Br5c9{sw .} ==> Nr5c9 ≠ 3
whip[1]: Br4c8{swn .} ==> Pr4c8 ≠ nw, Pr4c8 ≠ ew, Nr4c8 ≠ 0, Nr4c8 ≠ 1
whip[1]: Pr4c8{sw .} ==> Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn
whip[1]: Pr5c7{nw .} ==> Br4c6 ≠ ns, Br4c6 ≠ ew, Br4c6 ≠ wne, Br4c6 ≠ s
whip[1]: Br5c6{nw .} ==> Nr5c6 ≠ 3
whip[1]: Vr10c6{0 .} ==> Pr11c6 ≠ nw, Pr10c6 ≠ se, Br10c5 ≠ se, Br10c5 ≠ esw, Br10c6 ≠ wne
P-single: Pr11c6 = o
B-single: Br10c6 = ne
N-single: Nr10c6 = 2
whip[1]: Pr11c6{o .} ==> Br11c5 ≠ n
B-single: Br11c5 = o
whip[1]: Pr11c5{nw .} ==> Br10c4 ≠ swn, Br10c4 ≠ wne
whip[1]: Br10c4{nes .} ==> Pr11c4 ≠ nw, Pr11c5 ≠ o, Pr10c5 ≠ o, Pr10c5 ≠ ne, Pr10c5 ≠ nw, Pr10c5 ≠ ew
P-single: Pr11c5 = nw
whip[1]: Pr11c5{nw .} ==> Br10c5 ≠ n, Br10c5 ≠ o, Br11c4 ≠ o
B-single: Br11c4 = n
whip[1]: Br10c5{nw .} ==> Nr10c5 ≠ 0, Nr10c5 ≠ 3
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ esw, Br9c2 ≠ nes, Br10c3 ≠ nw, Br10c3 ≠ se, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ w
whip[1]: Br9c2{wne .} ==> Nr9c2 ≠ 0
whip[1]: Pr10c5{sw .} ==> Br9c4 ≠ se, Br9c4 ≠ esw, Br9c4 ≠ nes, Br9c5 ≠ sw, Br9c5 ≠ swn
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ nw, Br9c5 ≠ o, Br9c5 ≠ n, Br9c5 ≠ w
whip[1]: Br9c5{wne .} ==> Nr9c5 ≠ 0
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Vr4c10{1 .} ==> Br4c9 ≠ o, Pr4c10 ≠ o, Pr4c10 ≠ ne, Pr4c10 ≠ ew, Pr5c10 ≠ o, Pr5c10 ≠ ew, Br4c9 ≠ n, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ ns, Br4c9 ≠ nw, Br4c10 ≠ nes
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Pr4c10{sw .} ==> Br3c9 ≠ se, Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn
whip[1]: Hr4c10{1 .} ==> Br3c10 ≠ o, Pr4c11 ≠ ns, Pr4c10 ≠ ns, Pr4c10 ≠ sw, Br3c10 ≠ n, Br3c10 ≠ e, Br3c10 ≠ w, Br3c10 ≠ ne, Br3c10 ≠ nw, Br3c10 ≠ ew, Br3c10 ≠ wne, Br4c10 ≠ esw
P-single: Pr2c8 = se
P-single: Pr3c9 = se
P-single: Pr4c10 = se
P-single: Pr4c11 = nw
whip[1]: Pr2c8{se .} ==> Br1c7 ≠ s, Br1c7 ≠ e, Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c8 ≠ esw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ sw, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ sw
B-single: Br2c8 = nw
B-single: Br1c8 = nes
P-single: Pr3c10 = nw
P-single: Pr1c8 = ew
P-single: Pr1c9 = sw
P-single: Pr2c9 = nw
whip[1]: Pr3c10{nw .} ==> Br2c10 ≠ s, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ se, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn, Br2c10 ≠ nes, Br3c9 ≠ ne, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c10 ≠ ns, Br3c10 ≠ nes
B-single: Br2c9 = se
whip[1]: Pr2c10{se .} ==> Br1c9 ≠ ns, Br1c9 ≠ se, Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ swn, Br1c9 ≠ nes, Br1c9 ≠ s
whip[1]: Br3c10{se .} ==> Pr3c11 ≠ nw, Pr3c11 ≠ sw, Nr3c10 ≠ 0, Nr3c10 ≠ 3
whip[1]: Br2c10{wne .} ==> Nr2c10 ≠ 0
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ w, Br1c7 ≠ o
whip[1]: Br1c7{nw .} ==> Pr1c7 ≠ o, Pr1c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ ew, Nr1c7 ≠ 0, Nr1c7 ≠ 3
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ sw, Br1c6 ≠ wne, Br1c6 ≠ nes, Br1c6 ≠ o, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ ne
whip[1]: Br1c6{swn .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ ne, Br1c9 ≠ e, Br1c9 ≠ n, Br1c9 ≠ o, Br1c9 ≠ nw, Br1c9 ≠ wne
whip[1]: Br1c9{ew .} ==> Pr1c10 ≠ ew, Pr1c10 ≠ sw, Nr1c9 ≠ 0, Nr1c9 ≠ 3
whip[1]: Pr1c10{se .} ==> Br1c10 ≠ nes
B-single: Br1c10 = wne
P-single: Pr1c11 = sw
P-single: Pr1c10 = se
P-single: Pr2c11 = ns
P-single: Pr2c10 = ns
whip[1]: Pr1c10{se .} ==> Br1c9 ≠ w
B-single: Br1c9 = ew
N-single: Nr1c9 = 2
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ w, Br2c10 ≠ nw, Br2c10 ≠ wne
B-single: Br2c10 = ew
N-single: Nr2c10 = 2
P-single: Pr3c11 = ns
whip[1]: Pr3c11{ns .} ==> Br3c10 ≠ s
B-single: Br3c10 = se
N-single: Nr3c10 = 2
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ w, Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ nw, Br3c8 ≠ wne, Br3c8 ≠ nes, Br3c7 ≠ s, Br3c8 ≠ n
whip[1]: Br3c8{ew .} ==> Nr3c8 ≠ 3
whip[1]: Br3c7{e .} ==> Hr4c7 ≠ 1, Vr3c7 ≠ 1, Pr4c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ se, Pr4c8 ≠ sw
V-single: Vr3c7 = 0
H-single: Hr4c7 = 0
P-single: Pr5c7 = nw
H-single: Hr5c6 = 1
V-single: Vr4c7 = 1
P-single: Pr4c7 = sw
H-single: Hr4c6 = 1
whip[1]: Vr3c7{0 .} ==> Br3c6 ≠ ne, Br3c6 ≠ se, Br3c6 ≠ ew
whip[1]: Hr4c7{0 .} ==> Br4c7 ≠ ne
B-single: Br4c7 = ew
whip[1]: Pr5c7{nw .} ==> Br4c6 ≠ w, Br4c6 ≠ nw, Br5c6 ≠ w
B-single: Br5c6 = nw
N-single: Nr5c6 = 2
P-single: Pr5c6 = se
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ ew, Br4c5 ≠ wne
whip[1]: Br4c5{nw .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c5 ≠ 3
whip[1]: Pr4c6{ew .} ==> Hr4c5 ≠ 0, Br3c5 ≠ nw, Br3c5 ≠ ew, Br3c6 ≠ sw, Br4c5 ≠ w
H-single: Hr4c5 = 1
B-single: Br4c5 = nw
N-single: Nr4c5 = 2
P-single: Pr4c5 = se
w[1]-1-in-r3c4-symmetric-se-corner ==> Pr3c4 ≠ nw, Pr3c4 ≠ o
whip[1]: Vr3c5{0 .} ==> Pr3c5 ≠ ns, Br3c4 ≠ e
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ nes, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ w
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br3c6{nw .} ==> Hr3c6 ≠ 0, Pr3c6 ≠ ns
H-single: Hr3c6 = 1
w[1]-3-in-r2c6-closed-se-corner ==> Pr2c6 ≠ se, Pr2c6 ≠ nw, Pr2c6 ≠ o
P-single: Pr3c8 = ns
V-single: Vr3c8 = 1
P-single: Pr3c6 = ew
H-single: Hr3c5 = 1
V-single: Vr2c6 = 0
V-single: Vr3c6 = 0
P-single: Pr4c6 = ew
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
vertical-line-r4{c3 c4} ==> Ir4c3 = out
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
vertical-line-r4{c6 c7} ==> Ir4c7 = in
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
no-vertical-line-r3{c6 c7} ==> Ir3c6 = in
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
no-vertical-line-r6{c5 c6} ==> Ir6c5 = in
vertical-line-r6{c4 c5} ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-vertical-line-r6{c2 c3} ==> Ir6c2 = out
no-horizontal-line-{r6 r7}c2 ==> Ir7c2 = out
vertical-line-r7{c1 c2} ==> Ir7c1 = in
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = in
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-horizontal-line-{r7 r8}c1 ==> Ir8c1 = in
no-vertical-line-r8{c1 c2} ==> Ir8c2 = in
no-vertical-line-r8{c2 c3} ==> Ir8c3 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
vertical-line-r8{c4 c5} ==> Ir8c5 = out
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
no-vertical-line-r7{c4 c5} ==> Ir7c4 = out
vertical-line-r7{c3 c4} ==> Ir7c3 = in
vertical-line-r7{c5 c6} ==> Ir7c6 = in
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
no-vertical-line-r9{c4 c5} ==> Ir9c4 = out
vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-horizontal-line-{r9 r10}c3 ==> Ir10c3 = in
vertical-line-r9{c2 c3} ==> Ir9c2 = out
vertical-line-r6{c6 c7} ==> Ir6c7 = out
no-vertical-line-r5{c7 c8} ==> Ir5c8 = in
horizontal-line-{r4 r5}c8 ==> Ir4c8 = out
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
w[1]-diagonal-3-2-in-{r6c7...r5c8}-non-closed-ne-corner ==> Hr7c7 = 1, Vr7c7 = 0
w[1]-2-in-r7c6-open-ne-corner ==> Hr8c6 = 1, Vr8c6 = 0
w[0]-adjacent-3-in-r8c6-nolines-west ==> Vr9c6 = 1
w[1]-3-in-r8c6-closed-ne-corner ==> Pr9c6 ≠ ne
w[1]-3-in-r10c4-isolated-at-ne-corner ==> Hr10c4 = 1
w[1]-2-in-r10c3-open-ne-corner ==> Hr11c3 = 1, Vr10c3 = 1, Hr11c2 = 0
w[1]-3-in-r10c4-closed-ne-corner ==> Pr11c4 ≠ ne
P-single: Pr11c4 = ew
P-single: Pr6c8 = ew
H-single: Hr6c8 = 1
no-horizontal-line-{r10 r11}c2 ==> Ir10c2 = out
same-colour-in-{r9 r10}c2 ==> Hr10c2 = 0
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se, Pr10c1 ≠ o
same-colour-in-{r3 r4}c8 ==> Hr4c8 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
w[1]-3-in-r4c2-hit-by-verti-line-at-se ==> Vr4c2 = 1, Hr4c2 = 1
w[1]-3-in-r4c2-closed-nw-corner ==> Pr5c3 ≠ nw, Pr5c3 ≠ o
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
whip[1]: Hr3c6{1 .} ==> Br2c6 ≠ wne
whip[1]: Hr3c7{0 .} ==> Pr3c7 ≠ ew, Br2c7 ≠ se, Br3c7 ≠ n
P-single: Pr3c7 = nw
B-single: Br3c7 = e
P-single: Pr4c8 = ns
B-single: Br2c7 = ew
whip[1]: Pr3c7{nw .} ==> Br2c6 ≠ swn
whip[1]: Pr4c8{ns .} ==> Br3c8 ≠ e, Br3c8 ≠ o, Br3c8 ≠ s, Br3c8 ≠ se, Br4c8 ≠ swn
whip[1]: Br4c8{esw .} ==> Pr4c9 ≠ nw, Pr4c9 ≠ ew
whip[1]: Pr4c9{se .} ==> Br4c8 ≠ sw, Br4c9 ≠ ne, Br4c9 ≠ se, Br4c9 ≠ nes, Br4c9 ≠ e
B-single: Br4c8 = esw
N-single: Nr4c8 = 3
P-single: Pr5c9 = nw
whip[1]: Pr5c9{nw .} ==> Br5c8 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ sw
B-single: Br5c9 = s
N-single: Nr5c9 = 1
P-single: Pr5c10 = ne
P-single: Pr6c9 = ew
B-single: Br5c8 = ns
w[1]-1-in-r6c8-asymmetric-ne-corner ==> Pr7c8 ≠ ns
P-single: Pr8c7 = sw
P-single: Pr7c8 = sw
whip[1]: Pr5c10{ne .} ==> Br4c10 ≠ wne, Br5c10 ≠ e
B-single: Br5c10 = ne
N-single: Nr5c10 = 2
P-single: Pr5c11 = sw
B-single: Br4c10 = swn
whip[1]: Pr6c9{ew .} ==> Br6c8 ≠ w
B-single: Br6c8 = n
whip[1]: Pr8c7{sw .} ==> Br7c6 ≠ ew, Br7c7 ≠ ew, Br8c6 ≠ esw
B-single: Br8c6 = nes
P-single: Pr7c7 = ne
P-single: Pr8c6 = ne
B-single: Br7c7 = ne
B-single: Br7c6 = sw
whip[1]: Pr7c7{ne .} ==> Br6c7 ≠ wne
B-single: Br6c7 = swn
whip[1]: Pr8c6{ne .} ==> Br8c5 ≠ e, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 3
whip[1]: Br4c9{wne .} ==> Nr4c9 ≠ 1
whip[1]: Br3c8{ew .} ==> Nr3c8 ≠ 0
whip[1]: Pr3c6{ew .} ==> Br2c5 ≠ ne, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c6 ≠ esw, Br3c5 ≠ se, Br3c6 ≠ nw
B-single: Br3c6 = ns
B-single: Br3c5 = ns
B-single: Br2c6 = nes
P-single: Pr2c7 = sw
whip[1]: Pr2c7{sw .} ==> Br1c6 ≠ e, Br1c6 ≠ n, Br1c6 ≠ nw, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ esw, Br1c7 ≠ nw
B-single: Br1c7 = n
N-single: Nr1c7 = 1
P-single: Pr1c7 = ew
whip[1]: Br1c6{swn .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Nr1c6 ≠ 1
whip[1]: Pr2c5{ew .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ sw, Br2c4 ≠ sw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br1c4 ≠ o, Br1c4 ≠ n, Br1c4 ≠ w, Br1c5 ≠ ne, Br2c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ne
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0
whip[1]: Br1c4{wne .} ==> Nr1c4 ≠ 0
whip[1]: Pr2c6{ew .} ==> Br1c5 ≠ nw, Br1c5 ≠ se
whip[1]: Pr4c6{ew .} ==> Br4c6 ≠ se
B-single: Br4c6 = nes
N-single: Nr4c6 = 3
whip[1]: Vr9c6{1 .} ==> Pr9c6 ≠ ew, Pr10c6 ≠ ew, Br9c5 ≠ s, Br9c5 ≠ ns, Br9c6 ≠ ns
P-single: Pr10c6 = ne
P-single: Pr9c6 = se
B-single: Br9c6 = swn
N-single: Nr9c6 = 3
whip[1]: Pr10c6{ne .} ==> Br10c5 ≠ nw
B-single: Br10c5 = w
N-single: Nr10c5 = 1
whip[1]: Pr10c5{sw .} ==> Br9c4 ≠ nw, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ w
whip[1]: Br9c4{wne .} ==> Nr9c4 ≠ 0
whip[1]: Pr9c6{se .} ==> Br8c5 ≠ s, Br8c5 ≠ sw, Br9c5 ≠ ne, Br9c5 ≠ wne
whip[1]: Br9c5{ew .} ==> Pr9c5 ≠ ne, Pr9c5 ≠ se, Pr9c5 ≠ ew, Nr9c5 ≠ 3
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
whip[1]: Hr10c4{1 .} ==> Pr10c4 ≠ ns, Pr10c5 ≠ ns, Br9c4 ≠ e, Br9c4 ≠ ne, Br9c4 ≠ ew, Br9c4 ≠ wne, Br10c4 ≠ esw
P-single: Pr10c5 = sw
B-single: Br10c4 = nes
whip[1]: Pr10c5{sw .} ==> Br9c5 ≠ ew
B-single: Br9c5 = e
N-single: Nr9c5 = 1
whip[1]: Pr9c5{nw .} ==> Br8c4 ≠ swn, Br8c4 ≠ wne
whip[1]: Br8c4{nes .} ==> Pr8c5 ≠ o, Pr9c5 ≠ o
P-single: Pr9c5 = nw
P-single: Pr8c5 = sw
whip[1]: Pr9c5{nw .} ==> Br9c4 ≠ s, Br8c5 ≠ o, Br9c4 ≠ sw
B-single: Br8c5 = w
N-single: Nr8c5 = 1
whip[1]: Br9c4{swn .} ==> Nr9c4 ≠ 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ w, Br7c4 ≠ o, Br8c4 ≠ esw
B-single: Br8c4 = nes
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 0
whip[1]: Pr10c4{ew .} ==> Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ esw, Br9c3 ≠ nes, Br10c3 ≠ ew, Br9c3 ≠ o, Br9c3 ≠ n, Br9c3 ≠ w, Br10c3 ≠ ne
whip[1]: Br10c3{sw .} ==> Pr11c3 ≠ nw
whip[1]: Pr11c3{ew .} ==> Br11c3 ≠ o, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c2 ≠ esw, Br10c2 ≠ nes, Br10c2 ≠ o, Br10c2 ≠ n, Br10c2 ≠ w
B-single: Br11c3 = n
whip[1]: Br10c2{wne .} ==> Nr10c2 ≠ 0
whip[1]: Br9c3{wne .} ==> Nr9c3 ≠ 0
whip[1]: Vr10c3{1 .} ==> Pr11c3 ≠ ew, Pr10c3 ≠ ne, Pr10c3 ≠ ew, Br10c2 ≠ s, Br10c2 ≠ ns, Br10c2 ≠ sw, Br10c2 ≠ swn, Br10c3 ≠ ns
P-single: Pr10c4 = ne
P-single: Pr11c3 = ne
B-single: Br10c3 = sw
whip[1]: Pr10c4{ne .} ==> Br9c3 ≠ s, Br9c3 ≠ ns, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c4 ≠ ns
B-single: Br9c4 = swn
N-single: Nr9c4 = 3
whip[1]: Pr11c3{ne .} ==> Br11c2 ≠ n
B-single: Br11c2 = o
whip[1]: Pr11c2{nw .} ==> Br10c1 ≠ swn
B-single: Br10c1 = esw
H-single: Hr10c1 = 0
P-single: Pr11c1 = ne
P-single: Pr11c2 = nw
P-single: Pr10c1 = ns
V-single: Vr9c1 = 1
vertical-line-r9{c0 c1} ==> Ir9c1 = in
different-colours-in-r9{c1 c2} ==> Hr9c2 = 1
whip[1]: Hr10c1{0 .} ==> Br9c1 ≠ s, Br9c1 ≠ ns, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ nes
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{nw .} ==> Br10c2 ≠ e, Br10c2 ≠ ne
whip[1]: Br10c2{wne .} ==> Nr10c2 ≠ 1
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ n, Br9c1 ≠ o, Br9c1 ≠ ne
whip[1]: Br9c1{wne .} ==> Pr9c1 ≠ o, Pr9c1 ≠ ne, Nr9c1 ≠ 0
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Vr9c2{1 .} ==> Pr9c2 ≠ nw, Pr9c2 ≠ ew, Pr10c2 ≠ se, Br9c1 ≠ w, Br9c1 ≠ nw, Br9c2 ≠ e, Br9c2 ≠ s, Br9c2 ≠ ne, Br9c2 ≠ ns
P-single: Pr10c2 = ns
whip[1]: Pr10c2{ns .} ==> Br9c2 ≠ sw, Br9c2 ≠ swn, Br10c2 ≠ wne
B-single: Br10c2 = ew
N-single: Nr10c2 = 2
P-single: Pr10c3 = ns
whip[1]: Pr10c3{ns .} ==> Br9c3 ≠ e, Br9c3 ≠ ne
whip[1]: Br9c3{wne .} ==> Nr9c3 ≠ 1
whip[1]: Br9c2{wne .} ==> Nr9c2 ≠ 1
whip[1]: Br9c1{wne .} ==> Nr9c1 ≠ 1
whip[1]: Pr9c2{se .} ==> Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ nes, Br8c2 ≠ ne, Br8c2 ≠ sw, Br9c1 ≠ wne, Br8c1 ≠ s
B-single: Br9c1 = ew
N-single: Nr9c1 = 2
P-single: Pr9c1 = ns
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Vr5c3{1 .} ==> Br5c3 ≠ o, Br5c2 ≠ o, Pr6c3 ≠ se, Pr6c3 ≠ ew, Br5c2 ≠ n, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ sw, Br5c2 ≠ swn, Br5c3 ≠ s
whip[1]: Br5c3{sw .} ==> Nr5c3 ≠ 0
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Pr6c3{nw .} ==> Br5c3 ≠ sw, Br6c2 ≠ ne, Br6c2 ≠ sw, Br6c3 ≠ ne, Br6c3 ≠ wne, Br6c3 ≠ nes
B-single: Br5c3 = w
N-single: Nr5c3 = 1
P-single: Pr6c4 = o
whip[1]: Pr6c4{o .} ==> Br6c4 ≠ ew
B-single: Br6c4 = e
N-single: Nr6c4 = 1
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ esw, Br7c3 ≠ swn
whip[1]: Br7c3{nes .} ==> Pr7c3 ≠ ns, Pr7c4 ≠ o
P-single: Pr7c4 = sw
whip[1]: Pr7c4{sw .} ==> Br7c4 ≠ s, Br6c3 ≠ w, Br6c3 ≠ o
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
whip[1]: Br6c3{sw .} ==> Nr6c3 ≠ 0, Nr6c3 ≠ 3
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ se, Br6c2 ≠ ew, Br6c3 ≠ sw, Br7c2 ≠ wne, Br7c2 ≠ nes
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr6c3 = nw
whip[1]: Pr6c3{nw .} ==> Br5c2 ≠ e, Br5c2 ≠ ne, Br5c2 ≠ ew, Br5c2 ≠ wne
whip[1]: Br5c2{nes .} ==> Pr5c2 ≠ se, Pr6c2 ≠ ns, Pr6c2 ≠ sw, Nr5c2 ≠ 1
whip[1]: Pr6c2{ew .} ==> Br6c1 ≠ wne, Br6c1 ≠ nes, Br6c1 ≠ ne
whip[1]: Br7c2{swn .} ==> Pr7c2 ≠ ew, Pr8c2 ≠ ns, Pr8c2 ≠ ew, Pr8c2 ≠ sw
P-single: Pr8c2 = ne
P-single: Pr7c2 = ns
whip[1]: Pr8c2{ne .} ==> Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ sw, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ wne, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew
B-single: Br8c2 = ns
P-single: Pr9c2 = se
B-single: Br8c1 = w
N-single: Nr8c1 = 1
P-single: Pr8c1 = ns
whip[1]: Pr9c2{se .} ==> Br9c2 ≠ ew
B-single: Br9c2 = wne
N-single: Nr9c2 = 3
whip[1]: Pr8c1{ns .} ==> Br7c1 ≠ ne
B-single: Br7c1 = ew
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ e, Br6c1 ≠ n, Br6c1 ≠ o, Br6c1 ≠ s, Br6c1 ≠ ns, Br6c1 ≠ se, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn
whip[1]: Br6c1{ew .} ==> Pr6c1 ≠ o, Pr6c1 ≠ ne, Nr6c1 ≠ 0, Nr6c1 ≠ 3
w[1]-1-in-r5c1-asymmetric-sw-corner ==> Pr5c2 ≠ ew, Pr5c2 ≠ nw, Pr5c2 ≠ ns
w[1]-3-in-r4c2-symmetric-sw-corner ==> Hr5c2 = 1
w[1]-2-in-r4c3-open-sw-corner ==> Hr4c3 = 1, Vr3c4 = 0
w[1]-3+diagonal-2-isolated-end-in-{r4c2+r4c3...ne} ==> Vr3c3 = 0
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = in
vertical-line-r4{c1 c2} ==> Ir4c2 = out
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
whip[1]: Hr5c2{1 .} ==> Pr5c2 ≠ o, Pr5c2 ≠ sw, Pr5c3 ≠ ns, Br4c2 ≠ wne, Br5c2 ≠ se, Br5c2 ≠ esw
P-single: Pr4c4 = sw
P-single: Pr5c3 = sw
P-single: Pr5c2 = ne
B-single: Br5c2 = nes
N-single: Nr5c2 = 3
w[1]-1-in-r3c4-symmetric-sw-corner ==> Pr3c5 ≠ ne
P-single: Pr2c6 = ew
H-single: Hr2c5 = 1
V-single: Vr1c6 = 0
P-single: Pr3c5 = ew
H-single: Hr3c4 = 1
V-single: Vr2c5 = 0
no-vertical-line-r2{c4 c5} ==> Ir2c4 = out
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ w, Br3c3 ≠ ne, Br3c3 ≠ e, Br3c3 ≠ ew, Br3c3 ≠ wne, Br4c3 ≠ ew
B-single: Br4c3 = ne
P-single: Pr4c3 = ew
B-single: Br3c4 = n
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ ne, Br3c2 ≠ e, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c3 ≠ sw, Br3c3 ≠ swn, Br4c2 ≠ esw, Br4c2 ≠ nes
B-single: Br4c2 = swn
P-single: Pr4c2 = se
whip[1]: Pr4c2{se .} ==> Br4c1 ≠ w, Br4c1 ≠ s, Br4c1 ≠ n, Br4c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ sw, Br3c2 ≠ swn, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ sw, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ nes
whip[1]: Br4c1{esw .} ==> Pr4c1 ≠ ne, Pr4c1 ≠ se, Nr4c1 ≠ 0
whip[1]: Br3c2{ns .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ se, Pr3c3 ≠ ns, Pr3c3 ≠ se, Nr3c2 ≠ 3, Pr3c2 ≠ sw, Pr3c3 ≠ sw
whip[1]: Br3c1{nw .} ==> Nr3c1 ≠ 3
whip[1]: Br3c3{ns .} ==> Nr3c3 ≠ 3
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ n, Br2c4 ≠ e
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 1
whip[1]: Pr5c2{ne .} ==> Br5c1 ≠ n, Br4c1 ≠ se, Br4c1 ≠ esw, Br5c1 ≠ e
whip[1]: Br5c1{w .} ==> Pr5c1 ≠ ne, Pr5c1 ≠ se
whip[1]: Br4c1{ew .} ==> Nr4c1 ≠ 3
whip[1]: Pr2c6{ew .} ==> Br1c5 ≠ ew, Br1c6 ≠ swn, Br2c5 ≠ sw
B-single: Br2c5 = ns
P-single: Pr2c5 = ew
H-single: Hr2c4 = 1
V-single: Vr1c5 = 0
w[1]-3-in-r1c3-hit-by-horiz-line-at-se ==> Vr1c3 = 1, Hr1c3 = 1, Vr2c4 = 0
w[1]-3-in-r1c3-closed-nw-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
B-single: Br1c6 = ns
N-single: Nr1c6 = 2
P-single: Pr1c6 = ew
B-single: Br1c5 = ns
P-single: Pr1c5 = ew
H-single: Hr1c4 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-ne ==> Hr2c3 = 1
w[1]-2-in-r2c2-open-ne-corner ==> Hr3c2 = 1, Vr2c2 = 1, Hr3c1 = 0
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
vertical-line-r2{c1 c2} ==> Ir2c2 = out
no-vertical-line-r2{c2 c3} ==> Ir2c3 = out
horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
vertical-line-r1{c2 c3} ==> Ir1c2 = out
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1

LOOP[114]: Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr9c3-Vr10c3-Hr11c3-Hr11c4-Vr10c5-Hr10c4-Vr9c4-Hr9c4-Vr8c5-Hr8c4-Vr7c4-Hr7c3-Vr7c3-Hr8c2-Vr7c2-Vr6c2-Hr6c2-Vr5c3-Hr5c2-Vr4c2-Hr4c2-Hr4c3-Vr4c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Vr7c6-Hr8c6-Vr8c7-Hr9c6-Vr9c6-Hr10c6-Vr10c7-Hr11c7-Vr10c8-Vr9c8-Hr9c8-Vr9c9-Hr10c9-Vr10c10-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr8c10-Hr8c9-Hr8c8-Vr7c8-Hr7c7-Vr6c7-Hr6c7-Hr6c8-Hr6c9-Vr6c10-Hr7c10-Vr6c11-Vr5c11-Hr5c10-Vr4c10-Hr4c10-Vr3c11-Vr2c11-Vr1c11-Hr1c10-Vr1c10-Vr2c10-Hr3c9-Vr3c9-Vr4c9-Hr5c8-Vr4c8-Vr3c8-Vr2c8-Hr2c8-Vr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Hr1c3-Vr1c3-Hr2c3-Hr2c4-Hr2c5-Hr2c6-Vr2c7-Hr3c6-Hr3c5-Hr3c4-Hr3c3-Hr3c2-Vr2c2- ==> Hr2c1 = 1
no-vertical-line-r1{c1 c2} ==> Ir1c1 = out
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OOXXXXXXOX
XOOOOOXOOX
XXXXXXXOXX
XOOXOOXOXO
XXOOOXXXXX
XOOOXXOOOX
XOXOOXXOOO
XXXXOOXXXO
XOXOOXXOXX
XOXXOOXOOX

.   .   .———.———.———.———.———.———.   .———.
        | 3       2           3 |   | 3 |
.———.   .———.———.———.———.   .———.   .   .
| 2 | 2           2   3 | 2 | 2   2 |   |
.   .———.———.———.———.———.   .   .———.   .
|             1   2   2   1 |   | 2     |
.   .———.———.   .———.———.   .   .   .———.
|   | 3   2 | 3 |       | 2 |   |   | 3
.   .———.   .———.   .———.   .———.   .———.
| 1     |         2 |     1             |
.   .———.   .   .———.   .———.———.———.   .
|   | 2         | 3   1 | 3   1   2 | 3 |
.   .   .———.   .———.   .———.   .   .———.
| 2 | 3 | 3 |     2 |     2 | 2       1
.   .———.   .———.   .———.   .———.———.   .
|     2   0   3 |     3 | 1         | 2
.   .———.   .———.   .———.   .———.   .———.
|   |   |   |       |       |   | 2   2 |
.   .   .   .———.   .———.   .   .———.   .
| 3 |   | 2   3 |       | 3 |       |   |
.———.   .———.———.   .   .———.   .   .———.

init-time = 4m 9.31s, solve-time = 2m 10.09s, total-time = 6m 19.41s
nb-facts=<Fact-186787>
Quasi-Loop max length = 114
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



