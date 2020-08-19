
(solve
15 15
. . 2 . . 2 . . 2 3 1 2 . 3 . 
. 3 . . . 2 . . 2 3 1 . . . .
. . 2 . . 1 1 3 . . . 1 . . . 
1 3 . 1 2 . 2 2 2 2 1 2 . . . 
. . . . . . . . . . . 2 2 . . 
2 3 3 . . 1 . 2 . 1 . . . 2 2 
. 2 . . 2 . 1 . 2 . . 3 . . . 
3 . 2 3 . . . 3 . 3 . . 2 1 . 
. . 3 . 1 2 1 . . 1 2 . 3 . . 
. 2 2 . . 2 . 2 . . . 2 . . 3
2 . . . . 2 . 2 2 2 . . . 3 . 
2 . 3 . 3 . . 2 . 2 2 . 2 . . 
3 . 1 . 2 1 2 2 2 . . . 3 . 3
. 3 . 3 . . . 2 3 . 2 2 2 . . 
. 2 . . . . 2 . . 2 3 . 3 . 3
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 . . 2 . . 2 3 1 2 . 3 .
. 3 . . . 2 . . 2 3 1 . . . .
. . 2 . . 1 1 3 . . . 1 . . .
1 3 . 1 2 . 2 2 2 2 1 2 . . .
. . . . . . . . . . . 2 2 . .
2 3 3 . . 1 . 2 . 1 . . . 2 2
. 2 . . 2 . 1 . 2 . . 3 . . .
3 . 2 3 . . . 3 . 3 . . 2 1 .
. . 3 . 1 2 1 . . 1 2 . 3 . .
. 2 2 . . 2 . 2 . . . 2 . . 3
2 . . . . 2 . 2 2 2 . . . 3 .
2 . 3 . 3 . . 2 . 2 2 . 2 . .
3 . 1 . 2 1 2 2 2 . . . 3 . 3
. 3 . 3 . . . 2 3 . 2 2 2 . .
. 2 . . . . 2 . . 2 3 . 3 . 3

start init-grid-structure 0.0292329788208008
start create-csp-variables
start create-labels 0.00372219085693359
start init-physical-csp-links 0.0320150852203369
start init-physical-non-csp-links 47.7921481132507
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 17.4557738304138
     start init-physical-BN-non-csp-links at local time 77.511195898056
     start init-physical-BP-non-csp-links at local time 181.483633995056
     end init-physical-BP-non-csp-links at local time 1938.82772994041
end init-physical-non-csp-links 1986.61993098259
start init-corner-B-c-values 1986.64946913719
start init-outer-B-candidates 1986.64952707291
start init-outer-I-candidates 1986.65043711662
start init-H-candidates 1986.65107703209
start init-V-candidates 1986.65773320198
start init-P-candidates 1986.66407203674
start init-inner-I-candidates 1986.678565979
start init-inner-N-and-B-candidates 1986.68310809135
start solution 1986.71241998672
entering BRT
w[1]-3-in-se-corner ==> Vr15c16 = 1, Hr16c15 = 1
H-single: Hr16c15 = 1
V-single: Vr15c16 = 1
w[1]-diagonal-3s-in-{r13c1...r14c2} ==> Vr14c3 = 1, Vr13c1 = 1, Hr15c2 = 1, Hr13c1 = 1, Vr15c3 = 0, Vr12c1 = 0, Hr15c3 = 0
H-single: Hr15c3 = 0
V-single: Vr12c1 = 0
V-single: Vr15c3 = 0
H-single: Hr13c1 = 1
H-single: Hr15c2 = 1
V-single: Vr13c1 = 1
V-single: Vr14c3 = 1
w[1]-diagonal-3s-in-{r10c15...r11c14} ==> Vr10c16 = 1, Vr11c14 = 1, Hr12c14 = 1, Hr10c15 = 1, Vr9c16 = 0, Vr12c14 = 0, Hr12c13 = 0
H-single: Hr12c13 = 0
V-single: Vr12c14 = 0
V-single: Vr9c16 = 0
H-single: Hr10c15 = 1
H-single: Hr12c14 = 1
V-single: Vr11c14 = 1
V-single: Vr10c16 = 1
w[1]-2-in-r12c13-open-ne-corner ==> Hr13c13 = 1, Vr12c13 = 1, Hr13c12 = 0, Vr13c13 = 0
V-single: Vr13c13 = 0
H-single: Hr13c12 = 0
V-single: Vr12c13 = 1
H-single: Hr13c13 = 1
w[1]-diagonal-3s-in-{r8c4...r9c3} ==> Vr8c5 = 1, Vr9c3 = 1, Hr10c3 = 1, Hr8c4 = 1, Vr7c5 = 0, Vr10c3 = 0, Hr10c2 = 0, Hr8c5 = 0
H-single: Hr8c5 = 0
H-single: Hr10c2 = 0
V-single: Vr10c3 = 0
V-single: Vr7c5 = 0
H-single: Hr8c4 = 1
H-single: Hr10c3 = 1
V-single: Vr9c3 = 1
V-single: Vr8c5 = 1
w[1]-2-in-r7c5-open-sw-corner ==> Hr7c5 = 1, Vr7c6 = 1, Hr7c6 = 0, Vr6c6 = 0
V-single: Vr6c6 = 0
H-single: Hr7c6 = 0
V-single: Vr7c6 = 1
H-single: Hr7c5 = 1
w[1]-2-in-r10c2-open-ne-corner ==> Hr11c2 = 1, Vr10c2 = 1, Hr11c1 = 0, Vr11c2 = 0
V-single: Vr11c2 = 0
H-single: Hr11c1 = 0
V-single: Vr10c2 = 1
H-single: Hr11c2 = 1
w[1]-2-in-r11c1-open-ne-corner ==> Hr12c1 = 1, Vr11c1 = 1
V-single: Vr11c1 = 1
H-single: Hr12c1 = 1
w[1]-diagonal-3-2-3-in-{r1c10...r3c8} ==> Vr1c11 = 1, Vr3c8 = 1, Hr4c8 = 1, Hr1c10 = 1, Vr4c8 = 0, Hr4c7 = 0, Hr1c11 = 0
H-single: Hr1c11 = 0
H-single: Hr4c7 = 0
V-single: Vr4c8 = 0
H-single: Hr1c10 = 1
H-single: Hr4c8 = 1
V-single: Vr3c8 = 1
V-single: Vr1c11 = 1
w[1]-2-in-r4c7-open-ne-corner ==> Hr5c7 = 1, Vr4c7 = 1, Hr5c6 = 0, Vr5c7 = 0
V-single: Vr5c7 = 0
H-single: Hr5c6 = 0
V-single: Vr4c7 = 1
H-single: Hr5c7 = 1
w[1]-diagonal-3-2-3-in-{r6c3...r8c1} ==> Vr6c4 = 1, Vr8c1 = 1, Hr9c1 = 1, Hr6c3 = 1, Vr5c4 = 0, Vr9c1 = 0, Hr6c4 = 0
H-single: Hr6c4 = 0
V-single: Vr9c1 = 0
V-single: Vr5c4 = 0
H-single: Hr6c3 = 1
H-single: Hr9c1 = 1
V-single: Vr8c1 = 1
V-single: Vr6c4 = 1
w[1]-diagonal-3-2-3-in-{r13c13...r15c11} ==> Vr13c14 = 1, Vr15c11 = 1, Hr16c11 = 1, Hr16c10 = 0, Hr13c14 = 0
H-single: Hr13c14 = 0
H-single: Hr16c10 = 0
H-single: Hr16c11 = 1
V-single: Vr15c11 = 1
V-single: Vr13c14 = 1
w[1]-diagonal-3-2-in-{r14c9...r15c10}-non-closed-se-corner ==> Vr14c9 = 1, Hr14c9 = 1, Vr13c9 = 0, Hr14c8 = 0
H-single: Hr14c8 = 0
V-single: Vr13c9 = 0
H-single: Hr14c9 = 1
V-single: Vr14c9 = 1
w[1]-2-in-r13c8-open-se-corner ==> Hr13c8 = 1, Vr13c8 = 1, Hr13c7 = 0, Vr12c8 = 0
V-single: Vr12c8 = 0
H-single: Hr13c7 = 0
V-single: Vr13c8 = 1
H-single: Hr13c8 = 1
w[1]-3-in-r13c13-hit-by-verti-line-at-nw ==> Hr14c13 = 1
H-single: Hr14c13 = 1
V-single: Vr14c14 = 0
H-single: Hr14c14 = 0
w[1]-3-in-r6c2-hit-by-horiz-line-at-ne ==> Vr6c2 = 1, Hr7c2 = 1, Vr5c3 = 0
V-single: Vr5c3 = 0
H-single: Hr7c2 = 1
V-single: Vr6c2 = 1
V-single: Vr7c2 = 0
H-single: Hr7c1 = 0
w[1]-diagonal-3-2-in-{r6c3...r7c2}-non-closed-sw-corner ==> Hr8c2 = 1
H-single: Hr8c2 = 1
w[1]-3-in-r6c3-hit-by-horiz-line-at-sw ==> Vr7c3 = 0
V-single: Vr7c3 = 0
w[1]-3-in-r2c10-hit-by-verti-line-at-ne ==> Vr2c10 = 1, Hr3c10 = 1, Hr2c11 = 0
H-single: Hr2c11 = 0
H-single: Hr3c10 = 1
V-single: Vr2c10 = 1
V-single: Vr3c10 = 0
H-single: Hr3c9 = 0
w[1]-diagonal-3-2-in-{r1c10...r2c9}-non-closed-sw-corner ==> Vr2c9 = 1
V-single: Vr2c9 = 1
w[1]-3-in-r1c10-hit-by-verti-line-at-sw ==> Hr2c9 = 0
H-single: Hr2c9 = 0
w[1]-adjacent-1-3-on-edge-in-r1{c11 c10} ==> Vr1c12 = 0
V-single: Vr1c12 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-r3{c7 c8} ==> Vr3c7 = 0, Hr3c7 = 0
H-single: Hr3c7 = 0
V-single: Vr3c7 = 0
w[1]-3-in-r15c15-closed-se-corner ==> Pr15c15 ≠ se, Pr15c15 ≠ nw, Pr15c15 ≠ o
w[1]-3-in-r15c11-closed-sw-corner ==> Pr15c12 ≠ sw, Pr15c12 ≠ ne, Pr15c12 ≠ o
w[1]-3-in-r14c9-closed-nw-corner ==> Pr15c10 ≠ se
w[1]-3-in-r14c2-closed-se-corner ==> Pr14c2 ≠ se, Pr14c2 ≠ nw, Pr14c2 ≠ o
w[1]-3-in-r13c13-closed-se-corner ==> Pr13c13 ≠ se, Pr13c13 ≠ nw
w[1]-3-in-r11c14-closed-sw-corner ==> Pr11c15 ≠ sw, Pr11c15 ≠ ne, Pr11c15 ≠ o
w[1]-3-in-r9c3-closed-sw-corner ==> Pr9c4 ≠ sw, Pr9c4 ≠ ne
w[1]-3-in-r6c2-closed-sw-corner ==> Pr6c3 ≠ sw, Pr6c3 ≠ ne, Pr6c3 ≠ o
w[1]-3-in-r2c10-closed-sw-corner ==> Pr2c11 ≠ sw, Pr2c11 ≠ ne, Pr2c11 ≠ o
adjacent-3s-in-r6{c2 c3} ==> Vr6c3 = 1
V-single: Vr6c3 = 1
H-single: Hr6c2 = 0
H-single: Hr7c3 = 0
w[1]-3-in-r6c2-closed-se-corner ==> Pr6c2 ≠ se, Pr6c2 ≠ nw
w[1]-3-in-r6c3-closed-nw-corner ==> Pr7c4 ≠ se, Pr7c4 ≠ nw, Pr7c4 ≠ o
adjacent-3s-in-c10{r1 r2} ==> Hr2c10 = 1
H-single: Hr2c10 = 1
V-single: Vr2c11 = 0
V-single: Vr1c10 = 0
w[1]-2-in-r1c9-open-se-corner ==> Hr1c9 = 1, Vr1c9 = 1, Hr1c8 = 0
H-single: Hr1c8 = 0
V-single: Vr1c9 = 1
H-single: Hr1c9 = 1
w[1]-diagonal-1-1-in-{r2c11...r3c12}-with-no-nw-outer-sides ==> Hr4c12 = 0, Vr3c13 = 0
V-single: Vr3c13 = 0
H-single: Hr4c12 = 0
w[1]-3-in-r1c10-closed-se-corner ==> Pr1c10 ≠ se
w[1]-3-in-r2c10-closed-nw-corner ==> Pr3c11 ≠ se, Pr3c11 ≠ nw, Pr3c11 ≠ o
P-single: Pr1c10 = ew
w[1]-1-in-r3c6-asymmetric-se-corner ==> Pr3c6 ≠ sw, Pr3c6 ≠ ew, Pr3c6 ≠ ns, Pr3c6 ≠ ne
w[1]-1-in-r1c11-asymmetric-sw-corner ==> Pr1c12 ≠ ew
entering level Loop with <Fact-198108>
entering level Col with <Fact-198200>
vertical-line-r15{c15 c16} ==> Ir15c15 = in
I-single: Ir15c15 = in
vertical-line-r10{c15 c16} ==> Ir10c15 = in
I-single: Ir10c15 = in
horizontal-line-{r9 r10}c15 ==> Ir9c15 = out
I-single: Ir9c15 = out
vertical-line-r13{c0 c1} ==> Ir13c1 = in
I-single: Ir13c1 = in
horizontal-line-{r12 r13}c1 ==> Ir12c1 = out
I-single: Ir12c1 = out
horizontal-line-{r11 r12}c1 ==> Ir11c1 = in
I-single: Ir11c1 = in
no-vertical-line-r11{c1 c2} ==> Ir11c2 = in
I-single: Ir11c2 = in
horizontal-line-{r10 r11}c2 ==> Ir10c2 = out
I-single: Ir10c2 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
I-single: Ir10c3 = out
horizontal-line-{r9 r10}c3 ==> Ir9c3 = in
I-single: Ir9c3 = in
vertical-line-r9{c2 c3} ==> Ir9c2 = out
I-single: Ir9c2 = out
vertical-line-r10{c1 c2} ==> Ir10c1 = in
I-single: Ir10c1 = in
no-vertical-line-r9{c0 c1} ==> Ir9c1 = out
I-single: Ir9c1 = out
horizontal-line-{r8 r9}c1 ==> Ir8c1 = in
I-single: Ir8c1 = in
horizontal-line-{r15 r16}c11 ==> Ir15c11 = in
I-single: Ir15c11 = in
vertical-line-r15{c10 c11} ==> Ir15c10 = out
I-single: Ir15c10 = out
no-horizontal-line-{r0 r1}c11 ==> Ir1c11 = out
I-single: Ir1c11 = out
no-vertical-line-r1{c11 c12} ==> Ir1c12 = out
I-single: Ir1c12 = out
no-horizontal-line-{r1 r2}c11 ==> Ir2c11 = out
I-single: Ir2c11 = out
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
I-single: Ir2c10 = out
vertical-line-r2{c9 c10} ==> Ir2c9 = in
I-single: Ir2c9 = in
no-horizontal-line-{r1 r2}c9 ==> Ir1c9 = in
I-single: Ir1c9 = in
no-vertical-line-r1{c9 c10} ==> Ir1c10 = in
I-single: Ir1c10 = in
vertical-line-r1{c8 c9} ==> Ir1c8 = out
I-single: Ir1c8 = out
no-horizontal-line-{r2 r3}c9 ==> Ir3c9 = in
I-single: Ir3c9 = in
no-vertical-line-r3{c9 c10} ==> Ir3c10 = in
I-single: Ir3c10 = in
vertical-line-r2{c8 c9} ==> Ir2c8 = out
I-single: Ir2c8 = out
same-colour-in-{r1 r2}c8 ==> Hr2c8 = 0
H-single: Hr2c8 = 0
same-colour-in-{r0 r1}c12 ==> Hr1c12 = 0
H-single: Hr1c12 = 0
w[1]-2-in-r1c12-open-nw-corner ==> Hr2c12 = 1, Vr1c13 = 1, Hr2c13 = 0, Vr2c13 = 0
V-single: Vr2c13 = 0
H-single: Hr2c13 = 0
V-single: Vr1c13 = 1
H-single: Hr2c12 = 1
w[1]-1-in-r2c11-asymmetric-ne-corner ==> Pr3c11 ≠ ew, Pr3c11 ≠ ns
horizontal-line-{r1 r2}c12 ==> Ir2c12 = in
I-single: Ir2c12 = in
no-vertical-line-r2{c12 c13} ==> Ir2c13 = in
I-single: Ir2c13 = in
no-horizontal-line-{r1 r2}c13 ==> Ir1c13 = in
I-single: Ir1c13 = in
different-colours-in-{r0 r1}c13 ==> Hr1c13 = 1
H-single: Hr1c13 = 1
w[1]-3-in-r1c14-hit-by-horiz-line-at-nw ==> Vr1c15 = 1, Hr2c14 = 1
H-single: Hr2c14 = 1
V-single: Vr1c15 = 1
V-single: Vr2c15 = 0
H-single: Hr2c15 = 0
w[1]-3-in-r1c14-closed-se-corner ==> Pr1c14 ≠ se, Pr1c14 ≠ o
different-colours-in-r2{c11 c12} ==> Hr2c12 = 1
V-single: Vr2c12 = 1
same-colour-in-r9{c1 c2} ==> Vr9c2 = 0
V-single: Vr9c2 = 0
different-colours-in-{r9 r10}c1 ==> Hr10c1 = 1
H-single: Hr10c1 = 1
different-colours-in-r10{c0 c1} ==> Hr10c1 = 1
V-single: Vr10c1 = 1
Starting_init_links_with_<Fact-198418>
5667 candidates, 19107 csp-links and 79745 links. Density = 0.5%
starting non trivial part of solution
Entering_level_W1_with_<Fact-396127>
whip[1]: Vr10c1{1 .} ==> Br10c1 ≠ nes, Br10c0 ≠ o, Br10c1 ≠ o, Pr10c1 ≠ o, Pr10c1 ≠ ne, Br10c1 ≠ n, Br10c1 ≠ e, Br10c1 ≠ s, Br10c1 ≠ ne, Br10c1 ≠ ns, Br10c1 ≠ se
B-single: Br10c0 = e
whip[1]: Br10c1{wne .} ==> Nr10c1 ≠ 0
whip[1]: Pr10c1{se .} ==> Br9c1 ≠ ne, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c1 ≠ swn, Br9c1 ≠ o, Br9c1 ≠ n, Br9c1 ≠ e
whip[1]: Br9c1{nes .} ==> Nr9c1 ≠ 0
whip[1]: Hr10c1{1 .} ==> Br10c1 ≠ esw, Pr10c1 ≠ ns, Pr10c2 ≠ ne, Pr10c2 ≠ ns, Br9c1 ≠ w, Br9c1 ≠ nw, Br9c1 ≠ ew, Br9c1 ≠ wne, Br10c1 ≠ w, Br10c1 ≠ ew, Br10c1 ≠ sw
P-single: Pr10c1 = se
whip[1]: Br10c1{wne .} ==> Pr11c2 ≠ nw, Nr10c1 ≠ 1
whip[1]: Pr11c2{ew .} ==> Br11c2 ≠ se, Br10c2 ≠ ne, Br11c1 ≠ ne, Br11c2 ≠ o, Br11c2 ≠ e, Br11c2 ≠ s
whip[1]: Br11c2{nes .} ==> Nr11c2 ≠ 0
whip[1]: Br9c1{nes .} ==> Pr9c1 ≠ ns, Pr9c1 ≠ se
whip[1]: Pr9c1{ne .} ==> Br8c1 ≠ wne, Br8c1 ≠ nes
whip[1]: Br8c1{swn .} ==> Pr8c1 ≠ o, Pr8c1 ≠ ne, Pr9c1 ≠ o, Pr9c2 ≠ o, Pr9c2 ≠ ne, Pr9c2 ≠ ns, Pr9c2 ≠ se
P-single: Pr9c1 = ne
whip[1]: Pr9c1{ne .} ==> Br9c1 ≠ s, Br9c1 ≠ se
whip[1]: Br9c1{nes .} ==> Nr9c1 ≠ 1
whip[1]: Pr9c2{sw .} ==> Br8c2 ≠ sw, Br8c2 ≠ esw, Br8c2 ≠ swn, Br9c2 ≠ nw, Br9c2 ≠ swn, Br9c2 ≠ wne
whip[1]: Pr8c1{se .} ==> Br7c1 ≠ ne, Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ swn, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e
whip[1]: Br7c1{nes .} ==> Nr7c1 ≠ 0
whip[1]: Pr10c2{sw .} ==> Br9c1 ≠ nes, Br9c2 ≠ ew, Br9c2 ≠ sw, Br9c2 ≠ esw, Br10c2 ≠ nw, Br10c2 ≠ se, Br9c2 ≠ w
B-single: Br9c1 = ns
N-single: Nr9c1 = 2
whip[1]: Pr9c2{ew .} ==> Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ e, Br8c2 ≠ ne
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 0
whip[1]: Vr2c12{1 .} ==> Br2c12 ≠ nes, Br2c12 ≠ o, Pr2c12 ≠ nw, Pr2c12 ≠ ew, Pr3c12 ≠ o, Pr3c12 ≠ se, Pr3c12 ≠ ew, Pr3c12 ≠ sw, Br2c11 ≠ n, Br2c11 ≠ s, Br2c11 ≠ w, Br2c12 ≠ n, Br2c12 ≠ e, Br2c12 ≠ s, Br2c12 ≠ ne, Br2c12 ≠ ns, Br2c12 ≠ se
B-single: Br2c11 = e
H-single: Hr3c11 = 0
P-single: Pr2c11 = nw
P-single: Pr3c11 = sw
V-single: Vr3c11 = 1
w[1]-1-in-r3c12-asymmetric-nw-corner ==> Pr4c13 ≠ ew, Pr4c13 ≠ ns, Pr4c13 ≠ ne
vertical-line-r3{c10 c11} ==> Ir3c11 = out
I-single: Ir3c11 = out
whip[1]: Hr3c11{0 .} ==> Br3c11 ≠ n, Br3c11 ≠ ne, Br3c11 ≠ ns, Br3c11 ≠ nw, Br3c11 ≠ swn, Br3c11 ≠ wne, Br3c11 ≠ nes
whip[1]: Pr2c11{nw .} ==> Br1c11 ≠ s, Br1c11 ≠ e, Br1c11 ≠ n, Br1c10 ≠ swn, Br1c10 ≠ wne, Br2c10 ≠ esw, Br2c10 ≠ wne, Br2c10 ≠ nes
B-single: Br2c10 = swn
P-single: Pr1c9 = se
P-single: Pr2c10 = se
P-single: Pr3c10 = ne
B-single: Br1c11 = w
P-single: Pr2c13 = nw
P-single: Pr1c11 = sw
P-single: Pr1c12 = o
P-single: Pr2c12 = se
whip[1]: Pr1c9{se .} ==> Br1c8 ≠ w, Br1c8 ≠ s, Br1c8 ≠ n, Br1c8 ≠ o, Br1c8 ≠ ne, Br1c8 ≠ ns, Br1c8 ≠ nw, Br1c8 ≠ sw, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ nes, Br1c9 ≠ ne, Br1c9 ≠ ns, Br1c9 ≠ se, Br1c9 ≠ ew, Br1c9 ≠ sw
B-single: Br1c9 = nw
P-single: Pr2c9 = ns
whip[1]: Pr2c9{ns .} ==> Br2c8 ≠ n, Br2c8 ≠ o, Br1c8 ≠ se, Br1c8 ≠ esw, Br2c8 ≠ s, Br2c8 ≠ w, Br2c8 ≠ ne, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ sw, Br2c8 ≠ swn, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c9 ≠ ne, Br2c9 ≠ ns, Br2c9 ≠ nw, Br2c9 ≠ se
whip[1]: Br2c9{sw .} ==> Pr3c9 ≠ se, Pr3c9 ≠ ew
whip[1]: Pr3c9{nw .} ==> Br2c9 ≠ sw, Br3c8 ≠ wne, Br3c8 ≠ nes, Br3c9 ≠ ne, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ swn, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c9 ≠ n
B-single: Br2c9 = ew
whip[1]: Br3c8{swn .} ==> Pr3c8 ≠ o, Pr3c8 ≠ ne, Pr3c8 ≠ nw, Pr3c8 ≠ ew, Pr4c8 ≠ o, Pr4c8 ≠ ns, Pr4c8 ≠ nw, Pr4c8 ≠ ew, Pr4c9 ≠ ns, Pr4c9 ≠ se
P-single: Pr5c7 = ne
P-single: Pr4c8 = ne
w[1]-1-in-r3c7-asymmetric-se-corner ==> Pr3c7 ≠ sw, Pr3c7 ≠ ew, Pr3c7 ≠ ns, Pr3c7 ≠ ne
whip[1]: Pr5c7{ne .} ==> Br5c7 ≠ o, Br5c6 ≠ n, Br4c6 ≠ n, Br4c6 ≠ o, Br4c6 ≠ s, Br4c6 ≠ w, Br4c6 ≠ ns, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ nes, Br4c7 ≠ ne, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ se, Br4c7 ≠ ew, Br5c6 ≠ e, Br5c6 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes, Br5c7 ≠ e, Br5c7 ≠ s, Br5c7 ≠ w, Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ sw, Br5c7 ≠ esw, Br5c7 ≠ swn, Br5c7 ≠ wne
B-single: Br4c7 = sw
whip[1]: Pr4c7{sw .} ==> Br3c6 ≠ n, Br3c6 ≠ w, Br3c7 ≠ s
whip[1]: Br3c7{w .} ==> Pr3c7 ≠ se, Pr3c8 ≠ sw
w[1]-1-in-r3c7-asymmetric-ne-corner ==> Pr4c7 ≠ ns
P-single: Pr4c7 = sw
H-single: Hr4c6 = 1
whip[1]: Pr4c7{sw .} ==> Br4c6 ≠ e, Br3c7 ≠ w, Br3c6 ≠ e, Br4c6 ≠ ew
B-single: Br3c6 = s
H-single: Hr3c6 = 0
V-single: Vr3c6 = 0
P-single: Pr2c6 = se
H-single: Hr2c5 = 0
H-single: Hr2c6 = 1
V-single: Vr1c6 = 0
V-single: Vr2c6 = 1
P-single: Pr3c6 = nw
H-single: Hr3c5 = 1
P-single: Pr3c7 = o
V-single: Vr2c7 = 0
whip[1]: Hr3c6{0 .} ==> Br2c6 ≠ ns, Br2c6 ≠ se, Br2c6 ≠ sw
whip[1]: Vr3c6{0 .} ==> Br3c5 ≠ e, Br3c5 ≠ ne, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ wne, Br3c5 ≠ nes
whip[1]: Pr2c6{se .} ==> Br2c5 ≠ w, Br2c5 ≠ s, Br2c5 ≠ n, Br2c5 ≠ o, Br1c5 ≠ s, Br1c5 ≠ e, Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c5 ≠ esw, Br1c5 ≠ swn, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c6 ≠ ne, Br1c6 ≠ nw, Br1c6 ≠ ew, Br1c6 ≠ sw, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ nw, Br2c5 ≠ sw, Br2c5 ≠ swn, Br2c5 ≠ wne, Br2c5 ≠ nes, Br2c6 ≠ ne, Br2c6 ≠ ew
B-single: Br2c6 = nw
whip[1]: Pr2c7{ew .} ==> Br1c7 ≠ sw, Br1c7 ≠ esw, Br1c7 ≠ swn, Br2c7 ≠ nw, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ swn, Br2c7 ≠ wne, Br1c7 ≠ o, Br1c7 ≠ n, Br1c7 ≠ e, Br1c7 ≠ ne, Br2c7 ≠ w
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Br2c5{esw .} ==> Pr2c5 ≠ ne, Pr2c5 ≠ se, Pr2c5 ≠ ew, Nr2c5 ≠ 0
whip[1]: Br1c6{se .} ==> Pr1c6 ≠ sw
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 3
whip[1]: Pr3c6{nw .} ==> Br3c5 ≠ s, Br3c5 ≠ o, Br2c5 ≠ e, Br2c5 ≠ ew, Br3c5 ≠ w, Br3c5 ≠ sw
whip[1]: Br3c5{swn .} ==> Pr3c5 ≠ o, Pr3c5 ≠ ns, Pr3c5 ≠ nw, Pr3c5 ≠ sw, Nr3c5 ≠ 0
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ se, Br2c4 ≠ esw, Br2c4 ≠ nes, Br3c4 ≠ wne, Br3c4 ≠ nes, Br3c4 ≠ ne
whip[1]: Br2c5{esw .} ==> Nr2c5 ≠ 1
whip[1]: Pr3c7{o .} ==> Br2c7 ≠ s, Br2c7 ≠ ns, Br2c7 ≠ se, Br2c7 ≠ nes, Br3c7 ≠ n
B-single: Br3c7 = e
whip[1]: Br2c7{ne .} ==> Nr2c7 ≠ 3
whip[1]: Pr5c5{ew .} ==> Br4c5 ≠ sw, Br5c4 ≠ sw, Br5c4 ≠ wne, Br5c4 ≠ nes, Br4c5 ≠ ne, Br5c4 ≠ o, Br5c4 ≠ s, Br5c4 ≠ w, Br5c4 ≠ ne
whip[1]: Br5c4{swn .} ==> Nr5c4 ≠ 0
whip[1]: Pr1c7{ew .} ==> Hr1c7 ≠ 0, Br1c7 ≠ se, Br1c7 ≠ ew, Br1c7 ≠ s, Br1c7 ≠ w
H-single: Hr1c7 = 1
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
I-single: Ir1c7 = in
different-colours-in-r1{c7 c8} ==> Hr1c8 = 1
V-single: Vr1c8 = 1
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o, Pr1c8 ≠ o, Pr1c8 ≠ se
B-single: Br0c7 = s
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ e
B-single: Br1c8 = ew
N-single: Nr1c8 = 2
P-single: Pr1c8 = sw
whip[1]: Pr1c8{sw .} ==> Br1c7 ≠ ns, Br1c7 ≠ nw
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 1, Nr1c7 ≠ 2
N-single: Nr1c7 = 3
whip[1]: Pr2c8{nw .} ==> Br2c7 ≠ ne, Br2c7 ≠ o
whip[1]: Br2c7{e .} ==> Nr2c7 ≠ 0, Nr2c7 ≠ 2
N-single: Nr2c7 = 1
whip[1]: Br4c6{wne .} ==> Pr5c6 ≠ ne, Pr5c6 ≠ se, Pr5c6 ≠ ew, Nr4c6 ≠ 0, Nr4c6 ≠ 1
whip[1]: Pr3c8{se .} ==> Br2c8 ≠ esw, Br2c8 ≠ e
whip[1]: Br2c8{ew .} ==> Nr2c8 ≠ 0, Nr2c8 ≠ 1, Nr2c8 ≠ 3
N-single: Nr2c8 = 2
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ nw, Br4c8 ≠ ew, Br4c8 ≠ sw, Br5c8 ≠ nw, Br5c8 ≠ se, Br5c8 ≠ swn, Br5c8 ≠ wne, Br5c8 ≠ o, Br5c8 ≠ e, Br5c8 ≠ s
whip[1]: Br5c8{nes .} ==> Nr5c8 ≠ 0
whip[1]: Br5c7{nes .} ==> Pr6c7 ≠ ne, Pr6c7 ≠ ns, Pr6c7 ≠ nw, Nr5c7 ≠ 0
whip[1]: Br5c6{sw .} ==> Nr5c6 ≠ 3
whip[1]: Pr4c8{ne .} ==> Br4c8 ≠ se
whip[1]: Pr5c9{sw .} ==> Br5c9 ≠ nw, Br5c9 ≠ se, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ o, Br5c9 ≠ e, Br5c9 ≠ s
whip[1]: Br5c9{nes .} ==> Nr5c9 ≠ 0
whip[1]: Pr4c9{sw .} ==> Br3c9 ≠ sw, Br3c9 ≠ esw, Br4c9 ≠ nw
whip[1]: Br4c9{sw .} ==> Pr5c10 ≠ o, Pr5c10 ≠ se
whip[1]: Pr5c10{sw .} ==> Br5c10 ≠ nw, Br5c10 ≠ swn, Br5c10 ≠ wne
whip[1]: Br3c9{ew .} ==> Nr3c9 ≠ 3
whip[1]: Pr2c10{se .} ==> Br1c10 ≠ esw
B-single: Br1c10 = nes
whip[1]: Pr3c10{ne .} ==> Br3c10 ≠ o, Br3c9 ≠ e, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c10 ≠ e, Br3c10 ≠ s, Br3c10 ≠ w, Br3c10 ≠ nw, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ sw, Br3c10 ≠ esw, Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Br3c10{nes .} ==> Pr4c10 ≠ ne, Pr4c10 ≠ ns, Pr4c10 ≠ nw, Nr3c10 ≠ 0
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 2
whip[1]: Pr2c13{nw .} ==> Br2c13 ≠ n, Br1c13 ≠ s, Br1c13 ≠ e, Br1c13 ≠ n, Br1c13 ≠ o, Br1c12 ≠ ne, Br1c12 ≠ ns, Br1c12 ≠ nw, Br1c12 ≠ ew, Br1c12 ≠ sw, Br1c13 ≠ ne, Br1c13 ≠ ns, Br1c13 ≠ se, Br1c13 ≠ sw, Br1c13 ≠ esw, Br1c13 ≠ swn, Br1c13 ≠ nes, Br2c12 ≠ w, Br2c12 ≠ ew, Br2c12 ≠ sw, Br2c12 ≠ esw, Br2c12 ≠ wne, Br2c13 ≠ w, Br2c13 ≠ ne, Br2c13 ≠ ns, Br2c13 ≠ nw, Br2c13 ≠ ew, Br2c13 ≠ sw, Br2c13 ≠ esw, Br2c13 ≠ swn, Br2c13 ≠ wne, Br2c13 ≠ nes
B-single: Br1c12 = se
P-single: Pr1c13 = se
whip[1]: Pr1c13{se .} ==> Br1c13 ≠ w, Br1c13 ≠ ew
whip[1]: Br1c13{wne .} ==> Pr2c14 ≠ nw, Pr2c14 ≠ ew, Pr2c14 ≠ sw, Nr1c13 ≠ 0, Nr1c13 ≠ 1
whip[1]: Br2c13{se .} ==> Pr3c13 ≠ ne, Pr3c13 ≠ ns, Pr3c13 ≠ nw, Nr2c13 ≠ 3
whip[1]: Br2c12{swn .} ==> Nr2c12 ≠ 0, Nr2c12 ≠ 1
whip[1]: Pr3c11{sw .} ==> Br3c11 ≠ s, Br3c11 ≠ e, Br3c11 ≠ o, Br3c10 ≠ ns, Br3c10 ≠ n, Br3c11 ≠ se
whip[1]: Br3c11{esw .} ==> Pr4c11 ≠ o, Pr4c11 ≠ se, Pr4c11 ≠ ew, Pr4c11 ≠ sw, Nr3c11 ≠ 0
whip[1]: Pr4c11{nw .} ==> Br4c10 ≠ ne
whip[1]: Br4c10{sw .} ==> Pr5c10 ≠ sw
whip[1]: Pr5c10{ew .} ==> Br5c9 ≠ nes, Br5c9 ≠ ne
whip[1]: Br3c10{nes .} ==> Nr3c10 ≠ 1
whip[1]: Pr4c13{se .} ==> Br3c13 ≠ sw, Br3c13 ≠ esw, Br3c13 ≠ swn, Br4c12 ≠ ne, Br4c13 ≠ ne, Br4c13 ≠ ns, Br4c13 ≠ ew, Br4c13 ≠ sw, Br4c13 ≠ esw, Br4c13 ≠ nes, Br3c12 ≠ e, Br3c12 ≠ s, Br4c13 ≠ n, Br4c13 ≠ w
whip[1]: Br3c12{w .} ==> Pr4c12 ≠ ne, Pr4c13 ≠ nw, Pr3c13 ≠ se, Pr3c13 ≠ sw, Pr4c12 ≠ ew
whip[1]: Pr4c12{sw .} ==> Br4c12 ≠ nw, Br4c12 ≠ ns
whip[1]: Pr3c13{ew .} ==> Br3c13 ≠ nw, Br3c13 ≠ ew, Br3c13 ≠ wne, Br3c13 ≠ w
whip[1]: Hr2c15{0 .} ==> Br2c15 ≠ nes, Pr2c16 ≠ nw, Pr2c16 ≠ sw, Pr2c15 ≠ ne, Pr2c15 ≠ se, Pr2c15 ≠ ew, Br1c15 ≠ s, Br1c15 ≠ sw, Br1c15 ≠ nes, Br2c15 ≠ n, Br2c15 ≠ ne, Br2c15 ≠ ns, Br2c15 ≠ nw, Br2c15 ≠ swn, Br2c15 ≠ wne
whip[1]: Vr2c15{0 .} ==> Br2c15 ≠ esw, Pr2c15 ≠ ns, Pr2c15 ≠ sw, Pr3c15 ≠ ne, Pr3c15 ≠ ns, Pr3c15 ≠ nw, Br2c14 ≠ e, Br2c14 ≠ ne, Br2c14 ≠ se, Br2c14 ≠ ew, Br2c14 ≠ esw, Br2c14 ≠ wne, Br2c14 ≠ nes, Br2c15 ≠ w, Br2c15 ≠ ew, Br2c15 ≠ sw
whip[1]: Br2c15{se .} ==> Nr2c15 ≠ 3
whip[1]: Pr2c15{nw .} ==> Br1c14 ≠ swn, Br1c14 ≠ wne
whip[1]: Br1c14{nes .} ==> Pr1c15 ≠ o, Pr1c15 ≠ ew, Pr2c14 ≠ o, Pr2c14 ≠ ns, Pr2c15 ≠ o
P-single: Pr2c15 = nw
whip[1]: Pr2c15{nw .} ==> Br2c14 ≠ s, Br2c14 ≠ o, Br1c15 ≠ o, Br1c15 ≠ ne, Br2c14 ≠ w, Br2c14 ≠ sw
whip[1]: Br2c14{swn .} ==> Nr2c14 ≠ 0
whip[1]: Br1c15{wne .} ==> Nr1c15 ≠ 0, Nr1c15 ≠ 2
whip[1]: Hr1c12{0 .} ==> Br0c12 ≠ s
B-single: Br0c12 = o
whip[1]: Hr1c8{0 .} ==> Br0c8 ≠ s
B-single: Br0c8 = o
whip[1]: Hr7c3{0 .} ==> Br7c3 ≠ nes, Pr7c3 ≠ se, Pr7c3 ≠ ew, Pr7c4 ≠ ew, Pr7c4 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ swn, Br6c3 ≠ nes, Br7c3 ≠ n, Br7c3 ≠ ne, Br7c3 ≠ ns, Br7c3 ≠ nw, Br7c3 ≠ swn, Br7c3 ≠ wne
B-single: Br6c3 = wne
P-single: Pr6c3 = se
P-single: Pr6c4 = sw
whip[1]: Pr6c3{se .} ==> Br5c3 ≠ w, Br5c3 ≠ e, Br5c3 ≠ n, Br5c3 ≠ o, Br5c2 ≠ s, Br5c2 ≠ e, Br5c2 ≠ ne, Br5c2 ≠ ns, Br5c2 ≠ se, Br5c2 ≠ ew, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ ne, Br5c3 ≠ nw, Br5c3 ≠ ew, Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn, Br5c3 ≠ wne, Br6c2 ≠ swn, Br6c2 ≠ wne, Br6c2 ≠ nes
B-single: Br6c2 = esw
P-single: Pr7c2 = ne
P-single: Pr7c3 = nw
whip[1]: Pr7c2{ne .} ==> Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ sw, Br7c1 ≠ ns, Br7c1 ≠ nw, Br7c1 ≠ se, Br7c1 ≠ ew, Br7c1 ≠ wne, Br7c1 ≠ nes, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw
whip[1]: Br7c2{ns .} ==> Pr8c2 ≠ ns, Pr8c2 ≠ nw
whip[1]: Pr8c2{ew .} ==> Br8c2 ≠ se, Br8c2 ≠ ew, Br7c2 ≠ ne, Br8c2 ≠ s, Br8c2 ≠ w
B-single: Br7c2 = ns
whip[1]: Pr8c3{sw .} ==> Br7c3 ≠ ew, Br7c3 ≠ sw, Br7c3 ≠ esw, Br8c3 ≠ nw, Br8c3 ≠ se, Br7c3 ≠ w
whip[1]: Br7c3{se .} ==> Nr7c3 ≠ 3
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 1
whip[1]: Br7c1{w .} ==> Nr7c1 ≠ 2, Nr7c1 ≠ 3, Pr7c1 ≠ se
N-single: Nr7c1 = 1
whip[1]: Pr6c2{sw .} ==> Br5c1 ≠ nw, Br5c1 ≠ se, Br5c1 ≠ esw, Br5c1 ≠ nes, Br5c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ w
whip[1]: Br5c1{wne .} ==> Nr5c1 ≠ 0
whip[1]: Br5c3{nes .} ==> Pr5c3 ≠ ns, Pr5c3 ≠ se, Pr5c3 ≠ sw, Nr5c3 ≠ 0
whip[1]: Br5c2{nw .} ==> Nr5c2 ≠ 3
whip[1]: Pr6c4{sw .} ==> Br6c4 ≠ ns, Br6c4 ≠ ne, Br6c4 ≠ s, Br6c4 ≠ e, Br6c4 ≠ n, Br6c4 ≠ o, Br5c4 ≠ ns, Br5c3 ≠ se, Br5c3 ≠ nes, Br5c4 ≠ nw, Br5c4 ≠ se, Br5c4 ≠ ew, Br5c4 ≠ esw, Br5c4 ≠ swn, Br6c4 ≠ nw, Br6c4 ≠ se, Br6c4 ≠ swn, Br6c4 ≠ wne, Br6c4 ≠ nes
whip[1]: Br6c4{esw .} ==> Pr6c5 ≠ nw, Pr6c5 ≠ ew, Pr6c5 ≠ sw, Nr6c4 ≠ 0
whip[1]: Br5c4{e .} ==> Nr5c4 ≠ 2, Pr5c4 ≠ ns, Pr5c4 ≠ se, Pr5c4 ≠ sw, Nr5c4 ≠ 3
N-single: Nr5c4 = 1
whip[1]: Br5c3{ns .} ==> Nr5c3 ≠ 3
whip[1]: Pr7c4{ns .} ==> Br7c4 ≠ s, Br7c4 ≠ nw, Br7c4 ≠ se, Br7c4 ≠ swn, Br7c4 ≠ wne, Br7c4 ≠ o, Br7c4 ≠ e
whip[1]: Br7c4{nes .} ==> Nr7c4 ≠ 0
whip[1]: Hr14c14{0 .} ==> Br14c14 ≠ nes, Pr14c14 ≠ ne, Pr14c14 ≠ se, Pr14c14 ≠ ew, Pr14c15 ≠ nw, Pr14c15 ≠ ew, Pr14c15 ≠ sw, Br13c14 ≠ s, Br13c14 ≠ ns, Br13c14 ≠ se, Br13c14 ≠ sw, Br13c14 ≠ esw, Br13c14 ≠ swn, Br13c14 ≠ nes, Br14c14 ≠ n, Br14c14 ≠ ne, Br14c14 ≠ ns, Br14c14 ≠ nw, Br14c14 ≠ swn, Br14c14 ≠ wne
whip[1]: Pr14c14{nw .} ==> Br13c13 ≠ swn, Br14c13 ≠ ne
whip[1]: Br13c13{nes .} ==> Pr13c14 ≠ ne, Pr13c14 ≠ ew, Pr14c14 ≠ o
whip[1]: Pr15c13{ew .} ==> Br14c13 ≠ sw, Br15c12 ≠ sw, Br15c12 ≠ wne, Br15c12 ≠ nes, Br15c12 ≠ o, Br15c12 ≠ s, Br15c12 ≠ w, Br15c12 ≠ ne
whip[1]: Br15c12{swn .} ==> Nr15c12 ≠ 0
whip[1]: Pr14c14{nw .} ==> Br13c14 ≠ ne, Br13c14 ≠ o, Br13c14 ≠ n, Br13c14 ≠ e
whip[1]: Br13c14{wne .} ==> Nr13c14 ≠ 0
whip[1]: Pr13c14{sw .} ==> Br12c13 ≠ nw, Br12c13 ≠ se, Br12c14 ≠ se, Br12c14 ≠ sw, Br12c14 ≠ esw, Br12c14 ≠ swn, Br12c14 ≠ nes, Br13c14 ≠ nw, Br13c14 ≠ wne, Br12c14 ≠ s, Br12c14 ≠ ns
whip[1]: Br12c14{wne .} ==> Pr13c15 ≠ nw, Pr13c15 ≠ ew, Pr13c15 ≠ sw
whip[1]: Br13c14{ew .} ==> Nr13c14 ≠ 3
whip[1]: Vr14c14{0 .} ==> Br14c14 ≠ esw, Pr14c14 ≠ ns, Pr15c14 ≠ ne, Pr15c14 ≠ ns, Br14c13 ≠ se, Br14c13 ≠ ew, Br14c14 ≠ w, Br14c14 ≠ ew, Br14c14 ≠ sw
P-single: Pr14c14 = nw
whip[1]: Pr14c14{nw .} ==> Br13c13 ≠ wne
whip[1]: Br13c13{nes .} ==> Pr14c13 ≠ ns
whip[1]: Pr14c13{ew .} ==> Br13c12 ≠ se, Br13c12 ≠ ew, Br13c12 ≠ esw, Br13c12 ≠ wne, Br13c12 ≠ nes, Br13c13 ≠ esw, Br14c12 ≠ sw, Br13c12 ≠ e, Br13c12 ≠ ne, Br14c12 ≠ ne
B-single: Br13c13 = nes
P-single: Pr13c14 = sw
whip[1]: Pr13c14{sw .} ==> Br12c14 ≠ w, Br12c13 ≠ ne, Br12c13 ≠ ew, Br12c14 ≠ nw, Br12c14 ≠ ew, Br12c14 ≠ wne
whip[1]: Br12c14{ne .} ==> Pr12c14 ≠ ns, Pr12c14 ≠ se, Nr12c14 ≠ 3
whip[1]: Pr13c13{ew .} ==> Br12c12 ≠ nw, Br12c12 ≠ se, Br12c12 ≠ esw, Br12c12 ≠ nes, Br12c12 ≠ o, Br12c12 ≠ n, Br12c12 ≠ w
whip[1]: Br12c12{wne .} ==> Nr12c12 ≠ 0
whip[1]: Br14c14{se .} ==> Nr14c14 ≠ 3
whip[1]: Hr13c8{1 .} ==> Br13c8 ≠ sw, Pr13c8 ≠ ns, Pr13c9 ≠ ns, Br12c8 ≠ ne, Br12c8 ≠ nw, Br12c8 ≠ ew, Br13c8 ≠ se, Br13c8 ≠ ew
whip[1]: Pr13c9{ew .} ==> Br12c9 ≠ sw, Br12c9 ≠ esw, Br12c9 ≠ swn, Br13c9 ≠ nw, Br13c9 ≠ ew, Br13c9 ≠ sw, Br12c9 ≠ o, Br12c9 ≠ n, Br12c9 ≠ e, Br12c9 ≠ ne, Br13c8 ≠ ne
whip[1]: Br13c8{nw .} ==> Pr14c9 ≠ ns
whip[1]: Pr14c9{ew .} ==> Br14c9 ≠ esw, Br14c8 ≠ ne
whip[1]: Br14c9{nes .} ==> Pr14c9 ≠ o, Pr14c10 ≠ ne, Pr14c10 ≠ ns, Pr15c9 ≠ sw
whip[1]: Pr12c11{ew .} ==> Br11c11 ≠ sw, Br11c11 ≠ esw, Br11c11 ≠ swn, Br12c10 ≠ sw, Br11c11 ≠ o, Br11c11 ≠ n, Br11c11 ≠ e, Br11c11 ≠ ne, Br12c10 ≠ ne
whip[1]: Br11c11{nes .} ==> Nr11c11 ≠ 0
whip[1]: Pr13c10{ew .} ==> Br13c9 ≠ ne
whip[1]: Pr16c7{ew .} ==> Br16c6 ≠ o, Hr16c6 ≠ 0, Br15c6 ≠ nw, Br15c6 ≠ ew, Br15c6 ≠ wne, Br15c7 ≠ sw, Br15c6 ≠ o, Br15c6 ≠ n, Br15c6 ≠ e, Br15c6 ≠ w, Br15c6 ≠ ne, Br15c7 ≠ ne
H-single: Hr16c6 = 1
B-single: Br16c6 = n
horizontal-line-{r15 r16}c6 ==> Ir15c6 = in
I-single: Ir15c6 = in
whip[1]: Pr16c6{ew .} ==> Br15c5 ≠ nw, Br15c5 ≠ se, Br15c5 ≠ esw, Br15c5 ≠ nes, Br15c5 ≠ o, Br15c5 ≠ n, Br15c5 ≠ w
whip[1]: Br15c5{wne .} ==> Nr15c5 ≠ 0
whip[1]: Br15c6{nes .} ==> Nr15c6 ≠ 0
whip[1]: Pr15c8{ew .} ==> Br14c8 ≠ sw
whip[1]: Pr15c9{ew .} ==> Br14c8 ≠ nw, Br15c8 ≠ wne, Br15c8 ≠ nes, Br15c9 ≠ nw, Br15c9 ≠ swn, Br15c9 ≠ wne, Br15c8 ≠ ne
whip[1]: Pr14c10{sw .} ==> Br13c10 ≠ sw, Br13c10 ≠ esw, Br13c10 ≠ swn, Br14c10 ≠ nw, Br14c10 ≠ swn, Br14c10 ≠ wne
whip[1]: Br12c9{nes .} ==> Nr12c9 ≠ 0
whip[1]: Pr13c8{ew .} ==> Br12c7 ≠ se, Br12c7 ≠ ew, Br12c7 ≠ esw, Br12c7 ≠ wne, Br12c7 ≠ nes, Br12c8 ≠ sw, Br13c7 ≠ sw, Br12c7 ≠ e, Br12c7 ≠ ne, Br13c7 ≠ ne
whip[1]: Br12c7{swn .} ==> Pr12c8 ≠ ns, Pr12c8 ≠ sw
whip[1]: Vr13c8{1 .} ==> Br13c8 ≠ ns, Pr13c8 ≠ ew, Pr14c8 ≠ ew, Br13c7 ≠ ns, Br13c7 ≠ nw
P-single: Pr14c9 = se
P-single: Pr13c8 = se
B-single: Br13c8 = nw
whip[1]: Pr14c9{se .} ==> Br14c8 ≠ ns, Br14c9 ≠ nes
whip[1]: Br14c9{wne .} ==> Pr15c9 ≠ ew
whip[1]: Pr13c8{se .} ==> Br12c7 ≠ s, Br12c7 ≠ ns, Br12c7 ≠ sw, Br12c7 ≠ swn
whip[1]: Br12c7{nw .} ==> Pr13c7 ≠ ne, Pr13c7 ≠ ew, Nr12c7 ≠ 3
whip[1]: Pr14c8{nw .} ==> Br14c7 ≠ w, Br14c7 ≠ ne, Br14c7 ≠ sw, Br14c7 ≠ wne, Br14c7 ≠ nes, Br14c7 ≠ o, Br14c7 ≠ s
whip[1]: Br14c7{swn .} ==> Nr14c7 ≠ 0
whip[1]: Vr15c11{1 .} ==> Br15c11 ≠ nes, Pr16c11 ≠ ew, Pr15c11 ≠ nw, Pr15c11 ≠ ew, Br15c10 ≠ ns, Br15c10 ≠ nw, Br15c10 ≠ sw
P-single: Pr16c11 = ne
whip[1]: Pr16c11{ne .} ==> Br16c11 ≠ o, Br16c10 ≠ n, Br15c10 ≠ se, Br15c11 ≠ wne
B-single: Br16c10 = o
B-single: Br16c11 = n
whip[1]: Pr16c12{ew .} ==> Br15c12 ≠ esw, Br15c12 ≠ swn, Br15c12 ≠ n, Br15c12 ≠ e
whip[1]: Br15c12{ew .} ==> Nr15c12 ≠ 1, Nr15c12 ≠ 3
N-single: Nr15c12 = 2
whip[1]: Pr16c10{nw .} ==> Br15c9 ≠ ne, Br15c9 ≠ ns, Br15c9 ≠ ew, Br15c9 ≠ sw, Br15c9 ≠ e, Br15c9 ≠ s
whip[1]: Pr15c11{sw .} ==> Br14c10 ≠ se, Br14c10 ≠ esw, Br14c10 ≠ nes, Br14c11 ≠ sw
whip[1]: Br14c11{ew .} ==> Pr14c12 ≠ o, Pr14c12 ≠ ne
whip[1]: Pr14c12{sw .} ==> Br13c12 ≠ sw, Br13c12 ≠ swn
whip[1]: Br13c12{nw .} ==> Nr13c12 ≠ 3
whip[1]: Br14c10{sw .} ==> Nr14c10 ≠ 3
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Hr1c11{0 .} ==> Br0c11 ≠ s
B-single: Br0c11 = o
whip[1]: Hr12c1{1 .} ==> Br12c1 ≠ sw, Pr12c1 ≠ ns, Pr12c2 ≠ ns, Br11c1 ≠ nw, Br11c1 ≠ ew, Br12c1 ≠ se, Br12c1 ≠ ew
P-single: Pr11c2 = ne
P-single: Pr12c1 = ne
whip[1]: Pr11c2{ne .} ==> Br10c1 ≠ nw, Br10c1 ≠ swn, Br10c2 ≠ ns, Br10c2 ≠ ew, Br11c1 ≠ ns, Br11c1 ≠ se, Br11c2 ≠ w, Br11c2 ≠ nw, Br11c2 ≠ ew, Br11c2 ≠ sw, Br11c2 ≠ esw, Br11c2 ≠ swn, Br11c2 ≠ wne
B-single: Br11c1 = sw
P-single: Pr11c1 = ns
B-single: Br10c2 = sw
P-single: Pr10c2 = sw
B-single: Br10c1 = wne
N-single: Nr10c1 = 3
whip[1]: Pr10c2{sw .} ==> Br9c2 ≠ ns, Br9c2 ≠ s, Br9c2 ≠ se, Br9c2 ≠ nes
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 3
whip[1]: Pr11c3{sw .} ==> Br10c3 ≠ nw, Br10c3 ≠ ew, Br10c3 ≠ sw, Br11c3 ≠ nw, Br11c3 ≠ se, Br11c3 ≠ swn, Br11c3 ≠ wne, Br11c3 ≠ o, Br11c3 ≠ e, Br11c3 ≠ s
whip[1]: Br11c3{nes .} ==> Nr11c3 ≠ 0
whip[1]: Pr12c1{ne .} ==> Br12c1 ≠ nw
whip[1]: Br12c1{ns .} ==> Pr13c1 ≠ ns
whip[1]: Pr13c1{se .} ==> Br13c1 ≠ esw, Br13c1 ≠ nes
whip[1]: Br13c1{wne .} ==> Pr13c1 ≠ o, Pr14c1 ≠ o, Pr14c1 ≠ se, Pr13c2 ≠ ne, Pr13c2 ≠ ns
P-single: Pr12c2 = ew
H-single: Hr12c2 = 1
V-single: Vr12c2 = 0
w[1]-3-in-r12c3-hit-by-horiz-line-at-nw ==> Vr12c4 = 1, Hr13c3 = 1, Vr11c3 = 0
V-single: Vr11c3 = 0
H-single: Hr13c3 = 1
V-single: Vr12c4 = 1
V-single: Vr13c4 = 0
H-single: Hr13c4 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r13 r12}c3 ==> Vr13c3 = 0, Hr14c3 = 0
H-single: Hr14c3 = 0
V-single: Vr13c3 = 0
w[1]-3-in-r12c3-closed-se-corner ==> Pr12c3 ≠ se, Pr12c3 ≠ nw, Pr12c3 ≠ o
w[1]-3-in-r14c2-isolated-at-ne-corner ==> Hr14c2 = 1
H-single: Hr14c2 = 1
w[1]-3-in-r13c1-hit-by-horiz-line-at-se ==> Vr14c2 = 0
V-single: Vr14c2 = 0
w[1]-3-in-r14c2-closed-ne-corner ==> Pr15c2 ≠ sw, Pr15c2 ≠ ne
w[1]-3-in-r14c4-isolated-at-nw-corner ==> Vr14c4 = 1, Hr14c4 = 1
H-single: Hr14c4 = 1
V-single: Vr14c4 = 1
w[1]-3-in-r14c4-closed-nw-corner ==> Pr15c5 ≠ se, Pr15c5 ≠ nw, Pr15c5 ≠ o
P-single: Pr13c1 = se
no-vertical-line-r11{c2 c3} ==> Ir11c3 = in
I-single: Ir11c3 = in
no-vertical-line-r12{c1 c2} ==> Ir12c2 = out
I-single: Ir12c2 = out
different-colours-in-{r10 r11}c3 ==> Hr11c3 = 1
H-single: Hr11c3 = 1
whip[1]: Pr12c2{ew .} ==> Br12c2 ≠ w, Br12c2 ≠ s, Br12c2 ≠ e, Br12c2 ≠ o, Br12c1 ≠ ne, Br11c2 ≠ ne, Br11c2 ≠ n, Br12c2 ≠ nw, Br12c2 ≠ se, Br12c2 ≠ ew, Br12c2 ≠ sw, Br12c2 ≠ esw, Br12c2 ≠ swn, Br12c2 ≠ wne
B-single: Br12c1 = ns
whip[1]: Br12c2{nes .} ==> Pr12c3 ≠ ne, Pr12c3 ≠ ns, Nr12c2 ≠ 0
whip[1]: Pr12c3{sw .} ==> Br11c2 ≠ nes, Br11c3 ≠ ew, Br11c3 ≠ sw, Br11c3 ≠ esw, Br12c3 ≠ swn, Br12c3 ≠ wne, Br11c3 ≠ w
B-single: Br11c2 = ns
N-single: Nr11c2 = 2
P-single: Pr11c3 = ew
whip[1]: Pr11c3{ew .} ==> Br10c3 ≠ ne
whip[1]: Br10c3{se .} ==> Pr11c4 ≠ ne, Pr11c4 ≠ ns
whip[1]: Pr11c4{sw .} ==> Br10c4 ≠ sw, Br10c4 ≠ esw, Br10c4 ≠ swn, Br11c4 ≠ nw, Br11c4 ≠ swn, Br11c4 ≠ wne
whip[1]: Pr10c4{ew .} ==> Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ e, Br9c4 ≠ ne
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Br12c3{nes .} ==> Pr12c4 ≠ o, Pr12c4 ≠ ne, Pr12c4 ≠ nw, Pr12c4 ≠ ew, Pr13c3 ≠ o, Pr13c3 ≠ ns, Pr13c3 ≠ nw, Pr13c3 ≠ sw, Pr13c4 ≠ o, Pr13c4 ≠ ne, Pr13c4 ≠ ns, Pr13c4 ≠ se, Pr13c4 ≠ ew, Pr13c4 ≠ sw
P-single: Pr13c4 = nw
w[1]-1-in-r13c3-asymmetric-ne-corner ==> Pr14c3 ≠ ew, Pr14c3 ≠ se, Pr14c3 ≠ nw, Pr14c3 ≠ ns
whip[1]: Pr13c4{nw .} ==> Br13c4 ≠ n, Br13c3 ≠ s, Br13c3 ≠ e, Br12c4 ≠ s, Br12c4 ≠ e, Br12c4 ≠ n, Br12c4 ≠ o, Br12c4 ≠ ne, Br12c4 ≠ ns, Br12c4 ≠ se, Br12c4 ≠ sw, Br12c4 ≠ esw, Br12c4 ≠ swn, Br12c4 ≠ nes, Br13c3 ≠ w, Br13c4 ≠ w, Br13c4 ≠ ne, Br13c4 ≠ ns, Br13c4 ≠ nw, Br13c4 ≠ ew, Br13c4 ≠ sw, Br13c4 ≠ esw, Br13c4 ≠ swn, Br13c4 ≠ wne, Br13c4 ≠ nes
B-single: Br13c3 = n
whip[1]: Pr13c3{ew .} ==> Br12c2 ≠ nes, Br13c2 ≠ se, Br13c2 ≠ ew, Br13c2 ≠ esw, Br13c2 ≠ wne, Br13c2 ≠ nes, Br12c2 ≠ n, Br13c2 ≠ e, Br13c2 ≠ ne
whip[1]: Br12c2{ns .} ==> Nr12c2 ≠ 1, Nr12c2 ≠ 3
N-single: Nr12c2 = 2
whip[1]: Pr14c3{sw .} ==> Br14c2 ≠ esw, Br14c2 ≠ swn, Br14c3 ≠ nw, Br14c3 ≠ swn, Br14c3 ≠ wne, Br14c3 ≠ nes, Br14c3 ≠ n, Br14c3 ≠ ne, Br14c3 ≠ ns
whip[1]: Br14c2{nes .} ==> Pr14c2 ≠ ns, Pr14c2 ≠ sw, Pr14c3 ≠ o, Pr15c3 ≠ o, Pr15c3 ≠ se, Pr15c3 ≠ ew
P-single: Pr14c3 = sw
whip[1]: Pr14c3{sw .} ==> Br14c3 ≠ s, Br14c3 ≠ e, Br14c3 ≠ o, Br13c2 ≠ w, Br13c2 ≠ n, Br13c2 ≠ o, Br13c2 ≠ nw, Br14c3 ≠ se
whip[1]: Br14c3{esw .} ==> Nr14c3 ≠ 0
whip[1]: Br13c2{swn .} ==> Nr13c2 ≠ 0
whip[1]: Pr15c3{nw .} ==> Br15c2 ≠ ne, Br15c3 ≠ nw, Br15c3 ≠ swn, Br15c3 ≠ wne
whip[1]: Pr14c2{ew .} ==> Br14c1 ≠ se, Br14c1 ≠ ew, Br14c1 ≠ esw, Br14c1 ≠ wne, Br14c1 ≠ nes, Br14c2 ≠ wne, Br14c1 ≠ e, Br14c1 ≠ ne
B-single: Br14c2 = nes
P-single: Pr15c3 = nw
whip[1]: Pr15c3{nw .} ==> Br15c3 ≠ n, Br14c3 ≠ sw, Br14c3 ≠ esw, Br15c2 ≠ se, Br15c2 ≠ ew, Br15c2 ≠ sw, Br15c3 ≠ w, Br15c3 ≠ ne, Br15c3 ≠ ns, Br15c3 ≠ ew, Br15c3 ≠ sw, Br15c3 ≠ esw, Br15c3 ≠ nes
whip[1]: Br15c3{se .} ==> Pr16c3 ≠ ne, Pr15c4 ≠ nw, Pr15c4 ≠ ew, Pr15c4 ≠ sw, Nr15c3 ≠ 3
whip[1]: Br14c3{ew .} ==> Nr14c3 ≠ 3
whip[1]: Pr16c2{ew .} ==> Br16c1 ≠ o, Hr16c1 ≠ 0, Br15c1 ≠ o, Br15c1 ≠ n, Br15c1 ≠ e, Br15c1 ≠ ne
H-single: Hr16c1 = 1
B-single: Br16c1 = n
P-single: Pr16c1 = ne
V-single: Vr15c1 = 1
vertical-line-r15{c0 c1} ==> Ir15c1 = in
I-single: Ir15c1 = in
whip[1]: Vr15c1{1 .} ==> Br15c0 ≠ o, Pr15c1 ≠ o, Pr15c1 ≠ ne
B-single: Br15c0 = e
whip[1]: Pr15c1{se .} ==> Br14c1 ≠ sw, Br14c1 ≠ swn, Br14c1 ≠ o, Br14c1 ≠ n
whip[1]: Br14c1{nw .} ==> Nr14c1 ≠ 0, Nr14c1 ≠ 3
whip[1]: Br15c1{swn .} ==> Nr15c1 ≠ 0, Nr15c1 ≠ 1
whip[1]: Pr15c2{ew .} ==> Br15c1 ≠ sw
whip[1]: Br15c1{swn .} ==> Nr15c1 ≠ 2
N-single: Nr15c1 = 3
whip[1]: Pr14c4{se .} ==> Br14c4 ≠ esw, Br14c4 ≠ nes
whip[1]: Br14c4{wne .} ==> Pr14c4 ≠ o, Pr14c5 ≠ o, Pr14c5 ≠ ne, Pr14c5 ≠ ns, Pr14c5 ≠ se, Pr15c4 ≠ o, Pr15c4 ≠ se
P-single: Pr14c4 = se
whip[1]: Pr14c4{se .} ==> Br14c3 ≠ w, Br13c4 ≠ e, Br13c4 ≠ o
B-single: Br14c3 = ew
N-single: Nr14c3 = 2
whip[1]: Br13c4{se .} ==> Pr13c5 ≠ nw, Pr13c5 ≠ ew, Pr13c5 ≠ sw, Nr13c4 ≠ 0, Nr13c4 ≠ 3
whip[1]: Pr15c4{ns .} ==> Br15c4 ≠ s, Br15c4 ≠ nw, Br15c4 ≠ se, Br15c4 ≠ swn, Br15c4 ≠ wne, Br15c4 ≠ o, Br15c4 ≠ e
whip[1]: Br15c4{nes .} ==> Nr15c4 ≠ 0
whip[1]: Pr14c5{sw .} ==> Br13c5 ≠ sw, Br14c5 ≠ nw, Br14c5 ≠ swn, Br14c5 ≠ wne
whip[1]: Br13c5{ew .} ==> Pr13c6 ≠ o, Pr13c6 ≠ ne
whip[1]: Pr13c6{sw .} ==> Br12c6 ≠ sw, Br12c6 ≠ esw, Br12c6 ≠ swn
whip[1]: Br12c4{wne .} ==> Nr12c4 ≠ 0
whip[1]: Pr12c4{sw .} ==> Br11c3 ≠ nes, Br11c4 ≠ sw, Br11c4 ≠ esw
whip[1]: Br11c3{ns .} ==> Nr11c3 ≠ 3
whip[1]: Pr15c5{sw .} ==> Br15c5 ≠ swn, Br15c5 ≠ wne, Br15c5 ≠ e, Br15c5 ≠ s
whip[1]: Br15c5{sw .} ==> Nr15c5 ≠ 1, Nr15c5 ≠ 3
N-single: Nr15c5 = 2
whip[1]: Pr13c2{sw .} ==> Br13c2 ≠ swn, Br13c2 ≠ s
whip[1]: Br13c2{sw .} ==> Nr13c2 ≠ 1, Nr13c2 ≠ 3
N-single: Nr13c2 = 2
whip[1]: Pr14c1{ns .} ==> Br14c1 ≠ s, Br14c1 ≠ nw
whip[1]: Pr10c3{ne .} ==> Br9c3 ≠ wne, Br9c3 ≠ nes
whip[1]: Br9c3{swn .} ==> Pr9c3 ≠ o, Pr9c3 ≠ ne, Pr9c3 ≠ nw, Pr9c3 ≠ ew, Pr10c3 ≠ o, Pr10c4 ≠ ns, Pr10c4 ≠ se
P-single: Pr10c3 = ne
whip[1]: Pr10c3{ne .} ==> Br9c2 ≠ n, Br9c2 ≠ o, Br10c3 ≠ se
B-single: Br10c3 = ns
V-single: Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c4 = out
I-single: Ir10c4 = out
whip[1]: Vr10c4{0 .} ==> Br10c4 ≠ w, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c4 ≠ wne
whip[1]: Br9c2{ne .} ==> Nr9c2 ≠ 0
whip[1]: Pr11c4{sw .} ==> Br11c4 ≠ se, Br11c4 ≠ o, Br11c4 ≠ e, Br11c4 ≠ s
whip[1]: Br11c4{nes .} ==> Nr11c4 ≠ 0
whip[1]: Pr9c3{sw .} ==> Br8c2 ≠ nes, Br8c3 ≠ sw
whip[1]: Br8c3{ew .} ==> Pr8c4 ≠ o, Pr8c4 ≠ ne
whip[1]: Pr8c4{sw .} ==> Br7c4 ≠ sw, Br7c4 ≠ esw
whip[1]: Hr7c5{1 .} ==> Br7c5 ≠ sw, Br6c5 ≠ o, Pr7c5 ≠ ns, Pr7c5 ≠ sw, Pr7c6 ≠ ns, Pr7c6 ≠ se, Br6c5 ≠ n, Br6c5 ≠ e, Br6c5 ≠ w, Br6c5 ≠ ne, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ wne, Br7c5 ≠ se, Br7c5 ≠ ew
whip[1]: Br6c5{nes .} ==> Nr6c5 ≠ 0
whip[1]: Pr7c6{sw .} ==> Br7c6 ≠ nw, Br7c6 ≠ swn, Br7c6 ≠ wne
whip[1]: Pr7c5{ew .} ==> Br6c4 ≠ esw, Br7c4 ≠ ew, Br7c4 ≠ nes, Br7c5 ≠ nw, Br6c4 ≠ w, Br7c4 ≠ ne
whip[1]: Br7c4{ns .} ==> Pr8c5 ≠ ns, Pr8c5 ≠ nw, Nr7c4 ≠ 3
whip[1]: Br6c4{sw .} ==> Nr6c4 ≠ 1, Nr6c4 ≠ 3
N-single: Nr6c4 = 2
whip[1]: Vr7c6{1 .} ==> Br7c6 ≠ nes, Br7c6 ≠ o, Pr7c6 ≠ nw, Pr7c6 ≠ ew, Pr8c6 ≠ ew, Pr8c6 ≠ sw, Br7c5 ≠ ns, Br7c6 ≠ n, Br7c6 ≠ e, Br7c6 ≠ s, Br7c6 ≠ ne, Br7c6 ≠ ns, Br7c6 ≠ se
P-single: Pr7c6 = sw
B-single: Br7c5 = ne
w[1]-1-in-r6c6-symmetric-sw-corner ==> Pr6c7 ≠ sw, Pr6c7 ≠ o
whip[1]: Pr7c6{sw .} ==> Br6c6 ≠ w, Br6c6 ≠ s, Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes
whip[1]: Br6c5{swn .} ==> Pr6c6 ≠ ns, Pr6c6 ≠ se, Pr6c6 ≠ sw
whip[1]: Br6c6{e .} ==> Pr7c7 ≠ nw, Pr7c7 ≠ ew, Pr7c7 ≠ sw
whip[1]: Pr6c7{ew .} ==> Hr6c7 ≠ 0, Br6c7 ≠ se, Br6c7 ≠ ew, Br6c7 ≠ sw, Br6c7 ≠ esw, Br5c7 ≠ n, Br5c7 ≠ ne, Br6c7 ≠ o, Br6c7 ≠ e, Br6c7 ≠ s, Br6c7 ≠ w
H-single: Hr6c7 = 1
whip[1]: Hr6c7{1 .} ==> Pr6c8 ≠ o, Pr6c8 ≠ ne, Pr6c8 ≠ ns, Pr6c8 ≠ se
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ sw, Br5c8 ≠ esw, Br6c8 ≠ nw
whip[1]: Br6c8{sw .} ==> Pr7c9 ≠ o, Pr7c9 ≠ se
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ nw
whip[1]: Br7c9{sw .} ==> Pr8c10 ≠ o, Pr8c10 ≠ se
whip[1]: Pr8c10{sw .} ==> Br8c10 ≠ swn, Br8c10 ≠ wne
whip[1]: Br8c10{nes .} ==> Hr9c10 ≠ 0, Vr8c11 ≠ 0, Pr8c10 ≠ nw, Pr8c11 ≠ o, Pr8c11 ≠ ne, Pr8c11 ≠ nw, Pr8c11 ≠ ew, Pr9c10 ≠ o, Pr9c10 ≠ ns, Pr9c10 ≠ nw, Pr9c10 ≠ sw, Pr9c11 ≠ o, Pr9c11 ≠ ne, Pr9c11 ≠ ns, Pr9c11 ≠ se, Pr9c11 ≠ ew, Pr9c11 ≠ sw
V-single: Vr8c11 = 1
H-single: Hr9c10 = 1
V-single: Vr9c11 = 0
H-single: Hr9c11 = 0
w[1]-2-in-r9c11-open-nw-corner ==> Hr10c11 = 1, Vr9c12 = 1, Hr10c12 = 0, Vr10c12 = 0
V-single: Vr10c12 = 0
H-single: Hr10c12 = 0
V-single: Vr9c12 = 1
H-single: Hr10c11 = 1
w[1]-2-in-r10c12-open-nw-corner ==> Hr11c12 = 1, Vr10c13 = 1, Hr11c13 = 0, Vr11c13 = 0
V-single: Vr11c13 = 0
H-single: Hr11c13 = 0
V-single: Vr10c13 = 1
H-single: Hr11c12 = 1
w[1]-diagonal-3-2-in-{r9c13...r10c12}-non-closed-sw-corner ==> Vr9c14 = 1, Hr9c13 = 1, Vr8c14 = 0, Hr9c14 = 0
H-single: Hr9c14 = 0
V-single: Vr8c14 = 0
H-single: Hr9c13 = 1
V-single: Vr9c14 = 1
w[1]-diagonal-3-2-in-{r7c12...r8c13}-non-closed-se-corner ==> Vr7c12 = 1, Hr7c12 = 1, Vr6c12 = 0, Hr7c11 = 0
H-single: Hr7c11 = 0
V-single: Vr6c12 = 0
H-single: Hr7c12 = 1
V-single: Vr7c12 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r9 r8}c10 ==> Vr9c10 = 0, Hr10c10 = 0
H-single: Hr10c10 = 0
V-single: Vr9c10 = 0
w[1]-3-in-r7c12-closed-nw-corner ==> Pr8c13 ≠ se
P-single: Pr11c13 = nw
P-single: Pr10c12 = nw
P-single: Pr9c11 = nw
w[1]-1-in-r9c10-asymmetric-ne-corner ==> Pr10c10 ≠ ew, Pr10c10 ≠ se, Pr10c10 ≠ nw, Pr10c10 ≠ ns
whip[1]: Vr8c11{1 .} ==> Br8c11 ≠ o, Br8c11 ≠ n, Br8c11 ≠ e, Br8c11 ≠ s, Br8c11 ≠ ne, Br8c11 ≠ ns, Br8c11 ≠ se, Br8c11 ≠ nes
whip[1]: Br8c11{wne .} ==> Nr8c11 ≠ 0
whip[1]: Hr9c10{1 .} ==> Br9c10 ≠ e, Br9c10 ≠ s, Br9c10 ≠ w
B-single: Br9c10 = n
P-single: Pr10c11 = se
V-single: Vr10c11 = 1
whip[1]: Pr10c11{se .} ==> Br10c11 ≠ w, Br10c11 ≠ s, Br10c11 ≠ e, Br10c11 ≠ n, Br10c11 ≠ o, Br10c10 ≠ w, Br10c10 ≠ s, Br10c10 ≠ n, Br10c10 ≠ o, Br9c11 ≠ ne, Br9c11 ≠ nw, Br9c11 ≠ ew, Br9c11 ≠ sw, Br10c10 ≠ ne, Br10c10 ≠ ns, Br10c10 ≠ nw, Br10c10 ≠ sw, Br10c10 ≠ swn, Br10c10 ≠ wne, Br10c10 ≠ nes, Br10c11 ≠ ne, Br10c11 ≠ ns, Br10c11 ≠ se, Br10c11 ≠ ew, Br10c11 ≠ sw, Br10c11 ≠ esw, Br10c11 ≠ nes
whip[1]: Br10c11{wne .} ==> Pr11c11 ≠ o, Pr11c11 ≠ se, Pr11c11 ≠ ew, Pr11c11 ≠ sw, Pr11c12 ≠ nw, Nr10c11 ≠ 0, Nr10c11 ≠ 1
whip[1]: Pr11c12{ew .} ==> Br10c12 ≠ sw, Br11c11 ≠ wne, Br11c11 ≠ nes, Br11c12 ≠ se, Br10c12 ≠ ne, Br11c11 ≠ s, Br11c11 ≠ w, Br11c12 ≠ o, Br11c12 ≠ e, Br11c12 ≠ s
whip[1]: Br11c12{nes .} ==> Nr11c12 ≠ 0
whip[1]: Br11c11{ew .} ==> Nr11c11 ≠ 1, Nr11c11 ≠ 3
N-single: Nr11c11 = 2
whip[1]: Pr11c11{nw .} ==> Br11c10 ≠ ne, Br11c11 ≠ nw
whip[1]: Br11c11{ew .} ==> Pr12c12 ≠ o, Pr12c12 ≠ se
whip[1]: Pr12c12{sw .} ==> Br12c12 ≠ swn, Br12c12 ≠ wne
whip[1]: Br12c12{sw .} ==> Nr12c12 ≠ 3
whip[1]: Br11c10{sw .} ==> Pr12c10 ≠ o, Pr12c10 ≠ sw
whip[1]: Pr12c10{ew .} ==> Br12c9 ≠ wne, Br12c9 ≠ nes
whip[1]: Br12c9{ew .} ==> Nr12c9 ≠ 3
whip[1]: Br10c10{esw .} ==> Nr10c10 ≠ 0
whip[1]: Pr9c10{ew .} ==> Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ esw, Br8c9 ≠ nes, Br9c9 ≠ se, Br9c9 ≠ ew, Br9c9 ≠ esw, Br9c9 ≠ wne, Br9c9 ≠ nes, Br8c9 ≠ o, Br8c9 ≠ n, Br8c9 ≠ w, Br9c9 ≠ e, Br9c9 ≠ ne
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 0
whip[1]: Pr10c10{sw .} ==> Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c9 ≠ esw, Br10c9 ≠ swn, Br10c9 ≠ n, Br10c9 ≠ e, Br10c9 ≠ ns
whip[1]: Hr9c11{0 .} ==> Pr9c12 ≠ nw, Pr9c12 ≠ ew, Br8c11 ≠ sw, Br8c11 ≠ esw, Br8c11 ≠ swn, Br9c11 ≠ ns
B-single: Br9c11 = se
whip[1]: Pr9c12{se .} ==> Br8c12 ≠ ne, Br8c12 ≠ sw, Br8c12 ≠ esw, Br8c12 ≠ swn, Br9c12 ≠ ne, Br9c12 ≠ ns, Br9c12 ≠ se, Br9c12 ≠ nes, Br8c12 ≠ o, Br8c12 ≠ n, Br8c12 ≠ e, Br9c12 ≠ o, Br9c12 ≠ n, Br9c12 ≠ e, Br9c12 ≠ s
whip[1]: Br9c12{wne .} ==> Nr9c12 ≠ 0
whip[1]: Br8c12{nes .} ==> Nr8c12 ≠ 0
whip[1]: Vr10c12{0 .} ==> Pr11c12 ≠ ns, Br10c11 ≠ wne, Br10c12 ≠ nw, Br10c12 ≠ ew
whip[1]: Pr11c12{ew .} ==> Br11c12 ≠ ew, Br11c12 ≠ sw, Br11c12 ≠ esw, Br11c12 ≠ w
whip[1]: Hr10c12{0 .} ==> Pr10c13 ≠ nw, Pr10c13 ≠ ew, Br9c12 ≠ sw, Br9c12 ≠ esw, Br9c12 ≠ swn, Br10c12 ≠ ns
B-single: Br10c12 = se
whip[1]: Pr10c13{se .} ==> Br9c13 ≠ esw, Br9c13 ≠ swn, Br10c13 ≠ ne, Br10c13 ≠ ns, Br10c13 ≠ se, Br10c13 ≠ nes, Br10c13 ≠ o, Br10c13 ≠ n, Br10c13 ≠ e, Br10c13 ≠ s
whip[1]: Br10c13{wne .} ==> Nr10c13 ≠ 0
whip[1]: Br9c13{nes .} ==> Pr9c13 ≠ ns, Pr9c13 ≠ nw, Pr9c14 ≠ ne, Pr9c14 ≠ ns, Pr9c14 ≠ ew, Pr10c14 ≠ o, Pr10c14 ≠ se, Pr10c14 ≠ ew, Pr10c14 ≠ sw
P-single: Pr9c14 = sw
w[1]-1-in-r8c14-symmetric-sw-corner ==> Pr8c15 ≠ sw, Pr8c15 ≠ ne, Pr8c15 ≠ o
whip[1]: Pr9c14{sw .} ==> Br9c14 ≠ ns, Br9c14 ≠ ne, Br9c14 ≠ s, Br9c14 ≠ e, Br9c14 ≠ n, Br9c14 ≠ o, Br8c14 ≠ w, Br8c14 ≠ s, Br8c13 ≠ ne, Br8c13 ≠ nw, Br8c13 ≠ se, Br8c13 ≠ ew, Br9c14 ≠ nw, Br9c14 ≠ se, Br9c14 ≠ swn, Br9c14 ≠ wne, Br9c14 ≠ nes
whip[1]: Br9c14{esw .} ==> Pr9c15 ≠ nw, Pr9c15 ≠ ew, Pr9c15 ≠ sw, Nr9c14 ≠ 0
whip[1]: Br8c13{sw .} ==> Pr8c14 ≠ ns, Pr8c14 ≠ se
whip[1]: Pr8c15{ew .} ==> Br7c15 ≠ sw, Br7c15 ≠ esw, Br7c15 ≠ swn, Br7c15 ≠ o, Br7c15 ≠ n, Br7c15 ≠ e, Br7c15 ≠ ne
whip[1]: Br7c15{nes .} ==> Nr7c15 ≠ 0
whip[1]: Pr10c14{nw .} ==> Br10c13 ≠ wne, Br10c14 ≠ nw, Br10c14 ≠ swn, Br10c14 ≠ wne
whip[1]: Pr9c13{ew .} ==> Br8c12 ≠ se, Br8c12 ≠ nes, Br9c12 ≠ wne
whip[1]: Br9c12{ew .} ==> Nr9c12 ≠ 3
whip[1]: Vr11c13{0 .} ==> Pr12c13 ≠ ne, Pr12c13 ≠ ns, Br11c12 ≠ ne, Br11c12 ≠ wne, Br11c12 ≠ nes, Br11c13 ≠ w, Br11c13 ≠ nw, Br11c13 ≠ ew, Br11c13 ≠ sw, Br11c13 ≠ esw, Br11c13 ≠ swn, Br11c13 ≠ wne
whip[1]: Pr12c13{sw .} ==> Hr12c12 ≠ 0, Br11c12 ≠ nw, Br12c12 ≠ ew, Br12c12 ≠ sw, Br11c12 ≠ n, Br12c12 ≠ e, Br12c12 ≠ s
H-single: Hr12c12 = 1
whip[1]: Hr12c12{1 .} ==> Pr12c12 ≠ ns, Pr12c12 ≠ nw, Pr12c12 ≠ sw
whip[1]: Pr11c11{ns .} ==> Hr11c10 ≠ 1, Br10c10 ≠ se, Br10c10 ≠ esw, Br11c10 ≠ ns, Br11c10 ≠ nw, Br11c11 ≠ se
H-single: Hr11c10 = 0
whip[1]: Hr11c10{0 .} ==> Pr11c10 ≠ ew
whip[1]: Pr11c10{nw .} ==> Vr10c10 ≠ 0, Br10c9 ≠ w, Br10c9 ≠ sw, Br11c9 ≠ ne, Br11c9 ≠ sw, Br10c9 ≠ o, Br10c9 ≠ s, Br10c10 ≠ e
V-single: Vr10c10 = 1
B-single: Br10c10 = ew
N-single: Nr10c10 = 2
P-single: Pr10c10 = sw
H-single: Hr10c9 = 1
whip[1]: Pr10c10{sw .} ==> Br9c9 ≠ w, Br9c9 ≠ n, Br9c9 ≠ o, Br9c9 ≠ nw
whip[1]: Br9c9{swn .} ==> Pr10c9 ≠ o, Pr10c9 ≠ ns, Pr10c9 ≠ nw, Pr10c9 ≠ sw, Nr9c9 ≠ 0
whip[1]: Pr10c9{ew .} ==> Br9c8 ≠ se, Br9c8 ≠ esw, Br9c8 ≠ nes, Br10c8 ≠ ne
whip[1]: Br10c8{sw .} ==> Pr11c8 ≠ o, Pr11c8 ≠ sw
whip[1]: Pr11c8{ew .} ==> Br11c7 ≠ wne, Br11c7 ≠ nes, Br11c7 ≠ ne
whip[1]: Br10c9{nes .} ==> Pr11c9 ≠ ne, Nr10c9 ≠ 0, Nr10c9 ≠ 1
whip[1]: Pr12c11{ew .} ==> Br12c11 ≠ nw
whip[1]: Br12c11{sw .} ==> Pr13c12 ≠ o, Pr13c12 ≠ se
whip[1]: Pr13c12{sw .} ==> Br13c12 ≠ nw
whip[1]: Pr12c12{ew .} ==> Vr12c12 ≠ 1, Br12c11 ≠ se, Br12c11 ≠ ew, Br12c11 ≠ ne
V-single: Vr12c12 = 0
P-single: Pr11c10 = ns
H-single: Hr11c9 = 0
V-single: Vr11c10 = 1
whip[1]: Vr12c12{0 .} ==> Pr13c12 ≠ ne, Pr13c12 ≠ ns
whip[1]: Pr13c12{sw .} ==> Hr13c11 ≠ 0, Br13c11 ≠ se, Br13c11 ≠ ew, Br13c11 ≠ sw, Br13c11 ≠ esw, Br13c11 ≠ o, Br13c11 ≠ e, Br13c11 ≠ s, Br13c11 ≠ w, Br13c12 ≠ o, Br13c12 ≠ s
H-single: Hr13c11 = 1
whip[1]: Hr13c11{1 .} ==> Pr13c11 ≠ ns, Pr13c11 ≠ nw
whip[1]: Pr13c11{ew .} ==> Br12c10 ≠ se, Br13c10 ≠ wne, Br13c10 ≠ nes, Br13c10 ≠ ne
whip[1]: Br13c10{ew .} ==> Nr13c10 ≠ 3
whip[1]: Br12c10{ew .} ==> Pr12c10 ≠ nw
w[1]-1-in-r9c7-asymmetric-se-corner ==> Pr9c7 ≠ sw, Pr9c7 ≠ ew, Pr9c7 ≠ ns, Pr9c7 ≠ ne
whip[1]: Pr9c7{se .} ==> Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ ew, Br8c6 ≠ sw, Br8c6 ≠ swn, Br8c6 ≠ wne, Br8c7 ≠ sw, Br8c7 ≠ esw, Br8c7 ≠ swn, Br9c6 ≠ ne, Br8c6 ≠ e, Br8c6 ≠ s, Br9c7 ≠ n, Br9c7 ≠ w
whip[1]: Br9c7{s .} ==> Hr9c7 ≠ 1, Vr9c7 ≠ 1, Pr10c7 ≠ ne, Pr10c7 ≠ ns, Pr9c7 ≠ se, Pr9c8 ≠ nw, Pr9c8 ≠ ew, Pr9c8 ≠ sw, Pr10c7 ≠ nw
V-single: Vr9c7 = 0
H-single: Hr9c7 = 0
whip[1]: Vr9c7{0 .} ==> Br9c6 ≠ se, Br9c6 ≠ ew
whip[1]: Hr9c7{0 .} ==> Br8c7 ≠ s, Br8c7 ≠ ns, Br8c7 ≠ se, Br8c7 ≠ nes
whip[1]: Pr9c6{sw .} ==> Br8c5 ≠ se, Br8c5 ≠ esw, Br8c5 ≠ nes
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ wne, Br10c5 ≠ nes, Br10c5 ≠ ne
whip[1]: Pr13c11{ew .} ==> Vr13c11 ≠ 1, Br12c10 ≠ nw, Br13c10 ≠ se, Br13c10 ≠ ew, Br13c11 ≠ nw, Br13c11 ≠ swn, Br13c11 ≠ wne, Br13c10 ≠ e
V-single: Vr13c11 = 0
whip[1]: Vr13c11{0 .} ==> Pr14c11 ≠ ne, Pr14c11 ≠ ns, Pr14c11 ≠ nw
whip[1]: Br13c11{nes .} ==> Nr13c11 ≠ 0
whip[1]: Pr10c8{sw .} ==> Br10c8 ≠ nw, Br10c8 ≠ se
whip[1]: Pr11c9{sw .} ==> Br11c8 ≠ sw, Br11c9 ≠ nw, Br11c9 ≠ se
whip[1]: Br11c8{ew .} ==> Pr12c8 ≠ ne
whip[1]: Pr12c8{ew .} ==> Br11c7 ≠ ew, Br11c7 ≠ e
whip[1]: Br13c12{ns .} ==> Nr13c12 ≠ 0
whip[1]: Pr11c10{ns .} ==> Br10c9 ≠ nes, Br11c9 ≠ ns, Br11c10 ≠ se
B-single: Br11c9 = ew
H-single: Hr12c9 = 0
V-single: Vr11c9 = 1
whip[1]: Hr12c9{0 .} ==> Br12c9 ≠ ns, Br12c9 ≠ nw
whip[1]: Vr11c9{1 .} ==> Br11c8 ≠ ns, Br11c8 ≠ nw
whip[1]: Br11c8{ew .} ==> Pr11c8 ≠ se
whip[1]: Pr11c8{ew .} ==> Br10c7 ≠ nw, Br10c7 ≠ o, Br10c7 ≠ n, Br10c7 ≠ w
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 0
whip[1]: Br12c12{ns .} ==> Nr12c12 ≠ 1
N-single: Nr12c12 = 2
whip[1]: Br11c12{swn .} ==> Nr11c12 ≠ 1
whip[1]: Hr11c13{0 .} ==> Pr11c14 ≠ nw, Pr11c14 ≠ ew, Pr11c14 ≠ sw, Br10c13 ≠ sw, Br10c13 ≠ esw, Br10c13 ≠ swn, Br11c13 ≠ n, Br11c13 ≠ ne, Br11c13 ≠ ns, Br11c13 ≠ nes
whip[1]: Br11c13{se .} ==> Nr11c13 ≠ 3
whip[1]: Br10c13{ew .} ==> Nr10c13 ≠ 3
whip[1]: Hr7c11{0 .} ==> Pr7c11 ≠ ne, Pr7c11 ≠ se, Pr7c11 ≠ ew, Pr7c12 ≠ nw, Pr7c12 ≠ ew, Pr7c12 ≠ sw, Br6c11 ≠ s, Br6c11 ≠ ns, Br6c11 ≠ se, Br6c11 ≠ sw, Br6c11 ≠ esw, Br6c11 ≠ swn, Br6c11 ≠ nes, Br7c11 ≠ n, Br7c11 ≠ ne, Br7c11 ≠ ns, Br7c11 ≠ nw, Br7c11 ≠ swn, Br7c11 ≠ wne, Br7c11 ≠ nes
whip[1]: Vr6c12{0 .} ==> Pr6c12 ≠ ns, Pr6c12 ≠ se, Pr6c12 ≠ sw, Pr7c12 ≠ ne, Pr7c12 ≠ ns, Br6c11 ≠ e, Br6c11 ≠ ne, Br6c11 ≠ ew, Br6c11 ≠ wne, Br6c12 ≠ w, Br6c12 ≠ nw, Br6c12 ≠ ew, Br6c12 ≠ sw, Br6c12 ≠ esw, Br6c12 ≠ swn, Br6c12 ≠ wne
whip[1]: Br6c11{nw .} ==> Nr6c11 ≠ 3
whip[1]: Pr7c12{se .} ==> Br7c12 ≠ esw, Br7c12 ≠ nes
whip[1]: Br7c12{wne .} ==> Pr7c12 ≠ o, Pr7c13 ≠ o, Pr7c13 ≠ ne, Pr7c13 ≠ ns, Pr7c13 ≠ se, Pr8c12 ≠ o, Pr8c12 ≠ se, Pr8c12 ≠ ew, Pr8c12 ≠ sw
P-single: Pr7c12 = se
whip[1]: Pr7c12{se .} ==> Br7c11 ≠ w, Br7c11 ≠ s, Br7c11 ≠ o, Br6c12 ≠ e, Br6c12 ≠ n, Br6c12 ≠ o, Br6c12 ≠ ne, Br7c11 ≠ sw
whip[1]: Br7c11{esw .} ==> Nr7c11 ≠ 0
whip[1]: Br6c12{nes .} ==> Nr6c12 ≠ 0
whip[1]: Pr8c12{nw .} ==> Br8c11 ≠ wne, Br8c12 ≠ nw, Br8c12 ≠ wne
whip[1]: Br8c12{ew .} ==> Pr8c13 ≠ sw, Nr8c12 ≠ 3
whip[1]: Pr8c13{ew .} ==> Br7c13 ≠ o, Br7c13 ≠ n, Br7c13 ≠ e, Br7c13 ≠ ne
whip[1]: Br7c13{nes .} ==> Nr7c13 ≠ 0
whip[1]: Br8c11{ew .} ==> Nr8c11 ≠ 3
whip[1]: Pr7c13{sw .} ==> Br6c13 ≠ sw, Br6c13 ≠ esw, Br6c13 ≠ swn, Br7c13 ≠ nw, Br7c13 ≠ swn, Br7c13 ≠ wne
whip[1]: Pr6c8{sw .} ==> Vr5c8 ≠ 1, Br5c7 ≠ nes, Br5c8 ≠ ew, Br6c8 ≠ se, Br5c8 ≠ w
V-single: Vr5c8 = 0
B-single: Br5c7 = ns
N-single: Nr5c7 = 2
P-single: Pr5c8 = ew
H-single: Hr5c8 = 1
whip[1]: Pr5c8{ew .} ==> Br4c8 ≠ ne
B-single: Br4c8 = ns
V-single: Vr4c9 = 0
whip[1]: Vr4c9{0 .} ==> Br4c9 ≠ ew, Br4c9 ≠ sw
whip[1]: Pr4c10{sw .} ==> Br4c10 ≠ se
whip[1]: Br4c10{sw .} ==> Pr5c11 ≠ nw
whip[1]: Pr4c9{ew .} ==> Br3c9 ≠ o
whip[1]: Br3c9{w .} ==> Nr3c9 ≠ 0
N-single: Nr3c9 = 1
whip[1]: Pr7c9{sw .} ==> Br7c9 ≠ se
whip[1]: Pr8c11{sw .} ==> Br7c10 ≠ se, Br7c10 ≠ esw, Br7c10 ≠ nes, Br7c11 ≠ esw
whip[1]: Br7c11{ew .} ==> Nr7c11 ≠ 3
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Pr8c5{sw .} ==> Br8c4 ≠ esw, Br8c4 ≠ swn, Br8c5 ≠ nw, Br8c5 ≠ swn, Br8c5 ≠ wne, Br8c5 ≠ n, Br8c5 ≠ ne, Br8c5 ≠ ns
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 3
whip[1]: Br8c4{nes .} ==> Pr8c4 ≠ ns, Pr8c4 ≠ nw, Pr8c4 ≠ sw, Pr8c5 ≠ o, Pr9c5 ≠ o, Pr9c5 ≠ se, Pr9c5 ≠ ew, Pr9c5 ≠ sw
P-single: Pr8c5 = sw
whip[1]: Pr8c5{sw .} ==> Br8c5 ≠ s, Br8c5 ≠ e, Br8c5 ≠ o, Br7c4 ≠ w, Br7c4 ≠ n
B-single: Br7c4 = ns
H-single: Hr7c4 = 1
V-single: Vr7c4 = 0
N-single: Nr7c4 = 2
P-single: Pr7c4 = ne
P-single: Pr7c5 = ew
V-single: Vr6c5 = 0
whip[1]: Hr7c4{1 .} ==> Br6c4 ≠ ew
B-single: Br6c4 = sw
whip[1]: Vr7c4{0 .} ==> Br7c3 ≠ e, Br7c3 ≠ se
whip[1]: Br7c3{s .} ==> Nr7c3 ≠ 2
whip[1]: Pr7c5{ew .} ==> Br6c5 ≠ sw, Br6c5 ≠ swn
whip[1]: Br6c5{ns .} ==> Nr6c5 ≠ 3
whip[1]: Pr6c5{ne .} ==> Br5c5 ≠ s, Br5c5 ≠ w, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ wne, Br5c5 ≠ nes
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 0
whip[1]: Pr9c3{se .} ==> Hr9c2 ≠ 1, Br8c2 ≠ ns, Br8c3 ≠ ne, Br9c2 ≠ ne
H-single: Hr9c2 = 0
w[1]-3-in-r8c1-isolated-at-se-corner ==> Vr8c2 = 1
V-single: Vr8c2 = 1
H-single: Hr8c1 = 0
w[1]-3-in-r8c1-closed-se-corner ==> Pr8c1 ≠ se
P-single: Pr8c1 = ns
V-single: Vr7c1 = 1
B-single: Br9c2 = e
N-single: Nr9c2 = 1
P-single: Pr9c2 = nw
vertical-line-r7{c0 c1} ==> Ir7c1 = in
I-single: Ir7c1 = in
no-vertical-line-r7{c1 c2} ==> Ir7c2 = in
I-single: Ir7c2 = in
no-vertical-line-r7{c2 c3} ==> Ir7c3 = in
I-single: Ir7c3 = in
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
I-single: Ir7c4 = in
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
I-single: Ir7c5 = in
no-horizontal-line-{r7 r8}c5 ==> Ir8c5 = in
I-single: Ir8c5 = in
vertical-line-r8{c4 c5} ==> Ir8c4 = out
I-single: Ir8c4 = out
vertical-line-r7{c5 c6} ==> Ir7c6 = out
I-single: Ir7c6 = out
no-horizontal-line-{r6 r7}c6 ==> Ir6c6 = out
I-single: Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
I-single: Ir6c5 = out
no-vertical-line-r6{c4 c5} ==> Ir6c4 = out
I-single: Ir6c4 = out
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = out
I-single: Ir5c4 = out
no-vertical-line-r5{c3 c4} ==> Ir5c3 = out
I-single: Ir5c3 = out
no-vertical-line-r5{c2 c3} ==> Ir5c2 = out
I-single: Ir5c2 = out
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = out
I-single: Ir6c2 = out
vertical-line-r6{c1 c2} ==> Ir6c1 = in
I-single: Ir6c1 = in
vertical-line-r6{c2 c3} ==> Ir6c3 = in
I-single: Ir6c3 = in
horizontal-line-{r7 r8}c2 ==> Ir8c2 = out
I-single: Ir8c2 = out
different-colours-in-r6{c0 c1} ==> Hr6c1 = 1
V-single: Vr6c1 = 1
whip[1]: Vr8c2{1 .} ==> Pr8c2 ≠ ew, Br8c1 ≠ swn
P-single: Pr8c2 = se
B-single: Br8c1 = esw
w[1]-1-in-r7c1-symmetric-se-corner ==> Pr7c1 ≠ o
P-single: Pr6c2 = ns
H-single: Hr6c1 = 0
V-single: Vr5c2 = 1
w[1]-3-in-r4c2-hit-by-verti-line-at-sw ==> Vr4c3 = 1, Hr4c2 = 1, Hr5c1 = 0
H-single: Hr5c1 = 0
H-single: Hr4c2 = 1
V-single: Vr4c3 = 1
V-single: Vr3c3 = 0
H-single: Hr4c3 = 0
w[1]-2-in-r3c3-open-sw-corner ==> Hr3c3 = 1, Vr3c4 = 1, Hr3c4 = 0, Vr2c4 = 0
V-single: Vr2c4 = 0
H-single: Hr3c4 = 0
V-single: Vr3c4 = 1
H-single: Hr3c3 = 1
w[1]-diagonal-3-2-in-{r2c2...r3c3}-non-closed-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
H-single: Hr2c2 = 1
V-single: Vr2c2 = 1
w[1]-3-in-r4c2-closed-ne-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
P-single: Pr7c1 = ns
w[1]-1-in-r4c4-asymmetric-nw-corner ==> Pr5c5 ≠ ew, Pr5c5 ≠ ns
vertical-line-r5{c1 c2} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-horizontal-line-{r4 r5}c1 ==> Ir4c1 = in
I-single: Ir4c1 = in
different-colours-in-r4{c0 c1} ==> Hr4c1 = 1
V-single: Vr4c1 = 1
different-colours-in-r5{c0 c1} ==> Hr5c1 = 1
V-single: Vr5c1 = 1
whip[1]: Pr8c2{se .} ==> Br7c1 ≠ s
B-single: Br7c1 = w
whip[1]: Pr6c2{ns .} ==> Br5c2 ≠ n, Br5c2 ≠ o, Br5c1 ≠ s, Br5c1 ≠ ns, Br5c1 ≠ sw, Br5c1 ≠ swn, Br6c1 ≠ ne
B-single: Br6c1 = ew
P-single: Pr6c1 = ns
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ e, Br5c1 ≠ ne
whip[1]: Br5c1{wne .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ne, Pr5c2 ≠ nw, Pr5c2 ≠ ew, Nr5c1 ≠ 1
w[1]-1-in-r4c1-asymmetric-sw-corner ==> Pr4c2 ≠ ew, Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ ns
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ se, Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c2 ≠ nes, Br4c2 ≠ swn, Br4c2 ≠ wne, Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ns, Br4c1 ≠ n, Br4c1 ≠ e
whip[1]: Br4c1{w .} ==> Hr4c1 ≠ 1, Vr4c2 ≠ 1, Pr4c1 ≠ ne, Pr5c2 ≠ ns, Pr4c1 ≠ se, Pr4c2 ≠ sw
V-single: Vr4c2 = 0
H-single: Hr4c1 = 0
P-single: Pr5c2 = se
H-single: Hr5c2 = 1
H-single: Hr5c3 = 0
w[1]-3-in-r4c2-closed-se-corner ==> Pr4c2 ≠ o
P-single: Pr4c2 = ne
V-single: Vr3c2 = 1
w[1]-3-in-r2c2-hit-by-verti-line-at-sw ==> Vr2c3 = 1, Hr3c1 = 0
H-single: Hr3c1 = 0
V-single: Vr2c3 = 1
H-single: Hr3c2 = 0
V-single: Vr1c3 = 0
H-single: Hr2c3 = 0
w[1]-2-in-r1c3-open-sw-corner ==> Hr1c3 = 1, Vr1c4 = 1, Hr1c4 = 0
H-single: Hr1c4 = 0
V-single: Vr1c4 = 1
H-single: Hr1c3 = 1
w[1]-3-in-r2c2-closed-ne-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
w[1]-1-in-r4c1-symmetric-se-corner ==> Pr4c1 ≠ o
P-single: Pr4c1 = ns
V-single: Vr3c1 = 1
vertical-line-r3{c0 c1} ==> Ir3c1 = in
I-single: Ir3c1 = in
no-horizontal-line-{r2 r3}c1 ==> Ir2c1 = in
I-single: Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
I-single: Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
I-single: Ir1c2 = in
no-vertical-line-r1{c2 c3} ==> Ir1c3 = in
I-single: Ir1c3 = in
no-horizontal-line-{r1 r2}c3 ==> Ir2c3 = in
I-single: Ir2c3 = in
no-vertical-line-r2{c3 c4} ==> Ir2c4 = in
I-single: Ir2c4 = in
no-horizontal-line-{r2 r3}c4 ==> Ir3c4 = in
I-single: Ir3c4 = in
vertical-line-r3{c3 c4} ==> Ir3c3 = out
I-single: Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
I-single: Ir3c2 = out
no-horizontal-line-{r2 r3}c2 ==> Ir2c2 = out
I-single: Ir2c2 = out
horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
I-single: Ir4c2 = in
vertical-line-r4{c2 c3} ==> Ir4c3 = out
I-single: Ir4c3 = out
vertical-line-r1{c3 c4} ==> Ir1c4 = out
I-single: Ir1c4 = out
different-colours-in-{r1 r2}c4 ==> Hr2c4 = 1
H-single: Hr2c4 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
whip[1]: Vr4c2{0 .} ==> Br4c2 ≠ esw
B-single: Br4c2 = nes
P-single: Pr3c4 = sw
P-single: Pr4c3 = sw
P-single: Pr5c3 = nw
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ ns, Br3c4 ≠ s, Br3c4 ≠ e, Br3c4 ≠ n, Br3c4 ≠ o, Br3c3 ≠ ns, Br2c4 ≠ ns, Br2c4 ≠ w, Br2c4 ≠ s, Br2c3 ≠ ne, Br2c3 ≠ w, Br2c3 ≠ e, Br2c3 ≠ n, Br2c3 ≠ o, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ esw, Br2c3 ≠ wne, Br2c3 ≠ nes, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ sw, Br2c4 ≠ swn, Br2c4 ≠ wne, Br3c3 ≠ nw, Br3c3 ≠ se, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ swn
B-single: Br3c3 = ne
whip[1]: Pr3c3{ew .} ==> Br2c2 ≠ esw, Br2c2 ≠ nes, Br3c2 ≠ esw, Br3c2 ≠ e, Br3c2 ≠ ne
whip[1]: Br2c2{wne .} ==> Pr2c2 ≠ o, Pr2c2 ≠ ne, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Pr2c2 ≠ ew, Pr2c2 ≠ sw, Pr2c3 ≠ o, Pr2c3 ≠ ns, Pr2c3 ≠ se, Pr3c2 ≠ se, Pr3c2 ≠ ew
P-single: Pr2c2 = se
whip[1]: Pr2c2{se .} ==> Br2c1 ≠ w, Br2c1 ≠ s, Br2c1 ≠ n, Br2c1 ≠ o, Br1c2 ≠ w, Br1c2 ≠ e, Br1c2 ≠ n, Br1c2 ≠ o, Br1c1 ≠ s, Br1c1 ≠ e, Br1c1 ≠ se, Br1c1 ≠ swn, Br1c1 ≠ wne, Br1c2 ≠ ne, Br1c2 ≠ nw, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ wne, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ nw, Br2c1 ≠ sw, Br2c1 ≠ swn, Br2c1 ≠ wne, Br2c1 ≠ nes
whip[1]: Br2c1{esw .} ==> Pr2c1 ≠ ne, Pr2c1 ≠ se, Nr2c1 ≠ 0
whip[1]: Br1c2{nes .} ==> Pr1c2 ≠ se, Pr1c2 ≠ sw, Nr1c2 ≠ 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, Nr1c1 ≠ 3
whip[1]: Pr3c2{nw .} ==> Br2c2 ≠ swn, Br3c1 ≠ w, Br3c1 ≠ ne, Br3c1 ≠ sw, Br3c1 ≠ wne, Br3c2 ≠ swn, Br3c1 ≠ o, Br3c1 ≠ s, Br3c2 ≠ n
B-single: Br2c2 = wne
P-single: Pr1c4 = sw
P-single: Pr2c3 = sw
P-single: Pr3c3 = ne
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ ns, Br1c4 ≠ ne, Br1c4 ≠ s, Br1c4 ≠ e, Br1c4 ≠ n, Br1c4 ≠ o, Br1c3 ≠ ns, Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes
B-single: Br1c3 = ne
P-single: Pr1c3 = ew
whip[1]: Pr1c3{ew .} ==> Br1c2 ≠ s, Br1c2 ≠ se, Br1c2 ≠ nes
B-single: Br1c2 = ns
N-single: Nr1c2 = 2
P-single: Pr1c2 = ew
whip[1]: Pr1c2{ew .} ==> Br1c1 ≠ o
B-single: Br1c1 = nw
N-single: Nr1c1 = 2
P-single: Pr1c1 = se
P-single: Pr2c1 = ns
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ e, Br2c1 ≠ se
whip[1]: Br2c1{esw .} ==> Pr3c1 ≠ o, Pr3c1 ≠ se, Nr2c1 ≠ 1
whip[1]: Pr3c1{ns .} ==> Br3c1 ≠ nw, Br3c1 ≠ swn, Br3c1 ≠ e
whip[1]: Br3c1{ew .} ==> Nr3c1 ≠ 0, Nr3c1 ≠ 3
whip[1]: Pr2c4{ns .} ==> Br2c3 ≠ ns, Br2c3 ≠ swn, Br2c4 ≠ o, Br2c4 ≠ e
whip[1]: Br2c4{ne .} ==> Pr2c4 ≠ ns, Pr2c5 ≠ o, Pr2c5 ≠ ns, Nr2c4 ≠ 0, Nr2c4 ≠ 3, Pr3c5 ≠ ew
P-single: Pr2c4 = ne
whip[1]: Pr2c4{ne .} ==> Br1c4 ≠ w, Br1c4 ≠ ew
whip[1]: Br1c4{esw .} ==> Pr1c5 ≠ ew, Pr1c5 ≠ sw, Nr1c4 ≠ 0, Nr1c4 ≠ 1
whip[1]: Pr1c5{se .} ==> Br1c5 ≠ n, Br1c5 ≠ w
whip[1]: Br1c5{nw .} ==> Nr1c5 ≠ 1
whip[1]: Br2c3{sw .} ==> Nr2c3 ≠ 0, Nr2c3 ≠ 3
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ s
B-single: Br2c3 = sw
N-single: Nr2c3 = 2
whip[1]: Br3c2{sw .} ==> Nr3c2 ≠ 1, Nr3c2 ≠ 3
whip[1]: Pr4c4{ns .} ==> Br4c3 ≠ ne, Br4c3 ≠ ns, Br4c3 ≠ nw, Br4c3 ≠ swn, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ s, Br4c3 ≠ n, Br4c4 ≠ e
whip[1]: Br4c4{w .} ==> Hr5c4 ≠ 1, Vr4c5 ≠ 1, Pr4c5 ≠ ns, Pr5c4 ≠ ne, Pr5c5 ≠ nw, Pr4c5 ≠ se, Pr4c5 ≠ sw, Pr5c4 ≠ ew
V-single: Vr4c5 = 0
H-single: Hr5c4 = 0
P-single: Pr5c5 = se
H-single: Hr5c5 = 1
V-single: Vr5c5 = 1
w[1]-1-in-r5c4-symmetric-nw-corner ==> Pr6c5 ≠ o
P-single: Pr6c5 = ne
H-single: Hr6c5 = 1
horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
I-single: Ir5c5 = in
horizontal-line-{r4 r5}c5 ==> Ir4c5 = out
I-single: Ir4c5 = out
no-vertical-line-r4{c4 c5} ==> Ir4c4 = out
I-single: Ir4c4 = out
same-colour-in-r4{c3 c4} ==> Vr4c4 = 0
V-single: Vr4c4 = 0
different-colours-in-{r3 r4}c4 ==> Hr4c4 = 1
H-single: Hr4c4 = 1
whip[1]: Vr4c5{0 .} ==> Br4c5 ≠ nw, Br4c5 ≠ ew
whip[1]: Br4c5{se .} ==> Pr5c6 ≠ ns
whip[1]: Pr5c6{sw .} ==> Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ o, Br5c5 ≠ e
whip[1]: Br5c5{swn .} ==> Pr6c6 ≠ nw, Nr5c5 ≠ 0
whip[1]: Pr6c6{ew .} ==> Br5c6 ≠ w
whip[1]: Hr5c4{0 .} ==> Br5c4 ≠ n
B-single: Br5c4 = e
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ n, Br5c5 ≠ ne
B-single: Br5c5 = swn
V-single: Vr5c6 = 0
N-single: Nr5c5 = 3
w[1]-diagonal-closed-3-1-in-{r5c5...r6c6} ==> Vr6c7 = 0
V-single: Vr6c7 = 0
w[1]-diagonal-1-1-in-{r6c6...r7c7}-with-no-se-inner-sides ==> Hr7c7 = 0, Vr7c7 = 0
V-single: Vr7c7 = 0
H-single: Hr7c7 = 0
w[1]-diagonal-3-1-in-{r8c8...r7c7}-open-end ==> Vr8c9 = 1, Hr9c8 = 1
H-single: Hr9c8 = 1
V-single: Vr8c9 = 1
V-single: Vr9c9 = 0
H-single: Hr9c9 = 0
w[1]-adjacent-1-3-on-pseudo-edge-in-{r9 r8}c10 ==> Vr8c10 = 1
V-single: Vr8c10 = 1
w[1]-3-in-r8c10-closed-sw-corner ==> Pr8c11 ≠ sw
w[1]-3-in-r8c8-closed-se-corner ==> Pr8c8 ≠ se, Pr8c8 ≠ nw, Pr8c8 ≠ o
P-single: Pr5c6 = nw
V-single: Vr4c6 = 1
H-single: Hr4c5 = 0
P-single: Pr6c6 = ew
H-single: Hr6c6 = 1
w[1]-1-in-r7c7-asymmetric-se-corner ==> Pr7c7 ≠ ns, Pr7c7 ≠ ne
horizontal-line-{r5 r6}c6 ==> Ir5c6 = in
I-single: Ir5c6 = in
no-vertical-line-r5{c6 c7} ==> Ir5c7 = in
I-single: Ir5c7 = in
no-vertical-line-r5{c7 c8} ==> Ir5c8 = in
I-single: Ir5c8 = in
horizontal-line-{r4 r5}c8 ==> Ir4c8 = out
I-single: Ir4c8 = out
no-vertical-line-r4{c7 c8} ==> Ir4c7 = out
I-single: Ir4c7 = out
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = out
I-single: Ir3c7 = out
no-vertical-line-r3{c6 c7} ==> Ir3c6 = out
I-single: Ir3c6 = out
no-vertical-line-r3{c5 c6} ==> Ir3c5 = out
I-single: Ir3c5 = out
horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
I-single: Ir2c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir1c5 = in
I-single: Ir1c5 = in
no-vertical-line-r1{c5 c6} ==> Ir1c6 = in
I-single: Ir1c6 = in
horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
I-single: Ir2c6 = out
no-vertical-line-r2{c6 c7} ==> Ir2c7 = out
I-single: Ir2c7 = out
horizontal-line-{r3 r4}c6 ==> Ir4c6 = in
I-single: Ir4c6 = in
vertical-line-r3{c7 c8} ==> Ir3c8 = in
I-single: Ir3c8 = in
no-vertical-line-r4{c8 c9} ==> Ir4c9 = out
I-single: Ir4c9 = out
horizontal-line-{r5 r6}c7 ==> Ir6c7 = out
I-single: Ir6c7 = out
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = out
I-single: Ir7c7 = out
different-colours-in-{r3 r4}c9 ==> Hr4c9 = 1
H-single: Hr4c9 = 1
w[1]-3-in-r3c8-hit-by-horiz-line-at-se ==> Hr3c8 = 1
H-single: Hr3c8 = 1
V-single: Vr3c9 = 0
V-single: Vr2c8 = 0
w[1]-3-in-r3c8-closed-nw-corner ==> Pr4c9 ≠ nw
w[1]-3-in-r1c7-isolated-at-se-corner ==> Hr2c7 = 1
H-single: Hr2c7 = 1
w[1]-3-in-r1c7-closed-se-corner ==> Pr1c7 ≠ se
P-single: Pr1c7 = ew
H-single: Hr1c6 = 1
V-single: Vr1c7 = 0
P-single: Pr1c6 = ew
H-single: Hr1c5 = 1
P-single: Pr2c7 = ew
P-single: Pr4c9 = ew
w[1]-1-in-r2c7-asymmetric-nw-corner ==> Pr3c8 ≠ ns
P-single: Pr3c8 = se

LOOP[14]: Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Hr3c8-Vr3c8-Hr4c8-Hr4c9- ==> Hr4c10 = 0
H-single: Hr4c10 = 0
w[1]-1-in-r3c9-asymmetric-se-corner ==> Pr3c9 ≠ ns
P-single: Pr2c8 = nw
P-single: Pr3c9 = nw
no-horizontal-line-{r3 r4}c10 ==> Ir4c10 = in
I-single: Ir4c10 = in
different-colours-in-r4{c9 c10} ==> Hr4c10 = 1
V-single: Vr4c10 = 1
different-colours-in-r1{c4 c5} ==> Hr1c5 = 1
V-single: Vr1c5 = 1
V-single: Vr2c5 = 0
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
V-single: Vr3c5 = 1
whip[1]: Vr5c6{0 .} ==> Br5c6 ≠ sw
whip[1]: Br5c6{s .} ==> Nr5c6 ≠ 2
whip[1]: Vr6c7{0 .} ==> Pr6c7 ≠ se, Br6c6 ≠ e, Br6c7 ≠ nw, Br6c7 ≠ swn, Br6c7 ≠ wne
P-single: Pr6c7 = ew
B-single: Br6c6 = n
whip[1]: Pr6c7{ew .} ==> Br5c6 ≠ o
B-single: Br5c6 = s
N-single: Nr5c6 = 1
whip[1]: Vr7c7{0 .} ==> Pr7c7 ≠ se, Pr8c7 ≠ ne, Pr8c7 ≠ ns, Pr8c7 ≠ nw, Br7c6 ≠ ew, Br7c6 ≠ esw, Br7c7 ≠ w
P-single: Pr7c7 = o
whip[1]: Pr7c7{o .} ==> Br6c7 ≠ ns, Br6c7 ≠ nes, Br7c7 ≠ n
whip[1]: Br7c7{s .} ==> Pr7c8 ≠ nw, Pr7c8 ≠ ew, Pr7c8 ≠ sw
whip[1]: Br6c7{ne .} ==> Nr6c7 ≠ 3
whip[1]: Br7c6{sw .} ==> Nr7c6 ≠ 0, Nr7c6 ≠ 3
whip[1]: Hr9c8{1 .} ==> Br9c8 ≠ o, Pr9c8 ≠ o, Pr9c8 ≠ ns, Pr9c9 ≠ o, Pr9c9 ≠ ne, Pr9c9 ≠ ns, Pr9c9 ≠ se, Br8c8 ≠ wne, Br9c8 ≠ e, Br9c8 ≠ s, Br9c8 ≠ w, Br9c8 ≠ ew, Br9c8 ≠ sw
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 0
whip[1]: Br8c8{nes .} ==> Pr8c9 ≠ o, Pr8c9 ≠ ne
whip[1]: Pr8c9{sw .} ==> Br7c9 ≠ sw
whip[1]: Br7c9{ew .} ==> Pr7c10 ≠ o, Pr7c10 ≠ ne
whip[1]: Pr9c9{sw .} ==> Br8c9 ≠ sw, Br8c9 ≠ swn, Br9c9 ≠ swn
whip[1]: Br9c9{sw .} ==> Nr9c9 ≠ 3
whip[1]: Vr8c9{1 .} ==> Pr8c9 ≠ nw, Pr8c9 ≠ ew, Pr9c9 ≠ ew, Pr9c9 ≠ sw, Br8c8 ≠ swn, Br8c9 ≠ e, Br8c9 ≠ s, Br8c9 ≠ ne, Br8c9 ≠ ns
P-single: Pr9c9 = nw
whip[1]: Pr9c9{nw .} ==> Br9c8 ≠ ne, Br9c8 ≠ wne, Br9c9 ≠ ns, Br9c9 ≠ sw
B-single: Br9c9 = s
N-single: Nr9c9 = 1
P-single: Pr9c10 = ne
whip[1]: Pr9c10{ne .} ==> Br8c10 ≠ nes
B-single: Br8c10 = esw
H-single: Hr8c10 = 0
whip[1]: Hr8c10{0 .} ==> Br7c10 ≠ s, Br7c10 ≠ ns, Br7c10 ≠ sw, Br7c10 ≠ swn
whip[1]: Pr11c8{ew .} ==> Br10c8 ≠ sw, Br11c7 ≠ sw, Br11c7 ≠ o, Br11c7 ≠ s, Br11c7 ≠ w
whip[1]: Br11c7{swn .} ==> Nr11c7 ≠ 0
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 1
whip[1]: Pr8c9{sw .} ==> Br7c8 ≠ se, Br7c8 ≠ esw, Br7c8 ≠ nes
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ ns, Br4c6 ≠ ne
B-single: Br4c6 = wne
N-single: Nr4c6 = 3
P-single: Pr4c6 = se
B-single: Br4c5 = se
whip[1]: Pr4c6{se .} ==> Br3c5 ≠ ns, Br3c5 ≠ swn
whip[1]: Br3c5{nw .} ==> Nr3c5 ≠ 3
whip[1]: Pr6c6{ew .} ==> Br6c5 ≠ s
B-single: Br6c5 = ns
N-single: Nr6c5 = 2
whip[1]: Hr4c9{1 .} ==> Br3c9 ≠ w, Br4c9 ≠ se
B-single: Br3c9 = s
whip[1]: Hr3c8{1 .} ==> Br2c8 ≠ ew, Br3c8 ≠ esw
B-single: Br3c8 = swn
B-single: Br2c8 = se
whip[1]: Vr2c8{0 .} ==> Br2c7 ≠ e
B-single: Br2c7 = n
whip[1]: Hr2c7{1 .} ==> Br1c7 ≠ wne
B-single: Br1c7 = nes
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ se
B-single: Br1c6 = ns
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Pr1c6{ew .} ==> Br1c5 ≠ o
B-single: Br1c5 = nw
N-single: Nr1c5 = 2
P-single: Pr1c5 = se
P-single: Pr2c5 = nw
whip[1]: Pr1c5{se .} ==> Br1c4 ≠ sw
B-single: Br1c4 = esw
N-single: Nr1c4 = 3
whip[1]: Pr2c5{nw .} ==> Br2c4 ≠ ne, Br2c5 ≠ esw
B-single: Br2c5 = se
N-single: Nr2c5 = 2
P-single: Pr3c5 = se
B-single: Br2c4 = n
N-single: Nr2c4 = 1
whip[1]: Pr3c5{se .} ==> Br3c5 ≠ n, Br3c4 ≠ w, Br3c4 ≠ sw
B-single: Br3c5 = nw
N-single: Nr3c5 = 2
P-single: Pr4c5 = nw
w[1]-1-in-r4c4-asymmetric-ne-corner ==> Pr5c4 ≠ nw
P-single: Pr5c4 = o
whip[1]: Pr4c5{nw .} ==> Br3c4 ≠ ew, Br4c4 ≠ w
B-single: Br4c4 = n
P-single: Pr4c4 = ne
B-single: Br3c4 = esw
N-single: Nr3c4 = 3
whip[1]: Pr4c4{ne .} ==> Br4c3 ≠ e, Br4c3 ≠ se, Br4c3 ≠ ew, Br4c3 ≠ esw
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 3
whip[1]: Pr5c4{o .} ==> Br4c3 ≠ s, Br4c3 ≠ sw, Br5c3 ≠ ns
B-single: Br5c3 = s
N-single: Nr5c3 = 1
whip[1]: Br4c3{w .} ==> Nr4c3 ≠ 2
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr4c10{0 .} ==> Pr4c10 ≠ ew, Pr4c11 ≠ nw, Br3c10 ≠ nes, Br4c10 ≠ ns, Br4c10 ≠ nw
P-single: Pr5c9 = sw
H-single: Hr5c9 = 0
V-single: Vr5c9 = 1
P-single: Pr4c10 = sw
B-single: Br3c10 = ne
N-single: Nr3c10 = 2
w[1]-1-in-r4c11-asymmetric-nw-corner ==> Pr5c12 ≠ ew, Pr5c12 ≠ ns, Pr5c12 ≠ ne
P-single: Pr4c13 = se
H-single: Hr4c13 = 1
V-single: Vr4c13 = 1

LOOP[12]: Vr5c9-Hr5c8-Hr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Vr5c5-Hr6c5-Hr6c6-Hr6c7- ==> Hr6c8 = 0
H-single: Hr6c8 = 0
w[1]-diagonal-3-2s-in-{r8c10...r6c8}-non-closed-nw-end ==> Vr6c8 = 1
V-single: Vr6c8 = 1
vertical-line-r6{c7 c8} ==> Ir6c8 = in
I-single: Ir6c8 = in
vertical-line-r5{c8 c9} ==> Ir5c9 = out
I-single: Ir5c9 = out
whip[1]: Pr5c9{sw .} ==> Br5c9 ≠ ns, Br5c9 ≠ n, Br5c8 ≠ ns, Br5c8 ≠ n, Br4c9 ≠ ns
B-single: Br4c9 = ne
whip[1]: Pr5c10{ns .} ==> Br5c10 ≠ s, Br5c10 ≠ se, Br5c10 ≠ o, Br5c10 ≠ e
whip[1]: Br5c10{nes .} ==> Nr5c10 ≠ 0
whip[1]: Br5c8{nes .} ==> Pr6c9 ≠ o, Pr6c9 ≠ se, Pr6c9 ≠ ew, Nr5c8 ≠ 1
whip[1]: Pr6c9{nw .} ==> Br6c8 ≠ ne, Br6c9 ≠ nw, Br6c9 ≠ swn, Br6c9 ≠ wne
whip[1]: Pr4c13{se .} ==> Br4c13 ≠ s, Br4c13 ≠ e, Br4c13 ≠ o, Br3c13 ≠ e, Br3c13 ≠ n, Br3c13 ≠ o, Br3c13 ≠ ne, Br4c12 ≠ sw, Br4c13 ≠ se
whip[1]: Br4c13{wne .} ==> Pr4c14 ≠ o, Pr4c14 ≠ ne, Pr4c14 ≠ ns, Pr4c14 ≠ se, Pr5c13 ≠ ew, Pr5c14 ≠ nw, Nr4c13 ≠ 0, Nr4c13 ≠ 1
whip[1]: Pr5c13{nw .} ==> Hr5c13 ≠ 1, Br4c13 ≠ swn, Br5c12 ≠ ne, Br5c12 ≠ sw, Br5c13 ≠ ne, Br5c13 ≠ ns, Br5c13 ≠ nw
H-single: Hr5c13 = 0
whip[1]: Hr5c13{0 .} ==> Pr5c14 ≠ ew
whip[1]: Pr5c14{se .} ==> Vr5c14 ≠ 0, Br4c14 ≠ ne, Br4c14 ≠ sw, Br4c14 ≠ esw, Br4c14 ≠ swn, Br5c13 ≠ sw, Br5c14 ≠ ne, Br5c14 ≠ ns, Br5c14 ≠ se, Br5c14 ≠ nes, Br4c14 ≠ o, Br4c14 ≠ n, Br4c14 ≠ e, Br5c14 ≠ o, Br5c14 ≠ n, Br5c14 ≠ e, Br5c14 ≠ s
V-single: Vr5c14 = 1
whip[1]: Vr5c14{1 .} ==> Pr6c14 ≠ ew, Pr6c14 ≠ sw
whip[1]: Pr6c14{nw .} ==> Br6c13 ≠ ne, Br6c13 ≠ wne, Br6c13 ≠ nes, Br6c14 ≠ nw
whip[1]: Br6c14{sw .} ==> Pr7c15 ≠ o, Pr7c15 ≠ se
whip[1]: Pr7c15{sw .} ==> Br7c15 ≠ nw, Br7c15 ≠ wne
whip[1]: Br6c13{ew .} ==> Nr6c13 ≠ 3
whip[1]: Br5c14{wne .} ==> Nr5c14 ≠ 0
whip[1]: Br4c14{nes .} ==> Nr4c14 ≠ 0
whip[1]: Pr6c13{se .} ==> Br5c12 ≠ ns, Br5c12 ≠ ew, Br6c12 ≠ nes, Br6c13 ≠ ns, Br6c13 ≠ ew, Br6c12 ≠ s, Br6c13 ≠ n, Br6c13 ≠ w
whip[1]: Br6c12{se .} ==> Nr6c12 ≠ 1, Nr6c12 ≠ 3
N-single: Nr6c12 = 2
whip[1]: Pr4c14{sw .} ==> Br3c14 ≠ sw, Br3c14 ≠ esw, Br3c14 ≠ swn, Br4c14 ≠ nw, Br4c14 ≠ wne
whip[1]: Br3c13{nes .} ==> Nr3c13 ≠ 0
whip[1]: Hr6c8{0 .} ==> Pr6c8 ≠ ew, Pr6c9 ≠ nw, Br5c8 ≠ nes, Br6c8 ≠ ns
P-single: Pr6c8 = sw
B-single: Br5c8 = ne
N-single: Nr5c8 = 2
whip[1]: Pr6c8{sw .} ==> Br6c7 ≠ n
B-single: Br6c7 = ne
N-single: Nr6c7 = 2
whip[1]: Pr7c8{ns .} ==> Br7c8 ≠ s, Br7c8 ≠ nw, Br7c8 ≠ swn, Br7c8 ≠ wne, Br7c8 ≠ o, Br7c8 ≠ e
whip[1]: Br7c8{sw .} ==> Nr7c8 ≠ 0, Nr7c8 ≠ 3
whip[1]: Pr6c9{ns .} ==> Br6c9 ≠ s, Br6c9 ≠ se, Br6c9 ≠ o, Br6c9 ≠ e
whip[1]: Br6c9{nes .} ==> Nr6c9 ≠ 0
whip[1]: Pr6c12{ew .} ==> Hr6c11 ≠ 0, Br5c11 ≠ nw, Br5c11 ≠ ew, Br5c11 ≠ wne, Br5c11 ≠ o, Br5c11 ≠ n, Br5c11 ≠ e, Br5c11 ≠ w, Br5c11 ≠ ne, Br6c11 ≠ o, Br6c11 ≠ w
H-single: Hr6c11 = 1
whip[1]: Hr6c11{1 .} ==> Pr6c11 ≠ o, Pr6c11 ≠ ns, Pr6c11 ≠ nw, Pr6c11 ≠ sw
whip[1]: Pr6c11{ew .} ==> Br5c10 ≠ esw, Br5c10 ≠ nes
whip[1]: Br5c10{sw .} ==> Nr5c10 ≠ 3
whip[1]: Br6c11{nw .} ==> Nr6c11 ≠ 0
whip[1]: Br5c11{nes .} ==> Nr5c11 ≠ 0
whip[1]: Pr5c12{se .} ==> Br5c11 ≠ sw, Br5c11 ≠ nes, Br4c11 ≠ e, Br4c11 ≠ s, Br5c11 ≠ s
whip[1]: Br5c11{swn .} ==> Nr5c11 ≠ 1
whip[1]: Br4c11{w .} ==> Hr5c11 ≠ 1, Vr4c12 ≠ 1, Pr4c12 ≠ ns, Pr5c11 ≠ ne, Pr5c12 ≠ nw, Pr4c12 ≠ sw, Pr5c11 ≠ ew
V-single: Vr4c12 = 0
H-single: Hr5c11 = 0
w[1]-2-in-r4c12-open-nw-corner ==> Hr5c12 = 1, Vr5c13 = 0
V-single: Vr5c13 = 0
H-single: Hr5c12 = 1
w[1]-2-in-r5c13-open-nw-corner ==> Hr6c13 = 1, Hr6c14 = 0, Vr6c14 = 0
V-single: Vr6c14 = 0
H-single: Hr6c14 = 0
H-single: Hr6c13 = 1
w[1]-2-in-r6c14-open-nw-corner ==> Hr7c14 = 1, Vr6c15 = 1, Hr7c15 = 0, Vr7c15 = 0
V-single: Vr7c15 = 0
H-single: Hr7c15 = 0
V-single: Vr6c15 = 1
H-single: Hr7c14 = 1
P-single: Pr7c15 = nw
P-single: Pr6c14 = nw
P-single: Pr5c13 = nw
P-single: Pr6c13 = se
H-single: Hr6c12 = 0
V-single: Vr6c13 = 1
V-single: Vr7c13 = 0
H-single: Hr7c13 = 0
w[1]-2-in-r5c12-open-se-corner ==> Vr5c12 = 1
V-single: Vr5c12 = 1
w[1]-3-in-r7c12-hit-by-verti-line-at-ne ==> Hr8c12 = 1
H-single: Hr8c12 = 1
V-single: Vr8c12 = 0
H-single: Hr8c11 = 0
w[1]-3-in-r7c12-closed-sw-corner ==> Pr7c13 ≠ sw
P-single: Pr5c12 = se
whip[1]: Vr4c12{0 .} ==> Br4c12 ≠ ew
B-single: Br4c12 = se
whip[1]: Hr5c11{0 .} ==> Br5c11 ≠ ns, Br5c11 ≠ swn
whip[1]: Br5c11{esw .} ==> Pr6c12 ≠ ew
P-single: Pr7c13 = nw
P-single: Pr6c12 = nw
whip[1]: Pr7c13{nw .} ==> Br6c13 ≠ s, Br6c13 ≠ e, Br6c13 ≠ o, Br6c12 ≠ ns, Br6c13 ≠ se, Br7c12 ≠ wne, Br7c13 ≠ w, Br7c13 ≠ ns, Br7c13 ≠ ew, Br7c13 ≠ sw, Br7c13 ≠ esw, Br7c13 ≠ nes
B-single: Br7c12 = swn
P-single: Pr8c12 = ne
P-single: Pr8c13 = ew
H-single: Hr8c13 = 1
V-single: Vr8c13 = 0
B-single: Br6c13 = nw
N-single: Nr6c13 = 2
P-single: Pr7c14 = se
V-single: Vr7c14 = 1
H-single: Hr8c14 = 0
B-single: Br6c12 = se
whip[1]: Pr8c12{ne .} ==> Br7c11 ≠ se, Br8c11 ≠ nw, Br8c11 ≠ ew, Br8c12 ≠ s, Br8c12 ≠ w, Br8c12 ≠ ew
B-single: Br8c12 = ns
H-single: Hr9c12 = 1
N-single: Nr8c12 = 2
w[1]-diagonal-3-2-in-{r9c13...r8c12}-non-closed-nw-corner ==> Hr10c13 = 1, Vr10c14 = 0, Hr10c14 = 0
H-single: Hr10c14 = 0
V-single: Vr10c14 = 0
H-single: Hr10c13 = 1
V-single: Vr9c13 = 0
w[1]-3-in-r11c14-isolated-at-nw-corner ==> Hr11c14 = 1
H-single: Hr11c14 = 1
w[1]-3-in-r10c15-hit-by-horiz-line-at-sw ==> Vr11c15 = 0
V-single: Vr11c15 = 0
w[1]-3-in-r11c14-closed-nw-corner ==> Pr12c15 ≠ se, Pr12c15 ≠ nw, Pr12c15 ≠ o
P-single: Pr9c12 = se
P-single: Pr9c13 = ew
B-single: Br8c11 = w
N-single: Nr8c11 = 1
P-single: Pr8c11 = ns
V-single: Vr7c11 = 1

LOOP[10]: Hr11c12-Vr10c13-Hr10c13-Vr9c14-Hr9c13-Hr9c12-Vr9c12-Hr10c11-Vr10c11- ==> Hr11c11 = 0
H-single: Hr11c11 = 0
w[1]-diagonal-3-2s-in-{r13c13...r11c11}-non-closed-nw-end ==> Vr11c11 = 1
V-single: Vr11c11 = 1
whip[1]: Hr9c12{1 .} ==> Br9c12 ≠ w, Br9c12 ≠ ew
B-single: Br9c12 = nw
N-single: Nr9c12 = 2
P-single: Pr10c13 = se
whip[1]: Pr10c13{se .} ==> Br10c13 ≠ w, Br9c13 ≠ wne, Br10c13 ≠ ew
B-single: Br10c13 = nw
N-single: Nr10c13 = 2
P-single: Pr10c14 = nw
B-single: Br9c13 = nes
whip[1]: Pr10c14{nw .} ==> Br10c14 ≠ n, Br9c14 ≠ sw, Br9c14 ≠ esw, Br10c14 ≠ w, Br10c14 ≠ ne, Br10c14 ≠ ns, Br10c14 ≠ ew, Br10c14 ≠ sw, Br10c14 ≠ esw, Br10c14 ≠ nes
whip[1]: Br10c14{se .} ==> Pr10c15 ≠ nw, Pr10c15 ≠ ew, Pr10c15 ≠ sw, Nr10c14 ≠ 3
whip[1]: Br9c14{ew .} ==> Nr9c14 ≠ 3
whip[1]: Pr11c14{se .} ==> Br11c14 ≠ esw, Br11c14 ≠ nes
whip[1]: Br11c14{wne .} ==> Pr11c14 ≠ o, Pr11c15 ≠ ns, Pr11c15 ≠ se, Pr12c14 ≠ o, Pr12c14 ≠ ew
P-single: Pr11c14 = se
whip[1]: Pr11c14{se .} ==> Br11c13 ≠ s, Br11c13 ≠ o, Br10c14 ≠ e, Br10c14 ≠ o
whip[1]: Br10c14{se .} ==> Nr10c14 ≠ 0
whip[1]: Br11c13{se .} ==> Nr11c13 ≠ 0
whip[1]: Pr11c15{ew .} ==> Br10c15 ≠ esw, Br10c15 ≠ swn, Br11c14 ≠ wne, Br11c15 ≠ nw, Br11c15 ≠ ew, Br11c15 ≠ sw, Br11c15 ≠ esw, Br11c15 ≠ swn, Br11c15 ≠ wne, Br11c15 ≠ w
B-single: Br11c14 = swn
P-single: Pr13c13 = ne
P-single: Pr12c14 = ne
whip[1]: Pr13c13{ne .} ==> Br13c12 ≠ n, Br12c12 ≠ ns, Br12c13 ≠ ns, Br13c12 ≠ ns
B-single: Br13c12 = w
H-single: Hr14c12 = 0
V-single: Vr13c12 = 1
N-single: Nr13c12 = 1
w[1]-diagonal-3-2-in-{r15c13...r14c12}-non-closed-nw-corner ==> Vr15c14 = 1, Vr14c12 = 1, Hr16c13 = 1, Hr16c14 = 0
H-single: Hr16c14 = 0
H-single: Hr16c13 = 1
V-single: Vr14c12 = 1
V-single: Vr15c14 = 1
w[1]-diagonal-3-2-in-{r15c11...r14c12}-non-closed-ne-corner ==> Vr14c13 = 1
V-single: Vr14c13 = 1
w[1]-3-in-r15c13-hit-by-verti-line-at-nw ==> Hr15c12 = 0
H-single: Hr15c12 = 0
P-single: Pr14c12 = ns
H-single: Hr14c11 = 0
adjacent-3-2-in-{r15 r14}c11-noline-north ==> Hr15c10 = 0
H-single: Hr15c10 = 0
P-single: Pr16c10 = nw
H-single: Hr16c9 = 1
V-single: Vr15c10 = 1
P-single: Pr12c13 = sw
P-single: Pr13c12 = sw
P-single: Pr14c13 = se
B-single: Br12c13 = sw
B-single: Br12c12 = ne
vertical-line-r15{c9 c10} ==> Ir15c9 = in
I-single: Ir15c9 = in
no-horizontal-line-{r14 r15}c10 ==> Ir14c10 = out
I-single: Ir14c10 = out
horizontal-line-{r15 r16}c13 ==> Ir15c13 = in
I-single: Ir15c13 = in
vertical-line-r15{c13 c14} ==> Ir15c14 = out
I-single: Ir15c14 = out
different-colours-in-r15{c14 c15} ==> Hr15c15 = 1
V-single: Vr15c15 = 1
w[1]-3-in-r15c15-closed-sw-corner ==> Pr15c16 ≠ sw, Pr15c16 ≠ o
whip[1]: Hr14c12{0 .} ==> Br14c12 ≠ ns, Br14c12 ≠ nw
whip[1]: Br14c12{ew .} ==> Pr15c13 ≠ ew
P-single: Pr15c13 = ns
H-single: Hr15c13 = 0
V-single: Vr15c13 = 1
H-single: Hr16c12 = 0
w[1]-3-in-r15c13-closed-sw-corner ==> Pr15c14 ≠ o
P-single: Pr15c14 = se
H-single: Hr15c14 = 1
V-single: Vr14c15 = 0
H-single: Hr15c15 = 0
w[1]-3-in-r13c15-isolated-at-sw-corner ==> Vr13c15 = 1, Hr14c15 = 1
H-single: Hr14c15 = 1
V-single: Vr13c15 = 1
w[1]-3-in-r13c15-closed-sw-corner ==> Pr13c16 ≠ sw, Pr13c16 ≠ o
no-horizontal-line-{r14 r15}c15 ==> Ir14c15 = in
I-single: Ir14c15 = in
no-vertical-line-r14{c14 c15} ==> Ir14c14 = in
I-single: Ir14c14 = in
no-vertical-line-r14{c13 c14} ==> Ir14c13 = in
I-single: Ir14c13 = in
vertical-line-r14{c12 c13} ==> Ir14c12 = out
I-single: Ir14c12 = out
no-horizontal-line-{r13 r14}c12 ==> Ir13c12 = out
I-single: Ir13c12 = out
no-vertical-line-r13{c12 c13} ==> Ir13c13 = out
I-single: Ir13c13 = out
vertical-line-r13{c13 c14} ==> Ir13c14 = in
I-single: Ir13c14 = in
no-horizontal-line-{r12 r13}c14 ==> Ir12c14 = in
I-single: Ir12c14 = in
no-vertical-line-r12{c13 c14} ==> Ir12c13 = in
I-single: Ir12c13 = in
no-horizontal-line-{r11 r12}c13 ==> Ir11c13 = in
I-single: Ir11c13 = in
no-vertical-line-r11{c12 c13} ==> Ir11c12 = in
I-single: Ir11c12 = in
horizontal-line-{r10 r11}c12 ==> Ir10c12 = out
I-single: Ir10c12 = out
no-vertical-line-r10{c11 c12} ==> Ir10c11 = out
I-single: Ir10c11 = out
no-horizontal-line-{r10 r11}c11 ==> Ir11c11 = out
I-single: Ir11c11 = out
vertical-line-r11{c10 c11} ==> Ir11c10 = in
I-single: Ir11c10 = in
no-horizontal-line-{r10 r11}c10 ==> Ir10c10 = in
I-single: Ir10c10 = in
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = in
I-single: Ir9c10 = in
no-vertical-line-r9{c9 c10} ==> Ir9c9 = in
I-single: Ir9c9 = in
no-vertical-line-r9{c8 c9} ==> Ir9c8 = in
I-single: Ir9c8 = in
horizontal-line-{r8 r9}c8 ==> Ir8c8 = out
I-single: Ir8c8 = out
vertical-line-r8{c8 c9} ==> Ir8c9 = in
I-single: Ir8c9 = in
vertical-line-r8{c9 c10} ==> Ir8c10 = out
I-single: Ir8c10 = out
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = out
I-single: Ir7c10 = out
vertical-line-r7{c10 c11} ==> Ir7c11 = in
I-single: Ir7c11 = in
no-horizontal-line-{r6 r7}c11 ==> Ir6c11 = in
I-single: Ir6c11 = in
no-vertical-line-r6{c11 c12} ==> Ir6c12 = in
I-single: Ir6c12 = in
no-horizontal-line-{r5 r6}c12 ==> Ir5c12 = in
I-single: Ir5c12 = in
no-vertical-line-r5{c12 c13} ==> Ir5c13 = in
I-single: Ir5c13 = in
no-horizontal-line-{r4 r5}c13 ==> Ir4c13 = in
I-single: Ir4c13 = in
vertical-line-r4{c12 c13} ==> Ir4c12 = out
I-single: Ir4c12 = out
no-vertical-line-r4{c11 c12} ==> Ir4c11 = out
I-single: Ir4c11 = out
no-horizontal-line-{r4 r5}c11 ==> Ir5c11 = out
I-single: Ir5c11 = out
no-horizontal-line-{r3 r4}c12 ==> Ir3c12 = out
I-single: Ir3c12 = out
no-vertical-line-r3{c12 c13} ==> Ir3c13 = out
I-single: Ir3c13 = out
vertical-line-r5{c13 c14} ==> Ir5c14 = out
I-single: Ir5c14 = out
no-horizontal-line-{r5 r6}c14 ==> Ir6c14 = out
I-single: Ir6c14 = out
no-vertical-line-r6{c13 c14} ==> Ir6c13 = out
I-single: Ir6c13 = out
no-horizontal-line-{r6 r7}c13 ==> Ir7c13 = out
I-single: Ir7c13 = out
no-vertical-line-r7{c12 c13} ==> Ir7c12 = out
I-single: Ir7c12 = out
horizontal-line-{r7 r8}c12 ==> Ir8c12 = in
I-single: Ir8c12 = in
no-vertical-line-r8{c11 c12} ==> Ir8c11 = in
I-single: Ir8c11 = in
no-horizontal-line-{r8 r9}c11 ==> Ir9c11 = in
I-single: Ir9c11 = in
vertical-line-r9{c11 c12} ==> Ir9c12 = out
I-single: Ir9c12 = out
no-vertical-line-r9{c12 c13} ==> Ir9c13 = out
I-single: Ir9c13 = out
vertical-line-r9{c13 c14} ==> Ir9c14 = in
I-single: Ir9c14 = in
no-horizontal-line-{r8 r9}c14 ==> Ir8c14 = in
I-single: Ir8c14 = in
no-vertical-line-r8{c13 c14} ==> Ir8c13 = in
I-single: Ir8c13 = in
no-horizontal-line-{r7 r8}c14 ==> Ir7c14 = in
I-single: Ir7c14 = in
no-vertical-line-r7{c14 c15} ==> Ir7c15 = in
I-single: Ir7c15 = in
no-horizontal-line-{r6 r7}c15 ==> Ir6c15 = in
I-single: Ir6c15 = in
no-horizontal-line-{r9 r10}c14 ==> Ir10c14 = in
I-single: Ir10c14 = in
no-vertical-line-r10{c13 c14} ==> Ir10c13 = in
I-single: Ir10c13 = in
horizontal-line-{r10 r11}c14 ==> Ir11c14 = out
I-single: Ir11c14 = out
no-vertical-line-r11{c14 c15} ==> Ir11c15 = out
I-single: Ir11c15 = out
horizontal-line-{r9 r10}c9 ==> Ir10c9 = out
I-single: Ir10c9 = out
no-horizontal-line-{r10 r11}c9 ==> Ir11c9 = out
I-single: Ir11c9 = out
no-horizontal-line-{r11 r12}c9 ==> Ir12c9 = out
I-single: Ir12c9 = out
vertical-line-r11{c8 c9} ==> Ir11c8 = in
I-single: Ir11c8 = in
horizontal-line-{r11 r12}c12 ==> Ir12c12 = out
I-single: Ir12c12 = out
no-vertical-line-r12{c11 c12} ==> Ir12c11 = out
I-single: Ir12c11 = out
horizontal-line-{r12 r13}c11 ==> Ir13c11 = in
I-single: Ir13c11 = in
no-vertical-line-r13{c10 c11} ==> Ir13c10 = in
I-single: Ir13c10 = in
no-horizontal-line-{r13 r14}c11 ==> Ir14c11 = in
I-single: Ir14c11 = in
vertical-line-r13{c14 c15} ==> Ir13c15 = out
I-single: Ir13c15 = out
no-horizontal-line-{r14 r15}c12 ==> Ir15c12 = out
I-single: Ir15c12 = out
different-colours-in-r15{c11 c12} ==> Hr15c12 = 1
V-single: Vr15c12 = 1
w[1]-3-in-r15c11-closed-se-corner ==> Pr15c11 ≠ se
P-single: Pr15c11 = ns
H-single: Hr15c11 = 0
V-single: Vr14c11 = 1
same-colour-in-r13{c15 c16} ==> Vr13c16 = 0
V-single: Vr13c16 = 0
different-colours-in-{r13 r14}c10 ==> Hr14c10 = 1
H-single: Hr14c10 = 1
w[1]-3-in-r14c9-hit-by-horiz-line-at-ne ==> Hr15c9 = 1, Vr13c10 = 0
V-single: Vr13c10 = 0
H-single: Hr15c9 = 1
V-single: Vr15c9 = 0
H-single: Hr15c8 = 0
V-single: Vr14c10 = 0
w[1]-diagonal-3-2s-in-{r9c13...r14c8}-non-closed-sw-end ==> Vr14c8 = 1
V-single: Vr14c8 = 1
w[1]-3-in-r14c9-closed-sw-corner ==> Pr14c10 ≠ sw
P-single: Pr14c10 = ew
P-single: Pr11c9 = ns
H-single: Hr11c8 = 0
V-single: Vr10c9 = 1
H-single: Hr10c8 = 0
P-single: Pr12c8 = ew
H-single: Hr12c7 = 1
H-single: Hr12c8 = 1
V-single: Vr11c8 = 0
V-single: Vr12c9 = 0
P-single: Pr13c9 = ew
H-single: Hr13c9 = 1
P-single: Pr14c8 = ns
H-single: Hr14c7 = 0
horizontal-line-{r12 r13}c9 ==> Ir13c9 = in
I-single: Ir13c9 = in
no-vertical-line-r13{c8 c9} ==> Ir13c8 = in
I-single: Ir13c8 = in
no-horizontal-line-{r13 r14}c8 ==> Ir14c8 = in
I-single: Ir14c8 = in
no-horizontal-line-{r14 r15}c8 ==> Ir15c8 = in
I-single: Ir15c8 = in
vertical-line-r14{c7 c8} ==> Ir14c7 = out
I-single: Ir14c7 = out
no-horizontal-line-{r13 r14}c7 ==> Ir13c7 = out
I-single: Ir13c7 = out
no-horizontal-line-{r12 r13}c7 ==> Ir12c7 = out
I-single: Ir12c7 = out
no-vertical-line-r12{c7 c8} ==> Ir12c8 = out
I-single: Ir12c8 = out
horizontal-line-{r11 r12}c7 ==> Ir11c7 = in
I-single: Ir11c7 = in
vertical-line-r14{c8 c9} ==> Ir14c9 = out
I-single: Ir14c9 = out
no-horizontal-line-{r9 r10}c8 ==> Ir10c8 = in
I-single: Ir10c8 = in
different-colours-in-{r15 r16}c8 ==> Hr16c8 = 1
H-single: Hr16c8 = 1
same-colour-in-{r11 r12}c11 ==> Hr12c11 = 0
H-single: Hr12c11 = 0
w[1]-2-in-r12c11-open-ne-corner ==> Vr12c11 = 1, Hr13c10 = 0
H-single: Hr13c10 = 0
V-single: Vr12c11 = 1
w[1]-diagonal-3-2s-in-{r9c13...r12c10}-non-closed-sw-end ==> Vr12c10 = 1
V-single: Vr12c10 = 1
vertical-line-r12{c9 c10} ==> Ir12c10 = in
I-single: Ir12c10 = in
same-colour-in-{r11 r12}c10 ==> Hr12c10 = 0
H-single: Hr12c10 = 0
P-single: Pr11c11 = ns
P-single: Pr12c10 = ns
same-colour-in-r11{c15 c16} ==> Vr11c16 = 0
V-single: Vr11c16 = 0
different-colours-in-{r10 r11}c15 ==> Hr11c15 = 1
H-single: Hr11c15 = 1
w[1]-3-in-r11c14-hit-by-horiz-line-at-ne ==> Vr10c15 = 0
V-single: Vr10c15 = 0
w[1]-3-in-r10c15-closed-se-corner ==> Pr10c15 ≠ se, Pr10c15 ≠ o
different-colours-in-r6{c15 c16} ==> Hr6c16 = 1
V-single: Vr6c16 = 1
different-colours-in-r7{c15 c16} ==> Hr7c16 = 1
V-single: Vr7c16 = 1
different-colours-in-r9{c14 c15} ==> Hr9c15 = 1
V-single: Vr9c15 = 1
different-colours-in-{r2 r3}c13 ==> Hr3c13 = 1
H-single: Hr3c13 = 1
same-colour-in-r3{c11 c12} ==> Vr3c12 = 0
V-single: Vr3c12 = 0
w[1]-diagonal-1-1-in-{r3c12...r4c11}-with-no-sw-inner-sides ==> Hr4c11 = 0
H-single: Hr4c11 = 0
different-colours-in-{r2 r3}c12 ==> Hr3c12 = 1
H-single: Hr3c12 = 1
different-colours-in-r4{c10 c11} ==> Hr4c11 = 1
V-single: Vr4c11 = 1

LOOP[16]: Vr4c11-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Hr3c8-Vr3c8-Hr4c8-Hr4c9-Vr4c10- ==> Hr5c10 = 0
H-single: Hr5c10 = 0
P-single: Pr4c11 = ns
P-single: Pr5c10 = ns
V-single: Vr5c10 = 1
vertical-line-r5{c9 c10} ==> Ir5c10 = in
I-single: Ir5c10 = in
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
V-single: Vr5c11 = 1
V-single: Vr6c11 = 0
H-single: Hr6c10 = 0
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
I-single: Ir6c10 = in
different-colours-in-{r6 r7}c10 ==> Hr7c10 = 1
H-single: Hr7c10 = 1

LOOP[6]: Hr7c10-Vr7c11-Vr8c11-Hr9c10-Vr8c10- ==> Vr7c10 = 0
V-single: Vr7c10 = 0
w[1]-diagonal-3-2s-in-{r4c6...r7c9}-non-closed-se-end ==> Hr8c9 = 1
H-single: Hr8c9 = 1
V-single: Vr7c9 = 0
H-single: Hr8c8 = 0
w[1]-diagonal-3-2-in-{r8c10...r7c9}-non-closed-nw-corner ==> Hr7c9 = 1
H-single: Hr7c9 = 1
w[1]-diagonal-3-2-in-{r8c8...r7c9}-non-closed-ne-corner ==> Vr8c8 = 1, Vr9c8 = 0
V-single: Vr9c8 = 0
V-single: Vr8c8 = 1
w[1]-1-in-r6c10-asymmetric-sw-corner ==> Pr6c11 ≠ ew, Pr6c11 ≠ se
P-single: Pr6c11 = ne
vertical-line-r8{c7 c8} ==> Ir8c7 = in
I-single: Ir8c7 = in
no-horizontal-line-{r8 r9}c7 ==> Ir9c7 = in
I-single: Ir9c7 = in
no-vertical-line-r9{c6 c7} ==> Ir9c6 = in
I-single: Ir9c6 = in
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = out
I-single: Ir7c8 = out
no-vertical-line-r7{c8 c9} ==> Ir7c9 = out
I-single: Ir7c9 = out
horizontal-line-{r6 r7}c9 ==> Ir6c9 = in
I-single: Ir6c9 = in
same-colour-in-r6{c9 c10} ==> Vr6c10 = 0
V-single: Vr6c10 = 0
same-colour-in-r6{c8 c9} ==> Vr6c9 = 0
V-single: Vr6c9 = 0
w[1]-2-in-r6c8-open-ne-corner ==> Hr7c8 = 1, Vr7c8 = 0
V-single: Vr7c8 = 0
H-single: Hr7c8 = 1
different-colours-in-{r5 r6}c9 ==> Hr6c9 = 1
H-single: Hr6c9 = 1
different-colours-in-{r7 r8}c7 ==> Hr8c7 = 1
H-single: Hr8c7 = 1
different-colours-in-r11{c11 c12} ==> Hr11c12 = 1
V-single: Vr11c12 = 1
different-colours-in-r14{c15 c16} ==> Hr14c16 = 1
V-single: Vr14c16 = 1
w[1]-3-in-r13c15-hit-by-verti-line-at-se ==> Hr13c15 = 1
H-single: Hr13c15 = 1
V-single: Vr12c15 = 0
w[1]-3-in-r13c15-closed-nw-corner ==> Pr14c16 ≠ nw, Pr14c16 ≠ o
no-vertical-line-r12{c14 c15} ==> Ir12c15 = in
I-single: Ir12c15 = in
different-colours-in-r12{c15 c16} ==> Hr12c16 = 1
V-single: Vr12c16 = 1
different-colours-in-{r11 r12}c15 ==> Hr12c15 = 1
H-single: Hr12c15 = 1
whip[1]: Pr15c13{ns .} ==> Br14c12 ≠ se, Br14c13 ≠ ns, Br15c12 ≠ ns, Br15c12 ≠ nw, Br15c13 ≠ swn, Br15c13 ≠ wne, Br15c13 ≠ nes
B-single: Br15c13 = esw
P-single: Pr16c13 = ne
P-single: Pr16c14 = nw
B-single: Br14c13 = nw
B-single: Br14c12 = ew
P-single: Pr15c12 = ns
whip[1]: Pr16c13{ne .} ==> Br16c13 ≠ o, Br16c12 ≠ n, Br15c12 ≠ se
B-single: Br15c12 = ew
P-single: Pr16c12 = nw
B-single: Br16c12 = o
B-single: Br16c13 = n
whip[1]: Pr16c12{nw .} ==> Br15c11 ≠ swn
B-single: Br15c11 = esw
whip[1]: Pr16c14{nw .} ==> Br15c14 ≠ s, Br15c14 ≠ e, Br15c14 ≠ n, Br15c14 ≠ o, Br16c14 ≠ n, Br15c14 ≠ ne, Br15c14 ≠ ns, Br15c14 ≠ se, Br15c14 ≠ sw, Br15c14 ≠ esw, Br15c14 ≠ swn, Br15c14 ≠ nes
B-single: Br16c14 = o
whip[1]: Pr16c15{ne .} ==> Br15c15 ≠ nes
B-single: Br15c15 = esw
P-single: Pr16c16 = nw
P-single: Pr16c15 = ne
P-single: Pr15c16 = ns
whip[1]: Pr16c16{nw .} ==> Br16c15 ≠ o
B-single: Br16c15 = n
whip[1]: Pr16c15{ne .} ==> Br15c14 ≠ w, Br15c14 ≠ nw
whip[1]: Br15c14{wne .} ==> Nr15c14 ≠ 0, Nr15c14 ≠ 1
whip[1]: Pr15c16{ns .} ==> Br14c15 ≠ n, Br14c15 ≠ o, Br14c15 ≠ s, Br14c15 ≠ w, Br14c15 ≠ ns, Br14c15 ≠ nw, Br14c15 ≠ se, Br14c15 ≠ sw, Br14c15 ≠ esw, Br14c15 ≠ swn, Br14c15 ≠ nes
whip[1]: Br14c15{wne .} ==> Nr14c15 ≠ 0
whip[1]: Pr15c15{sw .} ==> Br14c14 ≠ se, Br14c14 ≠ o
whip[1]: Br14c14{s .} ==> Nr14c14 ≠ 0, Nr14c14 ≠ 2
N-single: Nr14c14 = 1
w[1]-1-in-r14c14-asymmetric-sw-corner ==> Pr14c15 ≠ se, Pr14c15 ≠ ns
whip[1]: Pr14c15{ne .} ==> Br13c15 ≠ wne, Br13c15 ≠ nes, Br14c14 ≠ e, Br14c15 ≠ ew, Br14c15 ≠ wne
B-single: Br14c14 = s
P-single: Pr15c15 = sw
whip[1]: Pr15c15{sw .} ==> Br15c14 ≠ ew
B-single: Br15c14 = wne
N-single: Nr15c14 = 3
whip[1]: Br14c15{ne .} ==> Nr14c15 ≠ 3
whip[1]: Br13c15{swn .} ==> Pr14c16 ≠ ns, Pr13c15 ≠ o, Pr13c15 ≠ ne, Pr14c15 ≠ o
P-single: Pr14c15 = ne
P-single: Pr14c16 = sw
whip[1]: Pr14c15{ne .} ==> Br13c14 ≠ w, Br14c15 ≠ e
B-single: Br14c15 = ne
N-single: Nr14c15 = 2
B-single: Br13c14 = ew
N-single: Nr13c14 = 2
whip[1]: Pr14c16{sw .} ==> Br13c15 ≠ esw
B-single: Br13c15 = swn
P-single: Pr13c16 = nw
P-single: Pr13c15 = se
whip[1]: Pr13c16{nw .} ==> Br12c15 ≠ s, Br12c15 ≠ e, Br12c15 ≠ n, Br12c15 ≠ o, Br12c15 ≠ w, Br12c15 ≠ ne, Br12c15 ≠ ns, Br12c15 ≠ nw, Br12c15 ≠ ew, Br12c15 ≠ sw, Br12c15 ≠ swn, Br12c15 ≠ wne
whip[1]: Br12c15{nes .} ==> Pr12c16 ≠ o, Pr12c16 ≠ nw, Nr12c15 ≠ 0, Nr12c15 ≠ 1
whip[1]: Pr12c16{sw .} ==> Br11c15 ≠ se, Br11c15 ≠ nes, Br11c15 ≠ o, Br11c15 ≠ n
whip[1]: Br11c15{ns .} ==> Nr11c15 ≠ 0, Nr11c15 ≠ 3
whip[1]: Pr13c15{se .} ==> Br12c14 ≠ e, Br12c14 ≠ ne, Br12c15 ≠ esw
whip[1]: Br12c15{nes .} ==> Pr12c15 ≠ sw
P-single: Pr12c15 = ew
whip[1]: Pr12c15{ew .} ==> Br12c14 ≠ o, Br11c15 ≠ ne, Br11c15 ≠ e, Br12c15 ≠ se
B-single: Br12c15 = nes
N-single: Nr12c15 = 3
P-single: Pr12c16 = sw
B-single: Br12c14 = n
N-single: Nr12c14 = 1
whip[1]: Br11c15{ns .} ==> Pr11c16 ≠ ns, Pr11c16 ≠ sw
whip[1]: Pr11c16{nw .} ==> Br10c15 ≠ wne
B-single: Br10c15 = nes
P-single: Pr10c16 = sw
P-single: Pr11c16 = nw
P-single: Pr10c15 = ne
P-single: Pr11c15 = ew
whip[1]: Pr10c16{sw .} ==> Br9c15 ≠ ne, Br9c15 ≠ w, Br9c15 ≠ e, Br9c15 ≠ n, Br9c15 ≠ o, Br9c15 ≠ nw, Br9c15 ≠ se, Br9c15 ≠ ew, Br9c15 ≠ esw, Br9c15 ≠ wne, Br9c15 ≠ nes
whip[1]: Br9c15{swn .} ==> Pr9c16 ≠ ns, Pr9c16 ≠ sw, Nr9c15 ≠ 0
whip[1]: Pr9c16{nw .} ==> Br8c15 ≠ ne, Br8c15 ≠ ns, Br8c15 ≠ ew, Br8c15 ≠ sw, Br8c15 ≠ swn, Br8c15 ≠ wne, Br8c15 ≠ e, Br8c15 ≠ s
whip[1]: Pr11c16{nw .} ==> Br11c15 ≠ s
B-single: Br11c15 = ns
N-single: Nr11c15 = 2
whip[1]: Pr10c15{ne .} ==> Br9c14 ≠ w, Br9c15 ≠ s, Br9c15 ≠ ns, Br10c14 ≠ se
B-single: Br10c14 = s
N-single: Nr10c14 = 1
B-single: Br9c14 = ew
N-single: Nr9c14 = 2
whip[1]: Pr9c15{se .} ==> Br8c15 ≠ esw, Br8c15 ≠ o, Br8c15 ≠ n
whip[1]: Br8c15{nes .} ==> Nr8c15 ≠ 0
whip[1]: Br9c15{swn .} ==> Nr9c15 ≠ 1
whip[1]: Pr15c12{ns .} ==> Br14c11 ≠ ns, Br14c11 ≠ nw, Br14c11 ≠ se
whip[1]: Pr15c11{ns .} ==> Br14c10 ≠ n, Br14c10 ≠ o, Br14c10 ≠ s, Br14c10 ≠ w, Br14c10 ≠ ns, Br14c10 ≠ sw, Br14c11 ≠ ne, Br15c10 ≠ ne
B-single: Br15c10 = ew
B-single: Br14c11 = ew
P-single: Pr14c11 = sw
whip[1]: Pr14c11{sw .} ==> Br14c10 ≠ e, Br13c11 ≠ ns, Br13c10 ≠ w, Br13c10 ≠ n, Br13c10 ≠ o, Br13c10 ≠ nw, Br13c11 ≠ nes, Br14c10 ≠ ew
B-single: Br14c10 = ne
N-single: Nr14c10 = 2
P-single: Pr15c10 = sw
whip[1]: Pr15c10{sw .} ==> Br15c9 ≠ w, Br15c9 ≠ n, Br15c9 ≠ o, Br14c9 ≠ wne, Br15c9 ≠ se, Br15c9 ≠ esw
B-single: Br15c9 = nes
N-single: Nr15c9 = 3
w[1]-diagonal-3-2s-in-{r15c9...r13c7}-non-closed-nw-end ==> Vr13c7 = 1
V-single: Vr13c7 = 1
P-single: Pr16c9 = ew
P-single: Pr15c9 = ne
B-single: Br14c9 = swn
vertical-line-r13{c6 c7} ==> Ir13c6 = in
I-single: Ir13c6 = in
whip[1]: Vr13c7{1 .} ==> Pr14c7 ≠ se, Pr14c7 ≠ ew, Br13c6 ≠ n, Br13c6 ≠ s, Br13c6 ≠ w, Br13c7 ≠ se
B-single: Br13c7 = ew
B-single: Br13c6 = e
H-single: Hr13c6 = 0
H-single: Hr14c6 = 0
V-single: Vr13c6 = 0
w[1]-diagonal-3-2-in-{r14c4...r13c5}-non-closed-ne-corner ==> Hr15c4 = 1, Hr13c5 = 1, Vr15c4 = 0
V-single: Vr15c4 = 0
H-single: Hr13c5 = 1
H-single: Hr15c4 = 1
w[1]-3-in-r12c5-isolated-at-se-corner ==> Vr12c6 = 1
V-single: Vr12c6 = 1
w[1]-3-in-r12c5-closed-se-corner ==> Pr12c5 ≠ se, Pr12c5 ≠ nw, Pr12c5 ≠ o
P-single: Pr13c6 = nw
P-single: Pr13c7 = ns
V-single: Vr12c7 = 1
V-single: Vr11c7 = 0
H-single: Hr12c6 = 0
w[1]-2-in-r11c6-open-se-corner ==> Hr11c6 = 1, Vr11c6 = 1, Hr11c5 = 0, Vr10c6 = 0
V-single: Vr10c6 = 0
H-single: Hr11c5 = 0
V-single: Vr11c6 = 1
H-single: Hr11c6 = 1
w[1]-diagonal-3-2-in-{r12c5...r11c6}-non-closed-ne-corner ==> Vr12c5 = 1, Vr13c5 = 0
V-single: Vr13c5 = 0
V-single: Vr12c5 = 1
P-single: Pr14c6 = sw
H-single: Hr14c5 = 1
V-single: Vr14c6 = 1
P-single: Pr14c7 = ns
V-single: Vr14c7 = 1

LOOP[6]: Vr14c6-Hr14c5-Hr14c4-Vr14c4-Hr15c4- ==> Hr15c5 = 0
H-single: Hr15c5 = 0

LOOP[16]: Vr14c8-Vr13c8-Hr13c8-Hr13c9-Vr12c10-Vr11c10-Vr10c10-Hr10c9-Vr10c9-Vr11c9-Hr12c8-Hr12c7-Vr12c7-Vr13c7-Vr14c7- ==> Hr15c7 = 0
H-single: Hr15c7 = 0
no-horizontal-line-{r14 r15}c7 ==> Ir15c7 = out
I-single: Ir15c7 = out
vertical-line-r14{c6 c7} ==> Ir14c6 = in
I-single: Ir14c6 = in
vertical-line-r14{c5 c6} ==> Ir14c5 = out
I-single: Ir14c5 = out
no-horizontal-line-{r14 r15}c5 ==> Ir15c5 = out
I-single: Ir15c5 = out
horizontal-line-{r13 r14}c5 ==> Ir13c5 = in
I-single: Ir13c5 = in
no-vertical-line-r13{c4 c5} ==> Ir13c4 = in
I-single: Ir13c4 = in
no-vertical-line-r13{c3 c4} ==> Ir13c3 = in
I-single: Ir13c3 = in
no-vertical-line-r13{c2 c3} ==> Ir13c2 = in
I-single: Ir13c2 = in
horizontal-line-{r13 r14}c2 ==> Ir14c2 = out
I-single: Ir14c2 = out
no-vertical-line-r14{c1 c2} ==> Ir14c1 = out
I-single: Ir14c1 = out
vertical-line-r14{c2 c3} ==> Ir14c3 = in
I-single: Ir14c3 = in
no-horizontal-line-{r14 r15}c3 ==> Ir15c3 = in
I-single: Ir15c3 = in
no-vertical-line-r15{c2 c3} ==> Ir15c2 = in
I-single: Ir15c2 = in
no-vertical-line-r15{c3 c4} ==> Ir15c4 = in
I-single: Ir15c4 = in
horizontal-line-{r14 r15}c4 ==> Ir14c4 = out
I-single: Ir14c4 = out
horizontal-line-{r12 r13}c3 ==> Ir12c3 = out
I-single: Ir12c3 = out
vertical-line-r12{c3 c4} ==> Ir12c4 = in
I-single: Ir12c4 = in
vertical-line-r12{c4 c5} ==> Ir12c5 = out
I-single: Ir12c5 = out
vertical-line-r12{c5 c6} ==> Ir12c6 = in
I-single: Ir12c6 = in
no-horizontal-line-{r11 r12}c6 ==> Ir11c6 = in
I-single: Ir11c6 = in
vertical-line-r11{c5 c6} ==> Ir11c5 = out
I-single: Ir11c5 = out
no-horizontal-line-{r10 r11}c5 ==> Ir10c5 = out
I-single: Ir10c5 = out
no-vertical-line-r10{c5 c6} ==> Ir10c6 = out
I-single: Ir10c6 = out
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
H-single: Hr10c6 = 1
same-colour-in-r10{c4 c5} ==> Vr10c5 = 0
V-single: Vr10c5 = 0
same-colour-in-{r11 r12}c5 ==> Hr12c5 = 0
H-single: Hr12c5 = 0
same-colour-in-r12{c2 c3} ==> Vr12c3 = 0
V-single: Vr12c3 = 0
w[1]-diagonal-3-2-in-{r13c1...r12c2}-non-closed-ne-corner ==> Hr14c1 = 1, Vr14c1 = 0
V-single: Vr14c1 = 0
H-single: Hr14c1 = 1
w[1]-3-in-r14c2-hit-by-horiz-line-at-nw ==> Vr13c2 = 0
V-single: Vr13c2 = 0
w[1]-diagonal-3-2-in-{r12c3...r13c2}-non-closed-sw-corner ==> Hr12c3 = 1, Vr11c4 = 0, Hr12c4 = 0
H-single: Hr12c4 = 0
V-single: Vr11c4 = 0
H-single: Hr12c3 = 1
P-single: Pr13c3 = ew
H-single: Hr13c2 = 1
P-single: Pr14c2 = ew
P-single: Pr13c2 = ew
P-single: Pr12c3 = ew
no-vertical-line-r11{c3 c4} ==> Ir11c4 = in
I-single: Ir11c4 = in
different-colours-in-r11{c4 c5} ==> Hr11c5 = 1
V-single: Vr11c5 = 1
different-colours-in-{r10 r11}c4 ==> Hr11c4 = 1
H-single: Hr11c4 = 1
same-colour-in-r14{c4 c5} ==> Vr14c5 = 0
V-single: Vr14c5 = 0
different-colours-in-r15{c4 c5} ==> Hr15c5 = 1
V-single: Vr15c5 = 1
different-colours-in-{r15 r16}c4 ==> Hr16c4 = 1
H-single: Hr16c4 = 1
H-single: Hr16c5 = 0
w[1]-diagonal-3-2-in-{r14c4...r15c5}-non-closed-se-corner ==> Vr15c6 = 1
V-single: Vr15c6 = 1
different-colours-in-{r15 r16}c2 ==> Hr16c2 = 1
H-single: Hr16c2 = 1
w[1]-3-in-r15c1-hit-by-horiz-line-at-se ==> Hr15c1 = 1
H-single: Hr15c1 = 1
w[1]-3-in-r14c2-hit-by-horiz-line-at-sw ==> Vr15c2 = 0
V-single: Vr15c2 = 0
w[1]-3-in-r15c1-closed-nw-corner ==> Pr16c2 ≠ nw
P-single: Pr16c2 = ew
P-single: Pr16c3 = ew
H-single: Hr16c3 = 1
P-single: Pr15c2 = ew
same-colour-in-{r14 r15}c6 ==> Hr15c6 = 0
H-single: Hr15c6 = 0
same-colour-in-{r15 r16}c7 ==> Hr16c7 = 0
H-single: Hr16c7 = 0
different-colours-in-r15{c7 c8} ==> Hr15c8 = 1
V-single: Vr15c8 = 1
different-colours-in-r15{c6 c7} ==> Hr15c7 = 1
V-single: Vr15c7 = 1
whip[1]: Hr13c6{0 .} ==> Br12c6 ≠ s, Br12c6 ≠ ns, Br12c6 ≠ se, Br12c6 ≠ nes
whip[1]: Hr14c6{0 .} ==> Br14c6 ≠ n, Br14c6 ≠ ne, Br14c6 ≠ ns, Br14c6 ≠ nw, Br14c6 ≠ swn, Br14c6 ≠ wne, Br14c6 ≠ nes
whip[1]: Vr13c6{0 .} ==> Br13c5 ≠ ne, Br13c5 ≠ se, Br13c5 ≠ ew
whip[1]: Br13c5{nw .} ==> Pr13c5 ≠ ns
P-single: Pr13c5 = ne
whip[1]: Pr13c5{ne .} ==> Br12c4 ≠ w, Br12c4 ≠ nw, Br12c5 ≠ wne, Br12c5 ≠ nes, Br13c4 ≠ se, Br13c5 ≠ nw
B-single: Br13c5 = ns
P-single: Pr14c5 = ew
B-single: Br13c4 = s
N-single: Nr13c4 = 1
whip[1]: Pr14c5{ew .} ==> Br14c5 ≠ w, Br14c5 ≠ s, Br14c5 ≠ e, Br14c5 ≠ o, Br14c4 ≠ wne, Br14c5 ≠ se, Br14c5 ≠ ew, Br14c5 ≠ sw, Br14c5 ≠ esw
B-single: Br14c4 = swn
P-single: Pr15c4 = ne
whip[1]: Pr15c4{ne .} ==> Br15c3 ≠ e, Br15c3 ≠ se, Br15c4 ≠ w, Br15c4 ≠ ew, Br15c4 ≠ sw, Br15c4 ≠ esw
whip[1]: Br15c4{nes .} ==> Pr16c4 ≠ ne, Pr16c4 ≠ nw
whip[1]: Br15c3{s .} ==> Nr15c3 ≠ 2
whip[1]: Br14c5{nes .} ==> Nr14c5 ≠ 0
whip[1]: Br12c5{swn .} ==> Pr12c5 ≠ ne, Pr12c5 ≠ ew
whip[1]: Pr12c5{sw .} ==> Br11c4 ≠ nes, Br11c5 ≠ se, Br11c5 ≠ sw, Br11c5 ≠ esw, Br11c5 ≠ swn, Br11c5 ≠ nes, Br12c5 ≠ swn, Br11c4 ≠ n, Br11c4 ≠ w, Br11c5 ≠ s, Br11c5 ≠ ns
B-single: Br12c5 = esw
whip[1]: Pr12c6{se .} ==> Br11c6 ≠ ne, Br11c6 ≠ sw, Br12c6 ≠ ne, Br12c6 ≠ o, Br12c6 ≠ n, Br12c6 ≠ e
whip[1]: Br12c6{wne .} ==> Nr12c6 ≠ 0
whip[1]: Br11c4{ew .} ==> Pr11c5 ≠ o, Pr11c5 ≠ ne, Nr11c4 ≠ 1, Nr11c4 ≠ 3
N-single: Nr11c4 = 2
whip[1]: Pr11c5{sw .} ==> Br10c5 ≠ sw, Br10c5 ≠ esw, Br10c5 ≠ swn
whip[1]: Br10c5{ew .} ==> Nr10c5 ≠ 3
whip[1]: Br12c4{wne .} ==> Nr12c4 ≠ 1
whip[1]: Pr13c7{ns .} ==> Br12c7 ≠ n, Br12c7 ≠ o, Br12c6 ≠ w, Br12c6 ≠ nw
whip[1]: Br12c6{wne .} ==> Pr12c7 ≠ o, Pr12c7 ≠ ne, Pr12c7 ≠ ew, Nr12c6 ≠ 1
whip[1]: Pr12c7{sw .} ==> Br11c6 ≠ se, Br11c7 ≠ esw, Br11c7 ≠ swn
whip[1]: Br11c7{se .} ==> Pr11c7 ≠ ns, Nr11c7 ≠ 3
whip[1]: Pr11c7{ew .} ==> Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ esw, Br10c7 ≠ swn, Br11c6 ≠ ew, Br11c7 ≠ nw, Br10c6 ≠ ne, Br10c7 ≠ e, Br10c7 ≠ ne
whip[1]: Br10c6{sw .} ==> Pr10c7 ≠ sw, Pr11c6 ≠ ns, Pr11c6 ≠ sw
w[1]-1-in-r9c7-asymmetric-sw-corner ==> Pr9c8 ≠ se
P-single: Pr9c8 = ne
whip[1]: Pr9c8{ne .} ==> Br8c7 ≠ n, Br8c7 ≠ o, Br8c7 ≠ w, Br8c7 ≠ nw, Br8c8 ≠ nes, Br9c7 ≠ e, Br9c8 ≠ nw, Br9c8 ≠ swn
B-single: Br9c7 = s
H-single: Hr10c7 = 1
B-single: Br8c8 = esw
horizontal-line-{r9 r10}c7 ==> Ir10c7 = out
I-single: Ir10c7 = out
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
V-single: Vr10c8 = 1
different-colours-in-{r10 r11}c7 ==> Hr11c7 = 1
H-single: Hr11c7 = 1
same-colour-in-r10{c6 c7} ==> Vr10c7 = 0
V-single: Vr10c7 = 0
P-single: Pr11c7 = ew
w[1]-1-in-r9c5-asymmetric-se-corner ==> Pr9c5 ≠ ns, Pr9c5 ≠ ne
w[1]-3-in-r8c4-symmetric-se-corner ==> Hr9c4 = 1
H-single: Hr9c4 = 1
V-single: Vr9c5 = 0
H-single: Hr9c5 = 0
w[1]-3-in-r9c3-hit-by-horiz-line-at-ne ==> Vr8c4 = 0
V-single: Vr8c4 = 0
w[1]-3-in-r8c4-closed-se-corner ==> Pr8c4 ≠ se
P-single: Pr8c4 = ew
H-single: Hr8c3 = 1
P-single: Pr9c5 = nw
horizontal-line-{r7 r8}c3 ==> Ir8c3 = out
I-single: Ir8c3 = out
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = in
I-single: Ir9c5 = in
no-vertical-line-r9{c4 c5} ==> Ir9c4 = in
I-single: Ir9c4 = in
different-colours-in-{r9 r10}c4 ==> Hr10c4 = 1
H-single: Hr10c4 = 1
w[1]-3-in-r9c3-hit-by-horiz-line-at-se ==> Hr9c3 = 1
H-single: Hr9c3 = 1
V-single: Vr8c3 = 0
w[1]-3-in-r8c4-hit-by-horiz-line-at-sw ==> Vr9c4 = 0
V-single: Vr9c4 = 0
w[1]-3-in-r9c3-closed-nw-corner ==> Pr10c4 ≠ nw
P-single: Pr10c4 = ew
same-colour-in-r9{c5 c6} ==> Vr9c6 = 0
V-single: Vr9c6 = 0
P-single: Pr9c7 = nw
H-single: Hr9c6 = 1
V-single: Vr8c7 = 1
H-single: Hr8c6 = 0
P-single: Pr10c7 = ew
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = out
I-single: Ir8c6 = out
different-colours-in-r8{c5 c6} ==> Hr8c6 = 1
V-single: Vr8c6 = 1
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1
H-single: Hr10c5 = 1
whip[1]: Hr10c7{1 .} ==> Br10c7 ≠ s, Br10c7 ≠ se, Br10c7 ≠ ew
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 1
whip[1]: Vr10c8{1 .} ==> Pr10c8 ≠ ew, Pr11c8 ≠ ew, Br10c7 ≠ ns, Br10c8 ≠ ns
P-single: Pr10c8 = sw
B-single: Br10c8 = ew
P-single: Pr10c9 = se
whip[1]: Pr10c8{sw .} ==> Br9c8 ≠ ns
B-single: Br9c8 = n
N-single: Nr9c8 = 1
whip[1]: Pr10c9{se .} ==> Br10c9 ≠ ne
B-single: Br10c9 = wne
N-single: Nr10c9 = 3
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 2
N-single: Nr10c7 = 3
whip[1]: Pr11c8{nw .} ==> Br11c8 ≠ ne
whip[1]: Hr11c7{1 .} ==> Pr11c8 ≠ ns, Br10c7 ≠ wne, Br11c7 ≠ se
P-single: Pr12c9 = nw
P-single: Pr11c8 = nw
B-single: Br10c7 = nes
whip[1]: Pr12c9{nw .} ==> Br11c8 ≠ ew, Br12c8 ≠ se, Br12c9 ≠ w, Br12c9 ≠ ew
B-single: Br12c8 = ns
B-single: Br11c8 = se
whip[1]: Br12c9{se .} ==> Pr13c10 ≠ ns, Pr13c10 ≠ se
whip[1]: Pr13c10{ew .} ==> Br13c9 ≠ se
B-single: Br13c9 = ns
whip[1]: Br11c7{ns .} ==> Pr12c7 ≠ ns
whip[1]: Vr10c7{0 .} ==> Br10c6 ≠ se
whip[1]: Hr9c4{1 .} ==> Pr9c4 ≠ ns, Br8c4 ≠ wne, Br9c4 ≠ s, Br9c4 ≠ w, Br9c4 ≠ se, Br9c4 ≠ ew
P-single: Pr9c4 = ew
B-single: Br8c4 = nes
whip[1]: Pr9c4{ew .} ==> Br8c3 ≠ ew, Br9c3 ≠ esw, Br9c4 ≠ nw, Br9c4 ≠ wne
B-single: Br9c3 = swn
P-single: Pr9c3 = se
B-single: Br8c3 = ns
P-single: Pr8c3 = ew
whip[1]: Pr9c3{se .} ==> Br8c2 ≠ wne
B-single: Br8c2 = nw
N-single: Nr8c2 = 2
whip[1]: Pr8c3{ew .} ==> Br7c3 ≠ o
B-single: Br7c3 = s
N-single: Nr7c3 = 1
whip[1]: Br9c4{nes .} ==> Pr10c5 ≠ o, Pr10c5 ≠ ne, Pr10c5 ≠ ns, Pr10c5 ≠ se, Nr9c4 ≠ 1
whip[1]: Pr10c5{sw .} ==> Br10c4 ≠ se, Br10c5 ≠ nw, Br10c4 ≠ o, Br10c4 ≠ e, Br10c4 ≠ s
whip[1]: Br10c4{nes .} ==> Nr10c4 ≠ 0
whip[1]: Vr9c5{0 .} ==> Pr10c5 ≠ nw, Br9c4 ≠ nes, Br9c5 ≠ w
B-single: Br9c4 = ns
N-single: Nr9c4 = 2
whip[1]: Br9c5{s .} ==> Pr9c6 ≠ sw
whip[1]: Pr9c6{ew .} ==> Br9c6 ≠ nw, Br8c5 ≠ w, Br8c6 ≠ o, Br8c6 ≠ n
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Br8c5{sw .} ==> Nr8c5 ≠ 1
N-single: Nr8c5 = 2
P-single: Pr8c6 = ns
whip[1]: Pr8c6{ns .} ==> Br7c6 ≠ sw, Br8c5 ≠ sw, Br8c6 ≠ nw, Br8c6 ≠ se, Br8c6 ≠ nes
B-single: Br8c5 = ew
B-single: Br7c6 = w
N-single: Nr7c6 = 1
whip[1]: Pr8c7{se .} ==> Br8c7 ≠ ne, Br8c7 ≠ ew
whip[1]: Br8c7{wne .} ==> Nr8c7 ≠ 0, Nr8c7 ≠ 2
whip[1]: Pr9c6{ns .} ==> Br9c5 ≠ n
whip[1]: Br8c6{esw .} ==> Nr8c6 ≠ 2
whip[1]: Br9c6{sw .} ==> Pr10c6 ≠ ns
P-single: Pr10c6 = ew
whip[1]: Pr10c6{ew .} ==> Br10c5 ≠ w, Br10c5 ≠ s, Br10c5 ≠ e, Br10c5 ≠ o, Br9c5 ≠ e, Br9c6 ≠ sw, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c6 ≠ sw
B-single: Br10c6 = ns
B-single: Br9c6 = ns
P-single: Pr9c6 = ne
B-single: Br9c5 = s
P-single: Pr10c5 = ew
whip[1]: Pr9c6{ne .} ==> Br8c6 ≠ w
B-single: Br8c6 = esw
N-single: Nr8c6 = 3
P-single: Pr8c7 = se
w[1]-1-in-r7c7-asymmetric-sw-corner ==> Pr7c8 ≠ ns
P-single: Pr6c9 = ne
P-single: Pr7c8 = ne
whip[1]: Pr8c7{se .} ==> Br8c7 ≠ e, Br7c7 ≠ e
B-single: Br7c7 = s
P-single: Pr8c8 = sw
B-single: Br8c7 = wne
N-single: Nr8c7 = 3
whip[1]: Pr8c8{sw .} ==> Br7c8 ≠ ns, Br7c8 ≠ w, Br7c8 ≠ ew, Br7c8 ≠ sw
whip[1]: Br7c8{ne .} ==> Pr7c9 ≠ ne, Pr7c9 ≠ ns
whip[1]: Pr7c9{sw .} ==> Br6c8 ≠ ew, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ w
B-single: Br6c8 = sw
whip[1]: Br6c9{nes .} ==> Pr6c10 ≠ o, Pr6c10 ≠ ne, Pr6c10 ≠ ns, Pr6c10 ≠ se
whip[1]: Pr6c10{sw .} ==> Br5c9 ≠ ew, Br5c10 ≠ sw, Br5c9 ≠ w
whip[1]: Br5c9{esw .} ==> Nr5c9 ≠ 1
whip[1]: Pr10c5{ew .} ==> Br10c4 ≠ ne, Br10c4 ≠ nes
whip[1]: Br10c4{ns .} ==> Pr11c5 ≠ ns, Pr11c5 ≠ nw, Nr10c4 ≠ 3
whip[1]: Pr11c5{sw .} ==> Br11c5 ≠ o, Br11c5 ≠ e
whip[1]: Br11c5{wne .} ==> Nr11c5 ≠ 0
whip[1]: Br10c5{ns .} ==> Nr10c5 ≠ 0
whip[1]: Pr11c6{ew .} ==> Br11c5 ≠ wne, Br11c5 ≠ w, Br11c5 ≠ ne
whip[1]: Br11c5{ew .} ==> Nr11c5 ≠ 3
whip[1]: Br12c7{nw .} ==> Nr12c7 ≠ 0
whip[1]: Hr12c6{0 .} ==> Pr12c6 ≠ se, Pr12c7 ≠ sw, Br11c6 ≠ ns, Br12c6 ≠ wne
P-single: Pr11c6 = se
P-single: Pr12c7 = se
P-single: Pr12c6 = ns
B-single: Br12c6 = ew
N-single: Nr12c6 = 2
B-single: Br11c6 = nw
whip[1]: Pr11c6{se .} ==> Br11c5 ≠ n, Br10c5 ≠ ns, Br11c5 ≠ nw
B-single: Br11c5 = ew
N-single: Nr11c5 = 2
P-single: Pr12c4 = sw
P-single: Pr11c5 = sw
P-single: Pr12c5 = ns
B-single: Br10c5 = n
N-single: Nr10c5 = 1
whip[1]: Pr12c4{sw .} ==> Br11c4 ≠ ns, Br11c3 ≠ ne, Br11c3 ≠ n, Br11c4 ≠ ew, Br12c3 ≠ esw, Br12c4 ≠ wne
B-single: Br12c4 = ew
N-single: Nr12c4 = 2
B-single: Br12c3 = nes
B-single: Br11c4 = ne
P-single: Pr11c4 = ew
B-single: Br11c3 = ns
N-single: Nr11c3 = 2
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ n
B-single: Br10c4 = ns
N-single: Nr10c4 = 2
whip[1]: Pr12c7{se .} ==> Br12c7 ≠ w, Br11c7 ≠ n
B-single: Br11c7 = ns
N-single: Nr11c7 = 2
B-single: Br12c7 = nw
N-single: Nr12c7 = 2
whip[1]: Pr14c6{sw .} ==> Br14c6 ≠ s, Br14c6 ≠ e, Br14c6 ≠ o, Br14c5 ≠ ns, Br14c5 ≠ n, Br14c6 ≠ se
whip[1]: Br14c6{esw .} ==> Pr15c6 ≠ se, Pr15c6 ≠ ew, Nr14c6 ≠ 0
whip[1]: Pr15c6{nw .} ==> Br14c6 ≠ sw, Br14c6 ≠ esw, Br15c5 ≠ ne, Br15c5 ≠ sw, Br15c6 ≠ ns, Br15c6 ≠ swn, Br15c6 ≠ nes
whip[1]: Br15c6{esw .} ==> Pr15c7 ≠ ew, Pr15c7 ≠ sw
whip[1]: Pr15c7{ns .} ==> Br14c6 ≠ w, Br14c7 ≠ ns, Br14c7 ≠ se, Br15c7 ≠ nw, Br15c7 ≠ se, Br14c7 ≠ n, Br14c7 ≠ e
B-single: Br14c6 = ew
N-single: Nr14c6 = 2
whip[1]: Br14c7{swn .} ==> Nr14c7 ≠ 1
whip[1]: Br14c5{nes .} ==> Nr14c5 ≠ 1
whip[1]: Pr14c7{ns .} ==> Br14c7 ≠ nw, Br14c7 ≠ swn
whip[1]: Br14c7{esw .} ==> Pr15c8 ≠ se, Pr15c8 ≠ ew
whip[1]: Pr15c8{nw .} ==> Br14c8 ≠ se, Br15c8 ≠ ns, Br15c8 ≠ nw, Br15c8 ≠ swn, Br15c8 ≠ n
B-single: Br14c8 = ew
whip[1]: Hr15c5{0 .} ==> Pr15c5 ≠ ew, Pr15c6 ≠ nw, Br14c5 ≠ nes, Br15c5 ≠ ns
P-single: Pr15c6 = ns
P-single: Pr15c5 = sw
B-single: Br15c5 = ew
P-single: Pr16c5 = nw
P-single: Pr16c6 = ne
B-single: Br14c5 = ne
N-single: Nr14c5 = 2
whip[1]: Pr15c6{ns .} ==> Br15c6 ≠ s, Br15c6 ≠ se
whip[1]: Br15c6{esw .} ==> Nr15c6 ≠ 1
whip[1]: Pr15c5{sw .} ==> Br15c4 ≠ ns, Br15c4 ≠ n
whip[1]: Br15c4{nes .} ==> Nr15c4 ≠ 1
whip[1]: Pr16c5{nw .} ==> Br16c5 ≠ n, Br16c4 ≠ o, Br15c4 ≠ ne
B-single: Br15c4 = nes
N-single: Nr15c4 = 3
P-single: Pr16c4 = ew
B-single: Br16c4 = n
B-single: Br16c5 = o
whip[1]: Pr16c4{ew .} ==> Br15c3 ≠ o, Br16c3 ≠ o
B-single: Br16c3 = n
B-single: Br15c3 = s
N-single: Nr15c3 = 1
whip[1]: Hr15c7{0 .} ==> Pr15c7 ≠ ne, Pr15c8 ≠ nw, Br14c7 ≠ esw, Br15c7 ≠ ns
P-single: Pr15c8 = ns
P-single: Pr15c7 = ns
B-single: Br15c7 = ew
P-single: Pr16c7 = nw
P-single: Pr16c8 = ne
B-single: Br14c7 = ew
N-single: Nr14c7 = 2
whip[1]: Pr15c8{ns .} ==> Br15c8 ≠ e, Br15c8 ≠ o, Br15c8 ≠ s, Br15c8 ≠ se
whip[1]: Br15c8{esw .} ==> Nr15c8 ≠ 0
whip[1]: Pr15c7{ns .} ==> Br15c6 ≠ sw
B-single: Br15c6 = esw
N-single: Nr15c6 = 3
whip[1]: Pr16c7{nw .} ==> Br16c7 ≠ n
B-single: Br16c7 = o
whip[1]: Pr16c8{ne .} ==> Br16c8 ≠ o, Br15c8 ≠ w, Br15c8 ≠ ew
B-single: Br16c8 = n
whip[1]: Br15c8{esw .} ==> Nr15c8 ≠ 1
whip[1]: Vr12c3{0 .} ==> Br12c2 ≠ ne
B-single: Br12c2 = ns
whip[1]: Vr14c1{0 .} ==> Br14c0 ≠ e, Pr14c1 ≠ ns, Pr15c1 ≠ ns, Br14c1 ≠ w
P-single: Pr15c1 = se
P-single: Pr14c1 = ne
B-single: Br14c1 = ns
N-single: Nr14c1 = 2
B-single: Br14c0 = o
whip[1]: Pr15c1{se .} ==> Br15c1 ≠ esw
B-single: Br15c1 = swn
whip[1]: Pr14c1{ne .} ==> Br13c1 ≠ wne
B-single: Br13c1 = swn
whip[1]: Vr13c2{0 .} ==> Br13c2 ≠ sw
B-single: Br13c2 = ns
whip[1]: Hr16c2{1 .} ==> Br16c2 ≠ o, Br15c2 ≠ nw
B-single: Br15c2 = ns
B-single: Br16c2 = n
whip[1]: Pr16c9{ew .} ==> Br16c9 ≠ o, Br15c8 ≠ esw
B-single: Br15c8 = sw
N-single: Nr15c8 = 2
B-single: Br16c9 = n
whip[1]: Br13c11{ne .} ==> Nr13c11 ≠ 3
whip[1]: Br13c10{ns .} ==> Nr13c10 ≠ 0
whip[1]: Vr13c16{0 .} ==> Br13c16 ≠ w
B-single: Br13c16 = o
whip[1]: Hr12c11{0 .} ==> Pr12c11 ≠ ew, Pr12c12 ≠ ew, Br11c11 ≠ ns, Br12c11 ≠ ns
P-single: Pr13c11 = ne
P-single: Pr12c12 = ne
P-single: Pr12c11 = ns
B-single: Br12c11 = sw
B-single: Br11c11 = ew
P-single: Pr11c12 = se
whip[1]: Pr13c11{ne .} ==> Br12c10 ≠ ns, Br13c10 ≠ ns
B-single: Br13c10 = s
N-single: Nr13c10 = 1
P-single: Pr13c10 = nw
B-single: Br12c10 = ew
whip[1]: Pr13c10{nw .} ==> Br12c9 ≠ s
B-single: Br12c9 = se
N-single: Nr12c9 = 2
whip[1]: Pr12c12{ne .} ==> Br11c12 ≠ ns
B-single: Br11c12 = swn
N-single: Nr11c12 = 3
whip[1]: Pr12c11{ns .} ==> Br11c10 ≠ sw
B-single: Br11c10 = ew
whip[1]: Pr11c12{se .} ==> Br10c11 ≠ swn
B-single: Br10c11 = nw
N-single: Nr10c11 = 2
whip[1]: Vr11c16{0 .} ==> Br11c16 ≠ w
B-single: Br11c16 = o
whip[1]: Vr6c16{1 .} ==> Br6c16 ≠ o, Pr6c16 ≠ nw, Pr7c16 ≠ o, Pr7c16 ≠ sw, Br6c15 ≠ ns, Br6c15 ≠ nw, Br6c15 ≠ sw
P-single: Pr7c16 = ns
P-single: Pr6c16 = ns
H-single: Hr6c15 = 0
V-single: Vr5c16 = 1
B-single: Br6c16 = w
vertical-line-r5{c15 c16} ==> Ir5c15 = in
I-single: Ir5c15 = in
different-colours-in-r5{c14 c15} ==> Hr5c15 = 1
V-single: Vr5c15 = 1

LOOP[12]: Vr5c15-Vr6c15-Hr7c14-Vr7c14-Hr8c13-Hr8c12-Vr7c12-Hr7c12-Vr6c13-Hr6c13-Vr5c14- ==> Hr5c14 = 0
H-single: Hr5c14 = 0
no-horizontal-line-{r4 r5}c14 ==> Ir4c14 = out
I-single: Ir4c14 = out
different-colours-in-r4{c13 c14} ==> Hr4c14 = 1
V-single: Vr4c14 = 1
V-single: Vr3c14 = 0
H-single: Hr4c14 = 0
no-horizontal-line-{r3 r4}c14 ==> Ir3c14 = out
I-single: Ir3c14 = out
whip[1]: Pr7c16{ns .} ==> Br6c15 ≠ se, Br7c15 ≠ s, Br7c15 ≠ w, Br7c15 ≠ ns, Br7c15 ≠ nes
whip[1]: Br7c15{ew .} ==> Pr8c16 ≠ o, Pr8c16 ≠ sw, Nr7c15 ≠ 1, Nr7c15 ≠ 3
N-single: Nr7c15 = 2
w[1]-2-in-r7c15-open-nw-corner ==> Hr8c15 = 1, Vr8c16 = 0
V-single: Vr8c16 = 0
H-single: Hr8c15 = 1
P-single: Pr8c16 = nw
horizontal-line-{r7 r8}c15 ==> Ir8c15 = out
I-single: Ir8c15 = out
same-colour-in-{r8 r9}c15 ==> Hr9c15 = 0
H-single: Hr9c15 = 0
different-colours-in-r8{c14 c15} ==> Hr8c15 = 1
V-single: Vr8c15 = 1

LOOP[234]: Vr5c16-Vr6c16-Vr7c16-Hr8c15-Vr8c15-Vr9c15-Hr10c15-Vr10c16-Hr11c15-Hr11c14-Vr11c14-Hr12c14-Hr12c15-Vr12c16-Hr13c15-Vr13c15-Hr14c15-Vr14c16-Vr15c16-Hr16c15-Vr15c15-Hr15c14-Vr15c14-Hr16c13-Vr15c13-Vr14c13-Hr14c13-Vr13c14-Hr13c13-Vr12c13-Hr12c12-Vr11c12-Hr11c12-Vr10c13-Hr10c13-Vr9c14-Hr9c13-Hr9c12-Vr9c12-Hr10c11-Vr10c11-Vr11c11-Vr12c11-Hr13c11-Vr13c12-Vr14c12-Vr15c12-Hr16c11-Vr15c11-Vr14c11-Hr14c10-Hr14c9-Vr14c9-Hr15c9-Vr15c10-Hr16c9-Hr16c8-Vr15c8-Vr14c8-Vr13c8-Hr13c8-Hr13c9-Vr12c10-Vr11c10-Vr10c10-Hr10c9-Vr10c9-Vr11c9-Hr12c8-Hr12c7-Vr12c7-Vr13c7-Vr14c7-Vr15c7-Hr16c6-Vr15c6-Vr14c6-Hr14c5-Hr14c4-Vr14c4-Hr15c4-Vr15c5-Hr16c4-Hr16c3-Hr16c2-Hr16c1-Vr15c1-Hr15c1-Hr15c2-Vr14c3-Hr14c2-Hr14c1-Vr13c1-Hr13c1-Hr13c2-Hr13c3-Vr12c4-Hr12c3-Hr12c2-Hr12c1-Vr11c1-Vr10c1-Hr10c1-Vr10c2-Hr11c2-Hr11c3-Hr11c4-Vr11c5-Vr12c5-Hr13c5-Vr12c6-Vr11c6-Hr11c6-Hr11c7-Vr10c8-Hr10c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Vr9c3-Hr9c3-Hr9c4-Vr8c5-Hr8c4-Hr8c3-Hr8c2-Vr8c2-Hr9c1-Vr8c1-Vr7c1-Vr6c1-Vr5c1-Vr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Hr1c3-Vr1c4-Hr2c4-Vr1c5-Hr1c5-Hr1c6-Hr1c7-Vr1c8-Hr2c7-Hr2c6-Vr2c6-Hr3c5-Vr3c5-Hr4c4-Vr3c4-Hr3c3-Vr2c3-Hr2c2-Vr2c2-Vr3c2-Hr4c2-Vr4c3-Hr5c2-Vr5c2-Vr6c2-Hr7c2-Vr6c3-Hr6c3-Vr6c4-Hr7c4-Hr7c5-Vr7c6-Vr8c6-Hr9c6-Vr8c7-Hr8c7-Vr8c8-Hr9c8-Vr8c9-Hr8c9-Vr8c10-Hr9c10-Vr8c11-Vr7c11-Hr7c10-Hr7c9-Hr7c8-Vr6c8-Hr6c7-Hr6c6-Hr6c5-Vr5c5-Hr5c5-Vr4c6-Hr4c6-Vr4c7-Hr5c7-Hr5c8-Vr5c9-Hr6c9-Vr5c10-Vr4c10-Hr4c9-Hr4c8-Vr3c8-Hr3c8-Vr2c9-Vr1c9-Hr1c9-Hr1c10-Vr1c11-Hr2c10-Vr2c10-Hr3c10-Vr3c11-Vr4c11-Vr5c11-Hr6c11-Vr5c12-Hr5c12-Vr4c13-Hr4c13-Vr4c14-Vr5c14-Hr6c13-Vr6c13-Hr7c12-Vr7c12-Hr8c12-Hr8c13-Vr7c14-Hr7c14-Vr6c15-Vr5c15- ==> Hr5c15 = 0
H-single: Hr5c15 = 0
no-horizontal-line-{r4 r5}c15 ==> Ir4c15 = in
I-single: Ir4c15 = in
different-colours-in-r4{c15 c16} ==> Hr4c16 = 1
V-single: Vr4c16 = 1
different-colours-in-r4{c14 c15} ==> Hr4c15 = 1
V-single: Vr4c15 = 1

LOOP[236]: Vr4c15-Vr5c15-Vr6c15-Hr7c14-Vr7c14-Hr8c13-Hr8c12-Vr7c12-Hr7c12-Vr6c13-Hr6c13-Vr5c14-Vr4c14-Hr4c13-Vr4c13-Hr5c12-Vr5c12-Hr6c11-Vr5c11-Vr4c11-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Hr3c8-Vr3c8-Hr4c8-Hr4c9-Vr4c10-Vr5c10-Hr6c9-Vr5c9-Hr5c8-Hr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Vr5c5-Hr6c5-Hr6c6-Hr6c7-Vr6c8-Hr7c8-Hr7c9-Hr7c10-Vr7c11-Vr8c11-Hr9c10-Vr8c10-Hr8c9-Vr8c9-Hr9c8-Vr8c8-Hr8c7-Vr8c7-Hr9c6-Vr8c6-Vr7c6-Hr7c5-Hr7c4-Vr6c4-Hr6c3-Vr6c3-Hr7c2-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Vr2c2-Hr2c2-Vr2c3-Hr3c3-Vr3c4-Hr4c4-Vr3c5-Hr3c5-Vr2c6-Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Hr9c1-Vr8c2-Hr8c2-Hr8c3-Hr8c4-Vr8c5-Hr9c4-Hr9c3-Vr9c3-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Hr10c7-Vr10c8-Hr11c7-Hr11c6-Vr11c6-Vr12c6-Hr13c5-Vr12c5-Vr11c5-Hr11c4-Hr11c3-Hr11c2-Vr10c2-Hr10c1-Vr10c1-Vr11c1-Hr12c1-Hr12c2-Hr12c3-Vr12c4-Hr13c3-Hr13c2-Hr13c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Vr15c5-Hr15c4-Vr14c4-Hr14c4-Hr14c5-Vr14c6-Vr15c6-Hr16c6-Vr15c7-Vr14c7-Vr13c7-Vr12c7-Hr12c7-Hr12c8-Vr11c9-Vr10c9-Hr10c9-Vr10c10-Vr11c10-Vr12c10-Hr13c9-Hr13c8-Vr13c8-Vr14c8-Vr15c8-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Hr14c9-Hr14c10-Vr14c11-Vr15c11-Hr16c11-Vr15c12-Vr14c12-Vr13c12-Hr13c11-Vr12c11-Vr11c11-Vr10c11-Hr10c11-Vr9c12-Hr9c12-Hr9c13-Vr9c14-Hr10c13-Vr10c13-Hr11c12-Vr11c12-Hr12c12-Vr12c13-Hr13c13-Vr13c14-Hr14c13-Vr14c13-Vr15c13-Hr16c13-Vr15c14-Hr15c14-Vr15c15-Hr16c15-Vr15c16-Vr14c16-Hr14c15-Vr13c15-Hr13c15-Vr12c16-Hr12c15-Hr12c14-Vr11c14-Hr11c14-Hr11c15-Vr10c16-Hr10c15-Vr9c15-Vr8c15-Hr8c15-Vr7c16-Vr6c16-Vr5c16-Vr4c16- ==> Hr4c15 = 0
H-single: Hr4c15 = 0
no-horizontal-line-{r3 r4}c15 ==> Ir3c15 = in
I-single: Ir3c15 = in
different-colours-in-r3{c15 c16} ==> Hr3c16 = 1
V-single: Vr3c16 = 1
different-colours-in-r3{c14 c15} ==> Hr3c15 = 1
V-single: Vr3c15 = 1

LOOP[238]: Vr3c15-Vr4c15-Vr5c15-Vr6c15-Hr7c14-Vr7c14-Hr8c13-Hr8c12-Vr7c12-Hr7c12-Vr6c13-Hr6c13-Vr5c14-Vr4c14-Hr4c13-Vr4c13-Hr5c12-Vr5c12-Hr6c11-Vr5c11-Vr4c11-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Hr3c8-Vr3c8-Hr4c8-Hr4c9-Vr4c10-Vr5c10-Hr6c9-Vr5c9-Hr5c8-Hr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Vr5c5-Hr6c5-Hr6c6-Hr6c7-Vr6c8-Hr7c8-Hr7c9-Hr7c10-Vr7c11-Vr8c11-Hr9c10-Vr8c10-Hr8c9-Vr8c9-Hr9c8-Vr8c8-Hr8c7-Vr8c7-Hr9c6-Vr8c6-Vr7c6-Hr7c5-Hr7c4-Vr6c4-Hr6c3-Vr6c3-Hr7c2-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Vr2c2-Hr2c2-Vr2c3-Hr3c3-Vr3c4-Hr4c4-Vr3c5-Hr3c5-Vr2c6-Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Hr9c1-Vr8c2-Hr8c2-Hr8c3-Hr8c4-Vr8c5-Hr9c4-Hr9c3-Vr9c3-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Hr10c7-Vr10c8-Hr11c7-Hr11c6-Vr11c6-Vr12c6-Hr13c5-Vr12c5-Vr11c5-Hr11c4-Hr11c3-Hr11c2-Vr10c2-Hr10c1-Vr10c1-Vr11c1-Hr12c1-Hr12c2-Hr12c3-Vr12c4-Hr13c3-Hr13c2-Hr13c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Vr15c5-Hr15c4-Vr14c4-Hr14c4-Hr14c5-Vr14c6-Vr15c6-Hr16c6-Vr15c7-Vr14c7-Vr13c7-Vr12c7-Hr12c7-Hr12c8-Vr11c9-Vr10c9-Hr10c9-Vr10c10-Vr11c10-Vr12c10-Hr13c9-Hr13c8-Vr13c8-Vr14c8-Vr15c8-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Hr14c9-Hr14c10-Vr14c11-Vr15c11-Hr16c11-Vr15c12-Vr14c12-Vr13c12-Hr13c11-Vr12c11-Vr11c11-Vr10c11-Hr10c11-Vr9c12-Hr9c12-Hr9c13-Vr9c14-Hr10c13-Vr10c13-Hr11c12-Vr11c12-Hr12c12-Vr12c13-Hr13c13-Vr13c14-Hr14c13-Vr14c13-Vr15c13-Hr16c13-Vr15c14-Hr15c14-Vr15c15-Hr16c15-Vr15c16-Vr14c16-Hr14c15-Vr13c15-Hr13c15-Vr12c16-Hr12c15-Hr12c14-Vr11c14-Hr11c14-Hr11c15-Vr10c16-Hr10c15-Vr9c15-Vr8c15-Hr8c15-Vr7c16-Vr6c16-Vr5c16-Vr4c16-Vr3c16- ==> Hr3c15 = 0
H-single: Hr3c15 = 0
no-horizontal-line-{r2 r3}c15 ==> Ir2c15 = in
I-single: Ir2c15 = in
no-vertical-line-r2{c14 c15} ==> Ir2c14 = in
I-single: Ir2c14 = in
horizontal-line-{r1 r2}c14 ==> Ir1c14 = out
I-single: Ir1c14 = out
vertical-line-r1{c14 c15} ==> Ir1c15 = in
I-single: Ir1c15 = in
different-colours-in-r1{c15 c16} ==> Hr1c16 = 1
V-single: Vr1c16 = 1
different-colours-in-{r0 r1}c15 ==> Hr1c15 = 1
H-single: Hr1c15 = 1
H-single: Hr1c14 = 0
w[1]-3-in-r1c14-hit-by-horiz-line-at-ne ==> Vr1c14 = 1
V-single: Vr1c14 = 1
V-single: Vr2c14 = 0
w[1]-3-in-r1c14-closed-sw-corner ==> Pr1c15 ≠ sw
P-single: Pr1c15 = se
different-colours-in-{r2 r3}c14 ==> Hr3c14 = 1
H-single: Hr3c14 = 1

LOOP[250]: Vr1c16-Hr1c15-Vr1c15-Hr2c14-Vr1c14-Hr1c13-Vr1c13-Hr2c12-Vr2c12-Hr3c12-Hr3c13-Hr3c14-Vr3c15-Vr4c15-Vr5c15-Vr6c15-Hr7c14-Vr7c14-Hr8c13-Hr8c12-Vr7c12-Hr7c12-Vr6c13-Hr6c13-Vr5c14-Vr4c14-Hr4c13-Vr4c13-Hr5c12-Vr5c12-Hr6c11-Vr5c11-Vr4c11-Vr3c11-Hr3c10-Vr2c10-Hr2c10-Vr1c11-Hr1c10-Hr1c9-Vr1c9-Vr2c9-Hr3c8-Vr3c8-Hr4c8-Hr4c9-Vr4c10-Vr5c10-Hr6c9-Vr5c9-Hr5c8-Hr5c7-Vr4c7-Hr4c6-Vr4c6-Hr5c5-Vr5c5-Hr6c5-Hr6c6-Hr6c7-Vr6c8-Hr7c8-Hr7c9-Hr7c10-Vr7c11-Vr8c11-Hr9c10-Vr8c10-Hr8c9-Vr8c9-Hr9c8-Vr8c8-Hr8c7-Vr8c7-Hr9c6-Vr8c6-Vr7c6-Hr7c5-Hr7c4-Vr6c4-Hr6c3-Vr6c3-Hr7c2-Vr6c2-Vr5c2-Hr5c2-Vr4c3-Hr4c2-Vr3c2-Vr2c2-Hr2c2-Vr2c3-Hr3c3-Vr3c4-Hr4c4-Vr3c5-Hr3c5-Vr2c6-Hr2c6-Hr2c7-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Vr8c1-Hr9c1-Vr8c2-Hr8c2-Hr8c3-Hr8c4-Vr8c5-Hr9c4-Hr9c3-Vr9c3-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Hr10c7-Vr10c8-Hr11c7-Hr11c6-Vr11c6-Vr12c6-Hr13c5-Vr12c5-Vr11c5-Hr11c4-Hr11c3-Hr11c2-Vr10c2-Hr10c1-Vr10c1-Vr11c1-Hr12c1-Hr12c2-Hr12c3-Vr12c4-Hr13c3-Hr13c2-Hr13c1-Vr13c1-Hr14c1-Hr14c2-Vr14c3-Hr15c2-Hr15c1-Vr15c1-Hr16c1-Hr16c2-Hr16c3-Hr16c4-Vr15c5-Hr15c4-Vr14c4-Hr14c4-Hr14c5-Vr14c6-Vr15c6-Hr16c6-Vr15c7-Vr14c7-Vr13c7-Vr12c7-Hr12c7-Hr12c8-Vr11c9-Vr10c9-Hr10c9-Vr10c10-Vr11c10-Vr12c10-Hr13c9-Hr13c8-Vr13c8-Vr14c8-Vr15c8-Hr16c8-Hr16c9-Vr15c10-Hr15c9-Vr14c9-Hr14c9-Hr14c10-Vr14c11-Vr15c11-Hr16c11-Vr15c12-Vr14c12-Vr13c12-Hr13c11-Vr12c11-Vr11c11-Vr10c11-Hr10c11-Vr9c12-Hr9c12-Hr9c13-Vr9c14-Hr10c13-Vr10c13-Hr11c12-Vr11c12-Hr12c12-Vr12c13-Hr13c13-Vr13c14-Hr14c13-Vr14c13-Vr15c13-Hr16c13-Vr15c14-Hr15c14-Vr15c15-Hr16c15-Vr15c16-Vr14c16-Hr14c15-Vr13c15-Hr13c15-Vr12c16-Hr12c15-Hr12c14-Vr11c14-Hr11c14-Hr11c15-Vr10c16-Hr10c15-Vr9c15-Vr8c15-Hr8c15-Vr7c16-Vr6c16-Vr5c16-Vr4c16-Vr3c16- ==> Vr2c16 = 1
V-single: Vr2c16 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXOXXXOXXOOXOX
XOXXXOOOXOOXXXX
XOOXOOOXXXOOOOX
XXOOOXOOOXOOXOX
XOOOXXXXOXOXXOX
XOXOOOOXXXXXOOX
XXXXXOOOOOXOOXX
XOOOXOXOXOXXXXO
OOXXXXXXXXXOOXO
XOOOOOOXOXOOXXX
XXXXOXXXOXOXXOO
OOOXOXOOOXOOXXX
XXXXXXOXXXXOOXO
OOXOOXOXOOXOXXX
XXXXOXOXXOXOXOX

.———.———.———.   .———.———.———.   .———.———.   .   .———.   .———.
|         2 |   |     2     |   | 2   3 | 1   2 |   | 3 |   |
.   .———.   .———.   .———.———.   .   .———.   .———.   .———.   .
|   | 3 |           | 2         | 2 | 3   1 |               |
.   .   .———.   .———.   .   .———.   .———.   .———.———.———.   .
|   |     2 |   |     1   1 | 3         |     1         |   |
.   .———.   .———.   .———.   .———.———.   .   .   .———.   .   .
| 1   3 |     1   2 |   | 2   2   2 | 2 | 1   2 |   |   |   |
.   .———.   .   .———.   .———.———.   .   .   .———.   .   .   .
|   |           |               |   |   |   | 2   2 |   |   |
.   .   .———.   .———.———.———.   .———.   .———.   .———.   .   .
| 2 | 3 | 3 |         1     | 2       1         |     2 | 2 |
.   .———.   .———.———.   .   .———.———.———.   .———.   .———.   .
|     2           2 |     1       2     |   | 3     |       |
.   .———.———.———.   .   .———.   .———.   .   .———.———.   .———.
| 3 |     2   3 |   |   |   | 3 |   | 3 |         2   1 |
.———.   .———.———.   .———.   .———.   .———.   .———.———.   .   .
        | 3       1   2   1           1   2 |     3 |   |
.———.   .———.———.———.———.———.   .———.   .———.   .———.   .———.
|   | 2   2           2     | 2 |   |   |     2 |         3 |
.   .———.———.———.   .———.———.   .   .   .   .———.   .———.———.
| 2             |   | 2       2 | 2 | 2 |   |       | 3
.———.———.———.   .   .   .———.———.   .   .   .———.   .———.———.
  2       3 |   | 3 |   |     2     | 2 | 2     | 2         |
.———.———.———.   .———.   .   .———.———.   .———.   .———.   .———.
| 3       1       2   1 | 2 | 2   2         |     3 |   | 3
.———.———.   .———.———.   .   .   .———.———.   .   .———.   .———.
      3 |   | 3     |   |   | 2 | 3     | 2 | 2 | 2         |
.———.———.   .———.   .   .   .   .———.   .   .   .   .———.   .
|     2         |   |   | 2 |       | 2 | 3 |   | 3 |   | 3 |
.———.———.———.———.   .———.   .———.———.   .———.   .———.   .———.

init-time = 33m 6.71s, solve-time = 25m 17.22s, total-time = 58m 23.93s
nb-facts=<Fact-441890>
Quasi-Loop max length = 250
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
