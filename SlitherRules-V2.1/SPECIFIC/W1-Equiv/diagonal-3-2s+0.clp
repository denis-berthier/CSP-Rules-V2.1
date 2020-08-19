
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-3-2s+0
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





(defrule activate-diagonal-3-2+0
	(declare (salience ?*detect-diagonal-3-2+0-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-3-2+0))
=>
	(assert (technique ?cont diagonal-3-2+0))
	(bind ?*technique* diagonal-3-2+0)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal 3-2+0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule detect-diagonal-3-2+0
	(declare (salience ?*detect-diagonal-3-2+0-salience*))
    (technique ?cont diagonal-3-2+0)
        
    (diagonal-3-2s ?cont ?row ?col ?row2 ?col2 ?diag 2)

    (cardinal-point ?card) ;;; 2-0 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?card ?row2 ?col2 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2+0 ?row ?col ?diag ?card))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2+0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2) "+" (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)




(defrule apply-diagonal-3-2+0-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-3-2+0 ?row ?col ?diag ?card)
    
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
                    (and (eq ?card e) (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 1)))
                    (and (eq ?card e) (eq ?type V) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 2)))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 2)))
                    (and (eq ?card s) (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 2)))
                )
            )
            (and (eq ?diag sw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 1)))
                    (and (eq ?card w) (eq ?type V) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 1)))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
                    (and (eq ?card s) (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 2)))
                )
            )
            (and (eq ?diag ne)
                (or
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around the 2
                    (and (eq ?card e) (eq ?type H) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                    (and (eq ?card e) (eq ?type V) (eq ?rowx (- ?row 2)) (eq ?colx (+ ?col 2)))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 2)))
                    (and (eq ?card n) (eq ?type H) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 2)))
                )
            )
            (and (eq ?diag nw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx (- ?row 1)) (eq ?colx (- ?col 1)))
                    (and (eq ?card w) (eq ?type V) (eq ?rowx (- ?row 2)) (eq ?colx (- ?col 1)))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (- ?col 1)))
                    (and (eq ?card n) (eq ?type H) (eq ?rowx (- ?row 1)) (eq ?colx (- ?col 2)))
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




(defrule apply-diagonal-3-2+0-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diagonal-3-2+0 ?row ?col ?diag ?card)

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
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; detect diagonal 3-2+0 separated by a certain number of 2s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-3-2-2+0
	(declare (salience ?*detect-diagonal-3-2-2+0-salience*))
    (technique ?cont diagonal-3-2+0)
        
    (diagonal-3-2s ?cont ?row ?col ?row3 ?col3 ?diag 3)

    (cardinal-point ?card) ;;; 2-0 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?card ?row3 ?col3 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-2+0 ?row ?col ?diag ?card 1))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2-2+0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row3) (column-name ?col3) "+" (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)




(defrule detect-diagonal-3-2-2-2+0
	(declare (salience ?*detect-diagonal-3-2-2-2+0-salience*))
    (technique ?cont diagonal-3-2+0)
        
    (diagonal-3-2s ?cont ?row ?col ?row4 ?col4 ?diag 4)

    (cardinal-point ?card) ;;; 2-0 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?card ?row4 ?col4 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-2+0 ?row ?col ?diag ?card 2))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2-2-2+0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row4) (column-name ?col4) "+" (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)




(defrule detect-diagonal-3-2-2-2-2+0
	(declare (salience ?*detect-diagonal-3-2-2-2-2+0-salience*))
    (technique ?cont diagonal-3-2+0)
        
    (diagonal-3-2s ?cont ?row ?col ?row5 ?col5 ?diag 5)

    (cardinal-point ?card) ;;; 2-0 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?card ?row5 ?col5 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-2+0 ?row ?col ?diag ?card 3))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2-2-2-2+0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row5) (column-name ?col5) "+" (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)




(defrule detect-diagonal-3-2-2-2-2-2+0
	(declare (salience ?*detect-diagonal-3-2-2-2-2-2+0-salience*))
    (technique ?cont diagonal-3-2+0)
        
    (diagonal-3-2s ?cont ?row ?col ?row6 ?col6 ?diag 6)

    (cardinal-point ?card) ;;; 2-0 direction
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?card ?row6 ?col6 ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2s-2+0 ?row ?col ?diag ?card 4))
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-2-2-2-2-2+0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row6) (column-name ?col6) "+" (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
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


(defrule apply-diagonal-3-2+0-separated-by-2s-T
    ;;; part around the 3, same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont diagonal-3-2s-2+0 ?row ?col ?diag ?card ?k)
    
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
                    (and (eq ?card e) (eq ?type H) (eq ?rowx (+ ?row 2 ?k)) (eq ?colx (+ ?col 1 ?k)))
                    (and (eq ?card e) (eq ?type V) (eq ?rowx (+ ?row 2 ?k)) (eq ?colx (+ ?col 2 ?k)))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx (+ ?row 1 ?k)) (eq ?colx (+ ?col 2 ?k)))
                    (and (eq ?card s) (eq ?type H) (eq ?rowx (+ ?row 2 ?k)) (eq ?colx (+ ?col 2 ?k)))
                )
            )
            (and (eq ?diag sw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx (+ ?row 2 ?k)) (eq ?colx (- ?col 1 ?k)))
                    (and (eq ?card w) (eq ?type V) (eq ?rowx (+ ?row 2 ?k)) (eq ?colx (- ?col 1 ?k)))
                    (and (eq ?card s) (eq ?type V) (eq ?rowx (+ ?row 1 ?k)) (eq ?colx (- ?col 1 ?k)))
                    (and (eq ?card s) (eq ?type H) (eq ?rowx (+ ?row 2 ?k)) (eq ?colx (- ?col 2 ?k)))
                )
            )
            (and (eq ?diag ne)
                (or
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around the 2
                    (and (eq ?card e) (eq ?type H) (eq ?rowx (- ?row 1 ?k)) (eq ?colx (+ ?col 1 ?k)))
                    (and (eq ?card e) (eq ?type V) (eq ?rowx (- ?row 2 ?k)) (eq ?colx (+ ?col 2 ?k)))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx (- ?row 1 ?k)) (eq ?colx (+ ?col 2 ?k)))
                    (and (eq ?card n) (eq ?type H) (eq ?rowx (- ?row 1 ?k)) (eq ?colx (+ ?col 2 ?k)))
                )
            )
            (and (eq ?diag nw)
                (or 
                    ; around the 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around the 2
                    (and (eq ?card w) (eq ?type H) (eq ?rowx (- ?row 1 ?k)) (eq ?colx (- ?col 1 ?k)))
                    (and (eq ?card w) (eq ?type V) (eq ?rowx (- ?row 2 ?k)) (eq ?colx (- ?col 1 ?k)))
                    (and (eq ?card n) (eq ?type V) (eq ?rowx (- ?row 1 ?k)) (eq ?colx (- ?col 1 ?k)))
                    (and (eq ?card n) (eq ?type H) (eq ?rowx (- ?row 1 ?k)) (eq ?colx (- ?col 2 ?k)))
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




(defrule apply-diagonal-3-2+0-separated-by-2s-F
    ;;; all is around the 3, same as the case: ?k = 0
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont diagonal-3-2s-2+0 ?row ?col ?diag ?card ?k)
    
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
	(if (or ?*print-actions* ?*print-diagonal-3-2s+0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   



