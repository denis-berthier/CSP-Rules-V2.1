
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-FORCING-WHIP[8]
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





(defrule activate-OR6-forcing-whip[8]
   (declare (salience ?*activate-OR6-forcing-whip[8]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6FW8))
   (assert (technique ?cont OR6-forcing-whip[8]))
   (assert (technique ?cont partial-whip[7]))
   (bind ?*technique* OR6FW[8])
)



(defrule track-OR6-forcing-whip[8]
   (declare (salience ?*activate-OR6-forcing-whip[8]-salience*))
   ?level <- (technique ?cont OR6-forcing-whip[8])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-forcing-whip[8]-candidate-00000p
   (declare (salience ?*OR6-forcing-whip[8]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5&:(< ?zzz4 ?zzz5) ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(= ?p6 7))
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
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
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



(defrule OR6-forcing-whip[8]-candidate-0000pq
   (declare (salience ?*OR6-forcing-whip[8]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p5&:(< ?p5 7))
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
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p5 ?p6) 7))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
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



(defrule OR6-forcing-whip[8]-candidate-000pqr
   (declare (salience ?*OR6-forcing-whip[8]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(< ?p4 6))
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
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p4 ?p5) 7))
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
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p4 ?p5 ?p6) 7))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
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



(defrule OR6-forcing-whip[8]-candidate-00pqrs
   (declare (salience ?*OR6-forcing-whip[8]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p3&:(< ?p3 5))
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
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p3 ?p4) 6))
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
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p3 ?p4 ?p5) 7))
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
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p3 ?p4 ?p5 ?p6) 7))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc5 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
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



(defrule OR6-forcing-whip[8]-candidate-0pqrst
   (declare (salience ?*OR6-forcing-whip[8]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(< ?p2 4))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?last-rlc2 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p2 ?p3) 5))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?last-rlc3)
   )
   (exists-link ?cont ?last-rlc3 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p2 ?p3 ?p4) 6))
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
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p2 ?p3 ?p4 ?p5) 7))
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
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p2 ?p3 ?p4 ?p5 ?p6) 7))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
      (print-OR6-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-whip[8]-candidate-pqrstu
   (declare (salience ?*OR6-forcing-whip[8]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p1&:(< ?p1 3))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(< (+ ?p1 ?p2) 4))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?last-rlc1 ?cand)
   (exists-link ?cont ?last-rlc2 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p1 ?p2 ?p3) 5))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?last-rlc3)
   )
   (exists-link ?cont ?last-rlc3 ?cand)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p1 ?p2 ?p3 ?p4) 6))
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
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p1 ?p2 ?p3 ?p4 ?p5) 7))
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
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p1 ?p2 ?p3 ?p4 ?p5 ?p6) 7))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?last-rlc6)
   )
   (exists-link ?cont ?last-rlc6 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
      (print-OR6-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2 
         ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



(defrule OR6-forcing-whip[8]-value
   (declare (salience ?*OR6-forcing-whip[8]-value-salience*))
   (technique ?cont OR6-forcing-whip[8])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p1&:(< ?p1 3))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(< (+ ?p1 ?p2) 4))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p3&:(or (< ?p2 ?p3) (and (= ?p2 ?p3) (< ?zzz2 ?zzz3)))&:(< (+ ?p1 ?p2 ?p3) 5))
      (target ?zzz3)
      (llcs $?llcs3)
      (rlcs $?rlcs3)
      (csp-vars $?csps3)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(or (< ?p3 ?p4) (and (= ?p3 ?p4) (< ?zzz3 ?zzz4)))&:(< (+ ?p1 ?p2 ?p3 ?p4) 6))
      (target ?zzz4)
      (llcs $?llcs4)
      (rlcs $?rlcs4)
      (csp-vars $?csps4)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(< (+ ?p1 ?p2 ?p3 ?p4 ?p5) 7))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(or (< ?p5 ?p6) (and (= ?p5 ?p6) (< ?zzz5 ?zzz6)))&:(= (+ ?p1 ?p2 ?p3 ?p4 ?p5 ?p6) 7))
      (target ?zzz6)
      (llcs $?llcs6)
      (rlcs $?rlcs6)
      (csp-vars $?csps6)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (or ?*print-actions* ?*print-L8* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-8*) then
      (print-OR6-forcing-whip-assert-value 
         ?or-name ?or-compl
         ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?p3 ?zzz3 $?llcs3 $?rlcs3 $?csps3
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?p6 ?zzz6 $?llcs6 $?rlcs6 $?csps6
         ?cand
      )
   )
)



