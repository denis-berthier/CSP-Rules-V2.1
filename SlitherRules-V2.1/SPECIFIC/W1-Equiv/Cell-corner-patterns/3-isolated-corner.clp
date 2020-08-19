
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3 ISOLATED CORNER
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





(defrule activate-3-isolated-corner
	(declare (salience ?*detect-3-isolated-corner-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont corners))
=>
	(assert (technique ?cont 3-isolated-corner))
	(bind ?*technique* 3-isolated-corner)
)
    



(defrule detect-3-isolated-corner
	(declare (salience ?*detect-3-isolated-corner-salience*))
    (technique ?cont 3-isolated-corner)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))

    (diagonal-vector ?diag)
    (not (diagonally-adjacent-3-0 ?cont ?row ?col ?diag))
    (not (diagonally-adjacent-3s ?cont ?row ?col ?opp&:(eq ?opp (opposite-diagonal ?diag))))
    
    (candidate (context ?cont) (status c-value) (type H) (row ?rowH) (column ?colH) (value 0))
    (test
        (or (and (eq ?diag nw) (eq ?rowH ?row) (eq ?colH (- ?col 1)))
            (and (eq ?diag ne) (eq ?rowH ?row) (eq ?colH (+ ?col 1)))
            (and (eq ?diag se) (eq ?rowH (+ ?row 1)) (eq ?colH (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowH (+ ?row 1)) (eq ?colH (- ?col 1)))
        )
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?rowV) (column ?colV) (value 0))
    (test
        (or (and (eq ?diag nw) (eq ?rowV (- ?row 1)) (eq ?colV ?col))
            (and (eq ?diag ne) (eq ?rowV (- ?row 1)) (eq ?colV (+ ?col 1)))
            (and (eq ?diag sw) (eq ?rowV (+ ?row 1)) (eq ?colV ?col))
            (and (eq ?diag se) (eq ?rowV (+ ?row 1)) (eq ?colV (+ ?col 1)))
        )
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-isolated-corner ?row ?col ?diag))
	(if (or ?*print-actions* ?*print-3-isolated-corner*) then
        (bind ?*blocked-rule-description* 
            (str-cat "w[1]-3-in-" (row-name ?row) (column-name ?col) "-isolated-at-" ?diag "-corner")
        )
    )
)




(defrule apply-3-isolated-corner
	(declare (salience ?*apply-a-blocked-rule-salience*))
    (blocked ?cont 3-isolated-corner ?row ?col ?diag)
    
    ;;; assert H and V c-values for the cell containing the 3
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; two no lines at nw of 3
            (and (eq ?diag nw)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx ?col))
                )
            )
            ;;; two no lines at ne of 3
            (and (eq ?diag ne)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            ;;; two no lines at se of 3
            (and (eq ?diag se)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                )
            )
            ;;; two no lines at sw of 3
            (and (eq ?diag sw)
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
	(if (or ?*print-actions* ?*print-3-isolated-corner*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   


