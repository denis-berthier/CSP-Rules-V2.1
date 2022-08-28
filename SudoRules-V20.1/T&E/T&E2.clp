
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRIAL AND ERROR, DEPTH 2
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF CONTRADICTION IN CONTEXT 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; delete the generic rule:
(defrule TE2-detect-contradiction-in-non-first-context =>)



(defrule TE2-detect-contradiction-in-non-first-context-rc
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	?g <- (candidate (context ?par) (label ?gen-cand))
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
		(printout t "NO SOLUTION RC IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gen-cand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



(defrule TE2-detect-contradiction-in-non-first-context-rn
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	?g <- (candidate (context ?par) (label ?gen-cand))
	;;; there is an rn-cell with no c-value and no candidate
	(number ?nb)
	(row ?row)
	(not (candidate (context ?cont) (number ?nb) (row ?row)))
	(phase ?ph ?par)
	(not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION RN IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gen-cand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



(defrule TE2-detect-contradiction-in-non-first-context-cn
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	?g <- (candidate (context ?par) (label ?gen-cand))
	;;; there is a cn-cell with no c-value and no candidate
	(number ?nb)
	(column ?col)
	(not (candidate (context ?cont) (number ?nb) (column ?col)))
	(phase ?ph ?par)
	(not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION CN IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gen-cand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



(defrule TE2-detect-contradiction-in-non-first-context-bn
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	?g <- (candidate (context ?par) (label ?gen-cand))
	;;; there is a bn-cell with no c-value and no candidate
	(number ?nb)
	(block ?blk)
	(not (candidate (context ?cont) (number ?nb) (block ?blk)))
	(phase ?ph ?par)
	(not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION BN IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gen-cand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF NO CONTRADICTION, CONTEXT GENERATION AND PHASE ITERATATION IN A CONTEXT 
;;; - level 2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE2-iterate-phase-level2
	(declare (salience ?*level2-iterate-phase-salience*))
	;;; if the grid is not solved by phase ?ph
	(context (name ?par) (depth ?depth&1))
	(row ?row)
	(column ?col)
    (not (candidate (context ?par) (status c-value) (row ?row) (column ?col) (number ?nbx)))
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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF NO CONTRADICTION, CONTEXT GENERATION AND PHASE ITERATATION IN A CONTEXT 
;;; - level 1 ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE2-iterate-phase-level1
	(declare (salience ?*iterate-phase-salience*))
	;;; if the grid is not solved by phase ?ph
	(context (name ?par) (depth ?depth&0))
	(row ?row)
	(column ?col)
    (not (candidate (context ?par) (status c-value) (row ?row) (column ?col) (number ?nbx)))
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









