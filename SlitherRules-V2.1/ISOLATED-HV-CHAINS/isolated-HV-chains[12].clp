
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ISOLATED-HV-CHAINS[12]
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





(defrule activate-isolated-HV-chain[12]
   (declare (salience ?*activate-xtd-loop[13]-salience*))
   (logical (context (name ?cont)) (technique ?cont BRT))
   (not (deactivate ?cont isolated-HV-chain))
=>
   (assert (technique ?cont isolated-HV-chain[12]))
   (bind ?*technique* isolated-HV-chain[12])
)



;;; extension of an existing isolated-HV-chain

(defrule isolated-HV-chain-extension[12]
   (declare (salience ?*partial-loop[12]-salience*))
   (logical
      (isolated-HV-chain
         (context ?cont)
         (length 11)
         (nb-cont ?nb-cont)
         (labels $?labs)
         (rows $?rows ?rowp ?rowq)
         (columns $?cols ?colp ?colq)
         (types $?types ?typep ?typeq)
         (cands $?cands)
         (anti-cands $?anti-cands)
      )

      (technique ?cont isolated-HV-chain[12])
      ;;; extension
      (unique-HV-connexion ?cont ?rowq ?colq ?typeq ?rowy ?coly ?typey)
      ?cand <- (candidate (context ?cont) (status cand) (value 1)
                  (type ?typey&H|V) (row ?rowy) (column ?coly)
                  (label ?laby&:(not (member$ ?laby $?labs)))
         )
      (test (combinable-lines ?rowp ?colp ?typep ?rowq ?colq ?typeq ?rowy ?coly ?typey))
   ) ; end logical
   ?anti-cand <- (candidate (context ?cont) (status cand) (value 0) (type ?typey) (row ?rowy) (column ?coly))

=>
   (assert
      (isolated-HV-chain
         (context ?cont)
         (length 12)
         (nb-cont (+ ?nb-cont (nb-contacts ?typey ?rowy ?coly)))
         (labels (create$ $?labs ?laby))
         (rows (create$ $?rows ?rowp ?rowq ?rowy))
         (columns (create$ $?cols ?colp ?colq ?coly))
         (types (create$ $?types ?typep ?typeq ?typey))
         (cands (create$ $?cands (fact-index ?cand)))
         (anti-cands (create$ $?anti-cands (fact-index ?anti-cand)))
      )
   )
)



