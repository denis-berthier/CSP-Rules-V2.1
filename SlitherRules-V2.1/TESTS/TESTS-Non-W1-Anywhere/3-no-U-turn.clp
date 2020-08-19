
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 3-NO-U-TURN
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
        (value-row-col-to-H-label 1 4 4)
        (value-row-col-to-V-label 1 4 4)
))

(solve 
5 5 
. . . . .
. . . . .
. 3 . . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.0036461353302002
start create-csp-variables
start create-labels 0.000427007675170898
start init-physical-csp-links 0.00325894355773926
start init-physical-non-csp-links 0.923235893249512
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.229150056838989
     start init-physical-BN-non-csp-links at local time 0.834315061569214
     start init-physical-BP-non-csp-links at local time 1.55034303665161
     end init-physical-BP-non-csp-links at local time 9.79885005950928
end init-physical-non-csp-links 10.7221238613129
start init-corner-B-c-values 10.7260210514069
start init-outer-B-candidates 10.7260642051697
start init-outer-I-candidates 10.7264060974121
start init-H-candidates 10.7265901565552
start init-V-candidates 10.7274332046509
start init-P-candidates 10.7281701564789
start init-inner-I-candidates 10.7297501564026
start init-inner-N-and-B-candidates 10.7301411628723
start solution 10.7335040569305
Simulated elimination of 1344
Simulated elimination of 1324
Simulated elimination of 1244
Simulated elimination of 1234
entering BRT
H-single: Hr4c4 = 0
H-single: Hr3c4 = 0
V-single: Vr4c4 = 0
V-single: Vr2c4 = 0
3-in-r3c2-no-U-turn-from-east ==> Vr3c4 = O, Hr4c3 = O, Hr3c3 = O
810 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........   .   .....
:   : 3 :       :   :
.........   .   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.73s, solve-time = 0.9s, total-time = 11.63s
nb-facts=<Fact-27663>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







west:

(bind ?*simulated-eliminations*
    (create$
        (value-row-col-to-H-label 1 3 2)
        (value-row-col-to-V-label 1 2 3)
        (value-row-col-to-H-label 1 4 2)
        (value-row-col-to-V-label 1 4 3)
))

(solve 
5 5 
. . . . .
. . . . .
. . . 3 .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . 3 .
. . . . .
. . . . .

start init-grid-structure 0.00339603424072266
start create-csp-variables
start create-labels 0.000410795211791992
start init-physical-csp-links 0.00287985801696777
start init-physical-non-csp-links 0.849679946899414
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.188851118087769
     start init-physical-BN-non-csp-links at local time 0.76648211479187
     start init-physical-BP-non-csp-links at local time 1.41291499137878
     end init-physical-BP-non-csp-links at local time 9.42126893997192
end init-physical-non-csp-links 10.2709980010986
start init-corner-B-c-values 10.2745981216431
start init-outer-B-candidates 10.2746391296387
start init-outer-I-candidates 10.275120973587
start init-H-candidates 10.2753009796143
start init-V-candidates 10.2761480808258
start init-P-candidates 10.27689909935
start init-inner-I-candidates 10.2782680988312
start init-inner-N-and-B-candidates 10.2786779403687
start solution 10.2818739414215
Simulated elimination of 1343
Simulated elimination of 1323
Simulated elimination of 1242
Simulated elimination of 1232
entering BRT
H-single: Hr4c2 = 0
H-single: Hr3c2 = 0
V-single: Vr4c3 = 0
V-single: Vr2c3 = 0
3-in-r3c4-no-U-turn-from-west ==> Vr3c3 = O, Hr4c3 = O, Hr3c3 = O
810 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .   .........
:   :       : 3 :   :
.....   .   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.28s, solve-time = 0.9s, total-time = 11.18s
nb-facts=<Fact-27663>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





south:


(bind ?*simulated-eliminations*
    (create$
        (value-row-col-to-V-label 1 4 3)
        (value-row-col-to-H-label 1 4 2)
        (value-row-col-to-V-label 1 4 4)
        (value-row-col-to-H-label 1 4 4)
))


(solve 
5 5 
. . . . .
. . 3 . .
. . . . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00274109840393066
start create-csp-variables
start create-labels 0.000463962554931641
start init-physical-csp-links 0.00271201133728027
start init-physical-non-csp-links 0.945828914642334
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.224647045135498
     start init-physical-BN-non-csp-links at local time 0.83176589012146
     start init-physical-BP-non-csp-links at local time 1.53551602363586
     end init-physical-BP-non-csp-links at local time 10.6381008625031
end init-physical-non-csp-links 11.5839600563049
start init-corner-B-c-values 11.5869431495667
start init-outer-B-candidates 11.5869851112366
start init-outer-I-candidates 11.5872991085052
start init-H-candidates 11.5874600410461
start init-V-candidates 11.5882611274719
start init-P-candidates 11.5889761447906
start init-inner-I-candidates 11.5905029773712
start init-inner-N-and-B-candidates 11.590882062912
start solution 11.5945909023285
Simulated elimination of 1344
Simulated elimination of 1343
Simulated elimination of 1244
Simulated elimination of 1242
entering BRT
H-single: Hr4c4 = 0
H-single: Hr4c2 = 0
V-single: Vr4c4 = 0
V-single: Vr4c3 = 0
3-in-r2c3-no-U-turn-from-south ==> Vr3c4 = O, Vr3c3 = O, Hr4c3 = O
810 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   : 3 :   :   :
.....................
:   :           :   :
.....   .   .   .....
:   :           :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.59s, solve-time = 1.02s, total-time = 12.62s
nb-facts=<Fact-27663>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







north:

(bind ?*simulated-eliminations*
    (create$
        (value-row-col-to-V-label 1 2 3)
        (value-row-col-to-H-label 1 3 2)
        (value-row-col-to-V-label 1 2 4)
        (value-row-col-to-H-label 1 3 4)
))

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . 3 . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . 3 . .
. . . . .

start init-grid-structure 0.00377392768859863
start create-csp-variables
start create-labels 0.000492095947265625
start init-physical-csp-links 0.00320005416870117
start init-physical-non-csp-links 0.909348964691162
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.197093963623047
     start init-physical-BN-non-csp-links at local time 0.779147863388062
     start init-physical-BP-non-csp-links at local time 1.46252584457397
     end init-physical-BP-non-csp-links at local time 10.4459519386292
end init-physical-non-csp-links 11.3553380966187
start init-corner-B-c-values 11.3593339920044
start init-outer-B-candidates 11.3593828678131
start init-outer-I-candidates 11.3597459793091
start init-H-candidates 11.3599278926849
start init-V-candidates 11.360878944397
start init-P-candidates 11.3616650104523
start init-inner-I-candidates 11.3632328510284
start init-inner-N-and-B-candidates 11.3638029098511
start solution 11.3672230243683
Simulated elimination of 1324
Simulated elimination of 1323
Simulated elimination of 1234
Simulated elimination of 1232
entering BRT
H-single: Hr3c4 = 0
H-single: Hr3c2 = 0
V-single: Vr2c4 = 0
V-single: Vr2c3 = 0
3-in-r4c3-no-U-turn-from-north ==> Vr3c4 = O, Vr3c3 = O, Hr3c3 = O
810 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :           :   :
.....   .   .   .....
:   :           :   :
.....................
:   :   : 3 :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.37s, solve-time = 1.01s, total-time = 12.38s
nb-facts=<Fact-27663>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


