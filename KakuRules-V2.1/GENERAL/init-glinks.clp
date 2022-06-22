
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              INIT G-LINKS
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





;;; this file is loaded only if (or ?*G-Bivalue-Chains* ?*G-Whips* ?*G-Braids*),
;;; i.e. only if G-Bivalue-Chains or G-Braids or G-Whips are used

;;; because of the (label-in-glabel) test functions in init-g-candidates,
;;; all the physical glinks must have been defined before these rules are applied
;;; this is materialised by condition (all-physical-glinks-defined)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; g-candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; g-candidates do not appear explicitly in the rules
;;; they are used only for computing and maintaining (by logicals) the csp-glinked and exists-glink predicates

    
(defrule activate-init-g-candidates
	(declare (salience ?*activate-init-g-candidates-salience*))
=>
	(if ?*print-levels* then (printout t "initialising g-candidates and effective g-links, "))
    (assert (all-physical-glinks-defined))
)



(defrule track-init-g-candidates
	(declare (salience ?*activate-init-g-candidates-salience*))
	?level <- (all-physical-glinks-defined)
=>
	(if ?*print-levels* then (printout t "starting with " ?level crlf))
)


(defrule init-g-candidates
	(declare (salience ?*init-g-candidates-salience*))
	(logical
		(all-physical-glinks-defined)
        (context (name ?cont))
        (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?glab))
        (exists (candidate (context ?cont) (status cand) (label ?lab1&:(label-in-glabel ?lab1 ?glab)))
            (exists (candidate (context ?cont) (status cand) (label ?lab2&:(< ?lab1 ?lab2)&:(label-in-glabel ?lab2 ?glab)))
                ;;; check that there is a candidate g-linked to it
                ;(exists (candidate (context ?cont) (status cand) (label ?lab))
                    ;(not (is-csp-variable-for-label ?csp-var ?lab))
                ;    (physical-glink ?lab ?glab ?gt)
                ;)
            )
        )
	)
    ;;; avoid redundancies
    (not (g-candidate (context ?cont) (label ?glab)))
=>
	(assert (g-candidate (context ?cont) (label ?glab)))
	(bind ?*nb-g-candidates* (+ ?*nb-g-candidates* 1))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; csp g-links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-csp-glinks
	(declare (salience ?*init-csp-glinks-salience*))
	(logical
		(all-physical-glinks-defined)
		(candidate (context ?cont) (label ?lab))
		(g-candidate (context ?cont) (label ?glab))
	)
    (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?glab))
	(physical-csp-glink ?lab ?glab ?csp-var)
    ;;; avoid redundancies
    (not (csp-glinked ?cont ?lab ?glab ?csp-var))
=>
	(assert (csp-glinked ?cont ?lab ?glab ?csp-var))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 1))
    ;;; also assert it as a glink
	(assert (exists-glink ?cont ?lab ?glab))
    (if (eq ?cont 0) then (add-glink ?lab ?glab))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; non-csp g-links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-non-csp-glinks
	"g-candidates always appear as the third argument in predicate glinked"
	(declare (salience ?*init-non-csp-glinks-salience*))
	(logical
		(all-physical-glinks-defined)
		(candidate (context ?cont) (label ?lab))
		(g-candidate (context ?cont) (label ?glab))
	)
    (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?glab))
    (not (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab)))
	(physical-glink ?lab ?glab ?gt)
    ;;; avoid redundancies
    (not (exists-glink ?cont ?lab ?glab))
=>
	(assert (exists-glink ?cont ?lab ?glab))
    (if (eq ?cont 0) then (add-glink ?lab ?glab))
)



;;; defrule init-effective-glinks-end inherited from Generic
