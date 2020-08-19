
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / KAKURULES
;;;                              INIT LINKS
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





;;; cancal the generic rules for initialising links
(defrule init-effective-csp-links =>)
(defrule init-effective-non-csp-links =>)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; CSP links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-csp-links-rc
	(declare (salience ?*init-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1)
            (row ?row1) (column ?col1) (column-of-horizontal-controller ?col-hctr1) (row-of-vertical-controller ?row-vctr1)
        )
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-csp-link ?cand1 ?cand2 ?csp rc)
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
    (if ?*Typed-Chains* then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp (sym-cat h (row-name ?row1) (column-name ?col-hctr1))))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp (sym-cat h (row-name ?row1) (column-name ?col-hctr1))))
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp (sym-cat v (row-name ?row-vctr1) (column-name ?col1))))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp (sym-cat v (row-name ?row-vctr1) (column-name ?col1))))
    )
	;;; also assert these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-csp-links-hrc
	(declare (salience ?*init-csp-links-salience-2*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1) (row ?row1) (column ?col1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-csp-link ?cand1 ?cand2 ?csp hrc)
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
    (if ?*Typed-Chains* then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp (sym-cat h (row-name ?row1) (column-name ?col1))))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp (sym-cat h (row-name ?row1) (column-name ?col1))))
    )
	;;; also assert these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-csp-links-vrc
	(declare (salience ?*init-csp-links-salience-3*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1) (row ?row1) (column ?col1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-csp-link ?cand1 ?cand2 ?csp vrc)
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
    (if ?*Typed-Chains* then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp (sym-cat v (row-name ?row1) (column-name ?col1))))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp (sym-cat v (row-name ?row1) (column-name ?col1))))
    )
	;;; also assert these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)


(defrule init-effective-csp-links-rn
	(declare (salience ?*init-csp-links-salience-4*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (row ?row1) (column-of-horizontal-controller ?col-hctr1) (label ?cand1))
		(candidate (context ?cont) (status cand) (row ?row1) (column-of-horizontal-controller ?col-hctr1) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-csp-link ?cand1 ?cand2 ?csp rn)
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
    (if ?*Typed-Chains* then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp (sym-cat h (row-name ?row1) (column-name ?col-hctr1))))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp (sym-cat h (row-name ?row1) (column-name ?col-hctr1))))
    )
	;;; also assert these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)


(defrule init-effective-csp-links-cn
	(declare (salience ?*init-csp-links-salience-5*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (column ?col1) (row-of-vertical-controller ?row-vctr1) (label ?cand1))
		(candidate (context ?cont) (status cand) (column ?col1) (row-of-vertical-controller ?row-vctr1) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-csp-link ?cand1 ?cand2 ?csp cn)
=>
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(bind ?*csp-links-count* (+ ?*csp-links-count* 1))
    (if ?*Typed-Chains* then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp (sym-cat v (row-name ?row-vctr1) (column-name ?col1))))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp (sym-cat v (row-name ?row-vctr1) (column-name ?col1))))
    )
	;;; also assert these links as general links
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; non-CSP links
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; rn and cn links for non-magic sectors

(defrule init-effective-non-csp-links-rn
	(declare (salience ?*init-non-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (row ?row) (label ?cand1) (column-of-horizontal-controller ?col-hctr1))
		(candidate (context ?cont) (status cand) (row ?row) (column-of-horizontal-controller ?col-hctr1) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-link ?cand1 ?cand2 rn)
    ;;; avoid redundancies
    (not (exists-link ?cont ?cand1 ?cand2))
=>
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)


(defrule init-effective-non-csp-links-cn
	(declare (salience ?*init-non-csp-links-salience-2*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (column ?col) (label ?cand1) (row-of-vertical-controller ?row-vctr1))
		(candidate (context ?cont) (status cand) (column ?col) (row-of-vertical-controller ?row-vctr1) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(physical-link ?cand1 ?cand2 cn)
    ;;; avoid redundancies
    (not (exists-link ?cont ?cand1 ?cand2))
=>
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)


;;; hS and vS links


(defrule init-effective-non-csp-links-hS
	(declare (salience ?*init-non-csp-links-salience-3*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(or (physical-link ?cand1 ?cand2 hS) (physical-link ?cand2 ?cand1 hS))
    ;;; avoid redundancies
    (not (exists-link ?cont ?cand1 ?cand2))
=>
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)


(defrule init-effective-non-csp-links-vS
	(declare (salience ?*init-non-csp-links-salience-4*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (label ?cand1))
		(candidate (context ?cont) (status cand) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(or (physical-link ?cand1 ?cand2 vS) (physical-link ?cand2 ?cand1 vS))
    ;;; avoid redundancies
    (not (exists-link ?cont ?cand1 ?cand2))
=>
	(assert (exists-link ?cont ?cand1 ?cand2))
	(assert (exists-link ?cont ?cand2 ?cand1))
    (if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)




