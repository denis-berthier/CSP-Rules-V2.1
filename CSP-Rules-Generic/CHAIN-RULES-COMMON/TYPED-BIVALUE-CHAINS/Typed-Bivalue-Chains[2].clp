
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-BIVALUE-CHAIN[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - February 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-typed-bivalue-chain[2]
	(declare (salience ?*activate-typed-bivalue-chain[2]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate typed-bivalue-chain))
=>
	(if ?*print-levels* then (printout t Entering_level_TyBC2))
	(assert (technique ?cont typed-bivalue-chain[2]))
	(bind ?*technique* TyBC[2])
)



(defrule track-typed-bivalue-chain[2]
	(declare (salience ?*activate-typed-bivalue-chain[2]-salience*))
	?level <- (technique ?cont typed-bivalue-chain[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; typed-bivalue-chain eliminations rule

(defrule typed-bivalue-chain[2]
    (declare (salience ?*typed-bivalue-chain[2]-salience*))
    (typed-chain
        (type typed-bivalue-chain)
        (csp-type ?csp-type)
        (context ?cont)
        (length 2)
        (llcs $?llcs)
        (rlcs $?rlcs)
        (csp-vars $?csp-vars)
        (last-rlc ?last-rlc)
    )
    
    (exists-link ?cont ?zzz ?last-rlc)
    (exists-link ?cont ?zzz ?uuu&:(eq ?uuu (first $?llcs)))
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-bivalue-chain* ?*print-typed-bivalue-chain-2*) then
        (print-typed-bivalue-chain ?csp-type 2 ?zzz $?llcs $?rlcs $?csp-vars)
    )
)


;;; typed-partial-bivalue-chain extension rule

(defrule typed-partial-bivalue-chain[2]
	(declare (salience ?*typed-partial-bivalue-chain[2]-salience*))
	(logical
        ;;; as bivalue chains are reversible, one might think that one can always choose a starting direction
        ;;; But NO, because the next rules extend it only to the right
		
        (typed-csp-linked ?cont ?llc1 ?rlc1 ?csp1 ?csp-type)
        ;;; allow only the allowed csp-types
        (or (unrestricted-csp-types-in-typed-chains)
            (test (member$ ?csp-type ?*allowed-csp-types*))
        )
        (bivalue ?cont ?llc1 ?rlc1 ?csp1)

        (technique ?cont typed-bivalue-chain[2])
        ;;; ?new-llc
		(exists-link ?cont ?rlc1 ?new-llc&~?llc1)
        ;;; ?new-csp
        (is-typed-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc) (csp-var-type ?csp-type))
        ;;; ?new-rlc
        ;;; the following condition implies that new-csp is not a csp variable for llc1 or rlc1
		(bivalue ?cont ?new-llc ?new-rlc&~?llc1&~?rlc1 ?new-csp)
        ;;; check that ?new-csp has the right type
	)
=>
	(assert 
        (typed-chain
			(type typed-bivalue-chain)
            (csp-type ?csp-type)
			(context ?cont)
			(length 2)
			(llcs ?llc1 ?new-llc)
			(rlcs ?rlc1 ?new-rlc)
			(csp-vars ?csp1 ?new-csp)
			(last-rlc ?new-rlc)
		)
	)
)




