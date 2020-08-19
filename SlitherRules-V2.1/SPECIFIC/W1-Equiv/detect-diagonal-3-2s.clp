
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DETECT-DIAGONAL-3-2s
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





;;; these rules detect diagonals of 3-2s that will be used in full patterns
;;; they don't eliminate any candidate
;;; their length includes the 3

(defrule activate-diagonal-3-2s
	(declare (salience ?*detect-diagonal-3-2s-2-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-3-2s))
=>
	(assert (technique ?cont diagonal-3-2s))
)
    



(defrule detect-diagonal-3-2s-1
	(declare (salience ?*detect-diagonal-3-2s-1-salience*))
    (technique ?cont diagonal-3-2s)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1) (value 3))
    (diagonal-vector ?diag)
=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row1 ?col1 ?diag 1))
)


(defrule detect-diagonal-3-2s-2
	(declare (salience ?*detect-diagonal-3-2s-2-salience*))
    (technique ?cont diagonal-3-2s)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1) (value 3))
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type N) (row ?row2) (column ?col2) (value 2))
    (test (is-direction ?diag ?row1 ?col1 ?row2 ?col2))
=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row2 ?col2 ?diag 2))
)



(defrule detect-diagonal-3-2s-3
	(declare (salience ?*detect-diagonal-3-2s-3-salience*))
    (technique ?cont diagonal-3-2s)
        
    (diagonal-3-2s ?cont ?row1 ?col1 ?row2 ?col2 ?diag 2)
    (candidate (context ?cont) (status c-value) (type N) (row ?row3) (column ?col3) (value 2))
    (test (is-direction ?diag ?row2 ?col2 ?row3 ?col3))

=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row3 ?col3 ?diag 3))
)



(defrule detect-diagonal-3-2s-4
	(declare (salience ?*detect-diagonal-3-2s-4-salience*))
    (technique ?cont diagonal-3-2s)
        
    (diagonal-3-2s ?cont ?row1 ?col1 ?row3 ?col3 ?diag 3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row4) (column ?col4) (value 2))
    (test (is-direction ?diag ?row3 ?col3 ?row4 ?col4))

=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row4 ?col4 ?diag 4))
)



(defrule detect-diagonal-3-2s-5
	(declare (salience ?*detect-diagonal-3-2s-5-salience*))
    (technique ?cont diagonal-3-2s)
        
    (diagonal-3-2s ?cont ?row1 ?col1 ?row4 ?col4 ?diag 4)
    (candidate (context ?cont) (status c-value) (type N) (row ?row5) (column ?col5) (value 2))
    (test (is-direction ?diag ?row4 ?col4 ?row5 ?col5))

=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row5 ?col5 ?diag 5))
)



(defrule detect-diagonal-3-2s-6
	(declare (salience ?*detect-diagonal-3-2s-6-salience*))
    (technique ?cont diagonal-3-2s)
        
    (diagonal-3-2s ?cont ?row1 ?col1 ?row5 ?col5 ?diag 5)
    (candidate (context ?cont) (status c-value) (type N) (row ?row6) (column ?col6) (value 2))
    (test (is-direction ?diag ?row5 ?col5 ?row6 ?col6))

=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row6 ?col6 ?diag 6))
)



(defrule detect-diagonal-3-2s-7
	(declare (salience ?*detect-diagonal-3-2s-7-salience*))
    (technique ?cont diagonal-3-2s)
        
    (diagonal-3-2s ?cont ?row1 ?col1 ?row6 ?col6 ?diag 6)
    (candidate (context ?cont) (status c-value) (type N) (row ?row7) (column ?col7) (value 2))
    (test (is-direction ?diag ?row6 ?col6 ?row7 ?col7))

=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row7 ?col7 ?diag 7))
)



(defrule detect-diagonal-3-2s-8
	(declare (salience ?*detect-diagonal-3-2s-8-salience*))
    (technique ?cont diagonal-3-2s)
        
    (diagonal-3-2s ?cont ?row1 ?col1 ?row7 ?col7 ?diag 7)
    (candidate (context ?cont) (status c-value) (type N) (row ?row8) (column ?col8) (value 2))
    (test (is-direction ?diag ?row7 ?col7 ?row8 ?col8))

=>
    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?row8 ?col8 ?diag 8))
)



;(defrule detect-diagonal-3-2s-larger-than-8
;	(declare (salience ?*detect-diagonal-3-2s-large-salience*))
;    (technique ?cont diagonal-3-2s)
        
;    (diagonal-3-2s ?cont ?row1 ?col1 ?rowN ?colN ?diag ?N&:(>= ?N 8))
;    (candidate (context ?cont) (status c-value) (type N) (row ?rowN1) (column ?colN1) (value 2))
;    (test (is-direction ?diag ?rowN ?colN ?rowN1 ?colN1))

;=>
;    (assert (diagonal-3-2s ?cont ?row1 ?col1 ?rowN ?colN ?diag (+ ?N 1)))
;    (printout t (+ ?N 1))
;)


