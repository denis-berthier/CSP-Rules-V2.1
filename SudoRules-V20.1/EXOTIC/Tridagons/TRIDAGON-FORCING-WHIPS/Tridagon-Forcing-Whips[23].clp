
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRIDAGON-FORCING-WHIP[23]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - April 2022             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-tridagon-forcing-whip[23]
   (declare (salience ?*activate-tridagon-forcing-whip[23]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont tridagon-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_TrFW23))
   (assert (technique ?cont tridagon-forcing-whip[23]))
   (assert (technique ?cont partial-whip[11]))
   (bind ?*technique* TrFW[23])
)



(defrule track-tridagon-forcing-whip[23]
   (declare (salience ?*activate-tridagon-forcing-whip[23]-salience*))
   ?level <- (technique ?cont tridagon-forcing-whip[23])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule tridagon-forcing-whip[23]-candidate1
   (declare (salience ?*tridagon-forcing-whip[23]-salience*))
   (technique ?cont tridagon-forcing-whip[23])
   (OR-link ?cont 12 tridagon-link ?zzz1 ?zzz2)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(= ?p2 11))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?zzz1 ?cand)
   (exists-link ?cont ?last-rlc2 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L23* ?*print-tridagon-forcing-whip* ?*print-tridagon-forcing-whip-23*) then
      (print-tridagon-forcing-whip-elim-candidate 
         0 ?zzz1 (create$) (create$) (create$)
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule tridagon-forcing-whip[23]-candidate
   (declare (salience ?*tridagon-forcing-whip[23]-salience*))
   (technique ?cont tridagon-forcing-whip[23])
   (OR-link ?cont 12 tridagon-link ?zzz1 ?zzz2)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p1&:(< ?p1 11))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(<= ?p1 ?p2)&:(= (+ ?p1 ?p2) 11))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?last-rlc2)
   )
   ?ret <- (candidate (context ?cont) (status cand) (label ?cand))
   (exists-link ?cont ?last-rlc1 ?cand)
   (exists-link ?cont ?last-rlc2 ?cand)
=>
   (retract ?ret)
   (if (or ?*print-actions* ?*print-L23* ?*print-tridagon-forcing-whip* ?*print-tridagon-forcing-whip-23*) then
      (print-tridagon-forcing-whip-elim-candidate 
         ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule tridagon-forcing-whip[23]-value
   (declare (salience ?*tridagon-forcing-whip[23]-salience*))
   (technique ?cont tridagon-forcing-whip[23])
   (OR-link ?cont 12 tridagon-link ?zzz1 ?zzz2)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p1&:(< ?p1 11))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(<= ?p1 ?p2)&:(= (+ ?p1 ?p2) 11))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (or ?*print-actions* ?*print-L23* ?*print-tridagon-forcing-whip* ?*print-tridagon-forcing-whip-23*) then
      (print-tridagon-forcing-whip-assert-value 
         ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



