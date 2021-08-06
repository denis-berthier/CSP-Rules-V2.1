
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              BIVALUE
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





(defrule activate-bivalue
	(declare (salience ?*activate-bivalue-salience*))
	(logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont bivalue))
    )
=>
	(if ?*print-levels* then (printout t Entering_relation_bivalue))
	(assert (technique ?cont bivalue))
	(bind ?*technique* bivalue)
)


(defrule track-bivalue
	(declare (salience ?*activate-bivalue-salience*))
	?level <- (technique ?cont bivalue)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



(defrule bivalue
	(declare (salience ?*bivalue-salience*))
	(logical
		(technique ?cont bivalue)
		(csp-linked ?cont ?cand1 ?cand2&:(< ?cand1 ?cand2) ?csp)
	)
    (not (csp-linked ?cont ?cand1 ?candx&~?cand2 ?csp))
=>
	(assert (bivalue ?cont ?cand1 ?cand2 ?csp))
	(assert (bivalue ?cont ?cand2 ?cand1 ?csp))
)


