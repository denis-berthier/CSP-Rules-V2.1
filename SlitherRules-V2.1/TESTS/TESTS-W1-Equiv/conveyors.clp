
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DIAGONAL OF 2S AS CONVEYOR
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

a diagonal of 2s is a conveyor of open corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

;;; Must be redone with 2 elims

(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 6 7)
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . 2 .
. . . . . . .

start init-grid-structure 0.00539500000013504
start create-csp-variables
start create-labels 0.00145999999995183
start init-physical-csp-links 0.00892700000031255
start init-physical-non-csp-links 6.73451900000009
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.34012400000029
     start init-physical-BN-non-csp-links at local time 5.05719700000009
     start init-physical-BP-non-csp-links at local time 9.32750600000008
     end init-physical-BP-non-csp-links at local time 79.9779429999999
end init-physical-non-csp-links 86.7125120000001
start init-corner-B-c-values 86.7181909999999
start init-outer-B-candidates 86.7182659999999
start init-outer-I-candidates 86.7188639999999
start init-H-candidates 86.7192439999999
start init-V-candidates 86.7202569999999
start init-P-candidates 86.721356
start init-inner-I-candidates 86.7251430000001
start init-inner-N-and-B-candidates 86.7260369999999
start solution 86.7390680000003
Simulated elimination of 1367
entering BRT
V-single: Vr6c7 = 0
Starting_init_links_with_<Fact-49262>
1597 candidates, 5980 csp-links and 24648 links. Density = 1.9340775231755%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-110522>
whip[1]: Br6c6{ns .} ==> Pr6c6 ≠ o, nw <<<<<<<<<<<<<<<<<<<<<<<<
whip[1]: Br6c6{ns .} ==> Pr7c6 ≠ o, sw
whip[1]: Pr7c6{ew .} ==> Br7c5 ≠ ne, wne, nes
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ nes, se, esw
Entering_level_W1_with_<Fact-110531>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   : 2     :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 86.7390680000003, solve-time = 166.621049, total-time = 253.360117
nb-facts=<Fact-110581>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************







(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 6 7)
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
V-single : Vr6c7 = 0
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o, nw
;;; RS1
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
;;; RS2
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es, esw, nes
;;; RS3
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
;;; RS4
whip[1]: Br6c6{sw .} ==> Pr7c6 <> o, sw
whip[1]: Pr7c6{ne .} ==> Br7c5 <> ne, wne, nes





(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 6 7)
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
V-single : Vr6c7 = 0
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o, nw
;;; RS1
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
;;; RS2
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es, esw, nes
;;; RS3
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
;;; RS4
whip[1]: Br6c6{sw .} ==> Pr7c6 <> o, sw
whip[1]: Pr7c6{ne .} ==> Br7c5 <> ne, wne, nes



(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 6 7)
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
V-single : Vr6c7 = 0
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o, nw
;;; RS1
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
;;; RS2
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es, esw, nes
;;; RS3
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
;;; RS4
whip[1]: Br6c6{sw .} ==> Pr7c6 <> o, sw
whip[1]: Pr7c6{ne .} ==> Br7c5 <> ne, wne, nes



(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-V-label 1 6 7)
)
)
(solve
7 7
. . . . . . .
. 2 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
V-single : Vr6c7 = 0
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o, nw
;;; RS1
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Br2c2{sw .} ==> Pr2c2 <> nw
;;; RS2
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es (esw et nes missing because first cell ?)
;;; RS3
whip[1]: Br2c2{sw .} ==> Pr2c2 <> o
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
;;; RS4
whip[1]: Br6c6{sw .} ==> Pr7c6 <> o, sw
whip[1]: Pr7c6{ne .} ==> Br7c5 <> ne, wne, nes





---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

a diagonal of 2s is a conveyor of incident closed corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.............———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

==>


.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .———.........
:   :   | 2     :   :
.........   .———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................



(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 4 4)
        (value-row-col-to-V-label 0 4 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00800900000012916
start create-csp-variables
start create-labels 0.000899000000117667
start init-physical-csp-links 0.00480500000003303
start init-physical-non-csp-links 2.36418600000025
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.426081999999951
     start init-physical-BN-non-csp-links at local time 1.63021000000026
     start init-physical-BP-non-csp-links at local time 2.87684399999989
     end init-physical-BP-non-csp-links at local time 20.6896670000001
end init-physical-non-csp-links 23.0538980000001
start init-corner-B-c-values 23.062171
start init-outer-B-candidates 23.062257
start init-outer-I-candidates 23.0627490000002
start init-H-candidates 23.0630880000003
start init-V-candidates 23.0637470000001
start init-P-candidates 23.0644460000003
start init-inner-I-candidates 23.0670220000002
start init-inner-N-and-B-candidates 23.0675860000001
start solution 23.0729940000001
Simulated elimination of 344
Simulated elimination of 244
entering BRT
V-single: Vr4c4 = 1
H-single: Hr4c4 = 1
P-single: Pr4c4 = se
H-single: Hr4c3 = 0
V-single: Vr3c4 = 0
B-single: Br3c3 = nw
H-single: Hr3c3 = 1
V-single: Vr3c3 = 1
P-single: Pr3c3 = se
H-single: Hr3c2 = 0
V-single: Vr2c3 = 0
Starting_init_links_with_<Fact-27628>
705 candidates, 2116 csp-links and 8135 links. Density = 3.27812701482914%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-48134>
whip[1]: Br4c4{nw .} ==> Pr5c5 ≠ nw
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ s, o, nes, wne, sw, ne, w
whip[1]: Pr4c5{nw .} ==> Br3c5 ≠ sw, swn, esw
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ nw, wne, swn
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ ne, nes, wne
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ nw, wne, swn
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c2{w .} ==> Nr2c2 ≠ 3
whip[1]: Br2c3{s .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{e .} ==> Nr3c2 ≠ 0
whip[1]: Br3c4{s .} ==> Nr3c4 ≠ 0
whip[1]: Br4c3{e .} ==> Nr4c3 ≠ 0
whip[1]: Br4c4{nw .} ==> Nr4c4 ≠ 0, 1
Entering_level_W1_with_<Fact-48165>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .———.........
:   :   | 2     :   :
.........   .———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 23.0729940000001, solve-time = 23.2172719999999, total-time = 46.290266
nb-facts=<Fact-48191>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************








---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

a diagonal of 2s is a conveyor of symmetric corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 3 4 4) ; ns
(value-row-col-to-P-label 6 4 4) ; ew
(value-row-col-to-P-label 2 4 4) ; ne
(value-row-col-to-P-label 7 4 4) ; sw
)
)

(solve
5 5
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .
)

(bind ?*simulated-eliminations*
(create$
))
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.0123490000000857
start create-csp-variables
start create-labels 0.000890999999683117
start init-physical-csp-links 0.00486799999998766
start init-physical-non-csp-links 2.35745799999995
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.461534999999913
     start init-physical-BN-non-csp-links at local time 1.73710900000015
     start init-physical-BP-non-csp-links at local time 3.08851000000004
     end init-physical-BP-non-csp-links at local time 20.1085040000003
end init-physical-non-csp-links 22.4660159999999
start init-corner-B-c-values 22.4786009999998
start init-outer-B-candidates 22.4786779999999
start init-outer-I-candidates 22.4791179999997
start init-H-candidates 22.4793930000001
start init-V-candidates 22.4799359999997
start init-P-candidates 22.4804599999998
start init-inner-I-candidates 22.482368
start init-inner-N-and-B-candidates 22.4828189999998
start solution 22.4877399999996
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
Starting_init_links_with_<Fact-27617>
819 candidates, 2866 csp-links and 11664 links. Density = 3.48209247964749%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56681>
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<<<<<<
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ne, s, swn, sw, ns, e, wne, ew
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ sw, swn, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ne, nes, wne
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
Entering_level_W1_with_<Fact-56710>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.4877399999996, solve-time = 34.8787610000004, total-time = 57.366501
nb-facts=<Fact-56736>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



The proof can be simplified to:
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<<<<<<











---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

a diagonal of 2s is a conveyor of non-closed corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 4 7 7) ; 4 is nw
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations* (create$))
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . 2 .
. . . . . . .

start init-grid-structure 0.0118290000000343
start create-csp-variables
start create-labels 0.0017720000000736
start init-physical-csp-links 0.00896299999976691
start init-physical-non-csp-links 6.58887099999993
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.53189400000019
     start init-physical-BN-non-csp-links at local time 5.3418300000003
     start init-physical-BP-non-csp-links at local time 9.81338900000037
     end init-physical-BP-non-csp-links at local time 72.5145960000004
end init-physical-non-csp-links 79.103513
start init-corner-B-c-values 79.115616
start init-outer-B-candidates 79.1156960000003
start init-outer-I-candidates 79.1162860000004
start init-H-candidates 79.1166780000003
start init-V-candidates 79.1176620000001
start init-P-candidates 79.118774
start init-inner-I-candidates 79.1220800000001
start init-inner-N-and-B-candidates 79.123012
start solution 79.132744
Simulated elimination of 4477
entering BRT
Starting_init_links_with_<Fact-49261>
1613 candidates, 6094 csp-links and 25190 links. Density = 1.93757605312912%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-111833>
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ se
whip[1]: Br6c6{sw .} ==> Pr6c6 ≠ nw, o <<<<<<<<<<<<<<<<<<<
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ nes, se, esw
Entering_level_W1_with_<Fact-111840>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   : 2 :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 79.132744, solve-time = 169.282043, total-time = 248.414787
nb-facts=<Fact-111890>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************







(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 4 7 7) ; 4 is nw
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)





(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 4 7 7) ; 4 is nw
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)



(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 4 7 7) ; 4 is nw
)
)
(solve
7 7
. . . . . . .
. . . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)



(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 4 7 7) ; 4 is nw
)
)
(solve
7 7
. . . . . . .
. 2 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .
)
(bind ?*simulated-eliminations*
(create$
)
)
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. 2 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 2 .
. . . . . . .

start init-grid-structure 0.012260000000424
start create-csp-variables
start create-labels 0.00169499999992695
start init-physical-csp-links 0.00900699999965582
start init-physical-non-csp-links 6.91265799999928
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.36031800000001
     start init-physical-BN-non-csp-links at local time 5.41762300000028
     start init-physical-BP-non-csp-links at local time 10.51397
     end init-physical-BP-non-csp-links at local time 88.1323459999994
end init-physical-non-csp-links 95.0450519999995
start init-corner-B-c-values 95.0576000000001
start init-outer-B-candidates 95.0576790000005
start init-outer-I-candidates 95.0583839999999
start init-H-candidates 95.0587560000004
start init-V-candidates 95.0596940000005
start init-P-candidates 95.0607499999996
start init-inner-I-candidates 95.0642120000002
start init-inner-N-and-B-candidates 95.0650690000002
start solution 95.0744939999995
Simulated elimination of 4477
entering BRT
Starting_init_links_with_<Fact-49213>
1561 candidates, 5710 csp-links and 23730 links. Density = 1.94894791307347%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-108097>
whip[1]: Pr7c7{o .} ==> Br6c6 ≠ se
whip[1]: Br6c6{sw .} ==> Pr6c6 ≠ nw, o <<<<<<<<<<<<<<<<
whip[1]: Pr6c6{sw .} ==> Br5c5 ≠ se
whip[1]: Br5c5{sw .} ==> Pr5c5 ≠ nw, o <<<<<<<<<<<<<<<<
whip[1]: Pr5c5{sw .} ==> Br4c4 ≠ se
whip[1]: Br4c4{sw .} ==> Pr4c4 ≠ nw, o <<<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br3c3 ≠ se
whip[1]: Br3c3{sw .} ==> Pr3c3 ≠ nw, o <<<<<<<<<<<<<<<<
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ se
whip[1]: Br2c2{sw .} ==> Pr2c2 ≠ nw, o <<<<<<<<<<<<<<<<
whip[1]: Pr2c2{sw .} ==> Br1c1 ≠ se
Entering_level_W1_with_<Fact-108120>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:   :   :   :   :   :   :   :
.............................
:   : 2 :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.............................
:   :   :   :   :   : 2 :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 95.0744939999995, solve-time = 162.852729, total-time = 257.927223
nb-facts=<Fact-108170>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************









---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

a diagonal of 2s is not a conveyor of incident non-closed corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................



(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 5 4 4) ;;; 5 for se
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00540000000000873
start create-csp-variables
start create-labels 0.000890000000254076
start init-physical-csp-links 0.00474500000018452
start init-physical-non-csp-links 2.48452300000008
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.488901999999598
     start init-physical-BN-non-csp-links at local time 1.80916899999966
     start init-physical-BP-non-csp-links at local time 3.24660499999982
     end init-physical-BP-non-csp-links at local time 19.8284569999996
end init-physical-non-csp-links 22.3130260000003
start init-corner-B-c-values 22.3186900000001
start init-outer-B-candidates 22.3187579999999
start init-outer-I-candidates 22.3191740000002
start init-H-candidates 22.3194699999999
start init-V-candidates 22.3201130000002
start init-P-candidates 22.3206500000001
start init-inner-I-candidates 22.3223740000003
start init-inner-N-and-B-candidates 22.3228240000003
start solution 22.3278919999998
Simulated elimination of 5444
entering BRT
Starting_init_links_with_<Fact-27617>
819 candidates, 2878 csp-links and 11799 links. Density = 3.52239447593971%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-56975>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nw, wne, swn
Entering_level_W1_with_<Fact-56978>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.3278919999998, solve-time = 36.8902070000004, total-time = 59.2180990000002
nb-facts=<Fact-57004>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

a diagonal of 2s is not a conveyor of isolated corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................



(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 4)
        (value-row-col-to-V-label 1 4 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00527400000009948
start create-csp-variables
start create-labels 0.000873999999839725
start init-physical-csp-links 0.00480699999980061
start init-physical-non-csp-links 2.43704399999979
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.456975999999941
     start init-physical-BN-non-csp-links at local time 1.71021699999983
     start init-physical-BP-non-csp-links at local time 3.06867299999976
     end init-physical-BP-non-csp-links at local time 20.1298339999998
end init-physical-non-csp-links 22.5669159999998
start init-corner-B-c-values 22.5724500000001
start init-outer-B-candidates 22.5725199999997
start init-outer-I-candidates 22.5730570000001
start init-H-candidates 22.5733519999999
start init-V-candidates 22.5738889999998
start init-P-candidates 22.5744279999999
start init-inner-I-candidates 22.5761429999998
start init-inner-N-and-B-candidates 22.576587
start solution 22.5814820000001
Simulated elimination of 1344
Simulated elimination of 1244
entering BRT
V-single: Vr4c4 = 0
H-single: Hr4c4 = 0
Starting_init_links_with_<Fact-27619>
783 candidates, 2579 csp-links and 10452 links. Density = 3.41397928486737%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-53685>
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ne, sw, ns, ew
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ne, s, swn, sw, ns, e, wne, ew
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br4c4{s .} ==> Nr4c4 ≠ 3
Entering_level_W1_with_<Fact-53710>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.............   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.5814820000001, solve-time = 29.4756229999998, total-time = 52.0571049999999
nb-facts=<Fact-53736>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************


=> Br2c2 has only 6 possible values: n, w, nw, se, nes, esw






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

What can be propagated from an isolated 2 ????

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 6 6)
        (value-row-col-to-V-label 1 6 6)
    )
)

(solve 
7 7
. . . . . . .
. . . . . . . 
. . . . . . . 
. . . . . . . 
. . . . 2 . .
. . . . . . . 
. . . . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . 2 . .
. . . . . . .
. . . . . . .

start init-grid-structure 0.00477000000000771
start create-csp-variables
start create-labels 0.00157900000021982
start init-physical-csp-links 0.00901000000021668
start init-physical-non-csp-links 7.051152
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.49603999999999
     start init-physical-BN-non-csp-links at local time 5.13526699999966
     start init-physical-BP-non-csp-links at local time 9.47259899999972
     end init-physical-BP-non-csp-links at local time 68.1809519999997
end init-physical-non-csp-links 75.2321710000001
start init-corner-B-c-values 75.2372089999999
start init-outer-B-candidates 75.2372890000001
start init-outer-I-candidates 75.2379000000001
start init-H-candidates 75.2382670000002
start init-V-candidates 75.2392159999999
start init-P-candidates 75.240209
start init-inner-I-candidates 75.2435129999999
start init-inner-N-and-B-candidates 75.2443450000001
start solution 75.2541739999997
Simulated elimination of 1366
Simulated elimination of 1266
entering BRT
V-single: Vr6c6 = 0
H-single: Hr6c6 = 0
Starting_init_links_with_<Fact-49263>
1577 candidates, 5795 csp-links and 23836 links. Density = 1.91811864073982%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-108529>
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ ne, sw, ew, ns
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ sw, ne, o
whip[1]: Br5c5{se .} ==> Pr5c6 ≠ sw, o, ne
whip[1]: Br5c5{se .} ==> Pr5c5 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<<<<<<<<<
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ ne, s, swn, sw, ns, e, wne, ew
whip[1]: Pr5c5{se .} ==> Br5c4 ≠ nes, ne, wne
whip[1]: Pr5c6{ew .} ==> Br4c6 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr6c5{ew .} ==> Br6c4 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br6c6{s .} ==> Nr6c6 ≠ 3
Entering_level_W1_with_<Fact-108554>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 75.2541739999997, solve-time = 152.674102, total-time = 227.928276
nb-facts=<Fact-108604>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************






(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 6 6)
        (value-row-col-to-V-label 1 6 6)
    )
)

(solve
7 7
. . . . . . .
. . . . . . . 
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . . 
. . . . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. . . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . .
. . . . . . .

start init-grid-structure 0.010921000000053
start create-csp-variables
start create-labels 0.00156199999992168
start init-physical-csp-links 0.0111210000000028
start init-physical-non-csp-links 6.59711899999957
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.31534999999985
     start init-physical-BN-non-csp-links at local time 4.90458699999999
     start init-physical-BP-non-csp-links at local time 9.37131799999997
     end init-physical-BP-non-csp-links at local time 72.8449289999999
end init-physical-non-csp-links 79.442094
start init-corner-B-c-values 79.4532730000001
start init-outer-B-candidates 79.4533530000003
start init-outer-I-candidates 79.4539490000002
start init-H-candidates 79.4543480000002
start init-V-candidates 79.455289
start init-P-candidates 79.4563929999999
start init-inner-I-candidates 79.4596850000003
start init-inner-N-and-B-candidates 79.460517
start solution 79.4699409999998
Simulated elimination of 1366
Simulated elimination of 1266
entering BRT
V-single: Vr6c6 = 0
H-single: Hr6c6 = 0
Starting_init_links_with_<Fact-49239>
1551 candidates, 5603 csp-links and 23106 links. Density = 1.92225619267486%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-106661>
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ ne, sw, ew, ns
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ sw, ne, o
whip[1]: Br5c5{se .} ==> Pr5c6 ≠ sw, o, ne
whip[1]: Br5c5{se .} ==> Pr5c5 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<<<<<
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ ne, sw, ns, ew
whip[1]: Br4c4{se .} ==> Pr5c4 ≠ sw, ne, o
whip[1]: Br4c4{se .} ==> Pr4c5 ≠ sw, o, ne
whip[1]: Br4c4{se .} ==> Pr4c4 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<<<<<
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ ne, sw, ns, ew
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<<<<<
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ne, s, swn, sw, ns, e, wne, ew
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c5{ew .} ==> Br3c5 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr5c5{se .} ==> Br5c4 ≠ nes, ne, wne
whip[1]: Pr5c6{ew .} ==> Br4c6 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr6c5{ew .} ==> Br6c4 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br6c6{s .} ==> Nr6c6 ≠ 3
Entering_level_W1_with_<Fact-106726>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 79.4699409999998, solve-time = 137.393835, total-time = 216.863776
nb-facts=<Fact-106776>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************




(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 6 6)
        (value-row-col-to-V-label 1 6 6)
    )
)

(solve
7 7
. . . . . . .
. 2 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . . 
. . . . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . . . .
. 2 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . .
. . . . . . .

start init-grid-structure 0.011866999999711
start create-csp-variables
start create-labels 0.00165700000025026
start init-physical-csp-links 0.00888900000018111
start init-physical-non-csp-links 6.769092
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 1.46336100000008
     start init-physical-BN-non-csp-links at local time 5.41411400000015
     start init-physical-BP-non-csp-links at local time 9.81195500000013
     end init-physical-BP-non-csp-links at local time 86.4086670000002
end init-physical-non-csp-links 93.1778050000003
start init-corner-B-c-values 93.1899149999999
start init-outer-B-candidates 93.1899919999996
start init-outer-I-candidates 93.1905889999998
start init-H-candidates 93.1910859999998
start init-V-candidates 93.192055
start init-P-candidates 93.193076
start init-inner-I-candidates 93.1965599999999
start init-inner-N-and-B-candidates 93.197416
start solution 93.2072199999998
Simulated elimination of 1366
Simulated elimination of 1266
entering BRT
V-single: Vr6c6 = 0
H-single: Hr6c6 = 0
Starting_init_links_with_<Fact-49227>
1538 candidates, 5507 csp-links and 22741 links. Density = 1.92401897537381%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-105727>
whip[1]: Pr6c6{o .} ==> Br5c5 ≠ ne, sw, ew, ns
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ sw, ne, o
whip[1]: Br5c5{se .} ==> Pr5c6 ≠ sw, o, ne
whip[1]: Br5c5{se .} ==> Pr5c5 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<
whip[1]: Pr5c5{se .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr5c5{se .} ==> Br4c4 ≠ ne, sw, ns, ew
whip[1]: Br4c4{se .} ==> Pr5c4 ≠ sw, ne, o
whip[1]: Br4c4{se .} ==> Pr4c5 ≠ sw, o, ne
whip[1]: Br4c4{se .} ==> Pr4c4 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<
whip[1]: Pr4c4{se .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c4{se .} ==> Br3c3 ≠ ne, sw, ns, ew
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne, o
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ne, sw, ns, ew
whip[1]: Br2c2{se .} ==> Pr3c2 ≠ sw, ne, o
whip[1]: Br2c2{se .} ==> Pr2c3 ≠ sw, o, ne
whip[1]: Br2c2{se .} ==> Pr2c2 ≠ ne, sw, ns, ew <<<<<<<<<<<<<<<<
whip[1]: Pr2c2{se .} ==> Br1c2 ≠ swn, sw, esw
whip[1]: Pr2c2{se .} ==> Br1c1 ≠ wne, s, swn, e
whip[1]: Br1c1{se .} ==> Pr1c2 ≠ sw
whip[1]: Br1c1{se .} ==> Pr2c1 ≠ ne
whip[1]: Pr2c1{se .} ==> Br2c1 ≠ n, ne, ns, nes
whip[1]: Pr1c2{ew .} ==> Br1c2 ≠ w, ew
whip[1]: Pr2c2{se .} ==> Br2c1 ≠ wne
whip[1]: Pr2c3{ew .} ==> Br1c3 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr3c2{ew .} ==> Br3c1 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr4c4{se .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c5{ew .} ==> Br3c5 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr5c4{ew .} ==> Br5c3 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Pr5c5{se .} ==> Br5c4 ≠ nes, ne, wne
whip[1]: Pr5c6{ew .} ==> Br4c6 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr6c5{ew .} ==> Br6c4 ≠ ne, w, s, o, sw, wne, nes
whip[1]: Br6c4{swn .} ==> Nr6c4 ≠ 0
whip[1]: Br4c6{nes .} ==> Nr4c6 ≠ 0
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br3c1{swn .} ==> Nr3c1 ≠ 0
whip[1]: Br1c3{nes .} ==> Nr1c3 ≠ 0
whip[1]: Br1c1{se .} ==> Nr1c1 ≠ 3, 1
whip[1]: Br6c6{s .} ==> Nr6c6 ≠ 3
Entering_level_W1_with_<Fact-105822>
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = W[1]

-------
-------
-------
-------
-------
-------
-------

.............................
:   :   :   :   :   :   :   :
.............................
:   : 2 :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

init-time = 93.2072199999998, solve-time = 135.836407, total-time = 229.043627
nb-facts=<Fact-105872>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************







