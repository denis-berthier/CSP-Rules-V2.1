
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              HIDDEN PAIRS
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





(defrule activate-hidden-pairs
	(declare (salience ?*hidden-pairs-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont pair))
=>
	(assert (technique ?cont hidden-pairs))
	(bind ?*technique* HP)
)



;;; rows

(defrule L2-hidden-pairs-in-a-row
	(declare (salience ?*hidden-pairs-salience*))
	(technique ?cont hidden-pairs)
	;;; if, in a context, there is a row ?row
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; and two cells in this row (defined by ?col1 < ?col2),
	;;; such that, for each of the two numbers ?nb1 and ?nb2, these cells are the
	;;; only ones possible for its instances in this row,
	;;; and ?nb1 and ?nb2 are actual candidates to these cells
	;;; (otherwise, there would be a hidden single on the row)
	;;; (this also entails that there are no c-values for ?nb1 or ?nb2 on this row)
	
	;;; equivalently:
	;;; if, in a context, there is a row ?row
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; that are confined to exactly the same two cells in this row (defined by ?col1 < ?col2)
	
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col1))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col2&:(< ?col1 ?col2)))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?colx&~?col1&~?col2)))
	
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?colx&~?col1&~?col2)))
	
	;;; then any other number should be eliminated from the candidates for these two cells
	?cand <- (candidate (context ?cont) (status cand) (row ?row)
						(column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
						(number ?nbz&~?nb1&~?nb2))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
			(printout t "hidden-pairs-in-a-row: "
				(row-name ?row)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)



;;; columns

(defrule L2-hidden-pairs-in-a-column
	(declare (salience ?*hidden-pairs-salience*))
	(technique ?cont hidden-pairs)
	;;; if, in a context, there is a column ?col
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; and two cells in this column (defined by ?row1 < ?row2),
	;;; such that, for each of the two numbers ?nb1 and ?nb2, these cells are the
	;;; only ones possible for its instances in this column,
	;;; and ?nb1 and ?nb2 are actual candidates to these cells
	;;; (otherwise, there would be a hidden single on the column)
	;;; (this also entails that there are no c-values for ?nb1 or ?nb2 on this column)
	
	;;; equivalently:
	;;; if, in a context, there is a column ?col
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; that are confined to exactly the same two cells in this column (defined by ?row1 < ?row2),
	
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row1))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row2&:(< ?row1 ?row2)))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?rowx&~?row1&~?row2)))
	
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?rowx&~?row1&~?row2)))
	
	;;; then any other number should be eliminated from the candidates for these two cells
	?cand <- (candidate (context ?cont) (status cand) (column ?col)
						(row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
						(number ?nbz&~?nb1&~?nb2))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
			(printout t "hidden-pairs-in-a-column: "
				(column-name ?col)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)



