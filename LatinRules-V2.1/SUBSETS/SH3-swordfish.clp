
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              SWORDFISH
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-swordfish
	(declare (salience ?*swordfish-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont triplet))
    )
=>
	(assert (technique ?cont swordfish))
	(bind ?*technique* SHT)
)



;;; rows

(defrule L3-swordfish-in-rows
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)

	;;; if, in a context, there is a number ?nb
	;;; and there are three rows ?row1 < ?row2 < ?row3,
	;;; and there are three cells in each of these rows (defined by ?col1, ?col2 and ?col3),
	;;; such that, in each of these rows, ?nb is confined exactly to ?col1, ?col2 and ?col3
	;;; and such that, in rn-space, ?row1, ?row2 and ?row3 form a cyclic 3-chain on these three cells
	
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&~?col1))

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col3&~?col1&~?col2))

	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?colx&~?col1&~?col2&~?col3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?colx&~?col1&~?col2&~?col3)))

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?row3&:(< ?row2 ?row3)))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?col1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?colx&~?col1&~?col2&~?col3)))
    
    ;;; then any other row should be eliminated from the confinment sets of ?nb in these three columns
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-rows ?zzz ?nb ?row1 ?row2 ?row3 ?col1 ?col2 ?col3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont swordfish-in-rows ?zzz ?nb ?row1 ?row2 ?row3 ?col1 ?col2 ?col3)
    ;;; then any other row should be eliminated from the confinment sets of ?nb in these three columns
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L3-swordfish-in-columns
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)
	;;; if, in a context, there is a number ?nb
	;;; and there are three columns ?col1 < ?col2 < ?col3,
	;;; and there are three cells in each of these columns (defined by ?row1, ?row2 and ?row3),
	;;; such that, in each of these columns, ?nb is confined exactly to ?row1, ?row2 and ?row3
	;;; and such that, in cn-space, ?col1, ?col2 and ?col3 form a cyclic 3-chain on these three cells
	
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row1) )
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&~?row1))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row3&~?row1&~?row2))

	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2&~?row3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowx&~?row1&~?row2&~?row3)))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?col3&:(< ?col2 ?col3)))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?row1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?rowx&~?row1&~?row2&~?row3)))
    
    ;;; then any other column should be eliminated from the confinment set of ?nb in these three rows
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (column ?colz&~?col1&~?col2&~?col3))

    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-columns ?zzz ?nb ?col1 ?col2 ?col3 ?row1 ?row2 ?row3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont swordfish-in-columns ?zzz ?nb ?col1 ?col2 ?col3 ?row1 ?row2 ?row3)
    ;;; then any other column should be eliminated from the confinment set of ?nb in these three rows
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (column ?colz&~?col1&~?col2&~?col3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)

