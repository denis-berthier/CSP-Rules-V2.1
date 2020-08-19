
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-3-2+0
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
;;; adjacent 3-2-0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;





(defrule activate-adjacent-3-2-0
	(declare (salience ?*detect-adjacent-3-2-0-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont corners))
=>
	(assert (technique ?cont adjacent-3-2-0))
	(bind ?*technique* adjacent-3-2-0)
)
    


;;; adjacent-3-2-0-eastward

(defrule detect-adjacent-3-2-0-eastward
	(declare (salience ?*detect-adjacent-3-2-0-salience*))
    (technique ?cont adjacent-3-2-0)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row) (column ?col2&:(eq ?col2 (+ ?col 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&?row) (column ?col3&:(eq ?col3 (+ ?col 2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-0-eastward ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-0-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*))
    )
)


(defrule apply-adjacent-3-2-0-eastward-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-2-0-eastward ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (eq ?colx ?col)))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)


(defrule apply-adjacent-3-2-0-eastward-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-2-0-eastward ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
 



;;; adjacent-3-2-0-westward

(defrule detect-adjacent-3-2-0-westward
	(declare (salience ?*detect-adjacent-3-2-0-salience*))
    (technique ?cont adjacent-3-2-0)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row) (column ?col2&:(eq ?col2 (- ?col 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&?row) (column ?col3&:(eq ?col3 (- ?col 2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-0-westward ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-0-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*separation-sign-in-cell* (column-name ?col3) ?*ending-cell-symbol*))
    )
)


(defrule apply-adjacent-3-2-0-westward-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-2-0-westward ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (eq ?colx (+ ?col 1))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)


(defrule apply-adjacent-3-2-0-westward-F
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-2-0-westward ?row ?col)
    ?cand <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?colx ?col) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1)))))
    ?cand2 <- (candidate (context ?cont) (type V) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "V" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




;;; adjacent-3-2-0-southward

(defrule detect-adjacent-3-2-0-southward
	(declare (salience ?*detect-adjacent-3-2-0-salience*))
    (technique ?cont adjacent-3-2-0)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (+ ?row 1))) (column ?col2&?col) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&:(eq ?row3 (+ ?row 2))) (column ?col3&?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-0-southward ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-0-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*))
    )
)
    
    
(defrule apply-adjacent-3-2-0-southward-T
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-0-southward ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx ?row) (eq ?colx ?col)))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   
    
(defrule apply-adjacent-3-2-0-southward-F
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-0-southward ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




;;; adjacent-3-2-0-northward

(defrule detect-adjacent-3-2-0-northward
	(declare (salience ?*detect-adjacent-3-2-0-salience*))
    (technique ?cont adjacent-3-2-0)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?row 1))) (column ?col2&?col) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&:(eq ?row3 (- ?row 2))) (column ?col3&?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-2-0-northward ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[3]-adjacent-3-2-0-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*separation-sign-in-cell* (row-name ?row3) ?*ending-cell-symbol*))
    )
)
    
    
(defrule apply-adjacent-3-2-0-northward-T
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-0-northward ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (and (eq ?rowx (+ ?row 1)) (eq ?colx ?col)))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   
    
(defrule apply-adjacent-3-2-0-northward-F
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont adjacent-3-2-0-northward ?row ?col)
    ?cand <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (and (eq ?rowx ?row) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1)))))
    ?cand2 <- (candidate (context ?cont) (type H) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-2-0*) then
        (bind ?elim (str-cat "H" (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




