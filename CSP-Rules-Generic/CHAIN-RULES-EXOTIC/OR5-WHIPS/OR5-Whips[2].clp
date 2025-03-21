
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-WHIP[2]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - September 2022           ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-OR5-whip[2]
   (declare (salience ?*activate-OR5-whip[2]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5W2))
   (assert (technique ?cont OR5-whip[2]))
   (assert (technique ?cont partial-whip[1]))
   (assert (technique ?cont partial-OR5-whip[1]))
   (bind ?*technique* OR5W[2])
)



(defrule track-OR5-whip[2]
   (declare (salience ?*activate-OR5-whip[2]-salience*))
   ?level <- (technique ?cont OR5-whip[2])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; 1- OR5-whip elimination rule #1 (?len2 = 0, ?len1 ≥ 0)

(defrule OR5-whip[2]-1
   ;;; case ?len2 = 0,  ?len > 1
   (declare (salience ?*OR5-whip[2]-salience-1*))
   (ORk-chain
      (type partial-OR5-whip)
      (context ?cont)
      (length 1)
      (target ?zzz)
      (length1 ?len1&:(= ?len1 0))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?or-name)
      (OR-size ?OR-size&5)
      (OR-complexity ?OR-compl)
      (OR-llcs $?OR-llcs)
      (OR-rlc ?OR-rlc)
      (length2 ?len2&0)
      (llcs2 $?llcs2)
      (rlcs2 $?rlcs2)
      (csp-vars2 $?csp-vars2)
   )
   
   ;;; ?new-llc
   (exists-link ?cont ?OR-rlc ?new-llc&~?zzz&:(not (member$ ?new-llc $?llcs1))&:(not (member$ ?new-llc $?rlcs1)))
   
   ;;; because, in a partial OR5-whip, ?zzz cannot be linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars1))) (label ?new-llc))
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (eq ?vvv ?OR-rlc) (member$ ?vvv $?rlcs1))))
   )
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L2* ?*print-OR5-whip* ?*print-OR5-whip-2*) then
      (print-ORk-whip ?or-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)



