
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-T-WHIP[2]
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


(defrule activate-twhip[2]
    (declare (salience ?*activate-t-whip[2]-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont t-whip))
    )
=>
    (if ?*print-levels* then (printout t Entering_level_tW2))
    (assert (technique ?cont partial-whip[1]))
    (assert (technique ?cont t-whip[2]))
    (bind ?*technique* tW[2])
)



(defrule track-twhip[2]
    (declare (salience ?*activate-t-whip[2]-salience*))
    ?level <- (technique ?cont t-whip[2])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; t-whip elimination rule

(defrule t-whip[2]
    (declare (salience ?*t-whip[2]-salience*))
    (chain
        (type partial-whip)
        (context ?cont)
        (length 1)
        (target ?zzz1)
        (llcs ?llc1)
        (rlcs ?rlc1)
        (csp-vars ?csp1)
        (last-rlc ?rlc1)
    )

    ;;; front part
    (chain
        (type partial-whip)
        (context ?cont)
        (length 1)
        (target ?zzz&~?zzz1&~?llc1&~?rlc1)
        (llcs ?llc0&~?zzz1&~?llc1&~?rlc1)
        (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two partial-whips
        (csp-vars ?csp0&~?csp1)
        (last-rlc ?zzz1)
    )

    (exists-link ?cont ?zzz ?rlc1)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-t-whip* ?*print-t-whip-2*) then
        (print-t-whip-without-crlf 2 ?zzz (create$ ?llc0) (create$ ?zzz1) (create$ ?csp0) ?llc1 . ?csp1)
    )
    (assert (apply-rule-as-a-pseudo-block ?cont))
    (assert (pseudo-blocked ?cont t-whip[2] ?zzz ?zzz1 ?csp1 ?llc1 ?rlc1 ?rlc1 ?zzz ?csp0 ?llc0 ?zzz1))
)



(defrule apply-t-whip[2]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont t-whip[2] ?zzz ?zzz1 ?csp1 ?llc1 ?rlc1 ?rlc1 ?zzz ?csp0 ?llc0 ?zzz1)

    ;;; identify the other targets ?zzz-bis
    (chain
        (type partial-whip)
        (context ?cont)
        (length 1)
        (target ?zzz-bis&~?zzz&~?zzz1&~?llc1&~?rlc1)
        (llcs ?llc0&~?zzz-bis&~?zzz&~?zzz1&~?llc1&~?rlc1)
        (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two partial-whips
        (csp-vars ?csp0)
        (last-rlc ?zzz1)
    )

    (exists-link ?cont ?zzz-bis ?rlc1)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-t-whip* ?*print-t-whip-2*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz-bis)
    )
)





