
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-1-1
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





(defrule activate-diagonal-1-1
	(declare (salience ?*detect-diagonal-1-1-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-1-1))
=>
	(assert (technique ?cont diagonal-1-1))
	(bind ?*technique* diagonal-1-1)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal 1s - inner
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-1-1-inner
	(declare (salience ?*detect-diagonal-1-1-salience*))
    (technique ?cont diagonal-1-1)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (diagonal-vector ?diag) ;;; the inner corner of the first 1 with no line
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?colH) (value 0))
    (test
        (and (eq ?colH ?col)
            (or
                (and (eq ?rowH ?row) (or (eq ?diag nw) (eq ?diag ne)))
                (and (eq ?rowH (+ ?row 1)) (or (eq ?diag sw) (eq ?diag se)))
            )
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?rowV) (column ?colV) (value 0))
    (test
        (and (eq ?rowV ?row)
            (or
                (and (eq ?colV ?col) (or (eq ?diag nw) (eq ?diag sw)))
                (and (eq ?colV (+ ?col 1)) (or (eq ?diag ne) (eq ?diag se)))
            )
        )
    )

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-1-inner ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-diagonal-1-1*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-1-1-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2)  ?*ending-cell-symbol* "-with-no-" ?diag "-inner-sides")
        )
    )
)



(defrule apply-diagonal-1-1-inner-H
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-1-1-inner ?row ?col ?diag)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?rowx ?row) (eq ?diag nw) (eq ?colx (- ?col 1)))
            (and (eq ?rowx ?row) (eq ?diag ne) (eq ?colx (+ ?col 1)))
            (and (eq ?rowx (+ ?row 1)) (eq ?diag sw) (eq ?colx (- ?col 1)))
            (and (eq ?rowx (+ ?row 1)) (eq ?diag se) (eq ?colx (+ ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-diagonal-1-1-inner-V
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diagonal-1-1-inner ?row ?col ?diag)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?colx ?col) (eq ?diag nw) (eq ?rowx (- ?row 1)))
            (and (eq ?colx ?col) (eq ?diag sw) (eq ?rowx (+ ?row 1)))
            (and (eq ?colx (+ ?col 1)) (eq ?diag ne) (eq ?rowx (- ?row 1)))
            (and (eq ?colx (+ ?col 1)) (eq ?diag se) (eq ?rowx (+ ?row 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal 1s - outer
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-1-1-outer
	(declare (salience ?*detect-diagonal-1-1-salience*))
    (technique ?cont diagonal-1-1)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (diagonal-vector ?diag) ;;; the (row, col) to (row2, col2) direction ; comment corrected 2015/04/14
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?colH) (value 0))
    (test
        (and (eq ?colH ?col)
            (or
                (and (eq ?rowH (+ ?row 1)) (or (eq ?diag nw) (eq ?diag ne)))
                (and (eq ?rowH ?row) (or (eq ?diag sw) (eq ?diag se)))
            )
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?rowV) (column ?colV) (value 0))
    (test
        (and (eq ?rowV ?row)
            (or
                (and (eq ?colV (+ ?col 1)) (or (eq ?diag nw) (eq ?diag sw)))
                (and (eq ?colV ?col) (or (eq ?diag ne) (eq ?diag se)))
            )
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-1-outer ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-diagonal-1-1*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-1-1-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2)  ?*ending-cell-symbol* "-with-no-" (opposite-diagonal ?diag) "-outer-sides") ; corrected 2015/04/14
        )
    )
)



(defrule apply-diagonal-1-1-outer-H
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-1-1-outer ?row ?col ?diag)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?rowx (- ?row 1)) (eq ?diag nw) (eq ?colx (- ?col 1)))
            (and (eq ?rowx (- ?row 1)) (eq ?diag ne) (eq ?colx (+ ?col 1)))
            (and (eq ?rowx (+ ?row 2)) (eq ?diag sw) (eq ?colx (- ?col 1)))
            (and (eq ?rowx (+ ?row 2)) (eq ?diag se) (eq ?colx (+ ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-diagonal-1-1-outer-V
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diagonal-1-1-outer ?row ?col ?diag)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?colx (- ?col 1)) (eq ?diag nw) (eq ?rowx (- ?row 1)))
            (and (eq ?colx (- ?col 1)) (eq ?diag sw) (eq ?rowx (+ ?row 1)))
            (and (eq ?colx (+ ?col 2)) (eq ?diag ne) (eq ?rowx (- ?row 1)))
            (and (eq ?colx (+ ?col 2)) (eq ?diag se) (eq ?rowx (+ ?row 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



