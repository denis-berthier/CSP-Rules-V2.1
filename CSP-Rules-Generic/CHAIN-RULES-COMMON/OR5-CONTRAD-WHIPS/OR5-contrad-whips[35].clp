
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-CONTRAD-WHIP[35]
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





(defrule activate-OR5-contrad-whip[35]
   (declare (salience ?*activate-OR5-contrad-whip[35]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-contrad-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5CW35))
   (assert (technique ?cont OR5-contrad-whip[35]))
   (assert (technique ?cont partial-whip[34]))
   (bind ?*technique* OR5CW[35])
)



(defrule track-OR5-contrad-whip[35]
   (declare (salience ?*activate-OR5-contrad-whip[35]-salience*))
   ?level <- (technique ?cont OR5-contrad-whip[35])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR5-contrad-whip[35]
   (declare (salience ?*OR5-contrad-whip[35]-salience*))
   (technique ?cont OR5-contrad-whip[35])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p&:(= ?p 34))
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csps)
      (last-rlc ?last-rlc)
   )
   (exists (exists-link ?cont ?zzz1 ?uuu1&:(member$ ?uuu1 $?rlcs)))
   (exists (exists-link ?cont ?zzz2 ?uuu2&:(member$ ?uuu2 $?rlcs)))
   (exists (exists-link ?cont ?zzz3 ?uuu3&:(member$ ?uuu3 $?rlcs)))
   (exists (exists-link ?cont ?zzz4 ?uuu4&:(member$ ?uuu4 $?rlcs)))
   (exists (exists-link ?cont ?zzz5 ?uuu5&:(member$ ?uuu5 $?rlcs)))
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L35* ?*print-OR5-contrad-whip* ?*print-OR5-contrad-whip-35*) then
      (print-OR5-contrad-whip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)


