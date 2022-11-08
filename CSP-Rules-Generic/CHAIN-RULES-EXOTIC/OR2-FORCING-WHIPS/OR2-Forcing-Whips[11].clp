
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              OR2-FORCING-WHIP[11]
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





(defrule activate-OR2-forcing-whip[11]
   (declare (salience ?*activate-OR2-forcing-whip[11]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont OR2-forcing-whip))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_OR2FW11))
   (assert (technique ?cont OR2-forcing-whip[11]))
   (assert (technique ?cont partial-whip[10]))
   (bind ?*technique* OR2FW[11])
)



(defrule track-OR2-forcing-whip[11]
   (declare (salience ?*activate-OR2-forcing-whip[11]-salience*))
   ?level <- (technique ?cont OR2-forcing-whip[11])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule OR2-forcing-whip[11]-candidate-0p
   (declare (salience ?*OR2-forcing-whip[11]-candidate-salience*))
   (technique ?cont OR2-forcing-whip[11])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(= ?p2 10))
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
   (if (or ?*print-actions* ?*print-L11* ?*print-OR2-forcing-whip* ?*print-OR2-forcing-whip-11*) then
      (print-OR2-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         0 ?zzz1 (create$) (create$) (create$)
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule OR2-forcing-whip[11]-candidate-pq
   (declare (salience ?*OR2-forcing-whip[11]-candidate-salience*))
   (technique ?cont OR2-forcing-whip[11])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p1&:(< ?p1 10))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?last-rlc1)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(= (+ ?p1 ?p2) 10))
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
   (if (or ?*print-actions* ?*print-L11* ?*print-OR2-forcing-whip* ?*print-OR2-forcing-whip-11*) then
      (print-OR2-forcing-whip-elim-candidate 
         ?or-name ?or-compl
         ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



(defrule OR2-forcing-whip[11]-value
   (declare (salience ?*OR2-forcing-whip[11]-value-salience*))
   (technique ?cont OR2-forcing-whip[11])
   (ORk-relation (OR-name ?or-name) (OR-complexity ?or-compl) (context ?cont) (OR-size 2) (OR-candidates ?zzz1 ?zzz2))
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p1&:(< ?p1 10))
      (target ?zzz1)
      (llcs $?llcs1)
      (rlcs $?rlcs1)
      (csp-vars $?csps1)
      (last-rlc ?cand)
   )
   (chain
      (type partial-whip)
      (context ?cont)
      (length ?p2&:(or (< ?p1 ?p2) (and (= ?p1 ?p2) (< ?zzz1 ?zzz2)))&:(= (+ ?p1 ?p2) 10))
      (target ?zzz2)
      (llcs $?llcs2)
      (rlcs $?rlcs2)
      (csp-vars $?csps2)
      (last-rlc ?cand)
   )
   ?mod <- (candidate (context ?cont) (status cand) (label ?cand))
=>
   (modify ?mod (status c-value))
   (if (or ?*print-actions* ?*print-L11* ?*print-OR2-forcing-whip* ?*print-OR2-forcing-whip-11*) then
      (print-OR2-forcing-whip-assert-value 
         ?or-name ?or-compl
         ?p1 ?zzz1 $?llcs1 $?rlcs1 $?csps1
         ?p2 ?zzz2 $?llcs2 $?rlcs2 $?csps2
         ?cand
      )
   )
)



