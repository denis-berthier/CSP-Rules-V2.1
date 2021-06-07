
(solve
15 15
. . . 3 . . 3 3 . . 1 . . . . 
2 . 1 . . . . 2 . . . 2 . 2 3 
1 3 2 3 . . 2 2 3 2 . 1 3 . . 
3 . . . . . . . . . 1 . . . . 
3 2 . 0 . 2 . 1 1 3 . 2 0 2 2 
. . 3 2 . . 2 1 . . . . . . . 
2 2 . . 3 . . 3 . . . 1 2 1 . 
. . 3 1 . 2 . . 3 . . . 3 2 . 
. 2 . 2 . . . 2 . 1 3 . 1 . 1
. 3 2 3 2 . 2 0 3 . 3 . 3 . 2
2 2 . . . . 2 . 2 . . . . . . 
. . 1 . 2 1 . . . . . . . . 2
. . 2 2 2 3 . . 2 . 1 . 2 3 2
3 . 3 . 2 1 . 3 . . . 2 2 3 . 
. . . . . . . 0 . . . . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 3 . . 3 3 . . 1 . . . .
2 . 1 . . . . 2 . . . 2 . 2 3
1 3 2 3 . . 2 2 3 2 . 1 3 . .
3 . . . . . . . . . 1 . . . .
3 2 . 0 . 2 . 1 1 3 . 2 0 2 2
. . 3 2 . . 2 1 . . . . . . .
2 2 . . 3 . . 3 . . . 1 2 1 .
. . 3 1 . 2 . . 3 . . . 3 2 .
. 2 . 2 . . . 2 . 1 3 . 1 . 1
. 3 2 3 2 . 2 0 3 . 3 . 3 . 2
2 2 . . . . 2 . 2 . . . . . .
. . 1 . 2 1 . . . . . . . . 2
. . 2 2 2 3 . . 2 . 1 . 2 3 2
3 . 3 . 2 1 . 3 . . . 2 2 3 .
. . . . . . . 0 . . . . . . .

Loading pre-computed background
start init-inner-N-and-B-candidates 1.15848112106323
start solution 1.18515801429749
entering BRT
w[0]-0-in-r15c8 ==> Hr16c8 = 0, Hr15c8 = 0, Vr15c9 = 0, Vr15c8 = 0
w[0]-0-in-r10c8 ==> Hr11c8 = 0, Hr10c8 = 0, Vr10c9 = 0, Vr10c8 = 0
w[0]-0-in-r5c13 ==> Hr6c13 = 0, Hr5c13 = 0, Vr5c14 = 0, Vr5c13 = 0
w[0]-0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
w[0]-adjacent-3-0-in-c8{r14 r15} ==> Vr14c9 = 1, Vr14c8 = 1, Hr15c9 = 1, Hr15c7 = 1, Hr14c8 = 1, Vr13c9 = 0, Vr13c8 = 0, Hr14c9 = 0, Hr14c7 = 0
w0-adjacent-3-0-in-r10{c9 c8} ==> Vr10c10 = 1, Vr11c9 = 1, Vr9c9 = 1, Hr11c9 = 1, Hr10c9 = 1, Vr11c10 = 0, Vr9c10 = 0, Hr11c10 = 0, Hr10c10 = 0
w[1]-2-in-r13c9-open-sw-corner ==> Hr13c9 = 1, Vr13c10 = 1, Hr13c10 = 0, Vr12c10 = 0
w[1]-diagonal-3-0-in-{r6c3...r5c4} ==> Vr6c4 = 1, Hr6c3 = 1
w[1]-diagonal-3s-in-{r7c8...r8c9} ==> Vr8c10 = 1, Vr7c8 = 1, Hr9c9 = 1, Hr7c8 = 1, Vr6c8 = 0, Hr9c10 = 0, Hr7c7 = 0
w[1]-2-in-r6c7-open-se-corner ==> Hr6c7 = 1, Vr6c7 = 1, Hr6c6 = 0, Vr5c7 = 0
w[1]-2-in-r5c6-open-se-corner ==> Hr5c6 = 1, Vr5c6 = 1, Hr5c5 = 0, Vr4c6 = 0
w[1]-diagonal-3s-in-{r3c2...r4c1} ==> Vr3c3 = 1, Vr4c1 = 1, Hr5c1 = 1, Hr3c2 = 1, Vr2c3 = 0, Vr5c1 = 0, Hr3c3 = 0
w[1]-diagonal-3-2-3-in-{r1c7...r3c9} ==> Vr3c10 = 1, Vr1c7 = 1, Hr4c9 = 1, Hr1c7 = 1, Vr4c10 = 0, Hr4c10 = 0, Hr1c6 = 0
w[1]-diagonal-3-2-3-in-{r4c1...r6c3} ==> Hr7c3 = 1, Hr4c1 = 1, Vr7c4 = 0, Vr3c1 = 0, Hr7c4 = 0
w[1]-diagonal-3-2+0-in-{r7c5...r6c4+r5c4} ==> Vr7c6 = 1, Hr8c5 = 1, Vr8c6 = 0, Hr8c6 = 0
w[1]-2-in-r8c6-open-nw-corner ==> Hr9c6 = 1, Vr8c7 = 1, Hr9c7 = 0, Vr9c7 = 0
w[1]-diagonal-3-2+0-in-{r8c9...r9c8+r10c8} ==> Vr9c8 = 1, Hr10c7 = 1, Hr8c9 = 1, Vr7c10 = 0, Hr8c10 = 0
w[1]-3-in-r5c1-hit-by-verti-line-at-nw ==> Vr5c2 = 1, Hr6c1 = 1
w[1]-diagonal-3-2-in-{r4c1...r5c2}-non-closed-se-corner ==> Vr5c3 = 1
w[1]-3-in-r1c8-hit-by-horiz-line-at-nw ==> Vr1c9 = 1, Hr2c8 = 1
w[1]-diagonal-3-2-in-{r1c7...r2c8}-non-closed-se-corner ==> Hr3c8 = 1
w[1]-3-in-r1c7-hit-by-horiz-line-at-se ==> Vr2c8 = 0
w[1]-adjacent-1-3-on-edge-in-{r3 r4}c1 ==> Vr3c2 = 0, Hr3c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r14 r13}c6 ==> Vr13c7 = 1, Vr14c6 = 0, Hr15c6 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r8{c4 c3} ==> Vr8c5 = 0, Hr9c4 = 0, Hr8c3 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r6 r7}c8 ==> Vr6c9 = 0, Hr6c8 = 0
w[1]-diagonal-1-1-in-{r6c8...r5c9}-with-no-ne-inner-sides ==> Hr6c9 = 0, Vr5c9 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r5{c9 c10} ==> Hr5c10 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c1 c2} ==> Hr4c2 = 1
w[1]-adjacent-1-2-on-edge-in-{r3 r2}c1-bkwd-diag-2s-3...r3c2 ==> Vr1c1 = 1
w[1]-3-in-r14c8-closed-ne-corner ==> Pr15c8 ≠ sw, Pr15c8 ≠ ne, Pr15c8 ≠ o
w[1]-3-in-r14c8-closed-nw-corner ==> Pr15c9 ≠ se, Pr15c9 ≠ nw, Pr15c9 ≠ o
w[1]-3-in-r10c9-closed-ne-corner ==> Pr11c9 ≠ sw, Pr11c9 ≠ ne
w[1]-3-in-r8c9-closed-se-corner ==> Pr8c9 ≠ se, Pr8c9 ≠ nw, Pr8c9 ≠ o
w[1]-3-in-r6c3-closed-ne-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ne, Pr7c3 ≠ o
w[1]-3-in-r5c1-closed-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
w[1]-3-in-r5c1-closed-ne-corner ==> Pr6c1 ≠ ne, Pr6c1 ≠ o
w[1]-3-in-r4c1-closed-sw-corner ==> Pr4c2 ≠ sw, Pr4c2 ≠ ne, Pr4c2 ≠ o
w[1]-3-in-r3c2-closed-se-corner ==> Pr3c2 ≠ se, Pr3c2 ≠ o
w[1]-3-in-r1c8-closed-se-corner ==> Pr1c8 ≠ se, Pr1c8 ≠ o
adjacent-3s-in-c14{r13 r14} ==> Hr15c14 = 1, Hr14c14 = 1, Hr13c14 = 1, Hr14c15 = 0, Hr14c13 = 0
adjacent-3s-in-c11{r9 r10} ==> Hr11c11 = 1, Hr10c11 = 1, Hr9c11 = 1, Hr10c12 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r9 r10}c13 ==> Vr9c14 = 0, Vr10c13 = 1, Hr9c13 = 0
adjacent-3s-in-r1{c7 c8} ==> Vr1c8 = 1
w[1]-3-in-r1c7-closed-ne-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
w[1]-3-in-r1c8-closed-sw-corner ==> Pr1c9 ≠ sw, Pr1c9 ≠ o
w[3]-adjacent-3-2-in-{r10 r9}c4-noline-north ==> Hr11c4 = 1, Hr10c5 = 0, Hr10c3 = 0
w[1]-diagonal-3-1-in-{r10c11...r9c10}-open-end ==> Vr10c12 = 1
w[1]-3-in-r9c11-hit-by-verti-line-at-se ==> Vr9c11 = 1
w[0]-adjacent-3-in-r10c11-nolines-west ==> Vr11c11 = 1
w[1]-3-in-r9c11-closed-sw-corner ==> Pr9c12 ≠ sw, Pr9c12 ≠ ne, Pr9c12 ≠ o
w[1]-3-in-r9c11-closed-nw-corner ==> Pr10c12 ≠ se, Pr10c12 ≠ nw, Pr10c12 ≠ o
w[1]-3-in-r10c11-closed-se-corner ==> Pr10c11 ≠ se, Pr10c11 ≠ nw, Pr10c11 ≠ o
w[1]-3-in-r10c11-closed-ne-corner ==> Pr11c11 ≠ sw, Pr11c11 ≠ ne, Pr11c11 ≠ o
w[1]-diagonal-3-1-in-{r1c4...r2c3}-open-end ==> Vr1c5 = 1, Hr1c4 = 1
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-1-in-r9c10-asymmetric-se-corner ==> Pr9c10 ≠ sw, Pr9c10 ≠ ew, Pr9c10 ≠ ns, Pr9c10 ≠ ne
w[1]-1-in-r5c8-asymmetric-sw-corner ==> Pr5c9 ≠ ew, Pr5c9 ≠ se, Pr5c9 ≠ nw, Pr5c9 ≠ ns
w[1]-1-in-r2c3-asymmetric-ne-corner ==> Pr3c3 ≠ ew, Pr3c3 ≠ ns
entering level Loop with <Fact-198500>
entering level Col with <Fact-198610>
no-vertical-line-r5{c0 c1} ==> Ir5c1 = out
vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
horizontal-line-{r3 r4}c1 ==> Ir3c1 = out
no-vertical-line-r3{c1 c2} ==> Ir3c2 = out
vertical-line-r3{c2 c3} ==> Ir3c3 = in
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = in
no-vertical-line-r2{c2 c3} ==> Ir2c2 = in
no-horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
no-vertical-line-r6{c1 c2} ==> Ir6c1 = in
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
vertical-line-r6{c3 c4} ==> Ir6c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
no-vertical-line-r5{c3 c4} ==> Ir5c3 = out
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
no-vertical-line-r4{c5 c6} ==> Ir4c6 = out
horizontal-line-{r4 r5}c6 ==> Ir5c6 = in
no-vertical-line-r5{c6 c7} ==> Ir5c7 = in
horizontal-line-{r5 r6}c7 ==> Ir6c7 = out
no-vertical-line-r6{c7 c8} ==> Ir6c8 = out
no-vertical-line-r6{c8 c9} ==> Ir6c9 = out
no-horizontal-line-{r5 r6}c9 ==> Ir5c9 = out
no-vertical-line-r5{c8 c9} ==> Ir5c8 = out
horizontal-line-{r6 r7}c8 ==> Ir7c8 = in
vertical-line-r7{c7 c8} ==> Ir7c7 = out
vertical-line-r6{c6 c7} ==> Ir6c6 = in
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
no-horizontal-line-{r6 r7}c4 ==> Ir7c4 = out
no-vertical-line-r7{c3 c4} ==> Ir7c3 = out
horizontal-line-{r7 r8}c3 ==> Ir8c3 = in
vertical-line-r1{c0 c1} ==> Ir1c1 = in
no-horizontal-line-{r15 r16}c8 ==> Ir15c8 = out
no-vertical-line-r15{c7 c8} ==> Ir15c7 = out
horizontal-line-{r14 r15}c7 ==> Ir14c7 = in
no-horizontal-line-{r13 r14}c7 ==> Ir13c7 = in
no-vertical-line-r13{c7 c8} ==> Ir13c8 = in
no-vertical-line-r13{c8 c9} ==> Ir13c9 = in
no-horizontal-line-{r13 r14}c9 ==> Ir14c9 = in
vertical-line-r14{c8 c9} ==> Ir14c8 = out
horizontal-line-{r14 r15}c9 ==> Ir15c9 = out
vertical-line-r13{c9 c10} ==> Ir13c10 = out
no-horizontal-line-{r12 r13}c10 ==> Ir12c10 = out
no-vertical-line-r12{c9 c10} ==> Ir12c9 = out
vertical-line-r13{c6 c7} ==> Ir13c6 = out
no-horizontal-line-{r0 r1}c8 ==> Ir1c8 = out
vertical-line-r1{c7 c8} ==> Ir1c7 = in
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = in
no-vertical-line-r2{c7 c8} ==> Ir2c8 = in
no-vertical-line-r2{c8 c9} ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
horizontal-line-{r2 r3}c8 ==> Ir3c8 = out
vertical-line-r1{c6 c7} ==> Ir1c6 = out
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
vertical-line-r1{c4 c5} ==> Ir1c4 = in
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
different-colours-in-{r0 r1}c9 ==> Hr1c9 = 1
same-colour-in-{r15 r16}c9 ==> Hr16c9 = 0
same-colour-in-{r15 r16}c7 ==> Hr16c7 = 0
different-colours-in-{r1 r2}c1 ==> Hr2c1 = 1
w[1]-2-in-r2c1-open-sw-corner ==> Vr2c2 = 1, Hr2c2 = 0, Vr1c2 = 0
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
same-colour-in-r4{c4 c5} ==> Vr4c5 = 0
different-colours-in-r4{c3 c4} ==> Hr4c4 = 1
w[1]-3-in-r3c4-hit-by-verti-line-at-sw ==> Vr3c5 = 1, Hr3c4 = 1
w[1]-3-in-r3c4-closed-ne-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ne
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
different-colours-in-{r4 r5}c3 ==> Hr5c3 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
Starting_init_links_with_<Fact-198997>
2471 candidates, 19056 csp-links and 77866 links. Density = 2.55%
starting non trivial part of solution
Entering_level_W1_with_<Fact-392846>
whip[1]: Vr6c1{1 .} ==> Br6c1 ≠ nes, Br6c0 ≠ o, Br6c1 ≠ o, Pr7c1 ≠ o, Pr7c1 ≠ se, Br6c1 ≠ n, Br6c1 ≠ e, Br6c1 ≠ s, Br6c1 ≠ ne, Br6c1 ≠ ns, Br6c1 ≠ se
B-single: Br6c0 = e
whip[1]: Pr8c2{ew .} ==> Br7c1 ≠ nw, Br7c1 ≠ se, Br7c2 ≠ sw, Br8c1 ≠ sw, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ nw, Br8c2 ≠ se, Br8c2 ≠ swn, Br8c2 ≠ wne, Br7c2 ≠ ne, Br8c1 ≠ o, Br8c1 ≠ s, Br8c1 ≠ w, Br8c1 ≠ ne, Br8c2 ≠ o, Br8c2 ≠ e, Br8c2 ≠ s
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 0
whip[1]: Br8c1{swn .} ==> Nr8c1 ≠ 0
whip[1]: Br6c1{wne .} ==> Nr6c1 ≠ 0
whip[1]: Hr5c3{1 .} ==> Br5c3 ≠ esw, Br4c3 ≠ o, Br5c3 ≠ o, Pr5c3 ≠ ns, Pr5c3 ≠ nw, Pr5c4 ≠ o, Pr5c4 ≠ ne, Pr5c4 ≠ ns, Pr5c4 ≠ se, Br4c3 ≠ n, Br4c3 ≠ e, Br4c3 ≠ w, Br4c3 ≠ ne, Br4c3 ≠ nw, Br4c3 ≠ ew, Br4c3 ≠ wne, Br5c3 ≠ e, Br5c3 ≠ s, Br5c3 ≠ w, Br5c3 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ sw
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Pr5c4{sw .} ==> Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ se, Br4c2 ≠ ew, Br4c2 ≠ esw, Br4c2 ≠ wne, Br4c2 ≠ nes, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br5c2 ≠ sw, Br4c2 ≠ e, Br4c2 ≠ ne, Br5c2 ≠ ne
whip[1]: Br4c2{swn .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ wne, Br3c3 ≠ sw, Br4c2 ≠ sw, Br3c3 ≠ ne, Br4c2 ≠ o, Br4c2 ≠ s, Br4c2 ≠ w
whip[1]: Br4c2{swn .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ nw, Nr4c2 ≠ 0
whip[1]: Pr4c2{ew .} ==> Br3c2 ≠ esw, Br3c2 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ nes, Br3c1 ≠ e
B-single: Br3c2 = nes
whip[1]: Br3c2{nes .} ==> Pr4c3 ≠ ew, Pr3c3 ≠ ne, Pr3c2 ≠ sw, Pr3c2 ≠ ns
P-single: Pr3c3 = sw
P-single: Pr4c3 = nw
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ ns, Br2c3 ≠ w, Br2c3 ≠ s, Br2c2 ≠ ne, Br2c2 ≠ w, Br2c2 ≠ e, Br2c2 ≠ n, Br2c2 ≠ o, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ esw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br3c3 ≠ nw, Br3c3 ≠ se
B-single: Br3c3 = ew
whip[1]: Br3c3{ew .} ==> Pr4c4 ≠ ew, Pr3c4 ≠ ew, Pr3c4 ≠ nw, Vr3c4 ≠ 0
V-single: Vr3c4 = 1
w[1]-3-in-r3c4-closed-nw-corner ==> Pr4c5 ≠ se, Pr4c5 ≠ nw, Pr4c5 ≠ o
P-single: Pr4c4 = ns
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = in
vertical-line-r3{c4 c5} ==> Ir3c4 = out
same-colour-in-{r3 r4}c4 ==> Hr4c4 = 0
different-colours-in-{r3 r4}c5 ==> Hr4c5 = 1
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
w[0]-adjacent-3-in-r1c4-nolines-south ==> Vr1c4 = 1, Hr2c3 = 1, Hr1c3 = 0
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
no-horizontal-line-{r0 r1}c3 ==> Ir1c3 = out
different-colours-in-r1{c2 c3} ==> Hr1c3 = 1
whip[1]: Vr3c4{1 .} ==> Br3c4 ≠ nes
whip[1]: Br3c4{wne .} ==> Pr3c5 ≠ o, Pr3c5 ≠ ne
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn
whip[1]: Vr2c4{0 .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ se, Pr3c4 ≠ ns, Br2c3 ≠ e, Br2c4 ≠ w, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ esw, Br2c4 ≠ swn, Br2c4 ≠ wne
P-single: Pr3c4 = se
B-single: Br2c3 = n
w[1]-1-in-r2c3-symmetric-se-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Br2c4 ≠ ne, Br3c4 ≠ esw
whip[1]: Br3c4{wne .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ se
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c3{n .} ==> Pr2c3 ≠ ns, Pr2c3 ≠ sw
whip[1]: Pr2c3{ew .} ==> Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ esw, Br1c2 ≠ nes, Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ wne, Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ w, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ e, Br1c3 ≠ w, Br1c3 ≠ ne
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 0
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br1c4{nes .} ==> Pr1c4 ≠ o, Pr1c4 ≠ sw, Pr1c5 ≠ o, Pr1c5 ≠ se, Pr1c5 ≠ ew, Pr2c5 ≠ ew, Pr2c5 ≠ sw
P-single: Pr1c5 = sw
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ ns, Br1c5 ≠ ne, Br1c5 ≠ s, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes
whip[1]: Br1c5{esw .} ==> Pr1c6 ≠ ew, Pr1c6 ≠ sw, Nr1c5 ≠ 0
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ nes, Br1c6 ≠ n, Br1c6 ≠ w
whip[1]: Pr2c5{ns .} ==> Br1c4 ≠ nes, Br2c4 ≠ ns, Br2c4 ≠ nes, Br2c5 ≠ s, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ wne, Br2c5 ≠ o, Br2c5 ≠ e
B-single: Br1c4 = wne
whip[1]: Br1c4{wne .} ==> Pr2c4 ≠ ew, Pr1c4 ≠ ew
P-single: Pr1c4 = se
P-single: Pr2c4 = nw
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ s, Br1c3 ≠ ns, Br1c3 ≠ sw, Br1c3 ≠ swn, Br1c3 ≠ nes
whip[1]: Br1c3{esw .} ==> Pr1c3 ≠ se, Pr1c3 ≠ ew, Nr1c3 ≠ 1
whip[1]: Pr1c3{sw .} ==> Br1c2 ≠ ew, Br1c2 ≠ swn, Br1c2 ≠ e, Br1c2 ≠ ns
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Br2c4{se .} ==> Nr2c4 ≠ 3
whip[1]: Pr4c4{ns .} ==> Br4c4 ≠ e, Br4c4 ≠ n, Br4c4 ≠ o, Br3c4 ≠ swn, Br4c3 ≠ s, Br4c3 ≠ ns, Br4c3 ≠ nes, Br4c4 ≠ s, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ wne, Br4c4 ≠ nes
B-single: Br4c3 = se
B-single: Br3c4 = wne
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 3, Nr4c3 ≠ 1, Pr5c4 ≠ sw, Pr5c4 ≠ ew
N-single: Nr4c3 = 2
P-single: Pr5c4 = nw
whip[1]: Pr5c4{nw .} ==> Vr5c4 ≠ 1, Hr5c4 ≠ 1, Br5c3 ≠ ne, Br5c3 ≠ wne, Br5c3 ≠ nes
whip[1]: Br5c3{swn .} ==> Pr6c4 ≠ ne, Pr6c4 ≠ ns
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ nw, Br6c3 ≠ esw, Br6c4 ≠ nw, Br6c4 ≠ se, Br5c3 ≠ n
whip[1]: Br5c3{swn .} ==> Pr6c3 ≠ ns, Pr6c3 ≠ sw, Nr5c3 ≠ 1
whip[1]: Pr6c3{ew .} ==> Br5c2 ≠ nw, Br5c2 ≠ se, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c2 ≠ wne, Br6c2 ≠ nes, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c2 ≠ e, Br6c2 ≠ ne
B-single: Br6c3 = nes
whip[1]: Br6c3{nes .} ==> Pr7c4 ≠ ew, Pr7c4 ≠ se, Pr7c4 ≠ ns, Pr7c3 ≠ nw, Pr7c3 ≠ ns, Pr6c4 ≠ ew
P-single: Pr6c4 = sw
P-single: Pr7c4 = nw
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ ns, Br6c4 ≠ ne, Hr6c4 ≠ 1
whip[1]: Br6c4{sw .} ==> Pr6c5 ≠ nw, Pr6c5 ≠ ew
whip[1]: Pr6c5{se .} ==> Vr6c5 ≠ 0, Br5c5 ≠ ne, Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn, Br6c4 ≠ sw, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ nes, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ e, Br6c5 ≠ o, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ s
V-single: Vr6c5 = 1
B-single: Br6c4 = ew
vertical-line-r6{c4 c5} ==> Ir6c5 = in
same-colour-in-r6{c5 c6} ==> Vr6c6 = 0
different-colours-in-{r5 r6}c5 ==> Hr6c5 = 1
whip[1]: Vr6c5{1 .} ==> Pr7c5 ≠ ew, Pr7c5 ≠ sw
whip[1]: Pr7c5{ns .} ==> Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ nw, Br7c4 ≠ swn, Br7c4 ≠ wne, Br7c4 ≠ nes, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c4 ≠ n
whip[1]: Br7c5{nes .} ==> Pr7c6 ≠ o, Pr7c6 ≠ ne, Pr7c6 ≠ nw, Pr7c6 ≠ ew, Pr8c5 ≠ o, Pr8c5 ≠ ns, Pr8c5 ≠ nw, Pr8c5 ≠ sw, Pr8c6 ≠ o, Pr8c6 ≠ ne, Pr8c6 ≠ ns, Pr8c6 ≠ ew, Pr8c6 ≠ sw
P-single: Pr9c7 = nw
P-single: Pr8c6 = nw
whip[1]: Pr9c7{nw .} ==> Br9c7 ≠ n, Br9c6 ≠ s, Br9c6 ≠ e, Br9c6 ≠ o, Br8c7 ≠ s, Br8c7 ≠ e, Br8c7 ≠ n, Br8c7 ≠ o, Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ se, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn, Br8c7 ≠ nes, Br9c6 ≠ w, Br9c6 ≠ ne, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ sw, Br9c6 ≠ esw, Br9c6 ≠ wne, Br9c6 ≠ nes, Br9c7 ≠ w, Br9c7 ≠ ne, Br9c7 ≠ ns, Br9c7 ≠ nw, Br9c7 ≠ ew, Br9c7 ≠ sw, Br9c7 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ nes
B-single: Br8c6 = se
whip[1]: Br8c6{se .} ==> Pr9c6 ≠ nw, Pr9c6 ≠ ns, Pr8c7 ≠ ew, Pr8c7 ≠ nw
whip[1]: Pr8c7{se .} ==> Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ nes, Br7c7 ≠ ne, Br7c7 ≠ sw, Br7c7 ≠ esw, Br7c7 ≠ swn, Br7c6 ≠ s, Br7c7 ≠ o, Br7c7 ≠ n, Br7c7 ≠ e
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Pr9c6{ew .} ==> Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ esw, Br8c5 ≠ wne, Br8c5 ≠ nes, Br9c5 ≠ sw, Br9c5 ≠ wne, Br9c5 ≠ nes, Br8c5 ≠ e, Br8c5 ≠ ne, Br9c5 ≠ o, Br9c5 ≠ s, Br9c5 ≠ w, Br9c5 ≠ ne
whip[1]: Br9c5{swn .} ==> Nr9c5 ≠ 0
whip[1]: Br9c7{se .} ==> Pr9c8 ≠ ew, Pr9c8 ≠ sw, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Nr9c7 ≠ 3
whip[1]: Pr10c7{sw .} ==> Br10c6 ≠ sw, Br10c7 ≠ se, Br10c6 ≠ o, Br10c6 ≠ s, Br10c6 ≠ w
whip[1]: Br10c6{nes .} ==> Nr10c6 ≠ 0
whip[1]: Pr9c8{ns .} ==> Vr8c8 ≠ 0, Br8c7 ≠ w, Br8c7 ≠ nw, Br8c8 ≠ s, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ se, Br8c8 ≠ nes, Br9c8 ≠ nw, Br9c8 ≠ se, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ e
V-single: Vr8c8 = 1
w[1]-3-in-r7c8-hit-by-verti-line-at-sw ==> Vr7c9 = 1, Hr8c7 = 0
w[1]-3-in-r7c8-closed-ne-corner ==> Pr8c8 ≠ sw, Pr8c8 ≠ ne, Pr8c8 ≠ o
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = in
no-vertical-line-r8{c8 c9} ==> Ir8c9 = in
vertical-line-r8{c9 c10} ==> Ir8c10 = out
no-vertical-line-r8{c10 c11} ==> Ir8c11 = out
horizontal-line-{r8 r9}c11 ==> Ir9c11 = in
no-vertical-line-r9{c11 c12} ==> Ir9c12 = in
no-horizontal-line-{r9 r10}c12 ==> Ir10c12 = in
no-horizontal-line-{r10 r11}c12 ==> Ir11c12 = in
no-vertical-line-r11{c11 c12} ==> Ir11c11 = in
vertical-line-r11{c10 c11} ==> Ir11c10 = out
no-vertical-line-r11{c9 c10} ==> Ir11c9 = out
vertical-line-r11{c8 c9} ==> Ir11c8 = in
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = in
no-vertical-line-r10{c7 c8} ==> Ir10c7 = in
horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-vertical-line-r9{c6 c7} ==> Ir9c6 = out
horizontal-line-{r8 r9}c6 ==> Ir8c6 = in
no-vertical-line-r8{c5 c6} ==> Ir8c5 = in
no-vertical-line-r8{c4 c5} ==> Ir8c4 = in
no-horizontal-line-{r8 r9}c4 ==> Ir9c4 = in
horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
vertical-line-r7{c5 c6} ==> Ir7c6 = in
vertical-line-r8{c6 c7} ==> Ir8c7 = out
vertical-line-r9{c7 c8} ==> Ir9c8 = in
vertical-line-r9{c8 c9} ==> Ir9c9 = out
no-vertical-line-r9{c9 c10} ==> Ir9c10 = out
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = out
no-vertical-line-r10{c10 c11} ==> Ir10c11 = out
vertical-line-r10{c9 c10} ==> Ir10c9 = in
vertical-line-r10{c12 c13} ==> Ir10c13 = out
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = out
no-vertical-line-r7{c9 c10} ==> Ir7c9 = out
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
same-colour-in-{r6 r7}c6 ==> Hr7c6 = 0
w[1]-3-in-r7c5-isolated-at-ne-corner ==> Hr7c5 = 1
w[1]-3-in-r7c5-closed-ne-corner ==> Pr8c5 ≠ ne
w[1]-diagonal-closed-3-1-in-{r7c5...r8c4} ==> Vr8c4 = 0
w[1]-1-in-r8c4-asymmetric-ne-corner ==> Pr9c4 ≠ ew, Pr9c4 ≠ nw, Pr9c4 ≠ ns
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
w[1]-3-in-r8c3-hit-by-horiz-line-at-ne ==> Vr8c3 = 1, Hr9c3 = 1
w[1]-2-in-r7c2-open-se-corner ==> Hr7c2 = 1, Vr7c2 = 1, Hr7c1 = 0
w[1]-2-in-r9c2-open-ne-corner ==> Hr10c2 = 1, Vr9c2 = 1, Hr10c1 = 0, Vr10c2 = 0
w[1]-3-in-r10c2-hit-by-verti-line-at-nw ==> Vr10c3 = 1, Hr11c2 = 1
w[1]-3-in-r10c2-closed-se-corner ==> Pr10c2 ≠ se, Pr10c2 ≠ nw
w[1]-3-in-r10c2-closed-ne-corner ==> Pr11c2 ≠ sw, Pr11c2 ≠ ne
w[1]-3-in-r8c3-closed-sw-corner ==> Pr8c4 ≠ sw, Pr8c4 ≠ ne, Pr8c4 ≠ o
w[1]-3-in-r8c3-closed-nw-corner ==> Pr9c4 ≠ o
no-horizontal-line-{r6 r7}c1 ==> Ir7c1 = in
vertical-line-r7{c1 c2} ==> Ir7c2 = out
no-horizontal-line-{r7 r8}c2 ==> Ir8c2 = out
no-horizontal-line-{r8 r9}c2 ==> Ir9c2 = out
no-vertical-line-r9{c2 c3} ==> Ir9c3 = out
no-horizontal-line-{r9 r10}c3 ==> Ir10c3 = out
no-horizontal-line-{r10 r11}c3 ==> Ir11c3 = out
no-vertical-line-r11{c2 c3} ==> Ir11c2 = out
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
no-vertical-line-r10{c1 c2} ==> Ir10c1 = in
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = in
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
different-colours-in-r9{c3 c4} ==> Hr9c4 = 1
w[1]-3-in-r10c4-hit-by-verti-line-at-nw ==> Vr10c5 = 1
w[1]-diagonal-3-2s-in-{r8c3...r10c5}-non-closed-se-end ==> Vr10c6 = 1
w[1]-3-in-r10c4-closed-se-corner ==> Pr10c4 ≠ se, Pr10c4 ≠ nw
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
same-colour-in-{r11 r12}c9 ==> Hr12c9 = 0
same-colour-in-{r11 r12}c10 ==> Hr12c10 = 0
whip[1]: Vr8c8{1 .} ==> Pr8c8 ≠ nw, Pr8c8 ≠ ew
whip[1]: Pr8c8{se .} ==> Br7c7 ≠ ns, Br7c7 ≠ se, Br7c7 ≠ nes, Br7c8 ≠ esw, Br7c8 ≠ swn, Br8c7 ≠ wne, Br7c7 ≠ s
B-single: Br8c7 = ew
whip[1]: Br8c7{ew .} ==> Nr8c7 ≠ 3, Nr8c7 ≠ 1, Nr8c7 ≠ 0, Pr8c7 ≠ se
N-single: Nr8c7 = 2
P-single: Pr8c7 = ns
whip[1]: Pr8c7{ns .} ==> Br7c6 ≠ n, Br7c6 ≠ o, Br7c6 ≠ w, Br7c6 ≠ nw
whip[1]: Br7c6{wne .} ==> Pr7c7 ≠ nw, Pr7c7 ≠ ew, Nr7c6 ≠ 0
whip[1]: Pr7c7{se .} ==> Br6c6 ≠ ns, Br6c6 ≠ se, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ nes, Br6c7 ≠ ne, Br6c7 ≠ sw, Br7c6 ≠ ne, Br7c6 ≠ wne, Br6c6 ≠ s
whip[1]: Br6c6{wne .} ==> Pr7c6 ≠ se
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ nw, Br6c5 ≠ esw, Br6c5 ≠ w, Br7c6 ≠ e
B-single: Br7c6 = ew
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 3, Nr7c6 ≠ 1
N-single: Nr7c6 = 2
whip[1]: Br6c5{wne .} ==> Nr6c5 ≠ 0, Nr6c5 ≠ 1
whip[1]: Br7c8{nes .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ns, Pr7c8 ≠ sw, Pr7c9 ≠ o, Pr7c9 ≠ ne, Pr7c9 ≠ ns, Pr7c9 ≠ nw, Pr7c9 ≠ se, Pr7c9 ≠ ew, Pr8c9 ≠ ew, Pr8c9 ≠ sw
P-single: Pr7c9 = sw
w[1]-1-in-r6c8-asymmetric-se-corner ==> Pr6c8 ≠ ew, Pr6c8 ≠ ns
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ ns, Br7c9 ≠ ne, Br7c9 ≠ s, Br7c9 ≠ e, Br7c9 ≠ n, Br7c9 ≠ o, Br6c9 ≠ ns, Br6c9 ≠ w, Br6c9 ≠ s, Br6c8 ≠ w, Br6c8 ≠ e, Br6c8 ≠ n, Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c9 ≠ nes, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ nes
B-single: Br6c8 = s
whip[1]: Br6c8{s .} ==> Pr7c8 ≠ ne, Pr6c9 ≠ ns, Pr6c8 ≠ se, Pr6c9 ≠ nw, Pr6c9 ≠ se, Pr6c9 ≠ ew, Pr6c9 ≠ sw
P-single: Pr6c8 = nw
w[1]-1-in-r5c9-symmetric-sw-corner ==> Pr5c10 ≠ sw, Pr5c10 ≠ ne, Pr5c10 ≠ o
whip[1]: Pr6c8{nw .} ==> Br5c8 ≠ s, Br5c8 ≠ e, Br5c8 ≠ n, Br5c7 ≠ s, Br5c7 ≠ e, Br5c7 ≠ n, Br5c7 ≠ o, Br5c7 ≠ w, Br5c7 ≠ ne, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ swn, Br5c7 ≠ wne, Br6c7 ≠ se, Br6c7 ≠ ew
B-single: Br5c8 = w
whip[1]: Br5c8{w .} ==> Pr6c9 ≠ ne, Pr5c8 ≠ nw, Pr5c8 ≠ ne, Pr5c8 ≠ o, Hr5c8 ≠ 1, Pr5c8 ≠ se, Pr5c8 ≠ ew, Pr5c9 ≠ sw
H-single: Hr5c8 = 0
P-single: Pr6c9 = o
no-horizontal-line-{r4 r5}c8 ==> Ir4c8 = out
same-colour-in-{r3 r4}c8 ==> Hr4c8 = 0
whip[1]: Hr5c8{0 .} ==> Br4c8 ≠ s, Br4c8 ≠ ns, Br4c8 ≠ se, Br4c8 ≠ sw, Br4c8 ≠ esw, Br4c8 ≠ swn, Br4c8 ≠ nes
whip[1]: Pr6c9{o .} ==> Br5c9 ≠ s, Br5c9 ≠ w, Br6c9 ≠ n, Br6c9 ≠ ne
whip[1]: Br6c9{e .} ==> Nr6c9 ≠ 2, Pr6c10 ≠ nw, Pr6c10 ≠ ew, Pr6c10 ≠ sw, Pr7c10 ≠ nw, Pr7c10 ≠ ew, Pr7c10 ≠ sw, Nr6c9 ≠ 3
whip[1]: Hr4c8{0 .} ==> Pr4c8 ≠ se, Pr4c8 ≠ ew, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Br3c8 ≠ ns, Br3c8 ≠ se, Br3c8 ≠ sw, Br4c8 ≠ n, Br4c8 ≠ ne, Br4c8 ≠ nw, Br4c8 ≠ wne
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 3
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ nw, Br2c8 ≠ se, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br3c9 ≠ swn, Br3c9 ≠ wne
whip[1]: Br3c9{nes .} ==> Pr3c10 ≠ ne, Pr3c10 ≠ ew, Pr4c9 ≠ o, Pr4c9 ≠ ns, Pr4c10 ≠ o, Pr4c10 ≠ ns, Pr4c10 ≠ se, Pr4c10 ≠ ew, Pr4c10 ≠ sw
P-single: Pr4c10 = nw
whip[1]: Pr4c10{nw .} ==> Br4c10 ≠ n, Br4c9 ≠ s, Br4c9 ≠ e, Br4c9 ≠ o, Br3c10 ≠ ne, Br3c10 ≠ ns, Br3c10 ≠ se, Br3c10 ≠ sw, Br4c9 ≠ w, Br4c9 ≠ ne, Br4c9 ≠ se, Br4c9 ≠ ew, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br4c10 ≠ w, Br4c10 ≠ ne, Br4c10 ≠ ns, Br4c10 ≠ nw, Br4c10 ≠ ew, Br4c10 ≠ sw, Br4c10 ≠ esw, Br4c10 ≠ swn, Br4c10 ≠ wne, Br4c10 ≠ nes
whip[1]: Br4c10{se .} ==> Pr4c11 ≠ ew, Pr4c11 ≠ sw, Pr5c10 ≠ ns, Pr5c10 ≠ nw, Nr4c10 ≠ 3
whip[1]: Pr5c10{ew .} ==> Br5c10 ≠ esw, Br4c10 ≠ o, Br4c10 ≠ e
whip[1]: Br4c10{se .} ==> Pr5c11 ≠ o, Pr5c11 ≠ ne, Pr5c11 ≠ ns, Pr5c11 ≠ se, Nr4c10 ≠ 0
whip[1]: Pr5c11{sw .} ==> Br5c11 ≠ nw, Br5c11 ≠ swn, Br5c11 ≠ wne
whip[1]: Br5c10{nes .} ==> Pr6c10 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ se
whip[1]: Pr6c11{sw .} ==> Br6c11 ≠ nw, Br6c11 ≠ swn, Br6c11 ≠ wne
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ se, Br6c10 ≠ o, Br6c10 ≠ e, Br6c10 ≠ s
whip[1]: Br6c10{nes .} ==> Nr6c10 ≠ 0
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Pr3c11{ew .} ==> Br2c11 ≠ sw, Br2c11 ≠ esw, Br2c11 ≠ swn, Br2c11 ≠ o, Br2c11 ≠ n, Br2c11 ≠ e, Br2c11 ≠ ne
whip[1]: Br2c11{nes .} ==> Nr2c11 ≠ 0
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ se, Br2c9 ≠ nes, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn
whip[1]: Pr3c8{ew .} ==> Br2c7 ≠ se, Br2c7 ≠ esw, Br2c7 ≠ nes, Br2c8 ≠ sw, Br3c7 ≠ sw, Br2c8 ≠ ne, Br3c7 ≠ ne
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ ns, Br4c9 ≠ nw
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 2
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ esw, Br4c7 ≠ nes, Br4c7 ≠ o, Br4c7 ≠ n, Br4c7 ≠ w
whip[1]: Br4c7{wne .} ==> Nr4c7 ≠ 0
whip[1]: Br6c7{nw .} ==> Pr6c7 ≠ ns, Pr6c7 ≠ sw
whip[1]: Pr6c7{ew .} ==> Br5c6 ≠ se, Br6c6 ≠ wne, Br6c6 ≠ ne
whip[1]: Br6c6{ew .} ==> Nr6c6 ≠ 3
whip[1]: Br5c7{nes .} ==> Pr5c7 ≠ se, Nr5c7 ≠ 0, Nr5c7 ≠ 1
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ nw, Br4c7 ≠ sw, Br4c7 ≠ swn, Br5c6 ≠ sw, Br4c6 ≠ o, Br4c6 ≠ n, Br4c6 ≠ w, Br4c7 ≠ e, Br4c7 ≠ ne, Br5c6 ≠ ne
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Pr7c8{ew .} ==> Br7c7 ≠ wne, Br7c7 ≠ w
whip[1]: Br7c7{ew .} ==> Nr7c7 ≠ 1, Nr7c7 ≠ 3
N-single: Nr7c7 = 2
P-single: Pr8c8 = ns
P-single: Pr7c7 = ns
whip[1]: Pr8c8{ns .} ==> Br7c7 ≠ nw, Br7c8 ≠ nes, Br8c8 ≠ nw, Br8c8 ≠ swn, Br8c8 ≠ wne
B-single: Br7c8 = wne
B-single: Br7c7 = ew
whip[1]: Br7c8{wne .} ==> Pr7c8 ≠ ew
P-single: Pr5c6 = se
P-single: Pr6c7 = se
P-single: Pr7c8 = se
whip[1]: Pr5c6{se .} ==> Br5c5 ≠ w, Br5c5 ≠ s, Br4c6 ≠ e, Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ ne, Br4c5 ≠ ns, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c5 ≠ nes, Br4c6 ≠ ne, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ ns, Br5c6 ≠ ew
B-single: Br5c6 = nw
whip[1]: Br5c6{nw .} ==> Pr6c6 ≠ ew, Pr6c6 ≠ se, Pr5c7 ≠ ns
whip[1]: Pr5c7{ew .} ==> Br5c7 ≠ esw
whip[1]: Pr6c6{nw .} ==> Br6c5 ≠ sw, Br6c5 ≠ wne, Br6c6 ≠ nw, Br6c6 ≠ n
whip[1]: Br5c5{ew .} ==> Pr5c5 ≠ ne, Pr5c5 ≠ se, Pr5c5 ≠ ew, Nr5c5 ≠ 0, Nr5c5 ≠ 1, Nr5c5 ≠ 3
N-single: Nr5c5 = 2
whip[1]: Br4c6{nes .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Pr4c6 ≠ sw
whip[1]: Br4c5{nw .} ==> Nr4c5 ≠ 3
whip[1]: Pr6c7{se .} ==> Br6c6 ≠ w, Br6c6 ≠ o, Br6c7 ≠ ns
B-single: Br6c7 = nw
whip[1]: Br6c6{ew .} ==> Nr6c6 ≠ 0
whip[1]: Br8c8{esw .} ==> Nr8c8 ≠ 0
whip[1]: Br7c9{esw .} ==> Nr7c9 ≠ 0
whip[1]: Pr8c9{ns .} ==> Br8c9 ≠ swn, Br8c9 ≠ wne
whip[1]: Br8c9{nes .} ==> Pr8c10 ≠ o, Pr8c10 ≠ ne, Pr8c10 ≠ nw, Pr8c10 ≠ ew, Pr9c9 ≠ ns, Pr9c9 ≠ nw, Pr9c10 ≠ o, Pr9c10 ≠ se
P-single: Pr9c10 = nw
whip[1]: Pr9c10{nw .} ==> Br9c10 ≠ n, Br9c9 ≠ s, Br9c9 ≠ e, Br9c9 ≠ o, Br8c10 ≠ s, Br8c10 ≠ e, Br8c10 ≠ n, Br8c10 ≠ o, Br8c10 ≠ ne, Br8c10 ≠ ns, Br8c10 ≠ se, Br8c10 ≠ sw, Br8c10 ≠ esw, Br8c10 ≠ swn, Br8c10 ≠ nes, Br9c9 ≠ w, Br9c9 ≠ ne, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ wne, Br9c9 ≠ nes, Br9c10 ≠ w
whip[1]: Br9c10{s .} ==> Pr10c10 ≠ ne, Pr10c10 ≠ ns, Pr9c11 ≠ nw, Pr9c11 ≠ ew, Pr9c11 ≠ sw, Pr10c10 ≠ nw
whip[1]: Br9c9{swn .} ==> Nr9c9 ≠ 0
whip[1]: Br8c10{wne .} ==> Nr8c10 ≠ 0
whip[1]: Pr9c9{ew .} ==> Br8c8 ≠ ew, Br8c8 ≠ esw, Br8c9 ≠ esw, Br9c8 ≠ sw, Br9c8 ≠ ne
B-single: Br8c9 = nes
whip[1]: Br8c9{nes .} ==> Pr8c10 ≠ se, Pr8c10 ≠ ns, Pr8c9 ≠ ns
P-single: Pr8c9 = ne
P-single: Pr8c10 = sw
whip[1]: Pr8c9{ne .} ==> Br7c9 ≠ w, Br7c9 ≠ ew
whip[1]: Br7c9{esw .} ==> Nr7c9 ≠ 1
whip[1]: Pr8c10{sw .} ==> Br7c10 ≠ ns, Br7c10 ≠ w, Br7c10 ≠ s, Br7c9 ≠ esw, Br7c10 ≠ nw, Br7c10 ≠ se, Br7c10 ≠ ew, Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ nes, Br8c10 ≠ nw, Br8c10 ≠ wne
B-single: Br7c9 = sw
whip[1]: Br7c9{sw .} ==> Nr7c9 ≠ 3, Pr7c10 ≠ se, Pr7c10 ≠ ns
N-single: Nr7c9 = 2
whip[1]: Pr7c10{ne .} ==> Br6c10 ≠ w, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ ew, Br6c10 ≠ wne, Br6c10 ≠ nes
whip[1]: Br8c10{ew .} ==> Pr8c11 ≠ nw, Pr8c11 ≠ ew, Pr8c11 ≠ sw, Nr8c10 ≠ 3
whip[1]: Br7c10{ne .} ==> Nr7c10 ≠ 3
whip[1]: Br8c8{sw .} ==> Nr8c8 ≠ 3
whip[1]: Hr7c5{1 .} ==> Pr7c5 ≠ ns, Pr7c6 ≠ ns, Br6c5 ≠ ew, Br7c5 ≠ esw
P-single: Pr7c6 = sw
P-single: Pr7c5 = ne
B-single: Br7c5 = nes
B-single: Br6c5 = swn
whip[1]: Pr7c6{sw .} ==> Br6c6 ≠ ew
B-single: Br6c6 = e
whip[1]: Br6c6{e .} ==> Nr6c6 ≠ 2, Pr6c6 ≠ ns
N-single: Nr6c6 = 1
P-single: Pr6c6 = nw
whip[1]: Pr6c6{nw .} ==> Br5c5 ≠ ew
B-single: Br5c5 = se
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ ns, Vr5c5 ≠ 1
P-single: Pr6c5 = se
whip[1]: Pr5c5{nw .} ==> Br4c4 ≠ ew
B-single: Br4c4 = w
whip[1]: Br4c4{w .} ==> Nr4c4 ≠ 3, Nr4c4 ≠ 2, Nr4c4 ≠ 0, Pr5c5 ≠ nw, Pr4c5 ≠ ns, Pr4c5 ≠ ew, Pr4c5 ≠ sw
N-single: Nr4c4 = 1
P-single: Pr4c5 = ne
P-single: Pr5c5 = o
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ o, Br3c5 ≠ n, Br3c5 ≠ o, Br3c5 ≠ e, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ nes, Br4c5 ≠ w, Br4c5 ≠ nw
B-single: Br4c5 = n
whip[1]: Br4c5{n .} ==> Nr4c5 ≠ 0, Pr4c6 ≠ o, Pr4c6 ≠ ne, Nr4c5 ≠ 2
N-single: Nr4c5 = 1
whip[1]: Pr4c6{ew .} ==> Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ e, Br3c6 ≠ ne
whip[1]: Br3c6{nes .} ==> Nr3c6 ≠ 0
whip[1]: Br3c5{esw .} ==> Pr3c5 ≠ nw, Pr3c5 ≠ ew, Pr3c6 ≠ nw, Pr3c6 ≠ ew, Pr3c6 ≠ sw, Nr3c5 ≠ 0, Nr3c5 ≠ 1
P-single: Pr3c5 = sw
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ ns, Br2c5 ≠ w, Br2c4 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ nes
B-single: Br2c4 = s
whip[1]: Br2c4{s .} ==> Nr2c4 ≠ 2, Pr2c5 ≠ ns
N-single: Nr2c4 = 1
P-single: Pr2c5 = ne
whip[1]: Pr2c5{ne .} ==> Br1c5 ≠ w, Br1c5 ≠ ew
whip[1]: Br1c5{esw .} ==> Pr2c6 ≠ o, Pr2c6 ≠ ne, Pr2c6 ≠ ns, Pr2c6 ≠ se, Nr1c5 ≠ 1
whip[1]: Pr2c6{sw .} ==> Br1c6 ≠ swn, Br2c6 ≠ nw, Br2c6 ≠ swn, Br2c6 ≠ wne
whip[1]: Br2c5{ne .} ==> Nr2c5 ≠ 3
whip[1]: Pr7c5{ne .} ==> Br7c4 ≠ e, Br7c4 ≠ se, Br7c4 ≠ ew, Br7c4 ≠ esw
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 3
whip[1]: Br6c5{swn .} ==> Nr6c5 ≠ 2
N-single: Nr6c5 = 3
whip[1]: Vr8c4{0 .} ==> Pr8c4 ≠ ns, Pr8c4 ≠ se, Pr9c4 ≠ ne, Br8c3 ≠ esw, Br8c3 ≠ wne, Br8c3 ≠ nes, Br8c4 ≠ w
P-single: Pr9c4 = sw
B-single: Br8c3 = swn
whip[1]: Pr9c4{sw .} ==> Br9c4 ≠ ns, Br9c4 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ w, Br9c3 ≠ s, Br9c3 ≠ e, Br9c3 ≠ n, Br9c3 ≠ o, Br8c4 ≠ s, Br9c3 ≠ nw, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ esw, Br9c3 ≠ swn, Br9c4 ≠ nw, Br9c4 ≠ se
whip[1]: Br9c4{sw .} ==> Pr9c5 ≠ nw, Pr9c5 ≠ ew, Pr10c4 ≠ ew
P-single: Pr10c4 = ns
whip[1]: Pr10c4{ns .} ==> Vr10c4 ≠ 0, Hr10c4 ≠ 1, Br9c3 ≠ nes, Br9c4 ≠ sw, Br10c3 ≠ ne, Br10c3 ≠ ns, Br10c3 ≠ nw, Br10c3 ≠ sw, Br10c4 ≠ swn, Br10c4 ≠ wne, Br10c4 ≠ nes
H-single: Hr10c4 = 0
V-single: Vr10c4 = 1
w[1]-diagonal-3-2-in-{r8c3...r9c4}-non-closed-se-corner ==> Vr9c5 = 1
w[1]-3-in-r10c4-closed-sw-corner ==> Pr10c5 ≠ sw, Pr10c5 ≠ ne
B-single: Br10c4 = esw
B-single: Br9c4 = ew
vertical-line-r9{c4 c5} ==> Ir9c5 = out
no-horizontal-line-{r9 r10}c5 ==> Ir10c5 = out
no-horizontal-line-{r10 r11}c5 ==> Ir11c5 = out
no-vertical-line-r11{c4 c5} ==> Ir11c4 = out
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
vertical-line-r10{c5 c6} ==> Ir10c6 = in
same-colour-in-r10{c6 c7} ==> Vr10c7 = 0
w[1]-diagonal-3-2s-in-{r8c9...r10c7}-non-closed-sw-end ==> Hr11c7 = 1
horizontal-line-{r10 r11}c7 ==> Ir11c7 = out
different-colours-in-r11{c7 c8} ==> Hr11c8 = 1
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
different-colours-in-{r8 r9}c5 ==> Hr9c5 = 1

LOOP[24]: Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Vr7c6-Hr8c5-Hr8c4-Hr8c3-Vr8c3-Hr9c3-Vr9c4-Vr10c4-Hr11c4-Vr10c5-Vr9c5-Hr9c5-Hr9c6-Vr8c7-Vr7c7-Vr6c7-Hr6c7-Vr5c8- ==> Hr5c7 = 0
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1

LOOP[26]: Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Vr7c6-Hr8c5-Hr8c4-Hr8c3-Vr8c3-Hr9c3-Vr9c4-Vr10c4-Hr11c4-Vr10c5-Vr9c5-Hr9c5-Hr9c6-Vr8c7-Vr7c7-Vr6c7-Hr6c7-Vr5c8-Vr4c8- ==> Hr4c7 = 0
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
w[1]-3+diagonal-2-isolated-end-in-{r3c9+r3c8...nw} ==> Hr3c9 = 1, Vr2c10 = 0, Hr3c10 = 0
w[1]-3-in-r3c9-closed-ne-corner ==> Pr4c9 ≠ ne
P-single: Pr4c8 = ns
P-single: Pr3c8 = se
P-single: Pr4c9 = se
w[1]-1-in-r4c11-asymmetric-nw-corner ==> Pr5c12 ≠ sw, Pr5c12 ≠ ew, Pr5c12 ≠ ns, Pr5c12 ≠ ne
P-single: Pr5c12 = se
no-vertical-line-r2{c9 c10} ==> Ir2c10 = in
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = in
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = in
no-vertical-line-r4{c9 c10} ==> Ir4c9 = in
horizontal-line-{r3 r4}c9 ==> Ir3c9 = out
horizontal-line-{r4 r5}c10 ==> Ir5c10 = out
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
same-colour-in-r3{c8 c9} ==> Vr3c9 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
w[1]-3-in-r5c10-hit-by-horiz-line-at-nw ==> Vr5c11 = 1, Hr6c10 = 1
w[1]-diagonal-1-1-in-{r4c11...r3c12}-with-no-sw-outer-sides ==> Hr3c12 = 0, Vr3c13 = 0
w[1]-3-in-r5c10-closed-se-corner ==> Pr5c10 ≠ se
w[1]-3-in-r5c10-closed-ne-corner ==> Pr6c10 ≠ ne
P-single: Pr5c10 = ew
no-vertical-line-r4{c10 c11} ==> Ir4c11 = in
no-horizontal-line-{r4 r5}c11 ==> Ir5c11 = in
no-horizontal-line-{r5 r6}c11 ==> Ir6c11 = in
no-vertical-line-r6{c10 c11} ==> Ir6c10 = in
different-colours-in-{r6 r7}c10 ==> Hr7c10 = 1
different-colours-in-r6{c9 c10} ==> Hr6c10 = 1
different-colours-in-r4{c8 c9} ==> Hr4c9 = 1
whip[1]: Hr10c4{0 .} ==> Pr10c5 ≠ ew
P-single: Pr10c5 = ns
whip[1]: Pr10c5{ns .} ==> Br9c5 ≠ e, Br9c5 ≠ n, Br9c5 ≠ ns, Br9c5 ≠ se, Br9c5 ≠ esw, Br9c5 ≠ swn, Br10c5 ≠ ne, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ se
whip[1]: Br10c5{sw .} ==> Pr10c6 ≠ nw, Pr10c6 ≠ ew, Pr11c5 ≠ se, Pr11c5 ≠ ew
whip[1]: Pr11c5{nw .} ==> Br10c5 ≠ sw, Br11c4 ≠ w, Br11c4 ≠ ne, Br11c4 ≠ sw, Br11c4 ≠ wne, Br11c4 ≠ nes, Br11c5 ≠ ne, Br11c5 ≠ ns, Br11c5 ≠ nw, Br11c5 ≠ swn, Br11c5 ≠ wne, Br11c5 ≠ nes, Br11c4 ≠ o, Br11c4 ≠ s, Br11c5 ≠ n
B-single: Br10c5 = ew
whip[1]: Br10c5{ew .} ==> Pr11c6 ≠ sw, Pr11c6 ≠ ew
whip[1]: Pr11c6{ns .} ==> Br10c6 ≠ ne, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ nes, Br11c6 ≠ s, Br11c6 ≠ nw, Br11c6 ≠ se, Br11c6 ≠ swn, Br11c6 ≠ wne, Br10c6 ≠ n, Br10c6 ≠ e, Br11c6 ≠ o, Br11c6 ≠ e
whip[1]: Br11c6{nes .} ==> Nr11c6 ≠ 0
whip[1]: Br10c6{wne .} ==> Nr10c6 ≠ 1
whip[1]: Br11c4{swn .} ==> Nr11c4 ≠ 0
whip[1]: Pr10c6{se .} ==> Br9c6 ≠ swn, Br9c6 ≠ n
whip[1]: Br9c6{nw .} ==> Nr9c6 ≠ 0, Nr9c6 ≠ 1, Nr9c6 ≠ 3
N-single: Nr9c6 = 2
P-single: Pr9c6 = ew
whip[1]: Pr9c6{ew .} ==> Br8c5 ≠ w, Br8c5 ≠ n, Br8c5 ≠ o, Br8c5 ≠ nw, Br9c5 ≠ ew, Br9c6 ≠ nw
B-single: Br9c6 = ns
B-single: Br9c5 = nw
whip[1]: Br9c6{ns .} ==> Pr10c6 ≠ ns
P-single: Pr10c6 = se
whip[1]: Pr10c6{se .} ==> Br10c6 ≠ ew, Br10c6 ≠ esw
whip[1]: Br10c6{wne .} ==> Pr11c7 ≠ nw
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ sw, Br11c6 ≠ sw, Br11c6 ≠ nes, Br11c7 ≠ se, Br10c7 ≠ ne, Br11c6 ≠ w, Br11c6 ≠ ne
whip[1]: Br11c7{sw .} ==> Pr12c8 ≠ nw
whip[1]: Br9c5{nw .} ==> Nr9c5 ≠ 3, Nr9c5 ≠ 1, Pr9c5 ≠ ns
N-single: Nr9c5 = 2
P-single: Pr9c5 = se
w[1]-1-in-r8c4-symmetric-se-corner ==> Pr8c4 ≠ nw
P-single: Pr8c4 = ew
whip[1]: Pr9c5{se .} ==> Br8c4 ≠ e, Br8c5 ≠ sw, Br8c5 ≠ swn
B-single: Br8c4 = n
whip[1]: Br8c4{n .} ==> Pr8c5 ≠ se
P-single: Pr8c5 = ew
whip[1]: Pr8c5{ew .} ==> Br8c5 ≠ s, Br7c4 ≠ w, Br7c4 ≠ o
B-single: Br8c5 = ns
whip[1]: Br8c5{ns .} ==> Nr8c5 ≠ 3, Nr8c5 ≠ 1, Nr8c5 ≠ 0
N-single: Nr8c5 = 2
whip[1]: Br7c4{sw .} ==> Nr7c4 ≠ 0
whip[1]: Pr8c4{ew .} ==> Br7c3 ≠ ne, Br7c3 ≠ w, Br7c3 ≠ e, Br7c3 ≠ n, Br7c3 ≠ o, Br7c3 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ ew, Br7c3 ≠ esw, Br7c3 ≠ wne, Br7c3 ≠ nes, Br7c4 ≠ sw
B-single: Br7c4 = s
whip[1]: Br7c4{s .} ==> Nr7c4 ≠ 2
N-single: Nr7c4 = 1
whip[1]: Br7c3{swn .} ==> Pr8c3 ≠ o, Pr8c3 ≠ ns, Pr8c3 ≠ sw, Nr7c3 ≠ 0
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ se, Br8c2 ≠ nes, Br8c2 ≠ ne
whip[1]: Vr10c4{1 .} ==> Pr11c4 ≠ ew, Pr11c4 ≠ sw
whip[1]: Pr11c4{ns .} ==> Br10c3 ≠ se, Br11c3 ≠ ne, Br11c3 ≠ ns, Br11c3 ≠ nw, Br11c3 ≠ swn, Br11c3 ≠ wne, Br11c3 ≠ nes, Br11c4 ≠ nw, Br11c4 ≠ se, Br11c4 ≠ swn, Br11c3 ≠ n, Br11c4 ≠ e
B-single: Br10c3 = ew
whip[1]: Br10c3{ew .} ==> Pr11c3 ≠ ew, Pr11c3 ≠ se, Pr10c3 ≠ ew, Pr10c3 ≠ ne
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ se, Br10c2 ≠ swn
whip[1]: Pr11c3{nw .} ==> Br11c2 ≠ ne, Br11c2 ≠ sw
whip[1]: Vr11c4{0 .} ==> Pr11c4 ≠ ns, Pr12c4 ≠ ne, Pr12c4 ≠ ns, Pr12c4 ≠ nw, Br11c3 ≠ e, Br11c3 ≠ se, Br11c3 ≠ ew, Br11c3 ≠ esw, Br11c4 ≠ ew, Br11c4 ≠ esw
P-single: Pr11c4 = ne
whip[1]: Br11c4{ns .} ==> Pr11c5 ≠ ns, Pr12c5 ≠ ne, Pr12c5 ≠ ns, Pr12c5 ≠ nw, Nr11c4 ≠ 3
P-single: Pr11c5 = nw
whip[1]: Pr11c5{nw .} ==> Br11c5 ≠ w, Br11c5 ≠ ew, Br11c5 ≠ sw, Br11c5 ≠ esw
whip[1]: Br11c5{se .} ==> Nr11c5 ≠ 3
whip[1]: Br11c3{sw .} ==> Nr11c3 ≠ 3
whip[1]: Vr10c7{0 .} ==> Pr10c7 ≠ sw, Pr11c7 ≠ ns, Br10c6 ≠ wne, Br10c7 ≠ nw, Br10c7 ≠ ew
P-single: Pr10c7 = ew
B-single: Br10c7 = ns
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ e, Br9c7 ≠ o
whip[1]: Br9c7{se .} ==> Pr10c8 ≠ ns, Pr10c8 ≠ se, Nr9c7 ≠ 0
whip[1]: Pr10c8{ew .} ==> Vr10c8 ≠ 1
whip[1]: Br10c7{ns .} ==> Pr11c8 ≠ ns, Pr11c8 ≠ ne
whip[1]: Pr11c8{sw .} ==> Br11c7 ≠ ew, Br11c7 ≠ sw, Br11c8 ≠ nw, Br11c8 ≠ se, Br11c8 ≠ swn, Br11c8 ≠ wne, Br11c8 ≠ o, Br11c8 ≠ e, Br11c8 ≠ s
whip[1]: Br11c8{nes .} ==> Nr11c8 ≠ 0
whip[1]: Br11c7{nw .} ==> Pr12c7 ≠ ne
whip[1]: Vr11c8{1 .} ==> Pr11c8 ≠ ew, Pr12c8 ≠ o, Pr12c8 ≠ se, Pr12c8 ≠ ew, Pr12c8 ≠ sw, Br11c7 ≠ ns, Br11c7 ≠ nw, Br11c8 ≠ n, Br11c8 ≠ ne, Br11c8 ≠ ns, Br11c8 ≠ nes
P-single: Pr11c7 = ew
P-single: Pr11c8 = sw
B-single: Br11c7 = ne
w[1]-1-in-r12c6-symmetric-ne-corner ==> Pr13c6 ≠ sw, Pr13c6 ≠ ne, Pr13c6 ≠ o
whip[1]: Pr11c7{ew .} ==> Vr11c7 ≠ 1, Hr11c6 ≠ 0, Br10c6 ≠ nw, Br11c6 ≠ ew, Br11c6 ≠ esw
H-single: Hr11c6 = 1
V-single: Vr11c7 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r12{c6 c5}-fwd-diag-2s-3 ==> Vr12c7 = 0, Hr13c6 = 0, Hr12c5 = 1
w[1]-adjacent-1-2-on-pseudo-edge-in-r12{c6 c5}-bkwd-diag-2s-3...r13c6 ==> Hr14c6 = 1
w[1]-3-in-r13c6-closed-se-corner ==> Pr13c6 ≠ se, Pr13c6 ≠ nw
B-single: Br10c6 = swn

LOOP[20]: Vr11c9-Hr11c9-Vr10c10-Hr10c9-Vr9c9-Hr9c9-Vr8c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Vr8c8-Vr9c8-Hr10c7-Hr10c6-Vr10c6-Hr11c6-Hr11c7-Vr11c8- ==> Hr12c8 = 0
no-horizontal-line-{r11 r12}c8 ==> Ir12c8 = in
no-vertical-line-r14{c6 c7} ==> Ir14c6 = in
no-vertical-line-r14{c5 c6} ==> Ir14c5 = in
no-horizontal-line-{r14 r15}c6 ==> Ir15c6 = in
horizontal-line-{r11 r12}c5 ==> Ir12c5 = in
no-horizontal-line-{r12 r13}c6 ==> Ir12c6 = out
no-vertical-line-r12{c6 c7} ==> Ir12c7 = out
no-vertical-line-r11{c5 c6} ==> Ir11c6 = out
same-colour-in-{r11 r12}c6 ==> Hr12c6 = 0
different-colours-in-r12{c7 c8} ==> Hr12c8 = 1
different-colours-in-{r12 r13}c7 ==> Hr13c7 = 1
w[1]-3-in-r13c6-hit-by-horiz-line-at-ne ==> Vr13c6 = 1
w[1]-2-in-r14c5-open-ne-corner ==> Hr15c5 = 1, Vr14c5 = 1, Hr15c4 = 0, Vr15c5 = 0
w[1]-3-in-r13c6-closed-sw-corner ==> Pr13c7 ≠ sw, Pr13c7 ≠ ne, Pr13c7 ≠ o
w[1]-1-in-r12c3-asymmetric-se-corner ==> Pr12c3 ≠ sw, Pr12c3 ≠ ew, Pr12c3 ≠ ns, Pr12c3 ≠ ne
P-single: Pr11c2 = se
vertical-line-r14{c4 c5} ==> Ir14c4 = out
no-horizontal-line-{r14 r15}c4 ==> Ir15c4 = out
no-vertical-line-r15{c4 c5} ==> Ir15c5 = out
no-horizontal-line-{r13 r14}c5 ==> Ir13c5 = in
same-colour-in-{r12 r13}c5 ==> Hr13c5 = 0
w[1]-1-in-r14c6-asymmetric-nw-corner ==> Pr15c7 ≠ sw, Pr15c7 ≠ ew, Pr15c7 ≠ ns, Pr15c7 ≠ ne
same-colour-in-{r15 r16}c5 ==> Hr16c5 = 0
different-colours-in-r15{c5 c6} ==> Hr15c6 = 1
same-colour-in-{r15 r16}c4 ==> Hr16c4 = 0
same-colour-in-{r11 r12}c7 ==> Hr12c7 = 0
different-colours-in-r12{c5 c6} ==> Hr12c6 = 1
different-colours-in-r15{c6 c7} ==> Hr15c7 = 1
different-colours-in-{r15 r16}c6 ==> Hr16c6 = 1
different-colours-in-r12{c8 c9} ==> Hr12c9 = 1
whip[1]: Hr11c6{1 .} ==> Pr11c6 ≠ ns
P-single: Pr11c6 = ne
whip[1]: Pr11c6{ne .} ==> Br11c5 ≠ e, Br11c5 ≠ se
whip[1]: Br11c5{s .} ==> Pr12c6 ≠ ns, Nr11c5 ≠ 2, Pr12c6 ≠ nw
whip[1]: Pr12c6{sw .} ==> Br12c5 ≠ sw, Br12c6 ≠ e, Br12c6 ≠ s
whip[1]: Br12c6{w .} ==> Pr13c7 ≠ ns, Pr13c7 ≠ nw, Pr12c6 ≠ se, Pr12c7 ≠ sw, Pr13c6 ≠ ew, Pr13c7 ≠ ew
P-single: Pr13c7 = se
P-single: Pr13c6 = ns
P-single: Pr12c7 = o
whip[1]: Pr13c7{se .} ==> Br13c7 ≠ w, Br13c7 ≠ s, Br13c7 ≠ e, Br13c7 ≠ n, Br13c7 ≠ o, Br12c7 ≠ w, Br12c7 ≠ e, Br12c7 ≠ n, Br12c7 ≠ o, Br12c7 ≠ ne, Br12c7 ≠ nw, Br12c7 ≠ ew, Br12c7 ≠ sw, Br12c7 ≠ esw, Br12c7 ≠ swn, Br12c7 ≠ wne, Br13c6 ≠ swn, Br13c6 ≠ wne, Br13c6 ≠ nes, Br13c7 ≠ ne, Br13c7 ≠ ns, Br13c7 ≠ se, Br13c7 ≠ ew, Br13c7 ≠ sw, Br13c7 ≠ esw, Br13c7 ≠ nes
B-single: Br13c6 = esw
whip[1]: Br13c6{esw .} ==> Pr14c7 ≠ sw, Pr14c7 ≠ ew, Pr14c7 ≠ se, Pr14c7 ≠ ns, Pr14c7 ≠ ne, Pr14c7 ≠ o, Pr14c6 ≠ ew, Pr14c6 ≠ ns
P-single: Pr15c5 = ne
P-single: Pr14c6 = ne
P-single: Pr14c7 = nw
w[1]-1-in-r14c6-asymmetric-ne-corner ==> Pr15c6 ≠ ew, Pr15c6 ≠ ns
whip[1]: Pr15c5{ne .} ==> Br15c5 ≠ o, Br15c4 ≠ n, Br14c4 ≠ n, Br14c4 ≠ o, Br14c4 ≠ s, Br14c4 ≠ w, Br14c4 ≠ ns, Br14c4 ≠ nw, Br14c4 ≠ se, Br14c4 ≠ sw, Br14c4 ≠ esw, Br14c4 ≠ swn, Br14c4 ≠ nes, Br14c5 ≠ ne, Br14c5 ≠ ns, Br14c5 ≠ nw, Br14c5 ≠ se, Br14c5 ≠ ew, Br15c4 ≠ e, Br15c4 ≠ ne, Br15c4 ≠ ns, Br15c4 ≠ nw, Br15c4 ≠ se, Br15c4 ≠ ew, Br15c4 ≠ esw, Br15c4 ≠ swn, Br15c4 ≠ wne, Br15c4 ≠ nes, Br15c5 ≠ e, Br15c5 ≠ s, Br15c5 ≠ w, Br15c5 ≠ nw, Br15c5 ≠ se, Br15c5 ≠ ew, Br15c5 ≠ sw, Br15c5 ≠ esw, Br15c5 ≠ swn, Br15c5 ≠ wne
B-single: Br14c5 = sw
whip[1]: Br14c5{sw .} ==> Pr15c6 ≠ ne, Pr14c5 ≠ ew
P-single: Pr14c5 = ns
P-single: Pr15c6 = sw
whip[1]: Pr14c5{ns .} ==> Vr13c5 ≠ 0, Hr14c4 ≠ 1, Br13c4 ≠ ns, Br13c4 ≠ nw, Br13c4 ≠ se, Br13c4 ≠ sw, Br13c5 ≠ ne, Br13c5 ≠ ns, Br13c5 ≠ se, Br13c5 ≠ sw, Br14c4 ≠ ne, Br14c4 ≠ wne
H-single: Hr14c4 = 0
V-single: Vr13c5 = 1
vertical-line-r13{c4 c5} ==> Ir13c4 = out
whip[1]: Hr14c4{0 .} ==> Pr14c4 ≠ se, Pr14c4 ≠ ew
whip[1]: Vr13c5{1 .} ==> Pr13c5 ≠ ew
whip[1]: Pr13c5{sw .} ==> Br12c4 ≠ nw, Br12c4 ≠ se, Br12c4 ≠ esw, Br12c4 ≠ nes, Br12c5 ≠ se, Br13c5 ≠ nw, Br12c4 ≠ o, Br12c4 ≠ n, Br12c4 ≠ w, Br12c5 ≠ ns
B-single: Br13c5 = ew
whip[1]: Br12c4{wne .} ==> Nr12c4 ≠ 0
whip[1]: Br14c4{ew .} ==> Pr15c4 ≠ ne, Pr15c4 ≠ se, Pr15c4 ≠ ew, Nr14c4 ≠ 0, Nr14c4 ≠ 3
whip[1]: Pr15c6{sw .} ==> Br15c6 ≠ ns, Br15c6 ≠ ne, Br15c6 ≠ s, Br15c6 ≠ e, Br15c6 ≠ n, Br15c6 ≠ o, Br15c5 ≠ ns, Br15c5 ≠ n, Br14c6 ≠ w, Br14c6 ≠ s, Br15c6 ≠ nw, Br15c6 ≠ se, Br15c6 ≠ swn, Br15c6 ≠ wne, Br15c6 ≠ nes
whip[1]: Br15c6{esw .} ==> Pr16c6 ≠ o, Pr16c6 ≠ ew, Pr15c7 ≠ nw, Nr15c6 ≠ 0
whip[1]: Pr15c7{se .} ==> Br14c7 ≠ nw, Br14c7 ≠ ew, Br14c7 ≠ sw, Br14c7 ≠ esw, Br14c7 ≠ swn, Br14c7 ≠ wne, Br15c7 ≠ ne, Br15c7 ≠ ns, Br15c7 ≠ ew, Br15c7 ≠ sw, Br15c7 ≠ esw, Br15c7 ≠ nes, Br14c6 ≠ e, Br14c7 ≠ w, Br15c7 ≠ n, Br15c7 ≠ w
B-single: Br14c6 = n
whip[1]: Br15c5{nes .} ==> Pr16c5 ≠ ne, Pr16c5 ≠ nw, Nr15c5 ≠ 0, Nr15c5 ≠ 1
whip[1]: Br15c4{sw .} ==> Nr15c4 ≠ 3
whip[1]: Pr14c7{nw .} ==> Br14c7 ≠ n, Br13c7 ≠ swn, Br14c7 ≠ ne, Br14c7 ≠ ns, Br14c7 ≠ nes
whip[1]: Br14c7{se .} ==> Pr14c8 ≠ nw, Pr14c8 ≠ ew, Pr14c8 ≠ sw, Nr14c7 ≠ 3
whip[1]: Br13c7{wne .} ==> Pr13c8 ≠ o, Pr13c8 ≠ ne, Pr13c8 ≠ ns, Pr13c8 ≠ se, Nr13c7 ≠ 0, Nr13c7 ≠ 1
whip[1]: Pr13c8{sw .} ==> Br12c8 ≠ sw, Br12c8 ≠ esw, Br12c8 ≠ swn, Br13c8 ≠ nw, Br13c8 ≠ swn, Br13c8 ≠ wne
whip[1]: Br12c7{nes .} ==> Nr12c7 ≠ 0
whip[1]: Pr13c6{ns .} ==> Br12c6 ≠ n, Br12c5 ≠ nw
B-single: Br12c6 = w
whip[1]: Br12c6{w .} ==> Pr12c6 ≠ ew
w[1]-3-in-r14c3-symmetric-ne-corner ==> Vr14c4 = 1, Hr14c3 = 1
w[1]-2-in-r13c4-open-sw-corner ==> Hr13c4 = 1, Vr12c5 = 0
w[1]-3-in-r14c3-closed-ne-corner ==> Pr15c3 ≠ sw, Pr15c3 ≠ ne, Pr15c3 ≠ o
P-single: Pr13c5 = sw
P-single: Pr12c6 = sw
no-vertical-line-r12{c4 c5} ==> Ir12c4 = in
no-vertical-line-r13{c3 c4} ==> Ir13c3 = out
horizontal-line-{r13 r14}c3 ==> Ir14c3 = in
different-colours-in-{r11 r12}c4 ==> Hr12c4 = 1
whip[1]: Vr14c4{1 .} ==> Pr14c4 ≠ o, Pr15c4 ≠ o, Pr15c4 ≠ sw, Br14c3 ≠ swn, Br14c4 ≠ e
P-single: Pr14c4 = sw
B-single: Br14c4 = ew
whip[1]: Pr14c4{sw .} ==> Br13c3 ≠ ne, Br13c3 ≠ nw, Br13c3 ≠ se, Br13c3 ≠ ew, Br13c4 ≠ ew, Br14c3 ≠ esw
B-single: Br13c4 = ne
whip[1]: Br13c4{ne .} ==> Pr13c4 ≠ ns
whip[1]: Pr13c4{ew .} ==> Br12c4 ≠ ew, Br12c4 ≠ wne, Br12c3 ≠ n, Br12c3 ≠ w, Br12c4 ≠ e, Br12c4 ≠ ne
whip[1]: Br12c4{swn .} ==> Pr12c5 ≠ sw
P-single: Pr12c5 = ew
whip[1]: Pr12c5{ew .} ==> Br12c4 ≠ s, Br11c5 ≠ o, Br11c4 ≠ n, Br12c4 ≠ sw, Br12c5 ≠ ew
B-single: Br12c5 = ne
B-single: Br11c4 = ns
B-single: Br11c5 = s
whip[1]: Br11c4{ns .} ==> Nr11c4 ≠ 1, Pr12c4 ≠ o, Pr12c4 ≠ sw
N-single: Nr11c4 = 2
w[1]-1-in-r12c3-asymmetric-ne-corner ==> Pr13c3 ≠ ew, Pr13c3 ≠ ns
whip[1]: Pr13c3{sw .} ==> Br12c2 ≠ nw, Br12c2 ≠ se, Br12c2 ≠ esw, Br12c2 ≠ nes, Br13c2 ≠ nw, Br13c2 ≠ se, Br13c2 ≠ ew, Br13c2 ≠ esw, Br13c2 ≠ swn, Br12c2 ≠ o, Br12c2 ≠ n, Br12c2 ≠ w, Br12c3 ≠ s, Br13c2 ≠ n, Br13c2 ≠ e, Br13c2 ≠ ns
B-single: Br12c3 = e
whip[1]: Br12c3{e .} ==> Pr13c3 ≠ ne, Vr12c4 ≠ 0, Vr12c3 ≠ 1, Hr13c3 ≠ 1, Hr12c3 ≠ 1, Pr12c3 ≠ se, Pr12c4 ≠ ew, Pr13c4 ≠ ew
H-single: Hr12c3 = 0
H-single: Hr13c3 = 0
V-single: Vr12c3 = 0
V-single: Vr12c4 = 1
w[1]-2-in-r13c3-open-ne-corner ==> Vr13c3 = 1, Hr14c2 = 0, Vr14c3 = 0
w[1]-3-in-r14c3-hit-by-verti-line-at-nw ==> Hr15c3 = 1
P-single: Pr14c3 = ne
P-single: Pr13c4 = ne
P-single: Pr12c4 = se
P-single: Pr12c3 = o
P-single: Pr13c3 = sw

LOOP[44]: Hr15c9-Vr14c9-Hr14c8-Vr14c8-Hr15c7-Vr15c7-Hr16c6-Vr15c6-Hr15c5-Vr14c5-Vr13c5-Hr13c4-Vr12c4-Hr12c4-Hr12c5-Vr12c6-Vr13c6-Hr14c6-Vr13c7-Hr13c7-Vr12c8-Vr11c8-Hr11c7-Hr11c6-Vr10c6-Hr10c6-Hr10c7-Vr9c8-Vr8c8-Vr7c8-Hr7c8-Vr7c9-Hr8c9-Vr8c10-Hr9c9-Vr9c9-Hr10c9-Vr10c10-Hr11c9-Vr11c9-Vr12c9-Hr13c9-Vr13c10- ==> Vr14c10 = 0
no-vertical-line-r14{c9 c10} ==> Ir14c10 = in
no-vertical-line-r15{c3 c4} ==> Ir15c3 = out
no-vertical-line-r14{c2 c3} ==> Ir14c2 = in
no-horizontal-line-{r13 r14}c2 ==> Ir13c2 = in
vertical-line-r12{c3 c4} ==> Ir12c3 = out
no-vertical-line-r12{c2 c3} ==> Ir12c2 = out
different-colours-in-{r12 r13}c2 ==> Hr13c2 = 1
same-colour-in-{r11 r12}c2 ==> Hr12c2 = 0
w[1]-2-in-r11c2-open-se-corner ==> Vr11c2 = 1, Hr11c1 = 0
no-horizontal-line-{r10 r11}c1 ==> Ir11c1 = in
different-colours-in-r11{c0 c1} ==> Hr11c1 = 1
same-colour-in-{r15 r16}c3 ==> Hr16c3 = 0
different-colours-in-{r13 r14}c10 ==> Hr14c10 = 1
whip[1]: Hr12c3{0 .} ==> Br11c3 ≠ s, Br11c3 ≠ sw
whip[1]: Br11c3{w .} ==> Nr11c3 ≠ 2
whip[1]: Hr13c3{0 .} ==> Br13c3 ≠ ns
B-single: Br13c3 = sw
whip[1]: Vr12c3{0 .} ==> Br12c2 ≠ e, Br12c2 ≠ ne, Br12c2 ≠ ew, Br12c2 ≠ wne
whip[1]: Br12c2{swn .} ==> Pr13c2 ≠ o, Pr13c2 ≠ ns, Pr13c2 ≠ nw, Pr13c2 ≠ sw, Nr12c2 ≠ 0
whip[1]: Pr13c2{ew .} ==> Br12c1 ≠ se, Br12c1 ≠ esw, Br12c1 ≠ nes, Br13c1 ≠ wne, Br13c1 ≠ nes, Br13c2 ≠ sw, Br13c1 ≠ ne, Br13c2 ≠ o, Br13c2 ≠ s, Br13c2 ≠ w
whip[1]: Br13c2{nes .} ==> Pr14c2 ≠ ne, Nr13c2 ≠ 0, Nr13c2 ≠ 1
whip[1]: Vr12c4{1 .} ==> Br12c4 ≠ ns
B-single: Br12c4 = swn
whip[1]: Br12c4{swn .} ==> Nr12c4 ≠ 2, Nr12c4 ≠ 1
N-single: Nr12c4 = 3
whip[1]: Hr14c2{0 .} ==> Pr14c2 ≠ se, Pr14c2 ≠ ew, Br13c2 ≠ nes, Br14c2 ≠ n, Br14c2 ≠ ne, Br14c2 ≠ ns, Br14c2 ≠ nw, Br14c2 ≠ swn, Br14c2 ≠ wne, Br14c2 ≠ nes
whip[1]: Vr14c3{0 .} ==> Pr15c3 ≠ ns, Pr15c3 ≠ nw, Br14c2 ≠ e, Br14c2 ≠ se, Br14c2 ≠ ew, Br14c2 ≠ esw, Br14c3 ≠ wne
B-single: Br14c3 = nes
whip[1]: Br14c3{nes .} ==> Pr15c4 ≠ ns
P-single: Pr15c4 = nw
whip[1]: Pr15c4{nw .} ==> Br15c3 ≠ s, Br15c3 ≠ e, Br15c3 ≠ o, Br15c3 ≠ w, Br15c3 ≠ ne, Br15c3 ≠ se, Br15c3 ≠ ew, Br15c3 ≠ sw, Br15c3 ≠ esw, Br15c3 ≠ wne, Br15c3 ≠ nes, Br15c4 ≠ w, Br15c4 ≠ sw
whip[1]: Br15c4{s .} ==> Pr16c4 ≠ ne, Nr15c4 ≠ 2, Pr16c4 ≠ nw
whip[1]: Br15c3{swn .} ==> Nr15c3 ≠ 0
whip[1]: Br14c2{sw .} ==> Nr14c2 ≠ 3
whip[1]: Pr15c3{ew .} ==> Br15c2 ≠ sw, Br15c2 ≠ wne, Br15c2 ≠ nes, Br15c2 ≠ o, Br15c2 ≠ s, Br15c2 ≠ w, Br15c2 ≠ ne
whip[1]: Br15c2{swn .} ==> Nr15c2 ≠ 0
whip[1]: Pr12c3{o .} ==> Br11c2 ≠ ns, Br11c2 ≠ se, Br11c2 ≠ ew, Br11c3 ≠ w, Br12c2 ≠ ns, Br12c2 ≠ swn
B-single: Br11c3 = o
B-single: Br11c2 = nw
whip[1]: Br11c3{o .} ==> Pr11c3 ≠ ns, Nr11c3 ≠ 1
N-single: Nr11c3 = 0
P-single: Pr11c3 = nw
whip[1]: Pr11c3{nw .} ==> Br10c2 ≠ wne
whip[1]: Br11c2{nw .} ==> Pr12c2 ≠ ew
whip[1]: Pr12c2{nw .} ==> Br11c1 ≠ ns, Br11c1 ≠ nw, Br11c1 ≠ sw, Br12c1 ≠ w, Br12c1 ≠ ne, Br12c1 ≠ sw, Br12c1 ≠ wne, Br12c1 ≠ o, Br12c1 ≠ s
whip[1]: Br12c1{swn .} ==> Nr12c1 ≠ 0
whip[1]: Br12c2{sw .} ==> Nr12c2 ≠ 3
whip[1]: Vr14c10{0 .} ==> Pr14c10 ≠ ns, Pr14c10 ≠ sw, Pr15c10 ≠ ne, Pr15c10 ≠ ns, Pr15c10 ≠ nw, Br14c9 ≠ e, Br14c9 ≠ ne, Br14c9 ≠ se, Br14c9 ≠ ew, Br14c9 ≠ esw, Br14c9 ≠ wne, Br14c9 ≠ nes, Br14c10 ≠ w, Br14c10 ≠ nw, Br14c10 ≠ ew, Br14c10 ≠ sw, Br14c10 ≠ esw, Br14c10 ≠ swn, Br14c10 ≠ wne
whip[1]: Pr14c10{ew .} ==> Br13c9 ≠ nw, Br13c9 ≠ se, Br13c10 ≠ nw, Br13c10 ≠ ew, Br13c10 ≠ wne, Br14c10 ≠ se, Br13c10 ≠ o, Br13c10 ≠ n, Br13c10 ≠ e, Br13c10 ≠ w, Br13c10 ≠ ne, Br14c10 ≠ o, Br14c10 ≠ e, Br14c10 ≠ s
whip[1]: Br14c10{nes .} ==> Pr14c11 ≠ o, Pr14c11 ≠ ne, Pr14c11 ≠ ns, Pr14c11 ≠ se, Nr14c10 ≠ 0
whip[1]: Pr14c11{sw .} ==> Br14c11 ≠ nw, Br14c11 ≠ swn, Br14c11 ≠ wne
whip[1]: Br13c10{nes .} ==> Nr13c10 ≠ 0
whip[1]: Hr11c1{0 .} ==> Pr11c1 ≠ ne, Br10c1 ≠ s, Br10c1 ≠ ns, Br10c1 ≠ se, Br10c1 ≠ sw, Br10c1 ≠ esw, Br10c1 ≠ swn, Br10c1 ≠ nes, Br11c1 ≠ ne
whip[1]: Vr11c1{1 .} ==> Br11c0 ≠ o, Pr11c1 ≠ o, Pr12c1 ≠ se, Br11c1 ≠ se
P-single: Pr12c2 = ns
P-single: Pr12c1 = ns
P-single: Pr11c1 = ns
B-single: Br11c1 = ew
B-single: Br11c0 = e
whip[1]: Pr12c2{ns .} ==> Br12c1 ≠ n, Vr12c2 ≠ 0, Hr12c1 ≠ 1, Br12c1 ≠ ns, Br12c1 ≠ nw, Br12c1 ≠ swn, Br12c2 ≠ s
H-single: Hr12c1 = 0
V-single: Vr12c2 = 1
w[1]-3-in-r14c1-isolated-at-ne-corner ==> Vr14c2 = 1, Hr14c1 = 1
w[1]-3-in-r14c1-closed-ne-corner ==> Pr15c1 ≠ ne, Pr15c1 ≠ o
B-single: Br12c2 = sw
vertical-line-r14{c1 c2} ==> Ir14c1 = out
horizontal-line-{r13 r14}c1 ==> Ir13c1 = in
no-horizontal-line-{r12 r13}c1 ==> Ir12c1 = in
different-colours-in-r12{c0 c1} ==> Hr12c1 = 1
different-colours-in-r13{c0 c1} ==> Hr13c1 = 1
w[1]-3-in-r14c1-hit-by-verti-line-at-nw ==> Hr15c1 = 1
w[0]-adjacent-3-in-r14c3-nolines-west ==> Vr15c3 = 1
w[1]-3-in-r14c1-closed-se-corner ==> Pr14c1 ≠ se, Pr14c1 ≠ o
vertical-line-r15{c2 c3} ==> Ir15c2 = in
no-vertical-line-r15{c1 c2} ==> Ir15c1 = in
different-colours-in-{r15 r16}c1 ==> Hr16c1 = 1
different-colours-in-r15{c0 c1} ==> Hr15c1 = 1
different-colours-in-{r15 r16}c2 ==> Hr16c2 = 1

LOOP[24]: Vr9c2-Hr10c2-Vr10c3-Hr11c2-Vr11c2-Vr12c2-Hr13c2-Vr13c3-Hr14c3-Vr14c4-Hr15c3-Vr15c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Vr12c1-Vr11c1-Vr10c1-Vr9c1- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
different-colours-in-r8{c1 c2} ==> Hr8c2 = 1
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1
whip[1]: Vr12c2{1 .} ==> Pr13c2 ≠ se, Pr13c2 ≠ ew
P-single: Pr13c2 = ne
whip[1]: Pr13c2{ne .} ==> Br13c1 ≠ n, Br13c1 ≠ e, Br13c1 ≠ ns, Br13c1 ≠ nw, Br13c1 ≠ se, Br13c1 ≠ ew, Br13c1 ≠ esw, Br13c1 ≠ swn, Br13c2 ≠ wne
B-single: Br13c2 = ne
whip[1]: Br13c2{ne .} ==> Nr13c2 ≠ 3, Pr14c2 ≠ nw, Pr14c2 ≠ ns
N-single: Nr13c2 = 2
whip[1]: Pr14c2{sw .} ==> Br14c1 ≠ esw, Br14c1 ≠ swn
whip[1]: Br14c1{nes .} ==> Pr14c1 ≠ ns, Pr14c2 ≠ o, Pr15c2 ≠ o, Pr15c2 ≠ se, Pr15c2 ≠ ew, Pr15c2 ≠ sw
P-single: Pr14c2 = sw
P-single: Pr14c1 = ne
whip[1]: Pr14c2{sw .} ==> Br14c2 ≠ s, Br14c2 ≠ o, Br13c1 ≠ w, Br13c1 ≠ o
whip[1]: Br13c1{sw .} ==> Pr13c1 ≠ ne, Pr13c1 ≠ se, Nr13c1 ≠ 0, Nr13c1 ≠ 3
whip[1]: Br14c2{sw .} ==> Nr14c2 ≠ 0
whip[1]: Pr14c1{ne .} ==> Br13c1 ≠ s, Br14c1 ≠ wne
B-single: Br14c1 = nes
B-single: Br13c1 = sw
whip[1]: Br14c1{nes .} ==> Pr15c2 ≠ ns, Pr15c2 ≠ ne, Pr15c1 ≠ ns
P-single: Pr15c1 = se
P-single: Pr15c2 = nw
whip[1]: Pr15c1{se .} ==> Br15c1 ≠ e, Br15c1 ≠ n, Br15c1 ≠ o, Br15c1 ≠ ne, Br15c1 ≠ sw, Br15c1 ≠ esw
B-single: Br15c1 = swn
whip[1]: Br15c1{swn .} ==> Nr15c1 ≠ 2, Nr15c1 ≠ 1, Nr15c1 ≠ 0, Pr16c2 ≠ nw, Pr16c2 ≠ ne, Pr16c2 ≠ o, Pr16c1 ≠ o
N-single: Nr15c1 = 3
P-single: Pr16c1 = ne
P-single: Pr16c2 = ew
whip[1]: Pr16c1{ne .} ==> Br16c1 ≠ o
B-single: Br16c1 = n
whip[1]: Pr16c2{ew .} ==> Br15c2 ≠ e, Br15c2 ≠ n, Br16c2 ≠ o, Br15c2 ≠ nw, Br15c2 ≠ ew, Br15c2 ≠ esw, Br15c2 ≠ swn
B-single: Br16c2 = n
whip[1]: Br16c2{n .} ==> Pr16c3 ≠ o, Pr16c3 ≠ ne
whip[1]: Pr16c3{ew .} ==> Br15c3 ≠ swn, Br15c3 ≠ n
whip[1]: Br15c3{nw .} ==> Nr15c3 ≠ 1, Nr15c3 ≠ 3
N-single: Nr15c3 = 2
whip[1]: Br15c2{se .} ==> Nr15c2 ≠ 1, Nr15c2 ≠ 3
N-single: Nr15c2 = 2
P-single: Pr16c3 = nw
whip[1]: Pr16c3{nw .} ==> Br16c3 ≠ n, Br15c2 ≠ ns, Br15c3 ≠ ns
B-single: Br15c3 = nw
B-single: Br15c2 = se
B-single: Br16c3 = o
whip[1]: Br15c3{nw .} ==> Pr15c3 ≠ ew, Pr16c4 ≠ ew
P-single: Pr16c4 = o
P-single: Pr15c3 = se
whip[1]: Pr16c4{o .} ==> Br16c4 ≠ n, Br15c4 ≠ s
B-single: Br15c4 = o
B-single: Br16c4 = o
whip[1]: Br15c4{o .} ==> Pr16c5 ≠ ew, Nr15c4 ≠ 1
N-single: Nr15c4 = 0
P-single: Pr16c5 = o
whip[1]: Pr16c5{o .} ==> Br16c5 ≠ n, Br15c5 ≠ nes
B-single: Br15c5 = ne
B-single: Br16c5 = o
whip[1]: Br15c5{ne .} ==> Nr15c5 ≠ 3, Pr16c6 ≠ nw
N-single: Nr15c5 = 2
P-single: Pr16c6 = ne
whip[1]: Pr16c6{ne .} ==> Br16c6 ≠ o, Br15c6 ≠ w, Br15c6 ≠ ew
B-single: Br16c6 = n
whip[1]: Br16c6{n .} ==> Pr16c7 ≠ o, Pr16c7 ≠ ne
whip[1]: Pr16c7{ew .} ==> Br15c7 ≠ swn, Br15c7 ≠ o, Br15c7 ≠ e
whip[1]: Br15c7{wne .} ==> Nr15c7 ≠ 0
whip[1]: Br15c6{esw .} ==> Nr15c6 ≠ 1
whip[1]: Pr15c3{se .} ==> Br14c2 ≠ sw
B-single: Br14c2 = w
whip[1]: Br14c2{w .} ==> Nr14c2 ≠ 2
N-single: Nr14c2 = 1
whip[1]: Br13c1{sw .} ==> Nr13c1 ≠ 1, Pr13c1 ≠ o
N-single: Nr13c1 = 2
P-single: Pr13c1 = ns
whip[1]: Pr13c1{ns .} ==> Br12c1 ≠ e
B-single: Br12c1 = ew
whip[1]: Br12c1{ew .} ==> Nr12c1 ≠ 3, Nr12c1 ≠ 1
N-single: Nr12c1 = 2
whip[1]: Br12c2{sw .} ==> Nr12c2 ≠ 1
N-single: Nr12c2 = 2
whip[1]: Vr12c1{1 .} ==> Br12c0 ≠ o
B-single: Br12c0 = e
whip[1]: Vr13c1{1 .} ==> Br13c0 ≠ o
B-single: Br13c0 = e
whip[1]: Vr14c1{0 .} ==> Br14c0 ≠ e
B-single: Br14c0 = o
whip[1]: Vr15c1{1 .} ==> Br15c0 ≠ o
B-single: Br15c0 = e
whip[1]: Hr9c1{0 .} ==> Pr9c1 ≠ ne, Pr9c1 ≠ se, Pr9c2 ≠ ew, Pr9c2 ≠ sw, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ esw, Br8c1 ≠ swn, Br9c1 ≠ n, Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ swn, Br9c1 ≠ wne, Br9c1 ≠ nes
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 3
whip[1]: Pr9c2{ns .} ==> Br8c1 ≠ nw, Br8c2 ≠ ns, Br8c1 ≠ n, Br8c2 ≠ n
whip[1]: Br8c2{esw .} ==> Pr8c2 ≠ ew, Pr8c3 ≠ ew
P-single: Pr8c2 = ns
whip[1]: Pr8c2{ns .} ==> Br7c1 ≠ ns, Br7c1 ≠ sw, Br7c2 ≠ ns
whip[1]: Br7c2{ew .} ==> Pr7c2 ≠ ew
whip[1]: Pr7c2{se .} ==> Br6c1 ≠ sw, Br6c1 ≠ esw, Br6c1 ≠ swn, Br6c2 ≠ sw, Br6c2 ≠ swn, Br7c1 ≠ ne, Br6c2 ≠ o, Br6c2 ≠ n
B-single: Br7c1 = ew
whip[1]: Br7c1{ew .} ==> Pr8c1 ≠ se, Pr7c1 ≠ ne
P-single: Pr7c1 = ns
P-single: Pr8c1 = ns
whip[1]: Pr8c1{ns .} ==> Br8c1 ≠ e
B-single: Br8c1 = ew
whip[1]: Br8c1{ew .} ==> Nr8c1 ≠ 1, Pr9c1 ≠ o
N-single: Nr8c1 = 2
P-single: Pr9c1 = ns
whip[1]: Pr9c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ o, Br9c1 ≠ s, Br9c1 ≠ se
whip[1]: Br9c1{esw .} ==> Pr10c1 ≠ o, Pr10c1 ≠ se, Nr9c1 ≠ 0
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ nw, Br10c1 ≠ wne, Br10c1 ≠ o, Br10c1 ≠ e
whip[1]: Br10c1{ew .} ==> Nr10c1 ≠ 0, Nr10c1 ≠ 3
whip[1]: Br6c2{nw .} ==> Nr6c2 ≠ 0, Nr6c2 ≠ 3
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Pr11c1{ns .} ==> Br10c1 ≠ n, Br10c1 ≠ ne
whip[1]: Br10c1{ew .} ==> Pr10c1 ≠ ne, Pr10c2 ≠ ew
P-single: Pr10c1 = ns
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ sw, Br9c1 ≠ esw
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 3
whip[1]: Pr10c2{ns .} ==> Br9c1 ≠ w, Br9c2 ≠ ne, Br9c2 ≠ ns
B-single: Br9c1 = ew
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 1, Pr9c2 ≠ ne
N-single: Nr9c1 = 2
P-single: Pr9c2 = ns
whip[1]: Pr9c2{ns .} ==> Br8c2 ≠ sw, Br8c2 ≠ esw
whip[1]: Br8c2{ew .} ==> Pr9c3 ≠ nw, Pr9c3 ≠ ew, Nr8c2 ≠ 3
whip[1]: Br11c5{s .} ==> Nr11c5 ≠ 0
N-single: Nr11c5 = 1
whip[1]: Br14c4{ew .} ==> Nr14c4 ≠ 1
N-single: Nr14c4 = 2
whip[1]: Pr12c6{sw .} ==> Br11c6 ≠ ns
B-single: Br11c6 = n
whip[1]: Br11c6{n .} ==> Nr11c6 ≠ 2, Nr11c6 ≠ 3
N-single: Nr11c6 = 1
whip[1]: Pr12c7{o .} ==> Br12c7 ≠ ns, Br12c7 ≠ nes
whip[1]: Br12c7{se .} ==> Nr12c7 ≠ 3
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 2
N-single: Nr10c6 = 3
whip[1]: Hr12c8{0 .} ==> Pr12c8 ≠ ne, Pr12c9 ≠ nw, Pr12c9 ≠ ew, Br11c8 ≠ sw, Br11c8 ≠ esw, Br12c8 ≠ n, Br12c8 ≠ ne, Br12c8 ≠ ns, Br12c8 ≠ nw, Br12c8 ≠ wne, Br12c8 ≠ nes
P-single: Pr12c8 = ns
whip[1]: Pr12c8{ns .} ==> Br12c8 ≠ e, Br12c8 ≠ o, Br12c7 ≠ s, Br12c8 ≠ s, Br12c8 ≠ se
B-single: Br12c7 = se
whip[1]: Br12c7{se .} ==> Nr12c7 ≠ 1, Pr13c8 ≠ sw, Pr13c8 ≠ ew
N-single: Nr12c7 = 2
P-single: Pr13c8 = nw
whip[1]: Pr13c8{nw .} ==> Br13c8 ≠ n, Br13c7 ≠ wne, Br13c8 ≠ w, Br13c8 ≠ ne, Br13c8 ≠ ns, Br13c8 ≠ ew, Br13c8 ≠ sw, Br13c8 ≠ esw, Br13c8 ≠ nes
B-single: Br13c7 = nw
whip[1]: Br13c7{nw .} ==> Nr13c7 ≠ 3, Pr14c8 ≠ ns, Pr14c8 ≠ ne
N-single: Nr13c7 = 2
whip[1]: Pr14c8{se .} ==> Br14c8 ≠ esw, Br14c8 ≠ nes
whip[1]: Br14c8{wne .} ==> Pr14c8 ≠ o, Pr14c9 ≠ o, Pr14c9 ≠ ns, Pr14c9 ≠ se, Pr15c8 ≠ se, Pr15c8 ≠ ew
P-single: Pr14c8 = se
whip[1]: Pr14c8{se .} ==> Br14c7 ≠ s, Br14c7 ≠ o, Br13c8 ≠ e, Br13c8 ≠ o
whip[1]: Br13c8{se .} ==> Pr13c9 ≠ ew, Pr13c9 ≠ sw, Nr13c8 ≠ 0, Nr13c8 ≠ 3
whip[1]: Pr13c9{ns .} ==> Br12c8 ≠ w, Br12c9 ≠ s, Br12c9 ≠ ne, Br12c9 ≠ ns, Br12c9 ≠ se, Br12c9 ≠ nes, Br12c9 ≠ o, Br12c9 ≠ n, Br12c9 ≠ e
B-single: Br12c8 = ew
whip[1]: Br12c8{ew .} ==> Nr12c8 ≠ 3, Nr12c8 ≠ 1, Nr12c8 ≠ 0
N-single: Nr12c8 = 2
whip[1]: Br12c9{wne .} ==> Nr12c9 ≠ 0
whip[1]: Br14c7{se .} ==> Nr14c7 ≠ 0
whip[1]: Pr15c8{nw .} ==> Hr15c8 ≠ 1, Br14c8 ≠ swn, Br15c7 ≠ wne, Br15c7 ≠ s
B-single: Br14c8 = wne
whip[1]: Br14c8{wne .} ==> Pr15c9 ≠ sw, Pr15c9 ≠ ew, Pr14c9 ≠ ew, Pr14c9 ≠ nw
P-single: Pr13c10 = sw
P-single: Pr14c9 = sw
whip[1]: Pr13c10{sw .} ==> Br13c10 ≠ ns, Br13c10 ≠ s, Br13c9 ≠ ns, Br12c10 ≠ ns, Br12c10 ≠ w, Br12c10 ≠ s, Br12c9 ≠ w, Br12c9 ≠ nw, Br12c9 ≠ ew, Br12c9 ≠ esw, Br12c9 ≠ wne, Br12c10 ≠ nw, Br12c10 ≠ se, Br12c10 ≠ ew, Br12c10 ≠ sw, Br12c10 ≠ esw, Br12c10 ≠ swn, Br12c10 ≠ wne, Br12c10 ≠ nes, Br13c9 ≠ ew, Br13c9 ≠ sw, Br13c10 ≠ se, Br13c10 ≠ swn, Br13c10 ≠ nes
B-single: Br13c9 = ne
whip[1]: Br13c9{ne .} ==> Pr13c9 ≠ ns, Pr14c10 ≠ ew
P-single: Pr14c10 = ne
P-single: Pr13c9 = ne
whip[1]: Pr14c10{ne .} ==> Br14c9 ≠ n, Br14c9 ≠ ns, Br14c9 ≠ nw, Br14c9 ≠ swn
whip[1]: Br14c9{sw .} ==> Nr14c9 ≠ 3
whip[1]: Pr13c9{ne .} ==> Br13c8 ≠ se
B-single: Br13c8 = s
whip[1]: Br13c8{s .} ==> Nr13c8 ≠ 2
N-single: Nr13c8 = 1
whip[1]: Br13c10{esw .} ==> Pr13c11 ≠ nw, Pr13c11 ≠ ew, Pr13c11 ≠ sw, Nr13c10 ≠ 1
whip[1]: Br12c10{ne .} ==> Pr12c10 ≠ ns, Pr12c10 ≠ se, Nr12c10 ≠ 3, Pr12c10 ≠ sw
whip[1]: Pr12c10{ew .} ==> Br11c9 ≠ se, Br11c10 ≠ nw, Br11c10 ≠ ew, Br11c10 ≠ wne, Br11c10 ≠ w
whip[1]: Br12c9{swn .} ==> Nr12c9 ≠ 1
whip[1]: Pr14c9{sw .} ==> Br14c9 ≠ s, Br14c9 ≠ o
whip[1]: Br14c9{sw .} ==> Nr14c9 ≠ 0
whip[1]: Pr15c9{ns .} ==> Br15c9 ≠ s, Br15c9 ≠ nw, Br15c9 ≠ se, Br15c9 ≠ swn, Br15c9 ≠ wne, Br15c9 ≠ o, Br15c9 ≠ e
whip[1]: Br15c9{nes .} ==> Nr15c9 ≠ 0
whip[1]: Br15c7{se .} ==> Pr16c8 ≠ ne, Pr16c8 ≠ ew, Nr15c7 ≠ 1, Nr15c7 ≠ 3
N-single: Nr15c7 = 2
P-single: Pr15c7 = se
P-single: Pr16c8 = o
whip[1]: Pr15c7{se .} ==> Br14c7 ≠ e, Br15c6 ≠ sw, Br15c7 ≠ se
B-single: Br15c7 = nw
B-single: Br15c6 = esw
B-single: Br14c7 = se
whip[1]: Br15c7{nw .} ==> Pr15c8 ≠ ns, Pr16c7 ≠ ew, Vr15c8 ≠ 1
P-single: Pr16c7 = nw
P-single: Pr15c8 = nw
whip[1]: Pr16c7{nw .} ==> Br16c7 ≠ n
B-single: Br16c7 = o
whip[1]: Br15c6{esw .} ==> Nr15c6 ≠ 2
N-single: Nr15c6 = 3
whip[1]: Br14c7{se .} ==> Nr14c7 ≠ 1
N-single: Nr14c7 = 2
whip[1]: Pr16c8{o .} ==> Hr16c8 ≠ 1, Br16c8 ≠ n
B-single: Br16c8 = o
whip[1]: Br16c8{o .} ==> Pr16c9 ≠ nw, Pr16c9 ≠ ew
whip[1]: Pr16c9{ne .} ==> Br15c9 ≠ w, Br15c9 ≠ ns, Br15c9 ≠ ew, Br15c9 ≠ nes
whip[1]: Br11c8{ew .} ==> Hr11c8 ≠ 1, Pr11c9 ≠ ew, Nr11c8 ≠ 3
whip[1]: Pr11c9{se .} ==> Br10c9 ≠ esw, Br10c9 ≠ swn, Br11c9 ≠ ne, Br11c9 ≠ ns, Br11c8 ≠ w
B-single: Br11c8 = ew
whip[1]: Br11c8{ew .} ==> Nr11c8 ≠ 1, Pr12c9 ≠ se
N-single: Nr11c8 = 2
P-single: Pr12c9 = ns
whip[1]: Pr12c9{ns .} ==> Br11c9 ≠ sw, Br12c9 ≠ swn
B-single: Br12c9 = sw
whip[1]: Br12c9{sw .} ==> Nr12c9 ≠ 3, Pr12c10 ≠ ew
N-single: Nr12c9 = 2
whip[1]: Pr12c10{ne .} ==> Br11c10 ≠ s, Br11c10 ≠ ns, Br11c10 ≠ se, Br11c10 ≠ nes
whip[1]: Br10c9{nes .} ==> Pr10c9 ≠ ns, Pr10c9 ≠ sw, Pr10c10 ≠ o, Pr10c10 ≠ se, Pr10c10 ≠ ew, Pr11c10 ≠ se, Pr11c10 ≠ ew
P-single: Pr10c10 = sw
w[1]-1-in-r9c10-symmetric-sw-corner ==> Pr9c11 ≠ ne, Pr9c11 ≠ o
whip[1]: Pr10c10{sw .} ==> Br10c10 ≠ ns, Br10c10 ≠ ne, Br10c10 ≠ s, Br10c10 ≠ e, Br10c10 ≠ n, Br10c10 ≠ o, Br9c10 ≠ s, Br9c9 ≠ n, Br9c9 ≠ nw, Br10c10 ≠ nw, Br10c10 ≠ se, Br10c10 ≠ swn, Br10c10 ≠ wne, Br10c10 ≠ nes
B-single: Br9c10 = e
whip[1]: Br9c10{e .} ==> Pr10c11 ≠ ew, Pr10c11 ≠ sw
whip[1]: Pr10c11{ns .} ==> Br9c11 ≠ nes, Br10c11 ≠ swn, Br10c11 ≠ wne
whip[1]: Br10c11{nes .} ==> Pr10c12 ≠ ne, Pr10c12 ≠ ew, Pr11c11 ≠ ns, Pr11c11 ≠ nw, Pr11c12 ≠ o, Pr11c12 ≠ ne, Pr11c12 ≠ ns, Pr11c12 ≠ se, Pr11c12 ≠ ew, Pr11c12 ≠ sw
P-single: Pr11c12 = nw
whip[1]: Pr11c12{nw .} ==> Br11c12 ≠ n, Br11c11 ≠ s, Br11c11 ≠ e, Br11c11 ≠ o, Br10c12 ≠ s, Br10c12 ≠ e, Br10c12 ≠ n, Br10c12 ≠ o, Br10c12 ≠ ne, Br10c12 ≠ ns, Br10c12 ≠ se, Br10c12 ≠ sw, Br10c12 ≠ esw, Br10c12 ≠ swn, Br10c12 ≠ nes, Br11c11 ≠ w, Br11c11 ≠ ne, Br11c11 ≠ se, Br11c11 ≠ ew, Br11c11 ≠ sw, Br11c11 ≠ esw, Br11c11 ≠ wne, Br11c11 ≠ nes, Br11c12 ≠ w, Br11c12 ≠ ne, Br11c12 ≠ ns, Br11c12 ≠ nw, Br11c12 ≠ ew, Br11c12 ≠ sw, Br11c12 ≠ esw, Br11c12 ≠ swn, Br11c12 ≠ wne, Br11c12 ≠ nes
whip[1]: Br11c12{se .} ==> Pr11c13 ≠ nw, Pr11c13 ≠ ew, Pr11c13 ≠ sw, Pr12c12 ≠ ne, Pr12c12 ≠ ns, Pr12c12 ≠ nw, Nr11c12 ≠ 3
whip[1]: Br11c11{swn .} ==> Nr11c11 ≠ 0
whip[1]: Br10c12{wne .} ==> Nr10c12 ≠ 0
whip[1]: Pr11c11{ew .} ==> Br10c10 ≠ ew, Br10c10 ≠ esw, Br10c11 ≠ esw, Br11c10 ≠ sw, Br11c10 ≠ o, Br11c10 ≠ ne
B-single: Br10c11 = nes
whip[1]: Br10c11{nes .} ==> Pr10c12 ≠ ns, Pr10c11 ≠ ns
P-single: Pr10c11 = ne
P-single: Pr10c12 = sw
whip[1]: Pr10c11{ne .} ==> Br9c11 ≠ wne
whip[1]: Pr10c12{sw .} ==> Br9c12 ≠ ns, Br9c12 ≠ w, Br9c12 ≠ s, Br9c11 ≠ esw, Br9c12 ≠ nw, Br9c12 ≠ se, Br9c12 ≠ ew, Br9c12 ≠ sw, Br9c12 ≠ esw, Br9c12 ≠ swn, Br9c12 ≠ wne, Br9c12 ≠ nes, Br10c12 ≠ nw, Br10c12 ≠ wne
B-single: Br9c11 = swn
whip[1]: Br9c11{swn .} ==> Pr9c12 ≠ se, Pr9c12 ≠ ns, Pr9c11 ≠ ns
P-single: Pr9c11 = se
whip[1]: Pr9c11{se .} ==> Br8c11 ≠ w, Br8c11 ≠ e, Br8c11 ≠ n, Br8c11 ≠ o, Br8c10 ≠ ew, Br8c11 ≠ ne, Br8c11 ≠ nw, Br8c11 ≠ ew, Br8c11 ≠ sw, Br8c11 ≠ esw, Br8c11 ≠ swn, Br8c11 ≠ wne
B-single: Br8c10 = w
whip[1]: Br8c10{w .} ==> Nr8c10 ≠ 2, Pr8c11 ≠ ns, Pr8c11 ≠ se
N-single: Nr8c10 = 1
whip[1]: Pr8c11{ne .} ==> Br7c11 ≠ s, Br7c11 ≠ w, Br7c11 ≠ ns, Br7c11 ≠ nw, Br7c11 ≠ se, Br7c11 ≠ ew, Br7c11 ≠ wne, Br7c11 ≠ nes
whip[1]: Br8c11{nes .} ==> Nr8c11 ≠ 0
whip[1]: Pr9c12{ew .} ==> Br8c12 ≠ sw, Br8c12 ≠ esw, Br8c12 ≠ swn, Br8c12 ≠ o, Br8c12 ≠ n, Br8c12 ≠ e, Br8c12 ≠ ne
whip[1]: Br8c12{nes .} ==> Nr8c12 ≠ 0
whip[1]: Br10c12{ew .} ==> Pr10c13 ≠ nw, Pr10c13 ≠ ew, Pr10c13 ≠ sw, Nr10c12 ≠ 3
whip[1]: Br9c12{ne .} ==> Nr9c12 ≠ 3
whip[1]: Br11c10{swn .} ==> Nr11c10 ≠ 0, Nr11c10 ≠ 2
whip[1]: Br10c10{sw .} ==> Nr10c10 ≠ 0, Nr10c10 ≠ 3
whip[1]: Br9c9{swn .} ==> Nr9c9 ≠ 1
whip[1]: Pr11c10{nw .} ==> Br10c10 ≠ sw, Br11c10 ≠ swn, Br11c10 ≠ n
B-single: Br10c10 = w
whip[1]: Br10c10{w .} ==> Nr10c10 ≠ 2, Pr11c11 ≠ ew
N-single: Nr10c10 = 1
P-single: Pr11c11 = se
whip[1]: Pr11c11{se .} ==> Br11c11 ≠ n, Br11c11 ≠ ns
whip[1]: Br11c11{swn .} ==> Pr12c11 ≠ o, Pr12c11 ≠ se, Pr12c11 ≠ ew, Pr12c11 ≠ sw, Nr11c11 ≠ 1
whip[1]: Pr12c11{nw .} ==> Br12c10 ≠ ne, Br12c11 ≠ nw, Br12c11 ≠ swn, Br12c11 ≠ wne
whip[1]: Br12c10{e .} ==> Nr12c10 ≠ 2
whip[1]: Pr10c9{ew .} ==> Vr10c9 ≠ 1, Br10c9 ≠ wne
B-single: Br10c9 = nes
whip[1]: Br10c9{nes .} ==> Pr11c10 ≠ ns, Pr11c9 ≠ ns
P-single: Pr12c10 = o
P-single: Pr11c9 = se
P-single: Pr11c10 = nw
whip[1]: Pr12c10{o .} ==> Br11c9 ≠ ew, Br11c10 ≠ esw, Br12c10 ≠ n
B-single: Br11c10 = e
B-single: Br11c9 = nw
whip[1]: Br11c10{e .} ==> Pr12c11 ≠ nw, Nr11c10 ≠ 3
N-single: Nr11c10 = 1
whip[1]: Pr12c11{ns .} ==> Br12c11 ≠ s, Br12c11 ≠ se, Br12c11 ≠ o, Br12c11 ≠ e
whip[1]: Br12c11{nes .} ==> Nr12c11 ≠ 0
whip[1]: Pr11c2{se .} ==> Br10c1 ≠ ew, Br10c2 ≠ esw
B-single: Br10c2 = nes
B-single: Br10c1 = w
whip[1]: Br10c2{nes .} ==> Pr10c3 ≠ ns, Pr10c2 ≠ ns
P-single: Pr10c2 = ne
P-single: Pr10c3 = sw
whip[1]: Pr10c2{ne .} ==> Br9c2 ≠ ew
B-single: Br9c2 = sw
whip[1]: Pr10c3{sw .} ==> Br9c3 ≠ wne
B-single: Br9c3 = ne
whip[1]: Br9c3{ne .} ==> Nr9c3 ≠ 3, Nr9c3 ≠ 1, Nr9c3 ≠ 0, Pr9c3 ≠ o
N-single: Nr9c3 = 2
P-single: Pr9c3 = ne
whip[1]: Pr9c3{ne .} ==> Br8c2 ≠ w
B-single: Br8c2 = ew
whip[1]: Br8c2{ew .} ==> Nr8c2 ≠ 1, Pr8c3 ≠ ne
N-single: Nr8c2 = 2
P-single: Pr7c2 = se
P-single: Pr8c3 = se
whip[1]: Pr7c2{se .} ==> Br6c2 ≠ w, Br6c1 ≠ ew, Br6c1 ≠ wne, Br6c2 ≠ nw, Br7c2 ≠ ew
B-single: Br7c2 = nw
whip[1]: Br7c2{nw .} ==> Pr7c3 ≠ se
P-single: Pr7c3 = ew
whip[1]: Pr7c3{ew .} ==> Br7c3 ≠ s, Br7c3 ≠ sw, Br7c3 ≠ swn
B-single: Br7c3 = ns
whip[1]: Br7c3{ns .} ==> Nr7c3 ≠ 3, Nr7c3 ≠ 1
N-single: Nr7c3 = 2
whip[1]: Br6c2{ns .} ==> Pr6c2 ≠ ns, Pr6c2 ≠ se
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ wne, Br6c1 ≠ w
B-single: Br6c1 = nw
whip[1]: Br6c1{nw .} ==> Nr6c1 ≠ 3, Nr6c1 ≠ 1, Pr6c1 ≠ ns
N-single: Nr6c1 = 2
P-single: Pr6c1 = se
whip[1]: Pr6c1{se .} ==> Br5c1 ≠ esw, Br5c1 ≠ swn
B-single: Br5c1 = nes
whip[1]: Br5c1{nes .} ==> Pr6c2 ≠ ew, Pr5c2 ≠ ew, Pr5c2 ≠ ns, Pr5c2 ≠ ne, Pr5c1 ≠ ns
P-single: Pr5c1 = ne
P-single: Pr5c2 = sw
P-single: Pr6c2 = nw
whip[1]: Pr5c2{sw .} ==> Br5c2 ≠ ns, Br4c2 ≠ ns, Br4c1 ≠ esw, Br4c2 ≠ nw, Br4c2 ≠ swn
B-single: Br4c2 = n
B-single: Br4c1 = swn
B-single: Br5c2 = ew
whip[1]: Br4c2{n .} ==> Pr4c2 ≠ se, Pr5c3 ≠ ew, Nr4c2 ≠ 2, Nr4c2 ≠ 3
N-single: Nr4c2 = 1
P-single: Pr5c3 = se
P-single: Pr4c2 = ew
w[1]-1-in-r3c1-asymmetric-se-corner ==> Pr3c1 ≠ ns
whip[1]: Pr5c3{se .} ==> Br5c3 ≠ ns
B-single: Br5c3 = swn
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 2, Pr6c3 ≠ ew
N-single: Nr5c3 = 3
P-single: Pr6c3 = ne
whip[1]: Pr6c3{ne .} ==> Br6c2 ≠ ns
B-single: Br6c2 = s
whip[1]: Br6c2{s .} ==> Nr6c2 ≠ 2
N-single: Nr6c2 = 1
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ w, Br3c1 ≠ n
B-single: Br3c1 = s
whip[1]: Br3c1{s .} ==> Pr4c1 ≠ ns, Pr4c1 ≠ ne, Pr4c1 ≠ o, Pr3c1 ≠ se, Pr3c2 ≠ ew
P-single: Pr2c2 = sw
P-single: Pr3c2 = ne
P-single: Pr3c1 = o
P-single: Pr4c1 = se
whip[1]: Pr2c2{sw .} ==> Br2c2 ≠ ns, Br2c2 ≠ s, Br2c1 ≠ ns, Br1c2 ≠ s, Br1c1 ≠ e, Br1c1 ≠ o, Br1c1 ≠ nw, Br1c1 ≠ se, Br1c1 ≠ wne, Br1c2 ≠ sw, Br1c2 ≠ wne, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c1 ≠ sw, Br2c2 ≠ swn
B-single: Br2c2 = sw
B-single: Br2c1 = ne
B-single: Br1c2 = ne
whip[1]: Br2c2{sw .} ==> Nr2c2 ≠ 3, Nr2c2 ≠ 1, Nr2c2 ≠ 0, Pr2c3 ≠ ew
N-single: Nr2c2 = 2
P-single: Pr2c3 = ne
whip[1]: Pr2c3{ne .} ==> Br1c3 ≠ se
B-single: Br1c3 = esw
whip[1]: Br1c3{esw .} ==> Nr1c3 ≠ 2, Pr1c3 ≠ o
N-single: Nr1c3 = 3
P-single: Pr1c3 = sw
whip[1]: Br2c1{ne .} ==> Pr2c1 ≠ ns
P-single: Pr2c1 = ne
whip[1]: Pr2c1{ne .} ==> Br1c1 ≠ s
B-single: Br1c1 = swn
whip[1]: Br1c1{swn .} ==> Nr1c1 ≠ 2, Nr1c1 ≠ 1, Nr1c1 ≠ 0, Pr1c2 ≠ sw, Pr1c2 ≠ se, Pr1c2 ≠ o, Pr1c1 ≠ o
N-single: Nr1c1 = 3
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
whip[1]: Br1c2{ne .} ==> Nr1c2 ≠ 3, Nr1c2 ≠ 1
N-single: Nr1c2 = 2
whip[1]: Br10c1{w .} ==> Nr10c1 ≠ 2
N-single: Nr10c1 = 1
whip[1]: Hr5c7{0 .} ==> Pr5c7 ≠ ew, Pr5c8 ≠ sw, Br4c7 ≠ s, Br4c7 ≠ ns, Br5c7 ≠ nes
P-single: Pr5c8 = ns
P-single: Pr5c7 = nw
B-single: Br5c7 = se
whip[1]: Pr5c8{ns .} ==> Br4c8 ≠ e, Br4c8 ≠ o
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 0
whip[1]: Pr5c7{nw .} ==> Br4c6 ≠ s, Br4c6 ≠ ns
whip[1]: Br4c6{nes .} ==> Pr4c7 ≠ nw, Pr4c7 ≠ ew, Nr4c6 ≠ 1
whip[1]: Pr4c7{se .} ==> Hr4c6 ≠ 1, Br3c6 ≠ ns, Br3c6 ≠ se, Br3c6 ≠ nes, Br4c6 ≠ nes, Br3c6 ≠ s
H-single: Hr4c6 = 0
B-single: Br4c6 = se
no-horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1

LOOP[60]: Vr3c6-Hr4c5-Vr3c5-Hr3c4-Vr3c4-Vr4c4-Hr5c3-Vr5c3-Hr6c3-Vr6c4-Hr7c3-Hr7c2-Vr7c2-Vr8c2-Vr9c2-Hr10c2-Vr10c3-Hr11c2-Vr11c2-Vr12c2-Hr13c2-Vr13c3-Hr14c3-Vr14c4-Hr15c3-Vr15c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Vr12c1-Vr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Hr6c1-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Hr4c2-Vr3c3-Hr3c2-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Vr1c3-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5- ==> Vr2c6 = 0
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
same-colour-in-r2{c6 c7} ==> Vr2c7 = 0
w[0]-adjacent-3-in-r1c7-nolines-south ==> Hr2c6 = 1
different-colours-in-{r2 r3}c6 ==> Hr3c6 = 1
whip[1]: Hr4c6{0 .} ==> Pr4c6 ≠ ew
P-single: Pr4c6 = nw
whip[1]: Pr4c6{nw .} ==> Br3c5 ≠ sw
B-single: Br3c5 = esw
whip[1]: Br3c5{esw .} ==> Nr3c5 ≠ 2, Pr3c6 ≠ ne, Pr3c6 ≠ o
N-single: Nr3c5 = 3
whip[1]: Pr3c6{se .} ==> Br2c6 ≠ ne, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ e
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Br4c6{se .} ==> Nr4c6 ≠ 3
N-single: Nr4c6 = 2
whip[1]: Vr3c7{1 .} ==> Pr3c7 ≠ ne, Pr3c7 ≠ ew, Pr4c7 ≠ se, Br3c6 ≠ w, Br3c6 ≠ nw, Br3c7 ≠ ns, Br3c7 ≠ se
P-single: Pr4c7 = ns
whip[1]: Pr4c7{ns .} ==> Br4c7 ≠ wne
B-single: Br4c7 = ew
whip[1]: Br4c7{ew .} ==> Nr4c7 ≠ 3, Nr4c7 ≠ 1
N-single: Nr4c7 = 2
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 1
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ se, Br2c6 ≠ nes, Br2c7 ≠ sw, Br2c7 ≠ swn, Br3c7 ≠ nw, Br2c6 ≠ w, Br2c7 ≠ s, Br2c7 ≠ ns
B-single: Br3c7 = ew
whip[1]: Br2c6{ew .} ==> Nr2c6 ≠ 3
whip[1]: Vr2c6{0 .} ==> Pr2c6 ≠ sw, Pr3c6 ≠ ns, Br2c5 ≠ ne, Br2c6 ≠ ew
P-single: Pr3c6 = se
B-single: Br2c5 = n
whip[1]: Pr3c6{se .} ==> Br3c6 ≠ ew
B-single: Br3c6 = wne
whip[1]: Br3c6{wne .} ==> Nr3c6 ≠ 2, Pr3c7 ≠ ns
N-single: Nr3c6 = 3
P-single: Pr3c7 = sw
whip[1]: Pr3c7{sw .} ==> Br2c7 ≠ w, Br2c7 ≠ nw, Br2c7 ≠ ew, Br2c7 ≠ wne
whip[1]: Br2c7{ne .} ==> Pr2c7 ≠ ns, Pr2c7 ≠ se, Nr2c7 ≠ 3
whip[1]: Pr2c7{ew .} ==> Br1c6 ≠ nw, Br1c6 ≠ wne, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c6 ≠ o, Br1c6 ≠ e, Br2c6 ≠ s
B-single: Br2c6 = ns
whip[1]: Br2c6{ns .} ==> Nr2c6 ≠ 1, Pr2c6 ≠ nw
N-single: Nr2c6 = 2
P-single: Pr2c6 = ew
whip[1]: Pr2c6{ew .} ==> Br1c5 ≠ esw
B-single: Br1c5 = sw
whip[1]: Br1c5{sw .} ==> Nr1c5 ≠ 3, Pr1c6 ≠ se
N-single: Nr1c5 = 2
P-single: Pr1c6 = o
whip[1]: Br1c6{se .} ==> Pr1c7 ≠ ew, Pr1c7 ≠ sw, Nr1c6 ≠ 0, Nr1c6 ≠ 3
whip[1]: Pr1c7{se .} ==> Br1c7 ≠ nes
B-single: Br1c7 = wne
whip[1]: Br1c7{wne .} ==> Pr2c8 ≠ sw, Pr2c8 ≠ ew, Pr2c7 ≠ ew, Pr1c8 ≠ ew, Pr1c7 ≠ o
P-single: Pr1c7 = se
P-single: Pr1c8 = sw
P-single: Pr2c7 = nw
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ s
B-single: Br1c6 = se
whip[1]: Br1c6{se .} ==> Nr1c6 ≠ 1
N-single: Nr1c6 = 2
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes
B-single: Br1c8 = esw
whip[1]: Br1c8{esw .} ==> Pr2c9 ≠ ew, Pr2c9 ≠ se, Pr2c9 ≠ ns, Pr2c8 ≠ ns, Pr1c9 ≠ ew
P-single: Pr1c9 = se
P-single: Pr2c8 = ne
P-single: Pr2c9 = nw
whip[1]: Pr1c9{se .} ==> Br1c9 ≠ w, Br1c9 ≠ s, Br1c9 ≠ e, Br1c9 ≠ n, Br1c9 ≠ o, Br1c9 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ esw, Br1c9 ≠ nes
whip[1]: Br1c9{wne .} ==> Pr1c10 ≠ o, Pr1c10 ≠ se, Pr2c10 ≠ nw, Nr1c9 ≠ 0, Nr1c9 ≠ 1
whip[1]: Pr1c10{sw .} ==> Br1c10 ≠ nw, Br1c10 ≠ se, Br1c10 ≠ swn, Br1c10 ≠ wne, Br1c10 ≠ o, Br1c10 ≠ e, Br1c10 ≠ s
whip[1]: Br1c10{nes .} ==> Nr1c10 ≠ 0
whip[1]: Pr2c8{ne .} ==> Br2c7 ≠ n, Br2c7 ≠ e, Br2c7 ≠ ne, Br2c8 ≠ ew
B-single: Br2c8 = ns
B-single: Br2c7 = o
whip[1]: Br2c8{ns .} ==> Pr3c9 ≠ ns
P-single: Pr3c9 = ew
whip[1]: Pr3c9{ew .} ==> Br3c8 ≠ ne, Br2c9 ≠ ne, Br2c9 ≠ w, Br2c9 ≠ e, Br2c9 ≠ n, Br2c9 ≠ o, Br2c9 ≠ nw, Br2c9 ≠ ew, Br2c9 ≠ wne, Br3c8 ≠ ew, Br3c9 ≠ esw
B-single: Br3c9 = nes
B-single: Br3c8 = nw
whip[1]: Br3c9{nes .} ==> Pr3c10 ≠ ns
P-single: Pr3c10 = sw
whip[1]: Pr3c10{sw .} ==> Br2c10 ≠ ns, Br2c10 ≠ w, Br2c10 ≠ s, Br2c10 ≠ nw, Br2c10 ≠ se, Br2c10 ≠ ew, Br2c10 ≠ wne, Br2c10 ≠ nes, Br3c10 ≠ nw
B-single: Br3c10 = ew
whip[1]: Br3c10{ew .} ==> Pr3c11 ≠ ew, Pr3c11 ≠ nw, Vr3c11 ≠ 0
V-single: Vr3c11 = 1
vertical-line-r3{c10 c11} ==> Ir3c11 = out
different-colours-in-{r3 r4}c11 ==> Hr4c11 = 1
whip[1]: Vr3c11{1 .} ==> Br3c11 ≠ o, Br3c11 ≠ n, Br3c11 ≠ e, Br3c11 ≠ s, Br3c11 ≠ ne, Br3c11 ≠ ns, Br3c11 ≠ se, Br3c11 ≠ nes
whip[1]: Br3c11{wne .} ==> Nr3c11 ≠ 0
whip[1]: Hr4c11{1 .} ==> Pr4c11 ≠ ns, Pr4c12 ≠ o, Pr4c12 ≠ ne, Pr4c12 ≠ ns, Pr4c12 ≠ se, Br3c11 ≠ w, Br3c11 ≠ nw, Br3c11 ≠ ew, Br3c11 ≠ wne, Br4c11 ≠ e, Br4c11 ≠ s, Br4c11 ≠ w
P-single: Pr4c11 = ne
B-single: Br4c11 = n
whip[1]: Pr4c11{ne .} ==> Br4c10 ≠ se
B-single: Br4c10 = s
whip[1]: Br4c10{s .} ==> Nr4c10 ≠ 2, Pr5c11 ≠ nw
N-single: Nr4c10 = 1
whip[1]: Pr5c11{sw .} ==> Br5c11 ≠ se, Br5c11 ≠ o, Br5c11 ≠ e, Br5c11 ≠ s
whip[1]: Br5c11{nes .} ==> Nr5c11 ≠ 0
whip[1]: Br4c11{n .} ==> Vr4c12 ≠ 1, Pr4c12 ≠ sw, Pr5c11 ≠ ew
V-single: Vr4c12 = 0
P-single: Pr5c11 = sw
w[1]-1-in-r3c12-asymmetric-sw-corner ==> Pr3c13 ≠ ew, Pr3c13 ≠ se, Pr3c13 ≠ ns
no-vertical-line-r4{c11 c12} ==> Ir4c12 = in
whip[1]: Vr4c12{0 .} ==> Br4c12 ≠ w, Br4c12 ≠ nw, Br4c12 ≠ ew, Br4c12 ≠ sw, Br4c12 ≠ esw, Br4c12 ≠ swn, Br4c12 ≠ wne
whip[1]: Pr5c11{sw .} ==> Br5c11 ≠ ns, Br5c11 ≠ ne, Br5c11 ≠ n, Br5c10 ≠ swn, Br5c11 ≠ nes
whip[1]: Br5c11{esw .} ==> Pr6c11 ≠ ew, Pr6c11 ≠ sw
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ ne
whip[1]: Br6c10{swn .} ==> Pr7c11 ≠ ne, Pr7c11 ≠ ns
whip[1]: Pr7c11{sw .} ==> Br6c11 ≠ sw, Br6c11 ≠ esw
whip[1]: Pr3c13{sw .} ==> Br2c12 ≠ se, Br2c13 ≠ nw, Br2c13 ≠ se, Br2c13 ≠ ew, Br2c13 ≠ wne, Br2c13 ≠ nes, Br3c13 ≠ swn, Br3c13 ≠ wne, Br2c13 ≠ s, Br2c13 ≠ w, Br2c13 ≠ ns, Br3c12 ≠ n, Br3c12 ≠ e
whip[1]: Br3c12{w .} ==> Pr4c13 ≠ ne, Pr4c13 ≠ ns, Pr4c13 ≠ nw, Pr3c12 ≠ se, Pr3c12 ≠ ew, Pr3c13 ≠ sw
whip[1]: Pr3c13{ne .} ==> Br2c12 ≠ ns, Br2c12 ≠ sw, Br3c13 ≠ esw
B-single: Br3c13 = nes
whip[1]: Br3c13{nes .} ==> Pr4c14 ≠ sw, Pr4c14 ≠ ew, Pr4c14 ≠ se, Pr4c14 ≠ ns, Pr4c14 ≠ ne, Pr4c14 ≠ o, Pr4c13 ≠ sw, Pr4c13 ≠ o, Pr3c14 ≠ ew, Pr3c14 ≠ se, Pr3c14 ≠ nw, Pr3c14 ≠ ns, Pr3c14 ≠ ne, Pr3c14 ≠ o, Pr3c13 ≠ o, Vr3c14 ≠ 0, Hr4c13 ≠ 0, Hr3c13 ≠ 0
H-single: Hr3c13 = 1
H-single: Hr4c13 = 1
V-single: Vr3c14 = 1
w[1]-3-in-r3c13-asymmetric-sw-corner ==> Vr2c14 = 0, Hr3c14 = 0
w[1]-2-in-r2c14-open-sw-corner ==> Hr2c14 = 1, Vr2c15 = 1, Hr2c15 = 0, Vr1c15 = 0
w[1]-3-in-r2c15-hit-by-horiz-line-at-nw ==> Vr2c16 = 1, Hr3c15 = 1
w[1]-3-in-r2c15-closed-sw-corner ==> Pr2c16 ≠ sw, Pr2c16 ≠ o
w[1]-3-in-r3c13-asymmetric-nw-corner ==> Vr4c14 = 0, Hr4c14 = 0
P-single: Pr2c15 = sw
P-single: Pr3c13 = ne
P-single: Pr3c14 = sw
P-single: Pr4c14 = nw
w[1]-1-in-r1c11-asymmetric-se-corner ==> Pr1c11 ≠ sw, Pr1c11 ≠ ew
no-vertical-line-r3{c15 c16} ==> Ir3c15 = out
no-vertical-line-r3{c14 c15} ==> Ir3c14 = out
no-horizontal-line-{r2 r3}c14 ==> Ir2c14 = out
no-vertical-line-r2{c13 c14} ==> Ir2c13 = out
horizontal-line-{r2 r3}c13 ==> Ir3c13 = in
no-vertical-line-r3{c12 c13} ==> Ir3c12 = in
no-horizontal-line-{r2 r3}c12 ==> Ir2c12 = in
horizontal-line-{r3 r4}c13 ==> Ir4c13 = out
no-vertical-line-r4{c13 c14} ==> Ir4c14 = out
no-horizontal-line-{r4 r5}c13 ==> Ir5c13 = out
no-vertical-line-r5{c12 c13} ==> Ir5c12 = out
no-vertical-line-r5{c13 c14} ==> Ir5c14 = out
no-horizontal-line-{r5 r6}c13 ==> Ir6c13 = out
vertical-line-r2{c14 c15} ==> Ir2c15 = in
no-horizontal-line-{r1 r2}c15 ==> Ir1c15 = in
no-vertical-line-r1{c14 c15} ==> Ir1c14 = in
different-colours-in-{r0 r1}c14 ==> Hr1c14 = 1
different-colours-in-r1{c15 c16} ==> Hr1c16 = 1
different-colours-in-{r0 r1}c15 ==> Hr1c15 = 1

LOOP[8]: Hr1c14-Hr1c15-Vr1c16-Vr2c16-Hr3c15-Vr2c15-Hr2c14- ==> Vr1c14 = 0
no-vertical-line-r1{c13 c14} ==> Ir1c13 = in
different-colours-in-{r1 r2}c13 ==> Hr2c13 = 1
different-colours-in-{r0 r1}c13 ==> Hr1c13 = 1

LOOP[10]: Hr1c13-Hr1c14-Hr1c15-Vr1c16-Vr2c16-Hr3c15-Vr2c15-Hr2c14-Hr2c13- ==> Vr1c13 = 0
no-vertical-line-r1{c12 c13} ==> Ir1c12 = in
same-colour-in-{r1 r2}c12 ==> Hr2c12 = 0
w[1]-diagonal-3-2-in-{r3c13...r2c12}-non-closed-nw-corner ==> Vr2c12 = 1
vertical-line-r2{c11 c12} ==> Ir2c11 = out
same-colour-in-{r2 r3}c11 ==> Hr3c11 = 0
different-colours-in-r2{c10 c11} ==> Hr2c11 = 1
different-colours-in-{r0 r1}c12 ==> Hr1c12 = 1
same-colour-in-{r4 r5}c14 ==> Hr5c14 = 0
w[1]-2-in-r5c14-open-nw-corner ==> Hr6c14 = 1, Vr5c15 = 1, Hr6c15 = 0, Vr6c15 = 0
vertical-line-r5{c14 c15} ==> Ir5c15 = in
no-horizontal-line-{r5 r6}c15 ==> Ir6c15 = in
no-vertical-line-r6{c14 c15} ==> Ir6c14 = in
different-colours-in-r6{c13 c14} ==> Hr6c14 = 1
different-colours-in-r6{c15 c16} ==> Hr6c16 = 1
different-colours-in-r5{c15 c16} ==> Hr5c16 = 1
different-colours-in-r5{c11 c12} ==> Hr5c12 = 1
different-colours-in-{r4 r5}c12 ==> Hr5c12 = 1
different-colours-in-r4{c12 c13} ==> Hr4c13 = 1
w[0]-adjacent-3-in-r3c13-nolines-west ==> Vr2c13 = 1
different-colours-in-r3{c11 c12} ==> Hr3c12 = 1

LOOP[6]: Vr2c12-Vr3c12-Hr4c11-Vr3c11-Vr2c11- ==> Hr2c11 = 0
no-horizontal-line-{r1 r2}c11 ==> Ir1c11 = out
different-colours-in-r1{c11 c12} ==> Hr1c12 = 1
whip[1]: Hr3c13{1 .} ==> Br2c13 ≠ o, Br2c13 ≠ n, Br2c13 ≠ e, Br2c13 ≠ ne
whip[1]: Br2c13{swn .} ==> Pr2c13 ≠ nw, Pr2c13 ≠ ew, Pr2c14 ≠ sw, Nr2c13 ≠ 0, Nr2c13 ≠ 1
whip[1]: Pr2c14{ew .} ==> Br1c13 ≠ nw, Br1c13 ≠ se, Br1c13 ≠ esw, Br1c13 ≠ nes, Br2c14 ≠ nw, Br2c14 ≠ se, Br1c13 ≠ o, Br1c13 ≠ n, Br1c13 ≠ w, Br1c14 ≠ o, Br1c14 ≠ n, Br1c14 ≠ e, Br1c14 ≠ ne
whip[1]: Br1c14{nes .} ==> Nr1c14 ≠ 0
whip[1]: Br1c13{wne .} ==> Nr1c13 ≠ 0
whip[1]: Pr2c13{se .} ==> Br1c12 ≠ ns, Br1c12 ≠ se, Br1c12 ≠ sw, Br1c12 ≠ esw, Br1c12 ≠ swn, Br1c12 ≠ nes, Br1c13 ≠ ne, Br1c13 ≠ sw, Br1c13 ≠ swn, Br2c12 ≠ ne, Br2c12 ≠ nw, Br1c12 ≠ s, Br1c13 ≠ e
B-single: Br2c12 = ew
whip[1]: Br2c12{ew .} ==> Pr2c12 ≠ ew, Pr2c12 ≠ ne
whip[1]: Pr2c12{sw .} ==> Br2c11 ≠ nw, Br1c11 ≠ n, Br1c11 ≠ w, Br2c11 ≠ s, Br2c11 ≠ w, Br2c11 ≠ ns
whip[1]: Br2c11{nes .} ==> Nr2c11 ≠ 1
whip[1]: Br1c11{s .} ==> Vr1c11 ≠ 1, Pr2c11 ≠ ne, Pr2c11 ≠ ns, Pr1c11 ≠ se, Pr1c12 ≠ ew, Pr1c12 ≠ sw, Pr2c11 ≠ nw
V-single: Vr1c11 = 0
P-single: Pr1c11 = o
no-vertical-line-r1{c10 c11} ==> Ir1c10 = out
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1
same-colour-in-{r0 r1}c10 ==> Hr1c10 = 0
different-colours-in-r1{c9 c10} ==> Hr1c10 = 1
whip[1]: Vr1c11{0 .} ==> Br1c10 ≠ ne, Br1c10 ≠ ew, Br1c10 ≠ esw, Br1c10 ≠ nes
whip[1]: Br1c10{sw .} ==> Nr1c10 ≠ 3
whip[1]: Pr1c11{o .} ==> Br1c10 ≠ n, Br1c10 ≠ ns
whip[1]: Br1c10{sw .} ==> Pr1c10 ≠ ew, Pr2c10 ≠ o, Pr2c10 ≠ se, Pr2c10 ≠ ew, Pr2c10 ≠ sw
P-single: Pr1c10 = sw
whip[1]: Pr1c10{sw .} ==> Br1c9 ≠ nw, Br1c9 ≠ swn
B-single: Br1c9 = wne
whip[1]: Br1c9{wne .} ==> Nr1c9 ≠ 2
N-single: Nr1c9 = 3
whip[1]: Pr2c10{ns .} ==> Br2c9 ≠ ns, Br2c10 ≠ o, Br2c10 ≠ e
B-single: Br2c9 = s
whip[1]: Br2c9{s .} ==> Nr2c9 ≠ 3, Nr2c9 ≠ 2, Nr2c9 ≠ 0, Pr2c10 ≠ ns
N-single: Nr2c9 = 1
P-single: Pr2c10 = ne
whip[1]: Pr2c10{ne .} ==> Br1c10 ≠ w
B-single: Br1c10 = sw
whip[1]: Br1c10{sw .} ==> Nr1c10 ≠ 1, Pr2c11 ≠ se, Pr2c11 ≠ o
N-single: Nr1c10 = 2
whip[1]: Pr2c11{sw .} ==> Br2c11 ≠ se, Br2c11 ≠ wne
whip[1]: Br2c10{ne .} ==> Nr2c10 ≠ 0, Nr2c10 ≠ 3
whip[1]: Hr1c10{0 .} ==> Br0c10 ≠ s
B-single: Br0c10 = o
whip[1]: Pr1c12{se .} ==> Br1c12 ≠ ne, Br1c12 ≠ ew, Br1c12 ≠ n, Br1c12 ≠ w
whip[1]: Hr4c13{1 .} ==> Br4c13 ≠ o, Br4c13 ≠ e, Br4c13 ≠ s, Br4c13 ≠ w, Br4c13 ≠ se, Br4c13 ≠ ew, Br4c13 ≠ sw, Br4c13 ≠ esw
whip[1]: Br4c13{nes .} ==> Nr4c13 ≠ 0
whip[1]: Vr3c14{1 .} ==> Br3c14 ≠ o, Br3c14 ≠ n, Br3c14 ≠ e, Br3c14 ≠ s, Br3c14 ≠ ne, Br3c14 ≠ ns, Br3c14 ≠ se, Br3c14 ≠ nes
whip[1]: Br3c14{wne .} ==> Nr3c14 ≠ 0
whip[1]: Vr2c14{0 .} ==> Pr2c14 ≠ ns, Br2c13 ≠ esw, Br2c14 ≠ ew, Br2c14 ≠ sw
whip[1]: Pr2c14{ew .} ==> Br1c14 ≠ nw, Br1c14 ≠ ew, Br1c14 ≠ wne, Br1c14 ≠ w
whip[1]: Hr3c14{0 .} ==> Pr3c15 ≠ ew, Pr3c15 ≠ sw, Br2c14 ≠ ns, Br3c14 ≠ nw, Br3c14 ≠ swn, Br3c14 ≠ wne
B-single: Br2c14 = ne
whip[1]: Pr3c15{ns .} ==> Br2c15 ≠ nes, Br3c15 ≠ s, Br3c15 ≠ nw, Br3c15 ≠ se, Br3c15 ≠ swn, Br3c15 ≠ wne, Br3c15 ≠ o, Br3c15 ≠ e
whip[1]: Br3c15{nes .} ==> Nr3c15 ≠ 0
whip[1]: Br2c15{wne .} ==> Pr3c16 ≠ o
whip[1]: Pr3c16{sw .} ==> Br3c15 ≠ sw, Br3c15 ≠ w
whip[1]: Hr2c15{0 .} ==> Pr2c16 ≠ nw, Br1c15 ≠ s, Br1c15 ≠ sw, Br1c15 ≠ nes, Br2c15 ≠ swn, Br2c15 ≠ wne
P-single: Pr2c16 = ns
B-single: Br2c15 = esw
whip[1]: Pr2c16{ns .} ==> Br1c15 ≠ o, Br1c15 ≠ w
whip[1]: Br1c15{wne .} ==> Pr1c16 ≠ o, Pr1c15 ≠ o, Pr1c15 ≠ sw, Nr1c15 ≠ 0, Nr1c15 ≠ 1
P-single: Pr1c16 = sw
whip[1]: Pr1c15{ew .} ==> Br1c14 ≠ sw, Br1c14 ≠ nes, Br1c14 ≠ s
whip[1]: Br1c14{swn .} ==> Nr1c14 ≠ 1
whip[1]: Br2c15{esw .} ==> Pr3c15 ≠ ns, Pr3c16 ≠ sw, Pr3c16 ≠ ns
P-single: Pr3c16 = nw
P-single: Pr3c15 = ne
whip[1]: Pr3c16{nw .} ==> Br3c15 ≠ ne, Br3c15 ≠ ew, Br3c15 ≠ esw, Br3c15 ≠ nes
whip[1]: Br3c15{ns .} ==> Pr4c16 ≠ ns, Pr4c16 ≠ nw, Pr4c15 ≠ ne, Pr4c15 ≠ ns, Pr4c15 ≠ nw, Nr3c15 ≠ 3
whip[1]: Pr4c15{sw .} ==> Br3c14 ≠ ew, Br3c14 ≠ esw
whip[1]: Br3c14{sw .} ==> Nr3c14 ≠ 3
whip[1]: Pr4c16{sw .} ==> Br4c15 ≠ nw, Br4c15 ≠ se, Br4c15 ≠ ew, Br4c15 ≠ esw, Br4c15 ≠ swn, Br4c15 ≠ n, Br4c15 ≠ e, Br4c15 ≠ ns
whip[1]: Vr1c15{0 .} ==> Pr1c15 ≠ se, Br1c14 ≠ se, Br1c14 ≠ esw, Br1c15 ≠ wne
P-single: Pr1c15 = ew
B-single: Br1c15 = ne
whip[1]: Br1c15{ne .} ==> Nr1c15 ≠ 3
N-single: Nr1c15 = 2
whip[1]: Br1c14{swn .} ==> Pr1c14 ≠ o, Pr1c14 ≠ sw
whip[1]: Pr1c14{ew .} ==> Br1c13 ≠ wne, Br1c13 ≠ s
whip[1]: Br1c13{ew .} ==> Pr1c13 ≠ o, Pr1c13 ≠ se, Nr1c13 ≠ 1, Nr1c13 ≠ 3
N-single: Nr1c13 = 2
whip[1]: Pr1c13{sw .} ==> Br1c12 ≠ o, Br1c12 ≠ e
whip[1]: Br1c12{wne .} ==> Pr1c12 ≠ o, Pr2c12 ≠ sw, Nr1c12 ≠ 0, Nr1c12 ≠ 1
P-single: Pr2c12 = ns
P-single: Pr1c12 = se
w[1]-1-in-r1c11-asymmetric-ne-corner ==> Pr2c11 ≠ ew
P-single: Pr2c11 = sw
whip[1]: Pr2c12{ns .} ==> Br1c11 ≠ s, Br2c11 ≠ nes
B-single: Br2c11 = ew
B-single: Br1c11 = e
whip[1]: Br2c11{ew .} ==> Nr2c11 ≠ 3, Pr3c12 ≠ nw, Pr3c11 ≠ se
N-single: Nr2c11 = 2
P-single: Pr3c11 = ns
P-single: Pr3c12 = ns
w[1]-1-in-r3c12-asymmetric-nw-corner ==> Pr4c13 ≠ ew
P-single: Pr4c13 = se
whip[1]: Pr3c11{ns .} ==> Br2c10 ≠ n, Br3c11 ≠ swn
B-single: Br2c10 = ne
whip[1]: Br2c10{ne .} ==> Nr2c10 ≠ 1
N-single: Nr2c10 = 2
whip[1]: Br3c11{esw .} ==> Nr3c11 ≠ 1
whip[1]: Pr3c12{ns .} ==> Br3c11 ≠ sw, Br3c12 ≠ s
B-single: Br3c12 = w
B-single: Br3c11 = esw
whip[1]: Br3c12{w .} ==> Pr4c12 ≠ ew
P-single: Pr4c12 = nw
whip[1]: Pr4c12{nw .} ==> Br4c12 ≠ n, Br4c12 ≠ ne, Br4c12 ≠ ns, Br4c12 ≠ nes
whip[1]: Br4c12{se .} ==> Nr4c12 ≠ 3
whip[1]: Br3c11{esw .} ==> Nr3c11 ≠ 2
N-single: Nr3c11 = 3
whip[1]: Pr4c13{se .} ==> Br4c13 ≠ n, Br4c12 ≠ s, Br4c12 ≠ o, Br4c13 ≠ ne, Br4c13 ≠ ns, Br4c13 ≠ nes
whip[1]: Br4c13{wne .} ==> Pr5c13 ≠ se, Pr5c13 ≠ ew, Pr5c14 ≠ nw, Nr4c13 ≠ 1
whip[1]: Pr5c14{sw .} ==> Br5c14 ≠ nw
whip[1]: Pr5c13{nw .} ==> Hr5c13 ≠ 1, Br4c13 ≠ swn, Br5c12 ≠ ne, Br5c12 ≠ sw
whip[1]: Br4c13{wne .} ==> Pr5c14 ≠ ew, Pr5c14 ≠ sw
whip[1]: Pr5c14{ns .} ==> Br4c14 ≠ s, Br4c14 ≠ ns, Br4c14 ≠ se, Br4c14 ≠ nes
whip[1]: Br4c12{se .} ==> Nr4c12 ≠ 0
whip[1]: Vr2c16{1 .} ==> Br2c16 ≠ o
B-single: Br2c16 = w
whip[1]: Vr3c16{0 .} ==> Br3c16 ≠ w
B-single: Br3c16 = o
whip[1]: Vr4c14{0 .} ==> Pr5c14 ≠ ne, Pr5c14 ≠ ns, Br4c13 ≠ wne, Br4c14 ≠ w, Br4c14 ≠ nw, Br4c14 ≠ ew, Br4c14 ≠ sw, Br4c14 ≠ esw, Br4c14 ≠ swn, Br4c14 ≠ wne
P-single: Pr6c15 = nw
P-single: Pr5c14 = o
B-single: Br4c13 = nw
whip[1]: Pr6c15{nw .} ==> Br6c15 ≠ n, Br6c14 ≠ s, Br6c14 ≠ e, Br6c14 ≠ o, Br5c14 ≠ ne, Br5c14 ≠ ns, Br5c14 ≠ ew, Br5c14 ≠ sw, Br5c15 ≠ ne, Br5c15 ≠ ns, Br5c15 ≠ se, Br5c15 ≠ sw, Br6c14 ≠ w, Br6c14 ≠ ne, Br6c14 ≠ se, Br6c14 ≠ ew, Br6c14 ≠ sw, Br6c14 ≠ esw, Br6c14 ≠ wne, Br6c14 ≠ nes, Br6c15 ≠ w, Br6c15 ≠ ne, Br6c15 ≠ ns, Br6c15 ≠ nw, Br6c15 ≠ ew, Br6c15 ≠ sw, Br6c15 ≠ esw, Br6c15 ≠ swn, Br6c15 ≠ wne, Br6c15 ≠ nes
B-single: Br5c14 = se
whip[1]: Br5c14{se .} ==> Pr6c14 ≠ nw, Pr6c14 ≠ ns, Pr5c15 ≠ ew, Vr5c14 ≠ 1
whip[1]: Pr5c15{se .} ==> Br4c15 ≠ ne, Br4c15 ≠ sw, Br4c15 ≠ o
whip[1]: Br4c15{nes .} ==> Nr4c15 ≠ 0, Nr4c15 ≠ 2
whip[1]: Pr6c14{ew .} ==> Br6c13 ≠ sw, Br6c13 ≠ wne, Br6c13 ≠ nes, Br6c13 ≠ o, Br6c13 ≠ s, Br6c13 ≠ w, Br6c13 ≠ ne
whip[1]: Br6c13{swn .} ==> Nr6c13 ≠ 0
whip[1]: Br6c15{se .} ==> Pr6c16 ≠ sw, Pr7c15 ≠ ne, Pr7c15 ≠ ns, Pr7c15 ≠ nw, Nr6c15 ≠ 3
whip[1]: Br6c14{swn .} ==> Nr6c14 ≠ 0
whip[1]: Br4c13{nw .} ==> Nr4c13 ≠ 3
N-single: Nr4c13 = 2
whip[1]: Pr5c16{nw .} ==> Vr4c16 ≠ 0, Br4c15 ≠ w, Br4c15 ≠ s
V-single: Vr4c16 = 1
vertical-line-r4{c15 c16} ==> Ir4c15 = in
same-colour-in-{r4 r5}c15 ==> Hr5c15 = 0
P-single: Pr6c16 = ns
P-single: Pr5c15 = ns
different-colours-in-r4{c14 c15} ==> Hr4c15 = 1
different-colours-in-{r3 r4}c15 ==> Hr4c15 = 1
whip[1]: Vr4c16{1 .} ==> Br4c16 ≠ o, Pr4c16 ≠ o
P-single: Pr4c16 = sw
B-single: Br4c16 = w
whip[1]: Pr4c16{sw .} ==> Br3c15 ≠ n
B-single: Br3c15 = ns
whip[1]: Br3c15{ns .} ==> Nr3c15 ≠ 1, Pr4c15 ≠ o, Pr4c15 ≠ sw
N-single: Nr3c15 = 2
whip[1]: Pr4c15{ew .} ==> Br4c14 ≠ o, Br4c14 ≠ ne
whip[1]: Br4c14{e .} ==> Nr4c14 ≠ 0, Nr4c14 ≠ 2, Nr4c14 ≠ 3
N-single: Nr4c14 = 1
whip[1]: Hr5c15{0 .} ==> Pr5c16 ≠ nw, Br4c15 ≠ nes, Br5c15 ≠ nw
P-single: Pr5c16 = ns
B-single: Br5c15 = ew
B-single: Br4c15 = wne
whip[1]: Br4c15{wne .} ==> Nr4c15 ≠ 1, Pr4c15 ≠ ew
N-single: Nr4c15 = 3
P-single: Pr4c15 = se
whip[1]: Pr4c15{se .} ==> Br4c14 ≠ n, Br3c14 ≠ sw
B-single: Br3c14 = w
B-single: Br4c14 = e
whip[1]: Br3c14{w .} ==> Nr3c14 ≠ 2
N-single: Nr3c14 = 1
whip[1]: Pr6c16{ns .} ==> Br6c15 ≠ o, Br6c15 ≠ s
whip[1]: Br6c15{se .} ==> Pr7c16 ≠ o, Pr7c16 ≠ sw, Nr6c15 ≠ 0
whip[1]: Pr7c16{nw .} ==> Br7c15 ≠ w, Br7c15 ≠ ne, Br7c15 ≠ sw, Br7c15 ≠ wne, Br7c15 ≠ nes, Br7c15 ≠ o, Br7c15 ≠ s
whip[1]: Br7c15{swn .} ==> Nr7c15 ≠ 0
whip[1]: Hr1c14{1 .} ==> Br0c14 ≠ o
B-single: Br0c14 = s
whip[1]: Vr1c16{1 .} ==> Br1c16 ≠ o
B-single: Br1c16 = w
whip[1]: Hr1c15{1 .} ==> Br0c15 ≠ o
B-single: Br0c15 = s
whip[1]: Vr1c14{0 .} ==> Pr1c14 ≠ se, Pr2c14 ≠ ne, Br1c13 ≠ ew, Br1c14 ≠ swn
P-single: Pr2c14 = ew
P-single: Pr1c14 = ew
B-single: Br1c14 = ns
B-single: Br1c13 = ns
whip[1]: Pr2c14{ew .} ==> Br2c13 ≠ sw
B-single: Br2c13 = swn
whip[1]: Br2c13{swn .} ==> Nr2c13 ≠ 2, Pr2c13 ≠ ns
N-single: Nr2c13 = 3
P-single: Pr2c13 = se
whip[1]: Pr2c13{se .} ==> Br1c12 ≠ wne
B-single: Br1c12 = nw
whip[1]: Br1c12{nw .} ==> Nr1c12 ≠ 3, Pr1c13 ≠ sw
N-single: Nr1c12 = 2
P-single: Pr1c13 = ew
whip[1]: Br1c14{ns .} ==> Nr1c14 ≠ 3
N-single: Nr1c14 = 2
whip[1]: Hr1c13{1 .} ==> Br0c13 ≠ o
B-single: Br0c13 = s
whip[1]: Hr1c12{1 .} ==> Br0c12 ≠ o
B-single: Br0c12 = s
whip[1]: Vr6c14{1 .} ==> Pr6c14 ≠ ew, Pr7c14 ≠ o, Pr7c14 ≠ se, Pr7c14 ≠ ew, Pr7c14 ≠ sw, Br6c13 ≠ n, Br6c13 ≠ ns, Br6c13 ≠ nw, Br6c13 ≠ swn, Br6c14 ≠ n, Br6c14 ≠ ns
P-single: Pr6c14 = se
whip[1]: Pr6c14{se .} ==> Hr6c13 ≠ 1
whip[1]: Br6c14{swn .} ==> Nr6c14 ≠ 1
whip[1]: Br6c13{esw .} ==> Pr6c13 ≠ se
P-single: Pr6c13 = o
whip[1]: Pr6c13{o .} ==> Vr6c13 ≠ 1, Vr5c13 ≠ 1, Hr6c12 ≠ 1, Br5c12 ≠ ns, Br5c12 ≠ se, Br5c12 ≠ ew, Br6c12 ≠ n, Br6c12 ≠ e, Br6c12 ≠ ne, Br6c12 ≠ ns, Br6c12 ≠ nw, Br6c12 ≠ se, Br6c12 ≠ ew, Br6c12 ≠ esw, Br6c12 ≠ swn, Br6c12 ≠ wne, Br6c12 ≠ nes, Br6c13 ≠ ew, Br6c13 ≠ esw
H-single: Hr6c12 = 0
V-single: Vr6c13 = 0
B-single: Br5c12 = nw
no-vertical-line-r6{c12 c13} ==> Ir6c12 = out
different-colours-in-r6{c11 c12} ==> Hr6c12 = 1

LOOP[132]: Vr6c12-Vr5c12-Hr5c12-Vr4c13-Hr4c13-Vr3c14-Hr3c13-Vr2c13-Hr2c13-Hr2c14-Vr2c15-Hr3c15-Vr2c16-Vr1c16-Hr1c15-Hr1c14-Hr1c13-Hr1c12-Vr1c12-Vr2c12-Vr3c12-Hr4c11-Vr3c11-Vr2c11-Hr2c10-Vr1c10-Hr1c9-Vr1c9-Hr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Hr2c5-Vr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c2-Vr3c3-Hr4c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Vr11c1-Vr12c1-Vr13c1-Hr14c1-Vr14c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Vr15c3-Hr15c3-Vr14c4-Hr14c3-Vr13c3-Hr13c2-Vr12c2-Vr11c2-Hr11c2-Vr10c3-Hr10c2-Vr9c2-Vr8c2-Vr7c2-Hr7c2-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Hr5c3-Vr4c4-Vr3c4-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr3c7-Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Vr7c6-Hr8c5-Hr8c4-Hr8c3-Vr8c3-Hr9c3-Vr9c4-Vr10c4-Hr11c4-Vr10c5-Vr9c5-Hr9c5-Hr9c6-Vr8c7-Vr7c7-Vr6c7-Hr6c7-Vr5c8-Vr4c8-Vr3c8-Hr3c8-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Hr7c10- ==> Hr7c11 = 0
no-horizontal-line-{r6 r7}c11 ==> Ir7c11 = in
different-colours-in-{r7 r8}c11 ==> Hr8c11 = 1
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1

LOOP[134]: Hr8c11-Vr7c11-Hr7c10-Vr6c10-Hr6c10-Vr5c11-Hr5c10-Hr5c9-Vr4c9-Hr4c9-Vr3c10-Hr3c9-Hr3c8-Vr3c8-Vr4c8-Vr5c8-Hr6c7-Vr6c7-Vr7c7-Vr8c7-Hr9c6-Hr9c5-Vr9c5-Vr10c5-Hr11c4-Vr10c4-Vr9c4-Hr9c3-Vr8c3-Hr8c3-Hr8c4-Hr8c5-Vr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c6-Vr4c7-Vr3c7-Hr3c6-Vr3c6-Hr4c5-Vr3c5-Hr3c4-Vr3c4-Vr4c4-Hr5c3-Vr5c3-Hr6c3-Vr6c4-Hr7c3-Hr7c2-Vr7c2-Vr8c2-Vr9c2-Hr10c2-Vr10c3-Hr11c2-Vr11c2-Vr12c2-Hr13c2-Vr13c3-Hr14c3-Vr14c4-Hr15c3-Vr15c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Vr14c2-Hr14c1-Vr13c1-Vr12c1-Vr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Vr6c1-Hr6c1-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Hr4c2-Vr3c3-Hr3c2-Vr2c2-Hr2c1-Vr1c1-Hr1c1-Hr1c2-Vr1c3-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Hr2c5-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Hr2c8-Vr1c9-Hr1c9-Vr1c10-Hr2c10-Vr2c11-Vr3c11-Hr4c11-Vr3c12-Vr2c12-Vr1c12-Hr1c12-Hr1c13-Hr1c14-Hr1c15-Vr1c16-Vr2c16-Hr3c15-Vr2c15-Hr2c14-Hr2c13-Vr2c13-Hr3c13-Vr3c14-Hr4c13-Vr4c13-Hr5c12-Vr5c12-Vr6c12- ==> Vr7c12 = 0
no-vertical-line-r7{c11 c12} ==> Ir7c12 = in
different-colours-in-{r6 r7}c12 ==> Hr7c12 = 1
whip[1]: Hr6c12{0 .} ==> Pr6c12 ≠ se, Pr6c12 ≠ ew
whip[1]: Pr6c12{nw .} ==> Br5c11 ≠ w, Br5c11 ≠ sw, Br6c11 ≠ w, Br6c11 ≠ ne, Br6c11 ≠ nes, Br6c11 ≠ o, Br6c11 ≠ s
whip[1]: Br6c11{ew .} ==> Nr6c11 ≠ 0, Nr6c11 ≠ 3
whip[1]: Br5c11{esw .} ==> Nr5c11 ≠ 1
whip[1]: Vr6c13{0 .} ==> Pr7c13 ≠ ne, Pr7c13 ≠ ns, Pr7c13 ≠ nw
whip[1]: Br5c12{nw .} ==> Pr5c13 ≠ ns
P-single: Pr5c13 = nw
whip[1]: Pr5c13{nw .} ==> Br4c12 ≠ e
B-single: Br4c12 = se
whip[1]: Br4c12{se .} ==> Nr4c12 ≠ 1
N-single: Nr4c12 = 2
whip[1]: Vr6c12{1 .} ==> Br6c12 ≠ o, Pr6c12 ≠ nw, Pr7c12 ≠ o, Pr7c12 ≠ se, Pr7c12 ≠ ew, Pr7c12 ≠ sw, Br6c11 ≠ n, Br6c11 ≠ ns, Br6c12 ≠ s
P-single: Pr6c12 = ns
whip[1]: Pr6c12{ns .} ==> Br5c11 ≠ esw
B-single: Br5c11 = ew
whip[1]: Br5c11{ew .} ==> Nr5c11 ≠ 3, Pr6c11 ≠ ne
N-single: Nr5c11 = 2
whip[1]: Pr6c11{nw .} ==> Br6c10 ≠ sw
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 2
whip[1]: Br6c12{sw .} ==> Nr6c12 ≠ 0, Nr6c12 ≠ 3
whip[1]: Pr7c12{nw .} ==> Br7c11 ≠ ne
whip[1]: Hr7c11{0 .} ==> Pr7c11 ≠ se, Pr7c11 ≠ ew, Pr7c12 ≠ nw, Br6c11 ≠ se, Br7c11 ≠ n, Br7c11 ≠ swn
w[1]-1-in-r7c12-asymmetric-nw-corner ==> Pr8c13 ≠ sw, Pr8c13 ≠ ew, Pr8c13 ≠ ns, Pr8c13 ≠ ne
w[1]-3-in-r8c13-symmetric-nw-corner ==> Vr8c13 = 1, Hr8c13 = 1
w[1]-3-in-r8c13-closed-nw-corner ==> Pr9c14 ≠ se, Pr9c14 ≠ nw, Pr9c14 ≠ o
no-vertical-line-r7{c12 c13} ==> Ir7c13 = in
horizontal-line-{r7 r8}c13 ==> Ir8c13 = out
no-horizontal-line-{r8 r9}c13 ==> Ir9c13 = out
no-vertical-line-r9{c13 c14} ==> Ir9c14 = out
vertical-line-r8{c12 c13} ==> Ir8c12 = in
same-colour-in-{r8 r9}c12 ==> Hr9c12 = 0
w[0]-adjacent-3-in-r9c11-nolines-east ==> Vr8c12 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r9 r8}c13 ==> Hr10c13 = 0
different-colours-in-r9{c12 c13} ==> Hr9c13 = 1
w[1]-3-in-r8c13-hit-by-verti-line-at-sw ==> Vr8c14 = 1
w[1]-3-in-r10c13-hit-by-verti-line-at-nw ==> Vr10c14 = 1, Hr11c13 = 1
w[1]-3-in-r10c13-closed-se-corner ==> Pr10c13 ≠ se, Pr10c13 ≠ o
w[1]-3-in-r10c13-closed-sw-corner ==> Pr10c14 ≠ sw, Pr10c14 ≠ ne, Pr10c14 ≠ o
w[1]-3-in-r8c13-closed-ne-corner ==> Pr9c13 ≠ sw, Pr9c13 ≠ ne, Pr9c13 ≠ o
w[1]-1-in-r9c15-asymmetric-nw-corner ==> Pr10c16 ≠ sw, Pr10c16 ≠ ns
no-vertical-line-r11{c12 c13} ==> Ir11c13 = in
no-vertical-line-r11{c13 c14} ==> Ir11c14 = in
no-horizontal-line-{r10 r11}c14 ==> Ir10c14 = in
no-vertical-line-r7{c13 c14} ==> Ir7c14 = in
no-horizontal-line-{r7 r8}c14 ==> Ir8c14 = in
different-colours-in-{r8 r9}c14 ==> Hr9c14 = 1
same-colour-in-{r6 r7}c14 ==> Hr7c14 = 0
different-colours-in-{r9 r10}c14 ==> Hr10c14 = 1

LOOP[10]: Hr10c14-Vr10c14-Hr11c13-Vr10c13-Vr9c13-Vr8c13-Hr8c13-Vr8c14-Hr9c14- ==> Vr9c15 = 0
no-vertical-line-r9{c14 c15} ==> Ir9c15 = out
same-colour-in-r9{c15 c16} ==> Vr9c16 = 0
different-colours-in-{r6 r7}c13 ==> Hr7c13 = 1
whip[1]: Vr8c13{1 .} ==> Pr8c13 ≠ nw, Pr9c13 ≠ se, Pr9c13 ≠ ew, Br8c12 ≠ s, Br8c12 ≠ w, Br8c12 ≠ ns, Br8c12 ≠ nw, Br8c13 ≠ nes
P-single: Pr8c13 = se
whip[1]: Pr8c13{se .} ==> Br7c12 ≠ s, Br7c12 ≠ e, Br7c13 ≠ ne, Br7c13 ≠ nw, Br7c13 ≠ ew, Br7c13 ≠ sw, Br8c12 ≠ wne, Br8c12 ≠ nes, Br8c13 ≠ esw
whip[1]: Br8c13{wne .} ==> Pr8c14 ≠ ne, Pr8c14 ≠ ns
whip[1]: Pr8c14{sw .} ==> Br7c13 ≠ se, Br8c14 ≠ nw, Br8c14 ≠ se, Br7c14 ≠ w
B-single: Br7c13 = ns
whip[1]: Br7c13{ns .} ==> Pr7c14 ≠ ns, Pr7c13 ≠ sw
P-single: Pr7c13 = ew
P-single: Pr7c14 = nw
w[1]-1-in-r7c14-symmetric-nw-corner ==> Pr8c15 ≠ se, Pr8c15 ≠ nw, Pr8c15 ≠ o
w[1]-1-in-r7c12-asymmetric-ne-corner ==> Pr8c12 ≠ ew, Pr8c12 ≠ se, Pr8c12 ≠ nw, Pr8c12 ≠ ns
whip[1]: Pr7c13{ew .} ==> Br7c12 ≠ w, Br6c13 ≠ e, Br6c12 ≠ w
B-single: Br6c12 = sw
B-single: Br6c13 = se
B-single: Br7c12 = n
whip[1]: Br6c12{sw .} ==> Nr6c12 ≠ 1, Pr7c12 ≠ ns
N-single: Nr6c12 = 2
P-single: Pr7c12 = ne
whip[1]: Pr7c12{ne .} ==> Br7c11 ≠ e, Br7c11 ≠ esw
whip[1]: Br7c11{sw .} ==> Pr8c12 ≠ ne, Nr7c11 ≠ 1, Nr7c11 ≠ 3
whip[1]: Pr8c12{sw .} ==> Br8c11 ≠ se, Br8c11 ≠ ns
whip[1]: Br8c11{nes .} ==> Nr8c11 ≠ 2
whip[1]: Br6c13{se .} ==> Nr6c13 ≠ 3, Nr6c13 ≠ 1
N-single: Nr6c13 = 2
whip[1]: Pr7c14{nw .} ==> Br7c14 ≠ n, Br6c14 ≠ swn
B-single: Br6c14 = nw
whip[1]: Br6c14{nw .} ==> Nr6c14 ≠ 3, Pr7c15 ≠ sw, Pr7c15 ≠ ew
N-single: Nr6c14 = 2
whip[1]: Pr7c15{se .} ==> Br7c15 ≠ ns, Br7c15 ≠ ew, Br7c15 ≠ esw, Br7c15 ≠ n
whip[1]: Pr8c15{ew .} ==> Br8c15 ≠ nw, Br8c15 ≠ se, Br8c15 ≠ swn, Br8c15 ≠ wne, Br7c15 ≠ e, Br8c14 ≠ ne, Br8c15 ≠ o, Br8c15 ≠ e, Br8c15 ≠ s
whip[1]: Br8c15{nes .} ==> Nr8c15 ≠ 0
whip[1]: Br7c15{swn .} ==> Pr8c16 ≠ ns, Nr7c15 ≠ 1
whip[1]: Pr8c16{sw .} ==> Br8c15 ≠ ew, Br8c15 ≠ esw
whip[1]: Br8c12{ew .} ==> Nr8c12 ≠ 1, Nr8c12 ≠ 3
N-single: Nr8c12 = 2
P-single: Pr8c12 = sw
P-single: Pr9c13 = ns
w[1]-1-in-r9c13-asymmetric-nw-corner ==> Pr10c14 ≠ ew, Pr10c14 ≠ ns
whip[1]: Pr8c12{sw .} ==> Br8c11 ≠ s, Br7c11 ≠ o, Br8c12 ≠ se
B-single: Br8c12 = ew
B-single: Br7c11 = sw
B-single: Br8c11 = nes
whip[1]: Br8c12{ew .} ==> Pr9c12 ≠ ew
P-single: Pr9c12 = nw
whip[1]: Pr9c12{nw .} ==> Br9c12 ≠ n, Br9c12 ≠ ne
whip[1]: Br9c12{e .} ==> Nr9c12 ≠ 2
whip[1]: Br7c11{sw .} ==> Nr7c11 ≠ 0, Pr8c11 ≠ o, Pr7c11 ≠ nw, Pr7c11 ≠ o
N-single: Nr7c11 = 2
P-single: Pr7c11 = sw
P-single: Pr8c11 = ne
whip[1]: Pr7c11{sw .} ==> Br7c10 ≠ e, Br7c10 ≠ n, Br7c10 ≠ o, Br6c10 ≠ n, Br6c10 ≠ esw, Br6c11 ≠ ew
B-single: Br6c11 = e
B-single: Br6c10 = swn
B-single: Br7c10 = ne
whip[1]: Br6c11{e .} ==> Nr6c11 ≠ 2, Pr6c11 ≠ ns
N-single: Nr6c11 = 1
P-single: Pr6c11 = nw
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ wne
B-single: Br5c10 = nes
whip[1]: Br5c10{nes .} ==> Pr6c10 ≠ ns
P-single: Pr6c10 = se
w[1]-1-in-r5c9-symmetric-se-corner ==> Pr5c9 ≠ o
P-single: Pr5c9 = ne
whip[1]: Pr6c10{se .} ==> Br6c9 ≠ o, Br5c9 ≠ e
B-single: Br5c9 = n
B-single: Br6c9 = e
whip[1]: Br6c9{e .} ==> Nr6c9 ≠ 0, Pr7c10 ≠ o
N-single: Nr6c9 = 1
P-single: Pr7c10 = ne
whip[1]: Pr5c9{ne .} ==> Br4c9 ≠ n, Br4c8 ≠ w
B-single: Br4c8 = ew
B-single: Br4c9 = swn
whip[1]: Br4c8{ew .} ==> Nr4c8 ≠ 1
N-single: Nr4c8 = 2
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 1
N-single: Nr4c9 = 3
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 1
N-single: Nr6c10 = 3
whip[1]: Br7c10{ne .} ==> Nr7c10 ≠ 1, Nr7c10 ≠ 0
N-single: Nr7c10 = 2
whip[1]: Br8c11{nes .} ==> Nr8c11 ≠ 1
N-single: Nr8c11 = 3
whip[1]: Pr9c13{ns .} ==> Br9c13 ≠ e, Br9c13 ≠ n, Br9c12 ≠ o, Br8c13 ≠ swn, Br9c13 ≠ s
B-single: Br9c13 = w
B-single: Br8c13 = wne
B-single: Br9c12 = e
whip[1]: Br9c13{w .} ==> Pr10c14 ≠ nw, Pr10c13 ≠ ne, Pr9c14 ≠ ns, Pr9c14 ≠ ew
P-single: Pr8c15 = ne
P-single: Pr9c14 = ne
P-single: Pr10c13 = ns
P-single: Pr10c14 = se
whip[1]: Pr8c15{ne .} ==> Vr8c15 ≠ 1, Vr7c15 ≠ 0, Hr8c15 ≠ 0, Br7c14 ≠ s, Br7c15 ≠ nw, Br7c15 ≠ se, Br8c14 ≠ ns, Br8c14 ≠ ew, Br8c15 ≠ w, Br8c15 ≠ sw
H-single: Hr8c15 = 1
V-single: Vr7c15 = 1
V-single: Vr8c15 = 0
B-single: Br8c14 = sw
B-single: Br7c15 = swn
B-single: Br7c14 = e
no-vertical-line-r8{c14 c15} ==> Ir8c15 = in
horizontal-line-{r7 r8}c15 ==> Ir7c15 = out
same-colour-in-r7{c15 c16} ==> Vr7c16 = 0
different-colours-in-{r6 r7}c15 ==> Hr7c15 = 1
different-colours-in-r8{c15 c16} ==> Hr8c16 = 1
different-colours-in-{r8 r9}c15 ==> Hr9c15 = 1
whip[1]: Hr8c15{1 .} ==> Pr8c16 ≠ o
whip[1]: Vr7c15{1 .} ==> Pr7c15 ≠ o
P-single: Pr7c15 = se
w[1]-1-in-r7c14-asymmetric-ne-corner ==> Pr8c14 ≠ ew
P-single: Pr8c14 = sw
whip[1]: Pr7c15{se .} ==> Br6c15 ≠ e
B-single: Br6c15 = se
whip[1]: Br6c15{se .} ==> Nr6c15 ≠ 1, Pr7c16 ≠ ns
N-single: Nr6c15 = 2
P-single: Pr7c16 = nw
whip[1]: Vr8c15{0 .} ==> Pr9c15 ≠ ne, Pr9c15 ≠ ns
whip[1]: Pr9c15{sw .} ==> Br9c14 ≠ se, Br9c14 ≠ ew, Br9c14 ≠ sw, Br9c14 ≠ esw, Br9c14 ≠ o, Br9c14 ≠ e, Br9c14 ≠ s, Br9c14 ≠ w, Br9c15 ≠ e, Br9c15 ≠ s
whip[1]: Br9c15{w .} ==> Hr10c15 ≠ 1, Pr9c16 ≠ ns, Pr10c16 ≠ nw, Pr10c15 ≠ ne, Pr9c16 ≠ sw, Pr10c15 ≠ se, Pr10c15 ≠ ew
H-single: Hr10c15 = 0
P-single: Pr11c15 = ne
P-single: Pr10c16 = o
no-horizontal-line-{r9 r10}c15 ==> Ir10c15 = out
same-colour-in-r10{c15 c16} ==> Vr10c16 = 0
w[1]-2-in-r10c15-open-ne-corner ==> Hr11c15 = 1, Vr10c15 = 1, Vr11c15 = 0
no-vertical-line-r11{c14 c15} ==> Ir11c15 = in
different-colours-in-r11{c15 c16} ==> Hr11c16 = 1
whip[1]: Hr10c15{0 .} ==> Br10c15 ≠ ne, Br10c15 ≠ ns, Br10c15 ≠ nw
whip[1]: Pr11c15{ne .} ==> Br11c15 ≠ o, Br11c14 ≠ n, Br10c14 ≠ n, Br10c14 ≠ o, Br10c14 ≠ s, Br10c14 ≠ w, Br10c14 ≠ ns, Br10c14 ≠ nw, Br10c14 ≠ se, Br10c14 ≠ sw, Br10c14 ≠ esw, Br10c14 ≠ swn, Br10c14 ≠ nes, Br10c15 ≠ se, Br10c15 ≠ ew, Br11c14 ≠ e, Br11c14 ≠ ne, Br11c14 ≠ ns, Br11c14 ≠ nw, Br11c14 ≠ se, Br11c14 ≠ ew, Br11c14 ≠ esw, Br11c14 ≠ swn, Br11c14 ≠ wne, Br11c14 ≠ nes, Br11c15 ≠ e, Br11c15 ≠ s, Br11c15 ≠ w, Br11c15 ≠ nw, Br11c15 ≠ se, Br11c15 ≠ ew, Br11c15 ≠ sw, Br11c15 ≠ esw, Br11c15 ≠ swn, Br11c15 ≠ wne
B-single: Br10c15 = sw
whip[1]: Br10c15{sw .} ==> Pr11c16 ≠ ns
P-single: Pr11c16 = sw
whip[1]: Pr11c16{sw .} ==> Br11c15 ≠ ns, Br11c15 ≠ n
whip[1]: Br11c15{nes .} ==> Pr12c16 ≠ o, Pr12c16 ≠ sw, Pr12c15 ≠ ne, Pr12c15 ≠ ns, Pr12c15 ≠ nw, Nr11c15 ≠ 0, Nr11c15 ≠ 1
w[1]-3-in-r13c14-asymmetric-ne-corner ==> Vr13c14 = 1, Vr14c14 = 0
w[1]-2-in-r14c13-open-ne-corner ==> Hr15c13 = 1, Vr14c13 = 1, Hr15c12 = 0, Vr15c13 = 0
w[1]-diagonal-3-2-in-{r14c14...r13c13}-non-closed-nw-corner ==> Vr14c15 = 1, Vr13c13 = 1, Vr15c15 = 0, Hr15c15 = 0
w[1]-2-in-r13c15-open-sw-corner ==> Hr13c15 = 1, Vr13c16 = 1, Vr12c16 = 0
w[1]-diagonal-3-2-in-{r13c14...r12c15}-non-closed-ne-corner ==> Hr12c15 = 1
w[1]-3+diagonal-2-isolated-end-in-{r14c14+r14c13...sw} ==> Vr15c14 = 0
w[1]-3-in-r13c14-hit-by-horiz-line-at-ne ==> Vr12c15 = 0
w[1]-3-in-r14c14-closed-ne-corner ==> Pr15c14 ≠ sw, Pr15c14 ≠ ne
w[1]-3-in-r13c14-closed-nw-corner ==> Pr14c15 ≠ se, Pr14c15 ≠ nw, Pr14c15 ≠ o
horizontal-line-{r11 r12}c15 ==> Ir12c15 = out
no-vertical-line-r12{c14 c15} ==> Ir12c14 = out
no-vertical-line-r12{c13 c14} ==> Ir12c13 = out
no-horizontal-line-{r12 r13}c13 ==> Ir13c13 = out
no-horizontal-line-{r13 r14}c13 ==> Ir14c13 = out
no-vertical-line-r14{c13 c14} ==> Ir14c14 = out
vertical-line-r14{c14 c15} ==> Ir14c15 = in
no-horizontal-line-{r13 r14}c15 ==> Ir13c15 = in
no-vertical-line-r13{c14 c15} ==> Ir13c14 = in
no-horizontal-line-{r14 r15}c15 ==> Ir15c15 = in
no-vertical-line-r15{c14 c15} ==> Ir15c14 = in
no-vertical-line-r15{c13 c14} ==> Ir15c13 = in
no-vertical-line-r15{c12 c13} ==> Ir15c12 = in
no-horizontal-line-{r14 r15}c12 ==> Ir14c12 = in
vertical-line-r13{c12 c13} ==> Ir13c12 = in
same-colour-in-{r13 r14}c12 ==> Hr14c12 = 0
w[1]-1-in-r13c11-asymmetric-se-corner ==> Pr13c11 ≠ ns, Pr13c11 ≠ ne
different-colours-in-{r15 r16}c12 ==> Hr16c12 = 1
different-colours-in-{r15 r16}c13 ==> Hr16c13 = 1
different-colours-in-{r15 r16}c14 ==> Hr16c14 = 1
different-colours-in-r15{c15 c16} ==> Hr15c16 = 1
different-colours-in-{r15 r16}c15 ==> Hr16c15 = 1
different-colours-in-r14{c15 c16} ==> Hr14c16 = 1
different-colours-in-{r11 r12}c13 ==> Hr12c13 = 1
different-colours-in-{r11 r12}c14 ==> Hr12c14 = 1
whip[1]: Vr13c14{1 .} ==> Pr13c14 ≠ nw, Pr13c14 ≠ ew, Pr14c14 ≠ ew, Br13c13 ≠ ns, Br13c13 ≠ nw, Br13c13 ≠ sw, Br13c14 ≠ nes
whip[1]: Pr14c14{ns .} ==> Br13c13 ≠ se, Br14c13 ≠ ne, Br14c13 ≠ ns, Br14c13 ≠ nw, Br14c14 ≠ swn, Br14c14 ≠ wne
whip[1]: Br14c14{nes .} ==> Pr14c15 ≠ ew, Pr15c14 ≠ ns, Pr15c15 ≠ o, Pr15c15 ≠ ne, Pr15c15 ≠ ns, Pr15c15 ≠ se, Pr15c15 ≠ ew, Pr15c15 ≠ sw
P-single: Pr15c15 = nw
P-single: Pr15c14 = ew
whip[1]: Pr15c15{nw .} ==> Br15c15 ≠ n, Br15c14 ≠ s, Br15c14 ≠ e, Br15c14 ≠ o, Br14c15 ≠ s, Br14c15 ≠ e, Br14c15 ≠ n, Br14c15 ≠ o, Br14c15 ≠ ne, Br14c15 ≠ ns, Br14c15 ≠ se, Br14c15 ≠ sw, Br14c15 ≠ esw, Br14c15 ≠ swn, Br14c15 ≠ nes, Br15c14 ≠ w, Br15c14 ≠ ne, Br15c14 ≠ se, Br15c14 ≠ ew, Br15c14 ≠ sw, Br15c14 ≠ esw, Br15c14 ≠ wne, Br15c14 ≠ nes, Br15c15 ≠ w, Br15c15 ≠ nw, Br15c15 ≠ esw, Br15c15 ≠ nes
whip[1]: Br15c15{se .} ==> Pr16c15 ≠ ne, Pr16c15 ≠ nw, Pr15c16 ≠ nw, Pr15c16 ≠ sw, Nr15c15 ≠ 1, Nr15c15 ≠ 3
whip[1]: Br15c14{swn .} ==> Nr15c14 ≠ 0
whip[1]: Br14c15{wne .} ==> Nr14c15 ≠ 0
whip[1]: Pr15c14{ew .} ==> Br15c13 ≠ ne, Br15c13 ≠ w, Br15c13 ≠ s, Br15c13 ≠ e, Br15c13 ≠ o, Br14c13 ≠ se, Br14c13 ≠ ew, Br14c14 ≠ esw, Br15c13 ≠ se, Br15c13 ≠ ew, Br15c13 ≠ sw, Br15c13 ≠ esw, Br15c13 ≠ wne, Br15c13 ≠ nes, Br15c14 ≠ nw, Br15c14 ≠ swn
B-single: Br14c14 = nes
B-single: Br14c13 = sw
whip[1]: Br14c14{nes .} ==> Pr14c15 ≠ ns, Pr14c14 ≠ ns
P-single: Pr15c13 = ne
P-single: Pr13c16 = sw
P-single: Pr14c14 = ne
P-single: Pr14c15 = sw
whip[1]: Pr15c13{ne .} ==> Br15c12 ≠ n, Br14c12 ≠ ns, Br14c12 ≠ nw, Br14c12 ≠ se, Br14c12 ≠ sw, Br15c12 ≠ e, Br15c12 ≠ ne, Br15c12 ≠ ns, Br15c12 ≠ nw, Br15c12 ≠ se, Br15c12 ≠ ew, Br15c12 ≠ esw, Br15c12 ≠ swn, Br15c12 ≠ wne, Br15c12 ≠ nes, Br15c13 ≠ nw, Br15c13 ≠ swn
whip[1]: Br15c13{ns .} ==> Pr16c13 ≠ ne, Pr16c13 ≠ nw, Pr16c14 ≠ ne, Pr16c14 ≠ nw, Nr15c13 ≠ 0, Nr15c13 ≠ 3
whip[1]: Br15c12{sw .} ==> Pr15c12 ≠ se, Pr15c12 ≠ ew, Nr15c12 ≠ 3
whip[1]: Pr15c12{nw .} ==> Vr14c12 ≠ 0, Br14c11 ≠ w, Br14c11 ≠ ns, Br14c11 ≠ sw, Br14c12 ≠ ne, Br15c11 ≠ w, Br15c11 ≠ ne, Br15c11 ≠ sw, Br15c11 ≠ wne, Br15c11 ≠ nes, Br14c11 ≠ o, Br14c11 ≠ n, Br14c11 ≠ s, Br15c11 ≠ o, Br15c11 ≠ s
V-single: Vr14c12 = 1
B-single: Br14c12 = ew
vertical-line-r14{c11 c12} ==> Ir14c11 = out
different-colours-in-r14{c10 c11} ==> Hr14c11 = 1

LOOP[46]: Vr14c11-Hr14c10-Vr13c10-Hr13c9-Vr12c9-Vr11c9-Hr11c9-Vr10c10-Hr10c9-Vr9c9-Hr9c9-Vr8c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Vr8c8-Vr9c8-Hr10c7-Hr10c6-Vr10c6-Hr11c6-Hr11c7-Vr11c8-Vr12c8-Hr13c7-Vr13c7-Hr14c6-Vr13c6-Vr12c6-Hr12c5-Hr12c4-Vr12c4-Hr13c4-Vr13c5-Vr14c5-Hr15c5-Vr15c6-Hr16c6-Vr15c7-Hr15c7-Vr14c8-Hr14c8-Vr14c9-Hr15c9- ==> Hr15c10 = 0
no-horizontal-line-{r14 r15}c10 ==> Ir15c10 = in
no-vertical-line-r13{c10 c11} ==> Ir13c11 = out
different-colours-in-r13{c11 c12} ==> Hr13c12 = 1
different-colours-in-{r15 r16}c10 ==> Hr16c10 = 1
different-colours-in-r15{c9 c10} ==> Hr15c10 = 1

LOOP[48]: Hr16c10-Vr15c10-Hr15c9-Vr14c9-Hr14c8-Vr14c8-Hr15c7-Vr15c7-Hr16c6-Vr15c6-Hr15c5-Vr14c5-Vr13c5-Hr13c4-Vr12c4-Hr12c4-Hr12c5-Vr12c6-Vr13c6-Hr14c6-Vr13c7-Hr13c7-Vr12c8-Vr11c8-Hr11c7-Hr11c6-Vr10c6-Hr10c6-Hr10c7-Vr9c8-Vr8c8-Vr7c8-Hr7c8-Vr7c9-Hr8c9-Vr8c10-Hr9c9-Vr9c9-Hr10c9-Vr10c10-Hr11c9-Vr11c9-Vr12c9-Hr13c9-Vr13c10-Hr14c10-Vr14c11- ==> Vr15c11 = 0
no-vertical-line-r15{c10 c11} ==> Ir15c11 = in
same-colour-in-r15{c11 c12} ==> Vr15c12 = 0
different-colours-in-{r15 r16}c11 ==> Hr16c11 = 1
different-colours-in-{r14 r15}c11 ==> Hr15c11 = 1

LOOP[68]: Vr13c13-Vr14c13-Hr15c13-Hr15c14-Vr14c15-Hr14c14-Vr13c14-Hr13c14-Hr13c15-Vr13c16-Vr14c16-Vr15c16-Hr16c15-Hr16c14-Hr16c13-Hr16c12-Hr16c11-Hr16c10-Vr15c10-Hr15c9-Vr14c9-Hr14c8-Vr14c8-Hr15c7-Vr15c7-Hr16c6-Vr15c6-Hr15c5-Vr14c5-Vr13c5-Hr13c4-Vr12c4-Hr12c4-Hr12c5-Vr12c6-Vr13c6-Hr14c6-Vr13c7-Hr13c7-Vr12c8-Vr11c8-Hr11c7-Hr11c6-Vr10c6-Hr10c6-Hr10c7-Vr9c8-Vr8c8-Vr7c8-Hr7c8-Vr7c9-Hr8c9-Vr8c10-Hr9c9-Vr9c9-Hr10c9-Vr10c10-Hr11c9-Vr11c9-Vr12c9-Hr13c9-Vr13c10-Hr14c10-Vr14c11-Hr15c11-Vr14c12-Vr13c12- ==> Hr13c12 = 0
no-horizontal-line-{r12 r13}c12 ==> Ir12c12 = in
different-colours-in-r12{c12 c13} ==> Hr12c13 = 1
whip[1]: Vr14c12{1 .} ==> Pr14c12 ≠ ne, Pr14c12 ≠ ew
whip[1]: Pr14c12{sw .} ==> Br13c12 ≠ se, Br13c12 ≠ sw, Br13c12 ≠ esw, Br13c12 ≠ swn, Br13c12 ≠ nes, Br13c11 ≠ n, Br13c11 ≠ w, Br13c12 ≠ s, Br13c12 ≠ ns
whip[1]: Br13c12{wne .} ==> Pr14c13 ≠ ew
P-single: Pr14c13 = ns
whip[1]: Pr14c13{ns .} ==> Br13c12 ≠ n, Br13c12 ≠ o, Br13c12 ≠ w, Br13c12 ≠ nw, Br13c13 ≠ ne
B-single: Br13c13 = ew
whip[1]: Br13c13{ew .} ==> Pr13c13 ≠ ew, Pr13c13 ≠ ne
whip[1]: Pr13c13{sw .} ==> Br12c12 ≠ nw, Br12c12 ≠ se, Br12c12 ≠ esw, Br12c12 ≠ nes, Br12c13 ≠ se, Br12c13 ≠ sw, Br12c13 ≠ esw, Br12c13 ≠ swn, Br12c13 ≠ nes, Br12c12 ≠ o, Br12c12 ≠ n, Br12c12 ≠ w, Br12c13 ≠ s, Br12c13 ≠ ns
whip[1]: Br12c12{wne .} ==> Nr12c12 ≠ 0
whip[1]: Br13c12{wne .} ==> Nr13c12 ≠ 0
whip[1]: Br13c11{s .} ==> Hr13c11 ≠ 1, Pr13c11 ≠ se, Pr13c12 ≠ nw, Pr13c12 ≠ ew, Pr13c12 ≠ sw, Pr14c11 ≠ nw
H-single: Hr13c11 = 0
P-single: Pr13c11 = o
no-horizontal-line-{r12 r13}c11 ==> Ir12c11 = out
different-colours-in-r12{c11 c12} ==> Hr12c12 = 1

LOOP[240]: Vr12c12-Vr13c12-Vr14c12-Hr15c11-Vr14c11-Hr14c10-Vr13c10-Hr13c9-Vr12c9-Vr11c9-Hr11c9-Vr10c10-Hr10c9-Vr9c9-Hr9c9-Vr8c10-Hr8c9-Vr7c9-Hr7c8-Vr7c8-Vr8c8-Vr9c8-Hr10c7-Hr10c6-Vr10c6-Hr11c6-Hr11c7-Vr11c8-Vr12c8-Hr13c7-Vr13c7-Hr14c6-Vr13c6-Vr12c6-Hr12c5-Hr12c4-Vr12c4-Hr13c4-Vr13c5-Vr14c5-Hr15c5-Vr15c6-Hr16c6-Vr15c7-Hr15c7-Vr14c8-Hr14c8-Vr14c9-Hr15c9-Vr15c10-Hr16c10-Hr16c11-Hr16c12-Hr16c13-Hr16c14-Hr16c15-Vr15c16-Vr14c16-Vr13c16-Hr13c15-Hr13c14-Vr13c14-Hr14c14-Vr14c15-Hr15c14-Hr15c13-Vr14c13-Vr13c13-Vr12c13-Hr12c13-Hr12c14-Hr12c15-Vr11c16-Hr11c15-Vr10c15-Hr10c14-Vr10c14-Hr11c13-Vr10c13-Vr9c13-Vr8c13-Hr8c13-Vr8c14-Hr9c14-Hr9c15-Vr8c16-Hr8c15-Vr7c15-Hr7c15-Vr6c16-Vr5c16-Vr4c16-Hr4c15-Vr4c15-Vr5c15-Hr6c14-Vr6c14-Hr7c13-Hr7c12-Vr6c12-Vr5c12-Hr5c12-Vr4c13-Hr4c13-Vr3c14-Hr3c13-Vr2c13-Hr2c13-Hr2c14-Vr2c15-Hr3c15-Vr2c16-Vr1c16-Hr1c15-Hr1c14-Hr1c13-Hr1c12-Vr1c12-Vr2c12-Vr3c12-Hr4c11-Vr3c11-Vr2c11-Hr2c10-Vr1c10-Hr1c9-Vr1c9-Hr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Hr2c5-Vr1c5-Hr1c4-Vr1c4-Hr2c3-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Hr2c1-Vr2c2-Hr3c2-Vr3c3-Hr4c2-Hr4c1-Vr4c1-Hr5c1-Vr5c2-Hr6c1-Vr6c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Vr11c1-Vr12c1-Vr13c1-Hr14c1-Vr14c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Vr15c3-Hr15c3-Vr14c4-Hr14c3-Vr13c3-Hr13c2-Vr12c2-Vr11c2-Hr11c2-Vr10c3-Hr10c2-Vr9c2-Vr8c2-Vr7c2-Hr7c2-Hr7c3-Vr6c4-Hr6c3-Vr5c3-Hr5c3-Vr4c4-Vr3c4-Hr3c4-Vr3c5-Hr4c5-Vr3c6-Hr3c6-Vr3c7-Vr4c7-Hr5c6-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Vr7c6-Hr8c5-Hr8c4-Hr8c3-Vr8c3-Hr9c3-Vr9c4-Vr10c4-Hr11c4-Vr10c5-Vr9c5-Hr9c5-Hr9c6-Vr8c7-Vr7c7-Vr6c7-Hr6c7-Vr5c8-Vr4c8-Vr3c8-Hr3c8-Hr3c9-Vr3c10-Hr4c9-Vr4c9-Hr5c9-Hr5c10-Vr5c11-Hr6c10-Vr6c10-Hr7c10-Vr7c11-Hr8c11-Vr8c12-Hr9c11-Vr9c11-Hr10c11-Vr10c12-Hr11c11-Vr11c11- ==> Hr12c11 = 1

PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOXOOXOXOOXXXX
OXXXXXXXXXOXOOX
OOXOXOXOOXOXXOO
XXXOOOXOXXXXOOX
OXOOOXXOOOXOOOX
XXXOXXOOOXXOOXX
XOOOOXOXOOXXXXO
XOXXXXOXXOOXOXX
XOOXOOOXOOXXOOO
XXOXOXXXXOOXOXO
XOOOOOOXOOXXXXX
XOOXXOOXOOOXOOO
XXOOXOXXXOOXOXX
OXXOXXXOXXOXOOX
XXOOOXOOOXXXXXX

.———.———.   .———.   .   .———.   .———.   .   .———.———.———.———.
|       |   | 3 |       | 3 | 3 |   |     1 |               |
.———.   .———.   .———.———.   .———.   .———.   .   .———.———.   .
  2 |     1                   2         |   | 2 |     2 | 3 |
.   .———.   .———.   .———.   .———.———.   .   .   .———.   .———.
  1   3 | 2 | 3 |   |   | 2 | 2   3 | 2 |   | 1   3 |
.———.———.   .   .———.   .   .   .———.   .———.   .———.   .———.
| 3         |           |   |   |         1     |       |   |
.———.   .———.   .   .———.   .   .———.———.   .———.   .   .   .
  3 | 2 |     0     | 2     | 1   1   3 |   | 2   0   2 | 2 |
.———.   .———.   .———.   .———.   .   .———.   .   .   .———.   .
|         3 | 2 |       | 2   1     |       |       |       |
.   .———.———.   .———.   .   .———.   .———.   .———.———.   .———.
| 2 | 2           3 |   |   | 3 |       |     1   2   1 |
.   .   .———.———.———.   .   .   .———.   .———.   .———.   .———.
|   |   | 3   1       2 |   |     3 |       |   | 3 | 2     |
.   .   .———.   .———.———.   .   .———.   .———.   .   .———.———.
|   | 2     | 2 |           | 2 |     1 | 3     | 1       1
.   .———.   .   .   .———.———.   .———.   .———.   .   .———.   .
|     3 | 2 | 3 | 2 |     2   0   3 |     3 |   | 3 |   | 2
.   .———.   .———.   .———.———.   .———.   .———.   .———.   .———.
| 2 | 2                   2 |   | 2     |                   |
.   .   .   .———.———.   .   .   .   .   .———.   .———.———.———.
|   |     1 |     2 | 1     |   |           |   |         2
.   .———.   .———.   .   .———.   .———.   .   .   .   .———.———.
|       | 2   2 | 2 | 3 |         2 |     1 |   | 2 | 3   2 |
.———.   .———.   .   .———.   .———.   .———.   .   .   .———.   .
  3 |     3 |   | 2   1     | 3 |       |   | 2 | 2   3 |   |
.———.   .———.   .———.   .———.   .———.   .———.   .———.———.   .
|       |           |   |     0     |                       |
.———.———.   .   .   .———.   .   .   .———.———.———.———.———.———.

init-time = 1.19s, solve-time = 5m 42.48s, total-time = 5m 43.67s
nb-facts=<Fact-439150>
Quasi-Loop max length = 240
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
