
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRIDAGON-FORCING-WHIP[13]
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





(defrule activate-tridagon-forcing-whip[13]
   (declare (salience ?*activate-tridagon-forcing-whip[13]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont tridagon-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_TrFW13))
   (assert (technique ?cont tridagon-forcing-whip[13]))
   (assert (technique ?cont partial-whip[1]))
   (bind ?*technique* TrFW[13])
)



(defrule track-tridagon-forcing-whip[13]
   (declare (salience ?*activate-tridagon-forcing-whip[13]-salience*))
   ?level <- (technique ?cont tridagon-forcing-whip[13])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule tridagon-forcing-whip[13]-candidate1
   (declare (salience ?*tridagon-forcing-whip[13]-salience*))
   (technique ?cont tridagon-forcing-whip[13])
   (OR-link ?cont 12 tridagon-link ?zzz1 ?zzz2)
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(= ?p2 1))
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
   (if (or ?*print-actions* ?*print-L13* ?*print-tridagon-forcing-whip* ?*print-tridagon-forcing-whip-13*) then
      (print-tridagon-forcing-whip-elim-candidate 
         0 ?zzz1 (create$) (create$) (create$)
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



