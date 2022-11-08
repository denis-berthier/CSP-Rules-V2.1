
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-FORCING-WHIP[2]
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





(defrule activate-OR6-forcing-whip[2]
   (declare (salience ?*activate-OR6-forcing-whip[2]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6FW2))
   (assert (technique ?cont OR6-forcing-whip[2]))
   (assert (technique ?cont partial-whip[1]))
   (bind ?*technique* OR6FW[2])
)



(defrule track-OR6-forcing-whip[2]
   (declare (salience ?*activate-OR6-forcing-whip[2]-salience*))
   ?level <- (technique ?cont OR6-forcing-whip[2])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-forcing-whip[2]-candidate-00000p
   (declare (salience ?*OR6-forcing-whip[2]-candidate-salience*))
   (technique ?cont OR6-forcing-whip[2])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4&:(< ?zzz3 ?zzz4) ?zzz5&:(< ?zzz4 ?zzz5) ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p6&:(= ?p6 1))
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
   (if (or ?*print-actions* ?*print-L2* ?*print-OR6-forcing-whip* ?*print-OR6-forcing-whip-2*) then
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



