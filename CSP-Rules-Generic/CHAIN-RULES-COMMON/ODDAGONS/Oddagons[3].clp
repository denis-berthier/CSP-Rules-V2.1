
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              ODDAGON[3]
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


(defrule activate-oddagon[3]
	(declare (salience ?*activate-oddagon[3]-salience*))
    (logical
       (play)
       (context (name ?cont))
       (not (deactivate ?cont oddagon))
    )
=>
	(if ?*print-levels* then (printout t "Entering_level_O3"))
    (assert (technique ?cont partial-oddagon[2]))
    (assert (technique ?cont oddagon[3]))
	(bind ?*technique* O[3])
)



(defrule track-oddagon[3]
	(declare (salience ?*activate-oddagon[3]-salience*))
	?level <- (technique ?cont oddagon[3])
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; oddagon elimination rule

(defrule partial-oddagon[2]
	(declare (salience ?*partial-oddagon[2]-salience*))
    (logical
        (candidate (context ?cont) (status cand) (label ?zzz&:(not (known-to-be-in-solution ?zzz))))
        ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
        (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

        (technique ?cont partial-oddagon[2])
        ;;; First csp
        (csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp1)
        (forall (csp-linked ?cont ?cand1 ?xxx&~?cand2 ?csp1) (exists-link ?cont ?xxx ?zzz))
       
       ;;; Second csp
       (csp-linked ?cont ?cand2 ?cand3&:(< ?cand1 ?cand3) ?csp2&~?csp1)
        (forall (csp-linked ?cont ?cand2 ?xxx&~?cand3 ?csp2) (exists-link ?cont ?xxx ?zzz))
    )

    ;;; do not assert different partial oddagons with the same sequences of rlc's
    (not
        (csp-chain
            (type partial-oddagon)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (first-cand ?cand1)
            (rlcs ?cand2 ?cand3)
        )
    )
=>
    (assert
        (csp-chain
            (type partial-oddagon)
            (context ?cont)
            (length 2)
            (target ?zzz)
            (first-cand ?cand1)
            (rlcs ?cand2 ?cand3)
            (csp-vars ?csp1 ?csp2)
            (last-rlc ?cand3)
        )
    )
)



(defrule oddagon[3]
    (declare (salience ?*oddagon[3]-salience*))
    (csp-chain
        (type partial-oddagon)
        (context ?cont)
        (length 2)
        (target ?zzz)
        (first-cand ?cand1)
        (rlcs $?rlcs)
        (csp-vars $?csp-vars)
        (last-rlc ?last-rlc)
    )
    ;;; ?last csp
    (csp-linked ?cont ?last-rlc ?cand1 ?new-csp&:(not (member$ ?new-csp $?csp-vars)))
    (forall (csp-linked ?cont ?last-rlc ?xxx&~?cand1 ?new-csp) (exists-link ?cont ?xxx ?zzz))
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-oddagon* ?*print-oddagon-3*) then
        (print-oddagon 3 ?zzz (create$ $?rlcs ?cand1) (create$ $?csp-vars ?new-csp))
    )
)





