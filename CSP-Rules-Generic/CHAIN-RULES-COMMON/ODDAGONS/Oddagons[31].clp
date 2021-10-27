
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              ODDAGON[31]
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





(defrule activate-oddagon[31]
   (declare (salience ?*activate-oddagon[31]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont oddagon))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_O31))
   (assert (technique ?cont partial-oddagon[30]))
   (assert (technique ?cont oddagon[31]))
   (bind ?*technique* O[31])
)



(defrule track-oddagon[31]
   (declare (salience ?*activate-oddagon[31]-salience*))
   ?level <- (technique ?cont oddagon[31])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; partial-oddagon extension rule

(defrule partial-oddagon[30]
   (declare (salience ?*partial-oddagon[30]-salience*))
   (logical
      (csp-chain
         (type partial-oddagon)
         (context ?cont)
         (length 28)
         (target ?zzz)
         (first-cand ?cand1)
         (rlcs $?rlcs)
         (last-rlc ?last-rlc)
         (csp-vars $?csp-vars)
      )
      
      (technique ?cont partial-oddagon[30])
      ;;; First additional csp
      (csp-linked ?cont ?last-rlc ?new-rlc1&:(not (member$ ?new-rlc1 $?rlcs))&:(< ?cand1 ?new-rlc1) ?new-csp1&:(not (member$ ?new-csp1 $?csp-vars)))
      (forall (csp-linked ?cont ?last-rlc ?xxx&~?new-rlc1 ?new-csp1) (exists-link ?cont ?xxx ?zzz))
      
      ;;; Second additional csp
      (csp-linked ?cont ?new-rlc1 ?new-rlc2&~?new-rlc1&:(not (member$ ?new-rlc2 $?rlcs))&:(< ?cand1 ?new-rlc2) ?new-csp2&~?new-csp1&:(not (member$ ?new-csp2 $?csp-vars)))
      (forall (csp-linked ?cont ?new-rlc1 ?xxx&~?new-rlc2 ?new-csp2) (exists-link ?cont ?xxx ?zzz))
   )
      
   ;;; do not assert different partial oddagons with the same sequences of rlc's
   (not
      (csp-chain
         (type partial-oddagon)
         (context ?cont)
         (length 30)
         (target ?zzz)
         (first-cand ?cand1)
         (rlcs $?rlcs ?new-rlc1 ?new-rlc2)
      )
   )
=>
   (assert
      (csp-chain
         (type partial-oddagon)
         (context ?cont)
         (length 30)
         (target ?zzz)
         (first-cand ?cand1)
         (rlcs $?rlcs ?new-rlc1 ?new-rlc2)
         (csp-vars $?csp-vars ?new-csp1 ?new-csp2)
         (last-rlc ?new-rlc2)
      )
   )
)



;;; oddagon elimination rule

(defrule oddagon[31]
   (declare (salience ?*oddagon[31]-salience*))
   (csp-chain
      (type partial-oddagon)
      (context ?cont)
      (length 30)
      (target ?zzz)
      (first-cand ?cand1)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )

   ;;; ?last-csp closing the loop
   (csp-linked ?cont ?last-rlc ?cand1 ?new-csp&:(not (member$ ?new-csp $?csp-vars)))
   (forall (csp-linked ?cont ?last-rlc ?xxx&~?cand1 ?new-csp) (exists-link ?cont ?xxx ?zzz))

   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (if ?*blocked-oddagons* then
      ;;; find the z-candidates
      (bind ?z-cands (create$))
      (bind ?candi1 ?cand1)
      (loop-for-count (?i 1 30)
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
   )
   ;;; do the elimination(s)
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L31* ?*print-oddagon* ?*print-oddagon-31*) then
      (print-oddagon-without-crlf 31 ?zzz (create$ $?rlcs ?cand1) (create$ $?csp-vars ?new-csp))
   )
   
   (if (not ?*blocked-oddagons*)
      then (printout t crlf)
      else ; prepare for finding more targets
         (assert (apply-rule-as-a-pseudo-block ?cont))
         (assert (pseudo-blocked ?cont oddagon[31] ?zzz $?z-cands))
   )
)



;;; apply oddagon to more targets

(defrule apply-oddagon[31]-to-more-targets
   (declare (salience ?*apply-a-blocked-rule-salience*))
   (apply-rule-as-a-pseudo-block ?cont)
   (pseudo-blocked ?cont oddagon[31] ?zzz $?z-cands)
   ;;; identify one more target
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis&~?zzz))
   (forall (candidate (context ?cont) (label ?cz&:(member$ ?cz ?z-cands)))
      (exists-link ?cont ?cz ?zzz-bis)
   )
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L31* ?*print-oddagon* ?*print-oddagon-31*) then
      (printout t ", ")
      (print-deleted-candidate ?zzz-bis)
   )
)



;;; print z-candidates

(defrule oddagon[31]-print-z-candidates
   (declare (salience ?*apply-a-blocked-rule-salience-2*))
   (pseudo-blocked ?cont oddagon[31] ?zzz $?z-cands)
=>
   (if (or ?*print-actions* ?*print-L31* ?*print-oddagon* ?*print-oddagon-31*) then
      (if ?*print-z-candidates-of-oddagons* then
         (printout t crlf "     with z-candidates = ")
         (print-list-of-labels $?z-cands)
      )
   )
)



