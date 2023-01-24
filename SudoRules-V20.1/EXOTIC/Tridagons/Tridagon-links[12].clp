
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              TRIDAGON LINKS
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





;;; The trivalue oddagon 3-digit pattern, contradctory in T&E(3).
;;; Cells with a "o" are the only places where the 3 digits can appear as givens

;;; The 3 (Sudoku isomorrphic) patterns identified here,
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
;;; TRIDAGON LINKS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule activate-tridagon-links[12]
    (declare (salience ?*activate-tridagon-link[12]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont tridagon-links[12]))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_tridagon_links[12]"))
    (assert (technique ?cont tridagon-links[12]))
    (bind ?*technique* tridagon-links[12])
    (assert (tridagon-type antidiag))
    (assert (tridagon-type diag))
)


(defrule track-tridagon-links[12]
    (declare (salience ?*activate-tridagon-link[12]-salience*))
    ?level <- (technique ?cont tridagon-links[12])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule tridagon-link[12]-same-block
	(declare (salience ?*tridagon-link[12]-salience*))
	(technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
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

    ;;; 4th block, b22, in same band and in same stack as the 1st:
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
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon link (same block) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) " (link cell), " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col4 ?row2 ?col5 ?row3 ?col6))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col1 ?row5 ?col2 ?row6 ?col3))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col4i ?row5 ?col5i ?row6 ?col6i))
)



(defrule tridagon-link[12]-horiz-same-row
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
    (candidate (context ?cont) (status cand) (block ?b12&~?b11) (square ?sq14) (row ?row1) (column ?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb3))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
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

    ;;; 4th block, b22, in same band and in same stack as the 1st:
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
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (horiz, same row) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  " (link cell), " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col1 ?row5 ?col2 ?row6 ?col3))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col4i ?row5 ?col5i ?row6 ?col6i))
)



(defrule tridagon-link[12]-horiz-different-row
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
    (candidate (context ?cont) (status cand) (block ?b12&~?b11) (square ?sq14) (row ?row1) (column ?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15&~?sq14) (row ?row2) (column ?col5&~?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nb3))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b12) (square ?sq15) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
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

    ;;; 4th block, b22, in same band and in same stack as the 1st:
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
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (horiz, different row) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) " (link cell), " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col1 ?row5 ?col2 ?row6 ?col3))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col4i ?row5 ?col5i ?row6 ?col6i))
)



(defrule tridagon-link[12]-verti-same-column
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
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
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51&~?sq41) (column ?col2) (row ?row5&~?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61&~?sq41&~?sq51) (column ?col3) (row ?row6&~?row4&~?row5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
    ; (test (progn (printout t "block " ?b21 " OK" crlf) TRUE))

    ;;; 4th block, b22, in same band and in same stack as the 1st:
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
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (verti, same column) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  " (link cell), " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col4 ?row2 ?col5 ?row3 ?col6))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col4i ?row5 ?col5i ?row6 ?col6i))
)



(defrule tridagon-link[12]-verti-different-column
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
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
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq51) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61&~?sq41&~?sq51) (column ?col3) (row ?row6&~?row4&~?row5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b21) (square ?sq61) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
    ; (test (progn (printout t "block " ?b21 " OK" crlf) TRUE))

    ;;; 4th block, b22, in same band and in same stack as the 1st:
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
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (verti, different column) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) " (link cell), " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col4 ?row2 ?col5 ?row3 ?col6))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col4i ?row5 ?col5i ?row6 ?col6i))
)



(defrule tridagon-link[12]-opposite-blocks-1
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
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

    ;;; 4th block, b22, in same band and in same stack as the 1st:
    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb3))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
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
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (opposite blocks) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  " (link cell), " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col4 ?row2 ?col5 ?row3 ?col6))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col1 ?row5 ?col2 ?row6 ?col3))
)



(defrule tridagon-link[12]-opposite-blocks-2
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
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

    ;;; 4th block, b22, in same band and in same stack as the 1st:
    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i&~?sq44i) (row ?row5) (column ?col5i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb3))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i&~?sq44i&~?sq55i) (row ?row6) (column ?col6i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    ; (test (progn (printout t "block " ?b22 " OK" crlf) TRUE))

    ;;; additional structural conditions on the 4th block
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (opposite blocks) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) " (link cell), " (row-name ?row6) (column-name ?col6i) crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col4 ?row2 ?col5 ?row3 ?col6))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col1 ?row5 ?col2 ?row6 ?col3))
)



(defrule tridagon-link[12]-opposite-blocks-3
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    
    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2&:(< ?nb1 ?nb2)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3&:(< ?nb2 ?nb3)))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nba&~?nb1&~?nb2&~?nb3) (label ?laba))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nba)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&~?row1) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nbx&~?nb1&~?nb2&~?nb3)))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&~?row1&~?row2) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    (not (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band:
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

    ;;; 4th block, b22, in same band and in same stack as the 1st:
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
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nbb&~?nb1&~?nb2&~?nb3&~?nba) (label ?labb&:(< ?laba ?labb)))
    (not (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nbb)))

    ; (test (progn (printout t "block " ?b22 " OK" crlf) TRUE))

    ;;; additional structural conditions on the 4th block
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))
    ;;; or write them using the rectangles form (doesn't work)
    ;(test (or (eq ?col4i ?col4) (eq ?col5i ?col5) (eq ?col6i ?col6)))

    ; (test (progn (printout t "additional conditions in " ?b22 " OK" crlf) TRUE))
    (not (OR-link ?cont 12 tridagon-link  ?laba ?labb))

=>
    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "tridagon-link (opposite blocks) for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  " (link cell), " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i)  " (link cell)" crlf
            ?*implication-sign* "tridagon-link[12](" (print-label ?laba) ", " (print-label ?labb) ")" crlf
        )
    )
    (assert (OR-link ?cont 12 tridagon-link  ?laba ?labb))
    (assert (OR-link ?cont 12 tridagon-link  ?labb ?laba))
    (bind ?*has-tridagon* TRUE)
    ;;; allow to start eleven's replacement method from this point:
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row1 ?col4 ?row2 ?col5 ?row3 ?col6))
    (assert (eleven-replacement-start ?cont ?nb1 ?nb2 ?nb3 ?row4 ?col1 ?row5 ?col2 ?row6 ?col3))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; TRIDAGON LINKS IMMEDIATE ELIMINATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule tridagon-link[12]-elimination
    (declare (salience ?*tridagon-link[12]-salience*))
    (technique ?cont tridagon-links[12])
    (OR-link ?cont 12 tridagon-link  ?laba ?labb)
    (exists-link ?cont ?laba ?zzz)
    (exists-link ?cont ?labb ?zzz)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-tridagon-link-12*) then
        (printout t "tridagon-link[12] between " (print-label ?laba) " and " (print-label ?labb)
            ?*implication-sign* (print-deleted-candidate ?zzz))
    )
    (assert (apply-rule-as-a-pseudo-block ?cont))
    (assert (pseudo-blocked ?cont tridagon-link[12]-elimination ?zzz ?laba ?labb))
)


(defrule apply-tridagon-link[12]-elimination-to-more-targets
   (declare (salience ?*apply-a-blocked-rule-salience*))
   (apply-rule-as-a-pseudo-block ?cont)
   (pseudo-blocked ?cont tridagon-link[12]-elimination ?zzz ?laba ?labb)
    ;;; identify one more target
   (exists-link ?cont ?laba ?zzz2&~?zzz)
   (exists-link ?cont ?labb ?zzz2)
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* *print-tridagon-link-12*) then
      (printout t ", ")
      (print-deleted-candidate ?zzz2)
   )
)
