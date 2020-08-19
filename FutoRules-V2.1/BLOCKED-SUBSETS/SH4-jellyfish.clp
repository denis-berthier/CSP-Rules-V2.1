
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              JELLYFISH, NON-INTERRUPTED VERSION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-jellyfish
	(declare (salience ?*jellyfish-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont quad))
=>
	(assert (technique ?cont jellyfish))
	(bind ?*technique* SHQ)
)




(defrule detect-L4-jellyfish-in-rows
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
	;;; if, in a context, there is a number ?nb
	;;; and there are four rows ?row1, ?row2, ?row3 and ?row4,
	;;; and there are four cells in each of the four rows (defined by ?col1, ?col2, ?col3 and ?col4),
	;;; such that, in each of these rows, ?nb is confined exactly to ?col1, ?col2, ?col3 and ?col4
	
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1) )
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&~?col1))

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col3&~?col1&~?col2))

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?row3&~?row2&:(< ?row1 ?row3)))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?col4&~?col1&~?col2&~?col3))

	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (row ?row4&~?row2&~?row3&:(or (< ?row2 ?row4) (< ?row3 ?row4))))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (column ?col1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont jellyfish-in-rows ?nb ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4))
	(if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (bind ?*blocked-rule-description*
            (str-cat "jellyfish-in-rows: "
				(number-name ?nb) 
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) 
				?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L4-jellyfish-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont jellyfish-in-rows ?nb ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4)
    ;;; then any other row should be eliminated from the confinment sets of ?nb in these four columns
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)





(defrule detect-L4-jellyfish-in-columns
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
	;;; if, in a context, there is a number ?nb
	;;; and there are four columns ?col1, ?col2, ?col3 and ?col4
	;;; and there are four cells in each of these four columns (defined by ?row1, ?row2, ?row3 and ?row4),
	;;; such that, in each of these columns, ?nb is confined exactly to ?row1, ?row2, ?row3 and ?row4
	
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row1) )
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&~?row1))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row3&~?row1&~?row2))

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (column ?col3&~?col2&:(< ?col1 ?col3)))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?row4&~?row1&~?row2&~?row3))

	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (column ?col4&~?col2&~?col3&:(or (< ?col3 ?col4) (< ?col3 ?col4))))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (row ?row1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont jellyfish-in-columns ?nb ?col1 ?col2 ?col3 ?col4 ?row1 ?row2 ?row3 ?row4))
	(if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (bind ?*blocked-rule-description*
            (str-cat "jellyfish-in-columns: "
				(number-name ?nb) 
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) 
				?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L4-jellyfish-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont jellyfish-in-columns ?nb ?col1 ?col2 ?col3 ?col4 ?row1 ?row2 ?row3 ?row4)
    ;;; then any other column should be eliminated from the confinment set of ?nb in these four rows
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)

