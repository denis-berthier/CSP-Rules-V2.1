
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-WHIP[2]
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


(defrule activate-gwhip[2]
	(declare (salience ?*activate-gwhip[2]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont gwhip))
=>
	(if ?*print-levels* then (printout t Entering_level_gW2))
	(assert (technique ?cont gwhip[2]))
	(bind ?*technique* gW[2])
)



(defrule track-gwhip[2]
	(declare (salience ?*activate-gwhip[2]-salience*))
	?level <- (technique ?cont gwhip[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)





(defrule gwhip[2]
	(declare (salience ?*gwhip[2]-salience*))
	(chain
		(type partial-gwhip)
		(context ?cont)
		(length 1)
		(target ?zzz)
		(llcs ?llc1)
		(rlcs ?rlc1)
		(csp-vars ?csp1)
		(last-rlc ?rlc1) ; can only be a g-candidate
	)
    
    (exists-glink ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)

	(is-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc))
	;;; because, in a partial gwhip, ?zzz cannot be linked or glinked to any candidate or g-candidate in?rlc1
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
	(forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
        (or (exists-link ?cont ?xxx ?zzz) (exists-glink ?cont ?xxx ?rlc1))
    )
	
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-gwhip* ?*print-gwhip-2*) then
		(print-gwhip 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
)



;;; only a partial-gwhip[1] can give rise to a full g-whip[2]
;;; a partial-whip[1] can only give rise to a whip[2]
;;; here, ?rlc1 can therefore only be a gcand

(defrule partial-gwhip[1]-1
	(declare (salience ?*partial-gwhip[1]-salience-1*))
	(logical
        ;;; ?llc1
        (exists-link ?cont ?llc1 ?zzz&:(not (known-to-be-in-solution ?zzz)))

        ;;; ?rlc1 and ?csp1
        (technique ?cont gwhip[2])
		;;; because gwhips[2] based on ?zzz (if any) have already been eliminated,
		;;; there is at least one ?new-rlc not glinked to ?zzz or ?rlc1
		(csp-glinked ?cont ?llc1 ?rlc1&:(not (label-in-glabel ?zzz ?rlc1)) ?csp1)
	)
	
	(forall (csp-linked ?cont ?llc1 ?xxx&:(not (label-in-glabel ?xxx ?rlc1)) ?csp1)
        (exists-link ?cont ?xxx ?zzz) ; => ?zzz is not linked to ?llc1 by ?csp1
	)

	;;; do not assert a partial-gwhip[1] with
    ;;; - the same target as an already existing one
    ;;; - and the same rlc1 or with a larger rlc1 than an already existing partial-whip[1] or partial-gwhip[1]
	(not
		(chain
            (type partial-whip|partial-gwhip)
            (context ?cont)
            (length 1)
			(target ?zzz)
			(rlcs ?rlc1a&:(or (eq ?rlc1a ?rlc1) (label-in-glabel ?rlc1a ?rlc1)))
		)
	)
=>
	(assert 
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
	)
)

