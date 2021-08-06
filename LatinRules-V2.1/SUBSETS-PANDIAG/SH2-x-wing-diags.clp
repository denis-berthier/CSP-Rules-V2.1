
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES-PANDIAG
;;;                              X-WINGS
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





(defrule L2-x-wing-in-diagonals
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (diagonal ?diagz&~?diag1&~?diag2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-diagonals: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-diagonals ?zzz ?nb ?diag1 ?diag2 ?anti-diag1 ?anti-diag2))
	)
)


(defrule apply-to-more-targets-L2-x-wing-in-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-diagonals ?zzz ?nb ?diag1 ?diag2 ?anti-diag1 ?anti-diag2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (diagonal ?diagz&~?diag1&~?diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L2-x-wing-in-anti-diagonals
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diagx&~?diag1&~?diag2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diagx&~?diag1&~?diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-anti-diagonals: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-anti-diagonals ?zzz ?nb ?anti-diag1 ?anti-diag2 ?diag1 ?diag2))
	)
)


(defrule apply-to-more-targets-L2-x-wing-in-anti-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-anti-diagonals ?zzz ?nb ?anti-diag1 ?anti-diag2 ?diag1 ?diag2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)





(defrule L2-x-wing-in-rows-w-transv-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diagx&~?diag1&~?diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diagx&~?diag1&~?diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                        (row ?rowz&~?row1&~?row2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-rows-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-rows-w-transv-diags ?zzz ?nb ?row1 ?row2 ?diag1 ?diag2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-rows-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-rows-w-transv-diags ?zzz ?nb ?row1 ?row2 ?diag1 ?diag2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                        (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L2-x-wing-in-columns-w-transv-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diagx&~?diag1&~?diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diagx&~?diag1&~?diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                         (column ?colz&~?col1&~?col2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-columns-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-columns-w-transv-diags ?zzz ?nb ?col1 ?col2 ?diag1 ?diag2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-columns-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-columns-w-transv-diags ?zzz ?nb ?col1 ?col2 ?diag1 ?diag2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                         (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L2-x-wing-in-rows-w-transv-anti-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (row ?rowz&~?row1&~?row2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-rows-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-rows-w-transv-anti-diags ?zzz ?nb ?row1 ?row2 ?anti-diag1 ?anti-diag2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-rows-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-rows-w-transv-anti-diags ?zzz ?nb ?row1 ?row2 ?anti-diag1 ?anti-diag2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L2-x-wing-in-columns-w-transv-anti-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                         (column ?colz&~?col1&~?col2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-columns-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-columns-w-transv-anti-diags ?zzz ?nb ?col1 ?col2 ?anti-diag1 ?anti-diag2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-columns-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-columns-w-transv-anti-diags ?zzz ?nb ?col1 ?col2 ?anti-diag1 ?anti-diag2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                         (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L2-x-wing-in-diags-w-transv-columns
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&:(< ?col1 ?col2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?colx&~?col1&~?col2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?colx&~?col1&~?col2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (diagonal ?diagz&~?diag1&~?diag2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-diags-w-transv-columns ?zzz ?nb ?diag1 ?diag2 ?col1 ?col2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-diags-w-transv-columns ?zzz ?nb ?diag1 ?diag2 ?col1 ?col2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (diagonal ?diagz&~?diag1&~?diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)




(defrule L2-x-wing-in-diags-w-transv-rows
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&:(< ?row1 ?row2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?rowx&~?row1&~?row2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?rowx&~?row1&~?row2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (diagonal ?diagz&~?diag1&~?diag2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
           (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-diags-w-transv-rows ?zzz ?nb ?diag1 ?diag2 ?row1 ?row2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-diags-w-transv-rows ?zzz ?nb ?diag1 ?diag2 ?row1 ?row2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (diagonal ?diagz&~?diag1&~?diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L2-x-wing-in-anti-diags-w-transv-columns
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&:(< ?col1 ?col2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?colx&~?col1&~?col2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?colx&~?col1&~?col2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-anti-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*implication-sign*
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-anti-diags-w-transv-columns ?zzz ?nb ?anti-diag1 ?anti-diag2 ?col1 ?col2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-anti-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-anti-diags-w-transv-columns ?zzz ?nb ?anti-diag1 ?anti-diag2 ?col1 ?col2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



(defrule L2-x-wing-in-anti-diags-w-transv-rows
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&:(< ?row1 ?row2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?rowx&~?row1&~?row2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?rowx&~?row1&~?row2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-anti-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*implication-sign* 
            )
            (print-deleted-candidate ?zzz)
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-anti-diags-w-transv-rows ?zzz ?nb ?anti-diag1 ?anti-diag2 ?row1 ?row2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-anti-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wing-in-anti-diags-w-transv-rows ?zzz ?nb ?anti-diag1 ?anti-diag2 ?row1 ?row2)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



