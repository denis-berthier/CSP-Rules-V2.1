
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BRAID[3]
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


(defrule activate-braid[3]
	(declare (salience ?*activate-braid[3]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont braid))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_B3))
	(assert (technique ?cont braid[3]))
	(bind ?*technique* B[3])
)



(defrule track-braid[3]
	(declare (salience ?*activate-braid[3]-salience*))
	?level <- (technique ?cont braid[3])
=>
	(if ?*print-levels* then (printout t " with " ?level crlf))
)



;;; a complete non-whip braid[3] can only be obtained by a non-partial-whip partial-braid[2]

(defrule braid[3]
	(declare (salience ?*braid[3]-salience*))
	(chain
		;;; partial-whips can be omitted
		(type partial-braid)
		(context ?cont)
		(length 2)
		(target ?zzz)
		(llcs $?llcs)
		(rlcs $?rlcs)
		(csp-vars $?csp-vars)
		(last-rlc ?last-rlc)
	)
    
    ;;; ?new-llc
	(candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(linked-or ?new-llc ?zzz $?rlcs)))
	
    ;;; ?new-csp
	(is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc))
    
    ;;; the following condition implies that ?new-csp is not a csp variable for ?zzz or ?rlc1
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
        (test (linked-or ?xxx ?zzz $?rlcs))
    )
	
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-braid* ?*print-braid-3*) then
		(print-braid 3 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
	)
)



;;; extension of an existing partial-whip or partial-braid

(defrule partial-braid[2]
	(declare (salience ?*partial-braid[2]-salience*))
	(logical
		(chain
			(type partial-whip|partial-braid)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(llcs ?llc1)
			(rlcs ?rlc1)
			(csp-vars ?csp1)
			(last-rlc ?rlc1)
		)

        ;;; ?new-llc
		(candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&~?rlc1&:(linked ?new-llc ?zzz)))
        ;;; the case (linked ?llc2 ?rlc1) is excluded because it would produce a partial whip

		(technique ?cont braid[3])
        ;;; ?new-rlc and ?new-csp
		(csp-linked
			?cont
			?new-llc
			?new-rlc&~?zzz&~?llc1&~?rlc1
			?new-csp&~?csp1
		)
	)

    ;;; as braids[2] have been eliminated (because they have higher salience),
    ;;; the following condition implies that ?new-csp is not a csp variable for ?zzz or ?rlc1
	(forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
        (test (linked-or ?xxx ?zzz ?rlc1))
    )

	;;; do not assert different partial braids with the same sequences of rlc's as another partial-braid or a partial-whip
	(not 
        (and
            (chain
                (type partial-whip|partial-braid)
                (context ?cont)
                (length 2)
                (target ?zzz)
                (rlcs $?rlcs-bis)
            )
            (test (same-sets-of-rlcs ?new-rlc (create$ ?rlc1) $?rlcs-bis))
        )
    )
=>
	(assert
		(chain
			(type partial-braid)
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




