
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              HIDDEN PAIRS, NON-INTERRUPTED VERSION
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





(defrule activate-hidden-pairs
	(declare (salience ?*hidden-pairs-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont pair))
=>
	(assert (technique ?cont hidden-pairs))
	(bind ?*technique* HP)
)



;;; rows

(defrule detect-L2-hidden-pairs-in-a-row
	(declare (salience ?*hidden-pairs-salience*))
	(technique ?cont hidden-pairs)

    (magic-digit-in-horizontal-sector ?nb1 ?row ?ctr-col)
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb1)  (column ?col1))
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb1) (column ?col2&:(< ?col1 ?col2)))
	(not (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?ctr-col) (row ?row) (number ?nb1) (column ?colx&~?col1&~?col2)))
	
    (magic-digit-in-horizontal-sector ?nb2&:(< ?nb1 ?nb2) ?row ?ctr-col)
	(candidate (context ?cont) (status cand) (type white) (row ?row) (number ?nb2) (column ?col1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (number ?nb2) (column ?col2))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (number ?nb2) (column ?colx&~?col1&~?col2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-pairs-in-horizontal-sector ?row ?nb1 ?nb2 ?col1 ?col2))
	(if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
        (bind ?*blocked-rule-description*
            (str-cat
                "hidden-pairs-in-horiz-sector: "
				(row-name ?row)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-hidden-pairs-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-pairs-in-horizontal-sector ?row ?nb1 ?nb2 ?col1 ?col2)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (type white) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (number ?nbz&~?nb1&~?nb2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
        (bind ?elim (str-cat (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



;;; columns

(defrule detect-L2-hidden-pairs-in-a-column
	(declare (salience ?*hidden-pairs-salience*))
	(technique ?cont hidden-pairs)

    (magic-digit-in-vertical-sector ?nb1 ?ctr-row ?col)
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb1) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb1) (row ?row2&:(< ?row1 ?row2)))
	(not (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?ctr-row) (column ?col) (number ?nb1) (row ?rowx&~?row1&~?row2)))
	
    (magic-digit-in-vertical-sector ?nb2&:(< ?nb1 ?nb2) ?ctr-row ?col)
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb2) (row ?row1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb2) (row ?row2))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (number ?nb2) (row ?rowx&~?row1&~?row2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-pairs-in-vertical-sector ?col ?nb1 ?nb2 ?row1 ?row2))
	(if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
        (bind ?*blocked-rule-description*
            (str-cat
                "hidden-pairs-in-verti-sector: "
				(column-name ?col)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-hidden-pairs-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-pairs-in-vertical-sector ?col ?nb1 ?nb2 ?row1 ?row2)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (type white) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                        (number ?nbz&~?nb1&~?nb2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-hidden-pairs*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



