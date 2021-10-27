
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-Z-CHAIN[13]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;           January 2006 - November 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-typed-z-chain[13]
   (declare (salience ?*activate-typed-z-chain[13]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont typed-z-chain))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_Z13))
   (assert (technique ?cont typed-z-chain[13]))
   (assert (technique ?cont partial-typed-z-chain[12]))
   (bind ?*technique* TyZ[13])
)



(defrule track-typed-z-chain[13]
   (declare (salience ?*activate-typed-z-chain[13]-salience*))
   ?level <- (technique ?cont typed-z-chain[13])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; extension of an existing partial-typed-z-chain

(defrule typed-partial-z-chain[12]
   (declare (salience ?*typed-partial-z-chain[12]-salience*))
   (logical
      (typed-chain
         (type typed-partial-z-chain)
         (csp-type ?csp-type)
         (context ?cont)
         (length 11)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?last-rlc ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)))
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont typed-partial-z-chain[12])
      ;;; because typed-z-chains[12] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not typed linked to ?zzz
      (typed-csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
         ?csp-type
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as typed-z-chains[12] have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z candidate for new-csp
   (forall (typed-csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp ?csp-type) (exists-link ?cont ?xxx ?zzz))
   
   ;;; do not assert different partial typed-z-chains with the same sequences of rlc's
   (not
      (typed-chain
         (type typed-partial-z-chain)
         (csp-type ?csp-type)
         (context ?cont)
         (length 12)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (typed-chain
         (type typed-partial-z-chain)
         (csp-type ?csp-type)
         (context ?cont)
         (length 12)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; typed-z-chain elimination rule

(defrule typed-z-chain[13]
   (declare (salience ?*typed-z-chain[13]-salience*))
   (typed-chain
      (type typed-partial-z-chain)
      (csp-type ?csp-type)
      (context ?cont)
      (length 12)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; ?new-llc
   (exists-link ?cont ?last-rlc ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)))
   
   (is-typed-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc) (csp-var-type ?csp-type))
   ;;; because, in a partial typed-z-chain, ?zzz cannot be linked to any candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (forall (typed-csp-linked ?cont ?new-llc ?xxx ?new-csp ?csp-type) (exists-link ?cont ?xxx ?zzz))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L13* ?*print-typed-z-chain* ?*print-typed-z-chain-13*) then
      (print-typed-z-chain-without-crlf ?csp-type 13 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
   
   (if (not ?*blocked-z-chains*)
      then (printout t crlf)
      else
         ;;; compute the list of z-candidates
         (bind ?z-cands (create$))
         (loop-for-count (?i 1 12 )
            (bind ?llci (nth$ ?i ?llcs))
            (bind ?rlci (nth$ ?i ?rlcs))
            (bind ?cspi (nth$ ?i ?csp-vars))
            (do-for-all-facts
               ((?f csp-linked))
               (and (eq (nth$ 1 ?f:implied) ?cont)
                  (eq (nth$ 2 ?f:implied) ?llci)
                  (neq (nth$ 3 ?f:implied) ?rlci)
                  (eq (nth$ 4 ?f:implied) ?cspi)
               )
               (bind ?new-z-cand (nth$ 3 ?f:implied))
               (if (not (member$ ?new-z-cand ?z-cands)) then (bind ?z-cands (create$ ?z-cands ?new-z-cand)))
            )
         )
         ;;; complete the list of z-candidates
         (do-for-all-facts
            ((?f csp-linked))
            (and (eq (nth$ 1 ?f:implied) ?cont)
               (eq (nth$ 2 ?f:implied) ?new-llc)
               (eq (nth$ 4 ?f:implied) ?new-csp)
            )
            (bind ?new-z-cand (nth$ 3 ?f:implied))
            (if (not (member$ ?new-z-cand ?z-cands)) then (bind ?z-cands (create$ ?z-cands ?new-z-cand)))
         )
         ;;; prepare for finding more targets
      (assert (apply-rule-as-a-pseudo-block ?cont))
      (assert (pseudo-blocked ?cont typed-z-chain[13] ?csp-type ?zzz (nth$ 1 ?llcs) $?z-cands))
   )
)



;;; apply typed-z-chain to more targets

(defrule apply-typed-z-chain[13]-to-more-targets
   (declare (salience ?*apply-a-blocked-rule-salience*))
   (apply-rule-as-a-pseudo-block ?cont)
   (pseudo-blocked ?cont typed-z-chain[13] ?csp-type ?zzz ?llc1 $?z-cands)
   ;;; identify one more target
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis&~?zzz))
   (exists-link ?cont ?llc1 ?zzz-bis)
   (forall (candidate (context ?cont) (label ?cz&:(member$ ?cz ?z-cands)))
      (exists-link ?cont ?cz ?zzz-bis)
   )
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L13* ?*print-typed-z-chain* ?*print-typed-z-chain-13*) then
      (printout t ", ")
      (print-deleted-candidate ?zzz-bis)
   )
)



;;; print z-candidates

(defrule typed-z-chain[13]-print-z-candidates
   (declare (salience ?*apply-a-blocked-rule-salience-2*))
   (pseudo-blocked ?cont typed-z-chain[13] ?csp-type ?zzz ?llc1 $?z-cands)
=>
   (if (or ?*print-actions* ?*print-L13* ?*print-typed-z-chain* ?*print-typed-z-chain-13*) then
      (if ?*print-z-candidates* then
         (printout t crlf "     with z-candidates = ")
         (print-list-of-labels $?z-cands)
      )
   )
)



