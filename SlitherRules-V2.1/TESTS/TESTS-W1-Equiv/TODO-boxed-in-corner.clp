
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF BOXED IN A CORNER
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





Mebane "1 boxed in a corner"; needs whips[1]

(solve 
5 5 
1 . . . .
1 . . . .
. . . . . 
. . . . .
. . . . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

1 . . . .
1 . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 3.50475311279297e-05
start create-csp-variables
start create-labels 0.000607013702392578
start init-physical-csp-links 0.00458788871765137
start init-physical-non-csp-links 1.00066685676575
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.193588018417358
     start init-physical-BN-non-csp-links at local time 0.751784086227417
     start init-physical-BP-non-csp-links at local time 1.42903113365173
     end init-physical-BP-non-csp-links at local time 9.30162119865417
end init-physical-non-csp-links 10.3023369312286
start init-corner-B-c-values 10.3025889396667
start init-outer-B-candidates 10.302628993988
start init-outer-I-candidates 10.3028728961945
start init-H-candidates 10.3031029701233
start init-V-candidates 10.303524017334
start init-P-candidates 10.3039498329163
start init-inner-I-candidates 10.3049590587616
start init-inner-N-and-B-candidates 10.3052380084991
start solution 10.3079371452332
entering BRT
w[1]-1-in-nw-corner ==> Vr1c1 = 0, Hr1c1 = 0
H-single: Hr1c1 = 0
V-single: Vr1c1 = 0
Starting_init_links_with_<Fact-27483>
806 candidates, 2847 csp-links and 11695 links. Density = 3.6%
starting non trivial part of solution
Entering_level_W1_with_<Fact-56572>
whip[1]: Vr1c1{0 .} ==> Pr2c1 ≠ ns, Br1c0 ≠ e, Pr1c1 ≠ se, Pr2c1 ≠ ne
P-single: Pr1c1 = o
B-single: Br1c0 = o
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ n, Br2c1 ≠ w
whip[1]: Br2c1{s .} ==> Hr2c1 ≠ 1, Vr2c1 ≠ 1, Pr3c1 ≠ ne, Pr3c1 ≠ ns, Pr3c2 ≠ o, Pr2c1 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ ew, Pr2c2 ≠ sw, Pr3c2 ≠ nw, Pr3c2 ≠ se
V-single: Vr2c1 = 0
H-single: Hr2c1 = 0
P-single: Pr2c1 = o
whip[1]: Vr2c1{0 .} ==> Br2c0 ≠ e
B-single: Br2c0 = o
whip[1]: Hr2c1{0 .} ==> Br1c1 ≠ s
B-single: Br1c1 = e
V-single: Vr1c2 = 1
P-single: Pr1c2 = se
H-single: Hr1c2 = 1
whip[1]: Vr1c2{1 .} ==> Br1c2 ≠ o, Br1c2 ≠ n, Br1c2 ≠ e, Br1c2 ≠ s, Br1c2 ≠ ne, Br1c2 ≠ ns, Br1c2 ≠ se, Br1c2 ≠ nes
whip[1]: Br1c2{wne .} ==> Nr1c2 ≠ 0
whip[1]: Pr1c2{se .} ==> Br1c2 ≠ w, Br1c2 ≠ ew, Br1c2 ≠ sw, Br1c2 ≠ esw
whip[1]: Br1c2{wne .} ==> Pr1c3 ≠ o, Pr1c3 ≠ se, Pr2c3 ≠ nw, Nr1c2 ≠ 1
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ nw, Br1c3 ≠ se, Br1c3 ≠ swn, Br1c3 ≠ wne, Br1c3 ≠ o, Br1c3 ≠ e, Br1c3 ≠ s
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Hr1c2{1 .} ==> Br0c2 ≠ o
B-single: Br0c2 = s
whip[1]: Pr2c2{ns .} ==> Br2c2 ≠ s, Br2c2 ≠ nw, Br2c2 ≠ se, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ o, Br2c2 ≠ e
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0
whip[1]: Pr3c2{sw .} ==> Br3c2 ≠ nw, Br3c2 ≠ se, Br3c2 ≠ swn, Br3c2 ≠ wne, Br3c2 ≠ o, Br3c2 ≠ e, Br3c2 ≠ s
whip[1]: Br3c2{nes .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c1{se .} ==> Br3c1 ≠ ne, Br3c1 ≠ ns, Br3c1 ≠ ew, Br3c1 ≠ sw, Br3c1 ≠ esw, Br3c1 ≠ nes, Br3c1 ≠ n, Br3c1 ≠ w
whip[1]: Hr1c1{0 .} ==> Br0c1 ≠ s
B-single: Br0c1 = o
GRID 0 NOT SOLVED. 283 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

.   .———.............
  1 |   :   :   :   :
.   .................
  1 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.31s, solve-time = 3.44s, total-time = 13.75s
nb-facts=<Fact-56798>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = W
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






Application: Mebane "3 boxed in a corner" (requires W1):

(solve 
5 5 
3 3 . . .
. . . . .
. . . . . 
. . . . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

3 3 . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00513499999999567
start create-csp-variables
start create-labels 0.0013850000000275
start init-physical-csp-links 0.00689199999999346
start init-physical-non-csp-links 2.32794100000001
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.418121999999983
     start init-physical-BN-non-csp-links at local time 1.56207000000001
     start init-physical-BP-non-csp-links at local time 2.780756
     end init-physical-BP-non-csp-links at local time 21.035455
end init-physical-non-csp-links 23.36345
start init-corner-B-c-values 23.368877
start init-outer-B-candidates 23.368984
start init-outer-I-candidates 23.369449
start init-H-candidates 23.369734
start init-V-candidates 23.370572
start init-P-candidates 23.371501
start init-inner-I-candidates 23.373654
start init-inner-N-and-B-candidates 23.374209
start solution 23.379915
entering BRT
3-in-nw-corner ==> Vr1c1 = 1, Hr1c1 = 1
3-in-r1c1-closed-nw-corner ==> Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
r1c1-closed-nw-corner ==> Pr1c1 = se
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
r2c2-asymmetric-nw-corner
r2c1-asymmetric-nw-corner
r1c2-asymmetric-nw-corner
r1c1-asymmetric-se-corner
3-in-r1c2-asymmetric-nw-corner ==> Vr1c3 = 1, Hr2c2 = 1, Vr2c3 = 0, Hr2c3 = 0
r1c2-closed-se-corner ==> Pr2c3 = nw
r2c3-symmetric-nw-corner
r1c2-symmetric-se-corner
r1c3-asymmetric-sw-corner
r2c2-asymmetric-ne-corner
adjacent-3s-in-r1{c1 c2} ==> Vr1c2 = 1, Vr2c2 = 0
3-in-r1c1-closed-ne-corner ==> Pr2c1 ≠ ne
3-in-r1c2-closed-sw-corner ==> Pr1c3 ≠ sw
r1c1-closed-ne-corner ==> Hr1c2 = 0, Pr1c2 = sw
r1c2-closed-sw-corner ==> Hr2c1 = 0, Pr2c2 = ne
r1c3-symmetric-nw-corner
r1c1-symmetric-ne-corner
r2c1-symmetric-ne-corner
r1c2-symmetric-sw-corner
r1c2-asymmetric-ne-corner
r1c1-asymmetric-sw-corner
P-single: Pr2c1 = ns
V-single: Vr2c1 = 1
r3c1-asymmetric-nw-corner
P-single: Pr1c3 = se
H-single: Hr1c3 = 1
r1c4-asymmetric-nw-corner
B-single: Br0c3 = s
B-single: Br2c0 = e
B-single: Br1c2 = esw
B-single: Br1c1 = wne
B-single: Br1c0 = e
B-single: Br0c1 = s
B-single: Br0c2 = o
Starting_init_links_with_<Fact-27755>
690 candidates, 2298 csp-links and 9197 links. Density = 3.86908142445468%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-50749>
whip[1]: Pr1c4{ew .} ==> Br1c4 ≠ nw, s, e, o, wne, swn, se
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ e, o, wne, swn, se, nw, s
whip[1]: Br3c1{nes .} ==> Nr3c1 ≠ 0
whip[1]: Br1c4{nes .} ==> Nr1c4 ≠ 0
whip[1]: Br1c3{nw .} ==> Nr1c3 ≠ 0, 1
whip[1]: Br2c1{w .} ==> Nr2c1 ≠ 0, 3
whip[1]: Br2c2{n .} ==> Nr2c2 ≠ 0, 3
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 3
Entering_level_W1_with_<Fact-50766>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.———.   .———.........
| 3 | 3 |   :   :   :
.   .———.   .........
|           :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 23.379915, solve-time = 31.365698, total-time = 54.745613
nb-facts=<Fact-50792>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

3 3 . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.0054850000000215
start create-csp-variables
start create-labels 0.000872000000072148
start init-physical-csp-links 0.00476700000001529
start init-physical-non-csp-links 2.39449000000002
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.453063999999927
     start init-physical-BN-non-csp-links at local time 1.74930899999993
     start init-physical-BP-non-csp-links at local time 3.09678799999995
     end init-physical-BP-non-csp-links at local time 19.5750099999999
end init-physical-non-csp-links 21.969547
start init-corner-B-c-values 21.975293
start init-outer-B-candidates 21.975361
start init-outer-I-candidates 21.975785
start init-H-candidates 21.976078
start init-V-candidates 21.976596
start init-P-candidates 21.977263
start init-inner-I-candidates 21.9789880000001
start init-inner-N-and-B-candidates 21.979421
start solution 21.984241
entering BRT
Starting_init_links_with_<Fact-27607>
808 candidates, 2849 csp-links and 11713 links. Density = 3.59263621529439%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56735>
whip[1]: Br1c1{swn .} ==> Hr1c1 ≠ 0
H-single: Hr1c1 = 1
P-single: Pr1c1 = se
V-single: Vr1c1 = 1
B-single: Br1c0 = e
B-single: Br0c1 = s
whip[1]: Br1c2{esw .} ==> Pr1c3 ≠ o
whip[1]: Br1c1{swn .} ==> Pr2c2 ≠ o, se, nw
whip[1]: Br1c2{esw .} ==> Pr2c2 ≠ sw
whip[1]: Br1c2{esw .} ==> Pr2c3 ≠ o, se
whip[1]: Pr2c3{sw .} ==> Br2c3 ≠ wne, nw, swn
whip[1]: Pr2c2{ew .} ==> Br2c1 ≠ ne, wne, nes
whip[1]: Pr2c2{ew .} ==> Br2c2 ≠ se, nw, swn, wne, s, e, o
whip[1]: Pr1c3{sw .} ==> Br1c3 ≠ s, se, o, e
whip[1]: Pr2c1{ns .} ==> Br2c1 ≠ e, nw, swn, s, se, o
whip[1]: Pr1c2{sw .} ==> Br1c2 ≠ wne, swn
whip[1]: Br1c2{nes .} ==> Hr2c2 ≠ 0
H-single: Hr2c2 = 1
whip[1]: Pr2c2{ew .} ==> Vr2c2 ≠ 1
V-single: Vr2c2 = 0
whip[1]: Br1c2{nes .} ==> Vr1c3 ≠ 0
V-single: Vr1c3 = 1
P-single: Pr2c3 = nw
H-single: Hr2c3 = 0
V-single: Vr2c3 = 0
whip[1]: Br2c2{ns .} ==> Nr2c2 ≠ 3, 0
whip[1]: Br2c3{se .} ==> Nr2c3 ≠ 3
whip[1]: Br2c1{sw .} ==> Nr2c1 ≠ 3, 0
whip[1]: Br1c3{wne .} ==> Nr1c3 ≠ 0
Entering_level_W1_with_<Fact-56783>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.———.................
| 3 : 3 |   :   :   :
.....———.   .........
:           :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.984241, solve-time = 37.035848, total-time = 59.020089
nb-facts=<Fact-56809>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

The full results require rule adjacent-3-3




