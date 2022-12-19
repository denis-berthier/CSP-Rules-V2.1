
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-WHIP[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-gwhip[2]
	(declare (salience ?*activate-gwhip[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont gwhip))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_gW2))
	(assert (technique ?cont gwhip[2]))
	(bind ?*technique* gW[2])
)



(defrule track-gwhip[2]
	(declare (salience ?*activate-gwhip[2]-salience*))
	?level <- (technique ?cont gwhip[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule gwhip[2]
	(declare (salience ?*gwhip[2]-salience*))
	(chain
		(type partial-gwhip)
		(context ?cont)
		(length 1)
		(target ?zzz)
		(llcs ?llc1)
		(rlcs ?rlc1)
		(csp-vars ?csp1)
		(last-rlc ?rlc1) ; can only be a g-candidate
	)
    
    ;;; ?new-llc
    (exists-glink ?cont ?new-llc&~?zzz ?rlc1)
	
    (is-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc))
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (glinked-or ?xxx ?zzz ?rlc1)))
	
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-gwhip* ?*print-gwhip-2*) then
		(print-gwhip 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
)



