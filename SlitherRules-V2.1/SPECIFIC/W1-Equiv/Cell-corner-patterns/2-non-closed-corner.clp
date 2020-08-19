
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              2 NON CLOSED CORNER
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





(defrule activate-2-non-closed-corner
	(declare (salience ?*detect-2-non-closed-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 2-non-closed-corner))
=>
	(assert (technique ?cont 2-non-closed-corner))
)
    


(defrule detect-2-non-closed-corner
	(declare (salience ?*detect-2-non-closed-corner-salience*))
    (technique ?cont 2-non-closed-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
    (diagonal-vector ?diag)
    (or 
        (and (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?col) (value 0))
             (test (or
                        (and (eq ?diag nw) (eq ?rowH ?row))
                        (and (eq ?diag ne) (eq ?rowH ?row))
                        (and (eq ?diag sw) (eq ?rowH (+ ?row 1)))
                        (and (eq ?diag se) (eq ?rowH (+ ?row 1)))
                    )
            )
        )
        (and (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colV) (value 0))
             (test (or
                        (and (eq ?diag nw) (eq ?colV ?col))
                        (and (eq ?diag sw) (eq ?colV ?col))
                        (and (eq ?diag ne) (eq ?colV (+ ?col 1)))
                        (and (eq ?diag se) (eq ?colV (+ ?col 1)))
                    )
            )
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 2-non-closed-corner ?row ?col ?diag))
	(if (or ?*print-corner-details* ?*print-2-non-closed-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-2-in-" (row-name ?row) (column-name ?col) "-non-closed-" ?diag "-corner")
        )
    )
)




(defrule apply-2-non-closed-corner-P-given
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 2-non-closed-corner ?row ?col ?diag)
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
	(if (or ?*print-corner-details* ?*print-2-non-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)


(defrule apply-2-non-closed-corner-P-concl
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 2-non-closed-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 5))) ; se
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 7))) ; sw
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (or (eq ?valx 1) (eq ?valx 2))) ; ne
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col) (or (eq ?valx 1) (eq ?valx 4))) ; nw
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-corner-details* ?*print-2-non-closed-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)

