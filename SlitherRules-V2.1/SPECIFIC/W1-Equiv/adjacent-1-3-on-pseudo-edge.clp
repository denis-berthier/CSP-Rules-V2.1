
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-3-ON-PSEUDO-EDGE
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





(defrule activate-adjacent-1-3-on-pseudo-edge
	(declare (salience ?*detect-adjacent-1-3-on-pseudo-edge-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-3-on-pseudo-edge))
=>
	(assert (technique ?cont adjacent-1-3-on-pseudo-edge))
	(bind ?*technique* adjacent-1-3-on-pseudo-edge)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-1-3-on-pseudo-edge
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; the direction in the name of the rules indicate the side of the pseudo-edge

(defrule adjacent-1-3-on-pseudo-edge-north
	(declare (salience ?*detect-adjacent-1-3-on-pseudo-edge-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(eq ?rowy (- ?row 1))) (column ?coly&:(eq ?coly (max ?col ?col2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
	(assert (blocked ?cont adjacent-1-3-on-pseudo-edge north ?row ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-pseudo-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*)
        )
    )
)


(defrule adjacent-1-3-on-pseudo-edge-south
    (declare (salience ?*detect-adjacent-1-3-on-pseudo-edge-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 3))
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(eq ?rowy (+ ?row 1))) (column ?coly&:(eq ?coly (max ?col ?col2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-3-on-pseudo-edge south ?row ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-pseudo-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol*)
        )
    )
)


(defrule adjacent-1-3-on-pseudo-edge-west
	(declare (salience ?*detect-adjacent-1-3-on-pseudo-edge-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(eq ?coly (- ?col 1))) (row ?rowy&:(eq ?rowy (max ?row ?row2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-3-on-pseudo-edge west ?col ?row ?row2))
	(if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-pseudo-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col))
        )
    )
)


(defrule adjacent-1-3-on-pseudo-edge-east
    (declare (salience ?*detect-adjacent-1-3-on-pseudo-edge-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column ?col) (value 3))
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(eq ?coly (+ ?col 1))) (row ?rowy&:(eq ?rowy (max ?row ?row2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-3-on-pseudo-edge east ?col ?row ?row2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-3-on-pseudo-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col))
        )
    )
)





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; apply-adjacent-1-3-on-pseudo-edge
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule apply-adjacent-1-3-on-pseudo-edge-north
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (or
        (blocked ?cont adjacent-1-3-on-pseudo-edge north ?row ?col ?col2)
        (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 north ?row ?col ?col2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col2) (eq ?valx 0))
            (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col) (eq ?valx 1))
            (and (eq ?type V) (eq ?rowx ?row) (eq ?valx 1)
                (or (and (< ?col ?col2) (eq ?colx ?col)) (and (> ?col ?col2) (eq ?colx (+ ?col 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule apply-adjacent-1-3-on-pseudo-edge-south
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (or
        (blocked ?cont adjacent-1-3-on-pseudo-edge south ?row ?col ?col2)
        (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 south ?row ?col ?col2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col2) (eq ?valx 0))
            (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col) (eq ?valx 1))
            (and (eq ?type V) (eq ?rowx ?row) (eq ?valx 1)
                (or (and (< ?col ?col2) (eq ?colx ?col)) (and (> ?col ?col2) (eq ?colx (+ ?col 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule apply-adjacent-1-3-on-pseudo-edge-west
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (or
        (blocked ?cont adjacent-1-3-on-pseudo-edge west ?col ?row ?row2)
        (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 west ?col ?row ?row2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row2) (eq ?valx 0))
            (and (eq ?type V) (eq ?colx (+ ?col 1)) (eq ?rowx ?row) (eq ?valx 1))
            (and (eq ?type H) (eq ?colx ?col) (eq ?valx 1)
                (or (and (< ?row ?row2) (eq ?rowx ?row)) (and (> ?row ?row2) (eq ?rowx (+ ?row 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)


(defrule apply-adjacent-1-3-on-pseudo-edge-east
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-3-on-pseudo-edge)
    (or
        (blocked ?cont adjacent-1-3-on-pseudo-edge east ?col ?row ?row2)
        (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 east ?col ?row ?row2)
    )
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value ?valx))
    (test
        (or
            (and (eq ?type V) (eq ?colx (+ ?col 1)) (eq ?rowx ?row2) (eq ?valx 0))
            (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row) (eq ?valx 1))
            (and (eq ?type H) (eq ?colx ?col) (eq ?valx 1)
                (or (and (< ?row ?row2) (eq ?rowx ?row)) (and (> ?row ?row2) (eq ?rowx (+ ?row 1))))
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value ?val2&~?valx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* (- 1 ?valx)))
        (add-elimination-to-blocked-rule ?elim)
    )
)



