
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-CONTRAD-WHIP[21]
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





(defrule activate-OR6-contrad-whip[21]
   (declare (salience ?*activate-OR6-contrad-whip[21]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-contrad-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6CW21))
   (assert (technique ?cont OR6-contrad-whip[21]))
   (assert (technique ?cont partial-whip[20]))
   (bind ?*technique* OR6CW[21])
)



(defrule track-OR6-contrad-whip[21]
   (declare (salience ?*activate-OR6-contrad-whip[21]-salience*))
   ?level <- (technique ?cont OR6-contrad-whip[21])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-contrad-whip[21]
   (declare (salience ?*OR6-contrad-whip[21]-salience*))
   (technique ?cont OR6-contrad-whip[21])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p&:(= ?p 20))
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
   (exists (exists-link ?cont ?zzz6 ?uuu6&:(member$ ?uuu6 $?rlcs)))
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L21* ?*print-OR6-contrad-whip* ?*print-OR6-contrad-whip-21*) then
      (print-OR6-contrad-whip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)



