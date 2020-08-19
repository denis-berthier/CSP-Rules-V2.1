
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF ADJACENT-3-NOLINES
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

(progn
    (bind ?*simulated-eliminations*
        (create$
            (value-row-col-to-H-label 1 3 3)
            (value-row-col-to-H-label 1 4 3)
            (value-row-col-to-V-label 1 3 3)
        )
    )


    (solve
        5 5
        . . . . .
        . . . . .
        . 3 . . .
        . . . . .
        . . . . .
    )
    (bind ?*simulated-eliminations* (create$))
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. 3 . . .
. . . . .
. . . . .

start init-grid-structure 0.00224781036376953
start create-csp-variables
start create-labels 0.00043177604675293
start init-physical-csp-links 0.00274395942687988
start init-physical-non-csp-links 0.829560995101929
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.177278995513916
     start init-physical-BN-non-csp-links at local time 0.678354024887085
     start init-physical-BP-non-csp-links at local time 1.25587701797485
     end init-physical-BP-non-csp-links at local time 9.04632782936096
end init-physical-non-csp-links 9.87593579292297
start init-corner-B-c-values 9.87839984893799
start init-outer-B-candidates 9.87843894958496
start init-outer-I-candidates 9.87893581390381
start init-H-candidates 9.8791229724884
start init-V-candidates 9.87995886802673
start init-P-candidates 9.88072490692139
start init-inner-I-candidates 9.88208293914795
start init-inner-N-and-B-candidates 9.88245701789856
start solution 9.88560199737549
Simulated elimination of 1333
Simulated elimination of 1243
Simulated elimination of 1233
entering BRT
H-single: Hr4c3 = 0
H-single: Hr3c3 = 0
V-single: Vr3c3 = 0
w[0]-adjacent-3-in-r3c2-nolines-east ==> Vr4c3 = 1, Vr2c3 = 1, Vr3c2 = 1, Hr4c2 = 1, Hr3c2 = 1, Vr4c2 = 0, Vr2c2 = 0, Hr4c1 = 0, Hr3c1 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:       |   :   :   :
.   .———.   .........
:   | 3     :   :   :
.   .———.   .........
:       |   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 9.89s, solve-time = 1.03s, total-time = 10.92s
nb-facts=<Fact-27754>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************









;;; west

(progn
    (bind ?*simulated-eliminations*
        (create$
            (value-row-col-to-H-label 1 3 3)
            (value-row-col-to-H-label 1 4 3)
            (value-row-col-to-V-label 1 3 4)
)
    )


    (solve
        5 5
        . . . . .
        . . . . .
        . . . 3 .
        . . . . .
        . . . . .
    )
    (bind ?*simulated-eliminations* (create$))
)


***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . 3 .
. . . . .
. . . . .

start init-grid-structure 0.00287699699401855
start create-csp-variables
start create-labels 0.000454902648925781
start init-physical-csp-links 0.00288081169128418
start init-physical-non-csp-links 0.80210280418396
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.185605049133301
     start init-physical-BN-non-csp-links at local time 0.680206060409546
     start init-physical-BP-non-csp-links at local time 1.33330202102661
     end init-physical-BP-non-csp-links at local time 9.18115711212158
end init-physical-non-csp-links 9.98330688476562
start init-corner-B-c-values 9.98639702796936
start init-outer-B-candidates 9.98643708229065
start init-outer-I-candidates 9.98678612709045
start init-H-candidates 9.98696494102478
start init-V-candidates 9.98779201507568
start init-P-candidates 9.98852109909058
start init-inner-I-candidates 9.98985195159912
start init-inner-N-and-B-candidates 9.99021601676941
start solution 9.99339008331299
Simulated elimination of 1334
Simulated elimination of 1243
Simulated elimination of 1233
entering BRT
H-single: Hr4c3 = 0
H-single: Hr3c3 = 0
V-single: Vr3c4 = 0
w[0]-adjacent-3-in-r3c4-nolines-west ==> Vr3c5 = 1, Vr4c4 = 1, Vr2c4 = 1, Hr4c4 = 1, Hr3c4 = 1, Vr4c5 = 0, Vr2c5 = 0, Hr4c5 = 0, Hr3c5 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   |       :
.........   .———.   .
:   :   :     3 |   :
.........   .———.   .
:   :   :   |       :
.....................
:   :   :   :   :   :
.....................

init-time = 9.99s, solve-time = 1.13s, total-time = 11.13s
nb-facts=<Fact-27752>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************






;;; north

(progn
    (bind ?*simulated-eliminations*
        (create$
            (value-row-col-to-V-label 1 3 3)
            (value-row-col-to-V-label 1 3 4)
            (value-row-col-to-H-label 1 4 3)
        )
    )


    (solve
        5 5
        . . . . .
        . . . . .
        . . . . .
        . . 3 . .
        . . . . .
    )
    (bind ?*simulated-eliminations* (create$))
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . . . .
. . . . .
. . 3 . .
. . . . .

start init-grid-structure 0.00333285331726074
start create-csp-variables
start create-labels 0.000511884689331055
start init-physical-csp-links 0.00276589393615723
start init-physical-non-csp-links 0.903389930725098
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.209864139556885
     start init-physical-BN-non-csp-links at local time 0.812039136886597
     start init-physical-BP-non-csp-links at local time 1.49135708808899
     end init-physical-BP-non-csp-links at local time 10.7714841365814
end init-physical-non-csp-links 11.674910068512
start init-corner-B-c-values 11.6785039901733
start init-outer-B-candidates 11.6785428524017
start init-outer-I-candidates 11.6788790225983
start init-H-candidates 11.6790599822998
start init-V-candidates 11.6798980236053
start init-P-candidates 11.6806449890137
start init-inner-I-candidates 11.6819798946381
start init-inner-N-and-B-candidates 11.6823627948761
start solution 11.6855139732361
Simulated elimination of 1334
Simulated elimination of 1333
Simulated elimination of 1243
entering BRT
H-single: Hr4c3 = 0
V-single: Vr3c4 = 0
V-single: Vr3c3 = 0
w[0]-adjacent-3-in-r4c3-nolines-north ==> Vr4c4 = 1, Vr4c3 = 1, Hr5c3 = 1, Hr4c4 = 1, Hr4c2 = 1, Vr5c4 = 0, Vr5c3 = 0, Hr5c4 = 0, Hr5c2 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :           :   :
.....———.   .———.....
:   :   | 3 |   :   :
.....   .———.   .....
:   :           :   :
.....................

init-time = 11.69s, solve-time = 1.12s, total-time = 12.81s
nb-facts=<Fact-27752>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************





;;; south

(progn
    (bind ?*simulated-eliminations*
        (create$
            (value-row-col-to-V-label 1 3 3)
            (value-row-col-to-V-label 1 3 4)
            (value-row-col-to-H-label 1 3 3)
        )
    )


    (solve
        5 5
        . . . . .
        . . 3 . .
        . . . . .
        . . . . .
        . . . . .
    )
    (bind ?*simulated-eliminations* (create$))
)

***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************

. . . . .
. . 3 . .
. . . . .
. . . . .
. . . . .

start init-grid-structure 0.00275111198425293
start create-csp-variables
start create-labels 0.0004119873046875
start init-physical-csp-links 0.00281786918640137
start init-physical-non-csp-links 0.832499980926514
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.184462070465088
     start init-physical-BN-non-csp-links at local time 0.677785873413086
     start init-physical-BP-non-csp-links at local time 1.30767107009888
     end init-physical-BP-non-csp-links at local time 10.5989608764648
end init-physical-non-csp-links 11.431499004364
start init-corner-B-c-values 11.434454202652
start init-outer-B-candidates 11.4344971179962
start init-outer-I-candidates 11.4348640441895
start init-H-candidates 11.4350571632385
start init-V-candidates 11.435907125473
start init-P-candidates 11.4366571903229
start init-inner-I-candidates 11.4388110637665
start init-inner-N-and-B-candidates 11.4393601417542
start solution 11.4435749053955
Simulated elimination of 1334
Simulated elimination of 1333
Simulated elimination of 1233
entering BRT
H-single: Hr3c3 = 0
V-single: Vr3c4 = 0
V-single: Vr3c3 = 0
w[0]-adjacent-3-in-r2c3-nolines-south ==> Vr2c4 = 1, Vr2c3 = 1, Hr3c4 = 1, Hr3c2 = 1, Hr2c3 = 1, Vr1c4 = 0, Vr1c3 = 0, Hr2c4 = 0, Hr2c2 = 0
799 candidates, 0 csp-links and 0 links. Density = 0.0%
starting non trivial part of solution
GRID 0 NOT SOLVED. 295 VALUES MISSING.
filling unsolved HV variables
GRID 0 SOLVED. rating-type = nW1eq, MOST COMPLEX RULE TRIED = S

.....................
:   :           :   :
.....   .———.   .....
:   :   | 3 |   :   :
.....———.   .———.....
:   :           :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 11.44s, solve-time = 1.03s, total-time = 12.48s
nb-facts=<Fact-27754>
Quasi-Loop max length = 0
Colours not effectively used
***********************************************************************************************
***  SlitherRules 2.1.s based on CSP-Rules 2.1.s, config = nW1eq
***  Using CLIPS 6.32-r768
***  Running on MacBookPro Retina Mid-2012 i7 2.7GHz, 16GB 1600MHz DDR3, MacOS 10.15.4
***********************************************************************************************
