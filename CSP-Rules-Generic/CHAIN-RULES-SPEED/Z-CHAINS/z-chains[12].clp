
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              Z-CHAIN[12]
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





(defrule activate-z-chain[12]
   (declare (salience ?*activate-z-chain[12]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont z-chain))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_Z12))
   (assert (technique ?cont z-chain[12]))
   (assert (technique ?cont partial-z-chain[11]))
   (bind ?*technique* Z[12])
)



(defrule track-z-chain[12]
   (declare (salience ?*activate-z-chain[12]-salience*))
   ?level <- (technique ?cont z-chain[12])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; extension of an existing partial-z-chain

(defrule partial-z-chain[11]
   (declare (salience ?*partial-z-chain[11]-salience*))
   (logical
      (chain
         (type partial-z-chain)
         (context ?cont)
         (length 10)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?last-rlc ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)))
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont partial-z-chain[11])
      ;;; because z-chains[11] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as z-chains[11] have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp) (exists-link ?cont ?xxx ?zzz))
   
   ;;; do not assert different partial z-chains with the same sequences of rlc's
   (not
      (chain
         (type partial-z-chain)
         (context ?cont)
         (length 11)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (chain
         (type partial-z-chain)
         (context ?cont)
         (length 11)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; z-chain elimination rule

(defrule z-chain[12]
   (declare (salience ?*z-chain[12]-salience*))
   (chain
      (type partial-z-chain)
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
   
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc))
   ;;; because, in a partial z-chain, ?zzz cannot be linked to any candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (exists-link ?cont ?xxx ?zzz))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L12* ?*print-z-chain* ?*print-z-chain-12*) then
      (print-z-chain-without-crlf 12 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
   
   (if (not ?*blocked-z-chains*)
      then (printout t crlf)
      else
         ;;; compute the list of z-candidates
         (bind ?z-cands (create$))
         (loop-for-count (?i 1 11 )
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
         (assert (pseudo-blocked ?cont z-chain[12] ?zzz (nth$ 1 ?llcs) $?z-cands))
   )
)



;;; apply z-chain to more targets

(defrule apply-z-chain[12]-to-more-targets
   (declare (salience ?*apply-a-blocked-rule-salience*))
   (apply-rule-as-a-pseudo-block ?cont)
   (pseudo-blocked ?cont z-chain[12] ?zzz ?llc1 $?z-cands)
   ;;; identify one more target
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz-bis&~?zzz))
   (exists-link ?cont ?llc1 ?zzz-bis)
   (forall (candidate (context ?cont) (label ?cz&:(member$ ?cz ?z-cands)))
      (exists-link ?cont ?cz ?zzz-bis)
   )
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L12* ?*print-z-chain* ?*print-z-chain-12*) then
      (printout t ", ")
      (print-deleted-candidate ?zzz-bis)
   )
)



;;; print z-candidates

(defrule z-chain[12]-print-z-candidates
   (declare (salience ?*apply-a-blocked-rule-salience-2*))
   (pseudo-blocked ?cont z-chain[12] ?zzz ?llc1 $?z-cands)
=>
   (if (or ?*print-actions* ?*print-L12* ?*print-z-chain* ?*print-z-chain-12*) then
      (if ?*print-z-candidates* then
         (printout t crlf "     with z-candidates = ")
         (print-list-of-labels $?z-cands)
      )
   )
)



