
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BRAID[16]
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





(defrule activate-braid[16]
   (declare (salience ?*activate-braid[16]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont braid))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_B16))
   (assert (technique ?cont braid[16]))
   (bind ?*technique* B[16])
)



(defrule track-braid[16]
   (declare (salience ?*activate-braid[16]-salience*))
   ?level <- (technique ?cont braid[16])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; braid elimination rule

(defrule braid[16]
   (declare (salience ?*braid[16]-salience*))
   (chain
      ;;; partial-whips can be omitted
      (type partial-braid)
      (context ?cont)
      (length 15)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; ?new-llc
   (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(linked-or ?new-llc ?zzz $?rlcs)))
   
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc))
   ;;; because, in a partial braid, ?zzz cannot be linked to any candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
   )
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L16* ?*print-braid* ?*print-braid-16*) then
      (print-braid 16 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



;;; extension of an existing partial-whip or partial-braid

(defrule partial-braid[15]
   (declare (salience ?*partial-braid[15]-salience*))
   (logical
      (chain
         (type partial-whip|partial-braid)
         (context ?cont)
         (length 14)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(linked-or ?new-llc ?zzz $?rlcs)))
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont braid[16])
      ;;; because braids[16] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz or $?rlcs
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as braids[15] have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
   )
   
   ;;; do not assert different partial braids with the same sets of rlc's as another partial-braid or partial-whip
   (not
      (and
         (chain
            (type partial-whip|partial-braid)
            (context ?cont)
            (length 15)
            (target ?zzz)
            (rlcs $?rlcs-a)
         )
         (test (same-sets-of-rlcs ?new-rlc $?rlcs $?rlcs-a))
      )
   )
=>
   (assert
      (chain
         (type partial-braid)
         (context ?cont)
         (length 15)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



