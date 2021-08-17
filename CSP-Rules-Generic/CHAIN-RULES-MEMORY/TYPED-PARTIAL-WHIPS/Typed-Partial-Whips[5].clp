
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-PARTIAL-WHIP[5]
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





;;; extension of an existing typed-partial-whip

(defrule typed-partial-whip[5]
   (declare (salience ?*typed-partial-whip[5]-salience*))
   (logical
      (typed-chain
         (type typed-partial-whip)
         (csp-type ?csp-type)
         (context ?cont)
         (length 4)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont typed-partial-whip[5])
      ;;; because whips[5] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz or $?rlcs
      (typed-csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
         ?csp-type
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as whips[5] have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t candidate for new-csp
   (forall (typed-csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp ?csp-type)
      (test (linked-or ?xxx ?zzz $?rlcs))
   )
   
   ;;; do not assert different partial whips with the same sequences of rlc's
   (not
      (typed-chain
         (type typed-partial-whip)
         (csp-type ?csp-type)
         (context ?cont)
         (length 5)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (typed-chain
         (type typed-partial-whip)
         (csp-type ?csp-type)
         (context ?cont)
         (length 5)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



