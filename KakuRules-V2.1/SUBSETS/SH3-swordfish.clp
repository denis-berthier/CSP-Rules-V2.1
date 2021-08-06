
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              SWORDFISH
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





(defrule activate-swordfish
	(declare (salience ?*swordfish-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont triplet))
    )
=>
	(assert (technique ?cont swordfish))
	(bind ?*technique* SHT)
)



;;; rows

(defrule L3-swordfish-in-rows
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)

    (magic-digit-in-horizontal-sector ?nb ?row1 ?hsec1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec1) (row-of-vertical-controller ?vsec1) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec1) (row-of-vertical-controller ?vsec2) (row ?row1) (column ?col2&~?col1))

    (magic-digit-in-horizontal-sector ?nb ?row2&:(< ?row1 ?row2) ?hsec2)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec2) (row-of-vertical-controller ?vsec2) (column ?col2) (row ?row2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec2) (row-of-vertical-controller ?vsec3) (row ?row2) (column ?col3&~?col1&~?col2))
    ;;; check that the sector in col3 cuts the sector in row1
    (exists (candidate (context ?cont) (type white) (column-of-horizontal-controller ?hsec1) (row-of-vertical-controller ?vsec3) (row ?row1) (column ?col3)))
    ;;; check that the sector in col1 cuts the sector in row2
    (exists (candidate (context ?cont) (type white) (column-of-horizontal-controller ?hsec2) (row-of-vertical-controller ?vsec1) (row ?row2) (column ?col1)))

	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec1) (row ?row1) (column ?colx&~?col1&~?col2&~?col3)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec2) (row ?row2) (column ?colx&~?col1&~?col2&~?col3)))

    (magic-digit-in-horizontal-sector ?nb ?row3&:(< ?row2 ?row3) ?hsec3)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec3) (row-of-vertical-controller ?vsec3) (column ?col3) (row ?row3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec3) (row-of-vertical-controller ?vsec1) (row ?row3) (column ?col1))
    ;;; check that the sector in col2 cuts the sector in row3
    (exists (candidate (context ?cont) (type white) (column-of-horizontal-controller ?hsec3) (row-of-vertical-controller ?vsec2) (row ?row3) (column ?col2)))

	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column-of-horizontal-controller ?hsec3) (row ?row3) (column ?colx&~?col1&~?col2&~?col3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (number ?nb) (row-of-vertical-controller ?vsec)
                        (column ?colz&:(or (and (eq ?colz ?col1) (eq ?vsec ?vsec1)) (and (eq ?colz ?col2) (eq ?vsec ?vsec2)) (and (eq ?colz ?col3) (eq ?vsec ?vsec3))))
                        (row ?rowz&~?row1&~?row2&~?row3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-horiz-sectors: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-horizontal-sectors ?zzz ?nb ?row1 ?row2 ?row3 ?col1 ?col2 ?col3 ?vsec1 ?vsec2 ?vsec3))
    )
)


(defrule apply-to-more-targets-L3-swordfish-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-horizontal-sectors ?zzz ?nb ?row1 ?row2 ?row3 ?col1 ?col2 ?col3 ?vsec1 ?vsec2 ?vsec3)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (number ?nb) (row-of-vertical-controller ?vsec)
                        (column ?colz&:(or (and (eq ?colz ?col1) (eq ?vsec ?vsec1)) (and (eq ?colz ?col2) (eq ?vsec ?vsec2)) (and (eq ?colz ?col3) (eq ?vsec ?vsec3))))
                        (row ?rowz&~?row1&~?row2&~?row3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L3-swordfish-in-columns
	(declare (salience ?*swordfish-salience*))
	(technique ?cont swordfish)
	
    (magic-digit-in-vertical-sector ?nb ?vsec1 ?col1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec1) (column ?col1) (row ?row1) )
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column-of-horizontal-controller ?hsec2) (column ?col1) (row ?row2&~?row1))

    (magic-digit-in-vertical-sector ?nb ?vsec2 ?col2&:(< ?col1 ?col2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec2) (column ?col2) (row ?row2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column-of-horizontal-controller ?hsec3) (column ?col2) (row ?row3&~?row1&~?row2))
    ;;; check that the sector in row3 cuts the sector in col1
    (exists (candidate (context ?cont) (type white) (row-of-vertical-controller ?hsec3) (column-of-horizontal-controller ?vsec1) (column ?col1) (row ?row3)))
    ;;; check that the sector in row1 cuts the sector in col2
    (exists (candidate (context ?cont) (type white) (row-of-vertical-controller ?hsec1) (column-of-horizontal-controller ?vsec2) (column ?col2) (row ?row1)))

	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec1) (column ?col1) (row ?rowx&~?row1&~?row2&~?row3)))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec2) (column ?col2) (row ?rowx&~?row1&~?row2&~?row3)))

    (magic-digit-in-vertical-sector ?nb ?vsec3 ?col3&:(< ?col2 ?col3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column-of-horizontal-controller ?hsec3) (column ?col3) (row ?row3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column-of-horizontal-controller ?hsec3) (column ?col3) (row ?row1))
    ;;; check that the sector in row2 cuts the sector in col3
    (exists (candidate (context ?cont) (type white) (row-of-vertical-controller ?hsec2) (column-of-horizontal-controller ?vsec3) (column ?col3) (row ?row2)))

	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec3) (column ?col3) (row ?rowx&~?row1&~?row2&~?row3)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (number ?nb) (column-of-horizontal-controller ?hsec)
                        (row ?rowz&:(or (and (eq ?rowz ?row1) (eq ?hsec ?hsec1)) (and (eq ?rowz ?row2) (eq ?hsec ?hsec2)) (and (eq ?rowz ?row3) (eq ?hsec ?hsec3))))
                        (column ?colz&~?col1&~?col2&~?col3))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
            (printout t "swordfish-in-verti-sectors: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) 
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont swordfish-in-vertical-sectors ?zzz ?nb ?col1 ?col2 ?col3 ?row1 ?row2 ?row3 ?hsec1 ?hsec2 ?hsec3))
    )
)

(defrule apply-to-more-targets-L3-swordfish-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont swordfish-in-vertical-sectors ?zzz ?nb ?col1 ?col2 ?col3 ?row1 ?row2 ?row3 ?hsec1 ?hsec2 ?hsec3)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (number ?nb) (column-of-horizontal-controller ?hsec)
                        (row ?rowz&:(or (and (eq ?rowz ?row1) (eq ?hsec ?hsec1)) (and (eq ?rowz ?row2) (eq ?hsec ?hsec2)) (and (eq ?rowz ?row3) (eq ?hsec ?hsec3))))
                        (column ?colz&~?col1&~?col2&~?col3))

=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-swordfish*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



