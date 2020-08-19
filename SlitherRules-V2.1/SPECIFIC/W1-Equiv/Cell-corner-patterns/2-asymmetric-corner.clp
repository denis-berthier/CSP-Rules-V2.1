
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              2 ASYMMETRIC CORNER
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





;;; asymmetry conditions on P values at a corner of a cell with a 2 lead to conclusions on P values at the diagonally opposite corner


(defrule activate-2-asymmetric-corner
	(declare (salience ?*detect-2-asymmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 2-asymmetric-corner))
=>
	(assert (technique ?cont 2-asymmetric-corner))
)
    


(defrule detect-2-asymmetric-corner
	(declare (salience ?*detect-2-asymmetric-corner-salience*))
    (technique ?cont 2-asymmetric-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
    (asymmetric-corner ?cont ?row ?col ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 2-asymmetric-corner ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-2-asymmetric-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-2-in-" (row-name ?row) (column-name ?col) "-asymmetric-" ?diag "-corner")
        )
    )
)




(defrule apply-2-asymmetric-corner-P-concl-1
    ;;; the opposite corner is asymmetric
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 2-asymmetric-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (and (neq ?valx 3) (neq ?valx 6) (neq ?valx 2) (neq ?valx 7))) ; ns ew ne sw
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col)  (and (neq ?valx 3) (neq ?valx 6) (neq ?valx 2) (neq ?valx 7))) ; ns ew ne sw
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (and (neq ?valx 3) (neq ?valx 6) (neq ?valx 4) (neq ?valx 5))) ; ns ew nw se
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (and (neq ?valx 3) (neq ?valx 6) (neq ?valx 4) (neq ?valx 5))) ; ns ew nw se
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-2-asymmetric-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)



;;; notice that the adjacent corners can be symmetric or asymmetric


