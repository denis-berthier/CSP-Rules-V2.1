
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              NAKED QUADS
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





(defrule activate-naked-quads
	(declare (salience ?*activate-quads-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont quad))
=>
	(if ?*print-levels* then (printout t Entering_level_S4))
	(assert (technique ?cont naked-quads))
	(bind ?*technique* NQ)
)


(defrule track-quads
	(declare (salience ?*activate-quads-salience*))
	(logical (play))
	?level <- (technique ?cont naked-quads)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


;;; rows

(defrule L4-naked-quads-in-a-row
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a row ?row,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this row (defined by ?col1, ?col2, ?col3 and ?col4),
	;;; that have candidates only among ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and such that ?nb1, ?nb2, ?nb3 and ?nb4 form a 4-chain on these four cells

	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb3&~?nb1&~?nb2))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?col3&~?col2&:(< ?col1 ?col3)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nb4&~?nb1&~?nb2&~?nb3))

	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb4) (column ?col4&~?col2&~?col3&:(or (< ?col2 ?col4) (< ?col3 ?col4))))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col4) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col4) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))

	;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells
	;;; in this row
	?candx <- (candidate (context ?cont) (status cand) (row ?row)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
						 (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-naked-quads*) then
			(printout t "naked-quads-in-a-row: "
				(row-name ?row)
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
				?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)



;;; columns

(defrule L4-naked-quads-in-a-column
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a column ?col,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this column (defined by ?row1, ?row2, ?row3 and ?row4),
	;;; that have candidates only among ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and such that ?nb1, ?nb2, ?nb3 and ?nb4 form a 4-chain on these four cells

	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb3&~?nb1&~?nb2))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?row3&~?row2&:(< ?row1 ?row3)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nb4&~?nb1&~?nb2&~?nb3))

	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb4) (row ?row4&~?row2&~?row3&:(or (< ?row2 ?row4) (< ?row3 ?row4))))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row4) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row4) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	
	;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells
	;;; in this column
	?candx <- (candidate (context ?cont) (status cand) (column ?col)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
						 (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-naked-quads*) then
			(printout t "naked-quads-in-a-column: "
				(column-name ?col)
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)





