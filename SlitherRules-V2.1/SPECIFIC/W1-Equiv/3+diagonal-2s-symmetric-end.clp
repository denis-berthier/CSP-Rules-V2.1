
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3+DIAGONAL-2s-SYMMETRIC-END
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





(defrule activate-3+diagonal-2-symmetric-corner
	(declare (salience ?*detect-3+diagonal-2-symmetric-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 3+diagonal-2-symmetric-corner))
=>
	(assert (technique ?cont 3+diagonal-2-symmetric-corner))
	(bind ?*technique* 3+diagonal-2-symmetric-corner)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3+diagonal-2-symmetric-corner
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-3+diagonal-2-symmetric-corner
	(declare (salience ?*detect-3+diagonal-2-symmetric-corner-salience*))
    (technique ?cont 3+diagonal-2-symmetric-corner)
        
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
    (2-symmetric-corner ?cont ?row2 ?col2 ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2-symmetric-corner ?row ?col ?card ?diag))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2-symmetric-corner-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol*  ?diag ?*ending-cell-symbol*)
        )
    )
)




(defrule apply-3+diagonal-2-symmetric-corner-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3+diagonal-2-symmetric-corner ?row ?col ?card ?diag)
    
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




(defrule apply-3+diagonal-2-symmetric-corner-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3+diagonal-2-symmetric-corner ?row ?col ?card ?diag)

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
    



;;; the rest is useless because transfer rules and the previous one apply before the next


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; detect 3+diagonal-2s-0 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3+diagonal-2-2-symmetric-end
	(declare (salience ?*detect-3+diagonal-2-2-symmetric-end-salience*))
    (technique ?cont 3+diagonal-2-symmetric-corner)

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
    (2-symmetric-corner ?cont ?row3 ?col3 ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-symmetric-end ?row ?col ?card ?diag 2))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-symmetric-end-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row3) (column-name ?col3) ?*diagonal-symbol*  ?diag ?*ending-cell-symbol*)
        )
    )
)





(defrule detect-3+diagonal-2-2-2-symmetric-end
	(declare (salience ?*detect-3+diagonal-2-2-2-symmetric-end-salience*))
    (technique ?cont 3+diagonal-2-symmetric-corner)

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
    (2-symmetric-corner ?cont ?row4 ?col4 ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-symmetric-end ?row ?col ?card ?diag 3))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-symmetric-end-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row4) (column-name ?col4) ?*diagonal-symbol*  ?diag ?*ending-cell-symbol*)
        )
    )
)





(defrule detect-3+diagonal-2-2-2-2-symmetric-end
	(declare (salience ?*detect-3+diagonal-2-2-2-2-symmetric-end-salience*))
    (technique ?cont 3+diagonal-2-symmetric-corner)

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
    (2-symmetric-corner ?cont ?row5 ?col5 ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-symmetric-end ?row ?col ?card ?diag 4))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-symmetric-end-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row5) (column-name ?col5) ?*diagonal-symbol*  ?diag ?*ending-cell-symbol*)
        )
    )
)




(defrule detect-3+diagonal-2-2-2-2-2-symmetric-end
	(declare (salience ?*detect-3+diagonal-2-2-2-2-2-symmetric-end-salience*))
    (technique ?cont 3+diagonal-2-symmetric-corner)

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
    (2-symmetric-corner ?cont ?row6 ?col6 ?diag)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3+diagonal-2s-symmetric-end ?row ?col ?card ?diag 5))
	(if (or ?*print-actions* ?*print-3+diagonal-2s-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3+diagonal-2s-symmetric-end-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) "+" (row-name ?row2) (column-name ?col2) ?*diagonal-symbol* (row-name ?row6) (column-name ?col6) ?*diagonal-symbol*  ?diag ?*ending-cell-symbol*)
        )
    )
)


    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; apply 3+diagonal-2s-symmetric-end
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule apply-3+diagonal-2s-symmetric-end-T
    ;;; same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3+diagonal-2s-symmetric-end ?row ?col ?card ?diag ?k)

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




(defrule apply-3+diagonal-2s-symmetric-end-F
    ;;; same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3+diagonal-2-symmetric-corner ?row ?col ?card ?diag)

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




