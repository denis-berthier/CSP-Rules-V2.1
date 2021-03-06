
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              NAKED PAIRS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; diagonals

(defrule L2-naked-pairs-in-a-diagonal
	(declare (salience ?*naked-pairs-salience*))
	(technique ?cont naked-pairs)
	;;; if, in a context, there is a diagonal ?diag
	;;; and there are two cells in this diagonal (defined by ?anti-diag1 < ?anti-diag2),
	;;; that have exactly the same two candidates ?nb1 < ?nb2,
	
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb1))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nbx&~?nb1&~?nb2)))
	
	;;; then retract ?nb1 and ?nb2 from the candidates for other cells in this diagonal
	?candx <- (candidate (context ?cont) (status cand) (diagonal ?diag)
						 (number ?nb&:(or (eq ?nb ?nb1) (eq ?nb ?nb2)))
						 (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
			(printout t "naked-pairs-in-a-diagonal: "
				(diagonal-name ?diag)
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diag) (anti-diagonal-name ?anti-diagx) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)


;;; anti-diagonals

(defrule L2-naked-pairs-in-an-anti-diagonal
	(declare (salience ?*naked-pairs-salience*))
	(technique ?cont naked-pairs)
	;;; if, in a context, there is a anti-diagonal ?anti-diag
	;;; and there are two cells in this anti-diagonal (defined by ?diag1 < ?diag2),
	;;; that have exactly the same two candidates ?nb1 < ?nb2,
	
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb1))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nbx&~?nb1&~?nb2)))
	
	;;; then retract ?nb1 and ?nb2 from the candidates for other cells in this anti-diagonal
	?candx <- (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag)
						 (number ?nb&:(or (eq ?nb ?nb1) (eq ?nb ?nb2)))
						 (diagonal ?diagx&~?diag1&~?diag2))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
			(printout t "naked-pairs-in-an-anti-diagonal: "
				(anti-diagonal-name ?anti-diag)
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diagx) (anti-diagonal-name ?anti-diag) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)




