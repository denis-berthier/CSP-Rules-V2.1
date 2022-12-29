
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR4-FORCING-G-WHIP[7]
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





(defrule activate-OR4-forcing-gwhip[7]
   (declare (salience ?*activate-OR4-forcing-gwhip[7]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR4-forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR4FW7))
   (assert (technique ?cont OR4-forcing-gwhip[7]))
   (assert (technique ?cont partial-whip[6]))
   (assert (technique ?cont partial-gwhip[6]))
   (bind ?*technique* OR4FgW[7])
)



(defrule track-OR4-forcing-gwhip[7]
   (declare (salience ?*activate-OR4-forcing-gwhip[7]-salience*))
   ?level <- (technique ?cont OR4-forcing-gwhip[7])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR4-forcing-gwhip[7]-candidate-000p
   (declare (salience ?*OR4-forcing-gwhip[7]-candidate-salience*))
   (technique ?cont OR4-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4))
   (chain
      (type ?type4&partial-gwhip)
      (context ?cont)
      (length ?p4&:(= ?p4 6))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?last-rlc4)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?zzz2 ?cand)
   (exists-link ?cont ?zzz3 ?cand)
   (exists-glink ?cont ?cand ?last-rlc4)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L7* ?*print-OR4-forcing-gwhip* ?*print-OR4-forcing-gwhip-7*) then
      (print-OR4-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         0 0 ?zzz3 (create$) (create$) (create$)
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?cand
      )
   )
)



(defrule OR4-forcing-gwhip[7]-candidate-00pq
   (declare (salience ?*OR4-forcing-gwhip[7]-candidate-salience*))
   (technique ?cont OR4-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3 ?zzz4))
   (chain
      (type ?type3&:(or (eq ?type3 partial-whip) (eq ?type3 partial-gwhip)))
      (context ?cont)
      (length ?p3&:(< ?p3 6))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?last-rlc3)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?zzz2 ?cand)
   (or
      (exists-link ?cont ?cand ?last-rlc3)
      (exists-glink ?cont ?cand ?last-rlc3)
   )
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip))&:(or (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(= (+ ?p3 ?p4) 6))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?last-rlc4)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc4)
      (exists-glink ?cont ?cand ?last-rlc4)
   )
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L7* ?*print-OR4-forcing-gwhip* ?*print-OR4-forcing-gwhip-7*) then
      (print-OR4-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?cand
      )
   )
)



(defrule OR4-forcing-gwhip[7]-candidate-0pqr
   (declare (salience ?*OR4-forcing-gwhip[7]-candidate-salience*))
   (technique ?cont OR4-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4))
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(< ?p2 5))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (or
      (exists-link ?cont ?cand ?last-rlc2)
      (exists-glink ?cont ?cand ?last-rlc2)
   )
   (chain
      (type ?type3&:(or (eq ?type3 partial-whip) (eq ?type3 partial-gwhip)))
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p2 ?p3) 6))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?last-rlc3)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc3)
      (exists-glink ?cont ?cand ?last-rlc3)
   )
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip))&:(or (eq ?type2 partial-gwhip) (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(= (+ ?p2 ?p3 ?p4) 6))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?last-rlc4)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc4)
      (exists-glink ?cont ?cand ?last-rlc4)
   )
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L7* ?*print-OR4-forcing-gwhip* ?*print-OR4-forcing-gwhip-7*) then
      (print-OR4-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?cand
      )
   )
)



(defrule OR4-forcing-gwhip[7]-candidate-pqrs
   (declare (salience ?*OR4-forcing-gwhip[7]-candidate-salience*))
   (technique ?cont OR4-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4))
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 4))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(< (+ ?p1 ?p2) 5))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (or
      (exists-link ?cont ?cand ?last-rlc1)
      (exists-glink ?cont ?cand ?last-rlc1)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc2)
      (exists-glink ?cont ?cand ?last-rlc2)
   )
   (chain
      (type ?type3&:(or (eq ?type3 partial-whip) (eq ?type3 partial-gwhip)))
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p1 ?p2 ?p3) 6))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?last-rlc3)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc3)
      (exists-glink ?cont ?cand ?last-rlc3)
   )
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip) (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(= (+ ?p1 ?p2 ?p3 ?p4) 6))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?last-rlc4)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc4)
      (exists-glink ?cont ?cand ?last-rlc4)
   )
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L7* ?*print-OR4-forcing-gwhip* ?*print-OR4-forcing-gwhip-7*) then
      (print-OR4-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?cand
      )
   )
)



(defrule OR4-forcing-gwhip[7]-value
   (declare (salience ?*OR4-forcing-gwhip[7]-value-salience*))
   (technique ?cont OR4-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4))
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 4))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(< (+ ?p1 ?p2) 5))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (chain
      (type ?type3&:(or (eq ?type3 partial-whip) (eq ?type3 partial-gwhip)))
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p1 ?p2 ?p3) 6))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?cand)
   )
   (exists-link ?cont ?last-rlc3 ?cand)
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip) (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(= (+ ?p1 ?p2 ?p3 ?p4) 6))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (or ?*print-actions* ?*print-L7* ?*print-OR4-forcing-gwhip* ?*print-OR4-forcing-gwhip-7*) then
      (print-OR4-forcing-gwhip-assert-value 
         ?or-name ?or-compl
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?cand
      )
   )
)



