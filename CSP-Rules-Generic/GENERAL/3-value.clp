
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              3-VALUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2022              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-3-value
	(declare (salience ?*activate-3-value-salience*))
	(logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont 3-value))
    )
=>
	(if ?*print-levels* then (printout t Entering_relation_3-value))
	(assert (technique ?cont 3-value))
	(bind ?*technique* 3-value)
)


(defrule track-3-value
	(declare (salience ?*activate-3-value-salience*))
	?level <- (technique ?cont 3-value)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OR3 relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule 3-value
    (declare (salience ?*3-value-salience*))
    (logical
        (technique ?cont 3-value)
        (csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
        (csp-linked ?cont ?cand2 ?cand3&:(< ?cand2 ?cand3) ?csp)
    )
    (not (csp-linked ?cont ?cand1 ?candx&~?cand2&~?cand3 ?csp))
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?cand1)))
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?cand2)))
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?cand3)))
=>
    (assert
        (ORk-relation
            (OR-name 3-value)
            (OR-complexity 1)
            (context ?cont)
            (OR-size 3)
            (OR-candidates ?cand1 ?cand2 ?cand3)
        )
    )
)



