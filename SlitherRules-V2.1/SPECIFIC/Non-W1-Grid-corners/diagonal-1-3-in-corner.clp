
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-1-3-IN-CORNER
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





(defrule activate-diagonal-1-3-in-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-1-3-in-corner))
=>
	(assert (technique ?cont diagonal-1-3-in-corner))
	(bind ?*technique* diagonal-1-3-in-corner)
)
  
    
      
          

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-1-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-1-3-in-nw-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column 2) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column 1) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-3-in-nw-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description*  "diagonal-1-3-in-nw-corner")
    )
)

(defrule appy-diagonal-1-3-in-nw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-1-3-in-nw-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 1) (eq ?rowx 2) (eq ?colx 1))
            (and (eq ?type V) (eq ?val 0) (eq ?rowx 1) (eq ?colx 2))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-1-3-in-ne-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1))) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column ?col2&:(eq ?col2 ?*nb-columns*)) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-3-in-ne-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description*  "diagonal-1-3-in-ne-corner")
    )
)


(defrule appy-diagonal-1-3-in-ne-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-1-3-in-ne-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 1) (eq ?rowx 2) (eq ?colx ?*nb-columns*))
            (and (eq ?type V) (eq ?val 0) (eq ?rowx 1) (eq ?colx ?*nb-columns*))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule detect-diagonal-1-3-in-sw-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column 2) (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column 1) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-3-in-sw-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description*  "diagonal-1-3-in-sw-corner")
    )
)


(defrule appy-diagonal-1-3-in-sw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-1-3-in-sw-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 1) (eq ?rowx ?*nb-rows*) (eq ?colx 1))
            (and (eq ?type V) (eq ?val 0) (eq ?rowx ?*nb-rows*) (eq ?colx 2))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-1-3-in-se-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1)))  (value 3))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column ?col2&:(eq ?col2 ?*nb-columns*))  (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-1-3-in-se-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description*  "diagonal-1-3-in-se-corner")
    )
)


(defrule appy-diagonal-1-3-in-se-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-1-3-in-se-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 1) (eq ?rowx ?*nb-rows*) (eq ?colx ?*nb-columns*))
            (and (eq ?type V) (eq ?val 0) (eq ?rowx ?*nb-rows*) (eq ?colx ?*nb-columns*))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)
  
    
      
          

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal-3-1
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-diagonal-3-1-in-nw-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column 2) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column 1) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-1-in-nw-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-1-in-nw-corner")
    )
)


(defrule appy-diagonal-3-1-in-nw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-1-in-nw-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 0) (eq ?rowx 2) (eq ?colx 1))
            (and (eq ?type V) (eq ?val 1) (eq ?rowx 1) (eq ?colx 2))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-3-1-in-ne-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1))) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row 2) (column ?col2&:(eq ?col2 ?*nb-columns*)) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-1-in-ne-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-1-in-ne-corner")
    )
)


(defrule appy-diagonal-3-1-in-ne-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-1-in-ne-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 0) (eq ?rowx 2) (eq ?colx ?*nb-columns*))
            (and (eq ?type V) (eq ?val 1) (eq ?rowx 1) (eq ?colx ?*nb-columns*))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)




(defrule detect-diagonal-3-1-in-sw-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column 2) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column 1) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-1-in-sw-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-1-in-sw-corner")
    )
)


(defrule appy-diagonal-3-1-in-sw-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-1-in-sw-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 0) (eq ?rowx ?*nb-rows*) (eq ?colx 1))
            (and (eq ?type V) (eq ?val 1) (eq ?rowx ?*nb-rows*) (eq ?colx 2))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)





(defrule detect-diagonal-3-1-in-se-corner
	(declare (salience ?*detect-diagonal-1-3-in-corner-salience*))
    (technique ?cont diagonal-1-3-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column ?col1&:(eq ?col1 (- ?*nb-columns* 1)))  (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 1))) (column ?col2&:(eq ?col2 ?*nb-columns*))  (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-1-in-se-corner))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-3-1-in-se-corner")
    )
)


(defrule appy-diagonal-3-1-in-se-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-1-in-se-corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value ?val) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq ?type H) (eq ?val 0) (eq ?rowx ?*nb-rows*) (eq ?colx ?*nb-columns*))
            (and (eq ?type V) (eq ?val 1) (eq ?rowx ?*nb-rows*) (eq ?colx ?*nb-columns*))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value ?val2&~?val) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-1-3-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* ?val))
        (add-elimination-to-blocked-rule ?elim)
	)
)




