
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-1-3-IN-CORNER
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

DIAGONAL 1-3 IN CORNERS, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
5 5  
. 3 . . . 
1 . . . .
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
1 . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.0175521373748779
start create-csp-variables
start create-labels 0.000452041625976562
start init-physical-csp-links 0.00299596786499023
start init-physical-non-csp-links 0.829238891601562
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.172602891921997
     start init-physical-BN-non-csp-links at local time 0.701565980911255
     start init-physical-BP-non-csp-links at local time 1.23207592964172
     end init-physical-BP-non-csp-links at local time 8.385577917099
end init-physical-non-csp-links 9.21485710144043
start init-corner-B-c-values 9.23267817497253
start init-outer-B-candidates 9.23272609710693
start init-outer-I-candidates 9.23326301574707
start init-H-candidates 9.23346614837646
start init-V-candidates 9.23432421684265
start init-P-candidates 9.23547101020813
start init-inner-I-candidates 9.23798298835754
start init-inner-N-and-B-candidates 9.23852205276489
start solution 9.24310803413391
entering BRT
diagonal-1-3-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 1
800 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   | 3 :   :   :   :
.   .................
: 1 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 9.24s, solve-time = 0.81s, total-time = 10.06s
nb-facts=<Fact-27654>
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
1 . . . 1
. . . . .
1 . . . 1
. 3 . 3 .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 .
1 . . . 1
. . . . .
1 . . . 1
. 3 . 3 .

start init-grid-structure 0.00297284126281738
start create-csp-variables
start create-labels 0.000436067581176758
start init-physical-csp-links 0.00287485122680664
start init-physical-non-csp-links 0.802535057067871
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.173610925674438
     start init-physical-BN-non-csp-links at local time 0.656028985977173
     start init-physical-BP-non-csp-links at local time 1.2182469367981
     end init-physical-BP-non-csp-links at local time 10.7811589241028
end init-physical-non-csp-links 11.5837450027466
start init-corner-B-c-values 11.5870158672333
start init-outer-B-candidates 11.587061882019
start init-outer-I-candidates 11.5876100063324
start init-H-candidates 11.5878608226776
start init-V-candidates 11.5889229774475
start init-P-candidates 11.5901319980621
start init-inner-I-candidates 11.5921277999878
start init-inner-N-and-B-candidates 11.5925908088684
start solution 11.5964069366455
entering BRT
diagonal-1-3-in-nw-corner ==> Vr1c2 = 0, Hr2c1 = 1
diagonal-1-3-in-ne-corner ==> Vr1c5 = 0, Hr2c5 = 1
diagonal-1-3-in-sw-corner ==> Vr5c2 = 0, Hr5c1 = 1
diagonal-1-3-in-se-corner ==> Vr5c5 = 0, Hr5c5 = 1
704 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 291 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   | 3 :   : 3 |   :
.   .............   .
: 1 :   :   :   : 1 :
.....................
:   :   :   :   :   :
.....................
: 1 :   :   :   : 1 :
.   .............   .
:   | 3 :   : 3 |   :
.....................

init-time = 11.6s, solve-time = 1.1s, total-time = 12.69s
nb-facts=<Fact-27582>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve 
5 5  
. 1 . 1 . 
3 . . . 3
. . . . .
3 . . . 3
. 1 . 1 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 1 . 1 .
3 . . . 3
. . . . .
3 . . . 3
. 1 . 1 .

start init-grid-structure 0.00265908241271973
start create-csp-variables
start create-labels 0.000447988510131836
start init-physical-csp-links 0.00278711318969727
start init-physical-non-csp-links 0.833658933639526
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.190097093582153
     start init-physical-BN-non-csp-links at local time 0.737733125686646
     start init-physical-BP-non-csp-links at local time 1.37827897071838
     end init-physical-BP-non-csp-links at local time 10.8146150112152
end init-physical-non-csp-links 11.6483209133148
start init-corner-B-c-values 11.6512091159821
start init-outer-B-candidates 11.651251077652
start init-outer-I-candidates 11.6516211032867
start init-H-candidates 11.6519000530243
start init-V-candidates 11.6528151035309
start init-P-candidates 11.653538942337
start init-inner-I-candidates 11.654876947403
start init-inner-N-and-B-candidates 11.6552379131317
start solution 11.6580488681793
entering BRT
diagonal-3-1-in-nw-corner ==> Vr1c2 = 1, Hr2c1 = 0
diagonal-3-1-in-ne-corner ==> Vr1c5 = 1, Hr2c5 = 0
diagonal-3-1-in-sw-corner ==> Vr5c2 = 1, Hr5c1 = 0
diagonal-3-1-in-se-corner ==> Vr5c5 = 1, Hr5c5 = 0
704 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 291 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:     1 :   : 1     :
.———.............———.
: 3 :   :   :   : 3 :
.....................
:   :   :   :   :   :
.....................
: 3 :   :   :   : 3 :
.———.............———.
:     1 :   : 1     :
.....................

init-time = 11.66s, solve-time = 0.97s, total-time = 12.63s
nb-facts=<Fact-27582>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







