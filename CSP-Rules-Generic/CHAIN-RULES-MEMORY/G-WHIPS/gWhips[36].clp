
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-WHIP[36]
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





(defrule activate-gwhip[36]
   (declare (salience ?*activate-gwhip[36]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_gW36))
   (assert (technique ?cont gwhip[36]))
   (bind ?*technique* gW[36])
)



(defrule track-gwhip[36]
   (declare (salience ?*activate-gwhip[36]-salience*))
   ?level <- (technique ?cont gwhip[36])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; g-whip elimination rule

(defrule gwhip[36]
   (declare (salience ?*gwhip[36]-salience*))
   (chain
      (type partial-gwhip)
      (context ?cont)
      (length 35)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; ?new-llc
   (or
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      (exists-glink ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
   )
   
   ;;; because, in a partial gwhip, ?zzz cannot be linked or glinked to any candidate or g-candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (is-csp-variable-for-label (csp-var ?new-csp&:(neq ?new-csp (last $?csp-vars))) (label ?new-llc))
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (glinked-or ?xxx ?zzz $?rlcs)))
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L36* ?*print-gwhip* ?*print-gwhip-36*) then
      (print-gwhip 36 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



;;; 1- extension of an existing partial g-whip with a candidate

(defrule partial-gwhip[35]-1
   (declare (salience ?*partial-gwhip[35]-salience-1*))
   (logical
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 34)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (or
         (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
         (exists-glink ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      )
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont gwhip[36])
      ;;; because gwhips[35] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz or $?rlcs
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as gwhips[35] based on ?zzz have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
      (test (glinked-or ?xxx ?zzz $?rlcs))
   )
   
   ;;; do not assert different partial gwhips with the same sequences of rlc's
   (not
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (chain
         (type partial-gwhip)
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



;;; 2- extension of an existing partial whip with a g-candidate

(defrule partial-gwhip[35]-2
   (declare (salience ?*partial-gwhip[35]-salience-2*))
   (logical
      (chain
         (type partial-whip)
         (context ?cont)
         (length 34)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont gwhip[36])
      ;;; because gwhips[35] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not glinked to ?zzz or $?rlcs
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))&:(glabel-contains-none-of ?new-rlc ?zzz $?rlcs)
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one g-candidate
   )
   
   ;;; as gwhips[35] based on ?zzz have been eliminated (because they have higher salience),
   ;;; and gwhips[34] extendable by a single candidate have already been generated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t g-candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (test (glinked-or ?xxx ?zzz $?rlcs))
   )
   
   ;;; do not assert a partial gwhip with the same sequences of rlc's or with no non smaller rlc than an existing one
   (not
      (chain
         (type partial-whip|partial-gwhip)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
      )
   )
=>
   (assert
      (chain
         (type partial-gwhip)
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



;;; 3- extension of an existing partial g-whip with a g-candidate

(defrule partial-gwhip[35]-3
   (declare (salience ?*partial-gwhip[35]-salience-3*))
   (logical
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 34)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (or
         (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
         (exists-glink ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      )
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont gwhip[36])
      ;;; because gwhips[35] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not glinked to ?zzz or $?rlcs
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))&:(glabel-contains-none-of ?new-rlc ?zzz $?rlcs)
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one g-candidate
   )
   
   ;;; as gwhips[35] based on ?zzz have been eliminated (because they have higher salience),
   ;;; and gwhips[34] extendable by a single candidate have already been generated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t g-candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (test (glinked-or ?xxx ?zzz $?rlcs))
   )
   
   ;;; do not assert a partial gwhip with the same sequences of rlc's or with no non smaller rlc than an existing one
   (not
      (chain
         (type partial-whip|partial-gwhip)
         (context ?cont)
         (length 35)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
      )
   )
=>
   (assert
      (chain
         (type partial-gwhip)
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



