
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-PARTIAL-WHIP[2]
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


;;; extension of an existing typed-partial-whip

(defrule typed-partial-whip[2]
    (declare (salience ?*typed-partial-whip[2]-salience*))
    (logical
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
    
        ;;; ?new-llc
        (exists-link ?cont ?new-llc&~?zzz&~?llc1 ?rlc1)

        ;;; ?new-rlc and ?new-csp
        (technique ?cont typed-partial-whip[2])
        ;;; because typed-whips[2] based on ?zzz (if any) have already been eliminated,
        ;;; there is at least one ?new-rlc not linked to ?zzz or ?rlc1
        (typed-csp-linked ?cont ?new-llc ?new-rlc&~?zzz&~?llc1&~?rlc1 ?new-csp&~?csp1 ?csp-type)
        ;;; the following condition will detect cases when there is only one
    )

    ;;; the following condition also implies that ?zzz is not linked to ?new-llc by ?new-csp
    ;;; i.e. that ?zzz is not a candidate for ?new-csp
    ;;; (because, in a partial whip, ?zzz cannot be linked to ?last-rlc)
    (forall (typed-csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp ?csp-type)
        (or (exists-link ?cont ?xxx ?zzz)
            (exists-link ?cont ?xxx ?rlc1)
        )
    )
    
    ;;; do not assert different partial whips with the same sequences of rlc's
    (not
        (typed-chain
            (type typed-partial-whip)
            (csp-type ?csp-type)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (rlcs ?rlc1 ?new-rlc)
        )
    )
=>
    (assert
        (typed-chain
            (type typed-partial-whip)
            (csp-type ?csp-type)
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



