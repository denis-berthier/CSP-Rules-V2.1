
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              HIDDEN SINGLE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-hidden-single
	(declare (salience ?*hidden-single-salience*))
	(logical (technique ?cont BRT))
=>
	(assert (technique ?cont hidden-single))
	(bind ?*technique* HS)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ASSERT VALUE WHEN SINGLE CANDIDATE ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule hidden-single-in-a-row
	"if there is a number whose instance in a row has been confined to a unique cell, then assert the c-value"
	(declare (salience ?*hidden-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont hidden-single)
	?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?colx&~?col)))
=>
	(modify ?mod (status c-value))
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
	(if (or ?*print-actions* ?*print-L1* ?*print-hidden-single*) then
		(printout t "hidden-single-in-a-row" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


(defrule hidden-single-in-a-column
	"if there is a number whose instance in a column has been confined to a unique cell, then assert the c-value"
	(declare (salience ?*hidden-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont hidden-single)
	?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col) (row ?rowx&~?row)))
=>
	(modify ?mod (status c-value))
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
	(if (or ?*print-actions* ?*print-L1* ?*print-hidden-single*) then
		(printout t "hidden-single-in-a-column" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


(defrule hidden-single-in-a-diagonal
    "if there is a number whose instance in a diagonal has been confined to a unique cell, then assert the c-value"
    (declare (salience ?*hidden-single-salience*))
    (logical (context (name ?cont)))
    (Pandiagonal)
    (technique ?cont hidden-single)
    ?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col) (diagonal ?diag) (anti-diagonal ?anti-diag))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag) (anti-diagonal ?xxx&~?anti-diag)))
=>
    (modify ?mod (status c-value))
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (or ?*print-actions* ?*print-L1* ?*print-hidden-single*) then
        (printout t "hidden-single-in-a-diagonal" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
    )
)


(defrule hidden-single-in-an-anti-diagonal
    "if there is a number whose instance in a diagonal has been confined to a unique cell, then assert the c-value"
    (declare (salience ?*hidden-single-salience*))
    (logical (context (name ?cont)))
    (Pandiagonal)
    (technique ?cont hidden-single)
    ?mod <- (candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col) (diagonal ?diag) (anti-diagonal ?anti-diag))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag) (diagonal ?xxx&~?diag)))
=>
    (modify ?mod (status c-value))
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (or ?*print-actions* ?*print-L1* ?*print-hidden-single*) then
        (printout t "hidden-single-in-an-anti-diagonal" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
    )
)


