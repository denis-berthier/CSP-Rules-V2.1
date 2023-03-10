
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR4-CONTRAD-G-WHIP[7]
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





(defrule activate-OR4-contrad-gwhip[7]
   (declare (salience ?*activate-OR4-contrad-gwhip[7]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR4-contrad-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR4CgW7))
   (assert (technique ?cont OR4-contrad-gwhip[7]))
   (assert (technique ?cont partial-whip[6]))
   (assert (technique ?cont partial-gwhip[6]))
   (bind ?*technique* OR4CgW[7])
)



(defrule track-OR4-contrad-gwhip[7]
   (declare (salience ?*activate-OR4-contrad-gwhip[7]-salience*))
   ?level <- (technique ?cont OR4-contrad-gwhip[7])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR4-contrad-gwhip[7]
   (declare (salience ?*OR4-contrad-gwhip[7]-salience*))
   (technique ?cont OR4-contrad-gwhip[7])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4))
   (chain
      (type partial-gwhip)
      (context ?cont)
      (length ?p&:(= ?p 6))
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
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L7* ?*print-OR4-contrad-gwhip* ?*print-OR4-contrad-gwhip-7*) then
      (print-OR4-contrad-gwhip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)



