
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL-WHIP[2]
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


(defrule partial-whip[2]
	(declare (salience ?*partial-whip[2]-salience*))
	(logical
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

		(technique ?cont partial-whip[2])
        ;;; ?new-rlc and ?new-csp
        ;;; because whips[2] based on ?zzz (if any) have already been eliminated,
        ;;; there is at least one ?new-rlc not linked to ?zzz or ?rlc1
		(csp-linked ?cont ?new-llc ?new-rlc&~?zzz&~?llc1&~?rlc1 ?new-csp&~?csp1)
        ;;; the following condition will detect cases when there is only one
	)

    ;;; new rlc
    ;;; the following condition implies that ?new-csp is not a csp variable for ?zzz or ?rlc1
	(forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp) (test (linked-or ?xxx ?zzz ?rlc1)))
    
    ;;; do not assert different partial whips with the same sequences of rlc's
	(not
		(chain
            (type partial-whip)
            (context ?cont)
            (length 2)
			(target ?zzz)
            (rlcs ?rlc1 ?new-rlc)
		)
	)
=>
	(assert 
		(chain
            (type partial-whip)
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

