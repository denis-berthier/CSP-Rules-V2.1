
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
;;;                              QUADS, NON-INTERRUPTED VERSION
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





(defrule activate-quads
	(declare (salience ?*activate-quads-salience*))
	(logical (play)
             (context (name ?cont)))
    (not (deactivate ?cont quads))
=>
	(if ?*print-levels* then (printout t Entering_level_S4))
	(assert (technique ?cont quads))
	(bind ?*technique* Q)
)



(defrule track-quads
	(declare (salience ?*activate-quads-salience*))
	?level <- (technique ?cont quads)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; places

(defrule detect-L4-naked-quads
	(declare (salience ?*quads-salience*))
	(technique ?cont quads)
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
    (test (< (row-col-to-Xrc-csp-var ?row1 ?col1) (row-col-to-Xrc-csp-var ?row2 ?col2))) ; ensures they are ≠
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
	
	(candidate (context ?cont) (status cand) (row ?row3) (column ?col3) (number ?nb3))
    (test (< (row-col-to-Xrc-csp-var ?row2 ?col2) (row-col-to-Xrc-csp-var ?row3 ?col3))) 
	(candidate (context ?cont) (status cand) (row ?row3) (column ?col3) (number ?nb4&~?nb1&~?nb2&~?nb3))
    
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	(not (candidate (context ?cont) (status cand) (row ?row3) (column ?col3) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
	
	(candidate (context ?cont) (status cand) (row ?row4) (column ?col4) (number ?nb4))
    (test (< (row-col-to-Xrc-csp-var ?row3 ?col3) (row-col-to-Xrc-csp-var ?row4 ?col4))) 
	(candidate (context ?cont) (status cand) (row ?row4) (column ?col4) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row4) (column ?col4) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-quads ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4))
	(if (or ?*print-actions* ?*print-L3* ?*print-quads*) then
        (bind ?*blocked-rule-description*
            (str-cat
                "naked-quads: "
				?*starting-cell-symbol*  
                (row-name ?row1) (column-name ?col1)
				?*separation-sign-in-cell* 
                (row-name ?row2) (column-name ?col2) 
				?*separation-sign-in-cell* 
                (row-name ?row3) (column-name ?col3) 
                ?*ending-cell-symbol*
				?*starting-cell-symbol* 
                (number-name ?nb1) 
                ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3)
                ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L4-naked-quads
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-quads ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4 ?nb1 ?nb2 ?nb3 ?nb4)
    ;;; identify the targets
    ;;; i.e. retract ?nb1 ?nb2 and ?nb3 from the candidates for other cells
    ?candx <- (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx)
                         (number ?nbx&:(or (eq ?nbx ?nb1) (eq ?nbx ?nb2) (eq ?nbx ?nb3) (eq ?nbx ?nb4))))
        (test (and (not-same-rc-cell ?rowx ?colx ?row1 ?col1)
                    (not-same-rc-cell ?rowx ?colx ?row2 ?col2)
                    (not-same-rc-cell ?rowx ?colx ?row3 ?col3)
                    (not-same-rc-cell ?rowx ?colx ?row4 ?col4)
        ))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-quads*) then
        (bind ?elim (str-cat (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



;;; values

(defrule detect-L4-hidden-quads
	(declare (salience ?*quads-salience*))
	(technique ?cont quads)
	
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row2) (column ?col2&~?col1))
	
	(candidate (context ?cont) (status cand) (number ?nb2&~?nb1) (row ?row2) (column ?col2))
	(candidate (context ?cont) (status cand) (number ?nb2) (row ?row3) (column ?col3&~?col1&~?col2))
	
	(candidate (context ?cont) (status cand) (number ?nb3&:(< ?nb2 ?nb3)) (row ?row3) (column ?col3))
	(candidate (context ?cont) (status cand) (number ?nb3) (row ?row4) (column ?col4&~?col1&~?col2&~?col3))

	(forall (candidate (context ?cont) (status cand) (number ?nb1) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                          (same-rc-cell ?rowx ?colx ?row4 ?col4)
                ))
    )
	(forall (candidate (context ?cont) (status cand) (number ?nb2) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                          (same-rc-cell ?rowx ?colx ?row4 ?col4)
                ))
    )
	(forall (candidate (context ?cont) (status cand) (number ?nb3) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                          (same-rc-cell ?rowx ?colx ?row4 ?col4)
                ))
    )
	
	(candidate (context ?cont) (status cand) (number ?nb4&:(< ?nb3 ?nb4)) (row ?row4) (column ?col4))
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row4) (column ?col4))
	(forall (candidate (context ?cont) (status cand) (number ?nb4) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                          (same-rc-cell ?rowx ?colx ?row4 ?col4)
                ))
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-quads ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4))
	(if (or ?*print-actions* ?*print-L4* ?*print-quads*) then
        (bind ?*blocked-rule-description*
            (str-cat
			    "hidden-quads: "
				?*starting-cell-symbol* 
                (number-name ?nb1) 
                ?*separation-sign-in-cell* (number-name ?nb2) 
                ?*separation-sign-in-cell* (number-name ?nb3) 
                ?*separation-sign-in-cell* (number-name ?nb4) 
                ?*ending-cell-symbol*
				?*starting-cell-symbol*  
                (row-name ?row1) (column-name ?col1)
				?*separation-sign-in-cell* 
                (row-name ?row2) (column-name ?col2) 
				?*separation-sign-in-cell* 
                (row-name ?row3) (column-name ?col3) 
				?*separation-sign-in-cell* 
                (row-name ?row4) (column-name ?col4) 
                ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L4-hidden-quads
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-quads ?nb1 ?nb2 ?nb3 ?nb4 ?row1 ?row2 ?row3 ?row4 ?col1 ?col2 ?col3 ?col4)
    ;;; identify the targets, retract (?row1 ?col1) (row2 ?col2) (row3 ?col3) and (row4 ?col4) from the candidates for other numbers
    ?candx <- (candidate (context ?cont) (status cand) (number ?nbx&~?nb1&~?nb2&~?nb3&~?nb4) (row ?rowx) (column ?colx))
        (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1)
                  (same-rc-cell ?rowx ?colx ?row2 ?col2)
                  (same-rc-cell ?rowx ?colx ?row3 ?col3)
                  (same-rc-cell ?rowx ?colx ?row4 ?col4)
        ))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L4* ?*print-quads*) then
        (bind ?elim (str-cat (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


