
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-3-NOLINES
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
;;; adjacent-3-nolines
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; If a 3 is adjacent to two outgoing nolines, either horizontally or vertically,
;;; then all the edges of that 3 can be filled except for the one touching the 0.
;;; In addition, the two lines from the corner of the 3 opposite to the 0 can de deleted.


(defrule activate-adjacent-3-nolines
	(declare (salience ?*detect-adjacent-3-nolines-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-3-nolines))
=>
	(assert (technique ?cont adjacent-3-nolines))
	(bind ?*technique* adjacent-3-nolines)
)
    


;;; east

(defrule detect-adjacent-3-nolines-east
	(declare (salience ?*detect-adjacent-3-nolines-salience*))
    (technique ?cont adjacent-3-nolines)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col0&:(eq ?col0 (+ ?col 1))) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (row ?row2&:(eq ?row2 (+ ?row 1))) (column ?col0) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col0) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-nolines east ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?*blocked-rule-description* (str-cat "w[0]-adjacent-3-in-" (row-name ?row) (column-name ?col) "-nolines-east"))
    )
)


(defrule apply-adjacent-3-nolines-east-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-nolines east ?row ?col)
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (or
            (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row))
            (and (eq ?type V) (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
            (and (eq ?type H) (eq ?colx ?col) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
    ))
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
 

(defrule apply-adjacent-3-nolines-east-F
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-nolines east ?row ?col)
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (or (and (eq ?type V) (eq ?colx ?col) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
            (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
            (and (eq ?type V) (eq ?colx (+ ?col 1)) (eq ?rowx ?row))
    ))
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)
 



;;; west

(defrule detect-adjacent-3-nolines-west
    (declare (salience ?*detect-adjacent-3-nolines-salience*))
    (technique ?cont adjacent-3-nolines)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col0&:(eq ?col0 (- ?col 1))) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (row ?row2&:(eq ?row2 (+ ?row 1))) (column ?col0) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row) (column ?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-nolines west ?row ?col))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?*blocked-rule-description* (str-cat "w[0]-adjacent-3-in-" (row-name ?row) (column-name ?col) "-nolines-west"))
    )
)


(defrule apply-adjacent-3-nolines-west-T
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-nolines west ?row ?col)
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (or
        (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
        (and (eq ?type V) (eq ?colx ?col) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
        (and (eq ?type H) (eq ?colx ?col) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
    ))
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)
 

(defrule apply-adjacent-3-nolines-west-F
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-nolines west ?row ?col)
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (or
        (and (eq ?type V) (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
        (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
        (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row))
    ))
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)





 ;;; south

 (defrule detect-adjacent-3-nolines-south
     (declare (salience ?*detect-adjacent-3-nolines-salience*))
     (technique ?cont adjacent-3-nolines)
     
     (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
     (candidate (context ?cont) (status c-value) (type V) (column ?col) (row ?row0&:(eq ?row0 (+ ?row 1))) (value 0))
     (candidate (context ?cont) (status c-value) (type V) (column ?col2&:(eq ?col2 (+ ?col 1))) (row ?row0) (value 0))
     (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?row0) (value 0))
 =>
     (assert (apply-rule-as-a-block ?cont))
     (assert (blocked ?cont adjacent-3-nolines south ?row ?col))
     (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
         (bind ?*blocked-rule-description* (str-cat "w[0]-adjacent-3-in-" (row-name ?row) (column-name ?col) "-nolines-south"))
     )
 )


 (defrule apply-adjacent-3-nolines-south-T
     (declare (salience ?*apply-a-blocked-rule-salience-1*))
     (blocked ?cont adjacent-3-nolines south ?row ?col)
     ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 0))
     (test (or
        (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
        (and (eq ?type H) (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
        (and (eq ?type V) (eq ?rowx ?row) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
     ))
     ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 1))
 =>
     (modify ?cand2 (status c-value))
     (retract ?cand)
     (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
     (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
         (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
         (add-elimination-to-blocked-rule ?elim)
     )
 )
  

 (defrule apply-adjacent-3-nolines-south-F
     (declare (salience ?*apply-a-blocked-rule-salience-2*))
     (blocked ?cont adjacent-3-nolines south ?row ?col)
     ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 1))
     (test (or
         (and (eq ?type H) (eq ?rowx ?row) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
         (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
        (and (eq ?type H) (eq ?colx ?col) (eq ?rowx (+ ?row 1)))
     ))
     ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 0))
 =>
     (modify ?cand2 (status c-value))
     (retract ?cand)
     (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
     (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
         (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
         (add-elimination-to-blocked-rule ?elim)
     )
 )
  




;;; north

(defrule detect-adjacent-3-nolines-north
    (declare (salience ?*detect-adjacent-3-nolines-salience*))
    (technique ?cont adjacent-3-nolines)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (column ?col) (row ?row0&:(eq ?row0 (- ?row 1))) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (column ?col2&:(eq ?col2 (+ ?col 1))) (row ?row0) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col) (row ?row) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-nolines north ?row ?col))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?*blocked-rule-description* (str-cat "w[0]-adjacent-3-in-" (row-name ?row) (column-name ?col) "-nolines-north"))
    )
)


(defrule apply-adjacent-3-nolines-north-T
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-nolines north ?row ?col)
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (or
       (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
       (and (eq ?type H) (eq ?rowx ?row) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
       (and (eq ?type V) (eq ?rowx ?row) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
    ))
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)
 

(defrule apply-adjacent-3-nolines-north-F
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-nolines north ?row ?col)
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (or
        (and (eq ?type H) (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
        (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
        (and (eq ?type H) (eq ?colx ?col) (eq ?rowx ?row))
    ))
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-3-nolines*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)
 





