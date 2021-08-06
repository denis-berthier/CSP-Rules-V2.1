
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
;;;                              X-WINGS
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;; note that this is classical x-wing (on rows and columns) and not generalized x-wing (with blocks)

(defrule activate-x-wing
	(declare (salience ?*x-wing-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont pair))
    )
=>
	(assert (technique ?cont x-wing))
	(bind ?*technique* SHP)
)



;;; rows

(defrule L2-x-wing-in-rows
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
    
    ;;; then the candidature of this number for any cell in the two columns
    ;;; other than on the two rows ?row1 and ?row2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (row ?rowz&~?row1&~?row2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-rows: "
                (number-name ?nb)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-rows ?zzz ?nb ?row1 ?row2 ?col1 ?col2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-rows
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont x-wing-in-rows ?zzz ?nb ?row1 ?row2 ?col1 ?col2)
    ;;; then the candidature of this number for any cell in the two columns
    ;;; other than on the two rows ?row1 and ?row2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (column ?colz&:(or (eq ?colz ?col1) (eq ?colz ?col2)))
                        (row ?rowz&~?row1&~?row2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L2-x-wing-in-columns
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
    
    ;;; then the candidature of this number for any cell in the two rows
    ;;; other than on the two columns ?col1 and ?col2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (column ?colz&~?col1&~?col2))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
            (printout t "x-wing-in-columns: "
                (number-name ?nb)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nb)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont x-wing-in-columns ?zzz ?nb ?col1 ?col2 ?row1 ?row2))
    )
)


(defrule apply-to-more-targets-L2-x-wing-in-columns
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (pseudo-blocked ?cont x-wing-in-columns ?zzz ?nb ?col1 ?col2 ?row1 ?row2)
    ;;; then the candidature of this number for any cell in the two rows
    ;;; other than on the two columns ?col1 and ?col2 can be retracted
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nb)
                        (row ?rowz&:(or (eq ?rowz ?row1) (eq ?rowz ?row2)))
                         (column ?colz&~?col1&~?col2))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-x-wing*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)


