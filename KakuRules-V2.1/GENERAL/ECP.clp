
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              ELEMENTARY CONSTRAINTS PROPAGATION (ECP)
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INITIAL DELETION OF USELESS CANDIDATES (to compensate for careless init function)
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule clean-init-candidates
	"if a c-value is asserted, then any candidate with the same label should be retracted"
	(declare (salience ?*clean-init-candidates-salience*))
	(play)
	(candidate (context ?cont) (status c-value) (label ?xxx))
	?cand <- (candidate (context ?cont) (status cand) (label ?xxx))
=>
	(retract ?cand)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ELEMENTARY CONSTRAINTS PROPAGATION 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule propagate-elementary-constraints
	"if a new c-value is asserted, then any candidate linked to it should be retracted"
	(declare (salience ?*simple-constraints-propagation-salience*))
	(technique ?cont BRT)
	?ret <- (candidate (context ?cont) (status cand) (type ?ttt) (label ?cand) (number ?nb) (row ?row) (column ?col))
	(candidate (context ?cont) (status c-value) (label ?val) (flag 1))
	(or (physical-link ?val ?cand ?) (physical-link ?cand ?val ?)
        (physical-csp-link ?val ?cand ? ?) (physical-csp-link ?cand ?val ? ?)
    )
=>
	(retract ?ret)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if ?*print-ECP-details* then
        (bind ?type-sign
            (if (eq ?ttt white) 
                then "" 
                else (if (eq ?ttt horiz-comb) then "h" else "v")
            )
        )
        (printout t "ECP" ?*implication-sign* ?type-sign (row-name ?row)  (column-name ?col) ?*non-equal-sign* ?nb  crlf)
    )
)



