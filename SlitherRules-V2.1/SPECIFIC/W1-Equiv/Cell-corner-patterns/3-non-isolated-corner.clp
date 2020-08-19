
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3 NON ISOLATED CORNER
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
;;; 3 NON ISOLATED CORNER
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule activate-3-non-isolated-corner
	(declare (salience ?*detect-3-non-isolated-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont 3-non-isolated-corner))
=>
	(assert (technique ?cont 3-non-isolated-corner))
	(bind ?*technique* 3-non-isolated-corner)
)
    



(defrule detect-3-non-isolated-corner-H
	(declare (salience ?*detect-3-non-isolated-corner-salience*))
    (technique ?cont 3-non-isolated-corner)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))

    ;;; horizontal line reaching corner in the direction of ?diag
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type ?type&H) (row ?row2) (column ?col2) (value 1))
    (test
        (or (and (eq ?diag nw) (eq ?row2 ?row) (> ?col 1) (eq ?col2 (- ?col 1)))
            (and (eq ?diag ne) (eq ?row2 ?row) (eq ?col2 (+ ?col 1)))
            (and (eq ?diag se) (eq ?row2 (+ ?row 1)) (eq ?col2 (+ ?col 1)))
            (and (eq ?diag sw) (eq ?row2 (+ ?row 1)) (> ?col 1) (eq ?col2 (- ?col 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-non-isolated-corner ?row ?col ?diag ?type))
	(if (or ?*print-actions* ?*print-3-non-isolated-corner*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[1]-3-in-" (row-name ?row) (column-name ?col) "-hit-by-horiz-line-at-" ?diag)
        )
    )
)
    



(defrule detect-3-non-isolated-corner-V
	(declare (salience ?*detect-3-non-isolated-corner-salience*))
    (technique ?cont 3-non-isolated-corner)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&~0&:(<= ?row ?*nb-rows*)) (column ?col&~0&:(<= ?col ?*nb-columns*)) (value 3))

    ;;; vertical line reaching corner in the direction of ?diag
    (diagonal-vector ?diag)
    (candidate (context ?cont) (status c-value) (type ?type&V) (row ?row2) (column ?col2) (value 1))
    (test
        (or (and (eq ?diag nw) (> ?row 1) (eq ?row2 (- ?row 1)) (eq ?col2 ?col))
            (and (eq ?diag ne) (> ?row 1) (eq ?row2 (- ?row 1)) (eq ?col2 (+ ?col 1)))
            (and (eq ?diag se) (eq ?row2 (+ ?row 1)) (eq ?col2 (+ ?col 1)))
            (and (eq ?diag sw) (eq ?row2 (+ ?row 1)) (eq ?col2 ?col))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-non-isolated-corner ?row ?col ?diag ?type))
	(if (or ?*print-actions* ?*print-3-non-isolated-corner*) then
        (bind ?*blocked-rule-description* 
                (str-cat "w[1]-3-in-" (row-name ?row) (column-name ?col) "-hit-by-verti-line-at-" ?diag)
        )
    )
)





(defrule apply-3-non-isolated-corner-around-the-3
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3-non-isolated-corner ?row ?col ?diag ?line-type)
    
    ;;; assert H and V c-values for the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or 
            (and (eq (opposite-diagonal ?diag) nw)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
            (and (eq (opposite-diagonal ?diag) ne)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq (opposite-diagonal ?diag) se)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            (and (eq (opposite-diagonal ?diag) sw)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
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
	(if (or ?*print-actions* ?*print-3-non-isolated-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    



(defrule apply-3-non-isolated-corner-near-this-corner
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont 3-non-isolated-corner ?row ?col ?diag ?line-type)

    ;;; assert H or V c-value 0 for the outbound line perpendicular to the given one
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (and (or (and (eq ?line-type H) (eq ?type V)) (and (eq ?line-type V) (eq ?type H)))
            (or 
                (and (eq ?diag nw) 
                    (or (and (eq ?line-type H) (> ?row 1) (eq ?rowx (- ?row 1)) (eq ?colx ?col))
                        (and (eq ?line-type V) (eq ?rowx ?row) (> ?col 1) (eq ?colx (- ?col 1)))
                    )
                )
                (and (eq ?diag ne) 
                    (or (and (eq ?line-type H) (> ?row 1) (eq ?rowx (- ?row 1)) (eq ?colx (+ ?col 1)))
                        (and (eq ?line-type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    )
                )
                (and (eq ?diag sw) 
                    (or (and (eq ?line-type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                        (and (eq ?line-type V) (eq ?rowx (+ ?row 1)) (> ?col 1) (eq ?colx (- ?col 1)))
                    )
                )
                (and (eq ?diag se) 
                    (or (and (eq ?line-type H) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                        (and (eq ?line-type V) (eq ?rowx (+ ?row 1)) (eq ?colx (+ ?col 1)))
                    )
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-non-isolated-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)

