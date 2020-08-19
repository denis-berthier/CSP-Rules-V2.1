
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-3-2s+1+1+DIAGONAL-2s-3
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





;;; These rules require file detect-diagonal-3-2s.clp

(defrule activate-diag-3-2s+1+1+diag-2s-3
	(declare (salience ?*detect-diag-3-2s+1+1+diag-2s-3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diag-3-2s+1+1+diag-2s-3))
=>
	(assert (technique ?cont diag-3-2s+1+1+diag-2s-3))
	(bind ?*technique* diag-3-2s+1+1+diag-2s-3)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diag-3-2s+adj-1-1-in-a-row+diag-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diag-3-2s+adj-1-1-in-a-row+diag-2s-3
	(declare (salience ?*detect-diag-3-2s+1+1+diag-2s-3-salience*))
    (technique ?cont diag-3-2s+1+1+diag-2s-3)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col1-1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col1-2&:(eq ?col1-2 (+ ?col1-1 1))) (value 1))

    (not (3+adjacent-1-1-in-a-row+3 ?cont ?row ?col1-1 ?col1-2))
    (not (diag-3-2s+adj-1-1-in-a-row+diag-2s-3 ?cont ?row ?col1-1 ?col1-2))

    (diagonal-vector ?diag3-1&se|sw) ; direction from the first 3 to the middle of the 1s
    (candidate (context ?cont) (status c-value) (type N) (row ?row3-1&:(eq ?row3-1 (- ?row 1))) (column ?col3-1) (value ?val3-1))
    (test
        (or (and (eq ?diag3-1 se) (eq ?col3-1 ?col1-1))
            (and (eq ?diag3-1 sw) (eq ?col3-1 ?col1-2))
        )
    )
    (or (test (eq ?val3-1 3))
        (and (test (eq ?val3-1 2))
            (diagonal-3-2s ?cont ?row3-1x ?col3-1x ?row3-1 ?col3-1 ?diag3-1 ?k1 )
        )
    )

    (diagonal-vector ?diag3-2&nw|ne) ; direction from the second 3 to the middle of the 1s
    (candidate (context ?cont) (status c-value) (type N) (row ?row3-2&:(eq ?row3-2 (+ ?row 1))) (column ?col3-2) (value ?val3-2))
    (test
        (or (and (eq ?diag3-2 ne) (eq ?col3-2 ?col1-1))
            (and (eq ?diag3-2 nw) (eq ?col3-2 ?col1-2))
        )
    )

    (or (test (eq ?val3-2 3))
        (and
            (diagonal-3-2s ?cont ?row3-2x ?col3-2x ?row3-2 ?col3-2 ?diag3-2 ?k2)
            (test (eq ?val3-2 2))
        )
    )

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diag-3-2s+adj-1-1-in-a-row+diag-2s-3 ?row ?col1-1 ?col1-2))
	(if (or ?*print-actions* ?*print-diag-3-2s+1+1+diag-2s-3*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[3]-diag-3-2s-in-..." (row-name ?row3-1) (column-name ?col3-1) "+1+1-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col1-1) ?*separation-sign-in-cell* (column-name ?col1-2) ?*ending-cell-symbol* "+diag-2s-3-in-" (row-name ?row3-2) (column-name ?col3-2) "...")
        )
    )
)




(defrule apply-diag-3-2s+adj-1-1-in-a-row+diag-2s-3-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diag-3-2s+adj-1-1-in-a-row+diag-2s-3 ?row ?col1-1 ?col1-2)

    ;;; assert True V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 0) (column ?col1-2) (row ?rowx&:(or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (column ?col1-2) (row ?rowx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diag-3-2s+1+1+diag-2s-3*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?col1-2) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-diag-3-2s+adj-1-1-in-a-row+diag-2s-3-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diag-3-2s+adj-1-1-in-a-row+diag-2s-3 ?row ?col1-1 ?col1-2)
    
    ;;; assert False V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 1) (row ?row) (column ?colx&:(or (eq ?colx ?col1-1) (eq ?colx (+ ?col1-2 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?row) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diag-3-2s+1+1+diag-2s-3*) then
        (bind ?elim (str-cat ?type (row-name ?row) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diag-3-2s+adj-1-1-in-a-column+diag-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diag-3-2s+adj-1-1-in-a-column+diag-2s-3
	(declare (salience ?*detect-diag-3-2s+1+1+diag-2s-3-salience*))
    (technique ?cont diag-3-2s+1+1+diag-2s-3)
    
    (candidate (context ?cont) (status c-value) (type N) (column ?col) (row ?row1-1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (column ?col) (row ?row1-2&:(eq ?row1-2 (+ ?row1-1 1))) (value 1))
    (not (3+adjacent-1-1-in-a-column+3 ?cont ?col ?row1-1 ?row1-2))
    (not (diag-3-2s+adj-1-1-in-a-column+diag-2s-3 ?cont ?col ?row1-1 ?row1-2))

    (diagonal-vector ?diag3-1&se|ne) ; direction from the first 3 to the middle of the 1s
    (candidate (context ?cont) (status c-value) (type N) (column ?col3-1&:(eq ?col3-1 (- ?col 1))) (row ?row3-1) (value ?val3-1))
    (test
        (or (and (eq ?diag3-1 se) (eq ?row3-1 ?row1-1))
            (and (eq ?diag3-1 ne) (eq ?row3-1 ?row1-2))
        )
    )
    (or (test (eq ?val3-1 3))
        (and (test (eq ?val3-1 2))
            (diagonal-3-2s ?cont ?row3-1x ?col3-1x ?row3-1 ?col3-1 ?diag3-1 ?k1)
        )
    )

    (diagonal-vector ?diag3-2&sw|nw) ; direction from the second 3 to the middle of the 1s
    (candidate (context ?cont) (status c-value) (type N) (column ?col3-2&:(eq ?col3-2 (+ ?col 1))) (row ?row3-2) (value ?val3-2))
    (test
        (or (and (eq ?diag3-2 sw) (eq ?row3-2 ?row1-1))
            (and (eq ?diag3-2 nw) (eq ?row3-2 ?row1-2))
        )
    )
    (or (test (eq ?val3-2 3))
        (and (test (eq ?val3-2 2))
            (diagonal-3-2s ?cont ?row3-2x ?col3-2x ?row3-2 ?col3-2 ?diag3-2 ?k2)
        )
    )

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diag-3-2s+adj-1-1-in-a-column+diag-2s-3 ?col ?row1-1 ?row1-2))
	(if (or ?*print-actions* ?*print-diag-3-2s+1+1+diag-2s-3*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[3]-diag-3-2s-in-..." (row-name ?row3-1) (column-name ?col3-1) "+1+1-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row1-1) ?*separation-sign-in-cell* (row-name ?row1-2) ?*ending-cell-symbol* "+diag-2s-3-in-" (row-name ?row3-2) (column-name ?col3-2) "...")
        )
    )
)




(defrule apply-diag-3-2s+adj-1-1-in-a-column+diag-2s-3-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diag-3-2s+adj-1-1-in-a-column+diag-2s-3 ?col ?row1-1 ?row1-2)
    
    ;;; assert True V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 0) (row ?row1-2) (column ?colx&:(or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?row1-2) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diag-3-2s+1+1+diag-2s-3*) then
        (bind ?elim (str-cat ?type (row-name ?row1-2) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-diag-3-2s+adj-1-1-in-a-column+diag-2s-3-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diag-3-2s+adj-1-1-in-a-column+diag-2s-3 ?col ?row1-1 ?row1-2)

    ;;; assert False V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 1) (column ?col) (row ?rowx&:(or (eq ?rowx ?row1-1) (eq ?rowx (+ ?row1-2 1)))))
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (column ?col) (row ?rowx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diag-3-2s+1+1+diag-2s-3*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?col) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
