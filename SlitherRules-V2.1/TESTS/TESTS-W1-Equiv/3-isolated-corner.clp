
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 3 ISOLATED CORNER
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


3-ISOLATED-CORNER, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.........   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

==>


.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 4 3)
    )
)

(solve
5 5 
. . . . .
. . . . .
. 3 . . . 
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$)
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.0032799243927002
start create-csp-variables
start create-labels 0.000514030456542969
start init-physical-csp-links 0.00319790840148926
start init-physical-non-csp-links 0.818115949630737
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.206207036972046
     start init-physical-BN-non-csp-links at local time 0.777387857437134
     start init-physical-BP-non-csp-links at local time 1.45414781570435
     end init-physical-BP-non-csp-links at local time 10.8919899463654
end init-physical-non-csp-links 11.7101380825043
start init-corner-B-c-values 11.7136061191559
start init-outer-B-candidates 11.7136509418488
start init-outer-I-candidates 11.7138669490814
start init-H-candidates 11.7140309810638
start init-V-candidates 11.7143919467926
start init-P-candidates 11.714751958847
start init-inner-I-candidates 11.7155981063843
start init-inner-N-and-B-candidates 11.7159109115601
start solution 11.7184710502625
Simulated elimination of 1343
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
V-single: Vr4c3 = 0
w[1]-3-in-r3c2-isolated-at-se-corner ==> Vr3c3 = 1, Hr4c2 = 1
813 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = , MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.72s, solve-time = 0.95s, total-time = 12.67s
nb-facts=<Fact-27609>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


(bind ?*simulated-eliminations*
    (create$)
)






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3-SYMMETRIC-CORNER, REDUCIBLE TO W1`
requires file "smmetric-corner.clp"

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


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
. 3 . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00304293632507324
start create-csp-variables
start create-labels 0.00061488151550293
start init-physical-csp-links 0.00344610214233398
start init-physical-non-csp-links 0.916774034500122
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.200894832611084
     start init-physical-BN-non-csp-links at local time 0.808337926864624
     start init-physical-BP-non-csp-links at local time 1.49670791625977
     end init-physical-BP-non-csp-links at local time 10.2226598262787
end init-physical-non-csp-links 11.1394801139832
start init-corner-B-c-values 11.1427569389343
start init-outer-B-candidates 11.1427979469299
start init-outer-I-candidates 11.1430020332336
start init-H-candidates 11.1431541442871
start init-V-candidates 11.1435289382935
start init-P-candidates 11.1438660621643
start init-inner-I-candidates 11.1447789669037
start init-inner-N-and-B-candidates 11.1450221538544
start solution 11.1474170684814
Simulated elimination of 7433
Simulated elimination of 6433
Simulated elimination of 3433
Simulated elimination of 2433
entering BRT
w[1]-3-in-r2c2-symmetric-se-corner ==> Vr2c3 = 1, Hr3c2 = 1
811 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 298 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = , MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.15s, solve-time = 0.8s, total-time = 11.94s
nb-facts=<Fact-27619>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config =
***  Using CLIPS 6.32-r767
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************










---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

PARTIAL-PATTERN DIAGONAL-3-2, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



(solve
5 5
. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 5.09999999999122e-05
start create-csp-variables
start create-labels 0.00139299999999998
start init-physical-csp-links 0.00741999999999998
start init-physical-non-csp-links 2.134784
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.405135
     start init-physical-BN-non-csp-links at local time 1.539889
     start init-physical-BP-non-csp-links at local time 2.67969
     end init-physical-BP-non-csp-links at local time 17.169357
end init-physical-non-csp-links 19.304189
start init-corner-B-c-values 19.304571
start init-outer-B-candidates 19.304657
start init-outer-I-candidates 19.30515
start init-H-candidates 19.305479
start init-V-candidates 19.306047
start init-P-candidates 19.30663
start init-inner-I-candidates 19.308468
start init-inner-N-and-B-candidates 19.309031
start solution 19.314116
entering BRT
Starting_init_links_with_<Fact-27603>
804 candidates, 2779 csp-links and 11430 links. Density = 3.54082637869185%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56025>
whip[1]: Br2c2{esw .} ==> Pr2c2 ≠ o, nw <<<<<<<<<<<<<<<
whip[1]: Br2c2{esw .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c2{esw .} ==> Pr3c2 ≠ o, sw
whip[1]: Br2c2{esw .} ==> Pr3c3 ≠ o, se <<<<<<<<<<<<<<<
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ nw
whip[1]: Br3c3{sw .} ==> Pr4c4 ≠ se, o <<<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne, wne, nes
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ swn, sw, esw
whip[1]: Pr2c2{sw .} ==> Br1c1 ≠ se
Entering_level_W1_with_<Fact-56046>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 19.314116, solve-time = 34.481868, total-time = 53.795984
nb-facts=<Fact-56072>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************






(solve
5 5
. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . .
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

start init-grid-structure 0.00463599999999786
start create-csp-variables
start create-labels 0.000868000000004088
start init-physical-csp-links 0.00474600000000436
start init-physical-non-csp-links 2.220782
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.41892
     start init-physical-BN-non-csp-links at local time 1.588249
     start init-physical-BP-non-csp-links at local time 2.824995
     end init-physical-BP-non-csp-links at local time 19.743759
end init-physical-non-csp-links 21.964595
start init-corner-B-c-values 21.969461
start init-outer-B-candidates 21.969533
start init-outer-I-candidates 21.970129
start init-H-candidates 21.970433
start init-V-candidates 21.970962
start init-P-candidates 21.971494
start init-inner-I-candidates 21.973207
start init-inner-N-and-B-candidates 21.973641
start solution 21.978434
entering BRT
Starting_init_links_with_<Fact-27591>
791 candidates, 2683 csp-links and 11065 links. Density = 3.54142329049913%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55091>
whip[1]: Br2c2{esw .} ==> Pr2c2 ≠ o, nw <<<<<<<<<<<<<<<<<
whip[1]: Br2c2{esw .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c2{esw .} ==> Pr3c2 ≠ o, sw
whip[1]: Br2c2{esw .} ==> Pr3c3 ≠ o, se <<<<<<<<<<<<<<<<<<<
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ nw
whip[1]: Br3c3{sw .} ==> Pr4c4 ≠ se, o <<<<<<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ nw
whip[1]: Br4c4{sw .} ==> Pr5c5 ≠ se, o <<<<<<<<<<<<<<<<<<
whip[1]: Pr5c5{sw .} ==> Br5c5 ≠ nw
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne, wne, nes
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ swn, sw, esw
whip[1]: Pr2c2{sw .} ==> Br1c1 ≠ se
Entering_level_W1_with_<Fact-55116>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 2 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.978434, solve-time = 32.799792, total-time = 54.778226
nb-facts=<Fact-55142>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3-2-SYMMETRIC-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


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
. 3 . . .
. . 2 . .
. . . . .
. . . . .
)

(bind ?*simulated-eliminations*
(create$
))
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00550899999996091
start create-csp-variables
start create-labels 0.000882999999987533
start init-physical-csp-links 0.00488100000001168
start init-physical-non-csp-links 2.337176
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.467432999999971
     start init-physical-BN-non-csp-links at local time 1.70131599999996
     start init-physical-BP-non-csp-links at local time 2.97116699999998
     end init-physical-BP-non-csp-links at local time 19.617851
end init-physical-non-csp-links 21.955075
start init-corner-B-c-values 21.96086
start init-outer-B-candidates 21.960932
start init-outer-I-candidates 21.961392
start init-H-candidates 21.961693
start init-V-candidates 21.962382
start init-P-candidates 21.963253
start init-inner-I-candidates 21.9652579999999
start init-inner-N-and-B-candidates 21.965735
start solution 21.970943
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c4-symmetric-nw-corner
r3c3-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
3-in-r2c2-symmetric-se-corner ==> Vr2c3 = 1, Hr3c2 = 1, Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
r2c2-closed-se-corner ==> Hr3c3 = 0, Vr3c3 = 0, Pr3c3 = nw
2-in-r3c3-open-nw-corner ==> Hr4c3 = 1, Vr3c4 = 1, Hr4c4 = 0, Vr4c4 = 0, Pr4c4 = nw, Br3c3 = se
Starting_init_links_with_<Fact-27672>
688 candidates, 2093 csp-links and 7994 links. Density = 3.38258691310382%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-47850>
whip[1]: Pr2c2{ne .} ==> Br1c1 ≠ nw, o, se
whip[1]: Pr2c3{ns .} ==> Br1c2 ≠ se, nes, esw
whip[1]: Pr2c3{ns .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr3c2{ne .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c3{se .} ==> Br4c2 ≠ ne, w, s, o, nes, wne, sw
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2, 0
whip[1]: Br2c3{w .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{n .} ==> Nr4c3 ≠ 0
whip[1]: Br4c4{s .} ==> Nr4c4 ≠ 3
Entering_level_W1_with_<Fact-47881>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     2 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.970943, solve-time = 23.053415, total-time = 45.024358
nb-facts=<Fact-47907>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




WITHOUT THIS RULE:

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00753699999950186
start create-csp-variables
start create-labels 0.000882999999703316
start init-physical-csp-links 0.00481899999977031
start init-physical-non-csp-links 2.41805899999963
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.477789999999914
     start init-physical-BN-non-csp-links at local time 1.74929100000008
     start init-physical-BP-non-csp-links at local time 3.13638199999968
     end init-physical-BP-non-csp-links at local time 20.4139249999998
end init-physical-non-csp-links 22.8320379999996
start init-corner-B-c-values 22.8398349999998
start init-outer-B-candidates 22.839903
start init-outer-I-candidates 22.8403959999996
start init-H-candidates 22.8407019999995
start init-V-candidates 22.8412429999998
start init-P-candidates 22.8418029999993
start init-inner-I-candidates 22.8435749999999
start init-inner-N-and-B-candidates 22.8440270000001
start solution 22.8492880000003
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
Starting_init_links_with_<Fact-27603>
804 candidates, 2761 csp-links and 11246 links. Density = 3.48382619901737%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55621>
whip[1]: Br2c2{esw .} ==> Pr2c2 ≠ o, nw
whip[1]: Br2c2{esw .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c2{esw .} ==> Pr3c2 ≠ o, sw
whip[1]: Br2c2{esw .} ==> Pr3c3 ≠ o, se
whip[1]: Pr3c3{sw .} ==> Br3c3 ≠ nw
whip[1]: Br3c3{sw .} ==> Pr4c4 ≠ se, o
P-single: Pr4c4 = nw
H-single: Hr4c3 = 1
H-single: Hr4c4 = 0
V-single: Vr3c4 = 1
V-single: Vr4c4 = 0
B-single: Br3c3 = se
H-single: Hr3c3 = 0
V-single: Vr3c3 = 0
P-single: Pr3c3 = nw
H-single: Hr3c2 = 1
V-single: Vr2c3 = 1
whip[1]: Br2c2{nes .} ==> Pr2c2 ≠ se
whip[1]: Pr2c2{sw .} ==> Br1c1 ≠ o, se, nw
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ nes, se, esw
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ nes, se, esw
whip[1]: Pr3c4{se .} ==> Br2c4 ≠ e, sw, esw, swn, ne, o, n
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ w, wne, nes, ne, sw, o, s
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne, wne, nes
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ swn, sw, esw
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0, 2
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 0
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 3
Entering_level_W1_with_<Fact-55677>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     2 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.8492880000003, solve-time = 34.623407, total-time = 57.4726950000004
nb-facts=<Fact-55703>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************












(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 3 5 5) ; ns
(value-row-col-to-P-label 6 5 5) ; ew
(value-row-col-to-P-label 2 5 5) ; ne
(value-row-col-to-P-label 7 5 5) ; sw
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
))
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

start init-grid-structure 0.00418700000000172
start create-csp-variables
start create-labels 0.000881999999997163
start init-physical-csp-links 0.00480499999999751
start init-physical-non-csp-links 2.319094
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.438462999999999
     start init-physical-BN-non-csp-links at local time 1.645226
     start init-physical-BP-non-csp-links at local time 2.912081
     end init-physical-BP-non-csp-links at local time 18.552152
end init-physical-non-csp-links 20.871292
start init-corner-B-c-values 20.875759
start init-outer-B-candidates 20.875834
start init-outer-I-candidates 20.87631
start init-H-candidates 20.876613
start init-V-candidates 20.877401
start init-P-candidates 20.878099
start init-inner-I-candidates 20.880148
start init-inner-N-and-B-candidates 20.880611
start solution 20.885697
Simulated elimination of 7455
Simulated elimination of 6455
Simulated elimination of 3455
Simulated elimination of 2455
entering BRT
r5c5-symmetric-nw-corner
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c4-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r4c4-symmetric-se-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
r3c3-symmetric-se-corner
r4c4-symmetric-nw-corner
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
3-in-r2c2-symmetric-se-corner ==> Vr2c3 = 1, Hr3c2 = 1, Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
r2c2-closed-se-corner ==> Hr3c3 = 0, Vr3c3 = 0, Pr3c3 = nw
2-in-r3c3-open-nw-corner ==> Hr4c3 = 1, Vr3c4 = 1, Hr4c4 = 0, Vr4c4 = 0, Pr4c4 = nw, Br3c3 = se
2-in-r4c4-open-nw-corner ==> Hr5c4 = 1, Vr4c5 = 1, Hr5c5 = 0, Vr5c5 = 0, Pr5c5 = nw, Br4c4 = se
Starting_init_links_with_<Fact-27684>
630 candidates, 1818 csp-links and 6870 links. Density = 3.46733287909758%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-45064>
whip[1]: Pr2c2{ne .} ==> Br1c1 ≠ nw, o, se
whip[1]: Pr2c3{ns .} ==> Br1c2 ≠ se, nes, esw
whip[1]: Pr2c3{ns .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr3c2{ne .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c3{se .} ==> Br4c2 ≠ ne, w, s, o, nes, wne, sw
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr5c4{se .} ==> Br5c3 ≠ ne, w, s, o, nes, wne, sw
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2, 0
whip[1]: Br2c3{w .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{n .} ==> Nr4c3 ≠ 0
whip[1]: Br4c5{w .} ==> Nr4c5 ≠ 0
whip[1]: Br5c4{n .} ==> Nr5c4 ≠ 0
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 1, 3
Entering_level_W1_with_<Fact-45107>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     2 |   :   :
.........———.   .....
:   :   :     2 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 20.885697, solve-time = 19.564118, total-time = 40.449815
nb-facts=<Fact-45133>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************








grid corners are always symmetric:


(solve
5 5
. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . 2
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . 2

start init-grid-structure 0.00527300000000253
start create-csp-variables
start create-labels 0.000909000000000049
start init-physical-csp-links 0.00464600000000104
start init-physical-non-csp-links 2.237349
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.432853999999999
     start init-physical-BN-non-csp-links at local time 1.580934
     start init-physical-BP-non-csp-links at local time 2.833384
     end init-physical-BP-non-csp-links at local time 18.414167
end init-physical-non-csp-links 20.651567
start init-corner-B-c-values 20.657142
start init-outer-B-candidates 20.657213
start init-outer-I-candidates 20.657673
start init-H-candidates 20.657967
start init-V-candidates 20.658652
start init-P-candidates 20.659355
start init-inner-I-candidates 20.661531
start init-inner-N-and-B-candidates 20.661989
start solution 20.667052
entering BRT
2-in-se-corner ==> Vr4c6 = 1, Hr6c4 = 1
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r5c5-symmetric-se-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ew, Pr5c5 ≠ ns, Pr5c5 ≠ ne
r4c4-symmetric-se-corner
r5c5-symmetric-nw-corner
2-in-r4c4-symmetric-se-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
r3c3-symmetric-se-corner
r4c4-symmetric-nw-corner
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
3-in-r2c2-symmetric-se-corner ==> Vr2c3 = 1, Hr3c2 = 1, Pr2c2 ≠ se, Pr2c2 ≠ nw, Pr2c2 ≠ o
r2c2-closed-se-corner ==> Hr3c3 = 0, Vr3c3 = 0, Pr3c3 = nw
2-in-r3c3-open-nw-corner ==> Hr4c3 = 1, Vr3c4 = 1, Hr4c4 = 0, Vr4c4 = 0, Pr4c4 = nw, Br3c3 = se
2-in-r4c4-open-nw-corner ==> Hr5c4 = 1, Vr4c5 = 1, Hr5c5 = 0, Vr5c5 = 0, Pr5c5 = nw, Br4c4 = se
2-in-r5c5-open-nw-corner ==> Hr6c5 = 1, Vr5c6 = 1, Pr6c6 = nw, Br5c5 = se
P-single: Pr5c6 = ns
P-single: Pr6c5 = ew
B-single: Br5c6 = w
B-single: Br4c6 = w
B-single: Br6c5 = n
B-single: Br6c4 = n
Starting_init_links_with_<Fact-27708>
596 candidates, 1780 csp-links and 6666 links. Density = 3.75951722971068%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-44604>
whip[1]: Pr6c4{ne .} ==> Br5c3 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr4c6{ns .} ==> Br3c5 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr2c2{ne .} ==> Br1c1 ≠ nw, o, se
whip[1]: Pr2c3{ns .} ==> Br1c2 ≠ se, nes, esw
whip[1]: Pr2c3{ns .} ==> Br1c3 ≠ sw, swn, esw
whip[1]: Pr3c2{ne .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c3{se .} ==> Br4c2 ≠ ne, w, s, o, nes, wne, sw
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ ne, e, swn, sw
whip[1]: Pr5c4{se .} ==> Br5c3 ≠ ne, s, wne, sw
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 2, 0
whip[1]: Br3c5{wne .} ==> Nr3c5 ≠ 0
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br2c3{w .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{n .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{n .} ==> Nr4c3 ≠ 0
whip[1]: Br4c5{ew .} ==> Nr4c5 ≠ 0, 1
whip[1]: Br5c4{ns .} ==> Nr5c4 ≠ 0, 1
Entering_level_W1_with_<Fact-44649>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     2 |   :   :
.........———.   .....
:   :   :     2 |   |
.............———.   .
:   :   :   :     2 |
.............———.———.

init-time = 20.667052, solve-time = 21.605658, total-time = 42.27271
nb-facts=<Fact-44675>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




(solve
5 5
2 . . . .
. 2 . . .
. . 2 . .
. . . 3 .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

2 . . . .
. 2 . . .
. . 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.00477700000000425
start create-csp-variables
start create-labels 0.000869000000008668
start init-physical-csp-links 0.00473300000000165
start init-physical-non-csp-links 2.30843400000001
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.405568000000002
     start init-physical-BN-non-csp-links at local time 1.641475
     start init-physical-BP-non-csp-links at local time 2.967826
     end init-physical-BP-non-csp-links at local time 19.452655
end init-physical-non-csp-links 21.761132
start init-corner-B-c-values 21.766193
start init-outer-B-candidates 21.766256
start init-outer-I-candidates 21.766683
start init-H-candidates 21.766958
start init-V-candidates 21.76763
start init-P-candidates 21.768466
start init-inner-I-candidates 21.77045
start init-inner-N-and-B-candidates 21.770909
start solution 21.775887
entering BRT
2-in-nw-corner ==> Vr2c1 = 1, Hr1c2 = 1
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r1c1-symmetric-nw-corner ==> Pr2c2 ≠ sw, Pr2c2 ≠ ew, Pr2c2 ≠ ns, Pr2c2 ≠ ne
r1c1-symmetric-se-corner
r2c2-symmetric-nw-corner
2-in-r2c2-symmetric-nw-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o, Pr3c2 ≠ sw, Pr3c2 ≠ ne, Pr3c2 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
r3c3-symmetric-se-corner
r4c4-symmetric-nw-corner
3-in-r4c4-symmetric-nw-corner ==> Vr4c4 = 1, Hr4c4 = 1, Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
r4c4-closed-nw-corner ==> Hr4c3 = 0, Vr3c4 = 0, Pr4c4 = se
2-in-r3c3-open-se-corner ==> Hr3c3 = 1, Vr3c3 = 1, Hr3c2 = 0, Vr2c3 = 0, Pr3c3 = se, Br3c3 = nw
2-in-r2c2-open-se-corner ==> Hr2c2 = 1, Vr2c2 = 1, Hr2c1 = 0, Vr1c2 = 0, Pr2c2 = se, Br2c2 = nw
2-in-r1c1-open-se-corner ==> Hr1c1 = 1, Vr1c1 = 1, Pr1c1 = se, Br1c1 = nw
P-single: Pr2c1 = ns
P-single: Pr1c2 = ew
B-single: Br2c0 = e
B-single: Br1c0 = e
B-single: Br0c2 = s
B-single: Br0c1 = s
Starting_init_links_with_<Fact-27708>
596 candidates, 1780 csp-links and 6682 links. Density = 3.76854097343635%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-44636>
whip[1]: Pr1c3{ew .} ==> Br1c3 ≠ nw, s, e, o, wne, swn, se
whip[1]: Pr3c1{ne .} ==> Br3c1 ≠ e, o, wne, swn, se, nw, s
whip[1]: Pr2c3{nw .} ==> Br1c3 ≠ ne, n, esw, sw
whip[1]: Pr3c2{ns .} ==> Br3c1 ≠ w, nes, sw, ne
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ s, o, nes, wne, sw, ne, w
whip[1]: Pr4c5{nw .} ==> Br3c5 ≠ sw, swn, esw
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ nw, wne, swn
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ ne, nes, wne
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ nw, wne, swn
whip[1]: Pr5c5{ne .} ==> Br5c5 ≠ nw, o, se
whip[1]: Br5c5{nes .} ==> Nr5c5 ≠ 2, 0
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br3c1{esw .} ==> Nr3c1 ≠ 0
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br1c2{ns .} ==> Nr1c2 ≠ 0, 1
whip[1]: Br2c1{ew .} ==> Nr2c1 ≠ 0, 1
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{e .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{e .} ==> Nr4c3 ≠ 0
Entering_level_W1_with_<Fact-44681>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.———.———.............
| 2     :   :   :   :
.   .———.............
|   | 2     :   :   :
.....   .———.........
:   :   | 2     :   :
.........   .———.....
:   :   :   | 3 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.775887, solve-time = 21.549219, total-time = 43.325106
nb-facts=<Fact-44707>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************





(solve
5 5
. . . . .
. . . 3 .
. . 2 . .
. 2 . . .
2 . . . .
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . 3 .
. . 2 . .
. 2 . . .
2 . . . .

start init-grid-structure 0.00469499999999812
start create-csp-variables
start create-labels 0.000863000000009606
start init-physical-csp-links 0.00471899999999437
start init-physical-non-csp-links 2.33705799999998
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.413244999999989
     start init-physical-BN-non-csp-links at local time 1.52467499999997
     start init-physical-BP-non-csp-links at local time 2.73073599999998
     end init-physical-BP-non-csp-links at local time 18.873002
end init-physical-non-csp-links 21.210108
start init-corner-B-c-values 21.215064
start init-outer-B-candidates 21.215174
start init-outer-I-candidates 21.215734
start init-H-candidates 21.21608
start init-V-candidates 21.216939
start init-P-candidates 21.217991
start init-inner-I-candidates 21.220606
start init-inner-N-and-B-candidates 21.221182
start solution 21.226883
entering BRT
2-in-sw-corner ==> Vr4c1 = 1, Hr6c2 = 1
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r5c1-symmetric-sw-corner ==> Pr5c2 ≠ ew, Pr5c2 ≠ se, Pr5c2 ≠ nw, Pr5c2 ≠ ns
r4c2-symmetric-sw-corner
r5c1-symmetric-ne-corner
2-in-r4c2-symmetric-sw-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr4c2 ≠ se, Pr4c2 ≠ nw, Pr4c2 ≠ o, Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ o
r3c3-symmetric-sw-corner
r4c2-symmetric-ne-corner
2-in-r3c3-symmetric-sw-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r2c4-symmetric-sw-corner
r3c3-symmetric-ne-corner
3-in-r2c4-symmetric-sw-corner ==> Vr2c4 = 1, Hr3c4 = 1, Pr2c5 ≠ sw, Pr2c5 ≠ ne, Pr2c5 ≠ o
r2c4-closed-sw-corner ==> Hr3c3 = 0, Vr3c4 = 0, Pr3c4 = ne
2-in-r3c3-open-ne-corner ==> Hr4c3 = 1, Vr3c3 = 1, Hr4c2 = 0, Vr4c3 = 0, Pr4c3 = ne, Br3c3 = sw
2-in-r4c2-open-ne-corner ==> Hr5c2 = 1, Vr4c2 = 1, Hr5c1 = 0, Vr5c2 = 0, Pr5c2 = ne, Br4c2 = sw
2-in-r5c1-open-ne-corner ==> Hr6c1 = 1, Vr5c1 = 1, Pr6c1 = ne, Br5c1 = sw
P-single: Pr5c1 = ns
P-single: Pr6c2 = ew
B-single: Br5c0 = e
B-single: Br4c0 = e
B-single: Br6c2 = n
B-single: Br6c1 = n
Starting_init_links_with_<Fact-27708>
596 candidates, 1780 csp-links and 6666 links. Density = 3.75951722971068%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-44604>
whip[1]: Pr6c3{nw .} ==> Br5c3 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c1{ns .} ==> Br3c1 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ se, nes, esw
whip[1]: Pr2c4{ns .} ==> Br1c4 ≠ sw, swn, esw
whip[1]: Pr2c5{ns .} ==> Br1c5 ≠ ne, o, sw
whip[1]: Pr3c3{ns .} ==> Br2c2 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ sw, swn, esw
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ nw, wne, swn
whip[1]: Pr4c2{ns .} ==> Br3c1 ≠ w, nes, se, nw
whip[1]: Pr4c4{ew .} ==> Br4c4 ≠ nw, s, e, o, wne, swn, se
whip[1]: Pr5c3{ew .} ==> Br5c3 ≠ nw, s, wne, se
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br1c5{nes .} ==> Nr1c5 ≠ 2, 0
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br5c3{nes .} ==> Nr5c3 ≠ 0
whip[1]: Br2c3{e .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{e .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{n .} ==> Nr3c4 ≠ 0
whip[1]: Br4c1{ew .} ==> Nr4c1 ≠ 0, 1
whip[1]: Br4c3{n .} ==> Nr4c3 ≠ 0
whip[1]: Br5c2{ns .} ==> Nr5c2 ≠ 0, 1
Entering_level_W1_with_<Fact-44649>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   | 3 :   :
.........   .———.....
:   :   | 2     :   :
.....   .———.........
|   | 2     :   :   :
.   .———.............
| 2     :   :   :   :
.———.———.............

init-time = 21.226883, solve-time = 21.949161, total-time = 43.176044
nb-facts=<Fact-44675>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



(solve
5 5
. . . . 2
. . . 2 .
. . 2 . .
. 3 . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . 2
. . . 2 .
. . 2 . .
. 3 . . .
. . . . .

start init-grid-structure 0.00453999999999155
start create-csp-variables
start create-labels 0.000866000000002032
start init-physical-csp-links 0.00474399999998809
start init-physical-non-csp-links 2.375933
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.476754999999997
     start init-physical-BN-non-csp-links at local time 1.70114999999998
     start init-physical-BP-non-csp-links at local time 3.03622199999998
     end init-physical-BP-non-csp-links at local time 19.444375
end init-physical-non-csp-links 21.820359
start init-corner-B-c-values 21.825152
start init-outer-B-candidates 21.825223
start init-outer-I-candidates 21.825671
start init-H-candidates 21.825976
start init-V-candidates 21.826665
start init-P-candidates 21.827477
start init-inner-I-candidates 21.829561
start init-inner-N-and-B-candidates 21.830023
start solution 21.834949
entering BRT
2-in-ne-corner ==> Vr2c6 = 1, Hr1c4 = 1
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r1c5-symmetric-ne-corner ==> Pr2c5 ≠ ew, Pr2c5 ≠ se, Pr2c5 ≠ nw, Pr2c5 ≠ ns
r1c5-symmetric-sw-corner
r2c4-symmetric-ne-corner
2-in-r2c4-symmetric-ne-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ ns, Pr2c4 ≠ se, Pr2c4 ≠ nw, Pr2c4 ≠ o, Pr3c5 ≠ se, Pr3c5 ≠ nw, Pr3c5 ≠ o
r2c4-symmetric-sw-corner
r3c3-symmetric-ne-corner
2-in-r3c3-symmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-symmetric-sw-corner
r4c2-symmetric-ne-corner
3-in-r4c2-symmetric-ne-corner ==> Vr4c3 = 1, Hr4c2 = 1, Pr5c2 ≠ sw, Pr5c2 ≠ ne, Pr5c2 ≠ o
r4c2-closed-ne-corner ==> Hr4c3 = 0, Vr3c3 = 0, Pr4c3 = sw
2-in-r3c3-open-sw-corner ==> Hr3c3 = 1, Vr3c4 = 1, Hr3c4 = 0, Vr2c4 = 0, Pr3c4 = sw, Br3c3 = ne
2-in-r2c4-open-sw-corner ==> Hr2c4 = 1, Vr2c5 = 1, Hr2c5 = 0, Vr1c5 = 0, Pr2c5 = sw, Br2c4 = ne
2-in-r1c5-open-sw-corner ==> Hr1c5 = 1, Vr1c6 = 1, Pr1c6 = sw, Br1c5 = ne
P-single: Pr2c6 = ns
P-single: Pr1c5 = ew
B-single: Br2c6 = w
B-single: Br1c6 = w
B-single: Br0c5 = s
B-single: Br0c4 = s
Starting_init_links_with_<Fact-27708>
596 candidates, 1780 csp-links and 6682 links. Density = 3.76854097343635%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-44636>
whip[1]: Pr1c4{se .} ==> Br1c3 ≠ ne, w, s, o, nes, wne, sw
whip[1]: Pr3c6{ns .} ==> Br3c5 ≠ s, o, nes, wne, sw, ne, w
whip[1]: Pr2c4{ne .} ==> Br1c3 ≠ nw, n, esw, se
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr3c5{ne .} ==> Br3c5 ≠ e, swn, se, nw
whip[1]: Pr4c2{ne .} ==> Br3c1 ≠ se, nes, esw
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ ne, nes, wne
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ e, o, wne, swn, se, nw, s
whip[1]: Pr5c2{ns .} ==> Br5c1 ≠ ne, o, sw
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ ne, nes, wne
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ nw, wne, swn
whip[1]: Br5c1{swn .} ==> Nr5c1 ≠ 2, 0
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br3c5{esw .} ==> Nr3c5 ≠ 0
whip[1]: Br1c3{swn .} ==> Nr1c3 ≠ 0
whip[1]: Br1c4{ns .} ==> Nr1c4 ≠ 0, 1
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 0
whip[1]: Br2c5{ew .} ==> Nr2c5 ≠ 0, 1
whip[1]: Br3c2{s .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{w .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{w .} ==> Nr4c3 ≠ 0
Entering_level_W1_with_<Fact-44681>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.............———.———.
:   :   :   :     2 |
.............———.   .
:   :   :     2 |   |
.........———.   .....
:   :     2 |   :   :
.....———.   .........
:   : 3 |   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 21.834949, solve-time = 21.78335, total-time = 43.618299
nb-facts=<Fact-44707>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




