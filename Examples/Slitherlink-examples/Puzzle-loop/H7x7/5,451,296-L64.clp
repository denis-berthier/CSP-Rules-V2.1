
(solve
7 7
. . . . 3 . 3
. . 2 . . 2 . 
. . 3 1 2 . 2
. 2 1 3 . 2 . 
. . . . 2 . . 
2 . 3 . . 2 . 
. . 3 . . 3 . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . 3 . 3
. . 2 . . 2 .
. . 3 1 2 . 2
. 2 1 3 . 2 .
. . . . 2 . .
2 . 3 . . 2 .
. . 3 . . 3 .

start init-grid-structure 4.1961669921875e-05
start create-csp-variables
start create-labels 0.00107598304748535
start init-physical-csp-links 0.00805902481079102
start init-physical-non-csp-links 2.95134902000427
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.70619010925293
     start init-physical-BN-non-csp-links at local time 2.45233392715454
     start init-physical-BP-non-csp-links at local time 4.86691808700562
     end init-physical-BP-non-csp-links at local time 40.1457440853119
end init-physical-non-csp-links 43.0971291065216
start init-corner-B-c-values 43.0974969863892
start init-outer-B-candidates 43.0975680351257
start init-outer-I-candidates 43.0983638763428
start init-H-candidates 43.0987610816956
start init-V-candidates 43.1011888980865
start init-P-candidates 43.1033608913422
start init-inner-I-candidates 43.1069450378418
start init-inner-N-and-B-candidates 43.108293056488
start solution 43.1159031391144
entering BRT
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-diagonal-3s-in-{r3c3...r4c4} ==> Vr4c5 = 1, Vr3c3 = 1, Hr5c4 = 1, Hr3c3 = 1, Vr5c5 = 0, Vr2c3 = 0, Hr5c5 = 0, Hr3c2 = 0
w[1]-2-in-r5c5-open-nw-corner ==> Hr6c5 = 1, Vr5c6 = 1, Hr6c6 = 0, Vr6c6 = 0
w[1]-2-in-r6c6-open-nw-corner ==> Hr7c6 = 1, Vr6c7 = 1, Hr7c7 = 0, Vr7c7 = 0
w[1]-diagonal-3-2s-3-in-{r1c7...r4c4} ==> Vr4c4 = 1, Vr5c4 = 0, Hr5c3 = 0
w[1]-3-in-r7c6-hit-by-verti-line-at-ne ==> Vr7c6 = 1, Hr8c6 = 1
w[1]-3-in-r3c3-hit-by-verti-line-at-se ==> Hr4c4 = 0
w[1]-1+3+1-in-r3c4+r4c4+r4c3 ==> Hr3c4 = 0, Vr3c5 = 0, Vr4c3 = 0
w[1]-diagonal-3-2s-in-{r1c7...r3c5}-non-closed-sw-end ==> Hr4c5 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r4{c3 c4} ==> Hr4c3 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r4 r3}c3 ==> Vr3c4 = 1
w[1]-3-in-r7c6-closed-sw-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ne
w[1]-3-in-r7c6-closed-nw-corner ==> Pr8c7 ≠ nw, Pr8c7 ≠ o
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ o
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
w[1]-3-in-r3c3-closed-ne-corner ==> Pr4c3 ≠ ne, Pr4c3 ≠ o
adjacent-3s-in-c3{r6 r7} ==> Hr8c3 = 1, Hr7c3 = 1, Hr6c3 = 1, Hr7c4 = 0, Hr7c2 = 0
w[1]-1-in-r3c4-asymmetric-nw-corner ==> Pr4c5 ≠ ew, Pr4c5 ≠ ns
entering level Loop with <Fact-49309>
entering level Col with <Fact-49395>
vertical-line-r1{c7 c8} ==> Ir1c7 = in
horizontal-line-{r7 r8}c6 ==> Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
vertical-line-r6{c6 c7} ==> Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
no-horizontal-line-{r6 r7}c5 ==> Ir7c5 = out
horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
no-vertical-line-r4{c2 c3} ==> Ir4c2 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
no-vertical-line-r2{c2 c3} ==> Ir2c3 = out
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
vertical-line-r4{c4 c5} ==> Ir4c4 = out
horizontal-line-{r5 r6}c3 ==> Ir6c3 = out
horizontal-line-{r6 r7}c3 ==> Ir7c3 = in
vertical-line-r5{c5 c6} ==> Ir5c6 = out
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1

LOOP[8]: Vr6c7-Hr7c6-Vr7c6-Hr8c6-Hr8c7-Vr7c8-Vr6c8- ==> Hr6c7 = 0
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-r5{c6 c7} ==> Hr5c7 = 1

LOOP[10]: Vr5c7-Vr6c7-Hr7c6-Vr7c6-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8- ==> Hr5c7 = 0
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
Starting_init_links_with_<Fact-49507>
1243 candidates, 4084 csp-links and 15898 links. Density = 2.06%
starting non trivial part of solution
Entering_level_W1_with_<Fact-89476>
whip[1]: Vr4c8{1 .} ==> Br4c7 ≠ swn, Br4c8 ≠ o, Br4c7 ≠ o, Pr4c8 ≠ o, Pr4c8 ≠ nw, Pr5c8 ≠ o, Pr5c8 ≠ sw, Br4c7 ≠ n, Br4c7 ≠ s, Br4c7 ≠ w, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ sw
w[1]-3-in-r1c5-asymmetric-se-corner ==> Vr1c5 = 1, Hr1c5 = 1, Hr1c4 = 0
B-single: Br4c8 = w
no-horizontal-line-{r0 r1}c4 ==> Ir1c4 = out
vertical-line-r1{c4 c5} ==> Ir1c5 = in
same-colour-in-{r1 r2}c4 ==> Hr2c4 = 0
whip[1]: Vr1c5{1 .} ==> Br1c4 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ ew, Pr2c5 ≠ o, Pr2c5 ≠ se, Pr2c5 ≠ ew, Pr2c5 ≠ sw, Br1c4 ≠ n, Br1c4 ≠ s, Br1c4 ≠ w, Br1c4 ≠ ns, Br1c4 ≠ nw, Br1c4 ≠ sw, Br1c4 ≠ swn, Br1c5 ≠ nes
whip[1]: Br1c5{wne .} ==> Pr1c6 ≠ o
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ se, Br1c6 ≠ o, Br1c6 ≠ e, Br1c6 ≠ s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ swn, Br2c5 ≠ wne
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o, Pr1c5 ≠ sw, Pr1c6 ≠ se, Br1c5 ≠ esw
P-single: Pr1c5 = se
B-single: Br0c5 = s
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ ne, Br1c4 ≠ wne, Br1c4 ≠ nes
whip[1]: Br1c4{esw .} ==> Pr1c4 ≠ se, Pr1c4 ≠ ew
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ n, Br1c3 ≠ e, Br1c3 ≠ ns
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ swn, Br1c6 ≠ wne
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Hr2c4{0 .} ==> Pr2c4 ≠ se, Pr2c4 ≠ ew, Pr2c5 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ esw, Br2c4 ≠ n, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ swn
whip[1]: Br1c4{ew .} ==> Nr1c4 ≠ 3
whip[1]: Pr2c5{ns .} ==> Br2c5 ≠ s, Br2c5 ≠ se, Br2c5 ≠ o, Br2c5 ≠ e
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Pr2c4{nw .} ==> Vr1c4 ≠ 0, Br1c3 ≠ w, Br1c3 ≠ sw, Br2c3 ≠ ne, Br2c3 ≠ sw, Br1c3 ≠ o, Br1c3 ≠ s, Br1c4 ≠ e
V-single: Vr1c4 = 1
B-single: Br1c4 = ew
N-single: Nr1c4 = 2
P-single: Pr1c4 = sw
H-single: Hr1c3 = 1
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o, Pr1c3 ≠ o, Pr1c3 ≠ sw
B-single: Br0c3 = s
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ sw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c2 ≠ o, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ne
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Hr2c3{1 .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ sw, Pr2c4 ≠ ns, Br1c3 ≠ ne, Br1c3 ≠ wne, Br2c3 ≠ se, Br2c3 ≠ ew
P-single: Pr2c4 = nw
B-single: Br1c3 = nes
V-single: Vr1c3 = 0
N-single: Nr1c3 = 3
P-single: Pr1c3 = ew
H-single: Hr1c2 = 1
P-single: Pr2c3 = ew
H-single: Hr2c2 = 1

LOOP[6]: Hr2c2-Hr2c3-Vr1c4-Hr1c3-Hr1c2- ==> Vr1c2 = 0
horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1

LOOP[8]: Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c3-Hr2c2- ==> Hr2c1 = 0
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = in
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1

LOOP[10]: Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c3-Hr2c2-Vr2c2- ==> Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
w[1]-diagonal-3-2-in-{r3c3...r4c2}-non-closed-sw-corner ==> Hr5c2 = 1
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
w[0]-adjacent-3-in-r6c3-nolines-west ==> Vr6c4 = 1, Vr7c3 = 1, Vr7c4 = 0, Hr6c4 = 0
w[1]-3-in-r7c3-closed-sw-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-3-in-r7c3-closed-nw-corner ==> Pr8c4 ≠ nw, Pr8c4 ≠ o
w[1]-3-in-r6c3-closed-se-corner ==> Pr6c3 ≠ se, Pr6c3 ≠ nw, Pr6c3 ≠ o
w[1]-3-in-r6c3-closed-ne-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ne, Pr7c3 ≠ o
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = out
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
different-colours-in-r7{c4 c5} ==> Hr7c5 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-r6{c4 c5} ==> Hr6c5 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ w, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw
whip[1]: Br2c4{se .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ ns, Nr2c4 ≠ 3
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br3c3 ≠ esw, Br3c4 ≠ e, Br3c4 ≠ s
B-single: Br2c3 = ns
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br3c2 ≠ sw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br2c2 ≠ e, Br2c2 ≠ ne, Br3c2 ≠ o, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ne
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{w .} ==> Pr3c5 ≠ ns, Pr4c4 ≠ ne, Pr4c5 ≠ nw, Pr3c5 ≠ sw, Pr4c4 ≠ ew
P-single: Pr4c5 = se
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ w, Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ n, Br4c5 ≠ o, Br3c5 ≠ ne, Br3c5 ≠ nw, Br3c5 ≠ ew, Br3c5 ≠ sw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ nes
B-single: Br4c4 = esw
P-single: Pr7c7 = nw
P-single: Pr6c6 = nw
P-single: Pr5c4 = ne
P-single: Pr5c5 = nw
w[1]-1-in-r4c3-asymmetric-se-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ ns
whip[1]: Pr7c7{nw .} ==> Br7c7 ≠ n, Br6c7 ≠ s, Br6c7 ≠ e, Br6c7 ≠ n, Br6c7 ≠ o, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes, Br7c6 ≠ esw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c7 ≠ w, Br7c7 ≠ nw, Br7c7 ≠ esw, Br7c7 ≠ nes
B-single: Br7c6 = swn
P-single: Pr8c6 = ne
P-single: Pr8c7 = ew
P-single: Pr7c6 = se
B-single: Br6c6 = se
whip[1]: Pr8c6{ne .} ==> Br7c5 ≠ n, Br7c5 ≠ o, Br8c6 ≠ o, Br8c5 ≠ n, Br7c5 ≠ s, Br7c5 ≠ w, Br7c5 ≠ ns, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ nes
B-single: Br8c5 = o
B-single: Br8c6 = n
whip[1]: Pr8c5{nw .} ==> Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br7c4 ≠ e, Br7c4 ≠ s
whip[1]: Br7c5{wne .} ==> Nr7c5 ≠ 0
whip[1]: Pr8c7{ew .} ==> Br7c7 ≠ o, Br8c7 ≠ o
B-single: Br8c7 = n
P-single: Pr8c8 = nw
B-single: Br7c7 = se
N-single: Nr7c7 = 2
P-single: Pr7c8 = ns
whip[1]: Pr7c8{ns .} ==> Br6c7 ≠ w, Br6c7 ≠ nw
whip[1]: Br6c7{wne .} ==> Pr6c8 ≠ o, Pr6c8 ≠ nw, Nr6c7 ≠ 0, Nr6c7 ≠ 1
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ esw, Br5c7 ≠ nes, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{wne .} ==> Nr5c7 ≠ 0
whip[1]: Pr7c6{se .} ==> Br6c5 ≠ s, Br6c5 ≠ e, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ nes, Br7c5 ≠ ne, Br7c5 ≠ wne
whip[1]: Br7c5{ew .} ==> Pr7c5 ≠ ne, Pr7c5 ≠ se, Pr7c5 ≠ ew, Nr7c5 ≠ 3
whip[1]: Br6c5{nw .} ==> Nr6c5 ≠ 3
whip[1]: Pr6c7{se .} ==> Br5c6 ≠ ns, Br5c6 ≠ se, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ nes, Br5c7 ≠ ne, Br5c7 ≠ sw, Br5c7 ≠ swn, Br5c6 ≠ s, Br5c7 ≠ e
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o, Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ sw, Br5c6 ≠ ne, Br6c5 ≠ w
B-single: Br5c5 = se
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ swn, Br4c6 ≠ ne, Br4c6 ≠ sw
whip[1]: Br4c5{wne .} ==> Pr4c6 ≠ ne, Pr4c6 ≠ ns, Nr4c5 ≠ 0, Nr4c5 ≠ 1
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br4c6 ≠ nw
whip[1]: Br4c6{ew .} ==> Pr5c7 ≠ o, Pr5c7 ≠ se
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ wne
whip[1]: Br5c7{ew .} ==> Nr5c7 ≠ 3
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ wne, Br5c4 ≠ nes, Br6c4 ≠ sw, Br6c4 ≠ wne, Br6c4 ≠ nes, Br5c4 ≠ e, Br5c4 ≠ ne, Br6c4 ≠ o, Br6c4 ≠ s, Br6c4 ≠ w, Br6c4 ≠ ne
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br6c5{nw .} ==> Nr6c5 ≠ 0
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 0
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ o, Br5c3 ≠ n, Br4c3 ≠ n, Br4c3 ≠ s, Br4c3 ≠ w, Br5c3 ≠ e, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ nes, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ nw, Br5c4 ≠ sw, Br5c4 ≠ swn
B-single: Br4c3 = e
P-single: Pr4c3 = nw
P-single: Pr4c4 = ns
P-single: Pr5c3 = sw
w[1]-1-in-r3c4-asymmetric-sw-corner ==> Pr3c5 ≠ ew, Pr3c5 ≠ nw
whip[1]: Pr4c3{nw .} ==> Br3c2 ≠ e, Br3c2 ≠ n, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ swn, Br3c3 ≠ swn, Br3c3 ≠ nes, Br4c2 ≠ ne, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ sw
B-single: Br3c3 = wne
P-single: Pr3c3 = se
P-single: Pr3c4 = sw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ s, Br2c2 ≠ ns, Br2c2 ≠ sw, Br2c2 ≠ swn
whip[1]: Br2c2{nw .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ se, Pr3c2 ≠ ew, Nr2c2 ≠ 3
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ se
B-single: Br3c4 = w
whip[1]: Br2c4{e .} ==> Nr2c4 ≠ 2
whip[1]: Br4c2{nw .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ sw
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ nw, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ w, Br4c1 ≠ e, Br4c1 ≠ ne
B-single: Br4c2 = ns
whip[1]: Pr5c2{ew .} ==> Br5c1 ≠ sw, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ne, Br5c2 ≠ o, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ w
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 1
whip[1]: Pr5c3{sw .} ==> Br5c3 ≠ s, Br5c3 ≠ o, Br5c2 ≠ ns, Br5c2 ≠ n, Br5c2 ≠ nw, Br5c2 ≠ swn
whip[1]: Br5c2{nes .} ==> Pr6c2 ≠ ne, Pr6c3 ≠ ew, Pr6c3 ≠ sw, Nr5c2 ≠ 1
whip[1]: Pr6c3{ns .} ==> Br5c2 ≠ nes, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c2 ≠ n
whip[1]: Br6c2{esw .} ==> Pr6c2 ≠ se, Pr6c2 ≠ ew
whip[1]: Br6c3{nes .} ==> Pr6c4 ≠ o, Pr6c4 ≠ ne, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr7c3 ≠ ns, Pr7c3 ≠ nw, Pr7c4 ≠ ns, Pr7c4 ≠ se, Pr7c4 ≠ ew
P-single: Pr7c4 = nw
whip[1]: Pr7c4{nw .} ==> Br7c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ n, Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ esw, Br6c4 ≠ swn, Br7c3 ≠ esw, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ w, Br7c4 ≠ nw, Br7c4 ≠ esw, Br7c4 ≠ nes
B-single: Br7c3 = swn
P-single: Pr8c3 = ne
P-single: Pr8c4 = ew
P-single: Pr7c3 = se
whip[1]: Pr8c3{ne .} ==> Br7c2 ≠ n, Br7c2 ≠ o, Br8c3 ≠ o, Br8c2 ≠ n, Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ nes
B-single: Br8c2 = o
B-single: Br8c3 = n
whip[1]: Pr8c2{nw .} ==> Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ swn, Br7c1 ≠ e
whip[1]: Br7c1{esw .} ==> Pr7c1 ≠ se, Pr7c2 ≠ sw, Nr7c1 ≠ 2
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ ns, Br6c1 ≠ se
whip[1]: Br6c1{sw .} ==> Pr6c1 ≠ o, Pr7c2 ≠ nw
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ n, Br5c1 ≠ e
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 1
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ o, Br8c4 ≠ o
B-single: Br8c4 = n
P-single: Pr8c5 = nw
B-single: Br7c4 = se
N-single: Nr7c4 = 2
P-single: Pr7c5 = ns
whip[1]: Pr8c5{nw .} ==> Br7c5 ≠ e
B-single: Br7c5 = ew
N-single: Nr7c5 = 2
whip[1]: Pr7c5{ns .} ==> Br6c5 ≠ n, Br6c4 ≠ nw
B-single: Br6c4 = ew
N-single: Nr6c4 = 2
P-single: Pr6c5 = se
B-single: Br6c5 = nw
N-single: Nr6c5 = 2
whip[1]: Pr6c5{se .} ==> Br5c4 ≠ ns
B-single: Br5c4 = n
N-single: Nr5c4 = 1
P-single: Pr6c4 = sw
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ w, Br6c3 ≠ esw
B-single: Br6c3 = nes
P-single: Pr6c3 = ne
B-single: Br5c3 = sw
N-single: Nr5c3 = 2
whip[1]: Pr6c3{ne .} ==> Br6c2 ≠ e, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw
whip[1]: Br6c2{sw .} ==> Nr6c2 ≠ 3
whip[1]: Pr7c3{se .} ==> Br6c2 ≠ s, Br6c2 ≠ sw, Br7c2 ≠ ne, Br7c2 ≠ wne
whip[1]: Br7c2{ew .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ se, Pr7c2 ≠ ew, Nr7c2 ≠ 3
whip[1]: Pr7c2{ns .} ==> Hr7c1 ≠ 1, Br6c1 ≠ sw, Br7c1 ≠ n
H-single: Hr7c1 = 0
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ nw
whip[1]: Br7c1{esw .} ==> Nr7c1 ≠ 1
whip[1]: Br6c2{w .} ==> Nr6c2 ≠ 2
whip[1]: Pr3c5{ne .} ==> Br2c5 ≠ w, Br2c5 ≠ ns, Br2c5 ≠ ew, Br2c5 ≠ nes
whip[1]: Vr1c3{0 .} ==> Br1c2 ≠ e, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw
whip[1]: Br1c2{swn .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Nr1c1 ≠ 0
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ w, Br2c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ nw
whip[1]: Br1c2{swn .} ==> Pr2c2 ≠ o, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Pr2c2 ≠ sw, Nr1c2 ≠ 1
whip[1]: Pr2c2{ew .} ==> Br1c1 ≠ se, Br2c1 ≠ wne, Br2c1 ≠ nes, Br2c1 ≠ ne
whip[1]: Br1c1{swn .} ==> Pr2c1 ≠ se
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ nw, Br2c1 ≠ swn
whip[1]: Br2c2{nw .} ==> Nr2c2 ≠ 0
whip[1]: Vr1c2{0 .} ==> Pr1c2 ≠ se, Pr2c2 ≠ ne, Br1c1 ≠ e, Br1c2 ≠ swn
P-single: Pr1c2 = ew
B-single: Br1c2 = ns
N-single: Nr1c2 = 2
whip[1]: Br1c1{swn .} ==> Pr1c1 ≠ o, Pr2c1 ≠ o, Nr1c1 ≠ 1
P-single: Pr1c1 = se
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ s, Br2c1 ≠ se, Br2c1 ≠ o, Br2c1 ≠ e
whip[1]: Br2c1{esw .} ==> Nr2c1 ≠ 0
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ sw, Br2c1 ≠ w
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Hr2c1{0 .} ==> Pr2c1 ≠ ne, Pr2c2 ≠ ew, Br1c1 ≠ swn, Br2c1 ≠ n, Br2c1 ≠ ns
P-single: Pr2c2 = se
P-single: Pr2c1 = ns
B-single: Br1c1 = nw
N-single: Nr1c1 = 2
whip[1]: Pr2c2{se .} ==> Br2c2 ≠ n
B-single: Br2c2 = nw
N-single: Nr2c2 = 2
whip[1]: Pr3c2{nw .} ==> Br3c1 ≠ ne, Br3c1 ≠ sw, Br3c1 ≠ wne, Br3c1 ≠ s
whip[1]: Br2c1{esw .} ==> Pr3c1 ≠ o, Pr3c1 ≠ se, Nr2c1 ≠ 1
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ swn, Br3c1 ≠ e
whip[1]: Br3c1{ew .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ne, Nr3c1 ≠ 1, Nr3c1 ≠ 3
N-single: Nr3c1 = 2
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ns, Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ s
whip[1]: Br4c1{swn .} ==> Pr5c1 ≠ o, Pr5c1 ≠ se, Nr4c1 ≠ 0
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ se, Br5c1 ≠ swn
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Hr3c1{0 .} ==> Pr3c1 ≠ ne, Pr3c2 ≠ nw, Br2c1 ≠ esw, Br3c1 ≠ ns
P-single: Pr3c2 = ns
P-single: Pr3c1 = ns
B-single: Br3c1 = ew
P-single: Pr4c1 = ns
P-single: Pr4c2 = ne
B-single: Br2c1 = ew
N-single: Nr2c1 = 2
whip[1]: Pr3c2{ns .} ==> Br3c2 ≠ se
B-single: Br3c2 = esw
N-single: Nr3c2 = 3
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ nw, Br4c1 ≠ swn
whip[1]: Br4c1{sw .} ==> Nr4c1 ≠ 3
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Pr2c6{sw .} ==> Br2c6 ≠ nw, Br2c6 ≠ se
whip[1]: Pr3c7{sw .} ==> Br3c7 ≠ nw, Br3c7 ≠ se
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Pr5c8{nw .} ==> Br5c7 ≠ s
whip[1]: Br5c7{ew .} ==> Pr5c7 ≠ nw, Nr5c7 ≠ 1
N-single: Nr5c7 = 2
P-single: Pr3c5 = ne
H-single: Hr3c5 = 1
V-single: Vr2c5 = 1
w[1]-3-in-r1c5-hit-by-verti-line-at-sw ==> Vr1c6 = 1
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ ne
P-single: Pr2c5 = ns
H-single: Hr2c5 = 0

LOOP[6]: Vr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c5- ==> Vr2c6 = 0
w[1]-diagonal-3-2-in-{r1c7...r2c6}-non-closed-sw-corner ==> Hr3c6 = 1
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ o
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1

LOOP[12]: Vr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Vr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c5-Hr3c6- ==> Hr3c7 = 0
w[1]-diagonal-3-2s-in-{r7c3...r3c7}-non-closed-ne-end ==> Vr3c8 = 1
vertical-line-r3{c7 c8} ==> Ir3c7 = in
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1

LOOP[24]: Vr3c7-Hr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Vr7c6-Hr7c6-Vr6c7-Vr5c7- ==> Vr4c7 = 0
w[1]-diagonal-3-2s-in-{r7c3...r4c6}-non-closed-ne-end ==> Hr4c6 = 1
horizontal-line-{r3 r4}c6 ==> Ir4c6 = in
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1

LOOP[58]: Hr5c2-Vr5c3-Hr6c3-Vr6c4-Hr7c3-Vr7c3-Hr8c3-Hr8c4-Vr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c6-Vr5c7-Vr6c7-Hr7c6-Vr7c6-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Vr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c5-Hr3c6-Vr3c7-Hr4c6-Hr4c5-Vr4c5-Hr5c4-Vr4c4-Vr3c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1- ==> Hr5c1 = 0
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1

LOOP[60]: Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Vr3c4-Vr4c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Vr3c7-Hr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Vr7c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2- ==> Hr6c1 = 0
P-single: Pr7c1 = ns
V-single: Vr6c1 = 1
V-single: Vr7c1 = 1
P-single: Pr7c2 = ns
V-single: Vr6c2 = 1
V-single: Vr7c2 = 1

LOOP[64]: Vr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Vr3c4-Vr4c4-Hr5c4-Vr4c5-Hr4c5-Hr4c6-Vr3c7-Hr3c6-Hr3c5-Vr2c5-Vr1c5-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Vr7c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Vr6c2-Vr7c2- ==> Hr8c1 = 1

LOOP[62]: Hr3c5-Vr2c5-Vr1c5-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Vr7c6-Hr7c6-Vr6c7-Vr5c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Vr7c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Vr6c2-Vr7c2-Hr8c1-Vr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Vr3c4-Vr4c4-Hr5c4-Vr4c5-Hr4c5- ==> Vr3c6 = 0
horizontal-line-{r7 r8}c1 ==> Ir7c1 = in
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXOXOX
XOOOXXX
XOXOOOX
XXXOXXX
XOXXXOX
XOOXOOX
XOXXOXX

.———.———.———.   .———.   .———.
|           |   | 3 |   | 3 |
.   .———.———.   .   .———.   .
|   |     2     |     2     |
.   .   .———.   .———.———.   .
|   |   | 3 | 1   2     | 2 |
.   .———.   .   .———.———.   .
|     2   1 | 3 |     2     |
.   .———.   .———.   .———.   .
|   |   |         2 |   |   |
.   .   .———.   .———.   .   .
| 2 |     3 |   |     2 |   |
.   .   .———.   .   .———.   .
|   |   | 3     |   | 3     |
.———.   .———.———.   .———.———.

init-time = 43.12s, solve-time = 24.2s, total-time = 1m 7.32s
nb-facts=<Fact-96299>
Quasi-Loop max length = 64
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
