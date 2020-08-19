
(solve
10 10
2 1 2 . 2 1 . . 1 2
1 . . . 1 1 . . . 2
2 . 1 2 1 1 1 1 . 2
. . 2 . . . . 1 . .
1 1 1 . . . . 2 1 1
1 1 1 . . . . 2 1 1
. . 1 . . . . 2 . .
2 . 2 1 2 1 1 1 . 3
2 . . . 2 3 . . . 2
2 2 2 . 2 2 . 2 2 2
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 1 2 . 2 1 . . 1 2
1 . . . 1 1 . . . 2
2 . 1 2 1 1 1 1 . 2
. . 2 . . . . 1 . .
1 1 1 . . . . 2 1 1
1 1 1 . . . . 2 1 1
. . 1 . . . . 2 . .
2 . 2 1 2 1 1 1 . 3
2 . . . 2 3 . . . 2
2 2 2 . 2 2 . 2 2 2

start init-grid-structure 4.10079956054688e-05
start create-csp-variables
start create-labels 0.00200295448303223
start init-physical-csp-links 0.0145630836486816
start init-physical-non-csp-links 10.6354801654816
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 2.65107297897339
     start init-physical-BN-non-csp-links at local time 9.09558486938477
     start init-physical-BP-non-csp-links at local time 18.917240858078
     end init-physical-BP-non-csp-links at local time 194.639081954956
end init-physical-non-csp-links 205.274614095688
start init-corner-B-c-values 205.27498793602
start init-outer-B-candidates 205.275057077408
start init-outer-I-candidates 205.275964021683
start init-H-candidates 205.27649307251
start init-V-candidates 205.280740022659
start init-P-candidates 205.284661054611
start init-inner-I-candidates 205.291672945023
start init-inner-N-and-B-candidates 205.294416904449
start solution 205.30727314949
entering BRT
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-2-in-sw-corner ==> Vr9c1 = 1, Hr11c2 = 1
w[1]-2-in-ne-corner ==> Vr2c11 = 1, Hr1c9 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-se ==> Vr8c10 = 1, Hr8c10 = 1
w[1]-adjacent-1-1-on-edge-in-c10{r5 r6} ==> Hr6c10 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r5 r6} ==> Hr6c1 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r6{c9 c10} ==> Vr6c10 = 0
w[1]-diagonal-1-1-in-{r6c10...r5c9}-with-no-nw-inner-sides ==> Hr6c9 = 0, Vr5c10 = 0
w[1]-diagonal-1-1-in-{r5c9...r4c8}-with-no-se-outer-sides ==> Hr4c8 = 0, Vr4c8 = 0
w[1]-diagonal-1-1-in-{r4c8...r3c7}-with-no-nw-inner-sides ==> Hr4c7 = 0, Vr3c8 = 0
w[1]-diagonal-1-1-in-{r3c7...r2c6}-with-no-se-outer-sides ==> Hr2c6 = 0, Vr2c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c5 c6} ==> Vr3c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c2{r5 r6} ==> Hr6c2 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r5 r6} ==> Hr6c3 = 0
w[1]-3-in-r8c10-closed-nw-corner ==> Pr9c11 ≠ nw, Pr9c11 ≠ o
w[3]-diagonal-1-1-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 0
w[1]-2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1
P-single: Pr1c1 = se
entering level Loop with <Fact-92778>
entering level Col with <Fact-92856>
vertical-line-r9{c10 c11} ==> Ir9c10 = in
vertical-line-r2{c10 c11} ==> Ir2c10 = in
vertical-line-r9{c0 c1} ==> Ir9c1 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
horizontal-line-{r0 r1}c9 ==> Ir1c9 = in
Starting_init_links_with_<Fact-92866>
2465 candidates, 7625 csp-links and 33391 links. Density = 1.1%
starting non trivial part of solution
Entering_level_W1_with_<Fact-174903>
whip[1]: Pr1c1{se .} ==> Br1c1 ≠ se
B-single: Br1c1 = nw
P-single: Pr1c2 = ew
P-single: Pr2c1 = ns
w[1]-1-in-r2c1-asymmetric-nw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ew, Pr3c2 ≠ ns, Pr3c2 ≠ ne
w[1]-1-in-r1c2-asymmetric-nw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ew, Pr2c3 ≠ ns, Pr2c3 ≠ ne
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ e
B-single: Br1c2 = n
H-single: Hr2c2 = 0
V-single: Vr1c3 = 0
w[1]-diagonal-1-1-in-{r1c2...r2c1}-with-no-sw-inner-sides ==> Vr2c2 = 0
P-single: Pr1c3 = ew
H-single: Hr1c3 = 1
P-single: Pr2c2 = o
w[1]-1-in-r2c1-symmetric-ne-corner ==> Pr3c1 ≠ ne, Pr3c1 ≠ o
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
whip[1]: Hr2c2{0 .} ==> Br2c2 ≠ n, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw
whip[1]: Vr2c2{0 .} ==> Pr3c2 ≠ nw, Br2c1 ≠ e, Br2c2 ≠ w, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw
whip[1]: Br2c2{se .} ==> Nr2c2 ≠ 3
whip[1]: Pr3c2{se .} ==> Hr3c1 ≠ 1, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ nes, Br2c1 ≠ s, Br3c2 ≠ n, Br3c2 ≠ w
H-single: Hr3c1 = 0
P-single: Pr3c1 = ns
V-single: Vr3c1 = 1
vertical-line-r3{c0 c1} ==> Ir3c1 = in
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ n, Br3c1 ≠ se
B-single: Br2c1 = w
whip[1]: Br3c1{sw .} ==> Pr4c1 ≠ se
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ o, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ se
whip[1]: Br1c3{ns .} ==> Pr1c4 ≠ se
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Pr2c4{sw .} ==> Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ o, Br2c4 ≠ e, Br2c4 ≠ s
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr2c3{se .} ==> Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ w
whip[1]: Hr6c3{0 .} ==> Br6c3 ≠ n, Pr6c3 ≠ ne, Pr6c3 ≠ se, Pr6c3 ≠ ew, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Br5c3 ≠ s
whip[1]: Br5c3{w .} ==> Pr5c3 ≠ se, Pr5c4 ≠ sw
whip[1]: Br6c3{w .} ==> Pr7c3 ≠ ne, Pr7c4 ≠ nw
whip[1]: Hr6c2{0 .} ==> Br6c2 ≠ n, Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew, Pr6c3 ≠ nw, Pr6c3 ≠ sw, Br5c2 ≠ s
whip[1]: Br5c2{w .} ==> Pr5c2 ≠ se, Pr5c3 ≠ sw
whip[1]: Br6c2{w .} ==> Pr7c2 ≠ ne, Pr7c3 ≠ nw
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ w, Pr3c6 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ sw, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Br3c5 ≠ e
whip[1]: Br3c5{w .} ==> Pr4c5 ≠ ne, Pr3c5 ≠ se
whip[1]: Br3c6{s .} ==> Pr3c7 ≠ sw, Pr4c7 ≠ nw
whip[1]: Vr2c6{0 .} ==> Br2c6 ≠ w, Pr2c6 ≠ ns, Pr2c6 ≠ se, Pr2c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ nw, Br2c5 ≠ e
whip[1]: Br2c5{w .} ==> Pr3c5 ≠ ne, Pr2c5 ≠ se
whip[1]: Br2c6{s .} ==> Pr2c7 ≠ sw, Pr3c7 ≠ nw
whip[1]: Hr2c6{0 .} ==> Br2c6 ≠ n, Pr2c6 ≠ ne, Pr2c6 ≠ ew, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Br1c6 ≠ s
w[1]-1-in-r2c6-symmetric-nw-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ o
w[1]-1-in-r3c7-asymmetric-nw-corner ==> Pr4c8 ≠ sw, Pr4c8 ≠ ew, Pr4c8 ≠ ns, Pr4c8 ≠ ne
w[1]-1-in-r4c8-symmetric-nw-corner ==> Pr5c9 ≠ se, Pr5c9 ≠ nw, Pr5c9 ≠ o
w[1]-1-in-r5c9-asymmetric-nw-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ew, Pr6c10 ≠ ns, Pr6c10 ≠ ne
w[1]-1-in-r6c10-symmetric-nw-corner ==> Pr7c11 ≠ nw, Pr7c11 ≠ o
whip[1]: Pr7c11{sw .} ==> Vr7c11 ≠ 0, Br7c10 ≠ nw, Br7c10 ≠ sw, Br7c10 ≠ swn, Br6c10 ≠ n, Br6c10 ≠ w, Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ s, Br7c10 ≠ w, Br7c10 ≠ ns
V-single: Vr7c11 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-ne ==> Hr9c10 = 1
w[1]-3-in-r8c10-closed-sw-corner ==> Pr8c11 ≠ sw, Pr8c11 ≠ o
no-vertical-line-r9{c9 c10} ==> Ir9c9 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
horizontal-line-{r7 r8}c10 ==> Ir8c10 = out
same-colour-in-{r9 r10}c9 ==> Hr10c9 = 0
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w, Pr8c11 ≠ ns, Pr9c11 ≠ ns, Br8c10 ≠ esw, Br8c10 ≠ wne, Br8c10 ≠ nes
P-single: Pr11c10 = ew
H-single: Hr11c10 = 1
V-single: Vr10c10 = 0
w[1]-2-in-r10c9-open-ne-corner ==> Vr10c9 = 1, Hr11c8 = 0
P-single: Pr11c11 = nw
V-single: Vr10c11 = 1
P-single: Pr11c9 = ne
P-single: Pr10c11 = ns
H-single: Hr10c10 = 0
P-single: Pr10c10 = o
P-single: Pr9c11 = sw
P-single: Pr8c11 = nw
B-single: Br8c10 = swn
P-single: Pr8c10 = se
P-single: Pr9c10 = ne
B-single: Br8c11 = o
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = in
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ ne, Br11c10 ≠ o, Br11c9 ≠ o, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c10 ≠ nw
B-single: Br10c10 = se
B-single: Br11c9 = n
B-single: Br11c10 = n
whip[1]: Vr10c9{1 .} ==> Pr10c9 ≠ ew, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ sw, Br10c9 ≠ ns
B-single: Br10c9 = sw
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ esw, Br9c8 ≠ nes, Br9c9 ≠ se, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ nes, Br9c8 ≠ o, Br9c8 ≠ n, Br9c8 ≠ w, Br9c9 ≠ s, Br9c9 ≠ ns
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 0
whip[1]: Hr11c8{0 .} ==> Br11c8 ≠ n, Pr11c8 ≠ ew, Br10c8 ≠ se
B-single: Br11c8 = o
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Vr10c11{1 .} ==> Br10c11 ≠ o
B-single: Br10c11 = w
whip[1]: Pr10c11{ns .} ==> Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ sw
whip[1]: Pr10c10{o .} ==> Br9c9 ≠ e, Br9c9 ≠ ne, Br9c9 ≠ ew, Br9c9 ≠ wne, Br9c10 ≠ ew
B-single: Br9c10 = ne
whip[1]: Br9c9{nw .} ==> Nr9c9 ≠ 3
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ e, Br7c10 ≠ ne, Br7c10 ≠ ew, Br7c10 ≠ wne
whip[1]: Br7c10{nes .} ==> Pr7c10 ≠ se, Nr7c10 ≠ 0, Nr7c10 ≠ 1
whip[1]: Pr8c10{se .} ==> Br8c9 ≠ w, Br8c9 ≠ s, Br8c9 ≠ n, Br8c9 ≠ o, Br7c9 ≠ s, Br7c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c10 ≠ esw, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ sw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c9 ≠ nes
whip[1]: Br8c9{esw .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Nr8c9 ≠ 0
whip[1]: Br7c10{nes .} ==> Pr7c10 ≠ ns, Pr7c10 ≠ sw
whip[1]: Br7c9{nw .} ==> Nr7c9 ≠ 3
whip[1]: Pr9c10{ne .} ==> Br9c9 ≠ n, Br8c9 ≠ se, Br8c9 ≠ esw, Br9c9 ≠ nw
whip[1]: Br9c9{w .} ==> Pr9c9 ≠ ne, Nr9c9 ≠ 2, Pr9c9 ≠ se, Pr9c9 ≠ ew
whip[1]: Br8c9{ew .} ==> Nr8c9 ≠ 3
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ n, Br9c7 ≠ w
whip[1]: Br9c7{wne .} ==> Nr9c7 ≠ 0
whip[1]: Br6c10{s .} ==> Pr7c10 ≠ ne, Pr6c11 ≠ nw, Pr6c11 ≠ sw, Pr6c10 ≠ se, Pr7c10 ≠ nw
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ e
whip[1]: Br6c9{w .} ==> Pr7c9 ≠ ne, Pr6c9 ≠ se
whip[1]: Pr6c10{nw .} ==> Br5c9 ≠ e, Br5c9 ≠ s, Br5c10 ≠ s
whip[1]: Br5c10{w .} ==> Pr5c11 ≠ sw, Pr5c10 ≠ se
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ ns, Br4c10 ≠ sw, Br4c10 ≠ swn, Br4c10 ≠ s
whip[1]: Br5c9{w .} ==> Pr5c10 ≠ ns, Pr6c9 ≠ ne, Pr6c10 ≠ nw, Pr5c10 ≠ sw, Pr6c9 ≠ ew
P-single: Pr6c10 = o
w[1]-1-in-r5c10-symmetric-sw-corner ==> Pr5c11 ≠ o
w[1]-1-in-r6c9-symmetric-ne-corner ==> Pr7c9 ≠ sw, Pr7c9 ≠ o
w[1]-1-in-r8c7-asymmetric-ne-corner ==> Pr9c7 ≠ ew, Pr9c7 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ ns
w[1]-3-in-r9c6-symmetric-ne-corner ==> Vr9c7 = 1, Hr9c6 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r8 r9}c6 ==> Vr8c6 = 0, Hr8c6 = 0
w[1]-3-in-r9c6-closed-ne-corner ==> Pr10c6 ≠ sw, Pr10c6 ≠ ne, Pr10c6 ≠ o
whip[1]: Pr6c10{o .} ==> Br5c10 ≠ w, Br6c9 ≠ n
whip[1]: Vr9c7{1 .} ==> Pr9c7 ≠ o, Pr9c7 ≠ ne, Pr10c7 ≠ o, Pr10c7 ≠ se, Pr10c7 ≠ ew, Pr10c7 ≠ sw, Br9c6 ≠ swn, Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ ne, Br9c7 ≠ ns
P-single: Pr9c7 = sw
w[1]-1-in-r8c6-asymmetric-se-corner ==> Pr8c6 ≠ ew, Pr8c6 ≠ ns, Pr8c6 ≠ ne
whip[1]: Pr9c7{sw .} ==> Br8c7 ≠ w, Br8c7 ≠ s, Br8c6 ≠ w, Br8c6 ≠ e, Br8c6 ≠ n, Br9c6 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne
B-single: Br8c6 = s
whip[1]: Pr10c5{ew .} ==> Br9c5 ≠ sw, Br10c4 ≠ sw, Br10c4 ≠ wne, Br10c4 ≠ nes, Br9c5 ≠ ne, Br10c4 ≠ o, Br10c4 ≠ s, Br10c4 ≠ w, Br10c4 ≠ ne
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 0
whip[1]: Pr8c6{nw .} ==> Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ nes, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br7c5 ≠ e, Br7c5 ≠ s, Br7c6 ≠ s
whip[1]: Pr8c7{ne .} ==> Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ wne, Br7c7 ≠ nes
whip[1]: Br9c7{sw .} ==> Pr9c8 ≠ nw, Pr9c8 ≠ ew, Pr9c8 ≠ sw, Nr9c7 ≠ 1, Nr9c7 ≠ 3
N-single: Nr9c7 = 2
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ ne, Br10c7 ≠ nw
whip[1]: Br10c6{sw .} ==> Pr11c6 ≠ o
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ nw
whip[1]: Br10c5{sw .} ==> Pr10c5 ≠ se
whip[1]: Pr10c5{ew .} ==> Br9c4 ≠ nw, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ w
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Pr11c5{ew .} ==> Br11c4 ≠ o, Hr11c4 ≠ 0, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c5 ≠ sw, Br10c4 ≠ n, Br10c4 ≠ e, Br10c5 ≠ ne
H-single: Hr11c4 = 1
B-single: Br11c4 = n
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ esw, Br9c2 ≠ nes, Br10c3 ≠ nw, Br10c3 ≠ se, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ w
whip[1]: Br9c2{wne .} ==> Nr9c2 ≠ 0
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes
whip[1]: Pr9c5{ew .} ==> Br9c4 ≠ wne, Br9c4 ≠ nes, Br9c4 ≠ ne
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ sw, Br7c8 ≠ ne
whip[1]: Pr5c11{nw .} ==> Vr4c11 ≠ 0, Br4c10 ≠ w, Br4c10 ≠ nw, Br4c10 ≠ o, Br4c10 ≠ n
V-single: Vr4c11 = 1
vertical-line-r4{c10 c11} ==> Ir4c10 = in
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o, Pr4c11 ≠ o, Pr4c11 ≠ nw
B-single: Br4c11 = w
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ nes, Br3c10 ≠ nw, Br3c10 ≠ se, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ w
whip[1]: Br2c9{wne .} ==> Nr2c9 ≠ 0
whip[1]: Br4c10{nes .} ==> Nr4c10 ≠ 0
whip[1]: Pr5c9{sw .} ==> Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Br4c8{s .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr4c8 ≠ se, Pr4c9 ≠ nw, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Pr5c8 ≠ nw
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c7 ≠ e, Br4c7 ≠ ne
whip[1]: Pr4c9{se .} ==> Br3c8 ≠ s
whip[1]: Br3c8{w .} ==> Pr3c8 ≠ se, Pr3c9 ≠ sw
whip[1]: Pr4c8{nw .} ==> Br3c7 ≠ e, Br3c7 ≠ s
whip[1]: Br3c7{w .} ==> Pr3c8 ≠ ns, Pr4c7 ≠ ne, Pr4c8 ≠ nw, Pr3c8 ≠ sw, Pr4c7 ≠ se, Pr4c7 ≠ ew
P-single: Pr4c8 = o
w[1]-1-in-r3c8-symmetric-sw-corner ==> Pr3c9 ≠ ne, Pr3c9 ≠ o
whip[1]: Pr4c8{o .} ==> Br3c8 ≠ w, Br4c7 ≠ n, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ swn
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 3
whip[1]: Pr3c9{ew .} ==> Br2c9 ≠ sw, Br2c9 ≠ swn, Br2c9 ≠ e, Br2c9 ≠ ne
whip[1]: Pr4c7{sw .} ==> Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ n, Br4c6 ≠ ns
whip[1]: Pr3c7{ew .} ==> Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ e, Br2c7 ≠ ne
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Pr1c6{ew .} ==> Hr1c6 ≠ 0, Br1c5 ≠ sw, Br1c5 ≠ ne, Br1c6 ≠ e, Br1c6 ≠ w
H-single: Hr1c6 = 1
B-single: Br1c6 = n
V-single: Vr1c6 = 0
V-single: Vr1c7 = 0
w[1]-diagonal-1-1-in-{r1c6...r2c5}-with-no-sw-inner-sides ==> Hr2c5 = 0
w[1]-2-in-r1c5-open-se-corner ==> Hr1c5 = 1, Vr1c5 = 1, Hr1c4 = 0
P-single: Pr1c5 = se
P-single: Pr1c6 = ew
P-single: Pr1c7 = ew
H-single: Hr1c7 = 1
P-single: Pr2c6 = o
w[1]-1-in-r2c5-symmetric-ne-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ o
w[1]-1-in-r5c2-asymmetric-ne-corner ==> Pr6c2 ≠ nw, Pr6c2 ≠ ns
w[1]-1-in-r6c1-symmetric-ne-corner ==> Pr7c1 ≠ ne, Pr7c1 ≠ o
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
vertical-line-r1{c4 c5} ==> Ir1c4 = out
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Vr1c6{0 .} ==> Br1c5 ≠ se, Br1c5 ≠ ew
whip[1]: Vr1c7{0 .} ==> Br1c7 ≠ w, Br1c7 ≠ nw, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ wne
whip[1]: Hr2c5{0 .} ==> Pr2c5 ≠ ew, Br1c5 ≠ ns, Br2c5 ≠ n
B-single: Br1c5 = nw
whip[1]: Pr2c5{nw .} ==> Br1c4 ≠ w, Br1c4 ≠ ns, Br1c4 ≠ sw, Br2c4 ≠ w, Br2c4 ≠ ne, Br2c4 ≠ sw, Br2c4 ≠ nes, Br1c4 ≠ n
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 1
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s, Pr1c4 ≠ ew, Br1c4 ≠ ne, Br1c4 ≠ nes
P-single: Pr2c3 = o
H-single: Hr2c3 = 0
V-single: Vr2c3 = 0
P-single: Pr1c4 = sw
B-single: Br0c4 = o
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ ns, Br2c2 ≠ e, Br2c2 ≠ se, Br2c3 ≠ nw, Br2c3 ≠ swn, Br2c3 ≠ wne
B-single: Br1c3 = ne
whip[1]: Br2c3{se .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Nr2c3 ≠ 3
whip[1]: Br2c2{s .} ==> Nr2c2 ≠ 2
whip[1]: Pr1c7{ew .} ==> Br1c7 ≠ s, Br1c7 ≠ e, Br1c7 ≠ o, Br1c7 ≠ se
whip[1]: Br1c7{nes .} ==> Pr1c8 ≠ o, Pr1c8 ≠ se, Nr1c7 ≠ 0
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ o, Br1c8 ≠ e, Br1c8 ≠ s
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Pr7c1{se .} ==> Vr7c1 ≠ 0, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ se, Br7c1 ≠ nes, Br6c1 ≠ n, Br6c1 ≠ e, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e, Br7c1 ≠ s
V-single: Vr7c1 = 1
vertical-line-r7{c0 c1} ==> Ir7c1 = in
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o, Pr8c1 ≠ o, Pr8c1 ≠ se
B-single: Br7c0 = e
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ nw, Br8c1 ≠ se, Br9c2 ≠ swn, Br9c2 ≠ wne, Br9c2 ≠ e, Br9c2 ≠ s
whip[1]: Br9c2{sw .} ==> Nr9c2 ≠ 1, Nr9c2 ≠ 3
N-single: Nr9c2 = 2
square-of-2s-se-of-r9c1 ==> Pr10c2 ≠ o
whip[1]: Pr9c1{ns .} ==> Vr8c1 ≠ 0, Br8c1 ≠ ne, Br8c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se
V-single: Vr8c1 = 1
vertical-line-r8{c0 c1} ==> Ir8c1 = in
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
P-single: Pr9c1 = ns
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o, Pr8c1 ≠ ne
P-single: Pr8c1 = ns
B-single: Br8c0 = e
whip[1]: Pr8c1{ns .} ==> Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ swn
whip[1]: Br7c1{wne .} ==> Pr8c2 ≠ nw, Pr8c2 ≠ ew, Nr7c1 ≠ 0
whip[1]: Pr8c2{se .} ==> Vr8c2 ≠ 0, Br7c2 ≠ ne, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br8c1 ≠ sw, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ nes, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ e, Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ e, Br8c2 ≠ s
V-single: Vr8c2 = 1
B-single: Br8c1 = ew
vertical-line-r8{c1 c2} ==> Ir8c2 = out
whip[1]: Pr9c2{ns .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 0
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0
whip[1]: Pr11c3{ew .} ==> Br11c3 ≠ o, Hr11c3 ≠ 0, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ ne
H-single: Hr11c3 = 1
B-single: Br11c3 = n
P-single: Pr11c4 = ew
V-single: Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
same-colour-in-r10{c2 c3} ==> Vr10c3 = 0
P-single: Pr11c3 = ew
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ esw, Br10c4 ≠ swn
whip[1]: Br10c4{se .} ==> Pr10c4 ≠ ns, Pr10c4 ≠ se, Nr10c4 ≠ 3
N-single: Nr10c4 = 2
whip[1]: Pr10c4{ew .} ==> Hr10c3 ≠ 0, Br9c3 ≠ nw, Br9c3 ≠ ew, Br9c3 ≠ wne, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br10c3 ≠ sw, Br9c3 ≠ o, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ w, Br9c3 ≠ ne, Br9c4 ≠ e
H-single: Hr10c3 = 1
B-single: Br10c3 = ns
horizontal-line-{r9 r10}c3 ==> Ir9c3 = out
whip[1]: Pr10c3{ew .} ==> Br10c2 ≠ ew, Br10c2 ≠ ne
whip[1]: Br9c4{ew .} ==> Nr9c4 ≠ 3
whip[1]: Br9c3{nes .} ==> Nr9c3 ≠ 0
whip[1]: Pr11c3{ew .} ==> Br11c2 ≠ o
B-single: Br11c2 = n
whip[1]: Pr10c2{sw .} ==> Br9c2 ≠ ew, Br9c2 ≠ ns
whip[1]: Pr9c4{sw .} ==> Br8c3 ≠ nw, Br8c3 ≠ se, Br9c4 ≠ se, Br9c4 ≠ s
whip[1]: Br9c4{ew .} ==> Pr9c5 ≠ ne, Pr10c5 ≠ nw, Nr9c4 ≠ 1
N-single: Nr9c4 = 2
P-single: Pr8c6 = nw
H-single: Hr8c5 = 1
V-single: Vr7c6 = 1
whip[1]: Pr8c6{nw .} ==> Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br7c5 ≠ n, Br7c5 ≠ o, Br7c5 ≠ w, Br7c5 ≠ nw, Br7c6 ≠ ne, Br8c5 ≠ sw
whip[1]: Br8c5{nw .} ==> Pr8c5 ≠ ns, Pr8c5 ≠ sw
whip[1]: Br7c6{wne .} ==> Pr7c6 ≠ o, Pr7c6 ≠ ne, Pr7c6 ≠ nw, Pr7c6 ≠ ew, Nr7c6 ≠ 0
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn
whip[1]: Br7c5{nes .} ==> Pr7c5 ≠ se, Nr7c5 ≠ 0, Nr7c5 ≠ 1
whip[1]: Pr11c6{ew .} ==> Br11c6 ≠ o, Hr11c6 ≠ 0, Br10c5 ≠ se, Br10c6 ≠ nw, Br10c6 ≠ ew
H-single: Hr11c6 = 1
B-single: Br11c6 = n
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ esw, Br10c7 ≠ o, Br10c7 ≠ n
whip[1]: Br10c7{nes .} ==> Pr10c8 ≠ ew, Nr10c7 ≠ 0
whip[1]: Pr10c8{sw .} ==> Br9c8 ≠ s, Br9c8 ≠ ns
whip[1]: Br10c6{sw .} ==> Pr10c6 ≠ se
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ nw
whip[1]: Br9c5{ew .} ==> Pr9c5 ≠ se
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ n, Br8c4 ≠ w
whip[1]: Br8c4{s .} ==> Hr8c4 ≠ 1, Vr8c4 ≠ 1, Pr8c4 ≠ ne, Pr9c4 ≠ ne, Pr9c4 ≠ ns, Pr8c4 ≠ sw, Pr8c5 ≠ ew, Pr9c5 ≠ nw
V-single: Vr8c4 = 0
H-single: Hr8c4 = 0
w[1]-diagonal-1-1-in-{r8c4...r7c3}-with-no-nw-inner-sides ==> Hr8c3 = 0, Vr7c4 = 0
w[1]-2-in-r8c3-open-ne-corner ==> Hr9c3 = 1, Vr8c3 = 1, Hr9c2 = 0, Vr9c3 = 0
w[1]-2-in-r9c2-open-ne-corner ==> Hr10c2 = 1, Vr9c2 = 1, Hr10c1 = 0, Vr10c2 = 0
w[1]-2-in-r10c1-open-ne-corner ==> Hr11c1 = 1, Vr10c1 = 1
w[1]-diagonal-1-1-in-{r7c3...r6c2}-with-no-se-outer-sides ==> Vr6c2 = 0
w[1]-diagonal-1-1-in-{r6c1...r5c2}-with-no-ne-inner-sides ==> Vr5c2 = 0
P-single: Pr9c2 = ns
P-single: Pr10c1 = ns
P-single: Pr10c3 = ew
P-single: Pr11c2 = ew
P-single: Pr11c1 = ne
P-single: Pr10c2 = ne
P-single: Pr11c7 = ew
H-single: Hr11c7 = 1
V-single: Vr10c7 = 0
P-single: Pr9c3 = ne
P-single: Pr8c4 = o
w[1]-1-in-r7c3-symmetric-se-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ o
w[1]-1-in-r6c2-asymmetric-se-corner ==> Pr6c2 ≠ sw
P-single: Pr6c2 = o
w[1]-1-in-r5c1-symmetric-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
vertical-line-r9{c1 c2} ==> Ir9c2 = out
vertical-line-r8{c2 c3} ==> Ir8c3 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
whip[1]: Vr8c4{0 .} ==> Br8c3 ≠ ne, Br8c3 ≠ ew
whip[1]: Hr8c4{0 .} ==> Br7c4 ≠ s, Br7c4 ≠ ns, Br7c4 ≠ sw, Br7c4 ≠ swn
whip[1]: Hr8c3{0 .} ==> Pr8c3 ≠ ne, Pr8c3 ≠ ew, Br7c3 ≠ s, Br8c3 ≠ ns
B-single: Br8c3 = sw
whip[1]: Br7c3{w .} ==> Pr7c4 ≠ sw
whip[1]: Pr8c3{sw .} ==> Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ nes, Br8c2 ≠ nw, Br8c2 ≠ sw, Br8c2 ≠ swn, Br7c2 ≠ w, Br8c2 ≠ w
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 1
whip[1]: Vr7c4{0 .} ==> Pr7c4 ≠ ns, Pr7c4 ≠ se, Br7c3 ≠ e, Br7c4 ≠ w, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ wne
whip[1]: Br7c4{ne .} ==> Nr7c4 ≠ 3
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ wne, Br6c4 ≠ w
whip[1]: Hr9c3{1 .} ==> Br9c3 ≠ s, Br9c3 ≠ se, Br9c3 ≠ sw, Br9c3 ≠ esw
whip[1]: Br9c3{nes .} ==> Nr9c3 ≠ 1
whip[1]: Hr9c2{0 .} ==> Br8c2 ≠ esw, Br9c2 ≠ ne
B-single: Br9c2 = sw
whip[1]: Vr9c3{0 .} ==> Br9c3 ≠ swn
whip[1]: Hr10c2{1 .} ==> Br10c2 ≠ sw
B-single: Br10c2 = ns
whip[1]: Vr9c2{1 .} ==> Br9c1 ≠ sw
B-single: Br9c1 = ew
whip[1]: Hr10c1{0 .} ==> Br10c1 ≠ ne
B-single: Br10c1 = sw
whip[1]: Hr11c1{1 .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Vr6c2{0 .} ==> Pr7c2 ≠ ns, Pr7c2 ≠ nw, Br6c2 ≠ w
whip[1]: Vr5c2{0 .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ sw, Br5c1 ≠ e, Br5c2 ≠ w
whip[1]: Br5c1{w .} ==> Pr6c1 ≠ ne
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ w, Br11c7 ≠ o, Br10c6 ≠ se
B-single: Br11c7 = n
P-single: Pr10c9 = ns
H-single: Hr10c8 = 0
V-single: Vr9c9 = 1
P-single: Pr11c8 = nw
vertical-line-r9{c8 c9} ==> Ir9c8 = out
whip[1]: Pr10c9{ns .} ==> Br9c9 ≠ o, Br9c8 ≠ sw, Br9c8 ≠ swn, Br10c8 ≠ ne
B-single: Br10c8 = ew
B-single: Br9c9 = w
N-single: Nr9c9 = 1
w[1]-diagonal-1-1-in-{r9c9...r8c8}-with-no-se-outer-sides ==> Hr8c8 = 0, Vr8c8 = 0
w[1]-1-in-r8c8-asymmetric-se-corner ==> Pr8c8 ≠ ew, Pr8c8 ≠ ns
whip[1]: Hr8c8{0 .} ==> Pr8c8 ≠ se, Pr8c9 ≠ sw, Br7c8 ≠ ns, Br7c8 ≠ se, Br8c8 ≠ n
P-single: Pr8c8 = nw
H-single: Hr8c7 = 1
V-single: Vr7c8 = 1
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ e, Br7c7 ≠ e, Br7c7 ≠ n, Br7c7 ≠ o, Br7c7 ≠ ne, Br7c7 ≠ sw, Br7c7 ≠ swn, Br8c8 ≠ w
B-single: Br7c7 = esw
H-single: Hr7c7 = 0
V-single: Vr7c7 = 1
N-single: Nr7c7 = 3
P-single: Pr8c7 = ne
B-single: Br8c7 = n
w[1]-1-in-r5c9-asymmetric-sw-corner ==> Pr5c10 ≠ ew, Pr5c10 ≠ nw
whip[1]: Hr7c7{0 .} ==> Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes
whip[1]: Vr7c7{1 .} ==> Br7c6 ≠ w, Br7c6 ≠ nw
whip[1]: Br7c6{wne .} ==> Nr7c6 ≠ 1
whip[1]: Pr5c10{ne .} ==> Hr5c9 ≠ 1, Br4c9 ≠ s, Br4c9 ≠ ns, Br4c9 ≠ se, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn, Br4c9 ≠ nes, Br4c10 ≠ se, Br4c10 ≠ ew, Br4c10 ≠ wne, Br4c10 ≠ nes, Br5c9 ≠ n
H-single: Hr5c9 = 0
B-single: Br5c9 = w
V-single: Vr5c9 = 1
whip[1]: Vr5c9{1 .} ==> Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ sw
whip[1]: Br5c8{ew .} ==> Pr5c8 ≠ se, Pr6c8 ≠ ne
whip[1]: Pr5c8{sw .} ==> Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw, Br5c7 ≠ e
whip[1]: Br4c10{esw .} ==> Pr4c10 ≠ se
whip[1]: Pr9c8{se .} ==> Br9c8 ≠ ne, Br9c8 ≠ ew
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 2
whip[1]: Pr6c9{nw .} ==> Br6c8 ≠ ne, Br6c8 ≠ sw
whip[1]: Pr7c7{sw .} ==> Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ nes, Br6c6 ≠ o, Br6c6 ≠ n, Br6c6 ≠ w
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 0
whip[1]: Br10c6{sw .} ==> Pr10c7 ≠ ns
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 1
whip[1]: Pr6c2{o .} ==> Br5c1 ≠ s
whip[1]: Br5c1{w .} ==> Pr6c1 ≠ se
whip[1]: Pr5c1{ns .} ==> Vr4c1 ≠ 0, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nes, Br4c1 ≠ n
V-single: Vr4c1 = 1
vertical-line-r4{c0 c1} ==> Ir4c1 = in
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
P-single: Pr3c2 = se
H-single: Hr3c2 = 1
V-single: Vr3c2 = 1
P-single: Pr4c1 = ns
vertical-line-r3{c1 c2} ==> Ir3c2 = out
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Hr4c1{0 .} ==> Pr4c2 ≠ ew, Pr4c2 ≠ sw, Br3c1 ≠ sw
B-single: Br3c1 = ew
whip[1]: Pr4c2{ns .} ==> Br3c2 ≠ s, Br3c2 ≠ se, Br3c2 ≠ o, Br3c2 ≠ e
whip[1]: Br3c2{wne .} ==> Pr3c3 ≠ o, Pr3c3 ≠ se, Pr4c3 ≠ nw, Nr3c2 ≠ 0, Nr3c2 ≠ 1
w[1]-1-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ ew, Pr4c4 ≠ ns
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ ne, Br3c4 ≠ sw, Br4c3 ≠ ne, Br4c3 ≠ sw, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br3c3 ≠ e, Br3c3 ≠ s, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Br3c3{w .} ==> Hr4c3 ≠ 1, Vr3c4 ≠ 1, Pr3c4 ≠ ns, Pr4c3 ≠ ne, Pr4c4 ≠ nw, Pr3c4 ≠ se, Pr3c4 ≠ sw, Pr4c3 ≠ se, Pr4c3 ≠ ew
V-single: Vr3c4 = 0
H-single: Hr4c3 = 0
P-single: Pr4c4 = se
H-single: Hr4c4 = 1
V-single: Vr4c4 = 1
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ nw, Br3c4 ≠ ew
whip[1]: Br3c4{se .} ==> Pr4c5 ≠ ns
whip[1]: Pr4c5{sw .} ==> Br4c4 ≠ se, Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c4 ≠ o, Br4c4 ≠ e, Br4c4 ≠ s
whip[1]: Br4c4{wne .} ==> Pr5c4 ≠ ew, Pr5c5 ≠ nw, Nr4c4 ≠ 0, Nr4c4 ≠ 1
whip[1]: Pr5c4{nw .} ==> Br4c3 ≠ ns, Br4c3 ≠ nw, Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ n, Br4c2 ≠ ns
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ o
B-single: Br2c2 = s
N-single: Nr2c2 = 1
whip[1]: Pr7c3{sw .} ==> Br7c2 ≠ s
whip[1]: Br7c2{wne .} ==> Pr7c2 ≠ o, Nr7c2 ≠ 1
whip[1]: Pr7c2{sw .} ==> Br7c1 ≠ w
whip[1]: Br7c1{wne .} ==> Nr7c1 ≠ 1
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ se
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ w
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 1
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ n
whip[1]: Br2c4{esw .} ==> Pr3c4 ≠ o, Nr2c4 ≠ 1
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ o
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c7{se .} ==> Br2c7 ≠ ns, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ nes, Br2c7 ≠ w
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ w, Br0c9 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ sw, Br1c9 ≠ e, Br1c9 ≠ s
B-single: Br1c9 = n
H-single: Hr2c9 = 0
V-single: Vr1c9 = 0
V-single: Vr1c10 = 0
P-single: Pr2c11 = ns
H-single: Hr2c10 = 0
V-single: Vr1c11 = 1
w[1]-2-in-r1c10-open-sw-corner ==> Hr1c10 = 1
P-single: Pr3c11 = nw
H-single: Hr3c10 = 1
V-single: Vr3c11 = 0
P-single: Pr1c11 = sw
P-single: Pr1c9 = ew
H-single: Hr1c8 = 1
P-single: Pr1c10 = ew
P-single: Pr2c10 = o
V-single: Vr2c10 = 0
B-single: Br0c9 = s
no-vertical-line-r2{c9 c10} ==> Ir2c9 = in
horizontal-line-{r0 r1}c8 ==> Ir1c8 = in
no-vertical-line-r3{c10 c11} ==> Ir3c10 = out
horizontal-line-{r0 r1}c10 ==> Ir1c10 = in
different-colours-in-{r3 r4}c10 ==> Hr4c10 = 1
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
whip[1]: Hr2c9{0 .} ==> Br2c9 ≠ ns, Br2c9 ≠ wne
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 3
whip[1]: Vr1c9{0 .} ==> Br1c8 ≠ ne, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ nes
whip[1]: Br1c8{sw .} ==> Nr1c8 ≠ 3
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ sw
B-single: Br1c10 = ne
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ nw, Br2c10 ≠ sw
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ew, Br3c10 ≠ ne, Br3c10 ≠ ew, Br3c10 ≠ sw
B-single: Br3c10 = ns
V-single: Vr3c10 = 0
P-single: Pr4c11 = sw
P-single: Pr3c10 = ew
H-single: Hr3c9 = 1
P-single: Pr4c10 = ew
H-single: Hr4c9 = 1
V-single: Vr4c10 = 0
B-single: Br2c10 = se
no-vertical-line-r4{c9 c10} ==> Ir4c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
no-vertical-line-r6{c9 c10} ==> Ir6c9 = in
vertical-line-r5{c8 c9} ==> Ir5c8 = out
horizontal-line-{r3 r4}c9 ==> Ir3c9 = out
same-colour-in-{r6 r7}c9 ==> Hr7c9 = 0
same-colour-in-{r6 r7}c10 ==> Hr7c10 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
whip[1]: Vr3c10{0 .} ==> Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ wne, Br3c9 ≠ nes
whip[1]: Pr4c11{sw .} ==> Br4c10 ≠ e, Br4c10 ≠ esw
B-single: Br4c10 = ne
N-single: Nr4c10 = 2
P-single: Pr5c11 = ns
P-single: Pr5c10 = o
w[1]-1-in-r5c10-symmetric-nw-corner ==> Pr6c11 ≠ o
P-single: Pr6c11 = ns
w[1]-1-in-r6c10-asymmetric-ne-corner ==> Pr7c10 ≠ ew
P-single: Pr7c10 = o
w[1]-1-in-r6c9-symmetric-se-corner ==> Pr6c9 ≠ nw
P-single: Pr6c9 = ns
H-single: Hr6c8 = 0
V-single: Vr6c9 = 1
vertical-line-r6{c8 c9} ==> Ir6c8 = out
whip[1]: Pr5c11{ns .} ==> Br5c10 ≠ n
B-single: Br5c10 = e
whip[1]: Pr5c10{o .} ==> Br4c9 ≠ e, Br4c9 ≠ ne, Br4c9 ≠ ew, Br4c9 ≠ wne
whip[1]: Br4c9{nw .} ==> Nr4c9 ≠ 3
whip[1]: Pr6c11{ns .} ==> Br6c10 ≠ s
B-single: Br6c10 = e
P-single: Pr7c11 = ns
whip[1]: Pr7c11{ns .} ==> Br7c10 ≠ nes
B-single: Br7c10 = se
N-single: Nr7c10 = 2
whip[1]: Pr7c10{o .} ==> Br6c9 ≠ s, Br7c9 ≠ n, Br7c9 ≠ nw
B-single: Br6c9 = w
whip[1]: Pr7c9{nw .} ==> Br6c8 ≠ ns, Br6c8 ≠ nw
whip[1]: Br6c8{ew .} ==> Pr6c8 ≠ ew
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ se
whip[1]: Br7c9{w .} ==> Nr7c9 ≠ 2
whip[1]: Pr5c8{sw .} ==> Hr5c7 ≠ 0, Br5c7 ≠ sw, Br4c7 ≠ o, Br4c7 ≠ w, Br5c7 ≠ o, Br5c7 ≠ s, Br5c7 ≠ w
H-single: Hr5c7 = 1
whip[1]: Hr5c7{1 .} ==> Pr5c7 ≠ o, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ sw
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ se, Br4c6 ≠ esw, Br4c6 ≠ nes, Br5c6 ≠ wne, Br5c6 ≠ nes, Br5c6 ≠ ne
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 0
whip[1]: Pr3c10{ew .} ==> Br3c9 ≠ w, Br3c9 ≠ s, Br3c9 ≠ o, Br2c9 ≠ ew, Br3c9 ≠ sw
B-single: Br2c9 = s
V-single: Vr2c9 = 0
N-single: Nr2c9 = 1
P-single: Pr2c9 = o
H-single: Hr2c8 = 0
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
whip[1]: Vr2c9{0 .} ==> Br2c8 ≠ e, Br2c8 ≠ ne, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw, Br2c8 ≠ wne, Br2c8 ≠ nes
whip[1]: Pr2c9{o .} ==> Br1c8 ≠ ns, Br1c8 ≠ sw, Br2c8 ≠ n, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ swn
whip[1]: Br2c8{sw .} ==> Pr2c8 ≠ ne, Pr2c8 ≠ se, Pr2c8 ≠ ew, Nr2c8 ≠ 3
whip[1]: Br1c8{w .} ==> Nr1c8 ≠ 2
N-single: Nr1c8 = 1
w[1]-1-in-r1c8-asymmetric-ne-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ ns
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nes, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ swn, Br1c7 ≠ ne, Br1c8 ≠ w
B-single: Br1c8 = n
P-single: Pr1c8 = ew
whip[1]: Br1c7{ns .} ==> Nr1c7 ≠ 3
whip[1]: Br2c7{wne .} ==> Pr3c7 ≠ ne, Pr3c8 ≠ o, Pr3c8 ≠ nw, Nr2c7 ≠ 2
w[1]-1-in-r3c6-asymmetric-ne-corner ==> Pr4c6 ≠ ew, Pr4c6 ≠ se
w[1]-1-in-r3c8-asymmetric-nw-corner ==> Pr4c9 ≠ ns, Pr4c9 ≠ ne
whip[1]: Pr4c9{se .} ==> Vr3c9 ≠ 1, Br3c9 ≠ nw, Br3c9 ≠ swn, Br3c8 ≠ e, Br4c9 ≠ n, Br4c9 ≠ w
V-single: Vr3c9 = 0
B-single: Br3c8 = n
H-single: Hr3c8 = 1
P-single: Pr3c9 = ew
horizontal-line-{r2 r3}c8 ==> Ir3c8 = out
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
no-vertical-line-r4{c7 c8} ==> Ir4c8 = out
horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
P-single: Pr5c9 = ns
V-single: Vr4c9 = 1
whip[1]: Hr3c8{1 .} ==> Br2c8 ≠ o, Br2c8 ≠ w
whip[1]: Br2c8{sw .} ==> Nr2c8 ≠ 0
whip[1]: Vr5c8{1 .} ==> Pr5c8 ≠ ew, Br5c7 ≠ n, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ swn, Br5c8 ≠ ne
P-single: Pr5c8 = sw
B-single: Br5c8 = ew
w[1]-1-in-r4c8-symmetric-sw-corner ==> Pr4c9 ≠ o
P-single: Pr4c9 = se
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ s
B-single: Br4c8 = e
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ o, Br3c9 ≠ n
B-single: Br3c9 = ns
N-single: Nr3c9 = 2
B-single: Br4c9 = nw
N-single: Nr4c9 = 2
whip[1]: Br5c7{nes .} ==> Pr6c7 ≠ ne, Nr5c7 ≠ 1
whip[1]: Pr6c8{nw .} ==> Br6c7 ≠ w, Br6c7 ≠ ne, Br6c7 ≠ wne, Br6c7 ≠ o
whip[1]: Br6c7{ew .} ==> Nr6c7 ≠ 0, Nr6c7 ≠ 3
whip[1]: Pr4c6{sw .} ==> Hr4c6 ≠ 1, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ esw, Br4c6 ≠ wne, Br3c6 ≠ s, Br4c5 ≠ n, Br4c5 ≠ e, Br4c5 ≠ ns, Br4c6 ≠ ne
H-single: Hr4c6 = 0
whip[1]: Hr4c6{0 .} ==> Pr4c7 ≠ sw
whip[1]: Br4c6{sw .} ==> Nr4c6 ≠ 3
whip[1]: Vr6c11{1 .} ==> Br6c11 ≠ o
B-single: Br6c11 = w
whip[1]: Vr5c11{1 .} ==> Br5c11 ≠ o
B-single: Br5c11 = w
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Hr1c8{1 .} ==> Br0c8 ≠ o
B-single: Br0c8 = s
whip[1]: Vr9c11{1 .} ==> Br9c11 ≠ o
B-single: Br9c11 = w
whip[1]: Vr2c11{1 .} ==> Br2c11 ≠ o
B-single: Br2c11 = w
whip[1]: Vr9c1{1 .} ==> Br9c0 ≠ o
B-single: Br9c0 = e
whip[1]: Vr2c1{1 .} ==> Br2c0 ≠ o
B-single: Br2c0 = e
whip[1]: Vr1c1{1 .} ==> Br1c0 ≠ o
B-single: Br1c0 = e
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Hr1c1{1 .} ==> Br0c1 ≠ o
B-single: Br0c1 = s
Entering_relation_bivalue_with_<Fact-179140>
Entering_level_BC2_with_<Fact-179553>
Entering_level_W2_with_<Fact-180547>
Entering_level_BC3_with_<Fact-182991>
Entering_level_W3_with_<Fact-186437>
Entering_level_BC4_with_<Fact-193935>
Entering_level_W4_with_<Fact-205497>
Entering_level_BC5_with_<Fact-229481>
Entering_level_W5_with_<Fact-268291>
whip[5]: Pr7c4{ew o} - Br6c3{s w} - Pr6c4{se ne} - Br5c3{n e} - Pr6c3{ns .} ==> Br6c4 ≠ ne
whip[5]: Pr7c4{ew o} - Br6c3{s w} - Pr6c4{se ne} - Br5c3{n e} - Pr6c3{ns .} ==> Br6c4 ≠ n
whip[5]: Pr6c4{ns se} - Br6c3{w e} - Pr6c3{ns o} - Br5c3{w n} - Pr5c4{ne .} ==> Br5c4 ≠ nes
whip[5]: Pr6c4{ns se} - Br6c3{w e} - Pr6c3{ns o} - Br5c3{w n} - Pr5c4{ne .} ==> Br5c4 ≠ ns
whip[5]: Pr4c7{ns o} - Br3c6{e n} - Pr3c6{o ew} - Br3c5{w n} - Pr4c6{sw .} ==> Br4c6 ≠ sw
whip[1]: Br4c6{ew .} ==> Pr5c6 ≠ ne
whip[5]: Pr4c7{ns o} - Br3c6{e n} - Pr3c6{o ew} - Br3c5{w n} - Pr4c6{sw .} ==> Br4c6 ≠ w
GRID 0 NOT SOLVED. 758 VALUES MISSING.
filling unsolved HV variables
filling unsolved IO variables

GRID 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[5]
.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .....   .   .....   .   .   .
| 1         :   : 1   1 :   :         2 |
.   .———.....................———.———.———.
| 2 |   : 1   2 : 1   1 : 1   1       2
.   .....   .———.....   .   .   .———.———.
|   :   : 2 |   :   :   :     1 |       |
.........................———.   .   .   .
: 1   1 : 1 :   :   :   :   | 2 | 1   1 |
.   .   .   .................   .   .   .
: 1   1 : 1 :   :   :   :   : 2 | 1   1 |
.........................   .....   .   .
|   :   : 1     :   |   |   | 2 :       |
.   .....   .   .———.   .———.   .   .———.
| 2 |   | 2   1 : 2   1   1   1 :   | 3
.   .   .———.........———.   .....   .———.
| 2 |       :   : 2 : 3 |   :   |     2 |
.   .———.———.................   .   .   .
| 2   2   2     : 2 : 2     | 2 | 2   2 |
.———.———.———.———.....———.———.   .———.———.

init-time = 3m 25.31s, solve-time = 2m 16.05s, total-time = 5m 41.36s
nb-facts=<Fact-346830>
Quasi-Loop max length = 0
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



xtd-QL ==>

.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .....   .   .....   .   .   .
| 1         :   : 1   1 :   :         2 |
.   .———.....................———.———.———.
| 2 |   : 1   2 : 1   1 : 1   1       2
.   .....   .———.....   .   .   .———.———.
|   :   | 2 |       :   :     1 |       |
.....   .   .———.........———.   .   .   .
: 1   1 | 1     :   :       | 2 | 1   1 |
.   .   .   .   .........———.   .   .   .
: 1   1 | 1     |   :   :     2 | 1   1 |
.....   .   .   .   .....   .———.   .   .
|   |   | 1     |   |   |   | 2         |
.   .   .   .   .———.   .———.   .   .———.
| 2 |   | 2   1   2   1   1   1     | 3
.   .   .———.———.———.———.   .———.   .———.
| 2 |             2   3 |   |   |     2 |
.   .———.———.———.———.———.   .   .   .   .
| 2   2   2       2   2     | 2 | 2   2 |
.———.———.———.———.———.———.———.   .———.———.



Vr5c1 = 1 ==> loose end

.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .....   .   .....   .   .   .
| 1         :   : 1   1 :   :         2 |
.   .———.———..................———.———.———.
| 2 |     1   2 : 1   1 : 1   1       2
.   .———.   .———.....   .   .   .———.———.
|       | 2 |       :   :     1 |       |
.   .   .   .———.........———.   .   .   .
| 1   1 | 1     :   :       | 2 | 1   1 |
.   .   .   .   .........———.   .   .   .
| 1   1 | 1     |   :   :     2 | 1   1 |
.   .   .   .   .   .....   .———.   .   .
|   |   | 1     |   |   |   | 2         |
.   .   .   .   .———.   .———.   .   .———.
| 2 |   | 2   1   2   1   1   1     | 3
.   .   .———.———.———.———.   .———.   .———.
| 2 |             2   3 |   |   |     2 |
.   .———.———.———.———.———.   .   .   .   .
| 2   2   2       2   2     | 2 | 2   2 |
.———.———.———.———.———.———.———.   .———.———.


Vr5c1 = 0 ==>

.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .....   .   .....   .   .   .
| 1         :   : 1   1 :   :         2 |
.   .———.   .................———.———.———.
| 2 |   | 1   2 : 1   1 : 1   1       2
.   .   .   .———.....   .   .   .———.———.
|   |   | 2 |       :   :     1 |       |
.———.   .   .———.........———.   .   .   .
  1   1 | 1     :   :       | 2 | 1   1 |
.   .   .   .   .........———.   .   .   .
  1   1 | 1     |   :   :     2 | 1   1 |
.———.   .   .   .   .....   .———.   .   .
|   |   | 1     |   |   |   | 2         |
.   .   .   .   .———.   .———.   .   .———.
| 2 |   | 2   1   2   1   1   1     | 3
.   .   .———.———.———.———.   .———.   .———.
| 2 |             2   3 |   |   |     2 |
.   .———.———.———.———.———.   .   .   .   .
| 2   2   2       2   2     | 2 | 2   2 |
.———.———.———.———.———.———.———.   .———.———.


Vr2c4 = 0 ==> impossible

.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .   .   .   .....   .   .   .
| 1         |   | 1   1     :         2 |
.   .———.   .....   .   .   .———.———.———.
| 2 |   | 1   2 : 1   1 : 1   1       2
.   .   .   .———.....   .   .   .———.———.
|   |   | 2 |       :   :     1 |       |
.———.   .   .———.........———.   .   .   .
  1   1 | 1     :   :       | 2 | 1   1 |
.   .   .   .   .........———.   .   .   .
  1   1 | 1     |   :   :     2 | 1   1 |
.———.   .   .   .   .....   .———.   .   .
|   |   | 1     |   |   |   | 2         |
.   .   .   .   .———.   .———.   .   .———.
| 2 |   | 2   1   2   1   1   1     | 3
.   .   .———.———.———.———.   .———.   .———.
| 2 |             2   3 |   |   |     2 |
.   .———.———.———.———.———.   .   .   .   .
| 2   2   2       2   2     | 2 | 2   2 |
.———.———.———.———.———.———.———.   .———.———.



Vr2c4 = 1 ==>

.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .———.   .   .   .   .   .   .
| 1               1   1               2 |
.   .———.   .   .———.———.———.———.———.———.
| 2 |   | 1   2 | 1   1   1   1       2
.   .   .   .———.   .   .   .   .———.———.
|   |   | 2 |                 1 |       |
.———.   .   .———.   .———.———.   .   .   .
  1   1 | 1     |   |       | 2 | 1   1 |
.   .   .   .   .   .   .———.   .   .   .
  1   1 | 1     |   |   |     2 | 1   1 |
.———.   .   .   .   .   .   .———.   .   .
|   |   | 1     |   |   |   | 2         |
.   .   .   .   .———.   .———.   .   .———.
| 2 |   | 2   1   2   1   1   1     | 3
.   .   .———.———.———.———.   .———.   .———.
| 2 |             2   3 |   |   |     2 |
.   .———.———.———.———.———.   .   .   .   .
| 2   2   2       2   2     | 2 | 2   2 |
.———.———.———.———.———.———.———.   .———.———.








-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------

WITH EXTENDED LOOPS

-----------------------------------------------------------------------------
-----------------------------------------------------------------------------
-----------------------------------------------------------------------------


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

2 1 2 . 2 1 . . 1 2
1 . . . 1 1 . . . 2
2 . 1 2 1 1 1 1 . 2
. . 2 . . . . 1 . .
1 1 1 . . . . 2 1 1
1 1 1 . . . . 2 1 1
. . 1 . . . . 2 . .
2 . 2 1 2 1 1 1 . 3
2 . . . 2 3 . . . 2
2 2 2 . 2 2 . 2 2 2

start init-grid-structure 0.0227439403533936
start create-csp-variables
start create-labels 0.00125217437744141
start init-physical-csp-links 0.0105390548706055
start init-physical-non-csp-links 11.023353099823
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.24574589729309
     start init-physical-BN-non-csp-links at local time 11.5306439399719
     start init-physical-BP-non-csp-links at local time 21.0906229019165
     end init-physical-BP-non-csp-links at local time 303.149184942245
end init-physical-non-csp-links 314.172575950623
start init-corner-B-c-values 314.195567131042
start init-outer-B-candidates 314.195621013641
start init-outer-I-candidates 314.196398019791
start init-H-candidates 314.196839094162
start init-V-candidates 314.202683925629
start init-P-candidates 314.207806110382
start init-inner-I-candidates 314.216056108475
start init-inner-N-and-B-candidates 314.219043016434
start solution 314.233289957047
entering BRT
w[1]-2-in-se-corner ==> Vr9c11 = 1, Hr11c9 = 1
w[1]-2-in-sw-corner ==> Vr9c1 = 1, Hr11c2 = 1
w[1]-2-in-ne-corner ==> Vr2c11 = 1, Hr1c9 = 1
w[1]-2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-se ==> Vr8c10 = 1, Hr8c10 = 1
w[1]-adjacent-1-1-on-edge-in-c10{r5 r6} ==> Hr6c10 = 0
w[1]-adjacent-1-1-on-edge-in-c1{r5 r6} ==> Hr6c1 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r6{c9 c10} ==> Vr6c10 = 0
w[1]-diagonal-1-1-in-{r6c10...r5c9}-with-no-nw-inner-sides ==> Hr6c9 = 0, Vr5c10 = 0
w[1]-diagonal-1-1-in-{r5c9...r4c8}-with-no-se-outer-sides ==> Hr4c8 = 0, Vr4c8 = 0
w[1]-diagonal-1-1-in-{r4c8...r3c7}-with-no-nw-inner-sides ==> Hr4c7 = 0, Vr3c8 = 0
w[1]-diagonal-1-1-in-{r3c7...r2c6}-with-no-se-outer-sides ==> Hr2c6 = 0, Vr2c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c5 c6} ==> Vr3c6 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c2{r5 r6} ==> Hr6c2 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r5 r6} ==> Hr6c3 = 0
w[1]-3-in-r8c10-closed-nw-corner ==> Pr9c11 ≠ nw, Pr9c11 ≠ o
w[3]-diagonal-1-1-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 0
w[1]-2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1
P-single: Pr1c1 = se
entering level Loop with <Fact-92778>
entering level Col with <Fact-93050>
vertical-line-r9{c10 c11} ==> Ir9c10 = in
vertical-line-r2{c10 c11} ==> Ir2c10 = in
vertical-line-r9{c0 c1} ==> Ir9c1 = in
vertical-line-r2{c0 c1} ==> Ir2c1 = in
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = in
no-vertical-line-r1{c1 c2} ==> Ir1c2 = in
horizontal-line-{r10 r11}c9 ==> Ir10c9 = in
horizontal-line-{r10 r11}c2 ==> Ir10c2 = in
horizontal-line-{r0 r1}c9 ==> Ir1c9 = in
Starting_init_links_with_<Fact-93060>
2465 candidates, 7625 csp-links and 33391 links. Density = 1.1%
starting non trivial part of solution
Entering_level_W1_with_<Fact-175097>
whip[1]: Pr1c1{se .} ==> Br1c1 ≠ se
B-single: Br1c1 = nw
P-single: Pr1c2 = ew
P-single: Pr2c1 = ns
w[1]-1-in-r2c1-asymmetric-nw-corner ==> Pr3c2 ≠ sw, Pr3c2 ≠ ew, Pr3c2 ≠ ns, Pr3c2 ≠ ne
w[1]-1-in-r1c2-asymmetric-nw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ew, Pr2c3 ≠ ns, Pr2c3 ≠ ne
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ w, Br1c2 ≠ s, Br1c2 ≠ e
B-single: Br1c2 = n
H-single: Hr2c2 = 0
V-single: Vr1c3 = 0
w[1]-diagonal-1-1-in-{r1c2...r2c1}-with-no-sw-inner-sides ==> Vr2c2 = 0
P-single: Pr1c3 = ew
H-single: Hr1c3 = 1
P-single: Pr2c2 = o
w[1]-1-in-r2c1-symmetric-ne-corner ==> Pr3c1 ≠ ne, Pr3c1 ≠ o
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
whip[1]: Hr2c2{0 .} ==> Br2c2 ≠ n, Br2c2 ≠ ne, Br2c2 ≠ ns, Br2c2 ≠ nw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ nes
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw
whip[1]: Vr2c2{0 .} ==> Pr3c2 ≠ nw, Br2c1 ≠ e, Br2c2 ≠ w, Br2c2 ≠ ew, Br2c2 ≠ sw, Br2c2 ≠ esw
whip[1]: Br2c2{se .} ==> Nr2c2 ≠ 3
whip[1]: Pr3c2{se .} ==> Hr3c1 ≠ 1, Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ nw, Br3c2 ≠ ne, Br3c2 ≠ ns, Br3c2 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ esw, Br3c2 ≠ nes, Br2c1 ≠ s, Br3c2 ≠ n, Br3c2 ≠ w
H-single: Hr3c1 = 0
P-single: Pr3c1 = ns
V-single: Vr3c1 = 1
vertical-line-r3{c0 c1} ==> Ir3c1 = in
whip[1]: Pr3c1{ns .} ==> Br2c1 ≠ n, Br3c1 ≠ se
B-single: Br2c1 = w
whip[1]: Br3c1{sw .} ==> Pr4c1 ≠ se
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ nw, Br4c1 ≠ se, Br4c1 ≠ swn, Br4c1 ≠ wne, Br4c1 ≠ o, Br4c1 ≠ e
whip[1]: Br4c1{nes .} ==> Nr4c1 ≠ 0
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o
B-single: Br3c0 = e
whip[1]: Pr4c2{sw .} ==> Br4c2 ≠ nw, Br4c2 ≠ se, Br4c2 ≠ swn, Br4c2 ≠ wne, Br4c2 ≠ o, Br4c2 ≠ e, Br4c2 ≠ s
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ se
whip[1]: Br1c3{ns .} ==> Pr1c4 ≠ se
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ swn, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o
B-single: Br0c3 = s
whip[1]: Pr2c4{sw .} ==> Br2c4 ≠ nw, Br2c4 ≠ se, Br2c4 ≠ swn, Br2c4 ≠ wne, Br2c4 ≠ o, Br2c4 ≠ e, Br2c4 ≠ s
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr2c3{se .} ==> Br2c3 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ nes, Br2c3 ≠ n, Br2c3 ≠ w
whip[1]: Hr6c3{0 .} ==> Br6c3 ≠ n, Pr6c3 ≠ ne, Pr6c3 ≠ se, Pr6c3 ≠ ew, Pr6c4 ≠ nw, Pr6c4 ≠ ew, Pr6c4 ≠ sw, Br5c3 ≠ s
whip[1]: Br5c3{w .} ==> Pr5c3 ≠ se, Pr5c4 ≠ sw
whip[1]: Br6c3{w .} ==> Pr7c3 ≠ ne, Pr7c4 ≠ nw
whip[1]: Hr6c2{0 .} ==> Br6c2 ≠ n, Pr6c2 ≠ ne, Pr6c2 ≠ se, Pr6c2 ≠ ew, Pr6c3 ≠ nw, Pr6c3 ≠ sw, Br5c2 ≠ s
whip[1]: Br5c2{w .} ==> Pr5c2 ≠ se, Pr5c3 ≠ sw
whip[1]: Br6c2{w .} ==> Pr7c2 ≠ ne, Pr7c3 ≠ nw
whip[1]: Vr3c6{0 .} ==> Br3c6 ≠ w, Pr3c6 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ sw, Pr4c6 ≠ ne, Pr4c6 ≠ ns, Pr4c6 ≠ nw, Br3c5 ≠ e
whip[1]: Br3c5{w .} ==> Pr4c5 ≠ ne, Pr3c5 ≠ se
whip[1]: Br3c6{s .} ==> Pr3c7 ≠ sw, Pr4c7 ≠ nw
whip[1]: Vr2c6{0 .} ==> Br2c6 ≠ w, Pr2c6 ≠ ns, Pr2c6 ≠ se, Pr2c6 ≠ sw, Pr3c6 ≠ ne, Pr3c6 ≠ nw, Br2c5 ≠ e
whip[1]: Br2c5{w .} ==> Pr3c5 ≠ ne, Pr2c5 ≠ se
whip[1]: Br2c6{s .} ==> Pr2c7 ≠ sw, Pr3c7 ≠ nw
whip[1]: Hr2c6{0 .} ==> Br2c6 ≠ n, Pr2c6 ≠ ne, Pr2c6 ≠ ew, Pr2c7 ≠ nw, Pr2c7 ≠ ew, Br1c6 ≠ s
w[1]-1-in-r2c6-symmetric-nw-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ o
w[1]-1-in-r3c7-asymmetric-nw-corner ==> Pr4c8 ≠ sw, Pr4c8 ≠ ew, Pr4c8 ≠ ns, Pr4c8 ≠ ne
w[1]-1-in-r4c8-symmetric-nw-corner ==> Pr5c9 ≠ se, Pr5c9 ≠ nw, Pr5c9 ≠ o
w[1]-1-in-r5c9-asymmetric-nw-corner ==> Pr6c10 ≠ sw, Pr6c10 ≠ ew, Pr6c10 ≠ ns, Pr6c10 ≠ ne
w[1]-1-in-r6c10-symmetric-nw-corner ==> Pr7c11 ≠ nw, Pr7c11 ≠ o
whip[1]: Pr7c11{sw .} ==> Vr7c11 ≠ 0, Br7c10 ≠ nw, Br7c10 ≠ sw, Br7c10 ≠ swn, Br6c10 ≠ n, Br6c10 ≠ w, Br7c10 ≠ o, Br7c10 ≠ n, Br7c10 ≠ s, Br7c10 ≠ w, Br7c10 ≠ ns
V-single: Vr7c11 = 1
w[1]-3-in-r8c10-hit-by-verti-line-at-ne ==> Hr9c10 = 1
w[1]-3-in-r8c10-closed-sw-corner ==> Pr8c11 ≠ sw, Pr8c11 ≠ o
no-vertical-line-r9{c9 c10} ==> Ir9c9 = in
no-horizontal-line-{r8 r9}c9 ==> Ir8c9 = in
no-horizontal-line-{r7 r8}c9 ==> Ir7c9 = in
no-vertical-line-r7{c9 c10} ==> Ir7c10 = in
horizontal-line-{r7 r8}c10 ==> Ir8c10 = out
same-colour-in-{r9 r10}c9 ==> Hr10c9 = 0
whip[1]: Vr7c11{1 .} ==> Br7c11 ≠ o
B-single: Br7c11 = w
whip[1]: Vr8c11{0 .} ==> Br8c11 ≠ w, Pr8c11 ≠ ns, Pr9c11 ≠ ns, Br8c10 ≠ esw, Br8c10 ≠ wne, Br8c10 ≠ nes
P-single: Pr11c10 = ew
H-single: Hr11c10 = 1
V-single: Vr10c10 = 0
w[1]-2-in-r10c9-open-ne-corner ==> Vr10c9 = 1, Hr11c8 = 0
P-single: Pr11c11 = nw
V-single: Vr10c11 = 1
P-single: Pr11c9 = ne
P-single: Pr10c11 = ns
H-single: Hr10c10 = 0
P-single: Pr10c10 = o
P-single: Pr9c11 = sw
P-single: Pr8c11 = nw
B-single: Br8c10 = swn
P-single: Pr8c10 = se
P-single: Pr9c10 = ne
B-single: Br8c11 = o
no-horizontal-line-{r9 r10}c10 ==> Ir10c10 = in
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
whip[1]: Pr11c10{ew .} ==> Br10c9 ≠ ne, Br11c10 ≠ o, Br11c9 ≠ o, Br10c9 ≠ nw, Br10c9 ≠ se, Br10c9 ≠ ew, Br10c10 ≠ nw
B-single: Br10c10 = se
B-single: Br11c9 = n
B-single: Br11c10 = n
whip[1]: Vr10c9{1 .} ==> Pr10c9 ≠ ew, Br10c8 ≠ ns, Br10c8 ≠ nw, Br10c8 ≠ sw, Br10c9 ≠ ns
B-single: Br10c9 = sw
whip[1]: Pr10c9{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ esw, Br9c8 ≠ nes, Br9c9 ≠ se, Br9c9 ≠ sw, Br9c9 ≠ esw, Br9c9 ≠ swn, Br9c9 ≠ nes, Br9c8 ≠ o, Br9c8 ≠ n, Br9c8 ≠ w, Br9c9 ≠ s, Br9c9 ≠ ns
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 0
whip[1]: Hr11c8{0 .} ==> Br11c8 ≠ n, Pr11c8 ≠ ew, Br10c8 ≠ se
B-single: Br11c8 = o
whip[1]: Pr11c8{nw .} ==> Br10c7 ≠ ne, Br10c7 ≠ ns, Br10c7 ≠ ew, Br10c7 ≠ sw, Br10c7 ≠ swn, Br10c7 ≠ wne, Br10c7 ≠ e, Br10c7 ≠ s
whip[1]: Vr10c11{1 .} ==> Br10c11 ≠ o
B-single: Br10c11 = w
whip[1]: Pr10c11{ns .} ==> Br9c10 ≠ ns, Br9c10 ≠ nw, Br9c10 ≠ se, Br9c10 ≠ sw
whip[1]: Pr10c10{o .} ==> Br9c9 ≠ e, Br9c9 ≠ ne, Br9c9 ≠ ew, Br9c9 ≠ wne, Br9c10 ≠ ew
B-single: Br9c10 = ne
whip[1]: Br9c9{nw .} ==> Nr9c9 ≠ 3
whip[1]: Pr8c11{nw .} ==> Br7c10 ≠ e, Br7c10 ≠ ne, Br7c10 ≠ ew, Br7c10 ≠ wne
whip[1]: Br7c10{nes .} ==> Pr7c10 ≠ se, Nr7c10 ≠ 0, Nr7c10 ≠ 1
whip[1]: Pr8c10{se .} ==> Br8c9 ≠ w, Br8c9 ≠ s, Br8c9 ≠ n, Br8c9 ≠ o, Br7c9 ≠ s, Br7c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ ns, Br7c9 ≠ se, Br7c9 ≠ ew, Br7c9 ≠ sw, Br7c9 ≠ esw, Br7c9 ≠ swn, Br7c9 ≠ wne, Br7c9 ≠ nes, Br7c10 ≠ esw, Br8c9 ≠ ne, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ sw, Br8c9 ≠ swn, Br8c9 ≠ wne, Br8c9 ≠ nes
whip[1]: Br8c9{esw .} ==> Pr8c9 ≠ ne, Pr8c9 ≠ se, Pr8c9 ≠ ew, Nr8c9 ≠ 0
whip[1]: Br7c10{nes .} ==> Pr7c10 ≠ ns, Pr7c10 ≠ sw
whip[1]: Br7c9{nw .} ==> Nr7c9 ≠ 3
whip[1]: Pr9c10{ne .} ==> Br9c9 ≠ n, Br8c9 ≠ se, Br8c9 ≠ esw, Br9c9 ≠ nw
whip[1]: Br9c9{w .} ==> Pr9c9 ≠ ne, Nr9c9 ≠ 2, Pr9c9 ≠ se, Pr9c9 ≠ ew
whip[1]: Br8c9{ew .} ==> Nr8c9 ≠ 3
whip[1]: Pr10c8{sw .} ==> Br9c7 ≠ nw, Br9c7 ≠ se, Br9c7 ≠ esw, Br9c7 ≠ nes, Br9c7 ≠ o, Br9c7 ≠ n, Br9c7 ≠ w
whip[1]: Br9c7{wne .} ==> Nr9c7 ≠ 0
whip[1]: Br6c10{s .} ==> Pr7c10 ≠ ne, Pr6c11 ≠ nw, Pr6c11 ≠ sw, Pr6c10 ≠ se, Pr7c10 ≠ nw
whip[1]: Pr7c10{ew .} ==> Br6c9 ≠ e
whip[1]: Br6c9{w .} ==> Pr7c9 ≠ ne, Pr6c9 ≠ se
whip[1]: Pr6c10{nw .} ==> Br5c9 ≠ e, Br5c9 ≠ s, Br5c10 ≠ s
whip[1]: Br5c10{w .} ==> Pr5c11 ≠ sw, Pr5c10 ≠ se
whip[1]: Pr5c11{nw .} ==> Br4c10 ≠ ns, Br4c10 ≠ sw, Br4c10 ≠ swn, Br4c10 ≠ s
whip[1]: Br5c9{w .} ==> Pr5c10 ≠ ns, Pr6c9 ≠ ne, Pr6c10 ≠ nw, Pr5c10 ≠ sw, Pr6c9 ≠ ew
P-single: Pr6c10 = o
w[1]-1-in-r5c10-symmetric-sw-corner ==> Pr5c11 ≠ o
w[1]-1-in-r6c9-symmetric-ne-corner ==> Pr7c9 ≠ sw, Pr7c9 ≠ o
w[1]-1-in-r8c7-asymmetric-ne-corner ==> Pr9c7 ≠ ew, Pr9c7 ≠ se, Pr9c7 ≠ nw, Pr9c7 ≠ ns
w[1]-3-in-r9c6-symmetric-ne-corner ==> Vr9c7 = 1, Hr9c6 = 1
w[1]-adjacent-1-3-on-pseudo-edge-in-{r8 r9}c6 ==> Vr8c6 = 0, Hr8c6 = 0
w[1]-3-in-r9c6-closed-ne-corner ==> Pr10c6 ≠ sw, Pr10c6 ≠ ne, Pr10c6 ≠ o
whip[1]: Pr6c10{o .} ==> Br5c10 ≠ w, Br6c9 ≠ n
whip[1]: Vr9c7{1 .} ==> Pr9c7 ≠ o, Pr9c7 ≠ ne, Pr10c7 ≠ o, Pr10c7 ≠ se, Pr10c7 ≠ ew, Pr10c7 ≠ sw, Br9c6 ≠ swn, Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ ne, Br9c7 ≠ ns
P-single: Pr9c7 = sw
w[1]-1-in-r8c6-asymmetric-se-corner ==> Pr8c6 ≠ ew, Pr8c6 ≠ ns, Pr8c6 ≠ ne
whip[1]: Pr9c7{sw .} ==> Br8c7 ≠ w, Br8c7 ≠ s, Br8c6 ≠ w, Br8c6 ≠ e, Br8c6 ≠ n, Br9c6 ≠ esw, Br9c7 ≠ swn, Br9c7 ≠ wne
B-single: Br8c6 = s
whip[1]: Pr10c5{ew .} ==> Br9c5 ≠ sw, Br10c4 ≠ sw, Br10c4 ≠ wne, Br10c4 ≠ nes, Br9c5 ≠ ne, Br10c4 ≠ o, Br10c4 ≠ s, Br10c4 ≠ w, Br10c4 ≠ ne
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 0
whip[1]: Pr8c6{nw .} ==> Br7c5 ≠ ne, Br7c5 ≠ ns, Br7c5 ≠ ew, Br7c5 ≠ sw, Br7c5 ≠ swn, Br7c5 ≠ wne, Br7c6 ≠ ns, Br7c6 ≠ se, Br7c6 ≠ sw, Br7c6 ≠ esw, Br7c6 ≠ swn, Br7c6 ≠ nes, Br8c5 ≠ ne, Br8c5 ≠ se, Br8c5 ≠ ew, Br7c5 ≠ e, Br7c5 ≠ s, Br7c6 ≠ s
whip[1]: Pr8c7{ne .} ==> Br7c7 ≠ s, Br7c7 ≠ w, Br7c7 ≠ ns, Br7c7 ≠ nw, Br7c7 ≠ se, Br7c7 ≠ ew, Br7c7 ≠ wne, Br7c7 ≠ nes
whip[1]: Br9c7{sw .} ==> Pr9c8 ≠ nw, Pr9c8 ≠ ew, Pr9c8 ≠ sw, Nr9c7 ≠ 1, Nr9c7 ≠ 3
N-single: Nr9c7 = 2
whip[1]: Pr10c7{nw .} ==> Br10c6 ≠ ne, Br10c7 ≠ nw
whip[1]: Br10c6{sw .} ==> Pr11c6 ≠ o
whip[1]: Pr11c6{ew .} ==> Br10c5 ≠ nw
whip[1]: Br10c5{sw .} ==> Pr10c5 ≠ se
whip[1]: Pr10c5{ew .} ==> Br9c4 ≠ nw, Br9c4 ≠ o, Br9c4 ≠ n, Br9c4 ≠ w
whip[1]: Br9c4{nes .} ==> Nr9c4 ≠ 0
whip[1]: Pr11c5{ew .} ==> Br11c4 ≠ o, Hr11c4 ≠ 0, Br10c4 ≠ nw, Br10c4 ≠ ew, Br10c5 ≠ sw, Br10c4 ≠ n, Br10c4 ≠ e, Br10c5 ≠ ne
H-single: Hr11c4 = 1
B-single: Br11c4 = n
horizontal-line-{r10 r11}c4 ==> Ir10c4 = in
whip[1]: Pr10c3{sw .} ==> Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ esw, Br9c2 ≠ nes, Br10c3 ≠ nw, Br10c3 ≠ se, Br9c2 ≠ o, Br9c2 ≠ n, Br9c2 ≠ w
whip[1]: Br9c2{wne .} ==> Nr9c2 ≠ 0
whip[1]: Br10c4{swn .} ==> Nr10c4 ≠ 1
whip[1]: Pr8c5{sw .} ==> Br7c4 ≠ se, Br7c4 ≠ esw, Br7c4 ≠ nes
whip[1]: Pr9c5{ew .} ==> Br9c4 ≠ wne, Br9c4 ≠ nes, Br9c4 ≠ ne
whip[1]: Pr8c8{ew .} ==> Br7c8 ≠ sw, Br7c8 ≠ ne
whip[1]: Pr5c11{nw .} ==> Vr4c11 ≠ 0, Br4c10 ≠ w, Br4c10 ≠ nw, Br4c10 ≠ o, Br4c10 ≠ n
V-single: Vr4c11 = 1
vertical-line-r4{c10 c11} ==> Ir4c10 = in
whip[1]: Vr4c11{1 .} ==> Br4c11 ≠ o, Pr4c11 ≠ o, Pr4c11 ≠ nw
B-single: Br4c11 = w
whip[1]: Pr3c10{sw .} ==> Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ esw, Br2c9 ≠ nes, Br3c10 ≠ nw, Br3c10 ≠ se, Br2c9 ≠ o, Br2c9 ≠ n, Br2c9 ≠ w
whip[1]: Br2c9{wne .} ==> Nr2c9 ≠ 0
whip[1]: Br4c10{nes .} ==> Nr4c10 ≠ 0
whip[1]: Pr5c9{sw .} ==> Br4c8 ≠ n, Br4c8 ≠ w
whip[1]: Br4c8{s .} ==> Pr5c8 ≠ ne, Pr5c8 ≠ ns, Pr4c8 ≠ se, Pr4c9 ≠ nw, Pr4c9 ≠ ew, Pr4c9 ≠ sw, Pr5c8 ≠ nw
whip[1]: Pr5c8{sw .} ==> Br4c7 ≠ se, Br4c7 ≠ ew, Br4c7 ≠ esw, Br4c7 ≠ wne, Br4c7 ≠ nes, Br4c7 ≠ e, Br4c7 ≠ ne
whip[1]: Pr4c9{se .} ==> Br3c8 ≠ s
whip[1]: Br3c8{w .} ==> Pr3c8 ≠ se, Pr3c9 ≠ sw
whip[1]: Pr4c8{nw .} ==> Br3c7 ≠ e, Br3c7 ≠ s
whip[1]: Br3c7{w .} ==> Pr3c8 ≠ ns, Pr4c7 ≠ ne, Pr4c8 ≠ nw, Pr3c8 ≠ sw, Pr4c7 ≠ se, Pr4c7 ≠ ew
P-single: Pr4c8 = o
w[1]-1-in-r3c8-symmetric-sw-corner ==> Pr3c9 ≠ ne, Pr3c9 ≠ o
whip[1]: Pr4c8{o .} ==> Br3c8 ≠ w, Br4c7 ≠ n, Br4c7 ≠ ns, Br4c7 ≠ nw, Br4c7 ≠ swn
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 3
whip[1]: Pr3c9{ew .} ==> Br2c9 ≠ sw, Br2c9 ≠ swn, Br2c9 ≠ e, Br2c9 ≠ ne
whip[1]: Pr4c7{sw .} ==> Br4c6 ≠ nw, Br4c6 ≠ swn, Br4c6 ≠ n, Br4c6 ≠ ns
whip[1]: Pr3c7{ew .} ==> Br2c7 ≠ o, Br2c7 ≠ n, Br2c7 ≠ e, Br2c7 ≠ ne
whip[1]: Br2c7{nes .} ==> Nr2c7 ≠ 0
whip[1]: Pr1c6{ew .} ==> Hr1c6 ≠ 0, Br1c5 ≠ sw, Br1c5 ≠ ne, Br1c6 ≠ e, Br1c6 ≠ w
H-single: Hr1c6 = 1
B-single: Br1c6 = n
V-single: Vr1c6 = 0
V-single: Vr1c7 = 0
w[1]-diagonal-1-1-in-{r1c6...r2c5}-with-no-sw-inner-sides ==> Hr2c5 = 0
w[1]-2-in-r1c5-open-se-corner ==> Hr1c5 = 1, Vr1c5 = 1, Hr1c4 = 0
P-single: Pr1c5 = se
P-single: Pr1c6 = ew
P-single: Pr1c7 = ew
H-single: Hr1c7 = 1
P-single: Pr2c6 = o
w[1]-1-in-r2c5-symmetric-ne-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ o
w[1]-1-in-r5c2-asymmetric-ne-corner ==> Pr6c2 ≠ nw, Pr6c2 ≠ ns
w[1]-1-in-r6c1-symmetric-ne-corner ==> Pr7c1 ≠ ne, Pr7c1 ≠ o
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
no-vertical-line-r1{c6 c7} ==> Ir1c6 = in
no-vertical-line-r1{c5 c6} ==> Ir1c5 = in
no-horizontal-line-{r1 r2}c5 ==> Ir2c5 = in
no-vertical-line-r2{c5 c6} ==> Ir2c6 = in
vertical-line-r1{c4 c5} ==> Ir1c4 = out
different-colours-in-r1{c3 c4} ==> Hr1c4 = 1
whip[1]: Hr1c6{1 .} ==> Br0c6 ≠ o
B-single: Br0c6 = s
whip[1]: Vr1c6{0 .} ==> Br1c5 ≠ se, Br1c5 ≠ ew
whip[1]: Vr1c7{0 .} ==> Br1c7 ≠ w, Br1c7 ≠ nw, Br1c7 ≠ ew, Br1c7 ≠ sw, Br1c7 ≠ esw, Br1c7 ≠ swn, Br1c7 ≠ wne
whip[1]: Hr2c5{0 .} ==> Pr2c5 ≠ ew, Br1c5 ≠ ns, Br2c5 ≠ n
B-single: Br1c5 = nw
whip[1]: Pr2c5{nw .} ==> Br1c4 ≠ w, Br1c4 ≠ ns, Br1c4 ≠ sw, Br2c4 ≠ w, Br2c4 ≠ ne, Br2c4 ≠ sw, Br2c4 ≠ nes, Br1c4 ≠ n
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 1
whip[1]: Hr1c5{1 .} ==> Br0c5 ≠ o
B-single: Br0c5 = s
whip[1]: Hr1c4{0 .} ==> Br0c4 ≠ s, Pr1c4 ≠ ew, Br1c4 ≠ ne, Br1c4 ≠ nes
P-single: Pr2c3 = o
H-single: Hr2c3 = 0
V-single: Vr2c3 = 0
P-single: Pr1c4 = sw
B-single: Br0c4 = o
no-vertical-line-r2{c2 c3} ==> Ir2c3 = in
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ ns, Br2c2 ≠ e, Br2c2 ≠ se, Br2c3 ≠ nw, Br2c3 ≠ swn, Br2c3 ≠ wne
B-single: Br1c3 = ne
whip[1]: Br2c3{se .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ ns, Pr3c3 ≠ nw, Nr2c3 ≠ 3
whip[1]: Br2c2{s .} ==> Nr2c2 ≠ 2
whip[1]: Pr1c7{ew .} ==> Br1c7 ≠ s, Br1c7 ≠ e, Br1c7 ≠ o, Br1c7 ≠ se
whip[1]: Br1c7{nes .} ==> Pr1c8 ≠ o, Pr1c8 ≠ se, Nr1c7 ≠ 0
whip[1]: Pr1c8{sw .} ==> Br1c8 ≠ nw, Br1c8 ≠ se, Br1c8 ≠ swn, Br1c8 ≠ wne, Br1c8 ≠ o, Br1c8 ≠ e, Br1c8 ≠ s
whip[1]: Br1c8{nes .} ==> Nr1c8 ≠ 0
whip[1]: Hr1c7{1 .} ==> Br0c7 ≠ o
B-single: Br0c7 = s
whip[1]: Pr7c1{se .} ==> Vr7c1 ≠ 0, Br7c1 ≠ ne, Br7c1 ≠ ns, Br7c1 ≠ se, Br7c1 ≠ nes, Br6c1 ≠ n, Br6c1 ≠ e, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e, Br7c1 ≠ s
V-single: Vr7c1 = 1
vertical-line-r7{c0 c1} ==> Ir7c1 = in
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o, Pr8c1 ≠ o, Pr8c1 ≠ se
B-single: Br7c0 = e
whip[1]: Pr9c2{sw .} ==> Br8c1 ≠ nw, Br8c1 ≠ se, Br9c2 ≠ swn, Br9c2 ≠ wne, Br9c2 ≠ e, Br9c2 ≠ s
whip[1]: Br9c2{sw .} ==> Nr9c2 ≠ 1, Nr9c2 ≠ 3
N-single: Nr9c2 = 2
square-of-2s-se-of-r9c1 ==> Pr10c2 ≠ o
whip[1]: Pr9c1{ns .} ==> Vr8c1 ≠ 0, Br8c1 ≠ ne, Br8c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ se
V-single: Vr8c1 = 1
vertical-line-r8{c0 c1} ==> Ir8c1 = in
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
P-single: Pr9c1 = ns
same-colour-in-{r7 r8}c1 ==> Hr8c1 = 0
whip[1]: Vr8c1{1 .} ==> Br8c0 ≠ o, Pr8c1 ≠ ne
P-single: Pr8c1 = ns
B-single: Br8c0 = e
whip[1]: Pr8c1{ns .} ==> Br7c1 ≠ sw, Br7c1 ≠ esw, Br7c1 ≠ swn
whip[1]: Br7c1{wne .} ==> Pr8c2 ≠ nw, Pr8c2 ≠ ew, Nr7c1 ≠ 0
whip[1]: Pr8c2{se .} ==> Vr8c2 ≠ 0, Br7c2 ≠ ne, Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br8c1 ≠ sw, Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ se, Br8c2 ≠ nes, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ e, Br8c2 ≠ o, Br8c2 ≠ n, Br8c2 ≠ e, Br8c2 ≠ s
V-single: Vr8c2 = 1
B-single: Br8c1 = ew
vertical-line-r8{c1 c2} ==> Ir8c2 = out
whip[1]: Pr9c2{ns .} ==> Br9c1 ≠ ne, Br9c1 ≠ ns
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 0
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0
whip[1]: Pr11c3{ew .} ==> Br11c3 ≠ o, Hr11c3 ≠ 0, Br10c2 ≠ nw, Br10c2 ≠ se, Br10c3 ≠ ew, Br10c3 ≠ ne
H-single: Hr11c3 = 1
B-single: Br11c3 = n
P-single: Pr11c4 = ew
V-single: Vr10c4 = 0
no-vertical-line-r10{c3 c4} ==> Ir10c3 = in
same-colour-in-r10{c2 c3} ==> Vr10c3 = 0
P-single: Pr11c3 = ew
whip[1]: Pr11c4{ew .} ==> Br10c4 ≠ esw, Br10c4 ≠ swn
whip[1]: Br10c4{se .} ==> Pr10c4 ≠ ns, Pr10c4 ≠ se, Nr10c4 ≠ 3
N-single: Nr10c4 = 2
whip[1]: Pr10c4{ew .} ==> Hr10c3 ≠ 0, Br9c3 ≠ nw, Br9c3 ≠ ew, Br9c3 ≠ wne, Br9c4 ≠ sw, Br9c4 ≠ esw, Br9c4 ≠ swn, Br10c3 ≠ sw, Br9c3 ≠ o, Br9c3 ≠ n, Br9c3 ≠ e, Br9c3 ≠ w, Br9c3 ≠ ne, Br9c4 ≠ e
H-single: Hr10c3 = 1
B-single: Br10c3 = ns
horizontal-line-{r9 r10}c3 ==> Ir9c3 = out
whip[1]: Pr10c3{ew .} ==> Br10c2 ≠ ew, Br10c2 ≠ ne
whip[1]: Br9c4{ew .} ==> Nr9c4 ≠ 3
whip[1]: Br9c3{nes .} ==> Nr9c3 ≠ 0
whip[1]: Pr11c3{ew .} ==> Br11c2 ≠ o
B-single: Br11c2 = n
whip[1]: Pr10c2{sw .} ==> Br9c2 ≠ ew, Br9c2 ≠ ns
whip[1]: Pr9c4{sw .} ==> Br8c3 ≠ nw, Br8c3 ≠ se, Br9c4 ≠ se, Br9c4 ≠ s
whip[1]: Br9c4{ew .} ==> Pr9c5 ≠ ne, Pr10c5 ≠ nw, Nr9c4 ≠ 1
N-single: Nr9c4 = 2
P-single: Pr8c6 = nw
H-single: Hr8c5 = 1
V-single: Vr7c6 = 1
whip[1]: Pr8c6{nw .} ==> Br7c6 ≠ e, Br7c6 ≠ n, Br7c6 ≠ o, Br7c5 ≠ n, Br7c5 ≠ o, Br7c5 ≠ w, Br7c5 ≠ nw, Br7c6 ≠ ne, Br8c5 ≠ sw
whip[1]: Br8c5{nw .} ==> Pr8c5 ≠ ns, Pr8c5 ≠ sw
whip[1]: Br7c6{wne .} ==> Pr7c6 ≠ o, Pr7c6 ≠ ne, Pr7c6 ≠ nw, Pr7c6 ≠ ew, Nr7c6 ≠ 0
whip[1]: Pr7c6{sw .} ==> Br6c5 ≠ se, Br6c5 ≠ esw, Br6c5 ≠ nes, Br6c6 ≠ sw, Br6c6 ≠ esw, Br6c6 ≠ swn
whip[1]: Br7c5{nes .} ==> Pr7c5 ≠ se, Nr7c5 ≠ 0, Nr7c5 ≠ 1
whip[1]: Pr11c6{ew .} ==> Br11c6 ≠ o, Hr11c6 ≠ 0, Br10c5 ≠ se, Br10c6 ≠ nw, Br10c6 ≠ ew
H-single: Hr11c6 = 1
B-single: Br11c6 = n
horizontal-line-{r10 r11}c6 ==> Ir10c6 = in
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ esw, Br10c7 ≠ o, Br10c7 ≠ n
whip[1]: Br10c7{nes .} ==> Pr10c8 ≠ ew, Nr10c7 ≠ 0
whip[1]: Pr10c8{sw .} ==> Br9c8 ≠ s, Br9c8 ≠ ns
whip[1]: Br10c6{sw .} ==> Pr10c6 ≠ se
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ nw
whip[1]: Br9c5{ew .} ==> Pr9c5 ≠ se
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ n, Br8c4 ≠ w
whip[1]: Br8c4{s .} ==> Hr8c4 ≠ 1, Vr8c4 ≠ 1, Pr8c4 ≠ ne, Pr9c4 ≠ ne, Pr9c4 ≠ ns, Pr8c4 ≠ sw, Pr8c5 ≠ ew, Pr9c5 ≠ nw
V-single: Vr8c4 = 0
H-single: Hr8c4 = 0
w[1]-diagonal-1-1-in-{r8c4...r7c3}-with-no-nw-inner-sides ==> Hr8c3 = 0, Vr7c4 = 0
w[1]-2-in-r8c3-open-ne-corner ==> Hr9c3 = 1, Vr8c3 = 1, Hr9c2 = 0, Vr9c3 = 0
w[1]-2-in-r9c2-open-ne-corner ==> Hr10c2 = 1, Vr9c2 = 1, Hr10c1 = 0, Vr10c2 = 0
w[1]-2-in-r10c1-open-ne-corner ==> Hr11c1 = 1, Vr10c1 = 1
w[1]-diagonal-1-1-in-{r7c3...r6c2}-with-no-se-outer-sides ==> Vr6c2 = 0
w[1]-diagonal-1-1-in-{r6c1...r5c2}-with-no-ne-inner-sides ==> Vr5c2 = 0
P-single: Pr9c2 = ns
P-single: Pr10c1 = ns
P-single: Pr10c3 = ew
P-single: Pr11c2 = ew
P-single: Pr11c1 = ne
P-single: Pr10c2 = ne
P-single: Pr11c7 = ew
H-single: Hr11c7 = 1
V-single: Vr10c7 = 0
P-single: Pr9c3 = ne
P-single: Pr8c4 = o
w[1]-1-in-r7c3-symmetric-se-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ o
w[1]-1-in-r6c2-asymmetric-se-corner ==> Pr6c2 ≠ sw
P-single: Pr6c2 = o
w[1]-1-in-r5c1-symmetric-se-corner ==> Pr5c1 ≠ se, Pr5c1 ≠ o
no-vertical-line-r10{c6 c7} ==> Ir10c7 = in
vertical-line-r10{c0 c1} ==> Ir10c1 = in
vertical-line-r9{c1 c2} ==> Ir9c2 = out
vertical-line-r8{c2 c3} ==> Ir8c3 = in
no-vertical-line-r8{c3 c4} ==> Ir8c4 = in
no-horizontal-line-{r7 r8}c4 ==> Ir7c4 = in
no-vertical-line-r7{c3 c4} ==> Ir7c3 = in
different-colours-in-r10{c7 c8} ==> Hr10c8 = 1
whip[1]: Vr8c4{0 .} ==> Br8c3 ≠ ne, Br8c3 ≠ ew
whip[1]: Hr8c4{0 .} ==> Br7c4 ≠ s, Br7c4 ≠ ns, Br7c4 ≠ sw, Br7c4 ≠ swn
whip[1]: Hr8c3{0 .} ==> Pr8c3 ≠ ne, Pr8c3 ≠ ew, Br7c3 ≠ s, Br8c3 ≠ ns
B-single: Br8c3 = sw
whip[1]: Br7c3{w .} ==> Pr7c4 ≠ sw
whip[1]: Pr8c3{sw .} ==> Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ nes, Br8c2 ≠ nw, Br8c2 ≠ sw, Br8c2 ≠ swn, Br7c2 ≠ w, Br8c2 ≠ w
whip[1]: Br8c2{wne .} ==> Nr8c2 ≠ 1
whip[1]: Vr7c4{0 .} ==> Pr7c4 ≠ ns, Pr7c4 ≠ se, Br7c3 ≠ e, Br7c4 ≠ w, Br7c4 ≠ nw, Br7c4 ≠ ew, Br7c4 ≠ wne
whip[1]: Br7c4{ne .} ==> Nr7c4 ≠ 3
whip[1]: Pr7c4{ew .} ==> Br6c4 ≠ nw, Br6c4 ≠ ew, Br6c4 ≠ wne, Br6c4 ≠ w
whip[1]: Hr9c3{1 .} ==> Br9c3 ≠ s, Br9c3 ≠ se, Br9c3 ≠ sw, Br9c3 ≠ esw
whip[1]: Br9c3{nes .} ==> Nr9c3 ≠ 1
whip[1]: Hr9c2{0 .} ==> Br8c2 ≠ esw, Br9c2 ≠ ne
B-single: Br9c2 = sw
whip[1]: Vr9c3{0 .} ==> Br9c3 ≠ swn
whip[1]: Hr10c2{1 .} ==> Br10c2 ≠ sw
B-single: Br10c2 = ns
whip[1]: Vr9c2{1 .} ==> Br9c1 ≠ sw
B-single: Br9c1 = ew
whip[1]: Hr10c1{0 .} ==> Br10c1 ≠ ne
B-single: Br10c1 = sw
whip[1]: Hr11c1{1 .} ==> Br11c1 ≠ o
B-single: Br11c1 = n
whip[1]: Vr10c1{1 .} ==> Br10c0 ≠ o
B-single: Br10c0 = e
whip[1]: Vr6c2{0 .} ==> Pr7c2 ≠ ns, Pr7c2 ≠ nw, Br6c2 ≠ w
whip[1]: Vr5c2{0 .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ sw, Br5c1 ≠ e, Br5c2 ≠ w
whip[1]: Br5c1{w .} ==> Pr6c1 ≠ ne
whip[1]: Pr11c7{ew .} ==> Br10c7 ≠ w, Br11c7 ≠ o, Br10c6 ≠ se
B-single: Br11c7 = n
P-single: Pr10c9 = ns
H-single: Hr10c8 = 0
V-single: Vr9c9 = 1
P-single: Pr11c8 = nw
vertical-line-r9{c8 c9} ==> Ir9c8 = out
whip[1]: Pr10c9{ns .} ==> Br9c9 ≠ o, Br9c8 ≠ sw, Br9c8 ≠ swn, Br10c8 ≠ ne
B-single: Br10c8 = ew
B-single: Br9c9 = w
N-single: Nr9c9 = 1
w[1]-diagonal-1-1-in-{r9c9...r8c8}-with-no-se-outer-sides ==> Hr8c8 = 0, Vr8c8 = 0
w[1]-1-in-r8c8-asymmetric-se-corner ==> Pr8c8 ≠ ew, Pr8c8 ≠ ns
whip[1]: Hr8c8{0 .} ==> Pr8c8 ≠ se, Pr8c9 ≠ sw, Br7c8 ≠ ns, Br7c8 ≠ se, Br8c8 ≠ n
P-single: Pr8c8 = nw
H-single: Hr8c7 = 1
V-single: Vr7c8 = 1
whip[1]: Pr8c8{nw .} ==> Br8c7 ≠ e, Br7c7 ≠ e, Br7c7 ≠ n, Br7c7 ≠ o, Br7c7 ≠ ne, Br7c7 ≠ sw, Br7c7 ≠ swn, Br8c8 ≠ w
B-single: Br7c7 = esw
H-single: Hr7c7 = 0
V-single: Vr7c7 = 1
N-single: Nr7c7 = 3
P-single: Pr8c7 = ne
B-single: Br8c7 = n
w[1]-1-in-r5c9-asymmetric-sw-corner ==> Pr5c10 ≠ ew, Pr5c10 ≠ nw
whip[1]: Hr7c7{0 .} ==> Br6c7 ≠ s, Br6c7 ≠ ns, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c7 ≠ esw, Br6c7 ≠ swn, Br6c7 ≠ nes
whip[1]: Vr7c7{1 .} ==> Br7c6 ≠ w, Br7c6 ≠ nw
whip[1]: Br7c6{wne .} ==> Nr7c6 ≠ 1
whip[1]: Pr5c10{ne .} ==> Hr5c9 ≠ 1, Br4c9 ≠ s, Br4c9 ≠ ns, Br4c9 ≠ se, Br4c9 ≠ sw, Br4c9 ≠ esw, Br4c9 ≠ swn, Br4c9 ≠ nes, Br4c10 ≠ se, Br4c10 ≠ ew, Br4c10 ≠ wne, Br4c10 ≠ nes, Br5c9 ≠ n
H-single: Hr5c9 = 0
B-single: Br5c9 = w
V-single: Vr5c9 = 1
whip[1]: Vr5c9{1 .} ==> Br5c8 ≠ ns, Br5c8 ≠ nw, Br5c8 ≠ sw
whip[1]: Br5c8{ew .} ==> Pr5c8 ≠ se, Pr6c8 ≠ ne
whip[1]: Pr5c8{sw .} ==> Br5c7 ≠ se, Br5c7 ≠ ew, Br5c7 ≠ esw, Br5c7 ≠ e
whip[1]: Br4c10{esw .} ==> Pr4c10 ≠ se
whip[1]: Pr9c8{se .} ==> Br9c8 ≠ ne, Br9c8 ≠ ew
whip[1]: Br9c8{wne .} ==> Nr9c8 ≠ 2
whip[1]: Pr6c9{nw .} ==> Br6c8 ≠ ne, Br6c8 ≠ sw
whip[1]: Pr7c7{sw .} ==> Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ nes, Br6c6 ≠ o, Br6c6 ≠ n, Br6c6 ≠ w
whip[1]: Br6c6{wne .} ==> Nr6c6 ≠ 0
whip[1]: Br10c6{sw .} ==> Pr10c7 ≠ ns
whip[1]: Br10c7{nes .} ==> Nr10c7 ≠ 1
whip[1]: Pr6c2{o .} ==> Br5c1 ≠ s
whip[1]: Br5c1{w .} ==> Pr6c1 ≠ se
whip[1]: Pr5c1{ns .} ==> Vr4c1 ≠ 0, Br4c1 ≠ ne, Br4c1 ≠ ns, Br4c1 ≠ nes, Br4c1 ≠ n
V-single: Vr4c1 = 1
vertical-line-r4{c0 c1} ==> Ir4c1 = in
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
P-single: Pr3c2 = se
H-single: Hr3c2 = 1
V-single: Vr3c2 = 1
P-single: Pr4c1 = ns
vertical-line-r3{c1 c2} ==> Ir3c2 = out
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Hr4c1{0 .} ==> Pr4c2 ≠ ew, Pr4c2 ≠ sw, Br3c1 ≠ sw
B-single: Br3c1 = ew
whip[1]: Pr4c2{ns .} ==> Br3c2 ≠ s, Br3c2 ≠ se, Br3c2 ≠ o, Br3c2 ≠ e
whip[1]: Br3c2{wne .} ==> Pr3c3 ≠ o, Pr3c3 ≠ se, Pr4c3 ≠ nw, Nr3c2 ≠ 0, Nr3c2 ≠ 1
w[1]-1-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ ew, Pr4c4 ≠ ns
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ ne, Br3c4 ≠ sw, Br4c3 ≠ ne, Br4c3 ≠ sw, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ nes, Br3c3 ≠ e, Br3c3 ≠ s, Br4c4 ≠ n, Br4c4 ≠ w
whip[1]: Br3c3{w .} ==> Hr4c3 ≠ 1, Vr3c4 ≠ 1, Pr3c4 ≠ ns, Pr4c3 ≠ ne, Pr4c4 ≠ nw, Pr3c4 ≠ se, Pr3c4 ≠ sw, Pr4c3 ≠ se, Pr4c3 ≠ ew
V-single: Vr3c4 = 0
H-single: Hr4c3 = 0
P-single: Pr4c4 = se
H-single: Hr4c4 = 1
V-single: Vr4c4 = 1
whip[1]: Vr3c4{0 .} ==> Br3c4 ≠ nw, Br3c4 ≠ ew
whip[1]: Br3c4{se .} ==> Pr4c5 ≠ ns
whip[1]: Pr4c5{sw .} ==> Br4c4 ≠ se, Br4c5 ≠ nw, Br4c5 ≠ swn, Br4c5 ≠ wne, Br4c4 ≠ o, Br4c4 ≠ e, Br4c4 ≠ s
whip[1]: Br4c4{wne .} ==> Pr5c4 ≠ ew, Pr5c5 ≠ nw, Nr4c4 ≠ 0, Nr4c4 ≠ 1
whip[1]: Pr5c4{nw .} ==> Br4c3 ≠ ns, Br4c3 ≠ nw, Br5c4 ≠ nw, Br5c4 ≠ swn, Br5c4 ≠ wne
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ n, Br4c2 ≠ ns
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ o
B-single: Br2c2 = s
N-single: Nr2c2 = 1
whip[1]: Pr7c3{sw .} ==> Br7c2 ≠ s
whip[1]: Br7c2{wne .} ==> Pr7c2 ≠ o, Nr7c2 ≠ 1
whip[1]: Pr7c2{sw .} ==> Br7c1 ≠ w
whip[1]: Br7c1{wne .} ==> Nr7c1 ≠ 1
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ se
whip[1]: Pr5c3{ew .} ==> Br4c2 ≠ w
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 1
whip[1]: Pr3c5{ew .} ==> Br2c4 ≠ n
whip[1]: Br2c4{esw .} ==> Pr3c4 ≠ o, Nr2c4 ≠ 1
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ o
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c7{se .} ==> Br2c7 ≠ ns, Br2c7 ≠ ew, Br2c7 ≠ sw, Br2c7 ≠ esw, Br2c7 ≠ nes, Br2c7 ≠ w
whip[1]: Hr1c9{1 .} ==> Br1c9 ≠ w, Br0c9 ≠ o, Pr1c9 ≠ o, Pr1c9 ≠ sw, Br1c9 ≠ e, Br1c9 ≠ s
B-single: Br1c9 = n
H-single: Hr2c9 = 0
V-single: Vr1c9 = 0
V-single: Vr1c10 = 0
P-single: Pr2c11 = ns
H-single: Hr2c10 = 0
V-single: Vr1c11 = 1
w[1]-2-in-r1c10-open-sw-corner ==> Hr1c10 = 1
P-single: Pr3c11 = nw
H-single: Hr3c10 = 1
V-single: Vr3c11 = 0
P-single: Pr1c11 = sw
P-single: Pr1c9 = ew
H-single: Hr1c8 = 1
P-single: Pr1c10 = ew
P-single: Pr2c10 = o
V-single: Vr2c10 = 0
B-single: Br0c9 = s
no-vertical-line-r2{c9 c10} ==> Ir2c9 = in
horizontal-line-{r0 r1}c8 ==> Ir1c8 = in
no-vertical-line-r3{c10 c11} ==> Ir3c10 = out
horizontal-line-{r0 r1}c10 ==> Ir1c10 = in
different-colours-in-{r3 r4}c10 ==> Hr4c10 = 1
same-colour-in-r1{c7 c8} ==> Vr1c8 = 0
whip[1]: Hr2c9{0 .} ==> Br2c9 ≠ ns, Br2c9 ≠ wne
whip[1]: Br2c9{ew .} ==> Nr2c9 ≠ 3
whip[1]: Vr1c9{0 .} ==> Br1c8 ≠ ne, Br1c8 ≠ ew, Br1c8 ≠ esw, Br1c8 ≠ nes
whip[1]: Br1c8{sw .} ==> Nr1c8 ≠ 3
whip[1]: Vr1c10{0 .} ==> Br1c10 ≠ sw
B-single: Br1c10 = ne
whip[1]: Pr2c11{ns .} ==> Br2c10 ≠ ne, Br2c10 ≠ ns, Br2c10 ≠ nw, Br2c10 ≠ sw
whip[1]: Vr1c11{1 .} ==> Br1c11 ≠ o
B-single: Br1c11 = w
whip[1]: Hr1c10{1 .} ==> Br0c10 ≠ o
B-single: Br0c10 = s
whip[1]: Pr3c11{nw .} ==> Br2c10 ≠ ew, Br3c10 ≠ ne, Br3c10 ≠ ew, Br3c10 ≠ sw
B-single: Br3c10 = ns
V-single: Vr3c10 = 0
P-single: Pr4c11 = sw
P-single: Pr3c10 = ew
H-single: Hr3c9 = 1
P-single: Pr4c10 = ew
H-single: Hr4c9 = 1
V-single: Vr4c10 = 0
B-single: Br2c10 = se
no-vertical-line-r4{c9 c10} ==> Ir4c9 = in
no-horizontal-line-{r4 r5}c9 ==> Ir5c9 = in
no-vertical-line-r5{c9 c10} ==> Ir5c10 = in
no-horizontal-line-{r5 r6}c10 ==> Ir6c10 = in
no-vertical-line-r6{c9 c10} ==> Ir6c9 = in
vertical-line-r5{c8 c9} ==> Ir5c8 = out
horizontal-line-{r3 r4}c9 ==> Ir3c9 = out
same-colour-in-{r6 r7}c9 ==> Hr7c9 = 0
same-colour-in-{r6 r7}c10 ==> Hr7c10 = 0
different-colours-in-r6{c10 c11} ==> Hr6c11 = 1
different-colours-in-r5{c10 c11} ==> Hr5c11 = 1
same-colour-in-{r4 r5}c10 ==> Hr5c10 = 0
whip[1]: Vr3c10{0 .} ==> Br3c9 ≠ e, Br3c9 ≠ ne, Br3c9 ≠ se, Br3c9 ≠ ew, Br3c9 ≠ esw, Br3c9 ≠ wne, Br3c9 ≠ nes
whip[1]: Pr4c11{sw .} ==> Br4c10 ≠ e, Br4c10 ≠ esw
B-single: Br4c10 = ne
N-single: Nr4c10 = 2
P-single: Pr5c11 = ns
P-single: Pr5c10 = o
w[1]-1-in-r5c10-symmetric-nw-corner ==> Pr6c11 ≠ o
P-single: Pr6c11 = ns
w[1]-1-in-r6c10-asymmetric-ne-corner ==> Pr7c10 ≠ ew
P-single: Pr7c10 = o
w[1]-1-in-r6c9-symmetric-se-corner ==> Pr6c9 ≠ nw
P-single: Pr6c9 = ns
H-single: Hr6c8 = 0
V-single: Vr6c9 = 1
vertical-line-r6{c8 c9} ==> Ir6c8 = out
whip[1]: Pr5c11{ns .} ==> Br5c10 ≠ n
B-single: Br5c10 = e
whip[1]: Pr5c10{o .} ==> Br4c9 ≠ e, Br4c9 ≠ ne, Br4c9 ≠ ew, Br4c9 ≠ wne
whip[1]: Br4c9{nw .} ==> Nr4c9 ≠ 3
whip[1]: Pr6c11{ns .} ==> Br6c10 ≠ s
B-single: Br6c10 = e
P-single: Pr7c11 = ns
whip[1]: Pr7c11{ns .} ==> Br7c10 ≠ nes
B-single: Br7c10 = se
N-single: Nr7c10 = 2
whip[1]: Pr7c10{o .} ==> Br6c9 ≠ s, Br7c9 ≠ n, Br7c9 ≠ nw
B-single: Br6c9 = w
whip[1]: Pr7c9{nw .} ==> Br6c8 ≠ ns, Br6c8 ≠ nw
whip[1]: Br6c8{ew .} ==> Pr6c8 ≠ ew
whip[1]: Pr6c8{sw .} ==> Br5c8 ≠ se
whip[1]: Br7c9{w .} ==> Nr7c9 ≠ 2
whip[1]: Pr5c8{sw .} ==> Hr5c7 ≠ 0, Br5c7 ≠ sw, Br4c7 ≠ o, Br4c7 ≠ w, Br5c7 ≠ o, Br5c7 ≠ s, Br5c7 ≠ w
H-single: Hr5c7 = 1
whip[1]: Hr5c7{1 .} ==> Pr5c7 ≠ o, Pr5c7 ≠ ns, Pr5c7 ≠ nw, Pr5c7 ≠ sw
whip[1]: Pr5c7{ew .} ==> Br4c6 ≠ se, Br4c6 ≠ esw, Br4c6 ≠ nes, Br5c6 ≠ wne, Br5c6 ≠ nes, Br5c6 ≠ ne
whip[1]: Br5c7{nes .} ==> Nr5c7 ≠ 0
whip[1]: Br4c7{sw .} ==> Nr4c7 ≠ 0
whip[1]: Pr3c10{ew .} ==> Br3c9 ≠ w, Br3c9 ≠ s, Br3c9 ≠ o, Br2c9 ≠ ew, Br3c9 ≠ sw
B-single: Br2c9 = s
V-single: Vr2c9 = 0
N-single: Nr2c9 = 1
P-single: Pr2c9 = o
H-single: Hr2c8 = 0
no-horizontal-line-{r1 r2}c8 ==> Ir2c8 = in
whip[1]: Vr2c9{0 .} ==> Br2c8 ≠ e, Br2c8 ≠ ne, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ esw, Br2c8 ≠ wne, Br2c8 ≠ nes
whip[1]: Pr2c9{o .} ==> Br1c8 ≠ ns, Br1c8 ≠ sw, Br2c8 ≠ n, Br2c8 ≠ ns, Br2c8 ≠ nw, Br2c8 ≠ swn
whip[1]: Br2c8{sw .} ==> Pr2c8 ≠ ne, Pr2c8 ≠ se, Pr2c8 ≠ ew, Nr2c8 ≠ 3
whip[1]: Br1c8{w .} ==> Nr1c8 ≠ 2
N-single: Nr1c8 = 1
w[1]-1-in-r1c8-asymmetric-ne-corner ==> Pr2c8 ≠ nw, Pr2c8 ≠ ns
whip[1]: Pr2c8{sw .} ==> Br1c7 ≠ nes, Br2c7 ≠ nw, Br2c7 ≠ se, Br2c7 ≠ swn, Br1c7 ≠ ne, Br1c8 ≠ w
B-single: Br1c8 = n
P-single: Pr1c8 = ew
whip[1]: Br1c7{ns .} ==> Nr1c7 ≠ 3
whip[1]: Br2c7{wne .} ==> Pr3c7 ≠ ne, Pr3c8 ≠ o, Pr3c8 ≠ nw, Nr2c7 ≠ 2
w[1]-1-in-r3c6-asymmetric-ne-corner ==> Pr4c6 ≠ ew, Pr4c6 ≠ se
w[1]-1-in-r3c8-asymmetric-nw-corner ==> Pr4c9 ≠ ns, Pr4c9 ≠ ne
whip[1]: Pr4c9{se .} ==> Vr3c9 ≠ 1, Br3c9 ≠ nw, Br3c9 ≠ swn, Br3c8 ≠ e, Br4c9 ≠ n, Br4c9 ≠ w
V-single: Vr3c9 = 0
B-single: Br3c8 = n
H-single: Hr3c8 = 1
P-single: Pr3c9 = ew
horizontal-line-{r2 r3}c8 ==> Ir3c8 = out
no-vertical-line-r3{c7 c8} ==> Ir3c7 = out
no-horizontal-line-{r3 r4}c7 ==> Ir4c7 = out
no-vertical-line-r4{c7 c8} ==> Ir4c8 = out
horizontal-line-{r4 r5}c7 ==> Ir5c7 = in
different-colours-in-r5{c7 c8} ==> Hr5c8 = 1
P-single: Pr5c9 = ns
V-single: Vr4c9 = 1

XTD-LOOP[20]: Vr9c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr8c10-Hr8c10-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Hr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9- ==> Vr7c9-Vr8c9 = 0
w[1]-2-in-r7c8-open-se-corner ==> Hr7c8 = 1, Vr6c8 = 0
no-vertical-line-r6{c7 c8} ==> Ir6c7 = out
no-horizontal-line-{r6 r7}c7 ==> Ir7c7 = out
vertical-line-r7{c6 c7} ==> Ir7c6 = in
no-horizontal-line-{r7 r8}c6 ==> Ir8c6 = in
no-vertical-line-r8{c5 c6} ==> Ir8c5 = in
horizontal-line-{r7 r8}c5 ==> Ir7c5 = out
no-vertical-line-r8{c6 c7} ==> Ir8c7 = in
no-vertical-line-r8{c7 c8} ==> Ir8c8 = in
no-horizontal-line-{r7 r8}c8 ==> Ir7c8 = in
no-horizontal-line-{r8 r9}c7 ==> Ir9c7 = in
vertical-line-r9{c6 c7} ==> Ir9c6 = out
different-colours-in-{r9 r10}c6 ==> Hr10c6 = 1
w[1]-3-in-r9c6-closed-se-corner ==> Pr9c6 ≠ se
P-single: Pr8c5 = ne
V-single: Vr7c5 = 1
V-single: Vr8c5 = 0
P-single: Pr9c6 = ew
H-single: Hr9c5 = 1
V-single: Vr9c6 = 0
P-single: Pr11c6 = ew
H-single: Hr11c5 = 1
V-single: Vr10c6 = 0
P-single: Pr9c8 = se
H-single: Hr9c8 = 1
V-single: Vr9c8 = 1
P-single: Pr10c7 = nw
w[1]-1-in-r8c4-symmetric-ne-corner ==> Pr9c4 ≠ sw
P-single: Pr9c4 = ew
H-single: Hr9c4 = 1
V-single: Vr9c4 = 0
w[1]-1-in-r8c8-asymmetric-sw-corner ==> Pr8c9 ≠ ns
P-single: Pr7c8 = se
P-single: Pr8c9 = o

LOOP[4]: Vr7c5--Hr8c5-Vr7c6- ==> Hr7c5 = 0
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = out
no-vertical-line-r9{c3 c4} ==> Ir9c4 = out
no-vertical-line-r10{c5 c6} ==> Ir10c5 = in
no-vertical-line-r9{c5 c6} ==> Ir9c5 = out
different-colours-in-{r9 r10}c5 ==> Hr10c5 = 1

LOOP[6]: Hr10c5-Hr10c6-Vr9c7-Hr9c6-Hr9c5- ==> Vr9c5 = 0
same-colour-in-r10{c4 c5} ==> Vr10c5 = 0
P-single: Pr10c4 = ew
H-single: Hr10c4 = 1
P-single: Pr11c5 = ew

LOOP[14]: Vr8c2-Vr9c2-Hr10c2-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Vr9c7-Hr9c6-Hr9c5-Hr9c4-Hr9c3-Vr8c3- ==> Hr8c2 = 0
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
different-colours-in-r7{c1 c2} ==> Hr7c2 = 1

LOOP[16]: Vr7c2-Vr8c2-Vr9c2-Hr10c2-Hr10c3-Hr10c4-Hr10c5-Hr10c6-Vr9c7-Hr9c6-Hr9c5-Hr9c4-Hr9c3-Vr8c3-Vr7c3- ==> Hr7c2 = 0
w[1]-diagonal-1-1-in-{r6c2...r5c3}-with-no-sw-outer-sides ==> Hr5c3 = 0, Vr5c4 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r6 r7} ==> Hr7c3 = 0
no-horizontal-line-{r6 r7}c3 ==> Ir6c3 = in
no-horizontal-line-{r5 r6}c3 ==> Ir5c3 = in
no-vertical-line-r5{c3 c4} ==> Ir5c4 = in
no-horizontal-line-{r4 r5}c3 ==> Ir4c3 = in
no-horizontal-line-{r3 r4}c3 ==> Ir3c3 = in
no-vertical-line-r3{c3 c4} ==> Ir3c4 = in
horizontal-line-{r3 r4}c4 ==> Ir4c4 = out
no-horizontal-line-{r6 r7}c2 ==> Ir6c2 = out
no-vertical-line-r6{c1 c2} ==> Ir6c1 = out
no-horizontal-line-{r5 r6}c1 ==> Ir5c1 = out
no-vertical-line-r5{c1 c2} ==> Ir5c2 = out
different-colours-in-r5{c2 c3} ==> Hr5c3 = 1
same-colour-in-r5{c0 c1} ==> Vr5c1 = 0
different-colours-in-{r4 r5}c1 ==> Hr5c1 = 1
different-colours-in-{r6 r7}c1 ==> Hr7c1 = 1
different-colours-in-r6{c2 c3} ==> Hr6c3 = 1
different-colours-in-{r4 r5}c4 ==> Hr5c4 = 1

LOOP[4]: Hr5c4--Vr4c4-Hr4c4- ==> Vr4c5 = 0
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
same-colour-in-{r2 r3}c3 ==> Hr3c3 = 0
different-colours-in-r3{c2 c3} ==> Hr3c3 = 1

LOOP[4]: Vr3c3--Hr3c2-Vr3c2- ==> Hr4c2 = 0
no-horizontal-line-{r3 r4}c2 ==> Ir4c2 = out
same-colour-in-{r4 r5}c2 ==> Hr5c2 = 0
w[1]-diagonal-1-1-in-{r5c2...r6c3}-with-no-nw-outer-sides ==> Vr6c4 = 0
no-vertical-line-r6{c3 c4} ==> Ir6c4 = in
same-colour-in-{r6 r7}c4 ==> Hr7c4 = 0
different-colours-in-r6{c4 c5} ==> Hr6c5 = 1
same-colour-in-{r5 r6}c4 ==> Hr6c4 = 0
different-colours-in-r4{c2 c3} ==> Hr4c3 = 1
different-colours-in-r4{c1 c2} ==> Hr4c2 = 1
different-colours-in-{r5 r6}c7 ==> Hr6c7 = 1

LOOP[4]: Hr6c7--Vr5c8-Hr5c7- ==> Vr5c7 = 0
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
whip[1]: Hr3c8{1 .} ==> Br2c8 ≠ o, Br2c8 ≠ w
whip[1]: Br2c8{sw .} ==> Nr2c8 ≠ 0
whip[1]: Vr5c8{1 .} ==> Pr5c8 ≠ ew, Br5c7 ≠ n, Br5c7 ≠ ns, Br5c7 ≠ nw, Br5c7 ≠ swn, Br5c8 ≠ ne
P-single: Pr5c8 = sw
B-single: Br5c8 = ew
w[1]-1-in-r4c8-symmetric-sw-corner ==> Pr4c9 ≠ o
P-single: Pr4c9 = se
whip[1]: Pr5c8{sw .} ==> Br4c8 ≠ s
B-single: Br4c8 = e
whip[1]: Pr4c9{se .} ==> Br4c9 ≠ o, Br3c9 ≠ n
B-single: Br3c9 = ns
N-single: Nr3c9 = 2
B-single: Br4c9 = nw
N-single: Nr4c9 = 2
whip[1]: Br5c7{nes .} ==> Pr6c7 ≠ ne, Nr5c7 ≠ 1
whip[1]: Vr7c9{0 .} ==> Pr7c9 ≠ ns, Br7c8 ≠ ew, Br7c9 ≠ w
P-single: Pr6c8 = nw
P-single: Pr7c9 = nw
B-single: Br7c9 = o
N-single: Nr7c9 = 0
B-single: Br7c8 = nw
whip[1]: Pr6c8{nw .} ==> Br6c7 ≠ e, Br6c7 ≠ o, Br5c7 ≠ ne, Br5c7 ≠ wne, Br6c7 ≠ w, Br6c7 ≠ ne, Br6c7 ≠ ew, Br6c7 ≠ wne, Br6c8 ≠ ew
B-single: Br6c8 = se
B-single: Br5c7 = nes
N-single: Nr5c7 = 3
whip[1]: Pr5c7{ew .} ==> Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ esw, Br4c6 ≠ o, Br4c6 ≠ w, Br5c6 ≠ e
whip[1]: Br4c6{wne .} ==> Nr4c6 ≠ 0
whip[1]: Pr6c7{ew .} ==> Br6c6 ≠ wne, Br6c6 ≠ s, Br6c6 ≠ ne
whip[1]: Br6c6{ew .} ==> Pr6c6 ≠ se, Nr6c6 ≠ 3
whip[1]: Br6c7{nw .} ==> Nr6c7 ≠ 0, Nr6c7 ≠ 3
whip[1]: Vr8c9{0 .} ==> Pr9c9 ≠ ns, Br8c8 ≠ e, Br8c9 ≠ ew
P-single: Pr9c9 = sw
B-single: Br8c9 = e
N-single: Nr8c9 = 1
B-single: Br8c8 = s
whip[1]: Pr9c9{sw .} ==> Br9c8 ≠ e
B-single: Br9c8 = wne
N-single: Nr9c8 = 3
P-single: Pr10c8 = ns
whip[1]: Pr10c8{ns .} ==> Br9c7 ≠ sw, Br10c7 ≠ nes
B-single: Br10c7 = se
N-single: Nr10c7 = 2
B-single: Br9c7 = ew
whip[1]: Hr10c6{1 .} ==> Pr10c6 ≠ ns, Br9c6 ≠ wne, Br10c6 ≠ sw
P-single: Pr10c6 = ew
B-single: Br10c6 = ns
B-single: Br9c6 = nes
whip[1]: Pr10c6{ew .} ==> Br9c5 ≠ ew, Br10c5 ≠ ew
B-single: Br10c5 = ns
P-single: Pr10c5 = ew
B-single: Br9c5 = ns
P-single: Pr9c5 = ew
whip[1]: Pr10c5{ew .} ==> Br9c4 ≠ ew, Br10c4 ≠ se
B-single: Br10c4 = ns
B-single: Br9c4 = ns
whip[1]: Pr9c5{ew .} ==> Br8c4 ≠ e, Br8c5 ≠ nw
B-single: Br8c5 = ns
B-single: Br8c4 = s
whip[1]: Pr8c5{ne .} ==> Br7c4 ≠ n, Br7c4 ≠ o, Br7c5 ≠ se, Br7c5 ≠ nes
B-single: Br7c5 = esw
N-single: Nr7c5 = 3
whip[1]: Pr7c5{sw .} ==> Br6c4 ≠ se, Br6c4 ≠ esw, Br6c4 ≠ nes, Br6c5 ≠ sw, Br6c5 ≠ swn, Br6c4 ≠ o, Br6c4 ≠ n, Br6c5 ≠ s, Br6c5 ≠ ns
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Pr7c6{se .} ==> Br6c6 ≠ e
whip[1]: Br6c6{ew .} ==> Pr6c6 ≠ o, Pr6c6 ≠ nw, Nr6c6 ≠ 1
N-single: Nr6c6 = 2
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ esw, Br5c5 ≠ nes, Br5c5 ≠ o, Br5c5 ≠ n, Br5c5 ≠ w
whip[1]: Br5c5{wne .} ==> Nr5c5 ≠ 0
whip[1]: Br7c4{ne .} ==> Nr7c4 ≠ 0
whip[1]: Pr11c6{ew .} ==> Br11c5 ≠ o
B-single: Br11c5 = n
whip[1]: Pr9c4{ew .} ==> Br9c3 ≠ nes
B-single: Br9c3 = ns
N-single: Nr9c3 = 2
whip[1]: Hr8c2{0 .} ==> Pr8c2 ≠ se, Pr8c3 ≠ sw, Br7c2 ≠ ns, Br8c2 ≠ wne
P-single: Pr8c3 = ns
P-single: Pr8c2 = ns
B-single: Br8c2 = ew
N-single: Nr8c2 = 2
w[1]-1-in-r7c3-asymmetric-sw-corner ==> Pr7c4 ≠ ew
whip[1]: Pr8c3{ns .} ==> Br7c3 ≠ n
B-single: Br7c3 = w
whip[1]: Pr7c3{sw .} ==> Br6c3 ≠ s
whip[1]: Pr8c2{ns .} ==> Br7c1 ≠ nw
whip[1]: Br7c1{wne .} ==> Pr7c2 ≠ ew
whip[1]: Pr7c4{ne .} ==> Br6c4 ≠ s, Br6c4 ≠ ns
whip[1]: Hr7c2{0 .} ==> Pr7c2 ≠ se, Pr7c3 ≠ sw, Br6c2 ≠ s, Br7c2 ≠ wne
P-single: Pr7c3 = ns
P-single: Pr7c2 = sw
B-single: Br7c2 = ew
N-single: Nr7c2 = 2
B-single: Br6c2 = e
P-single: Pr6c3 = ns
w[1]-1-in-r6c3-asymmetric-nw-corner ==> Pr7c4 ≠ ne
P-single: Pr7c4 = o
w[1]-1-in-r5c3-asymmetric-sw-corner ==> Pr5c4 ≠ ns
P-single: Pr5c4 = ne
w[1]-1-in-r5c2-asymmetric-se-corner ==> Pr5c2 ≠ ew, Pr5c2 ≠ ne
w[1]-1-in-r6c1-asymmetric-se-corner ==> Pr6c1 ≠ ns
P-single: Pr6c1 = o
w[1]-1-in-r5c1-symmetric-sw-corner ==> Pr5c2 ≠ o
P-single: Pr5c2 = nw
w[1]-1-in-r6c3-asymmetric-sw-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ ns
whip[1]: Pr7c3{ns .} ==> Br6c3 ≠ e
B-single: Br6c3 = w
whip[1]: Pr7c2{sw .} ==> Br6c1 ≠ w, Br7c1 ≠ ew
B-single: Br7c1 = wne
N-single: Nr7c1 = 3
P-single: Pr7c1 = se
B-single: Br6c1 = s
whip[1]: Pr6c3{ns .} ==> Br5c3 ≠ e, Br5c3 ≠ n, Br5c2 ≠ n
B-single: Br5c2 = e
P-single: Pr5c3 = ns
B-single: Br5c3 = w
P-single: Pr6c4 = o
whip[1]: Pr5c3{ns .} ==> Br4c2 ≠ sw, Br4c2 ≠ esw, Br4c2 ≠ nes, Br4c3 ≠ se
B-single: Br4c3 = ew
whip[1]: Br4c2{ew .} ==> Nr4c2 ≠ 3
N-single: Nr4c2 = 2
P-single: Pr4c3 = ns
w[1]-1-in-r3c3-asymmetric-sw-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ nw
P-single: Pr3c4 = ne
H-single: Hr3c4 = 1
V-single: Vr2c4 = 1
vertical-line-r2{c3 c4} ==> Ir2c4 = out
different-colours-in-r2{c4 c5} ==> Hr2c5 = 1
w[1]-diagonal-1-1-in-{r2c5...r3c6}-with-no-se-inner-sides ==> Hr3c6 = 0

LOOP[5]: Vr1c4-Vr2c4-Hr3c4-Vr2c5- ==> Hr2c4 = 0
no-horizontal-line-{r2 r3}c6 ==> Ir3c6 = in
no-vertical-line-r3{c5 c6} ==> Ir3c5 = in
different-colours-in-{r3 r4}c5 ==> Hr4c5 = 1
different-colours-in-r3{c6 c7} ==> Hr3c7 = 1
whip[1]: Pr4c3{ns .} ==> Br3c3 ≠ n, Br3c2 ≠ nw, Br3c2 ≠ swn, Br4c2 ≠ ne
B-single: Br4c2 = ew
P-single: Pr4c2 = ns
B-single: Br3c2 = wne
N-single: Nr3c2 = 3
P-single: Pr3c3 = sw
B-single: Br3c3 = w
whip[1]: Pr4c2{ns .} ==> Br4c1 ≠ w, Br4c1 ≠ sw
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 1
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ s, Br2c3 ≠ se
B-single: Br2c3 = e
N-single: Nr2c3 = 1
P-single: Pr2c4 = ns
whip[1]: Pr2c4{ns .} ==> Br1c4 ≠ esw, Br2c4 ≠ ns
B-single: Br1c4 = ew
N-single: Nr1c4 = 2
P-single: Pr2c5 = ns
w[1]-1-in-r2c5-asymmetric-nw-corner ==> Pr3c6 ≠ ew
P-single: Pr3c6 = o
w[1]-1-in-r3c5-symmetric-ne-corner ==> Pr4c5 ≠ sw
P-single: Pr4c5 = ew
w[1]-1-in-r2c6-symmetric-sw-corner ==> Pr2c7 ≠ o
P-single: Pr2c7 = se
H-single: Hr2c7 = 1
V-single: Vr2c7 = 1
w[1]-1-in-r3c6-symmetric-nw-corner ==> Pr4c7 ≠ o
vertical-line-r2{c6 c7} ==> Ir2c7 = out
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
different-colours-in-r2{c7 c8} ==> Hr2c8 = 1
whip[1]: Pr2c5{ns .} ==> Br2c5 ≠ s
B-single: Br2c5 = w
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ n
whip[1]: Pr3c6{o .} ==> Br2c6 ≠ s, Br3c6 ≠ n
B-single: Br2c6 = e
P-single: Pr3c7 = ns
whip[1]: Pr3c7{ns .} ==> Br3c7 ≠ n, Br2c7 ≠ s, Br3c6 ≠ s
B-single: Br3c6 = e
H-single: Hr4c6 = 0
P-single: Pr4c7 = ns
V-single: Vr4c7 = 1
B-single: Br2c7 = wne
N-single: Nr2c7 = 3
P-single: Pr2c8 = sw
P-single: Pr3c8 = ne
B-single: Br3c7 = w

LOOP[92]: Hr6c7-Vr5c8-Hr5c7-Vr4c7-Vr3c7-Vr2c7-Hr2c7-Vr2c8-Hr3c8-Hr3c9-Hr3c10-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Vr3c2-Hr3c2-Vr3c3-Vr4c3-Vr5c3-Vr6c3-Vr7c3-Vr8c3-Hr9c3-Hr9c4-Hr9c5-Hr9c6-Vr9c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Hr10c2-Vr9c2-Vr8c2-Vr7c2-Hr7c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Vr10c8-Vr9c8-Hr9c8-Vr9c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr8c10-Hr8c10-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Hr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9-Hr7c8-Vr7c8-Hr8c7-Vr7c7- ==> Vr6c7 = 0
w[0]-adjacent-3-in-r7c7-nolines-north ==> Hr7c6 = 1
w[1]-diagonal-3-2-in-{r7c7...r6c6}-non-closed-nw-corner ==> Hr6c6 = 1

LOOP[98]: Hr6c6-Hr6c7-Vr5c8-Hr5c7-Vr4c7-Vr3c7-Vr2c7-Hr2c7-Vr2c8-Hr3c8-Hr3c9-Hr3c10-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Vr3c2-Hr3c2-Vr3c3-Vr4c3-Vr5c3-Vr6c3-Vr7c3-Vr8c3-Hr9c3-Hr9c4-Hr9c5-Hr9c6-Vr9c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Hr10c2-Vr9c2-Vr8c2-Vr7c2-Hr7c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Vr10c8-Vr9c8-Hr9c8-Vr9c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr8c10-Hr8c10-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Hr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9-Hr7c8-Vr7c8-Hr8c7-Vr7c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Vr6c5- ==> Hr6c5 = 0
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = out
horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
no-horizontal-line-{r4 r5}c6 ==> Ir4c6 = in
different-colours-in-r4{c5 c6} ==> Hr4c6 = 1

LOOP[6]: Vr4c6-Hr4c5-Hr4c4-Vr4c4-Hr5c4- ==> Hr5c5 = 0
different-colours-in-r5{c5 c6} ==> Hr5c6 = 1

LOOP[104]: Hr5c4-Vr4c4-Hr4c4-Hr4c5-Vr4c6-Vr5c6-Hr6c6-Hr6c7-Vr5c8-Hr5c7-Vr4c7-Vr3c7-Vr2c7-Hr2c7-Vr2c8-Hr3c8-Hr3c9-Hr3c10-Vr2c11-Vr1c11-Hr1c10-Hr1c9-Hr1c8-Hr1c7-Hr1c6-Hr1c5-Vr1c5-Vr2c5-Hr3c4-Vr2c4-Vr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Hr5c1-Vr4c2-Vr3c2-Hr3c2-Vr3c3-Vr4c3-Vr5c3-Vr6c3-Vr7c3-Vr8c3-Hr9c3-Hr9c4-Hr9c5-Hr9c6-Vr9c7-Hr10c6-Hr10c5-Hr10c4-Hr10c3-Hr10c2-Vr9c2-Vr8c2-Vr7c2-Hr7c1-Vr7c1-Vr8c1-Vr9c1-Vr10c1-Hr11c1-Hr11c2-Hr11c3-Hr11c4-Hr11c5-Hr11c6-Hr11c7-Vr10c8-Vr9c8-Hr9c8-Vr9c9-Vr10c9-Hr11c9-Hr11c10-Vr10c11-Vr9c11-Hr9c10-Vr8c10-Hr8c10-Vr7c11-Vr6c11-Vr5c11-Vr4c11-Hr4c10-Hr4c9-Vr4c9-Vr5c9-Vr6c9-Hr7c8-Vr7c8-Hr8c7-Vr7c7-Hr7c6-Vr7c6-Hr8c5-Vr7c5-Vr6c5- ==> Vr5c5 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+xtd-Loop, MOST COMPLEX RULE TRIED = W[1]

XXXOXXXXXX
XXXOXXOXXX
XOXXXXOOOO
XOXOOXOOXX
OOXXOXXOXX
OOXXOOOOXX
XOXXOXOXXX
XOXXXXXXXO
XOOOOOXOXX
XXXXXXXOXX

.———.———.———.   .———.———.———.———.———.———.
| 2   1   2 |   | 2   1           1   2 |
.   .   .   .   .   .   .———.   .   .   .
| 1         |   | 1   1 |   |         2 |
.   .———.   .———.   .   .   .———.———.———.
| 2 |   | 1   2   1   1 | 1   1       2
.   .   .   .———.———.   .   .   .———.———.
|   |   | 2 |       |   |     1 |       |
.———.   .   .———.   .   .———.   .   .   .
  1   1 | 1     |   |       | 2 | 1   1 |
.   .   .   .   .   .———.———.   .   .   .
  1   1 | 1     |             2 | 1   1 |
.———.   .   .   .   .———.   .———.   .   .
|   |   | 1     |   |   |   | 2         |
.   .   .   .   .———.   .———.   .   .———.
| 2 |   | 2   1   2   1   1   1     | 3
.   .   .———.———.———.———.   .———.   .———.
| 2 |             2   3 |   |   |     2 |
.   .———.———.———.———.———.   .   .   .   .
| 2   2   2       2   2     | 2 | 2   2 |
.———.———.———.———.———.———.———.   .———.———.

init-time = 5m 14.23s, solve-time = 2m 22.77s, total-time = 7m 37.0s
nb-facts=<Fact-191114>
Quasi-Loop max length = 104
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+xtd-Loop
***  Using CLIPS 6.32-r770
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
