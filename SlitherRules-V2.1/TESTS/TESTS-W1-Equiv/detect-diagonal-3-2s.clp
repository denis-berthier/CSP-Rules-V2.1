
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TEST OF DETECT-DIAGONAL-3-2s
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

detection  of diagonals 3-2s

---------------------------------------------------------------------------------
---------------------------------------------------------------------------------
---------------------------------------------------------------------------------


(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .
)
(facts)
f-49084 (diagonal-3-2s 0 6 6 6 6 sw 1)
f-49085 (diagonal-3-2s 0 6 6 6 6 se 1)
f-49086 (diagonal-3-2s 0 6 6 6 6 ne 1)
f-49087 (diagonal-3-2s 0 6 6 6 6 nw 1)
f-49088 (diagonal-3-2s 0 6 6 5 5 nw 2)



(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . 2 . . . .
. 3 . . . . .
. . . . . . .
)
(facts)
f-49084 (diagonal-3-2s 0 6 2 6 2 sw 1)
f-49085 (diagonal-3-2s 0 6 2 6 2 se 1)
f-49086 (diagonal-3-2s 0 6 2 6 2 ne 1)
f-49087 (diagonal-3-2s 0 6 2 6 2 nw 1)
f-49088 (diagonal-3-2s 0 6 2 5 3 ne 2)





(solve
7 7
. . . . . . .
. 3 . . . . .
. . 2 . . . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
)
(facts)
f-49084 (diagonal-3-2s 0 2 2 2 2 sw 1)
f-49085 (diagonal-3-2s 0 2 2 2 2 se 1)
f-49086 (diagonal-3-2s 0 2 2 2 2 ne 1)
f-49087 (diagonal-3-2s 0 2 2 2 2 nw 1)
f-49088 (diagonal-3-2s 0 2 2 3 3 se 2)



(solve
7 7
. . . . . . .
. . . . . 3 .
. . . . 2 . .
. . . . . . .
. . . . . . .
. . . . . . .
. . . . . . .
)
(facts)
f-49084 (diagonal-3-2s 0 2 6 2 6 sw 1)
f-49085 (diagonal-3-2s 0 2 6 2 6 se 1)
f-49086 (diagonal-3-2s 0 2 6 2 6 ne 1)
f-49087 (diagonal-3-2s 0 2 6 2 6 nw 1)
f-49088 (diagonal-3-2s 0 2 6 3 5 sw 2)




(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .
)



(solve
7 7
. . . . . . .
. . . . . . .
. . . . . . .
. . . 2 . . .
. . 2 . . . .
. 3 . . . . .
. . . . . . .
)



(solve
7 7
. . . . . . .
. . . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .
)



(solve
7 7
. . . . . . .
. . . . . . .
. . . . 2 . .
. . . 2 . . .
. . 2 . . . .
. 3 . . . . .
. . . . . . .
)



(solve
7 7
. . . . . . .
. 2 . . . . .
. . 2 . . . .
. . . 2 . . .
. . . . 2 . .
. . . . . 3 .
. . . . . . .
)



(solve
7 7
. . . . . . .
. . . . . 2 .
. . . . 2 . .
. . . 2 . . .
. . 2 . . . .
. 3 . . . . .
. . . . . . .
)
(facts)
f-49060 (diagonal-3-2s 0 6 2 6 2 sw 1)
f-49061 (diagonal-3-2s 0 6 2 6 2 se 1)
f-49062 (diagonal-3-2s 0 6 2 6 2 ne 1)
f-49063 (diagonal-3-2s 0 6 2 6 2 nw 1)
f-49064 (diagonal-3-2s 0 6 2 5 3 ne 2)
f-49065 (diagonal-3-2s 0 6 2 4 4 ne 3)
f-49066 (diagonal-3-2s 0 6 2 3 5 ne 4)
f-49067 (diagonal-3-2s 0 6 2 2 6 ne 5)





(solve
8 8
. . . . . . . .
. 2 . . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 3 .
. . . . . . . .
)
(facts)
f-62209 (diagonal-3-2s 0 7 7 7 7 sw 1)
f-62210 (diagonal-3-2s 0 7 7 7 7 se 1)
f-62211 (diagonal-3-2s 0 7 7 7 7 ne 1)
f-62212 (diagonal-3-2s 0 7 7 7 7 nw 1)
f-62213 (diagonal-3-2s 0 7 7 6 6 nw 2)
f-62214 (diagonal-3-2s 0 7 7 5 5 nw 3)
f-62215 (diagonal-3-2s 0 7 7 4 4 nw 4)
f-62216 (diagonal-3-2s 0 7 7 3 3 nw 5)
f-62217 (diagonal-3-2s 0 7 7 2 2 nw 6)






(solve
8 8
. . . . . . . .
. . . . . . 2 .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 3 . . . . . .
. . . . . . . .
)
(facts)
f-62209 (diagonal-3-2s 0 7 2 7 2 sw 1)
f-62210 (diagonal-3-2s 0 7 2 7 2 se 1)
f-62211 (diagonal-3-2s 0 7 2 7 2 ne 1)
f-62212 (diagonal-3-2s 0 7 2 7 2 nw 1)
f-62213 (diagonal-3-2s 0 7 2 6 3 ne 2)
f-62214 (diagonal-3-2s 0 7 2 5 4 ne 3)
f-62215 (diagonal-3-2s 0 7 2 4 5 ne 4)
f-62216 (diagonal-3-2s 0 7 2 3 6 ne 5)
f-62217 (diagonal-3-2s 0 7 2 2 7 ne 6)



(solve
8 8
. . . . . . . .
. . . . . . 3 .
. . . . . 2 . .
. . . . 2 . . .
. . . 2 . . . .
. . 2 . . . . .
. 2 . . . . . .
. . . . . . . .
)
(facts)
f-62209 (diagonal-3-2s 0 2 7 2 7 sw 1)
f-62210 (diagonal-3-2s 0 2 7 2 7 se 1)
f-62211 (diagonal-3-2s 0 2 7 2 7 ne 1)
f-62212 (diagonal-3-2s 0 2 7 2 7 nw 1)
f-62213 (diagonal-3-2s 0 2 7 3 6 sw 2)
f-62214 (diagonal-3-2s 0 2 7 4 5 sw 3)
f-62215 (diagonal-3-2s 0 2 7 5 4 sw 4)
f-62216 (diagonal-3-2s 0 2 7 6 3 sw 5)
f-62217 (diagonal-3-2s 0 2 7 7 2 sw 6)




(solve
8 8
. . . . . . . .
. 3 . . . . . .
. . 2 . . . . .
. . . 2 . . . .
. . . . 2 . . .
. . . . . 2 . .
. . . . . . 2 .
. . . . . . . .
)
(facts)
f-62209 (diagonal-3-2s 0 2 2 2 2 sw 1)
f-62210 (diagonal-3-2s 0 2 2 2 2 se 1)
f-62211 (diagonal-3-2s 0 2 2 2 2 ne 1)
f-62212 (diagonal-3-2s 0 2 2 2 2 nw 1)
f-62213 (diagonal-3-2s 0 2 2 3 3 se 2)
f-62214 (diagonal-3-2s 0 2 2 4 4 se 3)
f-62215 (diagonal-3-2s 0 2 2 5 5 se 4)
f-62216 (diagonal-3-2s 0 2 2 6 6 se 5)
f-62217 (diagonal-3-2s 0 2 2 7 7 se 6)





(solve
9 9
. . . . . . . . .
. . . . . . . 2 .
. . . . . . 2 . .
. . . . . 2 . . .
. . . . 2 . . . .
. . . 2 . . . . .
. . 2 . . . . . .
. 3 . . . . . . .
. . . . . . . . .
)
(facts)
f-76930 (diagonal-3-2s 0 8 2 8 2 sw 1)
f-76931 (diagonal-3-2s 0 8 2 8 2 se 1)
f-76932 (diagonal-3-2s 0 8 2 8 2 ne 1)
f-76933 (diagonal-3-2s 0 8 2 8 2 nw 1)
f-76934 (diagonal-3-2s 0 8 2 7 3 ne 2)
f-76935 (diagonal-3-2s 0 8 2 6 4 ne 3)
f-76936 (diagonal-3-2s 0 8 2 5 5 ne 4)
f-76937 (diagonal-3-2s 0 8 2 4 6 ne 5)
f-76938 (diagonal-3-2s 0 8 2 3 7 ne 6)
f-76939 (diagonal-3-2s 0 8 2 2 8 ne 7)





(solve
9 9
. . . . . . . . .
. 2 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 3 .
. . . . . . . . .
)
(facts)
f-76930 (diagonal-3-2s 0 8 8 8 8 sw 1)
f-76931 (diagonal-3-2s 0 8 8 8 8 se 1)
f-76932 (diagonal-3-2s 0 8 8 8 8 ne 1)
f-76933 (diagonal-3-2s 0 8 8 8 8 nw 1)
f-76934 (diagonal-3-2s 0 8 8 7 7 nw 2)
f-76935 (diagonal-3-2s 0 8 8 6 6 nw 3)
f-76936 (diagonal-3-2s 0 8 8 5 5 nw 4)
f-76937 (diagonal-3-2s 0 8 8 4 4 nw 5)
f-76938 (diagonal-3-2s 0 8 8 3 3 nw 6)
f-76939 (diagonal-3-2s 0 8 8 2 2 nw 7)





(solve
9 9
. . . . . . . . .
. . . . . . . 3 .
. . . . . . 2 . .
. . . . . 2 . . .
. . . . 2 . . . .
. . . 2 . . . . .
. . 2 . . . . . .
. 2 . . . . . . .
. . . . . . . . .
)
(facts)
f-76930 (diagonal-3-2s 0 2 8 2 8 sw 1)
f-76931 (diagonal-3-2s 0 2 8 2 8 se 1)
f-76932 (diagonal-3-2s 0 2 8 2 8 ne 1)
f-76933 (diagonal-3-2s 0 2 8 2 8 nw 1)
f-76934 (diagonal-3-2s 0 2 8 3 7 sw 2)
f-76935 (diagonal-3-2s 0 2 8 4 6 sw 3)
f-76936 (diagonal-3-2s 0 2 8 5 5 sw 4)
f-76937 (diagonal-3-2s 0 2 8 6 4 sw 5)
f-76938 (diagonal-3-2s 0 2 8 7 3 sw 6)
f-76939 (diagonal-3-2s 0 2 8 8 2 sw 7)




(solve
9 9
. . . . . . . . .
. 3 . . . . . . .
. . 2 . . . . . .
. . . 2 . . . . .
. . . . 2 . . . .
. . . . . 2 . . .
. . . . . . 2 . .
. . . . . . . 2 .
. . . . . . . . .
)
(facts)
f-76930 (diagonal-3-2s 0 2 2 2 2 sw 1)
f-76931 (diagonal-3-2s 0 2 2 2 2 se 1)
f-76932 (diagonal-3-2s 0 2 2 2 2 ne 1)
f-76933 (diagonal-3-2s 0 2 2 2 2 nw 1)
f-76934 (diagonal-3-2s 0 2 2 3 3 se 2)
f-76935 (diagonal-3-2s 0 2 2 4 4 se 3)
f-76936 (diagonal-3-2s 0 2 2 5 5 se 4)
f-76937 (diagonal-3-2s 0 2 2 6 6 se 5)
f-76938 (diagonal-3-2s 0 2 2 7 7 se 6)
f-76939 (diagonal-3-2s 0 2 2 8 8 se 7)

