
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
;;;                              SPECIAL HIDDEN QUADS
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

(defrule L4-special-hidden-quads-in-a-diagonal
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a diagonal ?diag
	;;; and there are four cells in this diagonal (defined by ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; that are candidates exactly for {?anti-diag1 ?anti-diag2} {?anti-diag1 ?anti-diag3} {?anti-diag1 ?anti-diag4} {?anti-diag2 ?anti-diag3 ?anti-diag4}
	
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag2&~?anti-diag1))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag3)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag4)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb4) (anti-diagonal ?anti-diag3))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb4) (anti-diagonal ?anti-diag4))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb4) (anti-diagonal ?anti-diagx&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (diagonal ?diag)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
            (printout t "special-hidden-quads-in-a-diagonal: "
                (diagonal-name ?diag)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-hidden-quads-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?nb1 ?nb2 ?nb3 ?nb4))
	)
)


(defrule apply-to-more-targets-L4-special-hidden-quads-in-a-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont special-hidden-quads-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (diagonal ?diag)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; anti-diagonals

(defrule L4-special-hidden-quads-in-an-anti-diagonal
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
	;;; if, in a context, there is a anti-diagonal ?anti-diag
	;;; and there are four cells in this anti-diagonal (defined by ?diag1, ?diag2, ?diag3 and ?diag4),
	;;; and there are four numbers ?nb1, ?nb2, ?nb3 and ?nb4,
	;;; such that, in this anti-diagonal, these four numbers
	;;; that are candidates exactly for {?diag1 ?diag2} {?diag1 ?diag3} {?diag1 ?diag4} {?diag2 ?diag3 ?diag4}
	
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag1))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag2&~?diag1))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diagx&~?diag1&~?diag2)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diag3&~?diag1&~?diag2))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diagx&~?diag1&~?diag3)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb3) (diagonal ?diagx&~?diag1&~?diag4)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb4) (diagonal ?diag3))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb4) (diagonal ?diag4))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb4) (diagonal ?diagx&~?diag2&~?diag3&~?diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (anti-diagonal ?anti-diag)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
            (printout t "special-hidden-quads-in-an-anti-diagonal: "
                (anti-diagonal-name ?anti-diag)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*implication-sign* 
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-hidden-quads-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?diag3 ?diag4 ?nb1 ?nb2 ?nb3 ?nb4))
	)
)


(defrule apply-to-more-targets-L4-special-hidden-quads-in-an-anti-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont special-hidden-quads-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?diag3 ?diag4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets, i.e.  any other number in these four cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (anti-diagonal ?anti-diag)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads* ?*print-exceptional-patterns*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



