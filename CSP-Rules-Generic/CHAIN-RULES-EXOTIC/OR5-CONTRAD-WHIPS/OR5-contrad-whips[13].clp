
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR5-CONTRAD-WHIP[13]
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





(defrule activate-OR5-contrad-whip[13]
   (declare (salience ?*activate-OR5-contrad-whip[13]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR5-contrad-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR5CW13))
   (assert (technique ?cont OR5-contrad-whip[13]))
   (assert (technique ?cont partial-whip[12]))
   (bind ?*technique* OR5CW[13])
)



(defrule track-OR5-contrad-whip[13]
   (declare (salience ?*activate-OR5-contrad-whip[13]-salience*))
   ?level <- (technique ?cont OR5-contrad-whip[13])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR5-contrad-whip[13]
   (declare (salience ?*OR5-contrad-whip[13]-salience*))
   (technique ?cont OR5-contrad-whip[13])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 5) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p&:(= ?p 12))
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
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L13* ?*print-OR5-contrad-whip* ?*print-OR5-contrad-whip-13*) then
      (print-OR5-contrad-whip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3 ?zzz4 ?zzz5
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)



