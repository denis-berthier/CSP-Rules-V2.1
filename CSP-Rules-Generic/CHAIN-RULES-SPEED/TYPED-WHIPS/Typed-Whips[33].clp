
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-WHIP[33]
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





(defrule activate-typed-whip[33]
   (declare (salience ?*activate-typed-whip[33]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont typed-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_TyW33))
   (assert (technique ?cont typed-partial-whip[32]))
   (assert (technique ?cont typed-whip[33]))
   (bind ?*technique* TyW[33])
)



(defrule track-typed-whip[33]
   (declare (salience ?*activate-typed-whip[33]-salience*))
   ?level <- (technique ?cont typed-whip[33])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; typed-whip elimination rule

(defrule typed-whip[33]
   (declare (salience ?*typed-whip[33]-salience*))
   (typed-chain
      (type typed-partial-whip)
      (csp-type ?csp-type)
      (context ?cont)
      (length 32)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; ?new-llc
   (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
   
   (is-typed-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc) (csp-var-type ?csp-type))
   ;;; because, in a typed partial whip, ?zzz cannot be linked to any candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (forall (typed-csp-linked ?cont ?new-llc ?xxx ?new-csp ?csp-type)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
   )
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L33* ?*print-typed-whip* ?*print-typed-whip-33*) then
      (print-typed-whip ?csp-type 33 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



