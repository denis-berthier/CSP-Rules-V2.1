
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-TYPED-WHIP[2]
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


(defrule activate-typed-whip[2]
	(declare (salience ?*activate-typed-whip[2]-salience*))
	(logical (play) (context (name ?cont)))
	(not (deactivate ?cont typed-whip))
=>
	(if ?*print-levels* then (printout t "Entering_level_TyW2"))
    (assert (technique ?cont typed-partial-whip[1]))
    (assert (technique ?cont typed-whip[2]))
	(bind ?*technique* TyW[2])
)



(defrule track-typed-whip[2]
	(declare (salience ?*activate-typed-whip[2]-salience*))
	?level <- (technique ?cont typed-whip[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule detect-typed-whip[2]
	(declare (salience ?*typed-whip[2]-salience*))
    (typed-chain
        (type typed-partial-whip)
        (csp-type ?csp-type)
        (context ?cont)
        (length 1)
        (target ?zzz)
        (llcs ?llc1)
        (rlcs ?rlc1)
        (csp-vars ?csp1)
        (last-rlc ?rlc1)
    )
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

    ;;; ?new-llc
    (exists-link ?cont ?new-llc&~?zzz&~?llc1&~?rlc1 ?rlc1)
    
    (is-typed-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc) (csp-var-type ?csp-type))
	;;; because, in a typed partial whip, ?zzz cannot be linked to any candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
    (forall (typed-csp-linked ?cont ?new-llc ?xxx ?new-csp ?csp-type)
        (or (exists-link ?cont ?xxx ?zzz)
            (exists-link ?cont ?xxx ?rlc1)
        )
    )
	
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-typed-whip* ?*print-typed-whip-2*) then
		(print-typed-whip-without-crlf ?csp-type 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
    (assert (apply-rule-as-a-pseudo-block ?cont))
    (assert (pseudo-blocked ?cont typed-whip[2] ?csp-type ?zzz ?csp1 ?llc1 ?rlc1 ?new-csp ?new-llc))
)


(defrule apply-typed-whip[2]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont typed-whip[2] ?csp-type ?zzz ?csp1 ?llc1 ?rlc1 ?csp2 ?llc2)

    ;;; identify the other targets ?zzz2
    (exists-link ?cont ?llc1 ?zzz2&~?zzz&~?rlc1&~?llc2)
    
    ;;; check the conditions for a typed-partial-typed-whip[1] based on ?zzz2
    (forall (typed-csp-linked ?cont ?xxx ?rlc1 ?csp1 ?csp-type) (exists-link ?cont ?xxx ?zzz2))
    ;;; the following condition is useless
    ;;; if such a link existed, ?zzz2 would already be eliminated by a typed-whip[1]
    ;;; as a result, ?csp1 is not a csp-var for ?zzz2
    ; (not (exists-link ?cont ?zzz2 ?rlc1))
    
    ;;; check the conditions for a typed-whip[2]
    (forall (typed-csp-linked ?cont ?yyy ?llc2 ?csp2 ?csp-type)
        (or (exists-link ?cont ?yyy ?zzz2)
            (exists-link ?cont ?yyy ?rlc1)
        )
    )

    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-whip* ?*print-typed-whip-2*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)


