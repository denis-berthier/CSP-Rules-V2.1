
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              SPECIAL JELLYFISH
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





(defrule L4-special-jellyfish-in-diagonals
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
	;;; if, in a context, there is a number ?nb
	;;; and there are four diagonals ?diag1, ?diag2, ?diag3 and ?diag4,
	;;; and there are four cells in each of the four diagonals (defined by ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4),
	;;; such that, in each of these diagonals, ?nb is confined respectively to
	;;; {?anti-diag1 ?anti-diag2} {?anti-diag1 ?anti-diag3} {?anti-diag1 ?anti-diag4} {?anti-diag2 ?anti-diag3 ?anti-diag4}
	
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&~?anti-diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag3)))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag3&:(< ?diag2 ?diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (anti-diagonal ?anti-diag3))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (anti-diagonal ?anti-diag4))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (anti-diagonal ?anti-diagx&~?anti-diag2&~?anti-diag3&~?anti-diag4)))

	;;; then any other diagonal should be eliminated from the confinment sets of ?nb in these four anti-diagonals
	?cand <- (candidate (context ?cont) (status cand) (number ?nb)
						(anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
						(diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
			(printout t "special-jellyfish-in-diagonals: "
				(number-name ?nb) 
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
				?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
				?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diagz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)





(defrule L4-special-jellyfish-in-anti-diagonals
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
	;;; if, in a context, there is a number ?nb
	;;; and there are four anti-diagonals ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4
	;;; and there are four cells in each of these four anti-diagonals (defined by ?diag1, ?diag2, ?diag3 and ?diag4),
	;;; such that, in each of these anti-diagonals, ?nb is confined respectively to
	;;; {?diag1 ?diag2} {?diag1 ?diag3} {?diag1 ?diag4} {?diag2 ?diag3 ?diag4}
	
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag1) )
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&~?diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diagx&~?diag1&~?diag2)))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag3&~?diag1&~?diag2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diagx&~?diag1&~?diag2)))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diagx&~?diag1&~?diag4)))
		
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (diagonal ?diag3))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (diagonal ?diag4))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (diagonal ?diagx&~?diag2&~?diag3&~?diag4)))

;;; then any other anti-diagonal should be eliminated from the confinment set of ?nb in these four diagonals
	?cand <- (candidate (context ?cont) (status cand) (number ?nb)
						(diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
						(anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))

=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
			(printout t "special-jellyfish-in-anti-diagonals: "
				(number-name ?nb) 
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
				?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
				?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
				?*implication-sign* (diagonal-name ?diagz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)




(defrule L4-special-jellyfish-in-rows-w-transv-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four rows ?row1, ?row2, ?row3 and ?row4,
    ;;; and there are four cells in each of the four rows (defined by ?diag1, ?diag2, ?diag3 and ?diag4),
    ;;; such that, in each of these rows, ?nb is confined respectively to
    ;;; {?diag1 ?diag2} {?diag1 ?diag3} {?diag1 ?diag4} {?diag2 ?diag3 ?diag4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&~?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diagx&~?diag1&~?diag2)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag3&~?diag1&~?diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diagx&~?diag1&~?diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row3&:(< ?row2 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diagx&~?diag1&~?diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row4&~?row1&~?row2&~?row3))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (diagonal ?diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (diagonal ?diag4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (diagonal ?diagx&~?diag2&~?diag3&~?diag4)))

    ;;; then any other row should be eliminated from the confinment sets of ?nb in these four diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-rows-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (diagonal-name ?diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)






(defrule L4-special-jellyfish-in-columns-w-transv-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four columns ?col1, ?col2, ?col3 and ?col4
    ;;; and there are four cells in each of these four columns (defined by ?diag1, ?diag2, ?diag3 and ?diag4),
    ;;; such that, in each of these columns, ?nb is confined respectively to
    ;;; {?diag1 ?diag2} {?diag1 ?diag3} {?diag1 ?diag4} {?diag2 ?diag3 ?diag4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&~?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diagx&~?diag1&~?diag2)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag3&~?diag1&~?diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diagx&~?diag1&~?diag2)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col3&:(< ?col2 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diagx&~?diag1&~?diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col4&~?col1&~?col2&~?col3))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (diagonal ?diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (diagonal ?diag4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (diagonal ?diagx&~?diag2&~?diag3&~?diag4)))

;;; then any other column should be eliminated from the confinment set of ?nb in these four diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3) (eq ?diagz ?diag4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-columns-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*implication-sign* (diagonal-name ?diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)





(defrule L4-special-jellyfish-in-rows-w-transv-anti-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four rows ?row1, ?row2, ?row3 and ?row4,
    ;;; and there are four cells in each of the four rows (defined by ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4),
    ;;; such that, in each of these rows, ?nb is confined respectively to
    ;;; {?anti-diag1 ?anti-diag2} {?anti-diag1 ?anti-diag3} {?anti-diag1 ?anti-diag4} {?anti-diag2 ?anti-diag3 ?anti-diag4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&~?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row3&:(< ?row2 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row4&~?row1&~?row2&~?row3))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (anti-diagonal ?anti-diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (anti-diagonal ?anti-diag4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row4) (anti-diagonal ?anti-diagx&~?anti-diag2&~?anti-diag3&~?anti-diag4)))

    ;;; then any other row should be eliminated from the confinment sets of ?nb in these four anti-diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-rows-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)






(defrule L4-special-jellyfish-in-columns-w-transv-anti-diags
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four columns ?col1, ?col2, ?col3 and ?col4
    ;;; and there are four cells in each of these four columns (defined by ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4),
    ;;; such that, in each of these columns, ?nb is confined respectively to
    ;;; {?anti-diag1 ?anti-diag2} {?anti-diag1 ?anti-diag3} {?anti-diag1 ?anti-diag4} {?anti-diag2 ?anti-diag3 ?anti-diag4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&~?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col3&:(< ?col2 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col4&~?col1&~?col2&~?col3))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (anti-diagonal ?anti-diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (anti-diagonal ?anti-diag4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col4) (anti-diagonal ?anti-diagx&~?anti-diag2&~?anti-diag3&~?anti-diag4)))

;;; then any other column should be eliminated from the confinment set of ?nb in these four anti-diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3) (eq ?anti-diagz ?anti-diag4)))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-columns-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*implication-sign* (anti-diagonal-name ?anti-diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)





(defrule L4-special-jellyfish-in-diags-w-transv-columns
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four diagonals ?diag1, ?diag2, ?diag3 and ?diag4,
    ;;; and there are four cells in each of the four diagonals (defined by ?col1, ?col2, ?col3 and ?col4),
    ;;; such that, in each of these diagonals, ?nb is confined respectively to
    ;;; {?col1 ?col2} {?col1 ?col3} {?col1 ?col4} {?col2 ?col3 ?col4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&~?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?colx&~?col1&~?col2)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col3&~?col1&~?col2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?colx&~?col1&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag3&:(< ?diag2 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col4&~?col1&~?col2&~?col3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?colx&~?col1&~?col4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (column ?col3))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (column ?col4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (column ?colx&~?col2&~?col3&~?col4)))

    ;;; then any other diagonal should be eliminated from the confinment sets of ?nb in these four columns
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign* (diagonal-name ?diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)





(defrule L4-special-jellyfish-in-diags-w-transv-rows
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four diagonals ?diag1, ?diag2, ?diag3 and ?diag4
    ;;; and there are four cells in each of these four diagonals (defined by ?row1, ?row2, ?row3 and ?row4),
    ;;; such that, in each of these diagonals, ?nb is confined respectively to
    ;;; {?row1 ?row2} {?row1 ?row3} {?row1 ?row4} {?row2 ?row3 ?row4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&~?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?rowx&~?row1&~?row2)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row3&~?row1&~?row2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?rowx&~?row1&~?row2)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag3&:(< ?diag2 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row4&~?row1&~?row2&~?row3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?rowx&~?row1&~?row4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag4&~?diag1&~?diag2&~?diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (row ?row3))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (row ?row4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag4) (row ?rowx&~?row2&~?row3&~?row4)))

;;; then any other diagonal should be eliminated from the confinment set of ?nb in these four rows
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3&~?diag4))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2)
                ?*separation-sign-in-cell* (diagonal-name ?diag3) ?*separation-sign-in-cell* (diagonal-name ?diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (diagonal-name ?diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)





(defrule L4-special-jellyfish-in-anti-diags-w-transv-columns
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four anti-diagonals ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4,
    ;;; and there are four cells in each of the four anti-diagonals (defined by ?col1, ?col2, ?col3 and ?col4),
    ;;; such that, in each of these anti-diagonals, ?nb is confined respectively to
    ;;; {?col1 ?col2} {?col1 ?col3} {?col1 ?col4} {?col2 ?col3 ?col4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&~?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?colx&~?col1&~?col2)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col3&~?col1&~?col2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?colx&~?col1&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col4&~?col1&~?col2&~?col3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?colx&~?col1&~?col4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (column ?col3))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (column ?col4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (column ?colx&~?col2&~?col3&~?col4)))

    ;;; then any other anti-diagonal should be eliminated from the confinment sets of ?nb in these four columns
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-anti-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign* (anti-diagonal-name ?anti-diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)






(defrule L4-special-jellyfish-in-anti-diags-w-transv-rows
    (declare (salience ?*jellyfish-salience*))
    (technique ?cont jellyfish)
    
    ;;; if, in a context, there is a number ?nb
    ;;; and there are four anti-diagonals ?anti-diag1, ?anti-diag2, ?anti-diag3 and ?anti-diag4
    ;;; and there are four cells in each of these four anti-diagonals (defined by ?row1, ?row2, ?row3 and ?row4),
    ;;; such that, in each of these anti-diagonals, ?nb is confined respectively to
    ;;; {?row1 ?row2} {?row1 ?row3} {?row1 ?row4} {?row2 ?row3 ?row4}
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&~?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?rowx&~?row1&~?row2)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row3&~?row1&~?row2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?rowx&~?row1&~?row2)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row4&~?row1&~?row2&~?row3))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?rowx&~?row1&~?row4)))
        
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag4&~?anti-diag1&~?anti-diag2&~?anti-diag3))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (row ?row3))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (row ?row4))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag4) (row ?rowx&~?row2&~?row3&~?row4)))

;;; then any other anti-diagonal should be eliminated from the confinment set of ?nb in these four rows
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3&~?anti-diag4))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish* ?*print-exceptional-patterns*) then
            (printout t "special-jellyfish-in-anti-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2)
                ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag3) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)






