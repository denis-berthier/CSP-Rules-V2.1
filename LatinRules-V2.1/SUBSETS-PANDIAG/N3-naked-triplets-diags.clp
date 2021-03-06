
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              NAKED TRIPLETS
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

(defrule L3-naked-triplets-in-a-diagonal
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)
	;;; if, in a context, there is a diagonal ?diag,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this diagonal (defined by ?anti-diag1 < ?anti-diag2 < ?anti-diag3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb1))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nb3&~?nb1&~?nb2))

	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag3) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	;;; then retract ?nb1, ?nb2 and ?nb3 from the candidates for other cells
	;;; in this diagonal
	?candx <- (candidate (context ?cont) (status cand) (diagonal ?diag)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
						 (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
			(printout t "naked-triplets-in-a-diagonal: "
				(diagonal-name ?diag)
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
				?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diag) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)


;;; anti-diagonals

(defrule L3-naked-triplets-in-an-anti-diagonal
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)
	;;; if, in a context, there is a anti-diagonal ?anti-diag,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this anti-diagonal (defined by ?diag1 < ?diag2 < ?diag3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb1))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nb3&~?nb1&~?nb2))

	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag3) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	
	;;; then retract ?nb1, ?nb2 and ?nb3 from the candidates for other cells
	;;; in this anti-diagonal
	?candx <- (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag)
						 (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
						 (diagonal ?diagz&~?diag1&~?diag2&~?diag3))
=>
	(retract ?candx)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
			(printout t "naked-triplets-in-an-anti-diagonal: "
				(anti-diagonal-name ?anti-diag)
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
				?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diagz) (anti-diagonal-name ?anti-diag) ?*non-equal-sign* (numeral-name ?nbz) crlf
			)
	)
)



