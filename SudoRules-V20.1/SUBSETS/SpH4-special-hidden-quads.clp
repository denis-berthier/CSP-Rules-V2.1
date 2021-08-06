
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              SPECIAL HIDDEN QUADS
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

(defrule L4-special-hidden-quads-in-a-row
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a row ?row
	;;; and there are four cells in this row (defined by ?col1, ?col2, ?col3 and ?col4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; that are candidates exactly for {?col1 ?col2} {?col1 ?col3} {?col1 ?col4} {?col2 ?col3 ?col4}
	
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col1))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col2&~?col1))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?colx&~?col1&~?col2)))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col3&~?col1&~?col2))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?colx&~?col1&~?col3)))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?col4&~?col1&~?col2&~?col3))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?colx&~?col1&~?col4)))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb4) (column ?col3))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb4) (column ?col4))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb4) (column ?colx&~?col2&~?col3&~?col4)))
    
    ;;; then any other number should be eliminated from the candidates for these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
            (printout t "special-hidden-quads-in-a-row: "
                (row-name ?row)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-hidden-quads-in-a-row ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-special-hidden-quads-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont special-hidden-quads-in-a-row ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L4-special-hidden-quads-in-a-column
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a column ?col
	;;; and there are four cells in this column (defined by ?row1, ?row2, ?row3 and ?row4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; such that, in this column, these four numbers
	;;; that are candidates exactly for {?row1 ?row2} {?row1 ?row3} {?row1 ?row4} {?row2 ?row3 ?row4}
	
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row1))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row2&~?row1))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?rowx&~?row1&~?row2)))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row3&~?row1&~?row2))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?rowx&~?row1&~?row3)))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?row4&~?row1&~?row2&~?row3))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?rowx&~?row1&~?row4)))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb4) (row ?row3))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb4) (row ?row4))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb4) (row ?rowx&~?row2&~?row3&~?row4)))
    
    ;;; then any other number should be eliminated from the candidates for these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
            (printout t "special-hidden-quads-in-a-column: "
                (column-name ?col)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-hidden-quads-in-a-column ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-special-hidden-quads-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont special-hidden-quads-in-a-column ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; blocks

(defrule L4-special-hidden-quads-in-a-block
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a block ?bl
	;;; and there are four cells in this block (defined by ?sq1, ?sq2, ?sq3 and ?sq4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; such that, in this block, these four numbers 
	;;; that are candidates exactly for {?sq1 ?sq2} {?sq1 ?sq3} {?sq1 ?sq4} {?sq2 ?sq3 ?sq4}
	
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq1))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq2&~?sq1))
	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sqx&~?sq1&~?sq2)))

	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb2) (square ?sq3&~?sq1&~?sq2))
	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb2) (square ?sqx&~?sq1&~?sq3)))

	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb3&~?nb2&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb3) (square ?sq4&~?sq1&~?sq2&~?sq3))
	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb3) (square ?sqx&~?sq1&~?sq4)))
	
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb4) (square ?sq3))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb4) (square ?sq4))
	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb4) (square ?sqx&~?sq2&~?sq3&~?sq4)))
	
	(rc-cell ?row1 ?col1 ?bl ?sq1)
	(rc-cell ?row2 ?col2 ?bl ?sq2)
	(rc-cell ?row3 ?col3 ?bl ?sq3)
	(rc-cell ?row4 ?col4 ?bl ?sq4)
	;;;the four cells cannot be aligned, therefore it cannot be a hidden quads in rows or columns
    
    ;;; then any other number should be eliminated from the candidates for these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (block ?bl)
                        (square ?sqz&:(or (eq ?sqz ?sq1) (eq ?sqz ?sq2) (eq ?sqz ?sq3) (eq ?sqz ?sq4)))
                        (row ?rowz) (column ?colz)
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
            (printout t "special-hidden-quads-in-a-block: "
                (block-name ?bl)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4)?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) (column-name ?col1) ?*separation-sign-in-cell* (row-name ?row2) (column-name ?col2)
                ?*separation-sign-in-cell* (row-name ?row3) (column-name ?col3)
                ?*separation-sign-in-cell* (row-name ?row4) (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-hidden-quads-in-a-block ?zzz ?bl ?sq1 ?sq2 ?sq3 ?sq4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-special-hidden-quads-in-a-block
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont special-hidden-quads-in-a-block ?zzz ?bl ?sq1 ?sq2 ?sq3 ?sq4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (block ?bl)
                        (square ?sqz&:(or (eq ?sqz ?sq1) (eq ?sqz ?sq2) (eq ?sqz ?sq3) (eq ?sqz ?sq4)))
                        (row ?rowz) (column ?colz)
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)

