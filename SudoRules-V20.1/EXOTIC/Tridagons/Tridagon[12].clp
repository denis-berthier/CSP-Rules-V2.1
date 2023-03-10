
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              TRIDAGON ELIMINATION RULE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - March 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; The trivalue oddagon 3-digit pattern, contradictory in T&E(3).
;;; Cells with a "o" are the only places where the 3 digits can appear as givens

;;; The 3 (Sudoku isomorphic) patterns identified here,
;;; cells in blocks ?b11, ?b12, ?b21 and ?b22 as shown

;;; +-----------------------+
;;; ! X . . ! X . . ! . . . !
;;; ! . X . ! . X . ! . . . !
;;; ! . . X ! . . X ! . . . !
;;; +-----------------------+
;;; ! X . . ! . . X ! . . . !
;;; ! . X . ! . X . ! . . . !
;;; ! . . X ! X . . ! . . . !
;;; +-----------------------+
;;; ! . . . ! . . . ! o o o !
;;; ! . . . ! . . . ! o o o !
;;; ! . . . ! . . . ! o o o !
;;; +-----------------------+

;;; +-----------------------+
;;; ! X . . ! X . . ! . . . !
;;; ! . X . ! . X . ! . . . !
;;; ! . . X ! . . X ! . . . !
;;; +-----------------------+
;;; ! X . . ! X . . ! . . . !
;;; ! . X . ! . . X ! . . . !
;;; ! . . X ! . X . ! . . . !
;;; +-----------------------+
;;; ! . . . ! . . . ! o o o !
;;; ! . . . ! . . . ! o o o !
;;; ! . . . ! . . . ! o o o !
;;; +-----------------------+

;;; +-----------------------+
;;; ! X . . ! X . . ! . . . !
;;; ! . X . ! . X . ! . . . !
;;; ! . . X ! . . X ! . . . !
;;; +-----------------------+
;;; ! X . . ! . X . ! . . . !
;;; ! . X . ! X . . ! . . . !
;;; ! . . X ! . . X ! . . . !
;;; +-----------------------+
;;; ! . . . ! . . . ! o o o !
;;; ! . . . ! . . . ! o o o !
;;; ! . . . ! . . . ! o o o !
;;; +-----------------------+


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TRIDAGON PATTERN
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-tridagon[12]
    (declare (salience ?*activate-tridagon[12]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont tridagon[12]))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_tridagon[12]"))
    (assert (technique ?cont tridagon[12]))
    ;;; In order to allow the ORkFW[n] to be found as the hardest techniques,
    ;;; don't take the tridagon[12] into account:
    ; (bind ?*technique* tridagon[12])
)


(defrule track-tridagon[12]
    (declare (salience ?*activate-tridagon[12]-salience*))
    ?level <- (technique ?cont tridagon[12])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


(defrule tridagon[12]
	(declare (salience ?*tridagon[12]-salience*))
	(technique ?cont tridagon[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb4&~?nb1&~?nb2&~?nb3))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band as the 1st:
    (candidate (context ?cont) (status cand) (block ?b12&~?b11) (square ?sq14) (row ?row1) (column ?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15&~?sq14) (row ?row2) (column ?col5&~?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16&~?sq14&~?sq15) (row ?row3) (column ?col6&~?col4&~?col5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b12) (square ?sq16) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    ; (test (progn (printout t "block " ?b12 " OK" crlf) TRUE))

    ;;; 3rd block, b21, in same stack as the 1st:
    (candidate (context ?cont) (status cand) (block ?b21&~?b11) (square ?sq41) (column ?col1) (row ?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51&~?sq41) (column ?col2) (row ?row5&~?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61&~?sq41&~?sq51) (column ?col3) (row ?row6&~?row4&~?row5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b21 " OK" crlf) TRUE))

    ;;; 4th block, b22, in same band as the 3rd and in same stack as the 2nd:
    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i&~?sq44i) (row ?row5) (column ?col5i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i&~?sq44i&~?sq55i) (row ?row6) (column ?col6i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    ; (test (progn (printout t "block " ?b22 " OK" crlf) TRUE))

    ;;; additional structural conditions on the 4th block
    (test (or
            (and (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4))
            (and (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))

    ;;; targets
    ?candz1 <- (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    ?candz2 <- (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb2))
    ?candz3 <- (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb3))
    
    ; (test (progn (printout t "targets OK" crlf) TRUE))

=>
    (if ?*print-actions* then
        (bind ?cell-indices (create$
            (cell-index ?row1 ?col1) (cell-index ?row2 ?col2) (cell-index ?row3 ?col3)
            (cell-index ?row1 ?col4) (cell-index ?row2 ?col5) (cell-index ?row3 ?col6)
            (cell-index ?row4 ?col1) (cell-index ?row5 ?col2) (cell-index ?row6 ?col3)
            (cell-index ?row4 ?col4i) (cell-index ?row5 ?col5i) (cell-index ?row6 ?col6i)
        ))
        (printout t crlf)
        (pretty-print-mark-current-resolution-state ?cell-indices (create$ (nrc-to-label ?nb4 ?row1 ?col1)))
        (printout t
            "tridagon for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells (marked #): " (row-name ?row1) (column-name ?col1)  " (target cell, marked @), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells (marked #): " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells (marked #): " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells (marked #): " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* (row-name ?row1) (column-name ?col1) ?*non-equal-sign* ?nb1 "," ?nb2 "," ?nb3 crlf
        )
    )
    (retract ?candz1)
    (retract ?candz2)
    (retract ?candz3)
    (if (not (member$ Trid ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* Trid)))
    (bind ?*has-tridagon* TRUE)
)
    



