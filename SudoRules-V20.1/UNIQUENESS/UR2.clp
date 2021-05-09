
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              UNIQUE RECTANGLE, UR2
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

(defrule activate-ur2
	(declare (salience ?*ur2-salience*))
	(logical (play) (context (name ?cont)))
=>
	(assert (technique ?cont ur2))
	(bind ?*level* Uniqueness)
    (bind ?*technique* (sym-cat ?*technique* +UR2))
)



(defrule ur2-vertical
	(declare (salience ?*ur2-salience*))
	(technique ?cont ur2)

	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2&~?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (row ?row2&~?row1) (column ?col1) (block ?blk2&~?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	?cand <- (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx) (block ?blkx) (number ?nb3))
	(test (and	(not-same-cell ?rowx ?colx ?row2 ?col1)
				(not-same-cell ?rowx ?colx ?row2 ?col2)
				(or (eq ?rowx ?row2) (eq blkx ?blk2))
	))
=>
	(retract ?cand)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur2*) then
		(printout t "number " (number-name ?nb3) " : vertical unique rectangle type 2 in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
		(printout t ?*implication-sign* (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nb3) crlf)
	)
)



(defrule ur2-horizontal
	(declare (salience ?*ur2-salience*))
	(technique ?cont ur2)

	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (row ?row2&~?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2&~?col1) (block ?blk2&~?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))


	?cand <- (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx) (block ?blkx) (number ?nb3))
	(test (and	(not-same-cell ?rowx ?colx ?row1 ?col2)
				(not-same-cell ?rowx ?colx ?row2 ?col2)
				(or (eq ?colx ?col2) (eq blkx ?blk2))
	))
=>
	(retract ?cand)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur2*) then
		(printout t "number " (number-name ?nb3) " : horizontal unique rectangle type 2 in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
        (printout t ?*implication-sign* (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nb3) crlf)
	)
)


