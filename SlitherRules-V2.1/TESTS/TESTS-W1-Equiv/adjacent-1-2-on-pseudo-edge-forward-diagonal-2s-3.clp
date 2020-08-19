
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-2-ON-PSEUDO-EDGE-FORWARD-DIAGONAL-2s-3
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

adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



;;; north
(progn
(bind ?*simulated-eliminations* (create$
(value-row-col-to-V-label 1 1 3)
))

(solve
5 5
. . . . .
. 1 2 . .
. . . 3 .
. . . . .
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 1 2 . .
. . . 3 .
. . . . .
. . . . .

start init-grid-structure 0.00267696380615234
start create-csp-variables
start create-labels 0.000377893447875977
start init-physical-csp-links 0.00245785713195801
start init-physical-non-csp-links 0.832145929336548
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.179167985916138
     start init-physical-BN-non-csp-links at local time 0.676954030990601
     start init-physical-BP-non-csp-links at local time 1.24241304397583
     end init-physical-BP-non-csp-links at local time 10.0643339157104
end init-physical-non-csp-links 10.8965179920197
start init-corner-B-c-values 10.899393081665
start init-outer-B-candidates 10.8994369506836
start init-outer-I-candidates 10.8997519016266
start init-H-candidates 10.8999199867249
start init-V-candidates 10.9007709026337
start init-P-candidates 10.901750087738
start init-inner-I-candidates 10.9032599925995
start init-inner-N-and-B-candidates 10.903657913208
start solution 10.9070448875427
Simulated elimination of 1313
entering BRT
V-single: Vr1c3 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r2{c2 c3}-fwd-diag-2s-3 ==> Vr2c2 = 0, Hr3c2 = 0, Hr2c3 = 1
785 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :       :   :   :
.........———.........
:     1 : 2 :   :   :
.....   .............
:   :   :   : 3 :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.91s, solve-time = 0.97s, total-time = 11.88s
nb-facts=<Fact-27641>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************









;;; south
(progn
(bind ?*simulated-eliminations* (create$
(value-row-col-to-V-label 1 5 4)
))
(solve
5 5
. . . . .
. . . . .
. 3 . . .
. . 2 1 .
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . 2 1 .
. . . . .

start init-grid-structure 0.00287604331970215
start create-csp-variables
start create-labels 0.000427007675170898
start init-physical-csp-links 0.00259900093078613
start init-physical-non-csp-links 0.894101858139038
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.193066120147705
     start init-physical-BN-non-csp-links at local time 0.79288911819458
     start init-physical-BP-non-csp-links at local time 1.49288201332092
     end init-physical-BP-non-csp-links at local time 10.3202311992645
end init-physical-non-csp-links 11.2143709659576
start init-corner-B-c-values 11.2174730300903
start init-outer-B-candidates 11.2175140380859
start init-outer-I-candidates 11.2178571224213
start init-H-candidates 11.218043088913
start init-V-candidates 11.2188899517059
start init-P-candidates 11.2196381092072
start init-inner-I-candidates 11.2212119102478
start init-inner-N-and-B-candidates 11.2215900421143
start solution 11.2246491909027
Simulated elimination of 1354
entering BRT
V-single: Vr5c4 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-r4{c4 c3}-fwd-diag-2s-3 ==> Vr4c5 = 0, Hr5c3 = 1, Hr4c4 = 0
785 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.............   .....
:   :   : 2 : 1     :
.........———.........
:   :   :       :   :
.....................

init-time = 11.22s, solve-time = 0.87s, total-time = 12.1s
nb-facts=<Fact-27641>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



;;; west
(progn
(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 4 1)
))
(solve
5 5
. . . . .
. . 3 . .
. 2 . . .
. 1 . . .
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 . .
. 2 . . .
. 1 . . .
. . . . .

start init-grid-structure 0.00351595878601074
start create-csp-variables
start create-labels 0.000510931015014648
start init-physical-csp-links 0.00302791595458984
start init-physical-non-csp-links 0.874963998794556
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.198544979095459
     start init-physical-BN-non-csp-links at local time 0.797798156738281
     start init-physical-BP-non-csp-links at local time 1.50779008865356
     end init-physical-BP-non-csp-links at local time 11.2025110721588
end init-physical-non-csp-links 12.0775058269501
start init-corner-B-c-values 12.081248998642
start init-outer-B-candidates 12.0812909603119
start init-outer-I-candidates 12.0816209316254
start init-H-candidates 12.0818238258362
start init-V-candidates 12.0826468467712
start init-P-candidates 12.0833888053894
start init-inner-I-candidates 12.0849540233612
start init-inner-N-and-B-candidates 12.0855269432068
start solution 12.0900690555573
Simulated elimination of 1241
entering BRT
H-single: Hr4c1 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r4 r3}c2-fwd-diag-2s-3 ==> Vr4c3 = 0, Vr3c2 = 1, Hr5c2 = 0
785 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   : 3 :   :   :
.....................
:   | 2 :   :   :   :
.   .................
:   : 1     :   :   :
.....   .............
:   :   :   :   :   :
.....................

init-time = 12.09s, solve-time = 0.96s, total-time = 13.05s
nb-facts=<Fact-27641>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




;;; east
(progn
(bind ?*simulated-eliminations* (create$
(value-row-col-to-H-label 1 4 5)
))
(solve
5 5
. . . . .
. . 3 . .
. . . 2 .
. . . 1 .
. . . . .
)
(bind ?*simulated-eliminations* (create$))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 . .
. . . 2 .
. . . 1 .
. . . . .

start init-grid-structure 0.00222301483154297
start create-csp-variables
start create-labels 0.000421047210693359
start init-physical-csp-links 0.00242710113525391
start init-physical-non-csp-links 0.85519814491272
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203015089035034
     start init-physical-BN-non-csp-links at local time 0.750815153121948
     start init-physical-BP-non-csp-links at local time 1.45064902305603
     end init-physical-BP-non-csp-links at local time 10.2912380695343
end init-physical-non-csp-links 11.1464750766754
start init-corner-B-c-values 11.1489088535309
start init-outer-B-candidates 11.1489598751068
start init-outer-I-candidates 11.1493680477142
start init-H-candidates 11.1495800018311
start init-V-candidates 11.1504819393158
start init-P-candidates 11.1514978408813
start init-inner-I-candidates 11.153214931488
start init-inner-N-and-B-candidates 11.1536738872528
start solution 11.1573610305786
Simulated elimination of 1245
entering BRT
H-single: Hr4c5 = 0
w[1]-adjacent-1-2-on-pseudo-edge-in-{r4 r3}c4-fwd-diag-2s-3 ==> Vr3c5 = 1, Vr4c4 = 0, Hr5c4 = 0
785 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   : 3 :   :   :
.....................
:   :   :   : 2 |   :
.................   .
:   :   :     1 :   :
.............   .....
:   :   :   :   :   :
.....................

init-time = 11.16s, solve-time = 0.94s, total-time = 12.09s
nb-facts=<Fact-27641>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





;;; longer diagonals of 2s left as an exercise to the reader
