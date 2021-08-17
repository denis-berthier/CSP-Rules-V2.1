
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BIVALUE-CHAIN[16]
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





(defrule activate-bivalue-chain[16]
   (declare (salience ?*activate-bivalue-chain[16]-salience*))
   (logical
      (play)
      (context (name ?cont))
      (not (deactivate ?cont bivalue-chain))
   )
=>
   (if ?*print-levels* then (printout t Entering_level_BC16))
   (assert (technique ?cont bivalue-chain[16]))
   (bind ?*technique* BC[16])
)



(defrule track-bivalue-chain[16]
   (declare (salience ?*activate-bivalue-chain[16]-salience*))
   ?level <- (technique ?cont bivalue-chain[16])
=>
   (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; bivalue-chain elimination rule

(defrule bivalue-chain[16]
   (declare (salience ?*bivalue-chain[16]-salience*))
   (chain
      (type bivalue-chain)
      (context ?cont)
      (length 16)
      (llcs $?llcs)
      (rlcs $?rlcs)
      (csp-vars $?csp-vars)
      (last-rlc ?last-rlc)
   )
   
   (exists-link ?cont ?zzz ?last-rlc)
   (exists-link ?cont ?zzz ?uuu1&:(eq ?uuu1 (first $?llcs)))
   ?cand <- (candidate (context ?cont) (status cand) (label ?zzz))
   ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
   (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
   (retract ?cand)
   (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
   (if (or ?*print-actions* ?*print-L16* ?*print-bivalue-chain* ?*print-bivalue-chain-16*) then
      (print-bivalue-chain 16 ?zzz $?llcs $?rlcs $?csp-vars)
   )
)



;;; extension of an existing bivalue-chain with a pair of candidates

(defrule partial-bivalue-chain[16]
   (declare (salience ?*partial-bivalue-chain[16]-salience*))
   (logical
      (chain
         (type bivalue-chain)
         (context ?cont)
         (length 15)
         (llcs $?llcs)
         (rlcs $?rlcs)
         (csp-vars $?csp-vars)
         (last-rlc ?last-rlc)
      )
      
      (technique ?cont bivalue-chain[16])
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
         (length 16)
         (llcs $?llcs ?new-llc)
         (rlcs $?rlcs ?new-rlc)
         (csp-vars $?csp-vars ?new-csp)
         (last-rlc ?new-rlc)
      )
   )
)



