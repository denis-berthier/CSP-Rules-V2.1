
(solve
10 10
1 2 . . . . . . 2 3
1 . . 3 2 1 1 . . 3
. . 1 0 . . 1 1 . .
. 1 0 . . . . 1 1 .
. 2 . . 1 1 . . 1 .
. 2 . . 1 0 . . 2 .
. 2 1 . . . . 1 2 .
. . 0 2 . . 2 1 . .
1 . . 1 2 2 1 . . 2
2 1 . . . . . . 2 1
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 2 . . . . . . 2 3
1 . . 3 2 1 1 . . 3
. . 1 0 . . 1 1 . .
. 1 0 . . . . 1 1 .
. 2 . . 1 1 . . 1 .
. 2 . . 1 0 . . 2 .
. 2 1 . . . . 1 2 .
. . 0 2 . . 2 1 . .
1 . . 1 2 2 1 . . 2
2 1 . . . . . . 2 1

Loading pre-computed background
start init-inner-N-and-B-candidates 0.660943984985352
start solution 0.675631999969482
entering BRT
w[0]-0-in-r8c3 ==> Hr9c3 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr8c3 = 0
w[0]-0-in-r6c6 ==> Hr7c6 = 0, Hr6c6 = 0, Vr6c7 = 0, Vr6c6 = 0
w[0]-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[0]-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[0]-adjacent-3-0-in-c4{r2 r3} ==> Vr2c5 = 1, Vr2c4 = 1, Hr3c5 = 1, Hr3c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Vr1c4 = 0, Hr2c5 = 0, Hr2c3 = 0
w[1]-1-in-se-corner ==> Vr10c11 = 0, Hr11c10 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-2-in-sw-corner ==> Vr9c1 = 1, Hr11c2 = 1
w[1]-3-in-r2c10-hit-by-verti-line-at-ne ==> Vr2c10 = 1, Hr3c10 = 1
w[1]-3-in-r1c10-hit-by-verti-line-at-sw ==> Hr2c9 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r1 r2} ==> Hr2c1 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r5{c5 c6} ==> Vr5c6 = 0
w[1]-diagonal-1-1-in-{r5c6...r6c5}-with-no-sw-inner-sides ==> Hr6c5 = 0
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ o
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
w[1]-3-in-r2c4-closed-nw-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw
w[1]-3-in-r1c10-closed-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[3]-diagonal-1-1-in-sw-corner ==> Vr10c2 = 0, Hr10c1 = 0
w[1]-2-in-r10c1-open-ne-corner ==> Hr11c1 = 1, Vr10c1 = 1
adjacent-3s-in-c10{r1 r2} ==> Hr2c10 = 1
w[1]-2-in-r1c9-open-se-corner ==> Hr1c9 = 1, Vr1c9 = 1, Hr1c8 = 0
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ se
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
w[1]-diagonal-closed-3-1-in-{r2c4...r3c3} ==> Vr3c3 = 0
w[1]-diagonal-1-1-in-{r3c3...r4c2}-with-no-sw-inner-sides ==> Hr4c2 = 0
P-single: Pr1c10 = ew
P-single: Pr11c1 = ne
w[1]-1-in-r10c10-symmetric-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-1-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns
w[1]-1-in-r4c2-symmetric-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
entering level Loop with <Fact-93082>
entering level Col with <Fact-93170>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
vertical-line-r1{c8 c9} ==> Ir1c8 = out
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
no-vertical-line-r10{c1 c2} ==> Ir10c2 = in
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = in
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = out
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
Starting_init_links_with_<Fact-93222>
1137 candidates, 8539 csp-links and 35693 links. Density = 5.53%
starting non trivial part of solution
Entering_level_W1_with_<Fact-181691>
whip[1]: Vr3c11{1 .} ==> Br3c10 ≠ swn, Br3c11 ≠ o, Br3c10 ≠ o, Pr4c11 ≠ o, Pr4c11 ≠ sw, Br3c10 ≠ n, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ sw
B-single: Br3c11 = w
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ w, Br4c10 ≠ ne, Br4c10 ≠ sw, Br4c10 ≠ wne, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ s
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 0
whip[1]: Vr2c1{0 .} ==> Br2c1 ≠ w, Br2c0 ≠ e, Pr2c1 ≠ ns, Pr2c1 ≠ se, Pr3c1 ≠ ne, Pr3c1 ≠ ns
B-single: Br2c0 = o
w[1]-1-in-r1c1-symmetric-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
whip[1]: Pr1c2{ew .} ==> Hr1c2 ≠ 0, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c1 ≠ s
H-single: Hr1c2 = 1
B-single: Br1c1 = e
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o, Pr1c3 ≠ o, Pr1c3 ≠ se
B-single: Br0c2 = s
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br1c1{e .} ==> Pr2c1 ≠ ne, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr2c2 ≠ ew, Pr2c2 ≠ sw
P-single: Pr2c2 = ns
P-single: Pr1c3 = ew
P-single: Pr1c2 = se
P-single: Pr1c1 = o
P-single: Pr2c1 = o
w[1]-1-in-r2c1-symmetric-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-1-in-r2c1-asymmetric-ne-corner ==> Pr3c1 ≠ se
P-single: Pr3c1 = o
whip[1]: Pr2c2{ns .} ==> Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Br2c1 ≠ n, Vr2c2 ≠ 0, Hr2c2 ≠ 1, Br1c2 ≠ ne, Br1c2 ≠ ns, Br2c1 ≠ s, Br2c2 ≠ s, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
H-single: Hr2c2 = 0
V-single: Vr2c2 = 1
B-single: Br2c1 = e
B-single: Br1c2 = nw
vertical-line-r2{c1 c2} ==> Ir2c2 = in
whip[1]: Vr2c2{1 .} ==> Pr3c2 ≠ ew, Pr3c2 ≠ sw
whip[1]: Pr3c2{ns .} ==> Hr3c1 ≠ 1, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ s, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c1 ≠ n, Br3c2 ≠ o, Br3c2 ≠ e
H-single: Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e, Pr4c1 ≠ ne, Pr4c1 ≠ ns, Br3c1 ≠ w, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw
B-single: Br3c0 = o
whip[1]: Br3c1{se .} ==> Nr3c1 ≠ 3
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br1c2{nw .} ==> Vr1c3 ≠ 1
V-single: Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = in
vertical-line-r2{c4 c5} ==> Ir2c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = out
horizontal-line-{r2 r3}c3 ==> Ir2c3 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ w, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw
whip[1]: Br1c3{nes .} ==> Pr1c4 ≠ o, Pr1c4 ≠ se
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Vr2c3{0 .} ==> Pr2c3 ≠ se, Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne
P-single: Pr2c3 = o
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ ns, Br1c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ nes
whip[1]: Br2c3{se .} ==> Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c4 ≠ sw, Nr2c3 ≠ 3
whip[1]: Br1c3{ne .} ==> Nr1c3 ≠ 3
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 0, Nr2c2 ≠ 3
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr4c2 ≠ ne, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Br3c1 ≠ e, Br3c1 ≠ se, Br3c2 ≠ w, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw
P-single: Pr3c2 = ne
whip[1]: Pr3c2{ne .} ==> Br2c2 ≠ w
B-single: Br2c2 = sw
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 1, Pr3c3 ≠ se, Pr3c3 ≠ o
N-single: Nr2c2 = 2
w[1]-1-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br3c3 ≠ e, Br3c3 ≠ s, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Br3c3{w .} ==> Hr4c3 ≠ 1, Vr3c4 ≠ 1, Pr3c4 ≠ ns, Pr4c3 ≠ ne, Pr4c4 ≠ nw, Pr3c4 ≠ se
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c3 ≠ o, Br2c3 ≠ e, Br3c3 ≠ w
B-single: Br3c3 = n
whip[1]: Br3c3{n .} ==> Pr3c3 ≠ sw
P-single: Pr3c3 = ew
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, Br3c2 ≠ nes
whip[1]: Br3c2{ns .} ==> Nr3c2 ≠ 3
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 0
whip[1]: Br2c4{nes .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ns, Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr2c5 ≠ ns, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr3c5 ≠ ew
P-single: Pr2c5 = sw
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ ns, Br2c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ w, Br1c5 ≠ s, Br1c4 ≠ ne, Br1c4 ≠ w, Br1c4 ≠ n, Br1c4 ≠ ew, Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ se
whip[1]: Br2c5{sw .} ==> Pr2c6 ≠ nw, Pr2c6 ≠ ew
whip[1]: Br1c5{ne .} ==> Pr1c5 ≠ se, Nr1c5 ≠ 3, Pr1c5 ≠ sw
whip[1]: Br1c4{sw .} ==> Nr1c4 ≠ 1, Nr1c4 ≠ 3
N-single: Nr1c4 = 2
P-single: Pr1c5 = ew
P-single: Pr2c4 = se
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ e, Br1c5 ≠ o, Br1c4 ≠ sw
B-single: Br1c4 = ns
whip[1]: Br1c4{ns .} ==> Pr1c4 ≠ sw
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ ne
B-single: Br1c3 = n
whip[1]: Br1c3{n .} ==> Nr1c3 ≠ 2
N-single: Nr1c3 = 1
whip[1]: Br1c5{ne .} ==> Pr1c6 ≠ o, Pr1c6 ≠ se, Nr1c5 ≠ 0
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ se, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ o, Br1c6 ≠ e, Br1c6 ≠ s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr2c4{se .} ==> Br2c3 ≠ s, Br2c4 ≠ nes
B-single: Br2c4 = wne
B-single: Br2c3 = se
whip[1]: Br2c4{wne .} ==> Pr3c4 ≠ ew, Hr3c4 ≠ 1
P-single: Pr3c4 = nw
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 1
N-single: Nr2c3 = 2
whip[1]: Pr3c6{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ o, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Pr3c5{ns .} ==> Br3c5 ≠ s, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ o, Br3c5 ≠ e
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ n, Br4c2 ≠ e
whip[1]: Br4c2{w .} ==> Vr4c3 ≠ 1, Pr5c3 ≠ ne, Pr5c3 ≠ ns, Pr5c3 ≠ nw, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c3 ≠ sw
P-single: Pr4c3 = o
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ ns
B-single: Br3c2 = n
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 2
N-single: Nr3c2 = 1
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ e
whip[1]: Br4c1{wne .} ==> Pr5c1 ≠ ne, Pr5c2 ≠ nw, Nr4c1 ≠ 2
whip[1]: Pr5c2{ew .} ==> Br5c1 ≠ sw, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c2 ≠ se, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ne
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br5c2{sw .} ==> Pr6c3 ≠ nw
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ns, Br5c1 ≠ n
whip[1]: Br3c1{s .} ==> Nr3c1 ≠ 2
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Pr11c1{ne .} ==> Br10c1 ≠ ne, Br11c1 ≠ o
B-single: Br11c1 = n
B-single: Br10c1 = sw
whip[1]: Br11c1{n .} ==> Pr11c2 ≠ ne
P-single: Pr11c2 = ew
w[1]-1-in-r10c2-asymmetric-sw-corner ==> Pr10c3 ≠ ew, Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ ns
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ w, Br10c2 ≠ e, Br10c2 ≠ n, Br11c2 ≠ o
B-single: Br11c2 = n
B-single: Br10c2 = s
whip[1]: Br11c2{n .} ==> Pr11c3 ≠ o, Pr11c3 ≠ ne
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ swn, Br10c3 ≠ o, Br10c3 ≠ n, Br10c3 ≠ e, Br10c3 ≠ ne
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 0
whip[1]: Br10c2{s .} ==> Pr10c2 ≠ ne, Vr10c3 ≠ 1, Hr10c2 ≠ 1, Pr11c3 ≠ nw, Pr10c3 ≠ sw
H-single: Hr10c2 = 0
V-single: Vr10c3 = 0
w[1]-diagonal-1-1-in-{r10c2...r9c1}-with-no-nw-inner-sides ==> Vr9c2 = 0
P-single: Pr11c3 = ew
P-single: Pr10c2 = o
w[1]-1-in-r9c1-symmetric-se-corner ==> Pr9c1 ≠ se, Pr9c1 ≠ o
no-vertical-line-r9{c1 c2} ==> Ir9c2 = in
no-vertical-line-r10{c2 c3} ==> Ir10c3 = in
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
whip[1]: Hr10c2{0 .} ==> Br9c2 ≠ s, Br9c2 ≠ ns, Br9c2 ≠ se, Br9c2 ≠ sw, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c2 ≠ nes
whip[1]: Vr10c3{0 .} ==> Br10c3 ≠ w, Br10c3 ≠ nw, Br10c3 ≠ ew, Br10c3 ≠ wne
whip[1]: Br10c3{nes .} ==> Pr11c4 ≠ o, Pr11c4 ≠ ne
whip[1]: Pr11c4{ew .} ==> Br11c3 ≠ o, Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ ne
B-single: Br11c3 = n
whip[1]: Br10c4{nes .} ==> Nr10c4 ≠ 0
whip[1]: Vr9c2{0 .} ==> Pr9c2 ≠ ns, Pr9c2 ≠ se, Pr9c2 ≠ sw, Br9c1 ≠ e, Br9c2 ≠ w, Br9c2 ≠ nw, Br9c2 ≠ ew, Br9c2 ≠ wne
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 3
whip[1]: Br9c1{w .} ==> Pr10c1 ≠ ne
P-single: Pr10c1 = ns
w[1]-1-in-r9c1-asymmetric-sw-corner ==> Pr9c2 ≠ ew, Pr9c2 ≠ nw
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ n, Br9c1 ≠ s
B-single: Br9c1 = w
whip[1]: Br9c1{w .} ==> Pr9c1 ≠ ne, Hr9c1 ≠ 1
H-single: Hr9c1 = 0
P-single: Pr9c1 = ns
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
whip[1]: Hr9c1{0 .} ==> Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ nes
whip[1]: Pr9c1{ns .} ==> Br8c1 ≠ e, Br8c1 ≠ n, Br8c1 ≠ o, Br8c1 ≠ ne
whip[1]: Br8c1{wne .} ==> Pr8c1 ≠ o, Pr8c1 ≠ ne, Nr8c1 ≠ 0
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ swn, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 0
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Pr9c2{ne .} ==> Br8c2 ≠ s, Br8c2 ≠ w, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ wne, Br8c2 ≠ nes
whip[1]: Pr10c3{ne .} ==> Br9c3 ≠ s, Br9c3 ≠ w, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ wne, Br9c3 ≠ nes
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ wne, Br1c9 ≠ ne, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw
B-single: Br1c10 = nes
whip[1]: Br1c10{nes .} ==> Pr2c10 ≠ ns, Pr2c11 ≠ ns, Pr1c11 ≠ o
P-single: Pr1c11 = sw
P-single: Pr2c11 = nw
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes
B-single: Br2c10 = swn
whip[1]: Br2c10{swn .} ==> Pr3c10 ≠ sw, Pr3c10 ≠ ew, Pr3c10 ≠ se, Pr3c10 ≠ nw, Pr3c10 ≠ ns, Pr3c10 ≠ o, Pr2c10 ≠ ew, Pr3c11 ≠ ns
P-single: Pr1c9 = se
P-single: Pr3c11 = sw
P-single: Pr2c10 = se
P-single: Pr3c10 = ne
whip[1]: Pr1c9{se .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ n, Br1c8 ≠ o, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ sw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ ns
B-single: Br1c9 = nw
whip[1]: Br1c9{nw .} ==> Pr2c9 ≠ ew, Pr2c9 ≠ se
whip[1]: Pr2c9{nw .} ==> Br2c8 ≠ w, Br2c8 ≠ ne, Br2c8 ≠ sw, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c9 ≠ nes, Br2c8 ≠ o, Br2c8 ≠ s, Br2c9 ≠ n
whip[1]: Br2c8{swn .} ==> Nr2c8 ≠ 0
whip[1]: Br1c8{esw .} ==> Pr1c8 ≠ se, Pr1c8 ≠ ew, Nr1c8 ≠ 0
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ n, Br1c7 ≠ e, Br1c7 ≠ ns
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ e, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw
whip[1]: Br3c10{nes .} ==> Pr4c10 ≠ ne, Nr3c10 ≠ 1
whip[1]: Pr2c10{se .} ==> Br2c9 ≠ w, Br2c9 ≠ s, Br2c9 ≠ o, Br2c9 ≠ sw
whip[1]: Br2c9{esw .} ==> Nr2c9 ≠ 0
whip[1]: Pr3c10{ne .} ==> Br3c9 ≠ n, Br2c9 ≠ se, Br2c9 ≠ esw, Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr4c10 ≠ ns, Pr4c10 ≠ nw
whip[1]: Br3c9{sw .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ se, Pr3c9 ≠ ew, Nr3c9 ≠ 3
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 3
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Hr6c5{0 .} ==> Br6c5 ≠ n, Pr6c5 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c6 ≠ nw, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Br5c5 ≠ s
whip[1]: Br5c5{w .} ==> Pr5c5 ≠ se, Pr5c6 ≠ sw
whip[1]: Br6c5{w .} ==> Pr7c5 ≠ ne, Pr7c6 ≠ nw
whip[1]: Vr5c6{0 .} ==> Br5c6 ≠ w, Pr5c6 ≠ ns, Pr5c6 ≠ se, Pr6c6 ≠ ne, Pr6c6 ≠ ns, Br5c5 ≠ e
w[1]-1-in-r5c5-symmetric-se-corner ==> Pr5c5 ≠ nw, Pr5c5 ≠ o
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ o
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0, Nr4c4 ≠ 2
whip[1]: Br5c6{s .} ==> Pr5c7 ≠ sw, Pr6c7 ≠ nw
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Hr11c10{0 .} ==> Pr11c10 ≠ ew, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Pr9c11{nw .} ==> Vr8c11 ≠ 0, Br8c10 ≠ w, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ sw, Br8c10 ≠ swn, Br9c10 ≠ ne, Br9c10 ≠ sw, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ s
V-single: Vr8c11 = 1
vertical-line-r8{c10 c11} ==> Ir8c10 = in
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o, Pr8c11 ≠ o, Pr8c11 ≠ nw
B-single: Br8c11 = w
whip[1]: Pr8c11{sw .} ==> Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ esw, Br7c10 ≠ nes, Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ w
whip[1]: Br7c10{wne .} ==> Nr7c10 ≠ 0
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Pr10c10{ew .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ esw, Br9c9 ≠ nes, Br10c9 ≠ sw, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ w, Br10c9 ≠ ne
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Pr11c9{ew .} ==> Br11c8 ≠ o, Hr11c8 ≠ 0, Br10c8 ≠ nw, Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ w, Br10c8 ≠ ne
H-single: Hr11c8 = 1
B-single: Br11c8 = n
horizontal-line-{r10 r11}c8 ==> Ir10c8 = in
whip[1]: Hr11c8{1 .} ==> Pr11c8 ≠ o, Pr11c8 ≠ nw
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ esw, Br10c7 ≠ nes, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ w
whip[1]: Br10c7{wne .} ==> Nr10c7 ≠ 0
whip[1]: Br10c8{nes .} ==> Nr10c8 ≠ 0
whip[1]: Pr10c9{se .} ==> Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c9 ≠ sw, Br9c9 ≠ swn, Br10c8 ≠ nes, Br10c9 ≠ ns, Br10c9 ≠ ew, Br9c8 ≠ e, Br9c8 ≠ s
whip[1]: Vr10c11{0 .} ==> Pr10c11 ≠ sw, Br10c11 ≠ w, Pr10c11 ≠ ns
B-single: Br10c11 = o
whip[1]: Pr9c10{se .} ==> Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c10 ≠ esw, Br9c9 ≠ ne, Br9c9 ≠ wne, Br9c10 ≠ ns, Br9c10 ≠ ew, Br8c9 ≠ e, Br8c9 ≠ s
whip[1]: Br9c9{ew .} ==> Pr9c9 ≠ se, Nr9c9 ≠ 3
whip[1]: Hr3c5{1 .} ==> Br3c5 ≠ esw, Pr3c5 ≠ ns, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Br2c5 ≠ ew, Br3c5 ≠ w, Br3c5 ≠ ew, Br3c5 ≠ sw
P-single: Pr3c5 = ne
B-single: Br2c5 = sw
whip[1]: Pr3c5{ne .} ==> Vr3c5 ≠ 1
whip[1]: Br2c5{sw .} ==> Vr2c6 ≠ 1
V-single: Vr2c6 = 0
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
whip[1]: Vr2c6{0 .} ==> Br2c6 ≠ w
whip[1]: Br2c6{s .} ==> Pr2c7 ≠ sw, Pr3c7 ≠ nw
whip[1]: Pr2c6{ne .} ==> Br1c6 ≠ w, Br1c6 ≠ ns, Br1c6 ≠ ew, Br1c6 ≠ nes
whip[1]: Br3c5{nes .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw
whip[1]: Hr4c4{0 .} ==> Br4c4 ≠ wne, Hr4c4 ≠ 1, Pr4c4 ≠ se, Pr4c5 ≠ ew, Pr4c5 ≠ sw, Br4c4 ≠ swn
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Vr4c4 ≠ 1
whip[1]: Br4c4{s .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ ns, Nr4c4 ≠ 3, Pr5c4 ≠ nw
N-single: Nr4c4 = 1
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ nes, Br4c5 ≠ n, Br4c5 ≠ w
whip[1]: Hr5c3{0 .} ==> Br5c3 ≠ nes, Hr5c3 ≠ 1, Pr5c3 ≠ se, Pr5c3 ≠ ew, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Br5c3 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ nw, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ o, Br6c3 ≠ e, Br6c3 ≠ s
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Pr5c2{ew .} ==> Br4c1 ≠ o
whip[1]: Br4c1{wne .} ==> Pr5c1 ≠ o, Nr4c1 ≠ 0
whip[1]: Pr5c1{se .} ==> Vr5c1 ≠ 0, Br5c1 ≠ se, Br5c1 ≠ e
V-single: Vr5c1 = 1
vertical-line-r5{c0 c1} ==> Ir5c1 = in
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o, Pr6c1 ≠ o, Pr6c1 ≠ se
B-single: Br5c0 = e
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 1
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ esw, Br5c2 ≠ ew, Br6c1 ≠ ew, Br6c1 ≠ esw, Br6c2 ≠ nw, Br5c2 ≠ ns, Br6c1 ≠ n, Br6c1 ≠ ns
whip[1]: Br6c2{sw .} ==> Pr7c3 ≠ o, Pr7c3 ≠ se
whip[1]: Pr5c4{se .} ==> Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ nes, Br5c4 ≠ n, Br5c4 ≠ w
whip[1]: Vr6c6{0 .} ==> Br6c5 ≠ e, Vr6c6 ≠ 1, Pr6c6 ≠ se, Pr7c6 ≠ ne, Pr7c6 ≠ ns
P-single: Pr6c6 = o
w[1]-1-in-r5c6-symmetric-sw-corner ==> Pr5c7 ≠ ne, Pr5c7 ≠ o
w[1]-1-in-r6c5-symmetric-ne-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ o
whip[1]: Pr6c6{o .} ==> Hr6c6 ≠ 1, Br5c6 ≠ s
whip[1]: Br5c6{e .} ==> Pr6c7 ≠ ew, Pr6c7 ≠ sw
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ sw, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c4 ≠ o, Br7c4 ≠ s, Br7c4 ≠ w, Br7c4 ≠ ne
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 0
whip[1]: Pr5c7{ew .} ==> Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ o, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ ne
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Vr6c7{0 .} ==> Br6c7 ≠ wne, Vr6c7 ≠ 1, Pr6c7 ≠ ns, Pr6c7 ≠ se, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ nw, Br6c7 ≠ w, Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn
whip[1]: Pr6c7{ne .} ==> Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ wne, Br5c7 ≠ nes
whip[1]: Hr7c6{0 .} ==> Br7c6 ≠ nes, Hr7c6 ≠ 1, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Br7c6 ≠ n, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ nw, Br7c6 ≠ swn, Br7c6 ≠ wne
whip[1]: Pr7c7{se .} ==> Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ nes, Br7c7 ≠ n, Br7c7 ≠ w
whip[1]: Pr7c6{sw .} ==> Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ n, Br7c5 ≠ e, Br7c5 ≠ ns
whip[1]: Vr8c3{0 .} ==> Br8c2 ≠ esw, Vr8c3 ≠ 1, Pr8c3 ≠ ns, Pr8c3 ≠ se, Pr8c3 ≠ sw, Pr9c3 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Br8c2 ≠ e, Br8c2 ≠ ne
whip[1]: Vr8c4{0 .} ==> Br8c4 ≠ sw, Vr8c4 ≠ 1, Pr8c4 ≠ ns, Pr8c4 ≠ sw, Pr9c4 ≠ ns, Pr9c4 ≠ nw, Br8c4 ≠ nw, Br8c4 ≠ ew
whip[1]: Hr8c3{0 .} ==> Br7c3 ≠ s, Hr8c3 ≠ 1, Pr8c3 ≠ ne, Pr8c3 ≠ ew, Pr8c4 ≠ nw, Pr8c4 ≠ ew
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw, Br6c3 ≠ esw, Br7c2 ≠ sw, Br6c3 ≠ n, Br6c3 ≠ ne, Br7c2 ≠ ne
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ wne, Br8c1 ≠ w
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 1, Nr8c1 ≠ 3
N-single: Nr8c1 = 2
whip[1]: Pr7c2{se .} ==> Br6c1 ≠ ne, Br6c1 ≠ sw, Br6c2 ≠ sw, Br7c1 ≠ wne, Br7c1 ≠ nes, Br7c2 ≠ ns, Br7c2 ≠ ew
whip[1]: Br7c1{ew .} ==> Nr7c1 ≠ 3
whip[1]: Br6c2{ew .} ==> Pr6c3 ≠ ne
whip[1]: Pr6c3{sw .} ==> Br5c3 ≠ sw, Br5c3 ≠ esw
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 3
whip[1]: Br6c1{nes .} ==> Pr7c1 ≠ o, Pr7c1 ≠ ne, Nr6c1 ≠ 2
whip[1]: Pr7c1{se .} ==> Vr7c1 ≠ 0, Br7c1 ≠ ns, Br7c1 ≠ se, Br7c1 ≠ s
V-single: Vr7c1 = 1
vertical-line-r7{c0 c1} ==> Ir7c1 = in
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
P-single: Pr9c2 = ne
P-single: Pr8c1 = ns
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Hr8c1{0 .} ==> Pr8c2 ≠ nw, Pr8c2 ≠ ew, Br8c1 ≠ nw
B-single: Br8c1 = ew
whip[1]: Br8c1{ew .} ==> Vr8c2 ≠ 0
V-single: Vr8c2 = 1
vertical-line-r8{c1 c2} ==> Ir8c2 = out
no-vertical-line-r8{c2 c3} ==> Ir8c3 = out
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = out
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
different-colours-in-r9{c2 c3} ==> Hr9c3 = 1
different-colours-in-{r8 r9}c2 ==> Hr9c2 = 1
whip[1]: Vr8c2{1 .} ==> Br8c2 ≠ o, Br8c2 ≠ n
whip[1]: Br8c2{swn .} ==> Pr9c3 ≠ o, Pr9c3 ≠ se, Nr8c2 ≠ 0, Nr8c2 ≠ 1
whip[1]: Pr9c3{sw .} ==> Br9c3 ≠ swn, Br9c2 ≠ o, Br9c2 ≠ e, Br9c3 ≠ o, Br9c3 ≠ e
whip[1]: Br9c3{esw .} ==> Nr9c3 ≠ 0
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 0
whip[1]: Hr10c3{1 .} ==> Pr10c3 ≠ o, Pr10c4 ≠ o, Pr10c4 ≠ ne, Pr10c4 ≠ ns, Pr10c4 ≠ se, Br9c3 ≠ n, Br9c3 ≠ ne, Br10c3 ≠ s, Br10c3 ≠ se
P-single: Pr10c3 = ne
whip[1]: Pr10c3{ne .} ==> Br9c2 ≠ n
B-single: Br9c2 = ne
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 1, Pr9c3 ≠ ew
N-single: Nr9c2 = 2
P-single: Pr9c3 = sw
whip[1]: Pr9c3{sw .} ==> Hr9c3 ≠ 1
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 1
whip[1]: Br9c3{esw .} ==> Pr9c4 ≠ ew, Pr9c4 ≠ sw, Nr9c3 ≠ 1
w[1]-1-in-r9c4-symmetric-nw-corner ==> Pr10c5 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ o
whip[1]: Pr10c5{sw .} ==> Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ swn, Br10c5 ≠ wne, Br9c4 ≠ n, Br9c4 ≠ w, Br10c5 ≠ o, Br10c5 ≠ e, Br10c5 ≠ s
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Br9c4{s .} ==> Hr9c4 ≠ 1, Vr9c4 ≠ 1, Pr9c4 ≠ se, Pr9c5 ≠ nw, Pr9c5 ≠ ew, Pr9c5 ≠ sw, Pr10c4 ≠ nw
V-single: Vr9c4 = 0
H-single: Hr9c4 = 0
w[1]-2-in-r8c4-open-sw-corner ==> Hr8c4 = 1, Vr8c5 = 1, Hr8c5 = 0, Vr7c5 = 0
P-single: Pr8c5 = sw
P-single: Pr8c4 = ne
P-single: Pr9c4 = o
w[1]-1-in-r7c3-asymmetric-se-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ ns
P-single: Pr6c2 = o
P-single: Pr7c3 = nw
vertical-line-r8{c4 c5} ==> Ir8c5 = in
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = out
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
whip[1]: Vr9c4{0 .} ==> Br9c3 ≠ esw
B-single: Br9c3 = sw
whip[1]: Br9c3{sw .} ==> Nr9c3 ≠ 3
N-single: Nr9c3 = 2
whip[1]: Hr9c4{0 .} ==> Br8c4 ≠ ns, Br8c4 ≠ se
B-single: Br8c4 = ne
whip[1]: Hr8c4{1 .} ==> Br7c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ nw, Br7c4 ≠ ew
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 1
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ o, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ s, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ nes
whip[1]: Br8c5{wne .} ==> Nr8c5 ≠ 0
whip[1]: Hr8c5{0 .} ==> Pr8c6 ≠ nw, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Br7c5 ≠ s, Br7c5 ≠ sw, Br7c5 ≠ nes, Br8c5 ≠ nw, Br8c5 ≠ swn, Br8c5 ≠ wne
whip[1]: Vr7c5{0 .} ==> Pr7c5 ≠ ns, Pr7c5 ≠ se, Br7c4 ≠ se, Br7c4 ≠ esw, Br7c5 ≠ w, Br7c5 ≠ wne
whip[1]: Br7c5{ne .} ==> Nr7c5 ≠ 1, Nr7c5 ≠ 3
whip[1]: Br7c4{swn .} ==> Hr7c4 ≠ 0, Pr7c4 ≠ o, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr7c4 ≠ sw
H-single: Hr7c4 = 1
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = out
no-vertical-line-r6{c3 c4} ==> Ir6c4 = out
same-colour-in-{r5 r6}c3 ==> Hr6c3 = 0
whip[1]: Hr7c4{1 .} ==> Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ w, Br6c4 ≠ ne, Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ wne
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Hr7c3{0 .} ==> Pr7c4 ≠ ew, Br6c3 ≠ ns, Br6c3 ≠ nes, Br7c3 ≠ n
whip[1]: Br6c3{ew .} ==> Vr6c3 ≠ 0, Pr6c3 ≠ ew, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Nr6c3 ≠ 3
V-single: Vr6c3 = 1
P-single: Pr6c3 = ns
vertical-line-r6{c2 c3} ==> Ir6c2 = in
whip[1]: Vr6c3{1 .} ==> Br6c2 ≠ ns
whip[1]: Pr6c3{ns .} ==> Br5c3 ≠ e, Br5c3 ≠ o, Vr5c3 ≠ 0, Hr6c2 ≠ 1, Br5c2 ≠ sw, Br5c3 ≠ s, Br5c3 ≠ se, Br6c2 ≠ ne
H-single: Hr6c2 = 0
V-single: Vr5c3 = 1
P-single: Pr5c3 = sw
B-single: Br5c2 = ne
w[1]-1-in-r4c2-asymmetric-se-corner ==> Pr4c2 ≠ sw
P-single: Pr4c2 = o
vertical-line-r5{c2 c3} ==> Ir5c2 = in
same-colour-in-r5{c1 c2} ==> Vr5c2 = 0
w[1]-2-in-r5c2-open-sw-corner ==> Hr5c2 = 1
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ w
B-single: Br4c2 = s
whip[1]: Br4c2{s .} ==> Pr5c2 ≠ ns, Vr4c2 ≠ 1
V-single: Vr4c2 = 0
P-single: Pr5c2 = ew
no-vertical-line-r4{c1 c2} ==> Ir4c1 = out
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
whip[1]: Vr4c2{0 .} ==> Br4c1 ≠ wne
B-single: Br4c1 = s
whip[1]: Br4c1{s .} ==> Nr4c1 ≠ 3, Pr5c1 ≠ ns, Pr4c1 ≠ se
N-single: Nr4c1 = 1
P-single: Pr4c1 = o
P-single: Pr5c1 = se
whip[1]: Pr4c1{o .} ==> Br3c1 ≠ s
B-single: Br3c1 = o
whip[1]: Br3c1{o .} ==> Nr3c1 ≠ 1
N-single: Nr3c1 = 0
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ew
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 0
whip[1]: Vr6c4{0 .} ==> Pr6c4 ≠ ns, Pr6c4 ≠ se, Pr7c4 ≠ ne, Br6c3 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn
P-single: Pr7c4 = se
B-single: Br6c3 = w
w[1]-1-in-r7c3-asymmetric-ne-corner ==> Pr8c3 ≠ nw
P-single: Pr8c3 = o
whip[1]: Pr7c4{se .} ==> Br7c3 ≠ w, Br7c4 ≠ ns
B-single: Br7c4 = swn
B-single: Br7c3 = e
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 2
N-single: Nr7c4 = 3
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c3 c4} ==> Vr7c3 = 0
P-single: Pr7c2 = se
no-vertical-line-r7{c2 c3} ==> Ir7c2 = out
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
w[1]-2-in-r7c2-open-se-corner ==> Hr7c2 = 1, Vr7c2 = 1, Hr7c1 = 0, Vr6c2 = 0
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1

LOOP[20]: Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3- ==> Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c4 = in
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
different-colours-in-{r9 r10}c4 ==> Hr10c4 = 1

LOOP[22]: Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4- ==> Vr10c5 = 0
no-vertical-line-r10{c4 c5} ==> Ir10c5 = in
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
whip[1]: Vr7c3{0 .} ==> Br7c2 ≠ se
B-single: Br7c2 = nw
whip[1]: Br7c2{nw .} ==> Pr8c2 ≠ se
P-single: Pr8c2 = ns
whip[1]: Pr8c2{ns .} ==> Br7c1 ≠ w, Br7c1 ≠ nw, Br8c2 ≠ swn
B-single: Br8c2 = sw
B-single: Br7c1 = ew
whip[1]: Br8c2{sw .} ==> Nr8c2 ≠ 3
N-single: Nr8c2 = 2
whip[1]: Br7c1{ew .} ==> Nr7c1 ≠ 1, Pr7c1 ≠ se
N-single: Nr7c1 = 2
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ nes
B-single: Br6c1 = w
whip[1]: Br6c1{w .} ==> Nr6c1 ≠ 3, Pr6c1 ≠ ne
N-single: Nr6c1 = 1
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ swn
B-single: Br5c1 = nw
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 3
N-single: Nr5c1 = 2
whip[1]: Pr7c2{se .} ==> Br6c2 ≠ ew
B-single: Br6c2 = se
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr10c4{0 .} ==> Pr11c4 ≠ nw, Pr10c4 ≠ sw, Br10c3 ≠ nes, Br10c4 ≠ w, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne
P-single: Pr10c4 = ew
P-single: Pr11c4 = ew
B-single: Br10c3 = ns
w[1]-1-in-r9c4-asymmetric-sw-corner ==> Pr9c5 ≠ ns
P-single: Pr9c5 = ne
whip[1]: Pr10c4{ew .} ==> Br10c4 ≠ s, Br9c4 ≠ e, Br10c4 ≠ se
B-single: Br9c4 = s
whip[1]: Br9c4{s .} ==> Pr10c5 ≠ ns, Pr10c5 ≠ ne, Vr9c5 ≠ 1
V-single: Vr9c5 = 0
no-vertical-line-r9{c4 c5} ==> Ir9c5 = out
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1

LOOP[24]: Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
different-colours-in-{r8 r9}c5 ==> Hr9c5 = 1
whip[1]: Vr9c5{0 .} ==> Br9c5 ≠ nw, Br9c5 ≠ ew, Br9c5 ≠ sw
whip[1]: Hr10c5{1 .} ==> Pr10c5 ≠ sw, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Br9c5 ≠ ne, Br10c5 ≠ w, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ esw
P-single: Pr10c5 = ew
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ nes
B-single: Br10c4 = ns
whip[1]: Br10c4{ns .} ==> Nr10c4 ≠ 3, Nr10c4 ≠ 1, Pr11c5 ≠ nw, Pr11c5 ≠ ne, Pr11c5 ≠ o
N-single: Nr10c4 = 2
P-single: Pr11c5 = ew
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ ne, Br10c5 ≠ n, Br11c5 ≠ o, Br11c4 ≠ o
B-single: Br11c4 = n
B-single: Br11c5 = n
whip[1]: Br11c5{n .} ==> Pr11c6 ≠ o, Pr11c6 ≠ ne
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 1
whip[1]: Pr9c6{ew .} ==> Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ swn, Br8c6 ≠ o, Br8c6 ≠ n, Br8c6 ≠ e, Br8c6 ≠ ne
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Pr10c6{sw .} ==> Vr9c6 ≠ 1, Br9c5 ≠ se, Br9c6 ≠ nw, Br9c6 ≠ ew, Br9c6 ≠ sw, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ wne, Br10c6 ≠ s
V-single: Vr9c6 = 0
B-single: Br9c5 = ns
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1

LOOP[26]: Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6- ==> Vr10c7 = 0
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Vr9c6{0 .} ==> Pr9c6 ≠ ns
whip[1]: Pr9c6{ew .} ==> Br8c5 ≠ ew, Br8c5 ≠ w
whip[1]: Br8c5{esw .} ==> Nr8c5 ≠ 1
whip[1]: Hr10c6{1 .} ==> Pr10c6 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Br9c6 ≠ ne, Br10c6 ≠ w, Br10c6 ≠ ew
P-single: Pr10c6 = ew
w[1]-1-in-r7c8-asymmetric-sw-corner ==> Pr7c9 ≠ ew, Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ ns
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ nes
B-single: Br10c5 = ns
whip[1]: Br10c5{ns .} ==> Nr10c5 ≠ 3, Pr11c6 ≠ nw
N-single: Nr10c5 = 2
P-single: Pr11c6 = ew
whip[1]: Pr11c6{ew .} ==> Br11c6 ≠ o
B-single: Br11c6 = n
whip[1]: Br11c6{n .} ==> Pr11c7 ≠ o, Pr11c7 ≠ ne
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ e, Br10c7 ≠ ne
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ nw, Br6c9 ≠ se, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Br7c10{sw .} ==> Nr7c10 ≠ 1, Nr7c10 ≠ 3
N-single: Nr7c10 = 2
whip[1]: Pr6c9{sw .} ==> Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br5c8 ≠ nes, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ w
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Pr6c10{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ wne, Br5c10 ≠ nes, Br6c9 ≠ ew, Br6c10 ≠ nw, Br6c10 ≠ swn, Br6c10 ≠ wne, Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ ns, Br6c9 ≠ ns
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ se, Br6c8 ≠ esw, Br6c8 ≠ nes, Br7c9 ≠ nw, Br7c8 ≠ n, Br7c8 ≠ e
whip[1]: Br7c8{w .} ==> Hr7c8 ≠ 1, Vr7c9 ≠ 1, Pr7c8 ≠ ne, Pr8c9 ≠ ne, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c9 ≠ sw
V-single: Vr7c9 = 0
H-single: Hr7c8 = 0
whip[1]: Vr7c9{0 .} ==> Br7c9 ≠ ew, Br7c9 ≠ sw
whip[1]: Hr7c8{0 .} ==> Br6c8 ≠ s, Br6c8 ≠ ns, Br6c8 ≠ sw, Br6c8 ≠ swn
whip[1]: Pr7c10{sw .} ==> Br6c10 ≠ sw, Br6c10 ≠ esw
whip[1]: Pr8c10{sw .} ==> Br8c10 ≠ wne
whip[1]: Pr8c8{ew .} ==> Br8c7 ≠ sw, Br8c7 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 1
whip[1]: Pr10c7{sw .} ==> Br10c7 ≠ wne
whip[1]: Br10c7{ew .} ==> Pr10c8 ≠ sw, Nr10c7 ≠ 3
whip[1]: Vr10c7{0 .} ==> Pr11c7 ≠ nw, Pr10c7 ≠ sw, Br10c6 ≠ nes, Br10c7 ≠ ew
P-single: Pr11c7 = ew
B-single: Br10c6 = ns
w[1]-1-in-r9c7-asymmetric-sw-corner ==> Pr9c8 ≠ ew, Pr9c8 ≠ se, Pr9c8 ≠ nw, Pr9c8 ≠ ns
w[1]-1-in-r8c8-symmetric-sw-corner ==> Pr8c9 ≠ sw, Pr8c9 ≠ o
whip[1]: Pr11c7{ew .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Br11c7{n .} ==> Pr11c8 ≠ ne
P-single: Pr11c8 = ew
whip[1]: Pr11c8{ew .} ==> Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn
whip[1]: Br10c8{se .} ==> Pr10c8 ≠ ns, Pr10c8 ≠ se, Nr10c8 ≠ 3
whip[1]: Br10c6{ns .} ==> Nr10c6 ≠ 3
N-single: Nr10c6 = 2
whip[1]: Pr7c10{ew .} ==> Br6c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ e, Br6c10 ≠ ne, Br7c9 ≠ ne
whip[1]: Br7c9{se .} ==> Hr8c9 ≠ 0, Pr8c10 ≠ ne, Pr8c10 ≠ ns
H-single: Hr8c9 = 1
whip[1]: Hr8c9{1 .} ==> Br8c9 ≠ o, Br8c9 ≠ w, Br8c9 ≠ se, Br8c9 ≠ esw
whip[1]: Br8c9{nes .} ==> Pr9c9 ≠ ne, Nr8c9 ≠ 0
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ sw
whip[1]: Br7c10{ew .} ==> Pr7c11 ≠ o
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Pr8c9{ew .} ==> Br8c8 ≠ s, Br8c8 ≠ w
whip[1]: Br8c8{e .} ==> Hr9c8 ≠ 1, Vr8c8 ≠ 1, Pr9c8 ≠ ne, Pr8c8 ≠ ns, Pr8c8 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ ew, Pr9c9 ≠ sw
V-single: Vr8c8 = 0
H-single: Hr9c8 = 0
w[1]-diagonal-1-1-in-{r8c8...r9c7}-with-no-sw-inner-sides ==> Hr9c7 = 0, Vr9c8 = 0
w[1]-2-in-r8c7-open-se-corner ==> Hr8c7 = 1, Vr8c7 = 1, Hr8c6 = 0, Vr7c7 = 0
whip[1]: Vr8c8{0 .} ==> Br8c7 ≠ se, Br8c7 ≠ ew
whip[1]: Br8c7{nw .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ sw
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ se, Br7c6 ≠ esw, Br7c7 ≠ nw, Br7c7 ≠ wne, Br8c6 ≠ wne, Br8c6 ≠ nes, Br7c7 ≠ o, Br7c7 ≠ e
whip[1]: Br7c7{swn .} ==> Pr7c8 ≠ sw, Nr7c7 ≠ 0
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ ns, Br6c7 ≠ s
whip[1]: Br8c6{ew .} ==> Nr8c6 ≠ 3
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 3
whip[1]: Hr9c8{0 .} ==> Br9c8 ≠ n, Br9c8 ≠ nw, Br9c8 ≠ nes
whip[1]: Hr9c7{0 .} ==> Pr9c7 ≠ se, Pr9c7 ≠ ew, Pr9c8 ≠ sw, Br8c7 ≠ ns, Br9c7 ≠ n
P-single: Pr8c7 = se
P-single: Pr9c8 = o
B-single: Br8c7 = nw
whip[1]: Pr8c7{se .} ==> Br8c6 ≠ w, Br8c6 ≠ s, Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c7 ≠ swn, Br8c6 ≠ ns, Br8c6 ≠ nw
whip[1]: Br8c6{ew .} ==> Pr8c6 ≠ ne, Pr8c6 ≠ se, Nr8c6 ≠ 1
N-single: Nr8c6 = 2
whip[1]: Br7c7{se .} ==> Hr7c7 ≠ 1, Pr7c7 ≠ se, Pr7c8 ≠ nw, Nr7c7 ≠ 3
H-single: Hr7c7 = 0
P-single: Pr7c7 = o
whip[1]: Hr7c7{0 .} ==> Br6c7 ≠ se, Br6c7 ≠ nes
whip[1]: Br6c7{ne .} ==> Nr6c7 ≠ 3
whip[1]: Br7c6{w .} ==> Nr7c6 ≠ 2
whip[1]: Pr9c8{o .} ==> Br9c7 ≠ e, Br9c8 ≠ w, Br9c8 ≠ esw
whip[1]: Br9c8{se .} ==> Pr10c8 ≠ ne, Pr10c8 ≠ nw, Nr9c8 ≠ 1, Nr9c8 ≠ 3
whip[1]: Pr9c9{ns .} ==> Hr9c9 ≠ 1, Br8c9 ≠ nes, Br9c9 ≠ ns
H-single: Hr9c9 = 0
whip[1]: Hr9c9{0 .} ==> Pr9c10 ≠ nw
whip[1]: Pr9c10{se .} ==> Vr8c10 ≠ 1, Br8c10 ≠ ew
V-single: Vr8c10 = 0
no-vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-horizontal-line-{r8 r9}c9 ==> Ir9c9 = in
horizontal-line-{r7 r8}c9 ==> Ir7c9 = out
no-vertical-line-r7{c8 c9} ==> Ir7c8 = out
no-horizontal-line-{r6 r7}c8 ==> Ir6c8 = out
whip[1]: Vr8c10{0 .} ==> Pr8c10 ≠ sw
whip[1]: Pr7c11{nw .} ==> Vr6c11 ≠ 0, Br6c10 ≠ ns, Br7c10 ≠ ne, Br6c10 ≠ s
V-single: Vr6c11 = 1
vertical-line-r6{c10 c11} ==> Ir6c10 = in
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ nw
B-single: Br6c11 = w
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ esw, Br5c10 ≠ o, Br5c10 ≠ n
whip[1]: Br5c10{swn .} ==> Nr5c10 ≠ 0
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 1
whip[1]: Br8c9{nw .} ==> Nr8c9 ≠ 3
whip[1]: Br10c3{ns .} ==> Nr10c3 ≠ 3
N-single: Nr10c3 = 2
whip[1]: Br6c3{w .} ==> Nr6c3 ≠ 2
N-single: Nr6c3 = 1
whip[1]: Pr6c4{ne .} ==> Br5c4 ≠ s, Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ wne
whip[1]: Br5c4{swn .} ==> Pr5c5 ≠ sw, Pr6c5 ≠ nw, Nr5c4 ≠ 2
whip[1]: Pr6c5{sw .} ==> Br6c4 ≠ ns
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ o, Br4c5 ≠ e
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Br5c9{w .} ==> Pr5c10 ≠ sw, Pr6c9 ≠ ne, Pr5c9 ≠ se
whip[1]: Pr6c9{sw .} ==> Br6c8 ≠ o, Br6c8 ≠ w
whip[1]: Br6c8{wne .} ==> Nr6c8 ≠ 0
whip[1]: Br4c9{w .} ==> Pr4c10 ≠ sw, Pr5c9 ≠ ne, Pr5c10 ≠ nw, Pr4c9 ≠ se
whip[1]: Pr4c10{ew .} ==> Br4c10 ≠ ew, Br4c10 ≠ esw
whip[1]: Br4c8{w .} ==> Pr4c9 ≠ sw, Pr5c8 ≠ ne, Pr5c9 ≠ nw, Pr4c8 ≠ se
whip[1]: Br3c8{w .} ==> Pr3c9 ≠ sw, Pr4c8 ≠ ne, Pr4c9 ≠ nw, Pr3c8 ≠ se
whip[1]: Pr3c9{nw .} ==> Br2c8 ≠ ns, Br2c8 ≠ swn
whip[1]: Br3c7{w .} ==> Pr3c8 ≠ sw, Pr4c7 ≠ ne, Pr4c8 ≠ nw, Pr3c7 ≠ se
whip[1]: Br2c7{w .} ==> Pr2c8 ≠ sw, Pr3c7 ≠ ne, Pr3c8 ≠ nw, Pr2c7 ≠ se
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o
B-single: Br0c9 = s
Entering_relation_bivalue_with_<Fact-185861>
Entering_level_BC2_with_<Fact-186246>
Entering_level_W2_with_<Fact-187052>
Entering_level_BC3_with_<Fact-189619>
Entering_level_W3_with_<Fact-192057>
whip[3]: Pr5c10{ew o} - Br5c10{swn e} - Pr5c11{o .} ==> Br4c10 ≠ n
whip[3]: Pr2c7{ew o} - Br1c6{esw n} - Pr1c7{o .} ==> Br1c7 ≠ o
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[3]: Pr5c6{ew ne} - Br4c5{swn wne} - Pr4c6{o .} ==> Br4c6 ≠ swn
whip[3]: Pr3c9{nw ns} - Br3c8{n e} - Pr3c8{ne .} ==> Br2c8 ≠ ew
whip[3]: Pr2c7{nw ew} - Br1c6{ne sw} - Pr1c7{se .} ==> Br1c7 ≠ nes
whip[1]: Br1c7{wne .} ==> Pr2c8 ≠ nw
Entering_level_BC4_with_<Fact-200133>
Entering_level_W4_with_<Fact-206903>
Entering_level_BC5_with_<Fact-231777>
Entering_level_W5_with_<Fact-249379>
whip[5]: Br5c10{e ne} - Pr5c11{nw sw} - Br4c10{e ns} - Pr4c10{se ew} - Br4c9{e .} ==> Pr5c10 ≠ ew
whip[1]: Pr5c10{se .} ==> Hr5c9 ≠ 1, Br4c9 ≠ s, Br5c9 ≠ n
H-single: Hr5c9 = 0
whip[1]: Hr5c9{0 .} ==> Pr5c9 ≠ ew
whip[1]: Pr5c9{sw .} ==> Br5c8 ≠ swn, Br5c8 ≠ ns
whip[3]: Pr5c11{nw sw} - Br5c10{e ne} - Pr5c10{se .} ==> Br4c10 ≠ ns
whip[1]: Br4c10{swn .} ==> Pr4c10 ≠ ew
whip[1]: Pr4c10{se .} ==> Hr4c9 ≠ 1, Br3c9 ≠ sw, Br3c9 ≠ s, Br4c9 ≠ n
H-single: Hr4c9 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c8{r3 r4} ==> Hr4c8 = 0
no-horizontal-line-{r3 r4}c9 ==> Ir4c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = in
whip[1]: Hr4c9{0 .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ ew
whip[1]: Pr4c9{ns .} ==> Br3c8 ≠ s, Br4c8 ≠ n
whip[1]: Br4c8{w .} ==> Pr4c8 ≠ ew
whip[1]: Pr4c8{sw .} ==> Br4c7 ≠ nw, Br4c7 ≠ ns
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 2
whip[3]: Br5c9{w e} - Pr5c9{sw o} - Br4c9{w .} ==> Pr5c10 ≠ se
whip[1]: Pr5c10{ns .} ==> Br4c10 ≠ se, Br5c10 ≠ swn
whip[1]: Br5c10{sw .} ==> Pr5c11 ≠ nw, Nr5c10 ≠ 3
whip[3]: Pr3c8{ew o} - Br3c8{w e} - Pr3c9{o .} ==> Br2c8 ≠ n
whip[1]: Br2c8{esw .} ==> Pr2c8 ≠ ne, Pr2c8 ≠ ew
whip[1]: Pr2c8{se .} ==> Hr2c7 ≠ 1, Br1c7 ≠ sw, Br1c8 ≠ esw, Br1c7 ≠ s, Br2c7 ≠ n
H-single: Hr2c7 = 0
whip[1]: Hr2c7{0 .} ==> Pr2c7 ≠ ne, Pr2c7 ≠ ew
whip[1]: Pr2c7{nw .} ==> Br1c6 ≠ sw
whip[1]: Br1c6{esw .} ==> Pr1c7 ≠ o
whip[1]: Br1c8{ew .} ==> Nr1c8 ≠ 3
whip[5]: Pr3c7{sw ew} - Br2c6{e s} - Pr2c7{nw o} - Br1c7{w ne} - Pr2c8{o .} ==> Br2c7 ≠ s
whip[1]: Br2c7{w .} ==> Hr3c7 ≠ 1, Pr3c7 ≠ ew, Pr3c8 ≠ ew
H-single: Hr3c7 = 0
whip[1]: Hr3c7{0 .} ==> Br3c7 ≠ n
whip[1]: Pr3c8{ns .} ==> Br2c8 ≠ se
whip[1]: Pr3c7{sw .} ==> Br3c6 ≠ n, Br3c6 ≠ ns
whip[3]: Pr4c7{ew sw} - Br3c6{nes sw} - Pr4c6{o .} ==> Br4c6 ≠ wne
whip[5]: Pr4c7{sw o} - Br3c6{nes w} - Pr4c6{o ns} - Br4c5{s se} - Pr5c6{o .} ==> Br4c6 ≠ sw
whip[5]: Pr4c7{ew sw} - Br3c6{nes sw} - Pr4c6{o ne} - Br4c5{nw s} - Pr5c6{o .} ==> Br4c6 ≠ ne
whip[5]: Br1c7{wne w} - Pr1c7{ew sw} - Br1c6{esw ne} - Pr2c7{o ns} - Br2c7{e .} ==> Pr2c8 ≠ se
whip[1]: Pr2c8{ns .} ==> Hr2c8 ≠ 1, Br1c8 ≠ se, Br2c8 ≠ nw
H-single: Hr2c8 = 0
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = out
different-colours-in-r2{c8 c9} ==> Hr2c9 = 1
whip[1]: Hr2c8{0 .} ==> Pr2c9 ≠ nw
P-single: Pr2c9 = ns
whip[1]: Pr2c9{ns .} ==> Br2c9 ≠ e
B-single: Br2c9 = ew
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 1, Pr3c9 ≠ o
N-single: Nr2c9 = 2
w[1]-1-in-r3c8-asymmetric-ne-corner ==> Pr4c8 ≠ ns
whip[1]: Pr4c8{sw .} ==> Vr3c8 ≠ 1, Br4c7 ≠ se, Br4c7 ≠ ew, Br3c7 ≠ e, Br3c8 ≠ w
V-single: Vr3c8 = 0
whip[1]: Vr3c8{0 .} ==> Pr3c8 ≠ ns
w[1]-1-in-r3c7-symmetric-ne-corner ==> Pr4c7 ≠ sw, Pr4c7 ≠ o
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ nes, Br4c6 ≠ o, Br4c6 ≠ s, Br4c6 ≠ w
whip[1]: Br4c6{esw .} ==> Nr4c6 ≠ 0
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 2
whip[1]: Br2c8{esw .} ==> Nr2c8 ≠ 2
GRID 0 NOT SOLVED. 113 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.   .———.———.———.———.........   .———.———.
  1 | 2             :   :   :   | 2   3 |
.   .   .   .———.   .....   .   .   .———.
  1 |       | 3 | 2   1 : 1 :   |   | 3
.   .———.———.   .———.....   .....   .———.
          1   0     :   : 1   1 :       |
.   .   .   .   .............   .   .....
      1   0     :   :   :   : 1 : 1 :   :
.———.———.   .....................   .....
|     2 |   :   : 1   1 :   :   : 1 :   :
.   .   .   .....   .   .................
|     2 |       : 1   0     :   : 2 :   |
.   .———.   .———.....   .   .   .........
|   | 2   1 |       :       : 1   2 :   :
.   .   .   .———.   .   .———.....———.....
|   |     0   2 |   :   | 2   1 :       |
.   .———.   .   .———.....   .   .   .....
| 1     |     1   2   2 : 1     :   : 2 :
.   .   .———.———.———.———.................
| 2   1                         : 2 : 1
.———.———.———.———.———.———.———.———.....   .

init-time = 0.68s, solve-time = 1m 10.19s, total-time = 1m 10.87s
nb-facts=<Fact-352073>
Quasi-Loop max length = 26
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






xtd-QL ==>

.   .———.———.———.———.........   .———.———.
  1 | 2             :   :   :   | 2   3 |
.   .   .   .———.   .....   .   .   .———.
  1 |       | 3 | 2   1 : 1 :   |   | 3
.   .———.———.   .———.....   .....   .———.
          1   0     :   : 1   1 :       |
.   .   .   .   .............   .   .....
      1   0     :   :   :   : 1 : 1 :   :
.———.———.   .....................   .....
|     2 |   :   : 1   1 :   :     1     |
.   .   .   .....   .   .........———.   .
|     2 |       | 1   0     |     2 |   |
.   .———.   .———.   .   .   .   .   .   .
|   | 2   1 |               | 1   2 |   |
.   .   .   .———.   .   .———.   .———.   .
|   |     0   2 |       | 2   1 |       |
.   .———.   .   .———.———.   .   .   .———.
| 1     |     1   2   2   1     |   | 2
.   .   .———.———.———.———.———.———.   .   .
| 2   1                           2 | 1
.———.———.———.———.———.———.———.———.———.   .




Hr3c8 = 0 ==> Nr4c7 = 1 impossible


.   .———.———.———.———.———.   .   .———.———.
  1 | 2                 |       | 2   3 |
.   .   .   .———.   .   .   .   .   .———.
  1 |       | 3 | 2   1 | 1     |   | 3
.   .———.———.   .———.   .   .   .   .———.
          1   0     |   | 1   1 |       |
.   .   .   .   .———.   .   .   .   .   .
      1   0     |       |     1 | 1     |
.———.———.   .   .   .   .———.———.   .   .
|     2 |       | 1   1           1     |
.   .   .   .   .   .   .   .———.———.   .
|     2 |       | 1   0     |     2 |   |
.   .———.   .———.   .   .   .   .   .   .
|   | 2   1 |               | 1   2 |   |
.   .   .   .———.   .   .———.   .———.   .
|   |     0   2 |       | 2   1 |       |
.   .———.   .   .———.———.   .   .   .———.
| 1     |     1   2   2   1     |   | 2
.   .   .———.———.———.———.———.———.   .   .
| 2   1                           2 | 1
.———.———.———.———.———.———.———.———.———.   .




Hr3c8 = 1 ==> solution

.   .———.———.———.———.   .———.   .———.———.
  1 | 2             |   |   |   | 2   3 |
.   .   .   .———.   .———.   .   .   .———.
  1 |       | 3 | 2   1   1 |   |   | 3
.   .———.———.   .———.   .   .———.   .———.
          1   0     |     1   1         |
.   .   .   .   .   .———.———.   .   .———.
      1   0                 | 1   1 |
.———.———.   .———.———.———.———.   .   .———.
|     2 |   |     1   1           1     |
.   .   .   .———.   .   .   .———.———.   .
|     2 |       | 1   0     |     2 |   |
.   .———.   .———.   .   .   .   .   .   .
|   | 2   1 |               | 1   2 |   |
.   .   .   .———.   .   .———.   .———.   .
|   |     0   2 |       | 2   1 |       |
.   .———.   .   .———.———.   .   .   .———.
| 1     |     1   2   2   1     |   | 2
.   .   .———.———.———.———.———.———.   .   .
| 2   1                           2 | 1
.———.———.———.———.———.———.———.———.———.   .






-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

WITH EXTENDED LOOPS

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 2 . . . . . . 2 3
1 . . 3 2 1 1 . . 3
. . 1 0 . . 1 1 . .
. 1 0 . . . . 1 1 .
. 2 . . 1 1 . . 1 .
. 2 . . 1 0 . . 2 .
. 2 1 . . . . 1 2 .
. . 0 2 . . 2 1 . .
1 . . 1 2 2 1 . . 2
2 1 . . . . . . 2 1

Loading pre-computed background
start init-inner-N-and-B-candidates 0.62149715423584
start solution 0.635280847549438
entering BRT
w[0]-0-in-r8c3 ==> Hr9c3 = 0, Hr8c3 = 0, Vr8c4 = 0, Vr8c3 = 0
w[0]-0-in-r6c6 ==> Hr7c6 = 0, Hr6c6 = 0, Vr6c7 = 0, Vr6c6 = 0
w[0]-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[0]-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[0]-adjacent-3-0-in-c4{r2 r3} ==> Vr2c5 = 1, Vr2c4 = 1, Hr3c5 = 1, Hr3c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Vr1c4 = 0, Hr2c5 = 0, Hr2c3 = 0
w[1]-1-in-se-corner ==> Vr10c11 = 0, Hr11c10 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-3-in-ne-corner ==> Vr1c11 = 1, Hr1c10 = 1
w[1]-2-in-sw-corner ==> Vr9c1 = 1, Hr11c2 = 1
w[1]-3-in-r2c10-hit-by-verti-line-at-ne ==> Vr2c10 = 1, Hr3c10 = 1
w[1]-3-in-r1c10-hit-by-verti-line-at-sw ==> Hr2c9 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r1 r2} ==> Hr2c1 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r5{c5 c6} ==> Vr5c6 = 0
w[1]-diagonal-1-1-in-{r5c6...r6c5}-with-no-sw-inner-sides ==> Hr6c5 = 0
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ o
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
w[1]-3-in-r2c4-closed-nw-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw
w[1]-3-in-r1c10-closed-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[3]-diagonal-1-1-in-sw-corner ==> Vr10c2 = 0, Hr10c1 = 0
w[1]-2-in-r10c1-open-ne-corner ==> Hr11c1 = 1, Vr10c1 = 1
adjacent-3s-in-c10{r1 r2} ==> Hr2c10 = 1
w[1]-2-in-r1c9-open-se-corner ==> Hr1c9 = 1, Vr1c9 = 1, Hr1c8 = 0
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ se
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
w[1]-diagonal-closed-3-1-in-{r2c4...r3c3} ==> Vr3c3 = 0
w[1]-diagonal-1-1-in-{r3c3...r4c2}-with-no-sw-inner-sides ==> Hr4c2 = 0
P-single: Pr1c10 = ew
P-single: Pr11c1 = ne
w[1]-1-in-r10c10-symmetric-se-corner ==> Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ o
w[1]-1-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns
w[1]-1-in-r4c2-symmetric-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
entering level Loop with <Fact-93082>
entering level Col with <Fact-93456>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
vertical-line-r1{c8 c9} ==> Ir1c8 = out
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
no-vertical-line-r10{c1 c2} ==> Ir10c2 = in
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = in
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = out
same-colour-in-r2{c0 c1} ==> Vr2c1 = 0
different-colours-in-r3{c10 c11} ==> Hr3c11 = 1
Starting_init_links_with_<Fact-93522>
1137 candidates, 8539 csp-links and 35693 links. Density = 5.53%
starting non trivial part of solution
Entering_level_W1_with_<Fact-181991>
whip[1]: Vr3c11{1 .} ==> Br3c10 ≠ swn, Br3c11 ≠ o, Br3c10 ≠ o, Pr4c11 ≠ o, Pr4c11 ≠ sw, Br3c10 ≠ n, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ sw
B-single: Br3c11 = w
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 0
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ w, Br4c10 ≠ ne, Br4c10 ≠ sw, Br4c10 ≠ wne, Br4c10 ≠ nes, Br4c10 ≠ o, Br4c10 ≠ s
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 0
whip[1]: Vr2c1{0 .} ==> Br2c1 ≠ w, Br2c0 ≠ e, Pr2c1 ≠ ns, Pr2c1 ≠ se, Pr3c1 ≠ ne, Pr3c1 ≠ ns
B-single: Br2c0 = o
w[1]-1-in-r1c1-symmetric-sw-corner ==> Pr1c2 ≠ sw, Pr1c2 ≠ o
whip[1]: Pr1c2{ew .} ==> Hr1c2 ≠ 0, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c1 ≠ s
H-single: Hr1c2 = 1
B-single: Br1c1 = e
horizontal-line-{r0 r1}c2 ==> Ir1c2 = in
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o, Pr1c3 ≠ o, Pr1c3 ≠ se
B-single: Br0c2 = s
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br1c1{e .} ==> Pr2c1 ≠ ne, Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr2c2 ≠ ew, Pr2c2 ≠ sw
P-single: Pr2c2 = ns
P-single: Pr1c3 = ew
P-single: Pr1c2 = se
P-single: Pr1c1 = o
P-single: Pr2c1 = o
w[1]-1-in-r2c1-symmetric-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw, Pr3c2 ≠ o
w[1]-1-in-r2c1-asymmetric-ne-corner ==> Pr3c1 ≠ se
P-single: Pr3c1 = o
whip[1]: Pr2c2{ns .} ==> Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Br2c1 ≠ n, Vr2c2 ≠ 0, Hr2c2 ≠ 1, Br1c2 ≠ ne, Br1c2 ≠ ns, Br2c1 ≠ s, Br2c2 ≠ s, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
H-single: Hr2c2 = 0
V-single: Vr2c2 = 1
B-single: Br2c1 = e
B-single: Br1c2 = nw
vertical-line-r2{c1 c2} ==> Ir2c2 = in
whip[1]: Vr2c2{1 .} ==> Pr3c2 ≠ ew, Pr3c2 ≠ sw
whip[1]: Pr3c2{ns .} ==> Hr3c1 ≠ 1, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ s, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c1 ≠ n, Br3c2 ≠ o, Br3c2 ≠ e
H-single: Hr3c1 = 0
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = out
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e, Pr4c1 ≠ ne, Pr4c1 ≠ ns, Br3c1 ≠ w, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw
B-single: Br3c0 = o
whip[1]: Br3c1{se .} ==> Nr3c1 ≠ 3
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br1c2{nw .} ==> Vr1c3 ≠ 1
V-single: Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = in
vertical-line-r2{c4 c5} ==> Ir2c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = out
no-vertical-line-r3{c3 c4} ==> Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
no-vertical-line-r4{c2 c3} ==> Ir4c3 = out
no-vertical-line-r4{c3 c4} ==> Ir4c4 = out
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = out
horizontal-line-{r2 r3}c3 ==> Ir2c3 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ w, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw
whip[1]: Br1c3{nes .} ==> Pr1c4 ≠ o, Pr1c4 ≠ se
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Vr2c3{0 .} ==> Pr2c3 ≠ se, Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne
P-single: Pr2c3 = o
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ ns, Br1c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ nes
whip[1]: Br2c3{se .} ==> Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c4 ≠ sw, Nr2c3 ≠ 3
whip[1]: Br1c3{ne .} ==> Nr1c3 ≠ 3
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 0, Nr2c2 ≠ 3
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr4c2 ≠ ne, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Br3c1 ≠ e, Br3c1 ≠ se, Br3c2 ≠ w, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw
P-single: Pr3c2 = ne
whip[1]: Pr3c2{ne .} ==> Br2c2 ≠ w
B-single: Br2c2 = sw
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 1, Pr3c3 ≠ se, Pr3c3 ≠ o
N-single: Nr2c2 = 2
w[1]-1-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br3c3 ≠ e, Br3c3 ≠ s, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Br3c3{w .} ==> Hr4c3 ≠ 1, Vr3c4 ≠ 1, Pr3c4 ≠ ns, Pr4c3 ≠ ne, Pr4c4 ≠ nw, Pr3c4 ≠ se
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c3 ≠ o, Br2c3 ≠ e, Br3c3 ≠ w
B-single: Br3c3 = n
whip[1]: Br3c3{n .} ==> Pr3c3 ≠ sw
P-single: Pr3c3 = ew
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, Br3c2 ≠ nes
whip[1]: Br3c2{ns .} ==> Nr3c2 ≠ 3
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 0
whip[1]: Br2c4{nes .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ns, Pr2c5 ≠ o, Pr2c5 ≠ ne, Pr2c5 ≠ ns, Pr2c5 ≠ nw, Pr2c5 ≠ ew, Pr3c5 ≠ ew
P-single: Pr2c5 = sw
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ ns, Br2c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ w, Br1c5 ≠ s, Br1c4 ≠ ne, Br1c4 ≠ w, Br1c4 ≠ n, Br1c4 ≠ ew, Br1c4 ≠ esw, Br1c4 ≠ nes, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ se
whip[1]: Br2c5{sw .} ==> Pr2c6 ≠ nw, Pr2c6 ≠ ew
whip[1]: Br1c5{ne .} ==> Pr1c5 ≠ se, Nr1c5 ≠ 3, Pr1c5 ≠ sw
whip[1]: Br1c4{sw .} ==> Nr1c4 ≠ 1, Nr1c4 ≠ 3
N-single: Nr1c4 = 2
P-single: Pr1c5 = ew
P-single: Pr2c4 = se
whip[1]: Pr1c5{ew .} ==> Br1c5 ≠ e, Br1c5 ≠ o, Br1c4 ≠ sw
B-single: Br1c4 = ns
whip[1]: Br1c4{ns .} ==> Pr1c4 ≠ sw
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ ne
B-single: Br1c3 = n
whip[1]: Br1c3{n .} ==> Nr1c3 ≠ 2
N-single: Nr1c3 = 1
whip[1]: Br1c5{ne .} ==> Pr1c6 ≠ o, Pr1c6 ≠ se, Nr1c5 ≠ 0
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ se, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ o, Br1c6 ≠ e, Br1c6 ≠ s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr2c4{se .} ==> Br2c3 ≠ s, Br2c4 ≠ nes
B-single: Br2c4 = wne
B-single: Br2c3 = se
whip[1]: Br2c4{wne .} ==> Pr3c4 ≠ ew, Hr3c4 ≠ 1
P-single: Pr3c4 = nw
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 1
N-single: Nr2c3 = 2
whip[1]: Pr3c6{sw .} ==> Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ o, Br3c6 ≠ e, Br3c6 ≠ s
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Pr3c5{ns .} ==> Br3c5 ≠ s, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ swn, Br3c5 ≠ wne, Br3c5 ≠ o, Br3c5 ≠ e
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ n, Br4c2 ≠ e
whip[1]: Br4c2{w .} ==> Vr4c3 ≠ 1, Pr5c3 ≠ ne, Pr5c3 ≠ ns, Pr5c3 ≠ nw, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c3 ≠ sw
P-single: Pr4c3 = o
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ ns
B-single: Br3c2 = n
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 2
N-single: Nr3c2 = 1
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ e
whip[1]: Br4c1{wne .} ==> Pr5c1 ≠ ne, Pr5c2 ≠ nw, Nr4c1 ≠ 2
whip[1]: Pr5c2{ew .} ==> Br5c1 ≠ sw, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c2 ≠ se, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ w, Br5c1 ≠ ne
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br5c2{sw .} ==> Pr6c3 ≠ nw
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ns, Br5c1 ≠ n
whip[1]: Br3c1{s .} ==> Nr3c1 ≠ 2
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Pr11c1{ne .} ==> Br10c1 ≠ ne, Br11c1 ≠ o
B-single: Br11c1 = n
B-single: Br10c1 = sw
whip[1]: Br11c1{n .} ==> Pr11c2 ≠ ne
P-single: Pr11c2 = ew
w[1]-1-in-r10c2-asymmetric-sw-corner ==> Pr10c3 ≠ ew, Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ ns
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ w, Br10c2 ≠ e, Br10c2 ≠ n, Br11c2 ≠ o
B-single: Br11c2 = n
B-single: Br10c2 = s
whip[1]: Br11c2{n .} ==> Pr11c3 ≠ o, Pr11c3 ≠ ne
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ sw, Br10c3 ≠ esw, Br10c3 ≠ swn, Br10c3 ≠ o, Br10c3 ≠ n, Br10c3 ≠ e, Br10c3 ≠ ne
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 0
whip[1]: Br10c2{s .} ==> Pr10c2 ≠ ne, Vr10c3 ≠ 1, Hr10c2 ≠ 1, Pr11c3 ≠ nw, Pr10c3 ≠ sw
H-single: Hr10c2 = 0
V-single: Vr10c3 = 0
w[1]-diagonal-1-1-in-{r10c2...r9c1}-with-no-nw-inner-sides ==> Vr9c2 = 0
P-single: Pr11c3 = ew
P-single: Pr10c2 = o
w[1]-1-in-r9c1-symmetric-se-corner ==> Pr9c1 ≠ se, Pr9c1 ≠ o
no-vertical-line-r9{c1 c2} ==> Ir9c2 = in
no-vertical-line-r10{c2 c3} ==> Ir10c3 = in
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
whip[1]: Hr10c2{0 .} ==> Br9c2 ≠ s, Br9c2 ≠ ns, Br9c2 ≠ se, Br9c2 ≠ sw, Br9c2 ≠ esw, Br9c2 ≠ swn, Br9c2 ≠ nes
whip[1]: Vr10c3{0 .} ==> Br10c3 ≠ w, Br10c3 ≠ nw, Br10c3 ≠ ew, Br10c3 ≠ wne
whip[1]: Br10c3{nes .} ==> Pr11c4 ≠ o, Pr11c4 ≠ ne
whip[1]: Pr11c4{ew .} ==> Br11c3 ≠ o, Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ ne
B-single: Br11c3 = n
whip[1]: Br10c4{nes .} ==> Nr10c4 ≠ 0
whip[1]: Vr9c2{0 .} ==> Pr9c2 ≠ ns, Pr9c2 ≠ se, Pr9c2 ≠ sw, Br9c1 ≠ e, Br9c2 ≠ w, Br9c2 ≠ nw, Br9c2 ≠ ew, Br9c2 ≠ wne
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 3
whip[1]: Br9c1{w .} ==> Pr10c1 ≠ ne
P-single: Pr10c1 = ns
w[1]-1-in-r9c1-asymmetric-sw-corner ==> Pr9c2 ≠ ew, Pr9c2 ≠ nw
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ n, Br9c1 ≠ s
B-single: Br9c1 = w
whip[1]: Br9c1{w .} ==> Pr9c1 ≠ ne, Hr9c1 ≠ 1
H-single: Hr9c1 = 0
P-single: Pr9c1 = ns
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
whip[1]: Hr9c1{0 .} ==> Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ nes
whip[1]: Pr9c1{ns .} ==> Br8c1 ≠ e, Br8c1 ≠ n, Br8c1 ≠ o, Br8c1 ≠ ne
whip[1]: Br8c1{wne .} ==> Pr8c1 ≠ o, Pr8c1 ≠ ne, Nr8c1 ≠ 0
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ swn, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 0
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Pr9c2{ne .} ==> Br8c2 ≠ s, Br8c2 ≠ w, Br8c2 ≠ ns, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ wne, Br8c2 ≠ nes
whip[1]: Pr10c3{ne .} ==> Br9c3 ≠ s, Br9c3 ≠ w, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ wne, Br9c3 ≠ nes
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ wne, Br1c9 ≠ ne, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw
B-single: Br1c10 = nes
whip[1]: Br1c10{nes .} ==> Pr2c10 ≠ ns, Pr2c11 ≠ ns, Pr1c11 ≠ o
P-single: Pr1c11 = sw
P-single: Pr2c11 = nw
whip[1]: Pr2c11{nw .} ==> Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes
B-single: Br2c10 = swn
whip[1]: Br2c10{swn .} ==> Pr3c10 ≠ sw, Pr3c10 ≠ ew, Pr3c10 ≠ se, Pr3c10 ≠ nw, Pr3c10 ≠ ns, Pr3c10 ≠ o, Pr2c10 ≠ ew, Pr3c11 ≠ ns
P-single: Pr1c9 = se
P-single: Pr3c11 = sw
P-single: Pr2c10 = se
P-single: Pr3c10 = ne
whip[1]: Pr1c9{se .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ n, Br1c8 ≠ o, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ sw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ ns
B-single: Br1c9 = nw
whip[1]: Br1c9{nw .} ==> Pr2c9 ≠ ew, Pr2c9 ≠ se
whip[1]: Pr2c9{nw .} ==> Br2c8 ≠ w, Br2c8 ≠ ne, Br2c8 ≠ sw, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c9 ≠ nes, Br2c8 ≠ o, Br2c8 ≠ s, Br2c9 ≠ n
whip[1]: Br2c8{swn .} ==> Nr2c8 ≠ 0
whip[1]: Br1c8{esw .} ==> Pr1c8 ≠ se, Pr1c8 ≠ ew, Nr1c8 ≠ 0
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ n, Br1c7 ≠ e, Br1c7 ≠ ns
whip[1]: Pr3c11{sw .} ==> Br3c10 ≠ e, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw
whip[1]: Br3c10{nes .} ==> Pr4c10 ≠ ne, Nr3c10 ≠ 1
whip[1]: Pr2c10{se .} ==> Br2c9 ≠ w, Br2c9 ≠ s, Br2c9 ≠ o, Br2c9 ≠ sw
whip[1]: Br2c9{esw .} ==> Nr2c9 ≠ 0
whip[1]: Pr3c10{ne .} ==> Br3c9 ≠ n, Br2c9 ≠ se, Br2c9 ≠ esw, Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr4c10 ≠ ns, Pr4c10 ≠ nw
whip[1]: Br3c9{sw .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ se, Pr3c9 ≠ ew, Nr3c9 ≠ 3
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 3
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ w
B-single: Br2c11 = o
whip[1]: Hr6c5{0 .} ==> Br6c5 ≠ n, Pr6c5 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Pr6c6 ≠ nw, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Br5c5 ≠ s
whip[1]: Br5c5{w .} ==> Pr5c5 ≠ se, Pr5c6 ≠ sw
whip[1]: Br6c5{w .} ==> Pr7c5 ≠ ne, Pr7c6 ≠ nw
whip[1]: Vr5c6{0 .} ==> Br5c6 ≠ w, Pr5c6 ≠ ns, Pr5c6 ≠ se, Pr6c6 ≠ ne, Pr6c6 ≠ ns, Br5c5 ≠ e
w[1]-1-in-r5c5-symmetric-se-corner ==> Pr5c5 ≠ nw, Pr5c5 ≠ o
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ o
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0, Nr4c4 ≠ 2
whip[1]: Br5c6{s .} ==> Pr5c7 ≠ sw, Pr6c7 ≠ nw
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Hr11c10{0 .} ==> Pr11c10 ≠ ew, Br11c10 ≠ n, Pr11c11 ≠ nw, Pr11c10 ≠ ne
P-single: Pr11c11 = o
B-single: Br11c10 = o
whip[1]: Pr9c11{nw .} ==> Vr8c11 ≠ 0, Br8c10 ≠ w, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ sw, Br8c10 ≠ swn, Br9c10 ≠ ne, Br9c10 ≠ sw, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ s
V-single: Vr8c11 = 1
vertical-line-r8{c10 c11} ==> Ir8c10 = in
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o, Pr8c11 ≠ o, Pr8c11 ≠ nw
B-single: Br8c11 = w
whip[1]: Pr8c11{sw .} ==> Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ esw, Br7c10 ≠ nes, Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ w
whip[1]: Br7c10{wne .} ==> Nr7c10 ≠ 0
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Pr10c10{ew .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ esw, Br9c9 ≠ nes, Br10c9 ≠ sw, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ w, Br10c9 ≠ ne
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Pr11c9{ew .} ==> Br11c8 ≠ o, Hr11c8 ≠ 0, Br10c8 ≠ nw, Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ w, Br10c8 ≠ ne
H-single: Hr11c8 = 1
B-single: Br11c8 = n
horizontal-line-{r10 r11}c8 ==> Ir10c8 = in
whip[1]: Hr11c8{1 .} ==> Pr11c8 ≠ o, Pr11c8 ≠ nw
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ esw, Br10c7 ≠ nes, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ w
whip[1]: Br10c7{wne .} ==> Nr10c7 ≠ 0
whip[1]: Br10c8{nes .} ==> Nr10c8 ≠ 0
whip[1]: Pr10c9{se .} ==> Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c9 ≠ sw, Br9c9 ≠ swn, Br10c8 ≠ nes, Br10c9 ≠ ns, Br10c9 ≠ ew, Br9c8 ≠ e, Br9c8 ≠ s
whip[1]: Vr10c11{0 .} ==> Pr10c11 ≠ sw, Br10c11 ≠ w, Pr10c11 ≠ ns
B-single: Br10c11 = o
whip[1]: Pr9c10{se .} ==> Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c10 ≠ esw, Br9c9 ≠ ne, Br9c9 ≠ wne, Br9c10 ≠ ns, Br9c10 ≠ ew, Br8c9 ≠ e, Br8c9 ≠ s
whip[1]: Br9c9{ew .} ==> Pr9c9 ≠ se, Nr9c9 ≠ 3
whip[1]: Hr3c5{1 .} ==> Br3c5 ≠ esw, Pr3c5 ≠ ns, Pr3c6 ≠ ne, Pr3c6 ≠ ns, Br2c5 ≠ ew, Br3c5 ≠ w, Br3c5 ≠ ew, Br3c5 ≠ sw
P-single: Pr3c5 = ne
B-single: Br2c5 = sw
whip[1]: Pr3c5{ne .} ==> Vr3c5 ≠ 1
whip[1]: Br2c5{sw .} ==> Vr2c6 ≠ 1
V-single: Vr2c6 = 0
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
whip[1]: Vr2c6{0 .} ==> Br2c6 ≠ w
whip[1]: Br2c6{s .} ==> Pr2c7 ≠ sw, Pr3c7 ≠ nw
whip[1]: Pr2c6{ne .} ==> Br1c6 ≠ w, Br1c6 ≠ ns, Br1c6 ≠ ew, Br1c6 ≠ nes
whip[1]: Br3c5{nes .} ==> Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw
whip[1]: Hr4c4{0 .} ==> Br4c4 ≠ wne, Hr4c4 ≠ 1, Pr4c4 ≠ se, Pr4c5 ≠ ew, Pr4c5 ≠ sw, Br4c4 ≠ swn
P-single: Pr4c4 = o
whip[1]: Pr4c4{o .} ==> Vr4c4 ≠ 1
whip[1]: Br4c4{s .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ ns, Nr4c4 ≠ 3, Pr5c4 ≠ nw
N-single: Nr4c4 = 1
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ nes, Br4c5 ≠ n, Br4c5 ≠ w
whip[1]: Hr5c3{0 .} ==> Br5c3 ≠ nes, Hr5c3 ≠ 1, Pr5c3 ≠ se, Pr5c3 ≠ ew, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Br5c3 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ nw, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c3 ≠ o, Br6c3 ≠ e, Br6c3 ≠ s
whip[1]: Br6c3{nes .} ==> Nr6c3 ≠ 0
whip[1]: Pr5c2{ew .} ==> Br4c1 ≠ o
whip[1]: Br4c1{wne .} ==> Pr5c1 ≠ o, Nr4c1 ≠ 0
whip[1]: Pr5c1{se .} ==> Vr5c1 ≠ 0, Br5c1 ≠ se, Br5c1 ≠ e
V-single: Vr5c1 = 1
vertical-line-r5{c0 c1} ==> Ir5c1 = in
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o, Pr6c1 ≠ o, Pr6c1 ≠ se
B-single: Br5c0 = e
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 1
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ esw, Br5c2 ≠ ew, Br6c1 ≠ ew, Br6c1 ≠ esw, Br6c2 ≠ nw, Br5c2 ≠ ns, Br6c1 ≠ n, Br6c1 ≠ ns
whip[1]: Br6c2{sw .} ==> Pr7c3 ≠ o, Pr7c3 ≠ se
whip[1]: Pr5c4{se .} ==> Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ nes, Br5c4 ≠ n, Br5c4 ≠ w
whip[1]: Vr6c6{0 .} ==> Br6c5 ≠ e, Vr6c6 ≠ 1, Pr6c6 ≠ se, Pr7c6 ≠ ne, Pr7c6 ≠ ns
P-single: Pr6c6 = o
w[1]-1-in-r5c6-symmetric-sw-corner ==> Pr5c7 ≠ ne, Pr5c7 ≠ o
w[1]-1-in-r6c5-symmetric-ne-corner ==> Pr7c5 ≠ sw, Pr7c5 ≠ o
whip[1]: Pr6c6{o .} ==> Hr6c6 ≠ 1, Br5c6 ≠ s
whip[1]: Br5c6{e .} ==> Pr6c7 ≠ ew, Pr6c7 ≠ sw
whip[1]: Pr7c5{ew .} ==> Br7c4 ≠ sw, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c4 ≠ o, Br7c4 ≠ s, Br7c4 ≠ w, Br7c4 ≠ ne
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 0
whip[1]: Pr5c7{ew .} ==> Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ swn, Br4c7 ≠ o, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ ne
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Vr6c7{0 .} ==> Br6c7 ≠ wne, Vr6c7 ≠ 1, Pr6c7 ≠ ns, Pr6c7 ≠ se, Pr7c7 ≠ ne, Pr7c7 ≠ ns, Pr7c7 ≠ nw, Br6c7 ≠ w, Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn
whip[1]: Pr6c7{ne .} ==> Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ wne, Br5c7 ≠ nes
whip[1]: Hr7c6{0 .} ==> Br7c6 ≠ nes, Hr7c6 ≠ 1, Pr7c6 ≠ se, Pr7c6 ≠ ew, Pr7c7 ≠ ew, Pr7c7 ≠ sw, Br7c6 ≠ n, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ nw, Br7c6 ≠ swn, Br7c6 ≠ wne
whip[1]: Pr7c7{se .} ==> Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ nes, Br7c7 ≠ n, Br7c7 ≠ w
whip[1]: Pr7c6{sw .} ==> Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ n, Br7c5 ≠ e, Br7c5 ≠ ns
whip[1]: Vr8c3{0 .} ==> Br8c2 ≠ esw, Vr8c3 ≠ 1, Pr8c3 ≠ ns, Pr8c3 ≠ se, Pr8c3 ≠ sw, Pr9c3 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Br8c2 ≠ e, Br8c2 ≠ ne
whip[1]: Vr8c4{0 .} ==> Br8c4 ≠ sw, Vr8c4 ≠ 1, Pr8c4 ≠ ns, Pr8c4 ≠ sw, Pr9c4 ≠ ns, Pr9c4 ≠ nw, Br8c4 ≠ nw, Br8c4 ≠ ew
whip[1]: Hr8c3{0 .} ==> Br7c3 ≠ s, Hr8c3 ≠ 1, Pr8c3 ≠ ne, Pr8c3 ≠ ew, Pr8c4 ≠ nw, Pr8c4 ≠ ew
whip[1]: Pr7c3{ew .} ==> Br6c3 ≠ sw, Br6c3 ≠ esw, Br7c2 ≠ sw, Br6c3 ≠ n, Br6c3 ≠ ne, Br7c2 ≠ ne
whip[1]: Pr8c2{ew .} ==> Br8c1 ≠ wne, Br8c1 ≠ w
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 1, Nr8c1 ≠ 3
N-single: Nr8c1 = 2
whip[1]: Pr7c2{se .} ==> Br6c1 ≠ ne, Br6c1 ≠ sw, Br6c2 ≠ sw, Br7c1 ≠ wne, Br7c1 ≠ nes, Br7c2 ≠ ns, Br7c2 ≠ ew
whip[1]: Br7c1{ew .} ==> Nr7c1 ≠ 3
whip[1]: Br6c2{ew .} ==> Pr6c3 ≠ ne
whip[1]: Pr6c3{sw .} ==> Br5c3 ≠ sw, Br5c3 ≠ esw
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 3
whip[1]: Br6c1{nes .} ==> Pr7c1 ≠ o, Pr7c1 ≠ ne, Nr6c1 ≠ 2
whip[1]: Pr7c1{se .} ==> Vr7c1 ≠ 0, Br7c1 ≠ ns, Br7c1 ≠ se, Br7c1 ≠ s
V-single: Vr7c1 = 1
vertical-line-r7{c0 c1} ==> Ir7c1 = in
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
P-single: Pr9c2 = ne
P-single: Pr8c1 = ns
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Hr8c1{0 .} ==> Pr8c2 ≠ nw, Pr8c2 ≠ ew, Br8c1 ≠ nw
B-single: Br8c1 = ew
whip[1]: Br8c1{ew .} ==> Vr8c2 ≠ 0
V-single: Vr8c2 = 1
vertical-line-r8{c1 c2} ==> Ir8c2 = out
no-vertical-line-r8{c2 c3} ==> Ir8c3 = out
no-vertical-line-r8{c3 c4} ==> Ir8c4 = out
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = out
no-horizontal-line-{r8 r9}c3 ==> Ir9c3 = out
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
different-colours-in-r9{c2 c3} ==> Hr9c3 = 1
different-colours-in-{r8 r9}c2 ==> Hr9c2 = 1
whip[1]: Vr8c2{1 .} ==> Br8c2 ≠ o, Br8c2 ≠ n
whip[1]: Br8c2{swn .} ==> Pr9c3 ≠ o, Pr9c3 ≠ se, Nr8c2 ≠ 0, Nr8c2 ≠ 1
whip[1]: Pr9c3{sw .} ==> Br9c3 ≠ swn, Br9c2 ≠ o, Br9c2 ≠ e, Br9c3 ≠ o, Br9c3 ≠ e
whip[1]: Br9c3{esw .} ==> Nr9c3 ≠ 0
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 0
whip[1]: Hr10c3{1 .} ==> Pr10c3 ≠ o, Pr10c4 ≠ o, Pr10c4 ≠ ne, Pr10c4 ≠ ns, Pr10c4 ≠ se, Br9c3 ≠ n, Br9c3 ≠ ne, Br10c3 ≠ s, Br10c3 ≠ se
P-single: Pr10c3 = ne
whip[1]: Pr10c3{ne .} ==> Br9c2 ≠ n
B-single: Br9c2 = ne
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 1, Pr9c3 ≠ ew
N-single: Nr9c2 = 2
P-single: Pr9c3 = sw
whip[1]: Pr9c3{sw .} ==> Hr9c3 ≠ 1
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 1
whip[1]: Br9c3{esw .} ==> Pr9c4 ≠ ew, Pr9c4 ≠ sw, Nr9c3 ≠ 1
w[1]-1-in-r9c4-symmetric-nw-corner ==> Pr10c5 ≠ se, Pr10c5 ≠ nw, Pr10c5 ≠ o
whip[1]: Pr10c5{sw .} ==> Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ swn, Br10c5 ≠ wne, Br9c4 ≠ n, Br9c4 ≠ w, Br10c5 ≠ o, Br10c5 ≠ e, Br10c5 ≠ s
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 0
whip[1]: Br9c4{s .} ==> Hr9c4 ≠ 1, Vr9c4 ≠ 1, Pr9c4 ≠ se, Pr9c5 ≠ nw, Pr9c5 ≠ ew, Pr9c5 ≠ sw, Pr10c4 ≠ nw
V-single: Vr9c4 = 0
H-single: Hr9c4 = 0
w[1]-2-in-r8c4-open-sw-corner ==> Hr8c4 = 1, Vr8c5 = 1, Hr8c5 = 0, Vr7c5 = 0
P-single: Pr8c5 = sw
P-single: Pr8c4 = ne
P-single: Pr9c4 = o
w[1]-1-in-r7c3-asymmetric-se-corner ==> Pr7c3 ≠ ew, Pr7c3 ≠ ns
P-single: Pr6c2 = o
P-single: Pr7c3 = nw
vertical-line-r8{c4 c5} ==> Ir8c5 = in
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = out
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
whip[1]: Vr9c4{0 .} ==> Br9c3 ≠ esw
B-single: Br9c3 = sw
whip[1]: Br9c3{sw .} ==> Nr9c3 ≠ 3
N-single: Nr9c3 = 2
whip[1]: Hr9c4{0 .} ==> Br8c4 ≠ ns, Br8c4 ≠ se
B-single: Br8c4 = ne
whip[1]: Hr8c4{1 .} ==> Br7c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ nw, Br7c4 ≠ ew
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 1
whip[1]: Vr8c5{1 .} ==> Br8c5 ≠ o, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ s, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ nes
whip[1]: Br8c5{wne .} ==> Nr8c5 ≠ 0
whip[1]: Hr8c5{0 .} ==> Pr8c6 ≠ nw, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Br7c5 ≠ s, Br7c5 ≠ sw, Br7c5 ≠ nes, Br8c5 ≠ nw, Br8c5 ≠ swn, Br8c5 ≠ wne
whip[1]: Vr7c5{0 .} ==> Pr7c5 ≠ ns, Pr7c5 ≠ se, Br7c4 ≠ se, Br7c4 ≠ esw, Br7c5 ≠ w, Br7c5 ≠ wne
whip[1]: Br7c5{ne .} ==> Nr7c5 ≠ 1, Nr7c5 ≠ 3
whip[1]: Br7c4{swn .} ==> Hr7c4 ≠ 0, Pr7c4 ≠ o, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Pr7c4 ≠ sw
H-single: Hr7c4 = 1
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = out
no-vertical-line-r6{c3 c4} ==> Ir6c4 = out
same-colour-in-{r5 r6}c3 ==> Hr6c3 = 0
whip[1]: Hr7c4{1 .} ==> Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ w, Br6c4 ≠ ne, Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ wne
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Hr7c3{0 .} ==> Pr7c4 ≠ ew, Br6c3 ≠ ns, Br6c3 ≠ nes, Br7c3 ≠ n
whip[1]: Br6c3{ew .} ==> Vr6c3 ≠ 0, Pr6c3 ≠ ew, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Nr6c3 ≠ 3
V-single: Vr6c3 = 1
P-single: Pr6c3 = ns
vertical-line-r6{c2 c3} ==> Ir6c2 = in
whip[1]: Vr6c3{1 .} ==> Br6c2 ≠ ns
whip[1]: Pr6c3{ns .} ==> Br5c3 ≠ e, Br5c3 ≠ o, Vr5c3 ≠ 0, Hr6c2 ≠ 1, Br5c2 ≠ sw, Br5c3 ≠ s, Br5c3 ≠ se, Br6c2 ≠ ne
H-single: Hr6c2 = 0
V-single: Vr5c3 = 1
P-single: Pr5c3 = sw
B-single: Br5c2 = ne
w[1]-1-in-r4c2-asymmetric-se-corner ==> Pr4c2 ≠ sw
P-single: Pr4c2 = o
vertical-line-r5{c2 c3} ==> Ir5c2 = in
same-colour-in-r5{c1 c2} ==> Vr5c2 = 0
w[1]-2-in-r5c2-open-sw-corner ==> Hr5c2 = 1
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ w
B-single: Br4c2 = s
whip[1]: Br4c2{s .} ==> Pr5c2 ≠ ns, Vr4c2 ≠ 1
V-single: Vr4c2 = 0
P-single: Pr5c2 = ew
no-vertical-line-r4{c1 c2} ==> Ir4c1 = out
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
whip[1]: Vr4c2{0 .} ==> Br4c1 ≠ wne
B-single: Br4c1 = s
whip[1]: Br4c1{s .} ==> Nr4c1 ≠ 3, Pr5c1 ≠ ns, Pr4c1 ≠ se
N-single: Nr4c1 = 1
P-single: Pr4c1 = o
P-single: Pr5c1 = se
whip[1]: Pr4c1{o .} ==> Br3c1 ≠ s
B-single: Br3c1 = o
whip[1]: Br3c1{o .} ==> Nr3c1 ≠ 1
N-single: Nr3c1 = 0
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ew
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e
B-single: Br4c0 = o
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 0
whip[1]: Vr6c4{0 .} ==> Pr6c4 ≠ ns, Pr6c4 ≠ se, Pr7c4 ≠ ne, Br6c3 ≠ ew, Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn
P-single: Pr7c4 = se
B-single: Br6c3 = w
w[1]-1-in-r7c3-asymmetric-ne-corner ==> Pr8c3 ≠ nw
P-single: Pr8c3 = o
whip[1]: Pr7c4{se .} ==> Br7c3 ≠ w, Br7c4 ≠ ns
B-single: Br7c4 = swn
B-single: Br7c3 = e
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 2
N-single: Nr7c4 = 3
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c3 c4} ==> Vr7c3 = 0
P-single: Pr7c2 = se
no-vertical-line-r7{c2 c3} ==> Ir7c2 = out
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
w[1]-2-in-r7c2-open-se-corner ==> Hr7c2 = 1, Vr7c2 = 1, Hr7c1 = 0, Vr6c2 = 0
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1

LOOP[20]: Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3- ==> Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c4 = in
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
different-colours-in-{r9 r10}c4 ==> Hr10c4 = 1

LOOP[22]: Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4- ==> Vr10c5 = 0
no-vertical-line-r10{c4 c5} ==> Ir10c5 = in
different-colours-in-{r10 r11}c5 ==> Hr11c5 = 1
whip[1]: Vr7c3{0 .} ==> Br7c2 ≠ se
B-single: Br7c2 = nw
whip[1]: Br7c2{nw .} ==> Pr8c2 ≠ se
P-single: Pr8c2 = ns
whip[1]: Pr8c2{ns .} ==> Br7c1 ≠ w, Br7c1 ≠ nw, Br8c2 ≠ swn
B-single: Br8c2 = sw
B-single: Br7c1 = ew
whip[1]: Br8c2{sw .} ==> Nr8c2 ≠ 3
N-single: Nr8c2 = 2
whip[1]: Br7c1{ew .} ==> Nr7c1 ≠ 1, Pr7c1 ≠ se
N-single: Nr7c1 = 2
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ nes
B-single: Br6c1 = w
whip[1]: Br6c1{w .} ==> Nr6c1 ≠ 3, Pr6c1 ≠ ne
N-single: Nr6c1 = 1
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ swn
B-single: Br5c1 = nw
whip[1]: Br5c1{nw .} ==> Nr5c1 ≠ 3
N-single: Nr5c1 = 2
whip[1]: Pr7c2{se .} ==> Br6c2 ≠ ew
B-single: Br6c2 = se
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Vr10c4{0 .} ==> Pr11c4 ≠ nw, Pr10c4 ≠ sw, Br10c3 ≠ nes, Br10c4 ≠ w, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne
P-single: Pr10c4 = ew
P-single: Pr11c4 = ew
B-single: Br10c3 = ns
w[1]-1-in-r9c4-asymmetric-sw-corner ==> Pr9c5 ≠ ns
P-single: Pr9c5 = ne
whip[1]: Pr10c4{ew .} ==> Br10c4 ≠ s, Br9c4 ≠ e, Br10c4 ≠ se
B-single: Br9c4 = s
whip[1]: Br9c4{s .} ==> Pr10c5 ≠ ns, Pr10c5 ≠ ne, Vr9c5 ≠ 1
V-single: Vr9c5 = 0
no-vertical-line-r9{c4 c5} ==> Ir9c5 = out
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1

LOOP[24]: Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5- ==> Vr10c6 = 0
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
different-colours-in-{r8 r9}c5 ==> Hr9c5 = 1
whip[1]: Vr9c5{0 .} ==> Br9c5 ≠ nw, Br9c5 ≠ ew, Br9c5 ≠ sw
whip[1]: Hr10c5{1 .} ==> Pr10c5 ≠ sw, Pr10c6 ≠ ne, Pr10c6 ≠ ns, Br9c5 ≠ ne, Br10c5 ≠ w, Br10c5 ≠ ew, Br10c5 ≠ sw, Br10c5 ≠ esw
P-single: Pr10c5 = ew
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ nes
B-single: Br10c4 = ns
whip[1]: Br10c4{ns .} ==> Nr10c4 ≠ 3, Nr10c4 ≠ 1, Pr11c5 ≠ nw, Pr11c5 ≠ ne, Pr11c5 ≠ o
N-single: Nr10c4 = 2
P-single: Pr11c5 = ew
whip[1]: Pr11c5{ew .} ==> Br10c5 ≠ ne, Br10c5 ≠ n, Br11c5 ≠ o, Br11c4 ≠ o
B-single: Br11c4 = n
B-single: Br11c5 = n
whip[1]: Br11c5{n .} ==> Pr11c6 ≠ o, Pr11c6 ≠ ne
whip[1]: Pr11c6{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ e, Br10c6 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Br10c5{nes .} ==> Nr10c5 ≠ 1
whip[1]: Pr9c6{ew .} ==> Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ swn, Br8c6 ≠ o, Br8c6 ≠ n, Br8c6 ≠ e, Br8c6 ≠ ne
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Pr10c6{sw .} ==> Vr9c6 ≠ 1, Br9c5 ≠ se, Br9c6 ≠ nw, Br9c6 ≠ ew, Br9c6 ≠ sw, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ wne, Br10c6 ≠ s
V-single: Vr9c6 = 0
B-single: Br9c5 = ns
no-vertical-line-r9{c5 c6} ==> Ir9c6 = out
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1

LOOP[26]: Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6- ==> Vr10c7 = 0
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
same-colour-in-r10{c7 c8} ==> Vr10c8 = 0
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
whip[1]: Vr9c6{0 .} ==> Pr9c6 ≠ ns
whip[1]: Pr9c6{ew .} ==> Br8c5 ≠ ew, Br8c5 ≠ w
whip[1]: Br8c5{esw .} ==> Nr8c5 ≠ 1
whip[1]: Hr10c6{1 .} ==> Pr10c6 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Br9c6 ≠ ne, Br10c6 ≠ w, Br10c6 ≠ ew
P-single: Pr10c6 = ew
w[1]-1-in-r7c8-asymmetric-sw-corner ==> Pr7c9 ≠ ew, Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ ns
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ nes
B-single: Br10c5 = ns
whip[1]: Br10c5{ns .} ==> Nr10c5 ≠ 3, Pr11c6 ≠ nw
N-single: Nr10c5 = 2
P-single: Pr11c6 = ew
whip[1]: Pr11c6{ew .} ==> Br11c6 ≠ o
B-single: Br11c6 = n
whip[1]: Br11c6{n .} ==> Pr11c7 ≠ o, Pr11c7 ≠ ne
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ e, Br10c7 ≠ ne
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ nw, Br6c9 ≠ se, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ e, Br7c10 ≠ s
whip[1]: Br7c10{sw .} ==> Nr7c10 ≠ 1, Nr7c10 ≠ 3
N-single: Nr7c10 = 2
whip[1]: Pr6c9{sw .} ==> Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ esw, Br5c8 ≠ nes, Br5c8 ≠ o, Br5c8 ≠ n, Br5c8 ≠ w
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Pr6c10{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ se, Br5c10 ≠ ew, Br5c10 ≠ wne, Br5c10 ≠ nes, Br6c9 ≠ ew, Br6c10 ≠ nw, Br6c10 ≠ swn, Br6c10 ≠ wne, Br5c10 ≠ s, Br5c10 ≠ w, Br5c10 ≠ ns, Br6c9 ≠ ns
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ se, Br6c8 ≠ esw, Br6c8 ≠ nes, Br7c9 ≠ nw, Br7c8 ≠ n, Br7c8 ≠ e
whip[1]: Br7c8{w .} ==> Hr7c8 ≠ 1, Vr7c9 ≠ 1, Pr7c8 ≠ ne, Pr8c9 ≠ ne, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Pr7c8 ≠ se, Pr7c8 ≠ ew, Pr7c9 ≠ sw
V-single: Vr7c9 = 0
H-single: Hr7c8 = 0
whip[1]: Vr7c9{0 .} ==> Br7c9 ≠ ew, Br7c9 ≠ sw
whip[1]: Hr7c8{0 .} ==> Br6c8 ≠ s, Br6c8 ≠ ns, Br6c8 ≠ sw, Br6c8 ≠ swn
whip[1]: Pr7c10{sw .} ==> Br6c10 ≠ sw, Br6c10 ≠ esw
whip[1]: Pr8c10{sw .} ==> Br8c10 ≠ wne
whip[1]: Pr8c8{ew .} ==> Br8c7 ≠ sw, Br8c7 ≠ ne
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 1
whip[1]: Pr10c7{sw .} ==> Br10c7 ≠ wne
whip[1]: Br10c7{ew .} ==> Pr10c8 ≠ sw, Nr10c7 ≠ 3
whip[1]: Vr10c7{0 .} ==> Pr11c7 ≠ nw, Pr10c7 ≠ sw, Br10c6 ≠ nes, Br10c7 ≠ ew
P-single: Pr11c7 = ew
B-single: Br10c6 = ns
w[1]-1-in-r9c7-asymmetric-sw-corner ==> Pr9c8 ≠ ew, Pr9c8 ≠ se, Pr9c8 ≠ nw, Pr9c8 ≠ ns
w[1]-1-in-r8c8-symmetric-sw-corner ==> Pr8c9 ≠ sw, Pr8c9 ≠ o
whip[1]: Pr11c7{ew .} ==> Br11c7 ≠ o
B-single: Br11c7 = n
whip[1]: Br11c7{n .} ==> Pr11c8 ≠ ne
P-single: Pr11c8 = ew
whip[1]: Pr11c8{ew .} ==> Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn
whip[1]: Br10c8{se .} ==> Pr10c8 ≠ ns, Pr10c8 ≠ se, Nr10c8 ≠ 3
whip[1]: Br10c6{ns .} ==> Nr10c6 ≠ 3
N-single: Nr10c6 = 2
whip[1]: Pr7c10{ew .} ==> Br6c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ e, Br6c10 ≠ ne, Br7c9 ≠ ne
whip[1]: Br7c9{se .} ==> Hr8c9 ≠ 0, Pr8c10 ≠ ne, Pr8c10 ≠ ns
H-single: Hr8c9 = 1
whip[1]: Hr8c9{1 .} ==> Br8c9 ≠ o, Br8c9 ≠ w, Br8c9 ≠ se, Br8c9 ≠ esw
whip[1]: Br8c9{nes .} ==> Pr9c9 ≠ ne, Nr8c9 ≠ 0
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ sw
whip[1]: Br7c10{ew .} ==> Pr7c11 ≠ o
whip[1]: Pr7c11{sw .} ==> Br6c10 ≠ w
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Pr8c9{ew .} ==> Br8c8 ≠ s, Br8c8 ≠ w
whip[1]: Br8c8{e .} ==> Hr9c8 ≠ 1, Vr8c8 ≠ 1, Pr9c8 ≠ ne, Pr8c8 ≠ ns, Pr8c8 ≠ se, Pr9c9 ≠ nw, Pr9c9 ≠ ew, Pr9c9 ≠ sw
V-single: Vr8c8 = 0
H-single: Hr9c8 = 0
w[1]-diagonal-1-1-in-{r8c8...r9c7}-with-no-sw-inner-sides ==> Hr9c7 = 0, Vr9c8 = 0
w[1]-2-in-r8c7-open-se-corner ==> Hr8c7 = 1, Vr8c7 = 1, Hr8c6 = 0, Vr7c7 = 0

XTD-LOOP[8]: Hr9c5-Vr8c5-Hr8c4-Vr7c4-Hr7c4- ==> Hr7c5-Vr7c6-Vr8c6 = 0
w[0]-adjacent-3-in-r7c4-nolines-east ==> Vr6c5 = 1
vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-vertical-line-r6{c5 c6} ==> Ir6c6 = in
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
no-horizontal-line-{r5 r6}c6 ==> Ir5c6 = in
no-vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
horizontal-line-{r7 r8}c7 ==> Ir8c7 = out
no-vertical-line-r8{c7 c8} ==> Ir8c8 = out
no-horizontal-line-{r8 r9}c8 ==> Ir9c8 = out
no-vertical-line-r9{c7 c8} ==> Ir9c7 = out
vertical-line-r8{c6 c7} ==> Ir8c6 = in
different-colours-in-{r8 r9}c6 ==> Hr9c6 = 1
P-single: Pr9c6 = ew
P-single: Pr10c7 = ew
different-colours-in-{r9 r10}c7 ==> Hr10c7 = 1
different-colours-in-{r9 r10}c8 ==> Hr10c8 = 1

LOOP[30]: Hr10c8-Hr10c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8- ==> Vr10c9 = 0
P-single: Pr11c10 = nw
w[1]-1-in-r10c10-asymmetric-sw-corner ==> Pr10c11 ≠ nw
P-single: Pr10c11 = o
no-vertical-line-r10{c8 c9} ==> Ir10c9 = in
different-colours-in-r10{c9 c10} ==> Hr10c10 = 1
different-colours-in-{r10 r11}c9 ==> Hr11c9 = 1

LOOP[32]: Vr10c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Hr5c2-Vr5c3-Vr6c3-Hr7c2-Vr7c2-Vr8c2-Hr9c2-Vr9c3-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Hr10c7-Hr10c8- ==> Hr10c9 = 0
no-horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
whip[1]: Vr8c8{0 .} ==> Br8c7 ≠ se, Br8c7 ≠ ew
whip[1]: Br8c7{nw .} ==> Pr8c7 ≠ ns, Pr8c7 ≠ sw
whip[1]: Pr8c7{ew .} ==> Br7c6 ≠ se, Br7c6 ≠ esw, Br7c7 ≠ nw, Br7c7 ≠ wne, Br8c6 ≠ wne, Br8c6 ≠ nes, Br7c7 ≠ o, Br7c7 ≠ e
whip[1]: Br7c7{swn .} ==> Pr7c8 ≠ sw, Nr7c7 ≠ 0
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ ns, Br6c7 ≠ s
whip[1]: Br8c6{ew .} ==> Nr8c6 ≠ 3
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 3
whip[1]: Hr9c8{0 .} ==> Br9c8 ≠ n, Br9c8 ≠ nw, Br9c8 ≠ nes
whip[1]: Hr9c7{0 .} ==> Pr9c7 ≠ se, Pr9c7 ≠ ew, Pr9c8 ≠ sw, Br8c7 ≠ ns, Br9c7 ≠ n
P-single: Pr8c7 = se
P-single: Pr9c8 = o
B-single: Br8c7 = nw
whip[1]: Pr8c7{se .} ==> Br8c6 ≠ w, Br8c6 ≠ s, Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c7 ≠ swn, Br8c6 ≠ ns, Br8c6 ≠ nw
whip[1]: Br8c6{ew .} ==> Pr8c6 ≠ ne, Pr8c6 ≠ se, Nr8c6 ≠ 1
N-single: Nr8c6 = 2
whip[1]: Br7c7{se .} ==> Pr7c7 ≠ se, Pr7c8 ≠ nw, Nr7c7 ≠ 3
P-single: Pr7c7 = o
whip[1]: Pr7c7{o .} ==> Br6c7 ≠ se, Br6c7 ≠ nes
whip[1]: Br6c7{ne .} ==> Nr6c7 ≠ 3
whip[1]: Br7c6{w .} ==> Nr7c6 ≠ 2
whip[1]: Pr9c8{o .} ==> Br9c7 ≠ e, Br9c8 ≠ w, Br9c8 ≠ esw
whip[1]: Br9c8{se .} ==> Pr10c8 ≠ ne, Pr10c8 ≠ nw, Nr9c8 ≠ 1, Nr9c8 ≠ 3
whip[1]: Hr7c5{0 .} ==> Pr7c5 ≠ ew, Pr7c6 ≠ sw, Br6c5 ≠ s, Br7c5 ≠ ne
P-single: Pr7c6 = o
P-single: Pr7c5 = nw
B-single: Br7c5 = o
B-single: Br6c5 = w
w[1]-1-in-r6c5-symmetric-se-corner ==> Pr6c5 ≠ nw, Pr6c5 ≠ o
whip[1]: Pr7c6{o .} ==> Br7c6 ≠ w
B-single: Br7c6 = o
whip[1]: Br7c6{o .} ==> Pr8c6 ≠ ns, Nr7c6 ≠ 1
N-single: Nr7c6 = 0
P-single: Pr9c7 = nw
P-single: Pr8c6 = o
w[1]-1-in-r9c7-symmetric-nw-corner ==> Pr10c8 ≠ o
P-single: Pr10c8 = ew
whip[1]: Pr9c7{nw .} ==> Br8c6 ≠ ew, Br9c6 ≠ se, Br9c7 ≠ w
B-single: Br9c7 = s
B-single: Br9c6 = ns
B-single: Br8c6 = se
whip[1]: Pr8c6{o .} ==> Br8c5 ≠ esw
B-single: Br8c5 = sw
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 3
N-single: Nr8c5 = 2
whip[1]: Pr10c8{ew .} ==> Br10c8 ≠ s, Br10c7 ≠ s, Br9c8 ≠ o, Br10c8 ≠ se
B-single: Br10c8 = ns
B-single: Br9c8 = se
B-single: Br10c7 = ns
whip[1]: Br10c8{ns .} ==> Nr10c8 ≠ 1, Pr10c9 ≠ o, Pr11c9 ≠ nw
N-single: Nr10c8 = 2
P-single: Pr11c9 = ew
P-single: Pr10c9 = nw
whip[1]: Pr11c9{ew .} ==> Br11c9 ≠ o, Br10c9 ≠ nw
B-single: Br10c9 = se
B-single: Br11c9 = n
whip[1]: Br10c9{se .} ==> Pr10c10 ≠ ew
P-single: Pr10c10 = ns
whip[1]: Pr10c10{ns .} ==> Br10c10 ≠ n, Vr9c10 ≠ 0, Hr10c10 ≠ 1, Br9c9 ≠ s, Br9c9 ≠ ns, Br9c10 ≠ se
H-single: Hr10c10 = 0
V-single: Vr9c10 = 1
P-single: Pr9c10 = se
B-single: Br9c10 = nw
B-single: Br10c10 = w

LOOP[34]: Vr9c10-Vr10c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Hr5c2-Vr5c3-Vr6c3-Hr7c2-Vr7c2-Vr8c2-Hr9c2-Vr9c3-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Hr10c7-Hr10c8-Vr9c9- ==> Hr9c9 = 0
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
horizontal-line-{r7 r8}c9 ==> Ir7c9 = out
no-vertical-line-r7{c8 c9} ==> Ir7c8 = out
no-horizontal-line-{r6 r7}c8 ==> Ir6c8 = out
vertical-line-r9{c9 c10} ==> Ir9c10 = out
same-colour-in-r9{c10 c11} ==> Vr9c11 = 0
w[1]-2-in-r9c10-open-se-corner ==> Hr9c10 = 1, Vr8c10 = 0
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
same-colour-in-{r7 r8}c8 ==> Hr8c8 = 0
different-colours-in-r7{c7 c8} ==> Hr7c8 = 1
different-colours-in-r8{c8 c9} ==> Hr8c9 = 1

LOOP[38]: Hr8c9-Vr8c9-Vr9c9-Hr10c8-Hr10c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Vr10c10-Vr9c10-Hr9c10-Vr8c11- ==> Hr8c10 = 0
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
different-colours-in-r7{c9 c10} ==> Hr7c10 = 1

LOOP[40]: Vr7c10-Hr8c9-Vr8c9-Vr9c9-Hr10c8-Hr10c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Vr10c10-Vr9c10-Hr9c10-Vr8c11-Vr7c11- ==> Hr7c10 = 0
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = in
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
whip[1]: Pr9c10{se .} ==> Br8c10 ≠ e, Br8c9 ≠ nes, Br8c10 ≠ ne, Br8c10 ≠ ew
whip[1]: Br8c10{nes .} ==> Pr9c11 ≠ ns, Nr8c10 ≠ 1
P-single: Pr9c11 = nw
whip[1]: Br8c9{nw .} ==> Nr8c9 ≠ 3
whip[1]: Vr9c11{0 .} ==> Br9c11 ≠ w
B-single: Br9c11 = o
whip[1]: Vr6c8{1 .} ==> Br6c8 ≠ o, Br6c7 ≠ o, Pr6c8 ≠ o, Pr6c8 ≠ ne, Pr6c8 ≠ nw, Pr6c8 ≠ ew, Pr7c8 ≠ o, Br6c7 ≠ n, Br6c8 ≠ n, Br6c8 ≠ e, Br6c8 ≠ ne
P-single: Pr7c8 = ns
w[1]-1-in-r7c8-asymmetric-nw-corner ==> Pr8c9 ≠ ew
P-single: Pr8c9 = se
whip[1]: Pr7c8{ns .} ==> Br7c7 ≠ s, Br7c8 ≠ s
B-single: Br7c8 = w
B-single: Br7c7 = se
whip[1]: Br7c8{w .} ==> Pr8c8 ≠ ew
P-single: Pr8c8 = nw
w[1]-1-in-r8c8-symmetric-nw-corner ==> Pr9c9 ≠ o
P-single: Pr9c9 = ns
whip[1]: Pr8c8{nw .} ==> Br8c8 ≠ n
B-single: Br8c8 = e
whip[1]: Pr9c9{ns .} ==> Br9c9 ≠ e, Br8c9 ≠ n
B-single: Br8c9 = nw
B-single: Br9c9 = ew
whip[1]: Br8c9{nw .} ==> Nr8c9 ≠ 1
N-single: Nr8c9 = 2
whip[1]: Br9c9{ew .} ==> Nr9c9 ≠ 1
N-single: Nr9c9 = 2
whip[1]: Br7c7{se .} ==> Nr7c7 ≠ 1
N-single: Nr7c7 = 2
whip[1]: Br6c8{wne .} ==> Nr6c8 ≠ 0
whip[1]: Br6c7{ne .} ==> Nr6c7 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ esw, Br5c8 ≠ sw, Br5c8 ≠ swn
whip[1]: Hr8c10{0 .} ==> Pr8c11 ≠ sw, Pr8c10 ≠ ew, Br7c10 ≠ ns, Br8c10 ≠ nes
P-single: Pr7c9 = o
P-single: Pr8c10 = nw
P-single: Pr8c11 = ns
B-single: Br8c10 = se
whip[1]: Pr7c9{o .} ==> Vr6c9 ≠ 1, Hr7c9 ≠ 1, Br6c8 ≠ ew, Br6c8 ≠ wne, Br6c9 ≠ sw, Br7c9 ≠ ns
H-single: Hr7c9 = 0
V-single: Vr6c9 = 0
w[1]-2-in-r6c9-open-sw-corner ==> Hr6c9 = 1, Vr6c10 = 1, Hr6c10 = 0, Vr5c10 = 0
P-single: Pr6c10 = sw
B-single: Br7c9 = se
B-single: Br6c9 = ne
w[1]-1-in-r5c9-asymmetric-se-corner ==> Pr5c9 ≠ sw, Pr5c9 ≠ ew, Pr5c9 ≠ ns, Pr5c9 ≠ ne
w[1]-1-in-r4c8-symmetric-se-corner ==> Pr4c8 ≠ se, Pr4c8 ≠ nw, Pr4c8 ≠ o
w[1]-1-in-r3c7-asymmetric-se-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ ew, Pr3c7 ≠ ns, Pr3c7 ≠ ne
w[1]-1-in-r2c6-symmetric-se-corner ==> Pr2c6 ≠ o
P-single: Pr2c6 = ne
no-horizontal-line-{r5 r6}c10 ==> Ir5c10 = in
no-vertical-line-r5{c9 c10} ==> Ir5c9 = in
horizontal-line-{r5 r6}c9 ==> Ir6c9 = out
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
whip[1]: Hr7c9{0 .} ==> Pr7c10 ≠ ew
P-single: Pr7c10 = ns
whip[1]: Pr7c10{ns .} ==> Br6c10 ≠ s, Br6c10 ≠ ns, Br6c10 ≠ se, Br6c10 ≠ nes, Br7c10 ≠ ne
B-single: Br7c10 = ew
B-single: Br6c10 = ew
whip[1]: Br7c10{ew .} ==> Pr7c11 ≠ nw
P-single: Pr7c11 = ns
whip[1]: Br6c10{ew .} ==> Nr6c10 ≠ 3, Nr6c10 ≠ 1, Pr6c11 ≠ sw, Pr6c11 ≠ nw, Pr6c11 ≠ o
N-single: Nr6c10 = 2
P-single: Pr6c11 = ns
whip[1]: Pr6c11{ns .} ==> Br5c10 ≠ n, Br5c10 ≠ o, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn
whip[1]: Br5c10{ne .} ==> Pr5c11 ≠ o, Pr5c11 ≠ nw, Pr5c10 ≠ ns, Pr5c10 ≠ se, Nr5c10 ≠ 0, Nr5c10 ≠ 3, Pr5c10 ≠ sw
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ e
whip[1]: Br5c9{w .} ==> Pr6c9 ≠ ne, Pr5c9 ≠ se
whip[1]: Pr5c9{nw .} ==> Hr5c9 ≠ 1, Vr5c9 ≠ 1, Br5c8 ≠ ne, Br5c8 ≠ ew, Br5c8 ≠ wne, Br5c9 ≠ w, Br4c8 ≠ e, Br4c8 ≠ s, Br4c9 ≠ s, Br5c8 ≠ e, Br5c9 ≠ n
V-single: Vr5c9 = 0
H-single: Hr5c9 = 0
w[1]-diagonal-1-1-in-{r5c9...r4c8}-with-no-nw-inner-sides ==> Hr5c8 = 0, Vr4c9 = 0
w[1]-diagonal-1-1-in-{r4c8...r3c7}-with-no-se-outer-sides ==> Hr3c7 = 0, Vr3c7 = 0
w[1]-diagonal-1-1-in-{r3c7...r2c6}-with-no-nw-inner-sides ==> Hr3c6 = 0, Vr2c7 = 0
B-single: Br5c9 = s
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-horizontal-line-{r2 r3}c7 ==> Ir3c7 = in
no-vertical-line-r3{c6 c7} ==> Ir3c6 = in
no-horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
no-vertical-line-r4{c8 c9} ==> Ir4c8 = in
no-horizontal-line-{r4 r5}c8 ==> Ir5c8 = in
different-colours-in-{r5 r6}c8 ==> Hr6c8 = 1
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
same-colour-in-r5{c6 c7} ==> Vr5c7 = 0
same-colour-in-{r3 r4}c9 ==> Hr4c9 = 0
w[1]-diagonal-1-1-in-{r4c9...r3c8}-with-no-nw-inner-sides ==> Hr4c8 = 0, Vr3c9 = 0
w[1]-diagonal-1-1-in-{r3c8...r2c7}-with-no-se-outer-sides ==> Hr2c7 = 0
no-horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
same-colour-in-r3{c7 c8} ==> Vr3c8 = 0
different-colours-in-r1{c7 c8} ==> Hr1c8 = 1
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
whip[1]: Vr5c9{0 .} ==> Pr6c9 ≠ ns
whip[1]: Pr6c9{sw .} ==> Br6c8 ≠ w
B-single: Br6c8 = nw
whip[1]: Br6c8{nw .} ==> Nr6c8 ≠ 3, Nr6c8 ≠ 1, Pr6c9 ≠ sw, Pr6c8 ≠ sw, Pr6c8 ≠ ns
N-single: Nr6c8 = 2
P-single: Pr6c8 = se
P-single: Pr6c9 = ew
w[1]-1-in-r5c9-asymmetric-sw-corner ==> Pr5c10 ≠ ew, Pr5c10 ≠ nw
whip[1]: Pr6c8{se .} ==> Br5c7 ≠ e, Br5c7 ≠ ne, Br5c7 ≠ sw, Br5c7 ≠ swn, Br6c7 ≠ ne
B-single: Br6c7 = e
whip[1]: Br6c7{e .} ==> Nr6c7 ≠ 2, Pr6c7 ≠ ne
N-single: Nr6c7 = 1
P-single: Pr6c7 = o
w[1]-1-in-r5c6-symmetric-se-corner ==> Pr5c6 ≠ nw, Pr5c6 ≠ o
whip[1]: Pr6c7{o .} ==> Br5c6 ≠ e
B-single: Br5c6 = n
whip[1]: Br5c6{n .} ==> Hr5c6 ≠ 0, Pr5c7 ≠ ns, Pr5c7 ≠ se
H-single: Hr5c6 = 1
horizontal-line-{r4 r5}c6 ==> Ir4c6 = out
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
same-colour-in-r4{c4 c5} ==> Vr4c5 = 0
whip[1]: Hr5c6{1 .} ==> Br4c6 ≠ o, Br4c6 ≠ n, Br4c6 ≠ e, Br4c6 ≠ w, Br4c6 ≠ ne, Br4c6 ≠ nw, Br4c6 ≠ ew, Br4c6 ≠ wne
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Hr4c6{1 .} ==> Pr4c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Pr4c6 ≠ sw, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Pr4c7 ≠ se, Br3c6 ≠ n, Br3c6 ≠ w, Br3c6 ≠ ne, Br3c6 ≠ ew, Br4c6 ≠ s, Br4c6 ≠ se, Br4c6 ≠ sw, Br4c6 ≠ esw
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 1
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 1
whip[1]: Pr4c7{sw .} ==> Br4c7 ≠ nw, Br4c7 ≠ wne
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ nes, Br4c5 ≠ wne
whip[1]: Br3c5{ns .} ==> Nr3c5 ≠ 3
whip[1]: Hr4c5{0 .} ==> Pr4c5 ≠ se, Pr4c6 ≠ ew, Br3c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ swn
P-single: Pr4c5 = o
w[1]-1-in-r4c4-symmetric-ne-corner ==> Pr5c4 ≠ o
P-single: Pr5c4 = se
whip[1]: Pr4c5{o .} ==> Br4c4 ≠ e
B-single: Br4c4 = s
whip[1]: Br4c4{s .} ==> Pr5c5 ≠ ns, Pr5c5 ≠ ne, Hr5c4 ≠ 0
H-single: Hr5c4 = 1
horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
same-colour-in-r5{c4 c5} ==> Vr5c5 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
whip[1]: Hr5c4{1 .} ==> Br5c4 ≠ o, Br5c4 ≠ e, Br5c4 ≠ s, Br5c4 ≠ se
whip[1]: Br5c4{wne .} ==> Pr6c4 ≠ o, Nr5c4 ≠ 0, Nr5c4 ≠ 1
P-single: Pr6c4 = ne
whip[1]: Pr6c4{ne .} ==> Br5c3 ≠ w, Br5c4 ≠ nw, Br5c4 ≠ wne, Br6c4 ≠ s, Br6c4 ≠ se
B-single: Br5c4 = swn
B-single: Br5c3 = ew
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 2, Pr6c5 ≠ ns, Pr5c5 ≠ sw
N-single: Nr5c4 = 3
P-single: Pr5c5 = ew
P-single: Pr6c5 = sw
w[1]-1-in-r5c5-symmetric-sw-corner ==> Pr5c6 ≠ ne
P-single: Pr5c6 = ew
whip[1]: Pr5c5{ew .} ==> Br5c5 ≠ w, Br4c5 ≠ e, Br4c5 ≠ o
B-single: Br5c5 = n
whip[1]: Br4c5{se .} ==> Nr4c5 ≠ 0, Nr4c5 ≠ 3
whip[1]: Pr6c5{sw .} ==> Br6c4 ≠ ns
B-single: Br6c4 = nes
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 2, Nr6c4 ≠ 1
N-single: Nr6c4 = 3
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ se, Br4c6 ≠ swn
B-single: Br4c5 = s
whip[1]: Br4c5{s .} ==> Nr4c5 ≠ 2, Pr4c6 ≠ se
N-single: Nr4c5 = 1
P-single: Pr4c6 = ne
whip[1]: Pr4c6{ne .} ==> Br3c5 ≠ n, Br3c6 ≠ ns, Br3c6 ≠ nes
B-single: Br3c5 = ne
whip[1]: Br3c5{ne .} ==> Nr3c5 ≠ 1, Pr3c6 ≠ ew
N-single: Nr3c5 = 2
P-single: Pr3c6 = sw
w[1]-1-in-r2c6-symmetric-sw-corner ==> Pr2c7 ≠ ne, Pr2c7 ≠ o
whip[1]: Pr3c6{sw .} ==> Br2c6 ≠ s
whip[1]: Pr2c7{ew .} ==> Br1c7 ≠ sw, Br1c7 ≠ o, Br1c7 ≠ ne
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0, Nr1c7 ≠ 2
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 1
N-single: Nr5c3 = 2
whip[1]: Br5c7{n .} ==> Pr5c8 ≠ ns, Pr5c8 ≠ se, Pr5c8 ≠ sw, Nr5c7 ≠ 2, Nr5c7 ≠ 3
whip[1]: Pr5c10{ne .} ==> Br4c10 ≠ ns, Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ ew
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 2
whip[1]: Hr5c8{0 .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ ew, Pr5c9 ≠ nw, Br5c8 ≠ ns
P-single: Pr5c9 = o
B-single: Br5c8 = s
w[1]-1-in-r4c9-symmetric-sw-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ o
whip[1]: Pr5c9{o .} ==> Br4c9 ≠ w
whip[1]: Br4c9{e .} ==> Pr4c9 ≠ ns, Pr4c9 ≠ se, Pr4c9 ≠ sw
whip[1]: Br5c8{s .} ==> Nr5c8 ≠ 3, Nr5c8 ≠ 2
N-single: Nr5c8 = 1
whip[1]: Pr4c10{ew .} ==> Hr4c10 ≠ 0, Br4c10 ≠ esw, Br3c10 ≠ ne, Br4c10 ≠ e
H-single: Hr4c10 = 1
B-single: Br3c10 = nes
no-vertical-line-r4{c10 c11} ==> Ir4c10 = out
different-colours-in-{r4 r5}c10 ==> Hr5c10 = 1
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1
whip[1]: Hr4c10{1 .} ==> Pr4c11 ≠ ns
P-single: Pr4c11 = nw
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w, Pr5c11 ≠ ns
P-single: Pr5c11 = sw
B-single: Br4c11 = o
whip[1]: Pr5c11{sw .} ==> Br5c10 ≠ e, Br4c10 ≠ n
B-single: Br4c10 = swn
B-single: Br5c10 = ne
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 1, Pr5c10 ≠ o, Pr4c10 ≠ ew
N-single: Nr4c10 = 3
P-single: Pr4c10 = se
P-single: Pr5c10 = ne
w[1]-1-in-r4c9-asymmetric-se-corner ==> Pr4c9 ≠ ew, Pr4c9 ≠ ne
w[1]-1-in-r3c8-symmetric-se-corner ==> Pr3c8 ≠ se, Pr3c8 ≠ nw, Pr3c8 ≠ o
w[1]-1-in-r2c7-asymmetric-se-corner ==> Pr2c7 ≠ ew, Pr2c7 ≠ ns
whip[1]: Pr4c10{se .} ==> Br4c9 ≠ n, Br3c9 ≠ s, Br3c9 ≠ sw
B-single: Br4c9 = e
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 2
whip[1]: Pr2c7{se .} ==> Br1c6 ≠ ne, Br1c6 ≠ sw, Br2c7 ≠ n, Br2c7 ≠ w
whip[1]: Br2c7{s .} ==> Pr2c7 ≠ se, Pr2c8 ≠ nw, Pr2c8 ≠ ew, Pr2c8 ≠ sw
P-single: Pr2c7 = nw
whip[1]: Pr2c7{nw .} ==> Br2c6 ≠ e, Br1c7 ≠ s, Br1c6 ≠ n, Vr1c7 ≠ 0, Hr2c6 ≠ 0, Br1c7 ≠ nes
H-single: Hr2c6 = 1
V-single: Vr1c7 = 1
B-single: Br1c6 = esw
B-single: Br2c6 = n
no-horizontal-line-{r0 r1}c6 ==> Ir1c6 = out
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
whip[1]: Vr1c7{1 .} ==> Pr1c7 ≠ o, Pr1c7 ≠ ew
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s, Pr1c6 ≠ ew, Pr1c7 ≠ sw
P-single: Pr1c7 = se
P-single: Pr1c6 = sw
B-single: Br0c6 = o
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ w
B-single: Br1c7 = wne
whip[1]: Br1c7{wne .} ==> Nr1c7 ≠ 1, Pr2c8 ≠ se, Pr2c8 ≠ o, Pr1c8 ≠ o
N-single: Nr1c7 = 3
P-single: Pr1c8 = sw
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ e, Br1c8 ≠ se
whip[1]: Br1c8{esw .} ==> Nr1c8 ≠ 1
whip[1]: Pr2c8{ns .} ==> Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ swn, Br2c8 ≠ e
whip[1]: Pr1c6{sw .} ==> Br1c5 ≠ n
B-single: Br1c5 = ne
whip[1]: Br1c5{ne .} ==> Nr1c5 ≠ 1
N-single: Nr1c5 = 2
whip[1]: Br1c6{esw .} ==> Nr1c6 ≠ 2, Nr1c6 ≠ 1
N-single: Nr1c6 = 3
whip[1]: Pr3c8{sw .} ==> Br3c8 ≠ e, Br3c8 ≠ s
whip[1]: Br3c8{w .} ==> Pr3c9 ≠ ns, Pr4c8 ≠ ne, Pr4c9 ≠ nw, Pr3c9 ≠ sw, Pr4c8 ≠ ew
P-single: Pr4c9 = o
w[1]-1-in-r4c8-symmetric-ne-corner ==> Pr5c8 ≠ o
P-single: Pr5c8 = nw
whip[1]: Pr4c9{o .} ==> Br3c9 ≠ w, Br4c8 ≠ n
B-single: Br4c8 = w
B-single: Br3c9 = o
whip[1]: Br4c8{w .} ==> Vr4c8 ≠ 0
V-single: Vr4c8 = 1
vertical-line-r4{c7 c8} ==> Ir4c7 = out
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
different-colours-in-{r3 r4}c7 ==> Hr4c7 = 1

LOOP[94]: Vr1c9-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Hr4c10-Vr4c10-Hr5c10-Vr5c11-Vr6c11-Vr7c11-Vr8c11-Hr9c10-Vr9c10-Vr10c10-Hr11c9-Hr11c8-Hr11c7-Hr11c6-Hr11c5-Hr11c4-Hr11c3-Hr11c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Hr5c2-Vr5c3-Vr6c3-Hr7c2-Vr7c2-Vr8c2-Hr9c2-Vr9c3-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Hr10c7-Hr10c8-Vr9c9-Vr8c9-Hr8c9-Vr7c10-Vr6c10-Hr6c9-Hr6c8-Vr6c8-Vr7c8-Hr8c7-Vr8c7-Hr9c6-Hr9c5-Vr8c5-Hr8c4-Vr7c4-Hr7c4-Vr6c5-Hr6c4-Vr5c4-Hr5c4-Hr5c5-Hr5c6-Hr5c7-Vr4c8-Hr4c7-Hr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c4-Vr2c4-Hr3c3-Hr3c2-Vr2c2-Vr1c2-Hr1c2-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8- ==> Hr2c8 = 0

XTD-LOOP[96]: Vr1c8-Hr1c7-Vr1c7-Hr2c6-Vr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Vr1c2-Vr2c2-Hr3c2-Hr3c3-Vr2c4-Hr2c4-Vr2c5-Hr3c5-Vr3c6-Hr4c6-Hr4c7-Vr4c8-Hr5c7-Hr5c6-Hr5c5-Hr5c4-Vr5c4-Hr6c4-Vr6c5-Hr7c4-Vr7c4-Hr8c4-Vr8c5-Hr9c5-Hr9c6-Vr8c7-Hr8c7-Vr7c8-Vr6c8-Hr6c8-Hr6c9-Vr6c10-Vr7c10-Hr8c9-Vr8c9-Vr9c9-Hr10c8-Hr10c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c2-Vr8c2-Vr7c2-Hr7c2-Vr6c3-Vr5c3-Hr5c2-Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Hr11c8-Hr11c9-Vr10c10-Vr9c10-Hr9c10-Vr8c11-Vr7c11-Vr6c11-Vr5c11-Hr5c10-Vr4c10-Hr4c10-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9- ==> Vr2c9-Hr3c8-Vr2c8 = 1
vertical-line-r2{c7 c8} ==> Ir2c8 = out

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+xtd-Loop, MOST COMPLEX RULE TRIED = W[1]

OXXXXOXOXX
OXXOXXXOXO
OOOOOXXXXX
OOOOOOOXXO
XXOXXXXXXX
XXOOXXXOOX
XOOXXXXOOX
XOOOXXOOXX
XXOOOOOOXO
XXXXXXXXXO

.   .———.———.———.———.   .———.   .———.———.
  1 | 2             |   |   |   | 2   3 |
.   .   .   .———.   .———.   .   .   .———.
  1 |       | 3 | 2   1   1 |   |   | 3
.   .———.———.   .———.   .   .———.   .———.
          1   0     |     1   1         |
.   .   .   .   .   .———.———.   .   .———.
      1   0                 | 1   1 |
.———.———.   .———.———.———.———.   .   .———.
|     2 |   |     1   1           1     |
.   .   .   .———.   .   .   .———.———.   .
|     2 |       | 1   0     |     2 |   |
.   .———.   .———.   .   .   .   .   .   .
|   | 2   1 |               | 1   2 |   |
.   .   .   .———.   .   .———.   .———.   .
|   |     0   2 |       | 2   1 |       |
.   .———.   .   .———.———.   .   .   .———.
| 1     |     1   2   2   1     |   | 2
.   .   .———.———.———.———.———.———.   .   .
| 2   1                           2 | 1
.———.———.———.———.———.———.———.———.———.   .

init-time = 0.64s, solve-time = 1m 5.72s, total-time = 1m 6.36s
nb-facts=<Fact-204921>
Quasi-Loop max length = 96
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
