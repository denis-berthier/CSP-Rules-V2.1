
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-3-0
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





;;; east

(solve
5 5
. . . . .
. . . . .
. 3 0 . .
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 0 . .
. . . . .
. . . . .

start init-grid-structure 0.00342798233032227
start create-csp-variables
start create-labels 0.000555992126464844
start init-physical-csp-links 0.0032658576965332
start init-physical-non-csp-links 0.863332986831665
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203587055206299
     start init-physical-BN-non-csp-links at local time 0.77171802520752
     start init-physical-BP-non-csp-links at local time 1.42758512496948
     end init-physical-BP-non-csp-links at local time 9.75447201728821
end init-physical-non-csp-links 10.6178479194641
start init-corner-B-c-values 10.6215090751648
start init-outer-B-candidates 10.6215500831604
start init-outer-I-candidates 10.6219041347504
start init-H-candidates 10.6220870018005
start init-V-candidates 10.6229059696198
start init-P-candidates 10.6236290931702
start init-inner-I-candidates 10.625116109848
start init-inner-N-and-B-candidates 10.62575507164
start solution 10.6306309700012
entering BRT
w[0]-0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
w[0]-adjacent-3-0-in-r3{c2 c3} ==> Vr4c3 = 1, Vr2c3 = 1, Vr3c2 = 1, Hr4c2 = 1, Hr3c2 = 1, Vr4c2 = 0, Vr2c2 = 0, Hr4c1 = 0, Hr3c1 = 0
w[1]-3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ o
w[1]-3-in-r3c2-closed-nw-corner ==> Pr4c3 ≠ o
P-single: Pr4c3 = sw
P-single: Pr3c3 = nw
763 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:       |   :   :   :
.   .———.   .........
:   | 3   0     :   :
.   .———.   .........
:       |   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.63s, solve-time = 1.17s, total-time = 11.8s
nb-facts=<Fact-27750>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




;;; west

(solve
5 5
. . . . .
. . . . .
. 0 3 . .
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 0 3 . .
. . . . .
. . . . .

start init-grid-structure 0.00301384925842285
start create-csp-variables
start create-labels 0.000545024871826172
start init-physical-csp-links 0.00343704223632812
start init-physical-non-csp-links 0.896174907684326
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.18599009513855
     start init-physical-BN-non-csp-links at local time 0.719918012619019
     start init-physical-BP-non-csp-links at local time 1.38265299797058
     end init-physical-BP-non-csp-links at local time 10.2691400051117
end init-physical-non-csp-links 11.1653509140015
start init-corner-B-c-values 11.1685838699341
start init-outer-B-candidates 11.1686239242554
start init-outer-I-candidates 11.1689579486847
start init-H-candidates 11.1691370010376
start init-V-candidates 11.1699349880219
start init-P-candidates 11.1706509590149
start init-inner-I-candidates 11.1719498634338
start init-inner-N-and-B-candidates 11.1723170280457
start solution 11.1753380298615
entering BRT
w[0]-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[0]-adjacent-3-0-in-r3{c3 c2} ==> Vr3c4 = 1, Vr4c3 = 1, Vr2c3 = 1, Hr4c3 = 1, Hr3c3 = 1, Vr4c4 = 0, Vr2c4 = 0, Hr4c4 = 0, Hr3c4 = 0
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ o
w[1]-3-in-r3c3-closed-ne-corner ==> Pr4c3 ≠ o
P-single: Pr4c3 = se
P-single: Pr3c3 = ne
763 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   |       :   :
.....   .———.   .....
:     0   3 |   :   :
.....   .———.   .....
:   :   |       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.18s, solve-time = 1.09s, total-time = 12.27s
nb-facts=<Fact-27750>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





;;; south

(solve
5 5
. . . . .
. . 3 . .
. . 0 . .
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 . .
. . 0 . .
. . . . .
. . . . .

start init-grid-structure 0.00301599502563477
start create-csp-variables
start create-labels 0.00040888786315918
start init-physical-csp-links 0.00251889228820801
start init-physical-non-csp-links 0.858457803726196
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.191511869430542
     start init-physical-BN-non-csp-links at local time 0.780081033706665
     start init-physical-BP-non-csp-links at local time 1.49444103240967
     end init-physical-BP-non-csp-links at local time 10.4344840049744
end init-physical-non-csp-links 11.2930428981781
start init-corner-B-c-values 11.2962601184845
start init-outer-B-candidates 11.2963039875031
start init-outer-I-candidates 11.2966871261597
start init-H-candidates 11.2968549728394
start init-V-candidates 11.2976410388947
start init-P-candidates 11.2983469963074
start init-inner-I-candidates 11.2996640205383
start init-inner-N-and-B-candidates 11.3001770973206
start solution 11.30326795578
entering BRT
w[0]-0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
w[0]-adjacent-3-0-in-c3{r2 r3} ==> Vr2c4 = 1, Vr2c3 = 1, Hr3c4 = 1, Hr3c2 = 1, Hr2c3 = 1, Vr1c4 = 0, Vr1c3 = 0, Hr2c4 = 0, Hr2c2 = 0
w[1]-3-in-r2c3-closed-ne-corner ==> Pr3c3 ≠ o
w[1]-3-in-r2c3-closed-nw-corner ==> Pr3c4 ≠ o
P-single: Pr3c4 = ne
P-single: Pr3c3 = nw
763 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :           :   :
.....   .———.   .....
:   :   | 3 |   :   :
.....———.   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.3s, solve-time = 1.26s, total-time = 12.57s
nb-facts=<Fact-27750>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




;;; north

(solve
5 5
. . . . .
. . 0 . .
. . 3 . .
. . . . .
. . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 0 . .
. . 3 . .
. . . . .
. . . . .

start init-grid-structure 0.00226712226867676
start create-csp-variables
start create-labels 0.000424861907958984
start init-physical-csp-links 0.00300097465515137
start init-physical-non-csp-links 0.900024890899658
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.195533990859985
     start init-physical-BN-non-csp-links at local time 0.759865045547485
     start init-physical-BP-non-csp-links at local time 1.43335008621216
     end init-physical-BP-non-csp-links at local time 10.4778590202332
end init-physical-non-csp-links 11.3779227733612
start init-corner-B-c-values 11.3804199695587
start init-outer-B-candidates 11.3804631233215
start init-outer-I-candidates 11.3808200359344
start init-H-candidates 11.3810040950775
start init-V-candidates 11.381824016571
start init-P-candidates 11.3825581073761
start init-inner-I-candidates 11.38387799263
start init-inner-N-and-B-candidates 11.3842360973358
start solution 11.3876230716705
entering BRT
w[0]-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[0]-adjacent-3-0-in-c3{r3 r2} ==> Vr3c4 = 1, Vr3c3 = 1, Hr4c3 = 1, Hr3c4 = 1, Hr3c2 = 1, Vr4c4 = 0, Vr4c3 = 0, Hr4c4 = 0, Hr4c2 = 0
w[1]-3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ o
w[1]-3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ o
P-single: Pr3c3 = sw
P-single: Pr3c4 = se
763 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 294 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....———.   .———.....
:   :   | 3 |   :   :
.....   .———.   .....
:   :           :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.39s, solve-time = 1.19s, total-time = 12.57s
nb-facts=<Fact-27750>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





