
(solve
10 10
. 2 3 1 . 2 3 . 1 . 
. . 3 2 . . . . . 3 
. 2 1 . . 3 . 2 0 . 
2 2 . . . . 2 . 3 2 
. . . 1 . 2 2 . . 1 
. . . 2 . . . . 3 . 
3 . 2 2 3 . 1 . . 2 
. . . . 0 . . 2 . . 
. 2 2 3 . 2 2 2 . . 
3 . 3 . . . 1 . . 2
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 3 1 . 2 3 . 1 .
. . 3 2 . . . . . 3
. 2 1 . . 3 . 2 0 .
2 2 . . . . 2 . 3 2
. . . 1 . 2 2 . . 1
. . . 2 . . . . 3 .
3 . 2 2 3 . 1 . . 2
. . . . 0 . . 2 . .
. 2 2 3 . 2 2 2 . .
3 . 3 . . . 1 . . 2

Loading pre-computed background
start init-inner-N-and-B-candidates 0.618964910507202
start solution 0.63210916519165
entering BRT
w[0]-0-in-r8c5 ==> Hr9c5 = 0, Hr8c5 = 0, Vr8c6 = 0, Vr8c5 = 0
w[0]-0-in-r3c9 ==> Hr4c9 = 0, Hr3c9 = 0, Vr3c10 = 0, Vr3c9 = 0
w[0]-adjacent-3-0-in-c5{r7 r8} ==> Vr7c6 = 1, Vr7c5 = 1, Hr8c6 = 1, Hr8c4 = 1, Hr7c5 = 1, Vr6c6 = 0, Vr6c5 = 0, Hr7c6 = 0, Hr7c4 = 0
w[0]-adjacent-3-0-in-c9{r4 r3} ==> Vr4c10 = 1, Vr4c9 = 1, Hr5c9 = 1, Hr4c10 = 1, Hr4c8 = 1, Vr5c10 = 0, Vr5c9 = 0, Hr5c10 = 0, Hr5c8 = 0
w[1]-3-in-sw-corner ==> Vr10c1 = 1, Hr11c1 = 1
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-2-in-r6c4-open-se-corner ==> Hr6c4 = 1, Vr6c4 = 1, Hr6c3 = 0, Vr5c4 = 0
w[1]-diagonal-3-0-in-{r9c4...r8c5} ==> Vr9c5 = 1, Hr9c4 = 1
w[1]-diagonal-3-0-in-{r2c10...r3c9} ==> Vr2c10 = 1, Hr3c10 = 1
w[1]-diagonal-3s-in-{r9c4...r10c3} ==> Vr10c3 = 1, Hr11c3 = 1, Hr11c2 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c4 c3} ==> Vr1c5 = 0, Hr2c4 = 0, Hr1c3 = 1
w[1]-adjacent-1-2-on-pseudo-edge-in-{r5 r6}c4-fwd-diag-2s-3 ==> Vr5c5 = 0, Hr5c4 = 0
w[1]-3-in-r10c3-closed-sw-corner ==> Pr10c4 ≠ sw, Pr10c4 ≠ ne, Pr10c4 ≠ o
w[1]-3-in-r10c1-closed-sw-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ne, Pr10c2 ≠ o
w[1]-3-in-r7c5-closed-ne-corner ==> Pr8c5 ≠ sw, Pr8c5 ≠ ne
w[1]-3-in-r7c5-closed-nw-corner ==> Pr8c6 ≠ se, Pr8c6 ≠ nw, Pr8c6 ≠ o
w[1]-3-in-r4c9-closed-sw-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ ne
w[1]-3-in-r4c9-closed-se-corner ==> Pr4c9 ≠ se, Pr4c9 ≠ o
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ o
diagonal-3-1-in-ne-corner ==> Vr1c10 = 1, Hr2c10 = 0
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
adjacent-3s-in-c3{r1 r2} ==> Hr3c3 = 1, Hr2c3 = 1, Hr2c2 = 0
entering level Loop with <Fact-93231>
entering level Col with <Fact-93313>
vertical-line-r9{c10 c11} ==> Ir9c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
horizontal-line-{r10 r11}c3 ==> Ir10c3 = in
vertical-line-r10{c2 c3} ==> Ir10c2 = out
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
different-colours-in-r10{c1 c2} ==> Hr10c2 = 1
w[1]-3-in-r10c1-closed-se-corner ==> Pr10c1 ≠ se, Pr10c1 ≠ o
Starting_init_links_with_<Fact-93332>
1144 candidates, 8473 csp-links and 35390 links. Density = 5.41%
starting non trivial part of solution
Entering_level_W1_with_<Fact-181063>
whip[1]: Vr10c2{1 .} ==> Br10c2 ≠ nes, Br10c2 ≠ o, Pr11c2 ≠ o, Pr11c2 ≠ ew, Pr10c2 ≠ nw, Pr10c2 ≠ ew, Br10c1 ≠ swn, Br10c2 ≠ n, Br10c2 ≠ e, Br10c2 ≠ s, Br10c2 ≠ ne, Br10c2 ≠ ns, Br10c2 ≠ se
B-single: Br10c1 = esw
whip[1]: Br10c1{esw .} ==> Pr10c1 ≠ ne, Pr11c2 ≠ ne, Pr11c1 ≠ o, Hr10c1 ≠ 1
H-single: Hr10c1 = 0
P-single: Pr11c1 = ne
P-single: Pr11c2 = nw
P-single: Pr10c1 = ns
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = in
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
whip[1]: Hr10c1{0 .} ==> Br9c1 ≠ s, Br9c1 ≠ ns, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ nes
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr11c2{nw .} ==> Br11c2 ≠ n, Br10c2 ≠ sw, Br10c2 ≠ esw, Br10c2 ≠ swn
B-single: Br11c2 = o
whip[1]: Br11c2{o .} ==> Pr11c3 ≠ nw, Pr11c3 ≠ ew
whip[1]: Pr11c3{ne .} ==> Br10c3 ≠ wne, Br10c3 ≠ nes
whip[1]: Br10c3{swn .} ==> Pr11c3 ≠ o, Pr11c4 ≠ o, Pr11c4 ≠ ne, Pr10c3 ≠ o, Pr10c3 ≠ ne, Pr10c3 ≠ nw, Pr10c3 ≠ ew
P-single: Pr11c3 = ne
whip[1]: Pr11c3{ne .} ==> Br11c3 ≠ o, Br10c2 ≠ w, Br10c2 ≠ nw
B-single: Br11c3 = n
whip[1]: Br10c2{wne .} ==> Nr10c2 ≠ 0, Nr10c2 ≠ 1
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ se, Br9c3 ≠ sw
whip[1]: Br9c3{ew .} ==> Pr9c4 ≠ o, Pr9c4 ≠ ne
whip[1]: Pr9c4{sw .} ==> Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn
whip[1]: Br9c2{sw .} ==> Pr9c2 ≠ o, Pr9c2 ≠ nw
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ se, Br8c1 ≠ esw, Br8c1 ≠ nes
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ ne
whip[1]: Br10c4{nes .} ==> Nr10c4 ≠ 0
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ n, Br9c1 ≠ o, Br9c1 ≠ ne
whip[1]: Br9c1{wne .} ==> Pr9c1 ≠ o, Pr9c1 ≠ ne, Nr9c1 ≠ 0
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ swn, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
whip[1]: Br8c1{wne .} ==> Nr8c1 ≠ 0
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Pr10c2{se .} ==> Br9c2 ≠ ne, Br9c2 ≠ sw
whip[1]: Hr2c2{0 .} ==> Br2c2 ≠ nes, Pr2c2 ≠ se, Pr2c2 ≠ ew, Pr2c3 ≠ ew, Pr2c3 ≠ sw, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ sw, Br2c2 ≠ n, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ swn, Br2c2 ≠ wne
whip[1]: Hr2c3{1 .} ==> Br2c3 ≠ esw, Pr2c3 ≠ o, Pr2c3 ≠ ns, Pr2c4 ≠ o, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Br1c3 ≠ wne
whip[1]: Br1c3{nes .} ==> Pr1c4 ≠ o
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{w .} ==> Pr2c5 ≠ ne, Pr2c5 ≠ ns, Pr2c5 ≠ nw, Pr1c4 ≠ se, Pr1c5 ≠ se, Pr1c5 ≠ sw, Pr2c4 ≠ ew, Pr2c5 ≠ ew
whip[1]: Pr2c5{se .} ==> Br1c5 ≠ nw, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ nes, Br1c5 ≠ w, Br2c5 ≠ n, Br2c5 ≠ w
whip[1]: Pr1c4{sw .} ==> Br1c3 ≠ esw
whip[1]: Br1c3{nes .} ==> Pr1c3 ≠ sw
whip[1]: Pr2c2{nw .} ==> Vr1c2 ≠ 0, Br1c1 ≠ nw, Br1c1 ≠ swn, Br1c2 ≠ ne, Br2c1 ≠ w, Br2c1 ≠ ne, Br2c1 ≠ sw, Br2c1 ≠ wne, Br2c1 ≠ nes, Br1c1 ≠ o, Br1c1 ≠ s, Br2c1 ≠ o, Br2c1 ≠ s
V-single: Vr1c2 = 1
whip[1]: Vr1c2{1 .} ==> Pr1c2 ≠ ew
whip[1]: Br2c1{swn .} ==> Nr2c1 ≠ 0
whip[1]: Br1c1{wne .} ==> Pr2c1 ≠ ne, Nr1c1 ≠ 0
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ ns, Br2c1 ≠ n
whip[1]: Br2c3{nes .} ==> Pr3c3 ≠ o, Pr3c3 ≠ sw, Pr3c4 ≠ se
whip[1]: Pr3c4{ew .} ==> Br3c4 ≠ nw, Br3c4 ≠ swn, Br3c4 ≠ wne
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne
whip[1]: Br3c2{sw .} ==> Pr4c2 ≠ o, Pr4c2 ≠ sw
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ ne
whip[1]: Br4c1{sw .} ==> Pr5c1 ≠ o
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ se, Br5c1 ≠ o, Br5c1 ≠ e, Br5c1 ≠ s
whip[1]: Br5c1{nes .} ==> Nr5c1 ≠ 0
whip[1]: Hr3c3{1 .} ==> Br3c3 ≠ w, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Pr3c4 ≠ ne, Pr3c4 ≠ ns, Br2c3 ≠ wne, Br3c3 ≠ e, Br3c3 ≠ s
P-single: Pr2c5 = se
B-single: Br3c3 = n
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ s, Br2c5 ≠ e, Br2c5 ≠ o, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Vr2c5 ≠ 0, Hr2c5 ≠ 0, Br1c5 ≠ ne, Br2c4 ≠ sw, Br2c5 ≠ se
H-single: Hr2c5 = 1
V-single: Vr2c5 = 1
whip[1]: Hr2c5{1 .} ==> Pr2c6 ≠ o, Pr2c6 ≠ ne, Pr2c6 ≠ ns, Pr2c6 ≠ se
whip[1]: Pr2c6{sw .} ==> Br1c6 ≠ sw, Br2c6 ≠ nw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Br1c6{ew .} ==> Pr1c7 ≠ o
whip[1]: Vr2c5{1 .} ==> Pr3c5 ≠ ew, Pr3c5 ≠ sw
whip[1]: Pr3c5{nw .} ==> Br3c4 ≠ ne, Br3c4 ≠ nes, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Br2c5{wne .} ==> Pr3c6 ≠ nw, Nr2c5 ≠ 0, Nr2c5 ≠ 1
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Br3c3{n .} ==> Vr3c4 ≠ 1, Vr3c3 ≠ 1, Hr4c3 ≠ 1, Pr3c3 ≠ se, Pr4c3 ≠ ne, Pr4c4 ≠ ne, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr4c4 ≠ sw
H-single: Hr4c3 = 0
V-single: Vr3c3 = 0
V-single: Vr3c4 = 0
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
whip[1]: Hr4c3{0 .} ==> Br4c3 ≠ n, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes
whip[1]: Vr3c3{0 .} ==> Br3c2 ≠ se, Br3c2 ≠ ew
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ w, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw
whip[1]: Br3c4{se .} ==> Nr3c4 ≠ 3
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ se, Br2c1 ≠ esw
whip[1]: Br2c1{swn .} ==> Pr3c1 ≠ se
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ wne
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ ns
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ se, Br2c2 ≠ esw, Br2c2 ≠ o, Br2c2 ≠ w
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 0, Nr2c2 ≠ 3
whip[1]: Pr5c3{sw .} ==> Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ o, Br5c3 ≠ e, Br5c3 ≠ s
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c1 ≠ o, Br3c1 ≠ n, Br3c1 ≠ w
whip[1]: Br3c1{sw .} ==> Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Pr5c2{sw .} ==> Br4c1 ≠ se, Br5c1 ≠ nw, Br5c1 ≠ ew, Br5c1 ≠ esw, Br5c1 ≠ swn, Br5c2 ≠ nw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br5c1 ≠ n, Br5c1 ≠ ns
whip[1]: Br4c1{sw .} ==> Pr4c1 ≠ o
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ ne, Br3c1 ≠ e
whip[1]: Br3c1{sw .} ==> Pr3c2 ≠ sw
whip[1]: Pr3c2{ew .} ==> Br2c2 ≠ e
whip[1]: Hr2c9{0 .} ==> Br2c9 ≠ nes, Pr2c9 ≠ ne, Pr2c9 ≠ se, Pr2c9 ≠ ew, Pr2c10 ≠ nw, Pr2c10 ≠ ew, Pr2c10 ≠ sw, Br1c9 ≠ s, Br2c9 ≠ n, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne
whip[1]: Br1c9{w .} ==> Pr1c9 ≠ se, Pr1c10 ≠ sw
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ sw, Br1c10 ≠ w
whip[1]: Br1c10{nes .} ==> Pr2c10 ≠ ne
whip[1]: Pr2c10{se .} ==> Br2c10 ≠ nes
whip[1]: Br2c10{wne .} ==> Pr2c10 ≠ o, Pr3c10 ≠ o, Pr3c10 ≠ se, Pr3c10 ≠ ew, Pr3c10 ≠ sw
whip[1]: Pr3c10{nw .} ==> Br2c9 ≠ w, Br2c9 ≠ sw, Br3c10 ≠ nw, Br3c10 ≠ swn, Br3c10 ≠ wne, Br2c9 ≠ o, Br2c9 ≠ s
whip[1]: Br2c9{esw .} ==> Nr2c9 ≠ 0
whip[1]: Pr2c10{se .} ==> Br1c10 ≠ ne, Br1c10 ≠ o
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0, Nr1c10 ≠ 2
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ e
whip[1]: Hr2c10{1 .} ==> Br2c10 ≠ esw, Pr2c11 ≠ ns, Pr2c10 ≠ ns, Br1c10 ≠ wne
P-single: Pr2c10 = se
P-single: Pr2c11 = nw
w[1]-1-in-r1c9-symmetric-se-corner ==> Pr1c9 ≠ o
whip[1]: Pr2c10{se .} ==> Br1c9 ≠ e
whip[1]: Br1c9{w .} ==> Pr1c10 ≠ se
whip[1]: Pr2c11{nw .} ==> Br1c10 ≠ s, Vr2c11 ≠ 1, Vr1c11 ≠ 0, Br2c10 ≠ wne
V-single: Vr1c11 = 1
V-single: Vr2c11 = 0
B-single: Br2c10 = swn
B-single: Br1c10 = nes
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
horizontal-line-{r3 r4}c8 ==> Ir4c8 = out
no-horizontal-line-{r4 r5}c8 ==> Ir5c8 = out
no-vertical-line-r5{c8 c9} ==> Ir5c9 = out
no-vertical-line-r5{c9 c10} ==> Ir5c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
vertical-line-r4{c9 c10} ==> Ir4c9 = in
horizontal-line-{r3 r4}c10 ==> Ir3c10 = in
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
w[1]-diagonal-3-1-in-{r6c9...r5c10}-open-end ==> Vr6c9 = 1, Hr7c9 = 1
w[1]-3-in-r6c9-closed-sw-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ne, Pr6c10 ≠ o
w[1]-1-in-r5c10-asymmetric-sw-corner ==> Pr5c11 ≠ ns
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o, Pr1c11 ≠ o
P-single: Pr1c11 = sw
B-single: Br1c11 = w
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w, Pr3c11 ≠ ns
P-single: Pr3c11 = sw
B-single: Br2c11 = o
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ ns, Br3c10 ≠ w, Br3c10 ≠ s, Br3c10 ≠ e, Br3c10 ≠ n, Br3c10 ≠ o, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ sw, Br3c10 ≠ esw
whip[1]: Br3c10{nes .} ==> Vr3c10 ≠ 1, Pr3c10 ≠ ns, Pr3c10 ≠ nw, Pr4c10 ≠ ns, Nr3c10 ≠ 0, Nr3c10 ≠ 1
P-single: Pr3c10 = ne
whip[1]: Pr3c10{ne .} ==> Hr3c9 ≠ 1, Br2c9 ≠ se, Br2c9 ≠ esw
whip[1]: Br2c9{ew .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ se, Pr3c9 ≠ ew, Nr2c9 ≠ 3
whip[1]: Pr3c9{nw .} ==> Br2c8 ≠ ns, Br2c8 ≠ sw, Br2c8 ≠ swn, Br3c8 ≠ ne, Br2c8 ≠ s
whip[1]: Pr4c10{ew .} ==> Br4c9 ≠ wne, Br4c9 ≠ nes, Br4c10 ≠ se, Br4c10 ≠ ew, Br4c10 ≠ sw, Br3c10 ≠ ne
B-single: Br3c10 = nes
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 2, Pr4c11 ≠ ns
N-single: Nr3c10 = 3
P-single: Pr4c11 = nw
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ ne
whip[1]: Br4c9{swn .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ ew, Pr5c9 ≠ o, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Pr5c9 ≠ se, Pr5c9 ≠ ew, Pr5c9 ≠ sw, Pr5c10 ≠ ns, Pr5c10 ≠ se
P-single: Pr5c9 = ne
whip[1]: Pr5c9{ne .} ==> Br5c9 ≠ o, Br5c8 ≠ n, Br4c8 ≠ n, Br4c8 ≠ o, Br4c8 ≠ s, Br4c8 ≠ w, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ nes, Br5c8 ≠ e, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ esw, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c9 ≠ e, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne
whip[1]: Br5c9{nes .} ==> Pr6c9 ≠ ne, Pr6c9 ≠ ns, Pr6c9 ≠ nw, Nr5c9 ≠ 0
whip[1]: Br5c8{sw .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ se, Pr5c8 ≠ ew, Nr5c8 ≠ 3
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 0
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ nes, Br5c9 ≠ ne, Br5c10 ≠ w
whip[1]: Br5c10{s .} ==> Pr6c10 ≠ ns, Pr5c11 ≠ sw, Pr6c11 ≠ nw, Pr6c10 ≠ nw
P-single: Pr4c10 = se
P-single: Pr5c11 = o
whip[1]: Pr4c10{se .} ==> Hr4c9 ≠ 1, Br4c9 ≠ swn, Br4c10 ≠ ns
B-single: Br4c10 = nw
B-single: Br4c9 = esw
whip[1]: Br4c10{nw .} ==> Pr5c10 ≠ ew
P-single: Pr5c10 = nw
w[1]-1-in-r5c10-symmetric-nw-corner ==> Pr6c11 ≠ o
whip[1]: Pr5c10{nw .} ==> Br5c10 ≠ n
whip[1]: Pr6c11{sw .} ==> Vr6c11 ≠ 0, Br6c10 ≠ nw, Br6c10 ≠ sw, Br6c10 ≠ swn, Br6c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ns
V-single: Vr6c11 = 1
vertical-line-r6{c10 c11} ==> Ir6c10 = in
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o, Pr7c11 ≠ o, Pr7c11 ≠ sw
B-single: Br6c11 = w
whip[1]: Pr8c10{ew .} ==> Br7c10 ≠ sw, Br8c9 ≠ sw, Br8c9 ≠ wne, Br8c9 ≠ nes, Br7c10 ≠ ne, Br8c9 ≠ o, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ne
whip[1]: Br8c9{swn .} ==> Nr8c9 ≠ 0
whip[1]: Hr6c10{1 .} ==> Pr6c11 ≠ ns, Br5c10 ≠ e, Br6c10 ≠ e, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw
P-single: Pr6c11 = sw
B-single: Br5c10 = s
whip[1]: Br6c10{nes .} ==> Pr7c10 ≠ ne, Nr6c10 ≠ 0, Nr6c10 ≠ 1
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ wne, Br6c9 ≠ nes
whip[1]: Br6c9{swn .} ==> Pr6c9 ≠ o, Pr6c9 ≠ ew, Pr7c9 ≠ o, Pr7c9 ≠ ns, Pr7c9 ≠ nw, Pr7c9 ≠ se, Pr7c9 ≠ ew, Pr7c9 ≠ sw, Pr7c10 ≠ o, Pr7c10 ≠ ns, Pr7c10 ≠ se
P-single: Pr7c9 = ne
whip[1]: Pr7c9{ne .} ==> Br7c9 ≠ o, Br7c8 ≠ n, Br6c8 ≠ n, Br6c8 ≠ o, Br6c8 ≠ s, Br6c8 ≠ w, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ se, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn, Br6c8 ≠ nes, Br7c8 ≠ e, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c9 ≠ e, Br7c9 ≠ s, Br7c9 ≠ w, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ wne
whip[1]: Br7c9{nes .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Nr7c9 ≠ 0
whip[1]: Br7c8{sw .} ==> Pr7c8 ≠ ne, Pr7c8 ≠ se, Pr7c8 ≠ ew, Nr7c8 ≠ 3
whip[1]: Br6c8{wne .} ==> Nr6c8 ≠ 0
whip[1]: Pr7c10{sw .} ==> Br7c10 ≠ nw
whip[1]: Br7c10{ew .} ==> Pr8c11 ≠ o
whip[1]: Pr8c11{sw .} ==> Br8c10 ≠ sw, Br8c10 ≠ o, Br8c10 ≠ s, Br8c10 ≠ w
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Br5c9{ns .} ==> Nr5c9 ≠ 3
whip[1]: Pr4c9{sw .} ==> Br3c8 ≠ nw, Br3c8 ≠ se
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 1, Pr1c10 ≠ o
N-single: Nr1c10 = 3
w[1]-adjacent-1-3-on-edge-in-r1{c9 c10} ==> Vr1c9 = 0
P-single: Pr1c10 = ew
w[1]-1-in-r1c9-asymmetric-ne-corner ==> Pr2c9 ≠ nw, Pr2c9 ≠ ns
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1
w[1]-3-in-r1c7-hit-by-horiz-line-at-ne ==> Vr1c7 = 1, Hr2c7 = 1
w[1]-3-in-r1c7-closed-sw-corner ==> Pr1c8 ≠ sw, Pr1c8 ≠ o
whip[1]: Vr1c9{0 .} ==> Pr1c9 ≠ sw, Br1c8 ≠ ne, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ w
P-single: Pr1c9 = ew
B-single: Br1c9 = n
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ o, Br1c8 ≠ sw
whip[1]: Br1c8{swn .} ==> Nr1c8 ≠ 0
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Vr1c7{1 .} ==> Pr1c7 ≠ ew, Pr2c7 ≠ o, Pr2c7 ≠ se, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c7 ≠ nes
whip[1]: Pr1c6{sw .} ==> Hr1c5 ≠ 0, Br1c5 ≠ se, Br1c6 ≠ se, Br1c5 ≠ s
H-single: Hr1c5 = 1
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
no-vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
vertical-line-r2{c4 c5} ==> Ir2c5 = out
same-colour-in-{r2 r3}c4 ==> Hr3c4 = 0
w[1]-diagonal-3-2-in-{r1c3...r2c4}-non-closed-se-corner ==> Vr1c3 = 1, Hr1c2 = 0
w[1]-diagonal-3-2-in-{r2c3...r1c2}-non-closed-nw-corner ==> Vr2c4 = 1
w[1]-3-in-r2c3-closed-ne-corner ==> Pr3c3 ≠ ne
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw
P-single: Pr1c4 = ew
P-single: Pr3c3 = ew
P-single: Pr2c3 = ne
P-single: Pr1c2 = sw
P-single: Pr2c4 = sw
w[1]-1-in-r1c4-symmetric-sw-corner ==> Pr1c5 ≠ o
P-single: Pr1c5 = ew
no-vertical-line-r2{c2 c3} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = in
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr3c4{0 .} ==> Pr3c4 ≠ ew, Br2c4 ≠ se, Br3c4 ≠ n, Br3c4 ≠ ns
P-single: Pr3c4 = nw
B-single: Br2c4 = ew
whip[1]: Pr3c4{nw .} ==> Br2c3 ≠ swn
B-single: Br2c3 = nes
whip[1]: Vr1c3{1 .} ==> Pr1c3 ≠ ew, Br1c2 ≠ nw, Br1c3 ≠ nes
P-single: Pr1c3 = se
B-single: Br1c3 = swn
B-single: Br1c2 = ew
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Vr2c3{0 .} ==> Br2c2 ≠ ew
whip[1]: Br2c2{sw .} ==> Pr3c2 ≠ ns
whip[1]: Pr3c2{ew .} ==> Br3c2 ≠ sw
whip[1]: Vr1c4{0 .} ==> Br1c4 ≠ w
B-single: Br1c4 = n
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ e, Br1c1 ≠ se
B-single: Br1c1 = wne
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2, Nr1c1 ≠ 1, Pr2c2 ≠ nw, Pr2c1 ≠ se, Pr2c1 ≠ o, Pr1c1 ≠ o, Hr2c1 ≠ 1
H-single: Hr2c1 = 0
N-single: Nr1c1 = 3
P-single: Pr1c1 = se
P-single: Pr2c1 = ns
P-single: Pr2c2 = ns
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = in
different-colours-in-r2{c1 c2} ==> Hr2c2 = 1
w[1]-diagonal-3-2-in-{r2c3...r3c2}-non-closed-sw-corner ==> Hr4c2 = 1
P-single: Pr4c3 = sw
horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
whip[1]: Hr2c1{0 .} ==> Br2c1 ≠ nw, Br2c1 ≠ swn
whip[1]: Br2c1{ew .} ==> Pr3c1 ≠ ne, Pr3c2 ≠ ew, Nr2c1 ≠ 3
P-single: Pr3c2 = ne
whip[1]: Pr3c2{ne .} ==> Br2c2 ≠ s, Br3c1 ≠ ns, Br3c1 ≠ ew, Br3c2 ≠ nw
B-single: Br3c2 = ns
B-single: Br2c2 = sw
whip[1]: Br3c2{ns .} ==> Pr4c2 ≠ ns
P-single: Pr4c2 = ew
whip[1]: Pr4c2{ew .} ==> Vr4c2 ≠ 1, Hr4c1 ≠ 0, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c2 ≠ sw
H-single: Hr4c1 = 1
V-single: Vr4c2 = 0
w[1]-diagonal-3-2s-in-{r2c3...r4c1}-non-closed-sw-end ==> Hr5c1 = 1
P-single: Pr5c2 = sw
B-single: Br4c2 = ne
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
horizontal-line-{r4 r5}c1 ==> Ir5c1 = in
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
whip[1]: Hr4c1{1 .} ==> Pr4c1 ≠ ns
P-single: Pr4c1 = ne
whip[1]: Pr4c1{ne .} ==> Br3c1 ≠ s, Br4c1 ≠ nw
B-single: Br4c1 = ns
B-single: Br3c1 = sw
whip[1]: Br4c1{ns .} ==> Pr5c1 ≠ ns
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ w, Br5c1 ≠ ne, Br5c1 ≠ sw, Br5c1 ≠ nes
B-single: Br5c1 = wne
whip[1]: Br5c1{wne .} ==> Nr5c1 ≠ 2, Nr5c1 ≠ 1, Pr6c2 ≠ sw, Pr6c2 ≠ ew, Pr6c2 ≠ se, Pr6c2 ≠ nw, Pr6c2 ≠ o, Pr6c1 ≠ se, Pr6c1 ≠ ne, Pr6c1 ≠ o, Vr5c2 ≠ 0, Hr6c1 ≠ 1
H-single: Hr6c1 = 0
V-single: Vr5c2 = 1
N-single: Nr5c1 = 3
w[1]-3-in-r5c1-asymmetric-sw-corner ==> Hr5c2 = 0
P-single: Pr6c1 = ns
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
no-horizontal-line-{r5 r6}c1 ==> Ir6c1 = in
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
w[1]-3-in-r7c1-hit-by-verti-line-at-nw ==> Vr7c2 = 1, Hr8c1 = 1
w[1]-3-in-r7c1-closed-se-corner ==> Pr7c1 ≠ se, Pr7c1 ≠ o
whip[1]: Hr6c1{0 .} ==> Br6c1 ≠ n, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ nes
whip[1]: Vr5c2{1 .} ==> Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ nes
whip[1]: Br5c2{esw .} ==> Pr5c3 ≠ ew, Pr5c3 ≠ sw, Nr5c2 ≠ 0
whip[1]: Pr5c3{ns .} ==> Br4c3 ≠ s, Br4c3 ≠ se, Br4c3 ≠ o, Br4c3 ≠ e
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 0
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ e, Br6c1 ≠ o, Br6c1 ≠ s, Br6c1 ≠ se
whip[1]: Br6c1{esw .} ==> Nr6c1 ≠ 0
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr7c2{1 .} ==> Br7c2 ≠ o, Pr7c2 ≠ o, Pr7c2 ≠ ne, Pr7c2 ≠ nw, Pr7c2 ≠ ew, Pr8c2 ≠ o, Pr8c2 ≠ se, Pr8c2 ≠ ew, Pr8c2 ≠ sw, Br7c1 ≠ swn, Br7c2 ≠ n, Br7c2 ≠ e, Br7c2 ≠ s, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ se, Br7c2 ≠ nes
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Br7c1{nes .} ==> Pr8c1 ≠ o
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ s
whip[1]: Pr8c2{nw .} ==> Br8c1 ≠ wne, Br8c2 ≠ nw, Br8c2 ≠ swn, Br8c2 ≠ wne
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 3
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ esw, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn
whip[1]: Br6c1{sw .} ==> Nr6c1 ≠ 3
whip[1]: Hr8c1{1 .} ==> Pr8c1 ≠ ns, Pr8c2 ≠ ne, Pr8c2 ≠ ns, Br7c1 ≠ wne, Br8c1 ≠ w, Br8c1 ≠ ew
P-single: Pr8c2 = nw
whip[1]: Pr8c2{nw .} ==> Br8c2 ≠ n, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br8c2 ≠ w, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ nes
whip[1]: Br8c2{se .} ==> Pr8c3 ≠ nw, Pr8c3 ≠ ew, Pr9c2 ≠ ne, Pr9c2 ≠ ns, Nr8c2 ≠ 3
whip[1]: Pr9c2{sw .} ==> Br9c1 ≠ w
whip[1]: Br9c1{wne .} ==> Nr9c1 ≠ 1
whip[1]: Pr8c3{se .} ==> Vr8c3 ≠ 0, Br7c3 ≠ ne, Br7c3 ≠ sw, Br8c3 ≠ ne, Br8c3 ≠ ns, Br8c3 ≠ se, Br8c3 ≠ nes, Br8c2 ≠ o, Br8c2 ≠ s, Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ e, Br8c3 ≠ s
V-single: Vr8c3 = 1
whip[1]: Vr8c3{1 .} ==> Pr9c3 ≠ se, Pr9c3 ≠ ew
whip[1]: Pr9c3{nw .} ==> Hr9c3 ≠ 1, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ nw
H-single: Hr9c3 = 0
w[3]-adjacent-3-2-in-{r10 r9}c3-noline-north ==> Hr10c4 = 0, Hr10c2 = 0
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
different-colours-in-r9{c1 c2} ==> Hr9c2 = 1

LOOP[6]: Vr9c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
no-vertical-line-r8{c1 c2} ==> Ir8c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
vertical-line-r7{c1 c2} ==> Ir7c1 = out
vertical-line-r8{c2 c3} ==> Ir8c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = out
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
w[1]-2-in-r9c3-open-nw-corner ==> Vr9c4 = 1, Vr10c4 = 0
w[1]-2-in-r9c2-open-se-corner ==> Hr9c2 = 1
w[1]-3-in-r9c4-closed-nw-corner ==> Pr10c5 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ o
w[1]-3-in-r10c3-closed-nw-corner ==> Pr11c4 ≠ nw
P-single: Pr11c4 = ew
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-vertical-line-r8{c4 c5} ==> Ir8c5 = out
no-vertical-line-r8{c5 c6} ==> Ir8c6 = out
horizontal-line-{r7 r8}c6 ==> Ir7c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
no-vertical-line-r6{c5 c6} ==> Ir6c5 = in
no-vertical-line-r6{c4 c5} ==> Ir6c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = in
vertical-line-r7{c4 c5} ==> Ir7c5 = out
vertical-line-r6{c3 c4} ==> Ir6c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
vertical-line-r9{c4 c5} ==> Ir9c4 = in
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = in
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1

LOOP[8]: Hr11c4-Hr11c3-Vr10c3-Hr10c3-Vr9c4-Hr9c4-Vr9c5- ==> Vr10c5 = 0
w[0]-adjacent-3-in-r9c4-nolines-south ==> Hr10c5 = 1
horizontal-line-{r9 r10}c5 ==> Ir10c5 = in
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1

LOOP[10]: Hr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c3-Vr9c4-Hr9c4-Vr9c5-Hr10c5- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
same-colour-in-r5{c2 c3} ==> Vr5c3 = 0
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
same-colour-in-r7{c0 c1} ==> Vr7c1 = 0
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
w[1]-3-in-r7c1-closed-ne-corner ==> Pr8c1 ≠ ne
P-single: Pr8c1 = se
no-vertical-line-r6{c1 c2} ==> Ir6c2 = in
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1

LOOP[18]: Vr6c3-Hr6c2-Vr5c2-Hr5c1-Vr5c1-Vr6c1-Hr7c1-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr8c3- ==> Vr7c3 = 0
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
same-colour-in-r7{c3 c4} ==> Vr7c4 = 0
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
whip[1]: Hr9c3{0 .} ==> Pr9c4 ≠ nw, Pr9c4 ≠ ew
whip[1]: Pr9c4{se .} ==> Br8c4 ≠ ne, Br9c4 ≠ nes, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ e
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0
whip[1]: Br9c4{wne .} ==> Pr9c5 ≠ o, Pr9c5 ≠ ne, Pr10c4 ≠ ew
whip[1]: Pr10c4{nw .} ==> Br9c4 ≠ esw, Br9c4 ≠ swn, Br10c4 ≠ ns, Br10c4 ≠ nw, Br10c4 ≠ wne, Br10c4 ≠ nes
B-single: Br9c4 = wne
whip[1]: Br9c4{wne .} ==> Pr10c5 ≠ sw, Pr10c5 ≠ ew, Pr9c5 ≠ ew, Pr9c5 ≠ se, Pr9c5 ≠ nw, Pr9c5 ≠ ns, Pr9c4 ≠ ns
P-single: Pr9c4 = se
P-single: Pr9c5 = sw
whip[1]: Pr9c4{se .} ==> Br8c4 ≠ w, Br8c3 ≠ ew, Br8c3 ≠ wne, Br8c4 ≠ nw, Br8c4 ≠ ew, Br8c4 ≠ wne
whip[1]: Br8c4{nes .} ==> Pr8c4 ≠ ns
P-single: Pr8c4 = ew
whip[1]: Pr8c4{ew .} ==> Br8c4 ≠ s, Br8c3 ≠ w, Br7c4 ≠ ne, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ sw, Br8c4 ≠ se
B-single: Br7c3 = ns
B-single: Br8c3 = nw
whip[1]: Br7c3{ns .} ==> Pr8c3 ≠ ns, Pr7c4 ≠ ns, Pr7c3 ≠ ns, Pr7c3 ≠ sw
P-single: Pr8c3 = se
whip[1]: Pr8c3{se .} ==> Br7c2 ≠ ew, Br7c2 ≠ wne
whip[1]: Br7c2{nw .} ==> Nr7c2 ≠ 3
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ nes, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ wne, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ w, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ w, Br6c3 ≠ ne
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 0
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ sw, Br6c4 ≠ ne
whip[1]: Br8c3{nw .} ==> Nr8c3 ≠ 3, Nr8c3 ≠ 1, Nr8c3 ≠ 0
N-single: Nr8c3 = 2
whip[1]: Br8c4{nes .} ==> Pr8c5 ≠ ns, Nr8c4 ≠ 1
whip[1]: Pr8c5{ew .} ==> Vr8c5 ≠ 1, Br7c5 ≠ esw, Br7c5 ≠ swn, Br8c4 ≠ nes
B-single: Br8c4 = ns
whip[1]: Br8c4{ns .} ==> Nr8c4 ≠ 3
N-single: Nr8c4 = 2
whip[1]: Br7c5{nes .} ==> Pr7c5 ≠ ns, Pr7c6 ≠ o, Pr7c6 ≠ ne, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr8c6 ≠ ew, Pr8c6 ≠ sw
P-single: Pr7c6 = sw
whip[1]: Pr7c6{sw .} ==> Br7c6 ≠ ns, Br7c6 ≠ ne, Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br6c6 ≠ ns, Br6c6 ≠ w, Br6c6 ≠ s, Br6c5 ≠ ne, Br6c5 ≠ w, Br6c5 ≠ e, Br6c5 ≠ n, Br6c5 ≠ o, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ esw, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br6c6 ≠ nes, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c6 ≠ nes
whip[1]: Br7c6{esw .} ==> Pr7c7 ≠ nw, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Nr7c6 ≠ 0
whip[1]: Br6c6{ne .} ==> Pr6c6 ≠ ns, Pr6c6 ≠ se, Nr6c6 ≠ 3, Pr6c6 ≠ sw
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 0
whip[1]: Pr8c6{ns .} ==> Hr8c5 ≠ 1, Br7c5 ≠ nes, Br8c6 ≠ s, Br8c6 ≠ nw, Br8c6 ≠ se, Br8c6 ≠ swn, Br8c6 ≠ wne, Br8c6 ≠ o, Br8c6 ≠ e
B-single: Br7c5 = wne
whip[1]: Br7c5{wne .} ==> Pr8c5 ≠ ew, Pr7c5 ≠ ew
P-single: Pr6c4 = se
P-single: Pr7c4 = nw
P-single: Pr7c5 = se
P-single: Pr8c5 = nw
w[1]-1-in-r5c4-asymmetric-sw-corner ==> Pr5c5 ≠ ew, Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ ns
whip[1]: Pr6c4{se .} ==> Br6c3 ≠ s, Br5c4 ≠ w, Br5c4 ≠ e, Br5c4 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ nes, Br6c3 ≠ ns, Br6c3 ≠ sw, Br6c3 ≠ swn, Br6c3 ≠ nes, Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ ew
B-single: Br6c4 = nw
B-single: Br5c4 = s
whip[1]: Br6c4{nw .} ==> Pr6c5 ≠ se, Pr6c5 ≠ ns
whip[1]: Pr6c5{ew .} ==> Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br6c5 ≠ sw, Br6c5 ≠ swn, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ e, Br5c5 ≠ ne
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Br6c5{ns .} ==> Nr6c5 ≠ 3
whip[1]: Br5c4{s .} ==> Pr5c4 ≠ ns, Pr5c4 ≠ ne, Pr5c4 ≠ se, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Pr5c5 ≠ sw, Pr6c5 ≠ nw
P-single: Pr6c5 = ew
whip[1]: Pr6c5{ew .} ==> Br6c5 ≠ s, Br5c5 ≠ w, Br5c5 ≠ nw, Br5c5 ≠ ew, Br5c5 ≠ wne
B-single: Br6c5 = ns
whip[1]: Br6c5{ns .} ==> Nr6c5 ≠ 1, Pr6c6 ≠ ne, Pr6c6 ≠ o
N-single: Nr6c5 = 2
whip[1]: Pr3c9{nw .} ==> Vr2c9 ≠ 0, Br2c8 ≠ w, Br2c8 ≠ nw, Br3c8 ≠ sw, Br2c8 ≠ o, Br2c8 ≠ n, Br2c9 ≠ e
V-single: Vr2c9 = 1
B-single: Br2c9 = ew
vertical-line-r2{c8 c9} ==> Ir2c8 = out
different-colours-in-{r2 r3}c8 ==> Hr3c8 = 1
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
w[1]-3-in-r1c7-hit-by-horiz-line-at-se ==> Hr1c7 = 1, Vr2c8 = 0
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ se, Pr2c8 ≠ nw, Pr2c8 ≠ o
P-single: Pr1c7 = se

LOOP[20]: Hr3c8-Vr2c9-Hr2c8-Hr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c9-Vr4c9-Hr4c8- ==> Vr3c8 = 0
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = out
horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
w[1]-3-in-r3c6-hit-by-horiz-line-at-ne ==> Vr3c6 = 1, Hr4c6 = 1
w[1]-3-in-r3c6-closed-sw-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ ne, Pr3c7 ≠ o
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1

LOOP[24]: Hr4c4-Vr4c4-Hr5c3-Vr4c3-Hr4c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Vr2c2-Hr3c2-Hr3c3-Vr2c4-Hr2c3-Vr1c3-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5- ==> Vr3c5 = 0
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
w[0]-adjacent-3-in-r3c6-nolines-north ==> Hr3c5 = 1, Vr4c7 = 0, Hr4c7 = 0
w[1]-2-in-r4c7-open-nw-corner ==> Hr5c7 = 1, Vr4c8 = 1, Vr5c8 = 0
w[1]-3-in-r3c6-closed-se-corner ==> Pr3c6 ≠ se, Pr3c6 ≠ o
no-vertical-line-r5{c7 c8} ==> Ir5c7 = out
horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1

LOOP[52]: Hr5c5-Vr4c5-Hr4c4-Vr4c4-Hr5c3-Vr4c3-Hr4c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Vr2c2-Hr3c2-Hr3c3-Vr2c4-Hr2c3-Vr1c3-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Vr3c6-Hr4c6-Vr3c7-Hr3c7-Hr3c8-Vr2c9-Hr2c8-Hr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c9-Vr4c9-Hr4c8-Vr4c8-Hr5c7- ==> Hr5c6 = 0
w[1]-diagonal-3-2s-in-{r10c1...r5c6}-non-closed-ne-end ==> Vr5c7 = 1
vertical-line-r5{c6 c7} ==> Ir5c6 = in
same-colour-in-{r5 r6}c6 ==> Hr6c6 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
whip[1]: Vr2c9{1 .} ==> Pr2c9 ≠ o
P-single: Pr2c9 = sw
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ e, Br1c8 ≠ n, Br1c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw
whip[1]: Br2c8{nes .} ==> Pr2c8 ≠ ns, Pr2c8 ≠ sw, Pr3c8 ≠ ne, Nr2c8 ≠ 0, Nr2c8 ≠ 1
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ esw, Br2c7 ≠ nes, Br3c7 ≠ sw, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ w, Br3c7 ≠ o, Br3c7 ≠ s, Br3c7 ≠ w
whip[1]: Br3c7{nes .} ==> Nr3c7 ≠ 0
whip[1]: Br2c7{wne .} ==> Nr2c7 ≠ 0
whip[1]: Pr2c8{ew .} ==> Br1c7 ≠ esw, Br2c7 ≠ ew, Br2c7 ≠ wne, Br2c8 ≠ wne, Br2c7 ≠ e, Br2c7 ≠ ne
whip[1]: Br2c7{swn .} ==> Pr3c7 ≠ ns, Pr3c7 ≠ nw, Pr3c8 ≠ ns
whip[1]: Pr3c8{sw .} ==> Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ e
whip[1]: Pr3c7{ew .} ==> Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ esw, Br2c6 ≠ nes, Br2c7 ≠ sw, Br2c7 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes, Br2c6 ≠ e, Br2c6 ≠ ne
whip[1]: Br2c6{sw .} ==> Pr2c7 ≠ ns, Nr2c6 ≠ 3
P-single: Pr2c7 = ne
whip[1]: Pr2c7{ne .} ==> Br2c6 ≠ n, Br1c7 ≠ wne, Br2c6 ≠ ns, Br2c7 ≠ s
B-single: Br2c7 = ns
B-single: Br1c7 = swn
whip[1]: Br2c7{ns .} ==> Nr2c7 ≠ 3, Nr2c7 ≠ 1, Pr2c8 ≠ ne
N-single: Nr2c7 = 2
P-single: Pr2c8 = ew
whip[1]: Pr2c8{ew .} ==> Br1c8 ≠ swn
B-single: Br1c8 = ns
whip[1]: Br1c8{ns .} ==> Nr1c8 ≠ 3, Nr1c8 ≠ 1, Pr1c8 ≠ se
N-single: Nr1c8 = 2
P-single: Pr1c8 = ew
whip[1]: Br2c6{sw .} ==> Pr2c6 ≠ ew
P-single: Pr2c6 = nw
whip[1]: Pr2c6{nw .} ==> Br1c5 ≠ ns, Br1c6 ≠ ne, Br2c5 ≠ wne, Br2c6 ≠ w, Br2c6 ≠ sw
B-single: Br1c6 = ew
B-single: Br1c5 = nes
whip[1]: Br1c6{ew .} ==> Pr1c6 ≠ ew
P-single: Pr1c6 = sw
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 2, Nr1c5 ≠ 1
N-single: Nr1c5 = 3
whip[1]: Br2c6{s .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ ns, Nr2c6 ≠ 2
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c6 ≠ swn, Br3c5 ≠ o, Br3c5 ≠ e, Br3c5 ≠ s, Br3c5 ≠ w
B-single: Br3c6 = esw
B-single: Br2c5 = swn
whip[1]: Br3c6{esw .} ==> Pr4c7 ≠ sw, Pr4c7 ≠ ew, Pr4c7 ≠ ns, Pr4c7 ≠ ne, Pr4c7 ≠ o, Pr4c6 ≠ sw, Pr4c6 ≠ ew, Pr4c6 ≠ se, Pr4c6 ≠ nw, Pr4c6 ≠ ns, Pr4c6 ≠ o, Pr3c7 ≠ ew, Pr3c6 ≠ ew
P-single: Pr5c8 = nw
P-single: Pr3c6 = sw
P-single: Pr3c7 = se
P-single: Pr4c6 = ne
P-single: Pr4c7 = nw
whip[1]: Pr5c8{nw .} ==> Br4c8 ≠ e, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c8 ≠ ne, Br5c7 ≠ ne, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c8 ≠ w, Br5c8 ≠ sw
B-single: Br4c7 = se
whip[1]: Br4c7{se .} ==> Pr5c7 ≠ ns, Pr4c8 ≠ ew, Pr4c8 ≠ nw
whip[1]: Pr4c8{se .} ==> Br3c7 ≠ ns, Br3c7 ≠ swn, Br3c7 ≠ nes
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ wne, Br4c6 ≠ nes, Br5c6 ≠ sw, Br4c6 ≠ e, Br4c6 ≠ ne, Br5c6 ≠ ne
whip[1]: Br5c8{s .} ==> Pr6c8 ≠ ne, Pr6c8 ≠ ns, Nr5c8 ≠ 2
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 1
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ ns, Br3c5 ≠ n, Br2c6 ≠ s
B-single: Br2c6 = o
whip[1]: Br2c6{o .} ==> Nr2c6 ≠ 1
N-single: Nr2c6 = 0
whip[1]: Br3c5{nes .} ==> Pr3c5 ≠ ns, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw, Nr3c5 ≠ 0, Nr3c5 ≠ 1
P-single: Pr3c5 = ne
whip[1]: Pr3c5{ne .} ==> Br3c4 ≠ e, Br3c4 ≠ se
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 2
whip[1]: Pr3c7{se .} ==> Br3c7 ≠ n, Br3c7 ≠ ne
whip[1]: Br3c7{wne .} ==> Nr3c7 ≠ 1
whip[1]: Pr4c6{ne .} ==> Br4c6 ≠ o, Br4c5 ≠ n, Br3c5 ≠ nes, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ nw, Br4c6 ≠ sw, Br4c6 ≠ swn
B-single: Br3c5 = ne
whip[1]: Br3c5{ne .} ==> Nr3c5 ≠ 3, Pr4c5 ≠ se, Pr4c5 ≠ ew
N-single: Nr3c5 = 2
whip[1]: Pr4c5{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ swn, Br4c4 ≠ e
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 2
whip[1]: Br4c6{ns .} ==> Pr5c6 ≠ ne, Pr5c6 ≠ ns, Nr4c6 ≠ 0, Nr4c6 ≠ 3
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ se, Br5c6 ≠ nw, Br5c6 ≠ se, Br4c5 ≠ o, Br4c5 ≠ w, Br5c5 ≠ s
whip[1]: Br5c5{nes .} ==> Pr5c5 ≠ o, Nr5c5 ≠ 1
P-single: Pr5c5 = ne
whip[1]: Pr5c5{ne .} ==> Br4c4 ≠ o, Br4c4 ≠ s, Br4c5 ≠ s
B-single: Br4c5 = sw
B-single: Br4c4 = wne
whip[1]: Br4c5{sw .} ==> Nr4c5 ≠ 3, Nr4c5 ≠ 1, Nr4c5 ≠ 0, Pr4c5 ≠ o
N-single: Nr4c5 = 2
P-single: Pr4c5 = sw
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ o
B-single: Br3c4 = s
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 0, Pr4c4 ≠ o
N-single: Nr3c4 = 1
P-single: Pr4c4 = se
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ w, Br4c3 ≠ sw
whip[1]: Br4c3{esw .} ==> Pr5c4 ≠ o, Nr4c3 ≠ 1
P-single: Pr5c4 = nw
whip[1]: Pr5c4{nw .} ==> Br4c3 ≠ ew, Br5c3 ≠ w
B-single: Br5c3 = n
B-single: Br4c3 = esw
whip[1]: Br5c3{n .} ==> Pr5c3 ≠ ns, Pr6c3 ≠ ne, Pr6c3 ≠ ns, Pr6c3 ≠ nw, Pr6c3 ≠ se, Pr6c3 ≠ ew, Nr5c3 ≠ 2, Nr5c3 ≠ 3
N-single: Nr5c3 = 1
P-single: Pr5c3 = ne
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ ew, Br5c2 ≠ esw
whip[1]: Br5c2{sw .} ==> Nr5c2 ≠ 3
whip[1]: Pr6c3{sw .} ==> Br6c2 ≠ ew, Br6c2 ≠ e, Br6c2 ≠ ns
whip[1]: Br6c2{wne .} ==> Pr6c2 ≠ ns
P-single: Pr6c2 = ne
whip[1]: Pr6c2{ne .} ==> Br5c2 ≠ w, Br6c1 ≠ ew, Br6c2 ≠ s, Br6c2 ≠ wne
B-single: Br6c2 = ne
B-single: Br5c2 = sw
whip[1]: Br6c2{ne .} ==> Nr6c2 ≠ 3, Nr6c2 ≠ 1, Pr7c2 ≠ se, Pr7c2 ≠ ns, Pr6c3 ≠ o, Pr7c3 ≠ ew
N-single: Nr6c2 = 2
P-single: Pr7c3 = ne
P-single: Pr6c3 = sw
P-single: Pr7c2 = sw
whip[1]: Pr7c3{ne .} ==> Br6c3 ≠ se, Br7c2 ≠ nw
B-single: Br7c2 = w
B-single: Br6c3 = esw
whip[1]: Br7c2{w .} ==> Nr7c2 ≠ 2
N-single: Nr7c2 = 1
whip[1]: Br6c3{esw .} ==> Nr6c3 ≠ 2, Nr6c3 ≠ 1
N-single: Nr6c3 = 3
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ w, Br7c1 ≠ esw
B-single: Br7c1 = nes
B-single: Br6c1 = sw
whip[1]: Br7c1{nes .} ==> Pr7c1 ≠ ns
P-single: Pr7c1 = ne
whip[1]: Br6c1{sw .} ==> Nr6c1 ≠ 1
N-single: Nr6c1 = 2
whip[1]: Br5c2{sw .} ==> Nr5c2 ≠ 1
N-single: Nr5c2 = 2
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 2
N-single: Nr4c3 = 3
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 1, Nr4c4 ≠ 0
N-single: Nr4c4 = 3
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 2
N-single: Nr2c5 = 3
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 1
N-single: Nr2c9 = 2
whip[1]: Hr3c8{1 .} ==> Pr3c8 ≠ sw, Pr3c9 ≠ ns, Br2c8 ≠ ne, Br3c8 ≠ ew
P-single: Pr3c9 = nw
P-single: Pr3c8 = ew
B-single: Br3c8 = ns
B-single: Br2c8 = nes
whip[1]: Pr3c9{nw .} ==> Vr3c9 ≠ 1
whip[1]: Pr3c8{ew .} ==> Br3c7 ≠ wne
B-single: Br3c7 = nw
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 3, Pr4c8 ≠ ns
N-single: Nr3c7 = 2
P-single: Pr4c8 = se
whip[1]: Pr4c8{se .} ==> Br4c8 ≠ ew
B-single: Br4c8 = wne
whip[1]: Br4c8{wne .} ==> Nr4c8 ≠ 2, Pr4c9 ≠ ns
N-single: Nr4c8 = 3
P-single: Pr4c9 = sw
whip[1]: Br2c8{nes .} ==> Nr2c8 ≠ 2
N-single: Nr2c8 = 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Hr5c6{0 .} ==> Pr5c6 ≠ ew, Pr5c7 ≠ ew, Br4c6 ≠ ns, Br5c6 ≠ ns
P-single: Pr5c7 = se
P-single: Pr5c6 = sw
B-single: Br5c6 = ew
B-single: Br4c6 = n
whip[1]: Pr5c7{se .} ==> Br5c7 ≠ ns
B-single: Br5c7 = nw
whip[1]: Br5c7{nw .} ==> Pr6c7 ≠ ew, Hr6c7 ≠ 1
H-single: Hr6c7 = 0
P-single: Pr6c7 = ns
no-horizontal-line-{r5 r6}c7 ==> Ir6c7 = out
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1

LOOP[82]: Vr6c7-Vr5c7-Hr5c7-Vr4c8-Hr4c8-Vr4c9-Hr5c9-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Vr1c7-Hr2c7-Hr2c8-Vr2c9-Hr3c8-Hr3c7-Vr3c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Vr1c3-Hr2c3-Vr2c4-Hr3c3-Hr3c2-Vr2c2-Vr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Hr4c2-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Hr6c4-Vr6c4-Hr7c3-Vr6c3-Hr6c2-Vr5c2-Hr5c1-Vr5c1-Vr6c1-Hr7c1-Vr7c2-Hr8c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Hr9c2-Vr8c3-Hr8c3-Hr8c4-Vr7c5-Hr7c5-Vr7c6-Hr8c6- ==> Vr7c7 = 0
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
whip[1]: Hr6c7{0 .} ==> Br6c7 ≠ n, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes
whip[1]: Pr6c7{ns .} ==> Br6c7 ≠ e, Br6c7 ≠ o, Br6c6 ≠ n, Br6c6 ≠ o, Br6c6 ≠ ne, Br6c7 ≠ s, Br6c7 ≠ se
B-single: Br6c6 = e
whip[1]: Br6c6{e .} ==> Nr6c6 ≠ 2, Nr6c6 ≠ 0, Pr7c7 ≠ o, Pr6c6 ≠ ew, Pr7c7 ≠ se
N-single: Nr6c6 = 1
w[1]-diagonal-1-1-in-{r6c6...r7c7}-with-no-nw-outer-sides ==> Hr8c7 = 0, Vr7c8 = 0
P-single: Pr6c6 = nw
w[1]-1-in-r7c7-asymmetric-nw-corner ==> Pr8c8 ≠ sw, Pr8c8 ≠ ew, Pr8c8 ≠ ns, Pr8c8 ≠ ne
no-vertical-line-r7{c7 c8} ==> Ir7c8 = in
no-vertical-line-r7{c8 c9} ==> Ir7c9 = in
horizontal-line-{r6 r7}c9 ==> Ir6c9 = out
vertical-line-r6{c8 c9} ==> Ir6c8 = in
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = in
different-colours-in-r8{c6 c7} ==> Hr8c7 = 1
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-{r5 r6}c8 ==> Hr6c8 = 1
w[0]-adjacent-3-in-r6c9-nolines-north ==> Vr6c10 = 1, Vr7c10 = 0, Hr7c10 = 0
w[1]-2-in-r7c10-open-nw-corner ==> Hr8c10 = 1, Vr7c11 = 1, Vr8c11 = 0
w[1]-3-in-r6c9-closed-se-corner ==> Pr6c9 ≠ se
P-single: Pr6c9 = sw
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
different-colours-in-{r8 r9}c10 ==> Hr9c10 = 1
whip[1]: Hr8c7{0 .} ==> Pr8c7 ≠ ne, Pr8c7 ≠ se, Pr8c7 ≠ ew, Pr8c8 ≠ nw, Br7c7 ≠ s, Br8c7 ≠ n, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ nes
whip[1]: Br7c7{w .} ==> Pr7c8 ≠ sw
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ sw
whip[1]: Br6c7{esw .} ==> Nr6c7 ≠ 0
whip[1]: Pr8c8{se .} ==> Br7c8 ≠ sw, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ ew, Br8c8 ≠ sw, Br7c7 ≠ e, Br7c8 ≠ w
whip[1]: Br7c8{s .} ==> Pr7c8 ≠ ns, Nr7c8 ≠ 2
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ ew
whip[1]: Br6c7{esw .} ==> Nr6c7 ≠ 2
whip[1]: Pr6c6{nw .} ==> Br5c5 ≠ ns
B-single: Br5c5 = nes
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 2
N-single: Nr5c5 = 3
whip[1]: Vr8c7{1 .} ==> Br8c7 ≠ o, Pr8c7 ≠ o, Pr8c7 ≠ nw, Pr9c7 ≠ o, Pr9c7 ≠ se, Pr9c7 ≠ ew, Pr9c7 ≠ sw, Br8c6 ≠ n, Br8c6 ≠ w, Br8c6 ≠ ns, Br8c6 ≠ sw, Br8c7 ≠ e, Br8c7 ≠ s, Br8c7 ≠ se
whip[1]: Br8c7{esw .} ==> Nr8c7 ≠ 0
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0, Nr8c6 ≠ 1
whip[1]: Pr9c7{nw .} ==> Br9c6 ≠ ne, Br9c7 ≠ nw
whip[1]: Br9c7{sw .} ==> Pr10c8 ≠ o, Pr10c8 ≠ se
whip[1]: Pr10c8{sw .} ==> Br10c8 ≠ nw, Br10c8 ≠ swn, Br10c8 ≠ wne
whip[1]: Br9c6{sw .} ==> Pr10c6 ≠ o, Pr10c6 ≠ sw
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ wne, Br10c5 ≠ nes, Br10c5 ≠ ne
whip[1]: Pr8c7{sw .} ==> Br7c6 ≠ esw, Br7c6 ≠ w
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 1, Nr7c6 ≠ 3
N-single: Nr7c6 = 2
whip[1]: Vr6c8{1 .} ==> Pr6c8 ≠ o, Pr7c8 ≠ o, Br6c7 ≠ w, Br6c8 ≠ e, Br6c8 ≠ ne
P-single: Pr7c8 = nw
P-single: Pr6c8 = se
B-single: Br6c7 = esw
w[1]-1-in-r7c7-asymmetric-ne-corner ==> Pr8c7 ≠ ns
P-single: Pr8c7 = sw
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ w
B-single: Br7c7 = n
whip[1]: Br7c7{n .} ==> Pr7c7 ≠ ns
P-single: Pr8c6 = ne
P-single: Pr7c7 = ne
whip[1]: Pr8c6{ne .} ==> Vr8c6 ≠ 1, Br7c6 ≠ ew, Br8c6 ≠ ew, Br8c6 ≠ esw
B-single: Br7c6 = sw
whip[1]: Br8c6{nes .} ==> Pr9c6 ≠ ne, Pr9c6 ≠ ns, Pr9c6 ≠ nw
whip[1]: Pr6c8{se .} ==> Br5c8 ≠ o, Br6c8 ≠ ew
B-single: Br6c8 = wne
B-single: Br5c8 = s
whip[1]: Br6c8{wne .} ==> Nr6c8 ≠ 2, Nr6c8 ≠ 1
N-single: Nr6c8 = 3
whip[1]: Br5c8{s .} ==> Nr5c8 ≠ 0
N-single: Nr5c8 = 1
whip[1]: Br6c7{esw .} ==> Nr6c7 ≠ 1
N-single: Nr6c7 = 3
whip[1]: Hr6c9{0 .} ==> Pr6c10 ≠ ew, Br5c9 ≠ ns, Br6c9 ≠ swn
P-single: Pr6c10 = se
B-single: Br6c9 = esw
B-single: Br5c9 = n
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ ne, Br6c10 ≠ nes
B-single: Br6c10 = wne
whip[1]: Br6c10{wne .} ==> Nr6c10 ≠ 2, Pr7c10 ≠ sw, Pr7c10 ≠ ew, Pr7c11 ≠ nw
N-single: Nr6c10 = 3
P-single: Pr8c11 = nw
P-single: Pr7c11 = ns
P-single: Pr7c10 = nw
whip[1]: Pr8c11{nw .} ==> Br8c10 ≠ e, Br7c10 ≠ ns, Br7c10 ≠ ew, Br8c10 ≠ ne, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ wne, Br8c10 ≠ nes
B-single: Br7c10 = se
whip[1]: Br7c10{se .} ==> Pr8c10 ≠ nw, Pr8c10 ≠ ns
whip[1]: Pr8c10{ew .} ==> Br7c9 ≠ nes, Br7c9 ≠ ne
whip[1]: Br7c9{ns .} ==> Nr7c9 ≠ 3
whip[1]: Br8c10{swn .} ==> Pr9c11 ≠ ns, Pr9c11 ≠ nw
whip[1]: Pr9c11{sw .} ==> Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ ew, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ n, Br9c10 ≠ e, Br9c10 ≠ ns
whip[1]: Br5c9{n .} ==> Nr5c9 ≠ 2
N-single: Nr5c9 = 1
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w
B-single: Br8c11 = o
whip[1]: Hr9c10{1 .} ==> Br9c10 ≠ o, Pr9c11 ≠ o, Pr9c10 ≠ o, Pr9c10 ≠ ns, Pr9c10 ≠ nw, Pr9c10 ≠ sw, Br8c10 ≠ n, Br8c10 ≠ nw, Br9c10 ≠ s, Br9c10 ≠ w, Br9c10 ≠ sw
P-single: Pr9c11 = sw
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0, Nr9c10 ≠ 1
whip[1]: Br8c10{swn .} ==> Nr8c10 ≠ 1
whip[1]: Pr9c10{ew .} ==> Br8c9 ≠ se, Br8c9 ≠ esw, Br9c9 ≠ wne, Br9c9 ≠ nes, Br9c9 ≠ ne
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ sw, Br10c6 ≠ sw, Br10c6 ≠ wne, Br10c6 ≠ nes, Br9c7 ≠ ne, Br10c6 ≠ o, Br10c6 ≠ s, Br10c6 ≠ w, Br10c6 ≠ ne
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 0
whip[1]: Pr8c9{ew .} ==> Hr8c9 ≠ 0, Br8c9 ≠ ew, Br7c9 ≠ n, Br8c9 ≠ e
H-single: Hr8c9 = 1
B-single: Br7c9 = ns
horizontal-line-{r7 r8}c9 ==> Ir8c9 = out
same-colour-in-r8{c9 c10} ==> Vr8c10 = 0
whip[1]: Hr8c9{1 .} ==> Pr8c10 ≠ se
P-single: Pr8c10 = ew
whip[1]: Pr8c10{ew .} ==> Br8c10 ≠ swn
B-single: Br8c10 = ns
whip[1]: Br8c10{ns .} ==> Nr8c10 ≠ 3, Pr9c10 ≠ ne
N-single: Nr8c10 = 2
whip[1]: Pr9c10{ew .} ==> Br9c9 ≠ sw, Br9c9 ≠ o, Br9c9 ≠ s, Br9c9 ≠ w
whip[1]: Br9c9{swn .} ==> Nr9c9 ≠ 0
whip[1]: Br7c9{ns .} ==> Nr7c9 ≠ 1
N-single: Nr7c9 = 2
whip[1]: Pr9c9{se .} ==> Br8c9 ≠ swn, Br9c8 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ ew, Br9c9 ≠ esw, Br9c9 ≠ n
whip[1]: Br9c8{sw .} ==> Pr10c8 ≠ sw
whip[1]: Br8c9{nw .} ==> Nr8c9 ≠ 3
whip[1]: Br4c6{n .} ==> Nr4c6 ≠ 2
N-single: Nr4c6 = 1
whip[1]: Pr7c4{nw .} ==> Br7c4 ≠ ns
B-single: Br7c4 = se
whip[1]: Pr9c5{sw .} ==> Br9c5 ≠ ns, Br9c5 ≠ ne, Br9c5 ≠ s, Br9c5 ≠ e, Br9c5 ≠ n, Br9c5 ≠ o, Hr9c5 ≠ 1, Br9c5 ≠ nw, Br9c5 ≠ se, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes
whip[1]: Br9c5{esw .} ==> Pr9c6 ≠ ew, Pr9c6 ≠ sw, Nr9c5 ≠ 0
w[1]-1-in-r10c7-symmetric-nw-corner ==> Pr11c8 ≠ nw, Pr11c8 ≠ o
whip[1]: Pr11c8{ew .} ==> Br11c8 ≠ o, Hr11c8 ≠ 0, Br10c8 ≠ ew, Br10c7 ≠ n, Br10c7 ≠ w, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ w, Br10c8 ≠ ne
H-single: Hr11c8 = 1
B-single: Br11c8 = n
horizontal-line-{r10 r11}c8 ==> Ir10c8 = in
same-colour-in-r10{c8 c9} ==> Vr10c9 = 0
whip[1]: Hr11c8{1 .} ==> Pr11c9 ≠ o, Pr11c9 ≠ ne
whip[1]: Pr11c9{ew .} ==> Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ o, Br10c9 ≠ n, Br10c9 ≠ e, Br10c9 ≠ ne
whip[1]: Br10c9{nes .} ==> Nr10c9 ≠ 0
whip[1]: Vr10c9{0 .} ==> Pr11c9 ≠ nw, Pr10c9 ≠ ns, Pr10c9 ≠ se, Pr10c9 ≠ sw, Br10c8 ≠ se, Br10c8 ≠ esw, Br10c8 ≠ nes, Br10c9 ≠ w, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ wne
P-single: Pr11c9 = ew
whip[1]: Pr11c9{ew .} ==> Br11c9 ≠ o
B-single: Br11c9 = n
whip[1]: Br10c8{sw .} ==> Nr10c8 ≠ 0, Nr10c8 ≠ 3
whip[1]: Br10c7{s .} ==> Hr10c7 ≠ 1, Vr10c7 ≠ 1, Pr11c7 ≠ ne, Pr11c7 ≠ nw, Pr10c7 ≠ se, Pr10c8 ≠ nw, Pr10c8 ≠ ew
V-single: Vr10c7 = 0
H-single: Hr10c7 = 0
w[1]-diagonal-3-2s-in-{r6c10...r9c7}-non-closed-sw-end ==> Vr9c7 = 1
P-single: Pr9c7 = ns
P-single: Pr10c7 = nw
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = in
vertical-line-r9{c6 c7} ==> Ir9c6 = out
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
same-colour-in-r9{c5 c6} ==> Vr9c6 = 0
P-single: Pr9c6 = o
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Vr10c7{0 .} ==> Br10c6 ≠ e, Br10c6 ≠ se, Br10c6 ≠ ew, Br10c6 ≠ esw
whip[1]: Br10c6{swn .} ==> Pr10c6 ≠ ns, Pr10c6 ≠ nw
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ ew, Br9c5 ≠ esw, Br9c6 ≠ nw, Br9c6 ≠ ew, Br9c6 ≠ sw, Br10c5 ≠ sw, Br10c5 ≠ o, Br10c5 ≠ s, Br10c5 ≠ w
whip[1]: Br10c5{swn .} ==> Nr10c5 ≠ 0
whip[1]: Br9c5{sw .} ==> Nr9c5 ≠ 3
whip[1]: Hr10c7{0 .} ==> Br9c7 ≠ ns, Br9c7 ≠ se
B-single: Br9c7 = ew
whip[1]: Br9c7{ew .} ==> Pr9c8 ≠ ew, Pr9c8 ≠ nw, Vr9c8 ≠ 0
V-single: Vr9c8 = 1
vertical-line-r9{c7 c8} ==> Ir9c8 = out
different-colours-in-{r9 r10}c8 ==> Hr10c8 = 1
whip[1]: Vr9c8{1 .} ==> Br9c8 ≠ ns, Br9c8 ≠ se
whip[1]: Br9c8{sw .} ==> Pr10c9 ≠ nw
whip[1]: Pr10c9{ew .} ==> Br9c9 ≠ nw
whip[1]: Br9c9{swn .} ==> Pr10c10 ≠ o, Pr10c10 ≠ se
P-single: Pr10c10 = nw
whip[1]: Pr10c10{nw .} ==> Br10c9 ≠ s, Br9c9 ≠ e, Vr10c10 ≠ 1, Vr9c10 ≠ 0, Hr10c10 ≠ 1, Hr10c9 ≠ 0, Br9c9 ≠ swn, Br9c10 ≠ ne, Br9c10 ≠ nes, Br10c9 ≠ se, Br10c9 ≠ nes, Br10c10 ≠ nw
H-single: Hr10c9 = 1
H-single: Hr10c10 = 0
V-single: Vr9c10 = 1
V-single: Vr10c10 = 0
w[1]-2-in-r10c10-open-nw-corner ==> Hr11c10 = 1, Vr10c11 = 1
P-single: Pr11c11 = nw
B-single: Br10c10 = se
B-single: Br10c9 = ns
B-single: Br9c10 = wne
B-single: Br9c9 = se
vertical-line-r10{c10 c11} ==> Ir10c10 = in
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = out
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
whip[1]: Hr10c9{1 .} ==> Pr10c9 ≠ o
P-single: Pr9c8 = ns
whip[1]: Pr9c8{ns .} ==> Vr8c8 ≠ 0, Hr9c8 ≠ 1, Br8c7 ≠ w, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c8 ≠ se, Br9c8 ≠ nw
H-single: Hr9c8 = 0
V-single: Vr8c8 = 1
P-single: Pr8c8 = se
B-single: Br8c8 = nw
B-single: Br8c7 = ew

LOOP[118]: Vr8c8-Vr9c8-Hr10c8-Hr10c9-Vr9c10-Hr9c10-Vr9c11-Vr10c11-Hr11c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c3-Vr9c4-Hr9c4-Vr9c5-Hr10c5-Hr10c6-Vr9c7-Vr8c7-Hr8c6-Vr7c6-Hr7c5-Vr7c5-Hr8c4-Hr8c3-Vr8c3-Hr9c2-Vr9c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c1-Vr6c1-Vr5c1-Hr5c1-Vr5c2-Hr6c2-Vr6c3-Hr7c3-Vr6c4-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Hr4c4-Vr4c4-Hr5c3-Vr4c3-Hr4c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Vr2c2-Hr3c2-Hr3c3-Vr2c4-Hr2c3-Vr1c3-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Vr3c6-Hr4c6-Vr3c7-Hr3c7-Hr3c8-Vr2c9-Hr2c8-Hr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c9-Vr4c9-Hr4c8-Vr4c8-Hr5c7-Vr5c7-Vr6c7-Hr7c7-Vr6c8-Hr6c8-Vr6c9-Hr7c9-Vr6c10-Hr6c10-Vr6c11-Vr7c11-Hr8c10-Hr8c9- ==> Hr8c8 = 1
horizontal-line-{r7 r8}c8 ==> Ir8c8 = out
same-colour-in-r8{c8 c9} ==> Vr8c9 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXXXOXXXX
XOOXOOOOXO
XXXXXOXXXX
OOXOXXXOXO
XOOOOXOOOO
XXOXXXOXOX
OXXXOXXXXX
XXOOOOXOOO
XOOXOOXOOX
XOXXXXXXXX

.———.   .———.———.———.   .———.———.———.———.
|   | 2 | 3   1     | 2 | 3       1     |
.   .   .———.   .———.   .———.———.   .———.
|   |     3 | 2 |               |   | 3
.   .———.———.   .———.   .———.———.   .———.
|     2   1         | 3 |     2   0     |
.———.———.   .———.   .———.   .———.   .———.
  2   2 |   |   |         2 |   | 3 | 2
.———.   .———.   .———.   .———.   .———.   .
|   |         1     | 2 | 2           1
.   .———.   .———.———.   .   .———.   .———.
|       |   | 2         |   |   | 3 |   |
.———.   .———.   .———.   .———.   .———.   .
  3 |     2   2 | 3 |     1           2 |
.———.   .———.———.   .———.   .———.———.———.
|       |         0     |   | 2
.   .———.   .———.   .   .   .   .   .———.
|   | 2   2 | 3 |     2 | 2 | 2     |   |
.   .   .———.   .———.———.   .———.———.   .
| 3 |   | 3               1           2 |
.———.   .———.———.———.———.———.———.———.———.

init-time = 0.63s, solve-time = 46.35s, total-time = 46.99s
nb-facts=<Fact-202447>
Quasi-Loop max length = 118
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
