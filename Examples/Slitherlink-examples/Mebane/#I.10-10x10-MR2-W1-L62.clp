Mellon rating = 2


(solve 
10 10 
0 . . 0 . . 0 1 1 0 
2 . . 2 . . 2 . . . 
2 . . 2 . . 1 . . . 
1 1 2 0 2 2 0 2 2 0 
. . . 1 . . 2 . . . 
. . . 1 . . 2 . . . 
0 2 1 0 1 1 0 2 2 0
. . . 2 . . 1 . . 1 
. . . 2 . . 1 . . 1
0 1 1 0 . . 0 . . 0 

)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

0 . . 0 . . 0 1 1 0
2 . . 2 . . 2 . . .
2 . . 2 . . 1 . . .
1 1 2 0 2 2 0 2 2 0
. . . 1 . . 2 . . .
. . . 1 . . 2 . . .
0 2 1 0 1 1 0 2 2 0
. . . 2 . . 1 . . 1
. . . 2 . . 1 . . 1
0 1 1 0 . . 0 . . 0

start init-grid-structure 0.034991979598999
start create-csp-variables
start create-labels 0.00136113166809082
start init-physical-csp-links 0.0117130279541016
start init-physical-non-csp-links 11.7113111019135
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.13437700271606
     start init-physical-BN-non-csp-links at local time 12.2917850017548
     start init-physical-BP-non-csp-links at local time 21.9103779792786
     end init-physical-BP-non-csp-links at local time 249.947297096252
end init-physical-non-csp-links 261.658662080765
start init-corner-B-c-values 261.693883895874
start init-outer-B-candidates 261.693938970566
start init-outer-I-candidates 261.694705963135
start init-H-candidates 261.695158004761
start init-V-candidates 261.698982954025
start init-P-candidates 261.702579021454
start init-inner-I-candidates 261.709141016006
start init-inner-N-and-B-candidates 261.711590051651
start solution 261.723174095154
entering BRT
w[0]-0-in-r10c10 ==> Hr11c10 = 0, Hr10c10 = 0, Vr10c11 = 0, Vr10c10 = 0
w[0]-0-in-r10c7 ==> Hr11c7 = 0, Hr10c7 = 0, Vr10c8 = 0, Vr10c7 = 0
w[0]-0-in-r10c4 ==> Hr11c4 = 0, Hr10c4 = 0, Vr10c5 = 0, Vr10c4 = 0
w[0]-0-in-r10c1 ==> Hr11c1 = 0, Hr10c1 = 0, Vr10c2 = 0, Vr10c1 = 0
w[0]-0-in-r7c10 ==> Hr8c10 = 0, Hr7c10 = 0, Vr7c11 = 0, Vr7c10 = 0
w[0]-0-in-r7c7 ==> Hr8c7 = 0, Hr7c7 = 0, Vr7c8 = 0, Vr7c7 = 0
w[0]-0-in-r7c4 ==> Hr8c4 = 0, Hr7c4 = 0, Vr7c5 = 0, Vr7c4 = 0
w[0]-0-in-r7c1 ==> Hr8c1 = 0, Hr7c1 = 0, Vr7c2 = 0, Vr7c1 = 0
w[0]-0-in-r4c10 ==> Hr5c10 = 0, Hr4c10 = 0, Vr4c11 = 0, Vr4c10 = 0
w[0]-0-in-r4c7 ==> Hr5c7 = 0, Hr4c7 = 0, Vr4c8 = 0, Vr4c7 = 0
w[0]-0-in-r4c4 ==> Hr5c4 = 0, Hr4c4 = 0, Vr4c5 = 0, Vr4c4 = 0
w[0]-0-in-r1c10 ==> Hr2c10 = 0, Hr1c10 = 0, Vr1c11 = 0, Vr1c10 = 0
w[0]-0-in-r1c7 ==> Hr2c7 = 0, Hr1c7 = 0, Vr1c8 = 0, Vr1c7 = 0
w[0]-0-in-r1c4 ==> Hr2c4 = 0, Hr1c4 = 0, Vr1c5 = 0, Vr1c4 = 0
w[0]-0-in-r1c1 ==> Hr2c1 = 0, Hr1c1 = 0, Vr1c2 = 0, Vr1c1 = 0
w[1]-adjacent-1-1-on-edge-in-r10{c2 c3} ==> Vr10c3 = 0
w[1]-adjacent-1-1-on-edge-in-r1{c8 c9} ==> Vr1c9 = 0
w[1]-adjacent-1-1-on-edge-in-c10{r8 r9} ==> Hr9c10 = 0
P-single: Pr2c2 = se
H-single: Hr2c2 = 1
V-single: Vr2c2 = 1
P-single: Pr3c2 = nw
H-single: Hr3c1 = 1
H-single: Hr3c2 = 0
V-single: Vr3c2 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r4{c1 c2} ==> Vr4c2 = 0
P-single: Pr10c11 = o
V-single: Vr9c11 = 0
P-single: Pr8c11 = o
V-single: Vr8c11 = 0
P-single: Pr7c11 = o
V-single: Vr6c11 = 0
P-single: Pr5c11 = o
V-single: Vr5c11 = 0
P-single: Pr4c11 = o
V-single: Vr3c11 = 0
P-single: Pr2c11 = o
V-single: Vr2c11 = 0
P-single: Pr10c1 = o
V-single: Vr9c1 = 0
P-single: Pr8c1 = o
V-single: Vr8c1 = 0
P-single: Pr7c1 = o
V-single: Vr6c1 = 0
P-single: Pr2c1 = o
V-single: Vr2c1 = 0
P-single: Pr11c10 = o
H-single: Hr11c9 = 0
P-single: Pr11c8 = o
H-single: Hr11c8 = 0
P-single: Pr11c7 = o
H-single: Hr11c6 = 0
P-single: Pr11c5 = o
H-single: Hr11c5 = 0
P-single: Pr11c4 = o
H-single: Hr11c3 = 0
P-single: Pr11c2 = o
H-single: Hr11c2 = 0
P-single: Pr1c10 = o
H-single: Hr1c9 = 0
P-single: Pr1c8 = o
H-single: Hr1c8 = 0
P-single: Pr1c7 = o
H-single: Hr1c6 = 0
P-single: Pr1c5 = o
H-single: Hr1c5 = 0
P-single: Pr1c4 = o
H-single: Hr1c3 = 0
P-single: Pr1c2 = o
H-single: Hr1c2 = 0
P-single: Pr11c11 = o
P-single: Pr11c1 = o
P-single: Pr1c11 = o
P-single: Pr1c1 = o
w[1]-1-in-r10c3-symmetric-se-corner ==> Pr10c3 ≠ se, Pr10c3 ≠ nw, Pr10c3 ≠ o
w[1]-1-in-r10c2-symmetric-sw-corner ==> Pr10c3 ≠ sw, Pr10c3 ≠ ne
w[1]-1-in-r9c10-symmetric-se-corner ==> Pr9c10 ≠ se, Pr9c10 ≠ nw, Pr9c10 ≠ o
w[1]-1-in-r8c10-symmetric-ne-corner ==> Pr9c10 ≠ sw, Pr9c10 ≠ ne
w[1]-1-in-r1c9-symmetric-ne-corner ==> Pr2c9 ≠ sw, Pr2c9 ≠ ne, Pr2c9 ≠ o
w[1]-1-in-r1c8-symmetric-nw-corner ==> Pr2c9 ≠ se, Pr2c9 ≠ nw
entering level Loop with <Fact-93114>
entering level Col with <Fact-93192>
no-vertical-line-r10{c10 c11} ==> Ir10c10 = out
no-vertical-line-r10{c9 c10} ==> Ir10c9 = out
no-horizontal-line-{r9 r10}c10 ==> Ir9c10 = out
no-horizontal-line-{r8 r9}c10 ==> Ir8c10 = out
no-horizontal-line-{r7 r8}c10 ==> Ir7c10 = out
no-vertical-line-r7{c9 c10} ==> Ir7c9 = out
no-horizontal-line-{r6 r7}c10 ==> Ir6c10 = out
no-vertical-line-r5{c10 c11} ==> Ir5c10 = out
no-horizontal-line-{r4 r5}c10 ==> Ir4c10 = out
no-vertical-line-r4{c9 c10} ==> Ir4c9 = out
no-horizontal-line-{r3 r4}c10 ==> Ir3c10 = out
no-vertical-line-r2{c10 c11} ==> Ir2c10 = out
no-horizontal-line-{r1 r2}c10 ==> Ir1c10 = out
no-vertical-line-r1{c9 c10} ==> Ir1c9 = out
no-vertical-line-r1{c8 c9} ==> Ir1c8 = out
no-vertical-line-r1{c7 c8} ==> Ir1c7 = out
no-vertical-line-r1{c6 c7} ==> Ir1c6 = out
no-horizontal-line-{r1 r2}c7 ==> Ir2c7 = out
no-vertical-line-r10{c0 c1} ==> Ir10c1 = out
no-vertical-line-r10{c1 c2} ==> Ir10c2 = out
no-vertical-line-r10{c2 c3} ==> Ir10c3 = out
no-vertical-line-r10{c3 c4} ==> Ir10c4 = out
no-vertical-line-r10{c4 c5} ==> Ir10c5 = out
no-horizontal-line-{r9 r10}c4 ==> Ir9c4 = out
no-horizontal-line-{r9 r10}c1 ==> Ir9c1 = out
no-vertical-line-r8{c0 c1} ==> Ir8c1 = out
no-horizontal-line-{r7 r8}c1 ==> Ir7c1 = out
no-vertical-line-r7{c1 c2} ==> Ir7c2 = out
no-horizontal-line-{r6 r7}c1 ==> Ir6c1 = out
no-vertical-line-r2{c0 c1} ==> Ir2c1 = out
no-horizontal-line-{r1 r2}c1 ==> Ir1c1 = out
no-vertical-line-r1{c1 c2} ==> Ir1c2 = out
horizontal-line-{r1 r2}c2 ==> Ir2c2 = in
no-horizontal-line-{r2 r3}c2 ==> Ir3c2 = in
no-vertical-line-r3{c1 c2} ==> Ir3c1 = in
no-horizontal-line-{r10 r11}c8 ==> Ir10c8 = out
no-vertical-line-r10{c7 c8} ==> Ir10c7 = out
no-vertical-line-r10{c6 c7} ==> Ir10c6 = out
no-horizontal-line-{r9 r10}c7 ==> Ir9c7 = out
no-horizontal-line-{r0 r1}c5 ==> Ir1c5 = out
no-vertical-line-r1{c4 c5} ==> Ir1c4 = out
no-vertical-line-r1{c3 c4} ==> Ir1c3 = out
no-horizontal-line-{r1 r2}c4 ==> Ir2c4 = out
same-colour-in-r1{c2 c3} ==> Vr1c3 = 0
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
same-colour-in-r10{c5 c6} ==> Vr10c6 = 0
same-colour-in-r10{c8 c9} ==> Vr10c9 = 0
different-colours-in-r3{c0 c1} ==> Hr3c1 = 1
same-colour-in-{r8 r9}c1 ==> Hr9c1 = 0
same-colour-in-{r2 r3}c10 ==> Hr3c10 = 0
same-colour-in-{r5 r6}c10 ==> Hr6c10 = 0
Starting_init_links_with_<Fact-93256>
2126 candidates, 7102 csp-links and 25849 links. Density = 1.14%
starting non trivial part of solution
Entering_level_W1_with_<Fact-159163>
whip[1]: Hr6c10{0 .} ==> Br6c10 ≠ nes, Pr6c11 ≠ nw, Pr6c11 ≠ sw, Pr6c10 ≠ ne, Pr6c10 ≠ se, Pr6c10 ≠ ew, Br5c10 ≠ s, Br5c10 ≠ ns, Br5c10 ≠ se, Br5c10 ≠ sw, Br5c10 ≠ esw, Br5c10 ≠ swn, Br5c10 ≠ nes, Br6c10 ≠ n, Br6c10 ≠ ne, Br6c10 ≠ ns, Br6c10 ≠ nw, Br6c10 ≠ swn, Br6c10 ≠ wne
whip[1]: Hr3c10{0 .} ==> Br3c10 ≠ nes, Pr3c11 ≠ nw, Pr3c11 ≠ sw, Pr3c10 ≠ ne, Pr3c10 ≠ se, Pr3c10 ≠ ew, Br2c10 ≠ s, Br2c10 ≠ ns, Br2c10 ≠ se, Br2c10 ≠ sw, Br2c10 ≠ esw, Br2c10 ≠ swn, Br2c10 ≠ nes, Br3c10 ≠ n, Br3c10 ≠ ne, Br3c10 ≠ ns, Br3c10 ≠ nw, Br3c10 ≠ swn, Br3c10 ≠ wne
whip[1]: Hr9c1{0 .} ==> Br9c1 ≠ nes, Pr9c1 ≠ ne, Pr9c1 ≠ se, Pr9c2 ≠ nw, Pr9c2 ≠ ew, Pr9c2 ≠ sw, Br8c1 ≠ s, Br8c1 ≠ ns, Br8c1 ≠ se, Br8c1 ≠ sw, Br8c1 ≠ esw, Br8c1 ≠ swn, Br8c1 ≠ nes, Br9c1 ≠ n, Br9c1 ≠ ne, Br9c1 ≠ ns, Br9c1 ≠ nw, Br9c1 ≠ swn, Br9c1 ≠ wne
whip[1]: Vr3c1{1 .} ==> Br3c1 ≠ se, Br3c0 ≠ o, Pr4c1 ≠ se, Br3c1 ≠ ne, Br3c1 ≠ ns
P-single: Pr4c1 = ns
H-single: Hr4c1 = 0
V-single: Vr4c1 = 1
B-single: Br3c0 = e
w[1]-1-in-r4c1-asymmetric-nw-corner ==> Pr5c2 ≠ sw, Pr5c2 ≠ ew, Pr5c2 ≠ ns, Pr5c2 ≠ ne
vertical-line-r4{c0 c1} ==> Ir4c1 = in
no-vertical-line-r4{c1 c2} ==> Ir4c2 = in
same-colour-in-{r3 r4}c2 ==> Hr4c2 = 0
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ e, Br4c1 ≠ n, Br3c1 ≠ sw, Br4c1 ≠ s
B-single: Br4c1 = w
H-single: Hr5c1 = 0
P-single: Pr5c1 = ns
V-single: Vr5c1 = 1
vertical-line-r5{c0 c1} ==> Ir5c1 = in
different-colours-in-{r5 r6}c1 ==> Hr6c1 = 1
whip[1]: Hr5c1{0 .} ==> Br5c1 ≠ n, Br5c1 ≠ ne, Br5c1 ≠ ns, Br5c1 ≠ nw, Br5c1 ≠ swn, Br5c1 ≠ wne, Br5c1 ≠ nes
whip[1]: Pr5c1{ns .} ==> Br5c1 ≠ e, Br5c1 ≠ o, Br5c1 ≠ s, Br5c1 ≠ se
whip[1]: Br5c1{esw .} ==> Pr6c1 ≠ o, Pr6c1 ≠ se, Nr5c1 ≠ 0
whip[1]: Pr6c1{ns .} ==> Br6c1 ≠ s, Br6c1 ≠ nw, Br6c1 ≠ se, Br6c1 ≠ swn, Br6c1 ≠ wne, Br6c1 ≠ o, Br6c1 ≠ e
whip[1]: Br6c1{nes .} ==> Nr6c1 ≠ 0
whip[1]: Vr5c1{1 .} ==> Br5c0 ≠ o
B-single: Br5c0 = e
whip[1]: Hr6c1{1 .} ==> Pr6c1 ≠ ns, Pr6c2 ≠ o, Pr6c2 ≠ ne, Pr6c2 ≠ ns, Pr6c2 ≠ se, Br5c1 ≠ w, Br5c1 ≠ ew, Br6c1 ≠ w, Br6c1 ≠ ew, Br6c1 ≠ sw, Br6c1 ≠ esw
P-single: Pr6c1 = ne
whip[1]: Br5c1{esw .} ==> Nr5c1 ≠ 1
whip[1]: Pr6c2{sw .} ==> Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br6c2 ≠ nw, Br6c2 ≠ swn, Br6c2 ≠ wne
whip[1]: Pr4c2{ne .} ==> Br3c2 ≠ s, Br3c2 ≠ w, Br3c2 ≠ ns, Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ ew, Br3c2 ≠ wne, Br3c2 ≠ nes, Br4c2 ≠ w
whip[1]: Br4c2{s .} ==> Pr4c3 ≠ sw, Pr5c3 ≠ nw
whip[1]: Pr5c3{ew .} ==> Br5c2 ≠ wne, Br5c2 ≠ nes, Br5c3 ≠ se, Br4c3 ≠ ne, Br5c2 ≠ ne, Br5c3 ≠ o, Br5c3 ≠ e, Br5c3 ≠ s
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Br5c2{ew .} ==> Nr5c2 ≠ 3
whip[1]: Pr4c3{ew .} ==> Br3c2 ≠ esw, Br4c3 ≠ se, Br3c3 ≠ o, Br3c3 ≠ n, Br3c3 ≠ e, Br3c3 ≠ ne
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Pr5c2{se .} ==> Br5c2 ≠ ns, Br5c2 ≠ ew, Br5c2 ≠ n, Br5c2 ≠ w
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o
B-single: Br4c0 = e
whip[1]: Hr4c2{0 .} ==> Pr4c2 ≠ ne, Pr4c3 ≠ ew, Br3c2 ≠ sw, Br3c2 ≠ swn, Br4c2 ≠ n
P-single: Pr3c1 = se
P-single: Pr4c2 = o
w[1]-1-in-r4c2-symmetric-nw-corner ==> Pr5c3 ≠ se
whip[1]: Pr3c1{se .} ==> Br2c1 ≠ ne, Br2c1 ≠ nw, Br2c1 ≠ ew, Br2c1 ≠ sw, Br3c1 ≠ ew
B-single: Br3c1 = nw
whip[1]: Pr5c3{ew .} ==> Br5c3 ≠ nw, Br5c3 ≠ swn, Br5c3 ≠ wne
whip[1]: Br3c2{ne .} ==> Nr3c2 ≠ 3
whip[1]: Vr10c9{0 .} ==> Br10c9 ≠ wne, Pr11c9 ≠ ne, Pr11c9 ≠ nw, Pr10c9 ≠ ns, Pr10c9 ≠ se, Pr10c9 ≠ sw, Br10c8 ≠ e, Br10c8 ≠ ne, Br10c8 ≠ se, Br10c8 ≠ ew, Br10c8 ≠ esw, Br10c8 ≠ wne, Br10c8 ≠ nes, Br10c9 ≠ w, Br10c9 ≠ nw, Br10c9 ≠ ew, Br10c9 ≠ sw, Br10c9 ≠ esw, Br10c9 ≠ swn
whip[1]: Vr10c6{0 .} ==> Br10c6 ≠ wne, Pr11c6 ≠ ne, Pr11c6 ≠ nw, Pr10c6 ≠ ns, Pr10c6 ≠ se, Pr10c6 ≠ sw, Br10c5 ≠ e, Br10c5 ≠ ne, Br10c5 ≠ se, Br10c5 ≠ ew, Br10c5 ≠ esw, Br10c5 ≠ wne, Br10c5 ≠ nes, Br10c6 ≠ w, Br10c6 ≠ nw, Br10c6 ≠ ew, Br10c6 ≠ sw, Br10c6 ≠ esw, Br10c6 ≠ swn
whip[1]: Vr1c6{0 .} ==> Br1c6 ≠ wne, Pr1c6 ≠ se, Pr1c6 ≠ sw, Pr2c6 ≠ ne, Pr2c6 ≠ ns, Pr2c6 ≠ nw, Br1c5 ≠ e, Br1c5 ≠ ne, Br1c5 ≠ se, Br1c5 ≠ ew, Br1c5 ≠ esw, Br1c5 ≠ wne, Br1c5 ≠ nes, Br1c6 ≠ w, Br1c6 ≠ nw, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn
whip[1]: Vr1c3{0 .} ==> Br1c3 ≠ wne, Pr1c3 ≠ se, Pr1c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ ns, Pr2c3 ≠ nw, Br1c2 ≠ e, Br1c2 ≠ ne, Br1c2 ≠ se, Br1c2 ≠ ew, Br1c2 ≠ esw, Br1c2 ≠ wne, Br1c2 ≠ nes, Br1c3 ≠ w, Br1c3 ≠ nw, Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ swn
whip[1]: Pr11c1{o .} ==> Br11c1 ≠ n
B-single: Br11c1 = o
whip[1]: Pr11c11{o .} ==> Br11c10 ≠ n
B-single: Br11c10 = o
whip[1]: Hr1c2{0 .} ==> Br1c2 ≠ swn, Br0c2 ≠ s, Pr1c3 ≠ ew, Br1c2 ≠ n, Br1c2 ≠ ns, Br1c2 ≠ nw
P-single: Pr1c3 = o
B-single: Br0c2 = o
whip[1]: Pr1c3{o .} ==> Br1c3 ≠ n, Br1c3 ≠ ne, Br1c3 ≠ ns, Br1c3 ≠ nes
whip[1]: Br1c3{se .} ==> Nr1c3 ≠ 3
whip[1]: Br1c2{sw .} ==> Nr1c2 ≠ 3
whip[1]: Pr1c2{o .} ==> Br1c2 ≠ sw, Br1c2 ≠ w
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 2
whip[1]: Hr1c3{0 .} ==> Br0c3 ≠ s
B-single: Br0c3 = o
whip[1]: Pr1c4{o .} ==> Br1c3 ≠ se, Br1c3 ≠ e
whip[1]: Br1c3{s .} ==> Nr1c3 ≠ 2
whip[1]: Hr1c5{0 .} ==> Br1c5 ≠ swn, Br0c5 ≠ s, Pr1c6 ≠ ew, Br1c5 ≠ n, Br1c5 ≠ ns, Br1c5 ≠ nw
P-single: Pr1c6 = o
B-single: Br0c5 = o
whip[1]: Pr1c6{o .} ==> Br1c6 ≠ n, Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ nes
whip[1]: Br1c6{se .} ==> Nr1c6 ≠ 3
whip[1]: Br1c5{sw .} ==> Nr1c5 ≠ 3
whip[1]: Pr1c5{o .} ==> Br1c5 ≠ sw, Br1c5 ≠ w
whip[1]: Br1c5{s .} ==> Nr1c5 ≠ 2
whip[1]: Hr1c6{0 .} ==> Br0c6 ≠ s
B-single: Br0c6 = o
whip[1]: Pr1c7{o .} ==> Br1c6 ≠ se, Br1c6 ≠ e
whip[1]: Br1c6{s .} ==> Nr1c6 ≠ 2
whip[1]: Hr1c8{0 .} ==> Br1c8 ≠ n, Br0c8 ≠ s, Pr1c9 ≠ ew, Pr1c9 ≠ sw
B-single: Br0c8 = o
w[1]-1-in-r1c9-symmetric-nw-corner ==> Pr2c10 ≠ o
P-single: Pr2c10 = sw
H-single: Hr2c9 = 1
V-single: Vr2c10 = 1
vertical-line-r2{c9 c10} ==> Ir2c9 = in
whip[1]: Pr2c10{sw .} ==> Br2c10 ≠ ne, Br2c10 ≠ e, Br2c10 ≠ n, Br2c10 ≠ o, Br2c9 ≠ ns, Br2c9 ≠ w, Br2c9 ≠ s, Br2c9 ≠ e, Br2c9 ≠ n, Br2c9 ≠ o, Br1c9 ≠ w, Br1c9 ≠ e, Br1c9 ≠ n, Br2c9 ≠ nw, Br2c9 ≠ se, Br2c9 ≠ ew, Br2c9 ≠ sw, Br2c9 ≠ esw, Br2c9 ≠ swn, Br2c10 ≠ nw, Br2c10 ≠ wne
B-single: Br1c9 = s
P-single: Pr1c9 = o
P-single: Pr2c9 = ew
H-single: Hr2c8 = 1
V-single: Vr2c9 = 0
w[1]-1-in-r1c8-symmetric-ne-corner ==> Pr2c8 ≠ o
P-single: Pr2c8 = se
V-single: Vr2c8 = 1
vertical-line-r2{c7 c8} ==> Ir2c8 = in
whip[1]: Pr1c9{o .} ==> Br1c8 ≠ e
whip[1]: Pr2c9{ew .} ==> Br2c8 ≠ ne, Br2c8 ≠ w, Br2c8 ≠ s, Br2c8 ≠ e, Br2c8 ≠ o, Br1c8 ≠ w, Br2c8 ≠ se, Br2c8 ≠ ew, Br2c8 ≠ sw, Br2c8 ≠ esw, Br2c8 ≠ wne, Br2c8 ≠ nes, Br2c9 ≠ wne
B-single: Br1c8 = s
whip[1]: Br2c9{nes .} ==> Pr3c9 ≠ ne, Pr3c9 ≠ ns, Pr3c9 ≠ nw, Pr3c10 ≠ o, Pr3c10 ≠ sw, Nr2c9 ≠ 0, Nr2c9 ≠ 1
whip[1]: Pr3c10{nw .} ==> Br3c9 ≠ w, Br3c9 ≠ ne, Br3c9 ≠ sw, Br3c9 ≠ wne, Br3c9 ≠ nes, Br3c9 ≠ o, Br3c9 ≠ s
whip[1]: Br3c9{swn .} ==> Nr3c9 ≠ 0
whip[1]: Br2c8{swn .} ==> Nr2c8 ≠ 0
whip[1]: Pr2c8{se .} ==> Br2c8 ≠ n, Br2c7 ≠ ne, Br2c7 ≠ ns, Br2c7 ≠ nw, Br2c7 ≠ sw, Br2c8 ≠ ns
whip[1]: Br2c8{swn .} ==> Pr3c8 ≠ ew, Pr3c8 ≠ sw, Nr2c8 ≠ 1
whip[1]: Pr3c8{nw .} ==> Br3c8 ≠ nw, Br3c8 ≠ swn, Br3c8 ≠ wne
whip[1]: Pr3c7{ew .} ==> Br3c6 ≠ sw, Br3c6 ≠ wne, Br3c6 ≠ nes, Br3c6 ≠ o, Br3c6 ≠ s, Br3c6 ≠ w, Br3c6 ≠ ne
whip[1]: Br3c6{swn .} ==> Nr3c6 ≠ 0
whip[1]: Br2c10{ew .} ==> Nr2c10 ≠ 0, Nr2c10 ≠ 3
whip[1]: Hr1c9{0 .} ==> Br0c9 ≠ s
B-single: Br0c9 = o
whip[1]: Hr11c2{0 .} ==> Br10c2 ≠ s, Br11c2 ≠ n, Pr11c3 ≠ nw, Pr11c3 ≠ ew
B-single: Br11c2 = o
w[1]-1-in-r10c3-symmetric-sw-corner ==> Pr10c4 ≠ o
P-single: Pr10c4 = nw
H-single: Hr10c3 = 1
V-single: Vr9c4 = 1
vertical-line-r9{c3 c4} ==> Ir9c3 = in
whip[1]: Pr10c4{nw .} ==> Br10c3 ≠ s, Br10c3 ≠ e, Br9c3 ≠ s, Br9c3 ≠ e, Br9c3 ≠ n, Br9c3 ≠ o, Br9c3 ≠ w, Br9c3 ≠ ne, Br9c3 ≠ ns, Br9c3 ≠ nw, Br9c3 ≠ ew, Br9c3 ≠ sw, Br9c3 ≠ swn, Br9c3 ≠ wne, Br9c4 ≠ ne, Br9c4 ≠ ns, Br9c4 ≠ se, Br9c4 ≠ sw, Br10c3 ≠ w
B-single: Br10c3 = n
P-single: Pr11c3 = o
P-single: Pr10c3 = ew
H-single: Hr10c2 = 1
V-single: Vr9c3 = 0
w[1]-1-in-r10c2-symmetric-se-corner ==> Pr10c2 ≠ o
P-single: Pr10c2 = ne
V-single: Vr9c2 = 1
vertical-line-r9{c1 c2} ==> Ir9c2 = in
whip[1]: Pr11c3{o .} ==> Br11c3 ≠ n, Br10c2 ≠ e
B-single: Br11c3 = o
whip[1]: Pr10c3{ew .} ==> Br10c2 ≠ w, Br9c2 ≠ ne, Br9c2 ≠ w, Br9c2 ≠ e, Br9c2 ≠ n, Br9c2 ≠ o, Br9c2 ≠ nw, Br9c2 ≠ se, Br9c2 ≠ ew, Br9c2 ≠ esw, Br9c2 ≠ wne, Br9c2 ≠ nes, Br9c3 ≠ esw
B-single: Br10c2 = n
whip[1]: Br9c3{nes .} ==> Pr9c3 ≠ ns, Pr9c3 ≠ se, Pr9c3 ≠ sw, Pr9c4 ≠ ne, Pr9c4 ≠ ew, Nr9c3 ≠ 0, Nr9c3 ≠ 1
P-single: Pr8c5 = se
H-single: Hr8c5 = 1
V-single: Vr8c5 = 1
w[1]-1-in-r7c5-asymmetric-sw-corner ==> Pr7c6 ≠ ew, Pr7c6 ≠ se, Pr7c6 ≠ nw, Pr7c6 ≠ ns
whip[1]: Pr8c5{se .} ==> Br8c5 ≠ w, Br8c5 ≠ s, Br8c5 ≠ e, Br8c5 ≠ n, Br8c5 ≠ o, Br7c5 ≠ w, Br7c5 ≠ e, Br7c5 ≠ n, Br8c4 ≠ ne, Br8c4 ≠ ns, Br8c4 ≠ nw, Br8c4 ≠ sw, Br8c5 ≠ ne, Br8c5 ≠ ns, Br8c5 ≠ se, Br8c5 ≠ ew, Br8c5 ≠ sw, Br8c5 ≠ esw, Br8c5 ≠ nes
B-single: Br7c5 = s
H-single: Hr7c5 = 0
V-single: Vr7c6 = 0
w[1]-diagonal-1-1-in-{r7c5...r6c4}-with-no-nw-inner-sides ==> Vr6c5 = 0
P-single: Pr7c5 = o
w[1]-1-in-r6c4-symmetric-se-corner ==> Pr6c4 ≠ se, Pr6c4 ≠ nw, Pr6c4 ≠ o
whip[1]: Hr7c5{0 .} ==> Br6c5 ≠ s, Br6c5 ≠ ns, Br6c5 ≠ se, Br6c5 ≠ sw, Br6c5 ≠ esw, Br6c5 ≠ swn, Br6c5 ≠ nes
whip[1]: Vr7c6{0 .} ==> Br7c6 ≠ w
whip[1]: Vr6c5{0 .} ==> Pr6c5 ≠ ns, Pr6c5 ≠ se, Pr6c5 ≠ sw, Br6c4 ≠ e, Br6c5 ≠ w, Br6c5 ≠ nw, Br6c5 ≠ ew, Br6c5 ≠ wne
whip[1]: Br6c5{ne .} ==> Nr6c5 ≠ 3
whip[1]: Pr7c5{o .} ==> Br6c4 ≠ s
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ esw, Br5c3 ≠ nes, Br5c3 ≠ n, Br5c3 ≠ w
whip[1]: Br5c3{sw .} ==> Nr5c3 ≠ 1, Nr5c3 ≠ 3
N-single: Nr5c3 = 2
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ se, Br5c3 ≠ ew, Br6c2 ≠ se, Br6c2 ≠ ew, Br6c2 ≠ esw, Br6c3 ≠ nw, Br6c3 ≠ swn, Br6c3 ≠ wne, Br5c3 ≠ ns, Br6c2 ≠ n, Br6c2 ≠ e, Br6c2 ≠ ns
whip[1]: Pr7c6{ne .} ==> Br6c6 ≠ s, Br6c6 ≠ w, Br6c6 ≠ ns, Br6c6 ≠ nw, Br6c6 ≠ se, Br6c6 ≠ ew, Br6c6 ≠ wne, Br6c6 ≠ nes
whip[1]: Pr8c6{sw .} ==> Br8c6 ≠ nw, Br8c6 ≠ se, Br8c6 ≠ swn, Br8c6 ≠ wne, Br8c6 ≠ o, Br8c6 ≠ e, Br8c6 ≠ s
whip[1]: Br8c6{nes .} ==> Nr8c6 ≠ 0
whip[1]: Br8c5{wne .} ==> Pr9c5 ≠ ew, Pr9c6 ≠ nw, Nr8c5 ≠ 0, Nr8c5 ≠ 1
whip[1]: Pr9c5{nw .} ==> Hr9c5 ≠ 1, Br8c5 ≠ swn, Br9c5 ≠ ne, Br9c5 ≠ ns, Br9c5 ≠ nw, Br9c5 ≠ swn, Br9c5 ≠ wne, Br9c5 ≠ nes, Br9c5 ≠ n
H-single: Hr9c5 = 0
whip[1]: Hr9c5{0 .} ==> Pr9c6 ≠ ew, Pr9c6 ≠ sw
whip[1]: Pr9c4{se .} ==> Hr9c3 ≠ 1, Br8c3 ≠ ns, Br8c3 ≠ se, Br8c3 ≠ sw, Br8c3 ≠ esw, Br8c3 ≠ swn, Br8c3 ≠ nes, Br9c3 ≠ nes, Br8c3 ≠ s
H-single: Hr9c3 = 0
B-single: Br9c3 = se
N-single: Nr9c3 = 2
no-horizontal-line-{r8 r9}c3 ==> Ir8c3 = in
whip[1]: Pr9c3{nw .} ==> Br8c2 ≠ ne, Br8c2 ≠ ns, Br8c2 ≠ ew, Br8c2 ≠ sw, Br8c2 ≠ swn, Br8c2 ≠ wne, Br8c2 ≠ e, Br8c2 ≠ s
whip[1]: Br9c2{swn .} ==> Nr9c2 ≠ 0
whip[1]: Pr10c2{ne .} ==> Br9c1 ≠ o, Br9c1 ≠ s, Br9c1 ≠ w, Br9c1 ≠ se, Br9c1 ≠ sw, Br9c1 ≠ esw, Br9c2 ≠ s, Br9c2 ≠ ns
whip[1]: Br9c2{swn .} ==> Pr9c2 ≠ o, Pr9c2 ≠ ne, Nr9c2 ≠ 1
whip[1]: Pr9c2{se .} ==> Br8c2 ≠ esw, Br8c2 ≠ o, Br8c2 ≠ n
whip[1]: Br8c2{nes .} ==> Nr8c2 ≠ 0
whip[1]: Br9c1{ew .} ==> Nr9c1 ≠ 0, Nr9c1 ≠ 3
whip[1]: Pr11c4{o .} ==> Br11c4 ≠ n
B-single: Br11c4 = o
whip[1]: Hr11c5{0 .} ==> Br10c5 ≠ swn, Br11c5 ≠ n, Pr11c6 ≠ ew, Br10c5 ≠ s, Br10c5 ≠ ns, Br10c5 ≠ sw
P-single: Pr11c6 = o
B-single: Br11c5 = o
whip[1]: Pr11c6{o .} ==> Br11c6 ≠ n, Br10c6 ≠ s, Br10c6 ≠ ns, Br10c6 ≠ se, Br10c6 ≠ nes
B-single: Br11c6 = o
whip[1]: Br10c6{ne .} ==> Nr10c6 ≠ 3
whip[1]: Br10c5{nw .} ==> Nr10c5 ≠ 3
whip[1]: Pr11c5{o .} ==> Br10c5 ≠ nw, Br10c5 ≠ w
whip[1]: Br10c5{n .} ==> Nr10c5 ≠ 2
whip[1]: Pr11c7{o .} ==> Br10c6 ≠ ne, Br11c7 ≠ n, Br10c6 ≠ e
B-single: Br11c7 = o
whip[1]: Br10c6{n .} ==> Nr10c6 ≠ 2
whip[1]: Hr11c8{0 .} ==> Br10c8 ≠ swn, Br11c8 ≠ n, Pr11c9 ≠ ew, Br10c8 ≠ s, Br10c8 ≠ ns, Br10c8 ≠ sw
P-single: Pr11c9 = o
B-single: Br11c8 = o
whip[1]: Pr11c9{o .} ==> Br11c9 ≠ n, Br10c9 ≠ s, Br10c9 ≠ ns, Br10c9 ≠ se, Br10c9 ≠ nes
B-single: Br11c9 = o
whip[1]: Br10c9{ne .} ==> Nr10c9 ≠ 3
whip[1]: Br10c8{nw .} ==> Nr10c8 ≠ 3
whip[1]: Pr11c8{o .} ==> Br10c8 ≠ nw, Br10c8 ≠ w
whip[1]: Br10c8{n .} ==> Nr10c8 ≠ 2
whip[1]: Pr11c10{o .} ==> Br10c9 ≠ ne, Br10c9 ≠ e
whip[1]: Br10c9{n .} ==> Nr10c9 ≠ 2
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Pr2c1{o .} ==> Br2c1 ≠ ns
B-single: Br2c1 = se
whip[1]: Vr6c1{0 .} ==> Br6c0 ≠ e
B-single: Br6c0 = o
whip[1]: Pr7c1{o .} ==> Br6c1 ≠ nes, Br6c1 ≠ ns
whip[1]: Br6c1{ne .} ==> Nr6c1 ≠ 3
whip[1]: Vr8c1{0 .} ==> Br8c1 ≠ wne, Br8c0 ≠ e, Pr9c1 ≠ ns, Br8c1 ≠ w, Br8c1 ≠ nw, Br8c1 ≠ ew
P-single: Pr9c1 = o
B-single: Br8c0 = o
whip[1]: Pr9c1{o .} ==> Br9c1 ≠ ew
B-single: Br9c1 = e
N-single: Nr9c1 = 1
whip[1]: Br8c1{ne .} ==> Nr8c1 ≠ 3
whip[1]: Pr8c1{o .} ==> Br8c1 ≠ ne, Br8c1 ≠ n
whip[1]: Br8c1{e .} ==> Nr8c1 ≠ 2
whip[1]: Vr9c1{0 .} ==> Br9c0 ≠ e
B-single: Br9c0 = o
whip[1]: Vr2c11{0 .} ==> Br2c10 ≠ ew, Br2c11 ≠ w, Pr3c11 ≠ ns
P-single: Pr3c11 = o
B-single: Br2c11 = o
B-single: Br2c10 = w
N-single: Nr2c10 = 1
whip[1]: Pr3c11{o .} ==> Br3c10 ≠ e, Br3c10 ≠ se, Br3c10 ≠ ew, Br3c10 ≠ esw
whip[1]: Br3c10{sw .} ==> Nr3c10 ≠ 3
whip[1]: Vr3c11{0 .} ==> Br3c11 ≠ w
B-single: Br3c11 = o
whip[1]: Pr4c11{o .} ==> Br3c10 ≠ sw, Br3c10 ≠ s
whip[1]: Br3c10{w .} ==> Nr3c10 ≠ 2
whip[1]: Vr5c11{0 .} ==> Br5c10 ≠ wne, Br5c11 ≠ w, Pr6c11 ≠ ns, Br5c10 ≠ e, Br5c10 ≠ ne, Br5c10 ≠ ew
P-single: Pr6c11 = o
B-single: Br5c11 = o
whip[1]: Pr6c11{o .} ==> Br6c10 ≠ e, Br6c10 ≠ se, Br6c10 ≠ ew, Br6c10 ≠ esw
whip[1]: Br6c10{sw .} ==> Nr6c10 ≠ 3
whip[1]: Br5c10{nw .} ==> Nr5c10 ≠ 3
whip[1]: Pr5c11{o .} ==> Br5c10 ≠ nw, Br5c10 ≠ n
whip[1]: Br5c10{w .} ==> Nr5c10 ≠ 2
whip[1]: Vr6c11{0 .} ==> Br6c11 ≠ w
B-single: Br6c11 = o
whip[1]: Pr7c11{o .} ==> Br6c10 ≠ sw, Br6c10 ≠ s
whip[1]: Br6c10{w .} ==> Nr6c10 ≠ 2
whip[1]: Vr8c11{0 .} ==> Br8c10 ≠ e, Br8c11 ≠ w, Pr9c11 ≠ ns, Pr9c11 ≠ nw
B-single: Br8c11 = o
w[1]-1-in-r9c10-symmetric-ne-corner ==> Pr10c10 ≠ o
P-single: Pr10c10 = nw
H-single: Hr10c9 = 1
V-single: Vr9c10 = 1
vertical-line-r9{c9 c10} ==> Ir9c9 = in
whip[1]: Pr10c10{nw .} ==> Br10c9 ≠ o, Br9c10 ≠ s, Br9c10 ≠ e, Br9c10 ≠ n, Br9c9 ≠ s, Br9c9 ≠ e, Br9c9 ≠ n, Br9c9 ≠ o, Br9c9 ≠ w, Br9c9 ≠ ne, Br9c9 ≠ ns, Br9c9 ≠ nw, Br9c9 ≠ ew, Br9c9 ≠ sw, Br9c9 ≠ swn, Br9c9 ≠ wne
B-single: Br9c10 = w
P-single: Pr9c11 = o
P-single: Pr9c10 = ns
H-single: Hr9c9 = 0
V-single: Vr8c10 = 1
B-single: Br10c9 = n
N-single: Nr10c9 = 1
w[1]-1-in-r8c10-symmetric-se-corner ==> Pr8c10 ≠ o
P-single: Pr8c10 = sw
H-single: Hr8c9 = 1
horizontal-line-{r7 r8}c9 ==> Ir8c9 = in
whip[1]: Pr9c11{o .} ==> Br8c10 ≠ s
whip[1]: Pr9c10{ns .} ==> Br8c10 ≠ n, Br8c9 ≠ n, Br8c9 ≠ o, Br8c9 ≠ s, Br8c9 ≠ w, Br8c9 ≠ ns, Br8c9 ≠ nw, Br8c9 ≠ se, Br8c9 ≠ sw, Br8c9 ≠ esw, Br8c9 ≠ swn, Br8c9 ≠ nes, Br9c9 ≠ nes
B-single: Br8c10 = w
whip[1]: Br9c9{esw .} ==> Pr9c9 ≠ ne, Pr9c9 ≠ se, Pr9c9 ≠ ew, Nr9c9 ≠ 0, Nr9c9 ≠ 1
whip[1]: Br8c9{wne .} ==> Nr8c9 ≠ 0
whip[1]: Pr8c10{sw .} ==> Br8c9 ≠ e, Br7c9 ≠ ne, Br7c9 ≠ nw, Br7c9 ≠ se, Br7c9 ≠ ew, Br8c9 ≠ ew
whip[1]: Br8c9{wne .} ==> Pr8c9 ≠ ns, Pr8c9 ≠ nw, Nr8c9 ≠ 1
P-single: Pr7c8 = ne
H-single: Hr7c8 = 1
V-single: Vr6c8 = 1
whip[1]: Pr7c8{ne .} ==> Br6c8 ≠ n, Br6c8 ≠ o, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ se, Br6c7 ≠ sw, Br6c8 ≠ e, Br6c8 ≠ s, Br6c8 ≠ w, Br6c8 ≠ ne, Br6c8 ≠ ns, Br6c8 ≠ nw, Br6c8 ≠ se, Br6c8 ≠ ew, Br6c8 ≠ wne, Br6c8 ≠ nes, Br7c8 ≠ nw, Br7c8 ≠ se, Br7c8 ≠ ew, Br7c8 ≠ sw
whip[1]: Br7c8{ns .} ==> Pr7c9 ≠ ns
whip[1]: Pr7c9{sw .} ==> Vr6c9 ≠ 1, Br6c8 ≠ esw, Br6c9 ≠ nw, Br6c9 ≠ ew, Br6c9 ≠ sw, Br6c9 ≠ esw, Br6c9 ≠ swn, Br6c9 ≠ wne, Br6c9 ≠ w
V-single: Vr6c9 = 0
whip[1]: Vr6c9{0 .} ==> Pr6c9 ≠ ns, Pr6c9 ≠ se, Pr6c9 ≠ sw
whip[1]: Br6c8{swn .} ==> Pr6c8 ≠ nw, Pr6c8 ≠ ew, Nr6c8 ≠ 0, Nr6c8 ≠ 1
P-single: Pr5c7 = sw
H-single: Hr5c6 = 1
V-single: Vr5c7 = 1
whip[1]: Pr5c7{sw .} ==> Br5c7 ≠ ns, Br5c7 ≠ ne, Br5c6 ≠ ns, Br5c6 ≠ w, Br5c6 ≠ s, Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br4c6 ≠ ne, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ ew, Br5c6 ≠ nw, Br5c6 ≠ se, Br5c6 ≠ ew, Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn, Br5c7 ≠ nw, Br5c7 ≠ se
whip[1]: Br5c7{sw .} ==> Pr6c7 ≠ ew
whip[1]: Pr6c7{ns .} ==> Hr6c6 ≠ 1, Br5c6 ≠ nes, Br6c6 ≠ ne, Br6c6 ≠ swn, Br6c6 ≠ n
H-single: Hr6c6 = 0
whip[1]: Hr6c6{0 .} ==> Pr6c6 ≠ ne, Pr6c6 ≠ se, Pr6c6 ≠ ew
whip[1]: Br5c6{wne .} ==> Pr5c6 ≠ ns, Pr5c6 ≠ nw, Nr5c6 ≠ 0, Nr5c6 ≠ 1
P-single: Pr4c5 = ne
H-single: Hr4c5 = 1
V-single: Vr3c5 = 1
whip[1]: Pr4c5{ne .} ==> Br3c5 ≠ n, Br3c5 ≠ o, Br3c4 ≠ ns, Br3c4 ≠ nw, Br3c4 ≠ se, Br3c4 ≠ sw, Br3c5 ≠ e, Br3c5 ≠ s, Br3c5 ≠ w, Br3c5 ≠ ne, Br3c5 ≠ ns, Br3c5 ≠ nw, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ wne, Br3c5 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw
whip[1]: Br4c5{ns .} ==> Pr4c6 ≠ ns
whip[1]: Pr4c6{sw .} ==> Vr3c6 ≠ 1, Br3c5 ≠ esw, Br3c6 ≠ nw, Br3c6 ≠ ew, Br3c6 ≠ esw, Br3c6 ≠ swn
V-single: Vr3c6 = 0
whip[1]: Vr3c6{0 .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ sw
whip[1]: Br3c6{se .} ==> Nr3c6 ≠ 3
whip[1]: Br3c5{swn .} ==> Pr3c5 ≠ nw, Pr3c5 ≠ ew, Nr3c5 ≠ 0, Nr3c5 ≠ 1
P-single: Pr2c4 = sw
H-single: Hr2c3 = 1
V-single: Vr2c4 = 1
vertical-line-r2{c3 c4} ==> Ir2c3 = in
same-colour-in-r2{c2 c3} ==> Vr2c3 = 0
whip[1]: Pr2c4{sw .} ==> Br2c4 ≠ ns, Br2c4 ≠ ne, Br2c3 ≠ ns, Br2c3 ≠ w, Br2c3 ≠ s, Br2c3 ≠ e, Br2c3 ≠ n, Br2c3 ≠ o, Br1c3 ≠ o, Br2c3 ≠ nw, Br2c3 ≠ se, Br2c3 ≠ ew, Br2c3 ≠ sw, Br2c3 ≠ esw, Br2c3 ≠ swn, Br2c4 ≠ nw, Br2c4 ≠ se
B-single: Br1c3 = s
N-single: Nr1c3 = 1
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ sw, Br2c2 ≠ wne, Br2c2 ≠ nes, Br2c2 ≠ o, Br2c2 ≠ s, Br2c2 ≠ w, Br2c2 ≠ ne
whip[1]: Br2c2{swn .} ==> Nr2c2 ≠ 0
whip[1]: Br2c4{sw .} ==> Pr3c4 ≠ ew
whip[1]: Pr3c4{ns .} ==> Hr3c3 ≠ 1, Br2c3 ≠ nes, Br3c3 ≠ ns, Br3c3 ≠ nw, Br3c3 ≠ swn, Br3c3 ≠ wne, Br3c3 ≠ nes
H-single: Hr3c3 = 0
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = in
same-colour-in-r3{c2 c3} ==> Vr3c3 = 0
whip[1]: Hr3c3{0 .} ==> Pr3c3 ≠ ne, Pr3c3 ≠ se, Pr3c3 ≠ ew
whip[1]: Vr3c3{0 .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ ns, Br3c2 ≠ e, Br3c2 ≠ ne, Br3c3 ≠ w, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw
P-single: Pr3c5 = ns
H-single: Hr3c4 = 0
H-single: Hr3c5 = 0
V-single: Vr2c5 = 1
P-single: Pr2c5 = se
H-single: Hr2c5 = 1
P-single: Pr3c4 = ns
V-single: Vr3c4 = 1
P-single: Pr4c4 = nw
H-single: Hr4c3 = 1
P-single: Pr5c4 = o
H-single: Hr5c3 = 0
V-single: Vr5c4 = 0
w[1]-2-in-r5c3-open-ne-corner ==> Hr6c3 = 1, Vr5c3 = 1, Hr6c2 = 0, Vr6c3 = 0
w[1]-2-in-r4c3-open-se-corner ==> Vr4c3 = 1
P-single: Pr6c3 = ne
P-single: Pr4c3 = se
w[1]-1-in-r5c4-symmetric-nw-corner ==> Pr6c5 ≠ nw, Pr6c5 ≠ o
w[1]-1-in-r4c2-asymmetric-ne-corner ==> Pr5c2 ≠ se
P-single: Pr5c2 = o
H-single: Hr5c2 = 0
V-single: Vr5c2 = 0
no-vertical-line-r5{c1 c2} ==> Ir5c2 = in
no-horizontal-line-{r5 r6}c2 ==> Ir6c2 = in
no-vertical-line-r6{c2 c3} ==> Ir6c3 = in
horizontal-line-{r5 r6}c3 ==> Ir5c3 = out
no-vertical-line-r5{c3 c4} ==> Ir5c4 = out
no-horizontal-line-{r4 r5}c4 ==> Ir4c4 = out
no-vertical-line-r4{c3 c4} ==> Ir4c3 = out
no-vertical-line-r4{c4 c5} ==> Ir4c5 = out
horizontal-line-{r3 r4}c5 ==> Ir3c5 = in
no-vertical-line-r3{c5 c6} ==> Ir3c6 = in
no-horizontal-line-{r2 r3}c5 ==> Ir2c5 = in
vertical-line-r3{c4 c5} ==> Ir3c4 = out
different-colours-in-{r6 r7}c2 ==> Hr7c2 = 1
different-colours-in-r6{c1 c2} ==> Hr6c2 = 1
whip[1]: Pr3c5{ns .} ==> Br2c5 ≠ e, Br2c5 ≠ n, Br2c5 ≠ o, Br2c4 ≠ sw, Br2c5 ≠ s, Br2c5 ≠ ne, Br2c5 ≠ ns, Br2c5 ≠ se, Br2c5 ≠ sw, Br2c5 ≠ esw, Br2c5 ≠ swn, Br2c5 ≠ nes, Br3c4 ≠ ne, Br3c5 ≠ swn
B-single: Br3c5 = sw
N-single: Nr3c5 = 2
B-single: Br3c4 = ew
B-single: Br2c4 = ew
whip[1]: Pr3c6{ne .} ==> Br2c6 ≠ s, Br2c6 ≠ w, Br2c6 ≠ ns, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ ew, Br2c6 ≠ wne, Br2c6 ≠ nes
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 0
whip[1]: Pr2c5{se .} ==> Br2c5 ≠ w, Br1c5 ≠ o, Br2c5 ≠ ew
B-single: Br1c5 = s
N-single: Nr1c5 = 1
whip[1]: Pr2c6{sw .} ==> Br2c6 ≠ swn, Br2c6 ≠ o, Br2c6 ≠ e
whip[1]: Br2c6{esw .} ==> Nr2c6 ≠ 0
whip[1]: Br2c5{wne .} ==> Nr2c5 ≠ 1
whip[1]: Pr3c4{ns .} ==> Br3c3 ≠ s
B-single: Br3c3 = se
N-single: Nr3c3 = 2
whip[1]: Pr4c4{nw .} ==> Br4c3 ≠ ew, Br4c3 ≠ sw
whip[1]: Pr5c4{o .} ==> Br4c3 ≠ ns, Br5c3 ≠ ne, Br5c4 ≠ n, Br5c4 ≠ w
B-single: Br5c3 = sw
P-single: Pr5c3 = ns
B-single: Br4c3 = nw
whip[1]: Pr5c3{ns .} ==> Br5c2 ≠ o, Br4c2 ≠ s, Br5c2 ≠ s, Br5c2 ≠ nw
B-single: Br5c2 = e
N-single: Nr5c2 = 1
P-single: Pr6c2 = sw
B-single: Br4c2 = e
whip[1]: Pr6c2{sw .} ==> Br6c2 ≠ ne, Br6c2 ≠ s, Br6c2 ≠ o, Br6c1 ≠ n, Br5c1 ≠ esw, Br6c2 ≠ nes
B-single: Br5c1 = sw
N-single: Nr5c1 = 2
B-single: Br6c1 = ne
N-single: Nr6c1 = 2
P-single: Pr7c2 = ne
whip[1]: Pr7c2{ne .} ==> Br6c2 ≠ w, Br7c2 ≠ nw, Br7c2 ≠ se, Br7c2 ≠ ew, Br7c2 ≠ sw
B-single: Br6c2 = sw
N-single: Nr6c2 = 2
w[1]-1-in-r7c3-asymmetric-nw-corner ==> Pr8c4 ≠ sw
P-single: Pr9c5 = nw
H-single: Hr9c4 = 1
V-single: Vr9c5 = 0
P-single: Pr8c4 = o
H-single: Hr8c3 = 0
no-horizontal-line-{r7 r8}c3 ==> Ir7c3 = in
no-vertical-line-r7{c3 c4} ==> Ir7c4 = in
no-vertical-line-r7{c4 c5} ==> Ir7c5 = in
no-vertical-line-r7{c5 c6} ==> Ir7c6 = in
no-vertical-line-r7{c6 c7} ==> Ir7c7 = in
no-vertical-line-r7{c7 c8} ==> Ir7c8 = in
horizontal-line-{r6 r7}c8 ==> Ir6c8 = out
no-vertical-line-r6{c8 c9} ==> Ir6c9 = out
vertical-line-r6{c7 c8} ==> Ir6c7 = in
no-horizontal-line-{r7 r8}c7 ==> Ir8c7 = in
no-horizontal-line-{r6 r7}c5 ==> Ir6c5 = in
no-vertical-line-r6{c4 c5} ==> Ir6c4 = in
horizontal-line-{r7 r8}c5 ==> Ir8c5 = out
no-horizontal-line-{r8 r9}c5 ==> Ir9c5 = out
vertical-line-r8{c4 c5} ==> Ir8c4 = in
same-colour-in-{r9 r10}c5 ==> Hr10c5 = 0
same-colour-in-r6{c3 c4} ==> Vr6c4 = 0
w[1]-diagonal-1-1-in-{r6c4...r7c3}-with-no-sw-inner-sides ==> Hr7c3 = 0
different-colours-in-{r5 r6}c4 ==> Hr6c4 = 1
different-colours-in-{r8 r9}c7 ==> Hr9c7 = 1
same-colour-in-r6{c9 c10} ==> Vr6c10 = 0
same-colour-in-{r6 r7}c9 ==> Hr7c9 = 0
w[1]-2-in-r7c9-open-ne-corner ==> Vr7c9 = 1, Hr8c8 = 0, Vr8c9 = 0
no-vertical-line-r8{c8 c9} ==> Ir8c8 = in
same-colour-in-r8{c7 c8} ==> Vr8c8 = 0
different-colours-in-r7{c2 c3} ==> Hr7c3 = 1
whip[1]: Pr9c5{nw .} ==> Br8c4 ≠ ew, Br9c4 ≠ ew, Br9c5 ≠ w, Br9c5 ≠ ew, Br9c5 ≠ sw, Br9c5 ≠ esw
B-single: Br9c4 = nw
P-single: Pr9c4 = se
P-single: Pr10c5 = o
B-single: Br8c4 = se
whip[1]: Pr9c4{se .} ==> Br8c3 ≠ e, Br8c3 ≠ ne, Br8c3 ≠ ew, Br8c3 ≠ wne
whip[1]: Br8c3{nw .} ==> Nr8c3 ≠ 3
whip[1]: Pr10c5{o .} ==> Br9c5 ≠ s, Br9c5 ≠ se, Br10c5 ≠ n
B-single: Br10c5 = o
N-single: Nr10c5 = 0
whip[1]: Pr10c6{ne .} ==> Br9c6 ≠ s, Br9c6 ≠ w, Br9c6 ≠ ns, Br9c6 ≠ nw, Br9c6 ≠ se, Br9c6 ≠ ew, Br9c6 ≠ wne, Br9c6 ≠ nes
whip[1]: Br9c5{e .} ==> Nr9c5 ≠ 2, Nr9c5 ≠ 3
whip[1]: Pr8c4{o .} ==> Br7c3 ≠ e, Br7c3 ≠ s, Br8c3 ≠ n, Br8c3 ≠ nw
whip[1]: Br8c3{w .} ==> Pr8c3 ≠ ne, Nr8c3 ≠ 2, Pr8c3 ≠ ew
whip[1]: Pr8c3{sw .} ==> Vr8c3 ≠ 0, Br8c2 ≠ nw, Br8c2 ≠ w, Br8c3 ≠ o
V-single: Vr8c3 = 1
B-single: Br8c3 = w
N-single: Nr8c3 = 1
P-single: Pr9c3 = nw
H-single: Hr9c2 = 1
no-vertical-line-r8{c1 c2} ==> Ir8c2 = out
same-colour-in-{r7 r8}c2 ==> Hr8c2 = 0
whip[1]: Pr9c3{nw .} ==> Br9c2 ≠ sw
B-single: Br9c2 = swn
N-single: Nr9c2 = 3
P-single: Pr9c2 = se
whip[1]: Pr9c2{se .} ==> Br8c1 ≠ e
B-single: Br8c1 = o
N-single: Nr8c1 = 0
P-single: Pr7c3 = sw
P-single: Pr8c2 = o
whip[1]: Pr7c3{sw .} ==> Br7c3 ≠ n, Br7c2 ≠ ns, Br6c3 ≠ ns, Br6c3 ≠ w, Br6c3 ≠ s, Br6c3 ≠ se, Br6c3 ≠ ew, Br6c3 ≠ sw, Br6c3 ≠ esw, Br6c3 ≠ nes
B-single: Br7c2 = ne
P-single: Pr8c3 = ns
B-single: Br7c3 = w
P-single: Pr7c4 = o
w[1]-1-in-r6c4-symmetric-sw-corner ==> Pr6c5 ≠ ne
P-single: Pr6c5 = ew
H-single: Hr6c5 = 1
V-single: Vr5c5 = 0
no-vertical-line-r5{c4 c5} ==> Ir5c5 = out
same-colour-in-{r4 r5}c5 ==> Hr5c5 = 0
w[1]-2-in-r4c5-open-sw-corner ==> Vr4c6 = 1, Hr4c6 = 0
no-vertical-line-r5{c5 c6} ==> Ir5c6 = out
no-horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
vertical-line-r5{c6 c7} ==> Ir5c7 = in
no-horizontal-line-{r4 r5}c7 ==> Ir4c7 = in
no-vertical-line-r4{c6 c7} ==> Ir4c6 = in
no-vertical-line-r4{c7 c8} ==> Ir4c8 = in
no-horizontal-line-{r3 r4}c7 ==> Ir3c7 = in
same-colour-in-r3{c6 c7} ==> Vr3c7 = 0
different-colours-in-{r2 r3}c7 ==> Hr3c7 = 1
no-vertical-line-r3{c7 c8} ==> Ir3c8 = in
same-colour-in-{r3 r4}c8 ==> Hr4c8 = 0
w[1]-2-in-r4c8-open-nw-corner ==> Hr5c8 = 1, Vr4c9 = 1, Hr5c9 = 0, Vr5c9 = 0
w[1]-2-in-r4c9-open-se-corner ==> Hr4c9 = 1, Vr3c9 = 0
P-single: Pr6c7 = ns
H-single: Hr6c7 = 0
V-single: Vr6c7 = 1
P-single: Pr7c7 = nw
H-single: Hr7c6 = 1
P-single: Pr6c8 = ns
H-single: Hr6c8 = 0
V-single: Vr5c8 = 1
P-single: Pr5c8 = se
P-single: Pr4c10 = nw
V-single: Vr3c10 = 1
w[1]-1-in-r7c6-asymmetric-ne-corner ==> Pr8c6 ≠ ew
P-single: Pr8c6 = sw
H-single: Hr8c6 = 0
V-single: Vr8c6 = 1
w[1]-diagonal-1-1-in-{r7c6...r8c7}-with-no-se-inner-sides ==> Vr8c7 = 0
no-vertical-line-r8{c6 c7} ==> Ir8c6 = in
vertical-line-r3{c9 c10} ==> Ir3c9 = in
vertical-line-r5{c7 c8} ==> Ir5c8 = out
no-vertical-line-r5{c8 c9} ==> Ir5c9 = out
same-colour-in-r5{c9 c10} ==> Vr5c10 = 0
same-colour-in-{r5 r6}c9 ==> Hr6c9 = 0
same-colour-in-{r2 r3}c9 ==> Hr3c9 = 0
different-colours-in-r6{c5 c6} ==> Hr6c6 = 1
whip[1]: Pr8c3{ns .} ==> Br8c2 ≠ nes
B-single: Br8c2 = se
N-single: Nr8c2 = 2
whip[1]: Pr7c4{o .} ==> Br6c3 ≠ e, Br6c3 ≠ ne, Br6c4 ≠ w
B-single: Br6c4 = n
P-single: Pr6c4 = ew
w[1]-1-in-r5c4-asymmetric-sw-corner ==> Pr5c5 ≠ se
P-single: Pr4c6 = sw
P-single: Pr5c5 = o
whip[1]: Pr6c4{ew .} ==> Br6c3 ≠ o, Br5c4 ≠ e
B-single: Br5c4 = s
B-single: Br6c3 = n
N-single: Nr6c3 = 1
whip[1]: Pr4c6{sw .} ==> Br4c6 ≠ ns, Br4c5 ≠ ns, Br3c6 ≠ ns, Br3c6 ≠ se
B-single: Br4c5 = ne
P-single: Pr4c7 = o
P-single: Pr5c6 = ne
B-single: Br4c6 = sw
w[1]-1-in-r3c7-symmetric-sw-corner ==> Pr3c8 ≠ ne
whip[1]: Pr4c7{o .} ==> Br3c6 ≠ e, Br3c7 ≠ s, Br3c7 ≠ w
B-single: Br3c6 = n
H-single: Hr3c6 = 1
N-single: Nr3c6 = 1
P-single: Pr3c6 = ne
V-single: Vr2c6 = 1
no-horizontal-line-{r1 r2}c6 ==> Ir2c6 = out
same-colour-in-r2{c6 c7} ==> Vr2c7 = 0
whip[1]: Hr3c6{1 .} ==> Br2c6 ≠ n, Br2c6 ≠ ne
whip[1]: Br2c6{esw .} ==> Pr2c6 ≠ ew, Pr2c7 ≠ sw, Nr2c6 ≠ 1
P-single: Pr3c8 = nw
P-single: Pr2c7 = o
P-single: Pr2c6 = sw
whip[1]: Pr3c8{nw .} ==> Br3c8 ≠ n, Br3c7 ≠ e, Br2c7 ≠ ew, Br2c8 ≠ swn, Br3c8 ≠ w, Br3c8 ≠ ne, Br3c8 ≠ ns, Br3c8 ≠ ew, Br3c8 ≠ sw, Br3c8 ≠ esw, Br3c8 ≠ nes
B-single: Br2c8 = nw
N-single: Nr2c8 = 2
B-single: Br2c7 = se
P-single: Pr3c7 = ew
B-single: Br3c7 = n
P-single: Pr5c9 = nw
P-single: Pr4c8 = o
whip[1]: Pr3c7{ew .} ==> Br2c6 ≠ esw
B-single: Br2c6 = sw
N-single: Nr2c6 = 2
whip[1]: Pr5c9{nw .} ==> Br5c9 ≠ n, Br5c8 ≠ s, Br5c8 ≠ e, Br5c8 ≠ o, Br4c8 ≠ ne, Br4c8 ≠ ns, Br4c8 ≠ nw, Br4c8 ≠ ew, Br4c8 ≠ sw, Br4c9 ≠ ne, Br4c9 ≠ ns, Br4c9 ≠ se, Br4c9 ≠ sw, Br5c8 ≠ w, Br5c8 ≠ ne, Br5c8 ≠ se, Br5c8 ≠ ew, Br5c8 ≠ sw, Br5c8 ≠ esw, Br5c8 ≠ wne, Br5c8 ≠ nes, Br5c9 ≠ w, Br5c9 ≠ ne, Br5c9 ≠ ns, Br5c9 ≠ nw, Br5c9 ≠ ew, Br5c9 ≠ sw, Br5c9 ≠ esw, Br5c9 ≠ swn, Br5c9 ≠ wne, Br5c9 ≠ nes
B-single: Br4c8 = se
whip[1]: Pr4c9{se .} ==> Br3c8 ≠ se, Br3c9 ≠ esw, Br3c9 ≠ swn, Br3c8 ≠ s, Br3c9 ≠ n, Br3c9 ≠ e
whip[1]: Br3c9{ew .} ==> Nr3c9 ≠ 1, Nr3c9 ≠ 3
N-single: Nr3c9 = 2
P-single: Pr3c9 = o
whip[1]: Pr3c9{o .} ==> Br2c9 ≠ nes, Br3c8 ≠ e, Br3c9 ≠ ns, Br3c9 ≠ nw, Br3c9 ≠ ew
B-single: Br3c9 = se
P-single: Pr5c10 = o
P-single: Pr3c10 = ns
P-single: Pr4c9 = se
B-single: Br3c8 = o
N-single: Nr3c8 = 0
B-single: Br2c9 = ne
N-single: Nr2c9 = 2
whip[1]: Pr5c10{o .} ==> Br4c9 ≠ ew, Br5c9 ≠ e, Br5c9 ≠ se, Br5c10 ≠ w
B-single: Br5c10 = o
N-single: Nr5c10 = 0
B-single: Br4c9 = nw
whip[1]: Pr6c10{sw .} ==> Br6c9 ≠ se, Br6c9 ≠ n, Br6c9 ≠ e, Br6c9 ≠ ns
whip[1]: Br5c9{s .} ==> Pr6c9 ≠ ne, Nr5c9 ≠ 2, Nr5c9 ≠ 3, Pr6c9 ≠ nw
whip[1]: Pr3c10{ns .} ==> Br3c10 ≠ o
B-single: Br3c10 = w
N-single: Nr3c10 = 1
whip[1]: Br5c8{swn .} ==> Nr5c8 ≠ 0
whip[1]: Pr2c7{o .} ==> Br1c6 ≠ s
B-single: Br1c6 = o
N-single: Nr1c6 = 0
whip[1]: Pr2c6{sw .} ==> Br2c5 ≠ nw
B-single: Br2c5 = wne
N-single: Nr2c5 = 3
whip[1]: Pr5c6{ne .} ==> Br5c5 ≠ n, Br5c5 ≠ e, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ nw, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ esw, Br5c5 ≠ swn, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ wne
B-single: Br5c6 = ne
N-single: Nr5c6 = 2
whip[1]: Pr6c6{sw .} ==> Br6c5 ≠ n, Br6c5 ≠ e
whip[1]: Br6c5{ne .} ==> Nr6c5 ≠ 1
whip[1]: Br5c5{sw .} ==> Nr5c5 ≠ 3
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ w, Br5c5 ≠ sw
whip[1]: Br5c5{s .} ==> Nr5c5 ≠ 2
whip[1]: Pr6c5{ew .} ==> Br6c5 ≠ o, Br5c5 ≠ o
B-single: Br5c5 = s
N-single: Nr5c5 = 1
P-single: Pr6c6 = sw
B-single: Br6c5 = ne
N-single: Nr6c5 = 2
P-single: Pr7c6 = ne
w[1]-1-in-r7c6-asymmetric-nw-corner ==> Pr8c7 ≠ sw
P-single: Pr8c7 = o
w[1]-1-in-r8c7-symmetric-nw-corner ==> Pr9c8 ≠ se, Pr9c8 ≠ nw, Pr9c8 ≠ o
whip[1]: Pr6c6{sw .} ==> Br6c6 ≠ e, Br6c6 ≠ o
whip[1]: Br6c6{esw .} ==> Nr6c6 ≠ 0, Nr6c6 ≠ 1
whip[1]: Pr7c6{ne .} ==> Br7c6 ≠ e, Br7c6 ≠ s
B-single: Br7c6 = n
whip[1]: Pr8c7{o .} ==> Br8c6 ≠ n, Br8c6 ≠ ne, Br8c6 ≠ ns, Br8c6 ≠ ew, Br8c6 ≠ esw, Br8c6 ≠ nes, Br8c7 ≠ n, Br8c7 ≠ w
whip[1]: Br8c7{s .} ==> Pr9c7 ≠ ne, Pr9c7 ≠ ns, Pr9c7 ≠ nw
whip[1]: Br8c6{sw .} ==> Pr9c6 ≠ o, Pr9c6 ≠ se, Nr8c6 ≠ 3
whip[1]: Pr9c6{ns .} ==> Br8c5 ≠ nw, Br9c6 ≠ swn, Br9c6 ≠ o, Br9c6 ≠ e
B-single: Br8c5 = wne
N-single: Nr8c5 = 3
whip[1]: Br9c6{esw .} ==> Nr9c6 ≠ 0
whip[1]: Pr9c8{sw .} ==> Br9c8 ≠ nw, Br9c8 ≠ se, Br9c8 ≠ swn, Br9c8 ≠ wne, Br9c8 ≠ o, Br9c8 ≠ e, Br9c8 ≠ s
whip[1]: Br9c8{nes .} ==> Nr9c8 ≠ 0
whip[1]: Pr6c7{ns .} ==> Br5c7 ≠ sw, Br6c6 ≠ sw, Br6c7 ≠ ne
B-single: Br6c7 = ew
B-single: Br6c6 = esw
N-single: Nr6c6 = 3
B-single: Br5c7 = ew
whip[1]: Pr6c8{ns .} ==> Br5c8 ≠ n, Br5c8 ≠ ns, Br5c8 ≠ swn, Br6c8 ≠ swn
B-single: Br6c8 = sw
N-single: Nr6c8 = 2
P-single: Pr6c9 = o
B-single: Br5c8 = nw
N-single: Nr5c8 = 2
whip[1]: Pr6c9{o .} ==> Br5c9 ≠ s, Br6c9 ≠ ne, Br6c9 ≠ nes
B-single: Br5c9 = o
N-single: Nr5c9 = 0
P-single: Pr6c10 = o
whip[1]: Pr6c10{o .} ==> Br6c10 ≠ w
B-single: Br6c10 = o
N-single: Nr6c10 = 0
P-single: Pr8c9 = ne
P-single: Pr7c10 = o
whip[1]: Pr8c9{ne .} ==> Br8c8 ≠ n, Br7c8 ≠ ns, Br7c9 ≠ ns, Br8c8 ≠ e, Br8c8 ≠ ne, Br8c8 ≠ ns, Br8c8 ≠ nw, Br8c8 ≠ se, Br8c8 ≠ ew, Br8c8 ≠ esw, Br8c8 ≠ swn, Br8c8 ≠ wne, Br8c8 ≠ nes, Br8c9 ≠ wne
B-single: Br8c9 = ne
N-single: Nr8c9 = 2
B-single: Br7c9 = sw
P-single: Pr8c8 = o
P-single: Pr7c9 = sw
B-single: Br7c8 = ne
w[1]-1-in-r8c7-symmetric-ne-corner ==> Pr9c7 ≠ sw, Pr9c7 ≠ o
whip[1]: Pr8c8{o .} ==> Br8c7 ≠ e, Br8c8 ≠ w, Br8c8 ≠ sw
B-single: Br8c7 = s
whip[1]: Pr9c8{sw .} ==> Br9c7 ≠ e, Br9c7 ≠ s, Br9c7 ≠ w
B-single: Br9c7 = n
V-single: Vr9c7 = 0
V-single: Vr9c8 = 0
P-single: Pr9c7 = ew
H-single: Hr9c6 = 1
P-single: Pr9c8 = ew
H-single: Hr9c8 = 1
P-single: Pr10c7 = o
H-single: Hr10c6 = 0
P-single: Pr10c8 = o
H-single: Hr10c8 = 0

LOOP[62]: Hr10c9-Vr9c10-Vr8c10-Hr8c9-Vr7c9-Hr7c8-Vr6c8-Vr5c8-Hr5c8-Vr4c9-Hr4c9-Vr3c10-Vr2c10-Hr2c9-Hr2c8-Vr2c8-Hr3c7-Hr3c6-Vr2c6-Hr2c5-Vr2c5-Vr3c5-Hr4c5-Vr4c6-Hr5c6-Vr5c7-Vr6c7-Hr7c6-Vr6c6-Hr6c5-Hr6c4-Hr6c3-Vr5c3-Vr4c3-Hr4c3-Vr3c4-Vr2c4-Hr2c3-Hr2c2-Vr2c2-Hr3c1-Vr3c1-Vr4c1-Vr5c1-Hr6c1-Vr6c2-Hr7c2-Vr7c3-Vr8c3-Hr9c2-Vr9c2-Hr10c2-Hr10c3-Vr9c4-Hr9c4-Vr8c5-Hr8c5-Vr8c6-Hr9c6-Hr9c7-Hr9c8- ==> Vr9c9 = 1
vertical-line-r9{c8 c9} ==> Ir9c8 = out
no-horizontal-line-{r9 r10}c6 ==> Ir9c6 = out
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

OOOOOOOOOO
OXXOXOOXXO
XXXOXXXXXO
XXOOOXXXOO
XXOOOOXOOO
OXXXXOXOOO
OOXXXXXXOO
OOXXOXXXXO
OXXOOOOOXO
OOOOOOOOOO

.   .   .   .   .   .   .   .   .   .   .
  0           0           0   1   1   0
.   .———.———.   .———.   .   .———.———.   .
  2 |       | 2 |   |     2 |       |
.———.   .   .   .   .———.———.   .   .   .
| 2         | 2 |         1         |
.   .   .———.   .———.   .   .   .———.   .
| 1   1 | 2   0   2 | 2   0   2 | 2   0
.   .   .   .   .   .———.   .———.   .   .
|       |     1         | 2 |
.———.   .———.———.———.   .   .   .   .   .
    |         1     |   | 2 |
.   .———.   .   .   .———.   .———.   .   .
  0   2 | 1   0   1   1   0   2 | 2   0
.   .   .   .   .———.   .   .   .———.   .
        |     2 |   |     1         | 1
.   .———.   .———.   .———.———.———.   .   .
    |       | 2           1     |   | 1
.   .———.———.   .   .   .   .   .———.   .
  0   1   1   0           0           0
.   .   .   .   .   .   .   .   .   .   .

init-time = 4m 21.72s, solve-time = 2m 0.61s, total-time = 6m 22.33s
nb-facts=<Fact-168768>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
