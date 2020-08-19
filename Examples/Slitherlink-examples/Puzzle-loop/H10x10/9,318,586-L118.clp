
(solve
10 10
. 3 3 3 . 1 . . . . 
1 . 1 . 1 1 . 3 3 . 
2 2 2 . 2 . . . . 2 
. . . 2 2 . . 3 3 3 
. 2 . 2 . 1 . 0 . . 
3 . 2 . . . 3 . . 2 
. 2 . . . . . . 2 2 
. 0 . . . 2 1 3 3 2 
3 2 . 3 . . 1 1 2 2 
. . . . . . . . . 2
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 3 3 . 1 . . . .
1 . 1 . 1 1 . 3 3 .
2 2 2 . 2 . . . . 2
. . . 2 2 . . 3 3 3
. 2 . 2 . 1 . 0 . .
3 . 2 . . . 3 . . 2
. 2 . . . . . . 2 2
. 0 . . . 2 1 3 3 2
3 2 . 3 . . 1 1 2 2
. . . . . . . . . 2

start init-grid-structure 0.0228371620178223
start create-csp-variables
start create-labels 0.0012669563293457
start init-physical-csp-links 0.0101969242095947
start init-physical-non-csp-links 10.8643519878387
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.10798001289368
     start init-physical-BN-non-csp-links at local time 11.643168926239
     start init-physical-BP-non-csp-links at local time 21.4331469535828
     end init-physical-BP-non-csp-links at local time 251.370788097382
end init-physical-non-csp-links 262.235186815262
start init-corner-B-c-values 262.258273124695
start init-outer-B-candidates 262.258328199387
start init-outer-I-candidates 262.259116172791
start init-H-candidates 262.259567022324
start init-V-candidates 262.263257026672
start init-P-candidates 262.266793012619
start init-inner-I-candidates 262.273160219193
start init-inner-N-and-B-candidates 262.276043176651
start solution 262.288709163666
entering BRT
w[0]-0-in-r8c2 ==> Hr9c2 = 0, Hr8c2 = 0, Vr8c3 = 0, Vr8c2 = 0
w[0]-0-in-r5c8 ==> Hr6c8 = 0, Hr5c8 = 0, Vr5c9 = 0, Vr5c8 = 0
w[0]-adjacent-3-0-in-c8{r4 r5} ==> Vr4c9 = 1, Vr4c8 = 1, Hr5c9 = 1, Hr5c7 = 1, Hr4c8 = 1, Vr3c9 = 0, Vr3c8 = 0, Hr4c9 = 0, Hr4c7 = 0
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-diagonal-3-0-in-{r9c1...r8c2} ==> Vr9c2 = 1, Hr9c1 = 1
w[1]-diagonal-3-0-in-{r6c7...r5c8} ==> Vr6c8 = 1, Hr6c7 = 1
w[1]-diagonal-3-2+0-in-{r6c1...r7c2+r8c2} ==> Vr7c3 = 1, Vr6c1 = 1, Hr6c1 = 1, Vr5c1 = 0
w[1]-3-in-r4c10-hit-by-horiz-line-at-sw ==> Vr4c11 = 1, Hr4c10 = 1, Vr5c10 = 0
w[1]-diagonal-3-2-in-{r4c9...r3c10}-non-closed-ne-corner ==> Hr3c10 = 1
w[1]-diagonal-3-2-in-{r2c9...r3c10}-non-closed-se-corner ==> Vr2c9 = 1, Hr2c9 = 1, Vr1c9 = 0, Hr2c8 = 0
w[1]-3-in-r2c8-hit-by-horiz-line-at-ne ==> Vr2c8 = 1, Hr3c8 = 1
w[1]-3-in-r2c9-hit-by-horiz-line-at-sw ==> Vr2c10 = 1
w[1]-3-in-r4c9-hit-by-horiz-line-at-nw ==> Vr4c10 = 1
w[1]-1+3+1-in-r8c7+r8c8+r9c8 ==> Hr10c8 = 0, Hr8c7 = 0, Vr9c9 = 0, Vr8c7 = 0
w[1]-3-in-r9c1-closed-ne-corner ==> Pr10c1 ≠ ne, Pr10c1 ≠ o
w[1]-3-in-r6c7-closed-ne-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ne, Pr7c7 ≠ o
w[1]-3-in-r6c1-closed-nw-corner ==> Pr7c2 ≠ se
w[1]-3-in-r4c10-closed-ne-corner ==> Pr5c10 ≠ sw, Pr5c10 ≠ ne, Pr5c10 ≠ o
w[1]-3-in-r4c10-closed-nw-corner ==> Pr5c11 ≠ nw, Pr5c11 ≠ o
w[1]-3-in-r4c9-closed-se-corner ==> Pr4c9 ≠ se, Pr4c9 ≠ nw, Pr4c9 ≠ o
w[1]-3-in-r4c8-closed-ne-corner ==> Pr5c8 ≠ o
w[1]-3-in-r4c8-closed-nw-corner ==> Pr5c9 ≠ o
w[1]-3-in-r2c9-closed-ne-corner ==> Pr3c9 ≠ sw, Pr3c9 ≠ ne, Pr3c9 ≠ o
w[1]-3-in-r2c8-closed-sw-corner ==> Pr2c9 ≠ sw, Pr2c9 ≠ ne, Pr2c9 ≠ o
w[1]-3-in-r2c8-closed-se-corner ==> Pr2c8 ≠ se, Pr2c8 ≠ nw, Pr2c8 ≠ o
w[1]-3-in-r8c8-symmetric-se-corner ==> Vr8c9 = 1, Hr9c8 = 1
w[1]-2-in-r9c9-open-nw-corner ==> Hr10c9 = 1, Vr9c10 = 1, Hr10c10 = 0, Vr10c10 = 0
w[1]-2-in-r10c10-open-nw-corner ==> Hr11c10 = 1, Vr10c11 = 1
w[1]-diagonal-3-2-in-{r8c9...r9c10}-non-closed-se-corner ==> Hr8c9 = 1, Vr7c9 = 0, Hr8c8 = 0
w[1]-3-in-r8c8-hit-by-horiz-line-at-ne ==> Vr8c8 = 1
w[1]-3-in-r8c9-hit-by-verti-line-at-se ==> Hr9c10 = 0
w[1]-3-in-r8c9-hit-by-horiz-line-at-sw ==> Vr8c10 = 1
w[1]-2-in-r7c10-open-sw-corner ==> Hr7c10 = 1, Vr7c11 = 1, Vr6c11 = 0
w[1]-diagonal-3-2s-in-{r8c8...r6c10}-non-closed-ne-end ==> Hr6c10 = 1
w[1]-diagonal-3-2-in-{r8c8...r7c9}-non-closed-ne-corner ==> Hr7c9 = 1
w[1]-3-in-r8c9-closed-ne-corner ==> Pr9c9 ≠ o
w[1]-3-in-r8c8-closed-se-corner ==> Pr8c8 ≠ se, Pr8c8 ≠ nw, Pr8c8 ≠ o
diagonal-1-3-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 1
adjacent-3s-in-r1{c3 c4} ==> Vr1c5 = 1, Vr1c4 = 1, Vr1c3 = 1, Vr2c4 = 0
adjacent-3s-in-r1{c2 c3} ==> Vr2c3 = 0
P-single: Pr9c9 = nw
P-single: Pr8c11 = ns
V-single: Vr8c11 = 1
P-single: Pr9c11 = ns
P-single: Pr10c11 = ns
P-single: Pr11c11 = nw
P-single: Pr5c9 = ne
P-single: Pr5c8 = nw
P-single: Pr8c3 = ne
H-single: Hr8c3 = 1
P-single: Pr10c10 = nw
w[1]-1-in-r9c8-asymmetric-ne-corner ==> Pr10c8 ≠ ew, Pr10c8 ≠ se, Pr10c8 ≠ nw, Pr10c8 ≠ ns
entering level Loop with <Fact-93578>
entering level Col with <Fact-93692>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-vertical-line-r10{c9 c10} ==> Ir10c9 = in
horizontal-line-{r9 r10}c9 ==> Ir9c9 = out
no-vertical-line-r9{c8 c9} ==> Ir9c8 = out
no-vertical-line-r9{c7 c8} ==> Ir9c7 = out
no-horizontal-line-{r8 r9}c7 ==> Ir8c7 = out
no-vertical-line-r8{c6 c7} ==> Ir8c6 = out
no-horizontal-line-{r7 r8}c7 ==> Ir7c7 = out
vertical-line-r8{c7 c8} ==> Ir8c8 = in
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = in
no-vertical-line-r7{c8 c9} ==> Ir7c9 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
no-horizontal-line-{r7 r8}c10 ==> Ir8c10 = in
no-horizontal-line-{r8 r9}c10 ==> Ir9c10 = in
vertical-line-r8{c9 c10} ==> Ir8c9 = out
horizontal-line-{r6 r7}c10 ==> Ir6c10 = out
horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
no-vertical-line-r5{c9 c10} ==> Ir5c9 = in
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
horizontal-line-{r4 r5}c7 ==> Ir4c7 = out
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = out
no-vertical-line-r3{c7 c8} ==> Ir3c8 = out
no-vertical-line-r3{c8 c9} ==> Ir3c9 = out
no-vertical-line-r3{c9 c10} ==> Ir3c10 = out
horizontal-line-{r2 r3}c10 ==> Ir2c10 = in
no-horizontal-line-{r1 r2}c10 ==> Ir1c10 = in
no-vertical-line-r1{c9 c10} ==> Ir1c9 = in
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
vertical-line-r2{c7 c8} ==> Ir2c7 = out
vertical-line-r2{c8 c9} ==> Ir2c9 = out
horizontal-line-{r3 r4}c10 ==> Ir4c10 = in
vertical-line-r4{c9 c10} ==> Ir4c9 = out
vertical-line-r4{c8 c9} ==> Ir4c8 = in
horizontal-line-{r5 r6}c7 ==> Ir6c7 = out
vertical-line-r6{c7 c8} ==> Ir6c8 = in
horizontal-line-{r6 r7}c9 ==> Ir6c9 = out
no-horizontal-line-{r9 r10}c8 ==> Ir10c8 = out
vertical-line-r6{c0 c1} ==> Ir6c1 = in
horizontal-line-{r5 r6}c1 ==> Ir5c1 = out
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
different-colours-in-r10{c8 c9} ==> Hr10c9 = 1
same-colour-in-r6{c9 c10} ==> Vr6c10 = 0
different-colours-in-r6{c8 c9} ==> Hr6c9 = 1
different-colours-in-{r5 r6}c9 ==> Hr6c9 = 1
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1

LOOP[12]: Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Hr3c10-Vr2c10-Hr2c9-Vr2c9-Hr3c8-Vr2c8- ==> Vr1c8 = 0
no-vertical-line-r1{c7 c8} ==> Ir1c7 = in
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1

LOOP[14]: Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Hr3c10-Vr2c10-Hr2c9-Vr2c9-Hr3c8-Vr2c8-Hr2c7- ==> Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
w[1]-3-in-r6c7-hit-by-verti-line-at-se ==> Vr6c7 = 1
w[1]-3-in-r6c7-closed-nw-corner ==> Pr7c8 ≠ se, Pr7c8 ≠ nw, Pr7c8 ≠ o
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
Starting_init_links_with_<Fact-94456>
2354 candidates, 7781 csp-links and 30763 links. Density = 1.11%
starting non trivial part of solution
Entering_level_W1_with_<Fact-171549>
whip[1]: Vr5c7{0 .} ==> Br5c7 ≠ wne, Pr5c7 ≠ ns, Pr5c7 ≠ se, Pr5c7 ≠ sw, Pr6c7 ≠ ne, Pr6c7 ≠ ns, Pr6c7 ≠ nw, Br5c6 ≠ e, Br5c7 ≠ w, Br5c7 ≠ nw, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ swn
whip[1]: Br5c6{w .} ==> Pr6c6 ≠ ne, Pr5c6 ≠ se
whip[1]: Hr6c6{0 .} ==> Br6c6 ≠ nes, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c7 ≠ ew, Pr6c7 ≠ sw, Br5c6 ≠ s, Br6c6 ≠ n, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne
w[1]-1-in-r5c6-symmetric-se-corner ==> Pr5c6 ≠ nw, Pr5c6 ≠ o
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ esw, Br3c4 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se, Br3c4 ≠ o, Br3c4 ≠ n, Br3c4 ≠ w
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr6c7{se .} ==> Br6c7 ≠ esw, Br6c7 ≠ nes
whip[1]: Br6c7{wne .} ==> Pr6c7 ≠ o, Pr6c8 ≠ o, Pr7c7 ≠ se, Pr7c7 ≠ ew
P-single: Pr6c8 = sw
P-single: Pr6c7 = se
whip[1]: Pr6c8{sw .} ==> Br6c8 ≠ ns, Br6c8 ≠ ne, Br6c8 ≠ s, Br6c8 ≠ e, Br6c8 ≠ n, Br6c8 ≠ o, Br5c7 ≠ ne, Br5c7 ≠ e, Br5c7 ≠ n, Br5c7 ≠ o, Br5c7 ≠ se, Br5c7 ≠ nes, Br6c7 ≠ swn, Br6c8 ≠ nw, Br6c8 ≠ se, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes
B-single: Br6c7 = wne
whip[1]: Pr7c8{ns .} ==> Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes, Br7c8 ≠ s, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c7 ≠ n, Br7c8 ≠ o, Br7c8 ≠ e
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Br6c8{esw .} ==> Nr6c8 ≠ 0
whip[1]: Br5c7{ns .} ==> Nr5c7 ≠ 0, Nr5c7 ≠ 3
whip[1]: Pr6c7{se .} ==> Br6c6 ≠ w, Br6c6 ≠ s, Br6c6 ≠ o, Br6c6 ≠ sw
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 0
whip[1]: Pr7c7{nw .} ==> Br7c6 ≠ w, Br7c6 ≠ ne, Br7c6 ≠ sw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c6 ≠ o, Br7c6 ≠ s
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 0
whip[1]: Vr7c8{1 .} ==> Br7c8 ≠ nes, Br7c7 ≠ o, Pr7c8 ≠ ne, Pr8c8 ≠ ew, Pr8c8 ≠ sw, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ sw, Br7c8 ≠ n, Br7c8 ≠ ne, Br7c8 ≠ ns
P-single: Pr7c8 = ns
whip[1]: Pr7c8{ns .} ==> Br6c8 ≠ sw, Br6c8 ≠ esw
whip[1]: Br6c8{ew .} ==> Pr7c9 ≠ ew, Pr7c9 ≠ sw, Nr6c8 ≠ 3
whip[1]: Pr7c9{ns .} ==> Br6c8 ≠ w, Br6c9 ≠ s, Br6c9 ≠ ne, Br6c9 ≠ ns, Br6c9 ≠ se, Br6c9 ≠ nes, Br7c9 ≠ nw, Br7c9 ≠ se, Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ e
B-single: Br6c8 = ew
N-single: Nr6c8 = 2
P-single: Pr6c9 = se
whip[1]: Pr6c9{se .} ==> Br6c9 ≠ w, Br5c9 ≠ w, Br5c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c9 ≠ ne, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ esw
whip[1]: Br6c9{wne .} ==> Pr6c10 ≠ ne, Pr6c10 ≠ ns, Nr6c9 ≠ 0, Nr6c9 ≠ 1
whip[1]: Pr6c10{sw .} ==> Br5c9 ≠ se, Br5c9 ≠ nes, Br5c10 ≠ nw, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br6c10 ≠ nw, Br6c10 ≠ se, Br5c10 ≠ w
whip[1]: Br5c10{nes .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ se
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ wne, Br4c10 ≠ esw, Br4c10 ≠ swn, Br5c9 ≠ s
B-single: Br5c9 = ns
N-single: Nr5c9 = 2
whip[1]: Br4c10{nes .} ==> Pr4c11 ≠ ns, Pr5c11 ≠ sw, Pr4c10 ≠ ns, Pr4c10 ≠ nw
P-single: Pr5c11 = ns
P-single: Pr4c11 = sw
whip[1]: Pr5c11{ns .} ==> Br5c10 ≠ n, Br5c10 ≠ o, Br4c10 ≠ nes, Br5c10 ≠ s, Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ nes
B-single: Br4c10 = wne
P-single: Pr4c10 = se
P-single: Pr5c10 = nw
whip[1]: Pr4c10{se .} ==> Br3c9 ≠ s, Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c10 ≠ ne, Br3c10 ≠ nw, Br3c10 ≠ ew, Br3c10 ≠ sw, Br4c9 ≠ swn, Br4c9 ≠ nes
B-single: Br4c9 = esw
whip[1]: Pr4c9{sw .} ==> Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ esw, Br3c8 ≠ nes, Br4c8 ≠ swn, Br3c8 ≠ o, Br3c8 ≠ n, Br3c8 ≠ w
whip[1]: Br3c8{wne .} ==> Nr3c8 ≠ 0
whip[1]: Br4c8{nes .} ==> Pr4c8 ≠ o, Pr4c8 ≠ nw
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ nes
whip[1]: Br3c10{se .} ==> Pr3c10 ≠ ns, Pr3c10 ≠ sw
whip[1]: Pr3c10{ew .} ==> Br2c9 ≠ esw, Br2c9 ≠ nes, Br2c10 ≠ nw, Br2c10 ≠ ew, Br2c10 ≠ wne, Br3c10 ≠ se, Br2c10 ≠ o, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ w, Br2c10 ≠ ne
B-single: Br3c10 = ns
P-single: Pr3c11 = nw
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ s, Br2c10 ≠ ns, Br2c10 ≠ sw, Br2c10 ≠ swn
whip[1]: Br2c10{nes .} ==> Pr2c11 ≠ o, Pr2c11 ≠ nw, Pr2c10 ≠ se, Nr2c10 ≠ 0, Nr2c10 ≠ 1
whip[1]: Pr2c11{sw .} ==> Br1c10 ≠ nes, Br1c10 ≠ o, Br1c10 ≠ w
whip[1]: Br1c10{wne .} ==> Nr1c10 ≠ 0
whip[1]: Br2c9{wne .} ==> Pr2c9 ≠ ns, Pr2c9 ≠ nw, Pr2c9 ≠ ew, Pr2c10 ≠ o, Pr2c10 ≠ ne, Pr2c10 ≠ ns, Pr3c9 ≠ se, Pr3c9 ≠ ew
P-single: Pr2c9 = se
whip[1]: Pr2c9{se .} ==> Br1c9 ≠ w, Br1c9 ≠ e, Br1c9 ≠ n, Br1c9 ≠ o, Br1c8 ≠ s, Br1c8 ≠ e, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ ne, Br1c9 ≠ nw, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ swn, Br1c9 ≠ wne, Br2c8 ≠ swn, Br2c8 ≠ wne, Br2c8 ≠ nes
B-single: Br2c8 = esw
P-single: Pr3c8 = ne
P-single: Pr3c9 = nw
whip[1]: Pr3c8{ne .} ==> Br3c7 ≠ n, Br2c7 ≠ n, Br2c7 ≠ o, Br2c7 ≠ s, Br2c7 ≠ w, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ nes, Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ ew, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c8 ≠ e, Br3c8 ≠ s, Br3c8 ≠ ew, Br3c8 ≠ sw, Br3c8 ≠ swn, Br3c8 ≠ wne
whip[1]: Br3c8{ns .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ ns, Nr3c8 ≠ 1, Nr3c8 ≠ 3
N-single: Nr3c8 = 2
whip[1]: Pr4c8{ew .} ==> Br4c7 ≠ sw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c8 ≠ esw, Br3c8 ≠ ne, Br4c7 ≠ o, Br4c7 ≠ s, Br4c7 ≠ w, Br4c7 ≠ ne
B-single: Br3c8 = ns
P-single: Pr4c9 = sw
whip[1]: Pr4c9{sw .} ==> Br3c9 ≠ w, Br3c9 ≠ nw
whip[1]: Br3c9{n .} ==> Nr3c9 ≠ 2, Nr3c9 ≠ 3
whip[1]: Br4c7{swn .} ==> Nr4c7 ≠ 0
whip[1]: Br3c7{sw .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ se, Pr3c7 ≠ ew, Nr3c7 ≠ 3
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 0
whip[1]: Pr3c9{nw .} ==> Br3c9 ≠ n, Br2c9 ≠ swn
B-single: Br2c9 = wne
P-single: Pr2c10 = sw
P-single: Pr3c10 = ne
B-single: Br3c9 = o
N-single: Nr3c9 = 0
whip[1]: Pr2c10{sw .} ==> Br1c10 ≠ s, Br1c9 ≠ se, Br1c9 ≠ nes, Br1c10 ≠ sw, Br1c10 ≠ wne, Br2c10 ≠ se, Br2c10 ≠ nes
B-single: Br2c10 = esw
N-single: Nr2c10 = 3
P-single: Pr2c11 = ns
B-single: Br1c10 = ne
N-single: Nr1c10 = 2
P-single: Pr1c11 = sw
P-single: Pr1c10 = ew
whip[1]: Pr1c10{ew .} ==> Br1c9 ≠ s
B-single: Br1c9 = ns
N-single: Nr1c9 = 2
P-single: Pr1c9 = ew
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ w, Br1c8 ≠ o
whip[1]: Br1c8{nw .} ==> Pr1c8 ≠ o, Pr1c8 ≠ sw, Nr1c8 ≠ 0, Nr1c8 ≠ 3
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ sw, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c7 ≠ o, Br1c7 ≠ s, Br1c7 ≠ w, Br1c7 ≠ ne
whip[1]: Br1c7{swn .} ==> Nr1c7 ≠ 0
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ esw, Br1c7 ≠ n
whip[1]: Br5c10{se .} ==> Nr5c10 ≠ 0, Nr5c10 ≠ 3
whip[1]: Br7c7{esw .} ==> Nr7c7 ≠ 0
whip[1]: Pr8c8{ns .} ==> Br7c7 ≠ se, Br7c7 ≠ esw, Br8c8 ≠ swn, Br8c8 ≠ wne, Br8c7 ≠ n
whip[1]: Br8c7{w .} ==> Pr8c7 ≠ ne, Pr9c7 ≠ ne, Pr9c8 ≠ nw, Pr8c7 ≠ se, Pr8c7 ≠ ew
whip[1]: Pr8c7{nw .} ==> Br7c6 ≠ ns, Br7c6 ≠ swn, Br8c6 ≠ ne
whip[1]: Pr9c7{sw .} ==> Br8c6 ≠ se
whip[1]: Br8c8{nes .} ==> Pr8c9 ≠ nw, Pr8c9 ≠ ew, Pr9c8 ≠ o, Pr9c8 ≠ ns, Pr9c8 ≠ sw
whip[1]: Pr9c8{ew .} ==> Br9c8 ≠ e, Br9c8 ≠ s, Br9c8 ≠ w
B-single: Br9c8 = n
P-single: Pr10c9 = se
w[1]-1-in-r8c7-asymmetric-se-corner ==> Pr8c7 ≠ ns
whip[1]: Pr10c9{se .} ==> Br10c9 ≠ w, Br10c9 ≠ s, Br10c9 ≠ e, Br10c9 ≠ n, Br10c9 ≠ o, Br10c8 ≠ w, Br10c8 ≠ s, Br10c8 ≠ n, Br10c8 ≠ o, Br9c9 ≠ ne, Br9c9 ≠ nw, Br9c9 ≠ ew, Br9c9 ≠ sw, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ sw, Br10c8 ≠ swn, Br10c8 ≠ wne, Br10c8 ≠ nes, Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ nes
whip[1]: Br10c9{wne .} ==> Pr11c9 ≠ o, Pr11c9 ≠ ew, Pr11c10 ≠ nw, Nr10c9 ≠ 0, Nr10c9 ≠ 1
P-single: Pr11c10 = ew
whip[1]: Pr11c10{ew .} ==> Br11c10 ≠ o, Br11c9 ≠ o, Br10c9 ≠ nw, Br10c9 ≠ wne, Br10c10 ≠ nw
B-single: Br10c10 = se
B-single: Br10c9 = swn
N-single: Nr10c9 = 3
P-single: Pr11c9 = ne
B-single: Br11c9 = n
B-single: Br11c10 = n
whip[1]: Pr11c9{ne .} ==> Br11c8 ≠ n, Br10c8 ≠ se, Br10c8 ≠ esw
B-single: Br11c8 = o
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Br10c8{ew .} ==> Nr10c8 ≠ 0, Nr10c8 ≠ 3
whip[1]: Pr8c7{nw .} ==> Br7c6 ≠ ew, Br8c6 ≠ ew, Br8c7 ≠ w, Br7c6 ≠ e
whip[1]: Br8c7{s .} ==> Pr9c7 ≠ ns
whip[1]: Pr9c8{ew .} ==> Br9c7 ≠ e
whip[1]: Br9c7{w .} ==> Pr10c7 ≠ ne, Pr9c7 ≠ se
whip[1]: Pr9c7{sw .} ==> Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ esw, Br9c6 ≠ e
whip[1]: Pr10c8{sw .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ esw, Br10c7 ≠ n
whip[1]: Br10c7{nes .} ==> Pr11c7 ≠ ne, Pr10c7 ≠ se, Nr10c7 ≠ 2
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ ew, Br10c6 ≠ wne, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Pr8c9{se .} ==> Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c9 ≠ ne, Br7c9 ≠ sw, Br8c8 ≠ nes, Br8c9 ≠ nes
B-single: Br8c8 = esw
P-single: Pr8c8 = ns
P-single: Pr9c8 = ne
w[1]-1-in-r9c7-symmetric-ne-corner ==> Pr10c7 ≠ sw, Pr10c7 ≠ o
w[1]-1-in-r8c7-asymmetric-ne-corner ==> Pr9c7 ≠ ew
whip[1]: Pr8c8{ns .} ==> Br8c7 ≠ s
B-single: Br8c7 = e
whip[1]: Pr9c8{ne .} ==> Br9c7 ≠ n
whip[1]: Pr9c7{sw .} ==> Br9c6 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ n, Br9c6 ≠ ns
whip[1]: Pr10c7{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ nes, Br9c6 ≠ o, Br9c6 ≠ w, Br10c6 ≠ o, Br10c6 ≠ s, Br10c6 ≠ w
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 0
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0
whip[1]: Br7c8{ew .} ==> Nr7c8 ≠ 3
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 3
whip[1]: Hr1c6{1 .} ==> Br1c6 ≠ w, Br0c6 ≠ o, Pr1c6 ≠ o, Pr1c6 ≠ sw, Pr1c7 ≠ o, Pr1c7 ≠ se, Br1c6 ≠ e, Br1c6 ≠ s
B-single: Br1c6 = n
H-single: Hr2c6 = 0
V-single: Vr1c6 = 0
w[1]-diagonal-1-1-in-{r1c6...r2c5}-with-no-sw-inner-sides ==> Hr2c5 = 0, Vr2c6 = 0
P-single: Pr1c6 = ew
H-single: Hr1c5 = 1
w[1]-3-in-r1c4-hit-by-horiz-line-at-ne ==> Hr2c4 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-se ==> Hr1c3 = 1
w[1]-3-in-r1c2-hit-by-horiz-line-at-ne ==> Hr2c2 = 1
w[1]-3-in-r1c2-closed-se-corner ==> Pr1c2 ≠ se, Pr1c2 ≠ o
w[1]-3-in-r1c2-closed-sw-corner ==> Pr1c3 ≠ sw, Pr1c3 ≠ o
w[1]-3-in-r1c3-closed-nw-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
w[1]-3-in-r1c3-closed-ne-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
w[1]-3-in-r1c4-closed-se-corner ==> Pr1c4 ≠ se, Pr1c4 ≠ o
w[1]-3-in-r1c4-closed-sw-corner ==> Pr1c5 ≠ sw, Pr1c5 ≠ o
P-single: Pr1c7 = ew
B-single: Br0c6 = s
w[1]-1-in-r2c5-symmetric-ne-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
no-horizontal-line-{r0 r1}c2 ==> Ir1c2 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
vertical-line-r1{c4 c5} ==> Ir1c4 = out
vertical-line-r1{c3 c4} ==> Ir1c3 = in
different-colours-in-r2{c6 c7} ==> Hr2c7 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
whip[1]: Hr2c6{0 .} ==> Br2c6 ≠ n
whip[1]: Br2c6{w .} ==> Pr3c6 ≠ ne, Pr3c7 ≠ nw
whip[1]: Pr3c7{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ swn, Br3c6 ≠ n, Br3c6 ≠ ns
whip[1]: Vr1c6{0 .} ==> Br1c5 ≠ e, Br1c5 ≠ ne, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ wne, Br1c5 ≠ nes
whip[1]: Hr2c5{0 .} ==> Pr2c5 ≠ ne, Pr2c5 ≠ se, Pr2c5 ≠ ew, Pr2c6 ≠ sw, Br1c5 ≠ s, Br1c5 ≠ ns, Br1c5 ≠ sw, Br1c5 ≠ swn, Br2c5 ≠ n
P-single: Pr2c6 = o
w[1]-1-in-r2c6-symmetric-nw-corner ==> Pr3c7 ≠ o
whip[1]: Pr2c6{o .} ==> Br2c5 ≠ e, Br2c6 ≠ w
whip[1]: Br2c6{s .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ nw
whip[1]: Pr3c7{sw .} ==> Vr3c7 ≠ 0, Br3c6 ≠ sw, Br3c6 ≠ o, Br3c6 ≠ s, Br3c6 ≠ w, Br3c7 ≠ o, Br3c7 ≠ s
V-single: Vr3c7 = 1
vertical-line-r3{c6 c7} ==> Ir3c6 = in
same-colour-in-{r2 r3}c6 ==> Hr3c6 = 0
whip[1]: Vr3c7{1 .} ==> Pr4c7 ≠ o, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c7 ≠ sw
whip[1]: Pr4c7{nw .} ==> Br4c6 ≠ ne, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ nw, Br4c7 ≠ swn
whip[1]: Hr3c6{0 .} ==> Pr3c6 ≠ se, Pr3c6 ≠ ew, Pr3c7 ≠ sw, Br2c6 ≠ s, Br3c6 ≠ ne, Br3c6 ≠ wne, Br3c6 ≠ nes
P-single: Pr3c7 = ns
B-single: Br2c6 = e
P-single: Pr2c7 = se
whip[1]: Pr3c7{ns .} ==> Br2c7 ≠ e, Br2c7 ≠ ne
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 1
whip[1]: Pr2c7{se .} ==> Br1c7 ≠ e, Br1c7 ≠ ew, Br1c7 ≠ swn, Br2c7 ≠ ew
B-single: Br2c7 = wne
N-single: Nr2c7 = 3
P-single: Pr2c8 = sw
B-single: Br1c7 = ns
N-single: Nr1c7 = 2
P-single: Pr1c8 = ew
whip[1]: Pr2c8{sw .} ==> Br1c8 ≠ nw
B-single: Br1c8 = n
N-single: Nr1c8 = 1
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ nes, Br3c3 ≠ nw, Br3c3 ≠ se, Br2c2 ≠ o, Br2c2 ≠ n, Br2c2 ≠ w
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ o, Br5c5 ≠ e, Br5c5 ≠ s
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes, Br4c4 ≠ ew, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c4 ≠ nw, Br4c4 ≠ ns, Br5c3 ≠ n, Br5c3 ≠ e, Br5c3 ≠ ns
whip[1]: Br5c4{sw .} ==> Pr6c5 ≠ o, Pr6c5 ≠ se
whip[1]: Pr6c5{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ swn, Br6c5 ≠ wne
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ swn, Br4c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ s
whip[1]: Br4c6{esw .} ==> Nr4c6 ≠ 0
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes, Br3c4 ≠ sw, Br3c4 ≠ wne, Br2c4 ≠ o, Br2c4 ≠ n, Br2c4 ≠ w, Br3c4 ≠ s, Br3c4 ≠ ne
whip[1]: Br2c4{wne .} ==> Nr2c4 ≠ 0
whip[1]: Pr4c5{sw .} ==> Br3c5 ≠ ew, Br3c5 ≠ ns
whip[1]: Br3c6{esw .} ==> Nr3c6 ≠ 0
whip[1]: Br3c7{sw .} ==> Nr3c7 ≠ 0
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 3
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ w, Br1c5 ≠ o
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 0
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s, Pr1c4 ≠ ew, Pr1c5 ≠ ew, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes
P-single: Pr1c5 = se
P-single: Pr1c4 = sw
B-single: Br1c4 = esw
P-single: Pr2c4 = ne
P-single: Pr2c5 = nw
B-single: Br0c4 = o
w[1]-1-in-r2c5-symmetric-nw-corner ==> Pr3c6 ≠ o
P-single: Pr3c6 = sw
H-single: Hr3c5 = 1
V-single: Vr3c6 = 1
w[1]-1-in-r2c3-symmetric-ne-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne
vertical-line-r3{c5 c6} ==> Ir3c5 = out
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ n
B-single: Br1c5 = nw
N-single: Nr1c5 = 2
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ esw, Br1c3 ≠ swn
whip[1]: Pr2c4{ne .} ==> Br2c3 ≠ n, Br1c3 ≠ nes, Br2c3 ≠ e, Br2c4 ≠ e, Br2c4 ≠ s, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c4 ≠ wne
B-single: Br1c3 = wne
P-single: Pr1c3 = se
whip[1]: Pr1c3{se .} ==> Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ nes
B-single: Br1c2 = esw
P-single: Pr1c2 = sw
P-single: Pr2c2 = ne
P-single: Pr2c3 = nw
w[1]-1-in-r2c3-symmetric-nw-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
w[1]-1-in-r2c1-symmetric-ne-corner ==> Pr3c1 ≠ ne, Pr3c1 ≠ o
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ s, Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ swn
B-single: Br1c1 = wne
N-single: Nr1c1 = 3
w[1]-adjacent-1-3-on-edge-in-{r2 r1}c1 ==> Hr3c1 = 0
P-single: Pr3c1 = ns
V-single: Vr3c1 = 1
P-single: Pr1c1 = se
P-single: Pr2c1 = ns
w[1]-1-in-r2c1-asymmetric-nw-corner ==> Pr3c2 ≠ ew, Pr3c2 ≠ ns, Pr3c2 ≠ ne
vertical-line-r3{c0 c1} ==> Ir3c1 = in
whip[1]: Hr3c1{0 .} ==> Pr3c2 ≠ nw, Br2c1 ≠ s, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw
whip[1]: Pr3c2{se .} ==> Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ ew, Br3c2 ≠ sw, Br2c1 ≠ e
whip[1]: Br2c2{ns .} ==> Nr2c2 ≠ 3
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ n, Br3c1 ≠ se
B-single: Br2c1 = w
whip[1]: Br3c1{sw .} ==> Pr4c1 ≠ se
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ o, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Pr4c3{se .} ==> Br3c3 ≠ sw, Br4c2 ≠ ne, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ n, Br4c3 ≠ w
whip[1]: Br3c3{ew .} ==> Pr3c4 ≠ ne
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ swn, Br2c3 ≠ w, Br3c4 ≠ e
B-single: Br2c3 = s
H-single: Hr3c3 = 1
P-single: Pr3c3 = ew
H-single: Hr3c2 = 1
V-single: Vr3c3 = 0
P-single: Pr4c1 = ns
H-single: Hr4c1 = 0
V-single: Vr4c1 = 1
P-single: Pr3c2 = se
V-single: Vr3c2 = 1
vertical-line-r3{c1 c2} ==> Ir3c2 = out
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
vertical-line-r4{c0 c1} ==> Ir4c1 = in
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
whip[1]: Hr3c3{1 .} ==> Br3c3 ≠ ew
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ ne, Br2c2 ≠ e, Br3c2 ≠ se
B-single: Br3c2 = nw
H-single: Hr4c2 = 0
P-single: Pr4c2 = ns
V-single: Vr4c2 = 1
w[1]-2-in-r5c2-open-nw-corner ==> Hr6c2 = 1, Vr5c3 = 1, Hr6c3 = 0, Vr6c3 = 0
w[1]-2-in-r6c3-open-nw-corner ==> Hr7c3 = 1, Vr6c4 = 1, Hr7c4 = 0, Vr7c4 = 0
w[1]-diagonal-3-2-in-{r6c1...r5c2}-non-closed-ne-corner ==> Hr7c1 = 1, Vr7c1 = 0
P-single: Pr8c2 = nw
H-single: Hr8c1 = 1
V-single: Vr7c2 = 1
no-vertical-line-r6{c1 c2} ==> Ir6c2 = in
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = out
vertical-line-r6{c3 c4} ==> Ir6c4 = out
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = out
no-vertical-line-r7{c3 c4} ==> Ir7c3 = out
vertical-line-r7{c2 c3} ==> Ir7c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir8c2 = in
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
horizontal-line-{r7 r8}c1 ==> Ir7c1 = out
horizontal-line-{r8 r9}c1 ==> Ir9c1 = out
vertical-line-r9{c1 c2} ==> Ir9c2 = in
no-vertical-line-r8{c2 c3} ==> Ir8c3 = in
same-colour-in-r9{c0 c1} ==> Vr9c1 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
w[1]-3-in-r9c1-hit-by-verti-line-at-nw ==> Hr10c1 = 1
w[1]-3-in-r9c1-closed-se-corner ==> Pr9c1 ≠ se, Pr9c1 ≠ o
P-single: Pr9c3 = se
H-single: Hr9c3 = 1
V-single: Vr9c3 = 1
w[1]-3-in-r9c4-hit-by-horiz-line-at-nw ==> Vr9c5 = 1, Hr10c4 = 1, Vr8c4 = 0
w[1]-3-in-r9c4-closed-se-corner ==> Pr9c4 ≠ se, Pr9c4 ≠ nw, Pr9c4 ≠ o
P-single: Pr9c2 = sw
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
vertical-line-r9{c2 c3} ==> Ir9c3 = out
no-horizontal-line-{r9 r10}c2 ==> Ir10c2 = in
no-vertical-line-r10{c1 c2} ==> Ir10c1 = in
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
whip[1]: Hr4c2{0 .} ==> Br4c2 ≠ n, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ swn
whip[1]: Pr4c2{ns .} ==> Br4c2 ≠ e, Br4c2 ≠ o, Br4c1 ≠ n, Br3c1 ≠ sw, Br4c1 ≠ w, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ sw, Br4c1 ≠ nes, Br4c2 ≠ s, Br4c2 ≠ se
B-single: Br3c1 = ew
whip[1]: Br4c2{esw .} ==> Pr5c2 ≠ o, Pr5c2 ≠ ew, Pr5c2 ≠ sw, Nr4c2 ≠ 0
whip[1]: Pr5c2{nw .} ==> Br5c1 ≠ ne, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c2 ≠ nw
whip[1]: Br4c1{esw .} ==> Pr5c1 ≠ o, Pr5c1 ≠ se, Nr4c1 ≠ 1
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ s, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ swn, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{esw .} ==> Nr5c1 ≠ 0
whip[1]: Hr5c2{0 .} ==> Pr5c2 ≠ ne, Pr5c3 ≠ nw, Pr5c3 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br5c2 ≠ ne, Br5c2 ≠ ns
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 3
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ swn, Br5c2 ≠ sw, Br5c3 ≠ ne, Br5c3 ≠ nes, Br4c3 ≠ o, Br4c3 ≠ e, Br5c3 ≠ o, Br5c3 ≠ s
whip[1]: Br5c3{wne .} ==> Pr6c3 ≠ ew, Pr6c3 ≠ sw, Pr6c4 ≠ nw, Nr5c3 ≠ 0
whip[1]: Pr6c4{ew .} ==> Br5c4 ≠ sw, Br6c3 ≠ sw, Br6c4 ≠ se, Br5c4 ≠ ne, Br6c3 ≠ ne, Br6c4 ≠ o, Br6c4 ≠ e, Br6c4 ≠ s
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Pr6c3{nw .} ==> Br6c2 ≠ ne, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ nw
whip[1]: Br4c3{wne .} ==> Pr4c4 ≠ ns, Nr4c3 ≠ 0
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ ew
B-single: Br3c4 = ns
H-single: Hr3c4 = 1
H-single: Hr4c4 = 1
V-single: Vr3c4 = 0
V-single: Vr3c5 = 0
N-single: Nr3c4 = 2
P-single: Pr4c3 = se
H-single: Hr4c3 = 1
V-single: Vr4c3 = 1
P-single: Pr3c4 = ew
P-single: Pr3c5 = ew
P-single: Pr4c4 = ew
V-single: Vr4c4 = 0
P-single: Pr4c5 = sw
H-single: Hr4c5 = 0
V-single: Vr4c5 = 1

LOOP[38]: Vr3c7-Vr2c7-Hr2c7-Vr2c8-Hr3c8-Vr2c9-Hr2c9-Vr2c10-Hr3c10-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Vr1c3-Hr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Vr3c2-Hr3c2-Hr3c3-Hr3c4-Hr3c5-Vr3c6- ==> Hr4c6 = 0
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
same-colour-in-{r4 r5}c3 ==> Hr5c3 = 0
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
same-colour-in-{r4 r5}c6 ==> Hr5c6 = 0
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
whip[1]: Hr3c4{1 .} ==> Br2c4 ≠ ne
B-single: Br2c4 = ns
N-single: Nr2c4 = 2
whip[1]: Hr4c4{1 .} ==> Br4c4 ≠ sw
B-single: Br4c4 = ne
H-single: Hr5c4 = 0
P-single: Pr5c5 = ns
H-single: Hr5c5 = 0
V-single: Vr5c5 = 1
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = out
vertical-line-r5{c4 c5} ==> Ir5c4 = in
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
no-vertical-line-r6{c4 c5} ==> Ir6c5 = out
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1

LOOP[74]: Vr6c6-Vr5c6-Vr4c6-Vr3c6-Hr3c5-Hr3c4-Hr3c3-Hr3c2-Vr3c2-Vr4c2-Hr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Hr3c10-Vr2c10-Hr2c9-Vr2c9-Hr3c8-Vr2c8-Hr2c7-Vr2c7-Vr3c7-Vr4c7-Hr5c7-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Vr4c10-Hr4c10-Vr4c11-Vr5c11-Hr6c10-Hr6c9-Vr6c9-Hr7c9-Hr7c10-Vr7c11-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Hr11c9-Vr10c9-Hr10c9-Vr9c10-Vr8c10-Hr8c9-Vr8c9-Hr9c8-Vr8c8-Vr7c8-Vr6c8-Hr6c7-Vr6c7- ==> Hr7c6 = 0
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1

LOOP[76]: Hr8c6-Vr7c7-Vr6c7-Hr6c7-Vr6c8-Vr7c8-Vr8c8-Hr9c8-Vr8c9-Hr8c9-Vr8c10-Vr9c10-Hr10c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Vr8c11-Vr7c11-Hr7c10-Hr7c9-Vr6c9-Hr6c9-Hr6c10-Vr5c11-Vr4c11-Hr4c10-Vr4c10-Hr5c9-Vr4c9-Hr4c8-Vr4c8-Hr5c7-Vr4c7-Vr3c7-Vr2c7-Hr2c7-Vr2c8-Hr3c8-Vr2c9-Hr2c9-Vr2c10-Hr3c10-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Vr1c3-Hr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Vr3c2-Hr3c2-Hr3c3-Hr3c4-Hr3c5-Vr3c6-Vr4c6-Vr5c6-Vr6c6- ==> Vr7c6 = 0
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
different-colours-in-r7{c4 c5} ==> Hr7c5 = 1
no-vertical-line-r8{c4 c5} ==> Ir8c5 = in
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
whip[1]: Hr5c4{0 .} ==> Br5c4 ≠ ns
whip[1]: Br5c4{ew .} ==> Pr6c5 ≠ ew, Pr6c5 ≠ sw
whip[1]: Pr6c5{nw .} ==> Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nes, Br6c4 ≠ ne, Br6c4 ≠ wne, Br6c4 ≠ nes, Br5c5 ≠ n
whip[1]: Br5c5{esw .} ==> Pr5c6 ≠ ew, Pr5c6 ≠ sw
whip[1]: Pr5c6{ns .} ==> Br4c5 ≠ ns, Br4c5 ≠ sw, Br4c6 ≠ ns, Br4c6 ≠ n
whip[1]: Br4c6{esw .} ==> Pr4c6 ≠ ew, Pr4c7 ≠ nw
P-single: Pr4c6 = ns
whip[1]: Pr4c6{ns .} ==> Br3c6 ≠ e, Br3c5 ≠ sw, Br3c6 ≠ se, Br3c6 ≠ esw, Br4c5 ≠ ne
B-single: Br4c5 = ew
B-single: Br3c6 = ew
N-single: Nr3c6 = 2
B-single: Br3c5 = ne
whip[1]: Pr4c7{ns .} ==> Br4c7 ≠ se, Br4c7 ≠ e
whip[1]: Hr6c4{1 .} ==> Pr6c4 ≠ ns, Pr6c5 ≠ ne, Pr6c5 ≠ ns, Br5c4 ≠ ew, Br6c4 ≠ w, Br6c4 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ esw
P-single: Pr5c4 = o
P-single: Pr6c5 = nw
B-single: Br5c4 = se
whip[1]: Pr5c4{o .} ==> Br4c3 ≠ s, Br4c3 ≠ wne, Br5c3 ≠ wne
B-single: Br4c3 = nw
N-single: Nr4c3 = 2
P-single: Pr5c3 = ns
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ w
B-single: Br4c2 = ew
N-single: Nr4c2 = 2
whip[1]: Br5c3{sw .} ==> Nr5c3 ≠ 3
whip[1]: Pr6c5{nw .} ==> Br6c5 ≠ n, Br5c5 ≠ sw, Br5c5 ≠ esw, Br6c5 ≠ w, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ nes
whip[1]: Br6c5{se .} ==> Pr6c6 ≠ nw, Pr6c6 ≠ sw, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Nr6c5 ≠ 3
whip[1]: Br5c5{ew .} ==> Nr5c5 ≠ 3
whip[1]: Vr6c6{1 .} ==> Br6c5 ≠ o, Pr6c6 ≠ o, Pr7c6 ≠ o, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c6 ≠ sw, Br6c5 ≠ s, Br6c6 ≠ e, Br6c6 ≠ se
P-single: Pr6c6 = ns
w[1]-1-in-r5c6-asymmetric-sw-corner ==> Pr5c7 ≠ ew, Pr5c7 ≠ nw
whip[1]: Pr6c6{ns .} ==> Br5c6 ≠ n, Br5c5 ≠ w
B-single: Br5c5 = ew
N-single: Nr5c5 = 2
P-single: Pr5c6 = ns
B-single: Br5c6 = w
whip[1]: Pr5c6{ns .} ==> Br4c6 ≠ sw, Br4c6 ≠ esw
whip[1]: Br4c6{ew .} ==> Nr4c6 ≠ 3
whip[1]: Pr5c7{ne .} ==> Br4c7 ≠ ns, Br4c7 ≠ ew
whip[1]: Br4c7{esw .} ==> Nr4c7 ≠ 2
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 1
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 0
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ ne, Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c6 ≠ nw
whip[1]: Br7c6{esw .} ==> Pr8c6 ≠ ns
whip[1]: Pr8c6{sw .} ==> Br7c5 ≠ se, Br7c5 ≠ esw
whip[1]: Hr7c6{0 .} ==> Pr7c6 ≠ ne, Pr7c7 ≠ nw, Br6c6 ≠ esw, Br7c6 ≠ n
P-single: Pr7c7 = ns
B-single: Br6c6 = ew
N-single: Nr6c6 = 2
whip[1]: Pr7c7{ns .} ==> Br7c7 ≠ e
B-single: Br7c7 = ew
N-single: Nr7c7 = 2
P-single: Pr8c7 = nw
whip[1]: Pr8c7{nw .} ==> Br8c6 ≠ sw
whip[1]: Br8c6{nw .} ==> Pr8c6 ≠ sw
whip[1]: Pr8c6{ew .} ==> Br8c5 ≠ wne, Br8c5 ≠ nes, Br8c5 ≠ ne
whip[1]: Pr9c6{ew .} ==> Br9c5 ≠ sw, Br9c5 ≠ wne, Br9c5 ≠ nes, Br9c5 ≠ o, Br9c5 ≠ s, Br9c5 ≠ w, Br9c5 ≠ ne
whip[1]: Br9c5{swn .} ==> Nr9c5 ≠ 0
whip[1]: Br7c6{esw .} ==> Nr7c6 ≠ 1
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ w, Br7c5 ≠ sw, Br7c5 ≠ o, Br7c5 ≠ s
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 0
whip[1]: Vr7c6{0 .} ==> Pr7c6 ≠ ns, Pr8c6 ≠ ne, Br7c5 ≠ e, Br7c5 ≠ ew, Br7c6 ≠ esw
P-single: Pr7c6 = nw
B-single: Br7c6 = se
N-single: Nr7c6 = 2
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ e
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ sw, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c4 ≠ o, Br7c4 ≠ s, Br7c4 ≠ w, Br7c4 ≠ ne
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 0
whip[1]: Pr8c6{ew .} ==> Br8c5 ≠ sw, Br8c5 ≠ o, Br8c5 ≠ s, Br8c5 ≠ w
whip[1]: Br8c5{swn .} ==> Nr8c5 ≠ 0
whip[1]: Vr7c5{1 .} ==> Pr7c5 ≠ ew, Pr8c5 ≠ o, Pr8c5 ≠ se, Pr8c5 ≠ ew, Pr8c5 ≠ sw, Br7c4 ≠ n, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ swn, Br7c5 ≠ n, Br7c5 ≠ ns
P-single: Pr7c5 = se
whip[1]: Pr7c5{se .} ==> Br6c4 ≠ ns, Br6c4 ≠ swn
whip[1]: Br6c4{nw .} ==> Pr7c4 ≠ ne, Pr7c4 ≠ ew, Nr6c4 ≠ 3
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ sw, Br7c3 ≠ o, Br7c3 ≠ s, Br7c3 ≠ w
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 1
whip[1]: Pr8c5{nw .} ==> Br8c4 ≠ ne, Br8c4 ≠ wne, Br8c4 ≠ nes, Br8c5 ≠ nw, Br8c5 ≠ swn
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ ne, Pr8c6 ≠ ew, Br7c5 ≠ swn, Br8c5 ≠ n, Br8c5 ≠ ns
P-single: Pr9c7 = o
H-single: Hr9c6 = 0
V-single: Vr9c7 = 0
P-single: Pr8c6 = se
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
w[1]-1-in-r9c7-symmetric-nw-corner ==> Pr10c8 ≠ o
P-single: Pr10c8 = sw
H-single: Hr10c7 = 1
V-single: Vr10c8 = 1
vertical-line-r10{c7 c8} ==> Ir10c7 = in
no-vertical-line-r9{c6 c7} ==> Ir9c6 = out
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Pr9c7{o .} ==> Br8c6 ≠ ns, Br9c6 ≠ ne, Br9c6 ≠ wne, Br9c6 ≠ nes, Br9c7 ≠ w
B-single: Br9c7 = s
P-single: Pr10c7 = ew
H-single: Hr10c6 = 1
V-single: Vr10c7 = 0
B-single: Br8c6 = nw
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1

LOOP[6]: Hr11c6-Hr11c7-Vr10c8-Hr10c7-Hr10c6- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
horizontal-line-{r9 r10}c4 ==> Ir9c4 = out
vertical-line-r9{c4 c5} ==> Ir9c5 = in
different-colours-in-r9{c5 c6} ==> Hr9c6 = 1
same-colour-in-{r8 r9}c5 ==> Hr9c5 = 0
w[1]-3-in-r9c4-isolated-at-ne-corner ==> Hr9c4 = 1
w[1]-3-in-r9c4-closed-ne-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ne, Pr10c4 ≠ o

LOOP[6]: Vr9c3-Hr9c3-Hr9c4-Vr9c5-Hr10c4- ==> Hr10c3 = 0
no-horizontal-line-{r9 r10}c3 ==> Ir10c3 = out
same-colour-in-{r10 r11}c3 ==> Hr11c3 = 0
different-colours-in-r10{c3 c4} ==> Hr10c4 = 1
different-colours-in-r10{c2 c3} ==> Hr10c3 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1

LOOP[118]: Hr11c4-Vr10c4-Hr10c4-Vr9c5-Hr9c4-Hr9c3-Vr9c3-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Hr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c1-Vr6c1-Hr6c1-Hr6c2-Vr5c3-Vr4c3-Hr4c3-Hr4c4-Vr4c5-Vr5c5-Hr6c4-Vr6c4-Hr7c3-Vr7c3-Hr8c3-Hr8c4-Vr7c5-Hr7c5-Vr6c6-Vr5c6-Vr4c6-Vr3c6-Hr3c5-Hr3c4-Hr3c3-Hr3c2-Vr3c2-Vr4c2-Hr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Hr3c10-Vr2c10-Hr2c9-Vr2c9-Hr3c8-Vr2c8-Hr2c7-Vr2c7-Vr3c7-Vr4c7-Hr5c7-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Vr4c10-Hr4c10-Vr4c11-Vr5c11-Hr6c10-Hr6c9-Vr6c9-Hr7c9-Hr7c10-Vr7c11-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Hr11c9-Vr10c9-Hr10c9-Vr9c10-Vr8c10-Hr8c9-Vr8c9-Hr9c8-Vr8c8-Vr7c8-Vr6c8-Hr6c7-Vr6c7-Vr7c7-Hr8c6-Vr8c6-Vr9c6-Hr10c6-Hr10c7-Vr10c8-Hr11c7-Hr11c6- ==> Hr11c5 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXOXXXXXX
XXXXXXOXOX
XOOOOXOOOO
XOXXOXOXOX
OOXXOXXXXX
XXXOOXOXOO
OXOOXXOXXX
XXXXXOOXOX
OXOOXOOOOX
XXOXXXXOXX

.———.   .———.   .———.———.———.———.———.———.
|   | 3 | 3 | 3 |     1                 |
.   .———.   .———.   .   .———.   .———.   .
| 1       1       1   1 |   | 3 | 3 |   |
.   .———.———.———.———.   .   .———.   .———.
| 2 | 2   2       2 |   |             2
.   .   .———.———.   .   .   .———.   .———.
|   |   |     2 | 2 |   |   | 3 | 3 | 3 |
.———.   .   .   .   .   .———.   .———.   .
      2 |     2 |   | 1       0         |
.———.———.   .———.   .   .———.   .———.———.
| 3       2 |       |   | 3 |   |     2
.———.   .———.   .———.   .   .   .———.———.
    | 2 |       |       |   |     2   2 |
.———.   .———.———.   .———.   .   .———.   .
|     0             | 2   1 | 3 | 3 | 2 |
.———.   .———.———.   .   .   .———.   .   .
  3 | 2 |     3 |   |     1   1   2 | 2 |
.———.   .   .———.   .———.———.   .———.   .
|       |   |               |   |     2 |
.———.———.   .———.———.———.———.   .———.———.

init-time = 4m 22.29s, solve-time = 2m 18.81s, total-time = 6m 41.1s
nb-facts=<Fact-183038>
Quasi-Loop max length = 118
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
