
(solve
15 15
3 . 0 0 . 3 . 3 . . 2 2 . 2 . 
2 . 2 . . 0 2 . . . . 1 . 1 1 
2 . . 2 . . . 1 . . 3 . . . . 
. . . 2 . 2 . 2 . . . . 3 2 .
. 2 . 3 . 2 1 . . 2 . 2 2 . 3
. . 3 . . . . . . 2 1 . 3 . . 
. . . 0 2 1 2 3 . . 1 3 1 . . 
. . 2 2 . 2 3 . . 3 . . 3 1 3
. 2 . . 2 . . . . 3 . 3 . 2 . 
. 2 . . 0 . . . 2 . . . . . 1
3 1 2 . 3 . . 2 2 . . . . . . 
. 3 . . . . . . . . 3 . 2 2 2 
. 2 . 3 . . . 2 . 2 . . . . 1
. . . 3 . 3 3 . 2 . 2 3 . 3 . 
3 . 1 . . 1 . . 3 . . . 3 . 3
)



***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

3 . 0 0 . 3 . 3 . . 2 2 . 2 .
2 . 2 . . 0 2 . . . . 1 . 1 1
2 . . 2 . . . 1 . . 3 . . . .
. . . 2 . 2 . 2 . . . . 3 2 .
. 2 . 3 . 2 1 . . 2 . 2 2 . 3
. . 3 . . . . . . 2 1 . 3 . .
. . . 0 2 1 2 3 . . 1 3 1 . .
. . 2 2 . 2 3 . . 3 . . 3 1 3
. 2 . . 2 . . . . 3 . 3 . 2 .
. 2 . . 0 . . . 2 . . . . . 1
3 1 2 . 3 . . 2 2 . . . . . .
. 3 . . . . . . . . 3 . 2 2 2
. 2 . 3 . . . 2 . 2 . . . . 1
. . . 3 . 3 3 . 2 . 2 3 . 3 .
3 . 1 . . 1 . . 3 . . . 3 . 3

start init-grid-structure 0.00841712951660156
start create-csp-variables
start create-labels 0.00273609161376953
start init-physical-csp-links 0.0233981609344482
start init-physical-non-csp-links 46.6112141609192
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 13.0054528713226
     start init-physical-BN-non-csp-links at local time 59.8464398384094
     start init-physical-BP-non-csp-links at local time 149.45124578476
     end init-physical-BP-non-csp-links at local time 1746.27620983124
end init-physical-non-csp-links 1792.88747096062
start init-corner-B-c-values 1792.89613413811
start init-outer-B-candidates 1792.89620494843
start init-outer-I-candidates 1792.89742302895
start init-H-candidates 1792.89806103706
start init-V-candidates 1792.90720200539
start init-P-candidates 1792.91645908356
start init-inner-I-candidates 1792.93394708633
start init-inner-N-and-B-candidates 1792.94061899185
start solution 1792.97878789902
entering BRT
w[0]-0-in-r10c5 ==> Hr11c5 = 0, Hr10c5 = 0, Vr10c6 = 0, Vr10c5 = 0
w[0]-0-in-r7c4 ==> Hr8c4 = 0, Hr7c4 = 0, Vr7c5 = 0, Vr7c4 = 0
w[0]-0-in-r2c6 ==> Hr3c6 = 0, Hr2c6 = 0, Vr2c7 = 0, Vr2c6 = 0
w[0]-0-in-r1c4 ==> Hr2c4 = 0, Hr1c4 = 0, Vr1c5 = 0, Vr1c4 = 0
w[0]-0-in-r1c3 ==> Hr2c3 = 0, Hr1c3 = 0, Vr1c3 = 0
w[0]-adjacent-3-0-in-c5{r11 r10} ==> Vr11c6 = 1, Vr11c5 = 1, Hr12c5 = 1, Hr11c6 = 1, Hr11c4 = 1, Vr12c6 = 0, Vr12c5 = 0, Hr12c6 = 0, Hr12c4 = 0
w[0]-adjacent-3-0-in-c6{r1 r2} ==> Vr1c7 = 1, Vr1c6 = 1, Hr2c7 = 1, Hr2c5 = 1, Hr1c6 = 1, Hr1c7 = 0, Hr1c5 = 0
w[1]-3-in-se-corner ==> Vr15c16 = 1, Hr16c15 = 1
w[1]-3-in-sw-corner ==> Vr15c1 = 1, Hr16c1 = 1
w[1]-3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
w[1]-diagonal-3-0-in-{r6c3...r7c4} ==> Vr6c4 = 1, Hr7c3 = 1
w[1]-diagonal-3s-in-{r14c14...r15c13} ==> Vr14c15 = 1, Vr15c13 = 1, Hr16c13 = 1, Hr14c14 = 1, Vr13c15 = 0, Hr16c12 = 0, Hr14c15 = 0
w[1]-diagonal-3s-in-{r14c14...r15c15} ==> Vr14c14 = 1, Vr13c14 = 0, Hr14c13 = 0
w[1]-diagonal-3s-in-{r14c12...r15c13} ==> Vr15c14 = 1, Vr14c12 = 1, Hr14c12 = 1, Vr13c12 = 0, Hr16c14 = 0, Hr14c11 = 0
w[1]-diagonal-3s-in-{r11c1...r12c2} ==> Vr12c3 = 1, Vr11c1 = 1, Hr13c2 = 1, Hr11c1 = 1, Vr13c3 = 0, Vr10c1 = 0, Hr13c3 = 0
w[1]-diagonal-3s-in-{r8c13...r9c12} ==> Vr8c14 = 1, Vr9c12 = 1, Hr10c12 = 1, Hr8c13 = 1, Vr7c14 = 0, Vr10c12 = 0, Hr10c11 = 0, Hr8c14 = 0
w[1]-diagonal-3s-in-{r7c12...r8c13} ==> Vr7c12 = 1, Hr9c13 = 1, Hr7c12 = 1, Vr9c14 = 0, Vr6c12 = 0, Hr9c14 = 0, Hr7c11 = 0
w[1]-2-in-r9c14-open-nw-corner ==> Hr10c14 = 1, Vr9c15 = 1, Hr10c15 = 0, Vr10c15 = 0
w[1]-diagonal-3s-in-{r7c8...r8c7} ==> Vr7c9 = 1, Vr8c7 = 1, Hr9c7 = 1, Hr7c8 = 1, Vr6c9 = 0, Vr9c7 = 0, Hr9c6 = 0, Hr7c9 = 0
w[1]-diagonal-3s-in-{r6c13...r7c12} ==> Vr6c14 = 1, Hr8c12 = 1, Hr6c13 = 1, Vr5c14 = 0, Vr8c12 = 0, Hr8c11 = 0, Hr6c14 = 0
w[1]-diagonal-3s-in-{r5c4...r6c3} ==> Vr5c5 = 1, Vr6c3 = 1, Hr5c4 = 1, Vr4c5 = 0, Vr7c3 = 0, Hr7c2 = 0, Hr5c5 = 0
w[1]-diagonal-3-2+0-in-{r1c8...r2c7+r2c6} ==> Vr1c9 = 1, Vr3c7 = 1, Hr3c7 = 1, Hr1c8 = 1, Hr1c9 = 0
w[1]-diagonal-3-2-in-{r8c15...r9c14}-non-closed-sw-corner ==> Vr8c16 = 1, Hr8c15 = 1, Vr7c16 = 0
w[1]-3-in-r15c15-hit-by-verti-line-at-nw ==> Hr15c14 = 0
w[1]-3-in-r14c14-hit-by-verti-line-at-sw ==> Hr15c13 = 0
w[1]-3-in-r9c12-hit-by-horiz-line-at-ne ==> Vr8c13 = 0
w[1]-3-in-r8c13-hit-by-horiz-line-at-nw ==> Vr7c13 = 0
w[1]-3-in-r5c4-hit-by-verti-line-at-sw ==> Hr6c3 = 0
w[1]-3-in-r1c8-hit-by-horiz-line-at-sw ==> Vr2c8 = 0
w[1]-1+3+1-in-r7c13+r8c13+r8c14 ==> Hr7c13 = 0, Vr8c15 = 0
w[0]-adjacent-3-in-r8c15-nolines-west ==> Vr7c15 = 1, Hr9c15 = 1, Vr9c16 = 0
w[0]-adjacent-3-in-r6c13-nolines-south ==> Vr6c13 = 1, Hr7c14 = 1, Vr5c13 = 0, Hr6c12 = 0
w[1]-2-in-r5c12-open-se-corner ==> Hr5c12 = 1, Vr5c12 = 1, Hr5c11 = 0, Vr4c12 = 0
w[1]-diagonal-3-2-in-{r4c13...r5c12}-non-closed-sw-corner ==> Vr4c14 = 1, Hr4c13 = 1, Vr3c14 = 0, Hr4c14 = 0
w[1]-diagonal-3-2-in-{r5c15...r4c14}-non-closed-nw-corner ==> Vr5c16 = 1, Hr6c15 = 1, Vr6c16 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r7{c11 c12} ==> Vr7c11 = 0
w[1]-3-in-r15c15-closed-se-corner ==> Pr15c15 ≠ se, Pr15c15 ≠ nw, Pr15c15 ≠ o
w[1]-3-in-r15c13-closed-sw-corner ==> Pr15c14 ≠ sw, Pr15c14 ≠ ne, Pr15c14 ≠ o
w[1]-3-in-r15c13-closed-se-corner ==> Pr15c13 ≠ se, Pr15c13 ≠ nw, Pr15c13 ≠ o
w[1]-3-in-r15c1-closed-sw-corner ==> Pr15c2 ≠ sw, Pr15c2 ≠ ne, Pr15c2 ≠ o
w[1]-3-in-r12c2-closed-se-corner ==> Pr12c2 ≠ se, Pr12c2 ≠ nw, Pr12c2 ≠ o
w[1]-3-in-r11c5-closed-sw-corner ==> Pr11c6 ≠ o
w[1]-3-in-r11c5-closed-se-corner ==> Pr11c5 ≠ o
w[1]-3-in-r9c12-closed-sw-corner ==> Pr9c13 ≠ sw, Pr9c13 ≠ ne, Pr9c13 ≠ o
w[1]-3-in-r8c15-closed-se-corner ==> Pr8c15 ≠ se, Pr8c15 ≠ nw, Pr8c15 ≠ o
w[1]-3-in-r8c13-closed-se-corner ==> Pr8c13 ≠ se, Pr8c13 ≠ nw, Pr8c13 ≠ o
w[1]-3-in-r8c7-closed-sw-corner ==> Pr8c8 ≠ sw, Pr8c8 ≠ ne, Pr8c8 ≠ o
w[1]-3-in-r7c12-closed-sw-corner ==> Pr7c13 ≠ sw, Pr7c13 ≠ ne, Pr7c13 ≠ o
w[1]-3-in-r6c13-closed-nw-corner ==> Pr7c14 ≠ se, Pr7c14 ≠ nw, Pr7c14 ≠ o
w[1]-3-in-r6c3-closed-sw-corner ==> Pr6c4 ≠ sw, Pr6c4 ≠ ne, Pr6c4 ≠ o
w[1]-3-in-r6c3-closed-se-corner ==> Pr6c3 ≠ se, Pr6c3 ≠ nw, Pr6c3 ≠ o
w[1]-3-in-r5c15-closed-se-corner ==> Pr5c15 ≠ nw
w[1]-3-in-r1c6-closed-ne-corner ==> Pr2c6 ≠ o
w[1]-3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
w[1]-3-in-r8c10-isolated-at-ne-corner ==> Vr8c11 = 1, Hr8c10 = 1
w[1]-3-in-r9c10-hit-by-verti-line-at-ne ==> Vr9c10 = 1, Hr10c10 = 1, Hr9c11 = 0
w[1]-2-in-r10c9-open-ne-corner ==> Hr11c9 = 1, Vr10c9 = 1, Hr11c8 = 0, Vr11c9 = 0
w[1]-2-in-r11c8-open-ne-corner ==> Hr12c8 = 1, Vr11c8 = 1, Hr12c7 = 0, Vr12c8 = 0
w[1]-3-in-r8c10-hit-by-verti-line-at-sw ==> Hr9c9 = 0
w[1]-3-in-r9c10-closed-sw-corner ==> Pr9c11 ≠ sw, Pr9c11 ≠ ne, Pr9c11 ≠ o
w[1]-3-in-r8c10-closed-ne-corner ==> Pr9c10 ≠ sw, Pr9c10 ≠ ne, Pr9c10 ≠ o
w[1]-3-in-r9c12-isolated-at-nw-corner ==> Hr9c12 = 1
w[1]-3-in-r8c13-hit-by-horiz-line-at-sw ==> Vr9c13 = 0
w[1]-3-in-r9c12-closed-nw-corner ==> Pr10c13 ≠ se, Pr10c13 ≠ nw, Pr10c13 ≠ o
w[1]-3-in-r5c15-isolated-at-sw-corner ==> Vr5c15 = 1
w[1]-3-in-r5c15-closed-sw-corner ==> Pr5c16 ≠ sw, Pr5c16 ≠ o
adjacent-3s-in-r14{c6 c7} ==> Vr14c8 = 1, Vr14c7 = 1, Vr14c6 = 1, Vr15c7 = 0, Vr13c7 = 0
adjacent-3s-in-c4{r13 r14} ==> Hr15c4 = 1, Hr14c4 = 1, Hr13c4 = 1, Hr14c5 = 0, Hr14c3 = 0
adjacent-3s-in-c10{r8 r9} ==> Hr9c10 = 1
w[0]-adjacent-3-in-r9c10-nolines-east ==> Vr10c11 = 1, Vr8c10 = 0
w[1]-3-in-r8c10-closed-se-corner ==> Pr8c10 ≠ se, Pr8c10 ≠ nw, Pr8c10 ≠ o
w[1]-3-in-r9c10-closed-nw-corner ==> Pr10c11 ≠ se, Pr10c11 ≠ nw, Pr10c11 ≠ o
P-single: Pr2c6 = nw
P-single: Pr11c5 = sw
P-single: Pr11c6 = se
P-single: Pr2c7 = ne
P-single: Pr3c7 = se
P-single: Pr7c5 = ne
H-single: Hr7c5 = 1
V-single: Vr6c5 = 1
w[1]-3-in-r5c4-hit-by-verti-line-at-se ==> Vr5c4 = 1, Hr6c5 = 0
w[1]-3-in-r6c3-hit-by-verti-line-at-ne ==> Hr6c4 = 0
w[1]-3-in-r5c4-closed-nw-corner ==> Pr6c5 ≠ se, Pr6c5 ≠ nw, Pr6c5 ≠ o
P-single: Pr8c4 = sw
H-single: Hr8c3 = 1
V-single: Vr8c4 = 1
P-single: Pr10c6 = ne
H-single: Hr10c6 = 1
V-single: Vr9c6 = 1
P-single: Pr2c3 = sw
H-single: Hr2c2 = 1
V-single: Vr2c3 = 1
w[1]-3-in-r1c1-hit-by-horiz-line-at-se ==> Vr2c2 = 0
P-single: Pr3c3 = ne
H-single: Hr3c2 = 0
H-single: Hr3c3 = 1
V-single: Vr3c3 = 0
P-single: Pr2c4 = o
V-single: Vr2c4 = 0
P-single: Pr1c5 = o
P-single: Pr1c4 = o
P-single: Pr1c3 = o
H-single: Hr1c2 = 0
w[1]-1-in-r6c11-asymmetric-ne-corner ==> Pr7c11 ≠ ew, Pr7c11 ≠ se, Pr7c11 ≠ nw, Pr7c11 ≠ ns
w[1]-1-in-r3c8-asymmetric-nw-corner ==> Pr4c9 ≠ sw, Pr4c9 ≠ ew, Pr4c9 ≠ ns, Pr4c9 ≠ ne
entering level Loop with <Fact-199064>

LOOP[20]: Hr10c14-Vr9c15-Hr9c15-Vr8c16-Hr8c15-Vr7c15-Hr7c14-Vr6c14-Hr6c13-Vr6c13-Hr7c12-Vr7c12-Hr8c12-Hr8c13-Vr8c14-Hr9c13-Hr9c12-Vr9c12-Hr10c12- ==> Hr10c13 = 0
entering level Col with <Fact-199295>
vertical-line-r15{c15 c16} ==> Ir15c15 = in
no-vertical-line-r9{c15 c16} ==> Ir9c15 = out
no-horizontal-line-{r9 r10}c15 ==> Ir10c15 = out
no-vertical-line-r10{c14 c15} ==> Ir10c14 = out
horizontal-line-{r9 r10}c14 ==> Ir9c14 = in
no-vertical-line-r9{c13 c14} ==> Ir9c13 = in
no-vertical-line-r9{c12 c13} ==> Ir9c12 = in
vertical-line-r9{c11 c12} ==> Ir9c11 = out
no-vertical-line-r9{c10 c11} ==> Ir9c10 = out
vertical-line-r9{c9 c10} ==> Ir9c9 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
no-vertical-line-r8{c9 c10} ==> Ir8c10 = in
vertical-line-r8{c10 c11} ==> Ir8c11 = out
no-vertical-line-r8{c11 c12} ==> Ir8c12 = out
no-vertical-line-r8{c12 c13} ==> Ir8c13 = out
vertical-line-r8{c13 c14} ==> Ir8c14 = in
no-vertical-line-r8{c14 c15} ==> Ir8c15 = in
horizontal-line-{r7 r8}c15 ==> Ir7c15 = out
no-horizontal-line-{r6 r7}c15 ==> Ir6c15 = out
no-vertical-line-r6{c14 c15} ==> Ir6c14 = out
no-horizontal-line-{r5 r6}c14 ==> Ir5c14 = out
no-vertical-line-r5{c13 c14} ==> Ir5c13 = out
no-vertical-line-r5{c12 c13} ==> Ir5c12 = out
no-horizontal-line-{r5 r6}c12 ==> Ir6c12 = out
no-vertical-line-r6{c11 c12} ==> Ir6c11 = out
no-horizontal-line-{r6 r7}c11 ==> Ir7c11 = out
no-vertical-line-r7{c10 c11} ==> Ir7c10 = out
vertical-line-r7{c11 c12} ==> Ir7c12 = in
no-vertical-line-r7{c12 c13} ==> Ir7c13 = in
no-vertical-line-r7{c13 c14} ==> Ir7c14 = in
no-horizontal-line-{r6 r7}c13 ==> Ir6c13 = in
vertical-line-r5{c11 c12} ==> Ir5c11 = in
no-horizontal-line-{r4 r5}c11 ==> Ir4c11 = in
no-vertical-line-r4{c11 c12} ==> Ir4c12 = in
vertical-line-r5{c14 c15} ==> Ir5c15 = in
no-horizontal-line-{r9 r10}c9 ==> Ir10c9 = in
no-vertical-line-r10{c9 c10} ==> Ir10c10 = in
vertical-line-r10{c10 c11} ==> Ir10c11 = out
no-vertical-line-r10{c11 c12} ==> Ir10c12 = out
vertical-line-r10{c8 c9} ==> Ir10c8 = out
no-horizontal-line-{r10 r11}c8 ==> Ir11c8 = out
no-vertical-line-r11{c8 c9} ==> Ir11c9 = out
vertical-line-r11{c7 c8} ==> Ir11c7 = in
no-horizontal-line-{r11 r12}c7 ==> Ir12c7 = in
no-vertical-line-r12{c7 c8} ==> Ir12c8 = in
no-horizontal-line-{r9 r10}c13 ==> Ir10c13 = in
vertical-line-r15{c0 c1} ==> Ir15c1 = in
vertical-line-r11{c0 c1} ==> Ir11c1 = in
horizontal-line-{r10 r11}c1 ==> Ir10c1 = out
vertical-line-r1{c0 c1} ==> Ir1c1 = in
no-horizontal-line-{r15 r16}c14 ==> Ir15c14 = out
no-horizontal-line-{r14 r15}c14 ==> Ir14c14 = out
vertical-line-r14{c13 c14} ==> Ir14c13 = in
no-horizontal-line-{r13 r14}c13 ==> Ir13c13 = in
no-vertical-line-r13{c13 c14} ==> Ir13c14 = in
no-vertical-line-r13{c14 c15} ==> Ir13c15 = in
no-horizontal-line-{r13 r14}c15 ==> Ir14c15 = in
no-horizontal-line-{r14 r15}c13 ==> Ir15c13 = in
vertical-line-r15{c12 c13} ==> Ir15c12 = out
no-horizontal-line-{r0 r1}c9 ==> Ir1c9 = out
vertical-line-r1{c8 c9} ==> Ir1c8 = in
no-horizontal-line-{r0 r1}c7 ==> Ir1c7 = out
vertical-line-r1{c6 c7} ==> Ir1c6 = in
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = in
no-vertical-line-r2{c5 c6} ==> Ir2c5 = in
horizontal-line-{r1 r2}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = out
no-vertical-line-r1{c2 c3} ==> Ir1c2 = out
horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
no-vertical-line-r2{c1 c2} ==> Ir2c1 = in
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
no-vertical-line-r3{c2 c3} ==> Ir3c3 = in
horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = in
no-vertical-line-r2{c7 c8} ==> Ir2c8 = in
horizontal-line-{r2 r3}c7 ==> Ir3c7 = out
vertical-line-r3{c6 c7} ==> Ir3c6 = in
same-colour-in-{r1 r2}c8 ==> Hr2c8 = 0
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
same-colour-in-{r1 r2}c1 ==> Hr2c1 = 0
w[1]-2-in-r2c1-open-ne-corner ==> Hr3c1 = 1, Vr2c1 = 1, Vr3c1 = 0
w[1]-3-in-r1c1-hit-by-verti-line-at-sw ==> Vr1c2 = 1
w[1]-3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne
P-single: Pr2c1 = ns
no-vertical-line-r3{c0 c1} ==> Ir3c1 = out
different-colours-in-r3{c1 c2} ==> Hr3c2 = 1
different-colours-in-r1{c7 c8} ==> Hr1c8 = 1
w[1]-3-in-r1c8-closed-nw-corner ==> Pr2c9 ≠ se, Pr2c9 ≠ nw, Pr2c9 ≠ o
same-colour-in-{r14 r15}c15 ==> Hr15c15 = 0
different-colours-in-r14{c15 c16} ==> Hr14c16 = 1
w[1]-3-in-r15c15-hit-by-verti-line-at-ne ==> Vr15c15 = 1
w[1]-3-in-r15c15-closed-sw-corner ==> Pr15c16 ≠ sw, Pr15c16 ≠ o
different-colours-in-r13{c15 c16} ==> Hr13c16 = 1
different-colours-in-r10{c13 c14} ==> Hr10c14 = 1
different-colours-in-r10{c12 c13} ==> Hr10c13 = 1

LOOP[22]: Vr10c13-Hr10c12-Vr9c12-Hr9c12-Hr9c13-Vr8c14-Hr8c13-Hr8c12-Vr7c12-Hr7c12-Vr6c13-Hr6c13-Vr6c14-Hr7c14-Vr7c15-Hr8c15-Vr8c16-Hr9c15-Vr9c15-Hr10c14-Vr10c14- ==> Hr11c13 = 0
no-horizontal-line-{r10 r11}c13 ==> Ir11c13 = in
different-colours-in-{r5 r6}c11 ==> Hr6c11 = 1
same-colour-in-r10{c15 c16} ==> Vr10c16 = 0
Starting_init_links_with_<Fact-199760>
5469 candidates, 19247 csp-links and 75973 links. Density = 0.51%
starting non trivial part of solution
Entering_level_W1_with_<Fact-390205>
whip[1]: Vr10c16{0 .} ==> Br10c15 ≠ e, Br10c16 ≠ w, Pr10c16 ≠ ns, Pr10c16 ≠ sw, Pr11c16 ≠ ns, Pr11c16 ≠ nw
B-single: Br10c16 = o
whip[1]: Pr11c16{sw .} ==> Br11c15 ≠ nw, Br11c15 ≠ se, Br11c15 ≠ ew, Br11c15 ≠ esw, Br11c15 ≠ swn, Br11c15 ≠ n, Br11c15 ≠ e, Br11c15 ≠ ns
whip[1]: Pr10c16{nw .} ==> Br9c15 ≠ ne, Br9c15 ≠ ns, Br9c15 ≠ ew, Br9c15 ≠ sw, Br9c15 ≠ swn, Br9c15 ≠ wne, Br9c15 ≠ e, Br9c15 ≠ s
whip[1]: Br10c15{w .} ==> Pr11c15 ≠ ne
whip[1]: Hr6c11{1 .} ==> Br6c11 ≠ w, Br5c11 ≠ o, Pr6c11 ≠ o, Pr6c11 ≠ ns, Pr6c11 ≠ nw, Pr6c11 ≠ sw, Pr6c12 ≠ ns, Pr6c12 ≠ se, Br5c11 ≠ n, Br5c11 ≠ e, Br5c11 ≠ w, Br5c11 ≠ ne, Br5c11 ≠ nw, Br5c11 ≠ ew, Br5c11 ≠ wne, Br6c11 ≠ e, Br6c11 ≠ s
B-single: Br6c11 = n
V-single: Vr6c11 = 0
no-vertical-line-r6{c10 c11} ==> Ir6c10 = out
same-colour-in-{r6 r7}c10 ==> Hr7c10 = 0
w[1]-2-in-r6c10-open-se-corner ==> Hr6c10 = 1, Vr6c10 = 1, Hr6c9 = 0, Vr5c10 = 0
P-single: Pr6c11 = ew
V-single: Vr5c11 = 0
no-vertical-line-r5{c10 c11} ==> Ir5c10 = in
no-vertical-line-r5{c9 c10} ==> Ir5c9 = in
no-horizontal-line-{r5 r6}c9 ==> Ir6c9 = in
no-vertical-line-r6{c8 c9} ==> Ir6c8 = in
horizontal-line-{r6 r7}c8 ==> Ir7c8 = out
vertical-line-r7{c8 c9} ==> Ir7c9 = in
same-colour-in-{r7 r8}c9 ==> Hr8c9 = 0
w[0]-adjacent-3-in-r8c10-nolines-west ==> Vr7c10 = 1
whip[1]: Vr6c11{0 .} ==> Br6c10 ≠ ne, Br6c10 ≠ se, Br6c10 ≠ ew
whip[1]: Hr7c10{0 .} ==> Pr7c10 ≠ se, Pr7c10 ≠ ew, Pr7c11 ≠ sw, Br6c10 ≠ ns, Br6c10 ≠ sw, Br7c10 ≠ n, Br7c10 ≠ ne, Br7c10 ≠ ns, Br7c10 ≠ nw, Br7c10 ≠ swn, Br7c10 ≠ wne, Br7c10 ≠ nes
P-single: Pr6c10 = se
P-single: Pr7c11 = o
B-single: Br6c10 = nw
w[1]-1-in-r7c11-symmetric-nw-corner ==> Pr8c12 ≠ se, Pr8c12 ≠ nw, Pr8c12 ≠ o
whip[1]: Pr6c10{se .} ==> Br6c9 ≠ w, Br6c9 ≠ s, Br6c9 ≠ n, Br6c9 ≠ o, Br5c9 ≠ s, Br5c9 ≠ e, Br5c9 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ se, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ nes, Br5c10 ≠ ne, Br5c10 ≠ nw, Br5c10 ≠ ew, Br5c10 ≠ sw, Br6c9 ≠ ne, Br6c9 ≠ ns, Br6c9 ≠ nw, Br6c9 ≠ sw, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c9 ≠ nes
whip[1]: Br6c9{esw .} ==> Pr6c9 ≠ ne, Pr6c9 ≠ se, Pr6c9 ≠ ew, Nr6c9 ≠ 0
whip[1]: Br5c10{se .} ==> Pr5c10 ≠ ns, Pr5c10 ≠ sw
whip[1]: Pr5c10{ew .} ==> Hr5c10 ≠ 0, Br4c9 ≠ nw, Br4c9 ≠ se, Br4c9 ≠ esw, Br4c9 ≠ nes, Br4c10 ≠ nw, Br4c10 ≠ ew, Br4c10 ≠ wne, Br5c10 ≠ se, Br4c9 ≠ o, Br4c9 ≠ n, Br4c9 ≠ w, Br4c10 ≠ o, Br4c10 ≠ n, Br4c10 ≠ e, Br4c10 ≠ w, Br4c10 ≠ ne
H-single: Hr5c10 = 1
B-single: Br5c10 = ns
horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
w[1]-3-in-r3c11-hit-by-verti-line-at-sw ==> Vr3c12 = 1, Hr3c11 = 1, Hr4c10 = 0
w[1]-3-in-r3c11-closed-ne-corner ==> Pr4c11 ≠ sw, Pr4c11 ≠ ne, Pr4c11 ≠ o
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o, Pr4c11 ≠ nw, Pr4c11 ≠ ew, Pr5c11 ≠ ew, Br4c10 ≠ s, Br4c10 ≠ ns, Br4c10 ≠ sw, Br4c10 ≠ swn, Br4c11 ≠ n, Br4c11 ≠ e, Br4c11 ≠ s, Br4c11 ≠ ne, Br4c11 ≠ ns, Br4c11 ≠ se, Br4c11 ≠ nes
P-single: Pr5c11 = nw
whip[1]: Pr5c11{nw .} ==> Br4c11 ≠ sw, Br4c11 ≠ esw, Br4c11 ≠ swn, Br5c11 ≠ ns, Br5c11 ≠ sw, Br5c11 ≠ esw, Br5c11 ≠ swn, Br5c11 ≠ nes
whip[1]: Br5c11{se .} ==> Pr5c12 ≠ ew, Pr5c12 ≠ sw, Nr5c11 ≠ 0, Nr5c11 ≠ 3
whip[1]: Pr5c12{se .} ==> Br4c12 ≠ ne, Br5c12 ≠ se, Br4c12 ≠ o, Br4c12 ≠ n, Br4c12 ≠ e
whip[1]: Br4c12{nes .} ==> Nr4c12 ≠ 0
whip[1]: Br4c11{wne .} ==> Nr4c11 ≠ 0
whip[1]: Br4c10{nes .} ==> Pr4c10 ≠ se, Nr4c10 ≠ 0, Nr4c10 ≠ 1
whip[1]: Pr4c11{se .} ==> Br3c10 ≠ ns, Br3c10 ≠ se, Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br3c10 ≠ nes, Br3c11 ≠ esw, Br3c11 ≠ swn, Br4c10 ≠ nes, Br3c10 ≠ s
whip[1]: Br3c10{wne .} ==> Pr4c10 ≠ ne, Pr4c10 ≠ ew
whip[1]: Br3c11{nes .} ==> Pr3c11 ≠ o, Pr3c11 ≠ ns, Pr3c11 ≠ nw, Pr3c11 ≠ sw, Pr3c12 ≠ o, Pr3c12 ≠ ne, Pr3c12 ≠ ns, Pr3c12 ≠ nw, Pr3c12 ≠ se, Pr3c12 ≠ ew, Pr4c12 ≠ o, Pr4c12 ≠ se, Pr4c12 ≠ ew, Pr4c12 ≠ sw
P-single: Pr3c12 = sw
w[1]-1-in-r2c12-symmetric-sw-corner ==> Pr2c13 ≠ sw, Pr2c13 ≠ ne, Pr2c13 ≠ o
whip[1]: Pr3c12{sw .} ==> Br3c12 ≠ ns, Br3c12 ≠ ne, Br3c12 ≠ s, Br3c12 ≠ e, Br3c12 ≠ n, Br3c12 ≠ o, Br2c12 ≠ w, Br2c12 ≠ s, Br2c11 ≠ ne, Br2c11 ≠ w, Br2c11 ≠ e, Br2c11 ≠ n, Br2c11 ≠ o, Br2c11 ≠ nw, Br2c11 ≠ se, Br2c11 ≠ ew, Br2c11 ≠ esw, Br2c11 ≠ wne, Br2c11 ≠ nes, Br3c12 ≠ nw, Br3c12 ≠ se, Br3c12 ≠ swn, Br3c12 ≠ wne, Br3c12 ≠ nes
whip[1]: Br3c12{esw .} ==> Pr3c13 ≠ nw, Pr3c13 ≠ ew, Pr3c13 ≠ sw, Nr3c12 ≠ 0
whip[1]: Br2c11{swn .} ==> Pr2c12 ≠ ns, Pr2c12 ≠ se, Pr2c12 ≠ sw, Nr2c11 ≠ 0
whip[1]: Pr2c13{ew .} ==> Br1c13 ≠ sw, Br1c13 ≠ esw, Br1c13 ≠ swn, Br1c13 ≠ o, Br1c13 ≠ n, Br1c13 ≠ e, Br1c13 ≠ ne
whip[1]: Br1c13{nes .} ==> Nr1c13 ≠ 0
whip[1]: Pr4c12{nw .} ==> Br4c11 ≠ wne, Br4c12 ≠ nw, Br4c12 ≠ swn, Br4c12 ≠ wne
whip[1]: Br4c11{ew .} ==> Nr4c11 ≠ 3
whip[1]: Pr3c11{ew .} ==> Br2c10 ≠ se, Br2c10 ≠ esw, Br2c10 ≠ nes, Br3c10 ≠ wne, Br3c10 ≠ ne
whip[1]: Br3c10{ew .} ==> Nr3c10 ≠ 3
whip[1]: Br4c9{wne .} ==> Nr4c9 ≠ 0
whip[1]: Br5c9{nw .} ==> Nr5c9 ≠ 3
whip[1]: Pr7c11{o .} ==> Br7c10 ≠ e, Br7c10 ≠ se, Br7c10 ≠ ew, Br7c10 ≠ esw, Br7c11 ≠ n, Br7c11 ≠ w
whip[1]: Br7c11{s .} ==> Pr8c11 ≠ ne, Pr8c11 ≠ ns, Pr8c11 ≠ nw
whip[1]: Br7c10{sw .} ==> Nr7c10 ≠ 3
whip[1]: Pr8c12{sw .} ==> Br8c12 ≠ nw, Br8c12 ≠ se, Br8c12 ≠ swn, Br8c12 ≠ wne, Br8c12 ≠ o, Br8c12 ≠ e, Br8c12 ≠ s
whip[1]: Br8c12{nes .} ==> Nr8c12 ≠ 0
whip[1]: Pr7c10{nw .} ==> Br7c9 ≠ w, Br7c9 ≠ ne, Br7c9 ≠ sw, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c9 ≠ o, Br7c9 ≠ s
whip[1]: Br7c9{swn .} ==> Nr7c9 ≠ 0
whip[1]: Hr8c9{0 .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Pr8c10 ≠ ew, Pr8c10 ≠ sw, Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ esw, Br7c9 ≠ swn, Br8c9 ≠ n, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c9 ≠ nes
whip[1]: Br7c9{ew .} ==> Nr7c9 ≠ 3
whip[1]: Pr8c10{ns .} ==> Br7c9 ≠ nw, Br7c10 ≠ s, Br8c10 ≠ swn, Br8c10 ≠ wne, Br7c9 ≠ n, Br7c10 ≠ o
whip[1]: Br7c10{sw .} ==> Pr7c10 ≠ nw, Nr7c10 ≠ 0
P-single: Pr7c10 = ns
whip[1]: Pr7c10{ns .} ==> Br6c9 ≠ se, Br6c9 ≠ esw
whip[1]: Br6c9{ew .} ==> Pr7c9 ≠ ne, Pr7c9 ≠ se, Pr7c9 ≠ ew, Nr6c9 ≠ 3
whip[1]: Br8c10{nes .} ==> Pr8c11 ≠ o, Pr8c11 ≠ ew, Pr9c10 ≠ ns, Pr9c10 ≠ nw, Pr9c11 ≠ ns, Pr9c11 ≠ se, Pr9c11 ≠ ew
P-single: Pr9c11 = nw
whip[1]: Pr9c11{nw .} ==> Br9c11 ≠ n, Br8c11 ≠ s, Br8c11 ≠ e, Br8c11 ≠ n, Br8c11 ≠ o, Br8c11 ≠ ne, Br8c11 ≠ ns, Br8c11 ≠ se, Br8c11 ≠ sw, Br8c11 ≠ esw, Br8c11 ≠ swn, Br8c11 ≠ nes, Br9c10 ≠ esw, Br9c10 ≠ wne, Br9c10 ≠ nes, Br9c11 ≠ w, Br9c11 ≠ ne, Br9c11 ≠ ns, Br9c11 ≠ nw, Br9c11 ≠ ew, Br9c11 ≠ sw, Br9c11 ≠ esw, Br9c11 ≠ swn, Br9c11 ≠ wne, Br9c11 ≠ nes
B-single: Br9c10 = swn
P-single: Pr12c8 = ne
P-single: Pr11c9 = ne
P-single: Pr9c10 = se
P-single: Pr10c10 = ne
whip[1]: Pr12c8{ne .} ==> Br12c8 ≠ o, Br12c7 ≠ n, Br11c7 ≠ n, Br11c7 ≠ o, Br11c7 ≠ s, Br11c7 ≠ w, Br11c7 ≠ ns, Br11c7 ≠ nw, Br11c7 ≠ se, Br11c7 ≠ sw, Br11c7 ≠ esw, Br11c7 ≠ swn, Br11c7 ≠ nes, Br11c8 ≠ ne, Br11c8 ≠ ns, Br11c8 ≠ nw, Br11c8 ≠ se, Br11c8 ≠ ew, Br12c7 ≠ e, Br12c7 ≠ ne, Br12c7 ≠ ns, Br12c7 ≠ nw, Br12c7 ≠ se, Br12c7 ≠ ew, Br12c7 ≠ esw, Br12c7 ≠ swn, Br12c7 ≠ wne, Br12c7 ≠ nes, Br12c8 ≠ e, Br12c8 ≠ s, Br12c8 ≠ w, Br12c8 ≠ nw, Br12c8 ≠ se, Br12c8 ≠ ew, Br12c8 ≠ sw, Br12c8 ≠ esw, Br12c8 ≠ swn, Br12c8 ≠ wne
B-single: Br11c8 = sw
whip[1]: Pr11c8{sw .} ==> Br10c7 ≠ nw, Br10c7 ≠ se, Br10c7 ≠ esw, Br10c7 ≠ nes, Br10c8 ≠ se, Br10c8 ≠ sw, Br10c8 ≠ esw, Br10c8 ≠ swn, Br10c8 ≠ nes, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ w, Br10c8 ≠ s, Br10c8 ≠ ns
whip[1]: Br10c7{wne .} ==> Nr10c7 ≠ 0
whip[1]: Pr12c9{sw .} ==> Br11c9 ≠ nw, Br11c9 ≠ ew, Br11c9 ≠ sw, Br12c9 ≠ nw, Br12c9 ≠ se, Br12c9 ≠ swn, Br12c9 ≠ wne, Br12c9 ≠ o, Br12c9 ≠ e, Br12c9 ≠ s
whip[1]: Br12c9{nes .} ==> Nr12c9 ≠ 0
whip[1]: Br12c8{nes .} ==> Pr13c8 ≠ ne, Pr13c8 ≠ ns, Pr13c8 ≠ nw, Nr12c8 ≠ 0
whip[1]: Br12c7{sw .} ==> Pr12c7 ≠ ne, Pr12c7 ≠ se, Pr12c7 ≠ ew, Nr12c7 ≠ 3
whip[1]: Br11c7{wne .} ==> Nr11c7 ≠ 0
whip[1]: Pr11c9{ne .} ==> Br10c8 ≠ n, Br10c8 ≠ o, Br10c8 ≠ w, Br10c8 ≠ nw, Br10c9 ≠ ne, Br10c9 ≠ ns, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br11c9 ≠ se
B-single: Br10c9 = sw
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ esw, Br9c8 ≠ nes, Br9c9 ≠ se, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ nes, Br9c8 ≠ o, Br9c8 ≠ n, Br9c8 ≠ w, Br9c9 ≠ s, Br9c9 ≠ ns
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 0
whip[1]: Pr11c10{sw .} ==> Br10c10 ≠ nw, Br10c10 ≠ ew, Br10c10 ≠ sw, Br10c10 ≠ esw, Br10c10 ≠ swn, Br10c10 ≠ wne, Br11c10 ≠ nw, Br11c10 ≠ se, Br11c10 ≠ swn, Br11c10 ≠ wne, Br10c10 ≠ w, Br11c10 ≠ o, Br11c10 ≠ e, Br11c10 ≠ s
whip[1]: Br11c10{nes .} ==> Nr11c10 ≠ 0
whip[1]: Br10c8{wne .} ==> Nr10c8 ≠ 0
whip[1]: Pr9c10{se .} ==> Br9c9 ≠ w, Br9c9 ≠ n, Br9c9 ≠ o, Br8c9 ≠ s, Br8c9 ≠ e, Br8c9 ≠ se, Br8c9 ≠ ew, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c10 ≠ esw, Br9c9 ≠ ne, Br9c9 ≠ nw, Br9c9 ≠ wne
B-single: Br8c10 = nes
P-single: Pr8c10 = ne
P-single: Pr8c11 = sw
w[1]-1-in-r7c11-symmetric-sw-corner ==> Pr7c12 ≠ o
P-single: Pr7c12 = se
whip[1]: Pr8c10{ne .} ==> Br7c10 ≠ w
B-single: Br7c10 = sw
N-single: Nr7c10 = 2
whip[1]: Pr8c11{sw .} ==> Br7c11 ≠ s, Br8c11 ≠ nw, Br8c11 ≠ wne
B-single: Br7c11 = e
whip[1]: Pr8c12{ns .} ==> Br7c12 ≠ nes
whip[1]: Br8c11{ew .} ==> Pr9c12 ≠ nw, Pr9c12 ≠ ew, Pr9c12 ≠ sw, Nr8c11 ≠ 0, Nr8c11 ≠ 3
whip[1]: Pr7c12{se .} ==> Br6c12 ≠ w, Br6c12 ≠ e, Br6c12 ≠ n, Br6c12 ≠ o, Br6c12 ≠ ne, Br6c12 ≠ nw, Br6c12 ≠ ew, Br6c12 ≠ sw, Br6c12 ≠ esw, Br6c12 ≠ swn, Br6c12 ≠ wne, Br7c12 ≠ esw
whip[1]: Br7c12{wne .} ==> Pr7c13 ≠ ns, Pr7c13 ≠ se
whip[1]: Pr7c13{ew .} ==> Br6c13 ≠ esw, Br6c13 ≠ swn, Br7c12 ≠ wne, Br7c13 ≠ w
B-single: Br7c12 = swn
P-single: Pr8c12 = ne
whip[1]: Pr8c12{ne .} ==> Br8c11 ≠ ew, Br8c12 ≠ w, Br8c12 ≠ ew, Br8c12 ≠ sw, Br8c12 ≠ esw
B-single: Br8c11 = w
N-single: Nr8c11 = 1
whip[1]: Pr9c12{se .} ==> Br9c12 ≠ esw, Br9c12 ≠ nes
whip[1]: Br9c12{wne .} ==> Pr9c12 ≠ o, Pr9c13 ≠ ns, Pr9c13 ≠ se, Pr10c12 ≠ o, Pr10c12 ≠ se, Pr10c12 ≠ ew, Pr10c12 ≠ sw
P-single: Pr9c12 = se
whip[1]: Pr9c12{se .} ==> Br9c11 ≠ s, Br9c11 ≠ o, Br8c12 ≠ n, Br8c12 ≠ ne
whip[1]: Br8c12{nes .} ==> Nr8c12 ≠ 1
whip[1]: Br9c11{se .} ==> Nr9c11 ≠ 0, Nr9c11 ≠ 3
whip[1]: Pr10c12{nw .} ==> Br10c11 ≠ ne, Br10c11 ≠ wne, Br10c11 ≠ nes, Br10c12 ≠ nw, Br10c12 ≠ swn, Br10c12 ≠ wne
whip[1]: Pr9c13{ew .} ==> Br8c13 ≠ esw, Br8c13 ≠ swn, Br9c12 ≠ wne, Br9c13 ≠ nw, Br9c13 ≠ ew, Br9c13 ≠ sw, Br9c13 ≠ esw, Br9c13 ≠ swn, Br9c13 ≠ wne, Br9c13 ≠ w
B-single: Br9c12 = swn
P-single: Pr10c12 = ne
whip[1]: Pr10c12{ne .} ==> Br10c12 ≠ o, Br10c11 ≠ n, Br9c11 ≠ se, Br10c11 ≠ e, Br10c11 ≠ ns, Br10c11 ≠ nw, Br10c11 ≠ se, Br10c11 ≠ ew, Br10c11 ≠ esw, Br10c11 ≠ swn, Br10c12 ≠ e, Br10c12 ≠ s, Br10c12 ≠ w, Br10c12 ≠ se, Br10c12 ≠ ew, Br10c12 ≠ sw, Br10c12 ≠ esw
B-single: Br9c11 = e
N-single: Nr9c11 = 1
P-single: Pr10c11 = sw
whip[1]: Pr10c11{sw .} ==> Br10c11 ≠ s, Br10c11 ≠ o, Br10c10 ≠ ns, Br10c10 ≠ s, Br10c10 ≠ e, Br10c10 ≠ n, Br10c10 ≠ o, Br10c10 ≠ se
whip[1]: Br10c10{nes .} ==> Pr11c11 ≠ o, Pr11c11 ≠ se, Pr11c11 ≠ ew, Pr11c11 ≠ sw, Nr10c10 ≠ 0, Nr10c10 ≠ 1
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ ne, Br11c10 ≠ nes, Br11c11 ≠ nw, Br11c11 ≠ swn, Br11c11 ≠ wne
whip[1]: Br10c11{sw .} ==> Pr11c12 ≠ ne, Pr11c12 ≠ ns, Pr11c12 ≠ nw, Nr10c11 ≠ 0, Nr10c11 ≠ 3
whip[1]: Br10c12{nes .} ==> Nr10c12 ≠ 0
whip[1]: Pr10c13{sw .} ==> Br10c13 ≠ nw, Br10c13 ≠ se, Br10c13 ≠ swn, Br10c13 ≠ wne, Br10c13 ≠ o, Br10c13 ≠ e, Br10c13 ≠ s
whip[1]: Br10c13{nes .} ==> Nr10c13 ≠ 0
whip[1]: Br8c13{nes .} ==> Pr8c13 ≠ sw, Pr8c14 ≠ o, Pr8c14 ≠ ne, Pr8c14 ≠ ns, Pr8c14 ≠ nw, Pr8c14 ≠ se, Pr8c14 ≠ ew, Pr9c14 ≠ o, Pr9c14 ≠ ew, Pr9c14 ≠ sw
P-single: Pr8c14 = sw
P-single: Pr8c13 = ew
w[1]-1-in-r7c13-asymmetric-sw-corner ==> Pr7c14 ≠ ew, Pr7c14 ≠ ns
w[1]-1-in-r8c14-asymmetric-nw-corner ==> Pr9c15 ≠ ew, Pr9c15 ≠ ns
w[1]-1-in-r7c13-asymmetric-se-corner ==> Pr7c13 ≠ ew
P-single: Pr7c13 = nw
whip[1]: Pr8c14{sw .} ==> Br8c14 ≠ s, Br8c14 ≠ e, Br8c14 ≠ n, Br7c14 ≠ ns, Br7c14 ≠ w, Br7c14 ≠ s, Br7c13 ≠ e, Br7c13 ≠ n, Br7c14 ≠ nw, Br7c14 ≠ se, Br7c14 ≠ ew, Br7c14 ≠ sw, Br7c14 ≠ esw, Br7c14 ≠ swn, Br7c14 ≠ wne, Br7c14 ≠ nes
B-single: Br7c13 = s
P-single: Pr7c14 = ne
B-single: Br8c14 = w
P-single: Pr8c15 = ne
P-single: Pr9c15 = se
whip[1]: Pr7c14{ne .} ==> Br7c14 ≠ o, Br6c14 ≠ n, Br6c14 ≠ o, Br6c13 ≠ nes, Br6c14 ≠ e, Br6c14 ≠ s, Br6c14 ≠ w, Br6c14 ≠ ne, Br6c14 ≠ ns, Br6c14 ≠ nw, Br6c14 ≠ se, Br6c14 ≠ ew, Br6c14 ≠ wne, Br6c14 ≠ nes, Br7c14 ≠ e
B-single: Br6c13 = wne
P-single: Pr5c12 = se
P-single: Pr6c13 = se
P-single: Pr6c14 = sw
whip[1]: Pr5c12{se .} ==> Br5c11 ≠ s, Br4c12 ≠ w, Br4c11 ≠ ew, Br4c12 ≠ ew, Br4c12 ≠ sw, Br4c12 ≠ esw, Br5c12 ≠ ne, Br5c12 ≠ ns, Br5c12 ≠ ew, Br5c12 ≠ sw
B-single: Br5c12 = nw
P-single: Pr5c13 = ew
H-single: Hr5c13 = 1
V-single: Vr4c13 = 0
w[1]-3-in-r4c13-closed-se-corner ==> Pr4c13 ≠ se, Pr4c13 ≠ nw, Pr4c13 ≠ o
P-single: Pr6c12 = nw
B-single: Br5c11 = se
N-single: Nr5c11 = 2
no-horizontal-line-{r4 r5}c14 ==> Ir4c14 = out
no-horizontal-line-{r3 r4}c14 ==> Ir3c14 = out
no-vertical-line-r3{c13 c14} ==> Ir3c13 = out
horizontal-line-{r3 r4}c13 ==> Ir4c13 = in
whip[1]: Pr5c13{ew .} ==> Br4c12 ≠ se, Br4c12 ≠ nes, Br4c13 ≠ esw, Br4c13 ≠ swn, Br4c13 ≠ wne, Br5c13 ≠ nw, Br5c13 ≠ se, Br5c13 ≠ ew, Br5c13 ≠ sw
B-single: Br4c13 = nes
P-single: Pr4c14 = sw
P-single: Pr5c14 = nw
whip[1]: Pr4c14{sw .} ==> Br4c14 ≠ ns, Br4c14 ≠ ne, Br3c14 ≠ ns, Br3c14 ≠ w, Br3c14 ≠ s, Br3c13 ≠ ne, Br3c13 ≠ w, Br3c13 ≠ e, Br3c13 ≠ n, Br3c13 ≠ o, Br3c13 ≠ nw, Br3c13 ≠ se, Br3c13 ≠ ew, Br3c13 ≠ esw, Br3c13 ≠ wne, Br3c13 ≠ nes, Br3c14 ≠ nw, Br3c14 ≠ se, Br3c14 ≠ ew, Br3c14 ≠ sw, Br3c14 ≠ esw, Br3c14 ≠ swn, Br3c14 ≠ wne, Br3c14 ≠ nes, Br4c14 ≠ nw, Br4c14 ≠ se
whip[1]: Br4c14{sw .} ==> Pr4c15 ≠ nw, Pr4c15 ≠ ew
whip[1]: Pr4c15{se .} ==> Vr4c15 ≠ 0, Br3c15 ≠ ne, Br3c15 ≠ sw, Br3c15 ≠ esw, Br3c15 ≠ swn, Br4c14 ≠ sw, Br4c15 ≠ ne, Br4c15 ≠ ns, Br4c15 ≠ se, Br4c15 ≠ nes, Br3c15 ≠ o, Br3c15 ≠ n, Br3c15 ≠ e, Br4c15 ≠ o, Br4c15 ≠ n, Br4c15 ≠ e, Br4c15 ≠ s
V-single: Vr4c15 = 1
B-single: Br4c14 = ew
vertical-line-r4{c14 c15} ==> Ir4c15 = in
same-colour-in-{r4 r5}c15 ==> Hr5c15 = 0
different-colours-in-r4{c15 c16} ==> Hr4c16 = 1

LOOP[6]: Vr4c16-Vr5c16-Hr6c15-Vr5c15-Vr4c15- ==> Hr4c15 = 0
no-horizontal-line-{r3 r4}c15 ==> Ir3c15 = in
different-colours-in-r3{c15 c16} ==> Hr3c16 = 1
different-colours-in-r3{c14 c15} ==> Hr3c15 = 1

LOOP[8]: Vr3c15-Vr4c15-Vr5c15-Hr6c15-Vr5c16-Vr4c16-Vr3c16- ==> Hr3c15 = 0
no-horizontal-line-{r2 r3}c15 ==> Ir2c15 = in
different-colours-in-r2{c15 c16} ==> Hr2c16 = 1
whip[1]: Hr5c15{0 .} ==> Pr5c16 ≠ nw, Pr5c15 ≠ ne, Br4c15 ≠ sw, Br4c15 ≠ esw, Br4c15 ≠ swn, Br5c15 ≠ swn, Br5c15 ≠ wne, Br5c15 ≠ nes
P-single: Pr5c15 = ns
P-single: Pr5c16 = ns
B-single: Br5c15 = esw
P-single: Pr6c16 = nw
P-single: Pr6c15 = ne
whip[1]: Pr5c15{ns .} ==> Br5c14 ≠ n, Br5c14 ≠ o, Br5c14 ≠ s, Br5c14 ≠ w, Br5c14 ≠ ne, Br5c14 ≠ ns, Br5c14 ≠ nw, Br5c14 ≠ sw, Br5c14 ≠ swn, Br5c14 ≠ wne, Br5c14 ≠ nes
whip[1]: Br5c14{esw .} ==> Nr5c14 ≠ 0
whip[1]: Pr5c16{ns .} ==> Br4c15 ≠ w, Br4c15 ≠ nw
whip[1]: Br4c15{wne .} ==> Pr4c16 ≠ o, Pr4c16 ≠ nw, Nr4c15 ≠ 0, Nr4c15 ≠ 1
whip[1]: Pr4c16{sw .} ==> Br3c15 ≠ nw, Br3c15 ≠ se, Br3c15 ≠ nes, Br3c15 ≠ w
whip[1]: Br3c15{wne .} ==> Nr3c15 ≠ 0
whip[1]: Pr6c16{nw .} ==> Br6c15 ≠ s, Br6c15 ≠ e, Br6c15 ≠ o, Br6c15 ≠ w, Br6c15 ≠ ne, Br6c15 ≠ se, Br6c15 ≠ ew, Br6c15 ≠ sw, Br6c15 ≠ esw, Br6c15 ≠ wne, Br6c15 ≠ nes
whip[1]: Br6c15{swn .} ==> Pr7c16 ≠ ns, Pr7c16 ≠ nw, Nr6c15 ≠ 0
whip[1]: Pr7c16{sw .} ==> Br7c15 ≠ nw, Br7c15 ≠ se, Br7c15 ≠ ew, Br7c15 ≠ esw, Br7c15 ≠ swn, Br7c15 ≠ n, Br7c15 ≠ e, Br7c15 ≠ ns
whip[1]: Pr6c15{ne .} ==> Br5c14 ≠ se, Br5c14 ≠ esw, Br6c14 ≠ esw, Br6c14 ≠ swn, Br6c15 ≠ nw, Br6c15 ≠ swn
B-single: Br6c14 = sw
N-single: Nr6c14 = 2
whip[1]: Pr7c15{sw .} ==> Br7c15 ≠ wne, Br7c15 ≠ o, Br7c15 ≠ s
whip[1]: Br7c15{nes .} ==> Nr7c15 ≠ 0
whip[1]: Br6c15{ns .} ==> Nr6c15 ≠ 3
whip[1]: Br5c14{ew .} ==> Nr5c14 ≠ 3
whip[1]: Vr4c16{1 .} ==> Br4c16 ≠ o
B-single: Br4c16 = w
whip[1]: Hr4c15{0 .} ==> Pr4c16 ≠ sw, Pr4c15 ≠ se, Br3c15 ≠ s, Br3c15 ≠ ns, Br4c15 ≠ wne
P-single: Pr4c15 = ns
P-single: Pr4c16 = ns
B-single: Br4c15 = ew
N-single: Nr4c15 = 2
whip[1]: Pr4c15{ns .} ==> Br3c14 ≠ n, Br3c14 ≠ o
whip[1]: Br3c14{ne .} ==> Pr3c14 ≠ ns, Pr3c14 ≠ se, Pr3c15 ≠ o, Pr3c15 ≠ ne, Pr3c15 ≠ nw, Nr3c14 ≠ 0, Nr3c14 ≠ 3, Pr3c14 ≠ sw, Pr3c15 ≠ ew
whip[1]: Br3c15{wne .} ==> Pr3c16 ≠ o, Pr3c16 ≠ nw, Nr3c15 ≠ 1
w[1]-1-in-r2c15-asymmetric-se-corner ==> Pr2c15 ≠ sw, Pr2c15 ≠ ew, Pr2c15 ≠ ns, Pr2c15 ≠ ne
whip[1]: Pr1c15{ew .} ==> Hr1c15 ≠ 0, Br1c14 ≠ sw, Br1c15 ≠ sw, Br1c14 ≠ ne, Br1c15 ≠ o, Br1c15 ≠ s, Br1c15 ≠ w
H-single: Hr1c15 = 1
horizontal-line-{r0 r1}c15 ==> Ir1c15 = in
same-colour-in-{r1 r2}c15 ==> Hr2c15 = 0
different-colours-in-r1{c15 c16} ==> Hr1c16 = 1
whip[1]: Hr1c15{1 .} ==> Br0c15 ≠ o, Pr1c16 ≠ o
P-single: Pr1c16 = sw
B-single: Br0c15 = s
whip[1]: Hr2c15{0 .} ==> Pr2c16 ≠ nw, Pr2c16 ≠ sw, Pr2c15 ≠ se, Br1c15 ≠ nes, Br2c15 ≠ n
whip[1]: Br1c15{wne .} ==> Pr2c16 ≠ o, Nr1c15 ≠ 0, Nr1c15 ≠ 1
P-single: Pr2c16 = ns
w[1]-1-in-r2c15-asymmetric-ne-corner ==> Pr3c15 ≠ se, Pr3c15 ≠ ns
P-single: Pr3c15 = sw
H-single: Hr3c14 = 1
V-single: Vr2c15 = 0
w[1]-1-in-r2c14-asymmetric-se-corner ==> Pr2c14 ≠ ew, Pr2c14 ≠ ns
no-vertical-line-r2{c14 c15} ==> Ir2c14 = in
whip[1]: Pr2c16{ns .} ==> Br2c15 ≠ s, Br2c15 ≠ w
B-single: Br2c15 = e
P-single: Pr3c16 = ns
whip[1]: Pr3c16{ns .} ==> Br3c15 ≠ wne
B-single: Br3c15 = ew
N-single: Nr3c15 = 2
whip[1]: Pr3c15{sw .} ==> Br3c14 ≠ e, Br2c14 ≠ w, Br2c14 ≠ e, Br2c14 ≠ n
B-single: Br2c14 = s
H-single: Hr2c14 = 0
V-single: Vr2c14 = 0
P-single: Pr1c14 = se
H-single: Hr1c13 = 0
H-single: Hr1c14 = 1
V-single: Vr1c14 = 1
P-single: Pr2c14 = nw
H-single: Hr2c13 = 1
P-single: Pr2c15 = o
V-single: Vr1c15 = 0
P-single: Pr3c14 = ew
H-single: Hr3c13 = 1
B-single: Br3c14 = ne
N-single: Nr3c14 = 2

LOOP[16]: Hr2c13-Vr1c14-Hr1c14-Hr1c15-Vr1c16-Vr2c16-Vr3c16-Vr4c16-Vr5c16-Hr6c15-Vr5c15-Vr4c15-Vr3c15-Hr3c14-Hr3c13- ==> Vr2c13 = 0
horizontal-line-{r2 r3}c13 ==> Ir2c13 = in
no-vertical-line-r2{c12 c13} ==> Ir2c12 = in
no-vertical-line-r2{c11 c12} ==> Ir2c11 = in
horizontal-line-{r2 r3}c11 ==> Ir3c11 = out
vertical-line-r3{c11 c12} ==> Ir3c12 = in
horizontal-line-{r1 r2}c13 ==> Ir1c13 = out
vertical-line-r1{c13 c14} ==> Ir1c14 = in
same-colour-in-{r3 r4}c12 ==> Hr4c12 = 0
w[1]-3-in-r3c11-isolated-at-se-corner ==> Hr4c11 = 1
w[1]-3-in-r3c11-closed-se-corner ==> Pr3c11 ≠ se
different-colours-in-r3{c12 c13} ==> Hr3c13 = 1
whip[1]: Hr2c14{0 .} ==> Br1c14 ≠ ns, Br1c14 ≠ se
whip[1]: Vr2c14{0 .} ==> Br2c13 ≠ e, Br2c13 ≠ ne, Br2c13 ≠ se, Br2c13 ≠ ew, Br2c13 ≠ esw, Br2c13 ≠ wne, Br2c13 ≠ nes
whip[1]: Pr1c14{se .} ==> Br1c13 ≠ w, Br1c13 ≠ s, Br1c13 ≠ ns, Br1c13 ≠ nw, Br1c13 ≠ wne, Br1c13 ≠ nes, Br1c14 ≠ ew
B-single: Br1c14 = nw
P-single: Pr1c15 = ew
whip[1]: Pr1c15{ew .} ==> Br1c15 ≠ wne
B-single: Br1c15 = ne
N-single: Nr1c15 = 2
whip[1]: Br1c13{ew .} ==> Pr1c13 ≠ se, Pr1c13 ≠ ew, Nr1c13 ≠ 1, Nr1c13 ≠ 3
N-single: Nr1c13 = 2
P-single: Pr1c13 = o
H-single: Hr1c12 = 0
V-single: Vr1c13 = 0
w[1]-2-in-r1c12-open-ne-corner ==> Hr2c12 = 1, Vr1c12 = 1, Hr2c11 = 0
P-single: Pr2c12 = ne
w[1]-1-in-r2c12-asymmetric-nw-corner ==> Pr3c13 ≠ ns, Pr3c13 ≠ ne
no-horizontal-line-{r1 r2}c11 ==> Ir1c11 = in
vertical-line-r1{c11 c12} ==> Ir1c12 = out
different-colours-in-{r0 r1}c11 ==> Hr1c11 = 1
whip[1]: Pr1c13{o .} ==> Br1c12 ≠ ne, Br1c12 ≠ ns, Br1c12 ≠ nw, Br1c12 ≠ se, Br1c12 ≠ ew, Br1c13 ≠ ew
B-single: Br1c13 = se
P-single: Pr2c13 = ew
B-single: Br1c12 = sw
P-single: Pr1c12 = sw
whip[1]: Pr2c13{ew .} ==> Br2c13 ≠ w, Br2c13 ≠ s, Br2c13 ≠ o, Br2c12 ≠ e, Br2c13 ≠ nw, Br2c13 ≠ sw, Br2c13 ≠ swn
B-single: Br2c12 = n
whip[1]: Br2c13{ns .} ==> Nr2c13 ≠ 0, Nr2c13 ≠ 3
whip[1]: Pr1c12{sw .} ==> Br1c11 ≠ ns, Br1c11 ≠ nw, Br1c11 ≠ se, Br1c11 ≠ ew, Br1c11 ≠ sw
B-single: Br1c11 = ne
V-single: Vr1c11 = 0
P-single: Pr1c11 = ew
H-single: Hr1c10 = 1
horizontal-line-{r0 r1}c10 ==> Ir1c10 = in
different-colours-in-r1{c9 c10} ==> Hr1c10 = 1
whip[1]: Vr1c11{0 .} ==> Br1c10 ≠ e, Br1c10 ≠ ne, Br1c10 ≠ se, Br1c10 ≠ ew, Br1c10 ≠ esw, Br1c10 ≠ wne, Br1c10 ≠ nes
whip[1]: Pr1c11{ew .} ==> Br1c10 ≠ w, Br1c10 ≠ s, Br1c10 ≠ o, Br1c10 ≠ sw
whip[1]: Br1c10{swn .} ==> Pr1c10 ≠ o, Pr1c10 ≠ sw, Nr1c10 ≠ 0
whip[1]: Pr1c10{ew .} ==> Br1c9 ≠ sw, Br1c9 ≠ wne, Br1c9 ≠ nes, Br1c9 ≠ o, Br1c9 ≠ s, Br1c9 ≠ w, Br1c9 ≠ ne
whip[1]: Br1c9{swn .} ==> Nr1c9 ≠ 0
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Vr1c10{1 .} ==> Pr1c10 ≠ ew, Pr2c10 ≠ o, Pr2c10 ≠ se, Pr2c10 ≠ ew, Pr2c10 ≠ sw, Br1c9 ≠ n, Br1c9 ≠ ns, Br1c9 ≠ nw, Br1c9 ≠ swn, Br1c10 ≠ n, Br1c10 ≠ ns
P-single: Pr1c10 = se
whip[1]: Br1c10{swn .} ==> Nr1c10 ≠ 1
whip[1]: Br1c9{esw .} ==> Pr1c9 ≠ se, Pr1c9 ≠ ew
whip[1]: Pr1c9{sw .} ==> Br1c8 ≠ esw, Br1c8 ≠ swn
whip[1]: Br1c8{nes .} ==> Pr1c8 ≠ o, Pr1c8 ≠ sw, Pr1c9 ≠ o, Pr2c9 ≠ ew, Pr2c9 ≠ sw
P-single: Pr1c9 = sw
whip[1]: Pr1c9{sw .} ==> Br1c9 ≠ e, Br1c9 ≠ se
whip[1]: Br1c9{esw .} ==> Nr1c9 ≠ 1
whip[1]: Pr2c9{ns .} ==> Br1c8 ≠ nes, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ swn, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c9 ≠ s, Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ swn, Br2c9 ≠ wne, Br2c8 ≠ n, Br2c9 ≠ o, Br2c9 ≠ e
B-single: Br1c8 = wne
P-single: Pr1c8 = se
whip[1]: Pr1c8{se .} ==> Br1c7 ≠ w, Br1c7 ≠ s, Br1c7 ≠ n, Br1c7 ≠ o, Br1c7 ≠ ne, Br1c7 ≠ ns, Br1c7 ≠ nw, Br1c7 ≠ sw, Br1c7 ≠ swn, Br1c7 ≠ wne, Br1c7 ≠ nes
whip[1]: Br1c7{esw .} ==> Pr1c7 ≠ se, Pr1c7 ≠ ew, Nr1c7 ≠ 0
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ esw, Br1c6 ≠ swn
whip[1]: Br1c6{nes .} ==> Pr1c6 ≠ o, Pr1c6 ≠ sw, Pr1c7 ≠ o
P-single: Pr1c7 = sw
whip[1]: Pr1c7{sw .} ==> Br1c7 ≠ e, Br1c7 ≠ se
whip[1]: Br1c7{esw .} ==> Nr1c7 ≠ 1
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ sw, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c5 ≠ o, Br1c5 ≠ s, Br1c5 ≠ w, Br1c5 ≠ ne
whip[1]: Br1c5{swn .} ==> Nr1c5 ≠ 0
whip[1]: Pr2c8{nw .} ==> Br2c7 ≠ ne, Br2c7 ≠ sw
whip[1]: Br2c9{nes .} ==> Nr2c9 ≠ 0
whip[1]: Pr2c10{nw .} ==> Br2c9 ≠ ne, Br2c9 ≠ nes, Br2c10 ≠ nw, Br2c10 ≠ swn, Br2c10 ≠ wne
whip[1]: Br2c10{sw .} ==> Nr2c10 ≠ 3
whip[1]: Pr2c11{sw .} ==> Br2c10 ≠ ew, Br2c11 ≠ swn, Br2c10 ≠ n, Br2c10 ≠ e, Br2c10 ≠ ns, Br2c11 ≠ ns
whip[1]: Br2c11{sw .} ==> Nr2c11 ≠ 3
whip[1]: Hr1c12{0 .} ==> Br0c12 ≠ s
B-single: Br0c12 = o
whip[1]: Hr1c11{1 .} ==> Br0c11 ≠ o
B-single: Br0c11 = s
whip[1]: Pr3c13{se .} ==> Br3c13 ≠ ns, Br3c13 ≠ sw
whip[1]: Br3c13{swn .} ==> Nr3c13 ≠ 0, Nr3c13 ≠ 2
whip[1]: Hr1c13{0 .} ==> Br0c13 ≠ s
B-single: Br0c13 = o
whip[1]: Hr1c14{1 .} ==> Br0c14 ≠ o
B-single: Br0c14 = s
whip[1]: Pr3c14{ew .} ==> Br3c13 ≠ s, Br2c13 ≠ n
B-single: Br2c13 = ns
N-single: Nr2c13 = 2
P-single: Pr3c13 = se
B-single: Br3c13 = swn
N-single: Nr3c13 = 3
P-single: Pr4c13 = ne
whip[1]: Pr3c13{se .} ==> Br3c12 ≠ w, Br3c12 ≠ sw
whip[1]: Br3c12{esw .} ==> Nr3c12 ≠ 1
whip[1]: Pr4c13{ne .} ==> Br3c12 ≠ esw, Br4c12 ≠ ns
B-single: Br4c12 = s
N-single: Nr4c12 = 1
P-single: Pr4c12 = nw
B-single: Br3c12 = ew
N-single: Nr3c12 = 2
whip[1]: Pr4c12{nw .} ==> Br3c11 ≠ wne, Br4c11 ≠ w
B-single: Br4c11 = nw
N-single: Nr4c11 = 2
P-single: Pr4c11 = se
B-single: Br3c11 = nes
whip[1]: Pr4c11{se .} ==> Br3c10 ≠ e, Br3c10 ≠ ew
whip[1]: Pr3c11{ew .} ==> Br2c10 ≠ o, Br2c10 ≠ w
whip[1]: Br2c10{sw .} ==> Pr3c10 ≠ ns, Pr3c10 ≠ nw, Nr2c10 ≠ 0
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ esw
whip[1]: Br2c9{sw .} ==> Nr2c9 ≠ 3
whip[1]: Vr1c16{1 .} ==> Br1c16 ≠ o
B-single: Br1c16 = w
whip[1]: Vr3c16{1 .} ==> Br3c16 ≠ o
B-single: Br3c16 = w
whip[1]: Vr2c16{1 .} ==> Br2c16 ≠ o
B-single: Br2c16 = w
whip[1]: Pr5c14{nw .} ==> Br5c13 ≠ ne, Br5c14 ≠ ew
B-single: Br5c14 = e
N-single: Nr5c14 = 1
B-single: Br5c13 = ns
whip[1]: Pr6c12{nw .} ==> Br6c12 ≠ ns, Br6c12 ≠ nes
whip[1]: Br6c12{se .} ==> Nr6c12 ≠ 0, Nr6c12 ≠ 3
whip[1]: Pr6c13{se .} ==> Br6c12 ≠ s
B-single: Br6c12 = se
N-single: Nr6c12 = 2
whip[1]: Br7c14{ne .} ==> Nr7c14 ≠ 0, Nr7c14 ≠ 3
whip[1]: Pr8c15{ne .} ==> Br7c14 ≠ n, Br7c15 ≠ w, Br7c15 ≠ ne, Br7c15 ≠ nes, Br8c15 ≠ esw, Br8c15 ≠ swn, Br8c15 ≠ wne
B-single: Br8c15 = nes
P-single: Pr8c16 = sw
P-single: Pr9c16 = nw
B-single: Br7c15 = sw
N-single: Nr7c15 = 2
P-single: Pr7c16 = o
P-single: Pr7c15 = sw
B-single: Br7c14 = ne
N-single: Nr7c14 = 2
whip[1]: Pr9c16{nw .} ==> Br9c15 ≠ o, Br9c15 ≠ w, Br9c15 ≠ se, Br9c15 ≠ esw, Br9c15 ≠ nes
whip[1]: Br9c15{nw .} ==> Pr10c16 ≠ nw, Pr10c15 ≠ ne, Pr10c15 ≠ ew, Nr9c15 ≠ 0, Nr9c15 ≠ 3
P-single: Pr10c16 = o
w[1]-1-in-r10c15-symmetric-ne-corner ==> Pr11c15 ≠ sw, Pr11c15 ≠ o
whip[1]: Pr10c16{o .} ==> Br10c15 ≠ n
whip[1]: Pr11c15{ew .} ==> Br11c14 ≠ sw, Br11c14 ≠ wne, Br11c14 ≠ nes, Br11c14 ≠ o, Br11c14 ≠ s, Br11c14 ≠ w, Br11c14 ≠ ne
whip[1]: Br11c14{swn .} ==> Nr11c14 ≠ 0
whip[1]: Pr10c15{sw .} ==> Br9c14 ≠ nw, Br10c14 ≠ sw, Br10c14 ≠ o, Br10c14 ≠ s, Br10c14 ≠ w
whip[1]: Br10c14{nes .} ==> Nr10c14 ≠ 0
whip[1]: Pr7c16{o .} ==> Br6c15 ≠ ns
B-single: Br6c15 = n
N-single: Nr6c15 = 1
whip[1]: Pr9c15{se .} ==> Br9c15 ≠ n, Br9c14 ≠ ne, Br9c14 ≠ ns, Br9c14 ≠ sw
B-single: Br9c15 = nw
N-single: Nr9c15 = 2
whip[1]: Pr10c15{nw .} ==> Br10c14 ≠ ne, Br10c14 ≠ wne, Br10c14 ≠ nes
whip[1]: Pr9c14{nw .} ==> Br9c13 ≠ ne, Br9c13 ≠ nes, Br9c13 ≠ o, Br9c13 ≠ s
whip[1]: Br9c13{se .} ==> Nr9c13 ≠ 0, Nr9c13 ≠ 3
whip[1]: Pr8c13{ew .} ==> Br8c12 ≠ nes, Br8c13 ≠ wne
B-single: Br8c13 = nes
P-single: Pr10c15 = nw
P-single: Pr9c13 = ew
P-single: Pr9c14 = nw
B-single: Br8c12 = ns
N-single: Nr8c12 = 2
w[1]-1-in-r10c15-symmetric-nw-corner ==> Pr11c16 ≠ o
P-single: Pr11c16 = sw
H-single: Hr11c15 = 1
V-single: Vr11c16 = 1
vertical-line-r11{c15 c16} ==> Ir11c15 = in
whip[1]: Pr10c15{nw .} ==> Br10c14 ≠ e, Br9c14 ≠ ew, Br10c14 ≠ se, Br10c14 ≠ ew, Br10c14 ≠ esw, Br10c15 ≠ w
B-single: Br10c15 = s
B-single: Br9c14 = se
whip[1]: Pr10c14{ew .} ==> Br9c13 ≠ se, Br10c13 ≠ sw, Br10c13 ≠ nes, Br9c13 ≠ e, Br10c13 ≠ w, Br10c13 ≠ ne
whip[1]: Pr11c15{ew .} ==> Br11c15 ≠ sw, Br11c15 ≠ o, Br11c15 ≠ s, Br11c15 ≠ w
whip[1]: Br11c15{nes .} ==> Pr12c16 ≠ o, Pr12c16 ≠ sw, Pr12c15 ≠ ne, Nr11c15 ≠ 0, Nr11c15 ≠ 1
whip[1]: Pr13c15{ew .} ==> Br12c15 ≠ sw, Br13c14 ≠ sw, Br13c14 ≠ wne, Br13c14 ≠ nes, Br12c15 ≠ ne, Br13c14 ≠ o, Br13c14 ≠ s, Br13c14 ≠ w, Br13c14 ≠ ne
whip[1]: Br13c14{swn .} ==> Nr13c14 ≠ 0
whip[1]: Vr11c16{1 .} ==> Br11c16 ≠ o
B-single: Br11c16 = w
whip[1]: Br9c9{ew .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ se, Pr9c9 ≠ ew, Nr9c9 ≠ 0, Nr9c9 ≠ 3
whip[1]: Br8c9{w .} ==> Nr8c9 ≠ 2, Nr8c9 ≠ 3
whip[1]: Pr12c10{sw .} ==> Br12c10 ≠ nw, Br12c10 ≠ se, Br12c10 ≠ swn, Br12c10 ≠ wne, Br12c10 ≠ o, Br12c10 ≠ e, Br12c10 ≠ s
whip[1]: Br12c10{nes .} ==> Nr12c10 ≠ 0
whip[1]: Hr11c13{0 .} ==> Br11c13 ≠ nes, Pr11c13 ≠ ne, Pr11c13 ≠ se, Pr11c13 ≠ ew, Pr11c14 ≠ nw, Pr11c14 ≠ ew, Pr11c14 ≠ sw, Br10c13 ≠ ns, Br10c13 ≠ esw, Br11c13 ≠ n, Br11c13 ≠ ne, Br11c13 ≠ ns, Br11c13 ≠ nw, Br11c13 ≠ swn, Br11c13 ≠ wne
whip[1]: Br10c13{ew .} ==> Nr10c13 ≠ 3
whip[1]: Vr10c13{1 .} ==> Br10c13 ≠ n, Pr10c13 ≠ ew, Pr11c13 ≠ o, Pr11c13 ≠ sw, Br10c12 ≠ n, Br10c12 ≠ ns
P-single: Pr10c13 = sw
B-single: Br10c13 = ew
N-single: Nr10c13 = 2
P-single: Pr10c14 = se
whip[1]: Pr10c13{sw .} ==> Br9c13 ≠ ns
B-single: Br9c13 = n
N-single: Nr9c13 = 1
whip[1]: Pr10c14{se .} ==> Br10c14 ≠ n, Br10c14 ≠ ns
whip[1]: Br10c14{swn .} ==> Nr10c14 ≠ 1
whip[1]: Pr11c14{ns .} ==> Br11c14 ≠ nw, Br11c14 ≠ se, Br11c14 ≠ swn, Br11c14 ≠ e
whip[1]: Br10c12{nes .} ==> Nr10c12 ≠ 1
whip[1]: Pr11c13{nw .} ==> Br11c12 ≠ w, Br11c12 ≠ ne, Br11c12 ≠ sw, Br11c12 ≠ wne, Br11c12 ≠ nes, Br11c12 ≠ o, Br11c12 ≠ s
whip[1]: Br11c12{swn .} ==> Nr11c12 ≠ 0
whip[1]: Vr13c16{1 .} ==> Br13c15 ≠ w, Br13c16 ≠ o, Pr13c16 ≠ o, Pr13c16 ≠ nw, Pr14c16 ≠ o, Pr14c16 ≠ sw, Br13c15 ≠ n, Br13c15 ≠ s
B-single: Br13c15 = e
H-single: Hr13c15 = 0
P-single: Pr13c16 = ns
V-single: Vr12c16 = 1
P-single: Pr14c16 = ns
P-single: Pr13c15 = nw
H-single: Hr13c14 = 1
V-single: Vr12c15 = 1
B-single: Br13c16 = w
horizontal-line-{r12 r13}c14 ==> Ir12c14 = out
vertical-line-r12{c14 c15} ==> Ir12c15 = in
same-colour-in-{r11 r12}c15 ==> Hr12c15 = 0
whip[1]: Hr13c15{0 .} ==> Br12c15 ≠ ns, Br12c15 ≠ se
whip[1]: Br12c15{ew .} ==> Pr12c15 ≠ ew
P-single: Pr12c15 = ns
H-single: Hr12c14 = 0
V-single: Vr11c15 = 1
no-horizontal-line-{r10 r11}c14 ==> Ir11c14 = out
different-colours-in-r11{c13 c14} ==> Hr11c14 = 1
whip[1]: Pr12c15{ns .} ==> Br11c14 ≠ n, Br11c14 ≠ ns, Br11c14 ≠ esw, Br11c15 ≠ ne, Br11c15 ≠ nes, Br12c14 ≠ ne, Br12c14 ≠ ns, Br12c14 ≠ nw, Br12c14 ≠ sw, Br12c15 ≠ nw
B-single: Br12c15 = ew
P-single: Pr12c16 = ns
B-single: Br11c15 = wne
N-single: Nr11c15 = 3
P-single: Pr11c15 = se
B-single: Br11c14 = ew
N-single: Nr11c14 = 2
P-single: Pr11c14 = ns
P-single: Pr12c14 = nw
H-single: Hr12c13 = 1
V-single: Vr12c14 = 0

LOOP[24]: Hr12c13-Vr11c14-Vr10c14-Hr10c14-Vr9c15-Hr9c15-Vr8c16-Hr8c15-Vr7c15-Hr7c14-Vr6c14-Hr6c13-Vr6c13-Hr7c12-Vr7c12-Hr8c12-Hr8c13-Vr8c14-Hr9c13-Hr9c12-Vr9c12-Hr10c12-Vr10c13- ==> Vr11c13 = 0
no-vertical-line-r11{c12 c13} ==> Ir11c12 = in
no-vertical-line-r12{c13 c14} ==> Ir12c13 = out
different-colours-in-{r12 r13}c13 ==> Hr13c13 = 1
different-colours-in-{r10 r11}c12 ==> Hr11c12 = 1
whip[1]: Pr11c15{se .} ==> Br10c14 ≠ swn
B-single: Br10c14 = nw
N-single: Nr10c14 = 2
whip[1]: Pr11c14{ns .} ==> Br11c13 ≠ o, Br11c13 ≠ s, Br11c13 ≠ w, Br11c13 ≠ sw
whip[1]: Br11c13{esw .} ==> Nr11c13 ≠ 0
whip[1]: Pr12c14{nw .} ==> Br11c13 ≠ e, Br11c13 ≠ ew, Br12c13 ≠ ne, Br12c13 ≠ se, Br12c13 ≠ ew, Br12c13 ≠ sw, Br12c14 ≠ ew
B-single: Br12c14 = se
whip[1]: Pr13c14{ew .} ==> Br13c13 ≠ sw, Br13c13 ≠ wne, Br13c13 ≠ nes, Br13c14 ≠ se, Br13c14 ≠ ew, Br13c14 ≠ esw, Br13c13 ≠ o, Br13c13 ≠ s, Br13c13 ≠ w, Br13c13 ≠ ne, Br13c14 ≠ e
whip[1]: Br13c13{swn .} ==> Nr13c13 ≠ 0
whip[1]: Br12c13{nw .} ==> Pr12c13 ≠ ns, Pr12c13 ≠ sw
whip[1]: Pr12c13{ew .} ==> Br11c12 ≠ se, Br11c12 ≠ esw, Br12c12 ≠ wne, Br12c12 ≠ nes, Br12c12 ≠ ne
whip[1]: Br11c13{esw .} ==> Nr11c13 ≠ 1
whip[1]: Vr11c13{0 .} ==> Pr11c13 ≠ ns, Pr12c13 ≠ ne, Br11c12 ≠ e, Br11c12 ≠ ew, Br11c13 ≠ esw
P-single: Pr11c13 = nw
B-single: Br11c13 = se
N-single: Nr11c13 = 2
whip[1]: Pr11c13{nw .} ==> Br10c12 ≠ ne
B-single: Br10c12 = nes
N-single: Nr10c12 = 3
whip[1]: Pr11c12{ew .} ==> Br11c11 ≠ sw, Br11c11 ≠ nes, Br11c11 ≠ o, Br11c11 ≠ s, Br11c11 ≠ w, Br11c11 ≠ ne
whip[1]: Br11c11{esw .} ==> Nr11c11 ≠ 0
whip[1]: Pr12c13{ew .} ==> Br12c12 ≠ sw, Br12c12 ≠ o, Br12c12 ≠ s, Br12c12 ≠ w
whip[1]: Br12c12{swn .} ==> Nr12c12 ≠ 0
whip[1]: Hr13c13{1 .} ==> Pr13c13 ≠ ns, Pr13c13 ≠ nw, Pr13c14 ≠ se, Br12c13 ≠ nw, Br13c13 ≠ e, Br13c13 ≠ se, Br13c13 ≠ ew, Br13c13 ≠ esw
P-single: Pr12c13 = ew
H-single: Hr12c12 = 1
V-single: Vr12c13 = 0
w[1]-3-in-r12c11-hit-by-horiz-line-at-ne ==> Vr12c11 = 1, Hr13c11 = 1, Vr11c12 = 0
w[1]-2-in-r13c10-open-ne-corner ==> Hr14c10 = 1, Vr13c10 = 1, Hr14c9 = 0, Vr14c10 = 0
w[1]-2-in-r14c9-open-ne-corner ==> Hr15c9 = 1, Vr14c9 = 1, Hr15c8 = 0, Vr15c9 = 0
w[1]-3-in-r15c9-hit-by-verti-line-at-nw ==> Vr15c10 = 1, Hr16c9 = 1
w[1]-3-in-r15c9-closed-se-corner ==> Pr15c9 ≠ se, Pr15c9 ≠ nw
w[1]-3-in-r15c9-closed-ne-corner ==> Pr16c9 ≠ ne, Pr16c9 ≠ o
w[1]-3-in-r12c11-closed-sw-corner ==> Pr12c12 ≠ sw, Pr12c12 ≠ ne, Pr12c12 ≠ o
P-single: Pr13c14 = ew
B-single: Br12c13 = ns
no-horizontal-line-{r15 r16}c10 ==> Ir15c10 = out
no-horizontal-line-{r14 r15}c10 ==> Ir14c10 = out
no-vertical-line-r14{c9 c10} ==> Ir14c9 = out
no-horizontal-line-{r13 r14}c9 ==> Ir13c9 = out
vertical-line-r13{c9 c10} ==> Ir13c10 = in
no-vertical-line-r13{c10 c11} ==> Ir13c11 = in
no-vertical-line-r13{c11 c12} ==> Ir13c12 = in
horizontal-line-{r13 r14}c12 ==> Ir14c12 = out
vertical-line-r14{c11 c12} ==> Ir14c11 = in
horizontal-line-{r12 r13}c11 ==> Ir12c11 = out
vertical-line-r12{c10 c11} ==> Ir12c10 = in
vertical-line-r14{c8 c9} ==> Ir14c8 = in
no-horizontal-line-{r14 r15}c8 ==> Ir15c8 = in
no-vertical-line-r15{c8 c9} ==> Ir15c9 = in
vertical-line-r14{c7 c8} ==> Ir14c7 = out
vertical-line-r14{c6 c7} ==> Ir14c6 = in
vertical-line-r14{c5 c6} ==> Ir14c5 = out
no-horizontal-line-{r13 r14}c5 ==> Ir13c5 = out
no-vertical-line-r11{c11 c12} ==> Ir11c11 = in
no-vertical-line-r12{c12 c13} ==> Ir12c12 = out
different-colours-in-{r12 r13}c12 ==> Hr13c12 = 1
w[1]-3-in-r12c11-hit-by-horiz-line-at-se ==> Hr12c11 = 1
w[1]-3-in-r12c11-closed-nw-corner ==> Pr13c12 ≠ se, Pr13c12 ≠ nw, Pr13c12 ≠ o
no-vertical-line-r11{c10 c11} ==> Ir11c10 = in
same-colour-in-{r10 r11}c10 ==> Hr11c10 = 0
different-colours-in-r11{c9 c10} ==> Hr11c10 = 1
same-colour-in-r12{c11 c12} ==> Vr12c12 = 0
different-colours-in-{r10 r11}c11 ==> Hr11c11 = 1
different-colours-in-{r15 r16}c8 ==> Hr16c8 = 1
different-colours-in-r14{c10 c11} ==> Hr14c11 = 1
same-colour-in-{r14 r15}c12 ==> Hr15c12 = 0
different-colours-in-r14{c12 c13} ==> Hr14c13 = 1
w[1]-3-in-r14c12-closed-ne-corner ==> Pr15c12 ≠ sw, Pr15c12 ≠ ne
whip[1]: Pr12c13{ew .} ==> Br12c12 ≠ e, Br11c12 ≠ n, Br11c12 ≠ nw, Br12c12 ≠ se, Br12c12 ≠ ew, Br12c12 ≠ esw
whip[1]: Br12c12{swn .} ==> Pr12c12 ≠ ns, Pr12c12 ≠ nw
whip[1]: Pr12c12{ew .} ==> Br11c11 ≠ se, Br11c11 ≠ ew, Br11c11 ≠ esw, Br11c12 ≠ swn, Br12c11 ≠ wne, Br12c11 ≠ nes, Br11c11 ≠ e
B-single: Br11c12 = ns
N-single: Nr11c12 = 2
P-single: Pr11c12 = ew
whip[1]: Pr11c12{ew .} ==> Br10c11 ≠ w
B-single: Br10c11 = sw
N-single: Nr10c11 = 2
P-single: Pr11c11 = ne
whip[1]: Pr11c11{ne .} ==> Br11c10 ≠ n, Br10c10 ≠ nes, Br11c10 ≠ ns, Br11c10 ≠ ew, Br11c10 ≠ esw
B-single: Br10c10 = ne
N-single: Nr10c10 = 2
P-single: Pr12c9 = sw
H-single: Hr12c9 = 0
V-single: Vr12c9 = 1
P-single: Pr11c10 = sw
vertical-line-r12{c8 c9} ==> Ir12c9 = out
same-colour-in-{r12 r13}c9 ==> Hr13c9 = 0
different-colours-in-r12{c9 c10} ==> Hr12c10 = 1
whip[1]: Pr12c9{sw .} ==> Br12c9 ≠ ns, Br12c9 ≠ ne, Br12c9 ≠ n, Br12c8 ≠ ns, Br12c8 ≠ n, Br11c9 ≠ ns, Br12c9 ≠ nes
B-single: Br11c9 = ne
whip[1]: Br12c9{esw .} ==> Pr13c9 ≠ o, Pr13c9 ≠ se, Pr13c9 ≠ ew, Pr13c9 ≠ sw
whip[1]: Pr13c9{nw .} ==> Br13c8 ≠ ne, Br13c9 ≠ nw, Br13c9 ≠ swn, Br13c9 ≠ wne
whip[1]: Br13c8{sw .} ==> Pr14c8 ≠ o, Pr14c8 ≠ sw
whip[1]: Pr14c8{ew .} ==> Br14c7 ≠ wne, Br14c7 ≠ nes
whip[1]: Br14c7{swn .} ==> Hr15c7 ≠ 0, Pr14c7 ≠ o, Pr14c7 ≠ ne, Pr14c7 ≠ nw, Pr14c7 ≠ ew, Pr14c8 ≠ ne, Pr15c7 ≠ o, Pr15c7 ≠ ns, Pr15c7 ≠ nw, Pr15c7 ≠ se, Pr15c7 ≠ ew, Pr15c7 ≠ sw, Pr15c8 ≠ o, Pr15c8 ≠ ne, Pr15c8 ≠ ns, Pr15c8 ≠ se
H-single: Hr15c7 = 1
w[1]-3-in-r14c6-hit-by-horiz-line-at-se ==> Hr14c6 = 1
w[1]-3-in-r14c6-closed-ne-corner ==> Pr15c6 ≠ sw, Pr15c6 ≠ ne, Pr15c6 ≠ o
w[1]-3-in-r14c7-closed-se-corner ==> Pr14c7 ≠ se
P-single: Pr15c7 = ne
w[1]-1-in-r15c6-symmetric-ne-corner ==> Pr16c6 ≠ ne, Pr16c6 ≠ o
no-horizontal-line-{r13 r14}c7 ==> Ir13c7 = out
no-vertical-line-r13{c6 c7} ==> Ir13c6 = out
no-horizontal-line-{r14 r15}c6 ==> Ir15c6 = in
no-vertical-line-r15{c6 c7} ==> Ir15c7 = in
different-colours-in-{r15 r16}c7 ==> Hr16c7 = 1
different-colours-in-{r15 r16}c6 ==> Hr16c6 = 1
different-colours-in-{r12 r13}c7 ==> Hr13c7 = 1
whip[1]: Hr15c7{1 .} ==> Br15c7 ≠ o, Br15c7 ≠ e, Br15c7 ≠ s, Br15c7 ≠ w, Br15c7 ≠ se, Br15c7 ≠ ew, Br15c7 ≠ sw, Br15c7 ≠ esw
whip[1]: Br15c7{nes .} ==> Nr15c7 ≠ 0
whip[1]: Vr15c8{0 .} ==> Pr16c8 ≠ ne, Pr16c8 ≠ nw, Pr15c8 ≠ sw, Br15c7 ≠ ne, Br15c7 ≠ wne, Br15c7 ≠ nes, Br15c8 ≠ w, Br15c8 ≠ nw, Br15c8 ≠ ew, Br15c8 ≠ sw, Br15c8 ≠ esw, Br15c8 ≠ swn, Br15c8 ≠ wne
whip[1]: Pr15c8{ew .} ==> Br14c8 ≠ sw, Br14c8 ≠ esw, Br14c8 ≠ swn, Br14c8 ≠ o, Br14c8 ≠ n, Br14c8 ≠ e, Br14c8 ≠ ne
whip[1]: Br14c8{nes .} ==> Nr14c8 ≠ 0
whip[1]: Hr15c6{0 .} ==> Pr15c6 ≠ se, Pr15c6 ≠ ew, Br14c6 ≠ esw, Br14c6 ≠ swn, Br14c6 ≠ nes, Br15c6 ≠ n
B-single: Br14c6 = wne
P-single: Pr14c6 = se
P-single: Pr14c7 = sw
whip[1]: Pr14c6{se .} ==> Br14c5 ≠ w, Br14c5 ≠ s, Br14c5 ≠ n, Br14c5 ≠ o, Br13c6 ≠ w, Br13c6 ≠ e, Br13c6 ≠ n, Br13c6 ≠ o, Br13c5 ≠ s, Br13c5 ≠ e, Br13c5 ≠ ne, Br13c5 ≠ ns, Br13c5 ≠ se, Br13c5 ≠ ew, Br13c5 ≠ sw, Br13c5 ≠ esw, Br13c5 ≠ swn, Br13c5 ≠ wne, Br13c5 ≠ nes, Br13c6 ≠ ne, Br13c6 ≠ nw, Br13c6 ≠ ew, Br13c6 ≠ sw, Br13c6 ≠ esw, Br13c6 ≠ swn, Br13c6 ≠ wne, Br14c5 ≠ ne, Br14c5 ≠ ns, Br14c5 ≠ nw, Br14c5 ≠ sw, Br14c5 ≠ swn, Br14c5 ≠ wne, Br14c5 ≠ nes
whip[1]: Br14c5{esw .} ==> Pr14c5 ≠ ne, Pr14c5 ≠ se, Pr14c5 ≠ ew, Nr14c5 ≠ 0
whip[1]: Br13c6{nes .} ==> Pr13c6 ≠ ns, Pr13c6 ≠ se, Pr13c6 ≠ sw, Nr13c6 ≠ 0
whip[1]: Br13c5{nw .} ==> Nr13c5 ≠ 3
whip[1]: Pr14c7{sw .} ==> Br13c7 ≠ ns, Br13c7 ≠ w, Br13c7 ≠ s, Br13c6 ≠ se, Br13c6 ≠ nes, Br13c7 ≠ nw, Br13c7 ≠ se, Br13c7 ≠ ew, Br13c7 ≠ sw, Br13c7 ≠ esw, Br13c7 ≠ swn, Br13c7 ≠ wne, Br13c7 ≠ nes, Br14c7 ≠ swn
B-single: Br14c7 = esw
P-single: Pr15c8 = nw
whip[1]: Pr15c8{nw .} ==> Br15c8 ≠ n, Br14c8 ≠ s, Br14c8 ≠ ns, Br14c8 ≠ se, Br14c8 ≠ nes, Br15c8 ≠ ne, Br15c8 ≠ ns, Br15c8 ≠ nes
whip[1]: Br15c8{se .} ==> Pr15c9 ≠ ew, Nr15c8 ≠ 3
whip[1]: Pr15c9{ns .} ==> Br14c8 ≠ w, Br14c8 ≠ nw, Br14c9 ≠ ne, Br14c9 ≠ ns, Br14c9 ≠ se, Br15c9 ≠ swn, Br15c9 ≠ wne
whip[1]: Br15c9{nes .} ==> Pr16c9 ≠ nw, Pr16c10 ≠ o, Pr16c10 ≠ ne, Pr16c10 ≠ ew, Pr15c10 ≠ ne, Pr15c10 ≠ ew
P-single: Pr16c10 = nw
P-single: Pr16c9 = ew
whip[1]: Pr16c10{nw .} ==> Br15c10 ≠ s, Br15c10 ≠ e, Br15c10 ≠ n, Br15c10 ≠ o, Br16c10 ≠ n, Br16c9 ≠ o, Br15c10 ≠ ne, Br15c10 ≠ ns, Br15c10 ≠ se, Br15c10 ≠ sw, Br15c10 ≠ esw, Br15c10 ≠ swn, Br15c10 ≠ nes
B-single: Br16c9 = n
B-single: Br16c10 = o
whip[1]: Pr16c11{ne .} ==> Br15c11 ≠ s, Br15c11 ≠ w, Br15c11 ≠ ns, Br15c11 ≠ nw, Br15c11 ≠ se, Br15c11 ≠ ew, Br15c11 ≠ wne, Br15c11 ≠ nes
whip[1]: Br15c10{wne .} ==> Nr15c10 ≠ 0
whip[1]: Pr16c9{ew .} ==> Br15c8 ≠ e, Br15c8 ≠ o, Br16c8 ≠ o, Br15c8 ≠ se, Br15c9 ≠ esw
B-single: Br15c9 = nes
P-single: Pr14c10 = ne
P-single: Pr15c9 = ne
P-single: Pr15c10 = sw
B-single: Br15c8 = s
N-single: Nr15c8 = 1
P-single: Pr16c8 = ew
B-single: Br16c8 = n
whip[1]: Pr14c10{ne .} ==> Br14c10 ≠ o, Br13c9 ≠ n, Br13c9 ≠ o, Br13c9 ≠ s, Br13c9 ≠ w, Br13c9 ≠ ns, Br13c9 ≠ se, Br13c9 ≠ sw, Br13c9 ≠ esw, Br13c9 ≠ nes, Br13c10 ≠ ne, Br13c10 ≠ ns, Br13c10 ≠ nw, Br13c10 ≠ se, Br13c10 ≠ ew, Br14c9 ≠ nw, Br14c9 ≠ ew, Br14c10 ≠ e, Br14c10 ≠ s, Br14c10 ≠ w, Br14c10 ≠ nw, Br14c10 ≠ se, Br14c10 ≠ ew, Br14c10 ≠ sw, Br14c10 ≠ esw, Br14c10 ≠ swn, Br14c10 ≠ wne
B-single: Br14c9 = sw
B-single: Br13c10 = sw
whip[1]: Pr13c10{sw .} ==> Br12c9 ≠ esw, Br12c10 ≠ sw, Br12c10 ≠ esw, Br12c10 ≠ nes, Br12c9 ≠ w, Br12c10 ≠ ns
whip[1]: Br12c10{ew .} ==> Nr12c10 ≠ 3
whip[1]: Br12c9{sw .} ==> Nr12c9 ≠ 1, Nr12c9 ≠ 3
N-single: Nr12c9 = 2
P-single: Pr12c10 = ns
whip[1]: Pr12c10{ns .} ==> Br12c10 ≠ n, Br11c10 ≠ sw, Br12c9 ≠ sw, Br12c10 ≠ ne
B-single: Br12c9 = ew
P-single: Pr13c10 = ns
B-single: Br11c10 = w
N-single: Nr11c10 = 1
whip[1]: Pr13c10{ns .} ==> Br13c9 ≠ ne
whip[1]: Br13c9{ew .} ==> Nr13c9 ≠ 0, Nr13c9 ≠ 3
whip[1]: Pr12c11{se .} ==> Br12c11 ≠ esw
B-single: Br12c11 = swn
P-single: Pr12c11 = se
P-single: Pr12c12 = ew
P-single: Pr13c11 = ne
whip[1]: Pr12c11{se .} ==> Br12c10 ≠ w, Br11c11 ≠ n
B-single: Br11c11 = ns
N-single: Nr11c11 = 2
B-single: Br12c10 = ew
N-single: Nr12c10 = 2
whip[1]: Pr12c12{ew .} ==> Br12c12 ≠ nw, Br12c12 ≠ swn
whip[1]: Br12c12{ns .} ==> Nr12c12 ≠ 3
whip[1]: Pr13c11{ne .} ==> Br13c11 ≠ o, Br13c11 ≠ e, Br13c11 ≠ s, Br13c11 ≠ w, Br13c11 ≠ nw, Br13c11 ≠ se, Br13c11 ≠ ew, Br13c11 ≠ sw, Br13c11 ≠ esw, Br13c11 ≠ swn, Br13c11 ≠ wne
whip[1]: Br13c11{nes .} ==> Nr13c11 ≠ 0
whip[1]: Pr13c12{sw .} ==> Br13c12 ≠ nw, Br13c12 ≠ se, Br13c12 ≠ swn, Br13c12 ≠ wne, Br13c12 ≠ o, Br13c12 ≠ e, Br13c12 ≠ s
whip[1]: Br13c12{nes .} ==> Nr13c12 ≠ 0
whip[1]: Pr14c11{sw .} ==> Br14c11 ≠ nw, Br14c11 ≠ se
whip[1]: Pr14c9{sw .} ==> Br13c8 ≠ nw, Br13c8 ≠ se
whip[1]: Br14c10{nes .} ==> Nr14c10 ≠ 0
whip[1]: Pr15c10{sw .} ==> Br14c10 ≠ ns, Br14c10 ≠ nes, Br15c10 ≠ nw, Br15c10 ≠ wne
whip[1]: Br15c10{ew .} ==> Pr15c11 ≠ nw, Pr15c11 ≠ ew, Nr15c10 ≠ 3
whip[1]: Pr15c11{se .} ==> Br14c11 ≠ ne, Br15c11 ≠ o, Br15c11 ≠ e
whip[1]: Br15c11{swn .} ==> Nr15c11 ≠ 0
whip[1]: Br14c10{ne .} ==> Nr14c10 ≠ 3
whip[1]: Pr16c8{ew .} ==> Br15c7 ≠ n, Br16c7 ≠ o, Br15c7 ≠ nw
B-single: Br16c7 = n
w[1]-1-in-r15c6-asymmetric-se-corner ==> Pr15c6 ≠ ns
P-single: Pr15c6 = nw
H-single: Hr15c5 = 1
V-single: Vr15c6 = 0
w[1]-3-in-r14c4-hit-by-horiz-line-at-se ==> Vr14c4 = 1, Vr15c5 = 0
w[0]-adjacent-3-in-r13c4-nolines-west ==> Vr13c5 = 1, Vr12c4 = 1, Vr14c5 = 0, Hr13c5 = 0
w[1]-3-in-r13c4-closed-se-corner ==> Pr13c4 ≠ se, Pr13c4 ≠ nw, Pr13c4 ≠ o
w[1]-3-in-r13c4-closed-ne-corner ==> Pr14c4 ≠ sw, Pr14c4 ≠ ne, Pr14c4 ≠ o
w[1]-3-in-r14c4-closed-sw-corner ==> Pr14c5 ≠ sw, Pr14c5 ≠ o
w[1]-3-in-r14c4-closed-nw-corner ==> Pr15c5 ≠ se, Pr15c5 ≠ nw, Pr15c5 ≠ o
no-horizontal-line-{r12 r13}c5 ==> Ir12c5 = out
no-vertical-line-r12{c4 c5} ==> Ir12c4 = out
no-horizontal-line-{r11 r12}c4 ==> Ir11c4 = out
vertical-line-r11{c4 c5} ==> Ir11c5 = in
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = in
no-vertical-line-r10{c4 c5} ==> Ir10c4 = in
no-vertical-line-r10{c5 c6} ==> Ir10c6 = in
horizontal-line-{r9 r10}c6 ==> Ir9c6 = out
no-vertical-line-r9{c6 c7} ==> Ir9c7 = out
horizontal-line-{r8 r9}c7 ==> Ir8c7 = in
vertical-line-r8{c6 c7} ==> Ir8c6 = out
vertical-line-r9{c5 c6} ==> Ir9c5 = in
horizontal-line-{r10 r11}c6 ==> Ir11c6 = out
no-horizontal-line-{r11 r12}c6 ==> Ir12c6 = out
vertical-line-r12{c3 c4} ==> Ir12c3 = in
no-horizontal-line-{r12 r13}c3 ==> Ir13c3 = in
no-vertical-line-r13{c2 c3} ==> Ir13c2 = in
horizontal-line-{r12 r13}c2 ==> Ir12c2 = out
no-vertical-line-r13{c3 c4} ==> Ir13c4 = in
horizontal-line-{r13 r14}c4 ==> Ir14c4 = out
vertical-line-r14{c3 c4} ==> Ir14c3 = in
no-horizontal-line-{r14 r15}c3 ==> Ir15c3 = in
no-vertical-line-r15{c3 c4} ==> Ir15c4 = in
no-vertical-line-r15{c4 c5} ==> Ir15c5 = in
different-colours-in-{r15 r16}c5 ==> Hr16c5 = 1
different-colours-in-{r15 r16}c4 ==> Hr16c4 = 1
different-colours-in-{r15 r16}c3 ==> Hr16c3 = 1
same-colour-in-{r12 r13}c6 ==> Hr13c6 = 0
different-colours-in-r12{c6 c7} ==> Hr12c7 = 1
different-colours-in-r11{c6 c7} ==> Hr11c7 = 1
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
different-colours-in-{r9 r10}c7 ==> Hr10c7 = 1
no-vertical-line-r9{c7 c8} ==> Ir9c8 = out
different-colours-in-r9{c8 c9} ==> Hr9c9 = 1
whip[1]: Pr15c6{nw .} ==> Br15c5 ≠ s, Br15c5 ≠ e, Br15c5 ≠ o, Br14c5 ≠ e, Br14c5 ≠ ew, Br15c5 ≠ w, Br15c5 ≠ ne, Br15c5 ≠ se, Br15c5 ≠ ew, Br15c5 ≠ sw, Br15c5 ≠ esw, Br15c5 ≠ wne, Br15c5 ≠ nes, Br15c6 ≠ w
whip[1]: Br15c6{s .} ==> Pr16c6 ≠ nw
P-single: Pr16c6 = ew
whip[1]: Pr16c6{ew .} ==> Br15c6 ≠ e, Br15c5 ≠ n, Br16c6 ≠ o, Br16c5 ≠ o, Br15c5 ≠ nw
B-single: Br16c5 = n
B-single: Br16c6 = n
P-single: Pr16c7 = ew
B-single: Br15c6 = s
whip[1]: Pr16c7{ew .} ==> Br15c7 ≠ swn
B-single: Br15c7 = ns
N-single: Nr15c7 = 2
whip[1]: Pr16c5{ew .} ==> Br15c4 ≠ nw, Br15c4 ≠ se, Br15c4 ≠ esw, Br15c4 ≠ nes, Br15c4 ≠ o, Br15c4 ≠ n, Br15c4 ≠ w
whip[1]: Br15c4{wne .} ==> Nr15c4 ≠ 0
whip[1]: Br15c5{swn .} ==> Pr15c5 ≠ ns, Pr15c5 ≠ sw, Nr15c5 ≠ 0, Nr15c5 ≠ 1
whip[1]: Pr15c5{ew .} ==> Br14c4 ≠ esw, Br14c4 ≠ nes, Br15c4 ≠ ew, Br15c4 ≠ wne, Br15c5 ≠ swn, Br15c4 ≠ e, Br15c4 ≠ ne
B-single: Br15c5 = ns
N-single: Nr15c5 = 2
P-single: Pr16c5 = ew
whip[1]: Pr16c5{ew .} ==> Br16c4 ≠ o
B-single: Br16c4 = n
w[1]-1-in-r15c3-asymmetric-se-corner ==> Pr15c3 ≠ sw, Pr15c3 ≠ ew, Pr15c3 ≠ ns, Pr15c3 ≠ ne
whip[1]: Pr15c3{se .} ==> Br14c2 ≠ ne, Br14c2 ≠ ns, Br14c2 ≠ ew, Br14c2 ≠ sw, Br14c2 ≠ swn, Br14c2 ≠ wne, Br14c3 ≠ sw, Br14c3 ≠ esw, Br14c3 ≠ swn, Br15c2 ≠ ne, Br15c2 ≠ wne, Br15c2 ≠ nes, Br14c2 ≠ e, Br14c2 ≠ s, Br15c3 ≠ n, Br15c3 ≠ w
whip[1]: Br15c3{s .} ==> Vr15c3 ≠ 1, Pr16c3 ≠ ne, Pr16c3 ≠ nw, Pr15c3 ≠ se, Pr15c4 ≠ nw, Pr15c4 ≠ ew, Pr15c4 ≠ sw
V-single: Vr15c3 = 0
no-vertical-line-r15{c2 c3} ==> Ir15c2 = in
different-colours-in-{r15 r16}c2 ==> Hr16c2 = 1
w[1]-3-in-r15c1-hit-by-horiz-line-at-se ==> Hr15c1 = 1
w[1]-3-in-r15c1-closed-nw-corner ==> Pr16c2 ≠ nw, Pr16c2 ≠ o
no-vertical-line-r14{c0 c1} ==> Ir14c1 = out
same-colour-in-r15{c1 c2} ==> Vr15c2 = 0
whip[1]: Vr15c3{0 .} ==> Br15c2 ≠ e, Br15c2 ≠ se, Br15c2 ≠ ew, Br15c2 ≠ esw
whip[1]: Hr16c2{1 .} ==> Br15c2 ≠ o, Br16c2 ≠ o, Pr16c3 ≠ o, Br15c2 ≠ n, Br15c2 ≠ w, Br15c2 ≠ nw
P-single: Pr16c3 = ew
B-single: Br16c2 = n
w[1]-1-in-r15c3-asymmetric-sw-corner ==> Pr15c4 ≠ se, Pr15c4 ≠ ns
whip[1]: Pr16c3{ew .} ==> Br15c3 ≠ e, Br16c3 ≠ o
B-single: Br16c3 = n
P-single: Pr16c4 = ew
B-single: Br15c3 = s
whip[1]: Pr16c4{ew .} ==> Br15c4 ≠ sw, Br15c4 ≠ swn
whip[1]: Br15c4{ns .} ==> Nr15c4 ≠ 3
whip[1]: Pr15c4{ne .} ==> Br14c3 ≠ s, Br14c3 ≠ ns, Br14c3 ≠ se, Br14c3 ≠ nes, Br14c4 ≠ wne
B-single: Br14c4 = swn
P-single: Pr14c4 = se
P-single: Pr14c5 = nw
P-single: Pr15c4 = ne
P-single: Pr15c5 = ew
whip[1]: Pr14c4{se .} ==> Br14c3 ≠ w, Br14c3 ≠ n, Br14c3 ≠ o, Br13c3 ≠ s, Br13c3 ≠ e, Br13c3 ≠ ne, Br13c3 ≠ ns, Br13c3 ≠ se, Br13c3 ≠ ew, Br13c3 ≠ sw, Br13c3 ≠ esw, Br13c3 ≠ swn, Br13c3 ≠ wne, Br13c3 ≠ nes, Br13c4 ≠ esw, Br13c4 ≠ swn, Br13c4 ≠ wne, Br14c3 ≠ ne, Br14c3 ≠ nw, Br14c3 ≠ wne
B-single: Br13c4 = nes
P-single: Pr13c5 = sw
whip[1]: Pr13c5{sw .} ==> Br13c5 ≠ n, Br13c5 ≠ o, Br12c5 ≠ ns, Br12c5 ≠ w, Br12c5 ≠ s, Br12c4 ≠ ne, Br12c4 ≠ w, Br12c4 ≠ e, Br12c4 ≠ n, Br12c4 ≠ o, Br12c4 ≠ nw, Br12c4 ≠ se, Br12c4 ≠ ew, Br12c4 ≠ esw, Br12c4 ≠ wne, Br12c4 ≠ nes, Br12c5 ≠ nw, Br12c5 ≠ se, Br12c5 ≠ ew, Br12c5 ≠ sw, Br12c5 ≠ esw, Br12c5 ≠ swn, Br12c5 ≠ wne, Br12c5 ≠ nes, Br13c5 ≠ nw
B-single: Br13c5 = w
N-single: Nr13c5 = 1
whip[1]: Pr13c6{ne .} ==> Br12c6 ≠ s, Br12c6 ≠ w, Br12c6 ≠ ns, Br12c6 ≠ nw, Br12c6 ≠ se, Br12c6 ≠ ew, Br12c6 ≠ wne, Br12c6 ≠ nes
whip[1]: Br12c5{ne .} ==> Pr12c5 ≠ ns, Pr12c5 ≠ se, Nr12c5 ≠ 3, Pr12c5 ≠ sw
whip[1]: Br12c4{swn .} ==> Nr12c4 ≠ 0
whip[1]: Pr13c4{ew .} ==> Br12c3 ≠ nw, Br12c3 ≠ se, Br12c3 ≠ esw, Br12c3 ≠ nes, Br12c3 ≠ o, Br12c3 ≠ n, Br12c3 ≠ w
whip[1]: Br12c3{wne .} ==> Nr12c3 ≠ 0
whip[1]: Br14c3{ew .} ==> Pr14c3 ≠ ne, Pr14c3 ≠ se, Pr14c3 ≠ ew, Nr14c3 ≠ 0, Nr14c3 ≠ 3
whip[1]: Pr14c3{sw .} ==> Br13c2 ≠ se, Br14c2 ≠ nw, Br14c2 ≠ n
whip[1]: Br14c2{nes .} ==> Pr14c2 ≠ se
whip[1]: Pr14c2{ew .} ==> Br13c1 ≠ nw, Br14c1 ≠ wne, Br14c1 ≠ nes, Br13c1 ≠ o, Br13c1 ≠ n, Br13c1 ≠ w, Br13c2 ≠ ne, Br14c1 ≠ ne
whip[1]: Br13c1{nes .} ==> Nr13c1 ≠ 0
whip[1]: Br13c3{nw .} ==> Nr13c3 ≠ 3
whip[1]: Pr14c5{nw .} ==> Br14c5 ≠ esw
B-single: Br14c5 = se
N-single: Nr14c5 = 2
whip[1]: Pr15c4{ne .} ==> Br15c4 ≠ s
B-single: Br15c4 = ns
N-single: Nr15c4 = 2
whip[1]: Br15c2{swn .} ==> Nr15c2 ≠ 0
whip[1]: Hr15c1{1 .} ==> Br14c1 ≠ o, Pr15c1 ≠ o, Pr15c1 ≠ ns, Pr15c2 ≠ ns, Pr15c2 ≠ se, Br14c1 ≠ n, Br14c1 ≠ e, Br14c1 ≠ w, Br14c1 ≠ nw, Br14c1 ≠ ew, Br15c1 ≠ esw
B-single: Br15c1 = swn
P-single: Pr16c1 = ne
P-single: Pr16c2 = ew
P-single: Pr15c1 = se
whip[1]: Pr16c1{ne .} ==> Br16c1 ≠ o
B-single: Br16c1 = n
whip[1]: Pr16c2{ew .} ==> Br15c2 ≠ sw, Br15c2 ≠ swn
whip[1]: Br15c2{ns .} ==> Nr15c2 ≠ 3
whip[1]: Pr15c1{se .} ==> Br14c1 ≠ sw, Br14c1 ≠ esw, Br14c1 ≠ swn
whip[1]: Br14c1{se .} ==> Pr14c1 ≠ ns, Pr14c1 ≠ se, Nr14c1 ≠ 0, Nr14c1 ≠ 3
whip[1]: Pr14c1{ne .} ==> Br13c1 ≠ s, Br13c1 ≠ ns, Br13c1 ≠ se, Br13c1 ≠ ew, Br13c1 ≠ wne, Br13c1 ≠ nes
whip[1]: Pr15c2{ew .} ==> Br14c2 ≠ esw, Br14c2 ≠ o
whip[1]: Br14c2{nes .} ==> Nr14c2 ≠ 0
whip[1]: Vr14c1{0 .} ==> Br14c0 ≠ e
B-single: Br14c0 = o
whip[1]: Vr12c4{1 .} ==> Pr12c4 ≠ o, Pr12c4 ≠ ne, Pr12c4 ≠ nw, Pr12c4 ≠ ew, Pr13c4 ≠ ew, Br12c3 ≠ s, Br12c3 ≠ ns, Br12c3 ≠ sw, Br12c3 ≠ swn, Br12c4 ≠ s, Br12c4 ≠ ns
P-single: Pr13c4 = ne
whip[1]: Pr13c4{ne .} ==> Br13c3 ≠ n, Br13c3 ≠ nw
whip[1]: Br13c3{w .} ==> Pr13c3 ≠ ne, Nr13c3 ≠ 2, Pr13c3 ≠ se, Pr13c3 ≠ ew
whip[1]: Pr13c3{nw .} ==> Br12c2 ≠ swn
whip[1]: Br12c2{nes .} ==> Pr12c3 ≠ o, Pr12c3 ≠ ne, Pr12c3 ≠ nw, Pr12c3 ≠ ew, Pr13c2 ≠ sw, Pr13c3 ≠ o
whip[1]: Pr14c2{ew .} ==> Br13c2 ≠ sw, Br14c1 ≠ s
whip[1]: Br14c1{se .} ==> Nr14c1 ≠ 1
N-single: Nr14c1 = 2
whip[1]: Pr13c3{nw .} ==> Br12c3 ≠ ne, Br12c3 ≠ e
whip[1]: Br12c3{wne .} ==> Nr12c3 ≠ 1
whip[1]: Pr13c2{ew .} ==> Br12c1 ≠ se, Br12c1 ≠ esw, Br12c1 ≠ nes, Br13c1 ≠ ne
whip[1]: Br13c1{swn .} ==> Pr13c1 ≠ ne
whip[1]: Pr13c1{se .} ==> Br12c1 ≠ sw, Br12c1 ≠ swn
whip[1]: Pr12c3{sw .} ==> Br11c3 ≠ sw
whip[1]: Br11c3{ew .} ==> Pr11c4 ≠ o, Pr11c4 ≠ ne
whip[1]: Pr11c4{sw .} ==> Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn
whip[1]: Br12c4{swn .} ==> Nr12c4 ≠ 1
whip[1]: Pr12c4{sw .} ==> Br11c3 ≠ se, Br11c4 ≠ sw, Br11c4 ≠ esw, Br11c4 ≠ swn
whip[1]: Br11c3{ew .} ==> Pr11c3 ≠ o, Pr11c3 ≠ nw
whip[1]: Pr11c3{sw .} ==> Br10c2 ≠ se
whip[1]: Br10c2{sw .} ==> Pr10c2 ≠ o
whip[1]: Pr12c4{sw .} ==> Br11c3 ≠ nw, Br11c4 ≠ se, Br11c4 ≠ nes, Br12c4 ≠ swn, Br11c4 ≠ s, Br11c4 ≠ ns
B-single: Br12c4 = sw
N-single: Nr12c4 = 2
whip[1]: Pr12c5{ne .} ==> Br11c5 ≠ wne, Br11c5 ≠ nes
whip[1]: Br11c5{swn .} ==> Pr12c5 ≠ o, Pr12c6 ≠ o, Pr12c6 ≠ ne, Pr12c6 ≠ ns, Pr12c6 ≠ se
P-single: Pr12c5 = ne
whip[1]: Pr12c5{ne .} ==> Br12c5 ≠ o, Br11c4 ≠ n, Br11c4 ≠ o, Br11c4 ≠ w, Br11c4 ≠ nw, Br12c5 ≠ e
whip[1]: Br12c5{ne .} ==> Nr12c5 ≠ 0
whip[1]: Br11c4{wne .} ==> Nr11c4 ≠ 0
whip[1]: Pr12c6{sw .} ==> Br11c6 ≠ sw, Br11c6 ≠ esw, Br11c6 ≠ swn, Br12c6 ≠ swn
whip[1]: Pr11c3{sw .} ==> Br10c2 ≠ nw
whip[1]: Pr10c2{sw .} ==> Br9c1 ≠ nw, Br9c1 ≠ se, Br9c1 ≠ esw, Br9c1 ≠ nes, Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ ew, Br10c1 ≠ nw, Br10c1 ≠ se, Br10c1 ≠ ew, Br10c1 ≠ esw, Br10c1 ≠ swn, Br9c1 ≠ o, Br9c1 ≠ n, Br9c1 ≠ w, Br9c2 ≠ ns, Br10c1 ≠ n, Br10c1 ≠ e, Br10c1 ≠ ns
whip[1]: Br9c1{wne .} ==> Nr9c1 ≠ 0
whip[1]: Hr13c6{0 .} ==> Pr13c6 ≠ ne, Pr13c7 ≠ nw, Pr13c7 ≠ ew, Pr13c7 ≠ sw, Br12c6 ≠ sw, Br12c6 ≠ esw, Br13c6 ≠ ns
P-single: Pr13c6 = o
B-single: Br13c6 = s
N-single: Nr13c6 = 1
whip[1]: Pr13c6{o .} ==> Br12c5 ≠ ne
B-single: Br12c5 = n
N-single: Nr12c5 = 1
whip[1]: Pr12c6{ew .} ==> Br11c6 ≠ o, Br11c6 ≠ n, Br11c6 ≠ e, Br11c6 ≠ ne
whip[1]: Br11c6{nes .} ==> Nr11c6 ≠ 0
whip[1]: Pr13c7{ne .} ==> Br12c7 ≠ s, Br12c7 ≠ w
whip[1]: Br12c7{sw .} ==> Nr12c7 ≠ 1
whip[1]: Br12c6{ne .} ==> Nr12c6 ≠ 3
whip[1]: Vr12c7{1 .} ==> Br12c7 ≠ o, Br12c6 ≠ o, Pr12c7 ≠ o, Pr12c7 ≠ nw, Pr13c7 ≠ o, Br12c6 ≠ n
P-single: Pr13c7 = ne
B-single: Br12c7 = sw
N-single: Nr12c7 = 2
whip[1]: Pr13c7{ne .} ==> Br13c7 ≠ o, Br13c7 ≠ e
whip[1]: Br13c7{ne .} ==> Nr13c7 ≠ 0, Nr13c7 ≠ 3
whip[1]: Br12c6{ne .} ==> Nr12c6 ≠ 0
whip[1]: Pr12c7{sw .} ==> Br11c6 ≠ nw, Br11c6 ≠ se, Br11c6 ≠ nes, Br11c6 ≠ w
whip[1]: Vr11c7{1 .} ==> Pr11c7 ≠ o, Pr11c7 ≠ ne, Pr11c7 ≠ nw, Pr11c7 ≠ ew, Pr12c7 ≠ sw, Br11c6 ≠ s, Br11c6 ≠ ns, Br11c7 ≠ e, Br11c7 ≠ ne
P-single: Pr12c7 = ns
whip[1]: Pr12c7{ns .} ==> Br12c6 ≠ ne
B-single: Br12c6 = e
N-single: Nr12c6 = 1
P-single: Pr12c6 = nw
whip[1]: Pr12c6{nw .} ==> Br11c5 ≠ swn
B-single: Br11c5 = esw
whip[1]: Br11c7{wne .} ==> Nr11c7 ≠ 1
whip[1]: Br11c6{wne .} ==> Nr11c6 ≠ 1
whip[1]: Pr11c7{sw .} ==> Br10c6 ≠ se, Br10c6 ≠ esw, Br10c6 ≠ nes, Br10c7 ≠ sw, Br10c7 ≠ swn
whip[1]: Hr11c7{0 .} ==> Pr11c7 ≠ se, Pr11c8 ≠ sw, Br10c7 ≠ s, Br10c7 ≠ ns, Br11c7 ≠ wne
P-single: Pr11c8 = ns
B-single: Br11c7 = ew
N-single: Nr11c7 = 2
whip[1]: Pr11c8{ns .} ==> Br10c8 ≠ e, Br10c8 ≠ ne
whip[1]: Br10c8{wne .} ==> Pr10c8 ≠ o, Pr10c8 ≠ ne, Pr10c8 ≠ nw, Pr10c8 ≠ ew, Nr10c8 ≠ 1
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ nes, Br9c8 ≠ sw, Br9c8 ≠ swn
whip[1]: Pr11c7{sw .} ==> Br10c6 ≠ nw, Br10c6 ≠ o, Br10c6 ≠ n, Br10c6 ≠ w
whip[1]: Br10c6{wne .} ==> Nr10c6 ≠ 0
whip[1]: Vr10c7{0 .} ==> Pr10c7 ≠ ns, Pr10c7 ≠ se, Pr10c7 ≠ sw, Pr11c7 ≠ ns, Br10c6 ≠ e, Br10c6 ≠ ne, Br10c6 ≠ ew, Br10c6 ≠ wne, Br10c7 ≠ ew, Br10c7 ≠ wne
P-single: Pr11c7 = sw
whip[1]: Pr11c7{sw .} ==> Br11c6 ≠ ew
B-single: Br11c6 = wne
N-single: Nr11c6 = 3
whip[1]: Br10c7{ne .} ==> Nr10c7 ≠ 3
whip[1]: Hr10c7{1 .} ==> Br9c7 ≠ o, Pr10c7 ≠ o, Pr10c7 ≠ nw, Pr10c8 ≠ ns, Pr10c8 ≠ se, Br9c7 ≠ n, Br9c7 ≠ e, Br9c7 ≠ w, Br9c7 ≠ ne, Br9c7 ≠ nw, Br9c7 ≠ ew, Br9c7 ≠ wne, Br10c7 ≠ e
P-single: Pr10c8 = sw
B-single: Br10c7 = ne
N-single: Nr10c7 = 2
whip[1]: Pr10c8{sw .} ==> Br9c8 ≠ ns, Br9c8 ≠ s, Br9c8 ≠ ew, Br9c8 ≠ wne, Br10c8 ≠ wne
B-single: Br10c8 = ew
N-single: Nr10c8 = 2
P-single: Pr10c9 = ns
whip[1]: Pr10c9{ns .} ==> Br9c9 ≠ e
B-single: Br9c9 = ew
N-single: Nr9c9 = 2
whip[1]: Pr9c9{sw .} ==> Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ esw, Br8c8 ≠ nes, Br8c8 ≠ o, Br8c8 ≠ n, Br8c8 ≠ w
whip[1]: Br8c8{wne .} ==> Nr8c8 ≠ 0
whip[1]: Br9c8{ne .} ==> Pr9c8 ≠ ns, Pr9c8 ≠ se, Nr9c8 ≠ 3, Pr9c8 ≠ sw
whip[1]: Br9c7{swn .} ==> Nr9c7 ≠ 0
whip[1]: Pr10c7{ew .} ==> Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ esw, Br9c6 ≠ nes, Br9c6 ≠ o, Br9c6 ≠ n, Br9c6 ≠ w
whip[1]: Br9c6{wne .} ==> Nr9c6 ≠ 0
whip[1]: Br14c8{wne .} ==> Nr14c8 ≠ 1
whip[1]: Pr14c8{se .} ==> Br13c8 ≠ sw
whip[1]: Br12c8{nes .} ==> Nr12c8 ≠ 1
whip[1]: Pr13c14{ew .} ==> Br13c14 ≠ nw, Br13c14 ≠ swn
whip[1]: Br13c14{ns .} ==> Pr14c14 ≠ ne, Pr14c14 ≠ ns, Pr14c14 ≠ nw, Nr13c14 ≠ 3
whip[1]: Hr13c12{1 .} ==> Pr13c12 ≠ sw, Pr13c13 ≠ se, Br12c12 ≠ n, Br13c12 ≠ w, Br13c12 ≠ ew, Br13c12 ≠ sw, Br13c12 ≠ esw
P-single: Pr13c13 = ew
P-single: Pr13c12 = ew
B-single: Br12c12 = ns
N-single: Nr12c12 = 2
whip[1]: Pr13c13{ew .} ==> Br13c12 ≠ ne, Br13c12 ≠ nes, Br13c13 ≠ nw, Br13c13 ≠ swn
whip[1]: Br13c13{ns .} ==> Pr14c13 ≠ ne, Pr14c13 ≠ ns, Pr14c13 ≠ nw, Nr13c13 ≠ 3
whip[1]: Br13c12{ns .} ==> Pr14c12 ≠ ne, Pr14c12 ≠ ns, Pr14c12 ≠ nw, Nr13c12 ≠ 3
whip[1]: Pr14c12{ew .} ==> Br13c11 ≠ nes, Br14c12 ≠ esw, Br13c11 ≠ ne
whip[1]: Br13c11{ns .} ==> Nr13c11 ≠ 3
whip[1]: Br14c12{nes .} ==> Pr14c12 ≠ o, Pr14c13 ≠ o, Pr14c13 ≠ se
whip[1]: Pr15c11{se .} ==> Vr15c11 ≠ 0, Br14c11 ≠ sw, Br15c11 ≠ ne, Br15c10 ≠ w, Br15c11 ≠ n
V-single: Vr15c11 = 1
B-single: Br15c10 = ew
N-single: Nr15c10 = 2
P-single: Pr16c11 = ne
H-single: Hr16c11 = 1
horizontal-line-{r15 r16}c11 ==> Ir15c11 = in
different-colours-in-r15{c11 c12} ==> Hr15c12 = 1
w[1]-3-in-r14c12-hit-by-verti-line-at-sw ==> Hr15c11 = 0
whip[1]: Pr16c11{ne .} ==> Br16c11 ≠ o
B-single: Br16c11 = n
whip[1]: Pr16c12{ew .} ==> Br15c12 ≠ sw, Br15c12 ≠ esw, Br15c12 ≠ swn, Br15c12 ≠ o, Br15c12 ≠ n, Br15c12 ≠ e, Br15c12 ≠ ne
whip[1]: Br15c12{nes .} ==> Nr15c12 ≠ 0
whip[1]: Vr15c12{1 .} ==> Pr16c12 ≠ ew, Pr15c12 ≠ ew, Br15c11 ≠ sw, Br15c11 ≠ swn, Br15c12 ≠ s, Br15c12 ≠ ns, Br15c12 ≠ se, Br15c12 ≠ nes
P-single: Pr15c12 = ns
P-single: Pr16c12 = nw
B-single: Br15c11 = esw
N-single: Nr15c11 = 3
P-single: Pr15c11 = ns
whip[1]: Pr15c12{ns .} ==> Br14c11 ≠ ns, Br14c12 ≠ swn, Br14c12 ≠ nes, Br15c12 ≠ nw, Br15c12 ≠ wne
B-single: Br14c12 = wne
P-single: Pr14c12 = se
P-single: Pr14c13 = sw
B-single: Br14c11 = ew
P-single: Pr14c11 = sw
whip[1]: Pr14c12{se .} ==> Br13c12 ≠ n, Br13c11 ≠ ns
B-single: Br13c11 = n
N-single: Nr13c11 = 1
B-single: Br13c12 = ns
N-single: Nr13c12 = 2
whip[1]: Pr14c13{sw .} ==> Br14c13 ≠ ns, Br14c13 ≠ ne, Br14c13 ≠ s, Br14c13 ≠ e, Br14c13 ≠ n, Br14c13 ≠ o, Br13c13 ≠ ns, Br14c13 ≠ nw, Br14c13 ≠ se, Br14c13 ≠ swn, Br14c13 ≠ wne, Br14c13 ≠ nes
B-single: Br13c13 = n
N-single: Nr13c13 = 1
whip[1]: Pr14c14{se .} ==> Br14c14 ≠ esw, Br14c14 ≠ nes
whip[1]: Br14c14{wne .} ==> Pr14c14 ≠ o, Pr14c15 ≠ o, Pr15c14 ≠ se, Pr15c14 ≠ ew
P-single: Pr14c15 = sw
P-single: Pr14c14 = se
whip[1]: Pr14c15{sw .} ==> Br14c15 ≠ ns, Br14c15 ≠ ne, Br14c15 ≠ s, Br14c15 ≠ e, Br14c15 ≠ n, Br14c15 ≠ o, Br13c14 ≠ n, Br14c14 ≠ swn, Br14c15 ≠ nw, Br14c15 ≠ se, Br14c15 ≠ swn, Br14c15 ≠ wne, Br14c15 ≠ nes
B-single: Br14c14 = wne
B-single: Br13c14 = ns
N-single: Nr13c14 = 2
whip[1]: Pr15c15{ns .} ==> Br15c14 ≠ ne, Br15c14 ≠ ns, Br15c14 ≠ nw, Br15c14 ≠ swn, Br15c14 ≠ wne, Br15c14 ≠ nes, Br15c14 ≠ n
whip[1]: Br14c15{esw .} ==> Nr14c15 ≠ 0
whip[1]: Pr14c14{se .} ==> Br14c13 ≠ w, Br14c13 ≠ sw
whip[1]: Br14c13{esw .} ==> Nr14c13 ≠ 0, Nr14c13 ≠ 1
whip[1]: Pr15c14{nw .} ==> Br15c13 ≠ wne, Br15c13 ≠ nes
whip[1]: Br15c13{swn .} ==> Pr16c13 ≠ o, Pr16c13 ≠ nw, Pr16c13 ≠ ew, Pr16c14 ≠ o, Pr16c14 ≠ ne, Pr15c13 ≠ ne
P-single: Pr15c13 = ns
P-single: Pr16c13 = ne
whip[1]: Pr15c13{ns .} ==> Br14c13 ≠ esw, Br15c12 ≠ w, Br15c13 ≠ swn
B-single: Br15c13 = esw
P-single: Pr16c14 = nw
P-single: Pr15c14 = ns
B-single: Br15c12 = ew
N-single: Nr15c12 = 2
B-single: Br14c13 = ew
N-single: Nr14c13 = 2
whip[1]: Pr16c14{nw .} ==> Br15c14 ≠ s, Br15c14 ≠ e, Br15c14 ≠ o, Br16c14 ≠ n, Br16c13 ≠ o, Br15c14 ≠ se, Br15c14 ≠ sw, Br15c14 ≠ esw
B-single: Br16c13 = n
B-single: Br16c14 = o
whip[1]: Pr16c15{ne .} ==> Br15c15 ≠ nes
B-single: Br15c15 = esw
P-single: Pr16c16 = nw
P-single: Pr16c15 = ne
P-single: Pr15c16 = ns
P-single: Pr15c15 = ns
whip[1]: Pr16c16{nw .} ==> Br16c15 ≠ o
B-single: Br16c15 = n
whip[1]: Pr16c15{ne .} ==> Br15c14 ≠ w
B-single: Br15c14 = ew
N-single: Nr15c14 = 2
whip[1]: Pr15c16{ns .} ==> Br14c15 ≠ w, Br14c15 ≠ sw, Br14c15 ≠ esw
B-single: Br14c15 = ew
N-single: Nr14c15 = 2
whip[1]: Pr16c13{ne .} ==> Br16c12 ≠ n
B-single: Br16c12 = o
whip[1]: Pr14c11{sw .} ==> Br14c10 ≠ n
B-single: Br14c10 = ne
N-single: Nr14c10 = 2
whip[1]: Vr12c16{1 .} ==> Br12c16 ≠ o
B-single: Br12c16 = w
whip[1]: Vr3c2{1 .} ==> Br3c2 ≠ nes, Br3c2 ≠ o, Pr3c2 ≠ ew, Pr4c2 ≠ ew, Pr4c2 ≠ sw, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ sw, Br3c2 ≠ n, Br3c2 ≠ e, Br3c2 ≠ s, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ se
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c2{ns .} ==> Hr4c1 ≠ 1, Br3c1 ≠ se, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nw, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c2 ≠ s, Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c1 ≠ n, Br4c2 ≠ o, Br4c2 ≠ e
H-single: Hr4c1 = 0
no-horizontal-line-{r3 r4}c1 ==> Ir4c1 = out
same-colour-in-r4{c0 c1} ==> Vr4c1 = 0
whip[1]: Hr4c1{0 .} ==> Pr4c1 ≠ se
whip[1]: Vr4c1{0 .} ==> Br4c0 ≠ e, Pr4c1 ≠ ns, Pr5c1 ≠ ne, Pr5c1 ≠ ns, Br4c1 ≠ w, Br4c1 ≠ ew, Br4c1 ≠ sw, Br4c1 ≠ esw
P-single: Pr3c2 = sw
P-single: Pr4c1 = o
B-single: Br4c0 = o
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ ns, Br2c2 ≠ w, Br2c2 ≠ s, Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ se, Br2c1 ≠ ew, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes, Br3c1 ≠ ew, Br3c2 ≠ nw, Br3c2 ≠ swn, Br3c2 ≠ wne
B-single: Br3c1 = ne
P-single: Pr2c2 = ne
P-single: Pr3c1 = ne
whip[1]: Pr2c2{ne .} ==> Br2c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ o, Br1c1 ≠ swn, Br1c2 ≠ e, Br1c2 ≠ s, Br1c2 ≠ w, Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ nw, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ wne, Br1c2 ≠ nes, Br2c1 ≠ ns, Br2c2 ≠ e
B-single: Br2c1 = sw
B-single: Br1c1 = wne
P-single: Pr1c1 = se
P-single: Pr1c2 = sw
whip[1]: Pr1c2{sw .} ==> Br1c2 ≠ swn
whip[1]: Br1c2{esw .} ==> Nr1c2 ≠ 0, Nr1c2 ≠ 1
whip[1]: Br2c2{ne .} ==> Nr2c2 ≠ 0, Nr2c2 ≠ 3
whip[1]: Br4c1{se .} ==> Nr4c1 ≠ 3
whip[1]: Pr5c1{se .} ==> Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ ew, Br5c1 ≠ sw, Br5c1 ≠ esw, Br5c1 ≠ nes, Br5c1 ≠ n, Br5c1 ≠ w
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Vr3c1{0 .} ==> Br3c0 ≠ e
B-single: Br3c0 = o
whip[1]: Vr2c5{1 .} ==> Br2c5 ≠ nes, Br2c4 ≠ o, Br2c5 ≠ o, Pr2c5 ≠ o, Pr3c5 ≠ o, Pr3c5 ≠ se, Pr3c5 ≠ ew, Pr3c5 ≠ sw, Br2c4 ≠ n, Br2c4 ≠ s, Br2c4 ≠ w, Br2c4 ≠ ns, Br2c4 ≠ nw, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c5 ≠ n, Br2c5 ≠ e, Br2c5 ≠ s, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se
P-single: Pr2c5 = se
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ w, Br1c5 ≠ e, Br1c5 ≠ n, Br1c5 ≠ nw, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ swn, Br2c4 ≠ ne, Br2c4 ≠ wne, Br2c4 ≠ nes, Br2c5 ≠ ew, Br2c5 ≠ sw, Br2c5 ≠ esw
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0, Nr2c5 ≠ 1
whip[1]: Br2c4{esw .} ==> Nr2c4 ≠ 0
whip[1]: Br1c5{se .} ==> Nr1c5 ≠ 1, Nr1c5 ≠ 3
N-single: Nr1c5 = 2
whip[1]: Pr3c5{nw .} ==> Br3c4 ≠ ne, Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Br3c4{sw .} ==> Pr4c4 ≠ sw
whip[1]: Pr4c4{ew .} ==> Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ esw, Br3c3 ≠ nes, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ nw, Br4c4 ≠ se, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ w, Br4c3 ≠ ne
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 0
whip[1]: Hr1c2{0 .} ==> Br0c2 ≠ s
B-single: Br0c2 = o
whip[1]: Pr1c3{o .} ==> Br1c2 ≠ esw
B-single: Br1c2 = sw
N-single: Nr1c2 = 2
whip[1]: Pr1c5{o .} ==> Br1c5 ≠ ns
B-single: Br1c5 = se
P-single: Pr1c6 = se
whip[1]: Pr1c6{se .} ==> Br1c6 ≠ nes
B-single: Br1c6 = wne
whip[1]: Vr2c4{0 .} ==> Br2c4 ≠ esw, Pr3c4 ≠ ne, Pr3c4 ≠ ns, Br2c3 ≠ ne, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c4 ≠ ew
whip[1]: Br2c4{se .} ==> Nr2c4 ≠ 3
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nw, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c3 ≠ e, Br3c3 ≠ s
whip[1]: Br3c3{wne .} ==> Nr3c3 ≠ 1
whip[1]: Pr2c4{o .} ==> Br2c3 ≠ ns
B-single: Br2c3 = sw
whip[1]: Vr3c3{0 .} ==> Br3c3 ≠ wne, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Pr4c3 ≠ nw, Br3c2 ≠ ew, Br3c2 ≠ esw, Br3c3 ≠ swn
whip[1]: Br3c3{ns .} ==> Nr3c3 ≠ 3
N-single: Nr3c3 = 2
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 3
whip[1]: Vr2c3{1 .} ==> Br2c2 ≠ n
B-single: Br2c2 = ne
N-single: Nr2c2 = 2
whip[1]: Vr9c6{1 .} ==> Br9c6 ≠ ns, Pr9c6 ≠ nw, Pr9c6 ≠ ew, Br9c5 ≠ ns, Br9c5 ≠ nw, Br9c5 ≠ sw, Br9c6 ≠ e, Br9c6 ≠ s, Br9c6 ≠ ne
whip[1]: Br9c6{wne .} ==> Nr9c6 ≠ 1
whip[1]: Pr9c6{sw .} ==> Br8c5 ≠ se, Br8c5 ≠ esw, Br8c5 ≠ nes, Br8c6 ≠ sw
whip[1]: Hr10c6{1 .} ==> Br10c6 ≠ sw, Pr10c7 ≠ ne, Br9c6 ≠ ew, Br9c6 ≠ wne, Br10c6 ≠ s
P-single: Pr10c7 = ew
whip[1]: Pr10c7{ew .} ==> Br9c7 ≠ sw, Br9c7 ≠ swn
whip[1]: Br9c7{ns .} ==> Pr9c7 ≠ ns, Nr9c7 ≠ 3, Pr9c7 ≠ sw
whip[1]: Pr9c7{ew .} ==> Br8c6 ≠ nw, Br8c6 ≠ se, Br8c7 ≠ wne, Br9c7 ≠ s
B-single: Br9c7 = ns
N-single: Nr9c7 = 2
whip[1]: Pr9c8{ew .} ==> Br8c8 ≠ sw, Br8c8 ≠ swn, Br8c8 ≠ e, Br8c8 ≠ ne
whip[1]: Br8c7{nes .} ==> Pr8c7 ≠ nw
whip[1]: Pr8c7{sw .} ==> Br7c7 ≠ sw
whip[1]: Br7c7{ew .} ==> Pr7c8 ≠ o, Pr7c8 ≠ ne
whip[1]: Pr7c8{sw .} ==> Br6c8 ≠ sw, Br6c8 ≠ esw, Br6c8 ≠ swn
whip[1]: Br10c6{swn .} ==> Nr10c6 ≠ 1
whip[1]: Pr10c6{ne .} ==> Br10c6 ≠ swn, Br9c5 ≠ se
B-single: Br10c6 = ns
N-single: Nr10c6 = 2
whip[1]: Vr8c4{1 .} ==> Br8c4 ≠ se, Pr9c4 ≠ ew, Br8c3 ≠ ns, Br8c3 ≠ nw, Br8c3 ≠ sw, Br8c4 ≠ ne, Br8c4 ≠ ns
whip[1]: Br8c3{ew .} ==> Pr9c3 ≠ ne
whip[1]: Pr9c3{sw .} ==> Hr9c3 ≠ 1, Vr8c3 ≠ 1, Br8c2 ≠ se, Br8c2 ≠ ew, Br8c2 ≠ esw, Br8c2 ≠ wne, Br8c2 ≠ nes, Br8c3 ≠ se, Br8c3 ≠ ew, Br9c3 ≠ nw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c3 ≠ nes, Br8c2 ≠ e, Br8c2 ≠ ne, Br9c3 ≠ n, Br9c3 ≠ ne, Br9c3 ≠ ns
V-single: Vr8c3 = 0
H-single: Hr9c3 = 0
B-single: Br8c3 = ne
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ esw, Br7c2 ≠ nes, Br7c3 ≠ nw, Br7c3 ≠ ew, Br7c3 ≠ wne, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ w, Br7c3 ≠ o, Br7c3 ≠ n, Br7c3 ≠ e, Br7c3 ≠ w, Br7c3 ≠ ne
whip[1]: Br7c3{nes .} ==> Nr7c3 ≠ 0
whip[1]: Br7c2{wne .} ==> Nr7c2 ≠ 0
whip[1]: Pr9c4{ns .} ==> Br9c4 ≠ s, Br9c4 ≠ nw, Br9c4 ≠ se, Br9c4 ≠ swn, Br9c4 ≠ wne, Br9c4 ≠ o, Br9c4 ≠ e
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Pr8c4{sw .} ==> Br8c4 ≠ nw, Br7c3 ≠ se, Br7c3 ≠ esw, Br7c3 ≠ nes
whip[1]: Hr6c4{0 .} ==> Br6c4 ≠ nes, Pr6c4 ≠ se, Pr6c4 ≠ ew, Pr6c5 ≠ ew, Pr6c5 ≠ sw, Br5c4 ≠ esw, Br5c4 ≠ swn, Br5c4 ≠ nes, Br6c4 ≠ n, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c4 ≠ swn, Br6c4 ≠ wne
B-single: Br5c4 = wne
P-single: Pr5c4 = se
P-single: Pr5c5 = sw
whip[1]: Pr5c4{se .} ==> Br5c3 ≠ w, Br5c3 ≠ s, Br5c3 ≠ n, Br5c3 ≠ o, Br4c3 ≠ s, Br4c3 ≠ e, Br4c3 ≠ ns, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ sw, Br4c3 ≠ esw, Br4c3 ≠ swn, Br4c4 ≠ ne, Br4c4 ≠ ew, Br4c4 ≠ sw, Br5c3 ≠ ne, Br5c3 ≠ ns, Br5c3 ≠ nw, Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br5c3 ≠ nes
B-single: Br4c4 = ns
H-single: Hr4c4 = 1
P-single: Pr4c5 = ew
H-single: Hr4c5 = 1
V-single: Vr3c5 = 0
whip[1]: Hr4c4{1 .} ==> Br3c4 ≠ ew
whip[1]: Br3c4{sw .} ==> Pr3c5 ≠ ns
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ w, Br3c5 ≠ ew, Br3c5 ≠ sw, Br3c5 ≠ esw
whip[1]: Pr4c5{ew .} ==> Br4c5 ≠ w, Br4c5 ≠ s, Br4c5 ≠ e, Br4c5 ≠ o, Br3c5 ≠ ne, Br3c5 ≠ e, Br3c5 ≠ n, Br3c5 ≠ o, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c5 ≠ esw, Br4c5 ≠ swn, Br4c5 ≠ wne
whip[1]: Br4c5{nes .} ==> Pr4c6 ≠ o, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c5 ≠ 0
whip[1]: Pr4c6{sw .} ==> Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br4c6 ≠ nw
whip[1]: Br4c6{sw .} ==> Pr5c7 ≠ o, Pr5c7 ≠ se
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br5c3{esw .} ==> Pr5c3 ≠ ne, Pr5c3 ≠ se, Pr5c3 ≠ ew, Nr5c3 ≠ 0
whip[1]: Br4c3{nw .} ==> Nr4c3 ≠ 3
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ ns, Br5c5 ≠ ne, Br5c5 ≠ s, Br5c5 ≠ e, Br5c5 ≠ n, Br5c5 ≠ o, Br4c5 ≠ ns, Br4c5 ≠ nes, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br5c5{esw .} ==> Pr5c6 ≠ nw, Pr5c6 ≠ ew, Pr5c6 ≠ sw, Nr5c5 ≠ 0
whip[1]: Br4c5{ne .} ==> Nr4c5 ≠ 3
whip[1]: Pr6c5{ns .} ==> Br6c5 ≠ s, Br6c5 ≠ nw, Br6c5 ≠ se, Br6c5 ≠ swn, Br6c5 ≠ wne, Br6c5 ≠ o, Br6c5 ≠ e
whip[1]: Br6c5{nes .} ==> Nr6c5 ≠ 0
whip[1]: Pr6c4{nw .} ==> Br6c3 ≠ wne, Br6c3 ≠ nes
whip[1]: Br6c3{swn .} ==> Pr6c3 ≠ ne, Pr6c3 ≠ ew, Pr7c3 ≠ o, Pr7c3 ≠ ns, Pr7c3 ≠ nw, Pr7c3 ≠ se, Pr7c3 ≠ ew, Pr7c3 ≠ sw, Pr7c4 ≠ o
P-single: Pr7c4 = nw
P-single: Pr7c3 = ne
whip[1]: Pr7c4{nw .} ==> Br7c3 ≠ s, Br6c4 ≠ s, Br6c4 ≠ e, Br6c4 ≠ o, Br6c3 ≠ swn, Br6c4 ≠ se, Br6c4 ≠ sw, Br6c4 ≠ esw, Br7c3 ≠ sw
B-single: Br6c3 = esw
P-single: Pr6c4 = ns
whip[1]: Pr6c4{ns .} ==> Br5c3 ≠ se, Br5c3 ≠ esw
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 3
whip[1]: Br7c3{swn .} ==> Nr7c3 ≠ 1
whip[1]: Br6c4{ew .} ==> Nr6c4 ≠ 0, Nr6c4 ≠ 3
whip[1]: Pr7c3{ne .} ==> Br6c2 ≠ n, Br6c2 ≠ o, Br6c2 ≠ s, Br6c2 ≠ w, Br6c2 ≠ ns, Br6c2 ≠ nw, Br6c2 ≠ se, Br6c2 ≠ sw, Br6c2 ≠ esw, Br6c2 ≠ swn, Br6c2 ≠ nes, Br7c2 ≠ e, Br7c2 ≠ ne, Br7c2 ≠ ns, Br7c2 ≠ ew, Br7c2 ≠ swn, Br7c2 ≠ wne, Br7c3 ≠ swn
B-single: Br7c3 = ns
N-single: Nr7c3 = 2
P-single: Pr8c3 = ew
H-single: Hr8c2 = 1
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ w, Br8c2 ≠ s, Br8c2 ≠ o, Br8c2 ≠ sw
whip[1]: Br8c2{swn .} ==> Pr8c2 ≠ o, Pr8c2 ≠ ns, Pr8c2 ≠ nw, Pr8c2 ≠ sw, Nr8c2 ≠ 0
whip[1]: Pr8c2{ew .} ==> Br7c1 ≠ se, Br7c1 ≠ esw, Br7c1 ≠ nes, Br8c1 ≠ wne, Br8c1 ≠ nes, Br8c1 ≠ ne
whip[1]: Br7c2{sw .} ==> Pr7c2 ≠ ne, Pr7c2 ≠ se, Pr7c2 ≠ ew, Nr7c2 ≠ 3
whip[1]: Br6c2{wne .} ==> Nr6c2 ≠ 0
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ nw, Br5c2 ≠ se
whip[1]: Hr6c5{0 .} ==> Br6c5 ≠ nes, Pr6c5 ≠ ne, Pr6c6 ≠ nw, Pr6c6 ≠ ew, Pr6c6 ≠ sw, Br5c5 ≠ sw, Br5c5 ≠ esw, Br6c5 ≠ n, Br6c5 ≠ ne, Br6c5 ≠ ns
P-single: Pr6c5 = ns
whip[1]: Pr6c5{ns .} ==> Br6c4 ≠ w
B-single: Br6c4 = ew
N-single: Nr6c4 = 2
whip[1]: Br5c5{ew .} ==> Nr5c5 ≠ 3
whip[1]: Hr7c5{1 .} ==> Br7c5 ≠ sw, Pr7c6 ≠ ns, Pr7c6 ≠ se, Br6c5 ≠ w, Br6c5 ≠ ew, Br7c5 ≠ se, Br7c5 ≠ ew
whip[1]: Br6c5{esw .} ==> Nr6c5 ≠ 1
whip[1]: Pr7c6{sw .} ==> Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn
whip[1]: Pr7c5{ne .} ==> Br7c5 ≠ nw
whip[1]: Pr3c7{se .} ==> Br3c7 ≠ nes, Br3c6 ≠ o, Br3c6 ≠ n, Br3c6 ≠ s, Br3c6 ≠ w, Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ e, Br3c7 ≠ s, Br3c7 ≠ w, Br2c7 ≠ nw, Br2c7 ≠ ew, Br3c6 ≠ ne, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ ew, Br3c7 ≠ sw, Br3c7 ≠ esw
whip[1]: Br3c7{wne .} ==> Pr3c8 ≠ ne, Pr3c8 ≠ ns, Pr4c7 ≠ o, Pr4c7 ≠ se, Pr4c7 ≠ ew, Pr4c7 ≠ sw, Pr4c8 ≠ nw, Nr3c7 ≠ 0, Nr3c7 ≠ 1
whip[1]: Pr4c7{nw .} ==> Br4c6 ≠ ne, Br4c7 ≠ nw, Br4c7 ≠ swn, Br4c7 ≠ wne
whip[1]: Br4c6{sw .} ==> Pr5c6 ≠ o
whip[1]: Pr5c6{se .} ==> Br5c6 ≠ se
whip[1]: Br5c6{sw .} ==> Pr6c7 ≠ nw
whip[1]: Pr3c8{sw .} ==> Br2c7 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ w, Br3c8 ≠ e, Br3c8 ≠ s
B-single: Br2c7 = ns
P-single: Pr2c8 = nw
whip[1]: Pr2c8{nw .} ==> Br1c7 ≠ ew
B-single: Br1c7 = esw
N-single: Nr1c7 = 3
whip[1]: Br3c8{w .} ==> Hr4c8 ≠ 1, Vr3c9 ≠ 1, Pr3c9 ≠ ns, Pr4c8 ≠ ne, Pr4c9 ≠ nw, Pr3c9 ≠ se, Pr3c9 ≠ sw, Pr4c8 ≠ se, Pr4c8 ≠ ew
V-single: Vr3c9 = 0
H-single: Hr4c8 = 0
whip[1]: Vr3c9{0 .} ==> Br3c9 ≠ w, Br3c9 ≠ nw, Br3c9 ≠ ew, Br3c9 ≠ sw, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c9 ≠ wne
whip[1]: Hr4c8{0 .} ==> Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw
whip[1]: Pr5c9{sw .} ==> Br5c9 ≠ nw
whip[1]: Br5c9{w .} ==> Nr5c9 ≠ 2
whip[1]: Pr4c8{sw .} ==> Br4c7 ≠ n, Br4c7 ≠ ns
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ ew, Br4c9 ≠ sw
whip[1]: Br4c9{wne .} ==> Nr4c9 ≠ 2
whip[1]: Br2c8{se .} ==> Nr2c8 ≠ 3
whip[1]: Br3c6{ew .} ==> Nr3c6 ≠ 0, Nr3c6 ≠ 3
whip[1]: Pr11c5{sw .} ==> Br11c4 ≠ ew, Br10c4 ≠ o, Br10c4 ≠ n, Br10c4 ≠ e, Br10c4 ≠ w, Br10c4 ≠ ne, Br11c4 ≠ e, Br10c4 ≠ nw, Br10c4 ≠ se, Br10c4 ≠ ew, Br10c4 ≠ wne, Br10c4 ≠ nes
whip[1]: Br10c4{ns .} ==> Vr10c4 ≠ 1, Pr10c4 ≠ ns, Pr10c4 ≠ se, Pr11c4 ≠ ns, Pr11c4 ≠ nw, Nr10c4 ≠ 0, Nr10c4 ≠ 3, Pr10c4 ≠ sw, Pr11c4 ≠ sw
V-single: Vr10c4 = 0
w[1]-3-in-r12c2-asymmetric-ne-corner ==> Vr12c2 = 1, Vr13c2 = 0, Hr13c1 = 0
w[1]-3-in-r11c1-hit-by-verti-line-at-se ==> Hr12c2 = 0
no-horizontal-line-{r11 r12}c2 ==> Ir11c2 = out
no-vertical-line-r13{c1 c2} ==> Ir13c1 = in
no-horizontal-line-{r12 r13}c1 ==> Ir12c1 = in
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
same-colour-in-{r11 r12}c1 ==> Hr12c1 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r11 r12}c2 ==> Vr11c3 = 0, Hr11c2 = 0
no-horizontal-line-{r10 r11}c2 ==> Ir10c2 = out
no-vertical-line-r11{c2 c3} ==> Ir11c3 = out
same-colour-in-r11{c3 c4} ==> Vr11c4 = 0
w[1]-diagonal-3-2-in-{r12c2...r11c3}-non-closed-ne-corner ==> Hr11c3 = 1
different-colours-in-{r11 r12}c3 ==> Hr12c3 = 1
different-colours-in-r10{c2 c3} ==> Hr10c3 = 1
same-colour-in-r10{c1 c2} ==> Vr10c2 = 0
w[1]-2-in-r10c2-open-sw-corner ==> Hr10c2 = 1, Hr10c3 = 0, Vr9c3 = 0
w[1]-3-in-r11c1-isolated-at-ne-corner ==> Vr11c2 = 1
w[1]-3-in-r11c1-closed-ne-corner ==> Pr12c1 ≠ ne, Pr12c1 ≠ o
P-single: Pr10c2 = ne
H-single: Hr10c1 = 0
V-single: Vr9c2 = 1
P-single: Pr9c3 = o
H-single: Hr9c2 = 0
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = out
vertical-line-r9{c1 c2} ==> Ir9c2 = in
no-vertical-line-r9{c2 c3} ==> Ir9c3 = in
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
no-vertical-line-r8{c2 c3} ==> Ir8c2 = in
horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
no-vertical-line-r7{c2 c3} ==> Ir7c3 = out
no-vertical-line-r7{c3 c4} ==> Ir7c4 = out
no-vertical-line-r7{c4 c5} ==> Ir7c5 = out
horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
no-vertical-line-r4{c4 c5} ==> Ir4c4 = in
no-vertical-line-r4{c3 c4} ==> Ir4c3 = in
no-horizontal-line-{r4 r5}c3 ==> Ir5c3 = in
no-horizontal-line-{r5 r6}c3 ==> Ir6c3 = in
vertical-line-r6{c2 c3} ==> Ir6c2 = out
vertical-line-r6{c3 c4} ==> Ir6c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
horizontal-line-{r3 r4}c4 ==> Ir3c4 = out
no-vertical-line-r3{c4 c5} ==> Ir3c5 = out
no-horizontal-line-{r7 r8}c4 ==> Ir8c4 = out
different-colours-in-r3{c5 c6} ==> Hr3c6 = 1
w[1]-2-in-r4c6-open-nw-corner ==> Hr5c6 = 1, Vr4c7 = 1, Hr5c7 = 0, Vr5c7 = 0
no-vertical-line-r4{c5 c6} ==> Ir4c6 = in
vertical-line-r4{c6 c7} ==> Ir4c7 = out
no-horizontal-line-{r4 r5}c7 ==> Ir5c7 = out
no-vertical-line-r5{c6 c7} ==> Ir5c6 = out
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1
same-colour-in-{r3 r4}c7 ==> Hr4c7 = 0
different-colours-in-{r2 r3}c5 ==> Hr3c5 = 1
w[1]-2-in-r3c4-open-ne-corner ==> Vr3c4 = 1, Hr4c3 = 0
same-colour-in-r9{c0 c1} ==> Vr9c1 = 0
different-colours-in-r12{c0 c1} ==> Hr12c1 = 1
different-colours-in-{r13 r14}c1 ==> Hr14c1 = 1
different-colours-in-r13{c0 c1} ==> Hr13c1 = 1
whip[1]: Vr10c4{0 .} ==> Br10c3 ≠ e, Br10c3 ≠ ne, Br10c3 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ esw, Br10c3 ≠ wne, Br10c3 ≠ nes
whip[1]: Vr12c2{1 .} ==> Br12c1 ≠ o, Pr12c2 ≠ ne, Pr12c2 ≠ ew, Pr13c2 ≠ ew, Br12c1 ≠ n, Br12c1 ≠ s, Br12c1 ≠ w, Br12c1 ≠ ns, Br12c1 ≠ nw, Br12c2 ≠ nes
whip[1]: Br12c1{wne .} ==> Pr13c1 ≠ se, Nr12c1 ≠ 0
whip[1]: Pr13c1{ns .} ==> Br13c1 ≠ swn
whip[1]: Pr13c2{ns .} ==> Br13c2 ≠ nw
whip[1]: Pr12c2{sw .} ==> Br11c1 ≠ esw, Br11c1 ≠ nes, Br12c2 ≠ wne, Br11c2 ≠ s
B-single: Br12c2 = esw
P-single: Pr13c2 = ne
P-single: Pr13c3 = nw
whip[1]: Pr13c2{ne .} ==> Br13c1 ≠ e, Br13c1 ≠ esw, Br13c2 ≠ ew
B-single: Br13c2 = ns
H-single: Hr14c2 = 1
P-single: Pr14c2 = ew
V-single: Vr14c2 = 0
P-single: Pr14c1 = ne
P-single: Pr15c2 = ew
H-single: Hr15c2 = 1
P-single: Pr14c3 = sw
V-single: Vr14c3 = 1
B-single: Br13c1 = sw
N-single: Nr13c1 = 2
P-single: Pr13c1 = ns

LOOP[40]: Vr14c9-Hr15c9-Vr15c10-Hr16c9-Hr16c8-Hr16c7-Hr16c6-Hr16c5-Hr16c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Hr15c2-Vr14c3-Hr14c2-Hr14c1-Vr13c1-Vr12c1-Vr11c1-Hr11c1-Vr11c2-Vr12c2-Hr13c2-Vr12c3-Hr12c3-Vr12c4-Hr13c4-Vr13c5-Hr14c4-Vr14c4-Hr15c4-Hr15c5-Vr14c6-Hr14c6-Vr14c7-Hr15c7-Vr14c8- ==> Hr14c8 = 0
w[1]-diagonal-3-2s-in-{r11c6...r13c8}-non-closed-se-end ==> Vr13c9 = 1
vertical-line-r13{c8 c9} ==> Ir13c8 = in
vertical-line-r14{c2 c3} ==> Ir14c2 = out
same-colour-in-{r12 r13}c8 ==> Hr13c8 = 0
different-colours-in-r13{c7 c8} ==> Hr13c8 = 1
whip[1]: Hr14c2{1 .} ==> Br14c2 ≠ w, Br14c2 ≠ se
B-single: Br14c2 = nes
N-single: Nr14c2 = 3
P-single: Pr15c3 = nw
whip[1]: Pr15c3{nw .} ==> Br15c2 ≠ s, Br14c3 ≠ e
B-single: Br14c3 = ew
N-single: Nr14c3 = 2
B-single: Br15c2 = ns
N-single: Nr15c2 = 2
whip[1]: Pr14c2{ew .} ==> Br14c1 ≠ se
B-single: Br14c1 = ns
whip[1]: Pr14c3{sw .} ==> Br13c3 ≠ w
B-single: Br13c3 = o
N-single: Nr13c3 = 0
whip[1]: Pr13c1{ns .} ==> Br12c1 ≠ e, Br12c1 ≠ ne
whip[1]: Br12c1{wne .} ==> Nr12c1 ≠ 1
whip[1]: Hr14c8{0 .} ==> Pr14c8 ≠ se, Pr14c9 ≠ sw, Br13c8 ≠ ns, Br14c8 ≠ wne
P-single: Pr14c9 = ns
P-single: Pr14c8 = ns
B-single: Br14c8 = ew
N-single: Nr14c8 = 2
B-single: Br13c8 = ew
P-single: Pr13c8 = sw
P-single: Pr13c9 = ns
whip[1]: Pr14c9{ns .} ==> Br13c9 ≠ e
B-single: Br13c9 = ew
N-single: Nr13c9 = 2
whip[1]: Pr14c8{ns .} ==> Br13c7 ≠ n
B-single: Br13c7 = ne
N-single: Nr13c7 = 2
whip[1]: Pr13c8{sw .} ==> Br12c8 ≠ nes
B-single: Br12c8 = ne
N-single: Nr12c8 = 2
whip[1]: Br11c2{w .} ==> Pr11c2 ≠ se, Pr11c3 ≠ sw
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ o, Br10c3 ≠ n
whip[1]: Br10c3{swn .} ==> Nr10c3 ≠ 0
whip[1]: Pr11c2{sw .} ==> Br10c2 ≠ sw
whip[1]: Br11c1{wne .} ==> Pr11c1 ≠ o, Pr11c1 ≠ ne, Pr11c1 ≠ ns, Pr12c1 ≠ se, Pr11c2 ≠ o, Pr11c2 ≠ ns
P-single: Pr12c1 = ns
P-single: Pr11c1 = se
whip[1]: Pr12c1{ns .} ==> Br11c1 ≠ swn, Br12c1 ≠ wne
B-single: Br12c1 = ew
N-single: Nr12c1 = 2
P-single: Pr12c2 = ns
B-single: Br11c1 = wne
P-single: Pr10c3 = sw
P-single: Pr11c2 = sw
w[1]-1-in-r11c2-asymmetric-nw-corner ==> Pr12c3 ≠ ns
P-single: Pr12c3 = se
w[1]-1-in-r11c2-asymmetric-sw-corner ==> Pr11c3 ≠ ew, Pr11c3 ≠ ns
P-single: Pr11c3 = ne
whip[1]: Pr12c2{ns .} ==> Br11c2 ≠ e, Br11c2 ≠ n
B-single: Br11c2 = w
whip[1]: Pr10c3{sw .} ==> Br10c3 ≠ ns, Br10c3 ≠ s, Br10c2 ≠ ns, Br9c3 ≠ w, Br9c3 ≠ s, Br9c2 ≠ ne, Br9c3 ≠ se, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ esw, Br10c2 ≠ ew, Br10c3 ≠ nw, Br10c3 ≠ swn
B-single: Br10c2 = ne
B-single: Br9c2 = sw
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ nw, Br8c1 ≠ se, Br8c1 ≠ esw, Br8c2 ≠ swn, Br9c1 ≠ sw, Br9c1 ≠ swn, Br8c1 ≠ o, Br8c1 ≠ n, Br8c1 ≠ w, Br8c2 ≠ ns, Br9c1 ≠ s, Br9c1 ≠ ns
whip[1]: Br9c1{wne .} ==> Pr10c1 ≠ ne, Pr10c1 ≠ se
whip[1]: Pr10c1{ns .} ==> Br10c1 ≠ ne, Br10c1 ≠ wne, Br10c1 ≠ nes
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 3
whip[1]: Br8c2{nw .} ==> Nr8c2 ≠ 3
whip[1]: Br8c1{swn .} ==> Nr8c1 ≠ 0
whip[1]: Br10c3{sw .} ==> Pr10c4 ≠ nw, Pr10c4 ≠ ew, Nr10c3 ≠ 3
whip[1]: Pr10c4{ne .} ==> Br9c4 ≠ w, Br9c4 ≠ ns, Br9c4 ≠ ew, Br9c4 ≠ nes
whip[1]: Br9c3{e .} ==> Nr9c3 ≠ 2, Nr9c3 ≠ 3
whip[1]: Pr11c2{sw .} ==> Br10c1 ≠ w, Br10c1 ≠ o
whip[1]: Br10c1{sw .} ==> Nr10c1 ≠ 0
whip[1]: Pr12c3{se .} ==> Br11c3 ≠ ne, Br11c3 ≠ ew, Br12c3 ≠ ew
B-single: Br12c3 = wne
N-single: Nr12c3 = 3
P-single: Pr12c4 = sw
B-single: Br11c3 = ns
P-single: Pr11c4 = ew
whip[1]: Pr12c4{sw .} ==> Br11c4 ≠ wne
B-single: Br11c4 = ne
N-single: Nr11c4 = 2
whip[1]: Pr11c4{ew .} ==> Br10c3 ≠ w
B-single: Br10c3 = sw
N-single: Nr10c3 = 2
whip[1]: Pr11c1{se .} ==> Br10c1 ≠ sw
B-single: Br10c1 = s
N-single: Nr10c1 = 1
P-single: Pr10c1 = o
whip[1]: Pr10c1{o .} ==> Br9c1 ≠ ew, Br9c1 ≠ wne
whip[1]: Br9c1{ne .} ==> Pr9c1 ≠ ns, Pr9c1 ≠ se, Nr9c1 ≠ 3
whip[1]: Pr9c1{ne .} ==> Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ ew
whip[1]: Br8c1{swn .} ==> Pr8c1 ≠ ne
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ sw, Br7c1 ≠ swn
whip[1]: Vr3c6{1 .} ==> Pr3c6 ≠ o, Pr4c6 ≠ ew, Pr4c6 ≠ sw, Br3c5 ≠ s, Br3c5 ≠ ns, Br3c6 ≠ e, Br3c6 ≠ se
P-single: Pr5c7 = nw
P-single: Pr4c6 = nw
P-single: Pr3c6 = sw
B-single: Br3c6 = ew
N-single: Nr3c6 = 2
P-single: Pr4c7 = ns
w[1]-1-in-r5c7-symmetric-nw-corner ==> Pr6c8 ≠ se, Pr6c8 ≠ nw, Pr6c8 ≠ o
whip[1]: Pr5c7{nw .} ==> Br5c7 ≠ n, Br4c7 ≠ s, Br4c7 ≠ e, Br4c7 ≠ o, Br4c6 ≠ ns, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c7 ≠ ne, Br4c7 ≠ se, Br4c7 ≠ sw, Br4c7 ≠ esw, Br4c7 ≠ nes, Br5c6 ≠ ne, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c7 ≠ w
B-single: Br4c6 = se
P-single: Pr5c6 = se
whip[1]: Pr5c6{se .} ==> Br5c5 ≠ w, Br4c5 ≠ ne, Br5c6 ≠ ns
B-single: Br5c6 = nw
H-single: Hr6c6 = 0
P-single: Pr6c6 = ns
V-single: Vr6c6 = 1
w[1]-diagonal-3-1-in-{r8c7...r7c6}-open-end ==> Vr8c8 = 1
w[1]-3-in-r7c8-hit-by-verti-line-at-sw ==> Hr8c7 = 0
w[1]-3-in-r8c7-closed-se-corner ==> Pr8c7 ≠ se
P-single: Pr9c4 = ns
H-single: Hr9c4 = 0
V-single: Vr9c4 = 1
P-single: Pr8c5 = se
H-single: Hr8c5 = 1
V-single: Vr8c5 = 1
B-single: Br4c5 = n
N-single: Nr4c5 = 1
B-single: Br5c5 = ew
N-single: Nr5c5 = 2
w[1]-1-in-r7c6-asymmetric-se-corner ==> Pr7c6 ≠ ew
P-single: Pr7c6 = nw
vertical-line-r8{c4 c5} ==> Ir8c5 = in
vertical-line-r9{c3 c4} ==> Ir9c4 = out
no-horizontal-line-{r7 r8}c7 ==> Ir7c7 = in
no-horizontal-line-{r8 r9}c8 ==> Ir8c8 = out
no-vertical-line-r7{c5 c6} ==> Ir7c6 = out
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = out
same-colour-in-{r7 r8}c6 ==> Hr8c6 = 0
P-single: Pr10c5 = nw
H-single: Hr10c4 = 1
V-single: Vr9c5 = 1
different-colours-in-r7{c6 c7} ==> Hr7c7 = 1
different-colours-in-r8{c8 c9} ==> Hr8c9 = 1
w[1]-3-in-r7c8-hit-by-verti-line-at-se ==> Vr7c8 = 1
w[1]-3-in-r8c7-hit-by-verti-line-at-ne ==> Hr8c8 = 0
w[1]-3-in-r7c8-closed-nw-corner ==> Pr8c9 ≠ nw, Pr8c9 ≠ o
no-vertical-line-r6{c7 c8} ==> Ir6c7 = in
different-colours-in-r6{c6 c7} ==> Hr6c7 = 1
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1
same-colour-in-{r8 r9}c5 ==> Hr9c5 = 0
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1

LOOP[70]: Hr8c2-Hr8c3-Vr8c4-Vr9c4-Hr10c4-Vr9c5-Vr8c5-Hr8c5-Vr8c6-Vr9c6-Hr10c6-Hr10c7-Vr10c8-Vr11c8-Hr12c8-Vr12c9-Vr13c9-Vr14c9-Hr15c9-Vr15c10-Hr16c9-Hr16c8-Hr16c7-Hr16c6-Hr16c5-Hr16c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Hr15c2-Vr14c3-Hr14c2-Hr14c1-Vr13c1-Vr12c1-Vr11c1-Hr11c1-Vr11c2-Vr12c2-Hr13c2-Vr12c3-Hr12c3-Vr12c4-Hr13c4-Vr13c5-Hr14c4-Vr14c4-Hr15c4-Hr15c5-Vr14c6-Hr14c6-Vr14c7-Hr15c7-Vr14c8-Vr13c8-Hr13c7-Vr12c7-Vr11c7-Hr11c6-Vr11c6-Hr12c5-Vr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c2-Vr9c2- ==> Vr8c2 = 0
no-vertical-line-r8{c1 c2} ==> Ir8c1 = in
different-colours-in-{r8 r9}c1 ==> Hr9c1 = 1
different-colours-in-r8{c0 c1} ==> Hr8c1 = 1

LOOP[72]: Vr8c1-Hr9c1-Vr9c2-Hr10c2-Vr10c3-Hr11c3-Hr11c4-Vr11c5-Hr12c5-Vr11c6-Hr11c6-Vr11c7-Vr12c7-Hr13c7-Vr13c8-Vr14c8-Hr15c7-Vr14c7-Hr14c6-Vr14c6-Hr15c5-Hr15c4-Vr14c4-Hr14c4-Vr13c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Hr13c2-Vr12c2-Vr11c2-Hr11c1-Vr11c1-Vr12c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Hr16c5-Hr16c6-Hr16c7-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Vr13c9-Vr12c9-Hr12c8-Vr11c8-Vr10c8-Hr10c7-Hr10c6-Vr9c6-Vr8c6-Hr8c5-Vr8c5-Vr9c5-Hr10c4-Vr9c4-Vr8c4-Hr8c3-Hr8c2- ==> Hr8c1 = 0
no-horizontal-line-{r7 r8}c1 ==> Ir7c1 = in
different-colours-in-r7{c1 c2} ==> Hr7c2 = 1
different-colours-in-r7{c0 c1} ==> Hr7c1 = 1

LOOP[74]: Vr7c1-Vr8c1-Hr9c1-Vr9c2-Hr10c2-Vr10c3-Hr11c3-Hr11c4-Vr11c5-Hr12c5-Vr11c6-Hr11c6-Vr11c7-Vr12c7-Hr13c7-Vr13c8-Vr14c8-Hr15c7-Vr14c7-Hr14c6-Vr14c6-Hr15c5-Hr15c4-Vr14c4-Hr14c4-Vr13c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Hr13c2-Vr12c2-Vr11c2-Hr11c1-Vr11c1-Vr12c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Hr16c5-Hr16c6-Hr16c7-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Vr13c9-Vr12c9-Hr12c8-Vr11c8-Vr10c8-Hr10c7-Hr10c6-Vr9c6-Vr8c6-Hr8c5-Vr8c5-Vr9c5-Hr10c4-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2- ==> Hr7c1 = 0
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = in
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1

LOOP[76]: Vr6c1-Vr7c1-Vr8c1-Hr9c1-Vr9c2-Hr10c2-Vr10c3-Hr11c3-Hr11c4-Vr11c5-Hr12c5-Vr11c6-Hr11c6-Vr11c7-Vr12c7-Hr13c7-Vr13c8-Vr14c8-Hr15c7-Vr14c7-Hr14c6-Vr14c6-Hr15c5-Hr15c4-Vr14c4-Hr14c4-Vr13c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Hr13c2-Vr12c2-Vr11c2-Hr11c1-Vr11c1-Vr12c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Hr16c5-Hr16c6-Hr16c7-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Vr13c9-Vr12c9-Hr12c8-Vr11c8-Vr10c8-Hr10c7-Hr10c6-Vr9c6-Vr8c6-Hr8c5-Vr8c5-Vr9c5-Hr10c4-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Vr6c2- ==> Hr6c1 = 0
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = in
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1

LOOP[78]: Hr5c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Hr9c1-Vr9c2-Hr10c2-Vr10c3-Hr11c3-Hr11c4-Vr11c5-Hr12c5-Vr11c6-Hr11c6-Vr11c7-Vr12c7-Hr13c7-Vr13c8-Vr14c8-Hr15c7-Vr14c7-Hr14c6-Vr14c6-Hr15c5-Hr15c4-Vr14c4-Hr14c4-Vr13c5-Hr13c4-Vr12c4-Hr12c3-Vr12c3-Hr13c2-Vr12c2-Vr11c2-Hr11c1-Vr11c1-Vr12c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Hr16c5-Hr16c6-Hr16c7-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Vr13c9-Vr12c9-Hr12c8-Vr11c8-Vr10c8-Hr10c7-Hr10c6-Vr9c6-Vr8c6-Hr8c5-Vr8c5-Vr9c5-Hr10c4-Vr9c4-Vr8c4-Hr8c3-Hr8c2-Vr7c2-Vr6c2- ==> Vr5c2 = 0
w[1]-diagonal-3-2-in-{r6c3...r5c2}-non-closed-nw-corner ==> Hr5c2 = 1
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
horizontal-line-{r4 r5}c2 ==> Ir4c2 = out
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
same-colour-in-r4{c1 c2} ==> Vr4c2 = 0
different-colours-in-{r3 r4}c2 ==> Hr4c2 = 1
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
whip[1]: Hr6c6{0 .} ==> Br6c6 ≠ n, Br6c6 ≠ ne, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ wne, Br6c6 ≠ nes
whip[1]: Br6c6{ew .} ==> Nr6c6 ≠ 3
whip[1]: Pr6c6{ns .} ==> Br6c6 ≠ e, Br6c6 ≠ o, Br6c5 ≠ sw, Br6c6 ≠ s, Br6c6 ≠ se
B-single: Br6c5 = esw
N-single: Nr6c5 = 3
whip[1]: Br6c6{ew .} ==> Pr7c7 ≠ ew, Pr7c7 ≠ sw, Nr6c6 ≠ 0
whip[1]: Pr7c7{ns .} ==> Br6c6 ≠ w, Br6c7 ≠ s, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ nes, Br7c7 ≠ nw, Br7c7 ≠ se, Br6c7 ≠ o, Br6c7 ≠ n, Br6c7 ≠ e, Br7c6 ≠ n
B-single: Br6c6 = ew
N-single: Nr6c6 = 2
P-single: Pr6c7 = se
w[1]-1-in-r5c7-asymmetric-sw-corner ==> Pr5c8 ≠ ew, Pr5c8 ≠ se, Pr5c8 ≠ nw, Pr5c8 ≠ ns
P-single: Pr4c9 = o
H-single: Hr4c9 = 0
V-single: Vr4c9 = 0
w[1]-2-in-r4c8-open-ne-corner ==> Hr5c8 = 1, Vr4c8 = 1, Vr5c8 = 0
P-single: Pr5c8 = ne
no-vertical-line-r5{c7 c8} ==> Ir5c8 = out
horizontal-line-{r4 r5}c8 ==> Ir4c8 = in
no-vertical-line-r4{c8 c9} ==> Ir4c9 = in
no-horizontal-line-{r3 r4}c9 ==> Ir3c9 = in
no-vertical-line-r3{c8 c9} ==> Ir3c8 = in
same-colour-in-{r2 r3}c8 ==> Hr3c8 = 0
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
different-colours-in-r3{c9 c10} ==> Hr3c10 = 1
same-colour-in-{r4 r5}c9 ==> Hr5c9 = 0
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1

LOOP[8]: Vr3c10-Vr4c10-Hr5c10-Vr4c11-Hr4c11-Vr3c12-Hr3c11- ==> Hr3c10 = 0
w[0]-adjacent-3-in-r3c11-nolines-west ==> Vr2c11 = 1
vertical-line-r2{c10 c11} ==> Ir2c10 = out
different-colours-in-{r1 r2}c10 ==> Hr2c10 = 1
no-vertical-line-r2{c9 c10} ==> Ir2c9 = out
different-colours-in-{r2 r3}c9 ==> Hr3c9 = 1
different-colours-in-r2{c8 c9} ==> Hr2c9 = 1
different-colours-in-r5{c8 c9} ==> Hr5c9 = 1

LOOP[242]: Vr5c9-Hr5c8-Vr4c8-Vr3c8-Hr3c7-Vr3c7-Vr4c7-Hr5c6-Vr5c6-Vr6c6-Hr7c5-Vr6c5-Vr5c5-Hr5c4-Vr5c4-Vr6c4-Hr7c3-Vr6c3-Hr6c2-Vr6c2-Vr7c2-Hr8c2-Hr8c3-Vr8c4-Vr9c4-Hr10c4-Vr9c5-Vr8c5-Hr8c5-Vr8c6-Vr9c6-Hr10c6-Hr10c7-Vr10c8-Vr11c8-Hr12c8-Vr12c9-Vr13c9-Vr14c9-Hr15c9-Vr15c10-Hr16c9-Hr16c8-Hr16c7-Hr16c6-Hr16c5-Hr16c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Hr15c2-Vr14c3-Hr14c2-Hr14c1-Vr13c1-Vr12c1-Vr11c1-Hr11c1-Vr11c2-Vr12c2-Hr13c2-Vr12c3-Hr12c3-Vr12c4-Hr13c4-Vr13c5-Hr14c4-Vr14c4-Hr15c4-Hr15c5-Vr14c6-Hr14c6-Vr14c7-Hr15c7-Vr14c8-Vr13c8-Hr13c7-Vr12c7-Vr11c7-Hr11c6-Vr11c6-Hr12c5-Vr11c5-Hr11c4-Hr11c3-Vr10c3-Hr10c2-Vr9c2-Hr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Hr5c1-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Hr3c1-Vr2c1-Vr1c1-Hr1c1-Vr1c2-Hr2c2-Vr2c3-Hr3c3-Vr3c4-Hr4c4-Hr4c5-Vr3c6-Hr3c5-Vr2c5-Hr2c5-Vr1c6-Hr1c6-Vr1c7-Hr2c7-Vr1c8-Hr1c8-Vr1c9-Vr2c9-Hr3c9-Vr3c10-Vr4c10-Hr5c10-Vr4c11-Hr4c11-Vr3c12-Hr3c11-Vr2c11-Hr2c10-Vr1c10-Hr1c10-Hr1c11-Vr1c12-Hr2c12-Hr2c13-Vr1c14-Hr1c14-Hr1c15-Vr1c16-Vr2c16-Vr3c16-Vr4c16-Vr5c16-Hr6c15-Vr5c15-Vr4c15-Vr3c15-Hr3c14-Hr3c13-Vr3c13-Hr4c13-Vr4c14-Hr5c13-Hr5c12-Vr5c12-Hr6c11-Hr6c10-Vr6c10-Vr7c10-Hr8c10-Vr8c11-Hr9c10-Vr9c10-Hr10c10-Vr10c11-Hr11c11-Hr11c12-Vr10c13-Hr10c12-Vr9c12-Hr9c12-Hr9c13-Vr8c14-Hr8c13-Hr8c12-Vr7c12-Hr7c12-Vr6c13-Hr6c13-Vr6c14-Hr7c14-Vr7c15-Hr8c15-Vr8c16-Hr9c15-Vr9c15-Hr10c14-Vr10c14-Vr11c14-Hr12c13-Hr12c12-Hr12c11-Vr12c11-Hr13c11-Hr13c12-Hr13c13-Hr13c14-Vr12c15-Vr11c15-Hr11c15-Vr11c16-Vr12c16-Vr13c16-Vr14c16-Vr15c16-Hr16c15-Vr15c15-Vr14c15-Hr14c14-Vr14c14-Vr15c14-Hr16c13-Vr15c13-Vr14c13-Hr14c12-Vr14c12-Vr15c12-Hr16c11-Vr15c11-Vr14c11-Hr14c10-Vr13c10-Vr12c10-Vr11c10-Hr11c9-Vr10c9-Vr9c9-Vr8c9-Vr7c9-Hr7c8-Vr7c8-Vr8c8-Hr9c7-Vr8c7-Vr7c7-Vr6c7-Hr6c7- ==> Hr6c8 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XOOOOXOXOXXOOXX
XXOOXXXXOOXXXXX
OXXOOXOXXOOXOOX
OOXXXXOXXOXXXOX
XXXOXOOOXXXOOOX
XOXOXOXXXOOOXOO
XOOOOOXOXOOXXXO
XXXOXOXOXXOOOXX
OXXOXOOOXOOXXXO
OOXXXXXOXXOOXOO
XOOOXOXOOXXXXOX
XOXOOOXXOXOOOOX
XXXXOOOXOXXXXXX
OOXOOXOXOOXOXOX
XXXXXXXXXOXOXOX

.———.   .   .   .   .———.   .———.   .———.———.   .   .———.———.
| 3 |     0   0     | 3 |   | 3 |   |     2 | 2     | 2     |
.   .———.   .   .———.   .———.   .   .———.   .———.———.   .   .
| 2     | 2     |     0   2     |       |     1       1   1 |
.———.   .———.   .———.   .———.   .———.   .———.   .———.———.   .
  2 |       | 2     |   |   | 1     |     3 |   |       |   |
.   .———.   .———.———.   .   .   .   .   .———.   .———.   .   .
        |     2       2 |   | 2     |   |         3 | 2 |   |
.———.———.   .———.   .———.   .———.   .———.   .———.———.   .   .
|     2     | 3 |   | 2   1     |     2     | 2   2     | 3 |
.   .———.   .   .   .   .———.———.   .———.———.   .———.   .———.
|   |   | 3 |   |   |   |           | 2   1     | 3 |
.   .   .———.   .———.   .   .———.   .   .   .———.   .———.   .
|   |         0   2   1 | 2 | 3 |   |     1 | 3   1     |
.   .———.———.   .———.   .   .   .   .———.   .———.———.   .———.
|         2 | 2 |   | 2 | 3 |   |     3 |         3 | 1   3 |
.———.   .   .   .   .   .———.   .   .———.   .———.———.   .———.
    | 2     |   | 2 |           |   | 3     | 3       2 |
.   .———.   .———.   .———.———.   .   .———.   .———.   .———.   .
      2 |         0         |   | 2     |       |   |     1
.———.   .———.———.   .———.   .   .———.   .———.———.   .   .———.
| 3 | 1   2     | 3 |   |   | 2   2 |               |   |   |
.   .   .———.   .———.   .   .———.   .   .———.———.———.   .   .
|   | 3 |   |           |       |   |   | 3       2   2 | 2 |
.   .———.   .———.   .   .———.   .   .   .———.———.———.———.   .
|     2       3 |           | 2 |   | 2                   1 |
.———.———.   .———.   .———.   .   .   .———.   .———.   .———.   .
        |   | 3     | 3 | 3 |   | 2     | 2 | 3 |   | 3 |   |
.———.———.   .———.———.   .———.   .———.   .   .   .   .   .   .
| 3       1           1           3 |   |   |   | 3 |   | 3 |
.———.———.———.———.———.———.———.———.———.   .———.   .———.   .———.

init-time = 29m 52.98s, solve-time = 32m 5.9s, total-time = 1h 1m 58.88s
nb-facts=<Fact-432250>
Quasi-Loop max length = 242
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


9.75 GB
