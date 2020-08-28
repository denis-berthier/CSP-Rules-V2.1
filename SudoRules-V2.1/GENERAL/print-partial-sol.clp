
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / SUDORULES
;;;                              PRINT PARTIAL SOLUTION
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





;;; to print the final situation in case no solution is found
;;; just add the following three rules

(defrule prepare-print-partial-solution-1
	(declare (salience ?*print-final-state-salience*))
	?pl<- (play)
	(context (name ?cont))
	(not (context (parent ?cont)))
=>
	(retract ?pl)
)

(defrule prepare-print-partial-solution-2
	(declare (salience ?*print-final-state-salience*))
	(not (play))
	(context (name ?cont&0))
	(not (context (parent ?cont)))
    (row ?row)
    (column ?col)
    (not (candidate (context 0) (row ?row) (column ?col)))
=>
	(assert (candidate (status c-value) (context ?cont) (row ?row) (column ?col) (block (block ?row ?col)) (square (square ?row ?col)) ))
	(if ?*print-actions* then
		(printout t "filling up gaps : " (row-name ?row) (column-name ?col) " = ." crlf))
)


(defrule prepare-print-partial-solution-3
	(declare (salience ?*print-final-state-salience*))
	(not (play))
	(context (name ?cont&0))
	(not (context (parent ?cont)))
	(forall (row ?row)
		(forall (column ?col)
			(exists (c-value ?cont ?row ?col ? ? ? ?))))
=>
	(assert (solution-found ?cont))
)


