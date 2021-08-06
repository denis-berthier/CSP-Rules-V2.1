
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              X-WINGS
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





(defrule activate-x-wing
	(declare (salience ?*x-wing-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont pair))
    )
=>
	(assert (technique ?cont x-wing))
	(bind ?*technique* SHP)
)



;;; rows

(defrule L2-x-wing-in-rows
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)

    (magic-digit-in-horizontal-sector ?nb ?row1 ?hsec1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec1) (row-of-vertical-controller ?vsec1) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec1) (row-of-vertical-controller ?vsec2) (row ?row1) (column ?col2&:(< ?col1 ?col2)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec1) (row ?row1) (column ?colx&~?col1&~?col2)))
	
    (magic-digit-in-horizontal-sector ?nb ?row2&:(< ?row1 ?row2) ?hsec2)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec2) (row-of-vertical-controller ?vsec1) (column ?col1) (row ?row2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec2) (row-of-vertical-controller ?vsec2) (column ?col2) (row ?row2))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec2) (row ?row2) (column ?colx&~?col1&~?col2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (number ?nb) (row-of-vertical-controller ?vsec)
                        (column ?colz&:(or (and (eq ?colz ?col1) (eq ?vsec ?vsec1)) (and (eq ?colz ?col2) (eq ?vsec ?vsec2))))
                        (row ?rowz&~?row1&~?row2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-horiz-sectors: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wings-in-horizontal-sectors ?zzz ?zzz ?nb ?row1 ?row2 ?col1 ?col2 ?vsec1 ?vsec2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wings-in-horizontal-sectors ?zzz ?zzz ?nb ?row1 ?row2 ?col1 ?col2 ?vsec1 ?vsec2)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (number ?nb) (row-of-vertical-controller ?vsec)
                (column ?colz&:(or (and (eq ?colz ?col1) (eq ?vsec ?vsec1)) (and (eq ?colz ?col2) (eq ?vsec ?vsec2))))
                (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L2-x-wing-in-columns
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)

    (magic-digit-in-vertical-sector ?nb ?vsec1 ?col1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec1) (column ?col1) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec2) (column ?col1) (row ?row2&:(< ?row1 ?row2)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column ?col1) (row ?rowx&~?row1&~?row2)))
	
    (magic-digit-in-vertical-sector ?nb ?vsec2 ?col2&:(< ?col1 ?col2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec1) (column ?col2) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec2) (column ?col2) (row ?row2))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column ?col2) (row ?rowx&~?row1&~?row2)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (number ?nb) (column-of-horizontal-controller ?hsec)
                        (row ?rowz&:(or (and (eq ?rowz ?row1) (eq ?hsec ?hsec1)) (and (eq ?rowz ?row2) (eq ?hsec ?hsec2))))
                         (column ?colz&~?col1&~?col2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-verti-sectors: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) 
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wings-in-vertical-sectors ?zzz ?zzz ?nb ?col1 ?col2 ?row1 ?row2 ?hsec1 ?hsec2))
    )
)

(defrule apply-to-more-targets-L2-x-wing-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont x-wings-in-vertical-sectors ?zzz ?zzz ?nb ?col1 ?col2 ?row1 ?row2 ?hsec1 ?hsec2)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (number ?nb) (column-of-horizontal-controller ?hsec)
                (row ?rowz&:(or (and (eq ?rowz ?row1) (eq ?hsec ?hsec1)) (and (eq ?rowz ?row2) (eq ?hsec ?hsec2))))
                (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)


