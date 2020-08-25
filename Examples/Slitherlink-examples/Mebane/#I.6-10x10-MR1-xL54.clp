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

Loading pre-computed background
start init-inner-N-and-B-candidates 0.640281915664673
start solution 0.656331062316895
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
w[1]-3-in-r7c9-closed-sw-corner ==> Pr7c10 ≠ sw, Pr7c10 ≠ ne, Pr7c10 ≠ o
w[1]-3-in-r7c9-closed-se-corner ==> Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ o
w[1]-3-in-r1c6-closed-ne-corner ==> Pr2c6 ≠ sw, Pr2c6 ≠ ne, Pr2c6 ≠ o
w[1]-3-in-r1c6-closed-nw-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ o
entering level Loop with <Fact-93236>
entering level Col with <Fact-93318>
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
no-vertical-line-r9{c9 c10} ==> Ir9c9 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-vertical-line-r8{c8 c9} ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
vertical-line-r7{c8 c9} ==> Ir7c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r6 r7}c10 ==> Ir7c10 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = out
no-vertical-line-r4{c10 c11} ==> Ir4c10 = out
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir5c10 = out
no-vertical-line-r7{c0 c1} ==> Ir7c1 = out
no-vertical-line-r7{c1 c2} ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
no-horizontal-line-{r7 r8}c1 ==> Ir8c1 = out
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
no-horizontal-line-{r10 r11}c7 ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-vertical-line-r10{c7 c8} ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-horizontal-line-{r10 r11}c2 ==> Ir10c2 = out
no-vertical-line-r10{c1 c2} ==> Ir10c1 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
no-horizontal-line-{r0 r1}c9 ==> Ir1c9 = out
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
no-vertical-line-r1{c9 c10} ==> Ir1c10 = out
no-horizontal-line-{r1 r2}c9 ==> Ir2c9 = out
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
vertical-line-r1{c6 c7} ==> Ir1c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
same-colour-in-{r0 r1}c3 ==> Hr1c3 = 0
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
same-colour-in-r1{c10 c11} ==> Vr1c11 = 0
same-colour-in-{r0 r1}c10 ==> Hr1c10 = 0
same-colour-in-{r0 r1}c8 ==> Hr1c8 = 0
same-colour-in-{r10 r11}c3 ==> Hr11c3 = 0
same-colour-in-{r10 r11}c1 ==> Hr11c1 = 0
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
same-colour-in-r9{c7 c8} ==> Vr9c8 = 0
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
same-colour-in-{r10 r11}c6 ==> Hr11c6 = 0
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
same-colour-in-r8{c0 c1} ==> Vr8c1 = 0
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
same-colour-in-r3{c10 c11} ==> Vr3c11 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
same-colour-in-r10{c10 c11} ==> Vr10c11 = 0
same-colour-in-{r10 r11}c10 ==> Hr11c10 = 0
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
3-in-r7c9-no-U-turn-from-south ==> Hr9c9 = O
same-colour-in-r7{c10 c11} ==> Vr7c11 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
Starting_init_links_with_<Fact-93569>
1248 candidates, 9667 csp-links and 39669 links. Density = 5.1%
starting non trivial part of solution
Entering_level_W1_with_<Fact-192246>
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ nes, Br8c11 ≠ w, Pr8c11 ≠ ns, Pr8c11 ≠ sw, Pr9c11 ≠ ns, Pr9c11 ≠ nw, Br8c10 ≠ e, Br8c10 ≠ ne, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ wne
B-single: Br8c11 = o
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Vr6c11{1 .} ==> Br6c10 ≠ swn, Br6c11 ≠ o, Br6c10 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ nw, Pr7c11 ≠ o, Pr7c11 ≠ sw, Br6c10 ≠ n, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ sw
B-single: Br6c11 = w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ w, Br7c10 ≠ nes, Br7c10 ≠ o
whip[1]: Br7c10{esw .} ==> Nr7c10 ≠ 0
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ esw, Br5c10 ≠ nes, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ w
whip[1]: Br5c10{wne .} ==> Nr5c10 ≠ 0
whip[1]: Vr7c11{0 .} ==> Br7c10 ≠ esw, Br7c11 ≠ w, Pr7c11 ≠ ns, Pr8c11 ≠ nw, Br7c10 ≠ se
P-single: Pr8c11 = o
P-single: Pr7c11 = nw
B-single: Br7c11 = o
whip[1]: Pr8c11{o .} ==> Br8c10 ≠ n, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ swn
whip[1]: Br8c10{sw .} ==> Pr8c10 ≠ ne, Pr8c10 ≠ se, Pr8c10 ≠ ew, Nr8c10 ≠ 3
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ ew, Br6c10 ≠ wne
whip[1]: Br6c10{nes .} ==> Pr6c10 ≠ se, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Nr6c10 ≠ 1
whip[1]: Pr7c10{ew .} ==> Vr6c10 ≠ 1, Br6c10 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes
whip[1]: Br7c9{swn .} ==> Pr7c9 ≠ ne, Pr7c9 ≠ ew, Pr8c9 ≠ o, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c9 ≠ sw, Pr8c10 ≠ o, Pr8c10 ≠ ns
P-single: Pr8c9 = ne
whip[1]: Pr8c9{ne .} ==> Br8c9 ≠ o, Br7c8 ≠ n, Br7c8 ≠ o, Vr8c9 ≠ 1, Hr8c8 ≠ 1, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ nes, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Br8c9{nes .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ ns, Pr9c9 ≠ nw, Nr8c9 ≠ 0
whip[1]: Br7c8{wne .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ se, Pr8c8 ≠ ew, Nr7c8 ≠ 0
whip[1]: Pr7c9{sw .} ==> Hr7c9 ≠ 1, Br6c8 ≠ nw, Br6c8 ≠ se, Br6c8 ≠ esw, Br6c8 ≠ nes, Br7c9 ≠ swn, Br6c8 ≠ o, Br6c8 ≠ n, Br6c8 ≠ w
B-single: Br7c9 = esw
whip[1]: Br7c9{esw .} ==> Pr8c10 ≠ sw, Pr7c10 ≠ ew
P-single: Pr7c10 = se
P-single: Pr8c10 = nw
whip[1]: Pr7c10{se .} ==> Br7c10 ≠ n
B-single: Br7c10 = nw
whip[1]: Br7c10{nw .} ==> Nr7c10 ≠ 3, Nr7c10 ≠ 1
N-single: Nr7c10 = 2
whip[1]: Pr8c10{nw .} ==> Br8c9 ≠ ne, Br8c9 ≠ nes, Br8c10 ≠ w, Br8c10 ≠ sw
whip[1]: Br8c10{s .} ==> Pr9c10 ≠ ne, Pr9c10 ≠ ns, Nr8c10 ≠ 2, Pr9c10 ≠ nw
whip[1]: Br8c9{ns .} ==> Nr8c9 ≠ 3
whip[1]: Br6c8{wne .} ==> Nr6c8 ≠ 0
whip[1]: Br6c10{nes .} ==> Pr6c10 ≠ ns, Pr6c10 ≠ sw
whip[1]: Hr9c9{0 .} ==> Br9c9 ≠ nes, Pr9c9 ≠ se, Pr9c9 ≠ ew, Pr9c10 ≠ ew, Pr9c10 ≠ sw, Br8c9 ≠ ns, Br9c9 ≠ n, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c9 ≠ wne
B-single: Br8c9 = n
whip[1]: Br8c9{n .} ==> Nr8c9 ≠ 2
N-single: Nr8c9 = 1
whip[1]: Pr9c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ ns
whip[1]: Vr9c9{0 .} ==> Br9c9 ≠ esw, Pr9c9 ≠ sw, Pr10c9 ≠ ne, Pr10c9 ≠ ns, Pr10c9 ≠ nw, Br9c8 ≠ ne, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c9 ≠ w, Br9c9 ≠ ew, Br9c9 ≠ sw
P-single: Pr9c9 = o
whip[1]: Pr9c9{o .} ==> Hr9c8 ≠ 1
whip[1]: Br9c9{se .} ==> Nr9c9 ≠ 3
whip[1]: Br9c8{sw .} ==> Pr9c8 ≠ ne, Pr9c8 ≠ se, Pr9c8 ≠ ew, Nr9c8 ≠ 3
whip[1]: Hr11c10{0 .} ==> Br10c10 ≠ nes, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Br10c10{nw .} ==> Pr10c11 ≠ ns, Pr10c11 ≠ sw, Nr10c10 ≠ 3
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c9 ≠ e, Br10c9 ≠ s
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Hr5c9{1 .} ==> Br5c9 ≠ esw, Br4c9 ≠ o, Br5c9 ≠ o, Pr5c9 ≠ o, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Pr5c9 ≠ sw, Pr5c10 ≠ o, Pr5c10 ≠ ne, Pr5c10 ≠ ns, Pr5c10 ≠ se, Br4c9 ≠ n, Br4c9 ≠ e, Br4c9 ≠ w, Br4c9 ≠ ne, Br4c9 ≠ nw, Br4c9 ≠ ew, Br4c9 ≠ wne, Br5c9 ≠ e, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ sw
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Pr5c10{sw .} ==> Br5c10 ≠ swn, Br5c10 ≠ wne
whip[1]: Br5c10{sw .} ==> Nr5c10 ≠ 3
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ se, Br4c8 ≠ esw, Br4c8 ≠ nes, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c8 ≠ ne
whip[1]: Vr3c11{0 .} ==> Br3c10 ≠ nes, Br3c11 ≠ w, Pr3c11 ≠ ns, Pr3c11 ≠ sw, Pr4c11 ≠ ns, Pr4c11 ≠ nw, Br3c10 ≠ e, Br3c10 ≠ ne, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw, Br3c10 ≠ wne
B-single: Br3c11 = o
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ ew, Br2c10 ≠ sw, Br2c10 ≠ swn, Br2c10 ≠ wne, Br2c10 ≠ e, Br2c10 ≠ s
whip[1]: Vr5c10{1 .} ==> Br5c10 ≠ ns, Pr5c10 ≠ nw, Pr5c10 ≠ ew, Pr6c10 ≠ o, Pr6c10 ≠ ew, Br5c9 ≠ n, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ swn, Br5c10 ≠ e, Br5c10 ≠ s, Br5c10 ≠ ne
P-single: Pr5c10 = sw
whip[1]: Pr5c10{sw .} ==> Vr4c10 ≠ 1, Hr5c10 ≠ 1, Br4c9 ≠ se, Br4c9 ≠ esw, Br4c9 ≠ nes
whip[1]: Br4c9{swn .} ==> Pr4c10 ≠ ns, Pr4c10 ≠ se, Pr4c10 ≠ sw
whip[1]: Br5c10{sw .} ==> Pr5c11 ≠ nw, Pr5c11 ≠ sw, Nr5c10 ≠ 1
N-single: Nr5c10 = 2
whip[1]: Br5c9{nes .} ==> Pr6c9 ≠ ne, Nr5c9 ≠ 1
whip[1]: Hr6c10{1 .} ==> Br6c10 ≠ se, Pr6c11 ≠ ns, Pr6c10 ≠ nw, Br5c10 ≠ ew
P-single: Pr5c11 = o
P-single: Pr6c10 = ne
P-single: Pr6c11 = sw
B-single: Br5c10 = sw
B-single: Br6c10 = nes
whip[1]: Pr5c11{o .} ==> Vr4c11 ≠ 1
whip[1]: Pr6c10{ne .} ==> Hr6c9 ≠ 1, Br5c9 ≠ nes
whip[1]: Br5c9{wne .} ==> Pr6c9 ≠ se, Pr6c9 ≠ ew
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 2
N-single: Nr6c10 = 3
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Vr6c1{0 .} ==> Br6c1 ≠ wne, Br6c0 ≠ e, Pr6c1 ≠ ns, Pr6c1 ≠ se, Pr7c1 ≠ ne, Pr7c1 ≠ ns, Br6c1 ≠ w, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn
B-single: Br6c0 = o
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Vr8c1{0 .} ==> Br8c1 ≠ wne, Br8c0 ≠ e, Pr8c1 ≠ ns, Pr8c1 ≠ se, Pr9c1 ≠ ne, Pr9c1 ≠ ns, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn
B-single: Br8c0 = o
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ ew, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ nes, Br9c1 ≠ n, Br9c1 ≠ w
whip[1]: Hr1c1{0 .} ==> Br1c1 ≠ wne, Br0c1 ≠ s, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Br1c1 ≠ nw, Br1c1 ≠ swn
P-single: Pr1c1 = o
B-single: Br0c1 = o
whip[1]: Br1c1{se .} ==> Pr2c1 ≠ ne, Pr2c1 ≠ ns, Nr1c1 ≠ 3
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c2 ≠ n, Br1c2 ≠ w
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c1 ≠ wne, Br3c0 ≠ e, Pr3c1 ≠ ns, Pr3c1 ≠ se, Pr4c1 ≠ ne, Pr4c1 ≠ ns, Br3c1 ≠ w, Br3c1 ≠ nw, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn
B-single: Br3c0 = o
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Hr11c6{0 .} ==> Br10c6 ≠ nes, Br11c6 ≠ n, Pr11c6 ≠ ne, Pr11c6 ≠ ew, Pr11c7 ≠ nw, Pr11c7 ≠ ew, Br10c6 ≠ s, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn
P-single: Pr11c6 = nw
B-single: Br11c6 = o
whip[1]: Pr11c6{nw .} ==> Br10c6 ≠ e, Br10c6 ≠ n, Br10c6 ≠ o, Vr10c6 ≠ 0, Hr11c5 ≠ 0, Br11c5 ≠ o, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c6 ≠ ne
H-single: Hr11c5 = 1
V-single: Vr10c6 = 1
B-single: Br10c5 = se
B-single: Br11c5 = n
vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
no-vertical-line-r9{c5 c6} ==> Ir9c6 = in
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
different-colours-in-r9{c6 c7} ==> Hr9c7 = 1
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
whip[1]: Hr11c5{1 .} ==> Pr11c5 ≠ nw
P-single: Pr11c5 = ew
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ ne, Br10c4 ≠ w, Br10c4 ≠ e, Br10c4 ≠ n, Br10c4 ≠ o, Vr10c5 ≠ 1, Hr11c4 ≠ 0, Br11c4 ≠ o, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ esw, Br10c4 ≠ wne, Br10c4 ≠ nes
H-single: Hr11c4 = 1
V-single: Vr10c5 = 0
B-single: Br11c4 = n
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
same-colour-in-{r9 r10}c4 ==> Hr10c4 = 0
different-colours-in-r10{c3 c4} ==> Hr10c4 = 1
whip[1]: Hr11c4{1 .} ==> Pr11c4 ≠ o, Pr11c4 ≠ nw
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ esw, Br10c3 ≠ nes, Br10c3 ≠ o, Br10c3 ≠ n, Br10c3 ≠ w
whip[1]: Br10c3{wne .} ==> Nr10c3 ≠ 0
whip[1]: Hr10c4{0 .} ==> Pr10c4 ≠ ne, Pr10c4 ≠ se, Pr10c4 ≠ ew, Pr10c5 ≠ nw, Br9c4 ≠ s, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ nes, Br10c4 ≠ ns, Br10c4 ≠ swn
P-single: Pr10c5 = o
whip[1]: Pr10c5{o .} ==> Vr9c5 ≠ 1, Hr10c5 ≠ 1, Br9c4 ≠ e, Br9c4 ≠ ne, Br9c4 ≠ ew, Br9c4 ≠ wne
whip[1]: Br9c4{nw .} ==> Pr9c5 ≠ ns, Pr9c5 ≠ se, Pr9c5 ≠ sw, Nr9c4 ≠ 3
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 0, Nr10c4 ≠ 3
whip[1]: Vr10c4{1 .} ==> Pr11c4 ≠ ew, Pr10c4 ≠ o, Pr10c4 ≠ nw, Br10c3 ≠ s, Br10c3 ≠ ns, Br10c3 ≠ sw, Br10c3 ≠ swn, Br10c4 ≠ s
P-single: Pr11c4 = ne
B-single: Br10c4 = sw
w[1]-1-in-r9c3-asymmetric-se-corner ==> Pr9c3 ≠ sw, Pr9c3 ≠ ew, Pr9c3 ≠ ns, Pr9c3 ≠ ne
whip[1]: Pr11c4{ne .} ==> Br11c3 ≠ n
B-single: Br11c3 = o
whip[1]: Br11c3{o .} ==> Pr11c3 ≠ ne, Pr11c3 ≠ ew
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 1
N-single: Nr10c4 = 2
whip[1]: Pr9c3{se .} ==> Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br9c2 ≠ ne, Br9c2 ≠ wne, Br9c2 ≠ nes, Br8c2 ≠ e, Br8c2 ≠ s, Br9c3 ≠ n, Br9c3 ≠ w
whip[1]: Br9c3{s .} ==> Hr9c3 ≠ 1, Vr9c3 ≠ 1, Pr10c3 ≠ ne, Pr10c3 ≠ ns, Pr9c3 ≠ se, Pr9c4 ≠ nw, Pr9c4 ≠ ew, Pr9c4 ≠ sw, Pr10c3 ≠ nw
V-single: Vr9c3 = 0
no-vertical-line-r9{c2 c3} ==> Ir9c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = out
no-vertical-line-r8{c2 c3} ==> Ir8c2 = out
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
same-colour-in-r7{c2 c3} ==> Vr7c3 = 0
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
different-colours-in-{r8 r9}c4 ==> Hr9c4 = 1
same-colour-in-{r8 r9}c2 ==> Hr9c2 = 0
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
same-colour-in-{r9 r10}c3 ==> Hr10c3 = 0
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1
whip[1]: Vr9c3{0 .} ==> Br9c2 ≠ e, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ esw
whip[1]: Vr7c3{0 .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se, Pr7c3 ≠ sw, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Br7c2 ≠ e, Br7c2 ≠ ne, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ esw, Br7c2 ≠ wne, Br7c2 ≠ nes, Br7c3 ≠ w, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ o, Br8c4 ≠ o, Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ew, Pr9c5 ≠ o, Pr9c5 ≠ ew, Br8c4 ≠ n, Br8c4 ≠ s, Br8c4 ≠ w, Br8c4 ≠ ns, Br8c4 ≠ nw, Br8c4 ≠ sw, Br8c4 ≠ swn, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ s, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ nes
whip[1]: Br8c5{wne .} ==> Nr8c5 ≠ 0
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn
whip[1]: Hr9c4{1 .} ==> Br9c4 ≠ o, Pr9c4 ≠ o, Pr9c4 ≠ ns, Pr9c5 ≠ ne, Br8c4 ≠ e, Br8c4 ≠ ne, Br8c4 ≠ ew, Br8c4 ≠ wne, Br9c4 ≠ w
P-single: Pr9c5 = nw
whip[1]: Pr9c5{nw .} ==> Hr9c5 ≠ 1, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn
whip[1]: Br8c5{wne .} ==> Pr9c6 ≠ nw, Pr9c6 ≠ ew, Pr9c6 ≠ sw
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 0
whip[1]: Br8c4{nes .} ==> Pr8c4 ≠ se, Nr8c4 ≠ 1
whip[1]: Hr9c2{0 .} ==> Pr9c2 ≠ ne, Pr9c2 ≠ se, Pr9c2 ≠ ew, Pr9c3 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ esw, Br8c2 ≠ nes, Br9c2 ≠ n, Br9c2 ≠ ns, Br9c2 ≠ nw, Br9c2 ≠ swn
P-single: Pr9c3 = o
whip[1]: Pr9c3{o .} ==> Vr8c3 ≠ 1
whip[1]: Br9c2{sw .} ==> Nr9c2 ≠ 3
whip[1]: Br8c2{nw .} ==> Pr8c3 ≠ se, Pr8c3 ≠ sw, Nr8c2 ≠ 3
whip[1]: Vr8c2{0 .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ se, Pr8c2 ≠ sw, Pr9c2 ≠ ns, Pr9c2 ≠ nw, Br8c1 ≠ e, Br8c1 ≠ ne, Br8c1 ≠ se, Br8c1 ≠ nes, Br8c2 ≠ w, Br8c2 ≠ nw
whip[1]: Br8c2{n .} ==> Nr8c2 ≠ 2
whip[1]: Br8c1{ns .} ==> Nr8c1 ≠ 3
whip[1]: Pr9c2{sw .} ==> Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ swn, Br9c1 ≠ e
whip[1]: Br9c1{wne .} ==> Pr10c1 ≠ ne, Pr10c2 ≠ nw, Nr9c1 ≠ 2
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ ne, Br10c1 ≠ n
whip[1]: Br10c1{swn .} ==> Pr10c2 ≠ sw
whip[1]: Hr8c2{0 .} ==> Pr8c2 ≠ ne, Pr8c2 ≠ ew, Pr8c3 ≠ ew, Br7c2 ≠ s, Br7c2 ≠ ns, Br7c2 ≠ sw, Br7c2 ≠ swn, Br8c2 ≠ n
P-single: Pr8c3 = o
B-single: Br8c2 = o
whip[1]: Pr8c3{o .} ==> Hr8c3 ≠ 1, Br7c3 ≠ s, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c3 ≠ nes
whip[1]: Br7c3{ne .} ==> Pr8c4 ≠ nw, Nr7c3 ≠ 3, Pr8c4 ≠ ew, Pr8c4 ≠ sw
whip[1]: Pr8c4{ns .} ==> Br7c4 ≠ s, Br7c4 ≠ ns
whip[1]: Br8c2{o .} ==> Nr8c2 ≠ 1
N-single: Nr8c2 = 0
whip[1]: Br7c2{nw .} ==> Nr7c2 ≠ 3
whip[1]: Hr10c3{0 .} ==> Pr10c3 ≠ se, Pr10c3 ≠ ew, Pr10c4 ≠ sw, Br9c3 ≠ s, Br10c3 ≠ ne, Br10c3 ≠ wne
P-single: Pr10c4 = ns
B-single: Br9c3 = e
w[1]-1-in-r9c3-symmetric-sw-corner ==> Pr9c4 ≠ ne
P-single: Pr9c4 = se
whip[1]: Pr10c4{ns .} ==> Br9c4 ≠ n
B-single: Br9c4 = nw
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 1
N-single: Nr9c4 = 2
whip[1]: Pr9c4{se .} ==> Vr8c4 ≠ 1, Br8c4 ≠ esw
whip[1]: Br8c4{nes .} ==> Pr8c4 ≠ ns
whip[1]: Pr8c4{ne .} ==> Br7c4 ≠ w, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ wne
whip[1]: Br10c3{ew .} ==> Nr10c3 ≠ 3
whip[1]: Vr10c6{1 .} ==> Pr10c6 ≠ nw, Pr10c6 ≠ ew
whip[1]: Pr10c6{se .} ==> Br9c6 ≠ ne, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ swn, Br9c6 ≠ o, Br9c6 ≠ n, Br9c6 ≠ e
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0
whip[1]: Vr9c7{1 .} ==> Br9c7 ≠ o, Pr9c7 ≠ o, Pr9c7 ≠ ne, Pr9c7 ≠ nw, Pr9c7 ≠ ew, Pr10c7 ≠ o, Pr10c7 ≠ se, Pr10c7 ≠ ew, Pr10c7 ≠ sw, Br9c6 ≠ s, Br9c6 ≠ w, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c7 ≠ n, Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ se, Br9c7 ≠ nes
whip[1]: Br9c7{wne .} ==> Nr9c7 ≠ 0
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 1
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ wne
whip[1]: Br10c6{ew .} ==> Nr10c6 ≠ 0, Nr10c6 ≠ 3
whip[1]: Pr9c7{sw .} ==> Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn
whip[1]: Hr10c6{1 .} ==> Pr10c6 ≠ ns, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Br9c6 ≠ ew, Br9c6 ≠ wne, Br10c6 ≠ w, Br10c6 ≠ ew
P-single: Pr10c7 = nw
P-single: Pr10c6 = se
B-single: Br10c6 = nw
whip[1]: Pr10c7{nw .} ==> Vr10c7 ≠ 1, Hr10c7 ≠ 1, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn
whip[1]: Br9c7{wne .} ==> Pr10c8 ≠ nw, Pr10c8 ≠ ew, Pr10c8 ≠ sw
whip[1]: Pr10c6{se .} ==> Vr9c6 ≠ 1
whip[1]: Br10c6{nw .} ==> Nr10c6 ≠ 1, Pr11c7 ≠ ne
N-single: Nr10c6 = 2
P-single: Pr11c7 = o
whip[1]: Pr11c7{o .} ==> Hr11c7 ≠ 1, Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Br11c7{o .} ==> Pr11c8 ≠ nw, Pr11c8 ≠ ew
whip[1]: Pr11c8{ne .} ==> Br10c8 ≠ s, Br10c8 ≠ w, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c8 ≠ nes
whip[1]: Br9c6{nes .} ==> Pr9c6 ≠ ns, Pr9c6 ≠ se
w[1]-1-in-r8c6-symmetric-sw-corner ==> Pr8c7 ≠ sw, Pr8c7 ≠ ne, Pr8c7 ≠ o
whip[1]: Pr8c7{ew .} ==> Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ o, Br7c7 ≠ n, Br7c7 ≠ e, Br7c7 ≠ ne, Br8c6 ≠ s, Br8c6 ≠ w
whip[1]: Br8c6{e .} ==> Hr9c6 ≠ 1, Vr8c6 ≠ 1, Pr9c6 ≠ ne, Pr8c6 ≠ ns, Pr8c6 ≠ se, Pr8c6 ≠ sw, Pr9c7 ≠ sw
V-single: Vr8c6 = 0
H-single: Hr9c6 = 0
P-single: Pr9c6 = o
no-horizontal-line-{r8 r9}c6 ==> Ir8c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
no-vertical-line-r6{c7 c8} ==> Ir6c7 = in
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-vertical-line-r5{c7 c8} ==> Ir5c8 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
same-colour-in-r5{c8 c9} ==> Vr5c9 = 0
same-colour-in-{r5 r6}c8 ==> Hr6c8 = 0
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
same-colour-in-{r7 r8}c5 ==> Hr8c5 = 0
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
whip[1]: Vr8c6{0 .} ==> Br8c5 ≠ ew, Br8c5 ≠ wne
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Hr9c6{0 .} ==> Br9c6 ≠ nes
B-single: Br9c6 = se
whip[1]: Br9c6{se .} ==> Nr9c6 ≠ 3
N-single: Nr9c6 = 2
whip[1]: Vr7c8{1 .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ne, Pr7c8 ≠ nw, Pr7c8 ≠ ew, Pr8c8 ≠ o, Pr8c8 ≠ sw, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c8 ≠ e, Br7c8 ≠ ne
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 1
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0, Nr7c7 ≠ 1
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ w, Br8c7 ≠ ne, Br8c7 ≠ wne, Br8c7 ≠ nes, Br8c7 ≠ o, Br8c7 ≠ s
whip[1]: Br8c7{ew .} ==> Nr8c7 ≠ 0, Nr8c7 ≠ 3
whip[1]: Pr7c8{sw .} ==> Br6c7 ≠ se, Br6c7 ≠ esw, Br6c7 ≠ nes, Br6c8 ≠ sw, Br6c8 ≠ swn
whip[1]: Hr7c7{0 .} ==> Pr7c7 ≠ ne, Pr7c7 ≠ se, Pr7c7 ≠ ew, Pr7c8 ≠ sw, Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ sw, Br6c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ nes
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 3
N-single: Nr7c7 = 2
whip[1]: Pr7c8{se .} ==> Br6c8 ≠ ne, Br6c8 ≠ e
whip[1]: Vr6c8{0 .} ==> Pr6c8 ≠ ns, Pr6c8 ≠ se, Pr6c8 ≠ sw, Pr7c8 ≠ ns, Br6c7 ≠ e, Br6c7 ≠ ne, Br6c7 ≠ ew, Br6c7 ≠ wne, Br6c8 ≠ ew, Br6c8 ≠ wne
P-single: Pr7c8 = se
whip[1]: Pr7c8{se .} ==> Br7c8 ≠ ew
B-single: Br7c8 = wne
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 2, Pr7c9 ≠ ns
N-single: Nr7c8 = 3
P-single: Pr7c9 = sw
whip[1]: Pr7c9{sw .} ==> Vr6c9 ≠ 1
whip[1]: Br6c8{ns .} ==> Pr6c9 ≠ ns, Nr6c8 ≠ 3, Pr6c9 ≠ sw
whip[1]: Pr6c9{nw .} ==> Br5c8 ≠ ns, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ swn, Br5c8 ≠ e, Br5c8 ≠ s
whip[1]: Br6c7{nw .} ==> Nr6c7 ≠ 3
whip[1]: Vr5c9{0 .} ==> Pr5c9 ≠ se, Pr6c9 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br5c9 ≠ wne
P-single: Pr6c9 = o
B-single: Br5c9 = ne
whip[1]: Pr6c9{o .} ==> Br6c8 ≠ ns
B-single: Br6c8 = s
whip[1]: Br6c8{s .} ==> Nr6c8 ≠ 2, Pr6c8 ≠ ne, Pr6c8 ≠ ew
N-single: Nr6c8 = 1
whip[1]: Br5c9{ne .} ==> Nr5c9 ≠ 3
N-single: Nr5c9 = 2
whip[1]: Br5c8{nw .} ==> Nr5c8 ≠ 3
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ nw, Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 0
whip[1]: Hr6c6{0 .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr6c7 ≠ sw, Br5c6 ≠ s, Br5c6 ≠ ns, Br5c6 ≠ se, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ nes, Br6c6 ≠ n, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br6c6 ≠ nes
whip[1]: Vr6c7{0 .} ==> Pr6c7 ≠ ns, Pr6c7 ≠ se, Pr7c7 ≠ ns, Pr7c7 ≠ nw, Br6c6 ≠ e, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c7 ≠ w, Br6c7 ≠ nw
whip[1]: Br6c7{n .} ==> Nr6c7 ≠ 2
whip[1]: Br6c6{sw .} ==> Nr6c6 ≠ 3
whip[1]: Hr8c7{1 .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ nw, Pr8c8 ≠ ns, Br7c7 ≠ ew, Br8c7 ≠ e, Br8c7 ≠ se, Br8c7 ≠ ew
P-single: Pr7c7 = o
P-single: Pr8c8 = nw
B-single: Br7c7 = se
whip[1]: Pr7c7{o .} ==> Vr7c7 ≠ 1, Hr7c6 ≠ 1, Br6c6 ≠ s, Br6c6 ≠ sw
whip[1]: Br6c6{w .} ==> Pr7c6 ≠ ne, Nr6c6 ≠ 2, Pr7c6 ≠ se, Pr7c6 ≠ ew
whip[1]: Pr8c8{nw .} ==> Vr8c8 ≠ 1
whip[1]: Br8c7{nw .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ nw
whip[1]: Pr9c8{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ ew
whip[1]: Br9c7{wne .} ==> Nr9c7 ≠ 2
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ ew, Br7c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ nes, Br8c5 ≠ nw
B-single: Br8c5 = w
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
N-single: Nr8c5 = 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ o, Br7c4 ≠ n
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 0
whip[1]: Vr8c7{1 .} ==> Pr8c7 ≠ ew, Pr9c7 ≠ se, Br8c6 ≠ n, Br8c7 ≠ n, Br8c7 ≠ ns
P-single: Pr9c7 = ns
P-single: Pr8c7 = se
B-single: Br8c7 = nw
B-single: Br8c6 = e
w[1]-1-in-r8c6-asymmetric-se-corner ==> Pr8c6 ≠ ne
P-single: Pr8c6 = o
whip[1]: Pr9c7{ns .} ==> Br9c7 ≠ wne
B-single: Br9c7 = w
whip[1]: Br9c7{w .} ==> Nr9c7 ≠ 3, Pr10c8 ≠ ns, Pr10c8 ≠ ne, Pr9c8 ≠ sw
N-single: Nr9c7 = 1
P-single: Pr9c8 = o
whip[1]: Pr9c8{o .} ==> Br9c8 ≠ w, Br9c8 ≠ sw
whip[1]: Br9c8{s .} ==> Nr9c8 ≠ 2
whip[1]: Pr10c8{se .} ==> Br10c8 ≠ ne, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ n
whip[1]: Br10c8{swn .} ==> Pr11c9 ≠ nw, Pr10c9 ≠ sw, Nr10c8 ≠ 2
whip[1]: Pr10c9{ew .} ==> Br10c9 ≠ esw, Br10c9 ≠ w
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ ne
whip[1]: Pr11c9{ew .} ==> Vr10c9 ≠ 1, Br10c9 ≠ nw, Br10c8 ≠ e
V-single: Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c9 = out
same-colour-in-r10{c9 c10} ==> Vr10c10 = 0
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
same-colour-in-{r9 r10}c9 ==> Hr10c9 = 0
whip[1]: Vr10c9{0 .} ==> Pr10c9 ≠ se
whip[1]: Vr10c10{0 .} ==> Pr11c10 ≠ nw, Pr10c10 ≠ ns, Pr10c10 ≠ se, Pr10c10 ≠ sw, Br10c9 ≠ se, Br10c9 ≠ nes, Br10c10 ≠ w, Br10c10 ≠ nw
P-single: Pr11c10 = o
whip[1]: Pr11c10{o .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Br11c9{o .} ==> Pr11c9 ≠ ew
P-single: Pr11c9 = o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n, Br10c8 ≠ swn
B-single: Br10c8 = o
B-single: Br11c8 = o
whip[1]: Br10c8{o .} ==> Vr10c8 ≠ 1, Pr11c8 ≠ ne, Pr10c8 ≠ se, Pr10c9 ≠ ew, Nr10c8 ≠ 1, Nr10c8 ≠ 3
N-single: Nr10c8 = 0
P-single: Pr10c9 = o
P-single: Pr10c8 = o
P-single: Pr11c8 = o
whip[1]: Pr10c9{o .} ==> Br9c8 ≠ s, Br9c9 ≠ s, Br9c9 ≠ se, Br10c9 ≠ n
B-single: Br10c9 = o
B-single: Br9c8 = o
whip[1]: Br10c9{o .} ==> Pr10c10 ≠ nw, Pr10c10 ≠ ew, Nr10c9 ≠ 1, Nr10c9 ≠ 2, Nr10c9 ≠ 3
N-single: Nr10c9 = 0
whip[1]: Br9c8{o .} ==> Nr9c8 ≠ 1
N-single: Nr9c8 = 0
whip[1]: Br9c9{e .} ==> Nr9c9 ≠ 2
whip[1]: Br10c10{n .} ==> Nr10c10 ≠ 2
whip[1]: Pr8c7{se .} ==> Hr8c6 ≠ 1
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 1
N-single: Nr8c7 = 2
whip[1]: Pr8c6{o .} ==> Vr7c6 ≠ 1, Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ew, Br7c5 ≠ wne
whip[1]: Br7c5{nw .} ==> Pr7c6 ≠ ns, Pr7c6 ≠ sw, Nr7c5 ≠ 3
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ e, Br6c5 ≠ s
whip[1]: Vr10c1{0 .} ==> Br10c1 ≠ swn, Br10c0 ≠ e, Pr11c1 ≠ ne, Pr10c1 ≠ ns, Pr10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr10c1 = o
P-single: Pr11c1 = o
B-single: Br10c0 = o
whip[1]: Pr10c1{o .} ==> Vr9c1 ≠ 1, Hr10c1 ≠ 1, Br9c1 ≠ s, Br9c1 ≠ wne
H-single: Hr10c1 = 0
V-single: Vr9c1 = 0
B-single: Br9c1 = o
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
same-colour-in-r9{c1 c2} ==> Vr9c2 = 0
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
whip[1]: Hr10c1{0 .} ==> Pr10c2 ≠ ew
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e, Pr9c1 ≠ se
P-single: Pr9c1 = o
B-single: Br9c0 = o
whip[1]: Pr9c1{o .} ==> Br8c1 ≠ s, Br8c1 ≠ ns
whip[1]: Br8c1{n .} ==> Pr9c2 ≠ sw, Nr8c1 ≠ 2
P-single: Pr9c2 = o
whip[1]: Pr9c2{o .} ==> Br9c2 ≠ w, Br9c2 ≠ sw
whip[1]: Br9c2{s .} ==> Pr10c2 ≠ ne, Pr10c2 ≠ ns, Nr9c2 ≠ 2
whip[1]: Br9c1{o .} ==> Nr9c1 ≠ 1, Nr9c1 ≠ 3
N-single: Nr9c1 = 0
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Br11c1{o .} ==> Pr11c2 ≠ nw, Pr11c2 ≠ ew
whip[1]: Br10c1{e .} ==> Nr10c1 ≠ 2, Nr10c1 ≠ 3
whip[1]: Hr1c8{0 .} ==> Br1c8 ≠ nes, Br0c8 ≠ s, Pr1c8 ≠ se, Pr1c8 ≠ ew, Pr1c9 ≠ ew, Pr1c9 ≠ sw, Br1c8 ≠ n, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ swn, Br1c8 ≠ wne
B-single: Br0c8 = o
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ n, Br1c7 ≠ e, Br1c7 ≠ ns
whip[1]: Hr1c10{0 .} ==> Br1c10 ≠ nes, Br0c10 ≠ s, Pr1c11 ≠ sw, Pr1c10 ≠ se, Pr1c10 ≠ ew, Br1c10 ≠ ne, Br1c10 ≠ wne
P-single: Pr1c11 = o
B-single: Br0c10 = o
whip[1]: Br1c10{sw .} ==> Pr2c11 ≠ ns, Pr2c11 ≠ nw, Nr1c10 ≠ 3
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ esw, Br2c10 ≠ n
whip[1]: Br2c10{nes .} ==> Pr2c10 ≠ se, Pr3c10 ≠ ne, Nr2c10 ≠ 2
whip[1]: Vr1c11{0 .} ==> Br1c11 ≠ w
B-single: Br1c11 = o
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ esw, Pr1c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ ns, Br1c7 ≠ ne, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c8 ≠ w, Br1c8 ≠ ew, Br1c8 ≠ sw
P-single: Pr1c8 = o
whip[1]: Br1c8{se .} ==> Nr1c8 ≠ 3
whip[1]: Br1c7{sw .} ==> Pr1c7 ≠ se, Pr1c7 ≠ ew, Nr1c7 ≠ 3
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ esw, Br1c6 ≠ swn
whip[1]: Br1c6{nes .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Pr1c7 ≠ o, Pr2c7 ≠ ew, Pr2c7 ≠ sw
P-single: Pr1c7 = sw
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ s, Br1c7 ≠ o
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 0
whip[1]: Pr2c7{ns .} ==> Hr2c6 ≠ 1, Br1c6 ≠ nes, Br2c7 ≠ s, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ swn, Br2c7 ≠ wne, Br2c7 ≠ o, Br2c7 ≠ e
B-single: Br1c6 = wne
whip[1]: Br1c6{wne .} ==> Pr2c6 ≠ ew, Pr2c6 ≠ se, Pr1c6 ≠ ew
P-single: Pr1c6 = se
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ nw, Br1c5 ≠ sw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes
whip[1]: Br1c5{esw .} ==> Pr1c5 ≠ se, Pr1c5 ≠ ew, Nr1c5 ≠ 0
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ sw, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c5 ≠ o, Br2c5 ≠ s
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 0
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Pr2c8{sw .} ==> Br2c7 ≠ sw, Br2c8 ≠ se, Br2c7 ≠ w
whip[1]: Hr1c3{0 .} ==> Br1c3 ≠ nes, Br0c3 ≠ s, Pr1c3 ≠ se, Pr1c3 ≠ ew, Pr1c4 ≠ ew, Pr1c4 ≠ sw, Br1c3 ≠ n, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ swn, Br1c3 ≠ wne
B-single: Br0c3 = o
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ swn, Br1c2 ≠ e
whip[1]: Br1c2{wne .} ==> Pr2c2 ≠ ne, Pr2c3 ≠ nw, Nr1c2 ≠ 2
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ se, Br2c4 ≠ o, Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Br2c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ ns
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ s
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 1
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c5{ns .} ==> Hr3c4 ≠ 1, Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c4 ≠ n
H-single: Hr3c4 = 0
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
same-colour-in-r2{c3 c4} ==> Vr2c4 = 0
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
same-colour-in-{r1 r2}c3 ==> Hr2c3 = 0
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
same-colour-in-{r2 r3}c2 ==> Hr3c2 = 0
whip[1]: Hr3c4{0 .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ se, Pr3c4 ≠ ew
whip[1]: Vr2c4{0 .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ se, Pr2c4 ≠ sw, Pr3c4 ≠ ns, Pr3c4 ≠ nw, Br2c3 ≠ e, Br2c3 ≠ ne, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ esw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ ew, Br2c4 ≠ wne
whip[1]: Br2c4{ne .} ==> Nr2c4 ≠ 3
whip[1]: Vr2c3{0 .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ se, Pr2c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ sw, Br2c3 ≠ swn
whip[1]: Br2c3{ns .} ==> Nr2c3 ≠ 3
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ ew, Br1c3 ≠ w
whip[1]: Hr2c3{0 .} ==> Pr2c3 ≠ ne, Pr2c3 ≠ ew, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Br1c3 ≠ s, Br1c3 ≠ se, Br1c3 ≠ sw, Br1c3 ≠ esw, Br2c3 ≠ n, Br2c3 ≠ ns
P-single: Pr2c3 = o
whip[1]: Pr2c3{o .} ==> Vr1c3 ≠ 1, Hr2c2 ≠ 1, Br1c2 ≠ s, Br1c2 ≠ wne, Br2c2 ≠ n, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ swn
H-single: Hr2c2 = 0
V-single: Vr1c3 = 0
B-single: Br1c2 = o
no-vertical-line-r1{c2 c3} ==> Ir1c2 = out
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
whip[1]: Hr2c2{0 .} ==> Pr2c2 ≠ se, Pr2c2 ≠ ew
whip[1]: Vr1c3{0 .} ==> Pr1c3 ≠ sw
P-single: Pr1c3 = o
whip[1]: Br1c2{o .} ==> Pr1c2 ≠ se, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Nr1c2 ≠ 1, Nr1c2 ≠ 3
N-single: Nr1c2 = 0
P-single: Pr1c2 = o
whip[1]: Pr1c2{o .} ==> Br1c1 ≠ e, Br1c1 ≠ se
whip[1]: Br1c1{s .} ==> Nr1c1 ≠ 2
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 3
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 2
whip[1]: Br1c3{e .} ==> Nr1c3 ≠ 2, Nr1c3 ≠ 3
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ se, Pr3c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ ns, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ se, Br3c1 ≠ nes, Br3c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne
whip[1]: Br3c1{ns .} ==> Nr3c1 ≠ 3
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ se, Br4c1 ≠ o, Br4c1 ≠ s
whip[1]: Br4c1{wne .} ==> Nr4c1 ≠ 0
whip[1]: Hr3c2{0 .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ ew, Pr3c3 ≠ ew, Pr3c3 ≠ sw, Br2c2 ≠ s, Br2c2 ≠ sw, Br3c2 ≠ n, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nes
whip[1]: Br3c2{se .} ==> Nr3c2 ≠ 3
whip[1]: Br2c2{w .} ==> Nr2c2 ≠ 2
whip[1]: Pr2c5{sw .} ==> Br1c5 ≠ esw
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 3
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Hr2c5{1 .} ==> Br2c5 ≠ esw, Pr2c5 ≠ ns, Pr2c5 ≠ sw, Pr2c6 ≠ ns, Br1c5 ≠ e, Br1c5 ≠ ew, Br2c5 ≠ ew
P-single: Pr2c6 = nw
P-single: Pr2c5 = se
B-single: Br1c5 = se
whip[1]: Pr2c6{nw .} ==> Vr2c6 ≠ 1
whip[1]: Pr2c5{se .} ==> Vr1c5 ≠ 1, Hr2c4 ≠ 1, Br2c4 ≠ ne
B-single: Br2c4 = e
whip[1]: Br2c4{e .} ==> Nr2c4 ≠ 2, Pr2c4 ≠ ne
N-single: Nr2c4 = 1
P-single: Pr2c4 = o
whip[1]: Pr2c4{o .} ==> Vr1c4 ≠ 1, Br1c3 ≠ e
B-single: Br1c3 = o
whip[1]: Br1c3{o .} ==> Pr1c4 ≠ se, Nr1c3 ≠ 1
N-single: Nr1c3 = 0
P-single: Pr1c4 = o
whip[1]: Pr1c4{o .} ==> Hr1c4 ≠ 1
whip[1]: Br1c5{se .} ==> Nr1c5 ≠ 1, Pr1c5 ≠ sw
N-single: Nr1c5 = 2
P-single: Pr1c5 = o
whip[1]: Br2c5{swn .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ nw
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ sw, Br3c6 ≠ se, Br3c6 ≠ o, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Hr2c7{1 .} ==> Br2c7 ≠ esw, Pr2c7 ≠ ns, Pr2c8 ≠ se, Br1c7 ≠ w, Br2c7 ≠ ew
P-single: Pr2c7 = ne
B-single: Br1c7 = sw
whip[1]: Pr2c7{ne .} ==> Vr2c7 ≠ 1
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 1
N-single: Nr1c7 = 2
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ nw, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ o, Br3c9 ≠ e, Br3c9 ≠ s
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Br2c7{nes .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ nw
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Vr1c9{0 .} ==> Br1c8 ≠ se, Vr1c9 ≠ 1, Pr1c9 ≠ se, Pr2c9 ≠ ns, Pr2c9 ≠ nw, Br1c8 ≠ e
P-single: Pr1c9 = o
whip[1]: Pr1c9{o .} ==> Hr1c9 ≠ 1
whip[1]: Br1c8{s .} ==> Nr1c8 ≠ 2
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ sw, Br2c9 ≠ se, Br2c9 ≠ o, Br2c9 ≠ e, Br2c9 ≠ s
whip[1]: Br2c9{nes .} ==> Nr2c9 ≠ 0
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ sw, Vr1c10 ≠ 1, Pr1c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ ns, Pr2c10 ≠ nw, Br1c10 ≠ w
P-single: Pr1c10 = o
whip[1]: Br1c10{s .} ==> Nr1c10 ≠ 2
whip[1]: Pr2c10{sw .} ==> Br2c9 ≠ ew, Br2c9 ≠ esw
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Hr2c9{0 .} ==> Br2c9 ≠ nes, Hr2c9 ≠ 1, Pr2c9 ≠ se, Pr2c9 ≠ ew, Pr2c10 ≠ ew, Pr2c10 ≠ sw, Br2c9 ≠ n, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne
P-single: Pr2c10 = o
P-single: Pr2c9 = sw
whip[1]: Pr2c10{o .} ==> Vr2c10 ≠ 1, Hr2c10 ≠ 1, Br1c10 ≠ s, Br2c10 ≠ w, Br2c10 ≠ nes
H-single: Hr2c10 = 0
V-single: Vr2c10 = 0
B-single: Br2c10 = o
B-single: Br1c10 = o
no-vertical-line-r2{c9 c10} ==> Ir2c10 = out
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
same-colour-in-{r2 r3}c10 ==> Hr3c10 = 0
whip[1]: Hr2c10{0 .} ==> Pr2c11 ≠ sw
P-single: Pr2c11 = o
whip[1]: Vr2c10{0 .} ==> Pr3c10 ≠ ns, Pr3c10 ≠ nw
whip[1]: Br2c10{o .} ==> Pr3c11 ≠ nw, Pr3c10 ≠ se, Pr3c10 ≠ ew, Nr2c10 ≠ 1, Nr2c10 ≠ 3
N-single: Nr2c10 = 0
P-single: Pr3c11 = o
whip[1]: Pr3c11{o .} ==> Br3c10 ≠ n, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ swn
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 3
whip[1]: Pr3c10{sw .} ==> Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ n, Br3c9 ≠ ns
whip[1]: Br1c10{o .} ==> Nr1c10 ≠ 1
N-single: Nr1c10 = 0
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ ns, Br1c8 ≠ o, Vr2c9 ≠ 0, Hr2c8 ≠ 0, Br2c8 ≠ ew
H-single: Hr2c8 = 1
V-single: Vr2c9 = 1
B-single: Br2c8 = ne
B-single: Br1c8 = s
vertical-line-r2{c8 c9} ==> Ir2c8 = in
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = in
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
same-colour-in-{r4 r5}c8 ==> Hr5c8 = 0
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
same-colour-in-r4{c7 c8} ==> Vr4c8 = 0
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-{r2 r3}c9 ==> Hr3c9 = 1
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
whip[1]: Hr2c8{1 .} ==> Pr2c8 ≠ sw
P-single: Pr2c8 = ew
whip[1]: Pr2c8{ew .} ==> Br2c7 ≠ ne, Br2c7 ≠ nes
whip[1]: Br2c7{ns .} ==> Nr2c7 ≠ 3
whip[1]: Vr2c9{1 .} ==> Pr3c9 ≠ ew, Pr3c9 ≠ sw
whip[1]: Pr3c9{ns .} ==> Hr3c8 ≠ 1
whip[1]: Br1c8{s .} ==> Nr1c8 ≠ 0
N-single: Nr1c8 = 1
whip[1]: Hr5c8{0 .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ se, Pr5c8 ≠ ew, Pr5c9 ≠ ew, Br4c8 ≠ s, Br4c8 ≠ ns, Br4c8 ≠ sw, Br4c8 ≠ swn, Br5c8 ≠ n, Br5c8 ≠ nw
P-single: Pr5c9 = ne
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ s, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Pr4c9 ≠ o, Pr4c9 ≠ ne, Pr4c9 ≠ nw, Pr4c9 ≠ ew, Nr4c9 ≠ 1
whip[1]: Pr4c9{sw .} ==> Br3c9 ≠ sw
whip[1]: Br3c9{nes .} ==> Pr4c10 ≠ ew
whip[1]: Pr4c10{nw .} ==> Br3c10 ≠ s
whip[1]: Br5c8{w .} ==> Nr5c8 ≠ 2
whip[1]: Vr4c8{0 .} ==> Pr4c8 ≠ ns, Pr4c8 ≠ se, Pr4c8 ≠ sw, Pr5c8 ≠ ns, Pr5c8 ≠ nw, Br4c7 ≠ e, Br4c7 ≠ ne, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c8 ≠ ew, Br4c8 ≠ wne
whip[1]: Br4c8{ne .} ==> Nr4c8 ≠ 3
whip[1]: Vr3c10{1 .} ==> Br3c10 ≠ o, Pr3c10 ≠ o, Pr4c10 ≠ o, Br3c9 ≠ w
P-single: Pr3c10 = sw
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ w
B-single: Br2c9 = sw
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 3, Nr2c9 ≠ 1, Pr3c9 ≠ ns
N-single: Nr2c9 = 2
P-single: Pr3c9 = ne
whip[1]: Pr3c9{ne .} ==> Vr3c9 ≠ 1
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ ns, Nr3c9 ≠ 1
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 0
whip[1]: Hr4c9{1 .} ==> Pr4c9 ≠ sw, Pr4c10 ≠ ne, Br3c9 ≠ ne, Br4c9 ≠ sw
P-single: Pr4c10 = nw
P-single: Pr4c9 = se
B-single: Br4c9 = swn
B-single: Br3c9 = nes
whip[1]: Pr4c10{nw .} ==> Hr4c10 ≠ 1, Br3c10 ≠ sw
B-single: Br3c10 = w
whip[1]: Br3c10{w .} ==> Nr3c10 ≠ 2, Pr4c11 ≠ sw
N-single: Nr3c10 = 1
P-single: Pr4c11 = o
whip[1]: Pr4c9{se .} ==> Hr4c8 ≠ 1, Br4c8 ≠ ne
B-single: Br4c8 = e
whip[1]: Br4c8{e .} ==> Nr4c8 ≠ 2, Pr4c8 ≠ ne, Pr4c8 ≠ ew
N-single: Nr4c8 = 1
whip[1]: Pr4c8{nw .} ==> Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c7 ≠ e, Br3c7 ≠ s
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 2
N-single: Nr4c9 = 3
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 2
N-single: Nr3c9 = 3
whip[1]: Hr4c7{0 .} ==> Pr4c7 ≠ ne, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c8 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ nes, Br4c7 ≠ n, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ swn
P-single: Pr4c8 = o
whip[1]: Pr4c8{o .} ==> Vr3c8 ≠ 1
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 3
whip[1]: Br3c7{nw .} ==> Pr3c8 ≠ sw, Nr3c7 ≠ 3
P-single: Pr3c8 = o
whip[1]: Pr3c8{o .} ==> Br2c7 ≠ ns, Br3c7 ≠ n, Br3c7 ≠ nw
B-single: Br2c7 = n
whip[1]: Br2c7{n .} ==> Pr3c7 ≠ se, Pr3c7 ≠ ew, Nr2c7 ≠ 2
N-single: Nr2c7 = 1
whip[1]: Pr3c7{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ n, Br3c6 ≠ ns
whip[1]: Br3c7{w .} ==> Nr3c7 ≠ 2
whip[1]: Vr3c7{0 .} ==> Pr3c7 ≠ sw, Pr4c7 ≠ ns, Pr4c7 ≠ nw, Br3c6 ≠ ne, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ w
P-single: Pr3c7 = o
B-single: Br3c7 = o
whip[1]: Pr3c7{o .} ==> Hr3c6 ≠ 1
whip[1]: Br3c7{o .} ==> Nr3c7 ≠ 1
N-single: Nr3c7 = 0
whip[1]: Br3c6{sw .} ==> Vr3c6 ≠ 0, Pr3c6 ≠ se, Pr3c6 ≠ ew, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Nr3c6 ≠ 3
V-single: Vr3c6 = 1
P-single: Pr3c6 = sw
vertical-line-r3{c5 c6} ==> Ir3c5 = out
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = out
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
same-colour-in-r4{c3 c4} ==> Vr4c4 = 0
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
same-colour-in-r3{c4 c5} ==> Vr3c5 = 0
w[1]-2-in-r3c5-open-sw-corner ==> Hr3c5 = 1
whip[1]: Vr3c6{1 .} ==> Br3c5 ≠ ns
whip[1]: Br3c5{ew .} ==> Hr4c5 ≠ 1
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nw, Br3c5 ≠ ew
B-single: Br3c5 = ne
B-single: Br2c5 = swn
whip[1]: Br3c5{ne .} ==> Pr3c5 ≠ ns
P-single: Pr3c5 = ne
whip[1]: Pr3c5{ne .} ==> Br3c4 ≠ e, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw
whip[1]: Br3c4{sw .} ==> Nr3c4 ≠ 3
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 2
N-single: Nr2c5 = 3
whip[1]: Vr5c6{1 .} ==> Br5c6 ≠ o, Br5c5 ≠ o, Pr5c6 ≠ o, Pr5c6 ≠ ne, Pr5c6 ≠ nw, Pr5c6 ≠ ew, Pr6c6 ≠ o, Pr6c6 ≠ sw, Br5c5 ≠ n, Br5c5 ≠ s, Br5c5 ≠ w, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ sw, Br5c5 ≠ swn, Br5c6 ≠ n, Br5c6 ≠ e, Br5c6 ≠ ne
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 0
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ w, Br6c5 ≠ nes, Br6c5 ≠ o
whip[1]: Br6c5{esw .} ==> Nr6c5 ≠ 0
whip[1]: Pr5c6{sw .} ==> Br4c6 ≠ sw, Br4c6 ≠ esw
whip[1]: Vr4c7{1 .} ==> Br4c7 ≠ o, Pr4c7 ≠ o, Pr5c7 ≠ o, Pr5c7 ≠ se, Pr5c7 ≠ ew, Pr5c7 ≠ sw, Br4c6 ≠ n, Br4c6 ≠ w, Br4c6 ≠ ns, Br4c7 ≠ s
P-single: Pr4c7 = sw
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ w, Br4c6 ≠ ew
B-single: Br3c6 = sw
whip[1]: Br3c6{sw .} ==> Nr3c6 ≠ 1, Pr4c6 ≠ ns
N-single: Nr3c6 = 2
P-single: Pr4c6 = ne
whip[1]: Pr4c6{ne .} ==> Vr4c6 ≠ 1
whip[1]: Br4c6{nes .} ==> Pr5c6 ≠ ns, Nr4c6 ≠ 1
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 0
whip[1]: Pr5c7{nw .} ==> Br5c6 ≠ wne
whip[1]: Br5c6{ew .} ==> Nr5c6 ≠ 3
whip[1]: Hr5c6{1 .} ==> Pr5c6 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Br4c6 ≠ ne, Br5c6 ≠ w, Br5c6 ≠ ew
P-single: Pr5c7 = nw
P-single: Pr5c6 = se
B-single: Br5c6 = nw
B-single: Br4c6 = nes
whip[1]: Pr5c7{nw .} ==> Vr5c7 ≠ 1, Hr5c7 ≠ 1, Br4c7 ≠ sw
B-single: Br4c7 = w
whip[1]: Br4c7{w .} ==> Nr4c7 ≠ 2, Pr5c8 ≠ sw
N-single: Nr4c7 = 1
P-single: Pr5c8 = o
whip[1]: Pr5c8{o .} ==> Vr5c8 ≠ 1, Br5c8 ≠ w
B-single: Br5c8 = o
whip[1]: Br5c8{o .} ==> Pr6c8 ≠ nw, Nr5c8 ≠ 1
N-single: Nr5c8 = 0
P-single: Pr6c8 = o
whip[1]: Pr6c8{o .} ==> Hr6c7 ≠ 1, Br6c7 ≠ n
B-single: Br6c7 = o
whip[1]: Br6c7{o .} ==> Pr6c7 ≠ ne, Nr6c7 ≠ 1
N-single: Nr6c7 = 0
P-single: Pr6c7 = o
whip[1]: Pr5c6{se .} ==> Hr5c5 ≠ 1, Br5c5 ≠ ne, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br5c5{esw .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ se, Pr5c5 ≠ ew
whip[1]: Br5c6{nw .} ==> Nr5c6 ≠ 1
N-single: Nr5c6 = 2
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 2
N-single: Nr4c6 = 3
whip[1]: Vr4c4{0 .} ==> Pr4c4 ≠ ns, Pr4c4 ≠ se, Pr4c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Br4c3 ≠ e, Br4c3 ≠ ne, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ w, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne
whip[1]: Hr4c4{0 .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ ew, Pr4c5 ≠ sw, Br3c4 ≠ s, Br3c4 ≠ sw, Br4c4 ≠ n, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nes
P-single: Pr4c5 = o
whip[1]: Pr4c5{o .} ==> Vr4c5 ≠ 1, Br4c4 ≠ e, Br4c4 ≠ se
whip[1]: Br4c4{s .} ==> Pr5c5 ≠ ns, Nr4c4 ≠ 2, Nr4c4 ≠ 3, Pr5c5 ≠ nw
whip[1]: Pr5c5{sw .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ n, Br5c4 ≠ e, Br5c4 ≠ ns
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 2
whip[1]: Vr2c1{0 .} ==> Pr3c1 ≠ ne, Br2c0 ≠ e, Vr2c1 ≠ 1, Pr2c1 ≠ se
P-single: Pr2c1 = o
P-single: Pr3c1 = o
B-single: Br2c0 = o
whip[1]: Pr2c1{o .} ==> Hr2c1 ≠ 1, Br1c1 ≠ s
B-single: Br1c1 = o
whip[1]: Br1c1{o .} ==> Pr2c2 ≠ sw, Nr1c1 ≠ 1
N-single: Nr1c1 = 0
P-single: Pr2c2 = o
whip[1]: Pr2c2{o .} ==> Vr2c2 ≠ 1, Br2c2 ≠ w
B-single: Br2c2 = o
whip[1]: Br2c2{o .} ==> Pr3c2 ≠ nw, Nr2c2 ≠ 1
N-single: Nr2c2 = 0
P-single: Pr3c2 = o
whip[1]: Pr3c2{o .} ==> Hr3c1 ≠ 1, Br3c1 ≠ n, Br3c1 ≠ ns
whip[1]: Br3c1{s .} ==> Nr3c1 ≠ 2
whip[1]: Vr3c3{0 .} ==> Br3c2 ≠ se, Vr3c3 ≠ 1, Pr3c3 ≠ se, Pr4c3 ≠ ns, Pr4c3 ≠ nw, Br3c2 ≠ e
P-single: Pr3c3 = o
whip[1]: Pr3c3{o .} ==> Hr3c3 ≠ 1, Br2c3 ≠ s
B-single: Br2c3 = o
whip[1]: Br2c3{o .} ==> Pr3c4 ≠ sw, Nr2c3 ≠ 1
N-single: Nr2c3 = 0
P-single: Pr3c4 = o
whip[1]: Pr3c4{o .} ==> Vr3c4 ≠ 1, Br3c4 ≠ w
B-single: Br3c4 = o
whip[1]: Br3c4{o .} ==> Pr4c4 ≠ nw, Nr3c4 ≠ 1
N-single: Nr3c4 = 0
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Hr4c3 ≠ 1, Br4c3 ≠ n, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ swn
whip[1]: Br4c3{sw .} ==> Pr4c3 ≠ se, Pr4c3 ≠ ew, Nr4c3 ≠ 3
P-single: Pr4c3 = sw
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ s, Br4c3 ≠ o, Br4c2 ≠ ns, Br3c2 ≠ o, Vr4c3 ≠ 0, Hr4c2 ≠ 0, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ sw
H-single: Hr4c2 = 1
V-single: Vr4c3 = 1
B-single: Br4c2 = ne
B-single: Br3c2 = s
vertical-line-r4{c2 c3} ==> Ir4c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
whip[1]: Hr4c2{1 .} ==> Pr4c2 ≠ sw
P-single: Pr4c2 = ew
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ e, Br3c1 ≠ o, Vr4c2 ≠ 1, Hr4c1 ≠ 0, Br4c1 ≠ se, Br4c1 ≠ wne
H-single: Hr4c1 = 1
V-single: Vr4c2 = 0
B-single: Br3c1 = s
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
same-colour-in-{r4 r5}c1 ==> Hr5c1 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
whip[1]: Hr4c1{1 .} ==> Pr4c1 ≠ o
P-single: Pr4c1 = se
whip[1]: Br3c1{s .} ==> Nr3c1 ≠ 0
N-single: Nr3c1 = 1
whip[1]: Hr5c1{0 .} ==> Pr5c1 ≠ ne, Pr5c1 ≠ se, Pr5c2 ≠ sw, Br4c1 ≠ swn, Br5c1 ≠ n, Br5c1 ≠ ne, Br5c1 ≠ swn
P-single: Pr5c2 = o
B-single: Br4c1 = nw
whip[1]: Pr5c2{o .} ==> Vr5c2 ≠ 1, Hr5c2 ≠ 1, Br5c1 ≠ e, Br5c1 ≠ esw
whip[1]: Br5c1{sw .} ==> Pr6c2 ≠ ne, Pr6c2 ≠ ns, Pr6c2 ≠ nw, Nr5c1 ≠ 1, Nr5c1 ≠ 3
whip[1]: Br4c1{nw .} ==> Nr4c1 ≠ 3, Nr4c1 ≠ 1, Pr5c1 ≠ o
N-single: Nr4c1 = 2
P-single: Pr5c1 = ns
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ o
B-single: Br5c1 = sw
whip[1]: Br5c1{sw .} ==> Nr5c1 ≠ 0, Pr6c2 ≠ se, Pr6c2 ≠ o, Pr6c1 ≠ o
N-single: Nr5c1 = 2
P-single: Pr6c1 = ne
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o, Br6c1 ≠ e, Br6c1 ≠ s, Br6c1 ≠ se
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Pr6c2{sw .} ==> Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ o, Br6c2 ≠ e, Br6c2 ≠ s
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 0
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr4c3{1 .} ==> Pr5c3 ≠ ew, Pr5c3 ≠ sw
whip[1]: Pr5c3{ns .} ==> Br5c3 ≠ s, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ o, Br5c3 ≠ e
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Br3c2{s .} ==> Nr3c2 ≠ 2, Nr3c2 ≠ 0
N-single: Nr3c2 = 1
whip[1]: Hr7c2{1 .} ==> Br7c2 ≠ o, Pr7c2 ≠ o, Pr7c2 ≠ ns, Pr7c2 ≠ nw, Pr7c2 ≠ sw, Pr7c3 ≠ o, Pr7c3 ≠ ne, Br6c2 ≠ n, Br6c2 ≠ w, Br6c2 ≠ ne, Br6c2 ≠ ew, Br7c2 ≠ w
whip[1]: Br7c2{nw .} ==> Nr7c2 ≠ 0
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 1
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ ne
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Pr7c2{ew .} ==> Br6c1 ≠ nes
whip[1]: Br6c1{ns .} ==> Nr6c1 ≠ 3
whip[1]: Vr6c2{1 .} ==> Pr6c2 ≠ ew, Pr7c2 ≠ se, Pr7c2 ≠ ew, Br6c1 ≠ n, Br6c1 ≠ ns, Br6c2 ≠ ns, Br6c2 ≠ nes
P-single: Pr7c2 = ne
P-single: Pr6c2 = sw
B-single: Br6c1 = ne
whip[1]: Pr7c2{ne .} ==> Vr7c2 ≠ 1, Hr7c1 ≠ 1, Br7c2 ≠ nw
B-single: Br7c2 = n
whip[1]: Br7c2{n .} ==> Pr8c2 ≠ nw, Nr7c2 ≠ 2
N-single: Nr7c2 = 1
P-single: Pr8c2 = o
whip[1]: Pr8c2{o .} ==> Hr8c1 ≠ 1, Br8c1 ≠ n
B-single: Br8c1 = o
whip[1]: Br8c1{o .} ==> Pr8c1 ≠ ne, Nr8c1 ≠ 1
N-single: Nr8c1 = 0
P-single: Pr8c1 = o
whip[1]: Pr8c1{o .} ==> Vr7c1 ≠ 1
whip[1]: Pr6c2{sw .} ==> Hr6c2 ≠ 1
whip[1]: Br6c1{ne .} ==> Nr6c1 ≠ 1, Pr7c1 ≠ se
N-single: Nr6c1 = 2
P-single: Pr7c1 = o
whip[1]: Br6c2{esw .} ==> Pr6c3 ≠ nw, Pr6c3 ≠ ew, Pr6c3 ≠ sw
whip[1]: Hr5c3{1 .} ==> Pr5c3 ≠ ns, Pr5c4 ≠ o, Pr5c4 ≠ se, Br4c3 ≠ w, Br5c3 ≠ w, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw
P-single: Pr5c3 = ne
B-single: Br4c3 = sw
whip[1]: Pr5c3{ne .} ==> Vr5c3 ≠ 1
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 1, Nr4c3 ≠ 0
N-single: Nr4c3 = 2
whip[1]: Br5c3{nes .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ ns
whip[1]: Pr6c3{se .} ==> Br6c3 ≠ ns, Br6c3 ≠ ew, Br6c3 ≠ nes, Br6c3 ≠ w
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ wne, Br5c4 ≠ o, Br5c4 ≠ s
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Vr6c4{0 .} ==> Br6c3 ≠ wne, Vr6c4 ≠ 1, Pr6c4 ≠ ns, Pr6c4 ≠ se, Pr6c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Br6c3 ≠ se
whip[1]: Br6c3{nw .} ==> Nr6c3 ≠ 3
whip[1]: Vr6c5{0 .} ==> Br6c5 ≠ esw, Vr6c5 ≠ 1, Pr6c5 ≠ ns, Pr6c5 ≠ se, Pr6c5 ≠ sw, Pr7c5 ≠ ne, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Br6c5 ≠ nw
whip[1]: Br6c5{se .} ==> Nr6c5 ≠ 3
whip[1]: Hr6c4{0 .} ==> Br5c4 ≠ nes, Hr6c4 ≠ 1, Pr6c4 ≠ ne, Pr6c4 ≠ ew, Pr6c5 ≠ nw, Pr6c5 ≠ ew, Br5c4 ≠ sw
whip[1]: Br5c4{ne .} ==> Nr5c4 ≠ 3
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ se, Br5c5 ≠ ew
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 2
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ ne, Br5c3 ≠ ns
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 2
whip[1]: Hr7c4{0 .} ==> Br7c4 ≠ swn, Hr7c4 ≠ 1, Pr7c4 ≠ se, Pr7c4 ≠ ew, Pr7c5 ≠ ew, Pr7c5 ≠ sw, Br7c4 ≠ ne
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Pr7c5{se .} ==> Br7c5 ≠ n, Br7c5 ≠ w
whip[1]: Br7c5{nw .} ==> Nr7c5 ≠ 1
whip[1]: Pr7c4{sw .} ==> Br7c3 ≠ n, Br7c3 ≠ e
whip[1]: Br7c3{ne .} ==> Nr7c3 ≠ 1
whip[1]: Vr7c1{0 .} ==> Br7c0 ≠ e
B-single: Br7c0 = o
whip[1]: Vr9c10{0 .} ==> Br9c9 ≠ e, Vr9c10 ≠ 1, Pr9c10 ≠ se, Pr10c10 ≠ ne
P-single: Pr10c10 = o
P-single: Pr9c10 = o
B-single: Br9c9 = o
whip[1]: Pr10c10{o .} ==> Hr10c10 ≠ 1, Br10c10 ≠ n
B-single: Br10c10 = o
whip[1]: Br10c10{o .} ==> Pr10c11 ≠ nw, Nr10c10 ≠ 1
N-single: Nr10c10 = 0
P-single: Pr10c11 = o
whip[1]: Pr10c11{o .} ==> Vr9c11 ≠ 1
whip[1]: Pr9c10{o .} ==> Hr9c10 ≠ 1, Br8c10 ≠ s
B-single: Br8c10 = o
whip[1]: Br8c10{o .} ==> Pr9c11 ≠ sw, Nr8c10 ≠ 1
N-single: Nr8c10 = 0
P-single: Pr9c11 = o
whip[1]: Br9c9{o .} ==> Nr9c9 ≠ 1
N-single: Nr9c9 = 0
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr10c2{0 .} ==> Br10c1 ≠ e, Vr10c2 ≠ 1, Pr11c2 ≠ ne, Pr10c2 ≠ se
P-single: Pr10c2 = o
P-single: Pr11c2 = o
B-single: Br10c1 = o
whip[1]: Pr10c2{o .} ==> Hr10c2 ≠ 1, Br9c2 ≠ s
B-single: Br9c2 = o
whip[1]: Br9c2{o .} ==> Pr10c3 ≠ sw, Nr9c2 ≠ 1
N-single: Nr9c2 = 0
P-single: Pr10c3 = o
whip[1]: Pr10c3{o .} ==> Vr10c3 ≠ 1, Br10c3 ≠ ew
B-single: Br10c3 = e
whip[1]: Br10c3{e .} ==> Nr10c3 ≠ 2, Pr11c3 ≠ nw
N-single: Nr10c3 = 1
P-single: Pr11c3 = o
whip[1]: Pr11c3{o .} ==> Hr11c2 ≠ 1, Br11c2 ≠ n
B-single: Br11c2 = o
whip[1]: Br10c1{o .} ==> Nr10c1 ≠ 1
N-single: Nr10c1 = 0
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
Entering_relation_bivalue_with_<Fact-198405>
Entering_level_BC2_with_<Fact-198512>
Entering_level_W2_with_<Fact-198898>
Entering_level_BC3_with_<Fact-199283>
Entering_level_W3_with_<Fact-200837>
Entering_level_BC4_with_<Fact-202390>
Entering_level_W4_with_<Fact-207736>
Entering_level_BC5_with_<Fact-213081>
Entering_level_W5_with_<Fact-230507>
GRID 0 NOT SOLVED. 17 VALUES MISSING.
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

init-time = 0.66s, solve-time = 47.53s, total-time = 48.19s
nb-facts=<Fact-247934>
Quasi-Loop max length = 0
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


It is now easy to finish the puzzle manually:

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

Loading pre-computed background
start init-inner-N-and-B-candidates 0.609152793884277
start solution 0.623103857040405
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
w[1]-3-in-r7c9-closed-sw-corner ==> Pr7c10 ≠ sw, Pr7c10 ≠ ne, Pr7c10 ≠ o
w[1]-3-in-r7c9-closed-se-corner ==> Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ o
w[1]-3-in-r1c6-closed-ne-corner ==> Pr2c6 ≠ sw, Pr2c6 ≠ ne, Pr2c6 ≠ o
w[1]-3-in-r1c6-closed-nw-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ o
entering level Loop with <Fact-93236>
entering level Col with <Fact-93858>
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
no-vertical-line-r9{c9 c10} ==> Ir9c9 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-vertical-line-r8{c8 c9} ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
vertical-line-r7{c8 c9} ==> Ir7c9 = in
no-horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r6 r7}c10 ==> Ir7c10 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = out
no-vertical-line-r4{c10 c11} ==> Ir4c10 = out
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir5c10 = out
no-vertical-line-r7{c0 c1} ==> Ir7c1 = out
no-vertical-line-r7{c1 c2} ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
no-horizontal-line-{r7 r8}c1 ==> Ir8c1 = out
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
no-vertical-line-r2{c1 c2} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
no-horizontal-line-{r10 r11}c7 ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-vertical-line-r10{c7 c8} ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-horizontal-line-{r10 r11}c2 ==> Ir10c2 = out
no-vertical-line-r10{c1 c2} ==> Ir10c1 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
no-horizontal-line-{r0 r1}c9 ==> Ir1c9 = out
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
no-vertical-line-r1{c9 c10} ==> Ir1c10 = out
no-horizontal-line-{r1 r2}c9 ==> Ir2c9 = out
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
vertical-line-r1{c6 c7} ==> Ir1c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
same-colour-in-{r0 r1}c3 ==> Hr1c3 = 0
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
same-colour-in-r1{c10 c11} ==> Vr1c11 = 0
same-colour-in-{r0 r1}c10 ==> Hr1c10 = 0
same-colour-in-{r0 r1}c8 ==> Hr1c8 = 0
same-colour-in-{r10 r11}c3 ==> Hr11c3 = 0
same-colour-in-{r10 r11}c1 ==> Hr11c1 = 0
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
same-colour-in-r9{c7 c8} ==> Vr9c8 = 0
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
same-colour-in-{r10 r11}c6 ==> Hr11c6 = 0
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
same-colour-in-r8{c0 c1} ==> Vr8c1 = 0
same-colour-in-r6{c0 c1} ==> Vr6c1 = 0
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1
same-colour-in-r3{c10 c11} ==> Vr3c11 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
same-colour-in-r10{c10 c11} ==> Vr10c11 = 0
same-colour-in-{r10 r11}c10 ==> Hr11c10 = 0
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
3-in-r7c9-no-U-turn-from-south ==> Hr9c9 = O
same-colour-in-r7{c10 c11} ==> Vr7c11 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1

XTD-LOOP[12]: Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c9-Vr7c9-Hr7c8- ==> Vr6c8-Hr6c8-Vr5c9 = 0
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = in
same-colour-in-r8{c10 c11} ==> Vr8c11 = 0
Starting_init_links_with_<Fact-94313>
1240 candidates, 9659 csp-links and 39589 links. Density = 5.15%
starting non trivial part of solution
Entering_level_W1_with_<Fact-192814>
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ nes, Br8c11 ≠ w, Pr8c11 ≠ ns, Pr8c11 ≠ sw, Pr9c11 ≠ ns, Pr9c11 ≠ nw, Br8c10 ≠ e, Br8c10 ≠ ne, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ wne
B-single: Br8c11 = o
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Vr5c9{0 .} ==> Br5c9 ≠ wne, Pr5c9 ≠ ns, Pr5c9 ≠ se, Pr5c9 ≠ sw, Pr6c9 ≠ ne, Pr6c9 ≠ ns, Pr6c9 ≠ nw, Br5c8 ≠ e, Br5c8 ≠ ne, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ esw, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c9 ≠ w, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn
whip[1]: Hr6c8{0 .} ==> Br6c8 ≠ nes, Pr6c8 ≠ ne, Pr6c8 ≠ se, Pr6c8 ≠ ew, Pr6c9 ≠ ew, Pr6c9 ≠ sw, Br5c8 ≠ s, Br5c8 ≠ ns, Br5c8 ≠ sw, Br5c8 ≠ swn, Br6c8 ≠ n, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ swn, Br6c8 ≠ wne
whip[1]: Br5c8{nw .} ==> Nr5c8 ≠ 3
whip[1]: Vr6c8{0 .} ==> Br6c8 ≠ esw, Pr6c8 ≠ ns, Pr6c8 ≠ sw, Pr7c8 ≠ ne, Pr7c8 ≠ ns, Pr7c8 ≠ nw, Br6c7 ≠ e, Br6c7 ≠ ne, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ esw, Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ w, Br6c8 ≠ ew, Br6c8 ≠ sw
whip[1]: Br6c8{se .} ==> Nr6c8 ≠ 3
whip[1]: Vr6c11{1 .} ==> Br6c10 ≠ swn, Br6c11 ≠ o, Br6c10 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ nw, Pr7c11 ≠ o, Pr7c11 ≠ sw, Br6c10 ≠ n, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ sw
B-single: Br6c11 = w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Pr7c11{nw .} ==> Br7c10 ≠ w, Br7c10 ≠ nes, Br7c10 ≠ o
whip[1]: Br7c10{esw .} ==> Nr7c10 ≠ 0
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ esw, Br5c10 ≠ nes, Br5c10 ≠ o, Br5c10 ≠ n, Br5c10 ≠ w
whip[1]: Br5c10{wne .} ==> Nr5c10 ≠ 0
whip[1]: Vr7c11{0 .} ==> Br7c10 ≠ esw, Br7c11 ≠ w, Pr7c11 ≠ ns, Pr8c11 ≠ nw, Br7c10 ≠ se
P-single: Pr8c11 = o
P-single: Pr7c11 = nw
B-single: Br7c11 = o
whip[1]: Pr8c11{o .} ==> Br8c10 ≠ n, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ swn
whip[1]: Br8c10{sw .} ==> Pr8c10 ≠ ne, Pr8c10 ≠ se, Pr8c10 ≠ ew, Nr8c10 ≠ 3
whip[1]: Pr7c11{nw .} ==> Br6c10 ≠ e, Br6c10 ≠ ne, Br6c10 ≠ ew, Br6c10 ≠ wne
whip[1]: Br6c10{nes .} ==> Pr6c10 ≠ se, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Nr6c10 ≠ 1
whip[1]: Pr7c10{ew .} ==> Vr6c10 ≠ 1, Br6c10 ≠ esw, Br7c9 ≠ wne, Br7c9 ≠ nes
whip[1]: Br7c9{swn .} ==> Pr7c9 ≠ ne, Pr7c9 ≠ ew, Pr8c9 ≠ o, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c9 ≠ sw, Pr8c10 ≠ o, Pr8c10 ≠ ns
P-single: Pr8c9 = ne
whip[1]: Pr8c9{ne .} ==> Br8c9 ≠ o, Br7c8 ≠ n, Br7c8 ≠ o, Vr8c9 ≠ 1, Hr8c8 ≠ 1, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ nes, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Br8c9{nes .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ ns, Pr9c9 ≠ nw, Nr8c9 ≠ 0
whip[1]: Br7c8{wne .} ==> Pr8c8 ≠ ne, Pr8c8 ≠ se, Pr8c8 ≠ ew, Nr7c8 ≠ 0
whip[1]: Pr7c9{sw .} ==> Hr7c9 ≠ 1, Br6c8 ≠ se, Br7c9 ≠ swn, Br6c8 ≠ o
B-single: Br7c9 = esw
whip[1]: Br7c9{esw .} ==> Pr8c10 ≠ sw, Pr7c10 ≠ ew
P-single: Pr7c10 = se
P-single: Pr8c10 = nw
whip[1]: Pr7c10{se .} ==> Br7c10 ≠ n
B-single: Br7c10 = nw
whip[1]: Br7c10{nw .} ==> Nr7c10 ≠ 3, Nr7c10 ≠ 1
N-single: Nr7c10 = 2
whip[1]: Pr8c10{nw .} ==> Br8c9 ≠ ne, Br8c9 ≠ nes, Br8c10 ≠ w, Br8c10 ≠ sw
whip[1]: Br8c10{s .} ==> Pr9c10 ≠ ne, Pr9c10 ≠ ns, Nr8c10 ≠ 2, Pr9c10 ≠ nw
whip[1]: Br8c9{ns .} ==> Nr8c9 ≠ 3
whip[1]: Br6c8{s .} ==> Nr6c8 ≠ 0, Nr6c8 ≠ 2
N-single: Nr6c8 = 1
whip[1]: Br6c10{nes .} ==> Pr6c10 ≠ ns, Pr6c10 ≠ sw
whip[1]: Hr9c9{0 .} ==> Br9c9 ≠ nes, Pr9c9 ≠ se, Pr9c9 ≠ ew, Pr9c10 ≠ ew, Pr9c10 ≠ sw, Br8c9 ≠ ns, Br9c9 ≠ n, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ swn, Br9c9 ≠ wne
B-single: Br8c9 = n
whip[1]: Br8c9{n .} ==> Nr8c9 ≠ 2
N-single: Nr8c9 = 1
whip[1]: Pr9c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ esw, Br9c8 ≠ swn, Br9c8 ≠ n, Br9c8 ≠ e, Br9c8 ≠ ns
whip[1]: Vr9c9{0 .} ==> Br9c9 ≠ esw, Pr9c9 ≠ sw, Pr10c9 ≠ ne, Pr10c9 ≠ ns, Pr10c9 ≠ nw, Br9c8 ≠ ne, Br9c8 ≠ wne, Br9c8 ≠ nes, Br9c9 ≠ w, Br9c9 ≠ ew, Br9c9 ≠ sw
P-single: Pr9c9 = o
whip[1]: Pr9c9{o .} ==> Hr9c8 ≠ 1
whip[1]: Br9c9{se .} ==> Nr9c9 ≠ 3
whip[1]: Br9c8{sw .} ==> Pr9c8 ≠ ne, Pr9c8 ≠ se, Pr9c8 ≠ ew, Nr9c8 ≠ 3
whip[1]: Hr11c10{0 .} ==> Br10c10 ≠ nes, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Br10c10 ≠ se, Br10c10 ≠ esw
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Br10c10{nw .} ==> Pr10c11 ≠ ns, Pr10c11 ≠ sw, Nr10c10 ≠ 3
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c9 ≠ e, Br10c9 ≠ s
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Hr5c9{1 .} ==> Br5c9 ≠ se, Br4c9 ≠ o, Br5c9 ≠ o, Pr5c9 ≠ o, Pr5c9 ≠ nw, Pr5c10 ≠ o, Pr5c10 ≠ ne, Pr5c10 ≠ ns, Pr5c10 ≠ se, Br4c9 ≠ n, Br4c9 ≠ e, Br4c9 ≠ w, Br4c9 ≠ ne, Br4c9 ≠ nw, Br4c9 ≠ ew, Br4c9 ≠ wne, Br5c9 ≠ e, Br5c9 ≠ s
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Br4c9{nes .} ==> Nr4c9 ≠ 0
whip[1]: Pr5c10{sw .} ==> Br5c10 ≠ swn, Br5c10 ≠ wne
whip[1]: Br5c10{sw .} ==> Nr5c10 ≠ 3
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ esw, Br4c8 ≠ nes, Br4c8 ≠ o, Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 0
whip[1]: Vr3c11{0 .} ==> Br3c10 ≠ nes, Br3c11 ≠ w, Pr3c11 ≠ ns, Pr3c11 ≠ sw, Pr4c11 ≠ ns, Pr4c11 ≠ nw, Br3c10 ≠ e, Br3c10 ≠ ne, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw, Br3c10 ≠ wne
B-single: Br3c11 = o
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ ew, Br2c10 ≠ sw, Br2c10 ≠ swn, Br2c10 ≠ wne, Br2c10 ≠ e, Br2c10 ≠ s
whip[1]: Vr5c10{1 .} ==> Br5c10 ≠ ns, Pr5c10 ≠ nw, Pr5c10 ≠ ew, Pr6c10 ≠ o, Pr6c10 ≠ ew, Br5c9 ≠ n, Br5c9 ≠ ns, Br5c10 ≠ e, Br5c10 ≠ s, Br5c10 ≠ ne
P-single: Pr5c10 = sw
whip[1]: Pr5c10{sw .} ==> Vr4c10 ≠ 1, Hr5c10 ≠ 1, Br4c9 ≠ se, Br4c9 ≠ esw, Br4c9 ≠ nes
whip[1]: Br4c9{swn .} ==> Pr4c10 ≠ ns, Pr4c10 ≠ se, Pr4c10 ≠ sw
whip[1]: Br5c10{sw .} ==> Pr5c11 ≠ nw, Pr5c11 ≠ sw, Nr5c10 ≠ 1
N-single: Nr5c10 = 2
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 1
whip[1]: Hr6c10{1 .} ==> Br6c10 ≠ se, Pr6c11 ≠ ns, Pr6c10 ≠ nw, Br5c10 ≠ ew
P-single: Pr5c11 = o
P-single: Pr6c10 = ne
P-single: Pr6c11 = sw
B-single: Br5c10 = sw
B-single: Br6c10 = nes
whip[1]: Pr5c11{o .} ==> Vr4c11 ≠ 1
whip[1]: Pr6c10{ne .} ==> Hr6c9 ≠ 1, Br5c9 ≠ nes
B-single: Br5c9 = ne
whip[1]: Br5c9{ne .} ==> Nr5c9 ≠ 3, Pr6c9 ≠ se
N-single: Nr5c9 = 2
P-single: Pr6c9 = o
w[1]-1-in-r6c8-symmetric-ne-corner ==> Pr7c8 ≠ sw, Pr7c8 ≠ o
whip[1]: Pr6c9{o .} ==> Vr6c9 ≠ 1, Br6c8 ≠ e
B-single: Br6c8 = s
whip[1]: Br6c8{s .} ==> Pr7c9 ≠ ns
P-single: Pr7c9 = sw
whip[1]: Pr7c9{sw .} ==> Br7c8 ≠ e, Br7c8 ≠ ew
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 1
whip[1]: Pr7c8{ew .} ==> Br7c7 ≠ sw, Br7c7 ≠ wne, Br7c7 ≠ nes, Br7c7 ≠ o, Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ne
whip[1]: Br7c7{swn .} ==> Nr7c7 ≠ 0
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 2
N-single: Nr6c10 = 3
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Vr6c1{0 .} ==> Br6c1 ≠ wne, Br6c0 ≠ e, Pr6c1 ≠ ns, Pr6c1 ≠ se, Pr7c1 ≠ ne, Pr7c1 ≠ ns, Br6c1 ≠ w, Br6c1 ≠ nw, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn
B-single: Br6c0 = o
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Vr8c1{0 .} ==> Br8c1 ≠ wne, Br8c0 ≠ e, Pr8c1 ≠ ns, Pr8c1 ≠ se, Pr9c1 ≠ ne, Pr9c1 ≠ ns, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn
B-single: Br8c0 = o
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ ew, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ nes, Br9c1 ≠ n, Br9c1 ≠ w
whip[1]: Hr1c1{0 .} ==> Br1c1 ≠ wne, Br0c1 ≠ s, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Br1c1 ≠ nw, Br1c1 ≠ swn
P-single: Pr1c1 = o
B-single: Br0c1 = o
whip[1]: Br1c1{se .} ==> Pr2c1 ≠ ne, Pr2c1 ≠ ns, Nr1c1 ≠ 3
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c2 ≠ n, Br1c2 ≠ w
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr3c1{0 .} ==> Br3c1 ≠ wne, Br3c0 ≠ e, Pr3c1 ≠ ns, Pr3c1 ≠ se, Pr4c1 ≠ ne, Pr4c1 ≠ ns, Br3c1 ≠ w, Br3c1 ≠ nw, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn
B-single: Br3c0 = o
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Hr11c6{0 .} ==> Br10c6 ≠ nes, Br11c6 ≠ n, Pr11c6 ≠ ne, Pr11c6 ≠ ew, Pr11c7 ≠ nw, Pr11c7 ≠ ew, Br10c6 ≠ s, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn
P-single: Pr11c6 = nw
B-single: Br11c6 = o
whip[1]: Pr11c6{nw .} ==> Br10c6 ≠ e, Br10c6 ≠ n, Br10c6 ≠ o, Vr10c6 ≠ 0, Hr11c5 ≠ 0, Br11c5 ≠ o, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c6 ≠ ne
H-single: Hr11c5 = 1
V-single: Vr10c6 = 1
B-single: Br10c5 = se
B-single: Br11c5 = n
vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
no-vertical-line-r9{c5 c6} ==> Ir9c6 = in
no-horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
different-colours-in-r9{c6 c7} ==> Hr9c7 = 1
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
whip[1]: Hr11c5{1 .} ==> Pr11c5 ≠ nw
P-single: Pr11c5 = ew
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ ne, Br10c4 ≠ w, Br10c4 ≠ e, Br10c4 ≠ n, Br10c4 ≠ o, Vr10c5 ≠ 1, Hr11c4 ≠ 0, Br11c4 ≠ o, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ esw, Br10c4 ≠ wne, Br10c4 ≠ nes
H-single: Hr11c4 = 1
V-single: Vr10c5 = 0
B-single: Br11c4 = n
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
same-colour-in-{r9 r10}c4 ==> Hr10c4 = 0
different-colours-in-r10{c3 c4} ==> Hr10c4 = 1
whip[1]: Hr11c4{1 .} ==> Pr11c4 ≠ o, Pr11c4 ≠ nw
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ nw, Br10c3 ≠ se, Br10c3 ≠ esw, Br10c3 ≠ nes, Br10c3 ≠ o, Br10c3 ≠ n, Br10c3 ≠ w
whip[1]: Br10c3{wne .} ==> Nr10c3 ≠ 0
whip[1]: Hr10c4{0 .} ==> Pr10c4 ≠ ne, Pr10c4 ≠ se, Pr10c4 ≠ ew, Pr10c5 ≠ nw, Br9c4 ≠ s, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ nes, Br10c4 ≠ ns, Br10c4 ≠ swn
P-single: Pr10c5 = o
whip[1]: Pr10c5{o .} ==> Vr9c5 ≠ 1, Hr10c5 ≠ 1, Br9c4 ≠ e, Br9c4 ≠ ne, Br9c4 ≠ ew, Br9c4 ≠ wne
whip[1]: Br9c4{nw .} ==> Pr9c5 ≠ ns, Pr9c5 ≠ se, Pr9c5 ≠ sw, Nr9c4 ≠ 3
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 0, Nr10c4 ≠ 3
whip[1]: Vr10c4{1 .} ==> Pr11c4 ≠ ew, Pr10c4 ≠ o, Pr10c4 ≠ nw, Br10c3 ≠ s, Br10c3 ≠ ns, Br10c3 ≠ sw, Br10c3 ≠ swn, Br10c4 ≠ s
P-single: Pr11c4 = ne
B-single: Br10c4 = sw
w[1]-1-in-r9c3-asymmetric-se-corner ==> Pr9c3 ≠ sw, Pr9c3 ≠ ew, Pr9c3 ≠ ns, Pr9c3 ≠ ne
whip[1]: Pr11c4{ne .} ==> Br11c3 ≠ n
B-single: Br11c3 = o
whip[1]: Br11c3{o .} ==> Pr11c3 ≠ ne, Pr11c3 ≠ ew
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 1
N-single: Nr10c4 = 2
whip[1]: Pr9c3{se .} ==> Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br9c2 ≠ ne, Br9c2 ≠ wne, Br9c2 ≠ nes, Br8c2 ≠ e, Br8c2 ≠ s, Br9c3 ≠ n, Br9c3 ≠ w
whip[1]: Br9c3{s .} ==> Hr9c3 ≠ 1, Vr9c3 ≠ 1, Pr10c3 ≠ ne, Pr10c3 ≠ ns, Pr9c3 ≠ se, Pr9c4 ≠ nw, Pr9c4 ≠ ew, Pr9c4 ≠ sw, Pr10c3 ≠ nw
V-single: Vr9c3 = 0
no-vertical-line-r9{c2 c3} ==> Ir9c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = out
no-vertical-line-r8{c2 c3} ==> Ir8c2 = out
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
same-colour-in-r7{c2 c3} ==> Vr7c3 = 0
different-colours-in-r8{c4 c5} ==> Hr8c5 = 1
different-colours-in-{r8 r9}c4 ==> Hr9c4 = 1
same-colour-in-{r8 r9}c2 ==> Hr9c2 = 0
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
same-colour-in-{r9 r10}c3 ==> Hr10c3 = 0
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1

XTD-LOOP[12]: Vr8c5-Hr9c4-Vr9c4-Vr10c4-Hr11c4-Hr11c5-Vr10c6-Hr10c6-Vr9c7- ==> Hr9c6-Vr8c6-Hr8c5 = 0
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
no-vertical-line-r7{c5 c6} ==> Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
same-colour-in-r6{c6 c7} ==> Vr6c7 = 0
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
whip[1]: Vr9c3{0 .} ==> Br9c2 ≠ e, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ esw
whip[1]: Vr7c3{0 .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ se, Pr7c3 ≠ sw, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ nw, Br7c2 ≠ e, Br7c2 ≠ ne, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ esw, Br7c2 ≠ wne, Br7c2 ≠ nes, Br7c3 ≠ w, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ swn, Br7c3 ≠ wne
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ o, Br8c4 ≠ o, Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ew, Pr9c5 ≠ o, Pr9c5 ≠ ew, Br8c4 ≠ n, Br8c4 ≠ s, Br8c4 ≠ w, Br8c4 ≠ ns, Br8c4 ≠ nw, Br8c4 ≠ sw, Br8c4 ≠ swn, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ s, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ nes
whip[1]: Br8c5{wne .} ==> Nr8c5 ≠ 0
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn
whip[1]: Hr9c4{1 .} ==> Br9c4 ≠ o, Pr9c4 ≠ o, Pr9c4 ≠ ns, Pr9c5 ≠ ne, Br8c4 ≠ e, Br8c4 ≠ ne, Br8c4 ≠ ew, Br8c4 ≠ wne, Br9c4 ≠ w
P-single: Pr9c5 = nw
whip[1]: Pr9c5{nw .} ==> Hr9c5 ≠ 1, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn
whip[1]: Br8c5{wne .} ==> Pr9c6 ≠ nw, Pr9c6 ≠ ew, Pr9c6 ≠ sw
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 0
whip[1]: Br8c4{nes .} ==> Pr8c4 ≠ se, Nr8c4 ≠ 1
whip[1]: Hr9c2{0 .} ==> Pr9c2 ≠ ne, Pr9c2 ≠ se, Pr9c2 ≠ ew, Pr9c3 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ esw, Br8c2 ≠ nes, Br9c2 ≠ n, Br9c2 ≠ ns, Br9c2 ≠ nw, Br9c2 ≠ swn
P-single: Pr9c3 = o
whip[1]: Pr9c3{o .} ==> Vr8c3 ≠ 1
whip[1]: Br9c2{sw .} ==> Nr9c2 ≠ 3
whip[1]: Br8c2{nw .} ==> Pr8c3 ≠ se, Pr8c3 ≠ sw, Nr8c2 ≠ 3
whip[1]: Vr8c2{0 .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ se, Pr8c2 ≠ sw, Pr9c2 ≠ ns, Pr9c2 ≠ nw, Br8c1 ≠ e, Br8c1 ≠ ne, Br8c1 ≠ se, Br8c1 ≠ nes, Br8c2 ≠ w, Br8c2 ≠ nw
whip[1]: Br8c2{n .} ==> Nr8c2 ≠ 2
whip[1]: Br8c1{ns .} ==> Nr8c1 ≠ 3
whip[1]: Pr9c2{sw .} ==> Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ swn, Br9c1 ≠ e
whip[1]: Br9c1{wne .} ==> Pr10c1 ≠ ne, Pr10c2 ≠ nw, Nr9c1 ≠ 2
whip[1]: Pr10c1{se .} ==> Br10c1 ≠ ne, Br10c1 ≠ n
whip[1]: Br10c1{swn .} ==> Pr10c2 ≠ sw
whip[1]: Hr8c2{0 .} ==> Pr8c2 ≠ ne, Pr8c2 ≠ ew, Pr8c3 ≠ ew, Br7c2 ≠ s, Br7c2 ≠ ns, Br7c2 ≠ sw, Br7c2 ≠ swn, Br8c2 ≠ n
P-single: Pr8c3 = o
B-single: Br8c2 = o
whip[1]: Pr8c3{o .} ==> Hr8c3 ≠ 1, Br7c3 ≠ s, Br7c3 ≠ ns, Br7c3 ≠ se, Br7c3 ≠ nes
whip[1]: Br7c3{ne .} ==> Pr8c4 ≠ nw, Nr7c3 ≠ 3, Pr8c4 ≠ ew, Pr8c4 ≠ sw
whip[1]: Pr8c4{ns .} ==> Br7c4 ≠ s, Br7c4 ≠ ns
whip[1]: Br8c2{o .} ==> Nr8c2 ≠ 1
N-single: Nr8c2 = 0
whip[1]: Br7c2{nw .} ==> Nr7c2 ≠ 3
whip[1]: Hr10c3{0 .} ==> Pr10c3 ≠ se, Pr10c3 ≠ ew, Pr10c4 ≠ sw, Br9c3 ≠ s, Br10c3 ≠ ne, Br10c3 ≠ wne
P-single: Pr10c4 = ns
B-single: Br9c3 = e
w[1]-1-in-r9c3-symmetric-sw-corner ==> Pr9c4 ≠ ne
P-single: Pr9c4 = se
whip[1]: Pr10c4{ns .} ==> Br9c4 ≠ n
B-single: Br9c4 = nw
whip[1]: Br9c4{nw .} ==> Nr9c4 ≠ 1
N-single: Nr9c4 = 2
whip[1]: Pr9c4{se .} ==> Vr8c4 ≠ 1, Br8c4 ≠ esw
whip[1]: Br8c4{nes .} ==> Pr8c4 ≠ ns
whip[1]: Pr8c4{ne .} ==> Br7c4 ≠ w, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ wne
whip[1]: Br10c3{ew .} ==> Nr10c3 ≠ 3
whip[1]: Hr9c6{0 .} ==> Pr9c6 ≠ ne, Pr9c6 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ ew, Pr9c7 ≠ sw, Br8c6 ≠ s, Br9c6 ≠ n, Br9c6 ≠ ne, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ wne, Br9c6 ≠ nes
whip[1]: Br8c6{w .} ==> Pr8c6 ≠ se, Pr8c7 ≠ sw
whip[1]: Vr8c6{0 .} ==> Pr8c6 ≠ ns, Pr8c6 ≠ sw, Pr9c6 ≠ ns, Br8c5 ≠ ew, Br8c5 ≠ wne, Br8c6 ≠ w
P-single: Pr9c6 = o
w[1]-1-in-r8c6-symmetric-sw-corner ==> Pr8c7 ≠ ne, Pr8c7 ≠ o
whip[1]: Pr9c6{o .} ==> Vr9c6 ≠ 1, Br9c6 ≠ w, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw
whip[1]: Br9c6{se .} ==> Pr10c6 ≠ ns, Pr10c6 ≠ nw, Nr9c6 ≠ 3
whip[1]: Pr10c6{ew .} ==> Br10c6 ≠ ew, Br9c6 ≠ o, Br9c6 ≠ e, Br10c6 ≠ w
whip[1]: Br10c6{wne .} ==> Pr10c6 ≠ ew, Pr10c7 ≠ o, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Pr10c7 ≠ se, Nr10c6 ≠ 0, Nr10c6 ≠ 1
P-single: Pr10c6 = se
whip[1]: Pr10c7{sw .} ==> Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn
whip[1]: Br9c6{se .} ==> Nr9c6 ≠ 0
whip[1]: Pr8c7{ew .} ==> Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c7 ≠ n, Br7c7 ≠ e
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 1, Nr7c7 ≠ 3
N-single: Nr7c7 = 2
whip[1]: Pr8c8{sw .} ==> Br7c7 ≠ nw, Br8c7 ≠ sw, Br8c7 ≠ o, Br8c7 ≠ s, Br8c7 ≠ w
whip[1]: Br8c7{nes .} ==> Nr8c7 ≠ 0
whip[1]: Br8c5{nw .} ==> Nr8c5 ≠ 3
whip[1]: Hr8c5{0 .} ==> Pr8c5 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ ew, Br7c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ se, Br7c5 ≠ nes, Br8c5 ≠ nw
B-single: Br8c5 = w
whip[1]: Br8c5{w .} ==> Nr8c5 ≠ 2
N-single: Nr8c5 = 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ o, Br7c4 ≠ n
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 0
whip[1]: Vr8c7{1 .} ==> Pr8c7 ≠ nw, Pr8c7 ≠ ew, Pr9c7 ≠ o, Pr9c7 ≠ se, Br8c6 ≠ n, Br8c7 ≠ n, Br8c7 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ se, Br8c7 ≠ nes
B-single: Br8c6 = e
w[1]-1-in-r8c6-asymmetric-se-corner ==> Pr8c6 ≠ ne
P-single: Pr8c6 = o
whip[1]: Br8c6{e .} ==> Hr8c6 ≠ 1
whip[1]: Pr8c6{o .} ==> Vr7c6 ≠ 1, Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ew, Br7c5 ≠ wne
whip[1]: Br7c5{nw .} ==> Pr7c6 ≠ ns, Pr7c6 ≠ se, Pr7c6 ≠ sw, Nr7c5 ≠ 3
whip[1]: Br8c7{wne .} ==> Nr8c7 ≠ 1
whip[1]: Pr9c7{ns .} ==> Br9c7 ≠ s, Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ wne, Br9c7 ≠ o, Br9c7 ≠ e
whip[1]: Br9c7{nes .} ==> Nr9c7 ≠ 0
whip[1]: Vr6c7{0 .} ==> Pr6c7 ≠ ns, Pr6c7 ≠ se, Pr6c7 ≠ sw, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ nw, Br6c6 ≠ e, Br6c6 ≠ ne, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ esw, Br6c6 ≠ wne, Br6c6 ≠ nes, Br6c7 ≠ w, Br6c7 ≠ nw, Br6c7 ≠ sw, Br6c7 ≠ swn
whip[1]: Br6c7{ns .} ==> Nr6c7 ≠ 3
whip[1]: Hr6c6{0 .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ se, Pr6c6 ≠ ew, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Br5c6 ≠ s, Br5c6 ≠ ns, Br5c6 ≠ se, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ nes, Br6c6 ≠ n, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ swn
whip[1]: Br6c6{sw .} ==> Nr6c6 ≠ 3
whip[1]: Vr7c8{1 .} ==> Pr7c8 ≠ ew, Pr8c8 ≠ sw, Br7c7 ≠ ns, Br7c8 ≠ ne
P-single: Pr7c8 = se
B-single: Br7c8 = wne
whip[1]: Pr7c8{se .} ==> Br6c7 ≠ s, Br6c7 ≠ ns
whip[1]: Br6c7{n .} ==> Pr7c7 ≠ ew, Nr6c7 ≠ 2
whip[1]: Br7c8{wne .} ==> Nr7c8 ≠ 2
N-single: Nr7c8 = 3
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ wne
whip[1]: Hr8c7{1 .} ==> Pr8c7 ≠ ns, Pr8c8 ≠ ns, Br7c7 ≠ ew, Br8c7 ≠ ew, Br8c7 ≠ esw
P-single: Pr7c7 = o
P-single: Pr8c8 = nw
P-single: Pr8c7 = se
B-single: Br7c7 = se
whip[1]: Pr7c7{o .} ==> Vr7c7 ≠ 1, Hr7c6 ≠ 1, Br6c6 ≠ s, Br6c6 ≠ sw
whip[1]: Br6c6{w .} ==> Pr7c6 ≠ ne, Nr6c6 ≠ 2, Pr7c6 ≠ ew
whip[1]: Pr7c6{nw .} ==> Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ e, Br6c5 ≠ s
whip[1]: Pr8c8{nw .} ==> Vr8c8 ≠ 1
whip[1]: Br8c7{swn .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ nw
whip[1]: Pr9c8{sw .} ==> Br9c7 ≠ ew, Br9c7 ≠ n, Br9c7 ≠ ns
whip[1]: Br9c7{nes .} ==> Pr10c8 ≠ ew, Pr10c8 ≠ sw
whip[1]: Vr9c7{1 .} ==> Pr9c7 ≠ ne, Pr10c7 ≠ ew, Pr10c7 ≠ sw, Br9c6 ≠ s, Br9c7 ≠ ne, Br9c7 ≠ nes
P-single: Pr10c7 = nw
P-single: Pr9c7 = ns
B-single: Br9c7 = w
B-single: Br9c6 = se
whip[1]: Pr10c7{nw .} ==> Vr10c7 ≠ 1, Hr10c7 ≠ 1, Br10c6 ≠ wne
B-single: Br10c6 = nw
whip[1]: Br10c6{nw .} ==> Nr10c6 ≠ 3, Pr11c7 ≠ ne
N-single: Nr10c6 = 2
P-single: Pr11c7 = o
whip[1]: Pr11c7{o .} ==> Hr11c7 ≠ 1, Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Br11c7{o .} ==> Pr11c8 ≠ nw, Pr11c8 ≠ ew
whip[1]: Pr11c8{ne .} ==> Br10c8 ≠ s, Br10c8 ≠ w, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c8 ≠ nes
whip[1]: Pr9c7{ns .} ==> Br8c7 ≠ swn
B-single: Br8c7 = nw
whip[1]: Br8c7{nw .} ==> Nr8c7 ≠ 3, Pr9c8 ≠ sw
N-single: Nr8c7 = 2
P-single: Pr9c8 = o
whip[1]: Pr9c8{o .} ==> Br9c8 ≠ w, Br9c8 ≠ sw
whip[1]: Br9c8{s .} ==> Pr10c8 ≠ ne, Pr10c8 ≠ ns, Nr9c8 ≠ 2, Pr10c8 ≠ nw
whip[1]: Pr10c8{se .} ==> Br10c8 ≠ ne, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ n
whip[1]: Br10c8{swn .} ==> Pr11c9 ≠ nw, Pr10c9 ≠ sw, Nr10c8 ≠ 2
whip[1]: Pr10c9{ew .} ==> Br10c9 ≠ esw, Br10c9 ≠ w
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ ne
whip[1]: Pr11c9{ew .} ==> Vr10c9 ≠ 1, Br10c9 ≠ nw, Br10c8 ≠ e
V-single: Vr10c9 = 0
no-vertical-line-r10{c8 c9} ==> Ir10c9 = out
same-colour-in-r10{c9 c10} ==> Vr10c10 = 0
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
same-colour-in-{r9 r10}c9 ==> Hr10c9 = 0
whip[1]: Vr10c9{0 .} ==> Pr10c9 ≠ se
whip[1]: Vr10c10{0 .} ==> Pr11c10 ≠ nw, Pr10c10 ≠ ns, Pr10c10 ≠ se, Pr10c10 ≠ sw, Br10c9 ≠ se, Br10c9 ≠ nes, Br10c10 ≠ w, Br10c10 ≠ nw
P-single: Pr11c10 = o
whip[1]: Pr11c10{o .} ==> Br11c9 ≠ n
B-single: Br11c9 = o
whip[1]: Br11c9{o .} ==> Pr11c9 ≠ ew
P-single: Pr11c9 = o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n, Br10c8 ≠ swn
B-single: Br10c8 = o
B-single: Br11c8 = o
whip[1]: Br10c8{o .} ==> Vr10c8 ≠ 1, Pr11c8 ≠ ne, Pr10c8 ≠ se, Pr10c9 ≠ ew, Nr10c8 ≠ 1, Nr10c8 ≠ 3
N-single: Nr10c8 = 0
P-single: Pr10c9 = o
P-single: Pr10c8 = o
P-single: Pr11c8 = o
whip[1]: Pr10c9{o .} ==> Br9c8 ≠ s, Br9c9 ≠ s, Br9c9 ≠ se, Br10c9 ≠ n
B-single: Br10c9 = o
B-single: Br9c8 = o
whip[1]: Br10c9{o .} ==> Pr10c10 ≠ nw, Pr10c10 ≠ ew, Nr10c9 ≠ 1, Nr10c9 ≠ 2, Nr10c9 ≠ 3
N-single: Nr10c9 = 0
whip[1]: Br9c8{o .} ==> Nr9c8 ≠ 1
N-single: Nr9c8 = 0
whip[1]: Br9c9{e .} ==> Nr9c9 ≠ 2
whip[1]: Br10c10{n .} ==> Nr10c10 ≠ 2
whip[1]: Br9c7{w .} ==> Nr9c7 ≠ 3, Nr9c7 ≠ 2
N-single: Nr9c7 = 1
whip[1]: Br9c6{se .} ==> Nr9c6 ≠ 1
N-single: Nr9c6 = 2
whip[1]: Vr10c1{0 .} ==> Br10c1 ≠ swn, Br10c0 ≠ e, Pr11c1 ≠ ne, Pr10c1 ≠ ns, Pr10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw
P-single: Pr10c1 = o
P-single: Pr11c1 = o
B-single: Br10c0 = o
whip[1]: Pr10c1{o .} ==> Vr9c1 ≠ 1, Hr10c1 ≠ 1, Br9c1 ≠ s, Br9c1 ≠ wne
H-single: Hr10c1 = 0
V-single: Vr9c1 = 0
B-single: Br9c1 = o
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
same-colour-in-r9{c1 c2} ==> Vr9c2 = 0
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
whip[1]: Hr10c1{0 .} ==> Pr10c2 ≠ ew
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e, Pr9c1 ≠ se
P-single: Pr9c1 = o
B-single: Br9c0 = o
whip[1]: Pr9c1{o .} ==> Br8c1 ≠ s, Br8c1 ≠ ns
whip[1]: Br8c1{n .} ==> Pr9c2 ≠ sw, Nr8c1 ≠ 2
P-single: Pr9c2 = o
whip[1]: Pr9c2{o .} ==> Br9c2 ≠ w, Br9c2 ≠ sw
whip[1]: Br9c2{s .} ==> Pr10c2 ≠ ne, Pr10c2 ≠ ns, Nr9c2 ≠ 2
whip[1]: Br9c1{o .} ==> Nr9c1 ≠ 1, Nr9c1 ≠ 3
N-single: Nr9c1 = 0
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Br11c1{o .} ==> Pr11c2 ≠ nw, Pr11c2 ≠ ew
whip[1]: Br10c1{e .} ==> Nr10c1 ≠ 2, Nr10c1 ≠ 3
whip[1]: Hr1c8{0 .} ==> Br1c8 ≠ nes, Br0c8 ≠ s, Pr1c8 ≠ se, Pr1c8 ≠ ew, Pr1c9 ≠ ew, Pr1c9 ≠ sw, Br1c8 ≠ n, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ swn, Br1c8 ≠ wne
B-single: Br0c8 = o
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ n, Br1c7 ≠ e, Br1c7 ≠ ns
whip[1]: Hr1c10{0 .} ==> Br1c10 ≠ nes, Br0c10 ≠ s, Pr1c11 ≠ sw, Pr1c10 ≠ se, Pr1c10 ≠ ew, Br1c10 ≠ ne, Br1c10 ≠ wne
P-single: Pr1c11 = o
B-single: Br0c10 = o
whip[1]: Br1c10{sw .} ==> Pr2c11 ≠ ns, Pr2c11 ≠ nw, Nr1c10 ≠ 3
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ esw, Br2c10 ≠ n
whip[1]: Br2c10{nes .} ==> Pr2c10 ≠ se, Pr3c10 ≠ ne, Nr2c10 ≠ 2
whip[1]: Vr1c11{0 .} ==> Br1c11 ≠ w
B-single: Br1c11 = o
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ esw, Pr1c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ ns, Br1c7 ≠ ne, Br1c7 ≠ wne, Br1c7 ≠ nes, Br1c8 ≠ w, Br1c8 ≠ ew, Br1c8 ≠ sw
P-single: Pr1c8 = o
whip[1]: Br1c8{se .} ==> Nr1c8 ≠ 3
whip[1]: Br1c7{sw .} ==> Pr1c7 ≠ se, Pr1c7 ≠ ew, Nr1c7 ≠ 3
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ esw, Br1c6 ≠ swn
whip[1]: Br1c6{nes .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Pr1c7 ≠ o, Pr2c7 ≠ ew, Pr2c7 ≠ sw
P-single: Pr1c7 = sw
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ s, Br1c7 ≠ o
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 0
whip[1]: Pr2c7{ns .} ==> Hr2c6 ≠ 1, Br1c6 ≠ nes, Br2c7 ≠ s, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ swn, Br2c7 ≠ wne, Br2c7 ≠ o, Br2c7 ≠ e
B-single: Br1c6 = wne
whip[1]: Br1c6{wne .} ==> Pr2c6 ≠ ew, Pr2c6 ≠ se, Pr1c6 ≠ ew
P-single: Pr1c6 = se
whip[1]: Pr1c6{se .} ==> Br1c5 ≠ w, Br1c5 ≠ s, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ nw, Br1c5 ≠ sw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes
whip[1]: Br1c5{esw .} ==> Pr1c5 ≠ se, Pr1c5 ≠ ew, Nr1c5 ≠ 0
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ sw, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c5 ≠ o, Br2c5 ≠ s
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 0
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Pr2c8{sw .} ==> Br2c7 ≠ sw, Br2c8 ≠ se, Br2c7 ≠ w
whip[1]: Hr1c3{0 .} ==> Br1c3 ≠ nes, Br0c3 ≠ s, Pr1c3 ≠ se, Pr1c3 ≠ ew, Pr1c4 ≠ ew, Pr1c4 ≠ sw, Br1c3 ≠ n, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ swn, Br1c3 ≠ wne
B-single: Br0c3 = o
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ swn, Br1c2 ≠ e
whip[1]: Br1c2{wne .} ==> Pr2c2 ≠ ne, Pr2c3 ≠ nw, Nr1c2 ≠ 2
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ se, Br2c4 ≠ o, Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Br2c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ ns
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ o, Br4c6 ≠ e, Br4c6 ≠ s
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 1
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c5{ns .} ==> Hr3c4 ≠ 1, Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes, Br3c4 ≠ ne, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c4 ≠ n
H-single: Hr3c4 = 0
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
same-colour-in-r2{c3 c4} ==> Vr2c4 = 0
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
same-colour-in-{r1 r2}c3 ==> Hr2c3 = 0
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
same-colour-in-{r2 r3}c2 ==> Hr3c2 = 0
whip[1]: Hr3c4{0 .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ se, Pr3c4 ≠ ew
whip[1]: Vr2c4{0 .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ se, Pr2c4 ≠ sw, Pr3c4 ≠ ns, Pr3c4 ≠ nw, Br2c3 ≠ e, Br2c3 ≠ ne, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ esw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ ew, Br2c4 ≠ wne
whip[1]: Br2c4{ne .} ==> Nr2c4 ≠ 3
whip[1]: Vr2c3{0 .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ se, Pr2c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ sw, Br2c3 ≠ swn
whip[1]: Br2c3{ns .} ==> Nr2c3 ≠ 3
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ ew, Br1c3 ≠ w
whip[1]: Hr2c3{0 .} ==> Pr2c3 ≠ ne, Pr2c3 ≠ ew, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Br1c3 ≠ s, Br1c3 ≠ se, Br1c3 ≠ sw, Br1c3 ≠ esw, Br2c3 ≠ n, Br2c3 ≠ ns
P-single: Pr2c3 = o
whip[1]: Pr2c3{o .} ==> Vr1c3 ≠ 1, Hr2c2 ≠ 1, Br1c2 ≠ s, Br1c2 ≠ wne, Br2c2 ≠ n, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ swn
H-single: Hr2c2 = 0
V-single: Vr1c3 = 0
B-single: Br1c2 = o
no-vertical-line-r1{c2 c3} ==> Ir1c2 = out
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
whip[1]: Hr2c2{0 .} ==> Pr2c2 ≠ se, Pr2c2 ≠ ew
whip[1]: Vr1c3{0 .} ==> Pr1c3 ≠ sw
P-single: Pr1c3 = o
whip[1]: Br1c2{o .} ==> Pr1c2 ≠ se, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Nr1c2 ≠ 1, Nr1c2 ≠ 3
N-single: Nr1c2 = 0
P-single: Pr1c2 = o
whip[1]: Pr1c2{o .} ==> Br1c1 ≠ e, Br1c1 ≠ se
whip[1]: Br1c1{s .} ==> Nr1c1 ≠ 2
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 3
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 2
whip[1]: Br1c3{e .} ==> Nr1c3 ≠ 2, Nr1c3 ≠ 3
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ se, Pr3c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ ns, Br3c1 ≠ e, Br3c1 ≠ ne, Br3c1 ≠ se, Br3c1 ≠ nes, Br3c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne
whip[1]: Br3c1{ns .} ==> Nr3c1 ≠ 3
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ se, Br4c1 ≠ o, Br4c1 ≠ s
whip[1]: Br4c1{wne .} ==> Nr4c1 ≠ 0
whip[1]: Hr3c2{0 .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ ew, Pr3c3 ≠ ew, Pr3c3 ≠ sw, Br2c2 ≠ s, Br2c2 ≠ sw, Br3c2 ≠ n, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nes
whip[1]: Br3c2{se .} ==> Nr3c2 ≠ 3
whip[1]: Br2c2{w .} ==> Nr2c2 ≠ 2
whip[1]: Pr2c5{sw .} ==> Br1c5 ≠ esw
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 3
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Hr2c5{1 .} ==> Br2c5 ≠ esw, Pr2c5 ≠ ns, Pr2c5 ≠ sw, Pr2c6 ≠ ns, Br1c5 ≠ e, Br1c5 ≠ ew, Br2c5 ≠ ew
P-single: Pr2c6 = nw
P-single: Pr2c5 = se
B-single: Br1c5 = se
whip[1]: Pr2c6{nw .} ==> Vr2c6 ≠ 1
whip[1]: Pr2c5{se .} ==> Vr1c5 ≠ 1, Hr2c4 ≠ 1, Br2c4 ≠ ne
B-single: Br2c4 = e
whip[1]: Br2c4{e .} ==> Nr2c4 ≠ 2, Pr2c4 ≠ ne
N-single: Nr2c4 = 1
P-single: Pr2c4 = o
whip[1]: Pr2c4{o .} ==> Vr1c4 ≠ 1, Br1c3 ≠ e
B-single: Br1c3 = o
whip[1]: Br1c3{o .} ==> Pr1c4 ≠ se, Nr1c3 ≠ 1
N-single: Nr1c3 = 0
P-single: Pr1c4 = o
whip[1]: Pr1c4{o .} ==> Hr1c4 ≠ 1
whip[1]: Br1c5{se .} ==> Nr1c5 ≠ 1, Pr1c5 ≠ sw
N-single: Nr1c5 = 2
P-single: Pr1c5 = o
whip[1]: Br2c5{swn .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ nw
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ sw, Br3c6 ≠ se, Br3c6 ≠ o, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Hr2c7{1 .} ==> Br2c7 ≠ esw, Pr2c7 ≠ ns, Pr2c8 ≠ se, Br1c7 ≠ w, Br2c7 ≠ ew
P-single: Pr2c7 = ne
B-single: Br1c7 = sw
whip[1]: Pr2c7{ne .} ==> Vr2c7 ≠ 1
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 1
N-single: Nr1c7 = 2
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ nw, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ o, Br3c9 ≠ e, Br3c9 ≠ s
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 0
whip[1]: Br2c7{nes .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ nw
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Vr1c9{0 .} ==> Br1c8 ≠ se, Vr1c9 ≠ 1, Pr1c9 ≠ se, Pr2c9 ≠ ns, Pr2c9 ≠ nw, Br1c8 ≠ e
P-single: Pr1c9 = o
whip[1]: Pr1c9{o .} ==> Hr1c9 ≠ 1
whip[1]: Br1c8{s .} ==> Nr1c8 ≠ 2
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ sw, Br2c9 ≠ se, Br2c9 ≠ o, Br2c9 ≠ e, Br2c9 ≠ s
whip[1]: Br2c9{nes .} ==> Nr2c9 ≠ 0
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ sw, Vr1c10 ≠ 1, Pr1c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ ns, Pr2c10 ≠ nw, Br1c10 ≠ w
P-single: Pr1c10 = o
whip[1]: Br1c10{s .} ==> Nr1c10 ≠ 2
whip[1]: Pr2c10{sw .} ==> Br2c9 ≠ ew, Br2c9 ≠ esw
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Hr2c9{0 .} ==> Br2c9 ≠ nes, Hr2c9 ≠ 1, Pr2c9 ≠ se, Pr2c9 ≠ ew, Pr2c10 ≠ ew, Pr2c10 ≠ sw, Br2c9 ≠ n, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne
P-single: Pr2c10 = o
P-single: Pr2c9 = sw
whip[1]: Pr2c10{o .} ==> Vr2c10 ≠ 1, Hr2c10 ≠ 1, Br1c10 ≠ s, Br2c10 ≠ w, Br2c10 ≠ nes
H-single: Hr2c10 = 0
V-single: Vr2c10 = 0
B-single: Br2c10 = o
B-single: Br1c10 = o
no-vertical-line-r2{c9 c10} ==> Ir2c10 = out
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
same-colour-in-{r2 r3}c10 ==> Hr3c10 = 0
whip[1]: Hr2c10{0 .} ==> Pr2c11 ≠ sw
P-single: Pr2c11 = o
whip[1]: Vr2c10{0 .} ==> Pr3c10 ≠ ns, Pr3c10 ≠ nw
whip[1]: Br2c10{o .} ==> Pr3c11 ≠ nw, Pr3c10 ≠ se, Pr3c10 ≠ ew, Nr2c10 ≠ 1, Nr2c10 ≠ 3
N-single: Nr2c10 = 0
P-single: Pr3c11 = o
whip[1]: Pr3c11{o .} ==> Br3c10 ≠ n, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ swn
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 3
whip[1]: Pr3c10{sw .} ==> Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ n, Br3c9 ≠ ns
whip[1]: Br1c10{o .} ==> Nr1c10 ≠ 1
N-single: Nr1c10 = 0
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ ns, Br1c8 ≠ o, Vr2c9 ≠ 0, Hr2c8 ≠ 0, Br2c8 ≠ ew
H-single: Hr2c8 = 1
V-single: Vr2c9 = 1
B-single: Br2c8 = ne
B-single: Br1c8 = s
vertical-line-r2{c8 c9} ==> Ir2c8 = in
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = in
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
same-colour-in-{r4 r5}c8 ==> Hr5c8 = 0
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
same-colour-in-r4{c7 c8} ==> Vr4c8 = 0
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
different-colours-in-{r2 r3}c9 ==> Hr3c9 = 1
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
whip[1]: Hr2c8{1 .} ==> Pr2c8 ≠ sw
P-single: Pr2c8 = ew
whip[1]: Pr2c8{ew .} ==> Br2c7 ≠ ne, Br2c7 ≠ nes
whip[1]: Br2c7{ns .} ==> Nr2c7 ≠ 3
whip[1]: Vr2c9{1 .} ==> Pr3c9 ≠ ew, Pr3c9 ≠ sw
whip[1]: Pr3c9{ns .} ==> Hr3c8 ≠ 1
whip[1]: Br1c8{s .} ==> Nr1c8 ≠ 0
N-single: Nr1c8 = 1
whip[1]: Hr5c8{0 .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ se, Pr5c8 ≠ ew, Pr5c9 ≠ ew, Br4c8 ≠ s, Br4c8 ≠ ns, Br4c8 ≠ sw, Br4c8 ≠ swn, Br5c8 ≠ n, Br5c8 ≠ nw
P-single: Pr5c9 = ne
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ s, Br4c9 ≠ ns
whip[1]: Br4c9{swn .} ==> Pr4c9 ≠ o, Pr4c9 ≠ ne, Pr4c9 ≠ nw, Pr4c9 ≠ ew, Nr4c9 ≠ 1
whip[1]: Pr4c9{sw .} ==> Br3c9 ≠ sw
whip[1]: Br3c9{nes .} ==> Pr4c10 ≠ ew
whip[1]: Pr4c10{nw .} ==> Br3c10 ≠ s
whip[1]: Br5c8{w .} ==> Nr5c8 ≠ 2
whip[1]: Vr4c8{0 .} ==> Pr4c8 ≠ ns, Pr4c8 ≠ se, Pr4c8 ≠ sw, Pr5c8 ≠ ns, Pr5c8 ≠ nw, Br4c7 ≠ e, Br4c7 ≠ ne, Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c8 ≠ ew, Br4c8 ≠ wne
whip[1]: Br4c8{ne .} ==> Nr4c8 ≠ 3
whip[1]: Vr3c10{1 .} ==> Br3c10 ≠ o, Pr3c10 ≠ o, Pr4c10 ≠ o, Br3c9 ≠ w
P-single: Pr3c10 = sw
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ w
B-single: Br2c9 = sw
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 3, Nr2c9 ≠ 1, Pr3c9 ≠ ns
N-single: Nr2c9 = 2
P-single: Pr3c9 = ne
whip[1]: Pr3c9{ne .} ==> Vr3c9 ≠ 1
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ ns, Nr3c9 ≠ 1
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 0
whip[1]: Hr4c9{1 .} ==> Pr4c9 ≠ sw, Pr4c10 ≠ ne, Br3c9 ≠ ne, Br4c9 ≠ sw
P-single: Pr4c10 = nw
P-single: Pr4c9 = se
B-single: Br4c9 = swn
B-single: Br3c9 = nes
whip[1]: Pr4c10{nw .} ==> Hr4c10 ≠ 1, Br3c10 ≠ sw
B-single: Br3c10 = w
whip[1]: Br3c10{w .} ==> Nr3c10 ≠ 2, Pr4c11 ≠ sw
N-single: Nr3c10 = 1
P-single: Pr4c11 = o
whip[1]: Pr4c9{se .} ==> Hr4c8 ≠ 1, Br4c8 ≠ ne
B-single: Br4c8 = e
whip[1]: Br4c8{e .} ==> Nr4c8 ≠ 2, Pr4c8 ≠ ne, Pr4c8 ≠ ew
N-single: Nr4c8 = 1
whip[1]: Pr4c8{nw .} ==> Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c7 ≠ e, Br3c7 ≠ s
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 2
N-single: Nr4c9 = 3
whip[1]: Br3c9{nes .} ==> Nr3c9 ≠ 2
N-single: Nr3c9 = 3
whip[1]: Hr4c7{0 .} ==> Pr4c7 ≠ ne, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c8 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ esw, Br3c7 ≠ nes, Br4c7 ≠ n, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ swn
P-single: Pr4c8 = o
whip[1]: Pr4c8{o .} ==> Vr3c8 ≠ 1
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 3
whip[1]: Br3c7{nw .} ==> Pr3c8 ≠ sw, Nr3c7 ≠ 3
P-single: Pr3c8 = o
whip[1]: Pr3c8{o .} ==> Br2c7 ≠ ns, Br3c7 ≠ n, Br3c7 ≠ nw
B-single: Br2c7 = n
whip[1]: Br2c7{n .} ==> Pr3c7 ≠ se, Pr3c7 ≠ ew, Nr2c7 ≠ 2
N-single: Nr2c7 = 1
whip[1]: Pr3c7{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ n, Br3c6 ≠ ns
whip[1]: Br3c7{w .} ==> Nr3c7 ≠ 2
whip[1]: Vr3c7{0 .} ==> Pr3c7 ≠ sw, Pr4c7 ≠ ns, Pr4c7 ≠ nw, Br3c6 ≠ ne, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ w
P-single: Pr3c7 = o
B-single: Br3c7 = o
whip[1]: Pr3c7{o .} ==> Hr3c6 ≠ 1
whip[1]: Br3c7{o .} ==> Nr3c7 ≠ 1
N-single: Nr3c7 = 0
whip[1]: Br3c6{sw .} ==> Vr3c6 ≠ 0, Pr3c6 ≠ se, Pr3c6 ≠ ew, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Nr3c6 ≠ 3
V-single: Vr3c6 = 1
P-single: Pr3c6 = sw
vertical-line-r3{c5 c6} ==> Ir3c5 = out
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = out
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
same-colour-in-r4{c3 c4} ==> Vr4c4 = 0
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
same-colour-in-r3{c4 c5} ==> Vr3c5 = 0
w[1]-2-in-r3c5-open-sw-corner ==> Hr3c5 = 1

XTD-LOOP[42]: Vr8c5-Hr9c4-Vr9c4-Vr10c4-Hr11c4-Hr11c5-Vr10c6-Hr10c6-Vr9c7-Vr8c7-Hr8c7-Vr7c8-Hr7c8-Vr7c9-Hr8c9-Vr7c10-Hr7c10-Vr6c11-Hr6c10-Vr5c10-Hr5c9-Vr4c9-Hr4c9-Vr3c10-Hr3c9-Vr2c9-Hr2c8-Hr2c7-Vr1c7-Hr1c6-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Vr3c6-Hr4c6-Vr4c7-Hr5c6-Vr5c6- ==> Vr6c6-Hr7c5-Vr7c5 = 0
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
no-vertical-line-r6{c3 c4} ==> Ir6c3 = in
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1

XTD-LOOP[48]: Hr5c4-Vr5c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Vr10c4-Vr9c4-Hr9c4-Vr8c5-Hr8c4-Vr7c4-Hr7c3- ==> Vr6c3-Hr6c3-Vr5c4 = 0
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1

XTD-LOOP[54]: Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr5c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Vr10c4-Vr9c4-Hr9c4-Vr8c5-Hr8c4-Vr7c4-Hr7c3-Hr7c2-Vr6c2-Hr6c1-Vr5c1- ==> Vr4c1-Hr4c1 = 1

XTD-LOOP[54]: Hr4c2-Vr4c3-Hr5c3-Hr5c4-Vr5c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Vr5c10-Hr6c10-Vr6c11-Hr7c10-Vr7c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Hr8c7-Vr8c7-Vr9c7-Hr10c6-Vr10c6-Hr11c5-Hr11c4-Vr10c4-Vr9c4-Hr9c4-Vr8c5-Hr8c4-Vr7c4-Hr7c3-Hr7c2-Vr6c2-Hr6c1-Vr5c1- ==> Hr5c1-Vr4c2 = 0
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+xtd-Loop, MOST COMPLEX RULE TRIED = W[1]

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

init-time = 0.62s, solve-time = 54.98s, total-time = 55.61s
nb-facts=<Fact-202867>
Quasi-Loop max length = 54
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




