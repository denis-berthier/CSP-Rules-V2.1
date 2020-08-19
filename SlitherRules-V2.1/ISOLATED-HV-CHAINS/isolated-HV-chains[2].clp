
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ISOLATED-HV-CHAINS[2]
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





(defrule activate-isolated-HV-chain[2]
   (declare (salience ?*activate-xtd-loop[3]-salience*))
   (logical (context (name ?cont)) (technique ?cont BRT))
   (not (deactivate ?cont isolated-HV-chain))
=>
   (assert (technique ?cont isolated-HV-chain[2]))
   (bind ?*technique* isolated-HV-chain[2])
)



;;; smallest isolated-HV-chain

(defrule isolated-HV-chain-extension[2]
   (declare (salience ?*partial-loop[2]-salience*))
   (logical
       (technique ?cont isolated-HV-chain[2])
       ?candx <- (candidate (context ?cont) (status cand) (value 1)
                   (type ?typex&H|V) (row ?rowx) (column ?colx) (label ?labx)
          )
       ?candy <- (candidate (context ?cont) (status cand) (value 1)
                   (type ?typey&H|V) (row ?rowy) (column ?coly) (label ?laby)
          )
       (test (touching-lines ?rowx ?colx ?typex ?rowy ?coly ?typey))
       (unique-HV-connexion ?cont ?rowx ?colx ?typex ?rowy ?coly ?typey)
   ) ; end logical
   
   ?anti-candx <- (candidate (context ?cont) (status cand) (value 0) (type ?typex) (row ?rowx) (column ?colx))
   ?anti-candy <- (candidate (context ?cont) (status cand) (value 0) (type ?typey) (row ?rowy) (column ?coly))

=>
   (assert
      (isolated-HV-chain
         (context ?cont)
         (length 2)
         (nb-cont (+ (nb-contacts ?typex ?rowx ?colx) (nb-contacts ?typey ?rowy ?coly)))
         (labels (create$ ?labx ?laby))
         (rows (create$ ?rowx ?rowy))
         (columns (create$ ?colx ?coly))
         (types (create$ ?typex ?typey))
         (cands (create$ (fact-index ?candx) (fact-index ?candy)))
         (anti-cands (create$ (fact-index ?anti-candx) (fact-index ?anti-candy)))
      )
   )
)



