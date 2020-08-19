
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-1-ON-PSEUDO-EDGE
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





(defrule activate-adjacent-1-1-on-pseudo-edge
	(declare (salience ?*detect-adjacent-1-1-on-pseudo-edge-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-1-on-pseudo-edge))
=>
	(assert (technique ?cont adjacent-1-1-on-pseudo-edge))
	(bind ?*technique* adjacent-1-1-on-pseudo-edge)
)
    


(defrule adjacent-1-1-on-pseudo-edge-in-a-row
	(declare (salience ?*detect-adjacent-1-1-on-pseudo-edge-salience*))
    (technique ?cont adjacent-1-1-on-pseudo-edge)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(eq ?col2 (+ ?col 1))) (value 1))
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(or (eq ?rowy (- ?row 1)) (eq ?rowy (+ ?row 1)))) (column ?col2) (value 0))

    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?row) (column ?col2) (value 1))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?row) (column ?col2) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-1-1-on-pseudo-edge*) then
        (printout t "w[1]-adjacent-1-1-on-pseudo-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* ?*implication-sign* "V" (row-name ?row) (column-name ?col2) ?*equal-sign* 0 crlf)
    )
)


(defrule adjacent-1-1-on-pseudo-edge-in-a-column
	(declare (salience ?*detect-adjacent-1-1-on-pseudo-edge-salience*))
    (technique ?cont adjacent-1-1-on-pseudo-edge)
    
    (candidate (context ?cont) (status c-value) (type N) (column ?col) (row ?row) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (column ?col) (row ?row2&:(eq ?row2 (+ ?row 1))) (value 1))
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(or (eq ?coly (- ?col 1)) (eq ?coly (+ ?col 1)))) (row ?row2) (value 0))

    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?row2) (column ?col) (value 1))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?row2) (column ?col) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-1-1-on-pseudo-edge*) then
        (printout t "w[1]-adjacent-1-1-on-pseudo-edge-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* ?*implication-sign* "H" (row-name ?row2) (column-name ?col) ?*equal-sign* 0 crlf)
    )
)
    
