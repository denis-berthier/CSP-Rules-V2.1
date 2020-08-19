
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3 CLOSED CORNER
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





(defrule activate-3-closed-corner
	(declare (salience ?*detect-3-closed-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont corners))
=>
	(assert (technique ?cont 3-closed-corner))
	(bind ?*technique* 3-closed-corner)
)
    


(defrule detect-3-closed-corner
	(declare (salience ?*detect-3-closed-corner-salience*))
    (technique ?cont 3-closed-corner)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?col) (value 1))
    (test
        (or (and (eq ?diag nw) (eq ?rowH ?row))
            (and (eq ?diag ne) (eq ?rowH ?row))
            (and (eq ?diag se) (eq ?rowH (+ ?row 1)))
            (and (eq ?diag sw) (eq ?rowH (+ ?row 1)))
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colV) (value 1))
    (test
        (or (and (eq ?diag nw) (eq ?colV ?col))
            (and (eq ?diag sw) (eq ?colV ?col))
            (and (eq ?diag ne) (eq ?colV (+ ?col 1)))
            (and (eq ?diag se) (eq ?colV (+ ?col 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-closed-corner ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-3-closed-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3-in-" (row-name ?row) (column-name ?col) "-closed-" ?diag "-corner"))
    )
)




(defrule apply-3-closed-corner-P
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont 3-closed-corner ?row ?col ?diag)
    ;;; eliminate P candidates for the opposite point
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
	(test
        (or
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 5) (eq ?valx 4))) ; at the opposite (nw) point, not o, se, nw
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 5) (eq ?valx 4))) ; at the opposite (se) point, not o, se, nw
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 7) (eq ?valx 2))) ; at the opposite (ne) point, not o, sw, ne
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 7) (eq ?valx 2))) ; at the opposite (sw) point, not o, sw, ne
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   


