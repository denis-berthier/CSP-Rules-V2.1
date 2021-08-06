
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              SPECIAL JELLYFISH, NON-INTERRUPTED VERSION
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





(defrule L4-special-jellyfish-in-rows
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

    (magic-digit-in-horizontal-sector ?nb ?row4&:(< ?row3 ?row4) ?hsec4)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column-of-horizontal-controller ?hsec4) (row ?row3) (column ?col3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row-of-vertical-controller ?vsec4) (column-of-horizontal-controller ?hsec5) (row ?row3) (column ?col4&~?col1&~?col2&~?col3))

    (magic-digit-in-horizontal-sector ?nb ?row4&~?row1&~?row2&~?row3&:(or (< ?nb2 ?nb4) (< ?nb3 ?nb4)) hsec4)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row ?row4) (column ?col2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row ?row4) (column ?col3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (row ?row4) (column ?col4))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (row ?row4) (column ?colx&~?col2&~?col3&~?col4)))

	?cand <- (candidate (context ?cont) (status cand) (type white) (number ?nb)
						(column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
						(row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
			(printout t "special-jellyfish-in-horiz-sectors: "
				(number-name ?nb) 
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) 
				?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)





(defrule L4-special-jellyfish-in-columns
	(declare (salience ?*jellyfish-salience*))
	(technique ?cont jellyfish)
	
    (magic-digit-in-vertical-sector ?nb ?vsec1 ?col1)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col1) (row ?row1) )
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col1) (row ?row2&~?row1))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2)))

    (magic-digit-in-vertical-sector ?nb ?vsec2 ?col2&:(< ?col1 ?col2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col2) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col2) (row ?row3&~?row1&~?row2))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col2) (row ?rowx&~?row1&~?row2)))

    (magic-digit-in-vertical-sector ?nb ?vsec3 ?col3&:(< ?col2 ?col3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col3) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col3) (row ?row4&~?row1&~?row2&~?row3))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col3) (row ?rowx&~?row1&~?row4)))
		
    (magic-digit-in-vertical-sector ?nb ?vsec4 ?col4&~?col1&~?col2&~?col3)
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col4) (row ?row2))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col4) (row ?row3))
	(candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col4) (row ?row4))
	(not (candidate (context ?cont) (status cand) (type white) (number ?nb) (column ?col4) (row ?rowx&~?row2&~?row3&~?row4)))

	?cand <- (candidate (context ?cont) (status cand) (type white) (number ?nb)
						(row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
						(column ?colz&~?col1&~?col2&~?col3&~?col4))

=>
	(retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-L4* ?*print-jellyfish*) then
			(printout t "special-jellyfish-in-verti-sectors: "
				(number-name ?nb) 
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) 
				?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
				?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb) crlf
			)
	)
)
