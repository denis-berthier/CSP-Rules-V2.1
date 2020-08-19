
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-2-3-IN-CORNER
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

DIAGONAL 2-3 IN CORNERS, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



(solve 
5 5  
. 3 . . . 
2 . . . .
. . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . . .
2 . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00337815284729004
start create-csp-variables
start create-labels 0.000420808792114258
start init-physical-csp-links 0.00254201889038086
start init-physical-non-csp-links 0.860520839691162
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.183676958084106
     start init-physical-BN-non-csp-links at local time 0.742205142974854
     start init-physical-BP-non-csp-links at local time 1.40996313095093
     end init-physical-BP-non-csp-links at local time 10.0975680351257
end init-physical-non-csp-links 10.9581270217896
start init-corner-B-c-values 10.9617261886597
start init-outer-B-candidates 10.9617750644684
start init-outer-I-candidates 10.9621210098267
start init-H-candidates 10.9622900485992
start init-V-candidates 10.9634799957275
start init-P-candidates 10.9648151397705
start init-inner-I-candidates 10.9663381576538
start init-inner-N-and-B-candidates 10.966833114624
start solution 10.9709010124207
entering BRT
diagonal-2-3-in-nw-corner ==> Vr1c3 = 0
803 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   : 3 |   :   :   :
.....................
: 2 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.97s, solve-time = 0.87s, total-time = 11.84s
nb-facts=<Fact-27658>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve 
5 5  
. 3 . 3 . 
2 . . . 2
. . . . .
2 . . . 2
. 3 . 3 .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 .
2 . . . 2
. . . . .
2 . . . 2
. 3 . 3 .

start init-grid-structure 0.00368309020996094
start create-csp-variables
start create-labels 0.000447988510131836
start init-physical-csp-links 0.00268006324768066
start init-physical-non-csp-links 0.816131114959717
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.191550970077515
     start init-physical-BN-non-csp-links at local time 0.740200042724609
     start init-physical-BP-non-csp-links at local time 1.36706304550171
     end init-physical-BP-non-csp-links at local time 10.5629179477692
end init-physical-non-csp-links 11.3790969848633
start init-corner-B-c-values 11.383052110672
start init-outer-B-candidates 11.3831000328064
start init-outer-I-candidates 11.3834891319275
start init-H-candidates 11.3836970329285
start init-V-candidates 11.3845491409302
start init-P-candidates 11.3855149745941
start init-inner-I-candidates 11.3869061470032
start init-inner-N-and-B-candidates 11.3872849941254
start solution 11.3901422023773
entering BRT
diagonal-2-3-in-nw-corner ==> Vr1c3 = 0
diagonal-2-3-in-ne-corner ==> Vr1c4 = 0
diagonal-2-3-in-sw-corner ==> Vr5c3 = 0
diagonal-2-3-in-se-corner ==> Vr5c4 = 0
716 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 291 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   : 3 |   | 3 :   :
.....................
: 2 :   :   :   : 2 :
.....................
:   :   :   :   :   :
.....................
: 2 :   :   :   : 2 :
.....................
:   : 3 |   | 3 :   :
.....................

init-time = 11.39s, solve-time = 0.88s, total-time = 12.27s
nb-facts=<Fact-27598>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(solve 
5 5  
. 2 . 2 . 
3 . . . 3
. . . . .
3 . . . 3
. 2 . 2 .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . 2 .
3 . . . 3
. . . . .
3 . . . 3
. 2 . 2 .

start init-grid-structure 0.00328683853149414
start create-csp-variables
start create-labels 0.00044703483581543
start init-physical-csp-links 0.00281500816345215
start init-physical-non-csp-links 0.881540060043335
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.195157051086426
     start init-physical-BN-non-csp-links at local time 0.76637601852417
     start init-physical-BP-non-csp-links at local time 1.41256403923035
     end init-physical-BP-non-csp-links at local time 10.3980841636658
end init-physical-non-csp-links 11.2796709537506
start init-corner-B-c-values 11.2831628322601
start init-outer-B-candidates 11.2832078933716
start init-outer-I-candidates 11.2835760116577
start init-H-candidates 11.2837648391724
start init-V-candidates 11.2846310138702
start init-P-candidates 11.2853698730469
start init-inner-I-candidates 11.2867858409882
start init-inner-N-and-B-candidates 11.2871508598328
start solution 11.2899680137634
entering BRT
diagonal-3-2-in-nw-corner ==> Hr3c1 = 0
diagonal-3-2-in-ne-corner ==> Hr3c5 = 0
diagonal-3-2-in-sw-corner ==> Hr4c1 = 0
diagonal-3-2-in-se-corner ==> Hr4c5 = 0
716 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 291 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   : 2 :   : 2 :   :
.....................
: 3 :   :   :   : 3 :
.———.............———.
:   :   :   :   :   :
.———.............———.
: 3 :   :   :   : 3 :
.....................
:   : 2 :   : 2 :   :
.....................

init-time = 11.29s, solve-time = 0.88s, total-time = 12.17s
nb-facts=<Fact-27598>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



