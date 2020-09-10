
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              UNIQUE RECTANGLE, UR3
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





;;; WARNING: this rule depends on the assumption of uniqueness
;;; do NOT use this rule if you are not sure the puzzle has a unique solution

(defrule activate-ur3
	(declare (salience ?*ur3-salience*))
	(logical (play) (context (name ?cont)))
=>
	(assert (technique ?cont ur3))
	(bind ?*level* Uniqueness)
	(bind ?*technique* UR3)
)



(defrule ur3-vertical
	(declare (salience ?*ur3-salience*))
	(technique ?cont ur3)

	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2&~?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	(candidate (context ?cont) (status cand) (row ?row2&~?row1) (column ?col1) (block ?blk2&~?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb4&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb4)))
	
	(candidate (context ?cont) (status cand) (row ?row3&~?row1&~?row2) (column ?col2) (number ?nb3))
	(candidate (context ?cont) (status cand) (row ?row3) (column ?col2) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (row ?row3) (column ?col2) (number ?nbx&~?nb3&~?nb4)))

	?cand <- (candidate (context ?cont) (status cand) (row ?rowx&~?row1&~?row2&~?row3) (column ?col2)
						(number ?nbx&:(or (eq ?nbx ?nb3) (eq ?nbx ?nb4))))
=>
	(retract ?cand)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur3*) then
		(printout t "number " (number-name ?nb3) " : vertical unique rectangle type 3 in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
        (printout t ?*implication-sign* (row-name ?rowx) (column-name ?col2) ?*non-equal-sign* (numeral-name ?nbx) crlf)
	)
)



(defrule ur3-horizontal
	(declare (salience ?*ur3-salience*))
	(technique ?cont ur3)

	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (row ?row2&~?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2&~?col1) (block ?blk2&~?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb4&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb4)))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col3&~?col1&~?col2) (number ?nb3))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col3) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col3) (number ?nbx&~?nb3&~?nb4)))


	?cand <- (candidate (context ?cont) (status cand) (row ?row2) (column ?colx&~?col1&~?col2&~?col3)
						(number ?nbx&:(or (eq ?nbx ?nb3) (eq ?nbx ?nb4))))
=>
	(retract ?cand)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur3*) then
		(printout t "number " (number-name ?nb3) " : horizontal unique rectangle type 3 in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
        (printout t ?*implication-sign* (row-name ?row2) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx) crlf)
	)
)


