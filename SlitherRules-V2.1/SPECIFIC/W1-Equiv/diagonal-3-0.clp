
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              DIAGONAL-3-0
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; diagonal 3-0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; If a 3 is adjacent to a 0 diagonally, both sides of the 3 that meet the 0's corner must be filled. This is because if either of those sides were open, the line ending in the corner of the 0 would have no place to go. This is similar to the 3-in-a-corner rule.


(defrule activate-diagonal-3-0
	(declare (salience ?*detect-diagonal-3-0-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont diagonal-3-0))
=>
	(assert (technique ?cont diagonal-3-0))
	(bind ?*technique* diagonal-3-0)
)
    



(defrule detect-diagonal-3-0
	(declare (salience ?*detect-diagonal-3-0-salience*))
    (technique ?cont diagonal-3-0)
        
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?diag ?row ?col ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont diagonal-3-0 ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-diagonal-3-0*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-diagonal-3-0-in-" ?*starting-cell-symbol* (row-name ?row) (column-name ?col) ?*diagonal-symbol* (row-name ?row0) (column-name ?col0) ?*ending-cell-symbol*)
        )
    )
)



;;; it is useless to specify the assertion of 0s, they are obtained before this rule by the simpler zero rule.

(defrule apply-diagonal-3-0
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont diagonal-3-0 ?row ?col ?diag)
    
    ;;; assert H and V c-values around the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; 0 at nw of 3
            (and (eq ?diag nw)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
            ;;; 0 at ne of 3
            (and (eq ?diag ne)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (< ?col ?*nb-columns*) (eq ?colx (+ ?col 1)))
                )
            )
            ;;; 0 at se of 3
            (and (eq ?diag se)
                (or (and (eq ?type H) (< ?row ?*nb-rows*) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            ;;; 0 at sw of 3
            (and (eq ?diag sw)
                (or (and (eq ?type H) (< ?row ?*nb-rows*) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-diagonal-3-0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   


