
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-3-ON-EDGE
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

ADJACENT 1-3 ON EDGE, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(solve 
5 5 
. 1 3 . .
. . . . .
. . . . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 3 . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00244998931884766
start create-csp-variables
start create-labels 0.000453948974609375
start init-physical-csp-links 0.00324416160583496
start init-physical-non-csp-links 0.915214061737061
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.201456069946289
     start init-physical-BN-non-csp-links at local time 0.78870701789856
     start init-physical-BP-non-csp-links at local time 1.48759913444519
     end init-physical-BP-non-csp-links at local time 11.0579371452332
end init-physical-non-csp-links 11.9731919765472
start init-corner-B-c-values 11.9759128093719
start init-outer-B-candidates 11.9759588241577
start init-outer-I-candidates 11.9767518043518
start init-H-candidates 11.9769899845123
start init-V-candidates 11.9778809547424
start init-P-candidates 11.9786419868469
start init-inner-I-candidates 11.9804599285126
start init-inner-N-and-B-candidates 11.9808578491211
start solution 11.984668970108
entering BRT
w[1]-adjacent-1-3-on-edge-in-r1{c2 c3} ==> Vr1c2 = 0, Hr2c2 = 0, Hr1c3 = 1
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........———.........
:     1 : 3 :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.98s, solve-time = 0.94s, total-time = 12.92s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve
5 5
. 3 1 . .
. . . . .
. . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 1 . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00228190422058105
start create-csp-variables
start create-labels 0.000427961349487305
start init-physical-csp-links 0.00265407562255859
start init-physical-non-csp-links 0.889714956283569
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.19190788269043
     start init-physical-BN-non-csp-links at local time 0.771596908569336
     start init-physical-BP-non-csp-links at local time 1.49372887611389
     end init-physical-BP-non-csp-links at local time 10.8267657756805
end init-physical-non-csp-links 11.7165238857269
start init-corner-B-c-values 11.7190108299255
start init-outer-B-candidates 11.7190518379211
start init-outer-I-candidates 11.719398021698
start init-H-candidates 11.7195909023285
start init-V-candidates 11.7205100059509
start init-P-candidates 11.721254825592
start init-inner-I-candidates 11.7227220535278
start init-inner-N-and-B-candidates 11.7231500148773
start solution 11.7264540195465
entering BRT
w[1]-adjacent-1-3-on-edge-in-r1{c3 c2} ==> Vr1c4 = 0, Hr2c3 = 0, Hr1c2 = 1
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....———.............
:   : 3 : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.73s, solve-time = 0.93s, total-time = 12.66s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve
5 5
. . . . .
. . . . .
. . . . .
. . . . .
. 1 3 . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . . .
. 1 3 . .

start init-grid-structure 0.00264692306518555
start create-csp-variables
start create-labels 0.00041508674621582
start init-physical-csp-links 0.00332403182983398
start init-physical-non-csp-links 0.859400987625122
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.205960035324097
     start init-physical-BN-non-csp-links at local time 0.773948907852173
     start init-physical-BP-non-csp-links at local time 1.46886491775513
     end init-physical-BP-non-csp-links at local time 10.7023119926453
end init-physical-non-csp-links 11.5617520809174
start init-corner-B-c-values 11.5647070407867
start init-outer-B-candidates 11.5647439956665
start init-outer-I-candidates 11.5650689601898
start init-H-candidates 11.5652449131012
start init-V-candidates 11.5660450458527
start init-P-candidates 11.5670099258423
start init-inner-I-candidates 11.5683779716492
start init-inner-N-and-B-candidates 11.5687508583069
start solution 11.5718810558319
entering BRT
w[1]-adjacent-1-3-on-edge-in-r5{c2 c3} ==> Vr5c2 = 0, Hr6c3 = 1, Hr5c2 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     1 : 3 :   :   :
.........———.........

init-time = 11.57s, solve-time = 0.87s, total-time = 12.44s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve
5 5
. . . . .
. . . . .
. . . . .
. . . . .
. 3 1 . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . . .
. 3 1 . .

start init-grid-structure 0.00239896774291992
start create-csp-variables
start create-labels 0.000452995300292969
start init-physical-csp-links 0.00272202491760254
start init-physical-non-csp-links 0.934515953063965
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.216426134109497
     start init-physical-BN-non-csp-links at local time 0.821573972702026
     start init-physical-BP-non-csp-links at local time 1.54572200775146
     end init-physical-BP-non-csp-links at local time 10.9205589294434
end init-physical-non-csp-links 11.8551089763641
start init-corner-B-c-values 11.8577220439911
start init-outer-B-candidates 11.8577611446381
start init-outer-I-candidates 11.8581261634827
start init-H-candidates 11.8582949638367
start init-V-candidates 11.8590879440308
start init-P-candidates 11.8600280284882
start init-inner-I-candidates 11.8614130020142
start init-inner-N-and-B-candidates 11.8618149757385
start solution 11.8650989532471
entering BRT
w[1]-adjacent-1-3-on-edge-in-r5{c3 c2} ==> Vr5c4 = 0, Hr6c2 = 1, Hr5c3 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   : 3 : 1     :   :
.....———.............

init-time = 11.87s, solve-time = 0.9s, total-time = 12.77s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(solve
5 5
. . . . .
1 . . . .
3 . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
1 . . . .
3 . . . .
. . . . .
. . . . .

start init-grid-structure 0.00290894508361816
start create-csp-variables
start create-labels 0.000468015670776367
start init-physical-csp-links 0.00305700302124023
start init-physical-non-csp-links 0.920717000961304
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20954704284668
     start init-physical-BN-non-csp-links at local time 0.793389081954956
     start init-physical-BP-non-csp-links at local time 1.49078106880188
     end init-physical-BP-non-csp-links at local time 11.0475490093231
end init-physical-non-csp-links 11.9682960510254
start init-corner-B-c-values 11.9714848995209
start init-outer-B-candidates 11.9715249538422
start init-outer-I-candidates 11.9719460010529
start init-H-candidates 11.9721138477325
start init-V-candidates 11.9729099273682
start init-P-candidates 11.9736490249634
start init-inner-I-candidates 11.9750690460205
start init-inner-N-and-B-candidates 11.9756979942322
start solution 11.9794189929962
entering BRT
w[1]-adjacent-1-3-on-edge-in-{r2 r3}c1 ==> Vr2c2 = 0, Vr3c1 = 1, Hr2c1 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.   .................
: 1     :   :   :   :
.....................
| 3 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.98s, solve-time = 0.91s, total-time = 12.89s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
5 5
. . . . .
3 . . . .
1 . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
3 . . . .
1 . . . .
. . . . .
. . . . .

start init-grid-structure 0.00295519828796387
start create-csp-variables
start create-labels 0.000568151473999023
start init-physical-csp-links 0.00269699096679688
start init-physical-non-csp-links 0.941294193267822
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20719313621521
     start init-physical-BN-non-csp-links at local time 0.806416988372803
     start init-physical-BP-non-csp-links at local time 1.49836611747742
     end init-physical-BP-non-csp-links at local time 10.644681930542
end init-physical-non-csp-links 11.5860090255737
start init-corner-B-c-values 11.5892109870911
start init-outer-B-candidates 11.5892701148987
start init-outer-I-candidates 11.5897769927979
start init-H-candidates 11.5900330543518
start init-V-candidates 11.5911161899567
start init-P-candidates 11.5920541286469
start init-inner-I-candidates 11.5940589904785
start init-inner-N-and-B-candidates 11.5947840213776
start solution 11.5989301204681
entering BRT
w[1]-adjacent-1-3-on-edge-in-{r3 r2}c1 ==> Vr3c2 = 0, Vr2c1 = 1, Hr4c1 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
| 3 :   :   :   :   :
.....................
: 1     :   :   :   :
.   .................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.6s, solve-time = 0.93s, total-time = 12.53s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
5 5
. . . . .
. . . . 1
. . . . 3
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . 1
. . . . 3
. . . . .
. . . . .

start init-grid-structure 0.00214409828186035
start create-csp-variables
start create-labels 0.000400066375732422
start init-physical-csp-links 0.00238895416259766
start init-physical-non-csp-links 0.812879085540771
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.201134920120239
     start init-physical-BN-non-csp-links at local time 0.768450021743774
     start init-physical-BP-non-csp-links at local time 1.47557997703552
     end init-physical-BP-non-csp-links at local time 10.6771819591522
end init-physical-non-csp-links 11.4901089668274
start init-corner-B-c-values 11.4924681186676
start init-outer-B-candidates 11.4925100803375
start init-outer-I-candidates 11.4929010868073
start init-H-candidates 11.4930939674377
start init-V-candidates 11.4940040111542
start init-P-candidates 11.4947481155396
start init-inner-I-candidates 11.4962170124054
start init-inner-N-and-B-candidates 11.4965801239014
start solution 11.4996960163116
entering BRT
w[1]-adjacent-1-3-on-edge-in-{r2 r3}c5 ==> Vr3c6 = 1, Vr2c5 = 0, Hr2c5 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.................   .
:   :   :   :     1 :
.....................
:   :   :   :   : 3 |
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.5s, solve-time = 0.9s, total-time = 12.4s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
5 5
. . . . .
. . . . 3
. . . . 1
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . 3
. . . . 1
. . . . .
. . . . .

start init-grid-structure 0.00247812271118164
start create-csp-variables
start create-labels 0.000426054000854492
start init-physical-csp-links 0.00283503532409668
start init-physical-non-csp-links 0.914834022521973
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.204874992370605
     start init-physical-BN-non-csp-links at local time 0.770090103149414
     start init-physical-BP-non-csp-links at local time 1.47773814201355
     end init-physical-BP-non-csp-links at local time 10.3816151618958
end init-physical-non-csp-links 11.2964861392975
start init-corner-B-c-values 11.2992081642151
start init-outer-B-candidates 11.2992520332336
start init-outer-I-candidates 11.2996351718903
start init-H-candidates 11.2998361587524
start init-V-candidates 11.3006780147552
start init-P-candidates 11.3015661239624
start init-inner-I-candidates 11.302903175354
start init-inner-N-and-B-candidates 11.3032782077789
start solution 11.3064920902252
entering BRT
w[1]-adjacent-1-3-on-edge-in-{r3 r2}c5 ==> Vr2c6 = 1, Vr3c5 = 0, Hr4c5 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   : 3 |
.....................
:   :   :   :     1 :
.................   .
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.31s, solve-time = 0.89s, total-time = 12.2s
nb-facts=<Fact-27651>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






