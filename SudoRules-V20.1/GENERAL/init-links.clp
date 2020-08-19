
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
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
;;; we redefine them respectively as "labels-linked" and "labels-linked-or"
;;; (using the generic version would be slower)

(deffunction linked (?lab1 ?lab2) (labels-linked ?lab1 ?lab2))

(deffunction linked-or (?lab $?labs) (labels-linked-or ?lab $?labs))

;;; for using the generic version, the above redefinitions must be deleted and
;;; (if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1))) 
;;; must be replaced by
;;; (if (eq ?cont 0) then (add-link ?cand1 ?cand2)) 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; INIT LINKS BETWEEN EXISTING CANDIDATES
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; cancel the generic rules for initialising links
(defrule init-effective-csp-links =>)
(defrule init-effective-non-csp-links =>)


;;; by inverting saliences, change the order csp-links and links are asserted

(defrule init-effective-links-rc
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-4*))
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
    ;;; assert the corresponding typed csp-links when Typed-Chains are activated
    (if (and ?*Typed-Chains* (or (not ?*restrict-csp-types-in-typed-chains*) (member$ rc ?*allowed-csp-types*))) then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp rc))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp rc))
    )
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-links-rn
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-3*))
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
    ;;; assert the corresponding typed csp-links when Typed-Chains are activated
    (if (and ?*Typed-Chains* (or (not ?*restrict-csp-types-in-typed-chains*) (member$ rc ?*allowed-csp-types*))) then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp rn))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp rn))
    )
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-links-cn
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-2*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (number ?nb) (column ?col) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (column ?col) (label ?cand2&:(< ?cand1 ?cand2)))
	)
=>
	(bind ?csp (column-number-to-cn-variable ?col ?nb))
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
    ;;; assert the corresponding typed csp-links when Typed-Chains are activated
    (if (and ?*Typed-Chains* (or (not ?*restrict-csp-types-in-typed-chains*) (member$ rc ?*allowed-csp-types*))) then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp cn))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp cn))
    )
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)



(defrule init-effective-links-bn
    ;;; csp-links can only be created at init time (new candidates cannot be asserted)
    ;;; csp-links between a c-value and a candidate are useless because such candidates would be eliminated by ECP
    (declare (salience ?*init-csp-links-salience-1*))
	(logical
        (init-links ?cont)
		(candidate (context ?cont) (status cand) (number ?nb) (block ?blk) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (block ?blk) (label ?cand2&:(< ?cand1 ?cand2)))
	)
=>
	(bind ?csp (block-number-to-bn-variable ?blk ?nb))
	;;; assert the csp-links
    (assert (csp-linked ?cont ?cand1 ?cand2 ?csp))
	(assert (csp-linked ?cont ?cand2 ?cand1 ?csp))
    ;;; assert the corresponding typed csp-links when Typed-Chains are activated
    (if (and ?*Typed-Chains* (or (not ?*restrict-csp-types-in-typed-chains*) (member$ rc ?*allowed-csp-types*))) then
        (assert (typed-csp-linked ?cont ?cand1 ?cand2 ?csp bn))
        (assert (typed-csp-linked ?cont ?cand2 ?cand1 ?csp bn))
    )
	(if (eq ?cont 0) then (bind ?*csp-links-count* (+ ?*csp-links-count* 1)))
	;;; assert the non-csp-links
    (assert (exists-link ?cont ?cand1 ?cand2))
    (assert (exists-link ?cont ?cand2 ?cand1))
    ;;; notice that redundant (rn and bn) or (cn and bn) links are counted twice
	(if (eq ?cont 0) then (bind ?*links-count* (+ ?*links-count* 1)))
    ;(if (eq ?cont 0) then (add-link ?cand1 ?cand2))
)




