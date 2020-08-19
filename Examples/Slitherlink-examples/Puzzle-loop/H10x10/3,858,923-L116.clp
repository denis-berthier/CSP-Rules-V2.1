
(solve
10 10
3 . 2 2 . 3 2 . . 3 
2 . . 2 2 3 2 2 . . 
. 2 1 3 . . . 0 . 1 
3 . 1 . . . . 2 . 3
2 . . 3 2 2 2 . . 2
2 . 2 . 1 . . . 2 2 
3 . . . 3 . 2 . . 2
. 2 . . . . . . 2 . 
. . . 3 3 3 . 3 . 1
. 3 . . . 2 . 2 . 3
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . 2 2 . 3 2 . . 3
2 . . 2 2 3 2 2 . .
. 2 1 3 . . . 0 . 1
3 . 1 . . . . 2 . 3
2 . . 3 2 2 2 . . 2
2 . 2 . 1 . . . 2 2
3 . . . 3 . 2 . . 2
. 2 . . . . . . 2 .
. . . 3 3 3 . 3 . 1
. 3 . . . 2 . 2 . 3

start init-grid-structure 0.0327010154724121
start create-csp-variables
start create-labels 0.00174903869628906
start init-physical-csp-links 0.0126228332519531
start init-physical-non-csp-links 10.9535748958588
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.38862204551697
     start init-physical-BN-non-csp-links at local time 11.9640130996704
     start init-physical-BP-non-csp-links at local time 21.7029240131378
     end init-physical-BP-non-csp-links at local time 252.844174146652
end init-physical-non-csp-links 263.797793865204
start init-corner-B-c-values 263.830860853195
start init-outer-B-candidates 263.830919027328
start init-outer-I-candidates 263.832015991211
start init-H-candidates 263.832471847534
start init-V-candidates 263.836295843124
start init-P-candidates 263.840116024017
start init-inner-I-candidates 263.846967935562
start init-inner-N-and-B-candidates 263.849411010742
start solution 263.86240696907
entering BRT
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[1]-3-in-se-corner ==> Vr10c11 = 1, Hr11c10 = 1
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3-2-3-in-{r1c6...r3c4} ==> Vr1c7 = 1, Vr3c4 = 1, Hr4c4 = 1, Hr1c6 = 1, Vr4c4 = 0, Hr4c3 = 0, Hr1c7 = 0
w[1]-diagonal-3-2-in-{r2c6...r1c7}-non-closed-ne-corner ==> Vr1c8 = 1, Vr2c6 = 1, Hr3c6 = 1, Vr3c6 = 0, Hr3c5 = 0
w[1]-diagonal-3-2-in-{r1c6...r2c5}-non-closed-sw-corner ==> Vr2c5 = 1
w[1]-3+diagonal-2-0-in-{r2c6+r2c7...r3c8} ==> Vr3c7 = 0
w[1]-3-in-r2c6-hit-by-verti-line-at-ne ==> Hr2c7 = 0
w[1]-3-in-r1c6-hit-by-verti-line-at-sw ==> Hr2c5 = 0
w[1]-adjacent-1-3-on-edge-in-{r9 r10}c10 ==> Vr9c10 = 0, Hr9c10 = 0
w[1]-adjacent-1-3-on-edge-in-{r3 r4}c10 ==> Vr4c11 = 1, Vr3c10 = 0, Hr3c10 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c3 c4} ==> Vr3c3 = 0, Hr3c3 = 0
w[1]-diagonal-3-2-in-{r4c1...r3c2}-non-closed-ne-corner ==> Vr4c1 = 1, Hr5c1 = 1, Hr3c2 = 1, Vr5c1 = 0
w[1]-3-in-r10c10-closed-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-3-in-r4c1-closed-sw-corner ==> Pr4c2 ≠ ne
w[1]-3-in-r1c10-closed-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r1c6-symmetric-se-corner ==> Hr2c6 = 1
w[1]-2-in-r2c7-open-nw-corner ==> Hr3c7 = 1, Vr2c8 = 1
w[1]-3-in-r1c6-closed-se-corner ==> Pr1c6 ≠ se, Pr1c6 ≠ o
w[1]-3-in-r2c6-closed-nw-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ nw
adjacent-3s-in-r9{c5 c6} ==> Vr9c7 = 1, Vr9c6 = 1, Vr9c5 = 1, Vr10c6 = 0, Vr8c6 = 0
adjacent-3s-in-r9{c4 c5} ==> Vr9c4 = 1, Vr10c5 = 0, Vr8c5 = 0
P-single: Pr3c8 = nw
P-single: Pr2c7 = nw
P-single: Pr3c9 = ne
H-single: Hr3c9 = 1
V-single: Vr2c9 = 1
entering level Loop with <Fact-93197>
entering level Col with <Fact-93287>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
vertical-line-r4{c10 c11} ==> Ir4c10 = in
vertical-line-r1{c10 c11} ==> Ir1c10 = in
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = out
no-vertical-line-r2{c6 c7} ==> Ir2c6 = out
vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
no-vertical-line-r1{c5 c6} ==> Ir1c6 = in
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
no-vertical-line-r3{c5 c6} ==> Ir3c6 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = in
no-vertical-line-r3{c7 c8} ==> Ir3c8 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
no-horizontal-line-{r2 r3}c10 ==> Ir2c10 = in
horizontal-line-{r2 r3}c9 ==> Ir2c9 = out
vertical-line-r2{c8 c9} ==> Ir2c8 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
vertical-line-r2{c4 c5} ==> Ir2c4 = out
vertical-line-r1{c7 c8} ==> Ir1c8 = in
same-colour-in-{r1 r2}c8 ==> Hr2c8 = 0
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
different-colours-in-r2{c9 c10} ==> Hr2c10 = 1
w[1]-3-in-r1c10-hit-by-verti-line-at-sw ==> Hr2c9 = 0
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = out
different-colours-in-r1{c9 c10} ==> Hr1c10 = 1
w[1]-3-in-r1c10-closed-nw-corner ==> Pr2c11 ≠ nw, Pr2c11 ≠ o
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0
same-colour-in-{r3 r4}c10 ==> Hr4c10 = 0
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
w[1]-3-in-r4c10-hit-by-verti-line-at-ne ==> Vr4c10 = 1, Hr5c10 = 1
w[1]-3-in-r4c10-closed-se-corner ==> Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ o
w[1]-3-in-r4c10-closed-sw-corner ==> Pr4c11 ≠ sw, Pr4c11 ≠ o
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
no-vertical-line-r5{c9 c10} ==> Ir5c9 = out
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = out
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
Starting_init_links_with_<Fact-93773>
2443 candidates, 7984 csp-links and 32816 links. Density = 1.1%
starting non trivial part of solution
Entering_level_W1_with_<Fact-175378>
whip[1]: Hr1c5{1 .} ==> Br1c5 ≠ esw, Br0c5 ≠ o, Br1c5 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ sw, Br1c5 ≠ e, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw
B-single: Br0c5 = s
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ sw, Br2c3 ≠ sw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br1c4 ≠ ne, Br2c3 ≠ o, Br2c3 ≠ s, Br2c3 ≠ w, Br2c3 ≠ ne
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 0
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Hr4c9{1 .} ==> Br4c9 ≠ esw, Br3c9 ≠ o, Br4c9 ≠ o, Pr4c9 ≠ o, Pr4c10 ≠ ne, Pr4c10 ≠ ns, Br3c9 ≠ n, Br3c9 ≠ e, Br3c9 ≠ w, Br3c9 ≠ ne, Br3c9 ≠ nw, Br3c9 ≠ ew, Br3c9 ≠ wne, Br4c9 ≠ e, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ sw
P-single: Pr4c9 = se
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ n, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ sw, Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ nes
whip[1]: Br4c9{wne .} ==> Pr5c9 ≠ ew, Pr5c9 ≠ sw, Nr4c9 ≠ 0, Nr4c9 ≠ 1
whip[1]: Pr5c9{nw .} ==> Br5c8 ≠ ne, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c9 ≠ nw, Br5c9 ≠ swn, Br5c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Pr6c7{ew .} ==> Br5c7 ≠ sw, Br6c6 ≠ sw, Br6c6 ≠ wne, Br6c6 ≠ nes, Br5c7 ≠ ne, Br6c6 ≠ o, Br6c6 ≠ s, Br6c6 ≠ w, Br6c6 ≠ ne
whip[1]: Br6c6{swn .} ==> Nr6c6 ≠ 0
whip[1]: Pr4c10{sw .} ==> Br3c9 ≠ se, Br3c9 ≠ nes, Br4c10 ≠ swn, Br4c10 ≠ wne, Br3c10 ≠ w
whip[1]: Br3c10{s .} ==> Pr3c10 ≠ ns, Pr3c11 ≠ sw, Pr4c11 ≠ nw, Pr3c10 ≠ se, Pr3c10 ≠ sw
P-single: Pr4c11 = ns
w[1]-1-in-r3c10-asymmetric-se-corner ==> Pr3c10 ≠ ew, Pr3c10 ≠ ne
whip[1]: Pr4c11{ns .} ==> Br3c10 ≠ n, Br3c10 ≠ s, Br4c10 ≠ nes
B-single: Br4c10 = esw
P-single: Pr5c11 = nw
P-single: Pr4c10 = sw
P-single: Pr5c10 = ne
B-single: Br3c10 = e
P-single: Pr3c11 = ns
whip[1]: Pr5c11{nw .} ==> Br5c10 ≠ ne, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ sw
whip[1]: Br5c10{nw .} ==> Pr6c11 ≠ ns
P-single: Pr6c11 = sw
H-single: Hr6c10 = 1
V-single: Vr6c11 = 1
vertical-line-r6{c10 c11} ==> Ir6c10 = in
whip[1]: Pr6c11{sw .} ==> Br6c10 ≠ ns, Br5c10 ≠ nw, Br6c10 ≠ nw, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ sw
B-single: Br6c10 = ne
H-single: Hr7c10 = 0
V-single: Vr6c10 = 0
w[1]-diagonal-3-2s-in-{r9c8...r7c10}-non-closed-ne-end ==> Vr7c11 = 1, Vr9c8 = 1, Hr10c8 = 1, Vr10c8 = 0, Hr10c7 = 0
P-single: Pr7c11 = ns
P-single: Pr6c10 = ew
H-single: Hr6c9 = 1
B-single: Br5c10 = ns
horizontal-line-{r5 r6}c9 ==> Ir6c9 = in
vertical-line-r7{c10 c11} ==> Ir7c10 = in
whip[1]: Hr7c10{0 .} ==> Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ nw
whip[1]: Vr6c10{0 .} ==> Br6c9 ≠ ne, Br6c9 ≠ se, Br6c9 ≠ ew
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o, Pr8c11 ≠ sw, Br7c10 ≠ sw
B-single: Br7c11 = w
whip[1]: Pr8c11{nw .} ==> Br8c10 ≠ w, Br8c10 ≠ ne, Br8c10 ≠ sw, Br8c10 ≠ wne, Br8c10 ≠ nes, Br8c10 ≠ o, Br8c10 ≠ s
whip[1]: Br8c10{swn .} ==> Nr8c10 ≠ 0
whip[1]: Vr9c8{1 .} ==> Br9c7 ≠ o, Pr9c8 ≠ o, Pr9c8 ≠ ne, Pr9c8 ≠ nw, Pr9c8 ≠ ew, Pr10c8 ≠ o, Pr10c8 ≠ ew, Pr10c8 ≠ sw, Br9c7 ≠ n, Br9c7 ≠ s, Br9c7 ≠ w, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ sw, Br9c7 ≠ swn, Br9c8 ≠ nes
whip[1]: Br9c8{wne .} ==> Pr10c9 ≠ se
whip[1]: Pr10c9{sw .} ==> Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br10c8 ≠ sw, Br10c9 ≠ nw, Br10c9 ≠ swn, Br10c9 ≠ wne
whip[1]: Br9c7{nes .} ==> Nr9c7 ≠ 0
whip[1]: Pr10c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ wne, Br10c7 ≠ nes, Br10c8 ≠ nw
whip[1]: Pr9c8{sw .} ==> Br8c7 ≠ se, Br8c7 ≠ esw, Br8c7 ≠ nes, Br8c8 ≠ sw, Br8c8 ≠ esw, Br8c8 ≠ swn
whip[1]: Hr10c8{1 .} ==> Pr10c8 ≠ ns, Pr10c8 ≠ nw, Pr10c9 ≠ ns, Br9c8 ≠ wne, Br10c8 ≠ se, Br10c8 ≠ ew
P-single: Pr10c8 = ne
whip[1]: Pr10c8{ne .} ==> Br10c7 ≠ n, Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ nes, Br10c7 ≠ e, Br10c7 ≠ ns, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ ew, Br10c7 ≠ esw, Br10c7 ≠ swn
whip[1]: Br10c7{sw .} ==> Pr11c8 ≠ nw, Pr10c7 ≠ se, Pr10c7 ≠ ew, Nr10c7 ≠ 3
whip[1]: Pr10c7{sw .} ==> Br10c6 ≠ sw
whip[1]: Pr11c9{ew .} ==> Br11c9 ≠ o, Hr11c9 ≠ 0, Br10c9 ≠ ew, Br10c9 ≠ o, Br10c9 ≠ n, Br10c9 ≠ e, Br10c9 ≠ w, Br10c9 ≠ ne
H-single: Hr11c9 = 1
w[1]-3-in-r10c10-hit-by-horiz-line-at-sw ==> Hr10c10 = 1
w[1]-3-in-r10c10-closed-ne-corner ==> Pr11c10 ≠ ne, Pr11c10 ≠ o
B-single: Br11c9 = n
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
no-vertical-line-r9{c9 c10} ==> Ir9c9 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
same-colour-in-r10{c9 c10} ==> Vr10c10 = 0
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
w[1]-3-in-r9c8-hit-by-horiz-line-at-se ==> Hr9c8 = 1, Vr10c9 = 0
w[1]-3-in-r9c8-closed-nw-corner ==> Pr10c9 ≠ nw
P-single: Pr10c9 = ew
V-single: Vr9c9 = 0
P-single: Pr11c8 = ew
H-single: Hr11c7 = 1
H-single: Hr11c8 = 1
horizontal-line-{r10 r11}c8 ==> Ir10c8 = in
no-vertical-line-r10{c7 c8} ==> Ir10c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = in
no-horizontal-line-{r8 r9}c7 ==> Ir8c7 = in
no-vertical-line-r8{c7 c8} ==> Ir8c8 = in
horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
vertical-line-r9{c6 c7} ==> Ir9c6 = out
vertical-line-r9{c5 c6} ==> Ir9c5 = in
vertical-line-r9{c4 c5} ==> Ir9c4 = out
vertical-line-r9{c3 c4} ==> Ir9c3 = in
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
different-colours-in-{r7 r8}c10 ==> Hr8c10 = 1
whip[1]: Hr10c10{1 .} ==> Pr10c11 ≠ o, Pr10c11 ≠ ns, Pr10c10 ≠ ns, Pr10c10 ≠ sw, Br9c10 ≠ n, Br9c10 ≠ e, Br9c10 ≠ w, Br10c10 ≠ esw
B-single: Br10c10 = nes
P-single: Pr11c11 = nw
P-single: Pr11c10 = ew
P-single: Pr10c11 = sw
B-single: Br9c10 = s
P-single: Pr9c11 = o
P-single: Pr10c10 = ew
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ se, Br10c9 ≠ esw, Br10c9 ≠ nes
whip[1]: Br10c9{sw .} ==> Nr10c9 ≠ 0, Nr10c9 ≠ 3
whip[1]: Pr9c11{o .} ==> Br8c10 ≠ e, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ swn
whip[1]: Br8c10{nw .} ==> Pr8c11 ≠ ns, Pr8c10 ≠ ns, Pr8c10 ≠ nw, Nr8c10 ≠ 3
P-single: Pr6c9 = se
H-single: Hr6c8 = 0
V-single: Vr5c9 = 0
V-single: Vr6c9 = 1
P-single: Pr7c10 = o
H-single: Hr7c9 = 0
V-single: Vr7c10 = 0
P-single: Pr8c11 = nw
no-vertical-line-r7{c9 c10} ==> Ir7c9 = in
vertical-line-r6{c8 c9} ==> Ir6c8 = out
no-horizontal-line-{r5 r6}c8 ==> Ir5c8 = out
different-colours-in-{r4 r5}c8 ==> Hr5c8 = 1
whip[1]: Pr6c9{se .} ==> Br6c8 ≠ w, Br6c8 ≠ s, Br6c8 ≠ n, Br6c8 ≠ o, Br5c9 ≠ w, Br5c9 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c8 ≠ s, Br5c8 ≠ e, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c9 ≠ ne, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ sw, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ nes, Br6c9 ≠ ns, Br6c9 ≠ sw
B-single: Br6c9 = nw
whip[1]: Pr7c9{nw .} ==> Br7c8 ≠ w, Br7c8 ≠ ne, Br7c8 ≠ sw, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ ne, Br7c9 ≠ ns, Br7c9 ≠ nw, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c8 ≠ o, Br7c8 ≠ s, Br7c9 ≠ n
whip[1]: Br7c8{swn .} ==> Nr7c8 ≠ 0
whip[1]: Br6c8{esw .} ==> Pr6c8 ≠ ne, Pr6c8 ≠ se, Pr6c8 ≠ ew, Nr6c8 ≠ 0
whip[1]: Br5c9{nes .} ==> Pr5c9 ≠ ns, Nr5c9 ≠ 0
whip[1]: Br5c8{nw .} ==> Nr5c8 ≠ 3
whip[1]: Pr7c10{o .} ==> Br7c9 ≠ e, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ esw, Br7c10 ≠ ew
B-single: Br7c10 = se
whip[1]: Br7c9{sw .} ==> Nr7c9 ≠ 3
whip[1]: Hr5c8{1 .} ==> Br5c8 ≠ o, Pr5c8 ≠ ns, Pr5c8 ≠ nw, Pr5c9 ≠ ne, Br4c8 ≠ ew, Br5c8 ≠ w
P-single: Pr4c8 = o
H-single: Hr4c7 = 0
V-single: Vr4c8 = 0
P-single: Pr5c9 = nw
B-single: Br4c8 = se
no-vertical-line-r4{c7 c8} ==> Ir4c7 = in
whip[1]: Pr4c8{o .} ==> Br3c7 ≠ e, Br3c7 ≠ s, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c7 ≠ nes, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c7 ≠ nes
whip[1]: Br4c7{sw .} ==> Pr4c7 ≠ ne, Pr4c7 ≠ se, Pr4c7 ≠ ew, Nr4c7 ≠ 3
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 3
whip[1]: Pr5c9{nw .} ==> Br4c9 ≠ swn, Br5c9 ≠ ns, Br5c9 ≠ nes
whip[1]: Br5c9{se .} ==> Nr5c9 ≠ 3
whip[1]: Br5c8{nw .} ==> Nr5c8 ≠ 0
whip[1]: Pr8c10{ew .} ==> Br8c9 ≠ sw, Br8c9 ≠ ne
whip[1]: Pr10c10{ew .} ==> Br10c9 ≠ s, Br9c9 ≠ ne, Br9c9 ≠ w, Br9c9 ≠ e, Br9c9 ≠ n, Br9c9 ≠ o, Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ wne, Br9c9 ≠ nes, Br10c9 ≠ sw
B-single: Br10c9 = ns
N-single: Nr10c9 = 2
P-single: Pr11c9 = ew
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ ne, Br11c8 ≠ o
B-single: Br11c8 = n
B-single: Br10c8 = ns
whip[1]: Br9c9{ns .} ==> Pr9c9 ≠ ns, Pr9c9 ≠ se, Nr9c9 ≠ 0, Nr9c9 ≠ 3
whip[1]: Pr9c9{ew .} ==> Br8c8 ≠ nw, Br8c8 ≠ ew, Br8c8 ≠ wne, Br9c8 ≠ esw, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ e, Br8c8 ≠ w, Br8c8 ≠ ne
B-single: Br9c8 = swn
P-single: Pr9c8 = se
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ s, Br8c7 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br9c7 ≠ ne, Br9c7 ≠ wne
whip[1]: Br9c7{ew .} ==> Pr9c7 ≠ ne, Pr9c7 ≠ se, Pr9c7 ≠ ew, Nr9c7 ≠ 3
whip[1]: Br8c7{nw .} ==> Pr8c8 ≠ ns, Pr8c8 ≠ se, Pr8c8 ≠ sw, Nr8c7 ≠ 3
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Pr8c9{se .} ==> Br7c8 ≠ ns, Br7c8 ≠ ew, Br7c8 ≠ swn, Br7c9 ≠ sw, Br8c8 ≠ nes, Br8c9 ≠ ns, Br8c9 ≠ ew, Br7c8 ≠ e
whip[1]: Br8c8{se .} ==> Nr8c8 ≠ 3
whip[1]: Br7c9{w .} ==> Nr7c9 ≠ 2
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ w, Br10c7 ≠ o, Br11c7 ≠ o
B-single: Br11c7 = n
w[1]-3-in-r9c5-asymmetric-se-corner ==> Hr9c5 = 1, Hr9c4 = 0
w[1]-3-in-r9c4-hit-by-horiz-line-at-ne ==> Hr10c4 = 1
w[1]-3-in-r9c6-hit-by-horiz-line-at-nw ==> Hr10c6 = 1
w[1]-diagonal-3-2-in-{r9c5...r10c6}-non-closed-se-corner ==> Hr11c6 = 1
w[1]-3-in-r9c6-closed-se-corner ==> Pr9c6 ≠ se, Pr9c6 ≠ nw, Pr9c6 ≠ o
w[1]-3-in-r9c6-closed-sw-corner ==> Pr9c7 ≠ sw, Pr9c7 ≠ o
w[1]-3-in-r9c4-closed-se-corner ==> Pr9c4 ≠ se, Pr9c4 ≠ nw, Pr9c4 ≠ o
w[1]-3-in-r9c4-closed-sw-corner ==> Pr9c5 ≠ sw, Pr9c5 ≠ ne, Pr9c5 ≠ o
w[1]-3-in-r9c5-closed-ne-corner ==> Pr10c5 ≠ sw, Pr10c5 ≠ ne, Pr10c5 ≠ o
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-horizontal-line-{r8 r9}c6 ==> Ir8c6 = out
no-vertical-line-r8{c5 c6} ==> Ir8c5 = out
no-vertical-line-r8{c4 c5} ==> Ir8c4 = out
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
w[1]-3-in-r10c2-hit-by-horiz-line-at-se ==> Vr10c2 = 1, Hr10c2 = 1
w[1]-3-in-r10c2-closed-nw-corner ==> Pr11c3 ≠ nw, Pr11c3 ≠ o
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
whip[1]: Hr9c5{1 .} ==> Br8c5 ≠ o, Pr9c5 ≠ ns, Pr9c5 ≠ nw, Pr9c6 ≠ ne, Pr9c6 ≠ ns, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ w, Br8c5 ≠ ne, Br8c5 ≠ nw, Br8c5 ≠ ew, Br8c5 ≠ wne, Br9c5 ≠ esw
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Pr9c6{sw .} ==> Br8c5 ≠ se, Br8c5 ≠ esw, Br8c5 ≠ nes, Br8c6 ≠ nw, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ swn, Br8c6 ≠ wne, Br9c6 ≠ swn, Br9c6 ≠ wne, Br8c6 ≠ w
whip[1]: Br8c6{nes .} ==> Pr8c6 ≠ ns, Pr8c6 ≠ se, Pr8c6 ≠ sw
whip[1]: Br9c6{nes .} ==> Pr9c7 ≠ nw, Pr10c6 ≠ ns, Pr10c6 ≠ sw, Pr10c7 ≠ ns
P-single: Pr10c7 = nw
P-single: Pr9c7 = ns
whip[1]: Pr10c7{nw .} ==> Br9c7 ≠ e, Br10c6 ≠ ne, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c7 ≠ sw
B-single: Br10c7 = s
N-single: Nr10c7 = 1
P-single: Pr11c7 = ew
B-single: Br9c7 = ew
N-single: Nr9c7 = 2
whip[1]: Pr11c7{ew .} ==> Br11c6 ≠ o, Br10c6 ≠ nw
B-single: Br10c6 = ns
P-single: Pr11c6 = ew
B-single: Br11c6 = n
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ ne, Br10c5 ≠ w, Br10c5 ≠ e, Br10c5 ≠ n, Br10c5 ≠ o, Br11c5 ≠ o, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c5 ≠ esw, Br10c5 ≠ wne, Br10c5 ≠ nes
B-single: Br11c5 = n
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ esw, Br10c4 ≠ nes, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ w
whip[1]: Br10c4{wne .} ==> Nr10c4 ≠ 0
whip[1]: Br10c5{swn .} ==> Nr10c5 ≠ 0
whip[1]: Pr9c7{ns .} ==> Br8c7 ≠ n, Br8c7 ≠ o, Br8c6 ≠ n, Br8c6 ≠ o, Br8c6 ≠ s, Br8c6 ≠ ns, Br8c6 ≠ se, Br8c6 ≠ nes, Br9c6 ≠ nes
B-single: Br9c6 = esw
P-single: Pr9c6 = sw
P-single: Pr10c6 = ne
whip[1]: Pr9c6{sw .} ==> Br9c5 ≠ swn
whip[1]: Pr10c6{ne .} ==> Br9c5 ≠ nes, Br10c5 ≠ ns, Br10c5 ≠ swn
B-single: Br9c5 = wne
P-single: Pr9c5 = se
whip[1]: Pr9c5{se .} ==> Br8c4 ≠ s, Br8c4 ≠ e, Br8c4 ≠ ne, Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ wne, Br8c4 ≠ nes, Br8c5 ≠ sw, Br8c5 ≠ swn, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ nes
B-single: Br9c4 = esw
P-single: Pr10c4 = ne
P-single: Pr10c5 = nw
whip[1]: Pr10c4{ne .} ==> Br10c3 ≠ n, Br9c3 ≠ n, Br9c3 ≠ o, Br9c3 ≠ s, Br9c3 ≠ w, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ sw, Br9c3 ≠ esw, Br9c3 ≠ swn, Br9c3 ≠ nes, Br10c3 ≠ e, Br10c3 ≠ ne, Br10c3 ≠ ns, Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ swn, Br10c3 ≠ wne, Br10c3 ≠ nes, Br10c4 ≠ e, Br10c4 ≠ s, Br10c4 ≠ ew, Br10c4 ≠ sw, Br10c4 ≠ swn, Br10c4 ≠ wne
whip[1]: Br10c4{ns .} ==> Pr11c4 ≠ ne, Pr11c4 ≠ nw, Nr10c4 ≠ 1, Nr10c4 ≠ 3
N-single: Nr10c4 = 2
P-single: Pr11c4 = ew
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ ne, Br10c3 ≠ w, Br10c3 ≠ o, Br11c4 ≠ o, Br11c3 ≠ o
B-single: Br11c3 = n
B-single: Br11c4 = n
P-single: Pr11c5 = ew
B-single: Br10c4 = ns
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ sw
B-single: Br10c5 = s
N-single: Nr10c5 = 1
whip[1]: Br10c3{sw .} ==> Pr10c3 ≠ ne, Pr10c3 ≠ se, Pr10c3 ≠ ew, Nr10c3 ≠ 0, Nr10c3 ≠ 3
whip[1]: Br9c3{wne .} ==> Nr9c3 ≠ 0
whip[1]: Pr9c4{sw .} ==> Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ esw, Br8c3 ≠ nes, Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ w
whip[1]: Br8c3{wne .} ==> Nr8c3 ≠ 0
whip[1]: Br8c5{ns .} ==> Pr8c5 ≠ ns, Pr8c5 ≠ se, Nr8c5 ≠ 3, Pr8c5 ≠ sw
whip[1]: Br8c4{nw .} ==> Nr8c4 ≠ 3
whip[1]: Br8c6{ne .} ==> Pr8c7 ≠ o, Pr8c7 ≠ ne, Pr8c7 ≠ nw, Nr8c6 ≠ 0, Nr8c6 ≠ 3, Pr8c7 ≠ ew
whip[1]: Pr8c7{sw .} ==> Br7c6 ≠ se, Br7c6 ≠ esw, Br7c6 ≠ nes, Br7c7 ≠ sw
whip[1]: Br7c7{ew .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ne
whip[1]: Pr7c8{sw .} ==> Br6c8 ≠ esw
whip[1]: Br6c8{ew .} ==> Nr6c8 ≠ 3
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 0
whip[1]: Vr10c2{1 .} ==> Br10c1 ≠ o, Pr11c2 ≠ o, Pr11c2 ≠ ew, Pr10c2 ≠ o, Pr10c2 ≠ ne, Pr10c2 ≠ nw, Pr10c2 ≠ ew, Br10c1 ≠ n, Br10c1 ≠ sw, Br10c1 ≠ swn, Br10c2 ≠ nes
whip[1]: Br10c2{wne .} ==> Pr10c3 ≠ o
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ w
whip[1]: Br9c2{nes .} ==> Nr9c2 ≠ 0
whip[1]: Br10c1{esw .} ==> Pr10c1 ≠ se, Nr10c1 ≠ 0
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ s, Br9c1 ≠ ns, Br9c1 ≠ se, Br9c1 ≠ nes
whip[1]: Pr10c2{sw .} ==> Br9c1 ≠ esw, Br9c2 ≠ sw, Br9c2 ≠ esw, Br9c2 ≠ swn
whip[1]: Hr10c2{1 .} ==> Pr10c2 ≠ ns, Pr10c2 ≠ sw, Pr10c3 ≠ ns, Br9c2 ≠ e, Br9c2 ≠ ne, Br9c2 ≠ ew, Br9c2 ≠ wne, Br10c2 ≠ esw
P-single: Pr10c2 = se
whip[1]: Pr10c2{se .} ==> Br9c1 ≠ e, Br9c1 ≠ ne, Br9c1 ≠ ew, Br9c1 ≠ sw, Br9c1 ≠ swn, Br9c1 ≠ wne, Br10c1 ≠ ne
whip[1]: Br10c1{esw .} ==> Pr10c1 ≠ ne, Nr10c1 ≠ 2
whip[1]: Br9c1{nw .} ==> Pr9c2 ≠ ns, Pr9c2 ≠ se, Pr9c2 ≠ sw, Nr9c1 ≠ 3
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Pr6c10{ew .} ==> Br5c9 ≠ se
B-single: Br5c9 = s
N-single: Nr5c9 = 1
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Pr4c10{sw .} ==> Br4c9 ≠ nw
B-single: Br4c9 = wne
N-single: Nr4c9 = 3
whip[1]: Pr3c11{ns .} ==> Br2c10 ≠ n, Br2c10 ≠ o, Br2c10 ≠ s, Br2c10 ≠ w, Br2c10 ≠ ns, Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn, Br2c10 ≠ nes
whip[1]: Br2c10{wne .} ==> Nr2c10 ≠ 0
whip[1]: Pr3c10{nw .} ==> Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c9 ≠ e, Br2c9 ≠ s
whip[1]: Br3c9{ns .} ==> Nr3c9 ≠ 3
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Hr2c10{0 .} ==> Br2c10 ≠ wne, Pr2c11 ≠ sw, Pr2c10 ≠ se, Pr2c10 ≠ ew, Br1c10 ≠ nes, Br2c10 ≠ ne
P-single: Pr2c11 = ns
B-single: Br1c10 = wne
P-single: Pr1c11 = sw
P-single: Pr1c10 = se
whip[1]: Pr1c10{se .} ==> Br1c9 ≠ w, Br1c9 ≠ s, Br1c9 ≠ n, Br1c9 ≠ o, Br1c9 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ nw, Br1c9 ≠ sw, Br1c9 ≠ swn, Br1c9 ≠ wne, Br1c9 ≠ nes
whip[1]: Br1c9{esw .} ==> Pr1c9 ≠ se, Pr1c9 ≠ ew, Nr1c9 ≠ 0
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ swn, Br1c8 ≠ n, Br1c8 ≠ e, Br1c8 ≠ ns
whip[1]: Br2c10{ew .} ==> Nr2c10 ≠ 3
whip[1]: Pr2c10{nw .} ==> Br2c9 ≠ w, Br2c9 ≠ nes, Br2c9 ≠ o
whip[1]: Br2c9{esw .} ==> Nr2c9 ≠ 0
whip[1]: Vr1c9{1 .} ==> Br1c9 ≠ se, Br1c8 ≠ o, Pr1c9 ≠ o, Pr2c9 ≠ se, Pr2c9 ≠ ew, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ sw, Br1c9 ≠ e
P-single: Pr1c9 = sw
whip[1]: Br1c9{esw .} ==> Nr1c9 ≠ 1
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0, Nr1c8 ≠ 1
whip[1]: Pr2c9{nw .} ==> Br1c9 ≠ esw, Br2c8 ≠ ne, Br2c8 ≠ sw, Br2c9 ≠ nw, Br2c9 ≠ n
B-single: Br1c9 = ew
N-single: Nr1c9 = 2
P-single: Pr2c10 = ns
whip[1]: Pr2c10{ns .} ==> Br2c10 ≠ e
B-single: Br2c10 = ew
N-single: Nr2c10 = 2
P-single: Pr3c10 = nw
whip[1]: Pr3c10{nw .} ==> Br3c9 ≠ s
B-single: Br3c9 = ns
N-single: Nr3c9 = 2
whip[1]: Br2c9{esw .} ==> Nr2c9 ≠ 1
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Hr2c8{0 .} ==> Br2c8 ≠ nw, Pr2c8 ≠ ew, Pr2c9 ≠ nw, Br1c8 ≠ nes, Br2c8 ≠ ns
P-single: Pr2c9 = ns
P-single: Pr2c8 = ns
whip[1]: Pr2c9{ns .} ==> Br2c9 ≠ se
B-single: Br2c9 = esw
N-single: Nr2c9 = 3
whip[1]: Pr2c8{ns .} ==> Br1c7 ≠ ns, Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ sw, Br1c8 ≠ ne, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ sw, Br2c8 ≠ se
B-single: Br2c8 = ew
B-single: Br1c8 = wne
N-single: Nr1c8 = 3
P-single: Pr1c8 = se
whip[1]: Pr1c8{se .} ==> Br1c7 ≠ ne
B-single: Br1c7 = ew
P-single: Pr1c7 = sw
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ esw, Br1c6 ≠ swn
whip[1]: Br1c6{nes .} ==> Pr1c6 ≠ sw
P-single: Pr1c6 = ew
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ ne, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c6 ≠ wne
B-single: Br1c6 = nes
whip[1]: Pr2c6{ew .} ==> Br2c5 ≠ sw, Br2c6 ≠ esw, Br2c5 ≠ ne
whip[1]: Br2c6{nes .} ==> Pr3c6 ≠ sw
whip[1]: Pr3c6{ew .} ==> Br2c5 ≠ nw, Br2c5 ≠ se, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c5 ≠ ne, Br3c6 ≠ o, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Pr2c7{nw .} ==> Br2c7 ≠ ew, Br2c6 ≠ wne, Br2c6 ≠ nes
B-single: Br2c6 = swn
P-single: Pr2c6 = se
P-single: Pr3c6 = ne
P-single: Pr3c7 = ew
B-single: Br2c7 = se
whip[1]: Pr2c6{se .} ==> Br1c5 ≠ ns, Br1c5 ≠ swn, Br2c5 ≠ ns
B-single: Br2c5 = ew
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ ns
whip[1]: Br2c4{ew .} ==> Pr2c4 ≠ se, Pr3c4 ≠ ne
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ nw
whip[1]: Br1c3{sw .} ==> Pr1c3 ≠ se
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ e
whip[1]: Pr3c5{nw .} ==> Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ n
whip[1]: Br3c4{swn .} ==> Pr3c4 ≠ o, Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr4c4 ≠ o, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Pr4c5 ≠ o, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ se
P-single: Pr4c4 = ne
w[1]-1-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
w[1]-1-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ ew, Pr3c3 ≠ ns
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ o, Br4c3 ≠ n, Br3c3 ≠ n, Br3c3 ≠ s, Br3c3 ≠ w, Br4c3 ≠ e, Br4c4 ≠ e, Br4c4 ≠ s, Br4c4 ≠ w, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne
B-single: Br3c3 = e
P-single: Pr2c5 = ns
H-single: Hr2c4 = 0
V-single: Vr1c5 = 1
P-single: Pr3c3 = nw
V-single: Vr2c3 = 1
no-horizontal-line-{r0 r1}c4 ==> Ir1c4 = out
whip[1]: Pr2c5{ns .} ==> Br1c5 ≠ n, Br1c4 ≠ ns, Br2c4 ≠ ne
B-single: Br1c4 = ew
V-single: Vr1c4 = 1
P-single: Pr3c5 = ns
H-single: Hr3c4 = 0
V-single: Vr3c5 = 1
w[1]-3-in-r3c4-closed-se-corner ==> Pr3c4 ≠ se
P-single: Pr3c4 = ns
V-single: Vr2c4 = 1
P-single: Pr2c4 = ns
H-single: Hr2c3 = 0
P-single: Pr1c4 = sw
H-single: Hr1c3 = 1
P-single: Pr1c5 = se
B-single: Br1c5 = nw
N-single: Nr1c5 = 2
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = in
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
whip[1]: Vr1c4{1 .} ==> Br1c3 ≠ ns, Br1c3 ≠ sw
whip[1]: Pr3c5{ns .} ==> Br3c5 ≠ e, Br3c5 ≠ o, Br2c4 ≠ se, Br3c4 ≠ swn, Br3c5 ≠ s, Br3c5 ≠ se
B-single: Br3c4 = esw
P-single: Pr4c5 = nw
B-single: Br2c4 = ew
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ n, Br3c5 ≠ sw, Br3c5 ≠ esw, Br4c4 ≠ ne, Br4c4 ≠ nes, Br4c5 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes
whip[1]: Br4c5{se .} ==> Pr4c6 ≠ nw, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Nr4c5 ≠ 3
whip[1]: Br4c4{ns .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Nr4c4 ≠ 0, Nr4c4 ≠ 3
whip[1]: Br3c5{ew .} ==> Nr3c5 ≠ 0, Nr3c5 ≠ 3
whip[1]: Pr3c4{ns .} ==> Br2c3 ≠ n, Br2c3 ≠ ns, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ swn
whip[1]: Br2c3{ew .} ==> Nr2c3 ≠ 3
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ se
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ ew
B-single: Br1c3 = ne
V-single: Vr1c3 = 0
P-single: Pr1c3 = ew
H-single: Hr1c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-ne ==> Hr2c1 = 1
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
P-single: Pr4c3 = sw
H-single: Hr4c2 = 1
V-single: Vr4c3 = 1
w[1]-3-in-r4c1-hit-by-horiz-line-at-ne ==> Vr3c2 = 0
w[1]-1-in-r4c3-asymmetric-nw-corner ==> Pr5c4 ≠ sw, Pr5c4 ≠ ew
w[1]-3-in-r5c4-symmetric-nw-corner ==> Vr5c4 = 1, Hr5c4 = 1
w[1]-3-in-r5c4-closed-nw-corner ==> Pr6c5 ≠ se, Pr6c5 ≠ nw, Pr6c5 ≠ o
w[1]-diagonal-closed-3-1-in-{r5c4...r6c5} ==> Vr6c6 = 0, Hr7c5 = 0
w[1]-1-in-r6c5-asymmetric-nw-corner ==> Pr7c6 ≠ sw, Pr7c6 ≠ ew, Pr7c6 ≠ ns, Pr7c6 ≠ ne
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
vertical-line-r4{c2 c3} ==> Ir4c2 = out
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
different-colours-in-{r1 r2}c2 ==> Hr2c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-se ==> Vr2c2 = 0
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
w[1]-3-in-r4c1-closed-se-corner ==> Pr4c1 ≠ se, Pr4c1 ≠ o
no-vertical-line-r5{c1 c2} ==> Ir5c2 = out
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
whip[1]: Vr1c3{0 .} ==> Br1c2 ≠ ne, Br1c2 ≠ wne, Br1c2 ≠ nes
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ o, Br1c2 ≠ sw
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Hr2c1{1 .} ==> Pr2c1 ≠ ns, Pr2c2 ≠ ns, Br1c1 ≠ wne, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ sw
P-single: Pr2c2 = ew
P-single: Pr2c1 = ne
B-single: Br1c1 = swn
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
whip[1]: Pr2c2{ew .} ==> Br2c2 ≠ w, Br2c2 ≠ s, Br2c2 ≠ e, Br2c2 ≠ o, Br2c1 ≠ ne, Br1c2 ≠ n, Br1c2 ≠ nw, Br1c2 ≠ swn, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne
B-single: Br1c2 = ns
N-single: Nr1c2 = 2
P-single: Pr2c3 = sw
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ e, Br2c2 ≠ ns, Br2c2 ≠ n
B-single: Br2c3 = ew
N-single: Nr2c3 = 2
whip[1]: Br2c2{nes .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ ns, Nr2c2 ≠ 0, Nr2c2 ≠ 1
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c1 ≠ o, Br3c1 ≠ e, Br3c1 ≠ s, Br3c1 ≠ w
B-single: Br2c1 = ns
P-single: Pr3c1 = se
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ n, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nes
whip[1]: Br3c1{wne .} ==> Pr4c2 ≠ nw, Nr3c1 ≠ 0, Nr3c1 ≠ 1
whip[1]: Pr4c2{ew .} ==> Br3c2 ≠ sw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ se, Br3c2 ≠ ne, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Br4c1{swn .} ==> Pr4c1 ≠ ne, Pr5c1 ≠ ns, Pr5c2 ≠ ns, Pr5c2 ≠ se
P-single: Pr5c1 = ne
P-single: Pr4c1 = ns
whip[1]: Pr5c1{ne .} ==> Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ sw
whip[1]: Br5c1{ns .} ==> Pr6c1 ≠ ns
P-single: Pr6c1 = se
H-single: Hr6c1 = 1
V-single: Vr6c1 = 1
w[1]-3-in-r7c1-hit-by-verti-line-at-nw ==> Vr7c2 = 1, Hr8c1 = 1
w[1]-2-in-r8c2-open-nw-corner ==> Hr9c2 = 1, Vr8c3 = 1, Hr9c3 = 0, Vr9c3 = 0
w[1]-3-in-r7c1-closed-se-corner ==> Pr7c1 ≠ se
w[1]-3-in-r10c2-isolated-at-ne-corner ==> Vr10c3 = 1
w[1]-3-in-r10c2-closed-ne-corner ==> Pr11c2 ≠ ne
P-single: Pr11c2 = nw
H-single: Hr11c1 = 1
P-single: Pr7c1 = ns
H-single: Hr7c1 = 0
V-single: Vr7c1 = 1
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ o
P-single: Pr7c2 = se
H-single: Hr7c2 = 1
V-single: Vr6c2 = 0
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
no-vertical-line-r8{c1 c2} ==> Ir8c2 = out
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
vertical-line-r7{c1 c2} ==> Ir7c1 = in
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = in
no-vertical-line-r6{c1 c2} ==> Ir6c2 = in
vertical-line-r8{c2 c3} ==> Ir8c3 = in
horizontal-line-{r8 r9}c2 ==> Ir9c2 = in
no-vertical-line-r9{c1 c2} ==> Ir9c1 = in
no-horizontal-line-{r9 r10}c1 ==> Ir10c1 = in
vertical-line-r10{c1 c2} ==> Ir10c2 = out
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
different-colours-in-{r8 r9}c1 ==> Hr9c1 = 1
different-colours-in-r8{c3 c4} ==> Hr8c4 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
w[1]-2-in-r6c3-open-nw-corner ==> Hr7c3 = 1, Vr6c4 = 1, Hr7c4 = 0, Vr7c4 = 0
w[1]-diagonal-3-2-in-{r5c4...r6c3}-non-closed-sw-corner ==> Vr5c5 = 1, Hr5c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r6 r7}c5 ==> Vr7c5 = 1, Hr6c5 = 0
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = in
no-vertical-line-r6{c5 c6} ==> Ir6c6 = in
no-horizontal-line-{r6 r7}c5 ==> Ir7c5 = in
vertical-line-r7{c4 c5} ==> Ir7c4 = out
no-vertical-line-r7{c3 c4} ==> Ir7c3 = out
horizontal-line-{r6 r7}c3 ==> Ir6c3 = in
vertical-line-r6{c3 c4} ==> Ir6c4 = out
different-colours-in-r6{c4 c5} ==> Hr6c5 = 1
w[1]-3-in-r7c5-hit-by-verti-line-at-nw ==> Vr7c6 = 1, Hr8c5 = 1
w[1]-3-in-r7c5-closed-se-corner ==> Pr7c5 ≠ se, Pr7c5 ≠ nw, Pr7c5 ≠ o
w[1]-3-in-r7c5-closed-sw-corner ==> Pr7c6 ≠ o
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1
same-colour-in-{r5 r6}c4 ==> Hr6c4 = 0
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ ne, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ se, Br6c1 ≠ ew, Br6c1 ≠ sw
B-single: Br6c1 = nw
P-single: Pr6c2 = ew
B-single: Br5c1 = ns
whip[1]: Pr6c2{ew .} ==> Br6c2 ≠ w, Br6c2 ≠ s, Br6c2 ≠ e, Br6c2 ≠ o, Br5c2 ≠ ne, Br5c2 ≠ w, Br5c2 ≠ e, Br5c2 ≠ n, Br5c2 ≠ o, Br5c2 ≠ nw, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Br6c2{nes .} ==> Pr6c3 ≠ o, Pr6c3 ≠ ne, Pr6c3 ≠ ns, Nr6c2 ≠ 0
whip[1]: Pr6c3{sw .} ==> Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br6c3 ≠ nw
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr7c2{1 .} ==> Br7c2 ≠ o, Pr8c2 ≠ o, Pr8c2 ≠ ew, Pr8c2 ≠ sw, Br7c1 ≠ swn, Br7c2 ≠ n, Br7c2 ≠ e, Br7c2 ≠ s, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ se, Br7c2 ≠ nes
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Br7c1{nes .} ==> Pr8c1 ≠ o
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ se, Br8c1 ≠ o, Br8c1 ≠ e, Br8c1 ≠ s
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Pr8c2{nw .} ==> Br8c1 ≠ ne, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ nw
whip[1]: Hr8c1{1 .} ==> Pr8c1 ≠ ns, Pr8c2 ≠ ne, Pr8c2 ≠ ns, Br7c1 ≠ wne, Br8c1 ≠ w, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw
P-single: Pr9c3 = nw
P-single: Pr8c2 = nw
whip[1]: Pr9c3{nw .} ==> Br9c2 ≠ s, Br8c3 ≠ s, Br8c3 ≠ e, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ sw, Br8c3 ≠ swn, Br9c2 ≠ se, Br9c2 ≠ nes, Br9c3 ≠ ne, Br9c3 ≠ ew, Br9c3 ≠ wne
B-single: Br9c3 = e
N-single: Nr9c3 = 1
P-single: Pr9c4 = ns
P-single: Pr10c3 = sw
B-single: Br9c2 = ns
N-single: Nr9c2 = 2
P-single: Pr9c2 = ew
B-single: Br8c2 = se
whip[1]: Pr9c4{ns .} ==> Br8c4 ≠ n, Br8c4 ≠ o
whip[1]: Br8c4{nw .} ==> Pr8c4 ≠ o, Pr8c4 ≠ ne, Pr8c4 ≠ nw, Pr8c4 ≠ ew, Nr8c4 ≠ 0
whip[1]: Pr8c4{sw .} ==> Br7c3 ≠ se, Br7c3 ≠ esw, Br7c3 ≠ nes, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn
whip[1]: Pr10c3{sw .} ==> Br10c3 ≠ s, Br10c2 ≠ swn
B-single: Br10c2 = wne
P-single: Pr11c3 = ne
B-single: Br10c3 = sw
N-single: Nr10c3 = 2
whip[1]: Pr11c3{ne .} ==> Br11c2 ≠ n
B-single: Br11c2 = o
whip[1]: Pr9c2{ew .} ==> Br9c1 ≠ w, Br9c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ nw
whip[1]: Br8c1{swn .} ==> Pr9c1 ≠ o, Pr9c1 ≠ ns, Nr8c1 ≠ 1
whip[1]: Br9c1{nw .} ==> Nr9c1 ≠ 0
whip[1]: Pr8c3{se .} ==> Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c3 ≠ ne, Br7c3 ≠ sw, Br7c3 ≠ swn, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e
whip[1]: Br7c3{wne .} ==> Nr7c3 ≠ 0
whip[1]: Br8c3{wne .} ==> Nr8c3 ≠ 1
whip[1]: Pr11c2{nw .} ==> Br10c1 ≠ e, Br11c1 ≠ o
B-single: Br11c1 = n
P-single: Pr11c1 = ne
B-single: Br10c1 = esw
N-single: Nr10c1 = 3
P-single: Pr10c1 = ns
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ n
B-single: Br9c1 = nw
N-single: Nr9c1 = 2
P-single: Pr9c1 = se
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ swn
B-single: Br8c1 = ns
N-single: Nr8c1 = 2
P-single: Pr8c1 = ne
whip[1]: Pr8c1{ne .} ==> Br7c1 ≠ nes
B-single: Br7c1 = esw
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Pr7c2{se .} ==> Br7c2 ≠ w, Br6c2 ≠ n, Br6c2 ≠ ne, Br7c2 ≠ ew
whip[1]: Br7c2{wne .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se, Nr7c2 ≠ 1
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw, Br7c2 ≠ wne, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ wne, Br6c3 ≠ ne, Br7c3 ≠ w
B-single: Br7c2 = nw
N-single: Nr7c2 = 2
P-single: Pr8c3 = se
whip[1]: Pr8c3{se .} ==> Br8c3 ≠ ew
B-single: Br8c3 = wne
N-single: Nr8c3 = 3
P-single: Pr8c4 = sw
whip[1]: Pr8c4{sw .} ==> Br7c4 ≠ ns, Br7c4 ≠ w, Br7c4 ≠ s, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ wne, Br7c4 ≠ nes, Br8c4 ≠ nw
B-single: Br8c4 = w
N-single: Nr8c4 = 1
whip[1]: Pr8c5{ne .} ==> Br7c5 ≠ wne, Br7c5 ≠ nes
whip[1]: Br7c5{swn .} ==> Pr7c5 ≠ ne, Pr7c5 ≠ ew, Pr8c5 ≠ o, Pr8c6 ≠ o, Pr8c6 ≠ ne
P-single: Pr8c5 = ne
whip[1]: Pr8c5{ne .} ==> Br7c4 ≠ n, Br7c4 ≠ o, Br8c5 ≠ s
B-single: Br8c5 = ns
N-single: Nr8c5 = 2
whip[1]: Br7c4{ne .} ==> Pr7c4 ≠ ns, Nr7c4 ≠ 0, Nr7c4 ≠ 3, Pr7c4 ≠ sw
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ ne
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ sw, Br7c6 ≠ swn, Br7c6 ≠ o, Br7c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ ne
whip[1]: Br7c6{wne .} ==> Nr7c6 ≠ 0
whip[1]: Pr7c5{sw .} ==> Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ esw, Br6c4 ≠ nes, Br7c5 ≠ swn, Br6c4 ≠ w, Br6c5 ≠ s
B-single: Br7c5 = esw
P-single: Pr7c6 = se
P-single: Pr8c6 = nw
whip[1]: Pr7c6{se .} ==> Br7c6 ≠ w, Br7c6 ≠ s, Br6c6 ≠ e, Br6c6 ≠ n, Br6c5 ≠ e, Br6c6 ≠ nw, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ swn, Br7c6 ≠ ns, Br7c6 ≠ ew
whip[1]: Br7c6{wne .} ==> Pr7c7 ≠ o, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ se, Pr8c7 ≠ sw, Nr7c6 ≠ 1
whip[1]: Pr7c8{ew .} ==> Br6c8 ≠ e, Br7c7 ≠ ne
whip[1]: Br6c8{ew .} ==> Nr6c8 ≠ 1
N-single: Nr6c8 = 2
whip[1]: Pr8c7{se .} ==> Br8c6 ≠ ne
B-single: Br8c6 = e
N-single: Nr8c6 = 1
whip[1]: Pr7c7{sw .} ==> Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br7c7 ≠ nw
whip[1]: Br7c7{ew .} ==> Pr8c8 ≠ o
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ n
whip[1]: Br7c8{esw .} ==> Pr7c8 ≠ ew, Nr7c8 ≠ 1
whip[1]: Pr7c8{se .} ==> Br6c7 ≠ ns, Br6c7 ≠ s
whip[1]: Br6c6{se .} ==> Pr6c6 ≠ ns, Pr6c6 ≠ sw, Nr6c6 ≠ 1, Nr6c6 ≠ 3
N-single: Nr6c6 = 2
whip[1]: Pr8c8{ew .} ==> Hr8c8 ≠ 0, Br7c7 ≠ se, Br7c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ s
H-single: Hr8c8 = 1
B-single: Br8c8 = ns
V-single: Vr8c9 = 0
N-single: Nr8c8 = 2
P-single: Pr9c10 = nw
H-single: Hr9c9 = 1
V-single: Vr8c10 = 1
P-single: Pr8c9 = nw
V-single: Vr7c9 = 1
P-single: Pr9c9 = ew

LOOP[44]: Hr8c8-Vr7c9-Vr6c9-Hr6c9-Hr6c10-Vr6c11-Vr7c11-Hr8c10-Vr8c10-Hr9c9-Hr9c8-Vr9c8-Hr10c8-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2-Vr8c3-Hr8c3-Vr8c4-Vr9c4-Hr10c4-Vr9c5-Hr9c5-Vr9c6-Hr10c6-Vr9c7-Vr8c7- ==> Hr8c7 = 0
no-horizontal-line-{r7 r8}c7 ==> Ir7c7 = in
vertical-line-r7{c8 c9} ==> Ir7c8 = out
no-horizontal-line-{r7 r8}c9 ==> Ir8c9 = in
same-colour-in-{r6 r7}c8 ==> Hr7c8 = 0
P-single: Pr7c9 = ns
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
w[1]-diagonal-3-2-in-{r7c5...r6c6}-non-closed-ne-corner ==> Hr6c6 = 1
horizontal-line-{r5 r6}c6 ==> Ir5c6 = out
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1

LOOP[112]: Vr6c8-Vr7c8-Hr8c8-Vr7c9-Vr6c9-Hr6c9-Hr6c10-Vr6c11-Vr7c11-Hr8c10-Vr8c10-Hr9c9-Hr9c8-Vr9c8-Hr10c8-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2-Vr8c3-Hr8c3-Vr8c4-Vr9c4-Hr10c4-Vr9c5-Hr9c5-Vr9c6-Hr10c6-Vr9c7-Vr8c7-Vr7c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Vr6c5-Vr5c5-Hr5c4-Vr5c4-Vr6c4-Hr7c3-Hr7c2-Vr7c2-Hr8c1-Vr7c1-Vr6c1-Hr6c1-Hr6c2-Vr5c3-Vr4c3-Hr4c2-Vr4c2-Hr5c1-Vr4c1-Vr3c1-Hr3c1-Hr3c2-Vr2c3-Hr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Vr2c4-Vr3c4-Hr4c4-Vr3c5-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Vr2c6-Hr3c6-Hr3c7-Vr2c8-Vr1c8-Hr1c8-Vr1c9-Vr2c9-Hr3c9-Vr2c10-Vr1c10-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Hr4c9-Vr4c9-Hr5c8- ==> Vr5c8 = 0
w[1]-diagonal-3-2s-in-{r7c5...r5c7}-non-closed-ne-end ==> Hr5c7 = 1
horizontal-line-{r4 r5}c7 ==> Ir5c7 = out
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1

LOOP[114]: Hr6c7-Vr6c8-Vr7c8-Hr8c8-Vr7c9-Vr6c9-Hr6c9-Hr6c10-Vr6c11-Vr7c11-Hr8c10-Vr8c10-Hr9c9-Hr9c8-Vr9c8-Hr10c8-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2-Vr8c3-Hr8c3-Vr8c4-Vr9c4-Hr10c4-Vr9c5-Hr9c5-Vr9c6-Hr10c6-Vr9c7-Vr8c7-Vr7c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Vr6c5-Vr5c5-Hr5c4-Vr5c4-Vr6c4-Hr7c3-Hr7c2-Vr7c2-Hr8c1-Vr7c1-Vr6c1-Hr6c1-Hr6c2-Vr5c3-Vr4c3-Hr4c2-Vr4c2-Hr5c1-Vr4c1-Vr3c1-Hr3c1-Hr3c2-Vr2c3-Hr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Vr2c4-Vr3c4-Hr4c4-Vr3c5-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Vr2c6-Hr3c6-Hr3c7-Vr2c8-Vr1c8-Hr1c8-Vr1c9-Vr2c9-Hr3c9-Vr2c10-Vr1c10-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Hr4c9-Vr4c9-Hr5c8-Hr5c7- ==> Vr5c7 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1

LOOP[116]: Vr5c6-Hr6c6-Hr6c7-Vr6c8-Vr7c8-Hr8c8-Vr7c9-Vr6c9-Hr6c9-Hr6c10-Vr6c11-Vr7c11-Hr8c10-Vr8c10-Hr9c9-Hr9c8-Vr9c8-Hr10c8-Hr10c9-Hr10c10-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2-Vr8c3-Hr8c3-Vr8c4-Vr9c4-Hr10c4-Vr9c5-Hr9c5-Vr9c6-Hr10c6-Vr9c7-Vr8c7-Vr7c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Vr6c5-Vr5c5-Hr5c4-Vr5c4-Vr6c4-Hr7c3-Hr7c2-Vr7c2-Hr8c1-Vr7c1-Vr6c1-Hr6c1-Hr6c2-Vr5c3-Vr4c3-Hr4c2-Vr4c2-Hr5c1-Vr4c1-Vr3c1-Hr3c1-Hr3c2-Vr2c3-Hr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Vr2c4-Vr3c4-Hr4c4-Vr3c5-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Vr2c6-Hr3c6-Hr3c7-Vr2c8-Vr1c8-Hr1c8-Vr1c9-Vr2c9-Hr3c9-Vr2c10-Vr1c10-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Hr4c9-Vr4c9-Hr5c8-Hr5c7- ==> Hr5c6 = 1
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
3-in-r2c6-no-U-turn-from-south ==> Hr4c6 = O
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXOXXOXOX
OOXOXOOXOX
XXXOXXXXXX
XOXXXXXXOX
OOXOXOOOOO
XXXOXXXOXX
XOOOXOXOXX
OOXOOOXXXO
XXXOXOXOOO
XOXXXXXXXX

.———.———.———.   .———.———.   .———.   .———.
| 3       2 | 2 |     3 | 2 |   |   | 3 |
.———.———.   .   .   .———.   .   .   .   .
  2     |   | 2 | 2 | 3   2 | 2 |   |   |
.———.———.   .   .   .———.———.   .———.   .
|     2   1 | 3 |             0       1 |
.   .———.   .———.   .   .   .   .———.   .
| 3 |   | 1                   2 |   | 3 |
.———.   .   .———.   .———.———.———.   .———.
  2     |   | 3 | 2 | 2   2           2
.———.———.   .   .   .———.———.   .———.———.
| 2       2 |   | 1         |   | 2   2 |
.   .———.———.   .   .———.   .   .   .   .
| 3 |           | 3 |   | 2 |   |     2 |
.———.   .———.   .———.   .   .———.   .———.
      2 |   |           |         2 |
.———.———.   .   .———.   .   .———.———.   .
|           | 3 | 3 | 3 |   | 3       1
.   .———.   .———.   .———.   .———.———.———.
|   | 3 |             2       2       3 |
.———.   .———.———.———.———.———.———.———.———.

init-time = 4m 23.86s, solve-time = 2m 26.77s, total-time = 6m 50.63s
nb-facts=<Fact-195016>
Quasi-Loop max length = 116
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

