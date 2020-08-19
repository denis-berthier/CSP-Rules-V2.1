
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-3-ON-PSEUDO-EDGE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

ADJACENT 1-3 ON PSEUDO EDGE, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations* (create$
    (value-row-col-to-V-label 1 1 3)
))

(solve 
5 5 
. . . . .
. 1 3 . .
. . . . .
. . . . . 
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 1 3 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00621300000000247
start create-csp-variables
start create-labels 0.000877999999943313
start init-physical-csp-links 0.00489399999992202
start init-physical-non-csp-links 2.44149899999991
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.466494000000012
     start init-physical-BN-non-csp-links at local time 1.71597999999994
     start init-physical-BP-non-csp-links at local time 3.10519699999998
     end init-physical-BP-non-csp-links at local time 20.023185
end init-physical-non-csp-links 22.4647249999999
start init-corner-B-c-values 22.4712609999999
start init-outer-B-candidates 22.471335
start init-outer-I-candidates 22.471857
start init-H-candidates 22.472166
start init-V-candidates 22.47304
start init-P-candidates 22.473931
start init-inner-I-candidates 22.4762459999999
start init-inner-N-and-B-candidates 22.476756
start solution 22.482263
Simulated elimination of 1313
entering BRT
V-single: Vr1c3 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
adjacent-1-3-on-pseudo-edge-in-r2{c2 c3} ==> Vr2c2 = 0, Hr3c2 = 0, Hr2c3 = 1
r2c2-symmetric-sw-corner
r3c1-symmetric-ne-corner
r1c3-asymmetric-sw-corner
r2c2-asymmetric-ne-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9450 links. Density = 3.46546090630054%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51239>
whip[1]: Br2c3{swn .} ==> Pr3c3 ≠ o
whip[1]: Br2c3{swn .} ==> Pr3c4 ≠ o, se
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr3c3{se .} ==> Br3c3 ≠ s, se, o, e
whip[1]: Pr2c4{nw .} ==> Br1c4 ≠ sw, swn, esw
whip[1]: Pr2c4{nw .} ==> Br2c4 ≠ nw, wne, swn
whip[1]: Pr3c2{o .} ==> Br3c1 ≠ n, swn, esw, ew, se, nw, ns, e
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br1c3{s .} ==> Nr1c3 ≠ 0
Entering_level_W1_with_<Fact-51258>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :       :   :   :
.........———.........
:     1 : 3 :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.482263, solve-time = 26.2469580000001, total-time = 48.7292210000001
nb-facts=<Fact-51284>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************


WITHOUT THIS RULE:
CLIPS> ***********************************************************************************************
***  SlitherRules 2.0c.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 1 3 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 6.000000000006e-05
start create-csp-variables
start create-labels 0.00159699999999996
start init-physical-csp-links 0.00762399999999996
start init-physical-non-csp-links 2.018474
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.379722
     start init-physical-BN-non-csp-links at local time 1.406515
     start init-physical-BP-non-csp-links at local time 2.533357
     end init-physical-BP-non-csp-links at local time 17.967144
end init-physical-non-csp-links 19.98568
start init-corner-B-c-values 19.986072
start init-outer-B-candidates 19.98615
start init-outer-I-candidates 19.986612
start init-H-candidates 19.986934
start init-V-candidates 19.987503
start init-P-candidates 19.988108
start init-inner-I-candidates 19.989966
start init-inner-N-and-B-candidates 19.990453
start solution 19.995643
Simulated elimination of 1313
entering BRT
V-single: Vr1c3 = 0
Starting_init_links_with_<Fact-27602>
783 candidates, 2595 csp-links and 10726 links. Density = 3.5034770196601%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-54248>
whip[1]: Br2c3{esw .} ==> Pr2c3 ≠ o
whip[1]: Br2c3{esw .} ==> Pr2c4 ≠ o, ne
whip[1]: Br2c2{e .} ==> Pr3c2 ≠ ne
whip[1]: Br2c3{esw .} ==> Pr3c3 ≠ o, sw
whip[1]: Br2c2{w .} ==> Pr3c3 ≠ nw
whip[1]: Br2c3{esw .} ==> Pr3c4 ≠ o, se
whip[1]: Br2c2{n .} ==> Pr2c2 ≠ se
whip[1]: Br2c2{n .} ==> Pr2c3 ≠ sw
whip[1]: Pr2c3{ew .} ==> Hr2c3 ≠ 0
H-single: Hr2c3 = 1
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Pr2c4{sw .} ==> Br2c4 ≠ wne, nw, swn
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr3c3{ew .} ==> Br3c3 ≠ s, se, o, e
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Pr3c3{ew .} ==> Br3c2 ≠ ne, wne, nes
whip[1]: Pr2c4{sw .} ==> Br1c4 ≠ swn, sw, esw
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ w, s
whip[1]: Br2c2{e .} ==> Vr2c2 ≠ 1
V-single: Vr2c2 = 0
whip[1]: Br2c2{e .} ==> Hr3c2 ≠ 1
H-single: Hr3c2 = 0
whip[1]: Pr3c2{sw .} ==> Br3c1 ≠ e, nw, swn, n, ns, se, ew, esw
Entering_level_W1_with_<Fact-54292>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :       :   :   :
.........———.........
:     1 : 3 :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 19.995643, solve-time = 31.640735, total-time = 51.636378
nb-facts=<Fact-54318>
***********************************************************************************************
***  SlitherRules 2.0c.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

reduced to:
whip[1]: Br2c3{esw .} ==> Pr2c3 ≠ o
whip[1]: Br2c2{n .} ==> Pr2c3 ≠ sw
whip[1]: Pr2c3{ew .} ==> Hr2c3 ≠ 0
H-single: Hr2c3 = 1
whip[1]: Pr2c3{ew .} ==> Br2c2 ≠ w, s
whip[1]: Br2c2{e .} ==> Vr2c2 ≠ 1
V-single: Vr2c2 = 0
whip[1]: Br2c2{e .} ==> Hr3c2 ≠ 1
H-single: Hr3c2 = 0








(bind ?*simulated-eliminations* (create$
(value-row-col-to-V-label 1 1 3)
))

(solve
5 5
. . . . .
. 3 1 . .
. . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 1 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00484799999999552
start create-csp-variables
start create-labels 0.000848999999988109
start init-physical-csp-links 0.00668999999999187
start init-physical-non-csp-links 2.31983299999999
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.435599999999994
     start init-physical-BN-non-csp-links at local time 1.67040899999999
     start init-physical-BP-non-csp-links at local time 2.985742
     end init-physical-BP-non-csp-links at local time 20.562554
end init-physical-non-csp-links 22.882431
start init-corner-B-c-values 22.887572
start init-outer-B-candidates 22.887644
start init-outer-I-candidates 22.888134
start init-H-candidates 22.888431
start init-V-candidates 22.889424
start init-P-candidates 22.890307
start init-inner-I-candidates 22.89244
start init-inner-N-and-B-candidates 22.892935
start solution 22.898246
Simulated elimination of 1313
entering BRT
V-single: Vr1c3 = 0
adjacent-1-3-on-pseudo-edge-in-r2{c3 c2} ==> Vr2c4 = 0, Hr3c3 = 0, Hr2c2 = 1
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r3c4-symmetric-nw-corner
r2c3-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r2c3-asymmetric-nw-corner
r1c2-asymmetric-se-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9426 links. Density = 3.45665973574485%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51191>
whip[1]: Br2c2{swn .} ==> Pr3c2 ≠ o, sw
whip[1]: Br2c2{swn .} ==> Pr3c3 ≠ o
whip[1]: Pr3c3{sw .} ==> Br3c2 ≠ w, sw, o, s
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne, wne, nes
whip[1]: Pr2c2{ne .} ==> Br1c1 ≠ se
whip[1]: Pr2c2{ne .} ==> Br2c1 ≠ ne, nes, wne
whip[1]: Pr3c4{o .} ==> Br3c4 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
Entering_level_W1_with_<Fact-51210>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :       :   :   :
.....———.............
:   : 3 : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.898246, solve-time = 27.253785, total-time = 50.152031
nb-facts=<Fact-51236>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




(bind ?*simulated-eliminations* (create$
(value-row-col-to-V-label 1 5 3)
))

(solve
5 5
. . . . .
. . . . .
. . . . .
. 1 3 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. 1 3 . .
. . . . .

start init-grid-structure 0.00498600000000238
start create-csp-variables
start create-labels 0.000845999999995684
start init-physical-csp-links 0.0045109999999795
start init-physical-non-csp-links 2.37751899999998
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.451767000000018
     start init-physical-BN-non-csp-links at local time 1.69125300000002
     start init-physical-BP-non-csp-links at local time 3.08112200000002
     end init-physical-BP-non-csp-links at local time 21.74797
end init-physical-non-csp-links 24.125538
start init-corner-B-c-values 24.130817
start init-outer-B-candidates 24.130899
start init-outer-I-candidates 24.131712
start init-H-candidates 24.132337
start init-V-candidates 24.133661
start init-P-candidates 24.134819
start init-inner-I-candidates 24.137485
start init-inner-N-and-B-candidates 24.138016
start solution 24.143678
Simulated elimination of 1353
entering BRT
V-single: Vr5c3 = 0
adjacent-1-3-on-pseudo-edge-in-r4{c2 c3} ==> Vr4c2 = 0, Hr5c3 = 1, Hr4c2 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c2-symmetric-nw-corner
r3c1-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r5c3-asymmetric-nw-corner
r4c2-asymmetric-se-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9446 links. Density = 3.46399404454126%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51231>
whip[1]: Br4c3{esw .} ==> Pr4c3 ≠ o
whip[1]: Br4c3{esw .} ==> Pr4c4 ≠ o, ne
whip[1]: Pr4c4{sw .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c3{se .} ==> Br3c3 ≠ e, ne, o, n
whip[1]: Pr4c2{o .} ==> Br3c1 ≠ e, wne, swn, sw, ew, ns, ne, s
whip[1]: Pr5c4{nw .} ==> Br4c4 ≠ sw, swn, esw
whip[1]: Pr5c4{nw .} ==> Br5c4 ≠ nw, wne, swn
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br5c3{n .} ==> Nr5c3 ≠ 0
Entering_level_W1_with_<Fact-51250>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     1 : 3 :   :   :
.........———.........
:   :       :   :   :
.....................

init-time = 24.143678, solve-time = 27.754895, total-time = 51.898573
nb-facts=<Fact-51276>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************





(bind ?*simulated-eliminations* (create$
(value-row-col-to-V-label 1 5 3)
))

(solve
5 5
. . . . .
. . . . .
. . . . .
. 3 1 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. 3 1 . .
. . . . .

start init-grid-structure 0.00483800000000656
start create-csp-variables
start create-labels 0.000906999999983782
start init-physical-csp-links 0.00497899999999163
start init-physical-non-csp-links 2.38656599999999
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.464004999999986
     start init-physical-BN-non-csp-links at local time 1.764455
     start init-physical-BP-non-csp-links at local time 3.04111799999998
     end init-physical-BP-non-csp-links at local time 20.124357
end init-physical-non-csp-links 22.510974
start init-corner-B-c-values 22.516103
start init-outer-B-candidates 22.516174
start init-outer-I-candidates 22.516663
start init-H-candidates 22.516957
start init-V-candidates 22.517837
start init-P-candidates 22.518865
start init-inner-I-candidates 22.521029
start init-inner-N-and-B-candidates 22.521549
start solution 22.526898
Simulated elimination of 1353
entering BRT
V-single: Vr5c3 = 0
adjacent-1-3-on-pseudo-edge-in-r4{c3 c2} ==> Vr4c4 = 0, Hr5c2 = 1, Hr4c3 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c3-symmetric-ne-corner
r3c4-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r5c2-asymmetric-ne-corner
r4c3-asymmetric-sw-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9422 links. Density = 3.45519287398557%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51183>
whip[1]: Br4c2{esw .} ==> Pr4c2 ≠ o, nw
whip[1]: Br4c2{esw .} ==> Pr4c3 ≠ o
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ w, nw, o, n
whip[1]: Pr4c2{sw .} ==> Br3c1 ≠ nes, se, esw
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ s, nes, wne, ew, se, nw, ns, w
whip[1]: Pr5c2{ne .} ==> Br4c1 ≠ se, nes, esw
whip[1]: Pr5c2{ne .} ==> Br5c1 ≠ ne
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Br5c2{n .} ==> Nr5c2 ≠ 0
Entering_level_W1_with_<Fact-51202>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   : 3 : 1     :   :
.....———.............
:   :       :   :   :
.....................

init-time = 22.526898, solve-time = 27.061019, total-time = 49.587917
nb-facts=<Fact-51228>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************







(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 3 1)
))

(solve
5 5
. . . . .
. 1 . . .
. 3 . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 1 . . .
. 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.00584800000001451
start create-csp-variables
start create-labels 0.000861000000014656
start init-physical-csp-links 0.00500200000001882
start init-physical-non-csp-links 2.33348600000002
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.455083000000002
     start init-physical-BN-non-csp-links at local time 1.698757
     start init-physical-BP-non-csp-links at local time 2.98033599999999
     end init-physical-BP-non-csp-links at local time 20.484553
end init-physical-non-csp-links 22.818085
start init-corner-B-c-values 22.824203
start init-outer-B-candidates 22.824267
start init-outer-I-candidates 22.824929
start init-H-candidates 22.825342
start init-V-candidates 22.826748
start init-P-candidates 22.828157
start init-inner-I-candidates 22.831155
start init-inner-N-and-B-candidates 22.831794
start solution 22.838275
Simulated elimination of 1231
entering BRT
H-single: Hr3c1 = 0
adjacent-1-3-on-pseudo-edge-in-{r2 r3}c2 ==> Vr2c3 = 0, Vr3c2 = 1, Hr2c2 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r2c2-symmetric-ne-corner
r1c5-symmetric-ne-corner
r1c3-symmetric-sw-corner
r1c1-symmetric-nw-corner
r3c1-asymmetric-ne-corner
r2c2-asymmetric-sw-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9450 links. Density = 3.46546090630054%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51239>
whip[1]: Br3c2{esw .} ==> Pr3c3 ≠ o
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ o, se
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ s, se, o, e
whip[1]: Pr2c3{o .} ==> Br1c3 ≠ s, nes, wne, ew, se, nw, ns, w
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ ne, nes, wne
whip[1]: Pr4c2{ne .} ==> Br4c2 ≠ nw, wne, swn
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br3c1{e .} ==> Nr3c1 ≠ 0
Entering_level_W1_with_<Fact-51258>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....   .............
:   : 1     :   :   :
.   .................
:   | 3 :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.838275, solve-time = 27.413362, total-time = 50.251637
nb-facts=<Fact-51284>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************





(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 3 1)
))
(solve
5 5
. . . . .
. 3 . . .
. 1 . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. 1 . . .
. . . . .
. . . . .

start init-grid-structure 0.00525800000002619
start create-csp-variables
start create-labels 0.000828000000069551
start init-physical-csp-links 0.00474000000008346
start init-physical-non-csp-links 2.23691700000006
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.419213000000013
     start init-physical-BN-non-csp-links at local time 1.55995000000007
     start init-physical-BP-non-csp-links at local time 2.78609900000004
     end init-physical-BP-non-csp-links at local time 18.600234
end init-physical-non-csp-links 20.837203
start init-corner-B-c-values 20.842724
start init-outer-B-candidates 20.842799
start init-outer-I-candidates 20.843443
start init-H-candidates 20.843762
start init-V-candidates 20.844656
start init-P-candidates 20.845555
start init-inner-I-candidates 20.847888
start init-inner-N-and-B-candidates 20.848394
start solution 20.853614
Simulated elimination of 1231
entering BRT
H-single: Hr3c1 = 0
adjacent-1-3-on-pseudo-edge-in-{r3 r2}c2 ==> Vr3c3 = 0, Vr2c2 = 1, Hr4c2 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c3-symmetric-nw-corner
r3c2-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r3c2-asymmetric-nw-corner
r2c1-asymmetric-se-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9426 links. Density = 3.45665973574485%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51191>
whip[1]: Br2c2{esw .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c2{esw .} ==> Pr3c3 ≠ o
whip[1]: Pr3c3{ew .} ==> Br2c3 ≠ ne, o, n, e
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ swn, sw, esw
whip[1]: Pr2c2{ns .} ==> Br1c1 ≠ se
whip[1]: Pr2c2{ns .} ==> Br1c2 ≠ sw, swn, esw
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-51210>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   | 3 :   :   :   :
.   .................
:   : 1     :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 20.853614, solve-time = 26.363759, total-time = 47.217373
nb-facts=<Fact-51236>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************





(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 3 5)
))
(solve
5 5
. . . . .
. . . 1 .
. . . 3 .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . 1 .
. . . 3 .
. . . . .
. . . . .

start init-grid-structure 0.00508299999995643
start create-csp-variables
start create-labels 0.000861000000043077
start init-physical-csp-links 0.00460400000002892
start init-physical-non-csp-links 2.28779000000003
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.42466300000001
     start init-physical-BN-non-csp-links at local time 1.55841800000002
     start init-physical-BP-non-csp-links at local time 2.858476
     end init-physical-BP-non-csp-links at local time 19.769255
end init-physical-non-csp-links 22.057092
start init-corner-B-c-values 22.062479
start init-outer-B-candidates 22.062549
start init-outer-I-candidates 22.063041
start init-H-candidates 22.063328
start init-V-candidates 22.06439
start init-P-candidates 22.065344
start init-inner-I-candidates 22.06755
start init-inner-N-and-B-candidates 22.068056
start solution 22.073675
Simulated elimination of 1235
entering BRT
H-single: Hr3c5 = 0
adjacent-1-3-on-pseudo-edge-in-{r2 r3}c4 ==> Vr3c5 = 1, Vr2c4 = 0, Hr2c4 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r2c4-symmetric-nw-corner
r1c5-symmetric-ne-corner
r1c3-symmetric-se-corner
r1c1-symmetric-nw-corner
r3c5-asymmetric-nw-corner
r2c4-asymmetric-se-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9450 links. Density = 3.46546090630054%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51239>
whip[1]: Br3c4{esw .} ==> Pr3c4 ≠ o
whip[1]: Br3c4{esw .} ==> Pr4c4 ≠ o, sw
whip[1]: Pr4c4{ew .} ==> Br4c3 ≠ ne, wne, nes
whip[1]: Pr3c4{sw .} ==> Br3c3 ≠ w, sw, o, s
whip[1]: Pr2c4{o .} ==> Br1c3 ≠ e, wne, swn, sw, ew, ns, ne, s
whip[1]: Pr4c5{ne .} ==> Br4c4 ≠ ne, nes, wne
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ nw, wne, swn
whip[1]: Br3c3{nes .} ==> Nr3c3 ≠ 0
whip[1]: Br3c5{w .} ==> Nr3c5 ≠ 0
Entering_level_W1_with_<Fact-51258>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.............   .....
:   :   :     1 :   :
.................   .
:   :   :   : 3 |   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.073675, solve-time = 27.388951, total-time = 49.462626
nb-facts=<Fact-51284>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************





(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 3 5)
))
(solve
5 5
. . . . .
. . . 3 .
. . . 1 .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . 3 .
. . . 1 .
. . . . .
. . . . .

start init-grid-structure 0.00477200000000266
start create-csp-variables
start create-labels 0.000825000000020282
start init-physical-csp-links 0.00457700000004024
start init-physical-non-csp-links 2.37596100000002
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.423371999999972
     start init-physical-BN-non-csp-links at local time 1.56501700000001
     start init-physical-BP-non-csp-links at local time 2.76991599999997
     end init-physical-BP-non-csp-links at local time 18.713401
end init-physical-non-csp-links 21.0894070000001
start init-corner-B-c-values 21.094475
start init-outer-B-candidates 21.094548
start init-outer-I-candidates 21.095037
start init-H-candidates 21.095321
start init-V-candidates 21.096201
start init-P-candidates 21.097201
start init-inner-I-candidates 21.099368
start init-inner-N-and-B-candidates 21.099878
start solution 21.105121
Simulated elimination of 1235
entering BRT
H-single: Hr3c5 = 0
adjacent-1-3-on-pseudo-edge-in-{r3 r2}c4 ==> Vr2c5 = 1, Vr3c4 = 0, Hr4c4 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c3-symmetric-ne-corner
r3c4-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r3c4-asymmetric-ne-corner
r2c5-asymmetric-sw-corner
Starting_init_links_with_<Fact-27665>
739 candidates, 2335 csp-links and 9426 links. Density = 3.45665973574485%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51191>
whip[1]: Br2c4{esw .} ==> Pr2c4 ≠ o, nw
whip[1]: Br2c4{esw .} ==> Pr3c4 ≠ o
whip[1]: Pr3c4{ew .} ==> Br2c3 ≠ w, nw, o, n
whip[1]: Pr2c4{sw .} ==> Br1c3 ≠ nes, se, esw
whip[1]: Pr2c5{ns .} ==> Br1c4 ≠ se, nes, esw
whip[1]: Pr2c5{ns .} ==> Br1c5 ≠ sw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ n, swn, esw, ew, se, nw, ns, e
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br2c5{w .} ==> Nr2c5 ≠ 0
Entering_level_W1_with_<Fact-51210>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   : 3 |   :
.................   .
:   :   :     1 :   :
.............   .....
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.105121, solve-time = 25.880615, total-time = 46.985736
nb-facts=<Fact-51236>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



(bind ?*simulated-eliminations* (create$
))






(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 3 5)
))
(solve
5 5
. . . . .
. . . 1 .
. . . 2 .
. . 3 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . 1 .
. . . 2 .
. . 3 . .
. . . . .

start init-grid-structure 6.30000000000353e-05
start create-csp-variables
start create-labels 0.00157999999999991
start init-physical-csp-links 0.00772899999999999
start init-physical-non-csp-links 2.216371
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.396943
     start init-physical-BN-non-csp-links at local time 1.553142
     start init-physical-BP-non-csp-links at local time 2.732118
     end init-physical-BP-non-csp-links at local time 18.697631
end init-physical-non-csp-links 20.914062
start init-corner-B-c-values 20.914503
start init-outer-B-candidates 20.91459
start init-outer-I-candidates 20.915104
start init-H-candidates 20.915418
start init-V-candidates 20.916639
start init-P-candidates 20.917688
start init-inner-I-candidates 20.920101
start init-inner-N-and-B-candidates 20.920672
start solution 20.92655
Simulated elimination of 1235
entering BRT
H-single: Hr3c5 = 0
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-in-{r2 r3}c4 ==> Vr3c5 = 1, Vr2c4 = 0, Hr2c4 = 0
r2c4-symmetric-nw-corner
r1c3-symmetric-se-corner
r2c4-asymmetric-se-corner
r3c5-asymmetric-nw-corner
Starting_init_links_with_<Fact-27654>
724 candidates, 2230 csp-links and 9030 links. Density = 3.45017308177254%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-50178>
whip[1]: Br3c4{ne .} ==> Pr3c4 ≠ se
whip[1]: Br4c3{esw .} ==> Pr4c3 ≠ o, nw
whip[1]: Br4c3{esw .} ==> Pr4c4 ≠ o, ne
whip[1]: Br4c3{esw .} ==> Pr5c3 ≠ o, sw
whip[1]: Br4c3{esw .} ==> Pr5c4 ≠ o, se
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ wne, nw, swn
whip[1]: Pr5c3{ew .} ==> Br5c2 ≠ ne, wne, nes
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{sw .} ==> Br3c3 ≠ e, se, ew, esw
whip[1]: Pr2c4{o .} ==> Br1c3 ≠ e, wne, swn, sw, ew, ns, ne, s
whip[1]: Pr4c5{ne .} ==> Br4c4 ≠ ne, nes, wne
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ nw, wne, swn
whip[1]: Br3c5{w .} ==> Nr3c5 ≠ 0
Entering_level_W1_with_<Fact-50205>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.............   .....
:   :   :     1 :   :
.................   .
:   :   :   : 2 |   :
.....................
:   :   : 3 :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 20.92655, solve-time = 24.821035, total-time = 45.747585
nb-facts=<Fact-50231>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************


(bind ?*simulated-eliminations* (create$
))



