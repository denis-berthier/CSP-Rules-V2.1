
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              TRIAL AND ERROR, DEPTH 3
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





;;; restrict generating candidates to those of type H or V

(defrule TE3-generate-context-level3
	(declare (salience ?*level3-generate-context-salience*))
    (technique 0 TE3)
    ;;; level 3
	(context (name ?par) (depth ?depth&2))
    ;;; only one context with parent ?par will be considered at a time
	(not (context (name ?cont&~?par) (parent ?par)))
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand) (type H|V))
    (is-csp-variable-for-label (csp-var ?csp-var) (label ?gen-cand))
	(not (TE3-tried ?par ?ph ?gen-cand))
=>
	;;; choose ?gen-cand as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
	(bind ?depth1 (+ 1 ?depth))
	(if (or ?*print-actions* ?*print-hypothesis*) then 
		(printout t crlf "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS " ?gen-cand "." crlf)
	)
	;;; assert the new context
	(assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
	(assert (technique ?*context-counter* BRT))
	;;; assert the generating value of the new context, with flag 0
	(duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
	;;; remember that ?gen-cand was tried in ?par at phase ?ph
	(assert (TE3-tried ?par ?ph ?gen-cand))
)



(defrule TE3-generate-context-level2
	(declare (salience ?*level2-generate-context-salience*))
    (technique 0 TE3)
	(context (name ?par) (depth ?depth&1))
	(not (context (name ?cont&~?par) (parent ?par))) ;;; only one context with parent ?par will be considered at a time
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand) (type H|V))
    (is-csp-variable-for-label (csp-var ?csp-var) (label ?gen-cand))
	(not (TE3-tried ?par ?ph ?gen-cand))
=>
	;;; choose ?gen-cand as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
	(bind ?depth1 (+ 1 ?depth))
	(if (or ?*print-actions* ?*print-hypothesis*) then 
		(printout t crlf "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS " ?gen-cand "." crlf)
	)
	;;; assert the new context
	(assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
	(assert (technique ?*context-counter* BRT))
	;;; assert the generating value of the new context, with flag 0
	(duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
	;;; remember that ?gen-cand was tried in ?par at phase ?ph
	(assert (TE3-tried ?par ?ph ?gen-cand))
)



(defrule TE3-generate-context-level1
	(declare (salience ?*level1-generate-context-salience*))
    (technique 0 TE3)
	(context (name ?par) (depth ?depth&0))
	(not (context (name ?cont&~?par) (parent ?par))) ;;; only one context with parent ?par will be considered at a time
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand) (type H|V))
    (is-csp-variable-for-label (csp-var ?csp-var) (label ?gen-cand))
	(not (TE3-tried ?par ?ph ?gen-cand))
=>
	;;; choose ?gen-cand as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
	(bind ?depth1 (+ 1 ?depth))
	(if (or ?*print-actions* ?*print-hypothesis*) then 
		(printout t crlf "GENERATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FROM HYPOTHESIS " ?gen-cand "." crlf)
	)
	;;; assert the new context
	(assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
	(assert (technique ?*context-counter* BRT))
	;;; assert the generating value of the new context, with flag 0
	(duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
	;;; remember that ?gen-cand was tried in ?par at phase ?ph
	(assert (TE3-tried ?par ?ph ?gen-cand))
)




;;; complete contradiction detection in context

(defrule TE3-detect-contradiction-in-non-first-context
    (declare (salience ?*contradiction-in-context-salience*))
    ;;; if, in a context generated by ?gen-cand, which is not the first
    (technique 0 TE3)
    (context (name ?cont&~0) (parent ?par&0) (generating-cand ?gen-cand))
    ?g <- (candidate (context ?par) (status cand) (label ?gen-cand) (type ?type&H|V) (row ?row) (column ?col) (value ?val))
    ;;; if there is a csp-variable with no c-value and no candidate in ?cont
    (csp-variable (name ?csp))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        (not (candidate (context ?cont) (label ?lab)))
    )
    (phase ?par ?ph)
    (not (clean-and-retract ?cont))
    ?g-opp <- (candidate (context ?par) (status cand) (label ?gen-cand-opp) (type ?type) (row ?row) (column ?col) (value ?val-opp&~?val))
=>
    ;;; then eliminate the generating candidate from the parent context
    (retract ?g)
    (modify ?g-opp (status c-value))
    (if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "NO POSSIBLE VALUE for csp-variable " ?csp " IN CONTEXT " ?cont ".")
        (printout t " RETRACTING CANDIDATE " (print-label ?gen-cand) " FROM CONTEXT " ?par "." crlf crlf)
        (printout t " ASSERTING CANDIDATE " (print-label ?gen-cand-opp) " FOR CONTEXT " ?par "." crlf crlf)
    )
    ;;; remember that this phase was productive
    (assert (phase-productive-in-context ?par ?ph))
    ;;; properly destroy the present context so as not to saturate memory
    (assert (clean-and-retract ?cont))
)


