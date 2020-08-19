
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / MAPRULES
;;;                              INIT-LINKS
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INIT EFFECTIVE LINKS     
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-csp-links
	(declare (salience ?*init-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-link ?cand1 ?cand2 ?country&~neighbour)
=>
	;;; assert the csp-links due to the csp-variables
    (assert (csp-linked ?cont ?cand1 ?cand2 ?country))
    (assert (csp-linked ?cont ?cand2 ?cand1 ?country))
    (bind ?*csp-links-count* (+ ?*csp-links-count* 1))

	;;; assert them also as ordinary links 
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-non-csp-links
    ;;; neighbouhood links
	(declare (salience ?*init-non-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-link ?cand1 ?cand2 neighbour)
=>
	;;; assert the links due to the neighbourhood constraints
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)




