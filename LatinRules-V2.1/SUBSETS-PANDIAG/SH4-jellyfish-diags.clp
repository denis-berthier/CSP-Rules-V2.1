
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
;;;                              JELLYFISH
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





(defrule L4-jellyfish-in-diagonals
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag1) )
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&~?anti-diag1))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag3&~?diag2&:(< ?diag1 ?diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))

	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (diagonal ?diag4&~?diag2&~?diag3&:(or (< ?diag2 ?diag4) (< ?diag3 ?diag4))))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (anti-diagonal ?anti-diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-diagonals: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-diagonals ?zzz ?nb ?diag1 ?diag2 ?diag3 ?diag4 ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4))
	)
)


(defrule apply-to-more-targets-L4-jellyfish-in-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-diagonals ?zzz ?nb ?diag1 ?diag2 ?diag3 ?diag4 ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4)
    ;;; then any other diagonal should be eliminated from the confinment sets of ?nb in these four anti-diagonals
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)





(defrule L4-jellyfish-in-anti-diagonals
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag1) )
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&~?diag1))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag3&~?diag1&~?diag2))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag3&~?anti-diag2&:(< ?anti-diag1 ?anti-diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))

	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (anti-diagonal ?anti-diag4&~?anti-diag2&~?anti-diag3&:(or (< ?anti-diag3 ?anti-diag4) (< ?anti-diag3 ?anti-diag4))))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (diagonal ?diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-anti-diagonals: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-anti-diagonals ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?diag1 ?diag2 ?diag3 ?diag4))
	)
)


(defrule apply-to-more-targets-L4-jellyfish-in-anti-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-anti-diagonals ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?diag1 ?diag2 ?diag3 ?diag4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L4-jellyfish-in-rows-w-transv-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&~?diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag3&~?diag1&~?diag2))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row3&~?row2&:(< ?row1 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (row ?row4&~?row2&~?row3&:(or (< ?row2 ?row4) (< ?row3 ?row4))))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (diagonal ?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-rows-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-rows-w-transv-diags ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?diag1 ?diag2 ?diag3 ?diag4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-rows-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-rows-w-transv-diags ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?diag1 ?diag2 ?diag3 ?diag4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L4-jellyfish-in-columns-w-transv-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
        
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&~?diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag3&~?diag1&~?diag2))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col3&~?col2&:(< ?col1 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (column ?col4&~?col2&~?col3&:(or (< ?col3 ?col4) (< ?col3 ?col4))))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (diagonal ?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (diagonal ?diagx&~?diag1&~?diag2&~?diag3&~?diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-columns-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-columns-w-transv-diags ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?diag1 ?diag2 ?diag3 ?diag4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-columns-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-columns-w-transv-diags ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?diag1 ?diag2 ?diag3 ?diag4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L4-jellyfish-in-rows-w-transv-anti-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&~?anti-diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row3&~?row2&:(< ?row1 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (row ?row4&~?row2&~?row3&:(or (< ?row2 ?row4) (< ?row3 ?row4))))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (anti-diagonal ?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-rows-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-rows-w-transv-anti-diags ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-rows-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-rows-w-transv-anti-diags ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L4-jellyfish-in-columns-w-transv-anti-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&~?anti-diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col3&~?col2&:(< ?col1 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (column ?col4&~?col2&~?col3&:(or (< ?col3 ?col4) (< ?col3 ?col4))))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (anti-diagonal ?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-columns-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-columns-w-transv-anti-diags ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-columns-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-columns-w-transv-anti-diags ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L4-jellyfish-in-diags-w-transv-columns
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col1) )
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col3&~?col1&~?col2))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag3&~?diag2&:(< ?diag1 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col4&~?col1&~?col2&~?col3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (diagonal ?diag4&~?diag2&~?diag3&:(or (< ?diag2 ?diag4) (< ?diag3 ?diag4))))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-diags-w-transv-columns ?zzz ?nb ?diag1 ?diag2 ?diag3 ?diag4 ?col1 ?col2 ?col3 ?col4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-diags-w-transv-columns ?zzz ?nb ?diag1 ?diag2 ?diag3 ?diag4 ?col1 ?col2 ?col3 ?col4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L4-jellyfish-in-diags-w-transv-rows
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&~?row1))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row3&~?row1&~?row2))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag3&~?diag2&:(< ?diag1 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row4&~?row1&~?row2&~?row3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (diagonal ?diag4&~?diag2&~?diag3&:(or (< ?diag3 ?diag4) (< ?diag3 ?diag4))))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (row ?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-diags-w-transv-rows ?zzz ?nb ?diag1 ?diag2 ?diag3 ?diag4 ?row1 ?row2 ?row3 ?row4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-diags-w-transv-rows ?zzz ?nb ?diag1 ?diag2 ?diag3 ?diag4 ?row1 ?row2 ?row3 ?row4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L4-jellyfish-in-anti-diags-w-transv-columns
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
        
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col1) )
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col3&~?col1&~?col2))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag3&~?anti-diag2&:(< ?anti-diag1 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col4&~?col1&~?col2&~?col3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (anti-diagonal ?anti-diag4&~?anti-diag2&~?anti-diag3&:(or (< ?anti-diag2 ?anti-diag4) (< ?anti-diag3 ?anti-diag4))))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-anti-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-anti-diags-w-transv-columns ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?col1 ?col2 ?col3 ?col4))
    )
)

(defrule apply-to-more-targets-L4-jellyfish-in-anti-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-anti-diags-w-transv-columns ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?col1 ?col2 ?col3 ?col4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L4-jellyfish-in-anti-diags-w-transv-rows
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
        
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&~?row1))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row3&~?row1&~?row2))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag3&~?anti-diag2&:(< ?anti-diag1 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row4&~?row1&~?row2&~?row3))

    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (anti-diagonal ?anti-diag4&~?anti-diag2&~?anti-diag3&:(or (< ?anti-diag3 ?anti-diag4) (< ?anti-diag3 ?anti-diag4))))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (row ?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-anti-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign* 
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-anti-diags-w-transv-rows ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?row1 ?row2 ?row3 ?row4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-anti-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-anti-diags-w-transv-rows ?zzz ?nb ?anti-diag1 ?anti-diag2 ?anti-diag3 ?anti-diag4 ?row1 ?row2 ?row3 ?row4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




