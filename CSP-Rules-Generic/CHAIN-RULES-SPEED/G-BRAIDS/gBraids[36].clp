
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-BRAID[36]
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





(defrule activate-gbraid[36]
   (declare (salience ?*activate-gbraid[36]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont gbraid))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_gB36))
   (assert (technique ?cont gbraid[36]))
   (bind ?*technique* gB[36])
)



(defrule track-gbraid[36]
   (declare (salience ?*activate-gbraid[36]-salience*))
   ?level <- (technique ?cont gbraid[36])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; g-braid elimination rule

(defrule gbraid[36]
   (declare (salience ?*gbraid[36]-salience*))
   (chain
      (type partial-gbraid)
      (context ?cont)
      (length 35)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
      
   ;;; ?new-llc
   ;;; here, $?rlcs can contain both candidates and g-candidates
   (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(glinked-or ?new-llc ?zzz $?rlcs)))
   
   (is-csp-variable-for-label (csp-var ?new-csp&:(neq ?new-csp (last $?csp-vars))) (label ?new-llc))
   ;;; because, in a partial gbraid, ?zzz cannot be linked or glinked to any candidate or g-candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (or
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(member$ ?vvv $?rlcs)))
      )
   )
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L36* ?*print-gbraid* ?*print-gbraid-36*) then
      (print-gbraid 36 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



;;; 1) extension of an existing partial-g-whip or partial-g-braid with a candidate

(defrule partial-gbraid{35]-1
   (declare (salience ?*partial-gbraid[35]-salience-1*))
   (logical
      (chain
         (type partial-gwhip|partial-gbraid)
         (context ?cont)
         (length 34)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      ;;; here, $?rlcs can contain both candidates and g-candidates
      (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(glinked-or ?new-llc ?zzz $?rlcs)))
      
      (technique ?cont gbraid[36])
      ;;; ?new-rlc and ?new-csp
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
   )
   
   ;;; here, $?rlcs can contain both candidates and g-candidates
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
      (or
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(member$ ?vvv $?rlcs)))
      )
   )
   
   ;;; do not assert different partial-gbraids with the same sets of rlc's
   ;;; this condition may have to be strengthened in order to eliminate more useless partial-gbraids
   ;;; these conditions should be within the logical in order to make them independent of the generation order
   ;;; but this would entail much inefficiency
   (not
      (chain
         (type partial-gwhip|partial-gbraid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcsa&:(same-sets-of-rlcs ?new-rlc $?rlcs $?rlcsa))
      )
   )
=>
   (assert
      (chain
         (type partial-gbraid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; 2) extension of an existing partial-whip or partial-braid with a g-candidate
;;; (extension of a partial-whip or partial-braid with a candidate would still be a partial-whip or partial-braid)

(defrule partial-gbraid[35]-2
   (declare (salience ?*partial-gbraid[35]-salience-2*))
   (logical
      (chain
         (type partial-whip|partial-braid)
         (context ?cont)
         (length 34)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      ;;; here, $?rlcs can only contain candidates
      (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(linked-or ?new-llc ?zzz $?rlcs)))
      
      (technique ?cont gbraid[36])
      ;;; ?new-rlc and ?new-csp
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&:(glabel-contains-none-of ?new-rlc ?zzz $?rlcs)
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
   )
   
   ;;; here, $?rlcs can only contain candidates
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
   )
   
   ;;; do not assert a new partial-gbraid with the same sets of rlc's as an existing partial-gwhip or partial-gbraid
   ;;; or with its new-rlc larger than an rlc of an existing whip or braid
   ;;; these conditions should be within the logical in order to make them independent of the generation order
   ;;; but this would entail much inefficiency
   (not
      (chain
         (type partial-gwhip|partial-gbraid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcsa&:(same-sets-of-rlcs ?new-rlc $?rlcs $?rlcsa))
      )
   )
   (not
      (chain
         (type partial-whip|partial-braid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcsa&:(and (subsetp $?rlcs $?rlcsa) (glabel-contains-some-of ?new-rlc $?rlcsa)))
      )
   )
=>
   (assert
      (chain
         (type partial-gbraid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; 3) extension of an existing partial-g-whip or partial-g-braid with a g-candidate
;;; this case has separate treatment because non-redundancy is harder to formulate

(defrule partial-gbraid[35]-3
   (declare (salience ?*partial-gbraid[35]-salience-3*))
   (logical
      (chain
         (type partial-gwhip|partial-gbraid)
         (context ?cont)
         (length 34)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (candidate (context ?cont) (status cand) (label ?new-llc&~?zzz&:(not (member$ ?new-llc $?rlcs))&:(glinked-or ?new-llc ?zzz $?rlcs)))
      
      (technique ?cont gbraid[36])
      ;;; ?new-rlc and ?new-csp
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&:(not (member$ ?new-rlc $?rlcs))&:(glabel-contains-none-of ?new-rlc ?zzz $?rlcs)
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
   )
   
   ;;; here, $?rlcs can contain both candidates and g-candidates
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (or
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(member$ ?vvv $?rlcs)))
      )
   )
   
   ;;; do not assert different partial-gbraids with the same sets of rlc's
   ;;; or with its new-rlc larger than an existing one
   ;;; this condition may have to be strengthened in order to eliminate more useless partial-gbraids
   ;;; these conditions should be within the logical in order to make them independent of the generation order
   ;;; but this would entail much inefficiency
   (not
      (chain
         (type partial-gwhip|partial-gbraid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcsa&:(and (subsetp $?rlcs $?rlcsa)
                     (or (member$ ?new-rlc $?rlcsa)
                        (glabel-contains-some-of ?new-rlc $?rlcsa)
                     )
                  )
         )
      )
   )
=>
   (assert
      (chain
         (type partial-gbraid)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



