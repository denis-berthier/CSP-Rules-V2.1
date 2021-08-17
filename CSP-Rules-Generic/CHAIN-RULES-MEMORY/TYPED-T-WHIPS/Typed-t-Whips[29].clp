
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED-T-WHIP[29]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2021             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-typed-t-whip[29]
   (declare (salience ?*activate-typed-t-whip[29]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont typed-t-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_TytW29))
   (assert (technique ?cont typed-partial-whip[28]))
   (assert (technique ?cont typed-t-whip[29]))
   (bind ?*technique* TytW[29])
)



(defrule track-typed-t-whip[29]
   (declare (salience ?*activate-typed-t-whip[29]-salience*))
   ?level <- (technique ?cont typed-t-whip[29])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; typed-t-whip elimination rule

(defrule typed-t-whip[29]
   (declare (salience ?*typed-t-whip[29]-salience*))
   (typed-chain
      (type typed-partial-whip)
      (csp-type ?csp-type)
      (context ?cont)
      (length 28)
      (target ?zzz1)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; front part
   (typed-chain
      (type typed-partial-whip)
      (csp-type ?csp-type)
      (context ?cont)
      (length 1)
      (target ?zzz&~?zzz1&:(not (member$ ?zzz $?llcs))&:(not (member$ ?zzz $?rlcs)))
      (llcs ?llc0&~?zzz1&:(not (member$ ?llc0 $?llcs))&:(not (member$ ?llc0 $?rlcs)))
      (rlcs ?zzz1) ; ?rlc0 = ?zzz1 makes the junction between the two typed-partial-whips
      (csp-vars ?csp0&:(not (member$ ?csp0 $?csp-vars)))
      (last-rlc ?zzz1)
   )
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz&:(linked ?zzz ?last-rlc)))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L29* ?*print-typed-t-whip* ?*print-typed-t-whip-29*) then
      (print-typed-t-whip ?csp-type 29 ?zzz 
         (create$ ?llc0 (subseq$ $?llcs 1 27))
         (create$ ?zzz1 (subseq$ $?rlcs 1 27))
         (create$ ?csp0 (subseq$ $?csp-vars 1 27))
         (nth$ 28 $?llcs) . (nth$ 28 $?csp-vars)
      )
   )
)



