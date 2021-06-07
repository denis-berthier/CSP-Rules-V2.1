
(solve
10 10
. . . 2 2 3 1 2 2 . 
. 3 3 . 2 . . . 2 . 
. . 2 2 3 2 . . . 1
. . 3 2 . . . . . 2
. . . 1 1 3 2 2 . 2
. . 2 2 2 . . . . . 
. . 2 2 . . . . 3 1
. 2 . 3 . . 1 0 2 .
2 . . . . 2 2 2 . . 
2 . 2 2 2 2 . 2 . 3
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 2 2 3 1 2 2 .
. 3 3 . 2 . . . 2 .
. . 2 2 3 2 . . . 1
. . 3 2 . . . . . 2
. . . 1 1 3 2 2 . 2
. . 2 2 2 . . . . .
. . 2 2 . . . . 3 1
. 2 . 3 . . 1 0 2 .
2 . . . . 2 2 2 . .
2 . 2 2 2 2 . 2 . 3

Loading pre-computed background
start init-inner-N-and-B-candidates 0.532361030578613
start solution 0.545028924942017
entering BRT
w[0]-0-in-r8c8 ==> Hr9c8 = 0, Hr8c8 = 0, Vr8c9 = 0, Vr8c8 = 0
w[1]-3-in-se-corner ==> Vr10c11 = 1, Hr11c10 = 1
w[1]-2-in-sw-corner ==> Vr9c1 = 1, Hr11c2 = 1
w[1]-diagonal-3-0-in-{r7c9...r8c8} ==> Vr7c9 = 1, Hr8c9 = 1
w[1]-diagonal-3-2s-3-in-{r1c6...r4c3} ==> Vr1c7 = 1, Vr4c3 = 1, Hr5c3 = 1, Hr1c6 = 1, Vr5c3 = 0, Hr5c2 = 0, Hr1c7 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c7 c6} ==> Vr1c8 = 0, Hr2c7 = 0
w[1]-3-in-r10c10-closed-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-3-in-r7c9-closed-sw-corner ==> Pr7c10 ≠ sw, Pr7c10 ≠ ne, Pr7c10 ≠ o
w[1]-3-in-r4c3-closed-sw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne, Pr4c4 ≠ o
adjacent-3s-in-r2{c2 c3} ==> Vr2c4 = 1, Vr2c3 = 1, Vr2c2 = 1, Vr3c3 = 0, Vr1c3 = 0
square-of-2s-se-of-r6c3 ==> Pr7c4 ≠ o
entering level Loop with <Fact-92951>
entering level Col with <Fact-93029>
vertical-line-r10{c10 c11} ==> Ir10c10 = in
vertical-line-r9{c0 c1} ==> Ir9c1 = in
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
no-vertical-line-r1{c7 c8} ==> Ir1c8 = out
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = out
vertical-line-r1{c6 c7} ==> Ir1c6 = in
same-colour-in-{r0 r1}c8 ==> Hr1c8 = 0
w[1]-2-in-r1c8-open-nw-corner ==> Hr2c8 = 1, Vr1c9 = 1, Hr2c9 = 0, Vr2c9 = 0
w[1]-2-in-r2c9-open-nw-corner ==> Hr3c9 = 1, Vr2c10 = 1, Hr3c10 = 0, Vr3c10 = 0
vertical-line-r1{c8 c9} ==> Ir1c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir2c9 = in
no-vertical-line-r2{c8 c9} ==> Ir2c8 = in
vertical-line-r2{c9 c10} ==> Ir2c10 = out
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = out
no-vertical-line-r3{c9 c10} ==> Ir3c9 = out
same-colour-in-r3{c10 c11} ==> Vr3c11 = 0
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
Starting_init_links_with_<Fact-93159>
1126 candidates, 8195 csp-links and 34957 links. Density = 5.52%
starting non trivial part of solution
Entering_level_W1_with_<Fact-179468>
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ sw, Br0c9 ≠ o, Pr1c10 ≠ se, Br1c9 ≠ se, Br1c9 ≠ ew
B-single: Br0c9 = s
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ wne, Br1c10 ≠ o, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0
whip[1]: Vr2c8{1 .} ==> Br2c8 ≠ nes, Br2c7 ≠ o, Br2c8 ≠ o, Pr2c8 ≠ nw, Pr2c8 ≠ ew, Pr3c8 ≠ o, Pr3c8 ≠ se, Pr3c8 ≠ ew, Pr3c8 ≠ sw, Br2c7 ≠ n, Br2c7 ≠ s, Br2c7 ≠ w, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ sw, Br2c7 ≠ swn, Br2c8 ≠ n, Br2c8 ≠ e, Br2c8 ≠ s, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ se
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 0
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ ne, Br3c7 ≠ wne, Br3c7 ≠ nes, Br3c8 ≠ nw, Br3c8 ≠ swn, Br3c8 ≠ wne
whip[1]: Pr2c8{se .} ==> Br1c8 ≠ ne, Br1c8 ≠ sw, Br2c7 ≠ ne, Br2c7 ≠ wne, Br2c7 ≠ nes, Br1c7 ≠ s
whip[1]: Br1c7{w .} ==> Pr2c7 ≠ ne, Pr1c7 ≠ se, Pr1c8 ≠ sw, Pr2c7 ≠ se, Pr2c7 ≠ ew
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ nw, Br1c8 ≠ ew, Br1c7 ≠ e
whip[1]: Br1c7{w .} ==> Pr1c7 ≠ o, Pr2c8 ≠ ns
P-single: Pr2c8 = se
whip[1]: Pr2c8{se .} ==> Br2c8 ≠ w, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw
whip[1]: Br2c8{wne .} ==> Pr2c9 ≠ ns, Pr3c9 ≠ nw, Nr2c8 ≠ 1
whip[1]: Pr3c9{ew .} ==> Br2c9 ≠ sw, Br3c8 ≠ sw, Br3c8 ≠ nes, Br3c9 ≠ se, Br2c9 ≠ ne, Br3c8 ≠ o, Br3c8 ≠ s, Br3c8 ≠ w, Br3c8 ≠ ne, Br3c9 ≠ o, Br3c9 ≠ e, Br3c9 ≠ s
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Br3c8{esw .} ==> Nr3c8 ≠ 0
whip[1]: Pr2c9{sw .} ==> Br2c9 ≠ nw
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ esw
whip[1]: Br1c6{nes .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Pr2c7 ≠ o
whip[1]: Pr2c5{ew .} ==> Br1c5 ≠ sw, Br2c4 ≠ sw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br1c5 ≠ ne, Br2c4 ≠ o, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ne
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0
whip[1]: Pr2c7{sw .} ==> Br2c6 ≠ sw, Br2c6 ≠ o, Br2c6 ≠ s, Br2c6 ≠ w
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Vr2c11{0 .} ==> Br2c10 ≠ nes, Br2c11 ≠ w, Pr2c11 ≠ ns, Pr2c11 ≠ sw, Pr3c11 ≠ ns, Pr3c11 ≠ nw, Br2c10 ≠ e, Br2c10 ≠ ne, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ esw, Br2c10 ≠ wne
B-single: Br2c11 = o
w[1]-1-in-r3c10-symmetric-ne-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ ne, Pr4c10 ≠ o
whip[1]: Pr4c10{ew .} ==> Br4c9 ≠ sw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br3c10 ≠ n, Br3c10 ≠ e, Br4c9 ≠ o, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ ne
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Br3c10{w .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ nw, Pr3c10 ≠ ne, Pr3c11 ≠ sw, Pr3c10 ≠ ew
P-single: Pr3c11 = o
whip[1]: Pr3c11{o .} ==> Br2c10 ≠ s, Br2c10 ≠ ns, Br2c10 ≠ sw, Br2c10 ≠ swn
whip[1]: Br2c10{nw .} ==> Nr2c10 ≠ 3
whip[1]: Pr5c11{sw .} ==> Vr5c11 ≠ 0, Br4c10 ≠ nw, Br4c10 ≠ se, Br5c10 ≠ nw, Br5c10 ≠ sw, Br5c10 ≠ ns
V-single: Vr5c11 = 1
vertical-line-r5{c10 c11} ==> Ir5c10 = in
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ sw
B-single: Br5c11 = w
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ w, Br6c10 ≠ ne, Br6c10 ≠ sw, Br6c10 ≠ wne, Br6c10 ≠ nes, Br6c10 ≠ o, Br6c10 ≠ s
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 0
whip[1]: Br5c10{ew .} ==> Pr6c10 ≠ ne
whip[1]: Pr4c10{ew .} ==> Br3c9 ≠ nw, Br3c9 ≠ esw, Br3c9 ≠ nes, Br3c9 ≠ n, Br3c9 ≠ w
whip[1]: Br3c9{wne .} ==> Nr3c9 ≠ 1
whip[1]: Pr5c10{sw .} ==> Br4c9 ≠ se, Br4c9 ≠ esw, Br4c10 ≠ ew, Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ esw, Br5c9 ≠ swn, Br4c10 ≠ ns, Br5c9 ≠ n, Br5c9 ≠ e, Br5c9 ≠ ns
whip[1]: Pr3c10{sw .} ==> Br3c9 ≠ sw
whip[1]: Pr2c11{nw .} ==> Br1c10 ≠ ne, Br1c10 ≠ sw
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 2
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Vr3c10{0 .} ==> Br3c10 ≠ w, Pr3c10 ≠ ns, Pr3c10 ≠ sw, Pr4c10 ≠ ns, Br3c9 ≠ ne, Br3c9 ≠ ew, Br3c9 ≠ wne
P-single: Pr1c10 = ew
P-single: Pr1c8 = o
P-single: Pr2c9 = nw
P-single: Pr4c10 = ew
P-single: Pr3c10 = nw
B-single: Br3c10 = s
w[1]-1-in-r1c7-symmetric-ne-corner ==> Pr2c7 ≠ sw
w[1]-1-in-r3c10-symmetric-nw-corner ==> Pr4c11 ≠ o
P-single: Pr4c11 = sw
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ w, Br1c9 ≠ ne, Vr1c10 ≠ 1, Hr1c10 ≠ 0
H-single: Hr1c10 = 1
V-single: Vr1c10 = 0
B-single: Br1c10 = nes
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1

LOOP[10]: Vr2c8-Hr2c8-Vr1c9-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c9- ==> Hr3c8 = 0
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = in
different-colours-in-r3{c8 c9} ==> Hr3c9 = 1
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o, Pr1c11 ≠ o
P-single: Pr1c11 = sw
B-single: Br0c10 = s
whip[1]: Vr1c10{0 .} ==> Pr2c10 ≠ ns
whip[1]: Pr2c10{ew .} ==> Br2c10 ≠ o, Br2c10 ≠ w
whip[1]: Br2c10{nw .} ==> Pr2c11 ≠ o, Nr2c10 ≠ 0
P-single: Pr2c11 = nw
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 1
N-single: Nr1c10 = 3
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr3c8{0 .} ==> Pr3c8 ≠ ne, Pr3c9 ≠ ew, Br2c8 ≠ swn, Br3c8 ≠ n, Br3c8 ≠ ns
whip[1]: Br3c8{esw .} ==> Pr4c9 ≠ o, Pr4c9 ≠ se, Pr4c9 ≠ ew, Pr4c9 ≠ sw
whip[1]: Pr4c9{nw .} ==> Br3c9 ≠ ns, Br4c8 ≠ ne, Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c9 ≠ nw, Br4c9 ≠ swn
B-single: Br3c9 = swn
whip[1]: Br3c9{swn .} ==> Nr3c9 ≠ 2, Pr4c9 ≠ nw, Pr4c9 ≠ ns, Pr3c9 ≠ ns, Hr4c9 ≠ 0
H-single: Hr4c9 = 1
N-single: Nr3c9 = 3
w[1]-3-in-r3c9-asymmetric-ne-corner ==> Vr4c9 = 0, Hr4c8 = 0
P-single: Pr3c9 = se
P-single: Pr4c9 = ne
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
no-vertical-line-r4{c8 c9} ==> Ir4c9 = in
whip[1]: Hr4c9{1 .} ==> Br4c9 ≠ e, Br4c9 ≠ ew
whip[1]: Br4c9{ns .} ==> Vr4c10 ≠ 1, Pr5c9 ≠ ne, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Pr5c10 ≠ ne, Nr4c9 ≠ 3
V-single: Vr4c10 = 0
no-vertical-line-r4{c9 c10} ==> Ir4c10 = in
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
w[1]-2-in-r4c10-open-sw-corner ==> Hr4c10 = 1, Vr4c11 = 1
P-single: Pr5c11 = ns
whip[1]: Vr4c10{0 .} ==> Br4c10 ≠ sw
B-single: Br4c10 = ne
whip[1]: Hr5c10{0 .} ==> Br5c10 ≠ ne
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o
B-single: Br4c11 = w
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ sw, Br6c9 ≠ wne, Br6c9 ≠ nes, Br6c9 ≠ o, Br6c9 ≠ s, Br6c9 ≠ w, Br6c9 ≠ ne
whip[1]: Br6c9{swn .} ==> Nr6c9 ≠ 0
whip[1]: Pr5c9{sw .} ==> Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ esw, Br4c8 ≠ e
whip[1]: Hr4c8{0 .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ se, Pr4c8 ≠ ew, Br3c8 ≠ se, Br3c8 ≠ esw, Br4c8 ≠ n, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ swn
whip[1]: Br4c8{sw .} ==> Nr4c8 ≠ 3
whip[1]: Br3c8{ew .} ==> Nr3c8 ≠ 3
whip[1]: Pr3c9{se .} ==> Br2c8 ≠ wne, Br2c9 ≠ ew
B-single: Br2c8 = nw
whip[1]: Br2c8{nw .} ==> Nr2c8 ≠ 3
N-single: Nr2c8 = 2
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ w, Br3c7 ≠ sw, Br3c7 ≠ o, Br3c7 ≠ s
whip[1]: Br3c7{swn .} ==> Nr3c7 ≠ 0
whip[1]: Pr1c8{o .} ==> Br1c7 ≠ n, Br1c8 ≠ ns
B-single: Br1c8 = se
B-single: Br1c7 = w
whip[1]: Br1c8{se .} ==> Pr1c9 ≠ ew
P-single: Pr2c10 = se
P-single: Pr1c9 = se
whip[1]: Pr2c10{se .} ==> Br2c10 ≠ n, Br1c9 ≠ ns, Br2c9 ≠ ns
B-single: Br2c9 = se
B-single: Br1c9 = nw
B-single: Br2c10 = nw
whip[1]: Br2c10{nw .} ==> Nr2c10 ≠ 1
N-single: Nr2c10 = 2
whip[1]: Br1c7{w .} ==> Pr1c7 ≠ ew
P-single: Pr1c7 = sw
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ swn
whip[1]: Pr2c7{nw .} ==> Br2c6 ≠ ne, Br2c6 ≠ wne, Br2c6 ≠ nes
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ wne, Pr1c3 ≠ se, Pr1c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Pr2c3 ≠ nw, Br1c2 ≠ e, Br1c2 ≠ ne, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c3 ≠ w, Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn
whip[1]: Vr3c3{0 .} ==> Br3c3 ≠ sw, Pr3c3 ≠ ns, Pr3c3 ≠ sw, Pr4c3 ≠ ns, Pr4c3 ≠ nw, Br3c2 ≠ e, Br3c2 ≠ ne, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ nw, Br3c3 ≠ ew
whip[1]: Vr2c2{1 .} ==> Br2c2 ≠ nes, Br2c1 ≠ o, Pr2c2 ≠ o, Pr2c2 ≠ ne, Pr2c2 ≠ nw, Pr2c2 ≠ ew, Pr3c2 ≠ o, Pr3c2 ≠ se, Pr3c2 ≠ ew, Pr3c2 ≠ sw, Br2c1 ≠ n, Br2c1 ≠ s, Br2c1 ≠ w, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c1 ≠ swn
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
whip[1]: Pr3c2{nw .} ==> Br3c1 ≠ ne, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ swn
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 3
whip[1]: Pr2c2{sw .} ==> Br1c1 ≠ se, Br1c2 ≠ sw, Br1c2 ≠ swn
whip[1]: Br1c2{nw .} ==> Nr1c2 ≠ 3
whip[1]: Br2c2{wne .} ==> Pr2c3 ≠ o, Pr3c3 ≠ o
whip[1]: Vr2c3{1 .} ==> Br2c3 ≠ nes, Pr2c3 ≠ ew, Pr3c3 ≠ ew, Br2c2 ≠ swn
whip[1]: Br2c3{wne .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ne, Pr3c4 ≠ se
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ esw, Br2c4 ≠ swn, Br3c4 ≠ nw
whip[1]: Br3c4{sw .} ==> Pr4c5 ≠ o, Pr4c5 ≠ se
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne
whip[1]: Br2c4{ew .} ==> Nr2c4 ≠ 3
whip[1]: Pr2c4{sw .} ==> Br1c4 ≠ sw
whip[1]: Br1c4{ew .} ==> Pr1c5 ≠ o
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ se
whip[1]: Br1c5{ew .} ==> Pr2c6 ≠ nw
whip[1]: Pr2c6{ew .} ==> Br2c5 ≠ sw, Br2c6 ≠ se, Br2c5 ≠ ne, Br2c6 ≠ e
whip[1]: Vr2c4{1 .} ==> Br2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr3c4 ≠ ew, Pr3c4 ≠ sw, Br2c3 ≠ swn, Br2c4 ≠ n, Br2c4 ≠ e, Br2c4 ≠ ns
whip[1]: Pr4c3{ew .} ==> Hr4c3 ≠ 0, Br4c2 ≠ sw, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ esw, Br3c3 ≠ ne, Br4c2 ≠ o, Br4c2 ≠ s, Br4c2 ≠ w, Br4c2 ≠ ne
H-single: Hr4c3 = 1
w[1]-3-in-r4c3-closed-nw-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
w[1]-diagonal-closed-3-1-in-{r4c3...r5c4} ==> Vr5c5 = 0, Hr6c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r5 r6}c5-bkwd-diag-2s-3...r5c6 ==> Vr5c7 = 1, Hr5c6 = 1
w[1]-3-in-r5c6-closed-ne-corner ==> Pr6c6 ≠ sw, Pr6c6 ≠ ne, Pr6c6 ≠ o
w[1]-1-in-r5c4-asymmetric-nw-corner ==> Pr6c5 ≠ ew, Pr6c5 ≠ ns, Pr6c5 ≠ ne
whip[1]: Hr4c3{1 .} ==> Pr4c4 ≠ ns
whip[1]: Pr4c4{ew .} ==> Vr4c4 ≠ 1, Br3c4 ≠ sw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ sw, Br3c4 ≠ ne
V-single: Vr4c4 = 0
w[1]-diagonal-3-2-in-{r3c5...r4c4}-non-closed-sw-corner ==> Vr3c6 = 1, Hr5c4 = 1, Hr3c5 = 1, Vr2c6 = 0, Hr3c6 = 0
w[1]-diagonal-3-2s-in-{r4c3...r2c5}-non-closed-ne-end ==> Hr2c5 = 1
w[1]-3-in-r4c3-hit-by-horiz-line-at-se ==> Vr5c4 = 0
w[1]-3-in-r3c5-closed-ne-corner ==> Pr4c5 ≠ sw
B-single: Br4c3 = swn
whip[1]: Vr4c4{0 .} ==> Pr5c4 ≠ ns
P-single: Pr5c4 = ew
whip[1]: Pr5c4{ew .} ==> Br5c4 ≠ w, Br5c4 ≠ s, Br5c4 ≠ e, Br5c3 ≠ ne, Br5c3 ≠ w, Br5c3 ≠ s, Br5c3 ≠ e, Br5c3 ≠ o, Br4c4 ≠ ne, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ wne, Br5c3 ≠ nes
B-single: Br5c4 = n
whip[1]: Br5c4{n .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ sw, Pr6c4 ≠ ne, Pr6c4 ≠ ns, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c5 ≠ nw
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ nw, Br7c4 ≠ se, Br8c5 ≠ nw, Br8c5 ≠ se, Br8c5 ≠ swn, Br8c5 ≠ wne, Br8c5 ≠ o, Br8c5 ≠ e, Br8c5 ≠ s
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Pr7c4{ew .} ==> Br6c3 ≠ nw, Br6c3 ≠ se, Br6c4 ≠ ne, Br7c3 ≠ ne
whip[1]: Br7c3{sw .} ==> Pr8c3 ≠ o, Pr8c3 ≠ sw
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ ne
whip[1]: Br8c2{sw .} ==> Pr9c2 ≠ o, Pr9c2 ≠ sw
whip[1]: Pr9c2{ew .} ==> Br9c1 ≠ ne
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ esw, Br5c2 ≠ nes, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ w
whip[1]: Br5c2{wne .} ==> Nr5c2 ≠ 0
whip[1]: Pr7c3{sw .} ==> Br6c2 ≠ se, Br6c2 ≠ esw, Br6c2 ≠ nes, Br6c3 ≠ ew, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c3 ≠ nw, Br6c3 ≠ ns, Br7c2 ≠ n, Br7c2 ≠ e, Br7c2 ≠ ns
whip[1]: Br7c3{sw .} ==> Pr8c4 ≠ se
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ sw, Br8c3 ≠ sw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c4 ≠ swn, Br8c4 ≠ wne, Br7c4 ≠ ne, Br8c3 ≠ o, Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ ne
whip[1]: Br8c3{swn .} ==> Nr8c3 ≠ 0
whip[1]: Br8c4{nes .} ==> Hr9c4 ≠ 0, Vr8c5 ≠ 0, Pr8c4 ≠ nw, Pr8c5 ≠ ne, Pr8c5 ≠ ew, Pr9c4 ≠ o, Pr9c4 ≠ ns, Pr9c4 ≠ nw, Pr9c4 ≠ sw, Pr9c5 ≠ o, Pr9c5 ≠ ne, Pr9c5 ≠ ns, Pr9c5 ≠ se, Pr9c5 ≠ ew, Pr9c5 ≠ sw
V-single: Vr8c5 = 1
H-single: Hr9c4 = 1
P-single: Pr9c5 = nw
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ n, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ nes
whip[1]: Br8c5{esw .} ==> Hr8c5 ≠ 1, Pr8c6 ≠ nw, Pr8c6 ≠ ew, Pr8c6 ≠ sw
H-single: Hr8c5 = 0
whip[1]: Hr8c5{0 .} ==> Br7c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ nes
whip[1]: Hr9c4{1 .} ==> Br9c4 ≠ o, Br9c4 ≠ e, Br9c4 ≠ s, Br9c4 ≠ w, Br9c4 ≠ se, Br9c4 ≠ ew, Br9c4 ≠ sw, Br9c4 ≠ esw
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Hr9c5{0 .} ==> Pr9c6 ≠ nw, Pr9c6 ≠ ew, Pr9c6 ≠ sw, Br8c5 ≠ sw, Br8c5 ≠ esw, Br9c5 ≠ n, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ nw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes
whip[1]: Br8c5{ew .} ==> Nr8c5 ≠ 3
whip[1]: Vr9c5{0 .} ==> Pr10c5 ≠ ne, Pr10c5 ≠ ns, Pr10c5 ≠ nw, Br9c4 ≠ ne, Br9c4 ≠ wne, Br9c4 ≠ nes, Br9c5 ≠ w, Br9c5 ≠ ew, Br9c5 ≠ sw, Br9c5 ≠ esw
whip[1]: Br9c5{se .} ==> Nr9c5 ≠ 3
whip[1]: Pr7c3{sw .} ==> Br6c2 ≠ nw, Br7c3 ≠ se, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ w
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 0
whip[1]: Pr9c4{ew .} ==> Br8c3 ≠ se, Br8c3 ≠ esw, Br9c3 ≠ wne, Br9c3 ≠ nes, Br9c3 ≠ ne
whip[1]: Pr6c5{se .} ==> Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ ew, Br6c5 ≠ sw, Br5c5 ≠ w
whip[1]: Br5c5{s .} ==> Pr5c6 ≠ sw, Pr6c6 ≠ nw
whip[1]: Pr6c6{ew .} ==> Br5c6 ≠ esw, Br5c6 ≠ swn, Br6c6 ≠ se, Br6c6 ≠ o, Br6c6 ≠ e, Br6c6 ≠ s
whip[1]: Br6c6{nes .} ==> Nr6c6 ≠ 0
whip[1]: Br5c6{nes .} ==> Pr5c6 ≠ o, Pr5c6 ≠ ns, Pr5c6 ≠ nw, Pr5c7 ≠ o, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ ew, Pr6c7 ≠ se, Pr6c7 ≠ ew
P-single: Pr5c7 = sw
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ ns, Br5c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ w, Br4c7 ≠ s, Br4c6 ≠ ne, Br4c6 ≠ w, Br4c6 ≠ e, Br4c6 ≠ n, Br4c6 ≠ o, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c7 ≠ nes, Br5c7 ≠ nw, Br5c7 ≠ se
whip[1]: Br5c7{sw .} ==> Pr5c8 ≠ nw, Pr5c8 ≠ ew
whip[1]: Br4c7{ne .} ==> Pr4c7 ≠ ns, Nr4c7 ≠ 3, Pr4c7 ≠ sw
whip[1]: Pr4c7{ew .} ==> Br3c6 ≠ nw, Br3c7 ≠ n, Br3c7 ≠ e
whip[1]: Br3c7{swn .} ==> Nr3c7 ≠ 1
whip[1]: Br4c6{swn .} ==> Nr4c6 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br6c8 ≠ nw, Br6c8 ≠ se, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ o, Br6c8 ≠ e, Br6c8 ≠ s
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 0
whip[1]: Pr6c7{nw .} ==> Br6c6 ≠ ne, Br6c6 ≠ wne, Br6c6 ≠ nes, Br6c7 ≠ nw, Br6c7 ≠ swn, Br6c7 ≠ wne
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ se, Br4c5 ≠ esw, Br4c5 ≠ nes
whip[1]: Br4c5{sw .} ==> Nr4c5 ≠ 3
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ sw, Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ ne
whip[1]: Br4c5{ew .} ==> Nr4c5 ≠ 0
whip[1]: Br5c3{swn .} ==> Pr5c3 ≠ o, Pr5c3 ≠ ns, Pr5c3 ≠ nw, Pr5c3 ≠ sw, Nr5c3 ≠ 0
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ se, Br4c2 ≠ esw, Br5c2 ≠ wne, Br5c2 ≠ ne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Vr3c6{1 .} ==> Pr3c6 ≠ o, Pr3c6 ≠ ne, Pr3c6 ≠ ew, Pr4c6 ≠ se, Pr4c6 ≠ ew, Br3c5 ≠ swn, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ se
whip[1]: Pr1c4{sw .} ==> Hr1c3 ≠ 0, Br1c3 ≠ se, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
H-single: Hr1c3 = 1
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o, Pr1c3 ≠ o
P-single: Pr1c3 = ew
B-single: Br0c3 = s
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ o
whip[1]: Br1c2{nw .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Nr1c2 ≠ 0
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Pr2c1 ≠ se, Nr1c1 ≠ 0
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ wne
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr2c5{ew .} ==> Br2c5 ≠ nw, Br2c5 ≠ se
whip[1]: Pr4c7{ew .} ==> Hr4c7 ≠ 0, Br3c7 ≠ nw, Br3c7 ≠ ew, Br4c7 ≠ o, Br4c7 ≠ e
H-single: Hr4c7 = 1
whip[1]: Hr4c7{1 .} ==> Pr4c8 ≠ o, Pr4c8 ≠ ns
whip[1]: Br4c7{ne .} ==> Nr4c7 ≠ 0
whip[1]: Br3c6{sw .} ==> Pr3c7 ≠ nw, Pr3c7 ≠ ew
whip[1]: Pr3c7{se .} ==> Br2c6 ≠ ns, Br2c6 ≠ esw, Br2c6 ≠ swn
whip[1]: Br2c6{ew .} ==> Nr2c6 ≠ 3
whip[1]: Br3c5{nes .} ==> Pr3c5 ≠ nw
whip[1]: Pr4c6{nw .} ==> Br4c6 ≠ swn
whip[1]: Br4c6{sw .} ==> Nr4c6 ≠ 3
whip[1]: Hr3c5{1 .} ==> Pr3c5 ≠ ns, Pr3c6 ≠ ns, Br2c5 ≠ ew, Br3c5 ≠ esw
P-single: Pr3c6 = sw
B-single: Br2c5 = ns
whip[1]: Pr3c6{sw .} ==> Br2c6 ≠ nw, Br2c6 ≠ ew
B-single: Br2c6 = n
whip[1]: Br2c6{n .} ==> Vr2c7 ≠ 1, Hr2c6 ≠ 0, Pr2c6 ≠ ns, Pr2c6 ≠ se, Pr2c7 ≠ ns, Pr3c7 ≠ ne, Pr3c7 ≠ ns, Nr2c6 ≠ 2
H-single: Hr2c6 = 1
V-single: Vr2c7 = 0
N-single: Nr2c6 = 1
w[1]-3-in-r1c6-closed-se-corner ==> Pr1c6 ≠ se
P-single: Pr1c6 = ew
P-single: Pr2c7 = nw
P-single: Pr2c6 = ew
no-vertical-line-r2{c6 c7} ==> Ir2c6 = out
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
vertical-line-r3{c5 c6} ==> Ir3c6 = out
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1

LOOP[6]: Hr1c5-Hr1c6-Vr1c7-Hr2c6-Hr2c5- ==> Vr1c5 = 0
w[1]-diagonal-3-2-in-{r2c3...r1c4}-non-closed-ne-corner ==> Hr3c3 = 1, Hr1c4 = 1, Hr3c2 = 0
w[1]-2-in-r3c4-open-nw-corner ==> Hr4c4 = 1, Vr3c5 = 1, Hr4c5 = 0, Vr4c5 = 0
w[1]-diagonal-3-2s-in-{r2c2...r4c4}-non-closed-se-end ==> Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
w[1]-3-in-r2c2-closed-ne-corner ==> Pr3c2 ≠ ne
w[1]-3-in-r3c5-closed-nw-corner ==> Pr4c6 ≠ nw
w[1]-3-in-r2c3-closed-se-corner ==> Pr2c3 ≠ se
P-single: Pr2c3 = sw
P-single: Pr3c3 = ne
P-single: Pr4c4 = ew
P-single: Pr5c5 = ew
P-single: Pr1c5 = ew
w[1]-1-in-r5c5-asymmetric-nw-corner ==> Pr6c6 ≠ ew, Pr6c6 ≠ ns
P-single: Pr6c6 = se
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = in
vertical-line-r2{c2 c3} ==> Ir2c2 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
no-vertical-line-r3{c3 c4} ==> Ir3c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
vertical-line-r4{c2 c3} ==> Ir4c2 = out
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-vertical-line-r5{c2 c3} ==> Ir5c3 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
vertical-line-r2{c1 c2} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1

LOOP[18]: Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Hr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Hr2c2-Vr2c2- ==> Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1

LOOP[20]: Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Hr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Hr2c2-Vr2c2-Vr3c2- ==> Hr4c1 = 0
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = in
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1

LOOP[22]: Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Hr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Hr2c2-Vr2c2-Vr3c2-Vr4c2- ==> Hr5c1 = 0
no-horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1

LOOP[24]: Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Hr1c6-Vr1c7-Hr2c6-Hr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Hr2c2-Vr2c2-Vr3c2-Vr4c2-Vr5c2- ==> Hr6c1 = 0
no-horizontal-line-{r5 r6}c1 ==> Ir6c1 = in
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
w[1]-3-in-r5c6-hit-by-horiz-line-at-nw ==> Hr6c6 = 1, Vr4c6 = 0
w[0]-adjacent-3-in-r3c5-nolines-south ==> Hr4c6 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r5{c5 c6} ==> Hr6c5 = 0
w[1]-3-in-r5c6-closed-se-corner ==> Pr5c6 ≠ se
P-single: Pr10c1 = ne
P-single: Pr9c2 = ne
P-single: Pr8c3 = ne
P-single: Pr6c4 = sw
P-single: Pr7c4 = ne
P-single: Pr7c6 = nw
P-single: Pr6c5 = o
w[1]-1-in-r5c5-symmetric-sw-corner ==> Pr5c6 ≠ ne
P-single: Pr5c6 = ew
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = out
horizontal-line-{r3 r4}c6 ==> Ir4c6 = in
no-vertical-line-r4{c6 c7} ==> Ir4c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
no-vertical-line-r6{c6 c7} ==> Ir6c6 = in
horizontal-line-{r5 r6}c6 ==> Ir5c6 = out
horizontal-line-{r3 r4}c7 ==> Ir3c7 = out
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
same-colour-in-r6{c4 c5} ==> Vr6c5 = 0
w[1]-2-in-r6c4-open-ne-corner ==> Hr7c4 = 1, Vr6c4 = 1, Hr7c3 = 0, Vr7c4 = 0
w[1]-2-in-r7c3-open-ne-corner ==> Hr8c3 = 1, Vr7c3 = 1, Hr8c2 = 0, Vr8c3 = 0
w[1]-2-in-r8c2-open-ne-corner ==> Hr9c2 = 1, Vr8c2 = 1, Hr9c1 = 0, Vr9c2 = 0
w[1]-2-in-r9c1-open-ne-corner ==> Hr10c1 = 1, Vr10c1 = 0
w[1]-2-in-r6c5-open-nw-corner ==> Hr7c5 = 1, Hr7c6 = 0, Vr7c6 = 0
w[1]-diagonal-3-2s-in-{r5c6...r7c4}-non-closed-sw-end ==> Hr8c4 = 1
w[1]-3-in-r8c4-closed-ne-corner ==> Pr9c4 ≠ ne
P-single: Pr7c3 = sw
P-single: Pr10c2 = sw
P-single: Pr11c1 = o
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = in
vertical-line-r7{c2 c3} ==> Ir7c2 = out
no-horizontal-line-{r7 r8}c2 ==> Ir8c2 = out
no-vertical-line-r8{c2 c3} ==> Ir8c3 = out
vertical-line-r8{c1 c2} ==> Ir8c1 = in
horizontal-line-{r8 r9}c2 ==> Ir9c2 = in
horizontal-line-{r7 r8}c4 ==> Ir8c4 = out
vertical-line-r8{c4 c5} ==> Ir8c5 = in
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
no-vertical-line-r10{c0 c1} ==> Ir10c1 = out
same-colour-in-{r10 r11}c1 ==> Hr11c1 = 0
w[1]-2-in-r10c1-open-sw-corner ==> Vr10c2 = 1, Hr10c2 = 0
same-colour-in-r8{c3 c4} ==> Vr8c4 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
whip[1]: Hr2c6{1 .} ==> Br1c6 ≠ wne
B-single: Br1c6 = nes
whip[1]: Vr2c7{0 .} ==> Br2c7 ≠ ew, Br2c7 ≠ esw
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 3
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ ew
whip[1]: Pr2c6{ew .} ==> Br1c5 ≠ nw
B-single: Br1c5 = ns
whip[1]: Br1c5{ns .} ==> Pr2c5 ≠ ns
P-single: Pr2c5 = ew
whip[1]: Pr2c5{ew .} ==> Br1c4 ≠ ne, Br1c4 ≠ ew, Br2c4 ≠ ew
B-single: Br2c4 = nw
B-single: Br1c4 = ns
whip[1]: Br2c4{nw .} ==> Nr2c4 ≠ 1, Pr3c5 ≠ ew, Pr2c4 ≠ ns
N-single: Nr2c4 = 2
P-single: Pr2c4 = se
P-single: Pr3c5 = se
whip[1]: Pr2c4{se .} ==> Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nes, Br2c3 ≠ wne
B-single: Br2c3 = esw
B-single: Br1c3 = n
whip[1]: Br2c3{esw .} ==> Pr3c4 ≠ ns
P-single: Pr4c5 = nw
P-single: Pr3c4 = nw
whip[1]: Pr4c5{nw .} ==> Br3c4 ≠ ns, Br3c4 ≠ ew, Br3c5 ≠ nes, Br4c4 ≠ se, Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ ew
B-single: Br4c5 = s
B-single: Br4c4 = ns
B-single: Br3c5 = wne
B-single: Br3c4 = se
whip[1]: Br4c5{s .} ==> Nr4c5 ≠ 2, Pr4c6 ≠ ns
N-single: Nr4c5 = 1
P-single: Pr3c7 = o
P-single: Pr4c6 = ne
whip[1]: Pr3c7{o .} ==> Br2c7 ≠ se, Br3c6 ≠ ew, Br3c7 ≠ ns, Br3c7 ≠ esw, Br3c7 ≠ swn
B-single: Br3c7 = se
B-single: Br3c6 = sw
B-single: Br2c7 = e
whip[1]: Br3c7{se .} ==> Nr3c7 ≠ 3, Pr4c8 ≠ sw, Pr4c7 ≠ ne, Pr3c8 ≠ nw
N-single: Nr3c7 = 2
P-single: Pr3c8 = ns
P-single: Pr4c7 = ew
P-single: Pr4c8 = nw
whip[1]: Pr3c8{ns .} ==> Br3c8 ≠ e
B-single: Br3c8 = ew
whip[1]: Br3c8{ew .} ==> Nr3c8 ≠ 1
N-single: Nr3c8 = 2
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ s, Br4c6 ≠ sw
B-single: Br4c6 = ns
whip[1]: Br4c6{ns .} ==> Nr4c6 ≠ 1
N-single: Nr4c6 = 2
w[1]-diagonal-3-2s-in-{r3c5...r5c7}-non-closed-se-end ==> Vr5c8 = 1
vertical-line-r5{c7 c8} ==> Ir5c8 = out
different-colours-in-{r4 r5}c8 ==> Hr5c8 = 1
whip[1]: Vr5c8{1 .} ==> Pr6c8 ≠ ew, Pr6c8 ≠ sw, Br5c7 ≠ sw, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ se
B-single: Br5c7 = ew
whip[1]: Br5c8{sw .} ==> Pr5c9 ≠ sw, Pr6c9 ≠ nw
whip[1]: Pr5c9{ew .} ==> Br5c9 ≠ sw, Br5c9 ≠ w
whip[1]: Br5c9{nes .} ==> Pr6c9 ≠ ne
whip[1]: Pr6c8{ns .} ==> Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nes, Br6c7 ≠ n
whip[1]: Hr5c8{1 .} ==> Br4c8 ≠ o, Pr5c8 ≠ ns, Pr5c9 ≠ o, Pr5c9 ≠ se, Br4c8 ≠ w, Br5c8 ≠ ew, Br5c8 ≠ sw
P-single: Pr6c8 = ns
P-single: Pr5c9 = ew
P-single: Pr5c8 = se
B-single: Br5c8 = nw
whip[1]: Pr6c8{ns .} ==> Br6c8 ≠ n, Br6c7 ≠ o, Vr6c8 ≠ 0, Hr6c8 ≠ 1, Br6c7 ≠ s, Br6c7 ≠ w, Br6c7 ≠ sw, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nes
H-single: Hr6c8 = 0
V-single: Vr6c8 = 1
vertical-line-r6{c7 c8} ==> Ir6c8 = out
whip[1]: Vr6c8{1 .} ==> Pr7c8 ≠ o, Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c8 ≠ sw
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ ne, Br7c7 ≠ wne, Br7c7 ≠ nes, Br7c8 ≠ nw, Br7c8 ≠ swn, Br7c8 ≠ wne
whip[1]: Br6c7{esw .} ==> Nr6c7 ≠ 0
whip[1]: Pr5c9{ew .} ==> Br5c9 ≠ s, Br5c9 ≠ o, Br4c9 ≠ n, Vr5c9 ≠ 1, Hr5c9 ≠ 0, Br5c9 ≠ wne
H-single: Hr5c9 = 1
V-single: Vr5c9 = 0
B-single: Br4c9 = ns
no-vertical-line-r5{c8 c9} ==> Ir5c9 = out
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
whip[1]: Hr5c9{1 .} ==> Pr5c10 ≠ o
P-single: Pr6c11 = ns
P-single: Pr5c10 = sw
whip[1]: Pr6c11{ns .} ==> Br6c10 ≠ n, Vr6c11 ≠ 0, Hr6c10 ≠ 1, Br5c10 ≠ se, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ swn
H-single: Hr6c10 = 0
V-single: Vr6c11 = 1
B-single: Br5c10 = ew
vertical-line-r6{c10 c11} ==> Ir6c10 = in
whip[1]: Hr6c10{0 .} ==> Pr6c10 ≠ se, Pr6c10 ≠ ew
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o, Pr7c11 ≠ o, Pr7c11 ≠ sw
B-single: Br6c11 = w
w[1]-1-in-r7c10-asymmetric-ne-corner ==> Pr8c10 ≠ ew, Pr8c10 ≠ se, Pr8c10 ≠ nw, Pr8c10 ≠ ns
w[1]-3-in-r7c9-asymmetric-se-corner ==> Hr7c9 = 1, Vr6c9 = 0, Hr7c8 = 0
P-single: Pr10c8 = ne
P-single: Pr9c9 = o
P-single: Pr8c10 = sw
w[1]-1-in-r8c7-asymmetric-se-corner ==> Pr8c7 ≠ sw, Pr8c7 ≠ ew, Pr8c7 ≠ ns, Pr8c7 ≠ ne
no-horizontal-line-{r6 r7}c8 ==> Ir7c8 = out
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
no-vertical-line-r8{c8 c9} ==> Ir8c9 = out
horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
horizontal-line-{r6 r7}c9 ==> Ir6c9 = out
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
different-colours-in-r6{c9 c10} ==> Hr6c10 = 1
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
same-colour-in-{r5 r6}c9 ==> Hr6c9 = 0
whip[1]: Hr7c9{1 .} ==> Pr7c9 ≠ o, Pr7c9 ≠ ns, Pr7c9 ≠ nw, Pr7c9 ≠ sw, Pr7c10 ≠ ns, Pr7c10 ≠ se, Br6c9 ≠ n, Br6c9 ≠ e, Br6c9 ≠ nw, Br6c9 ≠ ew, Br7c9 ≠ esw
whip[1]: Br7c9{nes .} ==> Pr8c9 ≠ sw
whip[1]: Pr8c9{ew .} ==> Br7c8 ≠ se, Br7c8 ≠ esw, Br7c8 ≠ nes, Br8c9 ≠ nw, Br8c9 ≠ se, Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ w
whip[1]: Br7c8{sw .} ==> Nr7c8 ≠ 0, Nr7c8 ≠ 3
whip[1]: Br6c9{swn .} ==> Nr6c9 ≠ 1
whip[1]: Pr7c10{ew .} ==> Br6c10 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes, Br6c10 ≠ e, Br7c10 ≠ w
B-single: Br7c9 = swn
whip[1]: Br7c9{swn .} ==> Pr8c9 ≠ ew, Pr8c9 ≠ ns, Pr7c9 ≠ ew, Pr7c9 ≠ ne
P-single: Pr7c9 = se
P-single: Pr8c9 = ne
whip[1]: Pr7c9{se .} ==> Br7c8 ≠ s, Br6c8 ≠ ew, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c9 ≠ esw, Br6c9 ≠ swn, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ sw
B-single: Br6c8 = w
whip[1]: Br6c8{w .} ==> Nr6c8 ≠ 3, Nr6c8 ≠ 2, Pr7c8 ≠ ne, Pr6c9 ≠ se
N-single: Nr6c8 = 1
P-single: Pr6c9 = o
whip[1]: Pr6c9{o .} ==> Br5c9 ≠ nes, Br6c9 ≠ ns
B-single: Br6c9 = se
B-single: Br5c9 = ne
whip[1]: Br6c9{se .} ==> Nr6c9 ≠ 3, Pr7c10 ≠ ew, Pr6c10 ≠ nw
N-single: Nr6c9 = 2
P-single: Pr6c10 = ns
P-single: Pr7c10 = nw
w[1]-1-in-r7c10-symmetric-nw-corner ==> Pr8c11 ≠ nw, Pr8c11 ≠ o
whip[1]: Pr6c10{ns .} ==> Br6c10 ≠ se
B-single: Br6c10 = ew
whip[1]: Br6c10{ew .} ==> Nr6c10 ≠ 3, Nr6c10 ≠ 1, Pr7c11 ≠ nw
N-single: Nr6c10 = 2
P-single: Pr7c11 = ns
whip[1]: Pr7c11{ns .} ==> Br7c10 ≠ n, Br7c10 ≠ s
B-single: Br7c10 = e
whip[1]: Br7c10{e .} ==> Hr8c10 ≠ 1, Pr8c11 ≠ sw
H-single: Hr8c10 = 0
w[0]-adjacent-3-in-r7c9-nolines-east ==> Vr8c10 = 1
P-single: Pr8c11 = ns
vertical-line-r8{c9 c10} ==> Ir8c10 = in
different-colours-in-r8{c10 c11} ==> Hr8c11 = 1
whip[1]: Hr8c10{0 .} ==> Br8c10 ≠ n, Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br8c10 ≠ nes
whip[1]: Vr8c10{1 .} ==> Br8c10 ≠ o, Pr9c10 ≠ ew, Pr9c10 ≠ sw, Br8c9 ≠ ns, Br8c9 ≠ sw, Br8c10 ≠ e, Br8c10 ≠ s, Br8c10 ≠ se
whip[1]: Br8c10{esw .} ==> Nr8c10 ≠ 0
whip[1]: Br8c9{ew .} ==> Hr9c9 ≠ 1
H-single: Hr9c9 = 0
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = out
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
w[1]-2-in-r9c8-open-ne-corner ==> Hr10c8 = 1, Vr9c8 = 1, Hr10c7 = 0, Vr10c8 = 0
vertical-line-r9{c7 c8} ==> Ir9c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
no-vertical-line-r10{c7 c8} ==> Ir10c8 = in
different-colours-in-{r10 r11}c8 ==> Hr11c8 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1
whip[1]: Hr9c9{0 .} ==> Br9c9 ≠ n, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c9 ≠ wne, Br9c9 ≠ nes
whip[1]: Vr9c9{0 .} ==> Pr10c9 ≠ ns, Br9c8 ≠ ne, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c9 ≠ w, Br9c9 ≠ ew, Br9c9 ≠ sw, Br9c9 ≠ esw
whip[1]: Br9c9{se .} ==> Nr9c9 ≠ 3
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ sw, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c9 ≠ o, Br10c9 ≠ e, Br10c9 ≠ s
whip[1]: Br10c9{nes .} ==> Nr10c9 ≠ 0
whip[1]: Vr9c8{1 .} ==> Pr9c8 ≠ ew, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ sw, Br9c8 ≠ ns
B-single: Br9c8 = sw
whip[1]: Br9c8{sw .} ==> Hr9c8 ≠ 1
whip[1]: Pr9c8{sw .} ==> Br8c7 ≠ n, Br8c7 ≠ w
whip[1]: Br8c7{s .} ==> Hr8c7 ≠ 1, Vr8c7 ≠ 1, Pr9c7 ≠ ne, Pr9c7 ≠ ns, Pr8c7 ≠ se, Pr8c8 ≠ nw, Pr8c8 ≠ ew, Pr8c8 ≠ sw
V-single: Vr8c7 = 0
H-single: Hr8c7 = 0
no-horizontal-line-{r7 r8}c7 ==> Ir7c7 = out
no-vertical-line-r8{c6 c7} ==> Ir8c6 = out
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
different-colours-in-{r7 r8}c6 ==> Hr8c6 = 1
same-colour-in-r7{c7 c8} ==> Vr7c8 = 0
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
whip[1]: Vr8c7{0 .} ==> Br8c6 ≠ e, Br8c6 ≠ ne, Br8c6 ≠ se, Br8c6 ≠ ew, Br8c6 ≠ esw, Br8c6 ≠ wne, Br8c6 ≠ nes
whip[1]: Hr8c7{0 .} ==> Br7c7 ≠ s, Br7c7 ≠ ns, Br7c7 ≠ se, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 3
whip[1]: Vr8c6{1 .} ==> Br8c6 ≠ o, Pr8c6 ≠ o, Pr8c6 ≠ ne, Pr9c6 ≠ o, Pr9c6 ≠ se, Br8c5 ≠ w, Br8c6 ≠ n, Br8c6 ≠ s, Br8c6 ≠ ns
B-single: Br8c5 = ew
whip[1]: Br8c5{ew .} ==> Nr8c5 ≠ 1
N-single: Nr8c5 = 2
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ nw, Br9c6 ≠ se, Br10c6 ≠ sw, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ o, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 0
whip[1]: Br10c6{ew .} ==> Pr11c6 ≠ ne
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ ew, Br10c5 ≠ ne
whip[1]: Br10c5{sw .} ==> Pr11c5 ≠ o, Pr10c6 ≠ sw
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ nw
whip[1]: Br10c4{sw .} ==> Pr10c4 ≠ se
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 0
whip[1]: Pr8c6{se .} ==> Br7c6 ≠ ne, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ o, Br7c6 ≠ n, Br7c6 ≠ e
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Hr8c6{1 .} ==> Pr8c6 ≠ ns, Pr8c7 ≠ o, Br7c6 ≠ w, Br7c6 ≠ nw, Br7c6 ≠ ew, Br7c6 ≠ wne, Br8c6 ≠ w, Br8c6 ≠ sw
P-single: Pr8c7 = nw
P-single: Pr8c6 = se
whip[1]: Pr8c7{nw .} ==> Br7c7 ≠ e, Br7c7 ≠ n, Br7c7 ≠ o, Br7c6 ≠ s, Br7c6 ≠ ns
whip[1]: Br7c6{nes .} ==> Pr7c7 ≠ o, Pr7c7 ≠ ne, Pr7c7 ≠ nw, Pr7c7 ≠ ew, Nr7c6 ≠ 1
whip[1]: Pr7c7{sw .} ==> Br6c6 ≠ esw, Br6c7 ≠ esw
whip[1]: Br6c7{ew .} ==> Nr6c7 ≠ 3
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 0
whip[1]: Pr8c6{se .} ==> Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ew, Br7c5 ≠ wne
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 3
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 1
whip[1]: Vr7c8{0 .} ==> Pr7c8 ≠ ns, Pr8c8 ≠ ne, Pr8c8 ≠ ns, Br7c7 ≠ ew, Br7c8 ≠ ew
P-single: Pr7c8 = nw
B-single: Br7c8 = e
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ e, Br6c7 ≠ ew, Br7c7 ≠ w
B-single: Br7c7 = nw
B-single: Br6c7 = se
whip[1]: Br7c7{nw .} ==> Nr7c7 ≠ 1, Pr7c7 ≠ sw, Pr7c7 ≠ ns
N-single: Nr7c7 = 2
P-single: Pr7c7 = se
whip[1]: Pr7c7{se .} ==> Br6c6 ≠ ns, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ swn, Br7c6 ≠ nes
B-single: Br7c6 = se
whip[1]: Br7c6{se .} ==> Nr7c6 ≠ 3
N-single: Nr7c6 = 2
whip[1]: Br6c6{nw .} ==> Pr6c7 ≠ ns, Nr6c6 ≠ 3
P-single: Pr6c7 = nw
whip[1]: Pr6c7{nw .} ==> Br5c6 ≠ wne, Br6c6 ≠ w
B-single: Br5c6 = nes
whip[1]: Br6c7{se .} ==> Nr6c7 ≠ 1
N-single: Nr6c7 = 2
whip[1]: Br7c8{e .} ==> Nr7c8 ≠ 2, Hr8c8 ≠ 1, Pr8c8 ≠ se
N-single: Nr7c8 = 1
P-single: Pr8c8 = o
w[1]-1-in-r8c7-symmetric-ne-corner ==> Pr9c7 ≠ sw
P-single: Pr9c7 = ew
whip[1]: Pr8c8{o .} ==> Vr8c8 ≠ 1, Br8c7 ≠ e
B-single: Br8c7 = s
whip[1]: Br8c7{s .} ==> Pr9c8 ≠ ns
P-single: Pr11c6 = o
P-single: Pr10c7 = sw
P-single: Pr9c8 = sw
whip[1]: Pr11c6{o .} ==> Vr10c6 ≠ 1, Hr11c6 ≠ 1, Hr11c5 ≠ 1, Br11c5 ≠ n, Br11c6 ≠ n, Br10c5 ≠ ns, Br10c5 ≠ se, Br10c5 ≠ sw, Br10c6 ≠ ns, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ ew
H-single: Hr11c5 = 0
H-single: Hr11c6 = 0
V-single: Vr10c6 = 0
w[1]-2-in-r10c5-open-se-corner ==> Hr10c5 = 1, Vr10c5 = 1, Hr10c4 = 0
w[1]-2-in-r10c6-open-sw-corner ==> Hr10c6 = 1, Vr10c7 = 1, Vr9c7 = 0
P-single: Pr10c5 = se
B-single: Br10c6 = ne
B-single: Br10c5 = nw
B-single: Br11c6 = o
B-single: Br11c5 = o
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
horizontal-line-{r9 r10}c6 ==> Ir10c6 = out
no-vertical-line-r10{c5 c6} ==> Ir10c5 = out
vertical-line-r10{c4 c5} ==> Ir10c4 = in
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
same-colour-in-r9{c5 c6} ==> Vr9c6 = 0
different-colours-in-{r8 r9}c6 ==> Hr9c6 = 1
whip[1]: Hr11c5{0 .} ==> Pr11c5 ≠ ew
P-single: Pr11c5 = nw
whip[1]: Pr11c5{nw .} ==> Br11c4 ≠ o, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ ew, Br10c4 ≠ sw
B-single: Br10c4 = se
B-single: Br11c4 = n
whip[1]: Br10c4{se .} ==> Pr11c4 ≠ nw, Vr10c4 ≠ 1
V-single: Vr10c4 = 0
P-single: Pr11c4 = ew
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
same-colour-in-r10{c2 c3} ==> Vr10c3 = 0
P-single: Pr10c4 = nw
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ ne, Br10c3 ≠ se, Br10c3 ≠ ew
whip[1]: Pr11c4{ew .} ==> Br11c3 ≠ o, Br10c3 ≠ nw
B-single: Br11c3 = n
whip[1]: Br11c3{n .} ==> Pr11c3 ≠ nw
P-single: Pr11c3 = ew
whip[1]: Pr11c3{ew .} ==> Br10c2 ≠ ne, Br10c2 ≠ w, Br10c2 ≠ e, Br10c2 ≠ n, Br10c2 ≠ o, Br11c2 ≠ o, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ esw, Br10c2 ≠ wne, Br10c2 ≠ nes, Br10c3 ≠ sw
B-single: Br10c3 = ns
B-single: Br11c2 = n
whip[1]: Br10c3{ns .} ==> Pr10c3 ≠ ns, Hr10c3 ≠ 0, Pr10c3 ≠ sw
H-single: Hr10c3 = 1
horizontal-line-{r9 r10}c3 ==> Ir9c3 = out
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1
different-colours-in-r9{c2 c3} ==> Hr9c3 = 1
whip[1]: Hr10c3{1 .} ==> Br9c3 ≠ o, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ w, Br9c3 ≠ nw, Br9c3 ≠ ew
whip[1]: Br9c3{swn .} ==> Nr9c3 ≠ 0
whip[1]: Vr9c4{1 .} ==> Pr9c4 ≠ ew, Br9c3 ≠ s, Br9c3 ≠ ns, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c4 ≠ n, Br9c4 ≠ ns
P-single: Pr9c4 = se
whip[1]: Pr9c4{se .} ==> Br8c3 ≠ e, Br8c3 ≠ ns, Br8c3 ≠ ew, Br8c3 ≠ swn, Br8c4 ≠ esw
B-single: Br8c4 = nes
whip[1]: Br8c4{nes .} ==> Pr8c5 ≠ ns, Pr8c4 ≠ ns
P-single: Pr8c4 = ew
P-single: Pr8c5 = sw
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ ew, Br7c4 ≠ ew
B-single: Br7c4 = ns
whip[1]: Br7c4{ns .} ==> Pr7c5 ≠ ns
P-single: Pr7c5 = ew
whip[1]: Pr7c5{ew .} ==> Br7c5 ≠ w, Br7c5 ≠ o, Br6c4 ≠ se, Br6c4 ≠ ew, Br6c5 ≠ nw, Br7c5 ≠ nw
B-single: Br7c5 = n
B-single: Br6c5 = se
B-single: Br6c4 = sw
whip[1]: Br7c5{n .} ==> Nr7c5 ≠ 0, Nr7c5 ≠ 2
N-single: Nr7c5 = 1
whip[1]: Br8c3{nw .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ ew, Nr8c3 ≠ 3
whip[1]: Pr9c3{sw .} ==> Br8c2 ≠ nw, Br8c2 ≠ se, Br9c2 ≠ nw, Br9c2 ≠ sw, Br9c2 ≠ swn, Br9c3 ≠ se, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ s, Br9c2 ≠ w, Br9c2 ≠ ns
B-single: Br9c3 = esw
whip[1]: Br9c3{esw .} ==> Nr9c3 ≠ 2, Nr9c3 ≠ 1, Pr10c3 ≠ ew
N-single: Nr9c3 = 3
P-single: Pr10c3 = ne
whip[1]: Pr10c3{ne .} ==> Br9c2 ≠ se, Br9c2 ≠ esw, Br9c2 ≠ nes, Br10c2 ≠ ns, Br10c2 ≠ swn
whip[1]: Br10c2{sw .} ==> Nr10c2 ≠ 0, Nr10c2 ≠ 3
whip[1]: Br9c2{wne .} ==> Nr9c2 ≠ 0
whip[1]: Br9c4{swn .} ==> Nr9c4 ≠ 1
whip[1]: Pr10c4{nw .} ==> Br9c4 ≠ swn
B-single: Br9c4 = nw
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 3
N-single: Nr9c4 = 2
whip[1]: Hr11c6{0 .} ==> Pr11c7 ≠ ew
P-single: Pr11c7 = ne
whip[1]: Pr11c7{ne .} ==> Br10c7 ≠ n, Br11c7 ≠ o, Br10c7 ≠ w, Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ nes
B-single: Br11c7 = n
whip[1]: Br11c7{n .} ==> Pr11c8 ≠ o
P-single: Pr10c9 = ew
whip[1]: Pr10c9{ew .} ==> Br10c9 ≠ w, Br10c8 ≠ ne, Br9c9 ≠ e, Br9c9 ≠ o, Vr10c9 ≠ 1, Hr10c9 ≠ 0, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ esw
H-single: Hr10c9 = 1
V-single: Vr10c9 = 0
w[1]-3-in-r10c10-hit-by-horiz-line-at-nw ==> Vr9c10 = 0
no-vertical-line-r9{c9 c10} ==> Ir9c10 = out
no-vertical-line-r10{c8 c9} ==> Ir10c9 = in
same-colour-in-r10{c9 c10} ==> Vr10c10 = 0
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1
w[1]-3-in-r10c10-hit-by-horiz-line-at-sw ==> Hr10c10 = 1
w[1]-3-in-r10c10-closed-ne-corner ==> Pr11c10 ≠ ne, Pr11c10 ≠ o
different-colours-in-{r8 r9}c10 ==> Hr9c10 = 1
whip[1]: Hr10c9{1 .} ==> Pr10c10 ≠ ne, Pr10c10 ≠ ns
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ se, Br9c10 ≠ nw, Br9c10 ≠ ew, Br9c10 ≠ sw, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ wne, Br9c10 ≠ w
B-single: Br9c9 = s
whip[1]: Br9c9{s .} ==> Nr9c9 ≠ 2, Nr9c9 ≠ 0, Pr9c10 ≠ ns
N-single: Nr9c9 = 1
P-single: Pr9c10 = ne
whip[1]: Pr9c10{ne .} ==> Br9c10 ≠ o, Br8c10 ≠ w, Br8c10 ≠ ew, Br9c10 ≠ e, Br9c10 ≠ s, Br9c10 ≠ se
whip[1]: Br9c10{nes .} ==> Pr9c11 ≠ o, Pr9c11 ≠ ns, Nr9c10 ≠ 0
whip[1]: Br8c10{esw .} ==> Nr8c10 ≠ 1
whip[1]: Vr10c9{0 .} ==> Pr11c9 ≠ ne
P-single: Pr11c9 = ew
whip[1]: Pr11c9{ew .} ==> Br10c9 ≠ ne, Br10c9 ≠ n, Br11c9 ≠ o, Br11c8 ≠ o, Br10c8 ≠ nw
B-single: Br10c8 = ns
B-single: Br11c8 = n
B-single: Br11c9 = n
whip[1]: Br10c8{ns .} ==> Pr11c8 ≠ nw
P-single: Pr11c8 = ew
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ esw
B-single: Br10c7 = sw
whip[1]: Br10c7{sw .} ==> Nr10c7 ≠ 3, Nr10c7 ≠ 1
N-single: Nr10c7 = 2
whip[1]: Br10c9{nes .} ==> Nr10c9 ≠ 1
whip[1]: Vr10c10{0 .} ==> Pr11c10 ≠ nw, Pr10c10 ≠ sw, Br10c9 ≠ nes, Br10c10 ≠ esw
P-single: Pr10c10 = ew
P-single: Pr11c10 = ew
B-single: Br10c10 = nes
B-single: Br10c9 = ns
whip[1]: Pr10c10{ew .} ==> Br9c10 ≠ ne, Br9c10 ≠ n
whip[1]: Br9c10{nes .} ==> Pr10c11 ≠ o, Pr10c11 ≠ ns, Nr9c10 ≠ 1
whip[1]: Pr11c10{ew .} ==> Br11c10 ≠ o
B-single: Br11c10 = n
whip[1]: Br11c10{n .} ==> Pr11c11 ≠ o
P-single: Pr11c11 = nw
whip[1]: Br10c10{nes .} ==> Pr10c11 ≠ nw
P-single: Pr10c11 = sw
whip[1]: Pr10c11{sw .} ==> Br9c10 ≠ nes
B-single: Br9c10 = ns
whip[1]: Br9c10{ns .} ==> Nr9c10 ≠ 3, Pr9c11 ≠ sw
N-single: Nr9c10 = 2
P-single: Pr9c11 = nw
whip[1]: Pr9c11{nw .} ==> Br8c10 ≠ sw
B-single: Br8c10 = esw
whip[1]: Br8c10{esw .} ==> Nr8c10 ≠ 2
N-single: Nr8c10 = 3
whip[1]: Br10c9{ns .} ==> Nr10c9 ≠ 3
N-single: Nr10c9 = 2
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr10c6{0 .} ==> Pr10c6 ≠ ns
P-single: Pr10c6 = ew
whip[1]: Pr10c6{ew .} ==> Br9c6 ≠ ne, Br9c5 ≠ e, Br9c5 ≠ o, Br9c5 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ sw
B-single: Br9c6 = ns
B-single: Br9c5 = s
whip[1]: Br9c6{ns .} ==> Pr9c6 ≠ ns
P-single: Pr9c6 = ne
whip[1]: Pr9c6{ne .} ==> Br8c6 ≠ nw
B-single: Br8c6 = swn
whip[1]: Br8c6{swn .} ==> Nr8c6 ≠ 2
N-single: Nr8c6 = 3
whip[1]: Br9c5{s .} ==> Nr9c5 ≠ 2, Nr9c5 ≠ 0
N-single: Nr9c5 = 1
whip[1]: Vr9c7{0 .} ==> Br9c7 ≠ ew
whip[1]: Pr10c7{sw .} ==> Br9c7 ≠ se
B-single: Br9c7 = ne
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Br5c9{ne .} ==> Nr5c9 ≠ 3, Nr5c9 ≠ 1, Nr5c9 ≠ 0
N-single: Nr5c9 = 2
whip[1]: Pr8c9{ne .} ==> Vr8c9 ≠ 1, Br8c9 ≠ ew
B-single: Br8c9 = ne
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Br4c9{ns .} ==> Nr4c9 ≠ 1
N-single: Nr4c9 = 2
whip[1]: Pr5c8{se .} ==> Br4c7 ≠ ne, Br4c8 ≠ sw
B-single: Br4c8 = s
B-single: Br4c7 = n
whip[1]: Br4c8{s .} ==> Nr4c8 ≠ 2, Nr4c8 ≠ 0
N-single: Nr4c8 = 1
whip[1]: Br4c7{n .} ==> Nr4c7 ≠ 2
N-single: Nr4c7 = 1
whip[1]: Br2c7{e .} ==> Nr2c7 ≠ 2
N-single: Nr2c7 = 1
whip[1]: Pr3c4{nw .} ==> Br3c3 ≠ se
B-single: Br3c3 = ns
whip[1]: Br1c3{n .} ==> Pr1c4 ≠ sw, Nr1c3 ≠ 2, Nr1c3 ≠ 3
N-single: Nr1c3 = 1
P-single: Pr1c4 = ew
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Hr3c2{0 .} ==> Br2c2 ≠ esw, Br3c2 ≠ n, Br3c2 ≠ ns
B-single: Br2c2 = wne
whip[1]: Br2c2{wne .} ==> Pr2c2 ≠ sw, Pr2c2 ≠ ns
P-single: Pr2c2 = se
whip[1]: Pr2c2{se .} ==> Br1c2 ≠ n, Br1c1 ≠ e, Br1c1 ≠ swn, Br1c2 ≠ nw, Br2c1 ≠ ne, Br2c1 ≠ nes
B-single: Br1c2 = ns
B-single: Br1c1 = nw
whip[1]: Br1c2{ns .} ==> Nr1c2 ≠ 1, Pr1c2 ≠ se
N-single: Nr1c2 = 2
P-single: Pr1c2 = ew
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 3, Nr1c1 ≠ 1, Pr2c1 ≠ ne, Pr2c1 ≠ o, Pr1c1 ≠ o
N-single: Nr1c1 = 2
P-single: Pr1c1 = se
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ e, Br2c1 ≠ se
whip[1]: Br2c1{esw .} ==> Pr3c1 ≠ o, Pr3c1 ≠ se, Nr2c1 ≠ 1
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ s, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ swn, Br3c1 ≠ o, Br3c1 ≠ e
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 0
whip[1]: Pr5c5{ew .} ==> Br5c5 ≠ s, Br5c5 ≠ e
B-single: Br5c5 = n
whip[1]: Pr6c6{se .} ==> Br6c6 ≠ n
B-single: Br6c6 = nw
whip[1]: Br6c6{nw .} ==> Nr6c6 ≠ 1
N-single: Nr6c6 = 2
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Hr3c1{0 .} ==> Pr3c1 ≠ ne, Pr3c2 ≠ nw, Br2c1 ≠ esw, Br3c1 ≠ n, Br3c1 ≠ ns
P-single: Pr3c2 = ns
P-single: Pr3c1 = ns
B-single: Br2c1 = ew
whip[1]: Pr3c2{ns .} ==> Br3c2 ≠ o, Br3c1 ≠ w, Br3c1 ≠ sw, Br3c2 ≠ s
whip[1]: Br3c2{sw .} ==> Pr4c2 ≠ o, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Nr3c2 ≠ 0
whip[1]: Pr4c2{nw .} ==> Br4c1 ≠ ne, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ nw, Br4c2 ≠ swn
whip[1]: Br4c2{ew .} ==> Pr5c2 ≠ ne, Nr4c2 ≠ 3
whip[1]: Br3c1{esw .} ==> Pr4c1 ≠ o, Pr4c1 ≠ se, Nr3c1 ≠ 1
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ o, Br4c1 ≠ e
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 0
whip[1]: Br2c1{ew .} ==> Nr2c1 ≠ 3
N-single: Nr2c1 = 2
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Hr4c1{0 .} ==> Pr4c1 ≠ ne, Pr4c2 ≠ nw, Br3c1 ≠ esw, Br4c1 ≠ n, Br4c1 ≠ ns
P-single: Pr4c1 = ns
B-single: Br3c1 = ew
whip[1]: Br3c1{ew .} ==> Nr3c1 ≠ 3
N-single: Nr3c1 = 2
whip[1]: Br4c1{esw .} ==> Pr5c1 ≠ o, Pr5c1 ≠ se
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ s, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ o, Br5c1 ≠ e
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Pr4c2{ns .} ==> Br4c2 ≠ e
whip[1]: Vr4c2{1 .} ==> Pr4c2 ≠ ne, Pr5c2 ≠ o, Pr5c2 ≠ se, Pr5c2 ≠ ew, Pr5c2 ≠ sw, Br4c1 ≠ w, Br4c1 ≠ sw, Br4c2 ≠ n, Br4c2 ≠ ns
P-single: Pr4c2 = ns
B-single: Br4c2 = ew
whip[1]: Pr4c2{ns .} ==> Br3c2 ≠ sw
B-single: Br3c2 = w
whip[1]: Br3c2{w .} ==> Nr3c2 ≠ 2, Pr4c3 ≠ ew
N-single: Nr3c2 = 1
P-single: Pr4c3 = se
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 1, Pr5c3 ≠ ew, Pr5c3 ≠ se
N-single: Nr4c2 = 2
P-single: Pr5c3 = ne
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ e, Br5c2 ≠ ns, Br5c2 ≠ ew, Br5c2 ≠ swn, Br5c3 ≠ nw, Br5c3 ≠ swn
whip[1]: Br5c3{ns .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ ns, Nr5c3 ≠ 3
whip[1]: Pr6c3{sw .} ==> Hr6c2 ≠ 0, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ e, Br6c2 ≠ s
H-single: Hr6c2 = 1

LOOP[100]: Vr8c1-Vr9c1-Hr10c1-Vr10c2-Hr11c2-Hr11c3-Hr11c4-Vr10c5-Hr10c5-Hr10c6-Vr10c7-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Hr10c9-Hr10c8-Vr9c8-Hr9c7-Hr9c6-Vr8c6-Hr8c6-Vr7c7-Hr7c7-Vr6c8-Vr5c8-Hr5c8-Hr5c9-Vr5c10-Vr6c10-Hr7c9-Vr7c9-Hr8c9-Vr8c10-Hr9c10-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Hr4c10-Hr4c9-Vr3c9-Hr3c9-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Hr2c8-Vr2c8-Vr3c8-Hr4c7-Hr4c6-Vr3c6-Hr3c5-Vr3c5-Hr4c4-Hr4c3-Vr4c3-Hr5c3-Hr5c4-Hr5c5-Hr5c6-Vr5c7-Hr6c6-Vr6c6-Hr7c5-Hr7c4-Vr6c4-Hr6c3-Hr6c2-Vr5c2-Vr4c2-Vr3c2-Vr2c2-Hr2c2-Vr2c3-Hr3c3-Vr2c4-Hr2c4-Hr2c5-Hr2c6-Vr1c7-Hr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1- ==> Vr7c1 = 0
no-vertical-line-r7{c0 c1} ==> Ir7c1 = out
no-vertical-line-r6{c1 c2} ==> Ir6c2 = in
same-colour-in-r6{c2 c3} ==> Vr6c3 = 0
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1

LOOP[12]: Hr7c2-Vr7c3-Hr8c3-Hr8c4-Vr8c5-Hr9c4-Vr9c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2- ==> Vr7c2 = 0
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1

LOOP[112]: Hr7c2-Vr7c3-Hr8c3-Hr8c4-Vr8c5-Hr9c4-Vr9c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Hr8c1-Vr8c1-Vr9c1-Hr10c1-Vr10c2-Hr11c2-Hr11c3-Hr11c4-Vr10c5-Hr10c5-Hr10c6-Vr10c7-Hr11c7-Hr11c8-Hr11c9-Hr11c10-Vr10c11-Hr10c10-Hr10c9-Hr10c8-Vr9c8-Hr9c7-Hr9c6-Vr8c6-Hr8c6-Vr7c7-Hr7c7-Vr6c8-Vr5c8-Hr5c8-Hr5c9-Vr5c10-Vr6c10-Hr7c9-Vr7c9-Hr8c9-Vr8c10-Hr9c10-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Hr4c10-Hr4c9-Vr3c9-Hr3c9-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Hr2c8-Vr2c8-Vr3c8-Hr4c7-Hr4c6-Vr3c6-Hr3c5-Vr3c5-Hr4c4-Hr4c3-Vr4c3-Hr5c3-Hr5c4-Hr5c5-Hr5c6-Vr5c7-Hr6c6-Vr6c6-Hr7c5-Hr7c4-Vr6c4-Hr6c3-Hr6c2-Vr5c2-Vr4c2-Vr3c2-Vr2c2-Hr2c2-Vr2c3-Hr3c3-Vr2c4-Hr2c4-Hr2c5-Hr2c6-Vr1c7-Hr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1- ==> Hr7c1 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXXXOOXX
XOXOOOOXXO
XOOOXOOXOO
XOXXXXXXXX
XOOOOOXOOX
XXXOOXXOOX
OOXXXXOOXX
XOOOXOOOOX
XXOXXXXOOO
OXXXOOXXXX

.———.———.———.———.———.———.   .   .———.———.
|             2   2   3 | 1   2 | 2     |
.   .———.   .———.———.———.   .———.   .———.
|   | 3 | 3 |     2         |     2 |
.   .   .———.   .———.   .   .   .———.   .
|   |     2   2 | 3 | 2     |   |     1
.   .   .———.———.   .———.———.   .———.———.
|   |   | 3   2                       2 |
.   .   .———.———.———.———.   .———.———.   .
|   |         1   1   3 | 2 | 2     | 2 |
.   .———.———.   .   .———.   .   .   .   .
|         2 | 2   2 |       |       |   |
.———.———.   .———.———.   .———.   .———.   .
        | 2   2         |       | 3   1 |
.———.   .———.———.   .———.   .   .———.   .
|   | 2       3 |   |     1   0   2 |   |
.   .———.   .———.   .———.———.   .   .———.
| 2     |   |         2   2 | 2
.———.   .———.   .———.———.   .———.———.———.
  2 |     2   2 | 2   2 |     2       3 |
.   .———.———.———.   .   .———.———.———.———.

init-time = 0.55s, solve-time = 43.44s, total-time = 43.98s
nb-facts=<Fact-193154>
Quasi-Loop max length = 112
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
