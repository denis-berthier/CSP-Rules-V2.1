
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR2-CONTRAD-G-WHIP[27]
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





(defrule activate-OR2-contrad-gwhip[27]
   (declare (salience ?*activate-OR2-contrad-gwhip[27]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR2-contrad-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR2CgW27))
   (assert (technique ?cont OR2-contrad-gwhip[27]))
   (assert (technique ?cont partial-whip[26]))
   (assert (technique ?cont partial-gwhip[26]))
   (bind ?*technique* OR2CgW[27])
)



(defrule track-OR2-contrad-gwhip[27]
   (declare (salience ?*activate-OR2-contrad-gwhip[27]-salience*))
   ?level <- (technique ?cont OR2-contrad-gwhip[27])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR2-contrad-gwhip[27]
   (declare (salience ?*OR2-contrad-gwhip[27]-salience*))
   (technique ?cont OR2-contrad-gwhip[27])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
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
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L27* ?*print-OR2-contrad-gwhip* ?*print-OR2-contrad-gwhip-27*) then
      (print-OR2-contrad-gwhip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)


