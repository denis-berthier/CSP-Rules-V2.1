
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / HIDATORULES
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
	(context (name ?cont))
	(not (context (parent ?cont)))
	(correspondence ?row ?col ?bl ?sq)
	(not (exists (c-value ?cont ?row ?col ?bl ?sq ? ?)))
=>
	(assert (c-value ?cont ?row ?col ?bl ?sq . 1))
	(if ?*print-actions* then
		(printout t "filling up gaps : " (row-name ?row) (column-name ?col) " = ." crlf))
)


(defrule prepare-print-partial-solution-3
	(declare (salience ?*print-final-state-salience*))
	(not (play))
	(context (name ?cont))
	(not (context (parent ?cont)))
	(forall (row ?row)
		(forall (column ?col)
			(exists (c-value ?cont ?row ?col ? ? ? ?))))
=>
	(assert (solution-context ?cont))
)


