
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              Z-CHAIN[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-z-chain[2]
	(declare (salience ?*activate-z-chain[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont z-chain))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_Z2))
    (assert (technique ?cont z-chain[2]))
    (assert (technique ?cont partial-whip[1]))
    (assert (technique ?cont partial-z-chain[1]))
	(bind ?*technique* Z[2])
)



(defrule track-z-chain[2]
	(declare (salience ?*activate-z-chain[2]-salience*))
	?level <- (technique ?cont z-chain[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; z-chain elimination rule
;;; notice that a partial-z-chain[1] is a mere partial-whip[1]

(defrule z-chain[2]
	(declare (salience ?*z-chain[2]-salience*))
	(chain
		(type partial-whip)
		(context ?cont)
		(length 1)
		(target ?zzz)
		(llcs ?llc1)
		(rlcs ?rlc1)
		(csp-vars ?csp1)
		(last-rlc ?last-rlc)
	)
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

	;;; ?new-llc
	(exists-link ?cont ?last-rlc ?new-llc&~?zzz&~?llc1&~?rlc1)
	
	(is-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc))
	;;; because, in a partial z-chain, ?zzz cannot be linked to any candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (exists-link ?cont ?xxx ?zzz))
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-z-chain* ?*print-z-chain-2*) then
		(print-z-chain 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
)



