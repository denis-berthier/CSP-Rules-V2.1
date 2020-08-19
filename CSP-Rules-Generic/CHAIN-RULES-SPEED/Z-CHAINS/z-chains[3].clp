
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              Z-CHAIN[3]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-z-chain[3]
	(declare (salience ?*activate-z-chain[3]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont z-chain))
=>
	(if ?*print-levels* then (printout t Entering_level_Z3))
    (assert (technique ?cont z-chain[3]))
    (assert (technique ?cont partial-z-chain[2]))
	(bind ?*technique* z-chain[3])
)



(defrule track-z-chain[3]
	(declare (salience ?*activate-z-chain[3]-salience*))
	?level <- (technique ?cont z-chain[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; z-chain elimination rule

(defrule z-chain[3]
	(declare (salience ?*z-chain[3]-salience*))
	(chain
		(type partial-z-chain)
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
	;;; because, in a partial z-chain, ?zzz cannot be linked to any candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (exists-link ?cont ?xxx ?zzz))
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-z-chain* ?*print-z-chain-3*) then
		(print-z-chain 3 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
	)
)



;;; remember that a partial-z-chain[1] is a mere partial-whip[1]
;;; extension of an existing partial-z-chain

(defrule partial-z-chain[2]
	(declare (salience ?*partial-z-chain[2]-salience*))
	(logical
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
		
		;;; ?new-llc
		(exists-link ?cont ?new-llc&~?zzz&~?llc1&~?rlc1 ?last-rlc)
		
		;;; ?new-rlc and ?new-csp
		(technique ?cont partial-z-chain[2])
		;;; because z-chains[2] based on ?zzz (if any) have already been eliminated,
		;;; there is at least one ?new-rlc not linked to ?zzz
		(csp-linked
			?cont
			?new-llc
			?new-rlc&~?zzz&~?llc1&~?rlc1
			?new-csp&~?csp1
		)
		;;; the next condition will detect cases when there is only one
	)
	
	;;; as z-chains[2] have been eliminated (because they have higher salience),
	;;; the following implies that new-rlc must be the only non-z candidate for new-csp
	(forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp) (exists-link ?cont ?xxx ?zzz))
	
	;;; do not assert different partial z-chains with the same sequences of rlc's
	(not
		(chain
			(type partial-z-chain)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(rlcs ?rlc1 ?new-rlc)
		)
	)
=>
	(assert
		(chain
			(type partial-z-chain)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(llcs ?llc1 ?new-llc)
			(rlcs ?rlc1 ?new-rlc)
			(csp-vars ?csp1 ?new-csp)
			(last-rlc ?new-rlc)
		)
	)
)



