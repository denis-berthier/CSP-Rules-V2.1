
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-Z-CHAIN[3]
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





(defrule activate-typed-z-chain[3]
	(declare (salience ?*activate-typed-z-chain[3]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont typed-z-chain))
=>
	(if ?*print-levels* then (printout t Entering_level_TyZ3))
    (assert (technique ?cont typed-z-chain[3]))
    (assert (technique ?cont typed-partial-z-chain[2]))
	(bind ?*technique* typed-z-chain[3])
)



(defrule track-typed-z-chain[3]
	(declare (salience ?*activate-typed-z-chain[3]-salience*))
	?level <- (technique ?cont typed-z-chain[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; z-chain elimination rule

(defrule typed-z-chain[3]
	(declare (salience ?*typed-z-chain[3]-salience*))
	(typed-chain
		(type typed-partial-z-chain)
        (csp-type ?csp-type)
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
	
	(is-typed-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc) (csp-var-type ?csp-type))
	;;; because, in a partial z-chain, ?zzz cannot be linked to any candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
	(forall (typed-csp-linked ?cont ?new-llc ?xxx ?new-csp ?csp-type) (exists-link ?cont ?xxx ?zzz))
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-typed-z-chain* ?*print-typed-z-chain-3*) then
		(print-typed-z-chain ?csp-type 3 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
	)
)



;;; remember that a typed-partial-z-chain[1] is a mere partial-whip[1]
;;; extension of an existing typed-partial-z-chain

(defrule typed-partial-z-chain[2]
    (declare (salience ?*typed-partial-z-chain[2]-salience*))
    (logical
        (typed-chain
            (type typed-partial-whip)
            (csp-type ?csp-type)
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
        (technique ?cont typed-partial-z-chain[2])
        ;;; because typed-z-chains[2] based on ?zzz (if any) have already been eliminated,
        ;;; there is at least one ?new-rlc not linked to ?zzz
        (typed-csp-linked
            ?cont
            ?new-llc
            ?new-rlc&~?zzz&~?llc1&~?rlc1
            ?new-csp&~?csp1
            ?csp-type
        )
        ;;; the next condition will detect cases when there is only one
    )
    
    ;;; as typed-z-chains[3] have been eliminated (because they have higher salience),
    ;;; the following implies that new-rlc must be the only non-z candidate for new-csp
    (forall (typed-csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp ?csp-type) (exists-link ?cont ?xxx ?zzz))
    
    ;;; do not assert different partial typed-z-chains with the same sequences of rlc's
    (not
        (typed-chain
            (type typed-partial-z-chain)
            (csp-type ?csp-type)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (rlcs ?rlc1 ?new-rlc)
        )
    )
=>
    (assert
        (typed-chain
            (type typed-partial-z-chain)
            (csp-type ?csp-type)
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


