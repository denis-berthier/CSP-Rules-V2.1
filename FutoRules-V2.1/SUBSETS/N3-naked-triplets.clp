
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              NAKED TRIPLETS
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





(defrule activate-naked-triplets
	(declare (salience ?*activate-triplets-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont triplet))
=>
	(if ?*print-levels* then (printout t Entering_level_S3))
	(assert (technique ?cont naked-triplets))
	(bind ?*technique* NT)
)


(defrule track-triplets
	(declare (salience ?*activate-triplets-salience*))
	(logical (play))
	?level <- (technique ?cont naked-triplets)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


;;; rows

(defrule L3-naked-triplets-in-a-row
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)
	;;; if, in a context, there is a row ?row,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this row (defined by ?col1 < ?col2 < ?col3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb3&~?nb1&~?nb2))

	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))	

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?col3&:(< ?col2 ?col3)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	;;; then retract ?nb1, ?nb2 and ?nb3 from the candidates for other cells
	;;; in this row
	?candx <- (candidate (context ?cont) (status cand) (row ?row)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
						 (column ?colz&~?col1&~?col2&~?col3))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
			(printout t "naked-triplets-in-a-row: "
				(row-name ?row)
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
				?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)


;;; columns

(defrule L3-naked-triplets-in-a-column
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)
	;;; if, in a context, there is a column ?col,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this column (defined by ?row1 < ?row2 < ?row3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb3&~?nb1&~?nb2))

	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb2&~?nb3)))	

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?row3&:(< ?row2 ?row3)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	;;; then retract ?nb1, ?nb2 and ?nb3 from the candidates for other cells
	;;; in this column
	?candx <- (candidate (context ?cont) (status cand) (column ?col)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
						 (row ?rowz&~?row1&~?row2&~?row3))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
			(printout t "naked-triplets-in-a-column: "
				(column-name ?col)
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)



