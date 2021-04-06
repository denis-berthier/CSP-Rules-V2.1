
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;                              CSP-RULES / FUTORULES
;;;                              MANAGE
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





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;
;;; DETECT AND PRINT SOLUTION
;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule detect-solution-in-initial-context
	(declare (salience ?*solution-found-salience*))
    (context (name ?cont&0))
	?brt <- (technique ?cont BRT)
	;;; the presence of a c-value for all the csp-variables (of some type) means that a solution has been found
	(forall (csp-variable (name ?csp) (type rc))
        (exists (candidate (context ?cont) (status c-value) (label ?lab))
			(is-csp-variable-for-label (csp-var ?csp) (label ?lab))
		)
	)
=>
    (retract ?brt)
	(printout t "PUZZLE IS SOLVED.")
	(printout t " rating-type = " ?*rating-type* ", MOST COMPLEX RULE TRIED = " ?*technique* crlf)
	(assert (solution-found ?cont))
    (bind ?*solution-found* TRUE)
)


;;; Printing of the solution is managed by the generic rules,
;;; using the application-specific printing function:

(deffunction print-solution-in-context (?cont)
    ;;; a unique solution is supposed to have been found in context ?cont
    (if (> ?*grid-size* 9) then
        (printout t "print-solution works only for grid size ≤ 9" crlf)
        (return FALSE)
    )
    (foreach ?row ?*rows*
        (printout t "   ")
        (foreach ?col ?*columns*
            (foreach ?nb ?*numbers*
                (do-for-all-facts ((?cand candidate))
                    (and (= ?cand:context ?cont) (eq ?cand:status c-value) (= ?cand:row ?row) (= ?cand:column ?col) (= ?cand:number ?nb))
                    (bind ?nb2 ?nb)
                    ;;; add this line for 16x16 puzzles given in hexadecimal notation
                    ; (if (eq ?*grid-size* 16) then (bind ?nb2 (transform-nb-to-hexa ?nb)))
                    ;;; add this line for 25x25 puzzles given in alphabetical notation
                    ; (if (eq ?*grid-size* 25) then (bind ?nb2 (transform-nb-to-25letters ?nb)))
                    (printout t ?nb2)
                )
            )
            (if (= ?col ?*grid-size*) then (printout t crlf))
        )
    )
    (printout t crlf)
)

(deffunction print-solution ()
    (print-solution-in-context 0)
)

