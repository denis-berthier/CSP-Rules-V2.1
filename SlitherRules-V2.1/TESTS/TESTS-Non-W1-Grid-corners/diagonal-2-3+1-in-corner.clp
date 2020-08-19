
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-2-3+1-IN-CORNER
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

diagonal 2-3+1 IN A CORNER, NOT REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5  
. 3 . . . 
2 1 . . .
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
2 1 . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00346779823303223
start create-csp-variables
start create-labels 0.000509023666381836
start init-physical-csp-links 0.00274491310119629
start init-physical-non-csp-links 0.857486009597778
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.197538137435913
     start init-physical-BN-non-csp-links at local time 0.770275115966797
     start init-physical-BP-non-csp-links at local time 1.42971706390381
     end init-physical-BP-non-csp-links at local time 11.1283011436462
end init-physical-non-csp-links 11.9858298301697
start init-corner-B-c-values 11.9895579814911
start init-outer-B-candidates 11.9896237850189
start init-outer-I-candidates 11.9899978637695
start init-H-candidates 11.9901700019836
start init-V-candidates 11.9911298751831
start init-P-candidates 11.9922788143158
start init-inner-I-candidates 11.9937109947205
start init-inner-N-and-B-candidates 11.994148015976
start solution 11.9977121353149
entering BRT
diagonal-2-3-in-nw-corner ==> Vr1c3 = 0
diagonal-2-3+1-in-nw-corner ==> Vr1c2 = 0
787 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   | 3 |   :   :   :
.....................
: 2 : 1 :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 12.0s, solve-time = 0.9s, total-time = 12.9s
nb-facts=<Fact-27645>
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
2 1 . 1 2
. . . . .
2 1 . 1 2
. 3 . 3 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 3 . 3 .
2 1 . 1 2
. . . . .
2 1 . 1 2
. 3 . 3 .

start init-grid-structure 0.00286006927490234
start create-csp-variables
start create-labels 0.000506877899169922
start init-physical-csp-links 0.00354599952697754
start init-physical-non-csp-links 0.848460912704468
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.180489063262939
     start init-physical-BN-non-csp-links at local time 0.737607002258301
     start init-physical-BP-non-csp-links at local time 1.37034606933594
     end init-physical-BP-non-csp-links at local time 10.4707491397858
end init-physical-non-csp-links 11.31924700737
start init-corner-B-c-values 11.3223340511322
start init-outer-B-candidates 11.322380065918
start init-outer-I-candidates 11.3227519989014
start init-H-candidates 11.3229489326477
start init-V-candidates 11.3237900733948
start init-P-candidates 11.3249940872192
start init-inner-I-candidates 11.3272211551666
start init-inner-N-and-B-candidates 11.3277900218964
start solution 11.3309409618378
entering BRT
diagonal-2-3-in-nw-corner ==> Vr1c3 = 0
diagonal-2-3-in-ne-corner ==> Vr1c4 = 0
diagonal-2-3-in-sw-corner ==> Vr5c3 = 0
diagonal-2-3-in-se-corner ==> Vr5c4 = 0
diagonal-2-3+1-in-nw-corner ==> Vr1c2 = 0
diagonal-2-3+1-in-ne-corner ==> Vr1c5 = 0
diagonal-2-3+1-in-sw-corner ==> Vr5c2 = 0
diagonal-2-3+1-in-se-corner ==> Vr5c5 = 0
652 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 287 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   | 3 |   | 3 |   :
.....................
: 2 : 1 :   : 1 : 2 :
.....................
:   :   :   :   :   :
.....................
: 2 : 1 :   : 1 : 2 :
.....................
:   | 3 |   | 3 |   :
.....................

init-time = 11.33s, solve-time = 1.08s, total-time = 12.41s
nb-facts=<Fact-27546>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(solve 
5 5  
. 2 . 2 . 
3 1 . 1 3
. . . . .
3 1 . 1 3
. 2 . 2 .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. 2 . 2 .
3 1 . 1 3
. . . . .
3 1 . 1 3
. 2 . 2 .

start init-grid-structure 0.00231790542602539
start create-csp-variables
start create-labels 0.000416994094848633
start init-physical-csp-links 0.00242400169372559
start init-physical-non-csp-links 0.832823038101196
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.206031084060669
     start init-physical-BN-non-csp-links at local time 0.748126983642578
     start init-physical-BP-non-csp-links at local time 1.42518615722656
     end init-physical-BP-non-csp-links at local time 11.2437341213226
end init-physical-non-csp-links 12.0766050815582
start init-corner-B-c-values 12.079167842865
start init-outer-B-candidates 12.0792210102081
start init-outer-I-candidates 12.0796208381653
start init-H-candidates 12.07985496521
start init-V-candidates 12.0811839103699
start init-P-candidates 12.0820770263672
start init-inner-I-candidates 12.0836589336395
start init-inner-N-and-B-candidates 12.0840399265289
start solution 12.0868139266968
entering BRT
diagonal-3-2-in-nw-corner ==> Hr3c1 = 0
diagonal-3-2-in-ne-corner ==> Hr3c5 = 0
diagonal-3-2-in-sw-corner ==> Hr4c1 = 0
diagonal-3-2-in-se-corner ==> Hr4c5 = 0
diagonal-3-2+1-in-nw-corner ==> Hr2c1 = 0
diagonal-2-3+1-in-ne-corner ==> Hr2c5 = 0
diagonal-3-2+1-in-sw-corner ==> Hr5c1 = 0
diagonal-3-2+1-in-se-corner ==> Hr5c5 = 0
652 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 287 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   : 2 :   : 2 :   :
.———.............———.
: 3 : 1 :   : 1 : 3 :
.———.............———.
:   :   :   :   :   :
.———.............———.
: 3 : 1 :   : 1 : 3 :
.———.............———.
:   : 2 :   : 2 :   :
.....................

init-time = 12.09s, solve-time = 1.1s, total-time = 13.18s
nb-facts=<Fact-27546>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
