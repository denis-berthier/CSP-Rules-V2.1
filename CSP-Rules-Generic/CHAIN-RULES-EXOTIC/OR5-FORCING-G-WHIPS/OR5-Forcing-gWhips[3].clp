
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-FORCING-G-WHIP[3]
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





(defrule activate-OR5-forcing-gwhip[3]
   (declare (salience ?*activate-OR5-forcing-gwhip[3]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5FW3))
   (assert (technique ?cont OR5-forcing-gwhip[3]))
   (assert (technique ?cont partial-whip[2]))
   (assert (technique ?cont partial-gwhip[2]))
   (bind ?*technique* OR5FgW[3])
)



(defrule track-OR5-forcing-gwhip[3]
   (declare (salience ?*activate-OR5-forcing-gwhip[3]-salience*))
   ?level <- (technique ?cont OR5-forcing-gwhip[3])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR5-forcing-gwhip[3]-candidate-0000p
   (declare (salience ?*OR5-forcing-gwhip[3]-candidate-salience*))
   (technique ?cont OR5-forcing-gwhip[3])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5))
   (chain
      (type ?type5&partial-gwhip)
      (context ?cont)
      (length ?p5&:(= ?p5 2))
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
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L3* ?*print-OR5-forcing-gwhip* ?*print-OR5-forcing-gwhip-3*) then
      (print-OR5-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         0 0 ?zzz3 (create$) (create$) (create$)
         0 0 ?zzz4 (create$) (create$) (create$)
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?cand
      )
   )
)



(defrule OR5-forcing-gwhip[3]-candidate-000pq
   (declare (salience ?*OR5-forcing-gwhip[3]-candidate-salience*))
   (technique ?cont OR5-forcing-gwhip[3])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4 ?zzz5))
   (chain
      (type ?type4&:(or (eq ?type4 partial-whip) (eq ?type4 partial-gwhip)))
      (context ?cont)
      (length ?p4&:(< ?p4 2))
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
      (type ?type5&:(or (eq ?type5 partial-whip) (eq ?type5 partial-gwhip))&:(or (eq ?type4 partial-gwhip) (eq ?type5 partial-gwhip)))
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(= (+ ?p4 ?p5) 2))
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
=>
   (retract ?ret)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L3* ?*print-OR5-forcing-gwhip* ?*print-OR5-forcing-gwhip-3*) then
      (print-OR5-forcing-gwhip-elim-candidate 
         ?or-name ?or-compl
         0 0 ?zzz1 (create$) (create$) (create$)
         0 0 ?zzz2 (create$) (create$) (create$)
         0 0 ?zzz3 (create$) (create$) (create$)
         ?type4 ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?type5 ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?cand
      )
   )
)



