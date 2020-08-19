
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-3-3
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-3-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;; If two 3s are adjacent to each other horizontally or vertically, their common edge must be filled in, because the only other option is a closed oval that is impossible to connect to any other line. 
;;; Second, the two outer lines of the group (parallel to the common line) must be filled in. 
;;; Thirdly, the line through the 3s will always wrap around in an "S" shape. Therefore, the line between the 3s cannot continue in a straight line, and those sides which are in a straight line from the middle line can be X'd out.


(defrule activate-adjacent-3-3
	(declare (salience ?*detect-adjacent-3-3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-3-3))
=>
	(assert (technique ?cont adjacent-3-3))
	(bind ?*technique* adjacent-3-3)
)
    


;;; adjacent in a row

(defrule detect-adjacent-3-3-in-a-row
	(declare (salience ?*detect-adjacent-3-3-salience*))
    (technique ?cont adjacent-3-3)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(eq ?col2 (+ ?col 1))) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-3-in-a-row ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-3*) then
        (bind ?*blocked-rule-description* 
            (str-cat "adjacent-3s-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*)
        )
    )
)



(defrule apply-adjacent-3-3-in-a-row-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-3-in-a-row ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (or (eq ?colx ?col) (eq ?colx (+ ?col 1)) (eq ?colx (+ ?col 2)))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-3*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-adjacent-3-3-in-a-row-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-3-in-a-row ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-3*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
 


;;; adjacent in a column

(defrule detect-adjacent-3-3-in-a-column
	(declare (salience ?*detect-adjacent-3-3-salience*))
    (technique ?cont adjacent-3-3)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (+ ?row 1))) (column ?col) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-3-in-a-column ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-3*) then
        (bind ?*blocked-rule-description* 
            (str-cat "adjacent-3s-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol*)
        )
    )
)
    
    
    
    
(defrule apply-adjacent-3-3-in-a-column-T
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-3-in-a-column ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?colx ?col) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1)) (eq ?rowx (+ ?row 2)))))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-3*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   
    
    
(defrule apply-adjacent-3-3-in-a-column-F
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-3-in-a-column ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-3*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
  





