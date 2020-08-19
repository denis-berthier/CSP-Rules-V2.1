
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              NAKED PAIRS, NON-INTERRUPTED VERSION
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





(defrule activate-pairs
	(declare (salience ?*activate-pairs-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont pair))
=>
	(if ?*print-levels* then (printout t Entering_level_S2))
	(assert (technique ?cont naked-pairs))
	(bind ?*technique* NP)
)


(defrule track-pairs
	(declare (salience ?*activate-pairs-salience*))
	?level <- (technique ?cont naked-pairs)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; rows

(defrule detect-L2-naked-pairs-in-a-row
	(declare (salience ?*naked-pairs-salience*))
	(technique ?cont naked-pairs)
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col2&:(< ?col1 ?col2)) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-pairs-in-horizontal-sector ?row ?col1 ?col2 ?nb1 ?nb2 ?sec))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
		(bind ?*blocked-rule-description*
            (str-cat
                "naked-pairs-in-horiz-sector: "
				(row-name ?row)
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-naked-pairs-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-pairs-in-horizontal-sector ?row ?col1 ?col2 ?nb1 ?nb2 ?sec)
    ;;; identify the targets, i.e. candidates ?nb1 and ?nb2 in other cells in this horizontal sector
    ?candx <- (candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row)
                         (number ?nb&:(or (eq ?nb ?nb1) (eq ?nb ?nb2)))
                         (column ?colx&~?col1&~?col2))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?elim (str-cat (row-name ?row) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



;;; columns

(defrule detect-L2-naked-pairs-in-a-column
	(declare (salience ?*naked-pairs-salience*))
	(technique ?cont naked-pairs)
	
	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row2&:(< ?row1 ?row2)) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-pairs-in-vertical-sector ?col ?row1 ?row2 ?nb1 ?nb2 ?sec))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?*blocked-rule-description*
            (str-cat
                "naked-pairs-in-verti-sector: "
                (column-name ?col)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*

            )
        )
	)
)

(defrule apply-L2-naked-pairs-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-pairs-in-vertical-sector ?col ?row1 ?row2 ?nb1 ?nb2 ?sec)
    ;;; identify the targets, i.e. candidates ?nb1 and ?nb2 in other cells in this vertical sector
    ?candx <- (candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col)
                         (number ?nb&:(or (eq ?nb ?nb1) (eq ?nb ?nb2)))
                         (row ?rowx&~?row1&~?row2))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?elim (str-cat (row-name ?rowx) (column-name ?col) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


