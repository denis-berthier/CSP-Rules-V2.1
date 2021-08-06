
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
;;;                              HIDDEN PAIRS
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

(defrule L2-hidden-pairs-in-a-diagonal
	(declare (salience ?*hidden-pairs-salience*))
	(technique ?cont hidden-pairs)
	;;; if, in a context, there is a diagonal ?diag
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; and two cells in this diagonal (defined by ?anti-diag1 < ?anti-diag2),
	;;; such that, for each of the two numbers ?nb1 and ?nb2, these cells are the
	;;; only ones possible for its instances in this diagonal,
	;;; and ?nb1 and ?nb2 are actual candidates to these cells
	;;; (otherwise, there would be a hidden single on the diagonal)
	;;; (this also entails that there are no c-values for ?nb1 or ?nb2 on this diagonal)
	
	;;; equivalently:
	;;; if, in a context, there is a diagonal ?diag
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; that are confined to exactly the same two cells in this diagonal (defined by ?anti-diag1 < ?anti-diag2)
	
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
	
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
	
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (diagonal ?diag)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (number ?nbz&~?nb1&~?nb2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
            (printout t "hidden-pairs-in-a-diagonal: "
                (diagonal-name ?diag)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont hidden-pairs-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?nb1 ?nb2))
	)
)


(defrule apply-to-more-targets-L2-hidden-pairs-in-a-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont hidden-pairs-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?nb1 ?nb2)
    ;;; identify the targets, i.e.  any other number in these two cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (diagonal ?diag)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (number ?nbz&~?nb1&~?nb2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; anti-diagonals

(defrule L2-hidden-pairs-in-an-anti-diagonal
	(declare (salience ?*hidden-pairs-salience*))
	(technique ?cont hidden-pairs)
	;;; if, in a context, there is a anti-diagonal ?anti-diag
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; and two cells in this anti-diagonal (defined by ?diag1 < ?diag2),
	;;; such that, for each of the two numbers ?nb1 and ?nb2, these cells are the
	;;; only ones possible for its instances in this anti-diagonal,
	;;; and ?nb1 and ?nb2 are actual candidates to these cells
	;;; (otherwise, there would be a hidden single on the anti-diagonal)
	;;; (this also entails that there are no c-values for ?nb1 or ?nb2 on this anti-diagonal)
	
	;;; equivalently:
	;;; if, in a context, there is a anti-diagonal ?anti-diag
	;;; and there are two numbers ?nb1 < ?nb2,
	;;; that are confined to exactly the same two cells in this anti-diagonal (defined by ?diag1 < ?diag2),
	
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag1))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diagx&~?diag1&~?diag2)))
	
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag1) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diagx&~?diag1&~?diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (anti-diagonal ?anti-diag)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                        (number ?nbz&~?nb1&~?nb2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
            (printout t "hidden-pairs-in-an-anti-diagonal: "
                (anti-diagonal-name ?anti-diag)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont hidden-pairs-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?nb1 ?nb2))
	)
)


(defrule apply-to-more-targets-L2-hidden-pairs-in-an-anti-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont hidden-pairs-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?nb1 ?nb2)
    
    ;;; identify the targets, i.e.  any other number in these two cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (anti-diagonal ?anti-diag)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                        (number ?nbz&~?nb1&~?nb2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



