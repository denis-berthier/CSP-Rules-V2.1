
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              FORCING-G-WHIP[31]
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





(defrule activate-forcing-gwhip[31]
   (declare (salience ?*activate-forcing-gwhip[31]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont forcing-gwhip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_FgW31))
   (assert (technique ?cont forcing-gwhip[31]))
   (bind ?*technique* FgW[31])
)



(defrule track-forcing-gwhip[31]
   (declare (salience ?*activate-forcing-gwhip[31]-salience*))
   ?level <- (technique ?cont forcing-gwhip[31])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule forcing-gwhip[31]-value
   (declare (salience ?*forcing-gwhip[31]-value-salience*))
   (bivalue ?cont ?zzz1 ?zzz2 ?ll)
   (technique ?cont forcing-gwhip[31])
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 30))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(<= ?p1 ?p2)&:(= (+ ?p1 ?p2) 30))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (or ?*print-actions* ?*print-L31* ?*print-forcing-gwhip* ?*print-forcing-gwhip-31*) then
      (print-forcing-gwhip-assert-value 
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule forcing-gwhip[31]-candidate
   (declare (salience ?*forcing-gwhip[31]-candidate-salience*))
   (bivalue ?cont ?zzz1 ?zzz2 ?ll)
   (technique ?cont forcing-gwhip[31])
   (chain
      (type ?type1&:(or (eq ?type1 partial-whip) (eq ?type1 partial-gwhip)))
      (context ?cont)
      (length ?p1&:(< ?p1 30))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type ?type2&:(or (eq ?type2 partial-whip) (eq ?type2 partial-gwhip))&:(or (eq ?type1 partial-gwhip) (eq ?type2 partial-gwhip)))
      (context ?cont)
      (length ?p2&:(<= ?p1 ?p2)&:(= (+ ?p1 ?p2) 30))
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
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L31* ?*print-forcing-gwhip* ?*print-forcing-gwhip-31*) then
      (print-forcing-gwhip-elim-candidate 
         ?type1 ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?type2 ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



