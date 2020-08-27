Mellon rating = 1


(solve
5 5
. 3 . 3 2
2 0 . . 2
. . 3 . . 
1 . . 2 1
3 3 . 3 . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 2
2 0 . . 2
. . 3 . .
1 . . 2 1
3 3 . 3 .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.180458068847656
start solution 0.183506965637207
entering BRT
w[0]-0-in-r2c2 ==> Hr3c2 = 0, Hr2c2 = 0, Vr2c3 = 0, Vr2c2 = 0
w[0]-adjacent-3-0-in-c2{r1 r2} ==> Vr1c3 = 1, Vr1c2 = 1, Hr2c3 = 1, Hr2c1 = 1, Hr1c2 = 1, Hr1c3 = 0, Hr1c1 = 0
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
w[1]-2-in-ne-corner ==> Vr2c6 = 1, Hr1c4 = 1
w[1]-diagonal-3-0-in-{r3c3...r2c2} ==> Vr3c3 = 1, Hr3c3 = 1
w[1]-3-in-r5c2-hit-by-horiz-line-at-sw ==> Vr5c3 = 1, Hr5c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-ne ==> Vr4c2 = 0
w[1]-3-in-r1c4-hit-by-horiz-line-at-sw ==> Vr1c5 = 1, Vr2c4 = 0
w[1]-adjacent-1-3-on-edge-in-{r4 r5}c1 ==> Hr4c1 = 0
w[1]-3-in-r5c2-closed-ne-corner ==> Pr6c2 ≠ ne, Pr6c2 ≠ o
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r3c3-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c2-closed-ne-corner ==> Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-3-in-r1c4-asymmetric-se-corner ==> Vr1c4 = 1
diagonal-1-3-in-sw-corner ==> Vr5c2 = 0, Hr5c1 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
w[1]-3-in-r5c2-closed-nw-corner ==> Pr6c3 ≠ nw, Pr6c3 ≠ o
diagonal-1-3-in-se-corner ==> Vr5c5 = 0, Hr5c5 = 1
P-single: Pr2c5 = ne
P-single: Pr1c6 = o
entering level Loop with <Fact-27720>
entering level Col with <Fact-27812>
vertical-line-r2{c5 c6} ==> Ir2c5 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
vertical-line-r3{c2 c3} ==> Ir3c3 = out
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0
same-colour-in-{r2 r3}c1 ==> Hr3c1 = 0
w[1]-2-in-r2c1-open-se-corner ==> Vr2c1 = 1
same-colour-in-r2{c4 c5} ==> Vr2c5 = 0
w[0]-adjacent-3-in-r1c4-nolines-south ==> Hr2c5 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
w[1]-3-in-r5c4-hit-by-horiz-line-at-sw ==> Hr5c4 = 1
w[1]-3-in-r5c4-closed-ne-corner ==> Pr6c4 ≠ ne, Pr6c4 ≠ o
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
Starting_init_links_with_<Fact-28089>
150 candidates, 1529 csp-links and 5820 links. Density = 52.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-42792>
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ s, Br4c0 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ ne, Br4c1 ≠ n, Br4c1 ≠ e
B-single: Br4c1 = w
B-single: Br4c0 = e
whip[1]: Br4c1{w .} ==> Pr5c2 ≠ nw, Pr5c2 ≠ ns, Pr4c2 ≠ nw, Pr4c2 ≠ ns, Pr5c1 ≠ ne, Pr4c1 ≠ se, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Pr5c2 ≠ ew
P-single: Pr5c2 = se
P-single: Pr4c1 = ns
P-single: Pr5c1 = ns
whip[1]: Pr5c2{se .} ==> Br4c2 ≠ w, Br4c2 ≠ e, Br4c2 ≠ n, Br4c2 ≠ o, Br4c2 ≠ ne, Br4c2 ≠ nw, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br5c1 ≠ swn, Br5c2 ≠ esw, Br5c2 ≠ nes
B-single: Br5c1 = esw
whip[1]: Br5c1{esw .} ==> Pr6c2 ≠ ew, Pr6c1 ≠ o
P-single: Pr6c1 = ne
P-single: Pr6c2 = nw
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Pr6c2{nw .} ==> Br6c2 ≠ n, Br5c2 ≠ swn
B-single: Br5c2 = wne
B-single: Br6c2 = o
whip[1]: Br5c2{wne .} ==> Pr5c3 ≠ ew, Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ ns, Pr5c3 ≠ ne, Pr5c3 ≠ o, Pr6c3 ≠ ew
P-single: Pr6c3 = ne
P-single: Pr5c3 = sw
whip[1]: Pr6c3{ne .} ==> Br5c3 ≠ n, Br5c3 ≠ o, Br6c3 ≠ o, Br5c3 ≠ e, Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ wne, Br5c3 ≠ nes
B-single: Br6c3 = n
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0, Nr5c3 ≠ 1
whip[1]: Pr5c3{sw .} ==> Br4c3 ≠ ns, Br4c3 ≠ w, Br4c3 ≠ s, Br4c2 ≠ se, Br4c2 ≠ nes, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes, Br5c3 ≠ swn
whip[1]: Br5c3{esw .} ==> Pr5c4 ≠ nw, Pr5c4 ≠ ew
whip[1]: Pr5c4{se .} ==> Br4c4 ≠ ne
whip[1]: Br4c3{ne .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se, Nr4c3 ≠ 3, Pr4c3 ≠ sw
whip[1]: Br4c2{ns .} ==> Nr4c2 ≠ 0, Nr4c2 ≠ 3
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Pr4c2{ne .} ==> Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c2 ≠ nes
whip[1]: Vr4c5{0 .} ==> Br4c5 ≠ w, Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Br4c4 ≠ se, Br4c4 ≠ ew
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br5c4 ≠ esw, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ o
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0, Nr5c5 ≠ 2
whip[1]: Br5c4{nes .} ==> Pr6c5 ≠ o, Pr5c4 ≠ ns
whip[1]: Pr6c5{ew .} ==> Br5c5 ≠ n
whip[1]: Br5c5{nes .} ==> Pr5c6 ≠ nw
whip[1]: Br4c5{s .} ==> Pr4c6 ≠ sw
whip[1]: Pr4c6{nw .} ==> Br3c5 ≠ ns, Br3c5 ≠ sw, Br3c5 ≠ swn, Br3c5 ≠ s
whip[1]: Vr1c6{0 .} ==> Br1c5 ≠ ne, Br1c6 ≠ w, Pr2c6 ≠ ns
P-single: Pr2c6 = sw
B-single: Br1c6 = o
B-single: Br1c5 = sw
whip[1]: Pr2c6{sw .} ==> Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ sw
B-single: Br2c5 = ne
whip[1]: Br2c5{ne .} ==> Hr3c5 ≠ 1, Pr3c6 ≠ sw
H-single: Hr3c5 = 0
P-single: Pr3c6 = ns
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
whip[1]: Hr3c5{0 .} ==> Br3c5 ≠ n, Br3c5 ≠ ne, Br3c5 ≠ nw, Br3c5 ≠ wne, Br3c5 ≠ nes
whip[1]: Pr3c6{ns .} ==> Br3c5 ≠ o, Br3c5 ≠ w
whip[1]: Br3c5{esw .} ==> Pr4c6 ≠ o, Nr3c5 ≠ 0
w[1]-1-in-r4c5-asymmetric-ne-corner ==> Pr5c5 ≠ ew
P-single: Pr5c5 = sw
whip[1]: Pr5c5{sw .} ==> Br4c5 ≠ s, Br5c4 ≠ swn, Br5c5 ≠ nes
whip[1]: Br5c5{esw .} ==> Pr6c5 ≠ ew, Pr5c6 ≠ sw
whip[1]: Vr3c6{1 .} ==> Br3c6 ≠ o
B-single: Br3c6 = w
whip[1]: Br1c5{sw .} ==> Pr1c5 ≠ ew
P-single: Pr1c5 = sw
whip[1]: Pr1c5{sw .} ==> Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br1c4{nes .} ==> Pr1c4 ≠ o, Pr1c4 ≠ sw
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ sw, Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c3 ≠ o, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ ne
whip[1]: Br1c3{swn .} ==> Nr1c3 ≠ 0
whip[1]: Pr3c5{sw .} ==> Br2c4 ≠ se, Br2c4 ≠ ew, Br2c4 ≠ esw, Br2c4 ≠ wne, Br2c4 ≠ nes, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ swn, Br2c4 ≠ e, Br2c4 ≠ ne, Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ ns
whip[1]: Vr2c1{1 .} ==> Br2c1 ≠ se, Br2c0 ≠ o, Pr2c1 ≠ ne, Pr3c1 ≠ se, Br2c1 ≠ ne, Br2c1 ≠ ns
P-single: Pr3c1 = ns
B-single: Br2c0 = e
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ sw, Br3c1 ≠ nw, Br3c1 ≠ wne
whip[1]: Br3c1{ew .} ==> Pr3c2 ≠ ew, Pr3c2 ≠ sw, Nr3c1 ≠ 3
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ swn, Br1c1 ≠ o, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0
whip[1]: Vr1c1{0 .} ==> Br1c1 ≠ wne, Br1c0 ≠ e, Pr1c1 ≠ se, Pr2c1 ≠ ns, Br1c1 ≠ nw
P-single: Pr2c1 = se
P-single: Pr1c1 = o
B-single: Br1c0 = o
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ ew
B-single: Br2c1 = nw
whip[1]: Br2c1{nw .} ==> Pr2c2 ≠ se, Pr2c2 ≠ ns, Vr2c2 ≠ 1
whip[1]: Pr2c2{ew .} ==> Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Pr1c3 ≠ o, Pr1c3 ≠ se, Pr1c3 ≠ ew, Pr2c3 ≠ ew, Pr2c3 ≠ sw
P-single: Pr1c3 = sw
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ ns, Br1c3 ≠ e, Br1c3 ≠ n, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn
whip[1]: Br1c3{esw .} ==> Pr1c4 ≠ ew, Pr2c4 ≠ se, Pr2c4 ≠ ew, Nr1c3 ≠ 1
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ nes
B-single: Br1c4 = wne
whip[1]: Pr2c4{nw .} ==> Br2c3 ≠ w, Br2c3 ≠ ne, Br2c3 ≠ sw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ swn, Br2c3 ≠ o, Br2c3 ≠ s, Br2c4 ≠ n
whip[1]: Br2c4{sw .} ==> Nr2c4 ≠ 3
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c3{ns .} ==> Hr2c2 ≠ 1, Br1c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ swn, Br2c3 ≠ e
B-single: Br1c2 = wne
whip[1]: Br1c2{wne .} ==> Pr2c2 ≠ ew, Pr1c2 ≠ ew
P-single: Pr1c2 = se
P-single: Pr2c2 = nw
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ s
B-single: Br1c1 = se
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 3, Nr1c1 ≠ 1
N-single: Nr1c1 = 2
whip[1]: Pr3c2{se .} ==> Br3c2 ≠ ne, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ n
whip[1]: Br3c2{swn .} ==> Pr3c3 ≠ sw, Pr4c3 ≠ nw, Nr3c2 ≠ 2
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ wne
whip[1]: Br3c3{nes .} ==> Pr3c3 ≠ o, Pr3c3 ≠ nw, Pr4c3 ≠ o, Pr4c4 ≠ ne, Pr4c4 ≠ ns
whip[1]: Pr4c4{sw .} ==> Vr3c4 ≠ 1, Br3c3 ≠ esw, Br3c3 ≠ nes, Br3c4 ≠ sw, Br3c4 ≠ wne, Br3c4 ≠ w, Br4c3 ≠ o, Br4c3 ≠ e
V-single: Vr3c4 = 0
B-single: Br3c3 = swn
no-vertical-line-r3{c3 c4} ==> Ir3c4 = out
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1

LOOP[6]: Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c3- ==> Hr4c4 = 0
w[1]-2-in-r4c4-open-ne-corner ==> Vr4c4 = 1, Vr5c4 = 0
w[1]-3-in-r5c4-hit-by-verti-line-at-nw ==> Hr6c4 = 1
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se
P-single: Pr5c4 = ne

LOOP[30]: Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c3-Vr4c4-Hr5c4-Vr5c5-Hr6c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Hr2c1-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5-Vr2c6-Vr3c6- ==> Hr4c5 = 1
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = out
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXO
XXXXX
XXOOX
XXXOO
XOXXO

.   .———.   .———.   .
    | 3 |   | 3 | 2
.———.   .———.   .———.
| 2   0           2 |
.   .   .———.———.   .
|       | 3     |   |
.   .   .———.   .———.
| 1         | 2   1
.   .———.   .———.   .
| 3 | 3 |     3 |
.———.   .———.———.   .

init-time = 0.18s, solve-time = 1.37s, total-time = 1.55s
nb-facts=<Fact-44076>
Quasi-Loop max length = 30
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


