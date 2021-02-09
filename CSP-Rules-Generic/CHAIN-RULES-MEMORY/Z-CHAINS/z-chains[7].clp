
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              Z-CHAIN[7]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - February 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-z-chain[7]
   (declare (salience ?*activate-z-chain[7]-salience*))
   (logical (play) (context (name ?cont)))
   (not (deactivate ?cont z-chain))
=>
   (if ?*print-levels* then (printout t Entering_level_Z7))
   (assert (technique ?cont z-chain[7]))
   (assert (technique ?cont partial-z-chain[6]))
   (bind ?*technique* z-chain[7])
)



(defrule track-z-chain[7]
   (declare (salience ?*activate-z-chain[7]-salience*))
   ?level <- (technique ?cont z-chain[7])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; z-chain elimination rule

(defrule z-chain[7]
   (declare (salience ?*z-chain[7]-salience*))
   (chain
      (type partial-z-chain)
      (context ?cont)
      (length 6)
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
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp) (test (linked ?xxx ?zzz)))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L7* ?*print-z-chain* ?*print-z-chain-7*) then
      (print-z-chain 7 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



;;; extension of an existing partial-z-chain

(defrule partial-z-chain[6]
   (declare (salience ?*partial-z-chain[6]-salience*))
   (logical
      (chain
         (type partial-z-chain)
         (context ?cont)
         (length 5)
         (target ?zzz)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      ;;; ?new-llc
      (exists-link ?cont ?last-rlc ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)))
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont partial-z-chain[6])
      ;;; because z-chains[6] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
      ;;; the next condition will detect cases when there is only one
   )
   
   ;;; as z-chains[6] have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp) (test (linked ?xxx ?zzz)))
   
   ;;; do not assert different partial z-chains with the same sequences of rlc's
   (not
      (chain
         (type partial-z-chain)
         (context ?cont)
         (length 6)
         (target ?zzz)
         (rlcs $?rlcs ?new-rlc)
      )
   )
=>
   (assert
      (chain
         (type partial-z-chain)
         (context ?cont)
         (length 6)
         (target ?zzz)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



