
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              MANAGE
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
               ;;;                                                    ;;;
               ;;;              copyright Denis Berthier              ;;;
               ;;;     https://denis-berthier.pagesperso-orange.fr    ;;;
               ;;;              January 2006 - May 2021               ;;;
               ;;;                                                    ;;;
               ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



; -*- clips -*-





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT CONTRADICTION AND HALT
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; eliminate the generic rule

(defrule no-solution-at-all =>)


;;; Fully super-symmetric detection of a contradiction in the initial context

(defrule no-solution-at-all-rc
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
	(context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is an rc-cell with no c-value and no candidate in context 0
	(row ?row)
    (column ?col)
	(not (candidate (context 0) (row ?row) (column ?col)))
=>
    (if ?*print-actions* then
        (printout t crlf "PUZZLE " ?g " HAS NO SOLUTION : NO CANDIDATE FOR RC-CELL " (row-name ?row) (column-name ?col) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)


(defrule no-solution-at-all-rn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is an rn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (row ?row)
	(not (candidate (context 0) (number ?nb) (row ?row)))
=>
    (if ?*print-actions* then
        (printout t crlf "PUZZLE " ?g " HAS NO SOLUTION : NO CANDIDATE FOR RN-CELL " (row-name ?row) (number-name ?nb) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)

(defrule no-solution-at-all-cn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a cn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (column ?col)
	(not (candidate (context 0) (number ?nb) (column ?col)))
=>
    (if ?*print-actions* then
        (printout t crlf "PUZZLE " ?g " HAS NO SOLUTION : NO CANDIDATE FOR FOR CN-CELL " (column-name ?col) (number-name ?nb) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)

(defrule no-solution-at-all-bn
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a bn-cell with no c-value and no candidate in context 0
	(number ?nb)
    (block ?blk)
	(not (candidate (context 0) (number ?nb) (block ?blk)))
=>
    (if ?*print-actions* then
        (printout t crlf "PUZZLE " ?g " HAS NO SOLUTION : NO CANDIDATE FOR FOR BN-CELL " (block-name ?blk) (number-name ?nb) crlf)
        (printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g)))
	)
	(halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT FINAL STATE IF NO SOLUTION FOUND
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detetct-and-print-unsolved-final-state
	(declare (salience ?*print-final-state-salience*))
	(grid ?g)
	(context (name 0))
	(not (solution-found 0))
=>
    (bind ?*solution-found* FALSE)
    (if ?*add-instance-to-solved-list* then
        (bind ?*not-solved-list* (union$ ?*not-solved-list* (create$ ?g)))
    )
    (if ?*print-actions* then
        (printout t "PUZZLE " ?g " IS NOT SOLVED. " (- ?*nb-of-cells*  ?*nb-csp-variables-solved*) " VALUES MISSING." crlf)
    )
    (if (and ?*print-final-RS* (<= ?*segment-size* 5)) then
        (printout t "Final resolution state:" crlf)
        (pretty-print-current-resolution-state)
    )
    (halt)
)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
    (context (name ?cont&0))
	?brt <- (technique ?cont BRT)
	;;; the presence of a c-value for every rc-cell in context 0 means that a solution has been found
	(forall (row ?row)
        (forall (column ?col)
            (exists (number ?nb)
                (candidate (context ?cont) (status c-value) (row ?row) (column ?col) (number ?nb))
            )
		)
	)
=>
	(retract ?brt)
    (if ?*print-actions* then
        (printout t "PUZZLE " ?g " IS SOLVED.")
        (printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
        (if ?*DFS* then (printout t " MAX-DEPTH = " ?*DFS-max-depth* crlf))
    )
	(if ?*add-instance-to-solved-list* then
		(bind ?*solved-list* (create$ ?*solved-list* ?g))
	)
	(assert (solution-found ?cont))
    (bind ?*solution-found* TRUE)
)


;;; Printing of the solution is managed by the generic rules,
;;; using the application-specific printing function.

