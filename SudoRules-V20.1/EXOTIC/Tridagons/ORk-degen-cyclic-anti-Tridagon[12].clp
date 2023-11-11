
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              ORk DEGENERATE-ANTI-TRIDAGON
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; The non-degenerate trivalue oddagon 3-digit pattern, contradictory in T&E(3).
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



;;; For the degenerate case considered here, nothing is changed about the cell pattern or the tagets;
;;; what's changed is the contents of the 12 cells:
;;; in each of the 4 blocks:
;;; - each of the 3 cells must have at least two of the three digits;
;;; - two different cells must have at least two different digits
;;; (this is a cyclicity condition)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ORk TRIDAGON PATTERN
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-ORk-degen-cyclic-anti-tridagon[12]
    (declare (salience ?*activate-ork-degen-cyclic-anti-tridagon[12]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont ORk-degen-cyclic-anti-tridagon[12]))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_ORk-degen-cyclic-anti-tridagon[12]"))
    (assert (technique ?cont ORk-degen-cyclic-anti-tridagon[12]))
    ;;; In order to allow the ORkXW[n] to be found as the hardest techniques,
    ;;; don't take the ORk-degen-cyclic-anti-tridagon[12] into account:
    ; (bind ?*technique* ORk-degen-cyclic-anti-tridagon[12])
    (assert (tridagon-type antidiag))
    (assert (tridagon-type diag))
)


(defrule track-ORk-degen-cyclic-anti-tridagon[12]
    (declare (salience ?*activate-ork-degen-cyclic-anti-tridagon[12]-salience*))
    ?level <- (technique ?cont ORk-degen-cyclic-anti-tridagon[12])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule ORk-degen-cyclic-anti-tridagon[12]
	(declare (salience ?*ork-degen-cyclic-anti-tridagon[12]-salience*))
	(logical (technique ?cont ORk-degen-cyclic-anti-tridagon[12]))

    ;;; general conditions on block b33 and numbers ?nb1, ?nb2 and ?nb3 no longer hold
    (number ?nb1)
    (number ?nb2&:(< ?nb1 ?nb2))
    (number ?nb3&:(< ?nb2 ?nb3))

    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    (number ?nb1a&:(or (eq ?nb1a ?nb1) (eq ?nb1a ?nb2) (eq ?nb1a ?nb3)))
    (number ?nb2a&~?nb1a&:(or (eq ?nb2a ?nb1) (eq ?nb2a ?nb2) (eq ?nb2a ?nb3)))
    (number ?nb3a&~?nb1a&~?nb2a&:(or (eq ?nb3a ?nb1) (eq ?nb3a ?nb2) (eq ?nb3a ?nb3)))
    
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (row ?row1) (column ?col1) (number ?nb1a))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2a))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&:(< ?row1 ?row2)) (column ?col2&~?col1) (number ?nb2a))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3a))
    
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&:(< ?row2 ?row3)) (column ?col3&~?col1&~?col2) (number ?nb3a))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb1a))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band as the 1st:
    (number ?nb1b&:(or (eq ?nb1b ?nb1) (eq ?nb1b ?nb2) (eq ?nb1b ?nb3)))
    (number ?nb2b&~?nb1b&:(or (eq ?nb2b ?nb1) (eq ?nb2b ?nb2) (eq ?nb2b ?nb3)))
    (number ?nb3b&~?nb1b&~?nb2b&:(or (eq ?nb3b ?nb1) (eq ?nb3b ?nb2) (eq ?nb3b ?nb3)))

    (candidate (context ?cont) (status cand) (block ?b12&:(< ?b11 ?b12)) (square ?sq14) (row ?row1) (column ?col4) (number ?nb1b))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb2b))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25&~?sq14) (row ?row2) (column ?col5&~?col4) (number ?nb2b))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25) (number ?nb3b))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36&~?sq14&~?sq25) (row ?row3) (column ?col6&~?col4&~?col5) (number ?nb3b))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36) (number ?nb1b))

    ; (test (progn (printout t "block " ?b12 " OK" crlf) TRUE))

    ;;; 3rd block, b21, in same stack as the 1st:
    (number ?nb1c&:(or (eq ?nb1c ?nb1) (eq ?nb1c ?nb2) (eq ?nb1c ?nb3)))
    (number ?nb2c&~?nb1c&:(or (eq ?nb2c ?nb1) (eq ?nb2c ?nb2) (eq ?nb2c ?nb3)))
    (number ?nb3c&~?nb1c&~?nb2c&:(or (eq ?nb3c ?nb1) (eq ?nb3c ?nb2) (eq ?nb3c ?nb3)))

    (candidate (context ?cont) (status cand) (block ?b21&:(< ?b12 ?b21)) (square ?sq41) (column ?col1) (row ?row4) (number ?nb1c))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb2c))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52&~?sq41) (column ?col2) (row ?row5&~?row4) (number ?nb2c))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52) (number ?nb3c))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63&~?sq41&~?sq52) (column ?col3) (row ?row6&~?row4&~?row5) (number ?nb3c))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63) (number ?nb1c))
    
    ; (test (progn (printout t "block " ?b21 " OK" crlf) TRUE))

    ;;; 4th block, b22, in same band as the 3rd and in same stack as the 2nd:
    (number ?nb1d&:(or (eq ?nb1d ?nb1) (eq ?nb1d ?nb2) (eq ?nb1d ?nb3)))
    (number ?nb2d&~?nb1c&:(or (eq ?nb2d ?nb1) (eq ?nb2d ?nb2) (eq ?nb2d ?nb3)))
    (number ?nb3d&~?nb1d&~?nb2d&:(or (eq ?nb3d ?nb1) (eq ?nb3d ?nb2) (eq ?nb3d ?nb3)))

    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i) (number ?nb1d))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb2d))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i&~?sq44i) (row ?row5) (column ?col5i) (number ?nb2d))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb3d))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i&~?sq44i&~?sq55i) (row ?row6) (column ?col6i) (number ?nb3d))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb1d))

    ; (test (progn (printout t "block " ?b22 " OK" crlf) TRUE))

    ;;; additional structural conditions on the 4th block
    (tridagon-type ?type)
    (test (or
            (and (eq ?type antidiag) (eq ?col4i ?col6) (eq ?col5i ?col5) (eq ?col6i ?col4)) ; cells 357, i.e. cols 654 anti-diagonal case
            ;;; the next two cases are not equivalent if we specify ?nb2 < ?nb3:
            (and (eq ?type diag) (eq ?col4i ?col5) (eq ?col5i ?col4) (eq ?col6i ?col6)) ; cells 249, i.e. cols 546
            (and (eq ?type diag) (eq ?col4i ?col4) (eq ?col5i ?col6) (eq ?col6i ?col5)) ; cells 168, i.e. cols 465
    ))

=>
    ;;; find the additional candidates ("guardians")
    (bind ?nb-guardians 0)
    (bind ?guardians (create$))
    (do-for-all-facts
        ((?c candidate))
        (and (eq ?c:status cand)
            (neq ?c:number ?nb1)
            (neq ?c:number ?nb2)
            (neq ?c:number ?nb3)
            (or
                (and (eq ?c:row ?row1) (eq ?c:column ?col1))
                (and (eq ?c:row ?row1) (eq ?c:column ?col4))
                (and (eq ?c:row ?row2) (eq ?c:column ?col2))
                (and (eq ?c:row ?row2) (eq ?c:column ?col5))
                (and (eq ?c:row ?row3) (eq ?c:column ?col3))
                (and (eq ?c:row ?row3) (eq ?c:column ?col6))
                (and (eq ?c:row ?row4) (eq ?c:column ?col1))
                (and (eq ?c:row ?row4) (eq ?c:column ?col4i))
                (and (eq ?c:row ?row5) (eq ?c:column ?col2))
                (and (eq ?c:row ?row5) (eq ?c:column ?col5i))
                (and (eq ?c:row ?row6) (eq ?c:column ?col3))
                (and (eq ?c:row ?row6) (eq ?c:column ?col6i))
            )
        )
        (bind ?nb-guardians (+ ?nb-guardians 1))
        (bind ?guardians (create$ ?guardians ?c:label))
    )
    ;;; if there is only one guardian, rule Degenerate-Cyclic-Tridagon[12] takes care of it
    ; (if (> ?nb-guardians 1) then
    ;;; if there is only one guardian, generic rule apply-OR1-relation will take care of it
    (if (not (any-factp 
                ((?f ORk-relation))
                (and
                    (or (eq ?f:OR-name Trid) (eq ?f:OR-name Degen-Cycl-Trid))
                    (eq ?f:OR-complexity 12)
                    (<= ?f:OR-size ?nb-guardians)
                    (eq ?f:symmetrified FALSE)
                    (subsetp ?f:OR-candidates ?guardians)
                )
            )
        ) then
        (assert
            (ORk-relation
                (OR-name Degen-Cycl-Trid)
                (OR-complexity 12)
                (context ?cont)
                (OR-size ?nb-guardians)
                (symmetrified FALSE)
                (OR-candidates ?guardians)
            )
        )
        (bind ?*has-degenerate-cyclic-tridagon* TRUE)
        (bind ?*ORk-size* ?nb-guardians)
        (bind ?*ORk-sizes-list* (create$ ?*ORk-sizes-list* ?nb-guardians))

        (if ?*print-actions* then
            (printout t
                "Degen-Cycl-Trid-OR" ?nb-guardians "-relation for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
                "        " (block-name ?b11) ", with cells (marked #): " (row-name ?row1) (column-name ?col1)  ", " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
                "        " (block-name ?b12) ", with cells (marked #): " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
                "        " (block-name ?b21) ", with cells (marked #): " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
                "        " (block-name ?b22) ", with cells (marked #): " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
                "with " ?nb-guardians " guardians (in cells marked @): " (print-list-of-labels ?guardians) crlf crlf
            )
            (bind ?cell-indices (create$
                (cell-index ?row1 ?col1) (cell-index ?row2 ?col2) (cell-index ?row3 ?col3)
                (cell-index ?row1 ?col4) (cell-index ?row2 ?col5) (cell-index ?row3 ?col6)
                (cell-index ?row4 ?col1) (cell-index ?row5 ?col2) (cell-index ?row6 ?col3)
                (cell-index ?row4 ?col4i) (cell-index ?row5 ?col5i) (cell-index ?row6 ?col6i)
            ))
            (pretty-print-mark-current-resolution-state ?cell-indices ?guardians)
        )
    ;) ; end of old if
    )
)


