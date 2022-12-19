
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL-G-WHIP[1]
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


;;; only a partial-gwhip[1] can give rise to a full g-whip[2]
;;; a partial-whip[1] can only give rise to a whip[2]
;;; here, ?rlc1 can therefore only be a gcand

(defrule partial-gwhip[1]-1
	(declare (salience ?*partial-gwhip[1]-salience-1*))
	(logical
        ;;; ?llc1
        (exists-link ?cont ?llc1 ?zzz&:(not (known-to-be-in-solution ?zzz)))

        ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
        ;;; t-whips should not be used if the focus list is not empty (this would restrict them improperly)
        (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

        ;;; ?rlc1 and ?csp1
        (technique ?cont partial-gwhip[1])
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

