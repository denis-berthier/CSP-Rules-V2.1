
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR2-CONTRAD-WHIP[35]
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





(defrule activate-OR2-contrad-whip[35]
   (declare (salience ?*activate-OR2-contrad-whip[35]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR2-contrad-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR2CW35))
   (assert (technique ?cont OR2-contrad-whip[35]))
   (assert (technique ?cont partial-whip[34]))
   (bind ?*technique* OR2CW[35])
)



(defrule track-OR2-contrad-whip[35]
   (declare (salience ?*activate-OR2-contrad-whip[35]-salience*))
   ?level <- (technique ?cont OR2-contrad-whip[35])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR2-contrad-whip[35]
   (declare (salience ?*OR2-contrad-whip[35]-salience*))
   (technique ?cont OR2-contrad-whip[35])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
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
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L35* ?*print-OR2-contrad-whip* ?*print-OR2-contrad-whip-35*) then
      (print-OR2-contrad-whip 
         ?or-name ?or-compl ?p ?zzz1 ?zzz2
         ?zzz $?llcs $?rlcs $?csps
      )
   )
)


