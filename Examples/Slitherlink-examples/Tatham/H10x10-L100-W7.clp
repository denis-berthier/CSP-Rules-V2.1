

(solve-tatham
10 10
"2a3b21a2a11a1i22a231333b2a0c202a1a2d2b1a2a2a2b2b13a3a2a1b32b121a0a22a1a3a11d1"
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 . 3 . . 2 1 . 2 .
1 1 . 1 . . . . . .
. . . 2 2 . 2 3 1 3
3 3 . . 2 . 0 . . .
2 0 2 . 1 . 2 . . .
. 2 . . 1 . 2 . 2 .
2 . . 2 . . 1 3 . 3
. 2 . 1 . . 3 2 . .
1 2 1 . 0 . 2 2 . 1
. 3 . 1 1 . . . . 1

start init-grid-structure 0.0107769966125488
start create-csp-variables
start create-labels 0.00130987167358398
start init-physical-csp-links 0.0132408142089844
start init-physical-non-csp-links 14.1481227874756
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.15410399436951
     start init-physical-BN-non-csp-links at local time 12.3617930412292
     start init-physical-BP-non-csp-links at local time 24.3649308681488
     end init-physical-BP-non-csp-links at local time 250.713517904282
end init-physical-non-csp-links 264.861687898636
start init-corner-B-c-values 264.872708082199
start init-outer-B-candidates 264.872771978378
start init-outer-I-candidates 264.873754024506
start init-H-candidates 264.874289035797
start init-V-candidates 264.879216909409
start init-P-candidates 264.883353948593
start init-inner-I-candidates 264.890458106995
start init-inner-N-and-B-candidates 264.893350124359
start solution 264.908379077911
entering BRT
w[0]-0-in-r9c5 ==> Hr10c5 = 0, Hr9c5 = 0, Vr9c6 = 0, Vr9c5 = 0
w[0]-0-in-r5c2 ==> Hr6c2 = 0, Hr5c2 = 0, Vr5c3 = 0, Vr5c2 = 0
w[0]-0-in-r4c7 ==> Hr5c7 = 0, Hr4c7 = 0, Vr4c8 = 0, Vr4c7 = 0
w[0]-adjacent-3-0-in-c2{r4 r5} ==> Vr4c3 = 1, Vr4c2 = 1, Hr5c3 = 1, Hr5c1 = 1, Hr4c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr4c3 = 0, Hr4c1 = 0
w[1]-1-in-se-corner ==> Vr10c11 = 0, Hr11c10 = 0
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-diagonal-3-0-in-{r3c8...r4c7} ==> Vr3c8 = 1, Hr4c8 = 1
w[1]-diagonal-3s-in-{r7c8...r8c7} ==> Vr7c9 = 1, Vr8c7 = 1, Hr9c7 = 1, Hr7c8 = 1, Vr6c9 = 0, Vr9c7 = 0, Hr9c6 = 0, Hr7c9 = 0
w[1]-2-in-r6c9-open-sw-corner ==> Hr6c9 = 1, Vr6c10 = 1, Hr6c10 = 0, Vr5c10 = 0
w[1]-diagonal-3-2-in-{r7c10...r6c9}-non-closed-nw-corner ==> Vr7c11 = 1, Hr8c10 = 1, Vr8c11 = 0
w[1]-3-in-r4c1-hit-by-horiz-line-at-ne ==> Vr4c1 = 1
w[1]-diagonal-3-2-in-{r4c2...r5c1}-non-closed-sw-corner ==> Hr6c1 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-nw ==> Vr1c4 = 1, Hr2c3 = 1
w[1]-adjacent-1-1-on-edge-in-r10{c4 c5} ==> Vr10c5 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r9 r10} ==> Hr10c10 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r2{c1 c2} ==> Vr2c2 = 0
w[1]-3-in-r8c7-closed-sw-corner ==> Pr8c8 ≠ sw, Pr8c8 ≠ ne, Pr8c8 ≠ o
w[1]-3-in-r4c2-closed-nw-corner ==> Pr5c3 ≠ o
w[1]-3-in-r4c1-closed-sw-corner ==> Pr4c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ o
w[1]-3-in-r4c1-closed-se-corner ==> Pr4c1 ≠ se, Pr4c1 ≠ o
w[1]-3-in-r3c8-closed-sw-corner ==> Pr3c9 ≠ sw, Pr3c9 ≠ ne, Pr3c9 ≠ o
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
diagonal-1-3-in-sw-corner ==> Vr10c2 = 0, Hr10c1 = 1
P-single: Pr5c3 = ne
P-single: Pr5c2 = nw
P-single: Pr6c2 = sw
V-single: Vr6c2 = 1
w[1]-1-in-r10c10-symmetric-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-1-in-r10c4-symmetric-ne-corner ==> Pr11c4 ≠ ne, Pr11c4 ≠ o
w[1]-1-in-r8c4-symmetric-se-corner ==> Pr8c4 ≠ se, Pr8c4 ≠ nw, Pr8c4 ≠ o
w[1]-1-in-r2c2-symmetric-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
entering level Loop with <Fact-93200>
entering level Col with <Fact-93282>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
no-vertical-line-r5{c1 c2} ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = in
vertical-line-r4{c1 c2} ==> Ir4c2 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
vertical-line-r6{c1 c2} ==> Ir6c1 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
same-colour-in-{r1 r2}c2 ==> Hr2c2 = 0
same-colour-in-{r2 r3}c2 ==> Hr3c2 = 0
w[1]-diagonal-3-1-in-{r1c3...r2c2}-open-end ==> Hr1c3 = 1
w[1]-3-in-r1c3-closed-ne-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
w[1]-1-in-r2c2-asymmetric-ne-corner ==> Pr3c2 ≠ ew, Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ ns
no-horizontal-line-{r0 r1}c4 ==> Ir1c4 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
no-vertical-line-r2{c3 c4} ==> Ir2c3 = out
horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
different-colours-in-r2{c2 c3} ==> Hr2c3 = 1
same-colour-in-{r2 r3}c1 ==> Hr3c1 = 0
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
same-colour-in-{r8 r9}c10 ==> Hr9c10 = 0
same-colour-in-r9{c10 c11} ==> Vr9c11 = 0
Starting_init_links_with_<Fact-93448>
2402 candidates, 7736 csp-links and 31036 links. Density = 1.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-170997>
whip[1]: Vr9c11{0 .} ==> Br9c10 ≠ e, Br9c11 ≠ w, Pr9c11 ≠ ns, Pr9c11 ≠ sw, Pr10c11 ≠ ns, Pr10c11 ≠ nw
B-single: Br9c11 = o
w[1]-1-in-r10c10-symmetric-ne-corner ==> Pr11c10 ≠ ne, Pr11c10 ≠ o
whip[1]: Pr11c10{ew .} ==> Br11c9 ≠ o, Hr11c9 ≠ 0, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ wne, Br10c9 ≠ o, Br10c9 ≠ n, Br10c9 ≠ e, Br10c9 ≠ w, Br10c9 ≠ ne, Br10c10 ≠ n
H-single: Hr11c9 = 1
B-single: Br10c10 = w
V-single: Vr10c10 = 1
P-single: Pr11c11 = o
P-single: Pr11c10 = nw
P-single: Pr10c11 = o
B-single: Br11c9 = n
w[1]-1-in-r9c10-symmetric-se-corner ==> Pr9c10 ≠ se, Pr9c10 ≠ nw, Pr9c10 ≠ o
vertical-line-r10{c9 c10} ==> Ir10c9 = in
whip[1]: Vr10c10{1 .} ==> Br10c9 ≠ s, Br10c9 ≠ ns, Br10c9 ≠ sw, Br10c9 ≠ swn
whip[1]: Br10c9{nes .} ==> Pr10c9 ≠ se, Nr10c9 ≠ 0, Nr10c9 ≠ 1
whip[1]: Pr11c11{o .} ==> Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Pr10c11{o .} ==> Br9c10 ≠ s
whip[1]: Pr9c10{sw .} ==> Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ esw, Br8c9 ≠ nes, Br8c9 ≠ o, Br8c9 ≠ n, Br8c9 ≠ w
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 0
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ esw, Br10c8 ≠ nes, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ w
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 0
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ esw, Br9c9 ≠ nes, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ w
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Pr9c11{nw .} ==> Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br8c10 ≠ e, Br8c10 ≠ s
whip[1]: Hr9c10{0 .} ==> Br9c10 ≠ n, Pr9c11 ≠ nw, Pr9c10 ≠ ne, Pr9c10 ≠ ew, Br8c10 ≠ se, Br8c10 ≠ esw, Br8c10 ≠ nes
P-single: Pr9c11 = o
B-single: Br9c10 = w
V-single: Vr9c10 = 1
P-single: Pr10c10 = ns
H-single: Hr10c9 = 0
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
whip[1]: Vr9c10{1 .} ==> Br9c9 ≠ s, Br9c9 ≠ ns, Br9c9 ≠ sw, Br9c9 ≠ swn
whip[1]: Br9c9{wne .} ==> Pr10c9 ≠ ne, Pr10c9 ≠ ew
whip[1]: Pr10c9{sw .} ==> Br10c9 ≠ nes
whip[1]: Br8c10{nw .} ==> Pr8c11 ≠ ns, Pr8c11 ≠ sw, Nr8c10 ≠ 3
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ swn, Br7c10 ≠ wne
whip[1]: Br7c10{nes .} ==> Pr7c11 ≠ o, Pr7c11 ≠ nw, Pr8c11 ≠ o, Pr8c10 ≠ o, Pr8c10 ≠ ns, Pr8c10 ≠ nw, Pr8c10 ≠ sw
P-single: Pr8c11 = nw
whip[1]: Pr8c11{nw .} ==> Br8c10 ≠ o, Br8c10 ≠ w
whip[1]: Br8c10{nw .} ==> Nr8c10 ≠ 0
whip[1]: Pr8c10{ew .} ==> Br7c9 ≠ se, Br7c9 ≠ esw, Br7c9 ≠ nes, Br8c9 ≠ wne, Br8c9 ≠ ne
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ nw, Br6c10 ≠ se, Br6c10 ≠ esw, Br6c10 ≠ nes, Br6c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ w
whip[1]: Br6c10{wne .} ==> Nr6c10 ≠ 0
whip[1]: Vr3c1{1 .} ==> Br3c1 ≠ nes, Br3c0 ≠ o, Br3c1 ≠ o, Pr3c1 ≠ o, Pr3c1 ≠ ne, Br3c1 ≠ n, Br3c1 ≠ e, Br3c1 ≠ s, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se
B-single: Br3c0 = e
w[1]-1-in-r2c1-asymmetric-sw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw
P-single: Pr2c2 = o
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
w[1]-2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1
P-single: Pr1c1 = se
vertical-line-r1{c0 c1} ==> Ir1c1 = in
whip[1]: Pr2c2{o .} ==> Br1c1 ≠ se, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ nes, Br2c1 ≠ n, Br2c1 ≠ e, Br2c2 ≠ n, Br2c2 ≠ w
B-single: Br1c1 = nw
P-single: Pr1c2 = ew
P-single: Pr2c1 = ns
w[1]-1-in-r2c1-asymmetric-nw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne
P-single: Pr3c2 = o
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ e, Br1c2 ≠ o
whip[1]: Br1c2{ne .} ==> Pr2c3 ≠ nw, Nr1c2 ≠ 0, Nr1c2 ≠ 3, Pr2c3 ≠ ew
whip[1]: Pr2c3{se .} ==> Br1c3 ≠ esw, Br1c3 ≠ swn, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ nes, Br2c2 ≠ s, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ e, Br2c3 ≠ s
B-single: Br2c2 = e
whip[1]: Pr3c3{ns .} ==> Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ s, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ swn, Br3c3 ≠ wne, Br3c2 ≠ n, Br3c3 ≠ o, Br3c3 ≠ e
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br1c3{nes .} ==> Pr1c3 ≠ sw, Pr1c4 ≠ o, Pr1c4 ≠ se, Pr1c4 ≠ ew, Pr2c4 ≠ o, Pr2c4 ≠ se, Pr2c4 ≠ ew, Pr2c4 ≠ sw
P-single: Pr1c4 = sw
P-single: Pr1c3 = ew
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ ns, Br1c4 ≠ ne, Br1c4 ≠ s, Br1c4 ≠ e, Br1c4 ≠ n, Br1c4 ≠ o, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes
whip[1]: Br1c4{esw .} ==> Pr1c5 ≠ ew, Pr1c5 ≠ sw, Nr1c4 ≠ 0
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ nes, Br1c5 ≠ n, Br1c5 ≠ w
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ ne, Br1c3 ≠ wne
B-single: Br1c3 = nes
P-single: Pr2c3 = se
P-single: Pr2c4 = nw
B-single: Br1c2 = n
N-single: Nr1c2 = 1
w[1]-1-in-r2c4-symmetric-nw-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
whip[1]: Pr2c3{se .} ==> Br2c3 ≠ w, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw
whip[1]: Br2c3{wne .} ==> Pr3c4 ≠ nw, Nr2c3 ≠ 1
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ n, Br1c4 ≠ sw, Br1c4 ≠ esw, Br2c3 ≠ wne, Br2c4 ≠ w
whip[1]: Br2c4{s .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ ns, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr2c5 ≠ sw
whip[1]: Br1c4{ew .} ==> Nr1c4 ≠ 3
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ s
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ s
B-single: Br2c1 = w
P-single: Pr3c1 = ns
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ wne
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 0
whip[1]: Pr3c2{o .} ==> Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c2 ≠ w, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw
whip[1]: Br3c2{se .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ nw, Nr3c2 ≠ 3
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ esw, Br3c2 ≠ o, Br3c2 ≠ e
whip[1]: Br3c2{se .} ==> Pr4c3 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ se, Nr3c2 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br3c3 ≠ sw, Br3c3 ≠ esw, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne
whip[1]: Br4c1{swn .} ==> Pr4c1 ≠ ne, Pr5c1 ≠ ns
P-single: Pr5c1 = ne
P-single: Pr4c1 = ns
whip[1]: Pr5c1{ne .} ==> Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ sw
whip[1]: Br5c1{ns .} ==> Pr6c1 ≠ ns
P-single: Pr6c1 = se
whip[1]: Pr6c1{se .} ==> Br6c1 ≠ w, Br6c1 ≠ s, Br6c1 ≠ e, Br6c1 ≠ n, Br6c1 ≠ o, Br5c1 ≠ ne, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ se, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ nes
B-single: Br5c1 = ns
whip[1]: Br6c1{wne .} ==> Pr7c1 ≠ o, Pr7c1 ≠ se, Pr7c2 ≠ nw, Nr6c1 ≠ 0, Nr6c1 ≠ 1
w[1]-1-in-r9c3-asymmetric-nw-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ew, Pr10c4 ≠ ns, Pr10c4 ≠ ne
w[1]-1-in-r10c4-symmetric-nw-corner ==> Pr11c5 ≠ nw, Pr11c5 ≠ o
whip[1]: Pr11c5{ew .} ==> Br11c5 ≠ o, Hr11c5 ≠ 0, Br10c4 ≠ n, Br10c4 ≠ w, Br10c5 ≠ n, Br10c5 ≠ e, Br10c5 ≠ w
H-single: Hr11c5 = 1
B-single: Br10c5 = s
V-single: Vr10c6 = 0
P-single: Pr11c5 = ew
H-single: Hr11c4 = 1
P-single: Pr11c6 = ew
H-single: Hr11c6 = 1
P-single: Pr10c5 = o
H-single: Hr10c4 = 0
P-single: Pr10c6 = o
H-single: Hr10c6 = 0
B-single: Br11c5 = n
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = in
no-vertical-line-r9{c4 c5} ==> Ir9c5 = in
no-vertical-line-r9{c5 c6} ==> Ir9c6 = in
no-vertical-line-r9{c6 c7} ==> Ir9c7 = in
horizontal-line-{r8 r9}c7 ==> Ir8c7 = out
vertical-line-r8{c6 c7} ==> Ir8c6 = in
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
same-colour-in-r8{c5 c6} ==> Vr8c6 = 0
whip[1]: Vr10c6{0 .} ==> Br10c6 ≠ w, Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ wne
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ e, Br11c4 ≠ o
B-single: Br11c4 = n
P-single: Pr11c4 = ew
H-single: Hr11c3 = 1
V-single: Vr10c4 = 0
w[1]-3-in-r10c2-hit-by-horiz-line-at-se ==> Hr10c2 = 1
w[1]-diagonal-1-1-in-{r10c4...r9c3}-with-no-nw-inner-sides ==> Hr10c3 = 0, Vr9c4 = 0
w[1]-3-in-r10c2-closed-nw-corner ==> Pr11c3 ≠ nw, Pr11c3 ≠ o
B-single: Br10c4 = s
no-vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-horizontal-line-{r9 r10}c3 ==> Ir10c3 = in
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ ne, Br10c3 ≠ w, Br10c3 ≠ e, Br10c3 ≠ n, Br10c3 ≠ o, Br11c3 ≠ o, Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ wne, Br10c3 ≠ nes
B-single: Br11c3 = n
whip[1]: Br10c3{swn .} ==> Nr10c3 ≠ 0
whip[1]: Hr10c2{1 .} ==> Pr10c2 ≠ o, Pr10c2 ≠ ns, Pr10c2 ≠ nw, Pr10c2 ≠ sw, Pr10c3 ≠ ne, Pr10c3 ≠ ns, Br9c2 ≠ ne, Br9c2 ≠ nw, Br9c2 ≠ ew, Br10c2 ≠ esw
whip[1]: Pr9c3{ew .} ==> Br8c2 ≠ nw, Br8c2 ≠ se, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn, Br9c2 ≠ sw, Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ e, Br8c3 ≠ ne, Br9c3 ≠ e, Br9c3 ≠ s
whip[1]: Br9c3{w .} ==> Pr9c4 ≠ ns, Pr10c4 ≠ nw, Pr9c4 ≠ se, Pr9c4 ≠ sw, Pr10c3 ≠ ew
P-single: Pr10c4 = o
whip[1]: Pr10c4{o .} ==> Br9c4 ≠ s, Br9c4 ≠ w, Br9c4 ≠ ns, Br9c4 ≠ nw, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ nes, Br10c3 ≠ ns, Br10c3 ≠ swn
whip[1]: Br10c3{sw .} ==> Nr10c3 ≠ 3
whip[1]: Br9c4{ne .} ==> Nr9c4 ≠ 3
whip[1]: Br8c3{nes .} ==> Nr8c3 ≠ 0
whip[1]: Br9c2{se .} ==> Pr9c2 ≠ ns, Pr9c2 ≠ sw
whip[1]: Pr9c2{ew .} ==> Br9c1 ≠ e
whip[1]: Br9c1{w .} ==> Pr10c1 ≠ ne, Pr9c1 ≠ se
whip[1]: Pr9c1{ns .} ==> Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ nes
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ ne, Br10c1 ≠ n
whip[1]: Br10c2{nes .} ==> Pr11c2 ≠ o
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ o
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 0
whip[1]: Pr10c2{ew .} ==> Br10c1 ≠ sw
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 2
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ nes
whip[1]: Br10c2{wne .} ==> Pr11c2 ≠ ew, Pr10c2 ≠ ew
P-single: Pr10c2 = se
w[1]-1-in-r9c1-symmetric-se-corner ==> Pr9c1 ≠ o
whip[1]: Pr10c2{se .} ==> Br9c1 ≠ s, Br10c1 ≠ swn
whip[1]: Br10c1{esw .} ==> Pr10c1 ≠ se
whip[1]: Pr9c1{ns .} ==> Vr8c1 ≠ 0, Br8c1 ≠ ne, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
V-single: Vr8c1 = 1
vertical-line-r8{c0 c1} ==> Ir8c1 = in
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o, Pr8c1 ≠ o, Pr8c1 ≠ ne
P-single: Pr6c3 = se
H-single: Hr6c3 = 1
V-single: Vr6c3 = 1
B-single: Br8c0 = e
vertical-line-r6{c2 c3} ==> Ir6c3 = in
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ w, Br6c3 ≠ s, Br6c3 ≠ e, Br6c3 ≠ n, Br6c3 ≠ o, Br5c3 ≠ ne, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ sw, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ sw, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ nes
whip[1]: Br6c3{wne .} ==> Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr7c3 ≠ ew, Pr7c3 ≠ sw, Pr7c4 ≠ nw, Nr6c3 ≠ 0, Nr6c3 ≠ 1
whip[1]: Pr7c3{ns .} ==> Hr7c2 ≠ 1, Br6c2 ≠ se, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c2 ≠ nes, Br7c3 ≠ s, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c2 ≠ n, Br7c3 ≠ o, Br7c3 ≠ e
H-single: Hr7c2 = 0
B-single: Br6c2 = ew
P-single: Pr7c2 = ns
H-single: Hr7c1 = 0
V-single: Vr7c2 = 1
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = in
vertical-line-r7{c1 c2} ==> Ir7c2 = out
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
whip[1]: Pr7c2{ns .} ==> Br7c2 ≠ e, Br7c2 ≠ o, Br6c1 ≠ nw, Br6c1 ≠ swn, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ sw, Br7c2 ≠ s, Br7c2 ≠ se
B-single: Br6c1 = wne
N-single: Nr6c1 = 3
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ se
B-single: Br7c1 = ew
P-single: Pr8c1 = ns
whip[1]: Pr8c1{ns .} ==> Br8c1 ≠ nw, Br8c1 ≠ swn, Br8c1 ≠ wne
whip[1]: Br8c1{esw .} ==> Nr8c1 ≠ 0
whip[1]: Br7c2{esw .} ==> Nr7c2 ≠ 0
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Pr6c4{sw .} ==> Vr5c4 ≠ 1, Br5c3 ≠ se, Br5c4 ≠ nw, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ wne, Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ swn, Br6c4 ≠ wne, Br5c4 ≠ w, Br6c4 ≠ o, Br6c4 ≠ e, Br6c4 ≠ s
V-single: Vr5c4 = 0
B-single: Br5c3 = ns
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c4 ≠ o, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ne
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ ne, Br10c6 ≠ e, Br10c6 ≠ n, Br10c6 ≠ o, Br11c6 ≠ o
B-single: Br11c6 = n
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ sw, Br10c7 ≠ esw, Br10c7 ≠ swn, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ e, Br10c7 ≠ ne
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 0
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Pr10c5{o .} ==> Br9c4 ≠ e, Br9c4 ≠ ne
whip[1]: Br9c4{n .} ==> Nr9c4 ≠ 2
whip[1]: Pr10c6{o .} ==> Br9c6 ≠ s, Br9c6 ≠ w, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c6 ≠ nes, Br10c6 ≠ ns, Br10c6 ≠ nes
whip[1]: Br10c6{se .} ==> Pr10c7 ≠ nw, Pr10c7 ≠ ew, Pr10c7 ≠ sw, Nr10c6 ≠ 3
whip[1]: Pr10c7{se .} ==> Br9c7 ≠ sw, Br10c7 ≠ ns, Br10c7 ≠ nes
whip[1]: Br9c6{ne .} ==> Nr9c6 ≠ 3
whip[1]: Vr8c6{0 .} ==> Pr8c6 ≠ ns, Pr8c6 ≠ se, Pr8c6 ≠ sw, Pr9c6 ≠ ne, Br8c5 ≠ e, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne, Br8c5 ≠ nes, Br8c6 ≠ w, Br8c6 ≠ nw, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ swn, Br8c6 ≠ wne
P-single: Pr9c6 = o
whip[1]: Pr9c6{o .} ==> Br8c5 ≠ s, Br8c5 ≠ ns, Br8c5 ≠ sw, Br8c5 ≠ swn, Br8c6 ≠ s, Br8c6 ≠ ns, Br8c6 ≠ se, Br8c6 ≠ nes, Br9c6 ≠ n, Br9c6 ≠ ne
whip[1]: Br9c6{e .} ==> Nr9c6 ≠ 2, Pr9c7 ≠ nw, Pr9c7 ≠ ew, Pr9c7 ≠ sw
whip[1]: Pr9c7{ns .} ==> Br8c7 ≠ nes, Br9c7 ≠ nw
whip[1]: Br8c7{wne .} ==> Pr8c7 ≠ o, Pr8c7 ≠ ne, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Pr9c7 ≠ o, Pr9c8 ≠ se
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ se, Br10c8 ≠ swn, Br10c8 ≠ wne, Br10c8 ≠ e, Br10c8 ≠ s
whip[1]: Br10c8{sw .} ==> Nr10c8 ≠ 1, Nr10c8 ≠ 3
N-single: Nr10c8 = 2
whip[1]: Pr9c8{sw .} ==> Br8c8 ≠ sw, Br9c8 ≠ nw
whip[1]: Br9c8{sw .} ==> Pr10c9 ≠ o
whip[1]: Pr10c9{sw .} ==> Br10c8 ≠ sw
whip[1]: Br10c8{ew .} ==> Pr11c8 ≠ ne
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ ew, Br10c7 ≠ wne
whip[1]: Br10c7{se .} ==> Pr10c8 ≠ sw, Nr10c7 ≠ 3
whip[1]: Pr10c8{ew .} ==> Br9c8 ≠ ne
whip[1]: Br9c8{sw .} ==> Pr9c9 ≠ sw
whip[1]: Br8c8{ew .} ==> Pr8c9 ≠ o, Pr8c9 ≠ ne
whip[1]: Pr8c9{sw .} ==> Br7c9 ≠ sw, Br7c9 ≠ swn
whip[1]: Pr9c7{ns .} ==> Br8c6 ≠ o, Br8c6 ≠ n
whip[1]: Br8c6{ne .} ==> Nr8c6 ≠ 0, Nr8c6 ≠ 3
whip[1]: Pr8c7{sw .} ==> Br7c6 ≠ se, Br7c6 ≠ esw, Br7c6 ≠ nes
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ sw, Br4c1 ≠ swn
B-single: Br4c1 = esw
P-single: Pr4c2 = se
B-single: Br3c1 = w
N-single: Nr3c1 = 1
whip[1]: Pr4c2{se .} ==> Br4c2 ≠ nes
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr3c3{1 .} ==> Br3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c4 ≠ o, Pr3c4 ≠ se, Br2c3 ≠ nw, Br3c3 ≠ w
P-single: Pr3c3 = ne
B-single: Br2c3 = swn
N-single: Nr2c3 = 3
whip[1]: Pr3c3{ne .} ==> Br3c2 ≠ se
B-single: Br3c2 = s
N-single: Nr3c2 = 1
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ se, Br4c3 ≠ s
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 1
whip[1]: Pr5c6{sw .} ==> Br4c5 ≠ nw, Br4c5 ≠ se, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ o, Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{nes .} ==> Nr5c6 ≠ 0
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ nw, Br3c4 ≠ se
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr5c2{nw .} ==> Br4c2 ≠ swn
B-single: Br4c2 = wne
P-single: Pr4c3 = sw
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ ns, Br3c3 ≠ ns, Br3c3 ≠ nes, Br4c3 ≠ nes
whip[1]: Br4c3{esw .} ==> Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr4c4 ≠ sw
whip[1]: Br3c3{ne .} ==> Nr3c3 ≠ 3
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e
B-single: Br5c0 = o
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Vr5c10{0 .} ==> Br5c10 ≠ wne, Pr5c10 ≠ ns, Pr5c10 ≠ se, Pr5c10 ≠ sw, Pr6c10 ≠ ns, Pr6c10 ≠ nw, Br5c9 ≠ e, Br5c9 ≠ ne, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ esw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c10 ≠ w, Br5c10 ≠ nw, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn
whip[1]: Pr6c10{sw .} ==> Br6c9 ≠ sw, Br6c10 ≠ e, Br6c10 ≠ s
whip[1]: Br6c10{wne .} ==> Nr6c10 ≠ 1
whip[1]: Hr6c10{0 .} ==> Br6c10 ≠ wne, Pr6c11 ≠ nw, Pr6c11 ≠ sw, Pr6c10 ≠ se, Pr6c10 ≠ ew, Br5c10 ≠ s, Br5c10 ≠ ns, Br5c10 ≠ se, Br5c10 ≠ nes, Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ swn
P-single: Pr6c10 = sw
whip[1]: Pr6c10{sw .} ==> Br6c9 ≠ ns, Br5c9 ≠ w, Br5c9 ≠ n, Br5c9 ≠ o, Br5c9 ≠ nw, Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ ew
B-single: Br6c9 = ne
whip[1]: Pr6c9{ew .} ==> Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br5c8 ≠ nes, Br6c8 ≠ se, Br6c8 ≠ ew, Br6c8 ≠ esw, Br6c8 ≠ wne, Br6c8 ≠ nes, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ w, Br6c8 ≠ e, Br6c8 ≠ ne
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Pr7c10{ns .} ==> Br7c9 ≠ ne, Br7c9 ≠ ns, Br7c9 ≠ nw, Br7c9 ≠ wne, Br7c9 ≠ n
whip[1]: Br7c9{ew .} ==> Nr7c9 ≠ 3
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ esw, Br7c8 ≠ swn
whip[1]: Br7c8{nes .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ns, Pr7c8 ≠ nw, Pr7c8 ≠ sw, Pr7c9 ≠ o, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c9 ≠ sw
P-single: Pr7c9 = sw
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ s, Br7c9 ≠ e, Br7c9 ≠ o, Br6c8 ≠ w, Br6c8 ≠ n, Br6c8 ≠ o, Br6c8 ≠ nw
whip[1]: Br6c8{swn .} ==> Nr6c8 ≠ 0
whip[1]: Br7c9{ew .} ==> Hr8c9 ≠ 1, Pr8c10 ≠ ew, Nr7c9 ≠ 0
H-single: Hr8c9 = 0
whip[1]: Hr8c9{0 .} ==> Br8c9 ≠ ns, Br8c9 ≠ swn
whip[1]: Br8c9{sw .} ==> Nr8c9 ≠ 3
whip[1]: Pr10c7{se .} ==> Vr10c7 ≠ 0, Br9c7 ≠ ne, Br10c7 ≠ se, Br10c6 ≠ s, Br10c7 ≠ s
V-single: Vr10c7 = 1
B-single: Br10c6 = se
N-single: Nr10c6 = 2
P-single: Pr11c7 = nw
no-horizontal-line-{r10 r11}c7 ==> Ir10c7 = out
different-colours-in-{r9 r10}c7 ==> Hr10c7 = 1
whip[1]: Hr11c7{0 .} ==> Br11c7 ≠ n, Pr11c8 ≠ nw, Pr11c8 ≠ ew
w[1]-3-in-r8c7-asymmetric-se-corner ==> Hr8c7 = 1, Vr7c7 = 0, Hr8c6 = 0
w[1]-3-in-r7c8-hit-by-horiz-line-at-sw ==> Vr8c8 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c7 c8} ==> Hr8c8 = 1, Hr7c7 = 0
w[1]-3-in-r8c7-hit-by-horiz-line-at-ne ==> Vr7c8 = 0
w[1]-3-in-r7c8-closed-se-corner ==> Pr7c8 ≠ se
w[3]-adjacent-3-2-in-r8{c7 c8}-noline-east ==> Vr9c8 = 0
P-single: Pr10c9 = sw
H-single: Hr10c8 = 1
V-single: Vr9c9 = 0
V-single: Vr10c9 = 1
P-single: Pr11c8 = o
V-single: Vr10c8 = 0
B-single: Br11c7 = o
w[1]-1-in-r7c7-asymmetric-se-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ew, Pr7c7 ≠ ns
no-vertical-line-r10{c7 c8} ==> Ir10c8 = out
horizontal-line-{r9 r10}c8 ==> Ir9c8 = in
no-vertical-line-r8{c7 c8} ==> Ir8c8 = out
no-vertical-line-r8{c8 c9} ==> Ir8c9 = out
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = out
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = out
no-vertical-line-r6{c8 c9} ==> Ir6c8 = out
horizontal-line-{r6 r7}c8 ==> Ir7c8 = in
no-vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
vertical-line-r6{c9 c10} ==> Ir6c10 = in
no-horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
no-vertical-line-r5{c9 c10} ==> Ir5c9 = in
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-{r6 r7}c10 ==> Hr7c10 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
w[1]-3-in-r7c10-hit-by-verti-line-at-ne ==> Vr7c10 = 1
w[1]-3-in-r7c10-closed-sw-corner ==> Pr7c11 ≠ sw
P-single: Pr7c11 = ns
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-{r8 r9}c9 ==> Hr9c9 = 1
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1
whip[1]: Hr8c7{1 .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ sw, Pr8c8 ≠ ns, Br7c7 ≠ n, Br7c7 ≠ e, Br7c7 ≠ w, Br8c7 ≠ esw
P-single: Pr8c8 = ew
P-single: Pr8c7 = se
B-single: Br7c7 = s
P-single: Pr7c8 = ne
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ wne, Br8c7 ≠ wne, Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ ew
B-single: Br8c7 = swn
P-single: Pr9c7 = ne
P-single: Pr9c8 = ew
B-single: Br7c8 = nes
P-single: Pr8c9 = nw
whip[1]: Pr9c7{ne .} ==> Br9c6 ≠ e, Br9c7 ≠ ew
B-single: Br9c7 = ns
P-single: Pr10c7 = se
P-single: Pr10c8 = ew
B-single: Br9c6 = o
N-single: Nr9c6 = 0
whip[1]: Pr10c7{se .} ==> Br10c7 ≠ w
B-single: Br10c7 = nw
N-single: Nr10c7 = 2
whip[1]: Pr10c8{ew .} ==> Br9c8 ≠ ew, Br9c8 ≠ sw, Br10c8 ≠ ew
whip[1]: Pr9c8{ew .} ==> Br8c8 ≠ ne, Br9c8 ≠ se
B-single: Br9c8 = ns
P-single: Pr9c9 = ew
B-single: Br8c8 = ns
whip[1]: Pr9c9{ew .} ==> Br9c9 ≠ e, Br8c9 ≠ e, Br8c9 ≠ ew, Br8c9 ≠ sw, Br9c9 ≠ ew, Br9c9 ≠ wne
B-single: Br9c9 = ne
N-single: Nr9c9 = 2
P-single: Pr9c10 = sw
B-single: Br8c9 = s
N-single: Nr8c9 = 1
P-single: Pr8c10 = ne
whip[1]: Pr9c10{sw .} ==> Br8c10 ≠ nw
B-single: Br8c10 = n
N-single: Nr8c10 = 1
whip[1]: Pr8c10{ne .} ==> Br7c9 ≠ w, Br7c10 ≠ nes
B-single: Br7c10 = esw
P-single: Pr7c10 = ns
B-single: Br7c9 = ew
N-single: Nr7c9 = 2
whip[1]: Pr7c10{ns .} ==> Br6c10 ≠ sw
B-single: Br6c10 = ew
N-single: Nr6c10 = 2
P-single: Pr6c11 = ns
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ n, Br5c10 ≠ o
whip[1]: Br5c10{ne .} ==> Pr5c11 ≠ o, Pr5c11 ≠ nw, Nr5c10 ≠ 0, Nr5c10 ≠ 3
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ esw, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ n, Br4c10 ≠ w
whip[1]: Br4c10{wne .} ==> Nr4c10 ≠ 0
whip[1]: Pr8c7{se .} ==> Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ swn, Br7c6 ≠ wne, Br8c6 ≠ ne
B-single: Br8c6 = e
N-single: Nr8c6 = 1
whip[1]: Pr8c6{nw .} ==> Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ e, Br7c5 ≠ s
whip[1]: Br7c6{nw .} ==> Nr7c6 ≠ 3
whip[1]: Pr7c8{ne .} ==> Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c8 ≠ s, Br6c8 ≠ ns
whip[1]: Br6c8{swn .} ==> Pr6c8 ≠ nw, Pr6c8 ≠ ew, Nr6c8 ≠ 1
P-single: Pr5c7 = sw
H-single: Hr5c6 = 1
V-single: Vr5c7 = 1
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ ns, Br5c7 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ w, Br5c6 ≠ n, Br4c6 ≠ ne, Br4c6 ≠ w, Br4c6 ≠ n, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ nes, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c7 ≠ nw, Br5c7 ≠ se
whip[1]: Br5c7{sw .} ==> Pr6c7 ≠ ew
whip[1]: Pr6c7{ns .} ==> Hr6c6 ≠ 1, Br5c6 ≠ nes, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br6c6 ≠ nes, Br6c6 ≠ n
H-single: Hr6c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r5 r6} ==> Hr6c5 = 0
B-single: Br5c6 = ne
V-single: Vr5c6 = 0
N-single: Nr5c6 = 2
w[1]-1-in-r6c5-symmetric-ne-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ne, Pr7c5 ≠ o
whip[1]: Hr6c5{0 .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c6 ≠ sw, Br5c5 ≠ s, Br6c5 ≠ n
P-single: Pr6c6 = o
V-single: Vr6c6 = 0
w[1]-1-in-r5c5-symmetric-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ e, Br6c5 ≠ e, Br6c6 ≠ w, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ esw
whip[1]: Br6c6{se .} ==> Pr7c6 ≠ ne, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Nr6c6 ≠ 3
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ nes, Br4c4 ≠ w
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ esw, Br7c3 ≠ nes, Br7c4 ≠ sw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br7c3 ≠ n, Br7c3 ≠ w, Br7c4 ≠ ne, Br8c3 ≠ s, Br8c3 ≠ w, Br8c4 ≠ e, Br8c4 ≠ s
whip[1]: Br8c4{w .} ==> Hr9c4 ≠ 1, Vr8c5 ≠ 1, Pr8c5 ≠ ns, Pr9c4 ≠ ne, Pr9c5 ≠ nw, Pr8c5 ≠ se, Pr8c5 ≠ sw, Pr9c4 ≠ ew
V-single: Vr8c5 = 0
H-single: Hr9c4 = 0
P-single: Pr9c5 = o
no-horizontal-line-{r8 r9}c4 ==> Ir8c4 = in
whip[1]: Vr8c5{0 .} ==> Br8c5 ≠ w, Br8c5 ≠ nw
whip[1]: Br8c5{n .} ==> Nr8c5 ≠ 2
whip[1]: Hr9c4{0 .} ==> Br9c4 ≠ n
B-single: Br9c4 = o
N-single: Nr9c4 = 0
whip[1]: Pr9c4{nw .} ==> Br8c3 ≠ ns, Br8c3 ≠ ew
whip[1]: Br8c3{se .} ==> Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ ew, Pr8c3 ≠ sw, Nr8c3 ≠ 1, Nr8c3 ≠ 3
N-single: Nr8c3 = 2
whip[1]: Pr8c3{se .} ==> Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c3 ≠ sw, Br8c2 ≠ ne
whip[1]: Br8c2{sw .} ==> Pr9c2 ≠ o
whip[1]: Pr9c2{ew .} ==> Br8c1 ≠ w
whip[1]: Br8c1{esw .} ==> Nr8c1 ≠ 1
whip[1]: Br7c3{ew .} ==> Pr7c4 ≠ o, Pr7c4 ≠ ne, Nr7c3 ≠ 1, Nr7c3 ≠ 3
N-single: Nr7c3 = 2
whip[1]: Pr7c4{sw .} ==> Br6c4 ≠ sw, Br6c4 ≠ esw, Br7c4 ≠ se
whip[1]: Br7c4{ew .} ==> Pr8c5 ≠ nw
whip[1]: Pr8c5{ew .} ==> Br7c5 ≠ nw, Br7c5 ≠ w
whip[1]: Br7c5{nes .} ==> Pr7c5 ≠ se
whip[1]: Pr7c5{ew .} ==> Br6c4 ≠ n, Br6c4 ≠ w
whip[1]: Br6c4{nes .} ==> Pr6c5 ≠ o, Nr6c4 ≠ 1
whip[1]: Pr6c5{sw .} ==> Br5c4 ≠ o, Br5c4 ≠ n
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Br7c2{esw .} ==> Nr7c2 ≠ 2
whip[1]: Br4c6{sw .} ==> Nr4c6 ≠ 1, Nr4c6 ≠ 3
N-single: Nr4c6 = 2
whip[1]: Pr6c8{sw .} ==> Hr6c8 ≠ 1, Br5c8 ≠ sw, Br5c8 ≠ swn, Br6c8 ≠ swn, Br5c8 ≠ s, Br5c8 ≠ ns
H-single: Hr6c8 = 0
B-single: Br6c8 = sw
N-single: Nr6c8 = 2
P-single: Pr6c9 = ne
V-single: Vr5c9 = 1
vertical-line-r5{c8 c9} ==> Ir5c8 = out
whip[1]: Pr6c9{ne .} ==> Br5c9 ≠ s, Br5c9 ≠ ns
whip[1]: Br5c9{swn .} ==> Pr5c9 ≠ o, Pr5c9 ≠ ne, Pr5c9 ≠ nw, Pr5c9 ≠ ew, Nr5c9 ≠ 1
whip[1]: Pr5c9{sw .} ==> Br4c8 ≠ se, Br4c8 ≠ esw, Br4c8 ≠ nes, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn
whip[1]: Pr7c7{nw .} ==> Br6c6 ≠ e, Br6c6 ≠ s
whip[1]: Br6c6{se .} ==> Nr6c6 ≠ 1
whip[1]: Pr10c9{sw .} ==> Br10c8 ≠ ns, Br10c9 ≠ se
B-single: Br10c9 = esw
N-single: Nr10c9 = 3
P-single: Pr11c9 = ne
B-single: Br10c8 = ne
whip[1]: Pr11c9{ne .} ==> Br11c8 ≠ n
B-single: Br11c8 = o
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Hr4c8{1 .} ==> Br4c8 ≠ sw, Br4c8 ≠ o, Pr4c8 ≠ o, Pr4c9 ≠ o, Pr4c9 ≠ ne, Pr4c9 ≠ ns, Pr4c9 ≠ se, Br3c8 ≠ wne, Br4c8 ≠ e, Br4c8 ≠ s, Br4c8 ≠ w, Br4c8 ≠ ew
P-single: Pr4c8 = ne
whip[1]: Pr4c8{ne .} ==> Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ sw, Br3c8 ≠ nes, Br4c8 ≠ nw, Br4c8 ≠ swn, Br4c8 ≠ wne
whip[1]: Br4c8{ns .} ==> Nr4c8 ≠ 0, Nr4c8 ≠ 3
whip[1]: Br3c8{swn .} ==> Pr3c8 ≠ nw, Pr3c8 ≠ ew
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ se, Br2c7 ≠ esw, Br2c7 ≠ nes, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ esw, Br2c6 ≠ nes, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ w
whip[1]: Br2c6{wne .} ==> Nr2c6 ≠ 0
whip[1]: Pr4c9{sw .} ==> Br4c9 ≠ nw, Br4c9 ≠ wne
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Br3c9{w .} ==> Pr3c10 ≠ sw, Pr4c10 ≠ nw, Pr3c9 ≠ se
whip[1]: Pr3c9{ew .} ==> Br2c8 ≠ nw, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br2c8 ≠ o, Br2c8 ≠ n, Br2c8 ≠ w, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ e, Br2c9 ≠ ne
whip[1]: Br2c9{nes .} ==> Nr2c9 ≠ 0
whip[1]: Br2c8{nes .} ==> Nr2c8 ≠ 0
whip[1]: Pr4c7{nw .} ==> Br3c6 ≠ s, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ e
whip[1]: Br1c7{w .} ==> Pr1c8 ≠ sw, Pr2c7 ≠ ne, Pr2c8 ≠ nw, Pr1c7 ≠ se
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ se, Br1c6 ≠ ew
whip[1]: Br1c6{sw .} ==> Pr1c6 ≠ o, Pr2c7 ≠ nw
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ o, Br1c5 ≠ s
whip[1]: Br1c5{wne .} ==> Nr1c5 ≠ 0
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ ew, Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ w
whip[1]: Pr5c8{se .} ==> Br5c8 ≠ ew, Br5c8 ≠ ne
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 2
whip[1]: Br3c10{nes .} ==> Pr4c10 ≠ sw, Pr3c11 ≠ o, Pr4c11 ≠ o, Pr3c10 ≠ o, Pr3c10 ≠ nw, Pr4c10 ≠ o
whip[1]: Pr4c10{ew .} ==> Br4c9 ≠ nes, Br4c9 ≠ ne, Br4c10 ≠ e, Br4c10 ≠ s
whip[1]: Br4c10{wne .} ==> Nr4c10 ≠ 1
whip[1]: Br4c9{ew .} ==> Nr4c9 ≠ 3
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ se, Br2c9 ≠ nes, Br2c10 ≠ o, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ ne
whip[1]: Br2c10{nes .} ==> Nr2c10 ≠ 0
whip[1]: Pr4c11{sw .} ==> Br4c10 ≠ sw
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ w
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
Entering_level_W2_with_<Fact-174467>
Entering_level_W3_with_<Fact-177357>
whip[3]: Pr4c10{ew ne} - Br3c9{n e} - Pr4c9{nw .} ==> Br4c9 ≠ s
whip[3]: Pr4c10{ew ne} - Br3c9{n e} - Pr4c9{nw .} ==> Br4c9 ≠ o
whip[1]: Br4c9{ew .} ==> Nr4c9 ≠ 0
whip[3]: Br1c7{w s} - Pr1c7{sw o} - Br1c6{ne .} ==> Pr2c7 ≠ se
whip[1]: Pr2c7{sw .} ==> Br2c7 ≠ nw, Br2c7 ≠ swn, Br2c7 ≠ wne
whip[1]: Br2c7{sw .} ==> Nr2c7 ≠ 3
whip[3]: Pr4c10{ew se} - Br3c10{wne nes} - Pr4c11{ns .} ==> Br4c10 ≠ wne
whip[3]: Pr3c10{ew ne} - Br3c10{wne nes} - Pr3c11{ns .} ==> Br2c10 ≠ esw
whip[3]: Pr2c6{ew sw} - Br1c5{e swn} - Pr2c5{o .} ==> Br2c5 ≠ wne
Entering_level_W4_with_<Fact-185672>
Entering_level_W5_with_<Fact-209950>
whip[5]: Br4c9{ew se} - Pr4c9{ew nw} - Br3c9{s w} - Pr4c10{ew se} - Br4c10{ne .} ==> Pr5c10 ≠ nw
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ se, Br4c10 ≠ ew
whip[1]: Br4c10{swn .} ==> Hr4c10 ≠ 0, Pr4c11 ≠ ns, Pr4c10 ≠ ns
H-single: Hr4c10 = 1
whip[1]: Hr4c10{1 .} ==> Br3c10 ≠ wne
whip[5]: Pr4c10{se ew} - Br3c10{swn nes} - Pr4c11{sw nw} - Br4c10{ne ns} - Pr5c10{o .} ==> Br4c9 ≠ n
whip[5]: Pr4c10{ew ne} - Br4c9{ew w} - Pr5c10{ew o} - Br4c10{swn ne} - Pr4c11{nw .} ==> Br3c10 ≠ esw
whip[1]: Br3c10{nes .} ==> Hr3c10 ≠ 0, Pr3c11 ≠ ns, Pr3c10 ≠ ns
H-single: Hr3c10 = 1
whip[1]: Hr3c10{1 .} ==> Br2c10 ≠ ew, Br2c10 ≠ wne
whip[5]: Pr1c10{sw se} - Br1c10{w wne} - Pr2c11{sw ns} - Br2c10{nes se} - Pr2c10{ne .} ==> Br1c9 ≠ ew
whip[3]: Pr2c9{sw nw} - Br1c9{sw nw} - Pr1c9{o .} ==> Br1c8 ≠ nes
whip[5]: Pr1c9{ew sw} - Br1c9{se sw} - Pr2c9{o ne} - Br2c8{e s} - Pr2c8{ne .} ==> Br1c8 ≠ wne
whip[5]: Pr1c10{sw o} - Br1c9{se sw} - Pr2c10{o sw} - Br2c9{nw wne} - Pr2c9{o .} ==> Br1c10 ≠ o
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0
whip[3]: Br2c10{nes sw} - Pr2c11{ns o} - Br1c10{nes .} ==> Pr2c10 ≠ sw
whip[1]: Pr2c10{ew .} ==> Br2c9 ≠ wne
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 3
whip[5]: Pr2c11{sw o} - Br1c10{nes w} - Pr2c10{o nw} - Br1c9{ne se} - Pr1c10{o .} ==> Br2c10 ≠ s
whip[1]: Br2c10{nes .} ==> Nr2c10 ≠ 1
whip[5]: Pr2c5{se o} - Br1c5{wne e} - Pr2c6{sw ne} - Br1c6{nw sw} - Pr1c6{se .} ==> Br2c5 ≠ s
whip[5]: Pr2c5{se o} - Br1c5{wne e} - Pr2c6{sw ne} - Br1c6{nw sw} - Pr1c6{se .} ==> Br2c5 ≠ o
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[5]: Pr2c7{sw ew} - Br1c7{w s} - Pr1c7{sw o} - Br1c6{nw sw} - Pr2c6{o .} ==> Br2c6 ≠ swn
Entering_level_W6_with_<Fact-288693>
Entering_level_W7_with_<Fact-498621>
whip[7]: Br9c1{w n} - Pr10c1{ns o} - Br10c1{esw e} - Pr11c2{nw ne} - Br10c2{wne swn} - Pr10c3{sw nw} - Br9c2{ns .} ==> Pr9c2 ≠ ew
whip[1]: Pr9c2{nw .} ==> Vr8c2 ≠ 0, Br8c1 ≠ sw, Br8c2 ≠ ns
V-single: Vr8c2 = 1

LOOP[8]: Vr8c2-Vr7c2-Vr6c2-Hr6c1-Vr6c1-Vr7c1-Vr8c1- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = in
no-vertical-line-r9{c1 c2} ==> Ir9c2 = in
horizontal-line-{r9 r10}c2 ==> Ir10c2 = out
vertical-line-r10{c1 c2} ==> Ir10c1 = in
vertical-line-r8{c1 c2} ==> Ir8c2 = out
different-colours-in-{r8 r9}c2 ==> Hr9c2 = 1
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
w[1]-3-in-r10c2-hit-by-horiz-line-at-sw ==> Vr10c3 = 1
w[1]-diagonal-1-1-in-{r9c3...r8c4}-with-no-sw-outer-sides ==> Hr8c4 = 0
w[1]-3-in-r10c2-closed-ne-corner ==> Pr11c2 ≠ ne
P-single: Pr11c2 = nw
P-single: Pr7c4 = sw
H-single: Hr7c3 = 1
H-single: Hr7c4 = 0
V-single: Vr6c4 = 0
V-single: Vr7c4 = 1
P-single: Pr8c3 = o
H-single: Hr8c3 = 0
V-single: Vr8c3 = 0
w[1]-2-in-r8c3-open-nw-corner ==> Hr9c3 = 1, Vr8c4 = 1
P-single: Pr9c4 = nw
P-single: Pr9c2 = ne
P-single: Pr10c3 = sw
w[1]-1-in-r9c1-symmetric-ne-corner ==> Pr10c1 ≠ o
P-single: Pr10c1 = ns
V-single: Vr9c1 = 1
V-single: Vr10c1 = 1
w[1]-1-in-r8c4-asymmetric-sw-corner ==> Pr8c5 ≠ ew
P-single: Pr8c5 = ne
H-single: Hr8c5 = 1
V-single: Vr7c5 = 1
horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
vertical-line-r7{c3 c4} ==> Ir7c3 = out
no-horizontal-line-{r7 r8}c3 ==> Ir8c3 = out
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-r7{c5 c6} ==> Hr7c6 = 1
whip[1]: Vr8c2{1 .} ==> Pr8c2 ≠ ne
P-single: Pr8c2 = ns
whip[1]: Pr8c2{ns .} ==> Br7c2 ≠ esw
B-single: Br7c2 = w
N-single: Nr7c2 = 1
P-single: Pr7c3 = ne
whip[1]: Pr7c3{ne .} ==> Br6c3 ≠ nw, Br6c3 ≠ wne, Br7c3 ≠ ew
B-single: Br6c3 = swn
N-single: Nr6c3 = 3
P-single: Pr6c4 = ew
whip[1]: Pr6c4{ew .} ==> Br5c4 ≠ ne, Br5c4 ≠ e, Br6c4 ≠ ew
whip[1]: Br6c4{nes .} ==> Pr6c5 ≠ ns
whip[1]: Hr9c1{0 .} ==> Pr9c1 ≠ ne, Br8c1 ≠ esw, Br9c1 ≠ n
P-single: Pr9c1 = ns
B-single: Br9c1 = w
B-single: Br8c1 = ew
N-single: Nr8c1 = 2
whip[1]: Hr9c2{1 .} ==> Pr9c3 ≠ ns, Br8c2 ≠ ew, Br9c2 ≠ se
P-single: Pr9c3 = ew
B-single: Br9c2 = ns
B-single: Br8c2 = sw
whip[1]: Pr9c3{ew .} ==> Br9c3 ≠ w, Br8c3 ≠ nw
B-single: Br8c3 = se
P-single: Pr8c4 = ns
B-single: Br9c3 = n
whip[1]: Pr8c4{ns .} ==> Br8c4 ≠ n, Br7c3 ≠ ns, Br7c4 ≠ ns
B-single: Br7c3 = ne
B-single: Br8c4 = w
whip[1]: Hr11c1{1 .} ==> Br11c1 ≠ o, Pr11c1 ≠ o, Br10c1 ≠ e
P-single: Pr11c1 = ne
B-single: Br10c1 = esw
N-single: Nr10c1 = 3
B-single: Br11c1 = n
whip[1]: Hr11c2{0 .} ==> Br11c2 ≠ n, Pr11c3 ≠ ew, Br10c2 ≠ swn
P-single: Pr11c3 = ne
B-single: Br10c2 = wne
B-single: Br11c2 = o
whip[1]: Pr11c3{ne .} ==> Br10c3 ≠ s
B-single: Br10c3 = sw
N-single: Nr10c3 = 2
whip[1]: Pr7c4{sw .} ==> Br6c4 ≠ ns, Br6c4 ≠ nes, Br7c4 ≠ nw
B-single: Br7c4 = ew
P-single: Pr7c5 = ns
H-single: Hr7c5 = 0
V-single: Vr6c5 = 1
B-single: Br6c4 = ne
N-single: Nr6c4 = 2
P-single: Pr6c5 = sw
w[1]-1-in-r5c5-symmetric-sw-corner ==> Pr5c6 ≠ ne
P-single: Pr4c7 = nw
H-single: Hr4c6 = 1
V-single: Vr3c7 = 1
P-single: Pr5c6 = ew
H-single: Hr5c5 = 1
V-single: Vr4c6 = 0
w[1]-1-in-r6c5-asymmetric-nw-corner ==> Pr7c6 ≠ sw, Pr7c6 ≠ ew
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-vertical-line-r5{c5 c6} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
vertical-line-r5{c6 c7} ==> Ir5c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
no-vertical-line-r4{c6 c7} ==> Ir4c6 = in
no-vertical-line-r4{c5 c6} ==> Ir4c5 = in
horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
vertical-line-r3{c6 c7} ==> Ir3c7 = in
vertical-line-r3{c7 c8} ==> Ir3c8 = out
horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
different-colours-in-{r4 r5}c8 ==> Hr5c8 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c9 c8} ==> Vr3c10 = 0, Hr3c9 = 0
no-vertical-line-r4{c8 c9} ==> Ir4c9 = in
same-colour-in-{r5 r6}c7 ==> Hr6c7 = 0
w[1]-diagonal-3-2-in-{r7c8...r6c7}-non-closed-nw-corner ==> Vr6c7 = 1
P-single: Pr7c7 = nw
H-single: Hr7c6 = 1
P-single: Pr6c8 = ns
V-single: Vr5c8 = 1
P-single: Pr5c8 = se
P-single: Pr6c7 = ns
whip[1]: Pr7c5{ns .} ==> Br7c5 ≠ n, Br7c5 ≠ o, Br6c5 ≠ s, Br7c5 ≠ se, Br7c5 ≠ nes
B-single: Br7c5 = esw
N-single: Nr7c5 = 3
P-single: Pr7c6 = se
P-single: Pr8c6 = nw
B-single: Br6c5 = w
whip[1]: Pr7c6{se .} ==> Br7c6 ≠ w, Br7c6 ≠ n, Br7c6 ≠ o, Br6c6 ≠ o
B-single: Br6c6 = se
N-single: Nr6c6 = 2
B-single: Br7c6 = nw
N-single: Nr7c6 = 2
whip[1]: Pr8c6{nw .} ==> Br8c5 ≠ o
B-single: Br8c5 = n
N-single: Nr8c5 = 1
whip[1]: Vr5c5{0 .} ==> Pr5c5 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ nes, Br5c5 ≠ w
B-single: Br5c5 = n
whip[1]: Br5c4{ns .} ==> Nr5c4 ≠ 3
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ ew, Br4c5 ≠ ne
whip[1]: Br4c5{sw .} ==> Pr4c6 ≠ ns
whip[1]: Pr4c6{ew .} ==> Br3c6 ≠ nw, Br4c6 ≠ sw, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ w
B-single: Br4c6 = ns
whip[1]: Br3c6{nes .} ==> Pr3c6 ≠ se, Pr3c7 ≠ ne, Pr3c7 ≠ ew, Nr3c6 ≠ 0, Nr3c6 ≠ 1
whip[1]: Pr3c7{sw .} ==> Hr3c7 ≠ 1, Br2c7 ≠ sw, Br2c7 ≠ s, Br2c7 ≠ ns, Br3c7 ≠ ne
H-single: Hr3c7 = 0
B-single: Br3c7 = ew
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
whip[1]: Hr5c8{1 .} ==> Pr5c9 ≠ ns, Pr5c9 ≠ se, Br4c8 ≠ n, Br4c8 ≠ ne, Br5c8 ≠ e
P-single: Pr5c9 = sw
B-single: Br5c8 = wne
N-single: Nr5c8 = 3
B-single: Br4c8 = ns
N-single: Nr4c8 = 2
w[1]-1-in-r3c9-asymmetric-sw-corner ==> Pr3c10 ≠ ew, Pr3c10 ≠ se
w[1]-3-in-r3c10-asymmetric-nw-corner ==> Vr3c11 = 1, Vr4c11 = 0
w[1]-3-in-r3c10-closed-ne-corner ==> Pr4c10 ≠ ne
P-single: Pr3c10 = ne
V-single: Vr2c10 = 1
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
different-colours-in-{r4 r5}c10 ==> Hr5c10 = 1
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1
w[1]-3-in-r3c8-isolated-at-se-corner ==> Vr3c9 = 1
w[1]-3-in-r3c8-closed-se-corner ==> Pr3c8 ≠ se
P-single: Pr3c8 = ns
H-single: Hr3c8 = 0
V-single: Vr2c8 = 1
vertical-line-r2{c7 c8} ==> Ir2c8 = out
different-colours-in-r2{c8 c9} ==> Hr2c9 = 1

LOOP[6]: Vr2c9-Vr3c9-Hr4c8-Vr3c8-Vr2c8- ==> Hr2c8 = 0
no-horizontal-line-{r1 r2}c8 ==> Ir1c8 = out
same-colour-in-{r0 r1}c8 ==> Hr1c8 = 0
whip[1]: Pr5c9{sw .} ==> Br4c9 ≠ ns, Br4c9 ≠ w, Br4c9 ≠ ew, Br5c9 ≠ swn
B-single: Br5c9 = sw
N-single: Nr5c9 = 2
B-single: Br4c9 = e
N-single: Nr4c9 = 1
P-single: Pr4c9 = nw
P-single: Pr4c10 = se
P-single: Pr5c10 = ne
w[1]-1-in-r3c9-symmetric-se-corner ==> Pr3c9 ≠ nw
whip[1]: Pr4c9{nw .} ==> Br3c9 ≠ s, Br3c9 ≠ e, Br3c9 ≠ n, Br3c8 ≠ swn
B-single: Br3c8 = esw
P-single: Pr3c9 = ns
B-single: Br3c9 = w
whip[1]: Pr3c9{ns .} ==> Br2c8 ≠ s, Br2c8 ≠ ns, Br2c8 ≠ se, Br2c8 ≠ nes, Br2c9 ≠ s, Br2c9 ≠ ns
whip[1]: Br2c9{ew .} ==> Pr2c9 ≠ o, Pr2c9 ≠ ne, Pr2c9 ≠ nw, Pr2c9 ≠ ew
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ se, Br1c9 ≠ sw
whip[1]: Br1c9{se .} ==> Pr1c9 ≠ sw, Pr1c10 ≠ o
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ s
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ ne
whip[1]: Pr4c10{se .} ==> Br3c10 ≠ swn, Br4c10 ≠ ne, Br4c10 ≠ ns
B-single: Br4c10 = swn
N-single: Nr4c10 = 3
P-single: Pr4c11 = nw
P-single: Pr5c11 = sw
B-single: Br3c10 = nes
P-single: Pr3c11 = sw
whip[1]: Pr5c11{sw .} ==> Br5c10 ≠ e
B-single: Br5c10 = ne
N-single: Nr5c10 = 2
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ se, Br2c10 ≠ nes
whip[1]: Br2c10{swn .} ==> Pr2c11 ≠ ns, Pr2c11 ≠ sw, Pr2c10 ≠ o, Pr2c10 ≠ nw
whip[1]: Pr2c10{ew .} ==> Br1c9 ≠ se, Br1c10 ≠ ne
whip[1]: Br1c9{nw .} ==> Hr1c9 ≠ 0, Pr1c9 ≠ o, Pr1c10 ≠ se
H-single: Hr1c9 = 1
horizontal-line-{r0 r1}c9 ==> Ir1c9 = in
same-colour-in-{r1 r2}c9 ==> Hr2c9 = 0
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o
B-single: Br0c9 = s
whip[1]: Hr2c9{0 .} ==> Pr2c9 ≠ se, Pr2c10 ≠ ew, Br1c9 ≠ ns, Br2c9 ≠ nw
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ o, Br1c8 ≠ n
whip[1]: Br1c8{swn .} ==> Pr2c8 ≠ ns, Nr1c8 ≠ 0
whip[1]: Vr1c9{1 .} ==> Pr1c9 ≠ ew, Pr2c9 ≠ sw, Br1c8 ≠ s, Br1c8 ≠ ns, Br1c8 ≠ swn, Br1c9 ≠ ne
P-single: Pr1c10 = ew
H-single: Hr1c10 = 1
V-single: Vr1c10 = 0
P-single: Pr2c10 = se
H-single: Hr2c10 = 1
P-single: Pr2c9 = ns
P-single: Pr1c9 = se
B-single: Br1c9 = nw
B-single: Br1c8 = e
V-single: Vr1c8 = 0
N-single: Nr1c8 = 1
P-single: Pr1c8 = o
H-single: Hr1c7 = 0
w[1]-1-in-r1c7-symmetric-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ o
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
horizontal-line-{r1 r2}c10 ==> Ir1c10 = in
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ w, Br1c10 ≠ sw, Br1c10 ≠ wne
B-single: Br1c10 = nes
N-single: Nr1c10 = 3
P-single: Pr1c11 = sw
P-single: Pr2c11 = nw
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ sw
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Pr2c10{se .} ==> Br2c9 ≠ w, Br2c10 ≠ ns
B-single: Br2c10 = swn
N-single: Nr2c10 = 3
B-single: Br2c9 = ew
N-single: Nr2c9 = 2
whip[1]: Pr2c9{ns .} ==> Br2c8 ≠ ne, Br2c8 ≠ wne
whip[1]: Br2c8{ew .} ==> Nr2c8 ≠ 3
whip[1]: Vr1c8{0 .} ==> Br1c7 ≠ e
whip[1]: Pr1c8{o .} ==> Br1c7 ≠ n
whip[1]: Br1c7{w .} ==> Pr1c7 ≠ ew
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ se, Br1c6 ≠ nw, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c6 ≠ wne, Br1c6 ≠ ns, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ ns
whip[1]: Br2c5{nes .} ==> Pr2c5 ≠ o, Pr2c5 ≠ se
whip[1]: Pr2c5{ns .} ==> Vr1c5 ≠ 0, Br1c4 ≠ w, Br1c5 ≠ e
V-single: Vr1c5 = 1
B-single: Br1c4 = ew
N-single: Nr1c4 = 2
P-single: Pr1c5 = se
H-single: Hr1c5 = 1
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Br1c5{wne .} ==> Nr1c5 ≠ 1
whip[1]: Br2c6{sw .} ==> Nr2c6 ≠ 3
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr2c7{1 .} ==> Br2c7 ≠ o, Pr2c7 ≠ ns, Pr2c8 ≠ o, Br1c7 ≠ w, Br2c7 ≠ e, Br2c7 ≠ w, Br2c7 ≠ ew
P-single: Pr2c8 = sw
P-single: Pr2c7 = ew
H-single: Hr2c6 = 1
V-single: Vr1c7 = 0
V-single: Vr2c7 = 0
P-single: Pr2c6 = ne
H-single: Hr2c5 = 0
V-single: Vr1c6 = 1
V-single: Vr2c6 = 0
P-single: Pr1c7 = o
B-single: Br1c7 = s
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
horizontal-line-{r1 r2}c6 ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
different-colours-in-{r2 r3}c6 ==> Hr3c6 = 1
whip[1]: Pr2c8{sw .} ==> Br2c8 ≠ e, Br2c7 ≠ n
B-single: Br2c7 = ne
N-single: Nr2c7 = 2
P-single: Pr3c7 = sw
B-single: Br2c8 = ew
N-single: Nr2c8 = 2
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ ne, Br2c6 ≠ e, Br2c6 ≠ ew, Br3c6 ≠ se, Br3c6 ≠ esw
B-single: Br3c6 = nes
V-single: Vr3c6 = 0
N-single: Nr3c6 = 3
P-single: Pr5c5 = ew
H-single: Hr5c4 = 1
V-single: Vr4c5 = 0
w[1]-diagonal-3-2s-in-{r7c8...r4c5}-non-closed-nw-end ==> Hr4c5 = 1
P-single: Pr4c6 = ew

LOOP[100]: Hr3c3-Vr2c3-Hr2c3-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Hr4c2-Vr4c3-Hr5c3-Hr5c4-Hr5c5-Hr5c6-Vr5c7-Vr6c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Vr6c5-Hr6c4-Hr6c3-Vr6c3-Hr7c3-Vr7c4-Vr8c4-Hr9c3-Hr9c2-Vr8c2-Vr7c2-Vr6c2-Hr6c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Hr10c2-Vr10c3-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Vr10c7-Hr10c7-Hr10c8-Vr10c9-Hr11c9-Vr10c10-Vr9c10-Hr9c9-Hr9c8-Hr9c7-Vr8c7-Hr8c7-Hr8c8-Vr7c9-Hr7c8-Vr6c8-Vr5c8-Hr5c8-Vr5c9-Hr6c9-Vr6c10-Vr7c10-Hr8c10-Vr7c11-Vr6c11-Vr5c11-Hr5c10-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Vr3c9-Hr4c8-Vr3c8-Vr2c8-Hr2c7-Hr2c6-Vr1c6-Hr1c5-Vr1c5-Vr2c5- ==> Hr3c4 = 0
w[0]-adjacent-3-in-r2c3-nolines-east ==> Vr3c4 = 1

LOOP[18]: Vr3c4-Hr3c3-Vr2c3-Hr2c3-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Hr4c2-Vr4c3-Hr5c3- ==> Vr4c4 = 0
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
vertical-line-r3{c3 c4} ==> Ir3c4 = out
horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
same-colour-in-r3{c4 c5} ==> Vr3c5 = 0
w[1]-2-in-r3c4-open-ne-corner ==> Hr4c4 = 1
P-single: Pr3c6 = ew
H-single: Hr3c5 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[7]

XXXOXOOOXX
XXOOXXXOXO
XXXOOOXOXX
XOXXXXXXXO
OOOOOOXOXX
XOXXOOXOOX
XOOXOXXXOX
XOOXXXOOOO
XXXXXXXXXO
XOXXXXOOXO

.———.———.———.   .———.   .   .   .———.———.
| 2       3 |   |   | 2   1     | 2     |
.   .   .———.   .   .———.———.   .   .———.
| 1   1 |     1 |           |   |   |
.   .   .———.   .———.———.   .   .   .———.
|           | 2   2     | 2 | 3 | 1   3 |
.   .———.   .———.———.———.   .———.   .———.
| 3 | 3 |         2       0         |
.———.   .———.———.———.———.   .———.   .———.
  2   0   2       1     | 2 |   |       |
.———.   .———.———.   .   .   .   .———.   .
|   | 2 |       | 1     | 2 |     2 |   |
.   .   .———.   .   .———.   .———.   .   .
| 2 |       | 2 |   |     1   3 |   | 3 |
.   .   .   .   .———.   .———.———.   .———.
|   | 2     | 1         | 3   2
.   .———.———.   .   .   .———.———.———.   .
| 1   2   1       0       2   2     | 1
.   .———.   .   .   .   .———.———.   .   .
|   | 3 |     1   1     |       |   | 1
.———.   .———.———.———.———.   .   .———.   .

init-time = 4m 24.91s, solve-time = 4m 29.34s, total-time = 8m 54.25s
nb-facts=<Fact-513272>
Quasi-Loop max length = 100
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
