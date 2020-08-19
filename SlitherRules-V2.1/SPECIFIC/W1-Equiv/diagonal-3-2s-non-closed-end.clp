
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-3-2s-NON-CLOSED-END
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





;;; This is an extension of the 3-2...-2+0 pattern



(defrule activate-diagonal-3-2-non-closed-corner
	(declare (salience ?*detect-diagonal-3-2-non-closed-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-3-2-non-closed-corner))
=>
	(assert (technique ?cont diagonal-3-2-non-closed-corner))
	(bind ?*technique* diagonal-3-2-non-closed-corner)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-3-2-non-closed-corner
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-diagonal-3-2-non-closed-corner
	(declare (salience ?*detect-diagonal-3-2-non-closed-corner-salience*))
    (technique ?cont diagonal-3-2-non-closed-corner)
        
    (diagonal-3-2s ?cont ?row ?col ?row2 ?col2 ?diag 2)

    (cardinal-point ?card) ;;; 2-0 direction
    (test 
        (or 
            (and (eq ?diag se) (or (eq ?card e) (eq ?card s)))
            (and (eq ?diag sw) (or (eq ?card w) (eq ?card s)))
            (and (eq ?diag ne) (or (eq ?card e) (eq ?card n)))
            (and (eq ?diag nw) (or (eq ?card w) (eq ?card n)))
        )
    )
    (candidate (context ?cont) (status c-value) (type ?type&H|V) (row ?row0) (column ?col0) (value 0))
    (test 
        (or 
            (and (eq ?type H) (eq ?card n) (eq ?row0 ?row2) (eq ?col0 ?col2))
            (and (eq ?type H) (eq ?card s) (eq ?row0 (+ ?row2 1)) (eq ?col0 ?col2))
            (and (eq ?type V) (eq ?card w) (eq ?row0 ?row2) (eq ?col0 ?col2))
            (and (eq ?type V) (eq ?card e) (eq ?row0 ?row2) (eq ?col0 (+ ?col2 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2-non-closed-corner ?row ?col ?row2 ?col2 ?diag ?card))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2) ?*ending-cell-symbol* "-non-closed-" ?diag "-corner")
        )
    )
)




(defrule apply-diagonal-3-2-non-closed-corner-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-3-2-non-closed-corner ?row ?col ?row2 ?col2 ?diag ?card)
    
    ;;; assert H and V c-values with value 1
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se)
                (or
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around the 2
                    (and (eq ?card e) (eq ?type H) (eq ?rowx (+ ?row2 1)) (eq ?colx ?col2))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx ?row2) (eq ?colx (+ ?col2 1)))
                )
            )
            (and (eq ?diag sw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx (+ ?row2 1)) (eq ?colx ?col2))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx ?row2) (eq ?colx ?col2))
                )
            )
            (and (eq ?diag ne)
                (or
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around the 2
                    (and (eq ?card e) (eq ?type H) (eq ?rowx ?row2) (eq ?colx ?col2))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx ?row2) (eq ?colx (+ ?col2 1)))
                )
            )
            (and (eq ?diag nw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx ?row2) (eq ?colx ?col2))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx ?row2) (eq ?colx ?col2))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-diagonal-3-2-non-closed-corner-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diagonal-3-2-non-closed-corner ?row ?col ?row2 ?col2 ?diag ?card)
    
    ;;; assert H and V c-values with value 0
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se)
                (or
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?diag sw)
                (or 
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?diag ne)
                (or
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?diag nw)
                (or 
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; detect diagonal-3-2s-non-closed-end
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-3-2-2-non-closed-end
	(declare (salience ?*detect-diagonal-3-2-2-non-closed-end-salience*))
    (technique ?cont diagonal-3-2-non-closed-corner)
        
    (diagonal-3-2s ?cont ?row ?col ?row3 ?col3 ?diag 3)

    (cardinal-point ?card) ;;; final 2-0 direction
    (test 
        (or 
            (and (eq ?diag se) (or (eq ?card e) (eq ?card s)))
            (and (eq ?diag sw) (or (eq ?card w) (eq ?card s)))
            (and (eq ?diag ne) (or (eq ?card e) (eq ?card n)))
            (and (eq ?diag nw) (or (eq ?card w) (eq ?card n)))
        )
    )
    (candidate (context ?cont) (status c-value) (type ?type&H|V) (row ?row0) (column ?col0) (value 0))
    (test 
        (or 
            (and (eq ?type H) (eq ?card n) (eq ?row0 ?row3) (eq ?col0 ?col3))
            (and (eq ?type H) (eq ?card s) (eq ?row0 (+ ?row3 1)) (eq ?col0 ?col3))
            (and (eq ?type V) (eq ?card w) (eq ?row0 ?row3) (eq ?col0 ?col3))
            (and (eq ?type V) (eq ?card e) (eq ?row0 ?row3) (eq ?col0 (+ ?col3 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-non-closed-end ?row ?col ?row3 ?col3 ?diag ?card))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2s-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row3) (column-name ?col3) ?*ending-cell-symbol* "-non-closed-" ?diag "-end")
        )
    )
)




(defrule detect-diagonal-3-2-2-2-non-closed-end
    (declare (salience ?*detect-diagonal-3-2-2-2-non-closed-end-salience*))
    (technique ?cont diagonal-3-2-non-closed-corner)
        
    (diagonal-3-2s ?cont ?row ?col ?row4 ?col4 ?diag 4)

    (cardinal-point ?card) ;;; final 2-0 direction
    (test 
        (or 
            (and (eq ?diag se) (or (eq ?card e) (eq ?card s)))
            (and (eq ?diag sw) (or (eq ?card w) (eq ?card s)))
            (and (eq ?diag ne) (or (eq ?card e) (eq ?card n)))
            (and (eq ?diag nw) (or (eq ?card w) (eq ?card n)))
        )
    )
    (candidate (context ?cont) (status c-value) (type ?type&H|V) (row ?row0) (column ?col0) (value 0))
    (test 
        (or 
            (and (eq ?type H) (eq ?card n) (eq ?row0 ?row4) (eq ?col0 ?col4))
            (and (eq ?type H) (eq ?card s) (eq ?row0 (+ ?row4 1)) (eq ?col0 ?col4))
            (and (eq ?type V) (eq ?card w) (eq ?row0 ?row4) (eq ?col0 ?col4))
            (and (eq ?type V) (eq ?card e) (eq ?row0 ?row4) (eq ?col0 (+ ?col4 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-non-closed-end ?row ?col ?row4 ?col4 ?diag ?card))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2s-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row4) (column-name ?col4) ?*ending-cell-symbol* "-non-closed-" ?diag "-end")
        )
    )
)




(defrule detect-diagonal-3-2-2-2-2-non-closed-end
    (declare (salience ?*detect-diagonal-3-2-2-2-2-non-closed-end-salience*))
    (technique ?cont diagonal-3-2-non-closed-corner)
        
    (diagonal-3-2s ?cont ?row ?col ?row5 ?col5 ?diag 5)

    (cardinal-point ?card) ;;; final 2-0 direction
    (test 
        (or 
            (and (eq ?diag se) (or (eq ?card e) (eq ?card s)))
            (and (eq ?diag sw) (or (eq ?card w) (eq ?card s)))
            (and (eq ?diag ne) (or (eq ?card e) (eq ?card n)))
            (and (eq ?diag nw) (or (eq ?card w) (eq ?card n)))
        )
    )
    (candidate (context ?cont) (status c-value) (type ?type&H|V) (row ?row0) (column ?col0) (value 0))
    (test 
        (or 
            (and (eq ?type H) (eq ?card n) (eq ?row0 ?row5) (eq ?col0 ?col5))
            (and (eq ?type H) (eq ?card s) (eq ?row0 (+ ?row5 1)) (eq ?col0 ?col5))
            (and (eq ?type V) (eq ?card w) (eq ?row0 ?row5) (eq ?col0 ?col5))
            (and (eq ?type V) (eq ?card e) (eq ?row0 ?row5) (eq ?col0 (+ ?col5 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-non-closed-end ?row ?col ?row5 ?col5 ?diag ?card))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2s-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row5) (column-name ?col5) ?*ending-cell-symbol* "-non-closed-" ?diag "-end")
        )
    )
)




(defrule detect-diagonal-3-2-2-2-2-2-non-closed-end
    (declare (salience ?*detect-diagonal-3-2-2-2-2-2-non-closed-end-salience*))
    (technique ?cont diagonal-3-2-non-closed-corner)
        
    (diagonal-3-2s ?cont ?row ?col ?row6 ?col6 ?diag 6)

    (cardinal-point ?card) ;;; final 2-0 direction
    (test 
        (or 
            (and (eq ?diag se) (or (eq ?card e) (eq ?card s)))
            (and (eq ?diag sw) (or (eq ?card w) (eq ?card s)))
            (and (eq ?diag ne) (or (eq ?card e) (eq ?card n)))
            (and (eq ?diag nw) (or (eq ?card w) (eq ?card n)))
        )
    )
    (candidate (context ?cont) (status c-value) (type ?type&H|V) (row ?row0) (column ?col0) (value 0))
    (test 
        (or 
            (and (eq ?type H) (eq ?card n) (eq ?row0 ?row6) (eq ?col0 ?col6))
            (and (eq ?type H) (eq ?card s) (eq ?row0 (+ ?row6 1)) (eq ?col0 ?col6))
            (and (eq ?type V) (eq ?card w) (eq ?row0 ?row6) (eq ?col0 ?col6))
            (and (eq ?type V) (eq ?card e) (eq ?row0 ?row6) (eq ?col0 (+ ?col6 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-non-closed-end ?row ?col ?row6 ?col6 ?diag ?card))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2s-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row6) (column-name ?col6) ?*ending-cell-symbol* "-non-closed-" ?diag "-end")
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


(defrule apply-diagonal-3-2s-non-closed-end-T
    ;;; part around the 3, same as the case with only one 2
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-3-2s-non-closed-end ?row ?col ?row2 ?col2 ?diag ?card)
    
    ;;; assert H and V c-values with value 1
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se)
                (or
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around the 2
                    (and (eq ?card e) (eq ?type H) (eq ?rowx (+ ?row2 1)) (eq ?colx ?col2))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx ?row2) (eq ?colx (+ ?col2 1)))
                )
            )
            (and (eq ?diag sw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx (+ ?row2 1)) (eq ?colx ?col2))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx ?row2) (eq ?colx ?col2))
                )
            )
            (and (eq ?diag ne)
                (or
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around the 2
                    (and (eq ?card e) (eq ?type H) (eq ?rowx ?row2) (eq ?colx ?col2))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx ?row2) (eq ?colx (+ ?col2 1)))
                )
            )
            (and (eq ?diag nw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx ?row2) (eq ?colx ?col2))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx ?row2) (eq ?colx ?col2))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-diagonal-3-2s-non-closed-end-F
    ;;; all is around the 3, same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diagonal-3-2s-non-closed-end ?row ?col ?row2 ?col2 ?diag ?card)

    ;;; assert H and V c-values with value 0
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?diag se)
                (or
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?diag sw)
                (or 
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq ?diag ne)
                (or
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                )
            )
            (and (eq ?diag nw)
                (or 
                    ; away from the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-xtd-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   



