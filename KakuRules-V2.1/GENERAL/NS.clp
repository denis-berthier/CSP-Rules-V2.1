
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
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





;;; delete the generic rule:
(defrule single =>)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ASSERT VALUE WHEN MAGIC CANDIDATE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; These two rules are the first ones applied
;;; They suppose that only legitimate combinations are introduced in the candidates for hrc and vrc variables

(defrule magic-naked-single-horiz
	"if there is a magic horizontal controller variable, then assert its c-value"
	(declare (salience ?*horizontal-magic-naked-single-salience*))
    (horizontal-magic-sector ?comb ?row ?col)
	?mod <- (candidate (context ?cont) (status cand) (type horiz-comb) (number ?comb) (row ?row) (column ?col))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-naked-single*) then
		(printout t "horizontal-magic-sector: h" (row-name ?row) (column-name ?col) ?*equal-sign* ?comb crlf)
	)
)


(defrule magic-naked-single-verti
	"if there is a magic vertical controller variable, then assert its c-value"
	(declare (salience ?*vertical-magic-naked-single-salience*))
    (vertical-magic-sector ?comb ?row ?col)
	?mod <- (candidate (context ?cont) (status cand) (type verti-comb) (number ?comb) (row ?row) (column ?col))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-naked-single*) then
		(printout t "vertical-magic-sector: v" (row-name ?row) (column-name ?col) ?*equal-sign* ?comb crlf)
	)
)


(defrule end-init-givens
	(declare (salience ?*end-init-givens-salience*))
=>
    (printout t crlf "RESOLUTION" crlf)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ASSERT VALUE WHEN SINGLE CANDIDATE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-naked-single
	(declare (salience ?*activate-naked-single-salience*))
	(logical (technique ?cont BRT))
=>
	(assert (technique ?cont naked-single))
	(bind ?*technique* NS)
)


(defrule naked-single-white
	"if there is a white cell whose candidates have been confined to a unique value, then assert the c-value"
	(declare (salience ?*rc-naked-single-salience*))
	(technique ?cont naked-single)
	?mod <- (candidate (context ?cont) (status cand) (type white) (label ?xxx) (number ?nb) (row ?row) (column ?col))
	(not (candidate (context ?cont) (row ?row) (column ?col) (number ?nbx&~?nb)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-naked-single*) then
		(printout t "naked-single" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
    )
)


(defrule naked-single-black-horiz
	"if there is a horizontal controller variable whose candidates have been confined to a unique value, then assert the c-value"
	(declare (salience ?*sum-naked-single-salience*))
	(technique ?cont naked-single)
	?mod <- (candidate (context ?cont) (status cand) (type horiz-comb) (label ?xxx) (number ?nb) (row ?row) (column ?col))
	(not (candidate (context ?cont) (type horiz-comb) (row ?row) (column ?col) (number ?nbx&~?nb)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-naked-single*) then
		(printout t "naked-single" ?*implication-sign* "h" (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


(defrule naked-single-black-verti
	"if there is a vertical controller variable whose candidates have been confined to a unique value, then assert the c-value"
	(declare (salience ?*sum-naked-single-salience*))
	(technique ?cont naked-single)
	?mod <- (candidate (context ?cont) (status cand) (type verti-comb) (label ?xxx) (number ?nb) (row ?row) (column ?col))
	(not (candidate (context ?cont) (type verti-comb) (row ?row) (column ?col) (number ?nbx&~?nb)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-naked-single*) then
		(printout t "naked-single" ?*implication-sign* "v" (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


