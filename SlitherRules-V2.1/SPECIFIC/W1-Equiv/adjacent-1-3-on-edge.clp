
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-3-ON-EDGE
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





(defrule activate-adjacent-1-3-on-edge
	(declare (salience ?*detect-adjacent-1-3-on-edge-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-3-on-edge))
=>
	(assert (technique ?cont adjacent-1-3-on-edge))
	(bind ?*technique* adjacent-1-3-on-edge)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-1-3-on-edge
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule adjacent-1-3-on-edge-north
	(declare (salience ?*detect-adjacent-1-3-on-edge-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
	(assert (blocked ?cont adjacent-1-3-on-edge north ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-edge-in-" (row-name 1) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*)
        )
    )
)


(defrule adjacent-1-3-on-edge-south
    (declare (salience ?*detect-adjacent-1-3-on-edge-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&:(eq ?row ?*nb-rows*)) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-3-on-edge south ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*)
        )
    )
)


(defrule adjacent-1-3-on-edge-west
	(declare (salience ?*detect-adjacent-1-3-on-edge-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column 1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column 1) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-3-on-edge west ?row ?row2))
	(if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name 1))
        )
    )
)


(defrule adjacent-1-3-on-edge-east
    (declare (salience ?*detect-adjacent-1-3-on-edge-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col&:(eq ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column ?col) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-3-on-edge east ?row ?row2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col))
        )
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; apply-adjacent-1-3-on-edge
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule apply-adjacent-1-3-on-edge-north
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (or
        (blocked ?cont adjacent-1-3-on-edge north ?col ?col2)
        (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 north ?col ?col2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type H) (eq ?rowx 1) (eq ?colx ?col2) (eq ?valx 0))
            (and (eq ?type H) (eq ?rowx 2) (eq ?colx ?col) (eq ?valx 1))
            (and (eq ?type V) (eq ?rowx 1) (eq ?valx 1)
                (or (and (< ?col ?col2) (eq ?colx ?col)) (and (> ?col ?col2) (eq ?colx (+ ?col 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule apply-adjacent-1-3-on-edge-south
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (or
        (blocked ?cont adjacent-1-3-on-edge south ?col ?col2)
        (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 south ?col ?col2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx ?col2) (eq ?valx 0))
            (and (eq ?type H) (eq ?rowx ?*nb-rows*) (eq ?colx ?col) (eq ?valx 1))
            (and (eq ?type V) (eq ?rowx ?*nb-rows*) (eq ?valx 1)
                (or (and (< ?col ?col2) (eq ?colx ?col)) (and (> ?col ?col2) (eq ?colx (+ ?col 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule apply-adjacent-1-3-on-edge-west
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (or
        (blocked ?cont adjacent-1-3-on-edge west ?row ?row2)
        (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 west ?row ?row2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type V) (eq ?colx 1) (eq ?rowx ?row2) (eq ?valx 0))
            (and (eq ?type V) (eq ?colx 2) (eq ?rowx ?row) (eq ?valx 1))
            (and (eq ?type H) (eq ?colx 1) (eq ?valx 1)
                (or (and (< ?row ?row2) (eq ?rowx ?row)) (and (> ?row ?row2) (eq ?rowx (+ ?row 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule apply-adjacent-1-3-on-edge-east
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-edge)
    (or
        (blocked ?cont adjacent-1-3-on-edge east ?row ?row2)
        (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 east ?row ?row2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type V) (eq ?colx (+ ?*nb-columns* 1)) (eq ?rowx ?row2) (eq ?valx 0))
            (and (eq ?type V) (eq ?colx ?*nb-columns*) (eq ?rowx ?row) (eq ?valx 1))
            (and (eq ?type H) (eq ?colx ?*nb-columns*) (eq ?valx 1)
                (or (and (< ?row ?row2) (eq ?rowx ?row)) (and (> ?row ?row2) (eq ?rowx (+ ?row 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


