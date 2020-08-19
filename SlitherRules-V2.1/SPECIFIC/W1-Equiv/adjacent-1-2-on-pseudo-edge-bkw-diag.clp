
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-2-ON-PSEUDO-EDGE-BACKWARD-DIAGONAL-2s-3
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





(defrule activate-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3
	(declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3))
=>
	(assert (technique ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3))
	(bind ?*technique* adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-north
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row1) (column ?col2&:(or (eq ?col2 (+ ?col1 1)) (eq ?col2 (- ?col1 1)))) (value 2))
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(eq ?rowy (- ?row1 1))) (column ?coly&:(eq ?coly (max ?col1 ?col2))) (value 0))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col2 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?col2 ?col1) (eq ?diag ne)) (and (< ?col2 ?col1) (eq ?diag nw))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3 north ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)


(defrule adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-south
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row1) (column ?col2&:(or (eq ?col2 (+ ?col1 1)) (eq ?col2 (- ?col1 1)))) (value 2))
    (candidate (context ?cont) (status c-value) (type V) (row ?rowy&:(eq ?rowy (+ ?row1 1))) (column ?coly&:(eq ?coly (max ?col1 ?col2))) (value 0))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col2 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?col2 ?col1) (eq ?diag se)) (and (< ?col2 ?col1) (eq ?diag sw))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3 south ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)


(defrule adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-west
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row1 1)) (eq ?row2 (- ?row1 1)))) (column ?col2&?col1) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(eq ?coly (- ?col1 1))) (row ?rowy&:(eq ?rowy (max ?row1 ?row2))) (value 0))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col2 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?row2 ?row1) (eq ?diag sw)) (and (< ?row2 ?row1) (eq ?diag nw))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3 west ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)


(defrule adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-east
    (declare (salience ?*detect-adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row1 1)) (eq ?row2 (- ?row1 1)))) (column ?col2&?col1) (value 2))
    (candidate (context ?cont) (status c-value) (type H) (column ?coly&:(eq ?coly (+ ?col1 1))) (row ?rowy&:(eq ?rowy (max ?row1 ?row2))) (value 0))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col2 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?row2 ?row1) (eq ?diag se)) (and (< ?row2 ?row1) (eq ?diag ne))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3 east ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-pseudo-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-pseudo-edge-in-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)



;;; Notice that the application part is in file "adjacent-1-2-on-edge-backward-diagonal-2s-3.clp"
