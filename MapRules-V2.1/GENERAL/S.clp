
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / MAPRULES
;;;                              SINGLES
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





;;; Single is always active in every context


(defrule activate-single
	(declare (salience ?*single-salience*))
	(logical (technique ?cont BRT))
=>
	(assert (technique ?cont single))
	(bind ?*technique* S)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ASSERT VALUE WHEN SINGLE CANDIDATE 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule single
	"if there is a country whose candidates have been confined to a unique value, then assert it as a c-value"
	(declare (salience ?*single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont single)
	?mod <- (candidate (context ?cont) (status cand) (label ?xxx) (colour ?col) (country ?count))
	(not (candidate (context ?cont) (country ?count) (label ?yyy&~?xxx)))
=>
	(if (eq ?cont 0) then (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1)))
	(if (or ?*print-actions* ?*print-L0* ?*print-single*) then
		(printout t "single" ?*implication-sign* (country-name ?count) ?*equal-sign* (colour-name ?col) crlf)
	)
    (bind ?*solution* (str-cat (sub-string 1 (- ?count 1) ?*solution*) (colour-name ?col) (sub-string (+ ?count 1) ?*nb-countries* ?*solution*)))
;    (printout t ?*nb-csp-variables-solved* " csp-variables solved : " ?*solution* crlf)
    (modify ?mod (status c-value))
)

