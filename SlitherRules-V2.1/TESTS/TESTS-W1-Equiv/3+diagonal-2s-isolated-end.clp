
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 3+DIAGONAL-2s-ISOLATED-END
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

3+DIAGONAL-2-ISOLATED-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(progn
(bind ?*simulated-eliminations* 
    (create$
        (value-row-col-to-H-label 1 3 4)
        (value-row-col-to-V-label 1 3 4)
))

(solve 
5 5 
. . . . .
. 3 2 . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations* (create$
))
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. 3 2 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00243306159973145
start create-csp-variables
start create-labels 0.000431060791015625
start init-physical-csp-links 0.00260305404663086
start init-physical-non-csp-links 0.91810417175293
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.203986883163452
     start init-physical-BN-non-csp-links at local time 0.784715890884399
     start init-physical-BP-non-csp-links at local time 1.49149489402771
     end init-physical-BP-non-csp-links at local time 9.90900588035583
end init-physical-non-csp-links 10.8271431922913
start init-corner-B-c-values 10.8297820091248
start init-outer-B-candidates 10.8298361301422
start init-outer-I-candidates 10.8302581310272
start init-H-candidates 10.8304760456085
start init-V-candidates 10.8315460681915
start init-P-candidates 10.8325669765472
start init-inner-I-candidates 10.8341960906982
start init-inner-N-and-B-candidates 10.8345990180969
start solution 10.839448928833
Simulated elimination of 1334
Simulated elimination of 1234
entering BRT
H-single: Hr3c4 = 0
V-single: Vr3c4 = 0
detection OK
w[1]-3+diagonal-2-isolated-end-in-{r2c2+r2c3...se} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
794 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.....   .....
:               :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 10.84s, solve-time = 1.05s, total-time = 11.89s
nb-facts=<Fact-27669>
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

3+DIAGONAL-2-2-ISOLATED-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 5)
        (value-row-col-to-V-label 1 4 5)
    )
)

(solve 
6 6 
. . . . . .
. 3 2 . . .
. . . 2 . .
. . . . . .
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
. 3 2 . . .
. . . 2 . .
. . . . . .
. . . . . .
. . . . . .

start init-grid-structure 0.00235104560852051
start create-csp-variables
start create-labels 0.000548124313354492
start init-physical-csp-links 0.00352311134338379
start init-physical-non-csp-links 1.71788001060486
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.434794902801514
     start init-physical-BN-non-csp-links at local time 1.62735891342163
     start init-physical-BP-non-csp-links at local time 3.02275490760803
     end init-physical-BP-non-csp-links at local time 23.9838089942932
end init-physical-non-csp-links 25.7017271518707
start init-corner-B-c-values 25.7042961120605
start init-outer-B-candidates 25.7043371200562
start init-outer-I-candidates 25.7047190666199
start init-H-candidates 25.7049131393433
start init-V-candidates 25.7060000896454
start init-P-candidates 25.7069981098175
start init-inner-I-candidates 25.7088911533356
start init-inner-N-and-B-candidates 25.7094700336456
start solution 25.7140679359436
Simulated elimination of 1345
Simulated elimination of 1245
entering BRT
H-single: Hr4c5 = 0
V-single: Vr4c5 = 0
w[1]-3+diagonal-2s-isolated-end-in-{r2c2+r2c3...r3c4...se} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
1146 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   | 3 : 2 :   :   :   :
.   .———.................
:           : 2 :   :   :
.................   .....
:   :   :   :       :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 25.71s, solve-time = 1.98s, total-time = 27.69s
nb-facts=<Fact-37720>
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
(value-row-col-to-H-label 1 4 5)
(value-row-col-to-V-label 1 3 5)
)
)

(solve
6 6
. . . . . .
. . . . . .
. . . . . .
. . . 2 . .
. 3 2 . . .
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
. . . . . .
. . . . . .
. . . 2 . .
. 3 2 . . .
. . . . . .

start init-grid-structure 0.00615096092224121
start create-csp-variables
start create-labels 0.000707864761352539
start init-physical-csp-links 0.00415301322937012
start init-physical-non-csp-links 1.59890294075012
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.368402004241943
     start init-physical-BN-non-csp-links at local time 1.45867991447449
     start init-physical-BP-non-csp-links at local time 2.77692890167236
     end init-physical-BP-non-csp-links at local time 22.5598468780518
end init-physical-non-csp-links 24.1587808132172
start init-corner-B-c-values 24.1651539802551
start init-outer-B-candidates 24.1652021408081
start init-outer-I-candidates 24.1656560897827
start init-H-candidates 24.1658539772034
start init-V-candidates 24.1670250892639
start init-P-candidates 24.1680610179901
start init-inner-I-candidates 24.1702909469604
start init-inner-N-and-B-candidates 24.1708331108093
start solution 24.1754219532013
Simulated elimination of 1335
Simulated elimination of 1245
entering BRT
H-single: Hr4c5 = 0
V-single: Vr3c5 = 0
w[1]-3+diagonal-2s-isolated-end-in-{r5c2+r5c3...r4c4...ne} ==> Vr5c2 = 1, Hr5c2 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr5c1 = 0
w[1]-3-in-r5c2-closed-nw-corner ==> Pr6c3 ≠ se, Pr6c3 ≠ nw, Pr6c3 ≠ o
1146 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 406 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :       :   :
.................   .....
:           : 2 :   :   :
.   .———.................
:   | 3 : 2 :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

init-time = 24.18s, solve-time = 2.14s, total-time = 26.32s
nb-facts=<Fact-37720>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************







TODO:



(solve 
6 6  
. . . . . .
. . . 2 3 .
. . 2 . . . 
. . . . . .
. . . . . .
. . . . . .
)



(solve 
6 6  
. . . . . .
. . . . . .
. . . . . .
. . 2 . . . 
. . . 2 3 .
. . . . . .
)






(solve 
6 6  
. . . . . .
. . . . . .
. . . 2 . .
. . . . 2 . 
. . . . 3 .
. . . . . .
)




(solve  
6 6  
. . . . . .
. . . . . .
. . 2 . . .
. 2 . . . .
. 3 . . . .
. . . . . .
)




(solve 
6 6  
. . . . . .
. . . . 3 .
. . . . 2 . 
. . . 2 . .
. . . . . .
. . . . . .
)




(solve 
6 6  
. . . . . .
. 3 . . . .
. 2 . . . .
. . 2 . . .
. . . . . .
. . . . . .
)




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+DIAGONAL-2-2-2-2-2-ISOLATED-END, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
    (create$
        (value-row-col-to-H-label 1 7 8)
        (value-row-col-to-V-label 1 7 8)
    )
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
. . . . . . . . .
. . . . . . . . .
. . . . . . . . .

start init-grid-structure 0.00870084762573242
start create-csp-variables
start create-labels 0.0010838508605957
start init-physical-csp-links 0.00760483741760254
start init-physical-non-csp-links 5.20471692085266
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.23341798782349
     start init-physical-BN-non-csp-links at local time 5.01726794242859
     start init-physical-BP-non-csp-links at local time 10.1662340164185
     end init-physical-BP-non-csp-links at local time 104.86594581604
end init-physical-non-csp-links 110.070713996887
start init-corner-B-c-values 110.079661846161
start init-outer-B-candidates 110.079715967178
start init-outer-I-candidates 110.080351829529
start init-H-candidates 110.080677986145
start init-V-candidates 110.083019018173
start init-P-candidates 110.085168838501
start init-inner-I-candidates 110.089404821396
start init-inner-N-and-B-candidates 110.090584993362
start solution 110.101212024689
Simulated elimination of 130708
Simulated elimination of 120708
entering BRT
H-single: Hr7c8 = 0
V-single: Vr7c8 = 0
w[1]-3+diagonal-2s-isolated-end-in-{r2c2+r2c3...r6c7...se} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
w[1]-3-in-r2c2-closed-sw-corner ==> Pr2c3 ≠ sw, Pr2c3 ≠ ne, Pr2c3 ≠ o
2586 candidates, 0 csp-links and 0 links. Density = 0.0%
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
:   :   :   :   :   :   :       :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................
:   :   :   :   :   :   :   :   :   :
.....................................

init-time = 1m 50.1s, solve-time = 12.07s, total-time = 2m 2.17s
nb-facts=<Fact-77353>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************



(bind ?*simulated-eliminations* (create$))



