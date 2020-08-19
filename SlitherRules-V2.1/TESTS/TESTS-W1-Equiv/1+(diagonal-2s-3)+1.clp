
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 1+DIAGONAL-2s-3+1
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

1+3+1, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------





(solve 
5 5 
. . . . .
. 1 3 . .
. . 1 . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 1 3 . .
. . 1 . .
. . . . .
. . . . .

start init-grid-structure 0.00269293785095215
start create-csp-variables
start create-labels 0.000503778457641602
start init-physical-csp-links 0.00321578979492188
start init-physical-non-csp-links 0.862478971481323
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.211951017379761
     start init-physical-BN-non-csp-links at local time 0.799575090408325
     start init-physical-BP-non-csp-links at local time 1.46953511238098
     end init-physical-BP-non-csp-links at local time 10.8731400966644
end init-physical-non-csp-links 11.7356448173523
start init-corner-B-c-values 11.7385568618774
start init-outer-B-candidates 11.738597869873
start init-outer-I-candidates 11.7389028072357
start init-H-candidates 11.7390809059143
start init-V-candidates 11.7398409843445
start init-P-candidates 11.7406158447266
start init-inner-I-candidates 11.7419469356537
start init-inner-N-and-B-candidates 11.7423210144043
start solution 11.7454400062561
entering BRT
w[1]-1+3+1-in-r2c2+r2c3+r3c3 ==> Hr4c3 = 0, Hr2c2 = 0, Vr3c4 = 0, Vr2c2 = 0
783 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....   .............
:     1 : 3 :   :   :
.....................
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.75s, solve-time = 0.87s, total-time = 12.62s
nb-facts=<Fact-27642>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(solve
5 5
. . . . .
. 1 . . .
. 3 1 . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 1 . . .
. 3 1 . .
. . . . .
. . . . .

start init-grid-structure 0.0023961067199707
start create-csp-variables
start create-labels 0.000462770462036133
start init-physical-csp-links 0.00283694267272949
start init-physical-non-csp-links 0.891881942749023
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203765869140625
     start init-physical-BN-non-csp-links at local time 0.759670972824097
     start init-physical-BP-non-csp-links at local time 1.43157005310059
     end init-physical-BP-non-csp-links at local time 10.5451049804688
end init-physical-non-csp-links 11.4370319843292
start init-corner-B-c-values 11.4396760463715
start init-outer-B-candidates 11.439738035202
start init-outer-I-candidates 11.4401290416718
start init-H-candidates 11.4403550624847
start init-V-candidates 11.4414942264557
start init-P-candidates 11.44242811203
start init-inner-I-candidates 11.4442110061646
start init-inner-N-and-B-candidates 11.444669008255
start solution 11.4490058422089
entering BRT
w[1]-1+3+1-in-r2c2+r3c2+r3c3 ==> Hr4c3 = 0, Hr2c2 = 0, Vr3c4 = 0, Vr2c2 = 0
783 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....   .............
:     1 :   :   :   :
.....................
:   : 3 : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.45s, solve-time = 0.97s, total-time = 12.41s
nb-facts=<Fact-27642>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(solve 
5 5 
. . . . .
. . 1 . .
. 1 3 . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 1 . .
. 1 3 . .
. . . . .
. . . . .

start init-grid-structure 0.00241994857788086
start create-csp-variables
start create-labels 0.000414133071899414
start init-physical-csp-links 0.00248098373413086
start init-physical-non-csp-links 0.868045091629028
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.20922589302063
     start init-physical-BN-non-csp-links at local time 0.796781063079834
     start init-physical-BP-non-csp-links at local time 1.47000694274902
     end init-physical-BP-non-csp-links at local time 9.39921402931213
end init-physical-non-csp-links 10.2672960758209
start init-corner-B-c-values 10.2699239253998
start init-outer-B-candidates 10.269984960556
start init-outer-I-candidates 10.2704298496246
start init-H-candidates 10.2706398963928
start init-V-candidates 10.2718408107758
start init-P-candidates 10.2729249000549
start init-inner-I-candidates 10.2746968269348
start init-inner-N-and-B-candidates 10.2751457691193
start solution 10.2790758609772
entering BRT
w[1]-1+3+1-in-r2c3+r3c3+r3c2 ==> Hr4c2 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr3c2 = 0
783 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :   : 1     :   :
.....................
:     1 : 3 :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.28s, solve-time = 0.99s, total-time = 11.27s
nb-facts=<Fact-27642>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(solve
5 5
. . . . .
. 3 1 . .
. 1 . . .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 1 . .
. 1 . . .
. . . . .
. . . . .

start init-grid-structure 0.0023958683013916
start create-csp-variables
start create-labels 0.000427961349487305
start init-physical-csp-links 0.0025479793548584
start init-physical-non-csp-links 0.884603023529053
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.183872938156128
     start init-physical-BN-non-csp-links at local time 0.759339094161987
     start init-physical-BP-non-csp-links at local time 1.44644904136658
     end init-physical-BP-non-csp-links at local time 10.5220830440521
end init-physical-non-csp-links 11.4067289829254
start init-corner-B-c-values 11.4093809127808
start init-outer-B-candidates 11.4094400405884
start init-outer-I-candidates 11.4097690582275
start init-H-candidates 11.4100780487061
start init-V-candidates 11.4109599590302
start init-P-candidates 11.4117429256439
start init-inner-I-candidates 11.4131288528442
start init-inner-N-and-B-candidates 11.4135689735413
start solution 11.4172399044037
entering BRT
w[1]-1+3+1-in-r2c3+r2c2+r3c2 ==> Hr4c2 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr3c2 = 0
783 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   : 3 : 1     :   :
.....................
:     1 :   :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.42s, solve-time = 0.95s, total-time = 12.36s
nb-facts=<Fact-27642>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

1+DIAGONAL-2s-3+1, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------






(solve
5 5
. . . . .
. . . 3 .
. 1 2 . .
. . 1 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. 1 2 . .
. . 1 . .
. . . . .

start init-grid-structure 0.00225400924682617
start create-csp-variables
start create-labels 0.000419855117797852
start init-physical-csp-links 0.00258183479309082
start init-physical-non-csp-links 0.916287899017334
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.204859018325806
     start init-physical-BN-non-csp-links at local time 0.77714204788208
     start init-physical-BP-non-csp-links at local time 1.41982793807983
     end init-physical-BP-non-csp-links at local time 10.257700920105
end init-physical-non-csp-links 11.1740169525146
start init-corner-B-c-values 11.176488161087
start init-outer-B-candidates 11.1765320301056
start init-outer-I-candidates 11.1768710613251
start init-H-candidates 11.1772701740265
start init-V-candidates 11.1781079769135
start init-P-candidates 11.1788830757141
start init-inner-I-candidates 11.1802771091461
start init-inner-N-and-B-candidates 11.1806612014771
start solution 11.1836271286011
entering BRT
w[1]-1+diagonal-2s-3+1-in-r3c2+r3c3+r4c3 ==> Hr5c3 = 0, Hr3c2 = 0, Vr4c4 = 0, Vr3c2 = 0
770 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   : 3 :   :
.....   .............
:     1 : 2 :   :   :
.....................
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 11.18s, solve-time = 0.98s, total-time = 12.17s
nb-facts=<Fact-27631>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
5 5
. . . . .
. . 1 . .
. . 2 1 .
. 3 . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 1 . .
. . 2 1 .
. 3 . . .
. . . . .

start init-grid-structure 0.0033409595489502
start create-csp-variables
start create-labels 0.000519990921020508
start init-physical-csp-links 0.0032501220703125
start init-physical-non-csp-links 0.918975114822388
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.191138029098511
     start init-physical-BN-non-csp-links at local time 0.795641899108887
     start init-physical-BP-non-csp-links at local time 1.45163583755493
     end init-physical-BP-non-csp-links at local time 10.3729920387268
end init-physical-non-csp-links 11.2919940948486
start init-corner-B-c-values 11.2955639362335
start init-outer-B-candidates 11.295608997345
start init-outer-I-candidates 11.2959470748901
start init-H-candidates 11.296117067337
start init-V-candidates 11.2969810962677
start init-P-candidates 11.2978119850159
start init-inner-I-candidates 11.2991759777069
start init-inner-N-and-B-candidates 11.2995579242706
start solution 11.3027360439301
entering BRT
w[1]-1+diagonal-2s-3+1-in-r2c3+r3c3+r3c4 ==> Hr4c4 = 0, Hr2c3 = 0, Vr3c5 = 0, Vr2c3 = 0
770 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :     1 :   :   :
.....................
:   :   : 2 : 1     :
.............   .....
:   : 3 :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.3s, solve-time = 0.91s, total-time = 12.22s
nb-facts=<Fact-27631>
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
. . . . 3 .
. . . 2 . .
. 1 2 . . .
. . 1 . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . 3 .
. . . 2 . .
. 1 2 . . .
. . 1 . . .
. . . . . .

start init-grid-structure 0.00321316719055176
start create-csp-variables
start create-labels 0.000514984130859375
start init-physical-csp-links 0.00405097007751465
start init-physical-non-csp-links 1.76131892204285
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.420801877975464
     start init-physical-BN-non-csp-links at local time 1.58956384658813
     start init-physical-BP-non-csp-links at local time 2.86065196990967
     end init-physical-BP-non-csp-links at local time 20.6976640224457
end init-physical-non-csp-links 22.4590220451355
start init-corner-B-c-values 22.4624540805817
start init-outer-B-candidates 22.462494134903
start init-outer-I-candidates 22.4628801345825
start init-H-candidates 22.4630889892578
start init-V-candidates 22.46413397789
start init-P-candidates 22.4651560783386
start init-inner-I-candidates 22.4669959545135
start init-inner-N-and-B-candidates 22.4675061702728
start solution 22.4719440937042
entering BRT
w[1]-1+diagonal-2s-3+1-in-r4c2+r4c3+r5c3 ==> Hr6c3 = 0, Hr4c2 = 0, Vr5c4 = 0, Vr4c2 = 0
1122 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   : 3 :   :
.........................
:   :   :   : 2 :   :   :
.....   .................
:     1 : 2 :   :   :   :
.........................
:   :   : 1     :   :   :
.........   .............
:   :   :   :   :   :   :
.........................

init-time = 22.47s, solve-time = 1.98s, total-time = 24.45s
nb-facts=<Fact-37683>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve 
5 5 
. . . . .
. . 1 . .
. 1 2 . .
. . . 3 .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 1 . .
. 1 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.00553989410400391
start create-csp-variables
start create-labels 0.000396013259887695
start init-physical-csp-links 0.00247502326965332
start init-physical-non-csp-links 0.883092880249023
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.176265954971313
     start init-physical-BN-non-csp-links at local time 0.678922891616821
     start init-physical-BP-non-csp-links at local time 1.24673986434937
     end init-physical-BP-non-csp-links at local time 9.98290395736694
end init-physical-non-csp-links 10.8660469055176
start init-corner-B-c-values 10.8719539642334
start init-outer-B-candidates 10.8719930648804
start init-outer-I-candidates 10.8723208904266
start init-H-candidates 10.8724939823151
start init-V-candidates 10.873300075531
start init-P-candidates 10.8741838932037
start init-inner-I-candidates 10.8762819766998
start init-inner-N-and-B-candidates 10.8768689632416
start solution 10.8807690143585
entering BRT
w[1]-1+diagonal-2s-3+1-in-r2c3+r3c3+r3c2 ==> Hr4c2 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr3c2 = 0
770 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........   .........
:   :   : 1     :   :
.....................
:     1 : 2 :   :   :
.....   .............
:   :   :   : 3 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.88s, solve-time = 0.99s, total-time = 11.88s
nb-facts=<Fact-27631>
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
. . 1 . . .
. 1 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . 1 . . .
. 1 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00368881225585938
start create-csp-variables
start create-labels 0.000555038452148438
start init-physical-csp-links 0.00401186943054199
start init-physical-non-csp-links 1.65946197509766
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.38290810585022
     start init-physical-BN-non-csp-links at local time 1.48075604438782
     start init-physical-BP-non-csp-links at local time 2.83232712745667
     end init-physical-BP-non-csp-links at local time 20.3869349956512
end init-physical-non-csp-links 22.0464370250702
start init-corner-B-c-values 22.0503389835358
start init-outer-B-candidates 22.0503809452057
start init-outer-I-candidates 22.0507848262787
start init-H-candidates 22.0509898662567
start init-V-candidates 22.0520980358124
start init-P-candidates 22.0530869960785
start init-inner-I-candidates 22.0549759864807
start init-inner-N-and-B-candidates 22.0554850101471
start solution 22.05979180336
entering BRT
w[1]-1+diagonal-2s-3+1-in-r2c3+r3c3+r3c2 ==> Hr4c2 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr3c2 = 0
1122 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........   .............
:   :   : 1     :   :   :
.........................
:     1 : 2 :   :   :   :
.....   .................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 22.06s, solve-time = 1.93s, total-time = 23.99s
nb-facts=<Fact-37683>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(solve
5 5
. . . . .
. 3 . . .
. . 2 1 .
. . 1 . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 1 .
. . 1 . .
. . . . .

start init-grid-structure 0.00338506698608398
start create-csp-variables
start create-labels 0.000401020050048828
start init-physical-csp-links 0.00265097618103027
start init-physical-non-csp-links 0.866465091705322
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.194669008255005
     start init-physical-BN-non-csp-links at local time 0.725720882415771
     start init-physical-BP-non-csp-links at local time 1.23348999023438
     end init-physical-BP-non-csp-links at local time 10.037633895874
end init-physical-non-csp-links 10.9041240215302
start init-corner-B-c-values 10.9077179431915
start init-outer-B-candidates 10.9077608585358
start init-outer-I-candidates 10.9080889225006
start init-H-candidates 10.9082579612732
start init-V-candidates 10.9090719223022
start init-P-candidates 10.9098320007324
start init-inner-I-candidates 10.91126704216
start init-inner-N-and-B-candidates 10.9116408824921
start solution 10.914783000946
entering BRT
w[1]-1+diagonal-2s-3+1-in-r3c4+r3c3+r4c3 ==> Hr5c3 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr4c3 = 0
770 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.............   .....
:   :   : 2 : 1     :
.....................
:   :     1 :   :   :
.........   .........
:   :   :   :   :   :
.....................

init-time = 10.91s, solve-time = 0.99s, total-time = 11.9s
nb-facts=<Fact-27631>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
