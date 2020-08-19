
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-2-2+3-IN-CORNER
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

diagonal 2-2+3 IN A CORNER, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(solve
5 5
. 2 . . .
2 3 . . .
. . . . .
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . . .
2 3 . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00313687324523926
start create-csp-variables
start create-labels 0.000402927398681641
start init-physical-csp-links 0.00328397750854492
start init-physical-non-csp-links 0.963568925857544
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203470945358276
     start init-physical-BN-non-csp-links at local time 0.792923927307129
     start init-physical-BP-non-csp-links at local time 1.45389199256897
     end init-physical-BP-non-csp-links at local time 12.8600399494171
end init-physical-non-csp-links 13.8236479759216
start init-corner-B-c-values 13.8270258903503
start init-outer-B-candidates 13.8270699977875
start init-outer-I-candidates 13.8274199962616
start init-H-candidates 13.827586889267
start init-V-candidates 13.8288447856903
start init-P-candidates 13.8300428390503
start init-inner-I-candidates 13.8324987888336
start init-inner-N-and-B-candidates 13.8329298496246
start solution 13.8369529247284
entering BRT
diagonal-2-2+3-in-nw-corner ==> Vr3c1 = 1, Vr1c1 = 1, Hr1c3 = 1, Hr1c1 = 1
787 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.———.....———.........
|   : 2 :   :   :   :
.....................
: 2 : 3 :   :   :   :
.....................
|   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 13.84s, solve-time = 0.97s, total-time = 14.8s
nb-facts=<Fact-27658>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************















(solve 
7 7  
. 2 . . . 2 . 
2 3 . . . 3 2
. . . . . . .
. . . . . . .
. . . . . . .
2 3 . . . 3 2
. 2 . . . 2 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

CLIPS>

(solve
7 7
. 2 . . . 2 .
2 3 . . . 3 2
. . . . . . .
. . . . . . .
. . . . . . .
2 3 . . . 3 2
. 2 . . . 2 .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . . . 2 .
2 3 . . . 3 2
. . . . . . .
. . . . . . .
. . . . . . .
2 3 . . . 3 2
. 2 . . . 2 .

start init-grid-structure 0.00216388702392578
start create-csp-variables
start create-labels 0.000662088394165039
start init-physical-csp-links 0.00439000129699707
start init-physical-non-csp-links 2.97962307929993
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.678704023361206
     start init-physical-BN-non-csp-links at local time 2.70249795913696
     start init-physical-BP-non-csp-links at local time 5.26375198364258
     end init-physical-BP-non-csp-links at local time 38.1473560333252
end init-physical-non-csp-links 41.1270220279694
start init-corner-B-c-values 41.1294038295746
start init-outer-B-candidates 41.1294510364532
start init-outer-I-candidates 41.129930973053
start init-H-candidates 41.1301589012146
start init-V-candidates 41.1316409111023
start init-P-candidates 41.1329588890076
start init-inner-I-candidates 41.1354939937592
start init-inner-N-and-B-candidates 41.1362788677216
start solution 41.1422820091248
entering BRT
diagonal-2-2+3-in-nw-corner ==> Vr3c1 = 1, Vr1c1 = 1, Hr1c3 = 1, Hr1c1 = 1
diagonal-2-2+3-in-ne-corner ==> Vr3c8 = 1, Vr1c8 = 1, Hr1c7 = 1, Hr1c5 = 1
diagonal-2-2+3-in-sw-corner ==> Vr7c1 = 1, Vr5c1 = 1, Hr8c3 = 1, Hr8c1 = 1
diagonal-2-2+3-in-se-corner ==> Vr7c8 = 1, Vr5c8 = 1, Hr8c7 = 1, Hr8c5 = 1
1446 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 529 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.———.....———.....———.....———.
|   : 2 :   :   :   : 2 :   |
.............................
: 2 : 3 :   :   :   : 3 : 2 :
.............................
|   :   :   :   :   :   :   |
.............................
:   :   :   :   :   :   :   :
.............................
|   :   :   :   :   :   :   |
.............................
: 2 : 3 :   :   :   : 3 : 2 :
.............................
|   : 2 :   :   :   : 2 :   |
.———.....———.....———.....———.

init-time = 41.14s, solve-time = 5.44s, total-time = 46.59s
nb-facts=<Fact-49298>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
