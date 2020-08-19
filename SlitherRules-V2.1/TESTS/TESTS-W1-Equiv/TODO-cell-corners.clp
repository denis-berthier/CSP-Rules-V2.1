

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF CORNERS
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

closed-corners TODO

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

==>


.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........   .———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................


?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 4 4)
        (value-row-col-to-V-label 0 4 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
Simulated elimination of 344
Simulated elimination of 244
V-single: Vr4c4 = 1
H-single: Hr4c4 = 1
r4c4-closed-nw-corner ==> Hr4c3 = 0, Vr3c4 = 0, Pr4c4 = se, Pr5c5 ≠ nw
entering level W1 with <Fact-83569>
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ wne, nw, swn
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ nes, ne, wne
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ wne, nw, swn
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0, 1
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c5{nw .} ==> Br3c5 ≠ swn, sw, esw
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 3
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........   .———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00754099999994651
start create-csp-variables
start create-labels 0.00132800000005773
start init-physical-csp-links 0.00668100000007144
start init-physical-non-csp-links 2.30945300000008
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.431647999999996
     start init-physical-BN-non-csp-links at local time 1.52626999999984
     start init-physical-BP-non-csp-links at local time 2.70261299999993
     end init-physical-BP-non-csp-links at local time 18.9763069999999
end init-physical-non-csp-links 21.285809
start init-corner-B-c-values 21.293739
start init-outer-B-candidates 21.293805
start init-outer-I-candidates 21.294226
start init-H-candidates 21.2945220000001
start init-V-candidates 21.2950640000001
start init-P-candidates 21.2957740000002
start init-inner-I-candidates 21.2975300000001
start init-inner-N-and-B-candidates 21.2979740000001
start solution 21.3032450000001
Simulated elimination of 344
Simulated elimination of 244
entering BRT
V-single: Vr4c4 = 1
H-single: Hr4c4 = 1
P-single: Pr4c4 = se
H-single: Hr4c3 = 0
V-single: Vr3c4 = 0
Starting_init_links_with_<Fact-27634>
765 candidates, 2490 csp-links and 9850 links. Density = 3.37063272080211%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-52318>
whip[1]: Br4c4{nw .} ==> Pr5c5 ≠ nw
whip[1]: Pr4c5{nw .} ==> Br3c5 ≠ sw, swn, esw
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ nw, wne, swn
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ ne, nes, wne
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ nw, wne, swn
whip[1]: Br3c3{w .} ==> Nr3c3 ≠ 3
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{e .} ==> Nr4c3 ≠ 0
whip[1]: Br4c4{nw .} ==> Nr4c4 ≠ 0, 1
Entering_level_W1_with_<Fact-52337>
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
:   :   :       :   :
.........   .———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.3032450000001, solve-time = 28.494539, total-time = 49.7977840000001
nb-facts=<Fact-52363>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 4 2)
        (value-row-col-to-V-label 0 4 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
Simulated elimination of 343
Simulated elimination of 242
V-single: Vr4c3 = 1
H-single: Hr4c2 = 1
r4c2-closed-ne-corner ==> Hr4c3 = 0, Vr3c3 = 0, Pr4c3 = sw, Pr5c2 ≠ ne
entering level W1 with <Fact-83569>
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ wne, nw, swn
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ nes, ne, wne
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 0
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0, 1
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ nes, ne, wne
whip[1]: Br3c3{ne .} ==> Nr3c3 ≠ 3
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c2{ne .} ==> Br3c1 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....———.   .........
:   :   |   :   :   :
.....................
:   :   :   :   :   :
.....................

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00527999999985695
start create-csp-variables
start create-labels 0.000892000000021653
start init-physical-csp-links 0.00474800000006326
start init-physical-non-csp-links 2.47445500000003
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.456640000000107
     start init-physical-BN-non-csp-links at local time 1.72489199999995
     start init-physical-BP-non-csp-links at local time 3.05577900000003
     end init-physical-BP-non-csp-links at local time 19.7824780000001
end init-physical-non-csp-links 22.2569860000001
start init-corner-B-c-values 22.2625289999999
start init-outer-B-candidates 22.2626009999999
start init-outer-I-candidates 22.263031
start init-H-candidates 22.2633349999999
start init-V-candidates 22.2638709999999
start init-P-candidates 22.2644189999999
start init-inner-I-candidates 22.2662739999998
start init-inner-N-and-B-candidates 22.2668249999999
start solution 22.2718259999999
Simulated elimination of 343
Simulated elimination of 242
entering BRT
V-single: Vr4c3 = 1
H-single: Hr4c2 = 1
P-single: Pr4c3 = sw
H-single: Hr4c3 = 0
V-single: Vr3c3 = 0
Starting_init_links_with_<Fact-27634>
765 candidates, 2490 csp-links and 9850 links. Density = 3.37063272080211%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-52318>
whip[1]: Br4c2{ne .} ==> Pr5c2 ≠ ne
whip[1]: Pr4c2{ne .} ==> Br3c1 ≠ se, nes, esw
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ ne, nes, wne
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ ne, nes, wne
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ nw, wne, swn
whip[1]: Br3c2{s .} ==> Nr3c2 ≠ 0
whip[1]: Br3c3{ne .} ==> Nr3c3 ≠ 3
whip[1]: Br4c2{ne .} ==> Nr4c2 ≠ 0, 1
whip[1]: Br4c3{w .} ==> Nr4c3 ≠ 0
Entering_level_W1_with_<Fact-52337>
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
:   :       :   :   :
.....———.   .........
:   :   |   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.2718259999999, solve-time = 28.240669, total-time = 50.5124949999999
nb-facts=<Fact-52363>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 4)
        (value-row-col-to-V-label 0 2 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
Simulated elimination of 324
Simulated elimination of 234
V-single: Vr2c4 = 1
H-single: Hr3c4 = 1
r2c4-closed-sw-corner ==> Hr3c3 = 0, Vr3c4 = 0, Pr3c4 = ne, Pr2c5 ≠ sw
entering level W1 with <Fact-83569>
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ wne, nw, swn
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br3c3{sw .} ==> Nr3c3 ≠ 3
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ swn, sw, esw
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0, 1
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c4{ns .} ==> Br1c4 ≠ swn, sw, esw
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   |   :   :
.........   .———.....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00537199999985205
start create-csp-variables
start create-labels 0.000927000000046974
start init-physical-csp-links 0.00491899999997258
start init-physical-non-csp-links 2.41543100000013
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.455337999999983
     start init-physical-BN-non-csp-links at local time 1.76368600000001
     start init-physical-BP-non-csp-links at local time 3.14882699999998
     end init-physical-BP-non-csp-links at local time 19.5206329999999
end init-physical-non-csp-links 21.9361160000001
start init-corner-B-c-values 21.9417279999998
start init-outer-B-candidates 21.941797
start init-outer-I-candidates 21.9422089999998
start init-H-candidates 21.9425059999999
start init-V-candidates 21.9430309999998
start init-P-candidates 21.9435699999999
start init-inner-I-candidates 21.945436
start init-inner-N-and-B-candidates 21.945888
start solution 21.95099
Simulated elimination of 324
Simulated elimination of 234
entering BRT
V-single: Vr2c4 = 1
H-single: Hr3c4 = 1
P-single: Pr3c4 = ne
H-single: Hr3c3 = 0
V-single: Vr3c4 = 0
Starting_init_links_with_<Fact-27634>
765 candidates, 2490 csp-links and 9850 links. Density = 3.37063272080211%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-52318>
whip[1]: Br2c4{sw .} ==> Pr2c5 ≠ sw
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ se, nes, esw
whip[1]: Pr2c4{ns .} ==> Br1c4 ≠ sw, swn, esw
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ sw, swn, esw
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ nw, wne, swn
whip[1]: Br2c3{e .} ==> Nr2c3 ≠ 0
whip[1]: Br2c4{sw .} ==> Nr2c4 ≠ 0, 1
whip[1]: Br3c3{s .} ==> Nr3c3 ≠ 3
whip[1]: Br3c4{n .} ==> Nr3c4 ≠ 0
Entering_level_W1_with_<Fact-52337>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   |   :   :
.........   .———.....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.95099, solve-time = 28.5277490000001, total-time = 50.4787390000001
nb-facts=<Fact-52363>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 2)
        (value-row-col-to-V-label 0 2 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
Simulated elimination of 323
Simulated elimination of 232
V-single: Vr2c3 = 1
H-single: Hr3c2 = 1
r2c2-closed-se-corner ==> Hr3c3 = 0, Vr3c3 = 0, Pr3c3 = nw, Pr2c2 ≠ se
entering level W1 with <Fact-83569>
whip[1]: Br3c3{se .} ==> Nr3c3 ≠ 3
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ nes, ne, wne
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0, 1
whip[1]: Pr3c2{ne .} ==> Br2c1 ≠ nes, se, esw
whip[1]: Pr2c3{ns .} ==> Br1c3 ≠ swn, sw, esw
whip[1]: Pr2c3{ns .} ==> Br1c2 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00604600000019673
start create-csp-variables
start create-labels 0.000914999999849897
start init-physical-csp-links 0.00500099999999293
start init-physical-non-csp-links 2.36122999999998
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.431786999999986
     start init-physical-BN-non-csp-links at local time 1.76826099999994
     start init-physical-BP-non-csp-links at local time 3.15659699999992
     end init-physical-BP-non-csp-links at local time 19.642996
end init-physical-non-csp-links 22.0042619999999
start init-corner-B-c-values 22.0105430000001
start init-outer-B-candidates 22.0106130000001
start init-outer-I-candidates 22.0110490000002
start init-H-candidates 22.0113670000001
start init-V-candidates 22.012023
start init-P-candidates 22.0125580000001
start init-inner-I-candidates 22.0142840000001
start init-inner-N-and-B-candidates 22.0147350000002
start solution 22.019937
Simulated elimination of 323
Simulated elimination of 232
entering BRT
V-single: Vr2c3 = 1
H-single: Hr3c2 = 1
P-single: Pr3c3 = nw
H-single: Hr3c3 = 0
V-single: Vr3c3 = 0
Starting_init_links_with_<Fact-27634>
765 candidates, 2490 csp-links and 9850 links. Density = 3.37063272080211%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-52318>
whip[1]: Br2c2{se .} ==> Pr2c2 ≠ se
whip[1]: Pr2c3{ns .} ==> Br1c2 ≠ se, nes, esw
whip[1]: Pr2c3{ns .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr3c2{ne .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Br2c2{se .} ==> Nr2c2 ≠ 0, 1
whip[1]: Br2c3{w .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 0
whip[1]: Br3c3{s .} ==> Nr3c3 ≠ 3
Entering_level_W1_with_<Fact-52337>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.019937, solve-time = 29.491593, total-time = 51.51153
nb-facts=<Fact-52363>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

corners of 2s

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




---------------------------------------------------------------------------------

2-open-corners

---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

==>


.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .———.........
:   :   | 2     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................


?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00309205055236816
start create-csp-variables
start create-labels 0.000568151473999023
start init-physical-csp-links 0.00378203392028809
start init-physical-non-csp-links 0.927170038223267
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.222369909286499
     start init-physical-BN-non-csp-links at local time 0.797741889953613
     start init-physical-BP-non-csp-links at local time 1.49611592292786
     end init-physical-BP-non-csp-links at local time 9.84301090240479
end init-physical-non-csp-links 10.7702209949493
start init-corner-B-c-values 10.7735500335693
start init-outer-B-candidates 10.7735888957977
start init-outer-I-candidates 10.7738120555878
start init-H-candidates 10.7739980220795
start init-V-candidates 10.7745840549469
start init-P-candidates 10.7749829292297
start init-inner-I-candidates 10.775866985321
start init-inner-N-and-B-candidates 10.7761240005493
start solution 10.7786531448364
Simulated elimination of 1334
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
V-single: Vr3c4 = 0
w[1]-2-in-r3c3-open-se-corner ==> Hr3c3 = 1, Vr3c3 = 1, Hr3c2 = 0, Vr2c3 = 0
813 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = , MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .———.........
:   :   | 2     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.78s, solve-time = 0.89s, total-time = 11.67s
nb-facts=<Fact-27608>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00264191627502441
start create-csp-variables
start create-labels 0.000579118728637695
start init-physical-csp-links 0.0033411979675293
start init-physical-non-csp-links 0.893179178237915
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.205771207809448
     start init-physical-BN-non-csp-links at local time 0.78400707244873
     start init-physical-BP-non-csp-links at local time 1.47399616241455
     end init-physical-BP-non-csp-links at local time 10.391252040863
end init-physical-non-csp-links 11.2844681739807
start init-corner-B-c-values 11.2873210906982
start init-outer-B-candidates 11.287360906601
start init-outer-I-candidates 11.2875928878784
start init-H-candidates 11.2877938747406
start init-V-candidates 11.288204908371
start init-P-candidates 11.2885880470276
start init-inner-I-candidates 11.2894361019135
start init-inner-N-and-B-candidates 11.2899219989777
start solution 11.2924230098724
Simulated elimination of 1333
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
V-single: Vr3c3 = 0
w[1]-2-in-r3c3-open-sw-corner ==> Hr3c3 = 1, Vr3c4 = 1, Hr3c4 = 0, Vr2c4 = 0
813 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = , MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........———.   .....
:   :     2 |   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.29s, solve-time = 0.91s, total-time = 12.2s
nb-facts=<Fact-27608>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.0020592212677002
start create-csp-variables
start create-labels 0.000414848327636719
start init-physical-csp-links 0.00296998023986816
start init-physical-non-csp-links 0.8367919921875
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.202869892120361
     start init-physical-BN-non-csp-links at local time 0.752924919128418
     start init-physical-BP-non-csp-links at local time 1.39342093467712
     end init-physical-BP-non-csp-links at local time 10.7517418861389
end init-physical-non-csp-links 11.5885739326477
start init-corner-B-c-values 11.5908131599426
start init-outer-B-candidates 11.5908629894257
start init-outer-I-candidates 11.5910971164703
start init-H-candidates 11.5912640094757
start init-V-candidates 11.5916690826416
start init-P-candidates 11.592059135437
start init-inner-I-candidates 11.5931119918823
start init-inner-N-and-B-candidates 11.5933701992035
start solution 11.5959479808807
Simulated elimination of 1334
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
V-single: Vr3c4 = 0
w[1]-2-in-r3c3-open-ne-corner ==> Hr4c3 = 1, Vr3c3 = 1, Hr4c2 = 0, Vr4c3 = 0
813 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = , MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   | 2     :   :
.....   .———.........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.6s, solve-time = 0.95s, total-time = 12.55s
nb-facts=<Fact-27608>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00241708755493164
start create-csp-variables
start create-labels 0.000416994094848633
start init-physical-csp-links 0.0024878978729248
start init-physical-non-csp-links 0.871487855911255
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.202347993850708
     start init-physical-BN-non-csp-links at local time 0.797985792160034
     start init-physical-BP-non-csp-links at local time 1.51724195480347
     end init-physical-BP-non-csp-links at local time 11.5733799934387
end init-physical-non-csp-links 12.4449088573456
start init-corner-B-c-values 12.447496175766
start init-outer-B-candidates 12.4475491046906
start init-outer-I-candidates 12.4478192329407
start init-H-candidates 12.4480240345001
start init-V-candidates 12.4485301971436
start init-P-candidates 12.4491050243378
start init-inner-I-candidates 12.4502201080322
start init-inner-N-and-B-candidates 12.4505422115326
start solution 12.4536349773407
Simulated elimination of 1333
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
V-single: Vr3c3 = 0
w[1]-2-in-r3c3-open-nw-corner ==> Hr4c3 = 1, Vr3c4 = 1, Hr4c4 = 0, Vr4c4 = 0
813 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = , MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :     2 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 12.45s, solve-time = 0.96s, total-time = 13.41s
nb-facts=<Fact-27608>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


all OK for H, V, P and B variables.




---------------------------------------------------------------------------------

2-non-closed-corners

---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2     :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

or

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................


?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
when whips added:
entering level W1 with <Fact-81904>
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00485300000013922
start create-csp-variables
start create-labels 0.000900000000001455
start init-physical-csp-links 0.00480999999990672
start init-physical-non-csp-links 2.33383299999991
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.462123999999903
     start init-physical-BN-non-csp-links at local time 1.75007899999991
     start init-physical-BP-non-csp-links at local time 2.99026000000003
     end init-physical-BP-non-csp-links at local time 19.645548
end init-physical-non-csp-links 21.979425
start init-corner-B-c-values 21.9845420000001
start init-outer-B-candidates 21.9846090000001
start init-outer-I-candidates 21.985036
start init-H-candidates 21.9853320000002
start init-V-candidates 21.9860060000001
start init-P-candidates 21.9865880000002
start init-inner-I-candidates 21.9883090000001
start init-inner-N-and-B-candidates 21.9887580000002
start solution 21.993909
Simulated elimination of 1334
entering BRT
V-single: Vr3c4 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{ns .} ==> Pr3c3 ≠ o, nw
whip[1]: Br3c3{ns .} ==> Pr4c3 ≠ o, sw
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, wne, nes
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nes, se, esw
Entering_level_W1_with_<Fact-55591>
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
:   :   : 2     :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.993909, solve-time = 34.063353, total-time = 56.057262
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        ;(value-row-col-to-V-label 1 3 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
when whips added:

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00517700000000332
start create-csp-variables
start create-labels 0.000849999999900319
start init-physical-csp-links 0.00474599999984093
start init-physical-non-csp-links 2.29170299999987
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.421753000000081
     start init-physical-BN-non-csp-links at local time 1.56731500000001
     start init-physical-BP-non-csp-links at local time 2.76276600000006
     end init-physical-BP-non-csp-links at local time 18.920075
end init-physical-non-csp-links 21.2118309999998
start init-corner-B-c-values 21.2172699999999
start init-outer-B-candidates 21.2173379999999
start init-outer-I-candidates 21.217766
start init-H-candidates 21.2180639999999
start init-V-candidates 21.218586
start init-P-candidates 21.2191250000001
start init-inner-I-candidates 21.221063
start init-inner-N-and-B-candidates 21.2215039999999
start solution 21.2265149999998
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{ne .} ==> Pr3c3 ≠ o, nw
whip[1]: Br3c3{ne .} ==> Pr3c4 ≠ o, ne
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nes, se, esw
Entering_level_W1_with_<Fact-55591>
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
:   :   : 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.2265149999998, solve-time = 33.6276700000001, total-time = 54.8541849999999
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
when whips added:
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00539899999989757
start create-csp-variables
start create-labels 0.00088000000005195
start init-physical-csp-links 0.00482400000009875
start init-physical-non-csp-links 2.37983099999997
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.452837000000045
     start init-physical-BN-non-csp-links at local time 1.68804399999999
     start init-physical-BP-non-csp-links at local time 3.01574500000015
     end init-physical-BP-non-csp-links at local time 19.2465460000001
end init-physical-non-csp-links 21.62643
start init-corner-B-c-values 21.632102
start init-outer-B-candidates 21.632175
start init-outer-I-candidates 21.632597
start init-H-candidates 21.632891
start init-V-candidates 21.6334039999999
start init-P-candidates 21.633928
start init-inner-I-candidates 21.6358009999999
start init-inner-N-and-B-candidates 21.636254
start solution 21.641179
Simulated elimination of 1333
entering BRT
V-single: Vr3c3 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{ne .} ==> Pr3c4 ≠ o, ne
whip[1]: Br3c3{ne .} ==> Pr4c4 ≠ o, se
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ swn, sw, esw
Entering_level_W1_with_<Fact-55591>
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
:   :     2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.641179, solve-time = 34.1967849999999, total-time = 55.8379639999998
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        ;(value-row-col-to-V-label 1 3 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
when whips added:
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.0048789999998462
start create-csp-variables
start create-labels 0.000842000000147891
start init-physical-csp-links 0.0048300000000836
start init-physical-non-csp-links 2.32338099999993
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.437931999999819
     start init-physical-BN-non-csp-links at local time 1.70304399999986
     start init-physical-BP-non-csp-links at local time 2.99294899999995
     end init-physical-BP-non-csp-links at local time 20.140758
end init-physical-non-csp-links 22.4641839999999
start init-corner-B-c-values 22.469319
start init-outer-B-candidates 22.4693869999999
start init-outer-I-candidates 22.4698129999999
start init-H-candidates 22.4701109999999
start init-V-candidates 22.470636
start init-P-candidates 22.471186
start init-inner-I-candidates 22.4729109999998
start init-inner-N-and-B-candidates 22.473346
start solution 22.4783259999999
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{ne .} ==> Pr3c3 ≠ o, nw
whip[1]: Br3c3{ne .} ==> Pr3c4 ≠ o, ne
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nes, se, esw
Entering_level_W1_with_<Fact-55591>
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
:   :   : 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.4783259999999, solve-time = 33.6262730000001, total-time = 56.104599
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        ;(value-row-col-to-V-label 1 3 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
2-in-r3c3-non-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00524099999984173
start create-csp-variables
start create-labels 0.000878000000057
start init-physical-csp-links 0.00474800000006326
start init-physical-non-csp-links 2.4145390000001
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.49852900000019
     start init-physical-BN-non-csp-links at local time 1.74682600000006
     start init-physical-BP-non-csp-links at local time 3.08436000000006
     end init-physical-BP-non-csp-links at local time 19.780346
end init-physical-non-csp-links 22.1949340000001
start init-corner-B-c-values 22.2004379999998
start init-outer-B-candidates 22.2005079999999
start init-outer-I-candidates 22.2009439999999
start init-H-candidates 22.2012439999999
start init-V-candidates 22.201894
start init-P-candidates 22.202436
start init-inner-I-candidates 22.2041429999999
start init-inner-N-and-B-candidates 22.2045799999999
start solution 22.2094840000002
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ o, sw
whip[1]: Br3c3{se .} ==> Pr4c4 ≠ o, se
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, wne, nes
Entering_level_W1_with_<Fact-55591>
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
.........   .........
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.2094840000002, solve-time = 33.589692, total-time = 55.7991760000002
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
when whips added:
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00579100000004473
start create-csp-variables
start create-labels 0.000827999999955864
start init-physical-csp-links 0.00477599999999256
start init-physical-non-csp-links 2.39999699999998
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.46482200000014
     start init-physical-BN-non-csp-links at local time 1.7953950000001
     start init-physical-BP-non-csp-links at local time 3.09837600000014
     end init-physical-BP-non-csp-links at local time 19.5825179999999
end init-physical-non-csp-links 21.9825599999999
start init-corner-B-c-values 21.9885939999999
start init-outer-B-candidates 21.9886650000001
start init-outer-I-candidates 21.9890869999999
start init-H-candidates 21.9893790000001
start init-V-candidates 21.989894
start init-P-candidates 21.990427
start init-inner-I-candidates 21.9921220000001
start init-inner-N-and-B-candidates 21.9925479999999
start solution 21.9976590000001
Simulated elimination of 1334
entering BRT
V-single: Vr3c4 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{ns .} ==> Pr3c3 ≠ o, nw
whip[1]: Br3c3{ns .} ==> Pr4c3 ≠ o, sw
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, wne, nes
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nes, se, esw
Entering_level_W1_with_<Fact-55591>
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
:   :   : 2     :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.9976590000001, solve-time = 33.669901, total-time = 55.6675600000001
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        ;(value-row-col-to-V-label 1 3 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
2-in-r3c3-non-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00525700000002871
start create-csp-variables
start create-labels 0.000832999999829553
start init-physical-csp-links 0.00506799999993746
start init-physical-non-csp-links 2.39973399999985
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.454586000000063
     start init-physical-BN-non-csp-links at local time 1.76975199999993
     start init-physical-BP-non-csp-links at local time 3.06915000000004
     end init-physical-BP-non-csp-links at local time 19.745731
end init-physical-non-csp-links 22.1455099999998
start init-corner-B-c-values 22.150993
start init-outer-B-candidates 22.151063
start init-outer-I-candidates 22.151631
start init-H-candidates 22.1519390000001
start init-V-candidates 22.1524890000001
start init-P-candidates 22.1530250000001
start init-inner-I-candidates 22.154771
start init-inner-N-and-B-candidates 22.155211
start solution 22.1601089999999
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ o, sw
whip[1]: Br3c3{se .} ==> Pr4c4 ≠ o, se
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, wne, nes
Entering_level_W1_with_<Fact-55591>
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
.........   .........
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.1601089999999, solve-time = 33.558796, total-time = 55.7189049999999
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00498000000015963
start create-csp-variables
start create-labels 0.000990999999885389
start init-physical-csp-links 0.00519099999996797
start init-physical-non-csp-links 2.37808399999994
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.427323999999999
     start init-physical-BN-non-csp-links at local time 1.67083400000024
     start init-physical-BP-non-csp-links at local time 2.95321200000012
     end init-physical-BP-non-csp-links at local time 19.3771650000001
end init-physical-non-csp-links 21.755304
start init-corner-B-c-values 21.7605679999999
start init-outer-B-candidates 21.7606400000002
start init-outer-I-candidates 21.76108
start init-H-candidates 21.761358
start init-V-candidates 21.761878
start init-P-candidates 21.7624080000003
start init-inner-I-candidates 21.7642370000001
start init-inner-N-and-B-candidates 21.7646660000003
start solution 21.769597
Simulated elimination of 1333
entering BRT
V-single: Vr3c3 = 0
Starting_init_links_with_<Fact-27618>
803 candidates, 2764 csp-links and 11216 links. Density = 3.48319736151527%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55582>
whip[1]: Br3c3{ne .} ==> Pr3c4 ≠ o, ne
whip[1]: Br3c3{ne .} ==> Pr4c4 ≠ o, se
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ swn, sw, esw
Entering_level_W1_with_<Fact-55591>
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
:   :     2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.769597, solve-time = 33.6091570000003, total-time = 55.3787540000003
nb-facts=<Fact-55617>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




all OK for P variables




---------------------------------------------------------------------------------

2-symmetric-corners

---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

;;; P correspondence:
;;; o  ne ns nw se ew sw
;;; 1  2  3  4  5  6  7   


?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
when whips added:
entering level W1 with <Fact-81903>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00578900000027716
start create-csp-variables
start create-labels 0.000911999999971158
start init-physical-csp-links 0.00501299999996263
start init-physical-non-csp-links 2.40233899999976
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.454339999999775
     start init-physical-BN-non-csp-links at local time 1.76526899999999
     start init-physical-BP-non-csp-links at local time 3.138958
     end init-physical-BP-non-csp-links at local time 19.6221699999996
end init-physical-non-csp-links 22.0245609999997
start init-corner-B-c-values 22.0305820000003
start init-outer-B-candidates 22.0306520000004
start init-outer-I-candidates 22.0310750000003
start init-H-candidates 22.0313720000004
start init-V-candidates 22.0320290000004
start init-P-candidates 22.0325860000003
start init-inner-I-candidates 22.0343230000003
start init-inner-N-and-B-candidates 22.0347800000004
start solution 22.0396919999998
Simulated elimination of 7433
Simulated elimination of 6433
Simulated elimination of 3433
Simulated elimination of 2433
entering BRT
Starting_init_links_with_<Fact-27617>
819 candidates, 2866 csp-links and 11664 links. Density = 3.48209247964749%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56681>
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ e, wne, swn, sw, ew, ns, ne, s
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ sw, swn, esw
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ ne, nes, wne
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr4c4 ≠ ne, sw, ew, ns
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, w, esw, sw, ew, n, nes, ns
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
Entering_level_W1_with_<Fact-56710>
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
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.0396919999998, solve-time = 33.6513869999999, total-time = 55.6910789999997
nb-facts=<Fact-56736>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 4) ; ns
        (value-row-col-to-P-label 6 3 4) ; ew
        (value-row-col-to-P-label 4 3 4) ; nw
        (value-row-col-to-P-label 5 3 4) ; se
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ swn, n, e, ns, nw, se, ew, esw
whip[1]: Pr3c4{o .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr3c4{o .} ==> Br3c3 ≠ ew, ns, nw, se
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{o .} ==> Br2c4 ≠ nes, s, w, ns, nw, se, ew, wne
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ nes, se, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00547700000015539
start create-csp-variables
start create-labels 0.000853000000006432
start init-physical-csp-links 0.00481600000011895
start init-physical-non-csp-links 2.42120800000021
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.463893999999982
     start init-physical-BN-non-csp-links at local time 1.68054699999993
     start init-physical-BP-non-csp-links at local time 2.90002499999991
     end init-physical-BP-non-csp-links at local time 18.9556310000003
end init-physical-non-csp-links 21.3768749999999
start init-corner-B-c-values 21.3825850000003
start init-outer-B-candidates 21.382646
start init-outer-I-candidates 21.3830840000001
start init-H-candidates 21.3835290000002
start init-V-candidates 21.3840490000002
start init-P-candidates 21.3845879999999
start init-inner-I-candidates 21.3863249999999
start init-inner-N-and-B-candidates 21.3867610000002
start solution 21.3918599999997
Simulated elimination of 6434
Simulated elimination of 5434
Simulated elimination of 4434
Simulated elimination of 3434
entering BRT
Starting_init_links_with_<Fact-27617>
819 candidates, 2866 csp-links and 11664 links. Density = 3.48209247964749%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56681>
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ se, nes, esw
whip[1]: Pr3c4{o .} ==> Br2c4 ≠ s, nes, wne, ew, se, nw, ns, w
whip[1]: Pr3c4{o .} ==> Br3c3 ≠ ns, ew, se, nw
whip[1]: Br3c3{sw .} ==> Pr4c3 ≠ se, nw, ns, ew
whip[1]: Br3c3{sw .} ==> Pr4c4 ≠ se, nw, o
whip[1]: Br3c3{sw .} ==> Pr3c3 ≠ se, o, nw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ w, se, esw, nes, nw, o, n
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, s, e, o, se, nw, swn
whip[1]: Pr4c3{sw .} ==> Br4c2 ≠ e, nw, swn, n, ns, se, ew, esw
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{o .} ==> Br3c4 ≠ nw, wne, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
Entering_level_W1_with_<Fact-56710>
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
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.3918599999997, solve-time = 33.5457139999999, total-time = 54.9375739999996
nb-facts=<Fact-56736>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 4 3) ; ns
        (value-row-col-to-P-label 6 4 3) ; ew
        (value-row-col-to-P-label 4 4 3) ; nw
        (value-row-col-to-P-label 5 4 3) ; se
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-sw-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
when whips added:
entering level W1 with <Fact-81903>
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ swn, n, e, ns, nw, se, ew, esw
whip[1]: Pr3c4{o .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr3c4{o .} ==> Br3c3 ≠ ew, ns, nw, se
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{o .} ==> Br2c4 ≠ nes, s, w, ns, nw, se, ew, wne
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ nes, se, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00560700000005454
start create-csp-variables
start create-labels 0.00088000000005195
start init-physical-csp-links 0.00467100000014398
start init-physical-non-csp-links 2.41380299999992
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.474678999999924
     start init-physical-BN-non-csp-links at local time 1.74258099999997
     start init-physical-BP-non-csp-links at local time 3.11667200000011
     end init-physical-BP-non-csp-links at local time 19.397015
end init-physical-non-csp-links 21.8108630000002
start init-corner-B-c-values 21.8167050000002
start init-outer-B-candidates 21.816773
start init-outer-I-candidates 21.8173400000001
start init-H-candidates 21.8176560000002
start init-V-candidates 21.81819
start init-P-candidates 21.8187330000001
start init-inner-I-candidates 21.820455
start init-inner-N-and-B-candidates 21.8209059999999
start solution 21.8261579999999
Simulated elimination of 6443
Simulated elimination of 5443
Simulated elimination of 4443
Simulated elimination of 3443
entering BRT
Starting_init_links_with_<Fact-27617>
819 candidates, 2866 csp-links and 11664 links. Density = 3.48209247964749%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56681>
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ se, nes, esw
whip[1]: Pr4c3{o .} ==> Br3c3 ≠ ns, ew, se, nw
whip[1]: Br3c3{sw .} ==> Pr3c4 ≠ nw, se, ns, ew
whip[1]: Br3c3{sw .} ==> Pr4c4 ≠ se, nw, o
whip[1]: Br3c3{sw .} ==> Pr3c3 ≠ se, o, nw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ w, se, esw, nes, nw, o, n
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, s, e, o, se, nw, swn
whip[1]: Pr3c4{sw .} ==> Br2c4 ≠ w, se, nes, s, ns, nw, ew, wne
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ nes, se, esw
whip[1]: Pr3c4{sw .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ n, swn, esw, ew, se, nw, ns, e
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ nw, wne, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
Entering_level_W1_with_<Fact-56710>
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
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.8261579999999, solve-time = 33.5223940000001, total-time = 55.3485519999999
nb-facts=<Fact-56736>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 4 4) ; ns
        (value-row-col-to-P-label 6 4 4) ; ew
        (value-row-col-to-P-label 2 4 4) ; ne
        (value-row-col-to-P-label 7 4 4) ; sw
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
when whips added:
entering level W1 with <Fact-81903>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00554900000042835
start create-csp-variables
start create-labels 0.000868999999966036
start init-physical-csp-links 0.00487299999986135
start init-physical-non-csp-links 2.42836099999977
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.465616000000409
     start init-physical-BN-non-csp-links at local time 1.66435900000033
     start init-physical-BP-non-csp-links at local time 3.04002000000037
     end init-physical-BP-non-csp-links at local time 19.322799
end init-physical-non-csp-links 21.7512080000001
start init-corner-B-c-values 21.7570030000002
start init-outer-B-candidates 21.7570780000001
start init-outer-I-candidates 21.7577190000002
start init-H-candidates 21.75801
start init-V-candidates 21.7585510000004
start init-P-candidates 21.7591110000003
start init-inner-I-candidates 21.7608650000002
start init-inner-N-and-B-candidates 21.7613230000002
start solution 21.7663750000002
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
Starting_init_links_with_<Fact-27617>
819 candidates, 2866 csp-links and 11664 links. Density = 3.48209247964749%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56681>
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ne, sw, ns, ew
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ne, s, swn, sw, ns, e, wne, ew
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ sw, swn, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ne, nes, wne
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
Entering_level_W1_with_<Fact-56710>
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
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.7663750000002, solve-time = 34.2373899999998, total-time = 56.0037649999999
nb-facts=<Fact-56736>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



all OK for P variables




iteration OK:

?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
    )
)

(solve 
5 5
. . . . .
. . . . .
. . 2 . .
. . . 2 .
. . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
2-in-r4c4-symmetric-nw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ew, Pr5c5 ≠ ns, Pr5c5 ≠ ne, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
when whips added:
entering level W1 with <Fact-80243>
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ nes, n, w, esw
whip[1]: Br5c5{o .} ==> Pr5c6 ≠ sw <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< due to border
whip[1]: Br5c5{o .} ==> Pr6c5 ≠ ne <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< due to border
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ e, wne, ew, ne
whip[1]: Pr5c6{o .} ==> Br4c5 ≠ s, swn, sw, ns
whip[1]: Br5c5{o .} ==> Nr5c5 ≠ 3, 1
whip[1]: Pr5c5{o .} ==> Br5c4 ≠ nes
whip[1]: Pr5c4{ns .} ==> Br5c3 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ esw
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ sw, ne, ns, ew
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . 2 .
. . . . .

start init-grid-structure 0.00508700000000317
start create-csp-variables
start create-labels 0.000829000000067026
start init-physical-csp-links 0.00475999999980559
start init-physical-non-csp-links 2.42658200000005
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.454265999999734
     start init-physical-BN-non-csp-links at local time 1.6924469999999
     start init-physical-BP-non-csp-links at local time 3.0315599999999
     end init-physical-BP-non-csp-links at local time 19.5474119999999
end init-physical-non-csp-links 21.9740489999999
start init-corner-B-c-values 21.979366
start init-outer-B-candidates 21.979437
start init-outer-I-candidates 21.9798530000003
start init-H-candidates 21.980149
start init-V-candidates 21.9806680000002
start init-P-candidates 21.9813100000001
start init-inner-I-candidates 21.9831560000002
start init-inner-N-and-B-candidates 21.9835950000002
start solution 21.9884179999999
Simulated elimination of 7433
Simulated elimination of 6433
Simulated elimination of 3433
Simulated elimination of 2433
entering BRT
Starting_init_links_with_<Fact-27605>
806 candidates, 2770 csp-links and 11299 links. Density = 3.48288457685372%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55747>
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ e, wne, swn, sw, ew, ns, ne, s
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ sw, swn, esw
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ ne, nes, wne
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr4c4 ≠ ne, sw, ew, ns
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, sw, ew, ns
whip[1]: Br4c4{se .} ==> Pr5c4 ≠ sw, ne, o
whip[1]: Br4c4{se .} ==> Pr4c5 ≠ sw, o, ne
whip[1]: Br4c4{se .} ==> Pr5c5 ≠ ne, sw, ew, ns
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ nes, w, esw, n
whip[1]: Br5c5{se .} ==> Pr5c6 ≠ sw
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ ne
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ ne, ew, wne, e
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ s, ns
whip[1]: Pr5c5{se .} ==> Br5c4 ≠ nes
whip[1]: Pr4c5{ew .} ==> Br3c5 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 3, 1
Entering_level_W1_with_<Fact-55806>
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
:   :   : 2 :   :   :
.....................
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.9884179999999, solve-time = 32.0380990000003, total-time = 54.0265170000002
nb-facts=<Fact-55832>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
    )
)

(solve 
6 6
. . . . . .
. . . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
2-in-r4c4-symmetric-nw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ew, Pr5c5 ≠ ns, Pr5c5 ≠ ne, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
when whips added:
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr5c5{o .} ==> Br5c4 ≠ nes, ne, wne
whip[1]: Pr5c4{ns .} ==> Br5c3 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ sw, ne, ns, ew
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . .
. . . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .

start init-grid-structure 0.00508300000001327
start create-csp-variables
start create-labels 0.00125100000013845
start init-physical-csp-links 0.00670500000023821
start init-physical-non-csp-links 4.24859700000025
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.878693999999996
     start init-physical-BN-non-csp-links at local time 3.0531390000001
     start init-physical-BP-non-csp-links at local time 5.65877300000011
     end init-physical-BP-non-csp-links at local time 36.5609010000003
end init-physical-non-csp-links 40.8095470000003
start init-corner-B-c-values 40.814895
start init-outer-B-candidates 40.814969
start init-outer-I-candidates 40.8154749999999
start init-H-candidates 40.8158210000001
start init-V-candidates 40.8169590000002
start init-P-candidates 40.818115
start init-inner-I-candidates 40.8216189999998
start init-inner-N-and-B-candidates 40.8223939999998
start solution 40.8307500000001
Simulated elimination of 7433
Simulated elimination of 6433
Simulated elimination of 3433
Simulated elimination of 2433
entering BRT
Starting_init_links_with_<Fact-37642>
1171 candidates, 4243 csp-links and 17411 links. Density = 2.5416219609217%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-80954>
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ e, wne, swn, sw, ew, ns, ne, s
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ sw, swn, esw
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ ne, nes, wne
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr4c4 ≠ ne, sw, ew, ns
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c4{se .} ==> Br4c4 ≠ ne, sw, ew, ns
whip[1]: Br4c4{se .} ==> Pr5c4 ≠ sw, ne, o
whip[1]: Br4c4{se .} ==> Pr4c5 ≠ sw, o, ne
whip[1]: Br4c4{se .} ==> Pr5c5 ≠ ne, sw, ew, ns
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr5c5{se .} ==> Br5c5 ≠ ne, w, esw, sw, ew, n, nes, ns
whip[1]: Pr5c5{se .} ==> Br5c4 ≠ nes, ne, wne
whip[1]: Pr4c5{ew .} ==> Br3c5 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
Entering_level_W1_with_<Fact-81003>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

------
------
------
------
------
------

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 40.8307500000001, solve-time = 74.652364, total-time = 115.483114
nb-facts=<Fact-81040>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************





?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 5) ; ns
        (value-row-col-to-P-label 6 3 5) ; ew
        (value-row-col-to-P-label 4 3 5) ; nw
        (value-row-col-to-P-label 5 3 5) ; se
    )
)

(solve 
6 6
. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. . . . . .
. . . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c4-symmetric-ne-corner ==> Pr4c4 ≠ ew, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ ns, Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o, Pr4c5 ≠ se, Pr4c5 ≠ nw, Pr4c5 ≠ o
2-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ ew, Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ ns, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o, Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
when whips added:
entering level W1 with <Fact-118122>
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Pr5c3{o .} ==> Br5c3 ≠ wne, nw, swn
whip[1]: Pr5c3{o .} ==> Br5c2 ≠ swn, n, e, ns, nw, se, ew, esw
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ew, ns, nw, se
whip[1]: Pr5c3{o .} ==> Br4c2 ≠ nes, se, esw
whip[1]: Pr3c5{o .} ==> Br3c5 ≠ wne, nw, swn
whip[1]: Pr3c5{o .} ==> Br3c4 ≠ ew, ns, nw, se
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ nes, se, esw
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c5{o .} ==> Br2c5 ≠ nes, s, w, ns, nw, se, ew, wne
whip[1]: Pr3c5{o .} ==> Br2c4 ≠ nes, se, esw
whip[1]: Pr3c4{ne .} ==> Br2c3 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0

WITHOUT THIS RULE:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00802100000009887
start create-csp-variables
start create-labels 0.0012179999998807
start init-physical-csp-links 0.00686200000018289
start init-physical-non-csp-links 4.10854900000004
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.844034999999622
     start init-physical-BN-non-csp-links at local time 2.94547699999976
     start init-physical-BP-non-csp-links at local time 5.40406499999972
     end init-physical-BP-non-csp-links at local time 37.2232049999998
end init-physical-non-csp-links 41.3318049999998
start init-corner-B-c-values 41.3400740000002
start init-outer-B-candidates 41.3401480000002
start init-outer-I-candidates 41.3406590000004
start init-H-candidates 41.3409830000001
start init-V-candidates 41.3418140000003
start init-P-candidates 41.34258
start init-inner-I-candidates 41.3449830000004
start init-inner-N-and-B-candidates 41.3456980000001
start solution 41.3527280000003
Simulated elimination of 6435
Simulated elimination of 5435
Simulated elimination of 4435
Simulated elimination of 3435
entering BRT
Starting_init_links_with_<Fact-37642>
1171 candidates, 4243 csp-links and 17411 links. Density = 2.5416219609217%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-80954>
whip[1]: Pr3c5{o .} ==> Br2c4 ≠ se, nes, esw
whip[1]: Pr3c5{o .} ==> Br2c5 ≠ s, nes, wne, ew, se, nw, ns, w
whip[1]: Pr3c5{o .} ==> Br3c4 ≠ ns, ew, se, nw
whip[1]: Br3c4{sw .} ==> Pr4c4 ≠ se, nw, ns, ew
whip[1]: Br3c4{sw .} ==> Pr4c5 ≠ se, nw, o
whip[1]: Br3c4{sw .} ==> Pr3c4 ≠ se, o, nw
whip[1]: Pr3c4{sw .} ==> Br2c3 ≠ w, se, esw, nes, nw, o, n
whip[1]: Pr4c5{sw .} ==> Br4c5 ≠ wne, s, e, o, se, nw, swn
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c4{sw .} ==> Br4c3 ≠ ew, nw, ns, se
whip[1]: Br4c3{sw .} ==> Pr5c3 ≠ nw, se, ew, ns
whip[1]: Br4c3{sw .} ==> Pr5c4 ≠ nw, o, se
whip[1]: Br4c3{sw .} ==> Pr4c3 ≠ nw, se, o
whip[1]: Pr4c3{sw .} ==> Br3c2 ≠ nes, w, n, o, nw, se, esw
whip[1]: Pr5c4{sw .} ==> Br5c4 ≠ s, nw, swn, wne, se, o, e
whip[1]: Pr5c3{sw .} ==> Br4c2 ≠ nes, se, esw
whip[1]: Pr5c3{sw .} ==> Br5c2 ≠ nw, e, esw, ew, se, ns, n, swn
whip[1]: Pr5c3{sw .} ==> Br5c3 ≠ wne, nw, swn
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ nes, se, esw
whip[1]: Pr3c5{o .} ==> Br3c5 ≠ nw, wne, swn
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
Entering_level_W1_with_<Fact-81003>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

------
------
------
------
------
------

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 41.3527280000003, solve-time = 75.3779879999997, total-time = 116.730716
nb-facts=<Fact-81040>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************






