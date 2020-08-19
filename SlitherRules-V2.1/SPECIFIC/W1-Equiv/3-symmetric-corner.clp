
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3 SYMMETRIC CORNER
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





;;; symmetry conditions on P values at a corner of a cell with a 3 lead to conclusions on H and V values at this corner (it is closed) and on P values at the diagonally opposite corner (it is asymmetric)

;;; together with rule 2-symmetric-corner, this rule takes care of the diagonal-3-2s-0 and the diagonal-3-2s-symmetric-corner cases


(defrule activate-3-symmetric-corner
	(declare (salience ?*detect-3-symmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 3-symmetric-corner))
=>
	(assert (technique ?cont 3-symmetric-corner))
	(bind ?*technique* 3-symmetric-corner)
)
    



(defrule detect-3-symmetric-corner
    (declare (salience ?*detect-3-symmetric-corner-salience*))
    (technique ?cont 3-symmetric-corner)

    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (symmetric-corner ?cont ?row ?col ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-symmetric-corner ?row ?col ?diag))
    (if (or ?*print-actions* ?*print-3-symmetric-corner*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-3-in-" (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner")
        )
    )
)




(defrule apply-3-symmmetric-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont 3-symmetric-corner ?row ?col ?diag)

    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; nw symmetric corner
            (and (eq ?diag nw)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
            ;;; ne symmetric corner
            (and (eq ?diag ne)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            ;;; se symmetric corner
            (and (eq ?diag se)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            ;;; sw symmetric corner
            (and (eq ?diag sw)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-symmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   





(defrule apply-3-symmetric-corner-P
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3-symmetric-corner ?row ?col ?diag)

    ;;; eliminate P candidates for the opposite corner
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
    (if (or ?*print-actions* ?*print-3-symmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)

;;; cancel the previous rule

(defrule apply-3-symmetric-corner-P
=>
)
