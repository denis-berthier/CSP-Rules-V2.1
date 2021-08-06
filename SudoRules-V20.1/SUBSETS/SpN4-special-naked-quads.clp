
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SPECIAL NAKED QUADS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; rows

(defrule L4-special-naked-quads-in-a-row
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a row ?row,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this row (defined by ?col1, ?col2, ?col3 and ?col4),
	;;; that have candidates {?nb1 ?nb2} {?nb1 ?nb3} {?nb1 ?nb4} {?nb2 ?nb3 ?nb4}

	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col3&:(< ?col2 ?col3)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nbx&~?nb1&~?nb4)))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col4&~?col1&~?col2&~?col3))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col4) (number ?nb3))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col4) (number ?nbx&~?nb2&~?nb3&~?nb4)))
    
    ;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells in this row
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (row ?row)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (column ?colz&~?col1&~?col2&~?col3&~?col4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
            (printout t "special-naked-quads-in-a-row: "
                (row-name ?row)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-a-row ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-special-naked-quads-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont special-naked-quads-in-a-row ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2, ?nb3 and ?nb4 in other cells in this row
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (row ?row)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L4-special-naked-quads-in-a-column
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a column ?col,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this column (defined by ?row1, ?row2, ?row3 and ?row4),
	;;; that have candidates {?nb1 ?nb2} {?nb1 ?nb3} {?nb1 ?nb4} {?nb2 ?nb3 ?nb4}

	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row3&:(< ?row2 ?row3)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nbx&~?nb1&~?nb4)))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row4&~?row1&~?row2&~?row3))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row4) (number ?nb3))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row4) (number ?nbx&~?nb2&~?nb3&~?nb4)))
    
    ;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells in this column
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (column ?col)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (row ?rowz&~?row1&~?row2&~?row3&~?row4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
            (printout t "special-naked-quads-in-a-column: "
                (column-name ?col)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-a-column ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-special-naked-quads-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont special-naked-quads-in-a-column ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2, ?nb3 and ?nb4 in other cells in this column
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (column ?col)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; blocks

(defrule L4-special-naked-quads-in-a-block
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a block ?bl,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this block (defined by ?sq1, ?sq2 and ?sq3),
	;;; that have candidates {?nb1 ?nb2} {?nb1 ?nb3} {?nb1 ?nb4} {?nb2 ?nb3 ?nb4}

	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb1))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq2&:(< ?sq1 ?sq2)))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq3&:(< ?sq2 ?sq3)))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq3) (number ?nbx&~?nb1&~?nb4)))
	
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb2) (square ?sq4&~?sq1&~?sq2&~?sq3))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq4) (number ?nb3))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq4) (number ?nbx&~?nb2&~?nb3&~?nb4)))
	
	(rc-cell ?row1 ?col1 ?bl ?sq1)
	(rc-cell ?row2 ?col2 ?bl ?sq2)
	(rc-cell ?row3 ?col3 ?bl ?sq3)
	(rc-cell ?row4 ?col4 ?bl ?sq4)
    
    ;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells in this block
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (block ?bl)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                          (square ?sqz&~?sq1&~?sq2&~?sq3&~?sq4)
                          (row ?rowz) (column ?colz))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
            (printout t "special-naked-quads-in-a-block: "
                (block-name ?bl)
                ?*starting-cell-symbol* (row-name ?row1) (column-name ?col1) ?*separation-sign-in-cell* (row-name ?row2) (column-name ?col2)
                ?*separation-sign-in-cell* (row-name ?row3) (column-name ?col3) ?*separation-sign-in-cell* (row-name ?row4) (column-name ?col4)
                ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-a-block ?zzz ?bl ?sq1 ?sq2 ?sq3 ?sq4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule assert-L4-special-naked-quads-in-a-block
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont special-naked-quads-in-a-block ?zzz ?bl ?sq1 ?sq2 ?sq3 ?sq4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2, ?nb3 and ?nb4 in other cells in this block
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (block ?bl)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                          (square ?sqz&~?sq1&~?sq2&~?sq3&~?sq4)
                          (row ?rowz) (column ?colz))
    
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)


