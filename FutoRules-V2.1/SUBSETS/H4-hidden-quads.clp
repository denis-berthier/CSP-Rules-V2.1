
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              HIDDEN QUADS
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





(defrule activate-hidden-quads
	(declare (salience ?*hidden-quads-salience*))
    (logical
        (play) (context
        (name ?cont))
        (not (deactivate ?cont quad))
    )
=>
	(assert (technique ?cont hidden-quads))
	(bind ?*technique* HQ)
)


;;; rows

(defrule L4-hidden-quads-in-a-row
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a row ?row
	;;; and there are four cells in this row (defined by ?col1, ?col2, ?col3 and ?col4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; such that, in this row, these four numbers are confined exactly to ?col1, ?col2, ?col3 and ?col4
	
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col1) )
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col2&~?col1))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col3&~?col1&~?col2))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nb3&~?nb2&:(< ?nb1 ?nb3)))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?col4&~?col1&~?col2&~?col3))

	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?colx&~?col1&~?col2&~?col3&~?col4)))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col4) (number ?nb4&~?nb2&~?nb3&:(or (< ?nb2 ?nb4) (< ?nb3 ?nb4))))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb4) (column ?col1))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb4) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    
    ;;; then any other number should be eliminated from the candidates for these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
            (printout t "hidden-quads-in-a-row: "
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
        (assert (pseudo-blocked ?cont hidden-quads-in-a-row ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-hidden-quads-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont hidden-quads-in-a-row ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L4-hidden-quads-in-a-column
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a column ?col
	;;; and there are four cells in this column (defined by ?row1, ?row2, ?row3 and ?row4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; such that, in this column, these four numbers are confined exactly to ?row1, ?row2, ?row3 and ?row4
	
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row1) )
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row2&~?row1))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row3&~?row1&~?row2))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nb3&~?nb2&:(< ?nb1 ?nb3)))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?row4&~?row1&~?row2&~?row3))
	
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row4) (number ?nb4&~?nb2&~?nb3&:(or (< ?nb2 ?nb4) (< ?nb3 ?nb4))))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb4) (row ?row1))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb4) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    
    ;;; then any other number should be eliminated from the candidates for these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
            (printout t "hidden-quads-in-a-column: "
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
        (assert (pseudo-blocked ?cont hidden-quads-in-a-column ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4))
    )
)


(defrule apply-to-more-targets-L4-hidden-quads-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont hidden-quads-in-a-column ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



