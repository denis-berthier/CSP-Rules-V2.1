
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
;;;                              TRIPLETS
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





(defrule activate-triplets
	(declare (salience ?*activate-triplets-salience*))
    (logical
        (play)
        (context (name ?cont))
        (not (deactivate ?cont triplet))
    )
=>
	(if ?*print-levels* then (printout t Entering_level_S3 ))
	(assert (technique ?cont triplets))
	(bind ?*technique* T)
)



(defrule track-triplets
	(declare (salience ?*activate-triplets-salience*))
	?level <- (technique ?cont triplets)
=>
	(if ?*print-levels* then (printout t _with_ ?level crlf))
)



;;; places

(defrule L3-naked-triplets
	(declare (salience ?*triplets-salience*))
	(technique ?cont triplets)
	
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb1))
	(candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nb2&~?nb1))
	
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb2))
    (test (< (row-col-to-Xrc-csp-var ?row1 ?col1) (row-col-to-Xrc-csp-var ?row2 ?col2))) ; ensures they are ≠
	(candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nb3&~?nb1&~?nb2))
    
	(not (candidate (context ?cont) (status cand) (row ?row1) (column ?col1) (number ?nbx&~?nb1&~?nb2&~?nb3)))
	(not (candidate (context ?cont) (status cand) (row ?row2) (column ?col2) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
	(candidate (context ?cont) (status cand) (row ?row3) (column ?col3) (number ?nb3))
    (test (< (row-col-to-Xrc-csp-var ?row2 ?col2) (row-col-to-Xrc-csp-var ?row3 ?col3))) ; ensures they are ≠
	(candidate (context ?cont) (status cand) (row ?row3) (column ?col3) (number ?nb1))
	(not (candidate (context ?cont) (status cand) (row ?row3) (column ?col3) (number ?nbx&~?nb1&~?nb2&~?nb3)))
    
    ;;; then retract ?nb1 ?nb2 and ?nb3 from the candidates for other cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (row ?rowx) (column ?colx)
                         (number ?nbx&:(or (eq ?nbx ?nb1) (eq ?nbx ?nb2) (eq ?nbx ?nb3))))
        (test (and (not-same-rc-cell ?rowx ?colx ?row1 ?col1)
                    (not-same-rc-cell ?rowx ?colx ?row2 ?col2)
                    (not-same-rc-cell ?rowx ?colx ?row3 ?col3)
        ))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-triplets*) then
            (printout t "naked-triplets: "
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
                ?*implication-sign*
                (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx)
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont naked-triplets ?zzz ?row1 ?row2 ?row3 ?col1 ?col2 ?col3 ?nb1 ?nb2 ?nb3))
    )
)


(defrule apply-to-more-targets-L3-naked-triplets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont naked-triplets ?zzz ?row1 ?row2 ?row3 ?col1 ?col2 ?col3 ?nb1 ?nb2 ?nb3)
    ;;; identify the targets
    ;;; i.e. ?nb1 ?nb2 and ?nb3 from the candidates for other cells
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (row ?rowx) (column ?colx)
                         (number ?nbx&:(or (eq ?nbx ?nb1) (eq ?nbx ?nb2) (eq ?nbx ?nb3))))
        (test (and (not-same-rc-cell ?rowx ?colx ?row1 ?col1)
                    (not-same-rc-cell ?rowx ?colx ?row2 ?col2)
                    (not-same-rc-cell ?rowx ?colx ?row3 ?col3)
        ))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-triplets*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



;;; values

(defrule L3-hidden-triplets
	(declare (salience ?*triplets-salience*))
	(technique ?cont triplets)
	
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row1) (column ?col1))
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row2) (column ?col2&~?col1))
	
	(candidate (context ?cont) (status cand) (number ?nb2&:(< ?nb1 ?nb2)) (row ?row2) (column ?col2))
	(candidate (context ?cont) (status cand) (number ?nb2) (row ?row3) (column ?col3&~?col1&~?col2))

	(forall (candidate (context ?cont) (status cand) (number ?nb1) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                ))
    )
	(forall (candidate (context ?cont) (status cand) (number ?nb2) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                ))
    )
	
	(candidate (context ?cont) (status cand) (number ?nb3&:(< ?nb2 ?nb3)) (row ?row3) (column ?col3))
	(candidate (context ?cont) (status cand) (number ?nb1) (row ?row3) (column ?col3))
	(forall (candidate (context ?cont) (status cand) (number ?nb3) (row ?rowx) (column ?colx))
                (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1) 
                          (same-rc-cell ?rowx ?colx ?row2 ?col2)
                          (same-rc-cell ?rowx ?colx ?row3 ?col3)
                ))
    )

    ;;; then retract (?row1 ?col1) (row2 ?col2) and (row3 ?col3) from the candidates for other numbers
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz) (number ?nbx&~?nb1&~?nb2&~?nb3) (row ?rowx) (column ?colx))
        (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1)
                  (same-rc-cell ?rowx ?colx ?row2 ?col2)
                  (same-rc-cell ?rowx ?colx ?row3 ?col3)
        ))
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-triplets*) then
            (printout t "hidden-triplets: "
                ?*starting-cell-symbol*
                (number-name ?nb1)
                ?*separation-sign-in-cell* (number-name ?nb2)
                ?*separation-sign-in-cell* (number-name ?nb3)
                ?*ending-cell-symbol*
                ?*starting-cell-symbol*
                (row-name ?row1) (column-name ?col1)
                ?*separation-sign-in-cell*
                (row-name ?row2) (column-name ?col2)
                ?*separation-sign-in-cell*
                (row-name ?row3) (column-name ?col3)
                ?*ending-cell-symbol*
                ?*implication-sign*
                (row-name ?rowx) (column-name ?colx) ?*non-equal-sign* (numeral-name ?nbx) 
            )
            (if (not ?*blocked-Subsets*) then  (printout t crlf))
    )
    (if ?*blocked-Subsets* then
        (assert (apply-rule-as-a-pseudo-block ?cont))
        (assert (pseudo-blocked ?cont hidden-triplets ?zzz ?nb1 ?nb2 ?nb3 ?row1 ?row2 ?row3 ?col1 ?col2 ?col3))
    )
)


(defrule apply-to-more-targets-L3-hidden-triplets
    (declare (salience ?*apply-a-blocked-rule-salience-1*))
    (pseudo-blocked ?cont hidden-triplets ?zzz ?nb1 ?nb2 ?nb3 ?row1 ?row2 ?row3 ?col1 ?col2 ?col3)
    ;;; identify the targets, i.e. retract (?row1 ?col1), (row2 ?col2) and (row3 ?col3) from the candidates for other numbers
    ?cand <- (candidate (context ?cont) (status cand) (label ?zzz2&~?zzz) (number ?nbx&~?nb1&~?nb2&~?nb3) (row ?rowx) (column ?colx))
        (test (or (same-rc-cell ?rowx ?colx ?row1 ?col1)
                  (same-rc-cell ?rowx ?colx ?row2 ?col2)
                  (same-rc-cell ?rowx ?colx ?row3 ?col3)
            )
        )
=>
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-L3* ?*print-triplets*) then
        (printout t ", ")
        (print-deleted-candidate ?zzz2)
    )
)



