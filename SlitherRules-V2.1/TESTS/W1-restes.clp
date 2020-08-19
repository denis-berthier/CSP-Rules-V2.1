
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              TEST OF W1-Anywhere
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - June 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3-CLOSED-CORNER



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 3)
        (value-row-col-to-V-label 0 3 3)
    )
)
(solve 
5 5 
. . . . .
. . . . .
. . 3 . .
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Cl+W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 333
Simulated elimination of 233
V-single: Vr3c3 = 1
H-single: Hr3c3 = 1
3-in-r3c3-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
r2c2-incident-closed-corner-at-se ==> Hr3c2 = 0, Vr2c3 = 0, Pr3c3 = se
entering level W1 with <Fact-81712>
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Pr3c4{nw .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{nw .} ==> Nr2c2 ≠ 3
GRID 0 SOLVED. rating-type = Cl+W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 43.565725, nb-facts=<Fact-81825>



WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 333
Simulated elimination of 233
V-single: Vr3c3 = 1
H-single: Hr3c3 = 1
P-single: Pr3c3 = se
H-single: Hr3c2 = 0
V-single: Vr2c3 = 0
entering level W1 with <Fact-81668>
whip[1]: Br3c3{wne .} ==> Pr4c4 ≠ o, se, nw
whip[1]: Pr4c4{sw .} ==> Br4c4 ≠ se, wne, swn, nw, o, e, s
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Pr3c4{nw .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{nw .} ==> Nr2c2 ≠ 3
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 51.935392, nb-facts=<Fact-81714>




ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 3)
        (value-row-col-to-V-label 0 3 4)
    )
)
(solve 
5 5 
. . . . .
. . . . .
. . 3 . .
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Cl+W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 334
Simulated elimination of 233
V-single: Vr3c4 = 1
H-single: Hr3c3 = 1
3-in-r3c3-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
r2c4-incident-closed-corner-at-sw ==> Hr3c4 = 0, Vr2c4 = 0, Pr3c4 = sw
entering level W1 with <Fact-81712>
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c4{ne .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br3c4{esw .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c3{ne .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Br2c4{ne .} ==> Nr2c4 ≠ 3
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 0
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = Cl+W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........———.   .....
:   :   : 3 |   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 45.261605, nb-facts=<Fact-81825>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 334
Simulated elimination of 233
V-single: Vr3c4 = 1
H-single: Hr3c3 = 1
P-single: Pr3c4 = sw
H-single: Hr3c4 = 0
V-single: Vr2c4 = 0
entering level W1 with <Fact-81668>
whip[1]: Br3c3{nes .} ==> Pr4c3 ≠ o, sw, ne
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ sw, nes, wne, ne, o, s, w
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c4{ne .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Br3c4{esw .} ==> Nr3c4 ≠ 0
whip[1]: Pr3c3{ne .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Br2c4{ne .} ==> Nr2c4 ≠ 3
whip[1]: Br2c3{swn .} ==> Nr2c3 ≠ 0
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]


.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........———.   .....
:   :   : 3 |   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 49.487834, nb-facts=<Fact-81714>



sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 4 3)
        (value-row-col-to-V-label 0 3 3)
    )
)
(solve 
5 5 
. . . . .
. . . . .
. . 3 . .
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Cl+W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 333
Simulated elimination of 243
V-single: Vr3c3 = 1
H-single: Hr4c3 = 1
3-in-r3c3-closed-sw-corner ==> Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
r4c2-incident-closed-corner-at-ne ==> Hr4c2 = 0, Vr4c3 = 0, Pr4c3 = ne
entering level W1 with <Fact-81712>
whip[1]: Pr4c4{nw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br4c2{sw .} ==> Nr4c2 ≠ 3
whip[1]: Pr4c4{nw .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{ns .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{ns .} ==> Br2c2 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = Cl+W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   | 3 :   :   :
.....   .———.........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 46.65234, nb-facts=<Fact-81825>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 333
Simulated elimination of 243
V-single: Vr3c3 = 1
H-single: Hr4c3 = 1
P-single: Pr4c3 = ne
H-single: Hr4c2 = 0
V-single: Vr4c3 = 0
entering level W1 with <Fact-81668>
whip[1]: Br3c3{swn .} ==> Pr3c4 ≠ o, sw, ne
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ o, swn, esw, sw, ne, e, n
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr4c4{nw .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Br4c3{nes .} ==> Nr4c3 ≠ 0
whip[1]: Br4c2{sw .} ==> Nr4c2 ≠ 3
whip[1]: Pr4c4{nw .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c3{ns .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{ns .} ==> Br2c2 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   | 3 :   :   :
.....   .———.........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 45.708877, nb-facts=<Fact-81714>


se

(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 4 3)
        (value-row-col-to-V-label 0 3 4)
    )
)
(solve 
5 5 
. . . . .
. . . . .
. . 3 . .
. . . . .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Cl+W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 334
Simulated elimination of 243
V-single: Vr3c4 = 1
H-single: Hr4c3 = 1
3-in-r3c3-closed-se-corner ==> Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o
r4c4-incident-closed-corner-at-nw ==> Hr4c4 = 0, Vr4c4 = 0, Pr4c4 = nw
entering level W1 with <Fact-81712>
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 3
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c4{ns .} ==> Br2c3 ≠ nes, se, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
GRID 0 SOLVED. rating-type = Cl+W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 48.306389, nb-facts=<Fact-81825>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 334
Simulated elimination of 243
V-single: Vr3c4 = 1
H-single: Hr4c3 = 1
P-single: Pr4c4 = nw
H-single: Hr4c4 = 0
V-single: Vr4c4 = 0
entering level W1 with <Fact-81668>
whip[1]: Br3c3{nes .} ==> Pr3c3 ≠ o, se, nw
whip[1]: Pr3c3{sw .} ==> Br2c2 ≠ nw, nes, esw, se, o, n, w
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0
whip[1]: Br4c4{se .} ==> Nr4c4 ≠ 3
whip[1]: Br4c3{swn .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Br3c4{wne .} ==> Nr3c4 ≠ 0
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c4{ns .} ==> Br2c3 ≠ nes, se, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 50.837763, nb-facts=<Fact-81714>









