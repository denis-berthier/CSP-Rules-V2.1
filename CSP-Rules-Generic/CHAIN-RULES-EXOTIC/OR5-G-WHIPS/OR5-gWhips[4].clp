
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-G-WHIP[4]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - December 2022            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-OR5-gwhip[4]
   (declare (salience ?*activate-OR5-gwhip[4]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5gW4))
   (assert (technique ?cont OR5-gwhip[4]))
   (assert (technique ?cont partial-whip[3]))
   (assert (technique ?cont partial-gwhip[3]))
   (assert (technique ?cont partial-OR5-gwhip[3]))
   (bind ?*technique* OR5gW[4])
)



(defrule track-OR5-gwhip[4]
   (declare (salience ?*activate-OR5-gwhip[4]-salience*))
   ?level <- (technique ?cont OR5-gwhip[4])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; 1- OR5-gwhip elimination rule #1 (?len2 = 0, ?len1 ≥ 0)

(defrule OR5-gwhip[4]-1
   ;;; case ?len2 = 0,  ?len > 1
   (declare (salience ?*OR5-gwhip[4]-salience-1*))
   (ORk-chain
      (type partial-OR5-gwhip)
      (context ?cont)
      (length 3)
      (target ?zzz)
      (length1 ?len1&:(= ?len1 2))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?OR-name)
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
   
   ;;; because, in a partial OR5-gwhip, ?zzz cannot be linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars1))) (label ?new-llc))
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (or
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (eq ?vvv ?OR-rlc) (member$ ?vvv $?rlcs1))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(member$ ?vvv $?rlcs1)))
      )
   )
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (not (member$ ?OR-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?OR-name)))
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L4* ?*print-OR5-gwhip* ?*print-OR5-gwhip-4*) then
      (print-ORk-gwhip ?OR-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)



;;; 2- OR5-gwhip elimination rule #2 (?len2 ≥ 1)

(defrule OR5-gwhip[4]-2
   ;;; case ?len2 ≥ 1
   (declare (salience ?*OR5-gwhip[4]-salience-2*))
   (ORk-chain
      (type partial-OR5-gwhip)
      (context ?cont)
      (length 3)
      (target ?zzz)
      (length1 ?len1&:(<= ?len1 1))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?OR-name)
      (OR-size ?OR-size&5)
      (OR-complexity ?OR-compl)
      (OR-llcs $?OR-llcs)
      (OR-rlc ?OR-rlc)
      (length2 ?len2&:(= (+ ?len1 ?len2) 2))
      (llcs2 $?llcs2)
      (rlcs2 $?rlcs2)
      (csp-vars2 $?csp-vars2)
      (last-rlc2 ?last-rlc2)
   )
   
   ;;; ?new-llc
   (or
      (exists-link ?cont ?last-rlc2 ?new-llc&~?zzz&~?OR-rlc&:(not (member$ ?new-llc $?llcs1))&:(not (member$ ?new-llc $?rlcs1))&:(not (member$ ?new-llc $?llcs2))&:(not (member$ ?new-llc $?rlcs2)))
      (exists-glink ?cont ?last-rlc2 ?new-llc&~?zzz&~?OR-rlc&:(not (member$ ?new-llc $?llcs1))&:(not (member$ ?new-llc $?rlcs1))&:(not (member$ ?new-llc $?llcs2))&:(not (member$ ?new-llc $?rlcs2)))
   )
   
   ;;; because, in a partial OR5-gwhip, ?zzz cannot be linked or g-linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars1))&:(not (member$ ?new-csp $?csp-vars2))) (label ?new-llc))
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (or
         (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (eq ?vvv ?OR-rlc) (member$ ?vvv $?rlcs1) (member$ ?vvv $?rlcs2))))
         (exists (exists-glink ?cont ?xxx ?vvv&:(or (member$ ?vvv $?rlcs1) (member$ ?vvv $?rlcs2))))
      )
   )
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (not (member$ ?OR-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?OR-name)))
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L4* ?*print-OR5-gwhip* ?*print-OR5-gwhip-4*) then
      (print-ORk-gwhip ?OR-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)



