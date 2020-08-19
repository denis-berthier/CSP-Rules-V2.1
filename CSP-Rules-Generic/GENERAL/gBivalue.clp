
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-BIVALUE
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





;;; IN THE CURRENT VERSION, THIS FILE IS NOT USED


(defrule activate-g-bivalue
	(declare (salience ?*activate-g-bivalue-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate g-bivalue))
=>
	(if ?*print-levels* then (printout t Entering_relation_g-bivalue))
	(assert (technique ?cont g-bivalue))
	(bind ?*technique* g-bivalue)
)


(defrule track-g-bivalue
	(declare (salience ?*activate-g-bivalue-salience*))
	?level <- (technique ?cont g-bivalue)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule g-candidates-csp-glinked
	(declare (salience ?*g-bivalue-salience-1*))
	(logical
		(technique ?cont g-bivalue)
        (g-candidate (context ?cont) (label ?cand1))
        (is-csp-variable-for-g-label (csp-var ?csp) (glabel ?cand1))
        (is-csp-variable-for-g-label (csp-var ?csp) (glabel ?cand2&:(< ?cand1 ?cand2)))
        (g-candidate (context ?cont) (label ?cand2))
    )
    ;;; no overlap between the two g-candidates 
    ;;; (BEWARE: this should be done at the structural level of g-labels!)
    (not (candidate (context ?cont) (label ?xxx&:(label-in-glabel ?xxx ?cand1)&:(label-in-glabel ?xxx ?cand2))))
=>
    (assert (g-candidates-csp-glinked ?cont ?cand1 ?cand2 ?csp))
    (assert (g-candidates-csp-glinked ?cont ?cand2 ?cand1 ?csp))
)



(defrule g-bivalue
	(declare (salience ?*g-bivalue-salience-2*))
	(logical
		(technique ?cont g-bivalue)
        (or 
            ;;; 2 candidates
            (bivalue ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
            
            ;;; 1 candidate and 1 g-candidate
            (and (csp-glinked ?cont ?cand1 ?cand2 ?csp) 
                 (not (csp-glinked ?cont ?candx&~?cand1 ?cand2 ?csp))
            )

            ;;; 2 g-candidates
            (and (g-candidates-csp-glinked ?cont ?cand1 ?cand2 ?csp)
                 (not (csp-glinked ?cont ?xxx&:(not (label-in-glabel ?xxx ?cand1)) ?cand2 ?csp))
            )
        )
    )
=>
	(assert (g-bivalue ?cont ?cand1 ?cand2 ?csp))
	(assert (g-bivalue ?cont ?cand2 ?cand1 ?csp))
)


