
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-WHIP[3]
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


(defrule activate-gwhip[3]
	(declare (salience ?*activate-gwhip[3]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont gwhip))
=>
	(if ?*print-levels* then (printout t Entering_level_gW3))
	(assert (technique ?cont gwhip[3]))
	(bind ?*technique* gW[3])
)



(defrule track-gwhip[3]
	(declare (salience ?*activate-gwhip[3]-salience*))
	?level <- (technique ?cont gwhip[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule gwhip[3]
	(declare (salience ?*gwhip[3]-salience*))
	(chain
		(type partial-gwhip)
		(context ?cont)
		(length 2)
		(target ?zzz)
		(llcs $?llcs)
		(rlcs $?rlcs)
		(csp-vars $?csp-vars)
		(last-rlc ?last-rlc)
	)
    
    ;;; ?new-llc
	(or
		(exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
		(exists-glink ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
	)

	(is-csp-variable-for-label (csp-var ?new-csp&:(neq ?new-csp (last $?csp-vars))) (label ?new-llc))
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (glinked-or ?xxx ?zzz $?rlcs)))
	
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L3* ?*print-gwhip* ?*print-gwhip-3*) then
		(print-gwhip 3 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
	)
)



;;; 1) extension of an existing partial g-whip with a candidate

(defrule partial-gwhip[2]-1
	(declare (salience ?*partial-gwhip[2]-salience-1*))
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
        (exists-glink ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)

		(technique ?cont gwhip[3])
        ;;; ?new-rlc and ?new-csp
		;;; candidate ?lrc2 cannot be equal to ?rlc1 (which is a g-candidate in this case) but it may be in g-candidate ?rlc1
		(csp-linked
			?cont
			?new-llc
			?new-rlc&~?zzz&~llc1&~?rlc1
			?new-csp&~?csp1
		)
	)
			
	(forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
		(test (glinked-or ?xxx ?zzz ?rlc1))
	)

	;;; do not assert different partial gwhips with the same sequences of rlc's
	(not
		(chain
			(type partial-gwhip)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(rlcs ?rlc1 ?new-rlc)
		)
	)
=>
	(assert
		(chain
			(type partial-gwhip)
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



;;; 2) extension of an existing partial whip with a g-candidate

(defrule partial-gwhip[2]-2
	(declare (salience ?*partial-gwhip[2]-salience-2*))
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
        
        ;;; new llc
        (exists-link ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)

		(technique ?cont gwhip[3])
        ;;; new rlc
		(csp-glinked
			?cont
			?new-llc
			?new-rlc&~?zzz&~?llc1&~?rlc1&:(glabel-contains-none-of ?new-rlc ?zzz ?rlc1)
			?new-csp&~?csp1
		)
	)
			
	(forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
		(test (glinked-or ?xxx ?zzz ?rlc1))
	)

	;;; do not assert a partial gwhip with the same sequences of rlc's or with no non smaller rlc than an existing one
	(not
		(chain
			(type partial-whip|partial-gwhip)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(rlcs  ?rlc1 ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
		)
	)
=>
	(assert
		(chain
			(type partial-gwhip)
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



;;; 3) extension of an existing partial g-whip with a g-candidate

(defrule partial-gwhip[2]-3
	(declare (salience ?*partial-gwhip[2]-salience-3*))
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
        
        ;;; new llc
        (or (exists-link ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
            (exists-glink ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)
        )

		(technique ?cont gwhip[3])
        ;;; new rlc
		(csp-glinked
			?cont
			?new-llc
			?new-rlc&~?zzz&~?llc1&~?rlc1&:(glabel-contains-none-of ?new-rlc ?zzz ?rlc1)
			?new-csp&~?csp1
		)
	)
			
	(forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
		(test (glinked-or ?xxx ?zzz ?rlc1))
	)

	;;; do not assert a partial gwhip with the same sequences of rlc's or with no non smaller rlc than an existing one
	(not
		(chain
			(type partial-whip|partial-gwhip)
			(context ?cont)
			(length 2)
			(target ?zzz)
			(rlcs  ?rlc1 ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
		)
	)
=>
	(assert
		(chain
			(type partial-gwhip)
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

