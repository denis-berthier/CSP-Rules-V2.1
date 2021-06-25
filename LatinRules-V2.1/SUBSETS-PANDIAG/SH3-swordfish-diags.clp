
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
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule L3-swordfish-in-diagonals
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)

	;;; if, in a context, there is a number ?nb
	;;; and there are three diagonals ?diag1 < ?diag2 < ?diag3,
	;;; and there are three cells in each of these diagonals (defined by ?anti-diag1, ?anti-diag2 and ?anti-diag3),
	;;; such that, in each of these diagonals, ?nb is confined exactly to ?anti-diag1, ?anti-diag2 and ?anti-diag3
	;;; and such that, in rn-space, ?diag1, ?diag2 and ?diag3 form a cyclic 3-chain on these three cells
	
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&~?anti-diag1))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
		
	;;; then any other diagonal should be eliminated from the confinment sets of ?nb in these three anti-diagonals
	?cand <- (candidate (context ?cont) (status cand) (number ?nb)
						(anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
						(diagonal ?diagz&~?diag1&~?diag2&~?diag3))
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
				?*implication-sign* (diagonal-name ?diagz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)




(defrule L3-swordfish-in-anti-diagonals
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)
	;;; if, in a context, there is a number ?nb
	;;; and there are three anti-diagonals ?anti-diag1 < ?anti-diag2 < ?anti-diag3,
	;;; and there are three cells in each of these anti-diagonals (defined by ?diag1, ?diag2 and ?diag3),
	;;; such that, in each of these anti-diagonals, ?nb is confined exactly to ?diag1, ?diag2 and ?diag3
	;;; and such that, in cn-space, ?anti-diag1, ?anti-diag2 and ?anti-diag3 form a cyclic 3-chain on these three cells
	
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag1) )
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&~?diag1))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag3&~?diag1&~?diag2))

	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diag1))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
		
	;;; then any other anti-diagonal should be eliminated from the confinment set of ?nb in these three diagonals
	?cand <- (candidate (context ?cont) (status cand) (number ?nb)
						(diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
						(anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))

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
				?*implication-sign* (diagonal-name ?diagz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)





(defrule L3-swordfish-in-rows-w-transv-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)

    ;;; if, in a context, there is a number ?nb
    ;;; and there are three rows ?row1 < ?row2 < ?row3,
    ;;; and there are three cells in each of these rows (defined by ?diag1, ?diag2 and ?diag3),
    ;;; such that, in each of these rows, ?nb is confined exactly to ?diag1, ?diag2 and ?diag3
    ;;; and such that, in rn-space, ?row1, ?row2 and ?row3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&~?diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag3&~?diag1&~?diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row3&:(< ?row2 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
        
    ;;; then any other row should be eliminated from the confinment sets of ?nb in these three diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
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
                ?*implication-sign* (row-name ?rowz) (diagonal-name ?diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)




(defrule L3-swordfish-in-columns-w-transv-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    ;;; if, in a context, there is a number ?nb
    ;;; and there are three columns ?col1 < ?col2 < ?col3,
    ;;; and there are three cells in each of these columns (defined by ?diag1, ?diag2 and ?diag3),
    ;;; such that, in each of these columns, ?nb is confined exactly to ?diag1, ?diag2 and ?diag3
    ;;; and such that, in cn-space, ?col1, ?col2 and ?col3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&~?diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag3&~?diag1&~?diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col3&:(< ?col2 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diagx&~?diag1&~?diag2&~?diag3)))
        
    ;;; then any other column should be eliminated from the confinment set of ?nb in these three diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2) (eq ?diagz ?diag3)))
                        (column ?colz&~?col1&~?col2&~?col3))

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
                ?*implication-sign* (diagonal-name ?diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)



(defrule L3-swordfish-in-rows-w-transv-anti-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)

    ;;; if, in a context, there is a number ?nb
    ;;; and there are three rows ?row1 < ?row2 < ?row3,
    ;;; and there are three cells in each of these rows (defined by ?anti-diag1, ?anti-diag2 and ?anti-diag3),
    ;;; such that, in each of these rows, ?nb is confined exactly to ?anti-diag1, ?anti-diag2 and ?anti-diag3
    ;;; and such that, in rn-space, ?row1, ?row2 and ?row3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&~?anti-diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row3&:(< ?row2 ?row3)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
        
    ;;; then any other row should be eliminated from the confinment sets of ?nb in these three anti-diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (row ?rowz&~?row1&~?row2&~?row3))
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
                ?*implication-sign* (row-name ?rowz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)




(defrule L3-swordfish-in-columns-w-transv-anti-diags
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    ;;; if, in a context, there is a number ?nb
    ;;; and there are three columns ?col1 < ?col2 < ?col3,
    ;;; and there are three cells in each of these columns (defined by ?anti-diag1, ?anti-diag2 and ?anti-diag3),
    ;;; such that, in each of these columns, ?nb is confined exactly to ?anti-diag1, ?anti-diag2 and ?anti-diag3
    ;;; and such that, in cn-space, ?col1, ?col2 and ?col3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag1) )
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&~?anti-diag1))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag3&~?anti-diag1&~?anti-diag2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col3&:(< ?col2 ?col3)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2&~?anti-diag3)))
        
    ;;; then any other column should be eliminated from the confinment set of ?nb in these three anti-diagonals
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2) (eq ?anti-diagz ?anti-diag3)))
                        (column ?colz&~?col1&~?col2&~?col3))

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
                ?*implication-sign* (anti-diagonal-name ?anti-diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)




(defrule L3-swordfish-in-diags-w-transv-columns
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)

    ;;; if, in a context, there is a number ?nb
    ;;; and there are three diagonals ?diag1 < ?diag2 < ?diag3,
    ;;; and there are three cells in each of these diagonals (defined by ?col1, ?col2 and ?col3),
    ;;; such that, in each of these diagonals, ?nb is confined exactly to ?col1, ?col2 and ?col3
    ;;; and such that, in rn-space, ?diag1, ?diag2 and ?diag3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col3&~?col1&~?col2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?colx&~?col1&~?col2&~?col3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?colx&~?col1&~?col2&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (column ?colx&~?col1&~?col2&~?col3)))
        
    ;;; then any other diagonal should be eliminated from the confinment sets of ?nb in these three columns
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))
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
                ?*implication-sign* (diagonal-name ?diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)




(defrule L3-swordfish-in-diags-w-transv-rows
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    ;;; if, in a context, there is a number ?nb
    ;;; and there are three diagonals ?diag1 < ?diag2 < ?diag3,
    ;;; and there are three cells in each of these diagonals (defined by ?row1, ?row2 and ?row3),
    ;;; such that, in each of these diagonals, ?nb is confined exactly to ?row1, ?row2 and ?row3
    ;;; and such that, in cn-space, ?diag1, ?diag2 and ?diag3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&~?row1))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row3&~?row1&~?row2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?rowx&~?row1&~?row2&~?row3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?rowx&~?row1&~?row2&~?row3)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (diagonal ?diag3&:(< ?diag2 ?diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag3) (row ?rowx&~?row1&~?row2&~?row3)))
        
    ;;; then any other diagonal should be eliminated from the confinment set of ?nb in these three rows
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (diagonal ?diagz&~?diag1&~?diag2&~?diag3))

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
                ?*implication-sign* (row-name ?rowz) (diagonal-name ?diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)





(defrule L3-swordfish-in-anti-diags-w-transv-columns
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)

    ;;; if, in a context, there is a number ?nb
    ;;; and there are three anti-diagonals ?anti-diag1 < ?anti-diag2 < ?anti-diag3,
    ;;; and there are three cells in each of these anti-diagonals (defined by ?col1, ?col2 and ?col3),
    ;;; such that, in each of these anti-diagonals, ?nb is confined exactly to ?col1, ?col2 and ?col3
    ;;; and such that, in rn-space, ?anti-diag1, ?anti-diag2 and ?anti-diag3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&~?col1))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col3&~?col1&~?col2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?colx&~?col1&~?col2&~?col3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?colx&~?col1&~?col2&~?col3)))

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?col1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (column ?colx&~?col1&~?col2&~?col3)))
        
    ;;; then any other anti-diagonal should be eliminated from the confinment sets of ?nb in these three columns
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))
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
                ?*implication-sign* (anti-diagonal-name ?anti-diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)




(defrule L3-swordfish-in-anti-diags-w-transv-rows
    (declare (salience ?*swordfish-salience*))
    (technique ?cont swordfish)
    ;;; if, in a context, there is a number ?nb
    ;;; and there are three anti-diagonals ?anti-diag1 < ?anti-diag2 < ?anti-diag3,
    ;;; and there are three cells in each of these anti-diagonals (defined by ?row1, ?row2 and ?row3),
    ;;; such that, in each of these anti-diagonals, ?nb is confined exactly to ?row1, ?row2 and ?row3
    ;;; and such that, in cn-space, ?anti-diag1, ?anti-diag2 and ?anti-diag3 form a cyclic 3-chain on these three cells
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row1) )
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&~?row1))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row3&~?row1&~?row2))

    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?rowx&~?row1&~?row2&~?row3)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?rowx&~?row1&~?row2&~?row3)))

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row3) (anti-diagonal ?anti-diag3&:(< ?anti-diag2 ?anti-diag3)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?row1))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag3) (row ?rowx&~?row1&~?row2&~?row3)))
        
    ;;; then any other anti-diagonal should be eliminated from the confinment set of ?nb in these three rows
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2&~?anti-diag3))

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
                ?*implication-sign* (row-name ?rowz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb) crlf
            )
    )
)



