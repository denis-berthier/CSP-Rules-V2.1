
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-3-X-SYMMETRIC-CORNERS
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





east:

(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 3 4)
(value-row-col-to-V-label 1 2 4)
(value-row-col-to-P-label 2 5 5) ; ne
(value-row-col-to-P-label 3 5 5) ; ns
(value-row-col-to-P-label 6 5 5) ; ew
(value-row-col-to-P-label 7 5 5) ; sw
))

(solve
5 5
. . . . .
. . . . .
. 3 . . .
. . . 2 .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . . 2 .
. . . . .

start init-grid-structure 0.00423799999999375
start create-csp-variables
start create-labels 0.000906999999997993
start init-physical-csp-links 0.00490700000000288
start init-physical-non-csp-links 2.275741
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.456480999999997
     start init-physical-BN-non-csp-links at local time 1.609583
     start init-physical-BP-non-csp-links at local time 2.795869
     end init-physical-BP-non-csp-links at local time 18.903896
end init-physical-non-csp-links 21.179694
start init-corner-B-c-values 21.184243
start init-outer-B-candidates 21.184323
start init-outer-I-candidates 21.184821
start init-H-candidates 21.185135
start init-V-candidates 21.186028
start init-P-candidates 21.186928
start init-inner-I-candidates 21.189262
start init-inner-N-and-B-candidates 21.18978
start solution 21.195236
Simulated elimination of 7455
Simulated elimination of 6455
Simulated elimination of 3455
Simulated elimination of 2455
Simulated elimination of 1324
Simulated elimination of 1234
entering BRT
V-single: Vr2c4 = 0
H-single: Hr3c4 = 0
r5c5-symmetric-nw-corner
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c4-symmetric-se-corner
r3c3-symmetric-ne-corner
r2c4-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r4c4-symmetric-se-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
r3c3-symmetric-se-corner
r4c4-symmetric-nw-corner
r3c5-asymmetric-sw-corner
r4c4-asymmetric-ne-corner
r4c4-asymmetric-sw-corner
r5c3-asymmetric-ne-corner
adjacent-3-in-r3c2-x-symmetric-corners-east ==> Vr3c4 = O, Hr4c3 = O, Hr3c3 = O
r2c3-symmetric-se-corner
r3c4-symmetric-nw-corner
P-single: Pr3c4 = o
Starting_init_links_with_<Fact-27688>
716 candidates, 2147 csp-links and 8340 links. Density = 3.25819431964683%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-48666>
whip[1]: Br3c2{esw .} ==> Pr3c2 ≠ o, nw
whip[1]: Br3c2{esw .} ==> Pr3c3 ≠ o
whip[1]: Br3c2{esw .} ==> Pr4c2 ≠ o, sw
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ o
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ w, sw, o, s
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ ne, wne, nes
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ w, nw, o, n
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ nes, se, esw
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ ne, sw, ew, ns
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr5c4{ns .} ==> Br5c3 ≠ s, o, nes, wne, sw, ne, w
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ sw, swn, esw
whip[1]: Pr5c5{o .} ==> Br5c4 ≠ ne, nes, wne
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ n, nes, esw, w
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ ne
whip[1]: Br5c5{se .} ==> Pr5c6 ≠ sw
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ s, ns
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ e, ew
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 1, 3
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0
whip[1]: Br2c3{w .} ==> Nr2c3 ≠ 3
whip[1]: Br2c4{ne .} ==> Nr2c4 ≠ 3
whip[1]: Br3c3{w .} ==> Nr3c3 ≠ 2, 3
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 3
Entering_level_W1_with_<Fact-48721>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........   .   .....
:   : 3 :       :   :
.........   .........
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.195236, solve-time = 22.16628, total-time = 43.361516
nb-facts=<Fact-48747>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

