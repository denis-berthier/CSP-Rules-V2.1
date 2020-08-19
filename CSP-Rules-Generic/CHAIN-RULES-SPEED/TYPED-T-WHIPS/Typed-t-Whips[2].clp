
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-T-WHIP[2]
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





(defrule activate-typed-t-whip[2]
    (declare (salience ?*activate-typed-t-whip[2]-salience*))
    (logical (play) (context (name ?cont)))
    (not (deactivate ?cont whip))
=>
    (if ?*print-levels* then (printout t Entering_level_TytW2))
    (assert (technique ?cont typed-partial-whip[1]))
    (assert (technique ?cont typed-t-whip[2]))
    (bind ?*technique* TytW[2])
)



(defrule track-typed-t-whip[2]
    (declare (salience ?*activate-typed-t-whip[2]-salience*))
    ?level <- (technique ?cont typed-t-whip[2])
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; typed-t-whip elimination rule

(defrule typed-t-whip[2]
    (declare (salience ?*typed-t-whip[2]-salience*))
    (typed-chain
        (type typed-partial-whip)
        (csp-type ?csp-type)
        (context ?cont)
        (length 1)
        (target ?zzz1)
        (llcs ?llc1)
        (rlcs ?rlc1)
        (csp-vars ?csp1)
        (last-rlc ?rlc1)
    )

    ;;; front part
    (typed-chain
        (type typed-partial-whip)
        (csp-type ?csp-type)
        (context ?cont)
        (length 1)
        (target ?zzz&~?zzz1&~?llc1&~?rlc1)
        (llcs ?llc0&~?zzz1&~?llc1&~?rlc1)
        (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two typed-partial-whips
        (csp-vars ?csp0&~?csp1)
        (last-rlc ?zzz1)
    )

    (exists-link ?cont ?zzz ?rlc1)
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-t-whip* ?*print-typed-t-whip-2*) then
        (print-typed-t-whip ?csp-type 2 ?zzz (create$ ?llc0) (create$ ?zzz1) (create$ ?csp0) ?llc1 . ?csp1)
    )
)



