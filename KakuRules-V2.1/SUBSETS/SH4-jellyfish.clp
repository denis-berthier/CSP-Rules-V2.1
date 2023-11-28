
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              JELLYFISH
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





(defrule activate-jellyfish
	(declare (salience ?*jellyfish-salience*))
    (logical
        (play) (context
        (name ?cont))
        (not (deactivate ?cont quad))
    )
=>
	(assert (technique ?cont jellyfish))
	(bind ?*technique* SHQ)
)




;;; rows

(defrule L4-jellyfish-in-rows
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
    (magic-digit-in-horizontal-sector ?nb ?row1 ?hsec1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec1) (row ?row1) (column ?col1) )
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec2) (row ?row1) (column ?col2&~?col1))

    (magic-digit-in-horizontal-sector ?nb ?row2&:(< ?row1 ?row2) ?hsec2)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec2) (row ?row2) (column ?col2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec3) (row ?row2) (column ?col3&~?col1&~?col2))

    (magic-digit-in-horizontal-sector ?nb ?row3&~?row2&:(< ?row1 ?row3) ?hsec3)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column-of-horizontal-controller ?hsec3) (row ?row3) (column ?col3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column-of-horizontal-controller ?hsec4) (row ?row3) (column ?col4&~?col1&~?col2&~?col3))

	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (row ?row1) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (row ?row2) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (row ?row3) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
		
    (magic-digit-in-horizontal-sector ?nb ?row4&~?row2&~?row3&:(or (< ?row2 ?row4) (< ?row3 ?row4)) ?hsec4)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column-of-horizontal-controller ?hsec4) (row ?row4) (column ?col4))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column-of-horizontal-controller ?hsec1) (row ?row4) (column ?col1))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (row ?row4) (column ?colx&~?col1&~?col2&~?col3&~?col4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (number ?nb) (row-of-vertical-controller ?vsec)
                        (column ?colz&:(or (and (eq ?colz ?col1) (eq ?vsec ?vsec1)) (and (eq ?colz ?col2) (eq ?vsec ?vsec2)) (and (eq ?colz ?col3) (eq ?vsec ?vsec3)) (and (eq ?colz ?col4) (eq ?vsec ?vsec4))))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-horiz-sectors: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-horizontal-sectors ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4 ?vsec1 ?vsec2 ?vsec3 ?vsec4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont jellyfish-in-horizontal-sectors ?zzz ?nb ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4 ?vsec1 ?vsec2 ?vsec3 ?vsec4)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (number ?nb) (row-of-vertical-controller ?vsec)
                        (column ?colz&:(or (and (eq ?colz ?col1) (eq ?vsec ?vsec1)) (and (eq ?colz ?col2) (eq ?vsec ?vsec2)) (and (eq ?colz ?col3) (eq ?vsec ?vsec3)) (and (eq ?colz ?col4) (eq ?vsec ?vsec4))))
                        (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L4-jellyfish-in-columns
    (declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
    (magic-digit-in-vertical-sector ?nb ?vsec1 ?col1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec1) (column ?col1) (row ?row1) )
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec2) (column ?col1) (row ?row2&~?row1))

    (magic-digit-in-vertical-sector ?nb ?vsec2 ?col2&:(< ?col1 ?col2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec2) (column ?col2) (row ?row2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec3) (column ?col2) (row ?row3&~?row1&~?row2))

    (magic-digit-in-vertical-sector ?nb ?vsec3 ?col3&~?col2&:(< ?col1 ?col3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column-of-horizontal-controller ?hsec3) (column ?col3) (row ?row3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column-of-horizontal-controller ?hsec4) (column ?col3) (row ?row4&~?row1&~?row2&~?row3))

	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column ?col1) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column ?col2) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column ?col3) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
		
    (magic-digit-in-vertical-sector ?nb ?vsec4 ?col4&~?col2&~?col3&:(or (< ?col2 ?col4) (< ?col3 ?col4)))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column-of-horizontal-controller ?hsec4) (column ?col4) (row ?row4))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column-of-horizontal-controller ?hsec1) (column ?col4) (row ?row1))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column ?col4) (row ?rowx&~?row1&~?row2&~?row3&~?row4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (number ?nb) (column-of-horizontal-controller ?hsec)
                        (row ?rowz&:(or (and (eq ?rowz ?row1) (eq ?hsec ?hsec1)) (and (eq ?rowz ?row2) (eq ?hsec ?hsec2)) (and (eq ?rowz ?row3) (eq ?hsec ?hsec3)) (and (eq ?rowz ?row4) (eq ?hsec ?hsec4))))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
            (printout t "jellyfish-in-verti-sectors: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) 
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont jellyfish-in-vertical-sectors ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?row1 ?row2 ?row3 ?row4 ?hsec1 ?hsec2 ?hsec3 ?hsec4))
    )
)


(defrule apply-to-more-targets-L4-jellyfish-in-columns
    (declare (salience ?*jellyfish-salience*))
    (pseudo-blocked ?cont jellyfish-in-vertical-sectors ?zzz ?nb ?col1 ?col2 ?col3 ?col4 ?row1 ?row2 ?row3 ?row4 ?hsec1 ?hsec2 ?hsec3 ?hsec4)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (number ?nb) (column-of-horizontal-controller ?hsec)
                        (row ?rowz&:(or (and (eq ?rowz ?row1) (eq ?hsec ?hsec1)) (and (eq ?rowz ?row2) (eq ?hsec ?hsec2)) (and (eq ?rowz ?row3) (eq ?hsec ?hsec3)) (and (eq ?rowz ?row4) (eq ?hsec ?hsec4))))
                        (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



