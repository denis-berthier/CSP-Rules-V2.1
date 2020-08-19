
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-3-2+0
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

ADJACENT 3-2-0, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. . . . .
. . . . .
. 3 2 0 . 
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
. 3 2 0 .
. . . . .
. . . . .

start init-grid-structure 0.00371289253234863
start create-csp-variables
start create-labels 0.000470161437988281
start init-physical-csp-links 0.00290918350219727
start init-physical-non-csp-links 0.911221027374268
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.196253061294556
     start init-physical-BN-non-csp-links at local time 0.770067930221558
     start init-physical-BP-non-csp-links at local time 1.47294592857361
     end init-physical-BP-non-csp-links at local time 10.8988299369812
end init-physical-non-csp-links 11.8100860118866
start init-corner-B-c-values 11.8140258789062
start init-outer-B-candidates 11.814092874527
start init-outer-I-candidates 11.8145008087158
start init-H-candidates 11.8147268295288
start init-V-candidates 11.8159399032593
start init-P-candidates 11.8169009685516
start init-inner-I-candidates 11.818699836731
start init-inner-N-and-B-candidates 11.8191888332367
start solution 11.8234708309174
entering BRT
w0-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
adjacent-3-2-0-in-r3{c2 c3 c4} ==> Vr3c2 = 1, Vr4c3 = 0, Vr2c3 = 0
754 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.............   .....
:   | 3 : 2   0     :
.............   .....
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.82s, solve-time = 1.05s, total-time = 12.88s
nb-facts=<Fact-27650>
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
. . . . .
. 0 2 3 . 
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
. 0 2 3 .
. . . . .
. . . . .

start init-grid-structure 0.0027930736541748
start create-csp-variables
start create-labels 0.000422000885009766
start init-physical-csp-links 0.002593994140625
start init-physical-non-csp-links 0.941680908203125
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.208929777145386
     start init-physical-BN-non-csp-links at local time 0.806663990020752
     start init-physical-BP-non-csp-links at local time 1.49512696266174
     end init-physical-BP-non-csp-links at local time 10.2997758388519
end init-physical-non-csp-links 11.2414929866791
start init-corner-B-c-values 11.244521856308
start init-outer-B-candidates 11.2445728778839
start init-outer-I-candidates 11.2449610233307
start init-H-candidates 11.2454919815063
start init-V-candidates 11.2463910579681
start init-P-candidates 11.2472059726715
start init-inner-I-candidates 11.2489418983459
start init-inner-N-and-B-candidates 11.249351978302
start solution 11.2526860237122
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
adjacent-3-2-0-in-r3{c4 c3 c2} ==> Vr3c5 = 1, Vr4c4 = 0, Vr2c4 = 0
754 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.....   .............
:     0   2 : 3 |   :
.....   .............
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.25s, solve-time = 1.09s, total-time = 12.34s
nb-facts=<Fact-27650>
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
. . 3 . .
. . 2 . . 
. . 0 . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 . .
. . 2 . .
. . 0 . .
. . . . .

start init-grid-structure 0.00313997268676758
start create-csp-variables
start create-labels 0.000402927398681641
start init-physical-csp-links 0.00261688232421875
start init-physical-non-csp-links 0.907785892486572
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.205157995223999
     start init-physical-BN-non-csp-links at local time 0.79326605796814
     start init-physical-BP-non-csp-links at local time 1.48637390136719
     end init-physical-BP-non-csp-links at local time 10.4950110912323
end init-physical-non-csp-links 11.4028298854828
start init-corner-B-c-values 11.4061720371246
start init-outer-B-candidates 11.4062309265137
start init-outer-I-candidates 11.4065639972687
start init-H-candidates 11.4067380428314
start init-V-candidates 11.4077100753784
start init-P-candidates 11.4089350700378
start init-inner-I-candidates 11.4105250835419
start init-inner-N-and-B-candidates 11.4109129905701
start solution 11.4142599105835
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
adjacent-3-2-0-in-c3{r2 r3 r4} ==> Hr2c3 = 1, Hr3c4 = 0, Hr3c2 = 0
754 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........———.........
:   :   : 3 :   :   :
.....   .....   .....
:   :   : 2 :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.41s, solve-time = 1.01s, total-time = 12.43s
nb-facts=<Fact-27650>
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
. . 0 . .
. . 2 . . 
. . 3 . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 0 . .
. . 2 . .
. . 3 . .
. . . . .

start init-grid-structure 0.00324106216430664
start create-csp-variables
start create-labels 0.000405073165893555
start init-physical-csp-links 0.00272607803344727
start init-physical-non-csp-links 0.97701096534729
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.207860946655273
     start init-physical-BN-non-csp-links at local time 0.809603929519653
     start init-physical-BP-non-csp-links at local time 1.54554200172424
     end init-physical-BP-non-csp-links at local time 10.5235710144043
end init-physical-non-csp-links 11.500627040863
start init-corner-B-c-values 11.5040609836578
start init-outer-B-candidates 11.5041029453278
start init-outer-I-candidates 11.5044651031494
start init-H-candidates 11.5046570301056
start init-V-candidates 11.5056419372559
start init-P-candidates 11.5064051151276
start init-inner-I-candidates 11.5077829360962
start init-inner-N-and-B-candidates 11.5081539154053
start solution 11.511344909668
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
adjacent-3-2-0-in-c3{r4 r3 r2} ==> Hr5c3 = 1, Hr4c4 = 0, Hr4c2 = 0
754 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   : 2 :   :   :
.....   .....   .....
:   :   : 3 :   :   :
.........———.........
:   :   :   :   :   :
.....................

init-time = 11.51s, solve-time = 0.92s, total-time = 12.43s
nb-facts=<Fact-27650>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
