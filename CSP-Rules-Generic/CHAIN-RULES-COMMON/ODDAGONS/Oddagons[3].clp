
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
               ;;;            January 2006 - October 2021             ;;;
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



;;; partial oddagon extension rule

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
       (csp-linked ?cont ?cand2 ?cand3&~?cand2&:(< ?cand1 ?cand3) ?csp2&~?csp1)
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



;;; oddagon elimination rule

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
    (if ?*blocked-oddagons* then
        (bind ?z-cands (create$))
        (bind ?candi1 ?cand1)
        (loop-for-count (?i 1 2)
           (bind ?candi2 (nth$ ?i ?rlcs))
           (bind ?cspi (nth$ ?i ?csp-vars))
           (do-for-all-facts
              ((?f csp-linked))
              (and (eq (nth$ 1 ?f:implied) ?cont)
                 (eq (nth$ 2 ?f:implied) ?candi1)
                 (neq (nth$ 3 ?f:implied) ?candi2)
                 (eq (nth$ 4 ?f:implied) ?cspi)
              )
              (bind ?new-z-cand (nth$ 3 ?f:implied))
              (if (not (integerp (member$ ?new-z-cand ?z-cands))) then (bind ?z-cands (create$ ?z-cands ?new-z-cand)))
           )
           (bind ?candi1 ?candi2)
        )
        ;;; complete the list of z-candidates
        (do-for-all-facts
            ((?f csp-linked))
            (and (eq (nth$ 1 ?f:implied) ?cont)
                (eq (nth$ 2 ?f:implied) ?last-rlc)
                (neq (nth$ 3 ?f:implied) ?cand1)
                (eq (nth$ 4 ?f:implied) ?new-csp)
            )
            (bind ?new-z-cand (nth$ 3 ?f:implied))
            (if (not (integerp (member$ ?new-z-cand ?z-cands))) then (bind ?z-cands (create$ ?z-cands ?new-z-cand)))
        )
        ;;; prepare for finding more targets
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont oddagon[3] ?zzz $?z-cands))
    )

    ;;; do the elimination(s)
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-oddagon* ?*print-oddagon-3*) then
        (print-oddagon-without-crlf 3 ?zzz (create$ $?rlcs ?cand1) (create$ $?csp-vars ?new-csp))
    )
    (if (not ?*blocked-oddagons*)
       then (printout t crlf)
       else ; prepare for finding more targets
          (assert (apply-rule-as-a-pseudo-block ?cont))
          (assert (pseudo-blocked ?cont oddagon[3] ?zzz $?z-cands))
    )
)



;;; elimination of more targets

(defrule apply-oddagon[3]-to-more-targets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (apply-rule-as-a-pseudo-block ?cont)
    (pseudo-blocked ?cont oddagon[3] ?zzz $?z-cands)

    ;;; identify one more target
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis&~?zzz))
    (forall (candidate (context ?cont) (label ?cz&:(member$ ?cz ?z-cands)))
        (exists-link ?cont ?cz ?zzz-bis)
    )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-oddagon* ?*print-oddagon-3*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz-bis)
    )
)



;;; print the z-candidates

(defrule oddagon[3]-print-z-candidates
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (pseudo-blocked ?cont oddagon[3] ?zzz $?z-cands)

=>
    (if (or ?*print-actions* ?*print-L3* ?*print-oddagon* ?*print-oddagon-3*) then
        (if ?*print-z-candidates-of-oddagons* then
           (printout t crlf "     with z-candidates = ")
           (print-list-of-labels $?z-cands)
        )
     )
  )





