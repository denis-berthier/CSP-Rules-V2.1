
(solve
7 7
. 1 . 1 . . 3
3 . . 3 . . 3
3 1 1 . . . . 
. 2 . 3 . 3 . 
. 1 2 . . . 0
. 1 3 . 2 . 2
. 3 . 3 . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 . 1 . . 3
3 . . 3 . . 3
3 1 1 . . . .
. 2 . 3 . 3 .
. 1 2 . . . 0
. 1 3 . 2 . 2
. 3 . 3 . . .

start init-grid-structure 0.0106098651885986
start create-csp-variables
start create-labels 0.000829935073852539
start init-physical-csp-links 0.00648593902587891
start init-physical-non-csp-links 3.76595997810364
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.01759696006775
     start init-physical-BN-non-csp-links at local time 3.80475807189941
     start init-physical-BP-non-csp-links at local time 6.71236205101013
     end init-physical-BP-non-csp-links at local time 44.9263820648193
end init-physical-non-csp-links 48.6923799514771
start init-corner-B-c-values 48.7031989097595
start init-outer-B-candidates 48.7032518386841
start init-outer-I-candidates 48.7036390304565
start init-H-candidates 48.7039480209351
start init-V-candidates 48.7052328586578
start init-P-candidates 48.7068588733673
start init-inner-I-candidates 48.7093548774719
start init-inner-N-and-B-candidates 48.7101759910583
start solution 48.7158238887787
entering BRT
H-single: Hr6c7 = 0
H-single: Hr5c7 = 0
V-single: Vr5c8 = 0
V-single: Vr5c7 = 0
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
H-single: Hr1c7 = 1
V-single: Vr1c8 = 1
w[1]-diagonal-3-0-in-{r4c6...r5c7} ==> Vr4c7 = 1, Hr5c6 = 1
H-single: Hr5c6 = 1
V-single: Vr4c7 = 1
w[1]-diagonal-3s-in-{r6c3...r7c2} ==> Vr6c4 = 1, Vr7c2 = 1, Hr8c2 = 1, Hr6c3 = 1, Vr5c4 = 0, Hr8c1 = 0, Hr6c4 = 0
H-single: Hr6c4 = 0
H-single: Hr8c1 = 0
V-single: Vr5c4 = 0
H-single: Hr6c3 = 1
H-single: Hr8c2 = 1
V-single: Vr7c2 = 1
V-single: Vr6c4 = 1
w[1]-diagonal-3s-in-{r6c3...r7c4} ==> Vr7c5 = 1, Vr6c3 = 1, Hr8c4 = 1, Vr5c3 = 0, Hr8c5 = 0, Hr6c2 = 0
H-single: Hr6c2 = 0
H-single: Hr8c5 = 0
V-single: Vr5c3 = 0
H-single: Hr8c4 = 1
V-single: Vr6c3 = 1
V-single: Vr7c5 = 1
w[1]-diagonal-3-2s-in-{r3c1...r5c3}-non-closed-se-end ==> Vr3c1 = 1, Hr3c1 = 1, Vr2c1 = 0
V-single: Vr2c1 = 0
H-single: Hr3c1 = 1
V-single: Vr3c1 = 1
w[1]-diagonal-3-2-in-{r4c4...r5c3}-non-closed-sw-corner ==> Vr4c5 = 1, Hr4c4 = 1, Vr3c5 = 0, Hr4c5 = 0
H-single: Hr4c5 = 0
V-single: Vr3c5 = 0
H-single: Hr4c4 = 1
V-single: Vr4c5 = 1
w[1]-3-in-r7c4-hit-by-verti-line-at-nw ==> Hr7c3 = 0
H-single: Hr7c3 = 0
w[1]-3-in-r2c7-hit-by-verti-line-at-ne ==> Vr2c7 = 1, Hr3c7 = 1
H-single: Hr3c7 = 1
V-single: Vr2c7 = 1
V-single: Vr3c7 = 0
H-single: Hr3c6 = 0
w[1]-3-in-r1c7-hit-by-verti-line-at-sw ==> Hr2c6 = 0
H-single: Hr2c6 = 0
w[1]-3-in-r2c1-hit-by-verti-line-at-sw ==> Vr2c2 = 1, Hr2c1 = 1
H-single: Hr2c1 = 1
V-single: Vr2c2 = 1
V-single: Vr3c2 = 0
H-single: Hr3c2 = 0
V-single: Vr1c2 = 0
H-single: Hr2c2 = 0
w[1]-3-in-r3c1-hit-by-verti-line-at-ne ==> Hr4c1 = 1
H-single: Hr4c1 = 1
V-single: Vr4c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r6{c2 c3} ==> Vr6c2 = 0, Hr7c2 = 0
H-single: Hr7c2 = 0
V-single: Vr6c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r6 r7}c2 ==> Vr7c3 = 1
V-single: Vr7c3 = 1
H-single: Hr8c3 = 0
w[1]-3-in-r7c4-closed-se-corner ==> Pr7c4 ≠ se, Pr7c4 ≠ nw, Pr7c4 ≠ o
w[1]-3-in-r7c2-closed-sw-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ne, Pr7c3 ≠ o
w[1]-3-in-r7c2-closed-se-corner ==> Pr7c2 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ o
w[1]-3-in-r4c6-closed-se-corner ==> Pr4c6 ≠ se, Pr4c6 ≠ nw, Pr4c6 ≠ o
w[1]-3-in-r3c1-closed-sw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ o
w[1]-3-in-r2c1-closed-se-corner ==> Pr2c1 ≠ se, Pr2c1 ≠ o
w[1]-3-in-r2c1-closed-ne-corner ==> Pr3c1 ≠ ne, Pr3c1 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
adjacent-3s-in-c7{r1 r2} ==> Hr2c7 = 1
H-single: Hr2c7 = 1
V-single: Vr2c8 = 0
V-single: Vr1c7 = 0
w[1]-3-in-r1c7-closed-se-corner ==> Pr1c7 ≠ se, Pr1c7 ≠ o
w[1]-3-in-r2c7-closed-nw-corner ==> Pr3c8 ≠ nw, Pr3c8 ≠ o
P-single: Pr6c7 = sw
H-single: Hr6c6 = 1
V-single: Vr6c7 = 1
P-single: Pr7c7 = ne
H-single: Hr7c6 = 0
H-single: Hr7c7 = 1
V-single: Vr7c7 = 0
P-single: Pr6c8 = o
V-single: Vr6c8 = 0
P-single: Pr5c8 = o
V-single: Vr4c8 = 0
w[1]-1-in-r6c2-asymmetric-ne-corner ==> Pr7c2 ≠ ew, Pr7c2 ≠ ns
entering level Loop with <Fact-49329>
entering level Col with <Fact-49414>
no-vertical-line-r6{c7 c8} ==> Ir6c7 = out
I-single: Ir6c7 = out
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = out
I-single: Ir5c7 = out
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
I-single: Ir5c6 = out
horizontal-line-{r4 r5}c6 ==> Ir4c6 = in
I-single: Ir4c6 = in
vertical-line-r4{c6 c7} ==> Ir4c7 = out
I-single: Ir4c7 = out
horizontal-line-{r5 r6}c6 ==> Ir6c6 = in
I-single: Ir6c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
I-single: Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
I-single: Ir7c7 = in
no-vertical-line-r2{c7 c8} ==> Ir2c7 = out
I-single: Ir2c7 = out
vertical-line-r2{c6 c7} ==> Ir2c6 = in
I-single: Ir2c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir1c6 = in
I-single: Ir1c6 = in
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
I-single: Ir1c7 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
I-single: Ir3c6 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = in
I-single: Ir3c7 = in
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
I-single: Ir4c1 = out
horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
I-single: Ir3c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
I-single: Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
horizontal-line-{r1 r2}c1 ==> Ir2c1 = out
I-single: Ir2c1 = out
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
I-single: Ir7c5 = out
vertical-line-r7{c4 c5} ==> Ir7c4 = in
I-single: Ir7c4 = in
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
I-single: Ir7c3 = out
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = out
I-single: Ir6c3 = out
vertical-line-r6{c2 c3} ==> Ir6c2 = in
I-single: Ir6c2 = in
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
I-single: Ir6c1 = in
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = in
I-single: Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
I-single: Ir5c3 = in
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
I-single: Ir5c4 = in
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = in
I-single: Ir6c4 = in
no-horizontal-line-{r6 r7}c2 ==> Ir7c2 = in
I-single: Ir7c2 = in
vertical-line-r7{c1 c2} ==> Ir7c1 = out
I-single: Ir7c1 = out
same-colour-in-r7{c0 c1} ==> Vr7c1 = 0
V-single: Vr7c1 = 0
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
H-single: Hr7c1 = 1
same-colour-in-{r6 r7}c4 ==> Hr7c4 = 0
H-single: Hr7c4 = 0
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
V-single: Vr6c1 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
V-single: Vr7c4 = 1
w[1]-3-in-r7c4-closed-sw-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ne, Pr7c5 ≠ o
different-colours-in-r7{c5 c6} ==> Hr7c6 = 1
V-single: Vr7c6 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
V-single: Vr3c8 = 1
different-colours-in-{r3 r4}c7 ==> Hr4c7 = 1
H-single: Hr4c7 = 1
H-single: Hr4c6 = 0
w[1]-3-in-r4c6-hit-by-horiz-line-at-ne ==> Vr4c6 = 1
V-single: Vr4c6 = 1
V-single: Vr5c6 = 0
H-single: Hr5c5 = 0
w[1]-3-in-r4c6-closed-sw-corner ==> Pr4c7 ≠ sw, Pr4c7 ≠ ne, Pr4c7 ≠ o
no-vertical-line-r5{c5 c6} ==> Ir5c5 = out
I-single: Ir5c5 = out
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
I-single: Ir4c5 = out
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
I-single: Ir3c5 = out
no-vertical-line-r3{c4 c5} ==> Ir3c4 = out
I-single: Ir3c4 = out
horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
I-single: Ir4c4 = in
same-colour-in-{r4 r5}c4 ==> Hr5c4 = 0
H-single: Hr5c4 = 0
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
V-single: Vr3c6 = 1
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
V-single: Vr5c5 = 1
w[1]-3-in-r4c4-hit-by-verti-line-at-se ==> Vr4c4 = 1
V-single: Vr4c4 = 1
V-single: Vr3c4 = 0
H-single: Hr4c3 = 0
w[1]-3-in-r4c4-closed-nw-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
I-single: Ir3c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
I-single: Ir4c3 = out
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
H-single: Hr5c3 = 1
different-colours-in-r3{c2 c3} ==> Hr3c3 = 1
V-single: Vr3c3 = 1
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
H-single: Hr1c6 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
V-single: Vr7c8 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
H-single: Hr8c7 = 1
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
H-single: Hr8c6 = 1

LOOP[8]: Vr7c6-Hr8c6-Hr8c7-Vr7c8-Hr7c7-Vr6c7-Hr6c6- ==> Vr6c6 = 0
V-single: Vr6c6 = 0
w[1]-diagonal-3-2-in-{r7c4...r6c5}-non-closed-ne-corner ==> Hr6c5 = 1
H-single: Hr6c5 = 1
V-single: Vr6c5 = 0
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
I-single: Ir6c5 = in
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
H-single: Hr7c5 = 1
Starting_init_links_with_<Fact-50205>
1107 candidates, 3608 csp-links and 13488 links. Density = 2.2%
starting non trivial part of solution
Entering_level_W1_with_<Fact-84402>
whip[1]: Hr7c5{1 .} ==> Br7c5 ≠ esw, Br7c5 ≠ o, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Pr7c6 ≠ ne, Pr7c6 ≠ ns, Br6c5 ≠ ne, Br6c5 ≠ nw, Br6c5 ≠ ew, Br7c5 ≠ e, Br7c5 ≠ s, Br7c5 ≠ w, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ se, Br6c6 ≠ nw, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ swn, Br7c6 ≠ wne, Br6c6 ≠ w, Br7c6 ≠ o, Br7c6 ≠ e, Br7c6 ≠ s
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Br6c6{nes .} ==> Pr6c6 ≠ ns, Pr6c6 ≠ se
whip[1]: Pr6c6{ew .} ==> Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ wne, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c5 ≠ sw, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ e, Br5c5 ≠ w, Br5c5 ≠ ne, Br5c6 ≠ o, Br5c6 ≠ n, Br5c6 ≠ e, Br5c6 ≠ ne
B-single: Br6c5 = ns
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ esw, Br5c4 ≠ nes, Br6c4 ≠ se, Br6c4 ≠ ew, Br6c4 ≠ esw, Br6c4 ≠ wne, Br6c4 ≠ nes, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ w, Br6c4 ≠ e, Br6c4 ≠ ne
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 0
whip[1]: Br5c6{nes .} ==> Nr5c6 ≠ 0
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ wne, Br7c4 ≠ nes
whip[1]: Br7c4{swn .} ==> Pr8c4 ≠ o, Pr8c4 ≠ nw, Pr8c4 ≠ ew, Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr7c4 ≠ ne, Pr7c4 ≠ ew
P-single: Pr8c4 = ne
whip[1]: Pr8c4{ne .} ==> Br7c3 ≠ n, Br7c3 ≠ o, Br8c4 ≠ o, Br8c3 ≠ n, Br7c3 ≠ s, Br7c3 ≠ w, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ nes
B-single: Br8c3 = o
B-single: Br8c4 = n
whip[1]: Pr8c3{nw .} ==> Br7c2 ≠ swn, Br7c2 ≠ wne
whip[1]: Br7c2{nes .} ==> Pr8c2 ≠ o, Pr8c2 ≠ nw, Pr8c3 ≠ o, Pr7c3 ≠ nw, Pr7c3 ≠ ew
P-single: Pr8c3 = nw
whip[1]: Pr8c3{nw .} ==> Br7c3 ≠ e, Br8c2 ≠ o, Br7c3 ≠ ne
B-single: Br8c2 = n
whip[1]: Br7c3{wne .} ==> Nr7c3 ≠ 0, Nr7c3 ≠ 1
whip[1]: Pr7c3{se .} ==> Br6c3 ≠ esw, Br6c3 ≠ swn, Br7c2 ≠ nes, Br6c2 ≠ s
B-single: Br7c2 = esw
P-single: Pr8c2 = ne
P-single: Pr7c2 = sw
whip[1]: Pr8c2{ne .} ==> Br7c1 ≠ n, Br7c1 ≠ o, Br8c1 ≠ n, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ swn
B-single: Br8c1 = o
P-single: Pr8c1 = o
whip[1]: Br7c1{ne .} ==> Pr7c1 ≠ ns, Pr7c1 ≠ se, Nr7c1 ≠ 0, Nr7c1 ≠ 3
whip[1]: Pr7c1{ne .} ==> Br6c1 ≠ s, Br6c1 ≠ w, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ ew, Br6c1 ≠ wne, Br6c1 ≠ nes
whip[1]: Pr7c2{sw .} ==> Br7c1 ≠ e, Br6c2 ≠ w, Br6c1 ≠ ne, Br6c1 ≠ e, Br6c1 ≠ n, Br6c1 ≠ o, Br6c1 ≠ esw
B-single: Br7c1 = ne
N-single: Nr7c1 = 2
P-single: Pr7c1 = ne
whip[1]: Br6c1{swn .} ==> Pr6c1 ≠ o, Pr6c1 ≠ ne, Pr6c2 ≠ ns, Pr6c2 ≠ se, Pr6c2 ≠ sw, Nr6c1 ≠ 0, Nr6c1 ≠ 1
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ sw, Br5c1 ≠ esw, Br5c1 ≠ swn, Br5c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Br6c3{nes .} ==> Pr6c3 ≠ ns, Pr6c3 ≠ nw, Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr6c4 ≠ ew, Pr7c4 ≠ sw
P-single: Pr7c4 = ns
P-single: Pr6c4 = sw
whip[1]: Pr7c4{ns .} ==> Br6c4 ≠ n, Br6c4 ≠ o, Br6c3 ≠ nes, Br6c4 ≠ s, Br6c4 ≠ ns, Br6c4 ≠ sw, Br6c4 ≠ swn, Br7c3 ≠ wne, Br7c4 ≠ swn
B-single: Br7c4 = esw
P-single: Pr8c5 = nw
P-single: Pr7c5 = se
B-single: Br7c3 = ew
N-single: Nr7c3 = 2
P-single: Pr7c3 = ns
B-single: Br6c3 = wne
P-single: Pr6c3 = se
w[1]-1-in-r5c2-symmetric-se-corner ==> Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ o
w[1]-1-in-r6c2-asymmetric-se-corner ==> Pr6c2 ≠ ew, Pr6c2 ≠ ne
whip[1]: Pr8c5{nw .} ==> Br7c5 ≠ n, Br8c5 ≠ n, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ swn, Br7c5 ≠ nes
B-single: Br8c5 = o
whip[1]: Pr8c6{ne .} ==> Br7c6 ≠ w, Br7c6 ≠ ns, Br7c6 ≠ ew, Br7c6 ≠ nes
whip[1]: Br7c5{wne .} ==> Nr7c5 ≠ 1
whip[1]: Pr7c3{ns .} ==> Br6c2 ≠ n
B-single: Br6c2 = e
whip[1]: Pr6c3{se .} ==> Br5c2 ≠ s, Br5c2 ≠ e, Br5c3 ≠ ne, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ sw
whip[1]: Br5c3{se .} ==> Pr5c3 ≠ ns, Pr5c3 ≠ sw
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ wne, Br5c3 ≠ se, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ w, Br4c3 ≠ ne
B-single: Br5c3 = ns
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ esw, Br4c4 ≠ swn, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Br5c4{ns .} ==> Nr5c4 ≠ 3
whip[1]: Br4c4{nes .} ==> Pr4c4 ≠ o, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c4 ≠ sw, Pr4c5 ≠ o, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw, Pr4c5 ≠ se, Pr4c5 ≠ ew, Pr5c5 ≠ ew, Pr5c5 ≠ sw
P-single: Pr4c5 = sw
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ ns, Br4c5 ≠ ne, Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ n, Br4c5 ≠ o, Br3c5 ≠ ns, Br3c5 ≠ w, Br3c5 ≠ s, Br3c4 ≠ ne, Br3c4 ≠ w, Br3c4 ≠ e, Br3c4 ≠ n, Br3c4 ≠ o, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes
whip[1]: Br4c5{esw .} ==> Pr4c6 ≠ ew, Pr4c6 ≠ sw, Nr4c5 ≠ 0
whip[1]: Pr4c6{ns .} ==> Br3c6 ≠ s, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ nes, Br4c6 ≠ swn, Br4c6 ≠ wne, Br3c5 ≠ o, Br3c5 ≠ n, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ e
whip[1]: Br3c6{wne .} ==> Pr3c6 ≠ o, Pr3c6 ≠ ne, Pr3c6 ≠ nw, Pr3c6 ≠ ew, Nr3c6 ≠ 0
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ se, Br2c5 ≠ esw, Br2c5 ≠ nes, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn
whip[1]: Br3c5{ne .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ se, Nr3c5 ≠ 0, Nr3c5 ≠ 3, Pr3c5 ≠ sw
whip[1]: Br4c6{nes .} ==> Pr4c7 ≠ nw, Pr4c7 ≠ ew, Pr5c6 ≠ o, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Pr5c6 ≠ sw, Pr5c7 ≠ o
P-single: Pr5c7 = nw
whip[1]: Pr5c7{nw .} ==> Br5c6 ≠ s, Br4c7 ≠ s, Br4c7 ≠ e, Br4c7 ≠ n, Br4c7 ≠ o, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br5c6 ≠ w, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br5c6{nw .} ==> Nr5c6 ≠ 1, Nr5c6 ≠ 3
N-single: Nr5c6 = 2
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ esw, Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ nes, Br5c6 ≠ nw, Br4c5 ≠ w
B-single: Br5c6 = ns
P-single: Pr6c6 = ew
whip[1]: Pr6c6{ew .} ==> Br6c6 ≠ s, Br6c6 ≠ e, Br6c6 ≠ o, Br6c6 ≠ se
whip[1]: Br6c6{nes .} ==> Nr6c6 ≠ 0
whip[1]: Br4c5{sw .} ==> Nr4c5 ≠ 1, Nr4c5 ≠ 3
N-single: Nr4c5 = 2
P-single: Pr4c6 = ns
P-single: Pr5c5 = ns
whip[1]: Pr4c6{ns .} ==> Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br4c5 ≠ sw, Br4c6 ≠ nes
B-single: Br4c6 = esw
P-single: Pr5c6 = ne
B-single: Br4c5 = ew
whip[1]: Pr5c6{ne .} ==> Br5c5 ≠ ns, Br5c5 ≠ swn
whip[1]: Br5c5{sw .} ==> Nr5c5 ≠ 3
whip[1]: Pr5c5{ns .} ==> Br4c4 ≠ nes, Br5c4 ≠ s, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c5 ≠ s
B-single: Br5c5 = sw
N-single: Nr5c5 = 2
P-single: Pr6c5 = ne
B-single: Br5c4 = e
N-single: Nr5c4 = 1
P-single: Pr5c4 = nw
B-single: Br4c4 = wne
P-single: Pr4c4 = se
w[1]-1-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
whip[1]: Pr6c5{ne .} ==> Br6c4 ≠ nw
B-single: Br6c4 = w
N-single: Nr6c4 = 1
whip[1]: Pr5c4{nw .} ==> Br4c3 ≠ s, Br4c3 ≠ ns, Br4c3 ≠ sw, Br4c3 ≠ swn
whip[1]: Br4c3{nes .} ==> Pr4c3 ≠ se, Nr4c3 ≠ 0, Nr4c3 ≠ 1
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ s, Br3c3 ≠ e, Br3c4 ≠ sw, Br3c4 ≠ swn, Br4c3 ≠ nes
whip[1]: Br4c3{esw .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ ew
whip[1]: Br3c4{ns .} ==> Pr3c4 ≠ ns, Pr3c4 ≠ se, Nr3c4 ≠ 0, Nr3c4 ≠ 3, Pr3c4 ≠ sw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ nes, Br2c2 ≠ o, Br2c2 ≠ n, Br2c2 ≠ w
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br4c7{wne .} ==> Nr4c7 ≠ 0
whip[1]: Pr4c7{se .} ==> Br3c7 ≠ ne, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ e
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0
whip[1]: Pr6c2{nw .} ==> Br5c1 ≠ ns, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ s
whip[1]: Pr5c2{sw .} ==> Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Br4c1{wne .} ==> Nr4c1 ≠ 0
whip[1]: Hr8c6{1 .} ==> Br7c6 ≠ ne, Br8c6 ≠ o, Pr8c6 ≠ o, Pr8c7 ≠ o, Pr8c7 ≠ ne, Br7c6 ≠ n
P-single: Pr8c6 = ne
B-single: Br8c6 = n
whip[1]: Pr8c6{ne .} ==> Br7c5 ≠ nw
B-single: Br7c5 = wne
N-single: Nr7c5 = 3
P-single: Pr7c6 = sw
whip[1]: Pr7c6{sw .} ==> Br6c6 ≠ ns, Br6c6 ≠ nes
whip[1]: Br6c6{ne .} ==> Nr6c6 ≠ 3
whip[1]: Br7c6{esw .} ==> Nr7c6 ≠ 1
whip[1]: Pr8c7{ew .} ==> Br7c7 ≠ esw, Br7c7 ≠ o, Br7c7 ≠ n
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Hr8c7{1 .} ==> Br7c7 ≠ nw, Br8c7 ≠ o, Pr8c8 ≠ o, Pr8c7 ≠ nw, Br7c7 ≠ w
P-single: Pr8c7 = ew
P-single: Pr8c8 = nw
B-single: Br8c7 = n
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ esw
B-single: Br7c6 = sw
N-single: Nr7c6 = 2
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 1
whip[1]: Hr1c6{1 .} ==> Br1c6 ≠ esw, Br0c6 ≠ o, Br1c6 ≠ o, Pr1c6 ≠ o, Pr1c6 ≠ sw, Br1c6 ≠ e, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw
B-single: Br0c6 = s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ sw, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c5 ≠ o, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ ne
whip[1]: Br1c5{swn .} ==> Nr1c5 ≠ 0
whip[1]: Vr3c3{1 .} ==> Br3c3 ≠ n, Pr3c3 ≠ ne, Pr3c3 ≠ ew, Pr4c3 ≠ o, Pr4c3 ≠ sw, Br3c2 ≠ n, Br3c2 ≠ s, Br3c2 ≠ w
B-single: Br3c2 = e
H-single: Hr4c2 = 0
P-single: Pr3c2 = nw
P-single: Pr3c3 = ns
H-single: Hr3c3 = 0
V-single: Vr2c3 = 1
w[1]-3-in-r2c4-isolated-at-sw-corner ==> Vr2c4 = 1, Hr3c4 = 1
H-single: Hr3c4 = 1
V-single: Vr2c4 = 1
w[1]-3-in-r2c4-closed-sw-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
P-single: Pr4c2 = sw
V-single: Vr4c2 = 1
P-single: Pr4c3 = ns
V-single: Vr4c3 = 1
H-single: Hr5c2 = 0
B-single: Br3c3 = w
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
I-single: Ir4c2 = in
horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
I-single: Ir2c4 = in
vertical-line-r2{c3 c4} ==> Ir2c3 = out
I-single: Ir2c3 = out
whip[1]: Hr4c2{0 .} ==> Br4c2 ≠ ne, Br4c2 ≠ ns
whip[1]: Br4c2{sw .} ==> Pr5c2 ≠ ew
P-single: Pr5c2 = ns
H-single: Hr5c1 = 0
V-single: Vr5c2 = 1
vertical-line-r5{c1 c2} ==> Ir5c1 = out
I-single: Ir5c1 = out
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
H-single: Hr6c1 = 1
V-single: Vr5c1 = 0

LOOP[40]: Vr2c3-Vr3c3-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Vr5c5-Hr6c5-Hr6c6-Vr6c7-Hr7c7-Vr7c8-Hr8c7-Hr8c6-Vr7c6-Hr7c5-Vr7c5-Hr8c4-Vr7c4-Vr6c4-Hr6c3-Vr6c3-Vr7c3-Hr8c2-Vr7c2-Hr7c1-Vr6c1-Hr6c1-Vr5c2-Vr4c2-Hr4c1-Vr3c1-Hr3c1-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2- ==> Vr1c3 = 0
V-single: Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
I-single: Ir1c3 = in
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
H-single: Hr2c3 = 1
V-single: Vr1c4 = 0
H-single: Hr2c4 = 0
w[1]-3-in-r2c4-hit-by-horiz-line-at-nw ==> Vr2c5 = 1
V-single: Vr2c5 = 1
H-single: Hr3c5 = 0
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
I-single: Ir2c5 = out
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
I-single: Ir1c4 = in
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
H-single: Hr1c4 = 1
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
V-single: Vr2c6 = 1

LOOP[14]: Vr2c6-Vr3c6-Vr4c6-Hr5c6-Vr4c7-Hr4c7-Vr3c8-Hr3c7-Vr2c7-Hr2c7-Vr1c8-Hr1c7-Hr1c6- ==> Vr1c6 = 0
V-single: Vr1c6 = 0
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
I-single: Ir1c5 = in
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
H-single: Hr2c5 = 1
V-single: Vr1c5 = 0
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
H-single: Hr1c5 = 1

LOOP[60]: Hr1c4-Hr1c5-Hr1c6-Hr1c7-Vr1c8-Hr2c7-Vr2c7-Hr3c7-Vr3c8-Hr4c7-Vr4c7-Hr5c6-Vr4c6-Vr3c6-Vr2c6-Hr2c5-Vr2c5-Hr3c4-Vr2c4-Hr2c3-Vr2c3-Vr3c3-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Vr5c5-Hr6c5-Hr6c6-Vr6c7-Hr7c7-Vr7c8-Hr8c7-Hr8c6-Vr7c6-Hr7c5-Vr7c5-Hr8c4-Vr7c4-Vr6c4-Hr6c3-Vr6c3-Vr7c3-Hr8c2-Vr7c2-Hr7c1-Vr6c1-Hr6c1-Vr5c2-Vr4c2-Hr4c1-Vr3c1-Hr3c1-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2- ==> Hr1c3 = 1
H-single: Hr1c3 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXXXX
OXOXOXO
XXOOOXX
OXOXOXO
OXXXOOO
XXOXXXO
OXOXOXX

.———.———.———.———.———.———.———.
|     1       1           3 |
.———.   .———.   .———.   .———.
  3 |   |   | 3 |   |   | 3
.———.   .   .———.   .   .———.
| 3   1 | 1         |       |
.———.   .   .———.   .   .———.
    | 2 |   | 3 |   | 3 |
.   .   .———.   .   .———.   .
    | 1   2     |         0
.———.   .———.   .———.———.   .
|     1 | 3 |     2     | 2
.———.   .   .   .———.   .———.
    | 3 |   | 3 |   |       |
.   .———.   .———.   .———.———.

init-time = 48.72s, solve-time = 20.81s, total-time = 1m 9.53s
nb-facts=<Fact-86984>
Quasi-Loop max length = 60
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
