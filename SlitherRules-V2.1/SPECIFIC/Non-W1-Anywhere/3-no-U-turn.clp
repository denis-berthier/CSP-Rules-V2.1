
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              3-NO-U-TURN
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





(defrule activate-3-no-U-turn
	(declare (salience ?*detect-3-no-U-turn-salience*))
	(logical (context (name ?cont)))
	(not (deactivate ?cont 3-no-U-turn))
=>
	(assert (technique ?cont 3-no-U-turn))
	(bind ?*technique* 3-no-U-turn)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3-no-U-turn-from-east
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3-no-U-turn-from-east
	(declare (salience ?*detect-3-no-U-turn-salience*))
    (technique ?cont 3-no-U-turn)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))

    ;;; ene corner
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col2&:(eq ?col2 (+ ?col 2))) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row2&:(eq ?row2 (- ?row 1))) (column ?col2) (value 0))

    ;;; ese corner
    (candidate (context ?cont) (status c-value) (type H) (row ?row3&:(eq ?row3 (+ ?row 1)))  (column ?col2) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row3) (column ?col2) (value 0))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-no-U-turn-from-east ?row ?col))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?*blocked-rule-description* 
            (str-cat "3-in-" (row-name ?row) (column-name ?col) "-no-U-turn-from-east")
        )
    )
)




(defrule apply-3-no-U-turn-from-east
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3-no-U-turn-from-east ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type H) (eq ?colx (+ ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
            (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (+ ?col 2)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3-no-U-turn-from-west
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3-no-U-turn-from-west
	(declare (salience ?*detect-3-no-U-turn-salience*))
    (technique ?cont 3-no-U-turn)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))

    ;;; wnw corner
    (candidate (context ?cont) (status c-value) (type H) (row ?row) (column ?col2&:(eq ?col2 (- ?col 2))) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row2&:(eq ?row2 (- ?row 1))) (column ?col3&:(eq ?col3 (- ?col 1))) (value 0))

    ;;; wsw corner
    (candidate (context ?cont) (status c-value) (type H) (row ?row3&:(eq ?row3 (+ ?row 1)))  (column ?col2) (value 0))
    (candidate (context ?cont) (status c-value) (type V) (row ?row3) (column ?col3) (value 0))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-no-U-turn-from-west ?row ?col))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?*blocked-rule-description* 
            (str-cat "3-in-" (row-name ?row) (column-name ?col) "-no-U-turn-from-west")
        )
    )
)




(defrule apply-3-no-U-turn-from-west
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3-no-U-turn-from-west ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type H) (eq ?colx (- ?col 1)) (or (eq ?rowx ?row) (eq ?rowx (+ ?row 1))))
            (and (eq ?type V) (eq ?rowx ?row) (eq ?colx (- ?col 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3-no-U-turn-from-south
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3-no-U-turn-from-south
	(declare (salience ?*detect-3-no-U-turn-salience*))
    (technique ?cont 3-no-U-turn)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))

    ;;; sws corner
    (candidate (context ?cont) (status c-value) (type V) (column ?col) (row ?row2&:(eq ?row2 (+ ?row 2))) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col2&:(eq ?col2 (- ?col 1))) (row ?row2) (value 0))

    ;;; ses corner
    (candidate (context ?cont) (status c-value) (type V) (column ?col3&:(eq ?col3 (+ ?col 1)))  (row ?row2) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col3) (row ?row2) (value 0))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-no-U-turn-from-south ?row ?col))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?*blocked-rule-description* 
            (str-cat "3-in-" (row-name ?row) (column-name ?col) "-no-U-turn-from-south")
        )
    )
)




(defrule apply-3-no-U-turn-from-south
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3-no-U-turn-from-south ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type V) (eq ?rowx (+ ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
            (and (eq ?type H) (eq ?colx ?col) (eq ?rowx (+ ?row 2)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)
    


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; 3-no-U-turn-from-north
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-3-no-U-turn-from-north
	(declare (salience ?*detect-3-no-U-turn-salience*))
    (technique ?cont 3-no-U-turn)
    
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))

    ;;; nwn corner
    (candidate (context ?cont) (status c-value) (type V) (column ?col) (row ?row2&:(eq ?row2 (- ?row 2))) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col2&:(eq ?col2 (- ?col 1))) (row ?row3&:(eq ?row3 (- ?row 1))) (value 0))

    ;;; nen corner
    (candidate (context ?cont) (status c-value) (type V) (column ?col3&:(eq ?col3 (+ ?col 1)))  (row ?row2) (value 0))
    (candidate (context ?cont) (status c-value) (type H) (column ?col3) (row ?row3) (value 0))

=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont 3-no-U-turn-from-north ?row ?col))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?*blocked-rule-description* 
            (str-cat "3-in-" (row-name ?row) (column-name ?col) "-no-U-turn-from-north")
        )
    )
)




(defrule apply-3-no-U-turn-from-north
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont 3-no-U-turn-from-north ?row ?col)

    ;;; assert False H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (row ?rowx) (column ?colx) (value 1))
    (test
        (or 
            (and (eq ?type V) (eq ?rowx (- ?row 1)) (or (eq ?colx ?col) (eq ?colx (+ ?col 1))))
            (and (eq ?type H) (eq ?colx ?col) (eq ?rowx (- ?row 1)))
        )
    )
    ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (row ?rowx) (column ?colx) (value 0))
=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
    (if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-3-no-U-turn*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* O))
        (add-elimination-to-blocked-rule ?elim)
	)
)




