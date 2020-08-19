
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-2-ON-EDGE-FORWARD-DIAGONAL-2s-3
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





------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

;;; with a diagonal with a single 2:

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

(solve
5 5
. 1 2 . .
. . . 3 .
. . . . .
. . . . .
. . . . .
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 2 . .
. . . 3 .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00287389755249023
start create-csp-variables
start create-labels 0.000547170639038086
start init-physical-csp-links 0.0034480094909668
start init-physical-non-csp-links 0.857547998428345
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.181440830230713
     start init-physical-BN-non-csp-links at local time 0.693549871444702
     start init-physical-BP-non-csp-links at local time 1.33759784698486
     end init-physical-BP-non-csp-links at local time 10.4393239021301
end init-physical-non-csp-links 11.2969200611115
start init-corner-B-c-values 11.3000199794769
start init-outer-B-candidates 11.300057888031
start init-outer-I-candidates 11.3003969192505
start init-H-candidates 11.3006010055542
start init-V-candidates 11.3013920783997
start init-P-candidates 11.3022110462189
start init-inner-I-candidates 11.3036448955536
start init-inner-N-and-B-candidates 11.304053068161
start solution 11.3073079586029
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c2 c3}-fwd-diag-2s-3 ==> Vr1c2 = 0, Hr2c2 = 0, Hr1c3 = 1
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........———.........
:     1 : 2 :   :   :
.....   .............
:   :   :   : 3 :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.31s, solve-time = 0.82s, total-time = 12.13s
nb-facts=<Fact-27641>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(solve
5 5
. . 2 1 .
. 3 . . .
. . . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 2 1 .
. 3 . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00249290466308594
start create-csp-variables
start create-labels 0.000613927841186523
start init-physical-csp-links 0.00326395034790039
start init-physical-non-csp-links 0.829535007476807
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.176170110702515
     start init-physical-BN-non-csp-links at local time 0.732882022857666
     start init-physical-BP-non-csp-links at local time 1.41904592514038
     end init-physical-BP-non-csp-links at local time 10.4576001167297
end init-physical-non-csp-links 11.2871830463409
start init-corner-B-c-values 11.2899389266968
start init-outer-B-candidates 11.2899780273438
start init-outer-I-candidates 11.2903199195862
start init-H-candidates 11.2905070781708
start init-V-candidates 11.2912840843201
start init-P-candidates 11.2919969558716
start init-inner-I-candidates 11.2932999134064
start init-inner-N-and-B-candidates 11.2936549186707
start solution 11.2966110706329
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c4 c3}-fwd-diag-2s-3 ==> Vr1c5 = 0, Hr2c4 = 0, Hr1c3 = 1
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........———.........
:   :   : 2 : 1     :
.............   .....
:   : 3 :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.3s, solve-time = 0.84s, total-time = 12.13s
nb-facts=<Fact-27641>
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
. 3 . . .
. . 2 1 .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. 3 . . .
. . 2 1 .

start init-grid-structure 0.00233793258666992
start create-csp-variables
start create-labels 0.000434160232543945
start init-physical-csp-links 0.00252413749694824
start init-physical-non-csp-links 0.836087226867676
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.180414915084839
     start init-physical-BN-non-csp-links at local time 0.755608797073364
     start init-physical-BP-non-csp-links at local time 1.46693897247314
     end init-physical-BP-non-csp-links at local time 10.1330568790436
end init-physical-non-csp-links 10.9691910743713
start init-corner-B-c-values 10.9717350006104
start init-outer-B-candidates 10.9717779159546
start init-outer-I-candidates 10.9721839427948
start init-H-candidates 10.9723739624023
start init-V-candidates 10.9732599258423
start init-P-candidates 10.9740979671478
start init-inner-I-candidates 10.9754190444946
start init-inner-N-and-B-candidates 10.9757869243622
start solution 10.9787390232086
entering BRT
w[1]-adjacent-1-2-on-edge-in-r5{c4 c3}-fwd-diag-2s-3 ==> Vr5c5 = 0, Hr6c3 = 1, Hr5c4 = 0
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.............   .....
:   :   : 2 : 1     :
.........———.........

init-time = 10.98s, solve-time = 0.84s, total-time = 11.82s
nb-facts=<Fact-27641>
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
. . . 3 .
. 1 2 . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . . 3 .
. 1 2 . .

start init-grid-structure 0.00318717956542969
start create-csp-variables
start create-labels 0.000405073165893555
start init-physical-csp-links 0.00258898735046387
start init-physical-non-csp-links 0.891971111297607
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.208894014358521
     start init-physical-BN-non-csp-links at local time 0.816984891891479
     start init-physical-BP-non-csp-links at local time 1.54592609405518
     end init-physical-BP-non-csp-links at local time 10.3036739826202
end init-physical-non-csp-links 11.1956820487976
start init-corner-B-c-values 11.1990630626678
start init-outer-B-candidates 11.1991040706635
start init-outer-I-candidates 11.1994400024414
start init-H-candidates 11.1996209621429
start init-V-candidates 11.2004091739655
start init-P-candidates 11.2011229991913
start init-inner-I-candidates 11.2024590969086
start init-inner-N-and-B-candidates 11.2028131484985
start solution 11.2058079242706
entering BRT
w[1]-adjacent-1-2-on-edge-in-r5{c2 c3}-fwd-diag-2s-3 ==> Vr5c2 = 0, Hr6c3 = 1, Hr5c2 = 0
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   : 3 :   :
.....   .............
:     1 : 2 :   :   :
.........———.........

init-time = 11.21s, solve-time = 0.86s, total-time = 12.07s
nb-facts=<Fact-27641>
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
. 3 . . .
2 . . . .
1 . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
2 . . . .
1 . . . .
. . . . .

start init-grid-structure 0.00241279602050781
start create-csp-variables
start create-labels 0.000399112701416016
start init-physical-csp-links 0.00279617309570312
start init-physical-non-csp-links 0.873401165008545
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.204712867736816
     start init-physical-BN-non-csp-links at local time 0.736199855804443
     start init-physical-BP-non-csp-links at local time 1.43806290626526
     end init-physical-BP-non-csp-links at local time 10.3821058273315
end init-physical-non-csp-links 11.2555429935455
start init-corner-B-c-values 11.2581558227539
start init-outer-B-candidates 11.2581958770752
start init-outer-I-candidates 11.2585229873657
start init-H-candidates 11.2586998939514
start init-V-candidates 11.259468793869
start init-P-candidates 11.2602028846741
start init-inner-I-candidates 11.2614917755127
start init-inner-N-and-B-candidates 11.2618598937988
start solution 11.2648370265961
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r4 r3}c1-fwd-diag-2s-3 ==> Vr4c2 = 0, Vr3c1 = 1, Hr5c1 = 0
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.....................
| 2 :   :   :   :   :
.....................
: 1     :   :   :   :
.   .................
:   :   :   :   :   :
.....................

init-time = 11.26s, solve-time = 0.83s, total-time = 12.09s
nb-facts=<Fact-27641>
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
2 . . . .
. 3 . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
1 . . . .
2 . . . .
. 3 . . .
. . . . .

start init-grid-structure 0.00234603881835938
start create-csp-variables
start create-labels 0.000594139099121094
start init-physical-csp-links 0.00387001037597656
start init-physical-non-csp-links 0.869169950485229
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.207858800888062
     start init-physical-BN-non-csp-links at local time 0.755963802337646
     start init-physical-BP-non-csp-links at local time 1.44803285598755
     end init-physical-BP-non-csp-links at local time 9.60464882850647
end init-physical-non-csp-links 10.4738569259644
start init-corner-B-c-values 10.4764552116394
start init-outer-B-candidates 10.4764940738678
start init-outer-I-candidates 10.4768271446228
start init-H-candidates 10.4770171642303
start init-V-candidates 10.477842092514
start init-P-candidates 10.478609085083
start init-inner-I-candidates 10.4799361228943
start init-inner-N-and-B-candidates 10.4802920818329
start solution 10.4832940101624
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r2 r3}c1-fwd-diag-2s-3 ==> Vr2c2 = 0, Vr3c1 = 1, Hr2c1 = 0
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.   .................
: 1     :   :   :   :
.....................
| 2 :   :   :   :   :
.....................
:   : 3 :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.48s, solve-time = 0.82s, total-time = 11.3s
nb-facts=<Fact-27641>
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
. . . . 2
. . . 3 .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . 1
. . . . 2
. . . 3 .
. . . . .

start init-grid-structure 0.00324797630310059
start create-csp-variables
start create-labels 0.000550985336303711
start init-physical-csp-links 0.00325393676757812
start init-physical-non-csp-links 0.87536883354187
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.180830001831055
     start init-physical-BN-non-csp-links at local time 0.734679937362671
     start init-physical-BP-non-csp-links at local time 1.45496201515198
     end init-physical-BP-non-csp-links at local time 10.50865483284
end init-physical-non-csp-links 11.3840639591217
start init-corner-B-c-values 11.387531042099
start init-outer-B-candidates 11.387580871582
start init-outer-I-candidates 11.3879249095917
start init-H-candidates 11.3881008625031
start init-V-candidates 11.3889238834381
start init-P-candidates 11.3897190093994
start init-inner-I-candidates 11.3912658691406
start init-inner-N-and-B-candidates 11.3916459083557
start solution 11.3949220180511
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r2 r3}c5-fwd-diag-2s-3 ==> Vr3c6 = 1, Vr2c5 = 0, Hr2c5 = 0
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.................   .
:   :   :   :     1 :
.....................
:   :   :   :   : 2 |
.....................
:   :   :   : 3 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.39s, solve-time = 0.95s, total-time = 12.34s
nb-facts=<Fact-27641>
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
. . . 3 .
. . . . 2
. . . . 1
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. . . . 2
. . . . 1
. . . . .

start init-grid-structure 0.00220990180969238
start create-csp-variables
start create-labels 0.000448942184448242
start init-physical-csp-links 0.00281190872192383
start init-physical-non-csp-links 0.865808963775635
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.174813985824585
     start init-physical-BN-non-csp-links at local time 0.683802843093872
     start init-physical-BP-non-csp-links at local time 1.28153991699219
     end init-physical-BP-non-csp-links at local time 9.25713801383972
end init-physical-non-csp-links 10.1229939460754
start init-corner-B-c-values 10.1254029273987
start init-outer-B-candidates 10.1254408359528
start init-outer-I-candidates 10.125757932663
start init-H-candidates 10.1259520053864
start init-V-candidates 10.1267259120941
start init-P-candidates 10.127434015274
start init-inner-I-candidates 10.1287178993225
start init-inner-N-and-B-candidates 10.1290838718414
start solution 10.1320250034332
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r4 r3}c5-fwd-diag-2s-3 ==> Vr3c6 = 1, Vr4c5 = 0, Hr5c5 = 0
786 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   : 3 :   :
.....................
:   :   :   :   : 2 |
.....................
:   :   :   :     1 :
.................   .
:   :   :   :   :   :
.....................

init-time = 10.13s, solve-time = 0.83s, total-time = 10.96s
nb-facts=<Fact-27641>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

;;; with a diagonal of two 2s

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------


(solve
6 6
. 1 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00248193740844727
start create-csp-variables
start create-labels 0.000588178634643555
start init-physical-csp-links 0.00398898124694824
start init-physical-non-csp-links 1.70249700546265
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.422128915786743
     start init-physical-BN-non-csp-links at local time 1.5478458404541
     start init-physical-BP-non-csp-links at local time 2.90603089332581
     end init-physical-BP-non-csp-links at local time 18.8346829414368
end init-physical-non-csp-links 20.5372200012207
start init-corner-B-c-values 20.5399150848389
start init-outer-B-candidates 20.5399589538574
start init-outer-I-candidates 20.5404000282288
start init-H-candidates 20.5406119823456
start init-V-candidates 20.5417549610138
start init-P-candidates 20.5427439212799
start init-inner-I-candidates 20.5445780754089
start init-inner-N-and-B-candidates 20.5450789928436
start solution 20.5494358539581
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c2 c3}-fwd-diag-2s-3 ==> Vr1c2 = 0, Hr2c2 = 0, Hr1c3 = 1
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........———.............
:     1 : 2 :   :   :   :
.....   .................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 20.55s, solve-time = 1.81s, total-time = 22.36s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve
6 6
. . . 2 1 .
. . 2 . . .
. 3 . . . .
. . . . . .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . 2 1 .
. . 2 . . .
. 3 . . . .
. . . . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00340485572814941
start create-csp-variables
start create-labels 0.000581979751586914
start init-physical-csp-links 0.00452685356140137
start init-physical-non-csp-links 1.64738583564758
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.388304948806763
     start init-physical-BN-non-csp-links at local time 1.41426610946655
     start init-physical-BP-non-csp-links at local time 2.83828091621399
     end init-physical-BP-non-csp-links at local time 19.6734330654144
end init-physical-non-csp-links 21.3208639621735
start init-corner-B-c-values 21.3244919776917
start init-outer-B-candidates 21.3245339393616
start init-outer-I-candidates 21.3249368667603
start init-H-candidates 21.3251440525055
start init-V-candidates 21.3261940479279
start init-P-candidates 21.3271999359131
start init-inner-I-candidates 21.3290209770203
start init-inner-N-and-B-candidates 21.3295369148254
start solution 21.3338830471039
entering BRT
w[1]-adjacent-1-2-on-edge-in-r1{c5 c4}-fwd-diag-2s-3 ==> Vr1c6 = 0, Hr2c5 = 0, Hr1c4 = 1
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.............———.........
:   :   :   : 2 : 1     :
.................   .....
:   :   : 2 :   :   :   :
.........................
:   : 3 :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.33s, solve-time = 1.84s, total-time = 23.17s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve
6 6
. . . . . .
. . . . . .
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 1 .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . .
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 1 .

start init-grid-structure 0.00458312034606934
start create-csp-variables
start create-labels 0.000683069229125977
start init-physical-csp-links 0.00518584251403809
start init-physical-non-csp-links 1.55818104743958
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.369177103042603
     start init-physical-BN-non-csp-links at local time 1.36663913726807
     start init-physical-BP-non-csp-links at local time 2.63032507896423
     end init-physical-BP-non-csp-links at local time 18.7771909236908
end init-physical-non-csp-links 20.3354179859161
start init-corner-B-c-values 20.340264081955
start init-outer-B-candidates 20.3403081893921
start init-outer-I-candidates 20.3407089710236
start init-H-candidates 20.3409152030945
start init-V-candidates 20.3420460224152
start init-P-candidates 20.3430840969086
start init-inner-I-candidates 20.3449170589447
start init-inner-N-and-B-candidates 20.3456251621246
start solution 20.3499789237976
entering BRT
w[1]-adjacent-1-2-on-edge-in-r6{c5 c4}-fwd-diag-2s-3 ==> Vr6c6 = 0, Hr7c4 = 1, Hr6c5 = 0
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   : 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.................   .....
:   :   :   : 2 : 1     :
.............———.........

init-time = 20.35s, solve-time = 1.85s, total-time = 22.2s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve
6 6
. . . . . .
. . . . . .
. . . . . .
. . . . 3 .
. . . 2 . .
. 1 2 . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . .
. . . . . .
. . . . 3 .
. . . 2 . .
. 1 2 . . .

start init-grid-structure 0.00370883941650391
start create-csp-variables
start create-labels 0.000548839569091797
start init-physical-csp-links 0.00383281707763672
start init-physical-non-csp-links 1.65390586853027
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.398819208145142
     start init-physical-BN-non-csp-links at local time 1.46632599830627
     start init-physical-BP-non-csp-links at local time 2.76135301589966
     end init-physical-BP-non-csp-links at local time 18.7614710330963
end init-physical-non-csp-links 20.4154160022736
start init-corner-B-c-values 20.4193270206451
start init-outer-B-candidates 20.4193708896637
start init-outer-I-candidates 20.4197690486908
start init-H-candidates 20.4199509620667
start init-V-candidates 20.420991897583
start init-P-candidates 20.421972990036
start init-inner-I-candidates 20.4238040447235
start init-inner-N-and-B-candidates 20.4243040084839
start solution 20.4285979270935
entering BRT
w[1]-adjacent-1-2-on-edge-in-r6{c2 c3}-fwd-diag-2s-3 ==> Vr6c2 = 0, Hr7c3 = 1, Hr6c2 = 0
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   : 3 :   :
.........................
:   :   :   : 2 :   :   :
.....   .................
:     1 : 2 :   :   :   :
.........———.............

init-time = 20.43s, solve-time = 1.82s, total-time = 22.25s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve
6 6
. . . . . .
. . 3 . . .
. 2 . . . .
2 . . . . .
1 . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . 3 . . .
. 2 . . . .
2 . . . . .
1 . . . . .
. . . . . .

start init-grid-structure 0.00365519523620605
start create-csp-variables
start create-labels 0.00053715705871582
start init-physical-csp-links 0.00414896011352539
start init-physical-non-csp-links 1.58554100990295
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.380474090576172
     start init-physical-BN-non-csp-links at local time 1.44087195396423
     start init-physical-BP-non-csp-links at local time 2.77152395248413
     end init-physical-BP-non-csp-links at local time 19.4248549938202
end init-physical-non-csp-links 21.0104320049286
start init-corner-B-c-values 21.0143020153046
start init-outer-B-candidates 21.0143420696259
start init-outer-I-candidates 21.0147321224213
start init-H-candidates 21.0149421691895
start init-V-candidates 21.0160820484161
start init-P-candidates 21.0170850753784
start init-inner-I-candidates 21.0189499855042
start init-inner-N-and-B-candidates 21.0195820331573
start solution 21.0239570140839
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r5 r4}c1-fwd-diag-2s-3 ==> Vr5c2 = 0, Vr4c1 = 1, Hr6c1 = 0
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   : 3 :   :   :   :
.........................
:   : 2 :   :   :   :   :
.........................
| 2 :   :   :   :   :   :
.........................
: 1     :   :   :   :   :
.   .....................
:   :   :   :   :   :   :
.........................

init-time = 21.02s, solve-time = 1.85s, total-time = 22.87s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
6 6
. . . . . .
1 . . . . .
2 . . . . .
. 2 . . . .
. . 3 . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
1 . . . . .
2 . . . . .
. 2 . . . .
. . 3 . . .
. . . . . .

start init-grid-structure 0.00559711456298828
start create-csp-variables
start create-labels 0.000792980194091797
start init-physical-csp-links 0.00459694862365723
start init-physical-non-csp-links 1.66349291801453
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.40549898147583
     start init-physical-BN-non-csp-links at local time 1.46039891242981
     start init-physical-BP-non-csp-links at local time 2.87679386138916
     end init-physical-BP-non-csp-links at local time 20.0515620708466
end init-physical-non-csp-links 21.7150959968567
start init-corner-B-c-values 21.7209560871124
start init-outer-B-candidates 21.720997095108
start init-outer-I-candidates 21.7213950157166
start init-H-candidates 21.7216010093689
start init-V-candidates 21.7226760387421
start init-P-candidates 21.7236590385437
start init-inner-I-candidates 21.7254750728607
start init-inner-N-and-B-candidates 21.7260031700134
start solution 21.7302949428558
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r2 r3}c1-fwd-diag-2s-3 ==> Vr2c2 = 0, Vr3c1 = 1, Hr2c1 = 0
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.   .....................
: 1     :   :   :   :   :
.........................
| 2 :   :   :   :   :   :
.........................
:   : 2 :   :   :   :   :
.........................
:   :   : 3 :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.73s, solve-time = 1.82s, total-time = 23.55s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve
6 6
. . . . . .
. . . . . 1
. . . . . 2
. . . . 2 .
. . . 3 . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . 1
. . . . . 2
. . . . 2 .
. . . 3 . .
. . . . . .

start init-grid-structure 0.00462102890014648
start create-csp-variables
start create-labels 0.000557899475097656
start init-physical-csp-links 0.00366687774658203
start init-physical-non-csp-links 1.63690090179443
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.379124164581299
     start init-physical-BN-non-csp-links at local time 1.44026803970337
     start init-physical-BP-non-csp-links at local time 2.66733717918396
     end init-physical-BP-non-csp-links at local time 18.9835240840912
end init-physical-non-csp-links 20.6204640865326
start init-corner-B-c-values 20.6253340244293
start init-outer-B-candidates 20.6253750324249
start init-outer-I-candidates 20.625776052475
start init-H-candidates 20.6259889602661
start init-V-candidates 20.6273438930511
start init-P-candidates 20.6283659934998
start init-inner-I-candidates 20.6302180290222
start init-inner-N-and-B-candidates 20.630744934082
start solution 20.6349999904633
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r2 r3}c6-fwd-diag-2s-3 ==> Vr3c7 = 1, Vr2c6 = 0, Hr2c6 = 0
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.....................   .
:   :   :   :   :     1 :
.........................
:   :   :   :   :   : 2 |
.........................
:   :   :   :   : 2 :   :
.........................
:   :   :   : 3 :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 20.63s, solve-time = 1.84s, total-time = 22.48s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve
6 6
. . . . . .
. . . 3 . .
. . . . 2 .
. . . . . 2
. . . . . 1
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . 3 . .
. . . . 2 .
. . . . . 2
. . . . . 1
. . . . . .

start init-grid-structure 0.00374603271484375
start create-csp-variables
start create-labels 0.000560998916625977
start init-physical-csp-links 0.00361514091491699
start init-physical-non-csp-links 1.59274697303772
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.373392105102539
     start init-physical-BN-non-csp-links at local time 1.36963796615601
     start init-physical-BP-non-csp-links at local time 2.63506698608398
     end init-physical-BP-non-csp-links at local time 18.6503911018372
end init-physical-non-csp-links 20.2431809902191
start init-corner-B-c-values 20.2471561431885
start init-outer-B-candidates 20.2472021579742
start init-outer-I-candidates 20.2476041316986
start init-H-candidates 20.247810125351
start init-V-candidates 20.2489440441132
start init-P-candidates 20.2499740123749
start init-inner-I-candidates 20.2518770694733
start init-inner-N-and-B-candidates 20.2524919509888
start solution 20.2571129798889
entering BRT
w[1]-adjacent-1-2-on-edge-in-{r5 r4}c6-fwd-diag-2s-3 ==> Vr4c7 = 1, Vr5c6 = 0, Hr6c6 = 0
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   : 3 :   :   :
.........................
:   :   :   :   : 2 :   :
.........................
:   :   :   :   :   : 2 |
.........................
:   :   :   :   :     1 :
.....................   .
:   :   :   :   :   :   :
.........................

init-time = 20.26s, solve-time = 1.86s, total-time = 22.11s
nb-facts=<Fact-37693>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

;;; with longer diagonals of 2s

------------------------------------------------------------------------------------
------------------------------------------------------------------------------------
------------------------------------------------------------------------------------

;;; left as an exercise for the reader
