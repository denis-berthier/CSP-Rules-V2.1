
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
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





;;; Single is always active in every context, as soon as (BRT) is asserted
;;; delete the generic rule and replace it with more specific ones
;;; in order to control their order of application
(defrule single =>)



(defrule activate-special-single
	(declare (salience ?*activate-special-single-salience*))
	(logical (technique ?cont BRT))
=>
    (assert (technique ?cont special-single))
	(bind ?*technique* S)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; SPECIAL SINGLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule H-single
	"if there is a csp-variable of type H whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
	(declare (salience ?*H-V-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont special-single)
    (is-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type H))
	?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type H) (value ?val) (row ?row) (column ?col))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?lab))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
	(if (and (or ?*print-actions* ?*print-L0*) ?*print-HV-single*) then
		(printout t "H-single: H" (row-name ?row) (column-name ?col) ?*equal-sign* (H-value-name ?val)  crlf)
	)
	(modify ?cand (status c-value))
)


(defrule V-single
	"if there is a csp-variable of type V whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
	(declare (salience ?*H-V-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont special-single)
    (is-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type V))
	?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type V) (value ?val) (row ?row) (column ?col))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?lab))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (and (or ?*print-actions* ?*print-L0*) ?*print-HV-single*) then
		(printout t "V-single: V" (row-name ?row) (column-name ?col) ?*equal-sign* (V-value-name ?val)  crlf)
	)
	(modify ?cand (status c-value))
)


(defrule N-single
    "if there is a csp-variable of type N whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
    (declare (salience ?*N-single-salience*))
    (logical (context (name ?cont)))
    (technique ?cont special-single)
    (is-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type N))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type N) (value ?val) (row ?row) (column ?col))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?lab))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (or ?*print-actions* ?*print-L0* ?*print-single*) then
        (printout t "N-single: N" (row-name ?row) (column-name ?col) ?*equal-sign* (V-value-name ?val)  crlf)
    )
    (modify ?cand (status c-value))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DELAYED SINGLES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule I-single
    "if there is a csp-variable of type I whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
    (declare (salience ?*I-single-salience*))
    (logical (context (name ?cont)))
    (technique ?cont special-single)
    (is-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type I))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type I) (value ?val) (row ?row) (column ?col))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?lab))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (and (or ?*print-actions* ?*print-L0*) ?*print-I-single*) then
        (printout t "I-single: I" (row-name ?row) (column-name ?col) ?*equal-sign* (I-value-name ?val) crlf)
    )
    (modify ?cand (status c-value))
)


(defrule P-single
    "if there is a csp-variable whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
    (declare (salience ?*P-single-salience*))
    (logical (context (name ?cont)))
    (technique ?cont special-single)
    (is-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type P))
    ?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type P) (value ?val) (row ?row) (column ?col))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?lab))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (and (or ?*print-actions* ?*print-L0*) ?*print-P-single*) then
        (printout t "P-single: P" (row-name ?row) (column-name ?col) ?*equal-sign* (P-value-name ?val) crlf)
    )
    (modify ?cand (status c-value))
)


(defrule B-single
	"if there is a csp-variable whose candidates have been confined to a unique value ?cand, then assert it as a c-value"
	(declare (salience ?*B-single-salience*))
    (logical (context (name ?cont)))
	(technique ?cont special-single)
    (is-csp-variable-for-label (csp-var ?csp) (label ?lab) (csp-var-type B))
	?cand <- (candidate (context ?cont) (status cand) (label ?lab) (type B) (value ?val) (row ?row) (column ?col))
    (forall (is-csp-variable-for-label (csp-var ?csp) (label ?xxx&~?lab))
        (not (candidate (context ?cont) (label ?xxx)))
    )
=>
    (if (eq ?cont 0) then
        (bind ?*nb-csp-variables-solved* (+ ?*nb-csp-variables-solved* 1))
        (bind ?*nb-candidates* (- ?*nb-candidates* 1))
    )
    (if (and (or ?*print-actions* ?*print-L0*) ?*print-B-single*) then
		(printout t "B-single: B" (row-name ?row) (column-name ?col) ?*equal-sign* (B-value-name ?val) crlf)
	)
	(modify ?cand (status c-value))
)
