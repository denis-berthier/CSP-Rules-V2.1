
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              BELTS OF CROSSES (OLD)
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





(defrule activate-cross
	(declare (salience ?*cross-salience*))
	(logical (play))
	(context (name ?cont))
=>
	(assert (technique ?cont cross))
)

(defrule activate-belts4
	(declare (salience ?*belts4-salience*))
	(logical (play))
	(context (name ?cont))
=>
	(assert (technique ?cont belts4))
	(bind ?*technique* BELT4)
)

	
	
(deffunction print-cross (?bl ?row1 ?row1a ?row1b ?sq11a ?sq11b ?col1 ?col1a ?col1b ?sq1a1 ?sq1b1 ?a1 ?b1 ?c1 ?d1 ?g1 ?h1)
	(printout t "  cross " (block-name ?bl) " " (row-name ?row1) (row-name ?row1a) (row-name ?row1b) " " (column-name ?col1) (column-name ?col1a) (column-name ?col1b) " " 
		(number-name ?a1) (number-name ?b1) (number-name ?c1) (number-name ?d1) (number-name ?g1) (number-name ?h1) 
		crlf)
)


(defrule cross
	(declare (salience ?*cross-salience*))
	(technique ?cont cross)
	;;; row ?row1
	(candidate (context ?cont) (status cand) (block ?bl) (row ?row1) (column ?col1a) (square ?sq11a) (number ?a1))
	(candidate (context ?cont) (status cand) (block ?bl) (row ?row1) (column ?col1a) (number ?c1&~?a1))
	
	(candidate (context ?cont) (status cand) (block ?bl) (row ?row1) (column ?col1b&:(< ?col1a ?col1b)) (square ?sq11b) (number ?b1&~a1&~?c1))
	(candidate (context ?cont) (status cand) (block ?bl) (row ?row1) (column ?col1b) (number ?d1&~?a1&~?b1&~?c1))
	
	(not (candidate (context ?cont) (status cand) (block ?bl) (row ?row1) (column ?col1a) (number ?nbx&~?a1&~?b1&~?c1&~?d1)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (row ?row1) (column ?col1b) (number ?nbx&~?a1&~?b1&~?c1&~?d1)))

	;;; column ?col1 (it is allowed be one of ?col1a or ?col1b)
	;;; the two rows must be different, but one of them may be ?row1
	;;; the four squares must be different
	(candidate (context ?cont) (status cand) (block ?bl) (column ?col1) (row ?row1a) (square ?sq1a1&~?sq11a&~?sq11b) (number ?e1&~?a1&~?b1))
	(candidate (context ?cont) (status cand) (block ?bl) (column ?col1) (row ?row1b&:(< ?row1a ?row1b)) (square ?sq1b1&~?sq11a&~?sq11b) (number ?f1&~?e1&~?a1&~?b1))
	(test (or (and (eq ?e1 ?c1) (eq ?f1 ?d1)) (and (eq ?e1 ?d1) (eq ?f1 ?c1))))
	
	(candidate (context ?cont) (status cand) (block ?bl) (column ?col1) (row ?row1a) (number ?g1&~?e1&~?f1))
	(candidate (context ?cont) (status cand) (block ?bl) (column ?col1) (row ?row1b) (number ?h1&~?e1&~?f1&~?g1))

	(not (candidate (context ?cont) (status cand) (block ?bl) (row ?row2) (column ?col1) (number ?nbx&~?e1&~?f1&~?g1&~?h1)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (row ?row3) (column ?col1) (number ?nbx&~?e1&~?f1&~?g1&~?h1)))
	
=>
	(assert (cross ?cont ?bl ?row1 ?row1a ?row1b ?sq11a ?sq11b ?col1 ?col1a ?col1b ?sq1a1 ?sq1b1 ?a1 ?b1 ?c1 ?d1 ?g1 ?h1))
;;;	(print-cross ?bl ?row1 ?row1a ?row1b ?sq11a ?sq11b ?col1 ?col1a ?col1b ?sq1a1 ?sq1b1 ?a1 ?b1 ?c1 ?d1 ?g1 ?h1)
)


(defrule belt4
	(declare (salience ?*belts4-salience*))
	(technique ?cont belts4)
	
	(cross ?cont ?bl1 ?row1 ?row1a ?row1b ?sq11a ?sq11b ?col1 ?col1a ?col1b ?sq1a1 ?sq1b1 ?a1 ?b1 ?c1 ?d1 ?g1 ?h1)
	(cross ?cont ?bl2&~?bl1 ?row1 ?row2a ?row2b ?sq22a ?sq22b ?col2&~?col1 ?col2a ?col2b ?sq2a2 ?sq2b2 ?a2 ?b2 ?c2 ?d2 ?g2 ?h2)
	(test (or (and (eq ?a2 ?a1) (eq ?b2 ?b1)) (and (eq ?a2 ?b1) (eq ?b2 ?a1)))) ; row1 constraint
	(cross ?cont ?bl3&~?bl1&~?bl2 ?row3&~?row1 ?row3a ?row3b ?sq33a ?sq33b ?col2 ?col3a ?col3b ?sq3a3 ?sq3b3 ?a3 ?b3 ?c3 ?d3 ?g3 ?h3)
	(test (or (and (eq ?g3 ?g2) (eq ?h3 ?h2)) (and (eq ?g3 ?h2) (eq ?h3 ?g2)))) ; column2 constraint
	(cross ?cont ?bl4&~?bl1&~?bl2&~?bl3 ?row3 ?row4a ?row4b ?sq44a ?sq44b ?col1 ?col4a ?col4b ?sq4a4 ?sq4b4 ?a4 ?b4 ?c4 ?d4 ?g4 ?h4)
	(test (or (and (eq ?a4 ?a3) (eq ?b4 ?b3)) (and (eq ?a4 ?b3) (eq ?b4 ?a3)))) ; row3 constraint
	
	(test (or (and (eq ?g1 ?g4) (eq ?h1 ?h4)) (and (eq ?g1 ?h4) (eq ?h1 ?g4)))) ; column1 constraint
	
	;;; then retract ?c1 and ?d1 from the candidates for any other cell in block ?bl1
	;;; retract ?a1 and ?b1 from the candidates for any other cell in row ?row1
	;;; retract ?g1 and ?h1 from the candidates for any other cell in column ?col1
	?candz <- (candidate (context ?cont) (status cand) (number ?nbz) (row ?rowz) (column ?colz) (block ?blz) (square ?sqz)) 
	(test
		(or 
			(and (eq ?blz ?bl1) (neq ?sqz ?sq11a) (neq ?sqz ?sq11b) (neq ?sqz ?sq1a1) (neq ?sqz ?sq1b1) (or (eq ?nbz ?c1) (eq ?nbz ?d1)))
			(and (eq ?rowz ?row1) (neq ?colz ?col1a) (neq ?colz ?col1b) (neq ?colz ?col2a) (neq ?colz ?col2b) (or (eq ?nbz ?a1) (eq ?nbz ?b1)))
			(and (eq ?colz ?col1) (neq ?rowz ?row1a) (neq ?rowz ?row1b) (neq ?rowz ?row4a) (neq ?rowz ?row4b) (or (eq ?nbz ?g1) (eq ?nbz ?h1)))
		))
=>
	(retract ?candz)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (bind ?*has-belt* TRUE)
	(if (or ?*print-actions* ?*print-belts*) then
			(printout t "belt4 " crlf)
			(print-cross ?bl1 ?row1 ?row1a ?row1b ?sq11a ?sq11b ?col1 ?col1a ?col1b ?sq1a1 ?sq1b1 ?a1 ?b1 ?c1 ?d1 ?g1 ?h1)
			(print-cross ?bl2 ?row1 ?row2a ?row2b ?sq22a ?sq22b ?col2 ?col2a ?col2b ?sq2a2 ?sq2b2 ?a2 ?b2 ?c2 ?d2 ?g2 ?h2)
			(print-cross ?bl3 ?row3 ?row3a ?row3b ?sq33a ?sq33b ?col2 ?col3a ?col3b ?sq3a3 ?sq3b3 ?a3 ?b3 ?c3 ?d3 ?g3 ?h3)
			(print-cross ?bl4 ?row3 ?row4a ?row4b ?sq44a ?sq44b ?col1 ?col4a ?col4b ?sq4a4 ?sq4b4 ?a4 ?b4 ?c4 ?d4 ?g4 ?h4)
			(printout t ?*nrc-implication-sign* (row-name ?rowz) (column-name ?colz) " <> " ?nbz crlf)
	)
)



