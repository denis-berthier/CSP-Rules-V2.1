Mellon rating = 4


(solve 
10 10 
2 2 2 2 2 . 1 . 3 . 
2 2 2 2 2 . 1 . 2 2 
2 2 2 2 2 . . 1 . . 
2 2 2 2 2 1 . . . 2 
2 2 2 2 1 . 3 . . . 
. . . 3 . 1 2 2 2 2 
3 . . . 1 2 2 2 2 2 
. . 2 . . 2 2 2 2 2 
2 1 . 1 . 2 2 2 2 2 
. 2 . 1 . 2 2 2 2 2 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 2 2 2 2 . 1 . 3 .
2 2 2 2 2 . 1 . 2 2
2 2 2 2 2 . . 1 . .
2 2 2 2 2 1 . . . 2
2 2 2 2 1 . 3 . . .
. . . 3 . 1 2 2 2 2
3 . . . 1 2 2 2 2 2
. . 2 . . 2 2 2 2 2
2 1 . 1 . 2 2 2 2 2
. 2 . 1 . 2 2 2 2 2

start init-grid-structure 0.0364449024200439
start create-csp-variables
start create-labels 0.00134396553039551
start init-physical-csp-links 0.0116300582885742
start init-physical-non-csp-links 9.97031712532043
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.53378391265869
     start init-physical-BN-non-csp-links at local time 9.61396503448486
     start init-physical-BP-non-csp-links at local time 17.7376499176025
     end init-physical-BP-non-csp-links at local time 303.081530094147
end init-physical-non-csp-links 313.051892995834
start init-corner-B-c-values 313.088575839996
start init-outer-B-candidates 313.088634967804
start init-outer-I-candidates 313.089357852936
start init-H-candidates 313.08992099762
start init-V-candidates 313.094061851501
start init-P-candidates 313.098591804504
start init-inner-I-candidates 313.106274843216
start init-inner-N-and-B-candidates 313.108932971954
start solution 313.121906995773
entering BRT
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[5]-diagonal-2-3-in-ne-corner ==> Vr1c9 = 0
diagonal-of-three-2s-in-nw-corner ==> Vr4c1 = 1, Hr1c4 = 1
diagonal-of-three-2s-in-se-corner ==> Vr7c11 = 1, Hr11c7 = 1
diagonal-of-five-2s-in-nw-corner ==> Vr6c1 = 1, Hr1c6 = 1
w[1]-3-in-r7c1-hit-by-verti-line-at-nw ==> Vr7c2 = 1, Hr8c1 = 1
w[1]-3-in-r7c1-closed-se-corner ==> Pr7c1 ≠ se, Pr7c1 ≠ o
diagonal-of-five-2s-in-se-corner ==> Vr5c11 = 1, Hr11c5 = 1
square-of-2s-se-of-r9c9 ==> Pr10c10 ≠ o
square-of-2s-se-of-r9c7 ==> Pr10c8 ≠ o
square-of-2s-se-of-r8c8 ==> Pr9c9 ≠ o
square-of-2s-se-of-r8c6 ==> Pr9c7 ≠ o
square-of-2s-se-of-r7c7 ==> Pr8c8 ≠ o
square-of-2s-se-of-r4c2 ==> Pr5c3 ≠ o
square-of-2s-se-of-r3c3 ==> Pr4c4 ≠ o
square-of-2s-se-of-r3c1 ==> Pr4c2 ≠ o
square-of-2s-se-of-r2c2 ==> Pr3c3 ≠ o
square-of-2s-se-of-r1c1 ==> Pr2c2 ≠ o
w[1]-1-in-r6c6-symmetric-se-corner ==> Pr6c6 ≠ se, Pr6c6 ≠ nw, Pr6c6 ≠ o
entering level Loop with <Fact-93112>
entering level Col with <Fact-93190>
vertical-line-r9{c10 c11} ==> Ir9c10 = in
vertical-line-r7{c10 c11} ==> Ir7c10 = in
vertical-line-r5{c10 c11} ==> Ir5c10 = in
vertical-line-r6{c0 c1} ==> Ir6c1 = in
vertical-line-r4{c0 c1} ==> Ir4c1 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
horizontal-line-{r10 r11}c7 ==> Ir10c7 = in
horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
Starting_init_links_with_<Fact-93203>
2195 candidates, 5746 csp-links and 25268 links. Density = 1.05%
starting non trivial part of solution
Entering_level_W1_with_<Fact-155236>
whip[1]: Hr11c5{1 .} ==> Br10c5 ≠ wne, Br11c5 ≠ o, Br10c5 ≠ o, Pr11c5 ≠ o, Pr11c5 ≠ nw, Br10c5 ≠ n, Br10c5 ≠ e, Br10c5 ≠ w, Br10c5 ≠ ne, Br10c5 ≠ nw, Br10c5 ≠ ew
B-single: Br11c5 = n
w[1]-1-in-r10c4-asymmetric-se-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ew, Pr10c4 ≠ ns, Pr10c4 ≠ ne
whip[1]: Pr10c4{se .} ==> Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br10c3 ≠ ne, Br10c3 ≠ wne, Br10c3 ≠ nes, Br9c3 ≠ e, Br9c3 ≠ s, Br10c4 ≠ n, Br10c4 ≠ w
whip[1]: Br10c4{s .} ==> Hr10c4 ≠ 1, Vr10c4 ≠ 1, Pr11c4 ≠ ne, Pr11c4 ≠ nw, Pr10c4 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ ew, Pr10c5 ≠ sw
V-single: Vr10c4 = 0
H-single: Hr10c4 = 0
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ e, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw
whip[1]: Hr10c4{0 .} ==> Br9c4 ≠ s
whip[1]: Br9c4{w .} ==> Pr9c4 ≠ se, Pr9c5 ≠ sw
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Vr5c11{1 .} ==> Br5c10 ≠ swn, Br5c11 ≠ o, Br5c10 ≠ o, Pr5c11 ≠ o, Pr5c11 ≠ nw, Br5c10 ≠ n, Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ ns, Br5c10 ≠ nw, Br5c10 ≠ sw
B-single: Br5c11 = w
whip[1]: Pr4c10{sw .} ==> Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ esw, Br3c9 ≠ nes, Br4c10 ≠ nw, Br4c10 ≠ se, Br3c9 ≠ o, Br3c9 ≠ n, Br3c9 ≠ w
whip[1]: Br3c9{wne .} ==> Nr3c9 ≠ 0
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Vr8c2{0 .} ==> Br8c2 ≠ wne, Pr8c2 ≠ ns, Pr8c2 ≠ se, Pr8c2 ≠ sw, Pr9c2 ≠ ne, Pr9c2 ≠ ns, Pr9c2 ≠ nw, Br8c1 ≠ e, Br8c1 ≠ ne, Br8c1 ≠ se, Br8c1 ≠ ew, Br8c1 ≠ esw, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ w, Br8c2 ≠ nw, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn
whip[1]: Hr8c2{0 .} ==> Br8c2 ≠ nes, Pr8c2 ≠ ne, Pr8c2 ≠ ew, Pr8c3 ≠ nw, Pr8c3 ≠ ew, Pr8c3 ≠ sw, Br7c2 ≠ s, Br7c2 ≠ ns, Br7c2 ≠ se, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ nes, Br8c2 ≠ n, Br8c2 ≠ ne, Br8c2 ≠ ns
whip[1]: Br8c2{se .} ==> Nr8c2 ≠ 3
whip[1]: Pr8c2{nw .} ==> Br7c1 ≠ swn, Br7c1 ≠ wne
whip[1]: Br7c1{nes .} ==> Pr8c1 ≠ o, Pr8c1 ≠ ns, Pr7c2 ≠ o, Pr7c2 ≠ ne, Pr7c2 ≠ nw, Pr7c2 ≠ ew, Pr8c2 ≠ o
P-single: Pr8c2 = nw
whip[1]: Pr8c2{nw .} ==> Br8c1 ≠ s, Br8c1 ≠ o, Br7c2 ≠ e, Br7c2 ≠ n, Br7c2 ≠ o, Br7c2 ≠ ne, Br8c1 ≠ w, Br8c1 ≠ sw
whip[1]: Br8c1{swn .} ==> Nr8c1 ≠ 0
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ se, Br6c1 ≠ esw, Br6c1 ≠ nes, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn
whip[1]: Hr1c6{1 .} ==> Br1c6 ≠ esw, Br0c6 ≠ o, Br1c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se, Br1c6 ≠ e, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ sw
B-single: Br0c6 = s
w[1]-1-in-r1c7-asymmetric-nw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ew, Pr2c8 ≠ ns, Pr2c8 ≠ ne
whip[1]: Pr2c8{se .} ==> Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ swn, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ nes, Br1c7 ≠ e, Br1c7 ≠ s, Br2c8 ≠ n, Br2c8 ≠ w
whip[1]: Br1c7{w .} ==> Hr2c7 ≠ 1, Vr1c8 ≠ 1, Pr2c7 ≠ ne, Pr2c8 ≠ nw, Pr1c8 ≠ se, Pr1c8 ≠ sw, Pr2c7 ≠ se, Pr2c7 ≠ ew
V-single: Vr1c8 = 0
H-single: Hr2c7 = 0
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ w, Br1c8 ≠ nw, Br1c8 ≠ ew, Br1c8 ≠ wne
whip[1]: Hr2c7{0 .} ==> Br2c7 ≠ n
whip[1]: Br2c7{w .} ==> Pr3c7 ≠ ne, Pr3c8 ≠ nw
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Vr6c1{1 .} ==> Br6c1 ≠ ns, Br6c0 ≠ o, Br6c1 ≠ o, Br6c1 ≠ n, Br6c1 ≠ e, Br6c1 ≠ s, Br6c1 ≠ ne
B-single: Br6c0 = e
whip[1]: Br6c1{wne .} ==> Nr6c1 ≠ 0
whip[1]: Hr11c7{1 .} ==> Br10c7 ≠ ew, Br11c7 ≠ o, Pr11c7 ≠ nw, Br10c7 ≠ ne, Br10c7 ≠ nw
P-single: Pr11c7 = ew
H-single: Hr11c6 = 1
V-single: Vr10c7 = 0
B-single: Br11c7 = n
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ ne, Br11c6 ≠ o, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c7 ≠ sw
B-single: Br11c6 = n
P-single: Pr11c6 = ew
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ se, Br10c5 ≠ esw, Br10c5 ≠ nes, Br10c6 ≠ sw
B-single: Br10c6 = ns
H-single: Hr10c6 = 1
P-single: Pr10c6 = ew
H-single: Hr10c5 = 1
V-single: Vr9c6 = 0
horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
whip[1]: Hr10c6{1 .} ==> Br9c6 ≠ ne, Br9c6 ≠ nw, Br9c6 ≠ ew
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ s, Br9c5 ≠ ne, Br9c5 ≠ w, Br9c5 ≠ e, Br9c5 ≠ n, Br9c5 ≠ o, Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ ew, Br9c5 ≠ esw, Br9c5 ≠ wne, Br9c5 ≠ nes, Br9c6 ≠ sw, Br10c5 ≠ sw
whip[1]: Br10c5{swn .} ==> Pr10c5 ≠ o, Pr10c5 ≠ ns, Nr10c5 ≠ 1
whip[1]: Br9c6{se .} ==> Pr9c6 ≠ ns
whip[1]: Pr9c6{ew .} ==> Hr9c5 ≠ 0, Br8c5 ≠ nw, Br8c5 ≠ ew, Br8c5 ≠ wne, Br8c6 ≠ sw, Br9c5 ≠ sw, Br8c5 ≠ o, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ w, Br8c5 ≠ ne, Br8c6 ≠ ne, Br9c5 ≠ s
H-single: Hr9c5 = 1
horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
whip[1]: Hr9c5{1 .} ==> Pr9c5 ≠ o, Pr9c5 ≠ ns, Pr9c5 ≠ nw
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ se, Br8c4 ≠ esw, Br8c4 ≠ nes
whip[1]: Br9c5{swn .} ==> Nr9c5 ≠ 0, Nr9c5 ≠ 1
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ sw, Br9c7 ≠ ne
whip[1]: Vr7c11{1 .} ==> Br7c10 ≠ sw, Br7c11 ≠ o, Pr7c11 ≠ nw, Br7c10 ≠ ns, Br7c10 ≠ nw
P-single: Pr7c11 = ns
H-single: Hr7c10 = 0
V-single: Vr6c11 = 1
B-single: Br7c11 = w
vertical-line-r6{c10 c11} ==> Ir6c10 = in
same-colour-in-{r5 r6}c10 ==> Hr6c10 = 0
whip[1]: Pr7c11{ns .} ==> Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ se, Br6c10 ≠ sw, Br7c10 ≠ ne
whip[1]: Br7c10{ew .} ==> Pr7c10 ≠ ew
whip[1]: Pr7c10{nw .} ==> Vr6c10 ≠ 0, Br6c9 ≠ ns, Br6c9 ≠ nw, Br6c9 ≠ sw, Br6c10 ≠ ne, Br7c9 ≠ ne, Br7c9 ≠ sw
V-single: Vr6c10 = 1
B-single: Br6c10 = ew
P-single: Pr6c11 = ns
P-single: Pr6c10 = ns
H-single: Hr6c9 = 0
V-single: Vr5c10 = 1
vertical-line-r5{c9 c10} ==> Ir5c9 = out
no-horizontal-line-{r5 r6}c9 ==> Ir6c9 = out
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ se, Br5c10 ≠ esw, Br5c10 ≠ nes
whip[1]: Pr6c10{ns .} ==> Br5c10 ≠ e, Br5c9 ≠ n, Br5c9 ≠ o, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ nes, Br5c10 ≠ ne, Br6c9 ≠ ne
whip[1]: Br6c9{ew .} ==> Pr6c9 ≠ ew
whip[1]: Pr6c9{nw .} ==> Vr5c9 ≠ 0, Br5c8 ≠ w, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ sw, Br5c8 ≠ swn, Br5c9 ≠ ne, Br6c8 ≠ ne, Br6c8 ≠ sw, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ s, Br5c9 ≠ e
V-single: Vr5c9 = 1
vertical-line-r5{c8 c9} ==> Ir5c8 = in
whip[1]: Vr5c9{1 .} ==> Pr5c9 ≠ o, Pr5c9 ≠ ne, Pr5c9 ≠ nw, Pr5c9 ≠ ew
whip[1]: Pr5c9{sw .} ==> Br4c8 ≠ se, Br4c8 ≠ esw, Br4c8 ≠ nes, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn
whip[1]: Br5c9{wne .} ==> Pr5c10 ≠ o, Pr5c10 ≠ ne, Pr5c10 ≠ nw, Pr5c10 ≠ ew, Nr5c9 ≠ 0, Nr5c9 ≠ 1
whip[1]: Pr5c10{sw .} ==> Br4c9 ≠ se, Br4c9 ≠ nes, Br4c10 ≠ sw
whip[1]: Br4c10{ew .} ==> Pr4c11 ≠ o
whip[1]: Pr4c11{sw .} ==> Br3c10 ≠ nw, Br3c10 ≠ o, Br3c10 ≠ n, Br3c10 ≠ w
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Br5c8{nes .} ==> Nr5c8 ≠ 0
whip[1]: Br5c10{wne .} ==> Nr5c10 ≠ 1
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Hr1c4{1 .} ==> Br1c4 ≠ sw, Br0c4 ≠ o, Pr1c5 ≠ se, Br1c4 ≠ se, Br1c4 ≠ ew
P-single: Pr1c5 = ew
H-single: Hr1c5 = 1
V-single: Vr1c5 = 0
B-single: Br0c4 = s
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ ne, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw
whip[1]: Br1c5{ns .} ==> Pr1c6 ≠ se, Pr2c5 ≠ ns
P-single: Pr1c6 = ew
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ ne, Br1c6 ≠ nw, Br1c6 ≠ swn, Br1c6 ≠ wne
B-single: Br1c5 = ns
H-single: Hr2c5 = 1
P-single: Pr2c6 = ew
H-single: Hr2c6 = 1
V-single: Vr2c6 = 0
horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
whip[1]: Hr2c5{1 .} ==> Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ sw
whip[1]: Pr2c6{ew .} ==> Br2c6 ≠ w, Br2c6 ≠ s, Br2c6 ≠ e, Br2c6 ≠ o, Br2c5 ≠ ne, Br1c6 ≠ ne, Br1c6 ≠ n, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Br2c6{nes .} ==> Pr2c7 ≠ o, Pr2c7 ≠ ns, Pr3c6 ≠ ns, Nr2c6 ≠ 0
whip[1]: Pr3c6{ew .} ==> Hr3c6 ≠ 0, Br3c5 ≠ sw, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ esw, Br2c6 ≠ n, Br2c6 ≠ ne, Br3c5 ≠ ne, Br3c6 ≠ o, Br3c6 ≠ e, Br3c6 ≠ s, Br3c6 ≠ w
H-single: Hr3c6 = 1
horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
whip[1]: Hr3c6{1 .} ==> Pr3c7 ≠ o, Pr3c7 ≠ ns, Pr3c7 ≠ se
whip[1]: Pr3c7{sw .} ==> Br3c7 ≠ nw, Br3c7 ≠ swn, Br3c7 ≠ wne
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 1
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 1
whip[1]: Pr2c5{ew .} ==> Br2c4 ≠ sw, Br2c4 ≠ ne
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ se, Br4c0 ≠ o, Pr5c1 ≠ se, Br4c1 ≠ ne, Br4c1 ≠ ns
P-single: Pr5c1 = ns
H-single: Hr5c1 = 0
V-single: Vr5c1 = 1
B-single: Br4c0 = e
vertical-line-r5{c0 c1} ==> Ir5c1 = in
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ sw, Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se
whip[1]: Br5c1{sw .} ==> Pr6c1 ≠ se, Pr5c2 ≠ ew
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ sw, Br6c1 ≠ nw, Br6c1 ≠ swn, Br6c1 ≠ wne
B-single: Br5c1 = ew
V-single: Vr5c2 = 1
P-single: Pr6c2 = ns
H-single: Hr6c2 = 0
V-single: Vr6c2 = 1
w[1]-3-in-r7c1-hit-by-verti-line-at-ne ==> Vr7c1 = 1, Hr7c2 = 0
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
no-vertical-line-r8{c1 c2} ==> Ir8c2 = out
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = out
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = out
vertical-line-r7{c1 c2} ==> Ir7c1 = in
same-colour-in-{r6 r7}c1 ==> Hr7c1 = 0
whip[1]: Vr5c2{1 .} ==> Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ se
whip[1]: Pr6c2{ns .} ==> Br6c2 ≠ e, Br6c2 ≠ n, Br6c2 ≠ o, Br5c2 ≠ sw, Br6c1 ≠ w, Br6c1 ≠ sw, Br6c2 ≠ s, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ wne, Br6c2 ≠ nes
B-single: Br6c1 = ew
N-single: Nr6c1 = 2
P-single: Pr7c1 = ns
P-single: Pr7c2 = ns
whip[1]: Pr7c1{ns .} ==> Br7c1 ≠ nes
B-single: Br7c1 = esw
P-single: Pr8c1 = ne
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ nw, Br8c1 ≠ swn
whip[1]: Br8c1{ns .} ==> Pr9c1 ≠ ne, Pr9c1 ≠ ns, Nr8c1 ≠ 3
whip[1]: Pr11c2{ew .} ==> Br11c1 ≠ o, Hr11c1 ≠ 0, Br10c2 ≠ sw, Br10c1 ≠ o, Br10c1 ≠ n, Br10c1 ≠ e, Br10c1 ≠ ne, Br10c2 ≠ ne
H-single: Hr11c1 = 1
B-single: Br11c1 = n
P-single: Pr11c1 = ne
V-single: Vr10c1 = 1
vertical-line-r10{c0 c1} ==> Ir10c1 = in
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 0, Nr10c1 ≠ 1
whip[1]: Pr10c3{ew .} ==> Br9c3 ≠ esw, Br9c3 ≠ o, Br9c3 ≠ n
whip[1]: Br9c3{nes .} ==> Nr9c3 ≠ 0
whip[1]: Pr11c3{nw .} ==> Br11c3 ≠ n, Hr11c3 ≠ 1, Br10c2 ≠ ns, Br10c2 ≠ ew, Br10c3 ≠ ns, Br10c3 ≠ sw, Br10c3 ≠ swn, Br10c3 ≠ s
H-single: Hr11c3 = 0
B-single: Br11c3 = o
P-single: Pr11c4 = o
H-single: Hr11c4 = 0
w[1]-1-in-r10c4-symmetric-sw-corner ==> Pr10c5 ≠ ne
P-single: Pr10c5 = se
V-single: Vr9c5 = 0
V-single: Vr10c5 = 1
w[1]-1-in-r9c4-symmetric-se-corner ==> Pr9c4 ≠ nw, Pr9c4 ≠ o
vertical-line-r10{c4 c5} ==> Ir10c4 = out
no-vertical-line-r10{c3 c4} ==> Ir10c3 = out
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = out
whip[1]: Pr11c4{o .} ==> Br11c4 ≠ n, Br10c4 ≠ s
B-single: Br10c4 = e
P-single: Pr11c5 = ne
B-single: Br11c4 = o
whip[1]: Pr11c5{ne .} ==> Br10c5 ≠ ns
B-single: Br10c5 = swn
N-single: Nr10c5 = 3
whip[1]: Pr10c5{se .} ==> Br9c4 ≠ e, Br9c5 ≠ swn
B-single: Br9c5 = ns
N-single: Nr9c5 = 2
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ nw, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ w
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 0
whip[1]: Pr8c3{ns .} ==> Vr7c3 ≠ 0, Br7c2 ≠ w, Br7c2 ≠ nw, Br7c3 ≠ s, Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c3 ≠ nes, Br8c3 ≠ nw, Br8c3 ≠ se, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e
V-single: Vr7c3 = 1
vertical-line-r7{c2 c3} ==> Ir7c3 = in
whip[1]: Vr7c3{1 .} ==> Pr7c3 ≠ o, Pr7c3 ≠ ne, Pr7c3 ≠ nw, Pr7c3 ≠ ew
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn
whip[1]: Br7c3{wne .} ==> Nr7c3 ≠ 0
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 1
whip[1]: Br10c3{nw .} ==> Nr10c3 ≠ 3
whip[1]: Pr10c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ sw
whip[1]: Pr9c2{ew .} ==> Hr9c2 ≠ 0, Br8c2 ≠ o, Br8c2 ≠ e, Br9c2 ≠ e, Br9c2 ≠ s, Br9c2 ≠ w
H-single: Hr9c2 = 1
B-single: Br9c2 = n
H-single: Hr10c2 = 0
V-single: Vr9c2 = 0
V-single: Vr9c3 = 0
P-single: Pr11c3 = nw
H-single: Hr11c2 = 1
V-single: Vr10c3 = 1
P-single: Pr9c1 = se
H-single: Hr9c1 = 1
V-single: Vr9c1 = 1
P-single: Pr9c2 = ew
P-single: Pr10c2 = o
H-single: Hr10c1 = 0
V-single: Vr10c2 = 0
P-single: Pr10c3 = se
H-single: Hr10c3 = 1
horizontal-line-{r9 r10}c3 ==> Ir9c3 = in
no-vertical-line-r9{c2 c3} ==> Ir9c2 = in
no-vertical-line-r9{c1 c2} ==> Ir9c1 = in
no-horizontal-line-{r9 r10}c2 ==> Ir10c2 = in
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1

LOOP[10]: Vr9c4-Hr10c3-Vr10c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Hr9c1-Hr9c2- ==> Hr9c3 = 0
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
same-colour-in-{r7 r8}c3 ==> Hr8c3 = 0
different-colours-in-r8{c2 c3} ==> Hr8c3 = 1
whip[1]: Hr10c2{0 .} ==> Br10c2 ≠ nw
B-single: Br10c2 = se
P-single: Pr11c2 = ew
whip[1]: Pr11c2{ew .} ==> Br11c2 ≠ o, Br10c1 ≠ esw
B-single: Br11c2 = n
whip[1]: Vr9c2{0 .} ==> Br9c1 ≠ se, Br9c1 ≠ ew
whip[1]: Vr9c3{0 .} ==> Br9c3 ≠ w, Br9c3 ≠ nw
whip[1]: Br9c3{nes .} ==> Pr9c4 ≠ ne, Pr9c4 ≠ ew, Pr10c4 ≠ o, Nr9c3 ≠ 1
P-single: Pr10c4 = nw
w[1]-1-in-r9c4-asymmetric-sw-corner ==> Pr9c5 ≠ ew
P-single: Pr9c5 = ne
H-single: Hr9c4 = 0
V-single: Vr8c5 = 1
vertical-line-r8{c4 c5} ==> Ir8c4 = out
different-colours-in-r8{c3 c4} ==> Hr8c4 = 1
whip[1]: Pr10c4{nw .} ==> Br10c3 ≠ o, Br9c4 ≠ n, Br10c3 ≠ w
B-single: Br9c4 = w
whip[1]: Br10c3{nw .} ==> Nr10c3 ≠ 0
whip[1]: Pr9c5{ne .} ==> Br8c4 ≠ s, Br8c4 ≠ ns, Br8c4 ≠ sw, Br8c4 ≠ swn, Br8c5 ≠ s, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ nes
whip[1]: Br8c5{swn .} ==> Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ew, Pr8c6 ≠ sw, Nr8c5 ≠ 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes
whip[1]: Vr8c4{1 .} ==> Pr8c4 ≠ nw, Pr8c4 ≠ ew, Pr9c4 ≠ sw, Br8c3 ≠ ns, Br8c3 ≠ sw, Br8c4 ≠ e, Br8c4 ≠ ne
P-single: Pr9c4 = ns
whip[1]: Pr9c4{ns .} ==> Br9c3 ≠ nes
B-single: Br9c3 = se
N-single: Nr9c3 = 2
P-single: Pr9c3 = nw
whip[1]: Pr9c3{nw .} ==> Br8c2 ≠ s, Br8c3 ≠ ne
B-single: Br8c3 = ew
P-single: Pr8c3 = ns
B-single: Br8c2 = se
N-single: Nr8c2 = 2
whip[1]: Pr8c3{ns .} ==> Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 1
whip[1]: Pr8c4{se .} ==> Br7c4 ≠ ne, Br7c4 ≠ sw, Br7c4 ≠ swn, Br7c4 ≠ o, Br7c4 ≠ n, Br7c4 ≠ e
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 0
whip[1]: Pr11c3{nw .} ==> Br10c3 ≠ n
B-single: Br10c3 = nw
N-single: Nr10c3 = 2
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ n, Br9c1 ≠ ns
B-single: Br9c1 = nw
P-single: Pr10c1 = ns
B-single: Br8c1 = ns
N-single: Nr8c1 = 2
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ swn
B-single: Br10c1 = sw
N-single: Nr10c1 = 2
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Pr7c2{ns .} ==> Br7c2 ≠ wne
B-single: Br7c2 = ew
N-single: Nr7c2 = 2
whip[1]: Pr7c3{se .} ==> Br6c3 ≠ ne, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ e
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Br6c2{ew .} ==> Pr6c3 ≠ ew, Nr6c2 ≠ 0, Nr6c2 ≠ 3
whip[1]: Pr6c3{se .} ==> Vr6c3 ≠ 0, Br5c3 ≠ ne, Br5c3 ≠ sw, Br6c3 ≠ ns, Br6c3 ≠ se, Br6c3 ≠ nes, Br6c2 ≠ w, Br6c3 ≠ s
V-single: Vr6c3 = 1
B-single: Br6c2 = ew
N-single: Nr6c2 = 2
P-single: Pr7c3 = ns
H-single: Hr7c3 = 0
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = in
whip[1]: Pr7c3{ns .} ==> Br7c3 ≠ nw, Br7c3 ≠ wne
whip[1]: Br7c3{ew .} ==> Pr7c4 ≠ nw, Pr7c4 ≠ ew, Pr7c4 ≠ sw, Nr7c3 ≠ 3
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Pr5c2{se .} ==> Br4c2 ≠ ne, Br4c2 ≠ sw
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Vr1c9{1 .} ==> Br1c9 ≠ nes, Br1c8 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ ew, Pr2c9 ≠ o, Pr2c9 ≠ se, Pr2c9 ≠ ew, Pr2c9 ≠ sw, Br1c8 ≠ n, Br1c8 ≠ s, Br1c8 ≠ ns
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Pr2c9{nw .} ==> Br2c8 ≠ wne, Br2c9 ≠ nw
whip[1]: Br2c9{sw .} ==> Pr3c10 ≠ o, Pr3c10 ≠ se
whip[1]: Pr3c10{sw .} ==> Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Br1c9{wne .} ==> Pr1c10 ≠ o, Pr2c10 ≠ o, Pr2c10 ≠ se
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ nw
whip[1]: Br2c10{sw .} ==> Pr3c11 ≠ o
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ sw, Br3c10 ≠ s
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ o, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0
whip[1]: Hr1c2{1 .} ==> Br1c2 ≠ sw, Br0c2 ≠ o, Pr1c3 ≠ se, Br1c2 ≠ se, Br1c2 ≠ ew
P-single: Pr1c3 = ew
H-single: Hr1c3 = 1
V-single: Vr1c3 = 0
B-single: Br0c2 = s
w[1]-1-in-r4c6-asymmetric-nw-corner ==> Pr5c7 ≠ sw, Pr5c7 ≠ ew, Pr5c7 ≠ ns, Pr5c7 ≠ ne
w[1]-3-in-r5c7-symmetric-nw-corner ==> Vr5c7 = 1, Hr5c7 = 1
w[1]-3-in-r5c7-closed-nw-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
P-single: Pr9c11 = ns
H-single: Hr9c10 = 0
V-single: Vr8c11 = 1
vertical-line-r8{c10 c11} ==> Ir8c10 = in
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
P-single: Pr3c6 = ew
H-single: Hr3c5 = 1
V-single: Vr3c6 = 0
P-single: Pr2c5 = ew
H-single: Hr2c4 = 1
V-single: Vr2c5 = 0
P-single: Pr1c4 = ew
no-vertical-line-r2{c4 c5} ==> Ir2c4 = out
no-vertical-line-r3{c5 c6} ==> Ir3c5 = in
same-colour-in-{r7 r8}c10 ==> Hr8c10 = 0
P-single: Pr6c9 = ns
H-single: Hr6c8 = 0
V-single: Vr6c9 = 1
P-single: Pr7c10 = ns
H-single: Hr7c9 = 0
V-single: Vr7c10 = 1
P-single: Pr8c11 = ns
vertical-line-r7{c9 c10} ==> Ir7c9 = out
vertical-line-r6{c8 c9} ==> Ir6c8 = in
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ ne, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw
whip[1]: Br1c3{ns .} ==> Pr2c3 ≠ ns
whip[1]: Pr2c3{ew .} ==> Hr2c3 ≠ 0, Br2c2 ≠ sw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br1c3 ≠ ne, Br2c2 ≠ ne
H-single: Hr2c3 = 1
B-single: Br1c3 = ns
P-single: Pr2c4 = ew
V-single: Vr2c4 = 0
no-vertical-line-r2{c3 c4} ==> Ir2c3 = out
whip[1]: Pr2c4{ew .} ==> Br2c3 ≠ ne, Br1c4 ≠ nw, Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ ew
B-single: Br2c4 = ns
H-single: Hr3c4 = 1
P-single: Pr3c5 = ew
V-single: Vr3c5 = 0
B-single: Br1c4 = ns
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
whip[1]: Hr3c4{1 .} ==> Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ sw
whip[1]: Pr3c5{ew .} ==> Br3c4 ≠ ne, Br2c5 ≠ nw, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew
B-single: Br3c5 = ns
H-single: Hr4c5 = 1
B-single: Br2c5 = ns
horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
whip[1]: Hr4c5{1 .} ==> Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw
whip[1]: Br4c5{nw .} ==> Pr5c6 ≠ nw
whip[1]: Pr4c5{ew .} ==> Br4c4 ≠ sw, Br4c4 ≠ ne
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br4c6 ≠ e, Br4c6 ≠ s
whip[1]: Br4c6{w .} ==> Pr4c7 ≠ ns, Pr5c6 ≠ ne, Pr5c7 ≠ nw, Pr4c7 ≠ se, Pr4c7 ≠ sw, Pr5c6 ≠ se, Pr5c6 ≠ ew
whip[1]: Pr5c6{sw .} ==> Br5c6 ≠ nw, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes, Br5c5 ≠ n, Br5c6 ≠ n, Br5c6 ≠ ne, Br5c6 ≠ ns
whip[1]: Br5c5{w .} ==> Hr5c5 ≠ 1, Pr6c5 ≠ ne, Pr5c5 ≠ se, Pr5c6 ≠ sw
H-single: Hr5c5 = 0
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = out
whip[1]: Hr5c5{0 .} ==> Br4c5 ≠ ns
whip[1]: Pr5c5{nw .} ==> Vr5c5 ≠ 1, Br4c4 ≠ ns, Br4c4 ≠ ew, Br5c4 ≠ ne, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c5 ≠ w
V-single: Vr5c5 = 0
w[1]-diagonal-1-1-in-{r5c5...r6c6}-with-no-nw-outer-sides ==> Hr7c6 = 0, Vr6c7 = 0
no-vertical-line-r5{c4 c5} ==> Ir5c4 = out
whip[1]: Vr5c5{0 .} ==> Pr6c5 ≠ ns
whip[1]: Hr7c6{0 .} ==> Pr7c6 ≠ ne, Pr7c6 ≠ ew, Pr7c7 ≠ nw, Br6c6 ≠ s, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ nw
whip[1]: Br6c6{w .} ==> Pr6c7 ≠ sw
whip[1]: Pr6c7{ew .} ==> Br6c7 ≠ nw
whip[1]: Pr7c7{se .} ==> Br6c7 ≠ ew, Br6c7 ≠ sw, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br6c6 ≠ e
whip[1]: Br6c6{w .} ==> Pr6c7 ≠ ns
whip[1]: Pr8c7{ew .} ==> Br8c7 ≠ nw
whip[1]: Br8c7{sw .} ==> Pr9c8 ≠ se
whip[1]: Pr9c8{ew .} ==> Br8c8 ≠ sw, Br9c8 ≠ nw, Br8c8 ≠ ne
whip[1]: Br9c8{sw .} ==> Pr10c9 ≠ se
whip[1]: Pr10c9{ew .} ==> Br9c9 ≠ sw, Br10c8 ≠ sw, Br10c9 ≠ nw, Br9c9 ≠ ne, Br10c8 ≠ ne
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ esw, Br5c7 ≠ nes, Br5c8 ≠ esw, Br6c8 ≠ nw, Br6c8 ≠ se
whip[1]: Br5c7{wne .} ==> Pr5c7 ≠ o, Pr5c8 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c8 ≠ se, Pr6c7 ≠ o, Pr6c7 ≠ ew
P-single: Pr5c7 = se
whip[1]: Pr5c7{se .} ==> Br5c6 ≠ w, Br5c6 ≠ s, Br5c6 ≠ o, Br4c7 ≠ w, Br4c7 ≠ e, Br4c7 ≠ n, Br4c7 ≠ o, Br4c7 ≠ ne, Br4c7 ≠ nw, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br5c6 ≠ sw
whip[1]: Br5c6{esw .} ==> Nr5c6 ≠ 0
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ sw, Br4c8 ≠ swn, Br5c8 ≠ wne
whip[1]: Pr7c8{ew .} ==> Br7c8 ≠ nw
whip[1]: Br7c8{sw .} ==> Pr8c9 ≠ se
whip[1]: Pr8c9{ew .} ==> Br8c9 ≠ nw
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ se
whip[1]: Br4c3{sw .} ==> Pr4c3 ≠ nw
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ se, Br3c3 ≠ sw, Br3c3 ≠ ne
whip[1]: Br3c2{sw .} ==> Pr3c2 ≠ nw
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ ne
whip[1]: Pr6c4{ew .} ==> Br6c3 ≠ wne
whip[1]: Br6c3{ew .} ==> Nr6c3 ≠ 3
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Pr9c11{ns .} ==> Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ sw, Br9c10 ≠ ne, Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ sw
whip[1]: Br9c10{ew .} ==> Pr9c10 ≠ ew
whip[1]: Pr9c10{nw .} ==> Vr8c10 ≠ 0, Br8c9 ≠ ns, Br8c9 ≠ sw, Br8c10 ≠ ne
V-single: Vr8c10 = 1
B-single: Br8c10 = ew
P-single: Pr8c10 = ns
H-single: Hr8c9 = 0
no-horizontal-line-{r7 r8}c9 ==> Ir8c9 = out
whip[1]: Pr8c10{ns .} ==> Br7c9 ≠ ns, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c10 ≠ se, Br8c9 ≠ ne
B-single: Br7c10 = ew
B-single: Br7c9 = ew
V-single: Vr7c9 = 1
P-single: Pr7c9 = ns
H-single: Hr7c8 = 0
no-horizontal-line-{r6 r7}c8 ==> Ir7c8 = in
whip[1]: Vr7c9{1 .} ==> Br7c8 ≠ ns, Br7c8 ≠ sw
whip[1]: Pr7c9{ns .} ==> Br6c8 ≠ ns, Br6c9 ≠ se, Br7c8 ≠ ne
B-single: Br6c9 = ew
B-single: Br6c8 = ew
V-single: Vr6c8 = 1
vertical-line-r6{c7 c8} ==> Ir6c7 = out
no-vertical-line-r6{c6 c7} ==> Ir6c6 = out
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = out
whip[1]: Vr6c8{1 .} ==> Br6c7 ≠ ns
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ se, Br5c8 ≠ nes
whip[1]: Br5c8{ew .} ==> Nr5c8 ≠ 3
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Vr2c1{1 .} ==> Br2c1 ≠ ns, Br2c0 ≠ o, Pr3c1 ≠ se, Br2c1 ≠ ne
w[1]-3-in-r6c4-asymmetric-nw-corner ==> Vr6c5 = 1, Hr7c4 = 1, Vr7c5 = 0, Hr7c5 = 0
P-single: Pr3c1 = ns
H-single: Hr3c1 = 0
V-single: Vr3c1 = 1
B-single: Br2c0 = e
vertical-line-r3{c0 c1} ==> Ir3c1 = in
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
P-single: Pr6c3 = ns
H-single: Hr6c3 = 0
V-single: Vr5c3 = 1
P-single: Pr5c2 = ns
H-single: Hr5c2 = 0
V-single: Vr4c2 = 1
P-single: Pr4c1 = ns
vertical-line-r4{c1 c2} ==> Ir4c2 = out
vertical-line-r5{c2 c3} ==> Ir5c3 = in
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
whip[1]: Vr6c5{1 .} ==> Br6c5 ≠ o, Pr6c5 ≠ o, Pr6c5 ≠ ew, Pr7c5 ≠ o, Pr7c5 ≠ se, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Br6c4 ≠ swn, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ s, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ nes
whip[1]: Br6c5{wne .} ==> Nr6c5 ≠ 0
whip[1]: Br6c4{nes .} ==> Pr7c4 ≠ o
whip[1]: Pr7c4{se .} ==> Br7c4 ≠ s
whip[1]: Pr7c5{nw .} ==> Br7c4 ≠ wne
whip[1]: Br7c4{ew .} ==> Nr7c4 ≠ 3
whip[1]: Hr7c4{1 .} ==> Pr7c4 ≠ ns, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Br6c4 ≠ wne, Br7c4 ≠ w, Br7c4 ≠ ew
P-single: Pr7c5 = nw
w[1]-1-in-r7c5-symmetric-nw-corner ==> Pr8c6 ≠ se, Pr8c6 ≠ nw
P-single: Pr11c9 = ew
H-single: Hr11c8 = 1
V-single: Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c8 = in
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
P-single: Pr9c6 = ew
H-single: Hr9c6 = 1
V-single: Vr8c6 = 0
P-single: Pr10c7 = ew
H-single: Hr10c7 = 1
V-single: Vr9c7 = 0
P-single: Pr11c8 = ew
no-vertical-line-r9{c6 c7} ==> Ir9c7 = out
no-vertical-line-r8{c5 c6} ==> Ir8c6 = in
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
whip[1]: Pr7c5{nw .} ==> Br7c5 ≠ n, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn, Br7c5 ≠ w
whip[1]: Br7c5{s .} ==> Pr8c5 ≠ ns, Pr7c6 ≠ nw, Pr7c6 ≠ sw
whip[1]: Pr11c9{ew .} ==> Br10c9 ≠ ne, Br11c9 ≠ o, Br11c8 ≠ o, Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c9 ≠ ew, Br10c9 ≠ sw
B-single: Br10c8 = ns
H-single: Hr10c8 = 1
P-single: Pr10c8 = ew
V-single: Vr9c8 = 0
B-single: Br11c8 = n
B-single: Br11c9 = n
no-vertical-line-r9{c7 c8} ==> Ir9c8 = out
whip[1]: Hr10c8{1 .} ==> Br9c8 ≠ ne, Br9c8 ≠ ew
whip[1]: Pr10c8{ew .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ ew, Br9c8 ≠ sw, Br10c7 ≠ se
B-single: Br10c7 = ns
B-single: Br9c7 = ns
H-single: Hr9c7 = 1
P-single: Pr9c7 = ew
V-single: Vr8c7 = 0
no-vertical-line-r8{c6 c7} ==> Ir8c7 = in
whip[1]: Hr9c7{1 .} ==> Br8c7 ≠ ne, Br8c7 ≠ ew
whip[1]: Pr9c7{ew .} ==> Br8c6 ≠ nw, Br8c6 ≠ se, Br8c6 ≠ ew, Br8c7 ≠ sw, Br9c6 ≠ se
B-single: Br9c6 = ns
B-single: Br8c6 = ns
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ ew, Br8c5 ≠ esw
whip[1]: Br7c4{nw .} ==> Nr7c4 ≠ 1
N-single: Nr7c4 = 2
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ sw, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se
B-single: Br3c1 = ew
V-single: Vr3c2 = 1
P-single: Pr4c2 = ns
H-single: Hr4c2 = 0
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = out
whip[1]: Vr3c2{1 .} ==> Br3c2 ≠ ne, Br3c2 ≠ ns
whip[1]: Pr4c2{ns .} ==> Br3c2 ≠ sw, Br4c1 ≠ nw, Br4c2 ≠ ns, Br4c2 ≠ nw, Br4c2 ≠ se
B-single: Br4c2 = ew
V-single: Vr4c3 = 1
P-single: Pr5c3 = ns
H-single: Hr5c3 = 0
B-single: Br4c1 = ew
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
whip[1]: Vr4c3{1 .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns
whip[1]: Pr5c3{ns .} ==> Br4c3 ≠ sw, Br5c2 ≠ nw, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ se
B-single: Br5c3 = ew
B-single: Br5c2 = ew
whip[1]: Pr5c4{se .} ==> Br5c4 ≠ ns
whip[1]: Pr6c4{ns .} ==> Br6c3 ≠ nw
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Br3c8{w .} ==> Pr3c9 ≠ sw, Pr4c8 ≠ ne, Pr4c9 ≠ nw, Pr3c8 ≠ se
whip[1]: Pr10c10{se .} ==> Br9c9 ≠ ew, Br9c9 ≠ ns
whip[1]: Pr9c9{se .} ==> Br8c8 ≠ ew, Br8c8 ≠ ns
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ ew, Br3c3 ≠ ns
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ew, Br2c2 ≠ ns
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
Entering_level_W2_with_<Fact-159017>
Entering_level_W3_with_<Fact-161518>
whip[3]: Pr3c8{sw ns} - Br2c7{w e} - Pr3c7{nw .} ==> Br3c7 ≠ e
whip[3]: Pr3c8{sw ns} - Br2c7{w e} - Pr3c7{nw .} ==> Br3c7 ≠ se
whip[3]: Pr2c9{ns nw} - Br1c9{swn wne} - Pr1c9{sw .} ==> Br1c8 ≠ nes
whip[1]: Br1c8{se .} ==> Nr1c8 ≠ 3
Entering_level_W4_with_<Fact-169910>
Entering_level_W5_with_<Fact-197551>
whip[5]: Pr5c10{se sw} - Br4c10{ns ne} - Pr4c10{sw ne} - Br3c10{nes esw} - Pr4c11{ns .} ==> Br4c9 ≠ s
whip[5]: Br2c8{e nw} - Pr2c9{ns nw} - Br2c9{sw se} - Pr3c9{nw se} - Br3c8{n .} ==> Pr3c8 ≠ ns
whip[1]: Pr3c8{sw .} ==> Br2c8 ≠ nw, Br3c7 ≠ ew, Br3c7 ≠ esw
GRID 0 NOT SOLVED. 739 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.....———.———.———.———.———.................
: 2 : 2   2   2   2     : 1     | 3 :   :
.........———.———.———.———.   .............
| 2 : 2 : 2   2   2     : 1 :   : 2 : 2 :
.   .........———.———.———.................
| 2 | 2 : 2 : 2   2     :   : 1 :   :   :
.   .   .........———.....................
| 2 | 2 | 2 : 2 : 2 : 1     :   :   : 2 :
.   .   .   .....   .   .———.............
| 2 | 2 | 2 | 2   1 :   | 3 :   |   |   |
.   .   .   .................   .   .   .
|   |   |   : 3 |   : 1   2 | 2 | 2 | 2 |
.   .   .   .———.   .   .....   .   .   .
| 3 |   |   :     1 : 2 : 2 : 2 | 2 | 2 |
.———.   .   .........———.........   .   .
        | 2 |   |     2   2 : 2 : 2 | 2 |
.———.———.   .   .———.———.———.........   .
| 2   1     | 1       2   2   2 : 2 : 2 |
.   .   .———.   .———.———.———.———.........
|     2 |     1 |     2   2   2   2 : 2 :
.———.———.   .   .———.———.———.———.———.....

init-time = 5m 13.12s, solve-time = 2m 9.39s, total-time = 7m 22.51s
nb-facts=<Fact-289550>
Quasi-Loop max length = 10
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


Manual finish:

.....———.———.———.———.———.................
: 2 : 2   2   2   2     : 1     | 3 :   :
.........———.———.———.———.   .   .........
| 2 : 2 : 2   2   2     : 1     : 2 : 2 :
.   .........———.———.———.................
| 2 | 2 : 2 : 2   2         : 1 :   :   :
.   .   .........———.....................
| 2 | 2 | 2 : 2 : 2 : 1     :   :   : 2 :
.   .   .   .....   .   .———.............
| 2 | 2 | 2 | 2   1 :   | 3 :   |   |   |
.   .   .   .................   .   .   .
|   |   |   : 3 |   : 1   2 | 2 | 2 | 2 |
.   .   .   .———.   .   .....   .   .   .
| 3 |   |   :     1 : 2 : 2 : 2 | 2 | 2 |
.———.   .   .........———.........   .   .
        | 2 |   |     2   2 : 2 : 2 | 2 |
.———.———.   .   .———.———.———.........   .
| 2   1     | 1       2   2   2 : 2 : 2 |
.   .   .———.   .———.———.———.———.........
|     2 |     1 |     2   2   2   2 : 2 :
.———.———.   .   .———.———.———.———.———.....



Vr1c7 = 1 ==> dead end

.....———.———.———.———.———.   .   .———.....
: 2 : 2   2   2   2     | 1     | 3 :   :
.........———.———.———.———.   .   .........
| 2 : 2 : 2   2   2       1     : 2 : 2 :
.   .........———.———.———.   .............
| 2 | 2 : 2 : 2   2         : 1 :   :   :
.   .   .........———.....................
| 2 | 2 | 2 : 2 : 2 : 1     :   :   : 2 :
.   .   .   .....   .   .———.............
| 2 | 2 | 2 | 2   1 :   | 3 :   |   |   |
.   .   .   .................   .   .   .
|   |   |   : 3 |   : 1   2 | 2 | 2 | 2 |
.   .   .   .———.   .   .....   .   .   .
| 3 |   |   :     1 : 2 : 2 : 2 | 2 | 2 |
.———.   .   .........———.........   .   .
        | 2 |   |     2   2 : 2 : 2 | 2 |
.———.———.   .   .———.———.———.........   .
| 2   1     | 1       2   2   2 : 2 : 2 |
.   .   .———.   .———.———.———.———.........
|     2 |     1 |     2   2   2   2 : 2 :
.———.———.   .   .———.———.———.———.———.....



therefore Vr1c7 =0 :

.....———.———.———.———.———.———.———.   .———.
: 2 : 2   2   2   2       1     | 3 |   |
....+....———.———.———.———.   .   .———.   .
| 2 : 2 : 2   2   2     | 1       2   2 |
.   ....+....———.———.———.   .   .———.———.
| 2 | 2 : 2 : 2   2           1 |
.   .   ....+....———.........   .........
| 2 | 2 | 2 : 2 : 2 : 1     :   :   : 2 :
.   .   .   .....   .   .———.............
| 2 | 2 | 2 | 2   1 :   | 3 :   |   |   |
.   .   .   .................   .   .   .
|   |   |   : 3 |   : 1   2 | 2 | 2 | 2 |
.   .   .   .———.   .   .....   .   .   .
| 3 |   |   :     1 : 2 : 2 : 2 | 2 | 2 |
.———.   .   .........———.........   .   .
        | 2 |   |     2   2 : 2 : 2 | 2 |
.———.———.   .   .———.———.———.........   .
| 2   1     | 1       2   2   2 : 2 : 2 |
.   .   .———.   .———.———.———.———.........
|     2 |     1 |     2   2   2   2 : 2 :
.———.———.   .   .———.———.———.———.———.....


two possibilities at the upper left corner:


.   .———.———.———.———.———.———.———.   .———.
  2 | 2   2   2   2       1     | 3 |   |
.———.   .———.———.———.———.   .   .———.   .
| 2   2 | 2   2   2     | 1       2   2 |
.   .———.   .———.———.———.   .   .———.———.
| 2 | 2   2 | 2   2           1 |
.   .   .———.   .———.———.———.   .........
| 2 | 2 | 2   2 | 2   1     |   :   : 2 :
.   .   .   .———.   .   .———.   .........
| 2 | 2 | 2 | 2   1     | 3     |   |   |
.   .   .   .   .———.   .———.   .   .   .
|   |   |   | 3 |   | 1   2 | 2 | 2 | 2 |
.   .   .   .———.   .   .....   .   .   .
| 3 |   |         1   2 : 2 : 2 | 2 | 2 |
.———.   .   .   .———.———.........   .   .
        | 2 |   |     2   2 : 2 : 2 | 2 |
.———.———.   .   .———.———.———.........   .
| 2   1     | 1       2   2   2 : 2 : 2 |
.   .   .———.   .———.———.———.———.........
|     2 |     1 |     2   2   2   2 : 2 :
.———.———.   .   .———.———.———.———.———.....

==> dead end


or


.———.———.———.———.———.———.———.———.   .———.
| 2   2   2   2   2       1     | 3 |   |
.   +———.———.———.———.———.   .   .———.   .
| 2 | 2   2   2   2     | 1       2   2 |
.   .   +———.———.———.———.   .   .———.———.
| 2 | 2 | 2   2   2           1 |
.   .   .   +———.———.   .   .   .———.———.
| 2 | 2 | 2 | 2   2 | 1               2 |
.   .   .   .   .   .   .———.   .———.   .
| 2 | 2 | 2 | 2   1 |   | 3 |   |   |   |
.   .   .   .———.   .———.   .   .   .   .
|   |   |     3 |     1   2 | 2 | 2 | 2 |
.   .   .   .———.   .   .———.   .   .   .
| 3 |   |   |     1   2 | 2   2 | 2 | 2 |
.———.   .   .   .———.———.   .———.   .   .
        | 2 |   |     2   2 | 2   2 | 2 |
.———.———.   .   .———.———.———.   .———.   .
| 2   1     | 1       2   2   2 | 2   2 |
.   .   .———.   .———.———.———.———.   +———.
|     2 |     1 |     2   2   2   2 | 2
.———.———.   .   .———.———.———.———.———.   .


solution



