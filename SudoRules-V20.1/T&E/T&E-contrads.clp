
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              TRIAL AND ERROR CONTRADICTIONS
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





(defglobal ?*all-bibraid-contrads* = (create$))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CONTEXT GENERATION AND INITIALIZATION ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule start-TE1
	(declare (salience ?*generate-context-salience*)) ;; -9950
	(context (name ?par&cont-0) (depth ?depth&0)) ;;; only T&E1
=>
	(bind ?*context-counter* 0)
	(bind ?*all-bibraid-contrads* (create$))
	(printout t crlf "*** STARTING T&E IN CONTEXT " ?par  " with " ?*nb-cells-filled-in* " cells filled in and " ?*nb-candidates* " candidates remaining ***" crlf)
)



(defrule generate-context-TE1
	(declare (salience ?*generate-context-salience*))
	(context (name ?par&cont-0) (depth ?depth&0)) ;;; only T&E1
	(not (context (parent ?par))) ; only one context other than cont-0 is considered at a time
	(candidate (context ?par) (name ?gcand1) (number ?nb1) (row ?row1) (column ?col1) (block ?blk1) (square ?sq1))
	(candidate (context ?par) (name ?gcand2&:(< ?gcand1 ?gcand2)) (number ?nb2) (row ?row2) (column ?col2) (block ?blk2) (square ?sq2))
	(test (not (linked ?gcand1 ?gcand2)))
	;;; each remaining pair of cands will be tried but only once
	(not (tried ?par ?gcand1 ?gcand2))
=>
	;;; choose ?gcand1 and gcand2 as a hypothesis	
	(bind ?*context-counter* (+ ?*context-counter* 1))
	(bind ?ctx (sym-cat cont- ?*context-counter*))
	(bind ?depth2 (+ 1 ?depth))
	(if (or ?*print-actions* ?*print-hypothesis*) then 
		(printout t crlf "GENERATING CONTEXT " ?ctx " AT DEPTH " ?depth2 ", SON OF " ?par ", FROM HYPOTHESIS " ?gcand1 " and " ?gcand2 "." crlf)
	)
	;;; assert the new context
	(assert (context (name ?ctx) (parent ?par) (depth ?depth2) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2)))
	(assert (init-context ?ctx))
	;;; assert the generating values of the new context with index 1 (the linked candidates will not be copied)
	(assert (c-value (context ?ctx)  (name ?gcand1) (number ?nb1) (row ?row1) (column ?col1) (block ?blk1) (square ?sq1) (flag 1)))
	(assert (c-value (context ?ctx)  (name ?gcand2) (number ?nb2) (row ?row2) (column ?col2) (block ?blk2) (square ?sq2) (flag 1)))
	;;; remember that ?gcand was tried in ?par
	(assert (tried ?par ?gcand1 ?gcand2))
)




(defrule init-non-first-context-c-values
	"copy all c-values from parent context"
	(declare (salience ?*init-context-salience*)) ;; 9995
	(context (name ?cont&~cont-0) (parent ?par))
	(init-context ?cont)
	(not (clean-and-retract ?cont))
	?cv <- (c-value (context ?par))
=>
	;;; inherited c-values are asserted with flag 1, independent of their flag in parent context.
	;;; remember that the generating c-values are asserted with flag 1 when the context is created
	(duplicate ?cv (context ?cont) (flag 1))
)


(defrule init-non-first-context-candidates
	"copy all candidates from parent context, except those linked to generating value"
	(declare (salience ?*init-context-salience*))
	(context (name ?cont&~cont0) (parent ?par) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2))
	(init-context ?cont)
	(not (clean-and-retract ?cont))
	?cand <- (candidate (context ?par) (name ?xxx&~?gcand1&~?gcand2))
	(test (and (not (linked ?xxx ?gcand1)) (not (linked ?xxx ?gcand2))))
=>
	(duplicate ?cand (context ?cont))
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DETECTION OF CONTRADICTION IN CONTEXT ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-no-solution-in-non-first-context-rc
	(declare (salience ?*manage-context-salience*)) ;; 9994
	;;; if, in a context which is not the first,
	?ctx <- (context (name ?cont&~cont-0) (parent ?par) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2))
	;;; there is an rc-cell with no c-value and no candidate
	(row ?row)
	(column ?col)
	(not (c-value (context ?cont) (row ?row) (column ?col)))
	(not (candidate (context ?cont) (row ?row) (column ?col)))
	(not (clean-and-retract ?cont))
=>
	;;; then assert a contradiction in the parent context
	(assert (contrad ?par ?gcand1 ?gcand2))
	(if (eq ?par cont-0) then (bind ?*all-bibraid-contrads* (create$ ?*all-bibraid-contrads* (create$ (+ (* ?*internal-factor-3* ?gcand1) ?gcand2)))))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION RC IN CONTEXT " ?cont ".")
		(printout t " ASSERTING CONTRADICTION BETWEEN " ?gcand1 " AND " ?gcand2 "." crlf crlf)
		(printout t "BACK IN CONTEXT " ?par " with " ?*nb-cells-filled-in* " cells filled in and " ?*nb-candidates* " candidates remaining." crlf)
	)
)



(defrule detect-no-solution-in-non-first-context-rn
	(declare (salience ?*manage-context-salience*))
	;;; if, in a context which is not the first,
	?ctx <- (context (name ?cont&~cont-0) (parent ?par) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2))
	;;; there is an rn-cell with no c-value and no candidate
	(number ?nb)
	(row ?row)
	(not (c-value (context ?cont) (number ?nb) (row ?row)))
	(not (candidate (context ?cont) (number ?nb) (row ?row)))
	(not (clean-and-retract ?cont))
=>
	;;; then assert a contradiction in the parent context
	(assert (contrad ?par ?gcand1 ?gcand2))
	(if (eq ?par cont-0) then (bind ?*all-bibraid-contrads* (create$ ?*all-bibraid-contrads* (create$ (+ (* ?*internal-factor-3* ?gcand1) ?gcand2)))))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION RN IN CONTEXT " ?cont ".")
		(printout t " ASSERTING CONTRADICTION BETWEEN " ?gcand1 " AND " ?gcand2 "." crlf crlf)
		(printout t "BACK IN CONTEXT " ?par " with " ?*nb-cells-filled-in* " cells filled in and " ?*nb-candidates* " candidates remaining." crlf)
	)
)



(defrule detect-no-solution-in-non-first-context-cn
	(declare (salience ?*manage-context-salience*))
	;;; if, in a context which is not the first,
	?ctx <- (context (name ?cont&~cont-0) (parent ?par) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2))
	;;; there is a cn-cell with no c-value and no candidate
	(number ?nb)
	(column ?col)
	(not (c-value (context ?cont) (number ?nb) (column ?col)))
	(not (candidate (context ?cont) (number ?nb) (column ?col)))
	(not (clean-and-retract ?cont))
=>
	;;; then assert a contradiction in the parent context
	(assert (contrad ?par ?gcand1 ?gcand2))
	(if (eq ?par cont-0) then (bind ?*all-bibraid-contrads* (create$ ?*all-bibraid-contrads* (create$ (+ (* ?*internal-factor-3* ?gcand1) ?gcand2)))))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION CN IN CONTEXT " ?cont ".")
		(printout t " ASSERTING CONTRADICTION BETWEEN " ?gcand1 " AND " ?gcand2 "." crlf crlf)
		(printout t "BACK IN CONTEXT " ?par " with " ?*nb-cells-filled-in* " cells filled in and " ?*nb-candidates* " candidates remaining." crlf)
	)
)



(defrule detect-no-solution-in-non-first-context-bn
	(declare (salience ?*manage-context-salience*))
	;;; if, in a context which is not the first,
	?ctx <- (context (name ?cont&~cont-0) (parent ?par) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2))
	;;; there is a bn-cell with no c-value and no candidate
	(number ?nb)
	(block ?blk)
	(not (c-value (context ?cont) (number ?nb) (block ?blk)))
	(not (candidate (context ?cont) (number ?nb) (block ?blk)))
	(not (clean-and-retract ?cont))
=>
	;;; then assert a contradiction in the parent context
	(assert (contrad ?par ?gcand1 ?gcand2))
	(if (eq ?par cont-0) then (bind ?*all-bibraid-contrads* (create$ ?*all-bibraid-contrads* (create$ (+ (* ?*internal-factor-3* ?gcand1) ?gcand2)))))
	;;; properly destroy the present context so as not to saturate memory
	(assert (clean-and-retract ?cont))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO SOLUTION BN IN CONTEXT " ?cont ".")
		(printout t " ASSERTING CONTRADICTION BETWEEN " ?gcand1 " AND " ?gcand2 "." crlf crlf)
		(printout t "BACK IN CONTEXT " ?par " with " ?*nb-cells-filled-in* " cells filled in and " ?*nb-candidates* " candidates remaining." crlf)
	)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; DETECTION OF NO CONTRADICTION IN CONTEXT ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule no-contradiction-in-non-first-context
	(declare (salience ?*no-contrad-found-in-context-salience*)) ;; -9930
	;;; after all the other rules have been applied
	?ctx <- (context (name ?cont&~cont-0) (parent ?par) (generating-cand1 ?gcand1) (generating-cand2 ?gcand2))
=>
	(assert (clean-and-retract ?cont))
	(if (or ?*print-actions* ?*print-hypothesis*) then
		(printout t "NO CONTRADICTION FOUND IN " ?cont "." crlf)
		(printout t "BACK IN CONTEXT " ?par " with " ?*nb-cells-filled-in* " cells filled in and " ?*nb-candidates* " candidates remaining." crlf crlf)
	)
)




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; CLEANING OF CONTRADICTORY CONTEXT ;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule clean-context-init
	(declare (salience ?*clean-context-salience*)) ;; -9940
	(clean-and-retract ?cont)
	?in <- (init-context ?cont)
=>
	(retract ?in)
)


(defrule clean-context-c-values
	(declare (salience ?*clean-context-salience*))
	(clean-and-retract ?cont)
	?cv <- (c-value (context ?cont))
=>
	(retract ?cv)
)


(defrule clean-context-candidates
	(declare (salience ?*clean-context-salience*))
	(clean-and-retract ?cont)
	?cand <- (candidate (context ?cont))
=>
	(retract ?cand)
)



(defrule clean-context-end
	(declare (salience ?*clean-context-salience*))
	?ctx <- (context (name ?cont&~cont-0))
	?rr <- (clean-and-retract ?cont)
	(not (init-context ?cont))
	(not (c-value (context ?cont)))
	(not (candidate (context ?cont)))
=>
	(retract ?rr)
	(retract ?ctx)
)



