
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              2-VALUE
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





(defrule activate-2-value
	(declare (salience ?*activate-2-value-salience*))
	(logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont 2-value))
    )
=>
	(if ?*print-levels* then (printout t Entering_relation_2-value))
	(assert (technique ?cont 2-value))
	(bind ?*technique* 2-value)
)


(defrule track-2-value
	(declare (salience ?*activate-2-value-salience*))
	?level <- (technique ?cont 2-value)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; OR2 relations
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule 2-value
	(declare (salience ?*2-value-salience*))
	(logical
		(technique ?cont 2-value)
		(csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
	)
    (not (csp-linked ?cont ?cand1 ?candx&~?cand2 ?csp))
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?cand1)))
    (or (not (candidate-in-focus (context ?cont))) (candidate-in-focus (context ?cont) (label ?cand2)))
=>
	(assert
        (OR-k-relation
            (OR-name 2-value)
            (OR-complexity 1)
            (context ?cont)
            (OR-size 2)
            (OR-candidates ?cand1 ?cand2)
        )
    )
)



