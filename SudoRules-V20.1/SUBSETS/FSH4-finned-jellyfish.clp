
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              FINNED JELLYFISH
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-finned-jellyfish
	(declare (salience ?*finned-jellyfish-salience*))
    (logical
        (play) (context
        (name ?cont))
        (not (deactivate ?cont quad))
    )
=>
	(assert (technique ?cont finned-jellyfish))
	(bind ?*technique* FSHQ)
)



;;; rows

(defrule L4-finned-jellyfish-in-rows
	(declare (salience ?*finned-jellyfish-salience*))
	(technique ?cont finned-jellyfish)
		
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row2&~?row1))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col3&~?col1&~?col2))

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?row3&~?row1&~?row2))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?col4&~?col1&~?col2&~?col3))

	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row4&~?row1&~?row2&~?row3))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (column ?colx) (block ?bl44&:(eq ?bl44 (block ?row4 ?col4))&:(neq ?bl44 (block ?row1 ?col4))&:(neq ?bl44 (block ?row2 ?col4))&:(neq ?bl44 (block ?row3 ?col4))&:(neq ?bl44 (block ?row4 ?col1))&:(neq ?bl44 (block ?row4 ?col2))))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (column ?coly&~?col1&~?col2&~?col3) (block ?bly&~?bl44)))
    
    ;;; then the candidature of this number for any cell in block b44
    ;;; and in any of the 4 columns but not in any of the 4 rows
    ;;; can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                (block ?bl44)
                (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                (row ?rowz&~?row1&~?row2&~?row3&~?row4)
            )
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-finned-jellyfish*) then
            (printout t "finned-jellyfish-in-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont finned-jellyfish-in-rows ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4))
    )
)


(defrule apply-to-more-targets-L4-finned-jellyfish-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont finned-jellyfish-in-rows ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4)
    ;;; then the candidature of this number for any cell in block b44
    ;;; and in any of the 4 columns but not in any of the 4 rows
    ;;; can be retracted
    (rc-cell ?row4 ?col4 ?bl44 ?sq4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                (block ?bl44)
                (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                (row ?rowz&~?row1&~?row2&~?row3&~?row4)
            )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-finned-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L4-finned-jellyfish-in-columns
	(declare (salience ?*finned-jellyfish-salience*))
	(technique ?cont finned-jellyfish)
	
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row1) )
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&~?row1))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col2&~?col1))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row3&~?row1&~?row2))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?col3&~?col1&~?col2))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?row4&~?row1&~?row2&~?row3))

	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col4&~?col1&~?col2&~?col3))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?rowx) (column ?col4) (block ?bl44&:(eq ?bl44 (block ?row4 ?col4))&:(neq ?bl44 (block ?row1 ?col4))&:(neq ?bl44 (block ?row2 ?col4))&:(neq ?bl44 (block ?row3 ?col4))&:(neq ?bl44 (block ?row4 ?col1))&:(neq ?bl44 (block ?row4 ?col2))))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (row ?rowy&~?row1&~?row2&~?row3) (block ?bly&~?bl44)))
    
    ;;; then the candidature of this number for any cell in block b44
    ;;; and in any of the 4 rows but not in any of the 4 columns
    ;;; can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                (block ?bl44)
                (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                (column ?colz&~?col1&~?col2&~?col3&~?col4)
            )
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-finned-jellyfish*) then
            (printout t "finned-jellyfish-in-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont finned-jellyfish-in-columns ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?row1 ?row2 ?row3 ?row4))
    )
)


(defrule apply-to-more-targets-L4-finned-jellyfish-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont finned-jellyfish-in-columns ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?row1 ?row2 ?row3 ?row4)
    ;;; then the candidature of this number for any cell in block b44
    ;;; and in any of the 4 rows but not in any of the 4 columns
    ;;; can be retracted
    (rc-cell ?row4 ?col4 ?bl44 ?sq4)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                (block ?bl44)
                (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                (column ?colz&~?col1&~?col2&~?col3&~?col4)
            )

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-finned-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)
