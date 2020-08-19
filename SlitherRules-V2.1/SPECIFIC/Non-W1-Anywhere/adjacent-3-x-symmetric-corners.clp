
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-3-X-SYMMETRIC-CORNERS
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





;;; requires file symmetric-corner.clp and 2-symmetric-corner.clp

;;; an extension of 3-no-U-turn by (virtual) diagonals of 2s (replaced by symmetric corners)

(defrule activate-adjacent-3-x-symmetric-corners
	(declare (salience ?*detect-adjacent-3-x-symmetric-corners-salience*))
	(logical (context (name ?cont)))
	(not (deactivate ?cont adjacent-3-x-symmetric-corners))
=>
	(assert (technique ?cont adjacent-3-x-symmetric-corners))
	(bind ?*technique* adjacent-3-x-symmetric-corners)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-3-x-symmetric-corners-from-east
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-adjacent-3-x-symmetric-corners-from-east
	(declare (salience ?*detect-adjacent-3-x-symmetric-corners-salience*))
    (technique ?cont adjacent-3-x-symmetric-corners)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (symmetric-corner ?cont ?row ?col1&:(eq ?col1 (+ ?col 1)) ne)
    (symmetric-corner ?cont ?row ?col1 se)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-x-symmetric-corners-from-east ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?*blocked-rule-description* 
            (str-cat "adjacent-3-in-" (row-name ?row) (column-name ?col) "-x-symmetric-corners-east")
        )
    )
)




(defrule apply-adjacent-3-x-symmetric-corners-from-east
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-x-symmetric-corners-from-east ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
            (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 2)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-3-x-symmetric-corners-from-west
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-adjacent-3-x-symmetric-corners-from-west
	(declare (salience ?*detect-adjacent-3-x-symmetric-corners-salience*))
    (technique ?cont adjacent-3-x-symmetric-corners)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (symmetric-corner ?cont ?row ?col1&:(eq ?col1 (- ?col 1)) nw)
    (symmetric-corner ?cont ?row ?col1 sw)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-x-symmetric-corners-from-west ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?*blocked-rule-description* 
            (str-cat "adjacent-3-in-" (row-name ?row) (column-name ?col) "-x-symmetric-corners-west")
        )
    )
)




(defrule apply-adjacent-3-x-symmetric-corners-from-west
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-x-symmetric-corners-from-west ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
            (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-3-x-symmetric-corners-from-south
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-adjacent-3-x-symmetric-corners-from-south
	(declare (salience ?*detect-adjacent-3-x-symmetric-corners-salience*))
    (technique ?cont adjacent-3-x-symmetric-corners)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (symmetric-corner ?cont ?row1&:(eq ?row1 (+ ?row 1)) ?col nw)
    (symmetric-corner ?cont ?row1 ?col ne)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-x-symmetric-corners-from-south ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?*blocked-rule-description* 
            (str-cat "adjacent-3-in-" (row-name ?row) (column-name ?col) "-x-symmetric-corners-south")
        )
    )
)




(defrule apply-adjacent-3-x-symmetric-corners-from-south
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-x-symmetric-corners-from-south ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
            (and (eq ?type H) (eq ?colx ?col) (eq ?rowx (+ ?row 2)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-3-x-symmetric-corners-from-north
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-adjacent-3-x-symmetric-corners-from-north
	(declare (salience ?*detect-adjacent-3-x-symmetric-corners-salience*))
    (technique ?cont adjacent-3-x-symmetric-corners)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (symmetric-corner ?cont ?row1&:(eq ?row1 (- ?row 1)) ?col sw)
    (symmetric-corner ?cont ?row1 ?col se)
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-x-symmetric-corners-from-north ?row ?col))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?*blocked-rule-description* 
            (str-cat "adjacent-3-in-" (row-name ?row) (column-name ?col) "-x-symmetric-corners-north")
        )
    )
)




(defrule apply-adjacent-3-x-symmetric-corners-from-north
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-x-symmetric-corners-from-north ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
            (and (eq ?type H) (eq ?colx ?col) (eq ?rowx (- ?row 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-x-symmetric-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)




