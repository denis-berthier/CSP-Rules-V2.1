
(solve
7 7

. . 2 . 2 2 3 
2 3 3 . 1 2 1
. . 1 3 . . 3 
3 3 . . . . . 
2 1 2 . 1 2 3 
. . . . . . 2 
3 2 2 . . . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 . 2 2 3
2 3 3 . 1 2 1
. . 1 3 . . 3
3 3 . . . . .
2 1 2 . 1 2 3
. . . . . . 2
3 2 2 . . . .

start init-grid-structure 0.00632905960083008
start create-csp-variables
start create-labels 0.000694990158081055
start init-physical-csp-links 0.00507783889770508
start init-physical-non-csp-links 3.36919593811035
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.876457929611206
     start init-physical-BN-non-csp-links at local time 3.31594586372375
     start init-physical-BP-non-csp-links at local time 6.33289504051208
     end init-physical-BP-non-csp-links at local time 38.3739569187164
end init-physical-non-csp-links 41.7431948184967
start init-corner-B-c-values 41.7497589588165
start init-outer-B-candidates 41.7498219013214
start init-outer-I-candidates 41.7503998279572
start init-H-candidates 41.7507400512695
start init-V-candidates 41.7527568340302
start init-P-candidates 41.7545938491821
start init-inner-I-candidates 41.7574808597565
start init-inner-N-and-B-candidates 41.7586159706116
start solution 41.7640950679779
entering BRT
w[1]-3-in-sw-corner ==> Vr7c1 = 1, Hr8c1 = 1
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-diagonal-3s-in-{r2c3...r3c4} ==> Vr3c5 = 1, Vr2c3 = 1, Hr4c4 = 1, Hr2c3 = 1, Vr4c5 = 0, Vr1c3 = 0, Hr4c5 = 0, Hr2c2 = 0
w[1]-3-in-r2c2-hit-by-horiz-line-at-ne ==> Vr2c2 = 1, Hr3c2 = 1
w[1]-3-in-r2c3-hit-by-horiz-line-at-sw ==> Vr2c4 = 1
w[1]-diagonal-3-2-in-{r2c2...r1c3}-non-closed-ne-corner ==> Hr1c3 = 1
w[1]-adjacent-1-3-on-edge-in-{r2 r3}c7 ==> Vr3c8 = 1, Vr2c7 = 0, Hr2c7 = 0
w[1]-adjacent-1-3-on-edge-in-{r2 r1}c7 ==> Hr3c7 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r2 r1}c5-bkwd-diag-2s-3...r3c7 ==> Hr4c7 = 1
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r3c7-closed-se-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ o
w[1]-3-in-r3c4-closed-se-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
w[1]-3-in-r2c3-closed-ne-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
w[1]-3-in-r2c2-closed-se-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ ne, Pr2c7 ≠ o
adjacent-3s-in-r4{c1 c2} ==> Vr4c3 = 1, Vr4c2 = 1, Vr4c1 = 1, Vr5c2 = 0
entering level Loop with <Fact-49104>
entering level Col with <Fact-49184>
no-vertical-line-r4{c7 c8} ==> Ir4c7 = out
horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
vertical-line-r7{c0 c1} ==> Ir7c1 = in
vertical-line-r4{c0 c1} ==> Ir4c1 = in
vertical-line-r4{c1 c2} ==> Ir4c2 = out
vertical-line-r4{c2 c3} ==> Ir4c3 = in
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
vertical-line-r2{c1 c2} ==> Ir2c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
no-vertical-line-r3{c1 c2} ==> Ir3c2 = out
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
vertical-line-r2{c3 c4} ==> Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
w[0]-adjacent-3-in-r4c2-nolines-north ==> Hr5c2 = 1, Hr4c1 = 1, Vr5c3 = 0, Hr5c3 = 0, Hr5c1 = 0
w[1]-2-in-r5c1-open-ne-corner ==> Hr6c1 = 1, Vr5c1 = 1, Vr6c1 = 0
w[1]-2-in-r5c3-open-nw-corner ==> Hr6c3 = 1, Vr5c4 = 1, Hr6c4 = 0, Vr6c4 = 0
w[1]-3-in-r3c4-hit-by-horiz-line-at-sw ==> Hr3c4 = 1, Vr4c4 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r5 r4}c2 ==> Hr6c2 = 0
w[1]-3-in-r3c4-closed-ne-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
w[1]-3-in-r4c1-closed-nw-corner ==> Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ o
w[1]-3-in-r4c1-closed-ne-corner ==> Pr5c1 ≠ ne
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
P-single: Pr5c1 = ns
w[1]-1-in-r3c3-asymmetric-sw-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ ns
w[1]-1-in-r5c2-asymmetric-nw-corner ==> Pr6c3 ≠ ew, Pr6c3 ≠ ns
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
w[1]-3-in-r7c1-hit-by-verti-line-at-ne ==> Hr7c2 = 0
no-horizontal-line-{r6 r7}c2 ==> Ir7c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
w[1]-3-in-r7c1-hit-by-horiz-line-at-se ==> Hr7c1 = 1
w[1]-2-in-r7c2-open-nw-corner ==> Vr7c3 = 1, Hr8c3 = 0
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ nw
P-single: Pr8c2 = ew
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
same-colour-in-{r6 r7}c3 ==> Hr7c3 = 0
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
w[1]-diagonal-3-2-in-{r3c7...r2c6}-non-closed-nw-corner ==> Hr2c6 = 1
w[1]-diagonal-3-2-in-{r1c7...r2c6}-non-closed-sw-corner ==> Hr3c6 = 1
horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
horizontal-line-{r1 r2}c6 ==> Ir1c6 = out
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ o
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
w[1]-3-in-r3c7-closed-sw-corner ==> Pr3c8 ≠ sw, Pr3c8 ≠ o
no-vertical-line-r4{c6 c7} ==> Ir4c6 = out
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
w[1]-2-in-r2c1-open-sw-corner ==> Hr2c1 = 1, Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
Starting_init_links_with_<Fact-50320>
1066 candidates, 3298 csp-links and 12615 links. Density = 2.22%
starting non trivial part of solution
Entering_level_W1_with_<Fact-82151>
whip[1]: Vr2c8{1 .} ==> Br2c7 ≠ w, Br2c8 ≠ o, Br2c7 ≠ n, Br2c7 ≠ s
B-single: Br2c7 = e
P-single: Pr1c6 = o
H-single: Hr1c5 = 0
V-single: Vr1c6 = 0
w[1]-2-in-r1c5-open-ne-corner ==> Hr2c5 = 1, Vr1c5 = 1
P-single: Pr2c5 = ne
P-single: Pr2c8 = ns
P-single: Pr3c8 = ns
P-single: Pr2c7 = nw
P-single: Pr3c7 = sw
B-single: Br2c8 = w
w[1]-1-in-r2c5-asymmetric-nw-corner ==> Pr3c6 ≠ ew, Pr3c6 ≠ ns
w[1]-1-in-r2c5-asymmetric-ne-corner ==> Pr3c5 ≠ ew, Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ ns

LOOP[46]: Vr4c6-Vr3c6-Hr3c6-Vr3c7-Hr4c7-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Hr2c5-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c2-Vr2c3-Hr2c3-Vr2c4-Hr3c4-Vr3c5-Hr4c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr6c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Vr6c3-Hr6c3-Vr5c4-Hr5c4- ==> Hr5c5 = 0
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = in
vertical-line-r1{c4 c5} ==> Ir1c5 = out
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
whip[1]: Pr1c6{o .} ==> Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ ew, Br1c6 ≠ sw
B-single: Br1c6 = se
P-single: Pr1c7 = se
P-single: Pr2c6 = ew
B-single: Br1c5 = sw
P-single: Pr1c5 = sw
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ nes
B-single: Br1c7 = wne
P-single: Pr1c8 = sw
whip[1]: Pr2c6{ew .} ==> Br2c5 ≠ w, Br2c5 ≠ s, Br2c5 ≠ e, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ sw
B-single: Br2c5 = n
P-single: Pr3c6 = se
whip[1]: Pr3c6{se .} ==> Br3c6 ≠ w, Br3c6 ≠ s, Br3c6 ≠ e, Br3c6 ≠ n, Br3c6 ≠ o, Br3c5 ≠ w, Br3c5 ≠ s, Br3c5 ≠ n, Br3c5 ≠ o, Br2c6 ≠ ne, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ sw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ nes
B-single: Br2c6 = ns
whip[1]: Br3c6{wne .} ==> Pr4c6 ≠ o, Pr4c6 ≠ se, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Pr4c7 ≠ nw, Nr3c6 ≠ 0, Nr3c6 ≠ 1
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ ne, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Br3c5{esw .} ==> Nr3c5 ≠ 0
whip[1]: Pr3c5{sw .} ==> Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ esw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br3c4 ≠ esw, Br3c4 ≠ swn, Br2c4 ≠ e, Br2c4 ≠ ne
whip[1]: Br3c4{nes .} ==> Pr3c4 ≠ sw, Pr3c5 ≠ o, Pr4c5 ≠ o, Pr4c5 ≠ se, Pr4c5 ≠ ew, Pr4c5 ≠ sw
P-single: Pr3c5 = sw
P-single: Pr3c4 = ne
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ e, Br2c4 ≠ w, Br2c4 ≠ n, Br2c4 ≠ o, Br2c4 ≠ nw, Br3c5 ≠ se
whip[1]: Br3c5{esw .} ==> Nr3c5 ≠ 1
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c4{ne .} ==> Br3c3 ≠ n, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ nes, Br2c4 ≠ s, Br2c4 ≠ ns, Br3c3 ≠ e, Br3c4 ≠ wne
B-single: Br3c4 = nes
P-single: Pr4c5 = nw
B-single: Br2c3 = wne
P-single: Pr2c3 = se
P-single: Pr2c4 = sw
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ n, Br4c4 ≠ s, Br4c4 ≠ e, Br4c4 ≠ o, Br3c5 ≠ esw, Br4c4 ≠ w, Br4c4 ≠ ne, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn
B-single: Br3c5 = ew
N-single: Nr3c5 = 2
whip[1]: Pr4c6{ns .} ==> Br4c6 ≠ s, Br4c6 ≠ se, Br4c6 ≠ o, Br4c6 ≠ e
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br4c5{se .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Nr4c5 ≠ 3
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 0
whip[1]: Pr2c3{se .} ==> Br1c2 ≠ s, Br1c2 ≠ e, Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c3 ≠ ne, Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
B-single: Br2c2 = esw
P-single: Pr3c2 = ne
P-single: Pr3c3 = nw
w[1]-1-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ se
P-single: Pr4c4 = ew
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ o, Br3c1 ≠ n, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ sw, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne
whip[1]: Br3c2{nes .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Nr3c2 ≠ 0
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br3c1 ≠ o, Br3c1 ≠ w
whip[1]: Br3c1{sw .} ==> Pr3c1 ≠ se, Pr4c1 ≠ o, Pr4c1 ≠ ns, Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Br4c2{nes .} ==> Pr4c3 ≠ nw, Pr4c3 ≠ ew, Pr5c2 ≠ ns, Pr5c3 ≠ o, Pr5c3 ≠ ne, Pr5c3 ≠ ns, Pr5c3 ≠ ew, Pr5c3 ≠ sw
P-single: Pr6c4 = nw
P-single: Pr5c3 = nw
w[1]-1-in-r5c2-asymmetric-ne-corner ==> Pr6c2 ≠ ew, Pr6c2 ≠ ns
whip[1]: Pr6c4{nw .} ==> Br6c4 ≠ n, Br6c3 ≠ s, Br6c3 ≠ e, Br6c3 ≠ o, Br5c4 ≠ s, Br5c4 ≠ e, Br5c4 ≠ n, Br5c4 ≠ o, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ nes, Br6c3 ≠ w, Br6c3 ≠ ne, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c4 ≠ w, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn, Br6c4 ≠ wne, Br6c4 ≠ nes
B-single: Br5c3 = se
P-single: Pr6c3 = se
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ n, Br6c2 ≠ w, Br6c2 ≠ s, Br6c2 ≠ n, Br6c2 ≠ o, Br5c2 ≠ s, Br5c2 ≠ e, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ sw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ ns
whip[1]: Br6c3{swn .} ==> Pr7c3 ≠ ew, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Nr6c3 ≠ 0, Nr6c3 ≠ 1
P-single: Pr7c3 = ns
whip[1]: Pr7c3{ns .} ==> Br6c2 ≠ se, Br6c2 ≠ esw, Br6c3 ≠ swn, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ sw, Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ se
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr7c4 = se
H-single: Hr7c4 = 1
V-single: Vr7c4 = 1
vertical-line-r7{c3 c4} ==> Ir7c4 = in
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
whip[1]: Pr7c4{se .} ==> Br7c4 ≠ w, Br7c4 ≠ s, Br7c4 ≠ e, Br7c4 ≠ n, Br7c4 ≠ o, Br6c4 ≠ e, Br6c4 ≠ o, Br7c3 ≠ sw, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ nes
B-single: Br7c3 = ew
P-single: Pr7c2 = nw
P-single: Pr8c3 = nw
P-single: Pr8c4 = ne
whip[1]: Pr7c2{nw .} ==> Br6c2 ≠ e, Br6c1 ≠ s, Br6c1 ≠ e, Br6c1 ≠ n, Br6c1 ≠ o, Br6c1 ≠ w, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ swn, Br6c1 ≠ wne, Br7c1 ≠ esw, Br7c2 ≠ ew
B-single: Br7c2 = se
B-single: Br7c1 = swn
P-single: Pr8c1 = ne
P-single: Pr7c1 = se
B-single: Br6c2 = ew
N-single: Nr6c2 = 2
P-single: Pr6c2 = sw
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Pr7c1{se .} ==> Br6c1 ≠ esw
whip[1]: Br6c1{nes .} ==> Pr6c1 ≠ ns, Pr6c1 ≠ se, Nr6c1 ≠ 0, Nr6c1 ≠ 1
P-single: Pr5c2 = ne
P-single: Pr6c1 = ne
whip[1]: Pr5c2{ne .} ==> Br4c1 ≠ swn, Br4c1 ≠ nes, Br4c2 ≠ nes, Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c2 ≠ w
B-single: Br5c2 = n
B-single: Br5c1 = sw
B-single: Br4c2 = esw
P-single: Pr4c2 = sw
B-single: Br4c1 = wne
P-single: Pr4c1 = se
whip[1]: Pr4c2{sw .} ==> Br3c2 ≠ ns, Br3c2 ≠ nes
whip[1]: Br3c2{ne .} ==> Nr3c2 ≠ 3
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ sw
B-single: Br3c1 = s
N-single: Nr3c1 = 1
P-single: Pr2c2 = sw
P-single: Pr3c1 = o
whip[1]: Pr2c2{sw .} ==> Br1c2 ≠ w, Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ wne, Br1c2 ≠ nw, Br2c1 ≠ ew
B-single: Br2c1 = ne
P-single: Pr2c1 = ne
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ s
B-single: Br1c1 = swn
N-single: Nr1c1 = 3
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ o
B-single: Br1c2 = n
N-single: Nr1c2 = 1
P-single: Pr1c3 = ew
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ se
B-single: Br1c3 = ns
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ w, Br1c4 ≠ s, Br1c4 ≠ e, Br1c4 ≠ o, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ wne
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ se
B-single: Br6c1 = nes
N-single: Nr6c1 = 3
whip[1]: Pr8c3{nw .} ==> Br8c3 ≠ n, Br8c2 ≠ o
B-single: Br8c2 = n
B-single: Br8c3 = o
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ o, Br7c4 ≠ nw, Br7c4 ≠ wne
B-single: Br7c4 = swn
V-single: Vr7c5 = 0
N-single: Nr7c4 = 3
P-single: Pr8c5 = ew
H-single: Hr8c5 = 1
B-single: Br8c4 = n
horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
whip[1]: Vr7c5{0 .} ==> Br7c5 ≠ w, Br7c5 ≠ nw, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne
whip[1]: Pr8c5{ew .} ==> Br7c5 ≠ ne, Br7c5 ≠ e, Br7c5 ≠ n, Br7c5 ≠ o, Br8c5 ≠ o
B-single: Br8c5 = n
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ o, Br7c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ ne
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Pr7c5{ew .} ==> Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ o, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ ne
whip[1]: Br6c5{nes .} ==> Nr6c5 ≠ 0
whip[1]: Br6c4{se .} ==> Pr6c5 ≠ nw, Pr6c5 ≠ ew, Pr6c5 ≠ sw, Nr6c4 ≠ 0, Nr6c4 ≠ 3
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ nes, Br4c4 ≠ swn, Br4c3 ≠ s, Br4c4 ≠ n
whip[1]: Br4c4{nw .} ==> Nr4c4 ≠ 1, Nr4c4 ≠ 3
N-single: Nr4c4 = 2
w[1]-1-in-r5c5-asymmetric-nw-corner ==> Pr6c6 ≠ sw, Pr6c6 ≠ ew, Pr6c6 ≠ ns, Pr6c6 ≠ ne
whip[1]: Pr6c6{se .} ==> Br5c6 ≠ sw, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ nes, Br5c5 ≠ e, Br5c5 ≠ s, Br6c6 ≠ n, Br6c6 ≠ w
whip[1]: Br5c5{w .} ==> Hr6c5 ≠ 1, Vr5c6 ≠ 1, Pr5c6 ≠ ns, Pr6c5 ≠ ne, Pr6c6 ≠ nw, Pr5c6 ≠ se, Pr5c6 ≠ sw, Pr6c5 ≠ se
V-single: Vr5c6 = 0
H-single: Hr6c5 = 0
w[3]-adjacent-3-2-in-r5{c7 c6}-noline-west ==> Vr5c8 = 1, Vr6c7 = 0
vertical-line-r5{c7 c8} ==> Ir5c7 = in
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = in
no-vertical-line-r5{c5 c6} ==> Ir5c6 = in
same-colour-in-r5{c6 c7} ==> Vr5c7 = 0
P-single: Pr6c6 = se
H-single: Hr6c6 = 1
V-single: Vr6c6 = 1
w[1]-3-in-r5c7-hit-by-horiz-line-at-sw ==> Hr5c7 = 1
w[1]-3-in-r5c7-closed-ne-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ne
vertical-line-r6{c5 c6} ==> Ir6c6 = out
no-vertical-line-r6{c6 c7} ==> Ir6c7 = out
same-colour-in-r6{c7 c8} ==> Vr6c8 = 0
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1
w[1]-3-in-r5c7-closed-se-corner ==> Pr5c7 ≠ se, Pr5c7 ≠ nw
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
same-colour-in-{r6 r7}c5 ==> Hr7c5 = 0
different-colours-in-r6{c4 c5} ==> Hr6c5 = 1

LOOP[58]: Hr8c5-Hr8c4-Vr7c4-Hr7c4-Vr6c5-Vr5c5-Hr5c4-Vr5c4-Hr6c3-Vr6c3-Vr7c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Vr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr4c2-Hr5c2-Vr4c3-Hr4c3-Hr4c4-Vr3c5-Hr3c4-Vr2c4-Hr2c3-Vr2c3-Hr3c2-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c5-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Hr4c7-Vr3c7-Hr3c6-Vr3c6-Vr4c6-Hr5c6-Hr5c7-Vr5c8-Hr6c7-Hr6c6-Vr6c6- ==> Vr7c6 = 0
no-vertical-line-r7{c5 c6} ==> Ir7c6 = in
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1

LOOP[60]: Hr7c6-Vr6c6-Hr6c6-Hr6c7-Vr5c8-Hr5c7-Hr5c6-Vr4c6-Vr3c6-Hr3c6-Vr3c7-Hr4c7-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Hr2c5-Vr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c2-Vr2c3-Hr2c3-Vr2c4-Hr3c4-Vr3c5-Hr4c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr6c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Vr7c3-Vr6c3-Hr6c3-Vr5c4-Hr5c4-Vr5c5-Vr6c5-Hr7c4-Vr7c4-Hr8c4-Hr8c5-Hr8c6- ==> Vr7c7 = 0
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1

LOOP[62]: Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Vr7c4-Hr7c4-Vr6c5-Vr5c5-Hr5c4-Vr5c4-Hr6c3-Vr6c3-Vr7c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Vr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr4c2-Hr5c2-Vr4c3-Hr4c3-Hr4c4-Vr3c5-Hr3c4-Vr2c4-Hr2c3-Vr2c3-Hr3c2-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Vr1c5-Hr2c5-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Hr4c7-Vr3c7-Hr3c6-Vr3c6-Vr4c6-Hr5c6-Hr5c7-Vr5c8-Hr6c7-Hr6c6-Vr6c6-Hr7c6- ==> Hr7c7 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXOOX
OXOXXXX
OOOOXOX
XOXXXOO
XXXOXXX
OXOOXOO
XXOXXXX

.———.———.———.———.   .   .———.
|         2     | 2   2 | 3 |
.———.   .———.   .———.———.   .
  2 | 3 | 3 |     1   2   1 |
.   .———.   .———.   .———.   .
          1   3 |   |   | 3 |
.———.   .———.———.   .   .———.
| 3 | 3 |           |
.   .———.   .———.   .———.———.
| 2   1   2 |   | 1   2   3 |
.———.   .———.   .   .———.———.
    |   |       |   |     2
.———.   .   .———.   .———.———.
| 3   2 | 2 |               |
.———.———.   .———.———.———.———.

init-time = 41.76s, solve-time = 23.37s, total-time = 1m 5.13s
nb-facts=<Fact-85399>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
