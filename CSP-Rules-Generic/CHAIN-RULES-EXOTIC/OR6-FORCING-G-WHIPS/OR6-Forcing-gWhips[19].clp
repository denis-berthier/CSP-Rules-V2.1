
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-FORCING-G-WHIP[19]
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





(defrule activate-OR6-forcing-gwhip[19]
   (declare (salience ?*activate-OR6-forcing-gwhip[19]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6FW19))
   (assert (technique ?cont OR6-forcing-gwhip[19]))
   (assert (technique ?cont partial-whip[18]))
   (assert (technique ?cont partial-gwhip[18]))
   (bind ?*technique* OR6FgW[19])
)



(defrule track-OR6-forcing-gwhip[19]
   (declare (salience ?*activate-OR6-forcing-gwhip[19]-salience*))
   ?level <- (technique ?cont OR6-forcing-gwhip[19])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-forcing-gwhip[19]-candidate-00000p
   (declare (salience ?*OR6-forcing-gwhip[19]-candidate-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5&:(< ?zzz4 ?zzz5) ?zzz6))
   (chain
      (type ?type6&partial-gwhip)
      (context ?cont)
      (length ?p6&:(= ?p6 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?zzz2 ?cand)
   (exists-link ?cont ?zzz3 ?cand)
   (exists-link ?cont ?zzz4 ?cand)
   (exists-link ?cont ?zzz5 ?cand)
   (or
      (exists-link ?cont ?cand ?last-rlc6)
      (exists-glink ?cont ?cand ?last-rlc6)
   )
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         0 0 ?zzz3 (create$) (create$) (create$)
         0 0 ?zzz4 (create$) (create$) (create$)
         0 0 ?zzz5 (create$) (create$) (create$)
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-gwhip[19]-candidate-0000pq
   (declare (salience ?*OR6-forcing-gwhip[19]-candidate-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5 ?zzz6))
   (chain
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(< ?p5 18))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?zzz2 ?cand)
   (exists-link ?cont ?zzz3 ?cand)
   (exists-link ?cont ?zzz4 ?cand)
   (or
      (exists-link ?cont ?cand ?last-rlc5)
      (exists-glink ?cont ?cand ?last-rlc5)
   )
   (chain
      (type ?type6&:(or (eq ?type6 partial-whip) (eq ?type6 partial-gwhip))&:(or (eq ?type5 partial-gwhip) (eq ?type6 partial-gwhip)))
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p5 ?p6) 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc6)
      (exists-glink ?cont ?cand ?last-rlc6)
   )
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         0 0 ?zzz3 (create$) (create$) (create$)
         0 0 ?zzz4 (create$) (create$) (create$)
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-gwhip[19]-candidate-000pqr
   (declare (salience ?*OR6-forcing-gwhip[19]-candidate-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(< ?p4 17))
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
   (or
      (exists-link ?cont ?cand ?last-rlc4)
      (exists-glink ?cont ?cand ?last-rlc4)
   )
   (chain
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p4 ?p5) 18))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc5)
      (exists-glink ?cont ?cand ?last-rlc5)
   )
   (chain
      (type ?type6&:(or (eq ?type6 partial-whip) (eq ?type6 partial-gwhip))&:(or (eq ?type4 partial-gwhip) (eq ?type5 partial-gwhip) (eq ?type6 partial-gwhip)))
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p4 ?p5 ?p6) 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc6)
      (exists-glink ?cont ?cand ?last-rlc6)
   )
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         0 0 ?zzz3 (create$) (create$) (create$)
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-gwhip[19]-candidate-00pqrs
   (declare (salience ?*OR6-forcing-gwhip[19]-candidate-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type ?type3&:(or (eq ?type3 partial-whip) (eq ?type3 partial-gwhip)))
      (context ?cont)
      (length ?p3&:(< ?p3 16))
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
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p3 ?p4) 17))
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
   (chain
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p3 ?p4 ?p5) 18))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc5)
      (exists-glink ?cont ?cand ?last-rlc5)
   )
   (chain
      (type ?type6&:(or (eq ?type6 partial-whip) (eq ?type6 partial-gwhip))&:(or (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip) (eq ?type5 partial-gwhip) (eq ?type6 partial-gwhip)))
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p3 ?p4 ?p5 ?p6) 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc6)
      (exists-glink ?cont ?cand ?last-rlc6)
   )
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6 
         ?cand
      )
   )
)



(defrule OR6-forcing-gwhip[19]-candidate-0pqrst
   (declare (salience ?*OR6-forcing-gwhip[19]-candidate-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(< ?p2 15))
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
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p2 ?p3) 16))
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
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p2 ?p3 ?p4) 17))
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
   (chain
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p2 ?p3 ?p4 ?p5) 18))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc5)
      (exists-glink ?cont ?cand ?last-rlc5)
   )
   (chain
      (type ?type6&:(or (eq ?type6 partial-whip) (eq ?type6 partial-gwhip))&:(or (eq ?type2 partial-gwhip) (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip) (eq ?type5 partial-gwhip) (eq ?type6 partial-gwhip)))
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p2 ?p3 ?p4 ?p5 ?p6) 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc6)
      (exists-glink ?cont ?cand ?last-rlc6)
   )
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6 
         ?cand
      )
   )
)



(defrule OR6-forcing-gwhip[19]-candidate-pqrstu
   (declare (salience ?*OR6-forcing-gwhip[19]-candidate-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 14))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(< (+ ?p1 ?p2) 15))
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
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p1 ?p2 ?p3) 16))
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
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p1 ?p2 ?p3 ?p4) 17))
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
   (chain
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p1 ?p2 ?p3 ?p4 ?p5) 18))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc5)
      (exists-glink ?cont ?cand ?last-rlc5)
   )
   (chain
      (type ?type6&:(or (eq ?type6 partial-whip) (eq ?type6 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip) (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip) (eq ?type5 partial-gwhip) (eq ?type6 partial-gwhip)))
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p1 ?p2 ?p3 ?p4 ?p5 ?p6) 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc6)
      (exists-glink ?cont ?cand ?last-rlc6)
   )
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6 
         ?cand
      )
   )
)



(defrule OR6-forcing-gwhip[19]-value
   (declare (salience ?*OR6-forcing-gwhip[19]-value-salience*))
   (technique ?cont OR6-forcing-gwhip[19])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 14))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(< (+ ?p1 ?p2) 15))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   (chain
      (type ?type3&:(or (eq ?type3 partial-whip) (eq ?type3 partial-gwhip)))
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p1 ?p2 ?p3) 16))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?cand)
   )
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p1 ?p2 ?p3 ?p4) 17))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?cand)
   )
   (chain
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p1 ?p2 ?p3 ?p4 ?p5) 18))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?cand)
   )
   (chain
      (type ?type6&:(or (eq ?type6 partial-whip) (eq ?type6 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip) (eq ?type3 partial-gwhip) (eq ?type4 partial-gwhip) (eq ?type5 partial-gwhip) (eq ?type6 partial-gwhip)))
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p1 ?p2 ?p3 ?p4 ?p5 ?p6) 18))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L19* ?*print-OR6-forcing-gwhip* ?*print-OR6-forcing-gwhip-19*) then
      (print-OR6-forcing-gwhip-assert-value 
         ?or-name ?or-compl
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?type3 ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?type6 ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6 
         ?cand
      )
   )
)



