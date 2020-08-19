
(solve
10 10
1 1 . 3 . . 1 . . 1
. . . 1 . . . . . 1
. . 3 1 3 2 2 . 2 1
. 1 1 . . . . . . 1
2 . . . . 1 3 2 . 1
2 1 1 1 . 3 . 1 . .
. . . 3 . . 0 . 3 .
. . . . 1 . . . . 1
. 1 1 . . 1 1 1 1 2
. 1 0 . . . . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 1 . 3 . . 1 . . 1
. . . 1 . . . . . 1
. . 3 1 3 2 2 . 2 1
. 1 1 . . . . . . 1
2 . . . . 1 3 2 . 1
2 1 1 1 . 3 . 1 . .
. . . 3 . . 0 . 3 .
. . . . 1 . . . . 1
. 1 1 . . 1 1 1 1 2
. 1 0 . . . . . . .

start init-grid-structure 0.0259521007537842
start create-csp-variables
start create-labels 0.00129818916320801
start init-physical-csp-links 0.0132980346679688
start init-physical-non-csp-links 11.093945980072
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.19935989379883
     start init-physical-BN-non-csp-links at local time 12.0578429698944
     start init-physical-BP-non-csp-links at local time 21.8139679431915
     end init-physical-BP-non-csp-links at local time 265.689640045166
end init-physical-non-csp-links 276.783640146255
start init-corner-B-c-values 276.809818029404
start init-outer-B-candidates 276.809873104095
start init-outer-I-candidates 276.81068611145
start init-H-candidates 276.81112408638
start init-V-candidates 276.815290212631
start init-P-candidates 276.819180011749
start init-inner-I-candidates 276.825540065765
start init-inner-N-and-B-candidates 276.827967166901
start solution 276.841142892838
entering BRT
w[0]-0-in-r10c3 ==> Hr11c3 = 0, Hr10c3 = 0, Vr10c4 = 0, Vr10c3 = 0
w[0]-0-in-r7c7 ==> Hr8c7 = 0, Hr7c7 = 0, Vr7c8 = 0, Vr7c7 = 0
w[1]-1-in-ne-corner ==> Vr1c11 = 0, Hr1c10 = 0
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
w[1]-diagonal-3-0-in-{r6c6...r7c7} ==> Vr6c7 = 1, Hr7c6 = 1
w[1]-diagonal-3s-in-{r5c7...r6c6} ==> Vr5c8 = 1, Vr6c6 = 1, Hr5c7 = 1, Vr4c8 = 0, Vr7c6 = 0, Hr7c5 = 0, Hr5c8 = 0
w[1]-3-in-r5c7-hit-by-verti-line-at-sw ==> Hr6c6 = 0
w[1]-1+3+1-in-r3c4+r3c3+r4c3 ==> Hr5c3 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr4c3 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c1 c2} ==> Vr1c2 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r4 r5} ==> Hr5c10 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r3 r4} ==> Hr4c10 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r2 r3} ==> Hr3c10 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r1 r2} ==> Hr2c10 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r9{c2 c3} ==> Vr9c3 = 0
w[1]-diagonal-1-1-in-{r9c3...r10c2}-with-no-sw-inner-sides ==> Hr10c2 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r6 r7}c4 ==> Vr7c5 = 1, Vr6c4 = 0, Hr6c4 = 0
w[1]-3-in-r6c6-closed-sw-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ ne, Pr6c7 ≠ o
w[1]-3-in-r6c6-closed-se-corner ==> Pr6c6 ≠ se, Pr6c6 ≠ nw, Pr6c6 ≠ o
w[3]-3+1+1+3-in-r3c3+c4{r2 r3}+r3c5 ==> Hr3c5 = 1, Hr3c3 = 1, Hr4c4 = 0, Hr2c4 = 0
w[0]-adjacent-3-in-r3c5-nolines-west ==> Vr3c6 = 1, Vr4c5 = 1, Vr2c5 = 1, Hr4c5 = 1, Vr4c6 = 0, Vr2c6 = 0, Hr4c6 = 0, Hr3c6 = 0
w[1]-3-in-r1c4-hit-by-verti-line-at-se ==> Vr1c4 = 1, Hr1c4 = 1, Hr2c5 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r2 r1}c4 ==> Vr1c5 = 1, Vr2c4 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r4 r3}c3 ==> Vr3c4 = 1
w[1]-3-in-r3c3-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
w[1]-3-in-r1c4-closed-ne-corner ==> Pr2c4 ≠ sw, Pr2c4 ≠ ne, Pr2c4 ≠ o
w[1]-3-in-r1c4-closed-nw-corner ==> Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ o
w[1]-3-in-r3c5-closed-se-corner ==> Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
w[1]-3-in-r3c5-closed-ne-corner ==> Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
w[1]-diagonal-closed-3-1-in-{r3c3...r4c2} ==> Vr4c2 = 0, Hr5c2 = 0
P-single: Pr11c4 = o
H-single: Hr11c4 = 0
P-single: Pr11c3 = o
H-single: Hr11c2 = 0
w[1]-1-in-r10c2-symmetric-se-corner ==> Pr10c2 ≠ se, Pr10c2 ≠ nw, Pr10c2 ≠ o
w[1]-1-in-r9c2-symmetric-se-corner ==> Pr9c2 ≠ se, Pr9c2 ≠ nw, Pr9c2 ≠ o
w[1]-1-in-r6c8-symmetric-sw-corner ==> Pr6c9 ≠ sw, Pr6c9 ≠ ne
w[1]-1-in-r1c10-symmetric-ne-corner ==> Pr2c10 ≠ sw, Pr2c10 ≠ ne, Pr2c10 ≠ o
w[1]-1-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-1-in-r4c2-asymmetric-ne-corner ==> Pr5c2 ≠ ew, Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ ns
w[1]-1-in-r6c2-asymmetric-nw-corner ==> Pr7c3 ≠ sw, Pr7c3 ≠ ew, Pr7c3 ≠ ns, Pr7c3 ≠ ne
w[1]-1-in-r2c4-asymmetric-se-corner ==> Pr2c4 ≠ ew, Pr2c4 ≠ ns
entering level Loop with <Fact-93184>
entering level Col with <Fact-93274>
no-vertical-line-r1{c10 c11} ==> Ir1c10 = out
no-horizontal-line-{r1 r2}c10 ==> Ir2c10 = out
no-horizontal-line-{r2 r3}c10 ==> Ir3c10 = out
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir5c10 = out
no-vertical-line-r1{c0 c1} ==> Ir1c1 = out
no-vertical-line-r1{c1 c2} ==> Ir1c2 = out
no-horizontal-line-{r10 r11}c4 ==> Ir10c4 = out
no-vertical-line-r10{c3 c4} ==> Ir10c3 = out
no-vertical-line-r10{c2 c3} ==> Ir10c2 = out
no-horizontal-line-{r9 r10}c2 ==> Ir9c2 = out
no-vertical-line-r9{c2 c3} ==> Ir9c3 = out
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = out
no-vertical-line-r2{c5 c6} ==> Ir2c6 = out
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = out
no-horizontal-line-{r3 r4}c6 ==> Ir4c6 = out
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
no-vertical-line-r3{c4 c5} ==> Ir3c5 = in
no-horizontal-line-{r2 r3}c4 ==> Ir2c4 = in
no-vertical-line-r2{c3 c4} ==> Ir2c3 = in
horizontal-line-{r2 r3}c3 ==> Ir3c3 = out
no-horizontal-line-{r1 r2}c4 ==> Ir1c4 = in
vertical-line-r1{c3 c4} ==> Ir1c3 = out
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
same-colour-in-{r0 r1}c2 ==> Hr1c2 = 0
same-colour-in-r5{c10 c11} ==> Vr5c11 = 0
same-colour-in-r4{c10 c11} ==> Vr4c11 = 0
same-colour-in-r3{c10 c11} ==> Vr3c11 = 0
same-colour-in-r2{c10 c11} ==> Vr2c11 = 0
Starting_init_links_with_<Fact-93346>
2486 candidates, 8287 csp-links and 33480 links. Density = 1.08%
starting non trivial part of solution
Entering_level_W1_with_<Fact-176885>
whip[1]: Vr2c11{0 .} ==> Br2c10 ≠ e, Br2c11 ≠ w, Pr2c11 ≠ ns, Pr2c11 ≠ sw, Pr3c11 ≠ ns, Pr3c11 ≠ nw
B-single: Br2c11 = o
w[1]-1-in-r1c10-symmetric-se-corner ==> Pr1c10 ≠ se, Pr1c10 ≠ o
w[1]-1-in-r3c10-symmetric-ne-corner ==> Pr4c10 ≠ sw, Pr4c10 ≠ ne, Pr4c10 ≠ o
whip[1]: Pr4c10{ew .} ==> Br4c9 ≠ sw, Br4c9 ≠ wne, Br4c9 ≠ nes, Br3c10 ≠ n, Br3c10 ≠ e, Br4c9 ≠ o, Br4c9 ≠ s, Br4c9 ≠ w, Br4c9 ≠ ne
whip[1]: Br4c9{swn .} ==> Nr4c9 ≠ 0
whip[1]: Br3c10{w .} ==> Pr4c11 ≠ ns, Pr4c11 ≠ nw, Pr3c10 ≠ ne, Pr3c11 ≠ sw, Pr3c10 ≠ se, Pr3c10 ≠ ew
P-single: Pr3c11 = o
w[1]-1-in-r4c10-symmetric-ne-corner ==> Pr5c10 ≠ sw, Pr5c10 ≠ ne, Pr5c10 ≠ o
w[1]-1-in-r2c10-symmetric-se-corner ==> Pr2c10 ≠ se, Pr2c10 ≠ nw
whip[1]: Pr3c11{o .} ==> Br2c10 ≠ s
whip[1]: Pr2c10{ew .} ==> Br1c9 ≠ nw, Br1c9 ≠ se, Br1c9 ≠ esw, Br1c9 ≠ nes, Br2c9 ≠ sw, Br2c9 ≠ wne, Br2c9 ≠ nes, Br1c9 ≠ o, Br1c9 ≠ n, Br1c9 ≠ w, Br2c9 ≠ o, Br2c9 ≠ s, Br2c9 ≠ w, Br2c9 ≠ ne
whip[1]: Br2c9{swn .} ==> Nr2c9 ≠ 0
whip[1]: Br1c9{wne .} ==> Nr1c9 ≠ 0
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ sw, Br5c9 ≠ wne, Br5c9 ≠ nes, Br4c10 ≠ n, Br4c10 ≠ e, Br5c9 ≠ o, Br5c9 ≠ s, Br5c9 ≠ w, Br5c9 ≠ ne
whip[1]: Br5c9{swn .} ==> Nr5c9 ≠ 0
whip[1]: Br4c10{w .} ==> Pr5c11 ≠ ns, Pr5c11 ≠ nw, Pr4c11 ≠ sw, Pr4c10 ≠ se, Pr4c10 ≠ ew
P-single: Pr4c11 = o
w[1]-1-in-r5c10-symmetric-ne-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ne, Pr6c10 ≠ o
w[1]-1-in-r3c10-symmetric-se-corner ==> Pr3c10 ≠ nw, Pr3c10 ≠ o
whip[1]: Pr4c11{o .} ==> Br3c10 ≠ s
B-single: Br3c10 = w
V-single: Vr3c10 = 1
vertical-line-r3{c9 c10} ==> Ir3c9 = in
whip[1]: Vr3c10{1 .} ==> Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ sw
whip[1]: Br3c9{ew .} ==> Pr3c9 ≠ se, Pr4c9 ≠ ne
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ n
whip[1]: Pr6c10{ew .} ==> Br6c9 ≠ sw, Br6c9 ≠ wne, Br6c9 ≠ nes, Br5c10 ≠ n, Br5c10 ≠ e, Br6c9 ≠ o, Br6c9 ≠ s, Br6c9 ≠ w, Br6c9 ≠ ne
whip[1]: Br6c9{swn .} ==> Nr6c9 ≠ 0
whip[1]: Br5c10{w .} ==> Pr6c11 ≠ ns, Pr6c11 ≠ nw, Pr5c11 ≠ sw, Pr5c10 ≠ se, Pr5c10 ≠ ew
P-single: Pr5c11 = o
w[1]-1-in-r4c10-symmetric-se-corner ==> Pr4c10 ≠ nw
P-single: Pr4c10 = ns
H-single: Hr4c9 = 0
V-single: Vr4c10 = 1
vertical-line-r4{c9 c10} ==> Ir4c9 = in
whip[1]: Pr5c11{o .} ==> Br4c10 ≠ s
B-single: Br4c10 = w
whip[1]: Pr4c10{ns .} ==> Br4c9 ≠ n, Br3c9 ≠ se, Br4c9 ≠ ns, Br4c9 ≠ nw, Br4c9 ≠ swn
whip[1]: Br4c9{esw .} ==> Pr4c9 ≠ se, Pr4c9 ≠ ew
whip[1]: Pr3c9{sw .} ==> Br2c8 ≠ nw, Br2c8 ≠ se, Br2c8 ≠ esw, Br2c8 ≠ nes, Br2c8 ≠ o, Br2c8 ≠ n, Br2c8 ≠ w
whip[1]: Br2c8{wne .} ==> Nr2c8 ≠ 0
whip[1]: Pr6c11{sw .} ==> Br6c10 ≠ nw, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw, Br6c10 ≠ swn, Br6c10 ≠ n, Br6c10 ≠ e, Br6c10 ≠ ns
whip[1]: Pr1c10{sw .} ==> Hr1c9 ≠ 0, Br1c9 ≠ ew, Br1c9 ≠ sw, Br1c9 ≠ e, Br1c9 ≠ s, Br1c10 ≠ s
H-single: Hr1c9 = 1
B-single: Br1c10 = w
V-single: Vr1c10 = 1
P-single: Pr1c11 = o
P-single: Pr1c10 = sw
P-single: Pr2c11 = o
P-single: Pr2c10 = ns
H-single: Hr2c9 = 0
V-single: Vr2c10 = 1
w[1]-1-in-r2c10-symmetric-ne-corner ==> Pr3c10 ≠ sw
P-single: Pr3c10 = ns
H-single: Hr3c9 = 0
no-horizontal-line-{r2 r3}c9 ==> Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
whip[1]: Hr1c9{1 .} ==> Br0c9 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ sw
B-single: Br0c9 = s
whip[1]: Pr1c9{ew .} ==> Br1c8 ≠ sw, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c8 ≠ o, Br1c8 ≠ s, Br1c8 ≠ w, Br1c8 ≠ ne
whip[1]: Br1c8{swn .} ==> Nr1c8 ≠ 0
whip[1]: Vr1c10{1 .} ==> Br1c9 ≠ ns, Br1c9 ≠ swn
whip[1]: Br1c9{wne .} ==> Pr2c9 ≠ ne, Pr2c9 ≠ se, Pr2c9 ≠ ew, Nr1c9 ≠ 1
whip[1]: Pr2c9{sw .} ==> Br2c9 ≠ swn, Br2c9 ≠ ns
whip[1]: Br2c9{ew .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ ew, Nr2c9 ≠ 3
whip[1]: Pr3c9{sw .} ==> Vr3c9 ≠ 0, Br3c8 ≠ nw, Br3c8 ≠ sw, Br3c8 ≠ swn, Br3c8 ≠ o, Br3c8 ≠ n, Br3c8 ≠ s, Br3c8 ≠ w, Br3c8 ≠ ns, Br3c9 ≠ ne
V-single: Vr3c9 = 1
B-single: Br3c9 = ew
vertical-line-r3{c8 c9} ==> Ir3c8 = out
whip[1]: Br3c8{nes .} ==> Nr3c8 ≠ 0
whip[1]: Pr2c11{o .} ==> Br2c10 ≠ n
B-single: Br2c10 = w
whip[1]: Pr4c9{nw .} ==> Br4c8 ≠ w, Br4c8 ≠ ne, Br4c8 ≠ sw, Br4c8 ≠ wne, Br4c8 ≠ nes, Br4c8 ≠ o, Br4c8 ≠ s
whip[1]: Br4c8{swn .} ==> Nr4c8 ≠ 0
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Vr4c11{0 .} ==> Br4c11 ≠ w
B-single: Br4c11 = o
whip[1]: Vr5c11{0 .} ==> Br5c11 ≠ w
B-single: Br5c11 = o
whip[1]: Hr1c2{0 .} ==> Br1c2 ≠ n, Br0c2 ≠ s, Pr1c2 ≠ se, Pr1c2 ≠ ew, Pr1c3 ≠ ew, Pr1c3 ≠ sw
B-single: Br0c2 = o
w[1]-1-in-r1c1-symmetric-ne-corner ==> Pr2c1 ≠ ne, Pr2c1 ≠ o
whip[1]: Pr2c1{se .} ==> Vr2c1 ≠ 0, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ nes, Br1c1 ≠ e, Br2c1 ≠ o, Br2c1 ≠ n, Br2c1 ≠ e, Br2c1 ≠ s
V-single: Vr2c1 = 1
B-single: Br1c1 = s
H-single: Hr2c1 = 1
P-single: Pr1c1 = o
P-single: Pr1c2 = o
P-single: Pr2c1 = se
w[1]-1-in-r1c2-symmetric-nw-corner ==> Pr2c3 ≠ se, Pr2c3 ≠ nw, Pr2c3 ≠ o
horizontal-line-{r1 r2}c1 ==> Ir2c1 = in
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o, Pr3c1 ≠ o, Pr3c1 ≠ se
B-single: Br2c0 = e
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ s, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ swn, Br3c1 ≠ wne, Br3c1 ≠ o, Br3c1 ≠ e
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Hr2c1{1 .} ==> Br2c1 ≠ w, Br2c1 ≠ ew, Br2c1 ≠ sw, Br2c1 ≠ esw
whip[1]: Br2c1{wne .} ==> Pr3c2 ≠ nw, Nr2c1 ≠ 0, Nr2c1 ≠ 1
whip[1]: Pr1c2{o .} ==> Br1c2 ≠ w
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ swn, Br2c3 ≠ wne, Br2c3 ≠ o, Br2c3 ≠ e, Br2c3 ≠ s
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c2{sw .} ==> Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ o, Br2c2 ≠ e, Br2c2 ≠ s
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Pr1c3{se .} ==> Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ nes, Br1c3 ≠ n, Br1c3 ≠ w
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ wne, Pr1c3 ≠ se, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Br1c2 ≠ e, Br1c3 ≠ nw, Br1c3 ≠ swn
P-single: Pr1c3 = o
B-single: Br1c2 = s
H-single: Hr2c2 = 1
P-single: Pr2c2 = ew
V-single: Vr2c2 = 0
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
whip[1]: Hr2c2{1 .} ==> Br2c2 ≠ w, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw
whip[1]: Br2c2{nes .} ==> Pr3c2 ≠ ne, Pr3c2 ≠ ns
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ wne
whip[1]: Vr2c3{0 .} ==> Pr2c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Br2c2 ≠ ne, Br2c2 ≠ nes, Br2c3 ≠ w, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw
P-single: Pr2c3 = ew
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ e, Br1c3 ≠ o
whip[1]: Br1c3{se .} ==> Pr1c4 ≠ ew, Pr1c4 ≠ sw, Pr2c4 ≠ se, Nr1c3 ≠ 0, Nr1c3 ≠ 3
P-single: Pr2c4 = nw
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ n, Br1c3 ≠ s, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ nes, Br2c3 ≠ ne, Br2c3 ≠ nes, Br2c4 ≠ w
B-single: Br1c4 = wne
P-single: Pr1c4 = se
P-single: Pr1c5 = sw
B-single: Br1c3 = se
N-single: Nr1c3 = 2
whip[1]: Pr1c5{sw .} ==> Br1c5 ≠ ns, Br1c5 ≠ ne, Br1c5 ≠ s, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ o, Br1c5 ≠ nw, Br1c5 ≠ se, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes
whip[1]: Br1c5{esw .} ==> Pr1c6 ≠ ew, Pr1c6 ≠ sw, Nr1c5 ≠ 0
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ nes, Br1c6 ≠ n, Br1c6 ≠ w
whip[1]: Pr2c5{ns .} ==> Br2c5 ≠ s, Br2c5 ≠ nw, Br2c5 ≠ se, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ o, Br2c5 ≠ e
whip[1]: Br2c5{nes .} ==> Nr2c5 ≠ 0
whip[1]: Br2c4{s .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ ns, Pr3c4 ≠ nw
whip[1]: Br2c3{ns .} ==> Nr2c3 ≠ 3
whip[1]: Br2c2{ns .} ==> Nr2c2 ≠ 3
whip[1]: Hr11c2{0 .} ==> Br10c2 ≠ s, Br11c2 ≠ n, Pr11c2 ≠ ne, Pr11c2 ≠ ew
B-single: Br11c2 = o
whip[1]: Pr11c2{nw .} ==> Br10c1 ≠ ne, Br10c1 ≠ sw, Br10c1 ≠ swn, Br10c1 ≠ e
whip[1]: Br10c1{esw .} ==> Pr10c1 ≠ se, Pr10c2 ≠ sw, Nr10c1 ≠ 2
whip[1]: Pr10c2{ew .} ==> Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ esw, Br9c1 ≠ nes, Br9c1 ≠ o, Br9c1 ≠ n, Br9c1 ≠ w, Br9c2 ≠ n, Br9c2 ≠ e, Br10c2 ≠ e
whip[1]: Br9c2{w .} ==> Hr9c2 ≠ 1, Pr9c2 ≠ ne, Pr9c3 ≠ ns, Pr9c3 ≠ nw, Pr10c2 ≠ ne, Pr10c3 ≠ nw, Pr9c2 ≠ ew, Pr9c3 ≠ se, Pr9c3 ≠ ew, Pr9c3 ≠ sw
H-single: Hr9c2 = 0
P-single: Pr10c3 = o
w[1]-1-in-r10c2-symmetric-ne-corner ==> Pr11c2 ≠ o
P-single: Pr11c2 = nw
H-single: Hr11c1 = 1
V-single: Vr10c2 = 1
w[1]-1-in-r9c3-symmetric-sw-corner ==> Pr9c4 ≠ sw, Pr9c4 ≠ ne, Pr9c4 ≠ o
vertical-line-r10{c1 c2} ==> Ir10c1 = in
no-horizontal-line-{r8 r9}c2 ==> Ir8c2 = out
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
whip[1]: Hr9c2{0 .} ==> Br8c2 ≠ s, Br8c2 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br8c2 ≠ nes
whip[1]: Pr10c3{o .} ==> Br9c2 ≠ s, Br9c3 ≠ s, Br9c3 ≠ w, Br10c2 ≠ n
B-single: Br10c2 = w
P-single: Pr10c2 = ns
H-single: Hr10c1 = 0
V-single: Vr9c2 = 1
B-single: Br9c2 = w
vertical-line-r9{c1 c2} ==> Ir9c1 = in
different-colours-in-r9{c0 c1} ==> Hr9c1 = 1

LOOP[6]: Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2- ==> Hr9c1 = 0
no-horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
different-colours-in-r8{c1 c2} ==> Hr8c2 = 1
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1

LOOP[8]: Vr8c1-Vr9c1-Vr10c1-Hr11c1-Vr10c2-Vr9c2-Vr8c2- ==> Hr8c1 = 0
no-horizontal-line-{r7 r8}c1 ==> Ir7c1 = in
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1
whip[1]: Pr10c2{ns .} ==> Br10c1 ≠ n, Br10c1 ≠ o, Br9c1 ≠ s, Br9c1 ≠ ns, Br9c1 ≠ sw, Br9c1 ≠ swn
B-single: Br10c1 = esw
N-single: Nr10c1 = 3
P-single: Pr11c1 = ne
P-single: Pr10c1 = ns
whip[1]: Pr11c1{ne .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Pr10c1{ns .} ==> Br9c1 ≠ e, Br9c1 ≠ ne
whip[1]: Br9c1{wne .} ==> Pr9c1 ≠ o, Pr9c1 ≠ ne, Nr9c1 ≠ 0, Nr9c1 ≠ 1
whip[1]: Pr9c1{se .} ==> Br8c1 ≠ ne, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ e
whip[1]: Br8c1{nes .} ==> Nr8c1 ≠ 0
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Hr9c1{0 .} ==> Pr9c1 ≠ se, Pr9c2 ≠ sw, Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ nes, Br9c1 ≠ wne
P-single: Pr9c2 = ns
P-single: Pr9c1 = ns
B-single: Br9c1 = ew
N-single: Nr9c1 = 2
whip[1]: Pr9c2{ns .} ==> Br8c2 ≠ e, Br8c2 ≠ n, Br8c2 ≠ o, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c2 ≠ ne
whip[1]: Br8c2{wne .} ==> Pr8c2 ≠ o, Pr8c2 ≠ ne, Pr8c2 ≠ nw, Pr8c2 ≠ ew, Nr8c2 ≠ 0
whip[1]: Pr8c2{sw .} ==> Br7c1 ≠ se, Br7c1 ≠ esw, Br7c1 ≠ nes, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn
whip[1]: Br8c1{wne .} ==> Pr8c1 ≠ o, Pr8c1 ≠ ne, Nr8c1 ≠ 1
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ swn, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e
whip[1]: Br7c1{wne .} ==> Nr7c1 ≠ 0
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o
B-single: Br8c0 = e
whip[1]: Hr8c1{0 .} ==> Pr8c1 ≠ se, Pr8c2 ≠ sw, Br7c1 ≠ s, Br7c1 ≠ ns, Br8c1 ≠ wne
P-single: Pr8c1 = ns
B-single: Br8c1 = ew
N-single: Nr8c1 = 2
whip[1]: Br7c1{wne .} ==> Pr7c1 ≠ o, Pr7c1 ≠ ne
whip[1]: Pr6c2{ew .} ==> Br5c1 ≠ nw, Br5c1 ≠ se, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br6c1 ≠ sw, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e, Br5c2 ≠ ne, Br6c1 ≠ ne, Br6c2 ≠ e, Br6c2 ≠ s
whip[1]: Br6c2{w .} ==> Hr7c2 ≠ 1, Vr6c3 ≠ 1, Pr6c3 ≠ ns, Pr7c2 ≠ ne, Pr7c3 ≠ nw, Pr6c3 ≠ se, Pr6c3 ≠ sw, Pr7c2 ≠ se, Pr7c2 ≠ ew
V-single: Vr6c3 = 0
H-single: Hr7c2 = 0
whip[1]: Vr6c3{0 .} ==> Br6c3 ≠ w
whip[1]: Br6c3{s .} ==> Pr6c4 ≠ sw, Pr7c4 ≠ nw
whip[1]: Hr7c2{0 .} ==> Br7c2 ≠ n, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ nw, Br7c2 ≠ wne, Br7c2 ≠ nes
whip[1]: Br7c2{ew .} ==> Nr7c2 ≠ 3
whip[1]: Pr7c3{se .} ==> Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br7c3 ≠ nes, Br7c3 ≠ n, Br7c3 ≠ w
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Pr8c2{se .} ==> Br7c2 ≠ o, Br7c2 ≠ e
whip[1]: Br7c2{ew .} ==> Nr7c2 ≠ 0
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o
B-single: Br7c0 = e
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Pr9c4{ew .} ==> Br8c4 ≠ sw, Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c4 ≠ o, Br8c4 ≠ n, Br8c4 ≠ e, Br8c4 ≠ ne
whip[1]: Br8c4{nes .} ==> Nr8c4 ≠ 0
whip[1]: Pr9c3{ne .} ==> Br8c3 ≠ s, Br8c3 ≠ w, Br8c3 ≠ ns, Br8c3 ≠ nw, Br8c3 ≠ se, Br8c3 ≠ ew, Br8c3 ≠ wne, Br8c3 ≠ nes
whip[1]: Pr11c3{o .} ==> Br11c3 ≠ n
B-single: Br11c3 = o
whip[1]: Hr11c4{0 .} ==> Br10c4 ≠ nes, Br11c4 ≠ n, Pr11c5 ≠ nw, Pr11c5 ≠ ew, Br10c4 ≠ s, Br10c4 ≠ ns, Br10c4 ≠ se, Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn
B-single: Br11c4 = o
whip[1]: Pr11c5{ne .} ==> Br10c5 ≠ s, Br10c5 ≠ w, Br10c5 ≠ ns, Br10c5 ≠ nw, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c5 ≠ wne, Br10c5 ≠ nes
whip[1]: Pr11c4{o .} ==> Br10c4 ≠ wne, Br10c4 ≠ w, Br10c4 ≠ nw, Br10c4 ≠ ew
whip[1]: Br10c4{ne .} ==> Nr10c4 ≠ 3
whip[1]: Hr5c2{0 .} ==> Br5c2 ≠ nes, Pr5c2 ≠ ne, Pr5c3 ≠ nw, Pr5c3 ≠ ew, Pr5c3 ≠ sw, Br4c2 ≠ s, Br5c2 ≠ ns, Br5c2 ≠ nw, Br5c2 ≠ wne
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 3
whip[1]: Br4c2{w .} ==> Pr4c2 ≠ se
whip[1]: Pr5c2{sw .} ==> Br4c1 ≠ se, Br4c1 ≠ ew, Br4c1 ≠ esw, Br4c1 ≠ wne, Br4c1 ≠ nes, Br5c1 ≠ ew, Br4c1 ≠ e, Br4c1 ≠ ne, Br4c2 ≠ w, Br5c1 ≠ ns
whip[1]: Br4c2{e .} ==> Pr4c2 ≠ ns, Pr4c2 ≠ sw
whip[1]: Vr3c4{1 .} ==> Br3c4 ≠ s, Pr3c4 ≠ o, Pr3c4 ≠ ew, Pr4c4 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ ew, Pr4c4 ≠ sw, Br3c3 ≠ swn, Br3c4 ≠ n, Br3c4 ≠ e
B-single: Br3c4 = w
P-single: Pr3c4 = sw
P-single: Pr3c5 = ne
P-single: Pr4c5 = se
w[1]-1-in-r2c4-symmetric-sw-corner ==> Pr2c5 ≠ ne
P-single: Pr2c5 = ns
w[1]-1-in-r4c3-asymmetric-ne-corner ==> Pr5c3 ≠ se, Pr5c3 ≠ ns
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ s, Br2c3 ≠ n, Br3c3 ≠ esw
B-single: Br2c3 = ns
N-single: Nr2c3 = 2
B-single: Br2c4 = e
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ sw, Br3c2 ≠ wne, Br3c2 ≠ nes, Br3c2 ≠ o, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ne
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c5{ne .} ==> Br2c5 ≠ n, Br2c5 ≠ w, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ ew, Br2c5 ≠ nes, Br3c5 ≠ esw, Br3c5 ≠ swn, Br3c5 ≠ wne
B-single: Br3c5 = nes
P-single: Pr3c6 = sw
P-single: Pr4c6 = nw
whip[1]: Pr3c6{sw .} ==> Br3c6 ≠ ns, Br3c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ w, Br2c6 ≠ s, Br2c5 ≠ esw, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ nes, Br3c6 ≠ nw, Br3c6 ≠ se
B-single: Br2c5 = sw
N-single: Nr2c5 = 2
w[1]-diagonal-3-2s-in-{r1c4...r3c6}-non-closed-se-end ==> Vr3c7 = 1
vertical-line-r3{c6 c7} ==> Ir3c7 = in
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
whip[1]: Vr3c7{1 .} ==> Pr3c7 ≠ nw, Pr3c7 ≠ ew, Pr4c7 ≠ ew, Pr4c7 ≠ sw, Br3c6 ≠ sw, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ se
B-single: Br3c6 = ew
whip[1]: Br3c7{sw .} ==> Pr3c8 ≠ sw, Pr4c8 ≠ nw
whip[1]: Pr4c7{ns .} ==> Br4c6 ≠ ne, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes, Br4c7 ≠ s, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ swn, Br4c7 ≠ wne, Br4c6 ≠ n, Br4c7 ≠ o, Br4c7 ≠ e
whip[1]: Br4c7{nes .} ==> Nr4c7 ≠ 0
whip[1]: Pr3c7{se .} ==> Br2c7 ≠ ne, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ e
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Vr3c8{1 .} ==> Pr3c8 ≠ o, Pr3c8 ≠ ne, Pr3c8 ≠ nw, Pr3c8 ≠ ew, Pr4c8 ≠ o, Pr4c8 ≠ se, Pr4c8 ≠ ew, Pr4c8 ≠ sw, Br3c7 ≠ nw, Br3c7 ≠ sw, Br3c8 ≠ e, Br3c8 ≠ ne, Br3c8 ≠ se, Br3c8 ≠ nes
P-single: Pr3c7 = ns
H-single: Hr3c7 = 0
V-single: Vr2c7 = 1
P-single: Pr4c7 = ns
H-single: Hr4c7 = 0
V-single: Vr4c7 = 1
w[0]-adjacent-3-in-r5c7-nolines-west ==> Hr6c7 = 1, Vr6c8 = 0, Hr6c8 = 0
w[1]-3-in-r5c7-closed-se-corner ==> Pr5c7 ≠ se, Pr5c7 ≠ nw, Pr5c7 ≠ o
w[1]-diagonal-3-1-in-{r7c9...r6c8}-open-end ==> Vr7c10 = 1, Hr8c9 = 1
w[1]-3-in-r7c9-closed-se-corner ==> Pr7c9 ≠ se, Pr7c9 ≠ nw, Pr7c9 ≠ o
B-single: Br3c7 = ew
w[1]-1-in-r6c8-asymmetric-se-corner ==> Pr6c8 ≠ ew, Pr6c8 ≠ ns
no-horizontal-line-{r4 r5}c6 ==> Ir5c6 = out
no-vertical-line-r5{c6 c7} ==> Ir5c7 = out
vertical-line-r5{c7 c8} ==> Ir5c8 = in
no-horizontal-line-{r4 r5}c8 ==> Ir4c8 = in
no-vertical-line-r4{c7 c8} ==> Ir4c7 = in
no-horizontal-line-{r5 r6}c8 ==> Ir6c8 = in
no-vertical-line-r6{c7 c8} ==> Ir6c7 = in
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
vertical-line-r6{c5 c6} ==> Ir6c6 = out
vertical-line-r7{c4 c5} ==> Ir7c4 = out
no-vertical-line-r7{c7 c8} ==> Ir7c8 = in
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = in
vertical-line-r2{c6 c7} ==> Ir2c7 = in
same-colour-in-{r6 r7}c8 ==> Hr7c8 = 0
same-colour-in-r4{c8 c9} ==> Vr4c9 = 0
different-colours-in-{r3 r4}c8 ==> Hr4c8 = 1
whip[1]: Pr3c7{ns .} ==> Br2c6 ≠ n, Br2c6 ≠ o, Br2c7 ≠ s, Br2c7 ≠ ns, Br2c7 ≠ se, Br2c7 ≠ nes
whip[1]: Br2c7{wne .} ==> Pr2c7 ≠ o, Pr2c7 ≠ ne, Pr2c7 ≠ nw, Pr2c7 ≠ ew
whip[1]: Pr2c7{sw .} ==> Br1c6 ≠ se
whip[1]: Br2c6{ne .} ==> Nr2c6 ≠ 0, Nr2c6 ≠ 3
whip[1]: Pr4c7{ns .} ==> Br4c7 ≠ n, Br4c6 ≠ o, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ sw, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nes
whip[1]: Br4c7{esw .} ==> Pr5c7 ≠ ew, Pr5c7 ≠ sw
whip[1]: Pr5c7{ns .} ==> Br4c6 ≠ se, Br4c6 ≠ esw, Br5c7 ≠ swn, Br5c7 ≠ wne, Br5c6 ≠ n
whip[1]: Br5c6{w .} ==> Pr5c6 ≠ ne, Pr6c6 ≠ ne, Pr6c7 ≠ nw, Pr5c6 ≠ se, Pr5c6 ≠ ew
whip[1]: Pr6c7{ew .} ==> Br5c7 ≠ esw, Br6c6 ≠ wne, Br6c6 ≠ nes, Br6c7 ≠ se, Br6c7 ≠ o, Br6c7 ≠ e, Br6c7 ≠ s
B-single: Br5c7 = nes
P-single: Pr5c7 = ne
P-single: Pr5c8 = sw
P-single: Pr6c8 = nw
w[1]-1-in-r5c6-symmetric-ne-corner ==> Pr6c6 ≠ sw
whip[1]: Pr5c7{ne .} ==> Br4c7 ≠ w, Br4c7 ≠ ew, Br5c6 ≠ e
whip[1]: Br4c7{esw .} ==> Nr4c7 ≠ 1
whip[1]: Pr5c8{sw .} ==> Br5c8 ≠ ns, Br5c8 ≠ ne, Br4c8 ≠ ns, Br4c7 ≠ esw, Br4c8 ≠ nw, Br4c8 ≠ se, Br4c8 ≠ ew, Br4c8 ≠ esw, Br4c8 ≠ swn, Br5c8 ≠ nw, Br5c8 ≠ se
B-single: Br4c7 = sw
N-single: Nr4c7 = 2
w[1]-diagonal-3-2s-in-{r1c4...r5c8}-non-closed-se-end ==> Vr5c9 = 1
P-single: Pr4c8 = ne
vertical-line-r5{c8 c9} ==> Ir5c9 = out
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
different-colours-in-{r4 r5}c9 ==> Hr5c9 = 1
whip[1]: Vr5c9{1 .} ==> Pr5c9 ≠ nw, Pr5c9 ≠ ew, Pr6c9 ≠ ew, Br5c8 ≠ sw, Br5c9 ≠ n, Br5c9 ≠ e, Br5c9 ≠ ns, Br5c9 ≠ se
P-single: Pr6c9 = ns
H-single: Hr6c9 = 0
V-single: Vr6c9 = 1
B-single: Br5c8 = ew
vertical-line-r6{c8 c9} ==> Ir6c9 = out
whip[1]: Pr6c9{ns .} ==> Br6c9 ≠ e, Br6c9 ≠ n, Br6c8 ≠ n, Br5c9 ≠ esw, Br5c9 ≠ swn, Br6c8 ≠ s, Br6c8 ≠ w, Br6c9 ≠ ns, Br6c9 ≠ nw, Br6c9 ≠ se, Br6c9 ≠ swn
B-single: Br6c8 = e
P-single: Pr7c8 = o
whip[1]: Pr7c8{o .} ==> Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ wne, Br6c7 ≠ nes, Br7c8 ≠ n, Br7c8 ≠ w, Br7c8 ≠ ne, Br7c8 ≠ ns, Br7c8 ≠ nw, Br7c8 ≠ ew, Br7c8 ≠ sw, Br7c8 ≠ esw, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ nes
whip[1]: Br7c8{se .} ==> Nr7c8 ≠ 3
whip[1]: Br6c7{nw .} ==> Nr6c7 ≠ 0, Nr6c7 ≠ 3
whip[1]: Pr7c9{ns .} ==> Br7c9 ≠ swn, Br7c9 ≠ wne
whip[1]: Br7c9{nes .} ==> Pr7c10 ≠ o, Pr7c10 ≠ ne, Pr7c10 ≠ nw, Pr7c10 ≠ ew, Pr8c9 ≠ o, Pr8c9 ≠ ns, Pr8c9 ≠ nw, Pr8c9 ≠ sw, Pr8c10 ≠ o, Pr8c10 ≠ ne, Pr8c10 ≠ ns, Pr8c10 ≠ se, Pr8c10 ≠ ew, Pr8c10 ≠ sw
P-single: Pr8c10 = nw
w[1]-1-in-r8c10-symmetric-nw-corner ==> Pr9c11 ≠ nw, Pr9c11 ≠ o
whip[1]: Pr8c10{nw .} ==> Br8c10 ≠ n, Br8c9 ≠ s, Br8c9 ≠ e, Br8c9 ≠ o, Br7c10 ≠ s, Br7c10 ≠ e, Br7c10 ≠ n, Br7c10 ≠ o, Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ se, Br7c10 ≠ sw, Br7c10 ≠ esw, Br7c10 ≠ swn, Br7c10 ≠ nes, Br8c9 ≠ w, Br8c9 ≠ ne, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ wne, Br8c9 ≠ nes, Br8c10 ≠ w
whip[1]: Br8c10{s .} ==> Pr9c10 ≠ ne, Pr9c10 ≠ ns, Pr8c11 ≠ nw, Pr8c11 ≠ sw, Pr9c10 ≠ nw
whip[1]: Br8c9{swn .} ==> Nr8c9 ≠ 0
whip[1]: Br7c10{wne .} ==> Nr7c10 ≠ 0
whip[1]: Pr9c11{sw .} ==> Vr9c11 ≠ 0, Br9c10 ≠ nw, Br9c10 ≠ sw, Br9c10 ≠ ns
V-single: Vr9c11 = 1
vertical-line-r9{c10 c11} ==> Ir9c10 = in
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o, Pr10c11 ≠ o, Pr10c11 ≠ sw
B-single: Br9c11 = w
whip[1]: Pr10c11{nw .} ==> Br10c10 ≠ w, Br10c10 ≠ nes, Br10c10 ≠ o
whip[1]: Br10c10{esw .} ==> Nr10c10 ≠ 0
whip[1]: Br9c10{ew .} ==> Pr9c10 ≠ se, Pr10c10 ≠ ne
whip[1]: Pr9c10{sw .} ==> Br9c9 ≠ e
whip[1]: Br9c9{w .} ==> Vr9c10 ≠ 1, Pr10c9 ≠ ne, Pr10c10 ≠ ns, Pr10c10 ≠ nw, Pr9c9 ≠ se, Pr9c10 ≠ sw
V-single: Vr9c10 = 0
no-vertical-line-r9{c9 c10} ==> Ir9c9 = in
whip[1]: Vr9c10{0 .} ==> Br9c10 ≠ ew
whip[1]: Pr8c9{ew .} ==> Br7c8 ≠ se, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c8 ≠ ne
whip[1]: Br7c8{s .} ==> Nr7c8 ≠ 2
whip[1]: Pr7c10{sw .} ==> Br6c9 ≠ esw, Br6c10 ≠ sw
B-single: Br6c9 = ew
H-single: Hr7c9 = 0
V-single: Vr6c10 = 1
N-single: Nr6c9 = 2
w[1]-3-in-r7c9-hit-by-verti-line-at-ne ==> Vr7c9 = 1, Hr7c10 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r9{c8 c9} ==> Vr9c9 = 0
P-single: Pr7c9 = ns
P-single: Pr7c10 = ns
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
no-horizontal-line-{r7 r8}c8 ==> Ir8c8 = in
no-vertical-line-r8{c8 c9} ==> Ir8c9 = in
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = in
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = in
vertical-line-r7{c9 c10} ==> Ir7c9 = out
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-{r5 r6}c10 ==> Hr6c10 = 1
different-colours-in-r7{c10 c11} ==> Hr7c11 = 1
same-colour-in-{r8 r9}c10 ==> Hr9c10 = 0
w[1]-2-in-r9c10-open-nw-corner ==> Hr10c10 = 1, Vr10c11 = 0
w[1]-diagonal-1-1-in-{r8c10...r9c9}-with-no-sw-inner-sides ==> Hr9c9 = 0
P-single: Pr9c11 = ns
V-single: Vr8c11 = 1
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
same-colour-in-{r10 r11}c10 ==> Hr11c10 = 0
same-colour-in-{r8 r9}c8 ==> Hr9c8 = 0
same-colour-in-r8{c7 c8} ==> Vr8c8 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r9{c7 c8} ==> Vr9c8 = 0
no-vertical-line-r9{c7 c8} ==> Ir9c7 = in
same-colour-in-{r8 r9}c7 ==> Hr9c7 = 0
whip[1]: Hr7c9{0 .} ==> Br7c9 ≠ nes
B-single: Br7c9 = esw
P-single: Pr8c9 = ne
whip[1]: Pr8c9{ne .} ==> Br8c8 ≠ n, Br7c8 ≠ o, Br7c8 ≠ s, Br8c8 ≠ e, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ esw, Br8c8 ≠ swn, Br8c9 ≠ nw, Br8c9 ≠ swn
B-single: Br7c8 = e
N-single: Nr7c8 = 1
P-single: Pr8c8 = o
whip[1]: Pr8c8{o .} ==> Br8c7 ≠ n, Br8c7 ≠ e, Br8c7 ≠ ne, Br8c7 ≠ ns, Br8c7 ≠ nw, Br8c7 ≠ se, Br8c7 ≠ ew, Br8c7 ≠ esw, Br8c7 ≠ swn, Br8c7 ≠ wne, Br8c7 ≠ nes, Br8c8 ≠ w, Br8c8 ≠ sw
whip[1]: Br8c8{s .} ==> Pr9c8 ≠ ne, Pr9c8 ≠ ns, Pr9c9 ≠ ne, Pr9c9 ≠ ns, Nr8c8 ≠ 2, Nr8c8 ≠ 3, Pr9c8 ≠ nw, Pr9c9 ≠ nw
whip[1]: Pr9c9{sw .} ==> Br9c8 ≠ e
whip[1]: Br9c8{w .} ==> Pr10c8 ≠ ne, Pr10c9 ≠ ns, Pr10c9 ≠ nw, Pr9c8 ≠ se, Pr9c9 ≠ sw
whip[1]: Pr9c9{ew .} ==> Br9c9 ≠ w
whip[1]: Pr9c8{sw .} ==> Br9c7 ≠ e
whip[1]: Br9c7{w .} ==> Pr10c7 ≠ ne, Pr10c8 ≠ ns, Pr10c8 ≠ nw, Pr9c7 ≠ se, Pr9c8 ≠ sw
whip[1]: Pr9c8{ew .} ==> Br9c8 ≠ w
whip[1]: Br8c7{sw .} ==> Nr8c7 ≠ 3
whip[1]: Br8c9{ns .} ==> Nr8c9 ≠ 3
whip[1]: Vr6c10{1 .} ==> Br6c10 ≠ o, Br6c10 ≠ s, Br6c10 ≠ ne, Br6c10 ≠ nes
whip[1]: Br6c10{wne .} ==> Pr7c11 ≠ nw, Pr7c11 ≠ sw, Nr6c10 ≠ 0, Nr6c10 ≠ 2
whip[1]: Pr7c11{ns .} ==> Br7c10 ≠ nw, Br7c10 ≠ wne
whip[1]: Br7c10{ew .} ==> Nr7c10 ≠ 3
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o, Pr6c11 ≠ o, Pr7c11 ≠ o, Br6c10 ≠ w
P-single: Pr7c11 = ns
P-single: Pr6c11 = sw
B-single: Br6c10 = wne
N-single: Nr6c10 = 3
P-single: Pr6c10 = se
B-single: Br6c11 = w
w[1]-1-in-r5c10-asymmetric-se-corner ==> Pr5c10 ≠ ns
P-single: Pr5c10 = nw
whip[1]: Pr7c11{ns .} ==> Br7c10 ≠ w
B-single: Br7c10 = ew
N-single: Nr7c10 = 2
P-single: Pr8c11 = ns
w[1]-1-in-r8c10-asymmetric-ne-corner ==> Pr9c10 ≠ ew
P-single: Pr10c11 = nw
P-single: Pr9c10 = o
w[1]-1-in-r9c9-symmetric-ne-corner ==> Pr10c9 ≠ sw, Pr10c9 ≠ o
whip[1]: Pr8c11{ns .} ==> Br8c10 ≠ s
B-single: Br8c10 = e
whip[1]: Pr10c11{nw .} ==> Br9c10 ≠ ne, Br10c10 ≠ se, Br10c10 ≠ esw
B-single: Br9c10 = se
whip[1]: Br10c10{nw .} ==> Pr11c11 ≠ nw, Pr11c10 ≠ ne, Pr11c10 ≠ ew, Nr10c10 ≠ 3
P-single: Pr11c11 = o
whip[1]: Pr11c11{o .} ==> Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Pr11c10{nw .} ==> Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ swn, Br10c9 ≠ wne, Br10c9 ≠ e, Br10c9 ≠ s
whip[1]: Pr9c10{o .} ==> Br8c9 ≠ ns, Br9c9 ≠ n
B-single: Br9c9 = s
H-single: Hr10c9 = 1
P-single: Pr9c9 = o
P-single: Pr10c10 = ew
V-single: Vr10c10 = 0
B-single: Br8c9 = n
N-single: Nr8c9 = 1
w[1]-1-in-r9c8-symmetric-ne-corner ==> Pr10c8 ≠ sw, Pr10c8 ≠ o
no-vertical-line-r10{c9 c10} ==> Ir10c9 = out
same-colour-in-{r10 r11}c9 ==> Hr11c9 = 0
whip[1]: Hr10c9{1 .} ==> Br10c9 ≠ o, Br10c9 ≠ w, Br10c9 ≠ se, Br10c9 ≠ esw
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ ne, Nr10c9 ≠ 0
whip[1]: Pr11c9{ew .} ==> Br10c8 ≠ ew, Br10c8 ≠ wne, Br10c8 ≠ e, Br10c8 ≠ ne
whip[1]: Pr9c9{o .} ==> Br8c8 ≠ s, Br9c8 ≠ n
B-single: Br9c8 = s
H-single: Hr10c8 = 1
P-single: Pr9c8 = o
P-single: Pr10c9 = ew
V-single: Vr10c9 = 0
B-single: Br8c8 = o
N-single: Nr8c8 = 0
w[1]-1-in-r9c7-symmetric-ne-corner ==> Pr10c7 ≠ sw, Pr10c7 ≠ o
no-vertical-line-r10{c8 c9} ==> Ir10c8 = out
same-colour-in-{r10 r11}c8 ==> Hr11c8 = 0
whip[1]: Hr10c8{1 .} ==> Br10c8 ≠ o, Br10c8 ≠ s, Br10c8 ≠ w, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw
whip[1]: Br10c8{nes .} ==> Nr10c8 ≠ 0
whip[1]: Pr9c8{o .} ==> Br8c7 ≠ s, Br8c7 ≠ sw, Br9c7 ≠ n
whip[1]: Br9c7{w .} ==> Pr9c7 ≠ ne, Pr9c7 ≠ ew
whip[1]: Br8c7{w .} ==> Nr8c7 ≠ 2
whip[1]: Pr10c9{ew .} ==> Br10c8 ≠ nes, Br10c9 ≠ nw
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ nw, Nr10c9 ≠ 2
whip[1]: Hr11c8{0 .} ==> Br11c8 ≠ n, Pr11c8 ≠ ne, Pr11c8 ≠ ew, Pr11c9 ≠ ew, Br10c8 ≠ ns, Br10c8 ≠ swn
P-single: Pr11c9 = o
B-single: Br11c8 = o
whip[1]: Pr11c9{o .} ==> Br11c9 ≠ n, Br10c9 ≠ nes
B-single: Br10c9 = n
N-single: Nr10c9 = 1
P-single: Pr11c10 = o
B-single: Br11c9 = o
whip[1]: Pr11c10{o .} ==> Br10c10 ≠ nw
B-single: Br10c10 = n
N-single: Nr10c10 = 1
whip[1]: Br10c8{nw .} ==> Nr10c8 ≠ 3
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Pr10c7{ew .} ==> Br10c6 ≠ sw, Br10c6 ≠ wne, Br10c6 ≠ nes, Br10c6 ≠ o, Br10c6 ≠ s, Br10c6 ≠ w, Br10c6 ≠ ne
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 0
whip[1]: Pr10c8{ew .} ==> Br10c7 ≠ nes, Br10c7 ≠ o, Br10c7 ≠ w
whip[1]: Br10c7{esw .} ==> Nr10c7 ≠ 0
whip[1]: Pr6c11{sw .} ==> Br5c10 ≠ w
B-single: Br5c10 = s
whip[1]: Pr6c10{se .} ==> Br5c9 ≠ ew
B-single: Br5c9 = nw
N-single: Nr5c9 = 2
P-single: Pr5c9 = se
whip[1]: Pr5c9{se .} ==> Br4c9 ≠ e, Br4c8 ≠ e, Br4c9 ≠ ew, Br4c9 ≠ esw
B-single: Br4c9 = se
N-single: Nr4c9 = 2
P-single: Pr4c9 = nw
B-single: Br4c8 = n
N-single: Nr4c8 = 1
whip[1]: Pr4c9{nw .} ==> Br3c8 ≠ ew, Br3c8 ≠ wne
B-single: Br3c8 = esw
H-single: Hr3c8 = 0
N-single: Nr3c8 = 3
P-single: Pr3c8 = ns
V-single: Vr2c8 = 1
P-single: Pr3c9 = ns
V-single: Vr2c9 = 1

LOOP[6]: Vr2c9-Vr3c9-Hr4c8-Vr3c8-Vr2c8- ==> Hr2c8 = 0
vertical-line-r2{c8 c9} ==> Ir2c8 = out
no-horizontal-line-{r1 r2}c8 ==> Ir1c8 = out
different-colours-in-r1{c8 c9} ==> Hr1c9 = 1
whip[1]: Hr3c8{0 .} ==> Br2c8 ≠ s, Br2c8 ≠ ns, Br2c8 ≠ sw, Br2c8 ≠ swn
whip[1]: Br2c8{wne .} ==> Pr2c9 ≠ o, Pr2c9 ≠ nw
whip[1]: Pr2c9{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ esw, Br1c8 ≠ n, Br2c9 ≠ e
B-single: Br2c9 = ew
N-single: Nr2c9 = 2
whip[1]: Pr3c8{ns .} ==> Br2c8 ≠ e, Br2c7 ≠ w, Br2c7 ≠ nw, Br2c8 ≠ ne
whip[1]: Br2c8{wne .} ==> Pr2c8 ≠ o, Pr2c8 ≠ ne, Pr2c8 ≠ nw, Pr2c8 ≠ ew, Nr2c8 ≠ 1
whip[1]: Pr2c8{sw .} ==> Br1c8 ≠ swn
whip[1]: Br1c8{ew .} ==> Pr1c8 ≠ se, Nr1c8 ≠ 3
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ e
whip[1]: Br1c7{w .} ==> Vr1c8 ≠ 1, Pr2c8 ≠ ns, Pr1c7 ≠ se, Pr1c8 ≠ sw
V-single: Vr1c8 = 0
no-vertical-line-r1{c7 c8} ==> Ir1c7 = out
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
no-vertical-line-r1{c6 c7} ==> Ir1c6 = out
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
same-colour-in-{r0 r1}c6 ==> Hr1c6 = 0
same-colour-in-{r0 r1}c7 ==> Hr1c7 = 0
whip[1]: Vr1c8{0 .} ==> Br1c8 ≠ ew
whip[1]: Hr2c7{1 .} ==> Pr2c7 ≠ ns, Pr2c7 ≠ sw, Pr2c8 ≠ se, Br1c7 ≠ n, Br1c7 ≠ w, Br2c7 ≠ ew
P-single: Pr2c8 = sw
P-single: Pr2c7 = se
B-single: Br2c7 = wne
N-single: Nr2c7 = 3
B-single: Br1c7 = s
P-single: Pr1c7 = o
P-single: Pr1c8 = o
whip[1]: Pr2c8{sw .} ==> Br1c8 ≠ ns, Br2c8 ≠ wne
B-single: Br2c8 = ew
N-single: Nr2c8 = 2
P-single: Pr2c9 = ns
B-single: Br1c8 = e
N-single: Nr1c8 = 1
P-single: Pr1c9 = se
whip[1]: Pr2c9{ns .} ==> Br1c9 ≠ ne
B-single: Br1c9 = wne
N-single: Nr1c9 = 3
whip[1]: Pr2c7{se .} ==> Br1c6 ≠ s, Br1c6 ≠ e, Br1c6 ≠ swn, Br1c6 ≠ wne, Br2c6 ≠ ne
B-single: Br2c6 = e
N-single: Nr2c6 = 1
P-single: Pr2c6 = o
whip[1]: Pr2c6{o .} ==> Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c6 ≠ nw
B-single: Br1c6 = o
N-single: Nr1c6 = 0
P-single: Pr1c6 = o
B-single: Br1c5 = w
N-single: Nr1c5 = 1
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Hr1c7{0 .} ==> Br0c7 ≠ s
B-single: Br0c7 = o
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr10c11{0 .} ==> Br10c11 ≠ w
B-single: Br10c11 = o
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o
B-single: Br8c11 = w
whip[1]: Pr6c8{nw .} ==> Br6c7 ≠ w
whip[1]: Pr6c6{ew .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ nes, Br6c5 ≠ sw, Br6c5 ≠ wne, Br6c5 ≠ nes, Br6c6 ≠ swn, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ w, Br6c5 ≠ o, Br6c5 ≠ s, Br6c5 ≠ w, Br6c5 ≠ ne
B-single: Br6c6 = esw
P-single: Pr6c6 = ns
H-single: Hr6c5 = 0
V-single: Vr5c6 = 1
P-single: Pr6c7 = se
P-single: Pr7c6 = ne
P-single: Pr7c7 = nw
w[1]-1-in-r5c6-symmetric-se-corner ==> Pr5c6 ≠ nw, Pr5c6 ≠ o
vertical-line-r5{c5 c6} ==> Ir5c5 = in
different-colours-in-{r4 r5}c5 ==> Hr5c5 = 1
no-vertical-line-r5{c4 c5} ==> Ir5c4 = in
no-horizontal-line-{r5 r6}c4 ==> Ir6c4 = in
no-vertical-line-r6{c3 c4} ==> Ir6c3 = in
no-vertical-line-r6{c2 c3} ==> Ir6c2 = in
no-horizontal-line-{r6 r7}c2 ==> Ir7c2 = in
different-colours-in-{r7 r8}c2 ==> Hr8c2 = 1
same-colour-in-r6{c4 c5} ==> Vr6c5 = 0
w[1]-3-in-r7c4-isolated-at-ne-corner ==> Hr7c4 = 1
w[1]-3-in-r7c4-closed-ne-corner ==> Pr8c4 ≠ sw, Pr8c4 ≠ ne, Pr8c4 ≠ o
whip[1]: Pr6c6{ns .} ==> Br6c5 ≠ n, Br5c5 ≠ s, Br5c5 ≠ ns, Br5c5 ≠ sw, Br5c5 ≠ swn, Br5c6 ≠ s, Br6c5 ≠ ns, Br6c5 ≠ nw, Br6c5 ≠ swn
B-single: Br5c6 = w
whip[1]: Br6c5{esw .} ==> Pr6c5 ≠ ne, Pr6c5 ≠ se, Pr6c5 ≠ ew, Nr6c5 ≠ 0
whip[1]: Br5c5{wne .} ==> Nr5c5 ≠ 0
whip[1]: Pr6c7{se .} ==> Br6c7 ≠ n
B-single: Br6c7 = nw
N-single: Nr6c7 = 2
whip[1]: Pr7c6{ne .} ==> Br7c6 ≠ o, Br7c5 ≠ n, Br6c5 ≠ se, Br6c5 ≠ esw, Br7c5 ≠ e, Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ nw, Br7c5 ≠ se, Br7c5 ≠ ew, Br7c5 ≠ esw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c5 ≠ nes, Br7c6 ≠ e, Br7c6 ≠ s, Br7c6 ≠ w, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ wne
whip[1]: Br7c6{nes .} ==> Pr8c6 ≠ ne, Pr8c6 ≠ ns, Pr8c6 ≠ nw, Nr7c6 ≠ 0
whip[1]: Br7c5{sw .} ==> Pr7c5 ≠ ne, Pr7c5 ≠ se, Pr7c5 ≠ ew, Nr7c5 ≠ 3
whip[1]: Br6c5{ew .} ==> Nr6c5 ≠ 3
whip[1]: Pr7c7{nw .} ==> Br7c6 ≠ ne, Br7c6 ≠ nes
whip[1]: Br7c6{ns .} ==> Nr7c6 ≠ 3
whip[1]: Hr5c5{1 .} ==> Br4c5 ≠ o, Pr5c5 ≠ o, Pr5c5 ≠ ns, Pr5c5 ≠ nw, Pr5c5 ≠ sw, Pr5c6 ≠ ns, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ w, Br4c5 ≠ ne, Br4c5 ≠ nw, Br4c5 ≠ ew, Br4c5 ≠ wne, Br5c5 ≠ e, Br5c5 ≠ ew
P-single: Pr5c6 = sw
whip[1]: Pr5c6{sw .} ==> Br4c5 ≠ se, Br4c5 ≠ esw, Br4c5 ≠ nes, Br4c6 ≠ ew
B-single: Br4c6 = e
N-single: Nr4c6 = 1
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 0
whip[1]: Br5c5{wne .} ==> Nr5c5 ≠ 1
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ se, Br4c4 ≠ esw, Br4c4 ≠ nes, Br5c4 ≠ wne, Br5c4 ≠ nes, Br5c4 ≠ ne
whip[1]: Hr5c4{0 .} ==> Pr5c4 ≠ ne, Pr5c4 ≠ se, Pr5c4 ≠ ew, Pr5c5 ≠ ew, Br4c4 ≠ s, Br4c4 ≠ ns, Br4c4 ≠ sw, Br4c4 ≠ swn, Br5c4 ≠ n, Br5c4 ≠ ns, Br5c4 ≠ nw, Br5c4 ≠ swn
whip[1]: Vr5c5{0 .} ==> Pr5c5 ≠ se, Pr6c5 ≠ ns, Pr6c5 ≠ nw, Br5c4 ≠ e, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c5 ≠ wne
P-single: Pr5c5 = ne
B-single: Br5c5 = ne
N-single: Nr5c5 = 2
w[1]-1-in-r6c4-symmetric-ne-corner ==> Pr7c4 ≠ sw, Pr7c4 ≠ ne, Pr7c4 ≠ o
whip[1]: Pr5c5{ne .} ==> Br4c4 ≠ n, Br4c4 ≠ o, Br4c4 ≠ w, Br4c4 ≠ nw, Br4c5 ≠ s, Br4c5 ≠ ns
whip[1]: Br4c5{swn .} ==> Nr4c5 ≠ 1
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0
whip[1]: Pr7c4{ew .} ==> Br7c3 ≠ wne, Br6c4 ≠ n, Br6c4 ≠ e, Br7c3 ≠ o, Br7c3 ≠ s
whip[1]: Br7c3{swn .} ==> Nr7c3 ≠ 0
whip[1]: Br6c4{w .} ==> Pr6c4 ≠ ne, Pr7c5 ≠ ns, Pr7c5 ≠ nw, Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c5 ≠ sw
P-single: Pr6c5 = o
whip[1]: Pr6c5{o .} ==> Br5c4 ≠ s, Br5c4 ≠ sw, Br6c5 ≠ ew
B-single: Br6c5 = e
N-single: Nr6c5 = 1
whip[1]: Br5c4{w .} ==> Nr5c4 ≠ 2, Nr5c4 ≠ 3
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ ns, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c3 ≠ s
whip[1]: Pr7c5{sw .} ==> Br7c4 ≠ esw, Br7c4 ≠ swn
whip[1]: Br7c4{nes .} ==> Pr7c4 ≠ ns, Pr7c5 ≠ o, Pr8c5 ≠ o, Pr8c5 ≠ se, Pr8c5 ≠ ew, Pr8c5 ≠ sw
P-single: Pr7c5 = sw
w[1]-1-in-r6c4-asymmetric-se-corner ==> Pr6c4 ≠ ns
whip[1]: Pr7c5{sw .} ==> Br7c5 ≠ s, Br7c5 ≠ o, Br6c4 ≠ w
B-single: Br6c4 = s
whip[1]: Br7c5{sw .} ==> Nr7c5 ≠ 0
whip[1]: Pr6c4{nw .} ==> Br5c3 ≠ ne, Br5c3 ≠ ew, Br5c3 ≠ wne, Br5c3 ≠ e, Br6c3 ≠ e
whip[1]: Pr8c5{nw .} ==> Br8c4 ≠ wne, Br8c4 ≠ nes
whip[1]: Br8c4{ew .} ==> Nr8c4 ≠ 3
whip[1]: Hr8c2{1 .} ==> Pr8c2 ≠ ns, Pr8c3 ≠ o, Pr8c3 ≠ ne, Pr8c3 ≠ ns, Pr8c3 ≠ se, Br7c2 ≠ w, Br7c2 ≠ ew, Br8c2 ≠ w, Br8c2 ≠ ew
P-single: Pr8c2 = se
whip[1]: Pr8c2{se .} ==> Br7c1 ≠ ew, Br7c1 ≠ wne
whip[1]: Br7c1{nw .} ==> Pr7c2 ≠ ns, Pr7c2 ≠ sw, Nr7c1 ≠ 3
P-single: Pr6c1 = o
H-single: Hr6c1 = 0
V-single: Vr5c1 = 0
V-single: Vr6c1 = 0
w[1]-2-in-r6c1-open-nw-corner ==> Hr7c1 = 1, Vr6c2 = 1
w[1]-2-in-r5c1-open-sw-corner ==> Hr5c1 = 1, Vr5c2 = 1
P-single: Pr5c2 = sw
P-single: Pr7c2 = nw
w[1]-1-in-r6c2-asymmetric-sw-corner ==> Pr6c3 ≠ ew, Pr6c3 ≠ nw
vertical-line-r6{c1 c2} ==> Ir6c1 = out
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = out
vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-horizontal-line-{r4 r5}c2 ==> Ir4c2 = in
no-vertical-line-r4{c1 c2} ==> Ir4c1 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
same-colour-in-r5{c3 c4} ==> Vr5c4 = 0
same-colour-in-{r5 r6}c3 ==> Hr6c3 = 0
w[1]-diagonal-3-1-in-{r7c4...r6c3}-open-end ==> Hr8c4 = 1
w[1]-diagonal-1-1-in-{r8c5...r9c6}-with-no-nw-outer-sides ==> Hr10c6 = 0, Vr9c7 = 0
w[1]-3-in-r7c4-closed-se-corner ==> Pr7c4 ≠ se
P-single: Pr7c4 = ew
H-single: Hr7c3 = 1
V-single: Vr7c4 = 0
w[1]-1-in-r6c3-asymmetric-se-corner ==> Pr6c3 ≠ ne
P-single: Pr6c3 = o
H-single: Hr6c2 = 0
V-single: Vr5c3 = 0
3-in-r3c3-no-U-turn-from-south ==> Vr4c4 = O
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c4 c3} ==> Hr4c3 = 1
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se
P-single: Pr3c3 = ew
H-single: Hr3c2 = 1
V-single: Vr3c3 = 0
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
no-vertical-line-r7{c3 c4} ==> Ir7c3 = out
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
no-horizontal-line-{r9 r10}c6 ==> Ir10c6 = in
no-horizontal-line-{r7 r8}c5 ==> Ir8c5 = in
no-vertical-line-r8{c4 c5} ==> Ir8c4 = in
different-colours-in-{r10 r11}c6 ==> Hr11c6 = 1
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
no-vertical-line-r8{c2 c3} ==> Ir8c3 = out
same-colour-in-{r8 r9}c3 ==> Hr9c3 = 0
different-colours-in-r8{c3 c4} ==> Hr8c4 = 1
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1

LOOP[6]: Hr4c2-Hr4c3-Vr3c4-Hr3c3-Hr3c2- ==> Vr3c2 = 0
no-vertical-line-r3{c1 c2} ==> Ir3c1 = out
different-colours-in-{r3 r4}c1 ==> Hr4c1 = 1
same-colour-in-r3{c0 c1} ==> Vr3c1 = 0
different-colours-in-{r2 r3}c1 ==> Hr3c1 = 1
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
whip[1]: Pr6c1{o .} ==> Br5c1 ≠ sw, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ ew
B-single: Br6c1 = se
P-single: Pr7c1 = se
P-single: Pr6c2 = ns
B-single: Br5c1 = ne
P-single: Pr5c1 = ne
whip[1]: Pr7c1{se .} ==> Br7c1 ≠ w
B-single: Br7c1 = nw
N-single: Nr7c1 = 2
whip[1]: Pr6c2{ns .} ==> Br6c2 ≠ n, Br5c2 ≠ s, Br5c2 ≠ se
B-single: Br6c2 = w
whip[1]: Pr5c1{ne .} ==> Br4c1 ≠ n, Br4c1 ≠ o, Br4c1 ≠ s, Br4c1 ≠ w, Br4c1 ≠ ns, Br4c1 ≠ nw
whip[1]: Br4c1{swn .} ==> Pr4c1 ≠ o, Pr4c1 ≠ ne, Nr4c1 ≠ 0, Nr4c1 ≠ 1
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ ne, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ n
whip[1]: Vr5c1{0 .} ==> Br5c0 ≠ e
B-single: Br5c0 = o
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Vr5c4{0 .} ==> Pr5c4 ≠ ns, Pr5c4 ≠ sw, Pr6c4 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ esw, Br5c3 ≠ nes, Br5c4 ≠ w
P-single: Pr6c4 = o
B-single: Br5c4 = o
N-single: Nr5c4 = 0
w[1]-1-in-r4c3-symmetric-se-corner ==> Pr4c3 ≠ se, Pr4c3 ≠ nw
w[1]-1-in-r6c3-symmetric-ne-corner ==> Pr7c3 ≠ o
P-single: Pr7c3 = se
whip[1]: Pr6c4{o .} ==> Br6c3 ≠ n
B-single: Br6c3 = s
whip[1]: Pr7c3{se .} ==> Br7c3 ≠ e, Br7c2 ≠ s, Br7c3 ≠ se
B-single: Br7c2 = se
N-single: Nr7c2 = 2
P-single: Pr8c3 = nw
whip[1]: Pr8c3{nw .} ==> Br8c3 ≠ n, Br7c3 ≠ swn, Br8c2 ≠ wne, Br8c3 ≠ ne, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn
B-single: Br8c2 = nw
N-single: Nr8c2 = 2
P-single: Pr9c3 = o
B-single: Br7c3 = nw
N-single: Nr7c3 = 2
P-single: Pr8c4 = se
w[1]-1-in-r9c3-symmetric-nw-corner ==> Pr10c4 ≠ o
P-single: Pr10c4 = ne
H-single: Hr10c4 = 1
V-single: Vr9c4 = 1
vertical-line-r9{c3 c4} ==> Ir9c4 = in
same-colour-in-{r8 r9}c4 ==> Hr9c4 = 0
whip[1]: Pr9c3{o .} ==> Br9c3 ≠ n
B-single: Br9c3 = e
whip[1]: Pr9c4{se .} ==> Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ nes, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ e, Br9c4 ≠ s
whip[1]: Br9c4{wne .} ==> Nr9c4 ≠ 0
whip[1]: Pr8c4{se .} ==> Br8c4 ≠ w, Br8c4 ≠ s, Br8c3 ≠ o, Br7c4 ≠ wne, Br8c4 ≠ ns, Br8c4 ≠ se, Br8c4 ≠ ew
B-single: Br8c4 = nw
N-single: Nr8c4 = 2
P-single: Pr8c5 = nw
P-single: Pr9c4 = ns
B-single: Br7c4 = nes
B-single: Br8c3 = e
N-single: Nr8c3 = 1
w[1]-1-in-r8c5-symmetric-nw-corner ==> Pr9c6 ≠ se, Pr9c6 ≠ nw, Pr9c6 ≠ o
w[1]-1-in-r9c6-asymmetric-nw-corner ==> Pr10c7 ≠ ew, Pr10c7 ≠ ns
whip[1]: Pr8c5{nw .} ==> Br8c5 ≠ n, Br7c5 ≠ sw, Br8c5 ≠ w
B-single: Br7c5 = w
N-single: Nr7c5 = 1
whip[1]: Pr8c6{se .} ==> Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c6 ≠ esw, Br8c6 ≠ nes, Br8c6 ≠ n, Br8c6 ≠ w
whip[1]: Pr9c4{ns .} ==> Br9c4 ≠ nw, Br9c4 ≠ swn, Br9c4 ≠ wne
whip[1]: Pr10c7{se .} ==> Br10c7 ≠ esw, Br9c6 ≠ e, Br9c6 ≠ s, Br10c7 ≠ n
whip[1]: Br10c7{se .} ==> Pr11c7 ≠ o, Pr11c7 ≠ ne, Nr10c7 ≠ 1, Nr10c7 ≠ 3
N-single: Nr10c7 = 2
whip[1]: Pr11c7{ew .} ==> Br11c6 ≠ o, Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c6 ≠ n, Br10c6 ≠ e
B-single: Br11c6 = n
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ esw, Br10c5 ≠ o, Br10c5 ≠ n
whip[1]: Br10c5{swn .} ==> Nr10c5 ≠ 0
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 1
whip[1]: Br9c6{w .} ==> Pr9c7 ≠ ns, Pr10c6 ≠ ne, Pr10c7 ≠ nw, Pr9c7 ≠ sw, Pr10c6 ≠ se, Pr10c6 ≠ ew
P-single: Pr10c7 = se
H-single: Hr10c7 = 1
V-single: Vr10c7 = 1
P-single: Pr11c8 = o
V-single: Vr10c8 = 0
w[1]-1-in-r9c7-symmetric-nw-corner ==> Pr10c8 ≠ se
P-single: Pr10c8 = ew
no-vertical-line-r10{c7 c8} ==> Ir10c7 = out
whip[1]: Pr10c7{se .} ==> Br9c7 ≠ w, Br10c6 ≠ ns, Br10c6 ≠ swn, Br10c7 ≠ se
B-single: Br10c7 = nw
P-single: Pr11c7 = nw
B-single: Br9c7 = s
whip[1]: Pr11c7{nw .} ==> Br11c7 ≠ n
B-single: Br11c7 = o
whip[1]: Pr11c8{o .} ==> Br10c8 ≠ nw
B-single: Br10c8 = n
N-single: Nr10c8 = 1
whip[1]: Pr9c7{nw .} ==> Br8c6 ≠ swn, Br8c6 ≠ wne, Br8c6 ≠ e, Br8c6 ≠ s
whip[1]: Br8c6{se .} ==> Pr8c7 ≠ sw, Pr9c6 ≠ ne, Nr8c6 ≠ 1, Nr8c6 ≠ 3
P-single: Pr8c7 = o
H-single: Hr8c6 = 0
V-single: Vr8c7 = 0
no-vertical-line-r8{c6 c7} ==> Ir8c6 = in
same-colour-in-{r8 r9}c6 ==> Hr9c6 = 0
same-colour-in-r8{c5 c6} ==> Vr8c6 = 0
whip[1]: Pr8c7{o .} ==> Br7c6 ≠ ns, Br8c6 ≠ nw, Br8c6 ≠ se, Br8c7 ≠ w
B-single: Br8c7 = o
N-single: Nr8c7 = 0
P-single: Pr9c7 = o
B-single: Br8c6 = o
N-single: Nr8c6 = 0
P-single: Pr8c6 = o
P-single: Pr9c6 = sw
H-single: Hr9c5 = 1
V-single: Vr9c6 = 1
B-single: Br7c6 = n
N-single: Nr7c6 = 1
w[1]-1-in-r8c5-symmetric-ne-corner ==> Pr9c5 ≠ o
P-single: Pr9c5 = se
V-single: Vr9c5 = 1
w[1]-1-in-r9c6-symmetric-ne-corner ==> Pr10c6 ≠ sw, Pr10c6 ≠ o

LOOP[86]: Vr9c6-Hr9c5-Vr9c5-Hr10c4-Vr9c4-Vr8c4-Hr8c4-Vr7c5-Hr7c4-Hr7c3-Vr7c3-Hr8c2-Vr8c2-Vr9c2-Vr10c2-Hr11c1-Vr10c1-Vr9c1-Vr8c1-Vr7c1-Hr7c1-Vr6c2-Vr5c2-Hr5c1-Vr4c1-Hr4c1-Hr4c2-Hr4c3-Vr3c4-Hr3c3-Hr3c2-Hr3c1-Vr2c1-Hr2c1-Hr2c2-Hr2c3-Vr1c4-Hr1c4-Vr1c5-Vr2c5-Hr3c5-Vr3c6-Hr4c5-Vr4c5-Hr5c5-Vr5c6-Vr6c6-Hr7c6-Vr6c7-Hr6c7-Vr5c8-Hr5c7-Vr4c7-Vr3c7-Vr2c7-Hr2c7-Vr2c8-Vr3c8-Hr4c8-Vr3c9-Vr2c9-Vr1c9-Hr1c9-Vr1c10-Vr2c10-Vr3c10-Vr4c10-Hr5c9-Vr5c9-Vr6c9-Vr7c9-Hr8c9-Vr7c10-Vr6c10-Hr6c10-Vr6c11-Vr7c11-Vr8c11-Vr9c11-Hr10c10-Hr10c9-Hr10c8-Hr10c7-Vr10c7-Hr11c6- ==> Vr10c6 = 1
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
no-horizontal-line-{r9 r10}c5 ==> Ir9c5 = out
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OOOXOOOOXO
XXXXOOXOXO
OOOXXOXOXO
XXXXOOXXXO
OXXXXOOXOO
OXXXXOXXOX
XXOOXXXXOX
XOOXXXXXXX
XOOXOXXXXX
XOOOOXOOOO

.   .   .   .———.   .   .   .   .———.   .
  1   1     | 3 |         1     |   | 1
.———.———.———.   .   .   .———.   .   .   .
|             1 |       |   |   |   | 1
.———.———.———.   .———.   .   .   .   .   .
          3 | 1   3 | 2 | 2 |   | 2 | 1
.———.———.———.   .———.   .   .———.   .   .
|     1   1     |       |           | 1
.———.   .   .   .———.   .———.   .———.   .
  2 |               | 1   3 | 2 |     1
.   .   .   .   .   .   .———.   .   .———.
  2 | 1   1   1     | 3 |     1 |   |   |
.———.   .———.———.   .———.   .   .   .   .
|       |     3 |         0     | 3 |   |
.   .———.   .———.   .   .   .   .———.   .
|   |       |     1                   1 |
.   .   .   .   .———.   .   .   .   .   .
|   | 1   1 |   |   | 1   1   1   1   2 |
.   .   .   .———.   .   .———.———.———.———.
|   | 1   0         |   |
.———.   .   .   .   .———.   .   .   .   .

init-time = 4m 36.84s, solve-time = 2m 19.41s, total-time = 6m 56.25s
nb-facts=<Fact-190276>
Quasi-Loop max length = 86
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
