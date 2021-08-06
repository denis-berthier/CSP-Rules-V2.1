
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
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
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (diagonal ?diag)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
            (printout t "special-naked-quads-in-a-diagonal: "
                (diagonal-name ?diag)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?nb1 ?nb2 ?nb3 ?nb4))
	)
)


(defrule apply-to-more-targets-L4-special-naked-quads-in-a-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont special-naked-quads-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2, ?nb3 and ?nb4 in other cells in this diagonal
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (diagonal ?diag)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
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
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (anti-diagonal ?anti-diag)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
            (printout t "special-naked-quads-in-an-anti-diagonal: "
                (anti-diagonal-name ?anti-diag)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign* 
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?diag3 ?diag4 ?nb1 ?nb2 ?nb3 ?nb4))
	)
)


(defrule apply-to-more-targets-L4-special-naked-quads-in-an-anti-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont special-naked-quads-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?diag3 ?diag4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2, ?nb3 and ?nb4 in other cells in this anti-diagonal
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (anti-diagonal ?anti-diag)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



