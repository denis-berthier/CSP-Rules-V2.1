
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              FORCING-G-WHIP[5]
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





(defrule activate-forcing-gwhip[5]
   (declare (salience ?*activate-forcing-gwhip[5]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_FgW5))
   (assert (technique ?cont forcing-gwhip[5]))
   (bind ?*technique* FgW[5])
)



(defrule track-forcing-gwhip[5]
   (declare (salience ?*activate-forcing-gwhip[5]-salience*))
   ?level <- (technique ?cont forcing-gwhip[5])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule forcing-gwhip[5]-value
   (declare (salience ?*forcing-gwhip[5]-value-salience*))
   (bivalue ?cont ?zzz1 ?zzz2 ?ll)
   (technique ?cont forcing-gwhip[5])
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 4))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(<= ?p1 ?p2)&:(= (+ ?p1 ?p2) 4))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (or ?*print-actions* ?*print-L5* ?*print-forcing-gwhip* ?*print-forcing-gwhip-5*) then
      (print-forcing-gwhip-assert-value 
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule forcing-gwhip[5]-candidate
   (declare (salience ?*forcing-gwhip[5]-candidate-salience*))
   (bivalue ?cont ?zzz1 ?zzz2 ?ll)
   (technique ?cont forcing-gwhip[5])
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 4))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(<= ?p1 ?p2)&:(= (+ ?p1 ?p2) 4))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (or
      (exists-link ?cont ?cand ?last-rlc1)
      (exists-glink ?cont ?cand ?last-rlc1)
   )
   (or
      (exists-link ?cont ?cand ?last-rlc2)
      (exists-glink ?cont ?cand ?last-rlc2)
   )
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L5* ?*print-forcing-gwhip* ?*print-forcing-gwhip-5*) then
      (print-forcing-gwhip-elim-candidate 
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



