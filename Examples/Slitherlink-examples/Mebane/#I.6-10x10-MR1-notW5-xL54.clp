Mellon rating = 1


(solve 
10 10 
. . . 0 . 3 . . 0 . 
0 . . . . 0 . 2 . . 
. . 0 . 2 . . 0 . . 
. 2 . . 0 . . . . 0 
. 0 . . . . 0 . . . 
. . . 0 . . . . 0 . 
0 . . . . 0 . . 3 . 
. . 0 . . 1 . 0 . . 
. . 1 . 0 . . . . 0
. 0 . . 2 . 0 . . . 
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 0 . 3 . . 0 .
0 . . . . 0 . 2 . .
. . 0 . 2 . . 0 . .
. 2 . . 0 . . . . 0
. 0 . . . . 0 . . .
. . . 0 . . . . 0 .
0 . . . . 0 . . 3 .
. . 0 . . 1 . 0 . .
. . 1 . 0 . . . . 0
. 0 . . 2 . 0 . . .

start init-grid-structure 0.022136926651001
start create-csp-variables
start create-labels 0.00123810768127441
start init-physical-csp-links 0.0104341506958008
start init-physical-non-csp-links 10.5489890575409
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.08775210380554
     start init-physical-BN-non-csp-links at local time 11.5144050121307
     start init-physical-BP-non-csp-links at local time 21.10755610466
     end init-physical-BP-non-csp-links at local time 245.918802022934
end init-physical-non-csp-links 256.467845916748
start init-corner-B-c-values 256.490228891373
start init-outer-B-candidates 256.490286827087
start init-outer-I-candidates 256.491108894348
start init-H-candidates 256.491567850113
start init-V-candidates 256.495309829712
start init-P-candidates 256.499524831772
start init-inner-I-candidates 256.506088972092
start init-inner-N-and-B-candidates 256.508832931519
start solution 256.522670984268
entering BRT
w[0]-0-in-r10c7 ==> Hr11c7 = 0, Hr10c7 = 0, Vr10c8 = 0, Vr10c7 = 0
w[0]-0-in-r10c2 ==> Hr11c2 = 0, Hr10c2 = 0, Vr10c3 = 0, Vr10c2 = 0
w[0]-0-in-r9c10 ==> Hr10c10 = 0, Hr9c10 = 0, Vr9c11 = 0, Vr9c10 = 0
w[0]-0-in-r9c5 ==> Hr10c5 = 0, Hr9c5 = 0, Vr9c6 = 0, Vr9c5 = 0
w[0]-0-in-r8c8 ==> Hr9c8 = 0, Hr8c8 = 0, Vr8c9 = 0, Vr8c8 = 0
w[0]-0-in-r8c3 ==> Hr9c3 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr8c3 = 0
w[0]-0-in-r7c6 ==> Hr8c6 = 0, Hr7c6 = 0, Vr7c7 = 0, Vr7c6 = 0
w[0]-0-in-r7c1 ==> Hr8c1 = 0, Hr7c1 = 0, Vr7c2 = 0, Vr7c1 = 0
w[0]-0-in-r6c9 ==> Hr7c9 = 0, Hr6c9 = 0, Vr6c10 = 0, Vr6c9 = 0
w[0]-0-in-r6c4 ==> Hr7c4 = 0, Hr6c4 = 0, Vr6c5 = 0, Vr6c4 = 0
w[0]-0-in-r5c7 ==> Hr6c7 = 0, Hr5c7 = 0, Vr5c8 = 0, Vr5c7 = 0
w[0]-0-in-r5c2 ==> Hr6c2 = 0, Hr5c2 = 0, Vr5c3 = 0, Vr5c2 = 0
w[0]-0-in-r4c10 ==> Hr5c10 = 0, Hr4c10 = 0, Vr4c11 = 0, Vr4c10 = 0
w[0]-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[0]-0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
w[0]-0-in-r2c6 ==> Hr3c6 = 0, Hr2c6 = 0, Vr2c7 = 0, Vr2c6 = 0
w[0]-0-in-r2c1 ==> Hr3c1 = 0, Hr2c1 = 0, Vr2c2 = 0, Vr2c1 = 0
w[0]-0-in-r1c9 ==> Hr2c9 = 0, Hr1c9 = 0, Vr1c10 = 0, Vr1c9 = 0
w[0]-0-in-r1c4 ==> Hr2c4 = 0, Hr1c4 = 0, Vr1c5 = 0, Vr1c4 = 0
w[0]-adjacent-3-0-in-c9{r7 r6} ==> Vr7c10 = 1, Vr7c9 = 1, Hr8c9 = 1, Hr7c10 = 1, Hr7c8 = 1, Vr8c10 = 0, Hr8c10 = 0
w[0]-adjacent-3-0-in-c6{r1 r2} ==> Vr1c7 = 1, Vr1c6 = 1, Hr2c7 = 1, Hr2c5 = 1, Hr1c6 = 1, Hr1c7 = 0, Hr1c5 = 0
w[1]-3-in-r7c9-closed-sw-corner ==> Pr7c10 ≠ o
w[1]-3-in-r7c9-closed-se-corner ==> Pr7c9 ≠ o
w[1]-3-in-r1c6-closed-ne-corner ==> Pr2c6 ≠ o
w[1]-3-in-r1c6-closed-nw-corner ==> Pr2c7 ≠ o
P-single: Pr2c7 = ne
P-single: Pr2c6 = nw
P-single: Pr7c9 = sw
P-single: Pr7c10 = se
P-single: Pr3c9 = ne
H-single: Hr3c9 = 1
V-single: Vr2c9 = 1
P-single: Pr3c8 = o
H-single: Hr3c7 = 0
V-single: Vr2c8 = 0
w[1]-2-in-r2c8-open-sw-corner ==> Hr2c8 = 1
P-single: Pr4c6 = ne
H-single: Hr4c6 = 1
V-single: Vr3c6 = 1
P-single: Pr4c5 = o
H-single: Hr4c4 = 0
V-single: Vr3c5 = 0
w[1]-2-in-r3c5-open-sw-corner ==> Hr3c5 = 1
P-single: Pr5c3 = ne
H-single: Hr5c3 = 1
V-single: Vr4c3 = 1
P-single: Pr5c2 = o
H-single: Hr5c1 = 0
V-single: Vr4c2 = 0
w[1]-2-in-r4c2-open-sw-corner ==> Hr4c2 = 1
P-single: Pr2c9 = sw
P-single: Pr3c6 = sw
P-single: Pr4c3 = sw
P-single: Pr10c11 = o
V-single: Vr10c11 = 0
P-single: Pr9c11 = o
V-single: Vr8c11 = 0
P-single: Pr5c11 = o
V-single: Vr5c11 = 0
P-single: Pr4c11 = o
V-single: Vr3c11 = 0
P-single: Pr8c1 = o
V-single: Vr8c1 = 0
P-single: Pr7c1 = o
V-single: Vr6c1 = 0
P-single: Pr3c1 = o
V-single: Vr3c1 = 0
P-single: Pr2c1 = o
V-single: Vr1c1 = 0
P-single: Pr11c8 = o
H-single: Hr11c8 = 0
P-single: Pr11c7 = o
H-single: Hr11c6 = 0
P-single: Pr11c3 = o
H-single: Hr11c3 = 0
P-single: Pr11c2 = o
H-single: Hr11c1 = 0
P-single: Pr1c10 = o
H-single: Hr1c10 = 0
P-single: Pr1c9 = o
H-single: Hr1c8 = 0
P-single: Pr1c5 = o
P-single: Pr1c4 = o
H-single: Hr1c3 = 0
w[1]-1-in-r9c3-symmetric-sw-corner ==> Pr9c4 ≠ o
P-single: Pr9c4 = se
H-single: Hr9c4 = 1
V-single: Vr9c4 = 1
w[1]-1-in-r8c6-symmetric-sw-corner ==> Pr8c7 ≠ o
P-single: Pr8c7 = se
H-single: Hr8c7 = 1
V-single: Vr8c7 = 1
entering level Loop with <Fact-93730>
entering level Col with <Fact-93822>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
no-vertical-line-r9{c9 c10} ==> Ir9c9 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-vertical-line-r8{c8 c9} ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
vertical-line-r8{c6 c7} ==> Ir8c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
vertical-line-r7{c8 c9} ==> Ir7c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r6 r7}c10 ==> Ir7c10 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
no-horizontal-line-{r7 r8}c1 ==> Ir7c1 = out
no-vertical-line-r7{c1 c2} ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
no-vertical-line-r10{c7 c8} ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-horizontal-line-{r10 r11}c3 ==> Ir10c3 = out
no-vertical-line-r10{c2 c3} ==> Ir10c2 = out
no-vertical-line-r10{c1 c2} ==> Ir10c1 = out
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
no-horizontal-line-{r0 r1}c10 ==> Ir1c10 = out
no-vertical-line-r1{c9 c10} ==> Ir1c9 = out
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
no-vertical-line-r2{c7 c8} ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
vertical-line-r1{c5 c6} ==> Ir1c6 = in
vertical-line-r1{c6 c7} ==> Ir1c7 = out
horizontal-line-{r2 r3}c5 ==> Ir3c5 = out
no-vertical-line-r3{c4 c5} ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
no-horizontal-line-{r3 r4}c4 ==> Ir4c4 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
horizontal-line-{r3 r4}c6 ==> Ir3c6 = in
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = out
no-horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
no-vertical-line-r3{c7 c8} ==> Ir3c8 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
horizontal-line-{r2 r3}c9 ==> Ir2c9 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
no-vertical-line-r2{c9 c10} ==> Ir2c10 = out
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
same-colour-in-r4{c3 c4} ==> Vr4c4 = 0
same-colour-in-r2{c3 c4} ==> Vr2c4 = 0
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
same-colour-in-{r1 r2}c3 ==> Hr2c3 = 0
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
same-colour-in-{r2 r3}c2 ==> Hr3c2 = 0
same-colour-in-{r2 r3}c4 ==> Hr3c4 = 0
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
same-colour-in-r1{c10 c11} ==> Vr1c11 = 0
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
same-colour-in-r9{c7 c8} ==> Vr9c8 = 0
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
same-colour-in-r6{c7 c8} ==> Vr6c8 = 0
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
same-colour-in-r4{c7 c8} ==> Vr4c8 = 0
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
same-colour-in-{r5 r6}c8 ==> Hr6c8 = 0
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
3-in-r7c9-no-U-turn-from-south ==> Hr9c9 = O
same-colour-in-r7{c10 c11} ==> Vr7c11 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
same-colour-in-{r10 r11}c10 ==> Hr11c10 = 0
Starting_init_links_with_<Fact-94894>
2152 candidates, 8320 csp-links and 24734 links. Density = 1.07%
starting non trivial part of solution
Entering_level_W1_with_<Fact-161007>
whip[1]: Hr11c10{0 .} ==> Br10c10 ≠ nes, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 3
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c9 ≠ e, Br10c9 ≠ s
whip[1]: Vr7c8{1 .} ==> Br7c8 ≠ nes, Br7c7 ≠ o, Br7c8 ≠ o, Pr7c8 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ nw, Pr7c8 ≠ ew, Pr8c8 ≠ o, Br7c7 ≠ n, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ sw, Br7c7 ≠ swn, Br7c8 ≠ n, Br7c8 ≠ e, Br7c8 ≠ s, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ se
P-single: Pr8c8 = nw
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ s, Br8c7 ≠ e, Br8c7 ≠ o, Br7c7 ≠ e, Br7c7 ≠ ne, Br7c7 ≠ ew, Br7c7 ≠ wne, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br8c7 ≠ w, Br8c7 ≠ ne, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ wne, Br8c7 ≠ nes
whip[1]: Br8c7{swn .} ==> Nr8c7 ≠ 0
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 0
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0, Nr7c7 ≠ 1
whip[1]: Pr7c8{sw .} ==> Br6c7 ≠ se, Br6c7 ≠ esw, Br6c7 ≠ nes, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn
whip[1]: Vr6c11{1 .} ==> Br6c10 ≠ swn, Br6c11 ≠ o, Br6c10 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ nw, Pr7c11 ≠ o, Pr7c11 ≠ sw, Br6c10 ≠ n, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ sw
B-single: Br6c11 = w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ w, Br7c10 ≠ ne, Br7c10 ≠ sw, Br7c10 ≠ wne, Br7c10 ≠ nes, Br7c10 ≠ o, Br7c10 ≠ s
whip[1]: Br7c10{swn .} ==> Nr7c10 ≠ 0
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ esw, Br5c10 ≠ nes, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ w
whip[1]: Br5c10{wne .} ==> Nr5c10 ≠ 0
whip[1]: Vr7c11{0 .} ==> Br7c10 ≠ esw, Br7c11 ≠ w, Pr7c11 ≠ ns, Pr8c11 ≠ ns, Pr8c11 ≠ nw, Br7c10 ≠ e, Br7c10 ≠ se, Br7c10 ≠ ew
P-single: Pr7c11 = nw
B-single: Br7c11 = o
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ ew, Br6c10 ≠ wne
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 1
whip[1]: Pr8c11{sw .} ==> Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ n, Br8c10 ≠ e, Br8c10 ≠ ns
whip[1]: Hr9c9{0 .} ==> Br9c9 ≠ nes, Pr9c9 ≠ se, Pr9c10 ≠ nw, Br8c9 ≠ s, Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ nes, Br9c9 ≠ n, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c9 ≠ wne
P-single: Pr9c10 = o
P-single: Pr9c9 = o
whip[1]: Pr9c10{o .} ==> Br8c9 ≠ e, Br8c9 ≠ ne, Br8c9 ≠ ew, Br8c9 ≠ wne, Br8c10 ≠ s, Br8c10 ≠ w, Br8c10 ≠ sw, Br8c10 ≠ wne, Br8c10 ≠ nes, Br9c9 ≠ e, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw
whip[1]: Br9c9{sw .} ==> Nr9c9 ≠ 3
whip[1]: Br8c10{ne .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ se, Nr8c10 ≠ 1, Nr8c10 ≠ 3, Pr8c10 ≠ sw
whip[1]: Br8c9{nw .} ==> Nr8c9 ≠ 3
whip[1]: Pr9c9{o .} ==> Br8c9 ≠ w, Br8c9 ≠ nw, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c9 ≠ w, Br9c9 ≠ sw
whip[1]: Br9c9{s .} ==> Pr10c9 ≠ ne, Pr10c9 ≠ ns, Nr9c9 ≠ 2, Pr10c9 ≠ nw
whip[1]: Br9c8{sw .} ==> Nr9c8 ≠ 3
whip[1]: Br8c9{n .} ==> Nr8c9 ≠ 2
whip[1]: Vr5c10{1 .} ==> Br5c10 ≠ ns, Br5c9 ≠ o, Pr5c10 ≠ o, Pr6c10 ≠ o, Br5c9 ≠ n, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ sw, Br5c9 ≠ swn, Br5c10 ≠ e, Br5c10 ≠ s, Br5c10 ≠ ne
P-single: Pr6c10 = ne
P-single: Pr5c10 = sw
whip[1]: Pr6c10{ne .} ==> Br5c9 ≠ se, Br5c9 ≠ esw, Br5c9 ≠ nes, Br5c10 ≠ ew, Br5c10 ≠ wne, Br6c10 ≠ se, Br6c10 ≠ esw
B-single: Br6c10 = nes
N-single: Nr6c10 = 3
P-single: Pr6c11 = sw
whip[1]: Br5c10{swn .} ==> Nr5c10 ≠ 1
whip[1]: Br5c9{wne .} ==> Nr5c9 ≠ 0
whip[1]: Pr5c10{sw .} ==> Br5c9 ≠ e, Br4c9 ≠ ne, Br4c9 ≠ w, Br4c9 ≠ e, Br4c9 ≠ n, Br4c9 ≠ o, Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ esw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br5c9 ≠ ew, Br5c10 ≠ swn
B-single: Br5c10 = sw
N-single: Nr5c10 = 2
whip[1]: Br5c9{wne .} ==> Pr5c9 ≠ o, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Pr5c9 ≠ sw, Nr5c9 ≠ 1
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ se, Br4c8 ≠ esw, Br4c8 ≠ nes, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c8 ≠ ne
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Hr6c8{0 .} ==> Br6c8 ≠ nes, Pr6c8 ≠ se, Pr6c9 ≠ nw, Br5c8 ≠ s, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br6c8 ≠ n, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ wne
P-single: Pr6c9 = o
P-single: Pr6c8 = o
whip[1]: Pr6c9{o .} ==> Br5c8 ≠ e, Br5c8 ≠ ew, Br5c9 ≠ wne, Br6c8 ≠ e, Br6c8 ≠ se, Br6c8 ≠ ew
B-single: Br5c9 = ne
N-single: Nr5c9 = 2
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ nw, Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 0
whip[1]: Br6c8{w .} ==> Nr6c8 ≠ 2, Nr6c8 ≠ 3
whip[1]: Br5c8{nw .} ==> Nr5c8 ≠ 3
whip[1]: Pr6c8{o .} ==> Br5c8 ≠ w, Br5c8 ≠ nw, Br6c7 ≠ n, Br6c7 ≠ e, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c8 ≠ w
whip[1]: Br6c8{s .} ==> Pr7c8 ≠ ns
whip[1]: Br6c7{sw .} ==> Nr6c7 ≠ 3
whip[1]: Br5c8{n .} ==> Nr5c8 ≠ 2
whip[1]: Hr5c6{1 .} ==> Br5c6 ≠ esw, Br4c6 ≠ o, Br5c6 ≠ o, Pr5c6 ≠ o, Pr5c7 ≠ o, Br4c6 ≠ n, Br4c6 ≠ e, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ wne, Br5c6 ≠ e, Br5c6 ≠ s, Br5c6 ≠ w, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ sw
P-single: Pr5c7 = nw
P-single: Pr5c6 = se
whip[1]: Pr5c7{nw .} ==> Br4c7 ≠ s, Br4c7 ≠ e, Br4c7 ≠ n, Br4c7 ≠ o, Br4c6 ≠ s, Br4c6 ≠ ns, Br4c6 ≠ sw, Br4c6 ≠ swn, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ nes, Br5c6 ≠ ne, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br5c6{swn .} ==> Nr5c6 ≠ 0
whip[1]: Br4c7{wne .} ==> Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ nw, Pr4c7 ≠ ew, Nr4c7 ≠ 0
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ swn
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0, Nr4c6 ≠ 1
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ n, Br5c5 ≠ w, Br5c5 ≠ s, Br5c5 ≠ n, Br5c5 ≠ o, Br4c6 ≠ esw, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ sw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ ns
whip[1]: Br5c6{swn .} ==> Pr6c6 ≠ o, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Nr5c6 ≠ 1
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 0
whip[1]: Hr6c6{0 .} ==> Br6c6 ≠ nes, Pr6c6 ≠ ne, Pr6c7 ≠ sw, Br5c6 ≠ swn, Br6c6 ≠ n, Br6c6 ≠ ne, Br6c6 ≠ ns
P-single: Pr6c7 = o
B-single: Br5c6 = nw
N-single: Nr5c6 = 2
whip[1]: Pr6c7{o .} ==> Br6c6 ≠ e, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c7 ≠ w, Br6c7 ≠ sw
whip[1]: Br6c7{s .} ==> Pr7c7 ≠ ne, Nr6c7 ≠ 2
P-single: Pr7c7 = o
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ s, Br6c6 ≠ sw, Br6c7 ≠ s, Br7c7 ≠ esw, Br7c7 ≠ nes
B-single: Br7c7 = se
N-single: Nr7c7 = 2
P-single: Pr7c8 = se
B-single: Br6c7 = o
N-single: Nr6c7 = 0
whip[1]: Pr7c8{se .} ==> Br7c8 ≠ w, Br6c8 ≠ o, Br7c8 ≠ ew
B-single: Br6c8 = s
N-single: Nr6c8 = 1
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 1
whip[1]: Br6c6{w .} ==> Nr6c6 ≠ 2, Nr6c6 ≠ 3
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ w, Br6c5 ≠ sw, Br6c5 ≠ o, Br6c5 ≠ s
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 0
whip[1]: Hr4c7{0 .} ==> Br4c7 ≠ wne, Pr4c7 ≠ se, Pr4c8 ≠ sw, Br3c7 ≠ s, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ nes, Br4c7 ≠ nw
P-single: Pr4c8 = o
whip[1]: Pr4c8{o .} ==> Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ ew, Br3c7 ≠ wne, Br4c7 ≠ ew, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ swn, Br4c8 ≠ wne
B-single: Br4c7 = w
N-single: Nr4c7 = 1
P-single: Pr5c8 = o
whip[1]: Pr5c8{o .} ==> Br4c8 ≠ s, Br5c8 ≠ n
B-single: Br5c8 = o
N-single: Nr5c8 = 0
P-single: Pr5c9 = ne
B-single: Br4c8 = e
N-single: Nr4c8 = 1
P-single: Pr4c9 = se
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ s, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 1
whip[1]: Pr4c9{se .} ==> Br3c9 ≠ w, Br3c9 ≠ e, Br3c9 ≠ n, Br3c9 ≠ o, Br3c9 ≠ ne, Br3c9 ≠ nw, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br4c9 ≠ sw
B-single: Br4c9 = swn
N-single: Nr4c9 = 3
P-single: Pr4c10 = nw
whip[1]: Pr4c10{nw .} ==> Br3c10 ≠ s, Br3c10 ≠ e, Br3c10 ≠ n, Br3c10 ≠ o, Br3c9 ≠ s, Br3c9 ≠ ns, Br3c10 ≠ ne, Br3c10 ≠ ns, Br3c10 ≠ se, Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br3c10 ≠ nes
whip[1]: Br3c10{wne .} ==> Pr3c10 ≠ o, Pr3c10 ≠ ne, Pr3c10 ≠ nw, Pr3c10 ≠ ew, Nr3c10 ≠ 0
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ nes, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0, Nr3c9 ≠ 1
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 3
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ w
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Hr1c1{0 .} ==> Br1c1 ≠ wne, Br0c1 ≠ s, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Br1c1 ≠ nw, Br1c1 ≠ swn
P-single: Pr1c1 = o
B-single: Br0c1 = o
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 3
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c2 ≠ n, Br1c2 ≠ w
whip[1]: Hr10c8{0 .} ==> Br10c8 ≠ nes, Pr10c8 ≠ ne, Pr10c9 ≠ ew, Pr10c9 ≠ sw, Br9c8 ≠ s, Br9c8 ≠ sw, Br10c8 ≠ n, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ wne
P-single: Pr10c8 = o
whip[1]: Pr10c8{o .} ==> Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ nes, Br9c8 ≠ w, Br10c8 ≠ w, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ esw
B-single: Br9c8 = o
N-single: Nr9c8 = 0
P-single: Pr9c8 = o
whip[1]: Pr9c8{o .} ==> Br8c7 ≠ ns, Br8c7 ≠ swn, Br9c7 ≠ n, Br9c7 ≠ nw
whip[1]: Br9c7{w .} ==> Pr9c7 ≠ ne, Nr9c7 ≠ 2, Nr9c7 ≠ 3, Pr9c7 ≠ se, Pr9c7 ≠ ew
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 3
whip[1]: Br10c8{se .} ==> Nr10c8 ≠ 3
whip[1]: Pr10c9{se .} ==> Br10c9 ≠ esw, Br10c9 ≠ nes, Br10c9 ≠ n, Br10c9 ≠ w
whip[1]: Br10c9{se .} ==> Pr11c9 ≠ ne, Pr10c10 ≠ sw, Nr10c9 ≠ 1, Nr10c9 ≠ 3
P-single: Pr10c10 = o
H-single: Hr10c9 = 0
V-single: Vr10c10 = 0
no-vertical-line-r10{c9 c10} ==> Ir10c9 = out
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
same-colour-in-r10{c8 c9} ==> Vr10c9 = 0
whip[1]: Pr10c10{o .} ==> Br9c9 ≠ s, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c10 ≠ n, Br10c10 ≠ w, Br10c10 ≠ nw
B-single: Br10c10 = o
N-single: Nr10c10 = 0
P-single: Pr11c10 = o
B-single: Br10c9 = o
N-single: Nr10c9 = 0
P-single: Pr11c9 = o
P-single: Pr10c9 = o
B-single: Br9c9 = o
N-single: Nr9c9 = 0
whip[1]: Pr11c10{o .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ s, Br10c8 ≠ se
B-single: Br10c8 = o
N-single: Nr10c8 = 0
B-single: Br11c8 = o
whip[1]: Vr10c1{0 .} ==> Br10c1 ≠ swn, Br10c0 ≠ e, Pr11c1 ≠ ne, Pr10c1 ≠ ns, Pr10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr11c1 = o
B-single: Br10c0 = o
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Br10c1{ne .} ==> Nr10c1 ≠ 3
whip[1]: Pr10c1{ne .} ==> Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ ew, Br9c1 ≠ wne, Br9c1 ≠ nes
whip[1]: Vr1c11{0 .} ==> Br1c10 ≠ nes, Br1c11 ≠ w, Pr1c11 ≠ sw, Pr2c11 ≠ ns, Pr2c11 ≠ nw, Br1c10 ≠ ne, Br1c10 ≠ wne
P-single: Pr1c11 = o
B-single: Br1c11 = o
whip[1]: Br1c10{sw .} ==> Nr1c10 ≠ 3
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ ns
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ nes, Br2c4 ≠ o, Br2c5 ≠ o, Pr2c5 ≠ o, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Br2c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se
P-single: Pr2c5 = se
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ w, Br1c5 ≠ w, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br1c5 ≠ nw, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0, Nr2c5 ≠ 1
whip[1]: Br2c4{esw .} ==> Nr2c4 ≠ 0
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Pr3c5{ns .} ==> Br2c4 ≠ se, Br2c4 ≠ esw, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c4 ≠ n
whip[1]: Br3c4{esw .} ==> Pr3c4 ≠ ne
P-single: Pr3c4 = o
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ ew, Br3c4 ≠ w, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw
B-single: Br2c4 = e
N-single: Nr2c4 = 1
P-single: Pr2c4 = o
whip[1]: Pr2c4{o .} ==> Br1c3 ≠ e, Br1c3 ≠ s, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ nw
whip[1]: Br2c3{w .} ==> Pr2c3 ≠ ne, Nr2c3 ≠ 2, Nr2c3 ≠ 3, Pr2c3 ≠ se, Pr2c3 ≠ ew
whip[1]: Br1c3{nw .} ==> Nr1c3 ≠ 3
whip[1]: Br3c4{se .} ==> Nr3c4 ≠ 3
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ wne, Pr1c8 ≠ se, Pr1c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ ns, Br1c7 ≠ e, Br1c7 ≠ ne, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c8 ≠ w, Br1c8 ≠ nw, Br1c8 ≠ ew, Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ swn
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c8 ≠ nw, Br2c8 ≠ se, Br1c7 ≠ o, Br1c7 ≠ n, Br1c7 ≠ w, Br2c7 ≠ o, Br2c7 ≠ e, Br2c7 ≠ s, Br2c7 ≠ w
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Br1c7{swn .} ==> Nr1c7 ≠ 0
whip[1]: Hr3c2{0 .} ==> Br3c2 ≠ nes, Pr3c2 ≠ se, Pr3c3 ≠ nw, Br2c2 ≠ s, Br2c2 ≠ ns, Br2c2 ≠ se, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ nes, Br3c2 ≠ n, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c2 ≠ wne
P-single: Pr3c3 = o
P-single: Pr3c2 = o
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ ew, Br2c2 ≠ wne, Br2c3 ≠ w, Br3c2 ≠ e, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw
B-single: Br2c3 = o
N-single: Nr2c3 = 0
whip[1]: Pr2c3{nw .} ==> Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ e, Br1c2 ≠ s
whip[1]: Br1c2{se .} ==> Pr1c3 ≠ sw, Pr2c2 ≠ ne, Nr1c2 ≠ 1, Nr1c2 ≠ 3
P-single: Pr2c2 = o
H-single: Hr2c2 = 0
V-single: Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c2 = out
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
whip[1]: Pr2c2{o .} ==> Br1c1 ≠ e, Br1c1 ≠ s, Br1c1 ≠ se, Br1c2 ≠ nw, Br1c2 ≠ se, Br2c2 ≠ n, Br2c2 ≠ w, Br2c2 ≠ nw
B-single: Br2c2 = o
N-single: Nr2c2 = 0
P-single: Pr2c3 = o
B-single: Br1c2 = o
N-single: Nr1c2 = 0
P-single: Pr1c2 = o
P-single: Pr1c3 = o
B-single: Br1c1 = o
N-single: Nr1c1 = 0
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ w, Br1c3 ≠ nw
whip[1]: Br1c3{n .} ==> Nr1c3 ≠ 2
whip[1]: Pr1c3{o .} ==> Br1c3 ≠ n
B-single: Br1c3 = o
N-single: Nr1c3 = 0
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 3
whip[1]: Pr3c2{o .} ==> Br3c1 ≠ n, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ w, Br3c2 ≠ sw
whip[1]: Br3c2{s .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Nr3c2 ≠ 2
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c2 ≠ nw, Br4c2 ≠ se, Br3c1 ≠ o, Br3c1 ≠ w, Br4c1 ≠ o, Br4c1 ≠ e, Br4c1 ≠ s, Br4c1 ≠ w
whip[1]: Br4c1{nes .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ns, Nr4c1 ≠ 0
whip[1]: Br3c1{sw .} ==> Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ nes, Br4c0 ≠ o, Pr4c1 ≠ ne, Pr5c1 ≠ o, Pr5c1 ≠ se, Br4c1 ≠ n, Br4c1 ≠ ne, Br4c1 ≠ ns
P-single: Pr4c1 = se
B-single: Br4c0 = e
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ sw
B-single: Br3c1 = s
N-single: Nr3c1 = 1
whip[1]: Br4c1{wne .} ==> Nr4c1 ≠ 1
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ s, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c1 ≠ nes, Br5c0 ≠ o, Pr5c1 ≠ ne, Pr6c1 ≠ o, Pr6c1 ≠ se, Br5c1 ≠ n, Br5c1 ≠ ne, Br5c1 ≠ ns
P-single: Pr5c1 = ns
B-single: Br5c0 = e
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ swn
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Hr6c1{1 .} ==> Br6c1 ≠ esw, Pr6c1 ≠ ns, Pr6c2 ≠ o, Br5c1 ≠ w, Br5c1 ≠ ew, Br6c1 ≠ w, Br6c1 ≠ ew, Br6c1 ≠ sw
P-single: Pr6c2 = sw
P-single: Pr6c1 = ne
whip[1]: Pr6c2{sw .} ==> Br6c2 ≠ ns, Br6c2 ≠ ne, Br6c2 ≠ s, Br6c2 ≠ e, Br6c2 ≠ n, Br6c2 ≠ o, Br6c1 ≠ ns, Br6c1 ≠ n, Br5c1 ≠ esw, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes
B-single: Br5c1 = sw
N-single: Nr5c1 = 2
whip[1]: Br6c2{esw .} ==> Pr7c2 ≠ o, Nr6c2 ≠ 0
P-single: Pr7c2 = ne
whip[1]: Pr7c2{ne .} ==> Br7c2 ≠ o, Br6c1 ≠ nes, Br6c2 ≠ w, Br6c2 ≠ ew, Br7c2 ≠ e, Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ wne
B-single: Br6c1 = ne
N-single: Nr6c1 = 2
whip[1]: Br7c2{nes .} ==> Pr7c3 ≠ o, Pr7c3 ≠ ne, Pr7c3 ≠ ns, Pr7c3 ≠ se, Nr7c2 ≠ 0
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br7c3 ≠ nw, Br7c3 ≠ swn, Br7c3 ≠ wne
whip[1]: Br6c2{esw .} ==> Nr6c2 ≠ 1
whip[1]: Vr4c4{0 .} ==> Br4c4 ≠ wne, Pr4c4 ≠ se, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Br4c3 ≠ e, Br4c3 ≠ ne, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ w, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ s, Br3c4 ≠ se, Br4c3 ≠ n, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c4 ≠ n, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nes
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 3
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 3
whip[1]: Br3c4{e .} ==> Nr3c4 ≠ 2
whip[1]: Vr3c7{0 .} ==> Br3c7 ≠ nw, Pr3c7 ≠ se, Pr4c7 ≠ ns, Br3c6 ≠ e, Br3c6 ≠ ne, Br3c6 ≠ ew, Br3c6 ≠ wne, Br3c7 ≠ w
P-single: Pr4c7 = sw
P-single: Pr3c7 = o
whip[1]: Pr4c7{sw .} ==> Br4c6 ≠ se
B-single: Br4c6 = nes
N-single: Nr4c6 = 3
whip[1]: Pr3c7{o .} ==> Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ swn, Br2c7 ≠ wne, Br2c7 ≠ nes, Br3c6 ≠ ns, Br3c6 ≠ swn, Br3c7 ≠ n
B-single: Br3c7 = o
N-single: Nr3c7 = 0
whip[1]: Br3c6{sw .} ==> Nr3c6 ≠ 3
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 3
whip[1]: Hr2c10{0 .} ==> Br2c10 ≠ nes, Pr2c11 ≠ sw, Pr2c10 ≠ se, Br1c10 ≠ s, Br1c10 ≠ sw, Br2c10 ≠ ne, Br2c10 ≠ wne
P-single: Pr2c10 = o
P-single: Pr2c11 = o
whip[1]: Pr2c10{o .} ==> Br1c10 ≠ w, Br2c9 ≠ n, Br2c9 ≠ e, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c10 ≠ w
B-single: Br1c10 = o
N-single: Nr1c10 = 0
whip[1]: Br2c10{s .} ==> Pr3c11 ≠ ns, Pr3c10 ≠ ns, Nr2c10 ≠ 2, Nr2c10 ≠ 3, Pr3c11 ≠ nw
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ nw, Br3c10 ≠ ew
whip[1]: Br3c10{wne .} ==> Nr3c10 ≠ 2
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 3
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Hr3c10{0 .} ==> Br3c10 ≠ wne, Pr3c11 ≠ sw, Pr3c10 ≠ se, Br2c10 ≠ s
P-single: Pr3c10 = sw
P-single: Pr3c11 = o
B-single: Br2c10 = o
N-single: Nr2c10 = 0
B-single: Br3c10 = w
N-single: Nr3c10 = 1
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ w, Br2c9 ≠ o, Br3c9 ≠ se
B-single: Br3c9 = nes
N-single: Nr3c9 = 3
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 0
whip[1]: Vr8c7{1 .} ==> Br8c7 ≠ n, Pr9c7 ≠ o, Pr9c7 ≠ sw, Br8c6 ≠ n, Br8c6 ≠ s, Br8c6 ≠ w
B-single: Br8c6 = e
H-single: Hr9c6 = 0
V-single: Vr8c6 = 0
P-single: Pr8c6 = o
H-single: Hr8c5 = 0
P-single: Pr9c6 = o
P-single: Pr9c7 = ns
V-single: Vr9c7 = 1
B-single: Br8c7 = nw
N-single: Nr8c7 = 2
vertical-line-r9{c6 c7} ==> Ir9c6 = in
no-vertical-line-r9{c5 c6} ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
vertical-line-r9{c3 c4} ==> Ir9c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = out
no-vertical-line-r8{c2 c3} ==> Ir8c2 = out
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
no-horizontal-line-{r9 r10}c5 ==> Ir10c5 = in
different-colours-in-r10{c5 c6} ==> Hr10c6 = 1
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
same-colour-in-r7{c2 c3} ==> Vr7c3 = 0
same-colour-in-{r8 r9}c2 ==> Hr9c2 = 0
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
same-colour-in-{r9 r10}c3 ==> Hr10c3 = 0
same-colour-in-r9{c2 c3} ==> Vr9c3 = 0
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
whip[1]: Hr9c6{0 .} ==> Br9c6 ≠ n, Br9c6 ≠ ne, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c6 ≠ nes
whip[1]: Vr8c6{0 .} ==> Br8c5 ≠ e, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne, Br8c5 ≠ nes
whip[1]: Pr8c6{o .} ==> Br7c5 ≠ e, Br7c5 ≠ s, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ nes, Br8c5 ≠ n, Br8c5 ≠ ns, Br8c5 ≠ nw, Br8c5 ≠ swn
whip[1]: Br8c5{sw .} ==> Pr8c5 ≠ ne, Pr8c5 ≠ se, Pr8c5 ≠ ew, Nr8c5 ≠ 3
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 3
whip[1]: Pr9c6{o .} ==> Br8c5 ≠ s, Br8c5 ≠ sw, Br9c6 ≠ w, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw
whip[1]: Br9c6{se .} ==> Nr9c6 ≠ 3
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
whip[1]: Pr9c7{ns .} ==> Br9c7 ≠ o, Br9c6 ≠ o, Br9c6 ≠ s
B-single: Br9c7 = w
N-single: Nr9c7 = 1
P-single: Pr10c7 = nw
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ s, Br10c6 ≠ e, Br10c6 ≠ o, Br9c6 ≠ e, Br10c6 ≠ w, Br10c6 ≠ ne, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ wne, Br10c6 ≠ nes
B-single: Br9c6 = se
N-single: Nr9c6 = 2
P-single: Pr10c6 = se
whip[1]: Pr10c6{se .} ==> Br10c6 ≠ n, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ sw, Br10c6 ≠ ns
whip[1]: Br10c6{swn .} ==> Pr11c6 ≠ ew, Nr10c6 ≠ 0, Nr10c6 ≠ 1
whip[1]: Pr11c5{ew .} ==> Br11c4 ≠ o, Hr11c4 ≠ 0, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ w, Br10c4 ≠ ne
H-single: Hr11c4 = 1
B-single: Br11c4 = n
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
same-colour-in-r10{c4 c5} ==> Vr10c5 = 0
same-colour-in-{r9 r10}c4 ==> Hr10c4 = 0
different-colours-in-r10{c3 c4} ==> Hr10c4 = 1
whip[1]: Vr10c5{0 .} ==> Pr11c5 ≠ nw, Pr10c5 ≠ sw, Br10c4 ≠ se, Br10c4 ≠ esw, Br10c4 ≠ nes, Br10c5 ≠ ew
P-single: Pr11c6 = nw
P-single: Pr10c5 = o
P-single: Pr11c5 = ew
B-single: Br10c5 = se
whip[1]: Pr11c6{nw .} ==> Br11c6 ≠ n, Br11c5 ≠ o, Br10c6 ≠ swn
B-single: Br10c6 = nw
N-single: Nr10c6 = 2
B-single: Br11c5 = n
B-single: Br11c6 = o
whip[1]: Pr10c5{o .} ==> Br9c4 ≠ e, Br9c4 ≠ s, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ nes, Br10c4 ≠ ns, Br10c4 ≠ swn
whip[1]: Br10c4{sw .} ==> Pr10c4 ≠ ne, Pr10c4 ≠ se, Pr10c4 ≠ ew, Nr10c4 ≠ 0, Nr10c4 ≠ 3
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 3
whip[1]: Vr10c4{1 .} ==> Br10c3 ≠ o, Pr11c4 ≠ ew, Pr10c4 ≠ o, Pr10c4 ≠ nw, Br10c3 ≠ n, Br10c3 ≠ s, Br10c3 ≠ w, Br10c3 ≠ ns, Br10c3 ≠ nw, Br10c3 ≠ sw, Br10c3 ≠ swn, Br10c4 ≠ s
P-single: Pr11c4 = ne
B-single: Br10c4 = sw
N-single: Nr10c4 = 2
w[1]-1-in-r9c3-asymmetric-se-corner ==> Pr9c3 ≠ sw
P-single: Pr9c3 = o
whip[1]: Pr11c4{ne .} ==> Br11c3 ≠ n, Br10c3 ≠ se, Br10c3 ≠ esw, Br10c3 ≠ nes
B-single: Br11c3 = o
whip[1]: Br10c3{wne .} ==> Nr10c3 ≠ 0
whip[1]: Pr9c3{o .} ==> Br8c2 ≠ e, Br8c2 ≠ s, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ nes, Br9c2 ≠ n, Br9c2 ≠ e, Br9c2 ≠ ne, Br9c2 ≠ ns, Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c2 ≠ wne, Br9c2 ≠ nes, Br9c3 ≠ n, Br9c3 ≠ w
whip[1]: Br9c3{s .} ==> Pr10c3 ≠ ne
P-single: Pr10c3 = o
whip[1]: Pr10c3{o .} ==> Br9c2 ≠ s, Br9c2 ≠ sw, Br9c3 ≠ s, Br10c3 ≠ ne, Br10c3 ≠ ew, Br10c3 ≠ wne
B-single: Br10c3 = e
N-single: Nr10c3 = 1
P-single: Pr10c4 = ns
B-single: Br9c3 = e
whip[1]: Pr10c4{ns .} ==> Br9c4 ≠ n, Br9c4 ≠ o
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 0
whip[1]: Br9c2{w .} ==> Pr9c2 ≠ ne, Nr9c2 ≠ 2, Nr9c2 ≠ 3, Pr9c2 ≠ se, Pr9c2 ≠ ew
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 3
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ o, Br8c4 ≠ o, Pr8c5 ≠ o, Pr8c5 ≠ nw, Pr9c5 ≠ o, Br8c4 ≠ n, Br8c4 ≠ s, Br8c4 ≠ w, Br8c4 ≠ ns, Br8c4 ≠ nw, Br8c4 ≠ sw, Br8c4 ≠ swn
P-single: Pr9c5 = nw
B-single: Br8c5 = w
N-single: Nr8c5 = 1
whip[1]: Pr9c5{nw .} ==> Br8c4 ≠ e, Br8c4 ≠ ne, Br8c4 ≠ ew, Br8c4 ≠ wne, Br9c4 ≠ w
B-single: Br9c4 = nw
N-single: Nr9c4 = 2
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0, Nr8c4 ≠ 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c4 ≠ o, Br7c4 ≠ n, Br7c4 ≠ w
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 0
whip[1]: Vr7c3{0 .} ==> Pr7c3 ≠ sw, Pr8c3 ≠ nw, Br7c2 ≠ ne, Br7c2 ≠ nes, Br7c3 ≠ w, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw
P-single: Pr8c3 = o
whip[1]: Pr8c3{o .} ==> Br7c2 ≠ ns, Br7c3 ≠ s, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c3 ≠ nes, Br8c2 ≠ n, Br8c2 ≠ nw
B-single: Br7c2 = n
N-single: Nr7c2 = 1
P-single: Pr8c2 = o
whip[1]: Pr8c2{o .} ==> Br8c1 ≠ n, Br8c1 ≠ e, Br8c1 ≠ ne, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ ew, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ w
B-single: Br8c2 = o
N-single: Nr8c2 = 0
whip[1]: Pr9c2{sw .} ==> Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ n, Br9c1 ≠ e
whip[1]: Br9c1{sw .} ==> Pr9c1 ≠ se, Pr10c2 ≠ nw, Nr9c1 ≠ 1, Nr9c1 ≠ 3
P-single: Pr10c2 = o
H-single: Hr10c1 = 0
V-single: Vr9c2 = 0
no-vertical-line-r9{c1 c2} ==> Ir9c1 = out
same-colour-in-r9{c0 c1} ==> Vr9c1 = 0
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
whip[1]: Pr10c2{o .} ==> Br9c1 ≠ ne, Br9c1 ≠ sw, Br9c2 ≠ w, Br10c1 ≠ n, Br10c1 ≠ e, Br10c1 ≠ ne
B-single: Br10c1 = o
N-single: Nr10c1 = 0
P-single: Pr10c1 = o
B-single: Br9c2 = o
N-single: Nr9c2 = 0
P-single: Pr9c2 = o
B-single: Br9c1 = o
N-single: Nr9c1 = 0
P-single: Pr9c1 = o
whip[1]: Pr9c2{o .} ==> Br8c1 ≠ s, Br8c1 ≠ sw
whip[1]: Br8c1{w .} ==> Nr8c1 ≠ 2, Nr8c1 ≠ 3
whip[1]: Pr9c1{o .} ==> Br8c1 ≠ w
B-single: Br8c1 = o
N-single: Nr8c1 = 0
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 3
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ ne
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Pr9c4{se .} ==> Br8c4 ≠ esw
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Pr1c5{o .} ==> Br1c5 ≠ nes, Br1c5 ≠ ns
whip[1]: Br1c5{se .} ==> Pr1c6 ≠ ew, Pr1c6 ≠ sw, Nr1c5 ≠ 3
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ esw, Br1c6 ≠ nes
whip[1]: Br1c6{wne .} ==> Pr1c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se
P-single: Pr1c6 = se
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ s
B-single: Br1c5 = se
N-single: Nr1c5 = 2
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ swn, Br1c7 ≠ s
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 1, Nr1c7 ≠ 3
N-single: Nr1c7 = 2
P-single: Pr1c8 = o
whip[1]: Pr1c8{o .} ==> Br1c7 ≠ ns, Br1c8 ≠ n, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nes
B-single: Br1c7 = sw
P-single: Pr1c7 = sw
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ swn
B-single: Br1c6 = wne
whip[1]: Br1c8{se .} ==> Nr1c8 ≠ 3
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Pr1c9{o .} ==> Br1c8 ≠ se, Br1c8 ≠ e
whip[1]: Br1c8{s .} ==> Nr1c8 ≠ 2
whip[1]: Hr1c10{0 .} ==> Br0c10 ≠ s
B-single: Br0c10 = o
whip[1]: Pr11c2{o .} ==> Br11c2 ≠ n
B-single: Br11c2 = o
whip[1]: Pr11c7{o .} ==> Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ ne, Br8c11 ≠ w, Pr8c11 ≠ sw
P-single: Pr8c11 = o
B-single: Br8c11 = o
B-single: Br8c10 = o
N-single: Nr8c10 = 0
whip[1]: Pr8c11{o .} ==> Br7c10 ≠ ns, Br7c10 ≠ swn
whip[1]: Br7c10{nw .} ==> Nr7c10 ≠ 3
whip[1]: Pr8c10{nw .} ==> Br7c9 ≠ swn, Br7c9 ≠ wne
whip[1]: Br7c9{nes .} ==> Pr8c9 ≠ o, Pr8c10 ≠ o
P-single: Pr8c10 = nw
P-single: Pr8c9 = ne
whip[1]: Pr8c10{nw .} ==> Br8c9 ≠ o, Br7c10 ≠ n
B-single: Br7c10 = nw
N-single: Nr7c10 = 2
B-single: Br8c9 = n
N-single: Nr8c9 = 1
whip[1]: Pr8c9{ne .} ==> Br7c8 ≠ nw, Br7c9 ≠ nes
B-single: Br7c9 = esw
B-single: Br7c8 = wne
N-single: Nr7c8 = 3
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ sw, Br3c2 ≠ o, Br4c2 ≠ ns, Br4c3 ≠ o, Br4c3 ≠ s, Br4c2 ≠ ew
B-single: Br4c2 = ne
P-single: Pr4c2 = ew
B-single: Br3c2 = s
N-single: Nr3c2 = 1
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ wne
B-single: Br4c1 = nw
N-single: Nr4c1 = 2
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 0
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ sw, Br3c5 ≠ ns, Br3c6 ≠ s, Br2c5 ≠ nw, Br2c5 ≠ wne, Br3c5 ≠ ew
B-single: Br3c5 = ne
P-single: Pr3c5 = ne
B-single: Br2c5 = swn
N-single: Nr2c5 = 3
B-single: Br3c6 = sw
N-single: Nr3c6 = 2
whip[1]: Pr3c5{ne .} ==> Br3c4 ≠ e
B-single: Br3c4 = o
N-single: Nr3c4 = 0
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ sw, Br1c8 ≠ o, Br2c8 ≠ ns, Br2c9 ≠ s, Br2c8 ≠ ew
B-single: Br2c8 = ne
P-single: Pr2c8 = ew
B-single: Br2c9 = sw
N-single: Nr2c9 = 2
B-single: Br1c8 = s
N-single: Nr1c8 = 1
whip[1]: Pr2c8{ew .} ==> Br2c7 ≠ ne
B-single: Br2c7 = n
N-single: Nr2c7 = 1
whip[1]: Hr5c3{1 .} ==> Br5c3 ≠ esw, Br5c3 ≠ o, Pr5c4 ≠ o, Pr5c4 ≠ se, Br4c3 ≠ w, Br5c3 ≠ e, Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw
B-single: Br4c3 = sw
N-single: Nr4c3 = 2
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ swn, Br5c4 ≠ wne, Br5c4 ≠ o, Br5c4 ≠ e, Br5c4 ≠ s
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ wne, Br5c3 ≠ nw, Br5c3 ≠ swn
whip[1]: Pr4c5{o .} ==> Br4c4 ≠ se, Br4c4 ≠ e
whip[1]: Br4c4{s .} ==> Nr4c4 ≠ 2
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Vr6c4{0 .} ==> Br6c3 ≠ nes, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ wne
whip[1]: Br6c3{nw .} ==> Nr6c3 ≠ 3
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ swn, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ esw
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 3
whip[1]: Hr6c4{0 .} ==> Br5c4 ≠ nes, Br5c4 ≠ ns, Br5c4 ≠ sw, Br5c4 ≠ esw
whip[1]: Br5c4{ew .} ==> Nr5c4 ≠ 3
whip[1]: Hr7c4{0 .} ==> Br7c4 ≠ wne, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ swn
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Pr7c5{se .} ==> Br7c5 ≠ w, Br7c5 ≠ n
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 1
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ e, Br7c3 ≠ n
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 1
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ e, Br6c5 ≠ ns
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ w, Br6c3 ≠ ns
whip[1]: Pr5c5{sw .} ==> Br5c4 ≠ n, Br5c4 ≠ ew
whip[1]: Pr8c4{ne .} ==> Br7c4 ≠ ew, Br7c4 ≠ s
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ ew, Br5c5 ≠ se
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 2
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ ns, Br5c3 ≠ ne
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 2
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
Entering_level_W2_with_<Fact-165010>
Entering_level_W3_with_<Fact-165396>
Entering_level_W4_with_<Fact-166950>
Entering_level_W5_with_<Fact-172296>
GRID 0 NOT SOLVED. 672 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.   .   .   .   .   .———.   .   .   .   .
              0     | 3 |         0
.   .   .   .   .———.   .———.———.   .   .
  0             |     0       2 |
.   .   .   .   .———.   .   .   .———.   .
          0       2 |         0     |
.———.———.   .   .   .———.   .   .———.   .
|     2 |         0     |       |     0
.   .   .———.....   .———.   .   .———.   .
|     0     :   :   |     0         |
.———.   .....   .....   .   .   .   .———.
    |   :     0     :             0     |
.   .———.....   .....   .   .———.   .———.
  0         :   :     0     |   | 3 |
.   .   .   .....   .   .———.   .———.   .
          0     |     1 |     0
.   .   .   .———.   .   .   .   .   .   .
          1 |     0     |             0
.   .   .   .   .   .———.   .   .   .   .
      0     |     2 |     0
.   .   .   .———.———.   .   .   .   .   .

init-time = 4m 16.52s, solve-time = 2m 17.21s, total-time = 6m 33.73s
nb-facts=<Fact-189723>
Quasi-Loop max length = 0
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


Manual finish:

.   .   .   .   .   .———.   .   .   .   .
              0     | 3 |         0
.   .   .   .   .———.   .———.———.   .   .
  0             |     0       2 |
.   .   .   .   .———.   .   .   .———.   .
          0       2 |         0     |
.———.———.   .   .   .———.   .   .———.   .
|     2 |         0     |       |     0
.   .   .———.....   .———.   .   .———.   .
|     0     :   :   |     0         |
.———.   .....   .....   .   .   .   .———.
    |   :     0     :             0     |
.   .———.....   .....   .   .———.   .———.
  0         :   :     0     |   | 3 |
.   .   .   .....   .   .———.   .———.   .
          0     |     1 |     0
.   .   .   .———.   .   .   .   .   .   .
          1 |     0     |             0
.   .   .   .   .   .———.   .   .   .   .
      0     |     2 |     0
.   .   .   .———.———.   .   .   .   .   .


Vr6c3=1 ==> small loop.

Vr6c3 = 0:
.   .   .   .   .   .———.   .   .   .   .
              0     | 3 |         0
.   .   .   .   .———.   .———.———.   .   .
  0             |     0       2 |
.   .   .   .   .———.   .   .   .———.   .
          0       2 |         0     |
.———.———.   .   .   .———.   .   .———.   .
|     2 |         0     |       |     0
.   .   .———.———.   .———.   .   .———.   .
|     0         |   |     0         |
.———.   .   .   .———.   .   .   .   .———.
    |         0                   0     |
.   .———.———.   .   .   .   .———.   .———.
  0         |         0     |   | 3 |
.   .   .   .———.   .   .———.   .———.   .
          0     |     1 |     0
.   .   .   .———.   .   .   .   .   .   .
          1 |     0     |             0
.   .   .   .   .   .———.   .   .   .   .
      0     |     2 |     0
.   .   .   .———.———.   .   .   .   .   .




----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

USING XTD-LOOPS:

----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 0 . 3 . . 0 .
0 . . . . 0 . 2 . .
. . 0 . 2 . . 0 . .
. 2 . . 0 . . . . 0
. 0 . . . . 0 . . .
. . . 0 . . . . 0 .
0 . . . . 0 . . 3 .
. . 0 . . 1 . 0 . .
. . 1 . 0 . . . . 0
. 0 . . 2 . 0 . . .

start init-grid-structure 3.69548797607422e-05
start create-csp-variables
start create-labels 0.00185585021972656
start init-physical-csp-links 0.0135328769683838
start init-physical-non-csp-links 10.3689270019531
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.19974398612976
     start init-physical-BN-non-csp-links at local time 8.74876093864441
     start init-physical-BP-non-csp-links at local time 18.2365031242371
     end init-physical-BP-non-csp-links at local time 240.868253946304
end init-physical-non-csp-links 251.237231969833
start init-corner-B-c-values 251.237509012222
start init-outer-B-candidates 251.237571954727
start init-outer-I-candidates 251.238637924194
start init-H-candidates 251.239109039307
start init-V-candidates 251.243562936783
start init-P-candidates 251.248688936234
start init-inner-I-candidates 251.258857965469
start init-inner-N-and-B-candidates 251.262492895126
start solution 251.280084133148
entering BRT
w[0]-0-in-r10c7 ==> Hr11c7 = 0, Hr10c7 = 0, Vr10c8 = 0, Vr10c7 = 0
w[0]-0-in-r10c2 ==> Hr11c2 = 0, Hr10c2 = 0, Vr10c3 = 0, Vr10c2 = 0
w[0]-0-in-r9c10 ==> Hr10c10 = 0, Hr9c10 = 0, Vr9c11 = 0, Vr9c10 = 0
w[0]-0-in-r9c5 ==> Hr10c5 = 0, Hr9c5 = 0, Vr9c6 = 0, Vr9c5 = 0
w[0]-0-in-r8c8 ==> Hr9c8 = 0, Hr8c8 = 0, Vr8c9 = 0, Vr8c8 = 0
w[0]-0-in-r8c3 ==> Hr9c3 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr8c3 = 0
w[0]-0-in-r7c6 ==> Hr8c6 = 0, Hr7c6 = 0, Vr7c7 = 0, Vr7c6 = 0
w[0]-0-in-r7c1 ==> Hr8c1 = 0, Hr7c1 = 0, Vr7c2 = 0, Vr7c1 = 0
w[0]-0-in-r6c9 ==> Hr7c9 = 0, Hr6c9 = 0, Vr6c10 = 0, Vr6c9 = 0
w[0]-0-in-r6c4 ==> Hr7c4 = 0, Hr6c4 = 0, Vr6c5 = 0, Vr6c4 = 0
w[0]-0-in-r5c7 ==> Hr6c7 = 0, Hr5c7 = 0, Vr5c8 = 0, Vr5c7 = 0
w[0]-0-in-r5c2 ==> Hr6c2 = 0, Hr5c2 = 0, Vr5c3 = 0, Vr5c2 = 0
w[0]-0-in-r4c10 ==> Hr5c10 = 0, Hr4c10 = 0, Vr4c11 = 0, Vr4c10 = 0
w[0]-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[0]-0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
w[0]-0-in-r2c6 ==> Hr3c6 = 0, Hr2c6 = 0, Vr2c7 = 0, Vr2c6 = 0
w[0]-0-in-r2c1 ==> Hr3c1 = 0, Hr2c1 = 0, Vr2c2 = 0, Vr2c1 = 0
w[0]-0-in-r1c9 ==> Hr2c9 = 0, Hr1c9 = 0, Vr1c10 = 0, Vr1c9 = 0
w[0]-0-in-r1c4 ==> Hr2c4 = 0, Hr1c4 = 0, Vr1c5 = 0, Vr1c4 = 0
w[0]-adjacent-3-0-in-c9{r7 r6} ==> Vr7c10 = 1, Vr7c9 = 1, Hr8c9 = 1, Hr7c10 = 1, Hr7c8 = 1, Vr8c10 = 0, Hr8c10 = 0
w[0]-adjacent-3-0-in-c6{r1 r2} ==> Vr1c7 = 1, Vr1c6 = 1, Hr2c7 = 1, Hr2c5 = 1, Hr1c6 = 1, Hr1c7 = 0, Hr1c5 = 0
w[1]-3-in-r7c9-closed-sw-corner ==> Pr7c10 ≠ o
w[1]-3-in-r7c9-closed-se-corner ==> Pr7c9 ≠ o
w[1]-3-in-r1c6-closed-ne-corner ==> Pr2c6 ≠ o
w[1]-3-in-r1c6-closed-nw-corner ==> Pr2c7 ≠ o
P-single: Pr2c7 = ne
P-single: Pr2c6 = nw
P-single: Pr7c9 = sw
P-single: Pr7c10 = se
P-single: Pr3c9 = ne
H-single: Hr3c9 = 1
V-single: Vr2c9 = 1
P-single: Pr3c8 = o
H-single: Hr3c7 = 0
V-single: Vr2c8 = 0
w[1]-2-in-r2c8-open-sw-corner ==> Hr2c8 = 1
P-single: Pr4c6 = ne
H-single: Hr4c6 = 1
V-single: Vr3c6 = 1
P-single: Pr4c5 = o
H-single: Hr4c4 = 0
V-single: Vr3c5 = 0
w[1]-2-in-r3c5-open-sw-corner ==> Hr3c5 = 1
P-single: Pr5c3 = ne
H-single: Hr5c3 = 1
V-single: Vr4c3 = 1
P-single: Pr5c2 = o
H-single: Hr5c1 = 0
V-single: Vr4c2 = 0
w[1]-2-in-r4c2-open-sw-corner ==> Hr4c2 = 1
P-single: Pr2c9 = sw
P-single: Pr3c6 = sw
P-single: Pr4c3 = sw
P-single: Pr10c11 = o
V-single: Vr10c11 = 0
P-single: Pr9c11 = o
V-single: Vr8c11 = 0
P-single: Pr5c11 = o
V-single: Vr5c11 = 0
P-single: Pr4c11 = o
V-single: Vr3c11 = 0
P-single: Pr8c1 = o
V-single: Vr8c1 = 0
P-single: Pr7c1 = o
V-single: Vr6c1 = 0
P-single: Pr3c1 = o
V-single: Vr3c1 = 0
P-single: Pr2c1 = o
V-single: Vr1c1 = 0
P-single: Pr11c8 = o
H-single: Hr11c8 = 0
P-single: Pr11c7 = o
H-single: Hr11c6 = 0
P-single: Pr11c3 = o
H-single: Hr11c3 = 0
P-single: Pr11c2 = o
H-single: Hr11c1 = 0
P-single: Pr1c10 = o
H-single: Hr1c10 = 0
P-single: Pr1c9 = o
H-single: Hr1c8 = 0
P-single: Pr1c5 = o
P-single: Pr1c4 = o
H-single: Hr1c3 = 0
w[1]-1-in-r9c3-symmetric-sw-corner ==> Pr9c4 ≠ o
P-single: Pr9c4 = se
H-single: Hr9c4 = 1
V-single: Vr9c4 = 1
w[1]-1-in-r8c6-symmetric-sw-corner ==> Pr8c7 ≠ o
P-single: Pr8c7 = se
H-single: Hr8c7 = 1
V-single: Vr8c7 = 1
entering level Loop with <Fact-93730>
entering level Col with <Fact-94306>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
no-vertical-line-r9{c9 c10} ==> Ir9c9 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-vertical-line-r8{c8 c9} ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
vertical-line-r8{c6 c7} ==> Ir8c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
vertical-line-r7{c8 c9} ==> Ir7c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r6 r7}c10 ==> Ir7c10 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
no-horizontal-line-{r7 r8}c1 ==> Ir7c1 = out
no-vertical-line-r7{c1 c2} ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
no-vertical-line-r10{c7 c8} ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-horizontal-line-{r10 r11}c3 ==> Ir10c3 = out
no-vertical-line-r10{c2 c3} ==> Ir10c2 = out
no-vertical-line-r10{c1 c2} ==> Ir10c1 = out
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
no-horizontal-line-{r0 r1}c10 ==> Ir1c10 = out
no-vertical-line-r1{c9 c10} ==> Ir1c9 = out
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
no-vertical-line-r2{c7 c8} ==> Ir2c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
vertical-line-r1{c5 c6} ==> Ir1c6 = in
vertical-line-r1{c6 c7} ==> Ir1c7 = out
horizontal-line-{r2 r3}c5 ==> Ir3c5 = out
no-vertical-line-r3{c4 c5} ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
no-horizontal-line-{r3 r4}c4 ==> Ir4c4 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
horizontal-line-{r3 r4}c6 ==> Ir3c6 = in
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = out
no-horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
no-vertical-line-r3{c7 c8} ==> Ir3c8 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
horizontal-line-{r2 r3}c9 ==> Ir2c9 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
no-vertical-line-r2{c9 c10} ==> Ir2c10 = out
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
same-colour-in-r4{c3 c4} ==> Vr4c4 = 0
same-colour-in-r2{c3 c4} ==> Vr2c4 = 0
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
same-colour-in-{r1 r2}c3 ==> Hr2c3 = 0
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1

XTD-LOOP[12]: Hr5c3-Vr4c3-Hr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Vr6c2-Hr7c2- ==> Vr6c3-Hr6c3-Vr5c4 = 0
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = in
no-vertical-line-r6{c3 c4} ==> Ir6c3 = in
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
same-colour-in-r7{c4 c5} ==> Vr7c5 = 0
same-colour-in-r6{c5 c6} ==> Vr6c6 = 0
same-colour-in-{r6 r7}c5 ==> Hr7c5 = 0
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
same-colour-in-{r2 r3}c2 ==> Hr3c2 = 0
same-colour-in-{r2 r3}c4 ==> Hr3c4 = 0
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1

XTD-LOOP[18]: Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Vr4c9- ==> Hr5c8-Vr4c8-Hr4c7 = 0
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-vertical-line-r5{c7 c8} ==> Ir5c8 = in
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
same-colour-in-r6{c7 c8} ==> Vr6c8 = 0
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
same-colour-in-r5{c8 c9} ==> Vr5c9 = 0
same-colour-in-{r5 r6}c8 ==> Hr6c8 = 0
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
same-colour-in-r1{c10 c11} ==> Vr1c11 = 0
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
same-colour-in-r9{c7 c8} ==> Vr9c8 = 0
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
3-in-r7c9-no-U-turn-from-south ==> Hr9c9 = O
same-colour-in-r7{c10 c11} ==> Vr7c11 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
same-colour-in-{r10 r11}c10 ==> Hr11c10 = 0
Starting_init_links_with_<Fact-96808>
2138 candidates, 8306 csp-links and 24548 links. Density = 1.07%
starting non trivial part of solution
Entering_level_W1_with_<Fact-162521>
whip[1]: Hr11c10{0 .} ==> Br10c10 ≠ nes, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Br10c10{nw .} ==> Nr10c10 ≠ 3
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c9 ≠ e, Br10c9 ≠ s
whip[1]: Vr7c8{1 .} ==> Br7c8 ≠ nes, Br7c7 ≠ o, Br7c8 ≠ o, Pr7c8 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ nw, Pr7c8 ≠ ew, Pr8c8 ≠ o, Br7c7 ≠ n, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ sw, Br7c7 ≠ swn, Br7c8 ≠ n, Br7c8 ≠ e, Br7c8 ≠ s, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ se
P-single: Pr8c8 = nw
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ s, Br8c7 ≠ e, Br8c7 ≠ o, Br7c7 ≠ e, Br7c7 ≠ ne, Br7c7 ≠ ew, Br7c7 ≠ wne, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br8c7 ≠ w, Br8c7 ≠ ne, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ wne, Br8c7 ≠ nes
whip[1]: Br8c7{swn .} ==> Nr8c7 ≠ 0
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 0
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0, Nr7c7 ≠ 1
whip[1]: Pr7c8{sw .} ==> Br6c7 ≠ se, Br6c7 ≠ esw, Br6c7 ≠ nes, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn
whip[1]: Vr6c11{1 .} ==> Br6c10 ≠ swn, Br6c11 ≠ o, Br6c10 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ nw, Pr7c11 ≠ o, Pr7c11 ≠ sw, Br6c10 ≠ n, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ sw
B-single: Br6c11 = w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ w, Br7c10 ≠ ne, Br7c10 ≠ sw, Br7c10 ≠ wne, Br7c10 ≠ nes, Br7c10 ≠ o, Br7c10 ≠ s
whip[1]: Br7c10{swn .} ==> Nr7c10 ≠ 0
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ esw, Br5c10 ≠ nes, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ w
whip[1]: Br5c10{wne .} ==> Nr5c10 ≠ 0
whip[1]: Vr7c11{0 .} ==> Br7c10 ≠ esw, Br7c11 ≠ w, Pr7c11 ≠ ns, Pr8c11 ≠ ns, Pr8c11 ≠ nw, Br7c10 ≠ e, Br7c10 ≠ se, Br7c10 ≠ ew
P-single: Pr7c11 = nw
B-single: Br7c11 = o
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ ew, Br6c10 ≠ wne
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 1
whip[1]: Pr8c11{sw .} ==> Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ n, Br8c10 ≠ e, Br8c10 ≠ ns
whip[1]: Hr9c9{0 .} ==> Br9c9 ≠ nes, Pr9c9 ≠ se, Pr9c10 ≠ nw, Br8c9 ≠ s, Br8c9 ≠ ns, Br8c9 ≠ se, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ nes, Br9c9 ≠ n, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c9 ≠ wne
P-single: Pr9c10 = o
P-single: Pr9c9 = o
whip[1]: Pr9c10{o .} ==> Br8c9 ≠ e, Br8c9 ≠ ne, Br8c9 ≠ ew, Br8c9 ≠ wne, Br8c10 ≠ s, Br8c10 ≠ w, Br8c10 ≠ sw, Br8c10 ≠ wne, Br8c10 ≠ nes, Br9c9 ≠ e, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw
whip[1]: Br9c9{sw .} ==> Nr9c9 ≠ 3
whip[1]: Br8c10{ne .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ se, Nr8c10 ≠ 1, Nr8c10 ≠ 3, Pr8c10 ≠ sw
whip[1]: Br8c9{nw .} ==> Nr8c9 ≠ 3
whip[1]: Pr9c9{o .} ==> Br8c9 ≠ w, Br8c9 ≠ nw, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c9 ≠ w, Br9c9 ≠ sw
whip[1]: Br9c9{s .} ==> Pr10c9 ≠ ne, Pr10c9 ≠ ns, Nr9c9 ≠ 2, Pr10c9 ≠ nw
whip[1]: Br9c8{sw .} ==> Nr9c8 ≠ 3
whip[1]: Br8c9{n .} ==> Nr8c9 ≠ 2
whip[1]: Vr5c10{1 .} ==> Br5c10 ≠ ns, Br5c9 ≠ o, Pr5c10 ≠ o, Pr6c10 ≠ o, Br5c9 ≠ n, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ sw, Br5c9 ≠ swn, Br5c10 ≠ e, Br5c10 ≠ s, Br5c10 ≠ ne
P-single: Pr6c10 = ne
P-single: Pr5c10 = sw
whip[1]: Pr6c10{ne .} ==> Br5c9 ≠ se, Br5c9 ≠ esw, Br5c9 ≠ nes, Br5c10 ≠ ew, Br5c10 ≠ wne, Br6c10 ≠ se, Br6c10 ≠ esw
B-single: Br6c10 = nes
N-single: Nr6c10 = 3
P-single: Pr6c11 = sw
whip[1]: Br5c10{swn .} ==> Nr5c10 ≠ 1
whip[1]: Br5c9{wne .} ==> Nr5c9 ≠ 0
whip[1]: Pr5c10{sw .} ==> Br5c9 ≠ e, Br4c9 ≠ ne, Br4c9 ≠ w, Br4c9 ≠ e, Br4c9 ≠ n, Br4c9 ≠ o, Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ esw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br5c9 ≠ ew, Br5c10 ≠ swn
B-single: Br5c10 = sw
N-single: Nr5c10 = 2
whip[1]: Br5c9{wne .} ==> Pr5c9 ≠ o, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Pr5c9 ≠ sw, Nr5c9 ≠ 1
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ se, Br4c8 ≠ esw, Br4c8 ≠ nes, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c8 ≠ ne
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Hr1c1{0 .} ==> Br1c1 ≠ wne, Br0c1 ≠ s, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Br1c1 ≠ nw, Br1c1 ≠ swn
P-single: Pr1c1 = o
B-single: Br0c1 = o
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 3
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c2 ≠ n, Br1c2 ≠ w
whip[1]: Hr10c8{0 .} ==> Br10c8 ≠ nes, Pr10c8 ≠ ne, Pr10c9 ≠ ew, Pr10c9 ≠ sw, Br9c8 ≠ s, Br9c8 ≠ sw, Br10c8 ≠ n, Br10c8 ≠ ne, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ wne
P-single: Pr10c8 = o
whip[1]: Pr10c8{o .} ==> Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ nes, Br9c8 ≠ w, Br10c8 ≠ w, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c8 ≠ esw
B-single: Br9c8 = o
N-single: Nr9c8 = 0
P-single: Pr9c8 = o
whip[1]: Pr9c8{o .} ==> Br8c7 ≠ ns, Br8c7 ≠ swn, Br9c7 ≠ n, Br9c7 ≠ nw
whip[1]: Br9c7{w .} ==> Pr9c7 ≠ ne, Nr9c7 ≠ 2, Nr9c7 ≠ 3, Pr9c7 ≠ se, Pr9c7 ≠ ew
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 3
whip[1]: Br10c8{se .} ==> Nr10c8 ≠ 3
whip[1]: Pr10c9{se .} ==> Br10c9 ≠ esw, Br10c9 ≠ nes, Br10c9 ≠ n, Br10c9 ≠ w
whip[1]: Br10c9{se .} ==> Pr11c9 ≠ ne, Pr10c10 ≠ sw, Nr10c9 ≠ 1, Nr10c9 ≠ 3
P-single: Pr10c10 = o
H-single: Hr10c9 = 0
V-single: Vr10c10 = 0
no-vertical-line-r10{c9 c10} ==> Ir10c9 = out
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
same-colour-in-r10{c8 c9} ==> Vr10c9 = 0
whip[1]: Pr10c10{o .} ==> Br9c9 ≠ s, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c10 ≠ n, Br10c10 ≠ w, Br10c10 ≠ nw
B-single: Br10c10 = o
N-single: Nr10c10 = 0
P-single: Pr11c10 = o
B-single: Br10c9 = o
N-single: Nr10c9 = 0
P-single: Pr11c9 = o
P-single: Pr10c9 = o
B-single: Br9c9 = o
N-single: Nr9c9 = 0
whip[1]: Pr11c10{o .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ s, Br10c8 ≠ se
B-single: Br10c8 = o
N-single: Nr10c8 = 0
B-single: Br11c8 = o
whip[1]: Vr10c1{0 .} ==> Br10c1 ≠ swn, Br10c0 ≠ e, Pr11c1 ≠ ne, Pr10c1 ≠ ns, Pr10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr11c1 = o
B-single: Br10c0 = o
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Br10c1{ne .} ==> Nr10c1 ≠ 3
whip[1]: Pr10c1{ne .} ==> Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ ew, Br9c1 ≠ wne, Br9c1 ≠ nes
whip[1]: Vr1c11{0 .} ==> Br1c10 ≠ nes, Br1c11 ≠ w, Pr1c11 ≠ sw, Pr2c11 ≠ ns, Pr2c11 ≠ nw, Br1c10 ≠ ne, Br1c10 ≠ wne
P-single: Pr1c11 = o
B-single: Br1c11 = o
whip[1]: Br1c10{sw .} ==> Nr1c10 ≠ 3
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ esw, Br2c10 ≠ swn, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ ns
whip[1]: Vr4c7{1 .} ==> Br4c7 ≠ nes, Br4c6 ≠ o, Br4c7 ≠ o, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ nw, Pr4c7 ≠ ew, Pr5c7 ≠ o, Br4c6 ≠ n, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ sw, Br4c6 ≠ swn, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ s, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ se
P-single: Pr5c7 = nw
whip[1]: Pr5c7{nw .} ==> Br5c6 ≠ s, Br5c6 ≠ e, Br5c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ ne, Br4c6 ≠ ew, Br4c6 ≠ wne, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br5c6 ≠ w, Br5c6 ≠ ne, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br5c6{swn .} ==> Pr5c6 ≠ o, Nr5c6 ≠ 0
P-single: Pr5c6 = se
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ n, Br5c5 ≠ w, Br5c5 ≠ s, Br5c5 ≠ n, Br5c5 ≠ o, Br4c6 ≠ esw, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ sw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ ns
whip[1]: Br5c6{swn .} ==> Pr6c6 ≠ o, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Nr5c6 ≠ 1
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 0
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0, Nr4c6 ≠ 1
whip[1]: Br4c7{wne .} ==> Nr4c7 ≠ 0
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ swn
whip[1]: Hr6c6{0 .} ==> Br6c6 ≠ nes, Pr6c6 ≠ ne, Pr6c7 ≠ sw, Br5c6 ≠ swn, Br6c6 ≠ n, Br6c6 ≠ ne, Br6c6 ≠ ns
P-single: Pr6c7 = o
B-single: Br5c6 = nw
N-single: Nr5c6 = 2
whip[1]: Pr6c7{o .} ==> Br6c6 ≠ e, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c7 ≠ n, Br6c7 ≠ w, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ swn, Br6c7 ≠ wne
whip[1]: Br6c7{s .} ==> Pr7c7 ≠ ne, Nr6c7 ≠ 2, Nr6c7 ≠ 3
P-single: Pr7c7 = o
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ s, Br6c6 ≠ sw, Br6c7 ≠ s, Br7c7 ≠ esw, Br7c7 ≠ nes
B-single: Br7c7 = se
N-single: Nr7c7 = 2
whip[1]: Pr7c8{se .} ==> Br6c8 ≠ ne, Br6c8 ≠ o, Br6c8 ≠ n, Br6c8 ≠ e
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 0
whip[1]: Br6c6{w .} ==> Nr6c6 ≠ 2, Nr6c6 ≠ 3
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ w, Br6c5 ≠ sw, Br6c5 ≠ o, Br6c5 ≠ s
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 0
whip[1]: Hr6c8{0 .} ==> Br6c8 ≠ nes, Pr6c8 ≠ se, Pr6c9 ≠ nw, Br5c8 ≠ s, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ wne
P-single: Pr6c9 = o
P-single: Pr6c8 = o
whip[1]: Pr6c9{o .} ==> Br5c8 ≠ e, Br5c8 ≠ ew, Br5c9 ≠ wne, Br6c8 ≠ se, Br6c8 ≠ ew
B-single: Br5c9 = ne
N-single: Nr5c9 = 2
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ nw, Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 0
whip[1]: Br6c8{w .} ==> Nr6c8 ≠ 2, Nr6c8 ≠ 3
N-single: Nr6c8 = 1
whip[1]: Br5c8{nw .} ==> Nr5c8 ≠ 3
whip[1]: Pr6c8{o .} ==> Br5c8 ≠ w, Br5c8 ≠ nw, Br6c7 ≠ e, Br6c8 ≠ w
B-single: Br6c8 = s
P-single: Pr7c8 = se
B-single: Br6c7 = o
N-single: Nr6c7 = 0
whip[1]: Pr7c8{se .} ==> Br7c8 ≠ w, Br7c8 ≠ ew
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 1
whip[1]: Br5c8{n .} ==> Nr5c8 ≠ 2
whip[1]: Hr4c7{0 .} ==> Br4c7 ≠ wne, Pr4c7 ≠ se, Pr4c8 ≠ sw, Br3c7 ≠ s, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ nes, Br4c7 ≠ nw
P-single: Pr4c8 = o
whip[1]: Pr4c8{o .} ==> Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ ew, Br3c7 ≠ wne, Br4c7 ≠ ew, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ swn, Br4c8 ≠ wne
B-single: Br4c7 = w
N-single: Nr4c7 = 1
P-single: Pr5c8 = o
whip[1]: Pr5c8{o .} ==> Br4c8 ≠ s, Br5c8 ≠ n
B-single: Br5c8 = o
N-single: Nr5c8 = 0
P-single: Pr5c9 = ne
B-single: Br4c8 = e
N-single: Nr4c8 = 1
P-single: Pr4c9 = se
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ s, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 1
whip[1]: Pr4c9{se .} ==> Br3c9 ≠ w, Br3c9 ≠ e, Br3c9 ≠ n, Br3c9 ≠ o, Br3c9 ≠ ne, Br3c9 ≠ nw, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br4c9 ≠ sw
B-single: Br4c9 = swn
N-single: Nr4c9 = 3
P-single: Pr4c10 = nw
whip[1]: Pr4c10{nw .} ==> Br3c10 ≠ s, Br3c10 ≠ e, Br3c10 ≠ n, Br3c10 ≠ o, Br3c9 ≠ s, Br3c9 ≠ ns, Br3c10 ≠ ne, Br3c10 ≠ ns, Br3c10 ≠ se, Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br3c10 ≠ nes
whip[1]: Br3c10{wne .} ==> Pr3c10 ≠ o, Pr3c10 ≠ ne, Pr3c10 ≠ nw, Pr3c10 ≠ ew, Nr3c10 ≠ 0
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ nes, Br2c10 ≠ sw
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0, Nr3c9 ≠ 1
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 3
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ w
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 0
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ nes, Br2c4 ≠ o, Br2c5 ≠ o, Pr2c5 ≠ o, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Br2c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se
P-single: Pr2c5 = se
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ w, Br1c5 ≠ w, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br1c5 ≠ nw, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0, Nr2c5 ≠ 1
whip[1]: Br2c4{esw .} ==> Nr2c4 ≠ 0
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Pr3c5{ns .} ==> Br2c4 ≠ se, Br2c4 ≠ esw, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c4 ≠ n
whip[1]: Br3c4{esw .} ==> Pr3c4 ≠ ne
P-single: Pr3c4 = o
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ ew, Br3c4 ≠ w, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw
B-single: Br2c4 = e
N-single: Nr2c4 = 1
P-single: Pr2c4 = o
whip[1]: Pr2c4{o .} ==> Br1c3 ≠ e, Br1c3 ≠ s, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ nw
whip[1]: Br2c3{w .} ==> Pr2c3 ≠ ne, Nr2c3 ≠ 2, Nr2c3 ≠ 3, Pr2c3 ≠ se, Pr2c3 ≠ ew
whip[1]: Br1c3{nw .} ==> Nr1c3 ≠ 3
whip[1]: Br3c4{se .} ==> Nr3c4 ≠ 3
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ wne, Pr1c8 ≠ se, Pr1c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ ns, Br1c7 ≠ e, Br1c7 ≠ ne, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c8 ≠ w, Br1c8 ≠ nw, Br1c8 ≠ ew, Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ swn
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c8 ≠ nw, Br2c8 ≠ se, Br1c7 ≠ o, Br1c7 ≠ n, Br1c7 ≠ w, Br2c7 ≠ o, Br2c7 ≠ e, Br2c7 ≠ s, Br2c7 ≠ w
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Br1c7{swn .} ==> Nr1c7 ≠ 0
whip[1]: Hr3c2{0 .} ==> Br3c2 ≠ nes, Pr3c2 ≠ se, Pr3c3 ≠ nw, Br2c2 ≠ s, Br2c2 ≠ ns, Br2c2 ≠ se, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ nes, Br3c2 ≠ n, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c2 ≠ wne
P-single: Pr3c3 = o
P-single: Pr3c2 = o
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ ew, Br2c2 ≠ wne, Br2c3 ≠ w, Br3c2 ≠ e, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw
B-single: Br2c3 = o
N-single: Nr2c3 = 0
whip[1]: Pr2c3{nw .} ==> Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ e, Br1c2 ≠ s
whip[1]: Br1c2{se .} ==> Pr1c3 ≠ sw, Pr2c2 ≠ ne, Nr1c2 ≠ 1, Nr1c2 ≠ 3
P-single: Pr2c2 = o
H-single: Hr2c2 = 0
V-single: Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c2 = out
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
whip[1]: Pr2c2{o .} ==> Br1c1 ≠ e, Br1c1 ≠ s, Br1c1 ≠ se, Br1c2 ≠ nw, Br1c2 ≠ se, Br2c2 ≠ n, Br2c2 ≠ w, Br2c2 ≠ nw
B-single: Br2c2 = o
N-single: Nr2c2 = 0
P-single: Pr2c3 = o
B-single: Br1c2 = o
N-single: Nr1c2 = 0
P-single: Pr1c2 = o
P-single: Pr1c3 = o
B-single: Br1c1 = o
N-single: Nr1c1 = 0
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ w, Br1c3 ≠ nw
whip[1]: Br1c3{n .} ==> Nr1c3 ≠ 2
whip[1]: Pr1c3{o .} ==> Br1c3 ≠ n
B-single: Br1c3 = o
N-single: Nr1c3 = 0
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 3
whip[1]: Pr3c2{o .} ==> Br3c1 ≠ n, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ w, Br3c2 ≠ sw
whip[1]: Br3c2{s .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Nr3c2 ≠ 2
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c2 ≠ nw, Br4c2 ≠ se, Br3c1 ≠ o, Br3c1 ≠ w, Br4c1 ≠ o, Br4c1 ≠ e, Br4c1 ≠ s, Br4c1 ≠ w
whip[1]: Br4c1{nes .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ns, Nr4c1 ≠ 0
whip[1]: Br3c1{sw .} ==> Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Hr5c4{1 .} ==> Br5c4 ≠ esw, Br4c4 ≠ o, Br5c4 ≠ o, Pr5c4 ≠ o, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Pr5c4 ≠ sw, Pr5c5 ≠ o, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ w, Br4c4 ≠ ne, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ wne, Br5c4 ≠ e, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ sw
P-single: Pr5c5 = sw
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ e, Br5c4 ≠ ns, Br5c4 ≠ n, Br4c4 ≠ se, Br4c4 ≠ esw, Br4c4 ≠ nes, Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c5 ≠ se
whip[1]: Br5c5{esw .} ==> Pr6c5 ≠ o, Nr5c5 ≠ 1
P-single: Pr6c5 = ne
whip[1]: Pr6c5{ne .} ==> Br5c4 ≠ nes, Br5c5 ≠ ew, Br6c5 ≠ e, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ esw, Br6c5 ≠ swn
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w
B-single: Br6c6 = o
N-single: Nr6c6 = 0
P-single: Pr7c6 = o
whip[1]: Pr7c6{o .} ==> Br6c5 ≠ ns, Br7c5 ≠ n, Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ nes
B-single: Br6c5 = n
N-single: Nr6c5 = 1
P-single: Pr7c5 = o
whip[1]: Pr7c5{o .} ==> Br7c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ esw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c5 ≠ w, Br7c5 ≠ sw
whip[1]: Br7c5{s .} ==> Pr8c5 ≠ ne, Pr8c5 ≠ ns, Nr7c5 ≠ 2, Nr7c5 ≠ 3, Pr8c5 ≠ nw
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 0, Nr5c4 ≠ 1
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 0
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes, Br5c3 ≠ wne, Br5c3 ≠ nes, Br5c3 ≠ ne
whip[1]: Vr5c4{0 .} ==> Br5c4 ≠ wne, Pr5c4 ≠ se, Pr6c4 ≠ nw, Br5c3 ≠ e, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ esw
P-single: Pr6c4 = o
B-single: Br5c4 = ne
N-single: Nr5c4 = 2
whip[1]: Pr6c4{o .} ==> Br5c3 ≠ s, Br5c3 ≠ ns, Br5c3 ≠ sw, Br5c3 ≠ swn, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ nes
whip[1]: Br6c3{sw .} ==> Pr6c3 ≠ se, Nr6c3 ≠ 3
P-single: Pr6c3 = o
whip[1]: Pr6c3{o .} ==> Br5c3 ≠ w, Br5c3 ≠ nw, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ w, Br6c3 ≠ sw
whip[1]: Br6c3{s .} ==> Pr7c3 ≠ ne, Pr7c3 ≠ ns, Nr6c3 ≠ 2, Pr7c3 ≠ nw
whip[1]: Br6c2{sw .} ==> Nr6c2 ≠ 3
whip[1]: Br5c3{n .} ==> Nr5c3 ≠ 2, Nr5c3 ≠ 3
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ nw, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ w
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 0
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ nes, Br4c0 ≠ o, Pr4c1 ≠ ne, Pr5c1 ≠ o, Pr5c1 ≠ se, Br4c1 ≠ n, Br4c1 ≠ ne, Br4c1 ≠ ns
P-single: Pr4c1 = se
B-single: Br4c0 = e
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ sw
B-single: Br3c1 = s
N-single: Nr3c1 = 1
whip[1]: Br4c1{wne .} ==> Nr4c1 ≠ 1
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ s, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c1 ≠ nes, Br5c0 ≠ o, Pr5c1 ≠ ne, Pr6c1 ≠ o, Pr6c1 ≠ se, Br5c1 ≠ n, Br5c1 ≠ ne, Br5c1 ≠ ns
P-single: Pr5c1 = ns
B-single: Br5c0 = e
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ swn
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Hr6c1{1 .} ==> Br6c1 ≠ esw, Pr6c1 ≠ ns, Pr6c2 ≠ o, Br5c1 ≠ w, Br5c1 ≠ ew, Br6c1 ≠ w, Br6c1 ≠ ew, Br6c1 ≠ sw
P-single: Pr6c2 = sw
P-single: Pr6c1 = ne
whip[1]: Pr6c2{sw .} ==> Br6c2 ≠ s, Br6c2 ≠ o, Br6c1 ≠ ns, Br6c1 ≠ n, Br5c1 ≠ esw
B-single: Br5c1 = sw
N-single: Nr5c1 = 2
whip[1]: Br6c1{nes .} ==> Pr7c2 ≠ o, Nr6c1 ≠ 1
P-single: Pr7c2 = ne
whip[1]: Pr7c2{ne .} ==> Br7c2 ≠ o, Br6c1 ≠ nes, Br6c2 ≠ w, Br7c2 ≠ e, Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ wne
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
B-single: Br6c1 = ne
N-single: Nr6c1 = 2
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ o, Br7c3 ≠ e, Br7c3 ≠ s
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0
whip[1]: Vr4c4{0 .} ==> Br4c4 ≠ swn, Pr4c4 ≠ se, Pr5c4 ≠ ne, Br4c3 ≠ e, Br4c3 ≠ ne, Br4c3 ≠ ew, Br4c3 ≠ wne, Br4c4 ≠ sw
P-single: Pr5c4 = ew
P-single: Pr4c4 = o
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ o
B-single: Br5c3 = n
N-single: Nr5c3 = 1
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ s, Br3c4 ≠ se, Br4c3 ≠ ns, Br4c3 ≠ swn, Br4c4 ≠ ns
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 3
whip[1]: Br3c4{e .} ==> Nr3c4 ≠ 2
whip[1]: Vr3c7{0 .} ==> Br3c7 ≠ nw, Pr3c7 ≠ se, Pr4c7 ≠ ns, Br3c6 ≠ e, Br3c6 ≠ ne, Br3c6 ≠ ew, Br3c6 ≠ wne, Br3c7 ≠ w
P-single: Pr4c7 = sw
P-single: Pr3c7 = o
whip[1]: Pr4c7{sw .} ==> Br4c6 ≠ se
B-single: Br4c6 = nes
N-single: Nr4c6 = 3
whip[1]: Pr3c7{o .} ==> Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ swn, Br2c7 ≠ wne, Br2c7 ≠ nes, Br3c6 ≠ ns, Br3c6 ≠ swn, Br3c7 ≠ n
B-single: Br3c7 = o
N-single: Nr3c7 = 0
whip[1]: Br3c6{sw .} ==> Nr3c6 ≠ 3
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 3
whip[1]: Hr2c10{0 .} ==> Br2c10 ≠ nes, Pr2c11 ≠ sw, Pr2c10 ≠ se, Br1c10 ≠ s, Br1c10 ≠ sw, Br2c10 ≠ ne, Br2c10 ≠ wne
P-single: Pr2c10 = o
P-single: Pr2c11 = o
whip[1]: Pr2c10{o .} ==> Br1c10 ≠ w, Br2c9 ≠ n, Br2c9 ≠ e, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c10 ≠ w
B-single: Br1c10 = o
N-single: Nr1c10 = 0
whip[1]: Br2c10{s .} ==> Pr3c11 ≠ ns, Pr3c10 ≠ ns, Nr2c10 ≠ 2, Nr2c10 ≠ 3, Pr3c11 ≠ nw
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ nw, Br3c10 ≠ ew
whip[1]: Br3c10{wne .} ==> Nr3c10 ≠ 2
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 3
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Hr3c10{0 .} ==> Br3c10 ≠ wne, Pr3c11 ≠ sw, Pr3c10 ≠ se, Br2c10 ≠ s
P-single: Pr3c10 = sw
P-single: Pr3c11 = o
B-single: Br2c10 = o
N-single: Nr2c10 = 0
B-single: Br3c10 = w
N-single: Nr3c10 = 1
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ w, Br2c9 ≠ o, Br3c9 ≠ se
B-single: Br3c9 = nes
N-single: Nr3c9 = 3
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 0
whip[1]: Vr8c7{1 .} ==> Br8c7 ≠ n, Pr9c7 ≠ o, Pr9c7 ≠ sw, Br8c6 ≠ n, Br8c6 ≠ s, Br8c6 ≠ w
B-single: Br8c6 = e
H-single: Hr9c6 = 0
V-single: Vr8c6 = 0
P-single: Pr8c6 = o
H-single: Hr8c5 = 0
P-single: Pr9c6 = o
P-single: Pr9c7 = ns
V-single: Vr9c7 = 1
B-single: Br8c7 = nw
N-single: Nr8c7 = 2
vertical-line-r9{c6 c7} ==> Ir9c6 = in
no-vertical-line-r9{c5 c6} ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
vertical-line-r9{c3 c4} ==> Ir9c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = out
no-vertical-line-r8{c2 c3} ==> Ir8c2 = out
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
no-horizontal-line-{r9 r10}c5 ==> Ir10c5 = in
different-colours-in-r10{c5 c6} ==> Hr10c6 = 1
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
same-colour-in-r7{c2 c3} ==> Vr7c3 = 0
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
same-colour-in-{r8 r9}c2 ==> Hr9c2 = 0
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
same-colour-in-{r9 r10}c3 ==> Hr10c3 = 0
same-colour-in-r9{c2 c3} ==> Vr9c3 = 0
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1

XTD-LOOP[54]: Vr9c4-Hr9c4-Vr8c5-Hr8c4-Vr7c4-Hr7c3-Hr7c2-Vr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr5c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5- ==> Hr11c4-Vr10c4 = 1

XTD-LOOP[54]: Vr9c4-Hr9c4-Vr8c5-Hr8c4-Vr7c4-Hr7c3-Hr7c2-Vr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr5c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5- ==> Vr10c5-Hr10c4 = 0
P-single: Pr10c6 = se
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
whip[1]: Hr9c6{0 .} ==> Br9c6 ≠ n, Br9c6 ≠ ne, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c6 ≠ nes
whip[1]: Vr8c6{0 .} ==> Br8c5 ≠ e, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne, Br8c5 ≠ nes
whip[1]: Pr8c6{o .} ==> Br7c5 ≠ s, Br8c5 ≠ n, Br8c5 ≠ ns, Br8c5 ≠ nw, Br8c5 ≠ swn
B-single: Br7c5 = o
N-single: Nr7c5 = 0
whip[1]: Pr8c5{sw .} ==> Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ ew, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ n, Br8c4 ≠ e, Br8c4 ≠ ns
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 3
whip[1]: Pr9c6{o .} ==> Br8c5 ≠ s, Br8c5 ≠ sw, Br9c6 ≠ w, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw
whip[1]: Br9c6{se .} ==> Nr9c6 ≠ 3
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
whip[1]: Pr9c7{ns .} ==> Br9c7 ≠ o, Br9c6 ≠ o, Br9c6 ≠ s
B-single: Br9c7 = w
N-single: Nr9c7 = 1
P-single: Pr10c7 = nw
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ s, Br10c6 ≠ e, Br10c6 ≠ o, Br9c6 ≠ e, Br10c6 ≠ w, Br10c6 ≠ ne, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ wne, Br10c6 ≠ nes
B-single: Br9c6 = se
N-single: Nr9c6 = 2
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 0
whip[1]: Vr10c6{1 .} ==> Pr11c6 ≠ ew, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ sw, Br10c6 ≠ n, Br10c6 ≠ ns
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 1
whip[1]: Hr11c5{1 .} ==> Br11c5 ≠ o, Pr11c5 ≠ nw, Pr11c6 ≠ ne, Br10c5 ≠ ne, Br10c5 ≠ ew
P-single: Pr10c5 = o
P-single: Pr11c6 = nw
P-single: Pr11c5 = ew
B-single: Br10c5 = se
B-single: Br11c5 = n
whip[1]: Pr10c5{o .} ==> Br9c4 ≠ e, Br9c4 ≠ s, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ nes, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ esw, Br10c4 ≠ swn, Br10c4 ≠ wne, Br10c4 ≠ nes
whip[1]: Br10c4{sw .} ==> Pr10c4 ≠ ne, Pr10c4 ≠ se, Pr10c4 ≠ ew, Nr10c4 ≠ 3
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 3
whip[1]: Pr11c6{nw .} ==> Br11c6 ≠ n, Br10c6 ≠ swn
B-single: Br10c6 = nw
N-single: Nr10c6 = 2
B-single: Br11c6 = o
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ w, Br10c4 ≠ o, Br11c4 ≠ o
B-single: Br11c4 = n
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ esw, Br10c3 ≠ nes, Br10c3 ≠ o, Br10c3 ≠ n, Br10c3 ≠ w
whip[1]: Br10c3{wne .} ==> Nr10c3 ≠ 0
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 0
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ o, Br8c4 ≠ o, Pr8c5 ≠ o, Pr9c5 ≠ o, Br8c4 ≠ s, Br8c4 ≠ w, Br8c4 ≠ sw
P-single: Pr9c5 = nw
P-single: Pr8c5 = sw
B-single: Br8c5 = w
N-single: Nr8c5 = 1
whip[1]: Pr9c5{nw .} ==> Br9c4 ≠ o, Br8c4 ≠ ne, Br8c4 ≠ wne, Br9c4 ≠ w
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
P-single: Pr8c4 = ne
whip[1]: Pr8c4{ne .} ==> Br7c4 ≠ o, Br7c3 ≠ n, Br7c3 ≠ w, Br7c3 ≠ ns, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ nes, Br7c4 ≠ s, Br7c4 ≠ w
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
P-single: Pr7c4 = sw
whip[1]: Pr7c4{sw .} ==> Br6c3 ≠ o, Br7c3 ≠ ew
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr7c3 = ew
P-single: Pr8c3 = o
B-single: Br6c3 = s
N-single: Nr6c3 = 1
whip[1]: Pr7c3{ew .} ==> Br7c2 ≠ ne, Br7c2 ≠ nes
whip[1]: Br7c2{ns .} ==> Nr7c2 ≠ 3
whip[1]: Pr8c3{o .} ==> Br7c2 ≠ ns, Br8c2 ≠ n, Br8c2 ≠ e, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ nes
B-single: Br7c2 = n
N-single: Nr7c2 = 1
P-single: Pr8c2 = o
whip[1]: Pr8c2{o .} ==> Br8c1 ≠ n, Br8c1 ≠ e, Br8c1 ≠ ne, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ ew, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ w, Br8c2 ≠ sw
whip[1]: Br8c2{s .} ==> Pr9c2 ≠ ne, Pr9c2 ≠ ns, Nr8c2 ≠ 2, Nr8c2 ≠ 3, Pr9c2 ≠ nw
whip[1]: Br8c1{sw .} ==> Nr8c1 ≠ 3
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 0
whip[1]: Hr9c2{0 .} ==> Pr9c2 ≠ se, Pr9c2 ≠ ew, Pr9c3 ≠ sw, Br8c2 ≠ s, Br9c2 ≠ n, Br9c2 ≠ ne, Br9c2 ≠ ns, Br9c2 ≠ nw, Br9c2 ≠ swn, Br9c2 ≠ wne, Br9c2 ≠ nes
P-single: Pr9c3 = o
B-single: Br8c2 = o
N-single: Nr8c2 = 0
w[1]-1-in-r9c3-symmetric-nw-corner ==> Pr10c4 ≠ nw, Pr10c4 ≠ o
whip[1]: Pr9c3{o .} ==> Br9c2 ≠ e, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ esw, Br9c3 ≠ n, Br9c3 ≠ w
whip[1]: Br9c3{s .} ==> Pr10c3 ≠ ne
P-single: Pr10c3 = o
whip[1]: Pr10c3{o .} ==> Br9c2 ≠ s, Br9c2 ≠ sw, Br9c3 ≠ s, Br10c3 ≠ ne, Br10c3 ≠ ns, Br10c3 ≠ ew, Br10c3 ≠ sw, Br10c3 ≠ swn, Br10c3 ≠ wne
B-single: Br9c3 = e
P-single: Pr10c4 = ns
whip[1]: Pr10c4{ns .} ==> Br9c4 ≠ n, Br10c3 ≠ s, Br10c4 ≠ s
B-single: Br10c4 = sw
N-single: Nr10c4 = 2
P-single: Pr11c4 = ne
B-single: Br10c3 = e
N-single: Nr10c3 = 1
B-single: Br9c4 = nw
N-single: Nr9c4 = 2
whip[1]: Pr11c4{ne .} ==> Br11c3 ≠ n
B-single: Br11c3 = o
whip[1]: Br9c2{w .} ==> Nr9c2 ≠ 2, Nr9c2 ≠ 3
whip[1]: Pr9c2{sw .} ==> Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ n, Br9c1 ≠ e
whip[1]: Br9c1{sw .} ==> Pr9c1 ≠ se, Pr10c2 ≠ nw, Nr9c1 ≠ 1, Nr9c1 ≠ 3
P-single: Pr10c2 = o
H-single: Hr10c1 = 0
V-single: Vr9c2 = 0
no-vertical-line-r9{c1 c2} ==> Ir9c1 = out
same-colour-in-r9{c0 c1} ==> Vr9c1 = 0
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OOOOOXOOOO
OOOOXXXXOO
OOOOOXXXXO
XXOOOOXXOO
XXXXOXXXXO
OXXXXXXXXX
OOOXXXXOXO
OOOOXXOOOO
OOOXXXOOOO
OOOXXOOOOO

.   .   .   .   .   .———.   .   .   .   .
              0     | 3 |         0
.   .   .   .   .———.   .———.———.   .   .
  0             |     0       2 |
.   .   .   .   .———.   .   .   .———.   .
          0       2 |         0     |
.———.———.   .   .   .———.   .   .———.   .
|     2 |         0     |       |     0
.   .   .———.———.   .———.   .   .———.   .
|     0         |   |     0         |
.———.   .   .   .———.   .   .   .   .———.
    |         0                   0     |
.   .———.———.   .   .   .   .———.   .———.
  0         |         0     |   | 3 |
.   .   .   .———.   .   .———.   .———.   .
          0     |     1 |     0
.   .   .   .———.   .   .   .   .   .   .
          1 |     0     |             0
.   .   .   .   .   .———.   .   .   .   .
      0     |     2 |     0
.   .   .   .———.———.   .   .   .   .   .

init-time = 4m 11.28s, solve-time = 2m 30.93s, total-time = 6m 42.21s
nb-facts=<Fact-170242>
Quasi-Loop max length = 54
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

Notice that the general T&E(W1+Loops) procedure can be used:

----------------------------------------------------------------------------
----------------------------------------------------------------------------
----------------------------------------------------------------------------

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = T&E(1, W+Loop)
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 0 . 3 . . 0 .
0 . . . . 0 . 2 . .
. . 0 . 2 . . 0 . .
. 2 . . 0 . . . . 0
. 0 . . . . 0 . . .
. . . 0 . . . . 0 .
0 . . . . 0 . . 3 .
. . 0 . . 1 . 0 . .
. . 1 . 0 . . . . 0
. 0 . . 2 . 0 . . .

start init-grid-structure 3.31401824951172e-05
start create-csp-variables
start create-labels 0.0023200511932373
start init-physical-csp-links 0.014564037322998
start init-physical-non-csp-links 9.50559997558594
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.27494597434998
     start init-physical-BN-non-csp-links at local time 8.12143301963806
     start init-physical-BP-non-csp-links at local time 16.475606918335
     end init-physical-BP-non-csp-links at local time 192.458914995193
end init-physical-non-csp-links 201.964564085007
start init-corner-B-c-values 201.964836120605
start init-outer-B-candidates 201.964893102646
start init-outer-I-candidates 201.965486049652
start init-H-candidates 201.965874195099
start init-V-candidates 201.967958211899
start init-P-candidates 201.970016002655
start init-inner-I-candidates 201.974991083145
start init-inner-N-and-B-candidates 201.976387023926
start solution 201.987390995026
entering BRT
H-single: Hr11c7 = 0
H-single: Hr11c2 = 0
H-single: Hr10c10 = 0
H-single: Hr10c7 = 0
H-single: Hr10c5 = 0
H-single: Hr10c2 = 0
H-single: Hr9c10 = 0
H-single: Hr9c8 = 0
H-single: Hr9c5 = 0
H-single: Hr9c3 = 0
H-single: Hr8c8 = 0
H-single: Hr8c6 = 0
H-single: Hr8c3 = 0
H-single: Hr8c1 = 0
H-single: Hr7c9 = 0
H-single: Hr7c6 = 0
H-single: Hr7c4 = 0
H-single: Hr7c1 = 0
H-single: Hr6c9 = 0
H-single: Hr6c7 = 0
H-single: Hr6c4 = 0
H-single: Hr6c2 = 0
H-single: Hr5c10 = 0
H-single: Hr5c7 = 0
H-single: Hr5c5 = 0
H-single: Hr5c2 = 0
H-single: Hr4c10 = 0
H-single: Hr4c8 = 0
H-single: Hr4c5 = 0
H-single: Hr4c3 = 0
H-single: Hr3c8 = 0
H-single: Hr3c6 = 0
H-single: Hr3c3 = 0
H-single: Hr3c1 = 0
H-single: Hr2c9 = 0
H-single: Hr2c6 = 0
H-single: Hr2c4 = 0
H-single: Hr2c1 = 0
H-single: Hr1c9 = 0
H-single: Hr1c4 = 0
V-single: Vr10c8 = 0
V-single: Vr10c7 = 0
V-single: Vr10c3 = 0
V-single: Vr10c2 = 0
V-single: Vr9c11 = 0
V-single: Vr9c10 = 0
V-single: Vr9c6 = 0
V-single: Vr9c5 = 0
V-single: Vr8c9 = 0
V-single: Vr8c8 = 0
V-single: Vr8c4 = 0
V-single: Vr8c3 = 0
V-single: Vr7c7 = 0
V-single: Vr7c6 = 0
V-single: Vr7c2 = 0
V-single: Vr7c1 = 0
V-single: Vr6c10 = 0
V-single: Vr6c9 = 0
V-single: Vr6c5 = 0
V-single: Vr6c4 = 0
V-single: Vr5c8 = 0
V-single: Vr5c7 = 0
V-single: Vr5c3 = 0
V-single: Vr5c2 = 0
V-single: Vr4c11 = 0
V-single: Vr4c10 = 0
V-single: Vr4c6 = 0
V-single: Vr4c5 = 0
V-single: Vr3c9 = 0
V-single: Vr3c8 = 0
V-single: Vr3c4 = 0
V-single: Vr3c3 = 0
V-single: Vr2c7 = 0
V-single: Vr2c6 = 0
V-single: Vr2c2 = 0
V-single: Vr2c1 = 0
V-single: Vr1c10 = 0
V-single: Vr1c9 = 0
V-single: Vr1c5 = 0
V-single: Vr1c4 = 0
P-single: Pr10c11 = o
V-single: Vr10c11 = 0
P-single: Pr9c11 = o
V-single: Vr8c11 = 0
P-single: Pr5c11 = o
V-single: Vr5c11 = 0
P-single: Pr4c11 = o
V-single: Vr3c11 = 0
P-single: Pr8c1 = o
V-single: Vr8c1 = 0
P-single: Pr7c1 = o
V-single: Vr6c1 = 0
P-single: Pr3c1 = o
V-single: Vr3c1 = 0
P-single: Pr2c1 = o
V-single: Vr1c1 = 0
P-single: Pr11c8 = o
H-single: Hr11c8 = 0
P-single: Pr11c7 = o
H-single: Hr11c6 = 0
P-single: Pr11c3 = o
H-single: Hr11c3 = 0
P-single: Pr11c2 = o
H-single: Hr11c1 = 0
P-single: Pr1c10 = o
H-single: Hr1c10 = 0
P-single: Pr1c9 = o
H-single: Hr1c8 = 0
P-single: Pr1c5 = o
H-single: Hr1c5 = 0
P-single: Pr1c4 = o
H-single: Hr1c3 = 0
Starting_init_links_with_<Fact-92931>
2341 candidates, 8549 csp-links and 27158 links. Density = 0.99%
starting non trivial part of solution
Entering_level_W1_with_<Fact-164350>
whip[1]: Hr1c3{0 .} ==> Br1c3 ≠ nes, Br0c3 ≠ s, Pr1c3 ≠ se, Pr1c3 ≠ ew, Br1c3 ≠ n, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ swn, Br1c3 ≠ wne
B-single: Br0c3 = o
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ ns
whip[1]: Pr1c4{o .} ==> Br1c3 ≠ esw, Br1c3 ≠ e, Br1c3 ≠ se, Br1c3 ≠ ew
whip[1]: Br1c3{sw .} ==> Nr1c3 ≠ 3
whip[1]: Hr1c5{0 .} ==> Br1c5 ≠ nes, Br0c5 ≠ s, Pr1c6 ≠ ew, Pr1c6 ≠ sw, Br1c5 ≠ n, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ nw, Br1c5 ≠ swn, Br1c5 ≠ wne
B-single: Br0c5 = o
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ esw, Br1c6 ≠ nes
whip[1]: Br1c6{wne .} ==> Hr1c6 ≠ 0, Vr1c6 ≠ 0, Pr1c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se, Pr2c6 ≠ o, Pr2c7 ≠ o
V-single: Vr1c6 = 1
H-single: Hr1c6 = 1
P-single: Pr2c7 = ne
H-single: Hr2c7 = 1
V-single: Vr1c7 = 1
P-single: Pr2c6 = nw
H-single: Hr2c5 = 1
P-single: Pr1c6 = se
whip[1]: Vr1c6{1 .} ==> Br1c5 ≠ o, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ sw
whip[1]: Br1c5{esw .} ==> Nr1c5 ≠ 0
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Pr2c7{ne .} ==> Br2c7 ≠ o, Br1c7 ≠ n, Br1c7 ≠ o, Br1c6 ≠ swn, Br1c7 ≠ e, Br1c7 ≠ s, Br1c7 ≠ w, Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ wne, Br1c7 ≠ nes, Br2c7 ≠ e, Br2c7 ≠ s, Br2c7 ≠ w, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ wne
B-single: Br1c6 = wne
P-single: Pr1c7 = sw
H-single: Hr1c7 = 0
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ swn
whip[1]: Br1c7{esw .} ==> Pr1c8 ≠ ew, Pr1c8 ≠ sw, Pr2c8 ≠ o, Pr2c8 ≠ ne, Pr2c8 ≠ ns, Pr2c8 ≠ se, Nr1c7 ≠ 0, Nr1c7 ≠ 1
whip[1]: Pr2c8{sw .} ==> Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ swn, Br2c8 ≠ nw
whip[1]: Br2c8{sw .} ==> Pr3c9 ≠ o
P-single: Pr3c9 = ne
H-single: Hr3c9 = 1
V-single: Vr2c9 = 1
whip[1]: Pr3c9{ne .} ==> Br3c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ o, Br2c8 ≠ ns, Br2c8 ≠ se, Br2c8 ≠ sw, Br2c9 ≠ e, Br2c9 ≠ s, Br2c9 ≠ w, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ ew, Br2c9 ≠ wne, Br2c9 ≠ nes, Br3c9 ≠ e, Br3c9 ≠ s, Br3c9 ≠ w, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Pr3c10 ≠ o, Pr3c10 ≠ ne, Pr3c10 ≠ ns, Pr3c10 ≠ se, Nr3c9 ≠ 0
whip[1]: Pr3c10{sw .} ==> Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn, Br3c10 ≠ nw, Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Br2c9{swn .} ==> Pr2c9 ≠ o, Nr2c9 ≠ 0, Nr2c9 ≠ 1
P-single: Pr2c9 = sw
H-single: Hr2c8 = 1
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ ne, Br1c8 ≠ w, Br1c8 ≠ e, Br1c8 ≠ n, Br1c8 ≠ o, Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ wne, Br1c8 ≠ nes, Br2c8 ≠ ew, Br2c9 ≠ swn
B-single: Br2c8 = ne
V-single: Vr2c8 = 0
P-single: Pr2c8 = ew
V-single: Vr1c8 = 0
P-single: Pr3c8 = o
H-single: Hr3c7 = 0
whip[1]: Vr2c8{0 .} ==> Br2c7 ≠ ne, Br2c7 ≠ nes
whip[1]: Br2c7{ns .} ==> Nr2c7 ≠ 0, Nr2c7 ≠ 3
whip[1]: Pr2c8{ew .} ==> Br1c7 ≠ esw
B-single: Br1c7 = sw
N-single: Nr1c7 = 2
P-single: Pr1c8 = o
whip[1]: Pr1c8{o .} ==> Br1c8 ≠ ns
B-single: Br1c8 = s
N-single: Nr1c8 = 1
whip[1]: Pr3c8{o .} ==> Br2c7 ≠ ns, Br3c7 ≠ n, Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c7 ≠ nes
B-single: Br2c7 = n
N-single: Nr2c7 = 1
P-single: Pr3c7 = o
V-single: Vr3c7 = 0
whip[1]: Pr3c7{o .} ==> Br3c6 ≠ n, Br3c6 ≠ e, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ w, Br3c7 ≠ sw
whip[1]: Br3c7{s .} ==> Pr4c7 ≠ ne, Pr4c7 ≠ ns, Nr3c7 ≠ 2, Nr3c7 ≠ 3, Pr4c7 ≠ nw
whip[1]: Br3c6{sw .} ==> Nr3c6 ≠ 3
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ s, Br2c5 ≠ e, Br2c5 ≠ o, Br1c5 ≠ e, Br1c5 ≠ ew, Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ wne, Br2c5 ≠ nes
whip[1]: Br2c5{swn .} ==> Pr2c5 ≠ o, Nr2c5 ≠ 0
P-single: Pr2c5 = se
V-single: Vr2c5 = 1
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ n, Br2c4 ≠ w, Br2c4 ≠ s, Br2c4 ≠ n, Br2c4 ≠ o, Br1c5 ≠ esw, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ ns
B-single: Br1c5 = se
N-single: Nr1c5 = 2
whip[1]: Br2c5{swn .} ==> Pr3c5 ≠ o, Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Nr2c5 ≠ 1
whip[1]: Pr3c5{nw .} ==> Br3c4 ≠ ne, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ nw
whip[1]: Br3c5{sw .} ==> Pr4c6 ≠ o
P-single: Pr4c6 = ne
H-single: Hr4c6 = 1
V-single: Vr3c6 = 1
whip[1]: Pr4c6{ne .} ==> Br4c6 ≠ o, Br3c6 ≠ o, Br3c5 ≠ ns, Br3c5 ≠ se, Br3c5 ≠ sw, Br3c6 ≠ s, Br3c6 ≠ w, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne
B-single: Br3c6 = sw
N-single: Nr3c6 = 2
P-single: Pr3c6 = sw
H-single: Hr3c5 = 1
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nw, Br3c5 ≠ ew
B-single: Br3c5 = ne
V-single: Vr3c5 = 0
P-single: Pr3c5 = ne
H-single: Hr3c4 = 0
P-single: Pr4c5 = o
H-single: Hr4c4 = 0
B-single: Br2c5 = swn
N-single: Nr2c5 = 3
whip[1]: Vr3c5{0 .} ==> Br3c4 ≠ e, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw
whip[1]: Pr3c5{ne .} ==> Br3c4 ≠ n, Br2c4 ≠ se, Br2c4 ≠ esw, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ swn
whip[1]: Br3c4{sw .} ==> Pr3c4 ≠ ne, Nr3c4 ≠ 3
P-single: Pr3c4 = o
V-single: Vr2c4 = 0
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ ew, Br3c4 ≠ w, Br3c4 ≠ sw
B-single: Br2c4 = e
N-single: Nr2c4 = 1
P-single: Pr2c4 = o
H-single: Hr2c3 = 0
whip[1]: Pr2c4{o .} ==> Br1c3 ≠ s, Br1c3 ≠ sw, Br2c3 ≠ n, Br2c3 ≠ nw
whip[1]: Br2c3{w .} ==> Pr2c3 ≠ ne, Nr2c3 ≠ 2, Nr2c3 ≠ 3, Pr2c3 ≠ se, Pr2c3 ≠ ew
whip[1]: Br1c3{w .} ==> Nr1c3 ≠ 2
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 2
whip[1]: Pr4c5{o .} ==> Br3c4 ≠ s, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br4c4 ≠ nes
B-single: Br3c4 = o
N-single: Nr3c4 = 0
P-single: Pr4c4 = o
V-single: Vr4c4 = 0
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ w, Br4c4 ≠ sw
whip[1]: Br4c4{s .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ ns, Nr4c4 ≠ 2, Nr4c4 ≠ 3, Pr5c4 ≠ nw
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 3
whip[1]: Pr4c7{sw .} ==> Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c7 ≠ o, Br4c7 ≠ e, Br4c7 ≠ s
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Hr1c10{0 .} ==> Br1c10 ≠ nes, Br0c10 ≠ s, Pr1c11 ≠ sw, Br1c10 ≠ ne, Br1c10 ≠ wne
P-single: Pr1c11 = o
V-single: Vr1c11 = 0
B-single: Br0c10 = o
whip[1]: Vr1c11{0 .} ==> Br1c11 ≠ w, Pr2c11 ≠ ns, Pr2c11 ≠ nw
B-single: Br1c11 = o
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ ns
whip[1]: Br1c10{sw .} ==> Nr1c10 ≠ 3
whip[1]: Pr1c10{o .} ==> Br1c10 ≠ sw, Br1c10 ≠ w
whip[1]: Br1c10{s .} ==> Nr1c10 ≠ 2
whip[1]: Hr11c1{0 .} ==> Br10c1 ≠ swn, Br11c1 ≠ n, Pr11c1 ≠ ne, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr11c1 = o
V-single: Vr10c1 = 0
B-single: Br11c1 = o
whip[1]: Vr10c1{0 .} ==> Br10c0 ≠ e, Pr10c1 ≠ ns, Pr10c1 ≠ se
B-single: Br10c0 = o
whip[1]: Pr10c1{ne .} ==> Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ ew, Br9c1 ≠ wne, Br9c1 ≠ nes
whip[1]: Br10c1{ne .} ==> Nr10c1 ≠ 3
whip[1]: Pr11c2{o .} ==> Br10c1 ≠ ne, Br11c2 ≠ n, Br10c1 ≠ e
B-single: Br11c2 = o
whip[1]: Br10c1{n .} ==> Nr10c1 ≠ 2
whip[1]: Hr11c3{0 .} ==> Br10c3 ≠ nes, Br11c3 ≠ n, Pr11c4 ≠ nw, Pr11c4 ≠ ew, Br10c3 ≠ s, Br10c3 ≠ ns, Br10c3 ≠ se, Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ swn
B-single: Br11c3 = o
whip[1]: Pr11c4{ne .} ==> Br10c4 ≠ s, Br10c4 ≠ w, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ nes
whip[1]: Pr11c3{o .} ==> Br10c3 ≠ wne, Br10c3 ≠ w, Br10c3 ≠ nw, Br10c3 ≠ ew
whip[1]: Br10c3{ne .} ==> Nr10c3 ≠ 3
whip[1]: Hr11c6{0 .} ==> Br10c6 ≠ nes, Br11c6 ≠ n, Pr11c6 ≠ ne, Pr11c6 ≠ ew, Br10c6 ≠ s, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn
B-single: Br11c6 = o
whip[1]: Pr11c6{nw .} ==> Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ ew, Br10c5 ≠ sw
whip[1]: Br10c5{se .} ==> Pr11c5 ≠ o, Pr11c5 ≠ ne, Pr10c5 ≠ sw, Pr10c6 ≠ o
P-single: Pr10c6 = se
H-single: Hr10c6 = 1
V-single: Vr10c6 = 1
P-single: Pr10c5 = o
H-single: Hr10c4 = 0
V-single: Vr10c5 = 0
whip[1]: Pr10c6{se .} ==> Br10c6 ≠ w, Br10c6 ≠ e, Br10c6 ≠ n, Br10c6 ≠ o, Br9c6 ≠ w, Br9c6 ≠ e, Br9c6 ≠ n, Br9c6 ≠ o, Br9c6 ≠ ne, Br9c6 ≠ nw, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br10c5 ≠ nw, Br10c6 ≠ ne, Br10c6 ≠ ew
B-single: Br10c5 = se
H-single: Hr11c5 = 1
P-single: Pr11c5 = ew
H-single: Hr11c4 = 1
P-single: Pr11c6 = nw
whip[1]: Hr11c5{1 .} ==> Br11c5 ≠ o
B-single: Br11c5 = n
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ ne, Br10c4 ≠ e, Br10c4 ≠ n, Br10c4 ≠ o, Br11c4 ≠ o, Br10c4 ≠ esw
B-single: Br11c4 = n
P-single: Pr11c4 = ne
V-single: Vr10c4 = 1
whip[1]: Pr11c4{ne .} ==> Br10c3 ≠ n, Br10c3 ≠ o
whip[1]: Br10c3{ne .} ==> Pr10c4 ≠ o, Pr10c4 ≠ ne, Pr10c4 ≠ nw, Nr10c3 ≠ 0, Pr10c4 ≠ ew
whip[1]: Pr10c4{sw .} ==> Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 0, Nr10c4 ≠ 1
whip[1]: Br10c6{wne .} ==> Pr10c7 ≠ o, Nr10c6 ≠ 0, Nr10c6 ≠ 1
P-single: Pr10c7 = nw
V-single: Vr9c7 = 1
whip[1]: Pr10c7{nw .} ==> Br9c7 ≠ s, Br9c7 ≠ e, Br9c7 ≠ n, Br9c7 ≠ o, Br9c6 ≠ s, Br9c6 ≠ ns, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ se, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ nes, Br10c6 ≠ wne
B-single: Br10c6 = nw
N-single: Nr10c6 = 2
whip[1]: Br9c7{wne .} ==> Pr9c7 ≠ o, Pr9c7 ≠ ne, Pr9c7 ≠ nw, Pr9c7 ≠ ew, Nr9c7 ≠ 0
whip[1]: Pr9c7{sw .} ==> Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0, Nr9c6 ≠ 1
whip[1]: Pr10c5{o .} ==> Br9c4 ≠ e, Br9c4 ≠ s, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ wne, Br9c4 ≠ nes, Br10c4 ≠ swn
B-single: Br10c4 = sw
N-single: Nr10c4 = 2
whip[1]: Pr10c4{sw .} ==> Br9c3 ≠ n, Br9c3 ≠ w
whip[1]: Br9c3{s .} ==> Vr9c3 ≠ 1, Pr10c3 ≠ ne, Pr9c3 ≠ sw
V-single: Vr9c3 = 0
P-single: Pr9c3 = o
H-single: Hr9c2 = 0
P-single: Pr10c3 = o
H-single: Hr10c3 = 0
whip[1]: Vr9c3{0 .} ==> Br9c2 ≠ e, Br9c2 ≠ ne, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ esw, Br9c2 ≠ wne, Br9c2 ≠ nes
whip[1]: Pr9c3{o .} ==> Br8c2 ≠ e, Br8c2 ≠ s, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ nes, Br9c2 ≠ n, Br9c2 ≠ ns, Br9c2 ≠ nw, Br9c2 ≠ swn
whip[1]: Br9c2{sw .} ==> Pr9c2 ≠ ne, Pr9c2 ≠ se, Pr9c2 ≠ ew, Nr9c2 ≠ 3
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 3
whip[1]: Pr10c3{o .} ==> Br9c2 ≠ s, Br9c2 ≠ sw, Br9c3 ≠ s, Br10c3 ≠ ne
B-single: Br10c3 = e
N-single: Nr10c3 = 1
P-single: Pr10c4 = ns
V-single: Vr9c4 = 1
B-single: Br9c3 = e
P-single: Pr9c4 = se
H-single: Hr9c4 = 1
whip[1]: Pr10c4{ns .} ==> Br9c4 ≠ n, Br9c4 ≠ o
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 0, Nr9c4 ≠ 3
whip[1]: Pr9c4{se .} ==> Br9c4 ≠ w, Br8c4 ≠ w, Br8c4 ≠ e, Br8c4 ≠ n, Br8c4 ≠ o, Br8c4 ≠ ne, Br8c4 ≠ nw, Br8c4 ≠ ew, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ wne
B-single: Br9c4 = nw
N-single: Nr9c4 = 2
P-single: Pr9c5 = nw
V-single: Vr8c5 = 1
whip[1]: Pr9c5{nw .} ==> Br8c5 ≠ s, Br8c5 ≠ e, Br8c5 ≠ n, Br8c5 ≠ o, Br8c4 ≠ s, Br8c4 ≠ ns, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn, Br8c5 ≠ nes
whip[1]: Br8c5{wne .} ==> Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ew, Nr8c5 ≠ 0
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0, Nr8c4 ≠ 1
whip[1]: Br9c2{w .} ==> Nr9c2 ≠ 2
whip[1]: Pr11c7{o .} ==> Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Hr11c8{0 .} ==> Br10c8 ≠ nes, Br11c8 ≠ n, Pr11c9 ≠ nw, Pr11c9 ≠ ew, Br10c8 ≠ s, Br10c8 ≠ ns, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn
B-single: Br11c8 = o
whip[1]: Pr11c9{ne .} ==> Br10c9 ≠ s, Br10c9 ≠ w, Br10c9 ≠ ns, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ wne, Br10c9 ≠ nes
whip[1]: Pr11c8{o .} ==> Br10c8 ≠ wne, Br10c8 ≠ w, Br10c8 ≠ nw, Br10c8 ≠ ew
whip[1]: Br10c8{ne .} ==> Nr10c8 ≠ 3
whip[1]: Vr1c1{0 .} ==> Br1c1 ≠ wne, Br1c0 ≠ e, Pr1c1 ≠ se, Br1c1 ≠ nw, Br1c1 ≠ swn
P-single: Pr1c1 = o
H-single: Hr1c1 = 0
B-single: Br1c0 = o
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s, Pr1c2 ≠ ew, Pr1c2 ≠ sw
B-single: Br0c1 = o
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ sw, Br1c2 ≠ nes, Br1c2 ≠ w
whip[1]: Br1c2{wne .} ==> Pr2c2 ≠ ne, Pr2c3 ≠ nw, Nr1c2 ≠ 2
P-single: Pr2c2 = o
H-single: Hr2c2 = 0
V-single: Vr1c2 = 0
whip[1]: Pr2c2{o .} ==> Br1c1 ≠ e, Br1c1 ≠ s, Br1c1 ≠ se, Br1c2 ≠ s, Br1c2 ≠ wne, Br2c2 ≠ n, Br2c2 ≠ w, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
B-single: Br1c2 = o
H-single: Hr1c2 = 0
V-single: Vr1c3 = 0
N-single: Nr1c2 = 0
P-single: Pr1c2 = o
P-single: Pr1c3 = o
P-single: Pr2c3 = o
V-single: Vr2c3 = 0
B-single: Br1c1 = o
N-single: Nr1c1 = 0
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ w
B-single: Br1c3 = o
N-single: Nr1c3 = 0
whip[1]: Pr2c3{o .} ==> Br2c2 ≠ e, Br2c2 ≠ se, Br2c3 ≠ w
B-single: Br2c3 = o
N-single: Nr2c3 = 0
P-single: Pr3c3 = o
H-single: Hr3c2 = 0
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ s, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes
B-single: Br2c2 = o
N-single: Nr2c2 = 0
P-single: Pr3c2 = o
V-single: Vr3c2 = 0
whip[1]: Pr3c2{o .} ==> Br3c1 ≠ n, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ w, Br3c2 ≠ sw
whip[1]: Br3c2{s .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Nr3c2 ≠ 2, Nr3c2 ≠ 3, Pr4c2 ≠ nw
whip[1]: Br3c1{sw .} ==> Nr3c1 ≠ 3
whip[1]: Vr3c1{0 .} ==> Br3c1 ≠ sw, Br3c0 ≠ e, Pr4c1 ≠ ne, Pr4c1 ≠ ns, Br3c1 ≠ w
B-single: Br3c0 = o
whip[1]: Br3c1{s .} ==> Nr3c1 ≠ 2
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Vr6c1{0 .} ==> Br6c1 ≠ wne, Br6c0 ≠ e, Pr6c1 ≠ ns, Pr6c1 ≠ se, Br6c1 ≠ w, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn
B-single: Br6c0 = o
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Pr7c1{o .} ==> Br6c1 ≠ nes, Br6c1 ≠ s, Br6c1 ≠ ns, Br6c1 ≠ se
whip[1]: Br6c1{ne .} ==> Nr6c1 ≠ 3
whip[1]: Vr8c1{0 .} ==> Br8c1 ≠ wne, Br8c0 ≠ e, Pr9c1 ≠ ne, Pr9c1 ≠ ns, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn
B-single: Br8c0 = o
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ n
whip[1]: Br9c1{swn .} ==> Pr9c2 ≠ sw, Pr10c2 ≠ nw, Nr9c1 ≠ 2
P-single: Pr10c2 = o
H-single: Hr10c1 = 0
V-single: Vr9c2 = 0
whip[1]: Pr10c2{o .} ==> Br9c1 ≠ e, Br9c1 ≠ swn, Br9c2 ≠ w, Br10c1 ≠ n
B-single: Br10c1 = o
N-single: Nr10c1 = 0
P-single: Pr10c1 = o
V-single: Vr9c1 = 0
B-single: Br9c2 = o
N-single: Nr9c2 = 0
B-single: Br9c1 = o
H-single: Hr9c1 = 0
N-single: Nr9c1 = 0
P-single: Pr9c1 = o
P-single: Pr9c2 = o
V-single: Vr8c2 = 0
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Hr9c1{0 .} ==> Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ nes
whip[1]: Br8c1{ne .} ==> Nr8c1 ≠ 3
whip[1]: Pr9c2{o .} ==> Br8c1 ≠ e, Br8c1 ≠ ne, Br8c2 ≠ w, Br8c2 ≠ nw
whip[1]: Br8c2{n .} ==> Pr8c2 ≠ se, Nr8c2 ≠ 2
P-single: Pr8c2 = o
H-single: Hr8c2 = 0
whip[1]: Pr8c2{o .} ==> Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c2 ≠ nes, Br8c1 ≠ n, Br8c2 ≠ n
B-single: Br8c2 = o
N-single: Nr8c2 = 0
P-single: Pr8c3 = o
V-single: Vr7c3 = 0
B-single: Br8c1 = o
N-single: Nr8c1 = 0
whip[1]: Pr8c3{o .} ==> Br7c2 ≠ e, Br7c2 ≠ ne, Br7c3 ≠ s, Br7c3 ≠ w, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br7c3 ≠ nes
whip[1]: Br7c3{ne .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se, Nr7c3 ≠ 3, Pr7c3 ≠ sw
whip[1]: Br7c2{n .} ==> Nr7c2 ≠ 2, Nr7c2 ≠ 3
whip[1]: Vr3c11{0 .} ==> Br3c10 ≠ nes, Br3c11 ≠ w, Pr3c11 ≠ ns, Pr3c11 ≠ sw, Br3c10 ≠ e, Br3c10 ≠ ne, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw
B-single: Br3c11 = o
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 3
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ne, Br2c10 ≠ wne, Br2c10 ≠ s
whip[1]: Br2c10{nes .} ==> Pr2c10 ≠ se, Nr2c10 ≠ 2
P-single: Pr2c10 = o
H-single: Hr2c10 = 0
V-single: Vr2c10 = 0
whip[1]: Pr2c10{o .} ==> Br1c10 ≠ s, Br2c9 ≠ esw, Br2c10 ≠ w, Br2c10 ≠ nes
B-single: Br2c10 = o
H-single: Hr3c10 = 0
V-single: Vr2c11 = 0
N-single: Nr2c10 = 0
P-single: Pr2c11 = o
P-single: Pr3c11 = o
P-single: Pr3c10 = sw
V-single: Vr3c10 = 1
B-single: Br2c9 = sw
N-single: Nr2c9 = 2
B-single: Br1c10 = o
N-single: Nr1c10 = 0
whip[1]: Hr3c10{0 .} ==> Br3c10 ≠ n, Br3c10 ≠ ns
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Pr3c10{sw .} ==> Br3c10 ≠ s, Br3c10 ≠ o, Br3c9 ≠ ns, Br3c9 ≠ n
whip[1]: Br3c9{nes .} ==> Pr4c10 ≠ o, Nr3c9 ≠ 1
P-single: Pr4c10 = nw
H-single: Hr4c9 = 1
whip[1]: Pr4c10{nw .} ==> Br4c9 ≠ s, Br4c9 ≠ e, Br4c9 ≠ o, Br3c9 ≠ ne, Br3c10 ≠ sw, Br4c9 ≠ w, Br4c9 ≠ ne, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ wne, Br4c9 ≠ nes
B-single: Br3c10 = w
N-single: Nr3c10 = 1
B-single: Br3c9 = nes
N-single: Nr3c9 = 3
P-single: Pr4c9 = se
V-single: Vr4c9 = 1
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ n, Br4c8 ≠ w, Br4c8 ≠ s, Br4c8 ≠ n, Br4c8 ≠ o, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ sw, Br4c8 ≠ swn, Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Pr5c9 ≠ o, Pr5c9 ≠ se, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Nr4c9 ≠ 0, Nr4c9 ≠ 1
whip[1]: Pr5c9{nw .} ==> Br5c8 ≠ ne, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c9 ≠ nw, Br5c9 ≠ swn, Br5c9 ≠ wne
whip[1]: Br4c8{esw .} ==> Nr4c8 ≠ 0
whip[1]: Vr5c11{0 .} ==> Br5c10 ≠ nes, Br5c11 ≠ w, Pr6c11 ≠ ns, Pr6c11 ≠ nw, Br5c10 ≠ e, Br5c10 ≠ ne, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ esw, Br5c10 ≠ wne
B-single: Br5c11 = o
whip[1]: Pr6c11{sw .} ==> Br6c10 ≠ nw, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw, Br6c10 ≠ swn, Br6c10 ≠ n, Br6c10 ≠ e, Br6c10 ≠ ns
whip[1]: Pr5c11{o .} ==> Br5c10 ≠ swn, Br5c10 ≠ n, Br5c10 ≠ ns, Br5c10 ≠ nw
whip[1]: Br5c10{sw .} ==> Nr5c10 ≠ 3
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ nes, Br8c11 ≠ w, Pr8c11 ≠ ns, Pr8c11 ≠ sw, Br8c10 ≠ e, Br8c10 ≠ ne, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ wne
B-single: Br8c11 = o
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Pr9c11{o .} ==> Br8c10 ≠ swn, Br8c10 ≠ s, Br8c10 ≠ ns, Br8c10 ≠ sw
whip[1]: Br8c10{nw .} ==> Nr8c10 ≠ 3
whip[1]: Vr10c11{0 .} ==> Br10c10 ≠ nes, Br10c11 ≠ w, Pr11c11 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr11c11 = o
H-single: Hr11c10 = 0
B-single: Br10c11 = o
whip[1]: Pr11c11{o .} ==> Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ sw, Br10c9 ≠ swn, Br10c9 ≠ e
whip[1]: Br10c9{esw .} ==> Pr10c9 ≠ se, Pr10c10 ≠ sw, Nr10c9 ≠ 2
P-single: Pr10c10 = o
H-single: Hr10c9 = 0
V-single: Vr10c10 = 0
whip[1]: Pr10c10{o .} ==> Br9c9 ≠ e, Br9c9 ≠ s, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ wne, Br9c9 ≠ nes, Br10c9 ≠ n, Br10c9 ≠ esw, Br10c10 ≠ n, Br10c10 ≠ w, Br10c10 ≠ nw
B-single: Br10c10 = o
N-single: Nr10c10 = 0
P-single: Pr11c10 = o
H-single: Hr11c9 = 0
B-single: Br10c9 = o
V-single: Vr10c9 = 0
N-single: Nr10c9 = 0
P-single: Pr11c9 = o
whip[1]: Pr11c10{o .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Vr10c9{0 .} ==> Br10c8 ≠ e, Br10c8 ≠ ne
whip[1]: Br10c8{n .} ==> Nr10c8 ≠ 2
whip[1]: Pr10c9{nw .} ==> Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c8 ≠ e, Br9c8 ≠ s
whip[1]: Br9c9{nw .} ==> Nr9c9 ≠ 3
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Vr5c2{0 .} ==> Br5c1 ≠ esw, Br5c1 ≠ e, Br5c1 ≠ ne
whip[1]: Vr5c3{0 .} ==> Br5c3 ≠ wne, Br5c3 ≠ w, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn
whip[1]: Vr5c7{0 .} ==> Br5c6 ≠ nes, Br5c6 ≠ e, Br5c6 ≠ ne, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ esw, Br5c6 ≠ wne
whip[1]: Vr5c8{0 .} ==> Br5c8 ≠ swn, Br5c8 ≠ w, Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw
whip[1]: Br5c8{se .} ==> Nr5c8 ≠ 3
whip[1]: Vr6c4{0 .} ==> Br6c3 ≠ nes, Br6c3 ≠ e, Br6c3 ≠ ne, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ esw, Br6c3 ≠ wne
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ wne, Br6c5 ≠ w, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn
whip[1]: Vr6c9{0 .} ==> Br6c8 ≠ nes, Br6c8 ≠ e, Br6c8 ≠ ne, Br6c8 ≠ se, Br6c8 ≠ ew, Br6c8 ≠ esw, Br6c8 ≠ wne
whip[1]: Vr6c10{0 .} ==> Br6c10 ≠ wne, Br6c10 ≠ w, Br6c10 ≠ sw
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Vr7c6{0 .} ==> Br7c5 ≠ nes, Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ wne
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 3
whip[1]: Vr7c7{0 .} ==> Br7c7 ≠ wne, Br7c7 ≠ w, Br7c7 ≠ nw, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn
whip[1]: Vr8c8{0 .} ==> Br8c7 ≠ nes, Br8c7 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ wne
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 3
whip[1]: Vr8c9{0 .} ==> Br8c9 ≠ wne, Br8c9 ≠ w, Br8c9 ≠ nw, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Hr5c2{0 .} ==> Br4c2 ≠ sw, Br4c2 ≠ ns, Br4c2 ≠ se
whip[1]: Br4c2{ew .} ==> Pr4c2 ≠ o, Pr4c3 ≠ o
P-single: Pr4c3 = sw
H-single: Hr4c2 = 1
V-single: Vr4c3 = 1
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ s, Br4c3 ≠ o, Br3c2 ≠ o, Br4c2 ≠ nw, Br4c2 ≠ ew
B-single: Br4c2 = ne
V-single: Vr4c2 = 0
P-single: Pr4c2 = ew
H-single: Hr4c1 = 1
P-single: Pr5c2 = o
H-single: Hr5c1 = 0
P-single: Pr5c3 = ne
H-single: Hr5c3 = 1
B-single: Br3c2 = s
N-single: Nr3c2 = 1
whip[1]: Vr4c2{0 .} ==> Br4c1 ≠ e, Br4c1 ≠ se, Br4c1 ≠ wne
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ s, Br4c1 ≠ o, Br3c1 ≠ o
B-single: Br3c1 = s
N-single: Nr3c1 = 1
P-single: Pr4c1 = se
V-single: Vr4c1 = 1
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o, Pr5c1 ≠ o, Pr5c1 ≠ se
B-single: Br4c0 = e
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ swn, Br5c1 ≠ o
whip[1]: Br5c1{sw .} ==> Nr5c1 ≠ 0, Nr5c1 ≠ 3
whip[1]: Br4c1{swn .} ==> Nr4c1 ≠ 0, Nr4c1 ≠ 1
whip[1]: Pr5c2{o .} ==> Br4c1 ≠ swn, Br5c1 ≠ n
B-single: Br5c1 = sw
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
N-single: Nr5c1 = 2
P-single: Pr5c1 = ns
P-single: Pr6c1 = ne
P-single: Pr6c2 = sw
V-single: Vr6c2 = 1
B-single: Br4c1 = nw
N-single: Nr4c1 = 2
whip[1]: Hr6c1{1 .} ==> Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{ne .} ==> Nr6c1 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Pr6c2{sw .} ==> Br6c2 ≠ ns, Br6c2 ≠ ne, Br6c2 ≠ s, Br6c2 ≠ e, Br6c2 ≠ n, Br6c2 ≠ o, Br6c1 ≠ n, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes
B-single: Br6c1 = ne
N-single: Nr6c1 = 2
P-single: Pr7c2 = ne
H-single: Hr7c2 = 1
whip[1]: Pr7c2{ne .} ==> Br7c2 ≠ o, Br6c2 ≠ w, Br6c2 ≠ ew
B-single: Br7c2 = n
N-single: Nr7c2 = 1
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw, Br6c3 ≠ swn, Br6c3 ≠ o, Br6c3 ≠ n
whip[1]: Br6c3{nw .} ==> Nr6c3 ≠ 0, Nr6c3 ≠ 3
whip[1]: Br6c2{esw .} ==> Nr6c2 ≠ 0, Nr6c2 ≠ 1
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ o, Br4c3 ≠ w, Br5c3 ≠ e, Br5c3 ≠ s, Br5c3 ≠ se
B-single: Br4c3 = sw
N-single: Nr4c3 = 2
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ swn, Br5c4 ≠ wne, Br5c4 ≠ o, Br5c4 ≠ e, Br5c4 ≠ s
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Hr5c5{0 .} ==> Br5c5 ≠ nes, Br5c5 ≠ n, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ swn, Br5c5 ≠ wne
whip[1]: Hr5c7{0 .} ==> Br4c7 ≠ nes, Br4c7 ≠ ns, Br4c7 ≠ sw, Br4c7 ≠ esw
whip[1]: Br4c7{ew .} ==> Nr4c7 ≠ 3
whip[1]: Hr6c4{0 .} ==> Br5c4 ≠ nes, Br5c4 ≠ ns, Br5c4 ≠ sw, Br5c4 ≠ esw
whip[1]: Br5c4{ew .} ==> Nr5c4 ≠ 3
whip[1]: Hr6c7{0 .} ==> Br6c7 ≠ nes, Br6c7 ≠ n, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ swn, Br6c7 ≠ wne
whip[1]: Hr6c9{0 .} ==> Br5c9 ≠ nes, Br5c9 ≠ s, Br5c9 ≠ ns, Br5c9 ≠ se, Br5c9 ≠ sw, Br5c9 ≠ esw
whip[1]: Br5c9{ew .} ==> Nr5c9 ≠ 3
whip[1]: Hr7c4{0 .} ==> Br7c4 ≠ wne, Br7c4 ≠ n, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ swn
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Hr7c6{0 .} ==> Br6c6 ≠ nes, Br6c6 ≠ s, Br6c6 ≠ ns, Br6c6 ≠ se, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn
whip[1]: Hr7c9{0 .} ==> Br7c9 ≠ nes, Br7c9 ≠ swn, Br7c9 ≠ wne
B-single: Br7c9 = esw
H-single: Hr8c9 = 1
V-single: Vr7c9 = 1
V-single: Vr7c10 = 1
P-single: Pr7c9 = sw
H-single: Hr7c8 = 1
P-single: Pr7c10 = se
H-single: Hr7c10 = 1
P-single: Pr8c9 = ne
P-single: Pr8c10 = nw
H-single: Hr8c10 = 0
V-single: Vr8c10 = 0
whip[1]: Hr8c9{1 .} ==> Br8c9 ≠ o, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ se
whip[1]: Br8c9{nes .} ==> Nr8c9 ≠ 0
whip[1]: Vr7c9{1 .} ==> Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ sw, Br7c8 ≠ swn
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Vr7c10{1 .} ==> Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ se, Br7c10 ≠ nes
whip[1]: Br7c10{esw .} ==> Pr7c11 ≠ sw, Nr7c10 ≠ 0
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ s
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 1
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ e, Br6c8 ≠ w, Br6c8 ≠ n, Br6c8 ≠ o, Br6c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ esw
whip[1]: Br7c8{nes .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ns, Pr7c8 ≠ nw, Pr7c8 ≠ sw, Nr7c8 ≠ 1
whip[1]: Pr7c8{ew .} ==> Br6c7 ≠ se, Br6c7 ≠ esw, Br7c7 ≠ nes, Br7c7 ≠ ne
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 3
whip[1]: Br6c7{sw .} ==> Nr6c7 ≠ 3
whip[1]: Br6c8{swn .} ==> Nr6c8 ≠ 0
whip[1]: Pr7c10{se .} ==> Br7c10 ≠ w, Br6c10 ≠ o, Br6c10 ≠ ne, Br7c10 ≠ esw
B-single: Br7c10 = nw
V-single: Vr7c11 = 0
N-single: Nr7c10 = 2
P-single: Pr7c11 = nw
V-single: Vr6c11 = 1
P-single: Pr8c11 = o
B-single: Br6c10 = nes
H-single: Hr6c10 = 1
N-single: Nr6c10 = 3
P-single: Pr6c11 = sw
P-single: Pr6c10 = ne
V-single: Vr5c10 = 1
whip[1]: Vr7c11{0 .} ==> Br7c11 ≠ w
B-single: Br7c11 = o
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Pr8c11{o .} ==> Br8c10 ≠ n, Br8c10 ≠ nw
whip[1]: Br8c10{w .} ==> Nr8c10 ≠ 2
whip[1]: Hr6c10{1 .} ==> Br5c10 ≠ o, Br5c10 ≠ w
whip[1]: Br5c10{sw .} ==> Nr5c10 ≠ 0
whip[1]: Pr6c10{ne .} ==> Br5c9 ≠ n, Br5c9 ≠ o, Br5c9 ≠ w, Br5c10 ≠ s
B-single: Br5c10 = sw
N-single: Nr5c10 = 2
P-single: Pr5c10 = sw
H-single: Hr5c9 = 1
whip[1]: Pr5c10{sw .} ==> Br5c9 ≠ e, Br4c9 ≠ nw, Br5c9 ≠ ew
B-single: Br5c9 = ne
V-single: Vr5c9 = 0
N-single: Nr5c9 = 2
P-single: Pr5c9 = ne
H-single: Hr5c8 = 0
P-single: Pr6c9 = o
H-single: Hr6c8 = 0
B-single: Br4c9 = swn
N-single: Nr4c9 = 3
whip[1]: Vr5c9{0 .} ==> Br5c8 ≠ e, Br5c8 ≠ se
whip[1]: Pr5c9{ne .} ==> Br5c8 ≠ n, Br4c8 ≠ se, Br4c8 ≠ esw, Br5c8 ≠ ns
whip[1]: Br5c8{s .} ==> Pr5c8 ≠ ne, Nr5c8 ≠ 2
P-single: Pr5c8 = o
V-single: Vr4c8 = 0
whip[1]: Pr5c8{o .} ==> Br4c7 ≠ ne, Br4c7 ≠ ew, Br4c8 ≠ ew
B-single: Br4c8 = e
N-single: Nr4c8 = 1
P-single: Pr4c8 = o
H-single: Hr4c7 = 0
whip[1]: Pr4c8{o .} ==> Br3c7 ≠ s, Br4c7 ≠ n
B-single: Br4c7 = w
V-single: Vr4c7 = 1
N-single: Nr4c7 = 1
P-single: Pr4c7 = sw
P-single: Pr5c7 = nw
H-single: Hr5c6 = 1
B-single: Br3c7 = o
N-single: Nr3c7 = 0
whip[1]: Vr4c7{1 .} ==> Br4c6 ≠ n, Br4c6 ≠ ns
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 1
whip[1]: Pr5c7{nw .} ==> Br5c6 ≠ s, Br5c6 ≠ o, Br4c6 ≠ ne, Br5c6 ≠ w, Br5c6 ≠ sw
B-single: Br4c6 = nes
N-single: Nr4c6 = 3
P-single: Pr5c6 = se
V-single: Vr5c6 = 1
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ n, Br5c5 ≠ w, Br5c5 ≠ s, Br5c5 ≠ o, Br5c5 ≠ sw, Br5c6 ≠ ns
whip[1]: Br5c6{swn .} ==> Pr6c6 ≠ o, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Nr5c6 ≠ 0, Nr5c6 ≠ 1
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ nes, Br6c6 ≠ nw, Br6c6 ≠ wne
whip[1]: Br6c6{ew .} ==> Nr6c6 ≠ 3
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 3
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 0
whip[1]: Pr6c9{o .} ==> Br5c8 ≠ s, Br6c8 ≠ ns, Br6c8 ≠ swn
B-single: Br5c8 = o
N-single: Nr5c8 = 0
P-single: Pr6c8 = o
V-single: Vr6c8 = 0
whip[1]: Pr6c8{o .} ==> Br6c7 ≠ e, Br6c7 ≠ ew, Br6c8 ≠ sw
B-single: Br6c8 = s
N-single: Nr6c8 = 1
whip[1]: Pr7c8{ew .} ==> Br7c7 ≠ o, Br7c7 ≠ s
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 0
whip[1]: Pr8c9{ne .} ==> Br7c8 ≠ nes
whip[1]: Pr8c10{nw .} ==> Br8c9 ≠ ne, Br8c9 ≠ nes, Br8c10 ≠ w
B-single: Br8c10 = o
N-single: Nr8c10 = 0
P-single: Pr9c10 = o
H-single: Hr9c9 = 0
whip[1]: Pr9c10{o .} ==> Br8c9 ≠ ns, Br9c9 ≠ n, Br9c9 ≠ nw
B-single: Br8c9 = n
N-single: Nr8c9 = 1
P-single: Pr9c9 = o
V-single: Vr9c9 = 0
whip[1]: Pr9c9{o .} ==> Br9c8 ≠ n, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ esw, Br9c8 ≠ nes, Br9c9 ≠ w
B-single: Br9c9 = o
N-single: Nr9c9 = 0
P-single: Pr10c9 = o
H-single: Hr10c8 = 0
whip[1]: Pr10c9{o .} ==> Br10c8 ≠ n
B-single: Br10c8 = o
N-single: Nr10c8 = 0
P-single: Pr10c8 = o
V-single: Vr9c8 = 0
whip[1]: Pr10c8{o .} ==> Br9c7 ≠ ew, Br9c7 ≠ wne, Br9c8 ≠ w
B-single: Br9c8 = o
N-single: Nr9c8 = 0
P-single: Pr9c8 = o
H-single: Hr9c7 = 0
whip[1]: Pr9c8{o .} ==> Br8c7 ≠ s, Br8c7 ≠ ns, Br9c7 ≠ nw
B-single: Br9c7 = w
N-single: Nr9c7 = 1
whip[1]: Pr9c7{sw .} ==> Br8c6 ≠ n, Br8c6 ≠ w
whip[1]: Br8c6{s .} ==> Vr8c6 ≠ 1, Pr9c6 ≠ ne, Pr8c6 ≠ sw
V-single: Vr8c6 = 0
P-single: Pr8c6 = o
H-single: Hr8c5 = 0
P-single: Pr9c6 = o
H-single: Hr9c6 = 0
whip[1]: Vr8c6{0 .} ==> Br8c5 ≠ ew, Br8c5 ≠ wne
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Pr8c6{o .} ==> Br7c5 ≠ s, Br7c5 ≠ ns, Br8c5 ≠ nw
B-single: Br8c5 = w
N-single: Nr8c5 = 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ o, Br7c4 ≠ w
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 0
whip[1]: Pr9c6{o .} ==> Br8c6 ≠ s, Br9c6 ≠ nes
B-single: Br9c6 = se
N-single: Nr9c6 = 2
P-single: Pr9c7 = ns
V-single: Vr8c7 = 1
B-single: Br8c6 = e
P-single: Pr8c7 = se
H-single: Hr8c7 = 1
whip[1]: Pr9c7{ns .} ==> Br8c7 ≠ n, Br8c7 ≠ o
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 0
whip[1]: Pr8c7{se .} ==> Br8c7 ≠ w, Br7c7 ≠ e, Br7c7 ≠ n
B-single: Br8c7 = nw
N-single: Nr8c7 = 2
P-single: Pr8c8 = nw
V-single: Vr7c8 = 1
whip[1]: Pr8c8{nw .} ==> Br7c7 ≠ ns, Br7c8 ≠ ne
B-single: Br7c8 = wne
N-single: Nr7c8 = 3
P-single: Pr7c8 = se
H-single: Hr7c7 = 0
B-single: Br7c7 = se
N-single: Nr7c7 = 2
P-single: Pr7c7 = o
V-single: Vr6c7 = 0
whip[1]: Pr7c8{se .} ==> Br6c7 ≠ s, Br6c7 ≠ sw
whip[1]: Br6c7{w .} ==> Nr6c7 ≠ 2
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ e, Br6c6 ≠ ne, Br6c6 ≠ ew, Br6c7 ≠ w
B-single: Br6c7 = o
N-single: Nr6c7 = 0
P-single: Pr6c7 = o
H-single: Hr6c6 = 0
whip[1]: Pr6c7{o .} ==> Br5c6 ≠ swn, Br6c6 ≠ n
B-single: Br5c6 = nw
N-single: Nr5c6 = 2
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o, Br6c5 ≠ s
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 0
whip[1]: Br6c6{w .} ==> Nr6c6 ≠ 2
whip[1]: Pr7c5{se .} ==> Br7c5 ≠ w, Br7c5 ≠ n
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 1
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ e, Br7c3 ≠ n
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 1
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ e, Br6c5 ≠ ns
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ w, Br6c3 ≠ ns
whip[1]: Pr5c5{sw .} ==> Br5c4 ≠ n, Br5c4 ≠ ew
whip[1]: Pr8c4{ne .} ==> Br7c4 ≠ ew, Br7c4 ≠ s
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ ew, Br5c5 ≠ se
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 2
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ ns, Br5c3 ≠ ne
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 2

*** STARTING T&E IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining ***

        STARTING PHASE 1 IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining

GENERATING CONTEXT 1 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr6c6.
entering BRT for context 1
P-single: Pr7c6 = nw
H-single: Hr7c5 = 1
P-single: Pr6c6 = ns
H-single: Hr6c5 = 0
B-single: Br6c6 = w
N-single: Nr6c6 = 1
B-single: Br6c5 = se
N-single: Nr6c5 = 2
P-single: Pr7c5 = se
V-single: Vr7c5 = 1
P-single: Pr6c5 = o
V-single: Vr5c5 = 0
Starting_init_links_with_<Fact-168927>
Entering_level_W1_with_<Fact-169744>
whip[1]: Vr5c5{0 .} ==> Pr5c5 ≠ sw, Br5c5 ≠ esw, Br5c4 ≠ ne
P-single: Pr5c5 = o
H-single: Hr5c4 = 0
B-single: Br5c4 = w
V-single: Vr5c4 = 1
N-single: Nr5c4 = 1
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
P-single: Pr5c4 = sw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
whip[1]: Pr5c5{o .} ==> Br4c4 ≠ s
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c4{1 .} ==> Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ s, Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
P-single: Pr7c3 = nw
H-single: Hr7c3 = 0
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
whip[1]: Pr7c3{nw .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
N-single: Nr7c4 = 1
P-single: Pr8c5 = ns
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Pr8c5{ns .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 1.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 2 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr6c6.
entering BRT for context 2
P-single: Pr7c6 = o
H-single: Hr7c5 = 0
P-single: Pr6c6 = nw
H-single: Hr6c5 = 1
B-single: Br6c6 = o
N-single: Nr6c6 = 0
B-single: Br6c5 = n
N-single: Nr6c5 = 1
P-single: Pr7c5 = o
V-single: Vr7c5 = 0
P-single: Pr6c5 = ne
V-single: Vr5c5 = 1
Starting_init_links_with_<Fact-170741>
Entering_level_W1_with_<Fact-171558>
whip[1]: Vr5c5{1 .} ==> Pr5c5 ≠ o, Br5c5 ≠ e, Br5c4 ≠ w
P-single: Pr5c5 = sw
H-single: Hr5c4 = 1
B-single: Br5c4 = ne
V-single: Vr5c4 = 0
N-single: Nr5c4 = 2
P-single: Pr6c4 = o
H-single: Hr6c3 = 0
P-single: Pr5c4 = ew
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ o
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c4{0 .} ==> Br5c3 ≠ nes
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
whip[1]: Pr6c3{o .} ==> Br6c3 ≠ nw, Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
P-single: Pr7c3 = ew
H-single: Hr7c3 = 1
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se, Br7c4 ≠ e
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
P-single: Pr8c5 = sw
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
whip[1]: Pr8c5{sw .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
NO CONTRADICTION FOUND IN CONTEXT 2.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 3 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr7c5.
entering BRT for context 3
P-single: Pr8c5 = ns
H-single: Hr8c4 = 0
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr7c6 = nw
V-single: Vr6c6 = 1
B-single: Br7c4 = e
V-single: Vr7c4 = 0
N-single: Nr7c4 = 1
P-single: Pr8c4 = o
P-single: Pr7c4 = o
H-single: Hr7c3 = 0
Starting_init_links_with_<Fact-172556>
Entering_level_W1_with_<Fact-173343>
whip[1]: Hr7c3{0 .} ==> Pr7c3 ≠ ew, Br7c3 ≠ ne, Br6c3 ≠ s
P-single: Pr7c3 = nw
V-single: Vr6c3 = 1
B-single: Br6c3 = nw
H-single: Hr6c3 = 1
N-single: Nr6c3 = 2
P-single: Pr6c4 = nw
V-single: Vr5c4 = 1
P-single: Pr6c3 = se
B-single: Br7c3 = o
N-single: Nr7c3 = 0
whip[1]: Pr7c3{nw .} ==> Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
whip[1]: Hr6c3{1 .} ==> Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s, Br5c4 ≠ ne
B-single: Br5c4 = w
V-single: Vr5c5 = 0
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c5{0 .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes
B-single: Br8c4 = se
N-single: Nr8c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 3.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 4 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr7c5.
entering BRT for context 4
P-single: Pr8c5 = sw
H-single: Hr8c4 = 1
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr7c6 = o
V-single: Vr6c6 = 0
B-single: Br7c4 = sw
V-single: Vr7c4 = 1
N-single: Nr7c4 = 2
P-single: Pr8c4 = ne
P-single: Pr7c4 = sw
H-single: Hr7c3 = 1
Starting_init_links_with_<Fact-174332>
Entering_level_W1_with_<Fact-175119>
whip[1]: Hr7c3{1 .} ==> Pr7c3 ≠ nw, Br7c3 ≠ o, Br6c3 ≠ nw
P-single: Pr7c3 = ew
V-single: Vr6c3 = 0
B-single: Br6c3 = s
H-single: Hr6c3 = 0
N-single: Nr6c3 = 1
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
P-single: Pr6c3 = o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
whip[1]: Hr6c3{0 .} ==> Br5c3 ≠ nes
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ o, Br5c4 ≠ w
B-single: Br5c4 = ne
V-single: Vr5c5 = 1
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c5{1 .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
N-single: Nr6c5 = 1
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
NO CONTRADICTION FOUND IN CONTEXT 4.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 5 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr5c5.
entering BRT for context 5
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
H-single: Hr5c4 = 1
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
B-single: Br5c4 = ne
V-single: Vr5c4 = 0
N-single: Nr5c4 = 2
P-single: Pr6c4 = o
H-single: Hr6c3 = 0
P-single: Pr5c4 = ew
Starting_init_links_with_<Fact-176107>
Entering_level_W1_with_<Fact-176894>
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ nes, Br4c4 ≠ o
B-single: Br4c4 = s
N-single: Nr4c4 = 1
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
whip[1]: Pr6c3{o .} ==> Br6c3 ≠ nw, Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
P-single: Pr7c3 = ew
H-single: Hr7c3 = 1
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se, Br7c4 ≠ e
B-single: Br7c4 = sw
V-single: Vr7c5 = 0
N-single: Nr7c4 = 2
P-single: Pr8c5 = sw
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
whip[1]: Vr7c5{0 .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr7c6 = o
whip[1]: Pr7c6{o .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
N-single: Nr6c5 = 1
B-single: Br6c6 = o
N-single: Nr6c6 = 0
NO CONTRADICTION FOUND IN CONTEXT 5.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 6 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr5c5.
entering BRT for context 6
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
H-single: Hr5c4 = 0
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
B-single: Br5c4 = w
V-single: Vr5c4 = 1
N-single: Nr5c4 = 1
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
P-single: Pr5c4 = sw
Starting_init_links_with_<Fact-177885>
Entering_level_W1_with_<Fact-178672>
whip[1]: Hr6c3{1 .} ==> Pr6c3 ≠ o, Br6c3 ≠ s, Br5c3 ≠ n
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
B-single: Br6c3 = nw
H-single: Hr7c3 = 0
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
P-single: Pr7c3 = nw
whip[1]: Pr6c3{se .} ==> Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
whip[1]: Hr7c3{0 .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
V-single: Vr7c5 = 1
N-single: Nr7c4 = 1
P-single: Pr8c5 = ns
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Vr7c5{1 .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr7c6 = nw
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Hr5c4{0 .} ==> Br4c4 ≠ s
B-single: Br4c4 = o
N-single: Nr4c4 = 0
NO CONTRADICTION FOUND IN CONTEXT 6.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 7 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr7c4.
entering BRT for context 7
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
P-single: Pr7c4 = sw
H-single: Hr7c3 = 1
B-single: Br7c4 = sw
V-single: Vr7c5 = 0
N-single: Nr7c4 = 2
P-single: Pr8c5 = sw
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr7c3 = ew
V-single: Vr6c3 = 0
Starting_init_links_with_<Fact-179660>
Entering_level_W1_with_<Fact-180447>
whip[1]: Vr6c3{0 .} ==> Pr6c3 ≠ se, Br6c3 ≠ nw, Br6c2 ≠ esw
P-single: Pr6c3 = o
H-single: Hr6c3 = 0
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
whip[1]: Pr6c3{o .} ==> Br5c3 ≠ nes
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ o, Br5c4 ≠ w
B-single: Br5c4 = ne
V-single: Vr5c5 = 1
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c5{1 .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
N-single: Nr6c5 = 1
P-single: Pr7c6 = o
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Pr7c6{o .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
whip[1]: Pr8c5{sw .} ==> Br8c4 ≠ se
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
NO CONTRADICTION FOUND IN CONTEXT 7.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 8 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr7c4.
entering BRT for context 8
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
P-single: Pr7c4 = o
H-single: Hr7c3 = 0
B-single: Br7c4 = e
V-single: Vr7c5 = 1
N-single: Nr7c4 = 1
P-single: Pr8c5 = ns
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr7c3 = nw
V-single: Vr6c3 = 1
Starting_init_links_with_<Fact-181438>
Entering_level_W1_with_<Fact-182225>
whip[1]: Vr6c3{1 .} ==> Pr6c3 ≠ o, Br6c3 ≠ s, Br6c2 ≠ sw
P-single: Pr6c3 = se
H-single: Hr6c3 = 1
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr6c4 = nw
V-single: Vr5c4 = 1
whip[1]: Pr6c3{se .} ==> Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s, Br5c4 ≠ ne
B-single: Br5c4 = w
V-single: Vr5c5 = 0
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c5{0 .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr7c6 = nw
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
whip[1]: Pr8c5{ns .} ==> Br8c4 ≠ nes
B-single: Br8c4 = se
N-single: Nr8c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 8.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 9 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr5c4.
entering BRT for context 9
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
B-single: Br5c4 = w
V-single: Vr5c5 = 0
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
Starting_init_links_with_<Fact-183215>
Entering_level_W1_with_<Fact-184002>
whip[1]: Vr6c3{1 .} ==> Pr7c3 ≠ ew, Br6c3 ≠ s, Br6c2 ≠ sw
P-single: Pr7c3 = nw
H-single: Hr7c3 = 0
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
whip[1]: Pr7c3{nw .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
V-single: Vr7c5 = 1
N-single: Nr7c4 = 1
P-single: Pr8c5 = ns
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Vr7c5{1 .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr7c6 = nw
V-single: Vr6c6 = 1
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr6c6 = ns
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Pr6c6{ns .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
whip[1]: Pr5c5{o .} ==> Br4c4 ≠ s
B-single: Br4c4 = o
N-single: Nr4c4 = 0
NO CONTRADICTION FOUND IN CONTEXT 9.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 10 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr5c4.
entering BRT for context 10
P-single: Pr6c4 = o
H-single: Hr6c3 = 0
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
B-single: Br5c4 = ne
V-single: Vr5c5 = 1
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
Starting_init_links_with_<Fact-184993>
Entering_level_W1_with_<Fact-185780>
whip[1]: Vr6c3{0 .} ==> Pr7c3 ≠ nw, Br6c3 ≠ nw, Br6c2 ≠ esw
P-single: Pr7c3 = ew
H-single: Hr7c3 = 1
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se, Br7c4 ≠ e
B-single: Br7c4 = sw
V-single: Vr7c5 = 0
N-single: Nr7c4 = 2
P-single: Pr8c5 = sw
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
whip[1]: Vr7c5{0 .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr7c6 = o
V-single: Vr6c6 = 0
whip[1]: Pr7c6{o .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
N-single: Nr6c5 = 1
P-single: Pr6c6 = nw
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ o
B-single: Br4c4 = s
N-single: Nr4c4 = 1
NO CONTRADICTION FOUND IN CONTEXT 10.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 11 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Vr6c3.
entering BRT for context 11
P-single: Pr7c3 = nw
H-single: Hr7c3 = 0
P-single: Pr6c3 = se
H-single: Hr6c3 = 1
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
P-single: Pr6c4 = nw
V-single: Vr5c4 = 1
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
Starting_init_links_with_<Fact-186768>
Entering_level_W1_with_<Fact-187585>
whip[1]: Vr5c4{1 .} ==> Pr5c4 ≠ ew, Br5c4 ≠ ne, Br5c3 ≠ n
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
B-single: Br5c4 = w
V-single: Vr5c5 = 0
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c5{0 .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr7c6 = nw
H-single: Hr7c5 = 1
B-single: Br6c5 = se
N-single: Nr6c5 = 2
P-single: Pr7c5 = se
V-single: Vr7c5 = 1
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr8c5 = ns
H-single: Hr8c4 = 0
whip[1]: Pr8c5{ns .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
N-single: Nr7c4 = 1
P-single: Pr8c4 = o
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Pr8c4{o .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
NO CONTRADICTION FOUND IN CONTEXT 11.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 12 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Vr6c3.
entering BRT for context 12
P-single: Pr7c3 = ew
H-single: Hr7c3 = 1
P-single: Pr6c3 = o
H-single: Hr6c3 = 0
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
Starting_init_links_with_<Fact-188582>
Entering_level_W1_with_<Fact-189399>
whip[1]: Vr5c4{0 .} ==> Pr5c4 ≠ sw, Br5c4 ≠ w, Br5c3 ≠ nes
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
B-single: Br5c3 = n
N-single: Nr5c3 = 1
B-single: Br5c4 = ne
V-single: Vr5c5 = 1
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ o
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c5{1 .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
H-single: Hr7c5 = 0
N-single: Nr6c5 = 1
P-single: Pr7c6 = o
P-single: Pr7c5 = o
V-single: Vr7c5 = 0
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Hr7c5{0 .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr8c5 = sw
H-single: Hr8c4 = 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ e, Br8c4 ≠ se
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
P-single: Pr8c4 = ne
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
whip[1]: Pr8c4{ne .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
NO CONTRADICTION FOUND IN CONTEXT 12.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 13 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Hr8c4.
entering BRT for context 13
P-single: Pr8c5 = sw
V-single: Vr7c5 = 0
P-single: Pr8c4 = ne
V-single: Vr7c4 = 1
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
P-single: Pr7c4 = sw
H-single: Hr7c3 = 1
Starting_init_links_with_<Fact-190395>
Entering_level_W1_with_<Fact-191212>
whip[1]: Hr7c3{1 .} ==> Pr7c3 ≠ nw, Br7c3 ≠ o, Br6c3 ≠ nw
P-single: Pr7c3 = ew
V-single: Vr6c3 = 0
B-single: Br6c3 = s
H-single: Hr6c3 = 0
N-single: Nr6c3 = 1
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
P-single: Pr6c3 = o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
whip[1]: Hr6c3{0 .} ==> Br5c3 ≠ nes
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ o, Br5c4 ≠ w
B-single: Br5c4 = ne
V-single: Vr5c5 = 1
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c5{1 .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
N-single: Nr6c5 = 1
P-single: Pr7c6 = o
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Pr7c6{o .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
NO CONTRADICTION FOUND IN CONTEXT 13.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 14 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Hr8c4.
entering BRT for context 14
P-single: Pr8c5 = ns
V-single: Vr7c5 = 1
P-single: Pr8c4 = o
V-single: Vr7c4 = 0
B-single: Br8c4 = se
N-single: Nr8c4 = 2
B-single: Br7c4 = e
N-single: Nr7c4 = 1
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
P-single: Pr7c4 = o
H-single: Hr7c3 = 0
Starting_init_links_with_<Fact-192209>
Entering_level_W1_with_<Fact-193026>
whip[1]: Hr7c3{0 .} ==> Pr7c3 ≠ ew, Br7c3 ≠ ne, Br6c3 ≠ s
P-single: Pr7c3 = nw
V-single: Vr6c3 = 1
B-single: Br6c3 = nw
H-single: Hr6c3 = 1
N-single: Nr6c3 = 2
P-single: Pr6c4 = nw
V-single: Vr5c4 = 1
P-single: Pr6c3 = se
B-single: Br7c3 = o
N-single: Nr7c3 = 0
whip[1]: Pr7c3{nw .} ==> Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
whip[1]: Hr6c3{1 .} ==> Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s, Br5c4 ≠ ne
B-single: Br5c4 = w
V-single: Vr5c5 = 0
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c5{0 .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr7c6 = nw
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
NO CONTRADICTION FOUND IN CONTEXT 14.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 15 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Hr7c5.
entering BRT for context 15
P-single: Pr7c6 = nw
V-single: Vr6c6 = 1
P-single: Pr7c5 = se
V-single: Vr7c5 = 1
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr8c5 = ns
H-single: Hr8c4 = 0
B-single: Br6c5 = se
H-single: Hr6c5 = 0
N-single: Nr6c5 = 2
P-single: Pr6c6 = ns
P-single: Pr6c5 = o
V-single: Vr5c5 = 0
Starting_init_links_with_<Fact-194024>
Entering_level_W1_with_<Fact-194811>
whip[1]: Vr5c5{0 .} ==> Pr5c5 ≠ sw, Br5c5 ≠ esw, Br5c4 ≠ ne
P-single: Pr5c5 = o
H-single: Hr5c4 = 0
B-single: Br5c4 = w
V-single: Vr5c4 = 1
N-single: Nr5c4 = 1
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
P-single: Pr5c4 = sw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
whip[1]: Pr5c5{o .} ==> Br4c4 ≠ s
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c4{1 .} ==> Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ s, Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
P-single: Pr7c3 = nw
H-single: Hr7c3 = 0
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
whip[1]: Pr7c3{nw .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
N-single: Nr7c4 = 1
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Pr6c6{ns .} ==> Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
NO CONTRADICTION FOUND IN CONTEXT 15.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 16 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Hr7c5.
entering BRT for context 16
P-single: Pr7c6 = o
V-single: Vr6c6 = 0
P-single: Pr7c5 = o
V-single: Vr7c5 = 0
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr8c5 = sw
H-single: Hr8c4 = 1
B-single: Br6c5 = n
H-single: Hr6c5 = 1
N-single: Nr6c5 = 1
P-single: Pr6c6 = nw
P-single: Pr6c5 = ne
V-single: Vr5c5 = 1
Starting_init_links_with_<Fact-195800>
Entering_level_W1_with_<Fact-196587>
whip[1]: Vr5c5{1 .} ==> Pr5c5 ≠ o, Br5c5 ≠ e, Br5c4 ≠ w
P-single: Pr5c5 = sw
H-single: Hr5c4 = 1
B-single: Br5c4 = ne
V-single: Vr5c4 = 0
N-single: Nr5c4 = 2
P-single: Pr6c4 = o
H-single: Hr6c3 = 0
P-single: Pr5c4 = ew
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ o
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c4{0 .} ==> Br5c3 ≠ nes
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
whip[1]: Pr6c3{o .} ==> Br6c3 ≠ nw, Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
P-single: Pr7c3 = ew
H-single: Hr7c3 = 1
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se, Br7c4 ≠ e
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w
B-single: Br6c6 = o
N-single: Nr6c6 = 0
NO CONTRADICTION FOUND IN CONTEXT 16.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 17 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Hr7c3.
entering BRT for context 17
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
P-single: Pr7c3 = ew
V-single: Vr6c3 = 0
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
B-single: Br6c3 = s
H-single: Hr6c3 = 0
N-single: Nr6c3 = 1
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
P-single: Pr6c3 = o
Starting_init_links_with_<Fact-197575>
Entering_level_W1_with_<Fact-198362>
whip[1]: Pr6c3{o .} ==> Br5c3 ≠ nes, Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ o, Br5c4 ≠ w
B-single: Br5c4 = ne
V-single: Vr5c5 = 1
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c5 = sw
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Vr5c5{1 .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
H-single: Hr7c5 = 0
N-single: Nr6c5 = 1
P-single: Pr7c6 = o
P-single: Pr7c5 = o
V-single: Vr7c5 = 0
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Hr7c5{0 .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr8c5 = sw
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ e, Br8c4 ≠ se
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 17.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 18 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Hr7c3.
entering BRT for context 18
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
P-single: Pr7c3 = nw
V-single: Vr6c3 = 1
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
B-single: Br6c3 = nw
H-single: Hr6c3 = 1
N-single: Nr6c3 = 2
P-single: Pr6c4 = nw
V-single: Vr5c4 = 1
P-single: Pr6c3 = se
Starting_init_links_with_<Fact-199353>
Entering_level_W1_with_<Fact-200140>
whip[1]: Pr6c3{se .} ==> Br6c2 ≠ sw, Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ s, Br5c4 ≠ ne
B-single: Br5c4 = w
V-single: Vr5c5 = 0
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr5c5 = o
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Vr5c5{0 .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr7c6 = nw
H-single: Hr7c5 = 1
B-single: Br6c5 = se
N-single: Nr6c5 = 2
P-single: Pr7c5 = se
V-single: Vr7c5 = 1
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr8c5 = ns
whip[1]: Pr8c5{ns .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
N-single: Nr7c4 = 1
B-single: Br8c4 = se
N-single: Nr8c4 = 2
NO CONTRADICTION FOUND IN CONTEXT 18.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 19 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Hr6c5.
entering BRT for context 19
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
P-single: Pr6c5 = ne
V-single: Vr5c5 = 1
B-single: Br6c5 = n
H-single: Hr7c5 = 0
N-single: Nr6c5 = 1
P-single: Pr7c6 = o
P-single: Pr7c5 = o
V-single: Vr7c5 = 0
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr5c5 = sw
H-single: Hr5c4 = 1
Starting_init_links_with_<Fact-201130>
Entering_level_W1_with_<Fact-201917>
whip[1]: Hr5c4{1 .} ==> Pr5c4 ≠ sw, Br4c4 ≠ o, Br5c4 ≠ w
P-single: Pr5c4 = ew
V-single: Vr5c4 = 0
B-single: Br5c4 = ne
N-single: Nr5c4 = 2
P-single: Pr6c4 = o
H-single: Hr6c3 = 0
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ nes
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
whip[1]: Pr6c3{o .} ==> Br6c3 ≠ nw, Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
P-single: Pr7c3 = ew
H-single: Hr7c3 = 1
B-single: Br6c3 = s
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se, Br7c4 ≠ e
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
P-single: Pr8c5 = sw
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
whip[1]: Pr8c5{sw .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
whip[1]: Pr7c6{o .} ==> Br6c6 ≠ w
B-single: Br6c6 = o
N-single: Nr6c6 = 0
NO CONTRADICTION FOUND IN CONTEXT 19.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 20 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Hr6c5.
entering BRT for context 20
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
P-single: Pr6c5 = o
V-single: Vr5c5 = 0
B-single: Br6c5 = se
H-single: Hr7c5 = 1
N-single: Nr6c5 = 2
P-single: Pr7c6 = nw
P-single: Pr7c5 = se
V-single: Vr7c5 = 1
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr5c5 = o
H-single: Hr5c4 = 0
Starting_init_links_with_<Fact-202908>
Entering_level_W1_with_<Fact-203695>
whip[1]: Hr5c4{0 .} ==> Pr5c4 ≠ ew, Br5c4 ≠ ne, Br4c4 ≠ s
P-single: Pr5c4 = sw
V-single: Vr5c4 = 1
B-single: Br4c4 = o
N-single: Nr4c4 = 0
B-single: Br5c4 = w
N-single: Nr5c4 = 1
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
whip[1]: Pr5c4{sw .} ==> Br5c3 ≠ n
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ s, Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
P-single: Pr7c3 = nw
H-single: Hr7c3 = 0
B-single: Br6c3 = nw
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
whip[1]: Pr7c3{nw .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
N-single: Nr7c4 = 1
P-single: Pr8c5 = ns
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Pr8c5{ns .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
whip[1]: Pr7c6{nw .} ==> Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
NO CONTRADICTION FOUND IN CONTEXT 20.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 21 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Hr6c3.
entering BRT for context 21
P-single: Pr6c4 = nw
V-single: Vr5c4 = 1
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
B-single: Br6c3 = nw
H-single: Hr7c3 = 0
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
P-single: Pr7c3 = nw
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
P-single: Pr5c4 = sw
H-single: Hr5c4 = 0
Starting_init_links_with_<Fact-204685>
Entering_level_W1_with_<Fact-205472>
whip[1]: Hr5c4{0 .} ==> Pr5c5 ≠ sw, Br5c4 ≠ ne, Br4c4 ≠ s
P-single: Pr5c5 = o
V-single: Vr5c5 = 0
B-single: Br4c4 = o
N-single: Nr4c4 = 0
B-single: Br5c4 = w
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr7c6 = nw
H-single: Hr7c5 = 1
B-single: Br6c5 = se
N-single: Nr6c5 = 2
P-single: Pr7c5 = se
V-single: Vr7c5 = 1
whip[1]: Pr7c6{nw .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr8c5 = ns
H-single: Hr8c4 = 0
whip[1]: Pr8c5{ns .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
N-single: Nr7c4 = 1
P-single: Pr8c4 = o
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Pr8c4{o .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
whip[1]: Pr7c3{nw .} ==> Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
NO CONTRADICTION FOUND IN CONTEXT 21.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 22 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Hr6c3.
entering BRT for context 22
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
B-single: Br6c3 = s
H-single: Hr7c3 = 1
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
P-single: Pr7c3 = ew
B-single: Br5c3 = n
N-single: Nr5c3 = 1
P-single: Pr5c4 = ew
H-single: Hr5c4 = 1
Starting_init_links_with_<Fact-206463>
Entering_level_W1_with_<Fact-207250>
whip[1]: Hr5c4{1 .} ==> Pr5c5 ≠ o, Br4c4 ≠ o, Br5c4 ≠ w
P-single: Pr5c5 = sw
V-single: Vr5c5 = 1
B-single: Br5c4 = ne
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
B-single: Br4c4 = s
N-single: Nr4c4 = 1
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
V-single: Vr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
H-single: Hr7c5 = 0
N-single: Nr6c5 = 1
P-single: Pr7c6 = o
P-single: Pr7c5 = o
V-single: Vr7c5 = 0
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Hr7c5{0 .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr8c5 = sw
H-single: Hr8c4 = 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ e, Br8c4 ≠ se
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
P-single: Pr8c4 = ne
B-single: Br7c4 = sw
N-single: Nr7c4 = 2
whip[1]: Pr8c4{ne .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
NO CONTRADICTION FOUND IN CONTEXT 22.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 23 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 1Hr5c4.
entering BRT for context 23
P-single: Pr5c5 = sw
V-single: Vr5c5 = 1
P-single: Pr5c4 = ew
V-single: Vr5c4 = 0
B-single: Br5c4 = ne
N-single: Nr5c4 = 2
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr6c4 = o
H-single: Hr6c3 = 0
B-single: Br4c4 = s
N-single: Nr4c4 = 1
Starting_init_links_with_<Fact-208238>
Entering_level_W1_with_<Fact-209055>
whip[1]: Hr6c3{0 .} ==> Pr6c3 ≠ se, Br6c3 ≠ nw, Br5c3 ≠ nes
P-single: Pr6c3 = o
V-single: Vr6c3 = 0
B-single: Br5c3 = n
N-single: Nr5c3 = 1
B-single: Br6c3 = s
H-single: Hr7c3 = 1
N-single: Nr6c3 = 1
P-single: Pr7c4 = sw
V-single: Vr7c4 = 1
P-single: Pr7c3 = ew
whip[1]: Pr6c3{o .} ==> Br6c2 ≠ esw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
whip[1]: Hr7c3{1 .} ==> Br7c3 ≠ o
B-single: Br7c3 = ne
N-single: Nr7c3 = 2
P-single: Pr8c4 = ne
H-single: Hr8c4 = 1
whip[1]: Pr8c4{ne .} ==> Br8c4 ≠ se, Br7c4 ≠ e
B-single: Br7c4 = sw
V-single: Vr7c5 = 0
N-single: Nr7c4 = 2
P-single: Pr8c5 = sw
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
B-single: Br8c4 = nes
N-single: Nr8c4 = 3
whip[1]: Vr7c5{0 .} ==> Br7c5 ≠ nw
B-single: Br7c5 = o
N-single: Nr7c5 = 0
P-single: Pr7c6 = o
V-single: Vr6c6 = 0
whip[1]: Pr7c6{o .} ==> Br6c6 ≠ w, Br6c5 ≠ se
B-single: Br6c5 = n
N-single: Nr6c5 = 1
P-single: Pr6c6 = nw
B-single: Br6c6 = o
N-single: Nr6c6 = 0
whip[1]: Pr6c6{nw .} ==> Br5c5 ≠ e
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
NO CONTRADICTION FOUND IN CONTEXT 23.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GENERATING CONTEXT 24 AT DEPTH 1, SON OF CONTEXT 0, FROM HYPOTHESIS 0Hr5c4.
entering BRT for context 24
P-single: Pr5c5 = o
V-single: Vr5c5 = 0
P-single: Pr5c4 = sw
V-single: Vr5c4 = 1
B-single: Br5c4 = w
N-single: Nr5c4 = 1
P-single: Pr6c5 = o
H-single: Hr6c5 = 0
P-single: Pr6c4 = nw
H-single: Hr6c3 = 1
B-single: Br4c4 = o
N-single: Nr4c4 = 0
Starting_init_links_with_<Fact-210052>
Entering_level_W1_with_<Fact-210869>
whip[1]: Hr6c3{1 .} ==> Pr6c3 ≠ o, Br6c3 ≠ s, Br5c3 ≠ n
P-single: Pr6c3 = se
V-single: Vr6c3 = 1
B-single: Br5c3 = nes
N-single: Nr5c3 = 3
B-single: Br6c3 = nw
H-single: Hr7c3 = 0
N-single: Nr6c3 = 2
P-single: Pr7c4 = o
V-single: Vr7c4 = 0
P-single: Pr7c3 = nw
whip[1]: Pr6c3{se .} ==> Br6c2 ≠ sw
B-single: Br6c2 = esw
N-single: Nr6c2 = 3
whip[1]: Hr7c3{0 .} ==> Br7c3 ≠ ne
B-single: Br7c3 = o
N-single: Nr7c3 = 0
P-single: Pr8c4 = o
H-single: Hr8c4 = 0
whip[1]: Pr8c4{o .} ==> Br8c4 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = e
V-single: Vr7c5 = 1
N-single: Nr7c4 = 1
P-single: Pr8c5 = ns
P-single: Pr7c5 = se
H-single: Hr7c5 = 1
B-single: Br8c4 = se
N-single: Nr8c4 = 2
whip[1]: Vr7c5{1 .} ==> Br7c5 ≠ o
B-single: Br7c5 = nw
N-single: Nr7c5 = 2
P-single: Pr7c6 = nw
V-single: Vr6c6 = 1
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ n, Br6c6 ≠ o
B-single: Br6c6 = w
N-single: Nr6c6 = 1
P-single: Pr6c6 = ns
B-single: Br6c5 = se
N-single: Nr6c5 = 2
whip[1]: Pr6c6{ns .} ==> Br5c5 ≠ esw
B-single: Br5c5 = e
N-single: Nr5c5 = 1
NO CONTRADICTION FOUND IN CONTEXT 24.
BACK IN CONTEXT 0 with 587 csp-variables solved and 771 candidates remaining.

GRID 0 NOT SOLVED. 506 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = T&E(1, W+Loop), MOST COMPLEX RULE TRIED = W[1]

.   .   .   .   .   .———.   .   .   .   .
              0     | 3 |         0
.   .   .   .   .———.   .———.———.   .   .
  0             |     0       2 |
.   .   .   .   .———.   .   .   .———.   .
          0       2 |         0     |
.———.———.   .   .   .———.   .   .———.   .
|     2 |         0     |       |     0
.   .   .———.....   .———.   .   .———.   .
|     0     :   :   |     0         |
.———.   .....   .....   .   .   .   .———.
    |   :     0     :             0     |
.   .———.....   .....   .   .———.   .———.
  0         :   :     0     |   | 3 |
.   .   .   .....   .   .———.   .———.   .
          0     |     1 |     0
.   .   .   .———.   .   .   .   .   .   .
          1 |     0     |             0
.   .   .   .   .   .———.   .   .   .   .
      0     |     2 |     0
.   .   .   .———.———.   .   .   .   .   .

init-time = 3m 21.99s, solve-time = 2m 35.55s, total-time = 5m 57.54s
nb-facts=<Fact-211001>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = T&E(1, W+Loop)
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


Manual finish is trivial:

.   .   .   .   .   .———.   .   .   .   .
              0     | 3 |         0
.   .   .   .   .———.   .———.———.   .   .
  0             |     0       2 |
.   .   .   .   .———.   .   .   .———.   .
          0       2 |         0     |
.———.———.   .   .   .———.   .   .———.   .
|     2 |         0     |       |     0
.   .   .———.———.   .———.   .   .———.   .
|     0         |   |     0         |
.———.   .   .   .———.   .   .   .   .———.
    |         0                   0     |
.   .———.———.   .   .   .   .———.   .———.
  0         |         0     |   | 3 |
.   .   .   .———.   .   .———.   .———.   .
          0     |     1 |     0
.   .   .   .———.   .   .   .   .   .   .
          1 |     0     |             0
.   .   .   .   .   .———.   .   .   .   .
      0     |     2 |     0
.   .   .   .———.———.   .   .   .   .   .



