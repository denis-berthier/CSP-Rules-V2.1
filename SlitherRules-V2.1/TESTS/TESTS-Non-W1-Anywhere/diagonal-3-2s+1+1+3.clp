
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-2s+1+1+DIAGONAL-2s-3
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





(solve
6 6
. . . . . .
. 3 . . . .
. . 2 . . .
. . 1 1 . .
. . . 3 . .
. . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 . . .
. . 1 1 . .
. . . 3 . .
. . . . . .

start init-grid-structure 0.00267815589904785
start create-csp-variables
start create-labels 0.000571966171264648
start init-physical-csp-links 0.00359702110290527
start init-physical-non-csp-links 1.75278306007385
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.418911933898926
     start init-physical-BN-non-csp-links at local time 1.57006502151489
     start init-physical-BP-non-csp-links at local time 2.99570894241333
     end init-physical-BP-non-csp-links at local time 20.3122611045837
end init-physical-non-csp-links 22.0650849342346
start init-corner-B-c-values 22.0680170059204
start init-outer-B-candidates 22.0680711269379
start init-outer-I-candidates 22.0685210227966
start init-H-candidates 22.0687420368195
start init-V-candidates 22.0698750019073
start init-P-candidates 22.0708620548248
start init-inner-I-candidates 22.0727829933167
start init-inner-N-and-B-candidates 22.0733060836792
start solution 22.077574968338
entering BRT
diag-3-2s-in-...r3c3+1+1-in-r4{c3 c4}+diag-2s-3-in-r5c4... ==> Vr5c4 = 1, Vr3c4 = 1, Vr4c5 = 0, Vr4c3 = 0
1116 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   : 3 :   :   :   :   :
.........................
:   :   : 2 |   :   :   :
.........................
:   :     1 : 1     :   :
.........................
:   :   :   | 3 :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 22.08s, solve-time = 1.87s, total-time = 23.95s
nb-facts=<Fact-37678>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve 
6 6
. . . . . .
. 3 . . . .
. 1 1 . . .
. . 2 . . .
. . . 3 . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. 1 1 . . .
. . 2 . . .
. . . 3 . .
. . . . . .

start init-grid-structure 0.00457310676574707
start create-csp-variables
start create-labels 0.000510931015014648
start init-physical-csp-links 0.00341486930847168
start init-physical-non-csp-links 1.61219000816345
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.354127883911133
     start init-physical-BN-non-csp-links at local time 1.43654084205627
     start init-physical-BP-non-csp-links at local time 2.78126788139343
     end init-physical-BP-non-csp-links at local time 19.4645278453827
end init-physical-non-csp-links 21.0767548084259
start init-corner-B-c-values 21.0815489292145
start init-outer-B-candidates 21.0815939903259
start init-outer-I-candidates 21.0820400714874
start init-H-candidates 21.0825068950653
start init-V-candidates 21.0836179256439
start init-P-candidates 21.0846478939056
start init-inner-I-candidates 21.0867140293121
start init-inner-N-and-B-candidates 21.0872581005096
start solution 21.0916030406952
entering BRT
diag-3-2s-in-...r2c2+1+1-in-r3{c2 c3}+diag-2s-3-in-r4c3... ==> Vr4c3 = 1, Vr2c3 = 1, Vr3c4 = 0, Vr3c2 = 0
1116 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   : 3 |   :   :   :   :
.........................
:     1 : 1     :   :   :
.........................
:   :   | 2 :   :   :   :
.........................
:   :   :   : 3 :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.09s, solve-time = 1.87s, total-time = 22.97s
nb-facts=<Fact-37678>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(solve 
7 7
. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . 1 1 . . .
. . . 2 . . .
. . . . 3 . .
. . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . 1 1 . . .
. . . 2 . . .
. . . . 3 . .
. . . . . . .

start init-grid-structure 0.0038609504699707
start create-csp-variables
start create-labels 0.000685214996337891
start init-physical-csp-links 0.00450515747070312
start init-physical-non-csp-links 2.79973101615906
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.688668012619019
     start init-physical-BN-non-csp-links at local time 2.73067402839661
     start init-physical-BP-non-csp-links at local time 5.40311312675476
     end init-physical-BP-non-csp-links at local time 39.0389051437378
end init-physical-non-csp-links 41.8386800289154
start init-corner-B-c-values 41.8427591323853
start init-outer-B-candidates 41.842805147171
start init-outer-I-candidates 41.8435480594635
start init-H-candidates 41.8438410758972
start init-V-candidates 41.846018075943
start init-P-candidates 41.847932100296
start init-inner-I-candidates 41.8511769771576
start init-inner-N-and-B-candidates 41.8520629405975
start solution 41.8588409423828
entering BRT
diag-3-2s-in-...r3c3+1+1-in-r4{c3 c4}+diag-2s-3-in-r5c4... ==> Vr5c4 = 1, Vr3c4 = 1, Vr4c5 = 0, Vr4c3 = 0
1532 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 535 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.............................
:   :   :   :   :   :   :   :
.............................
:   : 3 :   :   :   :   :   :
.............................
:   :   : 2 |   :   :   :   :
.............................
:   :     1 : 1     :   :   :
.............................
:   :   :   | 2 :   :   :   :
.............................
:   :   :   :   : 3 :   :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 41.86s, solve-time = 3.73s, total-time = 45.59s
nb-facts=<Fact-49306>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve 
7 7
. . . . . . .
. . . . 3 . .
. . . 2 . . .
. . 1 1 . . .
. . 2 . . . .
. 3 . . . . .
. . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . .
. . . . 3 . .
. . . 2 . . .
. . 1 1 . . .
. . 2 . . . .
. 3 . . . . .
. . . . . . .

start init-grid-structure 0.00611305236816406
start create-csp-variables
start create-labels 0.000688791275024414
start init-physical-csp-links 0.00448083877563477
start init-physical-non-csp-links 2.74781894683838
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.605042934417725
     start init-physical-BN-non-csp-links at local time 2.45223498344421
     start init-physical-BP-non-csp-links at local time 4.87118887901306
     end init-physical-BP-non-csp-links at local time 33.9217720031738
end init-physical-non-csp-links 36.6696348190308
start init-corner-B-c-values 36.675968170166
start init-outer-B-candidates 36.6760141849518
start init-outer-I-candidates 36.6765451431274
start init-H-candidates 36.6767690181732
start init-V-candidates 36.6782779693604
start init-P-candidates 36.6795830726624
start init-inner-I-candidates 36.6820771694183
start init-inner-N-and-B-candidates 36.6827721595764
start solution 36.6886389255524
entering BRT
diag-3-2s-in-...r3c4+1+1-in-r4{c3 c4}+diag-2s-3-in-r5c3... ==> Vr5c4 = 1, Vr3c4 = 1, Vr4c5 = 0, Vr4c3 = 0
1532 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 535 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   : 3 :   :   :
.............................
:   :   :   | 2 :   :   :   :
.............................
:   :     1 : 1     :   :   :
.............................
:   :   : 2 |   :   :   :   :
.............................
:   : 3 :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 36.69s, solve-time = 3.73s, total-time = 40.42s
nb-facts=<Fact-49306>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve 
6 6
. . . . . .
. 3 . . . .
. . 2 1 . .
. . . 1 3 .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 1 . .
. . . 1 3 .
. . . . . .
. . . . . .

start init-grid-structure 0.0059659481048584
start create-csp-variables
start create-labels 0.000634908676147461
start init-physical-csp-links 0.00418996810913086
start init-physical-non-csp-links 1.61494183540344
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.373426914215088
     start init-physical-BN-non-csp-links at local time 1.30609488487244
     start init-physical-BP-non-csp-links at local time 2.41829085350037
     end init-physical-BP-non-csp-links at local time 19.7961809635162
end init-physical-non-csp-links 21.4111609458923
start init-corner-B-c-values 21.4173519611359
start init-outer-B-candidates 21.4173920154572
start init-outer-I-candidates 21.4177720546722
start init-H-candidates 21.4179809093475
start init-V-candidates 21.4190039634705
start init-P-candidates 21.4199998378754
start init-inner-I-candidates 21.4222588539124
start init-inner-N-and-B-candidates 21.4228188991547
start solution 21.427225112915
entering BRT
diag-3-2s-in-...r3c3+1+1-in-c4{r3 r4}+diag-2s-3-in-r4c5... ==> Hr4c5 = 1, Hr4c3 = 1, Hr5c4 = 0, Hr3c4 = 0
1120 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   : 3 :   :   :   :   :
.............   .........
:   :   : 2 : 1 :   :   :
.........———.....———.....
:   :   :   : 1 : 3 :   :
.............   .........
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.43s, solve-time = 1.88s, total-time = 23.31s
nb-facts=<Fact-37678>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve 
6 6
. . . . . .
. 3 1 . . .
. . 1 2 . .
. . . . 3 .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 1 . . .
. . 1 2 . .
. . . . 3 .
. . . . . .
. . . . . .

start init-grid-structure 0.00354719161987305
start create-csp-variables
start create-labels 0.000555038452148438
start init-physical-csp-links 0.00368499755859375
start init-physical-non-csp-links 1.62193608283997
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.382114887237549
     start init-physical-BN-non-csp-links at local time 1.45057892799377
     start init-physical-BP-non-csp-links at local time 2.7990128993988
     end init-physical-BP-non-csp-links at local time 19.7114748954773
end init-physical-non-csp-links 21.3334491252899
start init-corner-B-c-values 21.3372092247009
start init-outer-B-candidates 21.3372502326965
start init-outer-I-candidates 21.3376381397247
start init-H-candidates 21.3378510475159
start init-V-candidates 21.3389132022858
start init-P-candidates 21.3399260044098
start init-inner-I-candidates 21.3418052196503
start init-inner-N-and-B-candidates 21.3423161506653
start solution 21.3467772006989
entering BRT
diag-3-2s-in-...r2c2+1+1-in-c3{r2 r3}+diag-2s-3-in-r3c4... ==> Hr3c4 = 1, Hr3c2 = 1, Hr4c3 = 0, Hr2c3 = 0
1120 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........   .............
:   : 3 : 1 :   :   :   :
.....———.....———.........
:   :   : 1 : 2 :   :   :
.........   .............
:   :   :   :   : 3 :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.35s, solve-time = 1.87s, total-time = 23.22s
nb-facts=<Fact-37678>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************








(solve 
7 7
. . . . . . .
. 3 . . . . .
. . 2 1 . . .
. . . 1 2 . .
. . . . . 3 .
. . . . . . .
. . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . .
. 3 . . . . .
. . 2 1 . . .
. . . 1 2 . .
. . . . . 3 .
. . . . . . .
. . . . . . .

start init-grid-structure 0.00413322448730469
start create-csp-variables
start create-labels 0.00065302848815918
start init-physical-csp-links 0.00475192070007324
start init-physical-non-csp-links 2.81925392150879
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.709969997406006
     start init-physical-BN-non-csp-links at local time 2.75606894493103
     start init-physical-BP-non-csp-links at local time 5.46479892730713
     end init-physical-BP-non-csp-links at local time 38.3477230072021
end init-physical-non-csp-links 41.1670160293579
start init-corner-B-c-values 41.1713440418243
start init-outer-B-candidates 41.1713900566101
start init-outer-I-candidates 41.1718971729279
start init-H-candidates 41.1721181869507
start init-V-candidates 41.1738312244415
start init-P-candidates 41.1751871109009
start init-inner-I-candidates 41.1777670383453
start init-inner-N-and-B-candidates 41.1784591674805
start solution 41.1843149662018
entering BRT
diag-3-2s-in-...r3c3+1+1-in-c4{r3 r4}+diag-2s-3-in-r4c5... ==> Hr4c5 = 1, Hr4c3 = 1, Hr5c4 = 0, Hr3c4 = 0
1536 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 535 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.............................
:   :   :   :   :   :   :   :
.............................
:   : 3 :   :   :   :   :   :
.............   .............
:   :   : 2 : 1 :   :   :   :
.........———.....———.........
:   :   :   : 1 : 2 :   :   :
.............   .............
:   :   :   :   :   : 3 :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 41.18s, solve-time = 3.72s, total-time = 44.91s
nb-facts=<Fact-49306>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve 
7 7
. . . . . . .
. . . . . 3 .
. . . 1 2 . .
. . 2 1 . . .
. 3 . . . . .
. . . . . . .
. . . . . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . .
. . . . . 3 .
. . . 1 2 . .
. . 2 1 . . .
. 3 . . . . .
. . . . . . .
. . . . . . .

start init-grid-structure 0.00491595268249512
start create-csp-variables
start create-labels 0.000677824020385742
start init-physical-csp-links 0.00486183166503906
start init-physical-non-csp-links 2.58200001716614
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.634752988815308
     start init-physical-BN-non-csp-links at local time 2.35102605819702
     start init-physical-BP-non-csp-links at local time 4.57816410064697
     end init-physical-BP-non-csp-links at local time 38.6352438926697
end init-physical-non-csp-links 41.2172780036926
start init-corner-B-c-values 41.2223970890045
start init-outer-B-candidates 41.2224481105804
start init-outer-I-candidates 41.2229471206665
start init-H-candidates 41.223179101944
start init-V-candidates 41.2247350215912
start init-P-candidates 41.2260620594025
start init-inner-I-candidates 41.2286410331726
start init-inner-N-and-B-candidates 41.2294011116028
start solution 41.2355968952179
entering BRT
diag-3-2s-in-...r4c3+1+1-in-c4{r3 r4}+diag-2s-3-in-r3c5... ==> Hr4c5 = 1, Hr4c3 = 1, Hr5c4 = 0, Hr3c4 = 0
1536 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 535 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   : 3 :   :
.............   .............
:   :   :   : 1 : 2 :   :   :
.........———.....———.........
:   :   : 2 : 1 :   :   :   :
.............   .............
:   : 3 :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 41.24s, solve-time = 3.69s, total-time = 44.92s
nb-facts=<Fact-49306>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************








(solve 
8 8
. . . . . . . .
. 3 . . . . . .
. . 2 1 . . . .
. . . 1 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .
. . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . .
. 3 . . . . . .
. . 2 1 . . . .
. . . 1 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .
. . . . . . . .

start init-grid-structure 0.00606584548950195
start create-csp-variables
start create-labels 0.000874042510986328
start init-physical-csp-links 0.00610589981079102
start init-physical-non-csp-links 4.27831101417542
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.13923096656799
     start init-physical-BN-non-csp-links at local time 4.60663795471191
     start init-physical-BP-non-csp-links at local time 9.28401589393616
     end init-physical-BP-non-csp-links at local time 72.7872149944305
end init-physical-non-csp-links 77.0655701160431
start init-corner-B-c-values 77.0718660354614
start init-outer-B-candidates 77.0719130039215
start init-outer-I-candidates 77.0724289417267
start init-H-candidates 77.0726728439331
start init-V-candidates 77.0744650363922
start init-P-candidates 77.0761339664459
start init-inner-I-candidates 77.081209897995
start init-inner-N-and-B-candidates 77.0824019908905
start solution 77.0916128158569
entering BRT
diag-3-2s-in-...r3c3+1+1-in-c4{r3 r4}+diag-2s-3-in-r4c5... ==> Hr4c5 = 1, Hr4c3 = 1, Hr5c4 = 0, Hr3c4 = 0
2016 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 682 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................................
:   :   :   :   :   :   :   :   :
.................................
:   : 3 :   :   :   :   :   :   :
.............   .................
:   :   : 2 : 1 :   :   :   :   :
.........———.....———.............
:   :   :   : 1 : 2 :   :   :   :
.............   .................
:   :   :   :   :   : 2 :   :   :
.................................
:   :   :   :   :   :   : 3 :   :
.................................
:   :   :   :   :   :   :   :   :
.................................
:   :   :   :   :   :   :   :   :
.................................

init-time = 1m 17.09s, solve-time = 7.76s, total-time = 1m 24.85s
nb-facts=<Fact-62514>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
9 9
. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 1 . . . .
. . . . 1 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .
. . . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 1 . . . .
. . . . 1 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .
. . . . . . . . .

start init-grid-structure 0.0061500072479248
start create-csp-variables
start create-labels 0.00133895874023438
start init-physical-csp-links 0.00800681114196777
start init-physical-non-csp-links 6.24273085594177
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.67683887481689
     start init-physical-BN-non-csp-links at local time 6.12993693351746
     start init-physical-BP-non-csp-links at local time 12.1068429946899
     end init-physical-BP-non-csp-links at local time 112.365277051926
end init-physical-non-csp-links 118.608049869537
start init-corner-B-c-values 118.614432811737
start init-outer-B-candidates 118.614481925964
start init-outer-I-candidates 118.615072011948
start init-H-candidates 118.615360975266
start init-V-candidates 118.617615938187
start init-P-candidates 118.619758844376
start init-inner-I-candidates 118.623982906342
start init-inner-N-and-B-candidates 118.625211954117
start solution 118.635874986649
entering BRT
diag-3-2s-in-...r4c4+1+1-in-c5{r4 r5}+diag-2s-3-in-r5c6... ==> Hr5c6 = 1, Hr5c4 = 1, Hr6c5 = 0, Hr4c5 = 0
2560 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 847 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   : 3 :   :   :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.................   .................
:   :   :   : 2 : 1 :   :   :   :   :
.............———.....———.............
:   :   :   :   : 1 : 2 :   :   :   :
.................   .................
:   :   :   :   :   :   : 2 :   :   :
.....................................
:   :   :   :   :   :   :   : 3 :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................

init-time = 1m 58.64s, solve-time = 11.76s, total-time = 2m 10.4s
nb-facts=<Fact-77300>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
