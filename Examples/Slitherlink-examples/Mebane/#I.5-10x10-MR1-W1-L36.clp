Mellon rating = 1


(solve 
10 10 
1 2 1 1 1 2 1 1 1 1 
1 . . . . . . . . 2
1 . 2 1 2 2 1 0 . 1 
1 . 1 . . . . 1 . 3 
1 . 1 . 1 0 . 2 . 2
1 . 2 . 2 1 . 2 . 2 
2 . 1 . . . . 2 . 1
1 . 0 1 1 2 1 2 . 1 
2 . . . . . . . . 1
1 1 1 1 3 3 2 1 1 2 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 2 1 1 1 2 1 1 1 1
1 . . . . . . . . 2
1 . 2 1 2 2 1 0 . 1
1 . 1 . . . . 1 . 3
1 . 1 . 1 0 . 2 . 2
1 . 2 . 2 1 . 2 . 2
2 . 1 . . . . 2 . 1
1 . 0 1 1 2 1 2 . 1
2 . . . . . . . . 1
1 1 1 1 3 3 2 1 1 2

start init-grid-structure 0.0286500453948975
start create-csp-variables
start create-labels 0.00172209739685059
start init-physical-csp-links 0.0136220455169678
start init-physical-non-csp-links 11.9898209571838
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.29671788215637
     start init-physical-BN-non-csp-links at local time 12.4075880050659
     start init-physical-BP-non-csp-links at local time 22.4130721092224
     end init-physical-BP-non-csp-links at local time 301.077495098114
end init-physical-non-csp-links 313.067361116409
start init-corner-B-c-values 313.096288919449
start init-outer-B-candidates 313.09636092186
start init-outer-I-candidates 313.097167015076
start init-H-candidates 313.097627878189
start init-V-candidates 313.102833986282
start init-P-candidates 313.107852935791
start init-inner-I-candidates 313.115689992905
start init-inner-N-and-B-candidates 313.118201971054
start solution 313.129956007004
entering BRT
w[0]-0-in-r8c3 ==> Hr9c3 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr8c3 = 0
w[0]-0-in-r5c6 ==> Hr6c6 = 0, Hr5c6 = 0, Vr5c7 = 0, Vr5c6 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[1]-1-in-sw-corner ==> Vr10c1 = 0, Hr11c1 = 0
w[1]-1-in-ne-corner ==> Vr1c11 = 0, Hr1c10 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-adjacent-1-1-on-edge-in-r10{c8 c9} ==> Vr10c9 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c3 c4} ==> Vr10c4 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c2 c3} ==> Vr10c3 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c1 c2} ==> Vr10c2 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c9 c10} ==> Vr1c10 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c8 c9} ==> Vr1c9 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c7 c8} ==> Vr1c8 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c4 c5} ==> Vr1c5 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c3 c4} ==> Vr1c4 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r8 r9} ==> Hr9c10 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r7 r8} ==> Hr8c10 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r5 r6} ==> Hr6c1 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r4 r5} ==> Hr5c1 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r3 r4} ==> Hr4c1 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r2 r3} ==> Hr3c1 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r1 r2} ==> Hr2c1 = 0
w[1]-adjacent-1-3-on-edge-in-r10{c4 c5} ==> Hr11c5 = 1, Hr10c4 = 0
w[1]-3-in-r10c6-hit-by-horiz-line-at-sw ==> Vr10c7 = 1, Hr10c6 = 1
w[1]-3-in-r10c5-hit-by-horiz-line-at-ne ==> Vr10c5 = 1, Vr9c6 = 0
w[1]-adjacent-1-3-on-edge-in-{r3 r4}c10 ==> Vr4c11 = 1, Vr3c10 = 0, Hr3c10 = 0
w[1]-3-in-r10c6-closed-ne-corner ==> Pr11c6 ≠ ne, Pr11c6 ≠ o
w[1]-3-in-r10c5-closed-sw-corner ==> Pr10c6 ≠ sw, Pr10c6 ≠ ne, Pr10c6 ≠ o
w[3]-diagonal-1-1-in-se-corner ==> Vr10c10 = 0, Hr10c10 = 0
w[1]-2-in-r10c10-open-nw-corner ==> Hr11c10 = 1, Vr10c11 = 1
adjacent-3s-in-r10{c5 c6} ==> Vr10c6 = 1
w[1]-3-in-r10c5-closed-se-corner ==> Pr10c5 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ o
w[1]-3-in-r10c6-closed-nw-corner ==> Pr11c7 ≠ nw
P-single: Pr11c11 = nw
w[1]-1-in-r10c1-symmetric-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-1-in-r1c10-symmetric-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne
w[1]-1-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
entering level Loop with <Fact-92775>
entering level Col with <Fact-92855>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-vertical-line-r10{c9 c10} ==> Ir10c9 = in
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = in
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = in
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
vertical-line-r4{c10 c11} ==> Ir4c10 = in
no-vertical-line-r1{c10 c11} ==> Ir1c10 = out
no-vertical-line-r1{c9 c10} ==> Ir1c9 = out
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
no-vertical-line-r1{c7 c8} ==> Ir1c7 = out
no-vertical-line-r10{c0 c1} ==> Ir10c1 = out
no-vertical-line-r10{c1 c2} ==> Ir10c2 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
no-vertical-line-r10{c3 c4} ==> Ir10c4 = out
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = out
vertical-line-r10{c4 c5} ==> Ir10c5 = in
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = in
no-vertical-line-r9{c5 c6} ==> Ir9c6 = in
no-vertical-line-r9{c6 c7} ==> Ir9c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = out
no-horizontal-line-{r5 r6}c1 ==> Ir6c1 = out
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
same-colour-in-r5{c0 c1} ==> Vr5c1 = 0
same-colour-in-r4{c0 c1} ==> Vr4c1 = 0
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
w[1]-2-in-r10c7-open-ne-corner ==> Hr11c7 = 1
different-colours-in-r9{c4 c5} ==> Hr9c5 = 1
same-colour-in-{r10 r11}c3 ==> Hr11c3 = 0
same-colour-in-{r10 r11}c2 ==> Hr11c2 = 0
same-colour-in-{r0 r1}c7 ==> Hr1c7 = 0
same-colour-in-{r0 r1}c8 ==> Hr1c8 = 0
same-colour-in-{r0 r1}c9 ==> Hr1c9 = 0
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
Starting_init_links_with_<Fact-92989>
2237 candidates, 6661 csp-links and 28154 links. Density = 1.13%
starting non trivial part of solution
Entering_level_W1_with_<Fact-162624>
whip[1]: Hr11c8{1 .} ==> Br10c8 ≠ w, Br11c8 ≠ o, Pr11c9 ≠ o, Pr11c9 ≠ ne, Br10c8 ≠ n, Br10c8 ≠ e
B-single: Br10c8 = s
H-single: Hr10c8 = 0
P-single: Pr11c8 = ew
P-single: Pr11c9 = ew
B-single: Br11c8 = n
w[1]-1-in-r10c9-asymmetric-sw-corner ==> Pr10c10 ≠ nw
P-single: Pr10c10 = o
H-single: Hr10c9 = 0
V-single: Vr9c10 = 0
w[1]-1-in-r9c10-symmetric-sw-corner ==> Pr9c11 ≠ sw, Pr9c11 ≠ o
no-vertical-line-r9{c9 c10} ==> Ir9c9 = in
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = in
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
same-colour-in-r9{c7 c8} ==> Vr9c8 = 0
whip[1]: Hr10c8{0 .} ==> Br9c8 ≠ s, Br9c8 ≠ ns, Br9c8 ≠ se, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c8 ≠ nes
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ ne, Br11c7 ≠ o, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ ew
B-single: Br11c7 = n
whip[1]: Pr11c9{ew .} ==> Br10c9 ≠ w, Br10c9 ≠ e, Br10c9 ≠ n, Br11c9 ≠ o
B-single: Br11c9 = n
B-single: Br10c9 = s
P-single: Pr11c10 = ew
P-single: Pr10c9 = o
whip[1]: Pr11c10{ew .} ==> Br11c10 ≠ o, Br10c10 ≠ nw
B-single: Br10c10 = se
P-single: Pr10c11 = ns
B-single: Br11c10 = n
w[1]-1-in-r9c10-asymmetric-se-corner ==> Pr9c10 ≠ sw, Pr9c10 ≠ ew, Pr9c10 ≠ ns, Pr9c10 ≠ ne
whip[1]: Pr10c11{ns .} ==> Br9c10 ≠ n, Br9c10 ≠ s, Br9c10 ≠ w
B-single: Br9c10 = e
P-single: Pr9c11 = ns
w[1]-1-in-r8c10-asymmetric-se-corner ==> Pr8c10 ≠ sw, Pr8c10 ≠ ew, Pr8c10 ≠ ns, Pr8c10 ≠ ne
whip[1]: Pr9c11{ns .} ==> Br8c10 ≠ n, Br8c10 ≠ s, Br8c10 ≠ w
B-single: Br8c10 = e
V-single: Vr8c10 = 0
P-single: Pr8c11 = ns
P-single: Pr9c10 = o
H-single: Hr9c9 = 0
w[1]-1-in-r7c10-asymmetric-se-corner ==> Pr7c10 ≠ sw, Pr7c10 ≠ ew, Pr7c10 ≠ ns, Pr7c10 ≠ ne
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
whip[1]: Vr8c10{0 .} ==> Br8c9 ≠ e, Br8c9 ≠ ne, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ esw, Br8c9 ≠ wne, Br8c9 ≠ nes
whip[1]: Pr8c11{ns .} ==> Br7c10 ≠ n, Br7c10 ≠ s, Br7c10 ≠ w
B-single: Br7c10 = e
H-single: Hr7c10 = 0
V-single: Vr7c10 = 0
P-single: Pr7c11 = ns
V-single: Vr6c11 = 1
P-single: Pr8c10 = o
H-single: Hr8c9 = 0
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
vertical-line-r6{c10 c11} ==> Ir6c10 = in
whip[1]: Hr7c10{0 .} ==> Br6c10 ≠ ns, Br6c10 ≠ se, Br6c10 ≠ sw
whip[1]: Vr7c10{0 .} ==> Br7c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes
whip[1]: Pr7c11{ns .} ==> Br6c10 ≠ nw
whip[1]: Br6c10{ew .} ==> Pr6c11 ≠ nw
whip[1]: Pr5c10{sw .} ==> Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ esw, Br4c9 ≠ nes, Br5c10 ≠ nw, Br5c10 ≠ se, Br4c9 ≠ o, Br4c9 ≠ n, Br4c9 ≠ w
whip[1]: Br4c9{wne .} ==> Nr4c9 ≠ 0
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Pr8c10{o .} ==> Br7c9 ≠ s, Br7c9 ≠ ns, Br7c9 ≠ sw, Br7c9 ≠ swn, Br8c9 ≠ n, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ swn
whip[1]: Br8c9{sw .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Nr8c9 ≠ 3
whip[1]: Br7c9{nw .} ==> Nr7c9 ≠ 3
whip[1]: Pr6c10{sw .} ==> Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ esw, Br5c9 ≠ nes, Br5c9 ≠ o, Br5c9 ≠ n, Br5c9 ≠ w
whip[1]: Br5c9{wne .} ==> Nr5c9 ≠ 0
whip[1]: Pr7c10{nw .} ==> Br6c9 ≠ ne, Br6c9 ≠ ns, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c9 ≠ e, Br6c9 ≠ s
whip[1]: Pr9c10{o .} ==> Br8c9 ≠ s, Br8c9 ≠ sw, Br9c9 ≠ n, Br9c9 ≠ e, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ wne, Br9c9 ≠ nes
whip[1]: Br9c9{sw .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ se, Pr9c9 ≠ ew, Nr9c9 ≠ 3
whip[1]: Br8c9{w .} ==> Nr8c9 ≠ 2
whip[1]: Pr10c9{o .} ==> Br9c8 ≠ e, Br9c8 ≠ ne, Br9c8 ≠ ew, Br9c8 ≠ wne, Br9c9 ≠ s, Br9c9 ≠ w, Br9c9 ≠ sw
B-single: Br9c9 = o
N-single: Nr9c9 = 0
whip[1]: Pr8c9{nw .} ==> Vr7c9 ≠ 0, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ sw, Br8c8 ≠ ne, Br8c8 ≠ sw, Br7c9 ≠ o, Br7c9 ≠ n
V-single: Vr7c9 = 1
vertical-line-r7{c8 c9} ==> Ir7c8 = out
whip[1]: Vr7c9{1 .} ==> Pr7c9 ≠ o, Pr7c9 ≠ ne, Pr7c9 ≠ nw, Pr7c9 ≠ ew
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ se, Br6c9 ≠ esw
whip[1]: Br6c8{sw .} ==> Pr6c8 ≠ o, Pr6c8 ≠ nw
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ se, Br5c7 ≠ esw, Br5c7 ≠ nes
whip[1]: Br7c9{nw .} ==> Nr7c9 ≠ 0
whip[1]: Br7c8{ew .} ==> Pr7c8 ≠ se
whip[1]: Pr9c8{ew .} ==> Br9c7 ≠ sw, Br9c7 ≠ wne, Br9c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ s, Br9c7 ≠ w, Br9c7 ≠ ne
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 0
whip[1]: Pr8c8{se .} ==> Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ swn, Br7c7 ≠ wne, Br8c8 ≠ ns, Br8c8 ≠ ew, Br7c7 ≠ e, Br7c7 ≠ s
whip[1]: Br9c8{nw .} ==> Nr9c8 ≠ 3
whip[1]: Vr9c8{0 .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ se, Pr10c8 ≠ nw, Br9c7 ≠ e, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c7 ≠ esw, Br9c8 ≠ w, Br9c8 ≠ nw
P-single: Pr11c7 = ne
P-single: Pr10c8 = o
whip[1]: Pr11c7{ne .} ==> Br11c6 ≠ n, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ nes, Br10c7 ≠ ns
B-single: Br10c7 = sw
B-single: Br10c6 = wne
P-single: Pr11c6 = nw
P-single: Pr10c6 = se
P-single: Pr10c7 = sw
B-single: Br11c6 = o
whip[1]: Pr11c6{nw .} ==> Br11c5 ≠ o, Br10c5 ≠ swn, Br10c5 ≠ wne
B-single: Br11c5 = n
w[1]-1-in-r10c4-asymmetric-se-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ew, Pr10c4 ≠ ns, Pr10c4 ≠ ne
whip[1]: Pr10c4{se .} ==> Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c3 ≠ e, Br9c3 ≠ s, Br10c4 ≠ n, Br10c4 ≠ w
whip[1]: Br10c4{s .} ==> Pr11c4 ≠ ne, Pr11c4 ≠ nw, Pr10c4 ≠ se, Pr10c5 ≠ ew, Pr10c5 ≠ sw
whip[1]: Pr10c5{ns .} ==> Br9c4 ≠ s, Br9c4 ≠ w, Br9c4 ≠ ns, Br9c4 ≠ nw, Br9c4 ≠ se, Br9c4 ≠ nes, Br9c5 ≠ s, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ se, Br9c5 ≠ nes, Br9c4 ≠ o, Br9c4 ≠ n, Br9c5 ≠ o, Br9c5 ≠ n, Br9c5 ≠ e
whip[1]: Br9c5{wne .} ==> Pr9c5 ≠ o, Pr9c5 ≠ ne, Pr9c5 ≠ nw, Pr9c5 ≠ ew, Nr9c5 ≠ 0
whip[1]: Br9c4{wne .} ==> Nr9c4 ≠ 0
whip[1]: Pr10c4{nw .} ==> Br10c3 ≠ e
whip[1]: Br10c3{w .} ==> Pr11c3 ≠ ne, Pr10c3 ≠ se
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ e
whip[1]: Br10c2{w .} ==> Pr11c2 ≠ ne, Pr11c3 ≠ nw, Pr10c3 ≠ ns, Pr10c2 ≠ se, Pr10c3 ≠ sw
whip[1]: Pr10c3{ew .} ==> Br10c3 ≠ w
whip[1]: Pr10c2{ew .} ==> Br9c1 ≠ nw, Br9c2 ≠ sw, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ e, Br9c2 ≠ ne
whip[1]: Br9c2{nes .} ==> Nr9c2 ≠ 0
whip[1]: Br9c1{sw .} ==> Pr9c1 ≠ se
whip[1]: Pr9c1{ns .} ==> Br8c1 ≠ s
whip[1]: Br8c1{w .} ==> Hr9c1 ≠ 1, Pr9c1 ≠ ne, Pr9c2 ≠ nw, Pr8c1 ≠ se, Pr8c2 ≠ sw, Pr9c2 ≠ ew, Pr9c2 ≠ sw
H-single: Hr9c1 = 0
whip[1]: Hr9c1{0 .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ e
B-single: Br10c1 = n
H-single: Hr10c1 = 1
P-single: Pr10c2 = ew
H-single: Hr10c2 = 1
V-single: Vr9c2 = 0
w[1]-2-in-r9c1-open-ne-corner ==> Vr9c1 = 1
P-single: Pr9c1 = ns
V-single: Vr8c1 = 1
P-single: Pr11c1 = o
P-single: Pr11c2 = o
P-single: Pr10c1 = ne
w[1]-1-in-r10c2-symmetric-sw-corner ==> Pr10c3 ≠ ne, Pr10c3 ≠ o
w[1]-1-in-r8c1-asymmetric-sw-corner ==> Pr8c2 ≠ ew, Pr8c2 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ ns
w[1]-1-in-r10c2-asymmetric-nw-corner ==> Pr11c3 ≠ ew
P-single: Pr11c3 = o
w[1]-1-in-r10c3-symmetric-sw-corner ==> Pr10c4 ≠ o
P-single: Pr10c4 = nw
H-single: Hr10c3 = 1
V-single: Vr9c4 = 1
vertical-line-r9{c3 c4} ==> Ir9c3 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = in
vertical-line-r8{c0 c1} ==> Ir8c1 = in
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = in
no-vertical-line-r9{c1 c2} ==> Ir9c2 = in
same-colour-in-r9{c2 c3} ==> Vr9c3 = 0
same-colour-in-{r8 r9}c2 ==> Hr9c2 = 0
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
different-colours-in-{r8 r9}c4 ==> Hr9c4 = 1
no-vertical-line-r8{c4 c5} ==> Ir8c5 = in
whip[1]: Hr10c1{1 .} ==> Br9c1 ≠ ew
whip[1]: Pr10c2{ew .} ==> Br10c2 ≠ w, Br10c2 ≠ s, Br9c2 ≠ w, Br9c1 ≠ se, Br9c2 ≠ nw, Br9c2 ≠ ew, Br9c2 ≠ wne
B-single: Br9c1 = sw
B-single: Br10c2 = n
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Pr9c1{ns .} ==> Br8c1 ≠ e, Br8c1 ≠ n
B-single: Br8c1 = w
H-single: Hr8c1 = 0
P-single: Pr8c1 = ns
V-single: Vr7c1 = 1
P-single: Pr9c2 = o
vertical-line-r7{c0 c1} ==> Ir7c1 = in
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
whip[1]: Hr8c1{0 .} ==> Br7c1 ≠ ns, Br7c1 ≠ se, Br7c1 ≠ sw
whip[1]: Pr8c1{ns .} ==> Br7c1 ≠ ne
whip[1]: Br7c1{ew .} ==> Pr7c1 ≠ ne
w[1]-1-in-r6c1-asymmetric-sw-corner ==> Pr6c2 ≠ ew, Pr6c2 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ ns
whip[1]: Pr6c2{sw .} ==> Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ wne, Br5c2 ≠ nes, Br6c2 ≠ nw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ ns, Br6c1 ≠ n, Br6c1 ≠ e
whip[1]: Br6c1{w .} ==> Vr6c2 ≠ 1, Pr6c1 ≠ ne, Pr7c2 ≠ ns, Pr7c2 ≠ nw, Pr6c1 ≠ se, Pr6c2 ≠ sw
V-single: Vr6c2 = 0
no-vertical-line-r6{c1 c2} ==> Ir6c2 = out
whip[1]: Vr6c2{0 .} ==> Br6c2 ≠ w, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw
whip[1]: Pr6c2{ne .} ==> Br5c1 ≠ s
whip[1]: Br5c1{w .} ==> Pr5c1 ≠ se, Pr5c2 ≠ sw
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ s
whip[1]: Br4c1{w .} ==> Pr5c1 ≠ ne, Pr5c2 ≠ nw, Pr4c1 ≠ se, Pr4c2 ≠ sw, Pr5c2 ≠ ew
whip[1]: Pr5c2{se .} ==> Br5c1 ≠ n
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ s
whip[1]: Br3c1{w .} ==> Pr4c1 ≠ ne, Pr4c2 ≠ nw, Pr3c1 ≠ se, Pr3c2 ≠ sw, Pr4c2 ≠ ew
whip[1]: Pr4c2{se .} ==> Br4c1 ≠ n
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ s
whip[1]: Br2c1{w .} ==> Pr3c1 ≠ ne, Pr3c2 ≠ nw, Pr2c1 ≠ se, Pr2c2 ≠ sw, Pr3c2 ≠ ew
whip[1]: Pr3c2{se .} ==> Br3c1 ≠ n
whip[1]: Pr2c2{ew .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ wne, Br1c2 ≠ ne, Br2c2 ≠ o, Br2c2 ≠ e, Br2c2 ≠ s
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Br1c2{sw .} ==> Pr1c3 ≠ sw
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ w
whip[1]: Br1c3{s .} ==> Vr1c3 ≠ 1, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Pr1c3 ≠ se, Pr1c4 ≠ sw, Pr2c3 ≠ nw, Pr2c4 ≠ nw
V-single: Vr1c3 = 0
whip[1]: Vr1c3{0 .} ==> Br1c2 ≠ se, Br1c2 ≠ ew
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ s
B-single: Br1c1 = e
V-single: Vr1c2 = 1
P-single: Pr2c2 = ns
H-single: Hr2c2 = 0
V-single: Vr2c2 = 1
w[1]-2-in-r1c2-open-se-corner ==> Hr1c2 = 1
P-single: Pr1c3 = ew
H-single: Hr1c3 = 1
P-single: Pr1c1 = o
P-single: Pr1c2 = se
P-single: Pr2c1 = o
w[1]-1-in-r2c1-symmetric-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ o
w[1]-1-in-r1c3-asymmetric-nw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ew, Pr2c4 ≠ ns, Pr2c4 ≠ ne
w[1]-1-in-r2c1-asymmetric-ne-corner ==> Pr3c1 ≠ ns
P-single: Pr3c1 = o
w[1]-1-in-r3c1-symmetric-nw-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ o
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
whip[1]: Vr1c2{1 .} ==> Br1c2 ≠ ns
whip[1]: Pr2c2{ns .} ==> Br2c2 ≠ n, Br2c1 ≠ n, Br1c2 ≠ sw, Br2c1 ≠ w, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nes
B-single: Br2c1 = e
B-single: Br1c2 = nw
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ s, Br1c3 ≠ e
B-single: Br1c3 = n
H-single: Hr2c3 = 0
P-single: Pr1c4 = ew
P-single: Pr2c3 = o
V-single: Vr2c3 = 0
w[1]-1-in-r1c4-asymmetric-nw-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ew, Pr2c5 ≠ ns, Pr2c5 ≠ ne
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
whip[1]: Hr2c3{0 .} ==> Br2c3 ≠ n, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ nw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ w, Br1c4 ≠ s, Br1c4 ≠ e
B-single: Br1c4 = n
H-single: Hr2c4 = 0
P-single: Pr1c5 = ew
P-single: Pr2c4 = o
V-single: Vr2c4 = 0
w[1]-1-in-r1c5-asymmetric-nw-corner ==> Pr2c6 ≠ sw, Pr2c6 ≠ ew, Pr2c6 ≠ ns, Pr2c6 ≠ ne
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
whip[1]: Hr2c4{0 .} ==> Br2c4 ≠ n, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ e
B-single: Br1c5 = n
H-single: Hr2c5 = 0
V-single: Vr1c6 = 0
P-single: Pr1c6 = ew
H-single: Hr1c6 = 1
P-single: Pr2c5 = o
V-single: Vr2c5 = 0
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1
whip[1]: Hr2c5{0 .} ==> Br2c5 ≠ n, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ nes
whip[1]: Vr1c6{0 .} ==> Br1c6 ≠ nw, Br1c6 ≠ ew, Br1c6 ≠ sw
whip[1]: Pr1c6{ew .} ==> Br1c6 ≠ se
whip[1]: Br1c6{ns .} ==> Pr1c7 ≠ se
w[1]-1-in-r1c7-asymmetric-nw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ew, Pr2c8 ≠ ns, Pr2c8 ≠ ne
whip[1]: Pr2c8{se .} ==> Br2c7 ≠ ne, Br2c7 ≠ wne, Br2c7 ≠ nes, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ nes, Br1c7 ≠ e, Br1c7 ≠ s, Br2c8 ≠ n, Br2c8 ≠ w
whip[1]: Br1c7{w .} ==> Hr2c7 ≠ 1, Pr2c7 ≠ ne, Pr2c8 ≠ nw, Pr1c8 ≠ se, Pr1c8 ≠ sw, Pr2c7 ≠ ew
H-single: Hr2c7 = 0
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = out
whip[1]: Hr2c7{0 .} ==> Br2c7 ≠ n, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ swn
whip[1]: Pr2c7{sw .} ==> Vr2c7 ≠ 0, Br2c6 ≠ nw, Br2c6 ≠ sw, Br2c6 ≠ swn, Br2c7 ≠ se, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ ns, Br2c7 ≠ o, Br2c7 ≠ e, Br2c7 ≠ s
V-single: Vr2c7 = 1
vertical-line-r2{c6 c7} ==> Ir2c6 = in
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
same-colour-in-{r1 r2}c6 ==> Hr2c6 = 0
whip[1]: Vr2c7{1 .} ==> Pr3c7 ≠ o, Pr3c7 ≠ se, Pr3c7 ≠ ew, Pr3c7 ≠ sw
whip[1]: Pr3c7{nw .} ==> Br3c6 ≠ ne
whip[1]: Br3c6{sw .} ==> Pr4c6 ≠ o, Pr4c6 ≠ sw
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c5 ≠ ne
whip[1]: Vr2c6{0 .} ==> Pr2c6 ≠ se, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Pr3c6 ≠ nw, Br2c5 ≠ e, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c6 ≠ ew, Br2c6 ≠ esw, Br2c6 ≠ wne
P-single: Pr1c7 = sw
P-single: Pr2c6 = o
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ n, Br1c6 ≠ ns
B-single: Br1c6 = ne
P-single: Pr2c7 = ns
B-single: Br1c7 = w
P-single: Pr1c8 = o
w[1]-1-in-r1c8-symmetric-nw-corner ==> Pr2c9 ≠ se, Pr2c9 ≠ nw, Pr2c9 ≠ o
whip[1]: Pr2c7{ns .} ==> Br2c6 ≠ ne, Br2c6 ≠ nes
whip[1]: Br2c6{se .} ==> Nr2c6 ≠ 0, Nr2c6 ≠ 3
whip[1]: Pr1c8{o .} ==> Br1c8 ≠ n, Br1c8 ≠ w
whip[1]: Br1c8{s .} ==> Pr1c9 ≠ ew, Pr1c9 ≠ sw
w[1]-1-in-r1c9-symmetric-nw-corner ==> Pr2c10 ≠ se
whip[1]: Pr3c11{sw .} ==> Vr3c11 ≠ 0, Br2c10 ≠ nw, Br2c10 ≠ se, Br3c10 ≠ n, Br3c10 ≠ s, Br3c10 ≠ w
V-single: Vr3c11 = 1
w[1]-3-in-r4c10-hit-by-verti-line-at-ne ==> Vr4c10 = 1, Hr5c10 = 1
w[1]-3-in-r4c10-closed-se-corner ==> Pr4c10 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ o
w[1]-3-in-r4c10-closed-sw-corner ==> Pr4c11 ≠ sw, Pr4c11 ≠ o
B-single: Br3c10 = e
H-single: Hr4c10 = 0
P-single: Pr3c11 = ns
V-single: Vr2c11 = 1
P-single: Pr4c11 = ns
P-single: Pr4c10 = sw
H-single: Hr4c9 = 1
vertical-line-r2{c10 c11} ==> Ir2c10 = in
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
no-vertical-line-r3{c9 c10} ==> Ir3c9 = in
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
no-horizontal-line-{r2 r3}c8 ==> Ir2c8 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
horizontal-line-{r3 r4}c9 ==> Ir4c9 = out
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = out
no-vertical-line-r5{c9 c10} ==> Ir5c10 = out
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
w[1]-2-in-r3c6-open-ne-corner ==> Hr4c6 = 1, Vr3c6 = 1, Hr4c5 = 0, Vr4c6 = 0
no-vertical-line-r3{c6 c7} ==> Ir3c6 = in
vertical-line-r3{c5 c6} ==> Ir3c5 = out
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = out
no-vertical-line-r5{c5 c6} ==> Ir5c5 = out
no-vertical-line-r5{c6 c7} ==> Ir5c7 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o
B-single: Br3c11 = w
whip[1]: Vr4c10{1 .} ==> Pr5c10 ≠ ew, Pr5c10 ≠ sw, Br4c9 ≠ s, Br4c9 ≠ ns, Br4c9 ≠ sw, Br4c9 ≠ swn, Br4c10 ≠ nes
whip[1]: Br4c9{wne .} ==> Pr5c9 ≠ ne, Pr5c9 ≠ se, Pr5c9 ≠ ew
whip[1]: Pr5c9{sw .} ==> Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ ne, Br5c9 ≠ ns
whip[1]: Br5c9{sw .} ==> Nr5c9 ≠ 3
whip[1]: Hr5c10{1 .} ==> Pr5c11 ≠ ns, Pr5c10 ≠ ns, Br4c10 ≠ wne, Br5c10 ≠ ew, Br5c10 ≠ sw
P-single: Pr5c10 = ne
P-single: Pr5c11 = nw
whip[1]: Pr5c10{ne .} ==> Br5c9 ≠ e, Br5c9 ≠ ew
whip[1]: Br5c9{sw .} ==> Hr6c9 ≠ 0, Pr6c9 ≠ o, Pr6c9 ≠ ns, Pr6c9 ≠ nw, Pr6c9 ≠ sw, Pr6c10 ≠ ns
H-single: Hr6c9 = 1
P-single: Pr6c10 = ew
V-single: Vr6c10 = 0
no-vertical-line-r6{c9 c10} ==> Ir6c9 = in
same-colour-in-{r6 r7}c9 ==> Hr7c9 = 0
whip[1]: Hr6c9{1 .} ==> Br6c9 ≠ o, Br6c9 ≠ w, Br6c9 ≠ se
whip[1]: Br6c9{nes .} ==> Nr6c9 ≠ 0
whip[1]: Pr6c10{ew .} ==> Br5c10 ≠ ne, Br6c9 ≠ nes, Br6c10 ≠ ew
B-single: Br6c10 = ne
P-single: Pr6c11 = sw
P-single: Pr7c10 = o
B-single: Br5c10 = ns
whip[1]: Pr7c10{o .} ==> Br7c9 ≠ nw
B-single: Br7c9 = w
N-single: Nr7c9 = 1
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br6c8 ≠ nw, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ w
whip[1]: Br5c7{wne .} ==> Nr5c7 ≠ 0
whip[1]: Br6c9{nw .} ==> Nr6c9 ≠ 3
whip[1]: Pr6c9{ew .} ==> Br5c8 ≠ se, Br6c8 ≠ ne
whip[1]: Br6c8{sw .} ==> Pr7c8 ≠ o, Pr7c8 ≠ sw
whip[1]: Pr7c8{ew .} ==> Br6c7 ≠ nw, Br7c7 ≠ nes, Br6c7 ≠ o, Br6c7 ≠ n, Br6c7 ≠ w
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Br5c8{sw .} ==> Pr5c8 ≠ o, Pr5c8 ≠ nw
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ se, Br4c7 ≠ esw, Br4c7 ≠ nes
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ swn
B-single: Br4c10 = esw
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Pr3c11{ns .} ==> Br2c10 ≠ ns, Br2c10 ≠ sw
whip[1]: Br2c10{ew .} ==> Pr2c11 ≠ nw
w[1]-1-in-r1c10-asymmetric-se-corner ==> Pr1c10 ≠ sw, Pr1c10 ≠ ew
whip[1]: Pr1c10{se .} ==> Br1c9 ≠ n, Br1c10 ≠ w
B-single: Br1c10 = s
P-single: Pr3c10 = o
H-single: Hr3c9 = 0
V-single: Vr2c10 = 0
P-single: Pr1c11 = o
P-single: Pr1c10 = o
P-single: Pr2c11 = sw
P-single: Pr2c10 = ew
H-single: Hr2c9 = 1
w[1]-1-in-r1c9-symmetric-ne-corner ==> Pr2c9 ≠ sw, Pr2c9 ≠ ne
horizontal-line-{r1 r2}c9 ==> Ir2c9 = in
same-colour-in-r2{c8 c9} ==> Vr2c9 = 0
whip[1]: Pr3c10{o .} ==> Br2c9 ≠ e, Br2c9 ≠ s, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ se, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c9 ≠ nes, Br2c10 ≠ ew, Br3c9 ≠ n, Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes
B-single: Br2c10 = ne
whip[1]: Br3c9{sw .} ==> Pr3c9 ≠ ne, Nr3c9 ≠ 3
P-single: Pr3c9 = o
whip[1]: Pr3c9{o .} ==> Br2c8 ≠ e, Br2c8 ≠ s, Br2c8 ≠ se, Br2c8 ≠ swn, Br2c8 ≠ wne, Br2c9 ≠ w, Br2c9 ≠ nw, Br3c9 ≠ w, Br3c9 ≠ sw
whip[1]: Br3c9{s .} ==> Nr3c9 ≠ 2
whip[1]: Br2c9{n .} ==> Pr2c9 ≠ ns, Nr2c9 ≠ 2, Nr2c9 ≠ 3
P-single: Pr2c9 = ew
whip[1]: Pr2c9{ew .} ==> Br2c9 ≠ o, Br2c8 ≠ o, Br1c9 ≠ w, Br1c9 ≠ e, Br1c8 ≠ e
B-single: Br1c8 = s
P-single: Pr1c9 = o
P-single: Pr2c8 = se
B-single: Br1c9 = s
B-single: Br2c8 = nw
N-single: Nr2c8 = 2
P-single: Pr3c8 = nw
B-single: Br2c9 = n
N-single: Nr2c9 = 1
w[1]-1-in-r3c7-asymmetric-ne-corner ==> Pr4c7 ≠ ew, Pr4c7 ≠ ns
whip[1]: Pr2c8{se .} ==> Br2c7 ≠ w, Br2c7 ≠ sw
whip[1]: Br2c7{esw .} ==> Nr2c7 ≠ 0, Nr2c7 ≠ 1
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ s, Br3c7 ≠ e, Br2c7 ≠ ew, Br3c7 ≠ w
B-single: Br3c7 = n
H-single: Hr4c7 = 0
w[1]-diagonal-1-1-in-{r3c7...r4c8}-with-no-se-inner-sides ==> Vr4c8 = 0
P-single: Pr4c6 = ne
P-single: Pr3c7 = ne
P-single: Pr4c7 = sw
V-single: Vr4c7 = 1
P-single: Pr4c8 = o
B-single: Br2c7 = esw
N-single: Nr2c7 = 3
w[1]-1-in-r4c8-symmetric-nw-corner ==> Pr5c9 ≠ nw, Pr5c9 ≠ o
vertical-line-r4{c6 c7} ==> Ir4c7 = in
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
whip[1]: Hr4c7{0 .} ==> Br4c7 ≠ n, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 3
whip[1]: Vr4c8{0 .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ ns, Br4c7 ≠ e, Br4c7 ≠ ew, Br4c8 ≠ w
whip[1]: Pr5c8{sw .} ==> Br5c7 ≠ sw, Br5c7 ≠ s
whip[1]: Pr4c6{ne .} ==> Br4c6 ≠ o, Br4c5 ≠ n, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ sw, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ ew, Br4c5 ≠ e, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne
B-single: Br3c6 = sw
P-single: Pr3c6 = sw
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ w, Br2c5 ≠ o, Br2c6 ≠ se, Br3c5 ≠ ew
B-single: Br3c5 = ne
V-single: Vr3c5 = 0
B-single: Br2c6 = e
N-single: Nr2c6 = 1
no-vertical-line-r3{c4 c5} ==> Ir3c4 = out
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1
whip[1]: Vr3c5{0 .} ==> Br3c4 ≠ e
whip[1]: Br3c4{w .} ==> Pr4c4 ≠ ne, Pr3c4 ≠ se
whip[1]: Hr3c4{1 .} ==> Br2c4 ≠ o, Pr3c4 ≠ o, Pr3c4 ≠ ns, Pr3c4 ≠ nw, Pr3c4 ≠ sw, Pr3c5 ≠ ne, Br2c4 ≠ e, Br2c4 ≠ w, Br2c4 ≠ ew, Br3c4 ≠ s, Br3c4 ≠ w
P-single: Pr3c5 = ew
B-single: Br3c4 = n
H-single: Hr4c4 = 0
V-single: Vr3c4 = 0
w[1]-diagonal-1-1-in-{r3c4...r4c3}-with-no-sw-inner-sides ==> Hr4c3 = 0, Vr4c4 = 0
w[1]-2-in-r3c3-open-se-corner ==> Hr3c3 = 1, Vr3c3 = 1, Hr3c2 = 0
P-single: Pr3c4 = ew
P-single: Pr4c5 = o
V-single: Vr4c5 = 0
w[1]-1-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
no-vertical-line-r4{c3 c4} ==> Ir4c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
vertical-line-r3{c2 c3} ==> Ir3c2 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ se, Br2c4 ≠ esw, Br2c5 ≠ sw
B-single: Br2c5 = s
N-single: Nr2c5 = 1
whip[1]: Br2c4{sw .} ==> Nr2c4 ≠ 0, Nr2c4 ≠ 3
whip[1]: Hr4c4{0 .} ==> Br4c4 ≠ n, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br4c4 ≠ nes
whip[1]: Vr3c4{0 .} ==> Br3c3 ≠ ne, Br3c3 ≠ se, Br3c3 ≠ ew
whip[1]: Hr4c3{0 .} ==> Pr4c3 ≠ se, Pr4c3 ≠ ew, Pr4c4 ≠ sw, Br3c3 ≠ ns, Br3c3 ≠ sw, Br4c3 ≠ n
P-single: Pr3c3 = se
P-single: Pr4c4 = o
B-single: Br3c3 = nw
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ w, Br3c2 ≠ s, Br3c2 ≠ n, Br3c2 ≠ o, Br2c3 ≠ w, Br2c3 ≠ e, Br2c3 ≠ o, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ sw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes
B-single: Br2c2 = w
N-single: Nr2c2 = 1
P-single: Pr3c2 = ns
w[1]-1-in-r3c1-asymmetric-ne-corner ==> Pr4c1 ≠ ns
P-single: Pr4c1 = o
w[1]-1-in-r4c1-symmetric-nw-corner ==> Pr5c2 ≠ se, Pr5c2 ≠ o
whip[1]: Pr3c2{ns .} ==> Br3c2 ≠ e, Br3c1 ≠ w, Br3c2 ≠ se
B-single: Br3c1 = e
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 0, Nr3c2 ≠ 1
whip[1]: Pr4c1{o .} ==> Br4c1 ≠ w
B-single: Br4c1 = e
V-single: Vr4c2 = 1
P-single: Pr5c1 = o
P-single: Pr4c2 = ns
H-single: Hr4c2 = 0
w[1]-1-in-r5c1-symmetric-nw-corner ==> Pr6c2 ≠ o
P-single: Pr6c2 = ne
H-single: Hr6c2 = 1
V-single: Vr5c2 = 1
vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
same-colour-in-{r4 r5}c2 ==> Hr5c2 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r4 r5} ==> Hr5c3 = 0
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = out
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
w[1]-2-in-r6c3-open-nw-corner ==> Hr7c3 = 1, Vr6c4 = 1, Hr7c4 = 0, Vr7c4 = 0
w[1]-diagonal-1-1-in-{r7c3...r8c4}-with-no-se-inner-sides ==> Hr8c4 = 0
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
vertical-line-r6{c3 c4} ==> Ir6c3 = out
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1

LOOP[36]: Hr5c7-Vr4c7-Hr4c6-Vr3c6-Hr3c5-Hr3c4-Hr3c3-Vr3c3-Vr4c3-Vr5c3-Hr6c2-Vr5c2-Vr4c2-Vr3c2-Vr2c2-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Vr1c7-Vr2c7-Hr3c7-Vr2c8-Hr2c8-Hr2c9-Hr2c10-Vr2c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Hr4c9-Vr4c9- ==> Hr5c8 = 0
P-single: Pr5c9 = ns
V-single: Vr5c9 = 1
w[1]-2-in-r6c8-open-ne-corner ==> Hr7c8 = 1, Vr6c8 = 1, Hr7c7 = 0, Vr7c8 = 0
no-vertical-line-r7{c7 c8} ==> Ir7c7 = out
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = out
vertical-line-r6{c7 c8} ==> Ir6c8 = in
no-horizontal-line-{r5 r6}c8 ==> Ir5c8 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
same-colour-in-{r5 r6}c7 ==> Hr6c7 = 0
whip[1]: Vr4c2{1 .} ==> Br4c2 ≠ o, Br4c2 ≠ n, Br4c2 ≠ e, Br4c2 ≠ s, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ se, Br4c2 ≠ nes
whip[1]: Br4c2{wne .} ==> Nr4c2 ≠ 0
whip[1]: Pr5c1{o .} ==> Br5c1 ≠ w
B-single: Br5c1 = e
P-single: Pr6c1 = o
P-single: Pr5c2 = ns
w[1]-1-in-r6c1-symmetric-nw-corner ==> Pr7c2 ≠ se
P-single: Pr7c2 = ew
H-single: Hr7c2 = 1
V-single: Vr7c2 = 0
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
same-colour-in-r7{c2 c3} ==> Vr7c3 = 0
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
whip[1]: Pr6c1{o .} ==> Br6c1 ≠ w
B-single: Br6c1 = s
P-single: Pr8c2 = o
P-single: Pr7c1 = se
whip[1]: Pr8c2{o .} ==> Br7c1 ≠ ew, Br7c2 ≠ s, Br7c2 ≠ w, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c2 ≠ nes, Br8c2 ≠ n, Br8c2 ≠ w, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ nes
B-single: Br7c1 = nw
whip[1]: Br8c2{se .} ==> Pr8c3 ≠ nw, Nr8c2 ≠ 3
P-single: Pr8c3 = o
w[1]-1-in-r7c3-symmetric-sw-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne
whip[1]: Pr8c3{o .} ==> Br7c2 ≠ e, Br7c2 ≠ ne, Br7c3 ≠ s, Br7c3 ≠ w, Br8c2 ≠ e, Br8c2 ≠ se
whip[1]: Br8c2{s .} ==> Nr8c2 ≠ 2
whip[1]: Br7c3{e .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ne, Br6c3 ≠ ne, Br7c2 ≠ o
B-single: Br7c2 = n
N-single: Nr7c2 = 1
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 0
whip[1]: Pr7c4{ew .} ==> Br6c3 ≠ nw, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn, Br7c4 ≠ nw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ ne
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Pr5c2{ns .} ==> Br5c2 ≠ e, Br5c2 ≠ n, Br5c2 ≠ o, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br5c2 ≠ ne, Br5c2 ≠ swn
whip[1]: Br5c2{esw .} ==> Pr5c3 ≠ nw, Pr5c3 ≠ ew, Pr6c3 ≠ o, Pr6c3 ≠ ne, Pr6c3 ≠ ns, Nr5c2 ≠ 0, Nr5c2 ≠ 1
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ se, Br6c2 ≠ s
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 1
whip[1]: Pr5c3{se .} ==> Br5c2 ≠ sw, Br4c3 ≠ e, Br5c3 ≠ n, Br5c3 ≠ e, Br5c3 ≠ s
B-single: Br5c3 = w
V-single: Vr5c4 = 0
P-single: Pr7c4 = nw
P-single: Pr5c3 = ns
P-single: Pr6c3 = nw
P-single: Pr6c4 = se
H-single: Hr6c4 = 1
B-single: Br5c2 = esw
N-single: Nr5c2 = 3
horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
same-colour-in-r5{c4 c5} ==> Vr5c5 = 0
w[1]-diagonal-1-1-in-{r5c5...r6c6}-with-no-nw-outer-sides ==> Hr7c6 = 0
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = out
same-colour-in-r7{c6 c7} ==> Vr7c7 = 0
same-colour-in-{r4 r5}c4 ==> Hr5c4 = 0
whip[1]: Vr5c4{0 .} ==> Br5c4 ≠ w, Br5c4 ≠ nw, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Pr7c4{nw .} ==> Br7c4 ≠ n, Br7c3 ≠ e, Br6c4 ≠ s, Br6c3 ≠ ns, Br6c3 ≠ ew, Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ nes, Br7c4 ≠ w, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ nes
B-single: Br6c3 = se
P-single: Pr7c3 = ew
B-single: Br7c3 = n
P-single: Pr8c4 = o
w[1]-1-in-r8c4-symmetric-nw-corner ==> Pr9c5 ≠ se
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ nes
B-single: Br6c2 = ns
N-single: Nr6c2 = 2
whip[1]: Pr8c4{o .} ==> Br7c4 ≠ s, Br7c4 ≠ se, Br8c4 ≠ n, Br8c4 ≠ w
whip[1]: Br8c4{s .} ==> Pr8c5 ≠ nw, Pr8c5 ≠ ew, Pr8c5 ≠ sw
whip[1]: Br7c4{e .} ==> Nr7c4 ≠ 2, Pr7c5 ≠ sw, Nr7c4 ≠ 3
whip[1]: Pr7c5{ne .} ==> Vr7c5 ≠ 1, Br6c5 ≠ ns, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br7c4 ≠ e, Br7c5 ≠ w, Br7c5 ≠ nw, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne
V-single: Vr7c5 = 0
B-single: Br7c4 = o
N-single: Nr7c4 = 0
w[1]-1-in-r8c5-symmetric-nw-corner ==> Pr9c6 ≠ se, Pr9c6 ≠ nw, Pr9c6 ≠ o
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
same-colour-in-{r7 r8}c5 ==> Hr8c5 = 0
different-colours-in-r7{c5 c6} ==> Hr7c6 = 1
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Br7c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ nes, Br8c5 ≠ n
P-single: Pr8c5 = o
w[1]-1-in-r8c4-symmetric-ne-corner ==> Pr9c4 ≠ o
P-single: Pr9c4 = se
whip[1]: Pr8c5{o .} ==> Br8c4 ≠ e, Br8c5 ≠ w
B-single: Br8c4 = s
P-single: Pr9c5 = sw
w[1]-1-in-r8c5-symmetric-sw-corner ==> Pr8c6 ≠ ne, Pr8c6 ≠ o
whip[1]: Pr9c5{sw .} ==> Br9c4 ≠ e, Br8c5 ≠ s, Br9c4 ≠ ew, Br9c5 ≠ nw, Br9c5 ≠ swn, Br9c5 ≠ wne
B-single: Br8c5 = e
V-single: Vr8c6 = 1
vertical-line-r8{c5 c6} ==> Ir8c6 = out
different-colours-in-{r8 r9}c6 ==> Hr9c6 = 1
same-colour-in-{r7 r8}c6 ==> Hr8c6 = 0
P-single: Pr8c6 = ns
whip[1]: Vr8c6{1 .} ==> Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ se
whip[1]: Hr9c6{1 .} ==> Br9c6 ≠ o, Pr9c6 ≠ ns, Pr9c7 ≠ ne, Pr9c7 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ ew, Br9c6 ≠ e, Br9c6 ≠ s, Br9c6 ≠ w, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw
P-single: Pr9c6 = ne
B-single: Br8c6 = sw
V-single: Vr8c7 = 0
no-vertical-line-r8{c6 c7} ==> Ir8c7 = out
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1
same-colour-in-{r7 r8}c7 ==> Hr8c7 = 0
whip[1]: Pr9c6{ne .} ==> Br9c5 ≠ ew, Br9c5 ≠ esw, Br9c6 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ wne
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0
whip[1]: Br9c5{sw .} ==> Nr9c5 ≠ 3
whip[1]: Vr8c7{0 .} ==> Br8c7 ≠ w
whip[1]: Br8c7{s .} ==> Pr9c8 ≠ nw
P-single: Pr9c8 = ew
H-single: Hr9c8 = 1
V-single: Vr8c8 = 0
P-single: Pr9c9 = nw
V-single: Vr8c9 = 1
w[1]-1-in-r8c7-asymmetric-se-corner ==> Pr8c7 ≠ ne
P-single: Pr8c7 = o
vertical-line-r8{c8 c9} ==> Ir8c8 = out
same-colour-in-{r7 r8}c8 ==> Hr8c8 = 0
P-single: Pr8c9 = ns
whip[1]: Pr9c8{ew .} ==> Br9c8 ≠ o, Br8c7 ≠ e, Br8c7 ≠ n, Br8c8 ≠ nw
B-single: Br8c8 = se
B-single: Br8c7 = s
P-single: Pr7c9 = sw
P-single: Pr8c8 = o
P-single: Pr9c7 = ew
B-single: Br9c8 = n
N-single: Nr9c8 = 1
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ ew, Br6c9 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew
B-single: Br7c8 = ne
B-single: Br6c9 = n
N-single: Nr6c9 = 1
whip[1]: Pr7c8{ew .} ==> Br6c7 ≠ se, Br6c7 ≠ esw, Br6c7 ≠ nes, Br7c7 ≠ se, Br7c7 ≠ esw
whip[1]: Br7c7{nw .} ==> Nr7c7 ≠ 3
whip[1]: Pr9c7{ew .} ==> Br9c6 ≠ ne, Br9c6 ≠ nes, Br9c7 ≠ nw, Br9c7 ≠ swn
whip[1]: Br9c7{ns .} ==> Nr9c7 ≠ 3
whip[1]: Br9c6{ns .} ==> Nr9c6 ≠ 3
whip[1]: Pr9c9{nw .} ==> Br8c9 ≠ o
B-single: Br8c9 = w
N-single: Nr8c9 = 1
whip[1]: Pr8c7{o .} ==> Br7c6 ≠ e, Br7c6 ≠ s, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c6 ≠ nes, Br7c7 ≠ w, Br7c7 ≠ nw
whip[1]: Br7c7{n .} ==> Pr7c7 ≠ ns, Pr7c7 ≠ se, Pr7c7 ≠ sw, Nr7c7 ≠ 2
whip[1]: Br7c6{nw .} ==> Nr7c6 ≠ 3
whip[1]: Pr8c6{ns .} ==> Br7c6 ≠ n, Br7c6 ≠ o, Br7c5 ≠ n, Br7c5 ≠ o
whip[1]: Br7c5{ne .} ==> Pr7c6 ≠ ne, Nr7c5 ≠ 0, Nr7c5 ≠ 3, Pr7c6 ≠ ew
whip[1]: Pr7c6{sw .} ==> Br7c6 ≠ nw, Br6c6 ≠ s
B-single: Br7c6 = w
N-single: Nr7c6 = 1
whip[1]: Pr7c7{ne .} ==> Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ ew, Br6c7 ≠ wne
whip[1]: Br9c4{wne .} ==> Nr9c4 ≠ 1
whip[1]: Pr9c4{se .} ==> Br9c3 ≠ w, Br9c3 ≠ n, Br9c3 ≠ o, Br9c3 ≠ nw, Br9c3 ≠ nes, Br9c4 ≠ ne
B-single: Br9c4 = wne
N-single: Nr9c4 = 3
whip[1]: Br9c3{esw .} ==> Pr10c3 ≠ nw, Nr9c3 ≠ 0, Nr9c3 ≠ 1
P-single: Pr10c3 = ew
w[1]-1-in-r10c3-asymmetric-nw-corner ==> Pr11c4 ≠ ew
P-single: Pr11c4 = o
w[1]-1-in-r10c4-symmetric-sw-corner ==> Pr10c5 ≠ ne
P-single: Pr10c5 = ns
whip[1]: Pr10c3{ew .} ==> Br10c3 ≠ s, Br9c2 ≠ se, Br9c2 ≠ nes, Br9c3 ≠ esw
B-single: Br9c3 = se
N-single: Nr9c3 = 2
P-single: Pr9c3 = o
B-single: Br10c3 = n
whip[1]: Pr9c3{o .} ==> Br8c2 ≠ s, Br9c2 ≠ ns
B-single: Br9c2 = s
N-single: Nr9c2 = 1
B-single: Br8c2 = o
N-single: Nr8c2 = 0
whip[1]: Pr11c4{o .} ==> Br11c3 ≠ n, Br11c4 ≠ n, Br10c4 ≠ s
B-single: Br10c4 = e
P-single: Pr11c5 = ne
B-single: Br11c4 = o
B-single: Br11c3 = o
whip[1]: Pr11c5{ne .} ==> Br10c5 ≠ nes
B-single: Br10c5 = esw
whip[1]: Pr10c5{ns .} ==> Br9c5 ≠ sw
B-single: Br9c5 = w
N-single: Nr9c5 = 1
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ w, Br4c2 ≠ nw, Br4c3 ≠ s
B-single: Br4c3 = w
P-single: Pr4c3 = ns
P-single: Pr5c4 = o
whip[1]: Pr4c3{ns .} ==> Br3c2 ≠ esw, Br4c2 ≠ wne
B-single: Br4c2 = ew
N-single: Nr4c2 = 2
B-single: Br3c2 = ew
N-single: Nr3c2 = 2
whip[1]: Pr5c4{o .} ==> Br4c4 ≠ s, Br4c4 ≠ w, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br5c4 ≠ n, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ nes
whip[1]: Br5c4{se .} ==> Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr5c5 ≠ sw, Nr5c4 ≠ 3
whip[1]: Br4c4{e .} ==> Nr4c4 ≠ 2, Nr4c4 ≠ 3
whip[1]: Pr6c4{se .} ==> Br6c4 ≠ w, Br5c4 ≠ e, Br5c4 ≠ o, Br6c4 ≠ ew
whip[1]: Br6c4{wne .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ ns, Nr6c4 ≠ 1
whip[1]: Pr6c5{sw .} ==> Br5c4 ≠ se, Br5c5 ≠ w
B-single: Br5c4 = s
N-single: Nr5c4 = 1
whip[1]: Pr5c5{ne .} ==> Br4c5 ≠ s, Br4c5 ≠ w
whip[1]: Br4c5{sw .} ==> Pr5c6 ≠ nw, Nr4c5 ≠ 1, Nr4c5 ≠ 3
P-single: Pr5c6 = o
w[1]-1-in-r5c5-symmetric-ne-corner ==> Pr6c5 ≠ sw
P-single: Pr6c5 = ew
H-single: Hr6c5 = 1
V-single: Vr6c5 = 0
P-single: Pr6c6 = sw
V-single: Vr6c6 = 1
P-single: Pr7c5 = o
H-single: Hr7c5 = 0
w[1]-1-in-r6c6-asymmetric-nw-corner ==> Pr7c7 ≠ ne
P-single: Pr7c7 = o
w[1]-1-in-r5c5-asymmetric-se-corner ==> Pr5c5 ≠ ne
P-single: Pr5c5 = o
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXXXXXOOOO
OXXXXXOXXX
OXOOOXXXXX
OXOOOOXXOX
OXOOOOOXOO
OOOXXOOXXX
XXXXXOOOXX
XXXXXOOOXX
XXXOXXXXXX
OOOOXOXXXX

.   .———.———.———.———.———.   .   .   .   .
  1 | 2   1   1   1   2 | 1   1   1   1
.   .   .   .   .   .   .   .———.———.———.
  1 |                   |   |         2 |
.   .   .———.———.———.   .———.   .   .   .
  1 |   | 2   1   2 | 2   1   0       1 |
.   .   .   .   .   .———.   .   .———.   .
  1 |   | 1             |     1 |   | 3 |
.   .   .   .   .   .   .———.   .   .———.
  1 |   | 1       1   0     | 2 |     2
.   .———.   .———.———.   .   .   .———.———.
  1       2 |     2 | 1     | 2       2 |
.———.———.———.   .   .   .   .———.   .   .
| 2       1         |         2 |     1 |
.   .   .   .   .   .   .   .   .   .   .
| 1       0   1   1 | 2   1   2 |     1 |
.   .   .   .———.   .———.———.———.   .   .
| 2         |   |                     1 |
.———.———.———.   .   .———.   .   .   .   .
  1   1   1   1 | 3 | 3 | 2   1   1   2 |
.   .   .   .   .———.   .———.———.———.———.

init-time = 4m 31.22s, solve-time = 1m 58.15s, total-time = 6m 29.37s
nb-facts=<Fact-174852>
Quasi-Loop max length = 36
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
