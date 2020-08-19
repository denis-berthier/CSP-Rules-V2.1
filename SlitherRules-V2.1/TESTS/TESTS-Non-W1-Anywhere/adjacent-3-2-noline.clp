
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-3-2-NOLINE
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





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 4)
    )
)
(solve
5 5 
. . . . .
. . . . .
. 3 2 . .
. . . . .
. . . . . 
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00339889526367188
start create-csp-variables
start create-labels 0.000562191009521484
start init-physical-csp-links 0.00310206413269043
start init-physical-non-csp-links 0.852370023727417
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.209558010101318
     start init-physical-BN-non-csp-links at local time 0.789621114730835
     start init-physical-BP-non-csp-links at local time 1.45741415023804
     end init-physical-BP-non-csp-links at local time 10.4864871501923
end init-physical-non-csp-links 11.3389031887054
start init-corner-B-c-values 11.3425350189209
start init-outer-B-candidates 11.3425738811493
start init-outer-I-candidates 11.3428988456726
start init-H-candidates 11.3430750370026
start init-V-candidates 11.3439810276031
start init-P-candidates 11.3447568416595
start init-inner-I-candidates 11.3461258411407
start init-inner-N-and-B-candidates 11.346498966217
start solution 11.3500220775604
Simulated elimination of 1334
entering BRT
V-single: Vr3c4 = 0
adjacent-3-2-in-r3{c2 c3}-noline-east ==> Vr3c2 = 1, Vr4c3 = 0, Vr2c3 = 0
794 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....................
:   | 3 : 2     :   :
.....................
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.35s, solve-time = 0.86s, total-time = 12.21s
nb-facts=<Fact-27658>
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
. . 2 3 .
. . . . .
. . . . .
)
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . 2 3 .
. . . . .
. . . . .

start init-grid-structure 0.00247502326965332
start create-csp-variables
start create-labels 0.000409126281738281
start init-physical-csp-links 0.00260806083679199
start init-physical-non-csp-links 0.914986133575439
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.198802947998047
     start init-physical-BN-non-csp-links at local time 0.776333093643188
     start init-physical-BP-non-csp-links at local time 1.4702250957489
     end init-physical-BP-non-csp-links at local time 10.6501879692078
end init-physical-non-csp-links 11.5652182102203
start init-corner-B-c-values 11.5678992271423
start init-outer-B-candidates 11.5679411888123
start init-outer-I-candidates 11.5682802200317
start init-H-candidates 11.5684590339661
start init-V-candidates 11.5695152282715
start init-P-candidates 11.5702760219574
start init-inner-I-candidates 11.5716381072998
start init-inner-N-and-B-candidates 11.5720241069794
start solution 11.5753681659698
Simulated elimination of 1333
entering BRT
V-single: Vr3c3 = 0
adjacent-3-2-in-r3{c4 c3}-noline-west ==> Vr3c5 = 1, Vr4c4 = 0, Vr2c4 = 0
794 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.....................
:   :     2 : 3 |   :
.....................
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.58s, solve-time = 0.83s, total-time = 12.41s
nb-facts=<Fact-27658>
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
. . 3 . .
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
. . 3 . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00327706336975098
start create-csp-variables
start create-labels 0.000378847122192383
start init-physical-csp-links 0.00256991386413574
start init-physical-non-csp-links 0.852052927017212
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.198351860046387
     start init-physical-BN-non-csp-links at local time 0.78728199005127
     start init-physical-BP-non-csp-links at local time 1.49020385742188
     end init-physical-BP-non-csp-links at local time 10.6763827800751
end init-physical-non-csp-links 11.5284650325775
start init-corner-B-c-values 11.5319340229034
start init-outer-B-candidates 11.531975030899
start init-outer-I-candidates 11.5323359966278
start init-H-candidates 11.5325210094452
start init-V-candidates 11.5334749221802
start init-P-candidates 11.5342118740082
start init-inner-I-candidates 11.5355448722839
start init-inner-N-and-B-candidates 11.5361740589142
start solution 11.5394239425659
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
adjacent-3-2-in-{r2 r3}c3-noline-south ==> Hr2c3 = 1, Hr3c4 = 0, Hr3c2 = 0
794 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.........———.........
:   :   : 3 :   :   :
.....   .....   .....
:   :   : 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.54s, solve-time = 0.94s, total-time = 12.48s
nb-facts=<Fact-27658>
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
. . 3 . .
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
. . 3 . .
. . . . .

start init-grid-structure 0.00253009796142578
start create-csp-variables
start create-labels 0.000494003295898438
start init-physical-csp-links 0.00270915031433105
start init-physical-non-csp-links 0.847604036331177
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.184809923171997
     start init-physical-BN-non-csp-links at local time 0.738564014434814
     start init-physical-BP-non-csp-links at local time 1.42603611946106
     end init-physical-BP-non-csp-links at local time 10.7966279983521
end init-physical-non-csp-links 11.6442699432373
start init-corner-B-c-values 11.6470499038696
start init-outer-B-candidates 11.6470921039581
start init-outer-I-candidates 11.6476020812988
start init-H-candidates 11.6477890014648
start init-V-candidates 11.6485970020294
start init-P-candidates 11.6493580341339
start init-inner-I-candidates 11.6507320404053
start init-inner-N-and-B-candidates 11.6512820720673
start solution 11.6544182300568
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
adjacent-3-2-in-{r4 r3}c3-noline-north ==> Hr5c3 = 1, Hr4c4 = 0, Hr4c2 = 0
794 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 296 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nWeq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   : 2 :   :   :
.....   .....   .....
:   :   : 3 :   :   :
.........———.........
:   :   :   :   :   :
.....................

init-time = 11.65s, solve-time = 0.88s, total-time = 12.53s
nb-facts=<Fact-27658>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nWeq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************


