
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-1-ON-EDGE
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





;;; If two 1s are adjacent along the edge of the grid, the line between them can be X'd out, because there would be no direction for it to continue when it reached the edge.


(defrule activate-adjacent-1-1-on-edge
	(declare (salience ?*detect-adjacent-1-1-on-edge-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-1-on-edge))
=>
	(assert (technique ?cont adjacent-1-1-on-edge))
	(bind ?*technique* adjacent-1-1-on-edge)
)
    


(defrule adjacent-1-1-on-edge-in-a-row
	(declare (salience ?*detect-adjacent-1-1-on-edge-salience*))
    (technique ?cont adjacent-1-1-on-edge)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row&:(or (eq ?row 1) (eq ?row ?*nb-rows*))) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(eq ?col2 (+ ?col 1))) (value 1))
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?row) (column ?col2) (value 1))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?row) (column ?col2) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-1-1-on-edge*) then
        (printout t "w[1]-adjacent-1-1-on-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* ?*implication-sign* "V" (row-name ?row) (column-name ?col2) ?*equal-sign* 0 crlf)
    )
)


(defrule adjacent-1-1-on-edge-in-a-column
	(declare (salience ?*detect-adjacent-1-1-on-edge-salience*))
    (technique ?cont adjacent-1-1-on-edge)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col&:(or (eq ?col 1) (eq ?col ?*nb-columns*))) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (+ ?row 1))) (column ?col) (value 1))
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?row2) (column ?col) (value 1))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?row2) (column ?col) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-1-1-on-edge*) then
        (printout t "w[1]-adjacent-1-1-on-edge-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* ?*implication-sign* "H" (row-name ?row2) (column-name ?col) ?*equal-sign* 0 crlf)
    )
)
    
