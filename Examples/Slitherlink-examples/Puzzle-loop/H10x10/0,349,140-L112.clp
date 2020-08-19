
(solve
10 10
. 2 3 1 . 2 3 . 1 . 
. . 3 2 . . . . . 3 
. 2 1 . . 3 . 2 0 . 
2 2 . . . . 2 . 3 2 
. . . 1 . 2 2 . . 1 
. . . 2 . . . . 3 . 
3 . 2 2 3 . 1 . . 2 
. . . . 0 . . 2 . . 
. 2 2 3 . 2 2 2 . . 
3 . 3 . . . 1 . . 2
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 3 1 . 2 3 . 1 .
. . 3 2 . . . . . 3
. 2 1 . . 3 . 2 0 .
2 2 . . . . 2 . 3 2
. . . 1 . 2 2 . . 1
. . . 2 . . . . 3 .
3 . 2 2 3 . 1 . . 2
. . . . 0 . . 2 . .
. 2 2 3 . 2 2 2 . .
3 . 3 . . . 1 . . 2

start init-grid-structure 0.0102279186248779
start create-csp-variables
start create-labels 0.00202608108520508
start init-physical-csp-links 0.0137150287628174
start init-physical-non-csp-links 13.0689430236816
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.09688496589661
     start init-physical-BN-non-csp-links at local time 12.6756389141083
     start init-physical-BP-non-csp-links at local time 25.3251478672028
     end init-physical-BP-non-csp-links at local time 231.103036880493
end init-physical-non-csp-links 244.172034025192
start init-corner-B-c-values 244.182564020157
start init-outer-B-candidates 244.182620048523
start init-outer-I-candidates 244.183399915695
start init-H-candidates 244.183841943741
start init-V-candidates 244.187429904938
start init-P-candidates 244.190774917603
start init-inner-I-candidates 244.197082996368
start init-inner-N-and-B-candidates 244.199486970901
start solution 244.211735963821
entering BRT
w[0]-0-in-r8c5 ==> Hr9c5 = 0, Hr8c5 = 0, Vr8c6 = 0, Vr8c5 = 0
w[0]-0-in-r3c9 ==> Hr4c9 = 0, Hr3c9 = 0, Vr3c10 = 0, Vr3c9 = 0
w[0]-adjacent-3-0-in-c5{r7 r8} ==> Vr7c6 = 1, Vr7c5 = 1, Hr8c6 = 1, Hr8c4 = 1, Hr7c5 = 1, Vr6c6 = 0, Vr6c5 = 0, Hr7c6 = 0, Hr7c4 = 0
w[0]-adjacent-3-0-in-c9{r4 r3} ==> Vr4c10 = 1, Vr4c9 = 1, Hr5c9 = 1, Hr4c10 = 1, Hr4c8 = 1, Vr5c10 = 0, Vr5c9 = 0, Hr5c10 = 0, Hr5c8 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-2-in-r6c4-open-se-corner ==> Hr6c4 = 1, Vr6c4 = 1, Hr6c3 = 0, Vr5c4 = 0
w[1]-diagonal-3-0-in-{r9c4...r8c5} ==> Vr9c5 = 1, Hr9c4 = 1
w[1]-diagonal-3-0-in-{r2c10...r3c9} ==> Vr2c10 = 1, Hr3c10 = 1
w[1]-diagonal-3s-in-{r9c4...r10c3} ==> Vr10c3 = 1, Hr11c3 = 1, Hr11c2 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c4 c3} ==> Vr1c5 = 0, Hr2c4 = 0, Hr1c3 = 1
w[1]-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-in-{r5 r6}c4 ==> Vr5c5 = 0, Hr5c4 = 0
w[1]-3-in-r10c3-closed-sw-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ne, Pr10c4 ≠ o
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r7c5-closed-nw-corner ==> Pr8c6 ≠ o
w[1]-3-in-r4c9-closed-se-corner ==> Pr4c9 ≠ o
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ o
diagonal-3-1-in-ne-corner ==> Vr1c10 = 1, Hr2c10 = 0
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
adjacent-3s-in-c3{r1 r2} ==> Hr3c3 = 1, Hr2c3 = 1, Hr2c2 = 0
P-single: Pr4c9 = sw
P-single: Pr8c6 = ne
P-single: Pr5c11 = o
V-single: Vr4c11 = 0
V-single: Vr5c11 = 0
w[1]-diagonal-3-1-in-{r6c9...r5c10}-open-end ==> Vr6c9 = 1, Hr7c9 = 1
w[1]-3-in-r6c9-closed-sw-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ne, Pr6c10 ≠ o
P-single: Pr7c4 = nw
H-single: Hr7c3 = 1
V-single: Vr7c4 = 0
P-single: Pr4c10 = se
P-single: Pr8c5 = nw
w[1]-1-in-r10c7-symmetric-nw-corner ==> Pr11c8 ≠ nw, Pr11c8 ≠ o
entering level Loop with <Fact-93373>
entering level Col with <Fact-93455>
vertical-line-r9{c10 c11} ==> Ir9c10 = in
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
no-vertical-line-r5{c9 c10} ==> Ir5c9 = out
no-vertical-line-r5{c8 c9} ==> Ir5c8 = out
no-horizontal-line-{r4 r5}c8 ==> Ir4c8 = out
vertical-line-r4{c8 c9} ==> Ir4c9 = in
no-horizontal-line-{r3 r4}c9 ==> Ir3c9 = in
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
horizontal-line-{r2 r3}c10 ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
vertical-line-r10{c0 c1} ==> Ir10c1 = in
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
horizontal-line-{r10 r11}c3 ==> Ir10c3 = in
vertical-line-r10{c2 c3} ==> Ir10c2 = out
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se, Pr10c1 ≠ o
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
Starting_init_links_with_<Fact-93622>
2482 candidates, 8245 csp-links and 33281 links. Density = 1.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-176679>
whip[1]: Vr3c11{1 .} ==> Br3c10 ≠ swn, Br3c11 ≠ o, Br3c10 ≠ o, Br3c10 ≠ n, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ sw
B-single: Br3c11 = w
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ w, Br0c9 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ sw, Pr1c10 ≠ o, Pr1c10 ≠ se, Br1c9 ≠ e, Br1c9 ≠ s
B-single: Br1c9 = n
V-single: Vr1c9 = 0
P-single: Pr1c9 = ew
H-single: Hr1c8 = 1
w[1]-3-in-r1c7-hit-by-horiz-line-at-ne ==> Vr1c7 = 1, Hr2c7 = 1
w[1]-3-in-r1c7-closed-sw-corner ==> Pr1c8 ≠ sw, Pr1c8 ≠ o
P-single: Pr1c10 = ew
B-single: Br0c9 = s
horizontal-line-{r0 r1}c8 ==> Ir1c8 = in
whip[1]: Vr1c9{0 .} ==> Br1c8 ≠ e, Br1c8 ≠ ne, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ wne, Br1c8 ≠ nes
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ o, Br1c8 ≠ sw
whip[1]: Br1c8{swn .} ==> Nr1c8 ≠ 0
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Vr1c7{1 .} ==> Pr1c7 ≠ ew, Pr2c7 ≠ o, Pr2c7 ≠ se, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ sw, Br1c7 ≠ nes
whip[1]: Pr1c6{sw .} ==> Hr1c5 ≠ 0, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c6 ≠ se, Br1c5 ≠ o, Br1c5 ≠ e, Br1c5 ≠ s, Br1c5 ≠ w
H-single: Hr1c5 = 1
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
no-vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
different-colours-in-r2{c3 c4} ==> Hr2c4 = 1
w[1]-diagonal-3-2-in-{r1c3...r2c4}-non-closed-se-corner ==> Vr2c5 = 1, Vr1c3 = 1, Hr1c2 = 0
w[1]-diagonal-3-2-in-{r2c3...r1c2}-non-closed-nw-corner ==> Vr1c2 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r3 r2}c3 ==> Vr3c3 = 0, Hr4c3 = 0
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
w[1]-3-in-r2c3-closed-ne-corner ==> Pr3c3 ≠ ne, Pr3c3 ≠ o
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ ns
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = in
vertical-line-r2{c4 c5} ==> Ir2c5 = out
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ sw
B-single: Br0c5 = s
w[1]-1-in-r1c4-asymmetric-ne-corner ==> Pr2c4 ≠ ew, Pr2c4 ≠ ns
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ esw, Br1c3 ≠ nes, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c4 ≠ nw, Br2c4 ≠ se, Br1c4 ≠ s, Br1c4 ≠ w
whip[1]: Br1c4{e .} ==> Pr2c4 ≠ ne, Pr1c4 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ ew
P-single: Pr1c4 = ew
P-single: Pr2c4 = sw
w[1]-1-in-r1c4-asymmetric-nw-corner ==> Pr2c5 ≠ ns
P-single: Pr2c5 = se
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ e, Br1c3 ≠ wne
B-single: Br1c3 = swn
P-single: Pr1c3 = se
P-single: Pr2c3 = ne
B-single: Br1c4 = n
P-single: Pr1c5 = ew
whip[1]: Pr1c3{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ sw
whip[1]: Br1c2{ew .} ==> Pr1c2 ≠ ew
P-single: Pr1c2 = sw
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ s, Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ swn, Br1c2 ≠ se
B-single: Br1c2 = ew
B-single: Br1c1 = wne
H-single: Hr2c1 = 0
N-single: Nr1c1 = 3
P-single: Pr1c1 = se
P-single: Pr2c1 = ns
V-single: Vr2c1 = 1
P-single: Pr2c2 = ns
V-single: Vr2c2 = 1
w[1]-diagonal-3-2-in-{r2c3...r3c2}-non-closed-sw-corner ==> Hr4c2 = 1
horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
whip[1]: Hr2c1{0 .} ==> Br2c1 ≠ n, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ swn, Br2c1 ≠ wne, Br2c1 ≠ nes
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ e, Br2c1 ≠ o, Br2c1 ≠ s, Br2c1 ≠ se
whip[1]: Br2c1{esw .} ==> Pr3c1 ≠ o, Pr3c1 ≠ se, Nr2c1 ≠ 0
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ s, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ o, Br3c1 ≠ e
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Pr2c2{ns .} ==> Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Br2c1 ≠ w, Br2c1 ≠ sw, Br2c2 ≠ s, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
whip[1]: Br2c2{esw .} ==> Pr3c2 ≠ ew, Pr3c2 ≠ sw, Nr2c2 ≠ 0
whip[1]: Pr3c2{ns .} ==> Br2c1 ≠ esw, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c1 ≠ n
B-single: Br2c1 = ew
N-single: Nr2c1 = 2
P-single: Pr3c1 = ns
whip[1]: Br3c1{esw .} ==> Pr4c1 ≠ o, Pr4c1 ≠ se
whip[1]: Pr5c2{sw .} ==> Br4c1 ≠ nw, Br4c1 ≠ se, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ esw, Br5c1 ≠ swn, Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ swn, Br5c2 ≠ wne, Br4c2 ≠ ns, Br5c1 ≠ n, Br5c1 ≠ e, Br5c1 ≠ ns, Br5c2 ≠ o, Br5c2 ≠ e, Br5c2 ≠ s
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr4c2 ≠ ns, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c2 ≠ ew, Br3c2 ≠ sw
P-single: Pr4c2 = ew
H-single: Hr4c1 = 1
V-single: Vr4c2 = 0
w[1]-diagonal-3-2s-in-{r2c3...r4c1}-non-closed-sw-end ==> Hr5c1 = 1
P-single: Pr4c3 = sw
P-single: Pr5c2 = sw
H-single: Hr5c2 = 0
V-single: Vr5c2 = 1
P-single: Pr3c2 = ne
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
vertical-line-r5{c1 c2} ==> Ir5c1 = in
horizontal-line-{r4 r5}c1 ==> Ir4c1 = out
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ ne, Br3c2 ≠ ne, Br3c1 ≠ w, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c2 ≠ sw
B-single: Br4c2 = ne
B-single: Br4c1 = ns
P-single: Pr4c1 = ne
P-single: Pr5c1 = se
B-single: Br3c1 = sw
N-single: Nr3c1 = 2
B-single: Br3c2 = ns
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ w, Br5c1 ≠ s, Br5c1 ≠ o, Br5c1 ≠ ne, Br5c1 ≠ sw, Br5c1 ≠ nes
B-single: Br5c1 = wne
H-single: Hr6c1 = 0
N-single: Nr5c1 = 3
P-single: Pr6c1 = ns
V-single: Vr6c1 = 1
w[1]-3-in-r7c1-hit-by-verti-line-at-nw ==> Vr7c2 = 1, Hr8c1 = 1
w[1]-3-in-r7c1-closed-se-corner ==> Pr7c1 ≠ se, Pr7c1 ≠ o
vertical-line-r6{c0 c1} ==> Ir6c1 = in
whip[1]: Hr6c1{0 .} ==> Br6c1 ≠ n, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ nes
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ e, Br6c1 ≠ o, Br6c1 ≠ s, Br6c1 ≠ se
whip[1]: Br6c1{esw .} ==> Nr6c1 ≠ 0
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr7c2{1 .} ==> Br7c2 ≠ o, Pr7c2 ≠ o, Pr7c2 ≠ ne, Pr7c2 ≠ nw, Pr7c2 ≠ ew, Pr8c2 ≠ o, Pr8c2 ≠ se, Pr8c2 ≠ ew, Pr8c2 ≠ sw, Br7c1 ≠ swn, Br7c2 ≠ n, Br7c2 ≠ e, Br7c2 ≠ s, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ se, Br7c2 ≠ nes
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Br7c1{nes .} ==> Pr8c1 ≠ o
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ se, Br8c1 ≠ o, Br8c1 ≠ e, Br8c1 ≠ s
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Pr8c2{nw .} ==> Br8c1 ≠ ne, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ nw, Br8c2 ≠ swn, Br8c2 ≠ wne
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ esw, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn
whip[1]: Br6c1{sw .} ==> Nr6c1 ≠ 3
whip[1]: Hr8c1{1 .} ==> Pr8c1 ≠ ns, Pr8c2 ≠ ne, Pr8c2 ≠ ns, Br7c1 ≠ wne, Br8c1 ≠ w, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw
P-single: Pr8c2 = nw
whip[1]: Pr8c2{nw .} ==> Br8c2 ≠ n, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br8c2 ≠ w, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ nes
whip[1]: Br8c2{se .} ==> Pr8c3 ≠ nw, Pr8c3 ≠ ew, Pr9c2 ≠ ne, Pr9c2 ≠ ns, Pr9c2 ≠ nw, Nr8c2 ≠ 3
whip[1]: Pr8c3{se .} ==> Vr8c3 ≠ 0, Br7c3 ≠ ne, Br7c3 ≠ sw, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ se, Br8c3 ≠ nes, Br8c2 ≠ o, Br8c2 ≠ s, Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ e, Br8c3 ≠ s
V-single: Vr8c3 = 1
whip[1]: Vr8c3{1 .} ==> Pr9c3 ≠ se, Pr9c3 ≠ ew
whip[1]: Pr9c3{nw .} ==> Hr9c3 ≠ 1, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn, Br9c2 ≠ ne, Br9c2 ≠ sw, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ nw
H-single: Hr9c3 = 0
adjacent-3-2-in-{r10 r9}c3-noline-north ==> Hr10c4 = 0, Hr10c2 = 0
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
whip[1]: Hr9c3{0 .} ==> Pr9c4 ≠ nw, Pr9c4 ≠ ew
whip[1]: Hr10c4{0 .} ==> Pr10c4 ≠ ew, Pr10c5 ≠ nw, Pr10c5 ≠ ew, Pr10c5 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ nes, Br10c4 ≠ n, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ swn, Br10c4 ≠ wne, Br10c4 ≠ nes
B-single: Br9c4 = wne
V-single: Vr9c4 = 1
w[1]-3-in-r9c4-asymmetric-se-corner ==> Vr8c4 = 0
P-single: Pr9c4 = se
P-single: Pr9c5 = sw
whip[1]: Vr9c4{1 .} ==> Br9c3 ≠ sw
whip[1]: Vr8c4{0 .} ==> Pr8c4 ≠ ns, Pr8c4 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ wne, Br8c4 ≠ w, Br8c4 ≠ nw, Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ wne
P-single: Pr8c4 = ew
H-single: Hr8c3 = 1
whip[1]: Pr8c4{ew .} ==> Br8c4 ≠ s, Br8c4 ≠ e, Br8c4 ≠ o, Br8c3 ≠ w, Br7c4 ≠ ne, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ sw, Br8c4 ≠ se
B-single: Br7c3 = ns
P-single: Pr8c3 = se
B-single: Br8c3 = nw
N-single: Nr8c3 = 2
whip[1]: Pr8c3{se .} ==> Br7c2 ≠ ew, Br7c2 ≠ wne
whip[1]: Br7c2{nw .} ==> Nr7c2 ≠ 3
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ nes, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ wne, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ w, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ w, Br6c3 ≠ ne
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 0
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0
whip[1]: Pr9c4{se .} ==> Br8c4 ≠ n, Br8c4 ≠ ne
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 1
whip[1]: Pr9c5{sw .} ==> Br9c5 ≠ ns, Br9c5 ≠ ne, Br9c5 ≠ s, Br9c5 ≠ e, Br9c5 ≠ n, Br9c5 ≠ o, Br8c4 ≠ nes, Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes
B-single: Br8c4 = ns
N-single: Nr8c4 = 2
whip[1]: Br9c5{esw .} ==> Nr9c5 ≠ 0
whip[1]: Pr10c3{ew .} ==> Br9c2 ≠ se, Br10c2 ≠ sw, Br10c2 ≠ wne, Br10c2 ≠ nes, Br10c2 ≠ o, Br10c2 ≠ s, Br10c2 ≠ w, Br10c2 ≠ ne
whip[1]: Br10c2{swn .} ==> Nr10c2 ≠ 0
whip[1]: Pr10c5{ns .} ==> Br10c5 ≠ s, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ swn, Br10c5 ≠ wne, Br10c5 ≠ o, Br10c5 ≠ e
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Pr10c4{nw .} ==> Br10c3 ≠ wne, Br10c3 ≠ nes
whip[1]: Br10c3{swn .} ==> Pr11c3 ≠ o, Pr11c3 ≠ nw, Pr11c3 ≠ ew, Pr11c4 ≠ o, Pr11c4 ≠ ne, Pr10c3 ≠ ew
P-single: Pr11c3 = ne
whip[1]: Pr11c3{ne .} ==> Br10c2 ≠ n, Br11c3 ≠ o, Br11c2 ≠ n, Br10c2 ≠ ns, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c2 ≠ esw, Br10c2 ≠ swn
B-single: Br11c2 = o
B-single: Br11c3 = n
whip[1]: Pr11c2{nw .} ==> Br10c1 ≠ swn
B-single: Br10c1 = esw
H-single: Hr10c1 = 0
P-single: Pr11c1 = ne
P-single: Pr11c2 = nw
P-single: Pr10c1 = ns
V-single: Vr9c1 = 1
vertical-line-r9{c0 c1} ==> Ir9c1 = in
different-colours-in-r9{c1 c2} ==> Hr9c2 = 1

LOOP[6]: Vr9c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
no-vertical-line-r8{c1 c2} ==> Ir8c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-vertical-line-r6{c5 c6} ==> Ir6c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
vertical-line-r7{c5 c6} ==> Ir7c5 = out
no-horizontal-line-{r7 r8}c5 ==> Ir8c5 = out
no-vertical-line-r8{c4 c5} ==> Ir8c4 = out
no-vertical-line-r8{c3 c4} ==> Ir8c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = out
vertical-line-r9{c3 c4} ==> Ir9c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
vertical-line-r9{c4 c5} ==> Ir9c5 = out
no-vertical-line-r8{c5 c6} ==> Ir8c6 = out
vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
vertical-line-r7{c1 c2} ==> Ir7c1 = out
same-colour-in-r7{c0 c1} ==> Vr7c1 = 0
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
w[1]-3-in-r7c1-closed-ne-corner ==> Pr8c1 ≠ ne
P-single: Pr8c1 = se
V-single: Vr8c1 = 1
no-vertical-line-r6{c1 c2} ==> Ir6c2 = in
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
w[1]-3-in-r10c3-hit-by-horiz-line-at-se ==> Hr10c3 = 1
w[1]-2-in-r9c2-open-se-corner ==> Hr9c2 = 1
w[1]-3-in-r10c3-closed-nw-corner ==> Pr11c4 ≠ nw
P-single: Pr11c4 = ew

LOOP[8]: Hr11c4-Hr11c3-Vr10c3-Hr10c3-Vr9c4-Hr9c4-Vr9c5- ==> Vr10c5 = 0
no-vertical-line-r10{c4 c5} ==> Ir10c5 = in
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1

LOOP[10]: Hr10c5-Vr9c5-Hr9c4-Vr9c4-Hr10c3-Vr10c3-Hr11c3-Hr11c4-Hr11c5- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
whip[1]: Hr10c1{0 .} ==> Br9c1 ≠ s, Br9c1 ≠ ns, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ nes
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{nw .} ==> Br10c2 ≠ e
B-single: Br10c2 = ew
N-single: Nr10c2 = 2
P-single: Pr10c2 = ns
whip[1]: Pr10c2{ns .} ==> Br9c1 ≠ n, Br9c1 ≠ o, Br9c1 ≠ w, Br9c1 ≠ nw, Br9c2 ≠ ns
whip[1]: Br9c2{ew .} ==> Pr9c2 ≠ ew
whip[1]: Br9c1{wne .} ==> Nr9c1 ≠ 0
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ ne
whip[1]: Br9c1{wne .} ==> Pr9c1 ≠ o, Pr9c1 ≠ ne, Nr9c1 ≠ 1
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ swn, Br8c1 ≠ n
whip[1]: Br8c1{nw .} ==> Nr8c1 ≠ 1, Nr8c1 ≠ 3
N-single: Nr8c1 = 2
P-single: Pr10c3 = se
P-single: Pr9c2 = se
whip[1]: Pr10c3{se .} ==> Br9c2 ≠ ew, Br9c3 ≠ ew, Br10c3 ≠ esw
B-single: Br10c3 = swn
P-single: Pr9c3 = nw
P-single: Pr10c4 = nw
B-single: Br9c3 = se
B-single: Br9c2 = nw
whip[1]: Pr9c3{nw .} ==> Br8c2 ≠ e
B-single: Br8c2 = se
N-single: Nr8c2 = 2
whip[1]: Pr10c4{nw .} ==> Br10c4 ≠ w, Br10c4 ≠ ew, Br10c4 ≠ sw, Br10c4 ≠ esw
whip[1]: Br10c4{se .} ==> Nr10c4 ≠ 3
whip[1]: Pr9c2{se .} ==> Br8c1 ≠ ns, Br9c1 ≠ wne
B-single: Br9c1 = ew
N-single: Nr9c1 = 2
P-single: Pr9c1 = ns
B-single: Br8c1 = nw
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e, Pr7c1 ≠ ns, Br7c1 ≠ esw
P-single: Pr7c1 = ne
B-single: Br7c1 = nes
P-single: Pr7c2 = sw
B-single: Br7c0 = o
whip[1]: Pr7c1{ne .} ==> Br6c1 ≠ w, Br6c1 ≠ ew
B-single: Br6c1 = sw
N-single: Nr6c1 = 2
P-single: Pr6c2 = ne
whip[1]: Pr6c2{ne .} ==> Br5c2 ≠ n, Br5c2 ≠ w, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ ew, Br5c2 ≠ nes, Br6c2 ≠ e, Br6c2 ≠ s, Br6c2 ≠ ew, Br6c2 ≠ wne
whip[1]: Br6c2{ns .} ==> Pr6c3 ≠ o, Pr6c3 ≠ ne, Pr6c3 ≠ ns, Pr6c3 ≠ se, Nr6c2 ≠ 1, Nr6c2 ≠ 3
N-single: Nr6c2 = 2
P-single: Pr6c3 = sw
whip[1]: Pr6c3{sw .} ==> Br6c3 ≠ ns, Br6c3 ≠ s, Br6c2 ≠ ns, Br5c3 ≠ ns, Br5c3 ≠ w, Br5c3 ≠ s, Br5c2 ≠ esw, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ nes, Br6c3 ≠ se, Br6c3 ≠ swn, Br6c3 ≠ nes
B-single: Br5c2 = sw
N-single: Nr5c2 = 2
P-single: Pr5c3 = ne
B-single: Br6c2 = ne
P-single: Pr7c3 = ne
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ o, Br4c3 ≠ e, Br4c3 ≠ s, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ wne, Br4c3 ≠ nes, Br5c3 ≠ e
whip[1]: Br5c3{ne .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ se, Nr5c3 ≠ 0, Nr5c3 ≠ 3, Pr6c4 ≠ ew, Pr6c4 ≠ sw
whip[1]: Pr6c4{se .} ==> Br6c4 ≠ se, Br5c4 ≠ n, Br5c4 ≠ e
whip[1]: Br5c4{w .} ==> Pr5c5 ≠ ns, Pr5c5 ≠ nw, Pr6c4 ≠ ne, Pr6c5 ≠ ns, Pr6c5 ≠ nw, Pr5c4 ≠ ew, Pr5c5 ≠ se, Pr5c5 ≠ ew, Pr5c5 ≠ sw
whip[1]: Pr5c5{ne .} ==> Br4c4 ≠ s, Br4c4 ≠ ns, Br4c4 ≠ se, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ nes, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ wne, Br4c5 ≠ nes, Br5c5 ≠ w, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ wne
whip[1]: Pr6c5{ew .} ==> Br6c4 ≠ sw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ e, Br5c5 ≠ ne, Br6c4 ≠ ne, Br6c5 ≠ o, Br6c5 ≠ e, Br6c5 ≠ s, Br6c5 ≠ w
whip[1]: Br6c5{nes .} ==> Pr6c6 ≠ o, Pr6c6 ≠ ne, Pr6c6 ≠ ns, Pr6c6 ≠ se, Nr6c5 ≠ 0
whip[1]: Pr6c6{sw .} ==> Br5c6 ≠ sw, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne
whip[1]: Br5c6{ew .} ==> Pr5c7 ≠ o, Pr5c7 ≠ ne
whip[1]: Pr5c7{sw .} ==> Br4c7 ≠ sw
whip[1]: Br4c7{ew .} ==> Pr4c8 ≠ ne
P-single: Pr3c9 = nw
H-single: Hr3c8 = 1
V-single: Vr2c9 = 1
vertical-line-r2{c8 c9} ==> Ir2c8 = out
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
w[1]-3-in-r1c7-hit-by-horiz-line-at-se ==> Hr1c7 = 1, Vr2c8 = 0
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ se, Pr2c8 ≠ nw, Pr2c8 ≠ o
P-single: Pr1c7 = se

LOOP[20]: Hr3c8-Vr2c9-Hr2c8-Hr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c9-Vr4c9-Hr4c8- ==> Vr3c8 = 0
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = out
horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
w[1]-3-in-r3c6-hit-by-horiz-line-at-ne ==> Vr3c6 = 1, Hr4c6 = 1
w[1]-3-in-r3c6-closed-sw-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ ne, Pr3c7 ≠ o
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1

LOOP[24]: Hr4c4-Vr4c4-Hr5c3-Vr4c3-Hr4c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Vr2c2-Hr3c2-Hr3c3-Vr2c4-Hr2c3-Vr1c3-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5- ==> Vr3c5 = 0
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
w[1]-2-in-r4c7-open-nw-corner ==> Hr5c7 = 1, Vr4c8 = 1, Vr5c8 = 0
w[1]-3-in-r3c6-closed-se-corner ==> Pr3c6 ≠ se, Pr3c6 ≠ nw, Pr3c6 ≠ o
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1

LOOP[52]: Hr5c7-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c8-Hr3c7-Vr3c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Vr1c3-Hr2c3-Vr2c4-Hr3c3-Hr3c2-Vr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Hr4c2-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Hr5c5- ==> Hr5c6 = 0
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-r5{c6 c7} ==> Hr5c7 = 1
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
whip[1]: Pr3c9{nw .} ==> Br2c9 ≠ s, Br2c9 ≠ e, Br2c9 ≠ n, Br2c9 ≠ o, Br2c8 ≠ s, Br2c8 ≠ e, Br2c8 ≠ n, Br2c8 ≠ o, Br2c8 ≠ w, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ swn, Br2c8 ≠ wne, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ se, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br2c9 ≠ nes, Br3c8 ≠ ne, Br3c8 ≠ se, Br3c8 ≠ ew, Br3c8 ≠ sw
whip[1]: Br3c8{nw .} ==> Pr3c8 ≠ ns, Pr3c8 ≠ sw
whip[1]: Pr3c8{ew .} ==> Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ esw, Br2c7 ≠ nes, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ wne, Br3c7 ≠ nes, Br3c8 ≠ nw, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ w, Br3c7 ≠ e, Br3c7 ≠ ne
B-single: Br3c8 = ns
whip[1]: Pr4c8{ew .} ==> Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c7 ≠ ne, Br4c8 ≠ o, Br4c8 ≠ e, Br4c8 ≠ s, Br4c8 ≠ w
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 0
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 0
whip[1]: Br2c9{wne .} ==> Pr2c9 ≠ o, Nr2c9 ≠ 0
P-single: Pr2c9 = sw
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ n, Br1c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ esw, Br2c9 ≠ nw, Br2c9 ≠ wne
B-single: Br2c8 = nes
N-single: Nr2c8 = 3
P-single: Pr3c8 = ew
whip[1]: Pr3c8{ew .} ==> Br3c7 ≠ w, Br3c7 ≠ s, Br3c7 ≠ o, Br2c7 ≠ ne, Br2c7 ≠ e, Br2c7 ≠ ew, Br2c7 ≠ wne, Br3c7 ≠ sw
whip[1]: Br3c7{swn .} ==> Pr3c7 ≠ ns, Pr3c7 ≠ nw, Nr3c7 ≠ 0
whip[1]: Pr3c7{ew .} ==> Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ esw, Br2c6 ≠ wne, Br2c6 ≠ nes, Br2c7 ≠ sw, Br2c7 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes, Br2c6 ≠ e, Br2c6 ≠ ne
whip[1]: Br2c6{swn .} ==> Pr2c7 ≠ ns
P-single: Pr2c7 = ne
whip[1]: Pr2c7{ne .} ==> Br2c6 ≠ n, Br1c7 ≠ wne, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ swn, Br2c7 ≠ s
B-single: Br2c7 = ns
N-single: Nr2c7 = 2
P-single: Pr2c8 = ew
whip[1]: Pr2c8{ew .} ==> Br1c7 ≠ esw, Br1c8 ≠ swn
B-single: Br1c8 = ns
N-single: Nr1c8 = 2
P-single: Pr1c8 = ew
B-single: Br1c7 = swn
whip[1]: Br2c6{sw .} ==> Pr2c6 ≠ se, Pr2c6 ≠ ew, Nr2c6 ≠ 3
whip[1]: Pr2c6{nw .} ==> Br1c5 ≠ ns, Br1c5 ≠ nw, Br1c5 ≠ swn, Br1c6 ≠ ne, Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ sw, Br2c5 ≠ wne, Br2c5 ≠ nes, Br1c5 ≠ n, Br2c5 ≠ o, Br2c5 ≠ s
B-single: Br1c6 = ew
P-single: Pr1c6 = sw
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 0
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0, Nr1c5 ≠ 1
whip[1]: Br3c6{swn .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ew, Pr4c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Pr4c6 ≠ se, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ ns
P-single: Pr4c6 = ne
whip[1]: Pr4c6{ne .} ==> Br4c6 ≠ o, Br4c5 ≠ n, Br3c5 ≠ n, Br3c5 ≠ o, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ nes, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Br4c6{nes .} ==> Pr5c6 ≠ ne, Pr5c6 ≠ ns, Nr4c6 ≠ 0
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ se, Br5c6 ≠ nw, Br5c6 ≠ se, Br4c5 ≠ o, Br5c5 ≠ s
B-single: Br4c5 = sw
N-single: Nr4c5 = 2
P-single: Pr5c5 = ne
whip[1]: Pr5c5{ne .} ==> Br4c4 ≠ n, Br4c4 ≠ o, Br4c4 ≠ w, Br4c4 ≠ nw
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ esw, Br3c4 ≠ nes, Br3c4 ≠ o, Br3c4 ≠ n, Br3c4 ≠ w
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0, Nr5c5 ≠ 1
whip[1]: Br3c5{wne .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c7{sw .} ==> Br3c7 ≠ swn, Br4c7 ≠ nw
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 3
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ esw, Br2c6 ≠ sw, Br3c6 ≠ swn, Br2c5 ≠ n, Br2c6 ≠ s
B-single: Br3c6 = esw
P-single: Pr5c8 = nw
P-single: Pr3c7 = se
P-single: Pr4c7 = nw
whip[1]: Pr5c8{nw .} ==> Br5c8 ≠ n, Br4c8 ≠ n, Br4c7 ≠ ns, Br4c7 ≠ ew, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ swn, Br4c8 ≠ nes, Br5c7 ≠ ne, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c8 ≠ w, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c8 ≠ nes
B-single: Br4c7 = se
P-single: Pr4c8 = se
whip[1]: Pr4c8{se .} ==> Br3c7 ≠ ns
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ nes, Br4c6 ≠ ne, Br5c6 ≠ ne
whip[1]: Br4c6{ns .} ==> Nr4c6 ≠ 3
whip[1]: Br5c8{se .} ==> Pr5c9 ≠ nw, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Pr6c8 ≠ ne, Pr6c8 ≠ ns, Nr5c8 ≠ 3
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 1
whip[1]: Pr3c7{se .} ==> Br3c7 ≠ n
B-single: Br3c7 = nw
N-single: Nr3c7 = 2
whip[1]: Pr6c7{ew .} ==> Br6c6 ≠ sw, Br6c6 ≠ nes, Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c6 ≠ o, Br6c6 ≠ s, Br6c6 ≠ w, Br6c6 ≠ ne, Br6c7 ≠ o, Br6c7 ≠ e, Br6c7 ≠ s
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 0
whip[1]: Br2c6{w .} ==> Nr2c6 ≠ 2
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Vr2c6{0 .} ==> Pr2c6 ≠ ns, Pr3c6 ≠ ns, Br2c5 ≠ e, Br2c5 ≠ ew, Br2c6 ≠ w
P-single: Pr3c6 = sw
P-single: Pr2c6 = nw
B-single: Br2c6 = o
N-single: Nr2c6 = 0
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ e, Br3c5 ≠ ew
whip[1]: Br3c5{wne .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ sw, Nr3c5 ≠ 1
whip[1]: Pr3c5{ew .} ==> Br3c4 ≠ ew, Br3c4 ≠ wne, Br3c5 ≠ wne, Br3c4 ≠ e, Br3c4 ≠ ne
B-single: Br3c5 = ne
N-single: Nr3c5 = 2
P-single: Pr4c5 = sw
whip[1]: Pr4c5{sw .} ==> Br4c4 ≠ e, Br4c4 ≠ ew
whip[1]: Br4c4{wne .} ==> Pr4c4 ≠ o, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c4 ≠ sw, Nr4c4 ≠ 1
whip[1]: Pr2c6{nw .} ==> Br1c5 ≠ ne, Br1c5 ≠ wne
B-single: Br1c5 = nes
N-single: Nr1c5 = 3
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 1
whip[1]: Hr5c6{0 .} ==> Pr5c6 ≠ ew, Pr5c7 ≠ ew, Br4c6 ≠ ns, Br5c6 ≠ ns
P-single: Pr5c7 = se
P-single: Pr5c6 = sw
B-single: Br5c6 = ew
P-single: Pr6c6 = nw
P-single: Pr6c7 = ns
H-single: Hr6c7 = 0
V-single: Vr6c7 = 1
B-single: Br4c6 = n
N-single: Nr4c6 = 1

LOOP[82]: Vr6c7-Vr5c7-Hr5c7-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c8-Hr3c7-Vr3c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Vr1c3-Hr2c3-Vr2c4-Hr3c3-Hr3c2-Vr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Hr4c2-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Hr6c4-Vr6c4-Hr7c3-Vr6c3-Hr6c2-Vr5c2-Hr5c1-Vr5c1-Vr6c1-Hr7c1-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c5-Vr7c6-Hr8c6- ==> Vr7c7 = 0
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
vertical-line-r6{c6 c7} ==> Ir6c7 = out
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
whip[1]: Pr5c7{se .} ==> Br5c7 ≠ ns
B-single: Br5c7 = nw
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ ns
B-single: Br5c5 = nes
N-single: Nr5c5 = 3
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ n, Br6c5 ≠ ne, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ ns, Br6c6 ≠ ew, Br6c6 ≠ esw
whip[1]: Br6c6{se .} ==> Pr7c6 ≠ ne, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Pr7c7 ≠ o, Pr7c7 ≠ se, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Nr6c6 ≠ 3
whip[1]: Pr7c7{nw .} ==> Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nes, Br7c6 ≠ ne, Br7c6 ≠ wne, Br7c6 ≠ nes, Br6c7 ≠ n
whip[1]: Vr7c7{0 .} ==> Pr7c7 ≠ ns, Pr8c7 ≠ ne, Pr8c7 ≠ ns, Pr8c7 ≠ nw, Br7c6 ≠ e, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ esw, Br7c7 ≠ w
whip[1]: Br7c7{s .} ==> Pr7c8 ≠ sw, Pr8c8 ≠ nw
whip[1]: Hr7c7{1 .} ==> Pr7c7 ≠ nw, Pr7c8 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ se, Br6c7 ≠ w, Br6c7 ≠ ew, Br7c7 ≠ e, Br7c7 ≠ s
P-single: Pr7c7 = ne
B-single: Br7c7 = n
H-single: Hr8c7 = 0
V-single: Vr7c8 = 0
no-vertical-line-r7{c7 c8} ==> Ir7c8 = in
no-vertical-line-r7{c8 c9} ==> Ir7c9 = in
horizontal-line-{r6 r7}c9 ==> Ir6c9 = out
vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = in
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-{r5 r6}c8 ==> Hr6c8 = 1
w[1]-3-in-r6c9-hit-by-horiz-line-at-nw ==> Vr6c10 = 1
w[1]-2-in-r7c10-open-nw-corner ==> Hr8c10 = 1, Vr7c11 = 1, Vr8c11 = 0
w[1]-3-in-r6c9-closed-se-corner ==> Pr6c9 ≠ se, Pr6c9 ≠ nw, Pr6c9 ≠ o
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = in
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-{r8 r9}c10 ==> Hr9c10 = 1
whip[1]: Pr7c7{ne .} ==> Br7c6 ≠ n, Br6c6 ≠ se, Br7c6 ≠ ns, Br7c6 ≠ nw, Br7c6 ≠ swn
B-single: Br6c6 = e
N-single: Nr6c6 = 1
whip[1]: Pr7c6{sw .} ==> Br7c5 ≠ esw, Br7c5 ≠ swn
whip[1]: Br7c5{nes .} ==> Pr7c5 ≠ ns, Pr7c6 ≠ o
P-single: Pr7c6 = sw
whip[1]: Pr7c6{sw .} ==> Br7c6 ≠ s, Br7c6 ≠ o, Br6c5 ≠ n, Br6c5 ≠ nw
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 1
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 0, Nr7c6 ≠ 3
whip[1]: Pr7c5{ew .} ==> Br6c4 ≠ ew, Br6c5 ≠ swn
B-single: Br6c5 = ns
N-single: Nr6c5 = 2
P-single: Pr6c5 = ew
w[1]-1-in-r5c4-asymmetric-se-corner ==> Pr5c4 ≠ sw
P-single: Pr5c4 = nw
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ w
B-single: Br5c4 = s
P-single: Pr7c5 = se
P-single: Pr6c4 = se
whip[1]: Pr7c5{se .} ==> Br6c4 ≠ ns, Br7c4 ≠ ns, Br7c5 ≠ nes
B-single: Br7c5 = wne
B-single: Br7c4 = se
B-single: Br6c4 = nw
whip[1]: Pr6c4{se .} ==> Br5c3 ≠ ne, Br6c3 ≠ sw
B-single: Br6c3 = esw
N-single: Nr6c3 = 3
B-single: Br5c3 = n
N-single: Nr5c3 = 1
whip[1]: Pr5c4{nw .} ==> Br4c3 ≠ sw, Br4c3 ≠ swn, Br4c4 ≠ ne
B-single: Br4c4 = wne
N-single: Nr4c4 = 3
P-single: Pr4c4 = se
B-single: Br4c3 = esw
N-single: Nr4c3 = 3
w[1]-1-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ nw
P-single: Pr3c3 = ew
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ s, Br3c3 ≠ e, Br3c4 ≠ sw, Br3c4 ≠ swn
whip[1]: Br3c4{ns .} ==> Pr3c4 ≠ ns, Pr3c4 ≠ se, Nr3c4 ≠ 3
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ wne, Br2c4 ≠ sw, Br2c4 ≠ ne, Br3c3 ≠ w
B-single: Br3c3 = n
B-single: Br2c3 = nes
P-single: Pr3c4 = nw
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ ns, Br3c4 ≠ ns
B-single: Br3c4 = s
N-single: Nr3c4 = 1
P-single: Pr3c5 = ne
B-single: Br2c4 = ew
whip[1]: Pr3c5{ne .} ==> Br2c5 ≠ ns
B-single: Br2c5 = swn
N-single: Nr2c5 = 3
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ w, Br2c2 ≠ ew, Br2c2 ≠ esw
B-single: Br2c2 = sw
N-single: Nr2c2 = 2
whip[1]: Hr8c7{0 .} ==> Br8c7 ≠ n, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ nes
whip[1]: Vr7c8{0 .} ==> Br7c8 ≠ w, Br7c8 ≠ nw, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne
whip[1]: Vr8c7{1 .} ==> Br8c7 ≠ o, Br8c6 ≠ o, Pr8c7 ≠ o, Pr9c7 ≠ se, Pr9c7 ≠ ew, Br8c6 ≠ n, Br8c6 ≠ s, Br8c6 ≠ w, Br8c6 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ sw, Br8c6 ≠ swn, Br8c7 ≠ e, Br8c7 ≠ s, Br8c7 ≠ se
P-single: Pr8c7 = sw
whip[1]: Pr8c7{sw .} ==> Br8c6 ≠ e, Br7c6 ≠ w, Br8c6 ≠ se, Br8c6 ≠ ew, Br8c6 ≠ esw
B-single: Br7c6 = sw
N-single: Nr7c6 = 2
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0, Nr8c6 ≠ 1
whip[1]: Br8c7{esw .} ==> Nr8c7 ≠ 0
whip[1]: Pr9c7{nw .} ==> Hr9c7 ≠ 1, Br8c7 ≠ sw, Br8c7 ≠ esw, Br9c6 ≠ ne, Br9c6 ≠ sw, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ nw
H-single: Hr9c7 = 0
no-horizontal-line-{r8 r9}c7 ==> Ir9c7 = in
whip[1]: Hr9c7{0 .} ==> Pr9c8 ≠ nw, Pr9c8 ≠ ew
whip[1]: Pr9c8{se .} ==> Vr9c8 ≠ 0, Br8c8 ≠ ne, Br8c8 ≠ sw, Br9c7 ≠ sw, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ se
V-single: Vr9c8 = 1
vertical-line-r9{c7 c8} ==> Ir9c8 = out
whip[1]: Vr9c8{1 .} ==> Pr10c8 ≠ ew, Pr10c8 ≠ sw
whip[1]: Pr10c8{nw .} ==> Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ wne
whip[1]: Br9c8{sw .} ==> Pr10c9 ≠ nw
whip[1]: Br8c7{ew .} ==> Nr8c7 ≠ 3
whip[1]: Vr6c8{1 .} ==> Br6c8 ≠ o, Pr6c8 ≠ o, Pr7c8 ≠ ew, Br6c7 ≠ sw, Br6c8 ≠ n, Br6c8 ≠ e, Br6c8 ≠ s, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ se, Br6c8 ≠ nes
P-single: Pr7c8 = nw
P-single: Pr6c8 = se
B-single: Br6c7 = esw
N-single: Nr6c7 = 3
whip[1]: Pr7c8{nw .} ==> Br7c8 ≠ n, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nes
whip[1]: Br7c8{se .} ==> Pr7c9 ≠ nw, Pr7c9 ≠ ew, Pr7c9 ≠ sw, Nr7c8 ≠ 3
whip[1]: Br6c8{wne .} ==> Nr6c8 ≠ 0
whip[1]: Pr6c8{se .} ==> Br6c8 ≠ w, Br5c8 ≠ e, Br5c8 ≠ o, Br6c8 ≠ ew
whip[1]: Br6c8{wne .} ==> Pr6c9 ≠ ne, Pr6c9 ≠ ns, Nr6c8 ≠ 1
whip[1]: Pr6c9{sw .} ==> Br5c8 ≠ se, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br6c9 ≠ swn, Br6c9 ≠ wne, Br5c9 ≠ w
B-single: Br5c8 = s
N-single: Nr5c8 = 1
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ wne, Br4c9 ≠ nes
whip[1]: Br4c9{swn .} ==> Pr5c9 ≠ o, Pr5c10 ≠ ns, Pr5c10 ≠ se
P-single: Pr5c9 = ne
whip[1]: Pr5c9{ne .} ==> Br5c9 ≠ o, Br4c8 ≠ nw, Br5c9 ≠ e, Br5c9 ≠ s, Br5c9 ≠ se
B-single: Br4c8 = wne
N-single: Nr4c8 = 3
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Pr5c10{ew .} ==> Br4c10 ≠ sw, Br5c9 ≠ nes, Br4c10 ≠ ne, Br5c9 ≠ ne, Br5c10 ≠ w
whip[1]: Br5c10{s .} ==> Pr6c10 ≠ ns, Pr6c11 ≠ nw, Pr6c10 ≠ nw
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ nes, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ sw, Br6c10 ≠ esw, Br5c10 ≠ n, Br5c10 ≠ e, Br6c10 ≠ o, Br6c10 ≠ e, Br6c10 ≠ s, Br6c10 ≠ w
B-single: Br5c10 = s
P-single: Pr6c11 = sw
P-single: Pr5c10 = nw
B-single: Br6c9 = esw
P-single: Pr8c11 = nw
P-single: Pr6c9 = sw
P-single: Pr6c10 = se
P-single: Pr7c9 = ne
P-single: Pr7c10 = nw
whip[1]: Pr6c11{sw .} ==> Br6c10 ≠ ns, Br6c10 ≠ n, Br6c10 ≠ nw, Br6c10 ≠ swn
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0, Nr6c10 ≠ 1
whip[1]: Pr5c10{nw .} ==> Br4c9 ≠ swn, Br4c10 ≠ ns, Br4c10 ≠ se
B-single: Br4c9 = esw
whip[1]: Pr8c11{nw .} ==> Br8c10 ≠ s, Br8c10 ≠ e, Br8c10 ≠ o, Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ nw, Br7c10 ≠ ew, Br7c10 ≠ sw, Br8c10 ≠ w, Br8c10 ≠ ne, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ wne, Br8c10 ≠ nes
B-single: Br7c10 = se
P-single: Pr7c11 = ns
whip[1]: Pr7c11{ns .} ==> Br6c10 ≠ nes
whip[1]: Pr8c10{ew .} ==> Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes, Br8c9 ≠ sw, Br8c9 ≠ wne, Br8c9 ≠ nes, Br7c9 ≠ e, Br7c9 ≠ ne, Br8c9 ≠ o, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ne
whip[1]: Br8c9{swn .} ==> Nr8c9 ≠ 0
whip[1]: Br8c10{swn .} ==> Pr9c11 ≠ ns, Pr9c11 ≠ nw, Nr8c10 ≠ 0
whip[1]: Pr9c11{sw .} ==> Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ ew, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ n, Br9c10 ≠ e, Br9c10 ≠ ns
whip[1]: Pr6c9{sw .} ==> Br5c9 ≠ ns, Br6c8 ≠ nw
B-single: Br6c8 = wne
N-single: Nr6c8 = 3
B-single: Br5c9 = n
N-single: Nr5c9 = 1
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ ne
B-single: Br6c10 = wne
N-single: Nr6c10 = 3
whip[1]: Pr7c9{ne .} ==> Br7c9 ≠ o, Br7c8 ≠ e, Br7c8 ≠ se, Br7c9 ≠ s, Br7c9 ≠ w, Br7c9 ≠ nw, Br7c9 ≠ sw, Br7c9 ≠ swn
whip[1]: Br7c9{ns .} ==> Pr8c9 ≠ ns, Pr8c9 ≠ nw, Nr7c9 ≠ 0, Nr7c9 ≠ 3
whip[1]: Pr8c9{ew .} ==> Hr8c9 ≠ 0, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ esw, Br7c9 ≠ n, Br8c9 ≠ e
H-single: Hr8c9 = 1
B-single: Br7c9 = ns
N-single: Nr7c9 = 2
P-single: Pr8c10 = ew
V-single: Vr8c10 = 0
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
whip[1]: Pr8c10{ew .} ==> Br8c10 ≠ nw, Br8c10 ≠ swn
whip[1]: Br8c10{ns .} ==> Pr9c10 ≠ ne, Pr9c10 ≠ ns, Pr9c10 ≠ nw, Nr8c10 ≠ 3
whip[1]: Br7c8{s .} ==> Nr7c8 ≠ 2
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Hr9c10{1 .} ==> Br9c10 ≠ o, Pr9c11 ≠ o, Pr9c10 ≠ o, Pr9c10 ≠ sw, Br8c10 ≠ n, Br9c10 ≠ s, Br9c10 ≠ w, Br9c10 ≠ sw
P-single: Pr9c11 = sw
B-single: Br8c10 = ns
N-single: Nr8c10 = 2
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0, Nr9c10 ≠ 1
whip[1]: Pr9c10{ew .} ==> Br9c9 ≠ sw, Br9c9 ≠ wne, Br9c9 ≠ nes, Br9c9 ≠ o, Br9c9 ≠ s, Br9c9 ≠ w, Br9c9 ≠ ne
whip[1]: Br9c9{swn .} ==> Nr9c9 ≠ 0
whip[1]: Pr10c7{se .} ==> Br9c6 ≠ ns, Br9c6 ≠ ew, Br10c6 ≠ ne, Br10c6 ≠ sw, Br10c6 ≠ wne, Br10c6 ≠ nes, Br10c6 ≠ o, Br10c6 ≠ s, Br10c6 ≠ w, Br10c7 ≠ n, Br10c7 ≠ w
whip[1]: Br10c7{s .} ==> Hr10c7 ≠ 1, Vr10c7 ≠ 1, Pr11c7 ≠ ne, Pr11c7 ≠ nw, Pr10c7 ≠ se, Pr10c8 ≠ nw
V-single: Vr10c7 = 0
H-single: Hr10c7 = 0
w[1]-diagonal-3-2s-in-{r6c10...r9c7}-non-closed-sw-end ==> Vr9c7 = 1
P-single: Pr9c7 = ns
H-single: Hr9c6 = 0
P-single: Pr9c6 = o
V-single: Vr9c6 = 0
w[1]-2-in-r9c6-open-nw-corner ==> Hr10c6 = 1
P-single: Pr10c7 = nw
horizontal-line-{r9 r10}c6 ==> Ir9c6 = out
no-horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Vr10c7{0 .} ==> Br10c6 ≠ e, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ esw
whip[1]: Br10c6{swn .} ==> Pr10c6 ≠ ns, Pr10c6 ≠ nw, Nr10c6 ≠ 0
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ ew, Br9c5 ≠ esw, Br9c6 ≠ nw, Br10c5 ≠ sw, Br10c5 ≠ nes, Br10c5 ≠ w, Br10c5 ≠ ne
B-single: Br9c6 = se
whip[1]: Br9c5{sw .} ==> Nr9c5 ≠ 3
whip[1]: Hr10c7{0 .} ==> Br9c7 ≠ se
B-single: Br9c7 = ew
whip[1]: Pr9c7{ns .} ==> Br8c6 ≠ nes
whip[1]: Pr9c6{o .} ==> Br8c6 ≠ wne
B-single: Br8c6 = ne
N-single: Nr8c6 = 2
whip[1]: Hr11c7{1 .} ==> Br11c7 ≠ o, Pr11c7 ≠ o, Pr11c8 ≠ ne, Br10c7 ≠ e
P-single: Pr11c8 = ew
H-single: Hr11c8 = 1
V-single: Vr10c8 = 0
P-single: Pr11c7 = ew
B-single: Br10c7 = s
P-single: Pr9c8 = ns
H-single: Hr9c8 = 0
V-single: Vr8c8 = 1
P-single: Pr8c8 = se
H-single: Hr8c8 = 1
P-single: Pr9c9 = o
H-single: Hr9c9 = 0
V-single: Vr8c9 = 0
V-single: Vr9c9 = 0
w[1]-2-in-r9c8-open-ne-corner ==> Hr10c8 = 1
P-single: Pr10c8 = ne
B-single: Br11c7 = n

LOOP[112]: Hr10c8-Vr9c8-Vr8c8-Hr8c8-Hr8c9-Hr8c10-Vr7c11-Vr6c11-Hr6c10-Vr6c10-Hr7c9-Vr6c9-Hr6c8-Vr6c8-Hr7c7-Vr6c7-Vr5c7-Hr5c7-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c8-Hr3c7-Vr3c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Vr1c3-Hr2c3-Vr2c4-Hr3c3-Hr3c2-Vr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Hr4c2-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Hr6c4-Vr6c4-Hr7c3-Vr6c3-Hr6c2-Vr5c2-Hr5c1-Vr5c1-Vr6c1-Hr7c1-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c5-Vr7c6-Hr8c6-Vr8c7-Vr9c7-Hr10c6-Hr10c5-Vr9c5-Hr9c4-Vr9c4-Hr10c3-Vr10c3-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8- ==> Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
no-vertical-line-r9{c8 c9} ==> Ir9c9 = out
no-vertical-line-r8{c8 c9} ==> Ir8c8 = out
different-colours-in-r9{c9 c10} ==> Hr9c10 = 1
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
w[1]-2-in-r10c10-open-nw-corner ==> Hr11c10 = 1, Vr10c11 = 1
P-single: Pr11c11 = nw
vertical-line-r10{c10 c11} ==> Ir10c10 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXXXOXXXX
XOOXOOOOXO
XXXXXOXXXX
OOXOXXXOXO
XOOOOXOOOO
XXOXXXOXOX
OXXXOXXXXX
XXOOOOXOOO
XOOXOOXOOX
XOXXXXXXXX

.———.   .———.———.———.   .———.———.———.———.
|   | 2 | 3   1     | 2 | 3       1     |
.   .   .———.   .———.   .———.———.   .———.
|   |     3 | 2 |               |   | 3
.   .———.———.   .———.   .———.———.   .———.
|     2   1         | 3 |     2   0     |
.———.———.   .———.   .———.   .———.   .———.
  2   2 |   |   |         2 |   | 3 | 2
.———.   .———.   .———.   .———.   .———.   .
|   |         1     | 2 | 2           1
.   .———.   .———.———.   .   .———.   .———.
|       |   | 2         |   |   | 3 |   |
.———.   .———.   .———.   .———.   .———.   .
  3 |     2   2 | 3 |     1           2 |
.———.   .———.———.   .———.   .———.———.———.
|       |         0     |   | 2
.   .———.   .———.   .   .   .   .   .———.
|   | 2   2 | 3 |     2 | 2 | 2     |   |
.   .   .———.   .———.———.   .———.———.   .
| 3 |   | 3               1           2 |
.———.   .———.———.———.———.———.———.———.———.

init-time = 4m 4.21s, solve-time = 2m 29.13s, total-time = 6m 33.34s
nb-facts=<Fact-198045>
Quasi-Loop max length = 112
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
