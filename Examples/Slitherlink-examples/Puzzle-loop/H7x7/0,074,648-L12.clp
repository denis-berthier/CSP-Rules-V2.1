
(solve
7 7
. 2 2 . . . 3 
1 1 3 2 . . . 
2 0 2 1 . . 3
. . . 2 . 2 . 
3 2 1 2 2 . . 
2 . 1 2 2 2 . 
. . . . 2 . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 2 . . . 3
1 1 3 2 . . .
2 0 2 1 . . 3
. . . 2 . 2 .
3 2 1 2 2 . .
2 . 1 2 2 2 .
. . . . 2 . 3

start init-grid-structure 0.0129079818725586
start create-csp-variables
start create-labels 0.000684976577758789
start init-physical-csp-links 0.00528097152709961
start init-physical-non-csp-links 3.72005081176758
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.963855981826782
     start init-physical-BN-non-csp-links at local time 3.66189098358154
     start init-physical-BP-non-csp-links at local time 6.60146880149841
     end init-physical-BP-non-csp-links at local time 52.7074589729309
end init-physical-non-csp-links 56.4275808334351
start init-corner-B-c-values 56.4407150745392
start init-outer-B-candidates 56.4407629966736
start init-outer-I-candidates 56.441113948822
start init-H-candidates 56.4414088726044
start init-V-candidates 56.4429540634155
start init-P-candidates 56.4442548751831
start init-inner-I-candidates 56.4467070102692
start init-inner-N-and-B-candidates 56.4475300312042
start solution 56.4524199962616
entering BRT
H-single: Hr4c2 = 0
H-single: Hr3c2 = 0
V-single: Vr3c3 = 0
V-single: Vr3c2 = 0
w[1]-3-in-se-corner ==> Vr7c8 = 1, Hr8c7 = 1
H-single: Hr8c7 = 1
V-single: Vr7c8 = 1
w[1]-3-in-ne-corner ==> Vr1c8 = 1, Hr1c7 = 1
H-single: Hr1c7 = 1
V-single: Vr1c8 = 1
w[1]-diagonal-3-0-in-{r2c3...r3c2} ==> Vr2c3 = 1, Hr3c3 = 1
H-single: Hr3c3 = 1
V-single: Vr2c3 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r2{c2 c3} ==> Vr2c2 = 0, Hr2c2 = 0
H-single: Hr2c2 = 0
V-single: Vr2c2 = 0
w[1]-3-in-r7c7-closed-se-corner ==> Pr7c7 ≠ se, Pr7c7 ≠ nw, Pr7c7 ≠ o
w[1]-3-in-r2c3-closed-sw-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
square-of-2s-se-of-r5c4 ==> Pr6c5 ≠ o
P-single: Pr3c3 = ne
w[1]-1-in-r2c1-symmetric-se-corner ==> Pr2c1 ≠ se, Pr2c1 ≠ o
w[1]-1-in-r2c2-asymmetric-se-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ew, Pr2c2 ≠ ns
entering level Loop with <Fact-49005>
entering level Col with <Fact-49082>
vertical-line-r7{c7 c8} ==> Ir7c7 = in
I-single: Ir7c7 = in
vertical-line-r1{c7 c8} ==> Ir1c7 = in
I-single: Ir1c7 = in
Starting_init_links_with_<Fact-49085>
1208 candidates, 3510 csp-links and 14697 links. Density = 2.02%
starting non trivial part of solution
Entering_level_W1_with_<Fact-85504>
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ sw, Br2c2 ≠ n, Br2c2 ≠ s, Br2c2 ≠ w, Br2c3 ≠ wne, Br2c3 ≠ nes, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ ew
B-single: Br2c2 = e
P-single: Pr4c2 = sw
H-single: Hr4c1 = 1
V-single: Vr4c2 = 1
w[1]-3-in-r5c1-hit-by-verti-line-at-ne ==> Vr5c1 = 1, Hr6c1 = 1, Hr5c2 = 0
H-single: Hr5c2 = 0
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
V-single: Vr6c1 = 0
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
P-single: Pr4c1 = ne
V-single: Vr3c1 = 1
V-single: Vr4c1 = 0
P-single: Pr3c2 = o
H-single: Hr3c1 = 0
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
I-single: Ir4c1 = out
vertical-line-r4{c1 c2} ==> Ir4c2 = in
I-single: Ir4c2 = in
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = in
I-single: Ir3c2 = in
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
I-single: Ir3c1 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
vertical-line-r2{c2 c3} ==> Ir2c3 = out
I-single: Ir2c3 = out
horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
I-single: Ir3c3 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
I-single: Ir5c2 = in
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
I-single: Ir6c1 = out
horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
I-single: Ir5c1 = in
same-colour-in-r5{c1 c2} ==> Vr5c2 = 0
V-single: Vr5c2 = 0
w[1]-2-in-r5c2-open-nw-corner ==> Hr6c2 = 1, Vr5c3 = 1, Hr6c3 = 0, Vr6c3 = 0
V-single: Vr6c3 = 0
H-single: Hr6c3 = 0
V-single: Vr5c3 = 1
H-single: Hr6c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-se ==> Hr5c1 = 1, Vr6c2 = 0
V-single: Vr6c2 = 0
H-single: Hr5c1 = 1
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw
no-vertical-line-r6{c1 c2} ==> Ir6c2 = out
I-single: Ir6c2 = out
no-vertical-line-r6{c2 c3} ==> Ir6c3 = out
I-single: Ir6c3 = out
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
I-single: Ir5c3 = out
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ ns, Br4c2 ≠ ne, Br4c2 ≠ s, Br4c2 ≠ e, Br4c2 ≠ n, Br4c2 ≠ o, Br4c1 ≠ ns, Br4c1 ≠ w, Br4c1 ≠ s, Br4c1 ≠ e, Br4c1 ≠ n, Br4c1 ≠ o, Br3c1 ≠ ne, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ nes
whip[1]: Br4c2{esw .} ==> Pr5c2 ≠ ew, Nr4c2 ≠ 0
whip[1]: Pr5c2{nw .} ==> Br4c2 ≠ sw, Br4c2 ≠ esw, Br5c1 ≠ wne, Br5c1 ≠ nes, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ nw
whip[1]: Br5c2{sw .} ==> Pr5c3 ≠ nw, Pr5c3 ≠ ew
whip[1]: Pr5c3{se .} ==> Br4c3 ≠ ne, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br5c2 ≠ sw, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br5c3 ≠ n, Br5c3 ≠ e, Br5c3 ≠ s
B-single: Br5c3 = w
H-single: Hr5c3 = 0
V-single: Vr5c4 = 0
w[1]-3-in-r3c7-asymmetric-sw-corner ==> Vr3c8 = 1, Hr3c7 = 1, Vr2c8 = 0
V-single: Vr2c8 = 0
H-single: Hr3c7 = 1
V-single: Vr3c8 = 1
P-single: Pr5c3 = ns
V-single: Vr4c3 = 1
vertical-line-r4{c2 c3} ==> Ir4c3 = out
I-single: Ir4c3 = out
vertical-line-r3{c7 c8} ==> Ir3c7 = in
I-single: Ir3c7 = in
horizontal-line-{r2 r3}c7 ==> Ir2c7 = out
I-single: Ir2c7 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
I-single: Ir5c4 = out
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
H-single: Hr2c7 = 1
w[1]-3-in-r1c7-closed-se-corner ==> Pr1c7 ≠ se, Pr1c7 ≠ o
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
H-single: Hr4c3 = 1
whip[1]: Hr5c3{0 .} ==> Br4c3 ≠ s, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ nes
whip[1]: Br4c3{wne .} ==> Pr4c3 ≠ o, Nr4c3 ≠ 0
P-single: Pr4c3 = se
whip[1]: Pr4c3{se .} ==> Br4c3 ≠ w, Br4c2 ≠ w, Br3c3 ≠ ne, Br4c3 ≠ ew
B-single: Br3c3 = ns
V-single: Vr3c4 = 0
B-single: Br4c2 = ew
N-single: Nr4c2 = 2
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
I-single: Ir3c4 = in
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ w
whip[1]: Br3c4{s .} ==> Pr3c5 ≠ sw
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ sw, Br2c4 ≠ ne
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ se
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 1
whip[1]: Pr2c5{ew .} ==> Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ o, Br1c5 ≠ n, Br1c5 ≠ e, Br1c5 ≠ ne
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 0
whip[1]: Vr5c4{0 .} ==> Br5c4 ≠ nw, Br5c4 ≠ ew, Br5c4 ≠ sw
whip[1]: Vr2c8{0 .} ==> Br2c8 ≠ w, Pr2c8 ≠ ns, Pr2c8 ≠ sw, Pr3c8 ≠ ns, Pr3c8 ≠ nw, Br2c7 ≠ e, Br2c7 ≠ ne, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ esw, Br2c7 ≠ wne, Br2c7 ≠ nes
B-single: Br2c8 = o
whip[1]: Pr3c8{sw .} ==> Br3c7 ≠ esw, Br3c7 ≠ swn
whip[1]: Br3c7{nes .} ==> Pr3c8 ≠ o, Pr4c8 ≠ o, Pr4c8 ≠ sw, Pr3c7 ≠ o, Pr3c7 ≠ ns, Pr3c7 ≠ nw, Pr3c7 ≠ sw
P-single: Pr3c8 = sw
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ w, Br2c7 ≠ n, Br2c7 ≠ o, Br2c7 ≠ nw
whip[1]: Br2c7{swn .} ==> Nr2c7 ≠ 0
whip[1]: Pr3c7{ew .} ==> Br2c6 ≠ se, Br2c6 ≠ esw, Br2c6 ≠ nes, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c6 ≠ ne
whip[1]: Pr4c8{nw .} ==> Br4c7 ≠ w, Br4c7 ≠ ne, Br4c7 ≠ sw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c7 ≠ o, Br4c7 ≠ s
whip[1]: Br4c7{swn .} ==> Nr4c7 ≠ 0
whip[1]: Pr2c8{nw .} ==> Br1c7 ≠ wne
B-single: Br1c7 = nes
V-single: Vr1c7 = 0
P-single: Pr1c8 = sw
P-single: Pr1c7 = ew
H-single: Hr1c6 = 1
P-single: Pr2c8 = nw
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
I-single: Ir1c6 = in
whip[1]: Vr1c7{0 .} ==> Br1c6 ≠ e, Br1c6 ≠ ne, Br1c6 ≠ se, Br1c6 ≠ ew, Br1c6 ≠ esw, Br1c6 ≠ wne, Br1c6 ≠ nes
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ w, Br1c6 ≠ s, Br1c6 ≠ o, Br1c6 ≠ sw
whip[1]: Br1c6{swn .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Nr1c6 ≠ 0
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c5 ≠ s, Br1c5 ≠ w
whip[1]: Br1c5{ew .} ==> Nr1c5 ≠ 1, Nr1c5 ≠ 3
N-single: Nr1c5 = 2
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Pr2c8{nw .} ==> Br2c7 ≠ s, Br2c7 ≠ sw
whip[1]: Br2c7{swn .} ==> Nr2c7 ≠ 1
whip[1]: Pr2c7{ew .} ==> Br2c6 ≠ sw, Br2c6 ≠ wne, Br2c6 ≠ o, Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ ne
whip[1]: Br2c6{swn .} ==> Nr2c6 ≠ 0
whip[1]: Vr3c8{1 .} ==> Br3c8 ≠ o
B-single: Br3c8 = w
whip[1]: Pr4c7{ew .} ==> Br4c6 ≠ sw, Br4c6 ≠ ne
whip[1]: Pr5c6{ew .} ==> Br5c5 ≠ sw, Br5c5 ≠ ne
whip[1]: Pr6c7{ew .} ==> Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ swn, Br6c6 ≠ sw, Br5c7 ≠ o, Br5c7 ≠ n, Br5c7 ≠ e, Br5c7 ≠ ne, Br6c6 ≠ ne
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Pr4c5{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ wne, Br3c5 ≠ nes, Br4c4 ≠ ew, Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ns, Br4c4 ≠ ns
whip[1]: Pr8c5{ew .} ==> Br8c4 ≠ o, Hr8c4 ≠ 0, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ wne, Br7c5 ≠ sw, Br7c4 ≠ o, Br7c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ w, Br7c4 ≠ ne, Br7c5 ≠ ne
H-single: Hr8c4 = 1
B-single: Br8c4 = n
horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
I-single: Ir7c4 = in
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ esw, Br7c3 ≠ nes, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ w
whip[1]: Br7c3{wne .} ==> Nr7c3 ≠ 0
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 0
whip[1]: Pr8c6{nw .} ==> Br8c6 ≠ n, Hr8c6 ≠ 1, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ nes, Br7c6 ≠ s
H-single: Hr8c6 = 0
B-single: Br8c6 = o
w[1]-3-in-r7c7-symmetric-sw-corner ==> Vr7c7 = 1
V-single: Vr7c7 = 1
w[1]-3-in-r7c7-closed-sw-corner ==> Pr7c8 ≠ sw, Pr7c8 ≠ o
vertical-line-r7{c6 c7} ==> Ir7c6 = out
I-single: Ir7c6 = out
whip[1]: Vr7c7{1 .} ==> Br7c6 ≠ o, Pr8c7 ≠ o, Pr7c7 ≠ ne, Pr7c7 ≠ ew, Br7c6 ≠ n, Br7c6 ≠ w, Br7c6 ≠ nw, Br7c7 ≠ nes
P-single: Pr8c7 = ne
B-single: Br7c7 = esw
H-single: Hr7c7 = 0
P-single: Pr8c8 = nw
P-single: Pr7c8 = ns
V-single: Vr6c8 = 1
vertical-line-r6{c7 c8} ==> Ir6c7 = in
I-single: Ir6c7 = in
whip[1]: Pr8c7{ne .} ==> Br8c7 ≠ o
B-single: Br8c7 = n
whip[1]: Hr7c7{0 .} ==> Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes
whip[1]: Pr7c8{ns .} ==> Br6c7 ≠ n, Br6c7 ≠ o, Br6c7 ≠ w, Br6c7 ≠ nw
whip[1]: Br6c7{wne .} ==> Pr6c8 ≠ o, Pr6c8 ≠ nw, Nr6c7 ≠ 0
whip[1]: Pr6c8{sw .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ nes, Br5c7 ≠ w
whip[1]: Vr6c8{1 .} ==> Br6c8 ≠ o
B-single: Br6c8 = w
whip[1]: Br7c6{wne .} ==> Nr7c6 ≠ 0
whip[1]: Pr7c7{sw .} ==> Br6c6 ≠ nw, Br6c6 ≠ se
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ sw, Br7c3 ≠ sw, Br7c3 ≠ wne, Br6c4 ≠ ne, Br7c3 ≠ s, Br7c3 ≠ ne
whip[1]: Pr6c5{ew .} ==> Br6c5 ≠ nw
whip[1]: Br6c5{sw .} ==> Pr7c6 ≠ se
whip[1]: Pr7c6{ew .} ==> Br7c6 ≠ wne
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 3
whip[1]: Pr7c5{se .} ==> Br6c4 ≠ ns, Br6c4 ≠ ew, Br6c5 ≠ sw, Br7c4 ≠ nes
whip[1]: Br6c5{ew .} ==> Pr6c6 ≠ ne
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn
whip[1]: Pr5c5{sw .} ==> Br4c5 ≠ sw, Br4c5 ≠ esw
whip[1]: Pr6c3{nw .} ==> Br6c2 ≠ w, Br6c2 ≠ ne, Br6c2 ≠ sw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c2 ≠ o, Br6c2 ≠ s, Br6c3 ≠ n
whip[1]: Br6c3{w .} ==> Pr7c3 ≠ ne, Pr7c4 ≠ nw
whip[1]: Pr7c4{ew .} ==> Br7c4 ≠ se, Br7c4 ≠ s
whip[1]: Br7c4{swn .} ==> Nr7c4 ≠ 1
whip[1]: Br6c2{swn .} ==> Nr6c2 ≠ 0
whip[1]: Br5c1{swn .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ne, Pr6c1 ≠ ns, Pr6c2 ≠ ns
P-single: Pr6c2 = ew
P-single: Pr6c1 = ne
whip[1]: Pr6c2{ew .} ==> Br6c2 ≠ e, Br6c1 ≠ ne, Br5c1 ≠ esw, Br5c2 ≠ ew, Br6c1 ≠ se, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ swn
B-single: Br5c2 = se
P-single: Pr5c2 = nw
P-single: Pr6c3 = nw
B-single: Br5c1 = swn
P-single: Pr5c1 = se
w[1]-1-in-r6c3-symmetric-nw-corner ==> Pr7c4 ≠ se
whip[1]: Pr5c2{nw .} ==> Br4c1 ≠ ne, Br4c1 ≠ wne
B-single: Br4c1 = nes
N-single: Nr4c1 = 3
whip[1]: Pr6c3{nw .} ==> Br6c3 ≠ w
whip[1]: Br6c3{s .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ nw
whip[1]: Pr7c4{ew .} ==> Br7c4 ≠ swn
whip[1]: Br6c2{ns .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ ns, Nr6c2 ≠ 3
whip[1]: Pr7c2{sw .} ==> Hr7c1 ≠ 0, Br6c1 ≠ nw, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c1 ≠ o, Br7c1 ≠ e, Br7c2 ≠ o, Br7c2 ≠ e, Br7c2 ≠ s
H-single: Hr7c1 = 1
B-single: Br6c1 = ns
P-single: Pr7c1 = se
V-single: Vr7c1 = 1
vertical-line-r7{c0 c1} ==> Ir7c1 = in
I-single: Ir7c1 = in
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
H-single: Hr8c1 = 1
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ n, Br7c1 ≠ ne
B-single: Br7c1 = swn
V-single: Vr7c2 = 0
N-single: Nr7c1 = 3
P-single: Pr8c1 = ne
P-single: Pr8c2 = ew
H-single: Hr8c2 = 1
P-single: Pr7c2 = ew
H-single: Hr7c2 = 1

LOOP[6]: Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2- ==> Vr7c3 = 0
V-single: Vr7c3 = 0
horizontal-line-{r6 r7}c2 ==> Ir7c2 = in
I-single: Ir7c2 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
I-single: Ir7c3 = in
same-colour-in-r7{c3 c4} ==> Vr7c4 = 0
V-single: Vr7c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-in-r6{c3 c4} ==> Hr7c4 = 1
H-single: Hr7c4 = 1
horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
I-single: Ir6c4 = out
same-colour-in-r6{c3 c4} ==> Vr6c4 = 0
V-single: Vr6c4 = 0
P-single: Pr5c4 = ne
H-single: Hr5c4 = 1
V-single: Vr4c4 = 1
H-single: Hr4c4 = 0
P-single: Pr5c5 = sw
H-single: Hr5c5 = 0
V-single: Vr4c5 = 0
V-single: Vr5c5 = 1
P-single: Pr7c5 = nw
H-single: Hr7c5 = 0
V-single: Vr6c5 = 1
V-single: Vr7c5 = 0
w[1]-2-in-r7c5-open-nw-corner ==> Hr8c5 = 1, Vr7c6 = 1
V-single: Vr7c6 = 1
H-single: Hr8c5 = 1
P-single: Pr8c6 = nw
P-single: Pr6c4 = o
H-single: Hr6c4 = 0
w[1]-1-in-r6c3-symmetric-ne-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ o
horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
I-single: Ir7c5 = in
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
I-single: Ir6c5 = in
vertical-line-r5{c4 c5} ==> Ir5c5 = in
I-single: Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
I-single: Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
I-single: Ir4c4 = in
same-colour-in-{r5 r6}c5 ==> Hr6c5 = 0
H-single: Hr6c5 = 0
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
H-single: Hr8c3 = 1
different-colours-in-{r6 r7}c3 ==> Hr7c3 = 1
H-single: Hr7c3 = 1
whip[1]: Vr7c2{0 .} ==> Br7c2 ≠ w, Br7c2 ≠ ew, Br7c2 ≠ sw, Br7c2 ≠ esw
whip[1]: Br7c2{nes .} ==> Pr7c3 ≠ se, Nr7c2 ≠ 0
P-single: Pr7c3 = ew
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ e, Br7c2 ≠ ne, Br6c3 ≠ e, Br6c2 ≠ n, Br7c2 ≠ nes, Br7c3 ≠ ew, Br7c3 ≠ swn
B-single: Br7c3 = ns
N-single: Nr7c3 = 2
P-single: Pr8c3 = ew
P-single: Pr8c4 = ew
P-single: Pr7c4 = ew
B-single: Br6c2 = ns
N-single: Nr6c2 = 2
B-single: Br6c3 = s
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ n, Br8c3 ≠ o, Br8c2 ≠ o
B-single: Br8c2 = n
B-single: Br8c3 = n
B-single: Br7c2 = ns
N-single: Nr7c2 = 2
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ sw, Br7c4 ≠ esw
B-single: Br7c4 = ns
N-single: Nr7c4 = 2
P-single: Pr8c5 = ew
whip[1]: Pr8c5{ew .} ==> Br8c5 ≠ o, Br7c5 ≠ nw
B-single: Br7c5 = se
P-single: Pr7c6 = ns
H-single: Hr7c6 = 0
V-single: Vr6c6 = 1
B-single: Br8c5 = n
vertical-line-r6{c5 c6} ==> Ir6c6 = out
I-single: Ir6c6 = out
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1
V-single: Vr6c7 = 1

LOOP[6]: Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8- ==> Hr6c7 = 0
H-single: Hr6c7 = 0
no-horizontal-line-{r5 r6}c7 ==> Ir5c7 = in
I-single: Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
V-single: Vr5c8 = 1
whip[1]: Pr7c6{ns .} ==> Br7c6 ≠ e, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c6 ≠ ns, Br7c6 ≠ ne
B-single: Br7c6 = ew
N-single: Nr7c6 = 2
P-single: Pr7c7 = ns
B-single: Br6c6 = ew
H-single: Hr6c6 = 0
P-single: Pr6c6 = ns
V-single: Vr5c6 = 1
vertical-line-r5{c5 c6} ==> Ir5c6 = out
I-single: Ir5c6 = out
different-colours-in-r5{c6 c7} ==> Hr5c7 = 1
V-single: Vr5c7 = 1

LOOP[8]: Vr5c7-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8- ==> Hr5c7 = 0
H-single: Hr5c7 = 0
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
I-single: Ir4c7 = in
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
V-single: Vr4c8 = 1
w[1]-3-in-r3c7-hit-by-verti-line-at-se ==> Vr3c7 = 1
V-single: Vr3c7 = 1
V-single: Vr2c7 = 0
H-single: Hr3c6 = 0
w[1]-3-in-r3c7-closed-nw-corner ==> Pr4c8 ≠ nw
P-single: Pr4c8 = ns
H-single: Hr4c7 = 0

LOOP[12]: Vr5c7-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Hr3c7-Vr3c7- ==> Vr4c7 = 0
V-single: Vr4c7 = 0
no-vertical-line-r4{c6 c7} ==> Ir4c6 = in
I-single: Ir4c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = out
I-single: Ir2c6 = out
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
I-single: Ir3c6 = out
different-colours-in-{r3 r4}c6 ==> Hr4c6 = 1
H-single: Hr4c6 = 1
different-colours-in-{r1 r2}c6 ==> Hr2c6 = 1
H-single: Hr2c6 = 1

LOOP[6]: Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6- ==> Vr1c6 = 0
V-single: Vr1c6 = 0
w[1]-diagonal-3-2s-in-{r5c1...r1c5}-non-closed-ne-end ==> Hr1c5 = 1
H-single: Hr1c5 = 1
horizontal-line-{r0 r1}c5 ==> Ir1c5 = in
I-single: Ir1c5 = in
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
H-single: Hr5c6 = 1
V-single: Vr4c6 = 0
whip[1]: Pr7c7{ns .} ==> Br6c7 ≠ e, Br6c7 ≠ ne
whip[1]: Br6c7{wne .} ==> Nr6c7 ≠ 1
whip[1]: Hr6c6{0 .} ==> Br5c6 ≠ s, Br5c6 ≠ ns, Br5c6 ≠ se, Br5c6 ≠ nes
whip[1]: Pr6c6{ns .} ==> Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br5c5 ≠ ns, Br5c6 ≠ ne, Br6c5 ≠ ne
B-single: Br6c5 = ew
P-single: Pr6c5 = ns
B-single: Br5c5 = ew
whip[1]: Pr6c5{ns .} ==> Br5c4 ≠ ns, Br5c4 ≠ se, Br6c4 ≠ nw
B-single: Br6c4 = se
B-single: Br5c4 = ne
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ nes, Br4c5 ≠ s
whip[1]: Br4c5{ew .} ==> Nr4c5 ≠ 3
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 0
whip[1]: Vr5c7{1 .} ==> Pr5c7 ≠ ne, Pr5c7 ≠ ew, Pr6c7 ≠ se, Br5c6 ≠ w, Br5c6 ≠ nw, Br5c7 ≠ s, Br5c7 ≠ ns
P-single: Pr6c7 = ns
whip[1]: Pr6c7{ns .} ==> Br6c7 ≠ wne
B-single: Br6c7 = ew
N-single: Nr6c7 = 2
P-single: Pr6c8 = ns
whip[1]: Br5c7{wne .} ==> Pr5c8 ≠ o, Pr5c8 ≠ nw, Nr5c7 ≠ 1
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ esw, Br4c7 ≠ n
whip[1]: Br5c6{wne .} ==> Nr5c6 ≠ 1
whip[1]: Pr5c7{sw .} ==> Br4c6 ≠ nw, Br4c6 ≠ se, Br4c7 ≠ swn, Br5c7 ≠ wne, Br4c7 ≠ ns
B-single: Br5c7 = ew
N-single: Nr5c7 = 2
P-single: Pr5c8 = ns
whip[1]: Br4c7{ew .} ==> Pr4c7 ≠ se, Pr4c7 ≠ ew, Nr4c7 ≠ 3
whip[1]: Pr4c7{nw .} ==> Br3c6 ≠ w, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ sw, Br3c6 ≠ swn, Br3c7 ≠ nes, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ s
B-single: Br3c7 = wne
P-single: Pr3c7 = se
whip[1]: Pr3c7{se .} ==> Br2c6 ≠ e, Br2c6 ≠ ns, Br2c6 ≠ ew, Br2c6 ≠ swn, Br2c7 ≠ swn
B-single: Br2c7 = ns
N-single: Nr2c7 = 2
P-single: Pr2c7 = ew
whip[1]: Pr2c7{ew .} ==> Br1c6 ≠ n, Br1c6 ≠ nw
whip[1]: Br1c6{swn .} ==> Pr2c6 ≠ o, Pr2c6 ≠ ns, Pr2c6 ≠ sw, Nr1c6 ≠ 1
whip[1]: Pr2c6{ew .} ==> Br1c5 ≠ se, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c5 ≠ ne
whip[1]: Br2c6{nw .} ==> Pr3c6 ≠ ne, Pr3c6 ≠ se, Pr3c6 ≠ ew, Nr2c6 ≠ 3
whip[1]: Br3c6{esw .} ==> Nr3c6 ≠ 0
whip[1]: Vr4c8{1 .} ==> Br4c8 ≠ o
B-single: Br4c8 = w
whip[1]: Vr4c7{0 .} ==> Pr4c7 ≠ ns, Pr5c7 ≠ ns, Br4c6 ≠ ew, Br4c7 ≠ ew
P-single: Pr5c7 = sw
P-single: Pr4c7 = nw
B-single: Br4c7 = e
N-single: Nr4c7 = 1
B-single: Br4c6 = ns
P-single: Pr5c6 = se
whip[1]: Pr5c7{sw .} ==> Br5c6 ≠ ew
B-single: Br5c6 = wne
N-single: Nr5c6 = 3
whip[1]: Pr4c7{nw .} ==> Br3c6 ≠ e, Br3c6 ≠ ew
whip[1]: Br3c6{esw .} ==> Nr3c6 ≠ 1
whip[1]: Pr5c6{se .} ==> Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ ew
whip[1]: Br4c5{w .} ==> Nr4c5 ≠ 2
whip[1]: Pr4c6{ew .} ==> Br3c5 ≠ esw, Br3c5 ≠ o, Br3c5 ≠ n
whip[1]: Br3c5{swn .} ==> Nr3c5 ≠ 0
whip[1]: Vr1c6{0 .} ==> Pr1c6 ≠ se, Pr2c6 ≠ ne, Br1c5 ≠ ew, Br1c6 ≠ swn
P-single: Pr1c6 = ew
B-single: Br1c6 = ns
N-single: Nr1c6 = 2
whip[1]: Br1c5{nw .} ==> Pr1c5 ≠ sw
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ sw, Br1c4 ≠ wne, Br1c4 ≠ nes, Br1c4 ≠ o, Br1c4 ≠ s, Br1c4 ≠ w, Br1c4 ≠ ne
whip[1]: Br1c4{swn .} ==> Nr1c4 ≠ 0
whip[1]: Pr2c6{ew .} ==> Br2c5 ≠ sw, Br2c5 ≠ o, Br2c5 ≠ s, Br2c5 ≠ w
whip[1]: Br2c5{swn .} ==> Nr2c5 ≠ 0
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Vr5c8{1 .} ==> Br5c8 ≠ o
B-single: Br5c8 = w
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Pr5c4{ne .} ==> Br4c3 ≠ nw, Br4c4 ≠ ne
B-single: Br4c4 = sw
P-single: Pr4c4 = sw
B-single: Br4c3 = wne
N-single: Nr4c3 = 3
w[1]-1-in-r3c4-symmetric-sw-corner ==> Pr3c5 ≠ ne, Pr3c5 ≠ o
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ s
whip[1]: Pr3c5{ew .} ==> Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e
whip[1]: Br2c5{ew .} ==> Nr2c5 ≠ 1, Nr2c5 ≠ 3
N-single: Nr2c5 = 2
whip[1]: Pr5c5{sw .} ==> Br4c5 ≠ w
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Pr4c1{ne .} ==> Br3c1 ≠ ns
B-single: Br3c1 = sw
P-single: Pr3c1 = ns
w[1]-1-in-r2c1-asymmetric-sw-corner ==> Pr2c2 ≠ nw
w[1]-3-in-r2c3-asymmetric-nw-corner ==> Vr2c4 = 1, Hr3c4 = 0
H-single: Hr3c4 = 0
V-single: Vr2c4 = 1
P-single: Pr2c3 = ns
H-single: Hr2c3 = 0
V-single: Vr1c3 = 1
H-single: Hr1c3 = 0
adjacent-3-2-in-{r2 r1}c3-noline-north ==> Hr2c4 = 0
H-single: Hr2c4 = 0
w[1]-diagonal-3-2s-in-{r5c1...r2c4}-non-closed-ne-end ==> Vr2c5 = 1
V-single: Vr2c5 = 1
P-single: Pr1c3 = sw
P-single: Pr2c2 = o
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
I-single: Ir1c3 = out
vertical-line-r2{c3 c4} ==> Ir2c4 = in
I-single: Ir2c4 = in
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
I-single: Ir1c4 = in
vertical-line-r2{c4 c5} ==> Ir2c5 = out
I-single: Ir2c5 = out
same-colour-in-r2{c5 c6} ==> Vr2c6 = 0
V-single: Vr2c6 = 0
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
H-single: Hr2c5 = 1
V-single: Vr1c5 = 0
P-single: Pr2c6 = ew
P-single: Pr1c5 = ew
H-single: Hr1c4 = 1
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1
V-single: Vr1c4 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ e, Br2c1 ≠ n, Br2c1 ≠ s
B-single: Br2c1 = w
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ s, Br1c1 ≠ se, Br1c1 ≠ swn
whip[1]: Br1c1{wne .} ==> Pr1c1 ≠ o, Nr1c1 ≠ 0, Nr1c1 ≠ 1
P-single: Pr1c1 = se
whip[1]: Hr3c4{0 .} ==> Pr3c4 ≠ ew, Pr3c5 ≠ ew, Br2c4 ≠ ns, Br2c4 ≠ se, Br3c4 ≠ n
P-single: Pr3c5 = ns
H-single: Hr3c5 = 0
V-single: Vr3c5 = 1
P-single: Pr3c4 = nw
B-single: Br3c4 = e
P-single: Pr4c5 = ne
H-single: Hr4c5 = 1
horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
I-single: Ir3c5 = out
same-colour-in-r3{c5 c6} ==> Vr3c6 = 0
V-single: Vr3c6 = 0
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXXXX
XXOXOOO
XXXXOOX
OXOXXXX
XXOOXOX
OOOOXOX
XXXXXOX

.———.———.   .———.———.———.———.
|     2 | 2 |             3 |
.   .   .   .   .———.———.———.
| 1   1 | 3 | 2 |
.   .   .———.   .   .   .———.
| 2   0   2   1 |       | 3 |
.———.   .———.   .———.———.   .
    |   |   | 2       2     |
.———.   .   .———.   .———.   .
| 3   2 | 1   2 | 2 |   |   |
.———.———.   .   .   .   .   .
  2       1   2 | 2 | 2 |   |
.———.———.———.———.   .   .   .
|                 2 |   | 3 |
.———.———.———.———.———.   .———.

init-time = 56.45s, solve-time = 22.73s, total-time = 1m 19.18s
nb-facts=<Fact-92453>
Quasi-Loop max length = 12
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
