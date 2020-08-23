
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              DIAGONAL-3-2s-assymetric-end
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - June 2020              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-diagonal-3s
	(declare (salience ?*detect-diagonal-3s-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-3s))
=>
	(assert (technique ?cont diagonal-3s))
	(bind ?*technique* diagonal-3s)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal 3s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; If two 3s are diagonally adjacent, the edges which do not run into the common point must be filled in.

(defrule detect-diagonal-3s
	(declare (salience ?*detect-diagonal-3s-salience*))
    (technique ?cont diagonal-3s)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (diagonal-vector ?diag&se|sw)
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 3))
    (test (is-direction ?diag ?row ?col ?row2 ?col2))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (diagonal-3s ?cont ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?*blocked-rule-description* 
            (str-cat "diagonal-3s-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row2) (column-name ?col2)  ?*ending-cell-symbol*)
        )
    )
)




(defrule apply-diagonal-3s-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (diagonal-3s ?cont ?row ?col ?diag)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            ;;;; if second 3 at the se of the first
            (and (eq ?diag se)
                (or
                    ; around first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 2)))
                )
            )
            ;;;; if second 3 at the sw of the first
            (and (eq ?diag sw)
                (or 
                    ; around first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (eq ?colx (- ?col 1)))
                )
            )
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-diagonal-3s-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (diagonal-3s ?cont ?row ?col ?diag)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            ;;;; if second 3 at the se of the first
            (and (eq ?diag se)
                (or 
                    ; away from first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                    ; away from second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 2)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 2)) (eq ?colx (+ ?col 2)))
                )
            )
            ;;;; if second 3 at the sw of the first
            (and (eq ?diag sw)
                (or 
                    ; away from first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                    ; away from second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 2)))
                    (and (eq ?type V) (eq ?rowx (+ ?row 2)) (eq ?colx (- ?col 1)))
                )
            )
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; detect diagonal 3s separated by a certain number of 2s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Similarly, if two 3s are in the same diagonal, but separated by any number of 2s (and only 2s) the outside edges of the 3s must be filled in, just as if they were adjacent diagonally.


(defrule detect-diagonal-3-2-3
	(declare (salience ?*detect-diagonal-3-2-3-salience*))
    (technique ?cont diagonal-3s)
        
    (diagonal-3-2s ?cont ?row ?col ?row2 ?col2 ?diag&se|sw 2)
    (candidate (context ?cont) (status c-value) (type N) (row ?row3) (column ?col3) (value 3))
    (test (is-direction ?diag ?row2 ?col2 ?row3 ?col3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag 1))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?*blocked-rule-description* 
            (str-cat "diagonal-3-2-3-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row3) (column-name ?col3)  ?*ending-cell-symbol*)
        )
    )
)


(defrule detect-3-2-2-3
	(declare (salience ?*detect-diagonal-3-2-2-3-salience*))
    (technique ?cont diagonal-3s)
        
    (diagonal-3-2s ?cont ?row ?col ?row3 ?col3 ?diag&se|sw 3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row4) (column ?col4) (value 3))
    (test (is-direction ?diag ?row3 ?col3 ?row4 ?col4))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag 2))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?*blocked-rule-description* 
            (str-cat "diagonal-3-2-2-3-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row4) (column-name ?col4)  ?*ending-cell-symbol*)
        )
    )
)


(defrule detect-3-2-2-2-3
	(declare (salience ?*detect-diagonal-3-2-2-2-3-salience*))
    (technique ?cont diagonal-3s)
        
    (diagonal-3-2s ?cont ?row ?col ?row4 ?col4 ?diag&se|sw 4)
    (candidate (context ?cont) (status c-value) (type N) (row ?row5) (column ?col5) (value 3))
    (test (is-direction ?diag ?row4 ?col4 ?row5 ?col5))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag 3))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?*blocked-rule-description* 
            (str-cat "diagonal-3-2-2-2-3-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row5) (column-name ?col5)  ?*ending-cell-symbol*)
        )
    )
)


(defrule detect-3-2-2-2-2-3
	(declare (salience ?*detect-diagonal-3-2-2-2-2-3-salience*))
    (technique ?cont diagonal-3s)
        
    (diagonal-3-2s ?cont ?row ?col ?row5 ?col5 ?diag&se|sw 5)
    (candidate (context ?cont) (status c-value) (type N) (row ?row6) (column ?col6) (value 3))
    (test (is-direction ?diag ?row5 ?col5 ?row6 ?col6))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag 4))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?*blocked-rule-description* 
            (str-cat "diagonal-3-2-2-2-2-3-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row6) (column-name ?col6)  ?*ending-cell-symbol*)
        )
    )
)


(defrule detect-3-2-2-2-2-2-3
	(declare (salience ?*detect-diagonal-3-2-2-2-2-2-3-salience*))
    (technique ?cont diagonal-3s)
        
    (diagonal-3-2s ?cont ?row ?col ?row6 ?col6 ?diag&se|sw 6)
    (candidate (context ?cont) (status c-value) (type N) (row ?row7) (column ?col7) (value 3))
    (test (is-direction ?diag ?row6 ?col6 ?row7 ?col7))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag 5))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?*blocked-rule-description* 
            (str-cat "diagonal-3-2-2-2-2-2-3-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row7) (column-name ?col7)  ?*ending-cell-symbol*)
        )
    )
)
    



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; apply diagonal 3s separated by a certain number of 2s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule apply-diagonal-3s-separated-by-2s-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag ?k)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            ;;;; if second 3 at the se of the first
            (and (eq ?diag se)
                (or 
                    ; around first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                    ; around second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row ?k 2)) (eq ?colx (+ ?col ?k 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row ?k 1)) (eq ?colx (+ ?col ?k 2)))
                )
            )
            ;;;; if second 3 at the sw of the first
            (and (eq ?diag sw)
                (or 
                    ; around first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    ; around second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row ?k 2)) (eq ?colx (- ?col ?k 1)))
                    (and (eq ?type V) (eq ?rowx (+ ?row ?k 1)) (eq ?colx (- ?col ?k 1)))
                )
            )
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule apply-diagonal-3s-separated-by-2s-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (diagonal-3s-separated-by-2s ?cont ?row ?col ?diag ?k)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or 
            ;;;; if second 3 at the se of the first
            (and (eq ?diag se)
                (or 
                    ; away from first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                    ; away from second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row ?k 2)) (eq ?colx (+ ?col ?k 2)))
                    (and (eq ?type V) (eq ?rowx (+ ?row ?k 2)) (eq ?colx (+ ?col ?k 2)))
                )
            )
            ;;;; if second 3 at the sw of the first
            (and (eq ?diag sw)
                (or 
                    ; away from first 3
                    (and (eq ?type H) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                    ; away from second 3
                    (and (eq ?type H) (eq ?rowx (+ ?row ?k 2)) (eq ?colx (- ?col ?k 2)))
                    (and (eq ?type V) (eq ?rowx (+ ?row ?k 2)) (eq ?colx (- ?col ?k 1)))
                )
            )
        )
    )
=>
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3s*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   



