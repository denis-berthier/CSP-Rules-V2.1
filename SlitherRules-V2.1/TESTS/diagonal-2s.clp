
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              TEST OF W1 REST
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

diagonal of 2s

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




---------------------------------------------------------------------------------

a diagonal of 2s is a conveyor of incident closed corners

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

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 819 candidates, 2884 csp-links and 13748 links. Initial density = 1.02605897226924
Simulated elimination of 344
Simulated elimination of 244
V-single : Vr4c4 = 1
H-single : Hr4c4 = 1
P-single : Pr4c4 = se
H-single : Hr4c3 = 0
V-single : Vr3c4 = 0
B-single : Br3c3 = nw
H-single : Hr3c3 = 1
V-single : Vr3c3 = 1
P-single : Pr3c3 = se
H-single : Hr3c2 = 0
V-single : Vr2c3 = 0
entering level W1 with <Fact-76844>
whip[1]: Pr5c4{ne .} ==> Br5c4 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c4 <> swn
whip[1]: Pr5c4{ne .} ==> Br5c4 <> nw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr4c5{nw .} ==> Br4c5 <> wne
whip[1]: Pr4c5{nw .} ==> Br4c5 <> swn
whip[1]: Pr4c5{nw .} ==> Br4c5 <> nw
whip[1]: Br4c4{wne .} ==> Pr5c5 <> nw
whip[1]: Pr4c3{ns .} ==> Br4c2 <> nes
whip[1]: Pr4c3{ns .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ns .} ==> Br4c2 <> sw
whip[1]: Pr4c3{ns .} ==> Br4c2 <> ne
whip[1]: Pr4c3{ns .} ==> Br4c2 <> w
whip[1]: Pr4c3{ns .} ==> Br4c2 <> s
whip[1]: Pr4c5{nw .} ==> Br3c5 <> swn
whip[1]: Pr4c5{nw .} ==> Br3c5 <> esw
whip[1]: Pr4c5{nw .} ==> Br3c5 <> sw
whip[1]: Pr3c4{nw .} ==> Br2c4 <> swn
whip[1]: Pr3c4{nw .} ==> Br2c4 <> esw
whip[1]: Pr3c4{nw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{nw .} ==> Br2c4 <> ne
whip[1]: Pr4c3{nw .} ==> Br4c2 <> o
whip[1]: Pr3c4{ew .} ==> Br2c4 <> e
whip[1]: Pr3c4{ew .} ==> Br2c4 <> n
whip[1]: Pr3c4{ew .} ==> Br2c4 <> o
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

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

Grid solved : computation-time 37.89221, nb-facts=<Fact-76870>



---------------------------------------------------------------------------------

a diagonal of 2s is a conveyor of open corners

---------------------------------------------------------------------------------

voir plus bas


---------------------------------------------------------------------------------

a diagonal of 2s is not a conveyor of incident non-closed corners

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

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 819 candidates, 2884 csp-links and 13748 links. Initial density = 1.02605897226924
Simulated elimination of 5444
entering level W1 with <Fact-76833>
whip[1]: Pr4c4{o .} ==> Br4c4 <> wne
whip[1]: Pr4c4{o .} ==> Br4c4 <> swn
whip[1]: Pr4c4{o .} ==> Br4c4 <> nw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

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

Grid solved : computation-time 51.2538690000001, nb-facts=<Fact-76859>



---------------------------------------------------------------------------------

a diagonal of 2s is not a conveyor of isolated corners

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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 819 candidates, 2884 csp-links and 13748 links. Initial density = 1.02605897226924
Simulated elimination of 1344
Simulated elimination of 1244
V-single: Vr4c4 = 0
H-single: Hr4c4 = 0
entering level W1 with <Fact-76835>
whip[1]: Pr4c4{o .} ==> Br3c3 <> sw
whip[1]: Br3c3{ne .} ==> Pr4c3 <> ne
whip[1]: Br3c3{ne .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw, esw, swn
whip[1]: Br3c3{ne .} ==> Pr3c4 <> o
whip[1]: Pr4c4{o .} ==> Br3c3 <> ew
whip[1]: Br3c3{ne .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{o .} ==> Br3c2 <> ne, wne, nes
whip[1]: Br3c3{ne .} ==> Pr3c3 <> ns
whip[1]: Pr4c4{o .} ==> Br3c3 <> ns, ne
whip[1]: Br3c3{se .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ne, wne, nes
whip[1]: Br3c3{se .} ==> Pr4c3 <> o
whip[1]: Pr4c3{ew .} ==> Br4c2 <> sw, w, s, o
whip[1]: Br3c3{se .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{ns .} ==> Br2c4 <> ne, e, n, o
whip[1]: Br3c3{se .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{ew .} ==> Br2c3 <> sw, esw, swn
whip[1]: Pr3c3{ew .} ==> Br2c2 <> wne, ew, ne, e
whip[1]: Br3c3{se .} ==> Pr3c3 <> ew
whip[1]: Pr3c3{o .} ==> Br2c2 <> s, ns, sw, swn
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.............   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 40.458462, nb-facts=<Fact-76861>


=> Br2c2 has only 6 possible values: n, w, nw, se, nes, esw



------------------------------------------------

What can be propagated from an isolated 2 ????


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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . 2 . . . . . . . . . . . . . . . .)
580 csp-variables, 1613 candidates, 6100 csp-links and 29268 links. Initial density = 0.562812385103048
Simulated elimination of 1366
Simulated elimination of 1266
V-single: Vr6c6 = 0
H-single: Hr6c6 = 0
entering level W1 with <Fact-154019>
whip[1]: Pr6c6{o .} ==> Br5c5 <> sw
whip[1]: Br5c5{ne .} ==> Pr6c5 <> ne
whip[1]: Br5c5{ne .} ==> Pr5c6 <> ne
whip[1]: Pr5c6{sw .} ==> Br4c6 <> sw, esw, swn
whip[1]: Br5c5{ne .} ==> Pr5c6 <> o
whip[1]: Pr6c6{o .} ==> Br5c5 <> ew
whip[1]: Br5c5{ne .} ==> Pr5c5 <> sw <<<<<<<<<
whip[1]: Pr5c5{o .} ==> Br5c4 <> ne, wne, nes
whip[1]: Br5c5{ne .} ==> Pr5c5 <> ns <<<<<<<<<
whip[1]: Pr6c6{o .} ==> Br5c5 <> ns, ne
whip[1]: Br5c5{se .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{o .} ==> Br6c4 <> ne, wne, nes
whip[1]: Br5c5{se .} ==> Pr6c5 <> o
whip[1]: Pr6c5{ew .} ==> Br6c4 <> sw, w, s, o
whip[1]: Br5c5{se .} ==> Pr5c6 <> sw
whip[1]: Pr5c6{ns .} ==> Br4c6 <> ne, e, n, o
whip[1]: Br5c5{se .} ==> Pr5c5 <> ne <<<<<<<<<
whip[1]: Pr5c5{ew .} ==> Br4c5 <> sw, esw, swn
whip[1]: Pr5c5{ew .} ==> Br4c4 <> wne, ew, ne, e
whip[1]: Br5c5{se .} ==> Pr5c5 <> ew <<<<<<<<<
whip[1]: Pr5c5{o .} ==> Br4c4 <> s, ns, sw, swn
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

Grid solved : computation-time 189.070896, nb-facts=<Fact-154069>






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

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . . . . . 2 . . . . . . . 2 . . . . . . . 2 . . . . . . . . . . . . . . . .)
580 csp-variables, 1587 candidates, 5908 csp-links and 28436 links. Initial density = 0.56488286368357
Simulated elimination of 1366
Simulated elimination of 1266
V-single: Vr6c6 = 0
H-single: Hr6c6 = 0
entering level W1 with <Fact-151051>
whip[1]: Pr6c6{o .} ==> Br5c5 <> sw
whip[1]: Br5c5{ne .} ==> Pr6c5 <> ne
whip[1]: Br5c5{ne .} ==> Pr5c6 <> ne
whip[1]: Pr5c6{sw .} ==> Br4c6 <> sw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> esw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> swn
whip[1]: Br5c5{ne .} ==> Pr5c6 <> o
whip[1]: Pr6c6{o .} ==> Br5c5 <> ew
whip[1]: Br5c5{ne .} ==> Pr5c5 <> sw <<<<<<<<<
whip[1]: Pr5c5{o .} ==> Br5c4 <> ne
whip[1]: Pr5c5{o .} ==> Br5c4 <> wne
whip[1]: Pr5c5{o .} ==> Br5c4 <> nes
whip[1]: Br5c5{ne .} ==> Pr5c5 <> ns <<<<<<<<<
whip[1]: Pr6c6{o .} ==> Br5c5 <> ns
whip[1]: Pr6c6{o .} ==> Br5c5 <> ne
whip[1]: Br5c5{se .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{o .} ==> Br6c4 <> ne
whip[1]: Pr6c5{o .} ==> Br6c4 <> wne
whip[1]: Pr6c5{o .} ==> Br6c4 <> nes
whip[1]: Br5c5{se .} ==> Pr6c5 <> o
whip[1]: Pr6c5{ew .} ==> Br6c4 <> sw
whip[1]: Pr6c5{ew .} ==> Br6c4 <> w
whip[1]: Pr6c5{ew .} ==> Br6c4 <> s
whip[1]: Pr6c5{ew .} ==> Br6c4 <> o
whip[1]: Br5c5{se .} ==> Pr5c6 <> sw
whip[1]: Pr5c6{ns .} ==> Br4c6 <> ne
whip[1]: Pr5c6{ns .} ==> Br4c6 <> e
whip[1]: Pr5c6{ns .} ==> Br4c6 <> n
whip[1]: Pr5c6{ns .} ==> Br4c6 <> o
whip[1]: Br5c5{se .} ==> Pr5c5 <> ne <<<<<<<<<
whip[1]: Pr5c5{ew .} ==> Br4c5 <> sw
whip[1]: Pr5c5{ew .} ==> Br4c5 <> esw
whip[1]: Pr5c5{ew .} ==> Br4c5 <> swn
whip[1]: Pr5c5{ew .} ==> Br4c4 <> ew
whip[1]: Pr5c5{ew .} ==> Br4c4 <> ne
whip[1]: Br4c4{sw .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{o .} ==> Br5c3 <> ne
whip[1]: Pr5c4{o .} ==> Br5c3 <> wne
whip[1]: Pr5c4{o .} ==> Br5c3 <> nes
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o
whip[1]: Br4c4{sw .} ==> Pr4c5 <> sw
whip[1]: Br5c5{se .} ==> Pr5c5 <> ew <<<<<<<<<
whip[1]: Pr5c5{o .} ==> Br4c4 <> ns
whip[1]: Br4c4{sw .} ==> Pr4c4 <> ew <<<<<<<<<
whip[1]: Br4c4{sw .} ==> Pr4c4 <> ne <<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> esw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> swn
whip[1]: Pr5c5{o .} ==> Br4c4 <> sw
whip[1]: Br4c4{nw .} ==> Pr5c4 <> ne
whip[1]: Pr5c4{ew .} ==> Br5c3 <> o
whip[1]: Pr5c4{ew .} ==> Br5c3 <> s
whip[1]: Pr5c4{ew .} ==> Br5c3 <> w
whip[1]: Pr5c4{ew .} ==> Br5c3 <> sw
whip[1]: Br4c4{nw .} ==> Pr4c5 <> ne
whip[1]: Pr4c5{ew .} ==> Br3c5 <> sw
whip[1]: Pr4c5{ew .} ==> Br3c5 <> esw
whip[1]: Pr4c5{ew .} ==> Br3c5 <> swn
whip[1]: Br4c4{nw .} ==> Pr4c5 <> o
whip[1]: Pr4c5{ew .} ==> Br3c5 <> o
whip[1]: Pr4c5{ew .} ==> Br3c5 <> n
whip[1]: Pr4c5{ew .} ==> Br3c5 <> e
whip[1]: Pr4c5{ew .} ==> Br3c5 <> ne
whip[1]: Br4c4{nw .} ==> Pr4c4 <> ns <<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br3c3 <> ne
whip[1]: Br3c3{sw .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ne
whip[1]: Pr4c3{o .} ==> Br4c2 <> wne
whip[1]: Pr4c3{o .} ==> Br4c2 <> nes
whip[1]: Br3c3{sw .} ==> Pr4c3 <> o
whip[1]: Br3c3{sw .} ==> Pr3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> ew
whip[1]: Br4c4{nw .} ==> Pr4c4 <> sw <<<<<<<<<
whip[1]: Pr4c4{o .} ==> Br4c3 <> ne
whip[1]: Pr4c4{o .} ==> Br4c3 <> wne
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes
whip[1]: Pr4c4{o .} ==> Br3c3 <> sw
whip[1]: Br3c3{ns .} ==> Pr4c3 <> ne
whip[1]: Pr4c3{ew .} ==> Br4c2 <> o
whip[1]: Pr4c3{ew .} ==> Br4c2 <> s
whip[1]: Pr4c3{ew .} ==> Br4c2 <> w
whip[1]: Pr4c3{ew .} ==> Br4c2 <> sw
whip[1]: Br3c3{ns .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{ew .} ==> Br2c4 <> sw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> esw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> swn
whip[1]: Br3c3{ns .} ==> Pr3c4 <> o
whip[1]: Pr3c4{ew .} ==> Br2c4 <> o
whip[1]: Pr3c4{ew .} ==> Br2c4 <> n
whip[1]: Pr3c4{ew .} ==> Br2c4 <> e
whip[1]: Pr3c4{ew .} ==> Br2c4 <> ne
whip[1]: Br3c3{ns .} ==> Pr3c3 <> ns <<<<<<<<<
whip[1]: Br3c3{ns .} ==> Pr3c3 <> sw <<<<<<<<<
whip[1]: Pr3c3{o .} ==> Br3c2 <> ne
whip[1]: Pr3c3{o .} ==> Br3c2 <> wne
whip[1]: Pr3c3{o .} ==> Br3c2 <> nes
whip[1]: Pr4c4{o .} ==> Br3c3 <> ns
whip[1]: Br3c3{se .} ==> Pr3c3 <> ew <<<<<<<<<
whip[1]: Pr3c3{o .} ==> Br2c2 <> s, ns, sw, swn
whip[1]: Br3c3{se .} ==> Pr3c3 <> ne <<<<<<<<<
whip[1]: Pr3c3{se .} ==> Br2c3 <> sw
whip[1]: Pr3c3{se .} ==> Br2c3 <> esw
whip[1]: Pr3c3{se .} ==> Br2c3 <> swn
whip[1]: Pr3c3{se .} ==> Br2c2 <> wne, ew, ne, e
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.............................
:   :   :   :   :   :   :   :
.............................
:   :   :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

Grid solved : computation-time 195.28433, nb-facts=<Fact-151101>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . 2 . . . . . . . 2 . . . . . . . 2 . . . . . . . 2 . . . . . . . . . . . . . . . .)
580 csp-variables, 1574 candidates, 5812 csp-links and 28020 links. Initial density = 0.565854383574148
Simulated elimination of 1366
Simulated elimination of 1266
V-single: Vr6c6 = 0
H-single: Hr6c6 = 0
entering level W1 with <Fact-149567>
whip[1]: Pr6c6{o .} ==> Br5c5 <> sw
whip[1]: Br5c5{ne .} ==> Pr6c5 <> ne
whip[1]: Br5c5{ne .} ==> Pr5c6 <> ne
whip[1]: Pr5c6{sw .} ==> Br4c6 <> sw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> esw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> swn
whip[1]: Br5c5{ne .} ==> Pr5c6 <> o
whip[1]: Pr6c6{o .} ==> Br5c5 <> ew
whip[1]: Br5c5{ne .} ==> Pr5c5 <> sw <<<<<<<<<<<<<<<
whip[1]: Pr5c5{o .} ==> Br5c4 <> ne
whip[1]: Pr5c5{o .} ==> Br5c4 <> wne
whip[1]: Pr5c5{o .} ==> Br5c4 <> nes
whip[1]: Br5c5{ne .} ==> Pr5c5 <> ns <<<<<<<<<<<<<<<
whip[1]: Pr6c6{o .} ==> Br5c5 <> ns
whip[1]: Pr6c6{o .} ==> Br5c5 <> ne
whip[1]: Br5c5{se .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{o .} ==> Br6c4 <> ne
whip[1]: Pr6c5{o .} ==> Br6c4 <> wne
whip[1]: Pr6c5{o .} ==> Br6c4 <> nes
whip[1]: Br5c5{se .} ==> Pr6c5 <> o
whip[1]: Pr6c5{ew .} ==> Br6c4 <> sw
whip[1]: Pr6c5{ew .} ==> Br6c4 <> w
whip[1]: Pr6c5{ew .} ==> Br6c4 <> s
whip[1]: Pr6c5{ew .} ==> Br6c4 <> o
whip[1]: Br5c5{se .} ==> Pr5c6 <> sw
whip[1]: Pr5c6{ns .} ==> Br4c6 <> ne
whip[1]: Pr5c6{ns .} ==> Br4c6 <> e
whip[1]: Pr5c6{ns .} ==> Br4c6 <> n
whip[1]: Pr5c6{ns .} ==> Br4c6 <> o
whip[1]: Br5c5{se .} ==> Pr5c5 <> ne <<<<<<<<<<<<<<<
whip[1]: Pr5c5{ew .} ==> Br4c5 <> sw
whip[1]: Pr5c5{ew .} ==> Br4c5 <> esw
whip[1]: Pr5c5{ew .} ==> Br4c5 <> swn
whip[1]: Pr5c5{ew .} ==> Br4c4 <> ew
whip[1]: Pr5c5{ew .} ==> Br4c4 <> ne
whip[1]: Br4c4{sw .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{o .} ==> Br5c3 <> ne
whip[1]: Pr5c4{o .} ==> Br5c3 <> wne
whip[1]: Pr5c4{o .} ==> Br5c3 <> nes
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o
whip[1]: Br4c4{sw .} ==> Pr4c5 <> sw
whip[1]: Br5c5{se .} ==> Pr5c5 <> ew <<<<<<<<<<<<<<<
whip[1]: Pr5c5{o .} ==> Br4c4 <> ns
whip[1]: Br4c4{sw .} ==> Pr4c4 <> ew <<<<<<<<<<<<<<<
whip[1]: Br4c4{sw .} ==> Pr4c4 <> ne <<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> esw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> swn
whip[1]: Pr5c5{o .} ==> Br4c4 <> sw
whip[1]: Br4c4{nw .} ==> Pr5c4 <> ne
whip[1]: Pr5c4{ew .} ==> Br5c3 <> o
whip[1]: Pr5c4{ew .} ==> Br5c3 <> s
whip[1]: Pr5c4{ew .} ==> Br5c3 <> w
whip[1]: Pr5c4{ew .} ==> Br5c3 <> sw
whip[1]: Br4c4{nw .} ==> Pr4c5 <> ne
whip[1]: Pr4c5{ew .} ==> Br3c5 <> sw
whip[1]: Pr4c5{ew .} ==> Br3c5 <> esw
whip[1]: Pr4c5{ew .} ==> Br3c5 <> swn
whip[1]: Br4c4{nw .} ==> Pr4c5 <> o
whip[1]: Pr4c5{ew .} ==> Br3c5 <> o
whip[1]: Pr4c5{ew .} ==> Br3c5 <> n
whip[1]: Pr4c5{ew .} ==> Br3c5 <> e
whip[1]: Pr4c5{ew .} ==> Br3c5 <> ne
whip[1]: Br4c4{nw .} ==> Pr4c4 <> ns <<<<<<<<<<<<<<<
whip[1]: Pr4c4{sw .} ==> Br3c3 <> ne
whip[1]: Br3c3{sw .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ne
whip[1]: Pr4c3{o .} ==> Br4c2 <> wne
whip[1]: Pr4c3{o .} ==> Br4c2 <> nes
whip[1]: Br3c3{sw .} ==> Pr4c3 <> o
whip[1]: Br3c3{sw .} ==> Pr3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> ew
whip[1]: Br4c4{nw .} ==> Pr4c4 <> sw <<<<<<<<<<<<<<<
whip[1]: Pr4c4{o .} ==> Br4c3 <> ne
whip[1]: Pr4c4{o .} ==> Br4c3 <> wne
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes
whip[1]: Pr4c4{o .} ==> Br3c3 <> sw
whip[1]: Br3c3{ns .} ==> Pr4c3 <> ne
whip[1]: Pr4c3{ew .} ==> Br4c2 <> o
whip[1]: Pr4c3{ew .} ==> Br4c2 <> s
whip[1]: Pr4c3{ew .} ==> Br4c2 <> w
whip[1]: Pr4c3{ew .} ==> Br4c2 <> sw
whip[1]: Br3c3{ns .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{ew .} ==> Br2c4 <> sw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> esw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> swn
whip[1]: Br3c3{ns .} ==> Pr3c4 <> o
whip[1]: Pr3c4{ew .} ==> Br2c4 <> o
whip[1]: Pr3c4{ew .} ==> Br2c4 <> n
whip[1]: Pr3c4{ew .} ==> Br2c4 <> e
whip[1]: Pr3c4{ew .} ==> Br2c4 <> ne
whip[1]: Br3c3{ns .} ==> Pr3c3 <> ns <<<<<<<<<<<<<<<
whip[1]: Br3c3{ns .} ==> Pr3c3 <> sw <<<<<<<<<<<<<<<
whip[1]: Pr3c3{o .} ==> Br3c2 <> ne
whip[1]: Pr3c3{o .} ==> Br3c2 <> wne
whip[1]: Pr3c3{o .} ==> Br3c2 <> nes
whip[1]: Pr4c4{o .} ==> Br3c3 <> ns
whip[1]: Br3c3{se .} ==> Pr3c3 <> ew <<<<<<<<<<<<<<<
whip[1]: Pr3c3{o .} ==> Br2c2 <> ns
whip[1]: Pr3c3{o .} ==> Br2c2 <> sw
whip[1]: Br2c2{ne .} ==> Pr3c2 <> ne
whip[1]: Br2c2{ne .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Br2c2{ne .} ==> Pr2c3 <> o
whip[1]: Br3c3{se .} ==> Pr3c3 <> ne <<<<<<<<<<<<<<<
whip[1]: Pr3c3{se .} ==> Br2c3 <> sw
whip[1]: Pr3c3{se .} ==> Br2c3 <> esw
whip[1]: Pr3c3{se .} ==> Br2c3 <> swn
whip[1]: Pr3c3{se .} ==> Br2c2 <> ew
whip[1]: Br2c2{ne .} ==> Pr2c2 <> sw <<<<<<<<<<<<<<<
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c2{ne .} ==> Pr2c2 <> ns <<<<<<<<<<<<<<<
whip[1]: Pr3c3{se .} ==> Br2c2 <> ne
whip[1]: Br2c2{se .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{o .} ==> Br3c1 <> ne
whip[1]: Pr3c2{o .} ==> Br3c1 <> wne
whip[1]: Pr3c2{o .} ==> Br3c1 <> nes
whip[1]: Br2c2{se .} ==> Pr3c2 <> o
whip[1]: Pr3c2{ew .} ==> Br3c1 <> sw
whip[1]: Pr3c2{ew .} ==> Br3c1 <> w
whip[1]: Pr3c2{ew .} ==> Br3c1 <> s
whip[1]: Pr3c2{ew .} ==> Br3c1 <> o
whip[1]: Br2c2{se .} ==> Pr2c3 <> sw
whip[1]: Pr2c3{ns .} ==> Br1c3 <> ne
whip[1]: Pr2c3{ns .} ==> Br1c3 <> e
whip[1]: Pr2c3{ns .} ==> Br1c3 <> n
whip[1]: Pr2c3{ns .} ==> Br1c3 <> o
whip[1]: Br2c2{se .} ==> Pr2c2 <> ne <<<<<<<<<<<<<<<
whip[1]: Pr2c2{ew .} ==> Br1c2 <> sw
whip[1]: Pr2c2{ew .} ==> Br1c2 <> esw
whip[1]: Pr2c2{ew .} ==> Br1c2 <> swn
whip[1]: Pr2c2{ew .} ==> Br1c1 <> wne
whip[1]: Br1c1{o .} ==> Pr1c2 <> sw
whip[1]: Pr1c2{o .} ==> Br1c2 <> w
whip[1]: Pr1c2{o .} ==> Br1c2 <> ew
whip[1]: Pr2c2{ew .} ==> Br1c1 <> e
whip[1]: Br2c2{se .} ==> Pr2c2 <> ew <<<<<<<<<<<<<<<
whip[1]: Pr2c2{o .} ==> Br1c1 <> s
whip[1]: Pr2c2{o .} ==> Br1c1 <> swn
whip[1]: Br1c1{o .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{se .} ==> Br2c1 <> n
whip[1]: Pr2c1{se .} ==> Br2c1 <> ns
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.............................
:   :   :   :   :   :   :   :
.............................
:   : 2 :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.....................   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

Grid solved : computation-time 210.495125, nb-facts=<Fact-149617>




symmetric corner


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

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 819 candidates, 2884 csp-links and 13748 links. Initial density = 1.02605897226924
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering level W1 with <Fact-76833>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes, esw, sw, ew, ns, ne, w, n
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes, wne, ne
whip[1]: Pr4c4{o .} ==> Br3c4 <> swn, esw, sw
whip[1]: Pr4c4{o .} ==> Br3c3 <> sw
whip[1]: Br3c3{ne .} ==> Pr4c3 <> ne
whip[1]: Br3c3{ne .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw, esw, swn
whip[1]: Br3c3{ne .} ==> Pr3c4 <> o
whip[1]: Pr4c4{o .} ==> Br3c3 <> ew
whip[1]: Br3c3{ne .} ==> Pr3c3 <> sw <<<<<<<<<<<<<
whip[1]: Pr3c3{o .} ==> Br3c2 <> ne, wne, nes
whip[1]: Br3c3{ne .} ==> Pr3c3 <> ns <<<<<<<<<<<<<
whip[1]: Pr4c4{o .} ==> Br3c3 <> ns, ne
whip[1]: Br3c3{se .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ne, wne, nes
whip[1]: Br3c3{se .} ==> Pr4c3 <> o
whip[1]: Pr4c3{ew .} ==> Br4c2 <> sw, w, s, o
whip[1]: Br3c3{se .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{ns .} ==> Br2c4 <> ne, e, n, o
whip[1]: Br3c3{se .} ==> Pr3c3 <> ne <<<<<<<<<<<<<
whip[1]: Pr3c3{ew .} ==> Br2c3 <> sw, esw, swn
whip[1]: Pr3c3{ew .} ==> Br2c2 <> wne, ew, ne, e
whip[1]: Br3c3{se .} ==> Pr3c3 <> ew <<<<<<<<<<<<<
whip[1]: Pr3c3{o .} ==> Br2c2 <> s
whip[1]: Pr3c3{o .} ==> Br2c2 <> ns
whip[1]: Pr3c3{o .} ==> Br2c2 <> sw
whip[1]: Pr3c3{o .} ==> Br2c2 <> swn
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

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

Grid solved : computation-time 50.276447, nb-facts=<Fact-76859>



The proof can be simplified to:
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering level W1 with <Fact-76833>
whip[1]: Pr4c4{o .} ==> Br3c3 <> sw, ew
whip[1]: Br3c3{ne .} ==> Pr3c3 <> sw, ns <<<<<<<<<<<<<
whip[1]: Pr4c4{o .} ==> Br3c3 <> ns, ne
whip[1]: Br3c3{se .} ==> Pr3c3 <> ne, ew <<<<<<<<<<<<<



