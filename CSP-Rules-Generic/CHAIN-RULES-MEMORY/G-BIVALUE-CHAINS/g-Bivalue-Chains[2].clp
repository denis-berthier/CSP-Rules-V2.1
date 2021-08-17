
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-BIVALUE-CHAIN[2]
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
;;; NOTICE THAT THERE IS MUCH REDUNDANCY WITH WHIP[2] AND G-WHIP[2]


(defrule activate-g-bivalue-chain[2]
	(declare (salience ?*activate-g-bivalue-chain[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont g-bivalue-chain))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_gBC2))
	(assert (technique ?cont g-bivalue-chain[2]))
	(bind ?*technique* g-BC[2])
)



(defrule track-g-bivalue-chain[2]
	(declare (salience ?*activate-g-bivalue-chain[2]-salience*))
	?level <- (technique ?cont g-bivalue-chain[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule g-bivalue-chain[2]
	(declare (salience ?*g-bivalue-chain[2]-salience*))
	(chain
		(type g-bivalue-chain)
		(context ?cont)
		(length 2)
        (target ?zzz)
		(llcs $?llcs)
		(rlcs $?rlcs)
		(csp-vars $?csp-vars)
		(last-rlc ?last-rlc)
	)
	
	(test (glinked-or ?zzz ?last-rlc))
    (not (is-csp-variable-for-label (csp-var ?last-csp&:(eq ?last-csp (last $?csp-vars))) (label ?zzz)))
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-g-bivalue-chain* ?*print-g-bivalue-chain-2*) then
		(print-g-bivalue-chain 2 ?zzz $?llcs $?rlcs $?csp-vars)
	)
)



;;; 1- extension of an existing g-bivalue-chain[1] with a candidate ?new-rlc
;;; Must ?rcl1 be a g-cand (otherwise we'd get a bivalue-chain) ?
;;; NO, because there can be z-candidates in ?csp1
;;; moreover, g-bivalue-chains are programmed independently of bivalue-chains

(defrule partial-g-bivalue-chain[2]-1
	(declare (salience ?*partial-g-bivalue-chain[2]-salience-1*))
	(logical
		(chain
			(type g-bivalue-chain)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(llcs ?llc1)
			(rlcs ?rlc1)
			(csp-vars ?csp1)
			(last-rlc ?rlc1)
		)

        ;;; ?new-llc
		(technique ?cont g-bivalue-chain[2])
        (or
            (exists-link ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
            (exists-glink ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
        )
		(not (is-csp-variable-for-label (csp-var ?csp1) (label ?new-llc)))

        ;;; ?new-rlc and ?new-csp
        (csp-linked
			?cont
			?new-llc
			?new-rlc&~?zzz&~?llc1&~?rlc1
			?new-csp&~?csp1
		)
	)

	(forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp) 
        (test (glinked-or ?xxx ?rlc1)) ; => ?new-llc is not linked or glinked to ?rlc1 by ?new-csp
    )
	
    ;;; do not consider a g-bivalue-chain with
    ;;; - the same target as an already existing one
    ;;; - and the same sequence of rlcs than an already existing one
	(not
		(chain
			(type g-bivalue-chain)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(rlcs ?rlc1 ?new-rlc)
		)
	)
=>
	(assert
		(chain
			(type g-bivalue-chain)
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



;;; 2- extension of an existing g-bivalue-chain[1] with a g-candidate
;;; ?rlc1 can be a candidate or a g-candidate

(defrule partial-g-bivalue-chain[2]-2
	(declare (salience ?*partial-g-bivalue-chain[2]-salience-2*))
	(logical
		(chain
			(type g-bivalue-chain)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(llcs ?llc1)
			(rlcs ?rlc1)
			(csp-vars ?csp1)
			(last-rlc ?rlc1)
		)

        ;;; ?new-llc
		(technique ?cont g-bivalue-chain[2])
        (or
            (exists-link ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
            (exists-glink ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
        )
		(not (is-csp-variable-for-label (csp-var ?csp1) (label ?new-llc)))

        ;;; ?new-rlc and ?new-csp
        (csp-glinked
			?cont
			?new-llc
			?new-rlc&~?rlc1&:(not (label-in-glabel ?rlc1 ?new-rlc))
			?new-csp&~?csp1
		)
	)

	(forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
        (test (glinked-or ?xxx ?rlc1)) ; => ?new-llc is not linked or glinked to ?rlc1 by ?new-csp
	)
	
    ;;; do not consider a g-bivalue-chain with
    ;;; - the same target as an already existing one
    ;;; - and the same sequence of rlcs than an already existing one or with no rlc smaller than an existing one
	(not
		(chain
            (type bivalue-chain|g-bivalue-chain)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(rlcs ?rlc1 ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
            ;;; (glabel-in-glabel ?new-rlca ?new-rlc) should also be excluded for applications in which glabels can be embedded
		)
	)
=>
	(assert
		(chain
			(type g-bivalue-chain)
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

