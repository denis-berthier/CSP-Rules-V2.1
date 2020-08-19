
(solve
5 5
. 3 . 3 .
. 1 . 3 .
2 . 1 . .
2 3 . 3 .
3 . 1 . 3
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 .
. 1 . 3 .
2 . 1 . .
2 3 . 3 .
3 . 1 . 3

start init-grid-structure 0.00400090217590332
start create-csp-variables
start create-labels 0.000399112701416016
start init-physical-csp-links 0.00278210639953613
start init-physical-non-csp-links 1.24618601799011
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.308718919754028
     start init-physical-BN-non-csp-links at local time 1.11834692955017
     start init-physical-BP-non-csp-links at local time 1.91644382476807
     end init-physical-BP-non-csp-links at local time 12.2697138786316
end init-physical-non-csp-links 13.5159270763397
start init-corner-B-c-values 13.5201199054718
start init-outer-B-candidates 13.5201637744904
start init-outer-I-candidates 13.5204479694366
start init-H-candidates 13.5206978321075
start init-V-candidates 13.5214259624481
start init-P-candidates 13.5222368240356
start init-inner-I-candidates 13.5235259532928
start init-inner-N-and-B-candidates 13.5239698886871
start solution 13.5263321399689
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
H-single: Hr6c5 = 1
V-single: Vr5c6 = 1
w[1]-3-in-sw-corner ==> Vr5c1 = 1, Hr6c1 = 1
H-single: Hr6c1 = 1
V-single: Vr5c1 = 1
w[1]-diagonal-3s-in-{r4c4...r5c5} ==> Vr4c4 = 1, Hr4c4 = 1, Vr3c4 = 0, Hr4c3 = 0
H-single: Hr4c3 = 0
V-single: Vr3c4 = 0
H-single: Hr4c4 = 1
V-single: Vr4c4 = 1
w[1]-diagonal-3s-in-{r4c2...r5c1} ==> Vr4c3 = 1, Hr4c2 = 1, Vr3c3 = 0
V-single: Vr3c3 = 0
H-single: Hr4c2 = 1
V-single: Vr4c3 = 1
w[1]-diagonal-1-1-in-{r3c3...r2c2}-with-no-se-outer-sides ==> Hr2c2 = 0, Vr2c2 = 0
V-single: Vr2c2 = 0
H-single: Hr2c2 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r5c1-closed-sw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
adjacent-3s-in-c4{r1 r2} ==> Hr3c4 = 1, Hr2c4 = 1, Hr1c4 = 1, Hr2c5 = 0, Hr2c3 = 0
H-single: Hr2c3 = 0
H-single: Hr2c5 = 0
H-single: Hr1c4 = 1
H-single: Hr2c4 = 1
H-single: Hr3c4 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r2 r1}c2 ==> Vr1c3 = 1, Hr3c2 = 0
H-single: Hr3c2 = 0
V-single: Vr1c3 = 1
w[1]-diagonal-3-1-in-{r2c4...r3c3}-open-end ==> Vr2c5 = 1
V-single: Vr2c5 = 1
V-single: Vr1c5 = 0
V-single: Vr3c5 = 0
H-single: Hr3c5 = 0
w[1]-3-in-r1c4-hit-by-verti-line-at-se ==> Vr1c4 = 1
V-single: Vr1c4 = 1
H-single: Hr1c3 = 0
V-single: Vr2c4 = 0
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
w[1]-3-in-r1c4-closed-sw-corner ==> Pr1c5 ≠ sw, Pr1c5 ≠ o
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
w[1]-3-in-r2c4-closed-se-corner ==> Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o
w[1]-1-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns
entering level Loop with <Fact-27601>
entering level Col with <Fact-27681>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
I-single: Ir5c5 = in
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
horizontal-line-{r0 r1}c4 ==> Ir1c4 = in
I-single: Ir1c4 = in
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
I-single: Ir1c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = in
I-single: Ir2c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
I-single: Ir3c5 = in
no-vertical-line-r3{c4 c5} ==> Ir3c4 = in
I-single: Ir3c4 = in
no-vertical-line-r3{c3 c4} ==> Ir3c3 = in
I-single: Ir3c3 = in
no-vertical-line-r3{c2 c3} ==> Ir3c2 = in
I-single: Ir3c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
I-single: Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
I-single: Ir2c1 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
I-single: Ir1c3 = out
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = out
I-single: Ir2c3 = out
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
I-single: Ir2c4 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
I-single: Ir4c2 = out
vertical-line-r4{c2 c3} ==> Ir4c3 = in
I-single: Ir4c3 = in
vertical-line-r4{c3 c4} ==> Ir4c4 = out
I-single: Ir4c4 = out
different-colours-in-{r2 r3}c3 ==> Hr3c3 = 1
H-single: Hr3c3 = 1
different-colours-in-r2{c2 c3} ==> Hr2c3 = 1
V-single: Vr2c3 = 1
w[1]-3-in-r1c2-hit-by-verti-line-at-se ==> Vr1c2 = 1, Hr1c2 = 1
H-single: Hr1c2 = 1
V-single: Vr1c2 = 1
H-single: Hr1c1 = 0
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-3-in-r1c2-closed-ne-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
no-horizontal-line-{r0 r1}c1 ==> Ir1c1 = out
I-single: Ir1c1 = out
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
H-single: Hr2c1 = 1
same-colour-in-r1{c0 c1} ==> Vr1c1 = 0
V-single: Vr1c1 = 0
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
V-single: Vr3c6 = 1
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
V-single: Vr2c6 = 1
different-colours-in-r1{c5 c6} ==> Hr1c6 = 1
V-single: Vr1c6 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
H-single: Hr1c5 = 1
Starting_init_links_with_<Fact-27919>
588 candidates, 1710 csp-links and 6629 links. Density = 3.84%
starting non trivial part of solution
Entering_level_W1_with_<Fact-44602>
whip[1]: Hr1c5{1 .} ==> Br1c5 ≠ sw, Br0c5 ≠ o, Br1c5 ≠ o, Pr1c6 ≠ o, Br1c5 ≠ s, Br1c5 ≠ w
P-single: Pr1c6 = sw
B-single: Br0c5 = s
whip[1]: Br1c5{nes .} ==> Pr2c6 ≠ o, Pr2c6 ≠ sw, Pr2c5 ≠ ne, Nr1c5 ≠ 0, Nr1c5 ≠ 1
whip[1]: Pr2c5{sw .} ==> Br1c4 ≠ esw, Br1c4 ≠ nes, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ o, Br2c5 ≠ e, Br2c5 ≠ s
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Br1c4{wne .} ==> Pr1c4 ≠ o, Pr1c4 ≠ ew, Pr1c4 ≠ sw, Pr1c5 ≠ se, Pr2c4 ≠ ew, Pr2c4 ≠ sw
P-single: Pr1c5 = ew
P-single: Pr1c4 = se
whip[1]: Pr1c5{ew .} ==> Br1c4 ≠ wne, Br1c5 ≠ wne
B-single: Br1c4 = swn
P-single: Pr2c4 = ne
whip[1]: Pr2c4{ne .} ==> Br2c3 ≠ n, Br1c3 ≠ n, Br1c3 ≠ o, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br1c3 ≠ nes, Br2c3 ≠ e, Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne
B-single: Br2c4 = nes
P-single: Pr2c5 = sw
P-single: Pr3c5 = nw
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ ns, Br2c5 ≠ ne, Br2c5 ≠ n, Br1c5 ≠ nes, Br2c5 ≠ nes
B-single: Br1c5 = ne
N-single: Nr1c5 = 2
P-single: Pr2c6 = ns
whip[1]: Pr2c6{ns .} ==> Br2c5 ≠ w, Br2c5 ≠ sw
whip[1]: Br2c5{esw .} ==> Pr3c6 ≠ o, Pr3c6 ≠ sw, Nr2c5 ≠ 1
whip[1]: Pr3c6{nw .} ==> Br3c5 ≠ w, Br3c5 ≠ ne, Br3c5 ≠ sw, Br3c5 ≠ wne, Br3c5 ≠ nes, Br3c5 ≠ o, Br3c5 ≠ s
whip[1]: Br3c5{swn .} ==> Nr3c5 ≠ 0
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ n, Br3c4 ≠ s, Br3c4 ≠ e, Br3c4 ≠ o, Br2c5 ≠ esw, Br3c4 ≠ w, Br3c4 ≠ ne, Br3c4 ≠ se, Br3c4 ≠ ew, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ swn
B-single: Br2c5 = ew
N-single: Nr2c5 = 2
P-single: Pr3c6 = ns
whip[1]: Br3c5{se .} ==> Pr4c6 ≠ o, Pr4c6 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ ns, Pr4c5 ≠ nw, Nr3c5 ≠ 3
whip[1]: Pr4c6{nw .} ==> Br4c5 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ sw, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c5 ≠ o, Br4c5 ≠ s
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 0
whip[1]: Br3c4{swn .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c4{ew .} ==> Br3c3 ≠ s, Br3c3 ≠ w
whip[1]: Br3c3{e .} ==> Pr4c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ sw, Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr4c4 ≠ sw
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c3 ≠ n
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c2 ≠ e, Br3c2 ≠ ne
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ esw, Br4c2 ≠ swn
whip[1]: Br4c2{nes .} ==> Pr4c2 ≠ o, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Pr4c2 ≠ sw, Pr4c3 ≠ o, Pr5c3 ≠ o, Pr5c3 ≠ se, Pr5c3 ≠ ew, Pr5c3 ≠ sw
P-single: Pr4c3 = sw
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ s, Br4c3 ≠ e, Br4c3 ≠ o, Br3c2 ≠ w, Br3c2 ≠ n, Br3c2 ≠ o, Br3c2 ≠ nw, Br4c3 ≠ se
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 0
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr5c3{nw .} ==> Br5c2 ≠ ne, Br5c2 ≠ wne, Br5c2 ≠ nes
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ se, Br4c1 ≠ ne
whip[1]: Br4c1{sw .} ==> Pr5c1 ≠ o
whip[1]: Br3c1{sw .} ==> Pr3c1 ≠ o
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ ne, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ e
whip[1]: Br2c1{nes .} ==> Nr2c1 ≠ 0
whip[1]: Br2c3{sw .} ==> Pr2c3 ≠ ne, Pr2c3 ≠ ew, Nr2c3 ≠ 3
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ esw, Br1c2 ≠ nes, Br2c2 ≠ n, Br2c2 ≠ s, Br2c2 ≠ w, Br2c3 ≠ o, Br2c3 ≠ s
B-single: Br2c2 = e
w[1]-3-in-r4c2-asymmetric-nw-corner ==> Hr5c2 = 1, Vr5c3 = 0, Hr5c3 = 0
H-single: Hr5c3 = 0
V-single: Vr5c3 = 0
H-single: Hr5c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-ne ==> Vr4c2 = 0
V-single: Vr4c2 = 0
P-single: Pr4c1 = ne
H-single: Hr4c1 = 1
V-single: Vr3c1 = 1
V-single: Vr4c1 = 0
w[1]-3-in-r4c2-hit-by-horiz-line-at-nw ==> Vr3c2 = 0
V-single: Vr3c2 = 0
adjacent-3-2-in-r4{c2 c1}-noline-west ==> Vr5c2 = 0
V-single: Vr5c2 = 0
P-single: Pr3c2 = o
H-single: Hr3c1 = 0
P-single: Pr4c2 = ew
P-single: Pr2c2 = nw
P-single: Pr2c3 = ns
P-single: Pr3c3 = ne
w[1]-1-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ ns, Pr4c4 ≠ ne
no-horizontal-line-{r2 r3}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
I-single: Ir4c1 = out
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
I-single: Ir5c2 = in
no-vertical-line-r5{c2 c3} ==> Ir5c3 = in
I-single: Ir5c3 = in
different-colours-in-{r5 r6}c3 ==> Hr6c3 = 1
H-single: Hr6c3 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
H-single: Hr6c2 = 1
w[1]-3-in-r5c1-hit-by-horiz-line-at-se ==> Hr5c1 = 1
H-single: Hr5c1 = 1
w[1]-3-in-r5c1-closed-nw-corner ==> Pr6c2 ≠ nw, Pr6c2 ≠ o
whip[1]: Hr5c3{0 .} ==> Pr5c3 ≠ ne, Pr5c4 ≠ nw, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Br4c3 ≠ sw, Br4c3 ≠ esw, Br5c3 ≠ n
whip[1]: Br5c3{w .} ==> Pr6c3 ≠ ne, Pr6c4 ≠ nw
whip[1]: Pr6c4{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ ew, Br5c4 ≠ wne, Br5c4 ≠ w
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ ew, Br5c2 ≠ e
whip[1]: Br4c3{ew .} ==> Nr4c3 ≠ 3
whip[1]: Pr5c3{nw .} ==> Br5c2 ≠ w, Br5c2 ≠ sw, Br5c2 ≠ o, Br5c2 ≠ s
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0
whip[1]: Vr5c3{0 .} ==> Pr6c3 ≠ nw, Pr5c3 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ esw, Br5c3 ≠ w
P-single: Pr5c3 = nw
w[1]-1-in-r5c3-symmetric-nw-corner ==> Pr6c4 ≠ o
whip[1]: Pr5c3{nw .} ==> Br4c2 ≠ wne
B-single: Br4c2 = nes
P-single: Pr5c2 = ew
whip[1]: Pr5c2{ew .} ==> Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br5c1 ≠ esw, Br5c2 ≠ nw, Br5c2 ≠ swn
B-single: Br5c1 = swn
P-single: Pr6c1 = ne
P-single: Pr6c2 = ew
P-single: Pr5c1 = se
whip[1]: Pr6c1{ne .} ==> Br6c1 ≠ o
B-single: Br6c1 = n
whip[1]: Pr6c2{ew .} ==> Br5c2 ≠ n, Br6c2 ≠ o
B-single: Br6c2 = n
P-single: Pr6c3 = ew
B-single: Br5c2 = ns
N-single: Nr5c2 = 2
w[1]-1-in-r5c3-asymmetric-sw-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ ns
w[1]-3-in-r4c4-symmetric-sw-corner ==> Hr5c4 = 1
H-single: Hr5c4 = 1
V-single: Vr5c4 = 0
w[1]-3-in-r5c5-hit-by-horiz-line-at-nw ==> Vr4c5 = 0
V-single: Vr4c5 = 0
w[1]-3-in-r4c4-closed-sw-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ o
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
I-single: Ir4c5 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
I-single: Ir5c4 = in
same-colour-in-r5{c4 c5} ==> Vr5c5 = 0
V-single: Vr5c5 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
H-single: Hr6c4 = 1
w[1]-3-in-r5c5-hit-by-horiz-line-at-sw ==> Hr5c5 = 1
H-single: Hr5c5 = 1
V-single: Vr4c6 = 0
w[1]-3-in-r5c5-closed-ne-corner ==> Pr6c5 ≠ ne, Pr6c5 ≠ o

LOOP[34]: Vr3c6-Vr2c6-Vr1c6-Hr1c5-Hr1c4-Vr1c4-Hr2c4-Vr2c5-Hr3c4-Hr3c3-Vr2c3-Vr1c3-Hr1c2-Vr1c2-Hr2c1-Vr2c1-Vr3c1-Hr4c1-Hr4c2-Vr4c3-Hr5c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Hr6c4-Hr6c5-Vr5c6-Hr5c5-Hr5c4-Vr4c4-Hr4c4- ==> Hr4c5 = 1
H-single: Hr4c5 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOXX
XXOOX
XXXXX
OOXOO
XXXXX

.   .———.   .———.———.
    | 3 |   | 3     |
.———.   .   .———.   .
|     1 |     3 |   |
.   .   .———.———.   .
| 2       1         |
.———.———.   .———.———.
  2   3 |   | 3
.———.———.   .———.———.
| 3       1       3 |
.———.———.———.———.———.

init-time = 13.53s, solve-time = 4.24s, total-time = 17.77s
nb-facts=<Fact-45861>
Quasi-Loop max length = 34
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
