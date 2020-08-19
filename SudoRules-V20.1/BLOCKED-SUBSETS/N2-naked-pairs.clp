
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
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





(defrule activate-naked-pairs
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
	(logical (play))
	?level <- (technique ?cont naked-pairs)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; rows

(defrule detect-L2-naked-pairs-in-a-row
	(declare (salience ?*naked-pairs-salience*))
	(technique ?cont naked-pairs)
	;;; if, in a context, there is a row ?row
	;;; and there are two cells in this row (defined by ?col1 < ?col2),
	;;; that have exactly the same two candidates ?nb1 < ?nb2,
	
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-pairs-in-a-row ?row ?col1 ?col2 ?nb1 ?nb2))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?*blocked-rule-description*
			(str-cat "naked-pairs-in-a-row: "
				(row-name ?row)
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-naked-pairs-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-pairs-in-a-row ?row ?col1 ?col2 ?nb1 ?nb2)
    ;;; identify the targets, i.e. candidates ?nb1 and ?nb2 in other cells in this row
    ?candx <- (candidate (context ?cont) (status cand) (row ?row)
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
	;;; if, in a context, there is a column ?col
	;;; and there are two cells in this column (defined by ?row1 < ?row2),
	;;; that have exactly the same two candidates ?nb1 < ?nb2,
	
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-pairs-in-a-column ?col ?row1 ?row2 ?nb1 ?nb2))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?*blocked-rule-description*
			(str-cat "naked-pairs-in-a-column: "
				(column-name ?col)
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-naked-pairs-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-pairs-in-a-column ?col ?row1 ?row2 ?nb1 ?nb2)
    ;;; identify the targets, i.e. candidates ?nb1 and ?nb2 in other cells in this column
    ?candx <- (candidate (context ?cont) (status cand) (column ?col)
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



;;; blocks

(defrule detect-L2-naked-pairs-in-a-block
	(declare (salience ?*naked-pairs-salience*))
	(technique ?cont naked-pairs)
	;;; if, in a context, there is a block ?bl,
	;;; and there are two cells in this block (defined by ?sq1 < ?sq2),
	;;; that have exactly the same two candidates ?nb1 < ?nb2,
	
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb1))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nbx&~?nb2&~?nb1)))

	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq2&:(< ?sq1 ?sq2)))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nbx&~?nb2&~?nb1)))
	
	(rc-cell ?row1 ?col1 ?bl ?sq1)
	(rc-cell ?row2 ?col2 ?bl ?sq2)
	
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-pairs-in-a-block ?bl ?sq1 ?sq2 ?nb1 ?nb2))
	(if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?*blocked-rule-description*
            (str-cat "naked-pairs-in-a-block: "
                (block-name ?bl)
                ?*starting-cell-symbol* (row-name ?row1) (column-name ?col1) ?*separation-sign-in-cell* (row-name ?row2) (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-naked-pairs-in-a-block
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-pairs-in-a-block ?bl ?sq1 ?sq2 ?nb1 ?nb2)
    ;;; identify the targets, i.e. candidates ?nb1 and ?nb2 in other cells in this row
    ?candx <- (candidate (context ?cont) (status cand) (block ?bl)
                          (number ?nb&:(or (eq ?nb ?nb1) (eq ?nb ?nb2)))
                          (square ?sqx&~?sq1&~?sq2)
                          (row ?rowx) (column ?colx))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-naked-pairs*) then
        (bind ?elim (str-cat (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


