
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              WHIP[2]
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


(defrule activate-whip[2]
	(declare (salience ?*activate-whip[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont whip))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_W2))
    (assert (technique ?cont partial-whip[1]))
	(assert (technique ?cont whip[2]))
	(bind ?*technique* W[2])
)



(defrule track-whip[2]
	(declare (salience ?*activate-whip[2]-salience*))
	?level <- (technique ?cont whip[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; whip elimination rule

(defrule whip[2]
	(declare (salience ?*whip[2]-salience*))
    (chain
        (type partial-whip)
        (context ?cont)
        (length 1)
        (target ?zzz)
        (llcs ?llc1)
        (rlcs ?rlc1)
        (csp-vars ?csp1)
        (last-rlc ?rlc1)
    )
    ;;; ?new-llc
    (exists-link ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
    
    (is-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc))
    ;;; the following condition implies that ?new-csp is not a csp variable for ?zzz or ?rlc2
    (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (linked-or ?xxx ?zzz ?rlc1)))
	
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-whip* ?*print-whip-2*) then
		(print-whip 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
)



