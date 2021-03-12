
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
;;;                              SINGLES
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





;;; replace the generic rule

(defrule single =>)


(defrule Xn-single
	(declare (salience ?*Xn-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont single)
	?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col))
	(forall (candidate (context ?cont) (status cand) (number ?nb) (row ?rowx) (column ?colx))
        (test (same-rc-cell ?row ?col ?rowx ?colx))
    )
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 2)))
	(if (or ?*print-actions* ?*print-L0* ?*print-single*) then
		(printout t "hidden-single: " (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


(defrule Xrc-single
	(declare (salience ?*Xrc-single-salience*))
	(technique ?cont single)
	?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col) (number ?nbx&~?nb)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 2)))
	(if (or ?*print-actions* ?*print-L0* ?*print-single*) then
		(printout t "naked-single: " (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)



