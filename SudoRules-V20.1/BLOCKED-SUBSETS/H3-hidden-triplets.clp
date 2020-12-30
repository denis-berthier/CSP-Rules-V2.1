
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              HIDDEN TRIPLETS, NON-INTERRUPTED VERSION
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





(defrule activate-hidden-triplets
	(declare (salience ?*hidden-triplets-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont triplet))
=>
	(assert (technique ?cont hidden-triplets))
	(bind ?*technique* HT)
)





(defrule detect-L3-hidden-triplets-in-a-row
	(declare (salience ?*hidden-triplets-salience*))
	(technique ?cont hidden-triplets)
	;;; if, in a context, there is a row ?row
	;;; and there are three cells in this row (defined by ?col1, ?col2 and ?col3),
	;;; and there are three numbers ?nb1 < ?nb2 < ?nb3,
	;;; such that, in this row, these three numbers are confined exactly to ?col1, ?col2 and ?col3
	
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col1) )
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?col2&~?col1))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?col3&~?col1&~?col2))

	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb1) (column ?colx&~?col1&~?col2&~?col3)))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb2) (column ?colx&~?col1&~?col2&~?col3)))

	(candidate (context ?cont) (status cand) (row ?row) (column ?col3) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?col1))
	(not (candidate (context ?cont) (status cand) (row ?row) (number ?nb3) (column ?colx&~?col1&~?col2&~?col3)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-triplets-in-a-row ?row ?col1 ?col2 ?col3 ?nb1 ?nb2 ?nb3))
	(if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (bind ?*blocked-rule-description*
            (str-cat "hidden-triplets-in-a-row: "
				(row-name ?row)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) 
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) 
				?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L3-hidden-triplets-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-triplets-in-a-row ?row ?col1 ?col2 ?col3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e.  any other number in these three cells
    ?cand <- (candidate (context ?cont) (status cand) (row ?row)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2) (eq ?colz ?col3)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (bind ?elim (str-cat (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L3-hidden-triplets-in-a-column
	(declare (salience ?*hidden-triplets-salience*))
	(technique ?cont hidden-triplets)

	;;; if, in a context, there is a column ?col
	;;; and there are three cells in this column (defined by ?row1, ?row2 and ?row3),
	;;; and there are three numbers ?nb1 < ?nb2 < ?nb3,
	;;; such that, in this column, these three numbers are confined exactly to ?row1, ?row2 and ?row3
	
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row1) )
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?row2&~?row1))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?row3&~?row1&~?row2))

	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb1) (row ?rowx&~?row1&~?row2&~?row3)))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb2) (row ?rowx&~?row1&~?row2&~?row3)))

	(candidate (context ?cont) (status cand) (column ?col) (row ?row3) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?row1))
	(not (candidate (context ?cont) (status cand) (column ?col) (number ?nb3) (row ?rowx&~?row1&~?row2&~?row3)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-triplets-in-a-column ?col ?row1 ?row2 ?row3 ?nb1 ?nb2 ?nb3))
	(if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (bind ?*blocked-rule-description*
            (str-cat "hidden-triplets-in-a-column: "
				(column-name ?col)
				?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2) 
				?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) 
				?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L3-hidden-triplets-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-triplets-in-a-column ?col ?row1 ?row2 ?row3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e.  any other number in these three cells
    ?cand <- (candidate (context ?cont) (status cand) (column ?col)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2) (eq ?rowz ?row3)))
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L3-hidden-triplets-in-a-block
	(declare (salience ?*hidden-triplets-salience*))
	(technique ?cont hidden-triplets)

	;;; if, in a context, there is a block ?bl
	;;; and there are three cells in this block (defined by ?sq1, ?sq2 and ?sq3),
	;;; and there are three numbers ?nb1 < ?nb2 < ?nb3,
	;;; such that, in this block, these three numbers are confined exactly to ?sq1, ?sq2 and ?sq3
	
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq1))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sq2&~?sq1))

	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq2) (number ?nb2&:(< ?nb1 ?nb2)))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb2) (square ?sq3&~?sq1&~?sq2))

	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb1) (square ?sqx&~?sq1&~?sq2&~?sq3)))
	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb2) (square ?sqx&~?sq1&~?sq2&~?sq3)))

	(candidate (context ?cont) (status cand) (block ?bl) (square ?sq3) (number ?nb3&:(< ?nb2 ?nb3)))
	(candidate (context ?cont) (status cand) (block ?bl) (number ?nb3) (square ?sq1))
	(not (candidate (context ?cont) (status cand) (block ?bl) (number ?nb3) (square ?sqx&~?sq1&~?sq2&~?sq3)))
	
	(rc-cell ?row1 ?col1 ?bl ?sq1)
	(rc-cell ?row2 ?col2 ?bl ?sq2)
	(rc-cell ?row3 ?col3 ?bl ?sq3)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-triplets-in-a-block ?bl ?sq1 ?sq2 ?sq3 ?nb1 ?nb2 ?nb3))
	(if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (bind ?*blocked-rule-description*
            (str-cat "hidden-triplets-in-a-block: "
				(block-name ?bl)
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) (column-name ?col1) ?*separation-sign-in-cell* (row-name ?row2) (column-name ?col2) 
				?*separation-sign-in-cell* (row-name ?row3) (column-name ?col3) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L3-hidden-triplets-in-a-block
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-triplets-in-a-block ?bl ?sq1 ?sq2 ?sq3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets, i.e.  any other number in these three cells
    ?cand <- (candidate (context ?cont) (status cand) (block ?bl)
                        (square ?sqz&:(or (eq ?sqz ?sq1) (eq ?sqz ?sq2) (eq ?sqz ?sq3)))
                        (row ?rowz) (column ?colz)
                        (number ?nbz&~?nb1&~?nb2&~?nb3))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-hidden-triplets*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)))
        (add-elimination-to-blocked-rule ?elim)
    )
)

