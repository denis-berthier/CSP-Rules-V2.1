
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-3-2-NOLINE
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
;;; adjacent 3-2-noline
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule activate-adjacent-3-2-noline
	(declare (salience ?*detect-adjacent-3-2-noline-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont corners))
=>
	(assert (technique ?cont adjacent-3-2-noline))
	(bind ?*technique* adjacent-3-2-noline)
)
    


;;; adjacent-3-2-noline-east

(defrule detect-adjacent-3-2-noline-east
	(declare (salience ?*detect-adjacent-3-2-noline-salience*))
    (technique ?cont adjacent-3-2-noline)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row) (column ?col2&:(eq ?col2 (+ ?col 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type V) (row ?row3&?row) (column ?col3&:(eq ?col3 (+ ?col 2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-noline-east ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-noline-east"))
    )
)


(defrule apply-adjacent-3-2-noline-east-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-2-noline-east ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (eq ?colx ?col)))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)


(defrule apply-adjacent-3-2-noline-east-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-2-noline-east ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
 



;;; adjacent-3-2-noline-west

(defrule detect-adjacent-3-2-noline-west
	(declare (salience ?*detect-adjacent-3-2-noline-salience*))
    (technique ?cont adjacent-3-2-noline)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row) (column ?col2&:(eq ?col2 (- ?col 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type V) (row ?row3&?row) (column ?col2) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-noline-west ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*  "-noline-west"))
    )
)


(defrule apply-adjacent-3-2-noline-west-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-2-noline-west ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (eq ?colx (+ ?col 1))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)


(defrule apply-adjacent-3-2-noline-west-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-2-noline-west ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?colx ?col) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




;;; adjacent-3-2-noline-south

(defrule detect-adjacent-3-2-noline-south
	(declare (salience ?*detect-adjacent-3-2-noline-salience*))
    (technique ?cont adjacent-3-2-noline)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (+ ?row 1))) (column ?col2&?col) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?row3&:(eq ?row3 (+ ?row 2))) (column ?col3&?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-noline-south ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col) "-noline-south"))
    )
)
    
    
(defrule apply-adjacent-3-2-noline-south-T
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-noline-south ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (eq ?colx ?col)))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   
    
(defrule apply-adjacent-3-2-noline-south-F
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-noline-south ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




;;; adjacent-3-2-noline-north

(defrule detect-adjacent-3-2-noline-north
	(declare (salience ?*detect-adjacent-3-2-noline-salience*))
    (technique ?cont adjacent-3-2-noline)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?row 1))) (column ?col2&?col) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (row ?row3&:(eq ?row3 (- ?row 1))) (column ?col3&?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-noline-north ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col) "-noline-north"))
    )
)
    
    
(defrule apply-adjacent-3-2-noline-north-T
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-noline-north ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx (+ ?row 1)) (eq ?colx ?col)))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   
    
(defrule apply-adjacent-3-2-noline-north-F
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-noline-north ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?rowx ?row) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-noline*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



