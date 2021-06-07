
(solve
5 5
3 . . 2 . 
2 3 1 1 . 
2 . 1 . . 
. 3 . 3 . 
3 . 1 2 2 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . . 2 .
2 3 1 1 .
2 . 1 . .
. 3 . 3 .
3 . 1 2 2

Loading pre-computed background
start init-inner-N-and-B-candidates 0.165251970291138
start solution 0.167831897735596
entering BRT
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-2-in-se-corner ==> Vr4c6 = 1, Hr6c4 = 1
w[1]-diagonal-3s-in-{r4c2...r5c1} ==> Vr4c3 = 1, Hr4c2 = 1, Vr3c3 = 0, Hr4c3 = 0
w[1]-diagonal-3s-in-{r1c1...r2c2} ==> Vr2c3 = 1, Hr3c2 = 1, Hr3c3 = 0
w[1]-diagonal-1-1-in-{r3c3...r2c4}-with-no-sw-outer-sides ==> Hr2c4 = 0, Vr2c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r2{c3 c2} ==> Vr2c4 = 0, Hr2c3 = 0
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r2c2-closed-se-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r4c4-symmetric-se-corner ==> Vr4c5 = 1, Hr5c4 = 1
w[1]-2-in-r5c5-open-nw-corner ==> Hr6c5 = 1, Vr5c6 = 1
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
P-single: Pr6c6 = nw
P-single: Pr6c5 = ew
w[1]-1-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne
entering level Loop with <Fact-27574>
entering level Col with <Fact-27652>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
vertical-line-r4{c4 c5} ==> Ir4c5 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
Starting_init_links_with_<Fact-27659>
198 candidates, 1623 csp-links and 6476 links. Density = 33.21%
starting non trivial part of solution
Entering_level_W1_with_<Fact-43862>
whip[1]: Pr6c5{ew .} ==> Br5c5 ≠ nw, Br6c4 ≠ o, Br6c5 ≠ o, Br5c4 ≠ ne, Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ ew
B-single: Br6c5 = n
B-single: Br6c4 = n
B-single: Br5c5 = se
whip[1]: Br6c4{n .} ==> Pr6c4 ≠ nw
w[1]-1-in-r5c3-asymmetric-se-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ew, Pr5c3 ≠ ns, Pr5c3 ≠ ne
w[1]-3-in-r4c2-symmetric-se-corner ==> Hr5c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-ne ==> Vr4c2 = 0
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o
whip[1]: Hr5c2{1 .} ==> Br5c2 ≠ o, Pr5c2 ≠ ns, Pr5c2 ≠ nw, Pr5c3 ≠ o, Pr5c3 ≠ se, Br4c2 ≠ wne, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw
P-single: Pr5c3 = nw
whip[1]: Pr5c3{nw .} ==> Br5c3 ≠ n, Br4c3 ≠ s, Br4c3 ≠ e, Br4c3 ≠ n, Br4c3 ≠ o, Br4c2 ≠ swn, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ nes, Br5c2 ≠ ne, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ w
whip[1]: Br5c3{s .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw
whip[1]: Pr5c4{ns .} ==> Vr4c4 ≠ 0, Br4c3 ≠ w, Br4c3 ≠ nw, Br4c4 ≠ nes
V-single: Vr4c4 = 1
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
P-single: Pr5c5 = nw
P-single: Pr6c4 = ew
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
horizontal-line-{r4 r5}c2 ==> Ir4c2 = out
no-vertical-line-r4{c1 c2} ==> Ir4c1 = out
vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
same-colour-in-r1{c3 c4} ==> Vr1c4 = 0
w[1]-2-in-r1c4-open-sw-corner ==> Hr1c4 = 1, Vr1c5 = 1, Hr1c5 = 0
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
w[1]-3-in-r4c2-hit-by-horiz-line-at-sw ==> Vr5c2 = 0
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ nw, Pr6c2 ≠ o
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
whip[1]: Vr4c4{1 .} ==> Pr4c4 ≠ ne, Pr4c4 ≠ ew
whip[1]: Pr4c4{sw .} ==> Hr4c4 ≠ 1, Br3c4 ≠ se, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ nes, Br4c4 ≠ swn, Br4c4 ≠ wne, Br3c3 ≠ n, Br3c3 ≠ w, Br3c4 ≠ s, Br3c4 ≠ ns
H-single: Hr4c4 = 0
B-single: Br4c4 = esw
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
different-colours-in-r3{c3 c4} ==> Hr3c4 = 1
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1

LOOP[6]: Hr3c4-Vr3c4-Vr4c4-Hr5c4-Vr4c5- ==> Vr3c5 = 0
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
same-colour-in-r3{c5 c6} ==> Vr3c6 = 0
different-colours-in-{r3 r4}c5 ==> Hr4c5 = 1
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
whip[1]: Hr4c4{0 .} ==> Pr4c5 ≠ nw, Pr4c5 ≠ ew
whip[1]: Pr4c5{se .} ==> Br3c5 ≠ ne, Br3c5 ≠ sw, Br3c5 ≠ esw, Br3c5 ≠ swn, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ nes, Br3c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ e, Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ s
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br4c4{esw .} ==> Pr5c4 ≠ ns
P-single: Pr5c4 = ne
w[1]-1-in-r5c3-symmetric-ne-corner ==> Pr6c3 ≠ o
P-single: Pr6c3 = ew
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ e, Br5c4 ≠ sw
B-single: Br5c4 = ns
B-single: Br5c3 = s
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ n, Br6c3 ≠ o, Br6c2 ≠ o, Br5c2 ≠ nw
B-single: Br6c2 = n
B-single: Br6c3 = n
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0, Nr5c2 ≠ 1
whip[1]: Vr3c4{1 .} ==> Br3c4 ≠ o, Pr3c4 ≠ o, Pr3c4 ≠ ne, Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr4c4 ≠ sw, Br3c3 ≠ s, Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ ne
P-single: Pr4c4 = ns
B-single: Br3c3 = e
whip[1]: Pr4c4{ns .} ==> Br4c3 ≠ wne
B-single: Br4c3 = ew
whip[1]: Br4c3{ew .} ==> Nr4c3 ≠ 3, Nr4c3 ≠ 1, Nr4c3 ≠ 0, Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ne, Pr4c3 ≠ o
N-single: Nr4c3 = 2
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ w
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Br3c3{e .} ==> Pr3c3 ≠ se, Pr3c4 ≠ sw, Pr4c3 ≠ ns
P-single: Pr4c3 = sw
w[1]-1-in-r2c4-asymmetric-sw-corner ==> Pr2c5 ≠ ew, Pr2c5 ≠ ns
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ ne, Br3c2 ≠ e, Br3c2 ≠ ew, Br3c2 ≠ wne, Br4c2 ≠ esw
B-single: Br4c2 = nes
whip[1]: Br4c2{nes .} ==> Pr4c2 ≠ sw, Pr4c2 ≠ ns
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ nw, Br3c1 ≠ se, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c1 ≠ e, Br4c1 ≠ ne
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c5 ≠ wne, Br1c5 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ swn, Br2c5 ≠ wne, Br1c5 ≠ s, Br1c5 ≠ w, Br2c4 ≠ n, Br2c4 ≠ e, Br2c5 ≠ o, Br2c5 ≠ e, Br2c5 ≠ s
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Br2c4{w .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ns, Pr3c5 ≠ nw, Pr2c4 ≠ se, Pr2c4 ≠ ew, Pr2c5 ≠ sw
P-single: Pr2c5 = ne
whip[1]: Pr2c5{ne .} ==> Br1c5 ≠ o, Br1c4 ≠ ns, Br1c4 ≠ sw, Br1c5 ≠ ne, Br2c5 ≠ w, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
B-single: Br1c5 = sw
whip[1]: Br1c5{sw .} ==> Nr1c5 ≠ 3, Nr1c5 ≠ 1, Nr1c5 ≠ 0, Pr2c6 ≠ nw, Pr2c6 ≠ ns, Pr2c6 ≠ o, Pr1c5 ≠ ew, Pr1c5 ≠ se, Pr1c6 ≠ sw
N-single: Nr1c5 = 2
P-single: Pr1c6 = o
P-single: Pr1c5 = sw
P-single: Pr2c6 = sw
w[1]-1-in-r2c3-symmetric-ne-corner ==> Pr3c3 ≠ o
P-single: Pr3c3 = nw
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ ew
B-single: Br1c4 = ne
whip[1]: Br1c4{ne .} ==> Pr1c4 ≠ sw
P-single: Pr1c4 = ew
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ ne, Br1c3 ≠ w, Br1c3 ≠ s, Br1c3 ≠ e, Br1c3 ≠ o, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ wne, Br1c3 ≠ nes
whip[1]: Br1c3{swn .} ==> Pr1c3 ≠ o, Pr1c3 ≠ sw, Nr1c3 ≠ 0
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ sw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c2 ≠ o, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ne
whip[1]: Br1c2{swn .} ==> Nr1c2 ≠ 0
whip[1]: Pr2c6{sw .} ==> Br2c5 ≠ ns, Br2c5 ≠ n
whip[1]: Br2c5{nes .} ==> Pr3c6 ≠ o, Pr3c6 ≠ sw, Nr2c5 ≠ 1
whip[1]: Pr3c6{nw .} ==> Br3c5 ≠ w, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c5 ≠ s
whip[1]: Br3c5{ew .} ==> Nr3c5 ≠ 1, Nr3c5 ≠ 3
N-single: Nr3c5 = 2
w[1]-1-in-r2c4-asymmetric-se-corner ==> Pr2c4 ≠ sw
P-single: Pr2c4 = o
whip[1]: Pr2c4{o .} ==> Br1c3 ≠ ns, Br1c3 ≠ swn, Br2c3 ≠ n, Br2c3 ≠ e, Br2c4 ≠ w
B-single: Br2c4 = s
whip[1]: Br2c4{s .} ==> Pr3c4 ≠ ns
P-single: Pr3c4 = se
w[1]-1-in-r2c3-symmetric-se-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ w, Br2c3 ≠ s, Br3c4 ≠ ew
B-single: Br2c3 = w
whip[1]: Br2c3{w .} ==> Pr2c3 ≠ ne, Pr2c3 ≠ ew
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ esw, Br2c2 ≠ swn, Br1c2 ≠ n
whip[1]: Br2c2{nes .} ==> Pr3c2 ≠ o, Pr3c2 ≠ sw
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne
whip[1]: Br3c1{sw .} ==> Pr4c1 ≠ o
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ o, Br4c1 ≠ s
whip[1]: Br4c1{swn .} ==> Nr4c1 ≠ 0
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0, Nr3c4 ≠ 1
whip[1]: Br1c3{nw .} ==> Nr1c3 ≠ 3
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br4c5 ≠ nw, Br4c5 ≠ sw, Br4c5 ≠ swn, Br4c5 ≠ w
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 1
whip[1]: Pr3c3{nw .} ==> Br3c2 ≠ s, Br2c2 ≠ wne, Br3c2 ≠ sw
whip[1]: Br3c2{swn .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ nw, Nr3c2 ≠ 1
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ se
whip[1]: Br2c1{sw .} ==> Pr2c1 ≠ o
whip[1]: Vr3c5{0 .} ==> Pr3c5 ≠ sw, Pr4c5 ≠ ns, Br3c4 ≠ wne, Br3c5 ≠ ew
P-single: Pr4c5 = se
P-single: Pr3c5 = ew
B-single: Br3c5 = ns
B-single: Br3c4 = nw
whip[1]: Pr4c5{se .} ==> Br4c5 ≠ ew, Br4c5 ≠ esw
B-single: Br4c5 = wne
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 2, Pr5c6 ≠ nw, Pr4c6 ≠ ns
N-single: Nr4c5 = 3
P-single: Pr4c6 = sw
P-single: Pr5c6 = ns
whip[1]: Pr3c5{ew .} ==> Br2c5 ≠ ne
B-single: Br2c5 = nes
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 2, Pr3c6 ≠ ns
N-single: Nr2c5 = 3
P-single: Pr3c6 = nw
whip[1]: Br3c4{nw .} ==> Nr3c4 ≠ 3
N-single: Nr3c4 = 2
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ w
B-single: Br3c6 = o
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Vr1c6{0 .} ==> Br1c6 ≠ w
B-single: Br1c6 = o
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Vr2c6{1 .} ==> Br2c6 ≠ o
B-single: Br2c6 = w
whip[1]: Hr5c1{1 .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ns, Pr5c2 ≠ se, Br4c1 ≠ n, Br4c1 ≠ w, Br4c1 ≠ nw, Br5c1 ≠ esw
P-single: Pr5c2 = ew
B-single: Br5c1 = swn
whip[1]: Pr5c2{ew .} ==> Br5c2 ≠ swn
B-single: Br5c2 = ns
whip[1]: Br5c2{ns .} ==> Nr5c2 ≠ 3, Pr6c2 ≠ ne
N-single: Nr5c2 = 2
P-single: Pr6c2 = ew
whip[1]: Pr6c2{ew .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Br6c1{n .} ==> Pr6c1 ≠ o
P-single: Pr6c1 = ne
whip[1]: Br5c1{swn .} ==> Pr5c1 ≠ ne
P-single: Pr5c1 = se
whip[1]: Pr5c1{se .} ==> Br4c1 ≠ sw, Br4c1 ≠ swn
B-single: Br4c1 = ns
whip[1]: Br4c1{ns .} ==> Nr4c1 ≠ 3, Nr4c1 ≠ 1, Pr4c2 ≠ ne, Pr4c1 ≠ se, Pr4c1 ≠ ns, Hr4c1 ≠ 0
H-single: Hr4c1 = 1
N-single: Nr4c1 = 2
w[1]-3-in-r4c2-hit-by-horiz-line-at-nw ==> Vr3c2 = 0
w[1]-3-in-r2c2-symmetric-sw-corner ==> Vr2c2 = 1
w[1]-2-in-r3c1-open-ne-corner ==> Vr3c1 = 1
w[1]-3-in-r1c1-hit-by-verti-line-at-se ==> Hr2c2 = 0
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw
P-single: Pr2c3 = ns
P-single: Pr3c1 = ns
P-single: Pr3c2 = ne
P-single: Pr4c1 = ne
P-single: Pr4c2 = ew
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
vertical-line-r3{c0 c1} ==> Ir3c1 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
w[1]-3-in-r1c1-hit-by-verti-line-at-sw ==> Vr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne
P-single: Pr2c1 = ns

LOOP[34]: Hr1c3-Hr1c4-Vr1c5-Hr2c5-Vr2c6-Hr3c5-Hr3c4-Vr3c4-Vr4c4-Hr5c4-Vr4c5-Hr4c5-Vr4c6-Vr5c6-Hr6c5-Hr6c4-Hr6c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Hr5c2-Vr4c3-Hr4c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Vr2c2-Hr3c2-Vr2c3- ==> Vr1c3 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXXO
XOXXX
XXXOO
OOXOX
XXXXX

.———.   .———.———.   .
| 3 |   |     2 |
.   .   .   .   .———.
| 2 | 3 | 1   1     |
.   .———.   .———.———.
| 2       1 |
.———.———.   .   .———.
      3 |   | 3 |   |
.———.———.   .———.   .
| 3       1   2   2 |
.———.———.———.———.———.

init-time = 0.17s, solve-time = 1.78s, total-time = 1.95s
nb-facts=<Fact-46048>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
