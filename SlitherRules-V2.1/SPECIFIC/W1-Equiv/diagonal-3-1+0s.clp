
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-3-1+0s
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





(defrule activate-diagonal-3-1
	(declare (salience ?*detect-diagonal-3-1-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-3-1))
=>
	(assert (technique ?cont diagonal-3-1))
	(bind ?*technique* diagonal-3-1)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-3-1+0s and diagonal-3-1+xtd-0s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-diagonal-3-1+0s
	(declare (salience ?*detect-diagonal-3-1-salience*))
    (technique ?cont diagonal-3-1)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (diagonal-vector ?diag) ;;; 3->1 diagonal
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    ;;; need not be applied if reverse rule already used
    (not (diagonal-1-3 ?cont ?row2 ?col2 ?diag))

    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?colV) (value 0))
    (test 
        (or 
            (and (eq ?diag se) (eq ?colV (+ ?col2 1)))
            (and (eq ?diag sw) (eq ?colV ?col2))
            (and (eq ?diag ne) (eq ?colV (+ ?col2 1)))
            (and (eq ?diag nw) (eq ?colV ?col2))
        )
    )
    (candidate (context ?cont) (status c-value) (type N) (row ?rowH) (column ?col2) (value 0))
    (test 
        (or 
            (and (eq ?diag se) (eq ?rowH (+ ?row2 1)))
            (and (eq ?diag sw) (eq ?rowH (+ ?row2 1)))
            (and (eq ?diag ne) (eq ?rowH ?row2))
            (and (eq ?diag nw) (eq ?rowH ?row2))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-1 ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-diagonal-3-1*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-1-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2) ?*ending-cell-symbol* "+0s")
        )
    )
)



(defrule detect-diagonal-3-1-open-end
	(declare (salience ?*detect-diagonal-3-1-salience*))
    (technique ?cont diagonal-3-1)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (diagonal-vector ?diag) ;;; 3->1 diagonal
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    ;;; need not be applied if reverse rule already used
    (not (diagonal-1-3 ?cont ?row2 ?col2 ?diag))

    (candidate (context ?cont) (status c-value) (type V) (row ?row2) (column ?colV) (value 0))
    (test 
        (or 
            (and (eq ?diag se) (eq ?colV (+ ?col2 1)))
            (and (eq ?diag sw) (eq ?colV ?col2))
            (and (eq ?diag ne) (eq ?colV (+ ?col2 1)))
            (and (eq ?diag nw) (eq ?colV ?col2))
        )
    )
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?col2) (value 0))
    (test 
        (or 
            (and (eq ?diag se) (eq ?rowH (+ ?row2 1)))
            (and (eq ?diag sw) (eq ?rowH (+ ?row2 1)))
            (and (eq ?diag ne) (eq ?rowH ?row2))
            (and (eq ?diag nw) (eq ?rowH ?row2))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-1 ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-diagonal-3-1*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-1-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2) ?*ending-cell-symbol* "-open-end")
        )
    )
)




(defrule apply-diagonal-3-1-open-end
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-3-1 ?row ?col ?diag)
    
    ;;; assert H and V c-values with value 1 for the outer corner of the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se)
                (or
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
            (and (eq ?diag sw)
                (or 
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?diag ne)
                (or
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
            (and (eq ?diag nw)
                (or 
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)

;;; TODO: assert H and V c-values with value 0 outside the 3





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-closed-3-1 (reverse rule)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-diagonal-closed-3-1
	(declare (salience ?*detect-diagonal-1-3-salience*))
    (technique ?cont diagonal-3-1)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (diagonal-vector ?diag) ;;; 3->1 diagonal (same as in the diagonal-3-1 rule, for efficiency reasons)
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 1))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
    ;;; need not be applied if reverse rule already used
    (not (diagonal-3-1 ?cont ?row ?col ?diag))
    
    ;;; suppose H and V c-values with value 1 for the outer corner of the 3
    (candidate (context ?cont) (status c-value) (type H) (value 1) (row ?rowH) (column ?colH))
	(test
        (or 
            (and (eq ?diag se) (eq ?rowH ?row) (eq ?colH ?col))
            (and (eq ?diag sw) (eq ?rowH ?row) (eq ?colH ?col))
            (and (eq ?diag ne) (eq ?rowH (+ ?row 1)) (eq ?colH ?col))
            (and (eq ?diag nw) (eq ?rowH (+ ?row 1)) (eq ?colH ?col))
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (value 1) (row ?rowV) (column ?colV))
	(test
        (or 
            (and (eq ?diag se) (eq ?rowV ?row) (eq ?colV ?col))
            (and (eq ?diag sw) (eq ?rowV ?row) (eq ?colV (+ ?col 1)))
            (and (eq ?diag ne) (eq ?rowV ?row) (eq ?colV ?col))
            (and (eq ?diag nw) (eq ?rowV ?row) (eq ?colV (+ ?col 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-3 ?row2 ?col2 ?diag)) ; BEWARE: ?diag indicates the 3->1 direction
	(if (or ?*print-actions* ?*print-diagonal-3-1*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-closed-3-1-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2) ?*ending-cell-symbol*)
        )
    )
)




(defrule apply-diagonal-closed-3-1
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-1-3 ?row2 ?col2 ?diag) ; BEWARE: ?diag indicates the 3->1 direction
    
    ;;; assert H and V c-values with value 0 for the 1
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test 
        (or 
            (and (eq ?type H) 
                (or (and (eq ?diag se) (eq ?rowx (+ ?row2 1)) (eq ?colx ?col2))
                    (and (eq ?diag sw) (eq ?rowx (+ ?row2 1)) (eq ?colx ?col2))
                    (and (eq ?diag ne) (eq ?rowx ?row2) (eq ?colx ?col2))
                    (and (eq ?diag nw) (eq ?rowx ?row2) (eq ?colx ?col2))
                )
            )
            (and (eq ?type V) 
                (or
                    (and (eq ?diag se) (eq ?rowx ?row2) (eq ?colx (+ ?col2 1)))
                    (and (eq ?diag sw) (eq ?rowx ?row2) (eq ?colx ?col2))
                    (and (eq ?diag ne) (eq ?rowx ?row2) (eq ?colx (+ ?col2 1)))
                    (and (eq ?diag nw) (eq ?rowx ?row2) (eq ?colx ?col2))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-1*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)





