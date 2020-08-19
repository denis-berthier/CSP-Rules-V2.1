
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-2-ON-PSEUDO-EDGE-FORWARD-DIAGONAL-2s-3
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





(defrule activate-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3
	(declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3))
=>
	(assert (technique ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3))
	(bind ?*technique* adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-north
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 2))
    (or
        (and (test (> ?col2 ?col)) (diagonal-3-2s ?cont ? ? ?row ?col2 nw ?k&:(> ?k 1)))
        (and (test (< ?col2 ?col)) (diagonal-3-2s ?cont ? ? ?row ?col2 ne ?k&:(> ?k 1)))
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(eq ?rowy (- ?row 1))) (column ?coly&:(eq ?coly (max ?col ?col2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 north ?row ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-fwd-diag-2s-3")
        )
    )
)


(defrule adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-south
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 2))
    (or
        (and (test (> ?col2 ?col)) (diagonal-3-2s ?cont ? ? ?row ?col2 sw ?k&:(> ?k 1)))
        (and (test (< ?col2 ?col)) (diagonal-3-2s ?cont ? ? ?row ?col2 se ?k&:(> ?k 1)))
    )
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(eq ?rowy (+ ?row 1))) (column ?coly&:(eq ?coly (max ?col ?col2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 south ?row ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-fwd-diag-2s-3")
        )
    )
)


(defrule adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-west
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column ?col) (value 2))
    (or
        (and (test (> ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 ?col nw ?k&:(> ?k 1)))
        (and (test (< ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 ?col sw ?k&:(> ?k 1)))
    )
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(eq ?coly (- ?col 1))) (row ?rowy&:(eq ?rowy (max ?row ?row2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 west ?col ?row ?row2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col) "-fwd-diag-2s-3")
        )
    )
)


(defrule adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-east
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column ?col) (value 2))
    (or
        (and (test (> ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 ?col ne ?k&:(> ?k 1)))
        (and (test (< ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 ?col se ?k&:(> ?k 1)))
    )
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(eq ?coly (+ ?col 1))) (row ?rowy&:(eq ?rowy (max ?row ?row2))) (value 0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-forward-diagonal-2s-3 east ?col ?row ?row2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col) "-fwd-diag-2s-3")
        )
    )
)


;;; Notice that the application part is in file "adjacent-1-2-on-edge-forward-diagonal-2s-3.clp"


