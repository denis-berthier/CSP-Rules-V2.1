
(solve
7 7
. 3 1 . 2 . . 
. 3 1 2 2 . 2 
2 . 3 . 2 . . 
. 1 2 . 2 . 2 
. . . 1 3 . 2 
2 . . 2 3 2 2 
3 2 2 1 . . 2
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 1 . 2 . .
. 3 1 2 2 . 2
2 . 3 . 2 . .
. 1 2 . 2 . 2
. . . 1 3 . 2
2 . . 2 3 2 2
3 2 2 1 . . 2

start init-grid-structure 0.0100679397583008
start create-csp-variables
start create-labels 0.000642061233520508
start init-physical-csp-links 0.00662517547607422
start init-physical-non-csp-links 3.68420100212097
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.03195118904114
     start init-physical-BN-non-csp-links at local time 3.83466815948486
     start init-physical-BP-non-csp-links at local time 6.70714211463928
     end init-physical-BP-non-csp-links at local time 46.9884459972382
end init-physical-non-csp-links 50.6726751327515
start init-corner-B-c-values 50.6829640865326
start init-outer-B-candidates 50.6830170154572
start init-outer-I-candidates 50.6835610866547
start init-H-candidates 50.683876991272
start init-V-candidates 50.6852009296417
start init-P-candidates 50.6864900588989
start init-inner-I-candidates 50.6889810562134
start init-inner-N-and-B-candidates 50.6898229122162
start solution 50.6944210529327
entering BRT
w[1]-3-in-sw-corner ==> Vr7c1 = 1, Hr8c1 = 1
H-single: Hr8c1 = 1
V-single: Vr7c1 = 1
w[1]-2-in-se-corner ==> Vr6c8 = 1, Hr8c6 = 1
H-single: Hr8c6 = 1
V-single: Vr6c8 = 1
w[1]-diagonal-3s-in-{r2c2...r3c3} ==> Vr3c4 = 1, Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr4c4 = 0, Vr1c2 = 0, Hr4c4 = 0, Hr2c1 = 0
H-single: Hr2c1 = 0
H-single: Hr4c4 = 0
V-single: Vr1c2 = 0
V-single: Vr4c4 = 0
H-single: Hr2c2 = 1
H-single: Hr4c3 = 1
V-single: Vr2c2 = 1
V-single: Vr3c4 = 1
w[1]-3-in-r1c2-hit-by-verti-line-at-sw ==> Vr1c3 = 1, Hr1c2 = 1
H-single: Hr1c2 = 1
V-single: Vr1c3 = 1
V-single: Vr2c3 = 0
H-single: Hr2c3 = 0
H-single: Hr1c3 = 0
w[1]-3-in-r2c2-hit-by-verti-line-at-ne ==> Hr3c2 = 1
H-single: Hr3c2 = 1
V-single: Vr3c2 = 0
H-single: Hr3c1 = 0
w[1]-2-in-r3c1-open-ne-corner ==> Hr4c1 = 1, Vr3c1 = 1, Vr4c1 = 0
V-single: Vr4c1 = 0
V-single: Vr3c1 = 1
H-single: Hr4c1 = 1
w[1]-adjacent-1-3-on-edge-in-r1{c3 c2} ==> Vr1c4 = 0
V-single: Vr1c4 = 0
w[1]-adjacent-1-2-on-edge-backward-diagonal-2s-3-in-r7{c4 c3}...r5c5 ==> Vr5c6 = 1, Hr5c5 = 1
H-single: Hr5c5 = 1
V-single: Vr5c6 = 1
V-single: Vr4c6 = 0
H-single: Hr5c6 = 0
w[1]-3-in-r6c5-hit-by-verti-line-at-ne ==> Vr6c5 = 1, Hr7c5 = 1, Hr6c6 = 0
H-single: Hr6c6 = 0
H-single: Hr7c5 = 1
V-single: Vr6c5 = 1
V-single: Vr7c5 = 0
H-single: Hr7c4 = 0
w[1]-diagonal-3-2-in-{r5c5...r6c4}-non-closed-sw-corner ==> Vr6c4 = 1
V-single: Vr6c4 = 1
w[1]-3-in-r5c5-hit-by-verti-line-at-sw ==> Hr6c4 = 0
H-single: Hr6c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-in-r2{c3 c4}...r3c3 ==> Vr3c3 = 1
V-single: Vr3c3 = 1
V-single: Vr4c3 = 0
H-single: Hr4c2 = 0
H-single: Hr3c3 = 0
w[1]-3-in-r7c1-closed-sw-corner ==> Pr7c2 ≠ sw, Pr7c2 ≠ ne, Pr7c2 ≠ o
w[1]-3-in-r6c5-closed-sw-corner ==> Pr6c6 ≠ o
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
w[1]-3-in-r1c2-closed-se-corner ==> Pr1c2 ≠ se, Pr1c2 ≠ o
w[1]-3-in-r1c2-closed-ne-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ o
w[1]-3-in-r5c5-symmetric-se-corner ==> Hr6c5 = 1
H-single: Hr6c5 = 1
V-single: Vr6c6 = 0
V-single: Vr5c5 = 0
w[1]-2-in-r6c6-open-nw-corner ==> Hr7c6 = 1, Vr6c7 = 1, Hr7c7 = 0, Vr7c7 = 0
V-single: Vr7c7 = 0
H-single: Hr7c7 = 0
V-single: Vr6c7 = 1
H-single: Hr7c6 = 1
w[1]-2-in-r7c7-open-nw-corner ==> Hr8c7 = 1, Vr7c8 = 1
V-single: Vr7c8 = 1
H-single: Hr8c7 = 1
w[1]-3-in-r6c5-hit-by-horiz-line-at-se ==> Vr7c6 = 0
V-single: Vr7c6 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw
w[1]-3-in-r6c5-closed-nw-corner ==> Pr7c6 ≠ se, Pr7c6 ≠ nw
P-single: Pr8c8 = nw
P-single: Pr7c8 = ns
P-single: Pr6c6 = nw
P-single: Pr7c7 = nw
w[1]-1-in-r5c4-asymmetric-nw-corner ==> Pr6c5 ≠ ew, Pr6c5 ≠ ns
w[1]-1-in-r4c2-asymmetric-nw-corner ==> Pr5c3 ≠ ew, Pr5c3 ≠ ns
w[1]-1-in-r1c3-asymmetric-sw-corner ==> Pr1c4 ≠ ew, Pr1c4 ≠ se
entering level Loop with <Fact-49332>
entering level Col with <Fact-49429>
vertical-line-r7{c7 c8} ==> Ir7c7 = in
I-single: Ir7c7 = in
no-vertical-line-r7{c6 c7} ==> Ir7c6 = in
I-single: Ir7c6 = in
no-vertical-line-r7{c5 c6} ==> Ir7c5 = in
I-single: Ir7c5 = in
no-vertical-line-r7{c4 c5} ==> Ir7c4 = in
I-single: Ir7c4 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = in
I-single: Ir6c4 = in
no-horizontal-line-{r5 r6}c4 ==> Ir5c4 = in
I-single: Ir5c4 = in
no-vertical-line-r5{c4 c5} ==> Ir5c5 = in
I-single: Ir5c5 = in
vertical-line-r5{c5 c6} ==> Ir5c6 = out
I-single: Ir5c6 = out
no-horizontal-line-{r4 r5}c6 ==> Ir4c6 = out
I-single: Ir4c6 = out
no-vertical-line-r4{c5 c6} ==> Ir4c5 = out
I-single: Ir4c5 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
I-single: Ir6c6 = out
no-vertical-line-r6{c5 c6} ==> Ir6c5 = out
I-single: Ir6c5 = out
vertical-line-r6{c6 c7} ==> Ir6c7 = in
I-single: Ir6c7 = in
vertical-line-r6{c3 c4} ==> Ir6c3 = out
I-single: Ir6c3 = out
vertical-line-r7{c0 c1} ==> Ir7c1 = in
I-single: Ir7c1 = in
no-vertical-line-r4{c0 c1} ==> Ir4c1 = out
I-single: Ir4c1 = out
horizontal-line-{r3 r4}c1 ==> Ir3c1 = in
I-single: Ir3c1 = in
no-vertical-line-r3{c1 c2} ==> Ir3c2 = in
I-single: Ir3c2 = in
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = in
I-single: Ir4c2 = in
no-vertical-line-r4{c2 c3} ==> Ir4c3 = in
I-single: Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
I-single: Ir4c4 = in
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
I-single: Ir3c4 = in
vertical-line-r3{c3 c4} ==> Ir3c3 = out
I-single: Ir3c3 = out
no-horizontal-line-{r2 r3}c3 ==> Ir2c3 = out
I-single: Ir2c3 = out
no-vertical-line-r2{c2 c3} ==> Ir2c2 = out
I-single: Ir2c2 = out
vertical-line-r2{c1 c2} ==> Ir2c1 = in
I-single: Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
I-single: Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
I-single: Ir1c2 = in
vertical-line-r1{c2 c3} ==> Ir1c3 = out
I-single: Ir1c3 = out
no-vertical-line-r1{c3 c4} ==> Ir1c4 = out
I-single: Ir1c4 = out
same-colour-in-{r0 r1}c4 ==> Hr1c4 = 0
H-single: Hr1c4 = 0
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
different-colours-in-r2{c0 c1} ==> Hr2c1 = 1
V-single: Vr2c1 = 1
same-colour-in-{r4 r5}c4 ==> Hr5c4 = 0
H-single: Hr5c4 = 0
different-colours-in-r4{c4 c5} ==> Hr4c5 = 1
V-single: Vr4c5 = 1
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
V-single: Vr4c2 = 1
different-colours-in-{r7 r8}c4 ==> Hr8c4 = 1
H-single: Hr8c4 = 1
different-colours-in-{r7 r8}c5 ==> Hr8c5 = 1
H-single: Hr8c5 = 1
Starting_init_links_with_<Fact-49585>
1061 candidates, 3056 csp-links and 12071 links. Density = 2.15%
starting non trivial part of solution
Entering_level_W1_with_<Fact-79844>
whip[1]: Hr8c5{1 .} ==> Br7c5 ≠ wne, Br8c5 ≠ o, Br7c5 ≠ o, Pr8c5 ≠ o, Pr8c5 ≠ nw, Pr8c6 ≠ o, Pr8c6 ≠ ne, Br7c5 ≠ n, Br7c5 ≠ e, Br7c5 ≠ w, Br7c5 ≠ ne, Br7c5 ≠ nw, Br7c5 ≠ ew
B-single: Br8c5 = n
w[1]-1-in-r7c4-asymmetric-se-corner ==> Pr7c4 ≠ ew, Pr7c4 ≠ ns
whip[1]: Pr7c4{se .} ==> Br6c3 ≠ ne, Br6c3 ≠ ns, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br6c4 ≠ ne, Br6c4 ≠ sw, Br7c3 ≠ ne, Br7c3 ≠ sw, Br6c3 ≠ e, Br6c3 ≠ s, Br7c4 ≠ n, Br7c4 ≠ w
whip[1]: Br7c4{s .} ==> Vr7c4 ≠ 1, Pr8c4 ≠ ne, Pr8c4 ≠ nw, Pr7c4 ≠ se, Pr7c5 ≠ ew, Pr7c5 ≠ sw
V-single: Vr7c4 = 0
P-single: Pr7c4 = nw
H-single: Hr7c3 = 1
horizontal-line-{r6 r7}c3 ==> Ir7c3 = in
I-single: Ir7c3 = in
different-colours-in-{r7 r8}c3 ==> Hr8c3 = 1
H-single: Hr8c3 = 1
whip[1]: Vr7c4{0 .} ==> Br7c3 ≠ se, Br7c3 ≠ ew
whip[1]: Br7c3{nw .} ==> Pr7c3 ≠ ns, Pr7c3 ≠ sw
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ se, Br6c2 ≠ esw, Br6c2 ≠ nes, Br6c3 ≠ nw, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ w, Br7c2 ≠ ne
whip[1]: Br7c2{sw .} ==> Pr8c2 ≠ o
whip[1]: Br6c3{nes .} ==> Pr6c3 ≠ se, Pr6c4 ≠ ne, Pr6c4 ≠ ew, Nr6c3 ≠ 0, Nr6c3 ≠ 1
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ nw, Br5c3 ≠ se, Br5c3 ≠ esw, Br5c3 ≠ nes, Br6c4 ≠ nw, Br6c4 ≠ se, Br5c3 ≠ o, Br5c3 ≠ n, Br5c3 ≠ w, Br5c4 ≠ s, Br6c4 ≠ ns
B-single: Br6c4 = ew
P-single: Pr6c5 = se
whip[1]: Pr6c5{se .} ==> Br5c4 ≠ e, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br6c5 ≠ esw, Br6c5 ≠ nes
B-single: Br5c5 = nes
P-single: Pr5c6 = sw
whip[1]: Pr5c6{sw .} ==> Br5c6 ≠ ns, Br5c6 ≠ ne, Br5c6 ≠ s, Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br4c6 ≠ ns, Br4c6 ≠ w, Br4c6 ≠ s, Br4c5 ≠ ne, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br4c6 ≠ sw, Br4c6 ≠ esw, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ swn, Br5c6 ≠ wne, Br5c6 ≠ nes
whip[1]: Br5c6{esw .} ==> Pr5c7 ≠ nw, Pr5c7 ≠ ew, Pr5c7 ≠ sw, Nr5c6 ≠ 0
whip[1]: Br4c6{ne .} ==> Pr4c6 ≠ ns, Pr4c6 ≠ se, Nr4c6 ≠ 3
whip[1]: Pr4c5{sw .} ==> Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ esw, Br3c4 ≠ nes, Br3c4 ≠ o, Br3c4 ≠ n, Br3c4 ≠ w
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr5c5{ew .} ==> Br4c4 ≠ nw, Br4c4 ≠ se, Br4c4 ≠ esw, Br4c4 ≠ nes, Br4c4 ≠ o, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0
whip[1]: Br5c3{wne .} ==> Nr5c3 ≠ 0
whip[1]: Hr8c3{1 .} ==> Br8c3 ≠ o, Pr8c3 ≠ nw, Pr8c4 ≠ o, Br7c3 ≠ nw
P-single: Pr8c4 = ew
P-single: Pr8c3 = ew
H-single: Hr8c2 = 1
V-single: Vr7c3 = 0
w[1]-3-in-r7c1-hit-by-horiz-line-at-se ==> Hr7c1 = 1
H-single: Hr7c1 = 1
V-single: Vr6c1 = 0
w[1]-3-in-r7c1-closed-nw-corner ==> Pr8c2 ≠ nw
adjacent-3-2-in-r7{c1 c2}-noline-east ==> Vr6c2 = 0
V-single: Vr6c2 = 0
B-single: Br7c3 = ns
B-single: Br8c3 = n
w[1]-1-in-r7c4-asymmetric-sw-corner ==> Pr7c5 ≠ ns
P-single: Pr7c5 = ne
no-vertical-line-r6{c0 c1} ==> Ir6c1 = out
I-single: Ir6c1 = out
no-vertical-line-r6{c1 c2} ==> Ir6c2 = out
I-single: Ir6c2 = out
no-vertical-line-r7{c2 c3} ==> Ir7c2 = in
I-single: Ir7c2 = in
same-colour-in-r7{c1 c2} ==> Vr7c2 = 0
V-single: Vr7c2 = 0
P-single: Pr7c3 = ew
H-single: Hr7c2 = 1
V-single: Vr6c3 = 0
P-single: Pr8c2 = ew
whip[1]: Pr8c4{ew .} ==> Br7c4 ≠ e, Br8c4 ≠ o
B-single: Br8c4 = n
P-single: Pr8c5 = ew
B-single: Br7c4 = s
whip[1]: Pr8c5{ew .} ==> Br7c5 ≠ sw, Br7c5 ≠ esw, Br7c5 ≠ swn
whip[1]: Br7c5{nes .} ==> Nr7c5 ≠ 0
whip[1]: Pr8c3{ew .} ==> Br8c2 ≠ o, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew
B-single: Br8c2 = n
whip[1]: Hr7c1{1 .} ==> Pr7c1 ≠ ns, Pr7c2 ≠ ns, Br6c1 ≠ ne, Br6c1 ≠ nw, Br6c1 ≠ ew, Br7c1 ≠ esw
P-single: Pr7c2 = ew
P-single: Pr7c1 = se
B-single: Br7c1 = swn
P-single: Pr8c1 = ne
whip[1]: Pr7c2{ew .} ==> Br6c2 ≠ ne, Br6c2 ≠ w, Br6c2 ≠ e, Br6c2 ≠ n, Br6c2 ≠ o, Br6c1 ≠ se, Br6c2 ≠ nw, Br6c2 ≠ ew, Br6c2 ≠ sw, Br6c2 ≠ swn, Br6c2 ≠ wne, Br7c2 ≠ sw
B-single: Br7c2 = ns
whip[1]: Br6c2{ns .} ==> Pr6c2 ≠ ns, Pr6c2 ≠ se, Pr6c3 ≠ ns, Nr6c2 ≠ 0, Nr6c2 ≠ 3, Pr6c3 ≠ sw
whip[1]: Pr6c3{ew .} ==> Br6c3 ≠ esw
whip[1]: Pr6c2{ew .} ==> Hr6c1 ≠ 0, Br5c1 ≠ nw, Br5c1 ≠ ew, Br5c1 ≠ wne, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br6c1 ≠ sw, Br5c1 ≠ o, Br5c1 ≠ n, Br5c1 ≠ e, Br5c1 ≠ w, Br5c1 ≠ ne, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e, Br5c2 ≠ ne
H-single: Hr6c1 = 1
B-single: Br6c1 = ns
P-single: Pr6c1 = ne
V-single: Vr5c1 = 1
vertical-line-r5{c0 c1} ==> Ir5c1 = in
I-single: Ir5c1 = in
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
H-single: Hr5c1 = 1
V-single: Vr5c2 = 0
H-single: Hr5c2 = 0
no-horizontal-line-{r4 r5}c2 ==> Ir5c2 = in
I-single: Ir5c2 = in
different-colours-in-{r5 r6}c2 ==> Hr6c2 = 1
H-single: Hr6c2 = 1
whip[1]: Pr6c1{ne .} ==> Br5c1 ≠ s, Br5c1 ≠ ns, Br5c1 ≠ se, Br5c1 ≠ nes
whip[1]: Br5c1{swn .} ==> Pr5c1 ≠ o, Pr5c1 ≠ ne, Pr5c2 ≠ sw, Nr5c1 ≠ 0, Nr5c1 ≠ 1
whip[1]: Pr5c1{se .} ==> Br4c1 ≠ ne, Br4c1 ≠ sw, Br4c1 ≠ esw, Br4c1 ≠ swn, Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Hr5c1{1 .} ==> Pr5c1 ≠ ns, Pr5c2 ≠ o, Pr5c2 ≠ ne, Pr5c2 ≠ ns, Pr5c2 ≠ se, Br4c1 ≠ w, Br4c1 ≠ nw, Br4c1 ≠ ew, Br4c1 ≠ wne, Br5c1 ≠ sw, Br5c1 ≠ esw
P-single: Pr5c1 = se
B-single: Br5c1 = swn
N-single: Nr5c1 = 3
P-single: Pr6c2 = ew
w[1]-1-in-r4c2-asymmetric-sw-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ ns
whip[1]: Pr6c2{ew .} ==> Br6c2 ≠ s, Br5c2 ≠ w, Br5c2 ≠ nw, Br5c2 ≠ ew, Br5c2 ≠ wne
B-single: Br6c2 = ns
N-single: Nr6c2 = 2
whip[1]: Pr6c3{ew .} ==> Br5c3 ≠ sw, Br5c3 ≠ swn, Br5c3 ≠ e, Br5c3 ≠ ne
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ esw, Br3c2 ≠ nes, Br3c3 ≠ wne, Br3c3 ≠ nes, Br4c3 ≠ nw, Br4c3 ≠ se, Br3c2 ≠ o, Br3c2 ≠ n, Br3c2 ≠ w, Br4c2 ≠ n, Br4c2 ≠ e
whip[1]: Br4c2{w .} ==> Pr4c2 ≠ ne, Pr5c3 ≠ nw, Pr4c2 ≠ ew, Pr4c3 ≠ sw
P-single: Pr4c3 = ne
P-single: Pr5c3 = se
H-single: Hr5c3 = 1
V-single: Vr5c3 = 1
H-single: Hr6c3 = 0
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
I-single: Ir5c3 = out
different-colours-in-r5{c3 c4} ==> Hr5c4 = 1
V-single: Vr5c4 = 1
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ s, Br3c2 ≠ ns, Br3c2 ≠ sw, Br3c2 ≠ swn, Br4c3 ≠ ew, Br4c3 ≠ sw
whip[1]: Br4c3{ns .} ==> Pr4c4 ≠ ns, Pr4c4 ≠ se
whip[1]: Pr4c4{ew .} ==> Br3c4 ≠ sw, Br3c4 ≠ swn, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br3c4 ≠ e, Br3c4 ≠ ne, Br4c3 ≠ ne
B-single: Br4c3 = ns
whip[1]: Pr5c4{sw .} ==> Br5c3 ≠ ew, Br5c3 ≠ s
whip[1]: Br5c3{wne .} ==> Nr5c3 ≠ 1
whip[1]: Br4c4{ns .} ==> Nr4c4 ≠ 3
whip[1]: Br3c2{wne .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ ew, Nr3c2 ≠ 0
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ esw, Br2c2 ≠ nes, Br3c3 ≠ swn, Br2c3 ≠ s
B-single: Br3c3 = esw
P-single: Pr4c4 = nw
whip[1]: Pr4c4{nw .} ==> Br3c4 ≠ s, Br3c4 ≠ ns, Br4c4 ≠ ne, Br4c4 ≠ ns
whip[1]: Br4c4{s .} ==> Nr4c4 ≠ 2, Pr4c5 ≠ ew, Pr4c5 ≠ sw
N-single: Nr4c4 = 1
whip[1]: Pr4c5{ns .} ==> Vr3c5 ≠ 0, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ se
V-single: Vr3c5 = 1
vertical-line-r3{c4 c5} ==> Ir3c5 = out
I-single: Ir3c5 = out
same-colour-in-{r3 r4}c5 ==> Hr4c5 = 0
H-single: Hr4c5 = 0
P-single: Pr4c5 = ns
w[1]-1-in-r4c4-asymmetric-ne-corner ==> Pr5c4 ≠ ew
P-single: Pr5c4 = sw
whip[1]: Vr3c5{1 .} ==> Pr3c5 ≠ ne, Pr3c5 ≠ ew
whip[1]: Pr3c5{sw .} ==> Br2c4 ≠ se, Br2c5 ≠ sw
whip[1]: Br2c5{ew .} ==> Pr2c6 ≠ o, Pr2c6 ≠ ne
whip[1]: Pr2c6{sw .} ==> Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn
whip[1]: Br2c4{sw .} ==> Pr2c4 ≠ o, Pr2c4 ≠ nw
whip[1]: Hr4c5{0 .} ==> Pr4c6 ≠ ew, Br3c5 ≠ sw, Br4c5 ≠ ns
P-single: Pr5c5 = ne
B-single: Br4c5 = sw
w[1]-1-in-r5c4-symmetric-ne-corner ==> Pr6c4 ≠ sw
P-single: Pr6c4 = ns
whip[1]: Pr5c5{ne .} ==> Br5c4 ≠ n, Br4c4 ≠ s
B-single: Br4c4 = e
B-single: Br5c4 = w
whip[1]: Pr6c4{ns .} ==> Br5c3 ≠ ns, Br6c3 ≠ nes
B-single: Br6c3 = se
N-single: Nr6c3 = 2
P-single: Pr6c3 = nw
B-single: Br5c3 = wne
N-single: Nr5c3 = 3
whip[1]: Pr6c3{nw .} ==> Br5c2 ≠ s, Br5c2 ≠ ns
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 1
whip[1]: Pr4c6{ne .} ==> Br3c6 ≠ s, Br3c6 ≠ w, Br3c6 ≠ ns, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ wne, Br3c6 ≠ nes
whip[1]: Pr3c6{ew .} ==> Br2c6 ≠ sw, Br2c6 ≠ esw, Br2c6 ≠ swn, Br2c6 ≠ o, Br2c6 ≠ n, Br2c6 ≠ e, Br2c6 ≠ ne
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 1
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ ne, Br2c4 ≠ sw
whip[1]: Br2c3{w .} ==> Pr2c3 ≠ se, Pr2c4 ≠ sw
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ o, Br1c4 ≠ n, Br1c4 ≠ e, Br1c4 ≠ ne
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ wne, Br1c3 ≠ n, Br1c3 ≠ e
B-single: Br2c2 = swn
P-single: Pr4c1 = ne
P-single: Pr2c2 = se
P-single: Pr3c2 = ne
P-single: Pr3c3 = sw
w[1]-1-in-r2c3-symmetric-sw-corner ==> Pr2c4 ≠ ne
whip[1]: Pr4c1{ne .} ==> Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c1 ≠ se, Br3c1 ≠ ew, Br4c1 ≠ s, Br4c1 ≠ se
B-single: Br3c1 = sw
P-single: Pr3c1 = ns
P-single: Pr4c2 = sw
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ e, Br2c1 ≠ n, Br2c1 ≠ o, Br2c1 ≠ s, Br2c1 ≠ ne, Br2c1 ≠ ns, Br2c1 ≠ se, Br2c1 ≠ sw, Br2c1 ≠ esw, Br2c1 ≠ swn, Br2c1 ≠ nes
whip[1]: Br2c1{wne .} ==> Pr2c1 ≠ o, Pr2c1 ≠ ne, Nr2c1 ≠ 0
whip[1]: Pr2c1{se .} ==> Br1c1 ≠ swn, Br1c1 ≠ o, Br1c1 ≠ e
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ s, Br4c1 ≠ ns, Br3c2 ≠ ew, Br3c2 ≠ wne
B-single: Br4c1 = nes
N-single: Nr4c1 = 3
P-single: Pr5c2 = nw
B-single: Br4c2 = w
whip[1]: Pr5c2{nw .} ==> Br5c2 ≠ nes
B-single: Br5c2 = se
N-single: Nr5c2 = 2
whip[1]: Br3c2{ne .} ==> Nr3c2 ≠ 3
whip[1]: Pr2c2{se .} ==> Br2c1 ≠ w, Br1c1 ≠ s, Br1c1 ≠ se, Br1c1 ≠ wne, Br1c2 ≠ esw, Br1c2 ≠ swn, Br1c2 ≠ wne, Br2c1 ≠ nw, Br2c1 ≠ wne
B-single: Br2c1 = ew
N-single: Nr2c1 = 2
P-single: Pr2c1 = ns
B-single: Br1c2 = nes
P-single: Pr1c2 = ew
P-single: Pr1c3 = sw
P-single: Pr2c3 = nw
B-single: Br1c1 = nw
N-single: Nr1c1 = 2
P-single: Pr1c1 = se
w[1]-1-in-r2c3-symmetric-nw-corner ==> Pr3c4 ≠ se
P-single: Pr3c4 = ns
H-single: Hr3c4 = 0
V-single: Vr2c4 = 1
w[1]-1-in-r1c3-asymmetric-nw-corner ==> Pr2c4 ≠ ew, Pr2c4 ≠ ns
P-single: Pr4c6 = o
H-single: Hr4c6 = 0
V-single: Vr3c6 = 0
w[1]-2-in-r3c5-open-se-corner ==> Hr3c5 = 1, Vr2c5 = 0
V-single: Vr2c5 = 0
H-single: Hr3c5 = 1
w[1]-2-in-r2c4-open-se-corner ==> Hr2c4 = 1
H-single: Hr2c4 = 1
P-single: Pr3c5 = se
P-single: Pr2c4 = se
horizontal-line-{r1 r2}c4 ==> Ir2c4 = in
I-single: Ir2c4 = in
no-vertical-line-r2{c4 c5} ==> Ir2c5 = in
I-single: Ir2c5 = in
no-vertical-line-r3{c5 c6} ==> Ir3c6 = out
I-single: Ir3c6 = out
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ s
B-single: Br1c3 = w
P-single: Pr1c4 = o
whip[1]: Pr1c4{o .} ==> Br1c4 ≠ w, Br1c4 ≠ ns, Br1c4 ≠ nw, Br1c4 ≠ ew, Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ nes
whip[1]: Br1c4{se .} ==> Pr1c5 ≠ ew, Pr1c5 ≠ sw, Pr2c5 ≠ ns, Nr1c4 ≠ 3
whip[1]: Pr2c6{se .} ==> Br1c5 ≠ ne, Br1c5 ≠ ns, Br1c5 ≠ ew, Br1c5 ≠ sw, Br1c6 ≠ ne, Br2c5 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ ew, Br2c6 ≠ nes, Br1c6 ≠ o, Br1c6 ≠ n, Br1c6 ≠ e, Br2c6 ≠ w
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr2c5{ew .} ==> Br2c4 ≠ ew, Br2c5 ≠ nw, Br2c5 ≠ ew
whip[1]: Br2c5{se .} ==> Pr3c6 ≠ ns
whip[1]: Pr3c6{ew .} ==> Br3c5 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn
B-single: Br3c5 = nw
whip[1]: Br3c6{ne .} ==> Pr4c7 ≠ nw, Nr3c6 ≠ 3, Pr4c7 ≠ ew, Pr4c7 ≠ sw
whip[1]: Pr4c7{se .} ==> Br4c6 ≠ ne, Br4c6 ≠ n
whip[1]: Br4c6{e .} ==> Nr4c6 ≠ 2
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ n, Br2c3 ≠ w
B-single: Br2c3 = e
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ns, Br3c4 ≠ wne
B-single: Br3c4 = ew
N-single: Nr3c4 = 2
B-single: Br2c4 = nw
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ e
B-single: Br3c2 = ne
N-single: Nr3c2 = 2
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Pr7c5{ne .} ==> Br6c5 ≠ wne, Br7c5 ≠ s, Br7c5 ≠ se
B-single: Br6c5 = swn
P-single: Pr7c6 = ew
whip[1]: Pr7c6{ew .} ==> Br7c6 ≠ w, Br7c6 ≠ s, Br7c6 ≠ e, Br7c6 ≠ o, Br6c6 ≠ ne, Br6c6 ≠ nw, Br6c6 ≠ ew, Br6c6 ≠ sw, Br7c5 ≠ nes, Br7c6 ≠ nw, Br7c6 ≠ se, Br7c6 ≠ ew, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ wne
B-single: Br7c5 = ns
N-single: Nr7c5 = 2
diagonal-of-three-2s-in-se-corner ==> Vr4c8 = 1
V-single: Vr4c8 = 1
P-single: Pr8c6 = ew
vertical-line-r4{c7 c8} ==> Ir4c7 = in
I-single: Ir4c7 = in
different-colours-in-r4{c6 c7} ==> Hr4c7 = 1
V-single: Vr4c7 = 1
whip[1]: Vr4c8{1 .} ==> Br4c8 ≠ o, Pr4c8 ≠ o, Pr4c8 ≠ nw, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ sw
B-single: Br4c8 = w
whip[1]: Br4c7{ew .} ==> Pr4c7 ≠ se, Pr5c7 ≠ ne
whip[1]: Pr5c7{se .} ==> Br5c7 ≠ ne, Br5c7 ≠ ns
whip[1]: Pr4c7{ns .} ==> Br3c7 ≠ s, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ nes
whip[1]: Pr4c8{sw .} ==> Br3c7 ≠ nw, Br3c7 ≠ esw, Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ w
whip[1]: Br3c7{wne .} ==> Nr3c7 ≠ 0
whip[1]: Pr8c6{ew .} ==> Br7c6 ≠ ne, Br7c6 ≠ n, Br8c6 ≠ o
B-single: Br8c6 = n
whip[1]: Br7c6{nes .} ==> Nr7c6 ≠ 0, Nr7c6 ≠ 1
whip[1]: Vr4c7{1 .} ==> Br4c6 ≠ o, Pr4c7 ≠ o, Pr4c7 ≠ ne, Pr5c7 ≠ o, Pr5c7 ≠ se, Br4c7 ≠ ne, Br4c7 ≠ se
P-single: Pr6c8 = ns
H-single: Hr6c7 = 0
V-single: Vr5c8 = 1
P-single: Pr4c8 = ns
H-single: Hr4c7 = 0
V-single: Vr3c8 = 1
P-single: Pr5c8 = ns
H-single: Hr5c7 = 0
P-single: Pr5c7 = ns
V-single: Vr5c7 = 1
P-single: Pr4c7 = ns
V-single: Vr3c7 = 1
B-single: Br4c7 = ew
B-single: Br4c6 = e
N-single: Nr4c6 = 1

LOOP[14]: Hr3c5-Vr3c5-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Vr3c7- ==> Hr3c6 = 0
H-single: Hr3c6 = 0
no-horizontal-line-{r2 r3}c6 ==> Ir2c6 = out
I-single: Ir2c6 = out
vertical-line-r3{c6 c7} ==> Ir3c7 = in
I-single: Ir3c7 = in
vertical-line-r5{c6 c7} ==> Ir5c7 = in
I-single: Ir5c7 = in
different-colours-in-r2{c5 c6} ==> Hr2c6 = 1
V-single: Vr2c6 = 1
whip[1]: Pr6c8{ns .} ==> Br5c7 ≠ nw, Br5c7 ≠ se, Br5c7 ≠ sw, Br6c7 ≠ ne, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ sw
B-single: Br5c7 = ew
P-single: Pr6c7 = ns
whip[1]: Pr6c7{ns .} ==> Br5c6 ≠ w, Br5c6 ≠ sw, Br5c6 ≠ esw, Br6c6 ≠ ns, Br6c7 ≠ se
B-single: Br6c7 = ew
B-single: Br6c6 = se
B-single: Br5c6 = ew
N-single: Nr5c6 = 2
whip[1]: Vr5c8{1 .} ==> Br5c8 ≠ o
B-single: Br5c8 = w
whip[1]: Pr4c8{ns .} ==> Br3c7 ≠ sw, Br3c7 ≠ swn
whip[1]: Br3c7{wne .} ==> Pr3c8 ≠ o, Pr3c8 ≠ nw
whip[1]: Pr2c7{sw .} ==> Br1c6 ≠ nw, Br1c6 ≠ se, Br1c6 ≠ nes, Br2c7 ≠ nw, Br2c7 ≠ se, Br1c6 ≠ w
whip[1]: Vr3c8{1 .} ==> Br3c8 ≠ o
B-single: Br3c8 = w
whip[1]: Pr4c7{ns .} ==> Br3c7 ≠ e, Br3c6 ≠ n, Br3c6 ≠ o, Br3c7 ≠ ne
whip[1]: Br3c7{wne .} ==> Pr3c7 ≠ o, Pr3c7 ≠ ne, Pr3c7 ≠ nw, Pr3c7 ≠ ew, Nr3c7 ≠ 1
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ se, Br2c7 ≠ sw
whip[1]: Br2c7{ew .} ==> Pr2c8 ≠ o
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ o, Br1c7 ≠ w
whip[1]: Br1c7{nes .} ==> Nr1c7 ≠ 0
whip[1]: Br2c6{wne .} ==> Pr2c7 ≠ ns
whip[1]: Pr2c7{sw .} ==> Br1c7 ≠ wne
whip[1]: Br1c7{nes .} ==> Pr1c7 ≠ se
whip[1]: Pr1c7{sw .} ==> Br1c6 ≠ ew
whip[1]: Br3c6{ne .} ==> Nr3c6 ≠ 0
whip[1]: Hr3c6{0 .} ==> Pr3c6 ≠ ew, Pr3c7 ≠ sw, Br2c6 ≠ s, Br3c6 ≠ ne
P-single: Pr2c5 = nw
H-single: Hr2c5 = 0
V-single: Vr1c5 = 1
P-single: Pr1c5 = se
H-single: Hr1c5 = 1
P-single: Pr2c6 = se
H-single: Hr2c6 = 1
V-single: Vr1c6 = 0
P-single: Pr3c6 = nw
B-single: Br3c6 = e
N-single: Nr3c6 = 1

LOOP[16]: Hr2c6-Vr2c6-Hr3c5-Vr3c5-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Vr3c7- ==> Vr2c7 = 0
V-single: Vr2c7 = 0
no-vertical-line-r2{c6 c7} ==> Ir2c7 = out
I-single: Ir2c7 = out
horizontal-line-{r1 r2}c6 ==> Ir1c6 = in
I-single: Ir1c6 = in
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
I-single: Ir1c5 = in
different-colours-in-{r0 r1}c6 ==> Hr1c6 = 1
H-single: Hr1c6 = 1
same-colour-in-r2{c7 c8} ==> Vr2c8 = 0
V-single: Vr2c8 = 0
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
H-single: Hr3c7 = 1

LOOP[60]: Hr1c6-Hr1c5-Vr1c5-Hr2c4-Vr2c4-Vr3c4-Hr4c3-Vr3c3-Hr3c2-Vr2c2-Hr2c2-Vr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Hr4c1-Vr4c2-Hr5c1-Vr5c1-Hr6c1-Hr6c2-Vr5c3-Hr5c3-Vr5c4-Vr6c4-Hr7c3-Hr7c2-Hr7c1-Vr7c1-Hr8c1-Hr8c2-Hr8c3-Hr8c4-Hr8c5-Hr8c6-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Vr4c8-Vr3c8-Hr3c7-Vr3c7-Vr4c7-Vr5c7-Vr6c7-Hr7c6-Hr7c5-Vr6c5-Hr6c5-Vr5c6-Hr5c5-Vr4c5-Vr3c5-Hr3c5-Vr2c6-Hr2c6- ==> Vr1c7 = 0
V-single: Vr1c7 = 0
no-vertical-line-r1{c6 c7} ==> Ir1c7 = in
I-single: Ir1c7 = in
different-colours-in-r1{c7 c8} ==> Hr1c8 = 1
V-single: Vr1c8 = 1
different-colours-in-{r1 r2}c7 ==> Hr2c7 = 1
H-single: Hr2c7 = 1

LOOP[62]: Vr1c8-Hr2c7-Hr2c6-Vr2c6-Hr3c5-Vr3c5-Vr4c5-Hr5c5-Vr5c6-Hr6c5-Vr6c5-Hr7c5-Hr7c6-Vr6c7-Vr5c7-Vr4c7-Vr3c7-Hr3c7-Vr3c8-Vr4c8-Vr5c8-Vr6c8-Vr7c8-Hr8c7-Hr8c6-Hr8c5-Hr8c4-Hr8c3-Hr8c2-Hr8c1-Vr7c1-Hr7c1-Hr7c2-Hr7c3-Vr6c4-Vr5c4-Hr5c3-Vr5c3-Hr6c2-Hr6c1-Vr5c1-Hr5c1-Vr4c2-Hr4c1-Vr3c1-Vr2c1-Vr1c1-Hr1c1-Hr1c2-Vr1c3-Hr2c2-Vr2c2-Hr3c2-Vr3c3-Hr4c3-Vr3c4-Vr2c4-Hr2c4-Vr1c5-Hr1c5-Hr1c6- ==> Hr1c7 = 1
H-single: Hr1c7 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXOOXXX
XOOXXOO
XXOXOOX
OXXXOOX
XXOXXOX
OOOXOOX
XXXXXXX

.———.———.   .   .———.———.———.
|     3 | 1     | 2         |
.   .———.   .———.   .———.———.
|   | 3   1 | 2   2 |     2
.   .———.   .   .———.   .———.
| 2     | 3 |   | 2     |   |
.———.   .———.   .   .   .   .
    | 1   2     | 2     | 2 |
.———.   .———.   .———.   .   .
|       |   | 1   3 |   | 2 |
.———.———.   .   .———.   .   .
  2         | 2 | 3   2 | 2 |
.———.———.———.   .———.———.   .
| 3   2   2   1           2 |
.———.———.———.———.———.———.———.

init-time = 50.69s, solve-time = 20.22s, total-time = 1m 10.92s
nb-facts=<Fact-83799>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
