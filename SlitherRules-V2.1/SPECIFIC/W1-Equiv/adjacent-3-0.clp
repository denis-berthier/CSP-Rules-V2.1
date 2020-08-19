
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              ADJACENT-3-0
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; adjacent 3-0
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; If a 3 is adjacent to a 0, either horizontally or vertically,
;;; then all the edges of that 3 can be filled except for the one touching the 0.
;;; In addition, the two lines from the corner of the 3 opposite to the 0 can de deleted.


(defrule activate-adjacent-3-0
	(declare (salience ?*detect-adjacent-3-0-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont adjacent-3-0))
=>
	(assert (technique ?cont adjacent-3-0))
	(bind ?*technique* adjacent-3-0)
)
    


(defrule detect-adjacent-3-0
	(declare (salience ?*detect-adjacent-3-0-salience*))
    (technique ?cont adjacent-3-0)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
    (cardinal-point ?dir) ; the 3->0 direction 
    (candidate (context ?cont) (status c-value) (type N) (row ?row0) (column ?col0) (value 0))
    (test (is-direction ?dir ?row ?col ?row0 ?col0))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont adjacent-3-0 ?row ?col ?dir))
	(if (or ?*print-actions* ?*print-adjacent-3-0*) then
        (if (or (eq ?dir w) (eq ?dir e)) then
            (bind ?*blocked-rule-description* (str-cat "w0-adjacent-3-0-in-" (row-name ?row) ?*starting-cell-symbol* (column-name ?col) ?*separation-sign-in-cell* (column-name ?col0) ?*ending-cell-symbol*))
        )
        (if (or (eq ?dir n) (eq ?dir s)) then
            (bind ?*blocked-rule-description* (str-cat "w[0]-adjacent-3-0-in-" (column-name ?col) ?*starting-cell-symbol* (row-name ?row) ?*separation-sign-in-cell* (row-name ?row0) ?*ending-cell-symbol*))
        )
    )
)


(defrule apply-adjacent-3-0-T
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont adjacent-3-0 ?row ?col ?dir) ; ?dir is the 3->0 direction
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 0))
    (test (or
            (and (eq ?dir n)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (eq ?colx ?col))
                    (and (eq ?type H) (eq ?rowx ?row) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
                    (and (eq ?type V) (eq ?rowx ?row) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                )
            )
            (and (eq ?dir e)
                (or (and (eq ?type V) (eq ?colx ?col) (eq ?rowx ?row))
                    (and (eq ?type V) (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type H) (eq ?colx ?col) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                )
            )
            (and (eq ?dir s)
                (or (and (eq ?type H) (eq ?rowx ?row) (eq ?colx ?col))
                    (and (eq ?type H) (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
                    (and (eq ?type V) (eq ?rowx ?row) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                )
            )
            (and (eq ?dir w)
                (or (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 1)))
                    (and (eq ?type V) (eq ?colx ?col) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type H) (eq ?colx ?col) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 1))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-adjacent-3-0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
 

(defrule apply-adjacent-3-0-F
    (declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont adjacent-3-0 ?row ?col ?dir) ; ?dir is the 3->0 direction
    ?cand <- (candidate (context ?cont) (type ?type&H|V) (status cand) (row ?rowx) (column ?colx) (value 1))
    (test (or
            (and (eq ?dir n)
                (or (and (eq ?type H) (eq ?rowx (+ ?row 1)) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
                    (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                )
            )
            (and (eq ?dir e)
                (or (and (eq ?type V) (eq ?colx ?col) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                )
            )
            (and (eq ?dir s)
                (or (and (eq ?type H) (eq ?rowx ?row) (or (eq ?colx (- ?col 1)) (eq ?colx (+ ?col 1))))
                    (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
                )
            )
            (and (eq ?dir w)
                (or (and (eq ?type V) (eq ?colx (+ ?col 1)) (or (eq ?rowx (- ?row 1)) (eq ?rowx (+ ?row 1))))
                    (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
                )
            )
        )
    )
    ?cand2 <- (candidate (context ?cont) (type ?type) (status cand) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
    (if (or ?*print-actions* ?*print-adjacent-3-0*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
    )
)
 

