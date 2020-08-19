
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3+1+1+3
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





(defrule activate-3+1+1+3
	(declare (salience ?*detect-3+1+1+3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 3+1+1+3))
=>
	(assert (technique ?cont 3+1+1+3))
	(bind ?*technique* 3+1+1+3)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3+1-1-in-a-row+3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule detect-3+1-1-in-a-row+3
	(declare (salience ?*detect-3+1+1+3-salience*))
    (technique ?cont 3+1+1+3)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col1-1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col1-2&:(eq ?col1-2 (+ ?col1-1 1))) (value 1))
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row3-1&:(eq ?row3-1 (- ?row 1))) (column ?col3-1&:(or (eq ?col3-1 ?col1-1) (eq ?col3-1 ?col1-2))) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3-2&:(eq ?row3-2 (+ ?row 1))) (column ?col3-2&:(or (eq ?col3-2 ?col1-1) (eq ?col3-2 ?col1-2))) (value 3))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+1-1-in-a-row+3 ?row ?col1-1 ?col1-2))
	(if (or ?*print-actions* ?*print-3+1+1+3*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[3]-3+1+1+3-in-" (row-name ?row3-1) (column-name ?col3-1) "+" (row-name ?row) ?*starting-cell-symbol* (column-name ?col1-1) ?*separation-sign-in-cell* (column-name ?col1-2) ?*ending-cell-symbol* "+" (row-name ?row3-2) (column-name ?col3-2))
        )
    )
)




(defrule apply-3+1-1-in-a-row+3-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3+1-1-in-a-row+3 ?row ?col1-1 ?col1-2)

    ;;; assert True V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 0) (column ?col1-2) (row ?rowx&:(or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (column ?col1-2) (row ?rowx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3+1+1+3*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?col1-2) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-3+1-1-in-a-row+3-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3+1-1-in-a-row+3 ?row ?col1-1 ?col1-2)
    
    ;;; assert False V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 1) (row ?row) (column ?colx&:(or (eq ?colx ?col1-1) (eq ?colx (+ ?col1-2 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?row) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3+1+1+3*) then
        (bind ?elim (str-cat ?type (row-name ?row) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3+1-1-in-a-column+3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3+1-1-in-a-column+3
	(declare (salience ?*detect-3+1+1+3-salience*))
    (technique ?cont 3+1+1+3)
    
    (candidate (context ?cont) (status c-value) (type N) (column ?col) (row ?row1-1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (column ?col) (row ?row1-2&:(eq ?row1-2 (+ ?row1-1 1))) (value 1))

    (candidate (context ?cont) (status c-value) (type N) (column ?col3-1&:(eq ?col3-1 (- ?col 1))) (row ?row3-1&:(or (eq ?row3-1 ?row1-1) (eq ?row3-1 ?row1-2))) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (column ?col3-2&:(eq ?col3-2 (+ ?col 1))) (row ?row3-2&:(or (eq ?row3-2 ?row1-1) (eq ?row3-2 ?row1-2))) (value 3))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+1-1-in-a-column+3 ?col ?row1-1 ?row1-2))
	(if (or ?*print-actions* ?*print-3+1+1+3*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[3]-3+1+1+3-in-" (row-name ?row3-1) (column-name ?col3-1) "+" (column-name ?col) ?*starting-cell-symbol* (row-name ?row1-1) ?*separation-sign-in-cell* (row-name ?row1-2) ?*ending-cell-symbol* "+" (row-name ?row3-2) (column-name ?col3-2))
        )
    )
)




(defrule apply-3+1-1-in-a-column+3-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3+1-1-in-a-column+3 ?col ?row1-1 ?row1-2)
    
    ;;; assert True V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 0) (row ?row1-2) (column ?colx&:(or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type&H) (value 1) (row ?row1-2) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3+1+1+3*) then
        (bind ?elim (str-cat ?type (row-name ?row1-2) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-3+1-1-in-a-column+3-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3+1-1-in-a-column+3 ?col ?row1-1 ?row1-2)

    ;;; assert False V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 1) (column ?col) (row ?rowx&:(or (eq ?rowx ?row1-1) (eq ?rowx (+ ?row1-2 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type&H) (value 0) (column ?col) (row ?rowx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3+1+1+3*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?col) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
