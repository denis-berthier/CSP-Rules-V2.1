
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR4-FORCING-G-WHIP[2]
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





(defrule activate-OR4-forcing-gwhip[2]
   (declare (salience ?*activate-OR4-forcing-gwhip[2]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR4-forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR4FW2))
   (assert (technique ?cont OR4-forcing-gwhip[2]))
   (assert (technique ?cont partial-whip[1]))
   (assert (technique ?cont partial-gwhip[1]))
   (bind ?*technique* OR4FgW[2])
)



(defrule track-OR4-forcing-gwhip[2]
   (declare (salience ?*activate-OR4-forcing-gwhip[2]-salience*))
   ?level <- (technique ?cont OR4-forcing-gwhip[2])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR4-forcing-gwhip[2]-candidate-000p
   (declare (salience ?*OR4-forcing-gwhip[2]-candidate-salience*))
   (technique ?cont OR4-forcing-gwhip[2])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4))
   (chain
      (type ?type4&partial-gwhip)
      (context ?cont)
      (length ?p4&:(= ?p4 1))
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
   (if (or ?*print-actions* ?*print-L2* ?*print-OR4-forcing-gwhip* ?*print-OR4-forcing-gwhip-2*) then
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



