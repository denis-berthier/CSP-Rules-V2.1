
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              ASCENDING CHAINS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(deftemplate maximal-ascending-chain
    (slot length) ; number of cells - 1
    (multislot cells)
)


(defrule first-step-ascending-chain
	(declare (salience ?*ascending-chain-salience*))
	(technique ?cont&0 BRT)
	(less-than ?cell1 ?cell2 ?)
	(not (less-than ? ?cell1 ?))
=>
	(assert (ascending-chain 1 ?cell1 ?cell2))
)


(defrule ascending-chain-detection-rule
	(declare (salience ?*ascending-chain-salience*))
	(technique ?cont BRT)
    (ascending-chain ?p $?cells ?cellp)
	(less-than ?cellp ?new-cell ?)
=>
	(assert (ascending-chain (+ ?p 1) (create$ $?cells ?cellp ?new-cell)))
)




(defrule maximal-ascending-chain-detection-rule
	(declare (salience ?*max-ascending-chain-salience*))
	(technique ?cont BRT)
    (ascending-chain ?p $?cells ?cellp)
	(not (less-than ?cellp ? ?))
=>
    (assert (apply-rule-as-a-block ?cont))
    (bind ?all-cells (create$ $?cells ?cellp))
    (assert (maximal-ascending-chain (length ?p) (cells ?all-cells)))
    (if (or ?*print-actions* ?*print-ascending-chain*) then
        (bind ?*blocked-rule-description* (describe-ascending-chain ?all-cells))
    )
)


(deffunction is-valid-ascending-chain-elimation (?lab ?cells ?k)
    ;;; k is the length of the chain, there are k+1 cells (0 to k)
    (bind ?is-valid-elim FALSE)
    (bind ?rc (label-cell ?lab))
    (bind ?nb (label-number ?lab))
    (bind ?i 1)
    (while (<= ?i (+ ?k 1))
        (bind ?ith-cell (nth$ ?i ?cells))
        (if (and
                (eq ?rc ?ith-cell)
                (or (< ?nb ?i) (> ?nb (+ (- ?*grid-size* ?k) (- ?i 1))))
            )
            then (bind ?is-valid-elim TRUE)
        )
        (bind ?i (+ ?i 1))
    )
    ?is-valid-elim
)



(defrule maximal-ascending-chain-elimination-rule
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (apply-rule-as-a-block ?cont)
    (maximal-ascending-chain (length ?k) (cells $?cells))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab&:(is-valid-ascending-chain-elimation ?lab $?cells ?k)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-ascending-chain*) then
        (bind ?elim (describe-deleted-candidate ?lab))
        (add-elimination-to-blocked-rule ?elim)
    )
)




