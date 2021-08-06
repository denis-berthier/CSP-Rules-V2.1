
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              NAKED QUINTS, NON-INTERRUPTED VERSION
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





(defrule activate-naked-quints
	(declare (salience ?*activate-quints-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont quad))
=>
	(if ?*print-levels* then (printout t "entering level S5"))
	(assert (technique ?cont naked-quints))
	(bind ?*technique* NQ5)
)


(defrule track-quints
	(declare (salience ?*activate-quints-salience*))
	?level <- (technique ?cont naked-quints)
=>
	(if ?*print-levels* then (printout t " with " ?level crlf))
)



;;; rows

(defrule L5-naked-quints-in-a-row
	(declare (salience ?*naked-quints-salience*))
	(technique ?cont naked-quints)

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col2&:(< ?col1 ?col2)) (number ?nb2))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col2) (number ?nb3&~?nb1&~?nb2))

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col3&~?col2&:(< ?col1 ?col3)) (number ?nb3))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col3) (number ?nb4&~?nb1&~?nb2&~?nb3))

	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col3) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col4&~?col2&~?col3&:(or (< ?col2 ?col4) (< ?col3 ?col4))) (number ?nb4))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col4) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col4) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))

	?candx <- (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
						 (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L5* ?*print-naked-quints*) then
			(printout t "naked-quints-in-horiz-sector: "
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

(defrule L5-naked-quints-in-a-column
	(declare (salience ?*naked-quints-salience*))
	(technique ?cont naked-quints)

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row2&:(< ?row1 ?row2)) (number ?nb2))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row2) (number ?nb3&~?nb1&~?nb2))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row3&~?row2&:(< ?row1 ?row3)) (number ?nb3))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row3) (number ?nb4&~?nb1&~?nb2&~?nb3))

	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row3) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row4&~?row2&~?row3&:(or (< ?row2 ?row4) (< ?row3 ?row4))) (number ?nb4))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row4) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row4) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	
	?candx <- (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
						 (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L5* ?*print-naked-quints*) then
			(printout t "naked-quints-in-verti-sector: "
				(column-name ?col)
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)


