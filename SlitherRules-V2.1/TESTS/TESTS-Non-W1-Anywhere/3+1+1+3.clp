
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 3+1+1+3
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

3+1+1+3, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(solve 
5 5
. . . . .
. 3 . . .
. 1 1 . .
. . 3 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. 1 1 . .
. . 3 . .
. . . . .

start init-grid-structure 0.00402998924255371
start create-csp-variables
start create-labels 0.000431060791015625
start init-physical-csp-links 0.00261116027832031
start init-physical-non-csp-links 0.884658098220825
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.196009159088135
     start init-physical-BN-non-csp-links at local time 0.799523115158081
     start init-physical-BP-non-csp-links at local time 1.50621199607849
     end init-physical-BP-non-csp-links at local time 10.5835871696472
end init-physical-non-csp-links 11.4682879447937
start init-corner-B-c-values 11.4725458621979
start init-outer-B-candidates 11.4725859165192
start init-outer-I-candidates 11.4729070663452
start init-H-candidates 11.4731040000916
start init-V-candidates 11.4738750457764
start init-P-candidates 11.4748568534851
start init-inner-I-candidates 11.4762358665466
start init-inner-N-and-B-candidates 11.4766159057617
start solution 11.4797358512878
entering BRT
3+1+1+3-in-r2c2+r3{c2 c3}+r4c3 ==> Vr4c3 = 1, Vr2c3 = 1, Vr3c4 = 0, Vr3c2 = 0
768 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....................
:     1 : 1     :   :
.....................
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.48s, solve-time = 0.87s, total-time = 12.35s
nb-facts=<Fact-27630>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
***********************************************************************************************





(solve 
5 5
. . . . .
. 3 1 . .
. . 1 3 .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 1 . .
. . 1 3 .
. . . . .
. . . . .

start init-grid-structure 0.00228691101074219
start create-csp-variables
start create-labels 0.000414848327636719
start init-physical-csp-links 0.00261306762695312
start init-physical-non-csp-links 0.926836013793945
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.219053983688354
     start init-physical-BN-non-csp-links at local time 0.801367044448853
     start init-physical-BP-non-csp-links at local time 1.50683403015137
     end init-physical-BP-non-csp-links at local time 10.6066670417786
end init-physical-non-csp-links 11.5335400104523
start init-corner-B-c-values 11.5360379219055
start init-outer-B-candidates 11.5360789299011
start init-outer-I-candidates 11.5364120006561
start init-H-candidates 11.536593914032
start init-V-candidates 11.5373728275299
start init-P-candidates 11.5383198261261
start init-inner-I-candidates 11.5396888256073
start init-inner-N-and-B-candidates 11.5400760173798
start solution 11.5431199073792
entering BRT
3+1+1+3-in-r2c2+c3{r2 r3}+r3c4 ==> Hr3c4 = 1, Hr3c2 = 1, Hr4c3 = 0, Hr2c3 = 0
768 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   : 3 : 1 :   :   :
.....———.....———.....
:   :   : 1 : 3 :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.54s, solve-time = 0.9s, total-time = 12.44s
nb-facts=<Fact-27630>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
