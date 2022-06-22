
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
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





;;; this file is loaded only if (or ?*G-Whips* ?*G-Braids*), i.e. only if G-Whips or G-Braids are used


(defrule init-effective-csp-glinks-1 =>)
(defrule init-effective-csp-glinks-2 =>)


(defrule init-g-labels
	(declare (salience ?*init-g-labels-salience*))
	(play)
    (context (name ?cont))
=>
	(assert (technique ?cont g-candidates))
	(define-glabels-and-glinks ?*horiz* ?*verti*)
)




(defrule init-g-candidates
	(declare (salience ?*init-g-candidates-salience*))
	(logical
		(g-label ?glabel ?type)
		(candidate (context ?cont) (label ?cand1&:(label-in-glabel ?cand1 ?glabel)))
		(candidate (context ?cont) (label ?cand2&:(< ?cand1 ?cand2)&:(label-in-glabel ?cand2 ?glabel)))
	)
=>
	(assert (g-candidate (context ?cont) (label ?glabel) (csp-var 0)))
    (bind ?*nb-g-candidates* (+ ?*nb-g-candidates* 1))
)
	



(defrule init-effective-csp-glinks
	"g-candidates appear only as the third argument in the csp-glinked predicate"
	(declare (salience ?*init-csp-glinks-salience*))
	(logical
		(candidate (context ?cont) (label ?cand) (row ?row) (column ?col))
		(g-candidate (context ?cont) (label ?gcand))
	)
	(physical-csp-glink ?cand ?gcand rc)
=>
	(assert (csp-glinked ?cont ?cand ?gcand (row-column-to-rc-variable ?row ?col)))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 1))
    ;;; also assert it as an ordinary glink
	(assert (exists-glink ?cont ?cand ?gcand))
    (if (eq ?cont 0) then (add-glink ?cand ?gcand))
)



(defrule init-effective-non-csp-glinks
	"g-candidates appear only as the third argument in the glinked predicate"
	(declare (salience ?*init-non-csp-glinks-salience-1*))
	(logical
		(candidate (context ?cont) (label ?cand))
		(g-candidate (context ?cont) (label ?gcand))
	)
	(physical-glink ?gcand ?cand ineq)
    ;;; avoid redundancies:
    (not (exists-glink ?cont ?cand ?gcand))
=>
	(assert (exists-glink ?cont ?cand ?gcand))
    (if (eq ?cont 0) then (add-glink ?cand ?gcand))
)


;;; defrule init-effective-glinks-end inherited from Generic
