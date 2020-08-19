
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SLITHERRULES
;;;                              BOXED IN A CORNER
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





(defrule activate-corner
	(declare (salience ?*activate-corners-salience*))
	(logical (context (name ?cont)) (technique ?cont BRT))
	(not (deactivate ?cont corners))
=>
	(assert (technique ?cont corners))
	(bind ?*technique* corners)
)
    


;;; 1 in a corner
;;; If a 1 is in a corner, the actual corner's lines may be X'd out, because a line that entered said corner could not leave it except by passing by the 1 again. 
;;; This also applies if two lines leading into the 1-box at the same corner are X'd out. (TODO: 1-isolated-corner)

(defrule detect-1-in-a-corner
	(declare (salience ?*detect-a-1-in-a-corner-salience*))
    (technique ?cont corners)
    (inner-corner ?row ?col ?corner)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 1))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont a-1-in-a-corner ?row ?col ?corner))
	(if (or ?*print-actions* ?*print-corners*) then
        (bind ?*blocked-rule-description* (str-cat "w[1]-1-in-" ?corner "-corner"))
    )
)



(defrule appy-1-in-a-corner-HV
	(declare (salience ?*apply-a-blocked-rule-salience-3*))
    (blocked ?cont a-1-in-a-corner ?row ?col ?corner)
    
    ;;; assert H and V c-values
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 1) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; nw corner
            (and (eq ?corner nw)
                ;(or (and (eq ?type H) (eq ?rowx 1) (eq ?colx 1))
                ;    (and (eq ?type H) (eq ?rowx 1) (eq ?colx 1))
                ;)
                ;;; replaced by
                (eq ?rowx 1) (eq ?colx 1)
            )
            ;;; ne corner
             (and (eq ?corner ne)
                (eq ?row 1) (eq ?col ?*nb-columns*)
                (or (and (eq ?type H) (eq ?rowx 1) (eq ?colx ?*nb-columns*))
                    (and (eq ?type V) (eq ?rowx 1) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; se corner
            (and (eq ?corner se)
                (eq ?row ?*nb-rows*) (eq ?col ?*nb-columns*)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx ?*nb-columns*))
                    (and (eq ?type V) (eq ?rowx ?*nb-rows*) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; sw corner
            (and (eq ?corner sw)
                (eq ?row ?*nb-rows*) (eq ?col 1)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx 1))
                    (and (eq ?type V) (eq ?rowx ?*nb-rows*) (eq ?colx 1))
                )
            )
        )
    )
   ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 0) (row ?rowx) (column ?colx))

=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 0))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   




;;; 3 in a corner
;;; If a 3 is in a corner, the two outside edges of that box can be filled in because otherwise the rule for 1 in a corner would have to be broken.

(defrule detect-3-in-a-corner
	(declare (salience ?*detect-a-3-in-a-corner-salience*))
    (technique ?cont corners)
    (inner-corner ?row ?col ?corner)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 3))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont a-3-in-a-corner ?row ?col ?corner))
	(if (or ?*print-actions* ?*print-corners*) then
        (bind ?*blocked-rule-description* (str-cat "w[1]-3-in-" ?corner "-corner"))
    )
)



(defrule appy-3-in-a-corner-HV
	(declare (salience ?*apply-a-blocked-rule-salience-2*))
    (blocked ?cont a-3-in-a-corner ?row ?col ?corner)
    
    ;;; assert H and V c-values for the H and V candidates on the corner
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; nw corner
            (and (eq ?corner nw)
                ;(or (and (eq ?type H) (eq ?rowx 1) (eq ?colx 1))
                ;    (and (eq ?type H) (eq ?rowx 1) (eq ?colx 1))
                ;)
                ;;; replaced by
                (eq ?rowx 1) (eq ?colx 1)
            )
            ;;; ne corner
             (and (eq ?corner ne)
                (or (and (eq ?type H) (eq ?rowx 1) (eq ?colx ?*nb-columns*))
                    (and (eq ?type V) (eq ?rowx 1) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; se corner
            (and (eq ?corner se)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx ?*nb-columns*))
                    (and (eq ?type V) (eq ?rowx ?*nb-rows*) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; sw corner
            (and (eq ?corner sw)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx 1))
                    (and (eq ?type V) (eq ?rowx ?*nb-rows*) (eq ?colx 1))
                )
            )
        )
    )
   ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))

=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)
   




;;; 2 in a corner
;;; If a 2 is in a corner, two lines must be going away from the 2 at the border.

(defrule detect-2-in-a-corner
	(declare (salience ?*detect-a-2-in-a-corner-salience*))
    (technique ?cont corners)
    (inner-corner ?row ?col ?corner)
    (candidate (context ?cont) (status c-value) (type N) (row ?row) (column ?col) (value 2))
=>
    (assert (apply-rule-as-a-block ?cont))
    (assert (blocked ?cont a-2-in-a-corner ?row ?col ?corner))
	(if (or ?*print-actions* ?*print-corners*) then
        (bind ?*blocked-rule-description* (str-cat "w[1]-2-in-" ?corner "-corner"))
    )
)



(defrule appy-2-in-a-corner-HV
	(declare (salience ?*apply-a-blocked-rule-salience-1*))
    (blocked ?cont a-2-in-a-corner ?row ?col ?corner)
    
    ;;; assert H and V c-values for the H and V candidates exiting the corner
    ?cand <- (candidate (context ?cont) (status cand) (type ?type&H|V) (value 0) (row ?rowx) (column ?colx))
	(test
        (or
            ;;; nw corner
            (and (eq ?corner nw)
                (or
                    (and (eq ?type H) (eq ?rowx 1) (eq ?colx 2))
                    (and (eq ?type V) (eq ?rowx 2) (eq ?colx 1))
                )
            )
            ;;; ne corner
             (and (eq ?corner ne)
                (or (and (eq ?type H) (eq ?rowx 1) (eq ?colx (- ?*nb-columns* 1)))
                    (and (eq ?type V) (eq ?rowx 2) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; se corner
            (and (eq ?corner se)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx (- ?*nb-columns* 1)))
                    (and (eq ?type V) (eq ?rowx (- ?*nb-rows* 1)) (eq ?colx (+ ?*nb-columns* 1)))
                )
            )
            ;;; sw corner
            (and (eq ?corner sw)
                (or (and (eq ?type H) (eq ?rowx (+ ?*nb-rows* 1)) (eq ?colx 2))
                    (and (eq ?type V) (eq ?rowx (- ?*nb-rows* 1)) (eq ?colx 1))
                )
            )
        )
    )
   ?cand2 <- (candidate (context ?cont) (status cand) (type ?type) (value 1) (row ?rowx) (column ?colx))

=>
    (modify ?cand2 (status c-value))
    (retract ?cand)
	(if (eq ?cont 0) then (bind ?*nb-candidates* (- ?*nb-candidates* 1)))
	(if (or ?*print-actions* ?*print-corners*) then
        (bind ?elim (str-cat ?type (row-name ?rowx) (column-name ?colx) ?*equal-sign* 1))
        (add-elimination-to-blocked-rule ?elim)
	)
)



