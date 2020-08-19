
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-1+0s
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

DIAGONAL-3-1+0s REDUCIBLE TO W1:

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
se:
(solve
5 5
. . . . .
. 3 . . .
. . 1 0 .
. . 0 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . 1 0 .
. . 0 . .
. . . . .

start init-grid-structure 3.91006469726562e-05
start create-csp-variables
start create-labels 0.000814199447631836
start init-physical-csp-links 0.00460910797119141
start init-physical-non-csp-links 1.03265714645386
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.189996957778931
     start init-physical-BN-non-csp-links at local time 0.792371034622192
     start init-physical-BP-non-csp-links at local time 1.4761700630188
     end init-physical-BP-non-csp-links at local time 10.2014820575714
end init-physical-non-csp-links 11.2341771125793
start init-corner-B-c-values 11.234482049942
start init-outer-B-candidates 11.2345259189606
start init-outer-I-candidates 11.2348999977112
start init-H-candidates 11.2351078987122
start init-V-candidates 11.2359941005707
start init-P-candidates 11.236820936203
start init-inner-I-candidates 11.2383589744568
start init-inner-N-and-B-candidates 11.2387890815735
start solution 11.2420570850372
entering BRT
w[0]-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[0]-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[1]-diagonal-3-1-in-{r2c2...r3c3}+0s ==> Vr2c2 = 1, Hr2c2 = 1
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
P-single: Pr4c4 = o
713 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 292 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.............   .....
:   :   : 1   0     :
.........   .   .....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.24s, solve-time = 1.1s, total-time = 12.34s
nb-facts=<Fact-27656>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



nw:
(solve
5 5
. . . . .
. . 0 . .
. 0 1 . .
. . . 3 .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 0 . .
. 0 1 . .
. . . 3 .
. . . . .

start init-grid-structure 0.00233197212219238
start create-csp-variables
start create-labels 0.000441074371337891
start init-physical-csp-links 0.00272703170776367
start init-physical-non-csp-links 0.837925910949707
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.211451053619385
     start init-physical-BN-non-csp-links at local time 0.794919013977051
     start init-physical-BP-non-csp-links at local time 1.44291114807129
     end init-physical-BP-non-csp-links at local time 10.3307120800018
end init-physical-non-csp-links 11.168673992157
start init-corner-B-c-values 11.1712119579315
start init-outer-B-candidates 11.1712579727173
start init-outer-I-candidates 11.1716430187225
start init-H-candidates 11.1718418598175
start init-V-candidates 11.1726868152618
start init-P-candidates 11.1734030246735
start init-inner-I-candidates 11.174742937088
start init-inner-N-and-B-candidates 11.1751220226288
start solution 11.1782929897308
entering BRT
w[0]-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[0]-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-diagonal-3-1-in-{r4c4...r3c3}-open-end ==> Vr4c5 = 1, Hr5c4 = 1
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
P-single: Pr3c3 = o
713 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 292 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....   .   .........
:     0   1 :   :   :
.....   .............
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 11.18s, solve-time = 1.09s, total-time = 12.27s
nb-facts=<Fact-27654>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


sw:
(solve
5 5
. . . . .
. . . 3 .
. 0 1 . .
. . 0 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. 0 1 . .
. . 0 . .
. . . . .

start init-grid-structure 0.00240302085876465
start create-csp-variables
start create-labels 0.000442028045654297
start init-physical-csp-links 0.0028841495513916
start init-physical-non-csp-links 0.886520147323608
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.207359075546265
     start init-physical-BN-non-csp-links at local time 0.811943054199219
     start init-physical-BP-non-csp-links at local time 1.51411294937134
     end init-physical-BP-non-csp-links at local time 10.4126110076904
end init-physical-non-csp-links 11.2991690635681
start init-corner-B-c-values 11.3017899990082
start init-outer-B-candidates 11.3018310070038
start init-outer-I-candidates 11.3021810054779
start init-H-candidates 11.3023719787598
start init-V-candidates 11.3032200336456
start init-P-candidates 11.3039751052856
start init-inner-I-candidates 11.3055291175842
start init-inner-N-and-B-candidates 11.3059089183807
start solution 11.3088619709015
entering BRT
w[0]-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[0]-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-diagonal-3-1-in-{r2c4...r3c3}-open-end ==> Vr2c5 = 1, Hr2c4 = 1
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
P-single: Pr4c3 = o
713 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 292 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....   .............
:     0   1 :   :   :
.....   .   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.31s, solve-time = 1.25s, total-time = 12.56s
nb-facts=<Fact-27654>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



ne:
(solve 5 5
. . . . .
. . 0 . .
 . . 1 0 .
 . 3 . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 0 . .
. . 1 0 .
. 3 . . .
. . . . .

start init-grid-structure 0.00224900245666504
start create-csp-variables
start create-labels 0.000432014465332031
start init-physical-csp-links 0.00258183479309082
start init-physical-non-csp-links 0.874038934707642
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20888614654541
     start init-physical-BN-non-csp-links at local time 0.768612146377563
     start init-physical-BP-non-csp-links at local time 1.4618399143219
     end init-physical-BP-non-csp-links at local time 9.89817500114441
end init-physical-non-csp-links 10.7722518444061
start init-corner-B-c-values 10.7747240066528
start init-outer-B-candidates 10.7747659683228
start init-outer-I-candidates 10.7751219272614
start init-H-candidates 10.7753138542175
start init-V-candidates 10.7760939598083
start init-P-candidates 10.7768228054047
start init-inner-I-candidates 10.7782528400421
start init-inner-N-and-B-candidates 10.778636932373
start solution 10.7815518379211
entering BRT
w[0]-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[0]-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-diagonal-3-1-in-{r4c2...r3c3}-open-end ==> Vr4c2 = 1, Hr5c2 = 1
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
P-single: Pr3c4 = o
713 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 292 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .   .....
:   :   : 1   0     :
.............   .....
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 10.78s, solve-time = 1.07s, total-time = 11.85s
nb-facts=<Fact-27654>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
