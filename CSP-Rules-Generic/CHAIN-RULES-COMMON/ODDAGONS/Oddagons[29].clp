
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              ODDAGON[29]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - August 2020             ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-oddagon[29]
   (declare (salience ?*activate-oddagon[29]-salience*))
   (logical (play) (context (name ?cont)))
   (not (deactivate ?cont oddagon))
=>
   (if ?*print-levels* then (printout t Entering_level_O29))
   (assert (technique ?cont partial-oddagon[28]))
   (assert (technique ?cont oddagon[29]))
   (bind ?*technique* O[29])
)



(defrule track-oddagon[29]
   (declare (salience ?*activate-oddagon[29]-salience*))
   ?level <- (technique ?cont oddagon[29])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; partial-oddagon extension rule

(defrule partial-oddagon[28]
   (declare (salience ?*partial-oddagon[28]-salience*))
   (logical
      (csp-chain
         (type partial-oddagon)
         (context ?cont)
         (length 26)
         (target ?zzz)
         (first-cand ?cand1)
         (rlcs $?cands)
         (last-rlc ?last-rlc)
         (csp-vars $?csp-vars)
      )
      
      (technique ?cont partial-oddagon[28])
      ;;; First additional csp
      (csp-linked ?cont ?last-rlc ?new-rlc1&:(< ?cand1 ?new-rlc1) ?new-csp1&:(not (member$ ?new-csp1 $?csp-vars)))
      (forall (csp-linked ?cont ?last-rlc ?xxx&~?new-rlc1 ?new-csp1) (exists-link ?cont ?xxx ?zzz))
      
      ;;; Second additional csp
      (csp-linked ?cont ?new-rlc1 ?new-rlc2&:(< ?cand1 ?new-rlc2) ?new-csp2&~?new-csp1&:(not (member$ ?new-csp2 $?csp-vars)))
      (forall (csp-linked ?cont ?new-rlc1 ?xxx&~?new-rlc2 ?new-csp2) (exists-link ?cont ?xxx ?zzz))
   )
      
   ;;; do not assert different partial oddagons with the same sequences of rlc's
   (not
      (csp-chain
         (type partial-oddagon)
         (context ?cont)
         (length 28)
         (target ?zzz)
         (first-cand ?cand1)
         (rlcs $?cands ?new-rlc1 ?new-rlc2)
      )
   )
=>
   (assert
      (csp-chain
         (type partial-oddagon)
         (context ?cont)
         (length 28)
         (target ?zzz)
         (first-cand ?cand1)
         (rlcs $?cands ?new-rlc1 ?new-rlc2)
         (csp-vars $?csp-vars ?new-csp1 ?new-csp2)
         (last-rlc ?new-rlc2)
      )
   )
)



;;; oddagon rule

(defrule oddagon[29]
   (declare (salience ?*oddagon[29]-salience*))
   (csp-chain
      (type partial-oddagon)
      (context ?cont)
      (length 28)
      (target ?zzz)
      (first-cand ?cand1)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )

   ;;; ?Last csp
   (csp-linked ?cont ?last-rlc ?cand1 ?new-csp&:(not (member$ ?new-csp $?csp-vars)))
   (forall (csp-linked ?cont ?last-rlc ?xxx&~?cand1 ?new-csp) (exists-link ?cont ?xxx ?zzz))

   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L29* ?*print-oddagon* ?*print-oddagon-29*) then
      (print-oddagon 29 ?zzz (create$ $?rlcs ?cand1) (create$ $?csp-vars ?new-csp))
   )
)


