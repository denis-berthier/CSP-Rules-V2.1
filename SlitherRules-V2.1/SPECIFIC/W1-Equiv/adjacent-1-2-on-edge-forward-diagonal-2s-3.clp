
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-2-ON-EDGE-FORWARD-DIAGONAL-2s-3
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





(defrule activate-adjacent-1-2-on-edge-forward-diagonal-2s-3
	(declare (salience ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3))
=>
	(assert (technique ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3))
	(bind ?*technique* adjacent-1-2-on-edge-forward-diagonal-2s-3)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-1-2-on-edge-forward-diagonal-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule adjacent-1-2-on-edge-forward-diagonal-2s-3-north
    (declare (salience ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row 1) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 2))
    (or
        (and (test (> ?col2 ?col)) (diagonal-3-2s ?cont ? ? 1 ?col2 nw ?k&:(> ?k 1)))
        (and (test (< ?col2 ?col)) (diagonal-3-2s ?cont ? ? 1 ?col2 ne ?k&:(> ?k 1)))
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 north ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" (row-name 1) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-fwd-diag-2s-3")
        )
    )
)


(defrule adjacent-1-2-on-edge-forward-diagonal-2s-3-south
    (declare (salience ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row&:(eq ?row ?*nb-rows*)) (column ?col) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col2&:(or (eq ?col2 (+ ?col 1)) (eq ?col2 (- ?col 1)))) (value 2))
    (or
        (and (test (> ?col2 ?col)) (diagonal-3-2s ?cont ? ? ?row ?col2 sw ?k&:(> ?k 1)))
        (and (test (< ?col2 ?col)) (diagonal-3-2s ?cont ? ? ?row ?col2 se ?k&:(> ?k 1)))
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 south ?col ?col2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-fwd-diag-2s-3")
        )
    )
)


(defrule adjacent-1-2-on-edge-forward-diagonal-2s-3-west
    (declare (salience ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column 1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column 1) (value 2))
    (or
        (and (test (> ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 1 nw ?k&:(> ?k 1)))
        (and (test (< ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 1 sw ?k&:(> ?k 1)))
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 west ?row ?row2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name 1) "-fwd-diag-2s-3")
        )
    )
)


(defrule adjacent-1-2-on-edge-forward-diagonal-2s-3-east
    (declare (salience ?*detect-adjacent-1-2-on-edge-forward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col&:(eq ?col ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row 1)) (eq ?row2 (- ?row 1)))) (column ?col) (value 2))
    (or
        (and (test (> ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 ?col ne ?k&:(> ?k 1)))
        (and (test (< ?row2 ?row)) (diagonal-3-2s ?cont ? ? ?row2 ?col se ?k&:(> ?k 1)))
    )
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-forward-diagonal-2s-3 east ?row ?row2))
    (if (or ?*print-actions* ?*print-adjacent-1-3-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col) "-fwd-diag-2s-3")
        )
    )
)


;;; Notice that the application part is in file "adjacent-1-3-on-edge.clp"

