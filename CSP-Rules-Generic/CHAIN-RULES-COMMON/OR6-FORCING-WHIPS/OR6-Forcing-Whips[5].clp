
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-FORCING-WHIP[5]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - August 2022            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-OR6-forcing-whip[5]
   (declare (salience ?*activate-OR6-forcing-whip[5]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6FW5))
   (assert (technique ?cont OR6-forcing-whip[5]))
   (assert (technique ?cont partial-whip[4]))
   (bind ?*technique* OR6FW[5])
)



(defrule track-OR6-forcing-whip[5]
   (declare (salience ?*activate-OR6-forcing-whip[5]-salience*))
   ?level <- (technique ?cont OR6-forcing-whip[5])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-forcing-whip[5]-candidate-00000p
   (declare (salience ?*OR6-forcing-whip[5]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[5])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5&:(< ?zzz4 ?zzz5) ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(= ?p6 4))
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
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L5* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-5*) then
      (print-OR6-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         0 ?zzz3 (create$) (create$) (create$)
         0 ?zzz4 (create$) (create$) (create$)
         0 ?zzz5 (create$) (create$) (create$)
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-whip[5]-candidate-0000pq
   (declare (salience ?*OR6-forcing-whip[5]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[5])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p5&:(< ?p5 4))
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
   (exists-link ?cont ?last-rlc5 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p5 ?p6) 4))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L5* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-5*) then
      (print-OR6-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         0 ?zzz3 (create$) (create$) (create$)
         0 ?zzz4 (create$) (create$) (create$)
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-whip[5]-candidate-000pqr
   (declare (salience ?*OR6-forcing-whip[5]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[5])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(< ?p4 3))
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
   (exists-link ?cont ?last-rlc4 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p4 ?p5) 4))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (exists-link ?cont ?last-rlc5 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p4 ?p5 ?p6) 4))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L5* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-5*) then
      (print-OR6-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         0 ?zzz3 (create$) (create$) (create$)
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-whip[5]-candidate-00pqrs
   (declare (salience ?*OR6-forcing-whip[5]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[5])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p3&:(< ?p3 2))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?last-rlc3)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?zzz2 ?cand)
   (exists-link ?cont ?last-rlc3 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p3 ?p4) 3))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?last-rlc4)
   )
   (exists-link ?cont ?last-rlc4 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p3 ?p4 ?p5) 4))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (exists-link ?cont ?last-rlc5 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p3 ?p4 ?p5 ?p6) 4))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc5 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L5* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-5*) then
      (print-OR6-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6 
         ?cand
      )
   )
)



