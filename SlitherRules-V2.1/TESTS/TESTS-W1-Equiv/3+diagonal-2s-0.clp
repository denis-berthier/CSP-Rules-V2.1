
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 3+DIAGONAL-2s-0
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
5 5 
. . . . .
. 3 2 . .
. . . 0 . 
. . . . .
. . . . . 
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 2 . .
. . . 0 .
. . . . .
. . . . .

start init-grid-structure 0.00268983840942383
start create-csp-variables
start create-labels 0.000629901885986328
start init-physical-csp-links 0.00288677215576172
start init-physical-non-csp-links 0.873531818389893
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20753288269043
     start init-physical-BN-non-csp-links at local time 0.796680927276611
     start init-physical-BP-non-csp-links at local time 1.51872086524963
     end init-physical-BP-non-csp-links at local time 10.4653768539429
end init-physical-non-csp-links 11.3389477729797
start init-corner-B-c-values 11.3419117927551
start init-outer-B-candidates 11.3419528007507
start init-outer-I-candidates 11.342307806015
start init-H-candidates 11.3424909114838
start init-V-candidates 11.3434429168701
start init-P-candidates 11.3441808223724
start init-inner-I-candidates 11.3455328941345
start init-inner-N-and-B-candidates 11.3459248542786
start solution 11.3489210605621
entering BRT
w0-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[1]-3+diagonal-2-0-in-{r2c2+r2c3...r3c4} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.....   .....
:             0     :
.............   .....
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.35s, solve-time = 0.97s, total-time = 12.32s
nb-facts=<Fact-27670>
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
. 3 2 . .
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
. 3 2 . .
. . . . .

start init-grid-structure 0.00343585014343262
start create-csp-variables
start create-labels 0.000437021255493164
start init-physical-csp-links 0.00278091430664062
start init-physical-non-csp-links 0.887563943862915
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.185978889465332
     start init-physical-BN-non-csp-links at local time 0.758717060089111
     start init-physical-BP-non-csp-links at local time 1.46788597106934
     end init-physical-BP-non-csp-links at local time 10.5862979888916
end init-physical-non-csp-links 11.47389793396
start init-corner-B-c-values 11.4775459766388
start init-outer-B-candidates 11.4776060581207
start init-outer-I-candidates 11.4781000614166
start init-H-candidates 11.4783508777618
start init-V-candidates 11.4796109199524
start init-P-candidates 11.4805998802185
start init-inner-I-candidates 11.482311964035
start init-inner-N-and-B-candidates 11.4827790260315
start solution 11.4869539737701
entering BRT
w0-0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
w[1]-3+diagonal-2-0-in-{r4c2+r4c3...r3c4} ==> Vr4c2 = 1, Hr4c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr4c1 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:             0     :
.   .———.....   .....
:   | 3 : 2 :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.49s, solve-time = 1.07s, total-time = 12.56s
nb-facts=<Fact-27670>
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
. . 2 3 .
. 0 . . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 2 3 .
. 0 . . .
. . . . .
. . . . .

start init-grid-structure 0.00364303588867188
start create-csp-variables
start create-labels 0.000420093536376953
start init-physical-csp-links 0.00330400466918945
start init-physical-non-csp-links 0.880629062652588
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.209388971328735
     start init-physical-BN-non-csp-links at local time 0.819638013839722
     start init-physical-BP-non-csp-links at local time 1.52369689941406
     end init-physical-BP-non-csp-links at local time 10.7001469135284
end init-physical-non-csp-links 11.5808160305023
start init-corner-B-c-values 11.5846629142761
start init-outer-B-candidates 11.5847139358521
start init-outer-I-candidates 11.5850749015808
start init-H-candidates 11.5852620601654
start init-V-candidates 11.5861129760742
start init-P-candidates 11.5868408679962
start init-inner-I-candidates 11.5882170200348
start init-inner-N-and-B-candidates 11.5885858535767
start solution 11.5918788909912
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-3+diagonal-2-0-in-{r2c4+r2c3...r3c2} ==> Vr2c5 = 1, Hr3c4 = 1, Vr3c5 = 0, Vr3c4 = 0, Hr3c5 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   : 2 : 3 |   :
.....   .....———.   .
:     0             :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.59s, solve-time = 1.09s, total-time = 12.68s
nb-facts=<Fact-27670>
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
. . 2 3 .
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
. . 2 3 .
. . . . .

start init-grid-structure 0.00334310531616211
start create-csp-variables
start create-labels 0.000444889068603516
start init-physical-csp-links 0.00274896621704102
start init-physical-non-csp-links 0.861212015151978
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.204365968704224
     start init-physical-BN-non-csp-links at local time 0.775542974472046
     start init-physical-BP-non-csp-links at local time 1.43725299835205
     end init-physical-BP-non-csp-links at local time 10.7351810932159
end init-physical-non-csp-links 11.5964260101318
start init-corner-B-c-values 11.599986076355
start init-outer-B-candidates 11.6000289916992
start init-outer-I-candidates 11.6003999710083
start init-H-candidates 11.6005771160126
start init-V-candidates 11.6014020442963
start init-P-candidates 11.6021239757538
start init-inner-I-candidates 11.6034491062164
start init-inner-N-and-B-candidates 11.6038150787354
start solution 11.6068511009216
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-3+diagonal-2-0-in-{r4c4+r4c3...r3c2} ==> Vr4c5 = 1, Hr4c4 = 1, Vr3c5 = 0, Vr3c4 = 0, Hr4c5 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0             :
.....   .....———.   .
:   :   : 2 : 3 |   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.61s, solve-time = 1.07s, total-time = 12.68s
nb-facts=<Fact-27670>
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
. . 0 . .
. . . 2 . 
. . . 3 .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 0 . .
. . . 2 .
. . . 3 .
. . . . .

start init-grid-structure 0.00360488891601562
start create-csp-variables
start create-labels 0.000520944595336914
start init-physical-csp-links 0.00318098068237305
start init-physical-non-csp-links 0.894059896469116
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.204288005828857
     start init-physical-BN-non-csp-links at local time 0.791136026382446
     start init-physical-BP-non-csp-links at local time 1.49977493286133
     end init-physical-BP-non-csp-links at local time 10.7044539451599
end init-physical-non-csp-links 11.5985498428345
start init-corner-B-c-values 11.6023910045624
start init-outer-B-candidates 11.6024310588837
start init-outer-I-candidates 11.6027729511261
start init-H-candidates 11.6029551029205
start init-V-candidates 11.6037850379944
start init-P-candidates 11.6045100688934
start init-inner-I-candidates 11.6063868999481
start init-inner-N-and-B-candidates 11.606987953186
start solution 11.6113510131836
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-3+diagonal-2-0-in-{r4c4+r3c4...r2c3} ==> Vr4c4 = 1, Hr5c4 = 1, Vr5c4 = 0, Hr5c3 = 0, Hr4c3 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   : 2 :   :
.........   .........
:   :   :   | 3 :   :
.........   .———.....
:   :   :       :   :
.....................

init-time = 11.61s, solve-time = 1.02s, total-time = 12.64s
nb-facts=<Fact-27670>
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
. . 0 . .
. 2 . . . 
. 3 . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 0 . .
. 2 . . .
. 3 . . .
. . . . .

start init-grid-structure 0.00296998023986816
start create-csp-variables
start create-labels 0.000479221343994141
start init-physical-csp-links 0.00285100936889648
start init-physical-non-csp-links 0.90373706817627
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.211960077285767
     start init-physical-BN-non-csp-links at local time 0.779494047164917
     start init-physical-BP-non-csp-links at local time 1.47719311714172
     end init-physical-BP-non-csp-links at local time 10.7654891014099
end init-physical-non-csp-links 11.6692640781403
start init-corner-B-c-values 11.6724519729614
start init-outer-B-candidates 11.6724920272827
start init-outer-I-candidates 11.672837972641
start init-H-candidates 11.6730229854584
start init-V-candidates 11.6738629341125
start init-P-candidates 11.6746029853821
start init-inner-I-candidates 11.6759688854218
start init-inner-N-and-B-candidates 11.6763470172882
start solution 11.6793808937073
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-3+diagonal-2-0-in-{r4c2+r3c2...r2c3} ==> Vr4c3 = 1, Hr5c2 = 1, Vr5c3 = 0, Hr5c3 = 0, Hr4c3 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   : 2 :   :   :   :
.........   .........
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................

init-time = 11.68s, solve-time = 1.0s, total-time = 12.68s
nb-facts=<Fact-27670>
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
. . . 2 . 
. . 0 . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. . . 2 .
. . 0 . .
. . . . .

start init-grid-structure 0.00256800651550293
start create-csp-variables
start create-labels 0.000455141067504883
start init-physical-csp-links 0.00329899787902832
start init-physical-non-csp-links 0.924110174179077
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.214252948760986
     start init-physical-BN-non-csp-links at local time 0.791254043579102
     start init-physical-BP-non-csp-links at local time 1.52717995643616
     end init-physical-BP-non-csp-links at local time 10.8187839984894
end init-physical-non-csp-links 11.7429280281067
start init-corner-B-c-values 11.7457318305969
start init-outer-B-candidates 11.7457759380341
start init-outer-I-candidates 11.7462639808655
start init-H-candidates 11.7466008663177
start init-V-candidates 11.7479228973389
start init-P-candidates 11.7491028308868
start init-inner-I-candidates 11.7509989738464
start init-inner-N-and-B-candidates 11.7514588832855
start solution 11.7547550201416
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[1]-3+diagonal-2-0-in-{r2c4+r3c4...r4c3} ==> Vr2c4 = 1, Hr2c4 = 1, Vr1c4 = 0, Hr3c3 = 0, Hr2c3 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :       :   :
.........   .———.....
:   :   :   | 3 :   :
.........   .........
:   :   :   : 2 :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.75s, solve-time = 1.03s, total-time = 12.78s
nb-facts=<Fact-27670>
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
. 2 . . . 
. . 0 . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. 2 . . .
. . 0 . .
. . . . .

start init-grid-structure 0.00300812721252441
start create-csp-variables
start create-labels 0.000454187393188477
start init-physical-csp-links 0.00275516510009766
start init-physical-non-csp-links 0.901595115661621
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.198983907699585
     start init-physical-BN-non-csp-links at local time 0.773058891296387
     start init-physical-BP-non-csp-links at local time 1.45917987823486
     end init-physical-BP-non-csp-links at local time 10.324590921402
end init-physical-non-csp-links 11.2262291908264
start init-corner-B-c-values 11.229483127594
start init-outer-B-candidates 11.2295241355896
start init-outer-I-candidates 11.2299580574036
start init-H-candidates 11.2301361560822
start init-V-candidates 11.2309429645538
start init-P-candidates 11.2317190170288
start init-inner-I-candidates 11.2330610752106
start init-inner-N-and-B-candidates 11.2334251403809
start solution 11.2365307807922
entering BRT
w0-0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
w[1]-3+diagonal-2-0-in-{r2c2+r3c2...r4c3} ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
745 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :       :   :   :
.....———.   .........
:   : 3 |   :   :   :
.........   .........
:   : 2 :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.24s, solve-time = 1.1s, total-time = 12.34s
nb-facts=<Fact-27670>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+DIAGONAL-2-2-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(solve 
6 6 
. . . . . .
. 3 2 . . .
. . . 2 . .
. . . . 0 .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 2 . . .
. . . 2 . .
. . . . 0 .
. . . . . .
. . . . . .

start init-grid-structure 0.00310015678405762
start create-csp-variables
start create-labels 0.00054478645324707
start init-physical-csp-links 0.0035557746887207
start init-physical-non-csp-links 1.77588391304016
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.426639080047607
     start init-physical-BN-non-csp-links at local time 1.60370802879333
     start init-physical-BP-non-csp-links at local time 3.01285004615784
     end init-physical-BP-non-csp-links at local time 21.3567378520966
end init-physical-non-csp-links 23.1326498985291
start init-corner-B-c-values 23.1359550952911
start init-outer-B-candidates 23.1360001564026
start init-outer-I-candidates 23.1363790035248
start init-H-candidates 23.136568069458
start init-V-candidates 23.1376559734344
start init-P-candidates 23.1386561393738
start init-inner-I-candidates 23.1405510902405
start init-inner-N-and-B-candidates 23.1410591602325
start solution 23.1455709934235
entering BRT
w0-0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
w[1]-3+diagonal-2s-0-in-{r2c2+r2c3...r3c4 r4c5} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   | 3 : 2 :   :   :   :
.   .———.................
:           : 2 :   :   :
.................   .....
:   :   :   :     0     :
.................   .....
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 23.15s, solve-time = 2.39s, total-time = 25.54s
nb-facts=<Fact-37735>
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
. . . . 0 .
. . . 2 . .
. 3 2 . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . .
. . . . 0 .
. . . 2 . .
. 3 2 . . .
. . . . . .

start init-grid-structure 0.00353407859802246
start create-csp-variables
start create-labels 0.000560998916625977
start init-physical-csp-links 0.0034949779510498
start init-physical-non-csp-links 1.62408208847046
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.386780023574829
     start init-physical-BN-non-csp-links at local time 1.46029496192932
     start init-physical-BP-non-csp-links at local time 2.81681203842163
     end init-physical-BP-non-csp-links at local time 20.1077210903168
end init-physical-non-csp-links 21.7318489551544
start init-corner-B-c-values 21.7356071472168
start init-outer-B-candidates 21.735650062561
start init-outer-I-candidates 21.7360811233521
start init-H-candidates 21.7362790107727
start init-V-candidates 21.7373621463776
start init-P-candidates 21.7383580207825
start init-inner-I-candidates 21.7402229309082
start init-inner-N-and-B-candidates 21.7407400608063
start solution 21.7450580596924
entering BRT
w0-0-in-r3c5 ==> Hr4c5 = 0, Hr3c5 = 0, Vr3c6 = 0, Vr3c5 = 0
w[1]-3+diagonal-2s-0-in-{r5c2+r5c3...r4c4 r3c5} ==> Vr5c2 = 1, Hr5c2 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr5c1 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.................   .....
:   :   :   :     0     :
.................   .....
:           : 2 :   :   :
.   .———.................
:   | 3 : 2 :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.75s, solve-time = 2.12s, total-time = 23.87s
nb-facts=<Fact-37735>
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
. . . 2 3 .
. . 2 . . . 
. 0 . . . .
. . . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . 2 3 .
. . 2 . . .
. 0 . . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00348210334777832
start create-csp-variables
start create-labels 0.000533819198608398
start init-physical-csp-links 0.00349187850952148
start init-physical-non-csp-links 1.58677387237549
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.392092943191528
     start init-physical-BN-non-csp-links at local time 1.48127603530884
     start init-physical-BP-non-csp-links at local time 2.85693502426147
     end init-physical-BP-non-csp-links at local time 20.5289900302887
end init-physical-non-csp-links 22.1157999038696
start init-corner-B-c-values 22.1194970607758
start init-outer-B-candidates 22.1195359230042
start init-outer-I-candidates 22.1199169158936
start init-H-candidates 22.1201300621033
start init-V-candidates 22.1211919784546
start init-P-candidates 22.122209072113
start init-inner-I-candidates 22.1240749359131
start init-inner-N-and-B-candidates 22.1245980262756
start solution 22.1289489269257
entering BRT
w0-0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
w[1]-3+diagonal-2s-0-in-{r2c5+r2c4...r3c3 r4c2} ==> Vr2c6 = 1, Hr3c5 = 1, Vr3c6 = 0, Vr3c5 = 0, Hr3c6 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   : 2 : 3 |   :
.................———.   .
:   :   : 2 :           :
.....   .................
:     0     :   :   :   :
.....   .................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 22.13s, solve-time = 2.14s, total-time = 24.27s
nb-facts=<Fact-37735>
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
. 0 . . . .
. . 2 . . . 
. . . 2 3 .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . .
. 0 . . . .
. . 2 . . .
. . . 2 3 .
. . . . . .

start init-grid-structure 0.00350403785705566
start create-csp-variables
start create-labels 0.000640869140625
start init-physical-csp-links 0.00398492813110352
start init-physical-non-csp-links 1.63632702827454
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.381329774856567
     start init-physical-BN-non-csp-links at local time 1.49620199203491
     start init-physical-BP-non-csp-links at local time 2.8208270072937
     end init-physical-BP-non-csp-links at local time 21.2411148548126
end init-physical-non-csp-links 22.8774778842926
start init-corner-B-c-values 22.8812720775604
start init-outer-B-candidates 22.8813140392303
start init-outer-I-candidates 22.8816959857941
start init-H-candidates 22.8819010257721
start init-V-candidates 22.8829739093781
start init-P-candidates 22.8839719295502
start init-inner-I-candidates 22.8858659267426
start init-inner-N-and-B-candidates 22.8863930702209
start solution 22.8907849788666
entering BRT
w0-0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
w[1]-3+diagonal-2s-0-in-{r5c5+r5c4...r4c3 r3c2} ==> Vr5c6 = 1, Hr5c5 = 1, Vr4c6 = 0, Vr4c5 = 0, Hr5c6 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.....   .................
:     0     :   :   :   :
.....   .................
:   :   : 2 :           :
.................———.   .
:   :   :   : 2 : 3 |   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 22.89s, solve-time = 2.25s, total-time = 25.14s
nb-facts=<Fact-37735>
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
. . 0 . . .
. . . 2 . .
. . . . 2 . 
. . . . 3 .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . 0 . . .
. . . 2 . .
. . . . 2 .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00374007225036621
start create-csp-variables
start create-labels 0.000563144683837891
start init-physical-csp-links 0.00369000434875488
start init-physical-non-csp-links 1.63788509368896
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.385603904724121
     start init-physical-BN-non-csp-links at local time 1.44586396217346
     start init-physical-BP-non-csp-links at local time 2.75712084770203
     end init-physical-BP-non-csp-links at local time 21.1642220020294
end init-physical-non-csp-links 22.8021440505981
start init-corner-B-c-values 22.8060879707336
start init-outer-B-candidates 22.8061370849609
start init-outer-I-candidates 22.8065419197083
start init-H-candidates 22.8067679405212
start init-V-candidates 22.8080019950867
start init-P-candidates 22.8091111183167
start init-inner-I-candidates 22.8118920326233
start init-inner-N-and-B-candidates 22.8127279281616
start solution 22.8190820217133
entering BRT
w0-0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
w[1]-3+diagonal-2s-0-in-{r5c5+r4c5...r3c4 r2c3} ==> Vr5c5 = 1, Hr6c5 = 1, Vr6c5 = 0, Hr6c4 = 0, Hr5c4 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........   .............
:   :     0     :   :   :
.........   .............
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 2 :   :
.............   .........
:   :   :   :   | 3 :   :
.............   .———.....
:   :   :   :       :   :
.........................

init-time = 22.82s, solve-time = 2.33s, total-time = 25.15s
nb-facts=<Fact-37735>
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
. . . 0 . .
. . 2 . . .
. 2 . . . .
. 3 . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . 0 . .
. . 2 . . .
. 2 . . . .
. 3 . . . .
. . . . . .

start init-grid-structure 0.0035099983215332
start create-csp-variables
start create-labels 0.000608921051025391
start init-physical-csp-links 0.00383186340332031
start init-physical-non-csp-links 1.5921790599823
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.384201049804688
     start init-physical-BN-non-csp-links at local time 1.48356699943542
     start init-physical-BP-non-csp-links at local time 2.79743695259094
     end init-physical-BP-non-csp-links at local time 22.1582009792328
end init-physical-non-csp-links 23.7504189014435
start init-corner-B-c-values 23.7541470527649
start init-outer-B-candidates 23.7541990280151
start init-outer-I-candidates 23.7546532154083
start init-H-candidates 23.7548739910126
start init-V-candidates 23.7559971809387
start init-P-candidates 23.7570900917053
start init-inner-I-candidates 23.7590701580048
start init-inner-N-and-B-candidates 23.759624004364
start solution 23.7642798423767
entering BRT
w0-0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
w[1]-3+diagonal-2s-0-in-{r5c2+r4c2...r3c3 r2c4} ==> Vr5c3 = 1, Hr6c2 = 1, Vr6c3 = 0, Hr6c3 = 0, Hr5c3 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .........
:   :   : 2 :   :   :   :
.........................
:   : 2 :   :   :   :   :
.........   .............
:   : 3 |   :   :   :   :
.....———.   .............
:   :       :   :   :   :
.........................

init-time = 23.76s, solve-time = 2.45s, total-time = 26.21s
nb-facts=<Fact-37735>
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
. . . . 3 .
. . . . 2 . 
. . . 2 . .
. . 0 . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . 3 .
. . . . 2 .
. . . 2 . .
. . 0 . . .
. . . . . .

start init-grid-structure 0.00424408912658691
start create-csp-variables
start create-labels 0.000555038452148438
start init-physical-csp-links 0.00399184226989746
start init-physical-non-csp-links 1.70620083808899
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.359447002410889
     start init-physical-BN-non-csp-links at local time 1.45358109474182
     start init-physical-BP-non-csp-links at local time 2.76708197593689
     end init-physical-BP-non-csp-links at local time 22.0865299701691
end init-physical-non-csp-links 23.792760848999
start init-corner-B-c-values 23.7972331047058
start init-outer-B-candidates 23.7972869873047
start init-outer-I-candidates 23.7977459430695
start init-H-candidates 23.7979679107666
start init-V-candidates 23.7994999885559
start init-P-candidates 23.8008210659027
start init-inner-I-candidates 23.8030259609222
start init-inner-N-and-B-candidates 23.8036799430847
start solution 23.8087840080261
entering BRT
w0-0-in-r5c3 ==> Hr6c3 = 0, Hr5c3 = 0, Vr5c4 = 0, Vr5c3 = 0
w[1]-3+diagonal-2s-0-in-{r2c5+r3c5...r4c4 r5c3} ==> Vr2c5 = 1, Hr2c5 = 1, Vr1c5 = 0, Hr3c4 = 0, Hr2c4 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :       :   :
.............   .———.....
:   :   :   :   | 3 :   :
.............   .........
:   :   :   :   : 2 :   :
.........................
:   :   :   : 2 :   :   :
.........   .............
:   :     0     :   :   :
.........   .............
:   :   :   :   :   :   :
.........................

init-time = 23.81s, solve-time = 2.18s, total-time = 25.99s
nb-facts=<Fact-37735>
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
. 3 . . . .
. 2 . . . .
. . 2 . . .
. . . 0 . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. 2 . . . .
. . 2 . . .
. . . 0 . .
. . . . . .

start init-grid-structure 0.00456786155700684
start create-csp-variables
start create-labels 0.000528812408447266
start init-physical-csp-links 0.00340080261230469
start init-physical-non-csp-links 1.65420484542847
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.392660140991211
     start init-physical-BN-non-csp-links at local time 1.52415013313293
     start init-physical-BP-non-csp-links at local time 2.83253502845764
     end init-physical-BP-non-csp-links at local time 20.0597009658813
end init-physical-non-csp-links 21.7139439582825
start init-corner-B-c-values 21.7187089920044
start init-outer-B-candidates 21.7187509536743
start init-outer-I-candidates 21.7191519737244
start init-H-candidates 21.7193698883057
start init-V-candidates 21.7204239368439
start init-P-candidates 21.7214047908783
start init-inner-I-candidates 21.7232468128204
start init-inner-N-and-B-candidates 21.723757982254
start solution 21.7281010150909
entering BRT
w0-0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
w[1]-3+diagonal-2s-0-in-{r2c2+r3c2...r4c3 r5c4} ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
1087 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.........................
:   :       :   :   :   :
.....———.   .............
:   : 3 |   :   :   :   :
.........   .............
:   : 2 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .........
:   :   :   :   :   :   :
.........................

init-time = 21.73s, solve-time = 2.15s, total-time = 23.88s
nb-facts=<Fact-37735>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+DIAGONAL-2-2-2-2-2-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve
9 9
. . . . . . . . .
. 3 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 0 .
. . . . . . . . .
. . . . . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . .
. 3 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 0 .
. . . . . . . . .
. . . . . . . . .

start init-grid-structure 0.0104789733886719
start create-csp-variables
start create-labels 0.00120711326599121
start init-physical-csp-links 0.0082709789276123
start init-physical-non-csp-links 5.26324200630188
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.24914598464966
     start init-physical-BN-non-csp-links at local time 5.32510900497437
     start init-physical-BP-non-csp-links at local time 10.8549580574036
     end init-physical-BP-non-csp-links at local time 133.013828992844
end init-physical-non-csp-links 138.27712392807
start init-corner-B-c-values 138.28783416748
start init-outer-B-candidates 138.287891149521
start init-outer-I-candidates 138.288531064987
start init-H-candidates 138.288843154907
start init-V-candidates 138.291179180145
start init-P-candidates 138.29336309433
start init-inner-I-candidates 138.297621011734
start init-inner-N-and-B-candidates 138.298808097839
start solution 138.309361934662
entering BRT
w[0]-0-in-r7c8 ==> Hr8c8 = 0, Hr7c8 = 0, Vr7c9 = 0, Vr7c8 = 0
w[1]-3+diagonal-2s-0-in-{r2c2+r2c3...r6c7 r7c8} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ o
2497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 847 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   | 3 : 2 :   :   :   :   :   :   :
.   .———.............................
:           : 2 :   :   :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   :   :   : 2 :   :   :
.............................   .....
:   :   :   :   :   :   :     0     :
.............................   .....
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................

init-time = 2m 18.31s, solve-time = 12.8s, total-time = 2m 31.11s
nb-facts=<Fact-77412>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
