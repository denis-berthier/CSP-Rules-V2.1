
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR4-WHIP[28]
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





(defrule activate-OR4-whip[28]
   (declare (salience ?*activate-OR4-whip[28]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR4-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR4W28))
   (assert (technique ?cont OR4-whip[28]))
   (assert (technique ?cont partial-whip[27]))
   (assert (technique ?cont partial-OR4-whip[27]))
   (bind ?*technique* OR4W[28])
)



(defrule track-OR4-whip[28]
   (declare (salience ?*activate-OR4-whip[28]-salience*))
   ?level <- (technique ?cont OR4-whip[28])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; 1- OR4-whip elimination rule #1 (?len2 = 0, ?len1 ≥ 0)

(defrule OR4-whip[28]-1
   ;;; case ?len2 = 0,  ?len > 1
   (declare (salience ?*OR4-whip[28]-salience-1*))
   (ORk-chain
      (type partial-OR4-whip)
      (context ?cont)
      (length 27)
      (target ?zzz)
      (length1 ?len1&:(= ?len1 26))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?OR-name)
      (OR-size ?OR-size&4)
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
   
   ;;; because, in a partial OR4-whip, ?zzz cannot be linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
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
   (if (or ?*print-actions* ?*print-L28* ?*print-OR4-whip* ?*print-OR4-whip-28*) then
      (print-ORk-whip ?OR-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)



;;; 2- OR4-whip elimination rule #2 (?len2 ≥ 1)

(defrule OR4-whip[28]-2
   ;;; case ?len2 ≥ 1
   (declare (salience ?*OR4-whip[28]-salience-2*))
   (ORk-chain
      (type partial-OR4-whip)
      (context ?cont)
      (length 27)
      (target ?zzz)
      (length1 ?len1&:(<= ?len1 25))
      (llcs1 $?llcs1)
      (rlcs1 $?rlcs1)
      (csp-vars1 $?csp-vars1)
      (last-rlc1 ?last-rlc1)
      (OR-name ?OR-name)
      (OR-size ?OR-size&4)
      (OR-complexity ?OR-compl)
      (OR-llcs $?OR-llcs)
      (OR-rlc ?OR-rlc)
      (length2 ?len2&:(= (+ ?len1 ?len2) 26))
      (llcs2 $?llcs2)
      (rlcs2 $?rlcs2)
      (csp-vars2 $?csp-vars2)
      (last-rlc2 ?last-rlc2)
   )
   
   ;;; ?new-llc
   (exists-link ?cont ?last-rlc2 ?new-llc&~?zzz&~?OR-rlc&:(not (member$ ?new-llc $?llcs1))&:(not (member$ ?new-llc $?rlcs1))&:(not (member$ ?new-llc $?llcs2))&:(not (member$ ?new-llc $?rlcs2)))
   
   ;;; because, in a partial OR4-whip, ?zzz cannot be linked to any candidate in $?rlcs1, $?rlcs2 or to OR-rlc
   ;;; the following condition implies that ?zzz is not linked to ?new-llc by ?new-csp
   ;;; i.e. that ?zzz is not a candidate for ?new-csp
   (is-csp-variable-for-label (csp-var ?new-csp&:(not (member$ ?new-csp $?csp-vars1))&:(not (member$ ?new-csp $?csp-vars2))) (label ?new-llc))
   (forall (csp-linked ?cont ?new-llc ?xxx ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (eq ?vvv ?OR-rlc) (member$ ?vvv $?rlcs1) (member$ ?vvv $?rlcs2))))
   )
   
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L28* ?*print-OR4-whip* ?*print-OR4-whip-28*) then
      (print-ORk-whip ?OR-name ?OR-size ?OR-compl ?zzz ?len1 ?llcs1 ?rlcs1 ?csp-vars1 ?OR-llcs ?OR-rlc ?len2 ?llcs2 ?rlcs2 ?csp-vars2 ?new-llc . ?new-csp)
   )
)


