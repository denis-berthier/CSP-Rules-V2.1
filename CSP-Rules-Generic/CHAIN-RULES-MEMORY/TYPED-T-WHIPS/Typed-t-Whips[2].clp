
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-TYPED-T-WHIP[2]
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


(defrule activate-typed-t-whip[2]
    (declare (salience ?*activate-typed-t-whip[2]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont typed-t-whip))
    )
=>
    (if ?*print-levels* then (printout t Entering_level_TytW2))
    (assert (technique ?cont typed-partial-whip[1]))
    (assert (technique ?cont typed-t-whip[2]))
    (bind ?*technique* TYtW[2])
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
        (type partial-whip)
        (csp-type ?csp-type)
        (context ?cont)
        (length 1)
        (target ?zzz&~?zzz1&~?llc1&~?rlc1)
        (llcs ?llc0&~?zzz1&~?llc1&~?rlc1)
        (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two partial-whips
        (csp-vars ?csp0&~?csp1)
        (last-rlc ?zzz1)
    )

    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz&:(linked ?zzz ?rlc1)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-t-whip* ?*print-typed-t-whip-2*) then
        (print-typed-t-whip-without-crlf ?csp-type 2 ?zzz (create$ ?llc0) (create$ ?zzz1) (create$ ?csp0) ?llc1 . ?csp1)
    )
    (if (not ?*blocked-t-Whips*)
       then (printout t crlf)
       else
          ;;; prepare for finding more targets
          (assert (apply-rule-as-a-pseudo-block ?cont))
          (assert (pseudo-blocked ?cont typed-t-whip[2] ?csp-type ?zzz ?zzz1 ?csp1 ?llc1 ?rlc1 ?rlc1 ?csp0 ?llc0))
    )
)



(defrule apply-typed-t-whip[2]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont typed-t-whip[2] ?csp-type ?zzz ?zzz1 ?csp1 ?llc1 ?rlc1 ?rlc1 ?csp0 ?llc0)

    ;;; identify the other targets ?zzz-bis
    (typed-chain
        (type typed-partial-whip)
        (csp-type ?csp-type)
        (context ?cont)
        (length 1)
        (target ?zzz-bis&~?zzz&~?zzz1&~?llc1&~?rlc1)
        (llcs ?llc0&~?zzz-bis&~?zzz1&~?llc1&~?rlc1)
        (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two partial-whips
        (csp-vars ?csp0&~?csp1)
        (last-rlc ?zzz1)
    )

    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz&:(linked ?zzz-bis ?rlc1)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-typed-t-whip* ?*print-typed-t-whip-2*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz-bis)
    )
)





