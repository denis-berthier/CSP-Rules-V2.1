
(solve
15 15
. . . 2 2 . . 3 . 2 1 2 . . 1
2 2 . . . 1 . 2 . . 1 . . . 3
2 2 . 1 1 2 1 0 . . . 2 . 3 2
3 . . . . . . . . . 1 2 . . 3
2 . 1 0 . . . 3 . 1 . . 2 . 2
3 . . 1 . . 3 . 1 1 . . 1 . .
3 1 3 . . 1 2 . . 2 2 . . . 2
. . 3 . 2 . 2 . 2 . 2 . . 1 1
. 2 . 1 2 . 3 2 . 2 1 1 2 2 .
. . . 2 2 2 . 1 1 2 2 . . . .
2 . . . . . . 3 2 2 . . 0 2 3
2 2 . . . 1 1 1 . . . 1 . 1 .
3 . . 2 . 2 . . . . . 2 . 2 3
3 . 1 3 . 2 . . 3 . . . 1 1 .
. 1 . 2 1 . 3 3 2 2 2 . . 2 . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 2 2 . . 3 . 2 1 2 . . 1
2 2 . . . 1 . 2 . . 1 . . . 3
2 2 . 1 1 2 1 0 . . . 2 . 3 2
3 . . . . . . . . . 1 2 . . 3
2 . 1 0 . . . 3 . 1 . . 2 . 2
3 . . 1 . . 3 . 1 1 . . 1 . .
3 1 3 . . 1 2 . . 2 2 . . . 2
. . 3 . 2 . 2 . 2 . 2 . . 1 1
. 2 . 1 2 . 3 2 . 2 1 1 2 2 .
. . . 2 2 2 . 1 1 2 2 . . . .
2 . . . . . . 3 2 2 . . 0 2 3
2 2 . . . 1 1 1 . . . 1 . 1 .
3 . . 2 . 2 . . . . . 2 . 2 3
3 . 1 3 . 2 . . 3 . . . 1 1 .
. 1 . 2 1 . 3 3 2 2 2 . . 2 .

Loading pre-computed background
start init-inner-N-and-B-candidates 1.15077495574951
start solution 1.17610192298889
entering BRT
w[0]-0-in-r11c13 ==> Hr12c13 = 0, Hr11c13 = 0, Vr11c14 = 0, Vr11c13 = 0
w[0]-0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[1]-1-in-ne-corner ==> Vr1c16 = 0, Hr1c15 = 0
w[1]-diagonal-3s-in-{r14c9...r15c8} ==> Vr14c10 = 1, Vr15c8 = 1, Hr16c8 = 1, Hr14c9 = 1, Vr13c10 = 0, Hr16c7 = 0, Hr14c10 = 0
w[1]-diagonal-3s-in-{r5c8...r6c7} ==> Vr5c9 = 1, Vr6c7 = 1, Hr7c7 = 1, Hr5c8 = 1, Vr4c9 = 0, Vr7c7 = 0, Hr7c6 = 0, Hr5c9 = 0
w[1]-diagonal-3s-in-{r3c14...r4c15} ==> Vr4c16 = 1, Vr3c14 = 1, Hr5c15 = 1, Hr3c14 = 1, Vr5c16 = 0, Vr2c14 = 0, Hr3c13 = 0
w[1]-diagonal-3s-in-{r2c15...r3c14} ==> Vr2c16 = 1, Hr4c14 = 1, Hr2c15 = 1, Vr4c14 = 0, Hr4c13 = 0
w[1]-3-in-r15c7-hit-by-horiz-line-at-se ==> Vr15c7 = 1, Hr15c7 = 1
w[1]-2-in-r14c6-open-se-corner ==> Hr14c6 = 1, Vr14c6 = 1, Hr14c5 = 0, Vr13c6 = 0
w[1]-3-in-r15c8-hit-by-horiz-line-at-nw ==> Vr15c9 = 1
w[1]-3-in-r4c15-hit-by-horiz-line-at-nw ==> Vr3c15 = 0
w[1]-adjacent-1-3-on-edge-in-{r1 r2}c15 ==> Vr1c15 = 0
w[1]-3-in-r15c8-closed-sw-corner ==> Pr15c9 ≠ sw, Pr15c9 ≠ ne
w[1]-3-in-r15c8-closed-se-corner ==> Pr15c8 ≠ se, Pr15c8 ≠ nw, Pr15c8 ≠ o
w[1]-3-in-r15c7-closed-ne-corner ==> Pr16c7 ≠ ne, Pr16c7 ≠ o
w[1]-3-in-r15c7-closed-nw-corner ==> Pr16c8 ≠ nw, Pr16c8 ≠ o
w[1]-3-in-r6c7-closed-sw-corner ==> Pr6c8 ≠ sw, Pr6c8 ≠ ne, Pr6c8 ≠ o
w[1]-3-in-r4c15-closed-se-corner ==> Pr4c15 ≠ se, Pr4c15 ≠ nw, Pr4c15 ≠ o
w[1]-3-in-r3c14-closed-sw-corner ==> Pr3c15 ≠ sw, Pr3c15 ≠ ne, Pr3c15 ≠ o
diagonal-3-1-in-sw-corner ==> Vr15c2 = 1, Hr15c1 = 0
adjacent-3s-in-c1{r13 r14} ==> Hr14c1 = 1, Hr13c1 = 1, Hr14c2 = 0
adjacent-3s-in-c3{r7 r8} ==> Hr9c3 = 1, Hr8c3 = 1, Hr7c3 = 1, Hr8c4 = 0, Hr8c2 = 0
adjacent-3s-in-c1{r6 r7} ==> Hr8c1 = 1, Hr7c1 = 1, Hr6c1 = 1, Hr7c2 = 0
w[3]-adjacent-3-2-0-in-r11{c15 c14 c13} ==> Vr11c16 = 1, Vr12c15 = 0, Vr10c15 = 0
w[3]-adjacent-3-2-0-in-c8{r1 r2 r3} ==> Hr1c8 = 1, Hr2c9 = 0, Hr2c7 = 0
w[3]-adjacent-3-2-in-{r14 r15}c9-noline-south ==> Hr15c10 = 0
square-of-2s-se-of-r2c1 ==> Pr3c2 ≠ o
w[1]-1-in-r1c15-symmetric-ne-corner ==> Pr2c15 ≠ sw, Pr2c15 ≠ ne, Pr2c15 ≠ o
w[1]-1-in-r15c5-asymmetric-ne-corner ==> Pr16c5 ≠ ew, Pr16c5 ≠ nw
entering level Loop with <Fact-197410>
entering level Col with <Fact-197490>
vertical-line-r11{c15 c16} ==> Ir11c15 = in
no-vertical-line-r5{c15 c16} ==> Ir5c15 = out
horizontal-line-{r4 r5}c15 ==> Ir4c15 = in
vertical-line-r2{c15 c16} ==> Ir2c15 = in
horizontal-line-{r1 r2}c15 ==> Ir1c15 = out
no-vertical-line-r1{c14 c15} ==> Ir1c14 = out
no-horizontal-line-{r15 r16}c9 ==> Ir15c9 = out
vertical-line-r15{c8 c9} ==> Ir15c8 = in
no-horizontal-line-{r14 r15}c8 ==> Ir14c8 = in
no-vertical-line-r14{c7 c8} ==> Ir14c7 = in
no-vertical-line-r14{c6 c7} ==> Ir14c6 = in
no-horizontal-line-{r14 r15}c6 ==> Ir15c6 = in
vertical-line-r15{c6 c7} ==> Ir15c7 = out
vertical-line-r14{c5 c6} ==> Ir14c5 = out
no-horizontal-line-{r13 r14}c5 ==> Ir13c5 = out
no-vertical-line-r13{c5 c6} ==> Ir13c6 = out
horizontal-line-{r0 r1}c8 ==> Ir1c8 = in
different-colours-in-{r15 r16}c6 ==> Hr16c6 = 1
same-colour-in-{r0 r1}c14 ==> Hr1c14 = 0
Starting_init_links_with_<Fact-197544>
2560 candidates, 18584 csp-links and 80697 links. Density = 2.46%
starting non trivial part of solution
Entering_level_W1_with_<Fact-396111>
whip[1]: Hr1c14{0 .} ==> Br1c14 ≠ nes, Br0c14 ≠ s, Pr1c14 ≠ se, Pr1c14 ≠ ew, Pr1c15 ≠ ew, Pr1c15 ≠ sw, Br1c14 ≠ n, Br1c14 ≠ ne, Br1c14 ≠ ns, Br1c14 ≠ nw, Br1c14 ≠ swn, Br1c14 ≠ wne
B-single: Br0c14 = o
w[1]-1-in-r1c15-symmetric-nw-corner ==> Pr2c16 ≠ nw, Pr2c16 ≠ o
whip[1]: Pr2c16{sw .} ==> Br2c15 ≠ swn, Br1c15 ≠ w
B-single: Br1c15 = s
whip[1]: Br1c15{s .} ==> Pr2c15 ≠ ns, Pr2c16 ≠ ns, Pr1c16 ≠ sw, Pr1c15 ≠ se, Pr2c15 ≠ nw
P-single: Pr1c15 = o
P-single: Pr1c16 = o
P-single: Pr2c16 = sw
whip[1]: Pr1c15{o .} ==> Br1c14 ≠ e, Br1c14 ≠ se, Br1c14 ≠ ew, Br1c14 ≠ esw
whip[1]: Br1c14{sw .} ==> Nr1c14 ≠ 3
whip[1]: Pr2c16{sw .} ==> Br2c15 ≠ esw
whip[1]: Br2c15{nes .} ==> Pr3c16 ≠ sw
whip[1]: Pr4c15{ew .} ==> Br3c14 ≠ esw, Br3c14 ≠ nes, Br3c15 ≠ sw, Br4c14 ≠ sw, Br4c14 ≠ wne, Br4c14 ≠ nes, Br4c15 ≠ swn, Br4c15 ≠ wne, Br3c15 ≠ ne, Br4c14 ≠ o, Br4c14 ≠ s, Br4c14 ≠ w, Br4c14 ≠ ne
whip[1]: Br4c14{swn .} ==> Nr4c14 ≠ 0
whip[1]: Br4c15{nes .} ==> Pr4c16 ≠ nw, Pr5c16 ≠ o, Pr5c16 ≠ ns, Pr5c15 ≠ ns, Pr5c15 ≠ sw
P-single: Pr5c16 = nw
whip[1]: Pr5c16{nw .} ==> Br5c15 ≠ ne, Br5c15 ≠ se, Br5c15 ≠ ew, Br5c15 ≠ sw
whip[1]: Br5c15{nw .} ==> Pr6c16 ≠ ns
whip[1]: Pr6c16{sw .} ==> Br6c15 ≠ nw, Br6c15 ≠ se, Br6c15 ≠ ew, Br6c15 ≠ esw, Br6c15 ≠ swn, Br6c15 ≠ n, Br6c15 ≠ e, Br6c15 ≠ ns
whip[1]: Pr6c15{ew .} ==> Br6c14 ≠ sw, Br6c14 ≠ wne, Br6c14 ≠ nes, Br6c14 ≠ o, Br6c14 ≠ s, Br6c14 ≠ w, Br6c14 ≠ ne
whip[1]: Br6c14{swn .} ==> Nr6c14 ≠ 0
whip[1]: Pr3c15{ew .} ==> Br2c14 ≠ nw, Br2c14 ≠ se, Br2c14 ≠ esw, Br2c14 ≠ nes, Br3c14 ≠ wne, Br3c15 ≠ nw, Br3c15 ≠ se, Br2c14 ≠ o, Br2c14 ≠ n, Br2c14 ≠ w
B-single: Br3c14 = swn
whip[1]: Br3c14{swn .} ==> Pr4c15 ≠ ns, Pr4c14 ≠ sw, Pr4c14 ≠ ew, Pr4c14 ≠ se, Pr4c14 ≠ nw, Pr4c14 ≠ ns, Pr4c14 ≠ o, Pr3c15 ≠ ns, Pr3c14 ≠ sw, Pr3c14 ≠ ew, Pr3c14 ≠ nw, Pr3c14 ≠ ns, Pr3c14 ≠ ne, Pr3c14 ≠ o
P-single: Pr3c14 = se
P-single: Pr3c15 = ew
P-single: Pr4c14 = ne
P-single: Pr4c15 = ew
whip[1]: Pr3c14{se .} ==> Br3c13 ≠ w, Br3c13 ≠ s, Br3c13 ≠ n, Br3c13 ≠ o, Br2c14 ≠ e, Br2c13 ≠ s, Br2c13 ≠ e, Br2c13 ≠ ne, Br2c13 ≠ ns, Br2c13 ≠ se, Br2c13 ≠ ew, Br2c13 ≠ sw, Br2c13 ≠ esw, Br2c13 ≠ swn, Br2c13 ≠ wne, Br2c13 ≠ nes, Br2c14 ≠ ne, Br2c14 ≠ ew, Br2c14 ≠ sw, Br2c14 ≠ swn, Br2c14 ≠ wne, Br3c13 ≠ ne, Br3c13 ≠ ns, Br3c13 ≠ nw, Br3c13 ≠ sw, Br3c13 ≠ swn, Br3c13 ≠ wne, Br3c13 ≠ nes
whip[1]: Br3c13{esw .} ==> Pr3c13 ≠ ne, Pr3c13 ≠ se, Pr3c13 ≠ ew, Nr3c13 ≠ 0
whip[1]: Br2c14{ns .} ==> Vr2c15 ≠ 1, Pr2c14 ≠ ns, Pr2c14 ≠ se, Pr2c15 ≠ se, Nr2c14 ≠ 0, Nr2c14 ≠ 3, Pr2c14 ≠ sw
V-single: Vr2c15 = 0
w[1]-3-in-r2c15-asymmetric-nw-corner ==> Hr3c15 = 1, Vr3c16 = 0
w[3]-adjacent-3-2-in-r3{c14 c15}-noline-east ==> Vr4c15 = 0
P-single: Pr2c15 = ew
no-vertical-line-r4{c14 c15} ==> Ir4c14 = in
no-vertical-line-r4{c13 c14} ==> Ir4c13 = in
no-horizontal-line-{r3 r4}c13 ==> Ir3c13 = in
no-horizontal-line-{r2 r3}c13 ==> Ir2c13 = in
no-vertical-line-r2{c13 c14} ==> Ir2c14 = in
horizontal-line-{r2 r3}c14 ==> Ir3c14 = out
no-vertical-line-r3{c14 c15} ==> Ir3c15 = out
different-colours-in-{r3 r4}c15 ==> Hr4c15 = 1
w[1]-3-in-r4c15-closed-ne-corner ==> Pr5c15 ≠ ne
different-colours-in-{r1 r2}c14 ==> Hr2c14 = 1
whip[1]: Vr2c15{0 .} ==> Br2c15 ≠ wne
B-single: Br2c15 = nes
whip[1]: Br2c15{nes .} ==> Pr3c16 ≠ ns
P-single: Pr3c16 = nw
whip[1]: Pr3c16{nw .} ==> Br3c15 ≠ ew
B-single: Br3c15 = ns
whip[1]: Br3c15{ns .} ==> Pr4c16 ≠ ns
P-single: Pr4c16 = sw
whip[1]: Pr4c16{sw .} ==> Br4c15 ≠ esw
B-single: Br4c15 = nes
whip[1]: Vr3c16{0 .} ==> Br3c16 ≠ w
B-single: Br3c16 = o
whip[1]: Vr4c15{0 .} ==> Br4c14 ≠ e, Br4c14 ≠ se, Br4c14 ≠ ew, Br4c14 ≠ esw
whip[1]: Pr2c15{ew .} ==> Br2c14 ≠ s, Br1c14 ≠ w, Br1c14 ≠ o
B-single: Br2c14 = ns
whip[1]: Br2c14{ns .} ==> Nr2c14 ≠ 1, Pr2c14 ≠ nw, Pr2c14 ≠ o
N-single: Nr2c14 = 2
whip[1]: Pr2c14{ew .} ==> Br1c13 ≠ nw, Br1c13 ≠ se, Br1c13 ≠ esw, Br1c13 ≠ nes, Br1c13 ≠ o, Br1c13 ≠ n, Br1c13 ≠ w
whip[1]: Br1c13{wne .} ==> Nr1c13 ≠ 0
whip[1]: Br1c14{sw .} ==> Nr1c14 ≠ 0
whip[1]: Pr5c15{ew .} ==> Br5c14 ≠ sw, Br5c14 ≠ wne, Br5c14 ≠ nes, Br5c14 ≠ o, Br5c14 ≠ s, Br5c14 ≠ w, Br5c14 ≠ ne
whip[1]: Br5c14{swn .} ==> Nr5c14 ≠ 0
whip[1]: Br2c13{nw .} ==> Nr2c13 ≠ 3
whip[1]: Pr4c14{ne .} ==> Br4c13 ≠ n, Br3c13 ≠ se, Br3c13 ≠ esw, Br4c13 ≠ e, Br4c13 ≠ ne, Br4c13 ≠ ns, Br4c13 ≠ nw, Br4c13 ≠ se, Br4c13 ≠ ew, Br4c13 ≠ esw, Br4c13 ≠ swn, Br4c13 ≠ wne, Br4c13 ≠ nes, Br4c14 ≠ nw, Br4c14 ≠ swn
whip[1]: Br4c14{ns .} ==> Pr5c14 ≠ ne, Pr5c14 ≠ ns, Pr5c14 ≠ nw, Nr4c14 ≠ 3
whip[1]: Br4c13{sw .} ==> Pr4c13 ≠ ne, Pr4c13 ≠ se, Pr4c13 ≠ ew, Nr4c13 ≠ 3
whip[1]: Br3c13{ew .} ==> Nr3c13 ≠ 3
whip[1]: Pr1c14{sw .} ==> Br1c13 ≠ ew, Br1c13 ≠ swn, Br1c13 ≠ e, Br1c13 ≠ ns
whip[1]: Hr16c6{1 .} ==> Br15c6 ≠ wne, Br16c6 ≠ o, Br15c6 ≠ o, Pr16c6 ≠ o, Pr16c6 ≠ nw, Br15c6 ≠ n, Br15c6 ≠ e, Br15c6 ≠ w, Br15c6 ≠ ne, Br15c6 ≠ nw, Br15c6 ≠ ew
B-single: Br16c6 = n
w[1]-1-in-r15c5-asymmetric-se-corner ==> Pr15c5 ≠ sw, Pr15c5 ≠ ew, Pr15c5 ≠ ns, Pr15c5 ≠ ne
w[1]-3-in-r14c4-symmetric-se-corner ==> Vr14c5 = 1, Hr15c4 = 1
w[1]-3-in-r14c4-closed-se-corner ==> Pr14c4 ≠ se, Pr14c4 ≠ nw, Pr14c4 ≠ o
no-horizontal-line-{r14 r15}c5 ==> Ir15c5 = out
no-vertical-line-r15{c4 c5} ==> Ir15c4 = out
horizontal-line-{r14 r15}c4 ==> Ir14c4 = in
same-colour-in-{r15 r16}c4 ==> Hr16c4 = 0
w[1]-2-in-r15c4-open-se-corner ==> Vr15c4 = 1, Hr15c3 = 0, Vr14c4 = 0
w[1]-3-in-r14c4-hit-by-verti-line-at-sw ==> Hr14c4 = 1
w[1]-3-in-r14c4-closed-ne-corner ==> Pr15c4 ≠ sw, Pr15c4 ≠ ne
no-vertical-line-r13{c4 c5} ==> Ir13c4 = out
no-vertical-line-r14{c3 c4} ==> Ir14c3 = in
no-horizontal-line-{r14 r15}c3 ==> Ir15c3 = in
different-colours-in-{r15 r16}c3 ==> Hr16c3 = 1
same-colour-in-{r15 r16}c5 ==> Hr16c5 = 0
different-colours-in-r15{c5 c6} ==> Hr15c6 = 1
whip[1]: Vr14c5{1 .} ==> Br14c5 ≠ o, Pr14c5 ≠ o, Pr14c5 ≠ ne, Pr14c5 ≠ ew, Pr15c5 ≠ se, Br14c4 ≠ swn, Br14c5 ≠ n, Br14c5 ≠ e, Br14c5 ≠ s, Br14c5 ≠ ne, Br14c5 ≠ ns, Br14c5 ≠ se, Br14c5 ≠ nes
P-single: Pr15c5 = nw
whip[1]: Pr15c5{nw .} ==> Br15c5 ≠ n, Br14c4 ≠ wne, Br14c5 ≠ sw, Br14c5 ≠ esw, Br14c5 ≠ swn, Br15c4 ≠ ne, Br15c4 ≠ se, Br15c4 ≠ ew, Br15c4 ≠ sw, Br15c5 ≠ w
whip[1]: Br15c5{s .} ==> Pr16c5 ≠ ne, Pr15c6 ≠ nw, Pr15c6 ≠ ew
P-single: Pr15c4 = se
P-single: Pr16c5 = o
w[1]-1-in-r14c3-symmetric-se-corner ==> Pr14c3 ≠ se, Pr14c3 ≠ nw, Pr14c3 ≠ o
whip[1]: Pr15c4{se .} ==> Br15c3 ≠ w, Br15c3 ≠ s, Br15c3 ≠ n, Br15c3 ≠ o, Br14c3 ≠ s, Br14c3 ≠ e, Br14c4 ≠ esw, Br15c3 ≠ ne, Br15c3 ≠ ns, Br15c3 ≠ nw, Br15c3 ≠ sw, Br15c3 ≠ swn, Br15c3 ≠ wne, Br15c3 ≠ nes, Br15c4 ≠ ns
B-single: Br15c4 = nw
B-single: Br14c4 = nes
whip[1]: Br15c4{nw .} ==> Pr16c4 ≠ ew
P-single: Pr16c4 = nw
whip[1]: Pr16c4{nw .} ==> Br15c3 ≠ e, Br16c4 ≠ n, Br16c3 ≠ o, Br15c3 ≠ ew
B-single: Br16c3 = n
B-single: Br16c4 = o
whip[1]: Br16c3{n .} ==> Pr16c3 ≠ o, Pr16c3 ≠ nw
w[1]-1-in-r15c2-asymmetric-se-corner ==> Pr15c2 ≠ sw, Pr15c2 ≠ ew, Pr15c2 ≠ ns, Pr15c2 ≠ ne
w[1]-3-in-r14c1-symmetric-se-corner ==> Vr14c2 = 1
w[1]-3-in-r13c1-hit-by-verti-line-at-se ==> Vr13c1 = 1
w[1]-3-in-r13c1-closed-sw-corner ==> Pr13c2 ≠ sw, Pr13c2 ≠ ne
w[1]-3-in-r13c1-closed-nw-corner ==> Pr14c2 ≠ se, Pr14c2 ≠ nw, Pr14c2 ≠ o
w[1]-3-in-r14c1-closed-se-corner ==> Pr14c1 ≠ se, Pr14c1 ≠ o
w[1]-3-in-r14c1-closed-ne-corner ==> Pr15c1 ≠ ne, Pr15c1 ≠ o
no-vertical-line-r12{c0 c1} ==> Ir12c1 = out
horizontal-line-{r12 r13}c1 ==> Ir13c1 = in
no-vertical-line-r13{c1 c2} ==> Ir13c2 = in
no-horizontal-line-{r13 r14}c2 ==> Ir14c2 = in
no-horizontal-line-{r14 r15}c2 ==> Ir15c2 = in
no-vertical-line-r15{c1 c2} ==> Ir15c1 = in
horizontal-line-{r14 r15}c1 ==> Ir14c1 = out
different-colours-in-{r15 r16}c1 ==> Hr16c1 = 1
different-colours-in-r15{c0 c1} ==> Hr15c1 = 1
same-colour-in-r15{c2 c3} ==> Vr15c3 = 0
w[1]-diagonal-1-1-in-{r15c2...r14c3}-with-no-ne-inner-sides ==> Vr14c3 = 0
different-colours-in-{r15 r16}c2 ==> Hr16c2 = 1
whip[1]: Vr14c2{1 .} ==> Br14c2 ≠ o, Pr14c2 ≠ ne, Pr14c2 ≠ ew, Pr15c2 ≠ o, Pr15c2 ≠ se, Br14c1 ≠ swn, Br14c2 ≠ n, Br14c2 ≠ e, Br14c2 ≠ s, Br14c2 ≠ ne, Br14c2 ≠ ns, Br14c2 ≠ se, Br14c2 ≠ nes
P-single: Pr15c2 = nw
whip[1]: Pr15c2{nw .} ==> Br15c2 ≠ n, Br15c1 ≠ e, Br15c1 ≠ o, Br14c1 ≠ wne, Br14c2 ≠ sw, Br14c2 ≠ esw, Br14c2 ≠ swn, Br15c1 ≠ ne, Br15c1 ≠ sw, Br15c1 ≠ esw, Br15c2 ≠ w
whip[1]: Br15c2{s .} ==> Pr16c2 ≠ ne, Pr16c2 ≠ nw, Pr15c3 ≠ nw, Pr15c3 ≠ ew, Pr15c3 ≠ sw
whip[1]: Br15c1{swn .} ==> Pr15c1 ≠ ns, Nr15c1 ≠ 0, Nr15c1 ≠ 2
P-single: Pr15c1 = se
whip[1]: Pr15c1{se .} ==> Br15c1 ≠ n, Br14c1 ≠ esw
B-single: Br14c1 = nes
B-single: Br15c1 = swn
whip[1]: Br14c1{nes .} ==> Pr14c2 ≠ ns, Pr14c1 ≠ ns
P-single: Pr14c1 = ne
P-single: Pr14c2 = sw
whip[1]: Pr14c1{ne .} ==> Br13c1 ≠ wne, Br13c1 ≠ nes
whip[1]: Br13c1{swn .} ==> Pr13c1 ≠ o
whip[1]: Pr12c2{ew .} ==> Br11c2 ≠ sw, Br11c2 ≠ esw, Br11c2 ≠ swn, Br12c1 ≠ sw, Br11c2 ≠ o, Br11c2 ≠ n, Br11c2 ≠ e, Br11c2 ≠ ne, Br12c1 ≠ ne
whip[1]: Br11c2{nes .} ==> Nr11c2 ≠ 0
whip[1]: Pr14c2{sw .} ==> Br13c2 ≠ ns, Br13c2 ≠ w, Br13c2 ≠ s, Br13c1 ≠ esw, Br13c2 ≠ nw, Br13c2 ≠ se, Br13c2 ≠ ew, Br13c2 ≠ sw, Br13c2 ≠ esw, Br13c2 ≠ swn, Br13c2 ≠ wne, Br13c2 ≠ nes, Br14c2 ≠ nw, Br14c2 ≠ wne
B-single: Br13c1 = swn
whip[1]: Br13c1{swn .} ==> Pr13c2 ≠ ns, Pr13c1 ≠ ns
P-single: Pr13c1 = se
whip[1]: Pr13c1{se .} ==> Br12c1 ≠ nw, Br12c1 ≠ ew
whip[1]: Br12c1{se .} ==> Pr12c1 ≠ ns
whip[1]: Pr13c3{sw .} ==> Br12c2 ≠ nw, Br12c2 ≠ se, Br13c3 ≠ nw, Br13c3 ≠ se, Br13c3 ≠ swn, Br13c3 ≠ wne, Br13c3 ≠ o, Br13c3 ≠ e, Br13c3 ≠ s
whip[1]: Br13c3{nes .} ==> Nr13c3 ≠ 0
whip[1]: Pr12c2{ew .} ==> Br11c1 ≠ nw, Br11c1 ≠ se
whip[1]: Pr11c1{ns .} ==> Vr10c1 ≠ 0, Br10c1 ≠ s, Br10c1 ≠ ne, Br10c1 ≠ ns, Br10c1 ≠ se, Br10c1 ≠ nes, Br10c1 ≠ o, Br10c1 ≠ n, Br10c1 ≠ e
V-single: Vr10c1 = 1
vertical-line-r10{c0 c1} ==> Ir10c1 = in
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o, Pr10c1 ≠ o, Pr10c1 ≠ ne
B-single: Br10c0 = e
whip[1]: Pr10c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ o, Br9c1 ≠ n, Br9c1 ≠ e
whip[1]: Br9c1{nes .} ==> Nr9c1 ≠ 0
whip[1]: Br10c1{wne .} ==> Nr10c1 ≠ 0
whip[1]: Pr11c2{sw .} ==> Br10c1 ≠ esw, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ wne, Br10c2 ≠ nes, Br11c1 ≠ ew, Br11c2 ≠ nw, Br11c2 ≠ wne, Br10c2 ≠ s, Br10c2 ≠ w, Br10c2 ≠ ns, Br11c1 ≠ ns
whip[1]: Pr13c2{ew .} ==> Br12c2 ≠ sw, Br12c2 ≠ ne
whip[1]: Br14c2{ew .} ==> Pr14c3 ≠ ew, Pr14c3 ≠ sw, Nr14c2 ≠ 0, Nr14c2 ≠ 3
whip[1]: Pr14c3{ns .} ==> Vr13c3 ≠ 0, Br13c3 ≠ ne, Br13c3 ≠ ns, Br13c3 ≠ nes, Br13c2 ≠ o, Br13c2 ≠ n, Br13c3 ≠ n
V-single: Vr13c3 = 1
vertical-line-r13{c2 c3} ==> Ir13c3 = out
same-colour-in-r13{c3 c4} ==> Vr13c4 = 0
w[1]-1-in-r14c3-asymmetric-ne-corner ==> Pr15c3 ≠ se, Pr15c3 ≠ ns
w[1]-1-in-r15c2-symmetric-ne-corner ==> Pr16c2 ≠ o
P-single: Pr16c2 = ew
different-colours-in-{r13 r14}c3 ==> Hr14c3 = 1

LOOP[16]: Vr13c3-Hr14c3-Hr14c4-Vr14c5-Hr15c4-Vr15c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Hr13c1- ==> Hr13c2 = 0
w[0]-adjacent-3-in-r13c1-nolines-east ==> Vr12c2 = 1
vertical-line-r12{c1 c2} ==> Ir12c2 = in
whip[1]: Vr13c3{1 .} ==> Pr13c3 ≠ ne, Pr13c3 ≠ ew
whip[1]: Pr13c3{sw .} ==> Hr13c3 ≠ 1, Br12c3 ≠ se, Br12c3 ≠ sw, Br12c3 ≠ esw, Br12c3 ≠ swn, Br12c3 ≠ nes, Br12c3 ≠ s, Br12c3 ≠ ns
H-single: Hr13c3 = 0
no-horizontal-line-{r12 r13}c3 ==> Ir12c3 = out
different-colours-in-r12{c2 c3} ==> Hr12c3 = 1

LOOP[18]: Vr12c3-Vr13c3-Hr14c3-Hr14c4-Vr14c5-Hr15c4-Vr15c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Hr13c1-Vr12c2- ==> Hr12c2 = 0
no-horizontal-line-{r11 r12}c2 ==> Ir11c2 = in
whip[1]: Hr13c3{0 .} ==> Pr13c4 ≠ ew, Pr13c4 ≠ sw
whip[1]: Pr13c4{ns .} ==> Vr12c4 ≠ 0, Br12c3 ≠ w, Br12c3 ≠ nw, Br12c4 ≠ s, Br12c4 ≠ ne, Br12c4 ≠ ns, Br12c4 ≠ se, Br12c4 ≠ nes, Br13c4 ≠ nw, Br13c4 ≠ se, Br12c3 ≠ o, Br12c3 ≠ n, Br12c4 ≠ o, Br12c4 ≠ n, Br12c4 ≠ e
V-single: Vr12c4 = 1
vertical-line-r12{c3 c4} ==> Ir12c4 = in
different-colours-in-{r12 r13}c4 ==> Hr13c4 = 1
whip[1]: Vr12c4{1 .} ==> Pr12c4 ≠ o, Pr12c4 ≠ ne, Pr12c4 ≠ nw, Pr12c4 ≠ ew
whip[1]: Pr12c4{sw .} ==> Br11c3 ≠ se, Br11c3 ≠ esw, Br11c3 ≠ nes, Br11c4 ≠ sw, Br11c4 ≠ esw, Br11c4 ≠ swn
whip[1]: Hr13c4{1 .} ==> Pr13c4 ≠ ns, Pr13c5 ≠ ns, Pr13c5 ≠ se, Br12c4 ≠ w, Br12c4 ≠ nw, Br12c4 ≠ ew, Br12c4 ≠ wne, Br13c4 ≠ ew, Br13c4 ≠ sw
P-single: Pr13c4 = ne
whip[1]: Pr13c4{ne .} ==> Br13c3 ≠ ew, Br13c3 ≠ esw
whip[1]: Br13c3{sw .} ==> Pr14c4 ≠ ns, Nr13c3 ≠ 3
P-single: Pr14c4 = ew
whip[1]: Pr14c4{ew .} ==> Br14c3 ≠ w, Br13c4 ≠ ne, Br13c3 ≠ w
B-single: Br13c3 = sw
B-single: Br13c4 = ns
B-single: Br14c3 = n
whip[1]: Br13c3{sw .} ==> Nr13c3 ≠ 1, Pr14c3 ≠ ns
N-single: Nr13c3 = 2
P-single: Pr14c3 = ne
whip[1]: Pr14c3{ne .} ==> Br14c2 ≠ ew
B-single: Br14c2 = w
whip[1]: Br14c2{w .} ==> Nr14c2 ≠ 2, Pr15c3 ≠ ne
N-single: Nr14c2 = 1
P-single: Pr15c3 = o
whip[1]: Pr15c3{o .} ==> Br15c2 ≠ e, Br15c3 ≠ esw
B-single: Br15c3 = se
B-single: Br15c2 = s
whip[1]: Br15c3{se .} ==> Nr15c3 ≠ 3, Nr15c3 ≠ 1, Nr15c3 ≠ 0, Pr16c3 ≠ ne
N-single: Nr15c3 = 2
P-single: Pr16c3 = ew
whip[1]: Pr16c3{ew .} ==> Br16c2 ≠ o
B-single: Br16c2 = n
whip[1]: Br13c4{ns .} ==> Pr14c5 ≠ ns
P-single: Pr14c5 = sw
whip[1]: Pr14c5{sw .} ==> Br13c5 ≠ ns, Br13c5 ≠ w, Br13c5 ≠ s, Br13c5 ≠ nw, Br13c5 ≠ se, Br13c5 ≠ ew, Br13c5 ≠ sw, Br13c5 ≠ esw, Br13c5 ≠ swn, Br13c5 ≠ wne, Br13c5 ≠ nes, Br14c5 ≠ nw, Br14c5 ≠ wne
whip[1]: Br14c5{ew .} ==> Pr14c6 ≠ ew, Pr14c6 ≠ sw, Nr14c5 ≠ 0, Nr14c5 ≠ 3
w[1]-1-in-r12c7-asymmetric-sw-corner ==> Pr12c8 ≠ ew, Pr12c8 ≠ se, Pr12c8 ≠ nw, Pr12c8 ≠ ns
w[1]-3-in-r11c8-symmetric-sw-corner ==> Vr11c8 = 1, Hr12c8 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r12 r11}c8 ==> Vr12c9 = 0, Hr13c8 = 0
w[1]-3-in-r11c8-closed-sw-corner ==> Pr11c9 ≠ sw, Pr11c9 ≠ ne, Pr11c9 ≠ o
w[1]-diagonal-closed-3-1-in-{r11c8...r10c9} ==> Vr10c10 = 0, Hr10c9 = 0
w[1]-1-in-r10c9-asymmetric-sw-corner ==> Pr10c10 ≠ ew, Pr10c10 ≠ nw, Pr10c10 ≠ ns
w[1]-1-in-r6c9-asymmetric-se-corner ==> Pr6c9 ≠ sw, Pr6c9 ≠ ew, Pr6c9 ≠ ns, Pr6c9 ≠ ne
w[1]-3-in-r5c8-symmetric-se-corner ==> Hr6c8 = 1
w[1]-3-in-r6c7-hit-by-horiz-line-at-ne ==> Vr5c8 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c10{r5 r6} ==> Hr6c10 = 0
w[1]-3-in-r5c8-closed-se-corner ==> Pr5c8 ≠ se, Pr5c8 ≠ nw, Pr5c8 ≠ o
w[1]-1-in-r9c12-asymmetric-nw-corner ==> Pr10c13 ≠ sw, Pr10c13 ≠ ew, Pr10c13 ≠ ns, Pr10c13 ≠ ne
whip[1]: Vr11c8{1 .} ==> Br11c7 ≠ o, Pr11c8 ≠ o, Pr11c8 ≠ ne, Pr11c8 ≠ nw, Pr11c8 ≠ ew, Pr12c8 ≠ o, Pr12c8 ≠ sw, Br11c7 ≠ n, Br11c7 ≠ s, Br11c7 ≠ w, Br11c7 ≠ ns, Br11c7 ≠ nw, Br11c7 ≠ sw, Br11c7 ≠ swn, Br11c8 ≠ nes
P-single: Pr12c8 = ne
w[1]-1-in-r12c8-asymmetric-nw-corner ==> Pr13c9 ≠ sw, Pr13c9 ≠ ew, Pr13c9 ≠ ns, Pr13c9 ≠ ne
whip[1]: Pr12c8{ne .} ==> Br12c7 ≠ n, Br11c7 ≠ se, Br11c7 ≠ esw, Br11c7 ≠ nes, Br11c8 ≠ wne, Br12c7 ≠ e, Br12c8 ≠ e, Br12c8 ≠ s, Br12c8 ≠ w
B-single: Br12c8 = n
whip[1]: Br12c8{n .} ==> Pr12c9 ≠ o, Pr12c9 ≠ ne, Pr12c9 ≠ ns, Pr12c9 ≠ se, Pr12c9 ≠ sw, Pr13c8 ≠ ne, Pr13c8 ≠ ns, Pr13c8 ≠ nw, Pr13c8 ≠ se, Pr13c8 ≠ ew, Pr13c9 ≠ nw
w[1]-1-in-r9c11-asymmetric-sw-corner ==> Pr9c12 ≠ ew, Pr9c12 ≠ ns
whip[1]: Pr9c12{sw .} ==> Br8c11 ≠ nw, Br8c11 ≠ se, Br8c12 ≠ nw, Br8c12 ≠ se, Br8c12 ≠ ew, Br8c12 ≠ wne, Br8c12 ≠ nes, Br8c12 ≠ s, Br8c12 ≠ w, Br8c12 ≠ ns, Br9c11 ≠ n, Br9c11 ≠ e, Br9c12 ≠ e, Br9c12 ≠ s
whip[1]: Br9c12{w .} ==> Hr10c12 ≠ 1, Vr9c13 ≠ 1, Pr9c13 ≠ ns, Pr10c12 ≠ ne, Pr10c13 ≠ nw, Pr9c13 ≠ se, Pr9c13 ≠ sw, Pr10c12 ≠ se, Pr10c12 ≠ ew
V-single: Vr9c13 = 0
H-single: Hr10c12 = 0
whip[1]: Vr9c13{0 .} ==> Br9c13 ≠ nw, Br9c13 ≠ ew, Br9c13 ≠ sw
whip[1]: Hr10c12{0 .} ==> Br10c12 ≠ n, Br10c12 ≠ ne, Br10c12 ≠ ns, Br10c12 ≠ nw, Br10c12 ≠ swn, Br10c12 ≠ wne, Br10c12 ≠ nes
whip[1]: Pr10c14{sw .} ==> Br10c14 ≠ nw, Br10c14 ≠ swn, Br10c14 ≠ wne
whip[1]: Pr10c13{se .} ==> Br10c13 ≠ ne, Br10c13 ≠ ns, Br10c13 ≠ ew, Br10c13 ≠ sw, Br10c13 ≠ esw, Br10c13 ≠ nes, Br10c13 ≠ n, Br10c13 ≠ w
whip[1]: Br9c11{w .} ==> Hr9c11 ≠ 1, Vr9c12 ≠ 1, Pr9c11 ≠ ne, Pr10c12 ≠ ns, Pr10c12 ≠ nw, Pr9c12 ≠ sw
V-single: Vr9c12 = 0
H-single: Hr9c11 = 0
P-single: Pr8c12 = sw
P-single: Pr9c12 = ne
w[1]-1-in-r9c12-symmetric-sw-corner ==> Pr9c13 ≠ ne, Pr9c13 ≠ o
w[1]-1-in-r6c10-asymmetric-se-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ew, Pr6c10 ≠ ns, Pr6c10 ≠ ne
w[1]-1-in-r10c9-asymmetric-se-corner ==> Pr10c9 ≠ sw, Pr10c9 ≠ ew, Pr10c9 ≠ ns, Pr10c9 ≠ ne
w[1]-1-in-r7c6-symmetric-se-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ nw, Pr7c6 ≠ o
whip[1]: Vr9c12{0 .} ==> Br9c12 ≠ w
B-single: Br9c12 = n
whip[1]: Br9c12{n .} ==> Hr9c12 ≠ 0
H-single: Hr9c12 = 1
whip[1]: Hr9c12{1 .} ==> Br8c12 ≠ o, Br8c12 ≠ n, Br8c12 ≠ e, Br8c12 ≠ ne
whip[1]: Br8c12{swn .} ==> Vr8c12 ≠ 0, Pr8c13 ≠ sw, Nr8c12 ≠ 0, Nr8c12 ≠ 1
V-single: Vr8c12 = 1
whip[1]: Vr8c12{1 .} ==> Br8c11 ≠ ns, Br8c11 ≠ sw
whip[1]: Pr8c12{sw .} ==> Br7c12 ≠ ns, Br7c12 ≠ w, Br7c12 ≠ s, Br7c11 ≠ ne, Vr7c12 ≠ 1, Hr8c12 ≠ 1, Hr8c11 ≠ 0, Br7c11 ≠ nw, Br7c11 ≠ se, Br7c11 ≠ ew, Br7c12 ≠ nw, Br7c12 ≠ se, Br7c12 ≠ ew, Br7c12 ≠ sw, Br7c12 ≠ esw, Br7c12 ≠ swn, Br7c12 ≠ wne, Br7c12 ≠ nes, Br8c11 ≠ ew, Br8c12 ≠ swn
H-single: Hr8c11 = 1
H-single: Hr8c12 = 0
V-single: Vr7c12 = 0
B-single: Br8c11 = ne
whip[1]: Hr8c11{1 .} ==> Pr8c11 ≠ ns
whip[1]: Pr8c11{ew .} ==> Vr8c11 ≠ 1, Br7c10 ≠ nw, Br7c10 ≠ se, Br8c10 ≠ se, Br8c10 ≠ ew, Br8c10 ≠ esw, Br8c10 ≠ wne, Br8c10 ≠ nes, Br8c10 ≠ e, Br8c10 ≠ ne
V-single: Vr8c11 = 0
whip[1]: Hr8c12{0 .} ==> Pr8c13 ≠ nw, Pr8c13 ≠ ew
whip[1]: Vr7c12{0 .} ==> Pr7c12 ≠ ns, Pr7c12 ≠ se
whip[1]: Br7c12{ne .} ==> Nr7c12 ≠ 3
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes, Br6c5 ≠ o, Br6c5 ≠ n, Br6c5 ≠ w, Br7c6 ≠ e, Br7c6 ≠ s
whip[1]: Br7c6{w .} ==> Hr8c6 ≠ 1, Pr7c7 ≠ ns, Pr8c6 ≠ ne, Pr8c7 ≠ nw, Pr7c7 ≠ sw, Pr8c6 ≠ se, Pr8c6 ≠ ew
H-single: Hr8c6 = 0
w[1]-3+diagonal-2-isolated-end-in-{r9c7+r8c7...nw} ==> Vr9c7 = 1, Hr10c7 = 1, Vr10c7 = 0, Hr10c6 = 0, Hr9c6 = 0
w[1]-2-in-r10c6-open-ne-corner ==> Hr11c6 = 1, Vr10c6 = 1, Hr11c5 = 0, Vr11c6 = 0
w[1]-3-in-r9c7-closed-sw-corner ==> Pr9c8 ≠ o
whip[1]: Hr8c6{0 .} ==> Br8c6 ≠ n, Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ swn, Br8c6 ≠ wne, Br8c6 ≠ nes
whip[1]: Vr9c7{1 .} ==> Br9c6 ≠ o, Pr9c7 ≠ nw, Pr9c7 ≠ ew, Pr10c7 ≠ o, Pr10c7 ≠ se, Pr10c7 ≠ ew, Br9c6 ≠ n, Br9c6 ≠ s, Br9c6 ≠ w, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ sw, Br9c6 ≠ swn, Br9c7 ≠ nes
whip[1]: Br9c7{wne .} ==> Pr10c8 ≠ se
whip[1]: Pr10c8{ew .} ==> Br9c8 ≠ sw, Br10c7 ≠ sw, Br10c7 ≠ wne, Br10c7 ≠ nes, Br9c8 ≠ ne, Br10c7 ≠ o, Br10c7 ≠ s, Br10c7 ≠ w, Br10c7 ≠ ne
whip[1]: Br10c7{swn .} ==> Nr10c7 ≠ 0
whip[1]: Br9c6{nes .} ==> Nr9c6 ≠ 0
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ ne, Br10c7 ≠ nw, Br10c7 ≠ swn
whip[1]: Pr9c7{se .} ==> Br8c6 ≠ se, Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c7 ≠ ne, Br8c7 ≠ sw, Br9c6 ≠ ne, Br9c6 ≠ wne, Br9c6 ≠ nes, Br8c6 ≠ s
whip[1]: Br8c6{ew .} ==> Pr9c6 ≠ ne, Pr9c6 ≠ se, Pr9c6 ≠ ew, Nr8c6 ≠ 3
whip[1]: Hr10c7{1 .} ==> Pr10c7 ≠ ns, Pr10c7 ≠ nw, Pr10c8 ≠ ns, Br9c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ se, Br10c7 ≠ ew, Br10c7 ≠ esw
P-single: Pr11c6 = ne
P-single: Pr10c7 = ne
w[1]-1-in-r9c4-asymmetric-se-corner ==> Pr9c4 ≠ sw, Pr9c4 ≠ ew, Pr9c4 ≠ ns, Pr9c4 ≠ ne
w[1]-3-in-r8c3-symmetric-se-corner ==> Vr8c4 = 1
w[1]-3-in-r7c3-hit-by-verti-line-at-se ==> Vr7c3 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c2 c3} ==> Vr7c2 = 0
w[0]-adjacent-3-in-r7c1-nolines-east ==> Vr8c2 = 1, Vr6c2 = 1, Vr7c1 = 1, Vr8c1 = 0, Vr6c1 = 0
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ se, Pr8c2 ≠ nw, Pr8c2 ≠ o
w[1]-3-in-r6c1-closed-se-corner ==> Pr6c1 ≠ se
w[1]-3-in-r6c1-closed-ne-corner ==> Pr7c1 ≠ ne, Pr7c1 ≠ o
w[1]-3-in-r7c3-closed-sw-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
w[1]-3-in-r7c3-closed-nw-corner ==> Pr8c4 ≠ se, Pr8c4 ≠ nw, Pr8c4 ≠ o
w[1]-3-in-r8c3-closed-se-corner ==> Pr8c3 ≠ se, Pr8c3 ≠ nw, Pr8c3 ≠ o
w[1]-3-in-r8c3-closed-ne-corner ==> Pr9c3 ≠ sw, Pr9c3 ≠ ne, Pr9c3 ≠ o
w[1]-diagonal-closed-3-1-in-{r7c3...r6c4} ==> Vr6c5 = 0
w[1]-1-in-r7c2-asymmetric-se-corner ==> Pr7c2 ≠ ew, Pr7c2 ≠ ns
w[1]-1-in-r6c4-asymmetric-sw-corner ==> Pr6c5 ≠ ew, Pr6c5 ≠ se, Pr6c5 ≠ nw, Pr6c5 ≠ ns
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
vertical-line-r6{c1 c2} ==> Ir6c2 = in
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
no-vertical-line-r7{c3 c4} ==> Ir7c4 = out
no-horizontal-line-{r7 r8}c4 ==> Ir8c4 = out
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = out
no-vertical-line-r9{c3 c4} ==> Ir9c3 = out
horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = in
no-vertical-line-r7{c1 c2} ==> Ir7c1 = in
horizontal-line-{r7 r8}c1 ==> Ir8c1 = out
no-horizontal-line-{r5 r6}c2 ==> Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
w[1]-3-in-r4c1-hit-by-verti-line-at-sw ==> Vr4c2 = 1, Hr4c1 = 1
w[1]-2-in-r3c2-open-sw-corner ==> Hr3c2 = 1, Vr3c3 = 1, Hr3c3 = 0, Vr2c3 = 0
w[1]-3-in-r4c1-closed-ne-corner ==> Pr5c1 ≠ ne
whip[1]: Pr11c6{ne .} ==> Br11c6 ≠ o, Br11c5 ≠ n, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ sw, Br10c6 ≠ ns, Br10c6 ≠ nw, Br10c6 ≠ se, Br10c6 ≠ ew, Br11c5 ≠ e, Br11c5 ≠ ne, Br11c5 ≠ ns, Br11c5 ≠ nw, Br11c5 ≠ se, Br11c5 ≠ ew, Br11c5 ≠ esw, Br11c5 ≠ swn, Br11c5 ≠ wne, Br11c5 ≠ nes, Br11c6 ≠ e, Br11c6 ≠ s, Br11c6 ≠ w, Br11c6 ≠ nw, Br11c6 ≠ se, Br11c6 ≠ ew, Br11c6 ≠ sw, Br11c6 ≠ esw, Br11c6 ≠ swn, Br11c6 ≠ wne
B-single: Br10c6 = sw
whip[1]: Br10c6{sw .} ==> Pr11c7 ≠ ns, Pr11c7 ≠ ne, Pr10c6 ≠ ew
whip[1]: Pr10c6{sw .} ==> Br9c5 ≠ nw, Br9c5 ≠ se, Br9c6 ≠ se, Br9c6 ≠ esw
whip[1]: Br9c6{ew .} ==> Nr9c6 ≠ 3
whip[1]: Pr11c7{sw .} ==> Br11c7 ≠ wne, Br11c7 ≠ e
whip[1]: Br11c7{ew .} ==> Pr12c7 ≠ ne, Pr12c7 ≠ se, Pr12c7 ≠ ew, Nr11c7 ≠ 0, Nr11c7 ≠ 1, Nr11c7 ≠ 3
N-single: Nr11c7 = 2
whip[1]: Br11c6{nes .} ==> Pr12c6 ≠ ne, Pr12c6 ≠ ns, Pr12c6 ≠ nw, Nr11c6 ≠ 0
whip[1]: Br11c5{sw .} ==> Pr11c5 ≠ se, Pr11c5 ≠ ew, Nr11c5 ≠ 3
whip[1]: Vr8c4{1 .} ==> Br8c4 ≠ o, Pr8c4 ≠ ne, Pr8c4 ≠ ew, Pr9c4 ≠ o, Pr9c4 ≠ se, Br8c3 ≠ swn, Br8c4 ≠ n, Br8c4 ≠ e, Br8c4 ≠ s, Br8c4 ≠ ne, Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ nes
P-single: Pr9c4 = nw
whip[1]: Pr9c4{nw .} ==> Br9c4 ≠ n, Br9c3 ≠ s, Br9c3 ≠ e, Br9c3 ≠ o, Br8c3 ≠ wne, Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br9c3 ≠ w, Br9c3 ≠ ne, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ esw, Br9c3 ≠ wne, Br9c3 ≠ nes, Br9c4 ≠ w
whip[1]: Br9c4{s .} ==> Pr10c4 ≠ ne, Pr10c4 ≠ ns, Pr9c5 ≠ ew, Pr9c5 ≠ sw, Pr10c4 ≠ nw
whip[1]: Pr9c5{ns .} ==> Vr8c5 ≠ 0, Br8c4 ≠ w, Br8c4 ≠ nw, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se
V-single: Vr8c5 = 1
vertical-line-r8{c4 c5} ==> Ir8c5 = in
whip[1]: Vr8c5{1 .} ==> Pr8c5 ≠ o, Pr8c5 ≠ ne, Pr8c5 ≠ nw, Pr8c5 ≠ ew
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes, Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn
whip[1]: Br8c5{sw .} ==> Pr8c6 ≠ sw, Pr9c6 ≠ nw
whip[1]: Pr9c6{sw .} ==> Br9c5 ≠ ns
whip[1]: Br9c5{sw .} ==> Pr10c5 ≠ ew
whip[1]: Pr10c5{sw .} ==> Br10c4 ≠ nw, Br10c4 ≠ ns
whip[1]: Br10c4{sw .} ==> Pr10c4 ≠ se, Pr11c5 ≠ o
whip[1]: Pr11c5{sw .} ==> Br11c4 ≠ o, Br11c4 ≠ s, Br11c4 ≠ w
whip[1]: Br11c4{nes .} ==> Nr11c4 ≠ 0
whip[1]: Pr10c4{sw .} ==> Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ e
whip[1]: Pr8c6{nw .} ==> Br7c5 ≠ ns, Br7c5 ≠ s
whip[1]: Br8c4{wne .} ==> Nr8c4 ≠ 0, Nr8c4 ≠ 1
whip[1]: Br9c3{swn .} ==> Pr9c3 ≠ ns, Pr9c3 ≠ nw, Nr9c3 ≠ 0
whip[1]: Pr9c3{ew .} ==> Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ esw, Br9c2 ≠ sw, Br8c2 ≠ e, Br8c2 ≠ ne, Br9c2 ≠ ne
B-single: Br8c3 = nes
whip[1]: Br8c3{nes .} ==> Pr8c4 ≠ ns, Pr8c3 ≠ sw, Pr8c3 ≠ ns
P-single: Pr8c4 = sw
whip[1]: Pr8c4{sw .} ==> Br7c4 ≠ ns, Br7c4 ≠ w, Br7c4 ≠ s, Br7c3 ≠ esw, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ sw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br8c4 ≠ wne
B-single: Br8c4 = ew
B-single: Br7c3 = swn
whip[1]: Br8c4{ew .} ==> Nr8c4 ≠ 3, Pr8c5 ≠ sw
N-single: Nr8c4 = 2
whip[1]: Pr8c5{se .} ==> Br7c5 ≠ ne, Br7c5 ≠ o, Br7c5 ≠ n, Br7c5 ≠ e
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Br7c3{swn .} ==> Pr8c3 ≠ ew, Pr7c4 ≠ se, Pr7c4 ≠ ns, Pr7c3 ≠ sw, Pr7c3 ≠ ew, Pr7c3 ≠ nw, Pr7c3 ≠ ns, Pr7c3 ≠ ne, Pr7c3 ≠ o
P-single: Pr7c3 = se
P-single: Pr8c3 = ne
w[1]-1-in-r7c2-asymmetric-ne-corner ==> Pr8c2 ≠ ew, Pr8c2 ≠ ns
whip[1]: Pr7c3{se .} ==> Br7c2 ≠ w, Br7c2 ≠ s, Br7c2 ≠ n, Br6c3 ≠ w, Br6c3 ≠ e, Br6c3 ≠ n, Br6c3 ≠ o, Br6c2 ≠ s, Br6c2 ≠ e, Br6c2 ≠ ne, Br6c2 ≠ ns, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ ne, Br6c3 ≠ nw, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ wne
B-single: Br7c2 = e
whip[1]: Br7c2{e .} ==> Pr8c2 ≠ ne, Pr7c2 ≠ se
P-single: Pr7c2 = nw
P-single: Pr8c2 = sw
whip[1]: Pr7c2{nw .} ==> Br6c2 ≠ n, Br6c2 ≠ o, Br6c1 ≠ swn, Br6c1 ≠ wne, Br7c1 ≠ esw, Br7c1 ≠ wne, Br7c1 ≠ nes
B-single: Br7c1 = swn
whip[1]: Br7c1{swn .} ==> Pr8c1 ≠ se, Pr8c1 ≠ ns, Pr8c1 ≠ o, Pr7c1 ≠ ns
P-single: Pr7c1 = se
P-single: Pr8c1 = ne
whip[1]: Pr7c1{se .} ==> Br6c1 ≠ esw
B-single: Br6c1 = nes
whip[1]: Br6c1{nes .} ==> Pr6c2 ≠ ew, Pr6c2 ≠ se, Pr6c2 ≠ ns, Pr6c2 ≠ ne, Pr6c2 ≠ o, Pr6c1 ≠ ns
P-single: Pr5c1 = ns
P-single: Pr6c1 = ne
P-single: Pr6c2 = sw
whip[1]: Pr5c1{ns .} ==> Vr4c1 ≠ 0, Hr5c1 ≠ 1, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ nes, Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ se
H-single: Hr5c1 = 0
V-single: Vr4c1 = 1
w[1]-3-in-r4c1-closed-nw-corner ==> Pr5c2 ≠ o
P-single: Pr5c2 = ne
B-single: Br4c1 = wne
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
no-vertical-line-r3{c1 c2} ==> Ir3c2 = out
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
vertical-line-r4{c1 c2} ==> Ir4c1 = in
vertical-line-r3{c2 c3} ==> Ir3c3 = in
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
different-colours-in-{r4 r5}c2 ==> Hr5c2 = 1
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e, Pr3c1 ≠ ns, Pr4c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ ew, Br3c1 ≠ sw
P-single: Pr4c1 = se
P-single: Pr3c1 = ne
B-single: Br3c0 = o
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ ne
whip[1]: Br3c1{se .} ==> Pr4c2 ≠ ns
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ se, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
B-single: Br3c1 = ns
whip[1]: Br3c1{ns .} ==> Pr3c2 ≠ ns, Hr3c1 ≠ 0
H-single: Hr3c1 = 1
P-single: Pr3c2 = ew
horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
same-colour-in-r2{c1 c2} ==> Vr2c2 = 0
P-single: Pr2c2 = ne
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
whip[1]: Hr3c1{1 .} ==> Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ ew
whip[1]: Pr3c2{ew .} ==> Br2c2 ≠ ne, Br2c1 ≠ se, Br2c2 ≠ nw, Br2c2 ≠ ew, Br2c2 ≠ sw, Br3c2 ≠ se
whip[1]: Br3c2{ns .} ==> Pr3c3 ≠ ns
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ se, Br2c3 ≠ nw, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ swn, Br3c3 ≠ wne, Br2c3 ≠ w, Br3c3 ≠ o, Br3c3 ≠ e, Br3c3 ≠ s
B-single: Br2c2 = ns
whip[1]: Br2c2{ns .} ==> Pr2c3 ≠ se, Pr2c3 ≠ ns, Hr2c2 ≠ 0
H-single: Hr2c2 = 1
horizontal-line-{r1 r2}c2 ==> Ir1c2 = out
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
whip[1]: Hr2c2{1 .} ==> Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ w, Br1c2 ≠ ne, Br1c2 ≠ nw, Br1c2 ≠ ew, Br1c2 ≠ wne
whip[1]: Br1c2{nes .} ==> Nr1c2 ≠ 0
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s, Pr1c2 ≠ se, Pr1c2 ≠ ew, Pr1c3 ≠ ew, Pr1c3 ≠ sw, Br1c2 ≠ ns, Br1c2 ≠ swn, Br1c2 ≠ nes
B-single: Br0c2 = o
whip[1]: Pr1c3{se .} ==> Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ nes, Br1c3 ≠ n, Br1c3 ≠ w
whip[1]: Pr1c2{sw .} ==> Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ swn, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Pr2c1 ≠ ne, Nr1c1 ≠ 2
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br1c1 ≠ o, Vr1c1 ≠ 0, Hr2c1 ≠ 1, Br1c1 ≠ s, Br2c1 ≠ ns
H-single: Hr2c1 = 0
V-single: Vr1c1 = 1
B-single: Br2c1 = sw
B-single: Br1c1 = wne
vertical-line-r1{c0 c1} ==> Ir1c1 = in
different-colours-in-r1{c1 c2} ==> Hr1c2 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o, Pr1c1 ≠ o
P-single: Pr1c1 = se
B-single: Br1c0 = e
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 1, Nr1c1 ≠ 0, Pr1c2 ≠ o
N-single: Nr1c1 = 3
P-single: Pr1c2 = sw
whip[1]: Pr1c2{sw .} ==> Br1c2 ≠ s, Br1c2 ≠ se
whip[1]: Br1c2{esw .} ==> Nr1c2 ≠ 1
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ swn, Br1c3 ≠ o, Br1c3 ≠ e
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 0
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Pr5c2{ne .} ==> Br5c2 ≠ o, Br4c2 ≠ n, Br4c2 ≠ w, Br4c2 ≠ ne, Br4c2 ≠ ns, Br4c2 ≠ ew, Br4c2 ≠ nes, Br5c1 ≠ ew, Br5c2 ≠ e, Br5c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ nw, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ wne
B-single: Br5c1 = sw
whip[1]: Br5c2{nes .} ==> Pr5c3 ≠ o, Pr5c3 ≠ ne, Pr5c3 ≠ ns, Pr5c3 ≠ se, Nr5c2 ≠ 0
whip[1]: Pr5c3{sw .} ==> Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn
whip[1]: Br4c2{esw .} ==> Pr4c2 ≠ ew, Pr4c3 ≠ ew, Pr4c3 ≠ sw, Nr4c2 ≠ 1
P-single: Pr3c3 = sw
P-single: Pr4c2 = sw
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ ns, Br3c3 ≠ ne, Br3c3 ≠ n, Br3c2 ≠ ns, Br2c3 ≠ ns, Br2c3 ≠ s, Br2c3 ≠ se, Br2c3 ≠ nes, Br3c3 ≠ nes
B-single: Br3c2 = ne
whip[1]: Br3c3{esw .} ==> Pr3c4 ≠ nw, Pr3c4 ≠ ew, Pr3c4 ≠ sw
whip[1]: Br2c3{ne .} ==> Nr2c3 ≠ 3
whip[1]: Pr4c3{ns .} ==> Br4c3 ≠ s, Br4c3 ≠ nw, Br4c3 ≠ se, Br4c3 ≠ wne, Br4c3 ≠ o, Br4c3 ≠ e
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr6c2{sw .} ==> Br5c2 ≠ ns, Br5c2 ≠ nes, Br6c2 ≠ nw
B-single: Br6c2 = w
whip[1]: Br6c2{w .} ==> Nr6c2 ≠ 3, Nr6c2 ≠ 2, Nr6c2 ≠ 0, Pr6c3 ≠ nw, Pr6c3 ≠ ns, Pr6c3 ≠ se, Pr6c3 ≠ ew, Pr6c3 ≠ sw
N-single: Nr6c2 = 1
w[1]-diagonal-1-1-in-{r6c2...r5c3}-with-no-ne-inner-sides ==> Hr6c3 = 0, Vr5c3 = 0
w[1]-diagonal-1-1-in-{r5c3...r6c4}-with-no-se-inner-sides ==> Vr6c4 = 0
w[1]-1-in-r5c3-symmetric-sw-corner ==> Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
no-vertical-line-r6{c3 c4} ==> Ir6c4 = in
no-vertical-line-r6{c4 c5} ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
no-vertical-line-r5{c3 c4} ==> Ir5c3 = in
no-vertical-line-r5{c4 c5} ==> Ir5c5 = in
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = in
same-colour-in-{r5 r6}c5 ==> Hr6c5 = 0
different-colours-in-{r6 r7}c4 ==> Hr7c4 = 1
whip[1]: Hr6c3{0 .} ==> Pr6c3 ≠ ne, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Br5c3 ≠ s, Br6c3 ≠ ns, Br6c3 ≠ nes
P-single: Pr6c3 = o
whip[1]: Pr6c3{o .} ==> Br5c2 ≠ ne, Br5c3 ≠ w
B-single: Br5c2 = n
whip[1]: Br5c2{n .} ==> Pr5c3 ≠ sw, Nr5c2 ≠ 2, Nr5c2 ≠ 3
N-single: Nr5c2 = 1
whip[1]: Pr5c3{ew .} ==> Br4c3 ≠ n, Br4c3 ≠ ne
whip[1]: Br6c3{se .} ==> Nr6c3 ≠ 0, Nr6c3 ≠ 3
whip[1]: Vr6c4{0 .} ==> Pr6c4 ≠ ns, Pr6c4 ≠ se, Pr7c4 ≠ nw, Br6c3 ≠ se, Br6c4 ≠ w
P-single: Pr7c4 = ew
B-single: Br6c3 = s
whip[1]: Pr7c4{ew .} ==> Br7c4 ≠ e, Br7c4 ≠ o, Br6c4 ≠ e, Br6c4 ≠ n
B-single: Br6c4 = s
whip[1]: Br6c4{s .} ==> Pr7c5 ≠ ns, Pr7c5 ≠ ne, Pr7c5 ≠ o, Pr6c4 ≠ ne, Hr6c4 ≠ 1, Pr6c5 ≠ sw, Pr7c5 ≠ nw, Pr7c5 ≠ se
P-single: Pr6c4 = o
w[1]-1-in-r5c3-symmetric-se-corner ==> Pr5c3 ≠ nw
P-single: Pr5c3 = ew
whip[1]: Pr6c4{o .} ==> Vr5c4 ≠ 1, Br5c3 ≠ e
B-single: Br5c3 = n
whip[1]: Br5c3{n .} ==> Hr5c3 ≠ 0, Pr5c4 ≠ ns, Pr5c4 ≠ se
H-single: Hr5c3 = 1
horizontal-line-{r4 r5}c3 ==> Ir4c3 = out
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
same-colour-in-r4{c2 c3} ==> Vr4c3 = 0
different-colours-in-{r3 r4}c3 ==> Hr4c3 = 1
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
whip[1]: Hr5c3{1 .} ==> Br4c3 ≠ w, Br4c3 ≠ ew
whip[1]: Br4c3{nes .} ==> Pr4c3 ≠ ns, Pr4c4 ≠ o, Pr4c4 ≠ ne, Pr4c4 ≠ ns, Pr4c4 ≠ se, Nr4c3 ≠ 1
P-single: Pr4c3 = ne
whip[1]: Pr4c3{ne .} ==> Br3c3 ≠ w, Br3c3 ≠ ew, Br4c2 ≠ esw
B-single: Br4c2 = sw
whip[1]: Br4c2{sw .} ==> Nr4c2 ≠ 3
N-single: Nr4c2 = 2
whip[1]: Br3c3{esw .} ==> Nr3c3 ≠ 1
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ nw, Br4c4 ≠ swn, Br4c4 ≠ wne
whip[1]: Vr4c4{1 .} ==> Br4c4 ≠ o, Pr4c4 ≠ nw, Pr4c4 ≠ ew, Pr5c4 ≠ ew, Br4c3 ≠ ns, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ s, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ se, Br4c4 ≠ nes
P-single: Pr5c4 = nw
P-single: Pr4c4 = sw
B-single: Br4c3 = nes
w[1]-1-in-r3c4-symmetric-sw-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
whip[1]: Pr5c4{nw .} ==> Hr5c4 ≠ 1, Br4c4 ≠ sw, Br4c4 ≠ esw
whip[1]: Br4c4{ew .} ==> Pr4c5 ≠ nw, Pr4c5 ≠ ew, Pr4c5 ≠ sw, Pr5c5 ≠ nw, Pr5c5 ≠ ew, Pr5c5 ≠ sw, Nr4c4 ≠ 0, Nr4c4 ≠ 3
whip[1]: Pr4c5{se .} ==> Br3c4 ≠ s
whip[1]: Br3c4{w .} ==> Pr3c4 ≠ se
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ s, Br2c4 ≠ ns, Br2c4 ≠ se, Br2c4 ≠ nes
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ w, Br3c3 ≠ esw
B-single: Br3c3 = sw
whip[1]: Br3c3{sw .} ==> Nr3c3 ≠ 3, Pr3c4 ≠ ns
N-single: Nr3c3 = 2
whip[1]: Pr3c4{ne .} ==> Br2c4 ≠ w, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ wne
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 2
N-single: Nr4c3 = 3
whip[1]: Pr3c5{ew .} ==> Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ o, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ ne
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Pr7c5{sw .} ==> Br6c5 ≠ ew, Br6c5 ≠ sw, Br6c5 ≠ swn, Br6c5 ≠ wne, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ wne
whip[1]: Br7c5{nes .} ==> Pr7c6 ≠ ew
whip[1]: Pr7c6{sw .} ==> Br6c6 ≠ se, Br6c6 ≠ nes, Br6c6 ≠ s, Br6c6 ≠ ns
whip[1]: Br6c5{ns .} ==> Nr6c5 ≠ 0, Nr6c5 ≠ 3
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ s, Br5c5 ≠ w, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br7c4{ne .} ==> Nr7c4 ≠ 0, Nr7c4 ≠ 3
whip[1]: Br6c3{s .} ==> Nr6c3 ≠ 2
N-single: Nr6c3 = 1
whip[1]: Hr6c5{0 .} ==> Pr6c5 ≠ ne, Pr6c6 ≠ nw, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br6c5 ≠ ne, Br6c5 ≠ ns
P-single: Pr6c5 = o
whip[1]: Pr6c5{o .} ==> Vr5c5 ≠ 1
whip[1]: Br6c5{s .} ==> Nr6c5 ≠ 2
N-single: Nr6c5 = 1
whip[1]: Br5c5{ne .} ==> Pr5c5 ≠ ns, Pr5c5 ≠ se, Nr5c5 ≠ 3
whip[1]: Pr5c5{ne .} ==> Br4c5 ≠ s, Br4c5 ≠ w, Br4c5 ≠ ns, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ wne, Br4c5 ≠ nes
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o, Br8c1 ≠ e, Br8c1 ≠ s, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ wne
whip[1]: Br8c1{nes .} ==> Pr9c1 ≠ ne, Pr9c1 ≠ ns, Nr8c1 ≠ 0
whip[1]: Pr9c1{se .} ==> Br9c1 ≠ ns, Br9c1 ≠ ew, Br9c1 ≠ nes, Br9c1 ≠ w
whip[1]: Pr8c2{sw .} ==> Br8c2 ≠ ns, Br8c2 ≠ s, Br8c2 ≠ n, Br8c2 ≠ o, Br8c1 ≠ ns, Br8c1 ≠ n, Br8c2 ≠ nw, Br8c2 ≠ swn
whip[1]: Br8c2{sw .} ==> Pr9c2 ≠ o, Pr9c2 ≠ se, Pr9c2 ≠ ew, Pr9c2 ≠ sw, Nr8c2 ≠ 0, Nr8c2 ≠ 3
whip[1]: Pr9c2{nw .} ==> Br9c1 ≠ wne, Br9c2 ≠ nw
whip[1]: Br9c2{ew .} ==> Pr10c3 ≠ o, Pr10c3 ≠ se
whip[1]: Pr10c3{sw .} ==> Br10c3 ≠ nw, Br10c3 ≠ swn, Br10c3 ≠ wne
whip[1]: Br9c1{se .} ==> Pr10c2 ≠ ns, Nr9c1 ≠ 3
whip[1]: Pr10c2{ew .} ==> Br10c1 ≠ sw, Br10c1 ≠ wne, Br10c2 ≠ sw, Br10c2 ≠ esw, Br10c1 ≠ w
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 1
whip[1]: Br10c2{swn .} ==> Pr11c3 ≠ nw
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 1
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr8c1{0 .} ==> Br8c0 ≠ e
B-single: Br8c0 = o
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Br10c7{ns .} ==> Vr10c8 ≠ 1, Pr11c8 ≠ ns, Nr10c7 ≠ 3
V-single: Vr10c8 = 0
whip[1]: Vr10c8{0 .} ==> Br10c8 ≠ w
whip[1]: Br10c8{s .} ==> Pr11c9 ≠ nw
whip[1]: Pr11c9{ew .} ==> Br11c9 ≠ se, Br10c9 ≠ n, Br10c9 ≠ e
whip[1]: Br10c9{w .} ==> Pr11c10 ≠ ns, Pr10c9 ≠ se, Pr10c10 ≠ sw
P-single: Pr10c10 = ne
P-single: Pr11c10 = ew
whip[1]: Pr10c10{ne .} ==> Br9c9 ≠ n, Br9c9 ≠ o, Vr9c10 ≠ 0, Hr10c10 ≠ 0, Br9c9 ≠ s, Br9c9 ≠ w, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ nes, Br9c10 ≠ ne, Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ ew, Br10c10 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ ew, Br10c10 ≠ sw
H-single: Hr10c10 = 1
V-single: Vr9c10 = 1
B-single: Br9c10 = sw
whip[1]: Hr10c10{1 .} ==> Pr10c11 ≠ ns
P-single: Pr10c11 = ew
whip[1]: Pr10c11{ew .} ==> Br10c10 ≠ ne, Br9c11 ≠ w, Vr10c11 ≠ 1, Vr9c11 ≠ 1, Hr10c11 ≠ 0, Br10c11 ≠ nw, Br10c11 ≠ se, Br10c11 ≠ ew, Br10c11 ≠ sw
H-single: Hr10c11 = 1
V-single: Vr9c11 = 0
V-single: Vr10c11 = 0
P-single: Pr9c11 = o
P-single: Pr10c12 = sw
P-single: Pr11c11 = sw
B-single: Br9c11 = s
B-single: Br10c10 = ns
whip[1]: Pr9c11{o .} ==> Hr9c10 ≠ 1, Br8c10 ≠ s, Br8c10 ≠ ns, Br8c10 ≠ sw, Br8c10 ≠ swn
H-single: Hr9c10 = 0
whip[1]: Hr9c10{0 .} ==> Pr9c10 ≠ ne, Pr9c10 ≠ ew
whip[1]: Pr9c10{sw .} ==> Br8c9 ≠ nw, Br8c9 ≠ se
whip[1]: Br8c10{nw .} ==> Nr8c10 ≠ 3
whip[1]: Pr10c12{sw .} ==> Br10c12 ≠ s, Br10c12 ≠ e, Br10c12 ≠ o, Br10c11 ≠ ns, Vr10c12 ≠ 0, Br10c12 ≠ se
V-single: Vr10c12 = 1
B-single: Br10c11 = ne
whip[1]: Vr10c12{1 .} ==> Pr11c12 ≠ ew, Pr11c12 ≠ sw
whip[1]: Pr11c12{ns .} ==> Hr11c11 ≠ 1, Br11c11 ≠ ne, Br11c11 ≠ ns, Br11c11 ≠ nw, Br11c11 ≠ swn, Br11c11 ≠ wne, Br11c11 ≠ nes, Br11c12 ≠ s, Br11c12 ≠ nw, Br11c12 ≠ se, Br11c12 ≠ swn, Br11c12 ≠ wne, Br11c11 ≠ n, Br11c12 ≠ o, Br11c12 ≠ e
H-single: Hr11c11 = 0
whip[1]: Br11c12{nes .} ==> Nr11c12 ≠ 0
whip[1]: Br10c12{esw .} ==> Nr10c12 ≠ 0
whip[1]: Pr11c11{sw .} ==> Br11c11 ≠ s, Br11c11 ≠ e, Br11c11 ≠ o, Br11c10 ≠ ns, Vr11c11 ≠ 0, Hr11c10 ≠ 0, Br11c10 ≠ nw, Br11c10 ≠ se, Br11c10 ≠ ew, Br11c10 ≠ sw, Br11c11 ≠ se
H-single: Hr11c10 = 1
V-single: Vr11c11 = 1
B-single: Br11c10 = ne
whip[1]: Vr11c11{1 .} ==> Pr12c11 ≠ ew, Pr12c11 ≠ sw
whip[1]: Pr12c11{ns .} ==> Hr12c10 ≠ 1, Br12c10 ≠ ne, Br12c10 ≠ ns, Br12c10 ≠ nw, Br12c10 ≠ swn, Br12c10 ≠ wne, Br12c10 ≠ nes, Br12c11 ≠ s, Br12c11 ≠ nw, Br12c11 ≠ se, Br12c11 ≠ swn, Br12c11 ≠ wne, Br12c10 ≠ n, Br12c11 ≠ o, Br12c11 ≠ e
H-single: Hr12c10 = 0
whip[1]: Pr12c10{sw .} ==> Vr11c10 ≠ 1, Br11c9 ≠ ew, Br12c9 ≠ nw, Br12c9 ≠ se, Br12c9 ≠ ew, Br12c9 ≠ esw, Br12c9 ≠ swn, Br11c9 ≠ ne, Br12c9 ≠ n, Br12c9 ≠ e, Br12c9 ≠ ns
V-single: Vr11c10 = 0
w[3]-adjacent-3-2-in-r11{c8 c9}-noline-east ==> Vr10c9 = 0
whip[1]: Vr10c9{0 .} ==> Pr11c9 ≠ ns, Br10c8 ≠ e, Br10c9 ≠ w
B-single: Br10c9 = s
whip[1]: Br10c9{s .} ==> Hr11c9 ≠ 0
H-single: Hr11c9 = 1
whip[1]: Hr11c9{1 .} ==> Br11c9 ≠ sw
whip[1]: Br12c11{nes .} ==> Nr12c11 ≠ 0
whip[1]: Br11c11{esw .} ==> Nr11c11 ≠ 0
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Pr10c9{nw .} ==> Br9c8 ≠ ns, Br9c8 ≠ ew
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ ns, Br8c7 ≠ ew, Br8c8 ≠ ne, Br8c8 ≠ sw, Br8c8 ≠ esw, Br8c8 ≠ swn, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ e
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Pr7c7{ew .} ==> Br7c7 ≠ nw, Br7c7 ≠ ew, Br7c7 ≠ sw
whip[1]: Pr7c11{ew .} ==> Br6c11 ≠ sw, Br6c11 ≠ esw, Br6c11 ≠ swn, Br7c10 ≠ sw, Br6c10 ≠ n, Br6c10 ≠ w, Br6c11 ≠ o, Br6c11 ≠ n, Br6c11 ≠ e, Br6c11 ≠ ne, Br7c10 ≠ ne
whip[1]: Br6c11{nes .} ==> Nr6c11 ≠ 0
whip[1]: Br6c10{s .} ==> Vr6c10 ≠ 1, Pr7c10 ≠ ne, Pr7c10 ≠ ns, Pr6c10 ≠ se, Pr6c11 ≠ nw, Pr6c11 ≠ ew, Pr6c11 ≠ sw
V-single: Vr6c10 = 0
w[1]-diagonal-1-1-in-{r6c9...r5c10}-with-no-ne-inner-sides ==> Vr5c10 = 0
w[1]-diagonal-1-1-in-{r5c10...r4c11}-with-no-sw-outer-sides ==> Hr4c11 = 0, Vr4c12 = 0
whip[1]: Vr6c10{0 .} ==> Br6c9 ≠ e
whip[1]: Br6c9{w .} ==> Pr7c9 ≠ ne, Pr6c9 ≠ se
whip[1]: Pr6c9{nw .} ==> Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c9 ≠ ns, Br5c9 ≠ se, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ nes, Br6c8 ≠ ne, Br6c8 ≠ se, Br6c8 ≠ ew, Br6c8 ≠ esw, Br6c8 ≠ wne, Br6c8 ≠ nes, Br6c9 ≠ w, Br5c9 ≠ s, Br6c8 ≠ e, Br6c9 ≠ n
B-single: Br6c9 = s
whip[1]: Br6c9{s .} ==> Pr7c9 ≠ ns, Pr7c9 ≠ o, Hr7c9 ≠ 0, Pr6c10 ≠ nw, Pr7c9 ≠ nw, Pr7c9 ≠ sw
H-single: Hr7c9 = 1
P-single: Pr6c10 = o
w[1]-1-in-r5c10-symmetric-sw-corner ==> Pr5c11 ≠ sw, Pr5c11 ≠ ne, Pr5c11 ≠ o
w[1]-1-in-r4c11-asymmetric-sw-corner ==> Pr4c12 ≠ ew, Pr4c12 ≠ nw, Pr4c12 ≠ ns
w[1]-1-in-r2c11-asymmetric-se-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ ew, Pr2c11 ≠ ns, Pr2c11 ≠ ne
whip[1]: Hr7c9{1 .} ==> Br7c9 ≠ o, Br7c9 ≠ e, Br7c9 ≠ s, Br7c9 ≠ w, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 0
whip[1]: Pr6c10{o .} ==> Br5c9 ≠ e, Br5c9 ≠ ne, Br5c9 ≠ ew, Br5c9 ≠ wne, Br5c10 ≠ s, Br5c10 ≠ w
whip[1]: Br5c10{e .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ se, Pr5c10 ≠ sw
whip[1]: Br5c9{nw .} ==> Nr5c9 ≠ 3
whip[1]: Pr1c11{ew .} ==> Hr1c11 ≠ 0, Br1c10 ≠ sw, Br1c10 ≠ ne, Br1c11 ≠ e, Br1c11 ≠ s, Br1c11 ≠ w
H-single: Hr1c11 = 1
B-single: Br1c11 = n
horizontal-line-{r0 r1}c11 ==> Ir1c11 = in
whip[1]: Hr1c11{1 .} ==> Br0c11 ≠ o, Pr1c12 ≠ o, Pr1c12 ≠ se
B-single: Br0c11 = s
whip[1]: Pr2c13{sw .} ==> Br1c12 ≠ nw, Br1c12 ≠ se, Br2c13 ≠ nw, Br2c13 ≠ o
whip[1]: Br2c13{w .} ==> Nr2c13 ≠ 0, Nr2c13 ≠ 2
N-single: Nr2c13 = 1
w[1]-1-in-r2c13-symmetric-sw-corner ==> Pr2c14 ≠ ne
P-single: Pr2c14 = ew
whip[1]: Pr2c14{ew .} ==> Br2c13 ≠ w, Br1c13 ≠ ne, Vr1c14 ≠ 1, Hr2c13 ≠ 0, Br1c13 ≠ wne, Br1c14 ≠ sw
H-single: Hr2c13 = 1
V-single: Vr1c14 = 0
B-single: Br1c14 = s
B-single: Br2c13 = n
no-vertical-line-r1{c13 c14} ==> Ir1c13 = out
same-colour-in-{r0 r1}c13 ==> Hr1c13 = 0
whip[1]: Hr2c13{1 .} ==> Pr2c13 ≠ ns, Pr2c13 ≠ sw
whip[1]: Pr2c13{ew .} ==> Vr2c13 ≠ 1, Br2c12 ≠ se, Br2c12 ≠ ew, Br2c12 ≠ esw, Br2c12 ≠ wne, Br2c12 ≠ nes, Br2c12 ≠ e, Br2c12 ≠ ne
V-single: Vr2c13 = 0
no-vertical-line-r2{c12 c13} ==> Ir2c12 = in
whip[1]: Vr1c14{0 .} ==> Pr1c14 ≠ sw
P-single: Pr1c14 = o
whip[1]: Br1c14{s .} ==> Nr1c14 ≠ 2
N-single: Nr1c14 = 1
whip[1]: Hr1c13{0 .} ==> Br0c13 ≠ s, Pr1c13 ≠ se, Pr1c13 ≠ ew
B-single: Br0c13 = o
w[1]-1-in-r2c11-symmetric-ne-corner ==> Pr3c11 ≠ sw, Pr3c11 ≠ ne, Pr3c11 ≠ o
whip[1]: Pr3c11{ew .} ==> Br3c10 ≠ sw, Br3c10 ≠ wne, Br3c10 ≠ nes, Br2c11 ≠ n, Br2c11 ≠ e, Br3c10 ≠ o, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ ne
whip[1]: Br3c10{swn .} ==> Nr3c10 ≠ 0
whip[1]: Br2c11{w .} ==> Hr2c11 ≠ 1, Vr2c12 ≠ 1, Pr3c12 ≠ ne, Pr3c12 ≠ ns, Pr2c11 ≠ se, Pr2c12 ≠ sw
V-single: Vr2c12 = 0
H-single: Hr2c11 = 0
no-horizontal-line-{r1 r2}c11 ==> Ir2c11 = in
whip[1]: Vr2c12{0 .} ==> Br2c12 ≠ w, Br2c12 ≠ nw, Br2c12 ≠ sw, Br2c12 ≠ swn
whip[1]: Br2c12{ns .} ==> Nr2c12 ≠ 3
whip[1]: Pr2c12{ne .} ==> Br1c12 ≠ ns, Br1c12 ≠ ew
whip[1]: Pr2c11{nw .} ==> Vr2c11 ≠ 1, Br1c10 ≠ ns, Br1c10 ≠ ew, Br2c10 ≠ ne, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes, Br2c11 ≠ w, Br2c10 ≠ e
V-single: Vr2c11 = 0
B-single: Br2c11 = s
no-vertical-line-r2{c10 c11} ==> Ir2c10 = in
whip[1]: Vr2c11{0 .} ==> Pr3c11 ≠ ns, Pr3c11 ≠ nw
whip[1]: Pr3c11{ew .} ==> Hr3c11 ≠ 0, Br3c11 ≠ se, Br3c11 ≠ ew, Br3c11 ≠ sw, Br3c11 ≠ esw, Br3c11 ≠ o, Br3c11 ≠ e, Br3c11 ≠ s, Br3c11 ≠ w
H-single: Hr3c11 = 1
horizontal-line-{r2 r3}c11 ==> Ir3c11 = out
no-horizontal-line-{r3 r4}c11 ==> Ir4c11 = out
no-vertical-line-r4{c11 c12} ==> Ir4c12 = out
different-colours-in-r4{c12 c13} ==> Hr4c13 = 1
whip[1]: Vr4c13{1 .} ==> Br4c13 ≠ o, Pr5c13 ≠ ew, Pr5c13 ≠ sw, Br4c12 ≠ ns, Br4c12 ≠ nw, Br4c12 ≠ sw, Br4c13 ≠ s
whip[1]: Br4c13{sw .} ==> Nr4c13 ≠ 0
whip[1]: Pr5c13{nw .} ==> Br5c12 ≠ ne, Br5c12 ≠ wne, Br5c12 ≠ nes, Br5c13 ≠ nw
whip[1]: Br5c13{sw .} ==> Pr6c14 ≠ o, Pr6c14 ≠ se
whip[1]: Pr6c14{sw .} ==> Br6c14 ≠ nw, Br6c14 ≠ swn
whip[1]: Br3c11{nes .} ==> Nr3c11 ≠ 0
whip[1]: Pr3c12{sw .} ==> Br3c12 ≠ nw, Br3c12 ≠ se
whip[1]: Br1c13{sw .} ==> Nr1c13 ≠ 3
whip[1]: Br1c11{n .} ==> Vr1c12 ≠ 1, Vr1c11 ≠ 1, Pr1c11 ≠ se, Pr1c12 ≠ sw, Pr2c11 ≠ nw, Pr2c12 ≠ ne
V-single: Vr1c11 = 0
V-single: Vr1c12 = 0
P-single: Pr1c10 = se
P-single: Pr1c13 = sw
P-single: Pr2c12 = o
P-single: Pr2c11 = o
P-single: Pr1c12 = ew
P-single: Pr1c11 = ew
no-vertical-line-r1{c11 c12} ==> Ir1c12 = in
no-vertical-line-r1{c10 c11} ==> Ir1c10 = in
same-colour-in-{r1 r2}c10 ==> Hr2c10 = 0
w[1]-2-in-r1c10-open-se-corner ==> Hr1c10 = 1, Vr1c10 = 1, Hr1c9 = 0
no-horizontal-line-{r0 r1}c9 ==> Ir1c9 = out
no-horizontal-line-{r1 r2}c9 ==> Ir2c9 = out
different-colours-in-r2{c9 c10} ==> Hr2c10 = 1
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
w[1]-3-in-r1c8-closed-ne-corner ==> Pr2c8 ≠ sw, Pr2c8 ≠ ne
same-colour-in-{r1 r2}c12 ==> Hr2c12 = 0
w[1]-2-in-r1c12-open-sw-corner ==> Hr1c12 = 1, Vr1c13 = 1
whip[1]: Vr1c11{0 .} ==> Br1c10 ≠ se
B-single: Br1c10 = nw
whip[1]: Br1c10{nw .} ==> Pr2c10 ≠ ew, Pr2c10 ≠ se
whip[1]: Pr2c10{nw .} ==> Br1c9 ≠ w, Br1c9 ≠ ns, Br1c9 ≠ nw, Br1c9 ≠ sw, Br1c9 ≠ swn, Br2c9 ≠ w, Br2c9 ≠ ne, Br2c9 ≠ sw, Br2c9 ≠ wne, Br2c9 ≠ nes, Br2c10 ≠ ns, Br2c10 ≠ nw, Br2c10 ≠ swn, Br1c9 ≠ o, Br1c9 ≠ n, Br1c9 ≠ s, Br2c9 ≠ o, Br2c9 ≠ s, Br2c10 ≠ n
whip[1]: Br2c10{sw .} ==> Nr2c10 ≠ 3
whip[1]: Br2c9{swn .} ==> Nr2c9 ≠ 0
whip[1]: Br1c9{nes .} ==> Nr1c9 ≠ 0
whip[1]: Vr1c12{0 .} ==> Br1c12 ≠ sw
B-single: Br1c12 = ne
whip[1]: Br1c12{ne .} ==> Pr2c13 ≠ ew
P-single: Pr2c13 = ne
whip[1]: Pr2c13{ne .} ==> Br2c12 ≠ n, Br1c13 ≠ s, Br2c12 ≠ ns
B-single: Br1c13 = sw
whip[1]: Br1c13{sw .} ==> Nr1c13 ≠ 1
N-single: Nr1c13 = 2
whip[1]: Br2c12{s .} ==> Nr2c12 ≠ 2
whip[1]: Pr1c10{se .} ==> Br1c9 ≠ ne, Br1c9 ≠ wne, Br1c9 ≠ nes
whip[1]: Br1c9{esw .} ==> Pr1c9 ≠ se, Pr1c9 ≠ ew
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ esw, Br1c8 ≠ swn
whip[1]: Br1c8{nes .} ==> Pr1c8 ≠ o, Pr1c8 ≠ sw, Pr1c9 ≠ o, Pr2c9 ≠ se, Pr2c9 ≠ ew, Pr2c9 ≠ sw
P-single: Pr1c9 = sw
w[1]-1-in-r3c7-asymmetric-ne-corner ==> Pr4c7 ≠ ew, Pr4c7 ≠ se, Pr4c7 ≠ nw, Pr4c7 ≠ ns
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ e, Br1c9 ≠ se
whip[1]: Br1c9{esw .} ==> Nr1c9 ≠ 1
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ se, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne, Br3c7 ≠ s, Br3c7 ≠ w, Br4c6 ≠ n, Br4c6 ≠ e, Br4c6 ≠ ns
whip[1]: Br3c7{e .} ==> Hr4c7 ≠ 1, Vr3c7 ≠ 1, Pr4c7 ≠ ne, Pr3c7 ≠ ns, Pr3c7 ≠ se, Pr3c7 ≠ sw, Pr4c8 ≠ nw, Pr4c8 ≠ ew, Pr4c8 ≠ sw
V-single: Vr3c7 = 0
H-single: Hr4c7 = 0
w[1]-diagonal-1-1-in-{r3c7...r2c6}-with-no-se-outer-sides ==> Hr2c6 = 0, Vr2c6 = 0
whip[1]: Vr3c7{0 .} ==> Br3c6 ≠ ne, Br3c6 ≠ ew
whip[1]: Hr4c7{0 .} ==> Br4c7 ≠ n, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nes
whip[1]: Hr2c6{0 .} ==> Pr2c6 ≠ ne, Pr2c6 ≠ se, Pr2c6 ≠ ew, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Pr2c7 ≠ sw, Br1c6 ≠ s, Br1c6 ≠ ns, Br1c6 ≠ se, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c6 ≠ nes, Br2c6 ≠ n
whip[1]: Br2c6{w .} ==> Pr3c6 ≠ ne, Pr3c7 ≠ nw
whip[1]: Pr3c7{ew .} ==> Br2c7 ≠ nw, Br2c7 ≠ ew, Br2c7 ≠ wne, Br2c7 ≠ w
whip[1]: Pr3c6{sw .} ==> Br2c5 ≠ se, Br2c5 ≠ nes, Br3c5 ≠ s, Br3c5 ≠ w
whip[1]: Br3c5{e .} ==> Hr4c5 ≠ 1, Vr3c5 ≠ 1, Pr4c5 ≠ ne, Pr3c5 ≠ ns, Pr3c5 ≠ se, Pr3c6 ≠ sw, Pr4c5 ≠ ns, Pr4c5 ≠ se, Pr4c6 ≠ nw, Pr4c6 ≠ ew
V-single: Vr3c5 = 0
H-single: Hr4c5 = 0
w[1]-diagonal-1-1-in-{r3c5...r2c6}-with-no-sw-outer-sides ==> Vr2c7 = 0
P-single: Pr4c5 = o
w[1]-1-in-r3c4-symmetric-se-corner ==> Pr3c4 ≠ o
P-single: Pr3c4 = ne
w[1]-1-in-r2c6-asymmetric-sw-corner ==> Pr2c7 ≠ se, Pr2c7 ≠ ns
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
no-horizontal-line-{r3 r4}c5 ==> Ir4c5 = in
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
3-in-r4c3-no-U-turn-from-east ==> Vr4c5 = O
whip[1]: Vr3c5{0 .} ==> Br3c4 ≠ e
B-single: Br3c4 = n
whip[1]: Br3c4{n .} ==> Hr3c4 ≠ 0
H-single: Hr3c4 = 1
horizontal-line-{r2 r3}c4 ==> Ir2c4 = out
different-colours-in-r2{c3 c4} ==> Hr2c4 = 1
whip[1]: Hr3c4{1 .} ==> Br2c4 ≠ o, Br2c4 ≠ n, Br2c4 ≠ e, Br2c4 ≠ ne
whip[1]: Br2c4{swn .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ne, Pr2c4 ≠ nw, Pr2c4 ≠ ew, Pr2c5 ≠ sw, Nr2c4 ≠ 0, Nr2c4 ≠ 1
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ se, Br1c4 ≠ sw, Br2c3 ≠ o, Br2c3 ≠ n
whip[1]: Br2c3{ne .} ==> Nr2c3 ≠ 0
whip[1]: Br1c4{ew .} ==> Pr1c5 ≠ o
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ se
whip[1]: Br1c5{sw .} ==> Pr2c6 ≠ nw
whip[1]: Pr2c6{sw .} ==> Br2c5 ≠ nw, Br2c5 ≠ ns
whip[1]: Br2c5{wne .} ==> Pr2c5 ≠ ne, Pr2c5 ≠ ew
whip[1]: Pr2c5{se .} ==> Br1c4 ≠ ns, Br1c5 ≠ sw
whip[1]: Br1c5{ew .} ==> Pr1c6 ≠ o
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ o, Br1c6 ≠ e
whip[1]: Br1c6{wne .} ==> Nr1c6 ≠ 0
whip[1]: Br1c3{wne .} ==> Pr1c4 ≠ se
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw
whip[1]: Br1c4{ew .} ==> Vr1c5 ≠ 0, Pr1c5 ≠ ew, Pr2c5 ≠ o, Pr2c5 ≠ se
V-single: Vr1c5 = 1
whip[1]: Vr1c5{1 .} ==> Br1c5 ≠ ne, Br1c5 ≠ ns
whip[1]: Br1c5{ew .} ==> Hr2c5 ≠ 1, Pr2c6 ≠ sw
H-single: Hr2c5 = 0
whip[1]: Hr2c5{0 .} ==> Br2c5 ≠ wne
whip[1]: Br2c5{ew .} ==> Nr2c5 ≠ 3
whip[1]: Pr1c6{ew .} ==> Hr1c6 ≠ 0, Br1c6 ≠ ew, Br1c6 ≠ w
H-single: Hr1c6 = 1
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-horizontal-line-{r1 r2}c7 ==> Ir1c7 = in
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
same-colour-in-r1{c6 c7} ==> Vr1c7 = 0
different-colours-in-{r0 r1}c7 ==> Hr1c7 = 1
w[1]-3-in-r1c8-hit-by-horiz-line-at-nw ==> Hr2c8 = 1
w[1]-2-in-r2c8-open-se-corner ==> Vr2c8 = 1
w[1]-3-in-r1c8-closed-se-corner ==> Pr1c8 ≠ se
P-single: Pr1c8 = ew
vertical-line-r2{c7 c8} ==> Ir2c8 = out
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = out
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
no-vertical-line-r3{c6 c7} ==> Ir3c6 = out
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
no-vertical-line-r3{c8 c9} ==> Ir3c9 = out
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = out
no-vertical-line-r4{c8 c9} ==> Ir4c9 = out
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = out
no-vertical-line-r5{c9 c10} ==> Ir5c10 = out
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = out
no-vertical-line-r6{c9 c10} ==> Ir6c9 = out
no-vertical-line-r6{c8 c9} ==> Ir6c8 = out
horizontal-line-{r5 r6}c8 ==> Ir5c8 = in
no-vertical-line-r5{c7 c8} ==> Ir5c7 = in
horizontal-line-{r6 r7}c9 ==> Ir7c9 = in
different-colours-in-{r4 r5}c7 ==> Hr5c7 = 1
w[1]-3-in-r5c8-hit-by-horiz-line-at-nw ==> Vr4c8 = 0
same-colour-in-{r3 r4}c9 ==> Hr4c9 = 0
same-colour-in-{r2 r3}c9 ==> Hr3c9 = 0
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
different-colours-in-{r2 r3}c6 ==> Hr3c6 = 1
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
same-colour-in-{r1 r2}c4 ==> Hr2c4 = 0
P-single: Pr2c5 = ns
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
P-single: Pr2c6 = o
P-single: Pr1c5 = se
w[1]-1-in-r2c6-symmetric-nw-corner ==> Pr3c7 ≠ o
w[1]-1-in-r3c7-asymmetric-nw-corner ==> Pr4c8 ≠ ns, Pr4c8 ≠ ne
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
w[1]-2-in-r1c5-open-se-corner ==> Hr1c5 = 1
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ se
B-single: Br0c6 = s
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ nw, Br1c7 ≠ se, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ e, Br1c7 ≠ s
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Vr1c8{0 .} ==> Pr2c8 ≠ ns, Br1c7 ≠ ne, Br1c7 ≠ ew, Br1c7 ≠ esw, Br1c7 ≠ nes, Br1c8 ≠ wne
B-single: Br1c8 = nes
whip[1]: Br1c8{nes .} ==> Pr2c9 ≠ ns
P-single: Pr2c9 = nw
whip[1]: Pr2c9{nw .} ==> Br2c9 ≠ n, Br1c9 ≠ esw, Br2c8 ≠ ne, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c9 ≠ esw, Br2c9 ≠ swn
B-single: Br1c9 = ew
whip[1]: Br1c9{ew .} ==> Nr1c9 ≠ 3, Pr2c10 ≠ nw
N-single: Nr1c9 = 2
P-single: Pr2c10 = ns
whip[1]: Pr2c10{ns .} ==> Br2c10 ≠ o, Br2c10 ≠ s
whip[1]: Br2c10{sw .} ==> Pr3c10 ≠ o, Pr3c10 ≠ se, Pr3c10 ≠ ew, Pr3c10 ≠ sw, Nr2c10 ≠ 0
whip[1]: Pr3c10{nw .} ==> Br3c9 ≠ ne, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c10 ≠ nw, Br3c10 ≠ swn
whip[1]: Br2c9{se .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ ns, Nr2c9 ≠ 3
whip[1]: Br1c7{sw .} ==> Nr1c7 ≠ 3
whip[1]: Pr2c8{ew .} ==> Br2c7 ≠ sw, Br2c7 ≠ nes, Br2c7 ≠ o, Br2c7 ≠ s, Br2c7 ≠ ne
whip[1]: Br2c7{swn .} ==> Nr2c7 ≠ 0
whip[1]: Vr1c7{0 .} ==> Pr1c7 ≠ sw, Pr2c7 ≠ ne, Br1c6 ≠ ne, Br1c6 ≠ wne, Br1c7 ≠ w, Br1c7 ≠ sw
P-single: Pr2c7 = o
P-single: Pr1c7 = ew
whip[1]: Pr2c7{o .} ==> Br1c7 ≠ ns, Br2c6 ≠ e, Br2c7 ≠ n, Br2c7 ≠ ns, Br2c7 ≠ esw, Br2c7 ≠ swn
B-single: Br1c7 = n
whip[1]: Br1c7{n .} ==> Pr2c8 ≠ ew, Nr1c7 ≠ 2
N-single: Nr1c7 = 1
P-single: Pr2c8 = se
whip[1]: Pr2c8{se .} ==> Br2c8 ≠ ns
B-single: Br2c8 = nw
whip[1]: Br2c8{nw .} ==> Pr3c8 ≠ ew, Pr3c8 ≠ se, Hr3c8 ≠ 1
whip[1]: Pr3c9{se .} ==> Br3c9 ≠ ns, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ n, Br3c9 ≠ w
whip[1]: Br2c7{se .} ==> Pr3c7 ≠ ne, Nr2c7 ≠ 3
P-single: Pr3c7 = ew
whip[1]: Pr3c7{ew .} ==> Br3c7 ≠ e, Br2c7 ≠ e, Br2c6 ≠ w, Br3c6 ≠ sw
B-single: Br2c6 = s
B-single: Br2c7 = se
B-single: Br3c7 = n
whip[1]: Br2c6{s .} ==> Pr3c6 ≠ ns
whip[1]: Pr3c6{ew .} ==> Br2c5 ≠ ew
whip[1]: Br2c5{w .} ==> Nr2c5 ≠ 2
N-single: Nr2c5 = 1
w[1]-1-in-r2c5-asymmetric-nw-corner ==> Pr3c6 ≠ ew
P-single: Pr4c7 = o
P-single: Pr3c6 = se
whip[1]: Pr4c7{o .} ==> Vr4c7 ≠ 1, Hr4c6 ≠ 1, Br3c6 ≠ ns, Br4c6 ≠ ne, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ w, Br4c7 ≠ ew, Br4c7 ≠ sw, Br4c7 ≠ esw
H-single: Hr4c6 = 0
V-single: Vr4c7 = 0
B-single: Br3c6 = nw
no-vertical-line-r4{c6 c7} ==> Ir4c6 = out
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1
whip[1]: Hr4c6{0 .} ==> Pr4c6 ≠ se
P-single: Pr4c6 = ns
w[1]-1-in-r3c5-asymmetric-se-corner ==> Pr3c5 ≠ ew
P-single: Pr3c5 = nw
whip[1]: Pr4c6{ns .} ==> Br4c6 ≠ o, Br4c5 ≠ n, Br4c5 ≠ o, Br3c5 ≠ n, Br4c5 ≠ ne, Br4c5 ≠ sw, Br4c5 ≠ swn, Br4c6 ≠ s
B-single: Br3c5 = e
whip[1]: Br4c6{sw .} ==> Pr5c6 ≠ o, Pr5c6 ≠ se, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Pr5c7 ≠ ne, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Nr4c6 ≠ 0, Nr4c6 ≠ 3
whip[1]: Pr5c6{nw .} ==> Br5c5 ≠ ne, Br5c6 ≠ nw, Br5c6 ≠ swn, Br5c6 ≠ wne
whip[1]: Br5c5{e .} ==> Nr5c5 ≠ 2
whip[1]: Br4c5{esw .} ==> Nr4c5 ≠ 0, Nr4c5 ≠ 2
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ s, Br2c4 ≠ sw, Br2c4 ≠ swn
B-single: Br2c4 = esw
B-single: Br2c5 = w
whip[1]: Br2c4{esw .} ==> Nr2c4 ≠ 2, Pr2c4 ≠ se
N-single: Nr2c4 = 3
w[3]-adjacent-3-2-in-{r2 r1}c4-noline-north ==> Hr2c3 = 0
P-single: Pr2c4 = ns
no-horizontal-line-{r1 r2}c3 ==> Ir1c3 = in
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
different-colours-in-{r0 r1}c3 ==> Hr1c3 = 1
whip[1]: Hr2c3{0 .} ==> Pr2c3 ≠ ew, Br1c3 ≠ s, Br2c3 ≠ ne
P-single: Pr2c3 = nw
B-single: Br2c3 = e
whip[1]: Pr2c3{nw .} ==> Br1c2 ≠ sw
B-single: Br1c2 = esw
whip[1]: Br1c2{esw .} ==> Nr1c2 ≠ 2, Pr1c3 ≠ o
N-single: Nr1c2 = 3
P-single: Pr1c3 = se
whip[1]: Br2c3{e .} ==> Nr2c3 ≠ 2
N-single: Nr2c3 = 1
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 1
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ nw, Br1c4 ≠ ne, Br1c4 ≠ se
B-single: Br1c4 = ew
B-single: Br1c3 = wne
whip[1]: Br1c4{ew .} ==> Pr1c4 ≠ ew
P-single: Pr1c4 = sw
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 2
N-single: Nr1c3 = 3
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Br4c7{se .} ==> Nr4c7 ≠ 3
whip[1]: Br2c7{se .} ==> Nr2c7 ≠ 1, Pr3c8 ≠ ns
N-single: Nr2c7 = 2
P-single: Pr3c8 = nw
whip[1]: Pr3c8{nw .} ==> Vr3c8 ≠ 1
whip[1]: Br1c6{nw .} ==> Nr1c6 ≠ 3
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Hr5c7{1 .} ==> Br5c7 ≠ o, Br4c7 ≠ o, Pr5c7 ≠ o, Pr5c7 ≠ sw, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Br4c7 ≠ e, Br5c7 ≠ e, Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Br4c7{se .} ==> Nr4c7 ≠ 0
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ se, Br4c8 ≠ nw, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ wne, Br4c8 ≠ w
B-single: Br4c7 = s
whip[1]: Br4c7{s .} ==> Nr4c7 ≠ 2, Pr4c8 ≠ se
N-single: Nr4c7 = 1
P-single: Pr4c8 = o
whip[1]: Pr4c8{o .} ==> Hr4c8 ≠ 1, Br4c8 ≠ n, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nes
whip[1]: Br4c8{se .} ==> Pr4c9 ≠ nw, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Nr4c8 ≠ 3
whip[1]: Pr5c7{ew .} ==> Br5c6 ≠ sw, Br5c6 ≠ nes, Br5c6 ≠ o, Br5c6 ≠ s, Br5c6 ≠ w, Br5c6 ≠ ne
whip[1]: Br5c6{esw .} ==> Nr5c6 ≠ 0
whip[1]: Hr4c9{0 .} ==> Pr4c9 ≠ ne, Pr4c9 ≠ se, Pr4c10 ≠ nw, Pr4c10 ≠ ew, Pr4c10 ≠ sw, Br3c9 ≠ s, Br3c9 ≠ se, Br3c9 ≠ swn, Br4c9 ≠ n, Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ nw, Br4c9 ≠ swn, Br4c9 ≠ wne, Br4c9 ≠ nes
whip[1]: Br3c9{nw .} ==> Nr3c9 ≠ 3
whip[1]: Hr3c9{0 .} ==> Pr3c9 ≠ se, Pr3c10 ≠ nw, Br2c9 ≠ se, Br3c9 ≠ nw
P-single: Pr3c9 = o
B-single: Br2c9 = e
whip[1]: Pr3c9{o .} ==> Vr3c9 ≠ 1
whip[1]: Br2c9{e .} ==> Nr2c9 ≠ 2
N-single: Nr2c9 = 1
whip[1]: Br3c9{e .} ==> Nr3c9 ≠ 2, Pr4c9 ≠ ns
P-single: Pr4c9 = o
whip[1]: Pr4c9{o .} ==> Br4c8 ≠ e, Br4c8 ≠ se, Br4c9 ≠ w, Br4c9 ≠ ew, Br4c9 ≠ sw, Br4c9 ≠ esw
whip[1]: Br4c9{se .} ==> Pr5c9 ≠ ne, Pr5c9 ≠ ns, Pr5c9 ≠ nw, Nr4c9 ≠ 3
whip[1]: Br4c8{s .} ==> Nr4c8 ≠ 2
whip[1]: Pr3c10{ns .} ==> Br3c10 ≠ se, Br3c10 ≠ e
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Pr2c6{o .} ==> Br1c5 ≠ ew, Br1c6 ≠ nw
B-single: Br1c6 = n
B-single: Br1c5 = nw
whip[1]: Br1c6{n .} ==> Pr1c6 ≠ se, Nr1c6 ≠ 2
N-single: Nr1c6 = 1
P-single: Pr1c6 = ew
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Pr4c5{o .} ==> Br4c4 ≠ ew, Br4c5 ≠ esw
B-single: Br4c5 = e
B-single: Br4c4 = w
whip[1]: Br4c5{e .} ==> Pr5c5 ≠ ne, Pr5c6 ≠ nw, Nr4c5 ≠ 3
N-single: Nr4c5 = 1
P-single: Pr5c5 = o
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ n
whip[1]: Pr5c6{ns .} ==> Br5c6 ≠ se, Br5c6 ≠ e
whip[1]: Br4c4{w .} ==> Nr4c4 ≠ 2
N-single: Nr4c4 = 1
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Hr1c12{1 .} ==> Br0c12 ≠ o
B-single: Br0c12 = s
whip[1]: Pr3c13{sw .} ==> Br3c12 ≠ ew, Br3c12 ≠ ns
whip[1]: Pr4c12{sw .} ==> Br3c11 ≠ nes, Br4c11 ≠ n, Br4c11 ≠ e
whip[1]: Br4c11{w .} ==> Pr4c11 ≠ ne, Pr5c12 ≠ ns, Pr5c12 ≠ nw, Pr4c11 ≠ se, Pr4c11 ≠ ew, Pr4c12 ≠ sw
whip[1]: Pr4c12{ne .} ==> Br3c11 ≠ ns, Br3c11 ≠ swn, Br4c12 ≠ ew
whip[1]: Pr7c9{ew .} ==> Br7c8 ≠ sw, Br7c8 ≠ wne, Br7c8 ≠ nes, Br7c8 ≠ o, Br7c8 ≠ s, Br7c8 ≠ w, Br7c8 ≠ ne
whip[1]: Br7c8{swn .} ==> Nr7c8 ≠ 0
whip[1]: Br5c8{nes .} ==> Pr5c9 ≠ o, Pr5c9 ≠ ew, Pr6c8 ≠ ns, Pr6c8 ≠ nw, Pr6c9 ≠ o
P-single: Pr6c9 = nw
whip[1]: Pr6c9{nw .} ==> Br6c8 ≠ s, Br6c8 ≠ o, Br5c9 ≠ n, Br5c9 ≠ o, Br6c8 ≠ w, Br6c8 ≠ sw
whip[1]: Br6c8{swn .} ==> Nr6c8 ≠ 0
whip[1]: Br5c9{nw .} ==> Nr5c9 ≠ 0
whip[1]: Pr6c8{ew .} ==> Br5c7 ≠ wne, Br5c7 ≠ nes, Br5c8 ≠ esw, Br6c7 ≠ wne, Br6c7 ≠ nes, Br5c7 ≠ ne
B-single: Br5c8 = nes
whip[1]: Br5c8{nes .} ==> Pr5c9 ≠ se, Pr5c8 ≠ sw
P-single: Pr5c8 = ew
P-single: Pr5c9 = sw
whip[1]: Pr5c8{ew .} ==> Br4c8 ≠ o
B-single: Br4c8 = s
whip[1]: Br4c8{s .} ==> Nr4c8 ≠ 0
N-single: Nr4c8 = 1
whip[1]: Pr5c9{sw .} ==> Br4c9 ≠ s, Br4c9 ≠ se, Br5c9 ≠ nw
B-single: Br5c9 = w
whip[1]: Br5c9{w .} ==> Nr5c9 ≠ 2, Pr5c10 ≠ nw, Pr5c10 ≠ ew
N-single: Nr5c9 = 1
whip[1]: Pr5c10{ne .} ==> Br4c10 ≠ s, Br4c10 ≠ w, Br4c10 ≠ ns, Br4c10 ≠ nw, Br4c10 ≠ se, Br4c10 ≠ ew, Br4c10 ≠ wne, Br4c10 ≠ nes
whip[1]: Br4c9{e .} ==> Nr4c9 ≠ 2
whip[1]: Br6c7{swn .} ==> Pr6c7 ≠ o, Pr6c7 ≠ ne, Pr6c7 ≠ nw, Pr6c7 ≠ ew, Pr7c7 ≠ o, Pr7c7 ≠ nw, Pr7c7 ≠ ew, Pr7c8 ≠ ns, Pr7c8 ≠ se
P-single: Pr7c7 = ne
w[1]-1-in-r7c6-symmetric-ne-corner ==> Pr8c6 ≠ o
P-single: Pr9c5 = ns
w[1]-1-in-r9c4-asymmetric-ne-corner ==> Pr10c4 ≠ ew
whip[1]: Pr7c7{ne .} ==> Br7c6 ≠ n, Br6c6 ≠ n, Br6c6 ≠ o, Br6c6 ≠ w, Br6c6 ≠ nw, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn, Br7c7 ≠ se
B-single: Br7c6 = w
whip[1]: Br7c6{w .} ==> Pr7c6 ≠ ne, Vr7c6 ≠ 0
V-single: Vr7c6 = 1
whip[1]: Vr7c6{1 .} ==> Br7c5 ≠ w
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 1
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 0
whip[1]: Pr9c5{ns .} ==> Vr9c5 ≠ 0, Hr9c5 ≠ 1, Br8c5 ≠ sw, Br9c4 ≠ s, Br9c5 ≠ ne
H-single: Hr9c5 = 0
V-single: Vr9c5 = 1
w[1]-adjacent-1-2-on-pseudo-edge-in-{r9 r8}c4-fwd-diag-2s-3 ==> Hr10c4 = 0
B-single: Br9c4 = e
no-horizontal-line-{r9 r10}c4 ==> Ir10c4 = out
vertical-line-r9{c4 c5} ==> Ir9c5 = in
whip[1]: Hr10c4{0 .} ==> Br10c4 ≠ ne
whip[1]: Pr11c4{ew .} ==> Br11c3 ≠ wne, Br11c3 ≠ ne
whip[1]: Pr10c4{sw .} ==> Br10c3 ≠ n, Br10c3 ≠ ns
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ esw, Br7c8 ≠ swn, Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ wne, Br7c8 ≠ n, Br7c8 ≠ e, Br8c8 ≠ s
whip[1]: Br7c8{ew .} ==> Nr7c8 ≠ 1, Nr7c8 ≠ 3
N-single: Nr7c8 = 2
w[1]-diagonal-3-2s-in-{r6c7...r10c11}-non-closed-se-end ==> Hr6c7 = 1, Vr5c7 = 0, Hr6c6 = 0
w[1]-3-in-r5c8-hit-by-horiz-line-at-sw ==> Vr6c8 = 0
no-vertical-line-r6{c7 c8} ==> Ir6c7 = out
vertical-line-r6{c6 c7} ==> Ir6c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir5c6 = in
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
no-horizontal-line-{r8 r9}c6 ==> Ir9c6 = in
no-horizontal-line-{r9 r10}c6 ==> Ir10c6 = in
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
no-vertical-line-r10{c7 c8} ==> Ir10c8 = in
no-vertical-line-r10{c8 c9} ==> Ir10c9 = in
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
no-vertical-line-r10{c10 c11} ==> Ir10c11 = in
no-horizontal-line-{r10 r11}c11 ==> Ir11c11 = in
vertical-line-r11{c10 c11} ==> Ir11c10 = out
no-vertical-line-r11{c9 c10} ==> Ir11c9 = out
no-horizontal-line-{r11 r12}c10 ==> Ir12c10 = out
vertical-line-r10{c11 c12} ==> Ir10c12 = out
no-horizontal-line-{r9 r10}c12 ==> Ir9c12 = out
no-vertical-line-r9{c11 c12} ==> Ir9c11 = out
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-vertical-line-r8{c10 c11} ==> Ir8c11 = out
vertical-line-r8{c11 c12} ==> Ir8c12 = in
no-horizontal-line-{r7 r8}c12 ==> Ir7c12 = in
no-vertical-line-r7{c11 c12} ==> Ir7c11 = in
vertical-line-r9{c9 c10} ==> Ir9c9 = in
no-vertical-line-r9{c12 c13} ==> Ir9c13 = out
horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
vertical-line-r10{c5 c6} ==> Ir10c5 = out
no-horizontal-line-{r10 r11}c5 ==> Ir11c5 = out
no-vertical-line-r11{c5 c6} ==> Ir11c6 = out
vertical-line-r7{c5 c6} ==> Ir7c5 = out
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
different-colours-in-{r6 r7}c5 ==> Hr7c5 = 1
same-colour-in-r10{c4 c5} ==> Vr10c5 = 0
w[1]-2-in-r10c5-open-sw-corner ==> Hr10c5 = 1, Vr9c6 = 0
w[1]-2-in-r10c4-open-ne-corner ==> Hr11c4 = 1, Vr10c4 = 1, Hr11c3 = 0, Vr11c4 = 0
P-single: Pr10c4 = sw
vertical-line-r10{c3 c4} ==> Ir10c3 = in
no-horizontal-line-{r10 r11}c3 ==> Ir11c3 = in
no-vertical-line-r11{c3 c4} ==> Ir11c4 = in
same-colour-in-{r11 r12}c4 ==> Hr12c4 = 0
different-colours-in-r11{c4 c5} ==> Hr11c5 = 1
different-colours-in-{r11 r12}c3 ==> Hr12c3 = 1
different-colours-in-{r9 r10}c3 ==> Hr10c3 = 1
same-colour-in-r5{c5 c6} ==> Vr5c6 = 0
different-colours-in-{r4 r5}c6 ==> Hr5c6 = 1
whip[1]: Hr6c7{1 .} ==> Pr6c7 ≠ ns, Pr6c7 ≠ sw, Pr6c8 ≠ se, Br5c7 ≠ n, Br5c7 ≠ nw, Br6c7 ≠ esw
P-single: Pr6c8 = ew
P-single: Pr6c7 = se
B-single: Br6c7 = swn
whip[1]: Pr6c8{ew .} ==> Br6c8 ≠ nw, Br6c8 ≠ swn
whip[1]: Br6c8{ns .} ==> Nr6c8 ≠ 3
whip[1]: Pr6c7{se .} ==> Br5c6 ≠ ns, Br5c6 ≠ ew, Br5c6 ≠ esw, Br5c7 ≠ swn, Br6c6 ≠ ne, Br6c6 ≠ wne
B-single: Br5c7 = ns
B-single: Br5c6 = n
whip[1]: Br5c7{ns .} ==> Nr5c7 ≠ 3, Nr5c7 ≠ 1, Pr5c7 ≠ se
N-single: Nr5c7 = 2
P-single: Pr5c7 = ew
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ w
B-single: Br4c6 = sw
whip[1]: Br4c6{sw .} ==> Nr4c6 ≠ 1, Pr5c6 ≠ ns
N-single: Nr4c6 = 2
P-single: Pr5c6 = ne
whip[1]: Pr5c6{ne .} ==> Br5c5 ≠ e
B-single: Br5c5 = o
whip[1]: Br5c5{o .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ ns, Nr5c5 ≠ 1
N-single: Nr5c5 = 0
whip[1]: Pr6c6{se .} ==> Br6c6 ≠ ew
B-single: Br6c6 = e
whip[1]: Br6c6{e .} ==> Nr6c6 ≠ 2, Pr6c6 ≠ se, Pr7c6 ≠ ns, Nr6c6 ≠ 3
N-single: Nr6c6 = 1
P-single: Pr7c6 = sw
P-single: Pr6c6 = o
w[1]-1-in-r6c5-symmetric-ne-corner ==> Pr7c5 ≠ sw
P-single: Pr7c5 = ew
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ e, Br7c5 ≠ ew
B-single: Br7c5 = nes
B-single: Br6c5 = s
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 2, Pr8c6 ≠ ns, Pr8c5 ≠ ns
N-single: Nr7c5 = 3
P-single: Pr11c4 = ne
P-single: Pr10c5 = ne
P-single: Pr9c6 = o
P-single: Pr8c5 = se
P-single: Pr8c6 = nw
whip[1]: Pr11c4{ne .} ==> Br11c3 ≠ n, Br10c3 ≠ o, Br10c3 ≠ s, Br10c3 ≠ w, Br10c3 ≠ sw, Br10c3 ≠ nes, Br10c4 ≠ se, Br10c4 ≠ ew, Br11c3 ≠ e, Br11c3 ≠ ns, Br11c3 ≠ nw, Br11c3 ≠ ew, Br11c3 ≠ swn, Br11c4 ≠ e, Br11c4 ≠ nw, Br11c4 ≠ se, Br11c4 ≠ ew, Br11c4 ≠ wne
B-single: Br10c4 = sw
B-single: Br10c3 = ne
whip[1]: Br10c4{sw .} ==> Pr11c5 ≠ ns
P-single: Pr10c6 = sw
P-single: Pr11c5 = sw
whip[1]: Pr10c6{sw .} ==> Br9c5 ≠ ew, Br9c6 ≠ ew, Br10c5 ≠ ew
B-single: Br10c5 = ne
B-single: Br9c6 = e
B-single: Br9c5 = sw
whip[1]: Br9c6{e .} ==> Nr9c6 ≠ 2
N-single: Nr9c6 = 1
whip[1]: Pr11c5{sw .} ==> Br11c5 ≠ s, Br11c5 ≠ o, Br11c4 ≠ ns, Br11c4 ≠ n
whip[1]: Br11c4{nes .} ==> Pr12c4 ≠ ns, Pr12c5 ≠ o, Pr12c5 ≠ se, Pr12c5 ≠ ew, Pr12c5 ≠ sw, Nr11c4 ≠ 1
whip[1]: Pr12c5{nw .} ==> Br12c5 ≠ nw, Br12c5 ≠ swn, Br12c5 ≠ wne
whip[1]: Br11c5{sw .} ==> Nr11c5 ≠ 0
whip[1]: Br10c3{ne .} ==> Nr10c3 ≠ 3, Nr10c3 ≠ 1, Nr10c3 ≠ 0, Pr11c3 ≠ se, Pr11c3 ≠ ns, Pr11c3 ≠ ne, Pr10c3 ≠ nw, Pr10c3 ≠ ns, Vr10c3 ≠ 1, Pr10c3 ≠ sw, Pr11c3 ≠ ew
V-single: Vr10c3 = 0
N-single: Nr10c3 = 2
no-vertical-line-r10{c2 c3} ==> Ir10c2 = in
same-colour-in-{r10 r11}c2 ==> Hr11c2 = 0
same-colour-in-r10{c1 c2} ==> Vr10c2 = 0
whip[1]: Vr10c3{0 .} ==> Br10c2 ≠ e, Br10c2 ≠ ne
whip[1]: Br10c2{swn .} ==> Nr10c2 ≠ 2
whip[1]: Hr11c2{0 .} ==> Pr11c2 ≠ ne, Pr11c3 ≠ sw, Br10c2 ≠ swn, Br11c2 ≠ ns, Br11c2 ≠ nes
P-single: Pr11c3 = o
whip[1]: Pr11c3{o .} ==> Br11c2 ≠ se, Br11c2 ≠ ew, Br11c3 ≠ w, Br11c3 ≠ sw
whip[1]: Br11c3{s .} ==> Pr12c3 ≠ ns, Nr11c3 ≠ 2, Nr11c3 ≠ 3, Pr12c3 ≠ nw
whip[1]: Pr12c3{ew .} ==> Br12c3 ≠ ew, Br11c3 ≠ o, Br12c3 ≠ e
B-single: Br11c3 = s
whip[1]: Br11c3{s .} ==> Nr11c3 ≠ 0, Pr12c4 ≠ se
N-single: Nr11c3 = 1
P-single: Pr12c4 = sw
whip[1]: Pr12c4{sw .} ==> Br11c4 ≠ nes, Br12c4 ≠ swn
B-single: Br11c4 = ne
whip[1]: Br11c4{ne .} ==> Nr11c4 ≠ 3, Pr12c5 ≠ nw
N-single: Nr11c4 = 2
whip[1]: Pr12c5{ns .} ==> Br12c5 ≠ s, Br12c5 ≠ se, Br12c5 ≠ o, Br12c5 ≠ e
whip[1]: Br12c5{nes .} ==> Nr12c5 ≠ 0
whip[1]: Br12c4{esw .} ==> Nr12c4 ≠ 0, Nr12c4 ≠ 1
whip[1]: Br12c3{wne .} ==> Nr12c3 ≠ 0, Nr12c3 ≠ 1
whip[1]: Br11c2{w .} ==> Nr11c2 ≠ 2, Nr11c2 ≠ 3
N-single: Nr11c2 = 1
whip[1]: Br10c2{n .} ==> Pr10c2 ≠ se, Nr10c2 ≠ 3
whip[1]: Pr10c2{ew .} ==> Hr10c1 ≠ 0, Br9c1 ≠ nw, Br10c1 ≠ ew
H-single: Hr10c1 = 1
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
whip[1]: Hr10c1{1 .} ==> Pr10c1 ≠ ns
P-single: Pr10c1 = se
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e, Pr9c1 ≠ se
P-single: Pr9c1 = o
B-single: Br9c0 = o
whip[1]: Pr9c1{o .} ==> Br8c1 ≠ nes
B-single: Br8c1 = ne
whip[1]: Br8c1{ne .} ==> Nr8c1 ≠ 3
N-single: Nr8c1 = 2
whip[1]: Pr9c2{ns .} ==> Br9c2 ≠ se
whip[1]: Pr10c3{ew .} ==> Br9c3 ≠ nw, Br9c3 ≠ n
whip[1]: Br9c3{swn .} ==> Nr9c3 ≠ 1
whip[1]: Pr9c6{o .} ==> Br8c5 ≠ ew, Br8c6 ≠ w, Br8c6 ≠ ew
B-single: Br8c5 = nw
whip[1]: Br8c6{e .} ==> Nr8c6 ≠ 2
whip[1]: Pr8c5{se .} ==> Br7c4 ≠ ne
B-single: Br7c4 = n
whip[1]: Br7c4{n .} ==> Nr7c4 ≠ 2
N-single: Nr7c4 = 1
whip[1]: Br5c6{n .} ==> Nr5c6 ≠ 2, Nr5c6 ≠ 3
N-single: Nr5c6 = 1
whip[1]: Pr7c8{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ se
whip[1]: Pr8c10{ew .} ==> Br8c9 ≠ sw, Br8c9 ≠ ne
whip[1]: Pr9c13{ew .} ==> Br8c13 ≠ sw, Br8c13 ≠ esw, Br8c13 ≠ swn, Br8c13 ≠ o, Br8c13 ≠ n, Br8c13 ≠ e, Br8c13 ≠ ne
whip[1]: Br8c13{nes .} ==> Nr8c13 ≠ 0
whip[1]: Pr13c9{se .} ==> Br12c9 ≠ sw, Br12c9 ≠ wne, Br13c8 ≠ ne, Br13c8 ≠ ns, Br13c8 ≠ nw, Br13c8 ≠ swn, Br13c8 ≠ wne, Br13c8 ≠ nes, Br13c9 ≠ ne, Br13c9 ≠ ns, Br13c9 ≠ ew, Br13c9 ≠ sw, Br13c9 ≠ esw, Br13c9 ≠ nes, Br12c9 ≠ w, Br13c8 ≠ n, Br13c9 ≠ n, Br13c9 ≠ w
whip[1]: Pr13c8{sw .} ==> Br13c7 ≠ nw, Br13c7 ≠ se, Br13c7 ≠ ew, Br13c7 ≠ esw, Br13c7 ≠ swn, Br13c7 ≠ n, Br13c7 ≠ e, Br13c7 ≠ ns
whip[1]: Pr13c7{ew .} ==> Br13c6 ≠ sw, Br13c6 ≠ ne
whip[1]: Pr14c6{se .} ==> Br14c6 ≠ ne, Br14c6 ≠ ns, Br14c6 ≠ se, Br14c5 ≠ w
B-single: Br14c5 = ew
whip[1]: Br14c5{ew .} ==> Nr14c5 ≠ 1, Pr15c6 ≠ se
N-single: Nr14c5 = 2
P-single: Pr15c6 = ns
whip[1]: Pr15c6{ns .} ==> Br14c6 ≠ sw, Br15c5 ≠ s, Br15c6 ≠ s, Br15c6 ≠ ns, Br15c6 ≠ se, Br15c6 ≠ swn, Br15c6 ≠ nes
B-single: Br15c5 = e
whip[1]: Br15c5{e .} ==> Pr16c6 ≠ ew
P-single: Pr16c6 = ne
whip[1]: Pr16c6{ne .} ==> Br16c5 ≠ n
B-single: Br16c5 = o
whip[1]: Br15c6{esw .} ==> Pr15c7 ≠ ew, Pr15c7 ≠ sw, Nr15c6 ≠ 0, Nr15c6 ≠ 1
whip[1]: Br13c5{ne .} ==> Nr13c5 ≠ 3
whip[1]: Pr13c5{ew .} ==> Br12c5 ≠ sw, Br12c5 ≠ esw, Br12c5 ≠ n, Br12c5 ≠ ne
whip[1]: Vr12c3{1 .} ==> Pr12c3 ≠ ew, Pr13c3 ≠ sw, Br12c2 ≠ ns, Br12c3 ≠ ne
P-single: Pr13c3 = ns
P-single: Pr12c3 = se
B-single: Br12c3 = wne
B-single: Br12c2 = ew
w[1]-1-in-r11c2-symmetric-se-corner ==> Pr11c2 ≠ o
P-single: Pr11c2 = sw
whip[1]: Pr13c3{ns .} ==> Br13c2 ≠ ne
B-single: Br13c2 = e
whip[1]: Br13c2{e .} ==> Nr13c2 ≠ 2, Nr13c2 ≠ 0, Pr13c2 ≠ ew, Nr13c2 ≠ 3
N-single: Nr13c2 = 1
P-single: Pr12c1 = o
P-single: Pr13c2 = nw
whip[1]: Pr12c1{o .} ==> Vr11c1 ≠ 1, Hr12c1 ≠ 1, Br11c1 ≠ sw, Br12c1 ≠ ns
H-single: Hr12c1 = 0
V-single: Vr11c1 = 0
w[1]-2-in-r11c1-open-sw-corner ==> Hr11c1 = 1, Vr11c2 = 1
B-single: Br12c1 = se
B-single: Br11c1 = ne
vertical-line-r11{c1 c2} ==> Ir11c1 = out
whip[1]: Hr12c1{0 .} ==> Pr12c2 ≠ ew
P-single: Pr12c2 = ns
whip[1]: Pr12c2{ns .} ==> Br11c2 ≠ s
B-single: Br11c2 = w
whip[1]: Vr11c1{0 .} ==> Br11c0 ≠ e, Pr11c1 ≠ ns
P-single: Pr11c1 = ne
B-single: Br11c0 = o
whip[1]: Pr11c1{ne .} ==> Br10c1 ≠ nw
B-single: Br10c1 = swn
whip[1]: Br10c1{swn .} ==> Nr10c1 ≠ 2
N-single: Nr10c1 = 3
whip[1]: Br12c3{wne .} ==> Nr12c3 ≠ 2
N-single: Nr12c3 = 3
whip[1]: Pr16c2{ew .} ==> Br16c1 ≠ o
B-single: Br16c1 = n
whip[1]: Br16c1{n .} ==> Pr16c1 ≠ o
P-single: Pr16c1 = ne
whip[1]: Br15c1{swn .} ==> Nr15c1 ≠ 1
N-single: Nr15c1 = 3
whip[1]: Vr13c1{1 .} ==> Br13c0 ≠ o
B-single: Br13c0 = e
whip[1]: Vr14c1{0 .} ==> Br14c0 ≠ e
B-single: Br14c0 = o
whip[1]: Vr12c1{0 .} ==> Br12c0 ≠ e
B-single: Br12c0 = o
whip[1]: Vr15c1{1 .} ==> Br15c0 ≠ o
B-single: Br15c0 = e
whip[1]: Hr15c10{0 .} ==> Br15c10 ≠ nw, Pr15c10 ≠ ew, Pr15c11 ≠ nw, Pr15c11 ≠ ew, Br14c10 ≠ s, Br14c10 ≠ ns, Br14c10 ≠ se, Br14c10 ≠ sw, Br14c10 ≠ esw, Br14c10 ≠ swn, Br14c10 ≠ nes, Br15c10 ≠ ne, Br15c10 ≠ ns
whip[1]: Pr15c10{sw .} ==> Br15c9 ≠ sw
whip[1]: Vr10c15{0 .} ==> Br10c15 ≠ wne, Pr10c15 ≠ ns, Pr10c15 ≠ se, Pr10c15 ≠ sw, Pr11c15 ≠ ns, Pr11c15 ≠ nw, Br10c14 ≠ e, Br10c14 ≠ ne, Br10c14 ≠ se, Br10c14 ≠ ew, Br10c14 ≠ esw, Br10c14 ≠ nes, Br10c15 ≠ w, Br10c15 ≠ nw, Br10c15 ≠ ew, Br10c15 ≠ sw, Br10c15 ≠ esw, Br10c15 ≠ swn
whip[1]: Br10c14{sw .} ==> Nr10c14 ≠ 3
whip[1]: Pr11c15{sw .} ==> Br11c14 ≠ sw
whip[1]: Vr12c15{0 .} ==> Br12c15 ≠ wne, Pr12c15 ≠ ns, Pr12c15 ≠ sw, Pr13c15 ≠ ne, Pr13c15 ≠ ns, Pr13c15 ≠ nw, Br12c14 ≠ e, Br12c15 ≠ w, Br12c15 ≠ nw, Br12c15 ≠ ew, Br12c15 ≠ sw, Br12c15 ≠ esw, Br12c15 ≠ swn
whip[1]: Br12c14{w .} ==> Pr13c14 ≠ ne, Pr12c14 ≠ se
whip[1]: Pr12c15{ew .} ==> Br11c14 ≠ nw
whip[1]: Vr11c16{1 .} ==> Br11c15 ≠ swn, Br11c16 ≠ o, Pr11c16 ≠ o, Pr11c16 ≠ nw, Pr12c16 ≠ o, Pr12c16 ≠ sw
B-single: Br11c16 = w
whip[1]: Pr12c16{nw .} ==> Br12c15 ≠ ne, Br12c15 ≠ nes, Br12c15 ≠ o, Br12c15 ≠ s
whip[1]: Br12c15{se .} ==> Nr12c15 ≠ 0, Nr12c15 ≠ 3
whip[1]: Pr11c16{sw .} ==> Br10c15 ≠ se, Br10c15 ≠ nes, Br10c15 ≠ o, Br10c15 ≠ n
whip[1]: Br10c15{ns .} ==> Nr10c15 ≠ 0, Nr10c15 ≠ 3
whip[1]: Hr16c9{0 .} ==> Br15c9 ≠ se, Br16c9 ≠ n, Pr16c9 ≠ ew, Pr16c10 ≠ ew, Br15c9 ≠ ns
w[1]-3-in-r14c9-asymmetric-se-corner ==> Vr14c9 = 1, Vr13c9 = 0, Hr14c8 = 0
w[1]-3-in-r15c8-hit-by-verti-line-at-ne ==> Hr15c9 = 0
P-single: Pr16c9 = nw
P-single: Pr15c10 = ns
P-single: Pr16c10 = ne
B-single: Br16c9 = o
no-horizontal-line-{r14 r15}c9 ==> Ir14c9 = out
vertical-line-r14{c9 c10} ==> Ir14c10 = in
no-horizontal-line-{r13 r14}c10 ==> Ir13c10 = in
no-vertical-line-r13{c9 c10} ==> Ir13c9 = in
no-vertical-line-r13{c8 c9} ==> Ir13c8 = in
no-horizontal-line-{r12 r13}c8 ==> Ir12c8 = in
no-vertical-line-r12{c7 c8} ==> Ir12c7 = in
no-horizontal-line-{r11 r12}c7 ==> Ir11c7 = in
vertical-line-r11{c7 c8} ==> Ir11c8 = out
no-vertical-line-r12{c8 c9} ==> Ir12c9 = in
no-horizontal-line-{r14 r15}c10 ==> Ir15c10 = in
different-colours-in-{r15 r16}c10 ==> Hr16c10 = 1
different-colours-in-r15{c9 c10} ==> Hr15c10 = 1
same-colour-in-{r12 r13}c9 ==> Hr13c9 = 0
different-colours-in-r12{c9 c10} ==> Hr12c10 = 1
different-colours-in-{r11 r12}c9 ==> Hr12c9 = 1
w[1]-3-in-r11c8-hit-by-horiz-line-at-se ==> Hr11c8 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r10 r11}c8 ==> Hr10c8 = 0
w[1]-3-in-r11c8-closed-nw-corner ==> Pr12c9 ≠ nw
w[1]-3-in-r9c7-isolated-at-se-corner ==> Vr9c8 = 1
w[1]-3-in-r9c7-closed-se-corner ==> Pr9c7 ≠ se
P-single: Pr9c7 = ns
P-single: Pr12c9 = ew
P-single: Pr9c8 = se
P-single: Pr10c9 = o
P-single: Pr11c8 = se
w[1]-1-in-r12c6-asymmetric-ne-corner ==> Pr13c6 ≠ ew, Pr13c6 ≠ nw, Pr13c6 ≠ ns
vertical-line-r9{c7 c8} ==> Ir9c8 = in
same-colour-in-r9{c8 c9} ==> Vr9c9 = 0
w[1]-2-in-r9c8-open-se-corner ==> Hr9c8 = 1, Hr9c7 = 0, Vr8c8 = 0
w[1]-2-in-r8c7-open-se-corner ==> Hr8c7 = 1, Vr8c7 = 1
P-single: Pr7c8 = ew
P-single: Pr8c7 = se
vertical-line-r8{c6 c7} ==> Ir8c7 = out
no-vertical-line-r8{c7 c8} ==> Ir8c8 = out
same-colour-in-r11{c8 c9} ==> Vr11c9 = 0
P-single: Pr12c10 = sw
P-single: Pr11c9 = ew
w[1]-1-in-r10c8-asymmetric-se-corner ==> Pr10c8 ≠ ew
P-single: Pr10c8 = nw
different-colours-in-r11{c6 c7} ==> Hr11c7 = 1
different-colours-in-{r12 r13}c10 ==> Hr13c10 = 1

LOOP[10]: Hr13c10-Vr12c10-Hr12c9-Hr12c8-Vr11c8-Hr11c8-Hr11c9-Hr11c10-Vr11c11- ==> Vr12c11 = 0
no-vertical-line-r12{c10 c11} ==> Ir12c11 = out
different-colours-in-{r11 r12}c11 ==> Hr12c11 = 1
whip[1]: Vr14c9{1 .} ==> Br14c8 ≠ o, Pr14c9 ≠ o, Pr14c9 ≠ ne, Pr14c9 ≠ nw, Pr14c9 ≠ ew, Pr15c9 ≠ ew, Br14c8 ≠ n, Br14c8 ≠ s, Br14c8 ≠ w, Br14c8 ≠ ns, Br14c8 ≠ nw, Br14c8 ≠ sw, Br14c8 ≠ swn, Br14c9 ≠ nes
P-single: Pr15c9 = ns
whip[1]: Pr15c9{ns .} ==> Br14c8 ≠ se, Br14c8 ≠ esw, Br14c8 ≠ nes, Br14c9 ≠ esw, Br14c9 ≠ swn, Br15c8 ≠ swn, Br15c8 ≠ wne, Br15c8 ≠ nes, Br15c9 ≠ ne, Br15c9 ≠ nw
B-single: Br15c9 = ew
B-single: Br15c8 = esw
B-single: Br14c9 = wne
whip[1]: Br15c8{esw .} ==> Pr15c8 ≠ ew, Pr15c8 ≠ ne, Pr16c8 ≠ ew
P-single: Pr16c8 = ne
whip[1]: Pr16c8{ne .} ==> Br16c8 ≠ o, Br16c7 ≠ n, Br15c7 ≠ esw, Br15c7 ≠ swn, Br15c7 ≠ nes
B-single: Br15c7 = wne
B-single: Br16c7 = o
B-single: Br16c8 = n
whip[1]: Br15c7{wne .} ==> Pr15c8 ≠ ns, Pr15c7 ≠ ns, Pr15c7 ≠ ne, Pr15c7 ≠ o, Pr16c7 ≠ ew
P-single: Pr14c6 = se
P-single: Pr16c7 = nw
P-single: Pr15c7 = se
P-single: Pr15c8 = sw
whip[1]: Pr14c6{se .} ==> Br13c5 ≠ e, Br13c5 ≠ ne, Br13c6 ≠ nw, Br13c6 ≠ ew, Br14c6 ≠ ew
B-single: Br14c6 = nw
whip[1]: Br14c6{nw .} ==> Pr14c7 ≠ ns
whip[1]: Pr14c7{ew .} ==> Br13c7 ≠ sw, Br14c7 ≠ nw, Br14c7 ≠ ew, Br14c7 ≠ sw, Br14c7 ≠ esw, Br14c7 ≠ swn, Br14c7 ≠ wne, Br13c7 ≠ o, Br13c7 ≠ ne, Br14c7 ≠ w
whip[1]: Br13c7{nes .} ==> Nr13c7 ≠ 0, Nr13c7 ≠ 2
whip[1]: Br13c6{se .} ==> Pr13c6 ≠ sw
whip[1]: Pr13c6{ne .} ==> Hr13c5 ≠ 1, Br12c5 ≠ ns, Br12c5 ≠ nes, Br12c6 ≠ s, Br12c6 ≠ w, Br13c5 ≠ n
H-single: Hr13c5 = 0
B-single: Br13c5 = o
no-horizontal-line-{r12 r13}c5 ==> Ir12c5 = out
same-colour-in-{r11 r12}c5 ==> Hr12c5 = 0
different-colours-in-r12{c4 c5} ==> Hr12c5 = 1

LOOP[30]: Hr10c3-Vr10c4-Hr11c4-Vr11c5-Vr12c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Vr13c3-Hr14c3-Hr14c4-Vr14c5-Hr15c4-Vr15c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Hr13c1-Vr12c2-Vr11c2-Hr11c1-Vr10c1-Hr10c1- ==> Hr10c2 = 0
w[0]-adjacent-3-in-r10c1-nolines-east ==> Vr9c2 = 1
vertical-line-r9{c1 c2} ==> Ir9c2 = in
different-colours-in-r9{c2 c3} ==> Hr9c3 = 1
whip[1]: Hr13c5{0 .} ==> Pr13c5 ≠ ew
P-single: Pr13c5 = nw
whip[1]: Pr13c5{nw .} ==> Br12c4 ≠ sw
B-single: Br12c4 = esw
whip[1]: Br12c4{esw .} ==> Nr12c4 ≠ 2, Pr12c5 ≠ ne
N-single: Nr12c4 = 3
P-single: Pr12c5 = ns
whip[1]: Pr12c5{ns .} ==> Br11c5 ≠ sw
B-single: Br11c5 = w
whip[1]: Br11c5{w .} ==> Nr11c5 ≠ 2, Pr12c6 ≠ ew, Pr12c6 ≠ sw
N-single: Nr11c5 = 1
w[1]-diagonal-1-1-in-{r11c5...r12c6}-with-no-se-inner-sides ==> Hr12c6 = 0, Vr12c6 = 0
w[1]-1-in-r12c6-symmetric-nw-corner ==> Pr13c7 ≠ se, Pr13c7 ≠ nw
no-vertical-line-r12{c5 c6} ==> Ir12c6 = out
same-colour-in-{r12 r13}c6 ==> Hr13c6 = 0
w[1]-2-in-r13c6-open-nw-corner ==> Vr13c7 = 1, Hr14c7 = 0
no-horizontal-line-{r13 r14}c7 ==> Ir13c7 = in
same-colour-in-r13{c7 c8} ==> Vr13c8 = 0
same-colour-in-{r12 r13}c7 ==> Hr13c7 = 0
different-colours-in-r12{c6 c7} ==> Hr12c7 = 1
whip[1]: Hr12c6{0 .} ==> Pr12c6 ≠ se, Pr12c7 ≠ nw, Br11c6 ≠ ns, Br11c6 ≠ nes, Br12c6 ≠ n
P-single: Pr12c7 = ns
P-single: Pr12c6 = o
B-single: Br12c6 = e
w[1]-1-in-r12c7-asymmetric-nw-corner ==> Pr13c8 ≠ sw
P-single: Pr13c8 = o
whip[1]: Pr12c7{ns .} ==> Br11c6 ≠ n, Br11c7 ≠ ne, Br12c7 ≠ s
B-single: Br12c7 = w
B-single: Br11c7 = ew
B-single: Br11c6 = ne
whip[1]: Br12c7{w .} ==> Pr13c7 ≠ ew
P-single: Pr13c7 = ns
whip[1]: Pr13c7{ns .} ==> Br13c6 ≠ ns, Br13c7 ≠ s, Br13c7 ≠ wne, Br13c7 ≠ nes
B-single: Br13c7 = w
B-single: Br13c6 = se
whip[1]: Br13c7{w .} ==> Nr13c7 ≠ 3, Pr14c8 ≠ nw, Pr14c8 ≠ ns, Pr14c8 ≠ ne, Pr14c7 ≠ ew, Pr14c8 ≠ ew, Pr14c8 ≠ sw
N-single: Nr13c7 = 1
P-single: Pr13c6 = o
P-single: Pr14c7 = nw
whip[1]: Pr13c6{o .} ==> Br12c5 ≠ ew
B-single: Br12c5 = w
whip[1]: Br12c5{w .} ==> Nr12c5 ≠ 3, Nr12c5 ≠ 2
N-single: Nr12c5 = 1
whip[1]: Pr14c7{nw .} ==> Br14c7 ≠ n, Br14c7 ≠ ne, Br14c7 ≠ ns, Br14c7 ≠ nes
whip[1]: Br14c7{se .} ==> Nr14c7 ≠ 3
whip[1]: Pr14c8{se .} ==> Br13c8 ≠ ew, Br13c8 ≠ sw, Br13c8 ≠ esw, Br14c8 ≠ ne, Br14c8 ≠ ew, Br13c8 ≠ w
whip[1]: Br13c8{se .} ==> Nr13c8 ≠ 3
whip[1]: Br14c8{wne .} ==> Nr14c8 ≠ 0, Nr14c8 ≠ 2
whip[1]: Br11c7{ew .} ==> Pr11c7 ≠ ew
P-single: Pr11c7 = sw
whip[1]: Pr11c7{sw .} ==> Br10c7 ≠ ns
B-single: Br10c7 = n
whip[1]: Br10c7{n .} ==> Nr10c7 ≠ 2
N-single: Nr10c7 = 1
whip[1]: Br11c6{ne .} ==> Nr11c6 ≠ 3, Nr11c6 ≠ 1
N-single: Nr11c6 = 2
whip[1]: Br13c5{o .} ==> Nr13c5 ≠ 1, Nr13c5 ≠ 2
N-single: Nr13c5 = 0
whip[1]: Hr10c2{0 .} ==> Pr10c2 ≠ ew, Pr10c3 ≠ ew, Br9c2 ≠ ns, Br10c2 ≠ n
P-single: Pr10c3 = ne
P-single: Pr10c2 = nw
B-single: Br10c2 = o
B-single: Br9c2 = ew
whip[1]: Pr10c3{ne .} ==> Br9c3 ≠ ns
B-single: Br9c3 = swn
whip[1]: Br9c3{swn .} ==> Nr9c3 ≠ 2, Pr9c3 ≠ ew
N-single: Nr9c3 = 3
P-single: Pr9c3 = se
whip[1]: Pr9c3{se .} ==> Br8c2 ≠ sw
B-single: Br8c2 = w
whip[1]: Br8c2{w .} ==> Nr8c2 ≠ 2, Pr9c2 ≠ ne
N-single: Nr8c2 = 1
P-single: Pr9c2 = ns
whip[1]: Pr9c2{ns .} ==> Br9c1 ≠ s
B-single: Br9c1 = se
whip[1]: Br9c1{se .} ==> Nr9c1 ≠ 1
N-single: Nr9c1 = 2
whip[1]: Br10c2{o .} ==> Nr10c2 ≠ 1
N-single: Nr10c2 = 0
whip[1]: Pr16c7{nw .} ==> Br15c6 ≠ sw
B-single: Br15c6 = esw
whip[1]: Br15c6{esw .} ==> Nr15c6 ≠ 2
N-single: Nr15c6 = 3
whip[1]: Pr15c7{se .} ==> Br14c7 ≠ e, Br14c7 ≠ o
whip[1]: Br14c7{se .} ==> Nr14c7 ≠ 0
whip[1]: Pr15c8{sw .} ==> Br14c7 ≠ se, Br14c8 ≠ wne
B-single: Br14c8 = e
B-single: Br14c7 = s
whip[1]: Br14c8{e .} ==> Pr14c8 ≠ se, Pr14c9 ≠ sw, Nr14c8 ≠ 3
N-single: Nr14c8 = 1
P-single: Pr14c8 = o
whip[1]: Pr14c8{o .} ==> Br13c8 ≠ s, Br13c8 ≠ se
whip[1]: Br13c8{e .} ==> Nr13c8 ≠ 2
whip[1]: Pr14c9{se .} ==> Br13c9 ≠ swn, Br13c9 ≠ o, Br13c9 ≠ e
whip[1]: Br13c9{wne .} ==> Nr13c9 ≠ 0
whip[1]: Br14c7{s .} ==> Nr14c7 ≠ 2
N-single: Nr14c7 = 1
whip[1]: Br14c9{wne .} ==> Pr14c10 ≠ ew, Pr14c10 ≠ se, Pr14c10 ≠ nw, Pr14c10 ≠ ns, Pr14c10 ≠ ne, Pr14c10 ≠ o, Pr14c9 ≠ ns
P-single: Pr14c9 = se
P-single: Pr14c10 = sw
whip[1]: Pr14c9{se .} ==> Br13c8 ≠ e, Br13c9 ≠ nw, Br13c9 ≠ wne
B-single: Br13c8 = o
whip[1]: Br13c8{o .} ==> Pr13c9 ≠ se, Nr13c8 ≠ 1
N-single: Nr13c8 = 0
P-single: Pr13c9 = o
whip[1]: Pr13c9{o .} ==> Br12c9 ≠ s, Br12c9 ≠ nes
whip[1]: Br12c9{ne .} ==> Pr13c10 ≠ nw, Nr12c9 ≠ 1, Nr12c9 ≠ 3, Pr13c10 ≠ ew, Pr13c10 ≠ sw
whip[1]: Br13c9{se .} ==> Nr13c9 ≠ 3
whip[1]: Pr14c10{sw .} ==> Br14c10 ≠ ne, Br14c10 ≠ e, Br14c10 ≠ n, Br14c10 ≠ o, Br13c10 ≠ ns, Br13c10 ≠ w, Br13c10 ≠ s, Br13c9 ≠ se, Br13c10 ≠ nw, Br13c10 ≠ se, Br13c10 ≠ ew, Br13c10 ≠ sw, Br13c10 ≠ esw, Br13c10 ≠ swn, Br13c10 ≠ wne, Br13c10 ≠ nes, Br14c10 ≠ nw, Br14c10 ≠ wne
B-single: Br13c9 = s
whip[1]: Br13c9{s .} ==> Nr13c9 ≠ 2, Pr13c10 ≠ ns, Pr13c10 ≠ se
N-single: Nr13c9 = 1
whip[1]: Pr13c10{ne .} ==> Br12c10 ≠ s, Br12c10 ≠ w, Br12c10 ≠ se, Br12c10 ≠ ew
whip[1]: Br14c10{ew .} ==> Pr14c11 ≠ nw, Pr14c11 ≠ ew, Pr14c11 ≠ sw, Nr14c10 ≠ 0, Nr14c10 ≠ 3
whip[1]: Br13c10{ne .} ==> Nr13c10 ≠ 3
whip[1]: Pr15c10{ns .} ==> Br15c10 ≠ se
whip[1]: Pr16c10{ne .} ==> Br16c10 ≠ o, Br15c10 ≠ ew
B-single: Br15c10 = sw
B-single: Br16c10 = n
whip[1]: Br15c10{sw .} ==> Pr16c11 ≠ ne, Vr15c11 ≠ 1
V-single: Vr15c11 = 0
P-single: Pr16c11 = ew
no-vertical-line-r15{c10 c11} ==> Ir15c11 = in
different-colours-in-{r15 r16}c11 ==> Hr16c11 = 1
whip[1]: Vr15c11{0 .} ==> Br15c11 ≠ nw, Br15c11 ≠ ew, Br15c11 ≠ sw
whip[1]: Pr16c11{ew .} ==> Br15c11 ≠ ne, Br16c11 ≠ o
B-single: Br16c11 = n
whip[1]: Br16c11{n .} ==> Pr16c12 ≠ ne
whip[1]: Pr16c12{ew .} ==> Br15c12 ≠ sw, Br15c12 ≠ esw, Br15c12 ≠ swn, Br15c12 ≠ o, Br15c12 ≠ n, Br15c12 ≠ e, Br15c12 ≠ ne
whip[1]: Br15c12{nes .} ==> Nr15c12 ≠ 0
whip[1]: Pr15c12{ew .} ==> Br14c12 ≠ sw, Br14c12 ≠ esw, Br14c12 ≠ swn, Br14c12 ≠ o, Br14c12 ≠ n, Br14c12 ≠ e, Br14c12 ≠ ne
whip[1]: Br14c12{nes .} ==> Nr14c12 ≠ 0
whip[1]: Vr12c10{1 .} ==> Br12c10 ≠ o, Br12c9 ≠ o, Pr13c10 ≠ o, Br12c10 ≠ e
P-single: Pr13c10 = ne
B-single: Br12c9 = ne
whip[1]: Pr13c10{ne .} ==> Br13c10 ≠ o, Br13c10 ≠ e
whip[1]: Br13c10{ne .} ==> Pr13c11 ≠ o, Pr13c11 ≠ ne, Pr13c11 ≠ ns, Pr13c11 ≠ se, Nr13c10 ≠ 0
whip[1]: Pr13c11{sw .} ==> Br12c11 ≠ sw, Br12c11 ≠ esw, Br13c11 ≠ nw, Br13c11 ≠ swn, Br13c11 ≠ wne
whip[1]: Br12c9{ne .} ==> Nr12c9 ≠ 0
N-single: Nr12c9 = 2
whip[1]: Br12c10{esw .} ==> Nr12c10 ≠ 0, Nr12c10 ≠ 1
whip[1]: Hr12c9{1 .} ==> Br11c9 ≠ nw
B-single: Br11c9 = ns
whip[1]: Hr11c8{1 .} ==> Br10c8 ≠ n, Br11c8 ≠ esw
B-single: Br11c8 = swn
B-single: Br10c8 = s
whip[1]: Hr10c8{0 .} ==> Br9c8 ≠ se
B-single: Br9c8 = nw
whip[1]: Br9c8{nw .} ==> Pr9c9 ≠ se, Pr9c9 ≠ ns
whip[1]: Pr9c9{ew .} ==> Br8c8 ≠ ew, Br9c9 ≠ ew, Br9c9 ≠ wne, Br8c8 ≠ w
whip[1]: Br8c8{nes .} ==> Hr8c8 ≠ 0, Pr8c8 ≠ ns, Pr8c9 ≠ ne, Pr8c9 ≠ ns, Nr8c8 ≠ 1
H-single: Hr8c8 = 1
P-single: Pr8c8 = ew

LOOP[8]: Hr8c8-Hr8c7-Vr8c7-Vr9c7-Hr10c7-Vr9c8-Hr9c8- ==> Vr8c9 = 0
no-vertical-line-r8{c8 c9} ==> Ir8c9 = out
horizontal-line-{r7 r8}c8 ==> Ir7c8 = in
same-colour-in-r7{c8 c9} ==> Vr7c9 = 0
same-colour-in-r7{c7 c8} ==> Vr7c8 = 0
different-colours-in-{r6 r7}c8 ==> Hr7c8 = 1
same-colour-in-r8{c9 c10} ==> Vr8c10 = 0
w[1]-diagonal-3-2s-in-{r6c7...r8c9}-non-closed-se-end ==> Hr9c9 = 1
different-colours-in-{r7 r8}c9 ==> Hr8c9 = 1
whip[1]: Hr8c8{1 .} ==> Br7c8 ≠ ew
B-single: Br7c8 = ns
whip[1]: Br7c8{ns .} ==> Pr7c9 ≠ se
P-single: Pr7c9 = ew
whip[1]: Pr7c9{ew .} ==> Br6c8 ≠ n, Br7c9 ≠ nw, Br7c9 ≠ swn, Br7c9 ≠ wne
B-single: Br6c8 = ns
whip[1]: Br6c8{ns .} ==> Nr6c8 ≠ 1
N-single: Nr6c8 = 2
whip[1]: Pr8c8{ew .} ==> Br7c7 ≠ ne, Br8c7 ≠ se
B-single: Br8c7 = nw
B-single: Br7c7 = ns
whip[1]: Vr8c9{0 .} ==> Pr8c9 ≠ sw, Pr9c9 ≠ nw, Br8c8 ≠ nes, Br8c9 ≠ ew
P-single: Pr9c9 = ew
P-single: Pr8c9 = ew
B-single: Br8c9 = ns
B-single: Br8c8 = ns
whip[1]: Pr9c9{ew .} ==> Br9c9 ≠ e
B-single: Br9c9 = ne
whip[1]: Br9c9{ne .} ==> Nr9c9 ≠ 3, Nr9c9 ≠ 1, Pr9c10 ≠ ns
N-single: Nr9c9 = 2
P-single: Pr9c10 = sw
whip[1]: Pr9c10{sw .} ==> Br8c10 ≠ w, Br8c10 ≠ nw
whip[1]: Br8c10{n .} ==> Pr8c10 ≠ ns, Pr8c10 ≠ se, Nr8c10 ≠ 2
whip[1]: Pr8c10{ew .} ==> Br7c9 ≠ n, Br7c9 ≠ ne
whip[1]: Br7c9{nes .} ==> Nr7c9 ≠ 1
whip[1]: Br8c8{ns .} ==> Nr8c8 ≠ 3
N-single: Nr8c8 = 2
whip[1]: Vr9c8{1 .} ==> Br9c7 ≠ swn
B-single: Br9c7 = esw
whip[1]: Pr9c7{ns .} ==> Br8c6 ≠ o
B-single: Br8c6 = e
whip[1]: Br8c6{e .} ==> Nr8c6 ≠ 0
N-single: Nr8c6 = 1
whip[1]: Vr12c11{0 .} ==> Pr12c11 ≠ ns, Pr13c11 ≠ nw, Br12c10 ≠ esw, Br12c11 ≠ w, Br12c11 ≠ ew
P-single: Pr12c11 = ne
B-single: Br12c10 = sw
whip[1]: Pr12c11{ne .} ==> Br11c11 ≠ w, Br11c11 ≠ ew
whip[1]: Br11c11{esw .} ==> Pr12c12 ≠ o, Pr12c12 ≠ ne, Pr12c12 ≠ ns, Pr12c12 ≠ se, Nr11c11 ≠ 1
whip[1]: Pr12c12{sw .} ==> Br11c12 ≠ sw, Br11c12 ≠ esw
whip[1]: Br12c10{sw .} ==> Nr12c10 ≠ 3
N-single: Nr12c10 = 2
whip[1]: Pr13c11{sw .} ==> Br13c11 ≠ se, Br13c11 ≠ o, Br13c11 ≠ e, Br13c11 ≠ s
whip[1]: Br13c11{nes .} ==> Nr13c11 ≠ 0
whip[1]: Pr15c11{ne .} ==> Br14c11 ≠ s, Br14c11 ≠ w, Br14c11 ≠ ns, Br14c11 ≠ nw, Br14c11 ≠ se, Br14c11 ≠ ew, Br14c11 ≠ wne, Br14c11 ≠ nes
whip[1]: Vr5c16{0 .} ==> Br5c16 ≠ w
B-single: Br5c16 = o
whip[1]: Hr1c15{0 .} ==> Br0c15 ≠ s
B-single: Br0c15 = o
whip[1]: Vr1c16{0 .} ==> Br1c16 ≠ w
B-single: Br1c16 = o
whip[1]: Vr11c13{0 .} ==> Br11c12 ≠ nes, Vr11c13 ≠ 1, Pr11c13 ≠ ns, Pr11c13 ≠ se, Pr11c13 ≠ sw, Pr12c13 ≠ ne, Pr12c13 ≠ ns, Pr12c13 ≠ nw, Br11c12 ≠ ne, Br11c12 ≠ ew
whip[1]: Br11c12{ns .} ==> Nr11c12 ≠ 3
whip[1]: Vr11c14{0 .} ==> Br11c14 ≠ ew, Vr11c14 ≠ 1, Pr11c14 ≠ ns, Pr11c14 ≠ sw, Pr12c14 ≠ ns, Pr12c14 ≠ nw
whip[1]: Pr12c14{sw .} ==> Br12c13 ≠ se, Br12c13 ≠ ew, Br12c13 ≠ esw, Br12c13 ≠ e
whip[1]: Hr11c13{0 .} ==> Br10c13 ≠ swn, Hr11c13 ≠ 1, Pr11c13 ≠ ne, Pr11c13 ≠ ew, Pr11c14 ≠ nw, Pr11c14 ≠ ew, Br10c13 ≠ s, Br10c13 ≠ se
whip[1]: Pr11c14{ne .} ==> Br10c14 ≠ s, Br10c14 ≠ w, Br10c14 ≠ ns
whip[1]: Pr11c13{nw .} ==> Br10c12 ≠ ew, Br10c12 ≠ sw
whip[1]: Br10c12{esw .} ==> Nr10c12 ≠ 2
whip[1]: Hr12c13{0 .} ==> Br12c13 ≠ nes, Hr12c13 ≠ 1, Pr12c13 ≠ se, Pr12c13 ≠ ew, Pr12c14 ≠ ew, Pr12c14 ≠ sw, Br12c13 ≠ n, Br12c13 ≠ ne, Br12c13 ≠ ns, Br12c13 ≠ nw, Br12c13 ≠ swn, Br12c13 ≠ wne
w[1]-3-in-r11c15-asymmetric-nw-corner ==> Hr12c15 = 1, Vr12c16 = 0
P-single: Pr11c14 = ne
P-single: Pr11c15 = sw
P-single: Pr12c14 = o
w[1]-1-in-r12c12-symmetric-ne-corner ==> Pr13c12 ≠ sw, Pr13c12 ≠ ne, Pr13c12 ≠ o
w[1]-1-in-r12c14-symmetric-nw-corner ==> Pr13c15 ≠ se, Pr13c15 ≠ o
w[1]-3-in-r13c15-asymmetric-nw-corner ==> Vr13c16 = 1, Hr14c15 = 1, Vr14c16 = 0
w[1]-diagonal-closed-3-1-in-{r13c15...r12c14} ==> Vr12c14 = 0, Hr12c14 = 0
w[1]-2-in-r11c14-open-sw-corner ==> Hr11c14 = 1, Vr11c15 = 1, Hr11c15 = 0
w[1]-3-in-r11c15-closed-sw-corner ==> Pr11c16 ≠ sw
P-single: Pr11c16 = ns
no-horizontal-line-{r10 r11}c15 ==> Ir10c15 = in
no-vertical-line-r10{c14 c15} ==> Ir10c14 = in
horizontal-line-{r10 r11}c14 ==> Ir11c14 = out
no-vertical-line-r11{c13 c14} ==> Ir11c13 = out
no-vertical-line-r11{c12 c13} ==> Ir11c12 = out
no-horizontal-line-{r10 r11}c13 ==> Ir10c13 = out
no-horizontal-line-{r11 r12}c13 ==> Ir12c13 = out
no-vertical-line-r12{c13 c14} ==> Ir12c14 = out
no-vertical-line-r12{c14 c15} ==> Ir12c15 = out
no-vertical-line-r14{c15 c16} ==> Ir14c15 = out
horizontal-line-{r13 r14}c15 ==> Ir13c15 = in
different-colours-in-{r12 r13}c15 ==> Hr13c15 = 1
w[1]-3-in-r13c15-closed-ne-corner ==> Pr14c15 ≠ sw, Pr14c15 ≠ ne, Pr14c15 ≠ o
w[1]-diagonal-closed-3-1-in-{r13c15...r14c14} ==> Vr14c14 = 0, Hr15c14 = 0
w[1]-1-in-r14c14-asymmetric-ne-corner ==> Pr15c14 ≠ ew, Pr15c14 ≠ nw, Pr15c14 ≠ ns
different-colours-in-r10{c13 c14} ==> Hr10c14 = 1
same-colour-in-r10{c12 c13} ==> Vr10c13 = 0
same-colour-in-{r9 r10}c13 ==> Hr10c13 = 0
w[1]-2-in-r9c13-open-sw-corner ==> Hr9c13 = 1, Vr9c14 = 1, Hr9c14 = 0, Vr8c14 = 0
P-single: Pr9c13 = ew
vertical-line-r9{c13 c14} ==> Ir9c14 = in
no-horizontal-line-{r8 r9}c14 ==> Ir8c14 = in
no-vertical-line-r8{c13 c14} ==> Ir8c13 = in
same-colour-in-r8{c12 c13} ==> Vr8c13 = 0
same-colour-in-{r9 r10}c14 ==> Hr10c14 = 0
w[1]-1-in-r8c15-asymmetric-sw-corner ==> Pr8c16 ≠ nw, Pr8c16 ≠ ns
same-colour-in-{r10 r11}c12 ==> Hr11c12 = 0
different-colours-in-r11{c11 c12} ==> Hr11c12 = 1
no-vertical-line-r12{c11 c12} ==> Ir12c12 = out
same-colour-in-r12{c12 c13} ==> Vr12c13 = 0
different-colours-in-r10{c15 c16} ==> Hr10c16 = 1
whip[1]: Hr12c15{1 .} ==> Pr12c16 ≠ ns, Br11c15 ≠ wne, Br12c15 ≠ e, Br12c15 ≠ se
P-single: Pr12c16 = nw
whip[1]: Br12c15{ns .} ==> Pr13c16 ≠ ns, Pr13c16 ≠ nw
whip[1]: Pr13c16{sw .} ==> Br13c15 ≠ esw, Br13c15 ≠ swn
whip[1]: Br13c15{nes .} ==> Pr13c16 ≠ o, Pr14c16 ≠ o, Pr14c16 ≠ sw, Pr13c15 ≠ sw
P-single: Pr13c15 = ew
P-single: Pr13c16 = sw
w[1]-1-in-r14c13-asymmetric-ne-corner ==> Pr15c13 ≠ ew, Pr15c13 ≠ se, Pr15c13 ≠ nw, Pr15c13 ≠ ns
whip[1]: Pr13c15{ew .} ==> Br13c14 ≠ ne, Br12c15 ≠ n, Br12c14 ≠ w, Br12c14 ≠ n, Vr13c15 ≠ 1, Hr13c14 ≠ 0, Br13c14 ≠ se, Br13c14 ≠ ew, Br13c14 ≠ sw, Br13c15 ≠ wne
H-single: Hr13c14 = 1
V-single: Vr13c15 = 0
B-single: Br13c15 = nes
B-single: Br12c14 = s
B-single: Br12c15 = ns
no-vertical-line-r13{c14 c15} ==> Ir13c14 = in
whip[1]: Hr13c14{1 .} ==> Pr13c14 ≠ ns, Pr13c14 ≠ sw
w[1]-1-in-r12c14-asymmetric-sw-corner ==> Pr12c15 ≠ ew
P-single: Pr12c15 = ne
whip[1]: Pr12c15{ne .} ==> Br11c14 ≠ ns, Br11c14 ≠ se, Br11c15 ≠ nes
B-single: Br11c15 = esw
B-single: Br11c14 = ne
whip[1]: Pr13c14{ew .} ==> Br13c13 ≠ sw, Br13c13 ≠ wne, Br13c13 ≠ nes, Br13c13 ≠ o, Br13c13 ≠ s, Br13c13 ≠ w, Br13c13 ≠ ne
whip[1]: Br13c13{swn .} ==> Nr13c13 ≠ 0
whip[1]: Vr13c15{0 .} ==> Pr14c15 ≠ ns
whip[1]: Pr14c15{ew .} ==> Br14c15 ≠ se, Br14c15 ≠ ew, Br14c15 ≠ sw, Br14c15 ≠ esw, Br14c14 ≠ s, Br14c14 ≠ w, Br14c15 ≠ o, Br14c15 ≠ e, Br14c15 ≠ s, Br14c15 ≠ w
whip[1]: Br14c15{nes .} ==> Pr14c16 ≠ ns, Nr14c15 ≠ 0
P-single: Pr14c16 = nw
whip[1]: Pr14c16{nw .} ==> Br14c15 ≠ ne, Br14c15 ≠ wne, Br14c15 ≠ nes
whip[1]: Br14c15{swn .} ==> Pr15c16 ≠ ns, Pr15c16 ≠ nw
whip[1]: Pr15c16{sw .} ==> Br15c15 ≠ nw, Br15c15 ≠ se, Br15c15 ≠ esw, Br15c15 ≠ n
whip[1]: Br15c15{nes .} ==> Pr16c15 ≠ ne, Pr15c15 ≠ se, Nr15c15 ≠ 2
whip[1]: Pr15c15{ew .} ==> Br15c14 ≠ ne
whip[1]: Pr16c15{ew .} ==> Br16c14 ≠ o, Hr16c14 ≠ 0, Br15c14 ≠ nw, Br15c14 ≠ ew, Br15c15 ≠ o
H-single: Hr16c14 = 1
B-single: Br16c14 = n
horizontal-line-{r15 r16}c14 ==> Ir15c14 = in
no-horizontal-line-{r14 r15}c14 ==> Ir14c14 = in
no-vertical-line-r14{c13 c14} ==> Ir14c13 = in
different-colours-in-r14{c14 c15} ==> Hr14c15 = 1
w[1]-2-in-r13c14-open-se-corner ==> Vr13c14 = 1, Hr13c13 = 0
no-horizontal-line-{r12 r13}c13 ==> Ir13c13 = out
different-colours-in-{r13 r14}c13 ==> Hr14c13 = 1
whip[1]: Hr16c14{1 .} ==> Pr16c14 ≠ nw
whip[1]: Pr16c14{ew .} ==> Br15c13 ≠ nw, Br15c13 ≠ se, Br15c13 ≠ esw, Br15c13 ≠ nes, Br15c13 ≠ o, Br15c13 ≠ n, Br15c13 ≠ w
whip[1]: Br15c13{wne .} ==> Nr15c13 ≠ 0
whip[1]: Vr14c15{1 .} ==> Pr14c15 ≠ ew, Pr15c15 ≠ o, Pr15c15 ≠ ew, Br14c14 ≠ n, Br14c15 ≠ n, Br14c15 ≠ ns
P-single: Pr13c14 = se
P-single: Pr14c15 = se
B-single: Br14c14 = e
whip[1]: Pr13c14{se .} ==> Br13c13 ≠ n, Br12c13 ≠ s, Br12c13 ≠ sw, Br13c13 ≠ ns, Br13c13 ≠ nw, Br13c13 ≠ swn, Br13c14 ≠ ns
B-single: Br13c14 = nw
whip[1]: Br13c14{nw .} ==> Pr14c14 ≠ ew, Pr14c14 ≠ se
whip[1]: Pr14c14{nw .} ==> Br14c13 ≠ w, Br14c13 ≠ s
whip[1]: Br14c13{e .} ==> Hr15c13 ≠ 1, Vr14c13 ≠ 1, Pr15c13 ≠ ne, Pr14c13 ≠ ns, Pr14c13 ≠ se, Pr14c13 ≠ sw, Pr15c14 ≠ sw
V-single: Vr14c13 = 0
H-single: Hr15c13 = 0
no-horizontal-line-{r14 r15}c13 ==> Ir15c13 = in
no-vertical-line-r14{c12 c13} ==> Ir14c12 = in
same-colour-in-r15{c13 c14} ==> Vr15c14 = 0
w[1]-2-in-r15c14-open-nw-corner ==> Vr15c15 = 1, Hr16c15 = 0
P-single: Pr16c14 = ew
no-horizontal-line-{r15 r16}c15 ==> Ir15c15 = out
same-colour-in-r15{c15 c16} ==> Vr15c16 = 0
same-colour-in-{r14 r15}c15 ==> Hr15c15 = 0
different-colours-in-{r15 r16}c13 ==> Hr16c13 = 1
whip[1]: Vr14c13{0 .} ==> Br14c12 ≠ se, Br14c12 ≠ ew, Br14c12 ≠ wne, Br14c12 ≠ nes
whip[1]: Br14c12{nw .} ==> Nr14c12 ≠ 3
whip[1]: Hr15c13{0 .} ==> Br15c13 ≠ ne, Br15c13 ≠ ns, Br15c13 ≠ swn, Br15c13 ≠ wne
whip[1]: Br15c13{sw .} ==> Nr15c13 ≠ 3
whip[1]: Vr15c14{0 .} ==> Br15c13 ≠ e, Br15c13 ≠ ew, Br15c14 ≠ sw
whip[1]: Br15c13{sw .} ==> Pr16c13 ≠ o, Pr16c13 ≠ nw
whip[1]: Pr16c13{ew .} ==> Br16c13 ≠ o, Br15c12 ≠ nw, Br15c12 ≠ se, Br15c12 ≠ nes, Br15c12 ≠ w
B-single: Br16c13 = n
whip[1]: Vr15c15{1 .} ==> Pr16c15 ≠ ew, Pr15c15 ≠ nw, Br15c14 ≠ ns, Br15c15 ≠ nes
P-single: Pr15c14 = o
P-single: Pr15c15 = ns
P-single: Pr16c15 = nw
B-single: Br15c15 = w
B-single: Br15c14 = se
w[1]-1-in-r14c13-symmetric-se-corner ==> Pr14c13 ≠ nw, Pr14c13 ≠ o
w[1]-1-in-r14c14-asymmetric-se-corner ==> Pr14c14 ≠ ns
P-single: Pr14c14 = nw
whip[1]: Pr15c14{o .} ==> Br14c13 ≠ e
B-single: Br14c13 = n
whip[1]: Pr15c15{ns .} ==> Br14c15 ≠ swn
B-single: Br14c15 = nw
whip[1]: Br14c15{nw .} ==> Nr14c15 ≠ 3, Nr14c15 ≠ 1, Pr15c16 ≠ sw
N-single: Nr14c15 = 2
P-single: Pr15c16 = o
whip[1]: Pr16c15{nw .} ==> Br16c15 ≠ n
B-single: Br16c15 = o
whip[1]: Br16c15{o .} ==> Pr16c16 ≠ nw
P-single: Pr16c16 = o
whip[1]: Br15c15{w .} ==> Nr15c15 ≠ 3, Nr15c15 ≠ 0
N-single: Nr15c15 = 1
whip[1]: Pr14c14{nw .} ==> Br13c13 ≠ e, Br13c13 ≠ ew
whip[1]: Br13c13{esw .} ==> Pr13c13 ≠ ne, Pr13c13 ≠ se, Pr13c13 ≠ ew, Nr13c13 ≠ 1
whip[1]: Pr13c12{ew .} ==> Br12c11 ≠ nes, Br13c11 ≠ sw, Br13c11 ≠ nes, Br13c12 ≠ nw, Br13c12 ≠ se, Br12c11 ≠ n, Br12c12 ≠ n, Br12c12 ≠ e, Br13c11 ≠ w, Br13c11 ≠ ne
whip[1]: Br12c12{w .} ==> Pr13c13 ≠ ns, Pr13c13 ≠ nw, Pr12c12 ≠ ew, Pr12c13 ≠ sw
P-single: Pr12c13 = o
whip[1]: Pr12c13{o .} ==> Br11c12 ≠ ns, Br12c13 ≠ w
B-single: Br12c13 = o
whip[1]: Br12c13{o .} ==> Nr12c13 ≠ 1, Nr12c13 ≠ 2, Nr12c13 ≠ 3
N-single: Nr12c13 = 0
whip[1]: Br11c12{w .} ==> Nr11c12 ≠ 2
N-single: Nr11c12 = 1
whip[1]: Pr14c12{sw .} ==> Br13c11 ≠ esw, Br13c12 ≠ ew, Br14c11 ≠ esw, Br14c11 ≠ swn, Br14c12 ≠ nw, Br13c12 ≠ ns, Br14c11 ≠ n, Br14c11 ≠ e
whip[1]: Br14c11{sw .} ==> Pr14c11 ≠ se, Pr15c12 ≠ nw, Nr14c11 ≠ 1, Nr14c11 ≠ 3
whip[1]: Pr15c12{ew .} ==> Br15c12 ≠ s
whip[1]: Br15c12{wne .} ==> Pr15c13 ≠ o, Nr15c12 ≠ 1
P-single: Pr15c13 = sw
whip[1]: Pr15c13{sw .} ==> Br15c13 ≠ s, Br15c12 ≠ ns, Br14c12 ≠ w, Vr15c13 ≠ 0, Hr15c12 ≠ 0, Br15c12 ≠ ew
H-single: Hr15c12 = 1
V-single: Vr15c13 = 1
B-single: Br15c12 = wne
B-single: Br15c13 = sw
no-horizontal-line-{r15 r16}c12 ==> Ir15c12 = out
different-colours-in-r15{c11 c12} ==> Hr15c12 = 1
whip[1]: Hr15c12{1 .} ==> Pr15c12 ≠ ns
whip[1]: Pr15c12{ew .} ==> Vr14c12 ≠ 1, Br14c11 ≠ ne
V-single: Vr14c12 = 0
no-vertical-line-r14{c11 c12} ==> Ir14c11 = in
same-colour-in-{r14 r15}c11 ==> Hr15c11 = 0
same-colour-in-r14{c10 c11} ==> Vr14c11 = 0
whip[1]: Vr14c12{0 .} ==> Pr14c12 ≠ sw
whip[1]: Pr14c12{ne .} ==> Hr14c11 ≠ 1, Br13c11 ≠ ns
H-single: Hr14c11 = 0
no-horizontal-line-{r13 r14}c11 ==> Ir13c11 = in
same-colour-in-r13{c10 c11} ==> Vr13c11 = 0
different-colours-in-{r12 r13}c11 ==> Hr13c11 = 1
whip[1]: Hr14c11{0 .} ==> Pr14c11 ≠ ne
whip[1]: Vr13c11{0 .} ==> Pr13c11 ≠ sw, Pr14c11 ≠ ns, Br13c10 ≠ ne, Br13c11 ≠ ew
P-single: Pr14c11 = o
P-single: Pr13c11 = ew
B-single: Br13c11 = n
B-single: Br13c10 = n
whip[1]: Pr14c11{o .} ==> Br14c10 ≠ ew, Br14c11 ≠ sw
B-single: Br14c11 = o
B-single: Br14c10 = w
whip[1]: Br14c11{o .} ==> Pr15c11 ≠ ne, Pr15c12 ≠ ew, Nr14c11 ≠ 2
N-single: Nr14c11 = 0
P-single: Pr16c12 = nw
P-single: Pr15c12 = se
P-single: Pr15c11 = o
whip[1]: Pr16c12{nw .} ==> Br16c12 ≠ n, Br15c11 ≠ ns
B-single: Br15c11 = se
B-single: Br16c12 = o
whip[1]: Br16c12{o .} ==> Pr16c13 ≠ ew
P-single: Pr16c13 = ne
whip[1]: Br14c10{w .} ==> Nr14c10 ≠ 2
N-single: Nr14c10 = 1
whip[1]: Pr13c11{ew .} ==> Br12c11 ≠ ne
B-single: Br12c11 = ns
whip[1]: Br12c11{ns .} ==> Nr12c11 ≠ 3, Nr12c11 ≠ 1, Pr13c12 ≠ ns, Pr12c12 ≠ sw
N-single: Nr12c11 = 2
P-single: Pr12c12 = nw
P-single: Pr13c12 = ew
w[1]-1-in-r12c12-symmetric-nw-corner ==> Pr13c13 ≠ o
P-single: Pr13c13 = sw
w[1]-1-in-r11c12-asymmetric-sw-corner ==> Pr11c13 ≠ nw
P-single: Pr11c13 = o
whip[1]: Pr12c12{nw .} ==> Br11c12 ≠ n, Br11c11 ≠ sw, Br12c12 ≠ w
B-single: Br12c12 = s
B-single: Br11c11 = esw
B-single: Br11c12 = w
whip[1]: Br12c12{s .} ==> Hr13c12 ≠ 0
H-single: Hr13c12 = 1
horizontal-line-{r12 r13}c12 ==> Ir13c12 = in
same-colour-in-{r13 r14}c12 ==> Hr14c12 = 0
P-single: Pr14c12 = o
different-colours-in-r13{c12 c13} ==> Hr13c13 = 1

LOOP[154]: Hr8c9-Hr8c8-Hr8c7-Vr8c7-Vr9c7-Hr10c7-Vr9c8-Hr9c8-Hr9c9-Vr9c10-Hr10c10-Hr10c11-Vr10c12-Vr11c12-Hr12c11-Vr11c11-Hr11c10-Hr11c9-Hr11c8-Vr11c8-Hr12c8-Hr12c9-Vr12c10-Hr13c10-Hr13c11-Hr13c12-Vr13c13-Hr14c13-Vr13c14-Hr13c14-Hr13c15-Vr13c16-Hr14c15-Vr14c15-Vr15c15-Hr16c14-Hr16c13-Vr15c13-Hr15c12-Vr15c12-Hr16c11-Hr16c10-Vr15c10-Vr14c10-Hr14c9-Vr14c9-Vr15c9-Hr16c8-Vr15c8-Hr15c7-Vr15c7-Hr16c6-Vr15c6-Vr14c6-Hr14c6-Vr13c7-Vr12c7-Vr11c7-Hr11c6-Vr10c6-Hr10c5-Vr9c5-Vr8c5-Hr8c5-Vr7c6-Hr7c5-Hr7c4-Hr7c3-Vr7c3-Hr8c3-Vr8c4-Hr9c3-Vr9c3-Hr10c3-Vr10c4-Hr11c4-Vr11c5-Vr12c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Vr13c3-Hr14c3-Hr14c4-Vr14c5-Hr15c4-Vr15c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Hr13c1-Vr12c2-Vr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Vr8c2-Hr8c1-Vr7c1-Hr7c1-Vr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr4c2-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Vr2c4-Hr3c4-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Vr1c9-Hr2c8-Vr2c8-Hr3c7-Hr3c6-Vr3c6-Vr4c6-Hr5c6-Hr5c7-Hr5c8-Vr5c9-Hr6c8-Hr6c7-Vr6c7-Hr7c7-Hr7c8-Hr7c9- ==> Vr7c10 = 0
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
same-colour-in-r7{c10 c11} ==> Vr7c11 = 0
P-single: Pr8c11 = ew
different-colours-in-{r7 r8}c10 ==> Hr8c10 = 1
different-colours-in-{r6 r7}c10 ==> Hr7c10 = 1
same-colour-in-r13{c11 c12} ==> Vr13c12 = 0
whip[1]: Hr13c12{1 .} ==> Br13c12 ≠ sw
B-single: Br13c12 = ne
whip[1]: Br13c12{ne .} ==> Pr14c13 ≠ ew
P-single: Pr14c13 = ne
whip[1]: Pr14c13{ne .} ==> Br13c13 ≠ se, Br14c12 ≠ ns
B-single: Br14c12 = s
B-single: Br13c13 = esw
whip[1]: Br14c12{s .} ==> Nr14c12 ≠ 2
N-single: Nr14c12 = 1
whip[1]: Br13c13{esw .} ==> Nr13c13 ≠ 2
N-single: Nr13c13 = 3
whip[1]: Vr7c10{0 .} ==> Pr7c10 ≠ sw, Pr8c10 ≠ nw, Br7c9 ≠ nes, Br7c10 ≠ ew
P-single: Pr8c10 = ew
P-single: Pr7c10 = ew
B-single: Br7c10 = ns
B-single: Br7c9 = ns
w[1]-1-in-r6c10-asymmetric-sw-corner ==> Pr6c11 ≠ se, Pr6c11 ≠ ns
whip[1]: Pr8c10{ew .} ==> Br8c10 ≠ o
B-single: Br8c10 = n
whip[1]: Br8c10{n .} ==> Nr8c10 ≠ 0
N-single: Nr8c10 = 1
whip[1]: Pr7c10{ew .} ==> Br6c10 ≠ e
B-single: Br6c10 = s
whip[1]: Br6c10{s .} ==> Pr7c11 ≠ ns, Vr6c11 ≠ 1
V-single: Vr6c11 = 0
P-single: Pr7c11 = ew
no-vertical-line-r6{c10 c11} ==> Ir6c11 = out
different-colours-in-{r6 r7}c11 ==> Hr7c11 = 1
whip[1]: Vr6c11{0 .} ==> Br6c11 ≠ w, Br6c11 ≠ nw, Br6c11 ≠ ew, Br6c11 ≠ wne
whip[1]: Pr7c11{ew .} ==> Br7c11 ≠ sw
B-single: Br7c11 = ns
whip[1]: Br7c9{ns .} ==> Nr7c9 ≠ 3
N-single: Nr7c9 = 2
whip[1]: Pr6c11{ne .} ==> Br5c11 ≠ s, Br5c11 ≠ w, Br5c11 ≠ ns, Br5c11 ≠ nw, Br5c11 ≠ se, Br5c11 ≠ ew, Br5c11 ≠ wne, Br5c11 ≠ nes
whip[1]: Pr7c12{ew .} ==> Br6c12 ≠ sw, Br6c12 ≠ esw, Br6c12 ≠ swn, Br6c12 ≠ o, Br6c12 ≠ n, Br6c12 ≠ e, Br6c12 ≠ ne
whip[1]: Br6c12{nes .} ==> Nr6c12 ≠ 0
whip[1]: Br11c11{esw .} ==> Nr11c11 ≠ 2, Pr11c12 ≠ ne
N-single: Nr11c11 = 3
P-single: Pr11c12 = ns
whip[1]: Pr11c12{ns .} ==> Br10c12 ≠ esw
B-single: Br10c12 = w
whip[1]: Br10c12{w .} ==> Nr10c12 ≠ 3, Pr10c13 ≠ se
N-single: Nr10c12 = 1
P-single: Pr9c14 = sw
P-single: Pr10c13 = o
w[1]-1-in-r8c14-symmetric-sw-corner ==> Pr8c15 ≠ sw, Pr8c15 ≠ ne, Pr8c15 ≠ o
whip[1]: Pr9c14{sw .} ==> Br9c14 ≠ ns, Br9c14 ≠ ne, Br9c13 ≠ ns, Br8c14 ≠ w, Br8c14 ≠ s, Br8c13 ≠ w, Br8c13 ≠ nw, Br8c13 ≠ se, Br8c13 ≠ ew, Br8c13 ≠ wne, Br8c13 ≠ nes, Br9c13 ≠ se, Br9c14 ≠ nw, Br9c14 ≠ se
B-single: Br9c13 = ne
whip[1]: Br9c13{ne .} ==> Pr10c14 ≠ ew
P-single: Pr10c14 = ns
whip[1]: Pr10c14{ns .} ==> Br10c14 ≠ n, Br10c14 ≠ o, Br10c13 ≠ o, Br9c14 ≠ sw, Br10c13 ≠ nw, Br10c13 ≠ wne
B-single: Br10c13 = e
B-single: Br9c14 = ew
B-single: Br10c14 = sw
whip[1]: Br10c13{e .} ==> Nr10c13 ≠ 2, Nr10c13 ≠ 0, Nr10c13 ≠ 3
N-single: Nr10c13 = 1
whip[1]: Br9c14{ew .} ==> Pr10c15 ≠ ew, Pr9c15 ≠ ew, Pr9c15 ≠ nw, Vr9c15 ≠ 0
V-single: Vr9c15 = 1
P-single: Pr10c15 = ne
vertical-line-r9{c14 c15} ==> Ir9c15 = out
same-colour-in-r9{c15 c16} ==> Vr9c16 = 0
different-colours-in-{r9 r10}c15 ==> Hr10c15 = 1
whip[1]: Vr9c15{1 .} ==> Br9c15 ≠ o, Br9c15 ≠ n, Br9c15 ≠ e, Br9c15 ≠ s, Br9c15 ≠ ne, Br9c15 ≠ ns, Br9c15 ≠ se, Br9c15 ≠ nes
whip[1]: Br9c15{wne .} ==> Nr9c15 ≠ 0
whip[1]: Pr10c15{ne .} ==> Br9c15 ≠ w, Br9c15 ≠ nw, Br9c15 ≠ ew, Br9c15 ≠ wne, Br10c15 ≠ e, Br10c15 ≠ s
whip[1]: Br10c15{ns .} ==> Pr10c16 ≠ o, Pr10c16 ≠ ns, Nr10c15 ≠ 1
N-single: Nr10c15 = 2
P-single: Pr10c16 = sw
whip[1]: Pr10c16{sw .} ==> Br10c15 ≠ ns, Br9c15 ≠ esw
B-single: Br10c15 = ne
whip[1]: Br9c15{swn .} ==> Pr9c16 ≠ ns, Pr9c16 ≠ sw, Nr9c15 ≠ 1
w[1]-1-in-r8c15-symmetric-se-corner ==> Pr8c15 ≠ se, Pr8c15 ≠ nw
whip[1]: Pr8c15{ew .} ==> Br7c14 ≠ nw, Br7c14 ≠ se, Br7c14 ≠ esw, Br7c14 ≠ nes, Br7c15 ≠ sw, Br7c14 ≠ o, Br7c14 ≠ n, Br7c14 ≠ w, Br7c15 ≠ ne, Br8c15 ≠ e, Br8c15 ≠ s
whip[1]: Br8c15{w .} ==> Hr9c15 ≠ 1, Vr8c16 ≠ 1, Pr9c16 ≠ nw, Pr8c16 ≠ sw, Pr9c15 ≠ se
V-single: Vr8c16 = 0
H-single: Hr9c15 = 0
P-single: Pr9c15 = ns
P-single: Pr8c16 = o
P-single: Pr9c16 = o
w[1]-1-in-r8c14-asymmetric-se-corner ==> Pr8c14 ≠ sw, Pr8c14 ≠ ew, Pr8c14 ≠ ns, Pr8c14 ≠ ne
no-horizontal-line-{r8 r9}c15 ==> Ir8c15 = out
different-colours-in-r8{c14 c15} ==> Hr8c15 = 1
whip[1]: Vr8c16{0 .} ==> Br8c16 ≠ w
B-single: Br8c16 = o
whip[1]: Hr9c15{0 .} ==> Br9c15 ≠ swn
B-single: Br9c15 = sw
whip[1]: Br9c15{sw .} ==> Nr9c15 ≠ 3
N-single: Nr9c15 = 2
whip[1]: Pr9c15{ns .} ==> Br8c15 ≠ n, Br8c14 ≠ n
B-single: Br8c14 = e
B-single: Br8c15 = w
whip[1]: Br8c14{e .} ==> Hr8c14 ≠ 1, Pr8c14 ≠ se, Pr8c15 ≠ ew
H-single: Hr8c14 = 0
P-single: Pr8c15 = ns
no-horizontal-line-{r7 r8}c14 ==> Ir7c14 = in
whip[1]: Hr8c14{0 .} ==> Br7c14 ≠ s, Br7c14 ≠ ns, Br7c14 ≠ sw, Br7c14 ≠ swn
whip[1]: Br7c14{wne .} ==> Vr7c15 ≠ 0, Pr7c15 ≠ o, Pr7c15 ≠ nw, Nr7c14 ≠ 0
V-single: Vr7c15 = 1
P-single: Pr7c15 = se
vertical-line-r7{c14 c15} ==> Ir7c15 = out
same-colour-in-r7{c15 c16} ==> Vr7c16 = 0
same-colour-in-{r7 r8}c15 ==> Hr8c15 = 0
w[1]-2-in-r7c15-open-se-corner ==> Hr7c15 = 1, Hr7c14 = 0, Vr6c15 = 0
no-horizontal-line-{r6 r7}c14 ==> Ir6c14 = in
no-vertical-line-r6{c14 c15} ==> Ir6c15 = in
different-colours-in-r6{c15 c16} ==> Hr6c16 = 1
different-colours-in-{r5 r6}c15 ==> Hr6c15 = 1
whip[1]: Vr7c15{1 .} ==> Br7c15 ≠ ns, Br7c15 ≠ se
whip[1]: Pr7c15{se .} ==> Br6c15 ≠ w, Br6c15 ≠ o, Br6c14 ≠ e, Br6c14 ≠ ns, Br6c14 ≠ se, Br6c14 ≠ ew, Br6c14 ≠ esw, Br6c15 ≠ ne, Br6c15 ≠ sw, Br6c15 ≠ wne, Br7c14 ≠ ne, Br7c14 ≠ wne, Br7c15 ≠ ew
B-single: Br7c15 = nw
B-single: Br6c14 = n
whip[1]: Br7c15{nw .} ==> Pr7c16 ≠ ns
P-single: Pr7c16 = nw
whip[1]: Pr7c16{nw .} ==> Br6c15 ≠ s
B-single: Br6c15 = nes
whip[1]: Br6c15{nes .} ==> Nr6c15 ≠ 2, Nr6c15 ≠ 1, Nr6c15 ≠ 0, Pr6c15 ≠ se, Pr6c15 ≠ nw, Pr6c15 ≠ ns, Pr6c16 ≠ o
N-single: Nr6c15 = 3
P-single: Pr5c15 = ew
P-single: Pr6c16 = sw
P-single: Pr6c15 = ew
whip[1]: Pr5c15{ew .} ==> Br5c14 ≠ e, Br4c14 ≠ n, Vr5c15 ≠ 1, Hr5c14 ≠ 0, Br5c14 ≠ se, Br5c14 ≠ ew, Br5c14 ≠ esw, Br5c15 ≠ nw
H-single: Hr5c14 = 1
V-single: Vr5c15 = 0
B-single: Br5c15 = ns
B-single: Br4c14 = ns
no-vertical-line-r5{c14 c15} ==> Ir5c14 = out
different-colours-in-{r5 r6}c14 ==> Hr6c14 = 1
whip[1]: Hr5c14{1 .} ==> Pr5c14 ≠ o, Pr5c14 ≠ sw
whip[1]: Pr6c13{ew .} ==> Br5c13 ≠ sw, Br6c12 ≠ wne, Br6c12 ≠ nes, Br5c13 ≠ ne, Br6c12 ≠ s, Br6c12 ≠ w
whip[1]: Br6c12{ew .} ==> Nr6c12 ≠ 1, Nr6c12 ≠ 3
N-single: Nr6c12 = 2
whip[1]: Br4c14{ns .} ==> Nr4c14 ≠ 1
N-single: Nr4c14 = 2
whip[1]: Hr6c14{1 .} ==> Pr6c14 ≠ ns, Pr6c14 ≠ nw, Pr6c14 ≠ sw, Br5c14 ≠ n, Br5c14 ≠ nw
P-single: Pr4c12 = ne
whip[1]: Pr4c12{ne .} ==> Br3c11 ≠ n, Vr3c12 ≠ 0, Hr4c12 ≠ 0, Br3c11 ≠ nw, Br3c12 ≠ ne, Br4c12 ≠ se
H-single: Hr4c12 = 1
V-single: Vr3c12 = 1
P-single: Pr3c13 = o
B-single: Br4c12 = ne
B-single: Br3c12 = sw
no-vertical-line-r3{c12 c13} ==> Ir3c12 = in
whip[1]: Hr4c12{1 .} ==> Pr4c13 ≠ ns
P-single: Pr4c13 = sw
whip[1]: Pr4c13{sw .} ==> Br3c13 ≠ ew
B-single: Br3c13 = e
whip[1]: Br3c13{e .} ==> Nr3c13 ≠ 2
N-single: Nr3c13 = 1
whip[1]: Pr5c12{sw .} ==> Hr5c12 ≠ 1, Br5c11 ≠ esw, Br5c11 ≠ swn, Br5c12 ≠ nw, Br5c12 ≠ swn, Br5c11 ≠ n, Br5c11 ≠ e, Br5c12 ≠ n, Br5c12 ≠ ns
H-single: Hr5c12 = 0
no-horizontal-line-{r4 r5}c12 ==> Ir5c12 = out
whip[1]: Br5c11{sw .} ==> Pr5c11 ≠ se, Pr6c12 ≠ nw, Nr5c11 ≠ 1, Nr5c11 ≠ 3
whip[1]: Pr5c11{ew .} ==> Br4c10 ≠ o, Br4c10 ≠ n
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 0
whip[1]: Vr3c12{1 .} ==> Pr3c12 ≠ ew
P-single: Pr3c12 = sw
whip[1]: Pr3c12{sw .} ==> Br2c12 ≠ s
B-single: Br2c12 = o
whip[1]: Br2c12{o .} ==> Nr2c12 ≠ 1
N-single: Nr2c12 = 0
whip[1]: Br3c11{wne .} ==> Nr3c11 ≠ 1
whip[1]: Pr5c13{ns .} ==> Br5c13 ≠ se
whip[1]: Br5c14{swn .} ==> Nr5c14 ≠ 1
whip[1]: Pr6c14{ew .} ==> Vr6c14 ≠ 1, Br6c13 ≠ e
V-single: Vr6c14 = 0
no-vertical-line-r6{c13 c14} ==> Ir6c13 = in
whip[1]: Vr6c14{0 .} ==> Pr7c14 ≠ ne, Pr7c14 ≠ ns, Pr7c14 ≠ nw
whip[1]: Br6c13{w .} ==> Pr7c13 ≠ ne, Pr6c13 ≠ se
whip[1]: Pr6c13{ew .} ==> Br5c12 ≠ o, Br5c12 ≠ w
whip[1]: Br5c12{esw .} ==> Nr5c12 ≠ 0
whip[1]: Br6c14{n .} ==> Pr7c14 ≠ se, Pr7c14 ≠ ew, Nr6c14 ≠ 2, Nr6c14 ≠ 3
N-single: Nr6c14 = 1
whip[1]: Pr7c14{sw .} ==> Br7c13 ≠ nw, Br7c13 ≠ se, Br7c13 ≠ ew, Br7c13 ≠ esw, Br7c13 ≠ swn, Br7c13 ≠ n, Br7c13 ≠ e, Br7c13 ≠ ns
whip[1]: Br7c14{ew .} ==> Nr7c14 ≠ 3
whip[1]: Vr7c16{0 .} ==> Br7c16 ≠ w
B-single: Br7c16 = o
whip[1]: Vr6c16{1 .} ==> Br6c16 ≠ o
B-single: Br6c16 = w
whip[1]: Pr8c14{nw .} ==> Br7c13 ≠ ne, Br7c13 ≠ sw, Br7c13 ≠ wne, Br7c13 ≠ s
whip[1]: Br7c13{nes .} ==> Pr7c13 ≠ se, Pr8c13 ≠ ne, Nr7c13 ≠ 2
whip[1]: Pr8c13{se .} ==> Br8c13 ≠ ns
B-single: Br8c13 = s
whip[1]: Br8c13{s .} ==> Nr8c13 ≠ 3, Nr8c13 ≠ 2, Pr8c13 ≠ ns, Hr8c13 ≠ 1, Pr8c13 ≠ se, Pr8c14 ≠ nw
H-single: Hr8c13 = 0
N-single: Nr8c13 = 1
P-single: Pr8c14 = o
P-single: Pr8c13 = o
no-horizontal-line-{r7 r8}c13 ==> Ir7c13 = in
same-colour-in-r7{c13 c14} ==> Vr7c14 = 0
same-colour-in-r7{c12 c13} ==> Vr7c13 = 0
same-colour-in-{r6 r7}c13 ==> Hr7c13 = 0
whip[1]: Hr8c13{0 .} ==> Br7c13 ≠ nes
whip[1]: Br7c13{w .} ==> Nr7c13 ≠ 3, Pr7c13 ≠ ew, Pr7c14 ≠ sw
P-single: Pr7c14 = o
w[1]-1-in-r6c13-symmetric-se-corner ==> Pr6c13 ≠ nw
whip[1]: Pr7c14{o .} ==> Br6c13 ≠ s, Br7c14 ≠ ew
B-single: Br7c14 = e
whip[1]: Br7c14{e .} ==> Nr7c14 ≠ 2
N-single: Nr7c14 = 1
whip[1]: Pr6c13{ew .} ==> Br5c12 ≠ se, Br5c12 ≠ esw
whip[1]: Br5c12{sw .} ==> Nr5c12 ≠ 3
whip[1]: Pr8c13{o .} ==> Br7c12 ≠ e, Br7c12 ≠ ne, Br7c13 ≠ w, Br8c12 ≠ esw
B-single: Br8c12 = sw
B-single: Br7c13 = o
whip[1]: Br8c12{sw .} ==> Nr8c12 ≠ 3
N-single: Nr8c12 = 2
whip[1]: Br7c13{o .} ==> Pr7c13 ≠ ns, Pr7c13 ≠ sw, Nr7c13 ≠ 1
N-single: Nr7c13 = 0
whip[1]: Pr6c12{se .} ==> Hr6c11 ≠ 1, Vr5c12 ≠ 1, Br5c11 ≠ ne, Br5c11 ≠ sw, Br5c12 ≠ ew, Br5c12 ≠ sw, Br6c11 ≠ ns, Br6c11 ≠ nes, Br6c12 ≠ ns, Br6c12 ≠ ew
V-single: Vr5c12 = 0
H-single: Hr6c11 = 0
B-single: Br5c11 = o
no-horizontal-line-{r5 r6}c11 ==> Ir5c11 = out
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
same-colour-in-{r4 r5}c11 ==> Hr5c11 = 0
whip[1]: Vr5c12{0 .} ==> Pr5c12 ≠ sw
P-single: Pr5c12 = o
w[1]-1-in-r4c11-symmetric-se-corner ==> Pr4c11 ≠ nw, Pr4c11 ≠ o
whip[1]: Pr5c12{o .} ==> Br4c11 ≠ s
B-single: Br4c11 = w
whip[1]: Br4c11{w .} ==> Vr4c11 ≠ 0, Pr5c11 ≠ ew
V-single: Vr4c11 = 1
vertical-line-r4{c10 c11} ==> Ir4c10 = in
different-colours-in-{r4 r5}c10 ==> Hr5c10 = 1
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1
whip[1]: Vr4c11{1 .} ==> Br4c10 ≠ sw, Br4c10 ≠ swn
whip[1]: Br4c10{esw .} ==> Pr4c10 ≠ se
whip[1]: Pr4c10{ns .} ==> Br3c10 ≠ ns
whip[1]: Br3c10{esw .} ==> Pr4c11 ≠ sw
P-single: Pr4c11 = ns
whip[1]: Pr4c11{ns .} ==> Br3c10 ≠ n, Vr3c11 ≠ 0, Hr4c10 ≠ 1, Br3c10 ≠ esw, Br3c11 ≠ ne, Br4c10 ≠ ne
H-single: Hr4c10 = 0
V-single: Vr3c11 = 1
B-single: Br3c11 = wne
B-single: Br3c10 = ew
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1

LOOP[28]: Vr4c13-Hr4c12-Vr3c12-Hr3c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Vr3c10-Vr2c10-Vr1c10-Hr1c10-Hr1c11-Hr1c12-Vr1c13-Hr2c13-Hr2c14-Hr2c15-Vr2c16-Hr3c15-Hr3c14-Vr3c14-Hr4c14-Hr4c15-Vr4c16-Hr5c15-Hr5c14- ==> Hr5c13 = 0
no-horizontal-line-{r4 r5}c13 ==> Ir5c13 = in
same-colour-in-{r5 r6}c13 ==> Hr6c13 = 0
different-colours-in-r5{c13 c14} ==> Hr5c14 = 1
different-colours-in-r5{c12 c13} ==> Hr5c13 = 1
whip[1]: Hr4c10{0 .} ==> Pr4c10 ≠ ne
whip[1]: Vr3c11{1 .} ==> Pr3c11 ≠ ew
P-single: Pr3c11 = se
whip[1]: Pr3c11{se .} ==> Br2c10 ≠ sw
B-single: Br2c10 = w
whip[1]: Br2c10{w .} ==> Nr2c10 ≠ 2, Pr3c10 ≠ ne
N-single: Nr2c10 = 1
P-single: Pr3c10 = ns
whip[1]: Pr3c10{ns .} ==> Br3c9 ≠ o
B-single: Br3c9 = e
whip[1]: Br3c9{e .} ==> Nr3c9 ≠ 0, Pr4c10 ≠ o
N-single: Nr3c9 = 1
P-single: Pr4c10 = ns
whip[1]: Pr4c10{ns .} ==> Br4c10 ≠ e, Br4c9 ≠ o
B-single: Br4c9 = e
B-single: Br4c10 = esw
whip[1]: Br4c9{e .} ==> Nr4c9 ≠ 0, Pr5c10 ≠ o
N-single: Nr4c9 = 1
P-single: Pr5c10 = ne
w[1]-1-in-r5c10-asymmetric-nw-corner ==> Pr6c11 ≠ ne
P-single: Pr6c11 = o
whip[1]: Pr5c10{ne .} ==> Br5c10 ≠ e
B-single: Br5c10 = n
whip[1]: Br5c10{n .} ==> Pr5c11 ≠ ns
P-single: Pr5c11 = nw
whip[1]: Br4c10{esw .} ==> Nr4c10 ≠ 2, Nr4c10 ≠ 1
N-single: Nr4c10 = 3
whip[1]: Br3c11{wne .} ==> Nr3c11 ≠ 2
N-single: Nr3c11 = 3
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 3, Nr3c10 ≠ 1
N-single: Nr3c10 = 2
whip[1]: Hr5c13{0 .} ==> Pr5c13 ≠ ne, Pr5c14 ≠ ew, Br4c13 ≠ sw, Br5c13 ≠ ns
P-single: Pr5c14 = se
P-single: Pr5c13 = ns
B-single: Br5c13 = ew
B-single: Br4c13 = w
whip[1]: Pr5c14{se .} ==> Br5c14 ≠ ns
B-single: Br5c14 = swn
whip[1]: Br5c14{swn .} ==> Nr5c14 ≠ 2, Pr6c14 ≠ ew
N-single: Nr5c14 = 3
P-single: Pr6c14 = ne
w[1]-1-in-r6c13-symmetric-ne-corner ==> Pr7c13 ≠ o
P-single: Pr7c13 = nw
whip[1]: Pr6c14{ne .} ==> Br6c13 ≠ n
B-single: Br6c13 = w
whip[1]: Br6c13{w .} ==> Vr6c13 ≠ 0, Pr6c13 ≠ ew
V-single: Vr6c13 = 1
P-single: Pr6c13 = ns

LOOP[206]: Vr6c13-Vr5c13-Vr4c13-Hr4c12-Vr3c12-Hr3c11-Vr3c11-Vr4c11-Hr5c10-Vr4c10-Vr3c10-Vr2c10-Vr1c10-Hr1c10-Hr1c11-Hr1c12-Vr1c13-Hr2c13-Hr2c14-Hr2c15-Vr2c16-Hr3c15-Hr3c14-Vr3c14-Hr4c14-Hr4c15-Vr4c16-Hr5c15-Hr5c14-Vr5c14-Hr6c14-Hr6c15-Vr6c16-Hr7c15-Vr7c15-Vr8c15-Vr9c15-Hr10c15-Vr10c16-Vr11c16-Hr12c15-Vr11c15-Hr11c14-Vr10c14-Vr9c14-Hr9c13-Hr9c12-Vr8c12-Hr8c11-Hr8c10-Hr8c9-Hr8c8-Hr8c7-Vr8c7-Vr9c7-Hr10c7-Vr9c8-Hr9c8-Hr9c9-Vr9c10-Hr10c10-Hr10c11-Vr10c12-Vr11c12-Hr12c11-Vr11c11-Hr11c10-Hr11c9-Hr11c8-Vr11c8-Hr12c8-Hr12c9-Vr12c10-Hr13c10-Hr13c11-Hr13c12-Vr13c13-Hr14c13-Vr13c14-Hr13c14-Hr13c15-Vr13c16-Hr14c15-Vr14c15-Vr15c15-Hr16c14-Hr16c13-Vr15c13-Hr15c12-Vr15c12-Hr16c11-Hr16c10-Vr15c10-Vr14c10-Hr14c9-Vr14c9-Vr15c9-Hr16c8-Vr15c8-Hr15c7-Vr15c7-Hr16c6-Vr15c6-Vr14c6-Hr14c6-Vr13c7-Vr12c7-Vr11c7-Hr11c6-Vr10c6-Hr10c5-Vr9c5-Vr8c5-Hr8c5-Vr7c6-Hr7c5-Hr7c4-Hr7c3-Vr7c3-Hr8c3-Vr8c4-Hr9c3-Vr9c3-Hr10c3-Vr10c4-Hr11c4-Vr11c5-Vr12c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Vr13c3-Hr14c3-Hr14c4-Vr14c5-Hr15c4-Vr15c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Hr13c1-Vr12c2-Vr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Vr8c2-Hr8c1-Vr7c1-Hr7c1-Vr6c2-Hr6c1-Vr5c1-Vr4c1-Hr4c1-Vr4c2-Hr5c2-Hr5c3-Vr4c4-Hr4c3-Vr3c3-Hr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr1c3-Hr1c3-Vr1c4-Vr2c4-Hr3c4-Vr2c5-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Hr1c8-Vr1c9-Hr2c8-Vr2c8-Hr3c7-Hr3c6-Vr3c6-Vr4c6-Hr5c6-Hr5c7-Hr5c8-Vr5c9-Hr6c8-Hr6c7-Vr6c7-Hr7c7-Hr7c8-Hr7c9-Hr7c10-Hr7c11- ==> Hr7c12 = 1
horizontal-line-{r6 r7}c12 ==> Ir6c12 = out
same-colour-in-r6{c11 c12} ==> Vr6c12 = 0
P-single: Pr6c12 = o
same-colour-in-{r5 r6}c12 ==> Hr6c12 = 0

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOXOXXXXOXXXOOO
XXXOXXXOOXXXXXX
OOXXXOOOOXOXXOO
XOOXXOOOOXOOXXX
XXXXXXXXOOOOXOO
OXXXXXOOOOOOXXX
XXOOOXXXXXXXXXO
OXXOXXOOOOOXXXO
OXOOXXOXXOOOOXO
XXXOOXXXXXXOOXX
OXXXOOXOOOXOOOX
OXOXOOXXXOOOOOO
XXOOOOXXXXXXOXX
OXXXOXXXOXXXXXO
XXXOOXOXOXXOXXO

.———.   .———.   .———.———.———.———.   .———.———.———.   .   .   .
|   |   |   | 2 | 2           3 |   | 2   1   2 |         1
.   .———.   .   .   .   .   .———.   .   .   .   .———.———.———.
| 2   2     |   |     1     | 2     |     1               3 |
.———.———.   .———.   .———.———.   .   .   .———.   .   .———.———.
  2   2 |     1   1 | 2   1   0     |   |   | 2     | 3   2
.———.   .———.   .   .   .   .   .   .   .   .———.   .———.———.
| 3 |       |       |               |   | 1   2 |         3 |
.   .———.———.   .   .———.———.———.   .———.   .   .   .———.———.
| 2       1   0               3 |     1         | 2 |     2
.———.   .   .   .   .   .———.———.   .   .   .   .   .———.———.
  3 |         1         | 3       1   1         | 1         |
.———.   .———.———.———.   .———.———.———.———.———.———.   .   .———.
| 3   1 | 3         | 1   2           2   2             | 2
.———.   .———.   .———.   .———.———.———.———.———.   .   .   .   .
    |     3 |   | 2     | 2       2       2 |         1 | 1
.   .   .———.   .   .   .   .———.———.   .   .———.———.   .   .
    | 2 |     1 | 2     | 3 | 2     | 2   1   1   2 | 2 |
.———.   .———.   .———.   .———.   .   .———.———.   .   .   .———.
|           | 2   2 | 2       1   1   2   2 |       |       |
.———.   .   .———.   .———.   .———.———.———.   .   .   .———.   .
  2 |           |       |   | 3   2   2 |   |     0   2 | 3 |
.   .   .———.   .   .   .   .———.———.   .———.   .   .   .———.
  2 | 2 |   |   |     1 | 1   1     |         1       1
.———.   .   .———.   .   .   .   .   .———.———.———.   .———.———.
| 3     |     2       2 |                     2 |   | 2   3 |
.———.   .———.———.   .———.   .   .———.   .   .   .———.   .———.
  3 |     1   3 |   | 2         | 3 |             1   1 |
.———.   .   .———.   .   .———.   .   .   .   .———.   .   .   .
|     1     | 2   1 |   | 3 | 3 | 2 | 2   2 |   |     2 |
.———.———.———.   .   .———.   .———.   .———.———.   .———.———.   .

init-time = 1.18s, solve-time = 5m 50.56s, total-time = 5m 51.73s
nb-facts=<Fact-454755>
Quasi-Loop max length = 206
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
