
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
;;;                              PAIRS, NON-INTERRUPTED VERSION
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





(defrule activate-pairs
	(declare (salience ?*activate-pairs-salience*))
	(logical (play)
             (context (name ?cont)))
    (not (deactivate ?cont pairs))
=>
	(if ?*print-levels* then (printout t Entering_level_S2))
	(assert (technique ?cont pairs))
	(bind ?*technique* P)
)



(defrule track-pairs
	(declare (salience ?*activate-pairs-salience*))
	?level <- (technique ?cont pairs)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; places

(defrule detect-L2-naked-pairs
	(declare (salience ?*pairs-salience*))
	(technique ?cont pairs)
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&:(< ?nb1 ?nb2)))
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2)))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb1))
    (test (< (row-col-to-Xrc-csp-var ?row1 ?col1) (row-col-to-Xrc-csp-var ?row2 ?col2))) ; ensures they are ≠
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2)))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont naked-pairs ?row1 ?row2 ?col1 ?col2 ?nb1 ?nb2))
	(if (or ?*print-actions* ?*print-L2* ?*print-pairs*) then
        (bind ?*blocked-rule-description*
            (str-cat "naked-pairs: "
				?*starting-cell-symbol*  
                (row-name ?row1) (column-name ?col1)
				?*separation-sign-in-cell* 
                (row-name ?row2) (column-name ?col2) 
                ?*ending-cell-symbol*
				?*starting-cell-symbol* 
                (number-name ?nb1) 
                ?*separation-sign-in-cell* (number-name ?nb2) 
                ?*ending-cell-symbol*
            )
        )
	)
)

(defrule apply-L2-naked-pairs
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont naked-pairs ?row1 ?row2 ?col1 ?col2 ?nb1 ?nb2)
    ;;; identify the targets, i.e. retract ?nb1 and ?nb2 from the candidates for other cells
    ?candx <- (candidate (context ?cont) (status cand) (row ?rowx) (column ?colx)
                         (number ?nbx&:(or (eq ?nbx ?nb1) (eq ?nbx ?nb2))))
        (test (and (not-same-rc-cell ?rowx ?colx ?row1 ?col1) (not-same-rc-cell ?rowx ?colx ?row2 ?col2)))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-pairs*) then
        (bind ?elim (str-cat
            (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)





;;; values

(defrule detect-L2-hidden-pairs
	(declare (salience ?*pairs-salience*))
	(technique ?cont pairs)
	
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row2) (column ?col2))
    (test (< (row-col-to-Xrc-csp-var ?row1 ?col1) (row-col-to-Xrc-csp-var ?row2 ?col2))) ; ensures they are ≠
	(forall (candidate (context ?cont) (status cand) (number ?nb1) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) (same-rc-cell ?rowx ?colx ?row2 ?col2)))
    )
	
	(candidate (context ?cont) (status cand) (number ?nb2&:(< ?nb1 ?nb2)) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (number ?nb2) (row ?row2) (column ?col2))
	(forall (candidate (context ?cont) (status cand) (number ?nb2) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) (same-rc-cell ?rowx ?colx ?row2 ?col2)))
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont hidden-pairs ?nb1 ?nb2 ?row1 ?row2 ?col1 ?col2))
	(if (or ?*print-actions* ?*print-L2* ?*print-pairs*) then
        (bind ?*blocked-rule-description*
            (str-cat
                "hidden-pairs: "
				?*starting-cell-symbol* 
                (number-name ?nb1) 
                ?*separation-sign-in-cell* (number-name ?nb2) 
                ?*ending-cell-symbol*
				?*starting-cell-symbol*  
                (row-name ?row1) (column-name ?col1)
				?*separation-sign-in-cell* 
                (row-name ?row2) (column-name ?col2) 
                ?*ending-cell-symbol*
			)
        )
	)
)

(defrule apply-L2-hidden-pairs
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont hidden-pairs ?nb1 ?nb2 ?row1 ?row2 ?col1 ?col2)
    ;;; identify the targets, i.e. retract (?row1 ?col1) and (row2 ?col2) from the candidates for other numbers
    ?candx <- (candidate (context ?cont) (status cand) (number ?nbx&~?nb1&~?nb2) (row ?rowx) (column ?colx))
        (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) (same-rc-cell ?rowx ?colx ?row2 ?col2)))
=>
    (retract ?candx)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L2* ?*print-pairs*) then
        (bind ?elim (str-cat (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


