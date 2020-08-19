
(solve
5 5
. 3 3 . 3
3 . 2 . 2
2 . . . 2
. . . . 2
. 3 . 3 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 3 . 3
3 . 2 . 2
2 . . . 2
. . . . 2
. 3 . 3 .

start init-grid-structure 0.00388503074645996
start create-csp-variables
start create-labels 0.000418186187744141
start init-physical-csp-links 0.00280618667602539
start init-physical-non-csp-links 1.1832799911499
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.317315101623535
     start init-physical-BN-non-csp-links at local time 1.12110590934753
     start init-physical-BP-non-csp-links at local time 1.98353099822998
     end init-physical-BP-non-csp-links at local time 12.9575569629669
end init-physical-non-csp-links 14.1408760547638
start init-corner-B-c-values 14.1449770927429
start init-outer-B-candidates 14.1450212001801
start init-outer-I-candidates 14.1454741954803
start init-H-candidates 14.1457521915436
start init-V-candidates 14.1468131542206
start init-P-candidates 14.1479110717773
start init-inner-I-candidates 14.1497700214386
start init-inner-N-and-B-candidates 14.1503012180328
start solution 14.1536409854889
entering BRT
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
H-single: Hr1c5 = 1
V-single: Vr1c6 = 1
w[1]-diagonal-3s-in-{r1c2...r2c1} ==> Vr1c3 = 1, Vr2c1 = 1, Hr3c1 = 1, Hr1c2 = 1, Vr3c1 = 0, Hr1c3 = 0
H-single: Hr1c3 = 0
V-single: Vr3c1 = 0
H-single: Hr1c2 = 1
H-single: Hr3c1 = 1
V-single: Vr2c1 = 1
V-single: Vr1c3 = 1
w[1]-3-in-r1c3-hit-by-horiz-line-at-nw ==> Vr1c4 = 1, Hr2c3 = 1
H-single: Hr2c3 = 1
V-single: Vr1c4 = 1
V-single: Vr2c4 = 0
H-single: Hr2c4 = 0
V-single: Vr2c3 = 0
H-single: Hr2c2 = 0
w[1]-diagonal-3-2-in-{r1c2...r2c3}-non-closed-se-corner ==> Vr1c2 = 1, Hr3c3 = 1, Hr1c1 = 0
H-single: Hr1c1 = 0
H-single: Hr3c3 = 1
V-single: Vr1c2 = 1
w[1]-3-in-r2c1-closed-sw-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
diagonal-2-3-in-se-corner ==> Vr5c4 = 0
V-single: Vr5c4 = 1
entering level Loop with <Fact-27582>
entering level Col with <Fact-27662>
vertical-line-r1{c5 c6} ==> Ir1c5 = in
I-single: Ir1c5 = in
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
I-single: Ir3c1 = out
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
I-single: Ir1c3 = out
vertical-line-r1{c2 c3} ==> Ir1c2 = in
I-single: Ir1c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
I-single: Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
I-single: Ir2c3 = in
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
I-single: Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
I-single: Ir1c4 = in
horizontal-line-{r2 r3}c3 ==> Ir3c3 = out
I-single: Ir3c3 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = out
I-single: Ir1c1 = out
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
H-single: Hr2c1 = 1
V-single: Vr2c2 = 0
V-single: Vr1c1 = 0
w[1]-3-in-r2c1-closed-nw-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ nw
same-colour-in-r1{c4 c5} ==> Vr1c5 = 0
V-single: Vr1c5 = 0
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
H-single: Hr1c4 = 1
w[1]-3-in-r1c5-hit-by-horiz-line-at-nw ==> Hr2c5 = 1
H-single: Hr2c5 = 1
V-single: Vr2c6 = 0
w[1]-3-in-r1c5-closed-se-corner ==> Pr1c5 ≠ se, Pr1c5 ≠ o
no-vertical-line-r2{c5 c6} ==> Ir2c5 = out
I-single: Ir2c5 = out
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
V-single: Vr2c5 = 1
Starting_init_links_with_<Fact-27822>
608 candidates, 1751 csp-links and 7008 links. Density = 3.8%
starting non trivial part of solution
Entering_level_W1_with_<Fact-45345>
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ se, Br2c4 ≠ o, Pr2c5 ≠ ew, Pr3c5 ≠ se, Pr3c5 ≠ ew, Br2c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ ne, Br2c5 ≠ ns
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c5{nw .} ==> Br3c4 ≠ ne, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ nw
whip[1]: Br3c5{sw .} ==> Pr4c6 ≠ o
whip[1]: Pr4c6{sw .} ==> Br4c5 ≠ sw
whip[1]: Br4c5{ew .} ==> Pr5c5 ≠ ne
whip[1]: Pr2c5{se .} ==> Br1c4 ≠ ns, Br1c4 ≠ se, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ nes, Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes, Br1c4 ≠ s
whip[1]: Br1c4{wne .} ==> Pr2c4 ≠ se, Pr2c4 ≠ ew
whip[1]: Pr2c4{nw .} ==> Br1c3 ≠ swn, Br1c4 ≠ ne, Br2c3 ≠ ne, Br2c3 ≠ sw, Br1c4 ≠ o, Br1c4 ≠ n, Br1c4 ≠ e
whip[1]: Br1c4{wne .} ==> Pr1c4 ≠ ew, Nr1c4 ≠ 0
P-single: Pr1c4 = se
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ w, Br1c3 ≠ wne, Br1c3 ≠ nes, Br1c4 ≠ ew
B-single: Br1c3 = esw
P-single: Pr1c3 = sw
P-single: Pr2c3 = ne
P-single: Pr2c4 = nw
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Nr1c1 ≠ 0
whip[1]: Pr2c3{ne .} ==> Br2c2 ≠ n, Br1c2 ≠ nes, Br2c2 ≠ e, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew
B-single: Br2c3 = ns
B-single: Br1c2 = wne
P-single: Pr1c2 = se
whip[1]: Pr1c2{se .} ==> Br1c1 ≠ nw, Br1c1 ≠ swn
whip[1]: Br1c1{se .} ==> Pr1c1 ≠ se, Pr2c1 ≠ ne, Pr2c1 ≠ ns, Nr1c1 ≠ 3
P-single: Pr1c1 = o
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ esw, Br2c1 ≠ nes
whip[1]: Br2c1{wne .} ==> Pr2c1 ≠ o, Pr3c1 ≠ o, Pr2c2 ≠ ns
P-single: Pr2c2 = nw
P-single: Pr2c1 = se
whip[1]: Pr2c2{nw .} ==> Br1c1 ≠ e, Br2c1 ≠ wne, Br2c2 ≠ w, Br2c2 ≠ sw
B-single: Br2c1 = swn
P-single: Pr3c1 = ne
B-single: Br1c1 = se
N-single: Nr1c1 = 2
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ sw
whip[1]: Br3c1{ns .} ==> Pr4c1 ≠ ns
whip[1]: Pr4c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ nes, Br4c1 ≠ n, Br4c1 ≠ w
whip[1]: Pr3c2{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ o, Br3c2 ≠ e, Br3c2 ≠ s
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br2c2{s .} ==> Nr2c2 ≠ 2, Nr2c2 ≠ 3
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ sw, Br3c2 ≠ nes, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c2 ≠ w, Br3c2 ≠ ne, Br3c3 ≠ o, Br3c3 ≠ e, Br3c3 ≠ s, Br3c3 ≠ w
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ ew, Br2c4 ≠ esw, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ swn, Br3c4 ≠ o, Br3c4 ≠ e, Br3c4 ≠ s
whip[1]: Br3c4{esw .} ==> Nr3c4 ≠ 0
whip[1]: Br2c4{se .} ==> Nr2c4 ≠ 3
whip[1]: Br1c4{wne .} ==> Nr1c4 ≠ 1
whip[1]: Vr2c6{0 .} ==> Br2c5 ≠ ew, Br2c6 ≠ w, Pr2c6 ≠ ns, Pr3c6 ≠ ns
B-single: Br2c6 = o
whip[1]: Pr4c6{sw .} ==> Vr4c6 ≠ 0, Br3c5 ≠ se, Br4c5 ≠ nw, Br4c5 ≠ ns
V-single: Vr4c6 = 1
vertical-line-r4{c5 c6} ==> Ir4c5 = in
I-single: Ir4c5 = in
whip[1]: Vr4c6{1 .} ==> Br4c6 ≠ o, Pr5c6 ≠ o, Pr5c6 ≠ sw
B-single: Br4c6 = w
whip[1]: Pr5c6{nw .} ==> Br5c5 ≠ w, Br5c5 ≠ nes, Br5c5 ≠ o
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 0
whip[1]: Pr3c5{ns .} ==> Hr3c4 ≠ 1, Br2c4 ≠ se, Br3c4 ≠ ns, Br3c4 ≠ n
H-single: Hr3c4 = 0
B-single: Br2c4 = e
N-single: Nr2c4 = 1
P-single: Pr3c4 = sw
V-single: Vr3c4 = 1
vertical-line-r3{c3 c4} ==> Ir3c4 = in
I-single: Ir3c4 = in
whip[1]: Pr3c4{sw .} ==> Br3c3 ≠ ns, Br3c3 ≠ n, Br3c3 ≠ nw, Br3c3 ≠ swn
whip[1]: Br3c3{nes .} ==> Pr4c3 ≠ ne, Pr4c4 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Nr3c3 ≠ 1
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ ne, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ nw, Br4c4 ≠ swn, Br4c4 ≠ wne
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ esw, Br3c5 ≠ ew, Br4c4 ≠ se, Br4c4 ≠ ew, Br4c4 ≠ esw, Br3c5 ≠ ns, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ns
whip[1]: Br3c4{sw .} ==> Nr3c4 ≠ 3
whip[1]: Pr2c6{nw .} ==> Br1c5 ≠ wne
B-single: Br1c5 = nes
P-single: Pr3c5 = ns
H-single: Hr3c5 = 0
V-single: Vr3c5 = 1
P-single: Pr5c6 = ns
H-single: Hr5c5 = 0
V-single: Vr5c6 = 1
P-single: Pr4c5 = ne
H-single: Hr4c4 = 0
H-single: Hr4c5 = 1
V-single: Vr4c5 = 0
V-single: Vr3c6 = 0
w[1]-3-in-r5c4-isolated-at-ne-corner ==> Vr5c5 = 1, Hr5c4 = 1
H-single: Hr5c4 = 1
V-single: Vr5c5 = 1
V-single: Vr4c4 = 0
H-single: Hr5c3 = 0
w[1]-3-in-r5c4-closed-ne-corner ==> Pr6c4 ≠ ne, Pr6c4 ≠ o
w[1]-3-in-r5c4-closed-nw-corner ==> Pr6c5 ≠ nw, Pr6c5 ≠ o
P-single: Pr3c6 = o
P-single: Pr1c6 = sw
P-single: Pr1c5 = ew
P-single: Pr2c6 = nw
P-single: Pr2c5 = se
no-vertical-line-r3{c5 c6} ==> Ir3c5 = out
I-single: Ir3c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
I-single: Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
I-single: Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
I-single: Ir5c3 = in
vertical-line-r5{c3 c4} ==> Ir5c4 = out
I-single: Ir5c4 = out
vertical-line-r5{c4 c5} ==> Ir5c5 = in
I-single: Ir5c5 = in
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
H-single: Hr6c5 = 1
H-single: Hr6c4 = 0
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
H-single: Hr6c3 = 1
w[1]-3-in-r5c2-hit-by-horiz-line-at-se ==> Vr5c2 = 1, Hr5c2 = 1
H-single: Hr5c2 = 1
V-single: Vr5c2 = 1
V-single: Vr4c2 = 0
H-single: Hr5c1 = 0
w[1]-3-in-r5c2-closed-nw-corner ==> Pr6c3 ≠ nw, Pr6c3 ≠ o
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
H-single: Hr4c3 = 1
whip[1]: Pr3c5{ns .} ==> Br2c5 ≠ sw, Br3c4 ≠ w, Br3c4 ≠ sw, Br3c5 ≠ ne
B-single: Br3c5 = sw
P-single: Pr4c6 = sw
B-single: Br3c4 = ew
N-single: Nr3c4 = 2
B-single: Br2c5 = nw
whip[1]: Pr4c6{sw .} ==> Br4c5 ≠ se, Br4c5 ≠ ew
B-single: Br4c5 = ne
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ w, Br4c3 ≠ sw, Br4c4 ≠ ne, Br4c4 ≠ nes, Br4c3 ≠ o, Br4c3 ≠ s
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 0
whip[1]: Br4c4{sw .} ==> Nr4c4 ≠ 3
whip[1]: Pr5c5{sw .} ==> Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c5 ≠ nw, Br5c5 ≠ n
whip[1]: Br5c5{esw .} ==> Pr6c6 ≠ o, Nr5c5 ≠ 1
P-single: Pr6c6 = nw
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o
B-single: Br6c5 = n
whip[1]: Br5c4{nes .} ==> Pr6c5 ≠ ew, Pr5c4 ≠ o, Pr5c4 ≠ ns, Pr5c4 ≠ nw, Pr5c4 ≠ sw, Pr5c5 ≠ o
P-single: Pr5c5 = sw
P-single: Pr6c5 = ne
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ w, Br4c4 ≠ o, Br5c5 ≠ se
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
whip[1]: Br4c4{sw .} ==> Nr4c4 ≠ 0
whip[1]: Pr6c5{ne .} ==> Br6c4 ≠ n, Br5c4 ≠ nes
B-single: Br5c4 = wne
P-single: Pr6c4 = nw
P-single: Pr5c4 = se
B-single: Br6c4 = o
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ s, Br5c3 ≠ e, Br5c3 ≠ n, Br5c3 ≠ o, Br6c3 ≠ o, Br5c3 ≠ w, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c3 ≠ wne
B-single: Br6c3 = n
whip[1]: Br5c3{nes .} ==> Pr5c3 ≠ se, Nr5c3 ≠ 0, Nr5c3 ≠ 1
whip[1]: Pr5c4{se .} ==> Br4c3 ≠ e, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c4 ≠ sw, Br5c3 ≠ nes
B-single: Br4c4 = s
N-single: Nr4c4 = 1
P-single: Pr4c4 = nw
whip[1]: Pr4c4{nw .} ==> Br3c3 ≠ ne, Br3c3 ≠ wne
B-single: Br3c3 = nes
V-single: Vr3c3 = 0
N-single: Nr3c3 = 3
P-single: Pr3c3 = ew
H-single: Hr3c2 = 1
w[1]-3-in-r2c1-hit-by-horiz-line-at-se ==> Vr3c2 = 0
V-single: Vr3c2 = 0
P-single: Pr4c1 = se
H-single: Hr4c1 = 1
V-single: Vr4c1 = 1
P-single: Pr3c2 = ew
vertical-line-r4{c0 c1} ==> Ir4c1 = in
I-single: Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
I-single: Ir4c2 = in
horizontal-line-{r4 r5}c2 ==> Ir5c2 = out
I-single: Ir5c2 = out
vertical-line-r5{c1 c2} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = out
I-single: Ir3c2 = out
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
H-single: Hr4c2 = 1
w[1]-3-in-r3c3-hit-by-horiz-line-at-sw ==> Vr4c3 = 0
V-single: Vr4c3 = 0
w[1]-3-in-r5c2-isolated-at-ne-corner ==> Vr5c3 = 1
V-single: Vr5c3 = 1
H-single: Hr6c2 = 0
w[1]-3-in-r5c2-closed-ne-corner ==> Pr6c2 ≠ ne, Pr6c2 ≠ o
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
H-single: Hr6c1 = 1

LOOP[34]: Hr6c1-Vr5c2-Hr5c2-Vr5c3-Hr6c3-Vr5c4-Hr5c4-Vr5c5-Hr6c5-Vr5c6-Vr4c6-Hr4c5-Vr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Hr3c1-Hr3c2-Hr3c3-Vr3c4-Hr4c3-Hr4c2-Hr4c1-Vr4c1- ==> Vr5c1 = 1
V-single: Vr5c1 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXX
XXXXO
OOOXO
XXXXX
XOXOX

.   .———.   .———.———.
    | 3 | 3 |     3 |
.———.   .———.   .———.
| 3       2     | 2
.———.———.———.   .   .
  2         |   | 2
.———.———.———.   .———.
|                 2 |
.   .———.   .———.   .
|   | 3 |   | 3 |   |
.———.   .———.   .———.

init-time = 14.15s, solve-time = 4.42s, total-time = 18.57s
nb-facts=<Fact-46973>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
