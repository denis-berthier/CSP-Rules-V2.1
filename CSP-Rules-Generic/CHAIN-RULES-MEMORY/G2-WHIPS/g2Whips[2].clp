
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G2-WHIP[2]
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





(defrule activate-g2whip[2]
	(declare (salience ?*activate-g2whip[2]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont g2whip))
=>
	(if ?*print-levels* then (printout t Entering_level_g2W2))
	(assert (technique ?cont g2whip[2]))
	(bind ?*technique* g2W[2])
)



(defrule track-g2whip[2]
	(declare (salience ?*activate-g2whip[2]-salience*))
	?level <- (technique ?cont g2whip[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; g2-whip elimination rule

(defrule g2whip[2]
	(declare (salience ?*g2whip[2]-salience*))
    (chain2r
        (type partial-g2whip)
        (context ?cont)
        (length 1)
		(target ?zzz)
		(llcs ?llc1)
		(rlcsa ?rlc1a)
		(rlcsb ?rlc1b)
		(csp-vars ?csp1)
		(last-rlca ?rlc1a)
		(last-rlcb ?rlc1b)
    )
    (exists-link ?cont ?new-llc&~?zzz&~?llc1&~?rlc1a&~?rlc1b ?rlc1a)
    (exists-link ?cont ?new-llc ?rlc1b)

    (is-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc))
    (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
        (test (or (linked ?xxx ?zzz) (and (linked ?xxx ?rlc1a) (linked ?xxx ?rlc1b))))
    )
	?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-g2whip* ?*print-g2whip-2*) then
		(print-g2whip 2 ?zzz (create$ ?llc1) (create$ ?rlc1a) (create$ ?rlc1b) (create$ ?csp1) ?new-llc . ?new-csp)
	)
)


;;; we can only have a g2cand "extension" (?rlc1a ?rlc1b), otherwise it would be a partial-whip

(defrule partial-g2whip[1]-2
	(declare (salience ?*partial-g2whip[1]-salience-2*))
	(logical
		(exists-link ?cont ?zzz&:(not (known-to-be-in-solution ?zzz)) ?llc1)	
		(technique ?cont g2whip[2])
		(csp-linked ?cont ?llc1 ?new-rlca&~?zzz&:(not (linked ?new-rlca ?zzz)) ?csp1)
		(csp-linked ?cont ?llc1 ?new-rlcb&~?zzz&:(< ?new-rlcb ?new-rlca)&:(not (linked ?new-rlcb ?zzz)) ?csp1)
	)
	
	(forall (csp-linked ?cont ?llc1 ?xxx&~?new-rlca&~?new-rlcb ?csp1)
        (test (linked ?xxx ?zzz)) ; => ?zzz is not linked to ?llc1 by ?csp1
	)
	
	;;; do not assert a partial g2-whip if there is already a partial-whip or a partial-g2-whip with a sequence of identical or smaller (rlca rlcb)'s
	(not
		(chain
			(type partial-whip)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(rlcs ?new-rlc&?new-rlca|?new-rlcb)
		)
	)
	(not
		(chain2r
			(type partial-g2whip)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(rlcsa ?new-rlca)
			(rlcsb ?new-rlcb)
		)
	)
=>
	(assert
		(chain2r
			(type partial-g2whip)
			(context ?cont)
			(length 1)
			(target ?zzz)
			(llcs ?llc1)
			(rlcsa ?new-rlca)
			(rlcsb ?new-rlcb)
			(csp-vars ?csp1)
			(last-rlca ?new-rlca)
			(last-rlcb ?new-rlcb)
		)
	)
)

