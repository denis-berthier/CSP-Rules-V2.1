
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ZERO
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





(defrule activate-zero
	(declare (salience ?*detect-zero-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont zero))
=>
	(assert (technique ?cont zero))
	(bind ?*technique* zero)
)


(defrule detect-a-zero
	(declare (salience ?*detect-zero-salience*))
    (technique ?cont zero)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont zero ?row ?col))
	(if (or ?*print-actions* ?*print-zero*) then
        (bind ?*blocked-rule-description* (str-cat "w[0]-0-in-" (row-name ?row) (column-name ?col)))
    )
)



(defrule apply-zero-H
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont zero ?row ?col)
    
    ;;; assert H c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H) (value 0) (row ?rowx) (column ?col))
	(test (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
=>
    (modify ?cand (status c-value))
	(if (or ?*print-actions* ?*print-zero*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?col) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)



(defrule apply-zero-V
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont zero ?row ?col)

    ;;; assert V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&V) (value 0) (row ?row) (column ?colx))
	(test (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
=>
    (modify ?cand (status c-value))
	(if (or ?*print-actions* ?*print-zero*) then
        (bind ?elim (str-cat ?type (row-name ?row) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)




