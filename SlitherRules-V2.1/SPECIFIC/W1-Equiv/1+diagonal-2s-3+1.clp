
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              1+DIAGONAL-2s-3+1
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





(defrule activate-1+3+1
	(declare (salience ?*detect-1+3+1-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 1+3+1))
=>
	(assert (technique ?cont 1+3+1))
	(bind ?*technique* 1+3+1)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1+3+1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-1+3+1
	(declare (salience ?*detect-1+3+1-salience*))
    (technique ?cont 1+3+1)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (diagonal-vector ?diag&:(or (eq ?diag se) (eq ?diag sw))) ;;; the inner corner of the first 1 with no line
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3) (column ?col3) (value 3))
    (test
        (or
            (and (eq ?row3 ?row) (eq ?col3 ?col2))
            (and (eq ?row3 ?row2) (eq ?col3 ?col))
        )
    )

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 1+3+1 ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-1+3+1*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-1+3+1-in-" (row-name ?row) (column-name ?col) "+" (row-name ?row3) (column-name ?col3) "+" (row-name ?row2) (column-name ?col2))
        )
    )
)



(defrule apply-1+3+1-H
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (or
        (blocked ?cont 1+3+1 ?row ?col ?diag)
        (blocked ?cont 1+diagonal-2s-3+1 ?row ?col ?diag)
    )

    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col))
            (and (eq ?diag se) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx ?col))
            (and (eq ?diag sw) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-1+3+1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-1+3+1-V
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (or
        (blocked ?cont 1+3+1 ?row ?col ?diag)
        (blocked ?cont 1+diagonal-2s-3+1 ?row ?col ?diag)
    )

    ;;; assert V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se) (eq ?rowx ?row) (eq ?colx ?col))
            (and (eq ?diag se) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 2)))
            (and (eq ?diag sw) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-1+3+1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 1+(diagonal-2s-3)+1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule activate-1+diagonal-2s-3+1
    (declare (salience ?*detect-1+diagonal-2s-3+1-salience*))
    (logical (context (name ?cont)) (technique ?cont BRT))
    (not (deactivate ?cont 1+diagonal-2s-3+1))
=>
    (assert (technique ?cont 1+diagonal-2s-3+1))
    (bind ?*technique* 1+diagonal-2s-3+1)
)



(defrule detect-1+diagonal-2s-3+1
    (declare (salience ?*detect-1+diagonal-2s-3+1-salience*))
    (technique ?cont 1+diagonal-2s-3+1)

    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (diagonal-vector ?diag&:(or (eq ?diag se) (eq ?diag sw))) ;;; the inner corner of the first 1 with no line
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3) (column ?col3) (value 2))
    (diagonal-3-2s ?cont ?row1 ?col1 ?row3 ?col3 ?diag2s ?k)
    (test
        (or
            (and (eq ?diag se) (eq ?row3 ?row) (eq ?col3 ?col2) (eq ?diag2s sw))
            (and (eq ?diag se) (eq ?row3 ?row2) (eq ?col3 ?col) (eq ?diag2s ne))
            (and (eq ?diag sw) (eq ?row3 ?row) (eq ?col3 ?col2) (eq ?diag2s se))
            (and (eq ?diag sw) (eq ?row3 ?row2) (eq ?col3 ?col) (eq ?diag2s nw))
        )
    )

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 1+diagonal-2s-3+1 ?row ?col ?diag))
    (if (or ?*print-actions* ?*print-1+3+1*) then
    (bind ?*blocked-rule-description*
        (str-cat "w[1]-1+diagonal-2s-3+1-in-" (row-name ?row) (column-name ?col) "+" (row-name ?row3) (column-name ?col3) "+" (row-name ?row2) (column-name ?col2))
        )
    )
)





