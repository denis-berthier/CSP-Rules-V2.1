
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              2 OPEN CORNER
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





(defrule activate-2-open-corner
	(declare (salience ?*detect-2-open-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 2-open-corner))
=>
	(assert (technique ?cont 2-open-corner))
)
    


(defrule detect-2-open-corner
	(declare (salience ?*detect-2-open-corner-salience*))
    (technique ?cont 2-open-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?col) (value 0))
    (test (or
            (and (eq ?diag nw) (eq ?rowH ?row))
            (and (eq ?diag ne) (eq ?rowH ?row))
            (and (eq ?diag sw) (eq ?rowH (+ ?row 1)))
            (and (eq ?diag se) (eq ?rowH (+ ?row 1)))
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?colV) (value 0))
    (test (or
            (and (eq ?diag nw) (eq ?colV ?col))
            (and (eq ?diag sw) (eq ?colV ?col))
            (and (eq ?diag ne) (eq ?colV (+ ?col 1)))
            (and (eq ?diag se) (eq ?colV (+ ?col 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 2-open-corner ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-2-open-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-2-in-" (row-name ?row) (column-name ?col) "-open-" ?diag "-corner")
        )
    )
)




(defrule apply-2-open-corner-H1
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 2-open-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (row ?rowx) (column ?colx&?col) (value 0))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)))
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)))
            (and (eq ?diag sw) (eq ?rowx ?row))
            (and (eq ?diag se) (eq ?rowx ?row))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-2-open-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-2-open-corner-V1
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 2-open-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (row ?rowx&?row) (column ?colx) (value 0))
    (test (or
            (and (eq ?diag nw) (eq ?colx (+ ?col 1)))
            (and (eq ?diag sw) (eq ?colx (+ ?col 1)))
            (and (eq ?diag ne) (eq ?colx ?col))
            (and (eq ?diag se) (eq ?colx ?col))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-2-open-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-2-open-corner-H0
	(declare (salience ?*apply-a-blocked-rule-salience-3*))
    (blocked ?cont 2-open-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (row ?rowx) (column ?colx) (value 1))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-2-open-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-2-open-corner-V0
	(declare (salience ?*apply-a-blocked-rule-salience-4*))
    (blocked ?cont 2-open-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (row ?rowx) (column ?colx) (value 1))
    (test (or
            (and (eq ?diag nw) (eq ?colx (+ ?col 1)) (eq ?rowx (+ ?row 1)))
            (and (eq ?diag sw) (eq ?colx (+ ?col 1)) (eq ?rowx (- ?row 1)))
            (and (eq ?diag ne) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
            (and (eq ?diag se) (eq ?colx ?col) (eq ?rowx (- ?row 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-2-open-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-2-open-corner-P-dest
	(declare (salience ?*apply-a-blocked-rule-salience-5*))
    (blocked ?cont 2-open-corner ?row ?col ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&P) (row ?rowx) (column ?colx) (value ?valx))
    (test (or
            (and (eq ?diag nw) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)) (eq ?valx 4)) ; nw
            (and (eq ?diag ne) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (eq ?valx 2)) ; ne
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)) (eq ?valx 7)) ; sw
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col) (eq ?valx 5)) ; se
        )
    )
=>
    (modify ?cand (status c-value))
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-2-open-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (P-value-name ?valx)))
        (add-elimination-to-blocked-rule ?elim)
	)
)

;;; cancel the previous rule
(defrule apply-2-open-corner-P-dest => )


