
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              COMPLETE PARTIAL SOLUTION, IO
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

(defrule complete-partial-solution-IO-1
	(declare (salience ?*complete-IO-solution-salience*))
	(grid ?g)
	(context (name 0))
	?brt <- (technique ?cont BRT)
    (fill-IO-variables)
=>
	(retract ?brt)
)


(defrule complete-partial-solution-IO-2
	(declare (salience ?*complete-IO-solution-salience*))
	(grid ?g)
	(context (name 0))
	?pl <- (play)
    (fill-IO-variables)
=>
	(retract ?pl)
)


(defrule complete-partial-solution-IO-3
	(declare (salience ?*complete-IO-solution-salience*))
	(grid ?g)
	(context (name 0))
	(not (technique ?cont BRT))
    (not (play))
    (fill-IO-variables)
    (row ?row&:(or (eq ?row 0) (eq ?row (+ ?*nb-rows* 1))))
    (column ?col&:(or (eq ?col 0) (eq ?col (+ ?*nb-columns* 1))))
    ?cand <- (candidate (context 0) (status cand) (type I) (row ?row) (column ?col))
=>
    (modify ?cand (status c-value) (value 0))
	;(if ?*print-actions* then
	;	(printout t "filling up gaps : " (row-name ?row) (column-name ?col) " = 2" crlf)
    ;)
)


(defrule complete-partial-solution-IO-4
    (declare (salience ?*complete-IO-solution-salience*))
    (grid ?g)
    (context (name 0))
    (not (technique ?cont BRT))
    (not (play))
    (fill-IO-variables)
    (row ?row&~0&:(neq ?row (+ ?*nb-rows* 1)))
    (column ?col&~0&:(neq ?col (+ ?*nb-columns* 1)))
    ?cand <- (candidate (context 0) (status cand) (type I) (row ?row) (column ?col))
=>
    (modify ?cand (status c-value) (value 2))
    ;(if ?*print-actions* then
    ;    (printout t "filling up gaps : " (row-name ?row) (column-name ?col) " = 2" crlf)
    ;)
)


(defrule complete-partial-solution-IO-4
	(declare (salience ?*complete-IO-solution-salience*))
	(grid ?g)
	(context (name 0))
	(not (technique ?cont BRT))
    (not (play))
    (fill-IO-variables)
	(forall (csp-variable (name ?csp-var) (type I))
		(exists  (candidate (context 0) (status c-value)))
	)
=>
    (if (not ?*print-HV-solution*) then
        (printout t "GRID " ?g " SOLVED.")
        (printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
    (assert (solution-found 0))
)


