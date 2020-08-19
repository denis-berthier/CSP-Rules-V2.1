
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
               ;;;            January 2006 - August 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; note that this is classical x-wing (on rows and columns) and not generalized x-wing (with blocks)

(defrule activate-x-wing
	(declare (salience ?*x-wing-salience*))
	(logical (play) (context (name ?cont)))
    (not (deactivate ?cont pair))
=>
	(assert (technique ?cont x-wing))
	(bind ?*technique* SHP)
)



(defrule detect-L2-x-wing-in-rows
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)
	;;; if, in a context,
	;;; there are four cells at the corners of a rectangle,
	;;; defined by two rows (?row1 < ?row2) and two columns (?col1 < ?col2),
	;;; and there is a number (?nb)
	;;; such that, in each of the two rows, number ?nb can appear at no other cell 
	;;; than the two corners of the rectangle
	;;; - and it does appear there
	;;;  (otherwise there would be a naked single or a hidden single on the row)
	
	;;; equivalently:
	;;; if, in a context, there is a number ?nb
	;;; and there are two rows ?row1 < ?row2,
	;;; on which ?nb is confined to exactly the same two columns ?col1 < ?col2,

	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&:(< ?col1 ?col2)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?colx&~?col1&~?col2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&:(< ?row1 ?row2)))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?row2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?colx&~?col1&~?col2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-rows ?nb ?row1 ?row2 ?col1 ?col2))
	(if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-rows: "
				(number-name ?nb) 
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-x-wing-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-rows ?nb ?row1 ?row2 ?col1 ?col2)
    ;;; then the candidature of this number for any cell in the two columns
    ;;; other than on the two rows ?row1 and ?row2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?elim (str-cat (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
        (add-elimination-to-blocked-rule ?elim)
    )
)




(defrule detect-L2-x-wing-in-columns
	(declare (salience ?*x-wing-salience*))
	(technique ?cont x-wing)
	;;; if, in a context,
	;;; there are four cells at the corners of a rectangle,
	;;; defined by two columns (?col1 < ?col2) and two rows (?row1 < ?row2),
	;;; and there is a number (?nb)
	;;; such that, in each of the two columns, number ?nb can appear at no other cell 
	;;; than the two corners of the rectangle
	;;; - and it does appear there
	;;;  (otherwise there would be a naked single or a hidden single on the column)
	
	;;; equivalently:
	;;; if, in a context, there is a number ?nb
	;;; and there are two columns ?col1 < ?col2,
	;;; on which ?nb is confined to exactly the same two rows ?row1 < ?row2,

	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row1))
	(candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?row2&:(< ?row1 ?row2)))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col1) (row ?rowx&~?row1&~?row2)))
	
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row1) (column ?col2&:(< ?col1 ?col2)))
	(candidate (context ?cont) (status cand) (number ?nb) (row ?row2) (column ?col2))
	(not (candidate (context ?cont) (status cand) (number ?nb) (column ?col2) (row ?rowx&~?row1&~?row2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont x-wing-in-columns ?nb ?col1 ?col2 ?row1 ?row2))
	(if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (bind ?*blocked-rule-description*
            (str-cat "x-wing-in-columns: "
				(number-name ?nb) 
				?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
				?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-x-wing-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont x-wing-in-columns ?nb ?col1 ?col2 ?row1 ?row2)
    ;;; then the candidature of this number for any cell in the two rows
    ;;; other than on the two columns ?col1 and ?col2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
         (bind ?elim (str-cat (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)))
    (add-elimination-to-blocked-rule ?elim)
    )
)


