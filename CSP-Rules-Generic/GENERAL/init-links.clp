
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              INT-LINKS
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





;;; Due to salience definitions, links are now only activated after all the rules in BRT and pre-BRT
;;; Rules in BRT no longer depend on (play) being already asserted
;;; This leads to density calculations different from those in the previous versions of CSP-Rules,
;;; because these calculations are now done after the rules in BRT have been applied,
;;; which I consider more meaningful

;;; Links are activated, and this file is loaded, only if at least whips[1], Bi-Whips or Bi-Braids are active
;;; As a result, rule "end-init-effective-links", which asserts (play),
;;; must now be in a separate file ("play.clp"), that is always loaded

;;; Links are computed before (play) is asserted because,
;;; unless the puzzle is solved in BRT,
;;; the numbers of csp-links and links are printed when (play) is asserted



;;; This is the only place in CSP-Rules and its applications where links are activated

(defrule activate-init-links
	(declare (salience ?*activate-init-links-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate init-links))
=>
    (if ?*print-levels* then (printout t Starting_init_links))
    (assert (init-links ?cont))
    (bind ?*technique* init-links)
)


(defrule track-init-links
	(declare (salience ?*activate-init-links-salience*))
	?level <- (init-links ?cont)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INIT LINKS BETWEEN EXISTING CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; This is intended only as an example of what must be done
;;; We suppose that function "labels-linked" has been defined in background.clp

;;; csp-links are based on predicate is-csp-variable-for-label
;;; links are based on the application-specific function labels-linked

;;; csp-links and links can only be created at init time in any context (new candidates cannot be asserted)
;;; csp-links or links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
;;; (because ECP depends only on function labels-links - not on the following effective links)



;;; init-effective-csp-links asserts only the csp-linked facts
;;; init-effective-non-csp-links asserts all the exists-link facts, including those associated with csp-links
;;; (the latter must not be counted twice by add-link)

;;; for efficiency reasons, all the rules below may be redefined in application-specific ways
;;; e.g. by using application-specific slots of predicate "candidate"

;;; notice that no csp-type information is provided in the generic csp-links for use by typed-chains
;;; this has to be done in each application-specifi init-links file

(defrule init-effective-csp-links
    (declare (salience ?*init-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
        (is-csp-variable-for-label (csp-var ?csp) (label ?cand1))
        (is-csp-variable-for-label (csp-var ?csp) (label ?cand2&:(< ?cand1 ?cand2)))
		(candidate (context ?cont) (status cand) (label ?cand2))
	)
    ;;; avoid counting redundant csp-links
    (not (csp-linked ?cont ?cand1 ?cand2 ?csp))
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
)



(defrule init-effective-non-csp-links
	(declare (salience ?*init-non-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)&:(labels-linked ?cand1 ?cand2)))
	)
    ;;; avoid counting redundant links
    ;;; (two labels may be linked by several constraints, count all these as only one link)
    (not (exists-link ?cont ?cand1 ?cand2))
=>
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)


