
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR4-WHIP[1]
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

(defrule activate-OR4-whip[1]
   (declare (salience ?*activate-OR4-whip[1]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR4-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR4W1))
   (assert (technique ?cont OR4-whip[1]))
   (assert (technique ?cont partial-whip[0]))
   (bind ?*technique* OR4W[1])
)



(defrule track-OR4-whip[1]
   (declare (salience ?*activate-OR4-whip[1]-salience*))
   ?level <- (technique ?cont OR4-whip[1])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR4-whip[1]
   (declare (salience ?*OR4-whip[1]-salience-1*))
   (technique ?cont OR4-whip[1])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 4) (OR-candidates ?zzz1 ?zzz2 ?zzz3 ?zzz4))
   ?ret <- (candidate (context ?cont) (status cand) (label ?zzz))
   (exists-link ?cont ?zzz ?zzz1)
   (exists-link ?cont ?zzz ?zzz2)
   (exists-link ?cont ?zzz ?zzz3)
   (exists-link ?cont ?zzz ?zzz4)
=>
   (retract ?ret)
   (if (not (member$ ?or-name ?*ORk-relations-used*)) then (bind ?*ORk-relations-used* (create$ ?*ORk-relations-used* ?or-name)))
   (if (or ?*print-actions* ?*print-L1* ?*print-OR4-whip* ?*print-OR4-whip-1*) then
       (print-ORk-whip[1] ?or-name 4 ?or-compl ?zzz ?zzz1 ?zzz2 ?zzz3 ?zzz4)
    )
)



