
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR3-CONTRAD-WHIP[5]
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





(defrule activate-OR3-contrad-whip[5]
   (declare (salience ?*activate-OR3-contrad-whip[5]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR3-contrad-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR3CW5))
   (assert (technique ?cont OR3-contrad-whip[5]))
   (assert (technique ?cont partial-whip[4]))
   (bind ?*technique* OR3CW[5])
)



(defrule track-OR3-contrad-whip[5]
   (declare (salience ?*activate-OR3-contrad-whip[5]-salience*))
   ?level <- (technique ?cont OR3-contrad-whip[5])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR3-contrad-whip[5]
   (declare (salience ?*OR3-contrad-whip[5]-salience*))
   (technique ?cont OR3-contrad-whip[5])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 3) (OR-candidates ?zzz1 ?zzz2 ?zzz3))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p&:(= ?p 4))
      (target ?zzz)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csps)
      (last-rlc ?last-rlc)
   )
   (exists (exists-link ?cont ?zzz1 ?uuu1&:(member$ ?uuu1 $?rlcs)))
   (exists (exists-link ?cont ?zzz2 ?uuu2&:(member$ ?uuu2 $?rlcs)))
   (exists (exists-link ?cont ?zzz3 ?uuu3&:(member$ ?uuu3 $?rlcs)))
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L5* ?*print-OR3-contrad-whip* ?*print-OR3-contrad-whip-5*) then
      (print-OR3-contrad-whip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2 ?zzz3
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)


