
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRIALAND ERROR, DEPTH 1
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF CONTRADICTION IN CONTEXT 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; delete the generic rule:
(defrule TE-detect-contradiction-in-non-first-context =>)


(defrule TE-detect-contradiction-in-non-first-context-rc
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
    (technique ?par&0 TE)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gencand))
	?g <- (candidate (context ?par) (status cand) (label ?gencand))
	;;; there is an rc-cell with no c-value and no candidate
	(row ?row)
	(column ?col)
	(not (candidate (context ?cont) (row ?row) (column ?col)))
    (phase ?par ?ph)
    (not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO POSSIBLE VALUE for " (row-name ?row) (column-name ?col) " IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gencand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



(defrule TE-detect-contradiction-in-non-first-context-rn
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
    (technique ?par&0 TE)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gencand))
	?g <- (candidate (context ?par) (status cand) (label ?gencand))
	;;; there is an rn-cell with no c-value and no candidate
	(number ?nb)
	(row ?row)
	(not (candidate (context ?cont) (number ?nb) (row ?row)))
    (phase ?par ?ph)
    (not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO POSSIBLE VALUE for " (row-name ?row) (number-name ?nb) " IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gencand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



(defrule TE-detect-contradiction-in-non-first-context-cn
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
    (technique ?par&0 TE)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gencand))
	?g <- (candidate (context ?par) (status cand) (label ?gencand))
	;;; there is a cn-cell with no c-value and no candidate
	(number ?nb)
	(column ?col)
	(not (candidate (context ?cont) (number ?nb) (column ?col)))
    (phase ?par ?ph)
    (not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO POSSIBLE VALUE for " (column-name ?col) (number-name ?nb) " IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gencand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



(defrule TE-detect-contradiction-in-non-first-context-bn
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
    (technique ?par&0 TE)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gencand))
	?g <- (candidate (context ?par) (status cand) (label ?gencand))
	;;; there is a bn-cell with no c-value and no candidate
	(number ?nb)
	(block ?blk)
	(not (candidate (context ?cont) (number ?nb) (block ?blk)))
    (phase ?par ?ph)
    (not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO POSSIBLE VALUE for " (block-name ?blk) (number-name ?nb) " IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gencand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START T&E, CONTEXT GENERATION AND PHASE ITERATION IN A CONTEXT 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE-iterate-phase
    (declare (salience ?*level1-iterate-phase-salience*))
	;;; if the grid is not solved by phase ?ph
    (technique 0 TE)
    ;;; only T&E1
	(context (name ?par&0) (depth ?depth&0))
	(row ?row)
	(column ?col)
    (not (candidate (context ?par) (status c-value) (row ?row) (column ?col)))
    ?phase <- (phase ?par ?ph)
	;;; and if phase ?ph was productive
	?ce <- (phase-productive-in-context ?par ?ph)
	
=>
	(if ?*print-phase* then
        (if ?*print-hypothesis* then (printout t crlf))
        (printout t "        STARTING PHASE " (+ ?ph 1) " IN CONTEXT " ?par " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining" crlf)
        (if ?*print-hypothesis* then (printout t crlf))
    )
	(assert (phase ?par (+ ?ph 1)))
	(retract ?ce)
	(retract ?phase)
)









