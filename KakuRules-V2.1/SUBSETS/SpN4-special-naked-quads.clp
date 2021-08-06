
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              SPECIAL NAKED QUADS
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

(defrule L4-special-naked-quads-in-a-row
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col2&:(< ?col1 ?col2)) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col3&:(< ?col2 ?col3)) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col3) (number ?nbx&~?nb1&~?nb4)))

	(candidate (context ?cont) (status cand) (type white) (column-of-horizontal-controller ?sec) (row ?row) (column ?col4&~?col1&~?col2&~?col3) (number ?nb2))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col4) (number ?nb3))
	(candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (type white) (row ?row) (column ?col4) (number ?nbx&~?nb2&~?nb3&~?nb4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (column-of-horizontal-controller ?sec) (row ?row)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (column ?colz&~?col1&~?col2&~?col3&~?col4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
   (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads*) then
            (printout t "special-naked-quads-in-horiz-sector: "
                (row-name ?row)
                ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2)
                ?*separation-sign-in-cell* (column-name ?col3) ?*separation-sign-in-cell* (column-name ?col4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?row) (column-name ?colz) ?*non-equal-sign* (numeral-name ?nbz)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-horizontal-sector ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4 ?sec))
    )
)


(defrule apply-to-more-targets-L4-special-naked-quads-in-a-row
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont special-naked-quads-in-horizontal-sector ?zzz ?row ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4 ?sec)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (column-of-horizontal-controller ?sec) (row ?row)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (column ?colz&~?col1&~?col2&~?col3&~?col4))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; columns

(defrule L4-special-naked-quads-in-a-column
	(declare (salience ?*naked-quads-salience*))
	(technique ?cont naked-quads)

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row1) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row1) (number ?nb2&~?nb1))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row1) (number ?nbx&~?nb1&~?nb2)))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row2&:(< ?row1 ?row2)) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row2) (number ?nb3&~?nb1&~?nb2))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row2) (number ?nbx&~?nb1&~?nb3)))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row3&:(< ?row2 ?row3)) (number ?nb1))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row3) (number ?nb4&~?nb1&~?nb2&~?nb3))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row3) (number ?nbx&~?nb1&~?nb4)))

	(candidate (context ?cont) (status cand) (type white) (row-of-vertical-controller ?sec) (column ?col) (row ?row4&~?row1&~?row2&~?row3) (number ?nb2))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row4) (number ?nb3))
	(candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row4) (number ?nb4))
	(not (candidate (context ?cont) (status cand) (type white) (column ?col) (row ?row4) (number ?nbx&~?nb2&~?nb3&~?nb4)))
    
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (type white) (row-of-vertical-controller ?sec) (column ?col)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (row ?rowz&~?row1&~?row2&~?row3&~?row4))
    ;;; if the focus list is not empty, the following condition restricts the search to the candidates in it
   (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?zzz)))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads*) then
            (printout t "special-naked-quads-in-verti-sector: "
                (column-name ?col)
                ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2)
                ?*separation-sign-in-cell* (row-name ?row3) ?*separation-sign-in-cell* (row-name ?row4) ?*ending-cell-symbol*
                ?*starting-cell-symbol* (number-name ?nb1) ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3) ?*separation-sign-in-cell* (number-name ?nb4) ?*ending-cell-symbol*
                ?*implication-sign* (row-name ?rowz) (column-name ?col) ?*non-equal-sign* (numeral-name ?nbz) 
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont special-naked-quads-in-vertical-sector ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4 ?sec))
    )
)


(defrule apply-to-more-targets-L4-special-naked-quads-in-a-column
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont special-naked-quads-in-vertical-sector ?zzz ?col ?row1 ?row2 ?row3 ?row4 ?nb1 ?nb2 ?nb3 ?nb4 ?sec)
    ;;; identify the targets
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (type white) (row-of-vertical-controller ?sec) (column ?col)
                         (number ?nbz&:(or (eq ?nbz ?nb1) (eq ?nbz ?nb2) (eq ?nbz ?nb3) (eq ?nbz ?nb4)))
                         (row ?rowz&~?row1&~?row2&~?row3&~?row4))
=>
    (retract ?cand)
    (if (or ?*print-actions* ?*print-L4* ?*print-naked-quads*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



