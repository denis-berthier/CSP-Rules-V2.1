
(solve
5 5
. . 3 . .
2 . . 0 2
2 . 3 . .
. 3 . 1 2
2 2 . 3 .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 3 . .
2 . . 0 2
2 . 3 . .
. 3 . 1 2
2 2 . 3 .

start init-grid-structure 0.00411701202392578
start create-csp-variables
start create-labels 0.000406026840209961
start init-physical-csp-links 0.00270605087280273
start init-physical-non-csp-links 1.24871110916138
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.316818952560425
     start init-physical-BN-non-csp-links at local time 1.13754391670227
     start init-physical-BP-non-csp-links at local time 1.9658567905426
     end init-physical-BP-non-csp-links at local time 12.2375178337097
end init-physical-non-csp-links 13.4862589836121
start init-corner-B-c-values 13.4905660152435
start init-outer-B-candidates 13.4906160831451
start init-outer-I-candidates 13.4909009933472
start init-H-candidates 13.4911470413208
start init-V-candidates 13.4918880462646
start init-P-candidates 13.4926121234894
start init-inner-I-candidates 13.4941830635071
start init-inner-N-and-B-candidates 13.4946360588074
start solution 13.4970901012421
entering BRT
w0-0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
w[1]-2-in-sw-corner ==> Vr4c1 = 1, Hr6c2 = 1
H-single: Hr6c2 = 1
V-single: Vr4c1 = 1
w[1]-diagonal-3-0-in-{r3c3...r2c4} ==> Vr3c4 = 1, Hr3c3 = 1
H-single: Hr3c3 = 1
V-single: Vr3c4 = 1
w[1]-diagonal-3-0-in-{r1c3...r2c4} ==> Vr1c4 = 1, Hr2c3 = 1
H-single: Hr2c3 = 1
V-single: Vr1c4 = 1
w[1]-diagonal-3s-in-{r3c3...r4c2} ==> Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
H-single: Hr5c1 = 0
V-single: Vr5c2 = 0
H-single: Hr5c2 = 1
V-single: Vr4c2 = 1
w[1]-2-in-r5c1-open-ne-corner ==> Hr6c1 = 1, Vr5c1 = 1
V-single: Vr5c1 = 1
H-single: Hr6c1 = 1
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
w[1]-3-in-r1c3-closed-se-corner ==> Pr1c3 ≠ se, Pr1c3 ≠ o
diagonal-2-3-in-se-corner ==> Vr5c4 = 0
V-single: Vr5c4 = 1
diagonal-2-3+1-in-se-corner ==> Vr5c5 = 0
V-single: Vr5c5 = 1
P-single: Pr6c2 = ew
P-single: Pr6c1 = ne
entering level Loop with <Fact-27550>
entering level Col with <Fact-27628>
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
I-single: Ir5c2 = in
horizontal-line-{r4 r5}c2 ==> Ir4c2 = out
I-single: Ir4c2 = out
vertical-line-r4{c1 c2} ==> Ir4c1 = in
I-single: Ir4c1 = in
Starting_init_links_with_<Fact-27633>
596 candidates, 1660 csp-links and 6502 links. Density = 3.67%
starting non trivial part of solution
Entering_level_W1_with_<Fact-43962>
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ ne, Br6c1 ≠ o
B-single: Br6c1 = n
B-single: Br5c1 = sw
P-single: Pr5c1 = ns
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ e, Br4c1 ≠ n, Br4c1 ≠ o, Br4c1 ≠ s, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ se, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ nes
whip[1]: Br4c1{wne .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ne, Nr4c1 ≠ 0
whip[1]: Pr3c2{ew .} ==> Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br3c1 ≠ sw, Br2c2 ≠ o, Br2c2 ≠ n, Br2c2 ≠ e, Br2c2 ≠ ne, Br3c1 ≠ ne
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Pr6c2{ew .} ==> Br5c2 ≠ sw, Br6c2 ≠ o, Br5c2 ≠ ne, Br5c2 ≠ nw, Br5c2 ≠ ew
B-single: Br6c2 = n
whip[1]: Pr6c3{ew .} ==> Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ o, Br5c3 ≠ n, Br5c3 ≠ e, Br5c3 ≠ ne
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Vr5c5{1 .} ==> Br5c5 ≠ nes, Br5c5 ≠ o, Pr6c5 ≠ o, Pr6c5 ≠ ew, Pr5c5 ≠ o, Pr5c5 ≠ ne, Pr5c5 ≠ nw, Pr5c5 ≠ ew, Br5c4 ≠ swn, Br5c5 ≠ n, Br5c5 ≠ se
whip[1]: Br5c5{esw .} ==> Pr5c6 ≠ sw, Nr5c5 ≠ 0
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ ns, Br4c5 ≠ sw
whip[1]: Br4c5{ew .} ==> Pr4c6 ≠ o
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ w
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br5c4{nes .} ==> Pr6c4 ≠ o, Pr5c4 ≠ o, Pr5c4 ≠ nw
whip[1]: Pr5c4{sw .} ==> Br4c3 ≠ se, Br4c3 ≠ esw, Br4c3 ≠ nes
whip[1]: Pr6c4{ew .} ==> Br5c3 ≠ nw, Br5c3 ≠ w
whip[1]: Vr5c4{1 .} ==> Br5c4 ≠ nes, Pr6c4 ≠ ew, Pr5c4 ≠ ne, Pr5c4 ≠ ew, Br5c3 ≠ s, Br5c3 ≠ ns
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 1
whip[1]: Vr4c2{1 .} ==> Br4c2 ≠ nes, Pr4c2 ≠ o, Pr4c2 ≠ ne, Pr4c2 ≠ nw, Pr4c2 ≠ ew, Pr5c2 ≠ o, Br4c1 ≠ w, Br4c1 ≠ nw
P-single: Pr6c3 = ew
H-single: Hr6c3 = 1
V-single: Vr5c3 = 0
H-single: Hr6c4 = 0
w[1]-3-in-r5c4-hit-by-horiz-line-at-sw ==> Hr5c4 = 1
H-single: Hr5c4 = 1
V-single: Vr4c4 = 0
H-single: Hr5c3 = 0
V-single: Vr4c5 = 0
H-single: Hr5c5 = 0
w[1]-2-in-r4c5-open-sw-corner ==> Hr4c5 = 1, Vr4c6 = 1, Vr3c6 = 0
V-single: Vr3c6 = 0
V-single: Vr4c6 = 1
H-single: Hr4c5 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r4 r5}c4 ==> Hr4c4 = 0
H-single: Hr4c4 = 0
w[1]-3-in-r5c4-closed-nw-corner ==> Pr6c5 ≠ nw
w[1]-3-in-r5c4-closed-ne-corner ==> Pr6c4 ≠ ne
w[1]-3-in-r3c3-isolated-at-se-corner ==> Hr4c3 = 1
H-single: Hr4c3 = 1
w[1]-3-in-r4c2-hit-by-horiz-line-at-ne ==> Vr3c3 = 0
V-single: Vr3c3 = 0
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
w[1]-3-in-r4c2-isolated-at-se-corner ==> Vr4c3 = 1
V-single: Vr4c3 = 1
H-single: Hr4c2 = 0
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ se
P-single: Pr6c4 = nw
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
P-single: Pr5c6 = ns
V-single: Vr5c6 = 1
P-single: Pr5c2 = ne
vertical-line-r5{c5 c6} ==> Ir5c5 = in
I-single: Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
I-single: Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
I-single: Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
I-single: Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
I-single: Ir5c3 = in
vertical-line-r5{c3 c4} ==> Ir5c4 = out
I-single: Ir5c4 = out
horizontal-line-{r3 r4}c3 ==> Ir3c3 = out
I-single: Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
I-single: Ir3c2 = out
vertical-line-r3{c3 c4} ==> Ir3c4 = in
I-single: Ir3c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
I-single: Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
I-single: Ir2c3 = in
horizontal-line-{r1 r2}c3 ==> Ir1c3 = out
I-single: Ir1c3 = out
vertical-line-r1{c3 c4} ==> Ir1c4 = in
I-single: Ir1c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
I-single: Ir2c5 = in
horizontal-line-{r3 r4}c5 ==> Ir3c5 = out
I-single: Ir3c5 = out
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
V-single: Vr3c5 = 1
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
H-single: Hr3c5 = 1
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
V-single: Vr2c6 = 1
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
H-single: Hr1c4 = 1
H-single: Hr1c3 = 0
w[1]-3-in-r1c3-hit-by-horiz-line-at-ne ==> Vr1c3 = 1
V-single: Vr1c3 = 1
V-single: Vr2c3 = 0
H-single: Hr2c2 = 0
w[1]-3-in-r1c3-closed-sw-corner ==> Pr1c4 ≠ sw, Pr1c4 ≠ o
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
different-colours-in-{r2 r3}c2 ==> Hr3c2 = 1
H-single: Hr3c2 = 1

LOOP[8]: Hr3c2-Hr3c3-Vr3c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2- ==> Vr3c2 = 0
V-single: Vr3c2 = 0
no-vertical-line-r3{c1 c2} ==> Ir3c1 = out
I-single: Ir3c1 = out
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
H-single: Hr4c1 = 1
V-single: Vr3c1 = 0
w[1]-diagonal-3-2-in-{r4c2...r3c1}-non-closed-nw-corner ==> Hr3c1 = 1
H-single: Hr3c1 = 1
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
same-colour-in-r2{c1 c2} ==> Vr2c2 = 0
V-single: Vr2c2 = 0
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
whip[1]: Pr6c3{ew .} ==> Br6c3 ≠ o, Br5c2 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ wne
B-single: Br5c2 = ns
B-single: Br6c3 = n
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ wne, Br4c3 ≠ sw, Br4c3 ≠ swn, Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ ne
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 0
whip[1]: Hr6c4{0 .} ==> Br6c4 ≠ n, Br5c4 ≠ esw
B-single: Br5c4 = wne
P-single: Pr4c6 = sw
P-single: Pr5c4 = se
P-single: Pr5c5 = sw
B-single: Br6c4 = o
w[1]-1-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne
w[1]-1-in-r4c4-asymmetric-sw-corner ==> Pr4c5 ≠ ew, Pr4c5 ≠ ns
whip[1]: Pr4c6{sw .} ==> Br3c5 ≠ ne, Br3c5 ≠ e, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ wne, Br3c5 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew
B-single: Br4c5 = ne
P-single: Pr4c5 = ne
whip[1]: Pr4c5{ne .} ==> Br4c4 ≠ n, Br3c4 ≠ n, Br3c4 ≠ o, Br3c4 ≠ s, Br3c4 ≠ w, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br3c4 ≠ nes, Br3c5 ≠ s, Br3c5 ≠ ns, Br4c4 ≠ e
whip[1]: Br4c4{w .} ==> Pr4c4 ≠ se
whip[1]: Pr4c4{nw .} ==> Br3c3 ≠ swn, Br3c3 ≠ wne, Br4c3 ≠ ew, Br4c3 ≠ wne, Br4c4 ≠ w
B-single: Br4c4 = s
whip[1]: Br4c3{nw .} ==> Nr4c3 ≠ 3
whip[1]: Br3c3{nes .} ==> Pr3c4 ≠ o, Pr4c3 ≠ ns, Pr4c3 ≠ nw, Pr4c4 ≠ o
P-single: Pr4c4 = nw
P-single: Pr3c4 = sw
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ s, Br3c4 ≠ e, Br3c4 ≠ ne, Br4c3 ≠ w
whip[1]: Br4c3{nw .} ==> Nr4c3 ≠ 1
N-single: Nr4c3 = 2
P-single: Pr4c3 = se
whip[1]: Pr4c3{se .} ==> Br3c2 ≠ s, Br3c2 ≠ e, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c3 ≠ esw, Br4c2 ≠ swn, Br4c3 ≠ ns
B-single: Br4c3 = nw
P-single: Pr5c3 = nw
B-single: Br4c2 = esw
B-single: Br3c3 = nes
whip[1]: Pr5c3{nw .} ==> Br5c3 ≠ nes
B-single: Br5c3 = se
N-single: Nr5c3 = 2
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ nes, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ wne, Br2c2 ≠ w, Br2c3 ≠ o, Br2c3 ≠ n, Br2c3 ≠ e, Br2c3 ≠ w, Br2c3 ≠ ne
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{nw .} ==> Nr3c2 ≠ 3
whip[1]: Br3c4{wne .} ==> Pr3c5 ≠ o, Nr3c4 ≠ 0, Nr3c4 ≠ 1
P-single: Pr3c5 = se
whip[1]: Pr3c5{se .} ==> Br2c5 ≠ ne, Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ sw, Br3c4 ≠ wne, Br3c5 ≠ sw
B-single: Br3c5 = swn
N-single: Nr3c5 = 3
P-single: Pr2c5 = o
H-single: Hr2c5 = 0
V-single: Vr1c5 = 0
P-single: Pr3c6 = nw
B-single: Br3c4 = ew
N-single: Nr3c4 = 2
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
I-single: Ir1c5 = in
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
V-single: Vr1c6 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
H-single: Hr1c5 = 1
whip[1]: Pr2c5{o .} ==> Br1c4 ≠ e, Br1c4 ≠ s, Br1c4 ≠ ne, Br1c4 ≠ ns, Br1c4 ≠ se, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ sw, Br1c5 ≠ wne, Br1c5 ≠ nes, Br2c5 ≠ ns
B-single: Br2c5 = se
P-single: Pr2c6 = ns
whip[1]: Pr2c6{ns .} ==> Br1c5 ≠ o
B-single: Br1c5 = ne
N-single: Nr1c5 = 2
P-single: Pr1c6 = sw
P-single: Pr1c5 = ew
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ w, Br1c4 ≠ o
whip[1]: Br1c4{nw .} ==> Nr1c4 ≠ 0, Nr1c4 ≠ 3
whip[1]: Vr1c6{1 .} ==> Br1c6 ≠ o
B-single: Br1c6 = w
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ se, Br2c3 ≠ esw, Br2c3 ≠ nes
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ nw
whip[1]: Br5c5{esw .} ==> Nr5c5 ≠ 2
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ w
B-single: Br3c6 = o
whip[1]: Vr4c6{1 .} ==> Br4c6 ≠ o
B-single: Br4c6 = w
whip[1]: Pr6c5{ne .} ==> Br6c5 ≠ o, Br5c5 ≠ w
B-single: Br5c5 = esw
N-single: Nr5c5 = 3
P-single: Pr6c6 = nw
B-single: Br6c5 = n
whip[1]: Vr5c6{1 .} ==> Br5c6 ≠ o
B-single: Br5c6 = w
whip[1]: Vr2c6{1 .} ==> Br2c6 ≠ o
B-single: Br2c6 = w
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s, Pr1c3 ≠ ew, Pr1c4 ≠ ew, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ nes
P-single: Pr1c4 = se
P-single: Pr1c3 = sw
B-single: Br1c3 = esw
P-single: Pr2c3 = ne
P-single: Pr2c4 = nw
B-single: Br0c3 = o
whip[1]: Pr1c4{se .} ==> Br1c4 ≠ n
B-single: Br1c4 = nw
N-single: Nr1c4 = 2
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ ns, Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ e, Br1c2 ≠ n, Br1c2 ≠ o, Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ o, Pr1c2 ≠ sw, Pr2c2 ≠ ne, Nr1c2 ≠ 0, Nr1c2 ≠ 1
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ ne
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ wne, Br1c1 ≠ o, Br1c1 ≠ s
whip[1]: Br1c1{swn .} ==> Nr1c1 ≠ 0
whip[1]: Pr2c3{ne .} ==> Br1c2 ≠ nes, Br2c2 ≠ ns, Br2c2 ≠ ew, Br2c2 ≠ wne, Br2c3 ≠ s, Br2c3 ≠ sw, Br2c3 ≠ swn
B-single: Br2c3 = ns
N-single: Nr2c3 = 2
P-single: Pr3c3 = ew
B-single: Br2c2 = s
N-single: Nr2c2 = 1
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ w, Br3c2 ≠ o
whip[1]: Br3c2{nw .} ==> Nr3c2 ≠ 0
whip[1]: Pr2c2{nw .} ==> Br1c1 ≠ swn, Br2c1 ≠ se, Br2c1 ≠ ew, Br1c1 ≠ e
whip[1]: Br1c1{se .} ==> Pr2c1 ≠ ne, Nr1c1 ≠ 1, Nr1c1 ≠ 3
N-single: Nr1c1 = 2
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ ns
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Vr3c2{0 .} ==> Pr3c2 ≠ se, Pr4c2 ≠ ns, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c2 ≠ nw
P-single: Pr2c1 = ns
H-single: Hr2c1 = 0
V-single: Vr1c1 = 1
P-single: Pr3c1 = ne
P-single: Pr1c1 = se
H-single: Hr1c1 = 1
P-single: Pr2c2 = o
V-single: Vr1c2 = 0
P-single: Pr4c2 = sw
P-single: Pr3c2 = ew
B-single: Br3c2 = n
N-single: Nr3c2 = 1
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXX
XXXXX
OOOXO
XOXXX
XXXOX

.———.———.   .———.———.
|       | 3 |       |
.   .   .———.   .   .
| 2           0   2 |
.———.———.———.   .———.
  2       3 |   |
.———.   .———.   .———.
|   | 3 |     1   2 |
.   .———.   .———.   .
| 2   2     | 3 |   |
.———.———.———.   .———.

init-time = 13.5s, solve-time = 4.54s, total-time = 18.04s
nb-facts=<Fact-46968>
Quasi-Loop max length = 8
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
