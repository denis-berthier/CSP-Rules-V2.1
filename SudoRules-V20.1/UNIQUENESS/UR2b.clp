
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              UNIQUE RECTANGLE, UR2b
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

(defrule activate-ur2b
	(declare (salience ?*ur2b-salience*))
	(logical (play) (context (name ?cont)))
=>
	(assert (technique ?cont ur2))
	(bind ?*level* Uniqueness)
    (bind ?*technique* (sym-cat ?*technique* +UR2b))
)



(defrule ur2b-vertical
	(declare (salience ?*ur2b-salience*))
	(technique ?cont ur2b)

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
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	?cand <- (candidate (context ?cont) (status cand) (row ?rowx&~?row1&~?row2) (column ?col2) (number ?nb3))
=>
	(retract ?cand)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur2b*) then
		(printout t "number " (number-name ?nb3) " : vertical unique rectangle type 2b in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
        (printout t ?*implication-sign* (row-name ?rowx) (column-name ?col2) ?*non-equal-sign* (numeral-name ?nb3) crlf)
	)
)



(defrule ur2b-horizontal
	(declare (salience ?*ur2b-salience*))
	(technique ?cont ur2b)

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
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))


	?cand <- (candidate (context ?cont) (status cand) (row ?row2) (column ?colx&~?col1&~?col2) (number ?nb3))
=>
	(retract ?cand)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur2b*) then
		(printout t "number " (number-name ?nb3) " : horizontal unique rectangle type 2b in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
        (printout t ?*implication-sign* (row-name ?row2) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nb3) crlf)
	)
)


