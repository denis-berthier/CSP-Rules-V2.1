
(solve
7 7
3 . 3 . 3 . 3
2 . . . . 3 . 
2 . . 3 . . . 
. . . 3 2 . . 
. . . . 2 . . 
. . 2 . . 3 . 
. 2 3 1 . 2 2 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . 3 . 3 . 3
2 . . . . 3 .
2 . . 3 . . .
. . . 3 2 . .
. . . . 2 . .
. . 2 . . 3 .
. 2 3 1 . 2 2

start init-grid-structure 3.88622283935547e-05
start create-csp-variables
start create-labels 0.00130796432495117
start init-physical-csp-links 0.0086369514465332
start init-physical-non-csp-links 2.80443000793457
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.577919006347656
     start init-physical-BN-non-csp-links at local time 2.1775689125061
     start init-physical-BP-non-csp-links at local time 4.2318389415741
     end init-physical-BP-non-csp-links at local time 30.8533039093018
end init-physical-non-csp-links 33.6577839851379
start init-corner-B-c-values 33.6581318378448
start init-outer-B-candidates 33.6581838130951
start init-outer-I-candidates 33.6587679386139
start init-H-candidates 33.659117937088
start init-V-candidates 33.6611759662628
start init-P-candidates 33.663074016571
start init-inner-I-candidates 33.6662139892578
start init-inner-N-and-B-candidates 33.6674718856812
start solution 33.6740820407867
entering BRT
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-2-in-se-corner ==> Vr6c8 = 1, Hr8c6 = 1
w[1]-diagonal-3s-in-{r1c7...r2c6} ==> Vr2c6 = 1, Hr3c6 = 1, Vr3c6 = 0, Hr3c5 = 0
w[1]-diagonal-3s-in-{r1c5...r2c6} ==> Vr2c7 = 1, Vr1c5 = 1, Hr1c5 = 1, Vr3c7 = 0, Hr3c7 = 0, Hr1c4 = 0
w[1]-diagonal-3-2-3-in-{r4c4...r6c6} ==> Vr6c7 = 1, Vr4c4 = 1, Hr7c6 = 1, Hr4c4 = 1, Vr7c7 = 0, Vr3c4 = 0, Hr7c7 = 0, Hr4c3 = 0
w[1]-2-in-r7c7-open-nw-corner ==> Hr8c7 = 1, Vr7c8 = 1
w[1]-3-in-r3c4-hit-by-verti-line-at-sw ==> Vr3c5 = 1, Hr3c4 = 1
w[1]-2-in-r4c5-open-nw-corner ==> Hr5c5 = 1, Vr4c6 = 1, Hr5c6 = 0, Vr5c6 = 0
w[1]-diagonal-3-2-in-{r4c4...r5c5}-non-closed-se-corner ==> Hr6c5 = 1
w[1]-3+diagonal-2-isolated-end-in-{r4c4+r4c5...se} ==> Hr5c4 = 1, Vr5c5 = 0, Vr5c4 = 0, Hr5c3 = 0
w[1]-3-in-r1c7-hit-by-verti-line-at-sw ==> Hr2c6 = 0
w[1]-adjacent-1-3-on-edge-in-r7{c4 c3} ==> Vr7c5 = 0, Hr8c3 = 1, Hr7c4 = 0
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
w[1]-3-in-r3c4-closed-se-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
w[1]-3-in-r3c4-closed-ne-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
w[1]-3-in-r2c6-closed-sw-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
w[1]-3-in-r2c6-closed-se-corner ==> Pr2c6 ≠ se, Pr2c6 ≠ nw, Pr2c6 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
P-single: Pr8c7 = ew
P-single: Pr8c8 = nw
entering level Loop with <Fact-49290>
entering level Col with <Fact-49376>
vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
horizontal-line-{r6 r7}c6 ==> Ir6c6 = out
vertical-line-r6{c6 c7} ==> Ir6c7 = in
vertical-line-r1{c7 c8} ==> Ir1c7 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
horizontal-line-{r7 r8}c3 ==> Ir7c3 = in
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
vertical-line-r1{c4 c5} ==> Ir1c4 = out
Starting_init_links_with_<Fact-49386>
1283 candidates, 4327 csp-links and 17193 links. Density = 2.09%
starting non trivial part of solution
Entering_level_W1_with_<Fact-92431>
whip[1]: Pr8c8{nw .} ==> Br7c7 ≠ nw, Br8c7 ≠ o
B-single: Br8c7 = n
B-single: Br7c7 = se
P-single: Pr7c8 = ns
whip[1]: Pr7c8{ns .} ==> Br6c7 ≠ n, Br6c7 ≠ o, Br6c7 ≠ s, Br6c7 ≠ w, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes
whip[1]: Br6c7{wne .} ==> Pr6c8 ≠ o, Pr6c8 ≠ nw, Nr6c7 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ esw, Br5c7 ≠ nes, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{wne .} ==> Nr5c7 ≠ 0
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ ew, Br8c6 ≠ o, Br7c6 ≠ ne, Br7c6 ≠ nw, Br7c6 ≠ se
B-single: Br8c6 = n
whip[1]: Pr8c6{ew .} ==> Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ esw, Br7c5 ≠ nes, Br7c5 ≠ o, Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Br7c5{wne .} ==> Nr7c5 ≠ 0
whip[1]: Hr7c4{0 .} ==> Br7c4 ≠ n, Pr7c4 ≠ ne, Pr7c4 ≠ se, Pr7c4 ≠ ew, Pr7c5 ≠ nw, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Br6c4 ≠ s, Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn, Br6c4 ≠ nes
whip[1]: Br7c4{w .} ==> Pr8c4 ≠ ne, Pr8c5 ≠ nw
whip[1]: Pr8c5{ew .} ==> Br7c5 ≠ ew, Br7c5 ≠ wne
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ wne
whip[1]: Br7c3{nes .} ==> Pr8c3 ≠ o, Pr8c3 ≠ nw, Pr8c4 ≠ o, Pr7c3 ≠ o, Pr7c3 ≠ nw, Pr7c4 ≠ o
w[1]-1-in-r7c4-asymmetric-sw-corner ==> Pr7c5 ≠ se, Pr7c5 ≠ ns
whip[1]: Pr7c5{ne .} ==> Br6c5 ≠ s, Br6c5 ≠ w, Br6c5 ≠ ns, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ wne, Br6c5 ≠ nes, Br7c4 ≠ e, Br7c5 ≠ sw, Br7c5 ≠ swn
whip[1]: Br7c5{ns .} ==> Pr8c5 ≠ ne, Nr7c5 ≠ 3
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ esw, Br6c1 ≠ nes, Br7c2 ≠ nw, Br7c2 ≠ se, Br6c1 ≠ o, Br6c1 ≠ n, Br6c1 ≠ w
whip[1]: Br6c1{wne .} ==> Nr6c1 ≠ 0
whip[1]: Pr7c4{sw .} ==> Br6c3 ≠ nw
whip[1]: Br6c3{sw .} ==> Pr6c3 ≠ se
whip[1]: Pr7c3{sw .} ==> Br6c2 ≠ se, Br6c2 ≠ esw, Br6c2 ≠ nes
whip[1]: Pr8c4{ew .} ==> Br8c3 ≠ o
B-single: Br8c3 = n
whip[1]: Hr2c6{0 .} ==> Br2c6 ≠ nes, Pr2c6 ≠ ne, Pr2c6 ≠ ew, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Br1c6 ≠ s, Br1c6 ≠ ns, Br1c6 ≠ se, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c6 ≠ nes, Br2c6 ≠ swn, Br2c6 ≠ wne
B-single: Br2c6 = esw
P-single: Pr3c6 = ne
P-single: Pr3c7 = nw
whip[1]: Pr3c6{ne .} ==> Br3c6 ≠ o, Br3c5 ≠ n, Br2c5 ≠ n, Br2c5 ≠ o, Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ nes, Br3c5 ≠ e, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c6 ≠ e, Br3c6 ≠ s, Br3c6 ≠ w, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ wne
whip[1]: Br3c6{nes .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ nw, Nr3c6 ≠ 0
whip[1]: Pr4c6{ew .} ==> Hr4c6 ≠ 0, Br4c5 ≠ sw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br3c6 ≠ n, Br3c6 ≠ ne, Br4c5 ≠ ne, Br4c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w
H-single: Hr4c6 = 1
whip[1]: Hr4c6{1 .} ==> Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ se
whip[1]: Pr4c7{sw .} ==> Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ swn, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 1
whip[1]: Br3c5{sw .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ se, Pr3c5 ≠ ew, Nr3c5 ≠ 3
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0
whip[1]: Pr3c7{nw .} ==> Br3c7 ≠ n, Br2c7 ≠ s, Br2c7 ≠ e, Br2c7 ≠ n, Br2c7 ≠ o, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ se, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ nes, Br3c6 ≠ nes, Br3c7 ≠ w, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ ew, Br3c7 ≠ wne, Br3c7 ≠ nes
B-single: Br3c6 = ns
N-single: Nr3c6 = 2
whip[1]: Pr4c7{sw .} ==> Br4c7 ≠ se, Br4c7 ≠ o, Br4c7 ≠ e, Br4c7 ≠ s
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Br3c7{se .} ==> Pr3c8 ≠ nw, Pr3c8 ≠ sw, Nr3c7 ≠ 3
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 0
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ esw, Br1c5 ≠ nes
whip[1]: Br1c5{wne .} ==> Pr1c5 ≠ o, Pr1c5 ≠ ew, Pr1c5 ≠ sw, Pr1c6 ≠ o, Pr1c6 ≠ se, Pr2c5 ≠ o, Pr2c5 ≠ se, Pr2c5 ≠ ew, Pr2c5 ≠ sw
P-single: Pr1c5 = se
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ w, Br1c4 ≠ s, Br1c4 ≠ n, Br1c4 ≠ o, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ nw, Br1c4 ≠ sw, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes
whip[1]: Br1c4{esw .} ==> Pr1c4 ≠ se, Pr1c4 ≠ ew, Nr1c4 ≠ 0
w[1]-3-in-r1c3-symmetric-ne-corner ==> Vr1c4 = 1, Hr1c3 = 1
w[1]-3-in-r1c3-closed-ne-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
whip[1]: Vr1c4{1 .} ==> Pr1c4 ≠ o, Pr2c4 ≠ o, Pr2c4 ≠ se, Pr2c4 ≠ ew, Pr2c4 ≠ sw, Br1c3 ≠ swn, Br1c4 ≠ e, Br1c4 ≠ se
P-single: Pr1c4 = sw
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ esw
whip[1]: Br1c3{nes .} ==> Pr1c3 ≠ o, Pr1c3 ≠ sw
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ sw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c2 ≠ o, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ne
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Br1c4{esw .} ==> Nr1c4 ≠ 1
whip[1]: Pr2c4{nw .} ==> Br2c3 ≠ ne, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ nw, Br2c4 ≠ swn, Br2c4 ≠ wne
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ sw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c2 ≠ o, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ ne
whip[1]: Br2c2{swn .} ==> Nr2c2 ≠ 0
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ ne, Br2c4 ≠ nes, Br2c5 ≠ wne
whip[1]: Br2c5{ew .} ==> Nr2c5 ≠ 3
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ wne, Br1c6 ≠ o, Br1c6 ≠ e
whip[1]: Br1c6{ew .} ==> Nr1c6 ≠ 0, Nr1c6 ≠ 3
whip[1]: Hr5c3{0 .} ==> Br5c3 ≠ nes, Pr5c3 ≠ ne, Pr5c3 ≠ se, Pr5c3 ≠ ew, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Br4c3 ≠ s, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ nes, Br5c3 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Vr5c4{0 .} ==> Br5c4 ≠ wne, Pr5c4 ≠ ns, Pr5c4 ≠ se, Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr6c4 ≠ nw, Br5c3 ≠ e, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ esw, Br5c4 ≠ w, Br5c4 ≠ nw, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn
whip[1]: Br5c3{sw .} ==> Nr5c3 ≠ 3
whip[1]: Pr5c4{ne .} ==> Br4c4 ≠ wne, Br4c4 ≠ nes
whip[1]: Br4c4{swn .} ==> Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr5c4 ≠ o, Pr5c5 ≠ ns
P-single: Pr5c5 = ew
P-single: Pr5c4 = ne
whip[1]: Pr5c5{ew .} ==> Br5c4 ≠ ne, Br5c4 ≠ s, Br5c4 ≠ e, Br5c4 ≠ o, Br4c4 ≠ esw, Br4c5 ≠ nw, Br4c5 ≠ ew, Br5c4 ≠ se, Br5c4 ≠ nes, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ sw
B-single: Br4c4 = swn
P-single: Pr4c4 = se
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ w, Br4c3 ≠ n, Br4c3 ≠ o, Br3c3 ≠ s, Br3c3 ≠ e, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ wne
B-single: Br3c4 = nes
P-single: Pr5c6 = nw
P-single: Pr3c5 = sw
P-single: Pr4c5 = nw
whip[1]: Pr5c6{nw .} ==> Br5c6 ≠ n, Br4c6 ≠ n, Br4c5 ≠ ns, Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ swn, Br4c6 ≠ nes, Br5c5 ≠ ne, Br5c6 ≠ w, Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ nw, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes
B-single: Br5c5 = ns
B-single: Br4c5 = se
P-single: Pr4c6 = se
whip[1]: Pr4c6{se .} ==> Br3c5 ≠ s, Br3c5 ≠ sw
whip[1]: Br3c5{w .} ==> Nr3c5 ≠ 2
whip[1]: Pr6c5{ew .} ==> Br6c4 ≠ wne, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c4 ≠ o, Br6c4 ≠ w, Br6c4 ≠ ne, Br6c5 ≠ o, Br6c5 ≠ e
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 0
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 0, Nr6c4 ≠ 3
whip[1]: Pr6c6{sw .} ==> Br6c6 ≠ swn, Br6c6 ≠ wne
whip[1]: Br6c6{nes .} ==> Pr6c7 ≠ o, Pr6c7 ≠ ne, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr7c6 ≠ ns, Pr7c6 ≠ sw, Pr7c7 ≠ o
P-single: Pr8c6 = ew
H-single: Hr8c5 = 1
V-single: Vr7c6 = 0
P-single: Pr7c7 = nw
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
w[1]-3-in-r7c3-hit-by-horiz-line-at-se ==> Vr7c3 = 1, Hr7c3 = 1
w[1]-3-in-r7c3-closed-nw-corner ==> Pr8c4 ≠ nw
w[1]-3-in-r7c3-closed-sw-corner ==> Pr7c4 ≠ sw
P-single: Pr8c4 = ew
V-single: Vr7c4 = 0
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
different-colours-in-r6{c3 c4} ==> Hr6c4 = 1
whip[1]: Pr8c6{ew .} ==> Br7c5 ≠ ne, Br7c5 ≠ e, Br8c5 ≠ o, Br7c6 ≠ sw
B-single: Br7c6 = ns
B-single: Br8c5 = n
P-single: Pr8c5 = ew
w[1]-1-in-r7c4-asymmetric-se-corner ==> Pr7c4 ≠ ns
P-single: Pr7c4 = nw
whip[1]: Pr8c5{ew .} ==> Br7c4 ≠ w, Br8c4 ≠ o
B-single: Br8c4 = n
B-single: Br7c4 = s
whip[1]: Pr7c4{nw .} ==> Br6c4 ≠ e, Br6c4 ≠ n, Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ ew, Br6c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ nes
B-single: Br7c3 = swn
P-single: Pr8c3 = ne
P-single: Pr7c3 = se
B-single: Br6c3 = se
H-single: Hr6c3 = 0
P-single: Pr6c4 = se
H-single: Hr6c4 = 1
horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
no-vertical-line-r5{c3 c4} ==> Ir5c3 = out
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
no-vertical-line-r3{c3 c4} ==> Ir3c4 = out
vertical-line-r3{c4 c5} ==> Ir3c5 = in
no-vertical-line-r3{c5 c6} ==> Ir3c6 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = in
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
vertical-line-r2{c6 c7} ==> Ir2c6 = out
no-horizontal-line-{r1 r2}c6 ==> Ir1c6 = out
vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-vertical-line-r2{c4 c5} ==> Ir2c4 = in
horizontal-line-{r3 r4}c6 ==> Ir4c6 = out
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = out
no-vertical-line-r5{c5 c6} ==> Ir5c5 = out
horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
horizontal-line-{r5 r6}c5 ==> Ir6c5 = in
same-colour-in-{r6 r7}c5 ==> Hr7c5 = 0
w[1]-3-in-r6c6-isolated-at-sw-corner ==> Vr6c6 = 1
w[1]-3-in-r6c6-closed-sw-corner ==> Pr6c7 ≠ sw

LOOP[16]: Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c4-Hr6c5-Vr6c6-Hr7c6-Vr6c7- ==> Hr6c7 = 0
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-r5{c6 c7} ==> Hr5c7 = 1

LOOP[18]: Vr5c7-Vr6c7-Hr7c6-Vr6c6-Hr6c5-Hr6c4-Vr6c4-Hr7c3-Vr7c3-Hr8c3-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8- ==> Hr5c7 = 0
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
same-colour-in-r6{c4 c5} ==> Vr6c5 = 0
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-se ==> Vr1c3 = 1
w[1]-3-in-r1c5-hit-by-horiz-line-at-sw ==> Vr1c6 = 1
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ ne
w[1]-3-in-r1c3-closed-nw-corner ==> Pr2c4 ≠ nw
no-horizontal-line-{r0 r1}c2 ==> Ir1c2 = out
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne, Pr2c1 ≠ o
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1
w[1]-3-in-r2c6-hit-by-verti-line-at-ne ==> Hr2c7 = 0
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ o
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1

LOOP[44]: Hr3c3-Hr3c4-Vr3c5-Hr4c4-Vr4c4-Hr5c4-Hr5c5-Vr4c6-Hr4c6-Vr4c7-Vr5c7-Vr6c7-Hr7c6-Vr6c6-Hr6c5-Hr6c4-Vr6c4-Hr7c3-Vr7c3-Hr8c3-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Vr1c7-Vr2c7-Hr3c6-Vr2c6-Vr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Vr1c3- ==> Vr2c3 = 0
w[0]-adjacent-3-in-r1c3-nolines-south ==> Hr2c2 = 1
w[1]-2-in-r2c1-open-ne-corner ==> Hr3c1 = 1, Vr2c1 = 1, Vr3c1 = 0
P-single: Pr2c1 = ns

LOOP[50]: Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Vr1c6-Vr2c6-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c4-Hr6c5-Vr6c6-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Vr3c5-Hr3c4-Hr3c3- ==> Hr3c2 = 0
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
different-colours-in-r3{c2 c3} ==> Hr3c3 = 1
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1

LOOP[52]: Vr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Vr1c6-Vr2c6-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c4-Hr6c5-Vr6c6-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Vr3c5-Hr3c4-Hr3c3-Vr3c3- ==> Hr4c2 = 0
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
whip[1]: Pr8c3{ne .} ==> Br8c2 ≠ n, Br7c2 ≠ ns, Br7c2 ≠ sw
B-single: Br8c2 = o
P-single: Pr8c2 = nw
H-single: Hr8c1 = 1
V-single: Vr7c2 = 1
vertical-line-r7{c1 c2} ==> Ir7c1 = in
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
whip[1]: Pr8c2{nw .} ==> Br7c1 ≠ e, Br7c1 ≠ n, Br7c1 ≠ o, Br8c1 ≠ o, Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ swn, Br7c2 ≠ ne
B-single: Br7c2 = ew
B-single: Br7c1 = esw
H-single: Hr7c1 = 0
N-single: Nr7c1 = 3
P-single: Pr8c1 = ne
P-single: Pr7c1 = ns
V-single: Vr6c1 = 1
P-single: Pr7c2 = ns
V-single: Vr6c2 = 1
B-single: Br8c1 = n

LOOP[6]: Vr6c2-Vr7c2-Hr8c1-Vr7c1-Vr6c1- ==> Hr6c1 = 0
vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
whip[1]: Hr7c1{0 .} ==> Br6c1 ≠ s, Br6c1 ≠ ns, Br6c1 ≠ sw, Br6c1 ≠ swn
whip[1]: Br6c1{wne .} ==> Pr6c2 ≠ o, Pr6c2 ≠ ne, Pr6c2 ≠ nw, Pr6c2 ≠ ew
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ se, Br5c1 ≠ esw, Br5c1 ≠ nes, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ s, Br6c2 ≠ ne, Br6c2 ≠ ns
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 0
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ e, Br6c1 ≠ ne
whip[1]: Br6c1{wne .} ==> Pr6c1 ≠ o, Pr6c1 ≠ ne, Nr6c1 ≠ 1
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ sw, Br5c1 ≠ swn, Br5c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ e
whip[1]: Br5c1{wne .} ==> Nr5c1 ≠ 0
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Pr7c2{ns .} ==> Br6c2 ≠ sw, Br6c2 ≠ swn
whip[1]: Hr6c1{0 .} ==> Pr6c1 ≠ se, Pr6c2 ≠ sw, Br5c1 ≠ s, Br5c1 ≠ ns, Br6c1 ≠ wne
P-single: Pr6c1 = ns
B-single: Br6c1 = ew
N-single: Nr6c1 = 2
whip[1]: Br5c1{wne .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ne
whip[1]: Pr5c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Pr6c2{se .} ==> Br5c2 ≠ ne, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Pr7c3{se .} ==> Br6c2 ≠ ew, Br6c2 ≠ wne
whip[1]: Br6c2{nw .} ==> Nr6c2 ≠ 3
whip[1]: Hr6c3{0 .} ==> Br5c3 ≠ s, Br5c3 ≠ sw
whip[1]: Br5c3{w .} ==> Nr5c3 ≠ 2
whip[1]: Pr6c4{se .} ==> Br5c4 ≠ n, Br6c4 ≠ ew
B-single: Br6c4 = nw
N-single: Nr6c4 = 2
P-single: Pr6c5 = ew
P-single: Pr7c5 = o
B-single: Br5c4 = ns
N-single: Nr5c4 = 2
whip[1]: Pr6c5{ew .} ==> Br6c5 ≠ swn
whip[1]: Br6c5{ne .} ==> Nr6c5 ≠ 3, Pr7c6 ≠ ew
P-single: Pr7c6 = ne
whip[1]: Pr7c6{ne .} ==> Br6c5 ≠ n, Br6c6 ≠ nes, Br7c5 ≠ ns
B-single: Br7c5 = s
N-single: Nr7c5 = 1
B-single: Br6c6 = esw
P-single: Pr6c6 = sw
B-single: Br6c5 = ne
N-single: Nr6c5 = 2
whip[1]: Pr6c6{sw .} ==> Br5c6 ≠ s, Br5c6 ≠ se
whip[1]: Br5c6{e .} ==> Nr5c6 ≠ 2, Pr5c7 ≠ nw, Pr5c7 ≠ ew, Pr5c7 ≠ sw, Nr5c6 ≠ 3
whip[1]: Hr6c7{0 .} ==> Pr6c8 ≠ sw, Pr6c7 ≠ se, Br5c7 ≠ s, Br5c7 ≠ ns, Br5c7 ≠ sw, Br5c7 ≠ swn, Br6c7 ≠ ne, Br6c7 ≠ wne
P-single: Pr6c7 = ns
P-single: Pr6c8 = ns
whip[1]: Pr6c7{ns .} ==> Br6c7 ≠ e, Br5c7 ≠ e, Br5c6 ≠ o, Br5c7 ≠ ne
B-single: Br5c6 = e
N-single: Nr5c6 = 1
B-single: Br6c7 = ew
N-single: Nr6c7 = 2
whip[1]: Pr5c7{se .} ==> Br4c7 ≠ ne, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ n
whip[1]: Br5c7{wne .} ==> Pr5c8 ≠ o, Pr5c8 ≠ nw, Nr5c7 ≠ 1
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ nes, Br4c7 ≠ w
whip[1]: Br4c7{ew .} ==> Pr4c8 ≠ o, Pr4c8 ≠ sw, Nr4c7 ≠ 1, Nr4c7 ≠ 3
N-single: Nr4c7 = 2
whip[1]: Pr4c8{nw .} ==> Br3c7 ≠ o, Br3c7 ≠ s
whip[1]: Br3c7{se .} ==> Pr3c8 ≠ o, Nr3c7 ≠ 0
P-single: Pr3c8 = ns
whip[1]: Pr3c8{ns .} ==> Br2c7 ≠ w, Br2c7 ≠ nw
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 1
whip[1]: Vr5c8{1 .} ==> Br5c8 ≠ o
B-single: Br5c8 = w
whip[1]: Hr5c7{0 .} ==> Pr5c8 ≠ sw, Pr5c7 ≠ se, Br4c7 ≠ ns, Br5c7 ≠ wne
P-single: Pr5c7 = ns
P-single: Pr5c8 = ns
B-single: Br5c7 = ew
N-single: Nr5c7 = 2
B-single: Br4c7 = ew
P-single: Pr4c8 = ns
P-single: Pr4c7 = sw
whip[1]: Pr5c7{ns .} ==> Br4c6 ≠ nw
B-single: Br4c6 = wne
N-single: Nr4c6 = 3
whip[1]: Pr4c8{ns .} ==> Br3c7 ≠ se
B-single: Br3c7 = e
N-single: Nr3c7 = 1
whip[1]: Vr4c8{1 .} ==> Br4c8 ≠ o
B-single: Br4c8 = w
whip[1]: Hr2c4{1 .} ==> Br2c4 ≠ o, Pr2c4 ≠ ns, Pr2c5 ≠ ns, Br1c4 ≠ ew, Br2c4 ≠ e, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw
P-single: Pr2c5 = nw
P-single: Pr2c4 = ne
B-single: Br1c4 = esw
N-single: Nr1c4 = 3
whip[1]: Pr2c5{nw .} ==> Br1c5 ≠ swn, Br2c5 ≠ ne, Br2c5 ≠ ew
B-single: Br2c5 = e
N-single: Nr2c5 = 1
P-single: Pr2c6 = ns
B-single: Br1c5 = wne
P-single: Pr1c6 = sw
whip[1]: Pr2c6{ns .} ==> Br1c6 ≠ n, Br1c6 ≠ ne
whip[1]: Br1c6{ew .} ==> Pr1c7 ≠ ew, Pr1c7 ≠ sw
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ nes
B-single: Br1c7 = wne
P-single: Pr1c8 = sw
P-single: Pr1c7 = se
P-single: Pr2c8 = ns
P-single: Pr2c7 = ns
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ w
B-single: Br1c6 = ew
N-single: Nr1c6 = 2
whip[1]: Pr2c8{ns .} ==> Br2c7 ≠ wne
B-single: Br2c7 = ew
N-single: Nr2c7 = 2
whip[1]: Pr2c4{ne .} ==> Br2c3 ≠ n, Br1c3 ≠ nes, Br2c3 ≠ e, Br2c3 ≠ ns, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ esw, Br2c3 ≠ swn
B-single: Br1c3 = wne
P-single: Pr1c3 = se
whip[1]: Pr1c3{se .} ==> Br1c2 ≠ n, Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ swn
whip[1]: Br1c2{esw .} ==> Pr1c2 ≠ se, Pr1c2 ≠ ew
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ swn
B-single: Br1c1 = wne
P-single: Pr1c1 = se
P-single: Pr1c2 = sw
whip[1]: Pr1c2{sw .} ==> Br1c2 ≠ e, Br1c2 ≠ se
whip[1]: Br1c2{esw .} ==> Nr1c2 ≠ 1
whip[1]: Pr2c2{ns .} ==> Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ e
whip[1]: Br2c3{sw .} ==> Pr3c4 ≠ ne, Nr2c3 ≠ 3
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br3c3 ≠ w, Br3c3 ≠ o, Br2c4 ≠ n, Br2c3 ≠ w, Br2c3 ≠ o
B-single: Br2c4 = ns
N-single: Nr2c4 = 2
whip[1]: Br2c3{sw .} ==> Pr3c3 ≠ o, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Pr3c3 ≠ sw, Nr2c3 ≠ 0
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c2 ≠ ne
whip[1]: Br2c2{ew .} ==> Nr2c2 ≠ 3
whip[1]: Br3c3{nw .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ se, Pr4c3 ≠ ew, Nr3c3 ≠ 0, Nr3c3 ≠ 3
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Vr2c8{1 .} ==> Br2c8 ≠ o
B-single: Br2c8 = w
whip[1]: Vr3c8{1 .} ==> Br3c8 ≠ o
B-single: Br3c8 = w
whip[1]: Vr2c3{0 .} ==> Pr2c3 ≠ ns, Pr3c3 ≠ ne, Br2c2 ≠ ew, Br2c3 ≠ sw
P-single: Pr2c3 = nw
B-single: Br2c3 = s
N-single: Nr2c3 = 1
whip[1]: Pr2c3{nw .} ==> Br1c2 ≠ ew
B-single: Br1c2 = esw
N-single: Nr1c2 = 3
P-single: Pr3c1 = ne
P-single: Pr2c2 = ne
whip[1]: Pr3c1{ne .} ==> Br2c1 ≠ se, Br2c1 ≠ ew, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ sw
B-single: Br2c1 = sw
whip[1]: Pr3c2{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ o, Br3c2 ≠ e, Br3c2 ≠ s
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 0
whip[1]: Br3c1{ns .} ==> Pr4c1 ≠ ns
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ nes, Br4c1 ≠ w
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ sw, Br3c2 ≠ w
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Hr3c2{0 .} ==> Pr3c2 ≠ ew, Pr3c3 ≠ ew, Br2c2 ≠ ns, Br3c2 ≠ n, Br3c2 ≠ ns
P-single: Pr4c1 = o
H-single: Hr4c1 = 0
V-single: Vr4c1 = 0
P-single: Pr3c3 = se
P-single: Pr3c2 = sw
B-single: Br2c2 = n
N-single: Nr2c2 = 1
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1

LOOP[54]: Vr4c2-Vr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Vr1c6-Vr2c6-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c4-Hr6c5-Vr6c6-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Vr4c3- ==> Hr5c2 = 0
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1

LOOP[62]: Vr4c2-Vr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Vr1c6-Vr2c6-Hr3c6-Vr2c7-Vr1c7-Hr1c7-Vr1c8-Vr2c8-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Vr7c3-Hr7c3-Vr6c4-Hr6c4-Hr6c5-Vr6c6-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4-Vr3c5-Hr3c4-Hr3c3-Vr3c3-Vr4c3-Vr5c3-Hr6c2-Vr6c2-Vr7c2-Hr8c1-Vr7c1-Vr6c1-Vr5c1- ==> Hr5c1 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXOXOX
XXXXXOX
OXOOXXX
OXOXXOX
XXOOOOX
XOOXXOX
XOXXXXX

.———.   .———.   .———.   .———.
| 3 |   | 3 |   | 3 |   | 3 |
.   .———.   .———.   .   .   .
| 2                 | 3 |   |
.———.   .———.———.   .———.   .
  2 |   |     3 |           |
.   .   .   .———.   .———.   .
    |   |   | 3   2 |   |   |
.———.   .   .———.———.   .   .
|       |         2     |   |
.   .———.   .———.———.   .   .
|   |     2 |       | 3 |   |
.   .   .———.   .   .———.   .
|   | 2 | 3   1       2   2 |
.———.   .———.———.———.———.———.

init-time = 33.67s, solve-time = 24.17s, total-time = 57.84s
nb-facts=<Fact-97163>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
