
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              SPECIAL NAKED QUADS
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

(defrule L4-special-naked-quads-in-a-diagonal
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a diagonal ?diag,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this diagonal (defined by ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4),
	;;; that have candidates {?nb1 ?nb2} {?nb1 ?nb3} {?nb1 ?nb4} {?nb2 ?nb3 ?nb4}

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb1))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag3) (number ?nbx&~?nb1&~?nb4)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag4) (number ?nb3))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag4) (number ?nbx&~?nb2&~?nb3&~?nb4)))

	;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells in this diagonal
	?candx <- (candidate (context ?cont) (status cand) (diagonal ?diag)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
						 (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
			(printout t "special-naked-quads-in-a-diagonal: "
				(diagonal-name ?diag)
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
				?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diag) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)



;;; anti-diagonals

(defrule L4-special-naked-quads-in-an-anti-diagonal
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	;;; if, in a context, there is a anti-diagonal ?anti-diag,
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; and there are four cells in this anti-diagonal (defined by ?diag1, ?diag2, ?diag3 and ?diag4),
	;;; that have candidates {?nb1 ?nb2} {?nb1 ?nb3} {?nb1 ?nb4} {?nb2 ?nb3 ?nb4}

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb1))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag3&:(< ?diag2 ?diag3)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag3) (number ?nbx&~?nb1&~?nb4)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag4) (number ?nb3))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag4) (number ?nbx&~?nb2&~?nb3&~?nb4)))
	
	;;; then retract ?nb1, ?nb2, ?nb3 and ?nb4 from the candidates for other cells in this anti-diagonal
	?candx <- (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
						 (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
			(printout t "special-naked-quads-in-an-anti-diagonal: "
				(anti-diagonal-name ?anti-diag)
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
				?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diagz) (anti-diagonal-name ?anti-diag) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)





