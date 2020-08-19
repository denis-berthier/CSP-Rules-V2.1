
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / GENERIC
;;;                              INIT GLINKS
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
;;; i.e. only if G-Bivalue-Chains or G-Whips or G-Braids are used

;;; because of the test function in init-g-candidates,
;;; all the glabels and "physical" glinks between them must have been defined before the g-candidate rules are applied
;;; this is materialised by the addition of fact (init-g-candidates ?cont)

;;; note that this generic version will in general be very inefficient



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; init g-labels
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


    
(defrule activate-init-g-labels
	(declare (salience ?*activate-init-g-labels-salience*))
    (play)
=>
	(if ?*print-levels* then (printout t "initialising g-labels, label-glabel-glinks and label-in-glabel"))
    (assert (init-g-labels))
)



(defrule track-init-g-labels
	(declare (salience ?*activate-init-g-labels-salience*))
	?level <- (init-g-labels)
=>
	(if ?*print-levels* then (printout t ", starting with " ?level crlf))
)


(defrule init-g-labels
    ;;; call to application-specific function "define-glabels-and-glinks"
	(declare (salience ?*init-g-labels-salience*))
    (init-g-labels)
=>
    (define-glabels-and-glinks)
    (assert (glabels-and-glinks-defined))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; init g-candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule activate-init-g-candidates
	(declare (salience ?*activate-init-g-candidates-salience*))
    (context (name ?cont))
    (glabels-and-glinks-defined)
=>
	(if ?*print-levels* then (printout t "initialising g-candidates and effective g-links"))
    (assert (technique ?cont g-candidates))
)



(defrule track-init-g-candidates
	(declare (salience ?*activate-init-g-candidates-salience*))
    ?level <- (technique ?cont g-candidates)
=>
	(if ?*print-levels* then (printout t ", starting with " ?level crlf))
)



(defrule init-g-candidates
    ;;; 2015-02-15: added ?csp-var-type
	(declare (salience ?*init-g-candidates-salience*))
	(logical
		(technique ?cont g-candidates)
        (is-csp-variable-for-glabel (csp-var ?csp-var) (glabel ?glab) (csp-var-type ?csp-var-type))
        (candidate (context ?cont) (status cand) (label ?lab1&:(label-in-glabel ?lab1 ?glab)))
        (candidate (context ?cont) (status cand) (label ?lab2&:(< ?lab1 ?lab2)&:(label-in-glabel ?lab2 ?glab)))
        ;;; check that there is effectively at least one candidate glinked and not csp-glinked to glab
        ;;; this may be very inefficient in general
        ;(exists (candidate (context ?cont) (status cand) (label ?lab))
        ;    (not (is-csp-variable-for-label (csp-var ?csp-var) (label ?lab)))
        ;    (forall (candidate (context ?cont) (label ?xxx&:(label-in-glabel ?xxx ?glab))) (test (linked ?lab ?xxx)))
        ;)
	)
    ;;; avoid counting redundant g-candidates
    (not (g-candidate (context ?cont) (label ?glab) (csp-var ?csp-var) (type ?csp-var-type)))
=>
	(assert (g-candidate (context ?cont) (label ?glab) (csp-var ?csp-var) (type ?csp-var-type)))
	(bind ?*nb-g-candidates* (+ ?*nb-g-candidates* 1))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; csp g-links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; IN THE SAME WAY AS CSP-LINKS ARE ALSO LINKS, CSP-GLINKS ARE ALSO GLINKS


(defrule init-effective-csp-glinks-1
	(declare (salience ?*init-csp-glinks-salience-1*))
	(logical
		(technique ?cont g-candidates)
		(g-candidate (context ?cont) (label ?glab) (csp-var ?csp))
        (is-csp-variable-for-label (csp-var ?csp) (label ?lab&:(not (label-in-glabel ?lab ?glab))))
		(candidate (context ?cont) (label ?lab))
	)
    ;;; avoid redundant counting:
    (not (csp-glinked ?cont ?lab ?glab ?csp))
=>
	(assert (csp-glinked ?cont ?lab ?glab ?csp))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 1))
)



(defrule init-effective-csp-glinks-2
	(declare (salience ?*init-csp-glinks-salience-2*))
	(logical
		(technique ?cont g-candidates)
		(g-candidate (context ?cont) (label ?glab) (csp-var ?csp))
        (is-csp-variable-for-label (csp-var ?csp) (label ?lab&:(not (label-in-glabel ?lab ?glab))))
		(candidate (context ?cont) (label ?lab))
	)
    ;;; avoid redundant counting:
    (not (exists-glink ?cont ?lab ?glab))
=>
    ;;; also assert the csp-glinks as ordinary glinks
	(assert (exists-glink ?cont ?lab ?glab))
    (if (eq ?cont 0) then (add-glink ?lab ?glab))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; non-csp g-links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



(defrule init-effective-non-csp-glinks
	(declare (salience ?*init-non-csp-glinks-salience*))
	(logical
		(technique ?cont g-candidates)
		(g-candidate (context ?cont) (label ?glab) (csp-var ?csp))
		(candidate (context ?cont) (label ?lab&:(label-glabel-glinked ?lab ?glab))) ; &:(not (label-in-glabel ?lab ?glab)) useless
        (not (is-csp-variable-for-label (csp-var ?csp) (label ?lab)))
	)
    ;;; avoid redundant counting:
    (not (exists-glink ?cont ?lab ?glab))
=>
	(assert (exists-glink ?cont ?lab ?glab))
    (if (eq ?cont 0) then (add-glink ?lab ?glab))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; end init g-links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-glinks-end
	(declare (salience ?*init-glinks-end-salience*))
    (technique ?cont g-candidates)
=>
	(if ?*print-initial-state* then 
        (printout t ?*nb-g-candidates* " g-candidates, " ?*csp-glinks-count* " csp-glinks and " ?*glinks-count* " non-csp glinks" crlf)
    )
)
