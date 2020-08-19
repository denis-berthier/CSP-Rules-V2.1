
(solve
7 7
. 1 . . 2 . 2
1 2 2 2 . . 1
. 2 . . . . . 
. 3 2 . 2 . 2
1 . . 3 . . 2
2 3 . 2 2 3 . 
. . 3 . 3 2 . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 . . 2 . 2
1 2 2 2 . . 1
. 2 . . . . .
. 3 2 . 2 . 2
1 . . 3 . . 2
2 3 . 2 2 3 .
. . 3 . 3 2 .

start init-grid-structure 0.00967001914978027
start create-csp-variables
start create-labels 0.000671863555908203
start init-physical-csp-links 0.00523185729980469
start init-physical-non-csp-links 3.71725797653198
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.02127885818481
     start init-physical-BN-non-csp-links at local time 3.78609490394592
     start init-physical-BP-non-csp-links at local time 6.77455282211304
     end init-physical-BP-non-csp-links at local time 46.481969833374
end init-physical-non-csp-links 50.1992700099945
start init-corner-B-c-values 50.2091469764709
start init-outer-B-candidates 50.2091958522797
start init-outer-I-candidates 50.2095949649811
start init-H-candidates 50.2099139690399
start init-V-candidates 50.2112419605255
start init-P-candidates 50.2125799655914
start init-inner-I-candidates 50.2151358127594
start init-inner-N-and-B-candidates 50.2159829139709
start solution 50.2205150127411
entering BRT
w[1]-2-in-ne-corner ==> Vr2c8 = 1, Hr1c6 = 1
H-single: Hr1c6 = 1
V-single: Vr2c8 = 1
w[1]-diagonal-3s-in-{r6c6...r7c5} ==> Vr6c7 = 1, Vr7c5 = 1, Hr8c5 = 1, Hr6c6 = 1, Vr5c7 = 0, Hr8c4 = 0, Hr6c7 = 0
H-single: Hr6c7 = 0
H-single: Hr8c4 = 0
V-single: Vr5c7 = 0
H-single: Hr6c6 = 1
H-single: Hr8c5 = 1
V-single: Vr7c5 = 1
V-single: Vr6c7 = 1
w[1]-2-in-r5c7-open-sw-corner ==> Hr5c7 = 1, Vr5c8 = 1, Vr4c8 = 0
V-single: Vr4c8 = 0
V-single: Vr5c8 = 1
H-single: Hr5c7 = 1
w[1]-diagonal-3s-in-{r6c2...r7c3} ==> Vr7c4 = 1, Vr6c2 = 1, Hr8c3 = 1, Hr6c2 = 1, Vr5c2 = 0, Hr6c1 = 0
H-single: Hr6c1 = 0
V-single: Vr5c2 = 0
H-single: Hr6c2 = 1
H-single: Hr8c3 = 1
V-single: Vr6c2 = 1
V-single: Vr7c4 = 1
w[1]-3-in-r7c5-closed-sw-corner ==> Pr7c6 ≠ sw, Pr7c6 ≠ ne, Pr7c6 ≠ o
w[1]-3-in-r7c3-closed-se-corner ==> Pr7c3 ≠ se, Pr7c3 ≠ nw, Pr7c3 ≠ o
diagonal-1-1-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 0
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
entering level Loop with <Fact-49024>
entering level Col with <Fact-49101>
vertical-line-r5{c7 c8} ==> Ir5c7 = in
I-single: Ir5c7 = in
no-vertical-line-r5{c6 c7} ==> Ir5c6 = in
I-single: Ir5c6 = in
horizontal-line-{r5 r6}c6 ==> Ir6c6 = out
I-single: Ir6c6 = out
vertical-line-r6{c6 c7} ==> Ir6c7 = in
I-single: Ir6c7 = in
horizontal-line-{r4 r5}c7 ==> Ir4c7 = out
I-single: Ir4c7 = out
vertical-line-r2{c7 c8} ==> Ir2c7 = in
I-single: Ir2c7 = in
horizontal-line-{r7 r8}c5 ==> Ir7c5 = in
I-single: Ir7c5 = in
vertical-line-r7{c4 c5} ==> Ir7c4 = out
I-single: Ir7c4 = out
vertical-line-r7{c3 c4} ==> Ir7c3 = in
I-single: Ir7c3 = in
horizontal-line-{r0 r1}c6 ==> Ir1c6 = in
I-single: Ir1c6 = in
different-colours-in-r6{c7 c8} ==> Hr6c8 = 1
V-single: Vr6c8 = 1
Starting_init_links_with_<Fact-49113>
1235 candidates, 3708 csp-links and 15758 links. Density = 2.07%
starting non trivial part of solution
Entering_level_W1_with_<Fact-88050>
whip[1]: Vr6c8{1 .} ==> Br6c7 ≠ swn, Br6c8 ≠ o, Br6c7 ≠ o, Pr7c8 ≠ o, Pr7c8 ≠ sw, Br6c7 ≠ n, Br6c7 ≠ s, Br6c7 ≠ w, Br6c7 ≠ ns, Br6c7 ≠ nw, Br6c7 ≠ sw
B-single: Br6c8 = w
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 0
whip[1]: Pr7c8{nw .} ==> Br7c7 ≠ w, Br7c7 ≠ nes, Br7c7 ≠ o
whip[1]: Br7c7{esw .} ==> Nr7c7 ≠ 0
whip[1]: Vr1c2{0 .} ==> Br1c2 ≠ w, Pr1c2 ≠ se, Pr1c2 ≠ sw, Pr2c2 ≠ ne, Pr2c2 ≠ ns, Pr2c2 ≠ nw, Br1c1 ≠ e, Br1c1 ≠ se, Br1c1 ≠ wne
whip[1]: Br1c2{s .} ==> Pr1c3 ≠ sw, Pr2c3 ≠ nw
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ ew, Br1c3 ≠ sw, Br1c3 ≠ esw, Br1c3 ≠ w
whip[1]: Hr2c1{0 .} ==> Br2c1 ≠ n, Pr2c1 ≠ ne, Pr2c1 ≠ se, Pr2c2 ≠ ew, Pr2c2 ≠ sw, Br1c1 ≠ s, Br1c1 ≠ swn
whip[1]: Pr3c2{ew .} ==> Br2c2 ≠ sw, Br3c1 ≠ sw, Br3c1 ≠ wne, Br3c1 ≠ nes, Br2c2 ≠ ne, Br3c1 ≠ o, Br3c1 ≠ s, Br3c1 ≠ w, Br3c1 ≠ ne
whip[1]: Br3c1{swn .} ==> Nr3c1 ≠ 0
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ swn, Br2c3 ≠ se, Br1c3 ≠ o, Br1c3 ≠ n, Br1c3 ≠ e, Br1c3 ≠ ne
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br2c3{sw .} ==> Pr3c4 ≠ nw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ns, Br2c2 ≠ ew, Br2c3 ≠ sw, Br3c2 ≠ ne, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c3 ≠ esw, Br3c3 ≠ nes, Br3c3 ≠ n, Br3c3 ≠ w
whip[1]: Br3c2{sw .} ==> Pr4c2 ≠ o, Pr4c2 ≠ sw
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ wne, Br4c1 ≠ nes, Br4c1 ≠ ne
whip[1]: Br2c3{ew .} ==> Pr2c4 ≠ o, Pr2c4 ≠ ne
whip[1]: Pr2c4{sw .} ==> Br1c4 ≠ sw, Br1c4 ≠ esw, Br1c4 ≠ swn
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, Nr1c1 ≠ 3
whip[1]: Br2c1{w .} ==> Pr3c1 ≠ ne, Pr3c2 ≠ nw
whip[1]: Pr3c2{ew .} ==> Br3c2 ≠ se
whip[1]: Br3c2{sw .} ==> Pr4c3 ≠ nw
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ ns, Br3c1 ≠ n
whip[1]: Vr7c4{1 .} ==> Br7c4 ≠ nes, Br7c4 ≠ o, Pr8c4 ≠ o, Pr8c4 ≠ ew, Pr7c4 ≠ o, Pr7c4 ≠ ne, Pr7c4 ≠ nw, Pr7c4 ≠ ew, Br7c3 ≠ swn, Br7c4 ≠ n, Br7c4 ≠ e, Br7c4 ≠ s, Br7c4 ≠ ne, Br7c4 ≠ ns, Br7c4 ≠ se
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 0
whip[1]: Br7c3{nes .} ==> Pr8c3 ≠ o
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ nw, Br7c2 ≠ o, Br7c2 ≠ n, Br7c2 ≠ w
whip[1]: Br7c2{nes .} ==> Nr7c2 ≠ 0
whip[1]: Pr7c4{sw .} ==> Br6c3 ≠ se, Br6c3 ≠ esw, Br6c3 ≠ nes, Br6c4 ≠ sw
whip[1]: Br6c4{ew .} ==> Pr6c5 ≠ o, Pr6c5 ≠ ne
whip[1]: Pr6c5{sw .} ==> Br5c5 ≠ sw, Br5c5 ≠ esw, Br5c5 ≠ swn
whip[1]: Vr6c2{1 .} ==> Br6c2 ≠ nes, Pr6c2 ≠ o, Pr6c2 ≠ ne, Pr6c2 ≠ nw, Pr6c2 ≠ ew, Pr7c2 ≠ ew, Pr7c2 ≠ sw, Br6c1 ≠ ns, Br6c1 ≠ nw, Br6c1 ≠ sw
whip[1]: Pr7c1{se .} ==> Vr7c1 ≠ 0, Br6c1 ≠ ne, Br7c1 ≠ ne, Br7c1 ≠ o, Br7c1 ≠ n, Br7c1 ≠ e
V-single: Vr7c1 = 1
vertical-line-r7{c0 c1} ==> Ir7c1 = in
I-single: Ir7c1 = in
different-colours-in-{r7 r8}c1 ==> Hr8c1 = 1
H-single: Hr8c1 = 1
whip[1]: Vr7c1{1 .} ==> Br7c0 ≠ o, Pr8c1 ≠ o
P-single: Pr8c1 = ne
B-single: Br7c0 = e
whip[1]: Pr8c1{ne .} ==> Br8c1 ≠ o
B-single: Br8c1 = n
whip[1]: Pr8c2{ew .} ==> Br7c2 ≠ sw, Br7c2 ≠ esw, Br7c2 ≠ swn, Br7c2 ≠ e, Br7c2 ≠ ne
whip[1]: Br7c1{swn .} ==> Nr7c1 ≠ 0, Nr7c1 ≠ 1
whip[1]: Br6c1{ew .} ==> Pr6c1 ≠ ne
whip[1]: Pr6c1{ns .} ==> Br5c1 ≠ s
whip[1]: Br5c1{w .} ==> Pr5c1 ≠ se, Pr5c2 ≠ sw
whip[1]: Pr5c1{ns .} ==> Br4c1 ≠ s, Br4c1 ≠ ns, Br4c1 ≠ se
whip[1]: Pr7c2{nw .} ==> Br7c2 ≠ wne
whip[1]: Pr6c2{se .} ==> Br5c2 ≠ ne, Br5c2 ≠ sw, Br5c2 ≠ esw, Br5c2 ≠ swn, Br5c2 ≠ o, Br5c2 ≠ n, Br5c2 ≠ e
whip[1]: Br5c2{nes .} ==> Nr5c2 ≠ 0
whip[1]: Br6c2{wne .} ==> Pr6c3 ≠ o, Pr6c3 ≠ ne
whip[1]: Pr6c3{sw .} ==> Br5c3 ≠ sw, Br5c3 ≠ esw, Br5c3 ≠ swn
whip[1]: Hr8c3{1 .} ==> Br7c3 ≠ wne, Br8c3 ≠ o, Pr8c3 ≠ nw, Pr8c4 ≠ ne
P-single: Pr8c4 = nw
B-single: Br8c3 = n
whip[1]: Pr8c4{nw .} ==> Br8c4 ≠ n, Br7c4 ≠ sw, Br7c4 ≠ esw, Br7c4 ≠ swn
B-single: Br8c4 = o
whip[1]: Pr8c5{ne .} ==> Br7c5 ≠ wne, Br7c5 ≠ nes
whip[1]: Br7c5{swn .} ==> Pr8c5 ≠ o, Pr8c6 ≠ o, Pr8c6 ≠ ne, Pr7c5 ≠ o, Pr7c5 ≠ ne, Pr7c5 ≠ nw, Pr7c5 ≠ ew
P-single: Pr8c5 = ne
whip[1]: Pr8c5{ne .} ==> Br8c5 ≠ o, Br7c4 ≠ w, Br7c4 ≠ nw
B-single: Br8c5 = n
whip[1]: Br7c4{wne .} ==> Nr7c4 ≠ 1
whip[1]: Pr7c7{ew .} ==> Br6c7 ≠ esw, Br7c6 ≠ sw, Br6c7 ≠ e, Br6c7 ≠ ne, Br7c6 ≠ ne
whip[1]: Br6c7{nes .} ==> Nr6c7 ≠ 1
whip[1]: Pr7c5{sw .} ==> Br6c4 ≠ se, Br6c5 ≠ sw
whip[1]: Br6c5{ew .} ==> Pr6c6 ≠ o, Pr6c6 ≠ ne
whip[1]: Pr6c6{sw .} ==> Br5c6 ≠ sw, Br5c6 ≠ esw, Br5c6 ≠ swn
whip[1]: Br6c4{ew .} ==> Pr6c4 ≠ o, Pr6c4 ≠ nw
whip[1]: Pr6c4{sw .} ==> Br5c3 ≠ se, Br5c3 ≠ nes
whip[1]: Pr8c3{ew .} ==> Br7c2 ≠ se, Br7c2 ≠ nes
whip[1]: Br7c2{ew .} ==> Pr7c3 ≠ sw, Nr7c2 ≠ 3
whip[1]: Pr7c3{ew .} ==> Br6c2 ≠ esw, Br6c3 ≠ o, Br6c3 ≠ n, Br6c3 ≠ e, Br6c3 ≠ ne
whip[1]: Br6c3{wne .} ==> Nr6c3 ≠ 0
whip[1]: Br6c2{wne .} ==> Pr6c2 ≠ ns, Pr6c3 ≠ ns, Pr6c3 ≠ se
P-single: Pr6c2 = se
w[1]-1-in-r5c1-symmetric-se-corner ==> Pr5c1 ≠ o
whip[1]: Pr6c2{se .} ==> Br5c2 ≠ w, Br5c1 ≠ e, Br5c2 ≠ nw, Br5c2 ≠ ew, Br5c2 ≠ wne
whip[1]: Br5c2{nes .} ==> Pr5c2 ≠ ns, Pr5c2 ≠ se
whip[1]: Pr5c1{ns .} ==> Vr4c1 ≠ 0, Br4c1 ≠ o, Br4c1 ≠ n, Br4c1 ≠ e
V-single: Vr4c1 = 1
vertical-line-r4{c0 c1} ==> Ir4c1 = in
I-single: Ir4c1 = in
whip[1]: Vr4c1{1 .} ==> Br4c0 ≠ o, Pr4c1 ≠ o, Pr4c1 ≠ ne
B-single: Br4c0 = e
whip[1]: Pr4c1{se .} ==> Br3c1 ≠ esw, Br3c1 ≠ swn, Br3c1 ≠ e
whip[1]: Br3c1{ew .} ==> Pr4c2 ≠ ew, Nr3c1 ≠ 1, Nr3c1 ≠ 3
N-single: Nr3c1 = 2
w[1]-adjacent-1-2-on-edge-forward-diagonal-2s-3-in-{r2 r3}c1 ==> Vr2c2 = 0, Vr3c1 = 1
V-single: Vr3c1 = 1
V-single: Vr2c2 = 0
w[1]-diagonal-1-1-in-{r2c1...r1c2}-with-no-ne-inner-sides ==> Hr2c2 = 0
H-single: Hr2c2 = 0
w[1]-2-in-r2c2-open-nw-corner ==> Hr3c2 = 1, Vr2c3 = 1, Hr3c3 = 0, Vr3c3 = 0
V-single: Vr3c3 = 0
H-single: Hr3c3 = 0
V-single: Vr2c3 = 1
H-single: Hr3c2 = 1
P-single: Pr3c3 = nw
P-single: Pr2c2 = o
w[1]-1-in-r2c1-symmetric-ne-corner ==> Pr3c1 ≠ o
w[1]-1-in-r1c2-symmetric-sw-corner ==> Pr1c3 ≠ o
vertical-line-r3{c0 c1} ==> Ir3c1 = in
I-single: Ir3c1 = in
same-colour-in-{r3 r4}c1 ==> Hr4c1 = 0
H-single: Hr4c1 = 0
whip[1]: Vr3c1{1 .} ==> Br3c0 ≠ o, Pr4c1 ≠ se, Br3c1 ≠ se
P-single: Pr4c1 = ns
B-single: Br3c0 = e
whip[1]: Pr4c1{ns .} ==> Br4c1 ≠ nw, Br4c1 ≠ swn
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 0
whip[1]: Vr2c2{0 .} ==> Pr3c2 ≠ ns, Br2c1 ≠ e, Br2c2 ≠ nw
B-single: Br2c2 = se
whip[1]: Pr2c3{se .} ==> Br2c3 ≠ ne, Br2c3 ≠ ns, Br1c2 ≠ s
whip[1]: Br2c3{ew .} ==> Pr3c4 ≠ ew, Pr3c4 ≠ sw
whip[1]: Pr3c4{se .} ==> Br3c3 ≠ nw, Br3c3 ≠ swn, Br3c3 ≠ wne
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ ns, Nr3c3 ≠ 3
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ ew
whip[1]: Pr3c2{ew .} ==> Br3c2 ≠ sw
whip[1]: Pr4c2{se .} ==> Vr4c2 ≠ 0, Br4c1 ≠ sw, Br4c2 ≠ nes, Br4c1 ≠ w
V-single: Vr4c2 = 1
vertical-line-r4{c1 c2} ==> Ir4c2 = out
I-single: Ir4c2 = out
whip[1]: Vr4c2{1 .} ==> Pr5c2 ≠ o, Pr5c2 ≠ ew
whip[1]: Br4c1{esw .} ==> Nr4c1 ≠ 1
whip[1]: Br4c2{wne .} ==> Pr4c3 ≠ o, Pr5c3 ≠ o, Pr5c3 ≠ se
whip[1]: Pr5c3{sw .} ==> Br5c3 ≠ nw, Br5c3 ≠ wne
whip[1]: Br5c3{ew .} ==> Nr5c3 ≠ 3
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ se
whip[1]: Br4c3{sw .} ==> Pr5c4 ≠ nw
whip[1]: Pr1c3{ew .} ==> Hr1c3 ≠ 0, Br1c3 ≠ se, Br1c3 ≠ s
H-single: Hr1c3 = 1
horizontal-line-{r0 r1}c3 ==> Ir1c3 = in
I-single: Ir1c3 = in
whip[1]: Hr1c3{1 .} ==> Br0c3 ≠ o, Pr1c4 ≠ o, Pr1c4 ≠ se
B-single: Br0c3 = s
whip[1]: Pr1c4{sw .} ==> Br1c4 ≠ nw, Br1c4 ≠ se, Br1c4 ≠ wne, Br1c4 ≠ o, Br1c4 ≠ e, Br1c4 ≠ s
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 1
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ n, Br1c4 ≠ ne
whip[1]: Pr6c3{sw .} ==> Br6c3 ≠ nw, Br6c3 ≠ swn, Br6c3 ≠ wne
whip[1]: Br6c3{sw .} ==> Pr6c4 ≠ sw, Nr6c3 ≠ 3
whip[1]: Hr5c7{1 .} ==> Br5c7 ≠ sw, Pr5c8 ≠ ns, Pr5c7 ≠ ns, Br4c7 ≠ ne, Br4c7 ≠ nw, Br4c7 ≠ ew, Br5c7 ≠ se, Br5c7 ≠ ew
P-single: Pr5c8 = sw
whip[1]: Pr5c8{sw .} ==> Br5c7 ≠ ns, Br4c7 ≠ se, Br5c7 ≠ nw
B-single: Br5c7 = ne
P-single: Pr6c8 = ns
whip[1]: Pr6c8{ns .} ==> Br6c7 ≠ wne, Br6c7 ≠ nes
whip[1]: Br6c7{ew .} ==> Nr6c7 ≠ 3
N-single: Nr6c7 = 2
diagonal-2-2+3-in-se-corner ==> Vr7c8 = 1, Hr8c7 = 1
H-single: Hr8c7 = 1
V-single: Vr7c8 = 1
vertical-line-r7{c7 c8} ==> Ir7c7 = in
I-single: Ir7c7 = in
same-colour-in-{r6 r7}c7 ==> Hr7c7 = 0
H-single: Hr7c7 = 0
P-single: Pr6c7 = sw
P-single: Pr7c8 = ns
whip[1]: Hr8c7{1 .} ==> Br8c7 ≠ o, Pr8c8 ≠ o, Pr8c7 ≠ o, Pr8c7 ≠ nw, Br7c7 ≠ n, Br7c7 ≠ nw
w[1]-3-in-r5c4-asymmetric-se-corner ==> Vr5c4 = 1, Hr5c4 = 1, Vr4c4 = 0, Hr5c3 = 0
H-single: Hr5c3 = 0
V-single: Vr4c4 = 0
H-single: Hr5c4 = 1
V-single: Vr5c4 = 1
w[1]-2-in-r4c3-open-se-corner ==> Hr4c3 = 1, Vr4c3 = 1, Hr4c2 = 0
H-single: Hr4c2 = 0
V-single: Vr4c3 = 1
H-single: Hr4c3 = 1
w[1]-2-in-r3c2-open-se-corner ==> Vr3c2 = 1, Hr3c1 = 0
H-single: Hr3c1 = 0
V-single: Vr3c2 = 1
w[1]-diagonal-3-2-in-{r4c2...r3c1}-non-closed-nw-corner ==> Hr5c2 = 1, Vr5c3 = 0
V-single: Vr5c3 = 0
H-single: Hr5c2 = 1
H-single: Hr5c1 = 0
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw
P-single: Pr4c2 = ns
P-single: Pr3c1 = ns
V-single: Vr2c1 = 1
P-single: Pr8c8 = nw
B-single: Br8c7 = n
vertical-line-r2{c0 c1} ==> Ir2c1 = in
I-single: Ir2c1 = in
no-vertical-line-r2{c1 c2} ==> Ir2c2 = in
I-single: Ir2c2 = in
no-horizontal-line-{r1 r2}c2 ==> Ir1c2 = in
I-single: Ir1c2 = in
no-vertical-line-r1{c1 c2} ==> Ir1c1 = in
I-single: Ir1c1 = in
vertical-line-r2{c2 c3} ==> Ir2c3 = out
I-single: Ir2c3 = out
no-horizontal-line-{r2 r3}c3 ==> Ir3c3 = out
I-single: Ir3c3 = out
no-vertical-line-r3{c2 c3} ==> Ir3c2 = out
I-single: Ir3c2 = out
horizontal-line-{r3 r4}c3 ==> Ir4c3 = in
I-single: Ir4c3 = in
no-vertical-line-r4{c3 c4} ==> Ir4c4 = in
I-single: Ir4c4 = in
horizontal-line-{r4 r5}c4 ==> Ir5c4 = out
I-single: Ir5c4 = out
vertical-line-r5{c3 c4} ==> Ir5c3 = in
I-single: Ir5c3 = in
no-vertical-line-r5{c2 c3} ==> Ir5c2 = in
I-single: Ir5c2 = in
no-vertical-line-r5{c1 c2} ==> Ir5c1 = in
I-single: Ir5c1 = in
no-horizontal-line-{r5 r6}c1 ==> Ir6c1 = in
I-single: Ir6c1 = in
vertical-line-r6{c1 c2} ==> Ir6c2 = out
I-single: Ir6c2 = out
same-colour-in-{r6 r7}c1 ==> Hr7c1 = 0
H-single: Hr7c1 = 0
P-single: Pr6c1 = ns
V-single: Vr5c1 = 1
V-single: Vr6c1 = 1
w[1]-1-in-r5c1-asymmetric-sw-corner ==> Pr5c2 ≠ nw
P-single: Pr5c2 = ne
different-colours-in-{r1 r2}c3 ==> Hr2c3 = 1
H-single: Hr2c3 = 1
V-single: Vr1c3 = 0
different-colours-in-r1{c0 c1} ==> Hr1c1 = 1
V-single: Vr1c1 = 1
different-colours-in-{r0 r1}c1 ==> Hr1c1 = 1
H-single: Hr1c1 = 1
different-colours-in-{r0 r1}c2 ==> Hr1c2 = 1
H-single: Hr1c2 = 1
whip[1]: Hr5c3{0 .} ==> Pr5c3 ≠ ew, Pr5c4 ≠ ew, Pr5c4 ≠ sw, Br4c3 ≠ ns, Br4c3 ≠ sw, Br5c3 ≠ n, Br5c3 ≠ ne, Br5c3 ≠ ns
whip[1]: Pr5c3{nw .} ==> Br4c2 ≠ swn, Br4c3 ≠ ne, Br5c2 ≠ nes, Br5c2 ≠ s
whip[1]: Br5c2{se .} ==> Nr5c2 ≠ 1, Nr5c2 ≠ 3
N-single: Nr5c2 = 2
whip[1]: Pr6c3{sw .} ==> Br5c2 ≠ se, Br5c3 ≠ ew, Br5c3 ≠ w, Br6c3 ≠ s
B-single: Br5c2 = ns
P-single: Pr5c3 = nw
whip[1]: Pr5c3{nw .} ==> Br4c2 ≠ wne
B-single: Br4c2 = esw
P-single: Pr3c2 = se
P-single: Pr4c3 = se
w[1]-1-in-r2c1-symmetric-se-corner ==> Pr2c1 ≠ o
P-single: Pr2c1 = ns
whip[1]: Pr3c2{se .} ==> Br2c1 ≠ s, Br3c1 ≠ nw, Br3c2 ≠ ns
B-single: Br3c2 = nw
B-single: Br3c1 = ew
B-single: Br2c1 = w
whip[1]: Pr4c3{se .} ==> Br3c3 ≠ e, Br3c3 ≠ o, Br4c3 ≠ ew
B-single: Br4c3 = nw
whip[1]: Pr4c4{ew .} ==> Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br4c4 ≠ nw, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw, Br4c4 ≠ swn, Br4c4 ≠ wne, Br3c4 ≠ o, Br3c4 ≠ n, Br3c4 ≠ e, Br3c4 ≠ ne, Br4c4 ≠ w
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br3c3{se .} ==> Nr3c3 ≠ 0
whip[1]: Pr2c1{ns .} ==> Br1c1 ≠ o
B-single: Br1c1 = nw
N-single: Nr1c1 = 2
P-single: Pr1c1 = se
P-single: Pr1c2 = ew
w[1]-1-in-r1c2-asymmetric-nw-corner ==> Pr2c3 ≠ ns
P-single: Pr2c3 = se
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ e
B-single: Br1c2 = n
P-single: Pr1c3 = ew
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ nw, Br1c3 ≠ wne
whip[1]: Br1c3{nes .} ==> Pr2c4 ≠ ns, Pr2c4 ≠ se
whip[1]: Pr2c4{ew .} ==> Vr2c4 ≠ 1, Br2c3 ≠ ew, Br2c4 ≠ nw, Br2c4 ≠ ew, Br2c4 ≠ sw
V-single: Vr2c4 = 0
B-single: Br2c3 = nw
no-vertical-line-r2{c3 c4} ==> Ir2c4 = out
I-single: Ir2c4 = out
whip[1]: Pr2c5{sw .} ==> Br1c5 ≠ sw
whip[1]: Br1c5{ew .} ==> Pr1c6 ≠ o
whip[1]: Pr1c6{sw .} ==> Br1c6 ≠ se, Br1c6 ≠ o, Br1c6 ≠ e, Br1c6 ≠ s
whip[1]: Br1c6{nes .} ==> Nr1c6 ≠ 0
whip[1]: Pr3c5{sw .} ==> Br3c5 ≠ nw, Br3c5 ≠ swn, Br3c5 ≠ wne
whip[1]: Pr3c4{se .} ==> Br3c4 ≠ ns, Br3c4 ≠ ew, Br3c4 ≠ nes, Br3c4 ≠ w
whip[1]: Pr5c4{se .} ==> Br5c4 ≠ esw, Br5c4 ≠ nes
whip[1]: Br5c4{wne .} ==> Pr5c4 ≠ o, Pr5c5 ≠ o, Pr5c5 ≠ ne, Pr5c5 ≠ ns, Pr5c5 ≠ se, Pr6c4 ≠ se, Pr6c4 ≠ ew
w[1]-3-in-r7c5-asymmetric-nw-corner ==> Vr7c6 = 1, Hr8c6 = 0
H-single: Hr8c6 = 0
V-single: Vr7c6 = 1
w[1]-diagonal-3-2s-in-{r5c4...r7c6}-non-closed-se-end ==> Vr7c7 = 1
V-single: Vr7c7 = 1
w[1]-3-in-r6c6-hit-by-verti-line-at-se ==> Vr6c6 = 1
V-single: Vr6c6 = 1
V-single: Vr5c6 = 0
H-single: Hr6c5 = 0
w[1]-3-in-r7c5-hit-by-verti-line-at-ne ==> Hr7c6 = 0
H-single: Hr7c6 = 0
w[1]-3-in-r6c6-hit-by-verti-line-at-sw ==> Hr7c5 = 0
H-single: Hr7c5 = 0
w[1]-3-in-r6c6-closed-nw-corner ==> Pr7c7 ≠ se, Pr7c7 ≠ nw
adjacent-3-2-in-{r7 r6}c5-noline-north ==> Hr7c4 = 0
H-single: Hr7c4 = 0
adjacent-3-2-in-{r5 r6}c4-noline-south ==> Hr6c3 = 0
H-single: Hr6c3 = 0
w[1]-3-in-r6c2-isolated-at-ne-corner ==> Vr6c3 = 1
V-single: Vr6c3 = 1
w[1]-3-in-r7c3-hit-by-verti-line-at-nw ==> Hr7c2 = 0
H-single: Hr7c2 = 0
w[1]-3-in-r6c2-closed-ne-corner ==> Pr7c2 ≠ ne
P-single: Pr7c2 = ns
V-single: Vr7c2 = 1
H-single: Hr8c2 = 0
P-single: Pr7c5 = ns
V-single: Vr6c5 = 1
P-single: Pr5c4 = se
no-horizontal-line-{r7 r8}c2 ==> Ir7c2 = out
I-single: Ir7c2 = out
vertical-line-r6{c2 c3} ==> Ir6c3 = in
I-single: Ir6c3 = in
no-horizontal-line-{r6 r7}c4 ==> Ir6c4 = out
I-single: Ir6c4 = out
vertical-line-r6{c4 c5} ==> Ir6c5 = in
I-single: Ir6c5 = in
no-horizontal-line-{r5 r6}c5 ==> Ir5c5 = in
I-single: Ir5c5 = in
no-horizontal-line-{r6 r7}c6 ==> Ir7c6 = out
I-single: Ir7c6 = out
different-colours-in-r5{c4 c5} ==> Hr5c5 = 1
V-single: Vr5c5 = 1
V-single: Vr4c5 = 0
H-single: Hr5c5 = 0
w[1]-2-in-r4c5-open-sw-corner ==> Hr4c5 = 1, Vr4c6 = 1, Hr4c6 = 0, Vr3c6 = 0
V-single: Vr3c6 = 0
H-single: Hr4c6 = 0
V-single: Vr4c6 = 1
H-single: Hr4c5 = 1
w[1]-3-in-r5c4-closed-ne-corner ==> Pr6c4 ≠ ne
P-single: Pr6c4 = ns
H-single: Hr6c4 = 0
V-single: Vr6c4 = 1
w[1]-diagonal-3-2-in-{r7c3...r6c4}-non-closed-ne-corner ==> Vr7c3 = 1
V-single: Vr7c3 = 1
w[1]-3-in-r6c2-hit-by-verti-line-at-se ==> Hr7c3 = 0
H-single: Hr7c3 = 0
no-horizontal-line-{r4 r5}c5 ==> Ir4c5 = in
I-single: Ir4c5 = in
vertical-line-r4{c5 c6} ==> Ir4c6 = out
I-single: Ir4c6 = out
no-horizontal-line-{r3 r4}c6 ==> Ir3c6 = out
I-single: Ir3c6 = out
no-vertical-line-r3{c5 c6} ==> Ir3c5 = out
I-single: Ir3c5 = out
same-colour-in-r4{c6 c7} ==> Vr4c7 = 0
V-single: Vr4c7 = 0
P-single: Pr5c7 = ew
H-single: Hr5c6 = 1
whip[1]: Hr8c6{0 .} ==> Br8c6 ≠ n, Pr8c6 ≠ ew, Pr8c7 ≠ ew, Br7c6 ≠ ns, Br7c6 ≠ se
P-single: Pr8c7 = ne
P-single: Pr8c6 = nw
B-single: Br8c6 = o
whip[1]: Pr8c7{ne .} ==> Br7c6 ≠ nw, Br7c7 ≠ se
B-single: Br7c7 = esw
N-single: Nr7c7 = 3
P-single: Pr7c7 = ns
B-single: Br7c6 = ew
P-single: Pr7c6 = ns
whip[1]: Pr7c7{ns .} ==> Br6c6 ≠ esw, Br6c6 ≠ swn, Br6c6 ≠ nes, Br6c7 ≠ se
B-single: Br6c7 = ew
B-single: Br6c6 = wne
P-single: Pr6c6 = se
whip[1]: Pr6c6{se .} ==> Br5c6 ≠ w, Br5c6 ≠ e, Br5c6 ≠ n, Br5c6 ≠ o, Br5c5 ≠ s, Br5c5 ≠ e, Br5c5 ≠ ne, Br5c5 ≠ ns, Br5c5 ≠ se, Br5c5 ≠ ew, Br5c5 ≠ wne, Br5c5 ≠ nes, Br5c6 ≠ ne, Br5c6 ≠ nw, Br5c6 ≠ ew, Br5c6 ≠ wne, Br6c5 ≠ ne, Br6c5 ≠ ns, Br6c5 ≠ nw
whip[1]: Br6c5{ew .} ==> Pr6c5 ≠ ew
P-single: Pr6c5 = ns
whip[1]: Pr6c5{ns .} ==> Br5c5 ≠ n, Br5c5 ≠ o, Br5c4 ≠ swn, Br6c4 ≠ ne, Br6c4 ≠ ns, Br6c4 ≠ nw, Br6c5 ≠ se
B-single: Br6c5 = ew
B-single: Br6c4 = ew
P-single: Pr7c4 = ns
B-single: Br5c4 = wne
P-single: Pr4c6 = sw
P-single: Pr5c5 = sw
whip[1]: Pr7c4{ns .} ==> Br6c3 ≠ w, Br6c3 ≠ ns, Br6c3 ≠ sw, Br7c3 ≠ nes, Br7c4 ≠ wne
B-single: Br7c4 = ew
N-single: Nr7c4 = 2
B-single: Br7c3 = esw
P-single: Pr8c3 = ne
P-single: Pr7c3 = ns
B-single: Br6c3 = ew
N-single: Nr6c3 = 2
P-single: Pr6c3 = sw
whip[1]: Pr8c3{ne .} ==> Br8c2 ≠ n, Br7c2 ≠ s, Br7c2 ≠ ns
B-single: Br7c2 = ew
N-single: Nr7c2 = 2
P-single: Pr8c2 = nw
B-single: Br8c2 = o
whip[1]: Pr8c2{nw .} ==> Br7c1 ≠ sw, Br7c1 ≠ swn
B-single: Br7c1 = esw
N-single: Nr7c1 = 3
P-single: Pr7c1 = ns
whip[1]: Pr7c1{ns .} ==> Br6c1 ≠ se
B-single: Br6c1 = ew
whip[1]: Pr7c3{ns .} ==> Br6c2 ≠ swn
B-single: Br6c2 = wne
whip[1]: Pr6c3{sw .} ==> Br5c3 ≠ s
whip[1]: Br5c3{e .} ==> Nr5c3 ≠ 2
whip[1]: Pr4c6{sw .} ==> Br4c6 ≠ ns, Br4c6 ≠ ne, Br4c6 ≠ s, Br4c6 ≠ e, Br4c6 ≠ n, Br4c6 ≠ o, Br4c5 ≠ ns, Br3c6 ≠ ns, Br3c6 ≠ w, Br3c6 ≠ s, Br3c5 ≠ ne, Br3c5 ≠ w, Br3c5 ≠ e, Br3c5 ≠ n, Br3c5 ≠ o, Br3c5 ≠ se, Br3c5 ≠ ew, Br3c5 ≠ esw, Br3c5 ≠ nes, Br3c6 ≠ nw, Br3c6 ≠ se, Br3c6 ≠ ew, Br3c6 ≠ sw, Br3c6 ≠ esw, Br3c6 ≠ swn, Br3c6 ≠ wne, Br3c6 ≠ nes, Br4c5 ≠ nw, Br4c5 ≠ se, Br4c5 ≠ ew, Br4c5 ≠ sw, Br4c6 ≠ nw, Br4c6 ≠ se, Br4c6 ≠ swn, Br4c6 ≠ wne, Br4c6 ≠ nes
B-single: Br4c5 = ne
whip[1]: Pr4c5{ew .} ==> Br3c4 ≠ nw, Br3c4 ≠ se, Br4c4 ≠ se, Br4c4 ≠ nes, Br4c4 ≠ e, Br4c4 ≠ ne
whip[1]: Br4c4{ns .} ==> Nr4c4 ≠ 3
whip[1]: Br3c4{wne .} ==> Pr3c5 ≠ ns, Pr3c5 ≠ nw, Pr3c5 ≠ ew, Nr3c4 ≠ 2
P-single: Pr2c4 = ew
H-single: Hr2c4 = 1
V-single: Vr1c4 = 0
no-vertical-line-r1{c3 c4} ==> Ir1c4 = in
I-single: Ir1c4 = in
different-colours-in-{r0 r1}c4 ==> Hr1c4 = 1
H-single: Hr1c4 = 1
whip[1]: Pr2c4{ew .} ==> Br1c4 ≠ w, Br1c3 ≠ nes, Br1c4 ≠ ew, Br2c4 ≠ se
B-single: Br1c3 = ns
N-single: Nr1c3 = 2
P-single: Pr1c4 = ew
whip[1]: Br2c4{ns .} ==> Pr2c5 ≠ ns, Pr2c5 ≠ se
whip[1]: Pr2c5{sw .} ==> Br2c5 ≠ nw, Br2c5 ≠ swn, Br2c5 ≠ wne
whip[1]: Br1c4{nes .} ==> Pr1c5 ≠ o, Pr1c5 ≠ se, Nr1c4 ≠ 1
whip[1]: Pr2c6{sw .} ==> Br1c5 ≠ nw, Br1c5 ≠ se, Br2c6 ≠ nw, Br2c6 ≠ se, Br2c6 ≠ swn, Br2c6 ≠ wne, Br2c6 ≠ o, Br2c6 ≠ e, Br2c6 ≠ s
whip[1]: Br2c6{nes .} ==> Nr2c6 ≠ 0
whip[1]: Hr1c4{1 .} ==> Br0c4 ≠ o
B-single: Br0c4 = s
whip[1]: Pr3c5{sw .} ==> Br2c5 ≠ se, Br2c5 ≠ ew, Br2c5 ≠ nes, Br2c5 ≠ s, Br2c5 ≠ w, Br2c5 ≠ ns, Br3c5 ≠ s
whip[1]: Br3c5{sw .} ==> Pr3c6 ≠ ns, Pr3c6 ≠ se, Pr3c6 ≠ sw, Nr3c5 ≠ 0, Nr3c5 ≠ 1, Nr3c5 ≠ 3
N-single: Nr3c5 = 2
whip[1]: Pr5c6{ns .} ==> Br5c5 ≠ nw, Br5c6 ≠ s, Br5c6 ≠ se
B-single: Br5c5 = w
N-single: Nr5c5 = 1
P-single: Pr5c6 = ne
whip[1]: Pr5c6{ne .} ==> Br4c6 ≠ w, Br4c6 ≠ ew
whip[1]: Br4c6{esw .} ==> Pr4c7 ≠ ew, Pr4c7 ≠ sw, Nr4c6 ≠ 0, Nr4c6 ≠ 1
whip[1]: Pr4c7{ns .} ==> Vr3c7 ≠ 0, Br3c7 ≠ s, Br3c7 ≠ ne, Br3c7 ≠ ns, Br3c7 ≠ se, Br3c7 ≠ nes, Br3c6 ≠ o, Br3c6 ≠ n, Br3c7 ≠ o, Br3c7 ≠ n, Br3c7 ≠ e
V-single: Vr3c7 = 1
vertical-line-r3{c6 c7} ==> Ir3c7 = in
I-single: Ir3c7 = in
different-colours-in-r3{c7 c8} ==> Hr3c8 = 1
V-single: Vr3c8 = 1
different-colours-in-{r3 r4}c7 ==> Hr4c7 = 1
H-single: Hr4c7 = 1
same-colour-in-{r2 r3}c7 ==> Hr3c7 = 0
H-single: Hr3c7 = 0
whip[1]: Vr3c7{1 .} ==> Pr3c7 ≠ o, Pr3c7 ≠ ne, Pr3c7 ≠ nw, Pr3c7 ≠ ew
whip[1]: Pr3c7{sw .} ==> Br2c6 ≠ esw, Br2c6 ≠ nes
whip[1]: Br2c6{sw .} ==> Nr2c6 ≠ 3
whip[1]: Vr3c8{1 .} ==> Br3c8 ≠ o, Pr3c8 ≠ o, Pr3c8 ≠ nw, Br3c7 ≠ w, Br3c7 ≠ nw, Br3c7 ≠ sw, Br3c7 ≠ swn
B-single: Br3c8 = w
w[1]-1-in-r2c7-asymmetric-se-corner ==> Pr2c7 ≠ sw, Pr2c7 ≠ ne
P-single: Pr2c7 = o
H-single: Hr2c6 = 0
H-single: Hr2c7 = 0
V-single: Vr1c7 = 0
V-single: Vr2c7 = 0
w[1]-2-in-r1c7-open-sw-corner ==> Hr1c7 = 1, Vr1c8 = 1
V-single: Vr1c8 = 1
H-single: Hr1c7 = 1
P-single: Pr1c8 = sw
horizontal-line-{r0 r1}c7 ==> Ir1c7 = in
I-single: Ir1c7 = in
no-vertical-line-r2{c6 c7} ==> Ir2c6 = in
I-single: Ir2c6 = in
different-colours-in-{r2 r3}c6 ==> Hr3c6 = 1
H-single: Hr3c6 = 1
whip[1]: Pr2c7{o .} ==> Br1c6 ≠ ne, Br1c6 ≠ ns, Br1c6 ≠ ew, Br1c6 ≠ sw, Br1c6 ≠ esw, Br1c6 ≠ swn, Br1c6 ≠ wne, Br1c6 ≠ nes, Br1c7 ≠ sw, Br2c6 ≠ n, Br2c6 ≠ ne, Br2c6 ≠ ns, Br2c6 ≠ ew, Br2c7 ≠ n, Br2c7 ≠ w
B-single: Br1c7 = ne
P-single: Pr1c7 = ew
P-single: Pr2c8 = ns
w[1]-1-in-r2c7-asymmetric-ne-corner ==> Pr3c7 ≠ se, Pr3c7 ≠ ns
P-single: Pr3c7 = sw
whip[1]: Pr1c7{ew .} ==> Br1c6 ≠ w
whip[1]: Br1c6{nw .} ==> Pr1c6 ≠ sw, Pr2c6 ≠ ne, Pr2c6 ≠ ew, Nr1c6 ≠ 3
P-single: Pr3c4 = se
H-single: Hr3c4 = 1
V-single: Vr3c4 = 1
H-single: Hr4c4 = 0

LOOP[12]: Hr3c4-Vr3c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2-Vr3c2-Hr3c2-Vr2c3-Hr2c3-Hr2c4- ==> Vr2c5 = 0
V-single: Vr2c5 = 0
no-vertical-line-r2{c4 c5} ==> Ir2c5 = out
I-single: Ir2c5 = out
no-horizontal-line-{r3 r4}c4 ==> Ir3c4 = in
I-single: Ir3c4 = in
different-colours-in-r3{c4 c5} ==> Hr3c5 = 1
V-single: Vr3c5 = 1
H-single: Hr3c5 = 0

LOOP[52]: Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Hr8c1-Vr7c2-Vr6c2-Hr6c2-Vr6c3-Vr7c3-Hr8c3-Vr7c4-Vr6c4-Vr5c4-Hr5c4-Vr5c5-Vr6c5-Vr7c5-Hr8c5-Vr7c6-Vr6c6-Hr6c6-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Hr5c7-Hr5c6-Vr4c6-Hr4c5-Vr3c5-Hr3c4-Vr3c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2-Vr3c2-Hr3c2-Vr2c3-Hr2c3-Hr2c4- ==> Vr1c5 = 0
V-single: Vr1c5 = 0
no-vertical-line-r1{c4 c5} ==> Ir1c5 = in
I-single: Ir1c5 = in
same-colour-in-r1{c5 c6} ==> Vr1c6 = 0
V-single: Vr1c6 = 0
different-colours-in-{r1 r2}c5 ==> Hr2c5 = 1
H-single: Hr2c5 = 1
different-colours-in-{r0 r1}c5 ==> Hr1c5 = 1
H-single: Hr1c5 = 1

LOOP[62]: Hr3c6-Vr3c7-Hr4c7-Vr3c8-Vr2c8-Vr1c8-Hr1c7-Hr1c6-Hr1c5-Hr1c4-Hr1c3-Hr1c2-Hr1c1-Vr1c1-Vr2c1-Vr3c1-Vr4c1-Vr5c1-Vr6c1-Vr7c1-Hr8c1-Vr7c2-Vr6c2-Hr6c2-Vr6c3-Vr7c3-Hr8c3-Vr7c4-Vr6c4-Vr5c4-Hr5c4-Vr5c5-Vr6c5-Vr7c5-Hr8c5-Vr7c6-Vr6c6-Hr6c6-Vr6c7-Vr7c7-Hr8c7-Vr7c8-Vr6c8-Vr5c8-Hr5c7-Hr5c6-Vr4c6-Hr4c5-Vr3c5-Hr3c4-Vr3c4-Hr4c3-Vr4c3-Hr5c2-Vr4c2-Vr3c2-Hr3c2-Vr2c3-Hr2c3-Hr2c4-Hr2c5- ==> Vr2c6 = 1
V-single: Vr2c6 = 1
PUZZLE 0 SOLVED. rating-type = W+nW1eq+Col+Loop, MOST COMPLEX RULE TRIED = W[1]

XXXXXXX
XXOOOXX
XOOXOOX
XOXXXOO
XXXOXXX
XOXOXOX
XOXOXOX

.———.———.———.———.———.———.———.
|     1           2       2 |
.   .   .———.———.———.   .   .
| 1   2 | 2   2     |     1 |
.   .———.   .———.   .———.   .
|   | 2     |   |       |   |
.   .   .———.   .———.   .———.
|   | 3 | 2       2 |     2
.   .———.   .———.   .———.———.
| 1         | 3 |         2 |
.   .———.   .   .   .———.   .
| 2 | 3 |   | 2 | 2 | 3 |   |
.   .   .   .   .   .   .   .
|   |   | 3 |   | 3 | 2 |   |
.———.   .———.   .———.   .———.

init-time = 50.22s, solve-time = 21.38s, total-time = 1m 11.6s
nb-facts=<Fact-92747>
Quasi-Loop max length = 62
Colours effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W+nW1eq+Col+Loop
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
