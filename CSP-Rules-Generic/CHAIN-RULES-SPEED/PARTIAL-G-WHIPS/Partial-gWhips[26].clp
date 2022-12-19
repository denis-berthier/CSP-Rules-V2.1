
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL-G-WHIP[26]
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





;;; 1- extension of an existing partial g-whip with a candidate

(defrule partial-gwhip[26]-1
   (declare (salience ?*partial-gwhip[26]-salience-1*))
   (logical
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 25)
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
      (technique ?cont partial-gwhip[26])
      ;;; because gwhips[26] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz or $?rlcs
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as gwhips[26] based on ?zzz have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
      (or 
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(member$ ?vvv $?rlcs)))
      )
   )
   
   ;;; do not assert different partial gwhips with the same sequences of rlc's
   (not
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; 2- extension of an existing partial whip with a g-candidate

(defrule partial-gwhip[26]-2
   (declare (salience ?*partial-gwhip[26]-salience-2*))
   (logical
      (chain
         (type partial-whip)
         (context ?cont)
         (length 25)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont partial-gwhip[26])
      ;;; because gwhips[26] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not glinked to ?zzz or $?rlcs
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))&:(glabel-contains-none-of ?new-rlc ?zzz $?rlcs)
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one g-candidate
   )
   
   ;;; as gwhips[26] based on ?zzz have been eliminated (because they have higher salience),
   ;;; and gwhips[25] extendable by a single candidate have already been generated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t g-candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
   )
   
   ;;; do not assert a partial gwhip with the same sequences of rlc's or with no non smaller rlc than an existing one
   (not
      (chain
         (type partial-whip|partial-gwhip)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
      )
   )
=>
   (assert
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; 3- extension of an existing partial g-whip with a g-candidate

(defrule partial-gwhip[26]-3
   (declare (salience ?*partial-gwhip[26]-salience-3*))
   (logical
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 25)
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
      (technique ?cont partial-gwhip[26])
      ;;; because gwhips[26] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not glinked to ?zzz or $?rlcs
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))&:(glabel-contains-none-of ?new-rlc ?zzz $?rlcs)
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one g-candidate
   )
   
   ;;; as gwhips[26] based on ?zzz have been eliminated (because they have higher salience),
   ;;; and gwhips[25] extendable by a single candidate have already been generated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t g-candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (or 
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(member$ ?vvv $?rlcs)))
      )
   )
   
   ;;; do not assert a partial gwhip with the same sequences of rlc's or with no non smaller rlc than an existing one
   (not
      (chain
         (type partial-whip|partial-gwhip)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
      )
   )
=>
   (assert
      (chain
         (type partial-gwhip)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



