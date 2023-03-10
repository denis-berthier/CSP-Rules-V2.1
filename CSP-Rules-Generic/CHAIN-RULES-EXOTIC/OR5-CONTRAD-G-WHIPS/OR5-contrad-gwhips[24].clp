
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-CONTRAD-G-WHIP[24]
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





(defrule activate-OR5-contrad-gwhip[24]
   (declare (salience ?*activate-OR5-contrad-gwhip[24]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-contrad-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5CgW24))
   (assert (technique ?cont OR5-contrad-gwhip[24]))
   (assert (technique ?cont partial-whip[23]))
   (assert (technique ?cont partial-gwhip[23]))
   (bind ?*technique* OR5CgW[24])
)



(defrule track-OR5-contrad-gwhip[24]
   (declare (salience ?*activate-OR5-contrad-gwhip[24]-salience*))
   ?level <- (technique ?cont OR5-contrad-gwhip[24])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR5-contrad-gwhip[24]
   (declare (salience ?*OR5-contrad-gwhip[24]-salience*))
   (technique ?cont OR5-contrad-gwhip[24])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5))
   (chain
      (type partial-gwhip)
      (context ?cont)
      (length ?p&:(= ?p 23))
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
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L24* ?*print-OR5-contrad-gwhip* ?*print-OR5-contrad-gwhip-24*) then
      (print-OR5-contrad-gwhip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)



