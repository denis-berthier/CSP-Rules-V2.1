
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-BIVALUE-CHAIN[1]
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


(defrule activate-g-bivalue-chain[1]
	(declare (salience ?*activate-g-bivalue-chain[1]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont g-bivalue-chain))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_gBC1))
	(assert (technique ?cont g-bivalue-chain[1]))
	(bind ?*technique* gBC[1])
)



(defrule track-g-bivalue-chain[1]
	(declare (salience ?*activate-g-bivalue-chain[1]-salience*))
	?level <- (technique ?cont g-bivalue-chain[1])
=>
	(if ?*print-levels* then (printout t " with " ?level crlf))
)




;;; NOTICE THAT THIS IS THE SAME THING AS A PARTIAL WHIP[1] or a PARTIAL G-WHIP[1], except the (not (chain (type g-bivalue-chain) ...))
;;; this is redundant, but easier to manage
;;; BECAUSE G-BIVALUE-CHAINS DEPEND ON ?ZZZ, THEY ARE PROGRAMMED INDEPENDENTLY OF BIVALUE-CHAINS


(defrule partial-g-bivalue-chain[1]
	(declare (salience ?*partial-g-bivalue-chain[1]-salience*))
	(logical
        ;;; ?zzz and ?llc1
        (exists-link ?cont ?zzz ?llc1)
        (test (or (neq ?cont 0) (not (known-to-be-in-solution ?zzz))))

        ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
        (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

        (technique ?cont g-bivalue-chain[2])  ;;; need not be computed unless bivalue-chains[2] are activated
        
        (or
            (csp-linked ?cont ?llc1 ?rlc1 ?csp1)   ;;; case when ?rlc1 is a candidate
            (csp-glinked ?cont ?llc1 ?rlc1 ?csp1)  ;;; case when ?rlc1 is a g-candidate
        )
        (not (is-csp-variable-for-label (csp-var ?csp1) (label ?zzz)))

        ;;; the following condition implies that ?llc1 is not linked to ?zzz by ?csp1
        ;;; i.e. that csp1 is not a csp-variable for zzz
        (forall (csp-linked ?cont ?llc1 ?xxx&~?rlc1&:(not (label-in-glabel ?xxx ?rlc1)) ?csp1)
            (test (linked ?xxx ?zzz)) ; contrary to bivalue-chains, there may be z-candidates for the first csp-variable
        )
    )

    ;;; do not consider a bivalue-chain or a g-bivalue-chain with
    ;;; - the same target as an already existing one
    ;;; - and the same rlc1 or a larger rlc1 than an already existing one
    (not
        (chain
            (type g-bivalue-chain)
            (context ?cont)
            (length 1)
            (target ?zzz)
			(rlcs ?rlc1a&:(or (eq ?rlc1a ?rlc1) (label-in-glabel ?rlc1a ?rlc1))) 
            ;;; (glabel-in-glabel ?rlc1a ?rlc1) should also be excluded for applications in which glabels can be embedded
        )
    )

=>
	(assert
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
	)
)




