
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR3-WHIP[1]
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





;;; DO NOT USE THE AUTOMATIC GENERATOR FOR THIS FILE

(defrule activate-OR3-whip[1]
   (declare (salience ?*activate-OR3-whip[1]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR3-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR3W1))
   (assert (technique ?cont OR3-whip[1]))
   (assert (technique ?cont partial-whip[0]))
   (bind ?*technique* OR3W[1])
)



(defrule track-OR3-whip[1]
   (declare (salience ?*activate-OR3-whip[1]-salience*))
   ?level <- (technique ?cont OR3-whip[1])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR3-whip[1]
   (declare (salience ?*OR3-whip[1]-salience-1*))
   (technique ?cont OR3-whip[1])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 3) (OR-candidates ?zzz1 ?zzz2 ?zzz3))
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
   (exists-link ?cont ?zzz ?zzz1)
   (exists-link ?cont ?zzz ?zzz2)
   (exists-link ?cont ?zzz ?zzz3)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L1* ?*print-OR3-whip* ?*print-OR3-whip-1*) then
       (print-ORk-whip[1] ?or-name 3 ?or-compl ?zzz ?zzz1 ?zzz2 ?zzz3)
    )
)
       



