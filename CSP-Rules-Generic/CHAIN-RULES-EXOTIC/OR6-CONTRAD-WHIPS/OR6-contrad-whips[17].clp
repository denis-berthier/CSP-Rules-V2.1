
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR6-CONTRAD-WHIP[17]
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





(defrule activate-OR6-contrad-whip[17]
   (declare (salience ?*activate-OR6-contrad-whip[17]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR6-contrad-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR6CW17))
   (assert (technique ?cont OR6-contrad-whip[17]))
   (assert (technique ?cont partial-whip[16]))
   (bind ?*technique* OR6CW[17])
)



(defrule track-OR6-contrad-whip[17]
   (declare (salience ?*activate-OR6-contrad-whip[17]-salience*))
   ?level <- (technique ?cont OR6-contrad-whip[17])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR6-contrad-whip[17]
   (declare (salience ?*OR6-contrad-whip[17]-salience*))
   (technique ?cont OR6-contrad-whip[17])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 6) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p&:(= ?p 16))
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
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L17* ?*print-OR6-contrad-whip* ?*print-OR6-contrad-whip-17*) then
      (print-OR6-contrad-whip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5 ?zzz6
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)



