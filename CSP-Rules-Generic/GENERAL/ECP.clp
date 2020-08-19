
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              ECP (ELEMENTARY CONSTRAINTS PROPAGATION)
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





;;; for efficiency reasons, the rule below may be redefined in application-specific ways
;;; e.g. by using application-specific slots of predicate "candidate"
;;; and short-circuiting function "labels-linked"

;;; ECP rules are always active in every context, as soon as (BRT) is asserted


;;; BEWARE: 

;;; for this generic rule to work, function "labels-linked" must have been defined
;;; it must be symmetric, even if only half of the "physical" links have been explicitly created.

;;; moreover, "labels-linked" must take into account all the links between labels,
;;; i.e. - including those between c-values and candidates,
;;;      - including those between different values of a csp variable.





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; ELEMENTARY CONSTRAINTS PROPAGATION 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule propagate-elementary-constraints
	"a candidate linked to a decided value should be retracted"
	(declare (salience ?*simple-constraints-propagation-salience*))
	(technique ?cont BRT)
    (candidate (context ?cont) (status c-value) (label ?val) (flag 1))
    ?xxx <- (candidate (context ?cont) (status cand) (label ?cand&:(labels-linked ?val ?cand)))
=>
	(retract ?xxx)
    (if (or ?*print-all-details* ?*print-ECP-details*) then (print-deleted-candidate ?cand) (printout t crlf))
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
)


(defrule c-value-not-cand
    "a label can only have one status; this rule is potentially useful in a csp with rules (other than S) that assert c-values"
    (declare (salience ?*csp-variable-constraints-propagation-salience*))
    (technique ?cont BRT)
    (candidate (context ?cont) (status c-value) (label ?val))
    ?xxx <- (candidate (context ?cont) (status cand) (label ?val))
=>
    (retract ?xxx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
)





