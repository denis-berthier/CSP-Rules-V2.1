
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ODD DIAGONAL-OF-2s-IN-CORNER
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

ODD DIAGONAL OF 2s IN CORNERS, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------





(solve 
5 5  
. . 2 . . 
. 2 . . .
2 . . . .
. . . . .
. . . . .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 . .
. 2 . . .
2 . . . .
. . . . .
. . . . .

start init-grid-structure 0.00271892547607422
start create-csp-variables
start create-labels 0.000602960586547852
start init-physical-csp-links 0.00348782539367676
start init-physical-non-csp-links 0.822142839431763
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.184622049331665
     start init-physical-BN-non-csp-links at local time 0.753893136978149
     start init-physical-BP-non-csp-links at local time 1.43912100791931
     end init-physical-BP-non-csp-links at local time 10.5318460464478
end init-physical-non-csp-links 11.3540389537811
start init-corner-B-c-values 11.3570470809937
start init-outer-B-candidates 11.3570919036865
start init-outer-I-candidates 11.3575360774994
start init-H-candidates 11.3577020168304
start init-V-candidates 11.3584949970245
start init-P-candidates 11.3592429161072
start init-inner-I-candidates 11.3607099056244
start init-inner-N-and-B-candidates 11.3610849380493
start solution 11.3647019863129
entering BRT
diagonal-of-three-2s-in-nw-corner ==> Vr4c1 = 1, Hr1c4 = 1
791 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.............———.....
:   :   : 2 :   :   :
.....................
:   : 2 :   :   :   :
.....................
: 2 :   :   :   :   :
.....................
|   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.36s, solve-time = 0.87s, total-time = 12.24s
nb-facts=<Fact-27648>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve 
13 13
. . . . 2 . . . 2 . . . .  
. . . 2 . . . . . 2 . . .
. . 2 . . . . . . . 2 . .
. 2 . . . . . . . . . 2 .
2 . . . . . . . . . . . 2
. . . . . . . . . . . . .
. . . . . . . . . . . . .
. . . . . . . . . . . . .
2 . . . . . . . . . . . 2
. 2 . . . . . . . . . 2 .
. . 2 . . . . . . . 2 . .
. . . 2 . . . . . 2 . . .
. . . . 2 . . . 2 . . . .  
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . 2 . . . 2 . . . .
. . . 2 . . . . . 2 . . .
. . 2 . . . . . . . 2 . .
. 2 . . . . . . . . . 2 .
2 . . . . . . . . . . . 2
. . . . . . . . . . . . .
. . . . . . . . . . . . .
. . . . . . . . . . . . .
2 . . . . . . . . . . . 2
. 2 . . . . . . . . . 2 .
. . 2 . . . . . . . 2 . .
. . . 2 . . . . . 2 . . .
. . . . 2 . . . 2 . . . .

start init-grid-structure 0.00265002250671387
start create-csp-variables
start create-labels 0.00337314605712891
start init-physical-csp-links 0.0206069946289062
start init-physical-non-csp-links 29.7310709953308
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 8.83798217773438
     start init-physical-BN-non-csp-links at local time 35.0501461029053
     start init-physical-BP-non-csp-links at local time 80.9790651798248
     end init-physical-BP-non-csp-links at local time 781.743920087814
end init-physical-non-csp-links 811.475036144257
start init-corner-B-c-values 811.478060007095
start init-outer-B-candidates 811.478142023087
start init-outer-I-candidates 811.47914814949
start init-H-candidates 811.479593038559
start init-V-candidates 811.48504114151
start init-P-candidates 811.490299224854
start init-inner-I-candidates 811.501477003098
start init-inner-N-and-B-candidates 811.504473209381
start solution 811.534135818481
entering BRT
diagonal-of-five-2s-in-nw-corner ==> Vr6c1 = 1, Hr1c6 = 1
diagonal-of-five-2s-in-ne-corner ==> Vr6c14 = 1, Hr1c8 = 1
diagonal-of-five-2s-in-sw-corner ==> Vr8c1 = 1, Hr14c6 = 1
diagonal-of-five-2s-in-se-corner ==> Vr8c14 = 1, Hr14c8 = 1
5276 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 1679 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................———.....———.....................
:   :   :   :   : 2 :   :   :   : 2 :   :   :   :   :
.....................................................
:   :   :   : 2 :   :   :   :   :   : 2 :   :   :   :
.....................................................
:   :   : 2 :   :   :   :   :   :   :   : 2 :   :   :
.....................................................
:   : 2 :   :   :   :   :   :   :   :   :   : 2 :   :
.....................................................
: 2 :   :   :   :   :   :   :   :   :   :   :   : 2 :
.....................................................
|   :   :   :   :   :   :   :   :   :   :   :   :   |
.....................................................
:   :   :   :   :   :   :   :   :   :   :   :   :   :
.....................................................
|   :   :   :   :   :   :   :   :   :   :   :   :   |
.....................................................
: 2 :   :   :   :   :   :   :   :   :   :   :   : 2 :
.....................................................
:   : 2 :   :   :   :   :   :   :   :   :   : 2 :   :
.....................................................
:   :   : 2 :   :   :   :   :   :   :   : 2 :   :   :
.....................................................
:   :   :   : 2 :   :   :   :   :   : 2 :   :   :   :
.....................................................
:   :   :   :   : 2 :   :   :   : 2 :   :   :   :   :
.....................———.....———.....................

init-time = 13m 31.53s, solve-time = 1m 16.92s, total-time = 14m 48.45s
nb-facts=<Fact-152190>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







