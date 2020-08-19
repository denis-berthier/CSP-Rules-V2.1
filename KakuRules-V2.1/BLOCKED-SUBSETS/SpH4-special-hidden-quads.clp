
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              SPECIAL HIDDEN QUADS, NON-INTERRUPTED VERSION
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





;;; rows

(defrule detect-L4-special-hidden-quads-in-a-row
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
    (magic-digit-in-horizontal-sector ?nb1 ?row ?ctr-col)
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb1) (column ?col1))
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb1) (column ?col2&~?col1))
	(not (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb1) (column ?colx&~?col1&~?col2)))

    (magic-digit-in-horizontal-sector ?nb2&:(< ?nb1 ?nb2) ?row ?ctr-col)
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nb2))
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb2) (column ?col3&~?col1&~?col2))
	(not (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb2) (column ?colx&~?col1&~?col3)))

    (magic-digit-in-horizontal-sector ?nb3&:(< ?nb2 ?nb3) ?row ?ctr-col)
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nb3))
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb3) (column ?col4&~?col1&~?col2&~?col3))
	(not (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb3) (column ?colx&~?col1&~?col4)))

    (magic-digit-in-horizontal-sector ?nb4&~?nb1&~?nb2&~?nb3 ?row ?ctr-col)
	(candidate (context ?cont) (status cand) (type white) (row ?row) (number ?nb4) (column ?col2))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (number ?nb4) (column ?col3))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (number ?nb4) (column ?col4))
	(not (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb4) (column ?colx&~?col2&~?col3&~?col4)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-hidden-quads-in-horizontal-sector ?row ?nb1 ?nb2 ?nb3 ?nb4 ?col1 ?col2 ?col3 ?col4))
	(if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
        (bind ?*blocked-rule-description*
        (str-cat
            "special-hidden-quads-in-horiz-sector: "
				(row-name ?row)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) 
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) 
				?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L4-special-hidden-quads-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont special-hidden-quads-in-horizontal-sector ?row ?nb1 ?nb2 ?nb3 ?nb4 ?col1 ?col2 ?col3 ?col4)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (type white) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3) (eq ?colz ?col4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
        (bind ?elim (str-cat(row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



;;; columns

(defrule detect-L4-special-hidden-quads-in-a-column
	(declare (salience ?*hidden-quads-salience*))
	(technique ?cont hidden-quads)
	
    (magic-digit-in-vertical-sector ?nb1 ?ctr-row ?col)
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb1) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb1) (row ?row2&~?row1))
	(not (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb1) (row ?rowx&~?row1&~?row2)))

    (magic-digit-in-vertical-sector ?nb2&:(< ?nb1 ?nb2) ?ctr-row ?col)
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb2) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb2) (row ?row3&~?row1&~?row2))
	(not (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb2) (row ?rowx&~?row1&~?row3)))

    (magic-digit-in-vertical-sector ?nb3&:(< ?nb2 ?nb3) ?ctr-row ?col)
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb3) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb3) (row ?row4&~?row1&~?row2&~?row3))
	(not (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb3) (row ?rowx&~?row1&~?row4)))

    (magic-digit-in-vertical-sector ?nb4&~?nb1&~?nb2&~?nb3 ?ctr-row ?col)
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb4) (row ?row2))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb4) (row ?row3))
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb4) (row ?row4))
	(not (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb4) (row ?rowx&~?row2&~?row3&~?row4)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont special-hidden-quads-in-vertical-sector ?col ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?row2 ?row3 ?row4))
	(if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
        (bind ?*blocked-rule-description*
            (str-cat
                "special-hidden-quads-in-verti-sector: "
				(column-name ?col)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) 
				?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L4-special-hidden-quads-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont special-hidden-quads-in-vertical-sector ?col ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?row2 ?row3 ?row4)
    ?cand <- (candidate (context ?cont) (status cand) (type white) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3) (eq ?rowz ?row4)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3&~?nb4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-hidden-quads*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)




