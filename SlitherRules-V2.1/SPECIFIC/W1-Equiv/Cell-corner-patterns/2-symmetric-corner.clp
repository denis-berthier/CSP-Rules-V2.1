
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              2 SYMMETRIC CORNER
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





;;; symmetry conditions on P values at a corner of a cell with a 2 lead to conclusions on P values at all the other corners


(defrule activate-2-symmetric-corner
	(declare (salience ?*detect-2-symmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 2-symmetric-corner))
=>
	(assert (technique ?cont 2-symmetric-corner))
)
    


(defrule detect-2-symmetric-corner
	(declare (salience ?*detect-2-symmetric-corner-salience*))
    (technique ?cont 2-symmetric-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
    (symmetric-corner ?cont ?row ?col ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 2-symmetric-corner ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-2-symmetric-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-2-in-" (row-name ?row) (column-name ?col) "-symmetric-" ?diag "-corner")
        )
    )
)




(defrule apply-2-symmetric-corner-P-concl-1
    ;;; the opposite corner is symmetric
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 2-symmetric-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (or (eq ?valx 3) (eq ?valx 6) (eq ?valx 2) (eq ?valx 7))) ; ns ew ne sw
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col)  (or (eq ?valx 3) (eq ?valx 6) (eq ?valx 2) (eq ?valx 7))) ; ns ew ne sw
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (or (eq ?valx 3) (eq ?valx 6) (eq ?valx 4) (eq ?valx 5))) ; ns ew nw se
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (or (eq ?valx 3) (eq ?valx 6) (eq ?valx 4) (eq ?valx 5))) ; ns ew nw se
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-2-symmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-2-symmetric-corner-P-concl-2
    ;;; the other corners are asymmetric
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 2-symmetric-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 2) (eq ?valx 7))) ; o ne sw
            (and (eq ?diag se) (eq ?rowx (+ ?row 1)) (eq ?colx ?col)  (or (eq ?valx 1) (eq ?valx 2) (eq ?valx 7))) ; o ne sw
            (and (eq ?diag ne) (eq ?rowx ?row) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 4) (eq ?valx 5))) ; o nw se
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 4) (eq ?valx 5))) ; o nw se
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-2-symmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-2-symmetric-corner-P-concl-3
    ;;; the other corners are asymmetric
	(declare (salience ?*apply-a-blocked-rule-salience-3*))
    (blocked ?cont 2-symmetric-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 2) (eq ?valx 7))) ; o ne sw
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx (+ ?col 1))  (or (eq ?valx 1) (eq ?valx 2) (eq ?valx 7))) ; o ne sw
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 4) (eq ?valx 5))) ; o nw se
            (and (eq ?diag sw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 4) (eq ?valx 5))) ; o nw se
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-2-symmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)

