
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-2s-ASYMMETRIC END
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

DIAGONAL-3-2s-ASYMMETRIC-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 5 5)
(value-row-col-to-P-label 4 5 5)
(value-row-col-to-P-label 5 5 5)
)
)


(solve
5 5
. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . .

start init-grid-structure 4.50000000000728e-05
start create-csp-variables
start create-labels 0.00130600000000003
start init-physical-csp-links 0.00692499999999996
start init-physical-non-csp-links 2.187637
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.411517
     start init-physical-BN-non-csp-links at local time 1.534801
     start init-physical-BP-non-csp-links at local time 2.809192
     end init-physical-BP-non-csp-links at local time 17.741827
end init-physical-non-csp-links 19.929509
start init-corner-B-c-values 19.92989
start init-outer-B-candidates 19.929972
start init-outer-I-candidates 19.93059
start init-H-candidates 19.930901
start init-V-candidates 19.931801
start init-P-candidates 19.932723
start init-inner-I-candidates 19.934987
start init-inner-N-and-B-candidates 19.935528
start solution 19.941014
Simulated elimination of 5455
Simulated elimination of 4455
Simulated elimination of 1455
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r5c5-asymmetric-nw-corner
r4c4-asymmetric-se-corner
2-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3-in-r2c2-asymmetric-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
r2c2-closed-nw-corner ==> Pr2c2 = se
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
r1c2-asymmetric-sw-corner
r2c1-asymmetric-ne-corner
Starting_init_links_with_<Fact-27678>
729 candidates, 2344 csp-links and 9328 links. Density = 3.51527758935166%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51026>
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ nw, wne, swn
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, o, se
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 2, 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, 3
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-51049>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 19.941014, solve-time = 26.417352, total-time = 46.358366
nb-facts=<Fact-51075>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************










(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 2 2)
(value-row-col-to-P-label 4 2 2)
(value-row-col-to-P-label 5 2 2)
)
)


(solve
5 5
. . . . .
. 2 . . .
. . 2 . .
. . . 3 .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . .

start init-grid-structure 4.50000000000728e-05
start create-csp-variables
start create-labels 0.00130600000000003
start init-physical-csp-links 0.00692499999999996
start init-physical-non-csp-links 2.187637
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.411517
     start init-physical-BN-non-csp-links at local time 1.534801
     start init-physical-BP-non-csp-links at local time 2.809192
     end init-physical-BP-non-csp-links at local time 17.741827
end init-physical-non-csp-links 19.929509
start init-corner-B-c-values 19.92989
start init-outer-B-candidates 19.929972
start init-outer-I-candidates 19.93059
start init-H-candidates 19.930901
start init-V-candidates 19.931801
start init-P-candidates 19.932723
start init-inner-I-candidates 19.934987
start init-inner-N-and-B-candidates 19.935528
start solution 19.941014
Simulated elimination of 5455
Simulated elimination of 4455
Simulated elimination of 1455
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r5c5-asymmetric-nw-corner
r4c4-asymmetric-se-corner
2-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3-in-r2c2-asymmetric-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
r2c2-closed-nw-corner ==> Pr2c2 = se
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
r1c2-asymmetric-sw-corner
r2c1-asymmetric-ne-corner
Starting_init_links_with_<Fact-27678>
729 candidates, 2344 csp-links and 9328 links. Density = 3.51527758935166%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51026>
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ nw, wne, swn
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, o, se
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 2, 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, 3
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-51049>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 19.941014, solve-time = 26.417352, total-time = 46.358366
nb-facts=<Fact-51075>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************









(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 5 2)
(value-row-col-to-P-label 2 5 2)
(value-row-col-to-P-label 7 5 2)
)
)


(solve
5 5
. . . . .
. . . 3 .
. . 2 . .
. 2 . . .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . 3 .
. . 2 . .
. 2 . . .
. . . . .

start init-grid-structure 0.00494199999999978
start create-csp-variables
start create-labels 0.000952000000012276
start init-physical-csp-links 0.00508100000000411
start init-physical-non-csp-links 2.35388200000001
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.406320999999991
     start init-physical-BN-non-csp-links at local time 1.596165
     start init-physical-BP-non-csp-links at local time 2.952652
     end init-physical-BP-non-csp-links at local time 19.922547
end init-physical-non-csp-links 22.276483
start init-corner-B-c-values 22.281737
start init-outer-B-candidates 22.281818
start init-outer-I-candidates 22.282489
start init-H-candidates 22.28279
start init-V-candidates 22.283673
start init-P-candidates 22.284541
start init-inner-I-candidates 22.286753
start init-inner-N-and-B-candidates 22.287249
start solution 22.292432
Simulated elimination of 7452
Simulated elimination of 2452
Simulated elimination of 1452
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r5c1-asymmetric-ne-corner
r4c2-asymmetric-sw-corner
2-in-r4c2-asymmetric-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
r3c3-asymmetric-sw-corner
r4c2-asymmetric-ne-corner
2-in-r3c3-asymmetric-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c4-asymmetric-sw-corner
r3c3-asymmetric-ne-corner
3-in-r2c4-asymmetric-sw-corner ==> Vr2c5 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
r2c4-closed-ne-corner ==> Pr2c5 = sw
r1c5-symmetric-sw-corner
r2c4-symmetric-ne-corner
r1c4-asymmetric-se-corner
r2c5-asymmetric-nw-corner
Starting_init_links_with_<Fact-27678>
729 candidates, 2344 csp-links and 9328 links. Density = 3.51527758935166%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51026>
whip[1]: Pr2c4{ne .} ==> Br1c3 ≠ se, nes, esw
whip[1]: Pr2c4{ne .} ==> Br2c3 ≠ ne, nes, wne
whip[1]: Pr3c4{ns .} ==> Br3c3 ≠ ne, sw
whip[1]: Pr3c5{ne .} ==> Br3c4 ≠ ne, nes, wne
whip[1]: Pr3c5{ne .} ==> Br3c5 ≠ nw, wne, swn
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ ne, sw
whip[1]: Pr5c2{ns .} ==> Br5c1 ≠ ne, o, sw
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 2, 0
whip[1]: Br1c4{s .} ==> Nr1c4 ≠ 0
whip[1]: Br1c5{ne .} ==> Nr1c5 ≠ 1, 3
whip[1]: Br2c5{w .} ==> Nr2c5 ≠ 0
Entering_level_W1_with_<Fact-51049>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   : 2 :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.292432, solve-time = 26.741731, total-time = 49.034163
nb-facts=<Fact-51075>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************









(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 2 5)
(value-row-col-to-P-label 2 2 5)
(value-row-col-to-P-label 7 2 5)
)
)


(solve
5 5
. . . . .
. . . 2 .
. . 2 . .
. 3 . . .
. . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . 2 .
. . 2 . .
. 3 . . .
. . . . .

start init-grid-structure 0.0050279999999816
start create-csp-variables
start create-labels 0.000881000000021004
start init-physical-csp-links 0.00471800000002531
start init-physical-non-csp-links 2.39886900000002
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.453362999999996
     start init-physical-BN-non-csp-links at local time 1.71128000000002
     start init-physical-BP-non-csp-links at local time 3.09630000000001
     end init-physical-BP-non-csp-links at local time 20.307891
end init-physical-non-csp-links 22.706805
start init-corner-B-c-values 22.712096
start init-outer-B-candidates 22.712169
start init-outer-I-candidates 22.712653
start init-H-candidates 22.712963
start init-V-candidates 22.713909
start init-P-candidates 22.71476
start init-inner-I-candidates 22.716879
start init-inner-N-and-B-candidates 22.717382
start solution 22.722628
Simulated elimination of 7425
Simulated elimination of 2425
Simulated elimination of 1425
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r2c4-asymmetric-ne-corner
r1c5-asymmetric-sw-corner
2-in-r2c4-asymmetric-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c4-asymmetric-sw-corner
r3c3-asymmetric-ne-corner
2-in-r3c3-asymmetric-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
r3c3-asymmetric-sw-corner
r4c2-asymmetric-ne-corner
3-in-r4c2-asymmetric-ne-corner ==> Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
r4c2-closed-sw-corner ==> Pr5c2 = ne
r4c2-symmetric-sw-corner
r5c1-symmetric-ne-corner
r4c1-asymmetric-se-corner
r5c2-asymmetric-nw-corner
Starting_init_links_with_<Fact-27678>
729 candidates, 2344 csp-links and 9324 links. Density = 3.51377018043685%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-51018>
whip[1]: Pr2c5{ns .} ==> Br1c5 ≠ ne, o, sw
whip[1]: Pr2c5{ns .} ==> Br2c4 ≠ ne, sw
whip[1]: Pr3c4{ns .} ==> Br3c3 ≠ ne, sw
whip[1]: Pr4c2{ns .} ==> Br3c1 ≠ se, nes, esw
whip[1]: Pr4c2{ns .} ==> Br3c2 ≠ sw, swn, esw
whip[1]: Pr5c3{nw .} ==> Br4c3 ≠ sw, swn, esw
whip[1]: Pr5c3{nw .} ==> Br5c3 ≠ nw, wne, swn
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 2, 0
whip[1]: Br4c1{e .} ==> Nr4c1 ≠ 0
whip[1]: Br5c1{sw .} ==> Nr5c1 ≠ 1, 3
whip[1]: Br5c2{n .} ==> Nr5c2 ≠ 0
Entering_level_W1_with_<Fact-51041>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   : 2 :   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 22.722628, solve-time = 26.208255, total-time = 48.930883
nb-facts=<Fact-51067>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************










(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 6 6)
(value-row-col-to-P-label 4 6 6)
(value-row-col-to-P-label 5 6 6)
)
)


(solve
6 6
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . 2 .
. . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . 2 .
. . . . . .

start init-grid-structure 0.00537600000001248
start create-csp-variables
start create-labels 0.00119400000002656
start init-physical-csp-links 0.00660500000000752
start init-physical-non-csp-links 3.93261000000001
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.755974000000009
     start init-physical-BN-non-csp-links at local time 2.80779200000001
     start init-physical-BP-non-csp-links at local time 5.17431999999999
     end init-physical-BP-non-csp-links at local time 36.872135
end init-physical-non-csp-links 40.804807
start init-corner-B-c-values 40.810461
start init-outer-B-candidates 40.810535
start init-outer-I-candidates 40.811101
start init-H-candidates 40.811466
start init-V-candidates 40.812701
start init-P-candidates 40.814081
start init-inner-I-candidates 40.818774
start init-inner-N-and-B-candidates 40.819685
start solution 40.828756
Simulated elimination of 5466
Simulated elimination of 4466
Simulated elimination of 1466
entering BRT
r6c6-symmetric-se-corner
r6c1-symmetric-sw-corner
r1c6-symmetric-ne-corner
r1c1-symmetric-nw-corner
r6c6-asymmetric-nw-corner
r5c5-asymmetric-se-corner
2-in-r5c5-asymmetric-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
r4c4-asymmetric-se-corner
r5c5-asymmetric-nw-corner
2-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3-in-r2c2-asymmetric-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
r2c2-closed-nw-corner ==> Pr2c2 = se
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
r1c2-asymmetric-sw-corner
r2c1-asymmetric-ne-corner
Starting_init_links_with_<Fact-37714>
1078 candidates, 3706 csp-links and 14952 links. Density = 2.57569728321817%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-75034>
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ nw, wne, swn
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, se
whip[1]: Pr6c6{ne .} ==> Br6c6 ≠ nw, o, se
whip[1]: Br6c6{nes .} ==> Nr6c6 ≠ 2, 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, 3
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-75059>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

------
------
------
------
------
------

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 2 :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 40.828756, solve-time = 66.474354, total-time = 107.30311
nb-facts=<Fact-75096>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************






(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 5 5)
(value-row-col-to-P-label 4 5 5)
(value-row-col-to-P-label 5 5 5)
)
)


(solve
6 6
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .

start init-grid-structure 0.00706500000001142
start create-csp-variables
start create-labels 0.00183199999997896
start init-physical-csp-links 0.00977199999999812
start init-physical-non-csp-links 4.07737399999996
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.806393000000014
     start init-physical-BN-non-csp-links at local time 3.14934799999997
     start init-physical-BP-non-csp-links at local time 5.48144300000001
     end init-physical-BP-non-csp-links at local time 41.49734
end init-physical-non-csp-links 45.5747909999999
start init-corner-B-c-values 45.582245
start init-outer-B-candidates 45.582331
start init-outer-I-candidates 45.583012
start init-H-candidates 45.583378
start init-V-candidates 45.584526
start init-P-candidates 45.585718
start init-inner-I-candidates 45.588793
start init-inner-N-and-B-candidates 45.589492
start solution 45.597746
Simulated elimination of 5455
Simulated elimination of 4455
Simulated elimination of 1455
entering BRT
r6c6-symmetric-se-corner
r6c1-symmetric-sw-corner
r1c6-symmetric-ne-corner
r1c1-symmetric-nw-corner
r5c5-asymmetric-nw-corner
r4c4-asymmetric-se-corner
2-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3-in-r2c2-asymmetric-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
r2c2-closed-nw-corner ==> Pr2c2 = se
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
r1c2-asymmetric-sw-corner
r2c1-asymmetric-ne-corner
Starting_init_links_with_<Fact-37715>
1094 candidates, 3817 csp-links and 15422 links. Density = 2.57948621023599%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-76197>
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ nw, wne, swn
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ e, o, wne, swn, se, nw, s
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, 3
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-76220>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

------
------
------
------
------
------

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 45.597746, solve-time = 70.634109, total-time = 116.231855
nb-facts=<Fact-76257>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************







(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 6 6)
(value-row-col-to-P-label 4 6 6)
(value-row-col-to-P-label 5 6 6)
)
)


(solve
7 7
. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . .
. . . . . . .

start init-grid-structure 0.00800799999996116
start create-csp-variables
start create-labels 0.00151600000003782
start init-physical-csp-links 0.00887800000003836
start init-physical-non-csp-links 6.89983800000005
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.48942599999998
     start init-physical-BN-non-csp-links at local time 5.50827299999997
     start init-physical-BP-non-csp-links at local time 10.172768
     end init-physical-BP-non-csp-links at local time 81.697678
end init-physical-non-csp-links 88.597579
start init-corner-B-c-values 88.605896
start init-outer-B-candidates 88.606009
start init-outer-I-candidates 88.606718
start init-H-candidates 88.607128
start init-V-candidates 88.608787
start init-P-candidates 88.610801
start init-inner-I-candidates 88.61557
start init-inner-N-and-B-candidates 88.616855
start solution 88.628979
Simulated elimination of 5466
Simulated elimination of 4466
Simulated elimination of 1466
entering BRT
r7c7-symmetric-se-corner
r7c1-symmetric-sw-corner
r1c7-symmetric-ne-corner
r1c1-symmetric-nw-corner
r6c6-asymmetric-nw-corner
r5c5-asymmetric-se-corner
2-in-r5c5-asymmetric-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
r4c4-asymmetric-se-corner
r5c5-asymmetric-nw-corner
2-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3-in-r2c2-asymmetric-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
r2c2-closed-nw-corner ==> Pr2c2 = se
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
r1c2-asymmetric-sw-corner
r2c1-asymmetric-ne-corner
Starting_init_links_with_<Fact-49321>
1507 candidates, 5449 csp-links and 22206 links. Density = 1.95687059327389%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-104635>
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ nw, wne, swn
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, se
whip[1]: Pr6c6{ne .} ==> Br6c6 ≠ e, o, wne, swn, se, nw, s
whip[1]: Br6c6{nes .} ==> Nr6c6 ≠ 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, 3
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-104660>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:       :   :   :   :   :   :
.   .———.....................
:   | 3 :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 88.628979, solve-time = 150.617578, total-time = 239.246557
nb-facts=<Fact-104710>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************









(progn
(redefine-instance-globals 9 9) ; <<<<<<<<<<<<<<<<<<<<<<<<
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 8 8)
(value-row-col-to-P-label 4 8 8)
(value-row-col-to-P-label 5 8 8)
)
)

(solve
9 9
. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . . .
. . . . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . . .
. . . . . . . . .

start init-grid-structure 0.0227099999999609
start create-csp-variables
start create-labels 0.00235199999997349
start init-physical-csp-links 0.0145279999999275
start init-physical-non-csp-links 13.7526169999999
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.03351900000007
     start init-physical-BN-non-csp-links at local time 12.5914829999999
     start init-physical-BP-non-csp-links at local time 24.6936720000001
     end init-physical-BP-non-csp-links at local time 264.039742
end init-physical-non-csp-links 277.792406
start init-corner-B-c-values 277.81544
start init-outer-B-candidates 277.815524
start init-outer-I-candidates 277.816544
start init-H-candidates 277.817053
start init-V-candidates 277.819723
start init-P-candidates 277.822439
start init-inner-I-candidates 277.829567
start init-inner-N-and-B-candidates 277.831147
start solution 277.84986
Simulated elimination of 540808
Simulated elimination of 440808
Simulated elimination of 140808
entering BRT
r9c9-symmetric-se-corner
r9c1-symmetric-sw-corner
r1c9-symmetric-ne-corner
r1c1-symmetric-nw-corner
r8c8-asymmetric-nw-corner
r7c7-asymmetric-se-corner
2-in-r7c7-asymmetric-se-corner ==> Pr7c7 ≠ se, Pr7c7 ≠ nw, Pr7c7 ≠ o
r6c6-asymmetric-se-corner
r7c7-asymmetric-nw-corner
2-in-r6c6-asymmetric-se-corner ==> Pr6c6 ≠ se, Pr6c6 ≠ nw, Pr6c6 ≠ o
r5c5-asymmetric-se-corner
r6c6-asymmetric-nw-corner
2-in-r5c5-asymmetric-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
r4c4-asymmetric-se-corner
r5c5-asymmetric-nw-corner
2-in-r4c4-asymmetric-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r3c3-asymmetric-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3-in-r2c2-asymmetric-se-corner ==> Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
r2c2-closed-nw-corner ==> Pr2c2 = se
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
r1c2-asymmetric-sw-corner
r2c1-asymmetric-ne-corner
Starting_init_links_with_<Fact-77249>
2525 candidates, 9523 csp-links and 39254 links. Density = 1.23186518334876%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-174807>
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr2c3{nw .} ==> Br2c3 ≠ nw, wne, swn
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c2{ne .} ==> Br3c2 ≠ nw, wne, swn
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, se
whip[1]: Pr6c6{ne .} ==> Br6c6 ≠ nw, se
whip[1]: Pr7c7{ne .} ==> Br7c7 ≠ nw, se
whip[1]: Pr8c8{ne .} ==> Br8c8 ≠ e, o, wne, swn, se, nw, s
whip[1]: Br8c8{nes .} ==> Nr8c8 ≠ 0
whip[1]: Br1c1{nw .} ==> Nr1c1 ≠ 1, 3
whip[1]: Br1c2{s .} ==> Nr1c2 ≠ 0
whip[1]: Br2c1{e .} ==> Nr2c1 ≠ 0
Entering_level_W1_with_<Fact-174836>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

---------
---------
---------
---------
---------
---------
---------
---------
---------

.....................................
:       :   :   :   :   :   :   :   :
.   .———.............................
:   | 3 :   :   :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.....................................
:   :   :   : 2 :   :   :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   :   :   : 2 :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................

init-time = 277.84986, solve-time = 464.928374, total-time = 742.778234
nb-facts=<Fact-174918>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************











(progn
(redefine-instance-globals 9 9)
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 1 3 3)
(value-row-col-to-P-label 4 3 3)
(value-row-col-to-P-label 5 3 3)
)
)


(solve
9 9
. . . . . . . . .
. . . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . . . .
. . . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .

start init-grid-structure 0.0248719999999594
start create-csp-variables
start create-labels 0.0025300000002062
start init-physical-csp-links 0.0159029999999802
start init-physical-non-csp-links 14.9155009999999
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 3.14502200000015
     start init-physical-BN-non-csp-links at local time 12.4168420000001
     start init-physical-BP-non-csp-links at local time 25.2286270000004
     end init-physical-BP-non-csp-links at local time 299.274129
end init-physical-non-csp-links 314.189687
start init-corner-B-c-values 314.21488
start init-outer-B-candidates 314.214969
start init-outer-I-candidates 314.215972
start init-H-candidates 314.216485
start init-V-candidates 314.219186
start init-P-candidates 314.221879
start init-inner-I-candidates 314.228909
start init-inner-N-and-B-candidates 314.23058
start solution 314.24881
Simulated elimination of 540303
Simulated elimination of 440303
Simulated elimination of 140303
entering BRT
r9c9-symmetric-se-corner
r9c1-symmetric-sw-corner
r1c9-symmetric-ne-corner
r1c1-symmetric-nw-corner
r3c3-asymmetric-nw-corner
r2c2-asymmetric-se-corner
2-in-r3c3-asymmetric-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
2-in-r4c4-asymmetric-nw-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
r4c4-asymmetric-se-corner
r5c5-asymmetric-nw-corner
2-in-r5c5-asymmetric-nw-corner ==> Pr6c6 ≠ se, Pr6c6 ≠ nw, Pr6c6 ≠ o
r5c5-asymmetric-se-corner
r6c6-asymmetric-nw-corner
2-in-r6c6-asymmetric-nw-corner ==> Pr7c7 ≠ se, Pr7c7 ≠ nw, Pr7c7 ≠ o
r6c6-asymmetric-se-corner
r7c7-asymmetric-nw-corner
2-in-r7c7-asymmetric-nw-corner ==> Pr8c8 ≠ se, Pr8c8 ≠ nw, Pr8c8 ≠ o
r7c7-asymmetric-se-corner
r8c8-asymmetric-nw-corner
3-in-r8c8-asymmetric-nw-corner ==> Vr8c9 = 1, Hr9c8 = 1, Vr9c9 = 0, Hr9c9 = 0
r8c8-closed-se-corner ==> Pr9c9 = nw
r9c9-symmetric-nw-corner
r8c8-symmetric-se-corner
r8c9-asymmetric-sw-corner
r9c8-asymmetric-ne-corner
Starting_init_links_with_<Fact-77249>
2525 candidates, 9523 csp-links and 39250 links. Density = 1.23173965574053%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-174799>
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ nw, se
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, se
whip[1]: Pr6c6{ne .} ==> Br6c6 ≠ nw, se
whip[1]: Pr7c7{ne .} ==> Br7c7 ≠ nw, se
whip[1]: Pr8c9{ns .} ==> Br7c8 ≠ se, nes, esw
whip[1]: Pr8c9{ns .} ==> Br7c9 ≠ sw, swn, esw
whip[1]: Pr9c8{ne .} ==> Br8c7 ≠ se, nes, esw
whip[1]: Pr9c8{ne .} ==> Br9c7 ≠ ne, nes, wne
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br8c9{w .} ==> Nr8c9 ≠ 0
whip[1]: Br9c8{n .} ==> Nr9c8 ≠ 0
whip[1]: Br9c9{se .} ==> Nr9c9 ≠ 1, 3
Entering_level_W1_with_<Fact-174828>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

---------
---------
---------
---------
---------
---------
---------
---------
---------

.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.....................................
:   :   :   : 2 :   :   :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   :   :   : 2 :   :   :
.....................................
:   :   :   :   :   :   :   : 3 |   :
.............................———.   .
:   :   :   :   :   :   :   :       :
.....................................

init-time = 314.24881, solve-time = 442.877155, total-time = 757.125965
nb-facts=<Fact-174910>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



