
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-0
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


DIAGONAL 3-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



(solve 
5 5 
. . . . .
. . . . .
. 3 . . . 
. . 0 . .
. . . . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . 0 . .
. . . . .

start init-grid-structure 0.00298404693603516
start create-csp-variables
start create-labels 0.000519037246704102
start init-physical-csp-links 0.0029149055480957
start init-physical-non-csp-links 0.875228881835938
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.207624912261963
     start init-physical-BN-non-csp-links at local time 0.792839050292969
     start init-physical-BP-non-csp-links at local time 1.5076310634613
     end init-physical-BP-non-csp-links at local time 11.004683971405
end init-physical-non-csp-links 11.8799428939819
start init-corner-B-c-values 11.8832340240479
start init-outer-B-candidates 11.8832721710205
start init-outer-I-candidates 11.8837070465088
start init-H-candidates 11.8838880062103
start init-V-candidates 11.8847301006317
start init-P-candidates 11.8854620456696
start init-inner-I-candidates 11.8867800235748
start init-inner-N-and-B-candidates 11.8871400356293
start solution 11.8901641368866
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[1]-diagonal-3-0-in-{r3c2...r4c3} ==> Vr3c3 = 1, Hr4c2 = 1
769 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.89s, solve-time = 1.02s, total-time = 12.91s
nb-facts=<Fact-27673>
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
. . . 3 . 
. . 0 . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . 3 .
. . 0 . .
. . . . .

start init-grid-structure 0.00292491912841797
start create-csp-variables
start create-labels 0.000406980514526367
start init-physical-csp-links 0.00255012512207031
start init-physical-non-csp-links 0.89505410194397
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.201273202896118
     start init-physical-BN-non-csp-links at local time 0.804632186889648
     start init-physical-BP-non-csp-links at local time 1.52672505378723
     end init-physical-BP-non-csp-links at local time 10.1663630008698
end init-physical-non-csp-links 11.0614590644836
start init-corner-B-c-values 11.0645821094513
start init-outer-B-candidates 11.064621925354
start init-outer-I-candidates 11.0649700164795
start init-H-candidates 11.065150976181
start init-V-candidates 11.0659539699554
start init-P-candidates 11.0666649341583
start init-inner-I-candidates 11.0679929256439
start init-inner-N-and-B-candidates 11.0683550834656
start solution 11.0715029239655
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[1]-diagonal-3-0-in-{r3c4...r4c3} ==> Vr3c4 = 1, Hr4c4 = 1
769 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   | 3 :   :
.........   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.07s, solve-time = 0.9s, total-time = 11.97s
nb-facts=<Fact-27673>
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
. . . 0 . 
. . 3 . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . 0 .
. . 3 . .
. . . . .

start init-grid-structure 0.00457096099853516
start create-csp-variables
start create-labels 0.000644922256469727
start init-physical-csp-links 0.00421786308288574
start init-physical-non-csp-links 0.895421028137207
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.200552940368652
     start init-physical-BN-non-csp-links at local time 0.808222770690918
     start init-physical-BP-non-csp-links at local time 1.55857086181641
     end init-physical-BP-non-csp-links at local time 10.5646708011627
end init-physical-non-csp-links 11.4601190090179
start init-corner-B-c-values 11.46501994133
start init-outer-B-candidates 11.4650628566742
start init-outer-I-candidates 11.4654150009155
start init-H-candidates 11.4656019210815
start init-V-candidates 11.46644282341
start init-P-candidates 11.4672019481659
start init-inner-I-candidates 11.4685318470001
start init-inner-N-and-B-candidates 11.4688868522644
start solution 11.4719669818878
entering BRT
w0-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[1]-diagonal-3-0-in-{r4c3...r3c4} ==> Vr4c4 = 1, Hr4c3 = 1
769 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:   :   :     0     :
.........———.   .....
:   :   : 3 |   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.47s, solve-time = 0.9s, total-time = 12.37s
nb-facts=<Fact-27673>
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
. 0 . . . 
. . 3 . .
. . . . . 
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 0 . . .
. . 3 . .
. . . . .

start init-grid-structure 0.00292181968688965
start create-csp-variables
start create-labels 0.00040888786315918
start init-physical-csp-links 0.00271391868591309
start init-physical-non-csp-links 0.932569980621338
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.213719844818115
     start init-physical-BN-non-csp-links at local time 0.832612991333008
     start init-physical-BP-non-csp-links at local time 1.56963086128235
     end init-physical-BP-non-csp-links at local time 10.5679409503937
end init-physical-non-csp-links 11.5005459785461
start init-corner-B-c-values 11.5036749839783
start init-outer-B-candidates 11.5037159919739
start init-outer-I-candidates 11.5040118694305
start init-H-candidates 11.5041689872742
start init-V-candidates 11.5049288272858
start init-P-candidates 11.5056397914886
start init-inner-I-candidates 11.5069859027863
start init-inner-N-and-B-candidates 11.5073719024658
start solution 11.510547876358
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-diagonal-3-0-in-{r4c3...r3c2} ==> Vr4c3 = 1, Hr4c3 = 1
w[1]-3-in-r4c3-closed-nw-corner ==> Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
769 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0     :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.51s, solve-time = 1.03s, total-time = 12.54s
nb-facts=<Fact-27673>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


