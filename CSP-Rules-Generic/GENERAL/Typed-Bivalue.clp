
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              TYPED BIVALUE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;            January 2006 - August 2021              ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





(defrule activate-typed-bivalue
	(declare (salience ?*activate-bivalue-salience*))
	(logical
        (play)
        (context (name ?cont))
        (not (deactivate typed-bivalue))
    )
=>
	(if ?*print-levels* then (printout t Entering_relation_bivalue))
	(assert (technique ?cont typed-bivalue))
	(bind ?*technique* typed-bivalue)
)


(defrule track-typed-bivalue
	(declare (salience ?*activate-bivalue-salience*))
	?level <- (technique ?cont typed-bivalue)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule typed-bivalue
	(declare (salience ?*bivalue-salience*))
	(logical
		(technique ?cont typed-bivalue)
		(csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp ?csp-type)
	)
    (not (csp-linked ?cont ?cand1 ?candx&~?cand2 ?csp ?csp-type))
=>
	(assert (typed-bivalue ?cont ?cand1 ?cand2 ?csp ?csp-type))
	(assert (typed-bivalue ?cont ?cand2 ?cand1 ?csp ?csp-type))
)


