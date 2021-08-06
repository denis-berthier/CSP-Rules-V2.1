
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
;;;                              SWORDFISH
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





(defrule L3-swordfish-in-diagonals
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)
	
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&~?anti-diag1))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-diagonals: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-diagonals ?zzz ?nb ?diag1 ?diag2 ?diag3 ?anti-diag1 ?anti-diag2 ?anti-diag3))
	)
)


(defrule apply-to-more-targets-L3-swordfish-in-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-diagonals ?zzz ?nb ?diag1 ?diag2 ?diag3 ?anti-diag1 ?anti-diag2 ?anti-diag3)
    ;;; then any other diagonal should be eliminated from the confinment sets of ?nb in these three anti-diagonals
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L3-swordfish-in-anti-diagonals
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)
	
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag1) )
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&~?diag1))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag3&~?diag1&~?diag2))

	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-anti-diagonals: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-anti-diagonals ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?diag1 ?diag2 ?diag3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-anti-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-anti-diagonals ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?diag1 ?diag2 ?diag3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L3-swordfish-in-rows-w-transv-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&~?diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag3&~?diag1&~?diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row3&:(< ?row2 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-rows-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-rows-w-transv-diags ?zzz ?nb ?row1 ?row2 ?row3 ?diag1 ?diag2 ?diag3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-rows-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-rows-w-transv-diags ?zzz ?nb ?row1 ?row2 ?row3 ?diag1 ?diag2 ?diag3)
    ;;; then any other row should be eliminated from the confinment sets of ?nb in these three diagonals
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L3-swordfish-in-columns-w-transv-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&~?diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag3&~?diag1&~?diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col3&:(< ?col2 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (column ?colz&~?col1&~?col2&~?col3))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-columns-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-columns-w-transv-diags ?zzz ?nb ?col1 ?col2 ?col3 ?diag1 ?diag2 ?diag3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-columns-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-columns-w-transv-diags ?zzz ?nb ?col1 ?col2 ?col3 ?diag1 ?diag2 ?diag3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (column ?colz&~?col1&~?col2&~?col3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L3-swordfish-in-rows-w-transv-anti-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&~?anti-diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row3&:(< ?row2 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-rows-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-rows-w-transv-anti-diags ?zzz ?nb ?row1 ?row2 ?row3 ?anti-diag1 ?anti-diag2 ?anti-diag3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-rows-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-rows-w-transv-anti-diags ?zzz ?nb ?row1 ?row2 ?row3 ?anti-diag1 ?anti-diag2 ?anti-diag3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L3-swordfish-in-columns-w-transv-anti-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&~?anti-diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col3&:(< ?col2 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (column ?colz&~?col1&~?col2&~?col3))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-columns-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-columns-w-transv-anti-diags ?zzz ?nb ?col1 ?col2 ?col3 ?anti-diag1 ?anti-diag2 ?anti-diag3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-columns-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-columns-w-transv-anti-diags ?zzz ?nb ?col1 ?col2 ?col3 ?anti-diag1 ?anti-diag2 ?anti-diag3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (column ?colz&~?col1&~?col2&~?col3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)





(defrule L3-swordfish-in-diags-w-transv-columns
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col3&~?col1&~?col2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?colx&~?col1&~?col2&~?col3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?colx&~?col1&~?col2&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?colx&~?col1&~?col2&~?col3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-diags-w-transv-columns ?zzz ?nb ?diag1 ?diag2 ?diag3 ?col1 ?col2 ?col3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-diags-w-transv-columns ?zzz ?nb ?diag1 ?diag2 ?diag3 ?col1 ?col2 ?col3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L3-swordfish-in-diags-w-transv-rows
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&~?row1))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row3&~?row1&~?row2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?rowx&~?row1&~?row2&~?row3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?rowx&~?row1&~?row2&~?row3)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?rowx&~?row1&~?row2&~?row3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-diags-w-transv-rows ?zzz ?nb ?diag1 ?diag2 ?diag3 ?row1 ?row2 ?row3))
    )
)

(defrule apply-to-more-targets-L3-swordfish-in-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-diags-w-transv-rows ?zzz ?nb ?diag1 ?diag2 ?diag3 ?row1 ?row2 ?row3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L3-swordfish-in-anti-diags-w-transv-columns
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col3&~?col1&~?col2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?colx&~?col1&~?col2&~?col3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?colx&~?col1&~?col2&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?colx&~?col1&~?col2&~?col3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-anti-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-anti-diags-w-transv-columns ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?col1 ?col2 ?col3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-anti-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-anti-diags-w-transv-columns ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?col1 ?col2 ?col3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L3-swordfish-in-anti-diags-w-transv-rows
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&~?row1))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row3&~?row1&~?row2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?rowx&~?row1&~?row2&~?row3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?rowx&~?row1&~?row2&~?row3)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?rowx&~?row1&~?row2&~?row3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-anti-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*implication-sign* 
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-anti-diags-w-transv-rows ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?row1 ?row2 ?row3))
    )
)

(defrule apply-to-more-targets-L3-swordfish-in-anti-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-anti-diags-w-transv-rows ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?row1 ?row2 ?row3)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)





