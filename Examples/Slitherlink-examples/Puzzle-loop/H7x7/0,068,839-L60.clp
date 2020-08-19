
(solve
7 7
2 3 3 3 . . 3
2 1 1 1 2 . 2
. . 2 . . 3 2 
. 2 2 . . . 2
3 1 . . . 3 .
. . . 1 . . 3
3 1 . 2 2 . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 3 3 3 . . 3
2 1 1 1 2 . 2
. . 2 . . 3 2
. 2 2 . . . 2
3 1 . . . 3 .
. . . 1 . . 3
3 1 . 2 2 . .

start init-grid-structure 0.011538028717041
start create-csp-variables
start create-labels 0.000833988189697266
start init-physical-csp-links 0.00638008117675781
start init-physical-non-csp-links 3.60136413574219
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.971884965896606
     start init-physical-BN-non-csp-links at local time 3.63084983825684
     start init-physical-BP-non-csp-links at local time 6.43021392822266
     end init-physical-BP-non-csp-links at local time 51.8098578453064
end init-physical-non-csp-links 55.4112660884857
start init-corner-B-c-values 55.4230439662933
start init-outer-B-candidates 55.423103094101
start init-outer-I-candidates 55.4234929084778
start init-H-candidates 55.423819065094
start init-V-candidates 55.4251000881195
start init-P-candidates 55.426353931427
start init-inner-I-candidates 55.4287800788879
start init-inner-N-and-B-candidates 55.4295918941498
start solution 55.4339761734009
entering BRT
w[1]-3-in-sw-corner ==> Vr7c1 = 1, Hr8c1 = 1
H-single: Hr8c1 = 1
V-single: Vr7c1 = 1
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
H-single: Hr1c7 = 1
V-single: Vr1c8 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
H-single: Hr1c2 = 1
V-single: Vr2c1 = 1
w[1]-diagonal-3s-in-{r5c6...r6c7} ==> Vr6c8 = 1, Vr5c6 = 1, Hr7c7 = 1, Hr5c6 = 1, Vr7c8 = 0, Vr4c6 = 0, Hr5c5 = 0
H-single: Hr5c5 = 0
V-single: Vr4c6 = 0
V-single: Vr7c8 = 0
H-single: Hr5c6 = 1
H-single: Hr7c7 = 1
V-single: Vr5c6 = 1
V-single: Vr6c8 = 1
w[1]-diagonal-3-2-3-in-{r1c4...r3c6} ==> Vr3c7 = 1, Vr1c4 = 1, Hr4c6 = 1, Hr1c4 = 1, Vr4c7 = 0, Hr4c7 = 0, Hr1c3 = 0
H-single: Hr1c3 = 0
H-single: Hr4c7 = 0
V-single: Vr4c7 = 0
H-single: Hr1c4 = 1
H-single: Hr4c6 = 1
V-single: Vr1c4 = 1
V-single: Vr3c7 = 1
w[1]-2-in-r4c7-open-nw-corner ==> Hr5c7 = 1, Vr4c8 = 1, Vr5c8 = 0
V-single: Vr5c8 = 0
V-single: Vr4c8 = 1
H-single: Hr5c7 = 1
w[1]-diagonal-3-2-in-{r5c6...r4c7}-non-closed-ne-corner ==> Hr6c6 = 1, Vr6c6 = 0, Hr6c5 = 0
H-single: Hr6c5 = 0
V-single: Vr6c6 = 0
H-single: Hr6c6 = 1
w[1]-3-in-r6c7-hit-by-horiz-line-at-nw ==> Vr5c7 = 0
V-single: Vr5c7 = 0
w[1]-3-in-r1c3-hit-by-horiz-line-at-ne ==> Vr1c3 = 1, Hr2c3 = 1
H-single: Hr2c3 = 1
V-single: Vr1c3 = 1
V-single: Vr2c3 = 0
H-single: Hr2c2 = 0
V-single: Vr2c4 = 0
H-single: Hr2c4 = 0
w[1]-3-in-r1c2-hit-by-horiz-line-at-se ==> Vr1c2 = 1
V-single: Vr1c2 = 1
H-single: Hr1c1 = 0
w[1]-3-in-r1c4-hit-by-horiz-line-at-sw ==> Vr1c5 = 1
V-single: Vr1c5 = 1
H-single: Hr1c5 = 0
w[1]-adjacent-1-3-on-edge-in-r7{c2 c1} ==> Vr7c3 = 0, Hr7c2 = 0
H-single: Hr7c2 = 0
V-single: Vr7c3 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r2 r1}c3 ==> Hr3c3 = 0
H-single: Hr3c3 = 0
w[1]-diagonal-3-2s-in-{r5c1...r3c3}-non-closed-ne-end ==> Vr3c4 = 1, Vr5c1 = 1, Hr6c1 = 1, Vr6c1 = 0
V-single: Vr6c1 = 0
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
V-single: Vr3c4 = 1
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r6c7-closed-se-corner ==> Pr6c7 ≠ se, Pr6c7 ≠ nw, Pr6c7 ≠ o
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r3c6-closed-se-corner ==> Pr3c6 ≠ se, Pr3c6 ≠ nw, Pr3c6 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
diag-3-2s-in-...r1c4+1+1-in-r2{c3 c4}+diag-2s-3-in-r3c3... ==> Vr2c5 = 0
V-single: Vr2c5 = 0
w[1]-diagonal-3-2-in-{r3c6...r2c5}-non-closed-nw-corner ==> Hr2c5 = 1
H-single: Hr2c5 = 1
P-single: Pr2c2 = nw
H-single: Hr2c1 = 1
V-single: Vr2c2 = 0
V-single: Vr1c1 = 0
P-single: Pr1c1 = o
P-single: Pr4c8 = ns
V-single: Vr3c8 = 1
w[1]-1-in-r2c2-symmetric-nw-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
w[1]-1-in-r2c4-asymmetric-sw-corner ==> Pr2c5 ≠ ew, Pr2c5 ≠ ns
w[1]-1-in-r2c3-asymmetric-nw-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ ns
w[1]-1-in-r2c3-asymmetric-ne-corner ==> Pr3c3 ≠ ew, Pr3c3 ≠ ns
entering level Loop with <Fact-49334>
entering level Col with <Fact-49439>
no-vertical-line-r7{c7 c8} ==> Ir7c7 = out
I-single: Ir7c7 = out
horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
I-single: Ir6c7 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
I-single: Ir5c7 = out
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
I-single: Ir5c6 = out
vertical-line-r5{c5 c6} ==> Ir5c5 = in
I-single: Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
I-single: Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
I-single: Ir4c6 = in
no-vertical-line-r4{c6 c7} ==> Ir4c7 = in
I-single: Ir4c7 = in
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
I-single: Ir3c7 = in
vertical-line-r3{c6 c7} ==> Ir3c6 = out
I-single: Ir3c6 = out
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = in
I-single: Ir6c5 = in
no-vertical-line-r6{c5 c6} ==> Ir6c6 = in
I-single: Ir6c6 = in
vertical-line-r1{c7 c8} ==> Ir1c7 = in
I-single: Ir1c7 = in
vertical-line-r7{c0 c1} ==> Ir7c1 = in
I-single: Ir7c1 = in
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
I-single: Ir6c1 = out
horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
I-single: Ir5c1 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
I-single: Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
I-single: Ir2c3 = in
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
I-single: Ir2c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
I-single: Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
I-single: Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
I-single: Ir1c4 = in
vertical-line-r1{c3 c4} ==> Ir1c3 = out
I-single: Ir1c3 = out
vertical-line-r1{c2 c3} ==> Ir1c2 = in
I-single: Ir1c2 = in
vertical-line-r1{c1 c2} ==> Ir1c1 = out
I-single: Ir1c1 = out
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
I-single: Ir3c3 = in
vertical-line-r3{c3 c4} ==> Ir3c4 = out
I-single: Ir3c4 = out
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1
H-single: Hr3c4 = 1
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
H-single: Hr7c1 = 1
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ nw, Pr8c2 ≠ o
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
V-single: Vr6c7 = 0
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1
H-single: Hr6c7 = 1
w[1]-3-in-r6c7-closed-ne-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ne, Pr7c7 ≠ o
same-colour-in-{r7 r8}c7 ==> Hr8c7 = 0
H-single: Hr8c7 = 0
Starting_init_links_with_<Fact-49542>
1110 candidates, 3372 csp-links and 13627 links. Density = 2.21%
starting non trivial part of solution
Entering_level_W1_with_<Fact-83545>
whip[1]: Hr8c7{0 .} ==> Br7c7 ≠ nes, Br8c7 ≠ n, Pr8c8 ≠ nw, Pr8c7 ≠ ne, Pr8c7 ≠ ew, Br7c7 ≠ se, Br7c7 ≠ esw
P-single: Pr8c8 = o
B-single: Br8c7 = o
whip[1]: Br7c7{nw .} ==> Pr7c8 ≠ ns, Pr7c8 ≠ sw, Nr7c7 ≠ 3
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ swn, Br6c7 ≠ wne
whip[1]: Br6c7{nes .} ==> Pr6c8 ≠ o, Pr6c8 ≠ nw, Pr7c8 ≠ o, Pr7c7 ≠ ns, Pr7c7 ≠ nw
P-single: Pr7c8 = nw
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ o, Br7c7 ≠ w
whip[1]: Br7c7{nw .} ==> Nr7c7 ≠ 0
whip[1]: Pr7c7{ew .} ==> Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ wne, Br6c6 ≠ nes, Br6c7 ≠ esw, Br7c6 ≠ sw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br6c6 ≠ e, Br6c6 ≠ ne, Br7c6 ≠ o, Br7c6 ≠ s, Br7c6 ≠ w, Br7c6 ≠ ne
B-single: Br6c7 = nes
P-single: Pr6c8 = sw
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ ne, Br5c7 ≠ w, Br5c7 ≠ e, Br5c7 ≠ n, Br5c7 ≠ o, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw, Br5c7 ≠ wne, Br5c7 ≠ nes
whip[1]: Br5c7{swn .} ==> Pr5c8 ≠ ns, Pr5c8 ≠ sw, Nr5c7 ≠ 0
P-single: Pr5c8 = nw
whip[1]: Pr5c8{nw .} ==> Br5c7 ≠ s, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ ew, Br4c7 ≠ sw, Br5c7 ≠ sw
B-single: Br4c7 = se
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ wne, Br4c6 ≠ nes, Br5c6 ≠ wne, Br5c6 ≠ nes, Br4c6 ≠ e, Br4c6 ≠ ne
whip[1]: Br5c6{swn .} ==> Pr5c6 ≠ o, Pr5c6 ≠ ne, Pr5c6 ≠ nw, Pr5c6 ≠ ew, Pr6c6 ≠ o, Pr6c6 ≠ ns, Pr6c6 ≠ nw, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Pr6c7 ≠ ne
P-single: Pr6c7 = ew
P-single: Pr6c6 = ne
whip[1]: Pr6c7{ew .} ==> Br6c6 ≠ w, Br6c6 ≠ s, Br6c6 ≠ o, Br5c6 ≠ esw, Br5c7 ≠ swn, Br6c6 ≠ sw
B-single: Br5c7 = ns
N-single: Nr5c7 = 2
P-single: Pr5c7 = ew
B-single: Br5c6 = swn
P-single: Pr5c6 = se
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ w, Br4c6 ≠ n, Br4c6 ≠ o, Br4c6 ≠ nw
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 0
whip[1]: Pr5c6{se .} ==> Br5c5 ≠ w, Br5c5 ≠ s, Br5c5 ≠ n, Br5c5 ≠ o, Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ sw, Br4c6 ≠ swn, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ sw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br5c5{esw .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ se, Pr5c5 ≠ ew, Nr5c5 ≠ 0
whip[1]: Br4c6{ns .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c6 ≠ 3, Pr4c6 ≠ sw
whip[1]: Br4c5{nw .} ==> Nr4c5 ≠ 3
whip[1]: Br6c6{swn .} ==> Nr6c6 ≠ 0
whip[1]: Pr6c6{ne .} ==> Br6c5 ≠ n, Br5c5 ≠ se, Br5c5 ≠ esw, Br6c5 ≠ e, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ nw, Br6c6 ≠ swn
whip[1]: Br6c6{ns .} ==> Pr7c6 ≠ ne, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Nr6c6 ≠ 3
whip[1]: Br6c5{sw .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Nr6c5 ≠ 3
whip[1]: Br5c5{ew .} ==> Nr5c5 ≠ 3
whip[1]: Pr4c7{nw .} ==> Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ sw
whip[1]: Br3c6{nes .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ ew, Pr4c6 ≠ o, Pr4c6 ≠ nw, Pr4c7 ≠ o
P-single: Pr4c7 = nw
whip[1]: Pr4c7{nw .} ==> Br4c6 ≠ s, Br3c7 ≠ ne
B-single: Br4c6 = ns
N-single: Nr4c6 = 2
whip[1]: Pr3c8{nw .} ==> Vr2c8 ≠ 0, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ sw
V-single: Vr2c8 = 1
w[1]-3-in-r1c7-hit-by-verti-line-at-se ==> Vr1c7 = 1
V-single: Vr1c7 = 1
H-single: Hr1c6 = 0
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ o
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
I-single: Ir1c6 = out
vertical-line-r2{c7 c8} ==> Ir2c7 = in
I-single: Ir2c7 = in
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
H-single: Hr3c7 = 0
adjacent-3-2-in-{r1 r2}c7-noline-south ==> Hr2c6 = 0
H-single: Hr2c6 = 0
P-single: Pr3c8 = ns
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
I-single: Ir2c6 = out
same-colour-in-{r2 r3}c6 ==> Hr3c6 = 0
H-single: Hr3c6 = 0
different-colours-in-r2{c6 c7} ==> Hr2c7 = 1
V-single: Vr2c7 = 1
w[1]-3-in-r3c6-hit-by-verti-line-at-ne ==> Vr3c6 = 1
V-single: Vr3c6 = 1
H-single: Hr4c5 = 0
w[1]-3-in-r3c6-closed-sw-corner ==> Pr3c7 ≠ sw
P-single: Pr2c8 = ns
H-single: Hr2c7 = 0
P-single: Pr3c7 = ns
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
I-single: Ir3c5 = in
same-colour-in-{r2 r3}c5 ==> Hr3c5 = 0
H-single: Hr3c5 = 0
w[1]-2-in-r2c5-open-sw-corner ==> Vr2c6 = 1, Vr1c6 = 0
V-single: Vr1c6 = 0
V-single: Vr2c6 = 1
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
V-single: Vr3c5 = 1
whip[1]: Vr2c8{1 .} ==> Br2c8 ≠ o
B-single: Br2c8 = w
whip[1]: Vr1c7{1 .} ==> Br1c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ ew, Pr2c7 ≠ ew, Br1c6 ≠ n, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ sw, Br1c6 ≠ swn, Br1c7 ≠ nes
P-single: Pr2c7 = ns
B-single: Br1c7 = wne
P-single: Pr1c8 = sw
P-single: Pr1c7 = se
whip[1]: Pr2c7{ns .} ==> Br2c6 ≠ n, Br2c6 ≠ o, Br1c6 ≠ se, Br1c6 ≠ esw, Br1c6 ≠ nes, Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ sw, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ nes, Br2c7 ≠ ne, Br2c7 ≠ se
B-single: Br2c7 = ew
whip[1]: Br2c6{esw .} ==> Pr2c6 ≠ se, Pr2c6 ≠ ew, Nr2c6 ≠ 0
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ nw, Br2c5 ≠ sw, Br1c5 ≠ o, Br1c5 ≠ n, Br1c5 ≠ w
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 0
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ ne, Br1c6 ≠ wne
whip[1]: Br1c6{ew .} ==> Pr1c6 ≠ se, Pr1c6 ≠ ew, Nr1c6 ≠ 3
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ e, Br1c5 ≠ ns
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Hr3c7{0 .} ==> Br3c7 ≠ nw
B-single: Br3c7 = ew
whip[1]: Hr3c6{0 .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ew, Br2c6 ≠ se, Br2c6 ≠ esw, Br3c6 ≠ nes
B-single: Br3c6 = esw
P-single: Pr4c6 = ne
whip[1]: Pr4c6{ne .} ==> Br4c5 ≠ n, Br3c5 ≠ n, Br3c5 ≠ o, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ nes, Br4c5 ≠ nw
whip[1]: Br4c5{w .} ==> Pr4c5 ≠ ne, Nr4c5 ≠ 2, Pr4c5 ≠ se, Pr4c5 ≠ ew
whip[1]: Br3c5{wne .} ==> Nr3c5 ≠ 0
whip[1]: Br2c6{ew .} ==> Nr2c6 ≠ 3
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nw, Br2c5 ≠ se
whip[1]: Hr3c5{0 .} ==> Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c6 ≠ sw, Br2c5 ≠ ns, Br3c5 ≠ ne, Br3c5 ≠ wne
P-single: Pr3c6 = ns
whip[1]: Pr3c6{ns .} ==> Br2c6 ≠ e
B-single: Br2c6 = ew
N-single: Nr2c6 = 2
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ nes
whip[1]: Br3c5{ew .} ==> Nr3c5 ≠ 3
whip[1]: Vr1c6{0 .} ==> Pr1c6 ≠ sw, Pr2c6 ≠ ns, Br1c5 ≠ ne, Br1c5 ≠ wne, Br1c6 ≠ ew
P-single: Pr2c6 = sw
P-single: Pr1c6 = o
B-single: Br1c6 = e
N-single: Nr1c6 = 1
whip[1]: Pr2c6{sw .} ==> Br2c5 ≠ ew
B-single: Br2c5 = ne
P-single: Pr2c5 = ne
whip[1]: Pr2c5{ne .} ==> Br2c4 ≠ n, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ nes, Br1c5 ≠ s, Br2c4 ≠ e
B-single: Br1c5 = sw
N-single: Nr1c5 = 2
P-single: Pr1c5 = sw
B-single: Br1c4 = wne
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes
B-single: Br1c3 = esw
P-single: Pr1c3 = sw
P-single: Pr2c3 = ne
P-single: Pr2c4 = nw
w[1]-1-in-r2c4-symmetric-nw-corner ==> Pr3c5 ≠ o
P-single: Pr3c5 = sw
w[1]-1-in-r2c2-symmetric-ne-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Pr2c3{ne .} ==> Br2c2 ≠ n, Br1c2 ≠ nes, Br2c2 ≠ e, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w
B-single: Br2c3 = n
P-single: Pr3c3 = sw
H-single: Hr3c2 = 1
V-single: Vr3c3 = 1
P-single: Pr3c4 = se
B-single: Br1c2 = wne
P-single: Pr1c2 = se
vertical-line-r3{c2 c3} ==> Ir3c2 = out
I-single: Ir3c2 = out
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ ns, Br3c3 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ w, Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ n, Br3c2 ≠ o, Br2c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c3 ≠ nw, Br3c3 ≠ se
B-single: Br2c2 = s
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ se, Br2c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ wne, Br3c1 ≠ nes, Br2c1 ≠ ne, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ne
whip[1]: Br3c1{swn .} ==> Nr3c1 ≠ 0
whip[1]: Br3c3{sw .} ==> Pr4c3 ≠ se, Pr4c3 ≠ ew
whip[1]: Pr4c3{nw .} ==> Hr4c3 ≠ 1, Br3c3 ≠ sw, Br4c2 ≠ ne, Br4c2 ≠ sw, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw
H-single: Hr4c3 = 0
B-single: Br3c3 = ew
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
I-single: Ir4c3 = in
whip[1]: Pr4c4{ns .} ==> Br3c4 ≠ s, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ se, Br3c4 ≠ nes, Br4c4 ≠ s, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ swn, Br4c4 ≠ wne, Br3c4 ≠ o, Br3c4 ≠ n, Br3c4 ≠ e, Br4c4 ≠ o, Br4c4 ≠ e
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Br3c2{nes .} ==> Pr4c2 ≠ ne, Nr3c2 ≠ 0, Nr3c2 ≠ 1
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ w, Br2c4 ≠ w, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw
B-single: Br2c4 = s
whip[1]: Br3c4{wne .} ==> Pr4c5 ≠ nw, Nr3c4 ≠ 1
whip[1]: Pr4c5{sw .} ==> Br4c4 ≠ n, Br4c4 ≠ ns
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ nw
B-single: Br1c1 = se
P-single: Pr3c2 = se
H-single: Hr3c1 = 0
V-single: Vr3c2 = 1
P-single: Pr2c1 = se
vertical-line-r3{c1 c2} ==> Ir3c1 = in
I-single: Ir3c1 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
V-single: Vr3c1 = 1
whip[1]: Pr3c2{se .} ==> Br3c1 ≠ n, Br2c1 ≠ ns, Br2c1 ≠ sw, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c2 ≠ ne, Br3c2 ≠ nes
B-single: Br3c2 = wne
H-single: Hr4c2 = 0
N-single: Nr3c2 = 3
w[1]-diagonal-3-2-in-{r5c1...r4c2}-non-closed-ne-corner ==> Vr4c3 = 1
V-single: Vr4c3 = 1
P-single: Pr4c3 = ns
B-single: Br2c1 = nw
P-single: Pr3c1 = ns
vertical-line-r4{c2 c3} ==> Ir4c2 = out
I-single: Ir4c2 = out
whip[1]: Hr4c2{0 .} ==> Br4c2 ≠ ns, Br4c2 ≠ nw
whip[1]: Br4c2{ew .} ==> Pr5c3 ≠ ew
whip[1]: Pr5c3{nw .} ==> Br4c3 ≠ se, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ se
whip[1]: Br3c1{esw .} ==> Pr4c1 ≠ o, Pr4c1 ≠ se, Nr3c1 ≠ 1
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ o, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ se, Br5c4 ≠ o, Br5c4 ≠ e, Br5c4 ≠ s
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Pr4c2{nw .} ==> Br4c1 ≠ w, Br4c1 ≠ ne, Br4c1 ≠ sw, Br4c1 ≠ nes
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ e, Br3c4 ≠ nw, Br3c4 ≠ swn
B-single: Br3c4 = wne
H-single: Hr4c4 = 0
N-single: Nr3c4 = 3
P-single: Pr4c4 = ns
V-single: Vr4c4 = 1
P-single: Pr4c5 = ns
V-single: Vr4c5 = 1
B-single: Br3c5 = ew
N-single: Nr3c5 = 2
w[1]-1-in-r5c2-asymmetric-ne-corner ==> Pr6c2 ≠ ew, Pr6c2 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ ns

LOOP[6]: Vr4c5-Vr3c5-Hr3c4-Vr3c4-Vr4c4- ==> Hr5c4 = 0
H-single: Hr5c4 = 0
vertical-line-r4{c4 c5} ==> Ir4c4 = out
I-single: Ir4c4 = out
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = out
I-single: Ir5c4 = out
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
V-single: Vr5c5 = 1
whip[1]: Hr4c4{0 .} ==> Br4c4 ≠ ne, Br4c4 ≠ nes
whip[1]: Br4c4{esw .} ==> Pr5c4 ≠ ew, Pr5c4 ≠ sw
whip[1]: Pr5c4{ns .} ==> Hr5c3 ≠ 1, Br4c3 ≠ sw, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nes, Br5c3 ≠ n
H-single: Hr5c3 = 0
B-single: Br4c3 = ew
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
I-single: Ir5c3 = in
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
V-single: Vr5c4 = 1

LOOP[8]: Vr5c4-Vr4c4-Vr3c4-Hr3c4-Vr3c5-Vr4c5-Vr5c5- ==> Hr6c4 = 0
H-single: Hr6c4 = 0
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = out
I-single: Ir6c4 = out
different-colours-in-r6{c4 c5} ==> Hr6c5 = 1
V-single: Vr6c5 = 1
whip[1]: Vr5c4{1 .} ==> Br5c3 ≠ o, Pr5c4 ≠ ne, Pr6c4 ≠ o, Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ sw, Br5c4 ≠ n, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ nes
P-single: Pr5c4 = ns
whip[1]: Pr5c4{ns .} ==> Br4c4 ≠ sw, Br4c4 ≠ esw
whip[1]: Br4c4{ew .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ sw, Nr4c4 ≠ 3
whip[1]: Br5c3{esw .} ==> Nr5c3 ≠ 0
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ ne, Br6c3 ≠ wne, Br6c3 ≠ nes
whip[1]: Hr6c4{0 .} ==> Pr6c4 ≠ ne, Pr6c5 ≠ nw, Pr6c5 ≠ sw, Br5c4 ≠ sw, Br5c4 ≠ esw, Br6c4 ≠ n
whip[1]: Br6c4{w .} ==> Pr7c4 ≠ ne, Pr7c5 ≠ nw
whip[1]: Br5c4{ew .} ==> Nr5c4 ≠ 3
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ w, Br6c3 ≠ sw, Br6c3 ≠ o, Br6c3 ≠ s
whip[1]: Br6c3{swn .} ==> Nr6c3 ≠ 0
whip[1]: Vr6c5{1 .} ==> Br6c5 ≠ o, Pr6c5 ≠ o, Pr7c5 ≠ o, Pr7c5 ≠ se, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Br6c4 ≠ s, Br6c4 ≠ w, Br6c5 ≠ s
P-single: Pr6c5 = ns
B-single: Br6c4 = e
H-single: Hr7c4 = 0
V-single: Vr6c4 = 0
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
horizontal-line-{r5 r6}c3 ==> Ir6c3 = out
I-single: Ir6c3 = out
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = out
I-single: Ir7c4 = out
same-colour-in-{r7 r8}c4 ==> Hr8c4 = 0
H-single: Hr8c4 = 0
P-single: Pr7c5 = ns
H-single: Hr7c5 = 0
V-single: Vr7c5 = 1
P-single: Pr7c4 = sw
H-single: Hr7c3 = 1
V-single: Vr7c4 = 1
vertical-line-r7{c3 c4} ==> Ir7c3 = in
I-single: Ir7c3 = in
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
I-single: Ir7c2 = in
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
I-single: Ir6c2 = in
vertical-line-r7{c4 c5} ==> Ir7c5 = in
I-single: Ir7c5 = in
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
H-single: Hr8c5 = 1
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
V-single: Vr6c3 = 1
V-single: Vr5c3 = 0
H-single: Hr6c2 = 0
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = in
I-single: Ir5c2 = in
same-colour-in-r5{c1 c2} ==> Vr5c2 = 0
V-single: Vr5c2 = 0
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
H-single: Hr5c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-ne ==> Vr4c2 = 0
V-single: Vr4c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r5{c2 c1} ==> Hr5c1 = 1
H-single: Hr5c1 = 1
V-single: Vr4c1 = 0
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ o
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
I-single: Ir4c1 = out
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
H-single: Hr4c1 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
V-single: Vr6c2 = 1
V-single: Vr7c2 = 0
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
H-single: Hr8c2 = 1
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
H-single: Hr8c3 = 1
whip[1]: Pr6c5{ns .} ==> Br5c5 ≠ e, Br5c4 ≠ w
B-single: Br5c4 = ew
N-single: Nr5c4 = 2
P-single: Pr5c5 = ns
B-single: Br5c5 = ew
N-single: Nr5c5 = 2
whip[1]: Pr5c5{ns .} ==> Br4c5 ≠ o, Br4c4 ≠ w
B-single: Br4c4 = ew
N-single: Nr4c4 = 2
B-single: Br4c5 = w
N-single: Nr4c5 = 1
whip[1]: Hr7c4{0 .} ==> Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ nw
whip[1]: Vr6c4{0 .} ==> Br6c3 ≠ e, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ esw
whip[1]: Br6c3{swn .} ==> Pr6c3 ≠ o, Pr6c3 ≠ ns, Pr6c3 ≠ nw, Pr6c3 ≠ sw
whip[1]: Pr6c3{ew .} ==> Br5c3 ≠ ew, Br6c2 ≠ wne, Br6c2 ≠ nes, Br5c3 ≠ e, Br6c2 ≠ ne
whip[1]: Br5c3{esw .} ==> Nr5c3 ≠ 1
whip[1]: Hr8c4{0 .} ==> Br8c4 ≠ n, Pr8c4 ≠ ew, Pr8c5 ≠ ew, Br7c4 ≠ se, Br7c4 ≠ sw
P-single: Pr7c6 = o
H-single: Hr7c6 = 0
V-single: Vr7c6 = 0
P-single: Pr8c5 = ne
P-single: Pr8c4 = nw
B-single: Br7c4 = ew
B-single: Br8c4 = o
no-vertical-line-r7{c5 c6} ==> Ir7c6 = in
I-single: Ir7c6 = in
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
V-single: Vr7c7 = 1

LOOP[60]: Vr7c7-Hr7c7-Vr6c8-Hr6c7-Hr6c6-Vr5c6-Hr5c6-Hr5c7-Vr4c8-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Vr2c7-Vr3c7-Hr4c6-Vr3c6-Vr2c6-Hr2c5-Vr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Vr3c1-Hr4c1-Vr3c2-Hr3c2-Vr3c3-Vr4c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Vr6c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3-Vr7c4-Hr7c3-Vr6c3-Hr6c3-Vr5c4-Vr4c4-Vr3c4-Hr3c4-Vr3c5-Vr4c5-Vr5c5-Vr6c5-Vr7c5-Hr8c5- ==> Hr8c6 = 1
H-single: Hr8c6 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXOOX
XXXXXOX
XOXOXOX
OOXOXXX
XXXOXOO
OXOOXXX
XXXOXXO

.   .———.   .———.   .   .———.
  2 | 3 | 3 | 3 |       | 3 |
.———.   .———.   .———.   .   .
| 2   1   1   1   2 |   | 2 |
.   .———.   .———.   .   .   .
|   |   | 2 |   |   | 3 | 2 |
.———.   .   .   .   .———.   .
      2 | 2 |   |         2 |
.———.———.   .   .   .———.———.
| 3   1     |   |   | 3
.———.   .———.   .   .———.———.
    |   |     1 |         3 |
.———.   .———.   .   .   .———.
| 3   1     | 2 | 2     |
.———.———.———.   .———.———.   .

init-time = 55.43s, solve-time = 21.31s, total-time = 1m 16.74s
nb-facts=<Fact-87836>
Quasi-Loop max length = 60
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
