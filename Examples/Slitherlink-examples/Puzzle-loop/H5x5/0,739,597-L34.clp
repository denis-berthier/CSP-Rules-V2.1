
(solve
5 5
. 2 . . 3
. . . . . 
3 . 2 . 2
. 2 . 3 2 
3 . 3 . . 
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . . 3
. . . . .
3 . 2 . 2
. 2 . 3 2
3 . 3 . .

Loading pre-computed background
start init-inner-N-and-B-candidates 0.151808977127075
start solution 0.155456066131592
entering BRT
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
w[1]-diagonal-3s-in-{r4c4...r5c3} ==> Vr4c5 = 1, Vr5c3 = 1, Hr6c3 = 1, Hr4c4 = 1, Vr3c5 = 0, Hr6c2 = 0, Hr4c5 = 0
w[1]-2-in-r3c5-open-sw-corner ==> Hr3c5 = 1, Vr3c6 = 1, Vr2c6 = 0
w[1]-diagonal-3-2-3-in-{r3c1...r5c3} ==> Vr5c4 = 1, Vr3c1 = 1, Hr3c1 = 1, Vr2c1 = 0, Hr6c4 = 0
w[1]-3-in-r4c4-hit-by-verti-line-at-sw ==> Hr5c3 = 0
w[1]-3-in-r5c3-closed-sw-corner ==> Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
w[1]-3-in-r5c3-closed-se-corner ==> Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ o
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
P-single: Pr4c6 = ns
entering level Loop with <Fact-27633>
entering level Col with <Fact-27711>
vertical-line-r3{c5 c6} ==> Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
horizontal-line-{r3 r4}c4 ==> Ir4c4 = out
vertical-line-r4{c4 c5} ==> Ir4c5 = in
horizontal-line-{r2 r3}c5 ==> Ir2c5 = out
vertical-line-r1{c5 c6} ==> Ir1c5 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
vertical-line-r3{c0 c1} ==> Ir3c1 = in
horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
different-colours-in-r5{c1 c2} ==> Hr5c2 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
w[1]-2-in-r3c3-open-se-corner ==> Hr3c3 = 1, Vr3c3 = 1, Hr3c2 = 0, Vr2c3 = 0
w[1]-3-in-r5c3-hit-by-verti-line-at-ne ==> Hr5c4 = 0
w[1]-3-in-r4c4-closed-nw-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
no-vertical-line-r2{c2 c3} ==> Ir2c3 = out
same-colour-in-r2{c1 c2} ==> Vr2c2 = 0
w[1]-3-in-r3c1-isolated-at-ne-corner ==> Vr3c2 = 1
w[1]-3-in-r3c1-closed-ne-corner ==> Pr4c1 ≠ ne, Pr4c1 ≠ o
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
w[1]-3-in-r1c5-closed-se-corner ==> Pr1c5 ≠ se, Pr1c5 ≠ o
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
Starting_init_links_with_<Fact-27822>
220 candidates, 1888 csp-links and 7057 links. Density = 29.29%
starting non trivial part of solution
Entering_level_W1_with_<Fact-45717>
whip[1]: Vr4c6{1 .} ==> Br4c5 ≠ sw, Br4c6 ≠ o, Pr5c6 ≠ sw, Br4c5 ≠ ns, Br4c5 ≠ nw
B-single: Br4c6 = w
whip[1]: Pr5c6{nw .} ==> Br5c5 ≠ w, Br5c5 ≠ nes, Br5c5 ≠ o
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 0
whip[1]: Hr2c5{1 .} ==> Br2c5 ≠ esw, Br2c5 ≠ o, Pr2c6 ≠ o, Pr2c6 ≠ ns, Pr2c5 ≠ ns, Pr2c5 ≠ nw, Br1c5 ≠ wne, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ sw
B-single: Br1c5 = nes
whip[1]: Br1c5{nes .} ==> Pr2c6 ≠ sw, Pr1c5 ≠ sw, Pr1c6 ≠ o, Vr1c5 ≠ 1
V-single: Vr1c5 = 0
P-single: Pr1c6 = sw
P-single: Pr1c5 = ew
P-single: Pr2c6 = nw
no-vertical-line-r1{c4 c5} ==> Ir1c4 = in
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
whip[1]: Vr1c5{0 .} ==> Br1c4 ≠ e, Br1c4 ≠ ne, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ esw, Br1c4 ≠ wne, Br1c4 ≠ nes
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ w, Br1c4 ≠ s, Br1c4 ≠ o, Br1c4 ≠ sw
whip[1]: Br1c4{swn .} ==> Pr1c4 ≠ o, Pr1c4 ≠ sw, Nr1c4 ≠ 0
whip[1]: Pr1c4{ew .} ==> Br1c3 ≠ sw, Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c3 ≠ o, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ ne
whip[1]: Br1c3{swn .} ==> Nr1c3 ≠ 0
whip[1]: Pr2c6{nw .} ==> Br2c5 ≠ ne, Br2c5 ≠ wne, Br2c5 ≠ nes
whip[1]: Br2c5{swn .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ nw, Nr2c5 ≠ 0
P-single: Pr3c6 = sw
whip[1]: Pr3c6{sw .} ==> Br3c5 ≠ ns, Br2c5 ≠ n, Br2c5 ≠ nw, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ sw
B-single: Br3c5 = ne
whip[1]: Br3c5{ne .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ sw
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ esw, Br3c4 ≠ wne, Br3c4 ≠ nes, Br2c4 ≠ o, Br2c4 ≠ n, Br2c4 ≠ w, Br3c4 ≠ e, Br3c4 ≠ ne
whip[1]: Br2c4{wne .} ==> Nr2c4 ≠ 0
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 1
whip[1]: Pr4c5{sw .} ==> Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c5 ≠ ne
whip[1]: Br4c4{nes .} ==> Pr4c4 ≠ o, Pr4c4 ≠ ns, Pr4c4 ≠ sw, Pr4c5 ≠ o, Pr5c5 ≠ ew
P-single: Pr5c6 = ns
P-single: Pr5c5 = ns
P-single: Pr4c5 = sw
whip[1]: Pr5c6{ns .} ==> Br5c5 ≠ n, Vr5c6 ≠ 0, Hr5c5 ≠ 1, Br4c5 ≠ se, Br5c5 ≠ nw
H-single: Hr5c5 = 0
V-single: Vr5c6 = 1
B-single: Br4c5 = ew
vertical-line-r5{c5 c6} ==> Ir5c5 = in
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
whip[1]: Vr5c6{1 .} ==> Br5c6 ≠ o, Pr6c6 ≠ o
P-single: Pr6c6 = nw
B-single: Br5c6 = w
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o
B-single: Br6c5 = n
whip[1]: Br6c5{n .} ==> Pr6c5 ≠ o, Pr6c5 ≠ nw
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ esw, Br5c4 ≠ nes, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ w
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 0
whip[1]: Vr5c5{1 .} ==> Pr6c5 ≠ ew, Br5c4 ≠ s, Br5c4 ≠ ns, Br5c4 ≠ sw, Br5c4 ≠ swn, Br5c5 ≠ se
P-single: Pr6c5 = ne
B-single: Br5c5 = esw
whip[1]: Pr6c5{ne .} ==> Br6c4 ≠ n
B-single: Br6c4 = o
whip[1]: Br6c4{o .} ==> Pr6c4 ≠ ne, Pr6c4 ≠ ew
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Br5c3{nes .} ==> Pr6c3 ≠ o, Pr6c3 ≠ nw, Pr6c4 ≠ o, Pr5c4 ≠ nw, Pr5c4 ≠ ew
P-single: Pr6c4 = nw
whip[1]: Pr6c4{nw .} ==> Br5c4 ≠ e, Br6c3 ≠ o, Br5c4 ≠ ne
B-single: Br6c3 = n
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 1
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ nes, Br5c3 ≠ nes, Br4c3 ≠ s
B-single: Br5c3 = esw
whip[1]: Br5c3{esw .} ==> Pr5c3 ≠ ew, Pr5c3 ≠ ne, Pr6c3 ≠ ew
P-single: Pr6c3 = ne
whip[1]: Pr6c3{ne .} ==> Br5c2 ≠ n, Br5c2 ≠ o, Br6c2 ≠ n, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ nes
B-single: Br6c2 = o
whip[1]: Br6c2{o .} ==> Pr6c2 ≠ ne, Pr6c2 ≠ ew
whip[1]: Pr6c2{nw .} ==> Br5c1 ≠ swn
B-single: Br5c1 = esw
whip[1]: Br5c1{esw .} ==> Pr5c2 ≠ ew, Pr5c2 ≠ nw, Pr5c1 ≠ ne, Pr6c2 ≠ o, Pr6c1 ≠ o, Hr5c1 ≠ 1
H-single: Hr5c1 = 0
P-single: Pr6c1 = ne
P-single: Pr6c2 = nw
P-single: Pr5c1 = ns
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1

LOOP[8]: Vr3c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2- ==> Vr4c2 = 0
w[1]-diagonal-3-2-in-{r5c3...r4c2}-non-closed-nw-corner ==> Hr4c2 = 1
w[1]-diagonal-3-2-in-{r3c1...r4c2}-non-closed-se-corner ==> Hr5c2 = 1

LOOP[24]: Hr3c5-Vr3c6-Vr4c6-Vr5c6-Hr6c5-Vr5c5-Vr4c5-Hr4c4-Vr4c4-Vr5c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Vr3c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3- ==> Hr3c4 = 0
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
different-colours-in-r2{c3 c4} ==> Hr2c4 = 1

LOOP[30]: Vr2c4-Hr3c3-Vr3c3-Hr4c2-Vr3c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Vr5c3-Hr6c3-Vr5c4-Vr4c4-Hr4c4-Vr4c5-Vr5c5-Hr6c5-Vr5c6-Vr4c6-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4- ==> Vr1c4 = 0
no-vertical-line-r1{c3 c4} ==> Ir1c3 = in
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1

LOOP[32]: Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Vr3c6-Vr4c6-Vr5c6-Hr6c5-Vr5c5-Vr4c5-Hr4c4-Vr4c4-Vr5c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Vr3c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Vr2c4-Hr2c3- ==> Vr1c3 = 0
no-vertical-line-r1{c2 c3} ==> Ir1c2 = in
different-colours-in-{r1 r2}c2 ==> Hr2c2 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1

LOOP[34]: Hr1c2-Hr1c3-Hr1c4-Hr1c5-Vr1c6-Hr2c5-Vr2c5-Hr3c5-Vr3c6-Vr4c6-Vr5c6-Hr6c5-Vr5c5-Vr4c5-Hr4c4-Vr4c4-Vr5c4-Hr6c3-Vr5c3-Hr5c2-Vr5c2-Hr6c1-Vr5c1-Vr4c1-Vr3c1-Hr3c1-Vr3c2-Hr4c2-Vr3c3-Hr3c3-Vr2c4-Hr2c3-Hr2c2- ==> Vr1c2 = 1
no-horizontal-line-{r0 r1}c1 ==> Ir1c1 = out
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXXXX
OOOXO
XOXXX
XXXOX
XOXOX

.   .———.———.———.———.
    | 2           3 |
.   .———.———.   .———.
            |   |
.———.   .———.   .———.
| 3 |   | 2       2 |
.   .———.   .———.   .
|     2     | 3 | 2 |
.   .———.   .   .   .
| 3 |   | 3 |   |   |
.———.   .———.   .———.

init-time = 0.16s, solve-time = 1.97s, total-time = 2.12s
nb-facts=<Fact-47373>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
