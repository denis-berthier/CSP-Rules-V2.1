
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              SUDORULES / EXOTIC
;;;                              ORk ANTI-TRIDAGON
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ORk TRIDAGON PATTERN
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-ORk-anti-tridagon[12]
    (declare (salience ?*activate-ork-anti-tridagon[12]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont ORk-anti-tridagon[12]))
    )
=>
    (if ?*print-levels* then (printout t "Entering_level_ORk-anti-tridagon[12]"))
    (assert (technique ?cont ORk-anti-tridagon[12]))
    ;;; In order to allow the ORkXW[n] to be found as the hardest techniques,
    ;;; don't take the ORk-anti-tridagon[12] into account:
    ; (bind ?*technique* ORk-anti-tridagon[12])
    (assert (tridagon-type antidiag))
    (assert (tridagon-type diag))
)


(defrule track-ORk-anti-tridagon[12]
    (declare (salience ?*activate-ork-anti-tridagon[12]-salience*))
    ?level <- (technique ?cont ORk-anti-tridagon[12])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


(defrule ORk-anti-tridagon[12]
	(declare (salience ?*ork-anti-tridagon[12]-salience*))
	(logical (technique ?cont ORk-anti-tridagon[12]))

    ;;; general conditions on block b33 and numbers ?nb1, ?nb2 and ?nb3:
    (candidate (context ?cont) (status c-value) (number ?nb1) (block ?b33))
    (not (candidate (context ?cont) (status c-value) (number ?nb1) (block ?bxx&~?b33)))
    
    (candidate (context ?cont) (status c-value) (number ?nb2&:(< ?nb1 ?nb2)) (block ?b33))
    (not (candidate (context ?cont) (status c-value) (number ?nb2) (block ?bxx&~?b33)))

    (number ?nb3&~?nb1&~?nb2)
    (or
        (and (candidate (context ?cont) (status c-value) (number ?nb3&:(< ?nb2 ?nb3)) (block ?b33))
            (not (candidate (context ?cont) (status c-value) (number ?nb3) (block ?bxx&~?b33)))
        )
        (not (candidate (context ?cont) (status c-value) (number ?nb3) (block ?bxx)))
    )

    ;;; the conditions in each block ensure that the 3 squares in the block are in different rows and different columns
    
    ;;; 1st block, b11:
    ;;; target cell:
    (candidate (context ?cont) (status cand) (block ?b11&:(and (not (blocks-in-same-band ?b11 ?b33)) (not (blocks-in-same-stack ?b11 ?b33))))
        (square ?sq11) (row ?row1) (column ?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq11) (number ?nb3))

    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12&~?sq11) (row ?row2&:(< ?row1 ?row2)) (column ?col2&~?col1) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq12) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13&~?sq11&~?sq12) (row ?row3&:(< ?row2 ?row3)) (column ?col3&~?col1&~?col2) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b11) (square ?sq13) (number ?nb3))
    
    ; (test (progn (printout t "block " ?b11 " OK" crlf) TRUE))
    
    ;;; 2nd block, b12, in same band as the 1st:
    (candidate (context ?cont) (status cand) (block ?b12&:(and (< ?b11 ?b12) (not (blocks-in-same-stack ?b12 ?b33))))
        (square ?sq14) (row ?row1) (column ?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq14) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25&~?sq14) (row ?row2) (column ?col5&~?col4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq25) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36&~?sq14&~?sq25) (row ?row3) (column ?col6&~?col4&~?col5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b12) (square ?sq36) (number ?nb3))

    ; (test (progn (printout t "block " ?b12 " OK" crlf) TRUE))

    ;;; 3rd block, b21, in same stack as the 1st:
    (candidate (context ?cont) (status cand) (block ?b21&:(and (< ?b12 ?b21) (not (blocks-in-same-band ?b21 ?b33))))
        (square ?sq41) (column ?col1) (row ?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq41) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52&~?sq41) (column ?col2) (row ?row5&~?row4) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq52) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63&~?sq41&~?sq52) (column ?col3) (row ?row6&~?row4&~?row5) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b21) (square ?sq63) (number ?nb3))
    
    ; (test (progn (printout t "block " ?b21 " OK" crlf) TRUE))

    ;;; 4th block, b22, in same band as the 3rd and in same stack as the 2nd:
    (candidate (context ?cont) (status cand) (block ?b22&~?b11&~?b12&~?b21) (square ?sq44i) (row ?row4) (column ?col4i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq44i) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i&~?sq44i) (row ?row5) (column ?col5i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq55i) (number ?nb3))
    
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i&~?sq44i&~?sq55i) (row ?row6) (column ?col6i) (number ?nb1))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb2))
    (candidate (context ?cont) (status cand) (block ?b22) (square ?sq66i) (number ?nb3))

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
    (assert
        (ORk-relation
            (OR-name Trid)
            (OR-complexity 12)
            (context ?cont)
            (OR-size ?nb-guardians)
            (symmetrified FALSE)
            (OR-candidates ?guardians)
        )
    )
    (bind ?*has-tridagon* TRUE)
    (bind ?*ORk-size* ?nb-guardians)
    (bind ?*ORk-sizes-list* (create$ ?*ORk-sizes-list* ?nb-guardians))

    (if ?*print-actions* then
        (pretty-print-current-resolution-state)
        (printout t
            "OR" ?nb-guardians "-anti-tridagon[12] for digits " ?nb1 ", " ?nb2 " and " ?nb3 " in blocks: " crlf
            "        " (block-name ?b11) ", with cells: " (row-name ?row1) (column-name ?col1)  ", " (row-name ?row2) (column-name ?col2) ", " (row-name ?row3) (column-name ?col3) crlf
            "        " (block-name ?b12) ", with cells: " (row-name ?row1) (column-name ?col4)  ", " (row-name ?row2) (column-name ?col5) ", " (row-name ?row3) (column-name ?col6) crlf
            "        " (block-name ?b21) ", with cells: " (row-name ?row4) (column-name ?col1)  ", " (row-name ?row5) (column-name ?col2) ", " (row-name ?row6) (column-name ?col3) crlf
            "        " (block-name ?b22) ", with cells: " (row-name ?row4) (column-name ?col4i)  ", " (row-name ?row5) (column-name ?col5i) ", " (row-name ?row6) (column-name ?col6i) crlf
            "with " ?nb-guardians " guardians: " (print-list-of-labels ?guardians) crlf crlf
        )
    )
)


