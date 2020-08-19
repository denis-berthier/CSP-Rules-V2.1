
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              1-SYMMETRIC-CORNER
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





;;; symmetry conditions on P values at a corner of a cell with a 1 lead to conclusions on P values at the diagonally opposite corner (it is asymmetric)


(defrule activate-1-symmetric-corner
	(declare (salience ?*detect-1-symmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 1-symmetric-corner))
=>
	(assert (technique ?cont 1-symmetric-corner))
	(bind ?*technique* 1-symmetric-corner)
)
    



(defrule detect-1-symmetric-corner
    (declare (salience ?*detect-1-symmetric-corner-salience*))
    (technique ?cont 1-symmetric-corner)

    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (symmetric-corner ?cont ?row ?col ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 1-symmetric-corner ?row ?col ?diag))
    (if (or ?*print-actions* ?*print-1-symmetric-corner*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-1-in-" (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner")
        )
    )
)





(defrule apply-1-symmetric-corner-P
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 1-symmetric-corner ?row ?col ?diag)

    ;;; eliminate P candidates for the opposite corner
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 5) (eq ?valx 4))) ; at the opposite (nw) corner, not o, se, nw
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 5) (eq ?valx 4))) ; at the opposite (se) corner, not o, se, nw
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 7) (eq ?valx 2))) ; at the opposite (ne) corner, not o, sw, ne
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 7) (eq ?valx 2))) ; at the opposite (sw) corner, not o, sw, ne
        )
    )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-1-symmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)

