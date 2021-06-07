Mellon rating = 2


(solve 
10 10 
. 2 . 2 0 1 2 . 1 . 
2 2 . 3 . . 3 . 2 1 
. . . 3 . . 1 . . . 
2 0 1 2 . . 2 0 1 2 
2 . . . 2 0 . . . 2
2 . . . 2 1 . . . 2
2 0 1 2 . . 2 0 1 2 
. . . 2 . . 2 . . . 
1 2 . 2 . . 2 . 2 2
. 1 . 2 0 1 2 . 2 . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . 2 0 1 2 . 1 .
2 2 . 3 . . 3 . 2 1
. . . 3 . . 1 . . .
2 0 1 2 . . 2 0 1 2
2 . . . 2 0 . . . 2
2 . . . 2 1 . . . 2
2 0 1 2 . . 2 0 1 2
. . . 2 . . 2 . . .
1 2 . 2 . . 2 . 2 2
. 1 . 2 0 1 2 . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.605865001678467
start solution 0.618280172348022
entering BRT
w[0]-0-in-r10c5 ==> Hr11c5 = 0, Hr10c5 = 0, Vr10c6 = 0, Vr10c5 = 0
w[0]-0-in-r7c8 ==> Hr8c8 = 0, Hr7c8 = 0, Vr7c9 = 0, Vr7c8 = 0
w[0]-0-in-r7c2 ==> Hr8c2 = 0, Hr7c2 = 0, Vr7c3 = 0, Vr7c2 = 0
w[0]-0-in-r5c6 ==> Hr6c6 = 0, Hr5c6 = 0, Vr5c7 = 0, Vr5c6 = 0
w[0]-0-in-r4c8 ==> Hr5c8 = 0, Hr4c8 = 0, Vr4c9 = 0, Vr4c8 = 0
w[0]-0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
w[0]-0-in-r1c5 ==> Hr2c5 = 0, Hr1c5 = 0, Vr1c6 = 0, Vr1c5 = 0
w[1]-diagonal-3-0-in-{r2c4...r1c5} ==> Vr2c5 = 1, Hr2c4 = 1
w[1]-3-in-r3c4-hit-by-verti-line-at-ne ==> Vr3c4 = 1, Hr4c4 = 1, Hr3c5 = 0
w[1]-3-in-r2c4-hit-by-verti-line-at-sw ==> Hr3c3 = 0
w[1]-3-in-r3c4-closed-sw-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
w[3]-diagonal-1-1-in-ne-corner ==> Vr1c10 = 0, Hr2c10 = 0
w[3]-diagonal-1-1-in-sw-corner ==> Vr10c2 = 0, Hr10c1 = 0
adjacent-3s-in-c4{r2 r3} ==> Hr3c4 = 1
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw
w[1]-3-in-r3c4-closed-nw-corner ==> Pr4c5 ≠ se, Pr4c5 ≠ nw
w[1]-1-in-r6c6-asymmetric-nw-corner ==> Pr7c7 ≠ sw, Pr7c7 ≠ ew, Pr7c7 ≠ ns, Pr7c7 ≠ ne
P-single: Pr7c7 = se
entering level Loop with <Fact-92862>
entering level Col with <Fact-92942>
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
no-vertical-line-r10{c4 c5} ==> Ir10c4 = out
no-vertical-line-r10{c5 c6} ==> Ir10c6 = out
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
no-vertical-line-r4{c2 c3} ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
no-vertical-line-r1{c5 c6} ==> Ir1c6 = out
same-colour-in-{r0 r1}c6 ==> Hr1c6 = 0
w[1]-diagonal-3-1-in-{r2c7...r1c6}-open-end ==> Vr2c8 = 1, Hr3c7 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r3 r2}c7 ==> Vr3c7 = 0, Hr4c7 = 0
w[1]-2-in-r4c7-open-ne-corner ==> Hr5c7 = 1, Vr4c7 = 1
w[1]-3-in-r2c7-closed-se-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ nw, Pr2c7 ≠ o
w[1]-1-in-r1c6-asymmetric-se-corner ==> Pr1c6 ≠ sw, Pr1c6 ≠ ew
same-colour-in-r3{c2 c3} ==> Vr3c3 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
w[1]-2-in-r1c4-open-ne-corner ==> Vr1c4 = 1, Hr2c3 = 0
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
same-colour-in-{r10 r11}c6 ==> Hr11c6 = 0
same-colour-in-{r10 r11}c4 ==> Hr11c4 = 0
w[1]-2-in-r10c4-open-se-corner ==> Hr10c4 = 1, Vr10c4 = 1, Hr10c3 = 0, Vr9c4 = 0
vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-horizontal-line-{r9 r10}c3 ==> Ir9c3 = in
no-vertical-line-r9{c3 c4} ==> Ir9c4 = in
different-colours-in-r9{c4 c5} ==> Hr9c5 = 1
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
Starting_init_links_with_<Fact-93184>
974 candidates, 7335 csp-links and 31193 links. Density = 6.58%
starting non trivial part of solution
Entering_level_W1_with_<Fact-170245>
whip[1]: Hr11c3{1 .} ==> Br10c3 ≠ wne, Br11c3 ≠ o, Br10c3 ≠ o, Pr11c3 ≠ o, Pr11c3 ≠ nw, Br10c3 ≠ n, Br10c3 ≠ e, Br10c3 ≠ w, Br10c3 ≠ ne, Br10c3 ≠ nw, Br10c3 ≠ ew
B-single: Br11c3 = n
w[1]-1-in-r10c2-asymmetric-se-corner ==> Pr10c2 ≠ sw, Pr10c2 ≠ ew, Pr10c2 ≠ ns, Pr10c2 ≠ ne
w[1]-1-in-r9c1-symmetric-se-corner ==> Pr9c1 ≠ se, Pr9c1 ≠ o
whip[1]: Pr9c1{ns .} ==> Vr8c1 ≠ 0, Br8c1 ≠ s, Br8c1 ≠ ne, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ nes, Br9c1 ≠ s, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e, Br9c1 ≠ e
V-single: Vr8c1 = 1
vertical-line-r8{c0 c1} ==> Ir8c1 = in
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o, Pr8c1 ≠ ne
B-single: Br8c0 = e
whip[1]: Pr7c2{ew .} ==> Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br7c1 ≠ sw, Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ne, Br7c1 ≠ ne
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 0
whip[1]: Br9c1{w .} ==> Vr9c2 ≠ 1, Pr10c1 ≠ ne, Pr9c2 ≠ ns, Pr10c2 ≠ nw, Pr10c1 ≠ se, Pr9c2 ≠ se, Pr9c2 ≠ sw
V-single: Vr9c2 = 0
w[1]-diagonal-1-1-in-{r9c1...r10c2}-with-no-se-inner-sides ==> Hr10c2 = 0
w[1]-2-in-r9c2-open-sw-corner ==> Hr9c2 = 1, Vr9c3 = 1, Hr9c3 = 0, Vr8c3 = 0
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
no-vertical-line-r7{c1 c2} ==> Ir7c1 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
horizontal-line-{r8 r9}c2 ==> Ir9c2 = out
no-vertical-line-r9{c1 c2} ==> Ir9c1 = out
no-horizontal-line-{r9 r10}c1 ==> Ir10c1 = out
no-vertical-line-r10{c1 c2} ==> Ir10c2 = out
same-colour-in-{r10 r11}c2 ==> Hr11c2 = 0
different-colours-in-r10{c2 c3} ==> Hr10c3 = 1
same-colour-in-{r10 r11}c1 ==> Hr11c1 = 0
same-colour-in-r10{c0 c1} ==> Vr10c1 = 0
same-colour-in-r9{c0 c1} ==> Vr9c1 = 0
different-colours-in-{r8 r9}c1 ==> Hr9c1 = 1
same-colour-in-{r5 r6}c2 ==> Hr6c2 = 0
same-colour-in-{r7 r8}c3 ==> Hr8c3 = 0
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
w[1]-2-in-r7c1-open-se-corner ==> Hr7c1 = 1, Vr7c1 = 1, Vr6c1 = 0
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
same-colour-in-r8{c1 c2} ==> Vr8c2 = 0
whip[1]: Vr9c2{0 .} ==> Br9c2 ≠ nw, Br9c2 ≠ ew, Br9c2 ≠ sw
whip[1]: Hr10c2{0 .} ==> Pr10c2 ≠ se, Pr10c3 ≠ ew, Pr10c3 ≠ sw, Br9c2 ≠ ns, Br9c2 ≠ se, Br10c2 ≠ n
P-single: Pr9c3 = sw
P-single: Pr10c2 = o
B-single: Br9c2 = ne
whip[1]: Pr9c3{sw .} ==> Br9c3 ≠ ns, Br9c3 ≠ ne, Br9c3 ≠ s, Br9c3 ≠ e, Br9c3 ≠ n, Br9c3 ≠ o, Br8c3 ≠ ns, Br8c3 ≠ w, Br8c3 ≠ s, Br8c2 ≠ ne, Br8c2 ≠ w, Br8c2 ≠ e, Br8c2 ≠ n, Br8c2 ≠ o, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn, Br8c3 ≠ wne, Br8c3 ≠ nes, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c3 ≠ nes
whip[1]: Br9c3{esw .} ==> Pr9c4 ≠ nw, Pr9c4 ≠ ew, Pr9c4 ≠ sw, Nr9c3 ≠ 0
whip[1]: Pr9c4{ns .} ==> Br8c4 ≠ ns, Br8c4 ≠ se, Br9c4 ≠ nw
whip[1]: Br8c4{sw .} ==> Pr8c4 ≠ o, Pr8c4 ≠ nw, Pr9c5 ≠ nw
whip[1]: Pr9c5{sw .} ==> Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ swn, Br9c4 ≠ sw, Br9c5 ≠ se, Br9c5 ≠ o, Br9c5 ≠ e, Br9c5 ≠ s
whip[1]: Br9c5{nes .} ==> Nr9c5 ≠ 0
whip[1]: Br8c3{ne .} ==> Pr8c3 ≠ ns, Pr8c3 ≠ se, Nr8c3 ≠ 3, Pr8c3 ≠ sw
whip[1]: Br8c2{swn .} ==> Nr8c2 ≠ 0
whip[1]: Pr10c2{o .} ==> Br10c1 ≠ n, Br10c1 ≠ e, Br10c1 ≠ ne, Br10c1 ≠ esw, Br10c1 ≠ swn, Br10c2 ≠ w
whip[1]: Br10c2{s .} ==> Pr11c2 ≠ ne, Pr11c2 ≠ nw
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 1, Nr10c1 ≠ 3
whip[1]: Pr10c3{ns .} ==> Br10c3 ≠ s, Br10c3 ≠ se, Br10c3 ≠ swn
whip[1]: Br10c3{nes .} ==> Nr10c3 ≠ 0, Nr10c3 ≠ 1
whip[1]: Hr11c2{0 .} ==> Br11c2 ≠ n, Pr11c2 ≠ ew, Pr11c3 ≠ ew, Br10c2 ≠ s
P-single: Pr11c3 = ne
P-single: Pr11c2 = o
B-single: Br10c2 = e
B-single: Br11c2 = o
w[1]-1-in-r10c2-symmetric-sw-corner ==> Pr10c3 ≠ ne
P-single: Pr10c3 = ns
whip[1]: Pr11c3{ne .} ==> Br10c3 ≠ ns, Br10c3 ≠ nes
whip[1]: Br10c3{esw .} ==> Pr10c4 ≠ ew, Pr10c4 ≠ sw
whip[1]: Pr9c5{ew .} ==> Br8c5 ≠ o, Br8c5 ≠ n, Br8c5 ≠ e, Br8c5 ≠ ne, Br9c4 ≠ ne
whip[1]: Br8c5{nes .} ==> Nr8c5 ≠ 0
whip[1]: Pr10c4{se .} ==> Br9c3 ≠ sw, Br9c3 ≠ esw, Br10c3 ≠ sw, Br10c4 ≠ ne, Br10c4 ≠ ns, Br10c4 ≠ se
B-single: Br10c3 = esw
whip[1]: Br10c3{esw .} ==> Nr10c3 ≠ 2, Pr11c4 ≠ ew
N-single: Nr10c3 = 3
P-single: Pr11c4 = nw
whip[1]: Pr11c4{nw .} ==> Br11c4 ≠ n, Br10c4 ≠ sw
B-single: Br11c4 = o
whip[1]: Br11c4{o .} ==> Pr11c5 ≠ ew
whip[1]: Br9c3{ew .} ==> Nr9c3 ≠ 3
whip[1]: Pr11c2{o .} ==> Br11c1 ≠ n, Br10c1 ≠ sw
B-single: Br10c1 = o
B-single: Br11c1 = o
whip[1]: Br10c1{o .} ==> Pr11c1 ≠ ne, Pr10c1 ≠ ns, Nr10c1 ≠ 2
N-single: Nr10c1 = 0
P-single: Pr10c1 = o
P-single: Pr11c1 = o
w[1]-1-in-r9c1-symmetric-sw-corner ==> Pr9c2 ≠ ne
P-single: Pr9c2 = ew
whip[1]: Pr10c1{o .} ==> Br9c1 ≠ w
B-single: Br9c1 = n
whip[1]: Br9c1{n .} ==> Pr9c1 ≠ ns
P-single: Pr9c1 = ne
whip[1]: Pr9c1{ne .} ==> Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ ew, Br8c1 ≠ wne
whip[1]: Br8c1{swn .} ==> Pr8c2 ≠ sw, Nr8c1 ≠ 0, Nr8c1 ≠ 1
whip[1]: Pr8c2{ew .} ==> Br7c1 ≠ se
whip[1]: Pr9c2{ew .} ==> Br8c1 ≠ esw, Br8c2 ≠ sw, Br8c2 ≠ swn
whip[1]: Br8c2{ns .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ se, Nr8c2 ≠ 3
whip[1]: Vr10c1{0 .} ==> Br10c0 ≠ e
B-single: Br10c0 = o
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Hr6c2{0 .} ==> Pr6c2 ≠ se, Pr6c2 ≠ ew, Pr6c3 ≠ nw, Pr6c3 ≠ ew, Pr6c3 ≠ sw, Br5c2 ≠ s, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ nes, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ wne, Br6c2 ≠ nes
whip[1]: Br6c2{ew .} ==> Nr6c2 ≠ 3
whip[1]: Pr6c2{nw .} ==> Vr5c2 ≠ 0, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ sw, Br5c2 ≠ ne, Br6c1 ≠ ne, Br6c1 ≠ sw, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e
V-single: Vr5c2 = 1
vertical-line-r5{c1 c2} ==> Ir5c1 = out
same-colour-in-{r5 r6}c1 ==> Hr6c1 = 0
P-single: Pr6c2 = ns
same-colour-in-r5{c0 c1} ==> Vr5c1 = 0
w[1]-2-in-r5c1-open-sw-corner ==> Hr5c1 = 1
whip[1]: Vr5c2{1 .} ==> Pr5c2 ≠ ew
whip[1]: Pr5c2{sw .} ==> Br4c1 ≠ se
whip[1]: Hr6c1{0 .} ==> Br5c1 ≠ se, Br6c1 ≠ ns, Br6c1 ≠ nw
whip[1]: Br6c1{ew .} ==> Pr7c2 ≠ ew
whip[1]: Pr7c2{nw .} ==> Hr7c2 ≠ 1, Br6c2 ≠ se, Br6c2 ≠ s
whip[1]: Br6c2{ew .} ==> Pr7c3 ≠ nw, Pr7c3 ≠ ew, Pr7c3 ≠ sw
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e, Pr5c1 ≠ ns, Pr6c1 ≠ ns, Br5c1 ≠ ew
P-single: Pr5c2 = sw
P-single: Pr7c2 = nw
P-single: Pr6c1 = o
P-single: Pr5c1 = ne
B-single: Br5c1 = ne
B-single: Br5c0 = o
whip[1]: Pr5c2{sw .} ==> Br4c1 ≠ ne, Vr4c2 ≠ 1, Hr5c2 ≠ 1, Br4c1 ≠ nw, Br4c1 ≠ ew, Br5c2 ≠ nw, Br5c2 ≠ wne
whip[1]: Br5c2{ew .} ==> Pr5c3 ≠ nw, Pr5c3 ≠ ew, Pr5c3 ≠ sw, Nr5c2 ≠ 0, Nr5c2 ≠ 3
whip[1]: Pr7c2{nw .} ==> Vr7c2 ≠ 1, Br6c1 ≠ ew, Br7c1 ≠ ew
B-single: Br6c1 = se
whip[1]: Br6c1{se .} ==> Pr7c1 ≠ ns
P-single: Pr8c2 = o
P-single: Pr7c1 = se
whip[1]: Pr8c2{o .} ==> Hr8c2 ≠ 1, Br7c1 ≠ ns, Br8c1 ≠ swn, Br8c2 ≠ ns
B-single: Br8c2 = s
B-single: Br8c1 = sw
B-single: Br7c1 = nw
whip[1]: Br8c2{s .} ==> Nr8c2 ≠ 2, Pr8c3 ≠ nw, Pr8c3 ≠ ew
N-single: Nr8c2 = 1
w[1]-1-in-r7c3-symmetric-sw-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ sw, Br6c4 ≠ esw, Br6c4 ≠ swn, Br6c4 ≠ o, Br6c4 ≠ n, Br6c4 ≠ e, Br6c4 ≠ ne, Br7c3 ≠ s, Br7c3 ≠ w
whip[1]: Br7c3{e .} ==> Vr7c3 ≠ 1, Pr8c3 ≠ ne, Pr7c3 ≠ ns, Pr7c3 ≠ se, Pr8c4 ≠ ew, Pr8c4 ≠ sw
P-single: Pr8c3 = o
whip[1]: Pr8c3{o .} ==> Br8c3 ≠ n, Br8c3 ≠ ne
whip[1]: Br8c3{e .} ==> Nr8c3 ≠ 2
whip[1]: Pr8c4{se .} ==> Br7c4 ≠ ne
whip[1]: Br7c4{sw .} ==> Pr7c5 ≠ sw
whip[1]: Pr7c3{ne .} ==> Br6c3 ≠ s, Br6c3 ≠ w, Br6c3 ≠ ns, Br6c3 ≠ nw, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ wne, Br6c3 ≠ nes
whip[1]: Br6c4{nes .} ==> Nr6c4 ≠ 0
whip[1]: Br8c1{sw .} ==> Nr8c1 ≠ 3, Pr8c1 ≠ se
N-single: Nr8c1 = 2
P-single: Pr8c1 = ns
whip[1]: Pr5c1{ne .} ==> Br4c1 ≠ ns
B-single: Br4c1 = sw
whip[1]: Br4c1{sw .} ==> Pr4c1 ≠ ne, Hr4c1 ≠ 1
H-single: Hr4c1 = 0
P-single: Pr4c1 = ns
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
whip[1]: Hr4c1{0 .} ==> Br3c1 ≠ s, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ ne
whip[1]: Br3c1{wne .} ==> Pr3c1 ≠ o, Pr3c1 ≠ ne, Nr3c1 ≠ 0
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ sw, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c2 ≠ ne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s, Br1c3 ≠ w
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ sw, Br2c1 ≠ ne
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ se, Pr3c2 ≠ sw, Pr4c2 ≠ ne, Br3c1 ≠ ew, Br3c1 ≠ wne, Br3c2 ≠ w, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne
P-single: Pr4c2 = o
whip[1]: Pr4c2{o .} ==> Hr4c2 ≠ 1, Br3c2 ≠ s, Br3c2 ≠ ns, Br3c2 ≠ se, Br3c2 ≠ nes
whip[1]: Br3c2{ne .} ==> Pr4c3 ≠ nw, Nr3c2 ≠ 3, Pr4c3 ≠ ew, Pr4c3 ≠ sw
whip[1]: Br3c1{nw .} ==> Nr3c1 ≠ 3
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Vr9c5{1 .} ==> Br9c5 ≠ nes, Pr9c5 ≠ ew, Pr10c5 ≠ ew, Br9c4 ≠ ns, Br9c5 ≠ n, Br9c5 ≠ ne, Br9c5 ≠ ns
whip[1]: Br9c4{ew .} ==> Hr9c4 ≠ 1, Pr9c4 ≠ ne
H-single: Hr9c4 = 0
no-horizontal-line-{r8 r9}c4 ==> Ir8c4 = in
same-colour-in-r8{c3 c4} ==> Vr8c4 = 0
w[1]-2-in-r8c4-open-sw-corner ==> Hr8c4 = 1, Vr8c5 = 1, Hr8c5 = 0, Vr7c5 = 0
P-single: Pr9c5 = ns
w[1]-1-in-r7c3-asymmetric-se-corner ==> Pr7c3 ≠ ne
P-single: Pr7c3 = o
vertical-line-r8{c4 c5} ==> Ir8c5 = out
no-horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
no-vertical-line-r7{c4 c5} ==> Ir7c4 = out
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
same-colour-in-{r8 r9}c5 ==> Hr9c5 = 0
whip[1]: Hr9c4{0 .} ==> Br8c4 ≠ sw
whip[1]: Vr8c4{0 .} ==> Pr8c4 ≠ ns, Pr9c4 ≠ ns, Br8c3 ≠ e, Br8c4 ≠ nw, Br8c4 ≠ ew
P-single: Pr8c5 = sw
P-single: Pr10c5 = nw
P-single: Pr9c4 = o
P-single: Pr8c4 = ne
B-single: Br8c4 = ne
B-single: Br8c3 = o
whip[1]: Pr8c5{sw .} ==> Br8c5 ≠ ns, Br8c5 ≠ s, Br7c5 ≠ ns, Br7c5 ≠ w, Br7c5 ≠ s, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ nes, Br8c5 ≠ nw, Br8c5 ≠ se, Br8c5 ≠ wne, Br8c5 ≠ nes
whip[1]: Br8c5{ew .} ==> Pr8c6 ≠ nw, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Pr9c6 ≠ nw, Pr9c6 ≠ ew, Pr9c6 ≠ sw, Nr8c5 ≠ 3
whip[1]: Pr9c6{se .} ==> Br9c5 ≠ nw, Br9c5 ≠ swn, Br9c5 ≠ wne
whip[1]: Br7c5{ne .} ==> Nr7c5 ≠ 3
whip[1]: Pr10c5{nw .} ==> Vr10c5 ≠ 1, Hr10c5 ≠ 1, Br9c4 ≠ ew, Br9c5 ≠ sw, Br9c5 ≠ esw, Br10c4 ≠ ew
B-single: Br10c4 = nw
B-single: Br9c4 = se
whip[1]: Br10c4{nw .} ==> Pr10c4 ≠ ns, Pr11c5 ≠ ne
P-single: Pr11c5 = o
P-single: Pr10c4 = se
whip[1]: Pr11c5{o .} ==> Hr11c5 ≠ 1, Br11c5 ≠ n
B-single: Br11c5 = o
whip[1]: Br11c5{o .} ==> Pr11c6 ≠ nw, Pr11c6 ≠ ew
w[1]-1-in-r10c6-symmetric-sw-corner ==> Pr10c7 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ o
whip[1]: Pr9c8{ew .} ==> Br8c8 ≠ sw, Br8c8 ≠ esw, Br8c8 ≠ swn, Br9c7 ≠ sw, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ e, Br8c8 ≠ ne, Br9c7 ≠ ne
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Pr10c7{ew .} ==> Br10c6 ≠ s, Br10c6 ≠ w
whip[1]: Br10c6{e .} ==> Vr10c6 ≠ 1, Pr11c6 ≠ ne, Pr11c7 ≠ nw, Pr11c7 ≠ ew, Pr10c6 ≠ ns, Pr10c6 ≠ se, Pr10c6 ≠ sw
P-single: Pr11c6 = o
whip[1]: Pr11c6{o .} ==> Br11c6 ≠ n
B-single: Br11c6 = o
whip[1]: Pr11c8{ew .} ==> Br11c8 ≠ o, Hr11c8 ≠ 0, Br10c7 ≠ nw, Br10c7 ≠ se, Br10c8 ≠ nw, Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c8 ≠ o, Br10c8 ≠ n, Br10c8 ≠ e, Br10c8 ≠ w, Br10c8 ≠ ne
H-single: Hr11c8 = 1
B-single: Br11c8 = n
horizontal-line-{r10 r11}c8 ==> Ir10c8 = in
whip[1]: Hr11c8{1 .} ==> Pr11c9 ≠ o, Pr11c9 ≠ ne
whip[1]: Pr9c11{nw .} ==> Vr8c11 ≠ 0, Br8c10 ≠ w, Br8c10 ≠ ns, Br8c10 ≠ nw, Br8c10 ≠ sw, Br8c10 ≠ swn, Br9c10 ≠ ne, Br9c10 ≠ sw, Br8c10 ≠ o, Br8c10 ≠ n, Br8c10 ≠ s
V-single: Vr8c11 = 1
vertical-line-r8{c10 c11} ==> Ir8c10 = in
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o, Pr8c11 ≠ o, Pr8c11 ≠ nw
B-single: Br8c11 = w
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ esw, Br6c9 ≠ nes, Br7c10 ≠ nw, Br7c10 ≠ se, Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ w
whip[1]: Br6c9{wne .} ==> Nr6c9 ≠ 0
whip[1]: Br8c10{nes .} ==> Nr8c10 ≠ 0
whip[1]: Pr10c10{ew .} ==> Br10c9 ≠ sw, Br10c9 ≠ ne
whip[1]: Br10c8{nes .} ==> Nr10c8 ≠ 0
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ esw, Br9c6 ≠ nes, Br9c6 ≠ o, Br9c6 ≠ n, Br9c6 ≠ w
whip[1]: Br9c6{wne .} ==> Nr9c6 ≠ 0
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ se, Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ ew, Br9c8 ≠ wne, Br9c8 ≠ nes, Br10c7 ≠ ew, Br10c8 ≠ swn, Br9c8 ≠ s, Br9c8 ≠ w, Br9c8 ≠ ns, Br10c7 ≠ ns
whip[1]: Br9c7{ew .} ==> Pr9c7 ≠ o, Pr9c7 ≠ nw
whip[1]: Pr9c7{sw .} ==> Br8c6 ≠ se, Br8c6 ≠ esw, Br8c6 ≠ nes
whip[1]: Pr10c4{se .} ==> Br9c3 ≠ ew
B-single: Br9c3 = w
whip[1]: Br9c3{w .} ==> Nr9c3 ≠ 2
N-single: Nr9c3 = 1
whip[1]: Br9c5{ew .} ==> Pr10c6 ≠ nw, Pr10c6 ≠ ew, Nr9c5 ≠ 3
whip[1]: Pr10c6{ne .} ==> Br9c6 ≠ s, Br9c6 ≠ ns, Br9c6 ≠ ew, Br9c6 ≠ wne
whip[1]: Pr8c4{ne .} ==> Br7c3 ≠ n, Br7c4 ≠ ns
B-single: Br7c4 = sw
B-single: Br7c3 = e
whip[1]: Br7c4{sw .} ==> Pr7c4 ≠ ew, Hr7c4 ≠ 1
H-single: Hr7c4 = 0
P-single: Pr7c4 = ns
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
whip[1]: Hr7c4{0 .} ==> Br6c4 ≠ s, Br6c4 ≠ ns, Br6c4 ≠ se, Br6c4 ≠ nes
whip[1]: Br6c4{wne .} ==> Vr6c4 ≠ 0, Pr6c4 ≠ o, Pr6c4 ≠ ne, Pr6c4 ≠ nw, Pr6c4 ≠ ew
V-single: Vr6c4 = 1
vertical-line-r6{c3 c4} ==> Ir6c3 = in
same-colour-in-{r6 r7}c3 ==> Hr7c3 = 0
same-colour-in-r6{c2 c3} ==> Vr6c3 = 0
whip[1]: Vr6c4{1 .} ==> Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ sw, Br6c3 ≠ swn
whip[1]: Br6c3{esw .} ==> Pr6c3 ≠ se, Nr6c3 ≠ 0
whip[1]: Pr6c3{ns .} ==> Br5c3 ≠ s, Br5c3 ≠ ns, Br5c3 ≠ se, Br5c3 ≠ nes
whip[1]: Hr7c3{0 .} ==> Br6c3 ≠ esw
whip[1]: Br6c3{ne .} ==> Pr6c3 ≠ ns, Nr6c3 ≠ 3
whip[1]: Pr6c3{ne .} ==> Br5c3 ≠ w, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ wne, Br6c2 ≠ ew
B-single: Br6c2 = w
whip[1]: Br6c2{w .} ==> Nr6c2 ≠ 2
N-single: Nr6c2 = 1
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ esw, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn
whip[1]: Br8c3{o .} ==> Nr8c3 ≠ 1
N-single: Nr8c3 = 0
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ se, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ swn, Br7c6 ≠ wne, Br7c6 ≠ o, Br7c6 ≠ e, Br7c6 ≠ s
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ nes, Br6c4 ≠ wne, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ w, Br5c5 ≠ ne
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 0
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 3
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br6c5 ≠ ew, Br6c5 ≠ ns, Br6c6 ≠ e, Br6c6 ≠ s
whip[1]: Br6c6{w .} ==> Hr7c6 ≠ 1, Vr6c7 ≠ 1, Pr6c7 ≠ ns, Pr7c6 ≠ ne, Pr6c7 ≠ se, Pr6c7 ≠ sw, Pr7c6 ≠ ew
V-single: Vr6c7 = 0
H-single: Hr7c6 = 0
whip[1]: Vr6c7{0 .} ==> Br6c7 ≠ w, Br6c7 ≠ nw, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ wne
whip[1]: Hr7c6{0 .} ==> Br7c6 ≠ n, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ nes
whip[1]: Br7c6{esw .} ==> Vr7c6 ≠ 0, Pr8c6 ≠ o, Pr8c6 ≠ se
V-single: Vr7c6 = 1
vertical-line-r7{c5 c6} ==> Ir7c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = in
no-vertical-line-r6{c6 c7} ==> Ir6c7 = in
no-horizontal-line-{r5 r6}c6 ==> Ir5c6 = in
no-vertical-line-r5{c5 c6} ==> Ir5c5 = in
no-vertical-line-r5{c6 c7} ==> Ir5c7 = in
horizontal-line-{r4 r5}c7 ==> Ir4c7 = out
no-vertical-line-r4{c7 c8} ==> Ir4c8 = out
no-vertical-line-r4{c8 c9} ==> Ir4c9 = out
no-horizontal-line-{r3 r4}c8 ==> Ir3c8 = out
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
no-vertical-line-r3{c6 c7} ==> Ir3c6 = out
horizontal-line-{r2 r3}c7 ==> Ir2c7 = in
vertical-line-r2{c7 c8} ==> Ir2c8 = out
no-horizontal-line-{r4 r5}c8 ==> Ir5c8 = out
vertical-line-r4{c6 c7} ==> Ir4c6 = in
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
same-colour-in-r3{c5 c6} ==> Vr3c6 = 0
3-in-r2c7-no-U-turn-from-west ==> Vr2c6 = O, Hr3c6 = O, Hr2c6 = O
w[1]-adjacent-1-3-on-pseudo-edge-in-{r3 r2}c7 ==> Vr2c7 = 1
w[1]-3-in-r2c7-closed-sw-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ne, Pr2c8 ≠ o
vertical-line-r2{c6 c7} ==> Ir2c6 = out
same-colour-in-{r5 r6}c7 ==> Hr6c7 = 0
whip[1]: Vr7c6{1 .} ==> Br7c5 ≠ o, Br7c5 ≠ n
whip[1]: Br7c5{ne .} ==> Nr7c5 ≠ 0
whip[1]: Hr4c6{1 .} ==> Br4c6 ≠ o, Br3c6 ≠ o, Pr4c6 ≠ o, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Pr4c6 ≠ sw, Pr4c7 ≠ ne, Pr4c7 ≠ ns, Br3c6 ≠ n, Br3c6 ≠ e, Br3c6 ≠ w, Br3c6 ≠ ne, Br3c6 ≠ nw, Br3c6 ≠ ew, Br3c6 ≠ wne, Br4c6 ≠ e, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ se, Br3c6 ≠ esw, Br3c6 ≠ nes, Br4c7 ≠ nw, Br4c7 ≠ se, Br3c7 ≠ w
whip[1]: Br3c7{s .} ==> Pr3c7 ≠ ns, Pr3c7 ≠ se, Pr3c7 ≠ sw, Pr3c8 ≠ sw, Pr4c8 ≠ nw
whip[1]: Pr4c8{ew .} ==> Br4c7 ≠ ne
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ se, Br3c5 ≠ esw, Br3c5 ≠ nes, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c5 ≠ ne
whip[1]: Vr5c8{1 .} ==> Br5c8 ≠ o, Br5c7 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ew, Pr6c8 ≠ o, Pr6c8 ≠ se, Pr6c8 ≠ ew, Pr6c8 ≠ sw, Br5c7 ≠ n, Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ sw, Br5c7 ≠ swn, Br5c8 ≠ n, Br5c8 ≠ e, Br5c8 ≠ s, Br5c8 ≠ ne, Br5c8 ≠ ns, Br5c8 ≠ se, Br5c8 ≠ nes
whip[1]: Br5c8{wne .} ==> Nr5c8 ≠ 0
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Pr6c8{nw .} ==> Br6c7 ≠ ne, Br6c7 ≠ nes, Br6c8 ≠ nw, Br6c8 ≠ swn, Br6c8 ≠ wne
whip[1]: Br6c7{se .} ==> Nr6c7 ≠ 3
whip[1]: Pr5c8{sw .} ==> Hr5c8 ≠ 1, Br5c8 ≠ nw, Br5c8 ≠ swn, Br5c8 ≠ wne
whip[1]: Br5c8{esw .} ==> Pr5c9 ≠ nw, Pr5c9 ≠ ew, Pr5c9 ≠ sw
whip[1]: Vr3c6{0 .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ sw, Pr4c6 ≠ ne, Br3c5 ≠ e, Br3c5 ≠ ne, Br3c5 ≠ ew, Br3c5 ≠ wne, Br3c6 ≠ sw, Br3c6 ≠ swn
whip[1]: Br3c6{ns .} ==> Nr3c6 ≠ 3
whip[1]: Pr4c6{ew .} ==> Br4c5 ≠ sw, Br4c5 ≠ o, Br4c5 ≠ s, Br4c5 ≠ w
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 0
whip[1]: Vr2c6{0 .} ==> Pr2c6 ≠ ns, Pr2c6 ≠ se, Pr2c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ nw, Br2c5 ≠ e, Br2c5 ≠ ne, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ esw, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c6 ≠ w, Br2c6 ≠ nw, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Hr3c6{0 .} ==> Pr3c6 ≠ ew, Pr3c7 ≠ nw, Pr3c7 ≠ ew, Br2c6 ≠ s, Br2c6 ≠ ns, Br2c6 ≠ se, Br2c6 ≠ nes, Br3c6 ≠ ns
P-single: Pr3c6 = o
B-single: Br3c6 = s
whip[1]: Pr3c6{o .} ==> Br2c5 ≠ s, Br2c5 ≠ ns, Br2c5 ≠ sw, Br2c5 ≠ swn, Br3c5 ≠ n, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ swn
whip[1]: Br3c5{sw .} ==> Pr3c5 ≠ se, Pr3c5 ≠ ew, Nr3c5 ≠ 3
whip[1]: Pr3c5{nw .} ==> Br2c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ nes, Br2c5 ≠ o, Br2c5 ≠ n
whip[1]: Br2c5{nw .} ==> Pr2c5 ≠ ne, Pr2c5 ≠ ew, Nr2c5 ≠ 0, Nr2c5 ≠ 3
whip[1]: Pr2c5{sw .} ==> Hr2c5 ≠ 1, Br1c4 ≠ nw, Br1c4 ≠ se, Br2c5 ≠ nw
B-single: Br2c5 = w
whip[1]: Br2c5{w .} ==> Nr2c5 ≠ 2, Pr2c6 ≠ nw, Pr2c6 ≠ ew
N-single: Nr2c5 = 1
w[1]-1-in-r1c6-symmetric-sw-corner ==> Pr1c7 ≠ sw, Pr1c7 ≠ o
whip[1]: Pr1c7{ew .} ==> Hr1c7 ≠ 0, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c6 ≠ s, Br1c6 ≠ w
H-single: Hr1c7 = 1
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
same-colour-in-{r1 r2}c7 ==> Hr2c7 = 0
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1

LOOP[6]: Hr1c7-Vr1c7-Vr2c7-Hr3c7-Vr2c8- ==> Vr1c8 = 0
no-vertical-line-r1{c7 c8} ==> Ir1c8 = in
different-colours-in-{r1 r2}c8 ==> Hr2c8 = 1
different-colours-in-{r0 r1}c8 ==> Hr1c8 = 1

LOOP[8]: Hr1c8-Hr1c7-Vr1c7-Vr2c7-Hr3c7-Vr2c8-Hr2c8- ==> Vr1c9 = 0
no-vertical-line-r1{c8 c9} ==> Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
no-horizontal-line-{r1 r2}c10 ==> Ir2c10 = in
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
different-colours-in-r1{c10 c11} ==> Hr1c11 = 1
different-colours-in-{r0 r1}c10 ==> Hr1c10 = 1
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o, Pr1c8 ≠ se
P-single: Pr1c8 = ew
B-single: Br0c7 = s
whip[1]: Pr1c8{ew .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ e, Br1c8 ≠ o, Br1c7 ≠ ne, Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ ew, Br1c8 ≠ sw, Br1c8 ≠ esw, Br1c8 ≠ swn, Br1c8 ≠ wne
whip[1]: Br1c8{nes .} ==> Pr1c9 ≠ o, Pr1c9 ≠ se, Pr2c8 ≠ ns, Nr1c8 ≠ 0
w[1]-1-in-r1c9-asymmetric-nw-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ew, Pr2c10 ≠ ns, Pr2c10 ≠ ne
w[1]-1-in-r2c10-symmetric-nw-corner ==> Pr3c11 ≠ nw, Pr3c11 ≠ o
whip[1]: Pr3c11{sw .} ==> Vr3c11 ≠ 0, Br3c10 ≠ nw, Br3c10 ≠ sw, Br3c10 ≠ swn, Br2c10 ≠ n, Br2c10 ≠ w, Br3c10 ≠ o, Br3c10 ≠ n, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ns
V-single: Vr3c11 = 1
vertical-line-r3{c10 c11} ==> Ir3c10 = in
same-colour-in-{r2 r3}c10 ==> Hr3c10 = 0
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o, Pr4c11 ≠ o, Pr4c11 ≠ sw
B-single: Br3c11 = w
whip[1]: Pr5c10{ew .} ==> Br4c10 ≠ sw, Br5c9 ≠ sw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br4c10 ≠ ne, Br5c9 ≠ o, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ne
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Hr3c10{0 .} ==> Pr3c11 ≠ sw, Pr3c10 ≠ ne, Pr3c10 ≠ se, Pr3c10 ≠ ew, Br2c10 ≠ s, Br3c10 ≠ ne, Br3c10 ≠ wne, Br3c10 ≠ nes
P-single: Pr3c11 = ns
B-single: Br2c10 = e
whip[1]: Br2c10{e .} ==> Pr2c11 ≠ o, Vr2c10 ≠ 1, Pr2c11 ≠ nw, Pr2c11 ≠ sw, Pr2c10 ≠ se, Pr3c10 ≠ ns, Pr3c10 ≠ nw
V-single: Vr2c10 = 0
w[1]-diagonal-1-1-in-{r2c10...r1c9}-with-no-nw-inner-sides ==> Hr2c9 = 0
w[1]-2-in-r2c9-open-ne-corner ==> Hr3c9 = 1, Vr2c9 = 1, Vr3c9 = 0
P-single: Pr3c10 = sw
P-single: Pr2c11 = ns
no-vertical-line-r3{c8 c9} ==> Ir3c9 = out
horizontal-line-{r2 r3}c9 ==> Ir2c9 = in
same-colour-in-{r3 r4}c9 ==> Hr4c9 = 0
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1

LOOP[16]: Vr3c10-Hr3c9-Vr2c9-Hr2c8-Vr2c8-Hr3c7-Vr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11- ==> Hr4c10 = 0
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = in
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1

LOOP[18]: Vr4c10-Vr3c10-Hr3c9-Vr2c9-Hr2c8-Vr2c8-Hr3c7-Vr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11- ==> Hr5c10 = 0
P-single: Pr5c11 = ns
no-horizontal-line-{r4 r5}c10 ==> Ir5c10 = in
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
whip[1]: Vr2c10{0 .} ==> Br2c9 ≠ ne, Br2c9 ≠ se, Br2c9 ≠ ew
whip[1]: Hr2c9{0 .} ==> Pr2c9 ≠ ne, Pr2c9 ≠ ew, Pr2c10 ≠ nw, Br1c9 ≠ s, Br2c9 ≠ ns, Br2c9 ≠ nw
P-single: Pr3c9 = ne
P-single: Pr2c10 = o
B-single: Br2c9 = sw
whip[1]: Pr3c9{ne .} ==> Br3c9 ≠ o, Br3c8 ≠ n, Br2c8 ≠ n, Br2c8 ≠ o, Br2c8 ≠ s, Br2c8 ≠ w, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn, Br2c8 ≠ nes, Br3c8 ≠ e, Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ nw, Br3c8 ≠ se, Br3c8 ≠ ew, Br3c8 ≠ esw, Br3c8 ≠ swn, Br3c8 ≠ wne, Br3c8 ≠ nes, Br3c9 ≠ e, Br3c9 ≠ s, Br3c9 ≠ w, Br3c9 ≠ nw, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ ns, Pr4c9 ≠ nw, Nr3c9 ≠ 0
whip[1]: Br3c8{sw .} ==> Pr3c8 ≠ ne, Pr3c8 ≠ se, Pr3c8 ≠ ew, Nr3c8 ≠ 3
whip[1]: Pr3c8{nw .} ==> Br2c7 ≠ swn
whip[1]: Br2c7{nes .} ==> Pr2c8 ≠ ew, Pr3c7 ≠ o, Pr3c8 ≠ o
P-single: Pr1c7 = se
P-single: Pr3c7 = ne
P-single: Pr2c8 = se
w[1]-1-in-r3c7-asymmetric-nw-corner ==> Pr4c8 ≠ ew, Pr4c8 ≠ ns, Pr4c8 ≠ ne
w[1]-1-in-r3c7-asymmetric-ne-corner ==> Pr4c7 ≠ ew
P-single: Pr4c7 = sw
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ n, Br1c7 ≠ ns
B-single: Br1c7 = nw
B-single: Br1c6 = e
whip[1]: Br1c7{nw .} ==> Pr2c7 ≠ ew
P-single: Pr2c7 = ns
whip[1]: Pr2c7{ns .} ==> Br2c6 ≠ n, Br2c6 ≠ o, Br2c6 ≠ ne, Br2c7 ≠ wne, Br2c7 ≠ nes
B-single: Br2c7 = esw
B-single: Br2c6 = e
whip[1]: Br2c7{esw .} ==> Pr3c8 ≠ ns
P-single: Pr3c8 = nw
whip[1]: Pr3c8{nw .} ==> Br3c7 ≠ s, Br3c7 ≠ e, Br2c8 ≠ e, Br2c8 ≠ ne, Br3c8 ≠ w, Br3c8 ≠ sw
B-single: Br3c7 = n
whip[1]: Br3c8{s .} ==> Nr3c8 ≠ 2
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 0, Nr2c8 ≠ 1
whip[1]: Br2c6{e .} ==> Nr2c6 ≠ 2, Nr2c6 ≠ 0, Pr2c6 ≠ ne, Nr2c6 ≠ 3
N-single: Nr2c6 = 1
P-single: Pr2c6 = o
whip[1]: Pr2c6{o .} ==> Vr1c6 ≠ 1
whip[1]: Br1c6{e .} ==> Pr1c6 ≠ se
P-single: Pr1c6 = o
whip[1]: Pr1c6{o .} ==> Hr1c5 ≠ 1
whip[1]: Pr2c8{se .} ==> Br1c8 ≠ n, Br1c8 ≠ ne, Br2c8 ≠ ew
B-single: Br2c8 = wne
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 2, Pr2c9 ≠ ns
N-single: Nr2c8 = 3
P-single: Pr2c9 = sw
w[1]-1-in-r1c9-symmetric-sw-corner ==> Pr1c10 ≠ sw, Pr1c10 ≠ o
whip[1]: Pr2c9{sw .} ==> Br1c9 ≠ w, Br1c8 ≠ nes
B-single: Br1c8 = ns
whip[1]: Br1c8{ns .} ==> Nr1c8 ≠ 3, Nr1c8 ≠ 1, Pr1c9 ≠ sw
N-single: Nr1c8 = 2
P-single: Pr1c9 = ew
whip[1]: Pr1c9{ew .} ==> Br1c9 ≠ e
B-single: Br1c9 = n
whip[1]: Br1c9{n .} ==> Pr1c10 ≠ se
P-single: Pr1c10 = ew
whip[1]: Pr1c10{ew .} ==> Br1c10 ≠ w, Br1c10 ≠ s, Br1c10 ≠ o, Br1c10 ≠ sw, Br1c10 ≠ wne
whip[1]: Br1c10{nes .} ==> Pr1c11 ≠ o, Nr1c10 ≠ 0, Nr1c10 ≠ 1
P-single: Pr1c11 = sw
whip[1]: Pr4c7{sw .} ==> Br4c7 ≠ ns, Br4c6 ≠ ns, Br4c6 ≠ n, Br4c6 ≠ nw, Br4c6 ≠ swn
whip[1]: Br4c6{nes .} ==> Pr5c6 ≠ ne, Pr5c7 ≠ se, Pr5c7 ≠ ew, Nr4c6 ≠ 1
whip[1]: Pr5c7{nw .} ==> Br5c7 ≠ wne
whip[1]: Pr2c10{o .} ==> Br1c10 ≠ nes
B-single: Br1c10 = ne
whip[1]: Br1c10{ne .} ==> Nr1c10 ≠ 3
N-single: Nr1c10 = 2
whip[1]: Pr3c10{sw .} ==> Br3c10 ≠ e, Br3c9 ≠ ns, Br3c9 ≠ n, Br3c10 ≠ se
whip[1]: Br3c10{esw .} ==> Pr4c10 ≠ ew, Pr4c10 ≠ sw, Nr3c10 ≠ 0, Nr3c10 ≠ 1
whip[1]: Pr4c10{ns .} ==> Br3c9 ≠ nes, Br4c10 ≠ nw, Br4c10 ≠ se, Br4c9 ≠ n
B-single: Br3c9 = ne
whip[1]: Br3c9{ne .} ==> Nr3c9 ≠ 3, Nr3c9 ≠ 1, Pr4c9 ≠ se, Pr4c9 ≠ ew
N-single: Nr3c9 = 2
w[1]-adjacent-1-2-on-pseudo-edge-in-{r4 r3}c9-fwd-diag-2s-3 ==> Hr5c9 = 0
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = out
different-colours-in-r5{c9 c10} ==> Hr5c10 = 1

LOOP[20]: Vr5c10-Vr4c10-Vr3c10-Hr3c9-Vr2c9-Hr2c8-Vr2c8-Hr3c7-Vr2c7-Vr1c7-Hr1c7-Hr1c8-Hr1c9-Hr1c10-Vr1c11-Vr2c11-Vr3c11-Vr4c11-Vr5c11- ==> Hr6c10 = 0
P-single: Pr6c11 = ns
w[1]-1-in-r7c9-asymmetric-ne-corner ==> Pr8c9 ≠ ew, Pr8c9 ≠ se, Pr8c9 ≠ nw, Pr8c9 ≠ ns
w[1]-1-in-r4c9-asymmetric-se-corner ==> Pr4c9 ≠ sw
P-single: Pr4c9 = o
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
same-colour-in-r5{c8 c9} ==> Vr5c9 = 0
whip[1]: Hr5c9{0 .} ==> Pr5c9 ≠ ne, Pr5c9 ≠ se, Pr5c10 ≠ ew, Br4c9 ≠ s, Br5c9 ≠ n, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ swn
P-single: Pr5c10 = ns
whip[1]: Pr5c10{ns .} ==> Br4c9 ≠ w, Br4c10 ≠ ns, Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ nw, Br5c10 ≠ se
B-single: Br4c10 = ew
B-single: Br4c9 = e
whip[1]: Br4c10{ew .} ==> Pr4c10 ≠ ne, Pr4c11 ≠ nw
P-single: Pr4c11 = ns
P-single: Pr4c10 = ns
w[1]-1-in-r4c9-asymmetric-ne-corner ==> Pr5c9 ≠ ns
P-single: Pr5c9 = o
whip[1]: Pr4c11{ns .} ==> Br3c10 ≠ esw
B-single: Br3c10 = ew
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 3
N-single: Nr3c10 = 2
whip[1]: Pr5c9{o .} ==> Vr4c9 ≠ 1, Br5c8 ≠ ew, Br5c8 ≠ esw, Br5c9 ≠ ew, Br5c9 ≠ esw
whip[1]: Br5c9{se .} ==> Pr6c9 ≠ ne, Pr6c9 ≠ ns, Pr6c9 ≠ nw, Pr6c10 ≠ ew, Nr5c9 ≠ 3
whip[1]: Pr6c10{nw .} ==> Br5c10 ≠ sw, Br6c9 ≠ ne, Br6c9 ≠ sw, Br6c9 ≠ wne, Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c9 ≠ s
B-single: Br5c10 = ew
whip[1]: Br5c8{sw .} ==> Nr5c8 ≠ 3
whip[1]: Pr6c11{ns .} ==> Br6c10 ≠ sw
whip[1]: Br6c10{ew .} ==> Pr7c11 ≠ sw
whip[1]: Pr8c10{ew .} ==> Br7c10 ≠ sw, Br8c9 ≠ sw, Br8c9 ≠ wne, Br8c9 ≠ nes, Br7c10 ≠ ne, Br8c9 ≠ o, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ne
whip[1]: Br8c9{swn .} ==> Nr8c9 ≠ 0
whip[1]: Pr4c9{o .} ==> Hr4c8 ≠ 1, Br3c8 ≠ s
B-single: Br3c8 = o
whip[1]: Br3c8{o .} ==> Pr4c8 ≠ se, Nr3c8 ≠ 1
N-single: Nr3c8 = 0
P-single: Pr5c7 = ne
P-single: Pr4c8 = o
whip[1]: Pr5c7{ne .} ==> Vr5c7 ≠ 1, Hr5c6 ≠ 1, Br4c6 ≠ nes, Br4c7 ≠ ew, Br5c7 ≠ e, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw
B-single: Br4c7 = sw
whip[1]: Br4c7{sw .} ==> Pr5c8 ≠ ns, Vr4c8 ≠ 1
P-single: Pr5c8 = sw
whip[1]: Br5c7{nes .} ==> Pr6c7 ≠ ne, Pr6c7 ≠ nw, Nr5c7 ≠ 1
whip[1]: Br4c6{wne .} ==> Pr5c6 ≠ se, Pr5c6 ≠ ew
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ ns, Br4c5 ≠ swn
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Pr8c9{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c9 ≠ nw, Br8c9 ≠ swn, Br7c9 ≠ s, Br7c9 ≠ w, Br8c8 ≠ ns
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 2
whip[1]: Br7c9{e .} ==> Hr8c9 ≠ 1, Vr7c9 ≠ 1, Pr8c9 ≠ ne, Pr7c9 ≠ ns, Pr7c9 ≠ se, Pr7c9 ≠ sw, Pr8c10 ≠ nw, Pr8c10 ≠ ew
H-single: Hr8c9 = 0
whip[1]: Hr8c9{0 .} ==> Br8c9 ≠ n, Br8c9 ≠ ns
whip[1]: Br8c9{esw .} ==> Vr8c10 ≠ 0, Pr9c10 ≠ o, Pr9c10 ≠ se, Pr9c10 ≠ ew, Pr9c10 ≠ sw
V-single: Vr8c10 = 1
vertical-line-r8{c9 c10} ==> Ir8c9 = out
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = out
no-vertical-line-r7{c8 c9} ==> Ir7c8 = out
no-vertical-line-r7{c7 c8} ==> Ir7c7 = out
no-horizontal-line-{r6 r7}c8 ==> Ir6c8 = out
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = out
same-colour-in-r8{c8 c9} ==> Vr8c9 = 0
same-colour-in-{r5 r6}c8 ==> Hr6c8 = 0
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
different-colours-in-{r6 r7}c7 ==> Hr7c7 = 1
whip[1]: Vr8c10{1 .} ==> Br8c10 ≠ e, Br8c10 ≠ ne, Br8c10 ≠ se, Br8c10 ≠ nes
whip[1]: Br8c10{wne .} ==> Nr8c10 ≠ 1
whip[1]: Vr8c9{0 .} ==> Pr8c9 ≠ sw, Pr9c9 ≠ ne, Pr9c9 ≠ ns, Pr9c9 ≠ nw, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c9 ≠ ew, Br8c9 ≠ esw
P-single: Pr8c9 = o
whip[1]: Pr8c9{o .} ==> Hr8c8 ≠ 1
whip[1]: Br8c9{se .} ==> Nr8c9 ≠ 3
whip[1]: Br8c8{w .} ==> Nr8c8 ≠ 3, Pr8c8 ≠ se
N-single: Nr8c8 = 1
P-single: Pr8c8 = o
w[1]-1-in-r8c8-symmetric-nw-corner ==> Pr9c9 ≠ se, Pr9c9 ≠ o
whip[1]: Pr8c8{o .} ==> Vr8c8 ≠ 1, Vr7c8 ≠ 1, Hr8c7 ≠ 1, Br7c7 ≠ ne, Br7c7 ≠ ns, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ sw, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c8 ≠ w
H-single: Hr8c7 = 0
V-single: Vr8c8 = 0
w[1]-2-in-r8c7-open-ne-corner ==> Hr9c7 = 1, Vr8c7 = 1, Hr9c6 = 0, Vr9c7 = 0
P-single: Pr9c7 = ne
B-single: Br8c8 = s
B-single: Br8c7 = sw
B-single: Br7c7 = nw
no-vertical-line-r8{c7 c8} ==> Ir8c7 = out
vertical-line-r8{c6 c7} ==> Ir8c6 = in
no-horizontal-line-{r8 r9}c6 ==> Ir9c6 = in
no-vertical-line-r9{c6 c7} ==> Ir9c7 = in
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
different-colours-in-r9{c5 c6} ==> Hr9c6 = 1
same-colour-in-{r7 r8}c6 ==> Hr8c6 = 0
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
whip[1]: Hr8c7{0 .} ==> Pr8c7 ≠ ew
P-single: Pr8c7 = ns
whip[1]: Pr8c7{ns .} ==> Br8c6 ≠ n, Br8c6 ≠ o, Br7c6 ≠ w, Br7c6 ≠ sw, Br7c6 ≠ esw, Br8c6 ≠ s, Br8c6 ≠ w, Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ sw, Br8c6 ≠ swn, Br8c6 ≠ wne
B-single: Br7c6 = ew
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 3, Nr7c6 ≠ 1, Pr8c6 ≠ ne
N-single: Nr7c6 = 2
P-single: Pr8c6 = ns
whip[1]: Pr8c6{ns .} ==> Br8c6 ≠ e, Br8c5 ≠ w
B-single: Br8c5 = ew
B-single: Br8c6 = ew
whip[1]: Br8c5{ew .} ==> Nr8c5 ≠ 1, Pr9c6 ≠ se, Pr9c6 ≠ o
N-single: Nr8c5 = 2
whip[1]: Pr9c6{ns .} ==> Br9c6 ≠ swn, Br9c6 ≠ e
whip[1]: Br9c6{sw .} ==> Nr9c6 ≠ 1, Nr9c6 ≠ 3
N-single: Nr9c6 = 2
P-single: Pr10c6 = ne
w[1]-1-in-r10c6-asymmetric-nw-corner ==> Pr11c7 ≠ ne
P-single: Pr11c7 = o
whip[1]: Pr10c6{ne .} ==> Br9c5 ≠ w, Br9c6 ≠ ne, Br10c6 ≠ e
B-single: Br10c6 = n
B-single: Br9c6 = sw
B-single: Br9c5 = ew
whip[1]: Br10c6{n .} ==> Vr10c7 ≠ 1, Pr10c7 ≠ ns
V-single: Vr10c7 = 0
P-single: Pr10c8 = sw
P-single: Pr10c7 = ew
no-vertical-line-r10{c6 c7} ==> Ir10c7 = out
same-colour-in-{r10 r11}c7 ==> Hr11c7 = 0
w[1]-2-in-r10c7-open-sw-corner ==> Hr10c7 = 1, Vr10c8 = 1, Hr10c8 = 0, Vr9c8 = 0
no-vertical-line-r9{c7 c8} ==> Ir9c8 = in
different-colours-in-{r8 r9}c8 ==> Hr9c8 = 1
whip[1]: Vr10c7{0 .} ==> Br10c7 ≠ sw
B-single: Br10c7 = ne
whip[1]: Br10c7{ne .} ==> Pr11c8 ≠ ew
P-single: Pr11c8 = ne
whip[1]: Pr11c8{ne .} ==> Br11c7 ≠ n, Br10c8 ≠ s, Br10c8 ≠ ns, Br10c8 ≠ se, Br10c8 ≠ nes
B-single: Br11c7 = o
whip[1]: Br10c8{esw .} ==> Pr10c9 ≠ nw, Pr10c9 ≠ ew, Pr10c9 ≠ sw, Nr10c8 ≠ 1
whip[1]: Pr10c9{se .} ==> Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ swn
whip[1]: Br9c8{ne .} ==> Pr9c8 ≠ ns, Nr9c8 ≠ 3
P-single: Pr9c8 = ew
whip[1]: Pr9c8{ew .} ==> Br9c8 ≠ e, Br9c8 ≠ o, Br9c7 ≠ ew
whip[1]: Br9c8{ne .} ==> Nr9c8 ≠ 0
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ nw
B-single: Br9c7 = ns
whip[1]: Br9c6{sw .} ==> Pr9c6 ≠ ne
P-single: Pr9c6 = ns
whip[1]: Br9c5{ew .} ==> Nr9c5 ≠ 1
N-single: Nr9c5 = 2
whip[1]: Br8c6{ew .} ==> Nr8c6 ≠ 3, Nr8c6 ≠ 1, Nr8c6 ≠ 0
N-single: Nr8c6 = 2
whip[1]: Br7c7{nw .} ==> Pr7c8 ≠ se, Pr7c8 ≠ ns
whip[1]: Pr7c8{ew .} ==> Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c7 ≠ o, Br6c7 ≠ n, Br6c7 ≠ e, Br6c8 ≠ o, Br6c8 ≠ n, Br6c8 ≠ e, Br6c8 ≠ ne
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 0
whip[1]: Br6c7{se .} ==> Nr6c7 ≠ 0
whip[1]: Pr10c10{ew .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br10c10 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ o
whip[1]: Br10c10{nes .} ==> Nr10c10 ≠ 0, Nr10c10 ≠ 2
whip[1]: Hr6c8{0 .} ==> Pr6c8 ≠ ne, Pr6c9 ≠ ew, Pr6c9 ≠ sw, Br5c8 ≠ sw, Br6c8 ≠ ns, Br6c8 ≠ nes
B-single: Br5c8 = w
whip[1]: Br5c8{w .} ==> Nr5c8 ≠ 2
N-single: Nr5c8 = 1
whip[1]: Br6c8{ew .} ==> Nr6c8 ≠ 3
whip[1]: Pr6c9{se .} ==> Br6c9 ≠ ns, Br6c9 ≠ ew
whip[1]: Br6c9{swn .} ==> Pr7c9 ≠ nw, Pr7c9 ≠ ew, Nr6c9 ≠ 2
whip[1]: Pr7c9{ne .} ==> Hr7c8 ≠ 1, Br6c8 ≠ s, Br6c8 ≠ se
whip[1]: Br6c8{ew .} ==> Pr6c8 ≠ nw, Pr7c8 ≠ ew
P-single: Pr7c8 = nw
P-single: Pr6c8 = ns
whip[1]: Pr7c8{nw .} ==> Br6c7 ≠ s, Br6c7 ≠ ns
B-single: Br6c7 = se
whip[1]: Br6c7{se .} ==> Nr6c7 ≠ 1, Pr6c7 ≠ ew
N-single: Nr6c7 = 2
P-single: Pr6c7 = o
w[1]-1-in-r6c6-symmetric-ne-corner ==> Pr7c6 ≠ sw
P-single: Pr7c6 = ns
whip[1]: Pr6c7{o .} ==> Hr6c6 ≠ 1, Br5c7 ≠ nes, Br6c6 ≠ n
B-single: Br6c6 = w
B-single: Br5c7 = ne
whip[1]: Br6c6{w .} ==> Pr6c6 ≠ ne, Vr6c6 ≠ 0
V-single: Vr6c6 = 1
P-single: Pr6c6 = sw
vertical-line-r6{c5 c6} ==> Ir6c5 = out
same-colour-in-{r6 r7}c5 ==> Hr7c5 = 0
P-single: Pr7c5 = o
same-colour-in-r6{c4 c5} ==> Vr6c5 = 0
w[1]-2-in-r6c5-open-sw-corner ==> Hr6c5 = 1
whip[1]: Vr6c6{1 .} ==> Br6c5 ≠ sw
B-single: Br6c5 = ne
whip[1]: Br6c5{ne .} ==> Pr6c5 ≠ ns
whip[1]: Pr6c5{ew .} ==> Br5c5 ≠ ew, Br6c4 ≠ ew
whip[1]: Br5c5{sw .} ==> Vr5c6 ≠ 1, Pr5c6 ≠ ns
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ ew, Br4c5 ≠ e
whip[1]: Hr7c5{0 .} ==> Br7c5 ≠ ne
B-single: Br7c5 = e
whip[1]: Br7c5{e .} ==> Nr7c5 ≠ 2
N-single: Nr7c5 = 1
whip[1]: Br5c7{ne .} ==> Nr5c7 ≠ 3
N-single: Nr5c7 = 2
whip[1]: Pr9c10{nw .} ==> Br9c9 ≠ ne, Br9c10 ≠ nw
whip[1]: Br9c10{ew .} ==> Pr10c11 ≠ o
whip[1]: Pr10c11{sw .} ==> Br10c10 ≠ w
whip[1]: Br10c10{nes .} ==> Pr11c10 ≠ nw
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ se
whip[1]: Br10c9{ew .} ==> Pr10c9 ≠ o
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o
B-single: Br4c11 = w
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Vr2c11{1 .} ==> Br2c11 ≠ o
B-single: Br2c11 = w
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o
B-single: Br0c9 = s
whip[1]: Br3c4{swn .} ==> Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Pr4c5 ≠ ns
P-single: Pr4c4 = ne
w[1]-1-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ ne, Pr5c3 ≠ o
whip[1]: Pr4c4{ne .} ==> Br4c3 ≠ n, Br3c3 ≠ n, Br3c3 ≠ o, Br3c3 ≠ s, Br3c3 ≠ w, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ nes, Br4c3 ≠ e, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ sw
whip[1]: Br4c4{ns .} ==> Pr5c4 ≠ ns, Pr5c4 ≠ nw
whip[1]: Br4c3{w .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ se
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 0
whip[1]: Pr5c3{se .} ==> Vr5c3 ≠ 0, Br5c3 ≠ ne, Br5c2 ≠ w, Br5c3 ≠ o, Br5c3 ≠ n, Br5c3 ≠ e
V-single: Vr5c3 = 1
B-single: Br5c2 = ew
vertical-line-r5{c2 c3} ==> Ir5c3 = out
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
P-single: Pr4c5 = ew
no-vertical-line-r4{c4 c5} ==> Ir4c5 = in
same-colour-in-r4{c5 c6} ==> Vr4c6 = 0
different-colours-in-{r3 r4}c5 ==> Hr4c5 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
whip[1]: Vr5c3{1 .} ==> Pr6c3 ≠ o
P-single: Pr6c3 = ne
whip[1]: Pr6c3{ne .} ==> Br6c3 ≠ e
B-single: Br6c3 = ne
whip[1]: Br6c3{ne .} ==> Nr6c3 ≠ 1, Pr6c4 ≠ se, Pr6c4 ≠ ns
N-single: Nr6c3 = 2
P-single: Pr6c4 = sw
whip[1]: Pr6c4{sw .} ==> Br5c4 ≠ ns, Br5c4 ≠ s, Br5c4 ≠ ew, Br5c4 ≠ wne, Br6c4 ≠ nw
B-single: Br6c4 = w
whip[1]: Br6c4{w .} ==> Nr6c4 ≠ 2, Pr6c5 ≠ ew
N-single: Nr6c4 = 1
P-single: Pr5c6 = o
P-single: Pr6c5 = ne
whip[1]: Pr5c6{o .} ==> Br4c5 ≠ se, Br4c5 ≠ esw, Br4c6 ≠ wne, Br5c5 ≠ ns
B-single: Br5c5 = sw
B-single: Br4c6 = ne
whip[1]: Br5c5{sw .} ==> Pr5c5 ≠ ew, Pr5c5 ≠ ne
whip[1]: Br4c6{ne .} ==> Nr4c6 ≠ 3, Pr4c6 ≠ se
N-single: Nr4c6 = 2
P-single: Pr4c6 = ew
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ w, Br3c5 ≠ o
whip[1]: Br3c5{sw .} ==> Nr3c5 ≠ 0
whip[1]: Br4c5{nw .} ==> Nr4c5 ≠ 3
whip[1]: Br5c4{ne .} ==> Pr5c4 ≠ se, Nr5c4 ≠ 3
P-single: Pr5c4 = ew
w[1]-1-in-r4c3-asymmetric-se-corner ==> Pr4c3 ≠ ns
P-single: Pr4c3 = o
whip[1]: Pr5c4{ew .} ==> Br5c4 ≠ e, Br4c4 ≠ ne, Br4c3 ≠ w, Br5c3 ≠ sw
B-single: Br5c3 = swn
B-single: Br4c3 = s
B-single: Br4c4 = ns
B-single: Br5c4 = ne
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 2, Nr5c3 ≠ 1, Nr5c3 ≠ 0, Pr5c3 ≠ ns
N-single: Nr5c3 = 3
P-single: Pr5c3 = se
whip[1]: Pr5c3{se .} ==> Vr4c3 ≠ 1
whip[1]: Br4c4{ns .} ==> Pr5c5 ≠ ns
P-single: Pr5c5 = sw
whip[1]: Pr5c5{sw .} ==> Br4c5 ≠ nw
B-single: Br4c5 = n
whip[1]: Br4c5{n .} ==> Nr4c5 ≠ 2
N-single: Nr4c5 = 1
whip[1]: Br5c4{ne .} ==> Nr5c4 ≠ 1
N-single: Nr5c4 = 2
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ e, Br3c2 ≠ ne, Br3c3 ≠ ew, Br3c3 ≠ wne
whip[1]: Br3c3{ne .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ se, Nr3c3 ≠ 3, Pr3c3 ≠ sw
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 2
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 1
N-single: Nr5c2 = 2
whip[1]: Pr4c5{ew .} ==> Br3c4 ≠ esw, Br3c5 ≠ sw
B-single: Br3c5 = s
B-single: Br3c4 = swn
whip[1]: Br3c5{s .} ==> Nr3c5 ≠ 2, Pr3c5 ≠ ns
N-single: Nr3c5 = 1
P-single: Pr3c5 = nw
whip[1]: Pr3c5{nw .} ==> Br2c4 ≠ wne
whip[1]: Br2c4{nes .} ==> Pr3c4 ≠ ns
P-single: Pr3c4 = se
whip[1]: Pr3c4{se .} ==> Br2c3 ≠ s, Br2c3 ≠ e, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ esw, Br3c3 ≠ ne
B-single: Br3c3 = e
B-single: Br2c4 = nes
whip[1]: Br3c3{e .} ==> Nr3c3 ≠ 2, Pr3c3 ≠ ne, Pr3c3 ≠ ew
N-single: Nr3c3 = 1
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ swn, Br2c2 ≠ sw, Br1c3 ≠ n, Br1c3 ≠ ne, Br2c2 ≠ ne
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 1
whip[1]: Pr3c2{ew .} ==> Hr3c1 ≠ 0, Br2c1 ≠ nw, Br2c1 ≠ ew, Br3c1 ≠ w
H-single: Hr3c1 = 1
B-single: Br3c1 = nw
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
whip[1]: Hr3c1{1 .} ==> Pr3c1 ≠ ns
P-single: Pr3c1 = se
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e, Pr2c1 ≠ ns
B-single: Br2c0 = o
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ s, Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ wne
whip[1]: Br1c1{swn .} ==> Pr1c2 ≠ sw, Pr2c2 ≠ nw, Nr1c1 ≠ 2
P-single: Pr2c2 = se
whip[1]: Pr2c2{se .} ==> Br1c1 ≠ e, Vr2c2 ≠ 0, Vr1c2 ≠ 1, Hr2c2 ≠ 0, Hr2c1 ≠ 1, Br1c1 ≠ swn, Br1c2 ≠ nw, Br1c2 ≠ ew, Br2c1 ≠ ns, Br2c2 ≠ ns, Br2c2 ≠ se, Br2c2 ≠ ew
H-single: Hr2c1 = 0
H-single: Hr2c2 = 1
V-single: Vr1c2 = 0
V-single: Vr2c2 = 1
P-single: Pr3c3 = o
B-single: Br2c2 = nw
B-single: Br2c1 = se
B-single: Br1c1 = o
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
no-vertical-line-r1{c1 c2} ==> Ir1c1 = out
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0
same-colour-in-{r0 r1}c1 ==> Hr1c1 = 0
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
whip[1]: Hr2c1{0 .} ==> Pr2c1 ≠ ne
P-single: Pr3c2 = nw
P-single: Pr2c1 = o
whip[1]: Pr3c2{nw .} ==> Br3c2 ≠ n
B-single: Br3c2 = o
whip[1]: Br3c2{o .} ==> Nr3c2 ≠ 1
N-single: Nr3c2 = 0
whip[1]: Hr2c2{1 .} ==> Pr2c3 ≠ ns
whip[1]: Pr2c3{ew .} ==> Br2c3 ≠ nw, Br2c3 ≠ w
whip[1]: Br2c3{n .} ==> Pr2c4 ≠ ns, Nr2c3 ≠ 2, Nr2c3 ≠ 3
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ nw, Br1c3 ≠ nes, Br1c4 ≠ ew, Br1c4 ≠ ne
whip[1]: Br1c4{sw .} ==> Vr1c5 ≠ 1, Pr1c5 ≠ se, Pr2c5 ≠ ns
P-single: Pr2c5 = sw
whip[1]: Br1c1{o .} ==> Pr1c1 ≠ se, Pr1c2 ≠ ew, Nr1c1 ≠ 1, Nr1c1 ≠ 3
N-single: Nr1c1 = 0
P-single: Pr2c3 = nw
P-single: Pr1c2 = o
P-single: Pr1c1 = o
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ n, Br1c2 ≠ ns, Br1c3 ≠ ns
B-single: Br1c3 = wne
B-single: Br1c2 = se
B-single: Br2c3 = o
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 2, Pr2c4 ≠ ew, Pr1c4 ≠ ew, Pr1c3 ≠ ew
N-single: Nr1c3 = 3
P-single: Pr1c5 = o
P-single: Pr1c3 = se
P-single: Pr1c4 = sw
P-single: Pr2c4 = ne
whip[1]: Pr1c5{o .} ==> Br1c4 ≠ ns
B-single: Br1c4 = sw
whip[1]: Br2c3{o .} ==> Nr2c3 ≠ 1
N-single: Nr2c3 = 0
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Br3c1{nw .} ==> Nr3c1 ≠ 1
N-single: Nr3c1 = 2
whip[1]: Br3c6{s .} ==> Nr3c6 ≠ 2
N-single: Nr3c6 = 1
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
Entering_relation_bivalue_with_<Fact-178393>
Entering_level_BC2_with_<Fact-178514>
Entering_level_W2_with_<Fact-178832>
Entering_level_BC3_with_<Fact-179391>
Entering_level_W3_with_<Fact-180409>
Entering_level_BC4_with_<Fact-182557>
Entering_level_W4_with_<Fact-185775>
Entering_level_BC5_with_<Fact-193251>
Entering_level_W5_with_<Fact-203505>
GRID 0 NOT SOLVED. 19 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.   .   .———.   .   .   .———.———.———.———.
      2 |   | 2   0   1 | 2       1     |
.   .———.   .———.   .   .   .———.   .   .
  2 | 2       3 |       | 3 |   | 2   1 |
.———.   .   .———.   .   .———.   .———.   .
|           | 3           1         |   |
.   .   .   .———.———.———.   .   .   .   .
| 2   0   1   2         | 2   0   1 | 2 |
.———.   .———.———.   .   .———.   .   .   .
  2 |   |       | 2   0     |       | 2 |
.   .   .———.   .———.   .   .   .....   .
  2 |       |     2 | 1     |   :   : 2 |
.———.   .   .   .   .   .———.   .........
| 2   0   1 | 2     |   | 2   0   1 : 2 :
.   .   .   .———.   .   .   .   .   .....
|             2 |   |   | 2         |   |
.———.———.   .   .   .   .———.———.........
  1   2 |     2 |   |     2     : 2 : 2 :
.   .   .   .———.   .———.———.   .........
      1 |   | 2   0   1   2 |   : 2 :   :
.   .   .———.   .   .   .   .———.........

init-time = 0.62s, solve-time = 36.31s, total-time = 36.93s
nb-facts=<Fact-227987>
Quasi-Loop max length = 20
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




It is now easy to finish the puzzle manually:

.   .   .———.   .   .   .———.———.———.———.
      2 |   | 2   0   1 | 2       1     |
.   .———.   .———.   .   .   .———.   .   .
  2 | 2       3 |       | 3 |   | 2   1 |
.———.   .   .———.   .   .———.   .———.   .
|           | 3           1         |   |
.   .   .   .———.———.———.   .   .   .   .
| 2   0   1   2         | 2   0   1 | 2 |
.———.   .———.———.   .   .———.   .   .   .
  2 |   |       | 2   0     |       | 2 |
.   .   .———.   .———.   .   .   .....   .
  2 |       |     2 | 1     |   :   : 2 |
.———.   .   .   .   .   .———.   .........
| 2   0   1 | 2     |   | 2   0   1 : 2 :
.   .   .   .———.   .   .   .   .   .....
|             2 |   |   | 2         |   |
.———.———.   .   .   .   .———.———.........
  1   2 |     2 |   |     2     : 2 : 2 :
.   .   .   .———.   .———.———.   .........
      1 |   | 2   0   1   2 |   : 2 :   :
.   .   .———.   .   .   .   .———.........


Hr6c9=1 ==> small loop
Hr6c9=0:

.   .   .———.   .   .   .———.———.———.———.
      2 |   | 2   0   1 | 2       1     |
.   .———.   .———.   .   .   .———.   .   .
  2 | 2       3 |       | 3 |   | 2   1 |
.———.   .   .———.   .   .———.   .———.   .
|           | 3           1         |   |
.   .   .   .———.———.———.   .   .   .   .
| 2   0   1   2         | 2   0   1 | 2 |
.———.   .———.———.   .   .———.   .   .   .
  2 |   |       | 2   0     |       | 2 |
.   .   .———.   .———.   .   .   .   .   .
  2 |       |     2 | 1     |       | 2 |
.———.   .   .   .   .   .———.   .   .   .
| 2   0   1 | 2     |   | 2   0   1 | 2 |
.   .   .   .———.   .   .   .   .   .   .
|             2 |   |   | 2         |   |
.———.———.   .   .   .   .———.———.———.   .
  1   2 |     2 |   |     2       2   2 |
.   .   .   .———.   .———.———.   .———.———.
      1 |   | 2   0   1   2 |   | 2
.   .   .———.   .   .   .   .———.   .   .



