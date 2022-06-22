
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
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





;;; this file is loaded only if (or ?*G-Whips* ?*G-Braids*), i.e. only if G-Braids or G-Whips are used


;;; cancel the default rules

(defrule init-g-candidates =>)

(defrule init-effective-csp-glinks-1 =>)
(defrule init-effective-csp-glinks-2 =>)

(defrule init-effective-non-csp-glinks =>)




(defrule init-g-labels
	(declare (salience ?*init-g-labels-salience*))
	(play)
    (context (name ?cont))
=>
	(init-physical-2D-segments)  
    ;;; it is useless to init label-glabel-glinks:
    ;;; (init-physical-2D-segments-and-glinks)
	(assert (technique ?cont g-candidates))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; g-candidates
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; in SudoRules, for efficiency reasons, slot csp-var of g-candidates is not used

(defrule init-g-candidates-horiz
	(declare (salience ?*init-g-candidates-salience-1*))
	(logical
        (technique ?cont g-candidates)
        (physical-2D-segment (label ?phys-seg) (type horiz) (row ?row) (column ?seg))
		(candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col1&:(in-segment ?col1 ?seg)) (block ?blk) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (row ?row) (column ?col2&:(in-segment ?col2 ?seg)) (block ?blk) (label ?cand2&:(< ?cand1 ?cand2)))
	)
    ;;; if we avoided counting duplicates by adding next line, we would miss part of the logical support for g-candidates:
    ; (not (g-candidate (context ?cont) (type horiz) (number ?nb) (row ?row) (column ?seg) (block ?blk)))
=>
    (bind ?glab (nrc-to-label ?nb ?row ?seg))
    (assert (g-candidate (context ?cont) (label ?glab) (type horiz) (number ?nb) (row ?row) (column ?seg) (block ?blk)))
    ;;; without the line for avoiding redundancy, this is over-estimated:
    (bind ?*nb-g-candidates* (+ ?*nb-g-candidates* 1))

	(bind ?csp-rn (row-number-to-rn-variable ?row ?nb))
    (assert (is-csp-variable-for-glabel (csp-var ?csp-rn) (glabel ?glab)))

	(bind ?csp-bn (block-number-to-bn-variable ?blk ?nb))
    (assert (is-csp-variable-for-glabel (csp-var ?csp-bn) (glabel ?glab)))
)
	


(defrule init-g-candidates-verti
	(declare (salience ?*init-g-candidates-salience-2*))
	(logical
        (technique ?cont g-candidates)
        (physical-2D-segment (label ?phys-seg) (type verti) (row ?seg) (column ?col))
		(candidate (context ?cont) (status cand) (number ?nb) (column ?col) (row ?row1&:(in-segment ?row1 ?seg)) (block ?blk) (label ?cand1))
		(candidate (context ?cont) (status cand) (number ?nb) (column ?col) (row ?row2&:(in-segment ?row2 ?seg)) (block ?blk) (label ?cand2&:(< ?cand1 ?cand2)))
	)
    ;;; if we avoided counting duplicates by adding next line, we would miss part of the logical support for g-candidates:
    ; (not (g-candidate (context ?cont) (type verti) (number ?nb) (row ?seg) (column ?col) (block ?blk)))
=>
    (bind ?glab (nrc-to-label ?nb ?seg ?col))
    (assert (g-candidate (context ?cont) (label ?glab) (type verti) (number ?nb) (row ?seg) (column ?col) (block ?blk)))
    ;;; without the line for avoiding redundancy, this is over-estimated:
    (bind ?*nb-g-candidates* (+ ?*nb-g-candidates* 1))

	(bind ?csp-cn (column-number-to-cn-variable ?col ?nb))
    (assert (is-csp-variable-for-glabel (csp-var ?csp-cn) (glabel ?glab)))

	(bind ?csp-bn (block-number-to-bn-variable ?blk ?nb))
    (assert (is-csp-variable-for-glabel (csp-var ?csp-bn) (glabel ?glab)))
)
	





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; csp-glinks
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule init-effective-csp-glinks-rn
	(declare (salience ?*init-csp-glinks-salience-1*))
	(logical
        (g-candidate (context ?cont) (label ?gcand) (type horiz) (number ?nb) (row ?row) (block ?blk))
		(candidate (context ?cont) (status cand) (label ?cand) (number ?nb) (row ?row) (block ?blk2&~?blk))
	)
=>
    ;;; assert the csp-glink
    (bind ?csp (row-number-to-rn-variable ?row ?nb))
	(assert (csp-glinked ?cont ?cand ?gcand ?csp))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 4))
    ;;; also assert the non-csp-glink
    (assert (exists-glink ?cont ?cand ?gcand))
	(if (eq ?cont 0) then (add-glink ?cand ?gcand))
)



(defrule init-effective-csp-glinks-horiz-bn
	(declare (salience ?*init-csp-glinks-salience-2*))
	(logical
        (g-candidate (context ?cont) (label ?gcand) (type horiz) (number ?nb) (row ?row) (block ?blk))
		(candidate (context ?cont) (status cand) (label ?cand) (number ?nb) (block ?blk) (row ?row2&~?row))
	)
=>
    ;;; assert the csp-glinks
    (bind ?csp (block-number-to-bn-variable ?blk ?nb))
	(assert (csp-glinked ?cont ?cand ?gcand ?csp))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 1))
    ;;; also assert the non-csp-glink
    (assert (exists-glink ?cont ?cand ?gcand))
	(if (eq ?cont 0) then (add-glink ?cand ?gcand))
)



(defrule init-effective-csp-glinks-cn
	(declare (salience ?*init-csp-glinks-salience-3*))
	(logical
        (g-candidate (context ?cont) (label ?gcand) (type verti) (number ?nb) (column ?col) (block ?blk))
		(candidate (context ?cont) (status cand) (label ?cand) (number ?nb) (column ?col) (block ?blk2&~?blk))
	)
=>
    ;;; assert the csp-glink
    (bind ?csp (column-number-to-cn-variable ?col ?nb))
	(assert (csp-glinked ?cont ?cand ?gcand ?csp))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 1))
    ;;; also assert the non-csp-glink
    (assert (exists-glink ?cont ?cand ?gcand))
	(if (eq ?cont 0) then (add-glink ?cand ?gcand))
)



(defrule init-effective-csp-glinks-verti-bn
	(declare (salience ?*init-csp-glinks-salience-1*))
	(logical
        (g-candidate (context ?cont) (label ?gcand) (type verti) (number ?nb) (column ?col) (block ?blk))
		(candidate (context ?cont) (status cand) (label ?cand) (number ?nb) (block ?blk) (column ?col2&~?col))
	)
=>
    ;;; assert the csp-glinks
    (bind ?csp (block-number-to-bn-variable ?blk ?nb))
	(assert (csp-glinked ?cont ?cand ?gcand ?csp))
	(bind ?*csp-glinks-count* (+ ?*csp-glinks-count* 1))
    ;;; also assert the non-csp-glink
    (assert (exists-glink ?cont ?cand ?gcand))
	(if (eq ?cont 0) then (add-glink ?cand ?gcand))
)




;;; defrule init-effective-glinks-end inherited from Generic
