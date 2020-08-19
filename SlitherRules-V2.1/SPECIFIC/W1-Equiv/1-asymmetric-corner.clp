
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              1-ASYMMETRIC-CORNER
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





;;; asymmetry conditions on P values at a corner of a cell with a 3 lead to conclusions on H and V values at the opposite corner (it is closed - and therefore symmetric)

;;; together with rule 2-asymmetric-corner, this rule takes care of the diagonal-3-2s-asymmetric-corner case


(defrule activate-1-asymmetric-corner
	(declare (salience ?*detect-1-asymmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 1-asymmetric-corner))
=>
	(assert (technique ?cont 1-asymmetric-corner))
)
    


(defrule detect-1-asymmetric-corner
	(declare (salience ?*detect-1-asymmetric-corner-salience*))
    (technique ?cont 1-asymmetric-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (asymmetric-corner ?cont ?row ?col ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 1-asymmetric-corner ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-1-asymmetric-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-1-in-" (row-name ?row) (column-name ?col) "-asymmetric-" ?diag "-corner")
        )
    )
)




(defrule apply-1-asymmetric-corner-P
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 1-asymmetric-corner ?row ?col ?diag)

    ;;; eliminate P candidates for the opposite corner
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col) (neq ?valx 1) (neq ?valx 5) (neq ?valx 4)) ; the opposite (nw) corner must be one of o, se, nw
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (neq ?valx 1) (neq ?valx 5) (neq ?valx 4)) ; the opposite (se) corner must be one of of o, se, nw
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (neq ?valx 1) (neq ?valx 7) (neq ?valx 2)) ; the opposite (ne) corner must be one of of o, sw, ne
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (neq ?valx 1) (neq ?valx 7) (neq ?valx 2)) ; the opposite (sw) corner must be one of of o, sw, ne
        )
    )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-1-asymmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)

