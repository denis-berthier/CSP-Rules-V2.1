
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              X-WINGS, NON-INTERRUPTED VERSION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;             January 2006 - July 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; note that this is classical x-wing (on diagonals and anti-diagonals) and not generalized x-wing (with blocks)

(defrule detect-L2-x-wing-in-diagonals
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)
	;;; if, in a context,
	;;; there are four cells at the corners of a rectangle,
	;;; defined by two diagonals (?diag1 < ?diag2) and two anti-diagonals (?anti-diag1 < ?anti-diag2),
	;;; and there is a number (?nb)
	;;; such that, in each of the two diagonals, number ?nb can appear at no other cell
	;;; than the two corners of the rectangle
	;;; - and it does appear there
	;;;  (otherwise there would be a naked single or a hidden single on the diagonal)
	
	;;; equivalently:
	;;; if, in a context, there is a number ?nb
	;;; and there are two diagonals ?diag1 < ?diag2,
	;;; on which ?nb is confined to exactly the same two anti-diagonals ?anti-diag1 < ?anti-diag2,

	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diag2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-diagonals ?nb ?diag1 ?diag2 ?anti-diag1 ?anti-diag2))
	(if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-diagonals: "
				(number-name ?nb) 
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-x-wing-in-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-diagonals ?nb ?diag1 ?diag2 ?anti-diag1 ?anti-diag2)
    ;;; then the candidature of this number for any cell in the two anti-diagonals
    ;;; other than on the two diagonals ?diag1 and ?diag2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (diagonal ?diagz&~?diag1&~?diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?elim (str-cat (diagonal-name ?diagz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)




(defrule detect-L2-x-wing-in-anti-diagonals
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)
	;;; if, in a context,
	;;; there are four cells at the corners of a rectangle,
	;;; defined by two anti-diagonals (?anti-diag1 < ?anti-diag2) and two diagonals (?diag1 < ?diag2),
	;;; and there is a number (?nb)
	;;; such that, in each of the two anti-diagonals, number ?nb can appear at no other cell
	;;; than the two corners of the rectangle
	;;; - and it does appear there
	;;;  (otherwise there would be a naked single or a hidden single on the anti-diagonal)
	
	;;; equivalently:
	;;; if, in a context, there is a number ?nb
	;;; and there are two anti-diagonals ?anti-diag1 < ?anti-diag2,
	;;; on which ?nb is confined to exactly the same two diagonals ?diag1 < ?diag2,

	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag1))
	(candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (diagonal ?diagx&~?diag1&~?diag2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
	(candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (anti-diagonal ?anti-diag2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (diagonal ?diagx&~?diag1&~?diag2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-anti-diagonals ?nb ?anti-diag1 ?anti-diag2 ?diag1 ?diag2))
	(if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-anti-diagonals: "
				(number-name ?nb) 
				?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-x-wing-in-anti-diagonals
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-anti-diagonals ?nb ?anti-diag1 ?anti-diag2 ?diag1 ?diag2)
    ;;; then the candidature of this number for any cell in the two diagonals
    ;;; other than on the two anti-diagonals ?anti-diag1 and ?anti-diag2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
         (bind ?elim (str-cat (diagonal-name ?diagz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb)))
    (add-elimination-to-blocked-rule ?elim)
    )
)





(defrule detect-L2-x-wing-in-rows-w-transv-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two rows (?row1 < ?row2) and two diagonals (?diag1 < ?diag2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two rows, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the row)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two rows ?row1 < ?row2,
    ;;; on which ?nb is confined to exactly the same two diagonals ?diag1 < ?diag2,

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diagx&~?diag1&~?diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?row2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diagx&~?diag1&~?diag2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-rows-w-transv-diags ?nb ?row1 ?row2 ?diag1 ?diag2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-rows-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-rows-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-rows-w-transv-diags ?nb ?row1 ?row2 ?diag1 ?diag2)
    ;;; then the candidature of this number for any cell in the two diagonals
    ;;; other than on the two rows ?row1 and ?row2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                        (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?elim (str-cat (row-name ?rowz) (diagonal-name ?diagz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L2-x-wing-in-columns-w-transv-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two columns (?col1 < ?col2) and two diagonals (?diag1 < ?diag2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two columns, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the column)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two columns ?col1 < ?col2,
    ;;; on which ?nb is confined to exactly the same two diagonals ?diag1 < ?diag2,

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diagx&~?diag1&~?diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?col2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diagx&~?diag1&~?diag2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-columns-w-transv-diags ?nb ?col1 ?col2 ?diag1 ?diag2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-columns-w-transv-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-columns-w-transv-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-columns-w-transv-diags ?nb ?col1 ?col2 ?diag1 ?diag2)
    ;;; then the candidature of this number for any cell in the two diagonals
    ;;; other than on the two columns ?col1 and ?col2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (diagonal ?diagz&:(or (eq ?diagz ?diag1) (eq ?diagz ?diag2)))
                         (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
         (bind ?elim (str-cat (diagonal-name ?diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
    (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L2-x-wing-in-rows-w-transv-anti-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two rows (?row1 < ?row2) and two anti-diagonals (?anti-diag1 < ?anti-diag2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two rows, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the row)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two rows ?row1 < ?row2,
    ;;; on which ?nb is confined to exactly the same two anti-diagonals ?anti-diag1 < ?anti-diag2,

    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&:(< ?row1 ?row2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?row2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-rows-w-transv-anti-diags ?nb ?row1 ?row2 ?anti-diag1 ?anti-diag2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-rows-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-rows-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-rows-w-transv-anti-diags ?nb ?row1 ?row2 ?anti-diag1 ?anti-diag2)
    ;;; then the candidature of this number for any cell in the two anti-diagonals
    ;;; other than on the two rows ?row1 and ?row2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                        (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?elim (str-cat (row-name ?rowz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)




(defrule detect-L2-x-wing-in-columns-w-transv-anti-diags
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two columns (?col1 < ?col2) and two anti-diagonals (?anti-diag1 < ?anti-diag2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two columns, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the column)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two columns ?col1 < ?col2,
    ;;; on which ?nb is confined to exactly the same two anti-diagonals ?anti-diag1 < ?anti-diag2,

    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag1))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&:(< ?col1 ?col2)))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?col2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diagx&~?anti-diag1&~?anti-diag2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-columns-w-transv-anti-diags ?nb ?col1 ?col2 ?anti-diag1 ?anti-diag2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-columns-w-transv-anti-diags: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-columns-w-transv-anti-diags
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-columns-w-transv-anti-diags ?nb ?col1 ?col2 ?anti-diag1 ?anti-diag2)
    ;;; then the candidature of this number for any cell in the two anti-diagonals
    ;;; other than on the two columns ?col1 and ?col2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (anti-diagonal ?anti-diagz&:(or (eq ?anti-diagz ?anti-diag1) (eq ?anti-diagz ?anti-diag2)))
                         (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
         (bind ?elim (str-cat (anti-diagonal-name ?anti-diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
    (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L2-x-wing-in-diags-w-transv-columns
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two diagonals (?diag1 < ?diag2) and two columns (?col1 < ?col2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two diagonals, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the diagonal)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two diagonals ?diag1 < ?diag2,
    ;;; on which ?nb is confined to exactly the same two columns ?col1 < ?col2,

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?col2&:(< ?col1 ?col2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (column ?colx&~?col1&~?col2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (diagonal ?diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (column ?colx&~?col1&~?col2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-diags-w-transv-columns ?nb ?diag1 ?diag2 ?col1 ?col2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-diags-w-transv-columns ?nb ?diag1 ?diag2 ?col1 ?col2)
    ;;; then the candidature of this number for any cell in the two columns
    ;;; other than on the two diagonals ?diag1 and ?diag2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (diagonal ?diagz&~?diag1&~?diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?elim (str-cat (diagonal-name ?diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)




(defrule detect-L2-x-wing-in-diags-w-transv-rows
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two diagonals (?diag1 < ?diag2) and two rows (?row1 < ?row2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two diagonals, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the diagonal)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two diagonals ?diag1 < ?diag2,
    ;;; on which ?nb is confined to exactly the same two rows ?row1 < ?row2,

    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row1))
    (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?row2&:(< ?row1 ?row2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag1) (row ?rowx&~?row1&~?row2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (diagonal ?diag2&:(< ?diag1 ?diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (diagonal ?diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (diagonal ?diag2) (row ?rowx&~?row1&~?row2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-diags-w-transv-rows ?nb ?diag1 ?diag2 ?row1 ?row2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (diagonal-name ?diag1) ?*separation-sign-in-cell* (diagonal-name ?diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-diags-w-transv-rows ?nb ?diag1 ?diag2 ?row1 ?row2)
    ;;; then the candidature of this number for any cell in the two rows
    ;;; other than on the two diagonals ?diag1 and ?diag2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (diagonal ?diagz&~?diag1&~?diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
         (bind ?elim (str-cat (row-name ?rowz) (diagonal-name ?diagz) ?*non-equal-sign* (numeral-name ?nb)))
    (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L2-x-wing-in-anti-diags-w-transv-columns
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two anti-diagonals (?anti-diag1 < ?anti-diag2) and two columns (?col1 < ?col2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two anti-diagonals, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the anti-diagonal)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two anti-diagonals ?anti-diag1 < ?anti-diag2,
    ;;; on which ?nb is confined to exactly the same two columns ?col1 < ?col2,

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?col2&:(< ?col1 ?col2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (column ?colx&~?col1&~?col2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (anti-diagonal ?anti-diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (column ?colx&~?col1&~?col2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-anti-diags-w-transv-columns ?nb ?anti-diag1 ?anti-diag2 ?col1 ?col2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-anti-diags-w-transv-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-anti-diags-w-transv-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-anti-diags-w-transv-columns ?nb ?anti-diag1 ?anti-diag2 ?col1 ?col2)
    ;;; then the candidature of this number for any cell in the two columns
    ;;; other than on the two anti-diagonals ?anti-diag1 and ?anti-diag2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?elim (str-cat (anti-diagonal-name ?anti-diagz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule detect-L2-x-wing-in-anti-diags-w-transv-rows
    (declare (salience ?*x-wing-salience*))
    (technique ?cont x-wing)
    ;;; if, in a context,
    ;;; there are four cells at the corners of a rectangle,
    ;;; defined by two anti-diagonals (?anti-diag1 < ?anti-diag2) and two rows (?row1 < ?row2),
    ;;; and there is a number (?nb)
    ;;; such that, in each of the two anti-diagonals, number ?nb can appear at no other cell
    ;;; than the two corners of the rectangle
    ;;; - and it does appear there
    ;;;  (otherwise there would be a naked single or a hidden single on the anti-diagonal)
    
    ;;; equivalently:
    ;;; if, in a context, there is a number ?nb
    ;;; and there are two anti-diagonals ?anti-diag1 < ?anti-diag2,
    ;;; on which ?nb is confined to exactly the same two rows ?row1 < ?row2,

    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row1))
    (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?row2&:(< ?row1 ?row2)))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag1) (row ?rowx&~?row1&~?row2)))
    
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (anti-diagonal ?anti-diag2&:(< ?anti-diag1 ?anti-diag2)))
    (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (anti-diagonal ?anti-diag2))
    (not (candidate (context ?cont) (status cand) (number ?nb) (anti-diagonal ?anti-diag2) (row ?rowx&~?row1&~?row2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-anti-diags-w-transv-rows ?nb ?anti-diag1 ?anti-diag2 ?row1 ?row2))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-anti-diags-w-transv-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (anti-diagonal-name ?anti-diag1) ?*separation-sign-in-cell* (anti-diagonal-name ?anti-diag2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
            )
        )
    )
)

(defrule apply-L2-x-wing-in-anti-diags-w-transv-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-anti-diags-w-transv-rows ?nb ?anti-diag1 ?anti-diag2 ?row1 ?row2)
    ;;; then the candidature of this number for any cell in the two rows
    ;;; other than on the two anti-diagonals ?anti-diag1 and ?anti-diag2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (anti-diagonal ?anti-diagz&~?anti-diag1&~?anti-diag2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
         (bind ?elim (str-cat (row-name ?rowz) (anti-diagonal-name ?anti-diagz) ?*non-equal-sign* (numeral-name ?nb)))
    (add-elimination-to-blocked-rule ?elim)
    )
)



