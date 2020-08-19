
(solve
15 15
1 3 . 0 0 . 3 2 1 . . . 2 . .
2 1 . . . 3 . . . 1 3 . 0 . 1
. . . 2 1 2 . 0 1 . . 1 1 1 .
3 1 1 . 2 2 . . 2 . . . 2 . 3
2 . 2 . . 1 . 2 . . . . 1 2 2
2 . . 1 . 2 3 . . . . 1 2 . 3
1 . 1 . 3 . . . . . . 2 . . .
. . . 1 . 1 2 2 . 3 1 . . 1 2
2 1 . 1 . . . . . . . . 0 . 2
3 . 1 . . 1 2 . . 1 . . . 3 2
2 . 1 3 . 2 . . . 2 3 1 . 2 .
. 2 . . 1 . 2 . 1 1 . 2 3 2 3
. 2 1 2 . . 1 . 1 2 . . . 2 .
1 0 . . . . . . 2 2 . 1 . . .
. . 3 . 3 . 1 2 . . . . 2 1 1
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 3 . 0 0 . 3 2 1 . . . 2 . .
2 1 . . . 3 . . . 1 3 . 0 . 1
. . . 2 1 2 . 0 1 . . 1 1 1 .
3 1 1 . 2 2 . . 2 . . . 2 . 3
2 . 2 . . 1 . 2 . . . . 1 2 2
2 . . 1 . 2 3 . . . . 1 2 . 3
1 . 1 . 3 . . . . . . 2 . . .
. . . 1 . 1 2 2 . 3 1 . . 1 2
2 1 . 1 . . . . . . . . 0 . 2
3 . 1 . . 1 2 . . 1 . . . 3 2
2 . 1 3 . 2 . . . 2 3 1 . 2 .
. 2 . . 1 . 2 . 1 1 . 2 3 2 3
. 2 1 2 . . 1 . 1 2 . . . 2 .
1 0 . . . . . . 2 2 . 1 . . .
. . 3 . 3 . 1 2 . . . . 2 1 1

start init-grid-structure 0.0332729816436768
start create-csp-variables
start create-labels 0.00284194946289062
start init-physical-csp-links 0.0270090103149414
start init-physical-non-csp-links 63.2830049991608
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 21.0408918857574
     start init-physical-BN-non-csp-links at local time 103.624271869659
     start init-physical-BP-non-csp-links at local time 220.987630844116
     end init-physical-BP-non-csp-links at local time 2113.78044581413
end init-physical-non-csp-links 2177.0635008812
start init-corner-B-c-values 2177.09704113007
start init-outer-B-candidates 2177.09711003304
start init-outer-I-candidates 2177.09839916229
start init-H-candidates 2177.09903907776
start init-V-candidates 2177.10820817947
start init-P-candidates 2177.11707997322
start init-inner-I-candidates 2177.13464713097
start init-inner-N-and-B-candidates 2177.14111018181
start solution 2177.17592906952
entering BRT
w[0]-0-in-r14c2 ==> Hr15c2 = 0, Hr14c2 = 0, Vr14c3 = 0, Vr14c2 = 0
w[0]-0-in-r9c13 ==> Hr10c13 = 0, Hr9c13 = 0, Vr9c14 = 0, Vr9c13 = 0
w[0]-0-in-r3c8 ==> Hr4c8 = 0, Hr3c8 = 0, Vr3c9 = 0, Vr3c8 = 0
w[0]-0-in-r2c13 ==> Hr3c13 = 0, Hr2c13 = 0, Vr2c14 = 0, Vr2c13 = 0
w[0]-0-in-r1c5 ==> Hr2c5 = 0, Hr1c5 = 0, Vr1c6 = 0, Vr1c5 = 0
w[0]-0-in-r1c4 ==> Hr2c4 = 0, Hr1c4 = 0, Vr1c4 = 0
w[1]-1-in-se-corner ==> Vr15c16 = 0, Hr16c15 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-diagonal-3-0-in-{r15c3...r14c2} ==> Vr15c3 = 1, Hr15c3 = 1
w[1]-diagonal-3-0-in-{r10c14...r9c13} ==> Vr10c14 = 1, Hr10c14 = 1
w[1]-diagonal-3-0-in-{r2c6...r1c5} ==> Vr2c6 = 1, Hr2c6 = 1
w[1]-diagonal-3s-in-{r1c7...r2c6} ==> Vr1c8 = 1, Hr3c6 = 1, Hr1c7 = 1, Vr3c6 = 0, Hr3c5 = 0, Hr1c8 = 0
w[1]-3-in-r1c7-hit-by-horiz-line-at-sw ==> Vr2c7 = 0
w[1]-diagonal-1-1-in-{r1c1...r2c2}-with-no-nw-outer-sides ==> Hr3c2 = 0, Vr2c3 = 0
w[1]-adjacent-1-1-on-edge-in-r15{c14 c15} ==> Vr15c15 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c13 c14} ==> Vr3c14 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c12 c13} ==> Vr3c13 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c1 c2} ==> Hr2c1 = 0, Hr1c2 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r2 r1}c2 ==> Vr1c2 = 1
w[1]-adjacent-1-2-on-edge-in-{r1 r2}c1-bkwd-diag-2s-3...r1c2 ==> Vr1c3 = 1, Vr3c1 = 1
w[1]-3-in-r4c1-hit-by-verti-line-at-nw ==> Vr4c2 = 1, Hr5c1 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-r4{c2 c1} ==> Vr4c3 = 0, Hr4c2 = 0
w[1]-3-in-r15c3-closed-nw-corner ==> Pr16c4 ≠ nw, Pr16c4 ≠ o
w[1]-3-in-r10c14-closed-nw-corner ==> Pr11c15 ≠ se, Pr11c15 ≠ nw, Pr11c15 ≠ o
w[1]-3-in-r4c1-closed-se-corner ==> Pr4c1 ≠ se, Pr4c1 ≠ o
w[1]-3-in-r2c6-closed-sw-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne, Pr2c7 ≠ o
w[1]-3-in-r2c6-closed-nw-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ nw
w[1]-3-in-r1c2-closed-ne-corner ==> Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r1c2-closed-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
w[1]-3-in-r6c7-asymmetric-ne-corner ==> Vr6c7 = 1, Hr7c7 = 1, Vr7c7 = 0, Hr7c6 = 0
P-single: Pr2c5 = o
V-single: Vr2c5 = 0
P-single: Pr1c6 = o
H-single: Hr1c6 = 0
P-single: Pr1c5 = o
P-single: Pr1c4 = o
w[1]-1-in-r15c15-symmetric-se-corner ==> Pr15c15 ≠ se, Pr15c15 ≠ nw, Pr15c15 ≠ o
w[1]-1-in-r13c3-symmetric-sw-corner ==> Pr13c4 ≠ sw, Pr13c4 ≠ ne, Pr13c4 ≠ o
w[1]-1-in-r8c14-symmetric-sw-corner ==> Pr8c15 ≠ sw, Pr8c15 ≠ ne, Pr8c15 ≠ o
w[1]-1-in-r3c14-symmetric-nw-corner ==> Pr4c15 ≠ se, Pr4c15 ≠ nw, Pr4c15 ≠ o
w[1]-3-in-r4c15-asymmetric-nw-corner ==> Vr4c16 = 1, Hr5c15 = 1, Vr5c16 = 0
w[1]-diagonal-closed-3-1-in-{r4c15...r3c14} ==> Hr3c14 = 0
w[1]-1-in-r3c12-symmetric-ne-corner ==> Pr4c12 ≠ sw, Pr4c12 ≠ ne, Pr4c12 ≠ o
w[1]-1-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw
w[1]-1-in-r2c2-asymmetric-nw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne
entering level Loop with <Fact-197477>
entering level Col with <Fact-197555>
no-vertical-line-r15{c15 c16} ==> Ir15c15 = out
no-vertical-line-r15{c14 c15} ==> Ir15c14 = out
no-vertical-line-r5{c15 c16} ==> Ir5c15 = out
horizontal-line-{r4 r5}c15 ==> Ir4c15 = in
vertical-line-r3{c0 c1} ==> Ir3c1 = in
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
no-horizontal-line-{r1 r2}c1 ==> Ir2c1 = out
vertical-line-r1{c1 c2} ==> Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
no-vertical-line-r1{c3 c4} ==> Ir1c4 = out
no-vertical-line-r1{c4 c5} ==> Ir1c5 = out
no-vertical-line-r1{c5 c6} ==> Ir1c6 = out
horizontal-line-{r1 r2}c6 ==> Ir2c6 = in
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
vertical-line-r2{c5 c6} ==> Ir2c5 = out
no-vertical-line-r2{c4 c5} ==> Ir2c4 = out
no-horizontal-line-{r2 r3}c5 ==> Ir3c5 = out
no-vertical-line-r3{c5 c6} ==> Ir3c6 = out
no-horizontal-line-{r0 r1}c8 ==> Ir1c8 = out
vertical-line-r1{c7 c8} ==> Ir1c7 = in
same-colour-in-{r1 r2}c7 ==> Hr2c7 = 0
different-colours-in-r1{c6 c7} ==> Hr1c7 = 1
w[1]-3-in-r1c7-closed-nw-corner ==> Pr2c8 ≠ se, Pr2c8 ≠ nw
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
w[1]-2-in-r2c1-open-nw-corner ==> Vr2c2 = 1, Vr3c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r4{c2 c1} ==> Hr4c1 = 1
w[1]-3-in-r4c1-closed-ne-corner ==> Pr5c1 ≠ ne
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
vertical-line-r4{c1 c2} ==> Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c2 ==> Ir3c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = in
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-r2{c3 c4} ==> Hr2c4 = 1
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
same-colour-in-{r15 r16}c14 ==> Hr16c14 = 0
Starting_init_links_with_<Fact-197865>
5550 candidates, 18383 csp-links and 77287 links. Density = 0.5%
starting non trivial part of solution
Entering_level_W1_with_<Fact-389210>
whip[1]: Hr16c14{0 .} ==> Br15c14 ≠ s, Br16c14 ≠ n, Pr16c14 ≠ ne, Pr16c14 ≠ ew, Pr16c15 ≠ nw, Pr16c15 ≠ ew
B-single: Br16c14 = o
w[1]-1-in-r14c12-symmetric-se-corner ==> Pr14c12 ≠ se, Pr14c12 ≠ nw, Pr14c12 ≠ o
w[1]-1-in-r15c15-symmetric-sw-corner ==> Pr15c16 ≠ sw, Pr15c16 ≠ o
whip[1]: Pr15c16{nw .} ==> Vr14c16 ≠ 0, Br14c15 ≠ w, Br14c15 ≠ ns, Br14c15 ≠ nw, Br14c15 ≠ sw, Br14c15 ≠ swn, Br15c15 ≠ w, Br14c15 ≠ o, Br14c15 ≠ n, Br14c15 ≠ s
V-single: Vr14c16 = 1
B-single: Br15c15 = n
H-single: Hr15c15 = 1
P-single: Pr16c16 = o
P-single: Pr16c15 = o
P-single: Pr15c16 = nw
w[1]-1-in-r15c14-symmetric-se-corner ==> Pr15c14 ≠ se, Pr15c14 ≠ nw
horizontal-line-{r14 r15}c15 ==> Ir14c15 = in
whip[1]: Vr14c16{1 .} ==> Br14c16 ≠ o, Pr14c16 ≠ o, Pr14c16 ≠ nw
B-single: Br14c16 = w
whip[1]: Pr14c16{sw .} ==> Br13c15 ≠ nw, Br13c15 ≠ se, Br13c15 ≠ esw, Br13c15 ≠ nes, Br13c15 ≠ o, Br13c15 ≠ n, Br13c15 ≠ w
whip[1]: Br13c15{wne .} ==> Nr13c15 ≠ 0
whip[1]: Hr15c15{1 .} ==> Br14c15 ≠ e, Br14c15 ≠ ne, Br14c15 ≠ ew, Br14c15 ≠ wne
whip[1]: Br14c15{nes .} ==> Pr14c15 ≠ se, Nr14c15 ≠ 0, Nr14c15 ≠ 1
whip[1]: Pr16c16{o .} ==> Br16c15 ≠ n
B-single: Br16c15 = o
whip[1]: Pr16c15{o .} ==> Br15c14 ≠ e
whip[1]: Pr15c14{ew .} ==> Br14c13 ≠ nw, Br14c13 ≠ se, Br14c13 ≠ esw, Br14c13 ≠ nes, Br14c14 ≠ sw, Br14c14 ≠ esw, Br14c14 ≠ swn, Br15c13 ≠ sw, Br14c13 ≠ o, Br14c13 ≠ n, Br14c13 ≠ w, Br14c14 ≠ o, Br14c14 ≠ n, Br14c14 ≠ e, Br14c14 ≠ ne, Br15c13 ≠ ne
whip[1]: Br14c14{nes .} ==> Nr14c14 ≠ 0
whip[1]: Br14c13{wne .} ==> Nr14c13 ≠ 0
whip[1]: Pr15c15{ew .} ==> Br14c14 ≠ nw, Br14c14 ≠ se, Br14c14 ≠ nes, Br14c14 ≠ w
whip[1]: Pr14c12{sw .} ==> Br13c11 ≠ nw, Br13c11 ≠ se, Br13c11 ≠ esw, Br13c11 ≠ nes, Br13c11 ≠ o, Br13c11 ≠ n, Br13c11 ≠ w, Br14c12 ≠ e, Br14c12 ≠ s
whip[1]: Br14c12{w .} ==> Hr15c12 ≠ 1, Vr14c13 ≠ 1, Pr14c13 ≠ ns, Pr15c12 ≠ ne, Pr15c13 ≠ nw, Pr14c13 ≠ se, Pr14c13 ≠ sw, Pr15c12 ≠ se, Pr15c12 ≠ ew
V-single: Vr14c13 = 0
H-single: Hr15c12 = 0
whip[1]: Vr14c13{0 .} ==> Br14c13 ≠ ew, Br14c13 ≠ sw, Br14c13 ≠ swn, Br14c13 ≠ wne
whip[1]: Br14c13{ns .} ==> Nr14c13 ≠ 3
whip[1]: Hr15c12{0 .} ==> Br15c12 ≠ n, Br15c12 ≠ ne, Br15c12 ≠ ns, Br15c12 ≠ nw, Br15c12 ≠ swn, Br15c12 ≠ wne, Br15c12 ≠ nes
whip[1]: Pr15c13{se .} ==> Br15c13 ≠ ns, Br15c13 ≠ ew
whip[1]: Br13c11{wne .} ==> Nr13c11 ≠ 0
whip[1]: Pr16c13{ew .} ==> Br16c12 ≠ o, Hr16c12 ≠ 0, Br15c12 ≠ ew, Br15c12 ≠ o, Br15c12 ≠ e, Br15c12 ≠ w
H-single: Hr16c12 = 1
B-single: Br16c12 = n
horizontal-line-{r15 r16}c12 ==> Ir15c12 = in
no-horizontal-line-{r14 r15}c12 ==> Ir14c12 = in
no-vertical-line-r14{c12 c13} ==> Ir14c13 = in
whip[1]: Pr16c12{ew .} ==> Br15c11 ≠ nw, Br15c11 ≠ se, Br15c11 ≠ esw, Br15c11 ≠ nes, Br15c11 ≠ o, Br15c11 ≠ n, Br15c11 ≠ w
whip[1]: Br15c11{wne .} ==> Nr15c11 ≠ 0
whip[1]: Br15c12{esw .} ==> Nr15c12 ≠ 0
whip[1]: Hr2c2{0 .} ==> Br2c2 ≠ n, Pr2c2 ≠ ew, Pr2c3 ≠ ew, Pr2c3 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ nes
P-single: Pr2c2 = ns
B-single: Br1c2 = wne
P-single: Pr1c2 = se
P-single: Pr1c3 = sw
w[1]-1-in-r1c1-asymmetric-ne-corner ==> Pr2c1 ≠ ns
whip[1]: Pr2c2{ns .} ==> Br2c2 ≠ e, Br1c1 ≠ s, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c2 ≠ s
B-single: Br2c2 = w
P-single: Pr2c3 = ne
B-single: Br1c1 = e
P-single: Pr3c2 = nw
P-single: Pr1c1 = o
P-single: Pr2c1 = o
whip[1]: Pr2c3{ne .} ==> Br2c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s, Br1c3 ≠ w, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ wne, Br1c3 ≠ nes, Br2c3 ≠ e, Br2c3 ≠ s, Br2c3 ≠ w, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c3 ≠ wne
whip[1]: Br2c3{nes .} ==> Pr2c4 ≠ o, Nr2c3 ≠ 0
P-single: Pr2c4 = sw
whip[1]: Pr2c4{sw .} ==> Br2c4 ≠ ns, Br2c4 ≠ ne, Br2c4 ≠ s, Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Br2c3 ≠ ns, Br2c3 ≠ n, Br1c3 ≠ esw, Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ nes
whip[1]: Br2c4{esw .} ==> Pr3c4 ≠ o, Pr3c4 ≠ se, Pr3c4 ≠ ew, Pr3c4 ≠ sw, Nr2c4 ≠ 0
whip[1]: Pr3c4{nw .} ==> Br3c3 ≠ ne, Br3c3 ≠ wne, Br3c3 ≠ nes, Br3c4 ≠ nw
whip[1]: Br3c4{sw .} ==> Pr4c5 ≠ o, Pr4c5 ≠ se
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ nw
whip[1]: Br4c5{sw .} ==> Pr5c6 ≠ o, Pr5c6 ≠ se
whip[1]: Br1c3{swn .} ==> Nr1c3 ≠ 0, Nr1c3 ≠ 1
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 1
whip[1]: Pr3c2{nw .} ==> Br3c2 ≠ n, Br3c1 ≠ s, Br3c1 ≠ e, Br3c1 ≠ o, Br2c1 ≠ ew, Br3c1 ≠ w, Br3c1 ≠ ne, Br3c1 ≠ se, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ wne, Br3c1 ≠ nes, Br3c2 ≠ w, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ nes
B-single: Br2c1 = se
P-single: Pr3c1 = se
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ n, Br3c1 ≠ ns
whip[1]: Br3c1{swn .} ==> Pr4c2 ≠ ne, Pr4c2 ≠ ns, Pr4c2 ≠ nw, Nr3c1 ≠ 0, Nr3c1 ≠ 1
whip[1]: Br3c2{se .} ==> Nr3c2 ≠ 3
whip[1]: Pr3c3{se .} ==> Br3c3 ≠ ns, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ n, Br3c3 ≠ w
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ swn
B-single: Br1c3 = sw
N-single: Nr1c3 = 2
whip[1]: Vr5c1{1 .} ==> Br5c1 ≠ se, Br5c0 ≠ o, Pr6c1 ≠ se, Br5c1 ≠ ne, Br5c1 ≠ ns
B-single: Br5c0 = e
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ nw, Br6c1 ≠ se, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c2 ≠ o, Br7c2 ≠ e, Br7c2 ≠ s
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0
whip[1]: Vr4c1{0 .} ==> Br4c1 ≠ wne, Br4c0 ≠ e, Pr4c1 ≠ ns, Pr5c1 ≠ ns, Br4c1 ≠ esw, Br4c1 ≠ swn
P-single: Pr6c1 = ns
H-single: Hr6c1 = 0
V-single: Vr6c1 = 1
P-single: Pr5c1 = se
P-single: Pr4c1 = ne
B-single: Br4c1 = nes
P-single: Pr4c2 = sw
P-single: Pr5c2 = nw
B-single: Br4c0 = o
w[1]-1-in-r4c2-asymmetric-nw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ew, Pr5c3 ≠ ns, Pr5c3 ≠ ne
w[1]-1-in-r6c4-symmetric-nw-corner ==> Pr7c5 ≠ se, Pr7c5 ≠ nw, Pr7c5 ≠ o
w[1]-3-in-r7c5-asymmetric-nw-corner ==> Vr7c6 = 1, Hr8c5 = 1, Vr8c6 = 0, Hr8c6 = 0
w[1]-diagonal-closed-3-1-in-{r7c5...r6c4} ==> Vr6c4 = 0, Hr6c4 = 0
w[1]-1-in-r4c2-asymmetric-sw-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns
vertical-line-r6{c0 c1} ==> Ir6c1 = in
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ sw, Br6c1 ≠ ne, Br6c1 ≠ ns
whip[1]: Br6c1{sw .} ==> Pr7c1 ≠ se
w[1]-1-in-r7c1-asymmetric-nw-corner ==> Pr8c2 ≠ sw, Pr8c2 ≠ ew, Pr8c2 ≠ ns, Pr8c2 ≠ ne
whip[1]: Pr8c2{se .} ==> Br7c2 ≠ sw, Br7c2 ≠ esw, Br8c1 ≠ ne, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ nes, Br7c1 ≠ e, Br7c1 ≠ s, Br8c2 ≠ n, Br8c2 ≠ w
whip[1]: Br7c1{w .} ==> Hr8c1 ≠ 1, Vr7c2 ≠ 1, Pr8c1 ≠ ne, Pr7c2 ≠ ns, Pr8c2 ≠ nw, Pr8c1 ≠ se, Pr7c2 ≠ sw
V-single: Vr7c2 = 0
H-single: Hr8c1 = 0
whip[1]: Vr7c2{0 .} ==> Br7c2 ≠ w, Br7c2 ≠ ew
whip[1]: Br7c2{nes .} ==> Hr7c2 ≠ 0, Pr7c3 ≠ o, Pr7c3 ≠ ne, Pr7c3 ≠ ns, Pr7c3 ≠ se
H-single: Hr7c2 = 1
whip[1]: Hr7c2{1 .} ==> Br6c2 ≠ o, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ w, Br6c2 ≠ ne, Br6c2 ≠ nw, Br6c2 ≠ ew, Br6c2 ≠ wne
whip[1]: Br6c2{nes .} ==> Nr6c2 ≠ 0
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn
whip[1]: Hr8c1{0 .} ==> Br8c1 ≠ n, Br8c1 ≠ ns, Br8c1 ≠ nw, Br8c1 ≠ swn
whip[1]: Vr6c1{1 .} ==> Br6c0 ≠ o
B-single: Br6c0 = e
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ew
B-single: Br5c1 = nw
whip[1]: Pr4c1{ne .} ==> Br3c1 ≠ nw
B-single: Br3c1 = swn
N-single: Nr3c1 = 3
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ s, Br4c2 ≠ e, Br4c2 ≠ n, Br3c2 ≠ s, Br3c2 ≠ se
B-single: Br4c2 = w
whip[1]: Pr4c3{ne .} ==> Br3c3 ≠ s, Br3c3 ≠ nw, Br3c3 ≠ se, Br4c3 ≠ w
whip[1]: Br4c3{s .} ==> Pr4c4 ≠ sw, Pr5c4 ≠ nw
whip[1]: Pr5c4{ew .} ==> Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br5c3 ≠ sw, Br5c4 ≠ se, Br4c4 ≠ o, Br4c4 ≠ n, Br4c4 ≠ e, Br4c4 ≠ ne, Br5c3 ≠ ne, Br5c4 ≠ o, Br5c4 ≠ e, Br5c4 ≠ s
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br3c3{swn .} ==> Pr4c4 ≠ nw, Nr3c3 ≠ 2
whip[1]: Pr5c3{se .} ==> Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ ns, Br5c3 ≠ ew, Br5c2 ≠ n
whip[1]: Br3c2{e .} ==> Nr3c2 ≠ 2
whip[1]: Pr5c2{nw .} ==> Br5c2 ≠ w, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw
whip[1]: Br5c2{se .} ==> Nr5c2 ≠ 3
whip[1]: Vr7c6{1 .} ==> Br7c6 ≠ o, Pr7c6 ≠ o, Pr7c6 ≠ nw, Pr7c6 ≠ ew, Pr8c6 ≠ o, Pr8c6 ≠ se, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Br7c5 ≠ swn, Br7c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ s, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ nes
whip[1]: Br7c6{wne .} ==> Nr7c6 ≠ 0
whip[1]: Br7c5{nes .} ==> Pr8c5 ≠ o, Pr8c5 ≠ sw
whip[1]: Pr8c6{nw .} ==> Br8c5 ≠ ne, Br8c5 ≠ wne, Br8c5 ≠ nes
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes, Br6c6 ≠ sw
whip[1]: Hr8c5{1 .} ==> Br8c5 ≠ o, Pr8c5 ≠ ns, Pr8c5 ≠ nw, Pr8c6 ≠ ne, Pr8c6 ≠ ns, Br7c5 ≠ wne, Br8c5 ≠ e, Br8c5 ≠ s, Br8c5 ≠ w, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ sw, Br8c5 ≠ esw
P-single: Pr8c6 = nw
w[1]-1-in-r8c6-symmetric-nw-corner ==> Pr9c7 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ o
whip[1]: Pr8c6{nw .} ==> Br8c6 ≠ n, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br8c6 ≠ w
whip[1]: Br8c6{s .} ==> Pr9c6 ≠ ne, Pr9c6 ≠ ns, Pr8c7 ≠ nw, Pr8c7 ≠ ew, Pr8c7 ≠ sw, Pr9c6 ≠ nw
whip[1]: Pr9c7{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ swn, Br9c7 ≠ wne, Br9c7 ≠ o, Br9c7 ≠ e, Br9c7 ≠ s
whip[1]: Br9c7{nes .} ==> Nr9c7 ≠ 0
whip[1]: Br8c5{swn .} ==> Nr8c5 ≠ 0
whip[1]: Pr8c5{ew .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes
whip[1]: Vr6c4{0 .} ==> Pr6c4 ≠ se, Pr7c4 ≠ ne, Pr7c4 ≠ ns, Pr7c4 ≠ nw, Br6c3 ≠ e, Br6c3 ≠ ne, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ wne, Br6c3 ≠ nes, Br6c4 ≠ w
whip[1]: Br6c4{s .} ==> Pr6c5 ≠ sw
whip[1]: Br6c3{nw .} ==> Nr6c3 ≠ 3
whip[1]: Pr6c4{nw .} ==> Br5c4 ≠ ns, Br5c4 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ nes, Br6c4 ≠ n
whip[1]: Br6c4{s .} ==> Pr6c5 ≠ nw, Pr6c5 ≠ ew
whip[1]: Pr6c3{ew .} ==> Br6c2 ≠ sw, Br6c2 ≠ nes, Br6c2 ≠ s
whip[1]: Br6c2{swn .} ==> Nr6c2 ≠ 1
whip[1]: Pr6c2{se .} ==> Br6c2 ≠ ns, Br6c2 ≠ esw
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Vr1c7{1 .} ==> Br1c7 ≠ nes, Br1c6 ≠ o, Pr1c7 ≠ o, Pr1c7 ≠ ew, Pr2c7 ≠ se, Pr2c7 ≠ ew, Br1c6 ≠ n, Br1c6 ≠ s, Br1c6 ≠ w, Br1c6 ≠ ns, Br1c6 ≠ nw, Br1c6 ≠ sw, Br1c6 ≠ swn
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr2c7{nw .} ==> Br1c7 ≠ esw, Br1c7 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ nes, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ swn, Br2c7 ≠ wne, Br2c7 ≠ nes, Br2c7 ≠ n
B-single: Br1c7 = wne
P-single: Pr1c7 = se
P-single: Pr1c8 = sw
whip[1]: Pr1c7{se .} ==> Br1c6 ≠ ne, Br1c6 ≠ wne, Br1c6 ≠ nes
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ ns, Br1c8 ≠ ne, Br1c8 ≠ nw, Br1c8 ≠ se
whip[1]: Br1c8{sw .} ==> Pr1c9 ≠ ew
w[1]-1-in-r1c9-symmetric-nw-corner ==> Pr2c10 ≠ se, Pr2c10 ≠ nw, Pr2c10 ≠ o
w[1]-1-in-r2c10-asymmetric-nw-corner ==> Pr3c11 ≠ sw, Pr3c11 ≠ ew, Pr3c11 ≠ ns, Pr3c11 ≠ ne
whip[1]: Pr3c11{se .} ==> Br2c11 ≠ esw, Br2c11 ≠ swn, Br3c10 ≠ ne, Br3c10 ≠ wne, Br3c10 ≠ nes, Br3c11 ≠ ne, Br3c11 ≠ ns, Br3c11 ≠ ew, Br3c11 ≠ sw, Br3c11 ≠ esw, Br3c11 ≠ nes, Br2c10 ≠ e, Br2c10 ≠ s, Br3c11 ≠ n, Br3c11 ≠ w
whip[1]: Br2c10{w .} ==> Hr3c10 ≠ 1, Vr2c11 ≠ 1, Pr2c11 ≠ ns, Pr3c10 ≠ ne, Pr3c11 ≠ nw, Pr2c11 ≠ se, Pr2c11 ≠ sw, Pr3c10 ≠ se, Pr3c10 ≠ ew
V-single: Vr2c11 = 0
H-single: Hr3c10 = 0
w[1]-diagonal-1-1-in-{r2c10...r1c9}-with-no-se-outer-sides ==> Hr1c9 = 0, Vr1c9 = 0
w[1]-2-in-r1c8-open-ne-corner ==> Hr2c8 = 1, Vr2c8 = 0
no-vertical-line-r2{c7 c8} ==> Ir2c8 = in
no-horizontal-line-{r2 r3}c8 ==> Ir3c8 = in
no-vertical-line-r3{c7 c8} ==> Ir3c7 = in
no-vertical-line-r3{c8 c9} ==> Ir3c9 = in
no-horizontal-line-{r3 r4}c8 ==> Ir4c8 = in
no-vertical-line-r1{c8 c9} ==> Ir1c9 = out
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
w[0]-adjacent-3-in-r2c6-nolines-east ==> Vr3c7 = 1
whip[1]: Vr2c11{0 .} ==> Br2c11 ≠ wne
B-single: Br2c11 = nes
H-single: Hr2c11 = 1
H-single: Hr3c11 = 1
V-single: Vr2c12 = 1
w[1]-3-in-r2c11-asymmetric-sw-corner ==> Vr1c12 = 0, Hr2c12 = 0
w[1]-3-in-r2c11-asymmetric-nw-corner ==> Vr3c12 = 0, Hr3c12 = 0
P-single: Pr2c12 = sw
P-single: Pr3c11 = se
V-single: Vr3c11 = 1
P-single: Pr3c12 = nw
w[1]-1-in-r3c12-symmetric-nw-corner ==> Pr4c13 ≠ se, Pr4c13 ≠ nw, Pr4c13 ≠ o
w[1]-3-in-r6c15-asymmetric-nw-corner ==> Vr6c16 = 1, Hr7c15 = 1, Vr7c16 = 0
no-vertical-line-r7{c15 c16} ==> Ir7c15 = out
horizontal-line-{r6 r7}c15 ==> Ir6c15 = in
different-colours-in-{r5 r6}c15 ==> Hr6c15 = 1
w[1]-3-in-r6c15-closed-ne-corner ==> Pr7c15 ≠ sw, Pr7c15 ≠ ne, Pr7c15 ≠ o
whip[1]: Hr2c11{1 .} ==> Br1c11 ≠ o, Br1c11 ≠ n, Br1c11 ≠ e, Br1c11 ≠ w, Br1c11 ≠ ne, Br1c11 ≠ nw, Br1c11 ≠ ew, Br1c11 ≠ wne
whip[1]: Br1c11{nes .} ==> Nr1c11 ≠ 0
whip[1]: Hr3c11{1 .} ==> Br3c11 ≠ o, Br3c11 ≠ e, Br3c11 ≠ s, Br3c11 ≠ se
whip[1]: Br3c11{wne .} ==> Pr4c11 ≠ o, Pr4c11 ≠ se, Pr4c11 ≠ ew, Pr4c11 ≠ sw, Pr4c12 ≠ nw, Nr3c11 ≠ 0, Nr3c11 ≠ 1
whip[1]: Pr4c12{ew .} ==> Br4c11 ≠ sw, Br4c11 ≠ wne, Br4c11 ≠ nes, Br4c12 ≠ se, Br3c12 ≠ n, Br3c12 ≠ e, Br4c11 ≠ o, Br4c11 ≠ s, Br4c11 ≠ w, Br4c11 ≠ ne, Br4c12 ≠ o, Br4c12 ≠ e, Br4c12 ≠ s
whip[1]: Br4c12{nes .} ==> Nr4c12 ≠ 0
whip[1]: Br4c11{swn .} ==> Nr4c11 ≠ 0
whip[1]: Br3c12{w .} ==> Pr4c13 ≠ ne, Pr4c13 ≠ ns, Pr3c13 ≠ sw
P-single: Pr3c13 = o
w[1]-1-in-r3c13-symmetric-nw-corner ==> Pr4c14 ≠ se, Pr4c14 ≠ nw, Pr4c14 ≠ o
whip[1]: Pr3c13{o .} ==> Br2c12 ≠ e, Br2c12 ≠ s, Br2c12 ≠ ne, Br2c12 ≠ ns, Br2c12 ≠ se, Br2c12 ≠ ew, Br2c12 ≠ sw, Br2c12 ≠ esw, Br2c12 ≠ swn, Br2c12 ≠ wne, Br2c12 ≠ nes, Br3c13 ≠ n, Br3c13 ≠ w
whip[1]: Br2c12{nw .} ==> Nr2c12 ≠ 3
whip[1]: Pr4c14{sw .} ==> Br4c14 ≠ nw, Br4c14 ≠ se, Br4c14 ≠ swn, Br4c14 ≠ wne, Br4c14 ≠ o, Br4c14 ≠ e, Br4c14 ≠ s
whip[1]: Br4c14{nes .} ==> Nr4c14 ≠ 0
whip[1]: Pr4c13{sw .} ==> Hr4c12 ≠ 0, Br4c12 ≠ ew, Br4c12 ≠ sw, Br4c12 ≠ esw, Br4c13 ≠ nw, Br4c13 ≠ se, Br3c12 ≠ w, Br4c12 ≠ w
H-single: Hr4c12 = 1
B-single: Br3c12 = s
whip[1]: Pr4c12{ew .} ==> Br3c11 ≠ wne
whip[1]: Pr4c11{nw .} ==> Br3c10 ≠ w, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ sw, Br3c10 ≠ swn, Br4c10 ≠ ne, Br4c10 ≠ wne, Br4c10 ≠ nes, Br4c11 ≠ nw, Br4c11 ≠ swn, Br3c10 ≠ o, Br3c10 ≠ n, Br3c10 ≠ s
whip[1]: Br3c10{esw .} ==> Nr3c10 ≠ 0
whip[1]: Vr2c12{1 .} ==> Br2c12 ≠ o, Br2c12 ≠ n
whip[1]: Br2c12{nw .} ==> Nr2c12 ≠ 0
whip[1]: Vr1c12{0 .} ==> Pr1c12 ≠ se, Pr1c12 ≠ sw, Br1c11 ≠ se, Br1c11 ≠ esw, Br1c11 ≠ nes, Br1c12 ≠ w, Br1c12 ≠ nw, Br1c12 ≠ ew, Br1c12 ≠ sw, Br1c12 ≠ esw, Br1c12 ≠ swn, Br1c12 ≠ wne
whip[1]: Hr2c12{0 .} ==> Pr2c13 ≠ nw, Br1c12 ≠ s, Br1c12 ≠ ns, Br1c12 ≠ se, Br1c12 ≠ nes, Br2c12 ≠ nw
P-single: Pr2c14 = ne
H-single: Hr2c14 = 1
V-single: Vr1c14 = 1
P-single: Pr1c14 = sw
H-single: Hr1c13 = 1
H-single: Hr1c14 = 0
P-single: Pr2c13 = o
V-single: Vr1c13 = 0
B-single: Br2c12 = w
N-single: Nr2c12 = 1
no-horizontal-line-{r0 r1}c14 ==> Ir1c14 = out
vertical-line-r1{c13 c14} ==> Ir1c13 = in
no-vertical-line-r1{c12 c13} ==> Ir1c12 = in
no-vertical-line-r1{c11 c12} ==> Ir1c11 = in
horizontal-line-{r1 r2}c11 ==> Ir2c11 = out
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = out
vertical-line-r3{c10 c11} ==> Ir3c11 = in
no-vertical-line-r3{c11 c12} ==> Ir3c12 = in
no-vertical-line-r3{c12 c13} ==> Ir3c13 = in
no-vertical-line-r3{c13 c14} ==> Ir3c14 = in
no-horizontal-line-{r2 r3}c14 ==> Ir2c14 = in
no-vertical-line-r2{c13 c14} ==> Ir2c13 = in
no-vertical-line-r2{c12 c13} ==> Ir2c12 = in
horizontal-line-{r3 r4}c12 ==> Ir4c12 = out
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
different-colours-in-{r0 r1}c11 ==> Hr1c11 = 1
different-colours-in-{r0 r1}c12 ==> Hr1c12 = 1
whip[1]: Pr2c14{ne .} ==> Br2c14 ≠ o, Br1c14 ≠ n, Br1c14 ≠ o, Br1c13 ≠ ns, Br1c13 ≠ nw, Br1c13 ≠ se, Br1c13 ≠ sw, Br1c14 ≠ e, Br1c14 ≠ s, Br1c14 ≠ w, Br1c14 ≠ ne, Br1c14 ≠ ns, Br1c14 ≠ nw, Br1c14 ≠ se, Br1c14 ≠ ew, Br1c14 ≠ wne, Br1c14 ≠ nes, Br2c14 ≠ e, Br2c14 ≠ s, Br2c14 ≠ w, Br2c14 ≠ nw, Br2c14 ≠ se, Br2c14 ≠ ew, Br2c14 ≠ sw, Br2c14 ≠ esw, Br2c14 ≠ swn, Br2c14 ≠ wne
whip[1]: Br2c14{nes .} ==> Pr2c15 ≠ o, Pr2c15 ≠ ne, Pr2c15 ≠ ns, Pr2c15 ≠ se, Nr2c14 ≠ 0
whip[1]: Pr2c15{sw .} ==> Br1c15 ≠ sw
whip[1]: Br1c14{swn .} ==> Pr1c15 ≠ sw, Nr1c14 ≠ 0, Nr1c14 ≠ 1
whip[1]: Pr1c15{ew .} ==> Br1c15 ≠ w
whip[1]: Pr1c14{sw .} ==> Br1c13 ≠ ew, Br1c14 ≠ swn
B-single: Br1c13 = ne
P-single: Pr1c13 = ew
whip[1]: Pr1c13{ew .} ==> Br1c12 ≠ ne, Br1c12 ≠ e, Br1c12 ≠ o
B-single: Br1c12 = n
N-single: Nr1c12 = 1
P-single: Pr1c12 = ew
whip[1]: Pr1c12{ew .} ==> Br1c11 ≠ s, Br1c11 ≠ sw
whip[1]: Br1c11{swn .} ==> Pr1c11 ≠ o, Pr1c11 ≠ sw, Nr1c11 ≠ 1
whip[1]: Pr1c11{ew .} ==> Br1c10 ≠ sw, Br1c10 ≠ wne, Br1c10 ≠ nes, Br1c10 ≠ o, Br1c10 ≠ s, Br1c10 ≠ w, Br1c10 ≠ ne
whip[1]: Br1c10{swn .} ==> Nr1c10 ≠ 0
whip[1]: Br1c14{esw .} ==> Pr1c15 ≠ ew
whip[1]: Pr1c15{se .} ==> Br1c15 ≠ ne, Br1c15 ≠ nes
whip[1]: Br1c15{wne .} ==> Pr2c16 ≠ nw, Nr1c15 ≠ 2
whip[1]: Pr2c16{sw .} ==> Br2c15 ≠ n
whip[1]: Br2c15{w .} ==> Hr2c15 ≠ 1, Pr3c16 ≠ nw, Pr3c15 ≠ ne, Pr2c16 ≠ sw, Pr2c15 ≠ ew
H-single: Hr2c15 = 0
whip[1]: Hr2c15{0 .} ==> Br1c15 ≠ s
whip[1]: Br1c15{wne .} ==> Nr1c15 ≠ 1
whip[1]: Pr3c16{sw .} ==> Br3c15 ≠ nw, Br3c15 ≠ swn, Br3c15 ≠ n, Br3c15 ≠ ns
whip[1]: Hr1c13{1 .} ==> Br0c13 ≠ o
B-single: Br0c13 = s
whip[1]: Hr1c14{0 .} ==> Br0c14 ≠ s
B-single: Br0c14 = o
whip[1]: Vr3c10{1 .} ==> Pr3c10 ≠ o, Pr3c10 ≠ nw, Pr4c10 ≠ se, Pr4c10 ≠ ew, Br3c9 ≠ n, Br3c9 ≠ s, Br3c9 ≠ w, Br3c10 ≠ e, Br3c10 ≠ se
B-single: Br3c9 = e
H-single: Hr3c9 = 0
H-single: Hr4c9 = 0
w[1]-diagonal-3-2s-in-{r6c7...r4c9}-non-closed-ne-end ==> Vr4c10 = 1
w[1]-diagonal-1-1-in-{r3c9...r2c10}-with-no-sw-outer-sides ==> Hr2c10 = 0
w[0]-adjacent-3-in-r2c11-nolines-west ==> Vr1c11 = 1
P-single: Pr5c10 = nw
H-single: Hr5c9 = 1
H-single: Hr5c10 = 0
V-single: Vr5c10 = 0
P-single: Pr3c9 = o
V-single: Vr2c9 = 0
P-single: Pr3c10 = ns
V-single: Vr2c10 = 1
P-single: Pr4c9 = o
V-single: Vr4c9 = 0
P-single: Pr4c10 = ns
H-single: Hr4c10 = 0
w[1]-1-in-r2c10-asymmetric-sw-corner ==> Pr2c11 ≠ ew
P-single: Pr2c11 = ne
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir5c10 = out
no-vertical-line-r5{c9 c10} ==> Ir5c9 = out
horizontal-line-{r4 r5}c9 ==> Ir4c9 = in
vertical-line-r2{c9 c10} ==> Ir2c9 = in
no-horizontal-line-{r0 r1}c10 ==> Ir1c10 = out
same-colour-in-r1{c9 c10} ==> Vr1c10 = 0
different-colours-in-{r1 r2}c9 ==> Hr2c9 = 1
whip[1]: Hr3c9{0 .} ==> Br2c9 ≠ s, Br2c9 ≠ ns, Br2c9 ≠ se, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br2c9 ≠ nes
whip[1]: Hr4c9{0 .} ==> Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ nw
whip[1]: Vr4c10{1 .} ==> Br4c10 ≠ o, Br4c9 ≠ sw, Br4c10 ≠ n, Br4c10 ≠ e, Br4c10 ≠ s, Br4c10 ≠ ns, Br4c10 ≠ se
whip[1]: Br4c10{swn .} ==> Nr4c10 ≠ 0
whip[1]: Hr2c10{0 .} ==> Pr2c10 ≠ ne, Pr2c10 ≠ ew, Br1c10 ≠ ns, Br1c10 ≠ se, Br1c10 ≠ esw, Br1c10 ≠ swn, Br2c10 ≠ n
B-single: Br2c10 = w
whip[1]: Br1c10{ew .} ==> Nr1c10 ≠ 3
whip[1]: Pr2c10{sw .} ==> Br2c9 ≠ nw, Br1c9 ≠ n, Br1c9 ≠ w, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ w
whip[1]: Br2c9{wne .} ==> Nr2c9 ≠ 0
whip[1]: Br1c9{s .} ==> Pr2c9 ≠ ne, Pr2c9 ≠ ns, Pr1c9 ≠ se, Pr1c10 ≠ ew, Pr1c10 ≠ sw
P-single: Pr2c8 = ne
P-single: Pr1c9 = o
whip[1]: Pr2c8{ne .} ==> Br2c8 ≠ o, Br1c8 ≠ ew, Br2c7 ≠ e, Br2c7 ≠ se, Br2c7 ≠ ew, Br2c7 ≠ esw, Br2c8 ≠ e, Br2c8 ≠ s, Br2c8 ≠ w, Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ swn, Br2c8 ≠ wne
B-single: Br1c8 = sw
whip[1]: Br2c8{nes .} ==> Pr3c8 ≠ nw, Nr2c8 ≠ 0
P-single: Pr3c8 = o
whip[1]: Pr3c8{o .} ==> Br2c7 ≠ s, Br2c7 ≠ sw, Br2c8 ≠ ns, Br2c8 ≠ nes, Br3c7 ≠ n, Br3c7 ≠ e, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ nw, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ esw, Br3c7 ≠ swn, Br3c7 ≠ wne, Br3c7 ≠ nes
whip[1]: Br3c7{sw .} ==> Pr3c7 ≠ ew, Nr3c7 ≠ 3
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ esw, Br3c6 ≠ nw, Br3c6 ≠ sw, Br3c6 ≠ ns, Br3c7 ≠ o, Br3c7 ≠ s
B-single: Br2c6 = swn
P-single: Pr2c6 = se
P-single: Pr2c7 = nw
P-single: Pr3c6 = ne
P-single: Pr3c7 = sw
w[1]-1-in-r3c5-symmetric-ne-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne
w[1]-1-in-r5c6-asymmetric-nw-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ew, Pr6c7 ≠ ns
w[1]-3-in-r6c7-symmetric-nw-corner ==> Hr6c7 = 1
w[1]-diagonal-3-2-in-{r7c5...r6c6}-non-closed-ne-corner ==> Vr7c5 = 1, Vr8c5 = 0, Hr8c4 = 0
w[1]-3-in-r6c7-closed-nw-corner ==> Pr7c8 ≠ se, Pr7c8 ≠ nw, Pr7c8 ≠ o
whip[1]: Pr2c6{se .} ==> Br2c5 ≠ w, Br2c5 ≠ s, Br2c5 ≠ n, Br2c5 ≠ o, Br1c6 ≠ e, Br1c6 ≠ ew, Br1c6 ≠ esw, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ sw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ nes
B-single: Br1c6 = se
N-single: Nr1c6 = 2
whip[1]: Br2c5{esw .} ==> Nr2c5 ≠ 0
whip[1]: Pr2c7{nw .} ==> Br2c7 ≠ w
B-single: Br2c7 = o
N-single: Nr2c7 = 0
whip[1]: Pr3c6{ne .} ==> Br3c5 ≠ n, Br2c5 ≠ se, Br2c5 ≠ esw, Br3c5 ≠ e, Br3c6 ≠ se, Br3c6 ≠ ew
B-single: Br3c6 = ne
H-single: Hr4c6 = 0
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = out
whip[1]: Hr4c6{0 .} ==> Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nw
whip[1]: Pr5c6{ew .} ==> Br4c5 ≠ se, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c5 ≠ ne, Br5c6 ≠ e, Br5c6 ≠ s
whip[1]: Br5c6{w .} ==> Pr5c7 ≠ ns, Pr6c6 ≠ ne, Pr6c7 ≠ nw, Pr5c7 ≠ sw, Pr6c6 ≠ ew
P-single: Pr6c7 = se
whip[1]: Pr6c7{se .} ==> Br5c7 ≠ w, Br5c7 ≠ e, Br5c7 ≠ n, Br5c7 ≠ o, Br5c7 ≠ ne, Br5c7 ≠ nw, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ swn, Br5c7 ≠ wne, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c7 ≠ esw, Br6c7 ≠ nes
whip[1]: Br6c7{wne .} ==> Pr6c8 ≠ ns, Pr6c8 ≠ se, Pr7c7 ≠ ew, Pr7c7 ≠ sw
whip[1]: Pr7c7{ns .} ==> Br6c6 ≠ se, Br7c6 ≠ nw, Br7c6 ≠ wne, Br7c7 ≠ s, Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ swn, Br7c7 ≠ wne, Br7c7 ≠ o, Br7c7 ≠ e
B-single: Br6c6 = ew
V-single: Vr6c6 = 1
P-single: Pr7c6 = ns
H-single: Hr7c5 = 0
whip[1]: Vr6c6{1 .} ==> Br6c5 ≠ o, Br6c5 ≠ n, Br6c5 ≠ s, Br6c5 ≠ w, Br6c5 ≠ ns, Br6c5 ≠ nw, Br6c5 ≠ sw, Br6c5 ≠ swn
whip[1]: Br6c5{wne .} ==> Pr7c5 ≠ ne, Pr7c5 ≠ ew, Nr6c5 ≠ 0
whip[1]: Pr7c5{sw .} ==> Br7c4 ≠ nw, Br7c4 ≠ sw, Br7c4 ≠ swn, Br7c5 ≠ nes, Br7c4 ≠ o, Br7c4 ≠ n, Br7c4 ≠ s, Br7c4 ≠ w, Br7c4 ≠ ns
B-single: Br7c5 = esw
P-single: Pr8c5 = ne
w[1]-1-in-r8c4-symmetric-ne-corner ==> Pr9c4 ≠ sw, Pr9c4 ≠ ne, Pr9c4 ≠ o
whip[1]: Pr8c5{ne .} ==> Br8c4 ≠ n, Br8c4 ≠ e, Br8c5 ≠ nw, Br8c5 ≠ swn
whip[1]: Br8c5{ns .} ==> Pr9c5 ≠ ne, Pr9c5 ≠ ns, Pr9c5 ≠ nw, Nr8c5 ≠ 3
whip[1]: Br8c4{w .} ==> Pr8c4 ≠ ne, Pr8c4 ≠ se, Pr8c4 ≠ ew
whip[1]: Pr9c4{ew .} ==> Br9c3 ≠ sw, Br9c3 ≠ wne, Br9c3 ≠ nes, Br9c3 ≠ o, Br9c3 ≠ s, Br9c3 ≠ w, Br9c3 ≠ ne
whip[1]: Br9c3{swn .} ==> Nr9c3 ≠ 0
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 0
whip[1]: Br7c7{nes .} ==> Nr7c7 ≠ 0
whip[1]: Br7c6{ew .} ==> Nr7c6 ≠ 3
whip[1]: Pr6c8{ew .} ==> Vr6c8 ≠ 1, Br5c8 ≠ sw, Br6c7 ≠ wne, Br6c8 ≠ nw, Br6c8 ≠ ew, Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn, Br6c8 ≠ wne, Br5c8 ≠ ne, Br6c8 ≠ w
V-single: Vr6c8 = 0
B-single: Br6c7 = swn
P-single: Pr7c7 = ne
whip[1]: Pr7c7{ne .} ==> Br7c6 ≠ ew, Br7c7 ≠ w, Br7c7 ≠ ew, Br7c7 ≠ sw, Br7c7 ≠ esw
B-single: Br7c6 = w
N-single: Nr7c6 = 1
whip[1]: Pr9c7{ew .} ==> Br8c7 ≠ sw, Br9c6 ≠ sw, Br9c6 ≠ wne, Br9c6 ≠ nes, Br8c7 ≠ ne, Br9c6 ≠ o, Br9c6 ≠ s, Br9c6 ≠ w, Br9c6 ≠ ne
whip[1]: Br9c6{swn .} ==> Nr9c6 ≠ 0
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ o, Br7c8 ≠ n, Br7c8 ≠ e, Br7c8 ≠ ne
whip[1]: Br7c8{nes .} ==> Nr7c8 ≠ 0
whip[1]: Pr9c8{se .} ==> Br8c7 ≠ ns, Br8c7 ≠ ew, Br8c8 ≠ sw, Br9c7 ≠ ne, Br9c7 ≠ nes, Br9c8 ≠ ne, Br9c8 ≠ ns, Br9c8 ≠ ew, Br9c8 ≠ sw, Br9c8 ≠ esw, Br9c8 ≠ nes, Br9c8 ≠ n, Br9c8 ≠ w
whip[1]: Br8c8{ew .} ==> Pr8c9 ≠ o, Pr8c9 ≠ ne
whip[1]: Pr8c9{sw .} ==> Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn
whip[1]: Pr7c8{sw .} ==> Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ wne, Br7c8 ≠ s
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ w
whip[1]: Br5c5{swn .} ==> Nr5c5 ≠ 0
whip[1]: Pr5c7{ew .} ==> Br4c7 ≠ o, Br4c7 ≠ n, Br4c7 ≠ e, Br4c7 ≠ ne
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Pr4c7{ns .} ==> Br4c7 ≠ s, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ swn, Br4c7 ≠ wne
whip[1]: Br3c5{w .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ se, Pr3c5 ≠ ew
whip[1]: Br2c5{ew .} ==> Nr2c5 ≠ 3
whip[1]: Pr4c5{ew .} ==> Br3c4 ≠ se, Br4c4 ≠ wne, Br4c4 ≠ nes, Br4c4 ≠ s, Br4c4 ≠ w
whip[1]: Br4c4{ew .} ==> Nr4c4 ≠ 1, Nr4c4 ≠ 3
N-single: Nr4c4 = 2
whip[1]: Pr3c4{ns .} ==> Hr3c3 ≠ 1, Br2c3 ≠ nes, Br3c3 ≠ swn
H-single: Hr3c3 = 0
B-single: Br2c3 = ne
N-single: Nr2c3 = 2
P-single: Pr3c3 = o
V-single: Vr3c3 = 0
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
same-colour-in-{r3 r4}c3 ==> Hr4c3 = 0
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ e
B-single: Br3c2 = o
N-single: Nr3c2 = 0
P-single: Pr4c3 = o
w[1]-1-in-r4c3-symmetric-nw-corner ==> Pr5c4 ≠ se
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ n
whip[1]: Br4c3{s .} ==> Pr4c4 ≠ ew
whip[1]: Pr5c4{ew .} ==> Br5c4 ≠ nw, Br5c4 ≠ wne
whip[1]: Br5c4{ew .} ==> Nr5c4 ≠ 3
whip[1]: Br3c3{e .} ==> Nr3c3 ≠ 3
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ se, Br4c5 ≠ ew, Br5c4 ≠ ew, Br5c5 ≠ swn, Br4c5 ≠ ns, Br5c4 ≠ n
whip[1]: Br5c5{sw .} ==> Nr5c5 ≠ 3
whip[1]: Br4c4{ew .} ==> Pr4c4 ≠ o
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ ne
whip[1]: Br3c4{sw .} ==> Pr3c5 ≠ sw
whip[1]: Pr3c5{nw .} ==> Br2c4 ≠ sw
whip[1]: Br3c7{sw .} ==> Nr3c7 ≠ 0
whip[1]: Br2c8{ne .} ==> Nr2c8 ≠ 3
whip[1]: Pr1c10{se .} ==> Br1c10 ≠ ew, Br1c10 ≠ n
whip[1]: Pr2c9{sw .} ==> Br2c9 ≠ wne, Br2c9 ≠ e
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 1, Nr2c9 ≠ 3
N-single: Nr2c9 = 2
P-single: Pr2c10 = sw
whip[1]: Pr2c10{sw .} ==> Br1c9 ≠ e, Br1c10 ≠ nw, Br2c9 ≠ ew
B-single: Br2c9 = ne
P-single: Pr2c9 = ew
B-single: Br1c10 = e
N-single: Nr1c10 = 1
P-single: Pr1c10 = o
P-single: Pr1c11 = se
B-single: Br1c9 = s
whip[1]: Pr2c9{ew .} ==> Br2c8 ≠ ne
B-single: Br2c8 = n
N-single: Nr2c8 = 1
whip[1]: Pr1c11{se .} ==> Br1c11 ≠ ns
B-single: Br1c11 = swn
N-single: Nr1c11 = 3
whip[1]: Hr1c10{0 .} ==> Br0c10 ≠ s
B-single: Br0c10 = o
whip[1]: Pr5c10{nw .} ==> Br5c10 ≠ n, Br5c9 ≠ s, Br5c9 ≠ e, Br5c9 ≠ o, Br4c9 ≠ ew, Br4c10 ≠ sw, Br4c10 ≠ esw, Br4c10 ≠ swn, Br5c9 ≠ w, Br5c9 ≠ ne, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c10 ≠ w, Br5c10 ≠ ne, Br5c10 ≠ ns, Br5c10 ≠ nw, Br5c10 ≠ ew, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c10 ≠ wne, Br5c10 ≠ nes
B-single: Br4c9 = se
whip[1]: Pr5c9{ew .} ==> Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ esw, Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c8 ≠ e, Br4c8 ≠ ne
whip[1]: Br5c10{se .} ==> Pr5c11 ≠ nw, Pr5c11 ≠ ew, Pr5c11 ≠ sw, Pr6c10 ≠ ne, Pr6c10 ≠ ns, Pr6c10 ≠ nw, Nr5c10 ≠ 3
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Br4c10{ew .} ==> Nr4c10 ≠ 3
whip[1]: Pr4c9{o .} ==> Br4c8 ≠ n, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ swn
whip[1]: Br4c8{sw .} ==> Nr4c8 ≠ 3
whip[1]: Pr4c10{ns .} ==> Br3c10 ≠ esw, Br4c10 ≠ nw
B-single: Br3c10 = ew
N-single: Nr3c10 = 2
whip[1]: Pr4c11{ns .} ==> Br4c11 ≠ se, Br4c11 ≠ e
whip[1]: Hr1c11{1 .} ==> Br0c11 ≠ o
B-single: Br0c11 = s
whip[1]: Hr1c12{1 .} ==> Br0c12 ≠ o
B-single: Br0c12 = s
whip[1]: Vr6c16{1 .} ==> Br6c16 ≠ o, Pr6c16 ≠ o, Pr7c16 ≠ o, Pr7c16 ≠ sw, Br6c15 ≠ swn
B-single: Br6c16 = w
whip[1]: Pr5c15{sw .} ==> Br4c14 ≠ esw, Br4c14 ≠ nes, Br5c15 ≠ nw, Br5c15 ≠ se, Br4c14 ≠ n, Br4c14 ≠ w
whip[1]: Br4c14{sw .} ==> Nr4c14 ≠ 1, Nr4c14 ≠ 3
N-single: Nr4c14 = 2
whip[1]: Pr7c16{nw .} ==> Br7c15 ≠ w, Br7c15 ≠ ne, Br7c15 ≠ sw, Br7c15 ≠ wne, Br7c15 ≠ nes, Br7c15 ≠ o, Br7c15 ≠ s
whip[1]: Br7c15{swn .} ==> Nr7c15 ≠ 0
whip[1]: Hr7c15{1 .} ==> Pr7c16 ≠ ns, Pr7c15 ≠ ns, Pr7c15 ≠ nw, Br6c15 ≠ wne, Br7c15 ≠ e, Br7c15 ≠ se, Br7c15 ≠ ew, Br7c15 ≠ esw
P-single: Pr7c16 = nw
whip[1]: Br7c15{swn .} ==> Pr8c16 ≠ ns, Pr8c16 ≠ nw
whip[1]: Pr9c16{sw .} ==> Vr9c16 ≠ 0, Br8c15 ≠ nw, Br8c15 ≠ se, Br9c15 ≠ nw, Br9c15 ≠ sw, Br9c15 ≠ ns
V-single: Vr9c16 = 1
vertical-line-r9{c15 c16} ==> Ir9c15 = in
whip[1]: Vr9c16{1 .} ==> Br9c16 ≠ o, Pr10c16 ≠ o, Pr10c16 ≠ sw
w[1]-3-in-r12c13-asymmetric-ne-corner ==> Vr12c13 = 1, Hr13c13 = 1, Vr13c13 = 0, Hr13c12 = 0
w[1]-diagonal-3-2-in-{r11c11...r12c12}-non-closed-se-corner ==> Vr11c11 = 1, Hr11c11 = 1, Vr10c11 = 0, Hr11c10 = 0
w[1]-3-in-r11c11-closed-nw-corner ==> Pr12c12 ≠ se
B-single: Br9c16 = w
whip[1]: Vr12c13{1 .} ==> Pr12c13 ≠ nw, Pr12c13 ≠ ew, Pr13c13 ≠ ew, Pr13c13 ≠ sw, Br12c12 ≠ ns, Br12c12 ≠ nw, Br12c12 ≠ sw, Br12c13 ≠ nes
whip[1]: Br12c13{wne .} ==> Pr13c14 ≠ o, Pr13c14 ≠ se
whip[1]: Pr13c14{sw .} ==> Br13c14 ≠ nw
whip[1]: Br13c14{sw .} ==> Pr14c15 ≠ o
whip[1]: Pr13c13{ns .} ==> Br12c12 ≠ se, Br13c12 ≠ ne, Br13c12 ≠ ns, Br13c12 ≠ nw, Br13c12 ≠ swn, Br13c12 ≠ wne, Br13c12 ≠ nes, Br13c13 ≠ s, Br13c13 ≠ nw, Br13c13 ≠ se, Br13c13 ≠ swn, Br13c13 ≠ wne, Br13c12 ≠ n, Br13c13 ≠ o, Br13c13 ≠ e
whip[1]: Br13c13{nes .} ==> Nr13c13 ≠ 0
whip[1]: Br13c12{esw .} ==> Pr13c12 ≠ se, Pr13c12 ≠ ew
whip[1]: Pr12c13{sw .} ==> Br11c13 ≠ sw, Br11c13 ≠ esw, Br11c13 ≠ swn
whip[1]: Hr13c13{1 .} ==> Pr13c13 ≠ ns, Pr13c14 ≠ ne, Pr13c14 ≠ ns, Br12c13 ≠ wne, Br13c13 ≠ w, Br13c13 ≠ ew, Br13c13 ≠ sw, Br13c13 ≠ esw
P-single: Pr13c13 = ne
whip[1]: Pr13c13{ne .} ==> Br13c12 ≠ e, Br13c12 ≠ se, Br13c12 ≠ ew, Br13c12 ≠ esw
whip[1]: Br13c12{sw .} ==> Pr14c13 ≠ ne, Pr14c13 ≠ nw, Nr13c12 ≠ 3
whip[1]: Pr13c14{sw .} ==> Br12c14 ≠ sw
whip[1]: Br12c14{ew .} ==> Pr12c15 ≠ o, Pr12c15 ≠ ne
whip[1]: Pr12c15{sw .} ==> Br11c15 ≠ sw, Br11c15 ≠ esw, Br11c15 ≠ swn
whip[1]: Vr11c11{1 .} ==> Pr11c11 ≠ o, Pr11c11 ≠ ne, Pr11c11 ≠ nw, Pr11c11 ≠ ew, Pr12c11 ≠ ew, Pr12c11 ≠ sw, Br11c10 ≠ ns, Br11c10 ≠ nw, Br11c10 ≠ sw, Br11c11 ≠ nes
w[1]-1-in-r12c9-asymmetric-ne-corner ==> Pr13c9 ≠ ew, Pr13c9 ≠ se, Pr13c9 ≠ nw, Pr13c9 ≠ ns
whip[1]: Pr13c9{sw .} ==> Br12c8 ≠ se, Br12c8 ≠ esw, Br12c8 ≠ nes, Br13c8 ≠ nw, Br13c8 ≠ se, Br13c8 ≠ ew, Br13c8 ≠ esw, Br13c8 ≠ swn, Br12c9 ≠ s, Br12c9 ≠ w, Br13c8 ≠ n, Br13c8 ≠ e, Br13c8 ≠ ns
whip[1]: Br12c9{e .} ==> Hr13c9 ≠ 1, Vr12c9 ≠ 1, Pr13c9 ≠ ne, Pr12c9 ≠ ns, Pr12c9 ≠ se, Pr12c9 ≠ sw, Pr13c10 ≠ nw, Pr13c10 ≠ ew, Pr13c10 ≠ sw
V-single: Vr12c9 = 0
H-single: Hr13c9 = 0
whip[1]: Vr12c9{0 .} ==> Br12c8 ≠ e, Br12c8 ≠ ne, Br12c8 ≠ ew, Br12c8 ≠ wne
whip[1]: Hr13c9{0 .} ==> Br13c9 ≠ n
whip[1]: Br13c9{w .} ==> Pr14c9 ≠ ne, Pr14c10 ≠ nw
whip[1]: Pr12c10{ew .} ==> Br11c10 ≠ ne
whip[1]: Br11c10{ew .} ==> Pr11c10 ≠ ne, Pr11c10 ≠ ew
whip[1]: Pr11c10{sw .} ==> Br10c10 ≠ s
whip[1]: Br10c10{w .} ==> Pr10c10 ≠ se, Pr10c11 ≠ sw
whip[1]: Br11c11{wne .} ==> Pr11c12 ≠ o, Pr11c12 ≠ ne
whip[1]: Pr11c12{sw .} ==> Br10c12 ≠ sw, Br10c12 ≠ esw, Br10c12 ≠ swn
whip[1]: Pr12c11{nw .} ==> Br12c11 ≠ nw, Br12c11 ≠ swn, Br12c11 ≠ wne
whip[1]: Pr11c11{se .} ==> Br10c11 ≠ ne, Br10c11 ≠ sw, Br10c11 ≠ esw, Br10c11 ≠ swn, Br10c11 ≠ o, Br10c11 ≠ n, Br10c11 ≠ e
whip[1]: Br10c11{nes .} ==> Nr10c11 ≠ 0
whip[1]: Hr11c11{1 .} ==> Pr11c11 ≠ ns, Pr11c12 ≠ ns, Pr11c12 ≠ se, Br10c11 ≠ w, Br10c11 ≠ nw, Br10c11 ≠ ew, Br10c11 ≠ wne, Br11c11 ≠ esw
P-single: Pr11c11 = se
w[1]-1-in-r10c10-symmetric-se-corner ==> Pr10c10 ≠ nw, Pr10c10 ≠ o
whip[1]: Pr11c11{se .} ==> Br10c10 ≠ e
whip[1]: Br10c10{w .} ==> Pr10c11 ≠ ns, Pr10c11 ≠ se
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ nw, Br9c9 ≠ se, Br9c9 ≠ esw, Br9c9 ≠ nes, Br9c9 ≠ o, Br9c9 ≠ n, Br9c9 ≠ w
whip[1]: Br9c9{wne .} ==> Nr9c9 ≠ 0
whip[1]: Pr12c14{ew .} ==> Br11c14 ≠ sw, Br11c14 ≠ ne
whip[1]: Pr11c15{ew .} ==> Br10c14 ≠ esw, Br10c14 ≠ nes, Br10c15 ≠ sw, Br11c15 ≠ nw, Br11c15 ≠ se, Br11c15 ≠ wne, Br10c15 ≠ ne, Br11c15 ≠ o, Br11c15 ≠ e, Br11c15 ≠ s
whip[1]: Br11c15{nes .} ==> Nr11c15 ≠ 0
whip[1]: Br10c14{wne .} ==> Pr10c14 ≠ o, Pr10c15 ≠ o, Pr10c15 ≠ ne, Pr10c15 ≠ ns, Pr10c15 ≠ se, Pr11c14 ≠ o, Pr11c14 ≠ se, Pr11c14 ≠ ew, Pr11c14 ≠ sw
P-single: Pr10c14 = se
whip[1]: Pr10c14{se .} ==> Br10c13 ≠ w, Br10c13 ≠ s, Br10c13 ≠ n, Br10c13 ≠ o, Br9c14 ≠ w, Br9c14 ≠ e, Br9c14 ≠ n, Br9c14 ≠ o, Br9c14 ≠ ne, Br9c14 ≠ nw, Br9c14 ≠ ew, Br9c14 ≠ sw, Br9c14 ≠ esw, Br9c14 ≠ swn, Br9c14 ≠ wne, Br10c13 ≠ ne, Br10c13 ≠ ns, Br10c13 ≠ nw, Br10c13 ≠ sw, Br10c13 ≠ swn, Br10c13 ≠ wne, Br10c13 ≠ nes
whip[1]: Br10c13{esw .} ==> Nr10c13 ≠ 0
whip[1]: Br9c14{nes .} ==> Nr9c14 ≠ 0
whip[1]: Pr11c14{nw .} ==> Br11c13 ≠ ne, Br11c13 ≠ wne, Br11c13 ≠ nes, Br11c14 ≠ nw
whip[1]: Br11c14{ew .} ==> Pr12c15 ≠ se
whip[1]: Pr12c15{sw .} ==> Br12c15 ≠ swn, Br12c15 ≠ wne
whip[1]: Br12c15{nes .} ==> Hr13c15 ≠ 0, Vr12c16 ≠ 0, Pr12c16 ≠ o, Pr12c16 ≠ nw, Pr13c16 ≠ o, Pr13c16 ≠ ns, Pr13c16 ≠ sw, Pr12c15 ≠ nw, Pr13c15 ≠ o, Pr13c15 ≠ ns, Pr13c15 ≠ nw, Pr13c15 ≠ sw
V-single: Vr12c16 = 1
H-single: Hr13c15 = 1
P-single: Pr13c16 = nw
no-vertical-line-r13{c15 c16} ==> Ir13c15 = out
horizontal-line-{r12 r13}c15 ==> Ir12c15 = in
different-colours-in-{r13 r14}c15 ==> Hr14c15 = 1
whip[1]: Vr12c16{1 .} ==> Br12c16 ≠ o
B-single: Br12c16 = w
whip[1]: Hr13c15{1 .} ==> Br13c15 ≠ e, Br13c15 ≠ s, Br13c15 ≠ ew, Br13c15 ≠ sw
whip[1]: Br13c15{wne .} ==> Nr13c15 ≠ 1
whip[1]: Vr13c16{0 .} ==> Br13c16 ≠ w, Pr14c16 ≠ ns, Br13c15 ≠ ne, Br13c15 ≠ wne
P-single: Pr14c16 = sw
B-single: Br13c16 = o
whip[1]: Pr14c16{sw .} ==> Br14c15 ≠ se, Br14c15 ≠ esw
B-single: Br14c15 = nes
V-single: Vr14c15 = 0
N-single: Nr14c15 = 3
w[1]-diagonal-3-2-3-in-{r12c13...r14c15} ==> Hr12c13 = 1, Vr11c13 = 0, Hr12c12 = 0
w[1]-diagonal-closed-3-1-in-{r14c15...r15c14} ==> Vr15c14 = 0
P-single: Pr15c13 = se
H-single: Hr15c13 = 1
V-single: Vr15c13 = 1
P-single: Pr16c14 = o
P-single: Pr15c15 = ew
H-single: Hr15c14 = 1
horizontal-line-{r14 r15}c14 ==> Ir14c14 = in
no-horizontal-line-{r15 r16}c13 ==> Ir15c13 = out
same-colour-in-r14{c13 c14} ==> Vr14c14 = 0
whip[1]: Vr14c15{0 .} ==> Br14c14 ≠ ew, Br14c14 ≠ wne
whip[1]: Br14c14{ns .} ==> Pr14c14 ≠ ns, Pr14c14 ≠ se, Pr15c14 ≠ ns, Nr14c14 ≠ 3, Pr14c14 ≠ sw
P-single: Pr15c14 = ew
whip[1]: Pr15c14{ew .} ==> Br15c14 ≠ w, Br14c13 ≠ ne, Br14c13 ≠ e, Br15c13 ≠ se
B-single: Br15c13 = nw
P-single: Pr16c13 = nw
B-single: Br15c14 = n
whip[1]: Pr16c13{nw .} ==> Br15c12 ≠ s, Br16c13 ≠ n, Br15c12 ≠ sw
B-single: Br16c13 = o
whip[1]: Br15c12{esw .} ==> Nr15c12 ≠ 1
whip[1]: Hr12c13{1 .} ==> Br11c13 ≠ o, Pr12c13 ≠ ns, Pr12c14 ≠ ns, Pr12c14 ≠ se, Br11c13 ≠ n, Br11c13 ≠ e, Br11c13 ≠ w, Br11c13 ≠ nw, Br11c13 ≠ ew, Br12c13 ≠ esw
P-single: Pr12c13 = se
B-single: Br12c13 = swn
V-single: Vr12c14 = 0
w[3]-adjacent-3-2-in-r12{c15 c14}-noline-west ==> Vr13c15 = 0, Vr11c15 = 0
w[1]-diagonal-3-2-in-{r12c13...r11c14}-non-closed-ne-corner ==> Hr11c14 = 1
w[1]-diagonal-3-2-in-{r12c13...r13c14}-non-closed-se-corner ==> Hr14c14 = 1
w[1]-3-in-r10c14-closed-sw-corner ==> Pr10c15 ≠ sw
P-single: Pr9c16 = ns
H-single: Hr9c15 = 0
V-single: Vr8c16 = 1
P-single: Pr8c16 = sw
H-single: Hr8c15 = 1
P-single: Pr12c14 = ew
H-single: Hr12c14 = 1
w[1]-1-in-r11c12-symmetric-se-corner ==> Pr11c12 ≠ nw
horizontal-line-{r7 r8}c15 ==> Ir8c15 = in
horizontal-line-{r13 r14}c14 ==> Ir13c14 = out
whip[1]: Pr12c13{se .} ==> Br11c12 ≠ s, Br11c12 ≠ e, Br12c12 ≠ ne
B-single: Br12c12 = ew
V-single: Vr12c12 = 1
whip[1]: Vr12c12{1 .} ==> Br12c11 ≠ o, Br12c11 ≠ n, Br12c11 ≠ s, Br12c11 ≠ w, Br12c11 ≠ ns, Br12c11 ≠ sw
whip[1]: Br12c11{nes .} ==> Nr12c11 ≠ 0
whip[1]: Br11c12{w .} ==> Pr11c13 ≠ ns, Pr11c13 ≠ se, Pr11c13 ≠ sw
whip[1]: Vr12c14{0 .} ==> Br12c14 ≠ nw, Br12c14 ≠ ew
whip[1]: Vr13c15{0 .} ==> Pr14c15 ≠ ne, Br13c14 ≠ ne, Br13c14 ≠ se, Br13c14 ≠ ew, Br13c15 ≠ swn
P-single: Pr14c15 = ew
B-single: Br13c15 = ns
N-single: Nr13c15 = 2
whip[1]: Pr14c15{ew .} ==> Br14c14 ≠ s
B-single: Br14c14 = ns
N-single: Nr14c14 = 2
whip[1]: Pr14c14{ew .} ==> Br13c13 ≠ nes, Br13c13 ≠ n
whip[1]: Br13c13{ns .} ==> Nr13c13 ≠ 1, Nr13c13 ≠ 3
N-single: Nr13c13 = 2
whip[1]: Vr11c15{0 .} ==> Pr11c15 ≠ ns, Pr12c15 ≠ ns, Br11c14 ≠ se, Br11c14 ≠ ew, Br11c15 ≠ w, Br11c15 ≠ ew
P-single: Pr11c15 = ew
H-single: Hr11c15 = 1
V-single: Vr10c15 = 0
B-single: Br11c14 = ns
P-single: Pr11c14 = ne
whip[1]: Pr11c15{ew .} ==> Br10c14 ≠ wne, Br10c15 ≠ nw, Br10c15 ≠ ew
B-single: Br10c14 = swn
whip[1]: Br10c15{se .} ==> Pr11c16 ≠ ns
whip[1]: Pr11c14{ne .} ==> Br10c13 ≠ se, Br10c13 ≠ esw, Br11c13 ≠ ns, Br11c13 ≠ se
B-single: Br11c13 = s
N-single: Nr11c13 = 1
whip[1]: Pr11c13{nw .} ==> Br10c12 ≠ ne, Br10c12 ≠ ns, Br10c12 ≠ ew, Br10c12 ≠ wne, Br10c12 ≠ e, Br10c12 ≠ s
whip[1]: Br10c13{ew .} ==> Nr10c13 ≠ 3
whip[1]: Pr12c15{sw .} ==> Br12c14 ≠ se
whip[1]: Pr9c16{ns .} ==> Br8c15 ≠ ns, Br8c15 ≠ sw, Br9c15 ≠ ne
whip[1]: Vr8c16{1 .} ==> Br8c16 ≠ o
B-single: Br8c16 = w
whip[1]: Pr8c16{sw .} ==> Br7c15 ≠ n, Br7c15 ≠ nw, Br8c15 ≠ ew
B-single: Br8c15 = ne
V-single: Vr8c15 = 0
P-single: Pr8c15 = ew
H-single: Hr8c14 = 1
V-single: Vr7c15 = 0
no-vertical-line-r7{c14 c15} ==> Ir7c14 = out
horizontal-line-{r7 r8}c14 ==> Ir8c14 = in
whip[1]: Vr8c15{0 .} ==> Br8c14 ≠ e
whip[1]: Br8c14{w .} ==> Pr9c14 ≠ ne, Pr8c14 ≠ se
P-single: Pr9c14 = o
H-single: Hr9c14 = 0
V-single: Vr8c14 = 0
3-in-r10c14-no-U-turn-from-north ==> Vr9c15 = O
w[1]-2-in-r9c15-open-nw-corner ==> Hr10c15 = 1, Vr10c16 = 0
P-single: Pr10c15 = ew
P-single: Pr11c16 = sw
V-single: Vr11c16 = 1
w[1]-3-in-r12c15-hit-by-verti-line-at-ne ==> Vr12c15 = 1
w[1]-2-in-r13c14-open-ne-corner ==> Vr13c14 = 1, Hr14c13 = 0
w[1]-3-in-r12c15-closed-sw-corner ==> Pr12c16 ≠ sw
P-single: Pr12c16 = ns
no-horizontal-line-{r13 r14}c13 ==> Ir13c13 = in
no-vertical-line-r13{c12 c13} ==> Ir13c12 = in
no-horizontal-line-{r12 r13}c12 ==> Ir12c12 = in
no-horizontal-line-{r11 r12}c12 ==> Ir11c12 = in
no-vertical-line-r11{c12 c13} ==> Ir11c13 = in
no-vertical-line-r11{c13 c14} ==> Ir11c14 = in
no-vertical-line-r11{c14 c15} ==> Ir11c15 = in
horizontal-line-{r10 r11}c15 ==> Ir10c15 = out
no-vertical-line-r10{c14 c15} ==> Ir10c14 = out
vertical-line-r10{c13 c14} ==> Ir10c13 = in
no-horizontal-line-{r9 r10}c13 ==> Ir9c13 = in
no-vertical-line-r9{c12 c13} ==> Ir9c12 = in
no-vertical-line-r9{c13 c14} ==> Ir9c14 = in
no-horizontal-line-{r8 r9}c13 ==> Ir8c13 = in
horizontal-line-{r11 r12}c14 ==> Ir12c14 = out
no-vertical-line-r12{c13 c14} ==> Ir12c13 = out
vertical-line-r12{c11 c12} ==> Ir12c11 = out
same-colour-in-{r13 r14}c12 ==> Hr14c12 = 0
whip[1]: Pr9c14{o .} ==> Br8c13 ≠ e, Br8c13 ≠ s, Br8c13 ≠ ne, Br8c13 ≠ ns, Br8c13 ≠ se, Br8c13 ≠ ew, Br8c13 ≠ sw, Br8c13 ≠ esw, Br8c13 ≠ swn, Br8c13 ≠ wne, Br8c13 ≠ nes, Br8c14 ≠ s, Br8c14 ≠ w, Br9c14 ≠ ns, Br9c14 ≠ nes
B-single: Br8c14 = n
P-single: Pr10c16 = nw
P-single: Pr9c15 = o
whip[1]: Pr10c16{nw .} ==> Br9c15 ≠ ew, Br10c15 ≠ se
B-single: Br10c15 = ns
B-single: Br9c15 = se
whip[1]: Pr9c15{o .} ==> Br9c14 ≠ se
B-single: Br9c14 = s
N-single: Nr9c14 = 1
whip[1]: Pr8c14{ew .} ==> Br7c13 ≠ nw, Br7c13 ≠ se, Br7c13 ≠ esw, Br7c13 ≠ nes, Br7c14 ≠ nw, Br7c14 ≠ ew, Br7c14 ≠ wne, Br7c13 ≠ o, Br7c13 ≠ n, Br7c13 ≠ w, Br7c14 ≠ o, Br7c14 ≠ n, Br7c14 ≠ e, Br7c14 ≠ w, Br7c14 ≠ ne
whip[1]: Br7c14{nes .} ==> Nr7c14 ≠ 0
whip[1]: Br7c13{wne .} ==> Nr7c13 ≠ 0
whip[1]: Br8c13{nw .} ==> Nr8c13 ≠ 3
whip[1]: Vr10c16{0 .} ==> Br10c16 ≠ w
B-single: Br10c16 = o
whip[1]: Pr11c16{sw .} ==> Br11c15 ≠ ns, Br11c15 ≠ n
whip[1]: Br11c15{nes .} ==> Nr11c15 ≠ 1
whip[1]: Vr11c16{1 .} ==> Br11c16 ≠ o
B-single: Br11c16 = w
whip[1]: Vr12c15{1 .} ==> Pr12c15 ≠ ew, Pr13c15 ≠ ew, Br12c14 ≠ ns, Br12c15 ≠ nes
P-single: Pr14c14 = ne
P-single: Pr14c13 = o
P-single: Pr13c14 = sw
P-single: Pr13c15 = ne
P-single: Pr12c15 = sw
B-single: Br12c15 = esw
B-single: Br12c14 = ne
w[1]-1-in-r14c12-symmetric-ne-corner ==> Pr15c12 ≠ sw, Pr15c12 ≠ o
whip[1]: Pr14c14{ne .} ==> Br13c13 ≠ ns, Br13c14 ≠ ns, Br14c13 ≠ ns
B-single: Br14c13 = s
N-single: Nr14c13 = 1
B-single: Br13c14 = sw
B-single: Br13c13 = ne
whip[1]: Pr14c13{o .} ==> Br13c12 ≠ s, Br13c12 ≠ sw, Br14c12 ≠ n
B-single: Br14c12 = w
V-single: Vr14c12 = 1
vertical-line-r14{c11 c12} ==> Ir14c11 = out
whip[1]: Vr14c12{1 .} ==> Br14c11 ≠ o, Br14c11 ≠ n, Br14c11 ≠ s, Br14c11 ≠ w, Br14c11 ≠ ns, Br14c11 ≠ nw, Br14c11 ≠ sw, Br14c11 ≠ swn
whip[1]: Br14c11{nes .} ==> Nr14c11 ≠ 0
whip[1]: Br13c12{w .} ==> Nr13c12 ≠ 2
whip[1]: Pr12c15{sw .} ==> Br11c15 ≠ nes
B-single: Br11c15 = ne
N-single: Nr11c15 = 2
whip[1]: Pr15c12{nw .} ==> Br15c11 ≠ ne, Br15c11 ≠ sw, Br15c11 ≠ wne, Br15c11 ≠ s
whip[1]: Pr8c15{ew .} ==> Br7c14 ≠ se, Br7c14 ≠ esw, Br7c14 ≠ nes, Br7c15 ≠ swn
B-single: Br7c15 = ns
N-single: Nr7c15 = 2
P-single: Pr7c15 = ew
H-single: Hr7c14 = 1
V-single: Vr6c15 = 0
no-vertical-line-r6{c14 c15} ==> Ir6c14 = in
whip[1]: Pr7c15{ew .} ==> Br7c14 ≠ s, Br6c14 ≠ ne, Br6c14 ≠ w, Br6c14 ≠ e, Br6c14 ≠ n, Br6c14 ≠ o, Br6c14 ≠ nw, Br6c14 ≠ se, Br6c14 ≠ ew, Br6c14 ≠ esw, Br6c14 ≠ wne, Br6c14 ≠ nes, Br6c15 ≠ esw, Br7c14 ≠ sw
B-single: Br6c15 = nes
P-single: Pr6c16 = sw
whip[1]: Pr6c16{sw .} ==> Br5c15 ≠ ne, Br5c15 ≠ ew
whip[1]: Br5c15{sw .} ==> Pr5c16 ≠ ns
whip[1]: Pr5c16{nw .} ==> Br4c15 ≠ swn, Br4c15 ≠ wne
whip[1]: Br4c15{nes .} ==> Pr4c16 ≠ o, Pr4c16 ≠ nw, Pr5c16 ≠ o, Pr5c15 ≠ ns, Pr5c15 ≠ sw
P-single: Pr6c15 = ew
H-single: Hr6c14 = 1
V-single: Vr5c15 = 0
P-single: Pr5c16 = nw

LOOP[6]: Hr6c14-Hr6c15-Vr6c16-Hr7c15-Hr7c14- ==> Vr6c14 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r5{c13 c14}-fwd-diag-2s-3 ==> Vr5c13 = 0, Hr5c13 = 0
no-vertical-line-r6{c13 c14} ==> Ir6c13 = in
no-vertical-line-r5{c14 c15} ==> Ir5c14 = out
whip[1]: Pr6c15{ew .} ==> Br6c14 ≠ s, Br5c14 ≠ ne, Br5c14 ≠ nw, Br5c14 ≠ se, Br5c14 ≠ ew, Br5c15 ≠ sw, Br6c14 ≠ sw
B-single: Br5c15 = ns
whip[1]: Br6c14{swn .} ==> Pr6c14 ≠ ns, Pr6c14 ≠ nw, Pr7c14 ≠ o, Pr7c14 ≠ ns, Pr7c14 ≠ sw, Nr6c14 ≠ 0, Nr6c14 ≠ 1
whip[1]: Pr7c14{ew .} ==> Br6c13 ≠ se, Br7c13 ≠ wne, Br7c13 ≠ ne
whip[1]: Pr6c14{ew .} ==> Br6c13 ≠ ne
whip[1]: Vr6c14{0 .} ==> Pr6c14 ≠ se, Pr7c14 ≠ ne, Br6c13 ≠ ew, Br6c14 ≠ swn
B-single: Br6c14 = ns
N-single: Nr6c14 = 2
w[1]-1-in-r5c13-asymmetric-se-corner ==> Pr5c13 ≠ sw, Pr5c13 ≠ ew, Pr5c13 ≠ ns
whip[1]: Pr5c13{se .} ==> Br4c12 ≠ ne, Br4c12 ≠ ns, Br4c12 ≠ swn, Br4c12 ≠ wne, Br4c13 ≠ sw, Br5c12 ≠ ne, Br5c12 ≠ wne, Br5c12 ≠ nes, Br5c13 ≠ n, Br5c13 ≠ w
whip[1]: Br5c13{s .} ==> Pr6c13 ≠ ne, Pr6c13 ≠ ns, Pr5c13 ≠ se, Pr5c14 ≠ ew, Pr5c14 ≠ sw
whip[1]: Pr5c14{ns .} ==> Vr4c14 ≠ 0, Br4c13 ≠ ns, Br4c14 ≠ ne, Br4c14 ≠ ns
V-single: Vr4c14 = 1
whip[1]: Vr4c14{1 .} ==> Pr4c14 ≠ ew
whip[1]: Pr4c14{sw .} ==> Hr4c14 ≠ 1, Br3c14 ≠ s
H-single: Hr4c14 = 0
w[1]-diagonal-1-1-in-{r3c14...r2c15}-with-no-sw-outer-sides ==> Vr2c16 = 0
no-vertical-line-r2{c15 c16} ==> Ir2c15 = out
no-horizontal-line-{r1 r2}c15 ==> Ir1c15 = out
no-horizontal-line-{r3 r4}c14 ==> Ir4c14 = in
vertical-line-r4{c13 c14} ==> Ir4c13 = out
no-horizontal-line-{r4 r5}c13 ==> Ir5c13 = out
no-vertical-line-r5{c12 c13} ==> Ir5c12 = out
same-colour-in-{r4 r5}c12 ==> Hr5c12 = 0
same-colour-in-r5{c13 c14} ==> Vr5c14 = 0
w[1]-diagonal-3-2-in-{r6c15...r5c14}-non-closed-nw-corner ==> Hr5c14 = 1
w[1]-diagonal-3-2-in-{r4c15...r5c14}-non-closed-sw-corner ==> Hr4c15 = 1, Vr3c16 = 0
w[1]-diagonal-1-1-in-{r5c13...r6c12}-with-no-ne-outer-sides ==> Hr7c12 = 0, Vr6c12 = 0
P-single: Pr5c15 = ew
V-single: Vr4c15 = 0
P-single: Pr6c14 = ew
H-single: Hr6c13 = 1
w[1]-1-in-r8c11-asymmetric-ne-corner ==> Pr9c11 ≠ ew, Pr9c11 ≠ se, Pr9c11 ≠ nw, Pr9c11 ≠ ns
no-vertical-line-r3{c15 c16} ==> Ir3c15 = out
same-colour-in-{r2 r3}c15 ==> Hr3c15 = 0
different-colours-in-r3{c14 c15} ==> Hr3c15 = 1
same-colour-in-r4{c12 c13} ==> Vr4c13 = 0
w[1]-2-in-r4c13-open-sw-corner ==> Hr4c13 = 1
same-colour-in-r1{c15 c16} ==> Vr1c16 = 0
same-colour-in-r1{c14 c15} ==> Vr1c15 = 0
same-colour-in-{r0 r1}c15 ==> Hr1c15 = 0
different-colours-in-r2{c14 c15} ==> Hr2c15 = 1

LOOP[20]: Hr4c12-Hr4c13-Vr4c14-Hr5c14-Hr5c15-Vr4c16-Hr4c15-Vr3c15-Vr2c15-Hr2c14-Vr1c14-Hr1c13-Hr1c12-Hr1c11-Vr1c11-Hr2c11-Vr2c12-Hr3c11-Vr3c11- ==> Hr4c11 = 0
no-horizontal-line-{r3 r4}c11 ==> Ir4c11 = in
different-colours-in-r4{c11 c12} ==> Hr4c12 = 1
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1

LOOP[22]: Vr4c11-Vr3c11-Hr3c11-Vr2c12-Hr2c11-Vr1c11-Hr1c11-Hr1c12-Hr1c13-Vr1c14-Hr2c14-Vr2c15-Vr3c15-Hr4c15-Vr4c16-Hr5c15-Hr5c14-Vr4c14-Hr4c13-Hr4c12-Vr4c12- ==> Hr5c11 = 0
no-horizontal-line-{r4 r5}c11 ==> Ir5c11 = in
different-colours-in-r5{c11 c12} ==> Hr5c12 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1

LOOP[24]: Vr5c11-Vr4c11-Vr3c11-Hr3c11-Vr2c12-Hr2c11-Vr1c11-Hr1c11-Hr1c12-Hr1c13-Vr1c14-Hr2c14-Vr2c15-Vr3c15-Hr4c15-Vr4c16-Hr5c15-Hr5c14-Vr4c14-Hr4c13-Hr4c12-Vr4c12-Vr5c12- ==> Hr6c11 = 0
no-horizontal-line-{r5 r6}c11 ==> Ir6c11 = in
no-vertical-line-r6{c11 c12} ==> Ir6c12 = in
no-horizontal-line-{r6 r7}c12 ==> Ir7c12 = in
same-colour-in-r6{c12 c13} ==> Vr6c13 = 0
w[1]-diagonal-3-2s-in-{r4c15...r6c13}-non-closed-sw-end ==> Hr7c13 = 1
P-single: Pr7c14 = ew
V-single: Vr7c14 = 0
no-vertical-line-r7{c13 c14} ==> Ir7c13 = out
different-colours-in-{r7 r8}c13 ==> Hr8c13 = 1
different-colours-in-r7{c12 c13} ==> Hr7c13 = 1
w[1]-diagonal-3-2s-in-{r4c15...r7c12}-non-closed-sw-end ==> Vr7c12 = 1
vertical-line-r7{c11 c12} ==> Ir7c11 = out
no-vertical-line-r8{c12 c13} ==> Ir8c12 = in
same-colour-in-{r8 r9}c12 ==> Hr9c12 = 0
different-colours-in-{r6 r7}c11 ==> Hr7c11 = 1
different-colours-in-{r5 r6}c12 ==> Hr6c12 = 1
whip[1]: Hr4c14{0 .} ==> Pr4c15 ≠ ew
whip[1]: Pr4c15{ns .} ==> Br3c14 ≠ w, Br3c15 ≠ s, Br3c15 ≠ ne, Br3c15 ≠ se, Br3c15 ≠ nes, Br3c14 ≠ n, Br3c15 ≠ o, Br3c15 ≠ e
B-single: Br3c14 = e
P-single: Pr5c13 = o
P-single: Pr3c14 = o
P-single: Pr4c14 = sw
w[1]-1-in-r3c13-symmetric-ne-corner ==> Pr4c13 ≠ sw
P-single: Pr4c13 = ew
w[1]-1-in-r2c15-asymmetric-sw-corner ==> Pr2c16 ≠ ns
P-single: Pr2c16 = o
whip[1]: Pr5c13{o .} ==> Br4c12 ≠ nes, Br4c13 ≠ ew, Br5c12 ≠ n, Br5c12 ≠ e, Br5c12 ≠ ns, Br5c12 ≠ nw, Br5c12 ≠ se, Br5c12 ≠ ew, Br5c12 ≠ esw, Br5c12 ≠ swn
B-single: Br4c13 = ne
whip[1]: Br5c12{sw .} ==> Pr5c12 ≠ ne, Pr5c12 ≠ se, Pr5c12 ≠ ew, Nr5c12 ≠ 3
whip[1]: Br4c12{nw .} ==> Nr4c12 ≠ 3
whip[1]: Pr3c14{o .} ==> Br2c14 ≠ ns, Br2c14 ≠ nes, Br3c13 ≠ e
B-single: Br3c13 = s
whip[1]: Br2c14{ne .} ==> Nr2c14 ≠ 3
whip[1]: Pr2c16{o .} ==> Br1c15 ≠ wne, Br2c15 ≠ e
B-single: Br1c15 = o
N-single: Nr1c15 = 0
P-single: Pr1c16 = o
P-single: Pr1c15 = o
P-single: Pr2c15 = sw
w[1]-1-in-r2c15-asymmetric-nw-corner ==> Pr3c16 ≠ sw, Pr3c16 ≠ ns
P-single: Pr3c16 = o
whip[1]: Pr1c15{o .} ==> Br1c14 ≠ esw
B-single: Br1c14 = sw
N-single: Nr1c14 = 2
whip[1]: Pr2c15{sw .} ==> Br2c15 ≠ s, Br2c14 ≠ n
B-single: Br2c14 = ne
N-single: Nr2c14 = 2
P-single: Pr3c15 = ns
B-single: Br2c15 = w
whip[1]: Pr3c15{ns .} ==> Br3c15 ≠ wne
whip[1]: Br3c15{esw .} ==> Nr3c15 ≠ 0
whip[1]: Pr3c16{o .} ==> Br3c15 ≠ ew, Br3c15 ≠ esw
whip[1]: Br3c15{sw .} ==> Pr4c16 ≠ ns, Nr3c15 ≠ 3
P-single: Pr4c16 = sw
whip[1]: Pr4c16{sw .} ==> Br3c15 ≠ w, Br4c15 ≠ esw
B-single: Br4c15 = nes
P-single: Pr5c14 = ne
P-single: Pr4c15 = ne
B-single: Br3c15 = sw
N-single: Nr3c15 = 2
w[1]-1-in-r5c13-symmetric-ne-corner ==> Pr6c13 ≠ sw
P-single: Pr6c13 = ew
w[1]-1-in-r6c12-asymmetric-ne-corner ==> Pr7c12 ≠ ew, Pr7c12 ≠ ns
whip[1]: Pr5c14{ne .} ==> Br4c14 ≠ ew, Br5c13 ≠ e, Br5c14 ≠ sw
B-single: Br5c14 = ns
B-single: Br5c13 = s
B-single: Br4c14 = sw
whip[1]: Pr6c13{ew .} ==> Br6c12 ≠ w, Br6c12 ≠ s, Br6c12 ≠ e, Br5c12 ≠ w, Br5c12 ≠ o, Br6c13 ≠ nw, Br6c13 ≠ sw
B-single: Br6c13 = ns
B-single: Br6c12 = n
P-single: Pr7c12 = sw
P-single: Pr7c13 = se
whip[1]: Pr7c12{sw .} ==> Br7c12 ≠ ns, Br7c12 ≠ ne, Br7c11 ≠ ns, Br7c11 ≠ w, Br7c11 ≠ s, Br7c11 ≠ e, Br7c11 ≠ n, Br7c11 ≠ o, Br6c11 ≠ ne, Br6c11 ≠ w, Br6c11 ≠ e, Br6c11 ≠ n, Br6c11 ≠ o, Br6c11 ≠ nw, Br6c11 ≠ se, Br6c11 ≠ ew, Br6c11 ≠ esw, Br6c11 ≠ wne, Br6c11 ≠ nes, Br7c11 ≠ nw, Br7c11 ≠ se, Br7c11 ≠ ew, Br7c11 ≠ sw, Br7c11 ≠ esw, Br7c11 ≠ swn, Br7c12 ≠ nw, Br7c12 ≠ se
whip[1]: Br7c12{sw .} ==> Pr8c12 ≠ se, Pr8c12 ≠ ew
whip[1]: Pr8c12{nw .} ==> Br7c12 ≠ sw, Br8c11 ≠ w, Br8c12 ≠ ne, Br8c12 ≠ ns, Br8c12 ≠ nw, Br8c12 ≠ swn, Br8c12 ≠ wne, Br8c12 ≠ nes, Br8c11 ≠ s, Br8c12 ≠ n
B-single: Br7c12 = ew
whip[1]: Pr8c13{ns .} ==> Br7c13 ≠ s, Br7c13 ≠ ns, Br8c13 ≠ nw, Br7c13 ≠ e, Br8c13 ≠ o
whip[1]: Br8c13{w .} ==> Nr8c13 ≠ 0, Nr8c13 ≠ 2
N-single: Nr8c13 = 1
whip[1]: Br7c13{swn .} ==> Nr7c13 ≠ 1
whip[1]: Br8c11{e .} ==> Hr9c11 ≠ 1, Vr8c11 ≠ 1, Pr9c11 ≠ ne, Pr8c11 ≠ ns, Pr8c11 ≠ se, Pr8c11 ≠ sw, Pr9c12 ≠ nw, Pr9c12 ≠ ew, Pr9c12 ≠ sw
V-single: Vr8c11 = 0
H-single: Hr9c11 = 0
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ esw, Br8c10 ≠ wne, Br8c10 ≠ nes
B-single: Br8c10 = swn
H-single: Hr8c10 = 1
H-single: Hr9c10 = 1
V-single: Vr8c10 = 1
w[1]-3-in-r8c10-asymmetric-se-corner ==> Vr7c10 = 0, Hr8c9 = 0
w[1]-3-in-r8c10-asymmetric-ne-corner ==> Vr9c10 = 0, Hr9c9 = 0
P-single: Pr8c10 = se
P-single: Pr9c10 = ne
P-single: Pr9c11 = sw
V-single: Vr9c11 = 1
whip[1]: Hr8c10{1 .} ==> Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ e, Br7c10 ≠ w, Br7c10 ≠ ne, Br7c10 ≠ nw, Br7c10 ≠ ew, Br7c10 ≠ wne
whip[1]: Br7c10{nes .} ==> Nr7c10 ≠ 0
whip[1]: Hr9c10{1 .} ==> Br9c10 ≠ o, Br9c10 ≠ e, Br9c10 ≠ s, Br9c10 ≠ w, Br9c10 ≠ se, Br9c10 ≠ ew, Br9c10 ≠ sw, Br9c10 ≠ esw
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 0
whip[1]: Vr8c10{1 .} ==> Br8c9 ≠ o, Br8c9 ≠ n, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ sw, Br8c9 ≠ swn
whip[1]: Br8c9{nes .} ==> Nr8c9 ≠ 0
whip[1]: Vr7c10{0 .} ==> Pr7c10 ≠ ns, Pr7c10 ≠ se, Pr7c10 ≠ sw, Br7c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c10 ≠ swn
whip[1]: Br7c9{nw .} ==> Nr7c9 ≠ 3
whip[1]: Hr8c9{0 .} ==> Pr8c9 ≠ se, Pr8c9 ≠ ew, Br7c9 ≠ s, Br7c9 ≠ ns, Br8c9 ≠ ne, Br8c9 ≠ wne, Br8c9 ≠ nes
whip[1]: Pr8c9{sw .} ==> Br7c8 ≠ w
whip[1]: Br7c8{nes .} ==> Pr7c9 ≠ o, Pr7c9 ≠ ne, Nr7c8 ≠ 1
whip[1]: Pr7c9{sw .} ==> Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ swn
whip[1]: Vr9c10{0 .} ==> Pr10c10 ≠ ne, Pr10c10 ≠ ns, Br9c9 ≠ e, Br9c9 ≠ ne, Br9c9 ≠ ew, Br9c9 ≠ wne, Br9c10 ≠ nw, Br9c10 ≠ swn, Br9c10 ≠ wne
whip[1]: Br9c9{swn .} ==> Hr10c9 ≠ 0, Pr10c9 ≠ o, Pr10c9 ≠ ns, Pr10c9 ≠ nw, Pr10c9 ≠ sw
H-single: Hr10c9 = 1
whip[1]: Hr10c9{1 .} ==> Br10c9 ≠ o, Br10c9 ≠ e, Br10c9 ≠ s, Br10c9 ≠ w, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ esw
whip[1]: Br10c9{nes .} ==> Nr10c9 ≠ 0
whip[1]: Pr10c9{ew .} ==> Br9c8 ≠ se, Br10c8 ≠ wne, Br10c8 ≠ nes, Br10c8 ≠ ne
whip[1]: Hr9c9{0 .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ se, Pr9c9 ≠ ew, Br8c9 ≠ se, Br8c9 ≠ esw, Br9c9 ≠ ns, Br9c9 ≠ swn
whip[1]: Br9c9{sw .} ==> Nr9c9 ≠ 3
whip[1]: Br8c9{ew .} ==> Nr8c9 ≠ 3
whip[1]: Pr9c11{sw .} ==> Br9c11 ≠ ns, Br9c11 ≠ ne, Br9c11 ≠ s, Br9c11 ≠ e, Br9c11 ≠ n, Br9c11 ≠ o, Br9c10 ≠ ns, Br9c10 ≠ n, Br9c11 ≠ nw, Br9c11 ≠ se, Br9c11 ≠ swn, Br9c11 ≠ wne, Br9c11 ≠ nes
whip[1]: Br9c11{esw .} ==> Pr10c11 ≠ o, Pr10c11 ≠ ew, Nr9c11 ≠ 0
whip[1]: Br9c10{nes .} ==> Nr9c10 ≠ 1
whip[1]: Pr8c11{ew .} ==> Br7c11 ≠ ne
whip[1]: Br7c11{nes .} ==> Pr7c11 ≠ o, Pr7c11 ≠ ns, Pr7c11 ≠ nw, Pr7c11 ≠ sw, Nr7c11 ≠ 0, Nr7c11 ≠ 1, Nr7c11 ≠ 2
N-single: Nr7c11 = 3
whip[1]: Pr7c11{ew .} ==> Br6c10 ≠ se, Br6c10 ≠ esw, Br6c10 ≠ nes, Br7c10 ≠ nes
whip[1]: Br7c10{se .} ==> Nr7c10 ≠ 3
whip[1]: Br6c11{swn .} ==> Nr6c11 ≠ 0
whip[1]: Pr7c13{se .} ==> Br7c13 ≠ ew, Br7c13 ≠ sw
B-single: Br7c13 = swn
N-single: Nr7c13 = 3
P-single: Pr8c13 = ne
P-single: Pr8c14 = ew
w[1]-1-in-r8c13-asymmetric-ne-corner ==> Pr9c13 ≠ nw
P-single: Pr9c13 = o
whip[1]: Pr8c13{ne .} ==> Br8c12 ≠ e, Br8c12 ≠ se, Br8c12 ≠ ew, Br8c12 ≠ esw, Br8c13 ≠ w
B-single: Br8c13 = n
whip[1]: Br8c12{sw .} ==> Nr8c12 ≠ 3
whip[1]: Pr8c14{ew .} ==> Br7c14 ≠ swn
B-single: Br7c14 = ns
N-single: Nr7c14 = 2
whip[1]: Pr9c13{o .} ==> Br8c12 ≠ s, Br8c12 ≠ sw, Br9c12 ≠ n, Br9c12 ≠ e, Br9c12 ≠ ne, Br9c12 ≠ ns, Br9c12 ≠ nw, Br9c12 ≠ se, Br9c12 ≠ ew, Br9c12 ≠ esw, Br9c12 ≠ swn, Br9c12 ≠ wne, Br9c12 ≠ nes
whip[1]: Br9c12{sw .} ==> Pr9c12 ≠ ne, Pr9c12 ≠ se, Nr9c12 ≠ 3
whip[1]: Br8c12{w .} ==> Nr8c12 ≠ 2
whip[1]: Pr6c12{ew .} ==> Br5c11 ≠ nw, Br5c11 ≠ se, Br5c11 ≠ esw, Br5c11 ≠ nes, Br5c11 ≠ o, Br5c11 ≠ n, Br5c11 ≠ w
whip[1]: Br5c11{wne .} ==> Nr5c11 ≠ 0
whip[1]: Br5c12{sw .} ==> Nr5c12 ≠ 0
whip[1]: Vr2c16{0 .} ==> Br2c16 ≠ w
B-single: Br2c16 = o
whip[1]: Vr3c16{0 .} ==> Br3c16 ≠ w
B-single: Br3c16 = o
whip[1]: Vr1c16{0 .} ==> Br1c16 ≠ w
B-single: Br1c16 = o
whip[1]: Hr1c15{0 .} ==> Br0c15 ≠ s
B-single: Br0c15 = o
whip[1]: Hr4c11{0 .} ==> Pr4c11 ≠ ne, Pr4c12 ≠ ew, Br3c11 ≠ swn, Br4c11 ≠ n, Br4c11 ≠ ns
P-single: Pr4c12 = se
P-single: Pr4c11 = ns
B-single: Br3c11 = nw
N-single: Nr3c11 = 2
whip[1]: Pr4c12{se .} ==> Br4c12 ≠ n
B-single: Br4c12 = nw
N-single: Nr4c12 = 2
whip[1]: Pr5c12{nw .} ==> Br5c11 ≠ ne, Br5c11 ≠ sw, Br5c11 ≠ wne, Br5c11 ≠ s
whip[1]: Pr4c11{ns .} ==> Br4c10 ≠ w
B-single: Br4c10 = ew
N-single: Nr4c10 = 2
whip[1]: Pr5c11{ns .} ==> Br5c11 ≠ swn, Br5c11 ≠ e
whip[1]: Br5c11{ew .} ==> Pr6c11 ≠ o, Pr6c11 ≠ ne, Pr6c11 ≠ sw, Nr5c11 ≠ 1, Nr5c11 ≠ 3
N-single: Nr5c11 = 2
whip[1]: Pr6c11{ew .} ==> Br6c10 ≠ sw, Br6c10 ≠ wne, Br6c10 ≠ o, Br6c10 ≠ s, Br6c10 ≠ w, Br6c10 ≠ ne
whip[1]: Br6c10{swn .} ==> Nr6c10 ≠ 0
whip[1]: Br4c11{esw .} ==> Nr4c11 ≠ 1
whip[1]: Hr5c11{0 .} ==> Pr5c11 ≠ ne, Pr5c12 ≠ nw, Br4c11 ≠ esw, Br5c11 ≠ ns
P-single: Pr5c12 = ns
P-single: Pr5c11 = ns
B-single: Br5c11 = ew
P-single: Pr6c12 = ne
B-single: Br4c11 = ew
N-single: Nr4c11 = 2
whip[1]: Pr5c12{ns .} ==> Br5c12 ≠ s
B-single: Br5c12 = sw
N-single: Nr5c12 = 2
whip[1]: Pr5c11{ns .} ==> Br5c10 ≠ o, Br5c10 ≠ s
whip[1]: Br5c10{se .} ==> Nr5c10 ≠ 0
whip[1]: Pr6c12{ne .} ==> Br6c11 ≠ ns, Br6c11 ≠ swn
whip[1]: Br6c11{sw .} ==> Nr6c11 ≠ 3
whip[1]: Pr11c12{sw .} ==> Vr10c12 ≠ 1, Br10c11 ≠ se, Br10c11 ≠ nes, Br10c12 ≠ nw, Br10c12 ≠ w
V-single: Vr10c12 = 0
whip[1]: Vr10c12{0 .} ==> Pr10c12 ≠ ns, Pr10c12 ≠ se, Pr10c12 ≠ sw
whip[1]: Br10c11{ns .} ==> Nr10c11 ≠ 3
whip[1]: Pr13c12{nw .} ==> Br13c11 ≠ ne, Br13c11 ≠ sw, Br13c11 ≠ wne, Br13c11 ≠ s
whip[1]: Vr7c16{0 .} ==> Br7c16 ≠ w
B-single: Br7c16 = o
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Vr5c16{0 .} ==> Br5c16 ≠ w
B-single: Br5c16 = o
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Vr2c5{0 .} ==> Br2c5 ≠ ew, Pr3c5 ≠ ns, Pr3c5 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ esw
P-single: Pr4c4 = ne
H-single: Hr4c4 = 1
V-single: Vr3c4 = 1
V-single: Vr4c4 = 0
P-single: Pr3c5 = o
H-single: Hr3c4 = 0
V-single: Vr3c5 = 0
B-single: Br2c4 = w
N-single: Nr2c4 = 1
P-single: Pr3c4 = ns
B-single: Br2c5 = e
N-single: Nr2c5 = 1
w[1]-1-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ o
P-single: Pr5c3 = se
H-single: Hr5c3 = 1
V-single: Vr5c3 = 1
w[1]-1-in-r3c5-symmetric-nw-corner ==> Pr4c6 ≠ o
P-single: Pr4c6 = sw
H-single: Hr4c5 = 1
V-single: Vr4c6 = 1
vertical-line-r4{c5 c6} ==> Ir4c5 = in
vertical-line-r5{c2 c3} ==> Ir5c3 = out
no-vertical-line-r3{c4 c5} ==> Ir3c4 = out
horizontal-line-{r3 r4}c4 ==> Ir4c4 = in
same-colour-in-r4{c4 c5} ==> Vr4c5 = 0
P-single: Pr5c5 = sw
H-single: Hr5c4 = 1
H-single: Hr5c5 = 0
V-single: Vr5c5 = 1
no-horizontal-line-{r4 r5}c5 ==> Ir5c5 = in
vertical-line-r5{c4 c5} ==> Ir5c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = out
no-vertical-line-r6{c3 c4} ==> Ir6c3 = out
same-colour-in-{r5 r6}c3 ==> Hr6c3 = 0
P-single: Pr6c4 = o
V-single: Vr5c4 = 0
whip[1]: Pr4c4{ne .} ==> Br3c3 ≠ o, Br3c4 ≠ ns, Br3c4 ≠ ew, Br4c3 ≠ e, Br4c4 ≠ nw, Br4c4 ≠ ew
B-single: Br4c4 = ns
P-single: Pr4c5 = ew
P-single: Pr5c4 = ew
B-single: Br4c3 = s
B-single: Br3c4 = sw
B-single: Br3c3 = e
N-single: Nr3c3 = 1
whip[1]: Pr4c5{ew .} ==> Br3c5 ≠ w, Br4c5 ≠ sw
B-single: Br4c5 = ne
B-single: Br3c5 = s
whip[1]: Pr5c6{ns .} ==> Br4c6 ≠ se, Br5c5 ≠ ns
whip[1]: Pr5c4{ew .} ==> Br5c4 ≠ w, Br5c3 ≠ se
B-single: Br5c3 = nw
B-single: Br5c4 = ne
N-single: Nr5c4 = 2
whip[1]: Pr6c5{ns .} ==> Br5c5 ≠ s, Br6c5 ≠ wne, Br5c5 ≠ e, Br6c5 ≠ e
whip[1]: Br6c5{ew .} ==> Nr6c5 ≠ 1, Nr6c5 ≠ 3
N-single: Nr6c5 = 2
whip[1]: Br5c5{sw .} ==> Nr5c5 ≠ 1
N-single: Nr5c5 = 2
whip[1]: Pr6c3{nw .} ==> Br6c3 ≠ ns, Br6c3 ≠ nw, Br5c2 ≠ o, Br5c2 ≠ s, Br6c3 ≠ n
whip[1]: Br6c3{w .} ==> Nr6c3 ≠ 2
whip[1]: Br5c2{se .} ==> Nr5c2 ≠ 0
whip[1]: Pr5c7{ew .} ==> Hr5c7 ≠ 0, Br4c7 ≠ ew, Br5c7 ≠ se, Br4c7 ≠ w, Br5c7 ≠ s
H-single: Hr5c7 = 1
whip[1]: Hr5c7{1 .} ==> Pr5c8 ≠ o, Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr5c8 ≠ se
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ sw, Br5c8 ≠ nw
whip[1]: Br5c8{ew .} ==> Pr6c9 ≠ o, Pr6c9 ≠ se
whip[1]: Pr6c9{sw .} ==> Br6c9 ≠ nw, Br6c9 ≠ wne
whip[1]: Br4c8{w .} ==> Nr4c8 ≠ 2
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 1
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 1
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Hr15c3{1 .} ==> Br15c3 ≠ esw, Br14c3 ≠ o, Pr15c3 ≠ o, Pr15c4 ≠ o, Pr15c4 ≠ ne, Pr15c4 ≠ ns, Pr15c4 ≠ se, Br14c3 ≠ n, Br14c3 ≠ e, Br14c3 ≠ w, Br14c3 ≠ ne, Br14c3 ≠ nw, Br14c3 ≠ ew, Br14c3 ≠ wne
P-single: Pr15c3 = se
whip[1]: Pr15c3{se .} ==> Br15c2 ≠ w, Br15c2 ≠ s, Br15c2 ≠ n, Br15c2 ≠ o, Br14c3 ≠ sw, Br14c3 ≠ esw, Br14c3 ≠ swn, Br15c2 ≠ ne, Br15c2 ≠ ns, Br15c2 ≠ nw, Br15c2 ≠ sw, Br15c2 ≠ swn, Br15c2 ≠ wne, Br15c2 ≠ nes, Br15c3 ≠ nes
whip[1]: Br15c3{wne .} ==> Pr16c3 ≠ o, Pr16c3 ≠ ew
whip[1]: Br15c2{esw .} ==> Nr15c2 ≠ 0
whip[1]: Br14c3{nes .} ==> Nr14c3 ≠ 0
whip[1]: Pr15c4{sw .} ==> Br14c4 ≠ sw, Br14c4 ≠ esw, Br14c4 ≠ swn, Br15c4 ≠ nw, Br15c4 ≠ swn, Br15c4 ≠ wne
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
whip[1]: Vr1c1{0 .} ==> Br1c0 ≠ e
B-single: Br1c0 = o
whip[1]: Vr15c16{0 .} ==> Br15c16 ≠ w
B-single: Br15c16 = o
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s
B-single: Br0c4 = o
whip[1]: Hr1c5{0 .} ==> Br0c5 ≠ s
B-single: Br0c5 = o
whip[1]: Vr14c2{0 .} ==> Br14c1 ≠ e
whip[1]: Br14c1{w .} ==> Pr15c1 ≠ ne, Pr14c1 ≠ se
whip[1]: Pr14c1{ns .} ==> Br13c1 ≠ s, Br13c1 ≠ ns, Br13c1 ≠ se, Br13c1 ≠ nes
whip[1]: Pr15c1{se .} ==> Br15c1 ≠ ne, Br15c1 ≠ n
whip[1]: Br15c1{swn .} ==> Pr15c2 ≠ sw
P-single: Pr15c2 = o
H-single: Hr15c1 = 0
V-single: Vr15c2 = 0
w[1]-1-in-r14c1-symmetric-se-corner ==> Pr14c1 ≠ o
whip[1]: Pr15c2{o .} ==> Br14c1 ≠ s, Br15c1 ≠ e, Br15c1 ≠ esw, Br15c1 ≠ swn, Br15c2 ≠ ew, Br15c2 ≠ esw
whip[1]: Br15c2{se .} ==> Pr16c2 ≠ ne, Pr16c2 ≠ nw, Nr15c2 ≠ 3
whip[1]: Br15c1{sw .} ==> Pr15c1 ≠ se, Nr15c1 ≠ 1, Nr15c1 ≠ 3
whip[1]: Pr14c1{ns .} ==> Vr13c1 ≠ 0, Br13c1 ≠ ne, Br13c1 ≠ o, Br13c1 ≠ n, Br13c1 ≠ e
V-single: Vr13c1 = 1
vertical-line-r13{c0 c1} ==> Ir13c1 = in
whip[1]: Vr13c1{1 .} ==> Br13c0 ≠ o, Pr13c1 ≠ o, Pr13c1 ≠ ne
B-single: Br13c0 = e
whip[1]: Pr13c1{se .} ==> Br12c1 ≠ ne, Br12c1 ≠ sw, Br12c1 ≠ esw, Br12c1 ≠ swn, Br12c1 ≠ o, Br12c1 ≠ n, Br12c1 ≠ e
whip[1]: Br12c1{nes .} ==> Nr12c1 ≠ 0
whip[1]: Br13c1{wne .} ==> Nr13c1 ≠ 0
whip[1]: Hr14c2{0 .} ==> Br13c2 ≠ sw, Br13c2 ≠ ns, Br13c2 ≠ se
whip[1]: Br15c7{w .} ==> Pr15c8 ≠ sw, Pr16c7 ≠ ne, Pr16c8 ≠ nw, Pr15c7 ≠ se
whip[1]: Pr16c8{ew .} ==> Br15c8 ≠ nw, Br15c8 ≠ ew
whip[1]: Br15c8{sw .} ==> Pr16c9 ≠ o, Pr15c8 ≠ se
whip[1]: Pr16c9{ew .} ==> Br15c9 ≠ o, Br15c9 ≠ n, Br15c9 ≠ e, Br15c9 ≠ ne
whip[1]: Br15c9{nes .} ==> Nr15c9 ≠ 0
whip[1]: Pr16c7{ew .} ==> Br15c6 ≠ ew, Br15c6 ≠ wne, Br15c6 ≠ e, Br15c6 ≠ ne
whip[1]: Pr16c4{ew .} ==> Br15c4 ≠ ne, Br16c4 ≠ o, Hr16c4 ≠ 0, Br15c4 ≠ ew, Br15c4 ≠ o, Br15c4 ≠ n, Br15c4 ≠ e, Br15c4 ≠ w
H-single: Hr16c4 = 1
w[1]-3-in-r15c5-hit-by-horiz-line-at-sw ==> Vr15c6 = 1, Hr15c5 = 1
w[1]-3-in-r15c5-closed-ne-corner ==> Pr16c5 ≠ ne, Pr16c5 ≠ o
B-single: Br16c4 = n
horizontal-line-{r15 r16}c4 ==> Ir15c4 = in
whip[1]: Vr15c6{1 .} ==> Br15c6 ≠ o, Pr16c6 ≠ o, Pr16c6 ≠ ew, Pr15c6 ≠ o, Pr15c6 ≠ ne, Pr15c6 ≠ nw, Pr15c6 ≠ ew, Br15c5 ≠ swn, Br15c6 ≠ n, Br15c6 ≠ s, Br15c6 ≠ ns, Br15c6 ≠ se, Br15c6 ≠ nes
whip[1]: Br15c6{swn .} ==> Pr15c7 ≠ sw, Nr15c6 ≠ 0
whip[1]: Br15c5{nes .} ==> Pr15c5 ≠ o, Pr15c5 ≠ nw
whip[1]: Pr15c5{sw .} ==> Br14c4 ≠ se, Br14c4 ≠ nes
whip[1]: Pr15c6{sw .} ==> Br14c5 ≠ se, Br14c5 ≠ esw, Br14c5 ≠ nes, Br14c6 ≠ sw, Br14c6 ≠ esw, Br14c6 ≠ swn
whip[1]: Hr15c5{1 .} ==> Br14c5 ≠ o, Pr15c5 ≠ ns, Pr15c5 ≠ sw, Pr15c6 ≠ ns, Pr15c6 ≠ se, Br14c5 ≠ n, Br14c5 ≠ e, Br14c5 ≠ w, Br14c5 ≠ ne, Br14c5 ≠ nw, Br14c5 ≠ ew, Br14c5 ≠ wne, Br15c5 ≠ esw
P-single: Pr15c6 = sw
whip[1]: Pr15c6{sw .} ==> Br14c6 ≠ ns, Br14c6 ≠ w, Br14c6 ≠ s, Br14c6 ≠ nw, Br14c6 ≠ se, Br14c6 ≠ ew, Br14c6 ≠ wne, Br14c6 ≠ nes, Br15c6 ≠ nw, Br15c6 ≠ swn
whip[1]: Br15c6{esw .} ==> Pr15c7 ≠ nw, Pr15c7 ≠ ew
whip[1]: Pr15c7{ns .} ==> Br14c7 ≠ s, Br14c7 ≠ ns, Br14c7 ≠ se, Br14c7 ≠ nes
whip[1]: Br14c6{ne .} ==> Pr14c6 ≠ ns, Pr14c6 ≠ se, Nr14c6 ≠ 3, Pr14c6 ≠ sw
whip[1]: Br14c5{swn .} ==> Nr14c5 ≠ 0
whip[1]: Pr15c5{ew .} ==> Br15c4 ≠ nes
whip[1]: Br15c4{esw .} ==> Nr15c4 ≠ 0
whip[1]: Br13c7{w .} ==> Pr13c8 ≠ sw, Pr14c7 ≠ ne, Pr14c8 ≠ nw, Pr13c7 ≠ se
whip[1]: Pr13c4{ew .} ==> Br13c3 ≠ w, Br12c4 ≠ sw, Br12c4 ≠ esw, Br12c4 ≠ swn, Br12c4 ≠ o, Br12c4 ≠ n, Br12c4 ≠ e, Br12c4 ≠ ne, Br13c3 ≠ s
whip[1]: Br13c3{e .} ==> Hr14c3 ≠ 1, Vr13c3 ≠ 1, Pr14c3 ≠ ne, Pr13c3 ≠ ns, Pr13c3 ≠ se, Pr13c3 ≠ sw, Pr14c4 ≠ nw, Pr14c4 ≠ ew, Pr14c4 ≠ sw
V-single: Vr13c3 = 0
H-single: Hr14c3 = 0
w[1]-2-in-r13c2-open-se-corner ==> Hr13c2 = 1, Vr13c2 = 1, Hr13c1 = 0, Vr12c2 = 0
P-single: Pr13c2 = se
P-single: Pr14c2 = nw
H-single: Hr14c1 = 1
P-single: Pr14c3 = o
w[1]-1-in-r11c3-asymmetric-sw-corner ==> Pr11c4 ≠ ew, Pr11c4 ≠ se, Pr11c4 ≠ nw, Pr11c4 ≠ ns
w[1]-1-in-r14c1-asymmetric-ne-corner ==> Pr15c1 ≠ ns
P-single: Pr15c1 = o
V-single: Vr15c1 = 0
no-vertical-line-r15{c0 c1} ==> Ir15c1 = out
no-vertical-line-r15{c1 c2} ==> Ir15c2 = out
no-horizontal-line-{r14 r15}c2 ==> Ir14c2 = out
no-vertical-line-r14{c1 c2} ==> Ir14c1 = out
no-vertical-line-r14{c2 c3} ==> Ir14c3 = out
no-horizontal-line-{r13 r14}c3 ==> Ir13c3 = out
no-vertical-line-r13{c2 c3} ==> Ir13c2 = out
horizontal-line-{r12 r13}c2 ==> Ir12c2 = in
no-vertical-line-r12{c1 c2} ==> Ir12c1 = in
horizontal-line-{r14 r15}c3 ==> Ir15c3 = in
same-colour-in-r15{c3 c4} ==> Vr15c4 = 0
different-colours-in-{r15 r16}c3 ==> Hr16c3 = 1
w[1]-3-in-r15c3-closed-sw-corner ==> Pr15c4 ≠ sw
different-colours-in-r12{c0 c1} ==> Hr12c1 = 1
same-colour-in-{r15 r16}c1 ==> Hr16c1 = 0
whip[1]: Vr13c3{0 .} ==> Br13c2 ≠ ne, Br13c2 ≠ ew
B-single: Br13c2 = nw
whip[1]: Hr14c3{0 .} ==> Br14c3 ≠ ns, Br14c3 ≠ nes
whip[1]: Br14c3{se .} ==> Nr14c3 ≠ 3
whip[1]: Hr13c2{1 .} ==> Br12c2 ≠ ne, Br12c2 ≠ nw, Br12c2 ≠ ew
whip[1]: Vr13c2{1 .} ==> Br13c1 ≠ w, Br13c1 ≠ nw, Br13c1 ≠ sw, Br13c1 ≠ swn
whip[1]: Br13c1{wne .} ==> Nr13c1 ≠ 1
whip[1]: Hr13c1{0 .} ==> Pr13c1 ≠ se, Br12c1 ≠ s, Br12c1 ≠ ns, Br12c1 ≠ se, Br12c1 ≠ nes, Br13c1 ≠ wne
P-single: Pr13c1 = ns
whip[1]: Br12c1{wne .} ==> Pr12c1 ≠ o, Pr12c1 ≠ ne
whip[1]: Pr11c2{ew .} ==> Br10c2 ≠ sw, Br10c2 ≠ esw, Br10c2 ≠ swn, Br11c1 ≠ sw, Br10c2 ≠ o, Br10c2 ≠ n, Br10c2 ≠ e, Br10c2 ≠ ne, Br11c1 ≠ ne
whip[1]: Br10c2{nes .} ==> Nr10c2 ≠ 0
whip[1]: Vr12c2{0 .} ==> Pr12c2 ≠ ns, Pr12c2 ≠ sw, Br12c1 ≠ ew, Br12c1 ≠ wne, Br12c2 ≠ sw
whip[1]: Br12c1{nw .} ==> Nr12c1 ≠ 3
whip[1]: Pr14c2{nw .} ==> Br13c1 ≠ ew, Br14c1 ≠ w
B-single: Br14c1 = n
P-single: Pr14c1 = ne
B-single: Br13c1 = esw
N-single: Nr13c1 = 3
whip[1]: Vr14c1{0 .} ==> Br14c0 ≠ e
B-single: Br14c0 = o
whip[1]: Pr15c1{o .} ==> Br15c1 ≠ sw
B-single: Br15c1 = o
N-single: Nr15c1 = 0
P-single: Pr16c1 = o
P-single: Pr16c2 = o
whip[1]: Pr16c1{o .} ==> Br16c1 ≠ n
B-single: Br16c1 = o
whip[1]: Pr16c2{o .} ==> Br16c2 ≠ n, Br15c2 ≠ se
B-single: Br15c2 = e
N-single: Nr15c2 = 1
P-single: Pr16c3 = ne
B-single: Br16c2 = o
whip[1]: Pr16c3{ne .} ==> Br16c3 ≠ o, Br15c3 ≠ wne
B-single: Br15c3 = swn
P-single: Pr16c4 = ew
B-single: Br16c3 = n
whip[1]: Pr16c4{ew .} ==> Br15c4 ≠ sw, Br15c4 ≠ esw
whip[1]: Br15c4{se .} ==> Nr15c4 ≠ 3
whip[1]: Vr15c1{0 .} ==> Br15c0 ≠ e
B-single: Br15c0 = o
whip[1]: Vr12c1{1 .} ==> Br12c0 ≠ o
B-single: Br12c0 = e
whip[1]: Pr15c4{ew .} ==> Br14c4 ≠ o, Br14c4 ≠ n, Br14c4 ≠ e, Br14c4 ≠ ne
whip[1]: Br14c4{wne .} ==> Nr14c4 ≠ 0
whip[1]: Pr11c4{sw .} ==> Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ nes, Br11c4 ≠ swn, Br11c4 ≠ wne, Br10c4 ≠ s, Br10c4 ≠ w, Br10c4 ≠ ns, Br11c3 ≠ n, Br11c3 ≠ e
whip[1]: Br11c3{w .} ==> Hr11c3 ≠ 1, Vr11c4 ≠ 1, Pr11c3 ≠ ne, Pr12c4 ≠ ne, Pr12c4 ≠ ns, Pr12c4 ≠ nw, Pr11c3 ≠ se, Pr11c3 ≠ ew, Pr11c4 ≠ sw
V-single: Vr11c4 = 0
H-single: Hr11c3 = 0
whip[1]: Vr11c4{0 .} ==> Br11c4 ≠ esw
B-single: Br11c4 = nes
H-single: Hr11c4 = 1
H-single: Hr12c4 = 1
V-single: Vr11c5 = 1
w[1]-3-in-r11c4-asymmetric-sw-corner ==> Vr10c5 = 0, Hr11c5 = 0
w[1]-3-in-r11c4-asymmetric-nw-corner ==> Vr12c5 = 0, Hr12c5 = 0
w[1]-diagonal-closed-3-1-in-{r11c4...r10c3} ==> Vr10c3 = 0, Hr10c3 = 0
w[1]-diagonal-1-1-in-{r10c3...r9c2}-with-no-nw-inner-sides ==> Hr10c2 = 0, Vr9c3 = 0
w[1]-diagonal-1-1-in-{r10c3...r9c4}-with-no-sw-outer-sides ==> Hr9c4 = 0, Vr9c5 = 0
w[1]-diagonal-1-1-in-{r8c4...r7c3}-with-no-se-outer-sides ==> Hr7c3 = 0, Vr7c3 = 0
P-single: Pr11c4 = ne
V-single: Vr10c4 = 1
P-single: Pr11c5 = sw
P-single: Pr12c5 = nw
w[1]-1-in-r12c5-symmetric-nw-corner ==> Pr13c6 ≠ se, Pr13c6 ≠ nw, Pr13c6 ≠ o
w[1]-1-in-r10c3-asymmetric-se-corner ==> Pr10c3 ≠ sw, Pr10c3 ≠ ew, Pr10c3 ≠ ns, Pr10c3 ≠ ne
w[1]-1-in-r9c2-symmetric-se-corner ==> Pr9c2 ≠ se, Pr9c2 ≠ nw, Pr9c2 ≠ o
no-horizontal-line-{r6 r7}c3 ==> Ir7c3 = out
no-vertical-line-r7{c2 c3} ==> Ir7c2 = out
no-vertical-line-r7{c1 c2} ==> Ir7c1 = out
no-horizontal-line-{r7 r8}c1 ==> Ir8c1 = out
horizontal-line-{r6 r7}c2 ==> Ir6c2 = in
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
same-colour-in-r6{c1 c2} ==> Vr6c2 = 0
w[1]-2-in-r6c1-open-ne-corner ==> Hr7c1 = 1, Vr7c1 = 0
same-colour-in-{r5 r6}c2 ==> Hr6c2 = 0
same-colour-in-r8{c0 c1} ==> Vr8c1 = 0
whip[1]: Hr11c4{1 .} ==> Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ ne
whip[1]: Br10c4{swn .} ==> Pr10c4 ≠ o, Pr10c4 ≠ ne, Pr10c4 ≠ nw, Pr10c4 ≠ ew, Pr10c5 ≠ sw, Nr10c4 ≠ 0, Nr10c4 ≠ 1
whip[1]: Pr10c4{sw .} ==> Br9c3 ≠ se, Br9c3 ≠ esw, Br10c3 ≠ n, Br10c3 ≠ s, Br10c3 ≠ w
B-single: Br10c3 = e
w[1]-1-in-r9c4-asymmetric-sw-corner ==> Pr9c5 ≠ ew, Pr9c5 ≠ se
whip[1]: Pr9c5{sw .} ==> Hr9c5 ≠ 1, Br9c5 ≠ nw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes, Br8c5 ≠ ns, Br9c4 ≠ n, Br9c4 ≠ e, Br9c5 ≠ n, Br9c5 ≠ ne, Br9c5 ≠ ns
H-single: Hr9c5 = 0
B-single: Br8c5 = n
N-single: Nr8c5 = 1
whip[1]: Pr9c6{se .} ==> Br9c6 ≠ ns, Br9c6 ≠ ew, Br9c6 ≠ esw, Br9c6 ≠ n
whip[1]: Br9c4{w .} ==> Pr10c5 ≠ ne, Pr10c5 ≠ ns, Pr10c5 ≠ nw, Pr9c4 ≠ se, Pr9c4 ≠ ew, Pr9c5 ≠ sw
P-single: Pr9c5 = o
w[1]-1-in-r8c4-symmetric-se-corner ==> Pr8c4 ≠ nw, Pr8c4 ≠ o
w[1]-1-in-r7c3-asymmetric-se-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ew
P-single: Pr7c3 = nw
whip[1]: Pr9c5{o .} ==> Br8c4 ≠ s, Br9c5 ≠ w, Br9c5 ≠ ew, Br9c5 ≠ sw, Br9c5 ≠ esw
B-single: Br8c4 = w
V-single: Vr8c4 = 1
whip[1]: Vr8c4{1 .} ==> Br8c3 ≠ o, Br8c3 ≠ n, Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ ns, Br8c3 ≠ nw, Br8c3 ≠ sw, Br8c3 ≠ swn
whip[1]: Br8c3{nes .} ==> Nr8c3 ≠ 0
whip[1]: Br9c5{se .} ==> Nr9c5 ≠ 3
whip[1]: Pr7c3{nw .} ==> Br7c3 ≠ n, Br6c3 ≠ s, Br6c3 ≠ o, Br6c2 ≠ swn, Br7c2 ≠ ne, Br7c2 ≠ nes, Br7c3 ≠ w
B-single: Br6c2 = se
N-single: Nr6c2 = 2
P-single: Pr7c1 = ne
P-single: Pr6c2 = o
P-single: Pr6c3 = ns
P-single: Pr7c2 = ew
B-single: Br6c3 = w
N-single: Nr6c3 = 1
w[1]-1-in-r7c1-asymmetric-ne-corner ==> Pr8c1 ≠ ns
P-single: Pr8c1 = o
whip[1]: Pr7c1{ne .} ==> Br6c1 ≠ ew, Br7c1 ≠ w
B-single: Br7c1 = n
B-single: Br6c1 = sw
whip[1]: Pr6c2{o .} ==> Br5c2 ≠ se
B-single: Br5c2 = e
N-single: Nr5c2 = 1
whip[1]: Pr8c1{o .} ==> Br8c1 ≠ w, Br8c1 ≠ ew, Br8c1 ≠ sw, Br8c1 ≠ esw
whip[1]: Br8c1{se .} ==> Pr9c1 ≠ ne, Pr9c1 ≠ ns, Nr8c1 ≠ 3
whip[1]: Pr10c1{se .} ==> Vr10c1 ≠ 0, Br9c1 ≠ ne, Br9c1 ≠ sw, Br10c1 ≠ nes
V-single: Vr10c1 = 1
vertical-line-r10{c0 c1} ==> Ir10c1 = in
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o, Pr11c1 ≠ o, Pr11c1 ≠ se
P-single: Pr13c3 = ew
H-single: Hr13c3 = 1
V-single: Vr12c3 = 0
w[1]-diagonal-3-2-in-{r13c1...r12c2}-non-closed-ne-corner ==> Hr12c2 = 1
B-single: Br10c0 = e
w[1]-1-in-r13c3-asymmetric-nw-corner ==> Pr14c4 ≠ ns, Pr14c4 ≠ ne
horizontal-line-{r11 r12}c2 ==> Ir11c2 = out
no-vertical-line-r12{c2 c3} ==> Ir12c3 = in
whip[1]: Pr13c3{ew .} ==> Br13c3 ≠ e, Br12c3 ≠ ne, Br12c3 ≠ w, Br12c3 ≠ e, Br12c3 ≠ n, Br12c3 ≠ o, Br12c2 ≠ se, Br12c3 ≠ nw, Br12c3 ≠ ew, Br12c3 ≠ sw, Br12c3 ≠ esw, Br12c3 ≠ swn, Br12c3 ≠ wne
B-single: Br12c2 = ns
B-single: Br13c3 = n
V-single: Vr13c4 = 0
no-vertical-line-r13{c3 c4} ==> Ir13c4 = out
whip[1]: Vr13c4{0 .} ==> Br13c4 ≠ nw, Br13c4 ≠ ew, Br13c4 ≠ sw
whip[1]: Pr14c5{sw .} ==> Br14c5 ≠ swn
whip[1]: Br14c5{sw .} ==> Nr14c5 ≠ 3
whip[1]: Pr12c3{ew .} ==> Br11c2 ≠ nw, Br11c2 ≠ ew, Br11c2 ≠ wne, Br11c2 ≠ o, Br11c2 ≠ n, Br11c2 ≠ e, Br11c2 ≠ w, Br11c2 ≠ ne
whip[1]: Br11c2{nes .} ==> Nr11c2 ≠ 0
whip[1]: Br12c3{nes .} ==> Nr12c3 ≠ 0
whip[1]: Pr14c4{se .} ==> Br14c4 ≠ ns, Br14c4 ≠ ew, Br14c4 ≠ w
whip[1]: Br14c4{wne .} ==> Pr14c5 ≠ ns
whip[1]: Pr12c2{ew .} ==> Br11c1 ≠ nw, Br11c1 ≠ se
whip[1]: Br10c1{wne .} ==> Pr10c2 ≠ o, Pr11c2 ≠ se
w[1]-3-in-r10c1-asymmetric-ne-corner ==> Hr11c1 = 1, Vr11c1 = 0
w[1]-diagonal-closed-3-1-in-{r10c1...r9c2} ==> Hr9c2 = 0
w[1]-1-in-r9c2-asymmetric-sw-corner ==> Pr9c3 ≠ ew, Pr9c3 ≠ se, Pr9c3 ≠ nw, Pr9c3 ≠ ns
no-vertical-line-r11{c0 c1} ==> Ir11c1 = out
same-colour-in-r11{c1 c2} ==> Vr11c2 = 0
different-colours-in-{r11 r12}c1 ==> Hr12c1 = 1
whip[1]: Hr11c1{1 .} ==> Pr11c1 ≠ ns, Pr11c2 ≠ ns, Br10c1 ≠ wne, Br11c1 ≠ ew
P-single: Pr11c1 = ne
B-single: Br11c1 = ns
P-single: Pr12c1 = se
P-single: Pr12c2 = ew
whip[1]: Pr12c1{se .} ==> Br12c1 ≠ w
B-single: Br12c1 = nw
N-single: Nr12c1 = 2
whip[1]: Pr12c2{ew .} ==> Br11c2 ≠ sw, Br11c2 ≠ esw, Br11c2 ≠ swn
whip[1]: Vr11c1{0 .} ==> Br11c0 ≠ e
B-single: Br11c0 = o
whip[1]: Hr9c2{0 .} ==> Pr9c2 ≠ ew, Pr9c3 ≠ sw, Br8c2 ≠ s, Br8c2 ≠ se, Br8c2 ≠ swn, Br9c2 ≠ n
P-single: Pr9c2 = ns
H-single: Hr9c1 = 0
V-single: Vr8c2 = 1
V-single: Vr9c2 = 1
P-single: Pr10c2 = nw
H-single: Hr10c1 = 1
V-single: Vr10c2 = 0
w[1]-3-in-r10c1-closed-nw-corner ==> Pr11c2 ≠ nw
P-single: Pr11c2 = ew
H-single: Hr11c2 = 1
P-single: Pr9c1 = o
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
no-vertical-line-r10{c2 c3} ==> Ir10c3 = in
no-horizontal-line-{r9 r10}c3 ==> Ir9c3 = in
no-vertical-line-r9{c2 c3} ==> Ir9c2 = in
no-horizontal-line-{r8 r9}c2 ==> Ir8c2 = in
vertical-line-r9{c1 c2} ==> Ir9c1 = out
no-horizontal-line-{r10 r11}c3 ==> Ir11c3 = in
no-vertical-line-r11{c3 c4} ==> Ir11c4 = in
vertical-line-r11{c4 c5} ==> Ir11c5 = out
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
no-vertical-line-r10{c4 c5} ==> Ir10c4 = out
no-horizontal-line-{r11 r12}c5 ==> Ir12c5 = out
no-vertical-line-r12{c4 c5} ==> Ir12c4 = out
same-colour-in-{r12 r13}c4 ==> Hr13c4 = 0
w[1]-2-in-r13c4-open-nw-corner ==> Hr14c4 = 1, Vr13c5 = 1, Hr14c5 = 0, Vr14c5 = 0
P-single: Pr14c4 = se
V-single: Vr14c4 = 1
w[1]-3-in-r15c5-isolated-at-nw-corner ==> Vr15c5 = 1
w[1]-3-in-r15c5-closed-nw-corner ==> Pr16c6 ≠ nw
P-single: Pr16c6 = ne
H-single: Hr16c6 = 1
w[1]-1-in-r12c5-asymmetric-sw-corner ==> Pr12c6 ≠ ew, Pr12c6 ≠ se, Pr12c6 ≠ nw, Pr12c6 ≠ ns
horizontal-line-{r15 r16}c6 ==> Ir15c6 = in
no-horizontal-line-{r14 r15}c6 ==> Ir14c6 = in
no-vertical-line-r14{c5 c6} ==> Ir14c5 = in
no-vertical-line-r14{c4 c5} ==> Ir14c4 = in
no-horizontal-line-{r13 r14}c5 ==> Ir13c5 = in
horizontal-line-{r14 r15}c5 ==> Ir15c5 = out
different-colours-in-{r12 r13}c5 ==> Hr13c5 = 1
different-colours-in-r12{c3 c4} ==> Hr12c4 = 1
different-colours-in-r11{c2 c3} ==> Hr11c3 = 1
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
whip[1]: Pr9c2{ns .} ==> Br9c2 ≠ e, Br8c2 ≠ e, Br8c2 ≠ o, Br8c1 ≠ o, Br8c1 ≠ s, Br8c1 ≠ se, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c2 ≠ s
B-single: Br9c2 = w
P-single: Pr10c3 = o
B-single: Br8c1 = e
N-single: Nr8c1 = 1
P-single: Pr8c2 = se
whip[1]: Pr10c3{o .} ==> Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ ew, Br9c3 ≠ swn, Br10c2 ≠ ns, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c2 ≠ ew, Br10c2 ≠ wne, Br10c2 ≠ nes
whip[1]: Br10c2{w .} ==> Nr10c2 ≠ 2, Nr10c2 ≠ 3
N-single: Nr10c2 = 1
w[1]-1-in-r10c2-symmetric-nw-corner ==> Pr11c3 ≠ o
P-single: Pr11c3 = sw
w[1]-1-in-r11c3-asymmetric-nw-corner ==> Pr12c4 ≠ ew
P-single: Pr12c4 = se
whip[1]: Pr11c3{sw .} ==> Br11c3 ≠ s, Br11c2 ≠ ns, Br11c2 ≠ s, Br10c2 ≠ w, Br11c2 ≠ se
B-single: Br11c2 = nes
N-single: Nr11c2 = 3
P-single: Pr12c3 = nw
B-single: Br10c2 = s
B-single: Br11c3 = w
whip[1]: Pr12c3{nw .} ==> Br12c3 ≠ ns, Br12c3 ≠ nes
whip[1]: Br12c3{se .} ==> Nr12c3 ≠ 3
whip[1]: Pr12c4{se .} ==> Br12c4 ≠ w, Br12c4 ≠ s, Br12c3 ≠ s, Br12c4 ≠ ns, Br12c4 ≠ se, Br12c4 ≠ ew, Br12c4 ≠ nes
B-single: Br12c3 = se
N-single: Nr12c3 = 2
P-single: Pr14c5 = nw
P-single: Pr13c4 = nw
whip[1]: Pr14c5{nw .} ==> Br14c4 ≠ s, Br13c5 ≠ s, Br13c5 ≠ e, Br13c5 ≠ n, Br13c5 ≠ o, Br13c4 ≠ ne, Br13c4 ≠ ns, Br13c5 ≠ ne, Br13c5 ≠ ns, Br13c5 ≠ se, Br13c5 ≠ sw, Br13c5 ≠ esw, Br13c5 ≠ swn, Br13c5 ≠ nes, Br14c4 ≠ wne, Br14c5 ≠ ns, Br14c5 ≠ sw
B-single: Br14c5 = s
N-single: Nr14c5 = 1
B-single: Br14c4 = nw
N-single: Nr14c4 = 2
P-single: Pr15c4 = nw
P-single: Pr15c5 = se
B-single: Br13c4 = se
whip[1]: Pr15c4{nw .} ==> Br14c3 ≠ s, Br15c4 ≠ ns
B-single: Br14c3 = se
N-single: Nr14c3 = 2
whip[1]: Pr15c5{se .} ==> Br15c4 ≠ s, Br15c5 ≠ nes
B-single: Br15c5 = wne
P-single: Pr16c5 = nw
B-single: Br15c4 = se
N-single: Nr15c4 = 2
whip[1]: Pr16c5{nw .} ==> Br16c5 ≠ n
B-single: Br16c5 = o
whip[1]: Pr13c5{se .} ==> Br12c5 ≠ n, Br12c5 ≠ e
whip[1]: Br12c5{w .} ==> Vr12c6 ≠ 1, Pr13c6 ≠ ne, Pr13c6 ≠ ns, Pr12c6 ≠ sw
V-single: Vr12c6 = 0
no-vertical-line-r12{c5 c6} ==> Ir12c6 = out
whip[1]: Vr12c6{0 .} ==> Br12c6 ≠ w, Br12c6 ≠ nw, Br12c6 ≠ ew, Br12c6 ≠ sw, Br12c6 ≠ esw, Br12c6 ≠ swn, Br12c6 ≠ wne
whip[1]: Pr12c6{ne .} ==> Br11c5 ≠ s, Br11c5 ≠ ns, Br11c5 ≠ se, Br11c5 ≠ sw, Br11c5 ≠ esw, Br11c5 ≠ swn, Br11c5 ≠ nes, Br11c6 ≠ ns, Br11c6 ≠ nw, Br11c6 ≠ se, Br11c6 ≠ ew
whip[1]: Pr13c6{sw .} ==> Br13c5 ≠ ew, Br13c6 ≠ nw, Br13c6 ≠ se, Br13c6 ≠ swn, Br13c6 ≠ wne, Br12c5 ≠ w, Br13c5 ≠ w, Br13c6 ≠ o, Br13c6 ≠ e, Br13c6 ≠ s
B-single: Br12c5 = s
P-single: Pr13c5 = se
whip[1]: Pr13c5{se .} ==> Br12c4 ≠ wne
B-single: Br12c4 = nw
N-single: Nr12c4 = 2
whip[1]: Br13c6{nes .} ==> Nr13c6 ≠ 0
whip[1]: Br13c5{wne .} ==> Nr13c5 ≠ 0, Nr13c5 ≠ 1
whip[1]: Pr14c6{ne .} ==> Br13c6 ≠ w, Br13c6 ≠ ns, Br13c6 ≠ ew, Br13c6 ≠ nes
whip[1]: Br9c3{e .} ==> Nr9c3 ≠ 2, Nr9c3 ≠ 3
N-single: Nr9c3 = 1
whip[1]: Pr8c2{se .} ==> Br7c2 ≠ n
B-single: Br7c2 = ns
N-single: Nr7c2 = 2
whip[1]: Pr8c3{sw .} ==> Br8c3 ≠ se, Br8c3 ≠ wne, Br8c3 ≠ e
whip[1]: Br8c3{nes .} ==> Nr8c3 ≠ 1
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 0, Nr8c2 ≠ 1
whip[1]: Pr10c2{nw .} ==> Br9c1 ≠ ew, Br10c1 ≠ esw
B-single: Br10c1 = swn
P-single: Pr10c1 = se
B-single: Br9c1 = se
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Pr16c6{ne .} ==> Br16c6 ≠ o, Br15c6 ≠ w
B-single: Br16c6 = n
w[1]-1-in-r15c7-asymmetric-sw-corner ==> Pr15c8 ≠ ew, Pr15c8 ≠ nw, Pr15c8 ≠ ns
whip[1]: Pr15c8{ne .} ==> Hr15c7 ≠ 1, Vr15c8 ≠ 1, Br14c7 ≠ sw, Br14c7 ≠ esw, Br14c7 ≠ swn, Br14c8 ≠ s, Br14c8 ≠ w, Br14c8 ≠ ns, Br14c8 ≠ nw, Br14c8 ≠ se, Br14c8 ≠ ew, Br14c8 ≠ wne, Br14c8 ≠ nes, Br15c7 ≠ e, Br15c8 ≠ sw, Br15c7 ≠ n
V-single: Vr15c8 = 0
H-single: Hr15c7 = 0
whip[1]: Hr15c7{0 .} ==> Pr15c7 ≠ ne
whip[1]: Pr15c9{sw .} ==> Br14c9 ≠ sw
whip[1]: Br14c9{ew .} ==> Pr14c10 ≠ o, Pr14c10 ≠ ne
whip[1]: Pr14c10{sw .} ==> Br13c10 ≠ sw, Br14c10 ≠ se
whip[1]: Br14c10{sw .} ==> Pr15c11 ≠ nw
whip[1]: Br13c10{ew .} ==> Pr13c11 ≠ o, Pr13c11 ≠ ne
whip[1]: Pr13c11{sw .} ==> Br12c11 ≠ esw
whip[1]: Br15c6{esw .} ==> Nr15c6 ≠ 1
whip[1]: Pr13c8{ew .} ==> Br12c7 ≠ nw, Br12c7 ≠ se, Br13c8 ≠ wne, Br12c8 ≠ o, Br12c8 ≠ n, Br13c8 ≠ o, Br13c8 ≠ s
whip[1]: Br13c8{nes .} ==> Nr13c8 ≠ 0
whip[1]: Br12c8{swn .} ==> Nr12c8 ≠ 0
whip[1]: Pr11c8{sw .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br11c8 ≠ nw, Br11c8 ≠ se, Br11c8 ≠ swn, Br11c8 ≠ wne, Br11c8 ≠ o, Br11c8 ≠ e, Br11c8 ≠ s
whip[1]: Br11c8{nes .} ==> Nr11c8 ≠ 0
whip[1]: Pr10c7{sw .} ==> Br9c6 ≠ nw, Br9c6 ≠ se
whip[1]: Br9c6{swn .} ==> Pr10c6 ≠ ns, Pr10c6 ≠ nw, Pr10c6 ≠ se, Pr10c6 ≠ ew, Nr9c6 ≠ 2
whip[1]: Pr10c6{sw .} ==> Br9c5 ≠ se, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c5 ≠ esw, Br10c5 ≠ swn, Br10c5 ≠ n, Br10c5 ≠ e, Br10c5 ≠ ns
whip[1]: Br9c5{s .} ==> Nr9c5 ≠ 2
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ esw, Br9c8 ≠ nw, Br9c8 ≠ wne, Br10c7 ≠ ew, Br10c8 ≠ nw, Br10c8 ≠ swn, Br9c8 ≠ s, Br10c7 ≠ ns
whip[1]: Br9c8{swn .} ==> Pr9c9 ≠ sw, Nr9c8 ≠ 2
whip[1]: Pr9c9{nw .} ==> Br8c8 ≠ ns
whip[1]: Br9c7{sw .} ==> Nr9c7 ≠ 3
whip[1]: Pr11c6{sw .} ==> Br10c5 ≠ nes, Br10c5 ≠ o, Br10c5 ≠ w
whip[1]: Br10c5{wne .} ==> Nr10c5 ≠ 0
whip[1]: Pr11c7{sw .} ==> Br11c7 ≠ nw, Br11c7 ≠ swn, Br11c7 ≠ wne
whip[1]: Pr9c3{ne .} ==> Br8c3 ≠ ew, Br8c3 ≠ nes
whip[1]: Pr7c4{se .} ==> Br7c4 ≠ ne, Br7c4 ≠ ew
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 2
whip[1]: Pr10c5{ew .} ==> Br10c5 ≠ sw
whip[1]: Vr11c5{1 .} ==> Br11c5 ≠ o, Br11c5 ≠ n, Br11c5 ≠ e, Br11c5 ≠ ne
whip[1]: Br11c5{wne .} ==> Nr11c5 ≠ 0
whip[1]: Vr10c5{0 .} ==> Pr10c5 ≠ se, Br10c4 ≠ esw, Br10c5 ≠ wne
whip[1]: Br10c5{ne .} ==> Nr10c5 ≠ 3
whip[1]: Hr11c5{0 .} ==> Pr11c6 ≠ ew, Pr11c6 ≠ sw, Br10c5 ≠ s, Br11c5 ≠ nw, Br11c5 ≠ wne
B-single: Br10c5 = ne
H-single: Hr10c5 = 1
V-single: Vr10c6 = 1
N-single: Nr10c5 = 2
w[1]-2-in-r10c5-open-sw-corner ==> Hr10c6 = 0, Vr9c6 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r10{c6 c5}-fwd-diag-2s-3 ==> Vr10c7 = 0, Hr11c6 = 0
P-single: Pr10c8 = sw
H-single: Hr10c7 = 1
H-single: Hr10c8 = 0
V-single: Vr9c8 = 0
V-single: Vr10c8 = 1
P-single: Pr11c7 = o
H-single: Hr11c7 = 0
V-single: Vr11c7 = 0
w[1]-2-in-r11c6-open-ne-corner ==> Hr12c6 = 1, Vr11c6 = 1
P-single: Pr12c6 = ne
P-single: Pr10c5 = ew
H-single: Hr10c4 = 1
P-single: Pr10c6 = sw
w[1]-1-in-r9c4-asymmetric-se-corner ==> Pr9c4 ≠ ns
P-single: Pr9c4 = nw
H-single: Hr9c3 = 1
horizontal-line-{r8 r9}c3 ==> Ir8c3 = out
vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-vertical-line-r8{c4 c5} ==> Ir8c5 = in
no-vertical-line-r8{c5 c6} ==> Ir8c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
horizontal-line-{r6 r7}c7 ==> Ir6c7 = out
no-vertical-line-r6{c7 c8} ==> Ir6c8 = out
vertical-line-r6{c6 c7} ==> Ir6c6 = in
no-horizontal-line-{r5 r6}c6 ==> Ir5c6 = in
no-vertical-line-r5{c6 c7} ==> Ir5c7 = in
horizontal-line-{r4 r5}c7 ==> Ir4c7 = out
vertical-line-r6{c5 c6} ==> Ir6c5 = out
no-horizontal-line-{r6 r7}c5 ==> Ir7c5 = out
vertical-line-r7{c4 c5} ==> Ir7c4 = in
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
no-vertical-line-r9{c5 c6} ==> Ir9c6 = in
no-horizontal-line-{r9 r10}c6 ==> Ir10c6 = in
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
no-horizontal-line-{r10 r11}c7 ==> Ir11c7 = in
no-vertical-line-r11{c6 c7} ==> Ir11c6 = in
vertical-line-r10{c7 c8} ==> Ir10c8 = out
no-horizontal-line-{r9 r10}c8 ==> Ir9c8 = out
no-vertical-line-r9{c7 c8} ==> Ir9c7 = out
different-colours-in-r9{c6 c7} ==> Hr9c7 = 1
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
different-colours-in-r7{c3 c4} ==> Hr7c4 = 1
different-colours-in-{r6 r7}c4 ==> Hr7c4 = 1
w[1]-2-in-r6c5-open-sw-corner ==> Hr6c5 = 1, Vr5c6 = 0
w[1]-diagonal-1-1-in-{r6c4...r7c3}-with-no-ne-outer-sides ==> Hr8c3 = 0
different-colours-in-r4{c7 c8} ==> Hr4c8 = 1
w[1]-2-in-r5c8-open-nw-corner ==> Hr6c8 = 1, Vr5c9 = 1, Hr6c9 = 0, Vr6c9 = 0
no-vertical-line-r6{c8 c9} ==> Ir6c9 = out
vertical-line-r5{c8 c9} ==> Ir5c8 = in
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
w[1]-2-in-r4c6-open-ne-corner ==> Hr5c6 = 1
different-colours-in-{r3 r4}c7 ==> Hr4c7 = 1
different-colours-in-r8{c2 c3} ==> Hr8c3 = 1
whip[1]: Hr10c5{1 .} ==> Br9c5 ≠ o, Br9c5 ≠ e
B-single: Br9c5 = s
N-single: Nr9c5 = 1
P-single: Pr9c6 = o
w[1]-1-in-r8c6-symmetric-sw-corner ==> Pr8c7 ≠ o
P-single: Pr8c7 = se
H-single: Hr8c7 = 1
V-single: Vr8c7 = 1
vertical-line-r8{c6 c7} ==> Ir8c7 = out
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
whip[1]: Pr9c6{o .} ==> Br8c6 ≠ s, Br9c6 ≠ swn
B-single: Br9c6 = e
N-single: Nr9c6 = 1
P-single: Pr9c7 = ns
B-single: Br8c6 = e
whip[1]: Pr9c7{ns .} ==> Br9c7 ≠ n, Br8c7 ≠ se, Br9c7 ≠ ns
B-single: Br8c7 = nw
V-single: Vr8c8 = 0
no-vertical-line-r8{c7 c8} ==> Ir8c8 = out
same-colour-in-{r8 r9}c8 ==> Hr9c8 = 0
w[1]-2-in-r8c8-open-sw-corner ==> Hr8c8 = 1, Vr8c9 = 1, Vr7c9 = 0
P-single: Pr8c8 = ew
V-single: Vr7c8 = 0
P-single: Pr9c9 = ns
V-single: Vr9c9 = 1
no-vertical-line-r10{c8 c9} ==> Ir10c9 = out
horizontal-line-{r9 r10}c9 ==> Ir9c9 = in
no-vertical-line-r9{c9 c10} ==> Ir9c10 = in
vertical-line-r9{c10 c11} ==> Ir9c11 = out
no-horizontal-line-{r8 r9}c11 ==> Ir8c11 = out
no-vertical-line-r8{c10 c11} ==> Ir8c10 = out
vertical-line-r8{c9 c10} ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c8 c9} ==> Ir7c8 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
w[1]-3-in-r7c11-closed-nw-corner ==> Pr8c12 ≠ nw
P-single: Pr8c12 = ns
V-single: Vr8c12 = 1
no-vertical-line-r6{c10 c11} ==> Ir6c10 = in
different-colours-in-r6{c9 c10} ==> Hr6c10 = 1
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-{r6 r7}c8 ==> Hr7c8 = 1
different-colours-in-{r6 r7}c9 ==> Hr7c9 = 1
different-colours-in-r9{c11 c12} ==> Hr9c12 = 1

LOOP[10]: Vr9c12-Vr8c12-Vr7c12-Hr7c11-Vr7c11-Hr8c10-Vr8c10-Hr9c10-Vr9c11- ==> Hr10c11 = 0
no-horizontal-line-{r9 r10}c11 ==> Ir10c11 = out
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-horizontal-line-{r10 r11}c10 ==> Ir11c10 = out
vertical-line-r11{c10 c11} ==> Ir11c11 = in
no-vertical-line-r10{c11 c12} ==> Ir10c12 = out
different-colours-in-r10{c12 c13} ==> Hr10c13 = 1
different-colours-in-{r10 r11}c12 ==> Hr11c12 = 1
w[1]-3-in-r11c11-hit-by-horiz-line-at-ne ==> Hr12c11 = 1
w[1]-diagonal-1-1-in-{r12c10...r13c9}-with-no-ne-outer-sides ==> Hr14c9 = 0, Vr13c9 = 0
w[1]-3-in-r11c11-closed-sw-corner ==> Pr11c12 ≠ sw
P-single: Pr11c12 = ew
P-single: Pr16c8 = ew
H-single: Hr16c7 = 1
H-single: Hr16c8 = 1
w[1]-1-in-r15c7-asymmetric-se-corner ==> Pr15c7 ≠ ns
P-single: Pr15c7 = o
V-single: Vr14c7 = 0
V-single: Vr15c7 = 0
no-vertical-line-r15{c6 c7} ==> Ir15c7 = in
no-vertical-line-r15{c7 c8} ==> Ir15c8 = in
no-horizontal-line-{r14 r15}c7 ==> Ir14c7 = in
no-vertical-line-r12{c10 c11} ==> Ir12c10 = out
different-colours-in-{r9 r10}c12 ==> Hr10c12 = 1
same-colour-in-r10{c9 c10} ==> Vr10c10 = 0
different-colours-in-{r9 r10}c10 ==> Hr10c10 = 1
whip[1]: Vr8c8{0 .} ==> Br8c8 ≠ nw, Br8c8 ≠ ew
whip[1]: Br8c8{se .} ==> Pr8c9 ≠ nw
whip[1]: Pr8c9{sw .} ==> Br7c8 ≠ nes, Br8c9 ≠ e
B-single: Br8c9 = ew
N-single: Nr8c9 = 2
whip[1]: Br7c8{ew .} ==> Pr7c9 ≠ sw, Nr7c8 ≠ 3
N-single: Nr7c8 = 2
whip[1]: Pr7c9{ew .} ==> Br6c9 ≠ o, Br6c9 ≠ n, Br6c9 ≠ e, Br6c9 ≠ ne
whip[1]: Br6c9{nes .} ==> Nr6c9 ≠ 0
whip[1]: Hr9c8{0 .} ==> Pr9c8 ≠ se, Br8c8 ≠ se, Br9c8 ≠ swn
P-single: Pr8c9 = sw
P-single: Pr9c8 = o
B-single: Br8c8 = ne
whip[1]: Pr8c9{sw .} ==> Br7c9 ≠ w, Br7c8 ≠ ew, Br7c9 ≠ nw
B-single: Br7c8 = ns
P-single: Pr7c8 = ew
whip[1]: Pr7c8{ew .} ==> Br7c7 ≠ ne, Br6c8 ≠ ne, Br6c8 ≠ e, Br6c8 ≠ n, Br6c8 ≠ o, Br7c7 ≠ nes
whip[1]: Br7c7{ns .} ==> Nr7c7 ≠ 3
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 0
whip[1]: Br7c9{n .} ==> Nr7c9 ≠ 2
whip[1]: Pr9c8{o .} ==> Br9c7 ≠ ew
whip[1]: Br9c8{e .} ==> Pr10c9 ≠ ew, Nr9c8 ≠ 3
whip[1]: Pr10c9{se .} ==> Br10c8 ≠ ns, Br10c8 ≠ n
whip[1]: Pr8c8{ew .} ==> Br7c7 ≠ n
B-single: Br7c7 = ns
N-single: Nr7c7 = 2
whip[1]: Pr9c9{ns .} ==> Br9c8 ≠ o, Br9c9 ≠ s
B-single: Br9c9 = sw
N-single: Nr9c9 = 2
P-single: Pr10c9 = ne
B-single: Br9c8 = e
N-single: Nr9c8 = 1
whip[1]: Pr10c9{ne .} ==> Br10c8 ≠ e, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ esw, Br10c9 ≠ nw, Br10c9 ≠ swn, Br10c9 ≠ wne
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ ne, Pr11c9 ≠ ns, Pr11c9 ≠ nw
whip[1]: Br10c8{sw .} ==> Nr10c8 ≠ 3
whip[1]: Vr7c11{1 .} ==> Pr7c11 ≠ ne, Pr7c11 ≠ ew, Pr8c11 ≠ ew, Br7c10 ≠ s, Br7c10 ≠ ns, Br7c11 ≠ nes
P-single: Pr8c11 = nw
P-single: Pr7c11 = se
B-single: Br7c11 = wne
B-single: Br7c10 = se
N-single: Nr7c10 = 2
w[1]-1-in-r8c11-symmetric-nw-corner ==> Pr9c12 ≠ o
P-single: Pr9c12 = ns
whip[1]: Pr8c11{nw .} ==> Br8c11 ≠ n
B-single: Br8c11 = e
whip[1]: Pr7c11{se .} ==> Br6c10 ≠ e, Br6c10 ≠ ns, Br6c10 ≠ ew, Br6c10 ≠ swn, Br6c11 ≠ sw
B-single: Br6c11 = s
N-single: Nr6c11 = 1
P-single: Pr6c11 = nw
whip[1]: Pr6c11{nw .} ==> Br5c10 ≠ e
B-single: Br5c10 = se
N-single: Nr5c10 = 2
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ nes, Br6c9 ≠ s, Br6c9 ≠ w
whip[1]: Br6c9{ew .} ==> Pr7c10 ≠ o, Nr6c9 ≠ 1, Nr6c9 ≠ 3
N-single: Nr6c9 = 2
P-single: Pr5c8 = nw
P-single: Pr6c9 = nw
P-single: Pr7c10 = nw
whip[1]: Pr5c8{nw .} ==> Br4c8 ≠ s, Br4c8 ≠ o, Br4c7 ≠ ns, Br4c7 ≠ sw, Br5c7 ≠ nes, Br5c8 ≠ ns, Br5c8 ≠ ew
B-single: Br5c8 = se
P-single: Pr5c9 = se
P-single: Pr6c8 = ew
B-single: Br5c7 = ns
N-single: Nr5c7 = 2
B-single: Br4c8 = w
N-single: Nr4c8 = 1
P-single: Pr4c8 = sw
whip[1]: Pr5c9{se .} ==> Br5c9 ≠ n, Br5c9 ≠ ns
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 1
whip[1]: Pr6c8{ew .} ==> Br6c8 ≠ s, Br6c8 ≠ se
whip[1]: Br6c8{nes .} ==> Nr6c8 ≠ 1
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ w, Br4c7 ≠ esw
B-single: Br4c7 = nes
N-single: Nr4c7 = 3
P-single: Pr6c5 = ne
P-single: Pr5c6 = ne
P-single: Pr4c7 = ne
P-single: Pr5c7 = ew
B-single: Br3c7 = sw
N-single: Nr3c7 = 2
w[1]-1-in-r6c4-symmetric-ne-corner ==> Pr7c4 ≠ o
P-single: Pr7c4 = se
w[1]-1-in-r7c3-asymmetric-ne-corner ==> Pr8c3 ≠ ew
P-single: Pr8c3 = sw
w[1]-1-in-r5c6-asymmetric-ne-corner ==> Pr6c6 ≠ ns
P-single: Pr7c5 = sw
P-single: Pr6c6 = sw
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ ew, Br6c4 ≠ e, Br6c5 ≠ ew
B-single: Br6c5 = ne
B-single: Br6c4 = s
B-single: Br5c5 = sw
whip[1]: Pr5c6{ne .} ==> Br4c6 ≠ ew, Br5c6 ≠ w
B-single: Br5c6 = n
B-single: Br4c6 = sw
whip[1]: Pr7c4{se .} ==> Br7c4 ≠ e, Br7c3 ≠ s
B-single: Br7c3 = e
P-single: Pr8c4 = ns
B-single: Br7c4 = wne
N-single: Nr7c4 = 3
whip[1]: Pr8c4{ns .} ==> Br8c3 ≠ ne
B-single: Br8c3 = esw
N-single: Nr8c3 = 3
P-single: Pr9c3 = ne
w[1]-1-in-r9c3-asymmetric-nw-corner ==> Pr10c4 ≠ ns
P-single: Pr10c4 = se
whip[1]: Pr9c3{ne .} ==> Br8c2 ≠ nw, Br9c3 ≠ e
B-single: Br9c3 = n
B-single: Br8c2 = wne
N-single: Nr8c2 = 3
whip[1]: Pr10c4{se .} ==> Br9c4 ≠ w, Br10c4 ≠ sw
B-single: Br10c4 = swn
N-single: Nr10c4 = 3
B-single: Br9c4 = s
whip[1]: Pr6c9{nw .} ==> Br5c9 ≠ swn, Br6c8 ≠ nes, Br6c9 ≠ ns, Br6c9 ≠ ew
B-single: Br6c9 = se
P-single: Pr6c10 = se
P-single: Pr7c9 = ew
B-single: Br6c8 = ns
N-single: Nr6c8 = 2
B-single: Br5c9 = nw
N-single: Nr5c9 = 2
whip[1]: Pr6c10{se .} ==> Br6c10 ≠ n
B-single: Br6c10 = nw
N-single: Nr6c10 = 2
whip[1]: Pr7c9{ew .} ==> Br7c9 ≠ o
B-single: Br7c9 = n
N-single: Nr7c9 = 1
whip[1]: Pr9c12{ns .} ==> Br9c12 ≠ o, Br8c12 ≠ o, Br9c11 ≠ w, Br9c11 ≠ sw, Br9c12 ≠ s
B-single: Br8c12 = w
N-single: Nr8c12 = 1
whip[1]: Br9c12{sw .} ==> Pr10c12 ≠ o, Pr10c12 ≠ ew, Nr9c12 ≠ 0
whip[1]: Br9c11{esw .} ==> Nr9c11 ≠ 1
whip[1]: Hr10c11{0 .} ==> Pr10c11 ≠ ne, Pr10c12 ≠ nw, Br9c11 ≠ esw, Br10c11 ≠ ns
P-single: Pr10c12 = ne
P-single: Pr10c11 = nw
B-single: Br10c11 = s
N-single: Nr10c11 = 1
B-single: Br9c11 = ew
N-single: Nr9c11 = 2
w[1]-1-in-r10c10-asymmetric-ne-corner ==> Pr11c10 ≠ ns
P-single: Pr11c10 = sw
H-single: Hr11c9 = 1
V-single: Vr11c10 = 1
vertical-line-r11{c9 c10} ==> Ir11c9 = in
whip[1]: Pr10c12{ne .} ==> Br10c12 ≠ o, Br9c12 ≠ w, Br10c12 ≠ se
B-single: Br9c12 = sw
N-single: Nr9c12 = 2
P-single: Pr10c13 = sw
whip[1]: Pr10c13{sw .} ==> Br10c13 ≠ e, Br10c12 ≠ n
B-single: Br10c12 = nes
N-single: Nr10c12 = 3
P-single: Pr11c13 = nw
B-single: Br10c13 = ew
N-single: Nr10c13 = 2
w[1]-1-in-r11c12-asymmetric-ne-corner ==> Pr12c12 ≠ ns
P-single: Pr12c12 = sw
whip[1]: Pr11c13{nw .} ==> Br11c12 ≠ w
B-single: Br11c12 = n
whip[1]: Pr12c12{sw .} ==> Br12c11 ≠ e, Br11c11 ≠ wne, Br12c11 ≠ se, Br12c11 ≠ ew
B-single: Br11c11 = swn
P-single: Pr12c11 = ne
w[1]-1-in-r12c10-symmetric-ne-corner ==> Pr13c10 ≠ ne, Pr13c10 ≠ o
w[1]-1-in-r13c9-asymmetric-ne-corner ==> Pr14c9 ≠ ew, Pr14c9 ≠ nw, Pr14c9 ≠ ns
whip[1]: Pr12c11{ne .} ==> Br12c10 ≠ n, Br11c10 ≠ se, Br12c10 ≠ e
B-single: Br11c10 = ew
whip[1]: Pr12c10{nw .} ==> Br11c9 ≠ w, Br11c9 ≠ ns, Br11c9 ≠ nw, Br11c9 ≠ sw, Br11c9 ≠ swn, Br11c9 ≠ o, Br11c9 ≠ n, Br11c9 ≠ s
whip[1]: Br11c9{nes .} ==> Nr11c9 ≠ 0
whip[1]: Br12c10{w .} ==> Pr13c11 ≠ ns, Pr13c11 ≠ nw
whip[1]: Pr13c11{ew .} ==> Hr13c11 ≠ 0, Br13c11 ≠ ew, Br12c11 ≠ ne, Br13c10 ≠ ne, Br13c11 ≠ e
H-single: Hr13c11 = 1
B-single: Br12c11 = nes
N-single: Nr12c11 = 3
P-single: Pr13c12 = nw
no-vertical-line-r13{c11 c12} ==> Ir13c11 = in
different-colours-in-{r13 r14}c11 ==> Hr14c11 = 1
whip[1]: Vr13c12{0 .} ==> Pr14c12 ≠ ns, Br13c12 ≠ w
P-single: Pr14c12 = sw
B-single: Br13c12 = o
N-single: Nr13c12 = 0
whip[1]: Pr14c12{sw .} ==> Br14c11 ≠ e, Br14c11 ≠ se, Br14c11 ≠ ew, Br14c11 ≠ esw
whip[1]: Br14c11{nes .} ==> Pr14c11 ≠ o, Pr14c11 ≠ ns, Pr14c11 ≠ nw, Pr14c11 ≠ sw, Pr15c11 ≠ ne, Nr14c11 ≠ 1
whip[1]: Pr14c11{ew .} ==> Br13c10 ≠ se, Br14c10 ≠ ne
whip[1]: Br14c10{sw .} ==> Pr15c10 ≠ sw
whip[1]: Pr15c10{ew .} ==> Br14c9 ≠ nw, Br15c9 ≠ wne, Br15c9 ≠ nes, Br15c10 ≠ nw, Br15c10 ≠ swn, Br15c10 ≠ wne
whip[1]: Br13c11{swn .} ==> Nr13c11 ≠ 1
whip[1]: Pr14c9{sw .} ==> Br13c8 ≠ nes, Br14c8 ≠ esw, Br14c8 ≠ swn, Br13c8 ≠ ne, Br13c9 ≠ s, Br13c9 ≠ w, Br14c8 ≠ n, Br14c8 ≠ e, Br14c9 ≠ ne, Br14c9 ≠ ns
B-single: Br13c9 = e
V-single: Vr13c10 = 1
P-single: Pr13c9 = o
H-single: Hr13c8 = 0
P-single: Pr14c10 = ns
H-single: Hr14c10 = 0
V-single: Vr14c10 = 1
whip[1]: Vr13c10{1 .} ==> Br13c10 ≠ ns
whip[1]: Br13c10{ew .} ==> Pr14c11 ≠ ew
whip[1]: Pr14c11{se .} ==> Br14c10 ≠ ns, Br14c10 ≠ nw
whip[1]: Br14c10{sw .} ==> Pr15c10 ≠ ew
whip[1]: Pr13c9{o .} ==> Br12c8 ≠ s, Br12c8 ≠ ns, Br12c8 ≠ sw, Br12c8 ≠ swn
whip[1]: Br12c8{nw .} ==> Vr12c8 ≠ 0, Pr12c8 ≠ o, Pr12c8 ≠ ne, Pr12c8 ≠ nw, Pr12c8 ≠ ew, Pr13c8 ≠ ne, Pr13c8 ≠ ew, Nr12c8 ≠ 3
V-single: Vr12c8 = 1
P-single: Pr13c8 = ns
H-single: Hr13c7 = 0
V-single: Vr13c8 = 1
w[1]-1-in-r13c7-asymmetric-ne-corner ==> Pr14c7 ≠ ew, Pr14c7 ≠ se, Pr14c7 ≠ nw, Pr14c7 ≠ ns
whip[1]: Vr12c8{1 .} ==> Br12c7 ≠ ns, Br12c7 ≠ sw
whip[1]: Br12c7{ew .} ==> Pr13c7 ≠ ew
whip[1]: Pr13c7{sw .} ==> Br13c7 ≠ n
whip[1]: Pr13c8{ns .} ==> Br13c7 ≠ s, Br13c7 ≠ w
B-single: Br13c7 = e
H-single: Hr14c7 = 0
V-single: Vr13c7 = 0
no-horizontal-line-{r13 r14}c7 ==> Ir13c7 = in
no-vertical-line-r13{c6 c7} ==> Ir13c6 = in
no-horizontal-line-{r12 r13}c7 ==> Ir12c7 = in
vertical-line-r12{c7 c8} ==> Ir12c8 = out
no-vertical-line-r12{c8 c9} ==> Ir12c9 = out
no-horizontal-line-{r12 r13}c9 ==> Ir13c9 = out
no-vertical-line-r13{c8 c9} ==> Ir13c8 = out
no-horizontal-line-{r13 r14}c9 ==> Ir14c9 = out
vertical-line-r14{c9 c10} ==> Ir14c10 = in
no-horizontal-line-{r13 r14}c10 ==> Ir13c10 = in
same-colour-in-r13{c10 c11} ==> Vr13c11 = 0
w[1]-2-in-r13c10-open-se-corner ==> Hr13c10 = 1, Vr12c10 = 0
different-colours-in-r14{c10 c11} ==> Hr14c11 = 1
different-colours-in-{r11 r12}c9 ==> Hr12c9 = 1
same-colour-in-{r11 r12}c7 ==> Hr12c7 = 0
P-single: Pr13c7 = nw
H-single: Hr13c6 = 1
V-single: Vr12c7 = 1
same-colour-in-{r13 r14}c6 ==> Hr14c6 = 0
same-colour-in-r13{c5 c6} ==> Vr13c6 = 0
whip[1]: Hr14c7{0 .} ==> Br14c7 ≠ n, Br14c7 ≠ ne, Br14c7 ≠ nw, Br14c7 ≠ wne
whip[1]: Br14c7{ew .} ==> Nr14c7 ≠ 3
whip[1]: Vr13c7{0 .} ==> Br13c6 ≠ ne, Br13c6 ≠ esw
whip[1]: Br13c6{sw .} ==> Nr13c6 ≠ 3
whip[1]: Vr13c11{0 .} ==> Pr13c11 ≠ se, Pr14c11 ≠ ne, Br13c10 ≠ ew, Br13c11 ≠ swn
P-single: Pr13c10 = se
P-single: Pr14c11 = se
P-single: Pr13c11 = ew
B-single: Br13c11 = ns
N-single: Nr13c11 = 2
B-single: Br13c10 = nw
w[1]-1-in-r12c9-symmetric-se-corner ==> Pr12c9 ≠ nw, Pr12c9 ≠ o
w[1]-1-in-r12c10-asymmetric-se-corner ==> Pr12c10 ≠ ns
P-single: Pr12c10 = nw
whip[1]: Pr13c10{se .} ==> Br12c10 ≠ w, Br12c9 ≠ e
B-single: Br12c9 = n
B-single: Br12c10 = s
whip[1]: Pr14c11{se .} ==> Br14c10 ≠ sw, Br14c11 ≠ ne, Br14c11 ≠ nes
B-single: Br14c11 = wne
H-single: Hr15c11 = 0
N-single: Nr14c11 = 3
P-single: Pr15c11 = ns
H-single: Hr15c10 = 0
V-single: Vr15c11 = 1
P-single: Pr15c12 = ns
V-single: Vr15c12 = 1
B-single: Br14c10 = ew
no-horizontal-line-{r15 r16}c11 ==> Ir15c11 = out
vertical-line-r15{c10 c11} ==> Ir15c10 = in
different-colours-in-{r15 r16}c10 ==> Hr16c10 = 1

LOOP[168]: Hr16c10-Vr15c11-Vr14c11-Hr14c11-Vr14c12-Vr15c12-Hr16c12-Vr15c13-Hr15c13-Hr15c14-Hr15c15-Vr14c16-Hr14c15-Hr14c14-Vr13c14-Hr13c13-Vr12c13-Hr12c13-Hr12c14-Vr12c15-Hr13c15-Vr12c16-Vr11c16-Hr11c15-Hr11c14-Vr10c14-Hr10c14-Hr10c15-Vr9c16-Vr8c16-Hr8c15-Hr8c14-Hr8c13-Vr7c13-Hr7c13-Hr7c14-Hr7c15-Vr6c16-Hr6c15-Hr6c14-Hr6c13-Hr6c12-Vr5c12-Vr4c12-Hr4c12-Hr4c13-Vr4c14-Hr5c14-Hr5c15-Vr4c16-Hr4c15-Vr3c15-Vr2c15-Hr2c14-Vr1c14-Hr1c13-Hr1c12-Hr1c11-Vr1c11-Hr2c11-Vr2c12-Hr3c11-Vr3c11-Vr4c11-Vr5c11-Hr6c10-Vr6c10-Hr7c9-Hr7c8-Hr7c7-Vr6c7-Hr6c7-Hr6c8-Vr5c9-Hr5c9-Vr4c10-Vr3c10-Vr2c10-Hr2c9-Hr2c8-Vr1c8-Hr1c7-Vr1c7-Hr2c6-Vr2c6-Hr3c6-Vr3c7-Hr4c7-Vr4c8-Hr5c7-Hr5c6-Vr4c6-Hr4c5-Hr4c4-Vr3c4-Vr2c4-Hr2c3-Vr1c3-Hr1c2-Vr1c2-Vr2c2-Hr3c1-Vr3c1-Hr4c1-Vr4c2-Hr5c1-Vr5c1-Vr6c1-Hr7c1-Hr7c2-Vr6c3-Vr5c3-Hr5c3-Hr5c4-Vr5c5-Hr6c5-Vr6c6-Vr7c6-Hr8c5-Vr7c5-Hr7c4-Vr7c4-Vr8c4-Hr9c3-Vr8c3-Hr8c2-Vr8c2-Vr9c2-Hr10c1-Vr10c1-Hr11c1-Hr11c2-Vr11c3-Hr12c2-Hr12c1-Vr12c1-Vr13c1-Hr14c1-Vr13c2-Hr13c2-Hr13c3-Vr12c4-Hr12c4-Vr11c5-Hr11c4-Vr10c4-Hr10c4-Hr10c5-Vr10c6-Vr11c6-Hr12c6-Vr12c7-Hr13c6-Hr13c5-Vr13c5-Hr14c4-Vr14c4-Hr15c3-Vr15c3-Hr16c3-Hr16c4-Vr15c5-Hr15c5-Vr15c6-Hr16c6-Hr16c7-Hr16c8- ==> Hr16c9 = 0
no-horizontal-line-{r15 r16}c9 ==> Ir15c9 = out
different-colours-in-r15{c9 c10} ==> Hr15c10 = 1
same-colour-in-{r14 r15}c9 ==> Hr15c9 = 0
w[1]-diagonal-3-2s-in-{r12c11...r14c9}-non-closed-sw-end ==> Vr14c9 = 1
P-single: Pr14c9 = sw
H-single: Hr14c8 = 1
P-single: Pr15c10 = ns
no-vertical-line-r14{c7 c8} ==> Ir14c8 = in
same-colour-in-{r14 r15}c8 ==> Hr15c8 = 0
w[1]-2-in-r15c8-open-nw-corner ==> Vr15c9 = 1

LOOP[204]: Vr12c8-Vr13c8-Hr14c8-Vr14c9-Vr15c9-Hr16c8-Hr16c7-Hr16c6-Vr15c6-Hr15c5-Vr15c5-Hr16c4-Hr16c3-Vr15c3-Hr15c3-Vr14c4-Hr14c4-Vr13c5-Hr13c5-Hr13c6-Vr12c7-Hr12c6-Vr11c6-Vr10c6-Hr10c5-Hr10c4-Vr10c4-Hr11c4-Vr11c5-Hr12c4-Vr12c4-Hr13c3-Hr13c2-Vr13c2-Hr14c1-Vr13c1-Vr12c1-Hr12c1-Hr12c2-Vr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Vr8c2-Hr8c2-Vr8c3-Hr9c3-Vr8c4-Vr7c4-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Vr6c6-Hr6c5-Vr5c5-Hr5c4-Hr5c3-Vr5c3-Vr6c3-Hr7c2-Hr7c1-Vr6c1-Vr5c1-Hr5c1-Vr4c2-Hr4c1-Vr3c1-Hr3c1-Vr2c2-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Vr2c4-Vr3c4-Hr4c4-Hr4c5-Vr4c6-Hr5c6-Hr5c7-Vr4c8-Hr4c7-Vr3c7-Hr3c6-Vr2c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Vr4c10-Hr5c9-Vr5c9-Hr6c8-Hr6c7-Vr6c7-Hr7c7-Hr7c8-Hr7c9-Vr6c10-Hr6c10-Vr5c11-Vr4c11-Vr3c11-Hr3c11-Vr2c12-Hr2c11-Vr1c11-Hr1c11-Hr1c12-Hr1c13-Vr1c14-Hr2c14-Vr2c15-Vr3c15-Hr4c15-Vr4c16-Hr5c15-Hr5c14-Vr4c14-Hr4c13-Hr4c12-Vr4c12-Vr5c12-Hr6c12-Hr6c13-Hr6c14-Hr6c15-Vr6c16-Hr7c15-Hr7c14-Hr7c13-Vr7c13-Hr8c13-Hr8c14-Hr8c15-Vr8c16-Vr9c16-Hr10c15-Hr10c14-Vr10c14-Hr11c14-Hr11c15-Vr11c16-Vr12c16-Hr13c15-Vr12c15-Hr12c14-Hr12c13-Vr12c13-Hr13c13-Vr13c14-Hr14c14-Hr14c15-Vr14c16-Hr15c15-Hr15c14-Hr15c13-Vr15c13-Hr16c12-Vr15c12-Vr14c12-Hr14c11-Vr14c11-Vr15c11-Hr16c10-Vr15c10-Vr14c10-Vr13c10-Hr13c10-Hr13c11-Vr12c12-Hr12c11-Vr11c11-Hr11c11-Hr11c12-Vr10c13-Hr10c12-Vr9c12-Vr8c12-Vr7c12-Hr7c11-Vr7c11-Hr8c10-Vr8c10-Hr9c10-Vr9c11-Hr10c10-Hr10c9-Vr9c9-Vr8c9-Hr8c8-Hr8c7-Vr8c7-Vr9c7-Hr10c7-Vr10c8- ==> Vr11c8 = 0
no-vertical-line-r11{c7 c8} ==> Ir11c8 = in
same-colour-in-r11{c8 c9} ==> Vr11c9 = 0
different-colours-in-{r11 r12}c8 ==> Hr12c8 = 1

LOOP[208]: Hr11c9-Vr11c10-Hr12c9-Hr12c8-Vr12c8-Vr13c8-Hr14c8-Vr14c9-Vr15c9-Hr16c8-Hr16c7-Hr16c6-Vr15c6-Hr15c5-Vr15c5-Hr16c4-Hr16c3-Vr15c3-Hr15c3-Vr14c4-Hr14c4-Vr13c5-Hr13c5-Hr13c6-Vr12c7-Hr12c6-Vr11c6-Vr10c6-Hr10c5-Hr10c4-Vr10c4-Hr11c4-Vr11c5-Hr12c4-Vr12c4-Hr13c3-Hr13c2-Vr13c2-Hr14c1-Vr13c1-Vr12c1-Hr12c1-Hr12c2-Vr11c3-Hr11c2-Hr11c1-Vr10c1-Hr10c1-Vr9c2-Vr8c2-Hr8c2-Vr8c3-Hr9c3-Vr8c4-Vr7c4-Hr7c4-Vr7c5-Hr8c5-Vr7c6-Vr6c6-Hr6c5-Vr5c5-Hr5c4-Hr5c3-Vr5c3-Vr6c3-Hr7c2-Hr7c1-Vr6c1-Vr5c1-Hr5c1-Vr4c2-Hr4c1-Vr3c1-Hr3c1-Vr2c2-Vr1c2-Hr1c2-Vr1c3-Hr2c3-Vr2c4-Vr3c4-Hr4c4-Hr4c5-Vr4c6-Hr5c6-Hr5c7-Vr4c8-Hr4c7-Vr3c7-Hr3c6-Vr2c6-Hr2c6-Vr1c7-Hr1c7-Vr1c8-Hr2c8-Hr2c9-Vr2c10-Vr3c10-Vr4c10-Hr5c9-Vr5c9-Hr6c8-Hr6c7-Vr6c7-Hr7c7-Hr7c8-Hr7c9-Vr6c10-Hr6c10-Vr5c11-Vr4c11-Vr3c11-Hr3c11-Vr2c12-Hr2c11-Vr1c11-Hr1c11-Hr1c12-Hr1c13-Vr1c14-Hr2c14-Vr2c15-Vr3c15-Hr4c15-Vr4c16-Hr5c15-Hr5c14-Vr4c14-Hr4c13-Hr4c12-Vr4c12-Vr5c12-Hr6c12-Hr6c13-Hr6c14-Hr6c15-Vr6c16-Hr7c15-Hr7c14-Hr7c13-Vr7c13-Hr8c13-Hr8c14-Hr8c15-Vr8c16-Vr9c16-Hr10c15-Hr10c14-Vr10c14-Hr11c14-Hr11c15-Vr11c16-Vr12c16-Hr13c15-Vr12c15-Hr12c14-Hr12c13-Vr12c13-Hr13c13-Vr13c14-Hr14c14-Hr14c15-Vr14c16-Hr15c15-Hr15c14-Hr15c13-Vr15c13-Hr16c12-Vr15c12-Vr14c12-Hr14c11-Vr14c11-Vr15c11-Hr16c10-Vr15c10-Vr14c10-Vr13c10-Hr13c10-Hr13c11-Vr12c12-Hr12c11-Vr11c11-Hr11c11-Hr11c12-Vr10c13-Hr10c12-Vr9c12-Vr8c12-Vr7c12-Hr7c11-Vr7c11-Hr8c10-Vr8c10-Hr9c10-Vr9c11-Hr10c10-Hr10c9-Vr9c9-Vr8c9-Hr8c8-Hr8c7-Vr8c7-Vr9c7-Hr10c7-Vr10c8- ==> Hr11c8 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OXOOOOXOOOXXXOO
OXXOOXXXXOOXXXO
XXXOOOXXXOXXXXO
OXXXXOOXXOXOOXX
XXOOXXXXOOXOOOO
XXOOOXOOOXXXXXX
OOOXOXXXXXOXOOO
OXOXXXOOXOOXXXX
OXXXXXOOXXOXXXX
XXXOOXXOOOOOXOO
OOXXOXXXXOXXXXX
XXXOOOXOOOOXOOX
XOOOXXXOOXXXXOO
OOOXXXXXOXOXXXX
OOXXOXXXOXOXOOO

.   .———.   .   .   .   .———.   .   .   .———.———.———.   .   .
  1 | 3 |     0   0     | 3 | 2   1     |         2 |
.   .   .———.   .   .———.   .———.———.   .———.   .   .———.   .
  2 | 1     |       | 3             | 1   3 |     0     | 1
.———.   .   .   .   .———.   .   .   .   .———.   .   .   .   .
|           | 2   1   2 |     0   1 |   |     1   1   1 |
.———.   .   .———.———.   .———.   .   .   .   .———.———.   .———.
  3 | 1   1       2 | 2     |     2 |   |   |     2 |     3 |
.———.   .———.———.   .———.———.   .———.   .   .   .   .———.———.
| 2     | 2     |     1       2 |       |   |     1   2   2
.   .   .   .   .———.   .———.———.   .———.   .———.———.———.———.
| 2     |     1     | 2 | 3         |         1   2       3 |
.———.———.   .———.   .   .———.———.———.   .———.   .———.———.———.
  1       1 |   | 3 |                   |   | 2 |
.   .———.   .   .———.   .———.———.   .———.   .   .———.———.———.
    |   |   | 1       1 | 2   2 |   | 3   1 |         1   2 |
.   .   .———.   .   .   .   .   .   .———.   .   .   .   .   .
  2 | 1       1         |       |       |   |     0       2 |
.———.   .   .———.———.   .———.   .———.———.   .———.   .———.———.
| 3       1 |       | 1   2 |         1         |   | 3   2
.———.———.   .———.   .   .   .———.———.   .———.———.   .———.———.
  2     | 1   3 |   | 2             | 2 | 3   1       2     |
.———.———.   .———.   .———.   .———.———.   .———.   .———.———.   .
|     2     |     1     | 2 |     1   1     | 2 | 3   2 | 3 |
.   .———.———.   .———.———.   .   .   .———.———.   .———.   .———.
|   | 2   1   2 |         1 |     1 | 2             | 2
.———.   .   .———.   .   .   .———.   .   .———.   .   .———.———.
  1   0     |                   | 2 | 2 |   | 1             |
.   .   .———.   .———.   .   .   .   .   .   .   .———.———.———.
        | 3     | 3 |     1   2 |   |   |   |   | 2   1   1
.   .   .———.———.   .———.———.———.   .———.   .———.   .   .   .

init-time = 36m 17.18s, solve-time = 27m 38.57s, total-time = 1h 3m 55.75s
nb-facts=<Fact-425668>
Quasi-Loop max length = 208
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
