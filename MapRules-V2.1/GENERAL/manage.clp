
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / MAPRULES
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT CONTRADICTION AND HALT 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;; Detection of a contradiction.

(defrule no-solution-at-all
	(declare (salience ?*contradiction-salience*))
	(grid ?g)
    (context (name 0))
	?pl <- (technique 0 BRT)
	;;; if there is a country with no c-value and no candidate
	(country ?country)
	(not (candidate (context 0) (country ?country)))
=>
	(printout t crlf "MAP " ?g " HAS NO SOLUTION : NO CANDIDATE FOR COUNTRY " (country-name ?country) crlf)
	(printout t "MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then (bind ?*no-sol-list* (union$ ?*no-sol-list* (create$ ?g))))
	(halt)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION 
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	?pl <- (technique ?cont BRT)
	(context (name ?cont&0))
	;;; the presence of a c-value for every country means that a solution has been found
	(forall (country ?country)
		(exists (candidate (context ?cont) (status c-value) (country ?country) (label ?xxx)))
	)
=>
	(retract ?pl)
	(printout t "GRID " ?g " SOLVED.")
	(printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(if ?*add-instance-to-solved-list* then
		(bind ?*solved-list* (union$ ?*solved-list* (create$ ?g)))
	)
	(assert (solution-found ?cont))
)


(defrule prepare-printing-of-solution
	(declare (salience ?*solution-found-salience*))
	(grid ?g)
	?sol <- (solution-found ?cont)
=>
	(bind ?*nb-facts* ?sol)
	(if (or ?*print-solution* ?*save-solutions*)
		then (assert (print-solution ?*nb-countries*))
		else (halt)
	)
)	


(defrule print-solution
	(declare (salience ?*solution-found-salience*))
    (solution-found ?cont)
    ?val <- (candidate (context 0) (status c-value) (label ?lab))
    (not (candidate (context ?cont) (status c-value) (label ?lab2&:(< ?lab2 ?lab))))
=>
	(if (or ?*print-solution* ?*save-solutions*) then
        (bind ?count (label-country ?lab))
        (bind ?col (label-colour ?lab))
        (printout t (country-name ?count) " = " (colour-name ?col) crlf)
        (retract ?val)
    )
)
    



