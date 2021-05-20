
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              NAKED SINGLES
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





;;; delete the generic rules for singles:

(defrule activate-single =>)
(defrule single =>)



;;; naked single is always active in every context


(defrule activate-naked-single
	(declare (salience ?*naked-single-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
=>
	(assert (technique ?cont naked-single))
	(bind ?*technique* NS)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ASSERT VALUE WHEN SINGLE CANDIDATE 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule naked-single
	"if there is a cell whose candidates have been confined to a unique value, then assert the c-value"
	(declare (salience ?*naked-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont naked-single)
	?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col) (block ?blk) (square ?sq))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col) (number ?nbx&~?nb)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
	(if (or ?*print-actions* ?*print-L1* ?*print-naked-single*) then
		(printout t "naked-single" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)

