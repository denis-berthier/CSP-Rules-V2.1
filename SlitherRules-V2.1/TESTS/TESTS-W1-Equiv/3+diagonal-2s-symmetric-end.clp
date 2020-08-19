
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF 3+DIAGONAL-2s-SYMMETRIC-END
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

3+diagonal-2-symmetric-end

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(progn
    (redefine-instance-globals 5 5)
    (bind ?*simulated-eliminations* (create$
        (value-row-col-to-P-label 3 4 4) ; ns
        (value-row-col-to-P-label 6 4 4) ; ew
        (value-row-col-to-P-label 2 4 4) ; ne
        (value-row-col-to-P-label 7 4 4) ; sw
    ))

    (solve
        5 5
        . . . . .
        . . . . .
        . 3 2 . .
        . . . . .
        . . . . .
    )

    (bind ?*simulated-eliminations* (create$))
)









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
. 3 2 . .
. . . . .
. . . . .
)

(bind ?*simulated-eliminations*
(create$
))
)

***********************************************************************************************
***  SlitherRules 2.0b.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. 3 2 . .
. . . . .
. . . . .

start init-grid-structure 3.69999999999537e-05
start create-csp-variables
start create-labels 0.00108600000000003
start init-physical-csp-links 0.00585000000000002
start init-physical-non-csp-links 2.063356
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.383162
     start init-physical-BN-non-csp-links at local time 1.434986
     start init-physical-BP-non-csp-links at local time 2.603677
     end init-physical-BP-non-csp-links at local time 18.734381
end init-physical-non-csp-links 20.797795
start init-corner-B-c-values 20.798151
start init-outer-B-candidates 20.798252
start init-outer-I-candidates 20.798801
start init-H-candidates 20.799145
start init-V-candidates 20.800194
start init-P-candidates 20.801232
start init-inner-I-candidates 20.803592
start init-inner-N-and-B-candidates 20.804126
start solution 20.810024
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c4-symmetric-nw-corner
r3c3-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
r2c4-asymmetric-sw-corner
r3c3-asymmetric-ne-corner
r3c3-asymmetric-sw-corner
r4c2-asymmetric-ne-corner
3+diagonal-2-symmetric-corner-in-{r3c2+r3c3...se} ==> Vr3c2 = 1, Hr4c2 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr4c1 = 0
3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ o
r3c2-closed-sw-corner ==> Pr4c2 = ne
r3c2-symmetric-sw-corner
r4c1-symmetric-ne-corner
r2c3-asymmetric-sw-corner
r3c2-asymmetric-ne-corner
r3c1-asymmetric-se-corner
r4c2-asymmetric-nw-corner
Starting_init_links_with_<Fact-27700>
718 candidates, 2243 csp-links and 8761 links. Density = 3.40361223451164%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-49712>
whip[1]: Pr3c2{ns .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr3c2{ns .} ==> Br2c2 ≠ sw, swn, esw
whip[1]: Pr3c3{nw .} ==> Br2c2 ≠ ne, s, e, wne, ew, ns
whip[1]: Pr3c3{nw .} ==> Br2c3 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr3c3{nw .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ sw, swn, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ne, nes
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 3
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br3c1{e .} ==> Nr3c1 ≠ 0
whip[1]: Br4c1{s .} ==> Nr4c1 ≠ 3
whip[1]: Br4c2{n .} ==> Nr4c2 ≠ 0, 3
Entering_level_W1_with_<Fact-49743>
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
:   | 3 : 2 :   :   :
.   .———.............
:           :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 20.810024, solve-time = 24.840955, total-time = 45.650979
nb-facts=<Fact-49769>
***********************************************************************************************
***  SlitherRules 2.0b.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . 3 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 14209 links. Initial density = 1.1004287404819
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering level W1 with <Fact-79999>
whip[1]: Br3c2{nes .} ==> Pr3c2 ≠ o, nw
whip[1]: Br3c2{nes .} ==> Pr3c3 ≠ o, ne
whip[1]: Br3c2{nes .} ==> Pr4c2 ≠ o, sw
whip[1]: Br3c2{nes .} ==> Pr4c3 ≠ o, se
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ nw, wne, swn
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ ne, nes, wne
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ sw, swn, esw
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Br3c3{nw .} ==> Pr4c3 ≠ ne, sw
whip[1]: Br3c3{nw .} ==> Pr3c4 ≠ ne, sw, o
whip[1]: Br3c3{nw .} ==> Pr3c3 ≠ ns, ew, sw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ e, s, ns, sw, swn, wne, ew, ne
whip[1]: Pr3c3{nw .} ==> Br3c2 ≠ wne, nes
whip[1]: Br3c2{esw .} ==> Hr4c2 ≠ 0
H-single: Hr4c2 = 1
whip[1]: Pr4c3{ew .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0
whip[1]: Br3c2{esw .} ==> Vr3c2 ≠ 0
V-single: Vr3c2 = 1
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0
whip[1]: Br4c1{o .} ==> Nr4c1 ≠ 3
whip[1]: Br4c2{n .} ==> Nr4c2 ≠ 3, 0
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ esw
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br4c3{o .} ==> Nr4c3 ≠ 3
whip[1]: Pr3c3{nw .} ==> Br2c3 ≠ ne, o, n, e
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ sw, ne, e, n, o, swn, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.............
:           :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 52.91397, nb-facts=<Fact-80089>

simplified to:
whip[1]: Br3c2{nes .} ==> Pr3c3 ≠ o, ne
whip[1]: Br3c2{nes .} ==> Pr4c2 ≠ o, sw
whip[1]: Br3c2{nes .} ==> Pr4c3 ≠ o, se
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Br3c3{nw .} ==> Pr4c3 ≠ ne, sw
whip[1]: Br3c3{nw .} ==> Pr3c3 ≠ ns, ew, sw
whip[1]: Pr3c3{nw .} ==> Br3c2 ≠ wne, nes
whip[1]: Br3c2{esw .} ==> Hr4c2 ≠ 0
H-single: Hr4c2 = 1
whip[1]: Pr4c3{ew .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0
whip[1]: Br3c2{esw .} ==> Vr3c2 ≠ 0
V-single: Vr3c2 = 1
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0

***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. 3 2 . .
. . . . .
. . . . .

start init-grid-structure 5.2000000000052e-05
start create-csp-variables
start create-labels 0.00176100000000001
start init-physical-csp-links 0.00790000000000002
start init-physical-non-csp-links 2.000818
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.388806
     start init-physical-BN-non-csp-links at local time 1.468881
     start init-physical-BP-non-csp-links at local time 2.64125
     end init-physical-BP-non-csp-links at local time 17.638245
end init-physical-non-csp-links 19.639117
start init-corner-B-c-values 19.639524
start init-outer-B-candidates 19.639613
start init-outer-I-candidates 19.640087
start init-H-candidates 19.640413
start init-V-candidates 19.640997
start init-P-candidates 19.64159
start init-inner-I-candidates 19.643523
start init-inner-N-and-B-candidates 19.64403
start solution 19.649287
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
Starting_init_links_with_<Fact-27603>
804 candidates, 2761 csp-links and 11246 links. Density = 3.48382619901737%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-55621>
whip[1]: Br3c2{esw .} ==> Pr3c2 ≠ o, nw
whip[1]: Br3c2{esw .} ==> Pr3c3 ≠ o, ne
whip[1]: Br3c2{esw .} ==> Pr4c2 ≠ o, sw
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ o, se
whip[1]: Pr4c3{sw .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c2{ew .} ==> Br4c1 ≠ ne, wne, nes
whip[1]: Pr3c3{sw .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ nes, se, esw
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Br3c3{se .} ==> Pr4c3 ≠ sw, ne
whip[1]: Br3c3{se .} ==> Pr3c4 ≠ sw, o, ne
whip[1]: Br3c3{se .} ==> Pr3c3 ≠ ew, sw, ns
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ ns, ne, ew, wne, e, s, swn, sw
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ e, ne, o, n
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, wne
whip[1]: Br3c2{swn .} ==> Vr3c2 ≠ 0
V-single: Vr3c2 = 1
whip[1]: Br3c2{swn .} ==> Hr4c2 ≠ 0
H-single: Hr4c2 = 1
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0
whip[1]: Pr4c3{ew .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ esw
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ ne, sw, esw, swn, o, n, e
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ sw, swn, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ne, nes
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 3
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br4c2{ns .} ==> Nr4c2 ≠ 3, 0
whip[1]: Br4c1{sw .} ==> Nr4c1 ≠ 3
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
Entering_level_W1_with_<Fact-55686>
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
:   | 3 : 2 :   :   :
.   .———.............
:           :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 19.649287, solve-time = 32.964725, total-time = 52.614012
nb-facts=<Fact-55712>
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

simplified to:

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................        .....................
:   : 3 : 2s:   :   :   =>   :   | 3 : 2s:   :   :
.....................        .   .———.............
:   :   :   :   :   :        :           :   :   :
.....................        .....................

whip[1]: B(r, c){esw .} ==> P(r, c+1) ≠ o, ne – these two values are incompatible with any of the 4 values for B(r, c)
whip[1]: P(r+1, c+1){o .} ==> B(r, c+1) ≠ ne, sw, ew, ns – for B(r, c+1), the cell with the 2, there remains only two possibilities: se and nw
whip[1]: B(r, c+1){se .} ==> P(r, c+1) ≠ ew, sw, ns – now, for P(r, c+1), there remains only two possibilities: se and nw
whip[1]: P(r, c+1){se .} ==> B(r, c) ≠ nes, wne
whip[1]: B(r, c){swn .} ==> V(r, c) ≠ 0 ; single: V(r, c) = 1
whip[1]: B(r, c){swn .} ==> H(r+1, c) ≠ 0 ; single: H(r+1, c) = 1
singles: P(r+1, c) = ne, H(r+1, c-1) = 0, V(r+1, c) = 0

and

whip[1]: B(r, c){esw .} ==> P(r+1, c+1) ≠ o, se
whip[1]: B(r, c+1){se .} ==> P(r+1, c+1) ≠ sw, ne
whip[1]: P(r+1, c+1){ew .} ==> V(r+1, c+1) ≠ 1
single: V(r+1, c+1) = 0





(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 3 5 5) ; ns
(value-row-col-to-P-label 6 5 5) ; ew
(value-row-col-to-P-label 2 5 5) ; ne
(value-row-col-to-P-label 7 5 5) ; sw
)
)

(solve
5 5
. . . . .
. . . . .
. 3 2 . .
. . . 2 .
. . . . .
)

(bind ?*simulated-eliminations*
(create$
))
)
***********************************************************************************************
***  SlitherRules 2.0b.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. 3 2 . .
. . . 2 .
. . . . .

start init-grid-structure 0.00514899999999585
start create-csp-variables
start create-labels 0.000880999999999688
start init-physical-csp-links 0.00486300000000028
start init-physical-non-csp-links 2.209578
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.412987000000001
     start init-physical-BN-non-csp-links at local time 1.516113
     start init-physical-BP-non-csp-links at local time 2.73399
     end init-physical-BP-non-csp-links at local time 23.326616
end init-physical-non-csp-links 25.536253
start init-corner-B-c-values 25.541701
start init-outer-B-candidates 25.541772
start init-outer-I-candidates 25.542259
start init-H-candidates 25.542551
start init-V-candidates 25.543437
start init-P-candidates 25.544335
start init-inner-I-candidates 25.546646
start init-inner-N-and-B-candidates 25.547134
start solution 25.552434
Simulated elimination of 7455
Simulated elimination of 6455
Simulated elimination of 3455
Simulated elimination of 2455
entering BRT
r5c5-symmetric-nw-corner
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c4-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r4c4-symmetric-se-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o
r3c3-symmetric-se-corner
r4c4-symmetric-nw-corner
r3c5-asymmetric-sw-corner
r4c4-asymmetric-ne-corner
r4c4-asymmetric-sw-corner
r5c3-asymmetric-ne-corner
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
r2c4-asymmetric-sw-corner
r3c3-asymmetric-ne-corner
r3c3-asymmetric-sw-corner
r4c2-asymmetric-ne-corner
3+diagonal-2-symmetric-corner-in-{r3c2+r3c3...se} ==> Vr3c2 = 1, Hr4c2 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr4c1 = 0
3-in-r3c2-closed-sw-corner ==> Pr3c3 ≠ o
r3c2-closed-sw-corner ==> Pr4c2 = ne
r3c2-symmetric-sw-corner
r4c1-symmetric-ne-corner
r2c3-asymmetric-sw-corner
r3c2-asymmetric-ne-corner
r3c1-asymmetric-se-corner
r4c2-asymmetric-nw-corner
Starting_init_links_with_<Fact-27706>
695 candidates, 2099 csp-links and 7995 links. Density = 3.31515767213319%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-47898>
whip[1]: Pr3c2{ns .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Pr3c2{ns .} ==> Br2c2 ≠ sw, swn, esw
whip[1]: Pr3c3{nw .} ==> Br2c2 ≠ ne, s, e, wne, ew, ns
whip[1]: Pr3c3{nw .} ==> Br2c3 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr3c3{nw .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ sw, swn, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ne, nes
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ ne, sw, ew, ns
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr5c4{ns .} ==> Br5c3 ≠ s, o, nes, wne, sw, ne, w
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ sw, swn, esw
whip[1]: Pr5c5{o .} ==> Br5c4 ≠ ne, nes, wne
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ n, nes, esw, w
whip[1]: Br5c5{se .} ==> Pr6c5 ≠ ne
whip[1]: Br5c5{se .} ==> Pr5c6 ≠ sw
whip[1]: Pr5c6{nw .} ==> Br4c5 ≠ s, ns
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ e, ew
whip[1]: Br5c5{se .} ==> Nr5c5 ≠ 1, 3
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 3
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br3c1{e .} ==> Nr3c1 ≠ 0
whip[1]: Br4c1{s .} ==> Nr4c1 ≠ 3
whip[1]: Br4c2{n .} ==> Nr4c2 ≠ 0, 3
Entering_level_W1_with_<Fact-47953>
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
:   | 3 : 2 :   :   :
.   .———.............
:           : 2 :   :
.....................
:   :   :   :   :   :
.....................

init-time = 25.552434, solve-time = 21.836016, total-time = 47.38845
nb-facts=<Fact-47979>
***********************************************************************************************
***  SlitherRules 2.0b.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************


without this rule but with all the other ones:
***********************************************************************************************
***  SlitherRules 2.0.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. 3 2 . .
. . . . .
. . . . .

start init-grid-structure 0.00461899999999105
start create-csp-variables
start create-labels 0.000875000000007731
start init-physical-csp-links 0.00479800000002228
start init-physical-non-csp-links 2.38343400000002
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.464696000000004
     start init-physical-BN-non-csp-links at local time 1.704926
     start init-physical-BP-non-csp-links at local time 2.945268
     end init-physical-BP-non-csp-links at local time 19.621406
end init-physical-non-csp-links 22.004878
start init-corner-B-c-values 22.009799
start init-outer-B-candidates 22.009888
start init-outer-I-candidates 22.010379
start init-H-candidates 22.01068
start init-V-candidates 22.011596
start init-P-candidates 22.012614
start init-inner-I-candidates 22.014894
start init-inner-N-and-B-candidates 22.015396
start solution 22.020916
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r4c4-symmetric-nw-corner
r3c3-symmetric-se-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r2c2-symmetric-se-corner
r3c3-symmetric-nw-corner
r2c4-asymmetric-sw-corner
r3c3-asymmetric-ne-corner
r3c3-asymmetric-sw-corner
r4c2-asymmetric-ne-corner
Starting_init_links_with_<Fact-27669>
794 candidates, 2713 csp-links and 10834 links. Density = 3.4413206234654%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-54767>
whip[1]: Br3c2{esw .} ==> Pr3c2 ≠ o, nw
whip[1]: Br3c2{esw .} ==> Pr3c3 ≠ o
r2c3-asymmetric-sw-corner
r3c2-asymmetric-ne-corner
3-in-r3c2-asymmetric-ne-corner ==> Vr3c2 = 1, Hr4c2 = 1, Vr4c2 = 0, Hr4c1 = 0
r3c2-closed-sw-corner ==> Pr4c2 = ne
r3c2-symmetric-sw-corner
r4c1-symmetric-ne-corner
r3c1-asymmetric-se-corner
r4c2-asymmetric-nw-corner
whip[1]: Pr4c3{ew .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ swn, sw, esw
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ e, swn, esw, sw, ne, o, n
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ nes, se, esw
whip[1]: Pr3c3{nw .} ==> Br2c2 ≠ ne, s, e, wne, ew, ns
whip[1]: Pr3c3{nw .} ==> Br3c3 ≠ ne, sw, ew, ns
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ ne, e, n, o, swn, esw, sw
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ sw, swn, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ne, nes
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ n, nes, esw, sw, ew, ns, ne, w
whip[1]: Br4c3{se .} ==> Nr4c3 ≠ 3
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br4c2{ns .} ==> Nr4c2 ≠ 3, 0
whip[1]: Br3c1{wne .} ==> Nr3c1 ≠ 0
whip[1]: Br4c1{sw .} ==> Nr4c1 ≠ 3
Entering_level_W1_with_<Fact-54827>
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
:   | 3 : 2 :   :   :
.   .———.............
:           :   :   :
.....................
:   :   :   :   :   :
.....................

init-time = 22.020916, solve-time = 30.944305, total-time = 52.965221
nb-facts=<Fact-54853>
***********************************************************************************************




TODO:   symmetric ne corner

(progn
(bind ?*simulated-eliminations*
(create$
(value-row-col-to-P-label 3 3 4) ; ns
(value-row-col-to-P-label 6 3 4) ; ew
(value-row-col-to-P-label 4 3 4) ; nw
(value-row-col-to-P-label 5 3 4) ; se
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

(bind ?*simulated-eliminations*
(create$
))
)
***********************************************************************************************
***  SlitherRules 2.0b.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************

. . . . .
. . . . .
. . 2 3 .
. . . . .
. . . . .

start init-grid-structure 0.00479999999998881
start create-csp-variables
start create-labels 0.00093600000001004
start init-physical-csp-links 0.00503600000000404
start init-physical-non-csp-links 2.26271200000001
     start init-physical-PH-and-PV-non-csp-links at local time 0
     start init-physical-BH-and-BV-non-csp-links at local time 0.418896000000004
     start init-physical-BN-non-csp-links at local time 1.587778
     start init-physical-BP-non-csp-links at local time 2.896771
     end init-physical-BP-non-csp-links at local time 22.265527
end init-physical-non-csp-links 24.528294
start init-corner-B-c-values 24.533361
start init-outer-B-candidates 24.533431
start init-outer-I-candidates 24.533893
start init-H-candidates 24.534181
start init-V-candidates 24.535068
start init-P-candidates 24.535965
start init-inner-I-candidates 24.538279
start init-inner-N-and-B-candidates 24.538777
start solution 24.544312
Simulated elimination of 6434
Simulated elimination of 5434
Simulated elimination of 4434
Simulated elimination of 3434
entering BRT
r5c5-symmetric-se-corner
r5c1-symmetric-sw-corner
r3c3-symmetric-ne-corner
r2c4-symmetric-sw-corner
r1c5-symmetric-ne-corner
r1c1-symmetric-nw-corner
2-in-r3c3-symmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r3c3-symmetric-sw-corner
r4c2-symmetric-ne-corner
r3c3-asymmetric-se-corner
r4c4-asymmetric-nw-corner
r2c2-asymmetric-se-corner
r3c3-asymmetric-nw-corner
3+diagonal-2-symmetric-corner-in-{r3c4+r3c3...sw} ==> Vr3c5 = 1, Hr4c4 = 1, Vr4c5 = 0, Vr4c4 = 0, Hr4c5 = 0
3-in-r3c4-closed-se-corner ==> Pr3c4 ≠ o
r3c4-closed-se-corner ==> Pr4c5 = nw
r4c5-symmetric-nw-corner
r3c4-symmetric-se-corner
r2c3-asymmetric-se-corner
r3c4-asymmetric-nw-corner
r3c5-asymmetric-sw-corner
r4c4-asymmetric-ne-corner
Starting_init_links_with_<Fact-27700>
718 candidates, 2243 csp-links and 8761 links. Density = 3.40361223451164%
start effective solution - assert (play)
Entering_level_sW1_with_<Fact-49712>
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr3c3{ne .} ==> Br3c3 ≠ nw, se
whip[1]: Pr3c4{ne .} ==> Br2c3 ≠ w, n, o, nes, esw, se, nw
whip[1]: Pr3c4{ne .} ==> Br2c4 ≠ s, nes, wne, ew, se, nw, ns, w
whip[1]: Pr3c4{ne .} ==> Br3c3 ≠ ns, ew
whip[1]: Pr3c5{ns .} ==> Br2c4 ≠ esw
whip[1]: Pr3c5{ns .} ==> Br2c5 ≠ sw, swn, esw
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ se, nes, esw
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ n, swn, esw, ew, se, nw, ns, e
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ nw, swn
whip[1]: Br4c3{sw .} ==> Nr4c3 ≠ 3
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br3c5{w .} ==> Nr3c5 ≠ 0
whip[1]: Br4c4{n .} ==> Nr4c4 ≠ 0, 3
whip[1]: Br4c5{s .} ==> Nr4c5 ≠ 3
Entering_level_W1_with_<Fact-49745>
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
:   :   : 2 : 3 |   :
.............———.   .
:   :   :           :
.....................
:   :   :   :   :   :
.....................

init-time = 24.544312, solve-time = 24.97777, total-time = 49.522082
nb-facts=<Fact-49771>
***********************************************************************************************
***  SlitherRules 2.0b.s based on CSP-Rules 2.0.s, config = W
***  using CLIPS 6.30-r255
***********************************************************************************************



