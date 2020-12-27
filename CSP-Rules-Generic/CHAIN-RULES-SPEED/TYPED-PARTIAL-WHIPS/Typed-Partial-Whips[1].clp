
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-PARTIAL-WHIP[1]
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


;;; extension of an existing typed-partial-whip

(defrule typed-partial-whip[1]
    (declare (salience ?*typed-partial-whip[1]-salience*))
    (logical
        ;;; ?llc1
        (exists-link ?cont ?llc1 ?zzz)
        (test (not (known-to-be-in-solution ?zzz)))

        ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
        ;;; t-whips should not be used if the focus list is not empty (this would restrict them improperly)
        (or (not (candidate-in-focus)) (candidate-in-focus (label ?zzz)))

        ;;; ?rlc1 and ?csp1
        (technique ?cont typed-partial-whip[1])
        (typed-csp-linked ?cont ?llc1 ?rlc1&~?zzz ?csp1 ?csp-type)
        (or (unrestricted-csp-types-in-typed-chains)
            (test (member$ ?csp-type ?*allowed-csp-types*))
        )
    )
    
    ;;; the following condition implies that ?zzz is not linked to ?llc1 by ?csp1
    ;;; i.e. that ?zzz is not a candidate for ?csp1
    ;;; as whips[1] for ?zzz have been eliminated before, it also implies that ?rlc1 is not linked to ?zzz
    (forall (typed-csp-linked ?cont ?llc1 ?xxx&~?rlc1 ?csp1 ?csp-type)
        (exists-link ?cont ?xxx ?zzz)
    )

    ;;; do not assert different partial whips with the same sequences of rlc's
    (not
        (typed-chain
            (type typed-partial-whip)
            (csp-type ?csp-type)
            (context ?cont)
            (length 1)
            (target ?zzz)
            (rlcs ?rlc1)
        )
    )
=>
    (assert
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
    )
)



