
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / LATINRULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; FUNCTIONS "LINKED" AND "LINKED-OR"
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; instead of using the generic version of functions "linked" and "linked-or" (based on global variable ?*links*)
;;; we have redefined them respectively as "labels-linked" and "labels-linked-or" (in file background.clp)
;;; (using the generic version would be slower)

(deffunction linked (?lab1 ?lab2) (labels-linked ?lab1 ?lab2))

(deffunction linked-or (?lab $?labs) (labels-linked-or ?lab $?labs))

;;; for using the generic version, the above redefinitions must be deleted,
;;; (add-link ?cand1 ?cand2) must be added to the following rules
;;; and (if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1))) must be deleted from them


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INIT LINKS BETWEEN EXISTING CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; cancel the generic rules for initialising links
(defrule init-effective-csp-links =>)
(defrule init-effective-non-csp-links =>)



(defrule init-effective-links-rc
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (row ?row) (column ?col) (label ?cand1))
		(candidate (context ?cont) (status cand) (row ?row) (column ?col) (label ?cand2&:(< ?cand1 ?cand2)))
	)
=>
	(bind ?csp (row-column-to-rc-variable ?row ?col))
    ;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(add-link ?cand1 ?cand2)
)



(defrule init-effective-links-rn
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-2*))
	(logical
	(init-links ?cont)
		(candidate (context ?cont) (status cand) (number ?nb) (row ?row) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (row ?row) (label ?cand2&:(< ?cand1 ?cand2)))
	)
=>
	(bind ?csp (row-number-to-rn-variable ?row ?nb))
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(add-link ?cand1 ?cand2)
)



(defrule init-effective-links-cn
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-3*))
	(logical
		(candidate (context ?cont) (status cand) (number ?nb) (column ?col) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (column ?col) (label ?cand2&:(< ?cand1 ?cand2)))
	)
	(init-links ?cont)
=>
	(bind ?csp (column-number-to-cn-variable ?col ?nb))
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(add-link ?cand1 ?cand2)
)




