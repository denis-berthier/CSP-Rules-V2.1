
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              G-WHIP[32]
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





(defrule activate-gwhip[32]
   (declare (salience ?*activate-gwhip[32]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_gW32))
   (assert (technique ?cont gwhip[32]))
   (assert (technique ?cont partial-gwhip[31]))
   (bind ?*technique* gW[32])
)



(defrule track-gwhip[32]
   (declare (salience ?*activate-gwhip[32]-salience*))
   ?level <- (technique ?cont gwhip[32])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; g-whip elimination rule

(defrule gwhip[32]
   (declare (salience ?*gwhip[32]-salience*))
   (chain
      (type partial-gwhip)
      (context ?cont)
      (length 31)
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
   (if (or ?*print-actions* ?*print-L32* ?*print-gwhip* ?*print-gwhip-32*) then
      (print-gwhip 32 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



