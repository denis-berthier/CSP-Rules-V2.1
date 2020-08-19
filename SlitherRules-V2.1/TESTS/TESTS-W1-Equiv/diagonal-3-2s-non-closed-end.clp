
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL-3-2s-NON-CLOSED-END
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

DIAGONAL-3-2-NON-CLOSED-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve
5 5 
. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 3.88622283935547e-05
start create-csp-variables
start create-labels 0.000730991363525391
start init-physical-csp-links 0.00427103042602539
start init-physical-non-csp-links 0.965532064437866
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.215595006942749
     start init-physical-BN-non-csp-links at local time 0.795912981033325
     start init-physical-BP-non-csp-links at local time 1.47604513168335
     end init-physical-BP-non-csp-links at local time 10.216521024704
end init-physical-non-csp-links 11.1821031570435
start init-corner-B-c-values 11.1824040412903
start init-outer-B-candidates 11.182450056076
start init-outer-I-candidates 11.1828110218048
start init-H-candidates 11.1830070018768
start init-V-candidates 11.1838960647583
start init-P-candidates 11.184711933136
start init-inner-I-candidates 11.1865530014038
start init-inner-N-and-B-candidates 11.1869878768921
start solution 11.1908469200134
Simulated elimination of 1334
entering BRT
V-single: Vr3c4 = 0
w[1]-diagonal-3-2-in-{r2c2...r3c3}-non-closed-se-corner ==> Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2     :   :
.........———.........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.19s, solve-time = 1.03s, total-time = 12.22s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
    )
)
(solve
5 5 
. . . . .
. 3 . . .
. . 2 . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00380086898803711
start create-csp-variables
start create-labels 0.000642061233520508
start init-physical-csp-links 0.00317502021789551
start init-physical-non-csp-links 0.858084917068481
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.185632944107056
     start init-physical-BN-non-csp-links at local time 0.750607013702393
     start init-physical-BP-non-csp-links at local time 1.39981913566589
     end init-physical-BP-non-csp-links at local time 10.0738711357117
end init-physical-non-csp-links 10.9319939613342
start init-corner-B-c-values 10.9360809326172
start init-outer-B-candidates 10.9361460208893
start init-outer-I-candidates 10.9366009235382
start init-H-candidates 10.9370799064636
start init-V-candidates 10.9381010532379
start init-P-candidates 10.9388809204102
start init-inner-I-candidates 10.9402940273285
start init-inner-N-and-B-candidates 10.9409558773041
start solution 10.945543050766
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
w[1]-diagonal-3-2-in-{r2c2...r3c3}-non-closed-se-corner ==> Vr3c4 = 1, Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 |   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.95s, solve-time = 1.01s, total-time = 11.96s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 3)
    )
)
(solve
5 5 
. . . . .
. . . 3 .
. . 2 . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.0024409294128418
start create-csp-variables
start create-labels 0.000432968139648438
start init-physical-csp-links 0.0028679370880127
start init-physical-non-csp-links 0.848451852798462
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.199159145355225
     start init-physical-BN-non-csp-links at local time 0.78771710395813
     start init-physical-BP-non-csp-links at local time 1.47021102905273
     end init-physical-BP-non-csp-links at local time 10.4409232139587
end init-physical-non-csp-links 11.2894098758698
start init-corner-B-c-values 11.2920379638672
start init-outer-B-candidates 11.2920920848846
start init-outer-I-candidates 11.2924449443817
start init-H-candidates 11.2926290035248
start init-V-candidates 11.2934560775757
start init-P-candidates 11.2942419052124
start init-inner-I-candidates 11.2955539226532
start init-inner-N-and-B-candidates 11.2959151268005
start solution 11.2991960048676
Simulated elimination of 1333
entering BRT
V-single: Vr3c3 = 0
w[1]-diagonal-3-2-in-{r2c4...r3c3}-non-closed-sw-corner ==> Vr2c5 = 1, Hr4c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :     2 :   :   :
.........———.........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.3s, solve-time = 0.97s, total-time = 12.27s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
    )
)
(solve
5 5 
. . . . .
. . . 3 .
. . 2 . . 
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . 3 .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00384187698364258
start create-csp-variables
start create-labels 0.000617027282714844
start init-physical-csp-links 0.00306296348571777
start init-physical-non-csp-links 0.885101079940796
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.210632085800171
     start init-physical-BN-non-csp-links at local time 0.786020040512085
     start init-physical-BP-non-csp-links at local time 1.4954981803894
     end init-physical-BP-non-csp-links at local time 10.7256441116333
end init-physical-non-csp-links 11.610778093338
start init-corner-B-c-values 11.6148760318756
start init-outer-B-candidates 11.6149170398712
start init-outer-I-candidates 11.6152498722076
start init-H-candidates 11.6154458522797
start init-V-candidates 11.6162650585175
start init-P-candidates 11.6170139312744
start init-inner-I-candidates 11.6183390617371
start init-inner-N-and-B-candidates 11.6187119483948
start solution 11.621796131134
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
w[1]-diagonal-3-2-in-{r2c4...r3c3}-non-closed-sw-corner ==> Vr2c5 = 1, Vr3c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
w[1]-3-in-r2c4-closed-ne-corner ==> Pr3c4 ≠ sw
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   | 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.62s, solve-time = 0.93s, total-time = 12.55s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 4)
    )
)
(solve
5 5 
. . . . .
. . . . .
. . 2 . .
. 3 . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. 3 . . .
. . . . .

start init-grid-structure 0.00229096412658691
start create-csp-variables
start create-labels 0.000468015670776367
start init-physical-csp-links 0.00397205352783203
start init-physical-non-csp-links 0.836704015731812
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.198095798492432
     start init-physical-BN-non-csp-links at local time 0.792832851409912
     start init-physical-BP-non-csp-links at local time 1.51578378677368
     end init-physical-BP-non-csp-links at local time 10.4781270027161
end init-physical-non-csp-links 11.314877986908
start init-corner-B-c-values 11.3173840045929
start init-outer-B-candidates 11.3174290657043
start init-outer-I-candidates 11.3177969455719
start init-H-candidates 11.317981004715
start init-V-candidates 11.3187489509583
start init-P-candidates 11.3194799423218
start init-inner-I-candidates 11.3207900524139
start init-inner-N-and-B-candidates 11.321163892746
start solution 11.3242559432983
Simulated elimination of 1334
entering BRT
V-single: Vr3c4 = 0
w[1]-diagonal-3-2-in-{r4c2...r3c3}-non-closed-ne-corner ==> Vr4c2 = 1, Hr5c2 = 1, Hr3c3 = 1, Vr5c2 = 0, Hr5c1 = 0
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ ne
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........———.........
:   :   : 2     :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 11.32s, solve-time = 0.94s, total-time = 12.26s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
    )
)
(solve
5 5 
. . . . .
. . . . .
. . 2 . . 
. 3 . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. 3 . . .
. . . . .

start init-grid-structure 0.00291991233825684
start create-csp-variables
start create-labels 0.000438928604125977
start init-physical-csp-links 0.00302886962890625
start init-physical-non-csp-links 0.89368200302124
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203984975814819
     start init-physical-BN-non-csp-links at local time 0.797088861465454
     start init-physical-BP-non-csp-links at local time 1.50452780723572
     end init-physical-BP-non-csp-links at local time 10.7179348468781
end init-physical-non-csp-links 11.6116540431976
start init-corner-B-c-values 11.6147887706757
start init-outer-B-candidates 11.6148297786713
start init-outer-I-candidates 11.6151719093323
start init-H-candidates 11.615345954895
start init-V-candidates 11.6161549091339
start init-P-candidates 11.6168758869171
start init-inner-I-candidates 11.6181919574738
start init-inner-N-and-B-candidates 11.6185669898987
start solution 11.6220180988312
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
w[1]-diagonal-3-2-in-{r4c2...r3c3}-non-closed-ne-corner ==> Vr3c4 = 1, Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
w[1]-3-in-r4c2-closed-sw-corner ==> Pr4c3 ≠ ne
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   : 2 |   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

init-time = 11.62s, solve-time = 0.88s, total-time = 12.5s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 3)
    )
)
(solve
5 5 
. . . . .
. . . . .
. . 2 . .
. . . 3 .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.0036170482635498
start create-csp-variables
start create-labels 0.000538825988769531
start init-physical-csp-links 0.00341606140136719
start init-physical-non-csp-links 0.877548933029175
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.196914911270142
     start init-physical-BN-non-csp-links at local time 0.791966915130615
     start init-physical-BP-non-csp-links at local time 1.50171780586243
     end init-physical-BP-non-csp-links at local time 10.3573179244995
end init-physical-non-csp-links 11.234904050827
start init-corner-B-c-values 11.2387528419495
start init-outer-B-candidates 11.2388050556183
start init-outer-I-candidates 11.2391889095306
start init-H-candidates 11.2394540309906
start init-V-candidates 11.2403540611267
start init-P-candidates 11.2412149906158
start init-inner-I-candidates 11.2428169250488
start init-inner-N-and-B-candidates 11.2432219982147
start solution 11.2467169761658
Simulated elimination of 1333
entering BRT
V-single: Vr3c3 = 0
w[1]-diagonal-3-2-in-{r4c4...r3c3}-non-closed-nw-corner ==> Vr4c5 = 1, Hr5c4 = 1, Hr3c3 = 1, Vr5c5 = 0, Hr5c5 = 0
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ nw
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........———.........
:   :     2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 11.25s, solve-time = 1.01s, total-time = 12.26s
nb-facts=<Fact-27679>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
    )
)
(solve
5 5 
. . . . .
. . . . .
. . 2 . . 
. . . 3 .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . 3 .
. . . . .

start init-grid-structure 0.00214409828186035
start create-csp-variables
start create-labels 0.000432014465332031
start init-physical-csp-links 0.00271105766296387
start init-physical-non-csp-links 0.856964111328125
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.177830934524536
     start init-physical-BN-non-csp-links at local time 0.723040103912354
     start init-physical-BP-non-csp-links at local time 1.43318605422974
     end init-physical-BP-non-csp-links at local time 10.4073820114136
end init-physical-non-csp-links 11.2643959522247
start init-corner-B-c-values 11.2667570114136
start init-outer-B-candidates 11.2667942047119
start init-outer-I-candidates 11.2671270370483
start init-H-candidates 11.2673079967499
start init-V-candidates 11.268100976944
start init-P-candidates 11.2688231468201
start init-inner-I-candidates 11.2703549861908
start init-inner-N-and-B-candidates 11.2707841396332
start solution 11.2739210128784
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
w[1]-diagonal-3-2-in-{r4c4...r3c3}-non-closed-nw-corner ==> Vr4c5 = 1, Vr3c3 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
w[1]-3-in-r4c4-closed-se-corner ==> Pr4c4 ≠ nw
789 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   | 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

init-time = 11.27s, solve-time = 0.91s, total-time = 12.18s
nb-facts=<Fact-27679>
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



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-3-2-2-NON-CLOSED-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 5)
    )
)

(solve
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . . 
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .

start init-grid-structure 0.00277614593505859
start create-csp-variables
start create-labels 0.000771999359130859
start init-physical-csp-links 0.00538492202758789
start init-physical-non-csp-links 1.75607085227966
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.42626690864563
     start init-physical-BN-non-csp-links at local time 1.6008620262146
     start init-physical-BP-non-csp-links at local time 3.08806896209717
     end init-physical-BP-non-csp-links at local time 19.8059070110321
end init-physical-non-csp-links 21.5620169639587
start init-corner-B-c-values 21.5650141239166
start init-outer-B-candidates 21.5650551319122
start init-outer-I-candidates 21.5654330253601
start init-H-candidates 21.5656189918518
start init-V-candidates 21.5668752193451
start init-P-candidates 21.5680260658264
start init-inner-I-candidates 21.5700860023499
start init-inner-N-and-B-candidates 21.5706021785736
start solution 21.5751519203186
Simulated elimination of 1345
entering BRT
V-single: Vr4c5 = 0
w[1]-diagonal-3-2s-in-{r2c2...r4c4}-non-closed-se-end ==> Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2     :   :
.............———.........
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.58s, solve-time = 1.92s, total-time = 23.5s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


(progn

(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 5 4)
    )
)
(solve
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . . 
. . . . . .
. . . . . . 
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .

start init-grid-structure 0.00422906875610352
start create-csp-variables
start create-labels 0.000648975372314453
start init-physical-csp-links 0.00409483909606934
start init-physical-non-csp-links 1.66321277618408
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.381021976470947
     start init-physical-BN-non-csp-links at local time 1.43270015716553
     start init-physical-BP-non-csp-links at local time 2.80668306350708
     end init-physical-BP-non-csp-links at local time 20.5753350257874
end init-physical-non-csp-links 22.2385838031769
start init-corner-B-c-values 22.2430539131165
start init-outer-B-candidates 22.2430980205536
start init-outer-I-candidates 22.2435128688812
start init-H-candidates 22.2437090873718
start init-V-candidates 22.2448558807373
start init-P-candidates 22.2458419799805
start init-inner-I-candidates 22.2476799488068
start init-inner-N-and-B-candidates 22.2481970787048
start solution 22.2526021003723
Simulated elimination of 1254
entering BRT
H-single: Hr5c4 = 0
w[1]-diagonal-3-2s-in-{r2c2...r4c4}-non-closed-se-end ==> Vr4c5 = 1, Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 |   :   :
.............   .........
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 22.25s, solve-time = 1.92s, total-time = 24.17s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 3)
    )
)
(solve
6 6 
. . . . . .
. . . . 3 .
. . . 2 . .
. . 2 . . .
. . . . . .
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
. . 2 . . .
. . . . . .
. . . . . .

start init-grid-structure 0.0033879280090332
start create-csp-variables
start create-labels 0.000579833984375
start init-physical-csp-links 0.00448203086853027
start init-physical-non-csp-links 1.58084297180176
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.369983911514282
     start init-physical-BN-non-csp-links at local time 1.4195830821991
     start init-physical-BP-non-csp-links at local time 2.74600005149841
     end init-physical-BP-non-csp-links at local time 20.0071220397949
end init-physical-non-csp-links 21.5880038738251
start init-corner-B-c-values 21.5916209220886
start init-outer-B-candidates 21.5916609764099
start init-outer-I-candidates 21.5920348167419
start init-H-candidates 21.5922338962555
start init-V-candidates 21.5932738780975
start init-P-candidates 21.594269990921
start init-inner-I-candidates 21.5961048603058
start init-inner-N-and-B-candidates 21.5966188907623
start solution 21.6010642051697
Simulated elimination of 1343
entering BRT
V-single: Vr4c3 = 0
w[1]-diagonal-3-2s-in-{r2c5...r4c3}-non-closed-sw-end ==> Vr2c6 = 1, Hr5c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
w[1]-3-in-r2c5-closed-ne-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :     2 :   :   :   :
.........———.............
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.6s, solve-time = 1.95s, total-time = 23.55s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 5 3)
    )
)
(solve
6 6 
. . . . . .
. . . . 3 .
. . . 2 . .
. . 2 . . . 
. . . . . .
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
. . 2 . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00444483757019043
start create-csp-variables
start create-labels 0.00056910514831543
start init-physical-csp-links 0.00390100479125977
start init-physical-non-csp-links 1.6296021938324
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.355090141296387
     start init-physical-BN-non-csp-links at local time 1.38621306419373
     start init-physical-BP-non-csp-links at local time 2.74926209449768
     end init-physical-BP-non-csp-links at local time 20.3425400257111
end init-physical-non-csp-links 21.972177028656
start init-corner-B-c-values 21.9768488407135
start init-outer-B-candidates 21.9768888950348
start init-outer-I-candidates 21.9772679805756
start init-H-candidates 21.9774670600891
start init-V-candidates 21.9785349369049
start init-P-candidates 21.9795279502869
start init-inner-I-candidates 21.9813849925995
start init-inner-N-and-B-candidates 21.9818978309631
start solution 21.9863350391388
Simulated elimination of 1253
entering BRT
H-single: Hr5c3 = 0
w[1]-diagonal-3-2s-in-{r2c5...r4c3}-non-closed-sw-end ==> Vr2c6 = 1, Vr4c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
w[1]-3-in-r2c5-closed-ne-corner ==> Pr3c5 ≠ sw, Pr3c5 ≠ ne, Pr3c5 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   | 2 :   :   :   :
.........   .............
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 21.99s, solve-time = 2.2s, total-time = 24.19s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 5)
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .

start init-grid-structure 0.00344300270080566
start create-csp-variables
start create-labels 0.000555992126464844
start init-physical-csp-links 0.00409412384033203
start init-physical-non-csp-links 1.59402799606323
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.376591920852661
     start init-physical-BN-non-csp-links at local time 1.43095302581787
     start init-physical-BP-non-csp-links at local time 2.76519894599915
     end init-physical-BP-non-csp-links at local time 19.9207148551941
end init-physical-non-csp-links 21.5147829055786
start init-corner-B-c-values 21.5184309482574
start init-outer-B-candidates 21.5184719562531
start init-outer-I-candidates 21.5188510417938
start init-H-candidates 21.5190501213074
start init-V-candidates 21.5201101303101
start init-P-candidates 21.521124124527
start init-inner-I-candidates 21.5229930877686
start init-inner-N-and-B-candidates 21.5234999656677
start solution 21.5279808044434
Simulated elimination of 1335
entering BRT
V-single: Vr3c5 = 0
w[1]-diagonal-3-2s-in-{r5c2...r3c4}-non-closed-ne-end ==> Vr5c2 = 1, Hr6c2 = 1, Hr3c4 = 1, Vr6c2 = 0, Hr6c1 = 0
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.............———.........
:   :   :   : 2     :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

init-time = 21.53s, solve-time = 1.94s, total-time = 23.47s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 4)
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .

start init-grid-structure 0.00352001190185547
start create-csp-variables
start create-labels 0.00064396858215332
start init-physical-csp-links 0.00512480735778809

start init-physical-non-csp-links 1.62157583236694
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.37427806854248
     start init-physical-BN-non-csp-links at local time 1.46854710578918
     start init-physical-BP-non-csp-links at local time 2.81716394424438
     end init-physical-BP-non-csp-links at local time 19.8017311096191
end init-physical-non-csp-links 21.4233448505402
start init-corner-B-c-values 21.4270730018616
start init-outer-B-candidates 21.4271159172058
start init-outer-I-candidates 21.4275140762329
start init-H-candidates 21.4277341365814
start init-V-candidates 21.4288630485535
start init-P-candidates 21.4298441410065
start init-inner-I-candidates 21.4316790103912
start init-inner-N-and-B-candidates 21.4321870803833
start solution 21.4366250038147
Simulated elimination of 1234
entering BRT
H-single: Hr3c4 = 0
w[1]-diagonal-3-2s-in-{r5c2...r3c4}-non-closed-ne-end ==> Vr3c5 = 1, Vr5c2 = 1, Hr6c2 = 1, Vr6c2 = 0, Hr6c1 = 0
w[1]-3-in-r5c2-closed-sw-corner ==> Pr5c3 ≠ sw, Pr5c3 ≠ ne, Pr5c3 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.............   .........
:   :   :   : 2 |   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

init-time = 21.44s, solve-time = 1.95s, total-time = 23.38s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 3)
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . 2 . . .
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
. . . . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00423407554626465
start create-csp-variables
start create-labels 0.00098109245300293
start init-physical-csp-links 0.00551605224609375
start init-physical-non-csp-links 1.50568199157715
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.328949928283691
     start init-physical-BN-non-csp-links at local time 1.33476901054382
     start init-physical-BP-non-csp-links at local time 2.59725713729858
     end init-physical-BP-non-csp-links at local time 19.7341220378876
end init-physical-non-csp-links 21.2398419380188
start init-corner-B-c-values 21.2443389892578
start init-outer-B-candidates 21.2443799972534
start init-outer-I-candidates 21.24476313591
start init-H-candidates 21.2449641227722
start init-V-candidates 21.246031999588
start init-P-candidates 21.247043132782
start init-inner-I-candidates 21.2489161491394
start init-inner-N-and-B-candidates 21.2494249343872
start solution 21.2539451122284
Simulated elimination of 1333
entering BRT
V-single: Vr3c3 = 0
w[1]-diagonal-3-2s-in-{r5c5...r3c3}-non-closed-nw-end ==> Vr5c6 = 1, Hr6c5 = 1, Hr3c3 = 1, Vr6c6 = 0, Hr6c6 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........———.............
:   :     2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

init-time = 21.25s, solve-time = 1.93s, total-time = 23.18s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . 2 . . .
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
. . . . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .

start init-grid-structure 0.00506997108459473
start create-csp-variables
start create-labels 0.000689029693603516
start init-physical-csp-links 0.00519204139709473

start init-physical-non-csp-links 1.57080006599426
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.383939027786255
     start init-physical-BN-non-csp-links at local time 1.48322606086731
     start init-physical-BP-non-csp-links at local time 2.85610795021057
     end init-physical-BP-non-csp-links at local time 21.3212251663208
end init-physical-non-csp-links 22.8920631408691
start init-corner-B-c-values 22.897381067276
start init-outer-B-candidates 22.8974220752716
start init-outer-I-candidates 22.8978080749512
start init-H-candidates 22.8980190753937
start init-V-candidates 22.8991889953613
start init-P-candidates 22.9001839160919
start init-inner-I-candidates 22.9020688533783
start init-inner-N-and-B-candidates 22.9025938510895
start solution 22.9070680141449
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
w[1]-diagonal-3-2s-in-{r5c5...r3c3}-non-closed-nw-end ==> Vr5c6 = 1, Vr3c3 = 1, Hr6c5 = 1, Vr6c6 = 0, Hr6c6 = 0
w[1]-3-in-r5c5-closed-se-corner ==> Pr5c5 ≠ se, Pr5c5 ≠ nw, Pr5c5 ≠ o
1138 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 407 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........   .............
:   :   | 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

init-time = 22.91s, solve-time = 1.94s, total-time = 24.84s
nb-facts=<Fact-37737>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(bind ?*simulated-eliminations*(create$))






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-3-2-2-2-2-2-NON-CLOSED-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
    (create$
        (value-row-col-to-V-label 1 7 8)
    )
)

(solve
9 9
. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . . .
. . . . . . . . .

)
(bind ?*simulated-eliminations*
(create$
)
)
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . . .
. . . . . . . . .

start init-grid-structure 0.00818085670471191
start create-csp-variables
start create-labels 0.00116610527038574
start init-physical-csp-links 0.0076289176940918
start init-physical-non-csp-links 5.29559898376465
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.25370597839355
     start init-physical-BN-non-csp-links at local time 5.08829379081726
     start init-physical-BP-non-csp-links at local time 10.8414177894592
     end init-physical-BP-non-csp-links at local time 125.49047088623
end init-physical-non-csp-links 130.78612112999
start init-corner-B-c-values 130.794549942017
start init-outer-B-candidates 130.794602870941
start init-outer-I-candidates 130.795215845108
start init-H-candidates 130.795521020889
start init-V-candidates 130.797925949097
start init-P-candidates 130.800075054169
start init-inner-I-candidates 130.804337024689
start init-inner-N-and-B-candidates 130.805521011353
start solution 130.817034006119
Simulated elimination of 130708
entering BRT
V-single: Vr7c8 = 0
w[1]-diagonal-3-2s-in-{r2c2...r7c7}-non-closed-se-end ==> Vr2c2 = 1, Hr8c7 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
w[1]-3-in-r2c2-closed-nw-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
2569 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 848 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................................
:       :   :   :   :   :   :   :   :
.   .———.............................
:   | 3 :   :   :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.....................................
:   :   :   : 2 :   :   :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   :   :   : 2     :   :
.........................———.........
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................

init-time = 2m 10.82s, solve-time = 11.88s, total-time = 2m 22.69s
nb-facts=<Fact-77391>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


(bind ?*simulated-eliminations*(create$))
