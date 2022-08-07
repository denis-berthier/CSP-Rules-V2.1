
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR4-FORCING-WHIP[2]
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





(defrule activate-OR4-forcing-whip[2]
   (declare (salience ?*activate-OR4-forcing-whip[2]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR4-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR4FW2))
   (assert (technique ?cont OR4-forcing-whip[2]))
   (assert (technique ?cont partial-whip[1]))
   (bind ?*technique* OR4FW[2])
)



(defrule track-OR4-forcing-whip[2]
   (declare (salience ?*activate-OR4-forcing-whip[2]-salience*))
   ?level <- (technique ?cont OR4-forcing-whip[2])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR4-forcing-whip[2]-candidate-000p
   (declare (salience ?*OR4-forcing-whip[2]-candidate-salience*))
   (technique ?cont OR4-forcing-whip[2])
   (OR-k-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2&:(< ?zzz1 ?zzz2) ?zzz3&:(< ?zzz2 ?zzz3) ?zzz4))
   (chain
      (type partial-whip)
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
   (exists-link ?cont ?last-rlc4 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L2* ?*print-OR4-forcing-whip* ?*print-OR4-forcing-whip-2*) then
      (print-OR4-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         0 ?zzz2 (create$) (create$) (create$)
         0 ?zzz3 (create$) (create$) (create$)
         ?p4 ?zzz4 $?llcs4 $?rlcs4 $?csps4
         ?cand
      )
   )
)



