
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-CONTRAD-G-WHIP[27]
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





(defrule activate-OR6-contrad-gwhip[27]
   (declare (salience ?*activate-OR6-contrad-gwhip[27]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-contrad-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6CgW27))
   (assert (technique ?cont OR6-contrad-gwhip[27]))
   (assert (technique ?cont partial-whip[26]))
   (assert (technique ?cont partial-gwhip[26]))
   (bind ?*technique* OR6CgW[27])
)



(defrule track-OR6-contrad-gwhip[27]
   (declare (salience ?*activate-OR6-contrad-gwhip[27]-salience*))
   ?level <- (technique ?cont OR6-contrad-gwhip[27])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-contrad-gwhip[27]
   (declare (salience ?*OR6-contrad-gwhip[27]-salience*))
   (technique ?cont OR6-contrad-gwhip[27])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-gwhip)
      (context ?cont)
      (length ?p&:(= ?p 26))
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csps)
      (last-rlc ?last-rlc)
   )
   (or
      (exists (exists-link ?cont ?zzz1 ?uuu1&:(member$ ?uuu1 $?rlcs)))
      (exists (exists-glink ?cont ?zzz1 ?uuu1&:(member$ ?uuu1 $?rlcs)))
   )
   (or
      (exists (exists-link ?cont ?zzz2 ?uuu2&:(member$ ?uuu2 $?rlcs)))
      (exists (exists-glink ?cont ?zzz2 ?uuu2&:(member$ ?uuu2 $?rlcs)))
   )
   (or
      (exists (exists-link ?cont ?zzz3 ?uuu3&:(member$ ?uuu3 $?rlcs)))
      (exists (exists-glink ?cont ?zzz3 ?uuu3&:(member$ ?uuu3 $?rlcs)))
   )
   (or
      (exists (exists-link ?cont ?zzz4 ?uuu4&:(member$ ?uuu4 $?rlcs)))
      (exists (exists-glink ?cont ?zzz4 ?uuu4&:(member$ ?uuu4 $?rlcs)))
   )
   (or
      (exists (exists-link ?cont ?zzz5 ?uuu5&:(member$ ?uuu5 $?rlcs)))
      (exists (exists-glink ?cont ?zzz5 ?uuu5&:(member$ ?uuu5 $?rlcs)))
   )
   (or
      (exists (exists-link ?cont ?zzz6 ?uuu6&:(member$ ?uuu6 $?rlcs)))
      (exists (exists-glink ?cont ?zzz6 ?uuu6&:(member$ ?uuu6 $?rlcs)))
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L27* ?*print-OR6-contrad-gwhip* ?*print-OR6-contrad-gwhip-27*) then
      (print-OR6-contrad-gwhip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)


