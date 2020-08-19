
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
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





;;; cancel the generic rules for initialising links
(defrule init-effective-csp-links =>)
(defrule init-effective-non-csp-links =>)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-csp-links-n
	(declare (salience ?*init-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (number ?nb) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (label ?cand2&:(< ?cand1 ?cand2)))
	)
=>
	;;; assert the n csp-links
    (bind ?csp-var (number-to-Xn-csp-var ?nb))
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp-var))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp-var))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
	;;; assert also these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-csp-links-rc
	(declare (salience ?*init-csp-links-salience-2*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (row ?row) (column ?col) (label ?cand1))
		(candidate (context ?cont) (status cand) (row ?row) (column ?col) (label ?cand2&:(< ?cand1 ?cand2)))
	)
=>
	;;; assert the rc csp-links
    (bind ?csp-var (row-col-to-Xrc-csp-var ?row ?col))
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp-var))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp-var))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
	;;; assert also these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; non-CSP links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; "far" links  

(defrule init-effective-non-csp-links-far
	(declare (salience ?*init-non-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1) (number ?nb1) (row ?row1) (column ?col1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)) (number ?nb2) (row ?row2) (column ?col2))
	)
	(test (distant-linked ?nb1 ?row1 ?col1 ?nb2 ?row2 ?col2))
    ;;; do not count redundant links (this should be useless):
    (not (exists-link ?cont ?cand1 ?cand2))
=>
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)

