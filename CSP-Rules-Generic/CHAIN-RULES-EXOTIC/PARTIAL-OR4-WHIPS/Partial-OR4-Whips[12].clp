
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              PARTIAL-OR4-WHIP[12]
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





;;; 1- extension of an existing partial-OR4-whip with a candidate

(defrule partial-OR4-whip[12]-1
   (declare (salience ?*partial-OR4-whip[12]-salience-1*))
   (logical
      ?ORk-chain <- (ORk-chain
         (type partial-OR4-whip)
         (context ?cont)
         (length 11)
         ;;; we don't have to check the other lengths:
         ;;; they are recursively guaranteed by the previous partial-OR4-whips
         (target ?zzz)
         ;;; The part before the ORk relation:
         (length1 ?len1)
         (llcs1 $?llcs1)
         (rlcs1 $?rlcs1)
         (csp-vars1 $?csp-vars1)
         (last-rlc1 ?last-rlc1)
         ;;; The ORk part:
         (OR-name ?OR-name)
         (OR-size ?OR-size&4)
         (OR-complexity ?OR-compl)
         (OR-llcs $?OR-llcs)
         (OR-rlc ?OR-rlc)
         ;;; The part after the ORk relation (possibly empty, i.e. ?len2 ≥ 0):
         (length2 ?len2)
         (llcs2 $?llcs2)
         (rlcs2 $?rlcs2)
         (csp-vars2 $?csp-vars2)
         (last-rlc2 ?last-rlc2)
      )
      ;;; ?new-llc
      (exists-link ?cont
         ?uuu&:(or (and (= ?len2 0) (= ?uuu ?OR-rlc)) (and (> ?len2 0) (= ?uuu ?last-rlc2)))
         ?new-llc&~?zzz&~?OR-rlc&:(not (member$ ?new-llc $?llcs1))&:(not (member$ ?new-llc $?rlcs1))&:(not (member$ ?new-llc $?llcs2))&:(not (member$ ?new-llc $?rlcs2))
      )
      
      ;;; ?new-rlc and ?new-csp
      (technique ?cont OR4-whip[12])
      ;;; because OR4-whips[12] based on ?zzz (if any) have already been eliminated,
      ;;; there is at least one ?new-rlc not linked to ?zzz or $?rlcs1 or $?rlcs2
      (csp-linked
         ?cont
         ?new-llc
         ?new-rlc&~?zzz&~?OR-rlc&:(not (member$ ?new-rlc $?llcs1))&:(not (member$ ?new-rlc $?rlcs1))&:(not (member$ ?new-rlc $?llcs2))&:(not (member$ ?new-rlc $?rlcs2))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars1))&:(not (member$ ?new-csp $?csp-vars2))
      )
      ;;; the next condition will detect cases when there is only one candidate
   ) ; end of logical
   
   ;;; as OR4-whips[12] based on ?zzz have been eliminated (because they have higher salience),
   ;;; the following implies that new-rlc must be the only non-z and non-t candidate for new-csp
   (forall (csp-linked ?cont ?new-llc ?xxx&~?new-rlc ?new-csp)
      (exists (exists-link ?cont ?xxx ?vvv&:(or (eq ?vvv ?zzz) (eq ?vvv ?OR-rlc) (member$ ?vvv $?rlcs1) (member$ ?vvv $?rlcs2))))
   )
   
   ;;; do not assert a partial OR4-whip with the same sequences of rlc's or the same OR-rlc or the same last-rlc
   (not (and
      (ORk-chain
         (type partial-OR4-whip)
         (context ?cont)
         (length 12)
         (target ?zzz)
         (rlcs1 $?rlcs1b)
         (OR-rlc ?OR-rlc)
         (rlcs2 $?rlcs2b)
         (last-rlc2 ?new-rlc)
      )
      (test (same-sets (union$ $?rlcs1 $?rlcs2) (union$ $?rlcs1b $?rlcs2b)))
   ))
   
=>
   (duplicate ?ORk-chain
      (length 12)
      ;;; The part after the ORk relation, extended:
      (length2 (+ ?len2 1))
      (llcs2 $?llcs2 ?new-llc)
      (rlcs2 $?rlcs2 ?new-rlc)
      (csp-vars2 $?csp-vars2 ?new-csp)
      (last-rlc2 ?new-rlc)
   )
)



;;; 2- extension of an existing partial-whip with an OR4 relation

(defrule partial-OR4-whip[12]-2
   ;;; in this case ?len2 = 0
   (declare (salience ?*partial-OR4-whip[12]-salience-2*))
   (logical
      (chain
         (type partial-whip)
         (context ?cont)
         (length ?len1&:(= ?len1 11))
         (target ?zzz)
         ;;; The part before the ORk relation:
         (llcs $?llcs1)
         (rlcs $?rlcs1)
         (csp-vars $?csp-vars1)
         (last-rlc ?last-rlc1)
      )
      (technique ?cont OR4-whip[12])
      (ORk-relation (OR-name ?OR-name) (OR-complexity ?OR-compl)
         (context ?cont) (OR-size ?OR-size&4)
         (OR-candidates 
            ?zzz1&~?zzz&:(not (member$ ?zzz1 $?rlcs1))
            ?zzz2&~?zzz&:(not (member$ ?zzz2 $?rlcs1))
            ?zzz3&~?zzz&:(not (member$ ?zzz3 $?rlcs1))
            ?zzz4&~?zzz&:(not (member$ ?zzz4 $?rlcs1))
         )
      )
      ;;; take ?zzz1 for ?OR-llc
      (exists-link ?cont ?zzz1 ?last-rlc1)
      (exists (exists-link ?cont ?zzz2 ?uuu2&:(or (eq ?uuu2 ?zzz) (member$ ?uuu2 $?rlcs1))))
      (exists (exists-link ?cont ?zzz3 ?uuu3&:(or (eq ?uuu3 ?zzz) (member$ ?uuu3 $?rlcs1))))
      ;;; keep ?zzz4 for ?OR-rlc
      
   ) ; end logical
   ;;; do not assert different partial OR4-whips with the same sequences of rlc's
   (not
      (ORk-chain
         (type partial-OR4-whip)
         (context ?cont)
         (length 12)
         (target ?zzz)
         (rlcs1 $?rlcs1b&:(same-sets ?rlcs1 ?rlcs1b))
      )
   )
=>
   (assert
      (ORk-chain
         (type partial-OR4-whip)
         (context ?cont)
         (length 12)
         (target ?zzz)
         ;;; The part before the ORk relation:
         (length1 ?len1)
         (llcs1 $?llcs1)
         (rlcs1 $?rlcs1)
         (csp-vars1 $?csp-vars1)
         (last-rlc1 ?last-rlc1)
         ;;; The ORk part:
         (OR-name ?OR-name)
         (OR-size ?OR-size)
         (OR-complexity ?OR-compl)
         (OR-llcs ?zzz1 ?zzz2 ?zzz3)
         (OR-rlc ?zzz4)
         ;;; The part after the ORk relation (empty,  i.e. ?len2 = 0):
         (length2 0)
         (llcs2 (create$))
         (rlcs2 (create$))
         (csp-vars2 (create$))
         (last-rlc2 0)
      )
   )
)



