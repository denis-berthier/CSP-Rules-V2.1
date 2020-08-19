
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-2-3+1-IN-CORNER
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





;;; The diagonal-2-3-in-a-corner pattern has a small extension


(defrule activate-diagonal-2-3+1-in-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-2-3+1-in-corner))
=>
	(assert (technique ?cont diagonal-2-3+1-in-corner))
	(bind ?*technique* diagonal-2-3+1-in-corner)
)
  
    
      
          

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-2-3+1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-2-3+1-in-nw-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column 2) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column 1) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column 2) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-2-3+1-in-nw-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-2-3+1-in-nw-corner")
    )
)

(defrule appy-diagonal-2-3+1-in-nw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-2-3+1-in-nw-corner)
    
    ;;; assert V c-value
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type V) (eq ?val 0) (eq ?rowx 1) (or (eq ?colx 2) (eq ?colx 3)))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-2-3+1-in-ne-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1))) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column ?col2&:(eq ?col2 ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column ?col3&:(eq ?col3 (- ?*nb-columns* 1))) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-2-3+1-in-ne-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-2-3+1-in-ne-corner")
    )
)


(defrule appy-diagonal-2-3+1-in-ne-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-2-3+1-in-ne-corner)
    
    ;;; assert V c-value
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type V) (eq ?val 0) (eq ?rowx 1) (or (eq ?colx ?*nb-columns*) (eq ?colx (- ?*nb-columns* 1))))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule detect-diagonal-2-3+1-in-sw-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column 2) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column 1) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column 2) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-2-3+1-in-sw-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-2-3+1-in-sw-corner")
    )
)


(defrule appy-diagonal-2-3+1-in-sw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-2-3+1-in-sw-corner)
    
    ;;; assert V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type V) (eq ?val 0) (eq ?rowx ?*nb-rows*) (or (eq ?colx 2) (eq ?colx 3)))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-2-3+1-in-se-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1)))  (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column ?col2&:(eq ?col2 ?*nb-columns*))  (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col3&:(eq ?col3 (- ?*nb-columns* 1)))  (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-2-3+1-in-se-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-2-3+1-in-se-corner")
    )
)


(defrule appy-diagonal-2-3+1-in-se-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-2-3+1-in-se-corner)
    
    ;;; assert V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type V) (eq ?val 0) (eq ?rowx ?*nb-rows*) (or (eq ?colx ?*nb-columns*) (eq ?colx (- ?*nb-columns* 1))))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)
  
    
      
          

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-3-2+1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-3-2+1-in-nw-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column 2) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column 1) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column 2) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2+1-in-nw-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-2+1-in-nw-corner")
    )
)


(defrule appy-diagonal-3-2+1-in-nw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-2+1-in-nw-corner) ;;; corrected 2015/02/01 3-2+1 instead of 3-2

    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type H) (eq ?val 0) (or (eq ?rowx 2) (eq ?rowx 3)) (eq ?colx 1))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-3-2+1-in-ne-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column ?col2&:(eq ?col2 ?*nb-columns*)) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column ?col3&:(eq ?col3 (- ?*nb-columns* 1))) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2+1-in-ne-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-2-3+1-in-ne-corner")
    )
)


(defrule appy-diagonal-3-2+1-in-ne-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-2+1-in-ne-corner)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type H) (eq ?val 0) (or (eq ?rowx 2) (eq ?rowx 3)) (eq ?colx ?*nb-columns*))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule detect-diagonal-3-2+1-in-sw-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column 2) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column 1) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column 2) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2+1-in-sw-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-2+1-in-sw-corner")
    )
)


(defrule appy-diagonal-3-2+1-in-sw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-2+1-in-sw-corner)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type H) (eq ?val 0) (or (eq ?rowx ?*nb-rows*) (eq ?rowx (- ?*nb-rows* 1))) (eq ?colx 1))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-3-2+1-in-se-corner
	(declare (salience ?*detect-diagonal-2-3+1-in-corner-salience*))
    (technique ?cont diagonal-2-3+1-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1)))  (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column ?col2&:(eq ?col2 ?*nb-columns*))  (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col3&:(eq ?col3 (- ?*nb-columns* 1)))  (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-2+1-in-se-corner))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-2+1-in-se-corner")
    )
)


(defrule appy-diagonal-3-2+1-in-se-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-2+1-in-se-corner)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (and (eq ?type H) (eq ?val 0) (or (eq ?rowx ?*nb-rows*) (eq ?rowx (- ?*nb-rows* 1))) (eq ?colx ?*nb-columns*))
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-2-3+1-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)




