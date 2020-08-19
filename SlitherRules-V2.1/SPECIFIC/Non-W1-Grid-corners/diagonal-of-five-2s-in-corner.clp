
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-OF-FIVE-2s-IN-CORNER
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





;;; If an odd diagonal of 2s is in a corner, two lines must be going away from the 2s at the borders.
;;; This is an extension of rule "2 in a corner"


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonals of five 2s
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-diagonal-of-five-2s-in-corner
	(declare (salience ?*detect-diagonal-of-five-2s-in-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-of-five-2s-in-corner))
=>
	(assert (technique ?cont diagonal-of-five-2s-in-corner))
	(bind ?*technique* diagonal-of-five-2s-in-corner)
)
    


(defrule detect-a-diagonal-of-five-2s-in-nw-corner
	(declare (salience ?*detect-diagonal-of-five-2s-in-corner-salience*))
    (technique ?cont diagonal-of-five-2s-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&5) (column ?col1&1) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&4) (column ?col2&2) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&3) (column ?col3&3) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row4&2) (column ?col4&4) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row5&1) (column ?col5&5) (value 2))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-of-five-2s-in-corner nw))
	(if (or ?*print-actions* ?*print-diagonal-of-2s-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-of-five-2s-in-nw-corner")
    )
)


(defrule detect-a-diagonal-of-five-2s-in-ne-corner
	(declare (salience ?*detect-diagonal-of-five-2s-in-corner-salience*))
    (technique ?cont diagonal-of-five-2s-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&5) (column ?col1&:(eq ?col1 ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&4) (column ?col2&:(eq ?col2 (- ?*nb-columns* 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&3) (column ?col3&:(eq ?col3 (- ?*nb-columns* 2))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row4&2) (column ?col4&:(eq ?col4 (- ?*nb-columns* 3))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row5&1) (column ?col5&:(eq ?col5 (- ?*nb-columns* 4))) (value 2))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-of-five-2s-in-corner ne))
	(if (or ?*print-actions* ?*print-diagonal-of-2s-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-of-five-2s-in-ne-corner")
    )
)


(defrule detect-a-diagonal-of-five-2s-in-sw-corner
	(declare (salience ?*detect-diagonal-of-five-2s-in-corner-salience*))
    (technique ?cont diagonal-of-five-2s-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 (- ?*nb-rows* 4))) (column ?col1&1) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 3))) (column ?col2&2) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&:(eq ?row3 (- ?*nb-rows* 2))) (column ?col3&3) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row4&:(eq ?row4 (- ?*nb-rows* 1))) (column ?col4&4) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row5&:(eq ?row5 ?*nb-rows*)) (column ?col5&5) (value 2))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-of-five-2s-in-corner sw))
	(if (or ?*print-actions* ?*print-diagonal-of-2s-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-of-five-2s-in-sw-corner")
    )
)


(defrule detect-a-diagonal-of-five-2s-in-se-corner
	(declare (salience ?*detect-diagonal-of-five-2s-in-corner-salience*))
    (technique ?cont diagonal-of-five-2s-in-corner)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 (- ?*nb-rows* 4))) (column ?col1&:(eq ?col1 ?*nb-columns*)) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(eq ?row2 (- ?*nb-rows* 3))) (column ?col2&:(eq ?col2 (- ?*nb-columns* 1))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row3&:(eq ?row3 (- ?*nb-rows* 2))) (column ?col3&:(eq ?col3 (- ?*nb-columns* 2))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row4&:(eq ?row4 (- ?*nb-rows* 1))) (column ?col4&:(eq ?col4 (- ?*nb-columns* 3))) (value 2))
    (candidate (context ?cont) (status c-value) (type N) (row ?row5&:(eq ?row5 ?*nb-rows*)) (column ?col5&:(eq ?col5 (- ?*nb-columns* 4))) (value 2))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-of-five-2s-in-corner se))
	(if (or ?*print-actions* ?*print-diagonal-of-2s-in-corner*) then
        (bind ?*blocked-rule-description* "diagonal-of-five-2s-in-se-corner")
    )
)




(defrule appy-a-diagonal-of-five-2s-in-a-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-of-five-2s-in-corner ?corner)
    
    ;;; assert H and V c-values for the H and V candidates exiting the corner
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; nw corner
            (and (eq ?corner nw)
                (or
                    (and (eq ?type H) (eq ?rowx 1) (eq ?colx 6))
                    (and (eq ?type V) (eq ?rowx 6) (eq ?colx 1))
                )
            )
            ;;; ne corner
             (and (eq ?corner ne)
                (or (and (eq ?type H) (eq ?rowx 1) (eq ?colx (- ?*nb-columns* 5)))
                    (and (eq ?type V) (eq ?rowx 6) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; se corner
            (and (eq ?corner se)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx (- ?*nb-columns* 5)))
                    (and (eq ?type V) (eq ?rowx (- ?*nb-rows* 5)) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; sw corner
            (and (eq ?corner sw)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx 6))
                    (and (eq ?type V) (eq ?rowx (- ?*nb-rows* 5)) (eq ?colx 1))
                )
            )
        )
    )
   ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-of-2s-in-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



