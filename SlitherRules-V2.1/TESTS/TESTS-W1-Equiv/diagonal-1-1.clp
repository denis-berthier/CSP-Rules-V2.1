
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-1-1
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

DIAGONAL-1-1, INNER

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


nw-inner
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 3)
    )
)
(solve
4 4
. . . .
. 1 . .
. . 1 .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. 1 . .
. . 1 .
. . . .

start init-grid-structure 0.00203800201416016
start create-csp-variables
start create-labels 0.000322103500366211
start init-physical-csp-links 0.00176501274108887
start init-physical-non-csp-links 0.425684213638306
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0902409553527832
     start init-physical-BN-non-csp-links at local time 0.331622838973999
     start init-physical-BP-non-csp-links at local time 0.582710027694702
     end init-physical-BP-non-csp-links at local time 4.03486180305481
end init-physical-non-csp-links 4.46059417724609
start init-corner-B-c-values 4.46290397644043
start init-outer-B-candidates 4.46294498443604
start init-outer-I-candidates 4.46323394775391
start init-H-candidates 4.46338891983032
start init-V-candidates 4.46393299102783
start init-P-candidates 4.46442484855652
start init-inner-I-candidates 4.46534895896912
start init-inner-N-and-B-candidates 4.46558880805969
start solution 4.46754813194275
Simulated elimination of 1333
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
V-single: Vr3c3 = 0
w[1]-diagonal-1-1-in-{r3c3...r2c2}-with-no-nw-inner-sides ==> Hr3c2 = 0, Vr2c3 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.................
:   : 1     :   :
.....   .   .....
:   :     1 :   :
.................
:   :   :   :   :
.................

init-time = 4.47s, solve-time = 0.34s, total-time = 4.81s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




se-inner
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 2)
        (value-row-col-to-V-label 1 2 3)
    )
)
(solve
4 4
. . . .
. 1 . .
. . 1 .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. 1 . .
. . 1 .
. . . .

start init-grid-structure 0.00190901756286621
start create-csp-variables
start create-labels 0.000318050384521484
start init-physical-csp-links 0.00173401832580566
start init-physical-non-csp-links 0.432908058166504
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0895779132843018
     start init-physical-BN-non-csp-links at local time 0.325145959854126
     start init-physical-BP-non-csp-links at local time 0.57872200012207
     end init-physical-BP-non-csp-links at local time 3.97350096702576
end init-physical-non-csp-links 4.40645503997803
start init-corner-B-c-values 4.40861105918884
start init-outer-B-candidates 4.40865206718445
start init-outer-I-candidates 4.40893316268921
start init-H-candidates 4.40909600257874
start init-V-candidates 4.40968203544617
start init-P-candidates 4.41017413139343
start init-inner-I-candidates 4.41129899024963
start init-inner-N-and-B-candidates 4.41155505180359
start solution 4.41357398033142
Simulated elimination of 1323
Simulated elimination of 1232
entering BRT
H-single: Hr3c2 = 0
V-single: Vr2c3 = 0
w[1]-diagonal-1-1-in-{r2c2...r3c3}-with-no-se-inner-sides ==> Hr3c3 = 0, Vr3c3 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.................
:   : 1     :   :
.....   .   .....
:   :     1 :   :
.................
:   :   :   :   :
.................

init-time = 4.41s, solve-time = 0.33s, total-time = 4.74s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


ne-inner
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 2)
        (value-row-col-to-V-label 1 3 3)
    )
)
(solve
4 4
. . . .
. . 1 .
. 1 . .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. . 1 .
. 1 . .
. . . .

start init-grid-structure 0.00171899795532227
start create-csp-variables
start create-labels 0.000312089920043945
start init-physical-csp-links 0.00166010856628418
start init-physical-non-csp-links 0.442846059799194
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0880908966064453
     start init-physical-BN-non-csp-links at local time 0.328691959381104
     start init-physical-BP-non-csp-links at local time 0.622902870178223
     end init-physical-BP-non-csp-links at local time 4.62658381462097
end init-physical-non-csp-links 5.06947207450867
start init-corner-B-c-values 5.07143187522888
start init-outer-B-candidates 5.07148194313049
start init-outer-I-candidates 5.07178092002869
start init-H-candidates 5.07193899154663
start init-V-candidates 5.07260394096375
start init-P-candidates 5.07325601577759
start init-inner-I-candidates 5.07467484474182
start init-inner-N-and-B-candidates 5.0749979019165
start solution 5.07711386680603
Simulated elimination of 1333
Simulated elimination of 1232
entering BRT
H-single: Hr3c2 = 0
V-single: Vr3c3 = 0
w[1]-diagonal-1-1-in-{r3c2...r2c3}-with-no-ne-inner-sides ==> Hr3c3 = 0, Vr2c3 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.................
:   :     1 :   :
.....   .   .....
:   : 1     :   :
.................
:   :   :   :   :
.................

init-time = 5.08s, solve-time = 0.37s, total-time = 5.45s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



sw-inner
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 2 3)
    )
)
(solve
4 4
. . . .
. . 1 .
. 1 . .
. . . .
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. . 1 .
. 1 . .
. . . .

start init-grid-structure 0.00185489654541016
start create-csp-variables
start create-labels 0.000387907028198242
start init-physical-csp-links 0.00182795524597168
start init-physical-non-csp-links 0.43320107460022
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0862059593200684
     start init-physical-BN-non-csp-links at local time 0.346035003662109
     start init-physical-BP-non-csp-links at local time 0.630597114562988
     end init-physical-BP-non-csp-links at local time 4.54312300682068
end init-physical-non-csp-links 4.97637104988098
start init-corner-B-c-values 4.97848892211914
start init-outer-B-candidates 4.97852897644043
start init-outer-I-candidates 4.97880697250366
start init-H-candidates 4.97897291183472
start init-V-candidates 4.97954082489014
start init-P-candidates 4.98026585578918
start init-inner-I-candidates 4.98116183280945
start init-inner-N-and-B-candidates 4.98142290115356
start solution 4.98337984085083
Simulated elimination of 1323
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
V-single: Vr2c3 = 0
w[1]-diagonal-1-1-in-{r2c3...r3c2}-with-no-sw-inner-sides ==> Hr3c2 = 0, Vr3c3 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.................
:   :     1 :   :
.....   .   .....
:   : 1     :   :
.................
:   :   :   :   :
.................

init-time = 4.98s, solve-time = 0.32s, total-time = 5.3s
nb-facts=<Fact-19167>
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

DIAGONAL-1-1, OUTER

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


nw-outer
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)
(solve
4 4
. . . .
. 1 . .
. . 1 .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. 1 . .
. . 1 .
. . . .

start init-grid-structure 0.00141382217407227
start create-csp-variables
start create-labels 0.000433921813964844
start init-physical-csp-links 0.00182390213012695
start init-physical-non-csp-links 0.43496298789978
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0864391326904297
     start init-physical-BN-non-csp-links at local time 0.321099042892456
     start init-physical-BP-non-csp-links at local time 0.58227801322937
     end init-physical-BP-non-csp-links at local time 4.58156514167786
end init-physical-non-csp-links 5.01656985282898
start init-corner-B-c-values 5.01822996139526
start init-outer-B-candidates 5.01828980445862
start init-outer-I-candidates 5.0186128616333
start init-H-candidates 5.01875591278076
start init-V-candidates 5.01940393447876
start init-P-candidates 5.01991486549377
start init-inner-I-candidates 5.02078294754028
start init-inner-N-and-B-candidates 5.02105593681335
start solution 5.02352499961853
Simulated elimination of 1334
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
V-single: Vr3c4 = 0
w[1]-diagonal-1-1-in-{r3c3...r2c2}-with-no-se-outer-sides ==> Hr2c2 = 0, Vr2c2 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.....   .........
:     1 :   :   :
.................
:   :   : 1     :
.........   .....
:   :   :   :   :
.................

init-time = 5.02s, solve-time = 0.37s, total-time = 5.4s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





se-outer
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 2 2)
        (value-row-col-to-V-label 1 2 2)
    )
)
(solve
4 4
. . . .
. 1 . .
. . 1 .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. 1 . .
. . 1 .
. . . .

start init-grid-structure 0.00176095962524414
start create-csp-variables
start create-labels 0.000325918197631836
start init-physical-csp-links 0.00180387496948242
start init-physical-non-csp-links 0.435509920120239
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.087346076965332
     start init-physical-BN-non-csp-links at local time 0.322575092315674
     start init-physical-BP-non-csp-links at local time 0.621535062789917
     end init-physical-BP-non-csp-links at local time 4.70798897743225
end init-physical-non-csp-links 5.14353680610657
start init-corner-B-c-values 5.14547896385193
start init-outer-B-candidates 5.14552402496338
start init-outer-I-candidates 5.14579796791077
start init-H-candidates 5.14594411849976
start init-V-candidates 5.1465380191803
start init-P-candidates 5.14710116386414
start init-inner-I-candidates 5.14796209335327
start init-inner-N-and-B-candidates 5.14821100234985
start solution 5.15009188652039
Simulated elimination of 1322
Simulated elimination of 1222
entering BRT
H-single: Hr2c2 = 0
V-single: Vr2c2 = 0
w[1]-diagonal-1-1-in-{r2c2...r3c3}-with-no-nw-outer-sides ==> Hr4c3 = 0, Vr3c4 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.....   .........
:     1 :   :   :
.................
:   :   : 1     :
.........   .....
:   :   :   :   :
.................

init-time = 5.15s, solve-time = 0.36s, total-time = 5.51s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




ne-outer
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 2)
        (value-row-col-to-V-label 1 3 2)
    )
)
(solve
4 4
. . . .
. . 1 .
. 1 . .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. . 1 .
. 1 . .
. . . .

start init-grid-structure 0.00174307823181152
start create-csp-variables
start create-labels 0.000299215316772461
start init-physical-csp-links 0.00169801712036133
start init-physical-non-csp-links 0.437343120574951
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0849969387054443
     start init-physical-BN-non-csp-links at local time 0.327301025390625
     start init-physical-BP-non-csp-links at local time 0.577083110809326
     end init-physical-BP-non-csp-links at local time 4.46353793144226
end init-physical-non-csp-links 4.90091919898987
start init-corner-B-c-values 4.9028651714325
start init-outer-B-candidates 4.90290713310242
start init-outer-I-candidates 4.90316915512085
start init-H-candidates 4.90330815315247
start init-V-candidates 4.90384316444397
start init-P-candidates 4.90433812141418
start init-inner-I-candidates 4.90520215034485
start init-inner-N-and-B-candidates 4.90544009208679
start solution 4.90759897232056
Simulated elimination of 1332
Simulated elimination of 1242
entering BRT
H-single: Hr4c2 = 0
V-single: Vr3c2 = 0
w[1]-diagonal-1-1-in-{r3c2...r2c3}-with-no-sw-outer-sides ==> Hr2c3 = 0, Vr2c4 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.........   .....
:   :   : 1     :
.................
:     1 :   :   :
.....   .........
:   :   :   :   :
.................

init-time = 4.91s, solve-time = 0.36s, total-time = 5.27s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



sw-outer
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 2 3)
        (value-row-col-to-V-label 1 2 4)
    )
)
(solve
4 4
. . . .
. . 1 .
. 1 . .
. . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . .
. . 1 .
. 1 . .
. . . .

start init-grid-structure 0.00189781188964844
start create-csp-variables
start create-labels 0.000320911407470703
start init-physical-csp-links 0.00174498558044434
start init-physical-non-csp-links 0.43836498260498
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.0971310138702393
     start init-physical-BN-non-csp-links at local time 0.374337911605835
     start init-physical-BP-non-csp-links at local time 0.673202991485596
     end init-physical-BP-non-csp-links at local time 4.60909986495972
end init-physical-non-csp-links 5.04750084877014
start init-corner-B-c-values 5.04964780807495
start init-outer-B-candidates 5.04968881607056
start init-outer-I-candidates 5.04996681213379
start init-H-candidates 5.05014085769653
start init-V-candidates 5.05100584030151
start init-P-candidates 5.05179882049561
start init-inner-I-candidates 5.05353188514709
start init-inner-N-and-B-candidates 5.05391788482666
start solution 5.05652594566345
Simulated elimination of 1324
Simulated elimination of 1223
entering BRT
H-single: Hr2c3 = 0
V-single: Vr2c4 = 0
w[1]-diagonal-1-1-in-{r2c3...r3c2}-with-no-ne-outer-sides ==> Hr4c2 = 0, Vr3c2 = 0
497 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 201 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.................
:   :   :   :   :
.........   .....
:   :   : 1     :
.................
:     1 :   :   :
.....   .........
:   :   :   :   :
.................

init-time = 5.06s, solve-time = 0.37s, total-time = 5.43s
nb-facts=<Fact-19167>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


(bind ?*simulated-eliminations*
    (create$ 
    )
)


