
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              DFS (Depth First Search)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - April 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT INITIALISATION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule DFS-init-non-first-context-c-values
	"copy all the c-values from the parent context"
	(declare (salience ?*init-context-salience*))
    (technique 0 DFS)
	(context (name ?cont&~0) (parent ?par))
	(technique ?cont BRT)
	(not (clean-and-retract ?cont))
	?cv <- (candidate (context ?par) (status c-value))
=>
	;;; copied c-values are created with flag 0, 
    ;;; because all the incompatible candidates have been eliminated
    (duplicate ?cv (context ?cont) (flag 0))
)


(defrule DFS-init-non-first-context-candidates
	"copy all the candidates from the parent context, except those linked to the generating c-value"
	(declare (salience ?*init-context-salience*))
    (technique 0 DFS)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	(technique ?cont BRT)
	(not (clean-and-retract ?cont))
	?cand <- (candidate (context ?par) (status cand) (label ?xxx&~?gen-cand&:(not (labels-linked ?xxx ?gen-cand))))
=>
	(duplicate ?cand (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CONTEXT CLEANING
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule DFS-dummy-rule
    (init-context 0)
    (technique 0)
    (csp-linked 0)
    (exists-link 0)
=>
)


(defrule DFS-clean-context
    (declare (salience ?*clean-context-salience*))
    (technique 0 DFS)
    (context (name ?cont&~0))
    (clean-and-retract ?cont)
=>
    (do-for-all-facts
        ((?f candidate))
        (eq ?f:context ?cont)
        (retract ?f)
    )
    (do-for-all-facts
        ((?f chain))
        (eq ?f:context ?cont)
        (retract ?f)
    )
    (do-for-all-facts
        ((?f typed-chain))
        (eq ?f:context ?cont)
        (retract ?f)
    )
    (do-for-all-facts
        ((?f init-context))
        (eq (nth$ 1 ?f:implied) ?cont)
        (retract ?f)
    )
    (do-for-all-facts
        ((?f technique))
        (eq (nth$ 1 ?f:implied) ?cont)
        (retract ?f)
    )
    (do-for-all-facts
        ((?f csp-linked))
        (eq (nth$ 1 ?f:implied) ?cont)
        (retract ?f)
    )
    (do-for-all-facts
        ((?f exists-link))
        (eq (nth$ 1 ?f:implied) ?cont)
        (retract ?f)
    )
)




(defrule DFS-clean-context-end
    (declare (salience ?*clean-context-salience*))
    ?dfs <- (technique ?cont DFS)
    ?ctx <- (context (name ?cont&~0) (parent ?par&0))
    ?rr <- (clean-and-retract ?cont)
    (not (init-context ?cont))
    (not (candidate (context ?cont)))
    (not (csp-linked ?cont $?))
    (not (exists-link ?cont $?))
    (not (chain (context ?cont)))
    (not (typed-chain (context ?cont)))
=>
    (retract ?rr)
    (retract ?ctx)
    (retract ?dfs)
    (if (or ?*print-actions* ?*print-hypothesis*) then
        (printout t "BACK IN CONTEXT " ?par " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining." crlf crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECTION OF CONTRADICTION OR SOLUTION IN CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule DFS-detect-contradiction-in-non-first-context
	(declare (salience ?*contradiction-in-context-salience*))
	;;; if, in a context generated by ?gen-cand, which is not the first
    (technique ?cont DFS)
	(context (name ?cont&~0) (parent ?par) (generating-cand ?gen-cand))
	?g <- (candidate (context ?par) (status cand) (label ?gen-cand))
	;;; if there is a csp-variable with no c-value and no candidate in ?cont
	(csp-variable (name ?csp)) ; (type rc)
	(forall (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
        (not (candidate (context ?cont) (label ?lab)))
    )
    (not (clean-and-retract ?cont))
=>
	;;; then eliminate the generating candidate from the parent context
	(retract ?g)
	(if (eq ?par 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO POSSIBLE VALUE for csp-variable " ?csp " IN CONTEXT " ?cont ".")
		(printout t " RETRACTING CANDIDATE " (print-label ?gen-cand) " FROM CONTEXT " ?par "." crlf crlf)
	)
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
)


;;; This rule specific to DFS is intended to palliate the necessary restriction
;;; of the generic rule to context 0
;;; The forall part of this rule may be re-written in application-specific ways,
;;; but the rest shoudln't be changed.

(defrule DFS-detect-solution-in-context
    (declare (salience ?*solution-found-salience*))
    (logical (context (name ?cont)))
    ?brt <- (technique ?cont BRT)
    ;;; in any context ?cont, the presence of a c-value for all the csp-variables (of some type) means that a solution has been found in ?cont
    (forall (csp-variable (name ?csp))
        (exists (is-csp-variable-for-label (csp-var ?csp) (label ?lab))
            (candidate (context ?cont) (status c-value) (label ?lab))
        )
    )
=>
    (if ?*print-actions* then
        (printout t "CSP IS SOLVED.")
        (printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* ", DFS MAX-DEPTH = " ?*DFS-max-depth* crlf)
    )
    (bind ?*solution-string* (compute-solution-string-in-context ?cont))
    (retract ?brt)
    (assert (solution-found ?cont))
    (bind ?*solution-found* TRUE)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; START DFS, CONTEXT GENERATION AND PHASE ITERATION IN A CONTEXT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule DFS-start-after-BRT-in-any-context
    (declare (salience ?*DFS-generate-context-salience*))
    (technique ?cont BRT)
=>
    (assert (technique ?cont DFS))
    (if (eq ?cont 0) then
        (if ?*print-actions* then (printout t crlf "*** STARTING DFS IN CONTEXT " 0  " with " ?*nb-csp-variables-solved* " csp-variables solved and " ?*nb-candidates* " candidates remaining" crlf crlf)
        )
        (bind ?*DFS-max-depth* 0)
    )
)



(defrule DFS-generate-context
	(declare (salience ?*DFS-generate-context-salience*))
	(context (name ?par) (depth ?depth))
    (technique ?par DFS)
    ;;; only one direct descendant of ?par is considered at a time:
    ;(not (context (name ?cont&~?par) (parent ?par) (depth ?depth1&:(eq ?depth1 (+ 1 ?depth)))))
    ?gen <- (candidate (context ?par) (status cand) (label ?gen-cand))
    (or (test (not ?*restrict-TE-targets*))
        (is-restricted-TE-target 0 ?gen-cand)
    )
=>
	;;; choose ?gen-cand as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
    (bind ?depth1 (+ ?depth 1))
    (bind ?*DFS-max-depth* (max ?*DFS-max-depth* ?depth1))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "CREATING CONTEXT " ?*context-counter* " AT DEPTH " ?depth1 ", SON OF CONTEXT " ?par ", FOR HYPOTHESIS " (print-label ?gen-cand) "." crlf)
        (printout t "DFS-max-depth = " ?*DFS-max-depth* crlf)
	)
	;;; assert the new context
	(assert (context (name ?*context-counter*) (parent ?par) (depth ?depth1) (generating-cand ?gen-cand)))
	(assert (technique ?*context-counter* BRT))
	;;; assert the generating value of the new context, with flag 0
	(duplicate ?gen (context ?*context-counter*) (status c-value) (flag 0))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CLEAN WHAT'S LEFT BY DFS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule DFS-clean-1
    (declare (salience ?*TE-clean-salience*))
    ?t <- (technique 0 DFS)
=>
    (retract ?t)
)

(defrule DFS-clean-1
=>)







