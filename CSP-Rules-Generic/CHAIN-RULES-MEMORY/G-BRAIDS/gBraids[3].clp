
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-BRAID[3]
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





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-gbraid[3]
	(declare (salience ?*activate-gbraid[3]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont gbraid))
=>
	(if ?*print-levels* then (printout t Entering_level_gB3))
	(assert (technique ?cont gbraid[3]))
	(bind ?*technique* gBraid[3])
)



(defrule track-gbraid[3]
	(declare (salience ?*activate-gbraid[3]-salience*))
	?level <- (technique ?cont gbraid[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule gbraid[3]
	(declare (salience ?*gbraid[3]-salience*))
	(chain
		(type partial-gbraid)
		(context ?cont)
		(length 2)
		(target ?zzz)
		(llcs $?llcs)
		(rlcs $?rlcs)
		(csp-vars $?csp-vars)
		(last-rlc ?last-rlc)
	)
		
	;;; ?new-llc
	;;; here, $?rlcs can contain both candidates and g-candidates
    (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(glinked-or ?new-llc ?zzz $?rlcs)))

	(is-csp-variable-for-label (csp-var ?new-csp&:(neq ?new-csp (last $?csp-vars))) (label ?new-llc))
	;;; because, in a partial gbraid, ?zzz cannot be linked or glinked to any candidate or g-candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
		(test (glinked-or ?xxx ?zzz $?rlcs)) ;;; => ?zzz is not a label for ?new-csp
	)
	
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-gbraid* ?*print-gbraid-3*) then
		(print-gbraid 3 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
	)
)



;;; 1) extension of an existing g-whip with a candidate

(defrule partial-gbraid[2]-1
	(declare (salience ?*partial-gbraid[2]-salience-1*))
	(logical
		(chain
			(type partial-gwhip)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(llcs ?llc1)
			(rlcs ?rlc1)
			(csp-vars ?csp1)
			(last-rlc ?rlc1)
		)
		
		;;; ?new-llc
		;;; here, ?rlc1 can be either a candidate or a g-candidate
        (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&~?llc1&~?rlc1&:(glinked-or ?new-llc ?zzz (create$ ?rlc1))))

		(technique ?cont gbraid[3])
		;;; ?new-rlc and ?new-csp
		(csp-linked
			?cont
			?new-llc
			?new-rlc&~?zzz&~?llc1&~?rlc1
			?new-csp&~?csp1
		)
    )

    (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
        (test (glinked-or ?xxx ?zzz ?rlc1))  ;;; here, ?rlc1 can be either a candidate or a g-candidate
    )

    ;;; do not assert different partial-gbraids with the same sets of rlc's
    ;;; this condition may have to be strengthened in order to eliminate more useless partial-gbraids
    ;;; these conditions should be within the logical in order to make them independent of the generation order
    ;;; but this would be very inefficient
    (not
        (chain
            (type partial-gwhip|partial-gbraid)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (rlcs $?rlcsa&:(same-sets-of-rlcs ?new-rlc (create$ ?rlc1) $?rlcsa))
        )
    )
=>
	(assert
		(chain
			(type partial-gbraid)
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



;;; 2) extension of an existing partial-whip with a g-candidate
;;; (extension of a partial-whip or partial-braid with a candidate would still be a partial-whip or partial-braid)

(defrule partial-gbraid[2]-2
	(declare (salience ?*partial-gbraid[2]-salience-2*))
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
		;;; here, ?rlc1 can only be a candidate
        (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&~?llc1&~?rlc1&:(linked-or ?new-llc ?zzz (create$ ?rlc1))))

		(technique ?cont gbraid[3])
		;;; ?new-rlc and ?new-csp
		(csp-glinked
			?cont
			?new-llc
			?new-rlc&:(glabel-contains-none-of ?new-rlc ?zzz ?rlc1)
			?new-csp&~?csp1
		)
    )

    (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
        (test (linked-or ?xxx ?zzz ?rlc1))  ;;; here, ?rlc1 can only be a candidate
    )

    ;;; do not assert a new partial-gbraid with the same sets of rlc's as an existing partial-gwhip or partial-gbraid
    ;;; or with its new-rlc larger than an rlc of an existing whip or braid
    ;;; these conditions should be within the logical in order to make them independent of the generation order
    ;;; but this would be very inefficient
    (not
        (chain
            (type partial-gwhip|partial-gbraid)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (rlcs $?rlcsa&:(same-sets-of-rlcs ?new-rlc (create$ ?rlc1) $?rlcsa))
        )
    )
    (not
        (chain
            (type partial-whip|partial-braid)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (rlcs $?rlcsa&:(and (member$ ?rlc1 $?rlcsa) (glabel-contains-some-of ?new-rlc $?rlcsa)))
		)
	)
=>
	(assert
		(chain
			(type partial-gbraid)
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



;;; 3) extension of an existing g-whip with a g-candidate
;;; this case has separate treatment because non-redundancy is harder to formulate

(defrule partial-gbraid[2]-3
	(declare (salience ?*partial-gbraid[2]-salience-3*))
	(logical
		(chain
			(type partial-gwhip)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(llcs ?llc1)
			(rlcs ?rlc1)
			(csp-vars ?csp1)
			(last-rlc ?rlc1)
		)
		
		;;; ?new-llc
		;;; here, ?rlc1 can be either a candidate or a g-candidate
        (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&~?llc1&~?rlc1&:(glinked-or ?new-llc ?zzz (create$ ?rlc1))))

		(technique ?cont gbraid[3])
		;;; ?new-rlc and ?new-csp
		(csp-glinked
			?cont
			?new-llc
			?new-rlc&~?rlc1&:(glabel-contains-none-of ?new-rlc ?zzz ?rlc1)
			?new-csp&~?csp1
		)
    )
	
    (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
        (test (glinked-or ?xxx ?zzz ?rlc1))  ;;; here, ?rlc1 can be either a candidate or a g-candidate
    )
		
    ;;; do not assert different partial-gbraids with the same sets of rlc's
    ;;; or with its new-rlc larger than an existing one
    ;;; this condition may have to be strengthened in order to eliminate more useless partial-gbraids
    ;;; these conditions should be within the logical in order to make them independent of the generation order
    ;;; but this would be very inefficient
    (not
        (chain
            (type partial-gwhip|partial-gbraid)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (rlcs $?rlcsa&:(and (member$ ?rlc1 $?rlcsa)
                            (or (member$ ?new-rlc $?rlcsa)
                                (glabel-contains-some-of ?new-rlc $?rlcsa)
                            )
                        )
			)
		)
	)
=>
	(assert
		(chain
			(type partial-gbraid)
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

