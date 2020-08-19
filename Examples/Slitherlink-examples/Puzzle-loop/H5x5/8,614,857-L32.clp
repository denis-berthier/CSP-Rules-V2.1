
(solve
5 5
. 3 2 2 .
1 . 2 . .
. 3 . 2 .
2 . 2 . .
2 3 3 3 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 2 2 .
1 . 2 . .
. 3 . 2 .
2 . 2 . .
2 3 3 3 .

start init-grid-structure 0.00596404075622559
start create-csp-variables
start create-labels 0.000561952590942383
start init-physical-csp-links 0.00374197959899902
start init-physical-non-csp-links 1.27142000198364
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.301829099655151
     start init-physical-BN-non-csp-links at local time 1.09692811965942
     start init-physical-BP-non-csp-links at local time 1.92716193199158
     end init-physical-BP-non-csp-links at local time 12.8743491172791
end init-physical-non-csp-links 14.1457960605621
start init-corner-B-c-values 14.1520280838013
start init-outer-B-candidates 14.1520719528198
start init-outer-I-candidates 14.1523270606995
start init-H-candidates 14.1525499820709
start init-V-candidates 14.1532781124115
start init-P-candidates 14.1539530754089
start init-inner-I-candidates 14.1552109718323
start init-inner-N-and-B-candidates 14.1556329727173
start solution 14.1586029529572
entering BRT
w[1]-2-in-sw-corner ==> Vr4c1 = 1, Hr6c2 = 1
H-single: Hr6c2 = 1
V-single: Vr4c1 = 1
w[1]-diagonal-3-2-3-in-{r3c2...r5c4} ==> Vr5c5 = 1, Vr3c2 = 1, Hr6c4 = 1, Hr3c2 = 1, Vr2c2 = 0, Hr6c5 = 0, Hr3c1 = 0
H-single: Hr3c1 = 0
H-single: Hr6c5 = 0
V-single: Vr2c2 = 0
H-single: Hr3c2 = 1
H-single: Hr6c4 = 1
V-single: Vr3c2 = 1
V-single: Vr5c5 = 1
w[1]-3-in-r5c3-hit-by-horiz-line-at-sw ==> Vr5c4 = 1, Hr5c3 = 1
H-single: Hr5c3 = 1
V-single: Vr5c4 = 1
H-single: Hr6c3 = 0
V-single: Vr4c4 = 0
H-single: Hr5c4 = 0
w[1]-diagonal-3-2-in-{r5c2...r4c3}-non-closed-ne-corner ==> Vr5c2 = 1, Hr4c3 = 1, Hr6c1 = 0
H-single: Hr6c1 = 0
H-single: Hr4c3 = 1
V-single: Vr5c2 = 1
w[1]-3-in-r3c2-hit-by-horiz-line-at-se ==> Vr4c3 = 0
V-single: Vr4c3 = 0
w[1]-3-in-r5c3-hit-by-horiz-line-at-se ==> Vr5c3 = 1
V-single: Vr5c3 = 1
H-single: Hr5c2 = 0
w[1]-3-in-r5c4-closed-sw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ne, Pr5c5 ≠ o
w[1]-3-in-r5c3-closed-ne-corner ==> Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r5c3-closed-nw-corner ==> Pr6c4 ≠ nw, Pr6c4 ≠ o
diagonal-1-3-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 1
H-single: Hr2c1 = 0
V-single: Vr1c2 = 1
w[1]-3-in-r1c2-isolated-at-sw-corner ==> Hr2c2 = 1
H-single: Hr2c2 = 1
w[1]-3-in-r1c2-closed-sw-corner ==> Pr1c3 ≠ sw, Pr1c3 ≠ o
P-single: Pr5c2 = sw
H-single: Hr5c1 = 1
V-single: Vr4c2 = 0
V-single: Vr5c1 = 0
P-single: Pr6c1 = o
entering level Loop with <Fact-27672>
entering level Col with <Fact-27768>
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
I-single: Ir5c1 = out
vertical-line-r5{c1 c2} ==> Ir5c2 = in
I-single: Ir5c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
I-single: Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
I-single: Ir4c1 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
I-single: Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
I-single: Ir4c4 = in
no-horizontal-line-{r4 r5}c4 ==> Ir5c4 = in
I-single: Ir5c4 = in
vertical-line-r5{c3 c4} ==> Ir5c3 = out
I-single: Ir5c3 = out
vertical-line-r5{c4 c5} ==> Ir5c5 = out
I-single: Ir5c5 = out
horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
I-single: Ir3c3 = out
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
V-single: Vr5c6 = 0
Starting_init_links_with_<Fact-27780>
580 candidates, 1563 csp-links and 6322 links. Density = 3.77%
starting non trivial part of solution
Entering_level_W1_with_<Fact-43555>
whip[1]: Vr5c6{0 .} ==> Br5c5 ≠ nes, Br5c6 ≠ w, Pr6c6 ≠ nw, Pr5c6 ≠ ns, Pr5c6 ≠ sw, Br5c5 ≠ se, Br5c5 ≠ esw
P-single: Pr6c6 = o
B-single: Br5c6 = o
whip[1]: Pr6c6{o .} ==> Br6c5 ≠ n
B-single: Br6c5 = o
whip[1]: Pr6c5{nw .} ==> Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Br5c4{nes .} ==> Pr6c5 ≠ o, Pr5c5 ≠ nw, Pr5c5 ≠ ew
P-single: Pr6c5 = nw
whip[1]: Pr6c5{nw .} ==> Br5c5 ≠ n, Br5c5 ≠ o, Br6c4 ≠ o
B-single: Br6c4 = n
whip[1]: Br5c5{nw .} ==> Nr5c5 ≠ 0, Nr5c5 ≠ 3
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ ns, Br4c4 ≠ se, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ nes, Br4c5 ≠ ne, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br5c4 ≠ nes, Br4c4 ≠ s, Br4c5 ≠ o, Br4c5 ≠ n, Br4c5 ≠ e
B-single: Br5c4 = esw
P-single: Pr6c4 = ne
whip[1]: Pr6c4{ne .} ==> Br6c3 ≠ n, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ nes
B-single: Br5c3 = wne
P-single: Pr6c3 = nw
P-single: Pr5c3 = se
P-single: Pr5c4 = sw
B-single: Br6c3 = o
whip[1]: Pr6c3{nw .} ==> Br6c2 ≠ o, Br5c2 ≠ swn, Br5c2 ≠ wne
B-single: Br6c2 = n
whip[1]: Pr5c3{se .} ==> Br4c2 ≠ s, Br4c2 ≠ e, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ sw, Br5c2 ≠ nes
B-single: Br5c2 = esw
P-single: Pr6c2 = ne
whip[1]: Pr6c2{ne .} ==> Br6c1 ≠ n, Br5c1 ≠ sw
B-single: Br5c1 = ne
w[1]-3-in-r3c2-symmetric-sw-corner ==> Hr4c2 = 1
H-single: Hr4c2 = 1
H-single: Hr4c1 = 0
w[1]-3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ o
P-single: Pr5c1 = ne
B-single: Br6c1 = o
no-horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
I-single: Ir2c2 = in
horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
I-single: Ir1c2 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
horizontal-line-{r2 r3}c2 ==> Ir3c2 = out
I-single: Ir3c2 = out
same-colour-in-r3{c2 c3} ==> Vr3c3 = 0
V-single: Vr3c3 = 0
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
H-single: Hr1c2 = 0
w[1]-3-in-r1c2-hit-by-horiz-line-at-nw ==> Vr1c3 = 1
V-single: Vr1c3 = 1
V-single: Vr2c3 = 0
H-single: Hr2c3 = 0
w[1]-2-in-r2c3-open-nw-corner ==> Hr3c3 = 1, Vr2c4 = 1, Hr3c4 = 0, Vr3c4 = 0
V-single: Vr3c4 = 0
H-single: Hr3c4 = 0
V-single: Vr2c4 = 1
H-single: Hr3c3 = 1
w[1]-2-in-r3c4-open-nw-corner ==> Hr4c4 = 1, Vr3c5 = 1, Hr4c5 = 0, Vr4c5 = 0
V-single: Vr4c5 = 0
H-single: Hr4c5 = 0
V-single: Vr3c5 = 1
H-single: Hr4c4 = 1
w[1]-3-in-r1c2-closed-se-corner ==> Pr1c2 ≠ se, Pr1c2 ≠ o
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
I-single: Ir3c4 = out
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
I-single: Ir2c4 = out
vertical-line-r2{c3 c4} ==> Ir2c3 = in
I-single: Ir2c3 = in
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
I-single: Ir1c3 = in
vertical-line-r3{c4 c5} ==> Ir3c5 = in
I-single: Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
I-single: Ir4c5 = in
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
V-single: Vr4c6 = 1
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
H-single: Hr5c5 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
V-single: Vr3c6 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
H-single: Hr1c3 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
V-single: Vr3c1 = 1
whip[1]: Hr4c2{1 .} ==> Br4c2 ≠ o, Pr4c2 ≠ o, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Br3c2 ≠ wne, Br4c2 ≠ w
P-single: Pr4c2 = ne
whip[1]: Pr4c2{ne .} ==> Br3c1 ≠ n, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ nes, Br3c2 ≠ nes, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c2 ≠ nw
B-single: Br4c2 = n
N-single: Nr4c2 = 1
P-single: Pr4c3 = ew
B-single: Br4c1 = sw
P-single: Pr4c1 = ns
whip[1]: Pr4c3{ew .} ==> Br3c3 ≠ ne, Br3c3 ≠ w, Br3c3 ≠ e, Br3c3 ≠ n, Br3c3 ≠ o, Br3c2 ≠ esw, Br3c3 ≠ nw, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br4c3 ≠ se
B-single: Br4c3 = ns
B-single: Br3c2 = swn
P-single: Pr3c2 = se
w[1]-1-in-r2c1-symmetric-se-corner ==> Pr2c1 ≠ se, Pr2c1 ≠ o
whip[1]: Pr3c2{se .} ==> Br2c2 ≠ w, Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Br2c1 ≠ s, Br2c1 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br3c1 ≠ ne, Br3c1 ≠ wne
whip[1]: Br3c1{ew .} ==> Pr3c1 ≠ ne, Pr3c1 ≠ se, Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Br2c2{nes .} ==> Pr2c2 ≠ ns, Pr2c2 ≠ se, Pr2c2 ≠ sw, Nr2c2 ≠ 0
whip[1]: Pr2c1{ns .} ==> Br1c1 ≠ s, Br1c1 ≠ se, Br1c1 ≠ o, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Pr1c1 ≠ o, Pr2c2 ≠ nw, Nr1c1 ≠ 0, Nr1c1 ≠ 1
P-single: Pr1c1 = se
whip[1]: Pr2c2{ew .} ==> Br1c2 ≠ wne
whip[1]: Br1c2{nes .} ==> Pr2c2 ≠ o, Pr2c3 ≠ o, Pr2c3 ≠ ns
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ sw, Br2c2 ≠ se, Br2c3 ≠ nw, Br2c2 ≠ s
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 1
whip[1]: Pr2c2{ew .} ==> Br1c1 ≠ nw
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2
N-single: Nr1c1 = 3
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ n, Br1c1 ≠ swn
B-single: Br1c1 = wne
P-single: Pr1c2 = sw
P-single: Pr2c2 = ne
B-single: Br2c1 = w
P-single: Pr3c1 = ns
whip[1]: Pr1c2{sw .} ==> Br1c2 ≠ swn, Br1c2 ≠ nes
B-single: Br1c2 = esw
P-single: Pr2c4 = se
H-single: Hr2c4 = 1
V-single: Vr1c4 = 0
P-single: Pr1c4 = ew
H-single: Hr1c4 = 1
P-single: Pr4c5 = nw
P-single: Pr3c4 = nw
P-single: Pr1c3 = se
P-single: Pr2c3 = nw

LOOP[10]: Hr2c4-Vr2c4-Hr3c3-Hr3c2-Vr3c2-Hr4c2-Hr4c3-Hr4c4-Vr3c5- ==> Vr2c5 = 0
V-single: Vr2c5 = 0
no-vertical-line-r2{c4 c5} ==> Ir2c5 = out
I-single: Ir2c5 = out
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
I-single: Ir1c4 = in
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
V-single: Vr2c6 = 0
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
H-single: Hr3c5 = 1

LOOP[32]: Hr2c4-Vr2c4-Hr3c3-Hr3c2-Vr3c2-Hr4c2-Hr4c3-Hr4c4-Vr3c5-Hr3c5-Vr3c6-Vr4c6-Hr5c5-Vr5c5-Hr6c4-Vr5c4-Hr5c3-Vr5c3-Hr6c2-Vr5c2-Hr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Hr1c4- ==> Vr1c5 = 1
V-single: Vr1c5 = 1
H-single: Hr2c5 = 0
H-single: Hr1c5 = 0
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
I-single: Ir1c5 = out
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
V-single: Vr1c6 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXXO
XXXOO
XOOOX
XXXXX
OXOXO

.———.   .———.———.   .
|   | 3 | 2   2 |
.   .———.   .———.   .
| 1       2 |
.   .———.———.   .———.
|   | 3       2 |   |
.   .———.———.———.   .
| 2       2         |
.———.   .———.   .———.
  2 | 3 | 3 | 3 |
.   .———.   .———.   .

init-time = 14.16s, solve-time = 4.41s, total-time = 18.57s
nb-facts=<Fact-45698>
Quasi-Loop max length = 32
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
