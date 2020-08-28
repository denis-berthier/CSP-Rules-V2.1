
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              NAKED TRIPLETS, NON-INTERRUPTED VERSION
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





(defrule activate-naked-triplets
	(declare (salience ?*activate-triplets-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont triplet))
=>
	(if ?*print-levels* then (printout t Entering_level_S3))
	(assert (technique ?cont naked-triplets))
	(bind ?*technique* NT)
)


(defrule track-triplets
	(declare (salience ?*activate-triplets-salience*))
	(logical (play))
	?level <- (technique ?cont naked-triplets)
=>
    (if ?*print-levels* then (printout t _with_ ?level crlf))
)


;;; rows

(defrule detect-L3-naked-triplets-in-a-row
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)
	;;; if, in a context, there is a row ?row,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this row (defined by ?col1 < ?col2 < ?col3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb3&~?nb1&~?nb2))

	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))	

	(candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?col3&:(< ?col2 ?col3)))
	(candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nbx&~?nb1&~?nb2&~?nb3)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-triplets-in-a-row ?row ?col1 ?col2 ?col3 ?nb1 ?nb2 ?nb3))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
        (bind ?*blocked-rule-description*
            (str-cat "naked-triplets-in-a-row: "
				(row-name ?row)
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
				?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L3-naked-triplets-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-triplets-in-a-row ?row ?col1 ?col2 ?col3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2 and ?nb3 in other cells in this row
    ?candx <- (candidate (context ?cont) (status cand) (row ?row)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
                         (column ?colz&~?col1&~?col2&~?col3))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
        (bind ?elim (str-cat (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



;;; columns

(defrule detect-L3-naked-triplets-in-a-column
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)
	;;; if, in a context, there is a column ?col,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this column (defined by ?row1 < ?row2 < ?row3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb3&~?nb1&~?nb2))

	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb2&~?nb3)))	

	(candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?row3&:(< ?row2 ?row3)))
	(candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nbx&~?nb1&~?nb2&~?nb3)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-triplets-in-a-column ?col ?row1 ?row2 ?row3 ?nb1 ?nb2 ?nb3))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
        (bind ?*blocked-rule-description*
            (str-cat "naked-triplets-in-a-column: "
				(column-name ?col)
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L3-naked-triplets-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-triplets-in-a-column ?col ?row1 ?row2 ?row3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2 and ?nb3 in other cells in this column
    ?candx <- (candidate (context ?cont) (status cand) (column ?col)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
                         (row ?rowz&~?row1&~?row2&~?row3))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



;;; blocks

(defrule detect-L3-naked-triplets-in-a-block
	(declare (salience ?*naked-triplets-salience*))
	(technique ?cont naked-triplets)

	;;; if, in a context, there is a block ?bl,
	;;; and there are three numbers ?nb1, ?nb2 and ?nb3,
	;;; and there are three cells in this block (defined by ?sq1 < ?sq2 < ?sq3),
	;;; that have candidates only among ?nb1, ?nb2 and ?nb3,
	;;; and such that ?nb1, ?nb2 and ?nb3 form an extended xy3-chain on these three cells

	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb1))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nb2&~?nb1))

	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb2) (square ?sq2&:(< ?sq1 ?sq2)))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nb3&~?nb1&~?nb2))
	
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nbx&~?nb1&~?nb2&~?nb3)))

	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb3) (square ?sq3&:(< ?sq2 ?sq3)))
	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (block ?bl) (square ?sq3) (number ?nbx&~?nb1&~?nb2&~?nb3)))
					
	(rc-cell ?row1 ?col1 ?bl ?sq1)
	(rc-cell ?row2 ?col2 ?bl ?sq2)
	(rc-cell ?row3 ?col3 ?bl ?sq3)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-triplets-in-a-block ?bl ?sq1 ?sq2 ?sq3 ?nb1 ?nb2 ?nb3))
	(if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
        (bind ?*blocked-rule-description*
            (str-cat "naked-triplets-in-a-block: "
				(block-name ?bl)
				?*starting-cell-symbol* (row-name ?row1) (column-name ?col1) ?*separation-sign-in-cell* (row-name ?row2) (column-name ?col2) 
				?*separation-sign-in-cell* (row-name ?row3) (column-name ?col3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) 
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L3-naked-triplets-in-a-block
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-triplets-in-a-block ?bl ?sq1 ?sq2 ?sq3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e. candidates ?nb1, ?nb2 and ?nb3 in other cells in this block
    ?candx <- (candidate (context ?cont) (status cand) (block ?bl)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3)))
                          (square ?sqz&~?sq1&~?sq2&~?sq3)
                          (row ?rowz) (column ?colz))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-naked-triplets*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)

