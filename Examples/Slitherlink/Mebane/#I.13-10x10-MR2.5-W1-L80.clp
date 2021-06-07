Mellon rating = 2.5



(solve 
10 10 
. . 1 . . 1 1 1 1 . 
1 . . 1 . 1 . . 1 . 
1 1 1 1 1 1 1 . . . 
. 1 . . . 1 1 . 1 1 
1 1 1 1 . 1 0 . . . 
. . . 1 1 . 1 1 1 1 
1 1 . 1 1 . . . 1 . 
. . . 1 1 1 1 1 1 1 
. 1 . . 1 . 1 . . 1
. 1 1 1 1 . . 1 . . 

)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 1 . . 1 1 1 1 .
1 . . 1 . 1 . . 1 .
1 1 1 1 1 1 1 . . .
. 1 . . . 1 1 . 1 1
1 1 1 1 . 1 0 . . .
. . . 1 1 . 1 1 1 1
1 1 . 1 1 . . . 1 .
. . . 1 1 1 1 1 1 1
. 1 . . 1 . 1 . . 1
. 1 1 1 1 . . 1 . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.539326906204224
start solution 0.551024913787842
entering BRT
w[0]-0-in-r5c7 ==> Hr6c7 = 0, Hr5c7 = 0, Vr5c8 = 0, Vr5c7 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c4 c5} ==> Vr10c5 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c3 c4} ==> Vr10c4 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c2 c3} ==> Vr10c3 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c8 c9} ==> Vr1c9 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c7 c8} ==> Vr1c8 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c6 c7} ==> Vr1c7 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r8 r9} ==> Hr9c10 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r2 r3} ==> Hr3c1 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r6{c7 c8} ==> Vr6c8 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r4{c6 c7} ==> Vr4c7 = 0
w[1]-diagonal-1-1-in-{r4c7...r5c6}-with-no-sw-inner-sides ==> Hr5c6 = 0
w[1]-diagonal-1-1-in-{r4c6...r3c5}-with-no-se-outer-sides ==> Hr3c5 = 0, Vr3c5 = 0
w[1]-diagonal-1-1-in-{r3c5...r2c4}-with-no-nw-inner-sides ==> Hr3c4 = 0, Vr2c5 = 0
w[1]-diagonal-1-1-in-{r2c4...r1c3}-with-no-se-outer-sides ==> Hr1c3 = 0, Vr1c3 = 0
w[1]-diagonal-1-1-in-{r5c6...r6c5}-with-no-ne-outer-sides ==> Hr7c5 = 0, Vr6c5 = 0
w[1]-diagonal-1-1-in-{r6c5...r7c4}-with-no-sw-inner-sides ==> Hr7c4 = 0, Vr7c5 = 0
w[1]-diagonal-1-1-in-{r7c5...r8c6}-with-no-nw-outer-sides ==> Hr9c6 = 0, Vr8c7 = 0
w[1]-diagonal-1-1-in-{r8c6...r9c7}-with-no-se-inner-sides ==> Hr9c7 = 0, Vr9c7 = 0
w[1]-diagonal-1-1-in-{r9c7...r10c8}-with-no-nw-outer-sides ==> Hr11c8 = 0, Vr10c9 = 0
w[1]-diagonal-1-1-in-{r6c4...r5c3}-with-no-se-outer-sides ==> Hr5c3 = 0, Vr5c3 = 0
w[1]-diagonal-1-1-in-{r5c3...r4c2}-with-no-nw-inner-sides ==> Hr5c2 = 0, Vr4c3 = 0
w[1]-diagonal-1-1-in-{r4c2...r3c1}-with-no-se-outer-sides ==> Vr3c1 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c2 c3} ==> Vr3c3 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r8 r9} ==> Hr9c5 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r8{c4 c5} ==> Vr8c5 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c6{r2 r3} ==> Hr3c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c6 c7} ==> Vr3c7 = 0
entering level Loop with <Fact-92657>
entering level Col with <Fact-92735>
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
no-vertical-line-r10{c8 c9} ==> Ir10c9 = out
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
no-vertical-line-r1{c2 c3} ==> Ir1c2 = out
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
Starting_init_links_with_<Fact-92745>
1008 candidates, 7319 csp-links and 31591 links. Density = 6.22%
starting non trivial part of solution
Entering_level_W1_with_<Fact-170570>
whip[1]: Vr2c1{0 .} ==> Br2c1 ≠ w, Br2c0 ≠ e, Pr2c1 ≠ ns, Pr2c1 ≠ se, Pr3c1 ≠ ne, Pr3c1 ≠ ns
B-single: Br2c0 = o
w[1]-1-in-r3c1-symmetric-nw-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
w[1]-1-in-r4c2-asymmetric-nw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ew, Pr5c3 ≠ ns, Pr5c3 ≠ ne
w[1]-1-in-r5c3-symmetric-nw-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ o
w[1]-1-in-r6c4-asymmetric-nw-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ew, Pr7c5 ≠ ns, Pr7c5 ≠ ne
w[1]-1-in-r7c5-symmetric-nw-corner ==> Pr8c6 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ o
w[1]-1-in-r8c6-asymmetric-nw-corner ==> Pr9c7 ≠ sw, Pr9c7 ≠ ew, Pr9c7 ≠ ns, Pr9c7 ≠ ne
w[1]-1-in-r9c7-symmetric-nw-corner ==> Pr10c8 ≠ se, Pr10c8 ≠ nw, Pr10c8 ≠ o
w[1]-1-in-r10c8-asymmetric-nw-corner ==> Pr11c9 ≠ ew, Pr11c9 ≠ ne
whip[1]: Pr11c9{nw .} ==> Br11c9 ≠ n, Br10c9 ≠ ns, Br10c9 ≠ se, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ nes, Br10c8 ≠ e, Br10c8 ≠ s, Br10c9 ≠ s
B-single: Br11c9 = o
whip[1]: Br11c9{o .} ==> Pr11c10 ≠ nw, Pr11c10 ≠ ew
whip[1]: Pr11c10{ne .} ==> Br10c10 ≠ w, Br10c10 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ nes
whip[1]: Br10c10{esw .} ==> Pr10c11 ≠ sw, Pr10c10 ≠ se, Nr10c10 ≠ 2
whip[1]: Pr10c11{nw .} ==> Br9c10 ≠ s
whip[1]: Br9c10{w .} ==> Hr10c10 ≠ 1, Pr10c11 ≠ nw, Pr10c10 ≠ ne, Pr9c11 ≠ sw, Pr9c10 ≠ se, Pr10c10 ≠ ew
H-single: Hr10c10 = 0
whip[1]: Hr10c10{0 .} ==> Br10c10 ≠ n
whip[1]: Br10c10{esw .} ==> Nr10c10 ≠ 1
whip[1]: Pr9c11{nw .} ==> Br8c10 ≠ s
whip[1]: Br8c10{w .} ==> Pr9c11 ≠ nw, Pr9c10 ≠ ne, Pr8c11 ≠ sw, Pr8c10 ≠ se, Pr9c10 ≠ ew
whip[1]: Pr9c10{sw .} ==> Br9c10 ≠ n
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ ns, Br7c10 ≠ sw, Br7c10 ≠ swn, Br7c10 ≠ s
whip[1]: Br10c8{w .} ==> Pr11c8 ≠ ne, Pr11c9 ≠ nw, Pr10c9 ≠ ns, Pr11c8 ≠ ew, Pr10c9 ≠ se, Pr10c9 ≠ sw
P-single: Pr11c9 = o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n, Br10c9 ≠ w, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ wne
B-single: Br11c8 = o
whip[1]: Br10c9{ne .} ==> Nr10c9 ≠ 3
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ n, Br9c7 ≠ w
whip[1]: Br9c7{s .} ==> Pr10c7 ≠ ne, Pr10c7 ≠ ns, Pr9c7 ≠ se, Pr9c8 ≠ nw, Pr9c8 ≠ ew, Pr9c8 ≠ sw, Pr10c7 ≠ nw
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ esw, Br9c6 ≠ wne, Br9c6 ≠ nes, Br9c6 ≠ e, Br9c6 ≠ ne
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ s
whip[1]: Br8c7{w .} ==> Pr8c7 ≠ se, Pr8c8 ≠ sw
whip[1]: Pr9c7{nw .} ==> Br8c6 ≠ e, Br8c6 ≠ s
whip[1]: Br8c6{w .} ==> Pr8c7 ≠ ns, Pr9c6 ≠ ne, Pr9c7 ≠ nw, Pr8c7 ≠ sw, Pr9c6 ≠ se, Pr9c6 ≠ ew
P-single: Pr9c7 = o
w[1]-1-in-r8c7-symmetric-sw-corner ==> Pr8c8 ≠ ne, Pr8c8 ≠ o
whip[1]: Pr9c7{o .} ==> Br8c7 ≠ w, Br9c6 ≠ n, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ swn
whip[1]: Br9c6{sw .} ==> Nr9c6 ≠ 3
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ e, Br7c8 ≠ ne
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Pr8c6{sw .} ==> Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Br7c5{s .} ==> Pr8c5 ≠ ne, Pr8c5 ≠ ns, Pr7c5 ≠ se, Pr7c6 ≠ nw, Pr7c6 ≠ ew, Pr7c6 ≠ sw, Pr8c5 ≠ nw
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ e
whip[1]: Br7c4{w .} ==> Pr8c4 ≠ ne, Pr7c4 ≠ se
whip[1]: Pr7c6{se .} ==> Br6c5 ≠ s
whip[1]: Br6c5{w .} ==> Pr6c5 ≠ se, Pr6c6 ≠ sw
whip[1]: Pr7c5{nw .} ==> Br6c4 ≠ e, Br6c4 ≠ s
whip[1]: Br6c4{w .} ==> Pr6c5 ≠ ns, Pr7c4 ≠ ne, Pr7c5 ≠ nw, Pr6c5 ≠ sw, Pr7c4 ≠ ew
P-single: Pr7c5 = o
w[1]-1-in-r6c5-symmetric-sw-corner ==> Pr6c6 ≠ ne, Pr6c6 ≠ o
w[1]-1-in-r7c4-symmetric-ne-corner ==> Pr8c4 ≠ sw, Pr8c4 ≠ o
w[1]-1-in-r5c6-asymmetric-sw-corner ==> Pr5c7 ≠ ew, Pr5c7 ≠ se, Pr5c7 ≠ nw, Pr5c7 ≠ ns
w[1]-1-in-r4c7-symmetric-sw-corner ==> Pr4c8 ≠ sw, Pr4c8 ≠ ne, Pr4c8 ≠ o
whip[1]: Pr7c5{o .} ==> Br6c5 ≠ w, Br7c4 ≠ n
whip[1]: Pr4c8{ew .} ==> Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn, Br3c8 ≠ o, Br3c8 ≠ n, Br3c8 ≠ e, Br3c8 ≠ ne, Br4c7 ≠ s, Br4c7 ≠ w
whip[1]: Br4c7{e .} ==> Hr5c7 ≠ 1, Pr5c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ se, Pr4c7 ≠ sw, Pr5c8 ≠ nw, Pr5c8 ≠ ew, Pr5c8 ≠ sw
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ e
whip[1]: Br4c6{w .} ==> Pr5c6 ≠ ne, Pr4c6 ≠ se
whip[1]: Pr5c7{sw .} ==> Br5c6 ≠ n, Br5c6 ≠ e
whip[1]: Br5c6{w .} ==> Vr5c7 ≠ 1, Pr6c7 ≠ ne, Pr6c7 ≠ ns, Pr6c7 ≠ nw, Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c7 ≠ sw
P-single: Pr5c7 = o
w[1]-1-in-r4c6-symmetric-se-corner ==> Pr4c6 ≠ nw, Pr4c6 ≠ o
w[1]-1-in-r3c5-asymmetric-se-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ew, Pr3c5 ≠ ns, Pr3c5 ≠ ne
w[1]-1-in-r2c4-symmetric-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
w[1]-1-in-r1c3-asymmetric-se-corner ==> Pr1c3 ≠ sw, Pr1c3 ≠ ew
whip[1]: Pr5c7{o .} ==> Br4c6 ≠ s
whip[1]: Pr1c3{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ swn, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c2 ≠ n, Br1c3 ≠ n, Br1c3 ≠ w
whip[1]: Br1c3{s .} ==> Pr2c3 ≠ ne, Pr2c3 ≠ ns, Pr1c3 ≠ se, Pr1c4 ≠ ew, Pr1c4 ≠ sw, Pr2c3 ≠ nw
P-single: Pr1c3 = o
whip[1]: Pr1c3{o .} ==> Br1c2 ≠ e, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw
whip[1]: Br1c2{sw .} ==> Pr1c2 ≠ se, Pr1c2 ≠ ew, Nr1c2 ≠ 3
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ swn, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Pr2c1 ≠ ne, Pr2c2 ≠ nw, Nr1c1 ≠ 2
P-single: Pr2c1 = o
w[1]-1-in-r2c1-symmetric-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-1-in-r3c2-asymmetric-nw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ew, Pr4c3 ≠ ns, Pr4c3 ≠ ne
whip[1]: Pr2c1{o .} ==> Vr1c1 ≠ 1, Hr2c1 ≠ 1, Br1c1 ≠ s, Br1c1 ≠ wne, Br2c1 ≠ n
H-single: Hr2c1 = 0
V-single: Vr1c1 = 0
w[1]-diagonal-1-1-in-{r2c1...r3c2}-with-no-nw-outer-sides ==> Hr4c2 = 0
w[1]-diagonal-1-1-in-{r4c2...r3c3}-with-no-ne-inner-sides ==> Hr4c3 = 0
w[1]-diagonal-1-1-in-{r3c3...r2c4}-with-no-sw-outer-sides ==> Hr2c4 = 0
w[1]-diagonal-1-1-in-{r4c2...r5c1}-with-no-ne-outer-sides ==> Hr6c1 = 0, Vr5c1 = 0
B-single: Br1c1 = o
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
no-horizontal-line-{r5 r6}c1 ==> Ir6c1 = out
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
whip[1]: Hr2c1{0 .} ==> Pr2c2 ≠ ew, Pr2c2 ≠ sw
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e, Pr1c1 ≠ se
P-single: Pr1c1 = o
B-single: Br1c0 = o
whip[1]: Hr4c2{0 .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ew, Pr4c3 ≠ nw, Br3c2 ≠ s, Br4c2 ≠ n
whip[1]: Br4c2{w .} ==> Pr5c2 ≠ ne, Pr5c3 ≠ nw
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c2 ≠ e, Br4c2 ≠ s, Br4c3 ≠ w, Br5c2 ≠ n, Br5c3 ≠ n, Br5c3 ≠ w
B-single: Br4c2 = w
whip[1]: Br4c2{w .} ==> Pr5c2 ≠ o, Vr4c2 ≠ 0, Pr4c3 ≠ se, Pr5c2 ≠ se, Pr5c2 ≠ ew, Pr5c2 ≠ sw
V-single: Vr4c2 = 1
P-single: Pr4c3 = o
w[1]-1-in-r3c3-symmetric-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
w[1]-1-in-r2c4-asymmetric-sw-corner ==> Pr2c5 ≠ ew, Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ ns
w[1]-1-in-r5c1-asymmetric-ne-corner ==> Pr6c1 ≠ se, Pr6c1 ≠ ns
whip[1]: Vr4c2{1 .} ==> Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ sw, Br4c1 ≠ swn
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ e, Br3c3 ≠ s, Br3c3 ≠ w, Br4c3 ≠ n, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nes
whip[1]: Br4c3{se .} ==> Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Nr4c3 ≠ 3
whip[1]: Br3c3{e .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ sw
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br6c1 ≠ w, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c1 ≠ wne
whip[1]: Br6c1{nes .} ==> Pr7c1 ≠ ne, Pr7c1 ≠ ns
w[1]-1-in-r7c1-symmetric-nw-corner ==> Pr8c2 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ o
whip[1]: Pr8c2{sw .} ==> Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ swn, Br8c2 ≠ wne, Br7c1 ≠ n, Br7c1 ≠ w, Br8c2 ≠ o, Br8c2 ≠ e, Br8c2 ≠ s
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 0
whip[1]: Br7c1{s .} ==> Hr7c1 ≠ 1, Vr7c1 ≠ 1, Pr8c1 ≠ ne, Pr8c1 ≠ ns, Pr7c1 ≠ se, Pr7c2 ≠ nw, Pr7c2 ≠ ew, Pr7c2 ≠ sw
V-single: Vr7c1 = 0
H-single: Hr7c1 = 0
P-single: Pr7c1 = o
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = out
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Hr7c1{0 .} ==> Br6c1 ≠ s, Br6c1 ≠ ns, Br6c1 ≠ se, Br6c1 ≠ nes
whip[1]: Br6c1{ne .} ==> Nr6c1 ≠ 3
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ ns, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ nes, Br8c1 ≠ n, Br8c1 ≠ w
whip[1]: Br5c1{e .} ==> Pr6c1 ≠ ne, Pr5c1 ≠ ns, Pr5c1 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ ew, Pr6c2 ≠ sw
P-single: Pr6c1 = o
whip[1]: Pr6c1{o .} ==> Br6c1 ≠ n, Br6c1 ≠ ne
whip[1]: Br6c1{e .} ==> Nr6c1 ≠ 2
whip[1]: Pr5c1{ne .} ==> Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ wne, Br4c1 ≠ nes
whip[1]: Br4c1{esw .} ==> Pr4c1 ≠ se
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ s
whip[1]: Br3c1{w .} ==> Hr4c1 ≠ 1, Pr4c1 ≠ ne, Pr3c1 ≠ se, Pr3c2 ≠ sw, Pr4c2 ≠ sw
H-single: Hr4c1 = 0
P-single: Pr4c2 = ns
P-single: Pr3c1 = o
w[1]-1-in-r2c1-symmetric-sw-corner ==> Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-1-in-r3c2-asymmetric-sw-corner ==> Pr3c3 ≠ ew, Pr3c3 ≠ nw
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
vertical-line-r4{c1 c2} ==> Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
same-colour-in-r4{c0 c1} ==> Vr4c1 = 0
whip[1]: Hr4c1{0 .} ==> Br4c1 ≠ ne
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 2
whip[1]: Pr4c2{ns .} ==> Br3c2 ≠ n, Br3c1 ≠ n, Br3c1 ≠ w
B-single: Br3c1 = e
B-single: Br3c2 = w
whip[1]: Br3c1{e .} ==> Pr3c2 ≠ ne, Pr4c1 ≠ ns, Pr3c2 ≠ ew
P-single: Pr3c2 = ns
P-single: Pr4c1 = o
whip[1]: Pr3c2{ns .} ==> Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Vr2c2 ≠ 0, Hr3c2 ≠ 1, Br2c1 ≠ s, Br2c2 ≠ s, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ se, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ nes
H-single: Hr3c2 = 0
V-single: Vr2c2 = 1
B-single: Br2c1 = e
vertical-line-r2{c1 c2} ==> Ir2c2 = in
different-colours-in-{r1 r2}c2 ==> Hr2c2 = 1
whip[1]: Hr2c2{1 .} ==> Br1c2 ≠ o, Pr2c2 ≠ ns, Pr2c3 ≠ o, Pr2c3 ≠ se, Br1c2 ≠ w, Br2c2 ≠ w, Br2c2 ≠ ew
P-single: Pr2c2 = se
whip[1]: Pr2c2{se .} ==> Br1c2 ≠ sw
B-single: Br1c2 = s
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 2, Nr1c2 ≠ 0, Pr1c2 ≠ sw
N-single: Nr1c2 = 1
P-single: Pr1c2 = o
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0, Nr2c2 ≠ 1
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ o, Br2c3 ≠ e, Br2c3 ≠ s
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Pr4c1{o .} ==> Br4c1 ≠ esw
B-single: Br4c1 = e
whip[1]: Br4c1{e .} ==> Pr5c1 ≠ ne, Pr5c2 ≠ nw, Nr4c1 ≠ 3
N-single: Nr4c1 = 1
w[1]-diagonal-1-1-in-{r4c1...r5c2}-with-no-nw-outer-sides ==> Hr6c2 = 0
P-single: Pr5c2 = ns
P-single: Pr5c1 = o
w[1]-1-in-r5c1-symmetric-nw-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ o
w[1]-1-in-r5c2-asymmetric-nw-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ew, Pr6c3 ≠ ns, Pr6c3 ≠ ne
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
whip[1]: Hr6c2{0 .} ==> Pr6c2 ≠ ne, Pr6c3 ≠ nw, Br5c2 ≠ s, Br6c2 ≠ n, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes
P-single: Pr6c2 = ns
w[1]-1-in-r5c2-asymmetric-sw-corner ==> Pr5c3 ≠ se
P-single: Pr5c3 = o
whip[1]: Pr6c2{ns .} ==> Br6c2 ≠ e, Br6c2 ≠ o, Br6c1 ≠ o, Br5c2 ≠ e, Br5c1 ≠ n, Br6c2 ≠ s, Br6c2 ≠ se
B-single: Br5c1 = e
B-single: Br5c2 = w
B-single: Br6c1 = e
whip[1]: Br6c1{e .} ==> Nr6c1 ≠ 0, Pr7c2 ≠ o, Pr7c2 ≠ se
N-single: Nr6c1 = 1
w[1]-diagonal-1-1-in-{r6c1...r7c2}-with-no-nw-outer-sides ==> Hr8c2 = 0, Vr7c3 = 0
w[1]-1-in-r7c2-asymmetric-nw-corner ==> Pr8c3 ≠ sw, Pr8c3 ≠ ew, Pr8c3 ≠ ns, Pr8c3 ≠ ne
whip[1]: Hr8c2{0 .} ==> Pr8c2 ≠ ne, Pr8c2 ≠ ew, Pr8c3 ≠ nw, Br7c2 ≠ s, Br8c2 ≠ n, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ nes
whip[1]: Br8c2{esw .} ==> Vr8c2 ≠ 0, Pr9c2 ≠ o, Pr9c2 ≠ se, Pr9c2 ≠ ew, Pr9c2 ≠ sw
V-single: Vr8c2 = 1
whip[1]: Vr8c2{1 .} ==> Br8c1 ≠ o, Br8c1 ≠ s, Br8c1 ≠ nw, Br8c1 ≠ swn
whip[1]: Br8c1{wne .} ==> Pr9c1 ≠ ne, Nr8c1 ≠ 0
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ nes, Br9c1 ≠ n
whip[1]: Pr9c2{nw .} ==> Br9c1 ≠ wne
whip[1]: Br7c2{w .} ==> Pr7c3 ≠ sw
whip[1]: Pr8c3{se .} ==> Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ nes, Br7c2 ≠ e, Br7c3 ≠ w, Br8c3 ≠ n, Br8c3 ≠ w
whip[1]: Br7c3{nes .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se
whip[1]: Br6c2{esw .} ==> Nr6c2 ≠ 0
whip[1]: Pr5c3{o .} ==> Br4c3 ≠ s, Br4c3 ≠ se
whip[1]: Br4c3{e .} ==> Nr4c3 ≠ 2, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ nes, Br6c3 ≠ n, Br6c3 ≠ w
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Pr3c3{ne .} ==> Br2c3 ≠ w, Br2c3 ≠ ns, Br2c3 ≠ ew, Br2c3 ≠ nes
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ se, Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ wne, Br1c5 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ ns, Br2c4 ≠ n, Br2c4 ≠ e
whip[1]: Br2c4{w .} ==> Pr2c4 ≠ ne, Pr3c5 ≠ nw, Pr2c4 ≠ ew, Pr2c5 ≠ sw
whip[1]: Pr2c5{ne .} ==> Br1c4 ≠ s, Br1c4 ≠ ns, Br1c4 ≠ sw, Br1c4 ≠ swn, Br2c5 ≠ w, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
whip[1]: Pr2c4{sw .} ==> Vr2c4 ≠ 0, Br2c3 ≠ sw, Br2c3 ≠ n, Br2c4 ≠ s
V-single: Vr2c4 = 1
B-single: Br2c4 = w
whip[1]: Vr2c4{1 .} ==> Pr3c4 ≠ se, Pr3c4 ≠ ew
whip[1]: Pr3c4{nw .} ==> Br3c4 ≠ n
whip[1]: Br3c4{w .} ==> Pr4c4 ≠ ne, Pr4c5 ≠ nw
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nes, Br4c4 ≠ n
whip[1]: Br2c3{esw .} ==> Nr2c3 ≠ 1
whip[1]: Pr3c5{se .} ==> Br3c5 ≠ n, Br3c5 ≠ w
whip[1]: Br3c5{s .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr3c5 ≠ se, Pr3c6 ≠ nw, Pr3c6 ≠ ew, Pr3c6 ≠ sw
P-single: Pr3c5 = o
w[1]-1-in-r3c4-symmetric-ne-corner ==> Pr4c4 ≠ o
whip[1]: Pr3c5{o .} ==> Br2c5 ≠ s, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ nes, Br3c4 ≠ e
whip[1]: Br2c5{ne .} ==> Nr2c5 ≠ 3
whip[1]: Pr4c4{se .} ==> Vr4c4 ≠ 0, Br4c4 ≠ se, Br4c3 ≠ o, Br4c4 ≠ o, Br4c4 ≠ e, Br4c4 ≠ s
V-single: Vr4c4 = 1
B-single: Br4c3 = e
vertical-line-r4{c3 c4} ==> Ir4c4 = out
whip[1]: Vr4c4{1 .} ==> Pr5c4 ≠ o, Pr5c4 ≠ se
w[1]-1-in-r5c4-asymmetric-nw-corner ==> Pr6c5 ≠ ew, Pr6c5 ≠ ne
w[1]-1-in-r6c5-symmetric-nw-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ o
whip[1]: Pr7c6{ns .} ==> Vr6c6 ≠ 0, Br6c6 ≠ s, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ se, Br6c6 ≠ nes, Br7c6 ≠ s, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ swn, Br7c6 ≠ wne, Br6c5 ≠ n, Br6c6 ≠ o, Br6c6 ≠ n, Br6c6 ≠ e, Br7c6 ≠ o, Br7c6 ≠ e
V-single: Vr6c6 = 1
B-single: Br6c5 = e
whip[1]: Vr6c6{1 .} ==> Pr6c6 ≠ nw, Pr6c6 ≠ ew
whip[1]: Pr6c6{se .} ==> Hr6c5 ≠ 1, Br5c5 ≠ ns, Br5c5 ≠ se, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ nes, Br5c5 ≠ s
H-single: Hr6c5 = 0
w[1]-diagonal-1-1-in-{r6c5...r5c4}-with-no-nw-inner-sides ==> Hr6c4 = 0, Vr5c5 = 0
whip[1]: Hr6c4{0 .} ==> Pr6c4 ≠ ne, Pr6c4 ≠ ew, Pr6c5 ≠ nw, Br5c4 ≠ s, Br6c4 ≠ n
P-single: Pr6c5 = o
B-single: Br6c4 = w
w[1]-1-in-r6c4-symmetric-ne-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ o
whip[1]: Pr6c5{o .} ==> Br5c4 ≠ e, Br5c5 ≠ w, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ wne
whip[1]: Br5c5{ne .} ==> Pr5c5 ≠ ns, Pr5c5 ≠ se, Nr5c5 ≠ 3, Pr5c5 ≠ sw
whip[1]: Br6c4{w .} ==> Vr6c4 ≠ 0
V-single: Vr6c4 = 1
whip[1]: Vr6c4{1 .} ==> Br6c3 ≠ o, Br6c3 ≠ s, Br6c3 ≠ nw, Br6c3 ≠ swn
whip[1]: Br6c3{wne .} ==> Pr7c3 ≠ ne, Nr6c3 ≠ 0
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ ew
whip[1]: Pr7c4{nw .} ==> Br7c3 ≠ ne, Br7c3 ≠ nes, Br7c3 ≠ o, Br7c3 ≠ s
whip[1]: Br7c3{se .} ==> Nr7c3 ≠ 0, Nr7c3 ≠ 3
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 0
whip[1]: Br4c3{e .} ==> Nr4c3 ≠ 0
N-single: Nr4c3 = 1
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e
B-single: Br5c0 = o
whip[1]: Br1c1{o .} ==> Nr1c1 ≠ 1, Nr1c1 ≠ 3
N-single: Nr1c1 = 0
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ ne, Br1c4 ≠ ew, Br1c4 ≠ n, Br1c4 ≠ w
whip[1]: Br3c8{nes .} ==> Nr3c8 ≠ 0
whip[1]: Pr8c4{ew .} ==> Br8c3 ≠ wne, Br8c3 ≠ o, Br8c3 ≠ s
whip[1]: Br8c3{swn .} ==> Nr8c3 ≠ 0
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Vr3c7{0 .} ==> Br3c7 ≠ w, Pr3c7 ≠ ns, Pr3c7 ≠ se, Pr3c7 ≠ sw, Pr4c7 ≠ ne, Pr4c7 ≠ nw, Br3c6 ≠ e
whip[1]: Br3c6{w .} ==> Pr4c6 ≠ ne, Pr3c6 ≠ se
whip[1]: Pr3c6{ns .} ==> Br2c6 ≠ s
whip[1]: Br2c6{w .} ==> Pr3c6 ≠ ne, Pr3c7 ≠ nw, Pr2c6 ≠ se, Pr2c7 ≠ sw, Pr3c7 ≠ ew
w[1]-1-in-r3c6-symmetric-ne-corner ==> Pr4c6 ≠ sw
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ sw, Br4c5 ≠ wne, Br4c5 ≠ nes, Br3c6 ≠ n, Br4c5 ≠ o, Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ ne
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 0
whip[1]: Pr3c7{ne .} ==> Br2c7 ≠ s, Br2c7 ≠ w, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ wne, Br2c7 ≠ nes
whip[1]: Br3c7{s .} ==> Pr3c8 ≠ sw, Pr4c8 ≠ nw
whip[1]: Pr4c8{ew .} ==> Br4c8 ≠ se, Br4c8 ≠ o, Br4c8 ≠ e, Br4c8 ≠ s
whip[1]: Br4c8{nes .} ==> Nr4c8 ≠ 0
whip[1]: Vr8c5{0 .} ==> Br8c5 ≠ w, Pr8c5 ≠ se, Pr8c5 ≠ sw, Pr9c5 ≠ ne, Pr9c5 ≠ ns, Pr9c5 ≠ nw, Br8c4 ≠ e
whip[1]: Br8c4{w .} ==> Pr9c4 ≠ ne, Pr8c4 ≠ se
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ n
whip[1]: Br8c5{s .} ==> Pr8c6 ≠ sw, Pr9c6 ≠ nw
whip[1]: Pr9c6{sw .} ==> Br9c5 ≠ n
whip[1]: Br9c5{w .} ==> Pr10c5 ≠ ne, Pr10c6 ≠ nw, Pr9c5 ≠ se, Pr9c5 ≠ ew, Pr9c6 ≠ sw
w[1]-1-in-r8c5-symmetric-sw-corner ==> Pr8c6 ≠ ne
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ n, Br7c6 ≠ ne, Br8c5 ≠ s
whip[1]: Pr9c5{sw .} ==> Br9c4 ≠ nw, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ n, Br9c4 ≠ e, Br9c4 ≠ ns
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Vr6c8{0 .} ==> Br6c8 ≠ w, Pr6c8 ≠ ns, Pr6c8 ≠ se, Pr6c8 ≠ sw, Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ nw, Br6c7 ≠ e
whip[1]: Br6c7{w .} ==> Pr7c7 ≠ ne, Pr6c7 ≠ se
whip[1]: Pr6c7{sw .} ==> Br6c6 ≠ ew, Br6c6 ≠ esw
whip[1]: Br6c6{wne .} ==> Pr7c7 ≠ nw
whip[1]: Br6c8{s .} ==> Pr6c9 ≠ sw, Pr7c9 ≠ nw
whip[1]: Vr1c7{0 .} ==> Br1c7 ≠ w, Pr1c7 ≠ se, Pr1c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ ns, Pr2c7 ≠ nw, Br1c6 ≠ e
whip[1]: Br1c6{w .} ==> Pr2c6 ≠ ne, Pr1c6 ≠ se
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ esw, Br1c5 ≠ e
whip[1]: Br1c5{swn .} ==> Pr2c6 ≠ nw
whip[1]: Pr2c7{ew .} ==> Br2c7 ≠ sw, Br2c7 ≠ esw
whip[1]: Br2c7{swn .} ==> Pr3c8 ≠ nw
whip[1]: Br1c7{s .} ==> Pr1c8 ≠ sw, Pr2c8 ≠ nw
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ w
whip[1]: Br1c8{s .} ==> Pr2c8 ≠ ne, Pr2c8 ≠ ns, Pr1c8 ≠ se, Pr1c9 ≠ sw, Pr2c9 ≠ nw
whip[1]: Pr1c9{ew .} ==> Br1c9 ≠ w
whip[1]: Br1c9{s .} ==> Pr2c9 ≠ ne, Pr2c9 ≠ ns, Pr1c9 ≠ se, Pr1c10 ≠ sw, Pr2c10 ≠ nw
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ sw, Br1c10 ≠ w
whip[1]: Br1c10{nes .} ==> Pr2c10 ≠ ne
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ e
whip[1]: Pr1c8{ew .} ==> Br1c7 ≠ e
whip[1]: Vr10c3{0 .} ==> Br10c3 ≠ w, Pr11c3 ≠ ne, Pr11c3 ≠ nw, Pr10c3 ≠ ns, Pr10c3 ≠ se, Pr10c3 ≠ sw, Br10c2 ≠ e
whip[1]: Br10c2{w .} ==> Pr11c2 ≠ ne, Pr10c2 ≠ se
whip[1]: Pr11c2{ew .} ==> Br10c1 ≠ e, Br10c1 ≠ ne
whip[1]: Br10c1{swn .} ==> Pr10c2 ≠ sw
whip[1]: Br10c3{s .} ==> Pr11c4 ≠ nw, Pr10c4 ≠ sw
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ w
whip[1]: Br10c4{s .} ==> Pr11c4 ≠ ne, Pr10c4 ≠ ns, Pr11c5 ≠ nw, Pr10c4 ≠ se, Pr10c5 ≠ sw
whip[1]: Pr10c4{ew .} ==> Br10c3 ≠ e
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ w
whip[1]: Br10c5{s .} ==> Pr11c5 ≠ ne, Pr10c5 ≠ ns, Pr11c6 ≠ nw, Pr10c5 ≠ se, Pr10c6 ≠ sw
whip[1]: Pr10c5{ew .} ==> Br9c4 ≠ wne, Br9c4 ≠ ne, Br10c4 ≠ e
whip[1]: Br9c4{nes .} ==> Pr9c4 ≠ se
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c6 ≠ wne, Br10c6 ≠ w
whip[1]: Vr5c8{0 .} ==> Br5c8 ≠ wne, Vr5c8 ≠ 1, Pr5c8 ≠ ns, Pr5c8 ≠ se, Pr6c8 ≠ ne, Pr6c8 ≠ nw, Br5c8 ≠ w, Br5c8 ≠ nw, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ swn
whip[1]: Pr5c8{ne .} ==> Br4c8 ≠ w, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ ew, Br4c8 ≠ wne, Br4c8 ≠ nes
whip[1]: Hr6c7{0 .} ==> Br6c7 ≠ n, Hr6c7 ≠ 1, Pr6c7 ≠ ew, Pr6c8 ≠ ew
P-single: Pr6c8 = o
w[1]-1-in-r6c7-symmetric-ne-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ o
w[1]-1-in-r6c8-symmetric-nw-corner ==> Pr7c9 ≠ se, Pr7c9 ≠ o
w[1]-1-in-r7c9-asymmetric-nw-corner ==> Pr8c10 ≠ sw, Pr8c10 ≠ ew, Pr8c10 ≠ ns, Pr8c10 ≠ ne
w[1]-1-in-r8c10-symmetric-nw-corner ==> Pr9c11 ≠ o
P-single: Pr9c11 = ns
w[1]-1-in-r9c10-asymmetric-ne-corner ==> Pr10c10 ≠ nw, Pr10c10 ≠ ns
whip[1]: Pr6c8{o .} ==> Hr6c8 ≠ 1, Br5c8 ≠ s, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ nes, Br6c8 ≠ n
H-single: Hr6c8 = 0
w[1]-diagonal-1-1-in-{r6c8...r7c9}-with-no-nw-outer-sides ==> Hr8c9 = 0, Vr7c10 = 0
w[1]-diagonal-1-1-in-{r7c9...r8c10}-with-no-se-inner-sides ==> Hr8c10 = 0, Vr8c10 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r6{c9 c10} ==> Vr6c10 = 0
whip[1]: Hr6c8{0 .} ==> Pr6c9 ≠ nw, Pr6c9 ≠ ew
whip[1]: Hr8c9{0 .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c10 ≠ nw, Br7c9 ≠ s, Br8c9 ≠ n
P-single: Pr8c10 = o
w[1]-1-in-r8c9-symmetric-ne-corner ==> Pr9c9 ≠ sw, Pr9c9 ≠ ne, Pr9c9 ≠ o
whip[1]: Pr8c10{o .} ==> Br7c9 ≠ e, Br7c10 ≠ w, Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ ew, Br7c10 ≠ esw, Br7c10 ≠ wne, Br7c10 ≠ nes, Br8c9 ≠ e, Br8c10 ≠ n, Br8c10 ≠ w
B-single: Br8c10 = e
whip[1]: Br8c10{e .} ==> Pr8c11 ≠ o, Vr8c11 ≠ 0, Pr8c11 ≠ nw, Pr9c10 ≠ ns, Pr9c10 ≠ nw
V-single: Vr8c11 = 1
P-single: Pr8c11 = ns
vertical-line-r8{c10 c11} ==> Ir8c10 = in
no-vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
no-horizontal-line-{r8 r9}c10 ==> Ir9c10 = in
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = in
different-colours-in-r10{c10 c11} ==> Hr10c11 = 1
different-colours-in-{r10 r11}c10 ==> Hr11c10 = 1
different-colours-in-r10{c9 c10} ==> Hr10c10 = 1
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Pr8c11{ns .} ==> Br7c10 ≠ n, Br7c10 ≠ o
whip[1]: Br7c10{ne .} ==> Pr7c11 ≠ o, Pr7c11 ≠ nw, Pr7c10 ≠ ns, Pr7c10 ≠ se, Nr7c10 ≠ 0, Nr7c10 ≠ 3, Pr7c10 ≠ sw
w[1]-1-in-r6c10-asymmetric-se-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ew, Pr6c10 ≠ ns, Pr6c10 ≠ ne
whip[1]: Pr6c10{se .} ==> Br5c9 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c9 ≠ e, Br5c9 ≠ s, Br6c10 ≠ n, Br6c10 ≠ w
whip[1]: Br6c10{s .} ==> Hr6c10 ≠ 1, Pr7c10 ≠ ne, Pr6c11 ≠ nw, Pr6c11 ≠ sw, Pr6c10 ≠ se, Pr7c10 ≠ nw
H-single: Hr6c10 = 0
whip[1]: Hr6c10{0 .} ==> Br5c10 ≠ s, Br5c10 ≠ ns, Br5c10 ≠ se, Br5c10 ≠ nes
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ e
whip[1]: Br6c9{w .} ==> Pr7c9 ≠ ne, Pr6c9 ≠ se
whip[1]: Pr6c9{ns .} ==> Br5c9 ≠ se, Br5c9 ≠ nes
whip[1]: Br5c9{esw .} ==> Pr5c10 ≠ sw
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ s, Br7c8 ≠ w
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 1
whip[1]: Vr10c11{1 .} ==> Br10c10 ≠ o, Br10c11 ≠ o, Pr11c11 ≠ o, Pr10c11 ≠ o
P-single: Pr10c11 = ns
P-single: Pr11c11 = nw
B-single: Br10c11 = w
B-single: Br10c10 = esw
w[1]-1-in-r9c10-asymmetric-se-corner ==> Pr9c10 ≠ sw
P-single: Pr9c10 = o
w[1]-1-in-r8c9-symmetric-se-corner ==> Pr8c9 ≠ nw, Pr8c9 ≠ o
whip[1]: Pr10c11{ns .} ==> Br9c10 ≠ w
B-single: Br9c10 = e
whip[1]: Br9c10{e .} ==> Vr9c10 ≠ 1
V-single: Vr9c10 = 0
w[1]-diagonal-1-1-in-{r9c10...r8c9}-with-no-nw-inner-sides ==> Hr9c9 = 0
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = in
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
whip[1]: Vr9c10{0 .} ==> Br9c9 ≠ e, Br9c9 ≠ ne, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw, Br9c9 ≠ wne, Br9c9 ≠ nes
whip[1]: Hr9c9{0 .} ==> Pr9c9 ≠ se, Pr9c9 ≠ ew, Br8c9 ≠ s, Br9c9 ≠ n, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn
B-single: Br8c9 = w
whip[1]: Br8c9{w .} ==> Vr8c9 ≠ 0
V-single: Vr8c9 = 1
vertical-line-r8{c8 c9} ==> Ir8c8 = out
whip[1]: Vr8c9{1 .} ==> Br8c8 ≠ n, Br8c8 ≠ s, Br8c8 ≠ w
B-single: Br8c8 = e
whip[1]: Br8c8{e .} ==> Pr9c8 ≠ ne, Vr8c8 ≠ 1, Hr9c8 ≠ 1, Hr8c8 ≠ 1, Pr8c8 ≠ ns, Pr8c8 ≠ se, Pr8c8 ≠ ew, Pr8c9 ≠ sw, Pr9c8 ≠ ns, Pr9c8 ≠ se, Pr9c9 ≠ nw
H-single: Hr8c8 = 0
H-single: Hr9c8 = 0
V-single: Vr8c8 = 0
w[1]-diagonal-1-1-in-{r8c8...r9c7}-with-no-sw-inner-sides ==> Vr9c8 = 0
w[1]-diagonal-1-1-in-{r8c8...r7c9}-with-no-sw-outer-sides ==> Hr7c9 = 0
w[1]-diagonal-1-1-in-{r7c9...r6c10}-with-no-ne-inner-sides ==> Hr7c10 = 0
P-single: Pr9c9 = ns
P-single: Pr9c8 = o
P-single: Pr8c9 = ns
P-single: Pr8c8 = nw
w[1]-1-in-r8c7-symmetric-se-corner ==> Pr8c7 ≠ nw, Pr8c7 ≠ o
w[1]-1-in-r9c7-symmetric-ne-corner ==> Pr10c7 ≠ sw, Pr10c7 ≠ o
w[1]-1-in-r7c9-asymmetric-sw-corner ==> Pr7c10 ≠ ew
P-single: Pr7c10 = o
w[1]-1-in-r6c10-symmetric-sw-corner ==> Pr6c11 ≠ o
P-single: Pr6c11 = ns
w[1]-1-in-r6c9-symmetric-se-corner ==> Pr6c9 ≠ o
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = in
no-vertical-line-r6{c9 c10} ==> Ir6c9 = in
no-horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
no-vertical-line-r8{c6 c7} ==> Ir8c6 = out
no-horizontal-line-{r8 r9}c6 ==> Ir9c6 = out
no-vertical-line-r9{c6 c7} ==> Ir9c7 = out
no-vertical-line-r9{c7 c8} ==> Ir9c8 = out
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
different-colours-in-r7{c8 c9} ==> Hr7c9 = 1
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
whip[1]: Hr8c8{0 .} ==> Br7c8 ≠ ns, Br7c8 ≠ se, Br7c8 ≠ nes
whip[1]: Br7c8{wne .} ==> Vr7c8 ≠ 0, Pr7c8 ≠ o, Pr7c8 ≠ ew
V-single: Vr7c8 = 1
vertical-line-r7{c7 c8} ==> Ir7c7 = in
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
whip[1]: Vr7c8{1 .} ==> Br7c7 ≠ o, Br7c7 ≠ n, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ sw, Br7c7 ≠ swn
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Hr8c7{1 .} ==> Br7c7 ≠ e, Br7c7 ≠ ne, Br7c7 ≠ ew, Br7c7 ≠ wne, Br8c7 ≠ e
B-single: Br8c7 = n
whip[1]: Br7c7{nes .} ==> Pr7c7 ≠ se, Nr7c7 ≠ 1
whip[1]: Pr7c7{ew .} ==> Br6c6 ≠ nw, Br7c6 ≠ nes, Br7c7 ≠ se, Br6c6 ≠ w, Br7c6 ≠ w
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 1, Nr7c6 ≠ 3
N-single: Nr7c6 = 2
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 1
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 2
N-single: Nr7c7 = 3
whip[1]: Hr9c8{0 .} ==> Br9c8 ≠ n, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ nw, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c8 ≠ nes
whip[1]: Vr9c8{0 .} ==> Pr10c8 ≠ ne, Pr10c8 ≠ ns, Br9c7 ≠ e, Br9c8 ≠ w, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ esw
B-single: Br9c7 = s
whip[1]: Br9c7{s .} ==> Hr10c7 ≠ 0
H-single: Hr10c7 = 1
horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Hr10c7{1 .} ==> Br10c7 ≠ o, Br10c7 ≠ w, Br10c7 ≠ se, Br10c7 ≠ esw
whip[1]: Br10c7{nes .} ==> Pr11c7 ≠ ne, Nr10c7 ≠ 0
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Vr10c8{1 .} ==> Pr11c8 ≠ o, Pr10c8 ≠ ew, Br10c7 ≠ n, Br10c7 ≠ nw, Br10c8 ≠ n
P-single: Pr10c8 = sw
P-single: Pr11c8 = nw
B-single: Br10c8 = w
B-single: Br10c7 = nes
w[1]-1-in-r10c8-asymmetric-sw-corner ==> Pr10c9 ≠ ew, Pr10c9 ≠ nw
whip[1]: Pr10c8{sw .} ==> Br9c8 ≠ s, Br9c8 ≠ se
whip[1]: Br9c8{e .} ==> Nr9c8 ≠ 2, Nr9c8 ≠ 3
whip[1]: Pr11c8{nw .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Br11c7{n .} ==> Pr11c7 ≠ o, Pr11c7 ≠ nw
P-single: Pr11c7 = ew
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ n, Br10c6 ≠ o, Vr10c7 ≠ 1, Hr11c6 ≠ 0, Br11c6 ≠ o, Br10c6 ≠ se, Br10c6 ≠ esw, Br10c6 ≠ nes
H-single: Hr11c6 = 1
V-single: Vr10c7 = 0
B-single: Br11c6 = n
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1

LOOP[6]: Hr10c6-Hr10c7-Vr10c8-Hr11c7-Hr11c6- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-vertical-line-r10{c2 c3} ==> Ir10c2 = in
different-colours-in-{r10 r11}c2 ==> Hr11c2 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
whip[1]: Hr11c6{1 .} ==> Pr11c6 ≠ o
w[1]-1-in-r10c5-asymmetric-se-corner ==> Pr10c5 ≠ ew
whip[1]: Pr10c5{nw .} ==> Hr10c5 ≠ 1, Br9c4 ≠ sw, Br9c4 ≠ s, Br9c5 ≠ s, Br10c5 ≠ n
H-single: Hr10c5 = 0
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = in
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
no-vertical-line-r8{c4 c5} ==> Ir8c4 = in
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
different-colours-in-r9{c5 c6} ==> Hr9c6 = 1
whip[1]: Hr10c5{0 .} ==> Pr10c6 ≠ ew
whip[1]: Vr8c6{1 .} ==> Pr8c6 ≠ ew, Pr9c6 ≠ o, Br8c5 ≠ n, Br8c6 ≠ n
P-single: Pr9c6 = ns
P-single: Pr8c6 = ns
B-single: Br8c6 = w
B-single: Br8c5 = e
w[1]-1-in-r9c5-asymmetric-ne-corner ==> Pr10c5 ≠ nw
P-single: Pr10c5 = o
w[1]-1-in-r10c4-symmetric-ne-corner ==> Pr11c4 ≠ o
P-single: Pr11c4 = ew
w[1]-1-in-r10c3-asymmetric-se-corner ==> Pr10c3 ≠ ew, Pr10c3 ≠ ne
w[1]-1-in-r9c2-symmetric-se-corner ==> Pr9c2 ≠ nw
w[1]-1-in-r8c6-asymmetric-sw-corner ==> Pr8c7 ≠ ew
w[1]-3-in-r7c7-symmetric-sw-corner ==> Vr7c7 = 1
w[1]-diagonal-1-1-in-{r8c6...r9c5}-with-no-ne-outer-sides ==> Vr9c5 = 0
w[1]-diagonal-1-1-in-{r9c5...r8c4}-with-no-nw-inner-sides ==> Hr9c4 = 0
w[1]-diagonal-1-1-in-{r9c5...r10c4}-with-no-sw-inner-sides ==> Hr10c4 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c5{r7 r8} ==> Hr8c5 = 0
w[1]-diagonal-1-1-in-{r7c5...r8c4}-with-no-sw-inner-sides ==> Hr8c4 = 0
w[1]-3-in-r7c7-closed-sw-corner ==> Pr7c8 ≠ sw
w[1]-diagonal-closed-3-1-in-{r7c7...r6c8} ==> Vr6c9 = 0
P-single: Pr7c8 = se
P-single: Pr8c7 = ne
w[1]-1-in-r6c7-symmetric-se-corner ==> Pr6c7 ≠ o
P-single: Pr6c7 = sw
w[1]-1-in-r5c6-asymmetric-se-corner ==> Pr5c6 ≠ sw, Pr5c6 ≠ ns
w[1]-1-in-r6c8-asymmetric-sw-corner ==> Pr6c9 ≠ ns
P-single: Pr6c9 = ne
w[1]-1-in-r8c5-asymmetric-se-corner ==> Pr8c5 ≠ ew
P-single: Pr8c5 = o
w[1]-1-in-r7c5-symmetric-sw-corner ==> Pr7c6 ≠ ne
P-single: Pr7c6 = ns
w[1]-1-in-r8c4-symmetric-ne-corner ==> Pr9c4 ≠ sw, Pr9c4 ≠ o
w[1]-1-in-r7c4-symmetric-se-corner ==> Pr7c4 ≠ nw
P-single: Pr7c4 = ns
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-vertical-line-r6{c7 c8} ==> Ir6c7 = in
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-horizontal-line-{r4 r5}c6 ==> Ir4c6 = in
no-vertical-line-r4{c6 c7} ==> Ir4c7 = in
no-vertical-line-r5{c7 c8} ==> Ir5c8 = in
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
no-vertical-line-r6{c4 c5} ==> Ir6c4 = in
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
no-vertical-line-r5{c4 c5} ==> Ir5c5 = in
vertical-line-r6{c3 c4} ==> Ir6c3 = out
vertical-line-r6{c5 c6} ==> Ir6c6 = out
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = out
same-colour-in-{r6 r7}c6 ==> Hr7c6 = 0
different-colours-in-r7{c5 c6} ==> Hr7c6 = 1
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1
different-colours-in-{r5 r6}c6 ==> Hr6c6 = 1
w[1]-diagonal-1-1-in-{r5c6...r6c7}-with-no-nw-outer-sides ==> Hr7c7 = 0
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
different-colours-in-{r6 r7}c8 ==> Hr7c8 = 1
whip[1]: Pr9c6{ns .} ==> Br9c6 ≠ o, Br9c5 ≠ w, Br9c6 ≠ s
B-single: Br9c5 = e
whip[1]: Br9c5{e .} ==> Pr10c6 ≠ o, Pr9c5 ≠ sw, Pr10c6 ≠ se
P-single: Pr9c5 = o
w[1]-1-in-r8c4-symmetric-se-corner ==> Pr8c4 ≠ nw
whip[1]: Pr9c5{o .} ==> Br8c4 ≠ s, Br9c4 ≠ nes
whip[1]: Br9c4{w .} ==> Pr10c4 ≠ ne, Nr9c4 ≠ 2, Nr9c4 ≠ 3, Pr9c4 ≠ ew, Pr10c4 ≠ ew
w[1]-1-in-r10c4-symmetric-nw-corner ==> Pr11c5 ≠ o
P-single: Pr11c5 = ew
w[1]-1-in-r10c5-asymmetric-sw-corner ==> Pr10c6 ≠ ns
P-single: Pr10c6 = ne
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ e, Br10c4 ≠ n, Br11c5 ≠ o, Br11c4 ≠ o
B-single: Br11c4 = n
B-single: Br11c5 = n
B-single: Br10c4 = s
B-single: Br10c5 = s
whip[1]: Br11c5{n .} ==> Pr11c6 ≠ ne
P-single: Pr11c6 = ew
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ swn
whip[1]: Br10c6{ns .} ==> Pr10c7 ≠ se, Nr10c6 ≠ 0, Nr10c6 ≠ 3
P-single: Pr10c7 = ew
whip[1]: Pr10c7{ew .} ==> Br10c6 ≠ s, Br9c6 ≠ w
B-single: Br9c6 = sw
B-single: Br10c6 = ns
whip[1]: Br9c6{sw .} ==> Nr9c6 ≠ 1, Nr9c6 ≠ 0
N-single: Nr9c6 = 2
whip[1]: Br10c6{ns .} ==> Nr10c6 ≠ 1
N-single: Nr10c6 = 2
whip[1]: Pr10c4{nw .} ==> Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c3 ≠ e, Br9c3 ≠ s
whip[1]: Pr9c4{nw .} ==> Vr8c4 ≠ 0, Br8c3 ≠ nw, Br8c3 ≠ swn, Br9c3 ≠ w, Br9c3 ≠ nes, Br8c4 ≠ n, Br9c3 ≠ o
V-single: Vr8c4 = 1
B-single: Br8c4 = w
vertical-line-r8{c3 c4} ==> Ir8c3 = out
whip[1]: Vr8c4{1 .} ==> Pr8c4 ≠ ew
P-single: Pr8c4 = ns
whip[1]: Pr8c4{ns .} ==> Vr7c4 ≠ 0, Hr8c3 ≠ 1, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c4 ≠ s
H-single: Hr8c3 = 0
V-single: Vr7c4 = 1
B-single: Br7c4 = w
B-single: Br7c3 = e
vertical-line-r7{c3 c4} ==> Ir7c3 = out
no-vertical-line-r7{c2 c3} ==> Ir7c2 = out
no-horizontal-line-{r7 r8}c2 ==> Ir8c2 = out
vertical-line-r8{c1 c2} ==> Ir8c1 = in
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
same-colour-in-r8{c2 c3} ==> Vr8c3 = 0
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
whip[1]: Hr8c3{0 .} ==> Pr8c3 ≠ se
P-single: Pr8c3 = o
whip[1]: Pr8c3{o .} ==> Br8c2 ≠ ew, Br8c2 ≠ esw
whip[1]: Br8c2{sw .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Nr8c2 ≠ 3
whip[1]: Br7c3{e .} ==> Nr7c3 ≠ 2, Pr7c3 ≠ ew
N-single: Nr7c3 = 1
whip[1]: Pr7c3{nw .} ==> Br6c2 ≠ sw, Br6c3 ≠ se
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 2
whip[1]: Br6c2{esw .} ==> Nr6c2 ≠ 2
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o, Pr8c1 ≠ o, Pr9c1 ≠ o, Pr9c1 ≠ se, Br8c1 ≠ e, Br8c1 ≠ se
P-single: Pr9c1 = ns
P-single: Pr8c1 = se
B-single: Br8c1 = wne
B-single: Br8c0 = e
w[1]-1-in-r7c1-asymmetric-sw-corner ==> Pr7c2 ≠ ns
P-single: Pr7c2 = ne
whip[1]: Pr9c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ o, Vr9c1 ≠ 0, Hr9c1 ≠ 1, Br9c1 ≠ s, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ swn
H-single: Hr9c1 = 0
V-single: Vr9c1 = 1
vertical-line-r9{c0 c1} ==> Ir9c1 = in
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o, Pr10c1 ≠ o, Pr10c1 ≠ se
B-single: Br9c0 = e
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ swn, Br10c1 ≠ o
whip[1]: Br10c1{esw .} ==> Nr10c1 ≠ 0
whip[1]: Br9c1{esw .} ==> Nr9c1 ≠ 0
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ e
B-single: Br7c1 = s
whip[1]: Br7c1{s .} ==> Pr8c2 ≠ ns
P-single: Pr8c2 = sw
w[1]-1-in-r7c2-symmetric-sw-corner ==> Pr7c3 ≠ o
P-single: Pr7c3 = nw
whip[1]: Pr8c2{sw .} ==> Br7c2 ≠ w
B-single: Br7c2 = n
whip[1]: Pr7c3{nw .} ==> Br6c3 ≠ e, Br6c2 ≠ w
B-single: Br6c2 = esw
B-single: Br6c3 = wne
whip[1]: Br6c2{esw .} ==> Nr6c2 ≠ 1, Pr6c3 ≠ o
N-single: Nr6c2 = 3
P-single: Pr6c3 = se
w[1]-1-in-r5c3-asymmetric-sw-corner ==> Pr5c4 ≠ ns
P-single: Pr5c4 = ne
whip[1]: Pr6c3{se .} ==> Br5c3 ≠ e
B-single: Br5c3 = s
whip[1]: Br5c3{s .} ==> Pr6c4 ≠ ns
P-single: Pr6c4 = sw
w[1]-1-in-r5c4-symmetric-sw-corner ==> Pr5c5 ≠ ne, Pr5c5 ≠ o
whip[1]: Pr6c4{sw .} ==> Br5c4 ≠ w
B-single: Br5c4 = n
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ wne, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c4 ≠ w, Br4c5 ≠ n, Br4c5 ≠ e
whip[1]: Br4c5{ew .} ==> Nr4c5 ≠ 1, Nr4c5 ≠ 3
N-single: Nr4c5 = 2
w[1]-1-in-r3c4-symmetric-se-corner ==> Pr3c4 ≠ nw
P-single: Pr3c4 = ns
whip[1]: Pr3c4{ns .} ==> Br3c3 ≠ n, Vr3c4 ≠ 0, Hr3c3 ≠ 1, Br2c3 ≠ esw, Br3c4 ≠ s
H-single: Hr3c3 = 0
V-single: Vr3c4 = 1
B-single: Br3c4 = w
B-single: Br2c3 = ne
B-single: Br3c3 = e
vertical-line-r3{c3 c4} ==> Ir3c4 = out
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
no-vertical-line-r2{c4 c5} ==> Ir2c4 = out
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = out
vertical-line-r2{c3 c4} ==> Ir2c3 = in
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
whip[1]: Hr3c3{0 .} ==> Pr3c3 ≠ ne
P-single: Pr3c3 = o
w[1]-1-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ se
P-single: Pr4c4 = ns
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne
B-single: Br2c2 = nw
whip[1]: Br2c2{nw .} ==> Nr2c2 ≠ 3, Pr2c3 ≠ sw
N-single: Nr2c2 = 2
P-single: Pr2c3 = ew
w[1]-1-in-r1c3-asymmetric-sw-corner ==> Pr1c4 ≠ se
P-single: Pr1c4 = o
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ e
B-single: Br1c3 = s
whip[1]: Br1c3{s .} ==> Pr2c4 ≠ ns
P-single: Pr2c4 = sw
whip[1]: Pr2c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ wne
whip[1]: Br1c4{e .} ==> Nr1c4 ≠ 2, Pr1c5 ≠ ew, Pr1c5 ≠ sw, Nr1c4 ≠ 3
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ ne, Br1c5 ≠ sw, Br1c5 ≠ n
whip[1]: Br1c5{swn .} ==> Vr1c6 ≠ 1, Pr1c6 ≠ sw, Pr2c6 ≠ ns, Nr1c5 ≠ 1, Nr1c5 ≠ 2
V-single: Vr1c6 = 0
whip[1]: Vr1c6{0 .} ==> Br1c6 ≠ w
whip[1]: Pr2c6{sw .} ==> Br2c5 ≠ e
whip[1]: Pr4c4{ns .} ==> Br4c4 ≠ swn
whip[1]: Br4c4{esw .} ==> Nr4c4 ≠ 1
whip[1]: Br2c3{ne .} ==> Nr2c3 ≠ 3
N-single: Nr2c3 = 2
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ ns, Br4c5 ≠ ew
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 1
N-single: Nr6c3 = 3
whip[1]: Br8c1{wne .} ==> Nr8c1 ≠ 2, Nr8c1 ≠ 1
N-single: Nr8c1 = 3
w[1]-diagonal-closed-3-1-in-{r8c1...r9c2} ==> Vr9c3 = 0, Hr10c2 = 0
w[1]-diagonal-1-1-in-{r9c2...r10c3}-with-no-se-inner-sides ==> Hr10c3 = 0
no-horizontal-line-{r9 r10}c3 ==> Ir9c3 = in
no-vertical-line-r9{c2 c3} ==> Ir9c2 = in
same-colour-in-r9{c1 c2} ==> Vr9c2 = 0
different-colours-in-{r8 r9}c2 ==> Hr9c2 = 1
same-colour-in-r9{c3 c4} ==> Vr9c4 = 0
different-colours-in-{r8 r9}c3 ==> Hr9c3 = 1
whip[1]: Vr9c3{0 .} ==> Pr9c3 ≠ se, Pr9c3 ≠ sw, Pr10c3 ≠ nw, Br9c2 ≠ e, Br9c3 ≠ nw, Br9c3 ≠ esw
P-single: Pr10c3 = o
w[1]-1-in-r10c2-symmetric-ne-corner ==> Pr11c2 ≠ o
whip[1]: Pr10c3{o .} ==> Br9c2 ≠ s, Br9c3 ≠ se, Br10c2 ≠ n, Br10c3 ≠ n
B-single: Br10c3 = s
B-single: Br9c3 = n
whip[1]: Br10c3{s .} ==> Pr11c3 ≠ o, Pr10c4 ≠ nw
P-single: Pr10c4 = o
P-single: Pr11c3 = ew
w[1]-1-in-r10c2-asymmetric-se-corner ==> Pr10c2 ≠ ew, Pr10c2 ≠ ns, Pr10c2 ≠ ne
whip[1]: Pr10c4{o .} ==> Br9c4 ≠ w
B-single: Br9c4 = o
whip[1]: Br9c4{o .} ==> Pr9c4 ≠ ns, Nr9c4 ≠ 1
N-single: Nr9c4 = 0
P-single: Pr9c4 = nw
whip[1]: Pr9c4{nw .} ==> Br8c3 ≠ e
B-single: Br8c3 = se
whip[1]: Br8c3{se .} ==> Nr8c3 ≠ 3, Nr8c3 ≠ 1, Pr9c3 ≠ o
N-single: Nr8c3 = 2
P-single: Pr9c3 = ew
w[1]-1-in-r9c2-asymmetric-ne-corner ==> Pr10c2 ≠ nw
P-single: Pr10c2 = o
whip[1]: Pr9c3{ew .} ==> Br9c2 ≠ w, Br8c2 ≠ w
B-single: Br8c2 = sw
B-single: Br9c2 = n
whip[1]: Br8c2{sw .} ==> Nr8c2 ≠ 1, Pr9c2 ≠ ns
N-single: Nr8c2 = 2
P-single: Pr9c2 = ne
whip[1]: Pr9c2{ne .} ==> Br9c1 ≠ ew, Br9c1 ≠ esw
whip[1]: Br9c1{sw .} ==> Nr9c1 ≠ 3
whip[1]: Pr10c2{o .} ==> Vr10c2 ≠ 1, Hr10c1 ≠ 1, Br9c1 ≠ sw, Br10c1 ≠ n, Br10c1 ≠ esw, Br10c2 ≠ w
H-single: Hr10c1 = 0
V-single: Vr10c2 = 0
B-single: Br10c2 = s
B-single: Br10c1 = sw
B-single: Br9c1 = w
no-vertical-line-r10{c1 c2} ==> Ir10c1 = in
different-colours-in-{r10 r11}c1 ==> Hr11c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
whip[1]: Hr10c1{0 .} ==> Pr10c1 ≠ ne
P-single: Pr10c1 = ns
whip[1]: Vr10c2{0 .} ==> Pr11c2 ≠ nw
P-single: Pr11c2 = ew
whip[1]: Pr11c2{ew .} ==> Br11c2 ≠ o, Br11c1 ≠ o
B-single: Br11c1 = n
B-single: Br11c2 = n
whip[1]: Br11c1{n .} ==> Pr11c1 ≠ o
P-single: Pr11c1 = ne
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 3, Nr10c1 ≠ 1
N-single: Nr10c1 = 2
whip[1]: Br9c1{w .} ==> Nr9c1 ≠ 2
N-single: Nr9c1 = 1
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Pr11c3{ew .} ==> Br11c3 ≠ o
B-single: Br11c3 = n
whip[1]: Br9c3{n .} ==> Nr9c3 ≠ 0, Nr9c3 ≠ 2, Nr9c3 ≠ 3
N-single: Nr9c3 = 1
whip[1]: Pr8c6{ns .} ==> Br7c5 ≠ s, Br7c6 ≠ ns
B-single: Br7c6 = ew
B-single: Br7c5 = e
whip[1]: Br7c6{ew .} ==> Pr7c7 ≠ ew
P-single: Pr7c7 = ns
whip[1]: Pr7c7{ns .} ==> Br6c6 ≠ sw, Br6c6 ≠ swn, Br6c7 ≠ s, Br7c7 ≠ nes
B-single: Br7c7 = esw
B-single: Br6c7 = w
B-single: Br6c6 = wne
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 2, Pr6c6 ≠ ns
N-single: Nr6c6 = 3
P-single: Pr6c6 = se
whip[1]: Pr6c6{se .} ==> Br5c6 ≠ w, Br5c5 ≠ e, Br5c5 ≠ ne
B-single: Br5c6 = s
whip[1]: Br5c5{n .} ==> Nr5c5 ≠ 2
whip[1]: Vr6c9{0 .} ==> Pr7c9 ≠ ns, Br6c8 ≠ e, Br6c9 ≠ w
B-single: Br6c8 = s
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ ew
whip[1]: Pr6c9{ne .} ==> Br5c9 ≠ n, Br5c9 ≠ o, Br5c8 ≠ n, Br5c8 ≠ o, Vr5c9 ≠ 0, Hr6c9 ≠ 0, Br5c9 ≠ w, Br5c9 ≠ nw, Br6c9 ≠ s
H-single: Hr6c9 = 1
V-single: Vr5c9 = 1
B-single: Br6c9 = n
B-single: Br5c9 = esw
vertical-line-r5{c8 c9} ==> Ir5c9 = out
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
whip[1]: Hr6c9{1 .} ==> Pr6c10 ≠ o
P-single: Pr6c10 = nw
w[1]-1-in-r6c9-asymmetric-ne-corner ==> Pr7c9 ≠ ew
P-single: Pr7c9 = sw
whip[1]: Pr6c10{nw .} ==> Br5c10 ≠ e, Br5c10 ≠ n, Br5c10 ≠ o, Br5c10 ≠ ne
whip[1]: Br5c10{wne .} ==> Pr5c10 ≠ o, Pr5c10 ≠ ne, Pr5c10 ≠ nw, Pr5c10 ≠ ew, Nr5c10 ≠ 0
w[1]-1-in-r4c10-asymmetric-sw-corner ==> Pr4c11 ≠ nw, Pr4c11 ≠ ns
whip[1]: Pr4c11{sw .} ==> Vr3c11 ≠ 1, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw, Br3c10 ≠ wne, Br3c10 ≠ nes, Br3c10 ≠ e, Br3c10 ≠ ne, Br4c10 ≠ n, Br4c10 ≠ e
V-single: Vr3c11 = 0
no-vertical-line-r3{c10 c11} ==> Ir3c10 = out
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w, Pr3c11 ≠ ns, Pr3c11 ≠ sw
B-single: Br3c11 = o
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ ew, Br2c10 ≠ sw, Br2c10 ≠ swn, Br2c10 ≠ wne, Br2c10 ≠ e, Br2c10 ≠ s
whip[1]: Br4c10{w .} ==> Hr4c10 ≠ 1, Vr4c11 ≠ 1, Pr5c11 ≠ ns, Pr5c11 ≠ nw, Pr4c10 ≠ ne, Pr4c11 ≠ sw, Pr4c10 ≠ se, Pr4c10 ≠ ew
V-single: Vr4c11 = 0
H-single: Hr4c10 = 0
P-single: Pr4c11 = o
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
different-colours-in-{r4 r5}c10 ==> Hr5c10 = 1
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Hr4c10{0 .} ==> Br3c10 ≠ s, Br3c10 ≠ ns, Br3c10 ≠ sw, Br3c10 ≠ swn
whip[1]: Br3c10{nw .} ==> Nr3c10 ≠ 3
whip[1]: Hr5c10{1 .} ==> Pr5c11 ≠ o, Pr5c10 ≠ ns, Br4c10 ≠ w, Br5c10 ≠ w, Br5c10 ≠ ew
P-single: Pr5c10 = se
P-single: Pr5c11 = sw
B-single: Br4c10 = s
w[1]-1-in-r4c9-symmetric-se-corner ==> Pr4c9 ≠ se, Pr4c9 ≠ nw, Pr4c9 ≠ o
w[1]-1-in-r4c10-asymmetric-se-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ ns
whip[1]: Pr5c10{se .} ==> Br4c9 ≠ s, Br4c9 ≠ e
whip[1]: Br4c9{w .} ==> Pr5c9 ≠ ne, Pr5c9 ≠ se, Pr5c9 ≠ ew
whip[1]: Pr5c11{sw .} ==> Br5c10 ≠ nw
B-single: Br5c10 = wne
whip[1]: Br5c10{wne .} ==> Nr5c10 ≠ 2, Nr5c10 ≠ 1
N-single: Nr5c10 = 3
whip[1]: Pr4c10{nw .} ==> Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ e, Br3c9 ≠ s
whip[1]: Pr4c9{sw .} ==> Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ nes, Br3c8 ≠ w
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ n, Br7c8 ≠ nw
B-single: Br7c8 = wne
B-single: Br7c9 = w
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 2
N-single: Nr7c8 = 3
whip[1]: Vr5c9{1 .} ==> Pr5c9 ≠ o, Pr5c9 ≠ nw
whip[1]: Pr5c9{sw .} ==> Br4c8 ≠ esw, Br4c8 ≠ n
whip[1]: Br4c8{swn .} ==> Pr4c9 ≠ ns, Nr4c8 ≠ 1
whip[1]: Pr4c9{sw .} ==> Br3c9 ≠ nw, Br3c9 ≠ w
whip[1]: Br3c9{nes .} ==> Pr3c9 ≠ se
whip[1]: Br5c9{esw .} ==> Nr5c9 ≠ 2, Nr5c9 ≠ 1, Nr5c9 ≠ 0
N-single: Nr5c9 = 3
whip[1]: Br5c8{ne .} ==> Nr5c8 ≠ 0, Nr5c8 ≠ 3
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 2, Nr10c7 ≠ 1
N-single: Nr10c7 = 3
whip[1]: Pr10c9{ne .} ==> Br9c9 ≠ s, Br9c9 ≠ w
whip[1]: Br9c9{sw .} ==> Nr9c9 ≠ 1, Nr9c9 ≠ 3
whip[1]: Hr7c10{0 .} ==> Pr7c11 ≠ sw, Br6c10 ≠ s, Br7c10 ≠ ne
P-single: Pr7c11 = ns
B-single: Br7c10 = e
B-single: Br6c10 = e
whip[1]: Br7c10{e .} ==> Nr7c10 ≠ 2
N-single: Nr7c10 = 1
whip[1]: Pr9c9{ns .} ==> Br9c9 ≠ o, Br9c8 ≠ o
B-single: Br9c8 = e
B-single: Br9c9 = sw
whip[1]: Br9c8{e .} ==> Nr9c8 ≠ 0, Pr10c9 ≠ o
N-single: Nr9c8 = 1
P-single: Pr10c9 = ne
whip[1]: Pr10c9{ne .} ==> Br10c9 ≠ o, Br10c9 ≠ e
whip[1]: Br10c9{ne .} ==> Pr10c10 ≠ o, Nr10c9 ≠ 0
P-single: Pr10c10 = sw
whip[1]: Pr10c10{sw .} ==> Br10c9 ≠ n
B-single: Br10c9 = ne
whip[1]: Br10c9{ne .} ==> Nr10c9 ≠ 1, Pr11c10 ≠ o
N-single: Nr10c9 = 2
P-single: Pr11c10 = ne
whip[1]: Pr11c10{ne .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Br9c9{sw .} ==> Nr9c9 ≠ 0
N-single: Nr9c9 = 2
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Br10c10{esw .} ==> Nr10c10 ≠ 0
N-single: Nr10c10 = 3
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Br2c9{w .} ==> Pr2c10 ≠ sw, Pr3c9 ≠ ne, Pr3c10 ≠ nw, Pr2c9 ≠ se
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw, Br2c8 ≠ e
Entering_relation_bivalue_with_<Fact-177397>
Entering_level_BC2_with_<Fact-177604>
Entering_level_W2_with_<Fact-178054>
Entering_level_BC3_with_<Fact-179312>
biv-chain[3]: Br1c5{o swn} - Pr1c6{o ew} - Br1c6{s n} ==> Pr2c6 ≠ ew
w[1]-1-in-r1c6-symmetric-sw-corner ==> Pr1c7 ≠ o
P-single: Pr1c7 = ew
w[1]-1-in-r1c7-asymmetric-nw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ew
whip[1]: Pr1c7{ew .} ==> Br1c7 ≠ s, Br1c6 ≠ s, Hr1c7 ≠ 0, Hr1c6 ≠ 0
H-single: Hr1c6 = 1
H-single: Hr1c7 = 1
B-single: Br1c6 = n
B-single: Br1c7 = n
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
different-colours-in-r1{c4 c5} ==> Hr1c5 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c6 ≠ o
P-single: Pr1c6 = ew
B-single: Br0c6 = s
w[1]-1-in-r1c6-asymmetric-nw-corner ==> Pr2c7 ≠ ew
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ o
B-single: Br1c5 = swn
whip[1]: Br1c5{swn .} ==> Nr1c5 ≠ 0, Pr2c6 ≠ o, Pr2c5 ≠ o, Pr1c5 ≠ o
N-single: Nr1c5 = 3
w[1]-adjacent-1-3-on-edge-in-r1{c6 c5} ==> Hr2c6 = 0
w[1]-diagonal-closed-3-1-in-{r1c5...r2c6} ==> Vr2c7 = 0
w[1]-diagonal-1-1-in-{r2c6...r3c7}-with-no-se-inner-sides ==> Hr3c7 = 0
w[1]-diagonal-1-1-in-{r2c6...r1c7}-with-no-ne-inner-sides ==> Hr2c7 = 0
w[1]-diagonal-1-1-in-{r2c6...r3c5}-with-no-ne-outer-sides ==> Hr4c5 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c6{r3 r4} ==> Hr4c6 = 0
w[1]-diagonal-1-1-in-{r3c6...r4c7}-with-no-se-inner-sides ==> Hr4c7 = 0
P-single: Pr5c6 = nw
P-single: Pr4c5 = o
P-single: Pr1c5 = se
P-single: Pr2c5 = ne
P-single: Pr2c6 = sw
w[1]-1-in-r3c5-symmetric-sw-corner ==> Pr3c6 ≠ o
P-single: Pr3c6 = ns
w[1]-1-in-r3c6-asymmetric-nw-corner ==> Pr4c7 ≠ ew
P-single: Pr4c7 = o
w[1]-1-in-r3c7-symmetric-sw-corner ==> Pr3c8 ≠ ne, Pr3c8 ≠ o
w[1]-1-in-r4c7-symmetric-nw-corner ==> Pr5c8 ≠ o
P-single: Pr5c8 = ne
w[1]-1-in-r2c6-asymmetric-sw-corner ==> Pr2c7 ≠ se
P-single: Pr2c7 = o
w[1]-1-in-r1c7-symmetric-sw-corner ==> Pr1c8 ≠ o
P-single: Pr1c8 = ew
w[1]-1-in-r1c8-asymmetric-nw-corner ==> Pr2c9 ≠ sw, Pr2c9 ≠ ew
P-single: Pr2c9 = o
w[1]-1-in-r1c9-symmetric-sw-corner ==> Pr1c10 ≠ o
w[1]-1-in-r2c9-symmetric-nw-corner ==> Pr3c10 ≠ se, Pr3c10 ≠ o
w[1]-1-in-r2c6-asymmetric-nw-corner ==> Pr3c7 ≠ ne
P-single: Pr3c7 = o
w[1]-1-in-r3c7-symmetric-nw-corner ==> Pr4c8 ≠ se
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
no-vertical-line-r3{c6 c7} ==> Ir3c6 = in
no-horizontal-line-{r2 r3}c6 ==> Ir2c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
same-colour-in-r4{c4 c5} ==> Vr4c5 = 0
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
whip[1]: Hr2c6{0 .} ==> Br2c6 ≠ n
whip[1]: Vr2c7{0 .} ==> Br2c6 ≠ e, Br2c7 ≠ swn
B-single: Br2c6 = w
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 3, Pr3c8 ≠ ew
whip[1]: Pr3c8{se .} ==> Vr3c8 ≠ 0, Br2c8 ≠ ne, Br2c8 ≠ sw, Br2c8 ≠ swn, Br3c8 ≠ ns, Br2c8 ≠ o, Br2c8 ≠ n, Br3c7 ≠ n, Br3c7 ≠ s, Br3c8 ≠ s
V-single: Vr3c8 = 1
B-single: Br3c7 = e
vertical-line-r3{c7 c8} ==> Ir3c8 = out
whip[1]: Vr3c8{1 .} ==> Pr4c8 ≠ ew
P-single: Pr4c8 = ns
whip[1]: Pr4c8{ns .} ==> Br4c7 ≠ n, Vr4c8 ≠ 0, Hr4c8 ≠ 1, Br4c8 ≠ ne, Br4c8 ≠ swn
H-single: Hr4c8 = 0
V-single: Vr4c8 = 1
B-single: Br4c8 = sw
B-single: Br4c7 = e
vertical-line-r4{c7 c8} ==> Ir4c8 = out
same-colour-in-r4{c8 c9} ==> Vr4c9 = 0
w[0]-adjacent-3-in-r5c9-nolines-north ==> Hr5c8 = 1
whip[1]: Hr4c8{0 .} ==> Pr4c9 ≠ ew, Pr4c9 ≠ sw
P-single: Pr4c9 = ne
whip[1]: Pr4c9{ne .} ==> Br3c9 ≠ n, Br3c9 ≠ o, Vr3c9 ≠ 0, Hr4c9 ≠ 0, Br3c9 ≠ se, Br3c9 ≠ nes, Br4c9 ≠ w
H-single: Hr4c9 = 1
V-single: Vr3c9 = 1
B-single: Br4c9 = n
B-single: Br3c9 = esw
vertical-line-r3{c8 c9} ==> Ir3c9 = in
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
whip[1]: Hr4c9{1 .} ==> Pr4c10 ≠ o
P-single: Pr4c10 = nw
w[1]-1-in-r4c9-asymmetric-ne-corner ==> Pr5c9 ≠ ns
P-single: Pr5c9 = sw
whip[1]: Pr4c10{nw .} ==> Br3c10 ≠ n, Br3c10 ≠ o
whip[1]: Br3c10{nw .} ==> Pr3c10 ≠ ne, Pr3c10 ≠ ew, Nr3c10 ≠ 0
whip[1]: Pr3c10{sw .} ==> Hr3c10 ≠ 1, Br2c10 ≠ se, Br2c10 ≠ esw, Br2c10 ≠ nes, Br3c10 ≠ nw, Br2c9 ≠ n, Br2c9 ≠ w
H-single: Hr3c10 = 0
B-single: Br3c10 = w
no-horizontal-line-{r2 r3}c10 ==> Ir2c10 = out
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
whip[1]: Hr3c10{0 .} ==> Pr3c11 ≠ nw
P-single: Pr3c11 = o
whip[1]: Br3c10{w .} ==> Nr3c10 ≠ 2
N-single: Nr3c10 = 1
w[1]-diagonal-1-1-in-{r3c10...r2c9}-with-no-se-outer-sides ==> Hr2c9 = 0, Vr2c9 = 0
w[1]-diagonal-1-1-in-{r2c9...r1c8}-with-no-nw-inner-sides ==> Hr2c8 = 0
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
no-vertical-line-r2{c8 c9} ==> Ir2c9 = in
same-colour-in-{r2 r3}c9 ==> Hr3c9 = 0
different-colours-in-r2{c9 c10} ==> Hr2c10 = 1
different-colours-in-{r2 r3}c8 ==> Hr3c8 = 1

LOOP[80]: Vr2c10-Vr3c10-Hr4c9-Vr3c9-Hr3c8-Vr3c8-Vr4c8-Hr5c8-Vr5c9-Hr6c9-Vr5c10-Hr5c10-Vr5c11-Vr6c11-Vr7c11-Vr8c11-Vr9c11-Vr10c11-Hr11c10-Vr10c10-Hr10c9-Vr9c9-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr7c7-Vr6c7-Hr6c6-Vr6c6-Vr7c6-Vr8c6-Vr9c6-Hr10c6-Hr10c7-Vr10c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr8c2-Hr9c2-Hr9c3-Vr8c4-Vr7c4-Vr6c4-Hr6c3-Vr6c3-Hr7c2-Vr6c2-Vr5c2-Vr4c2-Vr3c2-Vr2c2-Hr2c2-Hr2c3-Vr2c4-Vr3c4-Vr4c4-Hr5c4-Hr5c5-Vr4c6-Vr3c6-Vr2c6-Hr2c5-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Hr1c9- ==> Vr1c10 = 1
no-horizontal-line-{r0 r1}c10 ==> Ir1c10 = out
same-colour-in-r1{c10 c11} ==> Vr1c11 = 0
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = BC[3]

OOOOXXXXXO
OXXOOXXXXO
OXXOOXXOXO
OXXOOXXOOO
OXXXXXXXOX
OXOXXOXXXX
OOOXXOXOXX
XOOXXOOOXX
XXXXXOOOXX
XXXXXXXOOX

.   .   .   .   .———.———.———.———.———.   .
          1     |     1   1   1   1 |
.   .———.———.   .———.   .   .   .   .   .
  1 |       | 1     | 1           1 |
.   .   .   .   .   .   .   .———.   .   .
  1 | 1   1 | 1   1 | 1   1 |   |   |
.   .   .   .   .   .   .   .   .———.   .
    | 1     |       | 1   1 |     1   1
.   .   .   .———.———.   .   .———.   .———.
  1 | 1   1   1       1   0     |   |   |
.   .   .———.   .   .———.   .   .———.   .
    |   |   | 1   1 |   | 1   1   1   1 |
.   .———.   .   .   .   .   .———.   .   .
  1   1     | 1   1 |   |   |   | 1     |
.———.   .   .   .   .   .———.   .   .   .
|   |       | 1   1 | 1   1   1 | 1   1 |
.   .———.———.   .   .   .   .   .   .   .
|     1           1 |     1     |     1 |
.   .   .   .   .   .———.———.   .———.   .
|     1   1   1   1         | 1     |   |
.———.———.———.———.———.———.———.   .   .———.

init-time = 0.55s, solve-time = 34.41s, total-time = 34.96s
nb-facts=<Fact-185480>
Quasi-Loop max length = 80
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
