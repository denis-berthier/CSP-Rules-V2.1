
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              UNIQUE RECTANGLE, UR4
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

(defrule activate-ur4
	(declare (salience ?*ur4-salience*))
	(logical (play) (context (name ?cont)))
=>
	(assert (technique ?cont ur4))
	(bind ?*level* Uniqueness)
	(bind ?*technique* (sym-cat ?*technique* +UR4))
)



(defrule ur4-vertical
	(declare (salience ?*ur4-salience*))
	(technique ?cont ur4)

	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2&~?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nbx&~?nb1&~?nb2)))

	?cand1 <- (candidate (context ?cont) (status cand) (row ?row2&~?row1) (column ?col1) (block ?blk2&~?blk1) (square ?sq3) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb3&~?nb1&~?nb2))
	;(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	?cand2 <- (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (square ?sq4) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	;(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	(forall (square ?sqy&~?sq3&~?sq4) 
		(not (candidate (context ?cont) (status cand) (block ?blk2) (square ?sqy) (number ?nb2))))
=>
	(retract ?cand1)
	(retract ?cand2)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur4*) then
		(printout t "vertical unique rectangle type 4 in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
        (printout t ?*implication-sign*
            (row-name ?row2) (column-name ?col1) ?*non-equal-sign* (numeral-name ?nb1) ", "
            (row-name ?row2) (column-name ?col2) ?*non-equal-sign* (numeral-name ?nb1) crlf
        )
	)
)



(defrule ur4-horizontal
	(declare (salience ?*ur4-salience*))
	(technique ?cont ur4)

	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (row ?row2&~?row1) (column ?col1) (block ?blk1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	?cand1 <- (candidate (context ?cont) (status cand) (row ?row1) (column ?col2&~?col1) (block ?blk2&~?blk1) (square ?sq3) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	;(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	?cand2 <- (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (square ?sq4) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	;(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	(forall (square ?sqy&~?sq3&~?sq4) 
		(not (candidate (context ?cont) (status cand) (block ?blk2) (square ?sqy) (number ?nb2))))
=>
	(retract ?cand1)
	(retract ?cand2)
    (printout t "************ BEWARE: ASSUMPTION OF UNIQUENESS USED ******************" crlf)
	(if (or ?*print-actions* ?*print-ur4*) then
		(printout t "horizontal unique rectangle type 4 in cells ")
		(printout t (row-name ?row1) (column-name ?col1) ", ")
		(printout t (row-name ?row1) (column-name ?col2) ", ")
		(printout t (row-name ?row2) (column-name ?col1) " and ")
		(printout t (row-name ?row2) (column-name ?col2))
		(printout t ?*implication-sign*
            (row-name ?row1) (column-name ?col2) ?*non-equal-sign* (numeral-name ?nb1) ", "
            (row-name ?row2) (column-name ?col2) ?*non-equal-sign* (numeral-name ?nb1) crlf
        )
	)
)


