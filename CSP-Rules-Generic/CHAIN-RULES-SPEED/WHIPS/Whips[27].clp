
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              WHIP[27]
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





(defrule activate-whip[27]
   (declare (salience ?*activate-whip[27]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_W27))
   (assert (technique ?cont partial-whip[26]))
   (assert (technique ?cont whip[27]))
   (bind ?*technique* W[27])
)



(defrule track-whip[27]
   (declare (salience ?*activate-whip[27]-salience*))
   ?level <- (technique ?cont whip[27])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; whip elimination rule

(defrule whip[27]
   (declare (salience ?*whip[27]-salience*))
   (chain
      (type partial-whip)
      (context ?cont)
      (length 26)
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; ?new-llc
   (exists-link ?cont ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)) ?last-rlc)
   
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars))) (label ?new-llc))
   ;;; because, in a partial whip, ?zzz cannot be linked to any candidate in $?rlcs
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (member$ ?vvv $?rlcs))))
   )
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L27* ?*print-whip* ?*print-whip-27*) then
      (print-whip 27 ?zzz $?llcs $?rlcs $?csp-vars ?new-llc . ?new-csp)
   )
)



