
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL-WHIP[1]
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


(defrule partial-whip[1]
	(declare (salience ?*partial-whip[1]-salience*))
	(logical
        ;;; ?llc1
        (exists-link ?cont ?llc1 ?zzz&:(not (known-to-be-in-solution ?zzz)))

        ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
        ;;; t-whips should not be used if the focus list is not empty (this would restrict them improperly)
        (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

		(technique ?cont partial-whip[1])
		(csp-linked ?cont ?llc1 ?rlc1&~?zzz ?csp1)
	)
	
    ;;; the following condition implies that ?csp1 is not a csp variable for ?zzz
    ;;; as there is no whip[1] for ?zzz, it also implies that ?rlc1 is not linked to ?zzz
	(forall (csp-linked ?cont ?llc1 ?xxx&~?rlc1 ?csp1) (test (linked ?xxx ?zzz)))

    ;;; do not assert different partial whips with the same sequences of rlc's
	(not
		(chain
            (type partial-whip)
            (context ?cont)
            (length 1)
			(target ?zzz)
            (rlcs ?rlc1)
		)
	)
=>
	(assert 
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
	)
)


