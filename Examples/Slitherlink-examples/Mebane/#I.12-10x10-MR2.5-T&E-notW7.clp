Mellon rating = 2.5


(solve 
10 10 
. 2 . . 2 3 . . 2 . 
. 3 2 3 . . 1 . 2 . 
. 2 . . . . 0 1 0 2 
. 0 . . 0 2 . . 2 . 
. 1 1 3 . . . . 2 . 
. 2 . . . . 0 1 0 . 
. 0 . . 0 1 . . 2 . 
2 2 1 2 . . . . 2 . 
. 2 . 2 . . 0 1 0 . 
. 0 . . 1 2 . . 2 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . . 2 3 . . 2 .
. 3 2 3 . . 1 . 2 .
. 2 . . . . 0 1 0 2
. 0 . . 0 2 . . 2 .
. 1 1 3 . . . . 2 .
. 2 . . . . 0 1 0 .
. 0 . . 0 1 . . 2 .
2 2 1 2 . . . . 2 .
. 2 . 2 . . 0 1 0 .
. 0 . . 1 2 . . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.61889910697937
start solution 0.631182909011841
entering BRT
w[0]-0-in-r10c2 ==> Hr11c2 = 0, Hr10c2 = 0, Vr10c3 = 0, Vr10c2 = 0
w[0]-0-in-r9c9 ==> Hr10c9 = 0, Hr9c9 = 0, Vr9c10 = 0, Vr9c9 = 0
w[0]-0-in-r9c7 ==> Hr10c7 = 0, Hr9c7 = 0, Vr9c8 = 0, Vr9c7 = 0
w[0]-0-in-r7c5 ==> Hr8c5 = 0, Hr7c5 = 0, Vr7c6 = 0, Vr7c5 = 0
w[0]-0-in-r7c2 ==> Hr8c2 = 0, Hr7c2 = 0, Vr7c3 = 0, Vr7c2 = 0
w[0]-0-in-r6c9 ==> Hr7c9 = 0, Hr6c9 = 0, Vr6c10 = 0, Vr6c9 = 0
w[0]-0-in-r6c7 ==> Hr7c7 = 0, Hr6c7 = 0, Vr6c8 = 0, Vr6c7 = 0
w[0]-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[0]-0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
w[0]-0-in-r3c9 ==> Hr4c9 = 0, Hr3c9 = 0, Vr3c10 = 0, Vr3c9 = 0
w[0]-0-in-r3c7 ==> Hr4c7 = 0, Hr3c7 = 0, Vr3c8 = 0, Vr3c7 = 0
w[1]-diagonal-3-0-in-{r5c4...r4c5} ==> Vr5c5 = 1, Hr5c4 = 1
w[1]-adjacent-1-1-on-pseudo-edge-in-r5{c2 c3} ==> Vr5c3 = 0
w[1]-3-in-r5c4-closed-ne-corner ==> Pr6c4 ≠ sw, Pr6c4 ≠ ne, Pr6c4 ≠ o
w[3]-adjacent-3-2-0-in-c2{r2 r3 r4} ==> Hr2c2 = 1, Hr3c3 = 0, Hr3c1 = 0
entering level Loop with <Fact-92889>
entering level Col with <Fact-92967>
no-horizontal-line-{r10 r11}c2 ==> Ir10c2 = out
no-vertical-line-r10{c1 c2} ==> Ir10c1 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
same-colour-in-{r10 r11}c3 ==> Hr11c3 = 0
same-colour-in-{r10 r11}c1 ==> Hr11c1 = 0
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
Starting_init_links_with_<Fact-92975>
1121 candidates, 8107 csp-links and 33825 links. Density = 5.39%
starting non trivial part of solution
Entering_level_W1_with_<Fact-176844>
whip[1]: Vr10c1{0 .} ==> Br10c1 ≠ swn, Br10c0 ≠ e, Pr11c1 ≠ ne, Pr10c1 ≠ ns, Pr10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr11c1 = o
B-single: Br10c0 = o
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Br11c1{o .} ==> Pr11c2 ≠ nw, Pr11c2 ≠ ew
whip[1]: Br10c1{ne .} ==> Nr10c1 ≠ 3
whip[1]: Pr10c1{ne .} ==> Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ ew, Br9c1 ≠ wne, Br9c1 ≠ nes
whip[1]: Hr11c3{0 .} ==> Br10c3 ≠ nes, Br11c3 ≠ n, Pr11c3 ≠ ne, Pr11c3 ≠ ew, Pr11c4 ≠ nw, Pr11c4 ≠ ew, Br10c3 ≠ s, Br10c3 ≠ ns, Br10c3 ≠ se, Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ swn
B-single: Br11c3 = o
whip[1]: Pr11c4{ne .} ==> Br10c4 ≠ s, Br10c4 ≠ w, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ nes
whip[1]: Hr3c1{0 .} ==> Br3c1 ≠ nes, Pr3c1 ≠ ne, Pr3c1 ≠ se, Pr3c2 ≠ ew, Pr3c2 ≠ sw, Br2c1 ≠ s, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ nes, Br3c1 ≠ n, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ wne
whip[1]: Pr3c2{se .} ==> Br3c2 ≠ se
whip[1]: Hr3c3{0 .} ==> Br3c3 ≠ nes, Pr3c3 ≠ se, Pr3c3 ≠ ew, Pr3c4 ≠ ew, Pr3c4 ≠ sw, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ sw, Br3c3 ≠ n, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ swn, Br3c3 ≠ wne
whip[1]: Pr3c3{sw .} ==> Br3c2 ≠ sw
whip[1]: Hr2c2{1 .} ==> Br2c2 ≠ esw, Pr2c2 ≠ o, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Pr2c2 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Pr2c3 ≠ se, Br1c2 ≠ ne, Br1c2 ≠ nw, Br1c2 ≠ ew
whip[1]: Pr3c4{ns .} ==> Vr2c4 ≠ 0, Br2c3 ≠ nw, Br2c4 ≠ nes, Br3c4 ≠ s, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ o, Br3c4 ≠ e
V-single: Vr2c4 = 1
whip[1]: Vr2c4{1 .} ==> Pr2c4 ≠ nw, Pr2c4 ≠ ew
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ se, Br1c3 ≠ esw, Br1c3 ≠ nes, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br2c4{wne .} ==> Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr3c5 ≠ o, Pr3c5 ≠ se
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Pr2c5{sw .} ==> Br1c5 ≠ sw
whip[1]: Br1c5{ew .} ==> Pr1c6 ≠ o
whip[1]: Pr1c2{sw .} ==> Hr1c1 ≠ 0, Br1c1 ≠ se, Br1c2 ≠ se, Br1c1 ≠ o, Br1c1 ≠ e, Br1c1 ≠ s
H-single: Hr1c1 = 1
horizontal-line-{r0 r1}c1 ==> Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o, Pr1c1 ≠ o
P-single: Pr1c1 = se
B-single: Br0c1 = s
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o, Pr2c1 ≠ o, Pr2c1 ≠ se
B-single: Br1c0 = e
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ nw, Br2c1 ≠ wne, Br2c1 ≠ o, Br2c1 ≠ e
whip[1]: Br2c1{ew .} ==> Nr2c1 ≠ 0, Nr2c1 ≠ 3
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0, Nr1c1 ≠ 1
whip[1]: Br1c2{sw .} ==> Vr1c3 ≠ 1, Pr1c3 ≠ se, Pr1c3 ≠ sw
V-single: Vr1c3 = 0
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ w, Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ swn, Br1c3 ≠ wne
whip[1]: Br1c3{ns .} ==> Nr1c3 ≠ 3
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ ne
whip[1]: Vr5c3{0 .} ==> Br5c3 ≠ w, Pr5c3 ≠ ns, Pr5c3 ≠ se, Pr5c3 ≠ sw, Pr6c3 ≠ ns, Pr6c3 ≠ nw, Br5c2 ≠ e
whip[1]: Br5c2{w .} ==> Pr6c2 ≠ ne, Pr5c2 ≠ se
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ se, Br5c1 ≠ esw, Br5c1 ≠ nes, Br6c1 ≠ sw, Br6c2 ≠ se, Br6c1 ≠ o, Br6c1 ≠ s, Br6c1 ≠ w
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ sw, Br6c3 ≠ se, Br6c3 ≠ o, Br6c3 ≠ e, Br6c3 ≠ s
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Br5c3{s .} ==> Pr5c4 ≠ sw, Pr6c4 ≠ nw
whip[1]: Pr6c4{ew .} ==> Br5c4 ≠ esw, Br5c4 ≠ swn, Br6c3 ≠ sw, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c4 ≠ se, Br6c3 ≠ w, Br6c3 ≠ ne, Br6c4 ≠ o, Br6c4 ≠ e, Br6c4 ≠ s
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Br5c4{nes .} ==> Pr5c4 ≠ o, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Pr5c5 ≠ o, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Pr5c5 ≠ se, Pr5c5 ≠ ew, Pr6c5 ≠ o, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c5 ≠ sw
P-single: Pr5c5 = sw
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ ns, Br5c5 ≠ ne, Br5c5 ≠ s, Br5c5 ≠ e, Br5c5 ≠ n, Br5c5 ≠ o, Br4c4 ≠ ne, Br4c4 ≠ w, Br4c4 ≠ e, Br4c4 ≠ n, Br4c4 ≠ o, Vr4c5 ≠ 1, Hr5c5 ≠ 1, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br4c4 ≠ wne, Br4c4 ≠ nes, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br5c5{esw .} ==> Pr5c6 ≠ nw, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Nr5c5 ≠ 0
whip[1]: Pr5c6{se .} ==> Br4c6 ≠ sw, Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ nes, Br5c6 ≠ n
whip[1]: Br4c4{swn .} ==> Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr4c5 ≠ sw, Nr4c4 ≠ 0
whip[1]: Pr6c5{nw .} ==> Br6c4 ≠ ne, Br6c4 ≠ wne, Br6c4 ≠ nes, Br6c5 ≠ nw, Br6c5 ≠ swn, Br6c5 ≠ wne
whip[1]: Pr5c4{ew .} ==> Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes
whip[1]: Vr3c7{0 .} ==> Br3c6 ≠ nes, Vr3c7 ≠ 1, Pr3c7 ≠ ns, Pr3c7 ≠ se, Pr3c7 ≠ sw, Pr4c7 ≠ ns, Pr4c7 ≠ nw, Br3c6 ≠ e, Br3c6 ≠ ne, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c6 ≠ wne
whip[1]: Pr4c7{sw .} ==> Br4c7 ≠ se, Br4c7 ≠ o, Br4c7 ≠ e, Br4c7 ≠ s
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Vr3c8{0 .} ==> Br3c8 ≠ w, Vr3c8 ≠ 1, Pr3c8 ≠ ns, Pr3c8 ≠ se, Pr3c8 ≠ sw, Pr4c8 ≠ ne, Pr4c8 ≠ ns, Pr4c8 ≠ nw
whip[1]: Br3c8{s .} ==> Pr3c9 ≠ sw, Pr4c9 ≠ nw
whip[1]: Pr4c9{sw .} ==> Br4c9 ≠ nw
whip[1]: Pr3c9{ew .} ==> Br2c9 ≠ sw
whip[1]: Hr3c7{0 .} ==> Br2c7 ≠ s, Hr3c7 ≠ 1, Pr3c7 ≠ ne, Pr3c7 ≠ ew, Pr3c8 ≠ nw, Pr3c8 ≠ ew
whip[1]: Pr3c8{ne .} ==> Br2c8 ≠ s, Br2c8 ≠ w, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ wne, Br2c8 ≠ nes
whip[1]: Pr3c7{nw .} ==> Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ e, Br2c6 ≠ s
whip[1]: Br2c7{w .} ==> Pr2c7 ≠ se, Pr2c8 ≠ sw
whip[1]: Hr4c7{0 .} ==> Br4c7 ≠ nes, Hr4c7 ≠ 1, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c8 ≠ ew, Pr4c8 ≠ sw, Br4c7 ≠ n, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne
P-single: Pr5c6 = o
P-single: Pr4c7 = sw
whip[1]: Pr5c6{o .} ==> Vr5c6 ≠ 1, Vr4c6 ≠ 1, Hr5c6 ≠ 1, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br5c5 ≠ ew, Br5c5 ≠ esw, Br5c6 ≠ w, Br5c6 ≠ nw, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ wne
H-single: Hr5c6 = 0
V-single: Vr5c6 = 0
w[1]-2-in-r4c6-open-sw-corner ==> Hr4c6 = 1, Vr4c7 = 1
B-single: Br4c6 = ne
whip[1]: Hr5c6{0 .} ==> Pr5c7 ≠ ew, Pr5c7 ≠ sw
whip[1]: Pr5c7{ns .} ==> Br5c7 ≠ s, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ swn, Br5c7 ≠ wne, Br5c7 ≠ o, Br5c7 ≠ e
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Vr5c6{0 .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ ns, Pr6c6 ≠ nw
whip[1]: Hr4c6{1 .} ==> Br3c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ sw, Br3c6 ≠ n, Br3c6 ≠ w, Br3c6 ≠ nw
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 0
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ se, Br3c5 ≠ esw, Br3c5 ≠ nes, Br3c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ w
whip[1]: Br3c5{sw .} ==> Nr3c5 ≠ 0, Nr3c5 ≠ 3
whip[1]: Br5c6{se .} ==> Nr5c6 ≠ 3
whip[1]: Br5c5{sw .} ==> Nr5c5 ≠ 3
whip[1]: Pr4c8{se .} ==> Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ nes, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Vr3c9{0 .} ==> Br3c8 ≠ e, Vr3c9 ≠ 1, Pr3c9 ≠ ns, Pr3c9 ≠ se, Pr4c9 ≠ ne, Pr4c9 ≠ ns
whip[1]: Pr4c9{sw .} ==> Br4c8 ≠ se, Br4c8 ≠ e
whip[1]: Pr3c9{ew .} ==> Br2c8 ≠ e, Br2c8 ≠ ne
whip[1]: Br2c8{swn .} ==> Pr2c9 ≠ sw
whip[1]: Pr2c9{ew .} ==> Br1c8 ≠ se, Br1c8 ≠ esw, Br1c8 ≠ nes, Br2c9 ≠ se, Br1c9 ≠ ne
whip[1]: Br1c9{sw .} ==> Pr1c10 ≠ sw
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ sw, Br1c10 ≠ w
whip[1]: Vr3c10{0 .} ==> Br3c10 ≠ sw, Vr3c10 ≠ 1, Pr3c10 ≠ ns, Pr3c10 ≠ sw, Pr4c10 ≠ ns, Pr4c10 ≠ nw, Br3c10 ≠ nw, Br3c10 ≠ ew
whip[1]: Pr4c10{ew .} ==> Br4c10 ≠ ew, Br4c10 ≠ sw, Br4c10 ≠ esw, Br4c9 ≠ ne, Br4c10 ≠ w
whip[1]: Pr3c10{ew .} ==> Br2c10 ≠ nw, Br2c10 ≠ ew, Br2c10 ≠ wne, Br2c10 ≠ w
whip[1]: Hr3c9{0 .} ==> Br2c9 ≠ ns, Hr3c9 ≠ 1, Pr3c9 ≠ ew, Pr3c10 ≠ ew
whip[1]: Pr3c10{ne .} ==> Br2c10 ≠ s, Br2c10 ≠ ns, Br2c10 ≠ se, Br2c10 ≠ nes
whip[1]: Pr3c9{nw .} ==> Br2c8 ≠ sw, Br2c8 ≠ swn
whip[1]: Br2c8{esw .} ==> Pr2c8 ≠ se, Nr2c8 ≠ 2
whip[1]: Hr4c9{0 .} ==> Br4c9 ≠ ns, Hr4c9 ≠ 1, Pr4c9 ≠ ew, Pr4c10 ≠ ew
whip[1]: Pr4c10{se .} ==> Br4c10 ≠ ne, Br4c10 ≠ ns, Br4c10 ≠ nes, Br4c10 ≠ n
whip[1]: Pr4c9{sw .} ==> Br4c8 ≠ nw, Br4c8 ≠ swn
whip[1]: Br4c8{wne .} ==> Pr5c8 ≠ ne, Nr4c8 ≠ 2
whip[1]: Vr4c2{0 .} ==> Br4c1 ≠ nes, Vr4c2 ≠ 1, Pr4c2 ≠ ns, Pr4c2 ≠ se, Pr4c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ nw, Br4c1 ≠ e, Br4c1 ≠ ne, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ wne
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ ew, Br5c1 ≠ e
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ ew, Br3c1 ≠ e
whip[1]: Vr4c3{0 .} ==> Br4c3 ≠ wne, Vr4c3 ≠ 1, Pr4c3 ≠ ns, Pr4c3 ≠ se, Pr4c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ nw, Br4c3 ≠ w, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ swn
whip[1]: Br4c3{ns .} ==> Nr4c3 ≠ 3
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ ew, Br3c3 ≠ w
whip[1]: Hr4c2{0 .} ==> Br3c2 ≠ ns, Hr4c2 ≠ 1, Pr4c2 ≠ ew, Pr4c3 ≠ ew
whip[1]: Pr4c3{ne .} ==> Br3c3 ≠ s, Br3c3 ≠ se
whip[1]: Pr4c2{nw .} ==> Br3c1 ≠ sw, Br3c1 ≠ s
whip[1]: Hr5c2{0 .} ==> Br5c2 ≠ n, Hr5c2 ≠ 1, Pr5c2 ≠ ew, Pr5c3 ≠ ew
P-single: Pr5c3 = o
w[1]-1-in-r5c2-symmetric-ne-corner ==> Pr6c2 ≠ sw
w[1]-1-in-r5c3-symmetric-nw-corner ==> Pr6c4 ≠ se
whip[1]: Pr5c3{o .} ==> Hr5c3 ≠ 1, Br4c3 ≠ s, Br4c3 ≠ ns, Br5c3 ≠ n
H-single: Hr5c3 = 0
whip[1]: Hr5c3{0 .} ==> Pr5c4 ≠ ew
whip[1]: Pr6c4{ew .} ==> Br6c4 ≠ nw, Br6c4 ≠ swn
whip[1]: Pr6c2{ew .} ==> Br6c1 ≠ wne, Br6c1 ≠ nes, Br6c1 ≠ ne
whip[1]: Pr5c2{sw .} ==> Br5c1 ≠ nw, Br5c1 ≠ swn, Br5c1 ≠ n, Br5c1 ≠ ns
whip[1]: Hr4c5{0 .} ==> Br3c5 ≠ sw, Hr4c5 ≠ 1, Pr4c5 ≠ ne, Pr4c5 ≠ ew, Pr4c6 ≠ ew, Br3c5 ≠ s, Br3c5 ≠ ns
P-single: Pr4c6 = ne
whip[1]: Pr4c6{ne .} ==> Vr3c6 ≠ 0, Br3c6 ≠ s, Br3c6 ≠ ns
V-single: Vr3c6 = 1
whip[1]: Vr3c6{1 .} ==> Pr3c6 ≠ o, Pr3c6 ≠ ne, Pr3c6 ≠ nw, Pr3c6 ≠ ew
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ se, Br2c5 ≠ esw, Br2c5 ≠ nes, Br2c6 ≠ esw
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 1
whip[1]: Pr4c5{nw .} ==> Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ ew, Br3c4 ≠ sw
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 2
whip[1]: Vr6c7{0 .} ==> Br6c6 ≠ nes, Vr6c7 ≠ 1, Pr6c7 ≠ ns, Pr6c7 ≠ se, Pr6c7 ≠ sw, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ nw, Br6c6 ≠ e, Br6c6 ≠ ne, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ wne
whip[1]: Vr6c8{0 .} ==> Br6c8 ≠ w, Vr6c8 ≠ 1, Pr6c8 ≠ ns, Pr6c8 ≠ se, Pr6c8 ≠ sw, Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ nw
whip[1]: Br6c8{s .} ==> Pr6c9 ≠ sw, Pr7c9 ≠ nw
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ nw
whip[1]: Pr6c9{ew .} ==> Br5c9 ≠ sw
whip[1]: Hr6c7{0 .} ==> Br5c7 ≠ nes, Hr6c7 ≠ 1, Pr6c7 ≠ ne, Pr6c7 ≠ ew, Pr6c8 ≠ nw, Pr6c8 ≠ ew, Br5c7 ≠ ns, Br5c7 ≠ sw, Br5c7 ≠ esw
whip[1]: Br5c7{ew .} ==> Nr5c7 ≠ 3
whip[1]: Pr6c8{ne .} ==> Br5c8 ≠ s, Br5c8 ≠ w, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ wne, Br5c8 ≠ nes
whip[1]: Pr6c7{nw .} ==> Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{se .} ==> Nr5c6 ≠ 1
whip[1]: Hr7c7{0 .} ==> Br7c7 ≠ nes, Hr7c7 ≠ 1, Pr7c7 ≠ se, Pr7c7 ≠ ew, Pr7c8 ≠ ew, Pr7c8 ≠ sw, Br7c7 ≠ n, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ swn, Br7c7 ≠ wne
w[1]-1-in-r7c6-symmetric-ne-corner ==> Pr8c6 ≠ sw, Pr8c6 ≠ ne, Pr8c6 ≠ o
whip[1]: Pr8c6{ew .} ==> Br8c5 ≠ sw, Br8c5 ≠ wne, Br8c5 ≠ nes, Br7c6 ≠ n, Br7c6 ≠ e, Br8c5 ≠ o, Br8c5 ≠ s, Br8c5 ≠ w, Br8c5 ≠ ne
whip[1]: Br8c5{swn .} ==> Nr8c5 ≠ 0
whip[1]: Br7c6{w .} ==> Hr7c6 ≠ 1, Vr7c7 ≠ 1, Pr7c6 ≠ ne, Pr8c7 ≠ ne, Pr8c7 ≠ ns, Pr8c7 ≠ nw, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c7 ≠ sw
V-single: Vr7c7 = 0
H-single: Hr7c6 = 0
P-single: Pr7c7 = o
whip[1]: Vr7c7{0 .} ==> Br7c7 ≠ w, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 3
whip[1]: Hr7c6{0 .} ==> Br6c6 ≠ s, Br6c6 ≠ ns, Br6c6 ≠ sw, Br6c6 ≠ swn
whip[1]: Br6c6{nw .} ==> Nr6c6 ≠ 3
whip[1]: Pr7c8{se .} ==> Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ nes, Br7c8 ≠ n, Br7c8 ≠ w
whip[1]: Vr6c9{0 .} ==> Br6c8 ≠ e, Vr6c9 ≠ 1, Pr6c9 ≠ ns, Pr6c9 ≠ se, Pr7c9 ≠ ne, Pr7c9 ≠ ns
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ se, Br7c8 ≠ e
whip[1]: Pr6c9{ew .} ==> Br5c8 ≠ e, Br5c8 ≠ ne
whip[1]: Vr6c10{0 .} ==> Br6c10 ≠ wne, Vr6c10 ≠ 1, Pr6c10 ≠ ns, Pr6c10 ≠ se, Pr6c10 ≠ sw, Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Br6c10 ≠ w, Br6c10 ≠ nw, Br6c10 ≠ ew, Br6c10 ≠ sw, Br6c10 ≠ esw, Br6c10 ≠ swn
whip[1]: Pr7c10{ew .} ==> Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c9 ≠ ne, Br7c10 ≠ w
whip[1]: Pr6c10{ew .} ==> Br5c9 ≠ se, Br5c10 ≠ nw, Br5c10 ≠ ew, Br5c10 ≠ wne, Br5c10 ≠ w
whip[1]: Hr6c9{0 .} ==> Br5c9 ≠ ns, Hr6c9 ≠ 1, Pr6c9 ≠ ew, Pr6c10 ≠ ew
whip[1]: Pr6c10{ne .} ==> Br5c10 ≠ s, Br5c10 ≠ ns, Br5c10 ≠ se, Br5c10 ≠ nes
whip[1]: Pr6c9{nw .} ==> Br5c8 ≠ sw, Br5c8 ≠ swn
whip[1]: Br5c8{esw .} ==> Pr5c8 ≠ se, Nr5c8 ≠ 2
whip[1]: Hr7c9{0 .} ==> Br7c9 ≠ ns, Hr7c9 ≠ 1, Pr7c9 ≠ ew, Pr7c10 ≠ ew
whip[1]: Pr7c10{se .} ==> Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ nes, Br7c10 ≠ n
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ swn
whip[1]: Br7c8{wne .} ==> Pr8c8 ≠ ne, Nr7c8 ≠ 2
whip[1]: Vr7c2{0 .} ==> Br7c1 ≠ nes, Vr7c2 ≠ 1, Pr7c2 ≠ ns, Pr7c2 ≠ se, Pr7c2 ≠ sw, Pr8c2 ≠ ne, Pr8c2 ≠ ns, Pr8c2 ≠ nw, Br7c1 ≠ e, Br7c1 ≠ ne, Br7c1 ≠ se, Br7c1 ≠ ew, Br7c1 ≠ esw, Br7c1 ≠ wne
whip[1]: Pr8c2{sw .} ==> Br8c1 ≠ se, Br8c1 ≠ ew, Br8c2 ≠ nw
whip[1]: Br8c1{sw .} ==> Pr8c1 ≠ o
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ o, Br7c1 ≠ n
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 0
whip[1]: Pr7c2{ew .} ==> Br6c1 ≠ ew, Br6c1 ≠ e
whip[1]: Vr7c3{0 .} ==> Br7c3 ≠ wne, Vr7c3 ≠ 1, Pr7c3 ≠ ns, Pr7c3 ≠ se, Pr7c3 ≠ sw, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Br7c3 ≠ w, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ ne, Br8c3 ≠ w
whip[1]: Br8c3{s .} ==> Vr8c3 ≠ 1, Pr9c3 ≠ ns, Pr8c3 ≠ se, Pr8c4 ≠ sw, Pr9c3 ≠ nw, Pr9c4 ≠ nw
V-single: Vr8c3 = 0
w[1]-2-in-r8c2-open-ne-corner ==> Hr9c2 = 1, Vr8c2 = 1, Hr9c1 = 0, Vr9c2 = 0
w[1]-2-in-r9c2-open-sw-corner ==> Vr9c3 = 1, Hr9c3 = 0
vertical-line-r9{c2 c3} ==> Ir9c3 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
no-vertical-line-r7{c1 c2} ==> Ir7c1 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
vertical-line-r8{c1 c2} ==> Ir8c1 = out
no-horizontal-line-{r8 r9}c1 ==> Ir9c1 = out
same-colour-in-{r9 r10}c1 ==> Hr10c1 = 0
same-colour-in-r9{c0 c1} ==> Vr9c1 = 0
same-colour-in-r8{c0 c1} ==> Vr8c1 = 0
w[1]-2-in-r8c1-open-sw-corner ==> Hr8c1 = 1
same-colour-in-{r7 r8}c3 ==> Hr8c3 = 0
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
whip[1]: Vr8c3{0 .} ==> Br8c2 ≠ se, Br8c2 ≠ ew
whip[1]: Br8c2{sw .} ==> Pr9c2 ≠ ns
whip[1]: Pr9c2{ew .} ==> Br8c1 ≠ nw, Br9c1 ≠ esw, Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ sw, Br9c1 ≠ e, Br9c1 ≠ ne
whip[1]: Br9c1{swn .} ==> Pr10c2 ≠ ns, Pr10c2 ≠ nw
whip[1]: Br8c1{sw .} ==> Pr9c1 ≠ ns
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ sw, Br9c1 ≠ sw, Br9c1 ≠ n
whip[1]: Br9c1{swn .} ==> Nr9c1 ≠ 1, Nr9c1 ≠ 2
whip[1]: Br8c1{ns .} ==> Pr8c1 ≠ ns
P-single: Pr8c1 = ne
whip[1]: Pr8c1{ne .} ==> Br7c1 ≠ s, Br7c1 ≠ w, Br7c1 ≠ ns, Br7c1 ≠ nw
whip[1]: Br7c1{swn .} ==> Pr7c1 ≠ o, Pr7c1 ≠ ne, Nr7c1 ≠ 1
whip[1]: Pr7c1{se .} ==> Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c1 ≠ n
whip[1]: Br6c1{se .} ==> Pr6c1 ≠ ns, Nr6c1 ≠ 1, Nr6c1 ≠ 3
N-single: Nr6c1 = 2
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ wne, Br5c1 ≠ w
whip[1]: Br5c1{sw .} ==> Pr5c1 ≠ se, Nr5c1 ≠ 3
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ ns
whip[1]: Vr8c2{1 .} ==> Pr8c2 ≠ ew, Pr9c2 ≠ ew, Br8c1 ≠ ns, Br8c2 ≠ ns
P-single: Pr8c3 = o
P-single: Pr9c1 = o
P-single: Pr9c2 = ne
P-single: Pr8c2 = sw
B-single: Br8c2 = sw
B-single: Br8c1 = ne
w[1]-1-in-r8c3-symmetric-nw-corner ==> Pr9c4 ≠ se, Pr9c4 ≠ o
w[1]-1-in-r10c5-asymmetric-nw-corner ==> Pr11c6 ≠ ew, Pr11c6 ≠ ne
whip[1]: Pr8c3{o .} ==> Hr8c2 ≠ 1, Br7c3 ≠ s, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c3 ≠ nes, Br8c3 ≠ n
whip[1]: Br8c3{s .} ==> Pr8c4 ≠ nw, Pr8c4 ≠ ew
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 3
whip[1]: Pr9c1{o .} ==> Br9c1 ≠ swn
B-single: Br9c1 = o
whip[1]: Br9c1{o .} ==> Pr10c1 ≠ ne, Pr10c2 ≠ ew, Pr10c2 ≠ sw, Nr9c1 ≠ 3
N-single: Nr9c1 = 0
P-single: Pr10c1 = o
whip[1]: Pr10c1{o .} ==> Br10c1 ≠ n, Br10c1 ≠ ne
whip[1]: Br10c1{e .} ==> Nr10c1 ≠ 2
whip[1]: Pr11c6{nw .} ==> Br11c6 ≠ n, Hr11c6 ≠ 1, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ sw, Br10c5 ≠ e, Br10c5 ≠ s
H-single: Hr11c6 = 0
B-single: Br11c6 = o
no-horizontal-line-{r10 r11}c6 ==> Ir10c6 = out
whip[1]: Hr11c6{0 .} ==> Pr11c7 ≠ ew
whip[1]: Pr11c7{ne .} ==> Br10c7 ≠ s, Br10c7 ≠ w, Br10c7 ≠ ns, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ ew, Br10c7 ≠ wne, Br10c7 ≠ nes
whip[1]: Pr10c6{sw .} ==> Br9c5 ≠ se, Br9c5 ≠ esw, Br9c5 ≠ nes
whip[1]: Br10c5{w .} ==> Hr11c5 ≠ 1, Vr10c6 ≠ 1, Pr11c5 ≠ ne, Pr11c6 ≠ nw, Pr10c6 ≠ ns, Pr11c5 ≠ ew, Pr10c6 ≠ se, Pr10c6 ≠ sw
V-single: Vr10c6 = 0
H-single: Hr11c5 = 0
w[1]-2-in-r10c6-open-sw-corner ==> Hr10c6 = 1, Vr10c7 = 1
P-single: Pr10c7 = sw
P-single: Pr11c7 = ne
P-single: Pr11c6 = o
vertical-line-r10{c6 c7} ==> Ir10c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = in
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
no-vertical-line-r9{c7 c8} ==> Ir9c8 = in
no-vertical-line-r9{c8 c9} ==> Ir9c9 = in
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
no-horizontal-line-{r9 r10}c9 ==> Ir10c9 = in
no-horizontal-line-{r8 r9}c7 ==> Ir8c7 = in
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1
different-colours-in-r9{c10 c11} ==> Hr9c11 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Vr10c6{0 .} ==> Br10c6 ≠ nw, Br10c6 ≠ ew
B-single: Br10c6 = ne
whip[1]: Hr11c5{0 .} ==> Br11c5 ≠ n
B-single: Br11c5 = o
whip[1]: Hr10c6{1 .} ==> Br9c6 ≠ o, Br9c6 ≠ n, Br9c6 ≠ e, Br9c6 ≠ w, Br9c6 ≠ ne, Br9c6 ≠ nw, Br9c6 ≠ ew, Br9c6 ≠ wne
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0
whip[1]: Vr10c7{1 .} ==> Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ e, Br10c7 ≠ ne
whip[1]: Br10c7{swn .} ==> Pr11c8 ≠ o, Pr11c8 ≠ ne, Pr10c8 ≠ sw, Nr10c7 ≠ 0, Nr10c7 ≠ 1
whip[1]: Pr11c8{ew .} ==> Br11c7 ≠ o, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ ne
B-single: Br11c7 = n
whip[1]: Br10c8{nes .} ==> Nr10c8 ≠ 0
whip[1]: Pr10c7{sw .} ==> Vr9c7 ≠ 1, Hr10c7 ≠ 1, Br9c6 ≠ se, Br9c6 ≠ esw, Br9c6 ≠ nes, Br10c7 ≠ swn
whip[1]: Br10c7{esw .} ==> Pr10c8 ≠ nw, Pr10c8 ≠ ew
whip[1]: Br9c6{swn .} ==> Pr9c7 ≠ ns, Pr9c7 ≠ se, Pr9c7 ≠ sw
whip[1]: Hr11c9{1 .} ==> Br11c9 ≠ o, Pr11c9 ≠ nw, Pr11c10 ≠ ne, Br10c9 ≠ ne, Br10c9 ≠ nw, Br10c9 ≠ ew
B-single: Br11c9 = n
whip[1]: Pr11c10{ew .} ==> Br10c10 ≠ esw, Br10c10 ≠ o, Br10c10 ≠ n
whip[1]: Br10c10{nes .} ==> Nr10c10 ≠ 0
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ nes, Br10c8 ≠ w
whip[1]: Vr9c11{1 .} ==> Br9c10 ≠ o, Br9c11 ≠ o, Pr9c11 ≠ o, Pr9c11 ≠ nw, Pr10c11 ≠ o, Pr10c11 ≠ sw, Br9c10 ≠ n, Br9c10 ≠ s, Br9c10 ≠ w, Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ sw, Br9c10 ≠ swn
B-single: Br9c11 = w
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0
whip[1]: Pr10c11{nw .} ==> Br10c10 ≠ w, Br10c10 ≠ nes
whip[1]: Br10c10{se .} ==> Pr10c10 ≠ ne, Pr10c10 ≠ ns, Pr10c10 ≠ ew, Nr10c10 ≠ 1, Nr10c10 ≠ 3
N-single: Nr10c10 = 2
whip[1]: Pr10c10{se .} ==> Br9c10 ≠ esw
whip[1]: Pr9c11{sw .} ==> Br8c10 ≠ nw, Br8c10 ≠ se, Br8c10 ≠ esw, Br8c10 ≠ nes, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ w
whip[1]: Br8c10{wne .} ==> Nr8c10 ≠ 0
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ nw, Br9c5 ≠ o, Br9c5 ≠ n, Br9c5 ≠ w
whip[1]: Br9c5{wne .} ==> Nr9c5 ≠ 0
whip[1]: Pr11c5{nw .} ==> Br10c4 ≠ ne, Br10c4 ≠ sw, Br10c4 ≠ swn, Br10c4 ≠ e
whip[1]: Br10c4{esw .} ==> Pr10c4 ≠ se, Pr10c5 ≠ sw, Nr10c4 ≠ 2
whip[1]: Pr10c5{ew .} ==> Br9c4 ≠ nw, Br9c4 ≠ se, Br9c5 ≠ e, Br9c5 ≠ ne
whip[1]: Vr9c3{1 .} ==> Br9c3 ≠ o, Pr9c3 ≠ ew, Pr10c3 ≠ ew, Pr10c3 ≠ sw, Br9c2 ≠ ns, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ s, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ se, Br9c3 ≠ nes
P-single: Pr10c2 = o
P-single: Pr9c3 = sw
B-single: Br9c2 = ne
w[1]-1-in-r8c3-symmetric-sw-corner ==> Pr8c4 ≠ ne, Pr8c4 ≠ o
whip[1]: Pr10c2{o .} ==> Vr10c2 ≠ 1, Hr10c2 ≠ 1, Br10c1 ≠ e
B-single: Br10c1 = o
whip[1]: Br10c1{o .} ==> Pr11c2 ≠ ne, Nr10c1 ≠ 1
N-single: Nr10c1 = 0
P-single: Pr11c2 = o
whip[1]: Pr11c2{o .} ==> Hr11c2 ≠ 1, Br11c2 ≠ n
B-single: Br11c2 = o
whip[1]: Br11c2{o .} ==> Pr11c3 ≠ nw
P-single: Pr11c3 = o
whip[1]: Pr11c3{o .} ==> Vr10c3 ≠ 1, Br10c3 ≠ w, Br10c3 ≠ nw, Br10c3 ≠ ew, Br10c3 ≠ wne
whip[1]: Br10c3{ne .} ==> Pr10c3 ≠ ns, Nr10c3 ≠ 3
P-single: Pr10c3 = ne
whip[1]: Pr10c3{ne .} ==> Br10c3 ≠ o, Br9c3 ≠ w, Br9c3 ≠ nw, Br9c3 ≠ ew, Br9c3 ≠ wne, Br10c3 ≠ e
whip[1]: Br10c3{ne .} ==> Pr10c4 ≠ o, Pr10c4 ≠ ne, Pr10c4 ≠ ns, Nr10c3 ≠ 0
whip[1]: Pr10c4{sw .} ==> Br9c4 ≠ sw
whip[1]: Br9c4{ew .} ==> Pr9c5 ≠ o, Pr9c5 ≠ ne
whip[1]: Pr9c5{sw .} ==> Br8c5 ≠ esw, Br8c5 ≠ swn
whip[1]: Br8c5{ew .} ==> Nr8c5 ≠ 3
whip[1]: Br9c3{swn .} ==> Pr9c4 ≠ sw, Nr9c3 ≠ 0, Nr9c3 ≠ 1
whip[1]: Pr9c4{ew .} ==> Br8c4 ≠ ne
whip[1]: Br8c4{sw .} ==> Pr8c5 ≠ sw
whip[1]: Pr9c3{sw .} ==> Br8c3 ≠ s, Br9c3 ≠ swn
B-single: Br8c3 = e
whip[1]: Br8c3{e .} ==> Vr8c4 ≠ 0, Pr9c4 ≠ ew
V-single: Vr8c4 = 1
vertical-line-r8{c3 c4} ==> Ir8c4 = out
whip[1]: Vr8c4{1 .} ==> Br8c4 ≠ ns, Br8c4 ≠ se
whip[1]: Br8c4{sw .} ==> Pr9c5 ≠ nw
whip[1]: Pr9c5{sw .} ==> Br9c5 ≠ s
whip[1]: Br9c5{wne .} ==> Nr9c5 ≠ 1
whip[1]: Pr8c4{se .} ==> Br7c4 ≠ ne, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn, Br7c4 ≠ o, Br7c4 ≠ n, Br7c4 ≠ e
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 0
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ nw, Br6c3 ≠ ew
whip[1]: Br6c3{swn .} ==> Pr7c4 ≠ ne, Pr7c4 ≠ ns
whip[1]: Pr7c4{sw .} ==> Br6c4 ≠ sw, Br6c4 ≠ esw
whip[1]: Br6c4{ew .} ==> Pr7c5 ≠ nw, Nr6c4 ≠ 3
whip[1]: Hr7c2{0 .} ==> Br6c2 ≠ ns, Hr7c2 ≠ 1, Pr7c2 ≠ ew, Pr7c3 ≠ ew
whip[1]: Pr6c1{se .} ==> Vr5c1 ≠ 1, Br5c1 ≠ sw, Br6c1 ≠ ns
V-single: Vr5c1 = 0
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e, Pr5c1 ≠ ns
B-single: Br5c0 = o
whip[1]: Pr5c1{ne .} ==> Br4c1 ≠ w, Br4c1 ≠ nw
whip[1]: Pr7c3{ne .} ==> Br6c3 ≠ ns
whip[1]: Br6c3{swn .} ==> Nr6c3 ≠ 2
whip[1]: Vr7c5{0 .} ==> Br7c4 ≠ nes, Vr7c5 ≠ 1, Pr7c5 ≠ ns, Pr7c5 ≠ se, Pr7c5 ≠ sw, Pr8c5 ≠ ne, Pr8c5 ≠ ns, Pr8c5 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ wne
whip[1]: Br7c4{nw .} ==> Nr7c4 ≠ 3
whip[1]: Pr8c5{ew .} ==> Br8c5 ≠ ew
whip[1]: Pr7c5{ew .} ==> Br6c5 ≠ ew, Br6c5 ≠ w
whip[1]: Vr7c6{0 .} ==> Br7c6 ≠ w, Vr7c6 ≠ 1, Pr7c6 ≠ ns, Pr7c6 ≠ sw, Pr8c6 ≠ ns, Pr8c6 ≠ nw
B-single: Br7c6 = s
w[1]-1-in-r7c6-symmetric-nw-corner ==> Pr8c7 ≠ se, Pr8c7 ≠ o
whip[1]: Br7c6{s .} ==> Hr8c6 ≠ 0
H-single: Hr8c6 = 1
whip[1]: Hr8c6{1 .} ==> Br8c6 ≠ o, Br8c6 ≠ e, Br8c6 ≠ s, Br8c6 ≠ w, Br8c6 ≠ se, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c6 ≠ esw
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Pr8c7{sw .} ==> Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ o, Br8c7 ≠ e, Br8c7 ≠ s
whip[1]: Br8c7{nes .} ==> Nr8c7 ≠ 0
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ sw, Br6c5 ≠ e, Br6c5 ≠ s
whip[1]: Hr7c5{0 .} ==> Br6c5 ≠ nes, Hr7c5 ≠ 1, Pr7c5 ≠ ne, Pr7c5 ≠ ew, Pr7c6 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ esw
P-single: Pr7c6 = o
P-single: Pr7c5 = o
whip[1]: Pr7c6{o .} ==> Vr6c6 ≠ 1, Br6c6 ≠ w, Br6c6 ≠ nw
V-single: Vr6c6 = 0
whip[1]: Vr6c6{0 .} ==> Pr6c6 ≠ se, Pr6c6 ≠ sw
whip[1]: Br6c6{n .} ==> Nr6c6 ≠ 2
whip[1]: Pr7c5{o .} ==> Vr6c5 ≠ 1, Hr7c4 ≠ 1, Br6c4 ≠ ns, Br6c4 ≠ ew, Br7c4 ≠ ns, Br7c4 ≠ nw
H-single: Hr7c4 = 0
V-single: Vr6c5 = 0
whip[1]: Hr7c4{0 .} ==> Pr7c4 ≠ se, Pr7c4 ≠ ew
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ e
whip[1]: Vr6c5{0 .} ==> Pr6c5 ≠ ns
whip[1]: Br7c4{w .} ==> Nr7c4 ≠ 2
N-single: Nr7c4 = 1
whip[1]: Br6c4{w .} ==> Nr6c4 ≠ 2
N-single: Nr6c4 = 1
whip[1]: Br6c5{n .} ==> Nr6c5 ≠ 2, Nr6c5 ≠ 3
whip[1]: Hr8c5{0 .} ==> Br8c5 ≠ nw, Hr8c5 ≠ 1, Pr8c5 ≠ se, Pr8c5 ≠ ew, Pr8c6 ≠ ew, Br8c5 ≠ n, Br8c5 ≠ ns
P-single: Pr8c4 = ns
P-single: Pr9c4 = ne
P-single: Pr8c6 = se
P-single: Pr8c5 = o
w[1]-1-in-r7c4-symmetric-se-corner ==> Pr7c4 ≠ nw, Pr7c4 ≠ o
P-single: Pr7c4 = sw
w[1]-1-in-r6c4-symmetric-sw-corner ==> Pr6c5 ≠ ne
w[1]-3-in-r5c4-symmetric-se-corner ==> Hr6c4 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r6 r5}c4 ==> Vr6c4 = 0
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se
P-single: Pr5c4 = ne
P-single: Pr6c5 = nw
w[1]-1-in-r5c3-symmetric-ne-corner ==> Pr6c3 ≠ sw
P-single: Pr7c2 = nw
whip[1]: Pr8c4{ns .} ==> Br7c3 ≠ n, Br7c3 ≠ o, Vr7c4 ≠ 0, Hr8c4 ≠ 1, Br7c4 ≠ s, Br8c4 ≠ nw
H-single: Hr8c4 = 0
V-single: Vr7c4 = 1
B-single: Br7c4 = w
B-single: Br7c3 = ne
vertical-line-r7{c3 c4} ==> Ir7c4 = out
no-vertical-line-r7{c4 c5} ==> Ir7c5 = out
no-vertical-line-r7{c5 c6} ==> Ir7c6 = out
no-vertical-line-r7{c6 c7} ==> Ir7c7 = out
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = out
no-vertical-line-r6{c6 c7} ==> Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-vertical-line-r5{c5 c6} ==> Ir5c6 = out
no-horizontal-line-{r4 r5}c6 ==> Ir4c6 = out
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
no-horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
vertical-line-r3{c5 c6} ==> Ir3c6 = in
no-vertical-line-r3{c6 c7} ==> Ir3c7 = in
no-vertical-line-r3{c7 c8} ==> Ir3c8 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
no-horizontal-line-{r2 r3}c9 ==> Ir2c9 = in
no-horizontal-line-{r3 r4}c9 ==> Ir4c9 = in
no-horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = in
no-vertical-line-r6{c7 c8} ==> Ir6c8 = out
no-vertical-line-r6{c8 c9} ==> Ir6c9 = out
no-vertical-line-r6{c9 c10} ==> Ir6c10 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = out
no-horizontal-line-{r6 r7}c9 ==> Ir7c9 = out
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = out
horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
no-horizontal-line-{r7 r8}c5 ==> Ir8c5 = out
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
same-colour-in-r8{c4 c5} ==> Vr8c5 = 0
w[1]-2-in-r8c4-open-ne-corner ==> Hr9c4 = 1, Vr9c4 = 0
no-vertical-line-r9{c3 c4} ==> Ir9c4 = in
same-colour-in-r8{c6 c7} ==> Vr8c7 = 0
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
same-colour-in-r5{c6 c7} ==> Vr5c7 = 0
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
same-colour-in-r6{c10 c11} ==> Vr6c11 = 0
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 1, Nr7c3 ≠ 0, Pr7c3 ≠ o
N-single: Nr7c3 = 2
P-single: Pr7c3 = ne
whip[1]: Pr7c3{ne .} ==> Br6c3 ≠ n, Br6c2 ≠ nw
whip[1]: Br6c2{ew .} ==> Pr6c3 ≠ ew
P-single: Pr6c3 = se
w[1]-1-in-r5c2-symmetric-se-corner ==> Pr5c2 ≠ o
P-single: Pr5c2 = sw
whip[1]: Pr6c3{se .} ==> Br5c3 ≠ e, Br5c2 ≠ s, Hr6c3 ≠ 0, Hr6c2 ≠ 1, Br6c2 ≠ ne, Br6c3 ≠ esw
H-single: Hr6c2 = 0
H-single: Hr6c3 = 1
B-single: Br6c3 = swn
B-single: Br6c2 = ew
B-single: Br5c2 = w
B-single: Br5c3 = s
horizontal-line-{r5 r6}c3 ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = in
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
whip[1]: Hr6c2{0 .} ==> Pr6c2 ≠ ew
P-single: Pr6c2 = ns
whip[1]: Pr6c2{ns .} ==> Br5c1 ≠ o, Vr6c2 ≠ 0, Hr6c1 ≠ 1, Br5c1 ≠ s, Br6c1 ≠ nw
H-single: Hr6c1 = 0
V-single: Vr6c2 = 1
P-single: Pr6c1 = o
B-single: Br6c1 = se
B-single: Br5c1 = ne
vertical-line-r6{c1 c2} ==> Ir6c1 = out
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
whip[1]: Br6c1{se .} ==> Pr7c1 ≠ ns
P-single: Pr7c1 = se
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ sw
B-single: Br7c1 = swn
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 2
N-single: Nr7c1 = 3
whip[1]: Br5c1{ne .} ==> Nr5c1 ≠ 1, Nr5c1 ≠ 0, Pr5c1 ≠ o
N-single: Nr5c1 = 2
P-single: Pr5c1 = ne
whip[1]: Pr5c1{ne .} ==> Br4c1 ≠ n, Br4c1 ≠ o
whip[1]: Br4c1{swn .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ne, Nr4c1 ≠ 0, Nr4c1 ≠ 1
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ esw, Br3c1 ≠ o
whip[1]: Br3c1{se .} ==> Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Hr6c3{1 .} ==> Pr6c4 ≠ ns
P-single: Pr6c4 = ew
whip[1]: Pr6c4{ew .} ==> Br6c4 ≠ w, Br5c4 ≠ wne
B-single: Br5c4 = nes
B-single: Br6c4 = n
whip[1]: Br6c3{swn .} ==> Nr6c3 ≠ 1
N-single: Nr6c3 = 3
whip[1]: Vr4c4{1 .} ==> Br4c3 ≠ o, Pr4c4 ≠ o, Pr4c4 ≠ ne, Pr4c4 ≠ nw, Pr4c4 ≠ ew, Br4c3 ≠ n, Br4c4 ≠ s, Br4c4 ≠ ns
whip[1]: Br4c4{swn .} ==> Nr4c4 ≠ 1
whip[1]: Br4c3{ne .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ esw, Br3c4 ≠ esw
whip[1]: Br3c4{nes .} ==> Pr3c5 ≠ ns
whip[1]: Br3c3{sw .} ==> Nr3c3 ≠ 3
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr8c6{1 .} ==> Pr9c6 ≠ o, Pr9c6 ≠ se, Pr9c6 ≠ ew, Pr9c6 ≠ sw, Br8c6 ≠ n, Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ nes
whip[1]: Br8c6{wne .} ==> Pr9c7 ≠ nw, Nr8c6 ≠ 1
whip[1]: Pr9c7{ew .} ==> Br8c7 ≠ ew, Br8c7 ≠ w
whip[1]: Pr9c6{nw .} ==> Br9c5 ≠ wne, Br9c6 ≠ swn
whip[1]: Br9c6{sw .} ==> Nr9c6 ≠ 3
whip[1]: Vr8c5{0 .} ==> Pr9c5 ≠ ns, Br8c4 ≠ ew
B-single: Br8c4 = sw
whip[1]: Pr9c5{sw .} ==> Br9c4 ≠ ew, Br9c5 ≠ swn
whip[1]: Br9c5{sw .} ==> Nr9c5 ≠ 3
N-single: Nr9c5 = 2
whip[1]: Br9c4{ns .} ==> Pr10c4 ≠ nw
whip[1]: Pr10c4{sw .} ==> Br9c3 ≠ esw, Br10c4 ≠ o
B-single: Br9c3 = sw
whip[1]: Br9c3{sw .} ==> Nr9c3 ≠ 3
N-single: Nr9c3 = 2
whip[1]: Br10c4{esw .} ==> Pr10c5 ≠ ne, Nr10c4 ≠ 0
whip[1]: Pr9c6{nw .} ==> Br8c6 ≠ swn, Br9c5 ≠ sw, Br9c6 ≠ ns
whip[1]: Br9c6{sw .} ==> Pr9c7 ≠ ew
whip[1]: Pr9c7{ne .} ==> Br8c7 ≠ ns, Br8c7 ≠ nes
whip[1]: Vr8c7{0 .} ==> Pr8c7 ≠ sw, Pr9c7 ≠ ne, Br8c6 ≠ wne, Br8c7 ≠ sw, Br8c7 ≠ esw
P-single: Pr9c7 = o
P-single: Pr8c7 = ew
B-single: Br8c6 = nw
whip[1]: Pr9c7{o .} ==> Hr9c7 ≠ 1
whip[1]: Pr8c7{ew .} ==> Br7c7 ≠ e, Br7c7 ≠ o
whip[1]: Br7c7{se .} ==> Pr8c8 ≠ o, Pr8c8 ≠ ns, Pr8c8 ≠ se, Nr7c7 ≠ 0
whip[1]: Pr8c8{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ swn, Br8c8 ≠ wne
whip[1]: Br8c6{nw .} ==> Nr8c6 ≠ 3
N-single: Nr8c6 = 2
whip[1]: Br8c7{ne .} ==> Pr9c8 ≠ nw, Nr8c7 ≠ 3, Pr9c8 ≠ ew, Pr9c8 ≠ sw
whip[1]: Vr5c7{0 .} ==> Pr5c7 ≠ ns, Pr6c7 ≠ nw, Br5c6 ≠ se, Br5c7 ≠ w, Br5c7 ≠ ew
P-single: Pr6c7 = o
P-single: Pr5c7 = ne
B-single: Br5c6 = o
whip[1]: Pr6c7{o .} ==> Br6c6 ≠ n
B-single: Br6c6 = o
whip[1]: Br6c6{o .} ==> Pr6c6 ≠ ew, Nr6c6 ≠ 1
N-single: Nr6c6 = 0
P-single: Pr6c6 = o
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ sw, Br6c5 ≠ n
B-single: Br6c5 = o
B-single: Br5c5 = w
whip[1]: Br6c5{o .} ==> Nr6c5 ≠ 1
N-single: Nr6c5 = 0
whip[1]: Br5c5{w .} ==> Nr5c5 ≠ 2
N-single: Nr5c5 = 1
whip[1]: Pr5c7{ne .} ==> Br4c7 ≠ w, Br4c7 ≠ ew
whip[1]: Br4c7{esw .} ==> Pr5c8 ≠ o, Pr5c8 ≠ ns, Nr4c7 ≠ 1
whip[1]: Br5c6{o .} ==> Nr5c6 ≠ 2
N-single: Nr5c6 = 0
whip[1]: Hr8c9{1 .} ==> Pr8c9 ≠ ns, Pr8c10 ≠ ns, Br7c9 ≠ ew, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ swn, Br8c10 ≠ swn, Br8c10 ≠ wne
whip[1]: Br8c10{sw .} ==> Nr8c10 ≠ 3
whip[1]: Pr8c9{ew .} ==> Br8c8 ≠ nes, Br8c8 ≠ ne
whip[1]: Hr5c9{1 .} ==> Pr5c9 ≠ ns, Pr5c10 ≠ ns, Br4c9 ≠ ew, Br5c9 ≠ ew
whip[1]: Pr5c10{sw .} ==> Br4c10 ≠ swn, Br5c10 ≠ swn
whip[1]: Vr6c11{0 .} ==> Br6c11 ≠ w, Pr6c11 ≠ ns, Pr6c11 ≠ sw, Pr7c11 ≠ ns, Pr7c11 ≠ nw, Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ se, Br6c10 ≠ nes
B-single: Br6c11 = o
whip[1]: Br6c10{ns .} ==> Nr6c10 ≠ 3
whip[1]: Pr7c11{sw .} ==> Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ e
whip[1]: Br7c10{wne .} ==> Pr8c11 ≠ nw, Nr7c10 ≠ 2
whip[1]: Pr8c11{sw .} ==> Br8c10 ≠ ns
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ ne, Br5c10 ≠ sw, Br5c10 ≠ e
whip[1]: Br5c10{esw .} ==> Pr5c11 ≠ sw, Nr5c10 ≠ 2
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ s
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o, Pr3c11 ≠ nw, Pr4c11 ≠ sw, Br3c10 ≠ ns
B-single: Br3c11 = w
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ wne, Br4c10 ≠ o
whip[1]: Br4c10{se .} ==> Nr4c10 ≠ 0, Nr4c10 ≠ 3
whip[1]: Pr3c11{sw .} ==> Br2c10 ≠ esw, Br2c10 ≠ o, Br2c10 ≠ n
whip[1]: Br2c10{swn .} ==> Nr2c10 ≠ 0
whip[1]: Vr9c8{0 .} ==> Br9c8 ≠ w, Vr9c8 ≠ 1, Pr9c8 ≠ ns, Pr9c8 ≠ se, Pr10c8 ≠ ne, Pr10c8 ≠ ns
whip[1]: Pr10c8{se .} ==> Br10c8 ≠ ns, Br10c8 ≠ ew
whip[1]: Br10c8{wne .} ==> Pr10c9 ≠ ns, Pr10c9 ≠ nw, Pr10c9 ≠ ew, Nr10c8 ≠ 2
whip[1]: Pr9c8{ne .} ==> Br8c8 ≠ s, Br8c8 ≠ w, Br8c8 ≠ ns, Br8c8 ≠ se, Br8c8 ≠ ew
whip[1]: Br9c8{s .} ==> Pr9c9 ≠ sw
whip[1]: Vr9c9{0 .} ==> Br9c8 ≠ e, Vr9c9 ≠ 1, Pr9c9 ≠ ns, Pr9c9 ≠ se, Pr10c9 ≠ ne
whip[1]: Pr10c9{sw .} ==> Hr10c9 ≠ 1, Br10c9 ≠ ns
whip[1]: Br10c9{sw .} ==> Pr10c10 ≠ nw
whip[1]: Pr10c10{se .} ==> Vr9c10 ≠ 1, Br9c10 ≠ ew, Br9c10 ≠ wne
whip[1]: Br9c10{nes .} ==> Pr9c10 ≠ ns, Pr9c10 ≠ se, Pr9c10 ≠ sw
whip[1]: Pr9c10{ew .} ==> Br8c10 ≠ ew
whip[1]: Pr9c9{ew .} ==> Br8c8 ≠ e
whip[1]: Hr9c9{0 .} ==> Br8c9 ≠ ns, Hr9c9 ≠ 1, Pr9c9 ≠ ew, Pr9c10 ≠ ew
whip[1]: Pr9c10{ne .} ==> Br8c10 ≠ s
whip[1]: Pr9c9{nw .} ==> Br8c8 ≠ sw
whip[1]: Br8c8{esw .} ==> Nr8c8 ≠ 2
whip[1]: Br1c6{nes .} ==> Pr2c7 ≠ o, Pr1c7 ≠ o, Pr2c6 ≠ o, Pr2c6 ≠ sw
whip[1]: Pr2c6{ew .} ==> Br2c5 ≠ wne, Br2c5 ≠ ne
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ se, Br1c7 ≠ o, Br1c7 ≠ e, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
Entering_relation_bivalue_with_<Fact-179954>
Entering_level_BC2_with_<Fact-180447>
Entering_level_W2_with_<Fact-181521>
Entering_level_BC3_with_<Fact-184543>
Entering_level_W3_with_<Fact-187633>
whip[3]: Br8c9{ne nw} - Pr8c9{ew se} - Br7c9{sw .} ==> Pr8c10 ≠ ew
whip[1]: Pr8c10{sw .} ==> Hr8c10 ≠ 1, Br7c10 ≠ s, Br8c10 ≠ ne
H-single: Hr8c10 = 0
whip[1]: Hr8c10{0 .} ==> Pr8c11 ≠ sw
whip[1]: Br7c10{wne .} ==> Nr7c10 ≠ 1
biv-chain[3]: Br8c9{nw ne} - Pr8c10{nw sw} - Br7c9{se sw} ==> Pr8c9 ≠ ew
whip[1]: Pr8c9{se .} ==> Hr8c8 ≠ 1, Br7c8 ≠ s, Br8c8 ≠ n
H-single: Hr8c8 = 0
whip[1]: Hr8c8{0 .} ==> Pr8c8 ≠ ew
whip[1]: Br8c8{esw .} ==> Nr8c8 ≠ 1
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 1
whip[3]: Br5c9{ne nw} - Pr5c9{ew se} - Br4c9{sw .} ==> Pr5c10 ≠ ew
whip[1]: Pr5c10{sw .} ==> Hr5c10 ≠ 1, Br4c10 ≠ se, Br5c10 ≠ n
H-single: Hr5c10 = 0
whip[1]: Hr5c10{0 .} ==> Pr5c11 ≠ nw
whip[1]: Br5c10{esw .} ==> Nr5c10 ≠ 1
biv-chain[3]: Br5c9{nw ne} - Pr5c10{nw sw} - Br4c9{se sw} ==> Pr5c9 ≠ ew
whip[1]: Pr5c9{se .} ==> Hr5c8 ≠ 1, Br4c8 ≠ s, Br5c8 ≠ n
H-single: Hr5c8 = 0
whip[1]: Hr5c8{0 .} ==> Pr5c8 ≠ ew
whip[1]: Br5c8{esw .} ==> Nr5c8 ≠ 1
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 1
whip[3]: Br2c10{e sw} - Pr2c11{sw o} - Br1c10{s .} ==> Pr2c10 ≠ ns
whip[1]: Pr2c10{sw .} ==> Br1c9 ≠ ew
whip[3]: Br2c1{n ew} - Pr3c1{o ns} - Br3c1{se .} ==> Pr3c2 ≠ ns
whip[1]: Pr3c2{se .} ==> Hr3c2 ≠ 0, Br2c2 ≠ wne, Br3c2 ≠ ew
H-single: Hr3c2 = 1
horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
P-single: Pr1c3 = ew
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
whip[1]: Hr3c2{1 .} ==> Pr3c3 ≠ ns
whip[1]: Hr1c3{1 .} ==> Br1c3 ≠ o, Br0c3 ≠ o, Pr1c4 ≠ o, Pr1c4 ≠ se, Br1c3 ≠ e, Br1c3 ≠ s
B-single: Br0c3 = s
whip[1]: Br1c3{ns .} ==> Nr1c3 ≠ 0
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Vr1c2{0 .} ==> Pr1c2 ≠ sw, Br1c1 ≠ wne, Br1c2 ≠ sw
P-single: Pr1c2 = ew
B-single: Br1c2 = ns
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ w
whip[3]: Pr2c10{ew sw} - Br2c10{ne sw} - Pr2c11{ns .} ==> Br1c10 ≠ ne
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 2
whip[3]: Pr2c9{ew se} - Br2c8{n esw} - Pr2c8{o .} ==> Br1c8 ≠ n
whip[3]: Pr2c9{ew se} - Br2c8{n esw} - Pr2c8{o .} ==> Br1c8 ≠ o
whip[1]: Br1c8{wne .} ==> Nr1c8 ≠ 0
whip[3]: Pr3c5{sw ne} - Br2c4{swn wne} - Pr2c5{ns .} ==> Br2c5 ≠ swn
whip[1]: Br2c5{sw .} ==> Nr2c5 ≠ 3
whip[3]: Pr2c7{sw ne} - Br1c6{nes wne} - Pr1c7{se .} ==> Br1c7 ≠ swn
Entering_level_BC4_with_<Fact-201160>
Entering_level_W4_with_<Fact-220874>
Entering_level_BC5_with_<Fact-252720>
Entering_level_W5_with_<Fact-317246>
whip[5]: Pr1c9{sw o} - Br1c9{sw se} - Pr2c10{sw nw} - Br2c9{ew nw} - Pr2c9{ne .} ==> Br1c8 ≠ sw
whip[5]: Pr2c7{ew sw} - Br2c7{e w} - Pr2c8{ew ne} - Br1c8{wne swn} - Pr1c8{o .} ==> Br1c7 ≠ ne
whip[5]: Pr1c9{sw se} - Br1c9{sw nw} - Pr2c9{ew ns} - Br2c8{n esw} - Pr2c8{o .} ==> Br1c8 ≠ e
whip[3]: Pr1c8{sw o} - Br1c8{wne s} - Pr2c8{o .} ==> Br1c7 ≠ w
whip[5]: Pr1c9{sw o} - Br1c9{sw se} - Pr2c10{sw nw} - Br2c9{ew nw} - Pr2c9{ne .} ==> Br1c8 ≠ s
whip[1]: Br1c8{wne .} ==> Pr1c8 ≠ o
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ sw
whip[5]: Pr1c10{ew o} - Br1c9{se sw} - Pr2c10{se ew} - Br2c9{ne nw} - Pr2c9{ne .} ==> Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Pr2c11 ≠ sw, Nr1c10 ≠ 1
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ ne
whip[1]: Br2c10{swn .} ==> Pr2c10 ≠ ew
whip[3]: Pr1c10{se ew} - Br1c10{wne nes} - Pr2c10{sw .} ==> Br1c9 ≠ ns
whip[1]: Br1c9{sw .} ==> Pr1c9 ≠ ew
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ swn, Br1c8 ≠ ns
whip[1]: Br1c8{wne .} ==> Hr2c8 ≠ 1, Pr2c8 ≠ ne, Pr2c8 ≠ ew, Pr2c9 ≠ ew
H-single: Hr2c8 = 0
whip[1]: Hr2c8{0 .} ==> Br2c8 ≠ n
whip[1]: Br2c8{esw .} ==> Nr2c8 ≠ 1
whip[1]: Pr2c8{nw .} ==> Br1c7 ≠ ns
whip[5]: Pr2c8{nw o} - Br2c7{n w} - Pr2c7{ne ns} - Br1c6{esw wne} - Pr1c7{se .} ==> Br1c7 ≠ nw
whip[3]: Br2c7{e w} - Pr2c8{nw o} - Br1c7{nes .} ==> Pr2c7 ≠ ns
whip[1]: Pr2c7{sw .} ==> Br2c6 ≠ se
whip[5]: Pr3c6{sw se} - Br2c6{nw nes} - Pr2c7{ne sw} - Br1c6{esw swn} - Pr2c6{ns .} ==> Br2c5 ≠ nw
whip[1]: Br2c5{sw .} ==> Pr2c5 ≠ se
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ n, Br1c4 ≠ w
whip[1]: Br1c4{nes .} ==> Pr1c5 ≠ o, Nr1c4 ≠ 1
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ se
whip[1]: Br1c5{ew .} ==> Pr2c6 ≠ nw
whip[1]: Pr2c6{ew .} ==> Br2c6 ≠ o
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[5]: Pr2c6{se ew} - Br1c6{esw nes} - Pr2c7{ne nw} - Br2c6{w n} - Pr3c6{ns .} ==> Br2c5 ≠ n
GRID 0 NOT SOLVED. 165 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.———.———.———.............................
|     2     :   : 2 : 3 :   :   : 2 :   :
.....———.....................   .........
:   : 3 : 2 | 3 :   :   : 1 :   : 2 :   :
.   .———.   .............   .....   .....
:   : 2 :   :   :   |     0   1   0   2 |
.....   .........   .———.   .....   .....
|     0     |     0   2 |   :   : 2 :   :
.———.   .   .———.   .   .———.   .———.   .
    | 1   1   3 |           :   : 2 :   :
.   .   .———.———.   .   .   .....   .....
    | 2 |                 0   1   0
.———.   .———.   .   .   .   .....   .....
|     0     |     0   1     :   : 2 :   :
.———.   .   .   .   .———.———.   .———.   .
  2 | 2   1 | 2     |       :   : 2 :   :
.   .———.   .———.....   .   .....   .....
      2 |     2 :   :     0   1   0     |
.   .   .———.........———.   .....   .....
      0     :   : 1   2 |   :   : 2 :   :
.   .   .   .....   .   .———.....———.....

init-time = 0.63s, solve-time = 58.25s, total-time = 58.88s
nb-facts=<Fact-440811>
Quasi-Loop max length = 0
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



Manual fnish:

.———.———.———.———.................   .....
|     2         : 2 | 3 :   :   : 2 :   :
.....———.........   .........   .———.   .
:   : 3 : 2 | 3 :   :   : 1 :   : 2 :   :
.   .———.   .............   .....   .....
:   : 2 :   :   :   |     0   1   0   2 |
.....   .........   .———.   .....   .....
|     0     |     0   2 |   :   : 2 :   :
.———.   .   .———.   .   .———.   .———.   .
    | 1   1   3 |           :   : 2 :   :
.   .   .———.———.   .   .   .....   .....
    | 2 |                 0   1   0
.———.   .———.   .   .   .   .....   .....
|     0     |     0   1     :   : 2 :   :
.———.   .   .   .   .———.———.   .———.   .
  2 | 2   1 | 2     |       :   : 2 :   :
.   .———.   .———.....   .   .....   .....
      2 |     2 :   :     0   1   0     |
.   .   .———.........———.   .....   .....
      0     :   : 1   2 |   :   : 2 :   :
.   .   .   .....   .   .———.....———.....


Vr1c9 = 1 ==>

.———.———.———.———.................   .....
|     2         : 2 | 3 :   :   | 2 :   :
.....———.........   .........   .———.   .
:   : 3 : 2 | 3 :   :   : 1 :   : 2 :   :
.   .———.   .............   .....   .....
:   : 2 :   :   :   |     0   1   0   2 |
.....   .........   .———.   .....   .....
|     0     |     0   2 |   :   : 2 :   :
.———.   .   .———.   .   .———.   .———.   .
    | 1   1   3 |           :   : 2 :   :
.   .   .———.———.   .   .   .....   .....
    | 2 |                 0   1   0
.———.   .———.   .   .   .   .....   .....
|     0     |     0   1     :   : 2 :   :
.———.   .   .   .   .———.———.   .———.   .
  2 | 2   1 | 2     |       :   : 2 :   :
.   .———.   .———.....   .   .....   .....
      2 |     2 :   :     0   1   0     |
.   .   .———.........———.   .....   .....
      0     :   : 1   2 |   :   : 2 :   :
.   .   .   .....   .   .———.....———.....



Vr1c9 = 0 ==>

.———.———.———.———.———.   .———.   .   .———.
|     2           2 | 3 |   |     2 |   |
.———.———.   .———.   .———.   .   .———.   .
      3 | 2 | 3 |         1 |   | 2     |
.   .———.   .   .———.   .   .———.   .   .
    | 2     |       |     0   1   0   2 |
.———.   .   .   .   .———.   .   .   .———.
|     0     |     0   2 |         2 |
.———.   .   .———.   .   .———.   .———.   .
    | 1   1   3 |           |   | 2
.   .   .———.———.   .   .   .———.   .   .
    | 2 |                 0   1   0
.———.   .———.   .   .   .   .   .   .———.
|     0     |     0   1           2 |   |
.———.   .   .   .   .———.———.   .———.   .
  2 | 2   1 | 2     |       |   | 2     |
.   .———.   .———.———.   .   .———.   .   .
      2 |     2           0   1   0     |
.   .   .———.———.———.———.   .   .   .———.
      0           1   2 |         2 |
.   .   .   .   .   .   .———.———.———.   .

