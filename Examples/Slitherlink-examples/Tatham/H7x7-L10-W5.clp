

(solve-tatham
7 7
"a23a1a3b2c2a323a322e2b22a1e2233132c"
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 3 . 1 . 3
. . 2 . . . 2
. 3 2 3 . 3 2
2 . . . . . 2
. . 2 2 . 1 .
. . . . 2 2 3
3 1 3 2 . . .

start init-grid-structure 3.50475311279297e-05
start create-csp-variables
start create-labels 0.00102591514587402
start init-physical-csp-links 0.00780606269836426
start init-physical-non-csp-links 2.89279294013977
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.58795690536499
     start init-physical-BN-non-csp-links at local time 2.3373658657074
     start init-physical-BP-non-csp-links at local time 4.73384189605713
     end init-physical-BP-non-csp-links at local time 32.1852929592133
end init-physical-non-csp-links 35.0781359672546
start init-corner-B-c-values 35.0784518718719
start init-outer-B-candidates 35.0785069465637
start init-outer-I-candidates 35.0791220664978
start init-H-candidates 35.0794789791107
start init-V-candidates 35.0814819335938
start init-P-candidates 35.0834078788757
start init-inner-I-candidates 35.0865850448608
start init-inner-N-and-B-candidates 35.0878970623016
start solution 35.0938410758972
entering BRT
w[1]-3-in-sw-corner ==> Vr7c1 = 1, Hr8c1 = 1
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-adjacent-1-3-on-edge-in-r7{c2 c3} ==> Vr7c2 = 0, Hr8c3 = 1, Hr7c2 = 0
w[1]-adjacent-1-3-on-edge-in-r7{c2 c1} ==> Vr7c3 = 0
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
entering level Loop with <Fact-48950>
entering level Col with <Fact-49028>
vertical-line-r1{c7 c8} ==> Ir1c7 = in
vertical-line-r7{c0 c1} ==> Ir7c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
w[1]-3-in-r7c1-hit-by-horiz-line-at-se ==> Hr7c1 = 1
w[1]-3-in-r7c3-hit-by-horiz-line-at-sw ==> Vr7c4 = 1, Hr7c3 = 1
w[1]-3-in-r7c3-closed-ne-corner ==> Pr8c3 ≠ ne, Pr8c3 ≠ o
w[1]-3-in-r7c3-closed-se-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ o
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ nw, Pr8c2 ≠ o
w[1]-1-in-r5c6-asymmetric-sw-corner ==> Pr5c7 ≠ ew, Pr5c7 ≠ se, Pr5c7 ≠ nw, Pr5c7 ≠ ns
w[1]-3-in-r3c6-asymmetric-se-corner ==> Vr3c6 = 1, Hr3c6 = 1, Vr2c6 = 0, Hr3c5 = 0
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = out
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1

LOOP[10]: Vr6c3-Hr7c3-Vr7c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Vr6c2- ==> Hr6c2 = 0
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = in
Starting_init_links_with_<Fact-49238>
1247 candidates, 3861 csp-links and 16202 links. Density = 2.09%
starting non trivial part of solution
Entering_level_W1_with_<Fact-89369>
whip[1]: Hr6c2{0 .} ==> Br6c2 ≠ nes, Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew, Pr6c3 ≠ nw, Pr6c3 ≠ ew, Pr6c3 ≠ sw, Br5c2 ≠ s, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ nes, Br6c2 ≠ n, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Vr6c3{1 .} ==> Br6c3 ≠ nes, Br6c2 ≠ o, Br6c3 ≠ o, Pr6c3 ≠ o, Pr6c3 ≠ ne, Pr7c3 ≠ ew, Pr7c3 ≠ sw, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ sw, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ s, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ se
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br5c3 ≠ sw, Br4c4 ≠ o, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ne, Br5c3 ≠ ne
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 0
whip[1]: Br6c2{esw .} ==> Nr6c2 ≠ 0
whip[1]: Pr7c3{ns .} ==> Br6c2 ≠ se, Br6c2 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c2 ≠ n
whip[1]: Br7c2{w .} ==> Pr8c2 ≠ ne, Pr8c3 ≠ nw, Pr7c2 ≠ se, Pr7c2 ≠ ew
P-single: Pr8c3 = ew
P-single: Pr8c2 = ew
w[1]-1-in-r7c2-asymmetric-sw-corner ==> Pr7c3 ≠ ns
P-single: Pr7c3 = ne
w[1]-1-in-r7c2-asymmetric-se-corner ==> Pr7c2 ≠ ns
P-single: Pr7c2 = nw
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ w, Br7c2 ≠ e, Br8c3 ≠ o, Br8c2 ≠ o, Br7c3 ≠ esw
B-single: Br7c3 = nes
P-single: Pr8c4 = nw
P-single: Pr7c4 = sw
B-single: Br8c2 = n
B-single: Br8c3 = n
B-single: Br7c2 = s
whip[1]: Pr8c4{nw .} ==> Br8c4 ≠ n, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ se, Br7c4 ≠ sw
B-single: Br8c4 = o
P-single: Pr8c5 = ne
H-single: Hr8c5 = 1
V-single: Vr7c5 = 1
vertical-line-r7{c4 c5} ==> Ir7c5 = in
whip[1]: Pr8c5{ne .} ==> Br7c5 ≠ n, Br7c5 ≠ o, Br8c5 ≠ o, Br7c4 ≠ nw, Br7c5 ≠ e, Br7c5 ≠ s, Br7c5 ≠ w, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ wne, Br7c5 ≠ nes
B-single: Br7c4 = ew
B-single: Br8c5 = n
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ o, Br7c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ ne
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Pr7c5{se .} ==> Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn, Br6c4 ≠ nes, Br6c5 ≠ ne, Br6c5 ≠ sw, Br6c4 ≠ s
whip[1]: Br7c5{swn .} ==> Pr7c6 ≠ sw, Nr7c5 ≠ 0, Nr7c5 ≠ 1
whip[1]: Pr7c4{sw .} ==> Br6c4 ≠ w, Br6c3 ≠ w, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ esw, Br6c3 ≠ wne, Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ wne
whip[1]: Br6c4{ne .} ==> Pr6c4 ≠ ns, Pr6c4 ≠ se, Nr6c4 ≠ 3, Pr6c4 ≠ sw
whip[1]: Br6c3{swn .} ==> Nr6c3 ≠ 1
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ o, Br7c1 ≠ esw
B-single: Br7c1 = swn
P-single: Pr8c1 = ne
P-single: Pr7c1 = se
B-single: Br8c1 = n
whip[1]: Pr7c1{se .} ==> Br6c1 ≠ w, Br6c1 ≠ e, Br6c1 ≠ n, Br6c1 ≠ o, Br6c1 ≠ ne, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c1 ≠ wne
whip[1]: Br6c1{nes .} ==> Pr6c1 ≠ ns, Pr6c1 ≠ se, Nr6c1 ≠ 0
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Pr7c2{nw .} ==> Br6c2 ≠ e, Br6c1 ≠ s, Br6c1 ≠ ns
B-single: Br6c2 = ew
N-single: Nr6c2 = 2
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ esw, Br5c1 ≠ o, Br5c1 ≠ n
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 1
whip[1]: Hr3c5{0 .} ==> Br3c5 ≠ nes, Pr3c5 ≠ ne, Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c6 ≠ nw, Pr3c6 ≠ ew, Pr3c6 ≠ sw, Br2c5 ≠ s, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ nes, Br3c5 ≠ n, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Vr2c6{0 .} ==> Br2c6 ≠ wne, Pr2c6 ≠ ns, Pr2c6 ≠ se, Pr2c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Br2c5 ≠ e, Br2c5 ≠ ne, Br2c5 ≠ ew, Br2c5 ≠ wne, Br2c6 ≠ w, Br2c6 ≠ nw, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn
whip[1]: Br2c5{nw .} ==> Nr2c5 ≠ 3
whip[1]: Pr3c6{se .} ==> Br3c6 ≠ esw, Br3c6 ≠ nes
whip[1]: Br3c6{wne .} ==> Pr3c6 ≠ o, Pr3c7 ≠ o, Pr3c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ se, Pr4c6 ≠ o, Pr4c6 ≠ se, Pr4c6 ≠ ew, Pr4c6 ≠ sw
P-single: Pr3c6 = se
whip[1]: Pr3c6{se .} ==> Br3c5 ≠ w, Br3c5 ≠ s, Br3c5 ≠ o, Br2c6 ≠ e, Br2c6 ≠ n, Br2c6 ≠ o, Br2c6 ≠ ne, Br3c5 ≠ sw
whip[1]: Br3c5{esw .} ==> Nr3c5 ≠ 0
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ ne, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Pr3c7{sw .} ==> Br2c7 ≠ sw, Br3c7 ≠ nw
whip[1]: Br3c7{sw .} ==> Pr4c8 ≠ o
P-single: Pr4c8 = sw
H-single: Hr4c7 = 1
V-single: Vr3c8 = 0
V-single: Vr4c8 = 1
w[1]-3-in-r3c6-hit-by-horiz-line-at-se ==> Vr4c7 = 0
w[3]-adjacent-3-2-in-r3{c6 c7}-noline-east ==> Vr2c7 = 0
vertical-line-r4{c7 c8} ==> Ir4c7 = in
no-vertical-line-r4{c6 c7} ==> Ir4c6 = in
horizontal-line-{r3 r4}c7 ==> Ir3c7 = out
whip[1]: Pr4c8{sw .} ==> Br4c7 ≠ ns, Br3c7 ≠ ne, Br3c7 ≠ se, Br3c7 ≠ ew, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ sw
B-single: Br4c7 = ne
H-single: Hr5c7 = 0
P-single: Pr5c8 = ns
V-single: Vr5c8 = 1
w[1]-3-in-r6c7-hit-by-verti-line-at-ne ==> Vr6c7 = 1, Hr7c7 = 1
w[1]-3-in-r6c7-closed-sw-corner ==> Pr6c8 ≠ sw, Pr6c8 ≠ o
P-single: Pr4c7 = ew
H-single: Hr4c6 = 1
V-single: Vr3c7 = 0
w[1]-3-in-r3c6-closed-sw-corner ==> Pr3c7 ≠ sw
P-single: Pr3c7 = ew
H-single: Hr3c7 = 1
horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
vertical-line-r3{c5 c6} ==> Ir3c6 = out
vertical-line-r5{c7 c8} ==> Ir5c7 = in
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
w[1]-3-in-r1c7-hit-by-verti-line-at-se ==> Vr1c7 = 1
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ nw
P-single: Pr2c8 = ns
H-single: Hr2c7 = 0
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
whip[1]: Hr5c7{0 .} ==> Br5c7 ≠ n, Br5c7 ≠ ne, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ swn, Br5c7 ≠ wne, Br5c7 ≠ nes
whip[1]: Pr5c8{ns .} ==> Br5c7 ≠ o, Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ sw
whip[1]: Br5c7{esw .} ==> Nr5c7 ≠ 0
whip[1]: Vr5c8{1 .} ==> Br5c8 ≠ o
B-single: Br5c8 = w
whip[1]: Vr6c7{1 .} ==> Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr7c7 ≠ o, Pr7c7 ≠ se, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ sw, Br6c7 ≠ nes
whip[1]: Pr6c6{ew .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ nes, Br6c6 ≠ se, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ w, Br5c6 ≠ n, Br5c6 ≠ e
whip[1]: Br5c6{w .} ==> Hr5c6 ≠ 1, Vr5c7 ≠ 1, Pr5c6 ≠ ne, Pr6c7 ≠ ns, Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c7 ≠ sw
V-single: Vr5c7 = 0
H-single: Hr5c6 = 0
P-single: Pr5c7 = o
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
whip[1]: Vr5c7{0 .} ==> Br5c7 ≠ ew, Br5c7 ≠ esw
whip[1]: Br5c7{se .} ==> Nr5c7 ≠ 3
whip[1]: Hr5c6{0 .} ==> Br4c6 ≠ s, Br4c6 ≠ ns, Br4c6 ≠ se, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ nes
whip[1]: Br4c6{ew .} ==> Nr4c6 ≠ 3
whip[1]: Pr5c7{o .} ==> Br4c6 ≠ e, Br4c6 ≠ ne, Br4c6 ≠ ew
whip[1]: Br4c6{w .} ==> Nr4c6 ≠ 2
whip[1]: Br5c5{wne .} ==> Nr5c5 ≠ 0
whip[1]: Br6c6{ew .} ==> Pr7c6 ≠ se, Pr7c6 ≠ ew
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ ns, Br7c6 ≠ ns, Br7c6 ≠ nw, Br7c6 ≠ wne, Br7c6 ≠ nes
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 3
whip[1]: Br6c5{ew .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ ew
whip[1]: Pr6c5{sw .} ==> Br5c5 ≠ sw, Br5c5 ≠ swn
whip[1]: Br6c7{wne .} ==> Pr7c8 ≠ o
whip[1]: Pr7c8{sw .} ==> Br7c7 ≠ o, Br7c7 ≠ w
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Pr7c7{ns .} ==> Br7c7 ≠ nw, Br7c7 ≠ se
whip[1]: Br7c7{nes .} ==> Pr8c7 ≠ nw, Nr7c7 ≠ 2
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ se
whip[1]: Hr7c7{1 .} ==> Pr7c8 ≠ ns, Pr7c7 ≠ ns, Br6c7 ≠ wne, Br7c7 ≠ esw
P-single: Pr7c7 = ne
whip[1]: Pr7c7{ne .} ==> Br7c6 ≠ ew
whip[1]: Br7c6{w .} ==> Pr8c7 ≠ ne, Nr7c6 ≠ 2
N-single: Nr7c6 = 1
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ w, Br4c6 ≠ o, Br3c6 ≠ wne, Br3c7 ≠ sw
B-single: Br3c7 = ns
P-single: Pr2c7 = nw
P-single: Pr3c8 = nw
B-single: Br3c6 = swn
P-single: Pr4c6 = ne
B-single: Br4c6 = n
N-single: Nr4c6 = 1
whip[1]: Pr2c7{nw .} ==> Br2c6 ≠ s, Br1c6 ≠ s, Br1c6 ≠ e, Br1c6 ≠ n, Br1c6 ≠ o, Br1c6 ≠ w, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c7 ≠ nes, Br2c6 ≠ se, Br2c6 ≠ nes, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ ew
B-single: Br2c7 = se
B-single: Br2c6 = ns
N-single: Nr2c6 = 2
B-single: Br1c7 = wne
P-single: Pr1c8 = sw
P-single: Pr1c7 = se
w[1]-1-in-r1c5-asymmetric-se-corner ==> Pr1c5 ≠ sw, Pr1c5 ≠ ew
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ nes
whip[1]: Br1c6{esw .} ==> Pr1c6 ≠ se, Pr1c6 ≠ ew, Nr1c6 ≠ 0, Nr1c6 ≠ 1
w[1]-1-in-r1c5-symmetric-ne-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
whip[1]: Pr2c5{ew .} ==> Br2c4 ≠ sw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br1c5 ≠ n, Br1c5 ≠ e, Br2c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ne
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0
whip[1]: Br1c5{w .} ==> Hr1c5 ≠ 1, Vr1c6 ≠ 1, Pr2c6 ≠ ne, Pr1c5 ≠ se, Pr1c6 ≠ sw
V-single: Vr1c6 = 0
H-single: Hr1c5 = 0
P-single: Pr1c6 = o
P-single: Pr1c5 = o
H-single: Hr1c4 = 0
V-single: Vr1c5 = 0
P-single: Pr2c6 = ew
H-single: Hr2c5 = 1
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
whip[1]: Vr1c6{0 .} ==> Br1c6 ≠ esw
B-single: Br1c6 = se
N-single: Nr1c6 = 2
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Pr1c5{o .} ==> Br1c4 ≠ n, Br1c4 ≠ e, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes, Br1c5 ≠ w
B-single: Br1c5 = s
whip[1]: Pr2c5{ew .} ==> Br2c5 ≠ o, Br2c5 ≠ w
whip[1]: Br2c5{nw .} ==> Nr2c5 ≠ 0
whip[1]: Br1c4{sw .} ==> Pr1c4 ≠ se, Pr1c4 ≠ ew, Nr1c4 ≠ 3
w[1]-3-in-r1c3-symmetric-ne-corner ==> Vr1c4 = 1, Hr1c3 = 1
w[1]-3-in-r1c3-closed-ne-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
whip[1]: Vr1c4{1 .} ==> Br1c4 ≠ o, Pr1c4 ≠ o, Pr2c4 ≠ o, Pr2c4 ≠ se, Pr2c4 ≠ ew, Pr2c4 ≠ sw, Br1c3 ≠ swn, Br1c4 ≠ s
P-single: Pr1c4 = sw
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ esw
whip[1]: Br1c3{nes .} ==> Pr1c3 ≠ o, Pr1c3 ≠ sw
whip[1]: Pr2c2{ew .} ==> Br1c2 ≠ sw, Br2c1 ≠ sw, Br2c1 ≠ wne, Br2c1 ≠ nes, Br1c2 ≠ ne, Br2c1 ≠ o, Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ ne
whip[1]: Br2c1{swn .} ==> Nr2c1 ≠ 0
whip[1]: Br1c4{sw .} ==> Nr1c4 ≠ 0
whip[1]: Pr2c4{nw .} ==> Br2c3 ≠ ne, Br2c4 ≠ nw, Br2c4 ≠ swn
whip[1]: Br2c3{sw .} ==> Pr3c3 ≠ o, Pr3c3 ≠ sw
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ wne, Br3c2 ≠ nes
whip[1]: Br3c2{swn .} ==> Hr4c2 ≠ 0, Vr3c2 ≠ 0, Pr3c2 ≠ o, Pr3c2 ≠ ne, Pr3c2 ≠ nw, Pr3c2 ≠ ew, Pr3c3 ≠ ne, Pr4c2 ≠ o, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Pr4c3 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ se
V-single: Vr3c2 = 1
H-single: Hr4c2 = 1
w[1]-2-in-r4c1-open-ne-corner ==> Hr5c1 = 1, Vr4c1 = 1, Vr5c1 = 0
P-single: Pr5c1 = ne
P-single: Pr4c2 = ne
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
horizontal-line-{r3 r4}c2 ==> Ir3c2 = out
vertical-line-r3{c1 c2} ==> Ir3c1 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
same-colour-in-{r4 r5}c2 ==> Hr5c2 = 0
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
whip[1]: Vr3c2{1 .} ==> Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ sw, Br3c1 ≠ swn
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Hr4c2{1 .} ==> Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Hr4c1{0 .} ==> Pr4c1 ≠ ne, Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nw
P-single: Pr4c1 = ns
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ ne, Br4c1 ≠ se
whip[1]: Br3c1{wne .} ==> Pr3c1 ≠ o, Pr3c1 ≠ ne, Nr3c1 ≠ 1
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ n, Br2c1 ≠ e
whip[1]: Br2c1{ew .} ==> Nr2c1 ≠ 1, Nr2c1 ≠ 3
N-single: Nr2c1 = 2
whip[1]: Vr4c2{0 .} ==> Pr5c2 ≠ ne, Pr5c2 ≠ ns, Br4c1 ≠ ew, Br4c2 ≠ nw, Br4c2 ≠ swn, Br4c2 ≠ wne
B-single: Br4c1 = sw
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ sw, Br5c2 ≠ nw, Br5c2 ≠ wne, Br5c1 ≠ e, Br5c2 ≠ o, Br5c2 ≠ e
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 0, Nr5c2 ≠ 3
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 1
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e, Pr6c1 ≠ ne, Br5c1 ≠ swn
P-single: Pr6c1 = o
B-single: Br5c1 = ne
N-single: Nr5c1 = 2
P-single: Pr5c2 = sw
P-single: Pr6c2 = ns
B-single: Br5c0 = o
whip[1]: Pr6c1{o .} ==> Br6c1 ≠ nes
B-single: Br6c1 = se
N-single: Nr6c1 = 2
whip[1]: Pr5c2{sw .} ==> Br5c2 ≠ ne, Br5c2 ≠ n, Br4c2 ≠ ns, Br4c2 ≠ nes
whip[1]: Br4c2{ne .} ==> Pr5c3 ≠ nw, Nr4c2 ≠ 3, Pr5c3 ≠ ew, Pr5c3 ≠ sw
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Pr2c4{nw .} ==> Hr2c4 ≠ 1, Br1c4 ≠ sw, Br2c3 ≠ sw, Br2c4 ≠ ns, Br2c4 ≠ n
H-single: Hr2c4 = 0
B-single: Br1c4 = w
N-single: Nr1c4 = 1
P-single: Pr2c5 = se
V-single: Vr2c5 = 1
w[1]-3-in-r3c4-hit-by-verti-line-at-ne ==> Vr3c4 = 1, Hr4c4 = 1
w[1]-3-in-r3c4-closed-sw-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ o
vertical-line-r2{c4 c5} ==> Ir2c4 = out
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ n
B-single: Br2c5 = nw
N-single: Nr2c5 = 2
whip[1]: Vr3c4{1 .} ==> Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr4c4 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ sw, Br3c4 ≠ nes
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ nes, Br3c3 ≠ se, Br2c2 ≠ o, Br2c2 ≠ n, Br2c2 ≠ w
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br3c3{ew .} ==> Pr4c3 ≠ ew
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c3 ≠ n, Br4c3 ≠ ne, Br4c3 ≠ ns
whip[1]: Br3c4{wne .} ==> Pr4c5 ≠ o, Pr4c5 ≠ se
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ nw, Br4c5 ≠ swn
whip[1]: Pr4c4{ns .} ==> Br4c4 ≠ s, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ wne
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ se, Br2c4 ≠ esw
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 3
whip[1]: Br2c3{ew .} ==> Pr2c3 ≠ nw
whip[1]: Pr2c3{ew .} ==> Br1c2 ≠ se, Br2c2 ≠ sw, Br2c2 ≠ wne, Br2c2 ≠ s, Br2c2 ≠ ne
whip[1]: Br1c2{ew .} ==> Pr1c2 ≠ o
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0
whip[1]: Hr4c4{1 .} ==> Pr4c4 ≠ ns, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Br3c4 ≠ wne, Br4c4 ≠ w, Br4c4 ≠ ew
P-single: Pr4c4 = ne
whip[1]: Pr4c4{ne .} ==> Br4c3 ≠ e, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw
whip[1]: Br4c3{sw .} ==> Pr5c4 ≠ ns, Pr5c4 ≠ nw, Nr4c3 ≠ 3
whip[1]: Pr5c4{ew .} ==> Hr5c4 ≠ 0, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ sw
H-single: Hr5c4 = 1
whip[1]: Hr5c4{1 .} ==> Pr5c5 ≠ o, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ se
whip[1]: Pr5c5{sw .} ==> Br4c5 ≠ sw, Br4c5 ≠ esw, Br5c5 ≠ wne
whip[1]: Br5c5{ew .} ==> Nr5c5 ≠ 3
whip[1]: Br4c5{ew .} ==> Nr4c5 ≠ 3
whip[1]: Br5c4{nw .} ==> Pr6c4 ≠ ne, Pr6c5 ≠ nw
whip[1]: Pr6c5{sw .} ==> Br6c4 ≠ n
whip[1]: Pr6c4{ew .} ==> Br5c3 ≠ ew
whip[1]: Br5c3{se .} ==> Pr5c3 ≠ ns
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ w
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 1
whip[1]: Pr4c5{sw .} ==> Br3c5 ≠ esw
whip[1]: Br3c5{ew .} ==> Nr3c5 ≠ 3
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ se, Br2c2 ≠ swn
whip[1]: Br2c2{ew .} ==> Pr2c2 ≠ se, Nr2c2 ≠ 3
whip[1]: Pr2c2{ew .} ==> Br1c1 ≠ nw
whip[1]: Br2c1{ew .} ==> Pr2c1 ≠ o
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 1
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr4c6{ne .} ==> Br4c5 ≠ n, Br3c5 ≠ se, Br4c5 ≠ e, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ ew
whip[1]: Br4c5{w .} ==> Nr4c5 ≠ 2, Pr4c5 ≠ ew
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ ew, Br5c5 ≠ e, Br5c5 ≠ ns
whip[1]: Br5c5{ne .} ==> Vr5c5 ≠ 1, Pr6c5 ≠ ns, Pr5c5 ≠ sw
V-single: Vr5c5 = 0
whip[1]: Vr5c5{0 .} ==> Br5c4 ≠ ne
whip[1]: Pr6c4{ew .} ==> Hr6c3 ≠ 0, Br5c3 ≠ nw, Br6c3 ≠ sw
H-single: Hr6c3 = 1
B-single: Br6c3 = swn
N-single: Nr6c3 = 3
P-single: Pr6c3 = se
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
whip[1]: Vr5c3{0 .} ==> Br5c2 ≠ ew
B-single: Br5c2 = w
N-single: Nr5c2 = 1
whip[1]: Pr5c3{ne .} ==> Br4c3 ≠ s
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 1
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ o
whip[1]: Br4c5{w .} ==> Nr4c5 ≠ 0
N-single: Nr4c5 = 1
whip[1]: Vr2c8{1 .} ==> Br2c8 ≠ o
B-single: Br2c8 = w
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Vr3c8{0 .} ==> Br3c8 ≠ w
B-single: Br3c8 = o
whip[1]: Vr4c8{1 .} ==> Br4c8 ≠ o
B-single: Br4c8 = w
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Vr1c8{1 .} ==> Br1c8 ≠ o
B-single: Br1c8 = w
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
Entering_level_W2_with_<Fact-91938>
Entering_level_W3_with_<Fact-92956>
Entering_level_W4_with_<Fact-96765>
Entering_level_W5_with_<Fact-109645>
whip[5]: Br2c2{ns e} - Pr2c2{ew nw} - Br2c1{ew ns} - Pr2c1{se ne} - Br1c1{se .} ==> Pr3c2 ≠ sw
whip[1]: Pr3c2{se .} ==> Hr3c1 ≠ 1, Br2c1 ≠ ns, Br3c1 ≠ wne, Br2c2 ≠ e
H-single: Hr3c1 = 0
B-single: Br3c1 = ew
N-single: Nr3c1 = 2
P-single: Pr3c1 = ns
V-single: Vr2c1 = 1
vertical-line-r2{c0 c1} ==> Ir2c1 = in
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o, Pr2c1 ≠ ne
B-single: Br2c0 = e
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ swn
whip[1]: Br1c1{wne .} ==> Vr1c2 ≠ 0, Pr1c2 ≠ ew, Pr2c2 ≠ ew
V-single: Vr1c2 = 1
whip[1]: Vr1c2{1 .} ==> Br1c2 ≠ ns
whip[1]: Br1c2{ew .} ==> Hr2c2 ≠ 1, Pr2c3 ≠ ew
H-single: Hr2c2 = 0
whip[1]: Hr2c2{0 .} ==> Br2c2 ≠ ns
B-single: Br2c2 = ew
H-single: Hr3c2 = 0
V-single: Vr2c2 = 1
V-single: Vr2c3 = 1
N-single: Nr2c2 = 2
w[1]-3-in-r3c2-hit-by-verti-line-at-ne ==> Hr3c3 = 0
w[1]-3-in-r3c2-hit-by-verti-line-at-nw ==> Vr3c3 = 1
P-single: Pr4c3 = nw
P-single: Pr2c1 = ns
H-single: Hr2c1 = 0
V-single: Vr1c1 = 1
P-single: Pr2c2 = ns
P-single: Pr3c2 = ns
P-single: Pr3c3 = ns
vertical-line-r1{c0 c1} ==> Ir1c1 = in
vertical-line-r1{c1 c2} ==> Ir1c2 = out
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = out
vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
horizontal-line-{r4 r5}c4 ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
same-colour-in-{r5 r6}c4 ==> Hr6c4 = 0
w[0]-adjacent-3-in-r6c3-nolines-east ==> Vr5c4 = 1
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
w[1]-diagonal-1-1-in-{r4c5...r5c6}-with-no-nw-outer-sides ==> Hr6c6 = 0
w[1]-3-in-r3c4-closed-se-corner ==> Pr3c4 ≠ se
w[1]-3-in-r6c7-isolated-at-nw-corner ==> Hr6c7 = 1
w[1]-3-in-r6c7-closed-nw-corner ==> Pr7c8 ≠ nw
P-single: Pr7c8 = sw
V-single: Vr7c8 = 1
P-single: Pr1c2 = sw
H-single: Hr1c1 = 1
H-single: Hr1c2 = 0
P-single: Pr2c3 = ns
H-single: Hr2c3 = 0
V-single: Vr1c3 = 1
w[1]-diagonal-3-2-in-{r3c2...r2c3}-non-closed-ne-corner ==> Vr2c4 = 1
w[1]-3-in-r1c3-closed-nw-corner ==> Pr2c4 ≠ nw
P-single: Pr2c4 = ns
P-single: Pr3c4 = ns
H-single: Hr3c4 = 0
P-single: Pr6c7 = se
w[1]-1-in-r5c6-symmetric-se-corner ==> Pr5c6 ≠ o
P-single: Pr5c6 = sw
w[1]-1-in-r4c5-asymmetric-se-corner ==> Pr4c5 ≠ sw
P-single: Pr4c5 = nw
vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
vertical-line-r6{c6 c7} ==> Ir6c7 = out
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
same-colour-in-r7{c5 c6} ==> Vr7c6 = 0
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
whip[1]: Hr3c2{0 .} ==> Br3c2 ≠ swn
B-single: Br3c2 = esw
whip[1]: Vr2c2{1 .} ==> Br2c1 ≠ nw
B-single: Br2c1 = ew
whip[1]: Vr2c3{1 .} ==> Br2c3 ≠ ns
whip[1]: Hr3c3{0 .} ==> Br3c3 ≠ ne
B-single: Br3c3 = ew
whip[1]: Vr4c3{0 .} ==> Pr5c3 ≠ ne, Br4c2 ≠ ne, Br4c3 ≠ sw
P-single: Pr6c4 = nw
P-single: Pr5c3 = o
B-single: Br4c3 = o
N-single: Nr4c3 = 0
P-single: Pr7c6 = nw
H-single: Hr7c5 = 1
V-single: Vr6c6 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c4 = se
B-single: Br4c2 = n
N-single: Nr4c2 = 1
w[1]-1-in-r7c6-symmetric-nw-corner ==> Pr8c7 ≠ o
P-single: Pr8c7 = ew
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = out
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]

XOXOOOX
XOXOXXX
XOXOXOO
XXXXXXX
OXXOOXX
OXOOOXO
XXXOXXX

.———.   .———.   .   .   .———.
|   | 2 | 3 |     1     | 3 |
.   .   .   .   .———.———.   .
|   |   | 2 |   |         2 |
.   .   .   .   .   .———.———.
|   | 3 | 2 | 3 |   | 3   2
.   .———.   .———.   .———.———.
| 2                       2 |
.———.   .   .———.———.   .   .
    |     2 | 2     | 1     |
.   .   .———.   .   .   .———.
    |   |         2 | 2 | 3
.———.   .———.   .———.   .———.
| 3   1   3 | 2 |           |
.———.———.———.   .———.———.———.

init-time = 35.09s, solve-time = 23.88s, total-time = 58.98s
nb-facts=<Fact-117593>
Quasi-Loop max length = 10
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

