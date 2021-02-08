
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BLOCKED-BIVALUE-CHAIN[8]
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - February 2021            ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-bivalue-chain[8]
   (declare (salience ?*activate-bivalue-chain[8]-salience*))
   (logical (play) (context (name ?cont)))
   (not (deactivate ?cont bivalue-chain))
=>
   (if ?*print-levels* then (printout t Entering_level_BC8))
   (assert (technique ?cont bivalue-chain[8]))
   (bind ?*technique* BC[8])
)



(defrule track-bivalue-chain[8]
   (declare (salience ?*activate-bivalue-chain[8]-salience*))
   ?level <- (technique ?cont bivalue-chain[8])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; extension of an existing bivalue-chain with a pair of candidates

(defrule partial-bivalue-chain[8]
   (declare (salience ?*partial-bivalue-chain[8]-salience*))
   (logical
      (chain
         (type bivalue-chain)
         (context ?cont)
         (length 7)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      (technique ?cont bivalue-chain[8])
      ;;; ?new-llc
      (exists-link ?cont ?last-rlc ?new-llc&:(not (member$ ?new-llc $?llcs))&:(not (member$ ?new-llc $?rlcs)))
      ;;; ?new-rlc and ?new-csp
      ;;; the following condition implies that new-csp is not a csp variable for zzz or any of the previous rlcs
      (bivalue
         ?cont
         ?new-llc
         ?new-rlc&:(not (member$ ?new-rlc $?llcs))&:(not (member$ ?new-rlc $?rlcs))
         ?new-csp&:(not (member$ ?new-csp $?csp-vars))
      )
   )
=>
   (assert
      (chain
         (type bivalue-chain)
         (context ?cont)
         (length 8)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



;;; bivalue-chain elimination rules

(defrule apply1-bivalue-chain[8]
   (declare (salience ?*bivalue-chain[8]-salience*))
   (chain
      (type bivalue-chain)
      (context ?cont)
      (length 8)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   ;;; identify a first target
   (exists-link ?cont ?zzz ?last-rlc)
   (exists-link ?cont ?zzz ?uuu1&:(eq ?uuu1 (first $?llcs)))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
   ;;; if the focus list is not empty, the following condition restricts the search to the bivalue-chains that have a target in it
   (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L8* ?*print-bivalue-chain* ?*print-bivalue-chain-8*) then
      (print-bivalue-chain-without-crlf 8 ?zzz $?llcs $?rlcs $?csp-vars)
   )
   (assert (apply-rule-as-a-pseudo-block ?cont))
   (assert (pseudo-blocked ?cont bivalue-chain[8] 8 ?zzz $?llcs $?rlcs $?csp-vars))
)



(defrule apply2-bivalue-chain[8]
   (declare (salience ?*apply-a-blocked-rule-salience*))
   (chain
      (type bivalue-chain)
      (context ?cont)
      (length 8)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   (apply-rule-as-a-pseudo-block ?cont)
   (pseudo-blocked ?cont bivalue-chain[8] 8 ?zzz $?llcs $?rlcs $?csp-vars)
   ;;; identify one more target
   (exists-link ?cont ?zzz2&~?zzz ?last-rlc)
   (exists-link ?cont ?zzz2 ?uuu1&:(eq ?uuu1 (first $?llcs)))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L8* ?*print-bivalue-chain* ?*print-bivalue-chain-8*) then
      (printout t ", ")
      (print-deleted-candidate ?zzz2)
   )
)



