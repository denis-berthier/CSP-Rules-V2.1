
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              TEST OF OTHER BASIC PATTERNS
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

3-with-a-non-closed-corner

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....———.............
:   : 3 :   :   :   :        :   | 3 :   :   :   :
.....................        .....................
:   :   :   :   :   :   =>   :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................


Pr3c3 ≠ nw

(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 4 3 3) ; 4 = nw
    )
)

(solve 
5 5 
. . . . .
. 3 . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 . . . . . . . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13686 links. Initial density = 1.02644178846569
Simulated elimination of 4433
entering level W1 with <Fact-76601>
whip[1]: Br2c2{nes .} ==> Pr2c2 <> o
whip[1]: Br2c2{nes .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> se
whip[1]: Br2c2{nes .} ==> Pr2c3 <> o, ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw, esw, swn
whip[1]: Br2c2{nes .} ==> Pr3c2 <> o, sw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne, wne, nes
whip[1]: Pr3c3{o .} ==> Br2c2 <> nes
whip[1]: Br2c2{esw .} ==> Pr3c2 <> ew
whip[1]: Pr3c2{ne .} ==> Br2c1 <> s, ns, sw, swn
whip[1]: Br2c2{esw .} ==> Pr3c2 <> se
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw, swn, wne
whip[1]: Pr3c2{ne .} ==> Br2c1 <> nw, w
whip[1]: Pr3c2{ne .} ==> Vr2c2 <> 0
V-single: Vr2c2 = 1
whip[1]: Pr2c2{sw .} ==> Br1c2 <> sw, esw, swn
whip[1]: Br2c2{wne .} ==> Pr3c3 <> o
whip[1]: Pr3c3{sw .} ==> Br3c3 <> o, e, s, se
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw, swn, wne
whip[1]: Pr3c3{ne .} ==> Br2c2 <> esw
whip[1]: Br2c2{wne .} ==> Pr2c3 <> se
whip[1]: Pr2c3{sw .} ==> Br1c2 <> o, n, w, nw
whip[1]: Pr2c3{sw .} ==> Br2c3 <> nw, swn, wne
whip[1]: Br2c2{wne .} ==> Pr2c3 <> ns
whip[1]: Pr2c3{sw .} ==> Br1c2 <> e, ne
whip[1]: Br1c2{nes .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{ns .} ==> Br2c1 <> ne, wne
whip[1]: Br2c1{nes .} ==> Pr2c1 <> se
whip[1]: Pr2c1{o .} ==> Br1c1 <> s
whip[1]: Pr2c2{ns .} ==> Br2c1 <> nes
whip[1]: Br2c1{e .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{ns .} ==> Hr2c1 <> 1
H-single: Hr2c1 = 0
whip[1]: Pr2c3{sw .} ==> Br1c2 <> ew
whip[1]: Br1c2{nes .} ==> Pr1c2 <> sw
whip[1]: Pr1c2{o .} ==> Br1c1 <> wne
whip[1]: Pr2c3{sw .} ==> Br1c2 <> wne
whip[1]: Br1c2{nes .} ==> Pr2c2 <> ns
P-single: Pr2c2 = se
H-single: Hr2c2 = 1
V-single: Vr1c2 = 0
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 53.6573759999999, nb-facts=<Fact-76632>


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3-closed-corner

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................        .....................
:   :   :   :   :   :        :       :   :   :   :
.....———.............        .   .———.............
:   | 3 :   :   :   :        :   | 3 :   :   :   :
.....................        .....................
:   :   :   :   :   :   =>   :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................



(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 2 2)
        (value-row-col-to-V-label 0 2 2)
    )
)

(solve 
5 5 
. . . . .
. 3 . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 . . . . . . . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13686 links. Initial density = 1.02644178846569
Simulated elimination of 322
Simulated elimination of 222
V-single: Vr2c2 = 1
H-single: Hr2c2 = 1
P-single: Pr2c2 = se
H-single: Hr2c1 = 0
V-single: Vr1c2 = 0
entering level W1 with <Fact-76606>
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne, swn, nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes, wne, ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne, swn, nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> o, nw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> o, e, s, se
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se <<<<<<<<<<<<<<<<<<<
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw, swn, wne
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn, esw, sw


.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

diagonal-3-2

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................


(solve 
5 5 
. . . . .
. 3 . . .
. . 2 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
entering level W1 with <Fact-75117>
whip[1]: Br2c2{nes .} ==> Pr2c2 <> o, nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> se
whip[1]: Br2c2{nes .} ==> Pr2c3 <> o, ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw, esw, swn
whip[1]: Br2c2{nes .} ==> Pr3c2 <> o, sw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne, wne, nes
whip[1]: Br2c2{nes .} ==> Pr3c3 <> o, se  <<<<<<<<<<<<<
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw <<<<<<<<<<<<<<<<
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se <<<<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw, swn, wne
whip[1]: Br3c3{sw .} ==> Pr4c4 <> o




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TEST OF THE SPECIFIC RULES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;














------------------------------------------------
for the book


(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
    )
)
(solve
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . . 
. . . . 2 .
. . . . . . 
)
(bind ?*simulated-eliminations*(create$))
)





(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
        (value-row-col-to-P-label 4 6 6) ; 4 for nw
    )
)
(solve
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . . 
. . . . 2 .
. . . . . . 
)
(bind ?*simulated-eliminations*(create$))
)


*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . 2 . . . . . . .)
445 csp-variables, 1143 candidates, 4060 csp-links and 19528 links. Initial density = 0.748023835024125
Simulated elimination of 4466
Simulated elimination of 1356
V-single: Vr5c6 = 0
entering level W1 with <Fact-107554>
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> se
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Br2c2{nes .} ==> Pr2c3 <> se
whip[1]: Pr2c3{sw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{sw .} ==> Br2c3 <> wne
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ns
whip[1]: Br2c2{nes .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr2c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr2c2 <> 0
H-single: Hr2c2 = 1
whip[1]: Pr2c2{ew .} ==> Br1c1 <> se
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br2c2{swn .} ==> Pr3c2 <> ew
whip[1]: Br2c2{swn .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br3c2 <> swn
whip[1]: Pr3c2{sw .} ==> Br3c2 <> wne
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ew
whip[1]: Pr2c2{ne .} ==> Br1c1 <> s
whip[1]: Br1c1{wne .} ==> Pr2c1 <> se
whip[1]: Pr2c1{o .} ==> Br2c1 <> nw
whip[1]: Pr2c1{o .} ==> Br2c1 <> swn
whip[1]: Pr2c2{ne .} ==> Br1c1 <> swn
whip[1]: Br1c1{wne .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{ns .} ==> Br2c1 <> n
whip[1]: Pr2c1{ns .} ==> Hr2c1 <> 1
H-single: Hr2c1 = 0
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ne
P-single: Pr2c2 = se
V-single: Vr1c2 = 0
V-single: Vr2c2 = 1
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> se
whip[1]: Pr6c6{sw .} ==> Br6c5 <> e
whip[1]: Pr6c6{sw .} ==> Br6c5 <> se
whip[1]: Pr6c6{sw .} ==> Br6c5 <> ew
whip[1]: Pr6c6{sw .} ==> Br6c5 <> esw
whip[1]: Pr6c6{sw .} ==> Br6c6 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> s
whip[1]: Br6c5{nes .} ==> Pr6c5 <> nw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> se
whip[1]: Pr6c5{ew .} ==> Br5c4 <> esw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> nes
whip[1]: Pr6c6{sw .} ==> Br6c5 <> w
whip[1]: Pr6c6{sw .} ==> Br6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> sw
whip[1]: Br6c5{nes .} ==> Hr6c5 <> 0
H-single: Hr6c5 = 1
whip[1]: Pr6c6{sw .} ==> Br6c6 <> se
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]


.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 2     :
.................———.....
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 120.675792, nb-facts=<Fact-107597>





(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
        (value-row-col-to-P-label 5 6 6) ; 5 for se
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . 2 .
. . . . . . 
)
(bind ?*simulated-eliminations*(create$))
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . . . . . . . . . . . . . . . . . 2 . . . . . . .)
445 csp-variables, 1184 candidates, 4357 csp-links and 20838 links. Initial density = 0.74385723424185
Simulated elimination of 5466
Simulated elimination of 1356
V-single: Vr5c6 = 0
entering level W1 with <Fact-112238>
whip[1]: Pr6c6{o .} ==> Br6c6 <> nw
whip[1]: Pr6c6{o .} ==> Br6c5 <> esw
whip[1]: Pr6c6{o .} ==> Br6c5 <> ew
whip[1]: Pr6c6{o .} ==> Br6c5 <> se
whip[1]: Pr6c6{o .} ==> Br6c5 <> e
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Pr5c5{sw .} ==> Br4c4 <> esw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nes
whip[1]: Br5c5{sw .} ==> Pr6c5 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   : 2     :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 116.135249, nb-facts=<Fact-112275>






(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
        (value-row-col-to-P-label 5 5 5) ; 5 for se
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . 2 .
. . . . . . 
)
(bind ?*simulated-eliminations*(create$))
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . . . . . . . . . . . . . . . . . 2 . . . . . . .)
445 csp-variables, 1184 candidates, 4357 csp-links and 20838 links. Initial density = 0.74385723424185
Simulated elimination of 5455
Simulated elimination of 1356
V-single: Vr5c6 = 0
entering level W1 with <Fact-112238>
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br4c4 <> o
whip[1]: Pr5c5{sw .} ==> Br4c4 <> n
whip[1]: Pr5c5{sw .} ==> Br4c4 <> w
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nw
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Pr5c5{sw .} ==> Br4c4 <> esw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nes
whip[1]: Br5c5{sw .} ==> Pr6c5 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr5c5{ne .} ==> Br5c5 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> se
whip[1]: Pr6c6{sw .} ==> Br6c5 <> e
whip[1]: Pr6c6{sw .} ==> Br6c5 <> se
whip[1]: Pr6c6{sw .} ==> Br6c5 <> ew
whip[1]: Pr6c6{sw .} ==> Br6c5 <> esw
whip[1]: Pr6c6{sw .} ==> Br6c6 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> s
whip[1]: Br6c5{nes .} ==> Pr6c5 <> nw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> se
whip[1]: Pr6c5{ew .} ==> Br5c4 <> esw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> nes
whip[1]: Pr6c6{sw .} ==> Br6c5 <> w
whip[1]: Pr6c6{sw .} ==> Br6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> sw
whip[1]: Br6c5{nes .} ==> Hr6c5 <> 0
H-single: Hr6c5 = 1
whip[1]: Pr6c6{sw .} ==> Br6c6 <> se
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   : 2     :
.................———.....
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 115.652457, nb-facts=<Fact-112276>






(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
        (value-row-col-to-P-label 5 5 5) ; 5 for se
        (value-row-col-to-P-label 5 6 6) ; 5 for se
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . 2 .
. . . . . . 
)
(bind ?*simulated-eliminations*(create$))
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . . . . . . . . . . . . . . . . . 2 . . . . . . .)
445 csp-variables, 1184 candidates, 4357 csp-links and 20838 links. Initial density = 0.74385723424185
Simulated elimination of 5466
Simulated elimination of 5455
Simulated elimination of 1356
V-single: Vr5c6 = 0
entering level W1 with <Fact-112238>
whip[1]: Pr6c6{o .} ==> Br6c6 <> nw
whip[1]: Pr6c6{o .} ==> Br6c5 <> esw
whip[1]: Pr6c6{o .} ==> Br6c5 <> ew
whip[1]: Pr6c6{o .} ==> Br6c5 <> se
whip[1]: Pr6c6{o .} ==> Br6c5 <> e
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br4c4 <> o
whip[1]: Pr5c5{sw .} ==> Br4c4 <> n
whip[1]: Pr5c5{sw .} ==> Br4c4 <> w
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nw
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Pr5c5{sw .} ==> Br4c4 <> esw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nes
whip[1]: Br5c5{sw .} ==> Pr6c5 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr5c5{ne .} ==> Br5c5 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> s
whip[1]: Br6c5{nes .} ==> Pr6c5 <> nw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> se
whip[1]: Pr6c5{ew .} ==> Br5c4 <> esw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> nes
whip[1]: Pr6c6{sw .} ==> Br6c5 <> w
whip[1]: Pr6c6{sw .} ==> Br6c6 <> o
whip[1]: Pr6c6{sw .} ==> Hr6c5 <> 0
H-single: Hr6c5 = 1
whip[1]: Pr6c6{sw .} ==> Br6c6 <> se
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   : 2     :
.................———.....
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 116.953895, nb-facts=<Fact-112276>






(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
        (value-row-col-to-P-label 4 6 6) ; 4 for nw
        (value-row-col-to-P-label 5 5 5) ; 5 for se
    )
)
(solve
6 6 
. . . . . .
. . . . . .
. . . . . .
. . . . . .
. . . . 2 .
. . . . . . 
)
(bind ?*simulated-eliminations*(create$))
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . . . . . . . . . . . . . . . . . 2 . . . . . . .)
445 csp-variables, 1184 candidates, 4357 csp-links and 20838 links. Initial density = 0.74385723424185
Simulated elimination of 4466
Simulated elimination of 5455
Simulated elimination of 1356
V-single: Vr5c6 = 0
entering level W1 with <Fact-112238>
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br4c4 <> o
whip[1]: Pr5c5{sw .} ==> Br4c4 <> n
whip[1]: Pr5c5{sw .} ==> Br4c4 <> w
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nw
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Pr5c5{sw .} ==> Br4c4 <> esw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nes
whip[1]: Br5c5{sw .} ==> Pr6c5 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr5c5{ne .} ==> Br5c5 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> se
whip[1]: Pr6c6{sw .} ==> Br6c5 <> e
whip[1]: Pr6c6{sw .} ==> Br6c5 <> se
whip[1]: Pr6c6{sw .} ==> Br6c5 <> ew
whip[1]: Pr6c6{sw .} ==> Br6c5 <> esw
whip[1]: Pr6c6{sw .} ==> Br6c6 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> s
whip[1]: Br6c5{nes .} ==> Pr6c5 <> nw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> se
whip[1]: Pr6c5{ew .} ==> Br5c4 <> esw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> nes
whip[1]: Pr6c6{sw .} ==> Br6c5 <> w
whip[1]: Pr6c6{sw .} ==> Br6c6 <> o
whip[1]: Pr6c6{sw .} ==> Br6c5 <> sw
whip[1]: Br6c5{nes .} ==> Hr6c5 <> 0
H-single: Hr6c5 = 1
whip[1]: Pr6c6{sw .} ==> Br6c6 <> se
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   : 2     :
.................———.....
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 116.614812, nb-facts=<Fact-112276>





--------------------------

for the book



(solve 
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
)
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 5 6)
        (value-row-col-to-V-label 1 5 6)
    )
)

(solve 
7 7
. . . . . . .
. 3 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . . .
. . . . . . .
. . . . . . .
)


WITHOUT THIS RULE:

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . 3 2 . . . . . . . 2 . . . . . . . 2 . . . . . . . . . . . . . . . . . . . . . . .)
580 csp-variables, 1572 candidates, 5803 csp-links and 27958 links. Initial density = 0.566040333461289
Simulated elimination of 1356
Simulated elimination of 1256
V-single: Vr5c6 = 0
H-single: Hr5c6 = 0
entering level W1 with <Fact-149335>
whip[1]: Pr5c6{o .} ==> Br4c5 <> sw
whip[1]: Br4c5{ne .} ==> Pr5c5 <> ne
whip[1]: Br4c5{ne .} ==> Pr4c6 <> ne
whip[1]: Pr4c6{sw .} ==> Br3c6 <> sw
whip[1]: Pr4c6{sw .} ==> Br3c6 <> esw
whip[1]: Pr4c6{sw .} ==> Br3c6 <> swn
whip[1]: Br4c5{ne .} ==> Pr4c6 <> o
whip[1]: Pr5c6{o .} ==> Br4c5 <> ew
whip[1]: Br4c5{ne .} ==> Pr4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c4 <> ne
whip[1]: Pr4c5{o .} ==> Br4c4 <> wne
whip[1]: Pr4c5{o .} ==> Br4c4 <> nes
whip[1]: Br4c5{ne .} ==> Pr4c5 <> ns
whip[1]: Pr5c6{o .} ==> Br4c5 <> ns
whip[1]: Pr5c6{o .} ==> Br4c5 <> ne
whip[1]: Br4c5{se .} ==> Pr5c5 <> sw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ne
whip[1]: Pr5c5{o .} ==> Br5c4 <> wne
whip[1]: Pr5c5{o .} ==> Br5c4 <> nes
whip[1]: Br4c5{se .} ==> Pr5c5 <> o
whip[1]: Pr5c5{ew .} ==> Br5c4 <> sw
whip[1]: Pr5c5{ew .} ==> Br5c4 <> w
whip[1]: Pr5c5{ew .} ==> Br5c4 <> s
whip[1]: Pr5c5{ew .} ==> Br5c4 <> o
whip[1]: Br4c5{se .} ==> Pr4c6 <> sw
whip[1]: Pr4c6{ns .} ==> Br3c6 <> ne
whip[1]: Pr4c6{ns .} ==> Br3c6 <> e
whip[1]: Pr4c6{ns .} ==> Br3c6 <> n
whip[1]: Pr4c6{ns .} ==> Br3c6 <> o
whip[1]: Br4c5{se .} ==> Pr4c5 <> ne
whip[1]: Pr4c5{ew .} ==> Br3c5 <> sw
whip[1]: Pr4c5{ew .} ==> Br3c5 <> esw
whip[1]: Pr4c5{ew .} ==> Br3c5 <> swn
whip[1]: Pr4c5{ew .} ==> Br3c4 <> ew
whip[1]: Pr4c5{ew .} ==> Br3c4 <> ne
whip[1]: Br3c4{sw .} ==> Pr4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ne
whip[1]: Pr4c4{o .} ==> Br4c3 <> wne
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes
whip[1]: Br3c4{sw .} ==> Pr4c4 <> o
whip[1]: Br3c4{sw .} ==> Pr3c5 <> sw
whip[1]: Br4c5{se .} ==> Pr4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br3c4 <> ns
whip[1]: Br3c4{sw .} ==> Pr3c4 <> ew
whip[1]: Br3c4{sw .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> esw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> swn
whip[1]: Pr4c5{o .} ==> Br3c4 <> sw
whip[1]: Br3c4{nw .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{ew .} ==> Br4c3 <> o
whip[1]: Pr4c4{ew .} ==> Br4c3 <> s
whip[1]: Pr4c4{ew .} ==> Br4c3 <> w
whip[1]: Pr4c4{ew .} ==> Br4c3 <> sw
whip[1]: Br3c4{nw .} ==> Pr3c5 <> ne
whip[1]: Pr3c5{ew .} ==> Br2c5 <> sw
whip[1]: Pr3c5{ew .} ==> Br2c5 <> esw
whip[1]: Pr3c5{ew .} ==> Br2c5 <> swn
whip[1]: Br3c4{nw .} ==> Pr3c5 <> o
whip[1]: Pr3c5{ew .} ==> Br2c5 <> o
whip[1]: Pr3c5{ew .} ==> Br2c5 <> n
whip[1]: Pr3c5{ew .} ==> Br2c5 <> e
whip[1]: Pr3c5{ew .} ==> Br2c5 <> ne
whip[1]: Br3c4{nw .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{sw .} ==> Br2c3 <> ne
whip[1]: Br2c3{sw .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{o .} ==> Br3c2 <> ne
whip[1]: Pr3c3{o .} ==> Br3c2 <> wne
whip[1]: Pr3c3{o .} ==> Br3c2 <> nes
whip[1]: Br2c3{sw .} ==> Pr3c3 <> o
whip[1]: Br2c3{sw .} ==> Pr2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c3 <> ew
whip[1]: Br3c4{nw .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{o .} ==> Br3c3 <> ne
whip[1]: Pr3c4{o .} ==> Br3c3 <> wne
whip[1]: Pr3c4{o .} ==> Br3c3 <> nes
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Br2c3{ns .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{ew .} ==> Br3c2 <> o
whip[1]: Pr3c3{ew .} ==> Br3c2 <> s
whip[1]: Pr3c3{ew .} ==> Br3c2 <> w
whip[1]: Pr3c3{ew .} ==> Br3c2 <> sw
whip[1]: Br2c3{ns .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{ew .} ==> Br1c4 <> sw
whip[1]: Pr2c4{ew .} ==> Br1c4 <> esw
whip[1]: Pr2c4{ew .} ==> Br1c4 <> swn
whip[1]: Br2c3{ns .} ==> Pr2c4 <> o
whip[1]: Pr2c4{ew .} ==> Br1c4 <> o
whip[1]: Pr2c4{ew .} ==> Br1c4 <> n
whip[1]: Pr2c4{ew .} ==> Br1c4 <> e
whip[1]: Pr2c4{ew .} ==> Br1c4 <> ne
whip[1]: Br2c3{ns .} ==> Pr2c3 <> ns
whip[1]: Br2c3{ns .} ==> Pr2c3 <> sw
whip[1]: Pr2c3{o .} ==> Br2c2 <> wne
whip[1]: Br2c2{nes .} ==> Pr3c3 <> ns
whip[1]: Pr3c3{ew .} ==> Br3c3 <> w
whip[1]: Pr3c3{ew .} ==> Br3c3 <> ew
whip[1]: Pr3c3{ew .} ==> Br3c3 <> sw
whip[1]: Pr3c3{ew .} ==> Br3c3 <> esw
whip[1]: Br2c2{nes .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> se
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr3c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr3c2 <> 0
H-single: Hr3c2 = 1
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c3{ew .} ==> Vr3c3 <> 1
V-single: Vr3c3 = 0
whip[1]: Pr2c3{o .} ==> Br2c2 <> nes
whip[1]: Br2c2{esw .} ==> Pr3c2 <> ew
whip[1]: Pr3c2{ne .} ==> Br2c1 <> s
whip[1]: Pr3c2{ne .} ==> Br2c1 <> ns
whip[1]: Br2c1{wne .} ==> Pr3c1 <> se
whip[1]: Pr3c1{o .} ==> Br3c1 <> nw
whip[1]: Pr3c1{o .} ==> Br3c1 <> swn
whip[1]: Pr3c2{ne .} ==> Br2c1 <> sw
whip[1]: Pr3c2{ne .} ==> Br2c1 <> swn
whip[1]: Br2c1{wne .} ==> Pr3c1 <> ne
whip[1]: Pr3c1{ns .} ==> Br3c1 <> n
whip[1]: Pr3c1{ns .} ==> Hr3c1 <> 1
H-single: Hr3c1 = 0
whip[1]: Br2c2{esw .} ==> Pr3c2 <> se
P-single: Pr3c2 = ne
V-single: Vr2c2 = 1
V-single: Vr3c2 = 0
whip[1]: Pr2c2{sw .} ==> Br1c2 <> sw
whip[1]: Pr2c2{sw .} ==> Br1c2 <> esw
whip[1]: Pr2c2{sw .} ==> Br1c2 <> swn
whip[1]: Pr2c2{sw .} ==> Br1c1 <> se
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Br2c3{se .} ==> Pr2c3 <> ew
whip[1]: Pr2c3{o .} ==> Br1c2 <> s
whip[1]: Pr2c3{o .} ==> Br1c2 <> ns
whip[1]: Br2c3{se .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{se .} ==> Br1c3 <> sw
whip[1]: Pr2c3{se .} ==> Br1c3 <> esw
whip[1]: Pr2c3{se .} ==> Br1c3 <> swn
whip[1]: Pr2c3{se .} ==> Br1c2 <> wne
whip[1]: Pr2c3{se .} ==> Br1c2 <> ew
whip[1]: Pr2c3{se .} ==> Br1c2 <> ne
whip[1]: Pr2c3{se .} ==> Br1c2 <> e
whip[1]: Br2c2{swn .} ==> Pr2c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> n
whip[1]: Pr2c3{se .} ==> Br1c3 <> e
whip[1]: Pr2c3{se .} ==> Br1c3 <> ne
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.............................
:   :   :   :   :   :   :   :
.............................
:   | 3 : 2 :   :   :   :   :
.   .———.....................
:           : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................

Grid solved : computation-time 214.826017, nb-facts=<Fact-149391>


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-3-1+0s, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. . . . .
. 3 . . .
. . 1 0 . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 1 0 . . . 0 . . . . . . .)
328 csp-variables, 764 candidates, 2548 csp-links and 12060 links. Initial density = 1.03442597078218
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-1+0s-{r2c2...r3c3} ==> Vr2c2 = 1, Hr2c2 = 1
P-single : Pr2c2 = se
H-single : Hr2c1 = 0
V-single : Vr1c2 = 0
P-single : Pr4c4 = o
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.............   .....
:   :   : 1   0     :
.........   .   .....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 1 0 . . . 0 . . . . . . .)
328 csp-variables, 764 candidates, 2548 csp-links and 12060 links. Initial density = 1.03442597078218
V-single : Vr4c4 = 0
V-single : Vr4c3 = 0
V-single : Vr3c5 = 0
V-single : Vr3c4 = 0
H-single : Hr5c3 = 0
H-single : Hr4c4 = 0
H-single : Hr4c3 = 0
H-single : Hr3c4 = 0
P-single : Pr4c4 = o
entering level W1 with <Fact-70712>
whip[1]: Pr5c4{o .} ==> Br5c4 <> nes
whip[1]: Pr5c4{o .} ==> Br5c4 <> esw
whip[1]: Pr5c4{o .} ==> Br5c4 <> sw
whip[1]: Pr5c4{o .} ==> Br5c4 <> ew
whip[1]: Pr5c4{o .} ==> Br5c4 <> ns
whip[1]: Pr5c4{o .} ==> Br5c4 <> ne
whip[1]: Pr5c4{o .} ==> Br5c4 <> w
whip[1]: Pr5c4{o .} ==> Br5c4 <> n
whip[1]: Pr5c3{o .} ==> Br5c2 <> swn
whip[1]: Pr5c3{o .} ==> Br5c2 <> esw
whip[1]: Pr5c3{o .} ==> Br5c2 <> ew
whip[1]: Pr5c3{o .} ==> Br5c2 <> es
whip[1]: Pr5c3{o .} ==> Br5c2 <> nw
whip[1]: Pr5c3{o .} ==> Br5c2 <> ns
whip[1]: Pr5c3{o .} ==> Br5c2 <> e
whip[1]: Pr5c3{o .} ==> Br5c2 <> n
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Br3c3{w .} ==> Pr3c3 <> o
whip[1]: Br3c3{w .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Br2c2{nes .} ==> Pr2c3 <> se
whip[1]: Pr2c3{sw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{sw .} ==> Br2c3 <> wne
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ns
whip[1]: Br2c2{nes .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr2c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr2c2 <> 0
H-single : Hr2c2 = 1
whip[1]: Pr2c2{ew .} ==> Br1c1 <> es
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br2c2{swn .} ==> Pr3c2 <> ew
whip[1]: Br2c2{swn .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br3c2 <> swn
whip[1]: Pr3c2{sw .} ==> Br3c2 <> wne
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ew
whip[1]: Pr2c2{ne .} ==> Br1c1 <> s
whip[1]: Br1c1{wne .} ==> Pr2c1 <> se
whip[1]: Pr2c1{o .} ==> Br2c1 <> nw
whip[1]: Pr2c1{o .} ==> Br2c1 <> swn
whip[1]: Pr2c2{ne .} ==> Br1c1 <> swn
whip[1]: Br1c1{wne .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{ns .} ==> Br2c1 <> n
whip[1]: Pr2c1{ns .} ==> Hr2c1 <> 1
H-single : Hr2c1 = 0
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ne
P-single : Pr2c2 = se
V-single : Vr1c2 = 0
V-single : Vr2c2 = 1
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr4c3{o .} ==> Br3c2 <> sw
whip[1]: Pr4c3{o .} ==> Br3c2 <> ew
whip[1]: Pr4c3{o .} ==> Br3c2 <> ns
whip[1]: Pr4c3{o .} ==> Br3c2 <> ne
whip[1]: Pr4c3{o .} ==> Br3c2 <> s
whip[1]: Pr4c3{o .} ==> Br3c2 <> e
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> es
whip[1]: Pr3c5{o .} ==> Br2c5 <> nw
whip[1]: Pr3c5{o .} ==> Br2c5 <> ns
whip[1]: Pr3c5{o .} ==> Br2c5 <> w
whip[1]: Pr3c5{o .} ==> Br2c5 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ne
whip[1]: Pr3c4{o .} ==> Br2c3 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> e
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue




(solve 
5 5 
. . . . .
. . . 3 .
. 0 1 . . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . 0 1 . . . . 0 . . . . . . .)
328 csp-variables, 764 candidates, 2548 csp-links and 12060 links. Initial density = 1.03442597078218
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-1+0s-{r2c4...r3c3} ==> Vr2c5 = 1, Hr2c4 = 1
P-single : Pr2c5 = sw
H-single : Hr2c5 = 0
V-single : Vr1c5 = 0
P-single : Pr4c3 = o
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....   .............
:     0   1 :   :   :
.....   .   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................




(solve 
5 5 
. . . . .
. . 0 . .
. . 1 0 . 
. 3 . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . . 1 0 . . 3 . . . . . . . .)
328 csp-variables, 764 candidates, 2548 csp-links and 12060 links. Initial density = 1.03442597078218
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
diagonal-3-1+0s-{r4c2...r3c3} ==> Vr4c2 = 1, Hr5c2 = 1
P-single : Pr5c2 = ne
H-single : Hr5c1 = 0
V-single : Vr5c2 = 0
P-single : Pr3c4 = o
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .   .....
:   :   : 1   0     :
.............   .....
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................




(solve 
5 5 
. . . . .
. . 0 . .
. 0 1 . . 
. . . 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . 0 1 . . . . . 3 . . . . . .)
328 csp-variables, 764 candidates, 2548 csp-links and 12060 links. Initial density = 1.03442597078218
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
diagonal-3-1+0s-{r4c4...r3c3} ==> Vr4c5 = 1, Hr5c4 = 1
P-single : Pr5c5 = nw
H-single : Hr5c5 = 0
V-single : Vr5c5 = 0
P-single : Pr3c3 = o
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....   .   .........
:     0   1 :   :   :
.....   .............
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................










---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-3-1+xtd-0s, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve
5 5 
. . . . .
. 3 . . .
. . 1 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 1 0 . . . 0 . . . . . . .)
328 csp-variables, 764 candidates, 2548 csp-links and 12060 links. Initial density = 1.03442597078218
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-1+0s-{r2c2...r3c3} ==> Vr2c2 = 1, Hr2c2 = 1
P-single : Pr2c2 = se
H-single : Hr2c1 = 0
V-single : Vr1c2 = 0
P-single : Pr4c4 = o
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.............   .....
:   :   : 1   0     :
.........   .   .....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................


WITHOUT THIS RULE:

(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve
5 5 
. . . . .
. 3 . . .
. . 1 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13200 links. Initial density = 1.02739406166232
Simulated elimination of 1334
Simulated elimination of 1243
V-single : Vr3c4 = 0
H-single : Hr4c3 = 0
entering level W1 with <Fact-74855>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Br3c3{w .} ==> Pr3c3 <> o
whip[1]: Br3c3{w .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Br2c2{nes .} ==> Pr2c3 <> se
whip[1]: Pr2c3{sw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{sw .} ==> Br2c3 <> wne
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ns
whip[1]: Br2c2{nes .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr2c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr2c2 <> 0
H-single : Hr2c2 = 1
whip[1]: Pr2c2{ew .} ==> Br1c1 <> es
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br2c2{swn .} ==> Pr3c2 <> ew
whip[1]: Br2c2{swn .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br3c2 <> swn
whip[1]: Pr3c2{sw .} ==> Br3c2 <> wne
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ew
whip[1]: Pr2c2{ne .} ==> Br1c1 <> s
whip[1]: Br1c1{wne .} ==> Pr2c1 <> se
whip[1]: Pr2c1{o .} ==> Br2c1 <> nw
whip[1]: Pr2c1{o .} ==> Br2c1 <> swn
whip[1]: Pr2c2{ne .} ==> Br1c1 <> swn
whip[1]: Br1c1{wne .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{ns .} ==> Br2c1 <> n
whip[1]: Pr2c1{ns .} ==> Hr2c1 <> 1
H-single : Hr2c1 = 0
whip[1]: Br2c2{swn .} ==> Pr2c2 <> ne
P-single : Pr2c2 = se
V-single : Vr1c2 = 0
V-single : Vr2c2 = 1
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 49.5776740000001, nb-facts=<Fact-75105>






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-1-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 2 2)
        (value-row-col-to-V-label 0 2 2)
    )
)

(solve 
5 5 
. . . . .
. 3 . . .
. . 1 . . 
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13200 links. Initial density = 1.02739406166232
Simulated elimination of 322
Simulated elimination of 222
V-single : Vr2c2 = 1
H-single : Hr2c2 = 1
diagonal-1-3-{r3c3...r2c2} ==> Vr3c4 = 0, Hr4c3 = 0
P-single : Pr2c2 = se
H-single : Hr2c1 = 0
V-single : Vr1c2 = 0
entering level W1 with <Fact-74898>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Br3c3{w .} ==> Pr3c3 <> o
whip[1]: Br3c3{w .} ==> Pr3c3 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 43.095235, nb-facts=<Fact-75183>



WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13200 links. Initial density = 1.02739406166232
Simulated elimination of 322
Simulated elimination of 222
V-single : Vr2c2 = 1
H-single : Hr2c2 = 1
P-single : Pr2c2 = se
H-single : Hr2c1 = 0
V-single : Vr1c2 = 0
entering level W1 with <Fact-74858>
whip[1]: Br3c3{w .} ==> Pr4c3 <> ne
whip[1]: Br3c3{w .} ==> Pr4c4 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> o
whip[1]: Br2c2{wne .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> e
whip[1]: Br3c3{w .} ==> Pr3c4 <> se
whip[1]: Pr3c4{sw .} ==> Br3c4 <> nw
whip[1]: Pr3c4{sw .} ==> Br3c4 <> swn
whip[1]: Pr3c4{sw .} ==> Br3c4 <> wne
whip[1]: Br3c3{w .} ==> Pr4c4 <> ns
whip[1]: Pr4c4{sw .} ==> Br3c4 <> ew
whip[1]: Pr4c4{sw .} ==> Br3c4 <> w
whip[1]: Br3c3{w .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{sw .} ==> Br3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> esw
whip[1]: Br3c4{nes .} ==> Pr3c4 <> sw
whip[1]: Br3c4{nes .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{ew .} ==> Vr3c4 <> 1
V-single : Vr3c4 = 0
whip[1]: Pr3c3{sw .} ==> Br3c3 <> s
whip[1]: Br3c3{w .} ==> Pr4c3 <> se
whip[1]: Pr4c3{sw .} ==> Br4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br4c3 <> swn
whip[1]: Pr4c3{sw .} ==> Br4c3 <> wne
whip[1]: Br3c3{w .} ==> Pr4c3 <> ew
whip[1]: Pr4c3{sw .} ==> Br4c3 <> n
whip[1]: Pr4c3{sw .} ==> Br4c3 <> ne
whip[1]: Pr4c3{sw .} ==> Br4c3 <> ns
whip[1]: Br4c3{nes .} ==> Pr4c4 <> ew
whip[1]: Pr4c4{sw .} ==> Br4c4 <> n
whip[1]: Pr4c4{sw .} ==> Br4c4 <> ne
whip[1]: Pr4c4{sw .} ==> Br4c4 <> ns
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nes
whip[1]: Pr4c3{sw .} ==> Hr4c3 <> 1
H-single : Hr4c3 = 0
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 2 4)
        (value-row-col-to-V-label 0 2 5)
    )
)
(solve 
5 5 
. . . . .
. . . 3 .
. . 1 . . 
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13200 links. Initial density = 1.02739406166232
Simulated elimination of 325
Simulated elimination of 224
V-single : Vr2c5 = 1
H-single : Hr2c4 = 1
diagonal-1-3-{r3c3...r2c4} ==> Vr3c3 = 0, Hr4c3 = 0
P-single : Pr2c5 = sw
H-single : Hr2c5 = 0
V-single : Vr1c5 = 0
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :     1 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 5 2)
        (value-row-col-to-V-label 0 4 2)
    )
)
(solve 
5 5 
. . . . .
. . . . .
. . 1 . . 
. 3 . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 1 . . . 3 . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13200 links. Initial density = 1.02739406166232
Simulated elimination of 342
Simulated elimination of 252
V-single : Vr4c2 = 1
H-single : Hr5c2 = 1
diagonal-1-3-{r3c3...r4c2} ==> Vr3c4 = 0, Hr3c3 = 0
P-single : Pr5c2 = ne
H-single : Hr5c1 = 0
V-single : Vr5c2 = 0
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   : 1     :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................






(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 5 4)
        (value-row-col-to-V-label 0 4 5)
    )
)
(solve 
5 5 
. . . . .
. . . . .
. . 1 . . 
. . . 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 1 . . . . . 3 . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13200 links. Initial density = 1.02739406166232
Simulated elimination of 345
Simulated elimination of 254
V-single : Vr4c5 = 1
H-single : Hr5c4 = 1
diagonal-1-3-{r3c3...r4c4} ==> Vr3c3 = 0, Hr3c3 = 0
P-single : Pr5c5 = nw
H-single : Hr5c5 = 0
V-single : Vr5c5 = 0
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :     1 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................









(bind ?*simulated-eliminations*
    (create$ 
    )
)




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

1-WITH-INCIDENT-LINE+NOLINE, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 2)
        (value-row-col-to-V-label 1 2 3)
    )
)



(solve 
5 5 
. . . . .
. . . . .
. . 1 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13678 links. Initial density = 1.02584179326565
Simulated elimination of 1323
Simulated elimination of 232
V-single : Vr2c3 = 0
H-single : Hr3c2 = 1
entering level W1 with <Fact-76601>
whip[1]: Br3c3{w .} ==> Pr4c3 <> ne
whip[1]: Br3c3{w .} ==> Pr4c4 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br2c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br2c1 <> esw
whip[1]: Pr3c2{ne .} ==> Br2c1 <> es
whip[1]: Br3c3{w .} ==> Pr3c4 <> sw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> s
whip[1]: Br3c3{w .} ==> Pr4c3 <> se
whip[1]: Pr4c3{sw .} ==> Br4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br4c3 <> swn
whip[1]: Pr4c3{sw .} ==> Br4c3 <> wne
whip[1]: Br3c3{w .} ==> Pr4c3 <> ew
whip[1]: Pr4c3{sw .} ==> Br4c3 <> n
whip[1]: Pr4c3{sw .} ==> Br4c3 <> ne
whip[1]: Pr4c3{sw .} ==> Br4c3 <> ns
whip[1]: Br4c3{nes .} ==> Pr4c4 <> ew
whip[1]: Pr4c3{sw .} ==> Hr4c3 <> 1
H-single : Hr4c3 = 0
whip[1]: Pr3c3{sw .} ==> Br3c3 <> e
whip[1]: Br3c3{w .} ==> Pr3c4 <> se
whip[1]: Pr3c4{ew .} ==> Br3c4 <> nw
whip[1]: Pr3c4{ew .} ==> Br3c4 <> swn
whip[1]: Pr3c4{ew .} ==> Br3c4 <> wne
whip[1]: Br3c3{w .} ==> Pr4c4 <> ns
whip[1]: Pr4c4{se .} ==> Br4c4 <> w
whip[1]: Pr4c4{se .} ==> Br4c4 <> ew
whip[1]: Pr4c4{se .} ==> Br4c4 <> sw
whip[1]: Pr4c4{se .} ==> Br4c4 <> esw
whip[1]: Pr4c4{se .} ==> Br3c4 <> ew
whip[1]: Pr4c4{se .} ==> Br3c4 <> w
whip[1]: Br3c3{w .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{se .} ==> Br4c4 <> n
whip[1]: Pr4c4{se .} ==> Br3c4 <> sw
whip[1]: Pr4c4{se .} ==> Br3c4 <> esw
whip[1]: Br3c4{nes .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{ew .} ==> Vr3c4 <> 1
V-single : Vr3c4 = 0
whip[1]: Pr4c4{se .} ==> Br4c4 <> ne
whip[1]: Pr4c4{se .} ==> Br4c4 <> ns
whip[1]: Pr4c4{se .} ==> Br4c4 <> nes
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....———.............
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 50.6388419999998, nb-facts=<Fact-76886>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13678 links. Initial density = 1.02584179326565
Simulated elimination of 1323
Simulated elimination of 232
V-single : Vr2c3 = 0
H-single : Hr3c2 = 1
entering level W1 with <Fact-76571>
whip[1]: Br3c3{w .} ==> Pr4c3 <> ne
whip[1]: Br3c3{w .} ==> Pr4c4 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br2c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br2c1 <> esw
whip[1]: Pr3c2{ne .} ==> Br2c1 <> es
whip[1]: Br3c3{w .} ==> Pr3c4 <> sw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> s
whip[1]: Br3c3{w .} ==> Pr4c3 <> se
whip[1]: Pr4c3{sw .} ==> Br4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br4c3 <> swn
whip[1]: Pr4c3{sw .} ==> Br4c3 <> wne
whip[1]: Br3c3{w .} ==> Pr4c3 <> ew
whip[1]: Pr4c3{sw .} ==> Br4c3 <> n
whip[1]: Pr4c3{sw .} ==> Br4c3 <> ne
whip[1]: Pr4c3{sw .} ==> Br4c3 <> ns
whip[1]: Br4c3{nes .} ==> Pr4c4 <> ew
whip[1]: Pr4c3{sw .} ==> Hr4c3 <> 1
H-single : Hr4c3 = 0
whip[1]: Pr3c3{sw .} ==> Br3c3 <> e
whip[1]: Br3c3{w .} ==> Pr3c4 <> se
whip[1]: Pr3c4{ew .} ==> Br3c4 <> nw
whip[1]: Pr3c4{ew .} ==> Br3c4 <> swn
whip[1]: Pr3c4{ew .} ==> Br3c4 <> wne
whip[1]: Br3c3{w .} ==> Pr4c4 <> ns
whip[1]: Pr4c4{se .} ==> Br4c4 <> w
whip[1]: Pr4c4{se .} ==> Br4c4 <> ew
whip[1]: Pr4c4{se .} ==> Br4c4 <> sw
whip[1]: Pr4c4{se .} ==> Br4c4 <> esw
whip[1]: Pr4c4{se .} ==> Br3c4 <> ew
whip[1]: Pr4c4{se .} ==> Br3c4 <> w
whip[1]: Br3c3{w .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{se .} ==> Br4c4 <> n
whip[1]: Pr4c4{se .} ==> Br3c4 <> sw
whip[1]: Pr4c4{se .} ==> Br3c4 <> esw
whip[1]: Br3c4{nes .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{ew .} ==> Vr3c4 <> 1
V-single : Vr3c4 = 0
whip[1]: Pr4c4{se .} ==> Br4c4 <> ne
whip[1]: Pr4c4{se .} ==> Br4c4 <> ns
whip[1]: Pr4c4{se .} ==> Br4c4 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue


.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....———.............
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 45.249891, nb-facts=<Fact-76816>


---------------------------------------------------------------------------------

1-WITH-INCIDENT-N0LINE+2-INCIDENT-NOLINE (REVERSE RULE), REDUCIBLE TO W1

---------------------------------------------------------------------------------

(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 2 3)
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)



(solve 
5 5 
. . . . .
. . . . .
. . 1 . .
. . . . .
. . . . . 
)



WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13678 links. Initial density = 1.02584179326565
Simulated elimination of 1334
Simulated elimination of 1323
Simulated elimination of 1243
V-single : Vr3c4 = 0
V-single : Vr2c3 = 0
H-single : Hr4c3 = 0
entering level W1 with <Fact-76572>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Br3c3{w .} ==> Pr3c3 <> o
whip[1]: Pr3c3{sw .} ==> Br3c2 <> o
whip[1]: Pr3c3{sw .} ==> Br3c2 <> s
whip[1]: Pr3c3{sw .} ==> Br3c2 <> w
whip[1]: Pr3c3{sw .} ==> Br3c2 <> sw
whip[1]: Br3c3{w .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br2c2 <> o
whip[1]: Pr3c3{sw .} ==> Br2c2 <> n
whip[1]: Br2c2{swn .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{o .} ==> Br3c1 <> ne
whip[1]: Pr3c2{o .} ==> Br3c1 <> wne
whip[1]: Pr3c2{o .} ==> Br3c1 <> nes
whip[1]: Br2c2{swn .} ==> Pr3c2 <> o
whip[1]: Pr3c3{sw .} ==> Br2c2 <> w
whip[1]: Pr3c3{sw .} ==> Br3c2 <> e
whip[1]: Pr3c3{sw .} ==> Hr3c2 <> 0
H-single : Hr3c2 = 1
whip[1]: Pr3c2{ew .} ==> Br2c1 <> es
whip[1]: Pr3c2{ew .} ==> Br2c1 <> esw
whip[1]: Pr3c2{ew .} ==> Br2c1 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   :       :   :   :
.....———.............
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 49.316903, nb-facts=<Fact-76816>




(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 2 3)
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)



(solve 
5 5 
. . . . .
. . . . .
. . 1 . .
. . . . .
. . . . . 
)



(bind ?*simulated-eliminations*
    (create$)
)









