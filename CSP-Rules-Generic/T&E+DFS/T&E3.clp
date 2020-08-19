
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              TRIAL & ERROR depth 3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - June 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALIZATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE3-init-non-first-context-c-values
	"copy all the c-values from the parent context"
	(declare (salience ?*init-context-salience*))
    (technique 0 TE3)
	(context (name ?cont&~0) (parent ?par))
	(technique ?cont BRT)
	(not (clean-and-retract ?cont))
	?cv <- (candidate (context ?par) (status c-value))
=>
	;;; copied c-values are created with flag 0, 
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule TE3-init-non-first-context-candidates
	"copy all the candidates from the parent context, except those linked to the generating value"
	(declare (salience ?*init-context-salience*))
    (technique 0 TE3)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	(technique ?cont&~?par BRT)
	(not (clean-and-retract ?cont))
	?cand <- (candidate (context ?par) (status cand) (label ?xxx&~?gen-cand&:(not (labels-linked ?xxx ?gen-cand))))
=>
	(duplicate ?cand (context ?cont))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF CONTRADICTION IN CONTEXT 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE3-detect-contradiction-in-non-first-context
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context which is not the first,
    (technique 0 TE3)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	?g <- (candidate (context ?par) (label ?gen-cand))
	;;; if there is a csp-variable with no c-value and no candidate in ?cont
	(csp-variable (name ?csp)) ; (type rc)
	(forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        (not (candidate (context ?cont) (label ?lab)))
    )
	(phase ?par ?ph)
	(not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION RC IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " ?gen-cand " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; remember that this phase was productive
	(assert (phase-productive-in-context ?par ?ph))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEANING OF CONTRADICTORY CONTEXT 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE3-clean-context-technique
	(declare (salience ?*clean-context-salience*))
    (technique 0 TE3)
	(clean-and-retract ?cont)
	?xx <- (technique ?cont $?)
=>
	(retract ?xx)
)


(defrule TE3-clean-context-candidates
	(declare (salience ?*clean-context-salience*))
    (technique 0 TE3)
	(clean-and-retract ?cont)
	?cand <- (candidate (context ?cont))
=>
	(retract ?cand)
)


(defrule TE3-clean-context-csp-linked
	(declare (salience ?*clean-context-salience*))
    (technique 0 TE3)
	(clean-and-retract ?cont)
	?xx <- (csp-linked ?cont $?)
=>
	(retract ?xx)
)


(defrule TE3-clean-context-exists-link
	(declare (salience ?*clean-context-salience*))
    (technique 0 TE3)
	(clean-and-retract ?cont)
	?xx <- (exists-link ?cont $?)
=>
	(retract ?xx)
)


(defrule TE3-clean-context-chains
	(declare (salience ?*clean-context-salience*))
    (technique 0 TE3)
	(clean-and-retract ?cont)
	?xx <- (chain (context ?cont))
=>
	(retract ?xx)
)



(defrule TE3-clean-context-end
	(declare (salience ?*clean-context-salience*))
    (technique 0 TE3)
	?ctx <- (context (name ?cont&~0) (parent ?par))
	?rr <- (clean-and-retract ?cont)
	(not (init-context ?cont))
	(not (candidate (context ?cont)))
    (not (csp-linked ?cont $?))
    (not (exists-link ?cont $?))
    (not (chain (context ?cont)))
=>
	(retract ?rr)
	(retract ?ctx)
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "BACK IN CONTEXT " ?par " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining." crlf crlf)
	)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF NO CONTRADICTION, CONTEXT GENERATION AND PHASE ITERATION IN A CONTEXT 
;;; - level 3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE3-no-contradiction-found-in-context-level3
	(declare (salience ?*level3-no-contrad-found-in-context-salience*))
	;;; after all the resolution rules have been applied in the context
	(context (name ?cont&~0) (depth ?depth&3) (parent ?par) (generating-cand ?gen-cand))
=>
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO CONTRADICTION FOUND IN CONTEXT " ?cont "." crlf)
	)
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)


(defrule TE3-start-TE-level3
	(declare (salience ?*level3-generate-context-salience*))
    (technique 0 TE3)
	(context (name ?cont) (depth ?depth&2))
=>
	(assert (phase ?cont 1))
	(printout t crlf "*** STARTING T&E IN CONTEXT " ?cont  " at depth " ?depth " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining ***" crlf)
	(if ?*print-phase* then
        (if ?*print-hypothesis* then (printout t crlf))
        (printout t "        STARTING PHASE " 1 " IN CONTEXT " ?cont " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining" crlf)
        (if ?*print-hypothesis* then (printout t crlf))
    )
)



(defrule TE3-generate-context-level3
	(declare (salience ?*level3-generate-context-salience*))
    (technique 0 TE3)
    ;;; level 3
	(context (name ?par) (depth ?depth&2))
    ;;; only one context with parent ?par will be considered at a time
	(not (context (name ?cont&~?par) (parent ?par)))
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
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



(defrule TE3-iterate-phase-level3
	(declare (salience ?*level3-iterate-phase-salience*))
	;;; if the grid is not solved by phase ?ph
    (technique 0 TE3)
	(context (name ?par) (depth ?depth&2))
	(csp-variable (name ?csp))
	(forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        (not (candidate (context ?par) (status c-value) (label ?lab)))
    )
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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF NO CONTRADICTION, CONTEXT GENERATION AND PHASE ITERATATION IN A CONTEXT 
;;; - level 2
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE3-no-contradiction-found-in-context-level2
	(declare (salience ?*level2-no-contrad-found-in-context-salience*))
	;;; after all the resolution rules have been applied in the context
	(context (name ?cont&~0) (depth ?depth&2) (parent ?par) (generating-cand ?gen-cand))
=>
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO CONTRADICTION FOUND IN CONTEXT " ?cont "." crlf)
	)
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)


(defrule TE3-start-TE-level2
	(declare (salience ?*level2-generate-context-salience*))
    (technique 0 TE3)
	(context (name ?cont) (depth ?depth&1))
=>
	(assert (phase ?cont 1))
	(printout t crlf "*** STARTING T&E IN CONTEXT " ?cont  " at depth " ?depth " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining ***" crlf)
	(if ?*print-phase* then
        (if ?*print-hypothesis* then (printout t crlf))
        (printout t "        STARTING PHASE " 1 " IN CONTEXT " ?cont " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining" crlf)
        (if ?*print-hypothesis* then (printout t crlf))
    )
)



(defrule TE3-generate-context-level2
	(declare (salience ?*level2-generate-context-salience*))
    (technique 0 TE3)
	(context (name ?par) (depth ?depth&1))
	(not (context (name ?cont&~?par) (parent ?par))) ;;; only one context with parent ?par will be considered at a time
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
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



(defrule TE3-iterate-phase-level2
	(declare (salience ?*level2-iterate-phase-salience*))
    (technique 0 TE3)
	;;; if the grid is not solved by phase ?ph
	(context (name ?par) (depth ?depth&1))
	(csp-variable (name ?csp))
	(forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        (not (candidate (context ?par) (status c-value) (label ?lab)))
    )
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




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF NO CONTRADICTION, CONTEXT GENERATION AND PHASE ITERATATION IN A CONTEXT 
;;; - level 1 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule TE3-no-contradiction-found-in-context-level1
	(declare (salience ?*level1-no-contrad-found-in-context-salience*))
	;;; after all the resolution rules have been applied in the context
	(context (name ?cont&~0) (depth ?depth&1) (parent ?par) (generating-cand ?gen-cand))
=>
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO CONTRADICTION FOUND IN CONTEXT " ?cont "." crlf)
	)
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)


(defrule TE3-start-TE-level1
	(declare (salience ?*level1-generate-context-salience*))
	(context (name ?cont) (depth ?depth&0))
=>
    (assert (technique 0 TE3))
	(assert (phase ?cont 1))
	(printout t crlf "*** STARTING T&E IN CONTEXT " ?cont  " at depth " ?depth " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining ***" crlf)
	(if ?*print-phase* then
        (if ?*print-hypothesis* then (printout t crlf))
        (printout t "        STARTING PHASE " 1 " IN CONTEXT " ?cont " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining" crlf)
        (if ?*print-hypothesis* then (printout t crlf))
    )
)



(defrule TE3-generate-context-level1
	(declare (salience ?*level1-generate-context-salience*))
    (technique 0 TE3)
	(context (name ?par) (depth ?depth&0))
	(not (context (name ?cont&~?par) (parent ?par))) ;;; only one context with parent ?par will be considered at a time
	;;; each remaining cand of ?par will be re-tried in each phase, but not re-tried in the same phase
	(phase ?par ?ph) 
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
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



(defrule TE3-iterate-phase-level1
	(declare (salience ?*level1-iterate-phase-salience*))
    (technique 0 TE3)
	;;; if the grid is not solved by phase ?ph
	(context (name ?par) (depth ?depth&0))
	(csp-variable (name ?csp))
	(forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        (not (candidate (context ?par) (status c-value) (label ?lab)))
    )
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









