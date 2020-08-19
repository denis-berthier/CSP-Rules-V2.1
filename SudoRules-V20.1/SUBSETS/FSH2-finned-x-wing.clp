
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              FINNED X-WINGS
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





(defrule activate-finned-x-wing
	(declare (salience ?*finned-x-wing-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont pair))
=>
	(assert (technique ?cont finned-x-wing))
	(bind ?*technique* FSHP)
)



(defrule L2-finned-x-wing-in-rows
	(declare (salience ?*finned-x-wing-salience*))
	(technique ?cont finned-x-wing)

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1) (block ?bl11))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&~?col1) (block ?bl12&~?bl11))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?colx&~?col1&~?col2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&~?row1) (block ?bl21&~?bl11))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?colx) (block ?bl22&:(eq ?bl22 (block ?row2 ?col2))))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?coly&~?col1) (block ?bly&~?bl22)))
	
	;;; then the candidature of this number for any cell outside row2 in the intersection of column 2 wih block 22 can be retracted
	?cand <- (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (block ?bl22) (row ?rowz&~?row2))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-finned-x-wing*) then
			(printout t "finned-x-wing-in-rows: "
				(number-name ?nb) 
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?col2) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)




(defrule L2-finned-x-wing-in-columns
	(declare (salience ?*finned-x-wing-salience*))
	(technique ?cont finned-x-wing)

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row1) (block ?bl11))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&~?row1) (block ?bl21&~?bl11))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&~?col1) (block ?bl12&~?bl11))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowx) (block ?bl22&:(eq ?bl22 (block ?row2 ?col2))))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowy&~?row1) (block ?bly&~?bl22)))
	
	;;; then the candidature of this number for any cell outside col2 in the intersection of row2 wih block 22 can be retracted
	?cand <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (block ?bl22) (column ?colz&~?col2))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-finned-x-wing*) then
			(printout t "finned-x-wing-in-columns: "
				(number-name ?nb) 
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?row2) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)


