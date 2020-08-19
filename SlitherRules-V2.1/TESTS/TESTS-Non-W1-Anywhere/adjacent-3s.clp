
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-3-3
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

ADJACENT-3s, NOT REDUCIBLE TO W1 OR ANY W[n]

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

adjacent 3s, NONE OF THESE ASSERTIONS IS REDUCIBLE TO W (EVEN THE 0 ASSERTIONS AFTER THE 1 ASSERTIONS)

(solve 
5 5 
. . . . .
. . . . .
. 3 3 . . 
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
. 3 3 . .
. . . . .
. . . . .

start init-grid-structure 0.00468301773071289
start create-csp-variables
start create-labels 0.000440120697021484
start init-physical-csp-links 0.00288105010986328
start init-physical-non-csp-links 0.843327045440674
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.192248106002808
     start init-physical-BN-non-csp-links at local time 0.710217952728271
     start init-physical-BP-non-csp-links at local time 1.23824095726013
     end init-physical-BP-non-csp-links at local time 8.96325206756592
end init-physical-non-csp-links 9.80662512779236
start init-corner-B-c-values 9.8115291595459
start init-outer-B-candidates 9.81157207489014
start init-outer-I-candidates 9.81193113327026
start init-H-candidates 9.81211018562317
start init-V-candidates 9.81305718421936
start init-P-candidates 9.81415605545044
start init-inner-I-candidates 9.81549906730652
start init-inner-N-and-B-candidates 9.81587314605713
start solution 9.81916403770447
entering BRT
adjacent-3s-in-r3{c2 c3} ==> Vr3c4 = 1, Vr3c3 = 1, Vr3c2 = 1, Vr4c3 = 0, Vr2c3 = 0
797 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....................
:   | 3 | 3 |   :   :
.....................
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 9.82s, solve-time = 0.96s, total-time = 10.78s
nb-facts=<Fact-27655>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


 
(solve 
5 5 
. . . . .
. 3 . . .
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
. 3 . . .
. 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.00313496589660645
start create-csp-variables
start create-labels 0.000422000885009766
start init-physical-csp-links 0.00267887115478516
start init-physical-non-csp-links 0.903430938720703
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.193732976913452
     start init-physical-BN-non-csp-links at local time 0.782423973083496
     start init-physical-BP-non-csp-links at local time 1.48417401313782
     end init-physical-BP-non-csp-links at local time 10.2914559841156
end init-physical-non-csp-links 11.1949219703674
start init-corner-B-c-values 11.1982619762421
start init-outer-B-candidates 11.198303937912
start init-outer-I-candidates 11.1986498832703
start init-H-candidates 11.1988379955292
start init-V-candidates 11.1996469497681
start init-P-candidates 11.2004110813141
start init-inner-I-candidates 11.2018439769745
start init-inner-N-and-B-candidates 11.2022180557251
start solution 11.2055671215057
entering BRT
adjacent-3s-in-c2{r2 r3} ==> Hr4c2 = 1, Hr3c2 = 1, Hr2c2 = 1, Hr3c3 = 0, Hr3c1 = 0
797 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....———.............
:   : 3 :   :   :   :
.   .———.   .........
:   : 3 :   :   :   :
.....———.............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.21s, solve-time = 0.9s, total-time = 12.11s
nb-facts=<Fact-27655>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

