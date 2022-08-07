
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-FORCING-WHIP[3]
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





(defrule activate-OR5-forcing-whip[3]
   (declare (salience ?*activate-OR5-forcing-whip[3]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5FW3))
   (assert (technique ?cont OR5-forcing-whip[3]))
   (assert (technique ?cont partial-whip[2]))
   (bind ?*technique* OR5FW[3])
)



(defrule track-OR5-forcing-whip[3]
   (declare (salience ?*activate-OR5-forcing-whip[3]-salience*))
   ?level <- (technique ?cont OR5-forcing-whip[3])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR5-forcing-whip[3]-candidate-0000p
   (declare (salience ?*OR5-forcing-whip[3]-candidate-salience*))
   (technique ?cont OR5-forcing-whip[3])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5))
   (chain
      (type partial-whip)
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
   (exists-link ?cont ?last-rlc5 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L3* ?*print-OR5-forcing-whip* ?*print-OR5-forcing-whip-3*) then
      (print-OR5-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         0 ?zzz3 (create$) (create$) (create$)
         0 ?zzz4 (create$) (create$) (create$)
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?cand
      )
   )
)



(defrule OR5-forcing-whip[3]-candidate-000pq
   (declare (salience ?*OR5-forcing-whip[3]-candidate-salience*))
   (technique ?cont OR5-forcing-whip[3])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4 ?zzz5))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p4&:(< ?p4 1))
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
      (length ?p5&:(or (< ?p4 ?p5) (and (= ?p4 ?p5) (< ?zzz4 ?zzz5)))&:(= (+ ?p4 ?p5) 2))
      (target ?zzz5)
      (llcs $?llcs5)
      (rlcs $?rlcs5)
      (csp-vars $?csps5)
      (last-rlc ?last-rlc5)
   )
   (exists-link ?cont ?last-rlc5 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L3* ?*print-OR5-forcing-whip* ?*print-OR5-forcing-whip-3*) then
      (print-OR5-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         0 ?zzz3 (create$) (create$) (create$)
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?p5 ?zzz5 $?llcs5 $?rlcs5 $?csps5
         ?cand
      )
   )
)



