
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              W1 COUPLING RULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;             Initialisation
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; these rules are applied before any singles, except the magic ones
;;; this should be done in the init functions, but I'm too lazy

(defrule propagate-constraints-from-controller-to-horizontal-sector-initialisation
	"if a candidate-Number is absent from all the combinations for a horizontal sector,
    then it is not compatible and it must be deleted from all the cells in this sector"
	(declare (salience ?*horiz-ctr-to-sector-constraints-propagation-initialisation-salience*))
	(technique ?cont BRT)
 	?cand <- (candidate (context ?cont) (type white) (status cand) (number ?nb) (row ?row) (column ?col) (column-of-horizontal-controller ?ctr-col))
	(not (candidate (context ?cont) (type horiz-comb) (number ?comb&:(digit-in-number ?nb ?comb)) (row ?row) (column ?ctr-col)))
    (not (technique ?cont naked-single))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "ctr-to-horiz-sector " ?*implication-sign*)
        (print-row ?row) 
        (print-column ?col) 
        (printout t ?*non-equal-sign* ?nb  crlf)
    )
)


(defrule propagate-constraints-from-controller-to-vertical-sector-initialisation
	"if a candidate-Number is absent from all the combinations for a vertical sector,
    then it is not compatible and it must be deleted from all the cells in this sector"
	(declare (salience ?*verti-ctr-to-sector-constraints-propagation-initialisation-salience*))
	(technique ?cont BRT)
	?cand <- (candidate (context ?cont) (type white) (status cand) (number ?nb) (row ?row) (column ?col) (row-of-vertical-controller ?ctr-row))
	(not (candidate (context ?cont) (type verti-comb) (number ?comb&:(digit-in-number ?nb ?comb)) (row ?ctr-row) (column ?col)))
    (not (technique ?cont naked-single))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "ctr-to-verti-sector " ?*implication-sign*)
        (print-row ?row) 
        (print-column ?col) 
        (printout t ?*non-equal-sign* ?nb  crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;             Resolution
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; From controller to sector
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; if a candidate is absent from all the combinations for a controller variable, 
;;; it would be deleted from all the cells in the sector by whips[1]
;;; the following rules do the same

(defrule propagate-constraints-from-controller-to-horizontal-sector
	"if a candidate-Number is absent from all the combinations for a horizontal sector,
    then it must be deleted from all the cells in the horizontal sector"
	(declare (salience ?*horiz-ctr-to-sector-constraints-propagation-salience*))
	(technique ?cont BRT)
 	?cand <- (candidate (context ?cont) (type white) (status cand) (number ?nb) (row ?row) (column ?col) (column-of-horizontal-controller ?ctr-col))
	(not (candidate (context ?cont) (type horiz-comb) (number ?comb&:(digit-in-number ?nb ?comb)) (row ?row) (column ?ctr-col)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "w[1]-ctr-to-horiz-sector " ?*implication-sign*)
        (print-row ?row) 
        (print-column ?col) 
        (printout t ?*non-equal-sign* ?nb  crlf)
    )
)


(defrule propagate-constraints-from-controller-to-vertical-sector
	"if a candidate-Number is absent from all the combinations for a vertical sector,
    then it must be deleted from all the cells in the vertical sector"
	(declare (salience ?*verti-ctr-to-sector-constraints-propagation-salience*))
	(technique ?cont BRT)
	?cand <- (candidate (context ?cont) (type white) (status cand) (number ?nb) (row ?row) (column ?col) (row-of-vertical-controller ?ctr-row))
	(not (candidate (context ?cont) (type verti-comb) (number ?comb&:(digit-in-number ?nb ?comb)) (row ?ctr-row) (column ?col)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "w[1]-ctr-to-verti-sector " ?*implication-sign*)
        (print-row ?row) 
        (print-column ?col) 
        (printout t ?*non-equal-sign* ?nb  crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; From cell to controller 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule propagate-constraints-from-cell-to-horizontal-controller
	"if no digit of a combination C is present in a cell,
    then delete C from the horizontal controller "
	(declare (salience ?*cell-to-horiz-ctr-constraints-propagation-salience*))
	(technique ?cont BRT)
	?cand <- (candidate (context ?cont) (type horiz-comb) (status cand) (number ?comb) (row ?row) (column ?ctr-col))
	(candidate (context ?cont) (type white) (number ?nb) (row ?row) (column ?col) (column-of-horizontal-controller ?ctr-col))
	(not (candidate (context ?cont) (number ?nbx&:(digit-in-number ?nbx ?comb)) (row ?row) (column ?col)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "w[1]-cell-to-horiz-ctr " ?*implication-sign* "h")
        (print-row ?row) 
        (print-column ?ctr-col) 
        (printout t ?*non-equal-sign* ?comb  crlf)
    )
)



(defrule propagate-constraints-from-cell-to-vertical-controller
	"if no digit of a combination C is present in a cell,
    then delete C from the vertical controller "
	(declare (salience ?*cell-to-verti-ctr-constraints-propagation-salience*))
	(technique ?cont BRT)
	?cand <- (candidate (context ?cont) (type verti-comb) (status cand) (number ?comb) (row ?ctr-row) (column ?col))
	(candidate (context ?cont) (type white) (number ?nb) (row ?row) (column ?col) (row-of-vertical-controller ?ctr-row))
	(not (candidate (context ?cont) (number ?nbx&:(digit-in-number ?nbx ?comb)) (row ?row) (column ?col)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "w[1]-cell-to-verti-ctr " ?*implication-sign* "v")
        (print-row ?ctr-row) 
        (print-column ?col) 
        (printout t ?*non-equal-sign* ?comb  crlf)
    )
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; From sector to controller 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule propagate-constraints-from-horizontal-sector-to-controller
	"if a candidate-Number is absent from all the cells of a horizontal sector,
    then any combination containing it must be deleted from the controller cell"
	(declare (salience ?*horiz-sector-to-ctr-constraints-propagation-salience*))
	(technique ?cont BRT)
    (number ?nb)
	?cand <- (candidate (context ?cont) (type horiz-comb) (status cand) (number ?comb&:(digit-in-number ?nb ?comb)) (row ?row) (column ?ctr-col))
	(not (candidate (context ?cont) (type white) (number ?nb) (row ?row) (column-of-horizontal-controller ?ctr-col)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "horiz-sector-to-ctr " ?*implication-sign* "h")
        (print-row ?row) 
        (print-column ?ctr-col) 
        (printout t ?*non-equal-sign* ?comb  crlf)
    )
)



(defrule propagate-constraints-from-vertical-sector-to-controller
	"if a candidate-Number is absent from all the cells of a vertical sector,
    then any combination containing it must be deleted from the controller cell"
	(declare (salience ?*verti-sector-to-ctr-constraints-propagation-salience*))
	(technique ?cont BRT)
    (number ?nb)
	?cand <- (candidate (context ?cont) (type verti-comb) (status cand) (number ?comb&:(digit-in-number ?nb ?comb)) (row ?ctr-row) (column ?col))
	(not (candidate (context ?cont) (type white) (number ?nb) (row-of-vertical-controller ?ctr-row) (column ?col)))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-controller-details* then 
        (printout t "verti-sector-to-ctr " ?*implication-sign* "v")
        (print-row ?ctr-row) 
        (print-column ?col) 
        (printout t ?*non-equal-sign* ?comb  crlf)
    )
)





