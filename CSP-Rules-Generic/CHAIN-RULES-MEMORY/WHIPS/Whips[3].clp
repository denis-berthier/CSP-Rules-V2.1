
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              WHIP[3]
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


(defrule activate-whip[3]
	(declare (salience ?*activate-whip[3]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont whip))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_W3))
    (assert (technique ?cont partial-whip[2]))
	(assert (technique ?cont whip[3]))
	(bind ?*technique* W[3])
)



;;; whip elimination rule

(defrule track-whip[3]
	(declare (salience ?*activate-whip[3]-salience*))
	?level <- (technique ?cont whip[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule whip[3]
	(declare (salience ?*whip[3]-salience*))
    (chain
        (type partial-whip)
        (context ?cont)
        (length 2)
        (target ?zzz)
        (llcs $?llcs)
        (rlcs $?rlcs)
        (csp-vars $?csp-vars)
        (last-rlc ?last-rlc)
    )
    ;;; ?new-llc
	(exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)

    (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc))
    ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
    ;;; i.e. that ?zzz is not a candidate for ?new-csp
    ;;; (because, in a partial whip, ?zzz cannot be linked to any candidate in $?rlcs)
    (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (linked-or ?xxx ?zzz $?rlcs)))
	
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-whip* ?*print-whip-3*) then
		(print-whip 3 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
	)
)



