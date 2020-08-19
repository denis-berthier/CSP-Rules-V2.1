
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              SINGLE
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





;;; this is the generic version
;;; for efficiency reasons, the rule below may be redefined in application-specific ways
;;; e.g. by using application-specific slots of predicate "candidate"



(defrule activate-single
	(declare (salience ?*single-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
=>
	(assert (technique ?cont single))
	(bind ?*technique* S)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ASSERT VALUE WHEN SINGLE CANDIDATE 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule single
	"if there is a csp-variable whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
	(declare (salience ?*single-salience*))
	(technique ?cont single)
	?mod <- (candidate (context ?cont) (status cand) (label ?cand))
    (is-csp-variable-for-label (csp-var ?csp) (label ?cand))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?cand))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-single*) then
		(printout t "single" ?*implication-sign*) (print-asserted-candidate ?cand) (printout t crlf)
	)
	(modify ?mod (status c-value))
)

