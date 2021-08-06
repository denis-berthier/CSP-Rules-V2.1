
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
;;;                              HIDDEN TRIPLETS
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

(defrule L3-hidden-triplets-in-a-diagonal
	(declare (salience ?*hidden-triplets-salience*))
	(technique ?cont hidden-triplets)
	;;; if, in a context, there is a diagonal ?diag
	;;; and there are three cells in this diagonal (defined by ?anti-diag1, ?anti-diag2 and ?anti-diag3),
	;;; and there are three numbers ?nb1 < ?nb2 < ?nb3,
	;;; such that, in this diagonal, these three numbers are confined exactly to ?anti-diag1, ?anti-diag2 and ?anti-diag3
	
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag1) )
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diag2&~?anti-diag1))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

	(candidate (context ?cont) (status cand) (diagonal ?diag) (anti-diagonal ?anti-diag3) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb3) (anti-diagonal ?anti-diag1))
	(not (candidate (context ?cont) (status cand) (diagonal ?diag) (number ?nb3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (diagonal ?diag)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
            (printout t "hidden-triplets-in-a-diagonal: "
                (diagonal-name ?diag)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
   )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont hidden-triplets-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?anti-diag3 ?nb1 ?nb2 ?nb3))
	)
)


(defrule apply-to-more-targets-L3-hidden-triplets-in-a-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont hidden-triplets-in-a-diagonal ?zzz ?diag ?anti-diag1 ?anti-diag2 ?anti-diag3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e.  any other number in these three cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (diagonal ?diag)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; anti-diagonals

(defrule L3-hidden-triplets-in-an-anti-diagonal
	(declare (salience ?*hidden-triplets-salience*))
	(technique ?cont hidden-triplets)

	;;; if, in a context, there is a anti-diagonal ?anti-diag
	;;; and there are three cells in this anti-diagonal (defined by ?diag1, ?diag2 and ?diag3),
	;;; and there are three numbers ?nb1 < ?nb2 < ?nb3,
	;;; such that, in this anti-diagonal, these three numbers are confined exactly to ?diag1, ?diag2 and ?diag3
	
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag1) )
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diag2&~?diag1))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diag3&~?diag1&~?diag2))

	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (diagonal ?diag3) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb3) (diagonal ?diag1))
	(not (candidate (context ?cont) (status cand) (anti-diagonal ?anti-diag) (number ?nb3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (anti-diagonal ?anti-diag)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
            (printout t "hidden-triplets-in-an-anti-diagonal: "
                (anti-diagonal-name ?anti-diag)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont hidden-triplets-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?diag3 ?nb1 ?nb2 ?nb3))
	)
)


(defrule apply-to-more-targets-L3-hidden-triplets-in-an-anti-diagonal
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont hidden-triplets-in-an-anti-diagonal ?zzz ?anti-diag ?diag1 ?diag2 ?diag3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e.  any other number in these three cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (anti-diagonal ?anti-diag)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



