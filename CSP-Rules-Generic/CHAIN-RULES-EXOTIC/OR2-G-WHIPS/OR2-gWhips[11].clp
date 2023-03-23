
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR2-G-WHIP[11]
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





(defrule activate-OR2-gwhip[11]
   (declare (salience ?*activate-OR2-gwhip[11]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR2-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR2gW11))
   (assert (technique ?cont OR2-gwhip[11]))
   (assert (technique ?cont partial-whip[10]))
   (assert (technique ?cont partial-gwhip[10]))
   (assert (technique ?cont partial-OR2-gwhip[10]))
   (bind ?*technique* OR2gW[11])
)



(defrule track-OR2-gwhip[11]
   (declare (salience ?*activate-OR2-gwhip[11]-salience*))
   ?level <- (technique ?cont OR2-gwhip[11])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; 1- OR2-gwhip elimination rule #1 (?len2 = 0, ?len1 ≥ 0)

(defrule OR2-gwhip[11]-1
   ;;; case ?len2 = 0,  ?len > 1
   (declare (salience ?*OR2-gwhip[11]-salience-1*))
   (ORk-chain
      (type partial-OR2-gwhip)
      (context ?cont)
      (length 10)
      (target ?zzz)
      (length1 ?len1&:(= ?len1 9))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?OR-name)
      (OR-size ?OR-size&2)
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
   
   ;;; because, in a partial OR2-gwhip, ?zzz cannot be linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
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
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?OR-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?OR-name)))
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L11* ?*print-OR2-gwhip* ?*print-OR2-gwhip-11*) then
      (print-ORk-gwhip ?OR-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)



;;; 2- OR2-gwhip elimination rule #2 (?len2 ≥ 1)

(defrule OR2-gwhip[11]-2
   ;;; case ?len2 ≥ 1
   (declare (salience ?*OR2-gwhip[11]-salience-2*))
   (ORk-chain
      (type partial-OR2-gwhip)
      (context ?cont)
      (length 10)
      (target ?zzz)
      (length1 ?len1&:(<= ?len1 8))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?OR-name)
      (OR-size ?OR-size&2)
      (OR-complexity ?OR-compl)
      (OR-llcs $?OR-llcs)
      (OR-rlc ?OR-rlc)
      (length2 ?len2&:(= (+ ?len1 ?len2) 9))
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
   
   ;;; because, in a partial OR2-gwhip, ?zzz cannot be linked or g-linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
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
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?OR-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?OR-name)))
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L11* ?*print-OR2-gwhip* ?*print-OR2-gwhip-11*) then
      (print-ORk-gwhip ?OR-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)



