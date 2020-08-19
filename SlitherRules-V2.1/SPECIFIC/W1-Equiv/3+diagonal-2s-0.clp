
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3+DIAGONAL-2s-0
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





(defrule activate-3+diagonal-2-0
	(declare (salience ?*detect-3+diagonal-2-0-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 3+diagonal-2-0))
=>
	(assert (technique ?cont 3+diagonal-2-0))
	(bind ?*technique* 3+diagonal-2-0)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3+diagonal-2-0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-3+diagonal-2-0
	(declare (salience ?*detect-3+diagonal-2-0-salience*))
    (technique ?cont 3+diagonal-2-0)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (cardinal-point ?card) ;;; 3-2 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 2))
    (test (is-direction ?card ?row ?col ?row2 ?col2))

    (diagonal-vector ?diag) ;;; 2-0 direction
    (test 
        (or 
            (and (eq ?card n) (or (eq ?diag nw) (eq ?diag ne)))
            (and (eq ?card s) (or (eq ?diag sw) (eq ?diag se)))
            (and (eq ?card w) (or (eq ?diag nw) (eq ?diag sw)))
            (and (eq ?card e) (or (eq ?diag ne) (eq ?diag se)))
        )
    )
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?diag ?row2 ?col2 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2-0 ?row ?col ?card ?diag))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2-0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol*  (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)




(defrule apply-3+diagonal-2-0-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3+diagonal-2-0 ?row ?col ?card ?diag)
    
    ;;; assert H and V c-values with value 1 for the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?card n) 
                (or 
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag nw) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag ne) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            
                )
            )
            (and (eq ?card s) 
                (or 
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag sw) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag se) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            
                )
            )
            (and (eq ?card w) 
                (or 
                    (and (eq ?type V) (eq ?colx (+ ?col 1)) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag nw) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag sw) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
            
                )
            )
            (and (eq ?card e) 
                (or 
                    (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag ne) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag se) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-3+diagonal-2-0-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3+diagonal-2-0 ?row ?col ?card ?diag)
    
    ;;; assert H and V c-values with value 0 around the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?card n) (eq ?diag nw)
                (or 
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?card n) (eq ?diag ne)
                (or 
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?card s) (eq ?diag sw)
                (or 
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?card s) (eq ?diag se)
                (or 
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?card w) (eq ?diag nw)
                (or 
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (eq ?rowx ?row))
                )
            )
            (and (eq ?card w) (eq ?diag sw)
                (or 
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (eq ?rowx (+ ?row 1)))
                )
            )
            (and (eq ?card e) (eq ?diag ne)
                (or 
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (eq ?rowx ?row))
                )
            )
            (and (eq ?card e) (eq ?diag se)
                (or 
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (eq ?rowx (+ ?row 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; detect 3+diagonal-2s-0 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3+diagonal-2-2-0
	(declare (salience ?*detect-3+diagonal-2-2-0-salience*))
    (technique ?cont 3+diagonal-2-0)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (cardinal-point ?card) ;;; 3-2 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 2))
    (test (is-direction ?card ?row ?col ?row2 ?col2))

    (diagonal-vector ?diag) ;;; 2-0 direction
    (test 
        (or 
            (and (eq ?card n) (or (eq ?diag nw) (eq ?diag ne)))
            (and (eq ?card s) (or (eq ?diag sw) (eq ?diag se)))
            (and (eq ?card w) (or (eq ?diag nw) (eq ?diag sw)))
            (and (eq ?card e) (or (eq ?diag ne) (eq ?diag se)))
        )
    )

    (diagonal-2s ?cont ?row2 ?col2 ?row3 ?col3 ?diag 2)

    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?diag ?row3 ?col3 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-0 ?row ?col ?card ?diag 2))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row3) (column-name ?col3) ?*separation-sign-in-cell*  (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)





(defrule detect-3+diagonal-2-2-2-0
	(declare (salience ?*detect-3+diagonal-2-2-2-0-salience*))
    (technique ?cont 3+diagonal-2-0)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (cardinal-point ?card) ;;; 3-2 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 2))
    (test (is-direction ?card ?row ?col ?row2 ?col2))

    (diagonal-vector ?diag) ;;; 2-0 direction
    (test 
        (or 
            (and (eq ?card n) (or (eq ?diag nw) (eq ?diag ne)))
            (and (eq ?card s) (or (eq ?diag sw) (eq ?diag se)))
            (and (eq ?card w) (or (eq ?diag nw) (eq ?diag sw)))
            (and (eq ?card e) (or (eq ?diag ne) (eq ?diag se)))
        )
    )
    (diagonal-2s ?cont ?row2 ?col2 ?row4 ?col4 ?diag 3)

    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?diag ?row4 ?col4 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-0 ?row ?col ?card ?diag 3))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row4) (column-name ?col4) ?*separation-sign-in-cell*  (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)





(defrule detect-3+diagonal-2-2-2-2-0
	(declare (salience ?*detect-3+diagonal-2-2-2-2-0-salience*))
    (technique ?cont 3+diagonal-2-0)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (cardinal-point ?card) ;;; 3-2 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 2))
    (test (is-direction ?card ?row ?col ?row2 ?col2))

    (diagonal-vector ?diag) ;;; 2-0 direction
    (test 
        (or 
            (and (eq ?card n) (or (eq ?diag nw) (eq ?diag ne)))
            (and (eq ?card s) (or (eq ?diag sw) (eq ?diag se)))
            (and (eq ?card w) (or (eq ?diag nw) (eq ?diag sw)))
            (and (eq ?card e) (or (eq ?diag ne) (eq ?diag se)))
        )
    )
    (diagonal-2s ?cont ?row2 ?col2 ?row5 ?col5 ?diag 4)

    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?diag ?row5 ?col5 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-0 ?row ?col ?card ?diag 4))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row5) (column-name ?col5) ?*separation-sign-in-cell*  (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)




(defrule detect-3+diagonal-2-2-2-2-2-0
	(declare (salience ?*detect-3+diagonal-2-2-2-2-2-0-salience*))
    (technique ?cont 3+diagonal-2-0)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (cardinal-point ?card) ;;; 3-2 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 2))
    (test (is-direction ?card ?row ?col ?row2 ?col2))

    (diagonal-vector ?diag) ;;; 2-0 direction
    (test 
        (or 
            (and (eq ?card n) (or (eq ?diag nw) (eq ?diag ne)))
            (and (eq ?card s) (or (eq ?diag sw) (eq ?diag se)))
            (and (eq ?card w) (or (eq ?diag nw) (eq ?diag sw)))
            (and (eq ?card e) (or (eq ?diag ne) (eq ?diag se)))
        )
    )
    (diagonal-2s ?cont ?row2 ?col2 ?row6 ?col6 ?diag 5)

    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?diag ?row6 ?col6 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-0 ?row ?col ?card ?diag 5))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row6) (column-name ?col6) ?*separation-sign-in-cell*  (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)


    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; apply diagonally adjacent 3s separated by a certain number of 2s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule apply-3+diagonal-2s-0-T
    ;;; same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3+diagonal-2s-0 ?row ?col ?card ?diag ?k)
    
    ;;; assert H and V c-values with value 1 for the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?card n) 
                (or 
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag nw) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag ne) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            
                )
            )
            (and (eq ?card s) 
                (or 
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag sw) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?diag se) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
            
                )
            )
            (and (eq ?card w) 
                (or 
                    (and (eq ?type V) (eq ?colx (+ ?col 1)) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag nw) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag sw) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
            
                )
            )
            (and (eq ?card e) 
                (or 
                    (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag ne) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type H) (eq ?diag se) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-3+diagonal-2s-0-F
    ;;; same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3+diagonal-2s-0 ?row ?col ?card ?diag ?k)
    
    ;;; assert H and V c-values with value 0 around the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?card n) (eq ?diag nw)
                (or 
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?card n) (eq ?diag ne)
                (or 
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?card s) (eq ?diag sw)
                (or 
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?card s) (eq ?diag se)
                (or 
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?card w) (eq ?diag nw)
                (or 
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (eq ?rowx ?row))
                )
            )
            (and (eq ?card w) (eq ?diag sw)
                (or 
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (eq ?rowx (+ ?row 1)))
                )
            )
            (and (eq ?card e) (eq ?diag ne)
                (or 
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (eq ?rowx ?row))
                )
            )
            (and (eq ?card e) (eq ?diag se)
                (or 
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (eq ?rowx (+ ?row 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




