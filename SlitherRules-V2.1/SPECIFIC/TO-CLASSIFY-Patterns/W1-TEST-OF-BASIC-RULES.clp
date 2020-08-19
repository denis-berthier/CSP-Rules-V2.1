
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              W1-TEST-OF-BASIC-RULES
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





(solve
5 5 
. . . . .
. . . . .
. . . . . 
. . . . .
. . . . . 
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; PRELIMINARY LEMMAS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :       :   :   :
.....................        .....................
:   :   :   :   :   :   =>   :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

incident-closed-corners

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

==>


.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :       :   :
.........   .———.....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................


?diag = se
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
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
r3c3-incident-closed-corner-at-se ==> Hr4c3 = 0, Vr3c4 = 0, Pr4c4 = se, Pr5c5 ≠ nw
when whips added:
r3c3-incident-closed-corner-at-se ==> Hr4c3 = 0, Vr3c4 = 0, Pr4c4 = se, Pr5c5 ≠ nw
entering level W1 with <Fact-83574>
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ wne, nw, swn
whip[1]: Pr5c4{ne .} ==> Br5c3 ≠ nes, ne, wne
whip[1]: Pr4c5{nw .} ==> Br4c5 ≠ wne, nw, swn
whip[1]: Br4c4{wne .} ==> Nr4c4 ≠ 0, 1
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 0
whip[1]: Pr4c5{nw .} ==> Br3c5 ≠ swn, sw, esw
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br3c3{nw .} ==> Nr3c3 ≠ 3




?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 4 2)
        (value-row-col-to-V-label 0 4 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
r3c3-incident-closed-corner-at-sw ==> Hr4c3 = 0, Vr3c3 = 0, Pr4c3 = sw, Pr5c2 ≠ ne
when whips added:
entering level W1 with <Fact-83574>
whip[1]: Pr5c3{ne .} ==> Br5c3 ≠ wne, nw, swn
whip[1]: Pr5c3{ne .} ==> Br5c2 ≠ nes, ne, wne
whip[1]: Br4c3{esw .} ==> Nr4c3 ≠ 0
whip[1]: Br4c2{nes .} ==> Nr4c2 ≠ 0, 1
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ nes, ne, wne
whip[1]: Br3c3{ne .} ==> Nr3c3 ≠ 3
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr4c2{ne .} ==> Br3c1 ≠ nes, se, esw



?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 4)
        (value-row-col-to-V-label 0 2 4)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
r3c3-incident-closed-corner-at-ne ==> Hr3c3 = 0, Vr3c4 = 0, Pr3c4 = ne, Pr2c5 ≠ sw
when whips added:
entering level W1 with <Fact-83574>
whip[1]: Pr3c5{nw .} ==> Br3c5 ≠ wne, nw, swn
whip[1]: Br3c4{nes .} ==> Nr3c4 ≠ 0
whip[1]: Br3c3{sw .} ==> Nr3c3 ≠ 3
whip[1]: Pr3c5{nw .} ==> Br2c5 ≠ swn, sw, esw
whip[1]: Br2c4{swn .} ==> Nr2c4 ≠ 0, 1
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Pr2c4{ns .} ==> Br1c4 ≠ swn, sw, esw
whip[1]: Pr2c4{ns .} ==> Br1c3 ≠ nes, se, esw




?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 0 3 2)
        (value-row-col-to-V-label 0 2 3)
    )
)

(solve 
5 5 
. . . . .
. . . . .
. . . . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
r3c3-incident-closed-corner-at-nw ==> Hr3c3 = 0, Vr3c3 = 0, Pr3c3 = nw, Pr2c2 ≠ se
when whips added:
entering level W1 with <Fact-83574>
whip[1]: Br3c3{se .} ==> Nr3c3 ≠ 3
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ nes, ne, wne
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{nes .} ==> Nr2c2 ≠ 0, 1
whip[1]: Pr3c2{ne .} ==> Br2c1 ≠ nes, se, esw
whip[1]: Pr2c3{ns .} ==> Br1c3 ≠ swn, sw, esw
whip[1]: Pr2c3{ns .} ==> Br1c2 ≠ nes, se, esw



all H, V and P variables OK



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

corners of 2s

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




---------------------------------------------------------------------------------

2-open-corners

---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2     :   :
.........   .........
:   :   :   :   :   :
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
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................


?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
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
2-in-r3c3-open-se-corner ==> Hr3c3 = 1, Vr3c3 = 1, Hr3c2 = 0, Vr2c3 = 0, Pr3c3 = se, Br3c3 = nw
when whips added:
entering level W1 with <Fact-81925>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Br3c2{esw .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c4{nw .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Br2c3{nes .} ==> Nr2c3 ≠ 0
whip[1]: Br2c2{nw .} ==> Nr2c2 ≠ 3



?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 3)
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
2-in-r3c3-open-sw-corner ==> Hr3c3 = 1, Vr3c4 = 1, Hr3c4 = 0, Vr2c4 = 0, Pr3c4 = sw, Br3c3 = ne



?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 4)
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
2-in-r3c3-open-ne-corner ==> Hr4c3 = 1, Vr3c3 = 1, Hr4c2 = 0, Vr4c3 = 0, Pr4c3 = ne, Br3c3 = sw



?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 3)
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
2-in-r3c3-open-nw-corner ==> Hr4c3 = 1, Vr3c4 = 1, Hr4c4 = 0, Vr4c4 = 0, Pr4c4 = nw, Br3c3 = se


all OK for H, V, P and B variables.




---------------------------------------------------------------------------------

2-non-closed-corners

---------------------------------------------------------------------------------

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2     :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

or

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   : 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................


?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
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
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
when whips added:
entering level W1 with <Fact-81904>
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw



?diag = se
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        ;(value-row-col-to-V-label 1 3 4)
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
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
when whips added:



?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 3)
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
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
when whips added:
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw



?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        ;(value-row-col-to-V-label 1 3 3)
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
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
when whips added:
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw




?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        ;(value-row-col-to-V-label 1 3 4)
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
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
2-in-r3c3-non-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne


(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 4)
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
2-in-r3c3-non-closed-se-corner ==> Pr3c3 ≠ nw, Pr3c3 ≠ o
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
when whips added:
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, se, esw



?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 3)
        ;(value-row-col-to-V-label 1 3 3)
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
2-in-r3c3-non-closed-ne-corner ==> Pr4c3 ≠ sw, Pr4c3 ≠ o
2-in-r3c3-non-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c3{ne .} ==> Br4c2 ≠ nes, ne, wne



(progn
(bind ?*simulated-eliminations*
    (create$ 
        ;(value-row-col-to-H-label 1 3 3)
        (value-row-col-to-V-label 1 3 3)
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
2-in-r3c3-non-closed-sw-corner ==> Pr3c4 ≠ ne, Pr3c4 ≠ o
2-in-r3c3-non-closed-nw-corner ==> Pr4c4 ≠ se, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, sw, esw



all OK for P variables




---------------------------------------------------------------------------------

2-symmetric-corners

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

;;; P correspondence:
;;; o  ne ns nw se ew sw
;;; 1  2  3  4  5  6  7   


?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
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
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
when whips added:
entering level W1 with <Fact-81903>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn



?diag = ne
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
. . 2 . .
. . . . .
. . . . . 
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-ne-corner ==> Pr4c3 ≠ ew, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
when whips added:
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ swn, n, e, ns, nw, se, ew, esw
whip[1]: Pr3c4{o .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr3c4{o .} ==> Br3c3 ≠ ew, ns, nw, se
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{o .} ==> Br2c4 ≠ nes, s, w, ns, nw, se, ew, wne
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ nes, se, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0




?diag = sw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 4 3) ; ns
        (value-row-col-to-P-label 6 4 3) ; ew
        (value-row-col-to-P-label 4 4 3) ; nw
        (value-row-col-to-P-label 5 4 3) ; se
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
2-in-r3c3-symmetric-sw-corner ==> Pr3c4 ≠ ew, Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ ns, Pr3c3 ≠ se, Pr3c3 ≠ nw, Pr3c3 ≠ o, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ o
when whips added:
entering level W1 with <Fact-81903>
whip[1]: Pr4c4{ne .} ==> Br4c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c4{nes .} ==> Nr4c4 ≠ 0
whip[1]: Pr4c3{o .} ==> Br4c3 ≠ wne, nw, swn
whip[1]: Pr4c3{o .} ==> Br4c2 ≠ swn, n, e, ns, nw, se, ew, esw
whip[1]: Pr3c4{o .} ==> Br3c4 ≠ wne, nw, swn
whip[1]: Pr3c4{o .} ==> Br3c3 ≠ ew, ns, nw, se
whip[1]: Pr4c3{o .} ==> Br3c2 ≠ nes, se, esw
whip[1]: Pr3c4{o .} ==> Br2c4 ≠ nes, s, w, ns, nw, se, ew, wne
whip[1]: Pr3c4{o .} ==> Br2c3 ≠ nes, se, esw
whip[1]: Pr3c3{ne .} ==> Br2c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c2{wne .} ==> Nr2c2 ≠ 0



?diag = se
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
2-in-r3c3-symmetric-se-corner ==> Pr3c3 ≠ sw, Pr3c3 ≠ ew, Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o
when whips added:
entering level W1 with <Fact-81903>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn



all OK for P variables




iteration OK:

?diag = nw
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
    )
)

(solve 
5 5
. . . . .
. . . . .
. . 2 . .
. . . 2 .
. . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
2-in-r4c4-symmetric-nw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ew, Pr5c5 ≠ ns, Pr5c5 ≠ ne, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
when whips added:
entering level W1 with <Fact-80243>
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ nes, n, w, esw
whip[1]: Br5c5{o .} ==> Pr5c6 ≠ sw <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< due to border
whip[1]: Br5c5{o .} ==> Pr6c5 ≠ ne <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< due to border
whip[1]: Pr6c5{ew .} ==> Br5c4 ≠ e, wne, ew, ne
whip[1]: Pr5c6{o .} ==> Br4c5 ≠ s, swn, sw, ns
whip[1]: Br5c5{o .} ==> Nr5c5 ≠ 3, 1
whip[1]: Pr5c5{o .} ==> Br5c4 ≠ nes
whip[1]: Pr5c4{ns .} ==> Br5c3 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ esw
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ sw, ne, ns, ew
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn


(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
    )
)

(solve 
6 6
. . . . . .
. . . . . .
. . 2 . . .
. . . 2 . .
. . . . . .
. . . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c3-symmetric-nw-corner ==> Pr4c4 ≠ sw, Pr4c4 ≠ ew, Pr4c4 ≠ ns, Pr4c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ ne, Pr3c4 ≠ o, Pr4c3 ≠ sw, Pr4c3 ≠ ne, Pr4c3 ≠ o
2-in-r4c4-symmetric-nw-corner ==> Pr5c5 ≠ sw, Pr5c5 ≠ ew, Pr5c5 ≠ ns, Pr5c5 ≠ ne, Pr4c5 ≠ sw, Pr4c5 ≠ ne, Pr4c5 ≠ o, Pr5c4 ≠ sw, Pr5c4 ≠ ne, Pr5c4 ≠ o
when whips added:
whip[1]: Pr5c5{o .} ==> Br5c5 ≠ nes, n, w, ne, ns, ew, sw, esw
whip[1]: Pr5c5{o .} ==> Br5c4 ≠ nes, ne, wne
whip[1]: Pr5c4{ns .} ==> Br5c3 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br5c3{swn .} ==> Nr5c3 ≠ 0
whip[1]: Pr5c5{o .} ==> Br4c5 ≠ swn, sw, esw
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ sw, ne, ns, ew
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c3{ns .} ==> Br4c2 ≠ nes, o, s, w, ne, sw, wne
whip[1]: Br4c2{swn .} ==> Nr4c2 ≠ 0
whip[1]: Pr4c5{ns .} ==> Br3c5 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br3c5{nes .} ==> Nr3c5 ≠ 0
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br3c3 ≠ sw, ne, ns, ew
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ nes, ne, wne
whip[1]: Pr3c4{ns .} ==> Br2c4 ≠ swn, o, n, e, ne, sw, esw
whip[1]: Br2c4{nes .} ==> Nr2c4 ≠ 0
whip[1]: Pr3c3{o .} ==> Br2c3 ≠ swn, sw, esw
whip[1]: Pr3c3{o .} ==> Br2c2 ≠ wne, e, s, ne, ns, ew, sw, swn





?diag = ne
(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 5) ; ns
        (value-row-col-to-P-label 6 3 5) ; ew
        (value-row-col-to-P-label 4 3 5) ; nw
        (value-row-col-to-P-label 5 3 5) ; se
    )
)

(solve 
6 6
. . . . . .
. . . . . .
. . . 2 . .
. . 2 . . .
. . . . . .
. . . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
2-in-r3c4-symmetric-ne-corner ==> Pr4c4 ≠ ew, Pr4c4 ≠ se, Pr4c4 ≠ nw, Pr4c4 ≠ ns, Pr3c4 ≠ se, Pr3c4 ≠ nw, Pr3c4 ≠ o, Pr4c5 ≠ se, Pr4c5 ≠ nw, Pr4c5 ≠ o
2-in-r4c3-symmetric-ne-corner ==> Pr5c3 ≠ ew, Pr5c3 ≠ se, Pr5c3 ≠ nw, Pr5c3 ≠ ns, Pr4c3 ≠ se, Pr4c3 ≠ nw, Pr4c3 ≠ o, Pr5c4 ≠ se, Pr5c4 ≠ nw, Pr5c4 ≠ o
when whips added:
entering level W1 with <Fact-118122>
whip[1]: Pr5c4{ne .} ==> Br5c4 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br5c4{nes .} ==> Nr5c4 ≠ 0
whip[1]: Pr5c3{o .} ==> Br5c3 ≠ wne, nw, swn
whip[1]: Pr5c3{o .} ==> Br5c2 ≠ swn, n, e, ns, nw, se, ew, esw
whip[1]: Pr4c5{ne .} ==> Br4c5 ≠ wne, o, e, s, nw, se, swn
whip[1]: Br4c5{nes .} ==> Nr4c5 ≠ 0
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ wne, nw, swn
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ ew, ns, nw, se
whip[1]: Pr5c3{o .} ==> Br4c2 ≠ nes, se, esw
whip[1]: Pr3c5{o .} ==> Br3c5 ≠ wne, nw, swn
whip[1]: Pr3c5{o .} ==> Br3c4 ≠ ew, ns, nw, se
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ nes, se, esw
whip[1]: Pr4c3{ne .} ==> Br3c2 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br3c2{wne .} ==> Nr3c2 ≠ 0
whip[1]: Pr3c5{o .} ==> Br2c5 ≠ nes, s, w, ns, nw, se, ew, wne
whip[1]: Pr3c5{o .} ==> Br2c4 ≠ nes, se, esw
whip[1]: Pr3c4{ne .} ==> Br2c3 ≠ nes, o, n, w, nw, se, esw
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0






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

3+diagonal-2-symmetric-corner

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
. 3 2 . .
. . . . .
. . . . .
)

(bind ?*simulated-eliminations*
    (create$ 
))
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . 3 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering level W1 with <Fact-75117>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes
whip[1]: Pr4c4{o .} ==> Br4c3 <> wne
whip[1]: Pr4c4{o .} ==> Br4c3 <> ne
whip[1]: Pr4c4{o .} ==> Br3c4 <> swn
whip[1]: Pr4c4{o .} ==> Br3c4 <> esw
whip[1]: Pr4c4{o .} ==> Br3c4 <> sw
whip[1]: Pr4c4{o .} ==> Br3c3 <> sw
whip[1]: Br3c3{ne .} ==> Pr4c3 <> ne
whip[1]: Br3c3{ne .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> esw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> swn
whip[1]: Br3c3{ne .} ==> Pr3c4 <> o
whip[1]: Pr4c4{o .} ==> Br3c3 <> ew
whip[1]: Br3c3{ne .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{o .} ==> Br3c2 <> wne
whip[1]: Br3c2{nes .} ==> Pr4c3 <> ns
whip[1]: Br3c2{nes .} ==> Pr4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Br3c1 <> se
whip[1]: Pr4c2{sw .} ==> Br3c1 <> esw
whip[1]: Pr4c2{sw .} ==> Br3c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr4c2 <> ns
whip[1]: Br3c2{nes .} ==> Hr4c2 <> 0
H-single: Hr4c2 = 1
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Pr4c3{sw .} ==> Br4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br4c3 <> swn
whip[1]: Pr3c3{o .} ==> Br3c2 <> nes
whip[1]: Br3c2{esw .} ==> Pr4c2 <> ew
whip[1]: Pr4c2{ne .} ==> Br3c1 <> s
whip[1]: Pr4c2{ne .} ==> Br3c1 <> ns
whip[1]: Br3c1{wne .} ==> Pr4c1 <> se
whip[1]: Pr4c1{o .} ==> Br4c1 <> nw
whip[1]: Pr4c1{o .} ==> Br4c1 <> swn
whip[1]: Pr4c2{ne .} ==> Br3c1 <> sw
whip[1]: Pr4c2{ne .} ==> Br3c1 <> swn
whip[1]: Br3c1{wne .} ==> Pr4c1 <> ne
whip[1]: Pr4c1{ns .} ==> Br4c1 <> n
whip[1]: Pr4c1{ns .} ==> Hr4c1 <> 1
H-single: Hr4c1 = 0
whip[1]: Br3c2{esw .} ==> Pr4c2 <> se
P-single: Pr4c2 = ne
V-single: Vr3c2 = 1
V-single: Vr4c2 = 0
whip[1]: Pr3c2{sw .} ==> Br2c2 <> sw
whip[1]: Pr3c2{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c2 <> swn
whip[1]: Pr3c2{sw .} ==> Br2c1 <> se
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br3c3{ne .} ==> Pr3c3 <> ns
whip[1]: Pr4c4{o .} ==> Br3c3 <> ns
whip[1]: Pr4c4{o .} ==> Br3c3 <> ne
whip[1]: Br3c3{se .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{nw .} ==> Br4c2 <> ne
whip[1]: Br4c2{nes .} ==> Pr5c3 <> ne
whip[1]: Pr5c3{sw .} ==> Br4c3 <> sw
whip[1]: Pr5c3{sw .} ==> Br4c3 <> esw
whip[1]: Br4c2{nes .} ==> Pr5c3 <> ns
whip[1]: Pr4c3{nw .} ==> Br4c2 <> nes
whip[1]: Br4c2{n .} ==> Pr5c3 <> nw
whip[1]: Pr5c3{sw .} ==> Br4c3 <> w
whip[1]: Pr5c3{sw .} ==> Vr4c3 <> 1
V-single: Vr4c3 = 0
whip[1]: Br3c3{se .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{ns .} ==> Br2c4 <> ne
whip[1]: Pr3c4{ns .} ==> Br2c4 <> e
whip[1]: Pr3c4{ns .} ==> Br2c4 <> n
whip[1]: Pr3c4{ns .} ==> Br2c4 <> o
whip[1]: Br3c3{se .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{ew .} ==> Br2c3 <> sw
whip[1]: Pr3c3{ew .} ==> Br2c3 <> esw
whip[1]: Pr3c3{ew .} ==> Br2c3 <> swn
whip[1]: Pr3c3{ew .} ==> Br2c2 <> wne
whip[1]: Pr3c3{ew .} ==> Br2c2 <> ew
whip[1]: Pr3c3{ew .} ==> Br2c2 <> ne
whip[1]: Pr3c3{ew .} ==> Br2c2 <> e
whip[1]: Br3c3{se .} ==> Pr3c3 <> ew
whip[1]: Pr3c3{o .} ==> Br2c2 <> s
whip[1]: Pr3c3{o .} ==> Br2c2 <> ns
whip[1]: Br3c2{swn .} ==> Pr3c3 <> o
whip[1]: Pr3c3{se .} ==> Br2c3 <> o
whip[1]: Pr3c3{se .} ==> Br2c3 <> n
whip[1]: Pr3c3{se .} ==> Br2c3 <> e
whip[1]: Pr3c3{se .} ==> Br2c3 <> ne
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

Grid solved : computation-time 56.2965909999999, nb-facts=<Fact-75149>



*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
     *****              Blocked-whips[1]               *****
(. . . . . . . . . . . 3 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering level W1 with <Fact-75117>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ ew, Br3c3 ≠ sw, Br3c4 ≠ sw, Br3c4 ≠ esw, Br3c4 ≠ swn, Br4c3 ≠ ne, Br4c3 ≠ wne, Br4c3 ≠ nes, Br4c4 ≠ n, Br4c4 ≠ w, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw
whip[1]: Br3c3{nw .} ==> Pr4c3 ≠ ne, Pr3c4 ≠ sw, Pr4c3 ≠ o, Pr4c3 ≠ sw, Pr3c3 ≠ ne, Pr3c3 ≠ ew, Pr3c3 ≠ sw, Pr3c3 ≠ ns, Pr3c4 ≠ o, Pr3c4 ≠ ne
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ o, Br4c2 ≠ nes, Br4c2 ≠ wne, Br4c2 ≠ ne, Br4c2 ≠ sw, Br4c2 ≠ w, Br4c2 ≠ s
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ sw, Br2c4 ≠ ne, Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Br2c4 ≠ swn, Br2c4 ≠ esw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ e, Br2c3 ≠ swn, Br2c3 ≠ esw, Br2c3 ≠ sw, Br2c2 ≠ s, Br2c2 ≠ ns, Br2c2 ≠ sw, Br2c2 ≠ swn, Br3c2 ≠ nes, Br3c2 ≠ wne, Br2c2 ≠ wne, Br2c2 ≠ ew, Br2c2 ≠ ne
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se, Pr4c2 ≠ sw, Pr4c2 ≠ o, Pr3c3 ≠ o, Pr3c2 ≠ nw, Pr3c2 ≠ o, Vr3c2 ≠ 0, Pr3c2 ≠ ne, Pr3c2 ≠ ew, Pr4c2 ≠ se, Pr4c2 ≠ ew, Hr4c2 ≠ 0, Pr4c2 ≠ ns, Pr4c2 ≠ nw
H-single: Hr4c2 = 1
V-single: Vr3c2 = 1
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0
whip[1]: Br4c2{ns .} ==> Vr4c3 ≠ 1, Pr5c3 ≠ nw, Pr5c3 ≠ ns, Pr5c3 ≠ ne
V-single: Vr4c3 = 0
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ esw, Br2c1 ≠ nes, Br2c1 ≠ esw, Br2c1 ≠ se
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ o, Br2c3 ≠ ne, Br2c3 ≠ e, Br2c3 ≠ n
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

Grid solved : computation-time 81.051619, nb-facts=<Fact-75167>



Gives:

whip[1]: Pr4c4{o .} ==> Br3c3 ≠ ne, ns, ew, sw
whip[1]: Br3c3{nw .} ==> Pr3c3 ≠ ne, ew, sw, ns
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ o, nes, wne, ne, sw, w, s
whip[1]: Pr3c3{se .} ==> Br3c2 ≠ nes, wne
whip[1]: Br3c2{esw .} ==> Pr4c2 ≠ sw, o, se, ew, ns, nw
whip[1]: Br3c2{esw .} ==> Vr3c2 ≠ 0
whip[1]: Br3c2{esw .} ==> Hr4c2 ≠ 0
H-single: Hr4c2 = 1
V-single: Vr3c2 = 1
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0
whip[1]: Br4c2{ns .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0



OR (for blocked-whips wrt only one csp-zzz)


*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
     *****              Blocked-whips[1]               *****
(. . . . . . . . . . . 3 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 7444
Simulated elimination of 6444
Simulated elimination of 3444
Simulated elimination of 2444
entering level W1 with <Fact-75117>
whip[1]: Pr4c4{o .} ==> Br4c4 ≠ nes, Br4c4 ≠ n, Br4c4 ≠ w, Br4c4 ≠ ne, Br4c4 ≠ ns, Br4c4 ≠ ew, Br4c4 ≠ sw, Br4c4 ≠ esw
whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, Br4c3 ≠ ne, Br4c3 ≠ wne
whip[1]: Pr4c4{o .} ==> Br3c4 ≠ swn, Br3c4 ≠ sw, Br3c4 ≠ esw
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ sw, Br3c3 ≠ ne, Br3c3 ≠ ns, Br3c3 ≠ ew
whip[1]: Br3c3{nw .} ==> Pr4c3 ≠ ne, Pr4c3 ≠ o, Pr4c3 ≠ sw
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ o, Br4c2 ≠ nes, Br4c2 ≠ wne, Br4c2 ≠ ne, Br4c2 ≠ sw, Br4c2 ≠ w, Br4c2 ≠ s
whip[1]: Br3c3{nw .} ==> Pr3c4 ≠ ne, Pr3c4 ≠ sw, Pr3c4 ≠ o
whip[1]: Pr3c4{ew .} ==> Br2c4 ≠ sw, Br2c4 ≠ ne, Br2c4 ≠ e, Br2c4 ≠ n, Br2c4 ≠ o, Br2c4 ≠ swn, Br2c4 ≠ esw
whip[1]: Br3c3{nw .} ==> Pr3c3 ≠ ns, Pr3c3 ≠ ne, Pr3c3 ≠ ew, Pr3c3 ≠ sw
whip[1]: Pr3c3{se .} ==> Br2c2 ≠ e, Br2c2 ≠ s, Br2c2 ≠ ns, Br2c2 ≠ sw, Br2c2 ≠ swn, Br2c2 ≠ wne, Br2c2 ≠ ew, Br2c2 ≠ ne
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ wne, Br3c2 ≠ nes
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ ns, Pr4c3 ≠ se
whip[1]: Pr4c3{ew .} ==> Br4c3 ≠ w, Br4c3 ≠ swn, Br4c3 ≠ nw, Br4c3 ≠ esw, Br4c3 ≠ sw, Br4c3 ≠ ew
whip[1]: Br4c3{se .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0
whip[1]: Br4c2{swn .} ==> Hr4c2 ≠ 0
H-single: Hr4c2 = 1
whip[1]: Pr4c2{ew .} ==> Br3c1 ≠ se, Br3c1 ≠ nes, Br3c1 ≠ esw
whip[1]: Pr4c2{ne .} ==> Br4c1 ≠ ne, Br4c1 ≠ nes, Br4c1 ≠ wne
whip[1]: Br3c2{esw .} ==> Pr4c2 ≠ ew, Pr4c2 ≠ se
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr3c2 = 1
V-single: Vr4c2 = 0
whip[1]: Pr3c2{sw .} ==> Br2c2 ≠ esw
whip[1]: Pr3c2{sw .} ==> Br2c1 ≠ se, Br2c1 ≠ nes, Br2c1 ≠ esw
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ sw, Br2c3 ≠ swn, Br2c3 ≠ esw
whip[1]: Br3c2{swn .} ==> Pr3c3 ≠ o
whip[1]: Pr3c3{se .} ==> Br2c3 ≠ o, Br2c3 ≠ ne, Br2c3 ≠ e, Br2c3 ≠ n
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

Grid solved : computation-time 86.968351, nb-facts=<Fact-75195>

simplified to:

whip[1]: Pr4c4{o .} ==> Br4c3 ≠ nes, ne, wne
whip[1]: Pr4c4{o .} ==> Br3c3 ≠ sw, ne, ns, ew ;;; for Br3c3, there remains only se and nw
whip[1]: Br3c3{nw .} ==> Pr4c3 ≠ ne, o, sw
whip[1]: Pr4c3{ew .} ==> Br4c2 ≠ o, nes, wne, ne, sw, w, s
whip[1]: Br3c3{nw .} ==> Pr3c3 ≠ ns, ne, ew, sw
whip[1]: Pr3c3{o .} ==> Br3c2 ≠ wne, nes
whip[1]: Br3c2{esw .} ==> Pr4c3 ≠ ns, se
whip[1]: Pr4c3{ew .} ==> Br4c3 ≠ w, swn, nw, esw, sw, ew
whip[1]: Br4c3{se .} ==> Vr4c3 ≠ 1
V-single: Vr4c3 = 0
whip[1]: Br4c2{swn .} ==> Hr4c2 ≠ 0
H-single: Hr4c2 = 1
whip[1]: Br3c2{esw .} ==> Pr4c2 ≠ ew, se
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr3c2 = 1
V-single: Vr4c2 = 0



NEW VERSION:

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





---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

ZERO, REDUCIBLE TO SINGLES

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve 
5 5 
. . . . .
. . . . .
. . 0 . . 
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 0 . . . . . . . . . . . .)
328 csp-variables, 813 candidates, 2869 csp-links and 13594 links. Initial density = 1.02960512363744
0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
entering level W1 with <Fact-76278>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Pr4c3{o .} ==> Br4c2 <> swn
whip[1]: Pr4c3{o .} ==> Br4c2 <> esw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ew
whip[1]: Pr4c3{o .} ==> Br4c2 <> es
whip[1]: Pr4c3{o .} ==> Br4c2 <> nw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ns
whip[1]: Pr4c3{o .} ==> Br4c2 <> e
whip[1]: Pr4c3{o .} ==> Br4c2 <> n
whip[1]: Pr3c4{o .} ==> Br2c4 <> nes
whip[1]: Pr3c4{o .} ==> Br2c4 <> wne
whip[1]: Pr3c4{o .} ==> Br2c4 <> ew
whip[1]: Pr3c4{o .} ==> Br2c4 <> es
whip[1]: Pr3c4{o .} ==> Br2c4 <> nw
whip[1]: Pr3c4{o .} ==> Br2c4 <> ns
whip[1]: Pr3c4{o .} ==> Br2c4 <> w
whip[1]: Pr3c4{o .} ==> Br2c4 <> s
whip[1]: Pr3c3{o .} ==> Br2c2 <> wne
whip[1]: Pr3c3{o .} ==> Br2c2 <> swn
whip[1]: Pr3c3{o .} ==> Br2c2 <> sw
whip[1]: Pr3c3{o .} ==> Br2c2 <> ew
whip[1]: Pr3c3{o .} ==> Br2c2 <> ns
whip[1]: Pr3c3{o .} ==> Br2c2 <> ne
whip[1]: Pr3c3{o .} ==> Br2c2 <> s
whip[1]: Pr3c3{o .} ==> Br2c2 <> e


.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 0 . . . . . . . . . . . .)
328 csp-variables, 813 candidates, 2869 csp-links and 13594 links. Initial density = 1.02960512363744
V-single : Vr3c4 = 0
V-single : Vr3c3 = 0
H-single : Hr4c3 = 0
H-single : Hr3c3 = 0
entering level W1 with <Fact-76246>
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Pr4c3{o .} ==> Br4c2 <> swn
whip[1]: Pr4c3{o .} ==> Br4c2 <> esw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ew
whip[1]: Pr4c3{o .} ==> Br4c2 <> es
whip[1]: Pr4c3{o .} ==> Br4c2 <> nw
whip[1]: Pr4c3{o .} ==> Br4c2 <> ns
whip[1]: Pr4c3{o .} ==> Br4c2 <> e
whip[1]: Pr4c3{o .} ==> Br4c2 <> n
whip[1]: Pr3c4{o .} ==> Br2c4 <> nes
whip[1]: Pr3c4{o .} ==> Br2c4 <> wne
whip[1]: Pr3c4{o .} ==> Br2c4 <> ew
whip[1]: Pr3c4{o .} ==> Br2c4 <> es
whip[1]: Pr3c4{o .} ==> Br2c4 <> nw
whip[1]: Pr3c4{o .} ==> Br2c4 <> ns
whip[1]: Pr3c4{o .} ==> Br2c4 <> w
whip[1]: Pr3c4{o .} ==> Br2c4 <> s
whip[1]: Pr3c3{o .} ==> Br2c2 <> wne
whip[1]: Pr3c3{o .} ==> Br2c2 <> swn
whip[1]: Pr3c3{o .} ==> Br2c2 <> sw
whip[1]: Pr3c3{o .} ==> Br2c2 <> ew
whip[1]: Pr3c3{o .} ==> Br2c2 <> ns
whip[1]: Pr3c3{o .} ==> Br2c2 <> ne
whip[1]: Pr3c3{o .} ==> Br2c2 <> s
whip[1]: Pr3c3{o .} ==> Br2c2 <> e
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

ADJACENT-3-0, REDUCIBLE TO SINGLES

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


3 adjacent to 0

(solve 
5 5 
. . . . .
. . . . .
. 3 0 . . 
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 0 . . . . . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
adjacent-3-0-in-r3{c2 c3} ==> Vr4c3 = 1, Vr2c3 = 1, Vr3c2 = 1, Hr4c2 = 1, Hr3c2 = 1
P-single : Pr3c2 = se
H-single : Hr3c1 = 0
V-single : Vr2c2 = 0
P-single : Pr4c2 = ne
H-single : Hr4c1 = 0
V-single : Vr4c2 = 0
P-single : Pr3c3 = nw
P-single : Pr4c3 = sw
B-single : Br3c2 = swn
entering level W1 with <Fact-74590>
whip[1]: Pr5c3{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c3{ne .} ==> Br5c3 <> swn
whip[1]: Pr5c3{ne .} ==> Br5c3 <> nw
whip[1]: Pr5c3{ne .} ==> Br5c2 <> nes
whip[1]: Pr5c3{ne .} ==> Br5c2 <> wne
whip[1]: Pr5c3{ne .} ==> Br5c2 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Pr3c4{o .} ==> Br2c4 <> nes
whip[1]: Pr3c4{o .} ==> Br2c4 <> wne
whip[1]: Pr3c4{o .} ==> Br2c4 <> ew
whip[1]: Pr3c4{o .} ==> Br2c4 <> es
whip[1]: Pr3c4{o .} ==> Br2c4 <> nw
whip[1]: Pr3c4{o .} ==> Br2c4 <> ns
whip[1]: Pr3c4{o .} ==> Br2c4 <> w
whip[1]: Pr3c4{o .} ==> Br2c4 <> s
whip[1]: Pr2c3{ns .} ==> Br1c3 <> swn
whip[1]: Pr2c3{ns .} ==> Br1c3 <> esw
whip[1]: Pr2c3{ns .} ==> Br1c3 <> sw
whip[1]: Pr2c3{ns .} ==> Br1c2 <> nes
whip[1]: Pr2c3{ns .} ==> Br1c2 <> esw
whip[1]: Pr2c3{ns .} ==> Br1c2 <> es
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:       |   :   :   :
.   .———.   .........
:   | 3   0     :   :
.   .———.   .........
:       |   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 41.5241179999999, nb-facts=<Fact-74865>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 0 . . . . . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
V-single : Vr3c4 = 0
V-single : Vr3c3 = 0
H-single : Hr4c3 = 0
H-single : Hr3c3 = 0
B-single : Br3c2 = swn
H-single : Hr3c2 = 1
H-single : Hr4c2 = 1
V-single : Vr3c2 = 1
P-single : Pr3c2 = se
H-single : Hr3c1 = 0
V-single : Vr2c2 = 0
P-single : Pr3c3 = nw
V-single : Vr2c3 = 1
P-single : Pr4c2 = ne
H-single : Hr4c1 = 0
V-single : Vr4c2 = 0
P-single : Pr4c3 = sw
V-single : Vr4c3 = 1
entering level W1 with <Fact-74544>
whip[1]: Pr5c3{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c3{ne .} ==> Br5c3 <> swn
whip[1]: Pr5c3{ne .} ==> Br5c3 <> nw
whip[1]: Pr5c3{ne .} ==> Br5c2 <> nes
whip[1]: Pr5c3{ne .} ==> Br5c2 <> wne
whip[1]: Pr5c3{ne .} ==> Br5c2 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> nes
whip[1]: Pr4c4{o .} ==> Br4c4 <> esw
whip[1]: Pr4c4{o .} ==> Br4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c4 <> ew
whip[1]: Pr4c4{o .} ==> Br4c4 <> ns
whip[1]: Pr4c4{o .} ==> Br4c4 <> ne
whip[1]: Pr4c4{o .} ==> Br4c4 <> w
whip[1]: Pr4c4{o .} ==> Br4c4 <> n
whip[1]: Pr3c4{o .} ==> Br2c4 <> nes
whip[1]: Pr3c4{o .} ==> Br2c4 <> wne
whip[1]: Pr3c4{o .} ==> Br2c4 <> ew
whip[1]: Pr3c4{o .} ==> Br2c4 <> es
whip[1]: Pr3c4{o .} ==> Br2c4 <> nw
whip[1]: Pr3c4{o .} ==> Br2c4 <> ns
whip[1]: Pr3c4{o .} ==> Br2c4 <> w
whip[1]: Pr3c4{o .} ==> Br2c4 <> s
whip[1]: Pr2c3{ns .} ==> Br1c3 <> swn
whip[1]: Pr2c3{ns .} ==> Br1c3 <> esw
whip[1]: Pr2c3{ns .} ==> Br1c3 <> sw
whip[1]: Pr2c3{ns .} ==> Br1c2 <> nes
whip[1]: Pr2c3{ns .} ==> Br1c2 <> esw
whip[1]: Pr2c3{ns .} ==> Br1c2 <> es





(solve 
5 5 
. . . . .
. . . . .
. 0 3 . . 
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 3 . . . . . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
adjacent-3-0-r3{c3 c2} ==> Vr3c4 = 1, Vr4c3 = 1, Vr2c3 = 1, Hr4c3 = 1, Hr3c3 = 1
P-single : Pr3c4 = sw
H-single : Hr3c4 = 0
V-single : Vr2c4 = 0
P-single : Pr4c4 = nw
H-single : Hr4c4 = 0
V-single : Vr4c4 = 0
P-single : Pr3c3 = ne
P-single : Pr4c3 = se
B-single : Br3c3 = nes

.....................
:   :   :   :   :   :
.....................
:   :   |       :   :
.....   .———.   .....
:     0   3 |   :   :
.....   .———.   .....
:   :   |       :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 19.717448, nb-facts=<Fact-74597>




(solve 
5 5 
. . . . .
. . 3 . .
. . 0 . . 
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . 0 . . . . . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0
adjacent-3-0-c3{r2 r3} ==> Vr2c4 = 1, Vr2c3 = 1, Hr3c4 = 1, Hr3c2 = 1, Hr2c3 = 1
P-single : Pr2c3 = se
H-single : Hr2c2 = 0
V-single : Vr1c3 = 0
P-single : Pr2c4 = sw
H-single : Hr2c4 = 0
V-single : Vr1c4 = 0
P-single : Pr3c3 = nw
P-single : Pr3c4 = ne
B-single : Br2c3 = wne

.....................
:   :           :   :
.....   .———.   .....
:   :   | 3 |   :   :
.....———.   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 19.585938, nb-facts=<Fact-74595>



(solve 
5 5 
. . . . .
. . 0 . .
. . 3 . . 
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
adjacent-3-0-c3{r3 r2} ==> Vr3c4 = 1, Vr3c3 = 1, Hr4c3 = 1, Hr3c4 = 1, Hr3c2 = 1
P-single : Pr4c3 = ne
H-single : Hr4c2 = 0
V-single : Vr4c3 = 0
P-single : Pr4c4 = nw
H-single : Hr4c4 = 0
V-single : Vr4c4 = 0
P-single : Pr3c3 = sw
P-single : Pr3c4 = se
B-single : Br3c3 = esw

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....———.   .———.....
:   :   | 3 |   :   :
.....   .———.   .....
:   :           :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 19.859619, nb-facts=<Fact-74593>


everything is OK






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

EXTENDED ADJACENT-3-0, REDUCIBLE TO SINGLES

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


3 adjacent to 0

(progn
(bind ?*simulated-eliminations*
    (create$ 
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
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . 3 . . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13686 links. Initial density = 1.02644178846569
Simulated elimination of 1333
V-single: Vr3c3 = 0
B-single: Br3c2 = swn
H-single: Hr3c2 = 1
H-single: Hr4c2 = 1
V-single: Vr3c2 = 1
P-single: Pr3c2 = se
H-single: Hr3c1 = 0
V-single: Vr2c2 = 0
P-single: Pr4c2 = ne
H-single: Hr4c1 = 0
V-single: Vr4c2 = 0
entering level W1 with <Fact-76612>
whip[1]: Pr4c3{ew .} ==> Br4c3 <> wne
whip[1]: Pr4c3{ew .} ==> Br4c3 <> swn
whip[1]: Pr4c3{ew .} ==> Br4c3 <> se
whip[1]: Pr4c3{ew .} ==> Br4c3 <> nw
whip[1]: Pr3c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr3c3{nw .} ==> Br2c3 <> esw
whip[1]: Pr3c3{nw .} ==> Br2c3 <> sw
whip[1]: Pr3c3{nw .} ==> Br2c3 <> ne
whip[1]: Pr4c3{sw .} ==> Br4c3 <> s
whip[1]: Pr4c3{sw .} ==> Br4c3 <> e
whip[1]: Pr4c3{sw .} ==> Br4c3 <> o
whip[1]: Pr3c3{ew .} ==> Br2c3 <> e
whip[1]: Pr3c3{ew .} ==> Br2c3 <> n
whip[1]: Pr3c3{ew .} ==> Br2c3 <> o
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:       :   :   :   :
.   .———.............
:   | 3     :   :   :
.   .———.............
:       :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 46.937807, nb-facts=<Fact-76638>




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


DIAGONAL 3-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



(solve 
5 5 
. . . . .
. . . . .
. 3 . . . 
. . 0 . .
. . . . . 
)

with rule diagonal 3-0

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 0 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-0-in-{r3c2...r4c3} ==> Vr3c3 = 1, Hr4c2 = 1
P-single : Pr4c3 = nw
entering level W1 with <Fact-74573>
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
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c4{o .} ==> Br3c4 <> nes
whip[1]: Pr4c4{o .} ==> Br3c4 <> wne
whip[1]: Pr4c4{o .} ==> Br3c4 <> ew
whip[1]: Pr4c4{o .} ==> Br3c4 <> es
whip[1]: Pr4c4{o .} ==> Br3c4 <> nw
whip[1]: Pr4c4{o .} ==> Br3c4 <> ns
whip[1]: Pr4c4{o .} ==> Br3c4 <> w
whip[1]: Pr4c4{o .} ==> Br3c4 <> s
whip[1]: Br3c2{nes .} ==> Pr3c2 <> o
whip[1]: Br3c2{nes .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> es
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br2c1 <> o
whip[1]: Pr3c2{sw .} ==> Br2c1 <> n
whip[1]: Pr3c2{sw .} ==> Br2c1 <> w
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nw
whip[1]: Pr4c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr4c2{ne .} ==> Br3c1 <> esw
whip[1]: Pr4c2{ne .} ==> Br3c1 <> es
whip[1]: Pr3c3{ns .} ==> Br2c3 <> swn
whip[1]: Pr3c3{ns .} ==> Br2c3 <> esw
whip[1]: Pr3c3{ns .} ==> Br2c3 <> sw
whip[1]: Pr3c3{ns .} ==> Br2c2 <> nes
whip[1]: Pr3c3{ns .} ==> Br2c2 <> esw
whip[1]: Pr3c3{ns .} ==> Br2c2 <> es
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue


.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 46.8340800000001, nb-facts=<Fact-74854>

WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 0 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
V-single : Vr4c4 = 0
V-single : Vr4c3 = 0
H-single : Hr5c3 = 0
H-single : Hr4c3 = 0
entering level W1 with <Fact-74530>
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
whip[1]: Pr4c4{o .} ==> Br3c4 <> nes
whip[1]: Pr4c4{o .} ==> Br3c4 <> wne
whip[1]: Pr4c4{o .} ==> Br3c4 <> ew
whip[1]: Pr4c4{o .} ==> Br3c4 <> es
whip[1]: Pr4c4{o .} ==> Br3c4 <> nw
whip[1]: Pr4c4{o .} ==> Br3c4 <> ns
whip[1]: Pr4c4{o .} ==> Br3c4 <> w
whip[1]: Pr4c4{o .} ==> Br3c4 <> s
whip[1]: Br3c2{nes .} ==> Pr3c2 <> o
whip[1]: Br3c2{nes .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> es
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c3 <> o
whip[1]: Br3c2{nes .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{sw .} ==> Br2c3 <> sw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> swn
whip[1]: Br3c2{nes .} ==> Pr4c2 <> o
whip[1]: Br3c2{nes .} ==> Pr4c2 <> sw
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr4c3 <> o
P-single : Pr4c3 = nw
H-single : Hr4c2 = 1
V-single : Vr3c3 = 1
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Pr4c2{ew .} ==> Br3c1 <> es
whip[1]: Pr4c2{ew .} ==> Br3c1 <> esw
whip[1]: Pr4c2{ew .} ==> Br3c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br2c1 <> o
whip[1]: Pr3c2{sw .} ==> Br2c1 <> n
whip[1]: Pr3c2{sw .} ==> Br2c1 <> w
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 45.460153, nb-facts=<Fact-74774>





(solve 
5 5 
. . . . .
. . . . .
. . . 3 . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 3 . . . 0 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-0-{r3c4...r4c3} ==> Vr3c4 = 1, Hr4c4 = 1
P-single : Pr4c4 = ne

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   | 3 :   :
.........   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................



(solve 
5 5 
. . . . .
. . . . .
. . . 0 . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 . . . 3 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
diagonal-3-0-{r4c3...r3c4} ==> Vr4c4 = 1, Hr4c3 = 1
P-single : Pr4c4 = sw

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:   :   :     0     :
.........———.   .....
:   :   : 3 |   :   :
.....................
:   :   :   :   :   :
.....................




(solve 
5 5 
. . . . .
. . . . .
. 0 . . . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 . . . . . 3 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
diagonal-3-0-{r4c3...r3c2} ==> Vr4c3 = 1, Hr4c3 = 1
P-single : Pr4c3 = se

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0     :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................






without this rule, rule 3-in-r3c2-reached-by-two-no-borders-at-xx-corner applies instead

(solve 
5 5 
. . . . .
. . . . .
. 3 . . . 
. . 0 . .
. . . . . 
)
old version:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  new H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 0 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0 in cell r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0, 
3-in-r3c2-reached-by-two-no-borders-at-se-corner ==> Vr3c3 = 1, Hr4c2 = 1, 
P-single : Pr4c3 = nw
entering level B2I with <Fact-74550>
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = B2I

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 15.785109, nb-facts=<Fact-74576>


(solve 
5 5 
. . . . .
. . . . .
. 0 . . . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  new H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 . . . . . 3 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0 in cell r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0, 
3-in-r4c3-reached-by-two-no-borders-at-nw-corner ==> Vr4c3 = 1, Hr4c3 = 1, 
P-single : Pr4c3 = se
entering level B2I with <Fact-74550>
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = B2I
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0     :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 15.793781, nb-facts=<Fact-74576>




(solve 
5 5 
. . . . .
. . . . .
. . 0 . . 
. 3 . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  new H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 0 . . . 3 . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0 in cell r3c3 ==> Hr4c3 = 0, Hr3c3 = 0, Vr3c4 = 0, Vr3c3 = 0, 
3-in-r4c2-reached-by-two-no-borders-at-ne-corner ==> Vr4c3 = 1, Hr4c2 = 1, 
P-single : Pr4c3 = sw
entering level B2I with <Fact-74550>
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = B2I

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....———.   .........
:   : 3 |   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 15.7607509999999, nb-facts=<Fact-74576>




(solve 
5 5 
. . . . .
. . . . .
. . 3 . . 
. 0 . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  new H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 3 . . . 0 . . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0 in cell r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0, 
3-in-r3c3-reached-by-two-no-borders-at-sw-corner ==> Vr3c3 = 1, Hr4c3 = 1, 
P-single : Pr4c3 = ne
entering level B2I with <Fact-74550>
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = B2I
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   | 3 :   :   :
.....   .———.........
:     0     :   :   :
.....   .............
:   :   :   :   :   :
.....................

Grid solved : computation-time 16.361653, nb-facts=<Fact-74576>





without these two rules:

*****  SlitherRules 1.1 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . 3 . . . . . 0 . . . . . . .)
, 706 candidates303 csp-variables, 706 candidates, 2626 csp-links and 12840 links. Initial density = 1.28985594599482
V-single : Vr4c4 = 0
V-single : Vr4c3 = 0
H-single : Hr5c3 = 0
H-single : Hr4c3 = 0
entering level B2I with <Fact-72918>
entering level W1 with <Fact-72919>
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
whip[1]: Pr4c4{o .} ==> Br3c4 <> nes
whip[1]: Pr4c4{o .} ==> Br3c4 <> wne
whip[1]: Pr4c4{o .} ==> Br3c4 <> ew
whip[1]: Pr4c4{o .} ==> Br3c4 <> es
whip[1]: Pr4c4{o .} ==> Br3c4 <> nw
whip[1]: Pr4c4{o .} ==> Br3c4 <> ns
whip[1]: Pr4c4{o .} ==> Br3c4 <> w
whip[1]: Pr4c4{o .} ==> Br3c4 <> s
whip[1]: Br3c2{nes .} ==> Pr3c2 <> o
whip[1]: Br3c2{nes .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> es
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c3 <> o
whip[1]: Br3c2{nes .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{sw .} ==> Br2c3 <> sw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> swn
whip[1]: Br3c2{nes .} ==> Pr4c2 <> o
whip[1]: Br3c2{nes .} ==> Pr4c2 <> sw
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr4c3 <> o
P-single : Pr4c3 = nw
H-single : Hr4c2 = 1
V-single : Vr3c3 = 1
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Pr4c2{ew .} ==> Br3c1 <> es
whip[1]: Pr4c2{ew .} ==> Br3c1 <> esw
whip[1]: Pr4c2{ew .} ==> Br3c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br2c1 <> o
whip[1]: Pr3c2{sw .} ==> Br2c1 <> n
whip[1]: Pr3c2{sw .} ==> Br2c1 <> w
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nw



all OK


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


EXTENDED DIAGONAL 3-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 :   :   :   :
.........   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

==>


.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................





(solve 
5 5 
. . . . .
. . . . .
. 3 . . . 
. . 0 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 0 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
xtd-diagonal-3-0-{r3c2...se} ==> Vr3c3 = 1, Hr4c2 = 1
P-single : Pr4c3 = nw

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

WITHOUT THIS RULE:


(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 4 3)
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


*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . . . . . . . . .)
328 csp-variables, 817 candidates, 2875 csp-links and 13686 links. Initial density = 1.02644178846569
Simulated elimination of 1343
Simulated elimination of 1243
V-single : Vr4c3 = 0
H-single : Hr4c3 = 0
entering level W1 with <Fact-76603>
whip[1]: Br3c2{nes .} ==> Pr3c2 <> o
whip[1]: Br3c2{nes .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> es
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c3 <> o
whip[1]: Br3c2{nes .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{sw .} ==> Br2c3 <> sw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> swn
whip[1]: Br3c2{nes .} ==> Pr4c2 <> o
whip[1]: Br3c2{nes .} ==> Pr4c2 <> sw
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr4c3 <> o
P-single : Pr4c3 = nw
H-single : Hr4c2 = 1
V-single : Vr3c3 = 1
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Pr4c2{ew .} ==> Br3c1 <> es
whip[1]: Pr4c2{ew .} ==> Br3c1 <> esw
whip[1]: Pr4c2{ew .} ==> Br3c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c2 <> se
whip[1]: Pr3c2{sw .} ==> Br2c1 <> o
whip[1]: Pr3c2{sw .} ==> Br2c1 <> n
whip[1]: Pr3c2{sw .} ==> Br2c1 <> w
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 47.7196569999999, nb-facts=<Fact-76845>





(solve 
5 5 
. . . . .
. . . . .
. . . 3 . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 3 . . . 0 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
xtd-diagonal-3-0-{r3c4...sw} ==> Vr3c4 = 1, Hr4c4 = 1
P-single : Pr4c4 = ne

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   | 3 :   :
.........   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................



(solve 
5 5 
. . . . .
. . . . .
. . . 0 . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 . . . 3 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
xtd-diagonal-3-0-{r4c3...ne} ==> Vr4c4 = 1, Hr4c3 = 1
P-single : Pr4c4 = sw

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:   :   :     0     :
.........———.   .....
:   :   : 3 |   :   :
.....................
:   :   :   :   :   :
.....................




(solve 
5 5 
. . . . .
. . . . .
. 0 . . . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 . . . . . 3 . . . . . . .)
328 csp-variables, 798 candidates, 2764 csp-links and 13116 links. Initial density = 1.03112234790238
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
xtd-diagonal-3-0-{r4c3...nw} ==> Vr4c3 = 1, Hr4c3 = 1
P-single : Pr4c3 = se

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0     :   :   :
.....   .———.........
:   :   | 3 :   :   :
.....................
:   :   :   :   :   :
.....................







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-3-SYMMETRIC-CORNER, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-P-label 3 3 3) ; ns
        (value-row-col-to-P-label 6 3 3) ; ew
        (value-row-col-to-P-label 2 3 3) ; ne
        (value-row-col-to-P-label 7 3 3) ; sw
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
328 csp-variables, 817 candidates, 2875 csp-links and 14670 links. Initial density = 1.10024119807042
Simulated elimination of 7433
Simulated elimination of 6433
Simulated elimination of 3433
Simulated elimination of 2433
entering level W1 with <Fact-81663>
whip[1]: Br2c2{nes .} ==> Pr2c2 ≠ o, nw
whip[1]: Br2c2{nes .} ==> Pr2c3 ≠ o, ne
whip[1]: Br2c2{nes .} ==> Pr3c2 ≠ o, sw
whip[1]: Br2c2{nes .} ==> Pr3c3 ≠ o, se
P-single: Pr3c3 = nw
H-single: Hr3c2 = 1
H-single: Hr3c3 = 0
V-single: Vr2c3 = 1
V-single: Vr3c3 = 0
whip[1]: Br2c2{nes .} ==> Pr2c2 ≠ se
whip[1]: Pr2c2{sw .} ==> Br1c1 ≠ o, se, nw
whip[1]: Br1c1{wne .} ==> Nr1c1 ≠ 0, 2
whip[1]: Pr2c3{sw .} ==> Br1c2 ≠ se, nes, esw
whip[1]: Pr3c2{ew .} ==> Br2c1 ≠ se, nes, esw
whip[1]: Br2c3{wne .} ==> Nr2c3 ≠ 0
whip[1]: Br3c2{swn .} ==> Nr3c2 ≠ 0
whip[1]: Br3c3{o .} ==> Nr3c3 ≠ 3
whip[1]: Pr3c2{ne .} ==> Br3c1 ≠ ne, nes, wne
whip[1]: Pr2c3{sw .} ==> Br1c3 ≠ sw, swn, esw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

-----
-----
-----
-----
-----

.....................
:   :   :   :   :   :
.....................
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 58.540028, nb-facts=<Fact-81722>



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL 3s, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. . . . .
. 3 . . .
. . 3 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13208 links. Initial density = 1.02801672473
diagonal-3s-in-{r2c2...r3c3} ==> Vr3c4 = 1, Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr4c4 = 0, Vr1c2 = 0, Hr4c4 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr4c4 = nw
entering level W1 with <Fact-74939>
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Br3c3{nes .} ==> Pr3c3 <> o
whip[1]: Br3c3{nes .} ==> Pr3c3 <> nw
whip[1]: Br3c3{nes .} ==> Pr3c3 <> se
whip[1]: Pr4c3{ne .} ==> Br3c2 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr4c3{ne .} ==> Br3c2 <> esw
whip[1]: Pr4c3{ne .} ==> Br3c2 <> es
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c4{ns .} ==> Br2c4 <> swn
whip[1]: Pr3c4{ns .} ==> Br2c4 <> esw
whip[1]: Pr3c4{ns .} ==> Br2c4 <> sw
whip[1]: Pr3c4{ns .} ==> Br2c3 <> nes
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr3c4{ns .} ==> Br2c3 <> esw
whip[1]: Pr3c4{ns .} ==> Br2c3 <> es
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 43.136344, nb-facts=<Fact-75218>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 3 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13208 links. Initial density = 1.02801672473
entering level W1 with <Fact-74885>
whip[1]: Br3c3{nes .} ==> Pr3c3 <> o
whip[1]: Br3c3{nes .} ==> Pr3c3 <> nw
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
whip[1]: Br3c3{nes .} ==> Pr3c4 <> o
whip[1]: Br3c3{nes .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> esw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> swn
whip[1]: Br3c3{nes .} ==> Pr4c3 <> o
whip[1]: Br3c3{nes .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Br3c3{nes .} ==> Pr4c4 <> o
whip[1]: Br3c3{nes .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> swn
whip[1]: Pr4c4{sw .} ==> Br4c4 <> wne
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> swn
whip[1]: Br3c3{nes .} ==> Pr4c4 <> sw
whip[1]: Pr4c4{ne .} ==> Br4c3 <> ne
whip[1]: Pr4c4{ne .} ==> Br4c3 <> wne
whip[1]: Pr4c4{ne .} ==> Br4c3 <> nes
whip[1]: Pr4c4{ne .} ==> Br3c4 <> ne
whip[1]: Pr4c4{ne .} ==> Br3c4 <> e
whip[1]: Pr4c4{ne .} ==> Br3c4 <> n
whip[1]: Pr4c4{ne .} ==> Br3c4 <> o
whip[1]: Br3c3{nes .} ==> Pr4c4 <> ew
whip[1]: Pr4c4{ne .} ==> Vr3c4 <> 0
V-single : Vr3c4 = 1
whip[1]: Pr3c4{sw .} ==> Br2c3 <> es
whip[1]: Pr3c4{sw .} ==> Br2c3 <> esw
whip[1]: Pr3c4{sw .} ==> Br2c3 <> nes
whip[1]: Pr3c3{sw .} ==> Br3c3 <> wne
whip[1]: Br3c3{nes .} ==> Pr4c4 <> ns
whip[1]: Pr4c4{nw .} ==> Br4c3 <> e
whip[1]: Pr4c4{nw .} ==> Vr4c4 <> 1
V-single : Vr4c4 = 0
whip[1]: Br3c3{nes .} ==> Pr4c4 <> ne
P-single : Pr4c4 = nw
H-single : Hr4c3 = 1
H-single : Hr4c4 = 0
whip[1]: Pr4c3{ew .} ==> Br3c2 <> es
whip[1]: Pr4c3{ew .} ==> Br3c2 <> esw
whip[1]: Pr4c3{ew .} ==> Br3c2 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 56.746212, nb-facts=<Fact-75134>







(solve 
5 5 
. . . . .
. . . . .
. 3 . . . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 3 . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13208 links. Initial density = 1.02801672473
diagonal-3s-in-{r3c2...r4c3} ==> Vr4c4 = 1, Vr3c2 = 1, Hr5c3 = 1, Hr3c2 = 1, Vr5c4 = 0, Vr2c2 = 0, Hr5c4 = 0, Hr3c1 = 0
P-single : Pr3c2 = se
P-single : Pr5c4 = nw
entering level W1 with <Fact-74939>
whip[1]: Pr5c3{ne .} ==> Br5c2 <> nes
whip[1]: Pr5c3{ne .} ==> Br5c2 <> wne
whip[1]: Pr5c3{ne .} ==> Br5c2 <> ne
whip[1]: Br4c3{nes .} ==> Pr4c3 <> o
whip[1]: Br4c3{nes .} ==> Pr4c3 <> nw
whip[1]: Br4c3{nes .} ==> Pr4c3 <> se
whip[1]: Pr5c3{ne .} ==> Br4c2 <> nes
whip[1]: Pr4c2{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c2 <> swn
whip[1]: Pr5c3{ne .} ==> Br4c2 <> esw
whip[1]: Pr5c3{ne .} ==> Br4c2 <> es
whip[1]: Pr4c2{ne .} ==> Br4c2 <> nw
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c4{ns .} ==> Br3c4 <> swn
whip[1]: Pr4c4{ns .} ==> Br3c4 <> esw
whip[1]: Pr4c4{ns .} ==> Br3c4 <> sw
whip[1]: Pr4c4{ns .} ==> Br3c3 <> nes
whip[1]: Pr3c3{nw .} ==> Br3c3 <> wne
whip[1]: Pr3c3{nw .} ==> Br3c3 <> swn
whip[1]: Pr4c4{ns .} ==> Br3c3 <> esw
whip[1]: Pr4c4{ns .} ==> Br3c3 <> es
whip[1]: Pr3c3{nw .} ==> Br3c3 <> nw
whip[1]: Pr3c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr3c3{nw .} ==> Br2c3 <> esw
whip[1]: Pr3c3{nw .} ==> Br2c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue


.....................
:   :   :   :   :   :
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 3 |   :   :
.........———.   .....
:   :   :       :   :
.....................

Grid solved : computation-time 40.1338559999999, nb-facts=<Fact-75216>

WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 3 . . . . . 3 . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13208 links. Initial density = 1.02801672473
entering level W1 with <Fact-74885>
whip[1]: Br4c3{nes .} ==> Pr4c3 <> o
whip[1]: Br4c3{nes .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br3c2 <> esw
whip[1]: Br3c2{nes .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> swn
whip[1]: Pr3c3{sw .} ==> Br3c3 <> wne
whip[1]: Br3c2{nes .} ==> Pr3c3 <> ns
whip[1]: Br3c2{nes .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{o .} ==> Br3c1 <> ne
whip[1]: Pr3c2{o .} ==> Br3c1 <> wne
whip[1]: Pr3c2{o .} ==> Br3c1 <> nes
whip[1]: Br3c2{nes .} ==> Pr3c2 <> ns
whip[1]: Br3c2{nes .} ==> Hr3c2 <> 0
H-single : Hr3c2 = 1
whip[1]: Pr3c2{ew .} ==> Br2c1 <> es
whip[1]: Pr3c2{ew .} ==> Br2c1 <> esw
whip[1]: Pr3c2{ew .} ==> Br2c1 <> nes
whip[1]: Pr3c3{sw .} ==> Br2c3 <> sw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c3 <> swn
whip[1]: Pr4c3{sw .} ==> Br3c2 <> nes
whip[1]: Br3c2{swn .} ==> Pr4c2 <> ew
whip[1]: Br3c2{swn .} ==> Pr4c2 <> se
whip[1]: Pr4c2{sw .} ==> Br4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c2 <> swn
whip[1]: Pr4c2{sw .} ==> Br4c2 <> wne
whip[1]: Br3c2{swn .} ==> Pr3c2 <> ew
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
H-single : Hr3c1 = 0
whip[1]: Br3c2{swn .} ==> Pr3c2 <> ne
P-single : Pr3c2 = se
V-single : Vr2c2 = 0
V-single : Vr3c2 = 1
whip[1]: Pr4c2{ne .} ==> Br4c1 <> ne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> wne
whip[1]: Pr4c2{ne .} ==> Br4c1 <> nes
whip[1]: Br4c3{nes .} ==> Pr4c4 <> o
whip[1]: Br4c3{nes .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{sw .} ==> Br3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> esw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> swn
whip[1]: Br4c3{nes .} ==> Pr5c3 <> o
whip[1]: Br4c3{nes .} ==> Pr5c3 <> sw
whip[1]: Pr5c3{ne .} ==> Br5c2 <> ne
whip[1]: Pr5c3{ne .} ==> Br5c2 <> wne
whip[1]: Pr5c3{ne .} ==> Br5c2 <> nes
whip[1]: Br4c3{nes .} ==> Pr5c4 <> o
whip[1]: Br4c3{nes .} ==> Pr5c4 <> se
whip[1]: Pr5c4{sw .} ==> Br5c4 <> nw
whip[1]: Pr5c4{sw .} ==> Br5c4 <> swn
whip[1]: Pr5c4{sw .} ==> Br5c4 <> wne
whip[1]: Br3c2{wne .} ==> Pr4c3 <> se
whip[1]: Pr4c3{sw .} ==> Br4c3 <> swn
whip[1]: Br4c3{nes .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br4c4 <> ne
whip[1]: Pr5c4{ne .} ==> Br4c4 <> e
whip[1]: Pr5c4{ne .} ==> Br4c4 <> n
whip[1]: Pr5c4{ne .} ==> Br4c4 <> o
whip[1]: Br4c3{nes .} ==> Pr5c4 <> ew
whip[1]: Pr5c4{ne .} ==> Vr4c4 <> 0
V-single : Vr4c4 = 1
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Pr4c4{sw .} ==> Br3c3 <> esw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> nes
whip[1]: Pr4c3{sw .} ==> Br4c3 <> wne
whip[1]: Br4c3{nes .} ==> Pr5c4 <> ns
whip[1]: Pr5c4{nw .} ==> Br5c3 <> e
whip[1]: Pr5c4{nw .} ==> Vr5c4 <> 1
V-single : Vr5c4 = 0
whip[1]: Br4c3{nes .} ==> Pr5c4 <> ne
P-single : Pr5c4 = nw
H-single : Hr5c3 = 1
H-single : Hr5c4 = 0
whip[1]: Pr5c3{ew .} ==> Br4c2 <> es
whip[1]: Pr5c3{ew .} ==> Br4c2 <> esw
whip[1]: Pr5c3{ew .} ==> Br4c2 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue






(solve 
5 5 
. . . . .
. . . . .
. . . 3 . 
. . 3 . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 3 . . . 3 . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13208 links. Initial density = 1.02801672473
diagonal-3s-{r3c4...r4c3} ==> Vr3c5 = 1, Vr4c3 = 1, Hr5c3 = 1, Hr3c4 = 1, Vr2c5 = 0, Vr5c3 = 0, Hr5c2 = 0, Hr3c5 = 0
P-single : Pr3c5 = sw
P-single : Pr5c3 = ne

.....................
:   :   :   :   :   :
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   | 3 :   :   :
.....   .———.........
:   :       :   :   :
.....................




all OK


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL 3-2-3, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




---------------------------------------------------------------------------------

a diagonal of 2s is a conveyor of open corners

---------------------------------------------------------------------------------


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

V-single : Vr6c7 = 0
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o, nw
;;; RS1
;;; RS2
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es, esw, nes
;;; RS3
;;; RS4
whip[1]: Br6c6{sw .} ==> Pr7c6 <> o, sw
whip[1]: Pr7c6{ne .} ==> Br7c5 <> ne, wne, nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]







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

a diagonal of 2s is a conveyor of non-closed corners

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
Simulated elimination of 4477
entering level W1 with <Fact-154017>
whip[1]: Pr7c7{o .} ==> Br6c6 <> es
whip[1]: Br6c6{sw .} ==> Pr6c6 <> nw
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es, esw, nes
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o







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
Simulated elimination of 4477
entering level W1 with <Fact-148081>
whip[1]: Pr7c7{o .} ==> Br6c6 <> se
whip[1]: Br6c6{sw .} ==> Pr6c6 <> nw
whip[1]: Pr6c6{sw .} ==> Br5c5 <> se
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> se
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> se
whip[1]: Br2c2{sw .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> se
whip[1]: Br2c2{sw .} ==> Pr2c2 <> o
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

(solve 
5 5 
. . . . .
. 3 . . .
. . 2 . . 
. . . 3 .
. . . . . 
)



*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . . 3 . . . . . .)
328 csp-variables, 789 candidates, 2674 csp-links and 12792 links. Initial density = 1.02873907085368
diagonal-3-2-3-in-{r2c2...r4c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr5c5 = 0, Vr1c2 = 0, Hr5c5 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr5c5 = nw
entering level W1 with <Fact-73457>
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Br4c4{nes .} ==> Pr4c4 <> o
whip[1]: Br4c4{nes .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{nes .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr5c4{ne .} ==> Br4c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br4c3 <> esw
whip[1]: Pr5c4{ne .} ==> Br4c3 <> es
whip[1]: Pr4c5{ns .} ==> Br3c5 <> swn
whip[1]: Pr4c5{ns .} ==> Br3c5 <> esw
whip[1]: Pr4c5{ns .} ==> Br3c5 <> sw
whip[1]: Pr4c5{ns .} ==> Br3c4 <> nes
whip[1]: Pr4c5{ns .} ==> Br3c4 <> esw
whip[1]: Pr4c5{ns .} ==> Br3c4 <> es
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 42.7444069999999, nb-facts=<Fact-73742>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . . 3 . . . . . .)
328 csp-variables, 789 candidates, 2674 csp-links and 12792 links. Initial density = 1.02873907085368
entering level W1 with <Fact-73401>
whip[1]: Br4c4{nes .} ==> Pr4c4 <> o
whip[1]: Br4c4{nes .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
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
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{nes .} ==> Pr4c5 <> o
whip[1]: Br4c4{nes .} ==> Pr4c5 <> ne
whip[1]: Pr4c5{sw .} ==> Br3c5 <> sw
whip[1]: Pr4c5{sw .} ==> Br3c5 <> esw
whip[1]: Pr4c5{sw .} ==> Br3c5 <> swn
whip[1]: Br4c4{nes .} ==> Pr5c4 <> o
whip[1]: Br4c4{nes .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Br4c4{nes .} ==> Pr5c5 <> o
whip[1]: Br4c4{nes .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> swn
whip[1]: Br4c4{nes .} ==> Pr5c5 <> sw
whip[1]: Pr5c5{ne .} ==> Br5c4 <> ne
whip[1]: Pr5c5{ne .} ==> Br5c4 <> wne
whip[1]: Pr5c5{ne .} ==> Br5c4 <> nes
whip[1]: Pr5c5{ne .} ==> Br4c5 <> ne
whip[1]: Pr5c5{ne .} ==> Br4c5 <> e
whip[1]: Pr5c5{ne .} ==> Br4c5 <> n
whip[1]: Pr5c5{ne .} ==> Br4c5 <> o
whip[1]: Br4c4{nes .} ==> Pr5c5 <> ew
whip[1]: Pr5c5{ne .} ==> Vr4c5 <> 0
V-single : Vr4c5 = 1
whip[1]: Pr4c5{sw .} ==> Br3c4 <> es
whip[1]: Pr4c5{sw .} ==> Br3c4 <> esw
whip[1]: Pr4c5{sw .} ==> Br3c4 <> nes
whip[1]: Pr4c4{sw .} ==> Br4c4 <> wne
whip[1]: Br4c4{nes .} ==> Pr5c5 <> ns
whip[1]: Pr5c5{nw .} ==> Br5c4 <> e
whip[1]: Pr5c5{nw .} ==> Vr5c5 <> 1
V-single : Vr5c5 = 0
whip[1]: Br4c4{nes .} ==> Pr5c5 <> ne
P-single : Pr5c5 = nw
H-single : Hr5c4 = 1
H-single : Hr5c5 = 0
whip[1]: Pr5c4{ew .} ==> Br4c3 <> es
whip[1]: Pr5c4{ew .} ==> Br4c3 <> esw
whip[1]: Pr5c4{ew .} ==> Br4c3 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]


.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 44.723532, nb-facts=<Fact-73437>





(solve 
5 5 
. . . . .
. . . 3 .
. . 2 . . 
. 3 . . .
. . . . . 
)


*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . 2 . . . 3 . . . . . . . .)
328 csp-variables, 789 candidates, 2674 csp-links and 12792 links. Initial density = 1.02873907085368
diagonal-3-2-3-{r2c4...r4c2} ==> Vr2c5 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr2c4 = 1, Vr1c5 = 0, Vr5c2 = 0, Hr5c1 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
P-single : Pr5c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

Grid solved : computation-time 16.599673, nb-facts=<Fact-73472>




(solve 
5 5 
. . . . .
. 3 . 3 .
. . 2 . . 
. 3 . 3 .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . 3 . . . 2 . . . 3 . 3 . . . . . .)
328 csp-variables, 759 candidates, 2464 csp-links and 11836 links. Initial density = 1.02864135214715
diagonal-3-2-3-{r2c2...r4c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr5c5 = 0, Vr1c2 = 0, Hr5c5 = 0, Hr2c1 = 0
diagonal-3-2-3-{r2c4...r4c2} ==> Vr2c5 = 1, Vr4c2 = 1, Hr5c2 = 1, Hr2c4 = 1, Vr1c5 = 0, Vr5c2 = 0, Hr5c1 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
P-single : Pr5c2 = ne
P-single : Pr2c2 = se
P-single : Pr5c5 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:       :   :       :
.   .———.....———.   .
:   | 3 :   : 3 |   :
.....................
:   :   : 2 :   :   :
.....................
:   | 3 :   : 3 |   :
.   .———.....———.   .
:       :   :       :
.....................

Grid solved : computation-time 19.96852, nb-facts=<Fact-70058>




(solve 
7 7  
. . . . . . .
. . . . . . .
. . 3 . . . .
. . . 2 . . .
. . . . 3 . .
. . . . . . .
. . . . . . .
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . . . 3 . . . . . . . 2 . . . . . . . 3 . . . . . . . . . . . . . . . .)
580 csp-variables, 1583 candidates, 5890 csp-links and 28312 links. Initial density = 0.565266385178169
diagonal-3-2-3-{r3c3...r5c5} ==> Vr5c6 = 1, Vr3c3 = 1, Hr6c5 = 1, Hr3c3 = 1, Vr6c6 = 0, Vr2c3 = 0, Hr6c6 = 0, Hr3c2 = 0
P-single : Pr3c3 = se
P-single : Pr6c6 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.............................
:   :   :   :   :   :   :   :
.............................
:   :       :   :   :   :   :
.....   .———.................
:   :   | 3 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 3 |   :   :
.................———.   .....
:   :   :   :   :       :   :
.............................
:   :   :   :   :   :   :   :
.............................

Grid solved : computation-time 70.679135, nb-facts=<Fact-150680>




everything is OK


---------------------------------------------------------------------------------

DIAGONAL  3-2-2-3, REDUCIBLE TO W1


(solve 
6 6  
. . . . . . 
. 3 . . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
)



*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1141 candidates, 4051 csp-links and 19466 links. Initial density = 0.748266371450098
diagonal-3-2-2-3-in-{r2c2...r5c5} ==> Vr5c6 = 1, Vr2c2 = 1, Hr6c5 = 1, Hr2c2 = 1, Vr6c6 = 0, Vr1c2 = 0, Hr6c6 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr6c6 = nw
entering level W1 with <Fact-107381>
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Br5c5{nes .} ==> Pr5c5 <> o
whip[1]: Br5c5{nes .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{nes .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr6c5{ne .} ==> Br5c4 <> nes
whip[1]: Pr6c5{ne .} ==> Br5c4 <> esw
whip[1]: Pr6c5{ne .} ==> Br5c4 <> es
whip[1]: Pr5c6{ns .} ==> Br4c6 <> swn
whip[1]: Pr5c6{ns .} ==> Br4c6 <> esw
whip[1]: Pr5c6{ns .} ==> Br4c6 <> sw
whip[1]: Pr5c6{ns .} ==> Br4c5 <> nes
whip[1]: Pr5c6{ns .} ==> Br4c5 <> esw
whip[1]: Pr5c6{ns .} ==> Br4c5 <> es
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue


.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

Grid solved : computation-time 101.393393, nb-facts=<Fact-107755>



WITHOUT THIS RULE:

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1141 candidates, 4051 csp-links and 19466 links. Initial density = 0.748266371450098
entering level W1 with <Fact-107321>
whip[1]: Br5c5{nes .} ==> Pr5c5 <> o
whip[1]: Br5c5{nes .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
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
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{nes .} ==> Pr5c6 <> o
whip[1]: Br5c5{nes .} ==> Pr5c6 <> ne
whip[1]: Pr5c6{sw .} ==> Br4c6 <> sw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> esw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> swn
whip[1]: Br5c5{nes .} ==> Pr6c5 <> o
whip[1]: Br5c5{nes .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Br5c5{nes .} ==> Pr6c6 <> o
whip[1]: Br5c5{nes .} ==> Pr6c6 <> se
whip[1]: Pr6c6{sw .} ==> Br6c6 <> nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c5 <> swn
whip[1]: Br5c5{nes .} ==> Pr6c6 <> sw
whip[1]: Pr6c6{ne .} ==> Br6c5 <> ne
whip[1]: Pr6c6{ne .} ==> Br6c5 <> wne
whip[1]: Pr6c6{ne .} ==> Br6c5 <> nes
whip[1]: Pr6c6{ne .} ==> Br5c6 <> ne
whip[1]: Pr6c6{ne .} ==> Br5c6 <> e
whip[1]: Pr6c6{ne .} ==> Br5c6 <> n
whip[1]: Pr6c6{ne .} ==> Br5c6 <> o
whip[1]: Br5c5{nes .} ==> Pr6c6 <> ew
whip[1]: Pr6c6{ne .} ==> Vr5c6 <> 0
V-single : Vr5c6 = 1
whip[1]: Pr5c6{sw .} ==> Br4c5 <> es
whip[1]: Pr5c6{sw .} ==> Br4c5 <> esw
whip[1]: Pr5c6{sw .} ==> Br4c5 <> nes
whip[1]: Pr5c5{sw .} ==> Br5c5 <> wne
whip[1]: Br5c5{nes .} ==> Pr6c6 <> ns
whip[1]: Pr6c6{nw .} ==> Br6c5 <> e
whip[1]: Pr6c6{nw .} ==> Vr6c6 <> 1
V-single : Vr6c6 = 0
whip[1]: Br5c5{nes .} ==> Pr6c6 <> ne
P-single : Pr6c6 = nw
H-single : Hr6c5 = 1
H-single : Hr6c6 = 0
whip[1]: Pr6c5{ew .} ==> Br5c4 <> es
whip[1]: Pr6c5{ew .} ==> Br5c4 <> esw
whip[1]: Pr6c5{ew .} ==> Br5c4 <> nes
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
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

Grid solved : computation-time 104.3654, nb-facts=<Fact-107368>






(solve 
6 6  
. . . . . . 
. . . . 3 .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . 2 . . . . 2 . . . . 3 . . . . . . . . . .)
445 csp-variables, 1141 candidates, 4051 csp-links and 19466 links. Initial density = 0.748266371450098
diagonal-3-2-2-3-{r2c5...r5c2} ==> Vr2c6 = 1, Vr5c2 = 1, Hr6c2 = 1, Hr2c5 = 1, Vr1c6 = 0, Vr6c2 = 0, Hr6c1 = 0, Hr2c6 = 0
P-single : Pr2c6 = sw
P-single : Pr6c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

Grid solved : computation-time 39.499169, nb-facts=<Fact-107407>




everything is OK



---------------------------------------------------------------------------------

DIAGONAL  3-2-2-2-3, REDUCIBLE TO W1

(solve 
7 7 
. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . . . . . 2 . . . . . . . 2 . . . . . . . 2 . . . . . . . 3 . . . . . . . .)
580 csp-variables, 1557 candidates, 5698 csp-links and 27480 links. Initial density = 0.567137712924301
diagonal-3-2-2-2-3-{r2c2...r6c6} ==> Vr6c7 = 1, Vr2c2 = 1, Hr7c6 = 1, Hr2c2 = 1, Vr7c7 = 0, Vr1c2 = 0, Hr7c7 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr7c7 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.............................
:       :   :   :   :   :   :
.   .———.....................
:   | 3 :   :   :   :   :   :
.............................
:   :   : 2 :   :   :   :   :
.............................
:   :   :   : 2 :   :   :   :
.............................
:   :   :   :   : 2 :   :   :
.............................
:   :   :   :   :   : 3 |   :
.....................———.   .
:   :   :   :   :   :       :
.............................

Grid solved : computation-time 85.453162, nb-facts=<Fact-147722>


OK

---------------------------------------------------------------------------------

DIAGONAL 3s SEPARATED BY FOUR 2, REDUCIBLE TO W1

(solve 
8 8  
. . . . . . . .
. 3 . . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 3 . . . . . . . . 2 . . . . . . . . 2 . . . . . . . . 2 . . . . . . . . 2 . . . . . . . . 3 . . . . . . . . .)
733 csp-variables, 2037 candidates, 7615 csp-links and 36834 links. Initial density = 0.444068620501084
diagonal-3-2-2-2-2-3-{r2c2...r7c7} ==> Vr7c8 = 1, Vr2c2 = 1, Hr8c7 = 1, Hr2c2 = 1, Vr8c8 = 0, Vr1c2 = 0, Hr8c8 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr8c8 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.................................
:       :   :   :   :   :   :   :
.   .———.........................
:   | 3 :   :   :   :   :   :   :
.................................
:   :   : 2 :   :   :   :   :   :
.................................
:   :   :   : 2 :   :   :   :   :
.................................
:   :   :   :   : 2 :   :   :   :
.................................
:   :   :   :   :   : 2 :   :   :
.................................
:   :   :   :   :   :   : 3 |   :
.........................———.   .
:   :   :   :   :   :   :       :
.................................

Grid solved : computation-time 174.33568, nb-facts=<Fact-194417>
OK


---------------------------------------------------------------------------------

DIAGONAL  3-2-2-2-2-3, REDUCIBLE TO W1

(solve 
9 9   
. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 3 . . . . . . . . . .)
904 csp-variables, 2581 candidates, 9802 csp-links and 47528 links. Initial density = 0.356871472808148
diagonal-3-2-2-2-2-2-3-{r2c2...r8c8} ==> Vr8c9 = 1, Vr2c2 = 1, Hr9c8 = 1, Hr2c2 = 1, Vr9c9 = 0, Vr1c2 = 0, Hr9c9 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr9c9 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................................
:       :   :   :   :   :   :   :   :
.   .———.............................
:   | 3 :   :   :   :   :   :   :   :
.....................................
:   :   : 2 :   :   :   :   :   :   :
.....................................
:   :   :   : 2 :   :   :   :   :   :
.....................................
:   :   :   :   : 2 :   :   :   :   :
.....................................
:   :   :   :   :   : 2 :   :   :   :
.....................................
:   :   :   :   :   :   : 2 :   :   :
.....................................
:   :   :   :   :   :   :   : 3 |   :
.............................———.   .
:   :   :   :   :   :   :   :       :
.....................................

Grid solved : computation-time 365.692318, nb-facts=<Fact-247492>


with only W1:

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 2 . . . . . . . . . 3 . . . . . . . . . .)
904 csp-variables, 2581 candidates, 9802 csp-links and 47528 links. Initial density = 0.356871472808148
entering level W1 with <Fact-247337>
whip[1]: Br8c8{nes .} ==> Pr8c8 <> o
whip[1]: Br8c8{nes .} ==> Pr8c8 <> nw
whip[1]: Pr8c8{sw .} ==> Br7c7 <> es
whip[1]: Br7c7{sw .} ==> Pr7c7 <> nw
whip[1]: Pr7c7{sw .} ==> Br6c6 <> es
whip[1]: Br6c6{sw .} ==> Pr6c6 <> nw
whip[1]: Pr6c6{sw .} ==> Br5c5 <> es
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
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
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Br6c6{sw .} ==> Pr6c6 <> o
whip[1]: Br7c7{sw .} ==> Pr7c7 <> o
whip[1]: Br8c8{nes .} ==> Pr8c9 <> o
whip[1]: Br8c8{nes .} ==> Pr8c9 <> ne
whip[1]: Pr8c9{sw .} ==> Br7c9 <> sw
whip[1]: Pr8c9{sw .} ==> Br7c9 <> esw
whip[1]: Pr8c9{sw .} ==> Br7c9 <> swn
whip[1]: Br8c8{nes .} ==> Pr9c8 <> o
whip[1]: Br8c8{nes .} ==> Pr9c8 <> sw
whip[1]: Pr9c8{ne .} ==> Br9c7 <> ne
whip[1]: Pr9c8{ne .} ==> Br9c7 <> wne
whip[1]: Pr9c8{ne .} ==> Br9c7 <> nes
whip[1]: Br8c8{nes .} ==> Pr9c9 <> o
whip[1]: Br8c8{nes .} ==> Pr9c9 <> se
whip[1]: Pr9c9{sw .} ==> Br9c9 <> nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> se
whip[1]: Pr6c6{sw .} ==> Br6c6 <> nw
whip[1]: Br6c6{sw .} ==> Pr7c7 <> se
whip[1]: Pr7c7{sw .} ==> Br7c7 <> nw
whip[1]: Br7c7{sw .} ==> Pr8c8 <> se
whip[1]: Pr8c8{sw .} ==> Br8c8 <> swn
whip[1]: Br8c8{nes .} ==> Pr9c9 <> sw
whip[1]: Pr9c9{ne .} ==> Br9c8 <> ne
whip[1]: Pr9c9{ne .} ==> Br9c8 <> wne
whip[1]: Pr9c9{ne .} ==> Br9c8 <> nes
whip[1]: Pr9c9{ne .} ==> Br8c9 <> ne
whip[1]: Pr9c9{ne .} ==> Br8c9 <> e
whip[1]: Pr9c9{ne .} ==> Br8c9 <> n
whip[1]: Pr9c9{ne .} ==> Br8c9 <> o
whip[1]: Br8c8{nes .} ==> Pr9c9 <> ew
whip[1]: Pr9c9{ne .} ==> Vr8c9 <> 0
V-single : Vr8c9 = 1
whip[1]: Pr8c9{sw .} ==> Br7c8 <> es
whip[1]: Pr8c9{sw .} ==> Br7c8 <> esw
whip[1]: Pr8c9{sw .} ==> Br7c8 <> nes
whip[1]: Pr8c8{sw .} ==> Br8c8 <> wne
whip[1]: Br8c8{nes .} ==> Pr9c9 <> ns
whip[1]: Pr9c9{nw .} ==> Br9c8 <> e
whip[1]: Pr9c9{nw .} ==> Vr9c9 <> 1
V-single : Vr9c9 = 0
whip[1]: Br8c8{nes .} ==> Pr9c9 <> ne
P-single : Pr9c9 = nw
H-single : Hr9c8 = 1
H-single : Hr9c9 = 0
whip[1]: Pr9c8{ew .} ==> Br8c7 <> es
whip[1]: Pr9c8{ew .} ==> Br8c7 <> esw
whip[1]: Pr9c8{ew .} ==> Br8c7 <> nes
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue



















---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL 3-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


---------------------------------------------------------------------------------


Preamble 1:

---------------------------------------------------------------------------------


(solve
5 5 
. . . . .
. 3 . . .
. . 2 . . 
. . . . .
. . . . . 
)
gives nothing interesting in W1

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
entering level W1 with <Fact-109037>
whip[1]: Br2c2{nes .} ==> Pr2c2 <> o
whip[1]: Br2c2{nes .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es
whip[1]: Br2c2{nes .} ==> Pr2c3 <> o
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Br2c2{nes .} ==> Pr3c2 <> o
whip[1]: Br2c2{nes .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr3c3 <> o
whip[1]: Br2c2{nes .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br5c5 <> swn
whip[1]: Pr5c5{sw .} ==> Br5c5 <> wne
whip[1]: Br4c4{sw .} ==> Pr5c5 <> o
whip[1]: Br3c3{sw .} ==> Pr4c4 <> o
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue



gives nothing interesting in gW
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: gW   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 3 . . . . 2 . . . . .)
229 csp-variables, 503 candidates, 1576 csp-links and 7520 links. Initial density = 1.4890735269657
entering level W1 with <Fact-59522>
whip[1]: Br2c2{nes .} ==> Pr2c2 <> o
whip[1]: Br2c2{nes .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es
whip[1]: Br2c2{nes .} ==> Pr2c3 <> o
whip[1]: Br2c2{nes .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Br2c2{nes .} ==> Pr3c2 <> o
whip[1]: Br2c2{nes .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr3c3 <> o
whip[1]: Br2c2{nes .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> o
entering level BC2 with <Fact-59676>
entering level W2 with <Fact-59781>
initialising g-candidates and effective g-links
 starting with <Fact-61504>
434 g-candidates and 5250 glinks
entering level gBC2 with <Fact-70303>
entering level gW2 with <Fact-73986>
entering level BC3 with <Fact-75609>
entering level W3 with <Fact-75682>
whip[3]: Pr2c3{sw nw} - Br2c2{esw swn} - Pr2c2{ne .} ==> Br1c2 <> esw
whip[3]: Pr3c2{ew nw} - Br2c2{esw wne} - Pr2c2{ne .} ==> Br2c1 <> nes
whip[3]: Pr3c3{sw ne} - Br2c2{esw wne} - Pr2c3{ns .} ==> Br2c3 <> swn
whip[3]: Pr3c3{ew sw} - Br2c2{esw swn} - Pr3c2{ns .} ==> Br3c2 <> wne
entering level gBC3 with <Fact-79238>
entering level gW3 with <Fact-86647>
entering level BC4 with <Fact-114643>
entering level W4 with <Fact-114692>
entering level gBC4 with <Fact-121531>
entering level gW4 with <Fact-175773>
entering level BC5 with <Fact-316557>
entering level W5 with <Fact-316582>
entering level gBC5 with <Fact-329957>




---------------------------------------------------------------------------------


Preamble 2:

---------------------------------------------------------------------------------

(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 5)
    )
)
(solve
5 5 
. . . . .
. . . . .
. . . . .
. . . 2 .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
328 csp-variables, 819 candidates, 2884 csp-links and 13748 links. Initial density = 1.02605897226924
Simulated elimination of 1334
V-single : Vr4c5 = 0
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o, nw
;;; RS1
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es, esw, nes
;;; RS3
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o, sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne, wne, nes





(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 5)
    )
)
(solve
5 5 
. . . . .
. . . . .
. . 2 . .
. . . 2 .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)
V-single : Vr4c5 = 0
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o, nw
;;; RS1
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es, esw, nes
;;; RS2
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
;;; RS3
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o, sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne, wne, nes





(progn
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 5)
    )
)
(solve
5 5 
. . . . .
. 2 . . .
. . 2 . .
. . . 2 .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
)

V-single : Vr4c5 = 0
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o, nw
;;; RS1
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Br2c2{sw .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es
whip[1]: Br2c2{sw .} ==> Pr2c2 <> o
;;; RS2
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
;;; RS3
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o, sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne, wne, nes




---------------------------------------------------------------------------------


Preamble 3:

---------------------------------------------------------------------------------


(solve 
5 5 
. . . . .
. . . . .
. . 2 0 .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . . . . . . 2 0 . . . . . . . . . . .)
328 csp-variables, 800 candidates, 2773 csp-links and 13178 links. Initial density = 1.0308197747184
V-single: Vr3c5 = 0
V-single: Vr3c4 = 0
H-single: Hr4c4 = 0
H-single: Hr3c4 = 0
entering level W1 with <Fact-74762>
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Pr4c4{o .} ==> Br4c3 <> swn
whip[1]: Pr4c4{o .} ==> Br4c3 <> esw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ew
whip[1]: Pr4c4{o .} ==> Br4c3 <> se
whip[1]: Pr4c4{o .} ==> Br4c3 <> nw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ns
whip[1]: Pr4c4{o .} ==> Br4c3 <> e
whip[1]: Pr4c4{o .} ==> Br4c3 <> n
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> se
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br3c3{sw .} ==> Pr4c3 <> o
whip[1]: Br3c3{sw .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> se
whip[1]: Pr3c5{o .} ==> Br2c5 <> nw
whip[1]: Pr3c5{o .} ==> Br2c5 <> ns
whip[1]: Pr3c5{o .} ==> Br2c5 <> w
whip[1]: Pr3c5{o .} ==> Br2c5 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> wne
whip[1]: Pr3c4{o .} ==> Br2c3 <> swn
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ne
whip[1]: Pr3c4{o .} ==> Br2c3 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> e
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:   :   : 2   0     :
.............   .....
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 37.341675, nb-facts=<Fact-74788>











---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


DIAGONAL-3-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


Notice that the current version of the rule doesn't include the resulting assertion of the line away from the 2


(solve 
5 5 
. . . . .
. 3 . . .
. . 2 0 . 
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 0 . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
diagonal-3-2+0-in-{r2c2...r3c3+r3c4} ==> Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr4c4 = sw
V-single : Vr4c4 = 1
entering level W1 with <Fact-73097>
whip[1]: Pr5c4{ne .} ==> Br5c4 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c4 <> swn
whip[1]: Pr5c4{ne .} ==> Br5c4 <> nw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Br4c3{nes .} ==> Pr5c3 <> ne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr4c3{ne .} ==> Br3c2 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr4c3{ne .} ==> Br3c2 <> esw
whip[1]: Pr4c3{ne .} ==> Br3c2 <> es
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> es
whip[1]: Pr3c5{o .} ==> Br2c5 <> nw
whip[1]: Pr3c5{o .} ==> Br2c5 <> ns
whip[1]: Pr3c5{o .} ==> Br2c5 <> w
whip[1]: Pr3c5{o .} ==> Br2c5 <> s
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ne
whip[1]: Pr3c4{o .} ==> Br2c3 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> e
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.............   .....
:   :   : 2   0     :
.........———.   .....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 41.5579320000002, nb-facts=<Fact-73378>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 . . . . . 2 0 . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
V-single: Vr3c5 = 0
V-single: Vr3c4 = 0
H-single: Hr4c4 = 0
H-single: Hr3c4 = 0
entering level W1 with <Fact-73046>
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Pr4c4{o .} ==> Br4c3 <> swn
whip[1]: Pr4c4{o .} ==> Br4c3 <> esw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ew
whip[1]: Pr4c4{o .} ==> Br4c3 <> se
whip[1]: Pr4c4{o .} ==> Br4c3 <> nw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ns
whip[1]: Pr4c4{o .} ==> Br4c3 <> e
whip[1]: Pr4c4{o .} ==> Br4c3 <> n
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
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
whip[1]: Br3c3{sw .} ==> Pr4c3 <> o
whip[1]: Br3c3{sw .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> se
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
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> o
P-single: Pr4c4 = sw
H-single: Hr4c3 = 1
V-single: Vr4c4 = 1
whip[1]: Pr5c4{ne .} ==> Br5c4 <> nw
whip[1]: Pr5c4{ne .} ==> Br5c4 <> swn
whip[1]: Pr5c4{ne .} ==> Br5c4 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr4c3{ew .} ==> Br3c2 <> se
whip[1]: Pr4c3{ew .} ==> Br3c2 <> esw
whip[1]: Pr4c3{ew .} ==> Br3c2 <> nes
whip[1]: Br4c3{nes .} ==> Pr5c3 <> ne
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.............   .....
:   :   : 2   0     :
.........———.   .....
:   :   :   |   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 44.851164, nb-facts=<Fact-73080>





(solve 
5 5 
. . . . .
. 3 . . .
. . 2 . . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . 0 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-2+0-{r2c2...r3c3+r4c3} ==> Vr3c4 = 1, Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr4c4 = ne
H-single : Hr4c4 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 |   :   :
.........   .———.....
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 19.4010529999998, nb-facts=<Fact-73116>





(solve 
5 5 
. . . . .
. . . 3 .
. 0 2 . . 
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . 0 2 . . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
diagonal-3-2+0-{r2c4...r3c3+r3c2} ==> Vr2c5 = 1, Hr4c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
P-single : Pr4c3 = se
V-single : Vr4c3 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....   .............
:     0   2 :   :   :
.....   .———.........
:   :   |   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 19.7674750000001, nb-facts=<Fact-73116>



(solve 
5 5 
. . . . .
. . . 3 .
. . 2 . . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . 2 . . . . 0 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
diagonal-3-2+0-{r2c4...r3c3+r4c3} ==> Vr2c5 = 1, Vr3c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
P-single : Pr4c3 = nw
H-single : Hr4c2 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   | 2 :   :   :
.....———.   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 19.9560669999998, nb-facts=<Fact-73116>




(solve 
5 5 
. . . . .
. . . . .
. . 2 0 . 
. 3 . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 2 0 . . 3 . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
diagonal-3-2+0-{r4c2...r3c3+r3c4} ==> Vr4c2 = 1, Hr5c2 = 1, Hr3c3 = 1, Vr5c2 = 0, Hr5c1 = 0
P-single : Pr3c4 = nw
V-single : Vr2c4 = 1
P-single : Pr5c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:   :   :   :   :   :
.....................
:   :   :   |   :   :
.........———.   .....
:   :   : 2   0     :
.............   .....
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

Grid solved : computation-time 19.930758, nb-facts=<Fact-73116>





(solve 
5 5 
. . . . .
. . 0 . .
. . 2 . . 
. 3 . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . . 2 . . . 3 . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
diagonal-3-2+0-{r4c2...r3c3+r2c3} ==> Vr3c4 = 1, Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = ne
P-single : Pr3c4 = se
H-single : Hr3c4 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .———.....
:   :   : 2 |   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................



(solve 
5 5 
. . . . .
. . . . .
. 0 2 . . 
. . . 3 .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 2 . . . . . 3 . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
diagonal-3-2+0-{r4c4...r3c3+r3c2} ==> Vr4c5 = 1, Hr5c4 = 1, Hr3c3 = 1, Vr5c5 = 0, Hr5c5 = 0
P-single : Pr3c3 = ne
V-single : Vr2c3 = 1
P-single : Pr5c5 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.....................
:   :   :   :   :   :
.....................
:   :   |   :   :   :
.....   .———.........
:     0   2 :   :   :
.....   .............
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 19.8962739999999, nb-facts=<Fact-73116>




(solve 
5 5 
. . . . .
. . 0 . .
. . 2 . . 
. . . 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . . 2 . . . . . 3 . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
diagonal-3-2+0-{r4c4...r3c3+r2c3} ==> Vr4c5 = 1, Vr3c3 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
P-single : Pr5c5 = nw
P-single : Pr3c3 = sw
H-single : Hr3c2 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.....———.   .........
:   :   | 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 19.776865, nb-facts=<Fact-73116>







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL 3-2-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

Notice that the current version of the rule doesn't include the resulting assertion of the line away from the 2


(solve 
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 0 . 
. . . . . .
. . . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 0 . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
diagonal-3-2-2+0-in-{r2c2...r4c4+r4c5} ==> Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr5c5 = sw
V-single : Vr5c5 = 1
entering level W1 with <Fact-107020>
whip[1]: Pr6c5{ne .} ==> Br6c5 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c5 <> swn
whip[1]: Pr6c5{ne .} ==> Br6c5 <> nw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr5c6{o .} ==> Br5c6 <> nes
whip[1]: Pr5c6{o .} ==> Br5c6 <> esw
whip[1]: Pr5c6{o .} ==> Br5c6 <> sw
whip[1]: Pr5c6{o .} ==> Br5c6 <> ew
whip[1]: Pr5c6{o .} ==> Br5c6 <> ns
whip[1]: Pr5c6{o .} ==> Br5c6 <> ne
whip[1]: Pr5c6{o .} ==> Br5c6 <> w
whip[1]: Pr5c6{o .} ==> Br5c6 <> n
whip[1]: Br5c4{nes .} ==> Pr6c4 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr5c4{ne .} ==> Br4c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br4c3 <> esw
whip[1]: Pr5c4{ne .} ==> Br4c3 <> es
whip[1]: Pr4c6{o .} ==> Br3c6 <> nes
whip[1]: Pr4c6{o .} ==> Br3c6 <> wne
whip[1]: Pr4c6{o .} ==> Br3c6 <> ew
whip[1]: Pr4c6{o .} ==> Br3c6 <> es
whip[1]: Pr4c6{o .} ==> Br3c6 <> nw
whip[1]: Pr4c6{o .} ==> Br3c6 <> ns
whip[1]: Pr4c6{o .} ==> Br3c6 <> w
whip[1]: Pr4c6{o .} ==> Br3c6 <> s
whip[1]: Pr4c5{o .} ==> Br3c4 <> wne
whip[1]: Pr4c5{o .} ==> Br3c4 <> swn
whip[1]: Pr4c5{o .} ==> Br3c4 <> sw
whip[1]: Pr4c5{o .} ==> Br3c4 <> ew
whip[1]: Pr4c5{o .} ==> Br3c4 <> ns
whip[1]: Pr4c5{o .} ==> Br3c4 <> ne
whip[1]: Pr4c5{o .} ==> Br3c4 <> s
whip[1]: Pr4c5{o .} ==> Br3c4 <> e
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue


.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.................   .....
:   :   :   : 2   0     :
.............———.   .....
:   :   :   :   |   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 97.240272, nb-facts=<Fact-107390>

WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 0 . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
V-single : Vr4c6 = 0
V-single : Vr4c5 = 0
H-single : Hr5c5 = 0
H-single : Hr4c5 = 0
entering level W1 with <Fact-106966>
whip[1]: Pr5c6{o .} ==> Br5c6 <> nes
whip[1]: Pr5c6{o .} ==> Br5c6 <> esw
whip[1]: Pr5c6{o .} ==> Br5c6 <> sw
whip[1]: Pr5c6{o .} ==> Br5c6 <> ew
whip[1]: Pr5c6{o .} ==> Br5c6 <> ns
whip[1]: Pr5c6{o .} ==> Br5c6 <> ne
whip[1]: Pr5c6{o .} ==> Br5c6 <> w
whip[1]: Pr5c6{o .} ==> Br5c6 <> n
whip[1]: Pr5c5{o .} ==> Br5c4 <> swn
whip[1]: Pr5c5{o .} ==> Br5c4 <> esw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ew
whip[1]: Pr5c5{o .} ==> Br5c4 <> es
whip[1]: Pr5c5{o .} ==> Br5c4 <> nw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ns
whip[1]: Pr5c5{o .} ==> Br5c4 <> e
whip[1]: Pr5c5{o .} ==> Br5c4 <> n
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
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
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o
whip[1]: Br4c4{sw .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr4c6{o .} ==> Br3c6 <> nes
whip[1]: Pr4c6{o .} ==> Br3c6 <> wne
whip[1]: Pr4c6{o .} ==> Br3c6 <> ew
whip[1]: Pr4c6{o .} ==> Br3c6 <> es
whip[1]: Pr4c6{o .} ==> Br3c6 <> nw
whip[1]: Pr4c6{o .} ==> Br3c6 <> ns
whip[1]: Pr4c6{o .} ==> Br3c6 <> w
whip[1]: Pr4c6{o .} ==> Br3c6 <> s
whip[1]: Pr4c5{o .} ==> Br3c4 <> wne
whip[1]: Pr4c5{o .} ==> Br3c4 <> swn
whip[1]: Pr4c5{o .} ==> Br3c4 <> sw
whip[1]: Pr4c5{o .} ==> Br3c4 <> ew
whip[1]: Pr4c5{o .} ==> Br3c4 <> ns
whip[1]: Pr4c5{o .} ==> Br3c4 <> ne
whip[1]: Pr4c5{o .} ==> Br3c4 <> s
whip[1]: Pr4c5{o .} ==> Br3c4 <> e
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> o
P-single : Pr5c5 = sw
H-single : Hr5c4 = 1
V-single : Vr5c5 = 1
whip[1]: Pr6c5{ne .} ==> Br6c5 <> nw
whip[1]: Pr6c5{ne .} ==> Br6c5 <> swn
whip[1]: Pr6c5{ne .} ==> Br6c5 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr5c4{ew .} ==> Br4c3 <> es
whip[1]: Pr5c4{ew .} ==> Br4c3 <> esw
whip[1]: Pr5c4{ew .} ==> Br4c3 <> nes
whip[1]: Br5c4{nes .} ==> Pr6c4 <> ne
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue





(solve 
6 6 
. . . . . .
. 3 . . . .
. . 2 . . .
. . . 2 . . 
. . . 0 . .
. . . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . 0 . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
diagonal-3-2-2+0-{r2c2...r4c4+r5c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
P-single : Pr5c5 = ne
H-single : Hr5c5 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 |   :   :
.............   .———.....
:   :   :     0     :   :
.............   .........
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 44.0805849999999, nb-facts=<Fact-107050>




(solve 
6 6 
. . . . . .
. . . . 3 .
. . . 2 . .
. 0 2 . . . 
. . . . . .
. . . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . 2 . . . 0 2 . . . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
diagonal-3-2-2+0-{r2c5...r4c3+r4c2} ==> Vr2c6 = 1, Hr5c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
P-single : Pr2c6 = sw
P-single : Pr5c3 = se
V-single : Vr5c3 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.....   .................
:     0   2 :   :   :   :
.....   .———.............
:   :   |   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 45.151253, nb-facts=<Fact-107050>





(solve 
6 6 
. . . . . .
. . . . 3 .
. . . 2 . .
. . 2 . . . 
. . 0 . . .
. . . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . 2 . . . . 2 . . . . . 0 . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r5c3 ==> Hr6c3 = 0, Hr5c3 = 0, Vr5c4 = 0, Vr5c3 = 0
diagonal-3-2-2+0-{r2c5...r4c3+r5c3} ==> Vr2c6 = 1, Vr4c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
P-single : Pr2c6 = sw
P-single : Pr5c3 = nw
H-single : Hr5c2 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   | 2 :   :   :   :
.....———.   .............
:   :     0     :   :   :
.........   .............
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 45.6806960000001, nb-facts=<Fact-107050>






(solve 
6 6 
. . . . . .
. . . . . .
. . . 2 0 .
. . 2 . . .
. 3 . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . . 2 0 . . . 2 . . . . 3 . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r3c5 ==> Hr4c5 = 0, Hr3c5 = 0, Vr3c6 = 0, Vr3c5 = 0
diagonal-3-2-2+0-{r5c2...r3c4+r3c5} ==> Vr5c2 = 1, Hr6c2 = 1, Hr3c4 = 1, Vr6c2 = 0, Hr6c1 = 0
P-single : Pr3c5 = nw
V-single : Vr2c5 = 1
P-single : Pr6c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   |   :   :
.............———.   .....
:   :   :   : 2   0     :
.................   .....
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

Grid solved : computation-time 45.704964, nb-facts=<Fact-107050>





(solve 
6 6 
. . . . . .
. . . 0 . .
. . . 2 . .
. . 2 . . .
. 3 . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 0 . . . . . 2 . . . . 2 . . . . 3 . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
diagonal-3-2-2+0-{r5c2...r3c4+r2c4} ==> Vr3c5 = 1, Vr5c2 = 1, Hr6c2 = 1, Vr6c2 = 0, Hr6c1 = 0
P-single : Pr6c2 = ne
P-single : Pr3c5 = se
H-single : Hr3c5 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .———.....
:   :   :   : 2 |   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

Grid solved : computation-time 45.1509080000001, nb-facts=<Fact-107050>





(solve 
6 6 
. . . . . .
. . . . . .
. 0 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
diagonal-3-2-2+0-{r5c5...r3c3+r3c2} ==> Vr5c6 = 1, Hr6c5 = 1, Hr3c3 = 1, Vr6c6 = 0, Hr6c6 = 0
P-single : Pr3c3 = ne
V-single : Vr2c3 = 1
P-single : Pr6c6 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.........................
:   :   :   :   :   :   :
.........................
:   :   |   :   :   :   :
.....   .———.............
:     0   2 :   :   :   :
.....   .................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

Grid solved : computation-time 45.283269, nb-facts=<Fact-107050>





(solve 
6 6 
. . . . . .
. . 0 . . .
. . 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 0 . . . . . 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
diagonal-3-2-2+0-{r5c5...r3c3+r2c3} ==> Vr5c6 = 1, Vr3c3 = 1, Hr6c5 = 1, Vr6c6 = 0, Hr6c6 = 0
P-single : Pr6c6 = nw
P-single : Pr3c3 = sw
H-single : Hr3c2 = 1
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.........................
:   :   :   :   :   :   :
.........   .............
:   :     0     :   :   :
.....———.   .............
:   :   | 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

Grid solved : computation-time 44.9896549999999, nb-facts=<Fact-107050>




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

EXTENDED DIAGONAL 3-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

Preamble: diagonal-closed-3...2-non-closed

.....................        .....................
:       :   :   :   :        :       :   :   :   :
.   .———.............        .   .———.............
:   | 3 :   :   :   :        :   | 3 :   :   :   :
.....................        .....................
:   :   : 2     :   :   =>   :   :   : 2     :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 3 4)
        (value-row-col-to-H-label 0 2 2)
        (value-row-col-to-V-label 0 2 2)
        (value-row-col-to-H-label 1 2 1)
        (value-row-col-to-V-label 1 1 2)
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
(bind ?*simulated-eliminations*
    (create$ 
    )
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1334
Simulated elimination of 322
Simulated elimination of 1312
Simulated elimination of 222
Simulated elimination of 1221
V-single: Vr3c4 = 0
V-single: Vr2c2 = 1
V-single: Vr1c2 = 0
H-single: Hr2c2 = 1
H-single: Hr2c1 = 0
P-single: Pr2c2 = se
entering level W1 with <Fact-75123>
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o, nw
whip[1]: Br3c3{sw .} ==> Pr4c3 <> o, sw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne, wne, nes
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne, swn, nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes, wne, ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne, swn, nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr4c4{sw .} ==> Br4c3 <> e, se, ew, esw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw, swn, wne
whip[1]: Br3c3{sw .} ==> Pr4c4 <> o
whip[1]: Pr4c4{sw .} ==> Br4c3 <> o, s
whip[1]: Br4c3{nes .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{ew .} ==> Br3c2 <> se, esw, nes
whip[1]: Pr4c4{sw .} ==> Br4c3 <> w
whip[1]: Pr4c4{sw .} ==> Br4c4 <> o, e, s
whip[1]: Pr4c4{sw .} ==> Br4c3 <> sw
whip[1]: Br4c3{nes .} ==> Hr4c3 <> 0
H-single: Hr4c3 = 1

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2     :   :
.........———.........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................








.....................        .....................
:       :   :   :   :        :       :   :   :   :
.   .———.............        .   .———.............
:   | 3 :   :   :   :        :   | 3 :   :   :   :
.....................        .....................
:   :   : 2 :   :   :   =>   :   :   : 2 :   :   :
.....................        .....................
:   :   :   : 2     :        :   :   :   : 2     :
.....................        .............———.....
:   :   :   :   :   :        :   :   :   :   :   :
.....................        .....................



(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 4 5)
        (value-row-col-to-H-label 0 2 2)
        (value-row-col-to-V-label 0 2 2)
        (value-row-col-to-H-label 1 2 1)
        (value-row-col-to-V-label 1 1 2)
    )
)

(solve
5 5 
. . . . .
. 3 . . .
. . 2 . .
. . . 2 .
. . . . . 
)
(bind ?*simulated-eliminations*
    (create$ 
    )
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 . . . . . 2 . . . . . 2 . . . . . .)
328 csp-variables, 791 candidates, 2683 csp-links and 12854 links. Initial density = 1.02850101617885
Simulated elimination of 1345
Simulated elimination of 322
Simulated elimination of 1312
Simulated elimination of 222
Simulated elimination of 1221
V-single: Vr4c5 = 0
V-single: Vr2c2 = 1
V-single: Vr1c2 = 0
H-single: Hr2c2 = 1
H-single: Hr2c1 = 0
P-single: Pr2c2 = se
entering level W1 with <Fact-73639>
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o, nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> se
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw, o
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o, sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne, wne, nes
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne, swn, nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes, wne, ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne, swn, nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr5c5{sw .} ==> Br5c4 <> e
whip[1]: Pr5c5{sw .} ==> Br5c4 <> se, ew, esw
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br5c4 <> o, s
whip[1]: Br5c4{nes .} ==> Pr5c4 <> nw
whip[1]: Pr5c4{ew .} ==> Br4c3 <> se, esw, nes
whip[1]: Pr5c5{sw .} ==> Br5c4 <> w
whip[1]: Pr5c5{sw .} ==> Br5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br5c4 <> sw
whip[1]: Br5c4{nes .} ==> Hr5c4 <> 0
H-single: Hr5c4 = 1

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 :   :   :
.....................
:   :   :   : 2     :
.............———.....
:   :   :   :   :   :
.....................

Grid solved : computation-time 49.115714, nb-facts=<Fact-73666>






TODO
(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-V-label 1 5 6)
        (value-row-col-to-H-label 0 2 2)
        (value-row-col-to-V-label 0 2 2)
        (value-row-col-to-H-label 1 2 1)
        (value-row-col-to-V-label 1 1 2)
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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . 2 . . . . . . .)
445 csp-variables, 1143 candidates, 4060 csp-links and 19528 links. Initial density = 0.748023835024125
Simulated elimination of 1356
Simulated elimination of 322
Simulated elimination of 1312
Simulated elimination of 222
Simulated elimination of 1221
V-single: Vr5c6 = 0
V-single: Vr2c2 = 1
V-single: Vr1c2 = 0
H-single: Hr2c2 = 1
H-single: Hr2c1 = 0
P-single: Pr2c2 = se
entering level W1 with <Fact-107559>
whip[1]: Br5c5{sw .} ==> Pr5c5 <> o
whip[1]: Br5c5{sw .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> se
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> se
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> o
whip[1]: Br5c5{sw .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Br5c5{sw .} ==> Pr6c6 <> se <<<<<<<<<<<<<<< key
whip[1]: Pr6c6{sw .} ==> Br6c5 <> e
whip[1]: Pr6c6{sw .} ==> Br6c5 <> se <<<<<<<<<<<<<<< key
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
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
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

Grid solved : computation-time 111.888851, nb-facts=<Fact-107597>





-----------------------------------------


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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1334
V-single : Vr3c4 = 0
xtd-diagonal-3-2+0-in-{r2c2...r3c3+r3c4} ==> Vr2c2 = 1, Hr4c3 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
entering level W1 with <Fact-75163>
whip[1]: Pr4c4{ew .} ==> Br4c4 <> wne
whip[1]: Pr4c4{ew .} ==> Br4c4 <> swn
whip[1]: Pr4c4{ew .} ==> Br4c4 <> es
whip[1]: Pr4c4{ew .} ==> Br4c4 <> nw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr4c3{ne .} ==> Br3c2 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr4c3{ne .} ==> Br3c2 <> esw
whip[1]: Pr4c3{ne .} ==> Br3c2 <> es
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> s
whip[1]: Pr4c4{sw .} ==> Br4c4 <> e
whip[1]: Pr4c4{sw .} ==> Br4c4 <> o
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue


.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2     :   :
.........———.........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 45.911683, nb-facts=<Fact-75448>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1334
V-single : Vr3c4 = 0
entering level W1 with <Fact-75118>
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
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
whip[1]: Br3c3{sw .} ==> Pr4c3 <> o
whip[1]: Br3c3{sw .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c3 <> e
whip[1]: Pr4c4{sw .} ==> Br4c3 <> es
whip[1]: Pr4c4{sw .} ==> Br4c3 <> ew
whip[1]: Pr4c4{sw .} ==> Br4c3 <> esw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> swn
whip[1]: Pr4c4{sw .} ==> Br4c4 <> wne
whip[1]: Br3c3{sw .} ==> Pr4c4 <> o
whip[1]: Pr4c4{sw .} ==> Br4c3 <> o
whip[1]: Pr4c4{sw .} ==> Br4c3 <> s
whip[1]: Br4c3{nes .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{ew .} ==> Br3c2 <> es
whip[1]: Pr4c3{ew .} ==> Br3c2 <> esw
whip[1]: Pr4c3{ew .} ==> Br3c2 <> nes
whip[1]: Pr4c4{sw .} ==> Br4c3 <> w
whip[1]: Pr4c4{sw .} ==> Br4c4 <> o
whip[1]: Pr4c4{sw .} ==> Br4c4 <> e
whip[1]: Pr4c4{sw .} ==> Br4c4 <> s
whip[1]: Pr4c4{sw .} ==> Br4c3 <> sw
whip[1]: Br4c3{nes .} ==> Hr4c3 <> 0
H-single : Hr4c3 = 1
whip[1]: Pr4c4{sw .} ==> Br4c4 <> es
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2     :   :
.........———.........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 50.84216, nb-facts=<Fact-75369>





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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1243
H-single : Hr4c3 = 0
xtd-diagonal-3-2+0-{r2c2...r3c3+r4c3} ==> Vr3c4 = 1, Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:       :   :   :   :
.   .———.............
:   | 3 :   :   :   :
.....................
:   :   : 2 |   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 16.229057, nb-facts=<Fact-75187>






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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1333
V-single : Vr3c3 = 0
xtd-diagonal-3-2+0-{r2c4...r3c3+r3c2} ==> Vr2c5 = 1, Hr4c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :     2 :   :   :
.........———.........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 16.885504, nb-facts=<Fact-75187>





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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . 2 . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1243
H-single : Hr4c3 = 0
xtd-diagonal-3-2+0-{r2c4...r3c3+r4c3} ==> Vr2c5 = 1, Vr3c3 = 1, Hr2c4 = 1, Vr1c5 = 0, Hr2c5 = 0
P-single : Pr2c5 = sw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :       :
.............———.   .
:   :   :   : 3 |   :
.....................
:   :   | 2 :   :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 17.058248, nb-facts=<Fact-75187>





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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 2 . . . 3 . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1334
V-single : Vr3c4 = 0
xtd-diagonal-3-2+0-{r4c2...r3c3+r3c4} ==> Vr4c2 = 1, Hr5c2 = 1, Hr3c3 = 1, Vr5c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = ne
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........———.........
:   :   : 2     :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

Grid solved : computation-time 17.256951, nb-facts=<Fact-75187>






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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 2 . . . 3 . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1233
H-single : Hr3c3 = 0
xtd-diagonal-3-2+0-{r4c2...r3c3+r2c3} ==> Vr3c4 = 1, Vr4c2 = 1, Hr5c2 = 1, Vr5c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = ne
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   : 2 |   :   :
.....................
:   | 3 :   :   :   :
.   .———.............
:       :   :   :   :
.....................

Grid solved : computation-time 16.989419, nb-facts=<Fact-75187>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 2 . . . . . 3 . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1333
V-single : Vr3c3 = 0
xtd-diagonal-3-2+0-{r4c4...r3c3+r3c2} ==> Vr4c5 = 1, Hr5c4 = 1, Hr3c3 = 1, Vr5c5 = 0, Hr5c5 = 0
P-single : Pr5c5 = nw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........———.........
:   :     2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 17.34938, nb-facts=<Fact-75187>





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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . 2 . . . . . 3 . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1233
H-single : Hr3c3 = 0
xtd-diagonal-3-2+0-{r4c4...r3c3+r2c3} ==> Vr4c5 = 1, Vr3c3 = 1, Hr5c4 = 1, Vr5c5 = 0, Hr5c5 = 0
P-single : Pr5c5 = nw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.........   .........
:   :   | 2 :   :   :
.....................
:   :   :   : 3 |   :
.............———.   .
:   :   :   :       :
.....................

Grid solved : computation-time 16.89825, nb-facts=<Fact-75187>



(bind ?*simulated-eliminations*
    (create$ 
    )
)



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

EXTENDED DIAGONAL 3-2-2+0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1345
V-single : Vr4c5 = 0
xtd-diagonal-3-2-2+0-in-{r2c2...r4c4+r4c5} ==> Vr2c2 = 1, Hr5c4 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
entering level W1 with <Fact-109086>
whip[1]: Pr5c5{ew .} ==> Br5c5 <> wne
whip[1]: Pr5c5{ew .} ==> Br5c5 <> swn
whip[1]: Pr5c5{ew .} ==> Br5c5 <> es
whip[1]: Pr5c5{ew .} ==> Br5c5 <> nw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr3c3 <> se
whip[1]: Pr5c4{ne .} ==> Br4c3 <> nes
whip[1]: Pr5c4{ne .} ==> Br4c3 <> esw
whip[1]: Pr5c4{ne .} ==> Br4c3 <> es
whip[1]: Pr3c2{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c2 <> swn
whip[1]: Pr3c2{ne .} ==> Br3c2 <> nw
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> wne
whip[1]: Pr2c3{nw .} ==> Br2c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br2c3 <> nw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> swn
whip[1]: Pr2c3{nw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{nw .} ==> Br1c3 <> sw
whip[1]: Pr5c5{sw .} ==> Br5c5 <> s
whip[1]: Pr5c5{sw .} ==> Br5c5 <> e
whip[1]: Pr5c5{sw .} ==> Br5c5 <> o
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2     :   :
.............———.........
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 121.113411, nb-facts=<Fact-109460>



WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1345
V-single : Vr4c5 = 0
entering level W1 with <Fact-109038>
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
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
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr5c4 <> o
whip[1]: Br4c4{sw .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Br2c2{wne .} ==> Pr3c3 <> se
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Br3c3{sw .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Br4c4{sw .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c4 <> e
whip[1]: Pr5c5{sw .} ==> Br5c4 <> es
whip[1]: Pr5c5{sw .} ==> Br5c4 <> ew
whip[1]: Pr5c5{sw .} ==> Br5c4 <> esw
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br5c5 <> swn
whip[1]: Pr5c5{sw .} ==> Br5c5 <> wne
whip[1]: Br4c4{sw .} ==> Pr5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br5c4 <> o
whip[1]: Pr5c5{sw .} ==> Br5c4 <> s
whip[1]: Br5c4{nes .} ==> Pr5c4 <> nw
whip[1]: Pr5c4{ew .} ==> Br4c3 <> es
whip[1]: Pr5c4{ew .} ==> Br4c3 <> esw
whip[1]: Pr5c4{ew .} ==> Br4c3 <> nes
whip[1]: Pr5c5{sw .} ==> Br5c4 <> w
whip[1]: Pr5c5{sw .} ==> Br5c5 <> o
whip[1]: Pr5c5{sw .} ==> Br5c5 <> e
whip[1]: Pr5c5{sw .} ==> Br5c5 <> s
whip[1]: Pr5c5{sw .} ==> Br5c4 <> sw
whip[1]: Br5c4{nes .} ==> Hr5c4 <> 0
H-single : Hr5c4 = 1
whip[1]: Pr5c5{sw .} ==> Br5c5 <> es
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2     :   :
.............———.........
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 119.256629, nb-facts=<Fact-109378>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . . 2 . . . . . . 2 . . . . . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1254
H-single : Hr5c4 = 0
xtd-diagonal-3-2-2+0-{r2c2...r4c4+r5c4} ==> Vr4c5 = 1, Vr2c2 = 1, Hr2c2 = 1, Vr1c2 = 0, Hr2c1 = 0
P-single : Pr2c2 = se
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:       :   :   :   :   :
.   .———.................
:   | 3 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   :   :   : 2 |   :   :
.............   .........
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 37.2298019999999, nb-facts=<Fact-109121>






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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . 2 . . . . 2 . . . . . . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1343
V-single : Vr4c3 = 0
xtd-diagonal-3-2-2+0-{r2c5...r4c3+r4c2} ==> Vr2c6 = 1, Hr5c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
P-single : Pr2c6 = sw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :     2 :   :   :   :
.........———.............
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 38.0430530000001, nb-facts=<Fact-109121>





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
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . 2 . . . . 2 . . . . . . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1253
H-single : Hr5c3 = 0
xtd-diagonal-3-2-2+0-{r2c5...r4c3+r5c3} ==> Vr2c6 = 1, Vr4c3 = 1, Hr2c5 = 1, Vr1c6 = 0, Hr2c6 = 0
P-single : Pr2c6 = sw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:   :   :   :   :       :
.................———.   .
:   :   :   :   : 3 |   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   | 2 :   :   :   :
.........   .............
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 37.0144409999999, nb-facts=<Fact-109121>






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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . . 2 . . . . 2 . . . . 3 . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1335
V-single : Vr3c5 = 0
xtd-diagonal-3-2-2+0-{r5c2...r3c4+r3c5} ==> Vr5c2 = 1, Hr6c2 = 1, Hr3c4 = 1, Vr6c2 = 0, Hr6c1 = 0
P-single : Pr6c2 = ne
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.............———.........
:   :   :   : 2     :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

Grid solved : computation-time 37.290129, nb-facts=<Fact-109121>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . . 2 . . . . 2 . . . . 3 . . . . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1234
H-single : Hr3c4 = 0
xtd-diagonal-3-2-2+0-{r5c2...r3c4+r2c4} ==> Vr3c5 = 1, Vr5c2 = 1, Hr6c2 = 1, Vr6c2 = 0, Hr6c1 = 0
P-single : Pr6c2 = ne
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.............   .........
:   :   :   : 2 |   :   :
.........................
:   :   : 2 :   :   :   :
.........................
:   | 3 :   :   :   :   :
.   .———.................
:       :   :   :   :   :
.........................

Grid solved : computation-time 37.169068, nb-facts=<Fact-109121>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1333
V-single : Vr3c3 = 0
xtd-diagonal-3-2-2+0-{r5c5...r3c3+r3c2} ==> Vr5c6 = 1, Hr6c5 = 1, Hr3c3 = 1, Vr6c6 = 0, Hr6c6 = 0
P-single : Pr6c6 = nw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........———.............
:   :     2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

Grid solved : computation-time 37.498068, nb-facts=<Fact-109121>





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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1156 candidates, 4156 csp-links and 19944 links. Initial density = 0.746865591156249
Simulated elimination of 1233
H-single : Hr3c3 = 0
xtd-diagonal-3-2-2+0-{r5c5...r3c3+r2c3} ==> Vr5c6 = 1, Vr3c3 = 1, Hr6c5 = 1, Vr6c6 = 0, Hr6c6 = 0
P-single : Pr6c6 = nw
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........   .............
:   :   | 2 :   :   :   :
.........................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 |   :
.................———.   .
:   :   :   :   :       :
.........................

Grid solved : computation-time 37.2561430000001, nb-facts=<Fact-109121>




(bind ?*simulated-eliminations*(create$))

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


---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+DIAGONAL-2-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------



(solve
5 5 
. . . . .
. 3 2 . .
. . . 0 . 
. . . . .
. . . . . 
)


*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
(. . . . . . 3 2 . . . . . 0 . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
3-in-r2c2+diagonal-2-0-in-{r2c3...r3c4} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
P-single: Pr3c2 = ne
entering level W1 with <Fact-73094>
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Pr4c4{o .} ==> Br4c3 <> swn
whip[1]: Pr4c4{o .} ==> Br4c3 <> esw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ew
whip[1]: Pr4c4{o .} ==> Br4c3 <> se
whip[1]: Pr4c4{o .} ==> Br4c3 <> nw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ns
whip[1]: Pr4c4{o .} ==> Br4c3 <> e
whip[1]: Pr4c4{o .} ==> Br4c3 <> n
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> se
whip[1]: Pr3c5{o .} ==> Br2c5 <> nw
whip[1]: Pr3c5{o .} ==> Br2c5 <> ns
whip[1]: Pr3c5{o .} ==> Br2c5 <> w
whip[1]: Pr3c5{o .} ==> Br2c5 <> s
whip[1]: Pr3c3{nw .} ==> Br2c3 <> sw
whip[1]: Br2c3{ne .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{sw .} ==> Br1c4 <> sw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> esw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> swn
whip[1]: Br2c3{ne .} ==> Pr2c4 <> o
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Br2c3{ne .} ==> Pr2c3 <> sw
whip[1]: Br2c3{ne .} ==> Pr2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c3{nw .} ==> Br2c3 <> ne
whip[1]: Br2c3{se .} ==> Pr2c4 <> sw
whip[1]: Pr2c4{ns .} ==> Br1c4 <> ne
whip[1]: Pr2c4{ns .} ==> Br1c4 <> e
whip[1]: Pr2c4{ns .} ==> Br1c4 <> n
whip[1]: Pr2c4{ns .} ==> Br1c4 <> o
whip[1]: Br2c3{se .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{ew .} ==> Br1c3 <> sw
whip[1]: Pr2c3{ew .} ==> Br1c3 <> esw
whip[1]: Pr2c3{ew .} ==> Br1c3 <> swn
whip[1]: Pr2c3{ew .} ==> Br1c2 <> wne
whip[1]: Pr2c3{ew .} ==> Br1c2 <> ew
whip[1]: Pr2c3{ew .} ==> Br1c2 <> ne
whip[1]: Pr2c3{ew .} ==> Br1c2 <> e
whip[1]: Br2c3{se .} ==> Pr2c3 <> ew
whip[1]: Pr2c3{o .} ==> Br1c2 <> s
whip[1]: Pr2c3{o .} ==> Br1c2 <> ns
whip[1]: Pr2c3{o .} ==> Br1c2 <> sw
whip[1]: Pr2c3{o .} ==> Br1c2 <> swn
whip[1]: Br2c2{swn .} ==> Pr2c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> n
whip[1]: Pr2c3{se .} ==> Br1c3 <> e
whip[1]: Pr2c3{se .} ==> Br1c3 <> ne
whip[1]: Pr2c2{ns .} ==> Br1c2 <> esw
whip[1]: Pr2c2{ns .} ==> Br1c1 <> se
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.....   .....
:             0     :
.............   .....
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 34.9925560000001, nb-facts=<Fact-73381>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 2 . . . . . 0 . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
V-single: Vr3c5 = 0
V-single: Vr3c4 = 0
H-single: Hr4c4 = 0
H-single: Hr3c4 = 0
entering level W1 with <Fact-73046>
whip[1]: Pr4c5{o .} ==> Br4c5 <> nes
whip[1]: Pr4c5{o .} ==> Br4c5 <> esw
whip[1]: Pr4c5{o .} ==> Br4c5 <> sw
whip[1]: Pr4c5{o .} ==> Br4c5 <> ew
whip[1]: Pr4c5{o .} ==> Br4c5 <> ns
whip[1]: Pr4c5{o .} ==> Br4c5 <> ne
whip[1]: Pr4c5{o .} ==> Br4c5 <> w
whip[1]: Pr4c5{o .} ==> Br4c5 <> n
whip[1]: Pr4c4{o .} ==> Br4c3 <> swn
whip[1]: Pr4c4{o .} ==> Br4c3 <> esw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ew
whip[1]: Pr4c4{o .} ==> Br4c3 <> se
whip[1]: Pr4c4{o .} ==> Br4c3 <> nw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ns
whip[1]: Pr4c4{o .} ==> Br4c3 <> e
whip[1]: Pr4c4{o .} ==> Br4c3 <> n
whip[1]: Pr3c5{o .} ==> Br2c5 <> nes
whip[1]: Pr3c5{o .} ==> Br2c5 <> wne
whip[1]: Pr3c5{o .} ==> Br2c5 <> ew
whip[1]: Pr3c5{o .} ==> Br2c5 <> se
whip[1]: Pr3c5{o .} ==> Br2c5 <> nw
whip[1]: Pr3c5{o .} ==> Br2c5 <> ns
whip[1]: Pr3c5{o .} ==> Br2c5 <> w
whip[1]: Pr3c5{o .} ==> Br2c5 <> s
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Br2c3{ne .} ==> Pr3c3 <> ne
whip[1]: Br2c3{ne .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{sw .} ==> Br1c4 <> sw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> esw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> swn
whip[1]: Br2c3{ne .} ==> Pr2c4 <> o
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Br2c3{ne .} ==> Pr2c3 <> sw
whip[1]: Pr2c3{o .} ==> Br2c2 <> wne
whip[1]: Br2c2{nes .} ==> Pr3c3 <> ns
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
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> swn
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
whip[1]: Br2c3{ne .} ==> Pr2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ne
whip[1]: Br2c3{se .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{nw .} ==> Br3c2 <> ne
whip[1]: Br3c2{nes .} ==> Pr4c3 <> ne
whip[1]: Pr4c3{sw .} ==> Br3c3 <> sw
whip[1]: Br3c2{nes .} ==> Pr4c3 <> ns
whip[1]: Pr3c3{nw .} ==> Br3c2 <> nes
whip[1]: Br3c2{n .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br3c3 <> w
whip[1]: Br3c3{ns .} ==> Vr3c3 <> 1
V-single: Vr3c3 = 0
whip[1]: Br2c3{se .} ==> Pr2c4 <> sw
whip[1]: Pr2c4{ns .} ==> Br1c4 <> ne
whip[1]: Pr2c4{ns .} ==> Br1c4 <> e
whip[1]: Pr2c4{ns .} ==> Br1c4 <> n
whip[1]: Pr2c4{ns .} ==> Br1c4 <> o
whip[1]: Br2c3{se .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{ew .} ==> Br1c3 <> sw
whip[1]: Pr2c3{ew .} ==> Br1c3 <> esw
whip[1]: Pr2c3{ew .} ==> Br1c3 <> swn
whip[1]: Pr2c3{ew .} ==> Br1c2 <> wne
whip[1]: Pr2c3{ew .} ==> Br1c2 <> ew
whip[1]: Pr2c3{ew .} ==> Br1c2 <> ne
whip[1]: Pr2c3{ew .} ==> Br1c2 <> e
whip[1]: Br2c3{se .} ==> Pr2c3 <> ew
whip[1]: Pr2c3{o .} ==> Br1c2 <> s
whip[1]: Pr2c3{o .} ==> Br1c2 <> ns
whip[1]: Br2c2{swn .} ==> Pr2c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> n
whip[1]: Pr2c3{se .} ==> Br1c3 <> e
whip[1]: Pr2c3{se .} ==> Br1c3 <> ne
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.....   .....
:             0     :
.............   .....
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 44.924306, nb-facts=<Fact-73078>





(solve 
5 5 
. . . . .
. . . . .
. . . 0 . 
. 3 2 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 . . 3 2 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
3-in-r4c2+diagonal-2-0-{r4c3...r3c4} ==> Vr4c2 = 1, Hr4c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr4c1 = 0
P-single : Pr4c2 = se
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:             0     :
.   .———.....   .....
:   | 3 : 2 :   :   :
.....................
:   :   :   :   :   :
.....................




(solve 
5 5 
. . . . .
. . 2 3 .
. 0 . . . 
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 2 3 . . 0 . . . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
3-in-r2c4+diagonal-2-0-{r2c3...r3c2} ==> Vr2c5 = 1, Hr3c4 = 1, Vr3c5 = 0, Vr3c4 = 0, Hr3c5 = 0
P-single : Pr3c5 = nw
.....................
:   :   :   :   :   :
.....................
:   :   : 2 : 3 |   :
.....   .....———.   .
:     0             :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................



(solve 
5 5 
. . . . .
. . . . .
. 0 . . . 
. . 2 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 . . . . . 2 3 . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
3-in-r4c4+diagonal-2-0-{r4c3...r3c2} ==> Vr4c5 = 1, Hr4c4 = 1, Vr3c5 = 0, Vr3c4 = 0, Hr4c5 = 0
P-single : Pr4c5 = sw
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0             :
.....   .....———.   .
:   :   : 2 : 3 |   :
.....................
:   :   :   :   :   :
.....................






(solve 
5 5 
. . . . .
. . 0 . .
. . . 2 . 
. . . 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . . . 2 . . . . 3 . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
3-in-r4c4+diagonal-2-0-{r3c4...r2c3} ==> Vr4c4 = 1, Hr5c4 = 1, Vr5c4 = 0, Hr5c3 = 0, Hr4c3 = 0
P-single : Pr5c4 = ne
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   : 2 :   :
.........   .........
:   :   :   | 3 :   :
.........   .———.....
:   :   :       :   :
.....................




(solve 
5 5 
. . . . .
. . 0 . .
. 2 . . . 
. 3 . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . 2 . . . . 3 . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
3-in-r4c2+diagonal-2-0-{r3c2...r2c3} ==> Vr4c3 = 1, Hr5c2 = 1, Vr5c3 = 0, Hr5c3 = 0, Hr4c3 = 0
P-single : Pr5c3 = nw
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   : 2 :   :   :   :
.........   .........
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................




(solve 
5 5 
. . . . .
. . . 3 .
. . . 2 . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . . 2 . . . 0 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
3-in-r2c4+diagonal-2-0-{r3c4...r4c3} ==> Vr2c4 = 1, Hr2c4 = 1, Vr1c4 = 0, Hr3c3 = 0, Hr2c3 = 0
P-single : Pr2c4 = se
.....................
:   :   :       :   :
.........   .———.....
:   :   :   | 3 :   :
.........   .........
:   :   :   : 2 :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................




(solve 
5 5 
. . . . .
. 3 . . .
. 2 . . . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . 2 . . . . . 0 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
3-in-r2c2+diagonal-2-0-{r3c2...r4c3} ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
P-single : Pr2c3 = sw
.....................
:   :       :   :   :
.....———.   .........
:   : 3 |   :   :   :
.........   .........
:   : 2 :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+DIAGONAL-2-2-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------




(solve 
6 6 
. . . . . .
. 3 2 . . .
. . . 2 . .
. . . . 0 .
. . . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 2 . . . . . . 2 . . . . . . 0 . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
Simulated elimination of 1345
0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
3-in-r2c2+diagonal-2s-0-in-{r2c3...r3c4 r4c5} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = ne
entering level W1 with <Fact-107016>
whip[1]: Pr5c6{o .} ==> Br5c6 <> nes
whip[1]: Pr5c6{o .} ==> Br5c6 <> esw
whip[1]: Pr5c6{o .} ==> Br5c6 <> sw
whip[1]: Pr5c6{o .} ==> Br5c6 <> ew
whip[1]: Pr5c6{o .} ==> Br5c6 <> ns
whip[1]: Pr5c6{o .} ==> Br5c6 <> ne
whip[1]: Pr5c6{o .} ==> Br5c6 <> w
whip[1]: Pr5c6{o .} ==> Br5c6 <> n
whip[1]: Pr5c5{o .} ==> Br5c4 <> swn
whip[1]: Pr5c5{o .} ==> Br5c4 <> esw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ew
whip[1]: Pr5c5{o .} ==> Br5c4 <> es
whip[1]: Pr5c5{o .} ==> Br5c4 <> nw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ns
whip[1]: Pr5c5{o .} ==> Br5c4 <> e
whip[1]: Pr5c5{o .} ==> Br5c4 <> n
whip[1]: Pr4c6{o .} ==> Br3c6 <> nes
whip[1]: Pr4c6{o .} ==> Br3c6 <> wne
whip[1]: Pr4c6{o .} ==> Br3c6 <> ew
whip[1]: Pr4c6{o .} ==> Br3c6 <> es
whip[1]: Pr4c6{o .} ==> Br3c6 <> nw
whip[1]: Pr4c6{o .} ==> Br3c6 <> ns
whip[1]: Pr4c6{o .} ==> Br3c6 <> w
whip[1]: Pr4c6{o .} ==> Br3c6 <> s
whip[1]: Pr4c5{o .} ==> Br3c4 <> sw
whip[1]: Br3c4{ne .} ==> Pr4c4 <> ne
whip[1]: Br3c4{ne .} ==> Pr3c5 <> ne
whip[1]: Pr3c5{sw .} ==> Br2c5 <> sw
whip[1]: Pr3c5{sw .} ==> Br2c5 <> esw
whip[1]: Pr3c5{sw .} ==> Br2c5 <> swn
whip[1]: Br3c4{ne .} ==> Pr3c5 <> o
whip[1]: Pr4c5{o .} ==> Br3c4 <> ew
whip[1]: Br3c4{ne .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{o .} ==> Br3c3 <> ne
whip[1]: Pr3c4{o .} ==> Br3c3 <> nes
whip[1]: Br3c4{ne .} ==> Pr3c4 <> ns
whip[1]: Pr4c5{o .} ==> Br3c4 <> ns
whip[1]: Pr4c5{o .} ==> Br3c4 <> ne
whip[1]: Br3c4{es .} ==> Pr4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ne
whip[1]: Pr4c4{o .} ==> Br4c3 <> wne
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes
whip[1]: Br3c4{es .} ==> Pr4c4 <> o
whip[1]: Pr4c4{ew .} ==> Br4c3 <> sw
whip[1]: Pr4c4{ew .} ==> Br4c3 <> w
whip[1]: Pr4c4{ew .} ==> Br4c3 <> s
whip[1]: Pr4c4{ew .} ==> Br4c3 <> o
whip[1]: Br3c4{es .} ==> Pr3c5 <> sw
whip[1]: Pr3c5{ns .} ==> Br2c5 <> ne
whip[1]: Pr3c5{ns .} ==> Br2c5 <> e
whip[1]: Pr3c5{ns .} ==> Br2c5 <> n
whip[1]: Pr3c5{ns .} ==> Br2c5 <> o
whip[1]: Br3c4{es .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{ew .} ==> Br2c4 <> sw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> esw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> swn
whip[1]: Pr3c4{ew .} ==> Br2c3 <> ew
whip[1]: Pr3c4{ew .} ==> Br2c3 <> ne
whip[1]: Br2c3{sw .} ==> Pr2c4 <> sw
whip[1]: Br3c4{es .} ==> Pr3c4 <> ew
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Br2c3{sw .} ==> Pr2c3 <> ew
whip[1]: Br2c3{sw .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Br2c3{nw .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{ew .} ==> Br1c4 <> sw
whip[1]: Pr2c4{ew .} ==> Br1c4 <> esw
whip[1]: Pr2c4{ew .} ==> Br1c4 <> swn
whip[1]: Br2c3{nw .} ==> Pr2c4 <> o
whip[1]: Pr2c4{ew .} ==> Br1c4 <> o
whip[1]: Pr2c4{ew .} ==> Br1c4 <> n
whip[1]: Pr2c4{ew .} ==> Br1c4 <> e
whip[1]: Pr2c4{ew .} ==> Br1c4 <> ne
whip[1]: Br2c3{nw .} ==> Pr2c3 <> ns
whip[1]: Pr2c3{sw .} ==> Br1c2 <> e
whip[1]: Pr2c3{sw .} ==> Br1c2 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c2 <> ew
whip[1]: Pr2c3{sw .} ==> Br1c2 <> wne
whip[1]: Br2c3{nw .} ==> Pr2c3 <> sw
whip[1]: Pr2c3{o .} ==> Br1c2 <> swn
whip[1]: Pr2c3{o .} ==> Br1c2 <> sw
whip[1]: Pr2c3{o .} ==> Br1c2 <> ns
whip[1]: Pr2c3{o .} ==> Br1c2 <> s
whip[1]: Br2c2{swn .} ==> Pr2c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> n
whip[1]: Pr2c3{se .} ==> Br1c3 <> e
whip[1]: Pr2c3{se .} ==> Br1c3 <> ne
whip[1]: Pr2c2{ns .} ==> Br1c2 <> esw
whip[1]: Pr2c2{ns .} ==> Br1c1 <> es
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.........................
:   :   :   :   :   :   :
.........................
:   | 3 : 2 :   :   :   :
.   .———.................
:           : 2 :   :   :
.................   .....
:   :   :   :     0     :
.................   .....
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 99.3520360000002, nb-facts=<Fact-107394>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 2 . . . . . . 2 . . . . . . 0 . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
V-single : Vr4c6 = 0
V-single : Vr4c5 = 0
H-single : Hr5c5 = 0
H-single : Hr4c5 = 0
entering level W1 with <Fact-106966>
whip[1]: Pr5c6{o .} ==> Br5c6 <> nes
whip[1]: Pr5c6{o .} ==> Br5c6 <> esw
whip[1]: Pr5c6{o .} ==> Br5c6 <> sw
whip[1]: Pr5c6{o .} ==> Br5c6 <> ew
whip[1]: Pr5c6{o .} ==> Br5c6 <> ns
whip[1]: Pr5c6{o .} ==> Br5c6 <> ne
whip[1]: Pr5c6{o .} ==> Br5c6 <> w
whip[1]: Pr5c6{o .} ==> Br5c6 <> n
whip[1]: Pr5c5{o .} ==> Br5c4 <> swn
whip[1]: Pr5c5{o .} ==> Br5c4 <> esw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ew
whip[1]: Pr5c5{o .} ==> Br5c4 <> es
whip[1]: Pr5c5{o .} ==> Br5c4 <> nw
whip[1]: Pr5c5{o .} ==> Br5c4 <> ns
whip[1]: Pr5c5{o .} ==> Br5c4 <> e
whip[1]: Pr5c5{o .} ==> Br5c4 <> n
whip[1]: Pr4c6{o .} ==> Br3c6 <> nes
whip[1]: Pr4c6{o .} ==> Br3c6 <> wne
whip[1]: Pr4c6{o .} ==> Br3c6 <> ew
whip[1]: Pr4c6{o .} ==> Br3c6 <> es
whip[1]: Pr4c6{o .} ==> Br3c6 <> nw
whip[1]: Pr4c6{o .} ==> Br3c6 <> ns
whip[1]: Pr4c6{o .} ==> Br3c6 <> w
whip[1]: Pr4c6{o .} ==> Br3c6 <> s
whip[1]: Pr4c5{o .} ==> Br3c4 <> sw
whip[1]: Br3c4{ne .} ==> Pr4c4 <> ne
whip[1]: Br3c4{ne .} ==> Pr3c5 <> ne
whip[1]: Pr3c5{sw .} ==> Br2c5 <> sw
whip[1]: Pr3c5{sw .} ==> Br2c5 <> esw
whip[1]: Pr3c5{sw .} ==> Br2c5 <> swn
whip[1]: Br3c4{ne .} ==> Pr3c5 <> o
whip[1]: Pr4c5{o .} ==> Br3c4 <> ew
whip[1]: Br3c4{ne .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{o .} ==> Br3c3 <> ne
whip[1]: Pr3c4{o .} ==> Br3c3 <> wne
whip[1]: Pr3c4{o .} ==> Br3c3 <> nes
whip[1]: Br3c4{ne .} ==> Pr3c4 <> ns
whip[1]: Pr4c5{o .} ==> Br3c4 <> ns
whip[1]: Pr4c5{o .} ==> Br3c4 <> ne
whip[1]: Br3c4{es .} ==> Pr4c4 <> sw
whip[1]: Pr4c4{o .} ==> Br4c3 <> ne
whip[1]: Pr4c4{o .} ==> Br4c3 <> wne
whip[1]: Pr4c4{o .} ==> Br4c3 <> nes
whip[1]: Br3c4{es .} ==> Pr4c4 <> o
whip[1]: Pr4c4{ew .} ==> Br4c3 <> sw
whip[1]: Pr4c4{ew .} ==> Br4c3 <> w
whip[1]: Pr4c4{ew .} ==> Br4c3 <> s
whip[1]: Pr4c4{ew .} ==> Br4c3 <> o
whip[1]: Br3c4{es .} ==> Pr3c5 <> sw
whip[1]: Pr3c5{ns .} ==> Br2c5 <> ne
whip[1]: Pr3c5{ns .} ==> Br2c5 <> e
whip[1]: Pr3c5{ns .} ==> Br2c5 <> n
whip[1]: Pr3c5{ns .} ==> Br2c5 <> o
whip[1]: Br3c4{es .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{ew .} ==> Br2c4 <> sw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> esw
whip[1]: Pr3c4{ew .} ==> Br2c4 <> swn
whip[1]: Pr3c4{ew .} ==> Br2c3 <> ew
whip[1]: Pr3c4{ew .} ==> Br2c3 <> ne
whip[1]: Br2c3{sw .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{o .} ==> Br3c2 <> ne
whip[1]: Pr3c3{o .} ==> Br3c2 <> wne
whip[1]: Pr3c3{o .} ==> Br3c2 <> nes
whip[1]: Br2c3{sw .} ==> Pr3c3 <> o
whip[1]: Br2c3{sw .} ==> Pr2c4 <> sw
whip[1]: Br3c4{es .} ==> Pr3c4 <> ew
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Br2c3{sw .} ==> Pr2c3 <> ew
whip[1]: Br2c3{sw .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c3 <> sw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c3 <> swn
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Br2c3{nw .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{ew .} ==> Br3c2 <> o
whip[1]: Pr3c3{ew .} ==> Br3c2 <> s
whip[1]: Pr3c3{ew .} ==> Br3c2 <> w
whip[1]: Pr3c3{ew .} ==> Br3c2 <> sw
whip[1]: Br2c3{nw .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{ew .} ==> Br1c4 <> sw
whip[1]: Pr2c4{ew .} ==> Br1c4 <> esw
whip[1]: Pr2c4{ew .} ==> Br1c4 <> swn
whip[1]: Br2c3{nw .} ==> Pr2c4 <> o
whip[1]: Pr2c4{ew .} ==> Br1c4 <> o
whip[1]: Pr2c4{ew .} ==> Br1c4 <> n
whip[1]: Pr2c4{ew .} ==> Br1c4 <> e
whip[1]: Pr2c4{ew .} ==> Br1c4 <> ne
whip[1]: Br2c3{nw .} ==> Pr2c3 <> ns
whip[1]: Pr2c3{sw .} ==> Br1c2 <> e
whip[1]: Pr2c3{sw .} ==> Br1c2 <> ne
whip[1]: Pr2c3{sw .} ==> Br1c2 <> ew
whip[1]: Pr2c3{sw .} ==> Br1c2 <> wne
whip[1]: Br2c3{nw .} ==> Pr2c3 <> sw
whip[1]: Pr2c3{o .} ==> Br2c2 <> wne
whip[1]: Br2c2{nes .} ==> Pr3c3 <> ns
whip[1]: Pr3c3{ew .} ==> Br3c3 <> w
whip[1]: Pr3c3{ew .} ==> Br3c3 <> ew
whip[1]: Pr3c3{ew .} ==> Br3c3 <> sw
whip[1]: Pr3c3{ew .} ==> Br3c3 <> esw
whip[1]: Br2c2{nes .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> es
whip[1]: Pr3c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr3c2{sw .} ==> Br2c1 <> nes
whip[1]: Br2c2{nes .} ==> Pr3c2 <> ns
whip[1]: Br2c2{nes .} ==> Hr3c2 <> 0
H-single : Hr3c2 = 1
whip[1]: Pr3c2{ne .} ==> Br3c1 <> ne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> wne
whip[1]: Pr3c2{ne .} ==> Br3c1 <> nes
whip[1]: Pr3c3{ew .} ==> Vr3c3 <> 1
V-single : Vr3c3 = 0
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
H-single : Hr3c1 = 0
whip[1]: Br2c2{esw .} ==> Pr3c2 <> se
P-single : Pr3c2 = ne
V-single : Vr2c2 = 1
V-single : Vr3c2 = 0
whip[1]: Pr2c2{sw .} ==> Br1c2 <> sw
whip[1]: Pr2c2{sw .} ==> Br1c2 <> esw
whip[1]: Pr2c2{sw .} ==> Br1c2 <> swn
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es
whip[1]: Pr2c3{o .} ==> Br1c2 <> ns
whip[1]: Pr2c3{o .} ==> Br1c2 <> s
whip[1]: Br2c2{swn .} ==> Pr2c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> n
whip[1]: Pr2c3{se .} ==> Br1c3 <> e
whip[1]: Pr2c3{se .} ==> Br1c3 <> ne






(solve 
6 6  
. . . . . .
. . . . . .
. . . . 0 .
. . . 2 . .
. 3 2 . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . . . 0 . . . . 2 . . . 3 2 . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r3c5 ==> Hr4c5 = 0, Hr3c5 = 0, Vr3c6 = 0, Vr3c5 = 0
3-in-r5c2+diagonal-2s-0-{r5c3...r4c4 r3c5} ==> Vr5c2 = 1, Hr5c2 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = se
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.................   .....
:   :   :   :     0     :
.................   .....
:           : 2 :   :   :
.   .———.................
:   | 3 : 2 :   :   :   :
.........................
:   :   :   :   :   :   :
.........................




(solve 
6 6  
. . . . . .
. . . 2 3 .
. . 2 . . . 
. 0 . . . .
. . . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 2 3 . . . 2 . . . . 0 . . . . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
3-in-r2c5+diagonal-2s-0-{r2c4...r3c3 r4c2} ==> Vr2c6 = 1, Hr3c5 = 1, Vr3c6 = 0, Vr3c5 = 0, Hr3c6 = 0
P-single : Pr3c6 = nw
.........................
:   :   :   :   :   :   :
.........................
:   :   :   : 2 : 3 |   :
.................———.   .
:   :   : 2 :           :
.....   .................
:     0     :   :   :   :
.....   .................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................



(solve 
6 6  
. . . . . .
. . . . . .
. 0 . . . .
. . 2 . . . 
. . . 2 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 . . . . . . 2 . . . . . . 2 3 . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
3-in-r5c5+diagonal-2s-0-{r5c4...r4c3 r3c2} ==> Vr5c6 = 1, Hr5c5 = 1, Vr4c6 = 0, Vr4c5 = 0, Hr5c6 = 0
P-single : Pr5c6 = sw
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.....   .................
:     0     :   :   :   :
.....   .................
:   :   : 2 :           :
.................———.   .
:   :   :   : 2 : 3 |   :
.........................
:   :   :   :   :   :   :
.........................








(solve 
6 6  
. . . . . .
. . 0 . . .
. . . 2 . .
. . . . 2 . 
. . . . 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 0 . . . . . . 2 . . . . . . 2 . . . . . 3 . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
3-in-r5c5+diagonal-2s-0-{r4c5...r3c4 r2c3} ==> Vr5c5 = 1, Hr6c5 = 1, Vr6c5 = 0, Hr6c4 = 0, Hr5c4 = 0
P-single : Pr6c5 = ne
.........................
:   :   :   :   :   :   :
.........   .............
:   :     0     :   :   :
.........   .............
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 2 :   :
.............   .........
:   :   :   :   | 3 :   :
.............   .———.....
:   :   :   :       :   :
.........................




(solve  
6 6  
. . . . . .
. . . 0 . .
. . 2 . . .
. 2 . . . .
. 3 . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 0 . . . . 2 . . . . 2 . . . . . 3 . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
3-in-r5c2+diagonal-2s-0-{r4c2...r3c3 r2c4} ==> Vr5c3 = 1, Hr6c2 = 1, Vr6c3 = 0, Hr6c3 = 0, Hr5c3 = 0
P-single : Pr6c3 = nw
.........................
:   :   :   :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .........
:   :   : 2 :   :   :   :
.........................
:   : 2 :   :   :   :   :
.........   .............
:   : 3 |   :   :   :   :
.....———.   .............
:   :       :   :   :   :
.........................




(solve 
6 6  
. . . . . .
. . . . 3 .
. . . . 2 . 
. . . 2 . .
. . 0 . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . . 2 . . . . 2 . . . . 0 . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r5c3 ==> Hr6c3 = 0, Hr5c3 = 0, Vr5c4 = 0, Vr5c3 = 0
3-in-r2c5+diagonal-2s-0-{r3c5...r4c4 r5c3} ==> Vr2c5 = 1, Hr2c5 = 1, Vr1c5 = 0, Hr3c4 = 0, Hr2c4 = 0
P-single : Pr2c5 = se
.........................
:   :   :   :       :   :
.............   .———.....
:   :   :   :   | 3 :   :
.............   .........
:   :   :   :   : 2 :   :
.........................
:   :   :   : 2 :   :   :
.........   .............
:   :     0     :   :   :
.........   .............
:   :   :   :   :   :   :
.........................





(solve 
6 6  
. . . . . .
. 3 . . . .
. 2 . . . .
. . 2 . . .
. . . 0 . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . 2 . . . . . . 2 . . . . . . 0 . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
3-in-r2c2+diagonal-2s-0-{r3c2...r4c3 r5c4} ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
P-single : Pr2c3 = sw
.........................
:   :       :   :   :   :
.....———.   .............
:   : 3 |   :   :   :   :
.........   .............
:   : 2 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .........
:   :   :   :   :   :   :
.........................






---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+xtd-DIAGONAL-2-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

TODO


(solve 
5 5 
. . . . .
. 3 2 . .
. . . 0 . 
. . . . .
. . . . . 
)


*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 2 . . . . . 0 . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
3-in-r2c2+xtd-diagonal-2-0-{r2c3...se} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.....   .....
:             0     :
.............   .....
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 18.6416810000001, nb-facts=<Fact-73109>



without this rule
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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
(. . . . . . 3 2 . . . . . . . . . . . . . . . . .)
328 csp-variables, 804 candidates, 2779 csp-links and 13270 links. Initial density = 1.02770704385916
Simulated elimination of 1334
Simulated elimination of 1234
V-single: Vr3c4 = 0
H-single: Hr3c4 = 0
entering level W1 with <Fact-75119>
whip[1]: Pr3c4{o .} ==> Br2c3 <> sw
whip[1]: Br2c3{ne .} ==> Pr3c3 <> ne
whip[1]: Br2c3{ne .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{sw .} ==> Br1c4 <> sw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> esw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> swn
whip[1]: Br2c3{ne .} ==> Pr2c4 <> o
whip[1]: Pr3c4{o .} ==> Br2c3 <> ew
whip[1]: Br2c3{ne .} ==> Pr2c3 <> sw
whip[1]: Pr2c3{o .} ==> Br2c2 <> wne
whip[1]: Br2c2{nes .} ==> Pr3c3 <> ns
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
whip[1]: Pr3c3{sw .} ==> Br3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> swn
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
whip[1]: Br2c3{ne .} ==> Pr2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ns
whip[1]: Pr3c4{o .} ==> Br2c3 <> ne
whip[1]: Br2c3{se .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{nw .} ==> Br3c2 <> ne
whip[1]: Br3c2{nes .} ==> Pr4c3 <> ne
whip[1]: Pr4c3{sw .} ==> Br3c3 <> sw
whip[1]: Br3c2{nes .} ==> Pr4c3 <> ns
whip[1]: Pr3c3{nw .} ==> Br3c2 <> nes
whip[1]: Br3c2{n .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br3c3 <> w
whip[1]: Br3c3{ns .} ==> Vr3c3 <> 1
V-single: Vr3c3 = 0
whip[1]: Br2c3{se .} ==> Pr2c4 <> sw
whip[1]: Pr2c4{ns .} ==> Br1c4 <> ne
whip[1]: Pr2c4{ns .} ==> Br1c4 <> e
whip[1]: Pr2c4{ns .} ==> Br1c4 <> n
whip[1]: Pr2c4{ns .} ==> Br1c4 <> o
whip[1]: Br2c3{se .} ==> Pr2c3 <> ne
whip[1]: Pr2c3{ew .} ==> Br1c3 <> sw
whip[1]: Pr2c3{ew .} ==> Br1c3 <> esw
whip[1]: Pr2c3{ew .} ==> Br1c3 <> swn
whip[1]: Pr2c3{ew .} ==> Br1c2 <> wne
whip[1]: Pr2c3{ew .} ==> Br1c2 <> ew
whip[1]: Pr2c3{ew .} ==> Br1c2 <> ne
whip[1]: Pr2c3{ew .} ==> Br1c2 <> e
whip[1]: Br2c3{se .} ==> Pr2c3 <> ew
whip[1]: Pr2c3{o .} ==> Br1c2 <> s
whip[1]: Pr2c3{o .} ==> Br1c2 <> ns
whip[1]: Br2c2{swn .} ==> Pr2c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> o
whip[1]: Pr2c3{se .} ==> Br1c3 <> n
whip[1]: Pr2c3{se .} ==> Br1c3 <> e
whip[1]: Pr2c3{se .} ==> Br1c3 <> ne
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = Whip[1]

.....................
:   :   :   :   :   :
.....................
:   | 3 : 2 :   :   :
.   .———.....   .....
:               :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 42.409541, nb-facts=<Fact-75151>









(solve 
5 5 
. . . . .
. . . . .
. . . 0 . 
. 3 2 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 . . 3 2 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c4 ==> Hr4c4 = 0, Hr3c4 = 0, Vr3c5 = 0, Vr3c4 = 0
3-in-r4c2+xtd-diagonal-2-0-{r4c3...ne} ==> Vr4c2 = 1, Hr4c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr4c1 = 0
P-single : Pr4c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.............   .....
:             0     :
.   .———.....   .....
:   | 3 : 2 :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 18.616853, nb-facts=<Fact-73109>




(solve 
5 5 
. . . . .
. . 2 3 .
. 0 . . . 
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 2 3 . . 0 . . . . . . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
3-in-r2c4+xtd-diagonal-2-0-{r2c3...sw} ==> Vr2c5 = 1, Hr3c4 = 1, Vr3c5 = 0, Vr3c4 = 0, Hr3c5 = 0
P-single : Pr3c5 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :   :   :   :
.....................
:   :   : 2 : 3 |   :
.....   .....———.   .
:     0             :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 18.5756080000001, nb-facts=<Fact-73109>



(solve 
5 5 
. . . . .
. . . . .
. 0 . . . 
. . 2 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . 0 . . . . . 2 3 . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
3-in-r4c4+xtd-diagonal-2-0-{r4c3...nw} ==> Vr4c5 = 1, Hr4c4 = 1, Vr3c5 = 0, Vr3c4 = 0, Hr4c5 = 0
P-single : Pr4c5 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....   .............
:     0             :
.....   .....———.   .
:   :   : 2 : 3 |   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 18.5252719999999, nb-facts=<Fact-73109>






(solve 
5 5 
. . . . .
. . 0 . .
. . . 2 . 
. . . 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . . . 2 . . . . 3 . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
3-in-r4c4+xtd-diagonal-2-0-{r3c4...nw} ==> Vr4c4 = 1, Hr5c4 = 1, Vr5c4 = 0, Hr5c3 = 0, Hr4c3 = 0
P-single : Pr5c4 = ne
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   : 2 :   :
.........   .........
:   :   :   | 3 :   :
.........   .———.....
:   :   :       :   :
.....................




(solve 
5 5 
. . . . .
. . 0 . .
. 2 . . . 
. 3 . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 0 . . . 2 . . . . 3 . . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
3-in-r4c2+xtd-diagonal-2-0-{r3c2...ne} ==> Vr4c3 = 1, Hr5c2 = 1, Vr5c3 = 0, Hr5c3 = 0, Hr4c3 = 0
P-single : Pr5c3 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   : 2 :   :   :   :
.........   .........
:   : 3 |   :   :   :
.....———.   .........
:   :       :   :   :
.....................

Grid solved : computation-time 18.560446, nb-facts=<Fact-73109>




(solve 
5 5 
. . . . .
. . . 3 .
. . . 2 . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 3 . . . . 2 . . . 0 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
3-in-r2c4+xtd-diagonal-2-0-{r3c4...sw} ==> Vr2c4 = 1, Hr2c4 = 1, Vr1c4 = 0, Hr3c3 = 0, Hr2c3 = 0
P-single : Pr2c4 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :   :       :   :
.........   .———.....
:   :   :   | 3 :   :
.........   .........
:   :   :   : 2 :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 18.5853649999999, nb-facts=<Fact-73109>




(solve 
5 5 
. . . . .
. 3 . . .
. 2 . . . 
. . 0 . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 3 . . . . 2 . . . . . 0 . . . . . . .)
328 csp-variables, 785 candidates, 2668 csp-links and 12700 links. Initial density = 1.03178213960744
0-in-r4c3 ==> Hr5c3 = 0, Hr4c3 = 0, Vr4c4 = 0, Vr4c3 = 0
3-in-r2c2+xtd-diagonal-2-0-{r3c2...se} ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
P-single : Pr2c3 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.....................
:   :       :   :   :
.....———.   .........
:   : 3 |   :   :   :
.........   .........
:   : 2 :   :   :   :
.........   .........
:   :     0     :   :
.........   .........
:   :   :   :   :   :
.....................

Grid solved : computation-time 18.534928, nb-facts=<Fact-73109>



---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+xtd-DIAGONAL-2-2-0, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

TODO

(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 4 3)
        (value-row-col-to-V-label 1 3 4)
    )
)

(solve 
6 6 
. . . . . .
. 3 2 . . .
. . . 2 . .
. . . . 0 .
. . . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 2 . . . . . . 2 . . . . . . 0 . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r4c5 ==> Hr5c5 = 0, Hr4c5 = 0, Vr4c6 = 0, Vr4c5 = 0
3-in-r2c2+xtd-diagonal-2s-0-{r2c3...r3c4...se} ==> Vr2c2 = 1, Hr3c2 = 1, Vr3c3 = 0, Vr3c2 = 0, Hr3c1 = 0
P-single : Pr3c2 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3

.........................
:   :   :   :   :   :   :
.........................
:   | 3 : 2 :   :   :   :
.   .———.................
:           : 2 :   :   :
.................   .....
:   :   :   :     0     :
.................   .....
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 40.9966549999999, nb-facts=<Fact-107042>




(solve 
6 6  
. . . . . .
. . . . . .
. . . . 0 .
. . . 2 . .
. 3 2 . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . . . . 0 . . . . 2 . . . 3 2 . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r3c5 ==> Hr4c5 = 0, Hr3c5 = 0, Vr3c6 = 0, Vr3c5 = 0
3-in-r5c2+xtd-diagonal-2s-0-{r5c3...r4c4...ne} ==> Vr5c2 = 1, Hr5c2 = 1, Vr4c3 = 0, Vr4c2 = 0, Hr5c1 = 0
P-single : Pr5c2 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.................   .....
:   :   :   :     0     :
.................   .....
:           : 2 :   :   :
.   .———.................
:   | 3 : 2 :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 41.523514, nb-facts=<Fact-107042>




(solve 
6 6  
. . . . . .
. . . 2 3 .
. . 2 . . . 
. 0 . . . .
. . . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 2 3 . . . 2 . . . . 0 . . . . . . . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r4c2 ==> Hr5c2 = 0, Hr4c2 = 0, Vr4c3 = 0, Vr4c2 = 0
3-in-r2c5+xtd-diagonal-2s-0-{r2c4...r3c3...sw} ==> Vr2c6 = 1, Hr3c5 = 1, Vr3c6 = 0, Vr3c5 = 0, Hr3c6 = 0
P-single : Pr3c6 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.........................
:   :   :   : 2 : 3 |   :
.................———.   .
:   :   : 2 :           :
.....   .................
:     0     :   :   :   :
.....   .................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 42.574374, nb-facts=<Fact-107042>



(solve 
6 6  
. . . . . .
. . . . . .
. 0 . . . .
. . 2 . . . 
. . . 2 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . . . . 0 . . . . . . 2 . . . . . . 2 3 . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r3c2 ==> Hr4c2 = 0, Hr3c2 = 0, Vr3c3 = 0, Vr3c2 = 0
3-in-r5c5+xtd-diagonal-2s-0-{r5c4...r4c3...nw} ==> Vr5c6 = 1, Hr5c5 = 1, Vr4c6 = 0, Vr4c5 = 0, Hr5c6 = 0
P-single : Pr5c6 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.........................
:   :   :   :   :   :   :
.....   .................
:     0     :   :   :   :
.....   .................
:   :   : 2 :           :
.................———.   .
:   :   :   : 2 : 3 |   :
.........................
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 41.7271349999999, nb-facts=<Fact-107042>






(solve 
6 6  
. . . . . .
. . 0 . . .
. . . 2 . .
. . . . 2 . 
. . . . 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 0 . . . . . . 2 . . . . . . 2 . . . . . 3 . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r2c3 ==> Hr3c3 = 0, Hr2c3 = 0, Vr2c4 = 0, Vr2c3 = 0
3-in-r5c5+xtd-diagonal-2s-0-{r4c5...r3c4...nw} ==> Vr5c5 = 1, Hr6c5 = 1, Vr6c5 = 0, Hr6c4 = 0, Hr5c4 = 0
P-single : Pr6c5 = ne
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.........   .............
:   :     0     :   :   :
.........   .............
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 2 :   :
.............   .........
:   :   :   :   | 3 :   :
.............   .———.....
:   :   :   :       :   :
.........................

Grid solved : computation-time 42.0861009999999, nb-facts=<Fact-107042>




(solve  
6 6  
. . . . . .
. . . 0 . .
. . 2 . . .
. 2 . . . .
. 3 . . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . 0 . . . . 2 . . . . 2 . . . . . 3 . . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r2c4 ==> Hr3c4 = 0, Hr2c4 = 0, Vr2c5 = 0, Vr2c4 = 0
3-in-r5c2+xtd-diagonal-2s-0-{r4c2...r3c3...ne} ==> Vr5c3 = 1, Hr6c2 = 1, Vr6c3 = 0, Hr6c3 = 0, Hr5c3 = 0
P-single : Pr6c3 = nw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .........
:   :   : 2 :   :   :   :
.........................
:   : 2 :   :   :   :   :
.........   .............
:   : 3 |   :   :   :   :
.....———.   .............
:   :       :   :   :   :
.........................

Grid solved : computation-time 41.937684, nb-facts=<Fact-107042>




(solve 
6 6  
. . . . . .
. . . . 3 .
. . . . 2 . 
. . . 2 . .
. . 0 . . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . . . 3 . . . . . 2 . . . . 2 . . . . 0 . . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r5c3 ==> Hr6c3 = 0, Hr5c3 = 0, Vr5c4 = 0, Vr5c3 = 0
3-in-r2c5+xtd-diagonal-2s-0-{r3c5...r4c4...sw} ==> Vr2c5 = 1, Hr2c5 = 1, Vr1c5 = 0, Hr3c4 = 0, Hr2c4 = 0
P-single : Pr2c5 = se
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :   :   :       :   :
.............   .———.....
:   :   :   :   | 3 :   :
.............   .........
:   :   :   :   : 2 :   :
.........................
:   :   :   : 2 :   :   :
.........   .............
:   :     0     :   :   :
.........   .............
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 41.7274189999998, nb-facts=<Fact-107042>




(solve 
6 6  
. . . . . .
. 3 . . . .
. 2 . . . .
. . 2 . . .
. . . 0 . .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Ba+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 3 . . . . . 2 . . . . . . 2 . . . . . . 0 . . . . . . . .)
445 csp-variables, 1137 candidates, 4045 csp-links and 19374 links. Initial density = 0.749981418856145
0-in-r5c4 ==> Hr6c4 = 0, Hr5c4 = 0, Vr5c5 = 0, Vr5c4 = 0
3-in-r2c2+xtd-diagonal-2s-0-{r3c2...r4c3...se} ==> Vr2c3 = 1, Hr2c2 = 1, Vr1c3 = 0, Hr3c3 = 0, Hr2c3 = 0
P-single : Pr2c3 = sw
GRID 0 SOLVED. rating-type = Ba+, MOST COMPLEX RULE TRIED = diag-3-2s+adj-1-1+diag-2s-3
.........................
:   :       :   :   :   :
.....———.   .............
:   : 3 |   :   :   :   :
.........   .............
:   : 2 :   :   :   :   :
.........................
:   :   : 2 :   :   :   :
.............   .........
:   :   :     0     :   :
.............   .........
:   :   :   :   :   :   :
.........................

Grid solved : computation-time 41.4699969999999, nb-facts=<Fact-107042>



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




---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-1-1, REDUCIBLE TO W1

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------





(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 3 2)
        (value-row-col-to-V-label 1 2 3)
    )
)

(solve 
5 5 
. . . . .
. 1 . . .
. . 1 . .
. . . . .
. . . . . 
)

*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13192 links. Initial density = 1.02677139859465
Simulated elimination of 1323
Simulated elimination of 1232
V-single : Vr2c3 = 0
H-single : Hr3c2 = 0
diagonal-1-1-in-{r2c2...r3c3}-with-no-se-inner-line ==> Hr3c3 = 0, Vr3c3 = 0
P-single : Pr3c3 = o
entering level W1 with <Fact-74860>
whip[1]: Br3c3{s .} ==> Pr4c4 <> o
whip[1]: Br2c2{w .} ==> Pr2c2 <> o
whip[1]: Br2c2{w .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es
whip[1]: Br3c3{s .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> swn
whip[1]: Pr4c4{sw .} ==> Br4c4 <> wne
whip[1]: Br3c3{s .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> o
whip[1]: Pr4c4{sw .} ==> Br4c4 <> e
whip[1]: Pr4c4{sw .} ==> Br4c4 <> s
whip[1]: Pr4c4{sw .} ==> Br4c4 <> es
whip[1]: Br2c2{w .} ==> Pr2c2 <> se
whip[1]: Pr2c2{sw .} ==> Br1c1 <> o
whip[1]: Pr2c2{sw .} ==> Br1c1 <> nw
GRID 0 SOLVED. rating-type = Bb+W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.....................
:   : 1     :   :   :
.....   .   .........
:   :     1 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 47.156156, nb-facts=<Fact-75141>


WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13192 links. Initial density = 1.02677139859465
Simulated elimination of 1323
Simulated elimination of 1232
V-single : Vr2c3 = 0
H-single : Hr3c2 = 0
entering level W1 with <Fact-74823>
whip[1]: Pr3c3{o .} ==> Br3c3 <> w
whip[1]: Br3c3{n .} ==> Pr4c3 <> ns
whip[1]: Br3c3{n .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{sw .} ==> Br3c2 <> es
whip[1]: Pr4c3{sw .} ==> Br3c2 <> esw
whip[1]: Br3c3{n .} ==> Vr3c3 <> 1
V-single : Vr3c3 = 0
P-single : Pr3c3 = o
H-single : Hr3c3 = 0
whip[1]: Br3c3{s .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> swn
whip[1]: Pr4c4{sw .} ==> Br4c4 <> wne
whip[1]: Br3c3{s .} ==> Pr4c4 <> o
whip[1]: Br2c2{w .} ==> Pr2c2 <> o
whip[1]: Br2c2{w .} ==> Pr2c2 <> nw
whip[1]: Pr2c2{sw .} ==> Br1c1 <> es
whip[1]: Br3c3{s .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> o
whip[1]: Pr4c4{sw .} ==> Br4c4 <> e
whip[1]: Pr4c4{sw .} ==> Br4c4 <> s
whip[1]: Pr4c4{sw .} ==> Br4c4 <> es
whip[1]: Br2c2{w .} ==> Pr2c2 <> se
whip[1]: Pr2c2{sw .} ==> Br1c1 <> o
whip[1]: Pr2c2{sw .} ==> Br1c1 <> nw
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue
.....................
:   :   :   :   :   :
.....................
:   : 1     :   :   :
.....   .   .........
:   :     1 :   :   :
.....................
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 47.5824110000001, nb-facts=<Fact-75067>






(bind ?*simulated-eliminations*
    (create$ 
        (value-row-col-to-H-label 1 2 2)
        (value-row-col-to-V-label 1 2 2)
    )
)

(solve 
5 5 
. . . . .
. 1 . . .
. . 1 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 802 candidates, 2770 csp-links and 13192 links. Initial density = 1.02677139859465
Simulated elimination of 1322
Simulated elimination of 1222
V-single : Vr2c2 = 0
H-single : Hr2c2 = 0
entering level W1 with <Fact-74823>
whip[1]: Br3c3{w .} ==> Pr4c3 <> ne
whip[1]: Br3c3{w .} ==> Pr4c4 <> nw
whip[1]: Br2c2{s .} ==> Pr3c3 <> o
whip[1]: Pr2c2{o .} ==> Br1c1 <> wne
whip[1]: Br1c1{o .} ==> Pr1c2 <> sw
whip[1]: Pr1c2{o .} ==> Br1c2 <> w
whip[1]: Pr1c2{o .} ==> Br1c2 <> ew
whip[1]: Pr2c2{o .} ==> Br1c1 <> swn
whip[1]: Br1c1{o .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{se .} ==> Br2c1 <> n
whip[1]: Pr2c1{se .} ==> Br2c1 <> ns
whip[1]: Pr2c2{o .} ==> Br1c1 <> s
whip[1]: Pr2c2{o .} ==> Br1c1 <> e
whip[1]: Br3c3{w .} ==> Pr3c4 <> sw
whip[1]: Br3c3{w .} ==> Pr3c3 <> se
whip[1]: Br2c2{s .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br3c3 <> e
whip[1]: Br3c3{w .} ==> Pr3c4 <> se
whip[1]: Pr3c4{ew .} ==> Br3c4 <> nw
whip[1]: Pr3c4{ew .} ==> Br3c4 <> swn
whip[1]: Pr3c4{ew .} ==> Br3c4 <> wne
whip[1]: Br3c3{w .} ==> Pr4c4 <> ns
whip[1]: Pr4c4{sw .} ==> Br3c4 <> ew
whip[1]: Pr4c4{sw .} ==> Br3c4 <> w
whip[1]: Br3c3{w .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{sw .} ==> Br3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> esw
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
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue
.....................
:   :   :   :   :   :
.....   .............
:     1 :   :   :   :
.....................
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................





(bind ?*simulated-eliminations*
    (create$)
)





---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

3+1+1, DIAGONAL 3-2s+1+1, REDUCIBLE TO W1, NOT YET CODED

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------





(solve 
5 5 
. . . . .
. 1 3 . .
. . 1 . .
. . . . .
. . . . . 
)

WITHOUT THIS RULE:
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 3 . . . . 1 . . . . . . . . . . . .)
328 csp-variables, 787 candidates, 2665 csp-links and 12714 links. Initial density = 1.0276729681756
entering level W1 with <Fact-73105>
whip[1]: Br3c3{w .} ==> Pr4c3 <> ne
whip[1]: Br3c3{w .} ==> Pr4c4 <> nw
whip[1]: Br2c3{nes .} ==> Pr2c3 <> o
whip[1]: Br2c3{nes .} ==> Pr2c3 <> nw
whip[1]: Pr2c3{sw .} ==> Br1c2 <> es
whip[1]: Pr2c3{sw .} ==> Br1c2 <> esw
whip[1]: Pr2c3{sw .} ==> Br1c2 <> nes
whip[1]: Br2c3{nes .} ==> Pr2c4 <> o
whip[1]: Br2c3{nes .} ==> Pr2c4 <> ne
whip[1]: Pr2c4{sw .} ==> Br1c4 <> sw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> esw
whip[1]: Pr2c4{sw .} ==> Br1c4 <> swn
whip[1]: Br2c3{nes .} ==> Pr3c3 <> o
whip[1]: Br2c3{nes .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{ne .} ==> Br3c2 <> ne
whip[1]: Pr3c3{ne .} ==> Br3c2 <> wne
whip[1]: Pr3c3{ne .} ==> Br3c2 <> nes
whip[1]: Br2c3{nes .} ==> Pr3c4 <> o
whip[1]: Br2c3{nes .} ==> Pr3c4 <> se
whip[1]: Pr3c4{sw .} ==> Br3c4 <> nw
whip[1]: Pr3c4{sw .} ==> Br3c4 <> swn
whip[1]: Pr3c4{sw .} ==> Br3c4 <> wne
whip[1]: Br2c2{w .} ==> Pr3c2 <> ne
whip[1]: Br2c2{w .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{ew .} ==> Br3c3 <> e
whip[1]: Br3c3{w .} ==> Pr4c4 <> ns
whip[1]: Pr4c4{sw .} ==> Br3c4 <> ew
whip[1]: Pr4c4{sw .} ==> Br3c4 <> w
whip[1]: Br3c3{w .} ==> Pr4c4 <> ne
whip[1]: Pr4c4{sw .} ==> Br3c4 <> sw
whip[1]: Pr4c4{sw .} ==> Br3c4 <> esw
whip[1]: Br3c4{nes .} ==> Pr3c4 <> sw
whip[1]: Pr3c4{ne .} ==> Br2c4 <> ne
whip[1]: Pr3c4{ne .} ==> Br2c4 <> e
whip[1]: Pr3c4{ne .} ==> Br2c4 <> n
whip[1]: Pr3c4{ne .} ==> Br2c4 <> o
whip[1]: Br3c4{nes .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{ew .} ==> Vr3c4 <> 1
V-single : Vr3c4 = 0
whip[1]: Pr3c3{ew .} ==> Br3c3 <> s
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
whip[1]: Br3c3{w .} ==> Pr3c3 <> se
whip[1]: Pr3c3{ew .} ==> Br2c2 <> n
whip[1]: Br2c2{w .} ==> Pr2c2 <> ew
whip[1]: Br2c2{w .} ==> Pr2c3 <> ew
whip[1]: Br2c2{w .} ==> Pr2c2 <> ne
whip[1]: Pr2c2{sw .} ==> Br1c2 <> sw
whip[1]: Pr2c2{sw .} ==> Br1c2 <> swn
whip[1]: Br2c2{w .} ==> Hr2c2 <> 1
H-single : Hr2c2 = 0
whip[1]: Pr2c3{ne .} ==> Br1c3 <> ne
whip[1]: Pr2c3{ne .} ==> Br1c3 <> e
whip[1]: Pr2c3{ne .} ==> Br1c3 <> n
whip[1]: Pr2c3{ne .} ==> Br1c3 <> o
whip[1]: Pr3c3{ew .} ==> Br2c2 <> w
whip[1]: Br2c2{e .} ==> Pr2c2 <> ns
whip[1]: Pr2c2{sw .} ==> Br1c1 <> e
whip[1]: Pr2c2{sw .} ==> Br1c1 <> wne
whip[1]: Br1c1{o .} ==> Pr1c2 <> sw
whip[1]: Pr1c2{o .} ==> Br1c2 <> w
whip[1]: Pr1c2{o .} ==> Br1c2 <> ew
whip[1]: Pr2c2{sw .} ==> Br2c1 <> esw
whip[1]: Pr2c2{sw .} ==> Br2c1 <> ew
whip[1]: Pr2c2{sw .} ==> Br2c1 <> es
whip[1]: Pr2c2{sw .} ==> Br2c1 <> e
whip[1]: Br2c2{e .} ==> Pr2c2 <> sw
whip[1]: Pr2c2{o .} ==> Br2c1 <> ne
whip[1]: Pr2c2{o .} ==> Br2c1 <> wne
whip[1]: Br2c1{nes .} ==> Pr3c2 <> ns
whip[1]: Pr2c2{o .} ==> Br2c1 <> nes
whip[1]: Br2c1{o .} ==> Pr3c2 <> nw
whip[1]: Pr3c2{sw .} ==> Vr2c2 <> 1
V-single : Vr2c2 = 0
whip[1]: Pr2c2{o .} ==> Br1c1 <> swn
whip[1]: Br1c1{o .} ==> Pr2c1 <> ne
whip[1]: Pr2c1{se .} ==> Br2c1 <> n
whip[1]: Pr2c1{se .} ==> Br2c1 <> ns
whip[1]: Pr2c2{o .} ==> Br1c1 <> s
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue


.....................
:   :   :   :   :   :
.....   .............
:     1 : 3 :   :   :
.....................
:   :   : 1     :   :
.........   .........
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................

Grid solved : computation-time 53.9893139999999, nb-facts=<Fact-73354>








(solve 
5 5 
. . . . .
. . 1 . .
. 1 3 . .
. . . . .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 1 . . . 1 3 . . . . . . . . . . . .)
328 csp-variables, 787 candidates, 2665 csp-links and 12714 links. Initial density = 1.0276729681756
entering level W1 with <Fact-73105>
whip[1]: Br3c3{nes .} ==> Pr3c3 <> o
whip[1]: Br3c3{nes .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br3c3{nes .} ==> Pr3c4 <> o
whip[1]: Br3c3{nes .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> esw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> swn
whip[1]: Br3c3{nes .} ==> Pr4c3 <> o
whip[1]: Br3c3{nes .} ==> Pr4c3 <> sw
whip[1]: Pr4c3{ne .} ==> Br4c2 <> ne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> wne
whip[1]: Pr4c3{ne .} ==> Br4c2 <> nes
whip[1]: Br3c3{nes .} ==> Pr4c4 <> o
whip[1]: Br3c3{nes .} ==> Pr4c4 <> se
whip[1]: Pr4c4{sw .} ==> Br4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br4c4 <> swn
whip[1]: Pr4c4{sw .} ==> Br4c4 <> wne
whip[1]: Br3c2{w .} ==> Pr4c2 <> ne
whip[1]: Br3c2{w .} ==> Pr4c3 <> nw
whip[1]: Pr4c3{ew .} ==> Br4c3 <> o
whip[1]: Pr4c3{ew .} ==> Br4c3 <> e
whip[1]: Pr4c3{ew .} ==> Br4c3 <> s
whip[1]: Pr4c3{ew .} ==> Br4c3 <> es
whip[1]: Br2c3{w .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{sw .} ==> Br3c2 <> s
whip[1]: Br3c2{w .} ==> Pr4c2 <> se
whip[1]: Pr4c2{sw .} ==> Br4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c2 <> swn
whip[1]: Br3c2{w .} ==> Pr4c2 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c2 <> n
whip[1]: Pr4c2{sw .} ==> Br4c2 <> ns
whip[1]: Br4c2{esw .} ==> Hr4c2 <> 1
H-single : Hr4c2 = 0
whip[1]: Pr3c3{sw .} ==> Br3c2 <> w
whip[1]: Br3c2{n .} ==> Pr3c2 <> ns
whip[1]: Br3c2{n .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{o .} ==> Br3c1 <> ne
whip[1]: Pr3c2{o .} ==> Br3c1 <> wne
whip[1]: Pr3c2{o .} ==> Br3c1 <> nes
whip[1]: Br3c2{n .} ==> Pr4c2 <> ns
whip[1]: Pr4c2{sw .} ==> Br3c1 <> e
whip[1]: Pr4c2{sw .} ==> Br3c1 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c1 <> esw
whip[1]: Pr4c2{sw .} ==> Br4c1 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c1 <> es
whip[1]: Pr4c2{sw .} ==> Br4c1 <> e
whip[1]: Br3c2{n .} ==> Pr4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Vr3c2 <> 1
V-single : Vr3c2 = 0
whip[1]: Pr4c2{sw .} ==> Br4c1 <> swn
whip[1]: Pr4c2{sw .} ==> Br4c1 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c1 <> ns
whip[1]: Pr4c2{sw .} ==> Br4c1 <> n
whip[1]: Br2c3{w .} ==> Pr3c4 <> nw
whip[1]: Pr3c4{sw .} ==> Br3c4 <> o
whip[1]: Pr3c4{sw .} ==> Br3c4 <> e
whip[1]: Pr3c4{sw .} ==> Br3c4 <> s
whip[1]: Pr3c4{sw .} ==> Br3c4 <> es
whip[1]: Br3c2{e .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{ns .} ==> Br2c3 <> e
whip[1]: Br2c3{w .} ==> Pr2c4 <> se
whip[1]: Pr2c4{sw .} ==> Br2c4 <> nw
whip[1]: Pr2c4{sw .} ==> Br2c4 <> wne
whip[1]: Br2c3{w .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{sw .} ==> Br2c4 <> ew
whip[1]: Pr3c4{sw .} ==> Vr2c4 <> 1
V-single : Vr2c4 = 0
whip[1]: Pr3c3{ns .} ==> Br2c3 <> n
whip[1]: Br2c3{w .} ==> Pr2c3 <> ew
whip[1]: Br2c3{w .} ==> Pr2c4 <> ew
whip[1]: Pr2c4{o .} ==> Br1c3 <> s
whip[1]: Pr2c4{o .} ==> Br1c3 <> ns
whip[1]: Pr2c4{o .} ==> Br1c3 <> sw
whip[1]: Pr2c4{o .} ==> Br1c3 <> swn
whip[1]: Pr2c4{o .} ==> Br1c4 <> nes
whip[1]: Pr2c4{o .} ==> Br1c4 <> es
whip[1]: Pr2c4{o .} ==> Br1c4 <> ns
whip[1]: Pr2c4{o .} ==> Br1c4 <> s
whip[1]: Br2c3{w .} ==> Pr2c4 <> nw
whip[1]: Pr2c4{o .} ==> Hr2c3 <> 1
H-single : Hr2c3 = 0
whip[1]: Pr2c4{o .} ==> Br1c4 <> wne
whip[1]: Pr2c4{o .} ==> Br1c4 <> ew
whip[1]: Pr2c4{o .} ==> Br1c4 <> nw
whip[1]: Pr2c4{o .} ==> Br1c4 <> w
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.........   .........
:   :   : 1     :   :
.....................
:     1 : 3 :   :   :
.....   .............
:   :   :   :   :   :
.....................
:   :   :   :   :   :
.....................





(solve 
5 5 
. . . . .
. . 1 . .
. 1 2 . .
. . . 3 .
. . . . . 
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . 1 . . . 1 2 . . . . . 3 . . . . . .)
328 csp-variables, 774 candidates, 2569 csp-links and 12298 links. Initial density = 1.02774184274831
entering level W1 with <Fact-71621>
whip[1]: Br4c4{nes .} ==> Pr4c4 <> o
whip[1]: Br4c4{nes .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{nes .} ==> Pr4c5 <> o
whip[1]: Br4c4{nes .} ==> Pr4c5 <> ne
whip[1]: Pr4c5{sw .} ==> Br3c5 <> sw
whip[1]: Pr4c5{sw .} ==> Br3c5 <> esw
whip[1]: Pr4c5{sw .} ==> Br3c5 <> swn
whip[1]: Br4c4{nes .} ==> Pr5c4 <> o
whip[1]: Br4c4{nes .} ==> Pr5c4 <> sw
whip[1]: Pr5c4{ne .} ==> Br5c3 <> ne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> wne
whip[1]: Pr5c4{ne .} ==> Br5c3 <> nes
whip[1]: Br4c4{nes .} ==> Pr5c5 <> o
whip[1]: Br4c4{nes .} ==> Pr5c5 <> se
whip[1]: Pr5c5{sw .} ==> Br5c5 <> nw
whip[1]: Br3c2{w .} ==> Pr4c2 <> ne
whip[1]: Br3c2{w .} ==> Pr4c3 <> nw
whip[1]: Br2c3{w .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{sw .} ==> Br3c2 <> s
whip[1]: Br3c2{w .} ==> Pr4c2 <> se
whip[1]: Pr4c2{sw .} ==> Br4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c2 <> swn
whip[1]: Pr4c2{sw .} ==> Br4c2 <> wne
whip[1]: Br3c2{w .} ==> Pr4c2 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c2 <> n
whip[1]: Pr4c2{sw .} ==> Br4c2 <> ne
whip[1]: Pr4c2{sw .} ==> Br4c2 <> ns
whip[1]: Br4c2{nes .} ==> Pr4c3 <> ew
whip[1]: Pr4c2{sw .} ==> Hr4c2 <> 1
H-single : Hr4c2 = 0
whip[1]: Pr3c3{sw .} ==> Br3c2 <> w
whip[1]: Br3c2{n .} ==> Pr3c2 <> ns
whip[1]: Br3c2{n .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{o .} ==> Br3c1 <> ne
whip[1]: Pr3c2{o .} ==> Br3c1 <> wne
whip[1]: Pr3c2{o .} ==> Br3c1 <> nes
whip[1]: Br3c2{n .} ==> Pr4c2 <> ns
whip[1]: Pr4c2{sw .} ==> Br3c1 <> e
whip[1]: Pr4c2{sw .} ==> Br3c1 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c1 <> esw
whip[1]: Pr4c2{sw .} ==> Br4c1 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c1 <> es
whip[1]: Pr4c2{sw .} ==> Br4c1 <> e
whip[1]: Br3c2{n .} ==> Pr4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Vr3c2 <> 1
V-single : Vr3c2 = 0
whip[1]: Pr4c2{sw .} ==> Br4c1 <> swn
whip[1]: Pr4c2{sw .} ==> Br4c1 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c1 <> ns
whip[1]: Pr4c2{sw .} ==> Br4c1 <> n
whip[1]: Br2c3{w .} ==> Pr3c4 <> nw
whip[1]: Br3c2{e .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{ns .} ==> Br2c3 <> e
whip[1]: Br2c3{w .} ==> Pr2c4 <> se
whip[1]: Pr2c4{sw .} ==> Br2c4 <> nw
whip[1]: Pr2c4{sw .} ==> Br2c4 <> swn
whip[1]: Pr2c4{sw .} ==> Br2c4 <> wne
whip[1]: Br2c3{w .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{sw .} ==> Br2c4 <> ew
whip[1]: Pr3c4{sw .} ==> Br2c4 <> w
whip[1]: Br2c3{w .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> esw
whip[1]: Br2c4{nes .} ==> Pr2c4 <> sw
whip[1]: Br2c4{nes .} ==> Pr2c4 <> ns
whip[1]: Pr2c4{ew .} ==> Vr2c4 <> 1
V-single : Vr2c4 = 0
whip[1]: Pr3c3{ns .} ==> Br2c3 <> n
whip[1]: Br2c3{w .} ==> Pr2c3 <> ew
whip[1]: Br2c3{w .} ==> Pr2c4 <> ew
whip[1]: Pr2c4{o .} ==> Br1c3 <> s
whip[1]: Pr2c4{o .} ==> Br1c3 <> ns
whip[1]: Pr2c4{o .} ==> Br1c3 <> sw
whip[1]: Pr2c4{o .} ==> Br1c3 <> swn
whip[1]: Pr2c4{o .} ==> Br1c4 <> nes
whip[1]: Pr2c4{o .} ==> Br1c4 <> es
whip[1]: Pr2c4{o .} ==> Br1c4 <> ns
whip[1]: Pr2c4{o .} ==> Br1c4 <> s
whip[1]: Br2c3{w .} ==> Pr2c4 <> nw
whip[1]: Pr2c4{o .} ==> Hr2c3 <> 1
H-single : Hr2c3 = 0
whip[1]: Pr2c4{o .} ==> Br1c4 <> wne
whip[1]: Pr2c4{o .} ==> Br1c4 <> ew
whip[1]: Pr2c4{o .} ==> Br1c4 <> nw
whip[1]: Pr2c4{o .} ==> Br1c4 <> w
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.....................
:   :   :   :   :   :
.........   .........
:   :   : 1     :   :
.....................
:     1 : 2 :   :   :
.....   .............
:   :   :   : 3 :   :
.....................
:   :   :   :   :   :
.....................




(solve 
6 6
. . . . . .
. . 1 . . .
. 1 2 . . .
. . . 2 . .
. . . . 3 .
. . . . . .
)
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: W   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . . . 1 . . . . 1 2 . . . . . . 2 . . . . . . 3 . . . . . . .)
445 csp-variables, 1126 candidates, 3946 csp-links and 18972 links. Initial density = 0.748845470692718
entering level W1 with <Fact-105541>
whip[1]: Br5c5{nes .} ==> Pr5c5 <> o
whip[1]: Br5c5{nes .} ==> Pr5c5 <> nw
whip[1]: Pr5c5{sw .} ==> Br4c4 <> es
whip[1]: Br4c4{sw .} ==> Pr4c4 <> nw
whip[1]: Pr4c4{sw .} ==> Br3c3 <> es
whip[1]: Br3c3{sw .} ==> Pr3c3 <> nw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> es
whip[1]: Pr3c3{sw .} ==> Br2c2 <> esw
whip[1]: Pr3c3{sw .} ==> Br2c2 <> nes
whip[1]: Br3c3{sw .} ==> Pr3c3 <> o
whip[1]: Br4c4{sw .} ==> Pr4c4 <> o
whip[1]: Br5c5{nes .} ==> Pr5c6 <> o
whip[1]: Br5c5{nes .} ==> Pr5c6 <> ne
whip[1]: Pr5c6{sw .} ==> Br4c6 <> sw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> esw
whip[1]: Pr5c6{sw .} ==> Br4c6 <> swn
whip[1]: Br5c5{nes .} ==> Pr6c5 <> o
whip[1]: Br5c5{nes .} ==> Pr6c5 <> sw
whip[1]: Pr6c5{ne .} ==> Br6c4 <> ne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> wne
whip[1]: Pr6c5{ne .} ==> Br6c4 <> nes
whip[1]: Br5c5{nes .} ==> Pr6c6 <> o
whip[1]: Br5c5{nes .} ==> Pr6c6 <> se
whip[1]: Pr6c6{sw .} ==> Br6c6 <> nw
whip[1]: Br3c2{w .} ==> Pr4c2 <> ne
whip[1]: Br3c2{w .} ==> Pr4c3 <> nw
whip[1]: Br2c3{w .} ==> Pr3c3 <> ne
whip[1]: Pr3c3{sw .} ==> Br3c2 <> s
whip[1]: Br3c2{w .} ==> Pr4c2 <> se
whip[1]: Pr4c2{sw .} ==> Br4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c2 <> swn
whip[1]: Pr4c2{sw .} ==> Br4c2 <> wne
whip[1]: Br3c2{w .} ==> Pr4c2 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c2 <> n
whip[1]: Pr4c2{sw .} ==> Br4c2 <> ne
whip[1]: Pr4c2{sw .} ==> Br4c2 <> ns
whip[1]: Br4c2{nes .} ==> Pr4c3 <> ew
whip[1]: Pr4c2{sw .} ==> Hr4c2 <> 1
H-single : Hr4c2 = 0
whip[1]: Pr3c3{sw .} ==> Br3c2 <> w
whip[1]: Br3c2{n .} ==> Pr3c2 <> ns
whip[1]: Br3c2{n .} ==> Pr3c2 <> sw
whip[1]: Pr3c2{o .} ==> Br3c1 <> ne
whip[1]: Pr3c2{o .} ==> Br3c1 <> wne
whip[1]: Pr3c2{o .} ==> Br3c1 <> nes
whip[1]: Br3c2{n .} ==> Pr4c2 <> ns
whip[1]: Pr4c2{sw .} ==> Br3c1 <> e
whip[1]: Pr4c2{sw .} ==> Br3c1 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c1 <> esw
whip[1]: Pr4c2{sw .} ==> Br4c1 <> ew
whip[1]: Pr4c2{sw .} ==> Br4c1 <> es
whip[1]: Pr4c2{sw .} ==> Br4c1 <> e
whip[1]: Br3c2{n .} ==> Pr4c2 <> nw
whip[1]: Pr4c2{sw .} ==> Vr3c2 <> 1
V-single : Vr3c2 = 0
whip[1]: Pr4c2{sw .} ==> Br4c1 <> swn
whip[1]: Pr4c2{sw .} ==> Br4c1 <> nw
whip[1]: Pr4c2{sw .} ==> Br4c1 <> ns
whip[1]: Pr4c2{sw .} ==> Br4c1 <> n
whip[1]: Br2c3{w .} ==> Pr3c4 <> nw
whip[1]: Br3c2{e .} ==> Pr3c3 <> sw
whip[1]: Pr3c3{ns .} ==> Br2c3 <> e
whip[1]: Br2c3{w .} ==> Pr2c4 <> se
whip[1]: Pr2c4{sw .} ==> Br2c4 <> nw
whip[1]: Pr2c4{sw .} ==> Br2c4 <> swn
whip[1]: Pr2c4{sw .} ==> Br2c4 <> wne
whip[1]: Br2c3{w .} ==> Pr3c4 <> ns
whip[1]: Pr3c4{sw .} ==> Br2c4 <> ew
whip[1]: Pr3c4{sw .} ==> Br2c4 <> w
whip[1]: Br2c3{w .} ==> Pr3c4 <> ne
whip[1]: Pr3c4{sw .} ==> Br2c4 <> sw
whip[1]: Pr3c4{sw .} ==> Br2c4 <> esw
whip[1]: Br2c4{nes .} ==> Pr2c4 <> sw
whip[1]: Br2c4{nes .} ==> Pr2c4 <> ns
whip[1]: Pr2c4{ew .} ==> Vr2c4 <> 1
V-single : Vr2c4 = 0
whip[1]: Pr3c3{ns .} ==> Br2c3 <> n
whip[1]: Br2c3{w .} ==> Pr2c3 <> ew
whip[1]: Br2c3{w .} ==> Pr2c4 <> ew
whip[1]: Pr2c4{o .} ==> Br1c3 <> s
whip[1]: Pr2c4{o .} ==> Br1c3 <> ns
whip[1]: Pr2c4{o .} ==> Br1c3 <> sw
whip[1]: Pr2c4{o .} ==> Br1c3 <> swn
whip[1]: Pr2c4{o .} ==> Br1c4 <> nes
whip[1]: Pr2c4{o .} ==> Br1c4 <> es
whip[1]: Pr2c4{o .} ==> Br1c4 <> ns
whip[1]: Pr2c4{o .} ==> Br1c4 <> s
whip[1]: Br2c3{w .} ==> Pr2c4 <> nw
whip[1]: Pr2c4{o .} ==> Hr2c3 <> 1
H-single : Hr2c3 = 0
whip[1]: Pr2c4{o .} ==> Br1c4 <> wne
whip[1]: Pr2c4{o .} ==> Br1c4 <> ew
whip[1]: Pr2c4{o .} ==> Br1c4 <> nw
whip[1]: Pr2c4{o .} ==> Br1c4 <> w
GRID 0 SOLVED. rating-type = W, MOST COMPLEX RULE TRIED = bivalue

.........................
:   :   :   :   :   :   :
.........   .............
:   :   : 1     :   :   :
.........................
:     1 : 2 :   :   :   :
.....   .................
:   :   :   : 2 :   :   :
.........................
:   :   :   :   : 3 :   :
.........................
:   :   :   :   :   :   :
.........................







---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

DIAGONAL-1-1 REDUCIBLE TO W1 ???

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------

;;; INNER


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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 1 . . . . 1 . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1333
Simulated elimination of 1233
V-single : Vr3c3 = 0
H-single : Hr3c3 = 0
diagonal-1-1-{r3c3...r2c2}-with-no-nw-inner-line ==> Hr3c2 = 0, Vr2c3 = 0
P-single : Pr3c3 = o
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   : 1     :   :
.....   .   .....
:   :     1 :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.39197000000001, nb-facts=<Fact-45848>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 1 . . . . 1 . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1323
Simulated elimination of 1232
V-single : Vr2c3 = 0
H-single : Hr3c2 = 0
diagonal-1-1-{r2c2...r3c3}-with-no-se-inner-line ==> Hr3c3 = 0, Vr3c3 = 0
P-single : Pr3c3 = o
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   : 1     :   :
.....   .   .....
:   :     1 :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.55721000000005, nb-facts=<Fact-45848>



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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . 1 . . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1333
Simulated elimination of 1232
V-single : Vr3c3 = 0
H-single : Hr3c2 = 0
diagonal-1-1-{r3c2...r2c3}-with-no-ne-inner-line ==> Hr3c3 = 0, Vr2c3 = 0
P-single : Pr3c3 = o
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   :     1 :   :
.....   .   .....
:   : 1     :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.60380700000007, nb-facts=<Fact-45848>



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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . 1 . . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1323
Simulated elimination of 1233
V-single : Vr2c3 = 0
H-single : Hr3c3 = 0
diagonal-1-1-{r2c3...r3c2}-with-no-sw-inner-line ==> Hr3c2 = 0, Vr3c3 = 0
P-single : Pr3c3 = o
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.................
:   :     1 :   :
.....   .   .....
:   : 1     :   :
.................
:   :   :   :   :
.................

Grid solved : computation-time 6.65204900000003, nb-facts=<Fact-45848>






;;; OUTER

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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 1 . . . . 1 . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1334
Simulated elimination of 1243
V-single : Vr3c4 = 0
H-single : Hr4c3 = 0
diagonal-1-1-{r3c3...r2c2}-with-no-nw-inner-line ==> Hr2c2 = 0, Vr2c2 = 0
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.....   .........
:     1 :   :   :
.................
:   :   : 1     :
.........   .....
:   :   :   :   :
.................

Grid solved : computation-time 6.29640600000005, nb-facts=<Fact-45847>




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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . 1 . . . . 1 . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1322
Simulated elimination of 1222
V-single : Vr2c2 = 0
H-single : Hr2c2 = 0
diagonal-1-1-{r2c2...r3c3}-with-no-se-inner-line ==> Hr4c3 = 0, Vr3c4 = 0
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.....   .........
:     1 :   :   :
.................
:   :   : 1     :
.........   .....
:   :   :   :   :
.................

Grid solved : computation-time 6.35278500000004, nb-facts=<Fact-45847>



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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . 1 . . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1332
Simulated elimination of 1242
V-single : Vr3c2 = 0
H-single : Hr4c2 = 0
diagonal-1-1-{r3c2...r2c3}-with-no-ne-inner-line ==> Hr2c3 = 0, Vr2c4 = 0
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.........   .....
:   :   : 1     :
.................
:     1 :   :   :
.....   .........
:   :   :   :   :
.................

Grid solved : computation-time 6.25938499999995, nb-facts=<Fact-45847>



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
*****  SlitherRules 1.2 based on CSP-Rules 1.2, config: Bb+   *****
       *****  H/V - N - P - B - I order for Singles   *****
(. . . . . . 1 . . 1 . . . . . .)
229 csp-variables, 501 candidates, 1567 csp-links and 7442 links. Initial density = 1.48542914171657
Simulated elimination of 1324
Simulated elimination of 1223
V-single : Vr2c4 = 0
H-single : Hr2c3 = 0
diagonal-1-1-{r2c3...r3c2}-with-no-sw-inner-line ==> Hr4c2 = 0, Vr3c2 = 0
GRID 0 SOLVED. rating-type = Bb+, MOST COMPLEX RULE TRIED = diagonal-3-2s+1-on-edge
.................
:   :   :   :   :
.........   .....
:   :   : 1     :
.................
:     1 :   :   :
.....   .........
:   :   :   :   :
.................

Grid solved : computation-time 6.33929000000001, nb-facts=<Fact-45847>





(bind ?*simulated-eliminations*
    (create$ 
    )
)


