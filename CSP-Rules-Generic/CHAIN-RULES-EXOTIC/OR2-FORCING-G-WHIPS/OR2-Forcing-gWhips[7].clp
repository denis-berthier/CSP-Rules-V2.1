
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR2-FORCING-G-WHIP[7]
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





(defrule activate-OR2-forcing-gwhip[7]
   (declare (salience ?*activate-OR2-forcing-gwhip[7]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR2-forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR2FW7))
   (assert (technique ?cont OR2-forcing-gwhip[7]))
   (assert (technique ?cont partial-whip[6]))
   (assert (technique ?cont partial-gwhip[6]))
   (bind ?*technique* OR2FgW[7])
)



(defrule track-OR2-forcing-gwhip[7]
   (declare (salience ?*activate-OR2-forcing-gwhip[7]-salience*))
   ?level <- (technique ?cont OR2-forcing-gwhip[7])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR2-forcing-gwhip[7]-candidate-0p
   (declare (salience ?*OR2-forcing-gwhip[7]-candidate-salience*))
   (technique ?cont OR2-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
   (chain
      (type ?type2&partial-gwhip)
      (context ?cont)
      (length ?p2&:(= ?p2 6))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-glink ?cont ?cand ?last-rlc2)
=>
   (retract ?ret)
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L7* ?*print-OR2-forcing-gwhip* ?*print-OR2-forcing-gwhip-7*) then
      (print-OR2-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule OR2-forcing-gwhip[7]-candidate-pq
   (declare (salience ?*OR2-forcing-gwhip[7]-candidate-salience*))
   (technique ?cont OR2-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 6))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(= (+ ?p1 ?p2) 6))
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
=>
   (retract ?ret)
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L7* ?*print-OR2-forcing-gwhip* ?*print-OR2-forcing-gwhip-7*) then
      (print-OR2-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule OR2-forcing-gwhip[7]-value
   (declare (salience ?*OR2-forcing-gwhip[7]-value-salience*))
   (technique ?cont OR2-forcing-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 6))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(= (+ ?p1 ?p2) 6))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L7* ?*print-OR2-forcing-gwhip* ?*print-OR2-forcing-gwhip-7*) then
      (print-OR2-forcing-gwhip-assert-value 
         ?or-name ?or-compl
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



