
(solve
10 10
. . 2 . 2 3 . 2 . 2
1 . 3 3 . 1 . . . 3
. 2 1 2 . 2 . . 3 .
. . . . . . 1 . . 1
3 . 1 . . 1 2 1 . .
3 . . 3 1 . . . 0 2
. . 1 2 . . 1 1 1 3
. . . 2 . . 3 . . .
2 . 2 . 3 . . . . .
2 2 3 . 3 1 . 1 1 0 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 . 2 3 . 2 . 2
1 . 3 3 . 1 . . . 3
. 2 1 2 . 2 . . 3 .
. . . . . . 1 . . 1
3 . 1 . . 1 2 1 . .
3 . . 3 1 . . . 0 2
. . 1 2 . . 1 1 1 3
. . . 2 . . 3 . . .
2 . 2 . 3 . . . . .
2 2 3 . 3 1 . 1 1 0

Loading pre-computed background
start init-inner-N-and-B-candidates 0.628983974456787
start solution 0.640590906143188
entering BRT
w[0]-0-in-r10c10 ==> Hr11c10 = 0, Hr10c10 = 0, Vr10c11 = 0, Vr10c10 = 0
w[0]-0-in-r6c9 ==> Hr7c9 = 0, Hr6c9 = 0, Vr6c10 = 0, Vr6c9 = 0
w[1]-2-in-sw-corner ==> Vr9c1 = 1, Hr11c2 = 1
w[1]-2-in-ne-corner ==> Vr2c11 = 1, Hr1c9 = 1
w[1]-diagonal-3-0-in-{r7c10...r6c9} ==> Vr7c10 = 1, Hr7c10 = 1
w[1]-diagonal-3s-in-{r2c10...r3c9} ==> Vr3c9 = 1, Hr4c9 = 1, Hr2c10 = 1, Vr1c11 = 0, Vr4c9 = 0, Hr4c8 = 0
w[1]-3-in-r10c3-hit-by-horiz-line-at-sw ==> Vr10c4 = 1, Hr10c3 = 1
w[1]-adjacent-1-1-on-edge-in-r10{c8 c9} ==> Vr10c9 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r7{c8 c9} ==> Vr7c9 = 0
w[1]-adjacent-1-3-on-edge-in-r10{c6 c5} ==> Vr10c7 = 0, Hr11c5 = 1, Hr10c6 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c9 c10} ==> Hr8c9 = 0
w[1]-3-in-r10c3-closed-ne-corner ==> Pr11c3 ≠ ne, Pr11c3 ≠ o
w[1]-3-in-r7c10-closed-nw-corner ==> Pr8c11 ≠ nw, Pr8c11 ≠ o
w[1]-3-in-r3c9-closed-sw-corner ==> Pr3c10 ≠ sw, Pr3c10 ≠ ne, Pr3c10 ≠ o
w[1]-3-in-r2c10-asymmetric-nw-corner ==> Hr3c10 = 1, Vr3c11 = 0
w[1]-3-in-r3c9-hit-by-horiz-line-at-ne ==> Vr2c10 = 0
adjacent-3s-in-c5{r9 r10} ==> Hr10c5 = 1, Hr9c5 = 1
adjacent-3s-in-c1{r5 r6} ==> Hr7c1 = 1, Hr6c1 = 1, Hr5c1 = 1, Hr6c2 = 0
adjacent-3s-in-r2{c3 c4} ==> Vr2c5 = 1, Vr2c4 = 1, Vr2c3 = 1, Vr3c4 = 0, Vr1c4 = 0
P-single: Pr2c10 = ne
P-single: Pr1c11 = o
entering level Loop with <Fact-92970>
entering level Col with <Fact-93048>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-vertical-line-r10{c9 c10} ==> Ir10c9 = out
no-vertical-line-r10{c8 c9} ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
no-vertical-line-r3{c10 c11} ==> Ir3c10 = out
horizontal-line-{r2 r3}c10 ==> Ir2c10 = in
no-vertical-line-r2{c9 c10} ==> Ir2c9 = in
horizontal-line-{r1 r2}c10 ==> Ir1c10 = out
vertical-line-r9{c0 c1} ==> Ir9c1 = in
horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
horizontal-line-{r8 r9}c5 ==> Ir8c5 = in
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
horizontal-line-{r0 r1}c9 ==> Ir1c9 = in
same-colour-in-{r1 r2}c9 ==> Hr2c9 = 0
different-colours-in-r1{c9 c10} ==> Hr1c10 = 1
same-colour-in-r9{c10 c11} ==> Vr9c11 = 0
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
Starting_init_links_with_<Fact-93116>
1113 candidates, 8304 csp-links and 35290 links. Density = 5.7%
starting non trivial part of solution
Entering_level_W1_with_<Fact-180309>
whip[1]: Hr11c9{0 .} ==> Br10c9 ≠ s, Br11c9 ≠ n, Pr11c9 ≠ ne, Pr11c9 ≠ ew, Pr11c10 ≠ nw, Pr11c10 ≠ ew
B-single: Br11c9 = o
w[1]-1-in-r10c8-symmetric-se-corner ==> Pr10c8 ≠ se, Pr10c8 ≠ nw, Pr10c8 ≠ o
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ n, Br9c7 ≠ w, Br10c8 ≠ e, Br10c8 ≠ s
whip[1]: Br10c8{w .} ==> Pr11c8 ≠ ne, Pr11c9 ≠ nw, Pr10c9 ≠ ns, Pr11c8 ≠ ew, Pr10c9 ≠ se, Pr10c9 ≠ sw
P-single: Pr11c9 = o
w[1]-1-in-r10c9-symmetric-sw-corner ==> Pr10c10 ≠ sw, Pr10c10 ≠ ne, Pr10c10 ≠ o
whip[1]: Pr11c9{o .} ==> Br11c8 ≠ n, Br10c9 ≠ w
B-single: Br11c8 = o
whip[1]: Pr10c10{ew .} ==> Br9c10 ≠ sw, Br9c10 ≠ esw, Br9c10 ≠ swn, Br9c10 ≠ o, Br9c10 ≠ n, Br9c10 ≠ e, Br9c10 ≠ ne
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Br9c7{wne .} ==> Nr9c7 ≠ 0
whip[1]: Vr9c11{0 .} ==> Br9c10 ≠ nes, Br9c11 ≠ w, Pr9c11 ≠ ns, Pr9c11 ≠ sw, Pr10c11 ≠ ns, Pr10c11 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ ew, Br9c10 ≠ wne
B-single: Br9c11 = o
whip[1]: Br9c10{nw .} ==> Nr9c10 ≠ 3
whip[1]: Pr9c11{nw .} ==> Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ ew, Br8c10 ≠ sw, Br8c10 ≠ swn, Br8c10 ≠ wne, Br8c10 ≠ e, Br8c10 ≠ s
whip[1]: Hr1c10{0 .} ==> Br1c10 ≠ ne, Br0c10 ≠ s, Pr1c10 ≠ ew
P-single: Pr1c10 = sw
B-single: Br0c10 = o
B-single: Br1c10 = sw
whip[1]: Pr1c10{sw .} ==> Br1c9 ≠ ns, Br1c9 ≠ w, Br1c9 ≠ s, Br1c9 ≠ e, Br1c9 ≠ n, Br1c9 ≠ o, Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ swn
whip[1]: Br1c9{nes .} ==> Pr1c9 ≠ o, Pr1c9 ≠ sw, Pr2c9 ≠ ne, Nr1c9 ≠ 0, Nr1c9 ≠ 1
whip[1]: Pr2c8{ew .} ==> Br1c8 ≠ sw, Br2c7 ≠ sw, Br2c7 ≠ wne, Br2c7 ≠ nes, Br1c8 ≠ ne, Br2c7 ≠ o, Br2c7 ≠ s, Br2c7 ≠ w, Br2c7 ≠ ne
whip[1]: Br2c7{swn .} ==> Nr2c7 ≠ 0
whip[1]: Br1c10{sw .} ==> Pr2c11 ≠ ns
P-single: Pr2c11 = sw
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ esw, Br2c10 ≠ swn
whip[1]: Br2c10{nes .} ==> Pr3c11 ≠ o, Pr3c11 ≠ sw
whip[1]: Pr3c11{nw .} ==> Br3c10 ≠ w, Br3c10 ≠ ne, Br3c10 ≠ sw, Br3c10 ≠ wne, Br3c10 ≠ nes, Br3c10 ≠ o, Br3c10 ≠ s
whip[1]: Br3c10{swn .} ==> Nr3c10 ≠ 0
whip[1]: Hr2c9{0 .} ==> Br2c9 ≠ nes, Pr2c9 ≠ se, Pr2c9 ≠ ew, Br1c9 ≠ nes, Br2c9 ≠ n, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne
whip[1]: Pr2c10{ne .} ==> Br2c10 ≠ wne, Br2c9 ≠ e, Br2c9 ≠ se, Br2c9 ≠ ew, Br2c9 ≠ esw
B-single: Br2c10 = nes
whip[1]: Br2c10{nes .} ==> Pr3c10 ≠ nw, Pr3c10 ≠ ns, Pr3c11 ≠ ns
P-single: Pr3c11 = nw
whip[1]: Pr3c11{nw .} ==> Br3c10 ≠ e, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw
whip[1]: Br3c10{swn .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ nw
w[1]-1-in-r4c10-symmetric-ne-corner ==> Pr5c10 ≠ sw, Pr5c10 ≠ ne, Pr5c10 ≠ o
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ sw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br4c10 ≠ n, Br4c10 ≠ e, Br5c9 ≠ o, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ne
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Br4c10{w .} ==> Hr4c10 ≠ 1, Vr4c11 ≠ 1, Pr5c11 ≠ ns, Pr5c11 ≠ nw, Pr4c10 ≠ ne, Pr4c11 ≠ sw, Pr4c10 ≠ se, Pr4c10 ≠ ew
V-single: Vr4c11 = 0
H-single: Hr4c10 = 0
P-single: Pr4c11 = o
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Hr4c10{0 .} ==> Br3c10 ≠ ns, Br3c10 ≠ swn
whip[1]: Br3c10{nw .} ==> Nr3c10 ≠ 3
whip[1]: Pr5c11{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c10 ≠ n, Br5c10 ≠ e, Br5c10 ≠ ns
whip[1]: Pr3c10{ew .} ==> Br3c9 ≠ wne, Br3c9 ≠ nes
whip[1]: Br3c9{swn .} ==> Pr3c9 ≠ o, Pr3c9 ≠ ne, Pr3c9 ≠ nw, Pr3c9 ≠ ew, Pr4c9 ≠ o, Pr4c9 ≠ ns, Pr4c9 ≠ nw, Pr4c9 ≠ se, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Pr4c10 ≠ o, Pr4c10 ≠ ns
P-single: Pr4c9 = ne
whip[1]: Pr4c9{ne .} ==> Br4c9 ≠ o, Br4c8 ≠ n, Br3c8 ≠ n, Br3c8 ≠ o, Br3c8 ≠ s, Br3c8 ≠ w, Br3c8 ≠ ns, Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ swn, Br3c8 ≠ nes, Br4c8 ≠ e, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c9 ≠ e, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn, Br4c9 ≠ wne
whip[1]: Br4c9{nes .} ==> Pr5c9 ≠ ne, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Nr4c9 ≠ 0
whip[1]: Br4c8{sw .} ==> Pr4c8 ≠ ne, Pr4c8 ≠ se, Pr4c8 ≠ ew, Nr4c8 ≠ 3
whip[1]: Br3c8{wne .} ==> Nr3c8 ≠ 0
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ se, Br2c8 ≠ esw, Br2c8 ≠ nes, Br2c9 ≠ sw
whip[1]: Br2c9{w .} ==> Nr2c9 ≠ 2, Nr2c9 ≠ 3
whip[1]: Vr1c4{0 .} ==> Br1c4 ≠ wne, Pr1c4 ≠ se, Pr2c4 ≠ ne, Pr2c4 ≠ ns, Br1c3 ≠ ne, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c4 ≠ w, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ sw, Pr3c4 ≠ ns, Pr3c4 ≠ sw, Pr4c4 ≠ ns, Pr4c4 ≠ nw, Br3c3 ≠ e, Br3c4 ≠ nw, Br3c4 ≠ ew
whip[1]: Br3c3{w .} ==> Pr4c3 ≠ ne, Pr3c3 ≠ se
whip[1]: Vr2c3{1 .} ==> Br2c3 ≠ nes, Br2c2 ≠ o, Pr2c3 ≠ ne, Pr2c3 ≠ nw, Pr2c3 ≠ ew, Pr3c3 ≠ o, Pr3c3 ≠ ew, Pr3c3 ≠ sw, Br2c2 ≠ n, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ sw, Br2c2 ≠ swn
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ s, Br1c4 ≠ e, Br1c4 ≠ o, Hr1c4 ≠ 0, Hr1c3 ≠ 0, Br1c3 ≠ sw, Br1c4 ≠ se
H-single: Hr1c3 = 1
H-single: Hr1c4 = 1
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o, Pr1c3 ≠ sw
B-single: Br0c3 = s
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ sw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c2 ≠ o, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ne
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o, Pr1c5 ≠ o, Pr1c5 ≠ se
B-single: Br0c4 = s
w[1]-1-in-r2c6-asymmetric-nw-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ ew, Pr3c7 ≠ ns, Pr3c7 ≠ ne
whip[1]: Pr3c7{se .} ==> Br2c7 ≠ esw, Br2c7 ≠ swn, Br3c6 ≠ ne, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw, Br3c7 ≠ nes, Br2c6 ≠ e, Br2c6 ≠ s, Br3c7 ≠ n, Br3c7 ≠ w
whip[1]: Br2c6{w .} ==> Hr3c6 ≠ 1, Vr2c7 ≠ 1, Pr2c7 ≠ ns, Pr3c6 ≠ ne, Pr3c7 ≠ nw, Pr2c7 ≠ se, Pr2c7 ≠ sw, Pr3c6 ≠ se, Pr3c6 ≠ ew
V-single: Vr2c7 = 0
H-single: Hr3c6 = 0
whip[1]: Vr2c7{0 .} ==> Br2c7 ≠ nw, Br2c7 ≠ ew
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 3
whip[1]: Hr3c6{0 .} ==> Br3c6 ≠ ns, Br3c6 ≠ nw
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c5 ≠ ne
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Pr3c3{nw .} ==> Br3c2 ≠ ne
whip[1]: Br3c2{sw .} ==> Pr4c2 ≠ o, Pr4c2 ≠ sw
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c1 ≠ ne
whip[1]: Pr2c3{se .} ==> Hr2c2 ≠ 1, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ esw, Br1c2 ≠ swn, Br2c2 ≠ ne, Br2c2 ≠ wne, Br2c2 ≠ nes
H-single: Hr2c2 = 0
whip[1]: Hr2c2{0 .} ==> Pr2c2 ≠ ne, Pr2c2 ≠ se, Pr2c2 ≠ ew
whip[1]: Br1c2{ew .} ==> Nr1c2 ≠ 3
whip[1]: Br2c3{wne .} ==> Pr2c4 ≠ o, Pr3c4 ≠ o
whip[1]: Vr2c4{1 .} ==> Br2c4 ≠ nes, Pr2c4 ≠ ew, Pr3c4 ≠ ew, Br2c3 ≠ swn
whip[1]: Br2c4{wne .} ==> Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr3c5 ≠ se
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Pr2c5{sw .} ==> Br1c5 ≠ sw
whip[1]: Br1c5{ew .} ==> Pr1c6 ≠ o
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ nes, Br2c5 ≠ o, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se
whip[1]: Pr4c4{ew .} ==> Hr4c4 ≠ 0, Br4c3 ≠ sw, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br3c4 ≠ ne, Br4c3 ≠ o, Br4c3 ≠ s, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c4 ≠ o, Br4c4 ≠ e, Br4c4 ≠ s, Br4c4 ≠ w
H-single: Hr4c4 = 1
whip[1]: Hr4c4{1 .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ ns
whip[1]: Pr4c5{sw .} ==> Br3c5 ≠ sw, Br3c5 ≠ esw, Br4c5 ≠ nw, Br4c5 ≠ swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 0
whip[1]: Br2c5{wne .} ==> Hr3c5 ≠ 1, Pr3c6 ≠ nw, Pr3c6 ≠ sw, Nr2c5 ≠ 0
H-single: Hr3c5 = 0
whip[1]: Hr3c5{0 .} ==> Br3c5 ≠ n, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nes
whip[1]: Br3c5{ew .} ==> Nr3c5 ≠ 3
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ nes
whip[1]: Br1c4{ns .} ==> Nr1c4 ≠ 3
whip[1]: Hr6c2{0 .} ==> Br6c2 ≠ nes, Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew, Pr6c3 ≠ nw, Pr6c3 ≠ ew, Pr6c3 ≠ sw, Br5c2 ≠ s, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ nes, Br6c2 ≠ n, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Hr5c1{1 .} ==> Br5c1 ≠ esw, Br4c1 ≠ o, Pr5c1 ≠ o, Pr5c1 ≠ ns, Pr5c2 ≠ o, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ se, Br4c1 ≠ n, Br4c1 ≠ e, Br4c1 ≠ w, Br4c1 ≠ nw, Br4c1 ≠ ew
whip[1]: Br4c1{swn .} ==> Nr4c1 ≠ 0
whip[1]: Pr5c2{sw .} ==> Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br5c2 ≠ nw, Br5c2 ≠ wne
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 3
whip[1]: Br5c1{nes .} ==> Pr6c1 ≠ o, Pr6c2 ≠ o
whip[1]: Hr6c1{1 .} ==> Br6c1 ≠ esw, Pr6c1 ≠ ns, Pr6c2 ≠ ns, Br5c1 ≠ wne
whip[1]: Br6c1{nes .} ==> Pr7c1 ≠ o, Pr7c2 ≠ o, Pr7c2 ≠ se
whip[1]: Pr7c2{sw .} ==> Br7c2 ≠ nw, Br7c2 ≠ swn, Br7c2 ≠ wne
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ se, Br7c1 ≠ o, Br7c1 ≠ e, Br7c1 ≠ s
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 0
whip[1]: Hr7c1{1 .} ==> Br7c1 ≠ esw, Pr7c1 ≠ ns, Pr7c2 ≠ ne, Pr7c2 ≠ ns, Br6c1 ≠ wne, Br7c1 ≠ w, Br7c1 ≠ ew, Br7c1 ≠ sw
whip[1]: Pr7c2{sw .} ==> Br6c2 ≠ sw, Br6c2 ≠ esw
whip[1]: Br6c2{ew .} ==> Nr6c2 ≠ 3
whip[1]: Hr9c5{1 .} ==> Br9c5 ≠ esw, Br8c5 ≠ o, Pr9c5 ≠ o, Pr9c5 ≠ ns, Pr9c5 ≠ nw, Pr9c5 ≠ sw, Pr9c6 ≠ o, Pr9c6 ≠ ne, Pr9c6 ≠ ns, Pr9c6 ≠ se, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ w, Br8c5 ≠ ne, Br8c5 ≠ nw, Br8c5 ≠ ew, Br8c5 ≠ wne
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Pr9c6{sw .} ==> Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ swn, Br9c6 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ wne
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ se, Br9c4 ≠ wne, Br9c4 ≠ nes, Br9c4 ≠ ne
whip[1]: Br8c4{sw .} ==> Pr8c4 ≠ o, Pr8c4 ≠ nw
whip[1]: Br9c5{nes .} ==> Pr10c5 ≠ o, Pr10c5 ≠ sw, Pr10c6 ≠ o, Pr10c6 ≠ se
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ wne, Br10c4 ≠ nes, Br10c4 ≠ ne
whip[1]: Hr10c5{1 .} ==> Br10c5 ≠ esw, Pr10c5 ≠ ns, Pr10c5 ≠ nw, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Br9c5 ≠ wne
whip[1]: Pr10c6{sw .} ==> Br9c6 ≠ sw, Br9c6 ≠ esw
whip[1]: Pr10c5{ew .} ==> Br9c4 ≠ se, Br9c4 ≠ esw
whip[1]: Br10c5{nes .} ==> Pr11c5 ≠ o, Pr11c6 ≠ o
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ n, Br10c6 ≠ e
whip[1]: Br10c6{w .} ==> Pr11c6 ≠ ne, Pr11c7 ≠ ne, Pr11c7 ≠ nw, Pr10c7 ≠ ns, Pr10c7 ≠ nw, Pr10c6 ≠ ew, Pr10c7 ≠ se, Pr10c7 ≠ ew, Pr10c7 ≠ sw
whip[1]: Pr10c7{ne .} ==> Br9c6 ≠ s, Br9c6 ≠ ns, Br9c6 ≠ se, Br9c6 ≠ nes, Br9c7 ≠ s, Br9c7 ≠ ns, Br9c7 ≠ ew, Br9c7 ≠ wne, Br10c7 ≠ w, Br10c7 ≠ nw, Br10c7 ≠ esw
whip[1]: Br9c6{ew .} ==> Nr9c6 ≠ 3
whip[1]: Pr11c6{ew .} ==> Br11c5 ≠ o, Br10c5 ≠ wne
B-single: Br11c5 = n
whip[1]: Br11c5{n .} ==> Pr11c5 ≠ nw
whip[1]: Pr11c5{ew .} ==> Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ esw, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ w
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 0
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Hr8c9{0 .} ==> Br8c9 ≠ nes, Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c10 ≠ nw, Pr8c10 ≠ ew, Pr8c10 ≠ sw, Br7c9 ≠ s, Br8c9 ≠ n, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Br7c9{w .} ==> Pr7c9 ≠ se, Pr7c10 ≠ sw
whip[1]: Pr7c10{ew .} ==> Br6c10 ≠ sw
whip[1]: Vr7c9{0 .} ==> Br7c9 ≠ w, Pr7c9 ≠ ns, Pr7c9 ≠ sw, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Br7c8 ≠ e
w[1]-1-in-r7c9-symmetric-sw-corner ==> Pr7c10 ≠ o
whip[1]: Pr6c11{nw .} ==> Vr5c11 ≠ 0, Br5c10 ≠ w, Br5c10 ≠ sw, Br6c10 ≠ ne, Br5c10 ≠ o, Br5c10 ≠ s
V-single: Vr5c11 = 1
vertical-line-r5{c10 c11} ==> Ir5c10 = in
different-colours-in-{r4 r5}c10 ==> Hr5c10 = 1
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o, Pr5c11 ≠ o
P-single: Pr5c11 = sw
B-single: Br5c11 = w
w[1]-1-in-r4c10-asymmetric-se-corner ==> Pr4c10 ≠ sw
w[1]-3-in-r3c9-symmetric-se-corner ==> Vr3c10 = 1
w[1]-3-in-r3c9-closed-se-corner ==> Pr3c9 ≠ se
P-single: Pr4c10 = nw
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
vertical-line-r3{c8 c9} ==> Ir3c8 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = out
no-vertical-line-r4{c8 c9} ==> Ir4c9 = out
whip[1]: Pr5c11{sw .} ==> Br4c10 ≠ w
B-single: Br4c10 = s
whip[1]: Br4c10{s .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ nw
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ nes, Br4c9 ≠ ne
whip[1]: Br4c9{ns .} ==> Nr4c9 ≠ 3
whip[1]: Vr3c10{1 .} ==> Pr3c10 ≠ ew, Br3c9 ≠ swn, Br3c10 ≠ n
P-single: Pr3c10 = se
B-single: Br3c10 = nw
B-single: Br3c9 = esw
whip[1]: Pr3c10{se .} ==> Br2c9 ≠ s
whip[1]: Br3c10{nw .} ==> Nr3c10 ≠ 1
N-single: Nr3c10 = 2
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ nw, Br2c8 ≠ o, Br2c8 ≠ n, Br2c8 ≠ w
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 0
whip[1]: Br5c10{nes .} ==> Pr6c10 ≠ ne, Nr5c10 ≠ 0, Nr5c10 ≠ 1
whip[1]: Pr6c10{sw .} ==> Br6c10 ≠ nw
whip[1]: Br7c8{w .} ==> Pr8c8 ≠ ne, Pr7c8 ≠ se
whip[1]: Pr8c9{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ esw, Br8c8 ≠ swn, Br8c8 ≠ n, Br8c8 ≠ e, Br8c8 ≠ ns
whip[1]: Vr9c4{0 .} ==> Br9c4 ≠ swn, Pr9c4 ≠ ns, Pr9c4 ≠ se, Pr10c4 ≠ ne, Pr10c4 ≠ ns, Br9c3 ≠ ne, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c4 ≠ w, Br9c4 ≠ nw, Br9c4 ≠ ew, Br9c4 ≠ sw
whip[1]: Br9c4{ns .} ==> Nr9c4 ≠ 3
whip[1]: Hr10c4{0 .} ==> Br10c4 ≠ swn, Pr10c4 ≠ se, Pr10c4 ≠ ew, Pr10c5 ≠ ew, Br9c4 ≠ s, Br9c4 ≠ ns, Br10c4 ≠ ns
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 3
whip[1]: Br9c4{e .} ==> Nr9c4 ≠ 2
whip[1]: Pr10c4{sw .} ==> Br10c3 ≠ esw, Br10c3 ≠ swn
whip[1]: Br10c3{nes .} ==> Pr11c4 ≠ o, Pr11c4 ≠ ew, Pr10c3 ≠ ns, Pr10c3 ≠ nw, Pr10c4 ≠ o
P-single: Pr10c4 = sw
whip[1]: Pr10c4{sw .} ==> Br10c4 ≠ s, Br10c4 ≠ e, Br9c3 ≠ nw
whip[1]: Br10c4{sw .} ==> Nr10c4 ≠ 1
N-single: Nr10c4 = 2
whip[1]: Pr9c3{sw .} ==> Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ esw, Br8c2 ≠ nes, Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ w
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 0
whip[1]: Pr10c3{ew .} ==> Br9c2 ≠ se, Br9c2 ≠ esw, Br9c2 ≠ nes, Br10c2 ≠ ne
whip[1]: Vr1c11{0 .} ==> Br1c11 ≠ w
B-single: Br1c11 = o
whip[1]: Hr7c10{1 .} ==> Br7c10 ≠ esw, Pr7c11 ≠ ns, Pr7c10 ≠ ns, Pr7c10 ≠ nw, Br6c10 ≠ ew
whip[1]: Br6c10{se .} ==> Vr6c10 ≠ 1, Pr6c10 ≠ ns, Pr6c10 ≠ sw
whip[1]: Pr6c10{ew .} ==> Br5c9 ≠ ew, Br5c9 ≠ e
whip[1]: Br7c10{nes .} ==> Pr8c10 ≠ o
whip[1]: Pr8c10{se .} ==> Br8c10 ≠ se, Br8c10 ≠ o
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Vr7c10{1 .} ==> Br7c10 ≠ nes, Pr7c10 ≠ ew, Pr8c10 ≠ se, Br7c9 ≠ n
P-single: Pr7c10 = se
B-single: Br7c9 = e
w[1]-1-in-r7c9-asymmetric-se-corner ==> Pr7c9 ≠ ew, Pr7c9 ≠ ne
whip[1]: Pr7c10{se .} ==> Hr7c9 ≠ 1
whip[1]: Pr7c9{nw .} ==> Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ ew, Br6c8 ≠ sw, Br6c8 ≠ swn, Br6c8 ≠ wne, Br6c8 ≠ e, Br6c8 ≠ s
whip[1]: Pr8c10{ns .} ==> Br8c10 ≠ nw
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 2
whip[1]: Hr11c2{1 .} ==> Br10c2 ≠ ew, Br11c2 ≠ o, Br10c2 ≠ nw
B-single: Br11c2 = n
whip[1]: Vr9c1{1 .} ==> Br9c1 ≠ se, Br9c0 ≠ o, Pr9c1 ≠ o, Pr9c1 ≠ ne, Br9c1 ≠ ne, Br9c1 ≠ ns
B-single: Br9c0 = e
whip[1]: Br9c1{sw .} ==> Pr9c2 ≠ sw
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Vr6c9{0 .} ==> Br6c8 ≠ nes, Vr6c9 ≠ 1, Pr6c9 ≠ ns, Pr6c9 ≠ se, Pr6c9 ≠ sw, Pr7c9 ≠ nw, Br6c8 ≠ se, Br6c8 ≠ esw
P-single: Pr7c9 = o
w[1]-1-in-r7c8-symmetric-ne-corner ==> Pr8c8 ≠ sw, Pr8c8 ≠ o
w[1]-3-in-r8c7-asymmetric-ne-corner ==> Vr8c7 = 1, Hr9c7 = 1, Vr9c7 = 0, Hr9c6 = 0
w[1]-diagonal-closed-3-1-in-{r8c7...r7c8} ==> Hr7c8 = 0
whip[1]: Pr7c9{o .} ==> Br7c8 ≠ n
whip[1]: Br7c8{w .} ==> Pr7c8 ≠ ne, Pr7c8 ≠ ew
whip[1]: Vr8c7{1 .} ==> Br8c6 ≠ o, Pr8c7 ≠ o, Pr8c7 ≠ ne, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Pr9c7 ≠ o, Pr9c7 ≠ se, Pr9c7 ≠ ew, Pr9c7 ≠ sw, Br8c6 ≠ n, Br8c6 ≠ s, Br8c6 ≠ w, Br8c6 ≠ ns, Br8c6 ≠ nw, Br8c7 ≠ nes
whip[1]: Br8c7{wne .} ==> Pr9c8 ≠ o, Pr9c8 ≠ se
whip[1]: Pr9c8{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ swn, Br9c8 ≠ wne
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Pr9c7{nw .} ==> Br9c6 ≠ ne, Br9c7 ≠ swn
whip[1]: Br9c7{sw .} ==> Pr9c8 ≠ nw, Pr9c8 ≠ ew, Nr9c7 ≠ 3
w[1]-3-in-r8c7-asymmetric-se-corner ==> Hr8c7 = 1, Vr7c7 = 0, Hr8c6 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r7 r8}c7 ==> Vr7c8 = 0, Hr7c7 = 0
whip[1]: Hr8c7{1 .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ sw, Pr8c8 ≠ ns, Pr8c8 ≠ se, Br7c7 ≠ n, Br7c7 ≠ e, Br7c7 ≠ w, Br8c7 ≠ esw
P-single: Pr8c7 = se
B-single: Br7c7 = s
w[1]-1-in-r7c7-asymmetric-sw-corner ==> Pr7c8 ≠ nw, Pr7c8 ≠ ns
whip[1]: Pr8c7{se .} ==> Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c6 ≠ nes, Br8c6 ≠ ne, Br8c6 ≠ wne, Br8c6 ≠ nes
whip[1]: Br8c6{ew .} ==> Pr8c6 ≠ ne, Pr8c6 ≠ se, Pr8c6 ≠ ew, Nr8c6 ≠ 3
whip[1]: Br7c6{nw .} ==> Pr7c7 ≠ ns, Pr7c7 ≠ se, Pr7c7 ≠ sw, Nr7c6 ≠ 3
whip[1]: Br7c7{s .} ==> Pr7c7 ≠ ne, Pr7c7 ≠ ew, Pr7c8 ≠ sw, Pr8c8 ≠ nw
P-single: Pr8c8 = ew
P-single: Pr7c8 = o
w[1]-1-in-r7c8-symmetric-nw-corner ==> Pr8c9 ≠ o
P-single: Pr8c9 = sw
whip[1]: Pr8c8{ew .} ==> Br8c8 ≠ w, Br8c8 ≠ s, Br8c8 ≠ o, Br7c8 ≠ w, Vr8c8 ≠ 1, Hr8c8 ≠ 0, Br8c7 ≠ wne, Br8c8 ≠ sw, Br8c8 ≠ wne
H-single: Hr8c8 = 1
V-single: Vr8c8 = 0
B-single: Br8c7 = swn
B-single: Br7c8 = s
whip[1]: Vr8c8{0 .} ==> Pr9c8 ≠ ne, Pr9c8 ≠ ns
P-single: Pr9c8 = sw
whip[1]: Pr9c8{sw .} ==> Br9c8 ≠ ns, Br9c8 ≠ ne, Br9c8 ≠ s, Br9c8 ≠ e, Br9c8 ≠ n, Br9c8 ≠ o, Br9c7 ≠ e, Vr9c8 ≠ 0, Hr9c8 ≠ 1, Br8c8 ≠ nes, Br9c7 ≠ sw, Br9c8 ≠ se, Br9c8 ≠ nes
H-single: Hr9c8 = 0
V-single: Vr9c8 = 1
B-single: Br9c7 = ne
B-single: Br8c8 = ne
whip[1]: Hr9c8{0 .} ==> Pr9c9 ≠ nw, Pr9c9 ≠ ew, Pr9c9 ≠ sw
whip[1]: Vr9c8{1 .} ==> Pr10c8 ≠ ew, Pr10c8 ≠ sw
whip[1]: Pr10c8{ns .} ==> Hr10c7 ≠ 1, Br10c7 ≠ nes, Br10c7 ≠ n
H-single: Hr10c7 = 0
whip[1]: Hr10c7{0 .} ==> Pr10c7 ≠ ne
P-single: Pr10c7 = o
whip[1]: Pr10c7{o .} ==> Br9c6 ≠ e, Br9c6 ≠ ew
whip[1]: Br9c6{w .} ==> Pr9c7 ≠ ns, Nr9c6 ≠ 2
whip[1]: Br10c7{se .} ==> Nr10c7 ≠ 1, Nr10c7 ≠ 3
whip[1]: Br9c7{ne .} ==> Nr9c7 ≠ 1, Pr9c7 ≠ nw
N-single: Nr9c7 = 2
P-single: Pr9c7 = ne
whip[1]: Pr9c7{ne .} ==> Br9c6 ≠ n, Br8c6 ≠ se
whip[1]: Br8c6{ew .} ==> Pr9c6 ≠ ew
whip[1]: Br8c8{ne .} ==> Nr8c8 ≠ 3, Nr8c8 ≠ 1, Nr8c8 ≠ 0, Pr9c9 ≠ se, Pr9c9 ≠ o, Vr8c9 ≠ 0
V-single: Vr8c9 = 1
N-single: Nr8c8 = 2
whip[1]: Vr8c9{1 .} ==> Br8c9 ≠ o, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ se
whip[1]: Br8c9{esw .} ==> Nr8c9 ≠ 0
whip[1]: Pr9c9{ns .} ==> Br9c9 ≠ s, Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ swn, Br9c9 ≠ wne, Br9c9 ≠ o, Br9c9 ≠ e
whip[1]: Br9c9{nes .} ==> Nr9c9 ≠ 0
whip[1]: Br9c8{esw .} ==> Nr9c8 ≠ 0
whip[1]: Pr7c8{o .} ==> Vr6c8 ≠ 1, Br6c7 ≠ e, Br6c7 ≠ s, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes, Br6c8 ≠ w, Br6c8 ≠ nw
V-single: Vr6c8 = 0
whip[1]: Vr6c8{0 .} ==> Pr6c8 ≠ ns, Pr6c8 ≠ se, Pr6c8 ≠ sw
whip[1]: Br6c8{n .} ==> Nr6c8 ≠ 2, Nr6c8 ≠ 3
whip[1]: Br6c7{nw .} ==> Nr6c7 ≠ 3
whip[1]: Pr7c7{nw .} ==> Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ ew, Br6c6 ≠ sw, Br6c6 ≠ swn, Br6c6 ≠ wne, Br6c6 ≠ e, Br6c6 ≠ s
whip[1]: Hr6c9{0 .} ==> Br5c9 ≠ swn, Hr6c9 ≠ 1, Pr6c9 ≠ ne, Pr6c9 ≠ ew, Pr6c10 ≠ nw, Pr6c10 ≠ ew, Br5c9 ≠ ns, Br5c9 ≠ se, Br5c9 ≠ esw
w[1]-3-in-r7c10-asymmetric-ne-corner ==> Hr8c10 = 1, Vr8c10 = 0
P-single: Pr7c11 = nw
P-single: Pr6c10 = o
w[1]-1-in-r5c8-symmetric-se-corner ==> Pr5c8 ≠ se, Pr5c8 ≠ nw, Pr5c8 ≠ o
w[1]-1-in-r4c7-asymmetric-se-corner ==> Pr4c7 ≠ sw, Pr4c7 ≠ ew, Pr4c7 ≠ ns, Pr4c7 ≠ ne
P-single: Pr3c7 = se
P-single: Pr3c6 = o
P-single: Pr4c7 = nw
w[1]-1-in-r2c6-symmetric-sw-corner ==> Pr2c7 ≠ ne, Pr2c7 ≠ o
whip[1]: Hr8c10{1 .} ==> Pr8c11 ≠ ns, Pr8c10 ≠ ns, Br7c10 ≠ wne, Br8c10 ≠ w, Br8c10 ≠ esw
P-single: Pr8c10 = ne
P-single: Pr8c11 = sw
B-single: Br7c10 = swn
whip[1]: Pr8c10{ne .} ==> Br8c9 ≠ ew, Br8c9 ≠ esw
whip[1]: Br8c9{sw .} ==> Pr9c10 ≠ ne, Pr9c10 ≠ ns, Pr9c10 ≠ nw, Nr8c9 ≠ 3
whip[1]: Pr8c11{sw .} ==> Br8c10 ≠ n, Vr8c11 ≠ 0, Vr7c11 ≠ 1
V-single: Vr7c11 = 0
V-single: Vr8c11 = 1
B-single: Br8c10 = nes
vertical-line-r8{c10 c11} ==> Ir8c10 = in
no-vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
no-vertical-line-r7{c7 c8} ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
no-horizontal-line-{r8 r9}c6 ==> Ir9c6 = in
no-vertical-line-r9{c6 c7} ==> Ir9c7 = in
no-horizontal-line-{r9 r10}c7 ==> Ir10c7 = in
no-vertical-line-r10{c6 c7} ==> Ir10c6 = in
vertical-line-r9{c7 c8} ==> Ir9c8 = out
no-horizontal-line-{r8 r9}c8 ==> Ir8c8 = out
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
no-horizontal-line-{r6 r7}c7 ==> Ir6c7 = in
no-vertical-line-r6{c7 c8} ==> Ir6c8 = in
no-vertical-line-r6{c8 c9} ==> Ir6c9 = in
no-vertical-line-r6{c9 c10} ==> Ir6c10 = in
horizontal-line-{r6 r7}c10 ==> Ir7c10 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = in
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
same-colour-in-{r5 r6}c10 ==> Hr6c10 = 0
same-colour-in-{r9 r10}c8 ==> Hr10c8 = 0
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
w[1]-3-in-r10c5-hit-by-horiz-line-at-se ==> Vr10c5 = 1
w[1]-diagonal-3-2-in-{r9c5...r10c4}-non-closed-sw-corner ==> Vr9c6 = 1, Vr8c6 = 0
w[1]-3-in-r9c5-closed-se-corner ==> Pr9c5 ≠ se
w[1]-3-in-r10c5-closed-sw-corner ==> Pr10c6 ≠ sw
w[1]-3-in-r10c5-closed-nw-corner ==> Pr11c6 ≠ nw
w[1]-3-in-r10c3-symmetric-se-corner ==> Hr11c3 = 1
w[1]-3-in-r10c3-closed-se-corner ==> Pr10c3 ≠ se
P-single: Pr11c6 = ew
P-single: Pr10c6 = nw
P-single: Pr10c5 = se
P-single: Pr11c4 = nw
w[1]-1-in-r10c6-symmetric-nw-corner ==> Pr11c7 ≠ o
P-single: Pr11c7 = ew
w[1]-1-in-r7c3-asymmetric-se-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ew, Pr7c3 ≠ ns, Pr7c3 ≠ ne
horizontal-line-{r10 r11}c3 ==> Ir10c3 = in
vertical-line-r10{c3 c4} ==> Ir10c4 = out
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = out
no-vertical-line-r9{c3 c4} ==> Ir9c3 = out
same-colour-in-r10{c2 c3} ==> Vr10c3 = 0
P-single: Pr9c1 = ns
P-single: Pr11c3 = ew
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
different-colours-in-{r8 r9}c10 ==> Hr9c10 = 1
whip[1]: Vr7c11{0 .} ==> Br7c11 ≠ w
B-single: Br7c11 = o
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o, Pr9c11 ≠ o
P-single: Pr9c11 = nw
B-single: Br8c11 = w
whip[1]: Pr9c11{nw .} ==> Br9c10 ≠ s, Br9c10 ≠ w
whip[1]: Br9c10{nw .} ==> Pr9c10 ≠ o, Pr9c10 ≠ sw, Nr9c10 ≠ 1
N-single: Nr9c10 = 2
w[1]-2-in-r9c10-open-se-corner ==> Vr9c10 = 1, Hr9c9 = 0
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = in
different-colours-in-{r9 r10}c9 ==> Hr10c9 = 1
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
whip[1]: Vr9c10{1 .} ==> Pr9c10 ≠ ew, Pr10c10 ≠ se, Pr10c10 ≠ ew, Br9c9 ≠ n, Br9c9 ≠ w, Br9c9 ≠ ns, Br9c9 ≠ sw, Br9c10 ≠ ns
P-single: Pr10c11 = o
P-single: Pr9c10 = se
B-single: Br9c10 = nw
whip[1]: Pr10c11{o .} ==> Vr10c11 ≠ 1, Hr10c10 ≠ 1
whip[1]: Pr9c10{se .} ==> Br8c9 ≠ sw, Br9c9 ≠ ne, Br9c9 ≠ nes
B-single: Br8c9 = w
whip[1]: Br8c9{w .} ==> Nr8c9 ≠ 2, Pr9c9 ≠ ne
N-single: Nr8c9 = 1
P-single: Pr9c9 = ns
whip[1]: Pr9c9{ns .} ==> Br9c8 ≠ w, Br9c8 ≠ sw
whip[1]: Br9c8{esw .} ==> Pr10c9 ≠ o, Pr10c9 ≠ ew, Nr9c8 ≠ 1
whip[1]: Br9c9{esw .} ==> Nr9c9 ≠ 1
whip[1]: Hr10c9{1 .} ==> Pr10c9 ≠ nw, Pr10c10 ≠ ns, Br9c9 ≠ ew, Br10c9 ≠ e
P-single: Pr10c10 = nw
P-single: Pr10c9 = ne
B-single: Br10c9 = n
B-single: Br9c9 = esw
w[1]-1-in-r10c8-symmetric-ne-corner ==> Pr11c8 ≠ o
P-single: Pr11c8 = nw
w[1]-1-in-r10c9-asymmetric-nw-corner ==> Pr11c10 ≠ ne
P-single: Pr11c10 = o
whip[1]: Pr10c10{nw .} ==> Vr10c10 ≠ 1
whip[1]: Pr10c9{ne .} ==> Br10c8 ≠ n, Br9c8 ≠ esw
B-single: Br9c8 = ew
B-single: Br10c8 = w
whip[1]: Br9c8{ew .} ==> Nr9c8 ≠ 3, Pr10c8 ≠ ne
N-single: Nr9c8 = 2
P-single: Pr10c8 = ns
whip[1]: Pr10c8{ns .} ==> Br10c7 ≠ o
B-single: Br10c7 = se
whip[1]: Br10c7{se .} ==> Nr10c7 ≠ 0
N-single: Nr10c7 = 2
whip[1]: Br9c9{esw .} ==> Nr9c9 ≠ 2
N-single: Nr9c9 = 3
whip[1]: Pr11c8{nw .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Pr11c10{o .} ==> Hr11c10 ≠ 1, Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Br11c10{o .} ==> Pr11c11 ≠ nw
P-single: Pr11c11 = o
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 1
N-single: Nr8c10 = 3
whip[1]: Vr5c10{0 .} ==> Pr5c10 ≠ se, Br5c10 ≠ wne
P-single: Pr5c10 = ew
whip[1]: Pr5c10{ew .} ==> Br4c9 ≠ n
B-single: Br4c9 = ns
whip[1]: Br4c9{ns .} ==> Nr4c9 ≠ 1, Pr5c9 ≠ o, Pr5c9 ≠ sw
N-single: Nr4c9 = 2
w[1]-1-in-r5c8-asymmetric-ne-corner ==> Pr6c8 ≠ ew, Pr6c8 ≠ nw
whip[1]: Pr6c8{ne .} ==> Hr6c7 ≠ 1, Br5c7 ≠ ns, Br5c7 ≠ se, Br5c7 ≠ sw, Br5c8 ≠ s, Br5c8 ≠ w, Br6c7 ≠ nw, Br6c7 ≠ n
H-single: Hr6c7 = 0
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
whip[1]: Hr6c7{0 .} ==> Pr6c7 ≠ se, Pr6c7 ≠ ew
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ sw, Br4c7 ≠ n, Br4c7 ≠ w, Br5c8 ≠ e
B-single: Br5c8 = n
whip[1]: Br5c8{n .} ==> Vr5c9 ≠ 1, Vr5c8 ≠ 1, Hr6c8 ≠ 1, Hr5c8 ≠ 0, Pr5c8 ≠ ns, Pr5c8 ≠ sw, Pr5c9 ≠ se, Pr6c8 ≠ ne, Pr6c9 ≠ nw
H-single: Hr5c8 = 1
H-single: Hr6c8 = 0
V-single: Vr5c8 = 0
V-single: Vr5c9 = 0
w[1]-2-in-r5c7-open-se-corner ==> Hr5c7 = 1, Vr5c7 = 1, Hr5c6 = 0, Vr4c7 = 0
w[1]-diagonal-1-1-in-{r5c8...r4c7}-with-no-se-outer-sides ==> Hr4c7 = 0
P-single: Pr5c7 = se
P-single: Pr6c9 = o
P-single: Pr6c8 = o
P-single: Pr5c9 = ew
P-single: Pr5c8 = ew
w[1]-1-in-r4c7-asymmetric-sw-corner ==> Pr4c8 ≠ nw, Pr4c8 ≠ ns
w[1]-1-in-r5c6-asymmetric-ne-corner ==> Pr6c6 ≠ ew, Pr6c6 ≠ se, Pr6c6 ≠ nw, Pr6c6 ≠ ns
w[1]-1-in-r6c5-symmetric-ne-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ ne, Pr7c5 ≠ o
vertical-line-r5{c6 c7} ==> Ir5c6 = out
no-horizontal-line-{r4 r5}c6 ==> Ir4c6 = out
no-vertical-line-r4{c6 c7} ==> Ir4c7 = out
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = out
no-vertical-line-r5{c8 c9} ==> Ir5c8 = in
same-colour-in-r3{c7 c8} ==> Vr3c8 = 0
same-colour-in-r4{c7 c8} ==> Vr4c8 = 0
w[1]-diagonal-1-1-in-{r4c7...r5c6}-with-no-ne-outer-sides ==> Hr6c6 = 0, Vr5c6 = 0
w[1]-diagonal-1-1-in-{r5c6...r6c5}-with-no-sw-inner-sides ==> Hr6c5 = 0, Vr6c6 = 0
no-vertical-line-r5{c5 c6} ==> Ir5c5 = out
no-horizontal-line-{r5 r6}c5 ==> Ir6c5 = out
no-vertical-line-r6{c5 c6} ==> Ir6c6 = out
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1
different-colours-in-{r6 r7}c6 ==> Hr7c6 = 1
whip[1]: Hr5c8{1 .} ==> Br4c8 ≠ o, Br4c8 ≠ w
B-single: Br4c8 = s
whip[1]: Br4c8{s .} ==> Nr4c8 ≠ 2, Nr4c8 ≠ 0, Pr4c8 ≠ sw
N-single: Nr4c8 = 1
P-single: Pr4c8 = o
whip[1]: Pr4c8{o .} ==> Br3c7 ≠ e, Br3c7 ≠ s, Br3c7 ≠ se, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c8 ≠ ew, Br3c8 ≠ wne, Br4c7 ≠ e
B-single: Br4c7 = s
whip[1]: Br3c8{ne .} ==> Pr3c8 ≠ ns, Pr3c8 ≠ se, Nr3c8 ≠ 3, Pr3c8 ≠ sw
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 1, Nr3c7 ≠ 3
whip[1]: Hr6c8{0 .} ==> Br6c8 ≠ n
B-single: Br6c8 = o
whip[1]: Br6c8{o .} ==> Nr6c8 ≠ 1
N-single: Nr6c8 = 0
whip[1]: Vr5c8{0 .} ==> Br5c7 ≠ ne, Br5c7 ≠ ew
B-single: Br5c7 = nw
whip[1]: Vr5c9{0 .} ==> Br5c9 ≠ nw
B-single: Br5c9 = n
whip[1]: Br5c9{n .} ==> Nr5c9 ≠ 2, Nr5c9 ≠ 3
N-single: Nr5c9 = 1
whip[1]: Vr5c7{1 .} ==> Br5c6 ≠ n, Br5c6 ≠ s, Br5c6 ≠ w
B-single: Br5c6 = e
whip[1]: Br5c6{e .} ==> Pr6c6 ≠ ne, Pr5c6 ≠ ne, Pr5c6 ≠ ns, Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Pr6c7 ≠ nw
P-single: Pr6c7 = ns
whip[1]: Pr6c7{ns .} ==> Br6c7 ≠ o, Br6c6 ≠ n, Br6c6 ≠ o, Br6c6 ≠ w, Br6c6 ≠ nw, Br6c6 ≠ nes
B-single: Br6c7 = w
whip[1]: Br6c7{w .} ==> Nr6c7 ≠ 2, Nr6c7 ≠ 0, Pr7c7 ≠ o
N-single: Nr6c7 = 1
P-single: Pr7c7 = nw
whip[1]: Pr7c7{nw .} ==> Br7c6 ≠ o, Br7c6 ≠ w
whip[1]: Br7c6{nw .} ==> Pr7c6 ≠ o, Pr7c6 ≠ ns, Pr7c6 ≠ nw, Pr7c6 ≠ sw, Nr7c6 ≠ 0
whip[1]: Pr7c6{ew .} ==> Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c5 ≠ ne
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 0, Nr6c6 ≠ 1
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ ns, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c6 ≠ ns, Br4c6 ≠ se, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ nes, Br5c5 ≠ ne, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ esw, Br5c5 ≠ wne, Br5c5 ≠ nes, Br4c5 ≠ e, Br4c5 ≠ s, Br4c6 ≠ s, Br5c5 ≠ e
whip[1]: Pr6c6{sw .} ==> Br6c5 ≠ n, Br6c5 ≠ e
whip[1]: Br6c5{w .} ==> Pr6c5 ≠ ne, Pr7c6 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c6 ≠ sw
P-single: Pr6c6 = o
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ s, Br5c5 ≠ ns, Br5c5 ≠ sw, Br5c5 ≠ swn, Br6c6 ≠ esw
B-single: Br6c6 = se
whip[1]: Br6c6{se .} ==> Nr6c6 ≠ 3
N-single: Nr6c6 = 2
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 3
whip[1]: Pr7c6{ew .} ==> Br7c5 ≠ sw, Br7c5 ≠ o, Br7c5 ≠ s, Br7c5 ≠ w
whip[1]: Br7c5{swn .} ==> Nr7c5 ≠ 0
whip[1]: Vr4c7{0 .} ==> Br4c6 ≠ e, Br4c6 ≠ ne, Br4c6 ≠ ew, Br4c6 ≠ wne
whip[1]: Br4c6{nw .} ==> Nr4c6 ≠ 3
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ sw, Br8c3 ≠ sw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c4 ≠ nw, Br7c3 ≠ n, Br7c3 ≠ w, Br7c4 ≠ ne, Br8c3 ≠ o, Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ ne
whip[1]: Br8c3{swn .} ==> Nr8c3 ≠ 0
whip[1]: Br7c3{s .} ==> Hr7c3 ≠ 1, Vr7c3 ≠ 1, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr7c3 ≠ se, Pr7c4 ≠ nw, Pr7c4 ≠ ew, Pr7c4 ≠ sw, Pr8c3 ≠ nw
V-single: Vr7c3 = 0
H-single: Hr7c3 = 0
whip[1]: Vr7c3{0 .} ==> Br7c2 ≠ e, Br7c2 ≠ ne, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ esw, Br7c2 ≠ nes
whip[1]: Br7c2{sw .} ==> Nr7c2 ≠ 3
whip[1]: Hr7c3{0 .} ==> Br6c3 ≠ s, Br6c3 ≠ ns, Br6c3 ≠ se, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ nes
whip[1]: Pr7c3{nw .} ==> Br6c2 ≠ ew, Br6c2 ≠ e, Br6c2 ≠ s
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o, Pr6c11 ≠ nw, Br6c10 ≠ ns
P-single: Pr6c11 = ns
B-single: Br6c10 = se
B-single: Br6c11 = w
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ nes
B-single: Br5c10 = ne
whip[1]: Br5c10{ne .} ==> Nr5c10 ≠ 3
N-single: Nr5c10 = 2
whip[1]: Hr11c6{1 .} ==> Br11c6 ≠ o, Br10c6 ≠ w
B-single: Br10c6 = s
B-single: Br11c6 = n
whip[1]: Vr10c5{1 .} ==> Pr11c5 ≠ ew, Br10c4 ≠ sw, Br10c5 ≠ nes
P-single: Pr11c5 = ne
B-single: Br10c5 = swn
B-single: Br10c4 = ew
whip[1]: Pr11c5{ne .} ==> Br11c4 ≠ n
B-single: Br11c4 = o
whip[1]: Vr9c5{0 .} ==> Br9c4 ≠ e, Br9c5 ≠ swn
B-single: Br9c5 = nes
whip[1]: Br9c5{nes .} ==> Pr9c6 ≠ nw
P-single: Pr9c6 = sw
whip[1]: Pr9c6{sw .} ==> Br9c6 ≠ o, Br8c5 ≠ se, Br8c5 ≠ esw, Br8c5 ≠ nes, Br8c6 ≠ ew
B-single: Br8c6 = e
B-single: Br9c6 = w
whip[1]: Br8c6{e .} ==> Nr8c6 ≠ 2, Pr8c6 ≠ ns, Pr8c6 ≠ sw
N-single: Nr8c6 = 1
whip[1]: Pr8c6{nw .} ==> Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ swn, Br7c5 ≠ e
whip[1]: Br9c6{w .} ==> Nr9c6 ≠ 0
N-single: Nr9c6 = 1
whip[1]: Hr11c3{1 .} ==> Br11c3 ≠ o, Br10c3 ≠ wne
B-single: Br10c3 = nes
B-single: Br11c3 = n
whip[1]: Vr10c3{0 .} ==> Br10c2 ≠ se
whip[1]: Pr9c1{ns .} ==> Vr8c1 ≠ 0, Hr9c1 ≠ 1, Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ nes, Br9c1 ≠ nw
H-single: Hr9c1 = 0
V-single: Vr8c1 = 1
vertical-line-r8{c0 c1} ==> Ir8c1 = in
whip[1]: Hr9c1{0 .} ==> Pr9c2 ≠ nw, Pr9c2 ≠ ew
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o, Pr8c1 ≠ o, Pr8c1 ≠ ne
B-single: Br8c0 = e
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ swn, Br7c1 ≠ n
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 1
whip[1]: Pr10c2{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ ew, Br9c2 ≠ wne, Br9c2 ≠ s, Br9c2 ≠ w, Br9c2 ≠ ns
whip[1]: Pr10c3{ew .} ==> Br9c2 ≠ o, Br9c2 ≠ n
whip[1]: Br9c2{swn .} ==> Nr9c2 ≠ 0
whip[1]: Pr3c7{se .} ==> Br3c7 ≠ o, Br2c7 ≠ e, Br2c7 ≠ n, Vr3c7 ≠ 0, Hr3c7 ≠ 0, Br3c6 ≠ sw
H-single: Hr3c7 = 1
V-single: Vr3c7 = 1
B-single: Br3c7 = nw
vertical-line-r3{c6 c7} ==> Ir3c6 = in
no-horizontal-line-{r2 r3}c6 ==> Ir2c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
whip[1]: Hr3c7{1 .} ==> Pr3c8 ≠ o, Pr3c8 ≠ ne
whip[1]: Pr3c8{ew .} ==> Br2c8 ≠ sw, Br2c8 ≠ swn, Br2c8 ≠ e, Br2c8 ≠ ne
whip[1]: Br3c7{nw .} ==> Nr3c7 ≠ 0
N-single: Nr3c7 = 2
whip[1]: Hr4c6{1 .} ==> Br4c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Br3c6 ≠ ew, Br4c6 ≠ w
B-single: Br3c6 = se
whip[1]: Br3c6{se .} ==> Vr3c6 ≠ 1
V-single: Vr3c6 = 0
no-vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
vertical-line-r2{c4 c5} ==> Ir2c4 = out
vertical-line-r2{c3 c4} ==> Ir2c3 = in
vertical-line-r2{c2 c3} ==> Ir2c2 = out
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
w[1]-3-in-r2c3-hit-by-verti-line-at-nw ==> Hr3c3 = 1
w[1]-2-in-r3c2-open-ne-corner ==> Hr4c2 = 1, Vr3c2 = 1, Hr4c1 = 0, Vr4c2 = 0
w[1]-2-in-r3c4-open-nw-corner ==> Vr3c5 = 1, Hr4c5 = 0, Vr4c5 = 0
w[1]-3+diagonal-2-isolated-end-in-{r2c4+r3c4...se} ==> Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
w[1]-2-in-r1c5-open-sw-corner ==> Hr1c5 = 1, Vr1c6 = 1, Hr1c6 = 0
w[1]-3-in-r1c6-hit-by-horiz-line-at-nw ==> Vr1c7 = 1, Hr2c6 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r3 r2}c3 ==> Hr4c3 = 0
w[1]-3-in-r1c6-closed-se-corner ==> Pr1c6 ≠ se
w[1]-3-in-r1c6-closed-sw-corner ==> Pr1c7 ≠ sw, Pr1c7 ≠ o
w[1]-3-in-r2c4-closed-nw-corner ==> Pr3c5 ≠ nw
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ ne
w[1]-3-in-r2c3-closed-se-corner ==> Pr2c3 ≠ se
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw
P-single: Pr1c3 = se
P-single: Pr2c4 = se
P-single: Pr2c3 = ns
P-single: Pr4c5 = nw
P-single: Pr3c4 = nw
P-single: Pr3c5 = ns
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ ns
P-single: Pr4c3 = sw
w[1]-1-in-r2c1-asymmetric-se-corner ==> Pr2c1 ≠ ns, Pr2c1 ≠ ne
no-horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
vertical-line-r1{c6 c7} ==> Ir1c6 = out
vertical-line-r1{c5 c6} ==> Ir1c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
vertical-line-r3{c1 c2} ==> Ir3c1 = in
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
horizontal-line-{r4 r5}c1 ==> Ir5c1 = out
horizontal-line-{r5 r6}c1 ==> Ir6c1 = in
horizontal-line-{r6 r7}c1 ==> Ir7c1 = out
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = out
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
w[1]-3-in-r5c1-hit-by-verti-line-at-sw ==> Vr5c2 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se
w[1]-3-in-r5c1-closed-ne-corner ==> Pr6c1 ≠ ne
w[1]-3-in-r6c1-closed-sw-corner ==> Pr6c2 ≠ sw
w[1]-3-in-r6c1-closed-nw-corner ==> Pr7c2 ≠ nw
P-single: Pr6c2 = nw
P-single: Pr6c1 = se
P-single: Pr5c1 = ne
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
whip[1]: Vr3c6{0 .} ==> Br3c5 ≠ e, Br3c5 ≠ se, Br3c5 ≠ ew
whip[1]: Br3c5{w .} ==> Nr3c5 ≠ 2
whip[1]: Vr1c3{1 .} ==> Br1c2 ≠ n, Br1c2 ≠ nw, Br1c3 ≠ ns
B-single: Br1c3 = nw
whip[1]: Br1c2{ew .} ==> Pr1c2 ≠ se, Pr1c2 ≠ ew
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ swn, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Pr2c2 ≠ nw, Nr1c1 ≠ 2
whip[1]: Pr2c2{sw .} ==> Br2c1 ≠ n
whip[1]: Br2c1{w .} ==> Hr2c1 ≠ 1, Pr3c1 ≠ ne, Pr2c1 ≠ se, Pr2c2 ≠ sw
H-single: Hr2c1 = 0
P-single: Pr2c1 = o
whip[1]: Hr2c1{0 .} ==> Br1c1 ≠ s
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 1
whip[1]: Pr2c1{o .} ==> Vr2c1 ≠ 1, Vr1c1 ≠ 1, Br1c1 ≠ wne, Br2c1 ≠ w
V-single: Vr1c1 = 0
V-single: Vr2c1 = 0
B-single: Br1c1 = o
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
same-colour-in-r1{c1 c2} ==> Vr1c2 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
same-colour-in-r2{c1 c2} ==> Vr2c2 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e, Pr1c1 ≠ se
P-single: Pr1c1 = o
B-single: Br1c0 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e, Pr3c1 ≠ ns
B-single: Br2c0 = o
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c1 ≠ n, Br3c1 ≠ w
whip[1]: Br1c1{o .} ==> Pr1c2 ≠ sw, Pr2c2 ≠ ns, Nr1c1 ≠ 3
N-single: Nr1c1 = 0
P-single: Pr2c2 = o
P-single: Pr1c2 = o
w[1]-1-in-r2c1-symmetric-ne-corner ==> Pr3c1 ≠ o
P-single: Pr3c1 = se
whip[1]: Pr2c2{o .} ==> Br1c2 ≠ ew, Br2c1 ≠ e, Br2c2 ≠ ew, Br2c2 ≠ esw
B-single: Br2c1 = s
B-single: Br1c2 = e
whip[1]: Br2c1{s .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ ne
whip[1]: Pr3c2{sw .} ==> Br3c1 ≠ se, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c1 ≠ o, Br3c1 ≠ e, Br3c1 ≠ s
whip[1]: Br3c1{wne .} ==> Pr4c1 ≠ o, Pr4c1 ≠ se, Pr4c2 ≠ nw, Nr3c1 ≠ 0, Nr3c1 ≠ 1
whip[1]: Pr4c2{ew .} ==> Br4c2 ≠ se, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ se, Br4c1 ≠ swn
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 1
whip[1]: Br1c2{e .} ==> Nr1c2 ≠ 2
N-single: Nr1c2 = 1
whip[1]: Br2c2{se .} ==> Nr2c2 ≠ 3
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Hr3c3{1 .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ nw, Br2c3 ≠ wne, Br3c3 ≠ s, Br3c3 ≠ w
P-single: Pr4c2 = ne
P-single: Pr3c3 = ne
B-single: Br3c3 = n
B-single: Br2c3 = esw
w[1]-1-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ ew
P-single: Pr4c4 = se
whip[1]: Pr4c2{ne .} ==> Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c2 ≠ ns, Br3c2 ≠ ew, Br4c1 ≠ ns, Br4c1 ≠ esw, Br4c2 ≠ w, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ wne
B-single: Br4c1 = sw
B-single: Br3c2 = sw
B-single: Br3c1 = wne
whip[1]: Br4c1{sw .} ==> Nr4c1 ≠ 3, Pr5c2 ≠ nw, Pr4c1 ≠ ne
N-single: Nr4c1 = 2
P-single: Pr4c1 = ns
whip[1]: Pr5c2{sw .} ==> Br5c2 ≠ o, Br5c2 ≠ e
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 0
whip[1]: Br3c2{sw .} ==> Pr3c2 ≠ ew
P-single: Pr3c2 = sw
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ se
B-single: Br2c2 = e
whip[1]: Br2c2{e .} ==> Nr2c2 ≠ 2
N-single: Nr2c2 = 1
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 2
N-single: Nr3c1 = 3
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ n, Br4c3 ≠ n, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nes
whip[1]: Br4c4{wne .} ==> Pr5c4 ≠ o, Pr5c4 ≠ se, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Pr5c5 ≠ nw, Nr4c4 ≠ 1
whip[1]: Pr5c4{nw .} ==> Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Hr3c4{0 .} ==> Br2c4 ≠ esw, Br3c4 ≠ ns
B-single: Br3c4 = se
B-single: Br2c4 = wne
whip[1]: Br2c4{wne .} ==> Pr2c5 ≠ se, Pr2c5 ≠ ns
P-single: Pr1c6 = sw
P-single: Pr2c5 = sw
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ ns, Br1c5 ≠ ew, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ nes
B-single: Br1c6 = esw
B-single: Br1c5 = ne
whip[1]: Br1c6{esw .} ==> Pr2c7 ≠ ew, Pr2c6 ≠ sw, Pr2c6 ≠ ew, Pr2c6 ≠ ns, Pr1c7 ≠ ew
P-single: Pr1c7 = se
P-single: Pr2c6 = ne
P-single: Pr2c7 = nw
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ w, Br1c7 ≠ s, Br1c7 ≠ e, Br1c7 ≠ n, Br1c7 ≠ o, Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c7 ≠ esw, Br1c7 ≠ nes
whip[1]: Br1c7{wne .} ==> Pr1c8 ≠ o, Pr1c8 ≠ se, Pr2c8 ≠ nw, Nr1c7 ≠ 0, Nr1c7 ≠ 1
whip[1]: Pr2c9{sw .} ==> Vr2c9 ≠ 0, Br1c8 ≠ nw, Br1c8 ≠ se, Br2c8 ≠ s, Br2c8 ≠ ns, Br2c9 ≠ o
V-single: Vr2c9 = 1
w[1]-3-in-r3c9-hit-by-verti-line-at-nw ==> Hr3c8 = 0
B-single: Br2c9 = w

LOOP[10]: Vr2c9-Vr3c9-Hr4c9-Vr3c10-Hr3c10-Vr2c11-Hr2c10-Vr1c10-Hr1c9- ==> Vr1c9 = 0
no-vertical-line-r1{c8 c9} ==> Ir1c8 = in
no-horizontal-line-{r2 r3}c8 ==> Ir2c8 = out
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1

LOOP[34]: Vr4c4-Hr4c4-Vr3c5-Vr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Vr1c3-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Vr1c10-Hr2c10-Vr2c11-Hr3c10-Vr3c10-Hr4c9-Vr3c9-Vr2c9-Hr2c8-Vr2c8-Hr3c7-Vr3c7-Hr4c6-Vr4c6-Hr5c5- ==> Hr5c4 = 0
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
w[1]-3-in-r6c4-hit-by-verti-line-at-ne ==> Vr6c4 = 1, Hr7c4 = 1
w[1]-3-in-r6c4-closed-sw-corner ==> Pr6c5 ≠ sw, Pr6c5 ≠ o
whip[1]: Vr2c9{1 .} ==> Pr3c9 ≠ sw
P-single: Pr3c9 = ns
whip[1]: Pr3c9{ns .} ==> Br3c8 ≠ ne
B-single: Br3c8 = e
whip[1]: Br3c8{e .} ==> Nr3c8 ≠ 2, Pr3c8 ≠ ew
N-single: Nr3c8 = 1
P-single: Pr3c8 = nw
whip[1]: Pr3c8{nw .} ==> Br2c7 ≠ ns
B-single: Br2c7 = se
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 1, Pr2c8 ≠ ew
N-single: Nr2c7 = 2
whip[1]: Pr2c8{se .} ==> Br1c7 ≠ swn
whip[1]: Br2c9{w .} ==> Nr2c9 ≠ 0
N-single: Nr2c9 = 1
whip[1]: Vr1c9{0 .} ==> Pr1c9 ≠ se, Pr2c9 ≠ ns, Br1c8 ≠ ew, Br1c9 ≠ wne
P-single: Pr2c9 = sw
P-single: Pr1c9 = ew
B-single: Br1c9 = ne
B-single: Br1c8 = ns
whip[1]: Pr2c9{sw .} ==> Br2c8 ≠ ew
B-single: Br2c8 = wne
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 2, Nr2c8 ≠ 1, Pr2c8 ≠ ns
N-single: Nr2c8 = 3
P-single: Pr2c8 = se
whip[1]: Pr2c8{se .} ==> Br1c7 ≠ wne
B-single: Br1c7 = nw
whip[1]: Br1c7{nw .} ==> Nr1c7 ≠ 3, Pr1c8 ≠ sw
N-single: Nr1c7 = 2
P-single: Pr1c8 = ew
whip[1]: Br1c9{ne .} ==> Nr1c9 ≠ 3
N-single: Nr1c9 = 2
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Hr5c4{0 .} ==> Pr5c4 ≠ ne, Pr5c5 ≠ ew, Pr5c5 ≠ sw, Br4c4 ≠ swn, Br5c4 ≠ n, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ nes
w[1]-1-in-r5c3-asymmetric-ne-corner ==> Pr6c3 ≠ se, Pr6c3 ≠ ns
whip[1]: Pr6c3{ne .} ==> Vr6c3 ≠ 1, Br5c3 ≠ s, Br5c3 ≠ w, Br6c2 ≠ se, Br6c3 ≠ w, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ wne
V-single: Vr6c3 = 0
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = in
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
same-colour-in-r6{c4 c5} ==> Vr6c5 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
w[1]-3-in-r6c4-closed-nw-corner ==> Pr7c5 ≠ se, Pr7c5 ≠ nw
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
same-colour-in-r5{c2 c3} ==> Vr5c3 = 0
3-in-r6c1-no-U-turn-from-east ==> Hr7c2 = O
w[0]-adjacent-3-in-r6c1-nolines-east ==> Vr7c2 = 1
no-vertical-line-r8{c1 c2} ==> Ir8c2 = in
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
whip[1]: Vr6c3{0 .} ==> Pr7c3 ≠ nw
P-single: Pr7c3 = o
whip[1]: Pr7c3{o .} ==> Br7c2 ≠ n, Br7c2 ≠ ns
whip[1]: Br7c2{sw .} ==> Pr7c2 ≠ ew
P-single: Pr7c2 = sw
whip[1]: Pr7c2{sw .} ==> Br7c2 ≠ s, Br7c2 ≠ o, Br7c1 ≠ ns, Br6c2 ≠ w, Br6c1 ≠ nes, Br7c1 ≠ nw
B-single: Br6c1 = swn
B-single: Br6c2 = o
whip[1]: Br6c1{swn .} ==> Pr7c1 ≠ se
P-single: Pr7c1 = ne
whip[1]: Pr7c1{ne .} ==> Br7c1 ≠ wne
B-single: Br7c1 = nes
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 2, Pr8c2 ≠ sw, Pr8c2 ≠ ew, Pr8c2 ≠ se, Pr8c2 ≠ ns, Pr8c2 ≠ ne, Pr8c2 ≠ o, Pr8c1 ≠ ns
N-single: Nr7c1 = 3
P-single: Pr8c1 = se
P-single: Pr8c2 = nw
whip[1]: Pr8c1{se .} ==> Br8c1 ≠ w, Br8c1 ≠ ew
whip[1]: Br8c1{wne .} ==> Nr8c1 ≠ 1
whip[1]: Pr8c2{nw .} ==> Br7c2 ≠ sw, Br8c1 ≠ wne, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ swn, Br8c2 ≠ wne
B-single: Br8c1 = nw
B-single: Br7c2 = w
whip[1]: Br8c1{nw .} ==> Nr8c1 ≠ 3, Pr9c2 ≠ ns, Pr9c2 ≠ ne
N-single: Nr8c1 = 2
whip[1]: Pr9c2{se .} ==> Br9c2 ≠ ne, Br9c2 ≠ sw
whip[1]: Br9c2{swn .} ==> Pr9c3 ≠ ne, Pr9c3 ≠ sw, Nr9c2 ≠ 2
whip[1]: Pr9c3{ew .} ==> Br8c3 ≠ esw, Br8c3 ≠ swn, Br8c3 ≠ n, Br8c3 ≠ e
whip[1]: Br8c3{ew .} ==> Nr8c3 ≠ 1, Nr8c3 ≠ 3
N-single: Nr8c3 = 2
whip[1]: Br7c2{w .} ==> Nr7c2 ≠ 2, Nr7c2 ≠ 0, Pr8c3 ≠ ew, Pr8c3 ≠ sw
N-single: Nr7c2 = 1
whip[1]: Pr9c4{nw .} ==> Hr9c4 ≠ 1, Br8c3 ≠ ns, Br8c3 ≠ ew, Br8c4 ≠ ns, Br8c4 ≠ sw, Br9c4 ≠ n
H-single: Hr9c4 = 0
w[0]-adjacent-3-in-r9c5-nolines-west ==> Vr8c5 = 1
B-single: Br9c4 = o
vertical-line-r8{c4 c5} ==> Ir8c4 = out
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
same-colour-in-r7{c5 c6} ==> Vr7c6 = 0
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
whip[1]: Hr9c4{0 .} ==> Pr9c5 ≠ ew
P-single: Pr9c5 = ne
whip[1]: Pr9c5{ne .} ==> Br8c5 ≠ s, Br8c5 ≠ ns
whip[1]: Br8c5{swn .} ==> Pr8c5 ≠ ew, Nr8c5 ≠ 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ nw, Br7c4 ≠ se, Br7c5 ≠ se, Br7c5 ≠ esw, Br8c5 ≠ swn
B-single: Br8c5 = sw
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 3, Pr8c6 ≠ nw
N-single: Nr8c5 = 2
P-single: Pr8c6 = o
whip[1]: Pr8c6{o .} ==> Br7c6 ≠ nw
B-single: Br7c6 = n
whip[1]: Br7c6{n .} ==> Pr7c6 ≠ se, Nr7c6 ≠ 2
N-single: Nr7c6 = 1
P-single: Pr7c6 = ew
w[1]-1-in-r6c5-asymmetric-se-corner ==> Pr6c5 ≠ ns
P-single: Pr6c5 = nw
whip[1]: Pr7c6{ew .} ==> Br6c5 ≠ w
B-single: Br6c5 = s
whip[1]: Br6c5{s .} ==> Pr7c5 ≠ ns
P-single: Pr7c5 = ew
whip[1]: Pr7c5{ew .} ==> Br6c4 ≠ esw, Br6c4 ≠ wne, Br6c4 ≠ nes, Br7c4 ≠ ew, Br7c5 ≠ nw
B-single: Br7c5 = n
B-single: Br7c4 = ns
B-single: Br6c4 = swn
whip[1]: Br7c5{n .} ==> Pr8c5 ≠ ns, Nr7c5 ≠ 2, Nr7c5 ≠ 3
N-single: Nr7c5 = 1
P-single: Pr11c2 = ne
P-single: Pr10c3 = ne
P-single: Pr9c4 = o
P-single: Pr8c5 = sw
whip[1]: Pr11c2{ne .} ==> Vr10c2 ≠ 0, Hr11c1 ≠ 1, Br11c1 ≠ n, Br10c1 ≠ sw, Br10c2 ≠ ns
H-single: Hr11c1 = 0
V-single: Vr10c2 = 1
P-single: Pr10c2 = sw
P-single: Pr11c1 = o
B-single: Br10c2 = sw
B-single: Br10c1 = ne
B-single: Br11c1 = o

LOOP[6]: Vr10c2-Hr11c2-Hr11c3-Vr10c4-Hr10c3- ==> Hr10c2 = 0
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = in
vertical-line-r10{c1 c2} ==> Ir10c1 = out
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
w[1]-2-in-r10c1-open-sw-corner ==> Hr10c1 = 1, Vr9c2 = 0
different-colours-in-r9{c2 c3} ==> Hr9c3 = 1
same-colour-in-{r8 r9}c2 ==> Hr9c2 = 0
whip[1]: Pr10c2{sw .} ==> Br9c1 ≠ ew, Br9c2 ≠ swn
B-single: Br9c2 = e
B-single: Br9c1 = sw
whip[1]: Br9c2{e .} ==> Pr9c2 ≠ se, Pr9c3 ≠ ew, Nr9c2 ≠ 3
N-single: Nr9c2 = 1
P-single: Pr10c1 = ne
P-single: Pr9c3 = ns
P-single: Pr9c2 = o
whip[1]: Pr9c3{ns .} ==> Vr8c3 ≠ 0, Hr9c3 ≠ 1, Br8c2 ≠ s, Br8c3 ≠ se, Br9c3 ≠ ns
H-single: Hr9c3 = 0
V-single: Vr8c3 = 1
P-single: Pr8c3 = se
B-single: Br9c3 = sw
B-single: Br8c3 = nw
B-single: Br8c2 = e
w[1]-1-in-r7c3-asymmetric-sw-corner ==> Pr7c4 ≠ ns
P-single: Pr7c4 = ne

LOOP[96]: Vr8c3-Vr9c3-Hr10c3-Vr10c4-Hr11c3-Hr11c2-Vr10c2-Hr10c1-Vr9c1-Vr8c1-Hr8c1-Vr7c2-Hr7c1-Vr6c1-Hr6c1-Vr5c2-Hr5c1-Vr4c1-Vr3c1-Hr3c1-Vr3c2-Hr4c2-Vr4c3-Hr5c3-Vr4c4-Hr4c4-Vr3c5-Vr2c5-Hr2c4-Vr2c4-Hr3c3-Vr2c3-Vr1c3-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Vr1c10-Hr2c10-Vr2c11-Hr3c10-Vr3c10-Hr4c9-Vr3c9-Vr2c9-Hr2c8-Vr2c8-Hr3c7-Vr3c7-Hr4c6-Vr4c6-Hr5c5-Vr5c5-Hr6c4-Vr6c4-Hr7c4-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Hr5c7-Hr5c8-Hr5c9-Hr5c10-Vr5c11-Vr6c11-Hr7c10-Vr7c10-Hr8c10-Vr8c11-Hr9c10-Vr9c10-Hr10c9-Vr9c9-Vr8c9-Hr8c8-Hr8c7-Vr8c7-Hr9c7-Vr9c8-Vr10c8-Hr11c7-Hr11c6-Hr11c5-Vr10c5-Hr10c5-Vr9c6-Hr9c5-Vr8c5-Hr8c4- ==> Hr8c3 = 1
horizontal-line-{r7 r8}c3 ==> Ir8c3 = out
same-colour-in-r8{c3 c4} ==> Vr8c4 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OOXXXOXXXO
OOXOXXXOXX
XOOOXXOOXO
XXOXXOOOOO
OXXXOOXXXX
XXXOOOXXXX
OXXXXXXXXO
XXOOXXOOXX
XXOOOXXOXO
OXXOXXXOOO

.   .   .———.———.———.   .———.———.———.   .
        | 2       2 | 3 |     2     | 2
.   .   .   .———.   .———.   .———.   .———.
  1     | 3 | 3 |     1     |   |     3 |
.———.   .———.   .   .   .———.   .   .———.
|   | 2   1   2 |     2 |       | 3 |
.   .———.   .———.   .———.   .   .———.   .
|       |   |       |     1           1
.———.   .———.   .———.   .———.———.———.———.
  3 |     1     |     1 | 2   1         |
.———.   .   .———.   .   .   .   .   .   .
| 3         | 3   1     |         0   2 |
.———.   .   .———.———.———.   .   .   .———.
    |     1   2           1   1   1 | 3
.———.   .———.———.   .   .———.———.   .———.
|       |     2 |       | 3     |       |
.   .   .   .   .———.   .———.   .   .———.
| 2     | 2       3 |       |   |   |
.———.   .———.   .———.   .   .   .———.   .
  2 | 2   3 |   | 3   1     | 1   1   0
.   .———.———.   .———.———.———.   .   .   .

init-time = 0.64s, solve-time = 42.82s, total-time = 43.46s
nb-facts=<Fact-195816>
Quasi-Loop max length = 96
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
