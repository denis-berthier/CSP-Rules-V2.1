
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              COMPLETE PARTIAL SOLUTION, HV
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





;;; to print the final situation in case no solution is found
;;; just add the following four rules

(defrule complete-partial-solution-HV-1
	(declare (salience ?*complete-HV-solution-salience*))
	(grid ?g)
	(context (name 0))
	?brt <- (technique ?cont BRT)
    (fill-HV-variables)
=>
	(retract ?brt)
)


(defrule complete-partial-solution-HV-2
	(declare (salience ?*complete-HV-solution-salience*))
	(grid ?g)
	(context (name 0))
	?pl <- (play)
    (fill-HV-variables)
=>
	(retract ?pl)
)


(defrule complete-partial-solution-HV-3
	(declare (salience ?*complete-HV-solution-salience*))
	(grid ?g)
	(context (name 0))
    (not (technique ?cont BRT))
	(not (play))
    (fill-HV-variables)
    (row ?row)
    (column ?col) 
    ?cand <- (candidate (context 0) (status cand) (type H|V) (row ?row) (column ?col))
=>
    (modify ?cand (status c-value) (value 2))
	;(if ?*print-actions* then
	;	(printout t "filling up gaps : H" (row-name ?row) (column-name ?col) " = 2" crlf)
    ;)
)


(defrule complete-partial-solution-HV-4
	(declare (salience ?*complete-HV-solution-salience*))
	(grid ?g)
	(context (name 0))
    (not (technique ?cont BRT))
	(not (play))
    (fill-HV-variables)
	(forall (csp-variable (name ?csp-var) (type ?type&H|V))
		(exists (candidate (context 0) (status c-value)))
	)
=>
	(printout t "GRID " ?g " SOLVED.")
	(printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(assert (solution-found 0))
)


