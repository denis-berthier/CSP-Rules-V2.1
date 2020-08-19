
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-BIVALUE-CHAIN[4]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-g-bivalue-chain[4]
   (declare (salience ?*activate-g-bivalue-chain[4]-salience*))
   (logical (play) (context (name ?cont)))
   (not (deactivate ?cont g-bivalue-chain))
=>
   (if ?*print-levels* then (printout t Entering_level_gBC4))
   (assert (technique ?cont g-bivalue-chain[4]))
   (bind ?*technique* gBC[4])
)



(defrule track-g-bivalue-chain[4]
   (declare (salience ?*activate-g-bivalue-chain[4]-salience*))
   ?level <- (technique ?cont g-bivalue-chain[4])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; g-bivalue-chain elimination rule

(defrule g-bivalue-chain[4]
   (declare (salience ?*g-bivalue-chain[4]-salience*))
   (chain
      (type g-bivalue-chain)
      (context ?cont)
      (length 4)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   (test (glinked-or ?zzz ?last-rlc))
   (not (is-csp-variable-for-label (csp-var ?last-csp&:(eq ?last-csp (last $?csp-vars))) (label ?zzz)))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L4* ?*print-g-bivalue-chain* ?*print-g-bivalue-chain-4*) then
      (print-g-bivalue-chain 4 ?zzz $?llcs $?rlcs $?csp-vars)
   )
)



;;; 1- extension of an existing g-bivalue-chain with a candidate

(defrule partial-g-bivalue-chain[4]-1
   (declare (salience ?*partial-g-bivalue-chain[4]-salience-1*))
   (logical
      (chain
         (type g-bivalue-chain)
         (context ?cont)
         (length 3)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (technique ?cont g-bivalue-chain[4])
      (or
         (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
         (exists-glink ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      )
      (not (is-csp-variable-for-label (csp-var ?last-csp&:(eq ?last-csp (last $?csp-vars))) (label ?new-llc)))
      
      ;;; ?new-rlc and ?new-csp
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
   )
   
   ;;; the following implies that ?new-llc is not linked or glinked to ?last-rlc by ?new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
      (test (glinked-or ?xxx ?last-rlc))  ; => ?new-llc is not linked or glinked to ?last-rlc by ?new-csp
   )
   
   ;;; do not assert different partial g-bivalue-chains with the same sequences of rlc's
   (not
      (chain
         (type g-bivalue-chain)
         (context ?cont)
         (length 4)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (chain
         (type g-bivalue-chain)
         (context ?cont)
         (length 4)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; 2- extension of an existing g-bivalue-chain with a g-candidate

(defrule partial-g-bivalue-chain[4]-2
   (declare (salience ?*partial-g-bivalue-chain[4]-salience-2*))
   (logical
      (chain
         (type g-bivalue-chain)
         (context ?cont)
         (length 3)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (technique ?cont g-bivalue-chain[4])
      (or
         (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
         (exists-glink ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
      )
      (not (is-csp-variable-for-label (csp-var ?last-csp&:(eq ?last-csp (last $?csp-vars))) (label ?new-llc)))
      
      ;;; ?new-rlc and ?new-csp
      (csp-glinked
         ?cont
         ?new-llc
         ?new-rlc&:(not (member$ ?new-rlc $?rlcs))&:(glabel-contains-none-of ?new-rlc $?rlcs)
         ?new-csp&:(neq ?new-csp (last $?csp-vars))
      )
   )
   
   ;;; the following implies that ?new-llc is not linked or glinked to ?last-rlc by ?new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&:(not (label-in-glabel ?xxx ?new-rlc)) ?new-csp)
      (test (glinked-or ?xxx ?last-rlc)) ; => ?new-llc is not linked or glinked to ?last-rlc by ?new-csp
   )
   
   ;;; do not consider a g-bivalue-chain with
   ;;; - the same target as an already existing one
   ;;; - and the same sequence of rlcs than an already existing one or with a last rlc larger than an existing one
   (not
      (chain
         (type g-bivalue-chain)
         (context ?cont)
         (length 4)
         (target ?zzz)
         (rlcs  $?rlcs ?new-rlca&:(or (eq ?new-rlca ?new-rlc) (label-in-glabel ?new-rlca ?new-rlc)))
         ;;; (glabel-in-glabel ?new-rlca ?new-rlc) should also be excluded for applications in which glabels can be embedded
      )
   )
=>
   (assert
      (chain
         (type g-bivalue-chain)
         (context ?cont)
         (length 4)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



