
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-1-ON-PSEUDO-EDGE
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

ADJACENT 1-1 ON PSEUDO EDGE, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 2 3)
)
)



(solve
5 5
. . . . .
. . . . .
. 1 1 . .
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
. . . . .
. 1 1 . .
. . . . .
. . . . .

start init-grid-structure 0.0022280216217041
start create-csp-variables
start create-labels 0.000404119491577148
start init-physical-csp-links 0.00239205360412598
start init-physical-non-csp-links 0.80659294128418
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.17802619934082
     start init-physical-BN-non-csp-links at local time 0.67601203918457
     start init-physical-BP-non-csp-links at local time 1.28928017616272
     end init-physical-BP-non-csp-links at local time 10.2380859851837
end init-physical-non-csp-links 11.0447111129761
start init-corner-B-c-values 11.0471510887146
start init-outer-B-candidates 11.0471930503845
start init-outer-I-candidates 11.0475149154663
start init-H-candidates 11.0476830005646
start init-V-candidates 11.0484890937805
start init-P-candidates 11.0492310523987
start init-inner-I-candidates 11.0506420135498
start init-inner-N-and-B-candidates 11.0510559082031
start solution 11.0541989803314
Simulated elimination of 1323
entering BRT
V-single: Vr2c3 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c2 c3} ==> Vr3c3 = 0
800 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....................
:   : 1   1 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.05s, solve-time = 0.91s, total-time = 11.96s
nb-facts=<Fact-27646>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 4 3)
)
)



(solve
5 5
. . . . .
. . . . .
. 1 1 . .
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
. . . . .
. 1 1 . .
. . . . .
. . . . .

start init-grid-structure 0.00237417221069336
start create-csp-variables
start create-labels 0.000442981719970703
start init-physical-csp-links 0.00265097618103027
start init-physical-non-csp-links 0.846604824066162
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.18079400062561
     start init-physical-BN-non-csp-links at local time 0.691421985626221
     start init-physical-BP-non-csp-links at local time 1.28451085090637
     end init-physical-BP-non-csp-links at local time 10.1416828632355
end init-physical-non-csp-links 10.9883329868317
start init-corner-B-c-values 10.9909310340881
start init-outer-B-candidates 10.990974187851
start init-outer-I-candidates 10.9913592338562
start init-H-candidates 10.9915571212769
start init-V-candidates 10.992359161377
start init-P-candidates 10.993134021759
start init-inner-I-candidates 10.9948132038116
start init-inner-N-and-B-candidates 10.9951930046082
start solution 10.9987418651581
Simulated elimination of 1343
entering BRT
V-single: Vr4c3 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-r3{c2 c3} ==> Vr3c3 = 0
800 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 1   1 :   :   :
.....................
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.0s, solve-time = 0.92s, total-time = 11.92s
nb-facts=<Fact-27646>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 3 2)
)
)



(solve
5 5
. . . . .
. . 1 . .
. . 1 . .
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
. . 1 . .
. . 1 . .
. . . . .
. . . . .

start init-grid-structure 0.00281691551208496
start create-csp-variables
start create-labels 0.000451087951660156
start init-physical-csp-links 0.00265407562255859
start init-physical-non-csp-links 0.886413097381592
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.210584163665771
     start init-physical-BN-non-csp-links at local time 0.779704093933105
     start init-physical-BP-non-csp-links at local time 1.47424411773682
     end init-physical-BP-non-csp-links at local time 9.50419116020203
end init-physical-non-csp-links 10.3906390666962
start init-corner-B-c-values 10.39368891716
start init-outer-B-candidates 10.3937299251556
start init-outer-I-candidates 10.3940818309784
start init-H-candidates 10.3942658901215
start init-V-candidates 10.3951189517975
start init-P-candidates 10.3959288597107
start init-inner-I-candidates 10.3972580432892
start init-inner-N-and-B-candidates 10.3976440429688
start solution 10.4007639884949
Simulated elimination of 1232
entering BRT
H-single: Hr3c2 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r2 r3} ==> Hr3c3 = 0
800 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   : 1 :   :   :
.....   .   .........
:   :   : 1 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.4s, solve-time = 0.8s, total-time = 11.2s
nb-facts=<Fact-27646>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-H-label 1 3 4)
)
)



(solve
5 5
. . . . .
. . 1 . .
. . 1 . .
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
. . 1 . .
. . 1 . .
. . . . .
. . . . .

start init-grid-structure 0.00225996971130371
start create-csp-variables
start create-labels 0.000414848327636719
start init-physical-csp-links 0.00248193740844727
start init-physical-non-csp-links 0.846995830535889
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.200993061065674
     start init-physical-BN-non-csp-links at local time 0.782825946807861
     start init-physical-BP-non-csp-links at local time 1.46969604492188
     end init-physical-BP-non-csp-links at local time 9.8033459186554
end init-physical-non-csp-links 10.6503868103027
start init-corner-B-c-values 10.6528568267822
start init-outer-B-candidates 10.6528968811035
start init-outer-I-candidates 10.6532728672028
start init-H-candidates 10.6534719467163
start init-V-candidates 10.6545128822327
start init-P-candidates 10.6552610397339
start init-inner-I-candidates 10.6566288471222
start init-inner-N-and-B-candidates 10.6569969654083
start solution 10.6602690219879
Simulated elimination of 1234
entering BRT
H-single: Hr3c4 = 0
w[1]-adjacent-1-1-on-pseudo-edge-in-c3{r2 r3} ==> Hr3c3 = 0
800 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   : 1 :   :   :
.........   .   .....
:   :   : 1 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.66s, solve-time = 0.78s, total-time = 11.44s
nb-facts=<Fact-27646>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
