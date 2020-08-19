
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-1-1-ON-EDGE
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

ADJACENT 1-1 ON EDGE, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. 1 1 . .
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

. 1 1 . .
. . . . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00219988822937012
start create-csp-variables
start create-labels 0.000426054000854492
start init-physical-csp-links 0.00270795822143555
start init-physical-non-csp-links 0.807542085647583
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.179885149002075
     start init-physical-BN-non-csp-links at local time 0.732644081115723
     start init-physical-BP-non-csp-links at local time 1.40790009498596
     end init-physical-BP-non-csp-links at local time 9.42602515220642
end init-physical-non-csp-links 10.2336180210114
start init-corner-B-c-values 10.2360398769379
start init-outer-B-candidates 10.2360820770264
start init-outer-I-candidates 10.2364280223846
start init-H-candidates 10.2365958690643
start init-V-candidates 10.2374160289764
start init-P-candidates 10.2381498813629
start init-inner-I-candidates 10.2396829128265
start init-inner-N-and-B-candidates 10.2400639057159
start solution 10.2431728839874
entering BRT
w[1]-adjacent-1-1-on-edge-in-r1{c2 c3} ==> Vr1c3 = 0
801 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   : 1   1 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.24s, solve-time = 0.75s, total-time = 10.99s
nb-facts=<Fact-27647>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve 
6 6
. . 1 1 . .
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . 1 1 . .
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00304198265075684
start create-csp-variables
start create-labels 0.000584125518798828
start init-physical-csp-links 0.00376105308532715
start init-physical-non-csp-links 1.73861122131348
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.401237010955811
     start init-physical-BN-non-csp-links at local time 1.54967403411865
     start init-physical-BP-non-csp-links at local time 2.9080810546875
     end init-physical-BP-non-csp-links at local time 20.2475161552429
end init-physical-non-csp-links 21.9861640930176
start init-corner-B-c-values 21.989424943924
start init-outer-B-candidates 21.9894850254059
start init-outer-I-candidates 21.9899671077728
start init-H-candidates 21.9902009963989
start init-V-candidates 21.9913640022278
start init-P-candidates 21.9924011230469
start init-inner-I-candidates 21.99453997612
start init-inner-N-and-B-candidates 21.9951360225677
start solution 22.0001540184021
entering BRT
w[1]-adjacent-1-1-on-edge-in-r1{c3 c4} ==> Vr1c4 = 0
1166 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 409 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   : 1   1 :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 22.0s, solve-time = 1.68s, total-time = 23.68s
nb-facts=<Fact-37708>
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
. 1 1 . .
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
. 1 1 . .

start init-grid-structure 0.00378918647766113
start create-csp-variables
start create-labels 0.000437021255493164
start init-physical-csp-links 0.00273895263671875
start init-physical-non-csp-links 0.887058019638062
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203877925872803
     start init-physical-BN-non-csp-links at local time 0.750392913818359
     start init-physical-BP-non-csp-links at local time 1.28676104545593
     end init-physical-BP-non-csp-links at local time 10.0443198680878
end init-physical-non-csp-links 10.9314260482788
start init-corner-B-c-values 10.9355211257935
start init-outer-B-candidates 10.9355630874634
start init-outer-I-candidates 10.9359030723572
start init-H-candidates 10.9360871315002
start init-V-candidates 10.937007188797
start init-P-candidates 10.9377830028534
start init-inner-I-candidates 10.9390962123871
start init-inner-N-and-B-candidates 10.9395260810852
start solution 10.9428579807281
entering BRT
w[1]-adjacent-1-1-on-edge-in-r5{c2 c3} ==> Vr5c3 = 0
801 candidates, 0 csp-links and 0 links. Density = 0.0%
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
.....................
:   : 1   1 :   :   :
.....................

init-time = 10.94s, solve-time = 0.77s, total-time = 11.71s
nb-facts=<Fact-27647>
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
1 . . . .
1 . . . .
. . . . .
. . . . .

start init-grid-structure 0.00238490104675293
start create-csp-variables
start create-labels 0.000642061233520508
start init-physical-csp-links 0.00335597991943359
start init-physical-non-csp-links 0.863749027252197
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.199388027191162
     start init-physical-BN-non-csp-links at local time 0.783164024353027
     start init-physical-BP-non-csp-links at local time 1.49132704734802
     end init-physical-BP-non-csp-links at local time 10.6645379066467
end init-physical-non-csp-links 11.5283160209656
start init-corner-B-c-values 11.5309209823608
start init-outer-B-candidates 11.5309598445892
start init-outer-I-candidates 11.5312950611115
start init-H-candidates 11.5314800739288
start init-V-candidates 11.5323898792267
start init-P-candidates 11.5331919193268
start init-inner-I-candidates 11.5345120429993
start init-inner-N-and-B-candidates 11.5348870754242
start solution 11.5382208824158
entering BRT
w[1]-adjacent-1-1-on-edge-in-c1{r2 r3} ==> Hr3c1 = 0
801 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
: 1 :   :   :   :   :
.   .................
: 1 :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.54s, solve-time = 0.84s, total-time = 12.38s
nb-facts=<Fact-27647>
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
. . . . 1
. . . . 1
. . . . .
. . . . .

start init-grid-structure 0.00332808494567871
start create-csp-variables
start create-labels 0.000503063201904297
start init-physical-csp-links 0.00265789031982422
start init-physical-non-csp-links 0.893140077590942
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20027494430542
     start init-physical-BN-non-csp-links at local time 0.796478033065796
     start init-physical-BP-non-csp-links at local time 1.45110392570496
     end init-physical-BP-non-csp-links at local time 10.5081369876862
end init-physical-non-csp-links 11.4013149738312
start init-corner-B-c-values 11.4048609733582
start init-outer-B-candidates 11.4049038887024
start init-outer-I-candidates 11.4052670001984
start init-H-candidates 11.4054579734802
start init-V-candidates 11.4062790870667
start init-P-candidates 11.4070210456848
start init-inner-I-candidates 11.4084761142731
start init-inner-N-and-B-candidates 11.4088389873505
start solution 11.4120380878448
entering BRT
w[1]-adjacent-1-1-on-edge-in-c5{r2 r3} ==> Hr3c5 = 0
801 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 297 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   : 1 :
.................   .
:   :   :   :   : 1 :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.41s, solve-time = 0.78s, total-time = 12.19s
nb-facts=<Fact-27647>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





