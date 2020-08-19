
(solve
5 5
. 3 . . 3
2 . 1 . .
2 1 3 . 3
. 3 . . .
. . 2 . 3
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . . 3
2 . 1 . .
2 1 3 . 3
. 3 . . .
. . 2 . 3

start init-grid-structure 0.00371408462524414
start create-csp-variables
start create-labels 0.00043797492980957
start init-physical-csp-links 0.00285601615905762
start init-physical-non-csp-links 1.12339305877686
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.304325819015503
     start init-physical-BN-non-csp-links at local time 1.0804169178009
     start init-physical-BP-non-csp-links at local time 1.88231801986694
     end init-physical-BP-non-csp-links at local time 12.400839805603
end init-physical-non-csp-links 13.5242660045624
start init-corner-B-c-values 13.5282030105591
start init-outer-B-candidates 13.5282559394836
start init-outer-I-candidates 13.5285229682922
start init-H-candidates 13.5287511348724
start init-V-candidates 13.5294589996338
start init-P-candidates 13.5301959514618
start init-inner-I-candidates 13.5316359996796
start init-inner-N-and-B-candidates 13.5320949554443
start solution 13.534600019455
entering BRT
w[1]-3-in-se-corner ==> Vr5c6 = 1, Hr6c5 = 1
H-single: Hr6c5 = 1
V-single: Vr5c6 = 1
w[1]-3-in-ne-corner ==> Vr1c6 = 1, Hr1c5 = 1
H-single: Hr1c5 = 1
V-single: Vr1c6 = 1
w[1]-diagonal-3s-in-{r3c3...r4c2} ==> Vr3c4 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr3c3 = 1, Vr2c4 = 0, Vr5c2 = 0, Hr5c1 = 0, Hr3c4 = 0
H-single: Hr3c4 = 0
H-single: Hr5c1 = 0
V-single: Vr5c2 = 0
V-single: Vr2c4 = 0
H-single: Hr3c3 = 1
H-single: Hr5c2 = 1
V-single: Vr4c2 = 1
V-single: Vr3c4 = 1
w[1]-1+3+1-in-r2c3+r3c3+r3c2 ==> Hr4c2 = 0, Hr2c3 = 0, Vr3c2 = 0
V-single: Vr3c2 = 0
H-single: Hr2c3 = 0
H-single: Hr4c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r2 r3}c3 ==> Vr2c3 = 0
V-single: Vr2c3 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
w[1]-3-in-r1c5-closed-ne-corner ==> Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
w[1]-3-in-r1c2-isolated-at-se-corner ==> Vr1c3 = 1, Hr2c2 = 1
H-single: Hr2c2 = 1
V-single: Vr1c3 = 1
w[1]-3-in-r1c2-closed-se-corner ==> Pr1c2 ≠ se, Pr1c2 ≠ o
entering level Loop with <Fact-27552>
entering level Col with <Fact-27630>
vertical-line-r5{c5 c6} ==> Ir5c5 = in
I-single: Ir5c5 = in
vertical-line-r1{c5 c6} ==> Ir1c5 = in
I-single: Ir1c5 = in
Starting_init_links_with_<Fact-27633>
650 candidates, 1922 csp-links and 7792 links. Density = 3.69%
starting non trivial part of solution
Entering_level_W1_with_<Fact-47066>
whip[1]: Vr1c3{1 .} ==> Br1c3 ≠ nes, Br1c3 ≠ o, Pr1c3 ≠ o, Pr1c3 ≠ ew, Pr2c3 ≠ o, Pr2c3 ≠ se, Pr2c3 ≠ ew, Pr2c3 ≠ sw, Br1c2 ≠ swn, Br1c3 ≠ n, Br1c3 ≠ e, Br1c3 ≠ s, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ se
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 0
whip[1]: Br1c2{nes .} ==> Pr2c2 ≠ o, Pr2c2 ≠ sw
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ ne
whip[1]: Pr2c3{nw .} ==> Br2c2 ≠ ne, Br2c2 ≠ wne, Br2c2 ≠ nes
whip[1]: Hr2c2{1 .} ==> Br2c2 ≠ esw, Br2c2 ≠ o, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Br1c2 ≠ wne, Br2c2 ≠ e, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ sw
P-single: Pr2c3 = nw
w[1]-1-in-r2c3-symmetric-nw-corner ==> Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ n, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn, Br2c3 ≠ w
whip[1]: Br2c3{s .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c4 ≠ sw, Pr3c3 ≠ nw
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ swn, Br3c4 ≠ wne, Br3c4 ≠ o, Br3c4 ≠ e, Br3c4 ≠ s
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br2c2{swn .} ==> Nr2c2 ≠ 0
whip[1]: Pr2c2{ew .} ==> Br1c1 ≠ se
whip[1]: Hr4c2{0 .} ==> Br4c2 ≠ nes, Pr4c2 ≠ ne, Pr4c2 ≠ se, Pr4c2 ≠ ew, Pr4c3 ≠ nw, Pr4c3 ≠ ew, Br3c2 ≠ s, Br4c2 ≠ swn, Br4c2 ≠ wne
B-single: Br4c2 = esw
V-single: Vr4c3 = 1
w[1]-3-in-r4c2-asymmetric-nw-corner ==> Vr5c3 = 0, Hr5c3 = 0
H-single: Hr5c3 = 0
V-single: Vr5c3 = 0
w[1]-2-in-r5c3-open-nw-corner ==> Hr6c3 = 1, Vr5c4 = 1, Hr6c4 = 0
H-single: Hr6c4 = 0
V-single: Vr5c4 = 1
H-single: Hr6c3 = 1
P-single: Pr6c4 = nw
P-single: Pr5c2 = ne
P-single: Pr5c3 = nw
horizontal-line-{r5 r6}c3 ==> Ir5c3 = in
I-single: Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
I-single: Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
I-single: Ir4c1 = in
vertical-line-r4{c1 c2} ==> Ir4c2 = out
I-single: Ir4c2 = out
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = out
I-single: Ir3c2 = out
no-vertical-line-r3{c1 c2} ==> Ir3c1 = out
I-single: Ir3c1 = out
vertical-line-r4{c2 c3} ==> Ir4c3 = in
I-single: Ir4c3 = in
vertical-line-r5{c3 c4} ==> Ir5c4 = out
I-single: Ir5c4 = out
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
V-single: Vr5c5 = 1
w[1]-3-in-r5c5-closed-sw-corner ==> Pr5c6 ≠ sw, Pr5c6 ≠ o
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
H-single: Hr4c1 = 1
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
V-single: Vr3c1 = 0
w[1]-diagonal-3-2-in-{r4c2...r3c1}-non-closed-nw-corner ==> Hr3c1 = 1
H-single: Hr3c1 = 1
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
V-single: Vr4c1 = 1
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
H-single: Hr6c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
V-single: Vr5c1 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
H-single: Hr6c2 = 1
whip[1]: Vr4c3{1 .} ==> Br4c3 ≠ o, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ s, Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ nes
whip[1]: Br4c3{wne .} ==> Nr4c3 ≠ 0
whip[1]: Hr5c3{0 .} ==> Pr5c4 ≠ nw, Pr5c4 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw
whip[1]: Pr5c4{se .} ==> Br4c4 ≠ ne, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br5c3 ≠ sw, Br5c4 ≠ ne, Br5c4 ≠ ns, Br5c4 ≠ se, Br5c4 ≠ nes, Br4c4 ≠ o, Br4c4 ≠ n, Br4c4 ≠ e, Br5c4 ≠ o, Br5c4 ≠ n, Br5c4 ≠ e, Br5c4 ≠ s
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 0
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Vr5c3{0 .} ==> Pr6c3 ≠ nw, Br5c2 ≠ e, Br5c2 ≠ ne, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ esw, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ ew
P-single: Pr6c3 = ew
B-single: Br5c3 = se
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ w, Br5c2 ≠ n, Br5c2 ≠ o, Br6c3 ≠ o, Br6c2 ≠ o, Br5c2 ≠ nw
B-single: Br6c2 = n
B-single: Br6c3 = n
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ esw, Br5c1 ≠ o, Br5c1 ≠ n
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 0
whip[1]: Br5c2{swn .} ==> Nr5c2 ≠ 0
whip[1]: Hr6c4{0 .} ==> Br6c4 ≠ n, Pr6c5 ≠ nw, Pr6c5 ≠ ew, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn
B-single: Br6c4 = o
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ nes
B-single: Br5c5 = esw
H-single: Hr5c5 = 0
P-single: Pr6c6 = nw
P-single: Pr6c5 = ne
P-single: Pr5c6 = ns
V-single: Vr4c6 = 1
w[1]-3-in-r3c5-hit-by-verti-line-at-se ==> Vr3c5 = 1, Hr3c5 = 1
H-single: Hr3c5 = 1
V-single: Vr3c5 = 1
V-single: Vr2c5 = 0
w[1]-3-in-r3c5-closed-nw-corner ==> Pr4c6 ≠ nw, Pr4c6 ≠ o
vertical-line-r4{c5 c6} ==> Ir4c5 = in
I-single: Ir4c5 = in
whip[1]: Hr5c5{0 .} ==> Br4c5 ≠ s, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ nes
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ o
B-single: Br6c5 = n
whip[1]: Pr6c5{ne .} ==> Br5c4 ≠ w, Br5c4 ≠ nw
whip[1]: Br5c4{wne .} ==> Nr5c4 ≠ 1
whip[1]: Pr5c6{ns .} ==> Br4c5 ≠ n, Br4c5 ≠ o, Br4c5 ≠ w, Br4c5 ≠ nw
whip[1]: Br4c5{wne .} ==> Nr4c5 ≠ 0
whip[1]: Vr4c6{1 .} ==> Br4c6 ≠ o
B-single: Br4c6 = w
whip[1]: Hr3c5{1 .} ==> Br2c5 ≠ o, Pr3c6 ≠ o, Pr3c6 ≠ ns, Pr3c5 ≠ o, Pr3c5 ≠ ns, Pr3c5 ≠ nw, Pr3c5 ≠ sw, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ nw, Br2c5 ≠ ew, Br2c5 ≠ wne, Br3c5 ≠ esw
whip[1]: Br3c5{nes .} ==> Pr4c5 ≠ o, Pr4c5 ≠ sw
whip[1]: Pr4c5{ew .} ==> Br4c4 ≠ wne, Br4c4 ≠ nes
whip[1]: Br4c4{ew .} ==> Nr4c4 ≠ 3
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes, Br3c4 ≠ nes, Br3c4 ≠ ne
whip[1]: Vr3c5{1 .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ew, Pr4c5 ≠ se, Pr4c5 ≠ ew, Br3c4 ≠ n, Br3c4 ≠ w, Br3c4 ≠ ns, Br3c4 ≠ sw, Br3c5 ≠ nes
P-single: Pr3c5 = se
whip[1]: Pr3c5{se .} ==> Br2c4 ≠ s, Br2c4 ≠ e, Br2c4 ≠ ne, Br2c4 ≠ ns, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn
whip[1]: Br2c5{nes .} ==> Pr2c5 ≠ ns, Pr2c5 ≠ se
whip[1]: Pr2c5{ew .} ==> Hr2c4 ≠ 0, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ n, Br1c4 ≠ e, Br1c4 ≠ w, Br1c4 ≠ ne, Br2c4 ≠ o, Br2c4 ≠ w
H-single: Hr2c4 = 1
whip[1]: Hr2c4{1 .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ns
whip[1]: Br2c4{nw .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ ew, Nr2c4 ≠ 0, Nr2c4 ≠ 3
whip[1]: Pr3c4{sw .} ==> Br3c3 ≠ swn
whip[1]: Br3c3{nes .} ==> Pr3c3 ≠ o, Pr4c4 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr4c4 ≠ sw
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ wne, Br4c4 ≠ nw
whip[1]: Br4c3{ew .} ==> Nr4c3 ≠ 3
whip[1]: Pr3c3{sw .} ==> Br3c2 ≠ w
whip[1]: Br3c2{e .} ==> Pr3c2 ≠ ns, Pr3c2 ≠ se, Pr3c3 ≠ sw, Pr4c2 ≠ ns
P-single: Pr4c2 = sw
w[1]-1-in-r2c3-asymmetric-sw-corner ==> Pr2c4 ≠ se
P-single: Pr2c4 = ne
V-single: Vr1c4 = 1
whip[1]: Pr4c2{sw .} ==> Br4c1 ≠ ns, Br4c1 ≠ w, Br4c1 ≠ s, Br4c1 ≠ e, Br4c1 ≠ n, Br4c1 ≠ o, Br3c1 ≠ ne, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn
whip[1]: Br4c1{nes .} ==> Pr4c1 ≠ ns, Pr5c1 ≠ ne, Nr4c1 ≠ 0, Nr4c1 ≠ 1
P-single: Pr4c1 = se
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ sw, Br4c1 ≠ ne, Br4c1 ≠ nes
B-single: Br4c1 = wne
N-single: Nr4c1 = 3
P-single: Pr5c1 = ns
B-single: Br3c1 = ns
w[1]-3-in-r1c2-symmetric-sw-corner ==> Vr1c2 = 1
V-single: Vr1c2 = 1
V-single: Vr2c2 = 0
H-single: Hr2c1 = 0
w[1]-3-in-r1c2-closed-sw-corner ==> Pr1c3 ≠ sw
P-single: Pr1c3 = se
H-single: Hr1c2 = 0
H-single: Hr1c3 = 1
H-single: Hr1c4 = 0
P-single: Pr3c2 = ew
H-single: Hr3c2 = 1
w[1]-3-in-r3c3-hit-by-horiz-line-at-nw ==> Hr4c3 = 1
H-single: Hr4c3 = 1
V-single: Vr4c4 = 0
H-single: Hr4c4 = 0
V-single: Vr3c3 = 0
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se
P-single: Pr3c3 = ew
P-single: Pr2c2 = ne
P-single: Pr3c1 = ne
w[1]-1-in-r3c2-asymmetric-nw-corner ==> Pr4c3 ≠ ns
P-single: Pr4c3 = se
no-vertical-line-r3{c2 c3} ==> Ir3c3 = out
I-single: Ir3c3 = out
vertical-line-r3{c3 c4} ==> Ir3c4 = in
I-single: Ir3c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
I-single: Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
I-single: Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
I-single: Ir2c2 = in
horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
I-single: Ir1c2 = out
vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = in
I-single: Ir1c3 = in
vertical-line-r1{c3 c4} ==> Ir1c4 = out
I-single: Ir1c4 = out
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
I-single: Ir2c5 = in
horizontal-line-{r2 r3}c5 ==> Ir3c5 = out
I-single: Ir3c5 = out
no-horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
I-single: Ir4c4 = in
same-colour-in-r4{c4 c5} ==> Vr4c5 = 0
V-single: Vr4c5 = 0
w[1]-3-in-r3c5-isolated-at-sw-corner ==> Hr4c5 = 1
H-single: Hr4c5 = 1
V-single: Vr3c6 = 0
w[1]-3-in-r3c5-closed-sw-corner ==> Pr3c6 ≠ sw
P-single: Pr3c6 = nw
V-single: Vr2c6 = 1
w[1]-3-in-r1c5-hit-by-verti-line-at-se ==> Vr1c5 = 1
V-single: Vr1c5 = 1
H-single: Hr2c5 = 0
w[1]-3-in-r1c5-closed-nw-corner ==> Pr2c6 ≠ nw, Pr2c6 ≠ o
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1
H-single: Hr5c4 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1

LOOP[36]: Vr1c1-Vr2c1-Hr3c1-Hr3c2-Hr3c3-Vr3c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2-Hr4c1-Vr4c1-Vr5c1-Hr6c1-Hr6c2-Hr6c3-Vr5c4-Hr5c4-Vr5c5-Hr6c5-Vr5c6-Vr4c6-Hr4c5-Vr3c5-Hr3c5-Vr2c6-Vr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Vr1c3-Hr2c2-Vr1c2- ==> Hr1c1 = 1
H-single: Hr1c1 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXOX
XXXXX
OOOXO
XOXXX
XXXOX

.———.   .———.   .———.
|   | 3 |   |   | 3 |
.   .———.   .———.   .
| 2       1         |
.———.———.———.   .———.
  2   1   3 |   | 3
.———.   .———.   .———.
|   | 3 |           |
.   .———.   .———.   .
|         2 |   | 3 |
.———.———.———.   .———.

init-time = 13.53s, solve-time = 4.51s, total-time = 18.05s
nb-facts=<Fact-48912>
Quasi-Loop max length = 36
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
