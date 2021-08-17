
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL-WHIP[1]
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


;;; extension of an existing partial-whip

(defrule partial-whip[1]
    (declare (salience ?*partial-whip[1]-salience*))
    (logical
        ;;; ?zzz and ?llc1
        (exists-link ?cont ?llc1 ?zzz&:(not (known-to-be-in-solution ?zzz)))

        ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
        ;;; t-whips should not be used if the focus list is not empty (this would restrict them improperly)
        (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

        ;;; ?rlc1 and ?csp1
        (technique ?cont partial-whip[1])
        (csp-linked ?cont ?llc1 ?rlc1&~?zzz ?csp1)
    )
    
    ;;; the following condition implies that ?zzz is not linked to ?llc1 by ?csp1
    ;;; i.e. that ?zzz is not a candidate for ?csp1
    ;;; as whips[1] for ?zzz have been eliminated before, it also implies that ?rlc1 is not linked to ?zzz
    (forall (csp-linked ?cont ?llc1 ?xxx&~?rlc1 ?csp1)
        (exists-link ?cont ?xxx ?zzz)
    )

    ;;; do not assert different partial whips with the same sequences of rlc's
    (not
        (chain
            (type partial-whip)
            (context ?cont)
            (length 1)
            (target ?zzz)
            (rlcs ?rlc1)
        )
    )
=>
    (assert
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
    )
)



