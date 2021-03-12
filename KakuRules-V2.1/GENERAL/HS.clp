
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              HIDDEN SINGLES
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





(defrule activate-hidden-single
	(declare (salience ?*activate-hidden-single-salience*))
	(logical (technique ?cont BRT))
=>
	(assert (technique ?cont hidden-single))
	(bind ?*technique* HS)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; ASSERT VALUE WHEN HIDDEN SINGLE CANDIDATE ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule hidden-single-in-magic-horizontal-sector
	"if there is a number whose instance in a magic sector in a row has been confined to a unique white cell, 
     and this number belongs to the unique combination of this sector,
     then assert the c-value"
	(declare (salience ?*magic-hidden-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont hidden-single)

    (horizontal-magic-sector ?comb ?row ?ctr-col)
    
	?mod <- (candidate (context ?cont) (status cand) (type white) (number ?nb&:(digit-in-number ?nb ?comb)) (row ?row) (column ?col) (column-of-horizontal-controller ?ctr-col))
	(not (candidate (context ?cont) (type white) (number ?nb) (row ?row) (column ?colx&~?col) (column-of-horizontal-controller ?ctr-col)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-hidden-single*) then
		(printout t "hidden-single-in-magic-horiz-sector" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
    )
)


(defrule hidden-single-in-magic-vertical-sector
	"if there is a number whose instance in a magic sector in a column has been confined to a unique white cell, 
     and this number belongs to the unique combination of this sector,
     then assert the c-value"
	(declare (salience ?*magic-hidden-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont hidden-single)

    (vertical-magic-sector ?comb ?ctr-row ?col)
    
	?mod <- (candidate (context ?cont) (status cand) (type white) (number ?nb&:(digit-in-number ?nb ?comb)) (row ?row) (column ?col) (row-of-vertical-controller ?ctr-row))
	(not (candidate (context ?cont) (type white) (number ?nb) (column ?col) (row ?rowx&~?row) (row-of-vertical-controller ?ctr-row)))
=>
    (modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-hidden-single*) then
		(printout t "hidden-single-in-magic-verti-sector" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)





(defrule hidden-single-for-magic-digit-in-horizontal-sector
	"if there is a pseudo magic number in a horizontal sector, whose instance in this sector has been confined to a unique white cell, 
     then assert the c-value"
	(declare (salience ?*pseudo-magic-hidden-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont hidden-single)

    (magic-digit-in-horizontal-sector ?nb ?row ?ctr-col)
    
	?mod <- (candidate (context ?cont) (status cand) (type white) (number ?nb) (row ?row) (column ?col) (column-of-horizontal-controller ?ctr-col))
	(not (candidate (context ?cont) (type white) (number ?nb) (row ?row) (column ?colx&~?col) (column-of-horizontal-controller ?ctr-col)))
=>
	(modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-hidden-single*) then
		(printout t "hidden-single-for-magic-digit-in-horiz-sector" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)


(defrule hidden-single-for-magic-digit-in-vertical-sector
	"if there is a pseudo magic number in a vertical sector, whose instance in this sector has been confined to a unique white cell, 
     then assert the c-value"
	(declare (salience ?*pseudo-magic-hidden-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont hidden-single)

    (magic-digit-in-vertical-sector ?nb ?ctr-row ?col)
    
	?mod <- (candidate (context ?cont) (status cand) (type white) (number ?nb) (row ?row) (column ?col) (row-of-vertical-controller ?ctr-row))
	(not (candidate (context ?cont) (type white) (number ?nb) (column ?col) (row ?rowx&~?row) (row-of-vertical-controller ?ctr-row)))
=>
    (modify ?mod (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-hidden-single*) then
		(printout t "hidden-single-for-magic-digit-in-verti-sector" ?*implication-sign* (row-name ?row) (column-name ?col) ?*equal-sign* (numeral-name ?nb) crlf)
	)
)



