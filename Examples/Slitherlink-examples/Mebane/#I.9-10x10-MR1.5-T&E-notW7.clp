Mellon rating = 1.5


(solve 
10 10 
3 1 3 . 3 . . 1 . . 
. . . . . 1 3 . 3 2 
3 . 3 . 3 . . . . . 
. . . . . . 3 . 3 . 
3 2 3 . 3 . . . . . 
. . . . . 3 . 3 2 3 
. 3 . 3 . . . . . . 
. . . . . 3 . 3 . 3
2 3 . 3 2 . . . . . 
. . 1 . . 3 . 3 3 3 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 1 3 . 3 . . 1 . .
. . . . . 1 3 . 3 2
3 . 3 . 3 . . . . .
. . . . . . 3 . 3 .
3 2 3 . 3 . . . . .
. . . . . 3 . 3 2 3
. 3 . 3 . . . . . .
. . . . . 3 . 3 . 3
2 3 . 3 2 . . . . .
. . 1 . . 3 . 3 3 3

start init-grid-structure 0.0341291427612305
start create-csp-variables
start create-labels 0.00143718719482422
start init-physical-csp-links 0.0130040645599365
start init-physical-non-csp-links 12.196624994278
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.51585698127747
     start init-physical-BN-non-csp-links at local time 12.1293201446533
     start init-physical-BP-non-csp-links at local time 22.2760000228882
     end init-physical-BP-non-csp-links at local time 254.599613189697
end init-physical-non-csp-links 266.796280145645
start init-corner-B-c-values 266.830718994141
start init-outer-B-candidates 266.830775022507
start init-outer-I-candidates 266.831559181213
start init-H-candidates 266.832139015198
start init-V-candidates 266.836196184158
start init-P-candidates 266.840031147003
start init-inner-I-candidates 266.846520185471
start init-inner-N-and-B-candidates 266.849009037018
start solution 266.862185955048
entering BRT
w[1]-3-in-se-corner ==> Vr10c11 = 1, Hr11c10 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3s-in-{r5c5...r6c6} ==> Vr6c7 = 1, Vr5c5 = 1, Hr7c6 = 1, Hr5c5 = 1, Vr7c7 = 0, Vr4c5 = 0, Hr7c7 = 0, Hr5c4 = 0
w[1]-3-in-r10c9-hit-by-horiz-line-at-se ==> Vr10c9 = 1, Hr10c9 = 1
w[1]-3-in-r10c8-hit-by-horiz-line-at-ne ==> Vr10c8 = 1, Hr11c8 = 1
w[1]-3-in-r10c9-hit-by-horiz-line-at-sw ==> Vr10c10 = 1
w[1]-adjacent-1-3-on-edge-in-r1{c2 c3} ==> Vr1c2 = 0, Hr2c2 = 0, Hr1c3 = 1
w[1]-adjacent-1-3-on-edge-in-r1{c2 c1} ==> Vr1c3 = 0
w[1]-3-in-r10c10-closed-sw-corner ==> Pr10c11 ≠ sw, Pr10c11 ≠ o
w[1]-3-in-r10c10-closed-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-3-in-r10c9-closed-ne-corner ==> Pr11c9 ≠ ne, Pr11c9 ≠ o
w[1]-3-in-r10c9-closed-nw-corner ==> Pr11c10 ≠ nw, Pr11c10 ≠ o
w[1]-3-in-r10c8-closed-sw-corner ==> Pr10c9 ≠ sw, Pr10c9 ≠ ne, Pr10c9 ≠ o
w[1]-3-in-r10c8-closed-se-corner ==> Pr10c8 ≠ se, Pr10c8 ≠ nw, Pr10c8 ≠ o
w[1]-3-in-r6c6-closed-se-corner ==> Pr6c6 ≠ se, Pr6c6 ≠ nw, Pr6c6 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
entering level Loop with <Fact-93119>
entering level Col with <Fact-93205>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = in
no-vertical-line-r9{c9 c10} ==> Ir9c9 = in
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
no-horizontal-line-{r9 r10}c8 ==> Ir10c8 = in
vertical-line-r10{c7 c8} ==> Ir10c7 = out
vertical-line-r10{c8 c9} ==> Ir10c9 = out
vertical-line-r1{c0 c1} ==> Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-ne ==> Hr2c1 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-nw ==> Vr1c4 = 1, Hr2c3 = 1
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
w[1]-3-in-r1c3-closed-ne-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
w[1]-3-in-r1c1-closed-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
no-horizontal-line-{r0 r1}c4 ==> Ir1c4 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
no-vertical-line-r2{c3 c4} ==> Ir2c3 = out
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
w[1]-3-in-r3c1-hit-by-verti-line-at-ne ==> Vr3c1 = 1, Hr4c1 = 1, Hr3c2 = 0
w[1]-3-in-r3c1-closed-sw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
w[1]-3-in-r3c1-closed-nw-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
different-colours-in-r2{c2 c3} ==> Hr2c3 = 1
w[1]-3-in-r3c3-hit-by-verti-line-at-nw ==> Vr3c4 = 1, Hr4c3 = 1
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
w[1]-3-in-r5c3-isolated-at-ne-corner ==> Vr5c4 = 1, Hr5c3 = 1
w[1]-3-in-r5c3-closed-ne-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r3c5-isolated-at-sw-corner ==> Vr3c5 = 1, Hr4c5 = 1
w[1]-3-in-r3c5-closed-sw-corner ==> Pr3c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ o
w[1]-diagonal-closed-3-1-in-{r3c5...r2c6} ==> Vr2c7 = 0, Hr2c6 = 0
w[1]-1-in-r2c6-asymmetric-sw-corner ==> Pr2c7 ≠ ew, Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ ns
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-se ==> Vr8c10 = 1, Hr8c10 = 1
w[1]-3-in-r8c10-closed-nw-corner ==> Pr9c11 ≠ nw, Pr9c11 ≠ o
Starting_init_links_with_<Fact-93544>
2654 candidates, 9179 csp-links and 38199 links. Density = 1.09%
starting non trivial part of solution
Entering_level_W1_with_<Fact-188305>
whip[1]: Vr7c10{0 .} ==> Br7c10 ≠ wne, Pr7c10 ≠ ns, Pr7c10 ≠ se, Pr7c10 ≠ sw, Pr8c10 ≠ ne, Pr8c10 ≠ ns, Pr8c10 ≠ nw, Br7c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c10 ≠ w, Br7c10 ≠ nw, Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c10 ≠ swn
whip[1]: Hr8c9{0 .} ==> Br8c9 ≠ nes, Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c10 ≠ ew, Pr8c10 ≠ sw, Br7c9 ≠ s, Br7c9 ≠ ns, Br7c9 ≠ sw, Br7c9 ≠ swn, Br8c9 ≠ n, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Br7c9{nw .} ==> Nr7c9 ≠ 3
whip[1]: Pr8c10{se .} ==> Br8c10 ≠ esw, Br8c10 ≠ nes
whip[1]: Br8c10{wne .} ==> Pr8c11 ≠ o, Pr8c11 ≠ ns, Pr8c10 ≠ o, Pr9c10 ≠ o, Pr9c10 ≠ se, Pr9c10 ≠ ew, Pr9c10 ≠ sw
P-single: Pr8c10 = se
whip[1]: Pr8c10{se .} ==> Br8c9 ≠ w, Br8c9 ≠ s, Br8c9 ≠ o, Br7c10 ≠ e, Br7c10 ≠ n, Br7c10 ≠ o, Br7c10 ≠ ne, Br8c9 ≠ sw
whip[1]: Br8c9{esw .} ==> Nr8c9 ≠ 0
whip[1]: Br7c10{nes .} ==> Nr7c10 ≠ 0
whip[1]: Pr9c10{nw .} ==> Br9c9 ≠ ne, Br9c9 ≠ wne, Br9c9 ≠ nes, Br9c10 ≠ nw, Br9c10 ≠ swn, Br9c10 ≠ wne
whip[1]: Vr9c11{1 .} ==> Br9c10 ≠ sw, Br9c11 ≠ o, Br9c10 ≠ o, Br9c10 ≠ n, Br9c10 ≠ s, Br9c10 ≠ w, Br9c10 ≠ ns
B-single: Br9c11 = w
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0
whip[1]: Hr2c6{0 .} ==> Br2c6 ≠ n, Pr2c6 ≠ ne, Pr2c6 ≠ se, Pr2c6 ≠ ew, Pr2c7 ≠ sw, Br1c6 ≠ s, Br1c6 ≠ ns, Br1c6 ≠ se, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c6 ≠ nes
whip[1]: Pr2c7{ne .} ==> Br1c7 ≠ s, Br1c7 ≠ w, Br1c7 ≠ ns, Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ wne, Br1c7 ≠ nes, Br2c6 ≠ e, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ wne
B-single: Br2c7 = nes
H-single: Hr2c7 = 1
H-single: Hr3c7 = 1
V-single: Vr2c8 = 1
w[1]-3-in-r2c7-asymmetric-sw-corner ==> Vr1c8 = 0, Hr2c8 = 0
w[1]-3-in-r2c7-asymmetric-nw-corner ==> Vr3c8 = 0, Hr3c8 = 0
P-single: Pr2c7 = ne
V-single: Vr1c7 = 1
P-single: Pr2c8 = sw
P-single: Pr3c8 = nw
w[1]-1-in-r1c8-symmetric-sw-corner ==> Pr1c9 ≠ sw, Pr1c9 ≠ o
whip[1]: Hr2c7{1 .} ==> Br1c7 ≠ o, Br1c7 ≠ n, Br1c7 ≠ e, Br1c7 ≠ ne
whip[1]: Br1c7{swn .} ==> Pr1c7 ≠ o, Pr1c7 ≠ ew, Pr1c8 ≠ sw, Nr1c7 ≠ 0, Nr1c7 ≠ 1
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ w
whip[1]: Br1c8{s .} ==> Pr1c8 ≠ se, Pr2c9 ≠ nw
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ esw
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ o, Br1c6 ≠ n, Br1c6 ≠ w
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 0
whip[1]: Hr3c7{1 .} ==> Br3c7 ≠ o, Br3c7 ≠ e, Br3c7 ≠ s, Br3c7 ≠ w, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0
whip[1]: Vr2c8{1 .} ==> Br2c8 ≠ o, Br2c8 ≠ n, Br2c8 ≠ e, Br2c8 ≠ s, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ se, Br2c8 ≠ nes
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 0
whip[1]: Hr2c8{0 .} ==> Pr2c9 ≠ ew, Pr2c9 ≠ sw, Br1c8 ≠ s, Br2c8 ≠ nw, Br2c8 ≠ swn, Br2c8 ≠ wne
whip[1]: Vr3c8{0 .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ ns, Pr4c8 ≠ nw, Br3c7 ≠ ne, Br3c7 ≠ wne, Br3c7 ≠ nes, Br3c8 ≠ w, Br3c8 ≠ nw, Br3c8 ≠ ew, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn, Br3c8 ≠ wne
whip[1]: Hr3c8{0 .} ==> Pr3c9 ≠ nw, Pr3c9 ≠ ew, Pr3c9 ≠ sw, Br2c8 ≠ sw, Br2c8 ≠ esw, Br3c8 ≠ n, Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ nes
whip[1]: Br3c8{se .} ==> Nr3c8 ≠ 3
whip[1]: Br2c8{ew .} ==> Nr2c8 ≠ 3
whip[1]: Pr1c9{ew .} ==> Hr1c9 ≠ 0, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ o, Br1c9 ≠ e, Br1c9 ≠ s, Br1c9 ≠ w
H-single: Hr1c9 = 1
horizontal-line-{r0 r1}c9 ==> Ir1c9 = in
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o, Pr1c10 ≠ o, Pr1c10 ≠ se
B-single: Br0c9 = s
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ wne, Br1c10 ≠ o, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Pr3c7{ew .} ==> Br3c6 ≠ sw, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c6 ≠ o, Br3c6 ≠ s, Br3c6 ≠ w, Br3c6 ≠ ne
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 0
whip[1]: Hr4c5{1 .} ==> Br4c5 ≠ esw, Br4c5 ≠ o, Pr4c5 ≠ o, Pr4c5 ≠ ns, Pr4c5 ≠ nw, Pr4c5 ≠ sw, Pr4c6 ≠ o, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ se, Br3c5 ≠ wne, Br4c5 ≠ e, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Br3c5{nes .} ==> Pr3c5 ≠ o, Pr3c5 ≠ nw
whip[1]: Pr3c5{sw .} ==> Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ esw, Br3c6 ≠ swn, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne
whip[1]: Br3c6{ew .} ==> Nr3c6 ≠ 3
whip[1]: Pr4c5{ew .} ==> Br3c4 ≠ se, Br3c4 ≠ esw, Br3c4 ≠ nes, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c4 ≠ ne
whip[1]: Vr3c5{1 .} ==> Br3c5 ≠ nes, Br3c4 ≠ o, Pr3c5 ≠ ne, Pr3c5 ≠ ew, Pr4c5 ≠ se, Pr4c5 ≠ ew, Br3c4 ≠ n, Br3c4 ≠ s, Br3c4 ≠ w, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ sw, Br3c4 ≠ swn
P-single: Pr4c5 = ne
whip[1]: Pr4c5{ne .} ==> Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne
whip[1]: Br4c5{nes .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw
whip[1]: Br4c4{sw .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ se, Pr4c4 ≠ ew, Nr4c4 ≠ 3
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn
whip[1]: Hr5c3{1 .} ==> Br5c3 ≠ esw, Br4c3 ≠ o, Pr5c3 ≠ o, Pr5c3 ≠ ns, Pr5c3 ≠ nw, Pr5c3 ≠ sw, Pr5c4 ≠ o, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ se, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ wne
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ sw, Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Br4c4{w .} ==> Nr4c4 ≠ 2
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ se, Br4c2 ≠ esw, Br4c2 ≠ nes, Br5c2 ≠ ne
whip[1]: Br5c2{sw .} ==> Pr6c2 ≠ o, Pr6c2 ≠ sw
whip[1]: Pr6c2{ew .} ==> Br6c1 ≠ wne, Br6c1 ≠ nes, Br6c1 ≠ ne
whip[1]: Br5c3{nes .} ==> Pr6c4 ≠ o, Pr6c4 ≠ se
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ nw, Br6c4 ≠ swn, Br6c4 ≠ wne
whip[1]: Vr5c4{1 .} ==> Br5c4 ≠ nes, Br5c4 ≠ o, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Br5c3 ≠ swn, Br5c4 ≠ n, Br5c4 ≠ e, Br5c4 ≠ s, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se
P-single: Pr5c4 = sw
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ w, Br4c4 ≠ s, Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes
B-single: Br4c4 = o
N-single: Nr4c4 = 0
whip[1]: Pr4c4{nw .} ==> Br3c3 ≠ swn, Br3c3 ≠ wne
whip[1]: Br3c3{nes .} ==> Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr4c3 ≠ o, Pr4c3 ≠ ns, Pr4c3 ≠ nw, Pr4c3 ≠ sw, Pr4c4 ≠ o
P-single: Pr4c4 = nw
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ s, Br3c4 ≠ e, Br3c4 ≠ ne, Br4c3 ≠ sw
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 1
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 1
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br4c2 ≠ wne, Br4c2 ≠ ne
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ nes, Br2c4 ≠ sw, Br2c4 ≠ swn
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ esw, Br5c5 ≠ nes
whip[1]: Br5c5{wne .} ==> Pr5c5 ≠ o, Pr5c6 ≠ o, Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ se, Pr6c5 ≠ o, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c5 ≠ sw
P-single: Pr5c5 = se
whip[1]: Pr5c5{se .} ==> Br5c4 ≠ w, Br4c5 ≠ n, Br4c5 ≠ ne, Br5c4 ≠ sw
whip[1]: Br5c4{esw .} ==> Nr5c4 ≠ 0, Nr5c4 ≠ 1
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 1
whip[1]: Pr6c5{nw .} ==> Br6c4 ≠ ne, Br6c4 ≠ nes, Br6c5 ≠ nw, Br6c5 ≠ swn, Br6c5 ≠ wne
whip[1]: Pr5c6{sw .} ==> Br4c6 ≠ sw, Br4c6 ≠ esw, Br5c6 ≠ nw, Br5c6 ≠ swn, Br5c6 ≠ wne
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ ne, Br6c3 ≠ wne, Br6c3 ≠ nes
whip[1]: Vr2c3{1 .} ==> Br2c3 ≠ ns, Br2c2 ≠ o, Br2c3 ≠ o, Pr2c3 ≠ nw, Pr2c3 ≠ ew, Pr3c3 ≠ ew, Pr3c3 ≠ sw, Br2c2 ≠ n, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ sw, Br2c2 ≠ swn, Br2c3 ≠ n, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ ne
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Pr3c3{ns .} ==> Br2c2 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ nes, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ n
whip[1]: Br3c2{sw .} ==> Pr3c2 ≠ se, Pr3c2 ≠ ew, Nr3c2 ≠ 3
whip[1]: Pr3c2{nw .} ==> Br2c1 ≠ w, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c1 ≠ swn, Br2c2 ≠ ne, Br3c1 ≠ wne, Br3c1 ≠ nes, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ s, Br2c2 ≠ e
whip[1]: Br2c2{wne .} ==> Pr2c2 ≠ ne, Pr2c2 ≠ ew, Nr2c2 ≠ 1
whip[1]: Pr2c2{sw .} ==> Br2c2 ≠ wne, Br1c2 ≠ s
B-single: Br2c2 = ew
N-single: Nr2c2 = 2
whip[1]: Br1c2{w .} ==> Pr1c2 ≠ se, Pr1c3 ≠ sw
P-single: Pr1c3 = ew
P-single: Pr1c2 = ew
w[1]-1-in-r1c2-asymmetric-nw-corner ==> Pr2c3 ≠ ns
P-single: Pr2c3 = se
w[1]-1-in-r1c2-asymmetric-ne-corner ==> Pr2c2 ≠ ns
P-single: Pr2c2 = sw
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ e, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ wne
B-single: Br1c3 = nes
P-single: Pr1c4 = sw
P-single: Pr2c4 = nw
B-single: Br1c2 = n
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ ns, Br1c4 ≠ ne, Br1c4 ≠ s, Br1c4 ≠ e, Br1c4 ≠ n, Br1c4 ≠ o, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes
whip[1]: Br1c4{esw .} ==> Pr1c5 ≠ ew, Pr1c5 ≠ sw, Nr1c4 ≠ 0
w[1]-3-in-r1c5-symmetric-nw-corner ==> Vr1c5 = 1, Hr1c5 = 1
w[1]-3-in-r1c5-closed-nw-corner ==> Pr2c6 ≠ nw, Pr2c6 ≠ o
w[1]-diagonal-closed-3-1-in-{r1c5...r2c6} ==> Hr3c6 = 0
w[0]-adjacent-3-in-r2c7-nolines-west ==> Vr3c7 = 1
w[1]-3-in-r4c7-hit-by-verti-line-at-nw ==> Vr4c8 = 1, Hr5c7 = 1, Hr4c6 = 0
w[1]-3-in-r4c7-closed-se-corner ==> Pr4c7 ≠ se, Pr4c7 ≠ nw, Pr4c7 ≠ o
w[1]-1-in-r2c6-asymmetric-nw-corner ==> Pr3c7 ≠ ew
P-single: Pr3c7 = se
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
whip[1]: Vr1c5{1 .} ==> Pr1c5 ≠ o, Pr2c5 ≠ o, Pr2c5 ≠ se, Pr2c5 ≠ ew, Pr2c5 ≠ sw, Br1c4 ≠ w, Br1c4 ≠ sw, Br1c5 ≠ nes
P-single: Pr1c5 = se
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ esw
whip[1]: Br1c5{wne .} ==> Pr1c6 ≠ o, Pr1c6 ≠ se
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ wne, Br1c6 ≠ e
whip[1]: Br1c6{ew .} ==> Nr1c6 ≠ 1, Nr1c6 ≠ 3
N-single: Nr1c6 = 2
whip[1]: Br1c4{esw .} ==> Nr1c4 ≠ 1
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c5 ≠ nw, Br2c5 ≠ wne
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 3
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr3c6{0 .} ==> Pr3c6 ≠ se, Pr3c6 ≠ ew, Br2c6 ≠ s, Br3c6 ≠ n, Br3c6 ≠ ns, Br3c6 ≠ nw
B-single: Br2c6 = w
V-single: Vr2c6 = 1
whip[1]: Vr2c6{1 .} ==> Br2c5 ≠ o, Br2c5 ≠ n, Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ ns
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Br3c6{ew .} ==> Pr4c7 ≠ ew, Pr4c7 ≠ sw
whip[1]: Pr4c7{ns .} ==> Br3c6 ≠ se, Br3c7 ≠ ns, Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nes, Br4c7 ≠ swn, Br4c7 ≠ wne, Br3c7 ≠ n, Br4c6 ≠ n
whip[1]: Br4c6{ew .} ==> Pr4c6 ≠ ew, Nr4c6 ≠ 3
whip[1]: Br3c7{swn .} ==> Nr3c7 ≠ 1
whip[1]: Br4c7{nes .} ==> Pr4c8 ≠ o, Pr4c8 ≠ ew, Pr5c7 ≠ o, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ sw, Pr5c8 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c8 ≠ se, Pr5c8 ≠ ew, Pr5c8 ≠ sw
P-single: Pr5c8 = nw
whip[1]: Pr5c8{nw .} ==> Br5c8 ≠ n, Br5c7 ≠ s, Br5c7 ≠ e, Br5c7 ≠ o, Br4c8 ≠ s, Br4c8 ≠ e, Br4c8 ≠ n, Br4c8 ≠ o, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ nes, Br5c7 ≠ w, Br5c7 ≠ ne, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ wne, Br5c7 ≠ nes, Br5c8 ≠ w, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c8 ≠ nes
whip[1]: Br5c8{se .} ==> Pr5c9 ≠ nw, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Pr6c8 ≠ ne, Pr6c8 ≠ ns, Pr6c8 ≠ nw, Nr5c8 ≠ 3
whip[1]: Br5c7{swn .} ==> Nr5c7 ≠ 0
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 0
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ se, Br5c6 ≠ nes, Br5c6 ≠ ne
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ n, Br1c4 ≠ esw, Br2c3 ≠ w, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ wne, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ ew
B-single: Br1c4 = ew
N-single: Nr1c4 = 2
whip[1]: Pr2c5{ns .} ==> Br2c5 ≠ se, Br2c5 ≠ e
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 1
whip[1]: Br2c4{s .} ==> Pr3c4 ≠ ns, Nr2c4 ≠ 2
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 1
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne
B-single: Br1c1 = swn
P-single: Pr1c1 = se
P-single: Pr2c1 = ne
whip[1]: Pr2c1{ne .} ==> Br2c1 ≠ e, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ esw, Br2c1 ≠ wne
whip[1]: Br2c1{nes .} ==> Pr3c1 ≠ ne, Pr3c1 ≠ ns, Nr2c1 ≠ 0, Nr2c1 ≠ 1
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ esw
B-single: Br3c1 = swn
P-single: Pr3c1 = se
P-single: Pr4c1 = ne
P-single: Pr3c2 = nw
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ ne
B-single: Br2c1 = nes
N-single: Nr2c1 = 3
whip[1]: Pr4c1{ne .} ==> Br4c1 ≠ o, Br4c1 ≠ e, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ wne
whip[1]: Br4c1{nes .} ==> Pr5c1 ≠ ne, Pr5c1 ≠ ns, Nr4c1 ≠ 0
w[1]-3-in-r5c1-symmetric-nw-corner ==> Vr5c1 = 1, Hr5c1 = 1
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw
horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o, Pr5c1 ≠ o, Pr6c1 ≠ o, Pr6c1 ≠ se, Br5c1 ≠ nes
P-single: Pr5c1 = se
B-single: Br5c0 = e
whip[1]: Pr5c1{se .} ==> Br4c1 ≠ n, Br4c1 ≠ ne, Br5c1 ≠ esw
whip[1]: Br5c1{wne .} ==> Pr5c2 ≠ o, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ se
whip[1]: Pr5c2{sw .} ==> Br4c2 ≠ sw, Br4c2 ≠ swn, Br5c2 ≠ nw
whip[1]: Br5c2{sw .} ==> Pr6c3 ≠ se
whip[1]: Pr6c3{ew .} ==> Br6c2 ≠ sw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ nw, Br6c3 ≠ swn, Br6c2 ≠ o, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ ne
whip[1]: Br6c2{swn .} ==> Nr6c2 ≠ 0
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 3
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 1
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{esw .} ==> Nr6c1 ≠ 0
whip[1]: Pr6c2{ew .} ==> Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ swn, Br6c2 ≠ e
whip[1]: Pr3c2{nw .} ==> Br3c2 ≠ w, Br3c2 ≠ ew, Br3c2 ≠ sw
whip[1]: Br3c2{s .} ==> Nr3c2 ≠ 2
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 0
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr9c10{0 .} ==> Br9c10 ≠ esw, Pr9c10 ≠ ns, Pr10c10 ≠ ne, Pr10c10 ≠ ns, Br9c9 ≠ e, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw, Br9c10 ≠ ew
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ nw, Br10c9 ≠ esw, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ w
whip[1]: Br9c9{swn .} ==> Pr10c9 ≠ ns, Pr10c9 ≠ nw, Nr9c9 ≠ 0
whip[1]: Pr10c9{ew .} ==> Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c9 ≠ sw, Br9c9 ≠ swn, Br10c8 ≠ wne, Br10c8 ≠ nes, Br9c8 ≠ e, Br9c8 ≠ ne
whip[1]: Br9c8{swn .} ==> Pr9c9 ≠ ns, Pr9c9 ≠ se, Pr9c9 ≠ sw
whip[1]: Br10c8{swn .} ==> Pr11c8 ≠ o, Pr11c8 ≠ nw, Pr11c8 ≠ ew, Pr10c8 ≠ ne, Pr10c8 ≠ ew
P-single: Pr11c8 = ne
whip[1]: Pr11c8{ne .} ==> Br10c7 ≠ n, Br10c7 ≠ o, Br11c8 ≠ o, Br11c7 ≠ n, Br10c7 ≠ s, Br10c7 ≠ w, Br10c7 ≠ ns, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ sw, Br10c7 ≠ esw, Br10c7 ≠ swn, Br10c7 ≠ nes
B-single: Br11c7 = o
w[1]-3-in-r10c6-symmetric-se-corner ==> Vr10c7 = 1, Hr11c6 = 1
w[1]-3-in-r10c6-closed-se-corner ==> Pr10c6 ≠ se, Pr10c6 ≠ nw, Pr10c6 ≠ o
B-single: Br11c8 = n
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
whip[1]: Vr10c7{1 .} ==> Pr11c7 ≠ o, Pr10c7 ≠ o, Pr10c7 ≠ ne, Pr10c7 ≠ nw, Pr10c7 ≠ ew, Br10c6 ≠ swn, Br10c7 ≠ e, Br10c7 ≠ ne
P-single: Pr11c7 = nw
whip[1]: Pr11c7{nw .} ==> Br11c6 ≠ o, Br10c6 ≠ wne
B-single: Br11c6 = n
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ esw, Br10c5 ≠ nes, Br10c5 ≠ o, Br10c5 ≠ n, Br10c5 ≠ w
whip[1]: Br10c5{wne .} ==> Nr10c5 ≠ 0
whip[1]: Br10c7{wne .} ==> Nr10c7 ≠ 0, Nr10c7 ≠ 1
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ se, Br9c6 ≠ esw, Br9c6 ≠ nes, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn
whip[1]: Pr9c5{sw .} ==> Br8c4 ≠ nw, Br8c4 ≠ se, Br8c4 ≠ esw, Br8c4 ≠ nes, Br9c5 ≠ nw, Br9c5 ≠ se, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ w
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 0
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ nes, Br9c8 ≠ sw, Br9c8 ≠ swn, Br10c8 ≠ swn, Br9c7 ≠ o, Br9c7 ≠ n, Br9c7 ≠ w, Br9c8 ≠ s, Br9c8 ≠ ns
B-single: Br10c8 = esw
P-single: Pr11c9 = nw
P-single: Pr10c9 = se
whip[1]: Pr11c9{nw .} ==> Br11c9 ≠ n, Br10c9 ≠ swn, Br10c9 ≠ nes
B-single: Br10c9 = wne
P-single: Pr11c10 = ne
P-single: Pr10c10 = sw
B-single: Br11c9 = o
whip[1]: Pr11c10{ne .} ==> Br11c10 ≠ o, Br10c10 ≠ nes
B-single: Br10c10 = esw
P-single: Pr11c11 = nw
P-single: Pr10c11 = ns
B-single: Br11c10 = n
whip[1]: Pr10c11{ns .} ==> Br9c10 ≠ se, Br9c10 ≠ nes
whip[1]: Br9c10{ne .} ==> Nr9c10 ≠ 3
whip[1]: Br9c8{nw .} ==> Nr9c8 ≠ 3
whip[1]: Br9c7{wne .} ==> Nr9c7 ≠ 0
whip[1]: Br9c9{ns .} ==> Nr9c9 ≠ 3
whip[1]: Hr7c7{0 .} ==> Br7c7 ≠ nes, Pr7c7 ≠ ne, Pr7c7 ≠ se, Pr7c7 ≠ ew, Pr7c8 ≠ nw, Pr7c8 ≠ ew, Pr7c8 ≠ sw, Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes, Br7c7 ≠ n, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ swn, Br7c7 ≠ wne
whip[1]: Vr7c7{0 .} ==> Br7c7 ≠ esw, Pr7c7 ≠ ns, Pr7c7 ≠ sw, Pr8c7 ≠ ne, Pr8c7 ≠ ns, Pr8c7 ≠ nw, Br7c6 ≠ e, Br7c6 ≠ ne, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ esw, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c7 ≠ w, Br7c7 ≠ ew, Br7c7 ≠ sw
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 3
whip[1]: Pr7c7{nw .} ==> Br6c6 ≠ swn, Br6c6 ≠ wne
whip[1]: Br6c6{nes .} ==> Pr6c7 ≠ o, Pr6c7 ≠ ne, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr7c6 ≠ o, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Pr7c6 ≠ sw, Pr7c7 ≠ o
P-single: Pr7c7 = nw
whip[1]: Pr7c7{nw .} ==> Br7c6 ≠ s, Br7c6 ≠ o, Br6c7 ≠ e, Br6c7 ≠ n, Br6c7 ≠ o, Br6c7 ≠ ne, Br7c6 ≠ w, Br7c6 ≠ sw
whip[1]: Br7c6{swn .} ==> Nr7c6 ≠ 0
whip[1]: Br6c7{wne .} ==> Nr6c7 ≠ 0
whip[1]: Pr7c6{ew .} ==> Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes, Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c5 ≠ ne
whip[1]: Br6c5{sw .} ==> Nr6c5 ≠ 3
whip[1]: Pr6c7{sw .} ==> Br5c6 ≠ se, Br5c6 ≠ esw, Br5c7 ≠ swn
whip[1]: Br5c7{nw .} ==> Nr5c7 ≠ 3
whip[1]: Br5c6{sw .} ==> Nr5c6 ≠ 3
whip[1]: Br10c3{w .} ==> Pr10c4 ≠ sw, Pr11c3 ≠ ne, Pr11c4 ≠ nw, Pr10c3 ≠ se
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ w
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ ew, Br10c2 ≠ wne, Br10c2 ≠ e, Br10c2 ≠ ne
whip[1]: Br9c4{nes .} ==> Pr10c5 ≠ se, Pr9c4 ≠ o, Pr9c4 ≠ nw, Pr9c5 ≠ ne, Pr10c4 ≠ o, Pr10c5 ≠ o
whip[1]: Pr10c5{sw .} ==> Br10c5 ≠ swn, Br10c5 ≠ wne
whip[1]: Br10c5{sw .} ==> Nr10c5 ≠ 3
whip[1]: Pr9c5{sw .} ==> Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn
whip[1]: Pr9c4{sw .} ==> Br8c3 ≠ se, Br8c3 ≠ esw, Br8c3 ≠ nes
whip[1]: Br9c2{nes .} ==> Pr10c3 ≠ o, Pr9c2 ≠ o, Pr9c2 ≠ nw, Pr9c3 ≠ o, Pr9c3 ≠ ne, Pr10c2 ≠ o, Pr10c2 ≠ sw
whip[1]: Pr10c2{ew .} ==> Br10c1 ≠ ne
whip[1]: Pr9c3{sw .} ==> Br8c3 ≠ sw, Br8c3 ≠ swn
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ se, Br8c1 ≠ esw, Br8c1 ≠ nes
whip[1]: Br8c8{nes .} ==> Pr9c9 ≠ o, Pr8c8 ≠ o, Pr8c8 ≠ nw, Pr8c9 ≠ o, Pr9c8 ≠ o, Pr9c8 ≠ sw
whip[1]: Pr9c8{ew .} ==> Br9c7 ≠ wne, Br9c7 ≠ ne
whip[1]: Br9c7{ew .} ==> Pr9c7 ≠ se, Nr9c7 ≠ 3
whip[1]: Pr8c9{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ w
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Pr8c8{sw .} ==> Br7c7 ≠ se
whip[1]: Br7c7{s .} ==> Nr7c7 ≠ 2
whip[1]: Pr9c9{ew .} ==> Br8c9 ≠ e
whip[1]: Br8c9{esw .} ==> Nr8c9 ≠ 1
whip[1]: Br8c6{nes .} ==> Pr9c7 ≠ o, Pr8c6 ≠ o, Pr8c6 ≠ nw, Pr8c7 ≠ o, Pr9c6 ≠ o, Pr9c6 ≠ sw
whip[1]: Pr9c6{ew .} ==> Br9c5 ≠ ne
whip[1]: Br9c5{sw .} ==> Pr10c5 ≠ sw
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ nes, Br10c4 ≠ ne
whip[1]: Pr8c7{sw .} ==> Br8c7 ≠ se, Br8c7 ≠ o, Br8c7 ≠ e, Br8c7 ≠ s
whip[1]: Br8c7{nes .} ==> Nr8c7 ≠ 0
whip[1]: Pr8c6{sw .} ==> Br7c5 ≠ se, Br7c5 ≠ esw
whip[1]: Br7c4{nes .} ==> Pr8c5 ≠ se, Pr7c4 ≠ o, Pr7c4 ≠ nw, Pr7c5 ≠ o, Pr7c5 ≠ ne, Pr8c4 ≠ o, Pr8c4 ≠ sw, Pr8c5 ≠ o
whip[1]: Pr8c5{sw .} ==> Br8c5 ≠ nw, Br8c5 ≠ wne
whip[1]: Pr8c4{ew .} ==> Br8c3 ≠ wne, Br8c3 ≠ ne
whip[1]: Br8c3{ew .} ==> Nr8c3 ≠ 3
whip[1]: Pr7c5{sw .} ==> Br6c5 ≠ sw
whip[1]: Pr7c4{sw .} ==> Br6c3 ≠ se, Br6c3 ≠ esw
whip[1]: Br6c3{sw .} ==> Nr6c3 ≠ 3
whip[1]: Br7c2{nes .} ==> Pr8c3 ≠ se, Pr7c2 ≠ o, Pr7c2 ≠ nw, Pr7c3 ≠ o, Pr7c3 ≠ ne, Pr8c2 ≠ o, Pr8c2 ≠ sw, Pr8c3 ≠ o
whip[1]: Pr8c3{sw .} ==> Br8c3 ≠ nw
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ wne, Br8c1 ≠ ne
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ sw
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ esw
whip[1]: Br6c1{sw .} ==> Nr6c1 ≠ 3
whip[1]: Br6c10{nes .} ==> Pr7c10 ≠ o, Pr6c11 ≠ o, Pr7c11 ≠ o, Pr6c10 ≠ o, Pr6c10 ≠ nw
whip[1]: Pr6c10{sw .} ==> Br5c9 ≠ se, Br5c9 ≠ esw, Br5c9 ≠ nes
whip[1]: Pr7c11{sw .} ==> Br7c10 ≠ s
whip[1]: Br7c10{nes .} ==> Nr7c10 ≠ 1
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ w
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ nw
whip[1]: Br6c9{sw .} ==> Pr6c9 ≠ se
whip[1]: Br6c8{nes .} ==> Pr7c9 ≠ se, Pr6c8 ≠ o, Pr6c9 ≠ o, Pr6c9 ≠ ne, Pr7c8 ≠ o, Pr7c9 ≠ o
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ nw
whip[1]: Br7c9{w .} ==> Nr7c9 ≠ 2
whip[1]: Pr7c8{se .} ==> Br7c8 ≠ se, Br7c8 ≠ e, Br7c8 ≠ s
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 1
whip[1]: Pr6c9{sw .} ==> Br5c9 ≠ sw, Br5c9 ≠ swn, Br5c8 ≠ o
whip[1]: Br5c8{se .} ==> Nr5c8 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br6c7 ≠ w
whip[1]: Br6c7{wne .} ==> Nr6c7 ≠ 1
whip[1]: Br4c9{nes .} ==> Pr5c10 ≠ se, Pr4c9 ≠ o, Pr4c9 ≠ nw, Pr4c10 ≠ o, Pr4c10 ≠ ne, Pr5c9 ≠ o, Pr5c10 ≠ o
whip[1]: Pr5c10{sw .} ==> Br5c10 ≠ swn, Br5c10 ≠ wne
whip[1]: Pr5c9{se .} ==> Br5c9 ≠ o, Br5c9 ≠ e, Br5c9 ≠ s
whip[1]: Br5c9{wne .} ==> Nr5c9 ≠ 0
whip[1]: Pr4c10{sw .} ==> Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn
whip[1]: Pr4c9{sw .} ==> Br3c8 ≠ se
whip[1]: Br3c8{s .} ==> Nr3c8 ≠ 2
whip[1]: Br2c9{nes .} ==> Pr3c10 ≠ se, Pr2c9 ≠ o, Pr2c10 ≠ o, Pr2c10 ≠ ne, Pr3c9 ≠ o, Pr3c10 ≠ o
whip[1]: Pr3c10{sw .} ==> Br3c10 ≠ nw, Br3c10 ≠ wne
whip[1]: Pr3c9{se .} ==> Br3c9 ≠ se, Br3c9 ≠ o, Br3c9 ≠ e, Br3c9 ≠ s
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Pr2c10{sw .} ==> Br1c10 ≠ sw
whip[1]: Br1c10{nes .} ==> Pr2c11 ≠ sw
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ ne
whip[1]: Br2c10{sw .} ==> Pr3c10 ≠ sw
whip[1]: Pr3c10{ew .} ==> Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c9 ≠ ne
whip[1]: Pr2c9{se .} ==> Br1c9 ≠ ne, Br1c9 ≠ n
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 1
whip[1]: Vr10c11{1 .} ==> Br10c11 ≠ o
B-single: Br10c11 = w
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
Entering_level_W2_with_<Fact-190205>
Entering_level_W3_with_<Fact-195451>
whip[3]: Pr10c4{ew nw} - Br10c3{s n} - Pr11c4{ne .} ==> Br10c4 ≠ s
whip[3]: Pr10c3{sw ne} - Br10c3{w n} - Pr11c3{nw .} ==> Br10c2 ≠ s
whip[3]: Pr10c7{se sw} - Br9c7{ns e} - Pr9c7{ne .} ==> Br9c6 ≠ s
whip[3]: Pr10c4{ew se} - Br10c3{w e} - Pr10c3{ne .} ==> Br9c3 ≠ n
whip[3]: Pr10c4{ew se} - Br10c3{w e} - Pr10c3{ne .} ==> Br9c3 ≠ o
whip[1]: Br9c3{nes .} ==> Nr9c3 ≠ 0
whip[3]: Pr7c2{sw ne} - Br6c1{n ew} - Pr7c1{o .} ==> Br7c1 ≠ s
whip[3]: Pr7c2{sw ne} - Br6c1{n ew} - Pr7c1{o .} ==> Br7c1 ≠ o
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 0
whip[3]: Br6c2{n esw} - Pr7c2{sw ne} - Br7c2{esw .} ==> Pr7c3 ≠ nw
whip[1]: Pr7c3{sw .} ==> Br6c2 ≠ esw, Br7c3 ≠ se, Br7c3 ≠ o, Br7c3 ≠ e, Br7c3 ≠ s
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Br6c2{ew .} ==> Pr7c2 ≠ ne, Nr6c2 ≠ 3
whip[1]: Pr7c2{sw .} ==> Br7c1 ≠ sw, Br7c1 ≠ w
whip[3]: Br4c2{n ew} - Pr5c2{sw nw} - Br5c2{ns .} ==> Pr5c3 ≠ ne
whip[1]: Pr6c2{ew .} ==> Br5c2 ≠ sw, Br6c1 ≠ sw, Br6c1 ≠ w
whip[1]: Br6c1{ew .} ==> Pr7c1 ≠ ne
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ nes, Br7c1 ≠ n
whip[1]: Pr5c3{ew .} ==> Vr4c3 ≠ 1, Br4c2 ≠ ew, Br4c3 ≠ swn
V-single: Vr4c3 = 0
B-single: Br4c3 = ns
N-single: Nr4c3 = 2
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ o
whip[1]: Br3c2{s .} ==> Nr3c2 ≠ 0
N-single: Nr3c2 = 1
whip[3]: Br3c9{n esw} - Pr4c9{sw ne} - Br4c9{esw .} ==> Pr4c10 ≠ nw
whip[1]: Pr4c10{sw .} ==> Br3c9 ≠ esw, Br4c10 ≠ se, Br4c10 ≠ o, Br4c10 ≠ e, Br4c10 ≠ s
whip[1]: Br4c10{nes .} ==> Nr4c10 ≠ 0
whip[3]: Pr10c7{se sw} - Br9c7{ns e} - Pr9c7{ne .} ==> Br9c6 ≠ sw
whip[3]: Pr10c4{ew nw} - Br10c3{s n} - Pr11c4{ne .} ==> Br10c4 ≠ se
whip[3]: Pr10c4{ew nw} - Br9c4{nes wne} - Pr9c4{ne .} ==> Br9c3 ≠ nes
whip[3]: Pr10c3{sw ne} - Br10c3{w n} - Pr11c3{nw .} ==> Br10c2 ≠ sw
whip[3]: Pr10c3{sw ne} - Br9c2{nes wne} - Pr9c3{ns .} ==> Br9c3 ≠ swn
whip[3]: Pr9c8{ew nw} - Br8c8{nes wne} - Pr8c8{ne .} ==> Br8c7 ≠ nes
whip[3]: Pr9c7{sw ne} - Br8c6{nes wne} - Pr8c7{se .} ==> Br8c7 ≠ swn
whip[3]: Pr9c7{ew sw} - Br8c6{nes swn} - Pr9c6{ns .} ==> Br9c6 ≠ wne
whip[3]: Pr9c6{ew nw} - Br8c6{nes wne} - Pr8c6{ne .} ==> Br8c5 ≠ nes
whip[1]: Br8c5{ew .} ==> Nr8c5 ≠ 3
whip[3]: Pr9c3{sw nw} - Br9c2{nes swn} - Pr9c2{ne .} ==> Br8c2 ≠ esw
whip[3]: Pr8c9{sw nw} - Br8c8{nes swn} - Pr8c8{ne .} ==> Br7c8 ≠ esw
whip[3]: Pr8c5{sw ne} - Br7c4{nes wne} - Pr7c5{ns .} ==> Br7c5 ≠ swn
whip[1]: Br7c5{sw .} ==> Nr7c5 ≠ 3
whip[3]: Pr8c5{ew sw} - Br7c4{nes swn} - Pr8c4{ns .} ==> Br8c4 ≠ wne
whip[3]: Pr8c4{ew nw} - Br7c4{nes wne} - Pr7c4{ne .} ==> Br7c3 ≠ nes
whip[3]: Pr8c3{sw ne} - Br7c2{nes wne} - Pr7c3{ns .} ==> Br7c3 ≠ swn
whip[3]: Pr8c3{ew sw} - Br7c2{nes swn} - Pr8c2{ns .} ==> Br8c2 ≠ wne
whip[3]: Pr7c9{ew sw} - Br6c8{nes swn} - Pr7c8{ns .} ==> Br7c8 ≠ wne
whip[3]: Pr7c5{sw nw} - Br7c4{nes swn} - Pr7c4{ne .} ==> Br6c4 ≠ esw
whip[1]: Br6c4{sw .} ==> Nr6c4 ≠ 3
whip[3]: Pr6c10{sw ne} - Br6c10{wne nes} - Pr6c11{ns .} ==> Br5c10 ≠ esw
whip[3]: Pr5c10{sw ne} - Br4c9{nes wne} - Pr4c10{ns .} ==> Br4c10 ≠ swn
whip[3]: Pr5c10{ew sw} - Br4c9{nes swn} - Pr5c9{ns .} ==> Br5c9 ≠ wne
whip[1]: Br5c9{ew .} ==> Nr5c9 ≠ 3
whip[3]: Pr2c10{sw nw} - Br1c10{nes w} - Pr2c11{ns .} ==> Br2c10 ≠ se
whip[1]: Br2c10{sw .} ==> Pr3c11 ≠ nw, Pr2c10 ≠ nw
whip[1]: Pr2c10{sw .} ==> Br1c9 ≠ nes
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ n, Br3c10 ≠ ns
Entering_level_W4_with_<Fact-209979>
Entering_level_W5_with_<Fact-249570>
whip[5]: Pr10c2{ew nw} - Br9c1{sw se} - Pr10c1{ns se} - Br10c1{e swn} - Pr11c2{o .} ==> Br10c2 ≠ o
whip[1]: Br10c2{nes .} ==> Nr10c2 ≠ 0
whip[5]: Pr10c1{se o} - Br9c1{sw ne} - Pr10c2{ew ns} - Br9c2{nes wne} - Pr9c2{ne .} ==> Br10c1 ≠ e
whip[1]: Br10c1{swn .} ==> Pr11c2 ≠ ne
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ esw, Br10c2 ≠ swn
whip[5]: Pr9c7{ew sw} - Br9c7{ns ew} - Pr9c8{ew ns} - Br8c8{nes wne} - Pr8c8{ne .} ==> Br8c7 ≠ ne
whip[5]: Pr9c1{se o} - Br9c1{sw se} - Pr10c2{ew nw} - Br9c2{nes wne} - Pr9c2{ne .} ==> Br8c1 ≠ e
whip[5]: Pr7c1{se ns} - Br6c1{ns ew} - Pr7c2{sw ns} - Br7c2{nes esw} - Pr8c2{ns .} ==> Br7c1 ≠ esw
whip[5]: Pr3c10{ew ns} - Br2c9{nes wne} - Pr2c10{ew sw} - Br2c10{ns ew} - Pr3c11{o .} ==> Br3c10 ≠ w
whip[5]: Pr3c10{ew ne} - Br2c9{nes wne} - Pr2c10{ew sw} - Br1c10{w ne} - Pr2c11{o .} ==> Br2c10 ≠ sw
whip[1]: Br2c10{ew .} ==> Pr2c11 ≠ o, Pr3c10 ≠ ne
whip[1]: Pr3c10{ew .} ==> Br3c9 ≠ sw, Br3c9 ≠ w
whip[1]: Pr2c11{nw .} ==> Vr1c11 ≠ 0, Br1c10 ≠ w
V-single: Vr1c11 = 1
vertical-line-r1{c10 c11} ==> Ir1c10 = in
same-colour-in-r1{c9 c10} ==> Vr1c10 = 0
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o, Pr1c11 ≠ o
P-single: Pr1c11 = sw
B-single: Br1c11 = w
whip[1]: Vr1c10{0 .} ==> Pr1c10 ≠ sw, Pr2c10 ≠ ns, Br1c9 ≠ wne
P-single: Pr1c10 = ew
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 1
GRID 0 NOT SOLVED. 920 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.———.———.———.   .———.............———.———.
| 3   1   3 |   | 3 :   |     1 :       |
.———.   .———.   .....   .———.   .........
    |   |       :   | 1   3 |   : 3 : 2 :
.———.   .............   .———.   .........
| 3     : 3 |   | 3 :   |       :   :   :
.———.....———.   .———.   .................
    :               :   : 3 |   : 3 :   :
.———.....———.   .———.....———.   .........
| 3 : 2 : 3 |   | 3 :   :       :   :   :
.........................................
:   :   :   :   :   : 3 |   : 3 : 2 : 3 :
.....................———.   .............
:   : 3 :   : 3 :   :       :   :       :
.................................   .———.
:   :   :   :   :   : 3 :   : 3 :   | 3 :
.........................................
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.

init-time = 4m 26.86s, solve-time = 2m 51.84s, total-time = 7m 18.7s
nb-facts=<Fact-365423>
Quasi-Loop max length = 0
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


Manual finish:

.———.———.———.   .———.............———.———.
| 3   1   3 |   | 3 :   |     1 :       |
.———.   .———.   .....   .———.   .........
    |   |       :   | 1   3 |   : 3 : 2 :
.———.   .............   .———.   .........
| 3     : 3 |   | 3 :   |       :   :   :
.———.....———.   .———.   .................
    :               :   : 3 |   : 3 :   :
.———.....———.   .———.....———.   .........
| 3 : 2 : 3 |   | 3 :   :       :   :   :
.........................................
:   :   :   :   :   : 3 |   : 3 : 2 : 3 :
.....................———.   .............
:   : 3 :   : 3 :   :       :   :       :
.................................   .———.
:   :   :   :   :   : 3 :   : 3 :   | 3 :
.........................................
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.


Hr3c3=1 ==> small loop
therefore Hr3c3 = 0


.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .........
    |   |           | 1   3 |   : 3 : 2 :
.———.   .   .———.   .   .———.   .........
| 3     | 3 |   | 3 |   |       :   :   :
.———.   .———.   .———.   .................
    |                   : 3 |   : 3 :   :
.———.....———.   .———.....———.   .........
| 3 : 2 : 3 |   | 3 :   :       :   :   :
.........................................
:   :   :   :   :   : 3 |   : 3 : 2 : 3 :
.....................———.   .............
:   : 3 :   : 3 :   :       :   :       :
.................................   .———.
:   :   :   :   :   : 3 :   : 3 :   | 3 :
.........................................
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.



Vr2c9=1 ==> small loop
therefore Vr2c9 = 0


.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .———.   .
    |   |           | 1   3 |     3 | 2 |
.———.   .   .———.   .   .———.   .———.   .
| 3     | 3 |   | 3 |   |       |       |
.———.   .———.   .———.   .................
    |                   : 3 |   : 3 |   :
.———.....———.   .———.....———.   .———.   .
| 3 : 2 : 3 |   | 3 :   :       :       :
.........................................
:   :   :   :   :   : 3 |   : 3 : 2 : 3 :
.....................———.   .............
:   : 3 :   : 3 :   :       :   :       :
.................................   .———.
:   :   :   :   :   : 3 :   : 3 :   | 3 :
.........................................
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.




Hr4c10 = 1 ==> smalll loop
therefore Hr4c10 = 0

.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .———.   .
    |   |           | 1   3 |     3 | 2 |
.———.   .   .———.   .   .———.   .———.   .
| 3     | 3 |   | 3 |   |       |       |
.———.   .———.   .———.   .———.   .———.   .
    |                     3 |     3 |   |
.———.   .———.   .———.....———.   .———.   .
| 3   2 | 3 |   | 3 :   :       |       |
.———.———.   .............................
            :   :   : 3 |   : 3 : 2 : 3 :
.....................———.   .............
:   : 3 :   : 3 :   :       :   :       :
.................................   .———.
:   :   :   :   :   : 3 :   : 3 :   | 3 :
.........................................
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.



Vr1c6 = 1 ==>

.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .———.   .
    |   |           | 1   3 |     3 | 2 |
.———.   .   .———.   .   .———.   .———.   .
| 3     | 3 |   | 3 |   |       |       |
.———.   .———.   .———.   .———.   .———.   .
    |                     3 |     3 |   |
.———.   .———.   .———.....———.   .———.   .
| 3   2 | 3 |   | 3 :   :       |       |
.———.———.   .........................   .
            :   :   : 3 |   : 3 : 2 : 3 |
.....................———.   .........———.
:   : 3 :   : 3 :   :           :
.........................   .———.   .———.
:   :   :   :   :   : 3 :   | 3 :   | 3 |
.................................———.   .
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.





Vr1c6 = 0 ==>

.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .———.   .
    |   |           | 1   3 |     3 | 2 |
.———.   .   .———.   .   .———.   .———.   .
| 3     | 3 |   | 3 |   |       |       |
.———.   .———.   .———.   .———.   .———.   .
    |                     3 |     3 |   |
.———.   .———.   .———.———.———.   .———.   .
| 3   2 | 3 |   | 3             |       |
.———.———.   .   .———.   .———.   .   .———.
            |       | 3 |   | 3 | 2 | 3
.................   .———.   .———.   .———.
:   : 3 :   : 3 |                       |
.............———.   .............   .———.
:   :   :   :       : 3 :   : 3 :   | 3
.................................   .———.
: 2 : 3 :   : 3 : 2 :   :   :           |
.............................   .———.   .
:   :   : 1 :   :   : 3 |   | 3 | 3 | 3 |
.....................———.   .———.   .———.



Vr9c8 = 0 ==> small loop

.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .———.   .
    |   |           | 1   3 |     3 | 2 |
.———.   .   .———.   .   .———.   .———.   .
| 3     | 3 |   | 3 |   |       |       |
.———.   .———.   .———.   .———.   .———.   .
    |                     3 |     3 |   |
.———.   .———.   .———.———.———.   .———.   .
| 3   2 | 3 |   | 3             |       |
.———.———.   .   .———.   .———.   .   .———.
            |       | 3 |   | 3 | 2 | 3
.................   .———.   .———.   .———.
:   : 3 :   : 3 |                       |
.............———.   .———.———.———.   .———.
:   :   :   :       | 3       3 |   | 3
.................   .———.———.———.   .———.
: 2 : 3 :   : 3 : 2                     |
.....................   .———.   .———.   .
:   :   : 1 :   :   | 3 |   | 3 | 3 | 3 |
.................   .———.   .———.   .———.



therefore Vr9c8 = 1:

.———.———.———.   .———.———.   .   .———.———.
| 3   1   3 |   | 3     |     1 |       |
.———.   .———.   .———.   .———.   .———.   .
    |   |           | 1   3 |     3 | 2 |
.———.   .   .———.   .   .———.   .———.   .
| 3     | 3 |   | 3 |   |       |       |
.———.   .———.   .———.   .———.   .———.   .
    |                     3 |     3 |   |
.———.   .———.   .———.———.———.   .———.   .
| 3   2 | 3 |   | 3             |       |
.———.———.   .   .———.   .———.   .   .———.
            |       | 3 |   | 3 | 2 | 3
.   .———.   .———.   .———.   .———.   .———.
    | 3 |     3 |                       |
.———.   .———.———.   .———.———.———.   .———.
|                   | 3       3 |   | 3
.   .———.   .———.   .———.   .———.   .———.
| 2 | 3 |   | 3 | 2     |   |           |
.   .   .———.   .———.   .   .   .———.   .
|   |     1         | 3 |   | 3 | 3 | 3 |
.———.   .   .   .   .———.   .———.   .———.





