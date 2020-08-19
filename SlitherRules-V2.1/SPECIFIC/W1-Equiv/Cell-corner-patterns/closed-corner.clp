
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              CLOSED CORNER
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





;;; if a cell C has a closed corner, then:
;;; - the diagonally adjacent cell has an open corner at the common point
;;; - the opposite corner of C is not closed


(defrule activate-closed-corner
	(declare (salience ?*detect-closed-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont closed-corner))
=>
	(assert (technique ?cont closed-corner))
)
    


(defrule detect-closed-corner
	(declare (salience ?*detect-closed-corner-salience*))
    (technique ?cont closed-corner)
        
    ;;; (?row, ?col) is the cell with the closed corner
    ;;; ?diag is the direction of the closed corner in this cell
    (candidate (context ?cont) (status cand) (type B) (row ?row) (column ?col))
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?col) (value 1))
    (test (or
            (and (eq ?diag nw) (eq ?rowH ?row))
            (and (eq ?diag ne) (eq ?rowH ?row))
            (and (eq ?diag sw) (eq ?rowH (+ ?row 1)))
            (and (eq ?diag se) (eq ?rowH (+ ?row 1)))
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colV) (value 1))
    (test (or
            (and (eq ?diag nw) (eq ?colV ?col))
            (and (eq ?diag sw) (eq ?colV ?col))
            (and (eq ?diag ne) (eq ?colV (+ ?col 1)))
            (and (eq ?diag se) (eq ?colV (+ ?col 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont closed-corner ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-closed-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-"(row-name ?row) (column-name ?col) "-closed-" ?diag "-corner")
        )
    )
)




(defrule apply-closed-corner-H0
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont closed-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (row ?rowx) (column ?colx) (value 1))
    (test (or
            (and (eq ?diag nw) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
            (and (eq ?diag ne) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
            (and (eq ?diag se) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-closed-corner-V0
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont closed-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (row ?rowx) (column ?colx) (value 1))
    (test (or
            (and (eq ?diag nw) (eq ?colx ?col) (eq ?rowx (- ?row 1)))
            (and (eq ?diag sw) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
            (and (eq ?diag ne) (eq ?colx (+ ?col 1)) (eq ?rowx (- ?row 1)))
            (and (eq ?diag se) (eq ?colx (+ ?col 1)) (eq ?rowx (+ ?row 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-closed-corner-P1
    ;;; set the value of P at the closed corner
	(declare (salience ?*apply-a-blocked-rule-salience-3*))
    (blocked ?cont closed-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx ?row) (eq ?colx ?col) (eq ?valx 5)) ; se
            (and (eq ?diag ne) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (eq ?valx 7)) ; sw
            (and (eq ?diag sw) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (eq ?valx 2)) ; ne
            (and (eq ?diag se) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (eq ?valx 4)) ; nw
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-closed-corner-P2
    ;;; eliminate impossible value of P at the opposite corner
	(declare (salience ?*apply-a-blocked-rule-salience-4*))
    (blocked ?cont closed-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (eq ?valx 4)) ; nw
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (eq ?valx 2)) ; ne
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (eq ?valx 7)) ; sw
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col) (eq ?valx 5)) ; se
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)


;;; cancel the previous two rules
(defrule apply-closed-corner-P1 => )
(defrule apply-closed-corner-P2 => )

