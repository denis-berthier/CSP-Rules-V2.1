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
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 2
2 0 . . 2
. . 3 . .
1 . . 2 1
3 3 . 3 .

start init-grid-structure 4.79221343994141e-05
start create-csp-variables
start create-labels 0.000684022903442383
start init-physical-csp-links 0.00456118583679199
start init-physical-non-csp-links 1.03102016448975
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.204782009124756
     start init-physical-BN-non-csp-links at local time 0.821099042892456
     start init-physical-BP-non-csp-links at local time 1.54923820495605
     end init-physical-BP-non-csp-links at local time 10.273885011673
end init-physical-non-csp-links 11.3049430847168
start init-corner-B-c-values 11.305389881134
start init-outer-B-candidates 11.3054389953613
start init-outer-I-candidates 11.3058838844299
start init-H-candidates 11.3061408996582
start init-V-candidates 11.307226896286
start init-P-candidates 11.3082499504089
start init-inner-I-candidates 11.3099298477173
start init-inner-N-and-B-candidates 11.3105878829956
start solution 11.313462972641
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
w[1]-3-in-r1c2-closed-ne-corner ==> Pr2c2 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ o
w[1]-3-in-r1c4-asymmetric-se-corner ==> Vr1c4 = 1
diagonal-1-3-in-sw-corner ==> Vr5c2 = 0, Hr5c1 = 1
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
w[1]-3-in-r5c2-closed-nw-corner ==> Pr6c3 ≠ nw, Pr6c3 ≠ o
diagonal-1-3-in-se-corner ==> Vr5c5 = 0, Hr5c5 = 1
P-single: Pr2c3 = ne
P-single: Pr2c2 = nw
P-single: Pr2c5 = ne
H-single: Hr2c5 = 1
V-single: Vr2c5 = 0
P-single: Pr1c6 = o
entering level Loop with <Fact-27768>
entering level Col with <Fact-27872>
vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-vertical-line-r2{c4 c5} ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
vertical-line-r1{c3 c4} ==> Ir1c4 = in
vertical-line-r1{c4 c5} ==> Ir1c5 = out
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
vertical-line-r3{c2 c3} ==> Ir3c3 = out
vertical-line-r5{c0 c1} ==> Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
vertical-line-r5{c2 c3} ==> Ir5c2 = out
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
same-colour-in-r3{c1 c2} ==> Vr3c2 = 0
same-colour-in-{r2 r3}c1 ==> Hr3c1 = 0
w[1]-2-in-r2c1-open-se-corner ==> Vr2c1 = 1, Vr1c1 = 0
3-in-r3c3-no-U-turn-from-west ==> Hr4c2 = O
w[1]-3-in-r3c3-isolated-at-sw-corner ==> Hr4c3 = 1
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
w[1]-3-in-r5c4-hit-by-horiz-line-at-sw ==> Hr5c4 = 1
w[1]-3-in-r5c4-closed-ne-corner ==> Pr6c4 ≠ ne, Pr6c4 ≠ o
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
Starting_init_links_with_<Fact-28101>
520 candidates, 1483 csp-links and 5327 links. Density = 3.95%
starting non trivial part of solution
Entering_level_W1_with_<Fact-41726>
whip[1]: Vr4c1{1 .} ==> Br4c1 ≠ s, Br4c0 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ ne, Br4c1 ≠ n, Br4c1 ≠ e
B-single: Br4c1 = w
P-single: Pr4c1 = ns
P-single: Pr5c1 = ns
P-single: Pr5c2 = se
B-single: Br4c0 = e
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ e, Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ swn
B-single: Br5c1 = esw
P-single: Pr6c1 = ne
P-single: Pr6c2 = nw
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Pr6c2{nw .} ==> Br6c2 ≠ n, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ nes
B-single: Br5c2 = wne
P-single: Pr6c3 = ne
P-single: Pr5c3 = sw
B-single: Br6c2 = o
whip[1]: Pr6c3{ne .} ==> Br5c3 ≠ n, Br5c3 ≠ o, Br6c3 ≠ o, Br5c3 ≠ e, Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ wne, Br5c3 ≠ nes
B-single: Br6c3 = n
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0, Nr5c3 ≠ 1
whip[1]: Pr5c3{sw .} ==> Br4c3 ≠ ns, Br4c3 ≠ w, Br4c3 ≠ s, Br4c2 ≠ ne, Br4c2 ≠ w, Br4c2 ≠ e, Br4c2 ≠ n, Br4c2 ≠ o, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ esw, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes, Br5c3 ≠ swn
whip[1]: Br5c3{esw .} ==> Pr5c4 ≠ nw, Pr5c4 ≠ ew
whip[1]: Pr5c4{se .} ==> Br4c4 ≠ ne
whip[1]: Br4c3{ne .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se, Nr4c3 ≠ 3, Pr4c3 ≠ sw
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr5c2{se .} ==> Br4c2 ≠ sw, Br4c2 ≠ swn
whip[1]: Br4c2{ns .} ==> Nr4c2 ≠ 3
whip[1]: Pr4c2{ne .} ==> Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c2 ≠ nes
whip[1]: Vr4c5{0 .} ==> Br4c5 ≠ w, Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Br4c4 ≠ se, Br4c4 ≠ ew
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ nw, Br5c4 ≠ esw, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ o
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0, Nr5c5 ≠ 2
whip[1]: Br5c4{nes .} ==> Pr6c5 ≠ o, Pr5c4 ≠ ns
whip[1]: Pr6c5{ew .} ==> Br5c5 ≠ n
whip[1]: Br5c5{nes .} ==> Pr5c6 ≠ nw
whip[1]: Br4c5{s .} ==> Pr4c6 ≠ sw
whip[1]: Pr4c6{nw .} ==> Br3c5 ≠ ns, Br3c5 ≠ sw, Br3c5 ≠ swn, Br3c5 ≠ s
whip[1]: Hr4c3{1 .} ==> Br4c3 ≠ e, Br4c3 ≠ o, Pr4c3 ≠ o, Pr4c3 ≠ nw, Pr4c4 ≠ ne, Pr4c4 ≠ ns, Br3c3 ≠ wne
whip[1]: Br3c3{nes .} ==> Pr3c3 ≠ o
P-single: Pr3c3 = se
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ n, Br3c2 ≠ o, Br2c3 ≠ w, Br2c3 ≠ e, Br2c3 ≠ n, Br2c3 ≠ o, Br2c3 ≠ ne, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br3c2 ≠ ne, Br3c2 ≠ sw, Br3c2 ≠ swn, Br3c3 ≠ esw, Br3c3 ≠ nes
B-single: Br3c3 = swn
V-single: Vr3c4 = 0
P-single: Pr4c3 = ne
no-vertical-line-r3{c3 c4} ==> Ir3c4 = out
different-colours-in-{r2 r3}c4 ==> Hr3c4 = 1
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ w, Br3c4 ≠ nw, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ wne
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ esw, Br4c2 ≠ ns
B-single: Br4c2 = s
N-single: Nr4c2 = 1
P-single: Pr4c2 = o
B-single: Br3c2 = e
N-single: Nr3c2 = 1
P-single: Pr2c1 = se
P-single: Pr3c2 = o
whip[1]: Pr4c2{o .} ==> Br3c1 ≠ ew, Br3c1 ≠ wne
whip[1]: Br3c1{nw .} ==> Nr3c1 ≠ 3
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ swn, Br1c1 ≠ wne, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ sw
B-single: Br2c1 = nw
P-single: Pr3c1 = ns
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ nw
B-single: Br3c1 = w
N-single: Nr3c1 = 1
whip[1]: Br1c1{se .} ==> Pr1c1 ≠ se, Pr1c2 ≠ ew, Pr1c2 ≠ sw, Nr1c1 ≠ 0, Nr1c1 ≠ 3
P-single: Pr1c1 = o
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ esw, Br1c2 ≠ nes
whip[1]: Br1c2{wne .} ==> Pr1c2 ≠ o, Pr1c3 ≠ o, Pr1c3 ≠ se
P-single: Pr1c2 = se
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ s
B-single: Br1c1 = se
N-single: Nr1c1 = 2
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Hr3c4{1 .} ==> Br3c4 ≠ o, Br2c4 ≠ o, Pr3c4 ≠ nw, Pr3c5 ≠ o, Pr3c5 ≠ ns, Pr3c5 ≠ se, Br2c4 ≠ n, Br2c4 ≠ e, Br2c4 ≠ w, Br2c4 ≠ ne, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ wne, Br3c4 ≠ e, Br3c4 ≠ s, Br3c4 ≠ se
P-single: Pr3c4 = ew
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ se, Br2c3 ≠ nes, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn
whip[1]: Br2c4{nes .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ se, Nr2c4 ≠ 0
whip[1]: Pr2c4{ew .} ==> Br1c3 ≠ ew, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c3 ≠ n, Br1c3 ≠ w, Br1c3 ≠ ne, Br2c3 ≠ s
B-single: Br2c3 = ns
N-single: Nr2c3 = 2
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 1
whip[1]: Br1c4{nes .} ==> Pr1c4 ≠ o, Pr1c4 ≠ sw, Pr1c5 ≠ ew
P-single: Pr1c5 = sw
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ ne
B-single: Br1c5 = sw
P-single: Pr3c5 = sw
H-single: Hr3c5 = 0
V-single: Vr3c5 = 1
P-single: Pr2c6 = sw

LOOP[6]: Vr3c5-Hr3c4-Hr3c3-Vr3c3-Hr4c3- ==> Hr4c4 = 0
w[1]-2-in-r4c4-open-ne-corner ==> Vr4c4 = 1, Vr5c4 = 0
w[1]-3-in-r5c4-hit-by-verti-line-at-nw ==> Hr6c4 = 1
w[1]-3-in-r5c4-closed-se-corner ==> Pr5c4 ≠ se
P-single: Pr5c4 = ne
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
vertical-line-r3{c4 c5} ==> Ir3c5 = in
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1

LOOP[30]: Vr3c6-Vr2c6-Hr2c5-Vr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr5c2-Hr5c2-Vr5c3-Hr6c3-Hr6c4-Vr5c5-Hr5c4-Vr4c4-Hr4c3-Vr3c3-Hr3c3-Hr3c4-Vr3c5- ==> Hr4c5 = 1
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

init-time = 11.31s, solve-time = 3.67s, total-time = 14.98s
nb-facts=<Fact-43100>
Quasi-Loop max length = 30
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


