
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              WHIP[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - October 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; SPECIAL CASE. DO NOT USE THE AUTOMATIC GENERATOR


(defrule activate-whip[2]
	(declare (salience ?*activate-whip[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont whip))
    )
=>
	(if ?*print-levels* then (printout t "Entering_level_W2"))
    (assert (technique ?cont partial-whip[1]))
    (assert (technique ?cont whip[2]))
	(bind ?*technique* W[2])
)



(defrule track-whip[2]
	(declare (salience ?*activate-whip[2]-salience*))
	?level <- (technique ?cont whip[2])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule whip[2]
	(declare (salience ?*whip[2]-salience*))
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
    (exists-link ?cont ?new-llc&~?zzz&~?llc1&~?rlc1 ?rlc1)
    
    ;;; ?new-csp
    (is-csp-variable-for-label (csp-var ?new-csp&~?csp1) (label ?new-llc))
	;;; because, in a partial whip, ?zzz cannot be linked to any candidate in $?rlcs
	;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
	;;; i.e. that ?zzz is not a candidate for ?new-csp
    (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
        (or (exists-link ?cont ?xxx ?zzz)
            (exists-link ?cont ?xxx ?rlc1)
        )
    )
	
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L2* ?*print-whip* ?*print-whip-2*) then
		(print-whip-without-crlf 2 ?zzz (create$ ?llc1) (create$ ?rlc1) (create$ ?csp1) ?new-llc . ?new-csp)
	)
    (if (not ?*blocked-Whips[1]*)
        then (printout t crlf)
        else (assert (apply-rule-as-a-pseudo-block ?cont))
            (assert (pseudo-blocked ?cont whip[2] ?zzz ?csp1 ?llc1 ?rlc1 ?new-csp ?new-llc))
    )
)


(defrule apply-whip[2]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont whip[2] ?zzz ?csp1 ?llc1 ?rlc1 ?csp2 ?llc2)

    ;;; identify the other targets ?zzz2
    (exists-link ?cont ?llc1 ?zzz2&~?zzz&~?rlc1&~?llc2)
    
    ;;; check the conditions for a partial-whip[1] based on ?zzz2
    (forall (csp-linked ?cont ?xxx ?rlc1 ?csp1) (exists-link ?cont ?xxx ?zzz2))
    ;;; the following condition is useless
    ;;; if such a link existed, ?zzz2 would already be eliminated by a whip[1]
    ;;; as a result, ?csp1 is not a csp-var for ?zzz2
    ; (not (exists-link ?cont ?zzz2 ?rlc1))
    
    ;;; check the conditions for a whip[2]
    (forall (csp-linked ?cont ?yyy ?llc2 ?csp2)
        (or (exists-link ?cont ?yyy ?zzz2)
            (exists-link ?cont ?yyy ?rlc1)
        )
    )
    ;;; the next condition is useless, because we already know that ?zzz2 is not linked to ?rlc1
    ; (not (is-csp-variable-for-label (csp-var ?csp2) (label ?zzz2))); ???

    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-whip* ?*print-whip-2*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)


