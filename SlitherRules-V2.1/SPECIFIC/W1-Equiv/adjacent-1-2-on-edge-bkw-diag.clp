
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-1-2-ON-EDGE-BACKWARD-DIAGONAL-2s-3
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





(defrule activate-adjacent-1-2-on-edge-backward-diagonal-2s-3
	(declare (salience ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3))
=>
	(assert (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3))
	(bind ?*technique* adjacent-1-2-on-edge-backward-diagonal-2s-3)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent-1-2-on-edge-backward-diagonal-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule adjacent-1-2-on-edge-backward-diagonal-2s-3-north
    (declare (salience ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&1) (column ?col1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row1) (column ?col2&:(or (eq ?col2 (+ ?col1 1)) (eq ?col2 (- ?col1 1)))) (value 2))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col2 ?diag ?k&:(> ?k 1)) ; remember that ?k is 1 + nb-2s and diag is 3->2
    (test (or (and (> ?col2 ?col1) (eq ?diag ne)) (and (< ?col2 ?col1) (eq ?diag nw))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3 north ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)


(defrule adjacent-1-2-on-edge-backward-diagonal-2s-3-south
    (declare (salience ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1&:(eq ?row1 ?*nb-rows*)) (column ?col1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&?row1) (column ?col2&:(or (eq ?col2 (+ ?col1 1)) (eq ?col2 (- ?col1 1)))) (value 2))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row1 ?col2 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?col2 ?col1) (eq ?diag se)) (and (< ?col2 ?col1) (eq ?diag sw))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3 south ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" (row-name ?row1) ?*starting-cell-symbol* (column-name ?col1) ?*separation-sign-in-cell* (column-name ?col2) ?*ending-cell-symbol* "-bkwd-diag-2s-3"?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)


(defrule adjacent-1-2-on-edge-backward-diagonal-2s-3-west
    (declare (salience ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1&1) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row1 1)) (eq ?row2 (- ?row1 1)))) (column ?col2&?col1) (value 2))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col1 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?row2 ?row1) (eq ?diag sw)) (and (< ?row2 ?row1) (eq ?diag nw))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3 west ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)


(defrule adjacent-1-2-on-edge-backward-diagonal-2s-3-east
    (declare (salience ?*detect-adjacent-1-2-on-edge-backward-diagonal-2s-3-salience*))
    (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3)
    (candidate (context ?cont) (status c-value) (type N) (row ?row1) (column ?col1&:(eq ?col1 ?*nb-columns*)) (value 1))
    (candidate (context ?cont) (status c-value) (type N) (row ?row2&:(or (eq ?row2 (+ ?row1 1)) (eq ?row2 (- ?row1 1)))) (column ?col2&?col1) (value 2))
    (diagonal-3-2s ?cont ?row3 ?col3 ?row2 ?col1 ?diag ?k&:(> ?k 1))
    (test (or (and (> ?row2 ?row1) (eq ?diag se)) (and (< ?row2 ?row1) (eq ?diag ne))))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3 east ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-edge*) then
        (bind ?*blocked-rule-description*
            (str-cat "w[1]-adjacent-1-2-on-edge-in-" ?*starting-cell-symbol* (row-name ?row1) ?*separation-sign-in-cell* (row-name ?row2) ?*ending-cell-symbol* (column-name ?col1) "-bkwd-diag-2s-3" ?*diagonal-symbol* (row-name ?row3) (column-name ?col3))
        )
    )
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; apply-adjacent-1-2-on-edge-backward-diagonal-2s-3
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule apply-adjacent-1-2-on-edge-backward-diagonal-2s-3-around-the-3
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3)
    (or
        (blocked ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3 ?card ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag)
        (blocked ?cont adjacent-1-2-on-pseudo-edge-backward-diagonal-2s-3 ?card ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag)
    )
    ;;; assert H and V c-values around the 3; same as 3-symmetric-corner(opposite-diagonal ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
    (test
        (or
        ;;; around the 3
            ;;; nw symmetric corner for the 3
            (and (eq ?diag se)
                (or (and (eq ?type H) (eq ?rowx ?row3) (eq ?colx ?col3))
                    (and (eq ?type V) (eq ?rowx ?row3) (eq ?colx ?col3))
                )
            )
            ;;; ne symmetric corner for the 3
            (and (eq ?diag sw)
                (or (and (eq ?type H) (eq ?rowx ?row3) (eq ?colx ?col3))
                    (and (eq ?type V) (eq ?rowx ?row3) (eq ?colx (+ ?col3 1)))
                )
            )
            ;;; se symmetric corner for the 3
            (and (eq ?diag nw) for the 3
                (or (and (eq ?type H) (eq ?rowx (+ ?row3 1)) (eq ?colx ?col3))
                    (and (eq ?type V) (eq ?rowx ?row3) (eq ?colx (+ ?col3 1)))
                )
            )
            ;;; sw symmetric corner for the 3
            (and (eq ?diag ne)
                (or (and (eq ?type H) (eq ?rowx (+ ?row3 1)) (eq ?colx ?col3))
                    (and (eq ?type V) (eq ?rowx ?row3) (eq ?colx ?col3))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)



(defrule apply-adjacent-1-2-on-edge-backward-diagonal-2s-3-after-the-2
    ;;; only for a real edge
    (declare (salience ?*apply-a-blocked-rule-salience*))
    (technique ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3)
    (blocked ?cont adjacent-1-2-on-edge-backward-diagonal-2s-3 ?card ?row1 ?col1 ?row2 ?col2 ?row3 ?col3 ?diag)
    ;;; assert H and V c-values around the 3; same as 3-symmetric-corner(opposite-diagonal ?diag)
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
    (test
        (or
            ;;; north
            (and (eq ?type H) (eq ?card north) (eq ?rowx ?row1)
                (or (and (eq ?diag nw) (eq ?colx (- ?col2 1)))
                    (and (eq ?diag ne) (eq ?colx (+ ?col2 1)))
                )
            )
            ;;; south
            (and (eq ?type H) (eq ?card south) (eq ?rowx (+ ?row1 1))
                (or (and (eq ?diag sw) (eq ?colx (- ?col2 1)))
                    (and (eq ?diag se) (eq ?colx (+ ?col2 1)))
                )
            )
            ;;; west
            (and (eq ?type V) (eq ?card west) (eq ?colx ?col1)
                (or (and (eq ?diag nw) (eq ?rowx (- ?row2 1)))
                    (and (eq ?diag sw) (eq ?rowx (+ ?row2 1)))
                )
            )
            ;;; east
            (and (eq ?type V) (eq ?card east) (eq ?colx (+ ?col1 1))
                (or (and (eq ?diag ne) (eq ?rowx (- ?row2 1)))
                    (and (eq ?diag se) (eq ?rowx (+ ?row2 1)))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-1-2-on-edge*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
    )
)


